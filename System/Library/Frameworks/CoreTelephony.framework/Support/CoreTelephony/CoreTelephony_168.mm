void sub_10143F2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10143F330(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v3 = (a1 + 24);
    sub_10143F388(&v3);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void sub_10143F388(void ***a1)
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
        v4 -= 72;
        sub_10143F40C(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10143F40C(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_10143F490(uint64_t a1)
{

  operator delete();
}

id sub_10143F544(uint64_t a1, void *a2)
{
  *a2 = off_101F3B9E0;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10143F594(id *a1)
{

  operator delete(a1);
}

uint64_t sub_10143F5F8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3BA40))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10143F644(uint64_t a1)
{
  *a1 = off_101F3BA60;

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_10143F6A8(uint64_t a1)
{
  *a1 = off_101F3BA60;

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

id sub_10143F7C4(uint64_t a1, void *a2)
{
  *a2 = off_101F3BA60;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  a2[4] = *(a1 + 32);
  result = objc_retainBlock(*(a1 + 40));
  a2[5] = result;
  return result;
}

void sub_10143F840(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 8);
}

void sub_10143F890(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(a1);
}

const void **sub_10143F8E8(uint64_t a1, CFTypeRef *a2)
{
  cf = *a2;
  *a2 = 0;
  v3 = *(a1 + 8);
  if (v3)
  {
    objc_msgSend_registry(v3);
    v3 = v30;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  ServiceMap = Registry::getServiceMap(v3);
  v5 = ServiceMap;
  v6 = "22CellularPlanController";
  if (("22CellularPlanController" & 0x8000000000000000) != 0)
  {
    v7 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  v27 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v27);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_12:
  if (v31)
  {
    sub_100004A34(v31);
  }

  if (v12)
  {
    v27 = *(a1 + 32);
    v28 = objc_retainBlock(*(a1 + 40));
    v29 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v32 = 0;
    operator new();
  }

  v14 = *(a1 + 8);
  if (v14)
  {
    objc_msgSend_registry(v14);
    v14 = v30;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v15 = Registry::getServiceMap(v14);
  v16 = v15;
  v17 = "N8cellplan36CellularPlanControllerWatchInterfaceE";
  if (("N8cellplan36CellularPlanControllerWatchInterfaceE" & 0x8000000000000000) != 0)
  {
    v18 = ("N8cellplan36CellularPlanControllerWatchInterfaceE" & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v17 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  std::mutex::lock(v15);
  v27 = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, &v27);
  if (v21)
  {
    v23 = v21[3];
    v22 = v21[4];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v16);
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v22);
      v24 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v16);
  v22 = 0;
  v24 = 1;
LABEL_29:
  if (v31)
  {
    sub_100004A34(v31);
  }

  if (v23)
  {
    v27 = *(a1 + 32);
    v28 = objc_retainBlock(*(a1 + 40));
    v29 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v32 = 0;
    operator new();
  }

  v30 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v27 = 0;
  sub_10143FE68(a1 + 32, cf, &v27);
  sub_1013D4328(&v27);
  sub_100010250(&v30);
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  return sub_100010250(&cf);
}

void sub_10143FD08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10143FDE0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3BBC0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10143FE2C(uint64_t a1)
{
  sub_100010250((a1 + 16));

  return a1;
}

void sub_10143FE68(uint64_t a1, void *a2, uint64_t *a3)
{
  if (a2)
  {
    v5 = a2;
    v44 = objc_opt_new();
    v45 = +[NSMutableArray array];
    for (i = 0; ; ++i)
    {
      if (i >= [v5 count])
      {
        [v44 setMeInfoList:v45];
        (*(*(a1 + 8) + 16))();

        goto LABEL_63;
      }

      v7 = [v5 objectAtIndexedSubscript:i];
      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          v9 = objc_opt_new();
          v10 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfoSlotId"];
          v11 = [v10 unsignedIntValue];
          v13 = subscriber::instanceAsSimSlot(v11, v12);

          [v9 setSlotId:sub_10000FD54(v13)];
          v14 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfoCurrentMobileId"];
          [v9 setCurrentMobileId:v14];

          v15 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfoCurrentSubscriberId"];
          [v9 setCurrentSubscriberId:v15];

          v16 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfoIMEI"];
          [v9 setIMEI:v16];

          v17 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfoICCID"];
          [v9 setICCID:v17];

          v18 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfoIMSI"];
          [v9 setIMSI:v18];

          v19 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfo1xIMSI"];
          [v9 setCdmaIMSI:v19];

          v20 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfoMEID"];
          [v9 setMEID:v20];

          v21 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfoEUIMID"];
          [v9 setEUIMID:v21];

          v22 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfoPRLVersion"];
          [v9 setPRLVersion:v22];

          v23 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfoERIVersion"];
          [v9 setERIVersion:v23];

          v24 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfoMIN"];
          [v9 setMIN:v24];

          v25 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfoNAI"];
          [v9 setNAI:v25];

          v26 = *a3;
          if (!*a3 || *v26 != v13)
          {
            if (*a1)
            {
              objc_msgSend_getLogContext(*a1);
              v30 = v47;
            }

            else
            {
              v30 = 0;
              *buf = 0;
              v47 = 0;
            }

            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Could not get cellular plan device Info", buf, 2u);
            }

            goto LABEL_54;
          }

          v27 = (v26 + 8);
          if (*(v26 + 31) < 0)
          {
            if (!*(v26 + 16))
            {
              goto LABEL_30;
            }

            v27 = *v27;
          }

          else if (!*(v26 + 31))
          {
LABEL_30:
            v34 = (v26 + 32);
            if (*(v26 + 55) < 0)
            {
              if (!*(v26 + 40))
              {
                goto LABEL_36;
              }

              v34 = *v34;
            }

            else if (!*(v26 + 55))
            {
LABEL_36:
              v36 = (v26 + 56);
              if (*(v26 + 79) < 0)
              {
                if (!*(v26 + 64))
                {
                  goto LABEL_42;
                }

                v36 = *v36;
              }

              else if (!*(v26 + 79))
              {
LABEL_42:
                v38 = (v26 + 104);
                if (*(v26 + 127) < 0)
                {
                  if (!*(v26 + 112))
                  {
                    goto LABEL_48;
                  }

                  v38 = *v38;
                }

                else if (!*(v26 + 127))
                {
LABEL_48:
                  v40 = (v26 + 128);
                  if (*(v26 + 151) < 0)
                  {
                    if (*(v26 + 136))
                    {
                      v40 = *v40;
                      goto LABEL_53;
                    }
                  }

                  else
                  {
                    if (!*(v26 + 151))
                    {
                      goto LABEL_54;
                    }

LABEL_53:
                    v41 = [NSString stringWithUTF8String:v40];
                    [v9 setBaseVersion:v41];
                  }

LABEL_54:
                  [v45 addObject:v9];

                  goto LABEL_55;
                }

                v39 = [NSString stringWithUTF8String:v38];
                [v9 setBaseId:v39];

                v26 = *a3;
                goto LABEL_48;
              }

              v37 = [NSString stringWithUTF8String:v36];
              [v9 setEffectiveICCID:v37];

              v26 = *a3;
              goto LABEL_42;
            }

            v35 = [NSString stringWithUTF8String:v34];
            [v9 setCSN:v35];

            v26 = *a3;
            goto LABEL_36;
          }

          v33 = [NSString stringWithUTF8String:v27];
          [v9 setDisplayCSN:v33];

          v26 = *a3;
          goto LABEL_30;
        }

        if (*a1)
        {
          objc_msgSend_getLogContext(*a1);
          v29 = v47;
        }

        else
        {
          v29 = 0;
          *buf = 0;
          v47 = 0;
        }

        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v31 = v29;
          v32 = "meInfo array item is of invalid type";
          goto LABEL_23;
        }
      }

      else
      {
        if (*a1)
        {
          objc_msgSend_getLogContext(*a1);
          v28 = v47;
        }

        else
        {
          v28 = 0;
          *buf = 0;
          v47 = 0;
        }

        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v31 = v28;
          v32 = "meInfo array item is missing";
LABEL_23:
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, v32, buf, 2u);
        }
      }

LABEL_55:
    }
  }

  v42 = *a1;
  if (*a1)
  {
    objc_msgSend_getLogContext(v42);
    v43 = v47;
  }

  else
  {
    v43 = 0;
    *buf = 0;
    v47 = 0;
  }

  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Could not get Mobile Equipment Info", buf, 2u);
  }

  v5 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:6 userInfo:0];
  (*(*(a1 + 8) + 16))();
LABEL_63:
}

uint64_t sub_101440674(uint64_t a1)
{
  *a1 = off_101F3BAD0;
  sub_100010250((a1 + 24));

  return a1;
}

void sub_1014406C8(uint64_t a1)
{
  *a1 = off_101F3BAD0;
  sub_100010250((a1 + 24));

  operator delete();
}

const void **sub_1014407BC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3BAD0;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = objc_retainBlock(*(a1 + 16));

  return sub_10006F22C((a2 + 24), (a1 + 24));
}

void sub_10144082C(uint64_t a1)
{
  sub_100010250((a1 + 24));

  v2 = *(a1 + 8);
}

void sub_101440870(uint64_t a1)
{
  sub_100010250((a1 + 24));

  operator delete(a1);
}

void sub_1014408BC(uint64_t a1, int *a2)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  v12 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v13 = *(a2 + 2);
  v14 = *(a2 + 6);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  v15 = *(a2 + 14);
  v16 = *(a2 + 9);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v2 = *(a2 + 5);
  v18 = *(a2 + 12);
  v17 = v2;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  v3 = *(a2 + 26);
  v20 = *(a2 + 15);
  v19 = v3;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  v4 = *(a2 + 18);
  v21 = *(a2 + 8);
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  v5 = *(a2 + 38);
  v6 = *(a2 + 21);
  v22 = v4;
  v24 = v6;
  v23 = v5;
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  v7 = *(a2 + 24);
  v25 = *(a2 + 11);
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  *(a2 + 23) = 0;
  *(a2 + 24) = 0;
  v8 = *(a2 + 50);
  v9 = *(a2 + 27);
  v26 = v7;
  v28 = v9;
  v27 = v8;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  *(a2 + 27) = 0;
  sub_10006F22C(&v29, (a1 + 24));
  operator new();
}

void sub_101440A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1013D4328((v3 - 48));
  sub_1013D4328((v3 - 56));
  sub_100010250((v3 - 40));
  sub_100FBB8C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101440A78(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3BB30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101440AC4(uint64_t a1)
{
  *a1 = off_101F3BB50;
  sub_100010250((a1 + 24));

  return a1;
}

void sub_101440B18(uint64_t a1)
{
  *a1 = off_101F3BB50;
  sub_100010250((a1 + 24));

  operator delete();
}

const void **sub_101440C0C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3BB50;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = objc_retainBlock(*(a1 + 16));

  return sub_10006F22C((a2 + 24), (a1 + 24));
}

void sub_101440C7C(uint64_t a1)
{
  sub_100010250((a1 + 24));

  v2 = *(a1 + 8);
}

void sub_101440CC0(uint64_t a1)
{
  sub_100010250((a1 + 24));

  operator delete(a1);
}

void sub_101440D0C(uint64_t a1, int *a2)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  v12 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v13 = *(a2 + 2);
  v14 = *(a2 + 6);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  v15 = *(a2 + 14);
  v16 = *(a2 + 9);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v2 = *(a2 + 5);
  v18 = *(a2 + 12);
  v17 = v2;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  v3 = *(a2 + 26);
  v20 = *(a2 + 15);
  v19 = v3;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  v4 = *(a2 + 18);
  v21 = *(a2 + 8);
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  v5 = *(a2 + 38);
  v6 = *(a2 + 21);
  v22 = v4;
  v24 = v6;
  v23 = v5;
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  v7 = *(a2 + 24);
  v25 = *(a2 + 11);
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  *(a2 + 23) = 0;
  *(a2 + 24) = 0;
  v8 = *(a2 + 50);
  v9 = *(a2 + 27);
  v26 = v7;
  v28 = v9;
  v27 = v8;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  *(a2 + 27) = 0;
  sub_10006F22C(&v29, (a1 + 24));
  operator new();
}

void sub_101440E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1013D4328((v3 - 48));
  sub_1013D4328((v3 - 56));
  sub_100010250((v3 - 40));
  sub_100FBB8C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101440EC8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3BBB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101440F40(uint64_t a1)
{

  operator delete();
}

id sub_101440FF4(uint64_t a1, void *a2)
{
  *a2 = off_101F3BBE0;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101441044(id *a1)
{

  operator delete(a1);
}

void sub_101441080(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [NSString stringWithUTF8String:v3];
  (*(v2 + 16))(v2);
}

uint64_t sub_10144110C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3BC40))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101441184(uint64_t a1)
{

  operator delete();
}

id sub_101441238(uint64_t a1, void *a2)
{
  *a2 = off_101F3BC60;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101441288(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1014412E4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3BCD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10144135C(uint64_t a1)
{

  operator delete();
}

id sub_101441410(uint64_t a1, void *a2)
{
  *a2 = off_101F3BCF0;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101441460(id *a1)
{

  operator delete(a1);
}

uint64_t sub_10144149C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (v2 == 2);
  }

  return (*(v3 + 16))(v3, v4, 0);
}

uint64_t sub_1014414C8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3BD50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101441540(uint64_t a1)
{

  operator delete();
}

id sub_1014415F4(uint64_t a1, void *a2)
{
  *a2 = off_101F3BD70;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101441644(id *a1)
{

  operator delete(a1);
}

void sub_101441680(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = *a3;
    v7 = objc_opt_new();
    [v7 setObject:v4 forKeyedSubscript:@"kCTEncryptedIdentity"];
    if (v5)
    {
      [v7 setObject:v5 forKeyedSubscript:@"kCTIdentityAnonymousUserName"];
    }

    (*(*(a1 + 8) + 16))();
  }

  else
  {
    v6 = *(a1 + 8);
    v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (*(v6 + 16))(v6, 0);
  }
}

uint64_t sub_101441788(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3BDE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101441800(uint64_t a1)
{

  operator delete();
}

id sub_1014418B4(uint64_t a1, void *a2)
{
  *a2 = off_101F3BE00;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101441904(id *a1)
{

  operator delete(a1);
}

uint64_t sub_101441958(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3BE60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014419D8(uint64_t a1)
{

  operator delete();
}

id sub_101441AA8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3BE80;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  result = objc_retainBlock(*(a1 + 24));
  *(a2 + 24) = result;
  return result;
}

void sub_101441B08(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_101441B44(id *a1)
{

  operator delete(a1);
}

void sub_101441B88(uint64_t a1, uint64_t a2)
{
  v22 = *(a2 + 16);
  v3 = v22;
  *__p = *a2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = HIBYTE(v3);
  if (v4 < 0)
  {
    v4 = __p[1];
  }

  if (!v4)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      objc_msgSend_registry(v5);
      v5 = v23[0];
    }

    else
    {
      v23[0] = 0;
      v23[1] = 0;
    }

    ServiceMap = Registry::getServiceMap(v5);
    v7 = ServiceMap;
    if (v8 < 0)
    {
      v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      v10 = 5381;
      do
      {
        v8 = v10;
        v11 = *v9++;
        v10 = (33 * v10) ^ v11;
      }

      while (v11);
    }

    std::mutex::lock(ServiceMap);
    v27 = v8;
    v12 = sub_100009510(&v7[1].__m_.__sig, &v27);
    if (v12)
    {
      v14 = v12[3];
      v13 = v12[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v7);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
        v15 = 0;
LABEL_15:
        if (v23[1])
        {
          sub_100004A34(v23[1]);
        }

        if (v14)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          (*(*v14 + 24))(&v27, v14, *(a1 + 16));
          v16 = HIBYTE(v29);
          v17 = HIBYTE(v29);
          if (v29 < 0)
          {
            v16 = v28;
          }

          if (v16)
          {
            sub_100A34BC8(v23);
            if (SHIBYTE(v22) < 0)
            {
              operator delete(__p[0]);
            }

            *__p = *v23;
            v22 = v24;
            HIBYTE(v24) = 0;
            LOBYTE(v23[0]) = 0;
            if (v26 < 0)
            {
              operator delete(v25);
              if (SHIBYTE(v24) < 0)
              {
                operator delete(v23[0]);
              }
            }

            v17 = HIBYTE(v29);
          }

          if (v17 < 0)
          {
            operator delete(v27);
          }
        }

        if ((v15 & 1) == 0)
        {
          sub_100004A34(v13);
        }

        goto LABEL_31;
      }
    }

    else
    {
      v14 = 0;
    }

    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_15;
  }

LABEL_31:
  v18 = *(a1 + 24);
  if (v22 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  v20 = [NSString stringWithUTF8String:v19, __p[0], __p[1], v22];
  (*(v18 + 16))(v18, v20, 0);

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101441DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if ((v27 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101441E30(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3BEE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101441EA8(uint64_t a1)
{

  operator delete();
}

id sub_101441F5C(uint64_t a1, void *a2)
{
  *a2 = off_101F3BF00;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101441FAC(id *a1)
{

  operator delete(a1);
}

const void **sub_101441FE8(uint64_t a1, const void **a2)
{
  v3 = *a2;
  *a2 = 0;
  (*(*(a1 + 8) + 16))();
  return sub_100010250(&v3);
}

void sub_101442038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100010250(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10144204C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3BF60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014420C4(uint64_t a1)
{

  operator delete();
}

id sub_101442178(uint64_t a1, void *a2)
{
  *a2 = off_101F3BF80;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1014421C8(id *a1)
{

  operator delete(a1);
}

void sub_101442204(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 16);
  *__p = *a2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v2 = *(a1 + 8);
  if (v6 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  v4 = [NSString stringWithUTF8String:v3, __p[0], __p[1], v6];
  (*(v2 + 16))(v2, v4, 0);

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101442298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1014422C0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3BFE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101442338(uint64_t a1)
{

  operator delete();
}

id sub_1014423EC(uint64_t a1, void *a2)
{
  *a2 = off_101F3C000;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10144243C(id *a1)
{

  operator delete(a1);
}

void sub_101442478(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [NSString stringWithUTF8String:v3];
  (*(v2 + 16))(v2);
}

uint64_t sub_101442504(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3C060))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10144257C(uint64_t a1)
{

  operator delete();
}

id sub_101442630(uint64_t a1, void *a2)
{
  *a2 = off_101F3C080;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101442680(id *a1)
{

  operator delete(a1);
}

void sub_1014426BC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [NSString stringWithUTF8String:v3];
  (*(v2 + 16))(v2);
}

uint64_t sub_101442748(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3C0E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014427C8(uint64_t a1)
{

  operator delete();
}

id sub_101442890(uint64_t a1, void *a2)
{
  *a2 = off_101F3C100;
  a2[1] = *(a1 + 8);
  result = objc_retainBlock(*(a1 + 16));
  a2[2] = result;
  return result;
}

void sub_1014428E8(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_101442924(id *a1)
{

  operator delete(a1);
}

void sub_101442968(uint64_t a1, void *a2)
{
  v3 = a2 + 1;
  v4 = a2[1];
  v22 = *a2;
  v23 = v4;
  if (a2[2])
  {
    v4[2] = &v23;
    *a2 = v3;
    *v3 = 0;
    a2[2] = 0;
  }

  else
  {
    v22 = &v23;
  }

  v5 = +[NSMutableDictionary dictionary];
  v6 = v22;
  if (v22 == &v23)
  {
LABEL_13:
    v12 = *(a1 + 8);
    if (v12)
    {
      objc_msgSend_getLogContext(v12);
      v13 = *&buf[8];
    }

    else
    {
      v13 = 0;
      *buf = 0;
      *&buf[8] = 0;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315395;
      *&buf[4] = "operator()";
      *&buf[12] = 2117;
      *&buf[14] = v5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: output auth info: %{sensitive}@", buf, 0x16u);
    }

    v14 = *(a1 + 16);
    v15 = [[CTSubscriberAuthDataHolder alloc] initWithData:v5];
    (*(v14 + 16))(v14, v15, 0);
  }

  else
  {
    while (1)
    {
      v7 = subscriber::clientKeyFromAuthInfoType();
      if (!v7)
      {
        break;
      }

      v25 = 0;
      v26 = 0;
      if (!ctu::cf::convert_copy())
      {
        v18 = *(a1 + 8);
        if (v18)
        {
          objc_msgSend_getLogContext(v18);
          v19 = *&buf[8];
        }

        else
        {
          v19 = 0;
          *buf = 0;
          *&buf[8] = 0;
        }

        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Unable to convert auth info data", buf, 2u);
        }

        v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:14 userInfo:0];
        (*(*(a1 + 16) + 16))();

        sub_10002D760(&v25);
        goto LABEL_31;
      }

      v8 = v25;
      v25 = v26;
      *buf = v8;
      sub_10002D760(buf);
      [v5 setObject:v25 forKeyedSubscript:v7];
      sub_10002D760(&v25);
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
      if (v10 == &v23)
      {
        goto LABEL_13;
      }
    }

    v16 = *(a1 + 8);
    if (v16)
    {
      objc_msgSend_getLogContext(v16);
      v17 = *&buf[8];
    }

    else
    {
      v17 = 0;
      *buf = 0;
      *&buf[8] = 0;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Unable to find client key for auth info", buf, 2u);
    }

    v20 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:14 userInfo:0];
    (*(*(a1 + 16) + 16))();
  }

LABEL_31:

  sub_10004EC58(&v22, v23);
}

void sub_101442CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  sub_10002D760(va1);

  sub_10004EC58(va, v7);
  _Unwind_Resume(a1);
}

uint64_t sub_101442D4C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3C160))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101442DC4(uint64_t a1)
{

  operator delete();
}

id sub_101442E78(uint64_t a1, void *a2)
{
  *a2 = off_101F3C180;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101442EC8(id *a1)
{

  operator delete(a1);
}

void sub_101442F04(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    v3 = *(*(a1 + 8) + 16);

    v3();
  }

  else
  {
    v4 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (*(*(a1 + 8) + 16))();
  }
}

uint64_t sub_101442FC8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3C1E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101443040(uint64_t a1)
{

  operator delete();
}

id sub_1014430F4(uint64_t a1, void *a2)
{
  *a2 = off_101F3C200;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101443144(id *a1)
{

  operator delete(a1);
}

void sub_101443180(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    v3 = *(*(a1 + 8) + 16);

    v3();
  }

  else
  {
    v4 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (*(*(a1 + 8) + 16))();
  }
}

uint64_t sub_101443244(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3C260))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014432BC(uint64_t a1)
{

  operator delete();
}

id sub_101443370(uint64_t a1, void *a2)
{
  *a2 = off_101F3C280;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1014433C0(id *a1)
{

  operator delete(a1);
}

void sub_1014433FC(uint64_t a1, _WORD *a2)
{
  if ((*a2 & 0x100) != 0)
  {
    v3 = *(a1 + 8);
    v4 = [NSNumber numberWithBool:*a2 & 1];
    (*(v3 + 16))(v3);
  }

  else
  {
    v4 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:6 userInfo:0];
    (*(*(a1 + 8) + 16))();
  }
}

uint64_t sub_1014434D0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3C2E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101443548(uint64_t a1)
{

  operator delete();
}

id sub_1014435FC(uint64_t a1, void *a2)
{
  *a2 = off_101F3C300;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10144364C(id *a1)
{

  operator delete(a1);
}

void sub_101443688(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  v3 = [NSNumber numberWithInteger:*a2];
  (*(v2 + 16))(v2);
}

uint64_t sub_101443708(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3C360))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101443780(uint64_t a1)
{

  operator delete();
}

id sub_101443834(uint64_t a1, void *a2)
{
  *a2 = off_101F3C380;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101443884(id *a1)
{

  operator delete(a1);
}

void sub_1014438C0(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  v3 = [NSNumber numberWithInteger:*a2];
  (*(v2 + 16))(v2);
}

uint64_t sub_101443940(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3C3E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014439B8(uint64_t a1)
{

  operator delete();
}

id sub_101443A6C(uint64_t a1, void *a2)
{
  *a2 = off_101F3C400;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101443ABC(id *a1)
{

  operator delete(a1);
}

void sub_101443AF8(uint64_t a1, void *a2)
{
  v2 = a2 + 1;
  v3 = a2[1];
  v12 = *a2;
  v13 = v3;
  if (a2[2])
  {
    v3[2] = &v13;
    *a2 = v2;
    *v2 = 0;
    a2[2] = 0;
  }

  else
  {
    v12 = &v13;
  }

  v4 = *(a1 + 8);
  v5 = objc_opt_new();
  v6 = v12;
  if (v12 != &v13)
  {
    do
    {
      v17 = 0;
      v18 = 0;
      v15 = 0;
      v16 = 0;
      sub_100034C50(&v15, v6[5], v6[6], v6[6] - v6[5]);
      v21 = 0;
      v22 = 0;
      __p = 0;
      sub_100034C50(&__p, v15, v16, v16 - v15);
      v19 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      sub_100034C50(&v23, __p, v21, v21 - __p);
      v26 = 0;
      if (ctu::cf::convert_copy())
      {
        v7 = v19;
        v19 = v26;
        v27 = v7;
        sub_10002D760(&v27);
      }

      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      v18 = v19;
      v19 = 0;
      sub_10002D760(&v19);
      if (__p)
      {
        v21 = __p;
        operator delete(__p);
      }

      if (v15)
      {
        v16 = v15;
        operator delete(v15);
      }

      v8 = *(v6 + 8);
      if (v8 > 5)
      {
        switch(v8)
        {
          case 6:
            [v5 setCk:v18];
            break;
          case 7:
            [v5 setIk:v18];
            break;
          case 9:
            [v5 setAuts:v18];
            break;
        }
      }

      else
      {
        switch(v8)
        {
          case 3:
            [v5 setSres:v18];
            break;
          case 4:
            [v5 setKc:v18];
            break;
          case 5:
            [v5 setRes:v18];
            break;
        }
      }

      sub_10002D760(&v18);
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
    }

    while (v10 != &v13);
  }

  (*(v4 + 16))(v4, v5, 0);

  sub_10004EC58(&v12, v13);
}

uint64_t sub_101443DBC(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3C460))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101443E34(uint64_t a1)
{

  operator delete();
}

id sub_101443EE8(uint64_t a1, void *a2)
{
  *a2 = off_101F3C480;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101443F38(id *a1)
{

  operator delete(a1);
}

uint64_t sub_101443F8C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3C4E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101444004(uint64_t a1)
{

  operator delete();
}

id sub_1014440B8(uint64_t a1, void *a2)
{
  *a2 = off_101F3C500;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101444108(id *a1)
{

  operator delete(a1);
}

void sub_101444144(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
  }

  v4 = v3;
  (*(*(a1 + 8) + 16))();
}

uint64_t sub_1014441E0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3C560))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101444258(uint64_t a1)
{

  operator delete();
}

id sub_10144430C(uint64_t a1, void *a2)
{
  *a2 = off_101F3C580;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10144435C(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1014443AC(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3C5E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014443F8()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1014444DC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a2;
  if (!*a2)
  {
    v11 = *(a1 + 8);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_18:
      *a5 = 0;
      *(a5 + 8) = 0;
      return;
    }

    *buf = 0;
    v12 = "targetInstantAtLocationCache required";
LABEL_21:
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v12, buf, 2u);
    goto LABEL_18;
  }

  v7 = *a3;
  if (!*a3)
  {
    v11 = *(a1 + 8);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v12 = "anchorageAtLocation required";
    goto LABEL_21;
  }

  *buf = xmmword_10196F370;
  v8 = a2[1];
  v16 = v6;
  v17 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *a3;
  }

  v9 = a3[1];
  v14 = v7;
  v15 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a4[1];
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  stewie::ServiceAtLocation::create(&v16, &v14, (a1 + 8), a5);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }
}

void sub_101444624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_101444680(uint64_t a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  operator delete();
}

void sub_101444734(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_101444770(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014447A8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1014447D8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101444818(void *a1, uint64_t *a2)
{
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  v12 = 0u;
  sub_10000C320(&v12);
  sub_1015653F8(*a2, __p);
  if ((v11 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v5 = v11;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_10000C030(&v13, v4, v5);
  sub_10000C030(v6, "{", 1);
  v7 = std::ostream::operator<<();
  sub_10000C030(v7, "}", 1);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100061574(&v12, a1);
  *&v13 = v8;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[1]);
  }

  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

ctu::OsLogLogger *sub_101444A6C(ctu::OsLogLogger *a1, void *a2)
{
  ctu::OsLogContext::OsLogContext(&v6, kCtLoggingSystemName, "wea");
  ctu::OsLogLogger::OsLogLogger(v7, &v6);
  ctu::OsLogLogger::OsLogLogger(a1, v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  ctu::OsLogContext::~OsLogContext(&v6);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  v4 = a2[1];
  *(a1 + 4) = *a2;
  *(a1 + 5) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_101444B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  _Unwind_Resume(a1);
}

void sub_101444B24(uint64_t a1, void **a2, void **a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a4;
  v8 = a4[1];
  if (v8 != *a4)
  {
    v10 = *(a1 + 8);
    v26 = *(a1 + 16);
    if (v10 != v26)
    {
      do
      {
        v12 = *(*v10 + 16);
        v11 = *(*v10 + 24);
        while (v12 != v11)
        {
          v13 = *v12;
          if (*(*v12 + 23) < 0)
          {
            sub_100005F2C(buf, *v13, *(v13 + 1));
          }

          else
          {
            v14 = *v13;
            v35 = *(v13 + 2);
            *buf = v14;
          }

          v15 = v12[2];
          if (*(v15 + 23) < 0)
          {
            sub_100005F2C(&v36, *v15, *(v15 + 1));
          }

          else
          {
            v16 = *v15;
            v37 = *(v15 + 2);
            v36 = v16;
          }

          sub_10011C9B0(&v28, buf, 2);
          if (sub_100DAB6A0(a2, &v28))
          {
            v17 = 1;
          }

          else
          {
            v18 = *v12;
            if (*(*v12 + 23) < 0)
            {
              sub_100005F2C(&__dst, *v18, *(v18 + 1));
            }

            else
            {
              v19 = *v18;
              v31 = *(v18 + 2);
              __dst = v19;
            }

            v20 = v12[2];
            if (*(v20 + 23) < 0)
            {
              sub_100005F2C(&v32, *v20, *(v20 + 1));
            }

            else
            {
              v21 = *v20;
              v33 = *(v20 + 2);
              v32 = v21;
            }

            sub_10011C9B0(v27, &__dst, 2);
            v17 = sub_100DAB6A0(a3, v27);
            sub_100009970(v27, v27[1]);
            for (i = 0; i != -48; i -= 24)
            {
              if (buf[i - 1] < 0)
              {
                operator delete(*(&v32 + i));
              }
            }
          }

          sub_100009970(&v28, v29);
          for (j = 0; j != -48; j -= 24)
          {
            if (*(&v37 + j + 7) < 0)
            {
              operator delete(*(&v36 + j));
            }
          }

          if (v17)
          {
            v24 = *a1;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Alert already being monitored...", buf, 2u);
            }

            return;
          }

          v12 += 4;
        }

        v10 += 16;
      }

      while (v10 != v26);
      v7 = *a4;
      v8 = a4[1];
    }

    __dst = 0uLL;
    v31 = 0;
    sub_101446658(&__dst, v7, v8, 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3));
    v28 = 0;
    v29 = 0;
    sub_101446E18(&v28, a2);
  }
}

void sub_1014451EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, std::__shared_weak_count *a18, uint64_t a19, void **p_p, std::__shared_weak_count *a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (a21)
  {
    sub_100004A34(a21);
  }

  p_p = &__p;
  sub_1001DFF90(&p_p);
  _Unwind_Resume(a1);
}

void sub_101445350(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v6 = (v3 - *a1) >> 5;
    v7 = v6 + 1;
    if ((v6 + 1) >> 59)
    {
      sub_1000CE3D4();
    }

    v8 = v4 - *a1;
    if (v8 >> 4 > v7)
    {
      v7 = v8 >> 4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 59))
      {
        operator new();
      }

      sub_100013D10();
    }

    v10 = (32 * v6);
    v11 = *a2;
    v12 = a2[1];
    *a2 = 0uLL;
    *v10 = v11;
    v10[1] = v12;
    a2[1] = 0uLL;
    v5 = 32 * v6 + 32;
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = 32 * v6 - v14;
    memcpy(v10 - v14, *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v3 = *a2;
    *a2 = 0uLL;
    v3[1] = a2[1];
    a2[1] = 0uLL;
    v5 = (v3 + 2);
  }

  *(a1 + 8) = v5;
}

void sub_101445468(uint64_t a1)
{
  v2 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Active shapes:", buf, 2u);
  }

  v3 = *(a1 + 8);
  for (i = *(a1 + 16); v3 != i; v3 += 2)
  {
    v5 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      sub_101444818(buf, *v3);
      if (v8 >= 0)
      {
        v6 = buf;
      }

      else
      {
        v6 = *buf;
      }

      *v9 = 136446210;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %{public}s", v9, 0xCu);
      if (v8 < 0)
      {
        operator delete(*buf);
      }
    }
  }
}

uint64_t sub_1014455B0(uint64_t a1, void **a2, uint64_t *a3, const void **a4)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v4 = *(a1 + 8);
  for (i = *(a1 + 16); v4 != i; v4 += 2)
  {
    v6 = (*v4)[2];
    v5 = (*v4)[3];
    v17 = v5;
    while (v6 != v5)
    {
      v7 = *v6;
      if (*(*v6 + 23) < 0)
      {
        sub_100005F2C(buf, *v7, *(v7 + 1));
      }

      else
      {
        v8 = *v7;
        v31 = *(v7 + 2);
        *buf = v8;
      }

      v9 = v6[2];
      if (*(v9 + 23) < 0)
      {
        sub_100005F2C(&v32, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v33[0] = *(v9 + 2);
        v32 = v10;
      }

      sub_10011C9B0(v22, buf, 2);
      v20 = v6;
      v11 = sub_100DAB6A0(a2, v22);
      sub_100009970(v22, v22[1]);
      for (j = 0; j != -6; j -= 3)
      {
        if (SHIBYTE(v33[j]) < 0)
        {
          operator delete(v33[j - 2]);
        }
      }

      if (v11)
      {
        if (*a3 != a3[1])
        {
          v13 = (*v4)[1];
          v29[0] = **v4;
          v29[1] = v13;
          if (v13)
          {
            atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
          }

          memset(v21, 0, sizeof(v21));
          sub_101446B90(v21, v29, buf);
        }

        if (a3[3] != a3[4])
        {
          v14 = (*v4)[1];
          __p[0] = **v4;
          __p[1] = v14;
          if (v14)
          {
            atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
          }

          memset(v26, 0, sizeof(v26));
          sub_101446B90(v26, __p, &v28);
        }
      }

      v6 = v20 + 4;
      v5 = v17;
    }
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }

  return 0;
}

void sub_101445CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101445E84(uint64_t a1, const void **a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 != v6)
  {
    v7 = a3;
    while (1)
    {
      v8 = **v5;
      if (*(v8 + 63) < 0)
      {
        sub_100005F2C(__p, *(v8 + 40), *(v8 + 48));
      }

      else
      {
        *__p = *(v8 + 40);
        v19 = *(v8 + 56);
      }

      v9 = SHIBYTE(v19);
      if (v19 >= 0)
      {
        v10 = HIBYTE(v19);
      }

      else
      {
        v10 = __p[1];
      }

      v11 = *(a2 + 23);
      v12 = v11;
      if (v11 < 0)
      {
        v11 = a2[1];
      }

      if (v10 != v11)
      {
        break;
      }

      if (v19 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (v12 >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      v15 = memcmp(v13, v14, v10) == 0;
      if (v9 < 0)
      {
        goto LABEL_21;
      }

LABEL_22:
      if (v15)
      {
        sub_101565CEC(**v5, v7);
        return;
      }

      v5 += 2;
      if (v5 == v6)
      {
        goto LABEL_24;
      }
    }

    v15 = 0;
    if ((SHIBYTE(v19) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_21:
    operator delete(__p[0]);
    goto LABEL_22;
  }

LABEL_24:
  v16 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    LODWORD(__p[0]) = 136446210;
    *(__p + 4) = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Failed to match hash: %{public}s", __p, 0xCu);
  }
}

void sub_101446020(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    while (1)
    {
      v6 = *v3;
      v7 = (*v3)[2];
      v8 = (*v3)[3];
      if (v7 != v8)
      {
        v9 = *(a2 + 23);
        if (v9 >= 0)
        {
          v10 = *(a2 + 23);
        }

        else
        {
          v10 = a2[1];
        }

        if (v9 >= 0)
        {
          v11 = a2;
        }

        else
        {
          v11 = *a2;
        }

        while (1)
        {
          v12 = *(*v7 + 23);
          v13 = v12;
          if ((v12 & 0x80u) != 0)
          {
            v12 = *(*v7 + 8);
          }

          if (v12 == v10)
          {
            v14 = v13 >= 0 ? *v7 : **v7;
            if (!memcmp(v14, v11, v10))
            {
              break;
            }
          }

          v15 = *(v7 + 2);
          v16 = *(v15 + 23);
          v17 = v16;
          if ((v16 & 0x80u) != 0)
          {
            v16 = *(v15 + 8);
          }

          if (v16 == v10)
          {
            v18 = v17 >= 0 ? *(v7 + 2) : *v15;
            if (!memcmp(v18, v11, v10))
            {
              break;
            }
          }

          v7 += 2;
          if (v7 == v8)
          {
            goto LABEL_61;
          }
        }

        if (v7 != v8)
        {
          v19 = v7 + 2;
          if (v7 + 2 != v8)
          {
            do
            {
              v20 = *(*v19 + 23);
              if (v20 >= 0)
              {
                v21 = *(*v19 + 23);
              }

              else
              {
                v21 = *(*v19 + 8);
              }

              v22 = *(a2 + 23);
              if (v22 >= 0)
              {
                v23 = *(a2 + 23);
              }

              else
              {
                v23 = a2[1];
              }

              if (v21 != v23 || (v20 >= 0 ? (v24 = *v19) : (v24 = **v19), v22 >= 0 ? (v25 = a2) : (v25 = *a2), memcmp(v24, v25, v21)))
              {
                v26 = *(v19 + 2);
                v27 = *(v26 + 23);
                v28 = v27;
                if ((v27 & 0x80u) != 0)
                {
                  v27 = v26[1];
                }

                if (v27 != v23 || (v28 >= 0 ? (v29 = *(v19 + 2)) : (v29 = *v26), v22 >= 0 ? (v30 = a2) : (v30 = *a2), memcmp(v29, v30, v23)))
                {
                  sub_101446DC0(v7, v19);
                  v7 += 2;
                }
              }

              v19 += 2;
            }

            while (v19 != v8);
            v8 = (*v3)[3];
          }
        }
      }

      if (v7 != v8)
      {
        v31 = v6[3];
        if (v8 != v31)
        {
          do
          {
            sub_101446DC0(v7, v8);
            v8 += 2;
            v7 += 2;
          }

          while (v8 != v31);
          v31 = v6[3];
        }

        while (v31 != v7)
        {
          v31 -= 32;
          sub_100E48AD8(v31);
        }

        v6[3] = v7;
      }

LABEL_61:
      v3 += 2;
      if (v3 == v4)
      {
        v3 = *(a1 + 8);
        v4 = *(a1 + 16);
        goto LABEL_65;
      }
    }
  }

  while (1)
  {
LABEL_65:
    if (v3 == v4)
    {
      v32 = 0;
      v3 = v4;
      goto LABEL_67;
    }

    if ((*v3)[3] == (*v3)[2])
    {
      break;
    }

    v3 += 2;
  }

  sub_1015655C0(**v3);
  v32 = 1;
  if (v3 != v4)
  {
    for (i = v3 + 2; i != v4; i += 2)
    {
      v37 = *i;
      if ((*i)[3] == (*i)[2])
      {
        sub_1015655C0(*v37);
        ++v32;
      }

      else
      {
        v38 = i[1];
        *i = 0;
        i[1] = 0;
        v39 = v3[1];
        *v3 = v37;
        v3[1] = v38;
        if (v39)
        {
          sub_100004A34(v39);
        }

        v3 += 2;
      }
    }
  }

LABEL_67:
  v33 = *(a1 + 16);
  if (v3 != v33)
  {
    while (v33 != v3)
    {
      v34 = *(v33 - 1);
      if (v34)
      {
        sub_100004A34(v34);
      }

      v33 -= 2;
    }

    *(a1 + 16) = v3;
  }

  v35 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v40[0] = 67109120;
    v40[1] = v32;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %u shapes dropped", v40, 8u);
  }

  sub_101445468(a1);
}

uint64_t sub_1014463E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  v12 = 0u;
  sub_10000C320(&v12);
  sub_10000C030(&v13, "=====================", 21);
  sub_10000C030(&v13, "Active alerts:", 14);
  v5 = *(a1 + 8);
  for (i = *(a1 + 16); v5 != i; v5 += 2)
  {
    sub_101444818(__p, *v5);
    if ((v11 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((v11 & 0x80u) == 0)
    {
      v7 = v11;
    }

    else
    {
      v7 = __p[1];
    }

    sub_10000C030(&v13, v6, v7);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10000C030(&v13, "=====================", 21);
  sub_100061574(&v12, a2);
  *&v13 = v8;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[1]);
  }

  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t *sub_101446658(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1006A5CC4(result, a4);
  }

  return result;
}

void sub_1014466C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001DFF90(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014466E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_100ECB804(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 4);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_101446790(v8);
  return v4;
}

uint64_t sub_101446790(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1004CA1EC(a1);
  }

  return a1;
}

void sub_1014467C8(uint64_t ***a1, uint64_t a2)
{
  memset(&v5[3], 0, 24);
  v2 = **a1;
  v4 = *v2;
  v3 = v2[1];
  v6[0] = v4;
  v6[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v5, 0, 24);
  sub_101446B90(v5, v6, v7);
}

void sub_101446AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101446C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10)
{
  a10 = 0;
  sub_100F75FA4(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101446C3C(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1006A5CC4(result, a4);
  }

  return result;
}

void sub_101446CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001DFF90(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101446CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_100ECB804(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 4);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_101446790(v8);
  return v4;
}

void sub_101446D74(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_100105F20(a1, a2);
  }

  sub_1000CE3D4();
}

uint64_t sub_101446DC0(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0uLL;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = a2[1];
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *(a1 + 24);
  *(a1 + 16) = v6;
  if (v7)
  {
    sub_100004A34(v7);
  }

  return a1;
}

void sub_101446EB0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_101446EE8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3C788;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101446F3C(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void sub_101446F74(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3C7D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101446FC8(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[6];
    v4 = a1[5];
    if (v3 != v2)
    {
      do
      {
        v3 -= 32;
        sub_100E48AD8(v3);
      }

      while (v3 != v2);
      v4 = a1[5];
    }

    a1[6] = v2;
    operator delete(v4);
  }

  v5 = a1[4];
  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_101447074(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3C828;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014470D4(int a1)
{
  if ((a1 + 1) > 0xC)
  {
    v1 = &kCTRegistrationRadioAccessTechnologyUnknown;
  }

  else
  {
    v1 = *(&off_101F3C868 + (a1 + 1));
  }

  return *v1;
}

uint64_t sub_101447100(const void *a1)
{
  if (!a1)
  {
    return 11;
  }

  if (CFEqual(a1, kCTRegistrationRadioAccessTechnologyCDMA1x))
  {
    return 3;
  }

  if (CFEqual(a1, kCTRegistrationRadioAccessTechnologyCDMAEVDO))
  {
    return 4;
  }

  if (CFEqual(a1, kCTRegistrationRadioAccessTechnologyCDMAHybrid))
  {
    return 5;
  }

  if (CFEqual(a1, kCTRegistrationRadioAccessTechnologyGSM))
  {
    return 0;
  }

  if (CFEqual(a1, kCTRegistrationRadioAccessTechnologyUTRAN))
  {
    return 2;
  }

  if (CFEqual(a1, kCTRegistrationRadioAccessTechnologyLTE))
  {
    return 7;
  }

  if (CFEqual(a1, kCTRegistrationRadioAccessTechnologyUTRAN2))
  {
    return 9;
  }

  if (CFEqual(a1, kCTRegistrationRadioAccessTechnologyNR))
  {
    return 10;
  }

  return 11;
}

uint64_t sub_10144722C(int a1)
{
  v1 = &kCTWirelessTechnologyUnknown;
  if (a1 <= 39)
  {
    if (a1 == 4)
    {
      v1 = &kCTWirelessTechnologyUMTS;
      return *v1;
    }

    if (a1 == 8)
    {
      v1 = &kCTWirelessTechnologyCDMA2000;
      return *v1;
    }

    if (a1 != 32)
    {
      return *v1;
    }

    goto LABEL_11;
  }

  if (a1 == 40 || a1 == 64)
  {
LABEL_11:
    v1 = &kCTWirelessTechnologyLTE;
    return *v1;
  }

  if (a1 == 128)
  {
    v1 = &kCTWirelessTechnologyNR;
  }

  return *v1;
}

uint64_t sub_1014472A4(const void *a1)
{
  if (a1)
  {
    if (CFEqual(a1, kCTRegistrationRATSelection0))
    {
      return 1;
    }

    else if (CFEqual(a1, kCTRegistrationRATSelection1))
    {
      return 2;
    }

    else if (CFEqual(a1, kCTRegistrationRATSelection2))
    {
      return 3;
    }

    else if (CFEqual(a1, kCTRegistrationRATSelection3))
    {
      return 4;
    }

    else if (CFEqual(a1, kCTRegistrationRATSelection4))
    {
      return 8;
    }

    else if (CFEqual(a1, kCTRegistrationRATSelection5))
    {
      return 12;
    }

    else if (CFEqual(a1, kCTRegistrationRATSelection6))
    {
      return 16;
    }

    else if (CFEqual(a1, kCTRegistrationRATSelection8))
    {
      return 32;
    }

    else if (CFEqual(a1, kCTRegistrationRATSelection11))
    {
      return -48;
    }

    else if (CFEqual(a1, kCTRegistrationRATSelection9))
    {
      return 80;
    }

    else if (CFEqual(a1, kCTRegistrationRATSelection10))
    {
      return -112;
    }

    else if (CFEqual(a1, kCTRegistrationRATSelection7))
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

void sub_101447450(int a1, int a2, void *a3, void *a4)
{
  v5 = kCTRegistrationRATSelectionUnknown;
  *a3 = kCTRegistrationRATSelectionUnknown;
  *a4 = v5;
  if (a1 <= 17)
  {
    if (a1 > 7)
    {
      if (a1 > 14)
      {
        if (a1 == 15)
        {
          goto LABEL_5;
        }

        if (a1 == 16)
        {
          v7 = &kCTRegistrationRATSelection6;
          goto LABEL_6;
        }
      }

      else
      {
        if (a1 == 8)
        {
          v7 = &kCTRegistrationRATSelection4;
          goto LABEL_6;
        }

        if (a1 == 12)
        {
          v7 = &kCTRegistrationRATSelection5;
          goto LABEL_6;
        }
      }
    }

    else if (a1 > 2)
    {
      if (a1 == 3)
      {
        *a3 = kCTRegistrationRATSelection2;
        if (a2 == 2)
        {
          v9 = &kCTRegistrationRATSelection1;
        }

        else
        {
          if (a2 != 1)
          {
            return;
          }

          v9 = &kCTRegistrationRATSelection0;
        }

        v8 = *v9;
        goto LABEL_7;
      }

      if (a1 == 4)
      {
        v7 = &kCTRegistrationRATSelection3;
        goto LABEL_6;
      }
    }

    else
    {
      if (a1 == 1)
      {
        v7 = &kCTRegistrationRATSelection0;
        goto LABEL_6;
      }

      if (a1 == 2)
      {
        v7 = &kCTRegistrationRATSelection1;
        goto LABEL_6;
      }
    }
  }

  else if (a1 > 127)
  {
    if (a1 <= 191)
    {
      if (a1 == 128 || a1 == 144)
      {
        v7 = &kCTRegistrationRATSelection10;
        goto LABEL_6;
      }

      if (a1 == 147)
      {
        goto LABEL_5;
      }
    }

    else if (a1 > 210)
    {
      if (a1 == 211 || a1 == 255)
      {
        goto LABEL_5;
      }
    }

    else if (a1 == 192 || a1 == 208)
    {
      v7 = &kCTRegistrationRATSelection11;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = (a1 - 18);
    if (v6 <= 0x3E)
    {
      if (((1 << (a1 - 18)) & 0x200200002003) != 0)
      {
LABEL_5:
        v7 = &kCTRegistrationRATSelection7;
LABEL_6:
        v8 = *v7;
        *a3 = v8;
LABEL_7:
        *a4 = v8;
        return;
      }

      if (((1 << (a1 - 18)) & 0x4000400000000000) != 0)
      {
        v7 = &kCTRegistrationRATSelection9;
        goto LABEL_6;
      }

      if (v6 == 14)
      {
        v7 = &kCTRegistrationRATSelection8;
        goto LABEL_6;
      }
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v10[0] = 67109120;
    v10[1] = a1;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to convert RAT selection mask 0x%02x to string", v10, 8u);
  }
}

id sub_101447714(uint64_t a1)
{
  v1 = [&off_101F92F00 objectForKey:a1];

  return v1;
}

void sub_1014482C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, char a20)
{
  if (a20)
  {
  }

  if ((*(v25 - 84) & 1) == 0)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1014488C4(id a1)
{
  v1 = NSClassFromString(@"ACXDeviceConnection");
  byte_101FCAA68 = v1 != 0;
}

void sub_101448908(uint64_t a1)
{
  v1 = a1;
  memset(v2, 0, sizeof(v2));
  sub_100A5C398(v2, &v1, "kSmsGetCellBroadcastSettingForAlertType", sub_101448C34, 3);
}

void sub_101448C34(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100020A1C();
  v8 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Request to GET the CB setting", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  *buf = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, buf);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v18 = 0;
      if (!v17)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
  if (!v17)
  {
LABEL_9:
    v36 = xpc_BOOL_create(0);
    if (!v36)
    {
      v36 = xpc_null_create();
    }

    *buf = *a5;
    v31 = "kDidSucceed";
    sub_10000F688(buf, &v36, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v36);
    v36 = 0;
    if (v18)
    {
      return;
    }

LABEL_33:
    sub_100004A34(v16);
    return;
  }

LABEL_15:
  v35 = 0;
  *buf = a4;
  v31 = "kSmsCellBroadcastAlertTypes";
  sub_100006354(buf, &v33);
  xpc::bridge(&v33, v19);
  sub_100060DE8(&v35, &v34);
  sub_10000A1EC(&v34);
  xpc_release(v33);
  LOBYTE(v34) = 0;
  subscriber::makeSimSlotRange();
  v20 = *buf;
  v21 = v31;
  if (*buf == v31)
  {
    goto LABEL_27;
  }

  v22 = v32;
  do
  {
    if (v22(*v20))
    {
      break;
    }

    ++v20;
  }

  while (v20 != v21);
  v23 = v31;
  if (v20 == v31)
  {
LABEL_27:
    v25 = 0;
    LOBYTE(v24) = 0;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v24 |= (*(*v17 + 192))(v17, *v20, v35, &v34);
      if (v24)
      {
        v25 = (v34 | v25) != 0;
      }

      do
      {
        ++v20;
      }

      while (v20 != v21 && (v22(*v20) & 1) == 0);
    }

    while (v20 != v23);
  }

  v28 = xpc_BOOL_create(v25);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  *buf = *a5;
  v31 = "kSmsCellBroadcastEnabled";
  sub_10000F688(buf, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
  v26 = xpc_BOOL_create(v24 & 1);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  *buf = *a5;
  v31 = "kDidSucceed";
  sub_10000F688(buf, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  sub_100005978(&v35);
  if ((v18 & 1) == 0)
  {
    goto LABEL_33;
  }
}

void sub_101448FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object, char a17, int a18, const void *a19)
{
  sub_100005978(&a19);
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(a1);
}

void sub_101449010(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  object = xpc_BOOL_create(0);
  if (!object)
  {
    object = xpc_null_create();
  }

  *buf = *a5;
  v35 = "kDidSucceed";
  sub_10000F688(buf, &object, &v41);
  xpc_release(v41);
  v41 = 0;
  xpc_release(object);
  object = 0;
  *buf = a4;
  v35 = "kSmsCellBroadcastEnabled";
  sub_100006354(buf, &v39);
  v9 = xpc::dyn_cast_or_default(&v39, 0, v8);
  xpc_release(v39);
  sub_100020A1C();
  v10 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Request to SET the CB setting", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v12 = ServiceMap;
  if (v13 < 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  *buf = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, buf);
  if (v17)
  {
    v19 = v17[3];
    v18 = v17[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v12);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v18);
      v20 = 0;
      if (!v19)
      {
        goto LABEL_29;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v19 = 0;
  }

  std::mutex::unlock(v12);
  v18 = 0;
  v20 = 1;
  if (!v19)
  {
    goto LABEL_29;
  }

LABEL_14:
  v29 = v20;
  v39 = 0;
  *buf = a4;
  v35 = "kSmsCellBroadcastAlertTypes";
  sub_100006354(buf, &v37);
  xpc::bridge(&v37, v21);
  sub_100060DE8(&v39, &v38);
  sub_10000A1EC(&v38);
  xpc_release(v37);
  subscriber::makeSimSlotRange();
  v24 = *buf;
  v23 = v35;
  if (*buf == v35)
  {
    goto LABEL_25;
  }

  v25 = v36;
  do
  {
    if (v25(*v24))
    {
      break;
    }

    ++v24;
  }

  while (v24 != v23);
  v26 = v35;
  if (v24 == v35)
  {
LABEL_25:
    v27 = 0;
  }

  else
  {
    v27 = 0;
    do
    {
      v28 = (*(*v19 + 200))(v19, *v24, v39, v9);
      do
      {
        ++v24;
      }

      while (v24 != v23 && (v25(*v24) & 1) == 0);
      v27 |= v28;
    }

    while (v24 != v26);
  }

  ctu::cf_to_xpc(v39, v22);
  *buf = *a5;
  v35 = "kSmsCellBroadcastAlertTypes";
  sub_10000F688(buf, &v32, &v33);
  xpc_release(v33);
  v33 = 0;
  xpc_release(v32);
  v32 = 0;
  v30 = xpc_BOOL_create(v27 & 1);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  *buf = *a5;
  v35 = "kDidSucceed";
  sub_10000F688(buf, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  xpc_release(v30);
  v30 = 0;
  sub_100005978(&v39);
  v20 = v29;
LABEL_29:
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }
}

void sub_101449380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object, char a20, xpc_object_t a21)
{
  sub_100005978(&a21);
  if ((a11 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(a1);
}

void sub_10144940C(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100020A1C();
  v7 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Request to get all cell broadcast types", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v9 = ServiceMap;
  if (v10 < 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  *buf = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, buf);
  if (!v14)
  {
    std::mutex::unlock(v9);
    return;
  }

  v16 = v14[3];
  v15 = v14[4];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v9);
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v15);
    if (!v16)
    {
LABEL_18:
      sub_100004A34(v15);
      return;
    }
  }

  else
  {
    std::mutex::unlock(v9);
    if (!v16)
    {
      return;
    }
  }

  v26 = 0;
  (*(*v16 + 208))(&v25, v16, 1);
  *buf = 0;
  v17 = v25;
  v25 = 0;
  v26 = v17;
  sub_10001021C(buf);
  sub_10001021C(&v25);
  if (v26)
  {
    ctu::cf_to_xpc(v26, v18);
    *buf = *a5;
    v22 = "kSmsCellBroadcastAlertTypes";
    sub_10000F688(buf, &v23, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v23);
    v23 = 0;
  }

  else
  {
    v19 = xpc_string_create("Failed to create a dictionary");
    if (!v19)
    {
      v19 = xpc_null_create();
    }

    *buf = *a5;
    v22 = "kSmsCellBroadcastAlertTypes";
    sub_10000F688(buf, &v19, &v20);
    xpc_release(v20);
    v20 = 0;
    xpc_release(v19);
    v19 = 0;
  }

  sub_10001021C(&v26);
  if (v15)
  {
    goto LABEL_18;
  }
}

void sub_101449644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_10001021C(va);
  if (v15)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(a1);
}

void sub_10144966C(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100020A1C();
  v7 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Request to get all cell broadcast types", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v9 = ServiceMap;
  if (v10 < 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  *buf = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, buf);
  if (!v14)
  {
    std::mutex::unlock(v9);
    return;
  }

  v16 = v14[3];
  v15 = v14[4];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v9);
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v15);
    if (!v16)
    {
LABEL_33:
      sub_100004A34(v15);
      return;
    }
  }

  else
  {
    std::mutex::unlock(v9);
    if (!v16)
    {
      return;
    }
  }

  v17 = subscriber::expectedSimCount();
  theArray = 0;
  theArray = CFArrayCreateMutable(kCFAllocatorDefault, v17, &kCFTypeArrayCallBacks);
  subscriber::makeSimSlotRange();
  v18 = *buf;
  v19 = v36;
  if (*buf != v36)
  {
    v20 = v37;
    do
    {
      if (v20(*v18))
      {
        break;
      }

      ++v18;
    }

    while (v18 != v19);
    v21 = v36;
    if (v18 != v36)
    {
      do
      {
        v22 = *v18;
        value = 0;
        (*(*v16 + 208))(&v33, v16, v22);
        v23 = v33;
        *v39 = value;
        v33 = 0;
        value = v23;
        sub_10001021C(v39);
        sub_10001021C(&v33);
        if (value)
        {
          CFArrayAppendValue(theArray, value);
        }

        else
        {
          sub_100020A1C();
          v24 = qword_101FCAA80;
          if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_ERROR))
          {
            v25 = subscriber::asString();
            *v39 = 136315138;
            *&v39[4] = v25;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to get alert type dictionary for slot: %s", v39, 0xCu);
          }
        }

        sub_10001021C(&value);
        do
        {
          ++v18;
        }

        while (v18 != v19 && (v20(*v18) & 1) == 0);
      }

      while (v18 != v21);
    }
  }

  if (CFArrayGetCount(theArray) < 1)
  {
    sub_100020A1C();
    v27 = qword_101FCAA80;
    if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to get alert type dictionaries.", buf, 2u);
    }

    *buf = *a5;
    v36 = "kSmsCellBroadcastAlertTypesForAllSIMSlots";
    sub_100E3F0C8(buf, &v30);
    xpc_release(v30);
    v30 = 0;
    v28 = xpc_BOOL_create(0);
    if (!v28)
    {
      v28 = xpc_null_create();
    }

    *buf = *a5;
    v36 = "kDidSucceed";
    sub_10000F688(buf, &v28, &v29);
    xpc_release(v29);
    v29 = 0;
    xpc_release(v28);
    v28 = 0;
  }

  else
  {
    ctu::cf_to_xpc(theArray, v26);
    *buf = *a5;
    v36 = "kSmsCellBroadcastAlertTypesForAllSIMSlots";
    sub_10000F688(buf, &v31, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v31);
    v31 = 0;
  }

  sub_1000279DC(&theArray);
  if (v15)
  {
    goto LABEL_33;
  }
}

void sub_101449A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101449AE4(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100020A1C();
  v8 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Request to set custom alert setting", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  *buf = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, buf);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v18 = 0;
      if (!v17)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
  if (!v17)
  {
LABEL_9:
    v21 = xpc_BOOL_create(0);
    if (!v21)
    {
      v21 = xpc_null_create();
    }

    *buf = *a5;
    v27 = "kDidSucceed";
    sub_10000F688(buf, &v21, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v21);
    v21 = 0;
    if (v18)
    {
      return;
    }

LABEL_20:
    sub_100004A34(v16);
    return;
  }

LABEL_15:
  v30 = 0;
  *buf = a4;
  v27 = "kSmsSetCellBroadcastCustomSettings";
  sub_100006354(buf, &v28);
  xpc::bridge(&v28, v19);
  sub_100010180(&v30, &v29);
  sub_10000A1EC(&v29);
  xpc_release(v28);
  v23 = v30;
  if (v30)
  {
    CFRetain(v30);
  }

  v20 = (*(*v17 + 72))(v17, &v23);
  v24 = xpc_BOOL_create(v20);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  *buf = *a5;
  v27 = "kDidSucceed";
  sub_10000F688(buf, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  sub_10001021C(&v23);
  sub_10001021C(&v30);
  if ((v18 & 1) == 0)
  {
    goto LABEL_20;
  }
}

void sub_101449D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object, char a19)
{
  sub_10001021C(&a12);
  sub_10001021C((v21 - 72));
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(a1);
}

void sub_101449DCC(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100020A1C();
  v8 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Request to get custom alert setting", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  *buf = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, buf);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v18 = 0;
      if (!v17)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
  if (!v17)
  {
LABEL_9:
    v21 = xpc_BOOL_create(0);
    if (!v21)
    {
      v21 = xpc_null_create();
    }

    *buf = *a5;
    v29 = "kDidSucceed";
    sub_10000F688(buf, &v21, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v21);
    v21 = 0;
    if (v18)
    {
      return;
    }

LABEL_20:
    sub_100004A34(v16);
    return;
  }

LABEL_15:
  v32 = 0;
  *buf = a4;
  v29 = "kSmsGetCellBroadcastCustomSettings";
  sub_100006354(buf, &v30);
  xpc::bridge(&v30, v19);
  sub_100010180(&v32, &v31);
  sub_10000A1EC(&v31);
  xpc_release(v30);
  v31 = 0;
  v27 = v32;
  if (v32)
  {
    CFRetain(v32);
  }

  (*(*v17 + 80))(&v31, v17, &v27);
  sub_10001021C(&v27);
  ctu::cf_to_xpc(v31, v20);
  *buf = *a5;
  v29 = "kSmsCellBroadcastCustomSettingsResponse";
  sub_10000F688(buf, &v25, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v25);
  v25 = 0;
  v23 = xpc_BOOL_create(1);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  *buf = *a5;
  v29 = "kDidSucceed";
  sub_10000F688(buf, &v23, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v23);
  v23 = 0;
  sub_10001021C(&v31);
  sub_10001021C(&v32);
  if ((v18 & 1) == 0)
  {
    goto LABEL_20;
  }
}

void sub_10144A0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t object)
{
  sub_10001021C((v22 - 80));
  sub_10001021C((v22 - 72));
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(a1);
}

void sub_10144A120(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100020A1C();
  v7 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Request to get CellBroadcast Configuration", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v9 = ServiceMap;
  if (v10 < 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  *buf = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, buf);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      if (!v16)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
  if (!v16)
  {
    goto LABEL_15;
  }

LABEL_12:
  v27 = 0;
  (*(*v16 + 96))(&v27, v16);
  ctu::cf_to_xpc(v27, v18);
  *buf = *a5;
  v24 = "kSmsCellBroadcastConfigContent";
  sub_10000F688(buf, &v25, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v25);
  v25 = 0;
  v21 = xpc_BOOL_create(1);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  *buf = *a5;
  v24 = "kDidSucceed";
  sub_10000F688(buf, &v21, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v21);
  v21 = 0;
  sub_10001021C(&v27);
LABEL_15:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  if (!v16)
  {
    v19 = xpc_BOOL_create(0);
    if (!v19)
    {
      v19 = xpc_null_create();
    }

    *buf = *a5;
    v24 = "kDidSucceed";
    sub_10000F688(buf, &v19, &v20);
    xpc_release(v20);
    v20 = 0;
    xpc_release(v19);
  }
}

void sub_10144A390(_Unwind_Exception *a1)
{
  sub_10001021C((v3 - 56));
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(a1);
}

void sub_10144A3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100020A1C();
  v6 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Self test command not supported", v7, 2u);
  }

  v8 = xpc_BOOL_create(0);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v7[0] = *a5;
  v7[1] = "kDidSucceed";
  sub_10000F688(v7, &v8, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v8);
}

void sub_10144A488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100020A1C();
  v6 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Early Geofence Test not supported", v7, 2u);
  }

  v8 = xpc_BOOL_create(0);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v7[0] = *a5;
  v7[1] = "kDidSucceed";
  sub_10000F688(v7, &v8, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v8);
}

void sub_10144A550(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100020A1C();
  v7 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Request to get override accessibility vibration settings", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v9 = ServiceMap;
  if (v10 < 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  *buf = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, buf);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      if (!v16)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
  if (!v16)
  {
LABEL_9:
    sub_100020A1C();
    v18 = qword_101FCAA80;
    if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to get CMAS interface", buf, 2u);
    }

    v20 = xpc_BOOL_create(0);
    if (!v20)
    {
      v20 = xpc_null_create();
    }

    *buf = *a5;
    v25 = "kDidSucceed";
    sub_10000F688(buf, &v20, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v20);
    v20 = 0;
    if (v17)
    {
      return;
    }

LABEL_22:
    sub_100004A34(v15);
    return;
  }

LABEL_17:
  v19 = (*(*v16 + 88))(v16);
  v26 = xpc_BOOL_create(v19);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  *buf = *a5;
  v25 = "kSmsGetCellBroadcastOverrideAccessibilityVibrationSettingResponse";
  sub_10000F688(buf, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  v22 = xpc_BOOL_create(1);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  *buf = *a5;
  v25 = "kDidSucceed";
  sub_10000F688(buf, &v22, &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(v22);
  v22 = 0;
  if ((v17 & 1) == 0)
  {
    goto LABEL_22;
  }
}

void sub_10144A7F8(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10144A830(Registry **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  v17[0] = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, v17);
  if (!v11)
  {
    v13 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (v13)
  {
LABEL_10:
    v17[0] = a4;
    v17[1] = "kSetSMSTestingMode";
    sub_100006354(v17, &object);
    v16 = xpc::dyn_cast_or_default(&object, 0, v15);
    xpc_release(object);
    (*(*v13 + 216))(v13, v16);
  }

LABEL_11:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_10144A970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10144A9A8(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, void *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v8 = ServiceMap;
  if (v9 < 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  *&buf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &buf);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      if (!v15)
      {
        goto LABEL_7;
      }

LABEL_13:
      v35 = 0uLL;
      v36 = 0;
      __p[0] = a4;
      __p[1] = "kInjectCellBroadcastMessage";
      sub_100006354(__p, object);
      buf = 0uLL;
      v40 = 0;
      xpc::dyn_cast_or_default();
      if (SHIBYTE(v40) < 0)
      {
        operator delete(buf);
      }

      xpc_release(object[0]);
      __p[0] = 0;
      __p[1] = 0;
      v34 = 0;
      if (xpc_dictionary_get_value(*a4, "kInjectWacString"))
      {
        sub_100020A1C();
        v17 = qword_101FCAA80;
        if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
        {
          v18 = &v35;
          if (v36 < 0)
          {
            v18 = v35;
          }

          LODWORD(buf) = 136446210;
          *(&buf + 4) = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Injecting WEA: %{public}s", &buf, 0xCu);
        }

        v29[0] = a4;
        v29[1] = "kInjectWacString";
        sub_100006354(v29, &v30);
        buf = 0uLL;
        v40 = 0;
        xpc::dyn_cast_or_default();
        if (SHIBYTE(v40) < 0)
        {
          operator delete(buf);
        }

        if (SHIBYTE(v34) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = *object;
        v34 = v32;
        HIBYTE(v32) = 0;
        LOBYTE(object[0]) = 0;
        xpc_release(v30);
        v19 = HIBYTE(v34);
        if (v34 < 0)
        {
          v19 = __p[1];
        }

        if (v19)
        {
          sub_100020A1C();
          v20 = qword_101FCAA80;
          if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
          {
            v21 = __p;
            if (v34 < 0)
            {
              v21 = __p[0];
            }

            LODWORD(buf) = 136446210;
            *(&buf + 4) = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I           WAC: %{public}s", &buf, 0xCu);
          }
        }
      }

      if (SHIBYTE(v36) < 0)
      {
        sub_100005F2C(__dst, v35, *(&v35 + 1));
      }

      else
      {
        *__dst = v35;
        v26 = v36;
      }

      if (SHIBYTE(v34) < 0)
      {
        sub_100005F2C(v23, __p[0], __p[1]);
      }

      else
      {
        *v23 = *__p;
        v24 = v34;
      }

      v22 = (*(*v15 + 224))(v15, __dst, v23);
      v27 = xpc_BOOL_create(v22);
      if (!v27)
      {
        v27 = xpc_null_create();
      }

      *&buf = *a5;
      *(&buf + 1) = "kInjectCellBroadcastMessageResult";
      sub_10000F688(&buf, &v27, &v28);
      xpc_release(v28);
      v28 = 0;
      xpc_release(v27);
      v27 = 0;
      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23[0]);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(__dst[0]);
      }

      if (SHIBYTE(v34) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v36) < 0)
      {
        operator delete(v35);
        if (v16)
        {
          return;
        }
      }

      else if (v16)
      {
        return;
      }

      goto LABEL_47;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
  if (v15)
  {
    goto LABEL_13;
  }

LABEL_7:
  v37 = xpc_BOOL_create(0);
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  *&buf = *a5;
  *(&buf + 1) = "kInjectCellBroadcastMessageResult";
  sub_10000F688(&buf, &v37, &v38);
  xpc_release(v38);
  v38 = 0;
  xpc_release(v37);
  v37 = 0;
  if ((v16 & 1) == 0)
  {
LABEL_47:
    sub_100004A34(v14);
  }
}

void sub_10144ADEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, xpc_object_t object, xpc_object_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10144AEF0(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v8 = ServiceMap;
  if (v9 < 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  *&buf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &buf);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      if (!v15)
      {
        goto LABEL_7;
      }

LABEL_15:
      __p[0] = 0;
      __p[1] = 0;
      v26 = 0;
      v23[0] = a4;
      v23[1] = "kInjectOOSGeofence";
      sub_100006354(v23, &v24);
      buf = 0uLL;
      v30 = 0;
      xpc::dyn_cast_or_default();
      if (SHIBYTE(v30) < 0)
      {
        operator delete(buf);
      }

      xpc_release(v24);
      sub_100020A1C();
      v18 = qword_101FCAA80;
      if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
      {
        v19 = __p;
        if (v26 < 0)
        {
          v19 = __p[0];
        }

        LODWORD(buf) = 136446210;
        *(&buf + 4) = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Injecting OOS Geofence: %{public}s", &buf, 0xCu);
      }

      v20 = (*(*v15 + 144))(v15, __p);
      v21 = xpc_BOOL_create(v20);
      if (!v21)
      {
        v21 = xpc_null_create();
      }

      *&buf = *a5;
      *(&buf + 1) = "kInjectOOSGeofenceResult";
      sub_10000F688(&buf, &v21, &v22);
      xpc_release(v22);
      v22 = 0;
      xpc_release(v21);
      v21 = 0;
      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p[0]);
        if (v16)
        {
          return;
        }
      }

      else if (v16)
      {
        return;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
  if (v15)
  {
    goto LABEL_15;
  }

LABEL_7:
  sub_100020A1C();
  v17 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Could not get WeaGeofenceManagerInterface", &buf, 2u);
  }

  v27 = xpc_BOOL_create(0);
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  *&buf = *a5;
  *(&buf + 1) = "kInjectOOSGeofenceResult";
  sub_10000F688(&buf, &v27, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v27);
  v27 = 0;
  if ((v16 & 1) == 0)
  {
LABEL_25:
    sub_100004A34(v14);
  }
}

void sub_10144B1E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10144B27C(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v8 = ServiceMap;
  if (v9 < 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  string[0] = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, string);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
LABEL_9:
  v17 = Registry::getServiceMap(*a1);
  v18 = v17;
  if (v19 < 0)
  {
    v20 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
    v21 = 5381;
    do
    {
      v19 = v21;
      v22 = *v20++;
      v21 = (33 * v21) ^ v22;
    }

    while (v22);
  }

  std::mutex::lock(v17);
  string[0] = v19;
  v23 = sub_100009510(&v18[1].__m_.__sig, string);
  if (!v23)
  {
    v25 = 0;
    goto LABEL_16;
  }

  v25 = v23[3];
  v24 = v23[4];
  if (!v24)
  {
LABEL_16:
    std::mutex::unlock(v18);
    v24 = 0;
    v26 = 1;
    goto LABEL_17;
  }

  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v18);
  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v24);
  v26 = 0;
LABEL_17:
  v27 = 0;
  v28 = 0;
  if (!v25 || !v15)
  {
    goto LABEL_33;
  }

  memset(string, 0, sizeof(string));
  (*(*v15 + 32))(string, v15, 1);
  if (SHIBYTE(string[2]) < 0)
  {
    if (string[1])
    {
      v29 = string[0];
      goto LABEL_24;
    }
  }

  else if (HIBYTE(string[2]))
  {
    v29 = string;
LABEL_24:
    v37 = xpc_string_create(v29);
    if (!v37)
    {
      v37 = xpc_null_create();
    }

    v36[0] = *a5;
    v36[1] = "kVoicemailUrl";
    sub_10000F688(v36, &v37, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v37);
    v37 = 0;
  }

  v28 = (*(*v15 + 40))(v15, 1);
  if (v28 && (*(*v15 + 48))(v15, 1))
  {
    v27 = (*(*v15 + 56))(v15, 1);
  }

  else
  {
    v27 = 0;
  }

  if (SHIBYTE(string[2]) < 0)
  {
    operator delete(string[0]);
  }

LABEL_33:
  v34 = xpc_BOOL_create(v28);
  if (!v34)
  {
    v34 = xpc_null_create();
  }

  string[0] = *a5;
  string[1] = "kVoicemailAvailable";
  sub_10000F688(string, &v34, &v35);
  xpc_release(v35);
  v35 = 0;
  xpc_release(v34);
  v34 = 0;
  v32 = xpc_int64_create(v27);
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  string[0] = *a5;
  string[1] = "kVoicemailCount";
  sub_10000F688(string, &v32, &v33);
  xpc_release(v33);
  v33 = 0;
  xpc_release(v32);
  v32 = 0;
  sub_100020A1C();
  v30 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    v31 = "false";
    if (v28)
    {
      v31 = "true";
    }

    LODWORD(string[0]) = 136315394;
    *(string + 4) = v31;
    WORD2(string[1]) = 1024;
    *(&string[1] + 6) = v27;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I sGetVoicemailCount: available:%s, cnt:%d", string, 0x12u);
    if (v26)
    {
LABEL_39:
      if (v16)
      {
        return;
      }

      goto LABEL_40;
    }
  }

  else if (v26)
  {
    goto LABEL_39;
  }

  sub_100004A34(v24);
  if (v16)
  {
    return;
  }

LABEL_40:
  sub_100004A34(v14);
}

void sub_10144B6BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10144B75C(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100020A1C();
  v8 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Apple safety alert received", buf, 2u);
  }

  object = xpc_BOOL_create(0);
  if (!object)
  {
    object = xpc_null_create();
  }

  *buf = *a5;
  v34 = "kDidSucceed";
  sub_10000F688(buf, &object, &v36);
  xpc_release(v36);
  v36 = 0;
  xpc_release(object);
  object = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  *buf = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, buf);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v18 = 0;
      if (!v17)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
  if (!v17)
  {
LABEL_11:
    sub_100020A1C();
    v19 = qword_101FCAA80;
    if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to get CellBroadcast interface", buf, 2u);
    }

    goto LABEL_27;
  }

LABEL_15:
  cf = 0;
  *buf = a4;
  v34 = "kAppleSafetyAlertContent";
  sub_100006354(buf, &v30);
  xpc::bridge(&v30, v20);
  sub_100010180(&cf, &v31);
  sub_10000A1EC(&v31);
  xpc_release(v30);
  if (cf)
  {
    v27 = cf;
    CFRetain(cf);
    v21 = (*(*v17 + 176))(v17, &v27);
    sub_10001021C(&v27);
    v25 = xpc_BOOL_create(v21 == 0);
    if (!v25)
    {
      v25 = xpc_null_create();
    }

    *buf = *a5;
    v34 = "kDidSucceed";
    sub_10000F688(buf, &v25, &v26);
    xpc_release(v26);
    v26 = 0;
    xpc_release(v25);
    v25 = 0;
    v23 = xpc_int64_create(v21 >> 32);
    if (!v23)
    {
      v23 = xpc_null_create();
    }

    *buf = *a5;
    v34 = "kError";
    sub_10000F688(buf, &v23, &v24);
    xpc_release(v24);
    v24 = 0;
    xpc_release(v23);
    v23 = 0;
  }

  else
  {
    sub_100020A1C();
    v22 = qword_101FCAA80;
    if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Invalid content: kAppleSafetyAlertContent", buf, 2u);
    }

    v28 = xpc_int64_create(22);
    if (!v28)
    {
      v28 = xpc_null_create();
    }

    *buf = *a5;
    v34 = "kError";
    sub_10000F688(buf, &v28, &v29);
    xpc_release(v29);
    v29 = 0;
    xpc_release(v28);
    v28 = 0;
  }

  sub_10001021C(&cf);
LABEL_27:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_10144BB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, xpc_object_t object, char a17, int a18, const void *a19)
{
  sub_10001021C(&a19);
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(a1);
}

void sub_10144BBA0(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100020A1C();
  v8 = qword_101FCAA80;
  if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Apple safety alert received", buf, 2u);
  }

  object = xpc_BOOL_create(0);
  if (!object)
  {
    object = xpc_null_create();
  }

  *buf = *a5;
  v34 = "kDidSucceed";
  sub_10000F688(buf, &object, &v36);
  xpc_release(v36);
  v36 = 0;
  xpc_release(object);
  object = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  *buf = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, buf);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v18 = 0;
      if (!v17)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
  if (!v17)
  {
LABEL_11:
    sub_100020A1C();
    v19 = qword_101FCAA80;
    if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to get CellBroadcast interface", buf, 2u);
    }

    goto LABEL_27;
  }

LABEL_15:
  cf = 0;
  *buf = a4;
  v34 = "kAppleSafetyAlertContent";
  sub_100006354(buf, &v30);
  xpc::bridge(&v30, v20);
  sub_100010180(&cf, &v31);
  sub_10000A1EC(&v31);
  xpc_release(v30);
  if (cf)
  {
    v27 = cf;
    CFRetain(cf);
    v21 = (*(*v17 + 184))(v17, &v27);
    sub_10001021C(&v27);
    v25 = xpc_BOOL_create(v21 == 0);
    if (!v25)
    {
      v25 = xpc_null_create();
    }

    *buf = *a5;
    v34 = "kDidSucceed";
    sub_10000F688(buf, &v25, &v26);
    xpc_release(v26);
    v26 = 0;
    xpc_release(v25);
    v25 = 0;
    v23 = xpc_int64_create(v21 >> 32);
    if (!v23)
    {
      v23 = xpc_null_create();
    }

    *buf = *a5;
    v34 = "kError";
    sub_10000F688(buf, &v23, &v24);
    xpc_release(v24);
    v24 = 0;
    xpc_release(v23);
    v23 = 0;
  }

  else
  {
    sub_100020A1C();
    v22 = qword_101FCAA80;
    if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Invalid content: kAppleSafetyAlertContent", buf, 2u);
    }

    v28 = xpc_int64_create(22);
    if (!v28)
    {
      v28 = xpc_null_create();
    }

    *buf = *a5;
    v34 = "kError";
    sub_10000F688(buf, &v28, &v29);
    xpc_release(v29);
    v29 = 0;
    xpc_release(v28);
    v28 = 0;
  }

  sub_10001021C(&cf);
LABEL_27:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_10144BF50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, xpc_object_t object, char a17, int a18, const void *a19)
{
  sub_10001021C(&a19);
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(a1);
}

void sub_10144BFE4(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v25 = xpc_BOOL_create(0);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  *buf = *a5;
  v24 = "kDidSucceed";
  sub_10000F688(buf, &v25, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v25);
  v25 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v8 = ServiceMap;
  if (v9 < 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  *buf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, buf);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      if (!v15)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
  if (!v15)
  {
LABEL_9:
    sub_100020A1C();
    v17 = qword_101FCAA80;
    if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to get CellBroadcast interface", buf, 2u);
    }

    goto LABEL_19;
  }

LABEL_13:
  value = 0;
  if ((*(*v15 + 56))(v15, &value))
  {
    v20 = xpc_BOOL_create(value);
    if (!v20)
    {
      v20 = xpc_null_create();
    }

    *buf = *a5;
    v24 = "kAutoReadOutEnabled";
    sub_10000F688(buf, &v20, &v21);
    xpc_release(v21);
    v21 = 0;
    xpc_release(v20);
    v20 = 0;
    v18 = xpc_BOOL_create(1);
    if (!v18)
    {
      v18 = xpc_null_create();
    }

    *buf = *a5;
    v24 = "kDidSucceed";
    sub_10000F688(buf, &v18, &v19);
    xpc_release(v19);
    v19 = 0;
    xpc_release(v18);
    v18 = 0;
  }

LABEL_19:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_10144C254(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10144C284(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v27 = xpc_BOOL_create(0);
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  *buf = *a5;
  v26 = "kDidSucceed";
  sub_10000F688(buf, &v27, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v27);
  *buf = a4;
  v26 = "kAutoReadOutEnabled";
  v27 = 0;
  sub_100006354(buf, &v24);
  v9 = xpc::dyn_cast_or_default(&v24, 0, v8);
  xpc_release(v24);
  ServiceMap = Registry::getServiceMap(*a1);
  v11 = ServiceMap;
  if (v12 < 0)
  {
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(ServiceMap);
  *buf = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, buf);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      v19 = 0;
      if (!v18)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  v19 = 1;
  if (!v18)
  {
LABEL_9:
    sub_100020A1C();
    v20 = qword_101FCAA80;
    if (os_log_type_enabled(qword_101FCAA80, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to get CellBroadcast interface", buf, 2u);
    }

    goto LABEL_16;
  }

LABEL_13:
  v21 = (*(*v18 + 64))(v18, v9);
  v22 = xpc_BOOL_create(v21);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  *buf = *a5;
  v26 = "kDidSucceed";
  sub_10000F688(buf, &v22, &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(v22);
  v22 = 0;
LABEL_16:
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }
}

void sub_10144C4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10144C520(void *a1, void *a2, NSObject **a3)
{
  v6 = a1 + 1;
  ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, "carrier.space.ent");
  *v6 = 0;
  v6[1] = 0;
  v7 = *a3;
  a1[3] = *a3;
  if (v7)
  {
    dispatch_retain(v7);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger(&v11, &v13);
  ctu::OsLogLogger::OsLogLogger((a1 + 5), &v11);
  ctu::OsLogLogger::~OsLogLogger(&v11);
  ctu::OsLogContext::~OsLogContext(&v13);
  v12[0] = off_101E2A828;
  v12[1] = sub_10144C828;
  v12[3] = v12;
  a1[6] = 0;
  if ((capabilities::ct::supportsGemini(v8) & 1) == 0)
  {
    operator new();
  }

  if (!a1[6])
  {
    operator new();
  }

  sub_1000A8744(v12);
  *a1 = off_101F3C930;
  a1[7] = *a2;
  v9 = a2[1];
  a1[8] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  a1[9] = 0;
  a1[10] = 0;
  return a1;
}

void sub_10144C76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000A8744(va);
  operator delete();
}

const char *sub_10144C828(int a1)
{
  v1 = "carrier.space.ent.?";
  if (a1 == 2)
  {
    v1 = "carrier.space.ent.2";
  }

  if (a1 == 1)
  {
    return "carrier.space.ent.1";
  }

  else
  {
    return v1;
  }
}

void sub_10144C854(void *a1)
{
  *a1 = off_101F3C930;
  v2 = a1[10];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);

  CarrierSpaceEntitlementsHandlerInterface::~CarrierSpaceEntitlementsHandlerInterface(a1);
}

void sub_10144C900(void *a1)
{
  sub_10144C854(a1);

  operator delete();
}

const void **sub_10144C9D0(uint64_t a1)
{
  *v29 = 0;
  DevicePersistentCopyValue(@"CarrierSpaceUsageInfoKey", 0);
  sub_10000A1EC(v29);
  *v29 = 0;
  DevicePersistentCopyValue(@"CarrierSpacePlansInfoKey", 0);
  if (*v29)
  {
    v2 = *v29;
    v3 = [v2 description];
    v4 = [v3 componentsSeparatedByString:@"\n"];

    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Cached plans :", buf, 2u);
    }

    v7 = 0;
    *&v6 = 136315138;
    v26 = v6;
    while (v7 < [v4 count])
    {
      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v4 objectAtIndexedSubscript:v7];
        v10 = v9;
        v11 = [v9 UTF8String];
        *buf = v26;
        *&buf[4] = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
      }

      ++v7;
    }
  }

  sub_10000A1EC(v29);
  *v29 = 0;
  DevicePersistentCopyValue(@"CarrierSpaceAppsInfoKey", 0);
  if (*v29)
  {
    v12 = *v29;
    v13 = [v12 description];
    v14 = [v13 componentsSeparatedByString:@"\n"];

    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Cached apps :", buf, 2u);
    }

    v17 = 0;
    *&v16 = 136315138;
    v27 = v16;
    while (v17 < [v14 count])
    {
      v18 = *(a1 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v14 objectAtIndexedSubscript:v17];
        v20 = v19;
        v21 = [v19 UTF8String];
        *buf = v27;
        *&buf[4] = v21;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
      }

      ++v17;
    }
  }

  sub_10000A1EC(v29);
  *buf = 0;
  DevicePersistentCopyValue(@"CarrierSpaceBackgroundRefreshIntervalHrsKey", 0);
  sub_100060DE8(buf, v29);
  sub_10000A1EC(v29);
  v22 = *buf;
  if (*buf)
  {
    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      IntValue = CFStringGetIntValue(v22);
      *v29 = 67109120;
      *&v29[4] = IntValue;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Cached background refresh interval : %d hrs", v29, 8u);
    }
  }

  return sub_100005978(buf);
}

void sub_10144CE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

id sub_10144CF20(void *a1, void *a2)
{
  v129 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v98 = a1[5];
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "network usage info is of invalid type", buf, 2u);
    }

    v128 = 0;
    goto LABEL_147;
  }

  v121 = v129;
  v128 = objc_alloc_init(CTCarrierSpaceUsageInfo);
  v126 = [v121 objectForKey:@"account-metrics"];
  if (!v126)
  {
    v99 = a1[5];
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "#I account metrics missing", buf, 2u);
    }

    goto LABEL_138;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v100 = a1[5];
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      v106 = [objc_opt_class() description];
      *buf = 136315138;
      *&buf[4] = [v106 UTF8String];
      _os_log_error_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "account metrics is of invalid type %s", buf, 0xCu);
    }

LABEL_138:
    v101 = 0;
    goto LABEL_146;
  }

  v125 = v126;
  v2 = [v125 count];
  v124 = [NSMutableArray arrayWithCapacity:v2];
  v123 = v2;
  if (!v2)
  {
LABEL_139:
    v102 = v124;
    v101 = v124;
    goto LABEL_145;
  }

  v3 = 0;
  while (1)
  {
    v131 = v3;
    v132 = [v125 objectAtIndexedSubscript:?];
    if (!v132)
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v104 = a1[5];
      if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v104, OS_LOG_TYPE_ERROR, "account metrics array item is of invalid type", buf, 2u);
      }

      goto LABEL_144;
    }

    v137 = v132;
    v136 = objc_alloc_init(CTCarrierSpaceUsageAccountMetrics);
    v4 = [v137 objectForKey:@"network-usage-label"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 length])
    {
      [v136 setNetworkUsageLabel:v4];
    }

    v5 = [v137 objectForKey:@"device-type"];

    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v136 setDeviceType:{objc_msgSend(v5, "integerValue")}];
    }

    v7 = [v137 objectForKey:@"local-device-metrics"];
    [v136 setLocalDevice:{objc_msgSend(v7, "BOOLValue")}];

    v8 = [v137 objectForKey:@"subscription-status"];

    v9 = v8;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 length])
    {
      [v136 setSubscriptionStatus:v8];
    }

    v10 = [v137 objectForKey:@"plan-type"];

    v11 = v10;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 length])
    {
      [v136 setPlanType:v10];
    }

    v12 = [v137 objectForKey:@"billing-cycle-ends-date"];

    v13 = v12;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 length])
    {
      v14 = sub_1011F877C(v12);
      [v136 setBillingCycleEndDate:v14];
    }

    v134 = [v137 objectForKey:@"applicable-plans"];
    if (v134)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v130 = v134;
        v15 = [v130 count];
        v16 = [NSMutableArray arrayWithCapacity:v15];
        v17 = v16;
        v127 = v15;
        if (v15)
        {
          v18 = 0;
          v112 = v16;
          while (1)
          {
            v19 = [v130 objectAtIndexedSubscript:v18];
            if (!v19)
            {
              break;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v97 = a1[5];
              if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "applicable plans array item is of invalid type", buf, 2u);
              }

              goto LABEL_127;
            }

            v20 = v19;
            v21 = objc_alloc_init(CTCarrierSpaceUsagePlanMetrics);
            v22 = [v20 objectForKey:@"plan-label"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v22 length])
            {
              [v21 setPlanLabel:v22];
            }

            v23 = [v20 objectForKey:@"plan-category"];

            v24 = v23;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v21 setPlanCategory:{objc_msgSend(v23, "integerValue")}];
            }

            v25 = [v20 objectForKey:@"current-used-plan"];
            [v21 setCurrentUsedPlan:{objc_msgSend(v25, "BOOLValue")}];

            if ([v21 currentUsedPlan])
            {
              v133 = [v20 objectForKey:@"managed-hours"];
              v26 = a1[10];
              if (v26)
              {
                v122 = std::__shared_weak_count::lock(v26);
                if (v122)
                {
                  v27 = a1[9];
                  if (v27)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v107 = v27;
                      v28 = v133;
                      v149 = 0u;
                      v150 = 0u;
                      v114 = v28;
                      v29 = [v28 objectForKey:@"expiration-date"];
                      v30 = sub_1011F877C(v29);

                      v31 = v30;
                      v32 = *(&v150 + 1);
                      v109 = v31;
                      *(&v150 + 1) = v31;
                      *buf = v32;
                      sub_1003EC530(buf);
                      v117 = [v114 objectForKey:@"time-windows"];
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v147 = 0u;
                        v148 = 0u;
                        v145 = 0u;
                        v146 = 0u;
                        obj = v117;
                        v33 = [obj countByEnumeratingWithState:&v145 objects:buf count:16];
                        if (v33)
                        {
                          v108 = *v146;
                          do
                          {
                            for (i = 0; i != v33; i = i + 1)
                            {
                              if (*v146 != v108)
                              {
                                objc_enumerationMutation(obj);
                              }

                              v111 = *(*(&v145 + 1) + 8 * i);
                              v115 = [obj objectForKeyedSubscript:v107];
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v143 = 0u;
                                v144 = 0u;
                                v141 = 0u;
                                v142 = 0u;
                                v118 = v115;
                                v34 = [v118 countByEnumeratingWithState:&v141 objects:v152 count:16];
                                if (v34)
                                {
                                  v120 = *v142;
                                  v116 = v33;
                                  while (2)
                                  {
                                    v119 = v34;
                                    for (j = 0; j != v119; j = j + 1)
                                    {
                                      if (*v142 != v120)
                                      {
                                        objc_enumerationMutation(v118);
                                      }

                                      v36 = *(*(&v141 + 1) + 8 * j);
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v37 = [v36 objectForKey:@"off-peak-data-type"];
                                        objc_opt_class();
                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                        {
                                          goto LABEL_76;
                                        }

                                        v38 = [v36 objectForKey:@"start-time"];
                                        objc_opt_class();
                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                        {
                                          goto LABEL_75;
                                        }

                                        v39 = [v36 objectForKey:@"end-time"];
                                        objc_opt_class();
                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                        {

LABEL_75:
LABEL_76:

                                          goto LABEL_77;
                                        }

                                        memset(v140, 0, sizeof(v140));
                                        DWORD2(v140[1]) = 7;
                                        v40 = sub_1011F877C(v38);
                                        v41 = *(&v140[0] + 1);
                                        *(&v140[0] + 1) = v40;
                                        v151 = v41;
                                        sub_1003EC530(&v151);
                                        v42 = sub_1011F877C(v39);
                                        v43 = *&v140[1];
                                        *&v140[1] = v42;
                                        v151 = v43;
                                        sub_1003EC530(&v151);
                                        if (*(&v140[0] + 1) && *&v140[1])
                                        {
                                          v44 = [v37 intValue];
                                          if (v44 - 1 >= 3)
                                          {
                                            v45 = 0;
                                          }

                                          else
                                          {
                                            v45 = v44;
                                          }

                                          LODWORD(v140[0]) = v45;
                                          v46 = sub_1011F8A8C(v111);
                                          DWORD2(v140[1]) = v46;
                                          v47 = *(&v149 + 1);
                                          if (*(&v149 + 1) >= v150)
                                          {
                                            v48 = sub_1011EA818(&v149, v140);
                                          }

                                          else
                                          {
                                            **(&v149 + 1) = v140[0];
                                            *(v47 + 8) = 0u;
                                            *(v47 + 8) = *(&v140[0] + 1);
                                            *(v47 + 16) = *&v140[1];
                                            *(v140 + 8) = 0u;
                                            *(v47 + 24) = v46;
                                            v48 = v47 + 32;
                                          }

                                          *(&v149 + 1) = v48;
                                        }

                                        sub_1003EC530(&v140[1]);
                                        sub_1003EC530(v140 + 1);

                                        v33 = v116;
                                      }
                                    }

                                    v34 = [v118 countByEnumeratingWithState:&v141 objects:v152 count:16];
                                    if (v34)
                                    {
                                      continue;
                                    }

                                    break;
                                  }
                                }
                              }
                            }

                            v33 = [obj countByEnumeratingWithState:&v145 objects:buf count:16];
                          }

                          while (v33);
                        }

                        v138 = v149;
                        v49 = v150;
                        v150 = 0uLL;
                        v149 = 0uLL;
                        v139 = v49;
                        (*(*v107 + 40))(v107, &v138);
                        sub_1003EC530(&v139 + 1);
                        *&v140[0] = &v138;
                        sub_101028494(v140);
                      }

                      else
                      {
                        v51 = a1[5];
                        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412290;
                          *&buf[4] = @"time-windows";
                          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I %@ is of unexpected type", buf, 0xCu);
                        }
                      }

LABEL_77:

                      sub_1003EC530(&v150 + 1);
                      *&v140[0] = &v149;
                      v17 = v112;
                      sub_101028494(v140);
                    }

                    else
                    {
                      v50 = a1[5];
                      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        *&buf[4] = @"managed-hours";
                        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I %@ is of unexpected type", buf, 0xCu);
                      }
                    }
                  }

                  sub_100004A34(v122);
                }
              }
            }

            v52 = objc_alloc_init(CTCarrierSpaceUsagePlanItemData);
            [v21 setDataUsage:v52];

            v53 = [v20 objectForKey:@"data-measure-unit"];

            v54 = v53;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v53 length])
            {
              v55 = sub_1011F86D4(v53);
              v56 = [v21 dataUsage];
              [v56 setUnits:v55];
            }

            v57 = [v20 objectForKey:{@"data-capacity", v107}];

            v58 = v57;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v57 length])
            {
              v59 = [v21 dataUsage];
              [v59 setCapacity:v57];
            }

            v60 = [v20 objectForKey:@"max-data-before-throttling"];

            v61 = v60;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v60 length])
            {
              v62 = [v21 dataUsage];
              [v62 setMaxDataBeforeThrottling:v60];
            }

            v63 = [v20 objectForKey:@"data-used"];

            v64 = v63;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v63 length])
            {
              v65 = [v21 dataUsage];
              [v65 setThisDeviceDataUsed:v63];
            }

            v66 = [v20 objectForKey:@"shared-data-used"];

            v67 = v66;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v66 length])
            {
              v68 = [v21 dataUsage];
              [v68 setSharedDataUsed:v66];
            }

            v69 = [v20 objectForKey:@"shared-plan-identifier"];

            v70 = v69;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v69 length])
            {
              v71 = [v21 dataUsage];
              [v71 setSharedPlanIdentifier:v69];
            }

            v72 = objc_alloc_init(CTCarrierSpaceUsagePlanItemMessages);
            [v21 setMessages:v72];

            v73 = [v20 objectForKey:@"messages-capacity"];

            v74 = v73;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v73 length])
            {
              v75 = [v21 messages];
              [v75 setCapacity:v73];
            }

            v76 = [v20 objectForKey:@"messages-used"];

            v77 = v76;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v76 length])
            {
              v78 = [v21 messages];
              [v78 setUsed:v76];
            }

            v79 = objc_alloc_init(CTCarrierSpaceUsagePlanItemVoice);
            [v21 setVoice:v79];

            v80 = [v20 objectForKey:@"voice-minutes-capacity"];

            v81 = v80;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v80 length])
            {
              v82 = [v21 voice];
              [v82 setMinutesCapacity:v80];
            }

            v83 = [v20 objectForKey:@"voice-minutes-used"];

            v84 = v83;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v83 length])
            {
              v85 = [v21 voice];
              [v85 setMinutesUsed:v83];
            }

            v86 = [v20 objectForKey:@"remaining-balance"];

            v87 = v86;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v86 length])
            {
              [v21 setRemainingBalance:v86];
            }

            v88 = [v20 objectForKey:@"throttled"];
            [v21 setThrottled:{objc_msgSend(v88, "BOOLValue")}];

            v89 = [v20 objectForKey:@"last-updated-at"];

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v89 length])
            {
              v90 = sub_1011F877C(v89);
              [v21 setLastUpdatedAt:v90];
            }

            [v17 insertObject:v21 atIndex:v18];

            if (++v18 == v127)
            {
              goto LABEL_117;
            }
          }

          v96 = a1[5];
          if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "#I applicable plans array item is missing", buf, 2u);
          }

LABEL_127:

          v92 = v17;
          v93 = 0;
        }

        else
        {
LABEL_117:
          v91 = v17;
          v92 = v17;
          v93 = v91;
        }

        goto LABEL_129;
      }

      v95 = a1[5];
      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "domestic usage is of invalid type", buf, 2u);
      }
    }

    else
    {
      v94 = a1[5];
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "#I domestic usage is missing", buf, 2u);
      }
    }

    v93 = 0;
LABEL_129:

    [v136 setApplicablePlans:v93];
    [v124 insertObject:v136 atIndex:v131];

    v3 = v131 + 1;
    if ((v131 + 1) == v123)
    {
      goto LABEL_139;
    }
  }

  v103 = a1[5];
  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "#I account metrics array item is missing", buf, 2u);
  }

LABEL_144:

  v101 = 0;
  v102 = v124;
LABEL_145:

LABEL_146:
  [v128 setAccountMetrics:v101];

LABEL_147:

  return v128;
}

void sub_10144E2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, std::__shared_weak_count *a26, uint64_t a27, void *a28, void *a29, void *a30, void *a31, uint64_t a32, void *a33, void *a34, void *a35, uint64_t a36, void *a37, void *a38, void *a39, uint64_t a40, void *a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_101022E8C(&a65);

  sub_100004A34(a26);
  _Unwind_Resume(a1);
}

id sub_10144E5E4(uint64_t a1, void *a2)
{
  v53 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v37 = *(a1 + 40);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v45 = [objc_opt_class() description];
      *buf = 136315138;
      v61 = [v45 UTF8String];
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "carrier plans info is of invalid type %s", buf, 0xCu);
    }

    v54 = 0;
    goto LABEL_86;
  }

  v48 = v53;
  v54 = objc_alloc_init(CTCarrierSpacePlansInfo);
  v49 = a1;
  v50 = [v48 objectForKey:@"plans-list"];
  if (!v50)
  {
    v38 = *(a1 + 40);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I plan group options info is missing", buf, 2u);
    }

    goto LABEL_74;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v39 = *(a1 + 40);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "plan group options is of invalid type", buf, 2u);
    }

LABEL_74:
    v40 = 0;
    goto LABEL_82;
  }

  v47 = v50;
  v3 = [v47 count];
  v4 = [NSMutableArray arrayWithCapacity:v3];
  v5 = v4;
  v46 = v3;
  if (!v3)
  {
LABEL_75:
    v40 = v5;
    goto LABEL_81;
  }

  v6 = 0;
  v51 = v4;
  while (1)
  {
    v7 = [v47 objectAtIndexedSubscript:v6];
    if (!v7)
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v42 = *(v49 + 40);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "plan group info item is of invalid type", buf, 2u);
      }

      goto LABEL_80;
    }

    v8 = v7;
    v59 = objc_alloc_init(CTCarrierSpacePlanGroupInfo);
    v57 = [v8 objectForKey:@"plan-category"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v59 setPlanCategory:{objc_msgSend(v57, "integerValue")}];
    }

    v58 = [v8 objectForKey:@"plan-group-options"];
    if (v58)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v56 = v58;
        v9 = [v56 count];
        v55 = [NSMutableArray arrayWithCapacity:v9];
        v52 = v9;
        if (v9)
        {
          v10 = 0;
          while (1)
          {
            v11 = [v56 objectAtIndexedSubscript:v10];
            if (!v11)
            {
              break;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v36 = *(v49 + 40);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "plan group info item is of invalid type", buf, 2u);
              }

              goto LABEL_63;
            }

            v12 = v11;
            v13 = objc_alloc_init(CTCarrierSpacePlanGroupOptionInfo);
            v14 = [v12 objectForKey:@"plan-id"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 length])
            {
              [v13 setPlanId:v14];
            }

            v15 = [v12 objectForKey:@"plan-label"];

            v16 = v15;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v15 length])
            {
              [v13 setPlanLabel:v15];
            }

            v17 = [v12 objectForKey:@"plan-value"];

            v18 = v17;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v17 length])
            {
              [v13 setPlanValue:v17];
            }

            v19 = [v12 objectForKey:@"plan-subscribed"];

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v19 length])
            {
              v20 = v19;
              if ([v20 isEqualToString:@"subscribed"])
              {
                v21 = 0;
              }

              else if ([v20 isEqualToString:@"in-progress"])
              {
                v21 = 2;
              }

              else if ([v20 isEqualToString:@"not-subscribed"])
              {
                v21 = 1;
              }

              else
              {
                v21 = 3;
              }

              [v13 setPlanSubscriptionStatus:v21];
            }

            v22 = [v12 objectForKey:@"plan-purchasable"];
            [v13 setPlanPurchasable:{objc_msgSend(v22, "BOOLValue")}];

            v23 = [v12 objectForKey:@"plan-details-url"];

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v23 length])
            {
              [v13 setPlanDetailsURL:v23];
            }

            v24 = [v12 objectForKey:@"plan-termcond-url"];

            v25 = v24;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v24 length])
            {
              [v13 setPlanTermsURL:v24];
            }

            v26 = [v12 objectForKey:@"plan-purchase-url"];

            v27 = v26;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v26 length])
            {
              [v13 setPlanPurchaseURL:v26];
            }

            v28 = [v12 objectForKey:@"plan-type"];

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v28 length])
            {
              v29 = v28;
              if ([v29 isEqualToString:@"prepaid"])
              {
                v30 = 1;
              }

              else if ([v29 isEqualToString:@"postpaid"])
              {
                v30 = 2;
              }

              else
              {
                v30 = 0;
              }

              [v13 setPlanType:v30];
            }

            [v55 insertObject:v13 atIndex:v10];

            if (v52 == ++v10)
            {
              goto LABEL_53;
            }
          }

          v35 = *(v49 + 40);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I plan group info item is missing", buf, 2u);
          }

LABEL_63:

          v32 = 0;
          v31 = v55;
        }

        else
        {
LABEL_53:
          v31 = v55;
          v32 = v55;
        }

        goto LABEL_65;
      }

      v34 = *(v49 + 40);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "plan group options is of invalid type", buf, 2u);
      }
    }

    else
    {
      v33 = *(v49 + 40);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I plan group options info is missing", buf, 2u);
      }
    }

    v32 = 0;
LABEL_65:

    [v59 setGroupOptionsList:v32];
    [v51 insertObject:v59 atIndex:v6];

    ++v6;
    v5 = v51;
    if (v6 == v46)
    {
      goto LABEL_75;
    }
  }

  v41 = *(v49 + 40);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I plan group info item is missing", buf, 2u);
  }

LABEL_80:

  v40 = 0;
  v5 = v51;
LABEL_81:

LABEL_82:
  [v54 setPlanGroupsList:v40];

  v43 = [v48 objectForKey:@"more-plans-url"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v43 length])
  {
    [v54 setMorePlansURL:v43];
  }

LABEL_86:

  return v54;
}

id sub_10144F15C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v25 = [objc_opt_class() description];
      *__p = 136315138;
      *&__p[4] = [v25 UTF8String];
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "carrier apps info is of invalid type %s", __p, 0xCu);
    }

    v28 = 0;
    goto LABEL_35;
  }

  v27 = v5;
  v28 = objc_alloc_init(CTCarrierSpaceAppsInfo);
  v6 = [v27 objectForKey:@"apps-list"];
  if (!v6)
  {
    v17 = *(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I apps list is missing", __p, 2u);
    }

    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = *(a1 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "apps list is of invalid type", __p, 2u);
    }

LABEL_23:
    v19 = 0;
    goto LABEL_31;
  }

  v7 = v6;
  v8 = [v7 count];
  v26 = [NSMutableArray arrayWithCapacity:v8];
  if (!v8)
  {
LABEL_24:
    v20 = v26;
    v19 = v26;
    goto LABEL_30;
  }

  v9 = 0;
  while (1)
  {
    v10 = [v7 objectAtIndexedSubscript:v9];
    if (!v10)
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = *(a1 + 40);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "app ID item is of invalid type", buf, 2u);
      }

      goto LABEL_29;
    }

    v11 = v10;
    v12 = v11;
    sub_10000501C(__p, [v11 UTF8String]);
    v13 = sub_1011F8800((a1 + 56), a2, __p);
    v14 = v13;
    if (v31 < 0)
    {
      operator delete(*__p);
      if ((v14 & 1) == 0)
      {
LABEL_12:
        v15 = *(a1 + 40);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Team ID is not identified", buf, 2u);
        }

        goto LABEL_14;
      }
    }

    else if ((v13 & 1) == 0)
    {
      goto LABEL_12;
    }

    [v26 insertObject:v11 atIndex:v9];
LABEL_14:

    if (v8 == ++v9)
    {
      goto LABEL_24;
    }
  }

  v21 = *(a1 + 40);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I app ID item is missing", buf, 2u);
  }

LABEL_29:

  v19 = 0;
  v20 = v26;
LABEL_30:

LABEL_31:
  [v28 setAppsList:v19];

  v23 = [v27 valueForKey:@"apps-url"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v23 length])
  {
    [v28 setAppsURL:v23];
  }

LABEL_35:

  return v28;
}

void sub_10144FB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v11);
  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_10144FBBC()
{
  DevicePersistentSaveValue(@"CarrierSpaceUsageInfoKey", 0);
  DevicePersistentSaveValue(@"CarrierSpacePlansInfoKey", 0);
  DevicePersistentSaveValue(@"CarrierSpaceAppsInfoKey", 0);

  return DevicePersistentSaveValue(@"CarrierSpaceBackgroundRefreshIntervalHrsKey", 0);
}

void sub_10144FC1C(void *a1, int a2, char a3, int a4)
{
  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10144FD20(void *a1, uint64_t a2, id **a3)
{
  if (!*a3)
  {
    v3 = a1[5];
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v4 = "getCarrierSpaceUpdates - response pointer is invalid";
    goto LABEL_8;
  }

  if (**a3)
  {
    operator new();
  }

  v3 = a1[5];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v4 = "getCarrierSpaceUpdates - result body missing";
LABEL_8:
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, v4, buf, 2u);
  }
}

void sub_101450684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100004A34(v16);

  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

void sub_101450758(uint64_t a1, id *a2)
{
  if (*a2)
  {
    v30 = *a2;
    v32 = [v30 objectForKeyedSubscript:@"trigger-actions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v32;
      v4 = 0;
      v5 = 0;
      while (v4 < [v3 count])
      {
        v6 = [v3 objectAtIndexedSubscript:v4];
        v7 = [v6 isEqualToString:@"network-usage-update"];
        v8 = [v6 isEqualToString:@"carrier-plans-update"];
        v9 = [v6 isEqualToString:@"carrier-apps-update"];
        v10 = v5 | v7;
        if (v8)
        {
          v10 = v5 | v7 | 2;
        }

        if (v9)
        {
          v5 = v10 | 4;
        }

        else
        {
          v5 = v10;
        }

        ++v4;
      }

      v11 = *(a1 + 80);
      if (v11)
      {
        v12 = std::__shared_weak_count::lock(v11);
        if (v12)
        {
          v13 = v12;
          v14 = *(a1 + 72);
          if (v14)
          {
            (*(*v14 + 24))(v14, v5);
          }

          sub_100004A34(v13);
        }
      }
    }

    v31 = [v30 objectForKeyedSubscript:@"plan-purchase-status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v31;
      v16 = *(a1 + 80);
      if (v16)
      {
        v17 = std::__shared_weak_count::lock(v16);
        if (v17)
        {
          v28 = v17;
          v29 = v15;
          v18 = *(a1 + 72);
          if (v18)
          {
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v19 = v15;
            v20 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:{16, v28}];
            if (v20)
            {
              v21 = *v36;
              do
              {
                for (i = 0; i != v20; i = i + 1)
                {
                  if (*v36 != v21)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v23 = *(*(&v35 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v24 = v23;
                    v25 = [v24 objectForKeyedSubscript:@"plan-id"];
                    v26 = [v24 objectForKeyedSubscript:@"status"];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v27 = v25;
                        sub_10000501C(__p, [v25 UTF8String]);
                        (*(*v18 + 32))(v18, __p, [v26 intValue]);
                        if (v34 < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }
                    }
                  }
                }

                v20 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
              }

              while (v20);
            }
          }

          sub_100004A34(v28);
          v15 = v29;
        }
      }
    }
  }
}

void sub_101450B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_100004A34(v20);

  _Unwind_Resume(a1);
}

void sub_101450C14(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v29 = 0;
  v30 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  *buf = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, buf);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v18 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
LABEL_9:
  (*(*v17 + 8))(&v29, v17, a2);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  if (v29)
  {
    v19 = [[NSString alloc] initWithBytes:*a3 length:a3[1] - *a3 encoding:4];
    v32[0] = @"oauth-access-token";
    v32[1] = @"carrier-plans";
    v33[0] = v19;
    v20 = objc_alloc_init(NSMutableDictionary);
    if (*(a4 + 23) >= 0)
    {
      v21 = a4;
    }

    else
    {
      v21 = *a4;
    }

    v22 = [NSString stringWithUTF8String:v21];
    [v20 setValue:v22 forKey:@"plan-id"];

    v31 = v20;
    v23 = [NSArray arrayWithObjects:&v31 count:1];
    v33[1] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];

    *buf = 0;
    v28 = 0;
    v26 = v24;
    sub_1002A2218(buf, &v26);
    (*(*v29 + 384))(v29, 0);
    (*(*v29 + 144))(v29, buf);
    sub_10000A1EC(&v28);
    sub_10001021C(buf);
  }

  else
  {
    v25 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not get handle to entitlements controller", buf, 2u);
    }
  }

  if (v30)
  {
    sub_100004A34(v30);
  }
}

void sub_101450F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_10000A1EC(&a12);
  sub_10001021C(&a11);

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(a1);
}

void sub_101450FEC(uint64_t a1@<X0>, int a2@<W1>, int **a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 == 3)
  {
    v48 = 5;
    v49[0] = 0;
    v49[1] = 0;
    v50 = 0;
    v5 = **a3;
    switch(v5)
    {
      case 6011:
        v29 = 1;
        break;
      case 6002:
        v29 = 4;
        break;
      case 6000:
        v6 = *(*a3 + 3);
        if (v6)
        {
          if (*v6)
          {
            LOBYTE(v48) = 0;
            sub_100010024(&v44, v6);
            if (v44)
            {
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v41 = v44;
              v43 = [v41 objectForKeyedSubscript:@"carrier-plans"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v55 = 0u;
                v56 = 0u;
                v53 = 0u;
                v54 = 0u;
                v7 = v43;
                v42 = v7;
                v8 = [v7 countByEnumeratingWithState:&v53 objects:buf count:16];
                if (v8)
                {
                  v9 = 0;
                  v10 = *v54;
                  for (i = *v54; ; i = *v54)
                  {
                    if (i != v10)
                    {
                      objc_enumerationMutation(v7);
                    }

                    v12 = *(*(&v53 + 1) + 8 * v9);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v13 = [v12 objectForKeyedSubscript:@"plan-id"];
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v14 = [v12 objectForKeyedSubscript:@"status"];
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          *__p = 0u;
                          v52 = 0u;
                          BYTE8(v52) = [v14 intValue];
                          v15 = v13;
                          sub_100016890(__p, [v13 UTF8String]);
                          v16 = v58;
                          if (v58 >= v59)
                          {
                            v18 = v57;
                            v19 = (v58 - v57) >> 5;
                            v20 = v19 + 1;
                            if ((v19 + 1) >> 59)
                            {
                              sub_1000CE3D4();
                            }

                            v21 = v59 - v57;
                            if ((v59 - v57) >> 4 > v20)
                            {
                              v20 = v21 >> 4;
                            }

                            if (v21 >= 0x7FFFFFFFFFFFFFE0)
                            {
                              v20 = 0x7FFFFFFFFFFFFFFLL;
                            }

                            if (v20)
                            {
                              if (!(v20 >> 59))
                              {
                                operator new();
                              }

                              sub_100013D10();
                            }

                            v22 = (v58 - v57) >> 5;
                            v23 = 32 * v19;
                            *v23 = *__p;
                            *(v23 + 16) = v52;
                            __p[1] = 0;
                            *&v52 = 0;
                            __p[0] = 0;
                            *(v23 + 24) = BYTE8(v52);
                            v24 = v23 - 32 * v22;
                            if (v18 != v16)
                            {
                              v25 = v18;
                              v40 = v24;
                              do
                              {
                                v26 = *v25;
                                *(v24 + 16) = *(v25 + 2);
                                *v24 = v26;
                                *(v25 + 1) = 0;
                                *(v25 + 2) = 0;
                                *v25 = 0;
                                *(v24 + 24) = v25[24];
                                v25 += 32;
                                v24 += 32;
                              }

                              while (v25 != v16);
                              do
                              {
                                if (v18[23] < 0)
                                {
                                  operator delete(*v18);
                                }

                                v18 += 32;
                              }

                              while (v18 != v16);
                              v18 = v57;
                              v24 = v40;
                            }

                            v57 = v24;
                            v58 = (v23 + 32);
                            v59 = 0;
                            if (v18)
                            {
                              operator delete(v18);
                            }

                            v58 = (v23 + 32);
                            if (SBYTE7(v52) < 0)
                            {
                              operator delete(__p[0]);
                            }
                          }

                          else
                          {
                            v17 = *__p;
                            *(v58 + 2) = v52;
                            *v16 = v17;
                            __p[1] = 0;
                            *&v52 = 0;
                            __p[0] = 0;
                            v16[24] = BYTE8(v52);
                            v58 = v16 + 32;
                          }

                          v7 = v42;
                        }
                      }
                    }

                    if (++v9 >= v8)
                    {
                      v8 = [v7 countByEnumeratingWithState:&v53 objects:buf count:16];
                      if (!v8)
                      {
                        break;
                      }

                      v9 = 0;
                    }
                  }
                }

                v34 = v57;
                v33 = v58;
                v45 = v57;
                v46 = v58;
                v32 = v59;
                v47 = v59;
                v35 = &v57;
              }

              else
              {
                v32 = 0;
                v33 = 0;
                v34 = 0;
                v35 = &v45;
              }

              *v35 = 0;
              v35[1] = 0;
              v35[2] = 0;

              __p[0] = &v57;
              sub_10003CA58(__p);
            }

            else
            {
              v32 = 0;
              v33 = 0;
              v34 = 0;
            }

            v36 = v49[0];
            if (v49[0])
            {
              v37 = v49[1];
              v38 = v49[0];
              if (v49[1] != v49[0])
              {
                do
                {
                  v39 = *(v37 - 9);
                  v37 -= 4;
                  if (v39 < 0)
                  {
                    operator delete(*v37);
                  }
                }

                while (v37 != v36);
                v38 = v49[0];
              }

              v49[1] = v36;
              operator delete(v38);
            }

            v49[0] = v34;
            v49[1] = v33;
            v50 = v32;
            v46 = 0;
            v47 = 0;
            v45 = 0;
            *buf = &v45;
            sub_10003CA58(buf);
            sub_10001021C(&v44);
            *a4 = v48;
            *(a4 + 8) = *v49;
            *(a4 + 24) = v50;
            v49[1] = 0;
            v50 = 0;
            v49[0] = 0;
            goto LABEL_57;
          }

          v30 = *(a1 + 40);
          if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_55;
          }

          *buf = 0;
          v31 = "#N Received success status with no response body";
        }

        else
        {
          v30 = *(a1 + 40);
          if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
LABEL_55:
            v29 = 2;
            break;
          }

          *buf = 0;
          v31 = "#N Received invalid arguments in update account response";
        }

        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v31, buf, 2u);
        goto LABEL_55;
      default:
        v29 = 3;
        break;
    }

    *a4 = v29;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 8) = 0;
LABEL_57:
    *buf = v49;
    sub_10003CA58(buf);
    return;
  }

  v28 = *(a1 + 40);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = sub_100A38E30(a2);
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#N Received error in update account response: %s", buf, 0xCu);
  }

  *a4 = 3;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
}

void sub_1014515E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char *a11, uint64_t a12, void *a13, void *a14, const void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  __p = &a39;
  sub_10003CA58(&__p);
  sub_10001021C(&a15);
  __p = a11;
  sub_10003CA58(&__p);
  _Unwind_Resume(a1);
}

void sub_101451774(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_101451848);
  __cxa_rethrow();
}

void sub_1014517B4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101451808(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101451848(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_101451894(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3CAF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014518E8(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[4];
  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_101451974(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3CB48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014519F4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3CB98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101451A74(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3CBE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101451AD4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(*a1 + 4));
  v22 = 0;
  v23 = 0;
  ServiceMap = Registry::getServiceMap(*(v2 + 56));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (v10)
  {
    v11 = v10[3];
    v12 = v10[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v5);
  v12 = 0;
  v13 = 1;
LABEL_9:
  (*(*v11 + 8))(&v22, v11, *(v1 + 4));
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (v22)
  {
    v14 = +[NSMutableDictionary dictionary];
    v15 = +[NSMutableArray array];
    v16 = v15;
    v17 = *(v1 + 8);
    if (v17)
    {
      [v15 addObject:@"network-usage"];
      v17 = *(v1 + 8);
    }

    if ((v17 & 2) != 0)
    {
      [v16 addObject:@"carrier-plans"];
      v17 = *(v1 + 8);
    }

    if ((v17 & 4) != 0)
    {
      [v16 addObject:@"carrier-apps"];
    }

    [v14 setObject:v16 forKey:@"sub-actions"];
    *buf = 0;
    v21 = 0;
    v19 = v14;
    v24 = 0;
    sub_100010180(&v24, &v19);
    *buf = v24;
    v24 = 0;
    sub_10001021C(&v24);
    if (*(v1 + 3) == 1)
    {
      (*(*v22 + 384))(v22, 0);
    }

    (*(*v22 + 136))(v22, buf);
    sub_10000A1EC(&v21);
    sub_10001021C(buf);
  }

  else
  {
    v18 = *v3;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#N Could not get handle to entitlements controller", buf, 2u);
    }
  }

  if (v23)
  {
    sub_100004A34(v23);
  }

  operator delete();
}

void sub_101451DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_10000A1EC(&a12);
  sub_10001021C(&a11);

  if (a15)
  {
    sub_100004A34(a15);
  }

  operator delete();
}

void sub_101451E7C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3CC38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101451EDC(uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  operator new();
}

void sub_10145250C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, dispatch_object_t object, dispatch_object_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_1001A8F78(&a16, a17);
  v30 = a14[13];
  if (v30)
  {
    sub_100004A34(v30);
  }

  v31 = a14[11];
  if (v31)
  {
    sub_100004A34(v31);
  }

  v32 = a14[9];
  if (v32)
  {
    sub_100004A34(v32);
  }

  v33 = a14[7];
  if (v33)
  {
    sub_100004A34(v33);
  }

  ctu::OsLogLogger::~OsLogLogger((a14 + 5));
  sub_1000C0544(a13);
  CTXPCSubscriptionManagerInterface::~CTXPCSubscriptionManagerInterface(a14);
  operator delete();
}

uint64_t sub_1014527A4(uint64_t a1)
{
  v2 = (a1 + 32);
  v4 = (a1 + 56);
  sub_1001A8E64(&v4);
  v4 = v2;
  sub_1001A8E64(&v4);
  return sub_101454200(a1);
}

uint64_t sub_1014527F4(uint64_t a1)
{
  sub_1001A8F78(a1 + 32, *(a1 + 40));

  return sub_101454280(a1);
}

void sub_101452834(uint64_t a1)
{
  *a1 = off_101F3CC88;
  if (*(a1 + 440) == 1)
  {
    sub_1001704B0(a1 + 416, *(a1 + 424));
  }

  PersonalitiesTracker::~PersonalitiesTracker((a1 + 248));
  sub_1014527A4(a1 + 168);
  sub_1001A8F78(a1 + 144, *(a1 + 152));
  sub_101454280(a1 + 112);
  v2 = *(a1 + 104);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  CTXPCSubscriptionManagerInterface::~CTXPCSubscriptionManagerInterface(a1);
}

void sub_101452904(uint64_t a1)
{
  sub_101452834(a1);

  operator delete();
}

void sub_10145293C(void *a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101452A3C(uint64_t a1, char *a2, char a3)
{
  if ((a3 & 1) != 0 || *(*(a1 + 400) + 24) == 1)
  {
    v5 = (a1 + 144);
    v6 = *(a1 + 144);
    *(&v97 + 1) = 0;
    *&v98[0] = 0;
    *&v97 = &v97 + 8;
    v7 = (a1 + 152);
    if (v6 != (a1 + 152))
    {
      v8 = 0;
      v9 = (&v97 + 8);
      while (1)
      {
        v10 = *(v6 + 8);
        v11 = &v97 + 8;
        if (v9 == (&v97 + 8))
        {
          goto LABEL_267;
        }

        v12 = v8;
        v13 = &v97 + 8;
        if (v8)
        {
          do
          {
            v11 = v12;
            v12 = *(v12 + 1);
          }

          while (v12);
        }

        else
        {
          do
          {
            v11 = *(v13 + 2);
            v69 = *v11 == v13;
            v13 = v11;
          }

          while (v69);
        }

        if (*(v11 + 8) < v10)
        {
LABEL_267:
          if (v8)
          {
            v14 = v11;
          }

          else
          {
            v14 = &v97;
          }

          if (!*(v14 + 1))
          {
LABEL_22:
            memset(__str, 0, 24);
            sub_101454300(__str, &v97, (v6 + 4));
          }
        }

        else
        {
          if (!v8)
          {
            goto LABEL_22;
          }

          while (1)
          {
            while (1)
            {
              v15 = v8;
              v16 = *(v8 + 8);
              if (v16 <= v10)
              {
                break;
              }

              v8 = *v15;
              if (!*v15)
              {
                goto LABEL_22;
              }
            }

            if (v16 >= v10)
            {
              break;
            }

            v8 = *(v15 + 1);
            if (!v8)
            {
              goto LABEL_22;
            }
          }
        }

        v17 = v6[1];
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
            v18 = v6[2];
            v69 = *v18 == v6;
            v6 = v18;
          }

          while (!v69);
        }

        if (v18 == v7)
        {
          break;
        }

        v8 = *(&v97 + 1);
        v9 = v97;
        v6 = v18;
      }

      v19 = v97;
      if (v97 != (&v97 + 8))
      {
        while (1)
        {
          v20 = *(a1 + 400);
          v21 = *v20;
          v22 = v20[1];
          if (v21 != v22)
          {
            while ((*v21)[2].__r_.__value_.__s.__data_[1] || HIDWORD((*v21)[2].__r_.__value_.__r.__words[0]) != *(v19 + 8))
            {
              v21 += 2;
              if (v21 == v22)
              {
                goto LABEL_47;
              }
            }
          }

          if (v21 == v22)
          {
            break;
          }

          v24 = *v21;
          v23 = v21[1];
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (!v24 || !v24[2].__r_.__value_.__s.__data_[16] || (v24[2].__r_.__value_.__s.__data_[17] & 1) != 0 || !isReal())
          {
            goto LABEL_48;
          }

          v25 = v24[2].__r_.__value_.__s.__data_[18];
          std::string::operator=((v19 + 232), v24 + 1);
          if (*(*(a1 + 400) + 24) == 1)
          {
            *(v19 + 256) = v24[2].__r_.__value_.__s.__data_[16] == 2;
            *(v19 + 257) = (v25 & 1) == 0;
          }

          if (v24[2].__r_.__value_.__s.__data_[14])
          {
            v26 = 1;
            v27 = 1;
          }

          else
          {
            v26 = v24[2].__r_.__value_.__s.__data_[15];
            v27 = v24[4].__r_.__value_.__s.__data_[0] | v26;
          }

          *(v19 + 258) = v26;
          *(v19 + 259) = v27 & 1;
          if (!v23)
          {
            goto LABEL_52;
          }

LABEL_51:
          sub_100004A34(v23);
LABEL_52:
          v28 = *(v19 + 1);
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
              v29 = *(v19 + 2);
              v69 = *v29 == v19;
              v19 = v29;
            }

            while (!v69);
          }

          v19 = v29;
          if (v29 == (&v97 + 8))
          {
            goto LABEL_62;
          }
        }

LABEL_47:
        v23 = 0;
LABEL_48:
        memset(__str, 0, 24);
        std::string::operator=((v19 + 232), __str);
        if ((__str[23] & 0x80000000) != 0)
        {
          operator delete(*__str);
        }

        *(v19 + 64) = 256;
        if (!v23)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }
    }

LABEL_62:
    v30 = *(a1 + 448);
    isValidSimSlot = subscriber::isValidSimSlot();
    v32 = v97;
    if (v97 != (&v97 + 8))
    {
      v33 = isValidSimSlot;
      do
      {
        isValidSimSlot = capabilities::ct::supportsCellRadio(isValidSimSlot);
        v34 = isValidSimSlot ^ 1;
        if (*(v32 + 8) == v30)
        {
          v35 = 2;
        }

        else
        {
          v35 = 1;
        }

        if ((isValidSimSlot & v33) != 0)
        {
          v34 = v35;
        }

        *(v32 + 56) = v34;
        v36 = *(v32 + 1);
        if (v36)
        {
          do
          {
            v37 = v36;
            v36 = *v36;
          }

          while (v36);
        }

        else
        {
          do
          {
            v37 = *(v32 + 2);
            v69 = *v37 == v32;
            v32 = v37;
          }

          while (!v69);
        }

        v32 = v37;
      }

      while (v37 != (&v97 + 8));
    }

    v38 = *(a1 + 452);
    v39 = subscriber::isValidSimSlot();
    v40 = v97;
    if (v97 != (&v97 + 8))
    {
      v41 = v39;
      do
      {
        v39 = capabilities::ct::supportsVoiceCall(v39);
        v42 = v39 ^ 1;
        if (*(v40 + 8) == v38)
        {
          v43 = 2;
        }

        else
        {
          v43 = 1;
        }

        if ((v39 & v41) != 0)
        {
          v42 = v43;
        }

        *(v40 + 57) = v42;
        v44 = *(v40 + 1);
        if (v44)
        {
          do
          {
            v45 = v44;
            v44 = *v44;
          }

          while (v44);
        }

        else
        {
          do
          {
            v45 = *(v40 + 2);
            v69 = *v45 == v40;
            v40 = v45;
          }

          while (!v69);
        }

        v40 = v45;
      }

      while (v45 != (&v97 + 8));
      v40 = v97;
    }

    if (v40 != (&v97 + 8))
    {
      do
      {
        v100 = 0u;
        memset(v101, 0, 25);
        memset(__str, 0, sizeof(__str));
        *v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        *__p = 0u;
        *&v106 = 0;
        std::string::operator=(v40 + 2, __str);
        std::string::operator=(v40 + 3, &__str[24]);
        std::string::operator=(v40 + 4, v101);
        *(v40 + 120) = v101[24];
        std::string::operator=((v40 + 8), v102);
        std::string::operator=((v40 + 152), (&v103 + 8));
        std::string::operator=((v40 + 11), __p);
        if (SBYTE7(v106) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v104) < 0)
        {
          operator delete(*(&v103 + 1));
        }

        if (SBYTE7(v103) < 0)
        {
          operator delete(v102[0]);
        }

        if ((v101[23] & 0x80000000) != 0)
        {
          operator delete(*v101);
        }

        if (SHIBYTE(v100) < 0)
        {
          operator delete(*&__str[24]);
        }

        if ((__str[23] & 0x80000000) != 0)
        {
          operator delete(*__str);
        }

        v46 = *(a1 + 400);
        v47 = *v46;
        v48 = *(v46 + 8);
        if (v47 != v48)
        {
          while (*(*v47 + 49) || *(*v47 + 52) != *(v40 + 8))
          {
            v47 += 2;
            if (v47 == v48)
            {
              goto LABEL_128;
            }
          }
        }

        if (v47 != v48)
        {
          v49 = *v47;
          v50 = v47[1];
          if (v50)
          {
            atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v49 && *(v49 + 64) && (*(v49 + 65) & 1) == 0 && isReal())
          {
            (*(**(a1 + 96) + 184))(__str);
            std::string::operator=(v40 + 2, __str);
            std::string::operator=(v40 + 3, &__str[24]);
            std::string::operator=(v40 + 4, v101);
            *(v40 + 120) = v101[24];
            std::string::operator=((v40 + 8), v102);
            std::string::operator=((v40 + 152), (&v103 + 8));
            std::string::operator=((v40 + 11), __p);
            if (SBYTE7(v106) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v104) < 0)
            {
              operator delete(*(&v103 + 1));
            }

            if (SBYTE7(v103) < 0)
            {
              operator delete(v102[0]);
            }

            if ((v101[23] & 0x80000000) != 0)
            {
              operator delete(*v101);
            }

            if (SHIBYTE(v100) < 0)
            {
              operator delete(*&__str[24]);
            }

            if ((__str[23] & 0x80000000) != 0)
            {
              operator delete(*__str);
            }
          }

          if (v50)
          {
            sub_100004A34(v50);
          }
        }

LABEL_128:
        v51 = *(v40 + 1);
        if (v51)
        {
          do
          {
            v52 = v51;
            v51 = *v51;
          }

          while (v51);
        }

        else
        {
          do
          {
            v52 = *(v40 + 2);
            v69 = *v52 == v40;
            v40 = v52;
          }

          while (!v69);
        }

        v40 = v52;
      }

      while (v52 != (&v97 + 8));
    }

    if (rest::operator!=())
    {
      if (v5 != &v97)
      {
        v53 = v97;
        if (*(a1 + 160))
        {
          v54 = *v5;
          *v5 = v7;
          (*v7)[2] = 0;
          *v7 = 0;
          *(a1 + 160) = 0;
          if (*(v54 + 8))
          {
            v55 = *(v54 + 8);
          }

          else
          {
            v55 = v54;
          }

          *__str = a1 + 144;
          *&__str[8] = v55;
          *&__str[16] = v55;
          if (!v55 || (*&__str[8] = sub_1000685CC(v55), v53 == (&v97 + 8)))
          {
            v60 = v53;
          }

          else
          {
            do
            {
              *(v55 + 32) = *(v53 + 8);
              *(v55 + 40) = *(v53 + 10);
              std::string::operator=((v55 + 48), v53 + 2);
              std::string::operator=((v55 + 72), v53 + 3);
              std::string::operator=((v55 + 96), v53 + 4);
              *(v55 + 120) = *(v53 + 120);
              std::string::operator=((v55 + 128), (v53 + 8));
              std::string::operator=((v55 + 152), (v53 + 152));
              std::string::operator=((v55 + 176), (v53 + 11));
              std::string::operator=((v55 + 200), (v53 + 200));
              *(v55 + 224) = *(v53 + 28);
              std::string::operator=((v55 + 232), (v53 + 232));
              *(v55 + 256) = *(v53 + 64);
              v56 = *v7;
              v57 = (a1 + 152);
              v58 = (a1 + 152);
              if (*v7)
              {
                do
                {
                  while (1)
                  {
                    v57 = v56;
                    if (*(*&__str[16] + 32) >= *(v56 + 8))
                    {
                      break;
                    }

                    v56 = *v56;
                    v58 = v57;
                    if (!*v57)
                    {
                      goto LABEL_148;
                    }
                  }

                  v56 = v56[1];
                }

                while (v56);
                v58 = v57 + 1;
              }

LABEL_148:
              sub_1000070DC((a1 + 144), v57, v58, *&__str[16]);
              v55 = *&__str[8];
              *&__str[16] = *&__str[8];
              if (*&__str[8])
              {
                *&__str[8] = sub_1000685CC(*&__str[8]);
              }

              v59 = *(v53 + 1);
              if (v59)
              {
                do
                {
                  v60 = v59;
                  v59 = *v59;
                }

                while (v59);
              }

              else
              {
                do
                {
                  v60 = *(v53 + 2);
                  v69 = *v60 == v53;
                  v53 = v60;
                }

                while (!v69);
              }

              if (!v55)
              {
                break;
              }

              v53 = v60;
            }

            while (v60 != (&v97 + 8));
          }

          sub_101456008(__str);
          v53 = v60;
        }

        if (v53 != (&v97 + 8))
        {
          memset(__str, 0, 24);
          sub_101454300(__str, a1 + 144, (v53 + 2));
        }
      }

      v61 = *(a1 + 136);
      if (v61)
      {
        (*(*v61 + 48))(v61, a1 + 144);
      }

      v62 = *(a1 + 40);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *__str = 136315394;
        *&__str[4] = a2;
        *&__str[12] = 2048;
        *&__str[14] = *&v98[0];
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#I Subscription info updated (%s), size: %zu", __str, 0x16u);
      }

      sub_101453B8C(a1);
    }

    sub_1001A8F78(&v97, *(&v97 + 1));
    if (a3 & 1) != 0 || (*(*(a1 + 400) + 24))
    {
      goto LABEL_170;
    }
  }

  if (capabilities::ct::supportsThumperService(a1))
  {
LABEL_170:
    memset(v98, 0, sizeof(v98));
    v97 = 0u;
    v63 = *(a1 + 400);
    v64 = *v63;
    v65 = v63[1];
    if (*v63 == v65)
    {
LABEL_201:
      v73 = *(a1 + 448);
      v74 = subscriber::isValidSimSlot();
      v76 = *(&v97 + 1);
      v75 = v97;
      if (v97 != *(&v97 + 1))
      {
        v77 = v74;
        do
        {
          v74 = capabilities::ct::supportsCellRadio(v74);
          v78 = v74 ^ 1;
          if (*v75 == v73)
          {
            v79 = 2;
          }

          else
          {
            v79 = 1;
          }

          if ((v74 & v77) != 0)
          {
            v78 = v79;
          }

          v75[46] = v78;
          v75 += 56;
        }

        while (v75 != v76);
      }

      v80 = *(a1 + 452);
      v81 = capabilities::ct::supportsVoiceCall(v74);
      if (v81)
      {
        v81 = subscriber::isValidSimSlot();
        v82 = v81;
      }

      else
      {
        v82 = 0;
      }

      v84 = *(&v97 + 1);
      v83 = v97;
      if (v97 != *(&v97 + 1))
      {
        if (v82)
        {
          v85 = 1;
        }

        else
        {
          v85 = 2;
        }

        do
        {
          v86 = v85;
          if (*v83)
          {
            v81 = capabilities::ct::supportsVoiceCall(v81);
            v86 = v81 ^ 1;
            v87 = *v83 == v80 ? 2 : 1;
            if ((v81 & v82) != 0)
            {
              v86 = v87;
            }
          }

          *(v83 + 188) = v86;
          v83 += 224;
        }

        while (v83 != v84);
        v84 = *(&v97 + 1);
        v83 = v97;
      }

      for (; v83 != v84; v83 += 224)
      {
        v88 = *(a1 + 400);
        v89 = *v88;
        v90 = *(v88 + 8);
        if (*v88 != v90)
        {
          do
          {
            if (sub_100071DF8((*v89 + 24), (v83 + 192)))
            {
              goto LABEL_229;
            }

            v89 += 2;
          }

          while (v89 != v90);
          v89 = v90;
LABEL_229:
          v90 = *(v88 + 8);
        }

        if (v89 != v90)
        {
          v92 = *v89;
          v91 = v89[1];
          if (v91)
          {
            atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v92)
          {
            v100 = 0u;
            memset(v101, 0, 25);
            memset(__str, 0, sizeof(__str));
            *v102 = 0u;
            v103 = 0u;
            v104 = 0u;
            *__p = 0u;
            *&v106 = 0;
            std::string::operator=((v83 + 8), __str);
            std::string::operator=((v83 + 32), &__str[24]);
            std::string::operator=((v83 + 56), v101);
            *(v83 + 80) = v101[24];
            std::string::operator=((v83 + 88), v102);
            std::string::operator=((v83 + 112), (&v103 + 8));
            std::string::operator=((v83 + 136), __p);
            if (SBYTE7(v106) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v104) < 0)
            {
              operator delete(*(&v103 + 1));
            }

            if (SBYTE7(v103) < 0)
            {
              operator delete(v102[0]);
            }

            if ((v101[23] & 0x80000000) != 0)
            {
              operator delete(*v101);
            }

            if (SHIBYTE(v100) < 0)
            {
              operator delete(*&__str[24]);
            }

            if ((__str[23] & 0x80000000) != 0)
            {
              operator delete(*__str);
            }

            if (*(v92 + 64) && (*(v92 + 65) & 1) == 0 && isReal())
            {
              (*(**(a1 + 96) + 184))(__str);
              std::string::operator=((v83 + 8), __str);
              std::string::operator=((v83 + 32), &__str[24]);
              std::string::operator=((v83 + 56), v101);
              *(v83 + 80) = v101[24];
              std::string::operator=((v83 + 88), v102);
              std::string::operator=((v83 + 112), (&v103 + 8));
              std::string::operator=((v83 + 136), __p);
              if (SBYTE7(v106) < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v104) < 0)
              {
                operator delete(*(&v103 + 1));
              }

              if (SBYTE7(v103) < 0)
              {
                operator delete(v102[0]);
              }

              if ((v101[23] & 0x80000000) != 0)
              {
                operator delete(*v101);
              }

              if (SHIBYTE(v100) < 0)
              {
                operator delete(*&__str[24]);
              }

              if ((__str[23] & 0x80000000) != 0)
              {
                operator delete(*__str);
              }
            }
          }

          if (v91)
          {
            sub_100004A34(v91);
          }
        }
      }

      sub_10000501C(v94, a2);
      *&v94[3] = v97;
      v94[5] = *&v98[0];
      v97 = 0uLL;
      v95 = *(v98 + 8);
      v96 = *(&v98[1] + 1);
      memset(v98, 0, sizeof(v98));
      *&__str[24] = 0;
      operator new();
    }

    v66 = (a1 + 152);
    while (1)
    {
      v67 = *v64;
      if ((a3 & 1) == 0 && v67[2].__r_.__value_.__s.__data_[0] != 1 || !v67[2].__r_.__value_.__s.__data_[16] || (v67[2].__r_.__value_.__s.__data_[17] & 1) != 0 || !isReal())
      {
        goto LABEL_185;
      }

      v68 = (*v64)[2].__r_.__value_.__s.__data_[1];
      if ((*v64)[2].__r_.__value_.__s.__data_[1])
      {
        v69 = v68 == 1 || v68 == 3;
        if (!v69)
        {
          goto LABEL_185;
        }

        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        *__p = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        *v102 = 0u;
        v100 = 0u;
        memset(v101, 0, sizeof(v101));
        memset(__str, 0, sizeof(__str));
        BYTE9(v110) = 1;
        std::string::operator=(&v107, *v64);
        std::string::operator=(&v109, *v64 + 1);
        sub_101453DD4(&v97, __str);
      }

      else
      {
        v70 = *v66;
        if (!*v66)
        {
          goto LABEL_185;
        }

        v71 = HIDWORD((*v64)[2].__r_.__value_.__r.__words[0]);
        v72 = a1 + 152;
        do
        {
          if (*(v70 + 32) >= v71)
          {
            v72 = v70;
          }

          v70 = *(v70 + 8 * (*(v70 + 32) < v71));
        }

        while (v70);
        if (v72 == v66 || v71 < *(v72 + 32))
        {
          goto LABEL_185;
        }

        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        *__p = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        *v102 = 0u;
        v100 = 0u;
        memset(v101, 0, sizeof(v101));
        memset(__str, 0, sizeof(__str));
        *__str = *(v72 + 40);
        sub_100DFECD0(&__str[8], v72 + 48);
        if (*(v72 + 223) < 0)
        {
          sub_100005F2C(&v107, *(v72 + 200), *(v72 + 208));
        }

        else
        {
          v107 = *(v72 + 200);
          *&v108 = *(v72 + 216);
        }

        *(&v108 + 1) = *(v72 + 224);
        if (*(v72 + 255) < 0)
        {
          sub_100005F2C(&v109, *(v72 + 232), *(v72 + 240));
        }

        else
        {
          v109 = *(v72 + 232);
          *&v110 = *(v72 + 248);
        }

        DWORD2(v110) = *(v72 + 256);
        sub_101453DD4(&v97, __str);
      }

      sub_101293424(__str);
LABEL_185:
      v64 += 2;
      if (v64 == v65)
      {
        goto LABEL_201;
      }
    }
  }
}
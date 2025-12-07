void sub_1000E7C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::string *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a65 < 0)
  {
    operator delete(__pa);
  }

  sub_100039BE8(&a24);
  if (SHIBYTE(a49) < 0)
  {
    operator delete(a47);
  }

  _Unwind_Resume(a1);
}

std::logic_error *sub_1000E7D90(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_1000E7DC4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10003B25C(a1);
  if (*(a1 + 127) < 0)
  {
    v4 = *(a1 + 104);
    v5 = *(a1 + 112);

    sub_100007244(a2, v4, v5);
  }

  else
  {
    *a2 = *(a1 + 104);
    *(a2 + 16) = *(a1 + 120);
  }
}

uint64_t sub_1000E7E28(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 960))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a2 + 23) >= 0 ? a2 : *a2;
      CLConnection::getName(*(a1 + 960));
      v6 = v27 >= 0 ? __p : *__p;
      *buf = 136446466;
      *&buf[4] = v5;
      v19 = 2082;
      v20 = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Sending kCLConnectionMessageWakeClient for %{public}s to client '%{public}s'", buf, 0x16u);
      if (v27 < 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v11 = off_1025D47A8;
      if (*(a2 + 23) >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      CLConnection::getName(*(a1 + 960));
      if (v21 >= 0)
      {
        v13 = buf;
      }

      else
      {
        v13 = *buf;
      }

      v22 = 136446466;
      v23 = v12;
      v24 = 2082;
      v25 = v13;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v11, 0, "Sending kCLConnectionMessageWakeClient for %{public}s to client '%{public}s'", &v22, 22);
      v15 = v14;
      if (v21 < 0)
      {
        operator delete(*buf);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLClientManager::wakeupLaunchdManagedClient(const std::string &)", "%s\n", v15);
      if (v15 != __p)
      {
        free(v15);
      }
    }

    v16 = @"kCLConnectionMessageClientNameKey";
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v17 = [NSString stringWithUTF8String:v7];
    *__p = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    sub_1000E819C();
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v8 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    *__p = 136315138;
    *&__p[4] = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Warning Can't find /usr/libexec/UserEventAgent connection for waking Client: <%s>", __p, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192F924();
  }

  return 0;
}

void sub_1000E817C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000E8210(uint64_t a1, char *a2, void *a3)
{
  sub_10000EC00(&__p, a2);
  CLConnectionMessage::CLConnectionMessage();
  if (v6 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_1000E8268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000E8284(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  sub_1000E8210((a1 + 3), a2, a3);
  return a1;
}

char *sub_1000E82E0(char *result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 5) = *(a2 + 40);
  *(result + 6) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    return sub_100007244(result + 56, *(a2 + 56), *(a2 + 64));
  }

  v3 = *(a2 + 56);
  *(result + 9) = *(a2 + 72);
  *(result + 56) = v3;
  return result;
}

void sub_1000E8344(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E83CC(uint64_t a1, double a2, double a3)
{
  *(*(*(a1 + 40) + 8) + 112) = a2;
  *(*(*(a1 + 40) + 8) + 120) = a3;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1000E83EC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 && *(v2 + 8) != -1)
  {
    sub_1000E8488((*(*(a1 + 40) + 8) + 48));
  }

  dispatch_release(*(a1 + 32));
}

uint64_t sub_1000E8488(uint64_t **a1)
{
  if (qword_1025D4890 != -1)
  {
    sub_101A9BC1C();
  }

  v2 = qword_1025D4898;
  if (os_log_type_enabled(qword_1025D4898, OS_LOG_TYPE_DEBUG))
  {
    v3 = *a1;
    if (*(a1 + 23) >= 0)
    {
      v3 = a1;
    }

    v4 = *(a1 + 24);
    v5 = *(a1 + 25);
    v6 = *(a1 + 26);
    v7 = *(a1 + 27);
    v8 = *(a1 + 12);
    v9 = a1[7];
    v10 = a1[8];
    v11 = a1[9];
    v12 = a1[12];
    v13 = *(a1 + 20);
    v14 = *(a1 + 21);
    v15 = *(a1 + 26);
    v16 = *(a1 + 27);
    v17 = *(a1 + 91);
    v18 = *(a1 + 88);
    v19 = *(a1 + 89);
    v20 = *(a1 + 90);
    v21 = *(a1 + 92);
    v22 = *(a1 + 93);
    v23 = *(a1 + 94);
    v24 = *(a1 + 95);
    *buf = 67115011;
    v27 = 1;
    v28 = 2048;
    v29 = 0;
    v30 = 2080;
    v31 = v3;
    v32 = 1024;
    v33 = v4;
    v34 = 1024;
    v35 = v5;
    v36 = 1024;
    v37 = v6;
    v38 = 1024;
    v39 = v7;
    v40 = 1024;
    v41 = v8;
    v42 = 2048;
    v43 = v9;
    v44 = 2048;
    v45 = v10;
    v46 = 2048;
    v47 = v11;
    v48 = 1024;
    v49 = v13;
    v50 = 2049;
    v51 = v12;
    v52 = 1025;
    v53 = v14;
    v54 = 1025;
    v55 = v15;
    v56 = 1025;
    v57 = v16;
    v58 = 1025;
    v59 = v17;
    v60 = 1025;
    v61 = v18;
    v62 = 1025;
    v63 = v19;
    v64 = 1025;
    v65 = v20;
    v66 = 1025;
    v67 = v21;
    v68 = 1025;
    v69 = v22;
    v70 = 1025;
    v71 = v23;
    v72 = 1025;
    v73 = v24;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#FenceMetrics metric.valid,%d,metric.timestamp,%.3f,metric.bundleId,%s,cellAvailable,%d,wifiAvailable,%d,passcodeLocked,%d,airplaneMode,%d,eventType,%d,eventRadius,%.2f,eventDistance,%.2f,eventLatency,%.3f,eventMask,0x%x,sinceLast,%{private}.1f,fenceType,%{private}d,fenceAPs,%{private}d,totalAPs,%{private}d,conservative,%{private}d,emergency,%{private}d,polygonal,%{private}d,throttled,%{private}d,inVehicle,%{private}d,driving,%{private}d,static,%{private}d,pedestrian,%{private}d", buf, 0xAAu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A9BC30(a1);
  }

  return AnalyticsSendEventLazy();
}

void sub_1000E8700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = [*v6 silo];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3321888768;
  v10[2] = sub_1000E8AB4;
  v10[3] = &unk_10249E4B8;
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10[6] = v6;
  v10[7] = v9;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10[4] = a2;
  if (*(a1 + 79) < 0)
  {
    sub_100007244(&__p, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    __p = *(a1 + 56);
    v13 = *(a1 + 72);
  }

  v10[5] = a3;
  [v7 async:v10];
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }
}

void sub_1000E8808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1000E8838(char *result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 7) = *(a2 + 56);
  *(result + 8) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 95) < 0)
  {
    return sub_100007244(result + 72, *(a2 + 72), *(a2 + 80));
  }

  v3 = *(a2 + 72);
  *(result + 11) = *(a2 + 88);
  *(result + 72) = v3;
  return result;
}

void sub_1000E889C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E88B4(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1000E8908(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 48);
    memset(&__p, 0, sizeof(__p));
    std::string::operator=(&__p, (a1 + 56));
    Current = CFAbsoluteTimeGetCurrent();
    sub_1000E7380(v2 + 24, 0, 0, &__p);
  }

  v3 = (a1 + 40);
  if (*(a1 + 40))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101A2854C();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v5 = *v5;
      }

      v6 = [objc_msgSend(*v3 "localizedDescription")];
      LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
      *(__p.__r_.__value_.__r.__words + 4) = v5;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Warning Couldn't launch application %s (%s)", &__p, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A28560(a1, (a1 + 40));
    }
  }
}

void sub_1000E8AB4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v6 = sub_1000E8908;
  v7 = &unk_10249E480;
  v3 = *(a1 + 32);
  v10 = v2;
  v8 = v3;
  if (*(a1 + 95) < 0)
  {
    sub_100007244(__p, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    *__p = *(a1 + 72);
    v12 = *(a1 + 88);
  }

  v9 = *(a1 + 40);
  v4 = *(a1 + 64);
  if (v4 && *(v4 + 8) != -1)
  {
    v6(v5);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000E8B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E8BC8(uint64_t result)
{
  if (*(result + 52) == -536723200)
  {
    sub_1000E8E10(*(result + 32), *(result + 48));
  }
}

void sub_1000E8BEC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018E68F8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLDaemonStatus::onBatteryStatusChanged", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018E690C();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a1;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLDaemonStatus::onBatteryStatusChanged, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v10 = [*(a1 + 32) silo];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E8BC8;
  v11[3] = &unk_10245D2F0;
  v12 = a2;
  v13 = a3;
  v11[4] = a1;
  v11[5] = a4;
  [v10 sync:v11];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1000E8E10(void *a1, io_registry_entry_t entry)
{
  v36 = 0;
  *(&v35 + 1) = 0;
  v4 = IORegistryEntryCreateCFProperty(entry, @"CurrentCapacity", kCFAllocatorDefault, 0);
  v5 = IORegistryEntryCreateCFProperty(entry, @"MaxCapacity", kCFAllocatorDefault, 0);
  if (v4)
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
      sub_1018E637C();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "cannot find current or maximum capacity", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E81AC();
    }
  }

  else
  {
    v8 = [v5 intValue];
    v9 = [v4 intValue];
    v10 = v9;
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = 100;
    }

    v12 = fmin(v9 * 100.0 / v11, 100.0);
    if (v12 >= 0.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0.0;
    }

    *&v35 = v13;
    v14 = IORegistryEntryCreateCFProperty(entry, @"ExternalConnected", kCFAllocatorDefault, 0);
    if (v14)
    {
      v15 = [v14 BOOLValue];
      BYTE9(v35) = v15;
      HIDWORD(v35) = 0;
      v16 = IORegistryEntryCreateCFProperty(entry, @"AdapterDetails", kCFAllocatorDefault, 0);
      v17 = [v16 objectForKeyedSubscript:@"Description"];
      if (v17)
      {
        v18 = v17;
        if (([(__CFString *)v17 hasPrefix:@"batt"]& 1) != 0)
        {
          v19 = 1;
        }

        else if (([(__CFString *)v18 hasPrefix:@"usb"]& 1) != 0)
        {
          v19 = 2;
        }

        else if (([(__CFString *)v18 hasPrefix:@"external"]& 1) != 0)
        {
          v19 = 3;
        }

        else
        {
          if (![(__CFString *)v18 hasSuffix:@"arcas"])
          {
            v34 = 0;
            goto LABEL_36;
          }

          v19 = 4;
        }

        v34 = v19;
        HIDWORD(v35) = v19;
      }

      else
      {
        v34 = 0;
        v18 = @"none";
      }

LABEL_36:
      v21 = [v16 objectForKeyedSubscript:@"FamilyCode"];
      if (v21)
      {
        v22 = [v21 intValue];
      }

      else
      {
        if (qword_1025D4870 != -1)
        {
          sub_1018E669C();
        }

        v23 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "Failed to get charger family", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018E8290();
        }

        v22 = 0;
      }

      HIDWORD(v36) = v22;
      v24 = IORegistryEntryCreateCFProperty(entry, @"FullyCharged", kCFAllocatorDefault, 0);
      if (v24)
      {
        v25 = [v24 BOOLValue];
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_1018E61E0();
        }

        v26 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_FAULT, "cannot find charged status\n", buf, 2u);
        }

        v25 = 0;
        if (sub_10000A100(121, 0))
        {
          sub_1018E8374();
          v25 = 0;
        }
      }

      BYTE8(v35) = v25;
      if (qword_1025D4870 != -1)
      {
        sub_1018E688C();
      }

      v27 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68290818;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2114;
        *&buf[20] = v18;
        *&buf[28] = 2050;
        *&buf[30] = v34;
        *&buf[38] = 1026;
        *v38 = v13;
        *&v38[4] = 1026;
        *v39 = v22;
        *&v39[4] = 1026;
        v40 = v25;
        v41 = 1026;
        v42 = v15;
        v43 = 1026;
        v44 = 0;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:adapter details, adapterDescription:%{public, location:escape_only}@, batteryChargerType:%{public, location:CLBatteryChargerType}lld, level:%{public}d, family:%{public}u, fullyCharged:%{public}hhd, connected:%{public}hhd, wasConnected:%{public}hhd}", buf, 0x44u);
      }

      v28 = a1[14];
      if (v28)
      {
        objc_msgSend_batteryData(v28);
        v29 = buf[9];
      }

      else
      {
        v29 = 0;
        memset(buf, 0, 24);
      }

      v30 = 1;
      if (v29 == v15 && buf[8] == v25 && vabdd_f64(*buf, v13) < 1.0)
      {
        v30 = *&buf[12] != v34;
      }

      if (qword_1025D4870 != -1)
      {
        sub_1018E688C();
      }

      v31 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68290306;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1040;
        *&buf[20] = 24;
        *&buf[24] = 2098;
        *&buf[26] = &v35;
        *&buf[34] = 1026;
        *&buf[36] = v10;
        *v38 = 1026;
        *&v38[2] = v11;
        *v39 = 1026;
        *&v39[2] = v30;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:battery capacity info, batteryStatus:%{public, location:CLDaemonStatus_Type::Battery}.*P, currentCapacity:%{public}d, maximumCapacity:%{public}d, batteryIsDifferent:%{public}hhd}", buf, 0x34u);
      }

      if (v30)
      {
        v32 = a1[14];
        if (v32)
        {
          objc_msgSend_batteryData(v32);
          v33 = buf[9];
          v32 = a1[14];
        }

        else
        {
          v33 = 0;
        }

        LOBYTE(v36) = v33;
        *buf = v35;
        *&buf[16] = v36;
        [v32 setBatteryData:buf];
        *buf = 7;
        (*(*a1 + 152))(a1, buf, &v35, 1, 0xFFFFFFFFLL, 0);
      }

      return;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_1018E637C();
    }

    v20 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "cannot find connected status", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E8458();
    }
  }
}

BOOL sub_1000E94C4(void *a1)
{
  v12 = 0;
  if (qword_1025D47A0 != -1)
  {
    sub_101B0D6F4();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2114;
    v18 = a1;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ClearClient isApplicationInstalledLocally determining if app is installed via LSApplicationWorkspace & LSApplicationExtensionRecord, bundleID:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

  if (([+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")] & 1) != 0 || objc_msgSend([LSApplicationExtensionRecord alloc], "initWithBundleIdentifier:error:", a1, &v12))
  {
    v3 = 1;
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101B0D52C();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2114;
      v18 = a1;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ClearClient isApplicationInstalledLocally determining if app is installed via LSApplicationRecord, bundleID:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    v9 = [[LSApplicationRecord alloc] initWithBundleIdentifier:a1 allowPlaceholder:0 error:&v12];
    v10 = [v9 localizedName];
    v3 = v10 != 0;
    if (!v10)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101B0D52C();
      }

      v11 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v14 = 0;
        v15 = 2082;
        v16 = "";
        v17 = 2114;
        v18 = a1;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ClearClient isApplicationInstalledLocally LSApplicationRecord is not considered installed, bundleID:%{public, location:escape_only}@}", buf, 0x1Cu);
      }
    }
  }

  if (qword_1025D47A0 != -1)
  {
    sub_101B0D52C();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289538;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2114;
    v18 = a1;
    v19 = 1026;
    LODWORD(v20) = v3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ClearClient isApplicationInstalledLocally, bundleID:%{public, location:escape_only}@, isAppInstalled?:%{public}hhd}", buf, 0x22u);
  }

  if (v12)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101B0D52C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      v6 = [a1 UTF8String];
      *buf = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = v6;
      v19 = 2114;
      v20 = v12;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:LaunchServices did not find app in its database, bundleId:%{public, location:escape_only}s, error:%{public, location:escape_only}@}", buf, 0x26u);
    }
  }

  return v3;
}

id sub_1000E9840(void *a1)
{
  result = sub_100055734(a1);
  if (result)
  {

    return [result path];
  }

  return result;
}

void sub_1000E9874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = CLConnectionMessage::name(*a2);
  if (*(v6 + 23) < 0)
  {
    sub_100007244(__p, *v6, *(v6 + 8));
  }

  else
  {
    v7 = *v6;
    v14 = *(v6 + 16);
    *__p = v7;
  }

  if (v14 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  (*(*a1 + 32))(a1, v8, 1);
  v9 = *(a2 + 8);
  v11 = *a2;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 16))(a1, &v11, a3, 0.0);
  if (v12)
  {
    sub_100008080(v12);
  }

  if (v14 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  (*(*a1 + 32))(a1, v10, 0);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000E99C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E99FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _os_activity_create(dword_100000000, "CL: Incoming message", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v7 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v8 = CLConnectionMessage::name(*a3);
    if (*(v8 + 23) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *v8;
    }

    v10 = *(a2 + 72);
    *buf = 68290050;
    *&buf[4] = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2082;
    v25 = "activity";
    v26 = 2082;
    v27 = v9;
    v28 = 2050;
    v29 = a2;
    v30 = 1026;
    v31 = v10;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Incoming message, event:%{public, location:escape_only}s, name:%{public, location:escape_only}s, this:%{public}p, registrationReceived:%{public}hhd}", buf, 0x36u);
  }

  if (*(a2 + 72) == 1)
  {
    v11 = [objc_msgSend(*(a2 + 48) "legacyClientKey")];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = "";
    }

    sub_10000EC00(buf, v12);
    sub_1000E9C70(a2, &v18);
    v13 = v18;
    v14 = *(a3 + 8);
    v16 = *a3;
    v17 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = *(a1 + 24);
    if (!v15)
    {
      sub_1000CF05C();
    }

    (*(*v15 + 48))(v15, v13, &v16);
    if (v17)
    {
      sub_100008080(v17);
    }

    if (v19)
    {
      sub_100008080(v19);
    }

    if (SBYTE3(v25) < 0)
    {
      operator delete(*buf);
    }
  }

  os_activity_scope_leave(&state);
}

void sub_1000E9C70(uint64_t a1@<X0>, void *a2@<X8>)
{
  *buf = &v22;
  v4 = sub_10005A490((a1 + 328), &v22, &unk_101C66300, buf);
  v5 = v4[3];
  v6 = v4[4];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
    *a2 = 0;
    a2[1] = 0;
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (qword_1025D4790 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

  *a2 = v7;
  a2[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((v7[248] & 1) == 0)
  {
    if (qword_1025D4790 != -1)
    {
      sub_1001456E8();
    }

    v8 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 48);
      *buf = 68289538;
      *&buf[4] = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2114;
      v27 = v9;
      v28 = 2082;
      v29 = ("17CLSLCSubscription" & 0x7FFFFFFFFFFFFFFFLL);
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Invalid persistent subscription detected... getting a fresh one, ClientKeyPath:%{public, location:escape_only}@, subscription:%{public, location:escape_only}s}", buf, 0x26u);
    }

    v10 = a2[1];
    if (v10)
    {
      sub_100008080(v10);
    }

LABEL_14:
    sub_1000EA1BC(*(a1 + 16), *(a1 + 48), a2);
    v11 = *a2;
    *(v11 + 144) = (*(*a1 + 80))(a1);
    v12 = *a2;
    p_info = (*(*a1 + 96))(a1);
    v14 = p_info;

    *(v12 + 152) = p_info;
    if (!*a2 || (*(*a2 + 248) & 1) == 0)
    {
      sub_1019EF370();
      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/ClientManagement/CLDaemonClient.h", 456, "getOrCreatePersistentSubscription");
      while (1)
      {
        __break(1u);
LABEL_36:
        sub_1001456E8();
LABEL_26:
        v19 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          v24 = 2082;
          v25 = "";
          v26 = 2082;
          v27 = "assert";
          v28 = 2081;
          v29 = "subscriptionPtr";
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (p_info[242] != -1)
          {
            sub_1001456E8();
          }
        }

        v20 = qword_1025D4798;
        if (os_signpost_enabled(qword_1025D4798))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          v24 = 2082;
          v25 = "";
          v26 = 2082;
          v27 = "assert";
          v28 = 2081;
          v29 = "subscriptionPtr";
          _os_signpost_emit_with_name_impl(dword_100000000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "dynamic_pointer_cast must never fail in this context", "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (p_info[242] != -1)
          {
            sub_1001456E8();
          }
        }

        v21 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          v24 = 2082;
          v25 = "";
          v26 = 2082;
          v27 = "assert";
          v28 = 2081;
          v29 = "subscriptionPtr";
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/ClientManagement/CLDaemonClient.h", 443, "getOrCreatePersistentSubscription");
      }
    }

    *buf = &v22;
    v15 = sub_10005A490((a1 + 328), &v22, &unk_101C66300, buf);
    v17 = *a2;
    v16 = a2[1];
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    v18 = v15[4];
    v15[3] = v17;
    v15[4] = v16;
    if (v18)
    {
      sub_100008080(v18);
    }

    (*(**a2 + 16))(*a2, a1 + 8);
  }

  if (v6)
  {
    sub_100008080(v6);
  }
}

void sub_1000EA180(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 8);
  if (v4)
  {
    sub_100008080(v4);
  }

  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000EA1BC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_1000184F4(a1, a2);
  v23 = v5;
  *a3 = 0;
  a3[1] = 0;
  if (v5)
  {
    objc_msgSend_cppClientKey(v5);
  }

  else
  {
    *buf = 0;
    *v25 = 0;
    *&v25[8] = 0;
  }

  v16 = buf;
  v6 = sub_10005AD2C((a1 + 1000), buf, &unk_101C66300, &v16);
  if ((v25[15] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  *buf = &v22;
  v7 = sub_10005AFCC(v6 + 10, &v22, &unk_101C66300, buf);
  v8 = v7[4];
  if (!v8 || (v9 = std::__shared_weak_count::lock(v8)) == 0 || (v10 = v7[3]) == 0)
  {
    if (qword_1025D4790 != -1)
    {
      sub_10192DAA4();
    }

    v12 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      *buf = 68289538;
      *v25 = 2082;
      *&v25[2] = "";
      *&v25[10] = 2082;
      *&v25[12] = "17CLSLCSubscription" & 0x7FFFFFFFFFFFFFFFLL;
      v26 = 2114;
      v27 = v23;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Creating persistent subscription due to demand, type:%{public, location:escape_only}s, clientKeyPath:%{public, location:escape_only}@}", buf, 0x26u);
    }

    v21 = sub_100018FC8(a1, v23, &xmmword_101CE6CD8);
    if (v23)
    {
      objc_msgSend_cppClientKey(v23);
    }

    else
    {
      v19 = 0uLL;
      v20 = 0;
    }

    sub_100F3B404(__p);
    sub_1000603E0(buf, &v19, __p, v22);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19);
    }

    sub_1007ADA18();
  }

  if (!v11)
  {
    *a3 = 0;
    a3[1] = 0;
    if (qword_1025D47A0 != -1)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        *v25 = 2082;
        *&v25[2] = "";
        *&v25[10] = 2082;
        *&v25[12] = "assert";
        v26 = 2081;
        v27 = "result";
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v14 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        *buf = 68289539;
        *v25 = 2082;
        *&v25[2] = "";
        *&v25[10] = 2082;
        *&v25[12] = "assert";
        v26 = 2081;
        v27 = "result";
        _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "dynamic_pointer_cast must never fail in this context", "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v15 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        *v25 = 2082;
        *&v25[2] = "";
        *&v25[10] = 2082;
        *&v25[12] = "assert";
        v26 = 2081;
        v27 = "result";
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/ClientManagement/CLClientManager.h", 383, "getOrCreatePersistentSubscriptionForClient");
      __break(1u);
LABEL_33:
      sub_10192D4D0();
    }
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  *a3 = v11;
  a3[1] = v9;
  sub_100008080(v9);
}

void sub_1000EA710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100008080(v29);
  if (*(v28 + 8))
  {
    sub_100008080(*(v28 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_1000EA7D0(uint64_t a1, void *a2, void *a3)
{
  v6 = *a2;
  if (*(*a2 + 95) < 0)
  {
    sub_100007244(__dst, *(v6 + 72), *(v6 + 80));
  }

  else
  {
    *__dst = *(v6 + 72);
    v20 = *(v6 + 88);
  }

  if (*(v6 + 119) < 0)
  {
    sub_100007244(&__p, *(v6 + 96), *(v6 + 104));
  }

  else
  {
    __p = *(v6 + 96);
    v22 = *(v6 + 112);
  }

  v23 = *(v6 + 120);
  if (v20 >= 0)
  {
    v7 = __dst;
  }

  else
  {
    v7 = __dst[0];
  }

  v8 = sub_1000184F4(*(a1 + 8), [CLClientKeyPath clientKeyPathWithClientKey:[NSString stringWithUTF8String:v7]]);
  if (v22 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v10 = [NSString stringWithUTF8String:p_p];
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v11 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v12 = [a3 UTF8String];
    *buf = 68289795;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    v28 = 2114;
    v29 = v8;
    v30 = 2114;
    v31 = v10;
    v32 = 2081;
    v33 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#PersistentSubscription PersistenceBackend clearObjectForKeyForSubscription, client:%{public, location:escape_only}@, storageName:%{public, location:escape_only}@, storageKey:%{private, location:escape_only}s}", buf, 0x30u);
  }

  v13 = +[NSMutableDictionary dictionaryWithDictionary:](NSMutableDictionary, "dictionaryWithDictionary:", [*(*(a1 + 8) + 136) dictionaryForKey:v10 atKeyPath:v8 defaultValue:&__NSDictionary0__struct]);
  [(NSMutableDictionary *)v13 removeObjectForKey:a3];
  v14 = [(NSMutableDictionary *)v13 count];
  v15 = *(*(a1 + 8) + 136);
  if (v14)
  {
    [v15 setDictionary:v13 forKey:v10 atKeyPath:v8];
  }

  else
  {
    [v15 removeValueForKey:v10 atKeyPath:v8];
    v16 = a2[1];
    v17 = *a2;
    v18 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100061098((a1 + 16), &v17);
    if (v18)
    {
      sub_100008080(v18);
    }
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1000EAA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  sub_1006E69AC(&__p);
  _Unwind_Resume(a1);
}

void sub_1000EAAC4(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v3 = *a2;
  v4 = *a3;
  *a3 = 0uLL;
  sub_1000E99FC(a1 + 8, v3, &v4);
  if (*(&v4 + 1))
  {
    sub_100008080(*(&v4 + 1));
  }
}

void sub_1000EAB10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000EAB28(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  sub_100005548(v35, Dictionary);
  v34 = 0;
  if ((sub_10001CB4C(v35, "kCLConnectionMessageSubscribeKey", &v34, 0xFFFFFFFFLL) & 1) == 0)
  {
    if (qword_1025D4790 != -1)
    {
      sub_101AD1C88();
    }

    v9 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      __p = 68289026;
      v37 = 2082;
      v38 = "";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Couldn't get value for kCLConnectionMessageSubscribeKey key}", &__p, 0x12u);
      if (qword_1025D4790 != -1)
      {
        sub_101AD1C88();
      }
    }

    v10 = qword_1025D4798;
    if (!os_signpost_enabled(qword_1025D4798))
    {
      goto LABEL_28;
    }

    __p = 68289026;
    v37 = 2082;
    v38 = "";
    v11 = "Couldn't get value for kCLConnectionMessageSubscribeKey key";
    v12 = "{msg%{public}.0s:Couldn't get value for kCLConnectionMessageSubscribeKey key}";
    v13 = v10;
    v14 = 18;
LABEL_21:
    _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v11, v12, &__p, v14);
    goto LABEL_28;
  }

  if (!+[CLSignificantChangeManagerAdapter isSupported])
  {
    goto LABEL_28;
  }

  if (!v34)
  {
    if (qword_1025D4790 != -1)
    {
      sub_101AD1C88();
    }

    v15 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 64);
      __p = 68289282;
      v37 = 2082;
      v38 = "";
      v39 = 2114;
      v40 = v17;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Client unsubscribing #SLC, client:%{public, location:escape_only}@}", &__p, 0x1Cu);
    }

    sub_100060D7C(a1, v16);
    goto LABEL_27;
  }

  sub_10000EC00(&__p, "com.apple.locationd.slc_configurer");
  isEntitled = CLConnectionMessage::isEntitled();
  if (SBYTE3(v40) < 0)
  {
    operator delete(__p);
  }

  v33 = 500.0;
  if (!(isEntitled & 1 | ((sub_1000B9370(v35, "kCLConnectionMessageSLCDistanceKey", &v33) & 1) == 0)))
  {
    if (qword_1025D4790 != -1)
    {
      sub_101AD1C88();
    }

    v19 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      v20 = *(a1 + 64);
      __p = 68289282;
      v37 = 2082;
      v38 = "";
      v39 = 2114;
      v40 = v20;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Client is not entitled to provide #SLC configuration, client:%{public, location:escape_only}@}", &__p, 0x1Cu);
      if (qword_1025D4790 != -1)
      {
        sub_101AD1C88();
      }
    }

    v21 = qword_1025D4798;
    if (!os_signpost_enabled(qword_1025D4798))
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  v31 = 0;
  v32 = -1;
  if (!sub_10005BBE4(v35, "kCLConnectionMessageSLCPowerBudgetKey", &v32))
  {
LABEL_10:
    sub_1000E5A0C(a1, @"powerBudget", [NSNumber numberWithInt:v31]);
    sub_1000E5A0C(a1, @"distanceThreshold", [NSNumber numberWithDouble:v33]);
    sub_10000EC00(&__p, "com.apple.locationd.private_info");
    v7 = CLConnectionMessage::isEntitled();
    if (SBYTE3(v40) < 0)
    {
      operator delete(__p);
    }

    *(a1 + 306) = v7;
    if (v7)
    {
      v8 = [NSNumber numberWithBool:1];
    }

    else
    {
      v8 = 0;
    }

    sub_1000E5A0C(a1, @"includePrivateData", v8);
    if (qword_1025D4790 != -1)
    {
      sub_101AD1C88();
    }

    v23 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 64);
      __p = 68289794;
      v37 = 2082;
      v38 = "";
      v39 = 2114;
      v40 = v24;
      v41 = 2050;
      v42 = v33;
      v43 = 1026;
      v44 = v31;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:client subscribing to #SLC, client:%{public, location:escape_only}@, distance:%{public}f, powerBudget:%{public}d}", &__p, 0x2Cu);
    }

LABEL_27:
    sub_1000E5B8C(a1, v18);
    sub_10002F8F4(a1);
    goto LABEL_28;
  }

  if ((isEntitled & 1) == 0)
  {
    if (qword_1025D4790 != -1)
    {
      sub_101AD1C88();
    }

    v25 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      v26 = *(a1 + 64);
      __p = 68289282;
      v37 = 2082;
      v38 = "";
      v39 = 2114;
      v40 = v26;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Client is not entitled to provide #SLC configuration, client:%{public, location:escape_only}@}", &__p, 0x1Cu);
      if (qword_1025D4790 != -1)
      {
        sub_101AD1C88();
      }
    }

    v21 = qword_1025D4798;
    if (!os_signpost_enabled(qword_1025D4798))
    {
      goto LABEL_28;
    }

LABEL_35:
    v22 = *(a1 + 64);
    __p = 68289282;
    v37 = 2082;
    v38 = "";
    v39 = 2114;
    v40 = v22;
    v11 = "Client is not entitled to provide #SLC configuration";
    v12 = "{msg%{public}.0s:Client is not entitled to provide #SLC configuration, client:%{public, location:escape_only}@}";
    v13 = v21;
    v14 = 28;
    goto LABEL_21;
  }

  if (sub_100C0C6AC(v32, &v31))
  {
    goto LABEL_10;
  }

  if (qword_1025D4790 != -1)
  {
    sub_101AD1C88();
  }

  v27 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
  {
    v28 = *(a1 + 64);
    __p = 68289538;
    v37 = 2082;
    v38 = "";
    v39 = 2114;
    v40 = v28;
    v41 = 1026;
    LODWORD(v42) = v32;
    _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Client provided invalid #SLC configuration, client:%{public, location:escape_only}@, desiredPowerBudgetRaw:%{public}d}", &__p, 0x22u);
    if (qword_1025D4790 != -1)
    {
      sub_101AD1C88();
    }
  }

  v29 = qword_1025D4798;
  if (os_signpost_enabled(qword_1025D4798))
  {
    v30 = *(a1 + 64);
    __p = 68289538;
    v37 = 2082;
    v38 = "";
    v39 = 2114;
    v40 = v30;
    v41 = 1026;
    LODWORD(v42) = v32;
    v11 = "Client provided invalid #SLC configuration";
    v12 = "{msg%{public}.0s:Client provided invalid #SLC configuration, client:%{public, location:escape_only}@, desiredPowerBudgetRaw:%{public}d}";
    v13 = v29;
    v14 = 34;
    goto LABEL_21;
  }

LABEL_28:
  sub_100005DA4();
}

void sub_1000EB328(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = (a2 + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  v8 = v3;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5(v7, &v8);
  if (v9)
  {
    sub_100008080(v9);
  }

  if (v4)
  {
    sub_100008080(v4);
  }
}

void sub_1000EB3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (v10)
  {
    sub_100008080(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000EB3F4(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4790 != -1)
  {
    sub_101AD1CB0();
  }

  v4 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 4);
    v6 = *(a2 + 12);
    v7 = *(a2 + 20);
    v8 = *(a1 + 64);
    *buf = 134546435;
    *&buf[4] = v5;
    *&buf[12] = 2053;
    *&buf[14] = v6;
    *&buf[22] = 2053;
    v28 = v7;
    LOWORD(v29) = 2114;
    *(&v29 + 2) = v8;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Sending #SLC <%{sensitive}+.8f,%{sensitive}+.8f> acc %{sensitive}.2f for %{public}@", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AD1CC4(a2, a1);
  }

  sub_10004FD18();
  if (sub_100046340(a2, v26, a1 + 304) >= 1)
  {
    *buf = sub_10007005C(v26);
    sub_1000EB970(a1, buf, -1.0);
  }

  if (*(a1 + 249) == 1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0xA012000000;
    v28 = sub_1000479E0;
    *&v29 = sub_100048710;
    *(&v29 + 1) = &unk_10238AE8B;
    __p = 0;
    memset(v31, 0, sizeof(v31));
    v32 = 1000;
    v33 = 0;
    v34 = 0;
    v35 = -1;
    __asm { FMOV            V1.2D, #-1.0 }

    v36 = _Q1;
    v37 = 0xBFF0000000000000;
    v38 = 0xFFFFFFFF00000000;
    v39 = 0;
    v40 = 0xBFF0000000000000;
    v41 = 0;
    v14 = [objc_msgSend(*(a1 + 64) "legacyClientKey")];
    sub_100006044((*&buf[8] + 48), v14);
    *(*&buf[8] + 96) = 2;
    v15 = dispatch_group_create();
    dispatch_group_enter(v15);
    v16 = *(*sub_100043A18(a1) + 16);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000E83CC;
    v25[3] = &unk_1024BED28;
    v25[4] = v15;
    v25[5] = buf;
    [v16 fetchLastSignificantLocationDistanceAndLatencyWithReply:v25];
    dispatch_group_enter(v15);
    v17 = *(a1 + 128);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000EBF24;
    v24[3] = &unk_1024BED50;
    v24[4] = v15;
    v24[5] = buf;
    sub_100047D60(v17, v24);
    v19 = *(a1 + 280);
    v18 = *(a1 + 288);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100008080(v18);
    }

    v20 = [objc_msgSend(*(a1 + 128) "silo")];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3321888768;
    v22[2] = sub_1000E83EC;
    v22[3] = &unk_1024BED78;
    v22[6] = v19;
    v23 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v22[4] = v15;
    v22[5] = buf;
    dispatch_group_notify(v15, v20, v22);
    if (v23)
    {
      std::__shared_weak_count::__release_weak(v23);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_weak(v18);
    }

    _Block_object_dispose(buf, 8);
    if ((v31[15] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  return sub_100005DA4();
}

void sub_1000EB7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  _Block_object_dispose(&a31, 8);
  if (a42 < 0)
  {
    operator delete(__p);
  }

  sub_100005DA4();
  _Unwind_Resume(a1);
}

void sub_1000EB850(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);

    sub_1000EB3F4(v3, a1 + 48);
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_101AD1CB0();
    }

    v4 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) UTF8String];
      v6[0] = 68289282;
      v6[1] = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SLC Not sending due to CLCM provisional intermediation, client:%{public, location:escape_only}s}", v6, 0x1Cu);
    }
  }
}

void sub_1000EBB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000EBBD8(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  CLConnectionMessage::CLConnectionMessage();
  return a1;
}

const void **sub_1000EBC38(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100007070(a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    sub_100F3C1C0();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100019DF4(a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_1000EBE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100F3C274(va);
  _Unwind_Resume(a1);
}

void sub_1000EBEAC(uint64_t a1)
{
  v2 = *(a1 + 1216);
  if (v2)
  {
    sub_100008080(v2);
  }

  if (*(a1 + 975) < 0)
  {
    operator delete(*(a1 + 952));
  }

  v3 = *(a1 + 864);
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = *(a1 + 736);
  if (v4)
  {

    sub_100008080(v4);
  }
}

__n128 sub_1000EBF24(uint64_t a1, __int128 *a2)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *a2;
  *(v2 + 88) = *(a2 + 2);
  *(v2 + 72) = v3;
  dispatch_group_leave(*(a1 + 32));
  return result;
}

void sub_1000EBF44(std::string *a1@<X0>, uint64_t a2@<X8>)
{
  if (_os_feature_enabled_impl())
  {
    *(a2 + 95) = 0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 152) = 0u;
    *(a2 + 163) = 0u;
    v4 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (v4 >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = a1->__r_.__value_.__r.__words[0];
    }

    if (v4 >= 0)
    {
      size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a1->__r_.__value_.__l.__size_;
    }

    if (size >= 1)
    {
      v7 = v5 + size;
      v8 = v5;
      do
      {
        v9 = memchr(v8, 58, size);
        if (!v9)
        {
          break;
        }

        if (*v9 == 58)
        {
          if (v9 == v7)
          {
            break;
          }

          v10 = v9 - v5;
          if (v10 == -1)
          {
            break;
          }

          std::string::basic_string(&v15, a1, v10 + 1, 0xFFFFFFFFFFFFFFFFLL, &v16);
          sub_1000EC2E0(v17, &v15);
          sub_100034F70(a2, v17);
          if (v28 < 0)
          {
            operator delete(__p);
          }

          if (v26 < 0)
          {
            operator delete(v25);
          }

          if (v24 < 0)
          {
            operator delete(v23);
          }

          if (v22 < 0)
          {
            operator delete(v21);
          }

          if (v20 < 0)
          {
            operator delete(v19);
          }

          if (v18 < 0)
          {
            operator delete(*&v17[24]);
          }

          if ((v17[23] & 0x80000000) != 0)
          {
            operator delete(*v17);
          }

          if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v15.__r_.__value_.__l.__data_);
          }

          std::string::basic_string(v17, a1, 0, v10, &v15);
          if (*(a2 + 23) < 0)
          {
            operator delete(*a2);
          }

          *a2 = *v17;
          *(a2 + 16) = *&v17[16];
          return;
        }

        v8 = (v9 + 1);
        size = v7 - v8;
      }

      while (v7 - v8 >= 1);
    }

    if (qword_1025D47A0 != -1)
    {
      sub_101BB7F64();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v12 = (a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? a1 : a1->__r_.__value_.__r.__words[0];
      *v17 = 68289282;
      *&v17[8] = 2082;
      *&v17[10] = "";
      *&v17[18] = 2082;
      *&v17[20] = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Multi-User clientKey doesn't have userName!, clientKey:%{public, location:escape_only}s}", v17, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_101BB7F78();
      }
    }

    v13 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = a1;
      }

      else
      {
        v14 = a1->__r_.__value_.__r.__words[0];
      }

      *v17 = 68289282;
      *&v17[8] = 2082;
      *&v17[10] = "";
      *&v17[18] = 2082;
      *&v17[20] = v14;
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Multi-User clientKey doesn't have userName!", "{msg%{public}.0s:#Multi-User clientKey doesn't have userName!, clientKey:%{public, location:escape_only}s}", v17, 0x1Cu);
    }
  }

  else
  {

    sub_1000EC2E0(a2, a1);
  }
}

void sub_1000EC2E0(uint64_t *__return_ptr a1@<X8>, std::string *__str@<X0>)
{
  v4 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v4 >= 0)
  {
    v5 = __str;
  }

  else
  {
    v5 = __str->__r_.__value_.__r.__words[0];
  }

  if (v4 >= 0)
  {
    size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v7 = v5 + size;
  if (size >= 31)
  {
    v8 = size;
    v9 = v5;
    do
    {
      v10 = memchr(v9, 99, v8 - 30);
      if (!v10)
      {
        break;
      }

      if (v10->__r_.__value_.__r.__words[0] == 0x6C7070612E6D6F63 && v10->__r_.__value_.__l.__size_ == 0x697461636F6C2E65 && v10->__r_.__value_.__r.__words[2] == 0x636578652E646E6FLL && *(&v10->__r_.__value_.__r.__words[2] + 7) == 0x2D656C6261747563)
      {
        if (v10 != v5)
        {
          break;
        }

        *(a1 + 95) = 0;
        *(a1 + 4) = 0u;
        *(a1 + 5) = 0u;
        *(a1 + 2) = 0u;
        *(a1 + 3) = 0u;
        *a1 = 0u;
        *(a1 + 1) = 0u;
        *(a1 + 13) = 0u;
        *(a1 + 15) = 0u;
        *(a1 + 17) = 0u;
        *(a1 + 19) = 0u;
        *(a1 + 163) = 0u;
        std::string::basic_string(&__p, __str, 0x1FuLL, 0xFFFFFFFFFFFFFFFFLL, &v20);
        std::string::operator=(a1 + 1, &__p);
LABEL_44:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        return;
      }

      v9 = (&v10->__r_.__value_.__l.__data_ + 1);
      v8 = v7 - v9;
    }

    while (v7 - v9 >= 31);
  }

  if (size >= 27)
  {
    v14 = v5;
    do
    {
      v15 = memchr(v14, 99, size - 26);
      if (!v15)
      {
        break;
      }

      if (v15->__r_.__value_.__r.__words[0] == 0x6C7070612E6D6F63 && v15->__r_.__value_.__l.__size_ == 0x697461636F6C2E65 && v15->__r_.__value_.__r.__words[2] == 0x646E75622E646E6FLL && *(&v15->__r_.__value_.__r.__words[2] + 3) == 0x2D656C646E75622ELL)
      {
        if (v15 != v5)
        {
          break;
        }

        std::string::basic_string(&__p, __str, 0x1BuLL, 0xFFFFFFFFFFFFFFFFLL, &v20);
        sub_1000E1C7C(a1, &__p);
        goto LABEL_44;
      }

      v14 = (&v15->__r_.__value_.__l.__data_ + 1);
      size = v7 - v14;
    }

    while (v7 - v14 >= 27);
  }

  sub_100034EE4(a1, __str);
}

void sub_1000EC538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000EC57C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

uint64_t sub_1000EC5FC(uint64_t result, uint64_t a2)
{
  if (a2 >= 1)
  {
    ++*(*(*(result + 32) + 8) + 64);
  }

  return result;
}

uint64_t sub_1000EC62C(uint64_t result, int a2)
{
  if (a2)
  {
    ++*(*(*(result + 32) + 8) + 68);
  }

  return result;
}

uint64_t sub_1000EC668(uint64_t result, int a2)
{
  if (a2)
  {
    ++*(*(*(result + 32) + 8) + 64);
  }

  return result;
}

BOOL sub_1000EC6CC(uint64_t a1)
{
  v1 = sub_1000EC7AC(a1);
  if (qword_1025D48A0 != -1)
  {
    sub_100248B5C();
  }

  v2 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 67109120;
    v4[1] = v1;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Registration status: %d", v4, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CA850(v1);
  }

  return v1 > 3;
}

uint64_t sub_1000EC7AC(uint64_t a1)
{
  v6 = 0;
  if (!(*(*a1 + 208))(a1, &v6))
  {
    LODWORD(v3) = 0;
LABEL_9:
    if (sub_10057DBB8(a1))
    {
      return 7;
    }

    else
    {
      return v3;
    }
  }

  v2 = sub_1000ED2E4(v6);
  v3 = v2;
  if (v2 <= 3 && v2 != 2)
  {
    goto LABEL_9;
  }

  return v3;
}

uint64_t sub_1000EC83C(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v3 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 160);
      v8[0] = 68289282;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 1026;
      v12 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", v8, 0x18u);
    }
  }

  if (*(a1 + 144))
  {
    if (_CTServerConnectionGetRegistrationStatus())
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v5 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v8[0]) = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "_CTServerConnectionGetRegistrationStatus failed", v8, 2u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_1018CA948();
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", v8, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1018CAA2C();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000ECA98(uint64_t a1)
{
  v2 = a1 + 832;
  v12 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v13 = 256;
  if (*(a1 + 304) && *(a1 + 312))
  {
    memset(&__p, 0, sizeof(__p));
    if (*(a1 + 224) && *(a1 + 648) == 1 && (*(a1 + 600) - 1) <= 0xA4)
    {
      v14 = *(a1 + 560);
      sub_1000ECD9C(buf);
      v3 = *(a1 + 600);
      __p = buf[0];
      v4 = 1;
    }

    else
    {
      v4 = 0;
      v3 = -1;
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 67240707;
      HIDWORD(buf[0].__r_.__value_.__r.__words[0]) = v4;
      LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2081;
      *(&buf[0].__r_.__value_.__r.__words[1] + 2) = p_p;
      WORD1(buf[0].__r_.__value_.__r.__words[2]) = 1026;
      HIDWORD(buf[0].__r_.__value_.__r.__words[2]) = v3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "WifiMgr, associated, %{public}d, mac, %{private}s, channel, %{public}d", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(buf);
      v8 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v8 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(v14) = 67240707;
      HIDWORD(v14) = v4;
      v15 = 2081;
      v16 = v8;
      v17 = 1026;
      v18 = v3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 1, "WifiMgr, associated, %{public}d, mac, %{private}s, channel, %{public}d", &v14, 24);
      v10 = v9;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::isAssociated()", "%s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v4 = 0;
  }

  (*(*v2 + 24))(v2);
  return v4;
}

void sub_1000ECD54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1017EC98C(&a17);
  _Unwind_Resume(a1);
}

void sub_1000ECD9C(std::string *a1@<X8>)
{
  v2 = v8;
  sub_1000ECEAC(v8);
  v3 = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v4 = v9;
  v5 = v8[0];
  v6 = v8[1];
  if ((v9 & 0x80u) != 0)
  {
    v2 = v8[0];
  }

  if ((v9 & 0x80) != 0)
  {
    goto LABEL_6;
  }

  while (v3 < v4)
  {
    while (1)
    {
      if (v3)
      {
        std::string::push_back(a1, 58);
      }

      v7 = *(v2 + v3);
      if (v7 != 48)
      {
        std::string::push_back(a1, v7);
      }

      std::string::push_back(a1, *(v2 + v3 + 1));
      v3 += 2;
      if ((v4 & 0x80) == 0)
      {
        break;
      }

LABEL_6:
      if (v3 >= v6)
      {

        operator delete(v5);
        return;
      }
    }
  }
}

void sub_1000ECE84(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  if (v3 < 0)
  {
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000ECEAC@<X0>(_BYTE *a2@<X8>)
{
  sub_10003848C(v11);
  v3 = v12;
  v4 = &v12 + *(v12 - 24);
  if (*(v4 + 36) == -1)
  {
    std::ios_base::getloc((&v12 + *(v12 - 24)));
    v5 = std::locale::use_facet(&v21, &std::ctype<char>::id);
    (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v21);
    v3 = v12;
  }

  *(v4 + 36) = 48;
  *(v15 + *(v3 - 24)) = 12;
  *(&v12 + *(v3 - 24) + 8) = *(&v12 + *(v3 - 24) + 8) & 0xFFFFFFB5 | 8;
  std::ostream::operator<<();
  if ((v20 & 0x10) != 0)
  {
    v7 = v19;
    if (v19 < v16)
    {
      v19 = v16;
      v7 = v16;
    }

    v8 = v15[3];
  }

  else
  {
    if ((v20 & 8) == 0)
    {
      v6 = 0;
      a2[23] = 0;
      goto LABEL_16;
    }

    v8 = v15[0];
    v7 = v15[2];
  }

  v6 = v7 - v8;
  if (v7 - v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  a2[23] = v6;
  if (v6)
  {
    memmove(a2, v8, v6);
  }

LABEL_16:
  a2[v6] = 0;
  v12 = v9;
  if (v18 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v14);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1000ED1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000ED2C0(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_1000ED2E4(const void *a1)
{
  if (a1)
  {
    if (CFEqual(a1, kCTRegistrationStatusNotRegistered))
    {
      return 1;
    }

    else if (CFEqual(a1, kCTRegistrationStatusSearching))
    {
      return 2;
    }

    else if (CFEqual(a1, kCTRegistrationStatusDenied))
    {
      return 3;
    }

    else if (CFEqual(a1, kCTRegistrationStatusRegisteredHome))
    {
      return 4;
    }

    else if (CFEqual(a1, kCTRegistrationStatusRegisteredRoaming))
    {
      return 5;
    }

    else if (CFEqual(a1, kCTRegistrationStatusEmergencyOnly))
    {
      return 6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v3 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#Warning CELL_LOC: fromRegistrationStatus(statusStr): statusStr == NULL", v4, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1018CA76C();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000ED4C4(uint64_t a1, _BYTE *a2)
{
  v4 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  if (!*(a1 + 296))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v13 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "WifiService, getPower, fDpcSource is NULL", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_16;
    }

    sub_1018CD5B4(buf);
    LOWORD(v16) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "WifiService, getPower, fDpcSource is NULL", &v16, 2);
    v12 = v15;
    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLWifiService::getPower(BOOL &)", "%s\n", v15);
    goto LABEL_19;
  }

  if (!*(a1 + 312) || !*(a1 + 304))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 304);
      v7 = *(a1 + 312);
      *buf = 134349312;
      v21 = v7;
      v22 = 2050;
      v23 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "WifiService, getPower, device/manager is NULL, %{public}p, %{public}p", buf, 0x16u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_16;
    }

    sub_1018CD5B4(buf);
    v10 = *(a1 + 304);
    v9 = *(a1 + 312);
    v16 = 134349312;
    v17 = v9;
    v18 = 2050;
    v19 = v10;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "WifiService, getPower, device/manager is NULL, %{public}p, %{public}p", &v16, 22);
    v12 = v11;
    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLWifiService::getPower(BOOL &)", "%s\n", v11);
LABEL_19:
    if (v12 != buf)
    {
      free(v12);
    }

LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  *a2 = *(a1 + 552);
  v5 = 1;
LABEL_17:
  (*(*v4 + 24))(v4);
  return v5;
}

void sub_1000ED7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_1000ED87C(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (objc_opt_class())
  {
    memset(&__p, 0, sizeof(__p));
    if ([a4 isValidCKP])
    {
      v8 = sub_1000184F4(a1, a4);
      if (v8)
      {
        objc_msgSend_cppClientKey(v8);
      }

      else
      {
        memset(buf, 0, 24);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = *buf;
    }

    else
    {
      sub_100006044(&__p, [@"com.apple.locationd.all-location-clients-stop" UTF8String]);
    }

    v10 = sub_1005D7C24(a3, &__p);
    v11 = v10;
    if (v10 && *(v10 + 5) > 0.0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v12 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 68289283;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2081;
        *&buf[20] = p_p;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Updating location consumption info on stop, Client:%{private, location:escape_only}s}", buf, 0x1Cu);
      }

      Current = CFAbsoluteTimeGetCurrent();
      v15 = *(v11 + 5);
      if (Current <= v15)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v17 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
        {
          v18 = v11[5];
          *buf = 68289538;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2050;
          *&buf[20] = v18;
          v25 = 2050;
          v26 = Current;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Detected CFAbsoluteTime rollback when writing usage score, PreviousTimestamp:%{public}f, Timestamp:%{public}f}", buf, 0x26u);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }
        }

        v19 = off_1025D47A8;
        if (os_signpost_enabled(off_1025D47A8))
        {
          v20 = v11[5];
          *buf = 68289538;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2050;
          *&buf[20] = v20;
          v25 = 2050;
          v26 = Current;
          _os_signpost_emit_with_name_impl(dword_100000000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Detected CFAbsoluteTime rollback when writing usage score", "{msg%{public}.0s:Detected CFAbsoluteTime rollback when writing usage score, PreviousTimestamp:%{public}f, Timestamp:%{public}f}", buf, 0x26u);
        }

        v16 = 0;
      }

      else
      {
        v16 = (Current - v15);
      }

      *(v11 + 12) += v16;
      v11[5] = 0;
      v21 = objc_alloc_init(CLPLocationConsumptionScoreInfo);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &__p;
      }

      else
      {
        v22 = __p.__r_.__value_.__r.__words[0];
      }

      [v21 setClientKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v22, __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2])}];
      [v21 setStopTime:Current];
      [v21 setScore:v16];
      [a2 writeSecondaryObject:v21 toField:1];
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPLocationConsumptionScoreInfo doesn't exist in this platform.}", buf, 0x12u);
    }
  }
}

id sub_1000EDD7C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10001A3E8(a1, a2);
  if (!sub_1000F4760(v5, v6))
  {
    return 0;
  }

  v7 = sub_1000F70DC(a2, a3);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (v7 != 2)
  {
    v11 = [a2 bundlePath];
    if (v11)
    {
      v12 = v11;
      v9 = [STExecutableIdentity alloc];
      v10 = v12;
      goto LABEL_7;
    }

    v16 = [a2 executablePath];
    if (v16)
    {
      v13 = [[STExecutableIdentity alloc] initWithExecutablePath:v16];
      goto LABEL_8;
    }

    v17 = [a2 bundleId];
    if (v17)
    {
      v13 = [[STExecutableIdentity alloc] initWithApplicationBundleIdentifier:v17];
      goto LABEL_8;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v18 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v21 = 68289282;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2114;
      v26 = a2;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CreateAttribution CLClientKeyPath identity did not return a valid anchor type, Client:%{public, location:escape_only}@}", &v21, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v19 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v21 = 68289282;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2114;
      v26 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#CreateAttribution CLClientKeyPath identity did not return a valid anchor type", "{msg%{public}.0s:#CreateAttribution CLClientKeyPath identity did not return a valid anchor type, Client:%{public, location:escape_only}@}", &v21, 0x1Cu);
    }

    return 0;
  }

  v9 = [STExecutableIdentity alloc];
  v10 = @"/System/Library/LocationBundles/Traffic.bundle";
LABEL_7:
  v13 = [v9 initWithBundlePath:v10];
LABEL_8:
  v14 = [[STActivityAttribution alloc] initWithAttributedEntity:{objc_msgSend([STAttributedEntity alloc], "initWithExecutableIdentity:website:systemService:", v13, objc_msgSend(a2, "website"), (v8 >> 1) & 1)}];
  v15 = [STLocationStatusDomainLocationAttribution alloc];

  return [v15 initWithLocationState:1 activityAttribution:v14 eligibleDisplayModes:v8];
}

void sub_1000EE1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void *sub_1000EE1D0(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  result = sub_1000EE218(a1, 0, a2, a3, a4, a5);
  *result = off_10246A6F8;
  return result;
}

uint64_t sub_1000EE218(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = &off_102456910;
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

void sub_1000EE3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_1000EE4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_1000EE4D8(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_102460F80;
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

uint64_t sub_1000EE5BC(uint64_t a1)
{
  result = *(a1 + 72);
  if (!result)
  {
    v3 = [objc_msgSend(*(a1 + 8) "vendor")];
    *(a1 + 72) = v3;
    [v3 registerDelegate:*(a1 + 48) inSilo:{objc_msgSend(*(a1 + 8), "silo")}];
    return *(a1 + 72);
  }

  return result;
}

void sub_1000EE62C(uint64_t a1, void *a2, double a3)
{
  if (qword_1025D47B0 != -1)
  {
    sub_101A83044();
  }

  v6 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    *&buf[4] = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = [objc_msgSend(a2 "description")];
    v19 = 2050;
    v20 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Accuracy enablement assertion taken, client:%{public, location:escape_only}s, accuracy:%{public}f}", buf, 0x26u);
  }

  for (i = *(a1 + 256); i; i = *i)
  {
    v8 = i[4];
    if (v8 <= a2)
    {
      if (v8 >= a2)
      {
        goto LABEL_11;
      }

      ++i;
    }
  }

  v9 = a2;
LABEL_11:
  v13 = a2;
  *buf = &v13;
  *(sub_1000EE7A4(a1 + 248, &v13, &unk_101C66300, buf) + 5) = a3;
  v10 = sub_1000EE874(a1);
  v11 = *(a1 + 128);
  Current = CFAbsoluteTimeGetCurrent();
  sub_1000EEA08(v11, v10, Current);
}

void *sub_1000EE7A4(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
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

BOOL sub_1000EE874(uint64_t a1)
{
  v1 = *(a1 + 248);
  v2 = (a1 + 256);
  if (v1 == (a1 + 256))
  {
    return 1;
  }

  v3 = qword_1025D47B0;
  v4 = 1.79769313e308;
  do
  {
    if (v3 != -1)
    {
      sub_101A83058();
    }

    v5 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(v1 + 5);
      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:shouldLocalGPSBeRestricted,list, accuracy:%{public}f}", buf, 0x1Cu);
      v3 = qword_1025D47B0;
    }

    else
    {
      v3 = -1;
    }

    if (v1[5] < v4)
    {
      v4 = v1[5];
    }

    v7 = *(v1 + 1);
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = *(v1 + 2);
        v9 = *v8 == v1;
        v1 = v8;
      }

      while (!v9);
    }

    v1 = v8;
  }

  while (v8 != v2);
  return v4 >= 100.0;
}

void sub_1000EEA08(_BYTE *a1, uint64_t a2, double a3)
{
  if (qword_1025D47B0 != -1)
  {
    sub_101A7D5D0();
  }

  v6 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "setLocalGPSRestricted,%d", v7, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7D7EC(a2);
  }

  if (a1[92] != a2 && a1[93] == 1)
  {
    a1[92] = a2;
    (*(*a1 + 136))(a1, a2, a3);
  }
}

void sub_1000EEBB4(uint64_t a1, int a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
  *buf = 0;
  v4 = sub_10000608C(a1, buf, 1);
  *buf = 1;
  v5 = sub_10000608C(a1, buf, 1);
  *buf = 2;
  v6 = sub_10000608C(a1, buf, 1);
  v7 = v6;
  v8 = __p + 4;
  if (v4 >= 1)
  {
    HIBYTE(v15) = 4;
    v9 = 1953719618;
LABEL_5:
    LODWORD(__p[0]) = v9;
    goto LABEL_6;
  }

  if (v5 >= 1)
  {
    HIBYTE(v15) = 4;
    v9 = 1701734726;
    goto LABEL_5;
  }

  if (v6 < 1)
  {
    HIBYTE(v15) = 4;
    v9 = 1701736270;
    goto LABEL_5;
  }

  v8 = __p + 6;
  HIBYTE(v15) = 6;
  qmemcpy(__p, "Coarse", 6);
LABEL_6:
  *v8 = 0;
  if (qword_1025D4620 != -1)
  {
    sub_101919D68();
  }

  v10 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67241218;
    v26 = v4;
    v27 = 1026;
    v28 = v5;
    v29 = 1026;
    v30 = v7;
    v31 = 2082;
    v32 = __p;
    v33 = 1026;
    v34 = a2;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "@ClxClient, accuracy, %{public}d, %{public}d, %{public}d, level, %{public}s, reg?, %{public}d", buf, 0x24u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101919D90(buf);
    v11 = __p;
    if (v15 < 0)
    {
      v11 = __p[0];
    }

    v16[0] = 67241218;
    v16[1] = v4;
    v17 = 1026;
    v18 = v5;
    v19 = 1026;
    v20 = v7;
    v21 = 2082;
    v22 = v11;
    v23 = 1026;
    v24 = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "@ClxClient, accuracy, %{public}d, %{public}d, %{public}d, level, %{public}s, reg?, %{public}d", v16, 36);
    v13 = v12;
    sub_100152C7C("Generic", 1, 0, 2, "void CLFilteredLocationController::logRequiredNotificationLevel(BOOL)", "%s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000EEE8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFAbsoluteTime sub_1000EEEC0(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (!sub_10000608C(a1, &v5, 1))
  {
    v6 = 2;
    if (!sub_10000608C(a1, &v6, 1))
    {
      v7 = 1;
      if (!sub_10000608C(a1, &v7, 1))
      {
        return 1.79769313e308;
      }
    }
  }

  if (*(a1 + 1032) >= 0.0 && *(a2 + 20) >= 0.0)
  {
    return *(a2 + 76) + *(a1 + 1040);
  }

  return CFAbsoluteTimeGetCurrent();
}

void sub_1000EEF78(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v25[0] = 0;
  v25[1] = "regular";
  v25[2] = 1;
  v25[3] = "fine";
  v25[4] = 2;
  v25[5] = "coarse";
  __asm { FMOV            V0.2D, #-1.0 }

  v14 = _Q0;
  do
  {
    v9 = v25[v3 + 1];
    v19 = v25[v3];
    *buf = v19;
    if (sub_10000608C(a1, buf, 1))
    {
      if ((v2 & 1) == 0)
      {
        v15 = v14;
        v16 = 0;
        v18 = 0;
        v17 = sub_1000F44E4(a1, v19);
        if (qword_1025D47A0 != -1)
        {
          sub_101919C28();
        }

        v10 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 1024;
          *&buf[14] = v17;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Now registered for %s location notifications, operating mode %d", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D47A0 != -1)
          {
            sub_101919C28();
          }

          v20 = 136315394;
          v21 = v9;
          v22 = 1024;
          v23 = v17;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "Now registered for %s location notifications, operating mode %d", &v20, 18);
          v12 = v11;
          sub_100152C7C("Generic", 1, 0, 2, "void CLFilteredLocationController::onLocationTimer()", "%s\n", v11);
          if (v12 != buf)
          {
            free(v12);
          }
        }

        *buf = &v19;
        if (*(sub_100007FA0(a1 + 1048, &v19, &unk_101C66300, buf) + 32) == 1)
        {
          sub_100109ECC(*(a1 + 168), &v19, &v15);
        }

        sub_10002FA64(&v15);
      }

      v2 = 1;
    }

    else
    {
      [*(*(a1 + 168) + 16) unregister:*(*(a1 + 168) + 8) forNotification:v19];
      *buf = &v19;
      *(sub_100007FA0(a1 + 1048, &v19, &unk_101C66300, buf) + 32) = 0;
    }

    v3 += 2;
  }

  while (v3 != 6);
  if ((v2 & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101919C28();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:no more location clients - not re-registering}", buf, 0x12u);
    }
  }
}

uint64_t sub_1000EF310(char *a1, int a2, int *a3, uint64_t a4)
{
  v6 = a2;
  v15 = a2;
  if (qword_1025D47A0 != -1)
  {
    sub_101919C50();
  }

  v8 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = &v15;
    v9 = sub_1000488C8((a1 + 80), &v15, &unk_101C66300, buf)[8];
    v10 = *a3;
    v11 = *(a4 + 8);
    v12 = *(a4 + 20);
    *buf = 68290050;
    *&buf[4] = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2114;
    v20 = v9;
    v21 = 2050;
    v22 = v10;
    v23 = 2050;
    v24 = v11;
    v25 = 1026;
    v26 = v12;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLIENT: registerForNotification, client:%{public, location:escape_only}@, notification:%{public, location:CLLocationProvider_Type::Notification}lld, distanceFilter:%{public}.1f, operatingMode:%{public}d}", buf, 0x36u);
    v6 = v15;
  }

  v13 = sub_100044404(a1, v6, a3, a4);
  if (v13 && *a3 <= 2)
  {
    sub_1000EEBB4(a1, 1);
    sub_1000EF7C4(a1);
  }

  return v13;
}

uint64_t sub_1000EF4A0(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v6 = 0;
  v7 = *a2;
  if (*a2 > 0x27)
  {
    goto LABEL_5;
  }

  if (((1 << v7) & 0x8000000038) == 0)
  {
    if (((1 << v7) & 3) != 0)
    {
      LODWORD(v6) = sub_1000F106C(a1 + 184, a3);
    }

LABEL_5:
    if (qword_1026590D0 != -1)
    {
      sub_10191A914();
    }

    if (v6)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101919C50();
      }

      v8 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v9 = *a2;
        v10 = *(a3 + 20);
        *buf = 68289795;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *&buf[20] = v9;
        v20 = 2050;
        v21 = v10;
        v22 = 2049;
        v23 = sub_100023764(a3);
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#LastConfLoc,get cached notification, notification:%{public, location:CLLocationProvider_Type::Notification}lld, hunc:%{public}.3f, hash:0x%{private}llx}", buf, 0x30u);
      }

      if (byte_1026590C8 != 1)
      {
        return 1;
      }

      v11 = sub_100048D98(*a2);
      sub_10000EC00(&v18, v11);
      v12 = std::string::insert(&v18, 0, "LastConfLoc_", 0xCuLL);
      v13 = *&v12->__r_.__value_.__l.__data_;
      *&buf[16] = *(&v12->__r_.__value_.__l + 2);
      *buf = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (!sub_100044B2C(a1, a2, a3))
      {
        return 0;
      }

      if (byte_1026590C8 != 1)
      {
        return 1;
      }

      v14 = sub_100048D98(*a2);
      sub_10000EC00(&v18, v14);
      v15 = std::string::insert(&v18, 0, "LastCachedLoc_", 0xEuLL);
      v16 = *&v15->__r_.__value_.__l.__data_;
      *&buf[16] = *(&v15->__r_.__value_.__l + 2);
      *buf = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }
    }

    sub_10000EC00(&v18, "CachedLocs");
    sub_100710214(buf, a3, &v18);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    return 1;
  }

  return v6;
}

void sub_1000EF768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000EF7C4(void *a1)
{
  *buf = 0;
  if (sub_10000608C(a1, buf, 1) || (*buf = 2, sub_10000608C(a1, buf, 1)) || (*buf = 1, sub_10000608C(a1, buf, 1)))
  {
    v2 = 0;
    v3 = 0;
    v45 = a1;
    v4 = a1 + 8;
    v5 = -1.0;
    do
    {
      v6 = *v4;
      if (*v4)
      {
        v7 = dword_101C8A218[v2];
        v8 = a1 + 8;
        do
        {
          if (*(v6 + 32) >= v7)
          {
            v8 = v6;
          }

          v6 = *(v6 + 8 * (*(v6 + 32) < v7));
        }

        while (v6);
        if (v8 != v4 && v7 >= *(v8 + 8))
        {
          v9 = v8[5];
          if (v9 != (v8 + 6))
          {
            do
            {
              if (qword_1025D47A0 != -1)
              {
                sub_101919C28();
              }

              v10 = off_1025D47A8;
              if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
              {
                v11 = (&off_10246CB98)[v2];
                v12 = v8[7];
                v13 = *(v9 + 6);
                *buf = 136315650;
                v51 = v11;
                *v52 = 2048;
                *&v52[2] = v12;
                *&v52[10] = 2048;
                *&v52[12] = v13;
                _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "CLIENT: notification, %s, clients, %lu, distanceFilter, %.1lf", buf, 0x20u);
              }

              if (sub_10000A100(121, 2))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47A0 != -1)
                {
                  sub_101919C28();
                }

                v17 = (&off_10246CB98)[v2];
                v18 = v8[7];
                v19 = *(v9 + 6);
                *v47 = 136315650;
                *&v47[4] = v17;
                *&v47[12] = 2048;
                *&v47[14] = v18;
                v48 = 2048;
                v49 = v19;
                LODWORD(v43) = 32;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "CLIENT: notification, %s, clients, %lu, distanceFilter, %.1lf", v47, v43, v44);
                v21 = v20;
                sub_100152C7C("Generic", 1, 0, 2, "void CLFilteredLocationController::checkMinimumDistanceFilter()", "%s\n", v20);
                if (v21 != buf)
                {
                  free(v21);
                }
              }

              if ((v3 & (v9[6] >= v5)) == 0)
              {
                v5 = v9[6];
              }

              v14 = *(v9 + 1);
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
                  v15 = *(v9 + 2);
                  _ZF = *v15 == v9;
                  v9 = v15;
                }

                while (!_ZF);
              }

              v3 = 1;
              v9 = v15;
            }

            while (v15 != (v8 + 6));
          }
        }
      }

      ++v2;
    }

    while (v2 != 3);
    if (qword_1025D47A0 != -1)
    {
      sub_101919C28();
    }

    v22 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(v45 + 1032);
      *buf = 134218240;
      v51 = *&v5;
      *v52 = 2048;
      *&v52[2] = v23;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "CLIENT: distanceFilter, %.1lf, fDistanceFilter, %.1lf", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101919DD4(v5);
    }

    if (v5 > 0.0 && v5 == *(v45 + 1032))
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101919C28();
      }

      v24 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v25 = *(v45 + 1032);
        [*(v45 + 1024) nextFireTime];
        v27 = v26;
        [*(v45 + 1024) nextFireDelay];
        *buf = 134218496;
        v51 = v25;
        *v52 = 2048;
        *&v52[2] = v27;
        *&v52[10] = 2048;
        *&v52[12] = v28;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "minimum distance unchanged from %.3f, still requesting location at %.3f (%.3fs away)", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191A214((v45 + 1032), v45);
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101919C28();
      }

      v29 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v30 = *(v45 + 1032);
        *buf = 134218240;
        v51 = *&v5;
        *v52 = 2048;
        *&v52[2] = v30;
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "minimum distance changed to %.3f from %.3f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101919EEC(v5);
      }

      *(v45 + 1032) = v5;
      *(v45 + 1040) = v5 / 250.0;
      *buf = 0xFFFF;
      *v52 = 0;
      v51 = 0;
      *&v52[8] = xmmword_101C75BF0;
      __asm { FMOV            V0.2D, #-1.0 }

      v53 = _Q0;
      v54 = _Q0;
      v55 = _Q0;
      v56 = 0;
      v58 = 0;
      v59 = 0;
      v57 = 0xBFF0000000000000;
      v60 = 0;
      v61 = 0xBFF0000000000000;
      v62 = 0x7FFFFFFF;
      v64 = 0;
      v65 = 0;
      v63 = 0;
      v66 = 0;
      if ((*(*v45 + 232))(v45, buf))
      {
        v35 = sub_1000EEEC0(v45, buf);
        if (v35 <= CFAbsoluteTimeGetCurrent() + 15.0)
        {
          if (qword_1025D47A0 != -1)
          {
            sub_101919C28();
          }

          v39 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
          {
            Current = CFAbsoluteTimeGetCurrent();
            *v47 = 134217984;
            *&v47[4] = v35 - Current;
            _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "scheduling location requests for %.3fs later", v47, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10191A004();
          }
        }

        else
        {
          if (qword_1025D47A0 != -1)
          {
            sub_101919C28();
          }

          v36 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
          {
            v37 = CFAbsoluteTimeGetCurrent();
            *v47 = 134217984;
            *&v47[4] = v35 - v37;
            _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "turning off location requests and re-scheduling for %.3fs later", v47, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10191A10C();
          }

          [*(*(v45 + 168) + 16) unregister:*(*(v45 + 168) + 8) forNotification:0];
          [*(*(v45 + 168) + 16) unregister:*(*(v45 + 168) + 8) forNotification:1];
          [*(*(v45 + 168) + 16) unregister:*(*(v45 + 168) + 8) forNotification:2];
          v46 = 0;
          *v47 = &v46;
          *(sub_100007FA0(v45 + 1048, &v46, &unk_101C66300, v47) + 32) = 0;
          v46 = 1;
          *v47 = &v46;
          *(sub_100007FA0(v45 + 1048, &v46, &unk_101C66300, v47) + 32) = 0;
          v46 = 2;
          *v47 = &v46;
          *(sub_100007FA0(v45 + 1048, &v46, &unk_101C66300, v47) + 32) = 0;
        }

        [*(v45 + 1024) setNextFireTime:v35];
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_101919C28();
        }

        v38 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          *v47 = 68289026;
          *&v47[4] = 0;
          *&v47[8] = 2082;
          *&v47[10] = "";
          _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:no location currently available, starting it immediately}", v47, 0x12u);
        }

        [*(v45 + 1024) setNextFireDelay:0.0];
      }
    }

    if (*(v45 + 1096) != -1.0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101919C28();
      }

      v41 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v42 = *(v45 + 1096);
        *buf = 134218240;
        v51 = 0xBFF0000000000000;
        *v52 = 2048;
        *&v52[2] = v42;
        _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "wake interval changed to %.3f from %.3f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191A368((v45 + 1096));
      }

      *(v45 + 1096) = 0xBFF0000000000000;
      sub_10070FF98(v45);
    }
  }

  else
  {
    a1[129] = 0xBFF0000000000000;
    a1[130] = 0xBFF0000000000000;
  }
}

uint64_t sub_1000F015C(uint64_t a1, unsigned int *a2)
{
  sub_1000F4588();
  v4 = sub_10010A1AC(a1, a2);
  v105 = v4;
  if (qword_1025D4600 != -1)
  {
    sub_101BCFF1C();
  }

  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v6 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v7 = *a2;
    v8 = sub_100048D98(*a2);
    *buf = 67240706;
    *&buf[4] = v7;
    *&buf[8] = 2082;
    *&buf[10] = v8;
    *&buf[18] = 1026;
    *&buf[20] = v4;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLIENT:registerForNotificationInternal,notification,%{public}d,%{public}s,granularity,%{public}d", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101BCFF58();
  }

  switch(*a2)
  {
    case 0u:
    case 1u:
    case 2u:
      if (qword_1025D4600 != -1)
      {
        sub_101BCFF30();
      }

      v27 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v28 = *(a1 + 160);
        v29 = *(a1 + 161);
        *buf = 67240448;
        *&buf[4] = v28;
        *&buf[8] = 1026;
        *&buf[10] = v29;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "Before register,required granularity,%{public}d,active granularity,%{public}d", buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BD0368(a1);
      }

      *buf = 0xFFFF;
      *&buf[12] = 0;
      *&buf[4] = 0;
      *&buf[20] = xmmword_101C75BF0;
      __asm { FMOV            V0.2D, #-1.0 }

      v116 = _Q0;
      v117 = _Q0;
      v118 = _Q0;
      v119 = 0;
      v121 = 0;
      v122 = 0;
      v120 = 0xBFF0000000000000;
      v124 = 0xBFF0000000000000;
      v123 = 0;
      v125 = 0x7FFFFFFF;
      v127 = 0;
      v128 = 0;
      v126 = 0;
      v129 = 0;
      v35 = *(a1 + 280);
      if (v35 && (*(*v35 + 176))(v35, buf) && *&buf[20] > 0.0)
      {
        *v106 = 0;
        v36 = sub_10000608C(a1, v106, 1);
        LODWORD(v111) = 1;
        v37 = sub_10000608C(a1, &v111, 1);
        v104[0] = 2;
        v38 = sub_10000608C(a1, v104, 1);
        sub_10010F650(a1 + 5296, a2, v36, v37, v38, *&buf[20]);
      }

      v39 = v105;
      if (v105 > *(a1 + 160) || (v40 = sub_100027514((a1 + 800), v30), v39 = v105, v40))
      {
        *(a1 + 160) = v39;
      }

      if (*(a1 + 161) < v39)
      {
        sub_10010FB88(a1, &v105);
      }

      goto LABEL_79;
    case 3u:
    case 4u:
    case 6u:
    case 0xAu:
    case 0x27u:
      v9 = *(a1 + 256);
      if (v9 != (a1 + 264))
      {
        do
        {
          if (qword_1025D4600 != -1)
          {
            sub_101BCFF30();
          }

          v10 = p_info[193];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v11 = *a2;
            v12 = sub_1003DD9F8(a1 + 232, v9 + 8);
            v15 = v12[1];
            v13 = v12 + 1;
            v14 = v15;
            if (*(v13 + 23) >= 0)
            {
              v14 = v13;
            }

            *buf = 67240450;
            *&buf[4] = v11;
            p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
            *&buf[8] = 2082;
            *&buf[10] = v14;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "registering notification,%{public}d,location provider,%{public}s", buf, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4600 != -1)
            {
              sub_101BCFF30();
            }

            v19 = p_info[193];
            v20 = *a2;
            v21 = sub_1003DD9F8(a1 + 232, v9 + 8);
            v24 = v21[1];
            v22 = v21 + 1;
            v23 = v24;
            if (*(v22 + 23) >= 0)
            {
              v23 = v22;
            }

            *v106 = 67240450;
            *&v106[4] = v20;
            *&v106[8] = 2082;
            *&v106[10] = v23;
            LODWORD(v103) = 18;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v19, 2, "registering notification,%{public}d,location provider,%{public}s", v106, v103);
            v26 = v25;
            sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLLocationController::registerForNotificationInternal(const CLLocationProvider_Type::Notification &)", "%s\n", v25);
            if (v26 != buf)
            {
              free(v26);
            }

            p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          }

          [*(*(v9 + 5) + 16) register:*(*(v9 + 5) + 8) forNotification:*a2 registrationInfo:0];
          v16 = *(v9 + 1);
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = *(v9 + 2);
              _ZF = *v17 == v9;
              v9 = v17;
            }

            while (!_ZF);
          }

          v9 = v17;
        }

        while (v17 != (a1 + 264));
      }

      return 1;
    case 8u:
      if (*(a1 + 336))
      {
        *buf = a1 + 336;
        v62 = sub_10010A224(a1 + 256, (a1 + 336), &unk_101C66300, buf);
        [*(v62[5] + 16) register:*(v62[5] + 8) forNotification:8 registrationInfo:0];
      }

LABEL_79:
      *(&v111 + 1) = 0xBFF0000000000000;
      v112 = 0;
      v114 = 0;
      *&v111 = sub_100107BB8(a1);
      v113 = sub_1000F44E4(a1, 0);
      v63 = *(a1 + 256);
      if (v63 != (a1 + 264))
      {
        do
        {
          if (*sub_1003DD9F8(a1 + 232, v63 + 8) != *(a1 + 336) || !sub_100027514((a1 + 800), v64))
          {
            if (qword_1025D4600 != -1)
            {
              sub_101BCFF30();
            }

            v69 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              v70 = v111;
              v71 = sub_1003DD9F8(a1 + 232, v63 + 8);
              v74 = v71[1];
              v72 = v71 + 1;
              v73 = v74;
              if (*(v72 + 23) >= 0)
              {
                v75 = v72;
              }

              else
              {
                v75 = v73;
              }

              v76 = *(sub_1003DD9F8(a1 + 232, v63 + 8) + 871);
              *buf = 134349826;
              *&buf[4] = v70;
              *&buf[12] = 2082;
              *&buf[14] = v75;
              *&buf[22] = 1026;
              *&buf[24] = v76;
              *&buf[28] = 1026;
              *&buf[30] = v113;
              _os_log_impl(dword_100000000, v69, OS_LOG_TYPE_DEBUG, "CLIENT:registerForNotificationInternal,propagate,desiredAccuracy,%{public}.1lf,name,%{public}s,active,%{public}d,operating mode,%{public}d", buf, 0x22u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4600 != -1)
              {
                sub_101BCFF30();
              }

              v80 = qword_1025D4608;
              v81 = v111;
              v82 = sub_1003DD9F8(a1 + 232, v63 + 8);
              v85 = v82[1];
              v83 = v82 + 1;
              v84 = v85;
              if (*(v83 + 23) >= 0)
              {
                v86 = v83;
              }

              else
              {
                v86 = v84;
              }

              v87 = *(sub_1003DD9F8(a1 + 232, v63 + 8) + 871);
              *v106 = 134349826;
              *&v106[4] = v81;
              *&v106[12] = 2082;
              *&v106[14] = v86;
              v107 = 1026;
              v108 = v87;
              v109 = 1026;
              v110 = v113;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v80, 2, "CLIENT:registerForNotificationInternal,propagate,desiredAccuracy,%{public}.1lf,name,%{public}s,active,%{public}d,operating mode,%{public}d", v106, 34);
              v89 = v88;
              sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLLocationController::registerForNotificationInternal(const CLLocationProvider_Type::Notification &)", "%s\n", v88);
              if (v89 != buf)
              {
                free(v89);
              }
            }

            v77 = *(v63 + 5);
            *buf = 0;
            sub_100109ECC(v77, buf, &v111);
          }

          if (qword_1025D4600 != -1)
          {
            sub_101BCFF30();
          }

          v65 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v65, OS_LOG_TYPE_DEBUG, "skipping last updateNotificationRegistrationInfo for gps as best accuracy does not require gps", buf, 2u);
          }

          v66 = sub_10000A100(121, 2);
          if (v66)
          {
            sub_101BD0468(v104, v104 + 1);
          }

          v68 = sub_10000B1F8(v66, v67);
          *buf = 1;
          *buf = sub_10001A6B0(v68, buf);
          sub_1003E0928((a1 + 800), buf);
          sub_10018E860(a1 + 800, *(a1 + 712));
          *(a1 + 682) = 1;
          sub_10017ECA4(a1);
          v78 = *(v63 + 1);
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
              v79 = *(v63 + 2);
              _ZF = *v79 == v63;
              v63 = v79;
            }

            while (!_ZF);
          }

          v63 = v79;
        }

        while (v79 != (a1 + 264));
      }

      return 1;
    case 0xFu:
      if (*(a1 + 336))
      {
        __asm { FMOV            V0.2D, #-1.0 }

        *buf = _Q0;
        *&buf[16] = 0;
        *&buf[24] = 0;
        *&buf[20] = sub_1000F44E4(a1, 15);
        *v106 = a1 + 336;
        sub_10010A224(a1 + 256, (a1 + 336), &unk_101C66300, v106);
        sub_10002FA64(buf);
      }

      if (qword_1025D4600 != -1)
      {
        sub_101BCFF30();
      }

      v101 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v101, OS_LOG_TYPE_FAULT, "BATCH:unsupported platform", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101BD0284();
      }

      return 1;
    case 0x11u:
      if (qword_1025D4600 != -1)
      {
        sub_101BCFF30();
      }

      v95 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v95, OS_LOG_TYPE_DEBUG, "CLMM,RunMapMatching is turned on", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BD01A0();
      }

      *(a1 + 675) = 1;
      (*(**(a1 + 280) + 216))(*(a1 + 280));
      return 1;
    case 0x16u:
      if (!*(a1 + 328))
      {
        if (qword_1025D4630 != -1)
        {
          sub_101BD0094();
        }

        v60 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_DEFAULT, "@WsbReg, kNotificationWifiLocationBatched unsupported", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BD00BC();
        }
      }

      return 1;
    case 0x1Cu:
      v41 = 0;
      v42 = *(a1 + 352);
      LODWORD(v111) = *(a1 + 340);
      DWORD1(v111) = v42;
      do
      {
        if (*(&v111 + v41))
        {
          if (qword_1025D4600 != -1)
          {
            sub_101BCFF30();
          }

          v43 = p_info[193];
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            v44 = *a2;
            v45 = sub_1003DD9F8(a1 + 232, (&v111 + v41));
            v48 = v45[1];
            v46 = v45 + 1;
            v47 = v48;
            if (*(v46 + 23) >= 0)
            {
              v47 = v46;
            }

            *buf = 67240450;
            *&buf[4] = v44;
            p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
            *&buf[8] = 2082;
            *&buf[10] = v47;
            _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEBUG, "registering notification,%{public}d,location provider,%{public}s", buf, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4600 != -1)
            {
              sub_101BCFF30();
            }

            v50 = p_info[193];
            v51 = *a2;
            v52 = sub_1003DD9F8(a1 + 232, (&v111 + v41));
            v55 = v52[1];
            v53 = v52 + 1;
            v54 = v55;
            if (*(v53 + 23) >= 0)
            {
              v54 = v53;
            }

            *v106 = 67240450;
            *&v106[4] = v51;
            *&v106[8] = 2082;
            *&v106[10] = v54;
            LODWORD(v103) = 18;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v50, 2, "registering notification,%{public}d,location provider,%{public}s", v106, v103);
            v57 = v56;
            sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLLocationController::registerForNotificationInternal(const CLLocationProvider_Type::Notification &)", "%s\n", v56);
            if (v57 != buf)
            {
              free(v57);
            }

            p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          }

          v49 = sub_1003DD9F8(a1 + 256, (&v111 + v41));
          [*(*v49 + 16) register:*(*v49 + 8) forNotification:28 registrationInfo:0];
        }

        v41 += 4;
      }

      while (v41 != 8);
      if (*(a1 + 336))
      {
        v58 = sub_1003DD9F8(a1 + 256, (a1 + 336));
        [*(*v58 + 16) register:*(*v58 + 8) forNotification:28 registrationInfo:0];
      }

      v59 = *(a1 + 280);
      if (v59)
      {
        (*(*v59 + 360))(v59, 1);
      }

      return 1;
    case 0x1Du:
      if (*(a1 + 336))
      {
        v99 = sub_1003DD9F8(a1 + 256, (a1 + 336));
        [*(*v99 + 16) register:*(*v99 + 8) forNotification:29 registrationInfo:0];
      }

      if (*(a1 + 344))
      {
        v100 = sub_1003DD9F8(a1 + 256, (a1 + 344));
        [*(*v100 + 16) register:*(*v100 + 8) forNotification:29 registrationInfo:0];
      }

      sub_100676A88(a1);
      return 1;
    case 0x22u:
      if (!*(a1 + 336))
      {
        return 1;
      }

      v90 = sub_1003DD9F8(a1 + 256, (a1 + 336));
      v92 = *(*v90 + 8);
      v91 = *(*v90 + 16);
      v93 = 34;
      break;
    case 0x23u:
      if (!*(a1 + 336))
      {
        return 1;
      }

      v94 = sub_1003DD9F8(a1 + 256, (a1 + 336));
      v92 = *(*v94 + 8);
      v91 = *(*v94 + 16);
      v93 = 35;
      break;
    case 0x28u:
      if (qword_1025D4600 != -1)
      {
        sub_101BCFF30();
      }

      v96 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(dword_100000000, v96, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:register kNotificationExternalLocationDisablementAssert}", buf, 0x12u);
      }

      if (!*(a1 + 344))
      {
        return 1;
      }

      if (qword_1025D4600 != -1)
      {
        sub_101BCFF30();
      }

      v97 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(dword_100000000, v97, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:registering kNotificationExternalLocationDisablementAssert w/ accessory provider}", buf, 0x12u);
      }

      v98 = sub_1003DD9F8(a1 + 256, (a1 + 344));
      v92 = *(*v98 + 8);
      v91 = *(*v98 + 16);
      v93 = 40;
      break;
    default:
      return 1;
  }

  [v91 register:v92 forNotification:v93 registrationInfo:0];
  return 1;
}

uint64_t sub_1000F106C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 8) silo];
  *(a1 + 832) = 1;
  v4 = sub_1000F1624(a1);
  if (v4)
  {
    v5 = *(a1 + 44);
    *a2 = *(a1 + 28);
    *(a2 + 16) = v5;
    v6 = *(a1 + 60);
    v7 = *(a1 + 76);
    v8 = *(a1 + 108);
    *(a2 + 64) = *(a1 + 92);
    *(a2 + 80) = v8;
    *(a2 + 32) = v6;
    *(a2 + 48) = v7;
    v9 = *(a1 + 124);
    v10 = *(a1 + 140);
    v11 = *(a1 + 156);
    *(a2 + 140) = *(a1 + 168);
    *(a2 + 112) = v10;
    *(a2 + 128) = v11;
    *(a2 + 96) = v9;
    memcpy((a2 + 160), (a1 + 184), 0x201uLL);
    v12 = *(a1 + 704);
    v13 = *(a1 + 712);
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    *(a2 + 680) = v12;
    v14 = *(a2 + 688);
    *(a2 + 688) = v13;
    if (v14)
    {
      sub_100008080(v14);
    }

    v15 = *(a1 + 720);
    v16 = *(a1 + 752);
    *(a2 + 712) = *(a1 + 736);
    *(a2 + 728) = v16;
    *(a2 + 696) = v15;
    v17 = *(a1 + 768);
    v18 = *(a1 + 784);
    v19 = *(a1 + 800);
    *(a2 + 785) = *(a1 + 809);
    *(a2 + 760) = v18;
    *(a2 + 776) = v19;
    *(a2 + 744) = v17;
  }

  return v4;
}

uint64_t sub_1000F1168(float64x2_t *a1, int a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  HIDWORD(v54) = a2;
  *buf = &v54 + 4;
  v10 = sub_1000F1950(&a1[67], &v54 + 1, &unk_101C66300, buf);
  result = sub_100022424(a1, HIDWORD(v54), a3);
  if (!result)
  {
    return result;
  }

  v12 = *a3;
  if (*a3 >= 5)
  {
    if (v12 == 9)
    {
      *(v10 + 8) = 0xFFFF;
      *(v10 + 44) = 0;
      *(v10 + 36) = 0;
      *(v10 + 52) = xmmword_101C75BF0;
      __asm { FMOV            V0.2D, #-1.0 }

      *(v10 + 68) = _Q0;
      *(v10 + 84) = _Q0;
      *(v10 + 100) = _Q0;
      *(v10 + 29) = 0;
      v10[16] = 0;
      v10[17] = 0;
      v10[15] = 0xBFF0000000000000;
      *(v10 + 36) = 0;
      *(v10 + 148) = 0xBFF0000000000000;
      *(v10 + 39) = 0x7FFFFFFF;
      v10[21] = 0;
      v10[22] = 0;
      v10[20] = 0;
      result = 1;
      *(v10 + 184) = 0;
      return result;
    }

    if (v12 != 39)
    {
      return 1;
    }
  }

  v13 = sub_1000F24B8((v10 + 4), a4, 1);
  Current = CFAbsoluteTimeGetCurrent();
  v15 = *(a4 + 76);
  if (v13 || v15 < *(v10 + 108))
  {
    return 0;
  }

  v17 = *(a4 + 20);
  v18 = *(v10 + 52);
  if (v18 < 0.0 || ((v19 = *(a6 + 8), v20 = v18 - v17, v19 >= 0.0) ? (v21 = v19 < v20) : (v21 = 1), v21 || (sub_1001097CC(a1 + 8, (v10 + 4), a4), v19 < v22)))
  {
    if (Current - v15 <= 1.0)
    {
      if (v17 > 0.0)
      {
        v27 = *(a4 + 16);
        *(v10 + 2) = *a4;
        *(v10 + 3) = v27;
        v28 = *(a4 + 32);
        v29 = *(a4 + 48);
        v30 = *(a4 + 80);
        *(v10 + 6) = *(a4 + 64);
        *(v10 + 7) = v30;
        *(v10 + 4) = v28;
        *(v10 + 5) = v29;
        v31 = *(a4 + 96);
        v32 = *(a4 + 112);
        v33 = *(a4 + 128);
        *(v10 + 172) = *(a4 + 140);
        *(v10 + 9) = v32;
        *(v10 + 10) = v33;
        *(v10 + 8) = v31;
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101919C28();
      }

      v23 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v24 = *(a4 + 4);
        v25 = *(a4 + 12);
        v26 = CFAbsoluteTimeGetCurrent() - *(a4 + 76);
        *buf = 134546177;
        *&buf[4] = v24;
        v68 = 2053;
        v69 = v25;
        v70 = 2048;
        v71 = v26;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "<%{sensitive}+.8f,%{sensitive}+.8f> is stale from %.3fs ago, not using for distance filtering", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191A5B4(a4, (a4 + 76));
      }
    }

    return 1;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_101919C28();
  }

  v38 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v39 = *(a6 + 8);
    v40 = *(v10 + 36);
    v41 = *(v10 + 44);
    v42 = *(a4 + 4);
    v43 = *(a4 + 12);
    sub_1001097CC(a1 + 8, (v10 + 4), a4);
    *buf = 134219265;
    *&buf[4] = v39;
    v68 = 2053;
    v69 = v40;
    v70 = 2053;
    v71 = v41;
    v72 = 2053;
    v73 = v42;
    v74 = 2053;
    v75 = v43;
    v76 = 2048;
    v77 = v44;
    _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "distance filter %.2f not exceeded by <%{sensitive}+.8f,%{sensitive}+.8f> and <%{sensitive}+.8f,%{sensitive}+.8f> (distance %.2f)", buf, 0x3Eu);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 != -1)
    {
      sub_101919C28();
    }

    v45 = off_1025D47A8;
    v46 = *(a6 + 8);
    v47 = *(v10 + 36);
    v48 = *(v10 + 44);
    v49 = *(a4 + 4);
    v50 = *(a4 + 12);
    sub_1001097CC(a1 + 8, (v10 + 4), a4);
    v55 = 134219265;
    v56 = v46;
    v57 = 2053;
    v58 = v47;
    v59 = 2053;
    v60 = v48;
    v61 = 2053;
    v62 = v49;
    v63 = 2053;
    v64 = v50;
    v65 = 2048;
    v66 = v51;
    LODWORD(v54) = 62;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v45, 2, "distance filter %.2f not exceeded by <%{sensitive}+.8f,%{sensitive}+.8f> and <%{sensitive}+.8f,%{sensitive}+.8f> (distance %.2f)", &v55, v54);
    v53 = v52;
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLFilteredLocationController::shouldNotifyClient(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &, const char &, CLLocationProvider_Type::RegInfo &)", "%s\n", v52);
    if (v53 != buf)
    {
      free(v53);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000F1624(uint64_t a1)
{
  if (*(a1 + 48) <= 0.0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B4363C();
    }

    v18 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v25[0]) = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "#LastConfLoc,Last confident location not available", v25, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B43D54();
      return 0;
    }
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v3 = (a1 + 104);
    v4 = *(a1 + 104);
    if (Current < v4 + 1800.0)
    {
      if (Current >= v4)
      {
        return 1;
      }

      if (qword_1025D4620 != -1)
      {
        sub_101B4363C();
      }

      v5 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v6 = *v3;
        v25[0] = 134349056;
        *&v25[1] = v6;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#LastConfLoc,#Warning Last confident location is in future,timestamp,%{public}.3f", v25, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B43F70((a1 + 104));
      }

      *(a1 + 28) = 0xFFFF;
      *(a1 + 32) = 0u;
      *(a1 + 48) = xmmword_101C75BF0;
      __asm { FMOV            V0.2D, #-1.0 }

      *(a1 + 64) = _Q0;
      *(a1 + 80) = _Q0;
      *(a1 + 96) = _Q0;
      *(a1 + 112) = 0;
      *(a1 + 116) = 0xBFF0000000000000;
      *(a1 + 124) = 0u;
      *(a1 + 140) = 0;
      *(a1 + 144) = 0xBFF0000000000000;
      *(a1 + 152) = 0x7FFFFFFF;
      *(a1 + 156) = 0;
      *(a1 + 164) = 0u;
      *(a1 + 180) = 0;
      sub_100021ED8(v25);
      memcpy((a1 + 184), v25, 0x201uLL);
      v12 = v26;
      v26 = 0u;
      v13 = *(a1 + 712);
      *(a1 + 704) = v12;
      if (v13)
      {
        sub_100008080(v13);
        v14 = *(&v26 + 1);
        v15 = v32[0];
        *(a1 + 784) = v31;
        *(a1 + 800) = v15;
        *(a1 + 809) = *(v32 + 9);
        v16 = v28;
        *(a1 + 720) = v27;
        *(a1 + 736) = v16;
        v17 = v30;
        *(a1 + 752) = v29;
        *(a1 + 768) = v17;
        if (v14)
        {
          sub_100008080(v14);
        }
      }

      else
      {
        v22 = v32[0];
        *(a1 + 784) = v31;
        *(a1 + 800) = v22;
        *(a1 + 809) = *(v32 + 9);
        v23 = v28;
        *(a1 + 720) = v27;
        *(a1 + 736) = v23;
        v24 = v30;
        *(a1 + 752) = v29;
        *(a1 + 768) = v24;
      }

      return 0;
    }

    if (qword_1025D4620 != -1)
    {
      sub_101B4363C();
    }

    v20 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v21 = Current - *v3;
      v25[0] = 134349312;
      *&v25[1] = v21;
      LOWORD(v25[3]) = 2050;
      *(&v25[3] + 2) = 0x409C200000000000;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#LastConfLoc,Last confident location too old,ageSec,%{public}.3f,maxAgeSec,%{public}.3f", v25, 0x16u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B43E38(v3, Current);
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1000F1950(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    sub_1000F00A4();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 28);
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

uint64_t sub_1000F1A0C(uint64_t a1, _DWORD *a2)
{
  sub_1000F4588();
  if (*a2 >= 3u)
  {
    [*(*(a1 + 168) + 16) register:*(*(a1 + 168) + 8) forNotification:? registrationInfo:?];
  }

  return 1;
}

uint64_t *sub_1000F1A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = 0; i != 3; ++i)
  {
    if (*(a1 + 16))
    {
      v5 = dword_101CFCB5C[i];
      v6 = *(a1 + 16);
      do
      {
        v7 = *(v6 + 7);
        if (v5 >= v7)
        {
          if (v7 >= v5)
          {
            v15 = 0;
            v16 = 0;
            __asm { FMOV            V0.2D, #-1.0 }

            v14 = _Q0;
            return sub_1000F2160(a1, 0, &v14);
          }

          ++v6;
        }

        v6 = *v6;
      }

      while (v6);
    }
  }

  return sub_1001ED860(a1, 0);
}

uint64_t *sub_1000F1AF8(uint64_t a1, unsigned int a2, int a3, __int128 *a4, uint64_t *a5, uint64_t a6)
{
  v18 = a2;
  *&v16 = &v18;
  v11 = *(sub_100007FA0(a6, &v18, &unk_101C66300, &v16) + 32);
  *&v16 = &v18;
  *(sub_100007FA0(a6, &v18, &unk_101C66300, &v16) + 32) = a3;
  if (a3)
  {
    v12 = a4[1];
    v16 = *a4;
    v17 = v12;
    DWORD1(v17) = sub_1000F44E4(a1, v18);
    if (v11)
    {
      sub_100109ECC(*a5, &v18, &v16);
    }

    sub_10002FA64(&v16);
  }

  [*(*a5 + 16) unregister:*(*a5 + 8) forNotification:v18];
  v13 = 0;
  while (1)
  {
    v15 = dword_101CFDDE0[v13];
    *&v16 = &v15;
    result = sub_100007FA0(a6, &v15, &unk_101C66300, &v16);
    if (result[4])
    {
      break;
    }

    if (++v13 == 3)
    {
      return [*(*a5 + 16) unregister:*(*a5 + 8) forNotification:9];
    }
  }

  return result;
}

uint64_t sub_1000F1CE4(void *a1, unsigned int *a2)
{
  sub_1000F4588();
  v4 = *a2;
  if (*a2 >= 3)
  {
    if (v4 != 9)
    {
      [*(a1[25] + 16) register:*(a1[25] + 8) forNotification:*a2 registrationInfo:0];
      v7 = 0;
      while (dword_101CFDAA0[v7] != *a2)
      {
        if (++v7 == 3)
        {
          return 1;
        }
      }

      [*(a1[26] + 16) register:*(a1[26] + 8) forNotification:? registrationInfo:?];
    }
  }

  else
  {
    v5 = a1[16];
    Current = CFAbsoluteTimeGetCurrent();
    sub_1000F1F54(v5, v4, 1, Current);
  }

  return 1;
}

uint64_t sub_1000F1DA0(char *a1, int a2, int *a3, __int128 *a4)
{
  sub_100021AFC(v12);
  if (qword_1025D47B0 != -1)
  {
    sub_101A83058();
  }

  v8 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v9 = (*(*a1 + 128))(a1, a3, v12);
    buf = 68289282;
    v20 = 2082;
    v21 = "";
    v22 = 1026;
    v23 = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:cached location, found:%{public}d}", &buf, 0x18u);
  }

  v10 = sub_100044404(a1, a2, a3, a4);

  if (v17)
  {
    sub_100008080(v17);
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }

  if (v14)
  {
    sub_100008080(v14);
  }

  if (v13)
  {
    sub_100008080(v13);
  }

  return v10;
}

uint64_t sub_1000F1F54(uint64_t a1, int a2, int a3, double a4)
{
  v11 = a2;
  if (qword_1025D47B0 != -1)
  {
    sub_101A7D5D0();
  }

  v8 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2050;
    v17 = a2;
    v18 = 1026;
    v19 = a3;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Client interest changed, notification:%{public, location:CLLocationProvider_Type::Notification}lld, is interested:%{public}d}", buf, 0x22u);
  }

  v9 = a1 + 8;
  if (a3)
  {
    sub_1003C9410(v9, &v11, &v11);
  }

  else
  {
    sub_10004E6E0(v9, &v11);
  }

  return (*(*a1 + 96))(a1, a4);
}

uint64_t *sub_1000F2160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  while (!*(a1 + 16))
  {
LABEL_8:
    if (++v6 == 3)
    {
      if (qword_1025D47B0 != -1)
      {
        sub_101A7D5D0();
      }

      v10 = qword_1025D47B8;
      if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
      {
        v17 = 68289026;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:State is out of sync with registrations}", &v17, 0x12u);
        if (qword_1025D47B0 != -1)
        {
          sub_101A7D564();
        }
      }

      v11 = qword_1025D47B8;
      if (os_signpost_enabled(qword_1025D47B8))
      {
        v17 = 68289026;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "State is out of sync with registrations", "{msg%{public}.0s:State is out of sync with registrations}", &v17, 0x12u);
      }

      return sub_1001ED860(a1, a2);
    }
  }

  v7 = dword_101CFCB5C[v6];
  v8 = *(a1 + 16);
  while (1)
  {
    v9 = *(v8 + 7);
    if (v7 >= v9)
    {
      break;
    }

LABEL_7:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  if (v9 < v7)
  {
    ++v8;
    goto LABEL_7;
  }

  if (v7 | a2)
  {
LABEL_25:
    if (qword_1025D47B0 != -1)
    {
      sub_101A7D564();
    }
  }

  else
  {
    if (*(a1 + 93) != 1 || *(a1 + 92) != 1)
    {
      v7 = 0;
      goto LABEL_25;
    }

    if (qword_1025D47B0 != -1)
    {
      sub_101A7D5D0();
    }

    v13 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 68289026;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Local GPS is forbidden right now.  Downgrading to wifi accuracy}", &v17, 0x12u);
      v7 = 1;
      goto LABEL_25;
    }

    v7 = 1;
  }

  v14 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v15 = *(a3 + 17);
    v17 = 68289794;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2050;
    v22 = a2;
    v23 = 2050;
    v24 = v7;
    v25 = 1026;
    v26 = v15;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Starting location for source, source:%{public, location:CLStreamingAwareLocationProviderStateMachine::LocationSource}lld, notification:%{public, location:CLLocationProvider_Type::Notification}lld, include motion:%{public}d}", &v17, 0x2Cu);
  }

  for (i = 0; i != 12; i += 4)
  {
    result = (***(a1 + 32))(*(a1 + 32), a2);
  }

  return result;
}

BOOL sub_1000F24B8(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && a2)
  {
    if (a3)
    {
      v5 = *(a1 + 88);
      v6 = *(a2 + 88);
      v7 = v5 == -1.0 && v6 == -1.0;
      v8 = v7 || vabdd_f64(v5 + *(a1 + 76), *(a2 + 76) + v6) < 2.22044605e-16;
    }

    else
    {
      v8 = *(a1 + 76) == *(a2 + 76);
    }

    if (*(a1 + 4) != *(a2 + 4) || *(a1 + 12) != *(a2 + 12) || *(a1 + 20) != *(a2 + 20) || *(a1 + 28) != *(a2 + 28) || *(a1 + 36) != *(a2 + 36) || *(a1 + 44) != *(a2 + 44) || *(a1 + 60) != *(a2 + 60) || *(a1 + 96) != *(a2 + 96) || !v8)
    {
      return 0;
    }

    v11 = *(a1 + 124);
    v12 = *(a2 + 124);
    v7 = v11 == v12;
    v13 = v11 != v12;
    if (!v7 || *(a1 + 132) == *(a2 + 132))
    {
      return !v13;
    }

    if (qword_1025D48A0 != -1)
    {
      sub_1018A35E8();
    }

    v14 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v15 = *(a1 + 4);
      v16 = *(a1 + 12);
      v17 = *(a1 + 132);
      v18 = *(a2 + 4);
      v19 = *(a2 + 12);
      v20 = *(a2 + 132);
      *buf = 134546945;
      v42 = v15;
      v43 = 2053;
      v44 = v16;
      v45 = 1024;
      v46 = v17;
      v47 = 2053;
      v48 = v18;
      v49 = 2053;
      v50 = v19;
      v51 = 1024;
      v52 = v20;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "CLCommonCompareLocationEqualityClient compared two coordinates that were identical other than their reference frames: (%{sensitive}lf, %{sensitive}lf, %d) (%{sensitive}lf, %{sensitive}lf, %d)", buf, 0x36u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018A38B0();
      }

      v21 = *(a1 + 4);
      v22 = *(a1 + 12);
      v23 = *(a1 + 132);
      v24 = *(a2 + 4);
      v25 = *(a2 + 12);
      v26 = *(a2 + 132);
      v29 = 134546945;
      v30 = v21;
      v31 = 2053;
      v32 = v22;
      v33 = 1024;
      v34 = v23;
      v35 = 2053;
      v36 = v24;
      v37 = 2053;
      v38 = v25;
      v39 = 1024;
      v40 = v26;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "CLCommonCompareLocationEqualityClient compared two coordinates that were identical other than their reference frames: (%{sensitive}lf, %{sensitive}lf, %d) (%{sensitive}lf, %{sensitive}lf, %d)", &v29, 54);
      v28 = v27;
      sub_100152C7C("Generic", 1, 0, 0, "Boolean CLCommonCompareLocationEqualityClientWithTimeCheck(const CLClientLocation *, const CLClientLocation *, BOOL)", "%s\n", v27);
      if (v28 != buf)
      {
        free(v28);
      }
    }

    if (!*(a1 + 132))
    {
      return 1;
    }

    return *(a2 + 132) == 0;
  }

  else
  {
    return (a1 | a2) == 0;
  }
}

uint64_t *sub_1000F2824(uint64_t a1, int a2, unsigned int a3, int a4, _OWORD *a5)
{
  if (a2 == 1)
  {
    v7 = a5[1];
    *buf = *a5;
    *&buf[16] = v7;
    return sub_1000F1AF8(a1, a3, a4, buf, (a1 + 208), a1 + 168);
  }

  else
  {
    if (a2)
    {
      if (qword_1025D47B0 != -1)
      {
        sub_101A83044();
      }

      v8 = qword_1025D47B8;
      if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289795;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1026;
        *&buf[20] = a2;
        *&buf[24] = 2082;
        *&buf[26] = "assert";
        v13 = 2081;
        v14 = "false";
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Invalid location source, source:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
        if (qword_1025D47B0 != -1)
        {
          goto LABEL_15;
        }
      }

      while (1)
      {
        v9 = qword_1025D47B8;
        if (os_signpost_enabled(qword_1025D47B8))
        {
          *buf = 68289795;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 1026;
          *&buf[20] = a2;
          *&buf[24] = 2082;
          *&buf[26] = "assert";
          v13 = 2081;
          v14 = "false";
          _os_signpost_emit_with_name_impl(dword_100000000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid location source", "{msg%{public}.0s:Invalid location source, source:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
          if (qword_1025D47B0 != -1)
          {
            sub_101A83058();
          }
        }

        v10 = qword_1025D47B8;
        if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
        {
          *buf = 68289795;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 1026;
          *&buf[20] = a2;
          *&buf[24] = 2082;
          *&buf[26] = "assert";
          v13 = 2081;
          v14 = "false";
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Invalid location source, source:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x2Cu);
        }

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/Streaming/CLStreamingAwareLocationProvider.mm", 420, "setLocationRegistration");
LABEL_15:
        sub_101A83058();
      }
    }

    v5 = a5[1];
    *buf = *a5;
    *&buf[16] = v5;
    return sub_1000F1AF8(a1, a3, a4, buf, (a1 + 200), a1 + 144);
  }
}

uint64_t sub_1000F2AD8(uint64_t a1, int *a2, uint64_t a3)
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

  v9 = *v8;
  *(a3 + 16) = *(v8 + 2);
  *a3 = v9;
  return 1;
}

char *sub_1000F2B3C(uint64_t a1, char **a2, uint64_t ***a3)
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
        if ((sub_100019438(a3, v4 + 32) & 0x80) == 0)
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

      if ((sub_100019438(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 8;
      v4 = *(v7 + 1);
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

void *sub_1000F2BC4(uint64_t **a1, uint64_t ***a2, uint64_t a3)
{
  result = *sub_1000F2B3C(a1, &v4, a2);
  if (!result)
  {
    sub_1000F2EC4();
  }

  return result;
}

uint64_t sub_1000F2C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100033370(a1, a2);
  if (![*(a1 + 136) isKeyPathRegisteredSystemService:v5])
  {
    return 1;
  }

  result = sub_10018E72C(a1, v5);
  if (result)
  {
    return *(a3 + 8) <= 3000.0;
  }

  return result;
}

uint64_t sub_1000F2CB4(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {

    v2 = *(v1 + 1168);
    if (v2)
    {
      sub_100008080(v2);
    }

    if (*(v1 + 927) < 0)
    {
      operator delete(*(v1 + 904));
    }

    v3 = *(v1 + 816);
    if (v3)
    {
      sub_100008080(v3);
    }

    v4 = *(v1 + 688);
    if (v4)
    {
      sub_100008080(v4);
    }

    operator delete();
  }

  return result;
}

BOOL sub_1000F2D48(uint64_t a1, const __CFString *a2, const void *a3)
{
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, __p);
      v7 = v10 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AB504();
    }
  }

  return v5 != 0;
}

void sub_1000F2F58(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002E4F74(v3, v2);
  _Unwind_Resume(a1);
}

size_t sub_1000F2F74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_msgSend(*(a1 + 24) "clientAnchor")];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = "";
  }

  result = strlen(v4);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = result;
  if (result)
  {
    result = memmove(a2, v4, result);
  }

  *(a2 + v6) = 0;
  return result;
}

uint64_t sub_1000F3088(uint64_t a1)
{
  [objc_msgSend(*(a1 + 176) objectForKey:{@"kCLConnectionMessageDistanceFilterKey", "doubleValue"}];
  v3 = v2;
  [objc_msgSend(*(a1 + 176) objectForKey:{@"kCLConnectionMessageDesiredAccuracyKey", "doubleValue"}];
  v5 = v4;
  v6 = [*(a1 + 16) inUseLevelIsAtLeast:3] ^ 1;
  v7 = [*(a1 + 16) isAuthorizedForServiceType:17];
  v8 = v7;
  if (v3 > 0.0 || (v9 = 0, v5 >= 1000.0) && v5 <= 6383135.0)
  {
    v9 = v6 & v7;
    if ((*(a1 + 58) & 1) == 0 && v9 && (sub_1000F42F8(a1) & 1) == 0)
    {
      *(a1 + 58) = 1;
      *(a1 + 64) = CFAbsoluteTimeGetCurrent();
      if (qword_1025D47A0 != -1)
      {
        sub_101B13524();
      }

      v10 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(a1 + 24);
        v12 = *(a1 + 64);
        v18 = 68289538;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 2114;
        v23 = v11;
        v24 = 2050;
        v25 = v12;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#cblsPowerSaver LossTracking enabled, Client:%{public, location:escape_only}@, LossTrackingStartTime:%{public}f}", &v18, 0x26u);
      }
    }
  }

  if (_os_feature_enabled_impl())
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101B13408();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 24);
      v18 = 68290562;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2114;
      v23 = v14;
      v24 = 2050;
      v25 = v3;
      v26 = 2050;
      v27 = v5;
      v28 = 1026;
      v29 = v6;
      v30 = 1026;
      v31 = v8;
      v32 = 1026;
      v33 = v9;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#cblsPowerSaver should release processAssertion, Client:%{public, location:escape_only}@, distanceFilter:%{public}f, desiredAccuracy:%{public}f, inUseLevelLessThanDecayingUserEng:%{public}hhd, suspendible:%{public}hhd, eligibleForReleasingProcessAssertion:%{public}hhd}", &v18, 0x42u);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101B13408();
    }

    v15 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 24);
      v18 = 68289282;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2114;
      v23 = v16;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:ineligible for releasing process assertion - #cblsPowerSaver feature-flag not enabled, Client:%{public, location:escape_only}@}", &v18, 0x1Cu);
    }

    return 0;
  }

  return v9;
}

void sub_1000F33B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10001A3E8(a1, a2);
  if (sub_10001CF3C() & 1) != 0 || (*(a1 + 1080))
  {
    return;
  }

  v6 = *(a1 + 1056);
  v7 = *(a1 + 1064);
  if (v6 == v7)
  {
LABEL_6:
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v9 = "Unknown";
      if (a2 == 1)
      {
        v9 = "Bluetooth";
      }

      if (a2)
      {
        v10 = v9;
      }

      else
      {
        v10 = "Wifi";
      }

      sub_10000EC00(&__p, v10);
      if (v38 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 136446210;
      *v30 = p_p;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "ImproveAccuracyNotification object not created for technology, %{public}s", buf, 0xCu);
      if (SHIBYTE(v38) < 0)
      {
        operator delete(__p);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_10192F088(a2);
    }

    return;
  }

  while (*v6 != a2)
  {
    v6 += 32;
    if (v6 == v7)
    {
      goto LABEL_6;
    }
  }

  if (*(v6 + 16) < 0.0 || CFAbsoluteTimeGetCurrent() - *(v6 + 8) <= *(v6 + 16))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v15 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v16 = "Unknown";
      if (a2 == 1)
      {
        v16 = "Bluetooth";
      }

      if (a2)
      {
        v17 = v16;
      }

      else
      {
        v17 = "Wifi";
      }

      sub_10000EC00(&__p, v17);
      if (v38 >= 0)
      {
        v18 = &__p;
      }

      else
      {
        v18 = __p;
      }

      *buf = 136315138;
      *v30 = v18;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "improve accuracy notification for %s is not eligible to post.", buf, 0xCu);
      if (SHIBYTE(v38) < 0)
      {
        operator delete(__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192EF5C(a2);
    }

    return;
  }

  if (*v6 != 1)
  {
    if (*v6 || *(a1 + 1081) != 1)
    {
      return;
    }

    if (sub_10027A2E8(v12))
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        __p = 68289026;
        LOWORD(v38) = 2082;
        *(&v38 + 2) = "";
        v14 = "{msg%{public}.0s:WiFi is disabled, but the prompt will be suppressed because we're in demo mode}";
LABEL_70:
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, v14, &__p, 0x12u);
        return;
      }

      return;
    }

    if ((*(a1 + 1600) & 1) == 0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        __p = 68289026;
        LOWORD(v38) = 2082;
        *(&v38 + 2) = "";
        v14 = "{msg%{public}.0s:WiFi is disabled, but the device has yet to be unlocked, so we will suppress the prompt for now}";
        goto LABEL_70;
      }

      return;
    }

LABEL_48:
    LODWORD(__p) = -1;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
    if ([objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")])
    {
      v19 = (*(*a3 + 192))(a3);
      if (v19 == __p && !*(a1 + 272) && !*(v6 + 24))
      {
        v20 = sub_1000344B0(a3, 0);
        v21 = sub_10077E260(a1, v20, a2, v6);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v22 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          v23 = sub_1000344B0(a3, 0);
          v24 = "Unknown";
          if (a2 == 1)
          {
            v24 = "Bluetooth";
          }

          if (a2)
          {
            v25 = v24;
          }

          else
          {
            v25 = "Wifi";
          }

          sub_10000EC00(v27, v25);
          if (v28 >= 0)
          {
            v26 = v27;
          }

          else
          {
            v26 = v27[0];
          }

          *buf = 68289794;
          *v30 = 0;
          *&v30[4] = 2082;
          *&v30[6] = "";
          v31 = 2114;
          v32 = v23;
          v33 = 2082;
          v34 = v26;
          v35 = 1026;
          v36 = v21;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt posted improve accuracy notification, client:%{public, location:escape_only}@, technology:%{public, location:escape_only}s, status:%{public}hhd}", buf, 0x2Cu);
          if (v28 < 0)
          {
            operator delete(v27[0]);
          }
        }
      }
    }

    sub_10027A45C(&__p);
    return;
  }

  if (*(a1 + 1082))
  {
    goto LABEL_48;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v13 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
  {
    __p = 68289026;
    LOWORD(v38) = 2082;
    *(&v38 + 2) = "";
    v14 = "{msg%{public}.0s:bluetooth not disabled, suppress improve accuracy notification}";
    goto LABEL_70;
  }
}

void sub_1000F395C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_10027A45C(va);
  _Unwind_Resume(a1);
}

BOOL sub_1000F3990(uint64_t a1)
{
  v2 = [*(a1 + 16) inUseLevel];
  if (qword_1025D4790 != -1)
  {
    sub_100312440();
  }

  v3 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 44);
    v7[0] = 68289794;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2114;
    v11 = v4;
    v12 = 1026;
    v13 = v5;
    v14 = 1026;
    v15 = v2 < 5;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:canBePaused(), Client:%{public, location:escape_only}@, pid:%{public}d, flag:%{public}hhd}", v7, 0x28u);
  }

  return v2 < 5;
}

id sub_1000F3AA8(uint64_t a1, int a2)
{
  v3 = sub_10004D8F4(a1);
  v5 = *(*v3 + 8);
  v4 = *(*v3 + 16);
  if (a2)
  {

    return [v4 register:v5 forNotification:34 registrationInfo:0];
  }

  else
  {

    return [v4 unregister:v5 forNotification:34];
  }
}

id sub_1000F3B0C(uint64_t a1, int a2)
{
  v3 = sub_10004D8F4(a1);
  v5 = *(*v3 + 8);
  v4 = *(*v3 + 16);
  if (a2)
  {

    return [v4 register:v5 forNotification:35 registrationInfo:0];
  }

  else
  {

    return [v4 unregister:v5 forNotification:35];
  }
}

__CFArray *sub_1000F3B98(double a1)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (a1 < 100.0)
  {
    valuePtr = 1;
    v3 = sub_1000F3034(&valuePtr);
    CFArrayAppendValue(Mutable, v3);
    CFRelease(v3);
    valuePtr = 10;
    v4 = sub_1000F3034(&valuePtr);
    CFArrayAppendValue(Mutable, v4);
    CFRelease(v4);
  }

  if (a1 < 1000.0)
  {
    valuePtr = 4;
    v5 = sub_1000F3034(&valuePtr);
    CFArrayAppendValue(Mutable, v5);
    CFRelease(v5);
  }

  if (a1 < 6378135.0)
  {
    valuePtr = 6;
    v6 = sub_1000F3034(&valuePtr);
    CFArrayAppendValue(Mutable, v6);
    CFRelease(v6);
  }

  return Mutable;
}

void sub_1000F3CBC(uint64_t a1, int a2, void *a3)
{
  v6 = objc_alloc_init(NSAutoreleasePool);
  v7 = [objc_msgSend(*(a1 + 176) objectForKeyedSubscript:{@"kCLConnectionMessageDynamicAccuracyReductionKey", "BOOLValue"}];
  v8 = *(a1 + 176);
  *(a1 + 176) = a3;
  v9 = a3;

  if ((sub_1000F3B70(a1) & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1000F3B70(a1);
  if ([*(a1 + 176) objectForKeyedSubscript:@"kCLConnectionMessageDesiredAccuracyKey"])
  {
    [objc_msgSend(*(a1 + 176) objectForKeyedSubscript:{@"kCLConnectionMessageDesiredAccuracyKey", "doubleValue"}];
    v11 = v10;
  }

  else
  {
    v11 = -1.0;
  }

  if (![*(a1 + 176) objectForKeyedSubscript:@"kCLConnectionMessageDistanceFilterKey"])
  {
    v13 = -1.0;
    if (a2)
    {
      goto LABEL_7;
    }

LABEL_17:
    if (qword_1025D4790 != -1)
    {
      sub_100312440();
    }

    v18 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 24);
      *buf = 68290050;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      LOWORD(v28[0]) = 2050;
      *(v28 + 2) = a1;
      HIWORD(v28[2]) = 2114;
      *&v28[3] = v19;
      v29 = 2050;
      v30 = v11;
      v31 = 2050;
      *v32 = v13;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LocationSubcription #pwrlog client unsubscribing, this:%{public}p, ClientKeyPath:%{public, location:escape_only}@, DesiredAccuracy:%{public}f, DistanceFilter:%{public}f}", buf, 0x3Au);
    }

    if (qword_1025D4620 != -1)
    {
      sub_101B13474();
    }

    v20 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 24);
      *buf = 138543362;
      *&buf[4] = v21;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "@ClxClient, unsubscribe, %{public}@", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B1349C(buf);
      v22 = *(a1 + 24);
      v25 = 138543362;
      v26 = v22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "@ClxClient, unsubscribe, %{public}@", &v25, 12);
      v24 = v23;
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationSubscription::handleRequestLocation(BOOL, NSDictionary *)", "%s\n", v23);
      if (v24 != buf)
      {
        free(v24);
      }
    }

    [*(a1 + 576) invalidate];

    *(a1 + 576) = 0;
    *(a1 + 236) = 0;
    sub_100050114(a1);
  }

  [objc_msgSend(*(a1 + 176) objectForKeyedSubscript:{@"kCLConnectionMessageDistanceFilterKey", "doubleValue"}];
  v13 = v12;
  if (!a2)
  {
    goto LABEL_17;
  }

LABEL_7:
  v14 = [objc_msgSend(*(a1 + 176) objectForKeyedSubscript:{@"kCLConnectionMessageDynamicAccuracyReductionKey", "BOOLValue"}];
  v15 = [objc_msgSend(*(a1 + 176) objectForKeyedSubscript:{@"kCLConnectionMessageAlteredAccessoryLocationsKey", "BOOLValue"}];
  if (qword_1025D4790 != -1)
  {
    sub_100312440();
  }

  v16 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 24);
    *buf = 68290306;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    LOWORD(v28[0]) = 2114;
    *(v28 + 2) = v17;
    HIWORD(v28[2]) = 2050;
    *&v28[3] = v11;
    v29 = 2050;
    v30 = v13;
    v31 = 1026;
    *v32 = v14;
    *&v32[4] = 1026;
    *&v32[6] = v15;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:client subscribing to location, Client:%{public, location:escape_only}@, desiredAccuracy:%{public}f, distanceFilter:%{public}f, dynamicAccuracyReductionEnabled:%{public}d, allowsAlteredAccessoryLocations:%{public}d}", buf, 0x3Cu);
  }

  if (*(a1 + 224) != -1.0)
  {
    *(a1 + 224) = sub_1001CA9C4();
  }

  if (v7 != v14)
  {
    sub_100050790(a1 + 520);
  }

  sub_10004B904(a1);
  sub_1000F3388(a1);
LABEL_27:
}

uint64_t sub_1000F42C0(uint64_t a1, uint64_t a2)
{
  if (qword_102659160 != -1)
  {
    sub_10191C10C();
  }

  return byte_102659158;
}

id sub_1000F4320(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (*(a1 + 57) != 1)
  {
    v8 = sub_10004D830(a1);
    [*(*v8 + 16) unregister:*(*v8 + 8) forNotification:a2];
    sub_10004D8F4(a1);
    sub_10002FA64(a3);
  }

  v5 = sub_10004D8F4(a1);
  [*(*v5 + 16) unregister:*(*v5 + 8) forNotification:a2];
  v6 = *sub_10004D830(a1);
  v10 = *(v6 + 8);
  v9 = *(v6 + 16);

  return [v9 register:v10 forNotification:a2 registrationInfo:0];
}

uint64_t sub_1000F43D0(uint64_t a1, _OWORD *a2)
{
  sub_100021AFC(v11);
  v10 = 0;
  v4 = (*(*a1 + 128))(a1, &v10, v11);
  if (v4)
  {
    v5 = v11[7];
    a2[6] = v11[6];
    a2[7] = v5;
    a2[8] = v12[0];
    *(a2 + 140) = *(v12 + 12);
    v6 = v11[3];
    a2[2] = v11[2];
    a2[3] = v6;
    v7 = v11[5];
    a2[4] = v11[4];
    a2[5] = v7;
    v8 = v11[1];
    *a2 = v11[0];
    a2[1] = v8;
  }

  if (v17)
  {
    sub_100008080(v17);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v14)
  {
    sub_100008080(v14);
  }

  if (v13)
  {
    sub_100008080(v13);
  }

  return v4;
}

void sub_1000F44D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F44E4(uint64_t a1, int a2)
{
  v4 = *(a1 + 64);
  v2 = a1 + 64;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v5 == v2 || *(v5 + 32) > a2)
  {
    return 0;
  }

  v7 = *(v5 + 40);
  v8 = (v5 + 48);
  result = 11;
  if (v7 != v8)
  {
    do
    {
      v9 = *(v7 + 15);
      if (v9 < result)
      {
        result = *(v7 + 15);
        if (!v9)
        {
          break;
        }
      }

      v10 = v7[1];
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
          v11 = v7[2];
          v12 = *v11 == v7;
          v7 = v11;
        }

        while (!v12);
      }

      v7 = v11;
    }

    while (v11 != v8);
  }

  return result;
}

void sub_1000F4590(uint64_t a1, void *a2)
{
  if ([objc_msgSend(a2 "attributions")])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v5 = *(a1 + 32);
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#SystemStatus adding attribution; already exists!, AttributionIdentifier:%{public, location:escape_only}@}", &v9, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v6 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v7 = *(a1 + 32);
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = v7;
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#SystemStatus adding attribution; already exists!", "{msg%{public}.0s:#SystemStatus adding attribution; already exists!, AttributionIdentifier:%{public, location:escape_only}@}", &v9, 0x1Cu);
    }
  }

  else
  {
    v8 = *(a1 + 32);

    [a2 addAttribution:v8];
  }
}

BOOL sub_1000F4760(uint64_t a1, uint64_t a2)
{
  if (qword_1026591A0 != -1)
  {
    sub_10191C148();
  }

  return (byte_102659198 & 1) == 0;
}

void sub_1000F47A0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10001A3E8(a1, a2);
  if (sub_1000F4760(v6, v7))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      v9 = [+[NSUUID UUID](NSUUID UUIDString];
      *buf = 68289794;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2114;
      v18 = a2;
      v19 = 2114;
      v20 = a3;
      v21 = 2082;
      v22 = [(NSString *)v9 UTF8String];
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#SystemStatus Publishing receiving location interval begin, Client:%{public, location:escape_only}@, AttributionIdentifier:%{public, location:escape_only}@, MessageUUID:%{public, location:escape_only}s}", buf, 0x30u);
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a1 + 424);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000F4590;
    v12[3] = &unk_10246FE80;
    v12[4] = a3;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10077AC8C;
    v11[3] = &unk_102447418;
    v11[4] = v9;
    [v10 updateVolatileData:v12 completion:v11];
    if (_os_feature_enabled_impl())
    {
      sub_10077AD68(a1, *(a1 + 568), (a1 + 528), a2);
    }
  }
}

double sub_1000F49A8(int a1)
{
  result = 60.0;
  if (a1 != 2)
  {
    result = 0.0;
  }

  if (a1 == 1)
  {
    return 10.0;
  }

  return result;
}

uint64_t sub_1000F49CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_10004FD18();
  if (sub_1000F5F94(v2))
  {
    if (qword_1025D4790 != -1)
    {
      sub_101B133E0();
    }

    v3 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v2 + 24);
      v5 = sub_1007F2CF8(v2);
      v6 = LocationLogEncryptionDataSize();
      v7 = LocationLogEncryptionEncryptData();
      v8 = *(v2 + 304);
      v9 = **(a1 + 1600);
      *buf = 68290819;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v4;
      *&buf[28] = 2050;
      *&buf[30] = v5;
      *&buf[38] = 1040;
      *&buf[40] = v6;
      *&buf[44] = 2098;
      *&buf[46] = v7;
      *&buf[54] = 2050;
      *&buf[56] = v8;
      *&buf[64] = 2050;
      *&buf[66] = v9;
      *&buf[74] = 2049;
      *&buf[76] = sub_100023764(a1 + 40);
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Sending location to client, Client:%{public, location:escape_only}@, DC:%{public}p, location:%{public, location:Encrypted_CLClientLocation}.*P, desiredAccuracy:%{public}f, notification:%{public, location:CLLocationProvider_Type::Notification}lld, hash:0x%{private}llx}", buf, 0x54u);
    }

    if ([objc_msgSend(*(v2 + 24) "clientAnchor")])
    {
      if (qword_1025D4660 != -1)
      {
        sub_101B14E64();
      }

      v10 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
      {
        v11 = LocationLogEncryptionDataSize();
        v12 = LocationLogEncryptionEncryptData();
        v13 = LocationLogEncryptionDataSize();
        v14 = LocationLogEncryptionEncryptData();
        v15 = *(a1 + 68);
        v16 = *(a1 + 60);
        *buf = 68290563;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1040;
        *&buf[20] = v11;
        *&buf[24] = 2098;
        *&buf[26] = v12;
        *&buf[34] = 1040;
        *&buf[36] = v13;
        *&buf[40] = 2098;
        *&buf[42] = v14;
        *&buf[50] = 2049;
        *&buf[52] = v15;
        *&buf[60] = 2049;
        *&buf[62] = v16;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#awd #thumper Caching location , lat:%{public, location:Encrypted_latitude}.*P, lon:%{public, location:Encrypted_longitude}.*P, alt:%{private}f, accuracy:%{private}f}", buf, 0x46u);
      }

      v17 = [objc_msgSend(*(v2 + 8) "vendor")];
      v18 = *(a1 + 152);
      v36 = *(a1 + 136);
      v37 = v18;
      v38[0] = *(a1 + 168);
      *(v38 + 12) = *(a1 + 180);
      v19 = *(a1 + 88);
      *&buf[32] = *(a1 + 72);
      *&buf[48] = v19;
      v20 = *(a1 + 120);
      *&buf[64] = *(a1 + 104);
      *&buf[80] = v20;
      v21 = *(a1 + 56);
      *buf = *(a1 + 40);
      *&buf[16] = v21;
      [v17 cacheEmergencyAWDStatistics:buf];
    }

    v22 = sub_10007005C(v32);
    v31 = v22;
    if ([objc_msgSend(v22 "allKeys")])
    {
      v23 = [v22 valueForKey:@"CoarseMetaData"];
      if (qword_1025D4790 != -1)
      {
        sub_101B133E0();
      }

      v24 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
      {
        v25 = [v23 length];
        *buf = 134217984;
        *&buf[4] = v25;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "CoarseMetaData found in nvp. Encoded data size : %lu", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B134E0(buf);
        v27 = qword_1025D4798;
        v28 = [v23 length];
        v33 = 134217984;
        v34 = v28;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v27, 2, "CoarseMetaData found in nvp. Encoded data size : %lu", &v33);
        v30 = v29;
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationSubscription::deliverLocationToClient(const CLLocationProvider_Type::NotificationData &, const CLLocationProvider_Type::Notification &)_block_invoke", "%s\n", v29);
        if (v30 != buf)
        {
          free(v30);
        }
      }
    }

    if (*(a1 + 136) == 12)
    {
      sub_10014F554(v2, &v31);
    }

    sub_10010C984(v2, &v31);
  }

  return sub_100005DA4();
}

void sub_1000F5010(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1000F5084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000F5104(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101B133A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationSubscription::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101B133B8();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationSubscription::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000F52D0(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1000F52D0(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  sub_10004FD18();
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v7 = *a3;
  v29 = v7;
  if (v7 <= 0x27)
  {
    if (((1 << v7) & 0x800040003FLL) != 0)
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000F5EB8;
      v27[3] = &unk_1024CADA8;
      v27[4] = v28;
      v27[5] = a1;
      sub_1000F5960(a1, a4, v27);
      if (*(a1 + 312) == 1)
      {
        v8 = *(a4 + 808);
        if (v8)
        {
          for (i = 0; i < sub_10030D934(v8); ++i)
          {
            sub_10030E2C0(*(a4 + 808), i, buf);
            sub_10018E434(a1, buf);
            v8 = *(a4 + 808);
          }
        }

        else
        {
          sub_10018E434(a1, a4);
        }

        v33[0] = @"ClientKey";
        v11 = (a1 + 328);
        if (*(a1 + 351) < 0)
        {
          v11 = *v11;
        }

        v34[0] = [NSString stringWithUTF8String:v11];
        v33[1] = @"DeliveredLocationCount";
        v34[1] = [NSNumber numberWithInt:*(a1 + 436)];
        v33[2] = @"DesiredHAccuracy";
        v34[2] = [NSNumber numberWithDouble:*(a1 + 384)];
        v33[3] = @"ReportedHAccuracy";
        v34[3] = [NSNumber numberWithDouble:*(a4 + 20)];
        v33[4] = @"CorrectiveCompensation";
        v34[4] = [NSNumber numberWithBool:sub_100030B7C(a1, 12) ^ 1];
        [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:5];
        AnalyticsSendEvent();
        Current = CFAbsoluteTimeGetCurrent();
        v13 = *(a4 + 76);
        if (vabdd_f64(Current, v13) < 3.0)
        {
          v14 = v13 - *(a1 + 320);
          if (v14 < 0.0)
          {
            v14 = 0.0;
          }

          if (*(a1 + 408) < 0.0)
          {
            *(a1 + 408) = v14;
          }

          if (*(a1 + 416) < 0.0 && *(a4 + 96) == 1)
          {
            *(a1 + 416) = v14;
          }

          v15 = *(a1 + 400);
          v16 = *(a4 + 20);
          if (v15 < 0.0 || v16 >= 0.0 && v16 < v15)
          {
            *(a1 + 400) = v16;
          }

          v17 = *(a4 + 44);
          if (*(a1 + 424) < v17)
          {
            *(a1 + 424) = v17;
          }
        }
      }
    }

    else
    {
      if (v7 == 9)
      {
        if (qword_1025D4790 != -1)
        {
          sub_101B133E0();
        }

        v10 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "notifying clients of unavailable location", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B134E0(buf);
          LOWORD(v31[0]) = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 2, "notifying clients of unavailable location", v31, 2);
          v20 = v19;
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationSubscription::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v19);
          if (v20 != buf)
          {
            free(v20);
          }
        }

        *buf = sub_10007005C(v30);
        sub_101085400(a1, buf);
      }

      if (((1 << v7) & 0xC10000000) != 0)
      {
        if (qword_1025D4790 != -1)
        {
          goto LABEL_41;
        }

        while (1)
        {
          v21 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
          {
            v22 = *a3;
            *buf = 67240192;
            *&buf[4] = v22;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "Wiring bug: %{public}d should not notify", buf, 8u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B134E0(buf);
            v23 = *a3;
            v31[0] = 67240192;
            v31[1] = v23;
            LODWORD(v26) = 8;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 0, "Wiring bug: %{public}d should not notify", v31, v26);
            v25 = v24;
            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationSubscription::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v24);
            if (v25 != buf)
            {
              free(v25);
            }
          }

          abort_report_np("Wiring bug: unexpected notification");
          __break(1u);
LABEL_41:
          sub_101B133E0();
        }
      }
    }
  }

  _Block_object_dispose(v28, 8);
  return sub_100005DA4();
}

void sub_1000F5920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  sub_100005DA4();
  _Unwind_Resume(a1);
}

void sub_1000F5960(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v6 = [objc_msgSend(*(a1 + 176) objectForKeyedSubscript:{@"kCLConnectionMessageDynamicAccuracyReductionKey", "BOOLValue"}];
  if ([*(a1 + 16) isAuthorizedForServiceType:12] && (v6 & 1) != 0)
  {
    v7 = *(a1 + 528);
    v8 = *(a1 + 536);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100008080(v8);
    }

    sub_100022008(v28, a2);
    v9 = sub_1000E5608(a1);
    v10 = [CLLocation alloc];
    v11 = a2[7];
    v26[6] = a2[6];
    v26[7] = v11;
    v27[0] = a2[8];
    *(v27 + 12) = *(a2 + 140);
    v12 = a2[3];
    v26[2] = a2[2];
    v26[3] = v12;
    v13 = a2[5];
    v26[4] = a2[4];
    v26[5] = v13;
    v14 = a2[1];
    v26[0] = *a2;
    v26[1] = v14;
    v15 = [v10 initWithClientLocation:v26];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3321888768;
    v17[2] = sub_101084F30;
    v17[3] = &unk_1024CACE0;
    v17[5] = v7;
    v18 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100022008(&v19, v28);
    v17[4] = a3;
    [v9 reduceAccuracy:v15 withReply:v17];

    if (v24)
    {
      sub_100008080(v24);
    }

    if (v23 < 0)
    {
      operator delete(__p);
    }

    if (v21)
    {
      sub_100008080(v21);
    }

    if (v20)
    {
      sub_100008080(v20);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_weak(v18);
    }

    if (v33)
    {
      sub_100008080(v33);
    }

    if (v32 < 0)
    {
      operator delete(v31);
    }

    if (v30)
    {
      sub_100008080(v30);
    }

    if (v29)
    {
      sub_100008080(v29);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  else
  {
    v16 = *(a3 + 16);

    v16(a3, a2);
  }
}

void sub_1000F5BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_100311054(v16 + 56);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  sub_100311054(&STACK[0x6F8]);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  _Unwind_Resume(a1);
}

void sub_1000F5C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100022008(v27, a2);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3321888768;
  v16 = sub_1000F49CC;
  v17 = &unk_1024CAD10;
  v18 = a1;
  sub_100022008(&v19, v27);
  v26 = a3;
  v5 = *(a1 + 560);
  v6 = *(a1 + 568);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100008080(v6);
  }

  if ([*(a1 + 16) isNonProvisionallyAuthorizedForServiceType:5])
  {
    v16(v15);
  }

  else
  {
    v7 = [CLLocation alloc];
    v13[6] = v27[6];
    v13[7] = v27[7];
    v14[0] = v28[0];
    *(v14 + 12) = *(v28 + 12);
    v13[2] = v27[2];
    v13[3] = v27[3];
    v13[4] = v27[4];
    v13[5] = v27[5];
    v13[0] = v27[0];
    v13[1] = v27[1];
    v8 = [v7 initWithClientLocation:v13];
    v9 = sub_1000E5608(a1);
    v10 = [*(a1 + 24) legacyClientKey];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3321888768;
    v11[2] = sub_101085244;
    v11[3] = &unk_1024CAD70;
    v11[5] = a1;
    v11[6] = v5;
    v12 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v11[4] = v15;
    [v9 handleProvisionalIntermediationForService:5 forClientKey:v10 at:v8 withReply:v11];
    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v24)
  {
    sub_100008080(v24);
  }

  if (v23 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    sub_100008080(v21);
  }

  if (v20)
  {
    sub_100008080(v20);
  }

  if (v33)
  {
    sub_100008080(v33);
  }

  if (v32 < 0)
  {
    operator delete(v31);
  }

  if (v30)
  {
    sub_100008080(v30);
  }

  if (v29)
  {
    sub_100008080(v29);
  }
}

void sub_1000F5E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  sub_100311054(v17 + 40);
  sub_100311054(&STACK[0x728]);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F5ECC(_BYTE *a1, UInt8 *a2, uint64_t a3)
{
  v7[0] = sub_1000F5F10(a1);
  v7[1] = v5;
  return sub_100046340(a2, a3, v7);
}

unint64_t sub_1000F5F10(_BYTE *a1)
{
  v2 = sub_100049A40(a1);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1000F5FBC(v2);
    v5 = *(v3 + 194) << 8;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (a1[277] & 1) != 0 || (a1[278] & 1) != 0 || (a1[279])
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = a1[280] << 16;
  }

  return (v7 | v5) & 0x1FF00 | v6;
}

id sub_1000F5FBC(uint64_t a1)
{
  v1 = [*(a1 + 176) objectForKeyedSubscript:@"kCLConnectionMessageAlteredAccessoryLocationsKey"];

  return [v1 BOOLValue];
}

uint64_t sub_1000F5FF0(uint64_t a1, uint64_t *a2)
{
  v4 = _os_feature_enabled_impl();
  v5 = v4;
  v7 = sub_10001A3E8(v4, v6);
  if (v5)
  {
    result = (**v7)(v7);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v9 = sub_10001CF3C();
    if ((v9 & 1) == 0)
    {
      v11 = sub_10001A3E8(v9, v10);
      result = (**v11)(v11);
      if ((result & 1) == 0)
      {
        return result;
      }
    }
  }

  result = sub_1000F610C(a1, a2);
  if (result)
  {
    result = sub_100792C78(a1, a2);
    if (result)
    {
      v12 = result;
      v13 = *(a1 + 1552);
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      v15 = [NSString stringWithUTF8String:v14];

      return [v13 client:v15 didChangeUsageData:v12];
    }
  }

  return result;
}

BOOL sub_1000F610C(uint64_t a1, uint64_t a2)
{
  if (!_os_feature_enabled_impl())
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v7))}];
    return [v8 isValidCKP] && (objc_msgSend(*(a1 + 136), "isKeyPathRegisteredSystemService:", v8) & 1) != 0 || sub_10001A2EC((a1 + 1512), a2) != 0;
  }

  if (a1 + 624 == sub_10045EF04(a1 + 616, a2))
  {
    v4 = sub_1005D7C24((a1 + 640), a2) != 0;
  }

  else
  {
    *buf = a2;
    v4 = *(sub_1007AE4E4((a1 + 616), a2, &unk_101C66300, buf, &v12)[7] + 72);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v5 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }

    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    *buf = 68289538;
    *&buf[4] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = v6;
    v18 = 1026;
    v19 = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#usesync fTemporaryInUseAssertions, client:%{public, location:escape_only}s, shouldSync:%{public}hhd}", buf, 0x22u);
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

LABEL_20:
  v9 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    *buf = 68289538;
    *&buf[4] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = v10;
    v18 = 1026;
    v19 = v4;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#usesync shouldSyncUsageForClient, client:%{public, location:escape_only}s, shouldSync:%{public}hhd}", buf, 0x22u);
  }

  return v4;
}

BOOL sub_1000F6390(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v7 = sub_1000184F4(a1, a2);
  if (([*(a1 + 136) BOOLForKey:@"isSystemService" atKeyPath:v7 defaultValue:0] & 1) == 0)
  {
    if (a3 && sub_1000199AC(*(a1 + 400), v7) <= 1)
    {
      sub_10077AD68(a1, *(a1 + 504), (a1 + 464), v7);
    }

    else
    {
      sub_1000ED87C(a1, *(a1 + 504), (a1 + 464), v7);
    }
  }

  v8 = [*(a1 + 416) objectForKeyedSubscript:v7];
  if (qword_102659F70 != -1)
  {
    sub_10192DA90();
  }

  v9 = qword_102659F68;
  if (os_log_type_enabled(qword_102659F68, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *v24 = v7;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Delivered location information to '%@'", buf, 0xCu);
  }

  v10 = v8;
  if (!v8)
  {
    Current = CFAbsoluteTimeGetCurrent();
    sub_10002FE04(a1, Current, v7, 0xAuLL, 1, 0, 0);
    if (qword_1025D4790 != -1)
    {
      sub_10192DAA4();
    }

    v12 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      *buf = 68289282;
      *v24 = 0;
      *&v24[4] = 2082;
      *&v24[6] = "";
      v25 = 2114;
      v26 = v7;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:started receiving location information, client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, [*(a1 + 40) queue]);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100125B78;
    v22[3] = &unk_102449BC0;
    v22[4] = v7;
    v22[5] = a1;
    dispatch_source_set_event_handler(v10, v22);
    [*(a1 + 416) setObject:v10 forKeyedSubscript:v7];
  }

  v13 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v10, v13, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
  if (!v8)
  {
    dispatch_resume(v10);
    if (a4)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_18:
    sub_1000F6978(a1, v7, -1, 0, 0.0);
  }

LABEL_19:
  if (([*(a1 + 136) isKeyPathRegisteredSystemService:v7] & 1) != 0 || !-[PAAccessLogger loggingEnabled](+[PAAccessLogger sharedInstance](PAAccessLogger, "sharedInstance"), "loggingEnabled") || objc_msgSend(*(a1 + 456), "objectForKeyedSubscript:", v7))
  {
    return v8 == 0;
  }

  v14 = [v7 bundleId];
  v15 = [v7 bundlePath];
  if (v14)
  {
    v16 = [PAApplication applicationWithBundleID:v14];
    goto LABEL_24;
  }

  v18 = v15;
  if (v15)
  {
    [NSBundle bundleWithPath:v15];
    v19 = PAImplicitClientIdentityForBundle();
    if (v19)
    {
      v16 = [[PAApplication alloc] initWithTCCIdentity:v19];
    }

    else
    {
      v16 = [PAApplication applicationWithPath:v18];
    }

LABEL_24:
    if (v16)
    {
      [*(a1 + 456) setObject:-[PAAccessLogger beginIntervalForAccess:](+[PAAccessLogger sharedInstance](PAAccessLogger forKeyedSubscript:{"sharedInstance"), "beginIntervalForAccess:", objc_msgSend([PALocationAccess alloc], "initWithAccessor:", v16)), v7}];
    }

    return v8 == 0;
  }

  if (qword_1025D4790 != -1)
  {
    sub_10192DAA4();
  }

  v20 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289282;
    *v24 = 0;
    *&v24[4] = 2082;
    *&v24[6] = "";
    v25 = 2114;
    v26 = v7;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Don't know how to convert name to PAApplication, client:%{public, location:escape_only}@}", buf, 0x1Cu);
    if (qword_1025D4790 != -1)
    {
      sub_10192DAA4();
    }
  }

  v21 = qword_1025D4798;
  if (os_signpost_enabled(qword_1025D4798))
  {
    *buf = 68289282;
    *v24 = 0;
    *&v24[4] = 2082;
    *&v24[6] = "";
    v25 = 2114;
    v26 = v7;
    _os_signpost_emit_with_name_impl(dword_100000000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Don't know how to convert name to PAApplication", "{msg%{public}.0s:Don't know how to convert name to PAApplication, client:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

  return v8 == 0;
}

void sub_1000F6870(uint64_t *result, uint64_t a2, double a3)
{
  if ((a2 & 0x14) == 0)
  {
    return;
  }

  v4 = a2;
  v6 = result[8];
  v7 = v6 & a2;
  if ((v6 & a2) != 0)
  {
    if ((a2 & 0x10) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result[8] = v6 | a2;
    if ((a2 & 0x10) == 0)
    {
LABEL_4:
      if ((a2 & 4) == 0)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  v8 = result[2];
  if ([result[6] isAuthLimited])
  {
    v9 = sub_1001D2EC4(result[2], result[6]);
  }

  else
  {
    v9 = result[6];
  }

  sub_1000F6978(v8, v9, 4, v7 == 0, a3);
  if ((v4 & 4) != 0)
  {
LABEL_11:
    v10 = result[2];
    if ([result[6] isAuthLimited])
    {
      v11 = sub_1001D2EC4(result[2], result[6]);
    }

    else
    {
      v11 = result[6];
    }

    sub_1000F6978(v10, v11, 2, v7 == 0, a3);
  }
}

void sub_1000F6978(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v10 = sub_10001A3E8(a1, a2);
  if (!sub_1000F4760(v10, v11))
  {
    return;
  }

  v12 = sub_1000184F4(a1, a2);
  v13 = [v12 clientAnchor];
  if (!v13)
  {
    goto LABEL_5;
  }

  sub_10000EC00(buf, [v13 UTF8String]);
  v14 = sub_1005D7C24(qword_102659E68, buf);
  v15 = v14;
  if ((v45[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (v15)
    {
      goto LABEL_5;
    }
  }

  else if (v14)
  {
LABEL_5:
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v16 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v42 = 2082;
      v43 = "";
      v44 = 2114;
      *v45 = v12;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SystemStatusAttribution attempting attribution for attribution-unavailable client, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v17 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v42 = 2082;
      v43 = "";
      v44 = 2114;
      *v45 = v12;
      _os_signpost_emit_with_name_impl(dword_100000000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#SystemStatusAttribution attempting attribution for attribution-unavailable client", "{msg%{public}.0s:#SystemStatusAttribution attempting attribution for attribution-unavailable client, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    return;
  }

  v18 = [objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v12), "dictionary"}];
  v19 = sub_1000F70DC(v12, v18);
  if (!v19)
  {
    return;
  }

  if (v19 == 2)
  {
    v20 = qword_102659F08;
    if (*(a1 + 448) == 1)
    {
      v21 = 0;
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v22 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        v42 = 2082;
        v43 = "";
        v44 = 2114;
        *v45 = v20;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SystemStatusAttribution attribution to System Service; defaulting to Traffic for record keeping, SystemService:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      v21 = 1;
    }
  }

  else
  {
    v21 = 1;
    v20 = v12;
  }

  v23 = [*(a1 + 440) objectForKey:v20];
  if (v23)
  {
    goto LABEL_25;
  }

  v25 = sub_1000EDD7C(0, v20, v18);
  v26 = [*(a1 + 40) newTimer];
  if (!v25)
  {
    return;
  }

  v23 = [[CLAttributionRecord alloc] initWithAttributionId:v25 andTimer:v26];
  [*(a1 + 440) setObject:v23 forKey:v20];
  v27 = *(a1 + 440);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100125CD4;
  v39[3] = &unk_10246FE58;
  v39[7] = v27;
  v39[8] = a1;
  v40 = v21;
  v39[4] = v20;
  v39[5] = v23;
  v39[6] = v12;
  [(CLTimer *)[(CLAttributionRecord *)v23 attributionTimer] setHandler:v39];
  if (v21)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v28 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      v42 = 2082;
      v43 = "";
      v44 = 2114;
      *v45 = v20;
      *&v45[8] = 2114;
      *&v45[10] = v23;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SystemStatusAttribution Created new AttributionRecord for client, Client:%{public, location:escape_only}@, Record:%{public, location:escape_only}@}", buf, 0x26u);
    }

LABEL_25:
    if (a3 != -1 && (a4 & 1) != 0)
    {
      [(CLAttributionRecord *)v23 incrementAttributionCountForServiceType:a3];
      if (v21)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v24 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68289794;
          *&buf[4] = 0;
          v42 = 2082;
          v43 = "";
          v44 = 1026;
          *v45 = a3;
          *&v45[4] = 2114;
          *&v45[6] = v20;
          *&v45[14] = 2114;
          *&v45[16] = v23;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SystemStatusAttribution #AttributionRecord servicetype count incremented, ServiceType:%{public}d, Client:%{public, location:escape_only}@, Record:%{public, location:escape_only}@}", buf, 0x2Cu);
        }
      }
    }

    goto LABEL_41;
  }

  if (a3 != -1 && a4)
  {
    [(CLAttributionRecord *)v23 incrementAttributionCountForServiceType:a3];
  }

LABEL_41:
  v29 = 10.0;
  if (a5 > 0.0)
  {
    v30 = a5 > 60.0 ? v21 : 0;
    v29 = a5 <= 60.0 ? a5 : 60.0;
    if (v30 == 1)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v31 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289538;
        *&buf[4] = 0;
        v42 = 2082;
        v43 = "";
        v44 = 2114;
        *v45 = v20;
        *&v45[8] = 2050;
        *&v45[10] = a5;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SystemStatusAttribtuion attributionDuration longer than 1m. Shortening attribution duration to 1m, client:%{public, location:escape_only}@, attributionDuration:%{public}f}", buf, 0x26u);
      }

      v29 = 60.0;
    }
  }

  [(CLTimer *)[(CLAttributionRecord *)v23 attributionTimer] nextFireDelay];
  if (v32 == 1.79769313e308)
  {
    sub_1000F47A0(a1, v12, [(CLAttributionRecord *)v23 attributionIdentifier]);
    [(CLTimer *)[(CLAttributionRecord *)v23 attributionTimer] setNextFireDelay:v29];
    if (v21)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v38 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289538;
        *&buf[4] = 0;
        v42 = 2082;
        v43 = "";
        v44 = 2114;
        *v45 = v20;
        *&v45[8] = 2114;
        *&v45[10] = v23;
        v35 = "{msg%{public}.0s:#SystemStatusAttribution Started attribution timer for client, Client:%{public, location:escape_only}@, Record:%{public, location:escape_only}@}";
        v36 = v38;
        v37 = 38;
        goto LABEL_67;
      }
    }
  }

  else
  {
    [(CLTimer *)[(CLAttributionRecord *)v23 attributionTimer] nextFireDelay];
    if (v29 > v33)
    {
      [(CLTimer *)[(CLAttributionRecord *)v23 attributionTimer] setNextFireDelay:v29];
    }

    if (v21)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v34 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289794;
        *&buf[4] = 0;
        v42 = 2082;
        v43 = "";
        v44 = 2114;
        *v45 = v20;
        *&v45[8] = 2114;
        *&v45[10] = v23;
        *&v45[18] = 2050;
        *&v45[20] = v29;
        v35 = "{msg%{public}.0s:#SystemStatusAttribution Extended attribution timer for client, Client:%{public, location:escape_only}@, Record:%{public, location:escape_only}@, Duration:%{public}f}";
        v36 = v34;
        v37 = 48;
LABEL_67:
        _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_INFO, v35, buf, v37);
      }
    }
  }
}

uint64_t sub_1000F70DC(void *a1, void *a2)
{
  v3 = sub_1000401B4(a2);
  result = 0;
  if (v3 <= 4)
  {
    if (v3 <= 2)
    {
      if ((v3 - 1) >= 2)
      {
        if (!v3)
        {
          if ([a1 isEqual:qword_102659F08])
          {
            return 2;
          }

          else
          {
            return 1;
          }
        }

        return result;
      }

      return 1;
    }

    if (v3 != 3)
    {
      return 6;
    }

    return 2;
  }

  if (v3 <= 6)
  {
    if (v3 != 5)
    {
      return 1;
    }

    return 2;
  }

  if (v3 == 7)
  {
    return 10;
  }

  if (v3 == 9)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v7 = 68289282;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2114;
      v12 = a1;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#SystemStatus failed to determine eligibleModes, Client:%{public, location:escape_only}@}", &v7, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v6 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v7 = 68289282;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2114;
      v12 = a1;
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#SystemStatus failed to determine eligibleModes", "{msg%{public}.0s:#SystemStatus failed to determine eligibleModes, Client:%{public, location:escape_only}@}", &v7, 0x1Cu);
    }

    return 0;
  }

  return result;
}

void sub_1000F72F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a3;
  v5 = *(a3 + 8);
  *a3 = 0;
  *(a3 + 8) = 0;
  v7 = (*(*a2 + 16))(a2);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(v6, v7);
  v9 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{@"kCLConnectionMessageSubscribeKey", "BOOLValue"}];
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = (a2 + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  v10(v12, v9, DictionaryOfClasses);
  if (v5)
  {

    sub_100008080(v5);
  }
}

void sub_1000F73E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000F73FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 9);
  do
  {
    result = 2 * (result + v1);
    v5 = *v4++;
    v1 = v5;
  }

  while (v5);
  return result;
}

uint64_t sub_1000F742C(const char *a1)
{
  result = strcmp(a1, "kCLConnectionMessageCollectMetricsForFunction");
  if (result)
  {
    result = strcmp(a1, "kCLConnectionMessageGesture");
    if (result)
    {
      result = strcmp(a1, "kCLConnectionMessageGyroBiasEstimation");
      if (result)
      {
        result = strcmp(a1, "kCLConnectionMessageMotionActivityUpdate");
        if (result)
        {
          result = strcmp(a1, "kCLConnectionMessageMotionActivityPeriodicUpdate");
          if (result)
          {
            result = strcmp(a1, "kCLConnectionMessageMotionActivityQuery");
            if (result)
            {
              result = strcmp(a1, "kCLConnectionMessageMotionActivityAvailable");
              if (result)
              {
                result = strcmp(a1, "kCLConnectionMessageActivityAlarmStart");
                if (result)
                {
                  result = strcmp(a1, "kCLConnectionMessageActivityAlarmAvailable");
                  if (result)
                  {
                    result = strcmp(a1, "kCLConnectionMessageStepCountUpdate");
                    if (result)
                    {
                      result = strcmp(a1, "kCLConnectionMessagePedometerEvent");
                      if (result)
                      {
                        result = strcmp(a1, "kCLConnectionMessageStartStepCountAvailable");
                        if (result)
                        {
                          result = strcmp(a1, "kCLConnectionMessageStepCountQuery");
                          if (result)
                          {
                            result = strcmp(a1, "kCLConnectionMessageStepCountRecordQuery");
                            if (result)
                            {
                              result = strcmp(a1, "kCLConnectionMessageFloorCountAvailable");
                              if (result)
                              {
                                result = strcmp(a1, "kCLConnectionMessagePaceAndCadenceAPIAvailable");
                                if (result)
                                {
                                  result = strcmp(a1, "InUseAssertion/kCLConnectionMessage");
                                  if (result)
                                  {
                                    result = strcmp(a1, "EmergencyEnablementAssertion/kCLConnectionMessage");
                                    if (result)
                                    {
                                      result = strcmp(a1, "LocationIndependenceAssertion/kCLConnectionMessage");
                                      if (result)
                                      {
                                        result = strcmp(a1, "AccuracyEnablementAssertion/kCLConnectionMessage");
                                        if (result)
                                        {
                                          result = strcmp(a1, "kCLConnectionMessageStepCountReset");
                                          if (result)
                                          {
                                            result = strcmp(a1, "kCLConnectionMessageOdometerGpsAvailability");
                                            if (result)
                                            {
                                              result = strcmp(a1, "kCLConnectionMessageStartOdometerUpdate");
                                              if (result)
                                              {
                                                result = strcmp(a1, "kCLConnectionMessageCyclingWorkoutDistanceUpdate");
                                                if (result)
                                                {
                                                  result = strcmp(a1, "kCLConnectionMessageOdometerSuitabilityUpdate");
                                                  if (result)
                                                  {
                                                    result = strcmp(a1, "kCLConnectionMessageSedentaryTimerIsAvailable");
                                                    if (result)
                                                    {
                                                      result = strcmp(a1, "kCLConnectionMessageSedentaryTimerIsArmed");
                                                      if (result)
                                                      {
                                                        result = strcmp(a1, "kCLConnectionMessageSedentaryTimerStart");
                                                        if (result)
                                                        {
                                                          result = strcmp(a1, "kCLConnectionMessageSedentaryTimerStop");
                                                          if (result)
                                                          {
                                                            result = strcmp(a1, "kCLConnectionMessageSedentaryTimerQuery");
                                                            if (result)
                                                            {
                                                              result = strcmp(a1, "kCLConnectionMessageSedentaryTimerAlarm");
                                                              if (result)
                                                              {
                                                                result = strcmp(a1, "kCLConnectionMessageOnBodyDetection");
                                                                if (result)
                                                                {
                                                                  result = strcmp(a1, "kCLConnectionMessageOnBodyDetectionParams");
                                                                  if (result)
                                                                  {
                                                                    result = strcmp(a1, "kCLConnectionMessageSidebandSensorFusionEnable");
                                                                    if (result)
                                                                    {
                                                                      result = strcmp(a1, "kCLConnectionMessageNatalimetryUpdate");
                                                                      if (result)
                                                                      {
                                                                        result = strcmp(a1, "kCLConnectionMessageNatalimetryAvailable");
                                                                        if (result)
                                                                        {
                                                                          result = strcmp(a1, "kCLConnectionMessageNatalimetryQuery");
                                                                          if (result)
                                                                          {
                                                                            result = strcmp(a1, "Health/kCLConnectionMessageMetMinutesQuery");
                                                                            if (result)
                                                                            {
                                                                              result = strcmp(a1, "Health/kCLConnectionMessageVO2MaxInputsQuery");
                                                                              if (result)
                                                                              {
                                                                                result = strcmp(a1, "kCLConnectionMessageNatalimetryGetUserProfile");
                                                                                if (result)
                                                                                {
                                                                                  result = strcmp(a1, "kCLConnectionMessageNatalimetrySetUserProfile");
                                                                                  if (result)
                                                                                  {
                                                                                    result = strcmp(a1, "kCLConnectionMessageExerciseMinuteQuery");
                                                                                    if (result)
                                                                                    {
                                                                                      result = strcmp(a1, "kCLConnectionMessageExerciseMinuteUpdate");
                                                                                      if (result)
                                                                                      {
                                                                                        result = strcmp(a1, "kCLConnectionMessageWorkoutEvent");
                                                                                        if (result)
                                                                                        {
                                                                                          result = strcmp(a1, "kCLConnectionMessageBeginWorkoutSession");
                                                                                          if (result)
                                                                                          {
                                                                                            result = strcmp(a1, "kCLConnectionMessageEndWorkoutSession");
                                                                                            if (result)
                                                                                            {
                                                                                              result = strcmp(a1, "kCLConnectionMessageSetCurrentWorkoutType");
                                                                                              if (result)
                                                                                              {
                                                                                                result = strcmp(a1, "kCLConnectionMessagePauseWorkout");
                                                                                                if (result)
                                                                                                {
                                                                                                  result = strcmp(a1, "kCLConnectionMessageResumeWorkout");
                                                                                                  if (result)
                                                                                                  {
                                                                                                    result = strcmp(a1, "kCLConnectionMessageVehicleStateIsAvailable");
                                                                                                    if (result)
                                                                                                    {
                                                                                                      result = strcmp(a1, "kCLConnectionMessageFallStatsAvailable");
                                                                                                      if (result)
                                                                                                      {
                                                                                                        result = strcmp(a1, "kCLConnectionMessageFallStatsSetEnabled");
                                                                                                        if (result)
                                                                                                        {
                                                                                                          result = strcmp(a1, "kCLConnectionMessageFallStatsSendStats");
                                                                                                          if (result)
                                                                                                          {
                                                                                                            result = strcmp(a1, "kCLConnectionMessageFallStatsGetConfig");
                                                                                                            if (result)
                                                                                                            {
                                                                                                              result = strcmp(a1, "kCLConnectionMessageAnomalyEvent");
                                                                                                              if (result)
                                                                                                              {
                                                                                                                result = strcmp(a1, "kCLConnectionMessageAnomalyEventCompleted");
                                                                                                                if (result)
                                                                                                                {
                                                                                                                  result = strcmp(a1, "kCLConnectionMessageAnomalyEventCompletedMostRecent");
                                                                                                                  if (result)
                                                                                                                  {
                                                                                                                    result = strcmp(a1, "kCLConnectionMessageAnomalyEventEnabled");
                                                                                                                    if (result)
                                                                                                                    {
                                                                                                                      result = strcmp(a1, "SpringTracking/kCLConnectionMessageSpringTrackerIsTracking");
                                                                                                                      if (result)
                                                                                                                      {
                                                                                                                        result = strcmp(a1, "SpringTracking/kCLConnectionMessageSpringTrackerStart");
                                                                                                                        if (result)
                                                                                                                        {
                                                                                                                          result = strcmp(a1, "SpringTracking/kCLConnectionMessageSpringTrackerStop");
                                                                                                                          if (result)
                                                                                                                          {
                                                                                                                            result = strcmp(a1, "SpringTracking/kCLConnectionMessageSpringTrackerQuery");
                                                                                                                            if (result)
                                                                                                                            {
                                                                                                                              result = strcmp(a1, "kCLConnectionMessageMiLoServiceEvent");
                                                                                                                              if (result)
                                                                                                                              {
                                                                                                                                result = strcmp(a1, "kCLConnectionMessageMiLoCreateService");
                                                                                                                                if (result)
                                                                                                                                {
                                                                                                                                  result = strcmp(a1, "kCLConnectionMessageMiLoDeleteService");
                                                                                                                                  if (result)
                                                                                                                                  {
                                                                                                                                    result = strcmp(a1, "kCLConnectionMessageMiLoQueryMyServices");
                                                                                                                                    if (result)
                                                                                                                                    {
                                                                                                                                      result = strcmp(a1, "kCLConnectionMessageMiLoQueryConnectionStatus");
                                                                                                                                      if (result)
                                                                                                                                      {
                                                                                                                                        result = strcmp(a1, "kCLConnectionMessageMiLoConnectToService");
                                                                                                                                        if (result)
                                                                                                                                        {
                                                                                                                                          result = strcmp(a1, "kCLConnectionMessageMiLoPredictionEventUpdate");
                                                                                                                                          if (result)
                                                                                                                                          {
                                                                                                                                            result = strcmp(a1, "kCLConnectionMessageMiLoServiceDebugResponse");
                                                                                                                                            if (result)
                                                                                                                                            {
                                                                                                                                              result = strcmp(a1, "kCLConnectionMessageMiLoConnectionStatusEvent");
                                                                                                                                              if (result)
                                                                                                                                              {
                                                                                                                                                result = strcmp(a1, "kCLConnectionMessageMiLoGenericEventResponse");
                                                                                                                                                if (result)
                                                                                                                                                {
                                                                                                                                                  result = strcmp(a1, "kCLConnectionMessageMiLoEnableMiLoAtCurrentLocation");
                                                                                                                                                  if (result)
                                                                                                                                                  {
                                                                                                                                                    result = strcmp(a1, "kCLConnectionMessageRemoveCustomLOI");
                                                                                                                                                    if (result)
                                                                                                                                                    {
                                                                                                                                                      result = strcmp(a1, "kCLConnectionMessageAbsoluteAltitudeUpdate");
                                                                                                                                                      if (result)
                                                                                                                                                      {
                                                                                                                                                        result = strcmp(a1, "kCLConnectionMessageKappaStatsAvailable");
                                                                                                                                                        if (result)
                                                                                                                                                        {
                                                                                                                                                          result = strcmp(a1, "kCLConnectionMessageKappaSendAPCommand");
                                                                                                                                                          if (result)
                                                                                                                                                          {
                                                                                                                                                            result = strcmp(a1, "kCLConnectionMessageKappaGetStateRequest");
                                                                                                                                                            if (result)
                                                                                                                                                            {
                                                                                                                                                              result = strcmp(a1, "kCLConnectionMessageKappaGetState");
                                                                                                                                                              if (result)
                                                                                                                                                              {
                                                                                                                                                                result = strcmp(a1, "kCLConnectionMessageIndoorOutdoorUpdate");
                                                                                                                                                                if (result)
                                                                                                                                                                {
                                                                                                                                                                  result = strcmp(a1, "kCLConnectionMessageIndoorOutdoorLastKnownState");
                                                                                                                                                                  if (result)
                                                                                                                                                                  {
                                                                                                                                                                    result = strcmp(a1, "kCLConnectionMessageBBTimeFreqTransferAssert");
                                                                                                                                                                    if (result)
                                                                                                                                                                    {
                                                                                                                                                                      result = strcmp(a1, "kCLConnectionMessageBBTimeFreqTransferAssertError");
                                                                                                                                                                      if (result)
                                                                                                                                                                      {
                                                                                                                                                                        result = strcmp(a1, "kCLConnectionMessageBBTimeFreqTransferMeasurement");
                                                                                                                                                                        if (result)
                                                                                                                                                                        {
                                                                                                                                                                          result = strcmp(a1, "kCLConnectionMessageGNSSHeatMap");
                                                                                                                                                                          if (result)
                                                                                                                                                                          {
                                                                                                                                                                            result = strcmp(a1, "kCLConnectionMessageGnssDisablementAssertReq");
                                                                                                                                                                            if (result)
                                                                                                                                                                            {
                                                                                                                                                                              result = strcmp(a1, "kCLConnectionMessageGnssDisablementAssertRsp");
                                                                                                                                                                              if (result)
                                                                                                                                                                              {
                                                                                                                                                                                result = strcmp(a1, "kCLConnectionMessageVO2MaxRetrocomputeStatusQuery");
                                                                                                                                                                                if (result)
                                                                                                                                                                                {
                                                                                                                                                                                  result = strcmp(a1, "kCLConnectionMessageEclipseServiceRequest");
                                                                                                                                                                                  if (result)
                                                                                                                                                                                  {
                                                                                                                                                                                    result = strcmp(a1, "kCLConnectionMessageEclipseViewObstructedStateRequest");
                                                                                                                                                                                    if (result)
                                                                                                                                                                                    {
                                                                                                                                                                                      result = strcmp(a1, "kCLConnectionMessageProxPDPUpdate");
                                                                                                                                                                                      if (result)
                                                                                                                                                                                      {
                                                                                                                                                                                        result = strcmp(a1, "kCLConnectionMessageALSPhoneUpdate");
                                                                                                                                                                                        if (result)
                                                                                                                                                                                        {
                                                                                                                                                                                          result = strcmp(a1, "kCLConnectionMessageWriteContextConfiguration");
                                                                                                                                                                                          if (result)
                                                                                                                                                                                          {
                                                                                                                                                                                            result = strcmp(a1, "kCLConnectionMessageMagicMountServiceRequest");
                                                                                                                                                                                            if (result)
                                                                                                                                                                                            {
                                                                                                                                                                                              result = strcmp(a1, "kCLConnectionMessageMagicMountAPWakesAllowed");
                                                                                                                                                                                              if (result)
                                                                                                                                                                                              {
                                                                                                                                                                                                result = strcmp(a1, "kCLConnectionMessageFlickGestureServiceRequest");
                                                                                                                                                                                                if (result)
                                                                                                                                                                                                {
                                                                                                                                                                                                  result = strcmp(a1, "kCLConnectionMessageGnssExtensionsClient");
                                                                                                                                                                                                  if (result)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    result = strcmp(a1, "kCLConnectionMessageGnssExtensionsClientError");
                                                                                                                                                                                                    if (result)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      result = strcmp(a1, "kCLConnectionMessageGnssExtensionsData");
                                                                                                                                                                                                      if (result)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        result = strcmp(a1, "kCLConnectionMessageBatchedAccelerometer");
                                                                                                                                                                                                        if (result)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          result = strcmp(a1, "kCLConnectionMessageBatchedDeviceMotion");
                                                                                                                                                                                                          if (result)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            result = strcmp(a1, "kCLConnectionMessageBatchedSensorAvailabilityUpdate");
                                                                                                                                                                                                            if (result)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              result = strcmp(a1, "kCLConnectionMessageBatchedSensorError");
                                                                                                                                                                                                              if (result)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                result = strcmp(a1, "kCLConnectionMessageCLGNSSStateQueryAssertionResponse");
                                                                                                                                                                                                                if (result)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  return strcmp(a1, "kCLConnectionMessageBBGnssStatusQuery") != 0;
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
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1000F7C80(uint64_t a1, uint64_t *a2, uint64_t a3, double a4)
{
  v4 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v7 = 0;
  }

  v6 = v4;
  v8 = a3;
  v9 = a4;
  sub_100048DBC(a1, &v6);
  if (v7)
  {
    sub_100008080(v7);
  }

  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1000F7CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (v10)
  {
    sub_100008080(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000F7D18(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  if ([a2 website])
  {
    v4 = [v4 anchorKeyPath];
  }

  v6 = [*(a1 + 136) BOOLForKey:@"SuppressShowingInSettings" atKeyPath:v4 defaultValue:0];
  [*(a1 + 136) removeValueForKey:@"SuppressShowingInSettings" atKeyPath:v4];
  [*(a1 + 136) setBool:1 forKey:@"Registered" atKeyPath:v4];
  if (v6)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v7 = off_1025D47A8;
    v8 = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      *buf = 68289538;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2114;
      v20 = v4;
      v21 = 1026;
      v22 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Client will now show up in settings, Client:%{public, location:escape_only}@, shouldSync:%{public}hhd}", buf, 0x22u);
    }

    if (a3)
    {
      v10 = sub_10001A3E8(v8, v9);
      v11 = (**v10)(v10);
      if ((v11 & 1) != 0 || (sub_10001A3E8(v11, v12), sub_10001CF3C()))
      {
        sub_10000EC00(__p, "ShowingClientInSettings");
        sub_10077A934(a1, v4, __p);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }
}

void sub_1000F7EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000F8078(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 80) = v7;
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 280) = 0;
  if (*(a2 + 280) == 1)
  {
    *(a1 + 192) = *(a2 + 192);
    v10 = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 200) = v10;
    *(a2 + 208) = 0;
    *(a2 + 216) = 0;
    *(a2 + 200) = 0;
    v11 = *(a2 + 224);
    v12 = *(a2 + 240);
    v13 = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 240) = v12;
    *(a1 + 256) = v13;
    *(a1 + 224) = v11;
    *(a1 + 280) = 1;
  }

  *(a1 + 288) = *(a2 + 288);
  v14 = *(a2 + 304);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = v14;
  *(a2 + 296) = 0u;
  v15 = *(a2 + 392);
  v17 = *(a2 + 344);
  v16 = *(a2 + 360);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 392) = v15;
  *(a1 + 344) = v17;
  *(a1 + 360) = v16;
  v19 = *(a2 + 424);
  v18 = *(a2 + 440);
  v20 = *(a2 + 408);
  *(a1 + 452) = *(a2 + 452);
  *(a1 + 424) = v19;
  *(a1 + 440) = v18;
  *(a1 + 408) = v20;
  v21 = *(a2 + 328);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 328) = v21;
  memcpy((a1 + 472), (a2 + 472), 0x201uLL);
  *(a1 + 992) = *(a2 + 992);
  *(a2 + 992) = 0u;
  v22 = *(a2 + 1040);
  v23 = *(a2 + 1024);
  *(a1 + 1008) = *(a2 + 1008);
  *(a1 + 1024) = v23;
  *(a1 + 1040) = v22;
  v24 = *(a2 + 1056);
  v25 = *(a2 + 1097);
  v26 = *(a2 + 1072);
  *(a1 + 1088) = *(a2 + 1088);
  *(a1 + 1072) = v26;
  *(a1 + 1097) = v25;
  *(a1 + 1056) = v24;
  v27 = *(a2 + 1136);
  *(a1 + 1120) = *(a2 + 1120);
  *(a1 + 1136) = v27;
  v28 = *(a2 + 1232);
  v29 = *(a2 + 1248);
  v30 = *(a2 + 1216);
  *(a1 + 1260) = *(a2 + 1260);
  *(a1 + 1216) = v30;
  *(a1 + 1248) = v29;
  *(a1 + 1232) = v28;
  v31 = *(a2 + 1168);
  v32 = *(a2 + 1184);
  v33 = *(a2 + 1152);
  *(a1 + 1200) = *(a2 + 1200);
  *(a1 + 1152) = v33;
  *(a1 + 1184) = v32;
  *(a1 + 1168) = v31;
  memcpy((a1 + 1280), (a2 + 1280), 0x201uLL);
  *(a1 + 1800) = *(a2 + 1800);
  *(a1 + 1808) = *(a2 + 1808);
  *(a2 + 1800) = 0u;
  v35 = *(a2 + 1880);
  v34 = *(a2 + 1896);
  v36 = *(a2 + 1864);
  *(a1 + 1905) = *(a2 + 1905);
  *(a1 + 1880) = v35;
  *(a1 + 1896) = v34;
  *(a1 + 1864) = v36;
  v38 = *(a2 + 1832);
  v37 = *(a2 + 1848);
  *(a1 + 1816) = *(a2 + 1816);
  *(a1 + 1832) = v38;
  *(a1 + 1848) = v37;
  *(a1 + 1928) = *(a2 + 1928);
  *(a1 + 1936) = *(a2 + 1936);
  *(a2 + 1928) = 0u;
  memcpy((a1 + 1944), (a2 + 1944), 0x170uLL);
  memcpy((a1 + 2312), (a2 + 2312), 0x201uLL);
  *(a1 + 2832) = *(a2 + 2832);
  *(a2 + 2832) = 0u;
  v39 = *(a2 + 2880);
  v40 = *(a2 + 2864);
  *(a1 + 2848) = *(a2 + 2848);
  *(a1 + 2864) = v40;
  *(a1 + 2880) = v39;
  v41 = *(a2 + 2896);
  v42 = *(a2 + 2937);
  v43 = *(a2 + 2928);
  *(a1 + 2912) = *(a2 + 2912);
  *(a1 + 2928) = v43;
  *(a1 + 2937) = v42;
  *(a1 + 2896) = v41;
  v44 = *(a2 + 2960);
  *(a1 + 2968) = *(a2 + 2968);
  *(a1 + 2960) = v44;
  LOBYTE(v44) = *(a2 + 2984);
  *(a1 + 2976) = *(a2 + 2976);
  *(a1 + 2984) = v44;
  v45 = *(a2 + 3008);
  *(a1 + 2992) = *(a2 + 2992);
  *(a1 + 3008) = v45;
  *(a2 + 3008) = 0;
  *(a2 + 2992) = 0u;
  *(a1 + 3016) = *(a2 + 3016);
  v46 = *(a2 + 3032);
  v47 = *(a2 + 3048);
  v48 = *(a2 + 3064);
  *(a1 + 3076) = *(a2 + 3076);
  *(a1 + 3048) = v47;
  *(a1 + 3064) = v48;
  *(a1 + 3032) = v46;
  v49 = *(a2 + 3112);
  *(a1 + 3096) = *(a2 + 3096);
  *(a1 + 3112) = v49;
  *(a2 + 3112) = 0;
  *(a2 + 3096) = 0u;
  v50 = *(a2 + 3152);
  v51 = *(a2 + 3136);
  *(a1 + 3120) = *(a2 + 3120);
  *(a1 + 3136) = v51;
  *(a1 + 3152) = v50;
  v52 = *(a2 + 3184);
  v53 = *(a2 + 3200);
  v54 = *(a2 + 3216);
  *(a1 + 3168) = *(a2 + 3168);
  *(a1 + 3216) = v54;
  *(a1 + 3200) = v53;
  *(a1 + 3184) = v52;
  v55 = *(a2 + 3232);
  v56 = *(a2 + 3248);
  v57 = *(a2 + 3264);
  *(a1 + 3280) = *(a2 + 3280);
  *(a1 + 3264) = v57;
  *(a1 + 3248) = v56;
  *(a1 + 3232) = v55;
  *(a1 + 3288) = *(a2 + 3288);
  *(a1 + 3296) = *(a2 + 3296);
  *(a2 + 3288) = 0u;
  v58 = *(a2 + 3304);
  v59 = *(a2 + 3320);
  v60 = *(a2 + 3336);
  *(a1 + 3351) = *(a2 + 3351);
  *(a1 + 3320) = v59;
  *(a1 + 3336) = v60;
  *(a1 + 3304) = v58;
  *(a1 + 3360) = *(a2 + 3360);
  *(a2 + 3360) = 0u;
  v61 = *(a2 + 3376);
  *(a1 + 3385) = *(a2 + 3385);
  *(a1 + 3376) = v61;
  return a1;
}

uint64_t sub_1000F8468(uint64_t a1)
{
  v2 = a1 + 64;
  v1 = *(a1 + 64);
  if (!v1)
  {
    goto LABEL_8;
  }

  v3 = a1 + 64;
  do
  {
    v4 = *(v1 + 32);
    if ((v4 & 0x80000000) == 0)
    {
      v3 = v1;
    }

    v1 = *(v1 + ((v4 >> 28) & 8));
  }

  while (v1);
  if (v3 == v2 || *(v3 + 32) >= 1)
  {
LABEL_8:
    v3 = a1 + 64;
  }

  v12 = 0;
  result = sub_10000608C(a1, &v12, 1);
  if (result)
  {
    if (v3 != v2)
    {
      v6 = *(v3 + 40);
      if (v6 != (v3 + 48))
      {
        v7 = 10000.0;
        do
        {
          v8 = v6[5];
          if (v7 >= v8)
          {
            v7 = v6[5];
          }

          v9 = *(v6 + 1);
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
              v10 = *(v6 + 2);
              v11 = *v10 == v6;
              v6 = v10;
            }

            while (!v11);
          }

          v6 = v10;
        }

        while (v10 != (v3 + 48));
      }
    }
  }

  return result;
}

uint64_t sub_1000F8550(uint64_t a1, uint64_t a2)
{
  sub_10001A3E8(a1, a2);

  return sub_10001CF3C();
}

uint64_t sub_1000F85B4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 80) = v7;
  v10 = *(a2 + 144);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  v11 = *(a1 + 152);
  *(a1 + 144) = v10;
  if (v11)
  {
    sub_100008080(v11);
  }

  v12 = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  v13 = *(a1 + 168);
  *(a1 + 160) = v12;
  if (v13)
  {
    sub_100008080(v13);
  }

  v14 = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v15 = *(a1 + 184);
  *(a1 + 176) = v14;
  if (v15)
  {
    sub_100008080(v15);
  }

  sub_1000F8A78(a1 + 192, a2 + 192);
  *(a1 + 288) = *(a2 + 288);
  v16 = *(a2 + 296);
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  v17 = *(a1 + 304);
  *(a1 + 296) = v16;
  if (v17)
  {
    sub_100008080(v17);
  }

  v18 = *(a2 + 328);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 328) = v18;
  v19 = *(a2 + 344);
  v20 = *(a2 + 360);
  v21 = *(a2 + 392);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 392) = v21;
  *(a1 + 344) = v19;
  *(a1 + 360) = v20;
  v22 = *(a2 + 408);
  v23 = *(a2 + 424);
  v24 = *(a2 + 440);
  *(a1 + 452) = *(a2 + 452);
  *(a1 + 424) = v23;
  *(a1 + 440) = v24;
  *(a1 + 408) = v22;
  memcpy((a1 + 472), (a2 + 472), 0x201uLL);
  v25 = *(a2 + 992);
  *(a2 + 992) = 0u;
  v26 = *(a1 + 1000);
  *(a1 + 992) = v25;
  if (v26)
  {
    sub_100008080(v26);
  }

  v27 = *(a2 + 1008);
  v28 = *(a2 + 1024);
  *(a1 + 1040) = *(a2 + 1040);
  *(a1 + 1008) = v27;
  *(a1 + 1024) = v28;
  v29 = *(a2 + 1056);
  v30 = *(a2 + 1072);
  v31 = *(a2 + 1088);
  *(a1 + 1097) = *(a2 + 1097);
  *(a1 + 1088) = v31;
  *(a1 + 1072) = v30;
  *(a1 + 1056) = v29;
  v32 = *(a2 + 1168);
  v33 = *(a2 + 1184);
  v34 = *(a2 + 1200);
  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1200) = v34;
  *(a1 + 1184) = v33;
  *(a1 + 1168) = v32;
  v35 = *(a2 + 1232);
  v36 = *(a2 + 1248);
  v37 = *(a2 + 1260);
  *(a1 + 1216) = *(a2 + 1216);
  *(a1 + 1260) = v37;
  *(a1 + 1248) = v36;
  *(a1 + 1232) = v35;
  v38 = *(a2 + 1120);
  *(a1 + 1136) = *(a2 + 1136);
  *(a1 + 1120) = v38;
  memcpy((a1 + 1280), (a2 + 1280), 0x201uLL);
  v39 = *(a2 + 1800);
  *(a2 + 1800) = 0u;
  v40 = *(a1 + 1808);
  *(a1 + 1800) = v39;
  if (v40)
  {
    sub_100008080(v40);
  }

  v41 = *(a2 + 1816);
  v42 = *(a2 + 1848);
  *(a1 + 1832) = *(a2 + 1832);
  *(a1 + 1848) = v42;
  *(a1 + 1816) = v41;
  v43 = *(a2 + 1864);
  v44 = *(a2 + 1880);
  v45 = *(a2 + 1896);
  *(a1 + 1905) = *(a2 + 1905);
  *(a1 + 1880) = v44;
  *(a1 + 1896) = v45;
  *(a1 + 1864) = v43;
  v46 = *(a2 + 1928);
  *(a2 + 1928) = 0u;
  v47 = *(a1 + 1936);
  *(a1 + 1928) = v46;
  if (v47)
  {
    sub_100008080(v47);
  }

  memcpy((a1 + 1944), (a2 + 1944), 0x170uLL);
  memcpy((a1 + 2312), (a2 + 2312), 0x201uLL);
  v48 = *(a2 + 2832);
  *(a2 + 2832) = 0u;
  v49 = *(a1 + 2840);
  *(a1 + 2832) = v48;
  if (v49)
  {
    sub_100008080(v49);
  }

  v50 = *(a2 + 2848);
  v51 = *(a2 + 2864);
  *(a1 + 2880) = *(a2 + 2880);
  *(a1 + 2864) = v51;
  *(a1 + 2848) = v50;
  v52 = *(a2 + 2896);
  v53 = *(a2 + 2912);
  v54 = *(a2 + 2928);
  *(a1 + 2937) = *(a2 + 2937);
  *(a1 + 2928) = v54;
  *(a1 + 2912) = v53;
  *(a1 + 2896) = v52;
  v55 = *(a2 + 2960);
  *(a1 + 2968) = *(a2 + 2968);
  *(a1 + 2960) = v55;
  v56 = *(a2 + 2976);
  *(a1 + 2984) = *(a2 + 2984);
  *(a1 + 2976) = v56;
  v57 = (a1 + 2992);
  if (*(a1 + 3015) < 0)
  {
    operator delete(*v57);
  }

  v58 = *(a2 + 2992);
  *(a1 + 3008) = *(a2 + 3008);
  *v57 = v58;
  *(a2 + 3015) = 0;
  *(a2 + 2992) = 0;
  v59 = *(a2 + 3076);
  v61 = *(a2 + 3048);
  v60 = *(a2 + 3064);
  *(a1 + 3032) = *(a2 + 3032);
  *(a1 + 3048) = v61;
  *(a1 + 3064) = v60;
  *(a1 + 3076) = v59;
  *(a1 + 3016) = *(a2 + 3016);
  v62 = (a1 + 3096);
  if (*(a1 + 3119) < 0)
  {
    operator delete(*v62);
  }

  v63 = *(a2 + 3096);
  *(a1 + 3112) = *(a2 + 3112);
  *v62 = v63;
  *(a2 + 3119) = 0;
  *(a2 + 3096) = 0;
  v64 = *(a2 + 3216);
  v65 = *(a2 + 3200);
  v66 = *(a2 + 3184);
  *(a1 + 3168) = *(a2 + 3168);
  *(a1 + 3184) = v66;
  *(a1 + 3200) = v65;
  *(a1 + 3216) = v64;
  v67 = *(a2 + 3152);
  v68 = *(a2 + 3136);
  *(a1 + 3120) = *(a2 + 3120);
  *(a1 + 3136) = v68;
  *(a1 + 3152) = v67;
  v69 = *(a2 + 3232);
  v70 = *(a2 + 3248);
  v71 = *(a2 + 3264);
  *(a1 + 3280) = *(a2 + 3280);
  *(a1 + 3264) = v71;
  *(a1 + 3248) = v70;
  *(a1 + 3232) = v69;
  v72 = *(a2 + 3288);
  v73 = 0uLL;
  *(a2 + 3288) = 0u;
  v74 = *(a1 + 3296);
  *(a1 + 3288) = v72;
  if (v74)
  {
    sub_100008080(v74);
    v73 = 0uLL;
  }

  v75 = *(a2 + 3304);
  v76 = *(a2 + 3320);
  v77 = *(a2 + 3336);
  *(a1 + 3351) = *(a2 + 3351);
  *(a1 + 3320) = v76;
  *(a1 + 3336) = v77;
  *(a1 + 3304) = v75;
  v78 = *(a2 + 3360);
  *(a2 + 3360) = v73;
  v79 = *(a1 + 3368);
  *(a1 + 3360) = v78;
  if (v79)
  {
    sub_100008080(v79);
  }

  v80 = *(a2 + 3376);
  *(a1 + 3385) = *(a2 + 3385);
  *(a1 + 3376) = v80;
  return a1;
}

void *sub_1000F8A0C(void *a1)
{
  *a1 = off_102468328;
  sub_100102BC8(a1 + 1);
  return a1;
}

__n128 sub_1000F8A78(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == *(a2 + 88))
  {
    if (*(a1 + 88))
    {
      *a1 = *a2;
      if (*(a1 + 31) < 0)
      {
        operator delete(*(a1 + 8));
      }

      v4 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v4;
      *(a2 + 31) = 0;
      *(a2 + 8) = 0;
      result = *(a2 + 32);
      v6 = *(a2 + 48);
      v7 = *(a2 + 64);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 48) = v6;
      *(a1 + 64) = v7;
      *(a1 + 32) = result;
    }
  }

  else if (*(a1 + 88))
  {
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 88) = 0;
  }

  else
  {
    *a1 = *a2;
    v8 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v8;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    result = *(a2 + 32);
    v9 = *(a2 + 48);
    v10 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 48) = v9;
    *(a1 + 64) = v10;
    *(a1 + 32) = result;
    *(a1 + 88) = 1;
  }

  return result;
}
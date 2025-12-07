void sub_100574DA4(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_1004906DC(v3 - 40);
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

uint64_t sub_100574E64(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_100574ED8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100574ED8(a1, *a2);
    sub_100574ED8(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      sub_100008080(v4);
    }

    operator delete(a2);
  }
}

uint64_t *sub_100574F38(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_100574FEC(void *a1, unsigned int *a2)
{
  result = sub_100574F38(a1, a2);
  if (result)
  {
    sub_1005465E4(a1, result);
    return 1;
  }

  return result;
}

void *sub_100575024(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *sub_1000F2B3C(a1, &v6, a2);
  if (!result)
  {
    sub_1005750BC();
  }

  return result;
}

void sub_100575158(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002E4F74(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100575174()
{
  sub_10000EC00(v2, "com.apple.locationd.bundle-/System/Library/LocationBundles/AppGenius.bundle");
  sub_10000EC00(v3, "com.apple.locationd.bundle-/System/Library/LocationBundles/Traffic.bundle");
  sub_10000EC00(v4, "com.apple.locationd.bundle-/System/Library/LocationBundles/AltimeterHarvest.bundle");
  sub_10000EC00(v5, "com.apple.locationd.bundle-/System/Library/LocationBundles/TraceHarvest.bundle");
  sub_10000EC00(v6, "com.apple.locationd.bundle-/System/Library/LocationBundles/IonosphereHarvest.bundle");
  sub_10000EC00(v7, "com.apple.locationd.bundle-/System/Library/LocationBundles/LocationHarvest.bundle");
  qword_102656EC8 = 0;
  unk_102656ED0 = 0;
  qword_102656ED8 = 0;
  sub_100390144(&qword_102656EC8, v2, &v8, 6uLL);
  for (i = 0; i != -18; i -= 3)
  {
    if (SHIBYTE(v7[i + 2]) < 0)
    {
      operator delete(v7[i]);
    }
  }

  return __cxa_atexit(sub_1004E8DEC, &qword_102656EC8, dword_100000000);
}

void sub_1005752B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 143);
  v13 = -144;
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

uint64_t sub_10057531C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v8 = *a3;
  v9 = *(a3 + 2);
  if (a2 && !sub_100CE74C4(a1))
  {
    if (qword_1025D44D0 != -1)
    {
      sub_1018C578C();
    }

    v5 = qword_1025D44D8;
    if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Minimum distance not reached, overriding notification with kCMWorkoutLocationTypeIndoor", v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C57A0();
    }

    *&v8 = 1;
  }

  return sub_100CE7578(a1, a2, &v8);
}

void sub_1005753FC(uint64_t a1)
{
  sub_100575464(a1);

  operator delete();
}

uint64_t sub_100575464(uint64_t a1)
{
  *a1 = off_1024A6A98;
  if (*(a1 + 647) < 0)
  {
    operator delete(*(a1 + 624));
  }

  sub_1005754EC(a1 + 520);
  v2 = *(a1 + 472);
  if (v2)
  {
    *(a1 + 480) = v2;
    operator delete(v2);
  }

  if (*(a1 + 471) < 0)
  {
    operator delete(*(a1 + 448));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1005754EC(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 24);
  sub_1000B8618(&v5);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100575558(uint64_t a1, void *a2)
{
  *a1 = off_10245FE50;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 16) = a2;
  return a1;
}

void sub_1005755A8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
    sub_1018C58B4(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005755C8(uint64_t a1)
{
  *a1 = off_10245FE50;
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 8) = 0;
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t sub_100575674(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    *(a1 + 8) = 0;
    return (*(*result + 8))();
  }

  return result;
}

void sub_1005756B0(uint64_t a1)
{
  sub_1005755C8(a1);

  operator delete();
}

void sub_1005756E8(uint64_t a1)
{
  if (qword_1025D45A0 != -1)
  {
    sub_1018C58D8();
  }

  v2 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "start mock data provider", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C58EC();
  }

  if (!*(a1 + 8))
  {
    v5 = 8;
    strcpy(__p, "MockAlgo");
    operator new();
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v3 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "start mock data provider", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C5A04();
  }
}

void sub_1005758E0(uint64_t a1@<X0>, const void **a2@<X8>)
{
  v4 = *a1;
  *buf = 2;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 2;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 == 1 && (*(v6 + 33) & 1) != 0)
    {
LABEL_6:
      {
        v13 = 0;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(a1 + 24);
        v13 = v8;
      }

      sub_1005783C8(v7, v9, a2, *(a1 + 8), *(a1 + 16));
      if (v13)
      {
        sub_100008080(v13);
      }

      goto LABEL_22;
    }
  }

  else if (v6[4])
  {
    goto LABEL_6;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v12 = *(a1 + 24);
    *buf = 67109376;
    v21 = 2;
    v22 = 1024;
    v23 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C5C1C(buf);
    v14 = *(a1 + 24);
    v17[0] = 67109376;
    v17[1] = 2;
    v18 = 1024;
    v19 = v14;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 17, "[Composite view] trying to grab stream %d with incompatible time base %d", v17, 14);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::DM, T = CLDeviceMotion::Sample, Strategy = CMDataProviderComposite::View::PassThroughStrategy<CLDeviceMotion::Sample>]", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
LABEL_22:
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_100575B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, char a15)
{
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100575CB0(uint64_t a1@<X0>, const void **a2@<X8>)
{
  v4 = *a1;
  *buf = 5;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 5;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 == 1 && (*(v6 + 33) & 1) != 0)
    {
LABEL_6:
      {
        v13 = 0;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(a1 + 24);
        v13 = v8;
      }

      sub_100578C2C(v7, v9, a2, *(a1 + 8), *(a1 + 16));
      if (v13)
      {
        sub_100008080(v13);
      }

      goto LABEL_22;
    }
  }

  else if (v6[4])
  {
    goto LABEL_6;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v12 = *(a1 + 24);
    *buf = 67109376;
    v21 = 5;
    v22 = 1024;
    v23 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C5C1C(buf);
    v14 = *(a1 + 24);
    v17[0] = 67109376;
    v17[1] = 5;
    v18 = 1024;
    v19 = v14;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 17, "[Composite view] trying to grab stream %d with incompatible time base %d", v17, 14);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::Steps, T = CMDataProvider::Types::CMDPLegacySteps, Strategy = CMDataProviderComposite::View::PassThroughStrategy<CMDataProvider::Types::CMDPLegacySteps>]", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
LABEL_22:
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_100575F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, char a15)
{
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100576080(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  *buf = 14;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 14;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 == 1 && (*(v6 + 33) & 1) != 0)
    {
LABEL_6:
      {
        v13 = 0;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(a1 + 24);
        v13 = v8;
      }

      sub_1000E1A38(v7, v9, a2, *(a1 + 8), *(a1 + 16));
      if (v13)
      {
        sub_100008080(v13);
      }

      goto LABEL_22;
    }
  }

  else if (v6[4])
  {
    goto LABEL_6;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v12 = *(a1 + 24);
    *buf = 67109376;
    v21 = 14;
    v22 = 1024;
    v23 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C5C1C(buf);
    v14 = *(a1 + 24);
    v17[0] = 67109376;
    v17[1] = 14;
    v18 = 1024;
    v19 = v14;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 17, "[Composite view] trying to grab stream %d with incompatible time base %d", v17, 14);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::PedNetSteps, T = CMPedEntry, Strategy = CMDataProviderComposite::View::PassThroughStrategy<CMPedEntry>]", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
LABEL_22:
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_10057631C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, char a15)
{
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10057644C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  *buf = 15;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 15;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 == 1 && (*(v6 + 33) & 1) != 0)
    {
LABEL_6:
      {
        v13 = 0;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(a1 + 24);
        v13 = v8;
      }

      sub_1000D6FEC(v7, v9, a2, *(a1 + 8), *(a1 + 16));
      if (v13)
      {
        sub_100008080(v13);
      }

      goto LABEL_22;
    }
  }

  else if (v6[4])
  {
    goto LABEL_6;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v12 = *(a1 + 24);
    *buf = 67109376;
    v21 = 15;
    v22 = 1024;
    v23 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C5C1C(buf);
    v14 = *(a1 + 24);
    v17[0] = 67109376;
    v17[1] = 15;
    v18 = 1024;
    v19 = v14;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 17, "[Composite view] trying to grab stream %d with incompatible time base %d", v17, 14);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::BatchPedNetSteps, T = CMPedometerStep, Strategy = CMDataProviderComposite::View::PassThroughStrategy<CMPedometerStep>]", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
LABEL_22:
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_1005766EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, char a15)
{
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10057681C(uint64_t a1@<X0>, const void **a2@<X8>)
{
  v4 = *a1;
  *buf = 6;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 6;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 == 1 && (*(v6 + 33) & 1) != 0)
    {
LABEL_6:
      {
        v13 = 0;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(a1 + 24);
        v13 = v8;
      }

      sub_100579390(v7, v9, a2, *(a1 + 8), *(a1 + 16));
      if (v13)
      {
        sub_100008080(v13);
      }

      goto LABEL_22;
    }
  }

  else if (v6[4])
  {
    goto LABEL_6;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v12 = *(a1 + 24);
    *buf = 67109376;
    v21 = 6;
    v22 = 1024;
    v23 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C5C1C(buf);
    v14 = *(a1 + 24);
    v17[0] = 67109376;
    v17[1] = 6;
    v18 = 1024;
    v19 = v14;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 17, "[Composite view] trying to grab stream %d with incompatible time base %d", v17, 14);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::HR, T = CLCatherineNotifier_Type::NotificationData, Strategy = CMDataProviderComposite::View::PassThroughStrategy<CLCatherineNotifier_Type::NotificationData>]", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
LABEL_22:
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_100576ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, char a15)
{
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100576BEC(uint64_t a1@<X0>, const void **a2@<X8>)
{
  v4 = *a1;
  *buf = 7;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 7;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 == 1 && (*(v6 + 33) & 1) != 0)
    {
LABEL_6:
      {
        v13 = 0;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(a1 + 24);
        v13 = v8;
      }

      sub_100579894(v7, v9, a2, *(a1 + 8), *(a1 + 16));
      if (v13)
      {
        sub_100008080(v13);
      }

      goto LABEL_22;
    }
  }

  else if (v6[4])
  {
    goto LABEL_6;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v12 = *(a1 + 24);
    *buf = 67109376;
    v21 = 7;
    v22 = 1024;
    v23 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C5C1C(buf);
    v14 = *(a1 + 24);
    v17[0] = 67109376;
    v17[1] = 7;
    v18 = 1024;
    v19 = v14;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 17, "[Composite view] trying to grab stream %d with incompatible time base %d", v17, 14);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::AccessoryDMFeatures, T = CLAccessoryDMFeatures, Strategy = CMDataProviderComposite::View::PassThroughStrategy<CLAccessoryDMFeatures>]", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
LABEL_22:
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_100576E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, char a15)
{
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100576FBC(uint64_t a1@<X0>, const void **a2@<X8>)
{
  v4 = *a1;
  *buf = 10;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 10;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 == 1 && (*(v6 + 33) & 1) != 0)
    {
LABEL_6:
      {
        v13 = 0;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(a1 + 24);
        v13 = v8;
      }

      sub_100579D18(v7, v9, a2, *(a1 + 8), *(a1 + 16));
      if (v13)
      {
        sub_100008080(v13);
      }

      goto LABEL_22;
    }
  }

  else if (v6[4])
  {
    goto LABEL_6;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v12 = *(a1 + 24);
    *buf = 67109376;
    v21 = 10;
    v22 = 1024;
    v23 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C5C1C(buf);
    v14 = *(a1 + 24);
    v17[0] = 67109376;
    v17[1] = 10;
    v18 = 1024;
    v19 = v14;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 17, "[Composite view] trying to grab stream %d with incompatible time base %d", v17, 14);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::Odometer, T = CMDataProvider::Types::CMDPOdometer, Strategy = CMDataProviderComposite::View::PassThroughStrategy<CMDataProvider::Types::CMDPOdometer>]", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
LABEL_22:
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_10057725C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, char a15)
{
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10057738C(uint64_t a1@<X0>, const void **a2@<X8>)
{
  v4 = *a1;
  *buf = 11;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 11;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 == 1 && (*(v6 + 33) & 1) != 0)
    {
LABEL_6:
      {
        v13 = 0;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(a1 + 24);
        v13 = v8;
      }

      sub_10057A1A4(v7, v9, a2, *(a1 + 8), *(a1 + 16));
      if (v13)
      {
        sub_100008080(v13);
      }

      goto LABEL_22;
    }
  }

  else if (v6[4])
  {
    goto LABEL_6;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v12 = *(a1 + 24);
    *buf = 67109376;
    v21 = 11;
    v22 = 1024;
    v23 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C5C1C(buf);
    v14 = *(a1 + 24);
    v17[0] = 67109376;
    v17[1] = 11;
    v18 = 1024;
    v19 = v14;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 17, "[Composite view] trying to grab stream %d with incompatible time base %d", v17, 14);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::Elevation, T = CLElevationChangeEntry, Strategy = CMDataProviderComposite::View::PassThroughStrategy<CLElevationChangeEntry>]", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
LABEL_22:
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_10057762C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, char a15)
{
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10057775C(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = *a1;
  *buf = 12;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 12;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 == 1 && (*(v6 + 33) & 1) != 0)
    {
LABEL_6:
      {
        v13 = 0;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(a1 + 24);
        v13 = v8;
      }

      sub_10057A5A4(v7, v9, a2, *(a1 + 8), *(a1 + 16));
      if (v13)
      {
        sub_100008080(v13);
      }

      goto LABEL_22;
    }
  }

  else if (v6[4])
  {
    goto LABEL_6;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v12 = *(a1 + 24);
    *buf = 67109376;
    v21 = 12;
    v22 = 1024;
    v23 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C5C1C(buf);
    v14 = *(a1 + 24);
    v17[0] = 67109376;
    v17[1] = 12;
    v18 = 1024;
    v19 = v14;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 17, "[Composite view] trying to grab stream %d with incompatible time base %d", v17, 14);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::Activity, T = CLMotionStateMediator_Type::NotificationData, Strategy = CMDataProviderComposite::View::PassThroughStrategy<CLMotionStateMediator_Type::NotificationData>]", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
LABEL_22:
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_1005779FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, char a15)
{
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100577B2C(uint64_t a1@<X0>, const void **a2@<X8>)
{
  v4 = *a1;
  *buf = 13;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 13;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 == 1 && (*(v6 + 33) & 1) != 0)
    {
LABEL_6:
      {
        v13 = 0;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(a1 + 24);
        v13 = v8;
      }

      sub_10057AA6C(v7, v9, a2, *(a1 + 8), *(a1 + 16));
      if (v13)
      {
        sub_100008080(v13);
      }

      goto LABEL_22;
    }
  }

  else if (v6[4])
  {
    goto LABEL_6;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v12 = *(a1 + 24);
    *buf = 67109376;
    v21 = 13;
    v22 = 1024;
    v23 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C5C1C(buf);
    v14 = *(a1 + 24);
    v17[0] = 67109376;
    v17[1] = 13;
    v18 = 1024;
    v19 = v14;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 17, "[Composite view] trying to grab stream %d with incompatible time base %d", v17, 14);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::RawHR, T = CLRawHR, Strategy = CMDataProviderComposite::View::PassThroughStrategy<CLRawHR>]", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
LABEL_22:
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_100577DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, char a15)
{
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100577EFC(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  *buf = 9;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 9;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 == 1 && (*(v6 + 33) & 1) != 0)
    {
LABEL_6:
      {
        v13 = 0;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(a1 + 24);
        v13 = v8;
      }

      sub_10057AE9C(v7, v9, a2, *(a1 + 8), *(a1 + 16));
      if (v13)
      {
        sub_100008080(v13);
      }

      goto LABEL_22;
    }
  }

  else if (v6[4])
  {
    goto LABEL_6;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v12 = *(a1 + 24);
    *buf = 67109376;
    v21 = 9;
    v22 = 1024;
    v23 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C5C1C(buf);
    v14 = *(a1 + 24);
    v17[0] = 67109376;
    v17[1] = 9;
    v18 = 1024;
    v19 = v14;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 17, "[Composite view] trying to grab stream %d with incompatible time base %d", v17, 14);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::FMCalorimetryReducedEmbeddings, T = imufm::CMIMUFoundationModelAdaptorResult, Strategy = CMDataProviderComposite::View::PassThroughStrategy<imufm::CMIMUFoundationModelAdaptorResult>]", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
LABEL_22:
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_10057819C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, char a15)
{
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005782CC(uint64_t a1, uint64_t ***a2)
{
  v2 = *sub_1000F2B3C(a1, &v4, a2);
  if (!v2)
  {
    sub_1000432E8("map::at:  key not found");
  }

  return v2 + 56;
}

void sub_10057833C(void ***a1)
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
        v6 = v4 - 5;
        sub_10001AF44((v4 - 3), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1005783C8(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (a2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (a5 >= a4 && *(a1 + 66))
    {
      v9 = 0;
      do
      {
        if (*sub_1005785E8((a1 + 64), v9) >= a4)
        {
          if (*sub_1005785E8((a1 + 64), v9) > a5)
          {
            return;
          }

          if (*sub_1005785E8((a1 + 64), v9) >= a4 && *sub_1005785E8((a1 + 64), v9) < a5)
          {
            v10 = sub_1005785E8((a1 + 64), v9);
            v26 = *(v10 + 4);
            v27 = *(v10 + 5);
            v28 = *(v10 + 6);
            v29 = *(v10 + 7);
            v22 = *v10;
            v23 = *(v10 + 1);
            v24 = *(v10 + 2);
            v25 = *(v10 + 3);
            v12 = a3[1];
            v11 = a3[2];
            if (v12 >= v11)
            {
              v14 = *a3;
              v15 = v12 - *a3;
              v16 = v15 >> 7;
              v17 = (v15 >> 7) + 1;
              if (v17 >> 57)
              {
                sub_10028C64C();
              }

              v18 = v11 - v14;
              if (v18 >> 6 > v17)
              {
                v17 = v18 >> 6;
              }

              if (v18 >= 0x7FFFFFFFFFFFFF80)
              {
                v19 = 0x1FFFFFFFFFFFFFFLL;
              }

              else
              {
                v19 = v17;
              }

              if (v19)
              {
                sub_1005787E4(a3, v19);
              }

              v20 = (v16 << 7);
              v20[4] = v26;
              v20[5] = v27;
              v20[6] = v28;
              v20[7] = v29;
              *v20 = v22;
              v20[1] = v23;
              v13 = ((v16 << 7) + 128);
              v20[2] = v24;
              v20[3] = v25;
              memcpy(0, v14, v15);
              v21 = *a3;
              *a3 = 0;
              a3[1] = v13;
              a3[2] = 0;
              if (v21)
              {
                operator delete(v21);
              }
            }

            else
            {
              memmove(a3[1], v10, 0x80uLL);
              v13 = v12 + 128;
            }

            a3[1] = v13;
          }
        }

        ++v9;
      }

      while (v9 < *(a1 + 66));
    }
  }
}

void sub_1005785C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int16 *sub_1005785E8(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v17 = a2;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = *(a1 + 1);
      v12 = 134218240;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v12, 18);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CLDeviceMotion::Sample>::operator[](const size_t) const [T = CLDeviceMotion::Sample]", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[64 * (v4 - v5) + 4];
}

void sub_1005787E4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  sub_1001D0818();
}

unsigned __int16 *sub_10057882C(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v17 = a2;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = *(a1 + 1);
      v12 = 134218240;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v12, 18);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CLAccelerometer::Sample>::operator[](const size_t) const [T = CLAccelerometer::Sample]", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[12 * (v4 - v5) + 4];
}

unsigned __int16 *sub_100578A2C(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v17 = a2;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = *(a1 + 1);
      v12 = 134218240;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v12, 18);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CLAccessoryDeviceMotion::AudioAccessorySample>::operator[](const size_t) const [T = CLAccessoryDeviceMotion::AudioAccessorySample]", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[84 * (v4 - v5) + 4];
}

void sub_100578C2C(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (a2 == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (a5 >= a4 && *(a1 + 66))
    {
      v9 = 0;
      do
      {
        if (*sub_100578E80((a1 + 64), v9) >= a4)
        {
          if (*sub_100578E80((a1 + 64), v9) > a5)
          {
            return;
          }

          if (*sub_100578E80((a1 + 64), v9) >= a4 && *sub_100578E80((a1 + 64), v9) < a5)
          {
            v10 = sub_100578E80((a1 + 64), v9);
            v24 = *(v10 + 1);
            v25 = *(v10 + 2);
            v26 = *(v10 + 6);
            v11 = a3[1];
            v12 = a3[2];
            if (v11 >= v12)
            {
              v17 = *a3;
              v18 = v11 - *a3;
              v19 = 0x6DB6DB6DB6DB6DB7 * (v18 >> 3) + 1;
              if (v19 > 0x492492492492492)
              {
                sub_10028C64C();
              }

              v20 = 0x6DB6DB6DB6DB6DB7 * ((v12 - v17) >> 3);
              if (2 * v20 > v19)
              {
                v19 = 2 * v20;
              }

              if (v20 >= 0x249249249249249)
              {
                v19 = 0x492492492492492;
              }

              if (v19)
              {
                sub_100579080(a3, v19);
              }

              v21 = 8 * (v18 >> 3);
              *v21 = *v10;
              *(v21 + 16) = v24;
              *(v21 + 32) = v25;
              *(v21 + 48) = v26;
              v16 = (v21 + 56);
              v22 = (v21 - v18);
              memcpy((v21 - v18), v17, v18);
              v23 = *a3;
              *a3 = v22;
              a3[1] = v16;
              a3[2] = 0;
              if (v23)
              {
                operator delete(v23);
              }
            }

            else
            {
              v13 = *v10;
              v14 = *(v10 + 1);
              v15 = *(v10 + 2);
              *(v11 + 6) = *(v10 + 6);
              *(v11 + 1) = v14;
              *(v11 + 2) = v15;
              *v11 = v13;
              v16 = v11 + 56;
            }

            a3[1] = v16;
          }
        }

        ++v9;
      }

      while (v9 < *(a1 + 66));
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_100578E5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int16 *sub_100578E80(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v17 = a2;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = *(a1 + 1);
      v12 = 134218240;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v12, 18);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CMDataProvider::Types::CMDPLegacySteps>::operator[](const size_t) const [T = CMDataProvider::Types::CMDPLegacySteps]", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[28 * (v4 - v5) + 4];
}

void sub_100579080(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1001D0818();
}

unsigned __int16 *sub_1005790DC(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v17 = a2;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = *(a1 + 1);
      v12 = 134218240;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v12, 18);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CMPedEntry>::operator[](const size_t) const [T = CMPedEntry]", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[12 * (v4 - v5) + 4];
}

void sub_1005792DC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_100579334(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_100579390(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (a2 == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (a5 >= a4 && *(a1 + 66))
    {
      v9 = 0;
      do
      {
        if (*(sub_100579638((a1 + 64), v9) + 5) >= a4)
        {
          if (*(sub_100579638((a1 + 64), v9) + 5) > a5)
          {
            return;
          }

          if (*(sub_100579638((a1 + 64), v9) + 5) >= a4 && *(sub_100579638((a1 + 64), v9) + 5) < a5)
          {
            v10 = sub_100579638((a1 + 64), v9);
            v30 = *(v10 + 8);
            v31 = *(v10 + 9);
            v32 = *(v10 + 10);
            v26 = *(v10 + 4);
            v27 = *(v10 + 5);
            v28 = *(v10 + 6);
            v29 = *(v10 + 7);
            v22 = *v10;
            v23 = *(v10 + 1);
            v24 = *(v10 + 2);
            v25 = *(v10 + 3);
            v12 = a3[1];
            v11 = a3[2];
            if (v12 >= v11)
            {
              v14 = *a3;
              v15 = v12 - *a3;
              v16 = 0x2E8BA2E8BA2E8BA3 * (v15 >> 4) + 1;
              if (v16 > 0x1745D1745D1745DLL)
              {
                sub_10028C64C();
              }

              v17 = 0x2E8BA2E8BA2E8BA3 * ((v11 - v14) >> 4);
              if (2 * v17 > v16)
              {
                v16 = 2 * v17;
              }

              if (v17 >= 0xBA2E8BA2E8BA2ELL)
              {
                v18 = 0x1745D1745D1745DLL;
              }

              else
              {
                v18 = v16;
              }

              if (v18)
              {
                sub_100579838(a3, v18);
              }

              v19 = (16 * (v15 >> 4));
              v19[8] = v30;
              v19[9] = v31;
              v19[10] = v32;
              v19[4] = v26;
              v19[5] = v27;
              v19[6] = v28;
              v19[7] = v29;
              *v19 = v22;
              v19[1] = v23;
              v13 = v19 + 11;
              v19[2] = v24;
              v19[3] = v25;
              v20 = v19 - v15;
              memcpy(v19 - v15, v14, v15);
              v21 = *a3;
              *a3 = v20;
              a3[1] = v13;
              a3[2] = 0;
              if (v21)
              {
                operator delete(v21);
              }
            }

            else
            {
              memmove(a3[1], v10, 0xB0uLL);
              v13 = v12 + 176;
            }

            a3[1] = v13;
          }
        }

        ++v9;
      }

      while (v9 < *(a1 + 66));
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_100579614(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int16 *sub_100579638(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v17 = a2;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = *(a1 + 1);
      v12 = 134218240;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v12, 18);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CLCatherineNotifier_Type::NotificationData>::operator[](const size_t) const [T = CLCatherineNotifier_Type::NotificationData]", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[88 * (v4 - v5) + 4];
}

void sub_100579838(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1745D1745D1745ELL)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_100579894(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a5 >= a4 && *(a1 + 66))
  {
    v10 = 0;
    do
    {
      if (a2)
      {
        v11 = sub_100579ABC((a1 + 64), v10) + 4;
      }

      else
      {
        v11 = sub_100579ABC((a1 + 64), v10);
      }

      v12 = *v11;
      if (*v11 >= a4)
      {
        if (v12 > a5)
        {
          return;
        }

        if (v12 >= a4 && v12 < a5)
        {
          v14 = sub_100579ABC((a1 + 64), v10);
          v28 = *(v14 + 1);
          v29 = *(v14 + 2);
          v30 = *(v14 + 6);
          v15 = a3[1];
          v16 = a3[2];
          if (v15 >= v16)
          {
            v21 = *a3;
            v22 = v15 - *a3;
            v23 = 0x6DB6DB6DB6DB6DB7 * (v22 >> 3) + 1;
            if (v23 > 0x492492492492492)
            {
              sub_10028C64C();
            }

            v24 = 0x6DB6DB6DB6DB6DB7 * ((v16 - v21) >> 3);
            if (2 * v24 > v23)
            {
              v23 = 2 * v24;
            }

            if (v24 >= 0x249249249249249)
            {
              v23 = 0x492492492492492;
            }

            if (v23)
            {
              sub_100579CBC(a3, v23);
            }

            v25 = 8 * (v22 >> 3);
            *v25 = *v14;
            *(v25 + 16) = v28;
            *(v25 + 32) = v29;
            *(v25 + 48) = v30;
            v20 = (v25 + 56);
            v26 = (v25 - v22);
            memcpy((v25 - v22), v21, v22);
            v27 = *a3;
            *a3 = v26;
            a3[1] = v20;
            a3[2] = 0;
            if (v27)
            {
              operator delete(v27);
            }
          }

          else
          {
            v17 = *v14;
            v18 = *(v14 + 1);
            v19 = *(v14 + 2);
            *(v15 + 6) = *(v14 + 6);
            *(v15 + 1) = v18;
            *(v15 + 2) = v19;
            *v15 = v17;
            v20 = v15 + 56;
          }

          a3[1] = v20;
        }
      }

      ++v10;
    }

    while (v10 < *(a1 + 66));
  }
}

void sub_100579A98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int16 *sub_100579ABC(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v17 = a2;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = *(a1 + 1);
      v12 = 134218240;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v12, 18);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CLAccessoryDMFeatures>::operator[](const size_t) const [T = CLAccessoryDMFeatures]", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[28 * (v4 - v5) + 4];
}

void sub_100579CBC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_100579D18(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (a2 == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (a5 >= a4 && *(a1 + 66))
    {
      v9 = 0;
      do
      {
        if (*sub_100579F4C((a1 + 64), v9) >= a4)
        {
          if (*sub_100579F4C((a1 + 64), v9) > a5)
          {
            return;
          }

          if (*sub_100579F4C((a1 + 64), v9) >= a4 && *sub_100579F4C((a1 + 64), v9) < a5)
          {
            v10 = sub_100579F4C((a1 + 64), v9);
            v24 = *(v10 + 2);
            v25 = *(v10 + 3);
            v26 = *(v10 + 4);
            v22 = *v10;
            v23 = *(v10 + 1);
            v12 = a3[1];
            v11 = a3[2];
            if (v12 >= v11)
            {
              v14 = *a3;
              v15 = v12 - *a3;
              v16 = 0xCCCCCCCCCCCCCCCDLL * (v15 >> 4) + 1;
              if (v16 > 0x333333333333333)
              {
                sub_10028C64C();
              }

              v17 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - v14) >> 4);
              if (2 * v17 > v16)
              {
                v16 = 2 * v17;
              }

              if (v17 >= 0x199999999999999)
              {
                v18 = 0x333333333333333;
              }

              else
              {
                v18 = v16;
              }

              if (v18)
              {
                sub_10057A14C(a3, v18);
              }

              v19 = (16 * (v15 >> 4));
              v19[2] = v24;
              v19[3] = v25;
              v19[4] = v26;
              *v19 = v22;
              v19[1] = v23;
              v13 = v19 + 5;
              v20 = v19 - v15;
              memcpy(v19 - v15, v14, v15);
              v21 = *a3;
              *a3 = v20;
              a3[1] = v13;
              a3[2] = 0;
              if (v21)
              {
                operator delete(v21);
              }
            }

            else
            {
              memmove(a3[1], v10, 0x50uLL);
              v13 = v12 + 80;
            }

            a3[1] = v13;
          }
        }

        ++v9;
      }

      while (v9 < *(a1 + 66));
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_100579F28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int16 *sub_100579F4C(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v17 = a2;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = *(a1 + 1);
      v12 = 134218240;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v12, 18);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CMDataProvider::Types::CMDPOdometer>::operator[](const size_t) const [T = CMDataProvider::Types::CMDPOdometer]", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[40 * (v4 - v5) + 4];
}

void sub_10057A14C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_10057A1A4(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (a2 == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (a5 >= a4 && *(a1 + 66))
    {
      v9 = 0;
      do
      {
        if (*(sub_10057A3A8((a1 + 64), v9) + 1) >= a4)
        {
          if (*(sub_10057A3A8((a1 + 64), v9) + 1) > a5)
          {
            return;
          }

          if (*(sub_10057A3A8((a1 + 64), v9) + 1) >= a4 && *(sub_10057A3A8((a1 + 64), v9) + 1) < a5)
          {
            v10 = sub_10057A3A8((a1 + 64), v9);
            v24 = *(v10 + 1);
            v25 = *(v10 + 2);
            v26 = *(v10 + 3);
            v11 = a3[1];
            v12 = a3[2];
            if (v11 >= v12)
            {
              v17 = *a3;
              v18 = v11 - *a3;
              v19 = v18 >> 6;
              v20 = (v18 >> 6) + 1;
              if (v20 >> 58)
              {
                sub_10028C64C();
              }

              v21 = v12 - v17;
              if (v21 >> 5 > v20)
              {
                v20 = v21 >> 5;
              }

              if (v21 >= 0x7FFFFFFFFFFFFFC0)
              {
                v20 = 0x3FFFFFFFFFFFFFFLL;
              }

              if (v20)
              {
                sub_100098AAC(a3, v20);
              }

              v22 = (v19 << 6);
              *v22 = *v10;
              v22[1] = v24;
              v22[2] = v25;
              v22[3] = v26;
              v16 = ((v19 << 6) + 64);
              memcpy(0, v17, v18);
              v23 = *a3;
              *a3 = 0;
              a3[1] = v16;
              a3[2] = 0;
              if (v23)
              {
                operator delete(v23);
              }
            }

            else
            {
              v13 = *v10;
              v14 = *(v10 + 1);
              v15 = *(v10 + 3);
              *(v11 + 2) = *(v10 + 2);
              *(v11 + 3) = v15;
              *v11 = v13;
              *(v11 + 1) = v14;
              v16 = v11 + 64;
            }

            a3[1] = v16;
          }
        }

        ++v9;
      }

      while (v9 < *(a1 + 66));
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_10057A384(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int16 *sub_10057A3A8(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v17 = a2;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = *(a1 + 1);
      v12 = 134218240;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v12, 18);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CLElevationChangeEntry>::operator[](const size_t) const [T = CLElevationChangeEntry]", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[32 * (v4 - v5) + 4];
}

void sub_10057A5A4(uint64_t a1@<X0>, int a2@<W1>, char **a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (a2 == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (a5 >= a4 && *(a1 + 66))
    {
      v9 = 0;
      do
      {
        if (*sub_10057A810((a1 + 64), v9) >= a4)
        {
          if (*sub_10057A810((a1 + 64), v9) > a5)
          {
            return;
          }

          if (*sub_10057A810((a1 + 64), v9) >= a4 && *sub_10057A810((a1 + 64), v9) < a5)
          {
            v10 = sub_10057A810((a1 + 64), v9);
            memcpy(v22, v10, sizeof(v22));
            v12 = a3[1];
            v11 = a3[2];
            if (v12 >= v11)
            {
              v14 = *a3;
              v15 = v12 - *a3;
              v16 = 0x86BCA1AF286BCA1BLL * (v15 >> 4) + 1;
              if (v16 > 0xD79435E50D7943)
              {
                sub_10028C64C();
              }

              v17 = 0x86BCA1AF286BCA1BLL * ((v11 - v14) >> 4);
              if (2 * v17 > v16)
              {
                v16 = 2 * v17;
              }

              if (v17 >= 0x6BCA1AF286BCA1)
              {
                v18 = 0xD79435E50D7943;
              }

              else
              {
                v18 = v16;
              }

              if (v18)
              {
                sub_10057AA10(a3, v18);
              }

              v19 = (16 * (v15 >> 4));
              memcpy(v19, v22, 0x130uLL);
              v13 = v19 + 304;
              v20 = &v19[-v15];
              memcpy(v20, v14, v15);
              v21 = *a3;
              *a3 = v20;
              a3[1] = v13;
              a3[2] = 0;
              if (v21)
              {
                operator delete(v21);
              }
            }

            else
            {
              memmove(a3[1], v10, 0x130uLL);
              v13 = v12 + 304;
            }

            a3[1] = v13;
          }
        }

        ++v9;
      }

      while (v9 < *(a1 + 66));
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_10057A7EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int16 *sub_10057A810(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v17 = a2;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = *(a1 + 1);
      v12 = 134218240;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v12, 18);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CLMotionStateMediator_Type::NotificationData>::operator[](const size_t) const [T = CLMotionStateMediator_Type::NotificationData]", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[152 * (v4 - v5) + 4];
}

void sub_10057AA10(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xD79435E50D7944)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_10057AA6C(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (a2 == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (a5 >= a4 && *(a1 + 66))
    {
      v9 = 0;
      do
      {
        if (*sub_10057AC58((a1 + 64), v9) >= a4)
        {
          if (*sub_10057AC58((a1 + 64), v9) > a5)
          {
            return;
          }

          if (*sub_10057AC58((a1 + 64), v9) >= a4 && *sub_10057AC58((a1 + 64), v9) < a5)
          {
            v10 = sub_10057AC58((a1 + 64), v9);
            v22 = *(v10 + 1);
            v11 = a3[1];
            v12 = a3[2];
            if (v11 >= v12)
            {
              v15 = *a3;
              v16 = v11 - *a3;
              v17 = v16 >> 5;
              v18 = (v16 >> 5) + 1;
              if (v18 >> 59)
              {
                sub_10028C64C();
              }

              v19 = v12 - v15;
              if (v19 >> 4 > v18)
              {
                v18 = v19 >> 4;
              }

              if (v19 >= 0x7FFFFFFFFFFFFFE0)
              {
                v18 = 0x7FFFFFFFFFFFFFFLL;
              }

              if (v18)
              {
                sub_10057AE54(a3, v18);
              }

              v20 = (32 * v17);
              *v20 = *v10;
              v20[1] = v22;
              v14 = (32 * v17 + 32);
              memcpy(0, v15, v16);
              v21 = *a3;
              *a3 = 0;
              a3[1] = v14;
              a3[2] = 0;
              if (v21)
              {
                operator delete(v21);
              }
            }

            else
            {
              v13 = *(v10 + 1);
              *v11 = *v10;
              *(v11 + 1) = v13;
              v14 = v11 + 32;
            }

            a3[1] = v14;
          }
        }

        ++v9;
      }

      while (v9 < *(a1 + 66));
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_10057AC34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int16 *sub_10057AC58(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v17 = a2;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = *(a1 + 1);
      v12 = 134218240;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v12, 18);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CLRawHR>::operator[](const size_t) const [T = CLRawHR]", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[16 * (v4 - v5) + 4];
}

void sub_10057AE54(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_10057AE9C(uint64_t a1@<X0>, int a2@<W1>, unint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (a2 == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (a5 >= a4 && *(a1 + 66))
    {
      v9 = 0;
      do
      {
        if (*sub_10057B060((a1 + 64), v9) >= a4)
        {
          if (*sub_10057B060((a1 + 64), v9) > a5)
          {
            return;
          }

          if (*sub_10057B060((a1 + 64), v9) >= a4 && *sub_10057B060((a1 + 64), v9) < a5)
          {
            v10 = sub_10057B060((a1 + 64), v9);
            v11 = *v10;
            v19 = *(v10 + 2);
            v18 = v11;
            sub_10057B61C(&v20, (v10 + 8));
            v12 = a3[1];
            if (v12 >= a3[2])
            {
              v17 = sub_10057B260(a3, &v18);
            }

            else
            {
              v13 = v18;
              *(v12 + 8) = v19;
              *v12 = v13;
              *(v12 + 16) = v20;
              v14 = v21;
              *(v12 + 24) = v21;
              v15 = v12 + 24;
              v16 = v22;
              *(v12 + 32) = v22;
              if (v16)
              {
                *(v14 + 2) = v15;
                v20 = &v21;
                v21 = 0;
                v22 = 0;
              }

              else
              {
                *(v12 + 16) = v15;
              }

              v17 = v12 + 40;
            }

            a3[1] = v17;
            sub_10001AF44(&v20, v21);
          }
        }

        ++v9;
      }

      while (v9 < *(a1 + 66));
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_10057B030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char *a13)
{
  sub_10001AF44(v13 + 16, a13);
  sub_10057833C(&a10);
  _Unwind_Resume(a1);
}

unsigned __int16 *sub_10057B060(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v17 = a2;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = *(a1 + 1);
      v12 = 134218240;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v12, 18);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<imufm::CMIMUFoundationModelAdaptorResult>::operator[](const size_t) const [T = imufm::CMIMUFoundationModelAdaptorResult]", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[20 * (v4 - v5) + 4];
}

uint64_t sub_10057B260(unint64_t *a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_10028C64C();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    sub_10057B3C8(a1, v6);
  }

  v7 = 40 * v2;
  v19 = 0;
  v20 = v7;
  *(&v21 + 1) = 0;
  v8 = *a2;
  *(v7 + 8) = *(a2 + 2);
  *v7 = v8;
  *(v7 + 16) = a2[2];
  v9 = a2 + 3;
  v10 = a2[3];
  *(40 * v2 + 0x18) = v10;
  v11 = 40 * v2 + 24;
  v12 = a2[4];
  *(v7 + 32) = v12;
  if (v12)
  {
    *(v10 + 16) = v11;
    a2[2] = v9;
    *v9 = 0;
    a2[4] = 0;
  }

  else
  {
    *(40 * v2 + 0x10) = v11;
  }

  *&v21 = v7 + 40;
  v13 = a1[1];
  v14 = v7 + *a1 - v13;
  sub_10057B420(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_10057B59C(&v19);
  return v18;
}

void sub_10057B3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10057B59C(va);
  _Unwind_Resume(a1);
}

void sub_10057B3C8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_10057B420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v17 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  if (a2 == a3)
  {
    v16 = 1;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = a4 + v5;
      v7 = *(a2 + v5);
      *(v6 + 8) = *(a2 + v5 + 8);
      *v6 = v7;
      *(v6 + 16) = *(a2 + v5 + 16);
      v8 = (a2 + v5 + 24);
      v9 = *v8;
      *(a4 + v5 + 24) = *v8;
      v10 = a4 + v5 + 24;
      v11 = *(a2 + v5 + 32);
      *(v6 + 32) = v11;
      if (v11)
      {
        *(v9 + 16) = v10;
        *(a2 + v5 + 16) = v8;
        *v8 = 0;
        *(a2 + v5 + 32) = 0;
      }

      else
      {
        *(v6 + 16) = v10;
      }

      v5 += 40;
    }

    while (a2 + v5 != a3);
    v18 = a4 + v5;
    v16 = 1;
    if (a2 != a3)
    {
      v12 = a2 + 16;
      do
      {
        sub_10001AF44(v12, *(v12 + 8));
        v13 = v12 + 24;
        v12 += 40;
      }

      while (v13 != a3);
    }
  }

  return sub_10057B518(v15);
}

uint64_t sub_10057B518(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10057B550(a1);
  }

  return a1;
}

void sub_10057B550(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 40;
      sub_10001AF44(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **sub_10057B59C(void **a1)
{
  sub_10057B5D0(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10057B5D0(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    sub_10001AF44(i - 24, *(i - 16));
  }
}

void *sub_10057B61C(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10057B674(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_10057B674(void *result, char *a2, char *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10057B6FC(v5, (v5 + 8), v4 + 32, (v4 + 32));
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

void *sub_10057B6FC(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  result = *sub_100249FD8(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_10057B780();
  }

  return result;
}

void sub_10057B81C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002E4F74(v3, v2);
  _Unwind_Resume(a1);
}

void sub_10057B838()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

uint64_t sub_10057B8B0()
{
  v1[0] = xmmword_101C7F244;
  v1[1] = unk_101C7F254;
  v1[2] = xmmword_101C7F264;
  v2 = 0x90000000DLL;
  qword_102656EE8 = 0;
  unk_102656EF0 = 0;
  qword_102656EE0 = 0;
  sub_1004579D4(&qword_102656EE0, v1, &v3, 0xEuLL);
  return __cxa_atexit(sub_1004F4E20, &qword_102656EE0, dword_100000000);
}

double sub_10057B96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *a1 = &off_10245FED8;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return result;
}

void *sub_10057B9A4(void *a1)
{
  *a1 = &off_10245FED8;
  if (qword_1025D4790 != -1)
  {
    sub_1018C6634();
  }

  v2 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 24))(__p, a1);
    v3 = __p[0];
    if (v12 >= 0)
    {
      v3 = __p;
    }

    v4 = a1 + 3;
    if (*(a1 + 47) < 0)
    {
      v4 = *v4;
    }

    *buf = 68289538;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = v3;
    v19 = 2082;
    v20 = v4;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGnssExtensions,releasing assertion, client:%{public, location:escape_only}s, reason:%{public, location:escape_only}s}", buf, 0x26u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a1[10])
  {
    if (qword_1025D4790 != -1)
    {
      sub_1018C6648();
    }

    v5 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#wigo,off,CLGnssExtensions", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C6670(buf);
      LOWORD(__p[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 0, "#wigo,off,CLGnssExtensions", __p, 2);
      v10 = v9;
      sub_100152C7C("Generic", 1, 0, 2, "virtual CLDaemonGnssExtensionsClient::~CLDaemonGnssExtensionsClient()", "%s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    AnalyticsSendEventLazy();
    [*(a1[10] + 16) unregister:*(a1[10] + 8) forNotification:0];
    v6 = a1[10];
    a1[10] = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  v7 = a1[9];
  a1[9] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(a1[6]);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(a1[3]);
  }

  sub_100143A80(a1);
  return a1;
}

void sub_10057BCB4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_10057BCD0(void *a1)
{
  sub_10057B9A4(a1);

  operator delete();
}

void sub_10057BD08(uint64_t a1, uint64_t a2)
{
  v3 = &off_10254EB10;
  v4 = a2;
  v2 = [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  sub_10057D480();
}

void sub_10057BEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100008080(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10057BF18(uint64_t a1, uint64_t a2)
{
  v4 = CLConnectionMessage::name(*a2);
  if (*(v4 + 23) < 0 && *(v4 + 8) == 40 && !memcmp(*v4, "kCLConnectionMessageGnssExtensionsClient", 0x28uLL))
  {
    if (qword_1025D4790 != -1)
    {
      sub_1018C6634();
    }

    v8 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "kCLConnectionMessageGnssExtensionsClient";
      v18 = 2050;
      v19 = a1;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGnssExtensions, message:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }

    v9 = *a2;
    v10 = *(a2 + 8);
    v11[0] = v9;
    v11[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    sub_10057C128(a1, v11);
    if (v10)
    {
      sub_100008080(v10);
    }
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_1018C6634();
    }

    v5 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v6 = CLConnectionMessage::name(*a2);
      if (*(v6 + 23) >= 0)
      {
        v7 = v6;
      }

      else
      {
        v7 = *v6;
      }

      *buf = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning,CLGnssExtensions,unrecognized message, message:%{public, location:escape_only}s}", buf, 0x1Cu);
    }
  }
}

void sub_10057C128(uint64_t a1, CLConnectionMessage **a2)
{
  if ((*(a1 + 47) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 32))
    {
LABEL_3:
      if (qword_1025D4790 != -1)
      {
        sub_1018C6634();
      }

      v4 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
      {
        (*(*a1 + 24))(__p, a1);
        if (v31 >= 0)
        {
          v5 = __p;
        }

        else
        {
          v5 = __p[0];
        }

        buf = 68289282;
        buf_8 = 2082;
        buf_10 = "";
        v35 = 2082;
        v36 = v5;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLGnssExtensions, assertion already taken by:%{public, location:escape_only}s}", &buf, 0x1Cu);
        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_10057BD08(a1, @"Assertion already taken");
    }
  }

  else if (*(a1 + 47))
  {
    goto LABEL_3;
  }

  sub_10000EC00(&buf, "com.apple.locationd.gnss-extensions");
  v6 = sub_10057CC78(a1, &buf);
  v7 = v6;
  if ((SBYTE3(v36) & 0x80000000) == 0)
  {
    if (v6)
    {
      goto LABEL_15;
    }

LABEL_23:
    if (qword_1025D4790 != -1)
    {
      sub_1018C6648();
    }

    v16 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      (*(*a1 + 24))(__p, a1);
      v17 = v31 >= 0 ? __p : __p[0];
      buf = 68289282;
      buf_8 = 2082;
      buf_10 = "";
      v35 = 2082;
      v36 = v17;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLGnssExtensions,not entitled,ignoring, client:%{public, location:escape_only}s}", &buf, 0x1Cu);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10057BD08(a1, @"missing entitlement: com.apple.locationd.gnss-extensions");
  }

  operator delete(buf);
  if ((v7 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  v9 = Dictionary;
  if (Dictionary)
  {
    v10 = [Dictionary objectForKeyedSubscript:@"kCLConnectionMessagePurposeKey"];
    v11 = [v9 objectForKeyedSubscript:@"kCLConnectionMessageBundleIdentifierKey"];
    v12 = [v9 objectForKeyedSubscript:@"kCLConnectionMessageBundlePathKey"];
    if (v11)
    {
      v13 = v12;
      if (v12)
      {
        if (v10)
        {
          if ([v10 length])
          {
            v14 = [v10 UTF8String];
            v15 = (a1 + 24);
            sub_100006044((a1 + 24), v14);
            if ([v11 length])
            {
              sub_10000EC00(&__str, [v11 UTF8String]);
              sub_100034EE4(&buf, &__str);
              sub_100037ACC(&buf, __p);
            }

            else
            {
              if (![v13 length])
              {
                if (qword_1025D4790 != -1)
                {
                  sub_1018C6648();
                }

                v27 = qword_1025D4798;
                if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
                {
                  (*(*a1 + 24))(__p, a1);
                  if (v31 >= 0)
                  {
                    v28 = __p;
                  }

                  else
                  {
                    v28 = __p[0];
                  }

                  if (*(a1 + 47) < 0)
                  {
                    v15 = *v15;
                  }

                  buf = 68289538;
                  buf_8 = 2082;
                  buf_10 = "";
                  v35 = 2082;
                  v36 = v28;
                  v37 = 2082;
                  v38 = v15;
                  _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLGnssExtensions,no beneficiary,request denined, requested by:%{public, location:escape_only}s, reason:%{public, location:escape_only}s}", &buf, 0x26u);
                  if (SHIBYTE(v31) < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                sub_10057BD08(a1, @"null beneficiary client key");
              }

              sub_10000EC00(&__str, [v13 UTF8String]);
              sub_1000E1C7C(&buf, &__str);
              sub_100037ACC(&buf, __p);
            }

            if (*(a1 + 71) < 0)
            {
              operator delete(*(a1 + 48));
            }

            *(a1 + 48) = *__p;
            *(a1 + 64) = v31;
            HIBYTE(v31) = 0;
            LOBYTE(__p[0]) = 0;
            sub_100039BE8(&buf);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            sub_100D64EF4();
          }

          if (qword_1025D4790 != -1)
          {
            sub_1018C6648();
          }

          v25 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
          {
            (*(*a1 + 24))(__p, a1);
            v26 = v31 >= 0 ? __p : __p[0];
            buf = 68289282;
            buf_8 = 2082;
            buf_10 = "";
            v35 = 2082;
            v36 = v26;
            _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLGnssExtensions,empty reason,request denined, requested by:%{public, location:escape_only}s}", &buf, 0x1Cu);
            if (SHIBYTE(v31) < 0)
            {
              operator delete(__p[0]);
            }
          }

          sub_10057BD08(a1, @"empty reason");
        }

        if (qword_1025D4790 != -1)
        {
          sub_1018C6648();
        }

        v23 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
        {
          (*(*a1 + 24))(__p, a1);
          v24 = v31 >= 0 ? __p : __p[0];
          buf = 68289282;
          buf_8 = 2082;
          buf_10 = "";
          v35 = 2082;
          v36 = v24;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLGnssExtensions,missing reason,request denined, requested by:%{public, location:escape_only}s}", &buf, 0x1Cu);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_10057BD08(a1, @"missing reason");
      }

      if (qword_1025D4790 != -1)
      {
        sub_1018C6648();
      }

      v21 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
      {
        (*(*a1 + 24))(__p, a1);
        v22 = v31 >= 0 ? __p : __p[0];
        buf = 68289282;
        buf_8 = 2082;
        buf_10 = "";
        v35 = 2082;
        v36 = v22;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLGnssExtensions,missing bundlePath,request denined, requested by:%{public, location:escape_only}s}", &buf, 0x1Cu);
        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_10057BD08(a1, @"missing bundlePath");
    }

    if (qword_1025D4790 != -1)
    {
      sub_1018C6648();
    }

    v19 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      (*(*a1 + 24))(__p, a1);
      v20 = v31 >= 0 ? __p : __p[0];
      buf = 68289282;
      buf_8 = 2082;
      buf_10 = "";
      v35 = 2082;
      v36 = v20;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLGnssExtensions,missing bundleID,request denined, requested by:%{public, location:escape_only}s}", &buf, 0x1Cu);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10057BD08(a1, @"missing bundleID");
  }

  if (qword_1025D4790 != -1)
  {
    sub_1018C6648();
  }

  v18 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "GnssExtension dictionary empty", &buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C6798();
  }
}

void sub_10057CC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_100039BE8(&a20);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10057CC78(void *a1, uint64_t *a2)
{
  isEntitled = CLConnection::isEntitled();
  if (qword_1025D4790 != -1)
  {
    sub_1018C6634();
  }

  v5 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
  {
    (*(*a1 + 24))(__p, a1);
    if (v10 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = v6;
    v17 = 2082;
    v18 = v7;
    v19 = 1026;
    v20 = isEntitled;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLGnssExtensions, requested by:%{public, location:escape_only}s, entitlement:%{public, location:escape_only}s, entitled:%{public}hhd}", buf, 0x2Cu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return isEntitled;
}

void sub_10057CDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 16) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018C6888();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLDaemonGnssExtensionsClient::onGnssLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018C689C();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLDaemonGnssExtensionsClient::onGnssLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10057D0F8(a4, v6, v7, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

NSDictionary *sub_10057CFB4(unsigned int *a1)
{
  v2 = *a1;
  if (v2 < 6)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = [NSNumber numberWithLong:v3];
  v5 = [NSNumber numberWithInt:a1[1]];
  LODWORD(v6) = a1[2];
  v7 = [NSNumber numberWithFloat:v6];
  LODWORD(v8) = a1[3];
  v9 = [NSNumber numberWithFloat:v8];
  LODWORD(v10) = a1[4];
  v11 = [NSNumber numberWithFloat:v10];
  LODWORD(v12) = a1[5];
  return [NSDictionary dictionaryWithObjectsAndKeys:v4, @"satSystem", v5, @"satId", v7, @"elevationDeg", v9, @"azimuthDeg", v11, @"l1Cn0", [NSNumber numberWithFloat:v12], @"l5Cn0", [NSNumber numberWithBool:*(a1 + 24)], @"isTracked", [NSNumber numberWithBool:*(a1 + 25)], @"isPhaseTracked", 0];
}

void sub_10057D0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 680);
  if (qword_1025D4790 != -1)
  {
    sub_1018C6634();
  }

  v6 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 67240192;
    buf[1] = v5 != 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "CLGnssExtensions, onGnssLocationNotification, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C68C4(v5 != 0);
  }

  if (v5)
  {
    v7 = +[NSMutableArray array];
    v8 = *(a4 + 680);
    v9 = *v8;
    v10 = *(v8 + 8);
    while (v9 != v10)
    {
      *buf = *v9;
      *&buf[3] = *(v9 + 12);
      [v7 addObject:sub_10057CFB4(buf)];
      v9 = (v9 + 28);
    }

    v12[0] = @"type";
    v12[1] = @"version";
    v13[0] = &off_10254EB28;
    v13[1] = &off_10254EB40;
    v12[2] = @"data";
    v13[2] = v7;
    [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
    sub_10057D5C4();
  }
}

void sub_10057D3E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100008080(a15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10057D4F4(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  sub_10057D550((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_10057D550(uint64_t a1, char *a2, void *a3)
{
  sub_10000EC00(&__p, a2);
  CLConnectionMessage::CLConnectionMessage();
  if (v6 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_10057D5A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10057D638(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  sub_10057D694((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_10057D694(uint64_t a1, char *a2, void *a3)
{
  sub_10000EC00(&__p, a2);
  CLConnectionMessage::CLConnectionMessage();
  if (v6 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_10057D6EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10057D86C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100582898;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102656F08 != -1)
  {
    dispatch_once(&qword_102656F08, block);
  }

  return qword_102636F30;
}

uint64_t sub_10057DBB8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_102656F18, memory_order_acquire) & 1) == 0)
  {
    v11 = __cxa_guard_acquire(&qword_102656F18);
    if (v11)
    {
      v13 = sub_10001A3E8(v11, v12);
      byte_102656F10 = sub_1007198D4(v13);
      __cxa_guard_release(&qword_102656F18);
    }
  }

  if ((byte_102656F10 & 1) == 0)
  {
    return 0;
  }

  if ((*(a1 + 160) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 160);
      *buf = 68289282;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 1026;
      v20 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", buf, 0x18u);
    }
  }

  if (!*(a1 + 144))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C6CB4();
    }

    return 0;
  }

  v4 = sub_10057E534(a1);
  if (!v4)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v9 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "Can't get camp only state", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C6BC8();
    }

    return 0;
  }

  sub_100005548(buf, v4);
  v14 = 0;
  v5 = sub_1000052CC(buf, @"kCTCampOnly", &v14);
  v6 = v14;
  CFRelease(v4);
  if (v6 == 1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  sub_100005DA4();
  return v7;
}

void sub_10057DEB4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000733FC(a1, a2);
  if (v3 & 1) != 0 || (v5 = sub_1000734AC(v3, v4), (v5) || (v6 = sub_100718F78(v5)))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018C6DA0();
    }

    v8 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a2 + 24);
      v10 = *a2;
      v11 = *(a2 + 32);
      *buf = 134349568;
      *&buf[4] = v9;
      *&buf[12] = 1026;
      *&buf[14] = v10;
      *&buf[18] = 1026;
      *&buf[20] = v11;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#timingadvance,currentTimeStamp,%{public}.3f,lte_ta_val,%{public}d,isLte,%{public}d", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C6F0C(a2);
    }
  }

  else if (sub_10006FB70(v6, v7))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018C6DA0();
    }

    v24 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v25 = *(a2 + 24);
      v26 = *a2;
      v27 = *(a2 + 4);
      v28 = *(a2 + 32);
      v29 = *(a2 + 8);
      v30 = *(a2 + 12);
      v31 = *(a2 + 16);
      v32 = *(a2 + 33);
      *buf = 134350848;
      *&buf[4] = v25;
      *&buf[12] = 1026;
      *&buf[14] = v26;
      *&buf[18] = 1026;
      *&buf[20] = v27;
      *&buf[24] = 1026;
      *&buf[26] = v28;
      *&buf[30] = 1026;
      LODWORD(v39) = v29;
      WORD2(v39) = 1026;
      *(&v39 + 6) = v30;
      WORD5(v39) = 1026;
      HIDWORD(v39) = v31;
      LOWORD(v40) = 1026;
      *(&v40 + 2) = v32;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "#timingadvance,currentTimeStamp,%{public}.3f,lte_ta_val,%{public}d,lte_connection_state,%{public}d,isLte,%{public}d,nr5g_ta_val,%{public}d,nr5g_connection_state,%{public}d,nr5g_ta_offset,%{public}d,isNr,%{public}d", buf, 0x36u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C6DB4(a2);
    }
  }

  cf = sub_1004FD6BC(a2);
  v12 = sub_1004FD6F8((a2 + 24));
  v13 = sub_1004FD6BC((a2 + 8));
  v14 = sub_1001CF0F0((a2 + 32));
  v15 = sub_1001CF0F0((a2 + 33));
  v16 = sub_1000F3034((a2 + 36));
  v17 = sub_1000F3034((a2 + 40));
  v18 = sub_1000F3034((a2 + 44));
  v19 = sub_1000F3034((a2 + 48));
  v20 = sub_1000F3034((a2 + 52));
  v35 = sub_1000F3034((a2 + 56));
  v36 = sub_1000F3034((a2 + 60));
  v21 = sub_1000F3034((a2 + 64));
  v22 = cf;
  if (cf && v12 && v13 && v14 && v15)
  {
    v41 = *&off_1024603C8;
    v42 = *&off_1024603D8;
    v43 = @"kTimingAdvanceNR_CI_Key";
    *buf = *&off_102460388;
    *&buf[16] = *&off_102460398;
    v39 = *&off_1024603A8;
    v40 = *&off_1024603B8;
    values[0] = cf;
    values[1] = v13;
    values[2] = v12;
    values[3] = v14;
    values[4] = v15;
    values[5] = v16;
    values[6] = v17;
    values[7] = v18;
    values[8] = v19;
    values[9] = v20;
    values[10] = v35;
    values[11] = v36;
    values[12] = v21;
    v23 = CFDictionaryCreate(0, buf, values, 13, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    (*(*a1 + 256))();
    v22 = cf;
  }

  else if (!cf)
  {
    goto LABEL_18;
  }

  CFRelease(v22);
LABEL_18:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v21)
  {
    CFRelease(v21);
  }
}

void sub_10057E33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 152))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v8 = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 1026;
      v13 = v4;
      v14 = 1026;
      v15 = v3;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLTelephonyService assertCommCenter, client:%{public}d, level:%{public}d}", &v8, 0x1Eu);
    }

    sub_100F694F4(*(a1 + 152), v4, v3);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v8 = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 1026;
      v13 = v4;
      v14 = 1026;
      v15 = v3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLTelephonyService assert skipped, client:%{public}d, level:%{public}d}", &v8, 0x1Eu);
    }
  }
}

uint64_t sub_10057E534(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    v2 = _CTServerConnectionCopyRegistrationInfo();
    v3 = v2;
    v4 = HIDWORD(v2);
    if (HIDWORD(v2))
    {
      v5 = 0;
    }

    else
    {
      v5 = v2 == 0;
    }

    if (!v5)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v6 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 67240448;
        v8 = v3;
        v9 = 1026;
        v10 = v4;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "Registration dictionary copy returned: %{public}d %{public}d", buf, 0xEu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C7030(v3, v4);
      }
    }

    return 0;
  }

  return result;
}

id sub_10057E700(uint64_t a1, uint64_t a2)
{
  if (qword_1025D48A0 != -1)
  {
    sub_100248B5C();
  }

  v4 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#irat CLTelephonyService fetching Irat-StreamingInfo}", v6, 0x12u);
  }

  return sub_100F699BC(*(a1 + 152), a2);
}

uint64_t sub_10057E81C(uint64_t a1, uint64_t *a2)
{
  if (qword_1025D48A0 != -1)
  {
    sub_100248B5C();
  }

  v4 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CELL_LOC: getting detected cells", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C713C();
  }

  theArray = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v6 = *a2;
  for (i = a2[1]; i != v6; sub_1000720CC(i))
  {
    i -= 696;
  }

  a2[1] = v6;
  if ((*(a1 + 160) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 160);
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1026;
      *&buf[20] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", buf, 0x18u);
    }
  }

  if (*(a1 + 144))
  {
    v9 = _CTServerConnectionCellMonitorCopyCellInfo();
    if (v63)
    {
      v10 = theArray == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = !v10 && v9 == 0;
    v12 = v11;
    v58 = v12;
    if (v11)
    {
      Count = CFArrayGetCount(theArray);
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v14 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *&buf[4] = Count;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "CELL_LOC: processing %d dictionaries (detected)", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C7228(buf);
        *v69 = 67109120;
        *&v69[4] = Count;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "CELL_LOC: processing %d dictionaries (detected)", v69);
        v54 = v53;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTelephonyService::getDetectedCells(std::vector<CLCell> &)", "%s\n", v53);
        if (v54 != buf)
        {
          free(v54);
        }
      }

      if (Count >= 1)
      {
        v15 = 0;
        v16 = kCTCellMonitorDerivedMCC;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
          v18 = CFGetTypeID(ValueAtIndex);
          if (v18 == CFDictionaryGetTypeID())
          {
            v59 = ValueAtIndex;
            if (CFDictionaryContainsKey(ValueAtIndex, v16))
            {
              if (qword_1025D48A0 != -1)
              {
                sub_1018C6BA0();
              }

              v19 = qword_1025D48A8;
              if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "CELL_LOC: derivedMCC dictionary", buf, 2u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_1018C7228(buf);
                *v69 = 0;
                LODWORD(v55) = 2;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "CELL_LOC: derivedMCC dictionary", v69, v55);
                v29 = v28;
                sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTelephonyService::getDetectedCells(std::vector<CLCell> &)", "%s\n", v28);
                if (v29 != buf)
                {
                  free(v29);
                }
              }

              sub_100585A08(&v59, &v60);
            }

            else
            {
              sub_10006BCBC(v69, &v59);
              if (*&v69[4] == 2)
              {
                sub_100586008(a2, v69);
              }

              if (qword_1025D48A0 != -1)
              {
                sub_1018C6BA0();
              }

              v22 = qword_1025D48A8;
              if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
              {
                sub_10123DED0(v69, buf);
                v23 = buf;
                if (buf[23] < 0)
                {
                  v23 = *buf;
                }

                *v65 = 136315138;
                *&v65[4] = v23;
                _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "CELL_LOC: Adding cell, %s", v65, 0xCu);
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }
              }

              if (sub_10000A100(121, 2))
              {
                sub_1018C7228(buf);
                v30 = qword_1025D48A8;
                sub_10123DED0(v69, v65);
                v31 = v65;
                if (v66 < 0)
                {
                  v31 = *v65;
                }

                v67 = 136315138;
                v68 = v31;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v30, 2, "CELL_LOC: Adding cell, %s", &v67);
                v33 = v32;
                if (v66 < 0)
                {
                  operator delete(*v65);
                }

                sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTelephonyService::getDetectedCells(std::vector<CLCell> &)", "%s\n", v33);
                if (v33 != buf)
                {
                  free(v33);
                }
              }

              if (v77 < 0)
              {
                operator delete(__p);
              }

              if (v74)
              {
                v75 = v74;
                operator delete(v74);
              }
            }
          }

          else
          {
            if (qword_1025D48A0 != -1)
            {
              sub_1018C6BA0();
            }

            v20 = qword_1025D48A8;
            if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
            {
              TypeID = CFDictionaryGetTypeID();
              *buf = 134349056;
              *&buf[4] = TypeID;
              _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "CELL_LOC: Invalid dictionary %{public}ld", buf, 0xCu);
            }

            if (sub_10000A100(121, 0))
            {
              sub_1018C7228(buf);
              v24 = qword_1025D48A8;
              v25 = CFDictionaryGetTypeID();
              *v69 = 134349056;
              *&v69[4] = v25;
              LODWORD(v55) = 12;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v24, 17, "CELL_LOC: Invalid dictionary %{public}ld", v69, v55);
              v27 = v26;
              sub_100152C7C("Generic", 1, 0, 0, "BOOL CLTelephonyService::getDetectedCells(std::vector<CLCell> &)", "%s\n", v26);
              if (v27 != buf)
              {
                free(v27);
              }
            }
          }

          ++v15;
        }

        while (Count != v15);
      }

      if (v61 != v60)
      {
        for (j = *a2; j != a2[1]; j += 174)
        {
          if (j[2] - 3 <= 2)
          {
            sub_10123F038(j, &v60);
            if (qword_1025D48A0 != -1)
            {
              sub_1018C6BA0();
            }

            v39 = qword_1025D48A8;
            if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
            {
              sub_10123DED0(j, buf);
              v40 = buf[23] >= 0 ? buf : *buf;
              *v69 = 136315138;
              *&v69[4] = v40;
              _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "CELL_LOC: Updating Cell, %s", v69, 0xCu);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018C7228(buf);
              v41 = qword_1025D48A8;
              sub_10123DED0(j, v69);
              v42 = v69;
              if (SHIBYTE(v71) < 0)
              {
                v42 = *v69;
              }

              *v65 = 136315138;
              *&v65[4] = v42;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v41, 2, "CELL_LOC: Updating Cell, %s", v65);
              v44 = v43;
              if (SHIBYTE(v71) < 0)
              {
                operator delete(*v69);
              }

              sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTelephonyService::getDetectedCells(std::vector<CLCell> &)", "%s\n", v44);
              if (v44 != buf)
              {
                free(v44);
              }
            }
          }
        }
      }
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v35 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109888;
        *&buf[4] = v9;
        *&buf[8] = 1024;
        *&buf[10] = HIDWORD(v9);
        *&buf[14] = 2048;
        *&buf[16] = theArray;
        v79 = 1024;
        v80 = v63;
        _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEFAULT, "#Warning CELL_LOC: _CTServerConnectionCellMonitorCopyCellInfo failed err(%d,%d) cellsArray(%p) valid(%d)", buf, 0x1Eu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C7228(buf);
        *v69 = 67109888;
        *&v69[4] = v9;
        *&v69[8] = 1024;
        *&v69[10] = HIDWORD(v9);
        v70 = 2048;
        v71 = theArray;
        v72 = 1024;
        v73 = v63;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning CELL_LOC: _CTServerConnectionCellMonitorCopyCellInfo failed err(%d,%d) cellsArray(%p) valid(%d)", v69, 30, v56, v57);
        v37 = v36;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTelephonyService::getDetectedCells(std::vector<CLCell> &)", "%s\n", v36);
        if (v37 != buf)
        {
          free(v37);
        }
      }
    }

    if (theArray)
    {
      CFRelease(theArray);
    }

    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v45 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v46 = 0x66FD0EB66FD0EB67 * ((a2[1] - *a2) >> 3);
      *buf = 134217984;
      *&buf[4] = v46;
      _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEBUG, "CELL_LOC: detected cells,%lu", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C7228(buf);
      v48 = 0x66FD0EB66FD0EB67 * ((a2[1] - *a2) >> 3);
      *v69 = 134217984;
      *&v69[4] = v48;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "CELL_LOC: detected cells,%lu", v69);
      v50 = v49;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTelephonyService::getDetectedCells(std::vector<CLCell> &)", "%s\n", v49);
      if (v50 != buf)
      {
        free(v50);
      }
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v34 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C7228(buf);
      *v69 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "currently not connected to telephony service", v69, 2);
      v52 = v51;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTelephonyService::getDetectedCells(std::vector<CLCell> &)", "%s\n", v51);
      if (v52 != buf)
      {
        free(v52);
      }
    }

    v58 = 0;
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  return v58;
}

void sub_10057F4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10057F5A0(uint64_t a1)
{
  cf1 = 0;
  v1 = sub_10058517C(a1, &cf1);
  if (v1)
  {
    return sub_100584F18(v1, cf1);
  }

  else
  {
    return 11;
  }
}

uint64_t sub_10057F614(uint64_t a1, int a2)
{
  v2 = sub_100913868(a1 + 176, a2);
  v3 = [(__CFString *)v2 length];
  if (!v3)
  {
    return 11;
  }

  return sub_100584F18(v3, v2);
}

uint64_t sub_10057F70C(uint64_t a1, int a2)
{
  v3 = sub_100913858(a1 + 176, a2);
  v4 = sub_1000ED2E4(v3);
  v5 = v4;
  if (v4 <= 3 && v4 != 2)
  {
    if (sub_10057DBB8(a1))
    {
      return 7;
    }

    else
    {
      return v5;
    }
  }

  return v5;
}

uint64_t sub_10057F7E8(uint64_t a1, int a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_1018C726C();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLTelephonyService, Refresh Cell Monitor", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C7364();
  }

  sub_1001CCDA8(a1 + 176, a2);
  return 1;
}

void sub_10057F918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10057F934(uint64_t a1, std::string *a2)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 160);
      *buf = 68289282;
      *&buf[4] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 1026;
      v15 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", buf, 0x18u);
    }
  }

  if (!*(a1 + 144))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C752C();
    }

    return 0;
  }

  *buf = 0;
  if (_CTServerConnectionCopyOperatorName())
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "_CTServerConnectionCopyOperatorName failed", v10, 2u);
    }

    v7 = 0;
    if (sub_10000A100(121, 0))
    {
      sub_1018C7448();
      v7 = 0;
    }

    goto LABEL_23;
  }

  if (!*buf)
  {
    return 0;
  }

  v7 = sub_100005A24(*buf, a2);
LABEL_23:
  if (*buf)
  {
    CFRelease(*buf);
  }

  return v7;
}

void sub_10057FC08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10057FCA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10057FCBC(uint64_t a1, std::string *a2)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 160);
      *buf = 68289282;
      *&buf[4] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 1026;
      v15 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", buf, 0x18u);
    }
  }

  if (!*(a1 + 144))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C76F4();
    }

    return 0;
  }

  *buf = 0;
  if (_CTServerConnectionCopyProviderNameUsingCarrierBundle())
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "_CTServerConnectionCopyProviderNameUsingCarrierBundle failed", v10, 2u);
    }

    v7 = 0;
    if (sub_10000A100(121, 0))
    {
      sub_1018C7610();
      v7 = 0;
    }

    goto LABEL_23;
  }

  if (!*buf)
  {
    return 0;
  }

  v7 = sub_100005A24(*buf, a2);
LABEL_23:
  if (*buf)
  {
    CFRelease(*buf);
  }

  return v7;
}

BOOL sub_10057FF4C(uint64_t a1, uint64_t a2)
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
      HIDWORD(v11) = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", &v11 + 4, 0x18u);
    }
  }

  if (*(a1 + 144))
  {
    v11 = 0;
    SignalStrength = _CTServerConnectionGetSignalStrength();
    v6 = SignalStrength == 0;
    if (SignalStrength)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v7 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *v10 = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "_CTServerConnectionGetSignalStrength failed", v10, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C77D8();
      }
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      WORD2(v11) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", &v11 + 4, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C78BC();
    }

    return 0;
  }

  return v6;
}

BOOL sub_100580340(uint64_t a1, char *cStr)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 160);
      v12[0] = 68289282;
      v12[1] = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", v12, 0x18u);
    }
  }

  if (*(a1 + 144))
  {
    v6 = sub_100053C00(cStr);
    v7 = _CTServerConnectionResetModemWithCrashLogs();
    v8 = v7 == 0;
    if (v7)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v9 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "_CTServerConnectionResetModemWithCrashLogs failed", v12, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C79C8();
        if (!v6)
        {
          return v8;
        }

        goto LABEL_14;
      }
    }

    if (v6)
    {
LABEL_14:
      CFRelease(v6);
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v10 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", v12, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C7AAC();
    }

    return 0;
  }

  return v8;
}

BOOL sub_1005805A4(uint64_t a1, char *cStr)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 160);
      v12[0] = 68289282;
      v12[1] = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", v12, 0x18u);
    }
  }

  if (*(a1 + 144))
  {
    v6 = sub_100053C00(cStr);
    v7 = _CTServerConnectionDumpBasebandState();
    v8 = v7 == 0;
    if (v7)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v9 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "_CTServerConnectionDumpBasebandState failed", v12, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C7B90();
        if (!v6)
        {
          return v8;
        }

        goto LABEL_14;
      }
    }

    if (v6)
    {
LABEL_14:
      CFRelease(v6);
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v10 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", v12, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C7C74();
    }

    return 0;
  }

  return v8;
}

uint64_t sub_1005807FC(uint64_t a1, uint64_t *a2, int a3)
{
  if (!sub_100585E1C(a1, a2, a3) || a2[1] != *a2)
  {
    return 1;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_100248B5C();
  }

  v5 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#Warning CELL_LOC: can't figure out the serving cell", v6, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018C7D58();
    return 0;
  }

  return result;
}

uint64_t sub_1005808E8(uint64_t a1, uint64_t a2)
{
  if (!(*(*a1 + 224))(a1) || !(*(*a1 + 232))(a1, a2 + 4))
  {
    return 0;
  }

  v4 = *(*a1 + 240);

  return v4(a1, a2 + 8, a2 + 12);
}

uint64_t sub_100580A20(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_1000649A0(a1, a2);
  if (v2)
  {
    v4 = 255;
  }

  else
  {
    v4 = 0;
  }

  if (v2 >= 2)
  {
    v5 = 255;
  }

  else
  {
    v5 = v2;
  }

  if (v3)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

BOOL sub_100580A60(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_1000649A0(a1, a2);
  v4 = 1;
  if (v2)
  {
    v4 = 2;
  }

  if (v2 > 1)
  {
    v4 = 0;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return v2 == 0;
  }
}

uint64_t sub_100580AA8(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 255;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100580AC0(int a1)
{
  v1 = 1;
  if (a1 == 1)
  {
    v1 = 2;
  }

  if (a1 == 255)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100580AD8(int a1)
{
  if (a1 == 255)
  {
    v1 = 255;
  }

  else
  {
    v1 = 0;
  }

  if ((a1 - 2) >= 2)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100580AF8(uint64_t result)
{
  if (result != 1)
  {
    if (result == 255)
    {
      return result;
    }

    if (result != 3)
    {
      return 0;
    }
  }

  return 1;
}

int *sub_100580B20(int *a1, int a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  *a1 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100007244(a1 + 8, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 3) = *(a3 + 2);
    *(a1 + 2) = v8;
  }

  *(a1 + 32) = 1;
  if (*(a4 + 23) < 0)
  {
    sub_100007244(a1 + 40, *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 7) = *(a4 + 2);
    *(a1 + 10) = v9;
  }

  *(a1 + 64) = 1;
  sub_10004FD18();
  *(a1 + 88) = 1;
  sub_10004FD18();
  *(a1 + 112) = 1;
  sub_10004FD18();
  *(a1 + 136) = 1;
  if (!sub_100185B50(a5, @"Location", a1 + 9))
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C7FD0();
    }

    v10 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *a1;
      *buf = 67240192;
      v30 = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#BundleInfo,constructor,unable to get location dict,descriptor,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C7FE4(buf);
      v17 = *a1;
      v27 = 67240192;
      v28 = v17;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 0, "#BundleInfo,constructor,unable to get location dict,descriptor,%{public}d", &v27, 8);
      v19 = v18;
      sub_100152C7C("Generic", 1, 0, 2, "CLTelephonyService_Type::BundleInfo::BundleInfo(BundleDescriptor, const std::string &, const std::string &, const CLNameValuePair &)", "%s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }

  if (!sub_100185B50(a5, @"SUPL", a1 + 12))
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v12 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *a1;
      *buf = 67240192;
      v30 = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#BundleInfo,constructor,unable to get SUPL dict,descriptor,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C7FE4(buf);
      v20 = *a1;
      v27 = 67240192;
      v28 = v20;
      LODWORD(v26) = 8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 0, "#BundleInfo,constructor,unable to get SUPL dict,descriptor,%{public}d", &v27, v26);
      v22 = v21;
      sub_100152C7C("Generic", 1, 0, 2, "CLTelephonyService_Type::BundleInfo::BundleInfo(BundleDescriptor, const std::string &, const std::string &, const CLNameValuePair &)", "%s\n", v21);
      if (v22 != buf)
      {
        free(v22);
      }
    }
  }

  if (!sub_100185B50(a5, @"LocationSecondaryOverlay", a1 + 15))
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v14 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *a1;
      *buf = 67240192;
      v30 = v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#BundleInfo,constructor,unable to get secondary settings dict,descriptor,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C7FE4(buf);
      v23 = *a1;
      v27 = 67240192;
      v28 = v23;
      LODWORD(v26) = 8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 0, "#BundleInfo,constructor,unable to get secondary settings dict,descriptor,%{public}d", &v27, v26);
      v25 = v24;
      sub_100152C7C("Generic", 1, 0, 2, "CLTelephonyService_Type::BundleInfo::BundleInfo(BundleDescriptor, const std::string &, const std::string &, const CLNameValuePair &)", "%s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  return a1;
}

void sub_100580FB8(_Unwind_Exception *a1)
{
  sub_100005DA4();
  sub_100005DA4();
  sub_100005DA4();
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

const __CFString *sub_100581034(_DWORD *a1)
{
  if ((*a1 - 2) < 2)
  {
    return @"kSlotTwo";
  }

  if (*a1 != 255)
  {
    return @"kSlotOne";
  }

  if (qword_1025D4870 != -1)
  {
    sub_1018C7FD0();
  }

  v3 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
  {
    if (*a1 == 255)
    {
      v4 = 255;
    }

    else
    {
      v4 = 0;
    }

    if ((*a1 - 2) < 2)
    {
      v4 = 1;
    }

    v5[0] = 67240192;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "#BundleInfo,getKeyForSim,unexpected sim,%{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C8050(a1);
  }

  return 0;
}

const __CFString *sub_10058115C(int *a1)
{
  v1 = *a1;
  if (*a1 == 1 || v1 == 3)
  {
    return @"Operator";
  }

  if (v1 != 255)
  {
    return @"Carrier";
  }

  if (qword_1025D4870 != -1)
  {
    sub_1018C7FD0();
  }

  v5 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
  {
    v6 = *a1;
    if (*a1 != 1)
    {
      if (v6 == 255)
      {
LABEL_17:
        v7[0] = 67240192;
        v7[1] = v6;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#BundleInfo,getKeyForBundleType,unexpected bundle type,%{public}d", v7, 8u);
        goto LABEL_18;
      }

      if (v6 != 3)
      {
        v6 = 0;
        goto LABEL_17;
      }
    }

    v6 = 1;
    goto LABEL_17;
  }

LABEL_18:
  if (sub_10000A100(121, 0))
  {
    sub_1018C8150(a1);
  }

  return 0;
}

void sub_10058128C(int *a1, int *cf1, const __CFDictionary *a3)
{
  if (CFEqual(cf1, @"Location"))
  {

    sub_10058148C(a1, a3);
  }

  else if (CFEqual(cf1, @"SUPL"))
  {

    sub_1005814EC(a1, a3);
  }

  else if (CFEqual(cf1, @"LocationSecondaryOverlay"))
  {

    sub_10058154C(a1, a3);
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C7FD0();
    }

    v6 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v7 = *a1;
      v8 = 138478083;
      v9 = cf1;
      v10 = 1026;
      v11 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#BundleInfo,setDict,called with unexpected dictName,%{private}@,descriptor,%{public}d", &v8, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C8254(cf1, a1);
    }
  }
}

uint64_t sub_10058148C(uint64_t a1, const __CFDictionary *a2)
{
  *(a1 + 88) = 1;
  sub_100005548(v4, a2);
  sub_1004F9A30(a1 + 72, v4);
  return sub_100005DA4();
}

uint64_t sub_1005814EC(uint64_t a1, const __CFDictionary *a2)
{
  *(a1 + 112) = 1;
  sub_100005548(v4, a2);
  sub_1004F9A30(a1 + 96, v4);
  return sub_100005DA4();
}

uint64_t sub_10058154C(uint64_t a1, const __CFDictionary *a2)
{
  *(a1 + 136) = 1;
  sub_100005548(v4, a2);
  sub_1004F9A30(a1 + 120, v4);
  return sub_100005DA4();
}

const __CFString *sub_1005815AC(int *a1, void *a2)
{
  if (qword_1025D4870 != -1)
  {
    sub_1018C7FD0();
  }

  v4 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a1;
    *buf = 67240192;
    v23 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#BundleInfo,writeToDict,descriptor,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C836C(a1);
  }

  result = sub_100581034(a1);
  if (result)
  {
    v7 = result;
    result = sub_10058115C(a1);
    if (result)
    {
      v8 = result;
      v9 = a1 + 2;
      if (*(a1 + 31) < 0)
      {
        v9 = *v9;
      }

      v10 = [NSString stringWithUTF8String:v9];
      v11 = a1 + 10;
      if (*(a1 + 63) < 0)
      {
        v11 = *v11;
      }

      v12 = [NSString stringWithUTF8String:v11];
      v13 = sub_10007005C((a1 + 18));
      v14 = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, v13, 1uLL);
      v15 = sub_10007005C((a1 + 24));
      v16 = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, v15, 1uLL);
      v17 = sub_10007005C((a1 + 30));
      v20[0] = @"kBundleIDKey";
      v20[1] = @"kBundleVersionKey";
      v21[0] = v10;
      v21[1] = v12;
      v20[2] = @"Location";
      v20[3] = @"SUPL";
      v21[2] = v14;
      v21[3] = v16;
      v20[4] = @"LocationSecondaryOverlay";
      v21[4] = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, v17, 1uLL);
      v18 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:5];
      v19 = [a2 objectForKey:v7];
      if (!v19)
      {
        v19 = objc_alloc_init(NSMutableDictionary);
        [a2 setObject:v19 forKey:v7];
      }

      return [v19 setObject:v18 forKey:v8];
    }
  }

  return result;
}

void sub_100581810(int *a1, void *a2)
{
  sub_100582020(a1);
  if (qword_1025D4870 != -1)
  {
    sub_1018C7FD0();
  }

  v4 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a1;
    LODWORD(v43) = 67240192;
    HIDWORD(v43) = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#BundleInfo,readFromDict,descriptor,%{public}d", &v43, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C8460(a1);
  }

  v6 = sub_100581034(a1);
  if (v6)
  {
    v7 = sub_10058115C(a1);
    if (v7)
    {
      v8 = [a2 objectForKey:v6];
      if (v8)
      {
        v9 = [v8 objectForKey:v7];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 objectForKey:@"kBundleIDKey"];
          if (v11)
          {
            sub_100006044((a1 + 2), [v11 UTF8String]);
            v12 = [v10 objectForKey:@"Location"];
            if (v12)
            {
              DeepCopy = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, v12, 1uLL);
              sub_1004F98D4(&v43, DeepCopy);
              sub_1004F9A30((a1 + 18), &v43);
              sub_100005DA4();
              CFRelease(DeepCopy);
              v14 = [v10 objectForKey:@"SUPL"];
              if (v14)
              {
                v15 = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, v14, 1uLL);
                sub_1004F98D4(&v43, v15);
                sub_1004F9A30((a1 + 24), &v43);
                sub_100005DA4();
                CFRelease(v15);
                v16 = [v10 objectForKey:@"LocationSecondaryOverlay"];
                if (v16)
                {
                  v17 = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, v16, 1uLL);
                  sub_1004F98D4(&v43, v17);
                  sub_1004F9A30((a1 + 30), &v43);
                  sub_100005DA4();
                  CFRelease(v17);
                  v18 = [v10 objectForKey:@"kBundleVersionKey"];
                  if (v18)
                  {
                    sub_100006044((a1 + 10), [v18 UTF8String]);
                    return;
                  }

                  if (qword_1025D4870 != -1)
                  {
                    sub_1018C8028();
                  }

                  v37 = qword_1025D4878;
                  if (!os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_116;
                  }

                  v38 = *a1;
                  if ((*a1 - 2) >= 2)
                  {
                    v39 = *a1;
                    if (v38 == 255)
                    {
                      goto LABEL_109;
                    }

                    v39 = 0;
                  }

                  else
                  {
                    v39 = 1;
                  }

                  if (v38 == 1)
                  {
LABEL_104:
                    v42 = 1;
LABEL_115:
                    LODWORD(v43) = 67240448;
                    HIDWORD(v43) = v39;
                    v44 = 1026;
                    v45 = v42;
                    _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_ERROR, "#BundleInfo,readFromDict,no entry for bundle Version,sim,%{public}d,bundle type,%{public}d", &v43, 0xEu);
LABEL_116:
                    if (sub_10000A100(121, 0))
                    {
                      sub_1018C855C();
                    }

                    return;
                  }

                  if (v38 != 255)
                  {
                    if (v38 != 3)
                    {
                      v42 = 0;
                      goto LABEL_115;
                    }

                    goto LABEL_104;
                  }

LABEL_109:
                  v42 = 255;
                  goto LABEL_115;
                }

                if (qword_1025D4870 != -1)
                {
                  sub_1018C8028();
                }

                v33 = qword_1025D4878;
                if (!os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_112;
                }

                v34 = *a1;
                if ((*a1 - 2) >= 2)
                {
                  v35 = *a1;
                  if (v34 == 255)
                  {
                    goto LABEL_98;
                  }

                  v35 = 0;
                }

                else
                {
                  v35 = 1;
                }

                if (v34 == 1)
                {
LABEL_93:
                  v41 = 1;
LABEL_111:
                  LODWORD(v43) = 67240448;
                  HIDWORD(v43) = v35;
                  v44 = 1026;
                  v45 = v41;
                  _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_ERROR, "#BundleInfo,readFromDict,no entry for secondary settings dict,sim,%{public}d,bundle type,%{public}d", &v43, 0xEu);
LABEL_112:
                  if (sub_10000A100(121, 0))
                  {
                    sub_1018C869C();
                  }

                  return;
                }

                if (v34 != 255)
                {
                  if (v34 != 3)
                  {
                    v41 = 0;
                    goto LABEL_111;
                  }

                  goto LABEL_93;
                }

LABEL_98:
                v41 = 255;
                goto LABEL_111;
              }

              if (qword_1025D4870 != -1)
              {
                sub_1018C8028();
              }

              v29 = qword_1025D4878;
              if (!os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_107;
              }

              v30 = *a1;
              if ((*a1 - 2) >= 2)
              {
                v31 = *a1;
                if (v30 == 255)
                {
                  goto LABEL_87;
                }

                v31 = 0;
              }

              else
              {
                v31 = 1;
              }

              if (v30 == 1)
              {
LABEL_82:
                v40 = 1;
LABEL_106:
                LODWORD(v43) = 67240448;
                HIDWORD(v43) = v31;
                v44 = 1026;
                v45 = v40;
                _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_ERROR, "#BundleInfo,readFromDict,no entry for SUPL dict,sim,%{public}d,bundle type,%{public}d", &v43, 0xEu);
LABEL_107:
                if (sub_10000A100(121, 0))
                {
                  sub_1018C87DC();
                }

                return;
              }

              if (v30 != 255)
              {
                if (v30 != 3)
                {
                  v40 = 0;
                  goto LABEL_106;
                }

                goto LABEL_82;
              }

LABEL_87:
              v40 = 255;
              goto LABEL_106;
            }

            if (qword_1025D4870 != -1)
            {
              sub_1018C8028();
            }

            v26 = qword_1025D4878;
            if (!os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_96;
            }

            v27 = *a1;
            if ((*a1 - 2) >= 2)
            {
              v28 = *a1;
              if (v27 == 255)
              {
                goto LABEL_76;
              }

              v28 = 0;
            }

            else
            {
              v28 = 1;
            }

            if (v27 == 1)
            {
LABEL_70:
              v36 = 1;
LABEL_95:
              LODWORD(v43) = 67240448;
              HIDWORD(v43) = v28;
              v44 = 1026;
              v45 = v36;
              _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_ERROR, "#BundleInfo,readFromDict,no entry for location dict,sim,%{public}d,bundle type,%{public}d", &v43, 0xEu);
LABEL_96:
              if (sub_10000A100(121, 0))
              {
                sub_1018C891C();
              }

              return;
            }

            if (v27 != 255)
            {
              if (v27 != 3)
              {
                v36 = 0;
                goto LABEL_95;
              }

              goto LABEL_70;
            }

LABEL_76:
            v36 = 255;
            goto LABEL_95;
          }

          if (qword_1025D4870 != -1)
          {
            sub_1018C8028();
          }

          v23 = qword_1025D4878;
          if (!os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_85;
          }

          v24 = *a1;
          if ((*a1 - 2) >= 2)
          {
            v25 = *a1;
            if (v24 == 255)
            {
              goto LABEL_60;
            }

            v25 = 0;
          }

          else
          {
            v25 = 1;
          }

          if (v24 == 1)
          {
LABEL_54:
            v32 = 1;
LABEL_84:
            LODWORD(v43) = 67240448;
            HIDWORD(v43) = v25;
            v44 = 1026;
            v45 = v32;
            _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "#BundleInfo,readFromDict,no entry for bundle ID,sim,%{public}d,bundle type,%{public}d", &v43, 0xEu);
LABEL_85:
            if (sub_10000A100(121, 0))
            {
              sub_1018C8A5C();
            }

            return;
          }

          if (v24 != 255)
          {
            if (v24 != 3)
            {
              v32 = 0;
              goto LABEL_84;
            }

            goto LABEL_54;
          }

LABEL_60:
          v32 = 255;
          goto LABEL_84;
        }

        if (qword_1025D4870 != -1)
        {
          sub_1018C8028();
        }

        v21 = qword_1025D4878;
        if (!os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_63;
        }

        v22 = *a1;
        if (*a1 != 1)
        {
          if (v22 == 255)
          {
LABEL_62:
            LODWORD(v43) = 67240192;
            HIDWORD(v43) = v22;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "#BundleInfo,readFromDict,no entry for this bundle type,%{public}d", &v43, 8u);
LABEL_63:
            if (sub_10000A100(121, 0))
            {
              sub_1018C8B9C();
            }

            return;
          }

          if (v22 != 3)
          {
            v22 = 0;
            goto LABEL_62;
          }
        }

        v22 = 1;
        goto LABEL_62;
      }

      if (qword_1025D4870 != -1)
      {
        sub_1018C8028();
      }

      v19 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        v20 = *a1;
        if ((*a1 - 2) >= 2)
        {
          if (v20 != 255)
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 1;
        }

        LODWORD(v43) = 67240192;
        HIDWORD(v43) = v20;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "#BundleInfo,readFromDict,no entry for this sim,%{public}d", &v43, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C8CA8();
      }
    }
  }
}

uint64_t sub_100582020(unsigned int *a1)
{
  sub_10058AA50(&v3, *a1);
  *a1 = v3;
  std::string::operator=((a1 + 2), &v4);
  *(a1 + 32) = v5;
  std::string::operator=((a1 + 10), &v6);
  *(a1 + 64) = v7;
  sub_1004F9A30((a1 + 18), v8);
  *(a1 + 88) = v8[16];
  sub_1004F9A30((a1 + 24), v9);
  *(a1 + 112) = v9[16];
  sub_1004F9A30((a1 + 30), v10);
  *(a1 + 136) = v10[16];
  return sub_10058AB28(&v3);
}

void sub_100582908(uint64_t a1, void *a2)
{
  v4 = sub_100582DB4(a1, "CLTelephonyService", a2);
  *v4 = off_102460258;
  *(v4 + 112) = 0;
  v5 = (v4 + 112);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = -1;
  *(v4 + 144) = 0;
  v6 = (v4 + 144);
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(v4 + 164) = _D0;
  sub_100909D14(v4 + 176, a2);
  *(a1 + 736) = 0;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  sub_100582E60(a1);
  v12 = [*(a1 + 40) newTimer];
  *(a1 + 112) = v12;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1005831D8;
  v22[3] = &unk_102449A78;
  v22[4] = a1;
  [v12 setHandler:v22];
  if (!*v6 && !sub_100583724(a1))
  {
    [*v5 setNextFireDelay:1.0];
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, a1, sub_100583230, @"com.apple.locationd.DumpDiagnostics", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v16 = sub_10001A3E8(v14, v15);
  *(a1 + 172) = sub_1000559EC(v16);
  if (qword_1025D4620 != -1)
  {
    sub_100244210();
  }

  v17 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 172);
    *buf = 67109120;
    *&buf[4] = v18;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "CELL_LOC: fHardwareType, %d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C923C(buf);
    v19 = *(a1 + 172);
    v23[0] = 67109120;
    v23[1] = v19;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "CELL_LOC: fHardwareType, %d", v23);
    v21 = v20;
    sub_100152C7C("Generic", 1, 0, 2, "CLTelephonyService::CLTelephonyService(id<CLIntersiloUniverse>)", "%s\n", v20);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  operator new();
}

void sub_100582D1C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 728);
  *(v1 + 728) = 0;
  if (v4)
  {
    operator delete();
  }

  v5 = *(v1 + 712);
  *(v1 + 712) = 0;
  if (v5)
  {
    operator delete();
  }

  sub_100909E60((v1 + 176));
  sub_10058345C(v2);
  sub_1005834B0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100582DB4(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_102460648;
  sub_10000EC00((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = [a3 silo];
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_100582E44(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_100582E60(CFRunLoopSourceRef *a1)
{
  *connect = 0;
  v2 = IOServiceMatching("AppleBaseband");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  if (MatchingService)
  {
    v4 = MatchingService;
    v5 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect[1]);
    if (v5)
    {
      v6 = v5;
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v7 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v20) = v6;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Could not open service (%#x)", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C9280(v6);
      }
    }

    else
    {
      v9 = IONotificationPortCreate(kIOMainPortDefault);
      if (v9)
      {
        v10 = v9;
        v11 = IOServiceAddInterestNotification(v9, v4, "IOGeneralInterest", sub_10027A4C8, a1, connect);
        if (v11)
        {
          v12 = v11;
          if (qword_1025D48A0 != -1)
          {
            sub_1018C6BA0();
          }

          v13 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            LODWORD(v20) = v12;
            _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Could not add interest notification on service: %#x", buf, 8u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018C9378(v12);
          }
        }

        else
        {
          RunLoopSource = IONotificationPortGetRunLoopSource(v10);
          a1[15] = RunLoopSource;
          if (RunLoopSource)
          {
            v16 = sub_100107858();
            CFRunLoopAddSource(v16, a1[15], kCFRunLoopCommonModes);
          }

          else
          {
            if (qword_1025D48A0 != -1)
            {
              sub_1018C6BA0();
            }

            v17 = qword_1025D48A8;
            if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "Could not create run loop source", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018C9470();
            }
          }
        }
      }

      else
      {
        if (qword_1025D48A0 != -1)
        {
          sub_1018C6BA0();
        }

        v14 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Could not create notification port", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018C9554();
        }
      }
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v20 = "AppleBaseband";
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Could not find %s service", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C9638();
    }
  }
}

uint64_t sub_1005831D8(uint64_t result)
{
  v1 = *(result + 32);
  if (!*(v1 + 144))
  {
    result = sub_100583724(*(result + 32));
    if ((result & 1) == 0)
    {
      v2 = *(v1 + 112);

      return [v2 setNextFireDelay:1.0];
    }
  }

  return result;
}

void sub_100583230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018C9738();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLTelephonyService::onDumpDiagnostics", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018C974C();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLTelephonyService::onDumpDiagnostics, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10058AB84;
  v13[3] = &unk_10244FF80;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  [v12 sync:v13];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t *sub_10058345C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1003C93BC(v1 + 8, *(v1 + 16));
    operator delete();
  }

  return a1;
}

uint64_t sub_1005834B0(uint64_t a1)
{
  *a1 = off_102460648;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_100583534(void *a1)
{
  *a1 = off_102460258;
  v2 = a1[91];
  a1[91] = 0;
  if (v2)
  {
    operator delete();
  }

  v3 = a1[89];
  a1[89] = 0;
  if (v3)
  {
    operator delete();
  }

  sub_100909E60(a1 + 22);
  sub_10058345C(a1 + 19);

  return sub_1005834B0(a1);
}

void sub_1005835CC(void *a1)
{
  sub_100583534(a1);

  operator delete();
}

uint64_t sub_100583604(uint64_t a1)
{
  if (*(a1 + 120))
  {
    v2 = sub_100107858();
    CFRunLoopRemoveSource(v2, *(a1 + 120), kCFRunLoopCommonModes);
    *(a1 + 120) = 0;
  }

  [*(a1 + 112) invalidate];

  *(a1 + 112) = 0;
  v3 = *(a1 + 720);
  if (v3)
  {
    [v3 shutdown];
    v4 = *(a1 + 712);
    *(a1 + 712) = 0;
    if (v4)
    {
      operator delete();
    }

    *(a1 + 720) = 0;
  }

  v5 = *(a1 + 736);
  if (v5)
  {
    [v5 shutdown];
    v6 = *(a1 + 728);
    *(a1 + 728) = 0;
    if (v6)
    {
      operator delete();
    }

    *(a1 + 736) = 0;
  }

  return sub_1005836D8(a1);
}

uint64_t sub_1005836D8(uint64_t a1)
{
  *(a1 + 136) = -1;
  v2 = *(a1 + 128);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 128) = 0;
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 144) = 0;
  }

  return 1;
}

BOOL sub_100583724(uint64_t a1)
{
  v15 = 0;
  v16 = a1;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v2 = _CTServerConnectionCreate();
  *(a1 + 144) = v2;
  if (v2)
  {
    sub_100107858();
    _CTServerConnectionAddToRunLoop();
    _CTServerConnectionRegisterForNotification();
    _CTServerConnectionRegisterForNotification();
    _CTServerConnectionRegisterForNotification();
    _CTServerConnectionRegisterForNotification();
    _CTServerConnectionRegisterForNotification();
    _CTServerConnectionRegisterForNotification();
    v3 = _CTServerConnectionRegisterForNotification();
    v5 = sub_10071CCC0(v3, v4);
    if (v5 || sub_10006FB38(v5, v6))
    {
      _CTServerConnectionRegisterForNotification();
    }

    sub_100583A88(a1);
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG) || sub_10000A100(121, 2))
    {
      cf = 0;
      sub_10000EC00(&__p, "unknown");
      _CTServerConnectionCopyFirmwareVersion();
      if (cf)
      {
        sub_100005A24(cf, &__p);
        CFRelease(cf);
        cf = 0;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v7 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        v23 = p_p;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CT Version: %s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C7228(buf);
        v10 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v10 = __p.__r_.__value_.__r.__words[0];
        }

        v20 = 136315138;
        v21 = v10;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "CT Version: %s", &v20);
        v12 = v11;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTelephonyService::setupTelephony()", "%s\n", v11);
        if (v12 != buf)
        {
          free(v12);
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  return v2 != 0;
}

void sub_100583A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100583A88(uint64_t a1)
{
  if (qword_1025D48A0 != -1)
  {
    sub_100248B5C();
  }

  v2 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000238CC(@"kCLTelephonyServiceConnectedNotification", __p);
    v3 = v6 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v8 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "sending notification for %s", buf, 0xCu);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C97CC();
  }

  (*(*a1 + 264))(a1, @"kCLTelephonyServiceConnectedNotification", 0);
  sub_1001CCD00(a1);
  sub_100583BE8(a1);
  return 1;
}

void sub_100583BE8(uint64_t a1)
{
  *(a1 + 161) = 0;
  if (*(a1 + 144))
  {
    v6 = 0;
    v2 = _CTServerConnectionIsInHomeCountry();
    if (qword_1025D4600 != -1)
    {
      sub_1018C79A0();
    }

    v3 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v8 = v6;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "refreshInHomeCountry, inHC, %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C98DC(&v6);
      if (v2)
      {
        goto LABEL_8;
      }
    }

    else if (v2)
    {
LABEL_8:
      if (qword_1025D4600 != -1)
      {
        sub_1018C79A0();
      }

      v4 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240448;
        v8 = v2;
        v9 = 1026;
        v10 = HIDWORD(v2);
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "_CTServerConnectionIsInHomeCountry failed (%{public}d, %{public}d)", buf, 0xEu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C99D0(v2, HIDWORD(v2));
      }

      goto LABEL_22;
    }

    *(a1 + 161) = v6 == 1;
    goto LABEL_22;
  }

  if (qword_1025D4600 != -1)
  {
    sub_1018C726C();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "no server connection available", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C9ADC();
  }

LABEL_22:
  sub_1005849E0(a1);
}

uint64_t sub_100583E04(uint64_t a1, int a2)
{
  *(a1 + 136) = -1;
  v4 = *(a1 + 128);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 128) = 0;
  }

  if (a2)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v5 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000238CC(@"kCLTelephonyServiceDisconnectedNotification", __p);
      v6 = v9 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v11 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "sending notification for %s", buf, 0xCu);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C9BC0();
    }

    (*(*a1 + 264))(a1, @"kCLTelephonyServiceDisconnectedNotification", 0);
  }

  return 1;
}

void sub_100583F74(uint64_t a1, float a2, float a3)
{
  if (qword_1025D4650 != -1)
  {
    sub_1018C9CD0();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#imd,handleUplinkFreqBwUpdate", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C9CE4();
  }

  v13 = 1;
  *buf = a2;
  v7 = sub_1004FD6F8(buf);
  *buf = a3;
  v8 = sub_1004FD6F8(buf);
  v9 = sub_1001CF0F0(&v13);
  v10 = v9;
  if (v7 && v8 && v9)
  {
    *buf = *&off_102460370;
    v16 = @"kUplinkBwKey";
    values[0] = v9;
    values[1] = v7;
    values[2] = v8;
    v11 = CFDictionaryCreate(0, buf, values, 3, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v12 = v11;
    (*(*a1 + 256))(a1, @"kUplinkFreqBwNotification", v11);
  }

  else if (!v7)
  {
    goto LABEL_13;
  }

  CFRelease(v7);
LABEL_13:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

uint64_t sub_10058415C(uint64_t a1, const __CFDictionary *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_1018C9CD0();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#cts,notification,%{public}@", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C9DC8(a2);
  }

  sub_100005548(v33, a2);
  cf1 = 0;
  v5 = sub_10006EB64(v33, kKeyCTCellularTransmitState, &cf1);
  if (cf1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6 == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1018C9ECC();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000238CC(cf1, buf);
      v8 = v39 >= 0 ? buf : *buf;
      *v35 = 136446210;
      *&v35[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#cts,state,%{public}s", v35, 0xCu);
      if (v39 < 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C9EF4(buf);
      v19 = qword_1025D4658;
      sub_1000238CC(cf1, v35);
      if (v36 >= 0)
      {
        v20 = v35;
      }

      else
      {
        v20 = *v35;
      }

      *values = 136446210;
      *&values[4] = v20;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v19, 0, "#cts,state,%{public}s", values, 12);
      v22 = v21;
      if (v36 < 0)
      {
        operator delete(*v35);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLTelephonyService::notifyCellularTransmiteState(CFDictionaryRef)", "%s\n", v22);
      if (v22 != buf)
      {
        free(v22);
      }
    }

    *values = 0;
    keys = @"kCLCellularTransmitStateNotification";
    if (CFEqual(cf1, kCTCellularTransmitStateConnected))
    {
      if (qword_1025D4650 != -1)
      {
        sub_1018C9ECC();
      }

      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#cts,state,connected", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C9EF4(buf);
        *v35 = 0;
        LODWORD(v31) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#cts,state,connected", v35, v31);
        v24 = v23;
        sub_100152C7C("Generic", 1, 0, 2, "void CLTelephonyService::notifyCellularTransmiteState(CFDictionaryRef)", "%s\n", v23);
        if (v24 != buf)
        {
          free(v24);
        }
      }

      buf[0] = 1;
      v10 = sub_1001CF0F0(buf);
    }

    else
    {
      if (!CFEqual(cf1, kCTCellularTransmitStateIdle))
      {
        if (qword_1025D4650 != -1)
        {
          sub_1018C9ECC();
        }

        v17 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "#cts,state,unknown", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018C9EF4(buf);
          *v35 = 0;
          LODWORD(v31) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#cts,state,unknown", v35, v31);
          v30 = v29;
          sub_100152C7C("Generic", 1, 0, 2, "void CLTelephonyService::notifyCellularTransmiteState(CFDictionaryRef)", "%s\n", v29);
          if (v30 != buf)
          {
            free(v30);
          }
        }

        goto LABEL_53;
      }

      if (qword_1025D4650 != -1)
      {
        sub_1018C9ECC();
      }

      v14 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#cts,state,idle", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C9EF4(buf);
        *v35 = 0;
        LODWORD(v31) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#cts,state,idle", v35, v31);
        v28 = v27;
        sub_100152C7C("Generic", 1, 0, 2, "void CLTelephonyService::notifyCellularTransmiteState(CFDictionaryRef)", "%s\n", v27);
        if (v28 != buf)
        {
          free(v28);
        }
      }

      buf[0] = 0;
      v10 = sub_1001CF0F0(buf);
    }

    *values = v10;
    v15 = CFDictionaryCreate(0, &keys, values, 1, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v15)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1018C9ECC();
      }

      v16 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v15;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#cts,state,notify,%{public}@", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C9EF4(buf);
        *v35 = 138543362;
        *&v35[4] = v15;
        LODWORD(v31) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#cts,state,notify,%{public}@", v35, v31);
        v26 = v25;
        sub_100152C7C("Generic", 1, 0, 2, "void CLTelephonyService::notifyCellularTransmiteState(CFDictionaryRef)", "%s\n", v25);
        if (v26 != buf)
        {
          free(v26);
        }
      }

      (*(*a1 + 256))(a1, @"kCLCellularTransmitStateNotification", v15);
      CFRelease(v15);
    }

LABEL_53:
    if (*values)
    {
      CFRelease(*values);
    }

    return sub_100005DA4();
  }

  if (qword_1025D4650 != -1)
  {
    sub_1018C9ECC();
  }

  v11 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning,#cts,state,keyNotPresent", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C9EF4(buf);
    *v35 = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#Warning,#cts,state,keyNotPresent", v35, 2);
    v13 = v12;
    sub_100152C7C("Generic", 1, 0, 2, "void CLTelephonyService::notifyCellularTransmiteState(CFDictionaryRef)", "%s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  return sub_100005DA4();
}

void sub_1005849E0(_BYTE *a1)
{
  v2 = sub_1001CF0F0(a1 + 161);
  values = v2;
  keys = @"kInHomeCountryKey";
  v3 = CFDictionaryCreate(0, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v4 = v3;
  (*(*a1 + 256))(a1, @"kInHomeCountryLegacyNotification", v3);
  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t sub_100584AD4(void *a1, int *a2)
{
  if (a1[18])
  {
    sub_100072010(a2);
    _CTServerConnectionRegisterForNotification();
    if (qword_1025D4600 != -1)
    {
      sub_1018C726C();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v5 = sub_100072010(a2);
      sub_1000238CC(v5, __p);
      v6 = v12 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v14 = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLTelephonyService,registerForNotificationInternal,%s", buf, 0xCu);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CA544(a2);
    }

    v7 = sub_100072010(a2);
    if (CFEqual(v7, @"kInHomeCountryLegacyNotification"))
    {
      sub_100583BE8(a1);
    }

    (*(*a1 + 160))(__p, a1, a2);
    if (SHIBYTE(v12) < 0)
    {
      sub_100007244(v9, __p[0], __p[1]);
    }

    else
    {
      *v9 = *__p;
      v10 = v12;
    }

    sub_100912988((a1 + 22), v9);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 1;
}

void sub_100584CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100584CE8(void *a1, int *a2)
{
  if (a1[18])
  {
    sub_100072010(a2);
    _CTServerConnectionUnregisterForNotification();
    if (qword_1025D4600 != -1)
    {
      sub_1018C726C();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v5 = sub_100072010(a2);
      sub_1000238CC(v5, __p);
      v6 = v11 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v13 = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLTelephonyService,unregisterForNotificationInternal,%s", buf, 0xCu);
      if (SHIBYTE(v11) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CA658(a2);
    }

    (*(*a1 + 160))(__p, a1, a2);
    if (SHIBYTE(v11) < 0)
    {
      sub_100007244(v8, __p[0], __p[1]);
    }

    else
    {
      *v8 = *__p;
      v9 = v11;
    }

    sub_100912AC8((a1 + 22), v8);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(v8[0]);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 1;
}

void sub_100584EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100584EDC@<W0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = sub_100072010(a1);

  return sub_1000238CC(v3, a2);
}

uint64_t sub_100584F18(int a1, const __CFString *cf1)
{
  if (CFEqual(cf1, kCTRegistrationRadioAccessTechnologyGSM))
  {
    return 0;
  }

  if (CFEqual(cf1, kCTRegistrationRadioAccessTechnologyUTRAN2))
  {
    return 9;
  }

  if (CFEqual(cf1, kCTRegistrationRadioAccessTechnologyGSMCompact))
  {
    return 1;
  }

  if (CFEqual(cf1, kCTRegistrationRadioAccessTechnologyUTRAN))
  {
    return 2;
  }

  if (CFEqual(cf1, kCTRegistrationRadioAccessTechnologyCDMA1x))
  {
    return 3;
  }

  if (CFEqual(cf1, kCTRegistrationRadioAccessTechnologyCDMAEVDO))
  {
    return 4;
  }

  if (CFEqual(cf1, kCTRegistrationRadioAccessTechnologyCDMAHybrid) || CFEqual(cf1, kCTRegistrationRadioAccessTechnologyeHRPD))
  {
    return 5;
  }

  if (CFEqual(cf1, kCTRegistrationRadioAccessTechnologyLTE))
  {
    return 6;
  }

  if (CFEqual(cf1, kCTRegistrationRadioAccessTechnologyNR))
  {
    return 10;
  }

  if (!CFEqual(cf1, kCTRegistrationRadioAccessTechnologyUnknown))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(cf1, __p);
      if (v7 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136446210;
      v9 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "CELL_LOC: unknown registration technology, %{public}s", buf, 0xCu);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CAB10(cf1);
    }
  }

  return 11;
}

uint64_t sub_10058517C(uint64_t a1, uint64_t a2)
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
    if (_CTServerConnectionGetRadioAccessTechnology())
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v5 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v8[0]) = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "_CTServerConnectionGetRadioAccessTechnology failed", v8, 2u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_1018CAC30();
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
      sub_1018CAD14();
      return 0;
    }
  }

  return result;
}

BOOL sub_100585368(uint64_t a1, SInt32 *a2)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 160);
      *buf = 68289282;
      *&buf[4] = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", buf, 0x18u);
    }
  }

  if (!*(a1 + 144))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v9 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CAEDC();
    }

    return 0;
  }

  *buf = 0;
  v6 = _CTServerConnectionCopyCountryCode();
  v7 = v6 == 0;
  if (v6)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *v11 = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "_CTServerConnectionCopyCountryCode failed", v11, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CADF8();
    }

    goto LABEL_23;
  }

  if (!*buf)
  {
    return 0;
  }

  *a2 = CFStringGetIntValue(*buf);
LABEL_23:
  if (*buf)
  {
    CFRelease(*buf);
  }

  return v7;
}

BOOL sub_100585580(uint64_t a1, SInt32 *a2)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 160);
      *buf = 68289282;
      *&buf[4] = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", buf, 0x18u);
    }
  }

  if (!*(a1 + 144))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v9 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CB0A4();
    }

    return 0;
  }

  *buf = 0;
  v6 = _CTServerConnectionCopyNetworkCode();
  v7 = v6 == 0;
  if (v6)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *v11 = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "_CTServerConnectionCopyNetworkCode failed", v11, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CAFC0();
    }

    goto LABEL_23;
  }

  if (!*buf)
  {
    return 0;
  }

  *a2 = CFStringGetIntValue(*buf);
LABEL_23:
  if (*buf)
  {
    CFRelease(*buf);
  }

  return v7;
}

uint64_t sub_100585798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 160);
      v10[0] = 68289282;
      v10[1] = 0;
      v11 = 2082;
      v12 = "";
      v13 = 1026;
      v14 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", v10, 0x18u);
    }
  }

  if (*(a1 + 144))
  {
    if (_CTServerConnectionGetLocationAreaCode())
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v6 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "_CTServerConnectionGetLocationAreaCode failed", v10, 2u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_1018CB188();
        return 0;
      }
    }

    else if (_CTServerConnectionGetCellID())
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v9 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "_CTServerConnectionGetCellID failed", v10, 2u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_1018CB26C();
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

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", v10, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1018CB350();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100585A08(CFDictionaryRef *a1, const void **a2)
{
  v27 = 0;
  sub_100005548(v26, *a1);
  v3 = kCTCellMonitorDerivedMCC;
  v4 = sub_1004FEE20(v26);
  if (v4 >= 1)
  {
    v5 = 0;
    v25 = 67240448;
    do
    {
      if (sub_1000052CC(v26, v3, &v27))
      {
        if (qword_1025D48A0 != -1)
        {
          sub_1018C6BA0();
        }

        v6 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109632;
          v35 = v5;
          v36 = 1024;
          v37 = v4;
          v38 = 1024;
          v39 = v27;
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CELL_LOC: Adding MCC %d / %d : %d", buf, 0x14u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018C7228(buf);
          v28 = 67109632;
          v29 = v5;
          v30 = 1024;
          v31 = v4;
          v32 = 1024;
          v33 = v27;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "CELL_LOC: Adding MCC %d / %d : %d", &v28, 20, v25);
          v22 = v21;
          sub_100152C7C("Generic", 1, 0, 2, "static void CLTelephonyService::derivedMccFromMonitorDict(const CFDictionaryRef &, DerivedMccVector &)", "%s\n", v21);
          if (v22 != buf)
          {
            free(v22);
          }
        }

        v8 = a2[1];
        v7 = a2[2];
        if (v8 >= v7)
        {
          v13 = *a2;
          v14 = v8 - *a2;
          v15 = v14 >> 2;
          v16 = (v14 >> 2) + 1;
          if (v16 >> 62)
          {
            sub_10028C64C();
          }

          v17 = v7 - v13;
          if (v17 >> 1 > v16)
          {
            v16 = v17 >> 1;
          }

          v18 = v17 >= 0x7FFFFFFFFFFFFFFCLL;
          v19 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v18)
          {
            v19 = v16;
          }

          if (v19)
          {
            sub_1000B85D0(a2, v19);
          }

          *(4 * v15) = v27;
          v9 = (4 * v15 + 4);
          memcpy(0, v13, v14);
          v20 = *a2;
          *a2 = 0;
          a2[1] = v9;
          a2[2] = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v8 = v27;
          v9 = v8 + 4;
        }

        a2[1] = v9;
      }

      else
      {
        if (qword_1025D48A0 != -1)
        {
          sub_1018C6BA0();
        }

        v10 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
        {
          *buf = v25;
          v35 = v5;
          v36 = 1026;
          v37 = v4;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "CELL_LOC: can't get MCC %{public}d / %{public}d", buf, 0xEu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018C7228(buf);
          v28 = v25;
          v29 = v5;
          v30 = 1026;
          v31 = v4;
          LODWORD(v24) = 14;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "CELL_LOC: can't get MCC %{public}d / %{public}d", &v28, v24);
          v12 = v11;
          sub_100152C7C("Generic", 1, 0, 0, "static void CLTelephonyService::derivedMccFromMonitorDict(const CFDictionaryRef &, DerivedMccVector &)", "%s\n", v11);
          if (v12 != buf)
          {
            free(v12);
          }
        }
      }

      ++v5;
    }

    while (v4 != v5);
  }

  return sub_100005DA4();
}

BOOL sub_100585E1C(uint64_t a1, uint64_t *a2, int a3)
{
  if (qword_1025D48A0 != -1)
  {
    sub_100248B5C();
  }

  v6 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CELL_LOC: getting current serving cell", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CB434();
  }

  cf = 0;
  v7 = a2[1];
  v8 = *a2;
  while (v7 != v8)
  {
    v7 -= 696;
    sub_1000720CC(v7);
  }

  a2[1] = v8;
  if (sub_10006CABC(a1, &cf))
  {
    v9 = sub_10006A604(a2, cf, a3);
  }

  else
  {
    v9 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018C6BA0();
  }

  v10 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 0x66FD0EB66FD0EB67 * ((a2[1] - *a2) >> 3);
    *buf = 134217984;
    v15 = v11;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "CELL_LOC: getting current serving cells %lu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CB520(a2 + 1);
  }

  return v9;
}

uint64_t sub_100586008(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10058ABF4(a1, a2);
  }

  else
  {
    sub_10007AEC8(a1, a2);
    result = v3 + 696;
  }

  a1[1] = result;
  return result;
}

BOOL sub_100586048(id a1, TUCall *a2)
{
  v3 = [(TUCall *)a2 status];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(TUCall *)a2 status]== 2;
  }

  return v3;
}

uint64_t sub_100586090(uint64_t a1, void *a2, void *a3)
{
  *a1 = 0;
  *(a1 + 4) = 0x400000000;
  *(a1 + 12) = 256;
  *(a1 + 14) = 0;
  *(a1 + 16) = 255;
  if (!a3)
  {
    if (qword_1025D4660 != -1)
    {
      sub_1018CB63C();
    }

    v9 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v30) = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,CLCTEmergencyMode,mode,nil", &v30, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CBD2C();
    }

    return a1;
  }

  if (a2)
  {
    v6 = [a2 slotID];
    if (v6 != 1)
    {
      v6 = [a2 slotID];
      if (v6 != 2)
      {
        v6 = [a2 slotID];
        if (v6)
        {
          if (qword_1025D4660 != -1)
          {
            sub_1018CB63C();
          }

          v8 = qword_1025D4668;
          if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
          {
            v30 = 67109120;
            v31 = [a2 slotID];
            _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,CLCTEmergencyMode,InvalidSubscriptionSlot,slot,%d", &v30, 8u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018CB650(a2);
          }

          return a1;
        }
      }
    }

    if (!sub_1000649A0(v6, v7) && [a2 slotID] == 2)
    {
      if (qword_1025D4660 != -1)
      {
        sub_1018CB63C();
      }

      v10 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        v30 = 67109120;
        v31 = [a2 slotID];
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,CLCTEmergencyMode,Unexpected CTSubscriptionSlot Info received %d", &v30, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018CB748(a2);
      }

      return a1;
    }

    v11 = [a2 slotID];
  }

  else
  {
    if (qword_1025D4660 != -1)
    {
      sub_1018CB63C();
    }

    v12 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30) = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#Warning,#ctcl,CLCTEmergencyMode,context,nil", &v30, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CB840();
    }

    v11 = 0;
  }

  if ([a3 type] && objc_msgSend(a3, "type") != 1 && objc_msgSend(a3, "type") != 2 && objc_msgSend(a3, "type") != 3 && objc_msgSend(a3, "type") != 4 && objc_msgSend(a3, "type") != 5)
  {
    if (qword_1025D4660 != -1)
    {
      sub_1018CB924();
    }

    v26 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
    {
      v27 = [a3 type];
      v30 = 67109120;
      v31 = v27;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,CLCTEmergencyMode,InvalidEmergencyMode,emergencyMode,%d", &v30, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CB94C(a3);
    }

    return a1;
  }

  if ([a3 state] && objc_msgSend(a3, "state") != 1 && objc_msgSend(a3, "state") != 2 && objc_msgSend(a3, "state") != 3 && objc_msgSend(a3, "state") != 5 && objc_msgSend(a3, "state") != 4)
  {
    if (qword_1025D4660 != -1)
    {
      sub_1018CB924();
    }

    v28 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
    {
      v29 = [a3 state];
      v30 = 67109120;
      v31 = v29;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,CLCTEmergencyMode,InvalidEmergencyModeState,state,%d", &v30, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CBA44(a3);
    }

    return a1;
  }

  *a1 = [a3 enabled];
  if ([a3 isEmergencyText])
  {
    v13 = 1;
  }

  else
  {
    v13 = [a3 isStewieActive];
  }

  *(a1 + 12) = v13;
  *(a1 + 13) = [a3 isEmergencySetup];
  v14 = [a3 isStewieActive];
  *(a1 + 14) = v14;
  if (sub_1000649A0(v14, v15))
  {
    if ((v11 - 1) > 1)
    {
      v16 = 255;
    }

    else
    {
      v16 = v11 != 1;
    }
  }

  else if (v11 == 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = 255;
  }

  *(a1 + 16) = v16;
  v17 = [a3 type];
  if (v17 > 2)
  {
    switch(v17)
    {
      case 3:
        v18 = 3;
        goto LABEL_75;
      case 4:
        v18 = 4;
        goto LABEL_75;
      case 5:
        v18 = 5;
        goto LABEL_75;
    }

LABEL_67:
    if (qword_1025D4660 != -1)
    {
      sub_1018CB924();
    }

    v19 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
    {
      v20 = [a3 type];
      v30 = 67109120;
      v31 = v20;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,CLCTEmergencyMode,InvalidEmergencyModeType,%d", &v30, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CBB3C(a3);
    }

    goto LABEL_76;
  }

  if (v17)
  {
    if (v17 == 1)
    {
      v18 = 1;
      goto LABEL_75;
    }

    if (v17 == 2)
    {
      v18 = 2;
LABEL_75:
      *(a1 + 4) = v18;
      goto LABEL_76;
    }

    goto LABEL_67;
  }

  *(a1 + 4) = 0;
LABEL_76:
  v21 = [a3 state];
  if (v21 > 2)
  {
    switch(v21)
    {
      case 3:
        v22 = 3;
        goto LABEL_95;
      case 4:
        v22 = 5;
        goto LABEL_95;
      case 5:
        v22 = 4;
        goto LABEL_95;
    }
  }

  else
  {
    switch(v21)
    {
      case 0:
        *(a1 + 8) = 0;
        return a1;
      case 1:
        v22 = 1;
        goto LABEL_95;
      case 2:
        v22 = 2;
LABEL_95:
        *(a1 + 8) = v22;
        return a1;
    }
  }

  if (qword_1025D4660 != -1)
  {
    sub_1018CB924();
  }

  v23 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
  {
    v24 = [a3 state];
    v30 = 67109120;
    v31 = v24;
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "#ctcl,#cterror,CLCTEmergencyMode,InvalidEmergencyModeState,%d", &v30, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018CBC34(a3);
  }

  return a1;
}

uint64_t sub_10058679C(uint64_t a1, const __CFDictionary *a2)
{
  *a1 = 0;
  *(a1 + 4) = 0x400000000;
  *(a1 + 12) = 256;
  *(a1 + 14) = 0;
  *(a1 + 16) = 255;
  sub_100005548(v19, a2);
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  if (!sub_10001CBC0(v19, @"kEmergencyModeEnabledKey", &v16 + 1) || !sub_10001CBC0(v19, @"kEmergencyTextKey", &v16) || !sub_1000052CC(v19, @"kSimInstanceKey", &v18) || !sub_1000052CC(v19, @"kEmergencyModeKey", &v18 + 1) || !sub_1000052CC(v19, @"kEmergencyModeStateKey", &v17) || !sub_10001CBC0(v19, @"kIsStewieActiveKey", &v15) || (sub_10001CBC0(v19, @"kEmergencySetupKey", &v15 + 1) & 1) == 0)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v7 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#clct,CLCTEmergencyMode, couldn't get value for  sim or  CLCTEmergencyMode", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_22;
    }

    sub_1018C7FE4(buf);
    LOWORD(v20) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTEmergencyMode, couldn't get value for  sim or  CLCTEmergencyMode", &v20, 2);
    v6 = v14;
    sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTEmergencyMode::CLCTEmergencyMode(CFDictionaryRef)", "%s\n", v14);
    goto LABEL_38;
  }

  v3 = v18;
  if (v18 >= 2 && v18 != 255)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v12 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v23 = v18;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "#clct,CLCTEmergencyMode,InvalidSim,%d", buf, 8u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_22;
    }

    sub_1018C7FE4(buf);
    v20 = 67109120;
    v21 = v18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTEmergencyMode,InvalidSim,%d", &v20);
    v6 = v13;
    sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTEmergencyMode::CLCTEmergencyMode(CFDictionaryRef)", "%s\n", v13);
    goto LABEL_38;
  }

  if (HIDWORD(v18) < 6)
  {
    v9 = v17;
    if (v17 < 6)
    {
      *(a1 + 4) = HIDWORD(v18);
      *(a1 + 8) = v9;
      *a1 = HIBYTE(v16);
      *(a1 + 12) = v16;
      *(a1 + 16) = v3;
      *(a1 + 13) = HIBYTE(v15);
      *(a1 + 14) = v15;
      goto LABEL_22;
    }

    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v10 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v23 = v17;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "#clct,CLCTEmergencyMode, Unexpected CLCTEmergencyModeState received %d", buf, 8u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_22;
    }

    sub_1018C7FE4(buf);
    v20 = 67109120;
    v21 = v17;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTEmergencyMode, Unexpected CLCTEmergencyModeState received %d", &v20);
    v6 = v11;
    sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTEmergencyMode::CLCTEmergencyMode(CFDictionaryRef)", "%s\n", v11);
LABEL_38:
    if (v6 != buf)
    {
      free(v6);
    }

    goto LABEL_22;
  }

  if (qword_1025D4870 != -1)
  {
    sub_1018C8028();
  }

  v4 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v23 = HIDWORD(v18);
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#clct,CLCTEmergencyMode, Unexpected CLCTEmergencyModeType received %d", buf, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018C7FE4(buf);
    v20 = 67109120;
    v21 = HIDWORD(v18);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTEmergencyMode, Unexpected CLCTEmergencyModeType received %d", &v20);
    v6 = v5;
    sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTEmergencyMode::CLCTEmergencyMode(CFDictionaryRef)", "%s\n", v5);
    goto LABEL_38;
  }

LABEL_22:
  sub_100005DA4();
  return a1;
}

NSDictionary *sub_100586DA8(unsigned __int8 *a1)
{
  v3[0] = @"kEmergencyModeEnabledKey";
  v4[0] = [NSNumber numberWithBool:*a1];
  v3[1] = @"kEmergencyTextKey";
  v4[1] = [NSNumber numberWithBool:a1[12]];
  v3[2] = @"kSimInstanceKey";
  v4[2] = [NSNumber numberWithInt:*(a1 + 4)];
  v3[3] = @"kEmergencyModeKey";
  v4[3] = [NSNumber numberWithInt:*(a1 + 1)];
  v3[4] = @"kEmergencyModeStateKey";
  v4[4] = [NSNumber numberWithInt:*(a1 + 2)];
  v3[5] = @"kIsStewieActiveKey";
  v4[5] = [NSNumber numberWithBool:a1[14]];
  v3[6] = @"kEmergencySetupKey";
  v4[6] = [NSNumber numberWithBool:a1[13]];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:7];
}

void *sub_100586EDC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 4);
  if (v4 > 5)
  {
    v5 = "UnknownMode";
  }

  else
  {
    v5 = (&off_1024607B0)[v4];
  }

  return sub_10000EC00(a2, v5);
}

void *sub_100586F0C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  if (v4 > 5)
  {
    v5 = "UnknownModeState";
  }

  else
  {
    v5 = (&off_1024607E0)[v4];
  }

  return sub_10000EC00(a2, v5);
}

uint64_t sub_100586F3C(uint64_t a1)
{
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

uint64_t sub_100586F90(uint64_t a1, unsigned int a2, void *a3, void *a4)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (a3)
  {
    sub_100006044(a1, [a3 UTF8String]);
  }

  if (a4)
  {
    sub_100006044((a1 + 24), [a4 UTF8String]);
  }

  if (a2 != 255)
  {
    v7 = [CTXPCServiceSubscriptionContext alloc];
    v9 = sub_1000649A0(v7, v8);
    v10 = 1;
    if (a2)
    {
      v10 = 2;
    }

    if (a2 > 1)
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = a2 == 0;
    }

    v12 = [v7 initWithSlot:v11];
    sub_100006044((a1 + 48), [objc_msgSend(objc_msgSend(v12 "uuid")]);
  }

  return a1;
}

uint64_t sub_100587084(uint64_t a1, const __CFDictionary *a2)
{
  *(a1 + 48) = 0u;
  v3 = (a1 + 48);
  *(a1 + 64) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_100005548(v13, a2);
  if (!sub_100005050(v13, @"kImsiKey", a1))
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v7 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#clct,CLCTMobileEquipmentInfo, couldn't get value for imsi", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_21;
    }

    sub_1018C7FE4(buf);
    v12[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTMobileEquipmentInfo, couldn't get value for imsi", v12, 2);
    v6 = v8;
    sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTMobileEquipmentInfo::CLCTMobileEquipmentInfo(CFDictionaryRef)", "%s\n", v8);
LABEL_23:
    if (v6 != buf)
    {
      free(v6);
    }

    goto LABEL_21;
  }

  if (!sub_100005050(v13, @"kImeiKey", (a1 + 24)))
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v9 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "#clct,CLCTMobileEquipmentInfo, couldn't get value for imei", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_21;
    }

    sub_1018C7FE4(buf);
    v12[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTMobileEquipmentInfo, couldn't get value for imei", v12, 2);
    v6 = v11;
    sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTMobileEquipmentInfo::CLCTMobileEquipmentInfo(CFDictionaryRef)", "%s\n", v11);
    goto LABEL_23;
  }

  if (!sub_100005050(v13, @"kUuidKey", v3))
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#clct,CLCTMobileEquipmentInfo, couldn't get value for uuid", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C7FE4(buf);
      v12[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTMobileEquipmentInfo, couldn't get value for uuid", v12, 2);
      v6 = v5;
      sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTMobileEquipmentInfo::CLCTMobileEquipmentInfo(CFDictionaryRef)", "%s\n", v5);
      goto LABEL_23;
    }
  }

LABEL_21:
  sub_100005DA4();
  return a1;
}

void sub_100587430(_Unwind_Exception *a1)
{
  sub_100005DA4();
  if (*(v1 + 71) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

NSDictionary *sub_100587494(uint64_t *a1)
{
  v6[0] = @"kImeiKey";
  v2 = a1 + 3;
  if (*(a1 + 47) < 0)
  {
    v2 = *v2;
  }

  v7[0] = [NSString stringWithUTF8String:v2];
  v6[1] = @"kImsiKey";
  v3 = a1;
  if (*(a1 + 23) < 0)
  {
    v3 = *a1;
  }

  v7[1] = [NSString stringWithUTF8String:v3];
  v6[2] = @"kUuidKey";
  v4 = a1 + 6;
  if (*(a1 + 71) < 0)
  {
    v4 = *v4;
  }

  v7[2] = [NSString stringWithUTF8String:v4];
  return [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];
}

std::string *sub_10058757C(std::string *a1, void *a2)
{
  *(sub_10000EC00(a1, "") + 6) = 0;
  if (a2)
  {
    if ([a2 registrationDisplayStatus])
    {
      sub_100006044(a1, [objc_msgSend(a2 "registrationDisplayStatus")]);
    }

    a1[1].__r_.__value_.__s.__data_[0] = [a2 isInHomeCountry];
    a1[1].__r_.__value_.__s.__data_[1] = [a2 changedDueToSimRemoval];
    a1[1].__r_.__value_.__s.__data_[2] = [a2 isRegistrationForcedHome];
    a1[1].__r_.__value_.__s.__data_[3] = [a2 isSatelliteSystem];
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
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#clct,CLCTRegistrationDisplayStatus, status is null", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C7FE4(buf);
      v8[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTRegistrationDisplayStatus, status is null", v8, 2);
      v7 = v6;
      sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTRegistrationDisplayStatus::CLCTRegistrationDisplayStatus(CTRegistrationDisplayStatus *)", "%s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  return a1;
}

void sub_100587744(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_10058776C(std::string *a1, const __CFDictionary *a2)
{
  v4 = sub_10000EC00(a1, "");
  *(v4 + 6) = 0;
  v5 = (v4 + 3);
  sub_100005548(v19, a2);
  if (!sub_100005050(v19, @"kRegistrationStatusKey", a1))
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v9 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "#clct,CLCTRegistrationDisplayStatus, couldn't get value for registrationDisplayStatus", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_35;
    }

    sub_1018C7FE4(buf);
    v18[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTRegistrationDisplayStatus, couldn't get value for registrationDisplayStatus", v18, 2);
    v8 = v10;
    sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTRegistrationDisplayStatus::CLCTRegistrationDisplayStatus(CFDictionaryRef)", "%s\n", v10);
LABEL_37:
    if (v8 != buf)
    {
      free(v8);
    }

    goto LABEL_35;
  }

  if ((sub_10001CBC0(v19, @"kRegistrationInHomeCountryKey", v5) & 1) == 0)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v11 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "#clct,CLCTRegistrationDisplayStatus, couldn't get value for isInHomeCountry", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_35;
    }

    sub_1018C7FE4(buf);
    v18[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTRegistrationDisplayStatus, couldn't get value for isInHomeCountry", v18, 2);
    v8 = v12;
    sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTRegistrationDisplayStatus::CLCTRegistrationDisplayStatus(CFDictionaryRef)", "%s\n", v12);
    goto LABEL_37;
  }

  if ((sub_10001CBC0(v19, @"kRegistrationChangedDueToSimRemovalKey", v5 + 1) & 1) == 0)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v13 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "#clct,CLCTRegistrationDisplayStatus, couldn't get value for changedDueToSimRemoval", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_35;
    }

    sub_1018C7FE4(buf);
    v18[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTRegistrationDisplayStatus, couldn't get value for changedDueToSimRemoval", v18, 2);
    v8 = v14;
    sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTRegistrationDisplayStatus::CLCTRegistrationDisplayStatus(CFDictionaryRef)", "%s\n", v14);
    goto LABEL_37;
  }

  if ((sub_10001CBC0(v19, @"kRegistrationIsForcedRegisteredHomeKey", v5 + 2) & 1) == 0)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v15 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "#clct,CLCTRegistrationDisplayStatus, couldn't get value for isRegistrationForcedHome", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_35;
    }

    sub_1018C7FE4(buf);
    v18[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTRegistrationDisplayStatus, couldn't get value for isRegistrationForcedHome", v18, 2);
    v8 = v17;
    sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTRegistrationDisplayStatus::CLCTRegistrationDisplayStatus(CFDictionaryRef)", "%s\n", v17);
    goto LABEL_37;
  }

  if ((sub_10001CBC0(v19, @"kRegsitrationOnSatelliteSystemKey", v5 + 3) & 1) == 0)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v6 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#clct,CLCTRegistrationDisplayStatus, couldn't get value for isSatelliteSystem", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C7FE4(buf);
      v18[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTRegistrationDisplayStatus, couldn't get value for isSatelliteSystem", v18, 2);
      v8 = v7;
      sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTRegistrationDisplayStatus::CLCTRegistrationDisplayStatus(CFDictionaryRef)", "%s\n", v7);
      goto LABEL_37;
    }
  }

LABEL_35:
  sub_100005DA4();
  return a1;
}

void sub_100587D1C(_Unwind_Exception *a1)
{
  sub_100005DA4();
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

NSDictionary *sub_100587D68(uint64_t *a1)
{
  v4[0] = @"kRegistrationStatusKey";
  v2 = a1;
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;
  }

  v5[0] = [NSString stringWithUTF8String:v2];
  v4[1] = @"kRegistrationInHomeCountryKey";
  v5[1] = [NSNumber numberWithBool:*(a1 + 24)];
  v4[2] = @"kRegistrationChangedDueToSimRemovalKey";
  v5[2] = [NSNumber numberWithBool:*(a1 + 25)];
  v4[3] = @"kRegistrationIsForcedRegisteredHomeKey";
  v5[3] = [NSNumber numberWithBool:*(a1 + 26)];
  v4[4] = @"kRegsitrationOnSatelliteSystemKey";
  v5[4] = [NSNumber numberWithBool:*(a1 + 27)];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:5];
}

uint64_t sub_100587E74(uint64_t a1, int a2)
{
  v4 = a2 + 2;
  if (a2 + 2) < 0xD && ((0x1EF7u >> v4))
  {
    return dword_101C7F440[v4];
  }

  v8 = v2;
  v9 = v3;
  if (qword_1025D4870 != -1)
  {
    sub_1018C7FD0();
  }

  v6 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, invalid value for CTWirelessAccessTechnology", v7, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018CBE10();
  }

  return 4294967294;
}

uint64_t sub_100587F38(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 >= 0x12)
  {
    if (a2 == 18)
    {
      v2 = 18;
    }

    else
    {
      v2 = 0;
    }

    if (qword_1025D4870 != -1)
    {
      sub_1018C7FD0();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, invalid value for CTDataIndicatorStatus", v5, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CBEF4();
    }
  }

  return v2;
}

uint64_t sub_100587FE4(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = -2;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (a2)
  {
    *a1 = [a2 attached];
    *(a1 + 12) = [a2 roamAllowed];
    *(a1 + 20) = [a2 dataPlanSignalingReductionOverride];
    *(a1 + 21) = [a2 cellularDataPossible];
    *(a1 + 24) = [a2 activeContexts];
    *(a1 + 28) = [a2 totalActiveContexts];
    *(a1 + 32) = [a2 inHomeCountry];
    v4 = [a2 radioTechnology];
    *(a1 + 16) = sub_100587E74(v4, v4);
    v5 = [a2 indicator];
    *(a1 + 4) = sub_100587F38(v5, v5);
    v6 = [a2 indicatorOverride];
    *(a1 + 8) = sub_100587F38(v6, v6);
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C7FD0();
    }

    v7 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, status is null", v9, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CBFD8();
    }
  }

  return a1;
}

uint64_t sub_10058813C(uint64_t a1, const __CFDictionary *a2)
{
  *(a1 + 4) = 0;
  v3 = (a1 + 4);
  *(a1 + 12) = 0;
  v4 = (a1 + 12);
  *a1 = 0;
  *(a1 + 16) = -2;
  *(a1 + 20) = 0;
  v5 = (a1 + 20);
  *(a1 + 24) = 0;
  v6 = (a1 + 24);
  *(a1 + 32) = 0;
  v7 = (a1 + 32);
  sub_100005548(v33, a2);
  if (sub_10001CBC0(v33, @"kDataAttachedKey", a1))
  {
    v32[0] = 0;
    if (sub_1000052CC(v33, @"kDataIndicatorKey", v32))
    {
      *v3 = v32[0];
      v31[0] = 0;
      if (sub_1000052CC(v33, @"kDataIndicatorOverrideKey", v31))
      {
        *(a1 + 8) = v31[0];
        if (sub_10001CBC0(v33, @"kDataRoamAllowedKey", v4))
        {
          v30[0] = 0;
          if (sub_1000052CC(v33, @"kDataRadioAccessTechnologyKey", v30))
          {
            *(a1 + 16) = v30[0];
            if (sub_10001CBC0(v33, @"kDataPlanSignalingReductionOverrideKey", v5))
            {
              if (sub_10001CBC0(v33, @"kDataCellularDataPossibleKey", (a1 + 21)))
              {
                if (sub_1004FB850(v33, @"kDataActiveContextsKey", v6))
                {
                  if (sub_1004FB850(v33, @"kDataTotalActiveContextsKey", (a1 + 28)))
                  {
                    if ((sub_10001CBC0(v33, @"kDataInHomeCountryKey", v7) & 1) == 0)
                    {
                      if (qword_1025D4870 != -1)
                      {
                        sub_1018C8028();
                      }

                      v8 = qword_1025D4878;
                      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, couldn't get value for totalActiveContexts", buf, 2u);
                      }

                      if (sub_10000A100(121, 0))
                      {
LABEL_71:
                        sub_1018C7FE4(buf);
                        v29[0] = 0;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTDataStatus, couldn't get value for totalActiveContexts", v29, 2);
                        v11 = v28;
                        sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTDataStatus::CLCTDataStatus(CFDictionaryRef)", "%s\n", v28);
LABEL_72:
                        if (v11 != buf)
                        {
                          free(v11);
                        }
                      }
                    }
                  }

                  else
                  {
                    if (qword_1025D4870 != -1)
                    {
                      sub_1018C8028();
                    }

                    v26 = qword_1025D4878;
                    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, couldn't get value for totalActiveContexts", buf, 2u);
                    }

                    if (sub_10000A100(121, 0))
                    {
                      goto LABEL_71;
                    }
                  }
                }

                else
                {
                  if (qword_1025D4870 != -1)
                  {
                    sub_1018C8028();
                  }

                  v24 = qword_1025D4878;
                  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, couldn't get value for activeContexts", buf, 2u);
                  }

                  if (sub_10000A100(121, 0))
                  {
                    sub_1018C7FE4(buf);
                    v29[0] = 0;
                    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTDataStatus, couldn't get value for activeContexts", v29, 2);
                    v11 = v25;
                    sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTDataStatus::CLCTDataStatus(CFDictionaryRef)", "%s\n", v25);
                    goto LABEL_72;
                  }
                }
              }

              else
              {
                if (qword_1025D4870 != -1)
                {
                  sub_1018C8028();
                }

                v22 = qword_1025D4878;
                if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, couldn't get value for cellularDataPossible", buf, 2u);
                }

                if (sub_10000A100(121, 0))
                {
                  sub_1018C7FE4(buf);
                  v29[0] = 0;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTDataStatus, couldn't get value for cellularDataPossible", v29, 2);
                  v11 = v23;
                  sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTDataStatus::CLCTDataStatus(CFDictionaryRef)", "%s\n", v23);
                  goto LABEL_72;
                }
              }
            }

            else
            {
              if (qword_1025D4870 != -1)
              {
                sub_1018C8028();
              }

              v20 = qword_1025D4878;
              if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, couldn't get value for dataPlanSignalingReductionOverride", buf, 2u);
              }

              if (sub_10000A100(121, 0))
              {
                sub_1018C7FE4(buf);
                v29[0] = 0;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTDataStatus, couldn't get value for dataPlanSignalingReductionOverride", v29, 2);
                v11 = v21;
                sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTDataStatus::CLCTDataStatus(CFDictionaryRef)", "%s\n", v21);
                goto LABEL_72;
              }
            }
          }

          else
          {
            if (qword_1025D4870 != -1)
            {
              sub_1018C8028();
            }

            v18 = qword_1025D4878;
            if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, couldn't get value for radioTechnologyType", buf, 2u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_1018C7FE4(buf);
              v29[0] = 0;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTDataStatus, couldn't get value for radioTechnologyType", v29, 2);
              v11 = v19;
              sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTDataStatus::CLCTDataStatus(CFDictionaryRef)", "%s\n", v19);
              goto LABEL_72;
            }
          }
        }

        else
        {
          if (qword_1025D4870 != -1)
          {
            sub_1018C8028();
          }

          v16 = qword_1025D4878;
          if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, couldn't get value for roamAllowed", buf, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018C7FE4(buf);
            LOWORD(v30[0]) = 0;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTDataStatus, couldn't get value for roamAllowed", v30, 2);
            v11 = v17;
            sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTDataStatus::CLCTDataStatus(CFDictionaryRef)", "%s\n", v17);
            goto LABEL_72;
          }
        }
      }

      else
      {
        if (qword_1025D4870 != -1)
        {
          sub_1018C8028();
        }

        v14 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, couldn't get value for indicatorOverrideType", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018C7FE4(buf);
          LOWORD(v30[0]) = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTDataStatus, couldn't get value for indicatorOverrideType", v30, 2);
          v11 = v15;
          sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTDataStatus::CLCTDataStatus(CFDictionaryRef)", "%s\n", v15);
          goto LABEL_72;
        }
      }
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_1018C8028();
      }

      v12 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, couldn't get value for indicatorType", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C7FE4(buf);
        LOWORD(v31[0]) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTDataStatus, couldn't get value for indicatorType", v31, 2);
        v11 = v13;
        sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTDataStatus::CLCTDataStatus(CFDictionaryRef)", "%s\n", v13);
        goto LABEL_72;
      }
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C8028();
    }

    v9 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "#clct,CLCTDataStatus, couldn't get value for attached", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C7FE4(buf);
      LOWORD(v32[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#clct,CLCTDataStatus, couldn't get value for attached", v32, 2);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "CLTelephonyService_Type::CLCTDataStatus::CLCTDataStatus(CFDictionaryRef)", "%s\n", v10);
      goto LABEL_72;
    }
  }

  sub_100005DA4();
  return a1;
}
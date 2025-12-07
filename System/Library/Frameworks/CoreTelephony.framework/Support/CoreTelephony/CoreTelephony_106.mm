void sub_1006DD874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_1006DE130(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [CLLocationManager alloc];
  v3 = [NSBundle bundleWithIdentifier:*v1[1]];
  v4 = [v2 initWithEffectiveBundle:v3 delegate:**v1 onQueue:*(**v1 + 32)];
  v5 = **v1;
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;

  [*(**v1 + 16) setDelegate:?];
  if (*v1[2] == 1)
  {
    v7 = &CLLocationDistanceMax;
  }

  else
  {
    v7 = &kCLDistanceFilterNone;
  }

  [*(**v1 + 16) setDistanceFilter:*v7];
  v8 = *v1[3];
  if (v8 >= 7)
  {
    v9 = &kCLLocationAccuracyNearestTenMeters;
  }

  else
  {
    v9 = *(&off_101E73748 + v8);
  }

  v10 = *v9;
  v11 = *(**v1 + 16);

  return [v11 setDesiredAccuracy:v10];
}

id **sub_1006DE250(id **a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {

    operator delete();
  }

  return a1;
}

id **sub_1006DE2A8(uint64_t a1)
{
  v15 = a1;
  if (*(*a1 + 24))
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *(a1 + 24);
    v5 = [CLCircularRegion alloc];
    v6 = CLLocationCoordinate2DMake(v3, v2);
    v7 = [v5 initWithCenter:*(a1 + 32) radius:v6.latitude identifier:{v6.longitude, v4}];
    v8 = fabs(v3);
    v9 = v8 > 90.0;
    if (v8 > 90.0 && os_log_type_enabled(**(*a1 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10177A9C4();
    }

    if (fabs(v2) > 180.0)
    {
      if (os_log_type_enabled(**(*a1 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_10177A9F8();
      }

      v9 = 1;
    }

    if (v4 <= 0.0)
    {
      if (os_log_type_enabled(**(*a1 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_10177AA2C();
      }
    }

    else
    {
      v10 = !v9;
      if (!v7)
      {
        v10 = 0;
      }

      if (v10)
      {
        [v7 setEmergency:0];
        [*(*a1 + 16) startMonitoringForRegion:v7];
LABEL_22:

        return sub_1006DE250(&v15);
      }
    }

    v11 = *a1;
    v12 = **(*a1 + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to setup Circular geofence", __p, 2u);
      v11 = *a1;
    }

    v13 = v11[3];
    sub_10000501C(__p, [*(a1 + 32) UTF8String]);
    (**v13)(v13, __p);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_22;
  }

  if (os_log_type_enabled(**(*a1 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_10177A928();
  }

  return sub_1006DE250(&v15);
}

void sub_1006DE4F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1006DE250(&a10);
  _Unwind_Resume(a1);
}

void sub_1006DE534(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(*v2 + 3))
  {
    v3 = objc_alloc_init(NSMutableArray);
    v5 = v2[1];
    v4 = v2[2];
    if (v4 == v5)
    {
      if (os_log_type_enabled(**(*v2 + 1), OS_LOG_TYPE_ERROR))
      {
        sub_10177AA60();
      }

      v12 = 0;
    }

    else
    {
      do
      {
        v6 = *v5;
        v7 = v5[1];
        v8 = [_CLVertex alloc];
        v9 = CLLocationCoordinate2DMake(v6, v7);
        v10 = [v8 initWithCoordinate:{v9.latitude, v9.longitude}];
        [v3 addObject:v10];

        v5 += 2;
      }

      while (v5 != v4);
      v11 = [[_CLPolygonalRegion alloc] initWithVertices:v3 identifier:v2[4]];
      v12 = v11;
      if (v11)
      {
        [v11 setEmergency:0];
        [*(*v2 + 2) startMonitoringForRegion:v12];
        v13 = v12;
      }

      else
      {
        v14 = *v2;
        v15 = **(*v2 + 1);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          LOWORD(__p[0]) = 0;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to setup Polygonal geofence", __p, 2u);
          v14 = *v2;
        }

        v16 = v14[3];
        sub_10000501C(__p, [v2[4] UTF8String]);
        (**v16)(v16, __p);
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(**(*v2 + 1), OS_LOG_TYPE_ERROR))
    {
      sub_10177A928();
    }

    v12 = 0;
  }

  v17 = *(a1 + 32);
  v18 = *v17;
  *v17 = v12;
}

void sub_1006DE75C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id **sub_1006DE7A0(uint64_t a1)
{
  v2 = a1;
  if (*(*a1 + 16))
  {
    [*(*a1 + 16) stopMonitoringForRegion:*(a1 + 8)];
  }

  else if (os_log_type_enabled(**(*a1 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_10177AA94();
  }

  return sub_100125E4C(&v2);
}

void sub_1006DE810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100125E4C(va);
  _Unwind_Resume(a1);
}

id **sub_1006DE824(id *a1)
{
  v15 = a1;
  v2 = [*(*a1 + 2) monitoredRegions];
  v14 = v2;
  if (v2)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v4)
    {
      v5 = *v17;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v17 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v16 + 1) + 8 * i);
          if (v7)
          {
            v8 = *a1;
            v9 = **(*a1 + 1);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v21 = v7;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Stopping monitoring for: %@", buf, 0xCu);
              v8 = *a1;
            }

            [v8[2] stopMonitoringForRegion:v7];
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v4);
    }

    v10 = **(*a1 + 1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "#I Resetted Monitored Regions";
      v12 = buf;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
    }
  }

  else
  {
    v10 = **(*a1 + 1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      v11 = "#I No actively monitored regions...";
      v12 = v22;
      goto LABEL_17;
    }
  }

  return sub_1000A51E4(&v15);
}

void sub_1006DEA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_1000A51E4(va);
  _Unwind_Resume(a1);
}

id **sub_1006DEA84(id *a1)
{
  v4 = a1;
  v1 = *a1;
  v2 = *(*a1 + 2);
  if (v2)
  {
    [v2 requestLocation];
  }

  else if (os_log_type_enabled(*v1[1], OS_LOG_TYPE_ERROR))
  {
    sub_10177AA94();
  }

  return sub_1000A51E4(&v4);
}

void sub_1006DEAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000A51E4(va);
  _Unwind_Resume(a1);
}

void sub_1006DEB00()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1006DEB28(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  sub_1006DFC78(&v10, a1 + 40);
  if (*(&v11 + 1))
  {
    v2 = *(a1 + 24);
    v3 = *(a1 + 16);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3321888768;
    v7[2] = sub_1006DEC8C;
    v7[3] = &unk_101E737B8;
    v4 = v2;
    v8 = v4;
    sub_1006DFC78(v9, &v10);
    [v3 updateConfiguration:v7];
    sub_1006DFBF8(v9);
  }

  else
  {
    v5 = **(a1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10177AAC8(v5);
    }
  }

  return sub_1006DFBF8(&v10);
}

void sub_1006DEC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_1006DFBF8(v19 + 40);

  sub_1006DFBF8(va);
  _Unwind_Resume(a1);
}

void sub_1006DEC8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RBSProcessStateDescriptor descriptor];
  [v4 setValues:1];
  v17 = @"com.apple.frontboard.visibility";
  v5 = [NSArray arrayWithObjects:&v17 count:1];
  [v4 setEndowmentNamespaces:v5];

  [v3 setServiceClass:25];
  [v3 setStateDescriptor:v4];
  v6 = *(a1 + 32);
  v7 = +[RBSProcessPredicate predicateMatchingProcessTypeApplication];
  v18 = v7;
  v8 = [NSArray arrayWithObjects:&v18 count:1];
  v9 = [v8 mutableCopy];

  if ([v6 count])
  {
    v10 = [RBSProcessPredicate predicateMatchingBundleIdentifiers:v6];
    [v9 addObject:v10];
  }

  v11 = [v9 copy];
  v12 = [RBSProcessPredicate predicateMatchingAnyPredicate:v11];

  v16 = v12;
  v13 = [NSArray arrayWithObjects:&v16 count:1];
  [v3 setPredicates:v13];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3321888768;
  v14[2] = sub_1006DEF60;
  v14[3] = &unk_101E73780;
  sub_1006DFC78(v15, a1 + 40);
  [v3 setUpdateHandler:v14];
  sub_1006DFBF8(v15);
}

void sub_1006DEF60(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v6 = a4;
  if (*(a1 + 56))
  {
    sub_1006DEFE4(a1 + 32, v7, v6);
  }
}

void sub_1006DEFE4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  v5 = *(a1 + 24);
  if (!v5)
  {
    sub_100022DB4();
  }

  (*(*v5 + 48))(v5, &v7, &v6);
}

void sub_1006DF0B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 24) containsObject:v3];
  v5 = **(a1 + 32);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Already monitoring launch angel: %@", &v7, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Will start monitoring launch angel: %@", &v7, 0xCu);
    }

    [*(a1 + 24) addObject:v3];
    sub_1006DEB28(a1);
  }
}

void sub_1006DF1E0(uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  operator new();
}

void sub_1006DF30C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12)
{
  if (a12)
  {
    sub_101760EE4(a12);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006DF43C(void *a1, void *a2, uint64_t *a3)
{
  ctu::OsLogContext::OsLogContext(&v6, kCtLoggingSystemName, "app.state");
  sub_1006DF648(a1 + 1, "ApplicationStateMonitor", QOS_CLASS_UTILITY, &v6);
  ctu::OsLogContext::~OsLogContext(&v6);
  *a1 = off_101E737F8;
  a1[6] = *a2;
  v5 = a2[1];
  a1[7] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1006DF5A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    dispatch_release(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1006DF6E8(v19 + 8);
  v21 = v19[7];
  if (v21)
  {
    sub_100004A34(v21);
  }

  ctu::OsLogLogger::~OsLogLogger((v19 + 5));
  sub_1000C0544(v19 + 1);
  _Unwind_Resume(a1);
}

void *sub_1006DF648(void *a1, const char *a2, dispatch_qos_class_t a3, const OsLogContext *a4)
{
  object = 0;
  sub_1000B9CE0(a1, a2, a3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  ctu::OsLogLogger::OsLogLogger(&object, a4);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), &object);
  ctu::OsLogLogger::~OsLogLogger(&object);
  return a1;
}

void sub_1006DF6B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  ctu::OsLogLogger::~OsLogLogger(&object);
  sub_1000C0544(v10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1006DF6E8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1006DFBF8(v1 + 40);

    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return a1;
}

void *sub_1006DF754(void *a1)
{
  *a1 = off_101E737F8;
  v2 = a1[10];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1006DF6E8(a1 + 8);
  v3 = a1[7];
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);
  return a1;
}

void sub_1006DF7C8(void *a1)
{
  sub_1006DF754(a1);

  operator delete();
}

void sub_1006DF800(NSObject *a1, int a2, ServiceStage *this)
{
  if (a2 == 2)
  {
    group[0] = a1;
    ServiceStage::holdOffStage(&group[1], this);
    v5[0] = 0;
    v5[1] = 0;
    sub_100004AA0(v5, &a1[1].isa);
    operator new();
  }
}

void sub_1006DF9D4(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

BOOL sub_1006DFAC8(uint64_t a1, uint64_t *a2)
{
  v3 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = [NSString stringWithUTF8String:v4];
  v6 = [RBSProcessPredicate predicateMatchingBundleIdentifier:v5];
  v13 = 0;
  v7 = [RBSProcessHandle handleForPredicate:v6 error:&v13];
  v8 = v13;

  v9 = 0;
  if (!v8 && v7)
  {
    v10 = [v7 currentState];
    v11 = sub_1000050D4(v10);

    v9 = (v11 - 3) < 2;
  }

  objc_autoreleasePoolPop(v3);
  return v9;
}

uint64_t sub_1006DFBF8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1006DFC78(uint64_t a1, uint64_t a2)
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

void sub_1006DFD90(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1006DFE64);
  __cxa_rethrow();
}

void sub_1006DFDD0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1006DFE24(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006DFE64(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1006DFE90(ServiceManager::Service *this)
{
  *this = off_101E73920;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1006DFEEC(ServiceManager::Service *this)
{
  *this = off_101E73920;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_1006DFF6C@<X0>(uint64_t *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1006DFFB0(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
    sub_1006DF9D4(v2, &v4);
  }

  sub_1006DF9D4(v2, &v4);
}

void sub_1006E0080(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E739A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

id sub_1006E0120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [RBSProcessHandle handleForIdentifier:a2 error:a3];

  return v3;
}

id sub_1006E015C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [RBSProcessHandle handleForPredicate:a2 error:a3];

  return v3;
}

void *sub_1006E0198(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  a1[2] = (*(**a1 + 16))(*a1);
  a1[3] = objc_opt_new();
  a1[4] = a3;
  a1[8] = 0;
  return a1;
}

void sub_1006E0210(_Unwind_Exception *a1)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1006E0238(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  ctu::RestModule::disconnect((v2 + 72));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_1006E02BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1006E02D8(uint64_t a1)
{
  v1 = a1;
  [*(*(**a1 + 64) + 16) invalidate];
  operator delete();
}

void sub_1006E0360(uint64_t **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  *buf = sub_100016B10;
  v7 = 0;
  sub_1006E054C(v2 + 72, v2, buf);
}

void sub_1006E04F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1006E0628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1002C2508(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1006E06D8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E73A40;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1006E0710(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1006E075C(void *a1)
{
  *a1 = off_101E73AC0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1006E07A8(void *a1)
{
  *a1 = off_101E73AC0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1006E0888(uint64_t result, uint64_t a2)
{
  *a2 = off_101E73AC0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1006E08C8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1006E08D8(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1006E0918(void *a1, id *a2, void **a3)
{
  v4 = *a3;
  v5 = *a2;
  v6 = v4;
  v7 = a1[3];
  if (v7)
  {
    v8 = a1[1];
    v9 = std::__shared_weak_count::lock(v7);
    if (v9)
    {
      if (a1[2])
      {
        v10 = v5;
        v11 = v6;
        v12[0] = 0;
        v12[1] = 0;
        sub_100004AA0(v12, (v8 + 8));
        operator new();
      }

      sub_100004A34(v9);
    }
  }
}

uint64_t sub_1006E0A60(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1006E0AAC(uint64_t *a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *v1;
  __p[1] = 0;
  v14 = 0;
  __p[0] = 0;
  v3 = [*(v1 + 8) bundle];
  v4 = [v3 identifier];
  v5 = [v4 UTF8String];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = "";
  }

  sub_10000501C(__p, v6);

  v7 = [*(v1 + 8) pid];
  v8 = [*(v1 + 16) state];
  v9 = sub_1000050D4(v8);
  sub_100005198(v2, v7, __p, v9);

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1006E0BE0(&v12);
  return sub_1000049E0(&v11);
}

void sub_1006E0B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_1006E0BE0(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1006E0BE0(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {

    operator delete();
  }

  return a1;
}

void *sub_1006E0C38(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1006E0E98(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1006E0EC4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E73B50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

double sub_1006E0F18(uint64_t a1)
{
  *a1 = off_101E73BA0;
  *(a1 + 56) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

void sub_1006E0F4C(uint64_t a1)
{
  *a1 = off_101E73BA0;
  v4 = (a1 + 24);
  sub_100140868(&v4);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(a1);
}

void sub_1006E100C(uint64_t a1)
{
  sub_1006E0F4C(a1);

  operator delete();
}

uint64_t sub_1006E1044(uint64_t a1, uint64_t a2)
{
  *a1 = off_101E73BA0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  if (*(a2 + 16))
  {
    operator new();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 56))
  {
    v2 = *(a2 + 48);
    *(a1 + 56) |= 1u;
    *(a1 + 48) = v2;
  }

  v3 = *(a2 + 24);
  if (v3 != *(a2 + 32))
  {
    sub_1006E11A8((a1 + 24), *v3);
  }

  return a1;
}

uint64_t sub_1006E1300(uint64_t a1, uint64_t a2)
{
  *a1 = off_101E73BA0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  v8 = *v4;
  *v4 = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *(a1 + 48) = *(a2 + 48);
  sub_1006E1BD8((a1 + 24));
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return a1;
}

uint64_t sub_1006E1408(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "deviceInfo");
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "phoneInfo");
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  while (v7 != v8)
  {
    v9 = *v7++;
    (*(*v9 + 32))(v9, this, "planInfos");
  }

  if (*(a1 + 56))
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 48));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1006E1534(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_55;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 56) |= 1u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v32 = 0;
            v33 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v34 = v23 - v24;
            if (!v17)
            {
              v34 = 0;
            }

            v35 = (v25 + v24);
            v36 = v24 + 1;
            while (1)
            {
              if (!v34)
              {
                v28 = 0;
                *(this + 24) = 1;
                goto LABEL_50;
              }

              v37 = *v35;
              *(this + 1) = v36;
              v28 |= (v37 & 0x7F) << v32;
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              --v34;
              ++v35;
              ++v36;
              v14 = v33++ > 8;
              if (v14)
              {
LABEL_46:
                v28 = 0;
                goto LABEL_50;
              }
            }

            if (*(this + 24))
            {
              v28 = 0;
            }
          }

          else
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            while (1)
            {
              *(this + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
              if (v14)
              {
                goto LABEL_46;
              }
            }
          }

LABEL_50:
          *(a1 + 48) = v28;
          goto LABEL_51;
        }

        if (v22 == 4)
        {
          sub_1006E18E0((a1 + 24));
        }
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (v22 == 2)
        {
          operator new();
        }
      }

      if ((PB::Reader::skip(this, v22, v10 & 7, 0) & 1) == 0)
      {
        v39 = 0;
        return v39 & 1;
      }

LABEL_51:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_55:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_1006E1A2C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4, 1u);
  }

  v5 = *(v3 + 8);
  if (v5)
  {
    result = PB::Writer::writeSubmessage(this, v5, 2u);
  }

  if (*(v3 + 56))
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 48), 3u);
  }

  v7 = *(v3 + 24);
  v6 = *(v3 + 32);
  while (v7 != v6)
  {
    v8 = *v7++;
    result = PB::Writer::writeSubmessage(this, v8, 4u);
  }

  return result;
}

void *sub_1006E1AB8(void *result)
{
  if (!result[2])
  {
    operator new();
  }

  return result;
}

void *sub_1006E1B48(void *result)
{
  if (!result[1])
  {
    operator new();
  }

  return result;
}

void sub_1006E1BD8(void **a1)
{
  if (*a1)
  {
    sub_1001408BC(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1006E1D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    dispatch_release(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1006E462C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  sub_1000062D4(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1006E47C4(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1006E4804(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a1[1];
  *a1 = v3;
  a1[1] = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1006E495C(uint64_t a1)
{

  operator delete();
}

id sub_1006E4A10(uint64_t a1, void *a2)
{
  *a2 = off_101E73BF0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1006E4A60(id *a1)
{

  operator delete(a1);
}

void sub_1006E4A9C(uint64_t a1, uint64_t a2)
{
  xpc::dyn_cast_or_default();
  v14 = *buf;
  v16 = buf[23];
  ctu::base64::decode();
  v3 = [NSData dataWithBytes:0 length:0];
  v4 = objc_alloc_init(CellularPlanCrossPlatformTransferMessageCodec);
  v5 = [(CellularPlanCrossPlatformTransferMessageCodec *)v4 decodeMessage:v3];
  v6 = *(a1 + 8);
  if (v6)
  {
    objc_msgSend_getLogContext(v6, *buf, *&buf[8], *&buf[16]);
    v7 = *&buf[8];
  }

  else
  {
    v7 = 0;
    *buf = 0;
    *&buf[8] = 0;
  }

  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 8);
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Received CrossPlatformEvent %@", buf, 0x16u);
  }

  [*(*(a1 + 8) + 32) dumpData:v3 withLabel:{@"xfer-recv", v14}];
  v9 = *(a1 + 8);
  v10 = (v9 + 40);
  v11 = *(v9 + 48);
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    if (v12)
    {
      v13 = v12;
      if (*v10)
      {
        (*(**v10 + 24))(*v10, v3);
      }

      sub_100004A34(v13);
    }
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }
}

void sub_1006E4CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_100004A34(v23);

  if (__p)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006E4D48(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E73C50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1006E4DC0(uint64_t a1)
{

  operator delete();
}

id sub_1006E4E74(uint64_t a1, void *a2)
{
  *a2 = off_101E73C70;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1006E4EC4(id *a1)
{

  operator delete(a1);
}

void sub_1006E4F00(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  xpc::dyn_cast_or_default();
  v3 = *(a1 + 8);
  *__p = v8;
  v7 = v9;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = v8;
  }

  v5 = [NSString stringWithUTF8String:v4, __p[0], __p[1], v7];
  [v3 forwardEvent:@"SIMTransferSessionRequest" payload:v5];

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1006E4FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006E5000(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E73CD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1006E5078(uint64_t a1)
{

  operator delete();
}

id sub_1006E512C(uint64_t a1, void *a2)
{
  *a2 = off_101E73CF0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1006E517C(id *a1)
{

  operator delete(a1);
}

void sub_1006E51B8(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  xpc::dyn_cast_or_default();
  v3 = *(a1 + 8);
  *__p = v8;
  v7 = v9;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = v8;
  }

  v5 = [NSString stringWithUTF8String:v4, __p[0], __p[1], v7];
  [v3 forwardEvent:@"SIMTransferProfileRequest" payload:v5];

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1006E5278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006E52B8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E73D50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1006E5330(uint64_t a1)
{

  operator delete();
}

id sub_1006E53E4(uint64_t a1, void *a2)
{
  *a2 = off_101E73D70;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1006E5434(id *a1)
{

  operator delete(a1);
}

void sub_1006E5470(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  xpc::dyn_cast_or_default();
  v3 = *(a1 + 8);
  *__p = v8;
  v7 = v9;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = v8;
  }

  v5 = [NSString stringWithUTF8String:v4, __p[0], __p[1], v7];
  [v3 forwardEvent:@"SIMTransferProfileNotification" payload:v5];

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1006E5530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006E5570(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E73DD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1006E55E8(uint64_t a1)
{

  operator delete();
}

id sub_1006E569C(uint64_t a1, void *a2)
{
  *a2 = off_101E73DF0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1006E56EC(id *a1)
{

  operator delete(a1);
}

void sub_1006E5728(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  xpc::dyn_cast_or_default();
  v3 = *(a1 + 8);
  *__p = v8;
  v7 = v9;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = v8;
  }

  v5 = [NSString stringWithUTF8String:v4, __p[0], __p[1], v7];
  [v3 forwardEvent:@"SIMTransferSessionNotification" payload:v5];

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1006E57E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006E5828(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E73E50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1006E58A0(uint64_t a1)
{

  operator delete();
}

id sub_1006E5954(uint64_t a1, void *a2)
{
  *a2 = off_101E73E70;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1006E59A4(id *a1)
{

  operator delete(a1);
}

void sub_1006E59E0(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  xpc::dyn_cast_or_default();
  v3 = *(a1 + 8);
  *__p = v8;
  v7 = v9;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = v8;
  }

  v5 = [NSString stringWithUTF8String:v4, __p[0], __p[1], v7];
  [v3 forwardEvent:@"SIMTransferSessionResponse" payload:v5];

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1006E5AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006E5AE0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E73ED0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1006E5B58(uint64_t a1)
{

  operator delete();
}

id sub_1006E5C0C(uint64_t a1, void *a2)
{
  *a2 = off_101E73EF0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1006E5C5C(id *a1)
{

  operator delete(a1);
}

void sub_1006E5C98(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  xpc::dyn_cast_or_default();
  v3 = *(a1 + 8);
  *__p = v8;
  v7 = v9;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = v8;
  }

  v5 = [NSString stringWithUTF8String:v4, __p[0], __p[1], v7];
  [v3 forwardEvent:@"SIMTransferProfileResponse" payload:v5];

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1006E5D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006E5D98(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E73F50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1006E5DE4()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1006E5E0C(void *a1@<X0>, void *a2@<X8>, const char *a3@<X1>)
{
  if (a1)
  {
    v5 = 0;
    v6 = 0;
    sub_1006E5EC0(a1, a3, &v5);
    if (v5)
    {
      (*(*v5 + 16))(v5);
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
    }

    v4 = v6;
    if (v6)
    {

      sub_100004A34(v4);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_1006E5EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006E5EC0(void *a1@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    objc_msgSend_registry(a1, a2);
    ServiceMap = Registry::getServiceMap(v13);
    v5 = ServiceMap;
    if ((v6 & 0x8000000000000000) != 0)
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
    v15 = v6;
    v10 = sub_100009510(&v5[1].__m_.__sig, &v15);
    if (v10)
    {
      v12 = v10[3];
      v11 = v10[4];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    std::mutex::unlock(v5);
    *a3 = v12;
    a3[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
    }

    if (v14)
    {
      sub_100004A34(v14);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_1006E5FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006E5FC4(void *a1@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    objc_msgSend_registry(a1, a2);
    ServiceMap = Registry::getServiceMap(v13);
    v5 = ServiceMap;
    v6 = "17TMRouterInterface";
    if (("17TMRouterInterface" & 0x8000000000000000) != 0)
    {
      v7 = ("17TMRouterInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
    v15 = v6;
    v10 = sub_100009510(&v5[1].__m_.__sig, &v15);
    if (v10)
    {
      v12 = v10[3];
      v11 = v10[4];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    std::mutex::unlock(v5);
    *a3 = v12;
    a3[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
    }

    if (v14)
    {
      sub_100004A34(v14);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_1006E60B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006E639C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1006E66E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1006E6A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1006E6D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1006E71E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24, char a25)
{
  sub_10067AA50(&a25);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    sub_100004A34(a24);
  }

  _Unwind_Resume(a1);
}

void sub_1006E72AC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a1;
  v4 = [v7 uri];
  sub_10000501C(a2, [v4 UTF8String]);
  *(a2 + 24) = 0;
  *(a2 + 56) = 0;
  *(a2 + 80) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v5 = [v7 conversationID];
  if (v5)
  {
    v2 = [v7 conversationID];
    v6 = [v2 UTF8String];
  }

  else
  {
    v6 = "";
  }

  sub_10000501C((a2 + 88), v6);
  if (v5)
  {
  }
}

void sub_1006E7398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10)
{
  if (*(v11 + 80) == 1)
  {
    sub_1000087B4(&a10);
  }

  if (*(v11 + 47) < 0)
  {
    operator delete(*v14);
  }

  if (*(v11 + 23) < 0)
  {
    operator delete(*v11);
  }

  _Unwind_Resume(a1);
}

void sub_1006E7834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (a29)
  {
    sub_100004A34(a29);
  }

  _Unwind_Resume(a1);
}

void sub_1006E7D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, char a22)
{
  if (a21)
  {
    sub_100004A34(a21);
  }

  _Unwind_Resume(a1);
}

void sub_1006E81A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1006E8674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, ...)
{
  va_start(va, a26);

  sub_1006FA698(va);
  if (a26)
  {
    sub_100004A34(a26);
  }

  _Unwind_Resume(a1);
}

void sub_1006E8724(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  v4 = [v3 uuid];
  sub_10000501C(a2, [v4 UTF8String]);
  *(a2 + 48) = 0;
  *(a2 + 24) = 0;
  *(a2 + 40) = 0;
  *(a2 + 88) = 0;

  v5 = [v3 secureGroupVersion];

  if (v5)
  {
    v6 = [v3 secureGroupVersion];
    v7 = sub_1006FA56C(v6);
    v8 = *(a2 + 40);
    *(a2 + 24) = v7;
    *(a2 + 32) = v9;
    if ((v8 & 1) == 0)
    {
      *(a2 + 40) = 1;
    }
  }

  v10 = [v3 originalId];
  if (v10)
  {
    v11 = [v3 originalId];
    v12 = [v11 uuid];
    if (!v12)
    {

LABEL_11:
      goto LABEL_12;
    }

    v13 = [v3 originalId];
    v14 = [v13 secureGroupVersion];

    if (v14)
    {
      v10 = [v3 originalId];
      v15 = [v10 uuid];
      sub_10000501C(__p, [v15 UTF8String]);
      v16 = [v10 secureGroupVersion];
      v20 = sub_1006FA56C(v16);
      v21 = v17;

      sub_1006FA608(a2 + 48, __p);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_11;
    }
  }

LABEL_12:
}

void sub_1006E88E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10067A5EC(v16);
  _Unwind_Resume(a1);
}

void sub_1006E8C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void **a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a16 == 1)
  {
    a12 = &a13;
    sub_1006ACCB8(&a12);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1006E90D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, void **a23)
{
  a23 = &a18;
  sub_1006ACCB8(&a23);
  if (a22)
  {
    sub_100004A34(a22);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006E9190(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1006FA704(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v5 = *(a2 + 24);
    v6 = *(a2 + 5);
    *(v3 + 48) = 0;
    *(v3 + 40) = v6;
    *(v3 + 24) = v5;
    *(v3 + 88) = 0;
    if (*(a2 + 88) == 1)
    {
      v7 = a2[3];
      *(v3 + 64) = *(a2 + 8);
      *(v3 + 48) = v7;
      *(a2 + 56) = 0uLL;
      *(a2 + 6) = 0;
      *(v3 + 72) = *(a2 + 72);
      *(v3 + 88) = 1;
    }

    result = v3 + 96;
  }

  a1[1] = result;
  return result;
}

void sub_1006E9608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24, char a25)
{
  sub_10067AA50(&a25);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    sub_100004A34(a24);
  }

  _Unwind_Resume(a1);
}

void sub_1006E9BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, char a26)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    sub_100004A34(a24);
  }

  _Unwind_Resume(a1);
}

void sub_1006EA0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, char a20)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(a1);
}

void sub_1006EA62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  if (a58 == 1)
  {
    sub_1006A291C(&a27);
  }

  if (a25)
  {
    sub_100004A34(a25);
  }

  _Unwind_Resume(a1);
}

void sub_1006EAC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, std::__shared_weak_count *a60)
{
  sub_1006B2728(&a45);
  if (a60)
  {
    sub_100004A34(a60);
  }

  _Unwind_Resume(a1);
}

void sub_1006EB504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  sub_10019075C(&a44);
  if (STACK[0x328])
  {
    sub_100004A34(STACK[0x328]);
  }

  if (STACK[0x338])
  {
    sub_100004A34(STACK[0x338]);
  }

  _Unwind_Resume(a1);
}

void sub_1006EB6AC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  bzero(a2, 0x208uLL);
  *(a2 + 328) = -1;
  *(a2 + 344) = 0;
  *(a2 + 480) = 0;
  *(a2 + 512) = 0;
  if (v3)
  {
    v4 = [v3 file];

    if (v4)
    {
      v5 = [v3 file];
      v6 = [v5 fileSizeInBytes];

      if (v6)
      {
        v7 = [v3 file];
        v8 = [v7 fileSizeInBytes];
        *(a2 + 224) = [v8 longValue];
      }

      v9 = [v3 file];
      v10 = [v9 originalFileName];

      if (v10)
      {
        v11 = [v3 file];
        v12 = [v11 originalFileName];
        sub_100016890((a2 + 232), [v12 UTF8String]);
      }

      v13 = [v3 file];
      v14 = [v13 untrustedContentType];

      if (v14)
      {
        v15 = [v3 file];
        v16 = [v15 untrustedContentType];
        sub_100016890((a2 + 256), [v16 UTF8String]);
      }

      v17 = [v3 file];
      v18 = [v17 dataUrl];

      if (v18)
      {
        v19 = [v3 file];
        v20 = [v19 dataUrl];
        v21 = [v20 absoluteString];
        sub_100016890((a2 + 280), [v21 UTF8String]);
      }

      v22 = [v3 file];
      v23 = [v22 validUntil];

      if (v23)
      {
        v24 = [v3 file];
        v25 = [v24 validUntil];
        sub_100016890((a2 + 304), [v25 UTF8String]);
      }

      v26 = [v3 file];
      v27 = [v26 playingLengthInSeconds];

      if (v27)
      {
        v28 = [v3 file];
        v29 = [v28 playingLengthInSeconds];
        *(a2 + 336) = [v29 unsignedLongValue];
        *(a2 + 344) = 1;
      }

      v30 = [v3 file];
      v31 = [v30 disposition];
      if (v31)
      {
        v32 = -1;
      }

      else
      {
        v32 = 0;
      }

      if (v31 == 1)
      {
        v32 = 1;
      }

      *(a2 + 328) = v32;

      v33 = [v3 file];
      v34 = [v33 cryptoMaterial];
      sub_1006FAA94(v34, &v59);
      sub_1006ACBDC(a2 + 352, &v59);
      if (v67 == 1)
      {
        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }

        if (BYTE8(v64) == 1 && v63)
        {
          *(&v63 + 1) = v63;
          operator delete(v63);
        }

        if (BYTE8(v62) == 1 && v61)
        {
          *(&v61 + 1) = v61;
          operator delete(v61);
        }

        if (*(&v59 + 1))
        {
          *&v60 = *(&v59 + 1);
          operator delete(*(&v59 + 1));
        }
      }
    }

    v35 = [v3 thumbnail];

    if (v35)
    {
      v36 = [v3 thumbnail];
      v72 = 0;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      __p = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      v37 = [v36 fileSizeInBytes];

      if (v37)
      {
        v38 = [v36 fileSizeInBytes];
        *&v59 = [v38 longValue];
      }

      v39 = [v36 untrustedContentType];

      if (v39)
      {
        v40 = [v36 untrustedContentType];
        sub_100016890((&v59 + 8), [v40 UTF8String]);
      }

      v41 = [v36 dataUrl];

      if (v41)
      {
        v42 = [v36 dataUrl];
        v43 = [v42 absoluteString];
        sub_100016890(&v61, [v43 UTF8String]);
      }

      v44 = [v36 validUntil];

      if (v44)
      {
        v45 = [v36 validUntil];
        sub_100016890((&v62 + 8), [v45 UTF8String]);
      }

      v46 = [v36 cryptoMaterial];
      sub_1006FAA94(v46, &v47);
      sub_1006ACBDC(&v64, &v47);
      if (v58 == 1)
      {
        if (v56)
        {
          v57 = v56;
          operator delete(v56);
        }

        if (v55 == 1 && v53)
        {
          v54 = v53;
          operator delete(v53);
        }

        if (v52 == 1 && v50)
        {
          v51 = v50;
          operator delete(v50);
        }

        if (v48)
        {
          v49 = v48;
          operator delete(v48);
        }
      }

      sub_1006FADF4(a2, &v59);
      if (v72 == 1)
      {
        if (v70)
        {
          *(&v70 + 1) = v70;
          operator delete(v70);
        }

        if (BYTE8(v69) == 1 && v68)
        {
          *(&v68 + 1) = v68;
          operator delete(v68);
        }

        if (BYTE8(v67) == 1 && v66)
        {
          *(&v66 + 1) = v66;
          operator delete(v66);
        }

        if (*(&v64 + 1))
        {
          *&__p = *(&v64 + 1);
          operator delete(*(&v64 + 1));
        }
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(*(&v62 + 1));
      }

      if (SBYTE7(v62) < 0)
      {
        operator delete(v61);
      }

      if (SHIBYTE(v60) < 0)
      {
        operator delete(*(&v59 + 1));
      }
    }
  }
}

void sub_1006EBCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  sub_100190B88(va);
  sub_10019075C(v27);

  _Unwind_Resume(a1);
}

void sub_1006EBDBC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  if (v2 && (v23 = v2, [v2 list], v3 = objc_claimAutoreleasedReturnValue(), v3, v2 = v23, v3))
  {
    v33 = 0uLL;
    v34 = 0;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v4 = [v23 list];
    v5 = [v4 countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v5)
    {
      v6 = *v30;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v30 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v29 + 1) + 8 * i);
          if (v8)
          {
            v9 = [*(*(&v29 + 1) + 8 * i) header];
            v10 = v9;
            sub_10000501C(v25, [v9 UTF8String]);
            v11 = [v8 value];
            v12 = v11;
            sub_10000501C(&__p, [v11 UTF8String]);
            v13 = *(&v33 + 1);
            if (*(&v33 + 1) >= v34)
            {
              v16 = 0xAAAAAAAAAAAAAAABLL * ((*(&v33 + 1) - v33) >> 4);
              v17 = v16 + 1;
              if (v16 + 1 > 0x555555555555555)
              {
                sub_1000CE3D4();
              }

              if (0x5555555555555556 * ((v34 - v33) >> 4) > v17)
              {
                v17 = 0x5555555555555556 * ((v34 - v33) >> 4);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 4) >= 0x2AAAAAAAAAAAAAALL)
              {
                v18 = 0x555555555555555;
              }

              else
              {
                v18 = v17;
              }

              v35[4] = &v33;
              if (v18)
              {
                sub_1001904B4(&v33, v18);
              }

              v19 = 16 * ((*(&v33 + 1) - v33) >> 4);
              v35[0] = 0;
              v35[1] = v19;
              v35[3] = 0;
              v20 = *v25;
              *(v19 + 16) = v26;
              *v19 = v20;
              v25[1] = 0;
              v26 = 0;
              v25[0] = 0;
              v21 = __p;
              *(v19 + 40) = v28;
              *(v19 + 24) = v21;
              v28 = 0;
              __p = 0uLL;
              v35[2] = 48 * v16 + 48;
              sub_1006FAE88(&v33, v35);
              v22 = *(&v33 + 1);
              sub_1001C7794(v35);
              *(&v33 + 1) = v22;
              if (SHIBYTE(v28) < 0)
              {
                operator delete(__p);
              }
            }

            else
            {
              v14 = *v25;
              *(*(&v33 + 1) + 16) = v26;
              *v13 = v14;
              v25[1] = 0;
              v26 = 0;
              v25[0] = 0;
              v15 = v28;
              *(v13 + 24) = __p;
              *(v13 + 40) = v15;
              v28 = 0;
              __p = 0uLL;
              *(&v33 + 1) = v13 + 48;
            }

            if (SHIBYTE(v26) < 0)
            {
              operator delete(v25[0]);
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v5);
    }

    *a2 = v33;
    *(a2 + 16) = v34;
    v34 = 0;
    v33 = 0uLL;
    *(a2 + 24) = 1;
    v25[0] = &v33;
    sub_100190608(v25);
    v2 = v23;
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }
}

void sub_1006EC0D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31)
{
  __p = &a28;
  sub_100190608(&__p);

  _Unwind_Resume(a1);
}

uint64_t sub_1006EC17C(uint64_t a1)
{
  if (*(a1 + 576) == 1)
  {
    v3 = (a1 + 552);
    sub_100190608(&v3);
  }

  if (*(a1 + 544) == 1)
  {
    v3 = (a1 + 520);
    sub_10019029C(&v3);
  }

  if (*(a1 + 512) == 1)
  {
    v3 = (a1 + 488);
    sub_100190608(&v3);
  }

  sub_100190D9C(a1 + 224);
  if (*(a1 + 216) == 1)
  {
    sub_100190B88(a1);
  }

  return a1;
}

void sub_1006EC850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, std::__shared_weak_count *a56, uint64_t a57, std::__shared_weak_count *a58)
{
  if (a56)
  {
    sub_100004A34(a56);
  }

  if (a58)
  {
    sub_100004A34(a58);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006EC9E0(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v3 = (a1 + 56);
    sub_100190608(&v3);
  }

  if (*(a1 + 48) == 1)
  {
    v3 = (a1 + 24);
    sub_10019029C(&v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1006ED108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, std::__shared_weak_count *a52)
{
  sub_1006ED278(&STACK[0x290]);
  if (a52)
  {
    sub_100004A34(a52);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006ED278(uint64_t a1)
{
  if (*(a1 + 384) == 1)
  {
    sub_1002AF7A0(a1 + 104);
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_1006ED84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, ...)
{
  va_start(va, a30);

  sub_10067A5EC(&a17);
  sub_1006FAF68(va);
  if (a30)
  {
    sub_100004A34(a30);
  }

  _Unwind_Resume(a1);
}

void sub_1006EE098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_objecta, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, int a63)
{
  sub_1006EE2D8(&a47);
  if (a66 == 1 && a65 < 0)
  {
    operator delete(__p);
  }

  if (a67)
  {
    sub_100004A34(a67);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006EE2D8(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    v3 = (a1 + 80);
    sub_100190608(&v3);
  }

  if (*(a1 + 72) == 1)
  {
    v3 = (a1 + 48);
    sub_10019029C(&v3);
  }

  if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1006EE7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a28)
  {
    sub_100004A34(a28);
  }

  _Unwind_Resume(a1);
}

void sub_1006EECE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a26)
  {
    sub_100004A34(a26);
  }

  _Unwind_Resume(a1);
}

void sub_1006EF3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16)
{
  if (a13)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1006EFBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16)
{
  if (a13)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1006F0660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39, char *a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62, char a63)
{
  if (a63 == 1 && a62 < 0)
  {
    operator delete(__p);
  }

  sub_1006ACCB8(&a17);
  if (a53 == 1 && a52 < 0)
  {
    operator delete(a47);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  a40 = &a35;
  sub_1006ACCB8(&a40);
  if (a39)
  {
    sub_100004A34(a39);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006F08C0(uint64_t a1)
{
  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v3 = (a1 + 64);
  sub_1006ACCB8(&v3);
  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1006F12D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48, char *a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, char a62, uint64_t a63)
{
  if (a67 == 1 && a66 < 0)
  {
    operator delete(__p);
  }

  sub_1006ACCB8(&a20);
  if (a62 == 1 && a61 < 0)
  {
    operator delete(a56);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  a49 = &a44;
  sub_1006ACCB8(&a49);
  if (a48)
  {
    sub_100004A34(a48);
  }

  _Unwind_Resume(a1);
}

void sub_1006F1940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a23 == 1 && a21 == 1)
  {
    __p = &a18;
    sub_10019029C(&__p);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  _Unwind_Resume(a1);
}

void sub_1006F1FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, std::__shared_weak_count *a50)
{
  if (a50)
  {
    sub_100004A34(a50);
  }

  _Unwind_Resume(a1);
}

void sub_1006F2118(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 64) = 0;
  v10 = v3;
  v4 = [v3 destination];

  if (v4)
  {
    v5 = [v10 destination];
    sub_100016890(a2, [v5 UTF8String]);
  }

  v6 = [v10 focus];

  if (v6)
  {
    v7 = [v10 focus];
    sub_100016890((a2 + 24), [v7 UTF8String]);
  }

  v8 = [v10 conversationID];

  if (v8)
  {
    v9 = [v10 conversationID];
    sub_100016890((a2 + 48), [v9 UTF8String]);
  }
}

void sub_1006F2238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  sub_1000CFBA0(v10);

  _Unwind_Resume(a1);
}

void sub_1006F2A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48)
{
  sub_1006ED278(&STACK[0x270]);
  if (a48)
  {
    sub_100004A34(a48);
  }

  _Unwind_Resume(a1);
}

void sub_1006F3644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, int a17, char a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28)
{
  if (a18)
  {

    if (!a25)
    {
      goto LABEL_6;
    }
  }

  else if (!a25)
  {
LABEL_6:

    if (a24)
    {
    }

    if (a21)
    {
    }

    _Unwind_Resume(a1);
  }

  goto LABEL_6;
}

void sub_1006F40D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  sub_10019075C(&a40);
  if (STACK[0x308])
  {
    sub_100004A34(STACK[0x308]);
  }

  _Unwind_Resume(a1);
}

void sub_1006F493C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  sub_1006B2728(&a59);
  if (STACK[0x208])
  {
    sub_100004A34(STACK[0x208]);
  }

  _Unwind_Resume(a1);
}

void sub_1006F5074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40)
{
  if (a40)
  {
    sub_100004A34(a40);
  }

  _Unwind_Resume(a1);
}

void sub_1006F51D4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = v3;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  if (v3)
  {
    v5 = [v3 memberList];
    if (v5)
    {
      v6 = [v4 memberList];
      v7 = [v6 count];

      if (v7)
      {
        v8 = [v4 memberList];
        v9 = [v8 count];

        if (v9)
        {
          for (i = 0; i != v9; ++i)
          {
            v11 = [v4 memberList];
            v12 = [v11 objectAtIndex:i];

            if (v12)
            {
              v13 = [v12 role];
              if (v13 == -1)
              {
                v14 = -1;
              }

              else
              {
                v14 = v13 == 1;
              }

              v15 = [v12 member];
              sub_10000501C(__p, [v15 UTF8String]);
              v23 = v14;
              v24 = 0;
              v16 = *(a2 + 32);
              if (v16 >= *(a2 + 40))
              {
                v19 = sub_1006AD550(a2 + 24, __p);
                v20 = SHIBYTE(v22);
                *(a2 + 32) = v19;
                if (v20 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              else
              {
                v17 = *__p;
                *(v16 + 16) = v22;
                *v16 = v17;
                __p[1] = 0;
                v22 = 0;
                __p[0] = 0;
                v18 = v24;
                *(v16 + 24) = v23;
                *(v16 + 28) = v18;
                *(a2 + 32) = v16 + 32;
              }
            }
          }
        }
      }
    }
  }
}

void sub_1006F5370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_1000D2230(v15);

  _Unwind_Resume(a1);
}

void sub_1006F598C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40)
{
  if (a40)
  {
    sub_100004A34(a40);
  }

  _Unwind_Resume(a1);
}

void sub_1006F622C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *__p, uint64_t a46)
{
  if (__p)
  {
    a46 = __p;
    operator delete(__p);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a18)
  {
    operator delete(a18);
  }

  sub_1000D3454(&a27);
  if (a38)
  {
    sub_100004A34(a38);
  }

  _Unwind_Resume(a1);
}

void sub_1006F69D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17)
{
  if (a16)
  {
  }

  if (a17)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006F79E0(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 23) = 0;
    *a2 = 0;
    sub_100015184(a1 + 24, (a2 + 24));
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    v5 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v5;
    *(a2 + 71) = 0;
    *(a2 + 48) = 0;
  }

  else
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v6;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a2 + 24) = 0uLL;
    *(a2 + 5) = 0;
    v7 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v7;
    *(a2 + 56) = 0uLL;
    *(a2 + 6) = 0;
    *(a1 + 72) = 1;
  }

  return a1;
}

void sub_1006F7F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, char a24)
{
  if (a23)
  {
    sub_100004A34(a23);
  }

  _Unwind_Resume(a1);
}

void sub_1006F8398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

void sub_1006F86F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_100004A34(a19);
  }

  _Unwind_Resume(a1);
}

void sub_1006F8AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1006F8F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32)
{
  if (a30)
  {
    sub_100004A34(a30);
  }

  _Unwind_Resume(a1);
}

void sub_1006F907C(void *a1@<X0>, char **a2@<X8>)
{
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v4 = [v3 list];
  v5 = [v4 count];

  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = [v3 list];
      v8 = [v7 objectAtIndex:i];

      if (v8)
      {
        *__p = 0u;
        v17 = 0u;
        memset(v15, 0, sizeof(v15));
        *v13 = 0u;
        v14 = 0u;
        *v12 = 0u;
        v9 = [v8 uri];
        sub_10000501C(v12, [v9 UTF8String]);
        BYTE8(v15[0]) = 0;
        LOBYTE(__p[0]) = 0;
        v17 = 0uLL;
        __p[1] = 0;
        v14 = 0uLL;
        v13[1] = 0;
        LOBYTE(v15[0]) = 0;

        v10 = a2[1];
        if (v10 >= a2[2])
        {
          v11 = sub_1006FB104(a2, v12);
        }

        else
        {
          sub_1006FB24C(a2[1], v12);
          v11 = (v10 + 112);
        }

        a2[1] = v11;
        if (SHIBYTE(v17) < 0)
        {
          operator delete(__p[1]);
        }

        if (LOBYTE(__p[0]) == 1)
        {
          v18 = v15 + 1;
          sub_1000087B4(&v18);
        }

        if (SHIBYTE(v14) < 0)
        {
          operator delete(v13[1]);
        }

        if (SHIBYTE(v13[0]) < 0)
        {
          operator delete(v12[0]);
        }
      }
    }
  }
}

void sub_1006F9200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1006FB6F8(&a9);

  _Unwind_Resume(a1);
}

void sub_1006F9744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, std::__shared_weak_count *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  sub_1006EE2D8(&a38);
  if (a35 == 1 && a34 < 0)
  {
    operator delete(__p);
  }

  if (a37)
  {
    sub_100004A34(a37);
  }

  _Unwind_Resume(a1);
}

void sub_1006F9E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_10019075C(&a27);
  if (STACK[0x2A0])
  {
    sub_100004A34(STACK[0x2A0]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006F9FAC(uint64_t a1)
{
  if (*(a1 + 688) == 1)
  {
    if (*(a1 + 680) == 1 && *(a1 + 679) < 0)
    {
      operator delete(*(a1 + 656));
    }

    if (*(a1 + 655) < 0)
    {
      operator delete(*(a1 + 632));
    }

    if (*(a1 + 631) < 0)
    {
      operator delete(*(a1 + 608));
    }

    if (*(a1 + 592) == 1)
    {
      v3 = (a1 + 568);
      sub_100191E28(&v3);
    }

    sub_1006FA044(a1);
  }

  return a1;
}

uint64_t sub_1006FA044(uint64_t a1)
{
  if (*(a1 + 560) == 1)
  {
    v3 = (a1 + 536);
    sub_1001C6984(&v3);
  }

  if (*(a1 + 528) == 1 && *(a1 + 527) < 0)
  {
    operator delete(*(a1 + 504));
  }

  if (*(a1 + 496) == 1 && *(a1 + 495) < 0)
  {
    operator delete(*(a1 + 472));
  }

  if (*(a1 + 464) == 1 && *(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  if (*(a1 + 432) == 1 && *(a1 + 431) < 0)
  {
    operator delete(*(a1 + 408));
  }

  if (*(a1 + 400) == 1 && *(a1 + 399) < 0)
  {
    operator delete(*(a1 + 376));
  }

  if (*(a1 + 368) == 1 && *(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  if (*(a1 + 336) == 1 && *(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  if (*(a1 + 304) == 1 && *(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  if (*(a1 + 272) == 1)
  {
    sub_1006FA180(a1);
  }

  return a1;
}

uint64_t sub_1006FA180(uint64_t a1)
{
  if (*(a1 + 264) == 1)
  {
    v3 = (a1 + 240);
    sub_1001C6984(&v3);
  }

  if (*(a1 + 232) == 1)
  {
    v3 = (a1 + 208);
    sub_1000087B4(&v3);
  }

  if (*(a1 + 200) == 1 && *(a1 + 192) == 1 && *(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 160) == 1)
  {
    v3 = (a1 + 136);
    sub_1006FA290(&v3);
  }

  if (*(a1 + 128) == 1)
  {
    v3 = (a1 + 104);
    sub_1006FA34C(&v3);
  }

  if (*(a1 + 96) == 1)
  {
    v3 = (a1 + 72);
    sub_1006FA290(&v3);
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
  }

  return a1;
}

void sub_1006FA290(void ****a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1006FA2E4(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1006FA2E4(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  while (v4 != a2)
  {
    v5 = v4;
    v4 -= 5;
    if (*(v5 - 16) == 1 && *(v5 - 17) < 0)
    {
      operator delete(*v4);
    }
  }

  *(a1 + 8) = a2;
}

void sub_1006FA34C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1006FA3A0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1006FA3A0(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 80)
  {
    if (*(i - 16) == 1)
    {
      if (*(i - 24) == 1)
      {
        v4 = *(i - 48);
        if (v4)
        {
          *(i - 40) = v4;
          operator delete(v4);
        }
      }

      if (*(i - 49) < 0)
      {
        operator delete(*(i - 72));
      }
    }
  }

  a1[1] = v2;
}

uint64_t sub_1006FA418(uint64_t a1)
{
  if (*(a1 + 519) < 0)
  {
    operator delete(*(a1 + 496));
  }

  if (*(a1 + 448) == 1)
  {
    v3 = (a1 + 424);
    sub_1000087B4(&v3);
    if (*(a1 + 423) < 0)
    {
      operator delete(*(a1 + 400));
    }
  }

  sub_1006FA4B0(a1 + 152);
  if (*(a1 + 104) == 1 && *(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return a1;
}

uint64_t sub_1006FA4B0(uint64_t a1)
{
  if (*(a1 + 216) == 1)
  {
    if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
    {
      operator delete(*(a1 + 128));
    }

    if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

id sub_1006FA56C(void *a1)
{
  v1 = a1;
  v2 = [v1 era];
  v3 = [v2 unsignedLongLongValue];
  v4 = [v1 epoch];
  [v4 unsignedLongLongValue];

  return v3;
}

uint64_t sub_1006FA608(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 40) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 23) = 0;
    *a2 = 0;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = 1;
  }

  return a1;
}

uint64_t sub_1006FA698(uint64_t a1)
{
  if (*(a1 + 1120) == 1)
  {
    sub_1006A9CB8(a1 + 232);
    if (*(a1 + 208) == 1 && *(a1 + 191) < 0)
    {
      operator delete(*(a1 + 168));
    }

    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    sub_10067AA50(a1 + 8);
  }

  return a1;
}

uint64_t sub_1006FA704(unint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_1006AD18C(a1, v6);
  }

  v7 = 96 * v2;
  v17 = 0;
  v18 = v7;
  v19 = 0uLL;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v9;
  *(96 * v2 + 0x30) = 0;
  *(v7 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v10 = a2[3];
    *(96 * v2 + 0x40) = *(a2 + 8);
    *(96 * v2 + 0x30) = v10;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    *(96 * v2 + 0x48) = *(a2 + 72);
    *(96 * v2 + 0x58) = 1;
  }

  *&v19 = v7 + 96;
  v11 = a1[1];
  v12 = v7 + *a1 - v11;
  sub_1006FA88C(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_1006FAA14(&v17);
  return v16;
}

void sub_1006FA878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1006FAA14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006FA88C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v16 = a4;
  v17 = a4;
  v14[0] = a1;
  v14[1] = &v16;
  v14[2] = &v17;
  v15 = 0;
  if (a2 == a3)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2 + 3;
    do
    {
      v8 = *(v7 - 3);
      *(a4 + 16) = *(v7 - 4);
      *a4 = v8;
      *(v7 - 5) = 0;
      *(v7 - 4) = 0;
      *(v7 - 6) = 0;
      v9 = *(v7 - 24);
      v10 = *(v7 - 1);
      *(a4 + 48) = 0;
      *(a4 + 40) = v10;
      *(a4 + 24) = v9;
      *(a4 + 88) = 0;
      if (*(v7 + 40) == 1)
      {
        v11 = *v7;
        *(a4 + 64) = *(v7 + 2);
        *(a4 + 48) = v11;
        *(v7 + 1) = 0;
        *(v7 + 2) = 0;
        *v7 = 0;
        *(a4 + 72) = *(v7 + 24);
        *(a4 + 88) = 1;
      }

      v12 = v7 - 3;
      a4 += 96;
      v7 += 6;
    }

    while (v12 + 6 != a3);
    v17 = a4;
    LOBYTE(v15) = 1;
    while (v5 != a3)
    {
      sub_1006FA9B0(a1, v5);
      v5 += 6;
    }
  }

  return sub_1006AD04C(v14);
}

void sub_1006FA9B0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 88) == 1 && *(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_1006FAA14(uint64_t a1)
{
  sub_1006FAA4C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1006FAA4C(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 96;
    sub_1006FA9B0(v5, v4 - 96);
  }
}

void sub_1006FAA94(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    *__p = 0u;
    v23 = 0u;
    *v20 = 0u;
    v21 = 0u;
    *v18 = 0u;
    v19 = 0u;
    memset(v17, 0, sizeof(v17));
    if ([v3 algorithm])
    {
      *a2 = 0;
      *(a2 + 128) = 0;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      LODWORD(v17[0]) = 0;
      [v4 key];
      v24 = 0uLL;
      v25 = 0;
      ctu::cf::assign();
      v5 = 0uLL;
      if (v17[1])
      {
        v17[2] = v17[1];
        v13 = 0uLL;
        operator delete(v17[1]);
        v5 = 0uLL;
      }

      *&v17[1] = v5;
      v17[3] = 0;
      v6 = [v4 nonce];

      if (v6)
      {
        [v4 nonce];
        v24 = 0uLL;
        v25 = 0;
        ctu::cf::assign();
        *v15 = 0uLL;
        v16 = 0;
        sub_1001E9734(v18, v15);
        if (v15[0])
        {
          v15[1] = v15[0];
          operator delete(v15[0]);
        }
      }

      v7 = [v4 aad];

      if (v7)
      {
        [v4 aad];
        v24 = 0uLL;
        v25 = 0;
        ctu::cf::assign();
        *v15 = v24;
        v16 = v25;
        sub_1001E9734(v20, v15);
        if (v15[0])
        {
          v15[1] = v15[0];
          operator delete(v15[0]);
        }
      }

      [v4 authTag];
      v24 = 0uLL;
      v25 = 0;
      ctu::cf::assign();
      v8 = v24;
      v9 = v25;
      if (__p[0])
      {
        __p[1] = __p[0];
        v14 = v24;
        operator delete(__p[0]);
        v8 = v14;
      }

      *__p = v8;
      *&v23 = v9;
      v10 = [v4 originalFileSizeInBytes];
      LODWORD(v24) = 0;
      ctu::cf::assign(&v24, v10, v11);
      v12 = v24;
      DWORD2(v23) = v24;
      *a2 = v17[0];
      *(a2 + 8) = *&v17[1];
      *(a2 + 24) = v17[3];
      memset(&v17[1], 0, 24);
      *(a2 + 32) = 0;
      *(a2 + 56) = 0;
      if (BYTE8(v19) == 1)
      {
        *(a2 + 32) = *v18;
        *(a2 + 48) = v19;
        v18[1] = 0;
        *&v19 = 0;
        v18[0] = 0;
        *(a2 + 56) = 1;
      }

      *(a2 + 64) = 0;
      *(a2 + 88) = 0;
      if (BYTE8(v21) == 1)
      {
        *(a2 + 64) = *v20;
        *(a2 + 80) = v21;
        v20[1] = 0;
        *&v21 = 0;
        v20[0] = 0;
        *(a2 + 88) = 1;
      }

      *(a2 + 96) = *__p;
      *(a2 + 112) = v23;
      __p[1] = 0;
      *&v23 = 0;
      __p[0] = 0;
      *(a2 + 120) = v12;
      *(a2 + 128) = 1;
    }

    if (BYTE8(v21) == 1 && v20[0])
    {
      v20[1] = v20[0];
      operator delete(v20[0]);
    }

    if (BYTE8(v19) == 1 && v18[0])
    {
      v18[1] = v18[0];
      operator delete(v18[0]);
    }

    if (v17[1])
    {
      v17[2] = v17[1];
      operator delete(v17[1]);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 128) = 0;
  }
}

void sub_1006FAD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_100190B0C(va);

  _Unwind_Resume(a1);
}

uint64_t sub_1006FADF4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 216) == 1)
  {
    *a1 = *a2;
    std::string::operator=((a1 + 8), (a2 + 8));
    std::string::operator=((a1 + 32), (a2 + 32));
    std::string::operator=((a1 + 56), (a2 + 56));
    sub_1006AA72C(a1 + 80, a2 + 80);
  }

  else
  {
    sub_100190828(a1, a2);
    *(a1 + 216) = 1;
  }

  return a1;
}

void sub_1006FAE88(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      v9 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v8 = v9;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v10 = *(v7 + 24);
      *(v8 + 40) = *(v7 + 40);
      *(v8 + 24) = v10;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v7 += 48;
      v8 += 48;
    }

    while (v7 != v5);
    do
    {
      sub_1000DD108(v4);
      v4 += 48;
    }

    while (v4 != v5);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  a1[1] = v11;
  a2[1] = v11;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t sub_1006FAF68(uint64_t a1)
{
  if (*(a1 + 200) == 1 && *(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1)
  {
    v3 = (a1 + 56);
    sub_1000087B4(&v3);
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

uint64_t sub_1006FB00C(uint64_t a1)
{
  if (*(a1 + 136) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
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

uint64_t *sub_1006FB07C(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_1006ACF10(result, a4);
  }

  return result;
}

void sub_1006FB0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1006ACCB8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1006FB104(char **a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    sub_1000CE3D4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1006FB3C4(a1, v6);
  }

  v13 = 0;
  v14 = 112 * v2;
  sub_1006FB24C((112 * v2), a2);
  v15 = (112 * v2 + 112);
  v7 = a1[1];
  v8 = (112 * v2 + *a1 - v7);
  sub_1006FB420(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1006FB678(&v13);
  return v12;
}

void sub_1006FB238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1006FB678(va);
  _Unwind_Resume(a1);
}

char *sub_1006FB24C(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  __dst[48] = *(a2 + 48);
  sub_1006FB368(__dst + 56, a2 + 56);
  if (*(a2 + 111) < 0)
  {
    sub_100005F2C(__dst + 88, *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v6 = *(a2 + 88);
    *(__dst + 13) = *(a2 + 13);
    *(__dst + 88) = v6;
  }

  return __dst;
}

void sub_1006FB314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 80) == 1)
  {
    sub_1000087B4(&a10);
  }

  if (*(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1006FB368(char *a1, uint64_t a2)
{
  *a1 = 0;
  a1[24] = 0;
  sub_1002219CC(a1, a2);
  return a1;
}

void sub_1006FB3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_1000087B4(&a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006FB3C4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1006FB420(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_1006FB4E4(a4, v7);
      v7 += 7;
      a4 = v12 + 112;
      v12 += 112;
    }

    while (v7 != a3);
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      sub_1006FB578(a1, v5);
      v5 += 112;
    }
  }

  return sub_1006FB5EC(v9);
}

__n128 sub_1006FB4E4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v3 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v3;
  a2[2] = 0uLL;
  *(a2 + 3) = 0;
  v4 = *(a2 + 48);
  *(a1 + 56) = 0;
  *(a1 + 48) = v4;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 9);
    *(a2 + 56) = 0uLL;
    *(a2 + 9) = 0;
    *(a1 + 80) = 1;
  }

  result = *(a2 + 88);
  *(a1 + 104) = *(a2 + 13);
  *(a1 + 88) = result;
  a2[6] = 0uLL;
  *(a2 + 11) = 0;
  return result;
}

void sub_1006FB578(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 111) < 0)
  {
    operator delete(*(a2 + 88));
  }

  if (*(a2 + 80) == 1)
  {
    v3 = (a2 + 56);
    sub_1000087B4(&v3);
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t sub_1006FB5EC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1006FB624(a1);
  }

  return a1;
}

void sub_1006FB624(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 112;
      sub_1006FB578(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_1006FB678(uint64_t a1)
{
  sub_1006FB6B0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1006FB6B0(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 112;
    sub_1006FB578(v5, v4 - 112);
  }
}

void sub_1006FB6F8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1006FB74C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1006FB74C(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_1006FB578(a1, i))
  {
    i -= 112;
  }

  *(a1 + 8) = a2;
}

uint64_t sub_1006FB858(uint64_t a1)
{
  ctu::OsLogContext::OsLogContext(&v3, kCtLoggingSystemName, "call.state");
  sub_1006FB8DC(a1, "call::model::CallState", QOS_CLASS_USER_INITIATED, &v3);
  ctu::OsLogContext::~OsLogContext(&v3);
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  return a1;
}

void *sub_1006FB8DC(void *a1, const char *a2, dispatch_qos_class_t qos_class, const OsLogContext *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v8 = dispatch_queue_create(a2, v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[3] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger(v11, a4);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v11);
  ctu::OsLogLogger::~OsLogLogger(v11);
  return a1;
}

void sub_1006FB97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

void *sub_1006FB9A4(void *a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 4));

  return sub_1000C0544(a1);
}

void sub_1006FB9E0(void *a1, int a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_1006FBAC4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  if ((sub_100B2E93C(v12, *(a1 + 40)) & 1) == 0)
  {
    __TUAssertTrigger("success");
  }

  if ((sub_100B2E93C(__p, v2) & 1) == 0)
  {
    __TUAssertTrigger("success");
  }

  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v12;
    if (v13 < 0)
    {
      v5 = v12[0];
    }

    v6 = __p;
    if (v11 < 0)
    {
      v6 = __p[0];
    }

    *buf = 136315394;
    v15 = v5;
    v16 = 2080;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Changing from %s to %s", buf, 0x16u);
  }

  *(a1 + 40) = v2;
  if (v2)
  {
    if (v2 != 1)
    {
      goto LABEL_16;
    }

    v7 = &event::call::active;
  }

  else
  {
    v7 = &event::call::inactive;
  }

  v8 = v7 + 1;
  sub_10014BF94(v7 + 3);
  v9 = sub_100081A98(v8);
  sub_100081ADC(v9);
LABEL_16:
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_1006FBC44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006FBC70(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1006FC028;
  v5[3] = &unk_101E73F70;
  v5[4] = a1;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 16;
  v1 = *(a1 + 16);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_100069D74;
    v10 = &unk_101E73FB0;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_100058E18;
    v10 = &unk_101E73F90;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

uint64_t sub_1006FBD98(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1006FC040;
  v5[3] = &unk_101E73FD0;
  v5[4] = a1;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 16;
  v1 = *(a1 + 16);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_100069D74;
    v10 = &unk_101E73FB0;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_100058E18;
    v10 = &unk_101E73F90;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

void sub_1006FBEC0(void *a1, char a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_1006FBFA4(uint64_t **a1)
{
  v1 = a1;
  sub_1006FBAC4(**a1, *(*a1 + 2));
  operator delete();
}

void sub_1006FC050(_BYTE **a1)
{
  v1 = a1;
  *(**a1 + 44) = (*a1)[8];
  operator delete();
}

void sub_1006FC188(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  if (v2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006FC1B0(uint64_t a1, void *a2, NSObject **a3, void *a4, uint64_t a5)
{
  ctu::OsLogContext::OsLogContext(&v17, kCtLoggingSystemName, "ps.slc");
  sub_1006FC390((a1 + 8), a3, &v17);
  ctu::OsLogContext::~OsLogContext(&v17);
  *a1 = off_101E74000;
  v10 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a4[1];
  *(a1 + 64) = *a4;
  *(a1 + 72) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = a5;
  v16 = 21;
  strcpy(__p, "NetworkSlicingControl");
  v12 = *(a1 + 24);
  v14 = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  ctu::RestModule::RestModule();
  if (v14)
  {
    dispatch_release(v14);
  }

  if (v16 < 0)
  {
    operator delete(*__p);
  }

  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 152) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = a1 + 152;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  return a1;
}

void sub_1006FC31C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a10)
  {
    dispatch_release(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  v20 = v18[9];
  if (v20)
  {
    sub_100004A34(v20);
  }

  v21 = v18[7];
  if (v21)
  {
    sub_100004A34(v21);
  }

  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((v18 + 5));
  sub_1000C0544(v18 + 1);
  _Unwind_Resume(a1);
}

void *sub_1006FC390(void *a1, NSObject **a2, OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  a1[2] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v7, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  return a1;
}

void sub_1006FC3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1006FC41C(uint64_t a1)
{
  *a1 = off_101E74000;
  v2 = *(a1 + 176);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10006DCAC(a1 + 144, *(a1 + 152));
  v3 = *(a1 + 136);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    sub_100004A34(v6);
  }

  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1006FC4C0(uint64_t a1)
{
  sub_1006FC41C(a1);

  operator delete();
}

void sub_1006FC500(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 64));
    *buf = 136315394;
    *&buf[4] = v3;
    v17 = 2080;
    v18 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sinitializing", buf, 0x16u);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
LABEL_11:
  v13 = *(a1 + 136);
  *(a1 + 128) = v12;
  *(a1 + 136) = v11;
  if (v13)
  {
    sub_100004A34(v13);
  }

  Registry::createRestModuleOneTimeUseConnection(&v14, *(a1 + 48));
  ctu::RestModule::connect();
  if (v15)
  {
    sub_100004A34(v15);
  }

  sub_1006FCBB0(a1);
}

void sub_1006FC6AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1006FC6DC(uint64_t a1)
{
  v10 = 0;
  (*(**(a1 + 128) + 96))(buf);
  sub_100010180(&v10, buf);
  sub_10000A1EC(buf);
  v2 = v10;
  v3 = v10 != 0;
  v4 = *(a1 + 104);
  if (v4 != v3)
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(**(a1 + 64));
      v7 = asStringBool(*(a1 + 104));
      v8 = asStringBool(v2 != 0);
      *buf = 136315906;
      v12 = v6;
      v13 = 2080;
      v14 = " ";
      v15 = 2080;
      v16 = v7;
      v17 = 2080;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sNetwork Slicing carrier support is changing from %s to %s", buf, 0x2Au);
    }

    *(a1 + 104) = v3;
  }

  sub_10001021C(&v10);
  return v4 != v3;
}

void sub_1006FC870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006FC89C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 64));
    v5 = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sstarted", &v5, 0x16u);
  }

  return (*(*a1 + 104))(a1, 0, 1);
}

void sub_1006FC988(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v3 = ServiceMap;
  if (v4 < 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  *v14 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v14);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  (*(*v10 + 32))(v10, **(a1 + 64) + 24, @"SlicingWasDiscovered", kPhoneServicesWalletDomain, 0, 1);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = PersonalityInfo::logPrefix(**(a1 + 64));
    *v14 = 136315394;
    *&v14[4] = v13;
    v15 = 2080;
    v16 = " ";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sNetwork Slicing Switch: review provisioning on migration", v14, 0x16u);
  }

  sub_1006FCBB0(a1);
}

void sub_1006FCB80(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006FCBB0(uint64_t a1)
{
  sub_1006FD364(a1);
  sub_10006DCAC(a1 + 144, *(a1 + 152));
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = a1 + 152;
  operator new();
}

void sub_1006FD298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_100010250(va);
  sub_100004A34(v16);
  _Unwind_Resume(a1);
}

unint64_t sub_1006FD364(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_101FBA978, memory_order_acquire) & 1) == 0)
  {
    v9 = a1;
    v10 = __cxa_guard_acquire(&qword_101FBA978);
    a1 = v9;
    if (v10)
    {
      cf[0] = @"NRSlicing";
      cf[1] = @"ResetNetworkSlicingAfterUpgrade";
      qword_101FBA968 = 0;
      unk_101FBA970 = 0;
      qword_101FBA960 = 0;
      sub_10005B328(&qword_101FBA960, cf, &v13, 2uLL);
      __cxa_atexit(sub_10041F938, &qword_101FBA960, &_mh_execute_header);
      __cxa_guard_release(&qword_101FBA978);
      a1 = v9;
    }
  }

  cf[0] = 0;
  (*(**(a1 + 128) + 104))(cf, *(a1 + 128), *(**(a1 + 64) + 52), 1, &qword_101FBA960, 0, 0);
  if (!cf[0])
  {
    goto LABEL_10;
  }

  v1 = CFGetTypeID(cf[0]);
  TypeID = CFNumberGetTypeID();
  v3 = cf[0];
  if (v1 != TypeID)
  {
    LOBYTE(v11) = 0;
    if (!cf[0])
    {
      goto LABEL_11;
    }

    v6 = CFGetTypeID(cf[0]);
    if (v6 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v11, v3, v7);
      v3 = v11;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v11 = 0;
  if (cf[0])
  {
    v4 = CFGetTypeID(cf[0]);
    if (v4 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&v11, v3, v5);
      v3 = v11;
      goto LABEL_11;
    }

LABEL_10:
    v3 = 0;
  }

LABEL_11:
  sub_10000A1EC(cf);
  return v3;
}

BOOL sub_1006FD570(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_101FBA998, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    v4 = __cxa_guard_acquire(&qword_101FBA998);
    a1 = v3;
    if (v4)
    {
      BOOLean[0] = @"NRSlicing";
      BOOLean[1] = @"ShowNetworkSlicingSwitch";
      qword_101FBA988 = 0;
      unk_101FBA990 = 0;
      qword_101FBA980 = 0;
      sub_10005B328(&qword_101FBA980, BOOLean, &v7, 2uLL);
      __cxa_atexit(sub_10041F938, &qword_101FBA980, &_mh_execute_header);
      __cxa_guard_release(&qword_101FBA998);
      a1 = v3;
    }
  }

  BOOLean[0] = 0;
  (*(**(a1 + 128) + 104))(&v5, *(a1 + 128), *(**(a1 + 64) + 52), 1, &qword_101FBA980, kCFBooleanTrue, 0);
  sub_10002FE1C(BOOLean, &v5);
  sub_10000A1EC(&v5);
  if (BOOLean[0])
  {
    v1 = CFBooleanGetValue(BOOLean[0]) == 1;
  }

  else
  {
    v1 = 0;
  }

  sub_100045C8C(BOOLean);
  return v1;
}

uint64_t sub_1006FD738(uint64_t a1)
{
  sub_1006FD570(a1);
  v2 = sub_1006FD948(a1);
  *(a1 + 113) = v2;
  v3 = *(a1 + 144);
  if (v3 == (a1 + 152))
  {
LABEL_13:
    v13 = *(a1 + 40);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v14)
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 64));
      v18 = 136315394;
      v19 = v16;
      v20 = 2080;
      v21 = " ";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sNetwork Slicing Switch: Cumulative state is OFF", &v18, 0x16u);
      return 0;
    }
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 10);
      if (v5 == 2)
      {
        v10 = *(a1 + 40);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          return 1;
        }

        v17 = PersonalityInfo::logPrefix(**(a1 + 64));
        v18 = 136315394;
        v19 = v17;
        v20 = 2080;
        v21 = " ";
        v12 = "#I %s%sNetwork Slicing Switch: Cumulative state is ON based on user preferences";
        goto LABEL_17;
      }

      v6 = v5 == 0;
      v7 = v3[1];
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
          v8 = v3[2];
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v4 |= v6;
      v3 = v8;
    }

    while (v8 != (a1 + 152));
    if ((v4 & v2 & 1) == 0)
    {
      goto LABEL_13;
    }

    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(**(a1 + 64));
      v18 = 136315394;
      v19 = v11;
      v20 = 2080;
      v21 = " ";
      v12 = "#I %s%sNetwork Slicing Switch: Cumulative state is ON based on carrier default";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, &v18, 0x16u);
    }

    return 1;
  }

  return result;
}

uint64_t sub_1006FD948(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_101FBA9B8, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v7 = __cxa_guard_acquire(&qword_101FBA9B8);
    a1 = v6;
    if (v7)
    {
      cf[0] = @"NRSlicing";
      cf[1] = @"EnableNetworkSlicingByDefault";
      qword_101FBA9A8 = 0;
      unk_101FBA9B0 = 0;
      qword_101FBA9A0 = 0;
      sub_10005B328(&qword_101FBA9A0, cf, &v10, 2uLL);
      __cxa_atexit(sub_10041F938, &qword_101FBA9A0, &_mh_execute_header);
      __cxa_guard_release(&qword_101FBA9B8);
      a1 = v6;
    }
  }

  v1 = 1;
  (*(**(a1 + 128) + 104))(cf, *(a1 + 128), *(**(a1 + 64) + 52), 1, &qword_101FBA9A0, 0, 0);
  v2 = cf[0];
  v8 = 1;
  if (cf[0])
  {
    v3 = CFGetTypeID(cf[0]);
    if (v3 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v8, v2, v4);
      v1 = v8;
    }

    else
    {
      v1 = 1;
    }
  }

  sub_10000A1EC(cf);
  return v1 & 1;
}

void sub_1006FDB04(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 64));
    *v45 = 136315394;
    *&v45[4] = v3;
    v46 = 2080;
    v47 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sNetwork Slicing Switch: Reset", v45, 0x16u);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v5 = ServiceMap;
  v7 = v6;
  if (v6 < 0)
  {
    v8 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
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
  *v45 = v7;
  v11 = sub_100009510(&v5[1].__m_.__sig, v45);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v5);
  v12 = 0;
  v14 = 1;
LABEL_11:
  v15 = kPhoneServicesWalletDomain;
  (*(*v13 + 32))(v13, **(a1 + 64) + 24, @"SlicingCategories", kPhoneServicesWalletDomain, 0, 1);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  v16 = Registry::getServiceMap(*(a1 + 48));
  v17 = v16;
  v18 = v6;
  if (v6 < 0)
  {
    v19 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v20 = 5381;
    do
    {
      v18 = v20;
      v21 = *v19++;
      v20 = (33 * v20) ^ v21;
    }

    while (v21);
  }

  std::mutex::lock(v16);
  *v45 = v18;
  v22 = sub_100009510(&v17[1].__m_.__sig, v45);
  if (v22)
  {
    v24 = v22[3];
    v23 = v22[4];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v17);
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v23);
      v25 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v24 = 0;
  }

  std::mutex::unlock(v17);
  v23 = 0;
  v25 = 1;
LABEL_21:
  (*(*v24 + 32))(v24, **(a1 + 64) + 24, @"SlicingCategories2", v15, 0, 1);
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  v26 = Registry::getServiceMap(*(a1 + 48));
  v27 = v26;
  v28 = v6;
  if (v6 < 0)
  {
    v29 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v30 = 5381;
    do
    {
      v28 = v30;
      v31 = *v29++;
      v30 = (33 * v30) ^ v31;
    }

    while (v31);
  }

  std::mutex::lock(v26);
  *v45 = v28;
  v32 = sub_100009510(&v27[1].__m_.__sig, v45);
  if (v32)
  {
    v34 = v32[3];
    v33 = v32[4];
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v27);
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v33);
      v35 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v34 = 0;
  }

  std::mutex::unlock(v27);
  v33 = 0;
  v35 = 1;
LABEL_31:
  (*(*v34 + 32))(v34, **(a1 + 64) + 24, @"SlicingWasDiscoveredByApp", v15, 0, 1);
  if ((v35 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  v36 = Registry::getServiceMap(*(a1 + 48));
  v37 = v36;
  if (v6 < 0)
  {
    v38 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v39 = 5381;
    do
    {
      v6 = v39;
      v40 = *v38++;
      v39 = (33 * v39) ^ v40;
    }

    while (v40);
  }

  std::mutex::lock(v36);
  *v45 = v6;
  v41 = sub_100009510(&v37[1].__m_.__sig, v45);
  if (v41)
  {
    v43 = v41[3];
    v42 = v41[4];
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v37);
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v42);
      v44 = 0;
      goto LABEL_41;
    }
  }

  else
  {
    v43 = 0;
  }

  std::mutex::unlock(v37);
  v42 = 0;
  v44 = 1;
LABEL_41:
  (*(*v43 + 32))(v43, **(a1 + 64) + 24, @"SlicingWasDiscoveredByApp2", v15, 0, 1);
  if ((v44 & 1) == 0)
  {
    sub_100004A34(v42);
  }

  sub_1006FCBB0(a1);
}

void sub_1006FDFCC(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006FE01C(uint64_t a1, unint64_t a2, int a3)
{
  v17 = a2;
  if (a3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(a1 + 152);
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = a1 + 144;
  v8 = a1 + 152;
  do
  {
    v9 = *(v6 + 32);
    v10 = v9 >= a2;
    v11 = v9 < a2;
    if (v10)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * v11);
  }

  while (v6);
  if (v8 != a1 + 152 && *(v8 + 32) <= a2)
  {
    v14 = *(v8 + 40);
    if (v14 != v5)
    {
      v15 = *(a1 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = PersonalityInfo::logPrefix(**(a1 + 64));
        *buf = 136316162;
        *&buf[4] = v16;
        v19 = 2080;
        v20 = " ";
        v21 = 2048;
        v22 = a2;
        v23 = 2080;
        v24 = sub_10060FFC0(v14);
        v25 = 2080;
        v26 = sub_10060FFC0(v5);
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sNetwork Slicing Switch: changed user preference for category %lld from %s to %s", buf, 0x34u);
      }

      *buf = &v17;
      *(sub_100701064(v7, &v17, &unk_101802C98, buf) + 10) = v5;
      sub_1006FE238(a1);
      *(a1 + 112) = sub_1006FD738(a1);
    }
  }

  else
  {
LABEL_12:
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PersonalityInfo::logPrefix(**(a1 + 64));
      *buf = 136315650;
      *&buf[4] = v13;
      v19 = 2080;
      v20 = " ";
      v21 = 2048;
      v22 = a2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sCategory %lld unknown/undiscovered", buf, 0x20u);
    }
  }
}

const void **sub_1006FE238(uint64_t a1)
{
  v2 = sub_1006FD364(a1);
  theArray = 0;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    v4 = theArray;
    theArray = Mutable;
    __p[0] = v4;
    sub_1000279DC(__p);
  }

  v5 = *(a1 + 144);
  if (v5 != (a1 + 152))
  {
    do
    {
      valuePtr = *(v5 + 2);
      theDict = 0;
      v6 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v6)
      {
        v7 = theDict;
        theDict = v6;
        __p[0] = v7;
        sub_1000296E0(__p);
      }

      v50 = 0;
      v50 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
      CFDictionarySetValue(theDict, @"id", v50);
      v8 = *(a1 + 168);
      if (v8)
      {
        v11 = *(v8 + 8);
        v9 = v8 + 8;
        v10 = v11;
        if (v11)
        {
          v12 = v9;
          do
          {
            v13 = *(v10 + 32);
            v14 = v13 >= valuePtr;
            v15 = v13 < valuePtr;
            if (v14)
            {
              v12 = v10;
            }

            v10 = *(v10 + 8 * v15);
          }

          while (v10);
          if (v12 != v9 && valuePtr >= *(v12 + 32))
          {
            v16 = theDict;
            if (*(v12 + 63) < 0)
            {
              sub_100005F2C(v47, *(v12 + 40), *(v12 + 48));
            }

            else
            {
              *v47 = *(v12 + 40);
              v48 = *(v12 + 56);
            }

            if (SHIBYTE(v48) < 0)
            {
              sub_100005F2C(__dst, v47[0], v47[1]);
            }

            else
            {
              *__dst = *v47;
              v56 = v48;
            }

            v54 = 0;
            if (SHIBYTE(v56) < 0)
            {
              sub_100005F2C(__p, __dst[0], __dst[1]);
            }

            else
            {
              *__p = *__dst;
              v58 = v56;
            }

            v59 = 0;
            if (ctu::cf::convert_copy())
            {
              v17 = v54;
              v54 = v59;
              v60[0] = v17;
              sub_100005978(v60);
            }

            if (SHIBYTE(v58) < 0)
            {
              operator delete(__p[0]);
            }

            value = v54;
            v54 = 0;
            sub_100005978(&v54);
            if (SHIBYTE(v56) < 0)
            {
              operator delete(__dst[0]);
            }

            CFDictionarySetValue(v16, @"name", value);
            sub_100005978(&value);
            if (SHIBYTE(v48) < 0)
            {
              operator delete(v47[0]);
            }
          }
        }
      }

      if (DWORD2(valuePtr))
      {
        v18 = theDict;
        if (DWORD2(valuePtr) == 2)
        {
          v19 = v2 + 1;
        }

        else
        {
          v19 = -v2;
        }

        __dst[0] = 0;
        LODWORD(__p[0]) = v19;
        v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, __p);
        if (v20)
        {
          v21 = __dst[0];
          __dst[0] = v20;
          __p[0] = v21;
          sub_100029A48(__p);
        }

        v60[0] = __dst[0];
        __dst[0] = 0;
        sub_100029A48(__dst);
        CFDictionarySetValue(v18, @"user-preference", v60[0]);
        sub_100029A48(v60);
      }

      CFArrayAppendValue(theArray, theDict);
      sub_100029A48(&v50);
      sub_1000296E0(&theDict);
      v22 = v5[1];
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
          v23 = v5[2];
          v24 = *v23 == v5;
          v5 = v23;
        }

        while (!v24);
      }

      v5 = v23;
    }

    while (v23 != (a1 + 152));
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v26 = ServiceMap;
  v28 = v27;
  if (v27 < 0)
  {
    v29 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
    v30 = 5381;
    do
    {
      v28 = v30;
      v31 = *v29++;
      v30 = (33 * v30) ^ v31;
    }

    while (v31);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v28;
  v32 = sub_100009510(&v26[1].__m_.__sig, __p);
  if (v32)
  {
    v34 = v32[3];
    v33 = v32[4];
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v26);
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v33);
      v35 = 0;
      goto LABEL_53;
    }
  }

  else
  {
    v34 = 0;
  }

  std::mutex::unlock(v26);
  v33 = 0;
  v35 = 1;
LABEL_53:
  v36 = kPhoneServicesWalletDomain;
  (*(*v34 + 32))(v34, **(a1 + 64) + 24, @"SlicingCategories", kPhoneServicesWalletDomain, 0, 1);
  if ((v35 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  v37 = Registry::getServiceMap(*(a1 + 48));
  v38 = v37;
  if (v27 < 0)
  {
    v39 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
    v40 = 5381;
    do
    {
      v27 = v40;
      v41 = *v39++;
      v40 = (33 * v40) ^ v41;
    }

    while (v41);
  }

  std::mutex::lock(v37);
  __p[0] = v27;
  v42 = sub_100009510(&v38[1].__m_.__sig, __p);
  if (v42)
  {
    v44 = v42[3];
    v43 = v42[4];
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v38);
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v43);
      v45 = 0;
      goto LABEL_63;
    }
  }

  else
  {
    v44 = 0;
  }

  std::mutex::unlock(v38);
  v43 = 0;
  v45 = 1;
LABEL_63:
  (*(*v44 + 16))(v44, **(a1 + 64) + 24, @"SlicingCategories2", theArray, v36, 0, 1, 0);
  if ((v45 & 1) == 0)
  {
    sub_100004A34(v43);
  }

  return sub_1000279DC(&theArray);
}

void sub_1006FE764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, const void *a18, uint64_t a19, uint64_t a20, const void *a21, const void *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_100005978(&a22);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_100029A48(&a17);
  sub_1000296E0(&a18);
  sub_1000279DC(&a21);
  _Unwind_Resume(a1);
}

void sub_1006FE850(uint64_t a1)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = v14;
  LOBYTE(v10) = *(a1 + 104);
  LOBYTE(v11) = *(a1 + 112);
  BYTE4(v11) = *(a1 + 108) == 2;
  LODWORD(v12) = *(a1 + 116);
  v14[0] = 0;
  v14[1] = 0;
  v2 = *(a1 + 144);
  v3 = (a1 + 152);
  if (v2 != (a1 + 152))
  {
    do
    {
      v4 = *(v2 + 10);
      if (v4 == 1)
      {
        v5 = 0;
      }

      else if (v4 == 2)
      {
        v5 = &_mh_execute_header;
      }

      else
      {
        v5 = *(a1 + 113) << 32;
      }

      v9[0] = v2[4];
      v9[1] = v5 | v4;
      sub_100701138(&v13, v9, v9);
      v6 = v2[1];
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
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  sub_100701204();
}

void sub_1006FE9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10006DCAC(v18 + 24, a18);
  _Unwind_Resume(a1);
}

uint64_t sub_1006FE9F8(uint64_t result)
{
  v1 = **(result + 64);
  if (*(v1 + 48) == 1)
  {
    phoneservices::submitSwitchAnalytics(result + 48, 4u, *(v1 + 52), *(result + 104), *(result + 112));
  }

  return result;
}

BOOL sub_1006FEA28(uint64_t a1)
{
  v2 = **(a1 + 64);
  if (*(v2 + 48) == 1 && (v3 = *(a1 + 108)) != 0)
  {
    if (((v3 == 2) & *(a1 + 112)) != 0)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 116);
  if (v4 != v5)
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = PersonalityInfo::logPrefix(v2);
      v10 = 2080;
      v11 = " ";
      v12 = 2080;
      v13 = asString();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sNetwork Slicing feature re-evaluated to %s", &v8, 0x20u);
    }

    *(a1 + 116) = v4;
  }

  return v4 != v5;
}

void sub_1006FEB64(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 64));
    v4 = 136315394;
    v5 = v3;
    v6 = 2080;
    v7 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%spersonality config changed", &v4, 0x16u);
  }

  sub_1006FCBB0(a1);
}

void sub_1006FEC58(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 64));
    v4 = 136315394;
    v5 = v3;
    v6 = 2080;
    v7 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%spersonal wallet changed", &v4, 0x16u);
  }

  sub_1006FCBB0(a1);
}

const void **sub_1006FED4C(const void **result, uint64_t a2, void *a3, void *a4)
{
  v4 = result;
  v5 = a3 + 1;
  v6 = *a3;
  if (*a3 == a3 + 1)
  {
    v33 = *a4;
    if (result[21] == *a4)
    {
      return result;
    }

    goto LABEL_48;
  }

  v7 = a2;
  v36 = a4;
  v8 = 0;
  v9 = 0;
  v10 = result + 19;
  v39 = kPhoneServicesWalletDomain;
  v38 = a3 + 1;
  do
  {
    v11 = v6[4];
    v42 = 0;
    v41 = 0;
    sub_1006FF228(v4, v11, &v42, &v41);
    if (!v41)
    {
      v12 = v4[5];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = PersonalityInfo::logPrefix(*v4[8]);
        if (*(v7 + 23) >= 0)
        {
          v14 = v7;
        }

        else
        {
          v14 = *v7;
        }

        *buf = 136315906;
        *&buf[4] = v13;
        v44 = 2080;
        v45 = " ";
        v46 = 2080;
        v47 = v14;
        v48 = 2048;
        v49 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sSlicing was discovered for app: %s category %llu", buf, 0x2Au);
      }

      if ((v8 & 1) == 0)
      {
        sub_1003B76A4(v4, v7);
      }

      v8 = 1;
      v42 = 1;
    }

    v15 = *v10;
    if (!*v10)
    {
      goto LABEL_20;
    }

    v16 = v4 + 19;
    do
    {
      v17 = v15[4];
      v18 = v17 >= v11;
      v19 = v17 < v11;
      if (v18)
      {
        v16 = v15;
      }

      v15 = v15[v19];
    }

    while (v15);
    if (v16 == v10 || v11 < v16[4])
    {
LABEL_20:
      *buf = v11;
      *&buf[8] = 0;
      sub_100701460((v4 + 18), buf, buf);
      v9 = 1;
    }

    if (v42 == 1)
    {
      v40 = 0;
      sub_1003B8194(v11, &v40);
      if ((atomic_load_explicit(&qword_101FBA9D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA9D8))
      {
        *buf = @"SlicingWasDiscoveredByApp2";
        qword_101FBA9C8 = 0;
        unk_101FBA9D0 = 0;
        qword_101FBA9C0 = 0;
        sub_10005B328(&qword_101FBA9C0, buf, &buf[8], 1uLL);
        __cxa_atexit(sub_10041F938, &qword_101FBA9C0, &_mh_execute_header);
        __cxa_guard_release(&qword_101FBA9D8);
        v7 = a2;
        v5 = v38;
      }

      ServiceMap = Registry::getServiceMap(v4[6]);
      v21 = ServiceMap;
      if (v22 < 0)
      {
        v23 = (v22 & 0x7FFFFFFFFFFFFFFFLL);
        v24 = 5381;
        do
        {
          v22 = v24;
          v25 = *v23++;
          v24 = (33 * v24) ^ v25;
        }

        while (v25);
      }

      std::mutex::lock(ServiceMap);
      *buf = v22;
      v26 = sub_100009510(&v21[1].__m_.__sig, buf);
      if (v26)
      {
        v27 = v26[3];
        v28 = v26[4];
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v21);
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          v7 = a2;
          v5 = v38;
          sub_100004A34(v28);
          v29 = 0;
LABEL_31:
          (*(*v27 + 16))(v27, *v4[8] + 24, v40, kCFBooleanTrue, v39, &qword_101FBA9C0, 1, 0);
          if ((v29 & 1) == 0)
          {
            sub_100004A34(v28);
          }

          sub_100005978(&v40);
          goto LABEL_34;
        }
      }

      else
      {
        v27 = 0;
      }

      std::mutex::unlock(v21);
      v28 = 0;
      v29 = 1;
      goto LABEL_31;
    }

LABEL_34:
    result = sub_10000A1EC(&v41);
    v30 = v6[1];
    if (v30)
    {
      do
      {
        v31 = v30;
        v30 = *v30;
      }

      while (v30);
    }

    else
    {
      do
      {
        v31 = v6[2];
        v32 = *v31 == v6;
        v6 = v31;
      }

      while (!v32);
    }

    v6 = v31;
  }

  while (v31 != v5);
  a4 = v36;
  v33 = *v36;
  if (v4[21] != *v36)
  {
LABEL_48:
    v34 = a4[1];
    if (v34)
    {
      atomic_fetch_add_explicit(v34 + 1, 1uLL, memory_order_relaxed);
    }

    v35 = v4[22];
    v4[21] = v33;
    v4[22] = v34;
    if (v35)
    {
      sub_100004A34(v35);
    }

    goto LABEL_52;
  }

  if (v9)
  {
LABEL_52:
    sub_1006FE238(v4);
    return (*(*v4 + 13))(v4, 1, 0);
  }

  if (v8)
  {
    return (*(*v4 + 13))(v4, 1, 0);
  }

  return result;
}

void sub_1006FF1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, const void *);
  __cxa_guard_abort(&qword_101FBA9D8);
  sub_100005978(va);
  sub_10000A1EC(va1);
  _Unwind_Resume(a1);
}

const void **sub_1006FF228@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, _BYTE *a3@<X3>, const __CFString **a4@<X8>)
{
  v30 = 0;
  sub_1003B8194(a2, &v30);
  if ((atomic_load_explicit(&qword_101FBA9F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA9F8))
  {
    v31 = @"SlicingWasDiscoveredByApp2";
    qword_101FBA9E8 = 0;
    unk_101FBA9F0 = 0;
    qword_101FBA9E0 = 0;
    sub_10005B328(&qword_101FBA9E0, &v31, &v32, 1uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA9E0, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA9F8);
  }

  *a4 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v8 = ServiceMap;
  v10 = v9;
  if (v9 < 0)
  {
    v11 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
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
  v31 = v10;
  v14 = sub_100009510(&v8[1].__m_.__sig, &v31);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v8);
  v15 = 0;
  v17 = 1;
LABEL_10:
  v18 = kPhoneServicesWalletDomain;
  (*(*v16 + 24))(v16, **(a1 + 64) + 24, v30, kPhoneServicesWalletDomain, &qword_101FBA9E0, 1);
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  if (!*a4)
  {
    if ((atomic_load_explicit(&qword_101FBAA18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBAA18))
    {
      v31 = @"SlicingWasDiscoveredByApp";
      qword_101FBAA08 = 0;
      unk_101FBAA10 = 0;
      qword_101FBAA00 = 0;
      sub_10005B328(&qword_101FBAA00, &v31, &v32, 1uLL);
      __cxa_atexit(sub_10041F938, &qword_101FBAA00, &_mh_execute_header);
      __cxa_guard_release(&qword_101FBAA18);
    }

    v19 = Registry::getServiceMap(*(a1 + 48));
    v20 = v19;
    if (v9 < 0)
    {
      v21 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
      v22 = 5381;
      do
      {
        v9 = v22;
        v23 = *v21++;
        v22 = (33 * v22) ^ v23;
      }

      while (v23);
    }

    std::mutex::lock(v19);
    v31 = v9;
    v24 = sub_100009510(&v20[1].__m_.__sig, &v31);
    if (v24)
    {
      v26 = v24[3];
      v25 = v24[4];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v20);
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v25);
        v27 = 0;
LABEL_22:
        (*(*v26 + 24))(&v29, v26, **(a1 + 64) + 24, v30, v18, &qword_101FBA9E0, 1);
        if (&v29 != a4)
        {
          v31 = *a4;
          *a4 = v29;
          v29 = 0;
          sub_10000A1EC(&v31);
        }

        sub_10000A1EC(&v29);
        if ((v27 & 1) == 0)
        {
          sub_100004A34(v25);
        }

        if (*a4)
        {
          *a3 = 1;
        }

        return sub_100005978(&v30);
      }
    }

    else
    {
      v26 = 0;
    }

    std::mutex::unlock(v20);
    v25 = 0;
    v27 = 1;
    goto LABEL_22;
  }

  return sub_100005978(&v30);
}

void sub_1006FF5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_guard_abort(&qword_101FBAA18);
  sub_10000A1EC(v3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void sub_1006FF688(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v13 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v13);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  (*(*v11 + 40))(v11, kAlertDialogLocalizationTable, a2, 0);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_1006FF7B0(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1006FF7CC(uint64_t a1)
{
  v27 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v3 = ServiceMap;
  v5 = v4;
  if (v4 < 0)
  {
    v6 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v28 = v5;
  v9 = sub_100009510(&v3[1].__m_.__sig, &v28);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v3);
  v10 = 0;
  v12 = 1;
LABEL_9:
  v13 = kPhoneServicesWalletDomain;
  (*(*v11 + 24))(&v27, v11, **(a1 + 64) + 24, @"SlicingWasDiscoveredByApp2", kPhoneServicesWalletDomain, 0, 1);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  if (v27)
  {
    v14 = 1;
    goto LABEL_24;
  }

  v15 = Registry::getServiceMap(*(a1 + 48));
  v16 = v15;
  if (v4 < 0)
  {
    v17 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v18 = 5381;
    do
    {
      v4 = v18;
      v19 = *v17++;
      v18 = (33 * v18) ^ v19;
    }

    while (v19);
  }

  std::mutex::lock(v15);
  v28 = v4;
  v20 = sub_100009510(&v16[1].__m_.__sig, &v28);
  if (!v20)
  {
    v22 = 0;
    goto LABEL_20;
  }

  v22 = v20[3];
  v21 = v20[4];
  if (!v21)
  {
LABEL_20:
    std::mutex::unlock(v16);
    v21 = 0;
    v23 = 1;
    goto LABEL_21;
  }

  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v16);
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v21);
  v23 = 0;
LABEL_21:
  (*(*v22 + 24))(&v26, v22, **(a1 + 64) + 24, @"SlicingWasDiscoveredByApp", v13, 0, 1);
  v24 = v27;
  v27 = v26;
  v28 = v24;
  v26 = 0;
  sub_10000A1EC(&v28);
  sub_10000A1EC(&v26);
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  v14 = v27 != 0;
LABEL_24:
  sub_10000A1EC(&v27);
  return v14;
}

void sub_1006FFA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if ((v6 & 1) == 0)
  {
    sub_100004A34(v5);
  }

  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

BOOL sub_1006FFA7C(uint64_t a1)
{
  if (*(a1 + 104))
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  v2 = *(a1 + 108);
  if (v2 != v1)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(**(a1 + 64));
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = " ";
      v11 = 2080;
      v12 = asString();
      v13 = 2080;
      v14 = asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sNetwork slicing account/network support is changing from %s to %s", &v7, 0x2Au);
    }

    *(a1 + 108) = v1;
  }

  return v2 != v1;
}

BOOL sub_1006FFB98(uint64_t a1)
{
  if (*(a1 + 104) != 1)
  {
    goto LABEL_10;
  }

  if (sub_1006FF7CC(a1))
  {
    if (sub_1006FD570(a1))
    {
      v2 = 2;
      goto LABEL_11;
    }

    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(**(a1 + 64));
      v13 = 136315394;
      v14 = v6;
      v15 = 2080;
      v16 = " ";
      v5 = "#I %s%sEither Network Slicing switch support is not present or it is set to false";
      goto LABEL_9;
    }
  }

  else
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(**(a1 + 64));
      v13 = 136315394;
      v14 = v4;
      v15 = 2080;
      v16 = " ";
      v5 = "#I %s%sNetwork Slicing was not yet discovered - hide settings";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, &v13, 0x16u);
    }
  }

LABEL_10:
  v2 = 1;
LABEL_11:
  v7 = *(a1 + 120);
  if (v7 != v2)
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PersonalityInfo::logPrefix(**(a1 + 64));
      v10 = sub_100610010(*(a1 + 120));
      v11 = sub_100610010(v2);
      v13 = 136315906;
      v14 = v9;
      v15 = 2080;
      v16 = " ";
      v17 = 2080;
      v18 = v10;
      v19 = 2080;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sNetwork Slicing switch support is changing from %s to %s", &v13, 0x2Au);
    }

    *(a1 + 120) = v2;
  }

  return v7 != v2;
}

const void **sub_1006FFD94@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  theDict = 0;
  v4 = *(a1 + 120);
  if ((v4 - 2) < 2)
  {
    v5 = kCFAllocatorDefault;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v11 = theDict;
      theDict = Mutable;
      *valuePtr = v11;
      sub_1000296E0(valuePtr);
    }

    CFDictionarySetValue(theDict, kCTCapabilityCanChangeSetting, kCFBooleanTrue);
    v8 = 1;
    v9 = 1;
  }

  else if (v4 == 4)
  {
    v5 = kCFAllocatorDefault;
    v12 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v12)
    {
      v13 = theDict;
      theDict = v12;
      *valuePtr = v13;
      sub_1000296E0(valuePtr);
    }

    CFDictionarySetValue(theDict, kCTCapabilityCanChangeSettingEnableStillProvisioning, kCFBooleanTrue);
    v9 = 0;
    v8 = 1;
  }

  else
  {
    if (v4 != 5)
    {
      v9 = 0;
      v8 = 0;
      v59 = 0;
      goto LABEL_72;
    }

    v5 = kCFAllocatorDefault;
    v6 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v6)
    {
      v7 = theDict;
      theDict = v6;
      *valuePtr = v7;
      sub_1000296E0(valuePtr);
    }

    CFDictionarySetValue(theDict, kCTCapabilityCannotChangeSettingNeedToCallCarrier, kCFBooleanTrue);
    v8 = 0;
    v9 = 0;
  }

  if (theDict)
  {
    v71 = 0;
    v14 = CFArrayCreateMutable(v5, 0, &kCFTypeArrayCallBacks);
    v61 = v8;
    v62 = v9;
    v63 = a2;
    if (v14)
    {
      v15 = v71;
      v71 = v14;
      *valuePtr = v15;
      sub_1000279DC(valuePtr);
    }

    v16 = *(a1 + 144);
    v17 = (a1 + 152);
    if (v16 != (a1 + 152))
    {
      v18 = kCTNetworkSlicingCategoryID;
      v19 = kCTNetworkSlicingCategoryName;
      v20 = &kCFTypeDictionaryKeyCallBacks;
      v21 = &kCFTypeDictionaryValueCallBacks;
      v22 = kCTNetworkSlicingCategoryState;
      v23 = @"GENRE_FOR_SLICING_GENERIC_%@";
      v64 = v5;
      do
      {
        v70 = 0;
        v24 = CFDictionaryCreateMutable(v5, 0, v20, v21);
        if (v24)
        {
          v25 = v70;
          v70 = v24;
          *valuePtr = v25;
          sub_1000296E0(valuePtr);
        }

        v69 = 0;
        v69 = CFNumberCreate(0, kCFNumberLongLongType, v16 + 4);
        CFDictionarySetValue(v70, v18, v69);
        value = 0;
        v26 = *(a1 + 168);
        if (!v26)
        {
          goto LABEL_47;
        }

        v29 = *(v26 + 8);
        v27 = v26 + 8;
        v28 = v29;
        if (!v29)
        {
          goto LABEL_47;
        }

        v30 = v16[4];
        v31 = v27;
        do
        {
          v32 = *(v28 + 32);
          v33 = v32 >= v30;
          v34 = v32 < v30;
          if (v33)
          {
            v31 = v28;
          }

          v28 = *(v28 + 8 * v34);
        }

        while (v28);
        if (v31 == v27 || v30 < *(v31 + 32))
        {
          goto LABEL_47;
        }

        if (*(v31 + 63) < 0)
        {
          sub_100005F2C(__dst, *(v31 + 40), *(v31 + 48));
        }

        else
        {
          *__dst = *(v31 + 40);
          v66 = *(v31 + 56);
        }

        if (SHIBYTE(v66) < 0)
        {
          sub_100005F2C(__p, __dst[0], __dst[1]);
        }

        else
        {
          *__p = *__dst;
          v75 = v66;
        }

        v73 = 0;
        if (SHIBYTE(v75) < 0)
        {
          sub_100005F2C(valuePtr, __p[0], __p[1]);
        }

        else
        {
          *valuePtr = *__p;
          *&valuePtr[16] = v75;
        }

        v76 = 0;
        if (ctu::cf::convert_copy())
        {
          v35 = v73;
          v73 = v76;
          v77 = v35;
          sub_100005978(&v77);
        }

        if ((valuePtr[23] & 0x80000000) != 0)
        {
          operator delete(*valuePtr);
        }

        v67 = v73;
        v73 = 0;
        sub_100005978(&v73);
        if (SHIBYTE(v75) < 0)
        {
          operator delete(__p[0]);
        }

        v36 = v67;
        *valuePtr = value;
        v67 = 0;
        value = v36;
        sub_100005978(valuePtr);
        sub_100005978(&v67);
        if (SHIBYTE(v66) < 0)
        {
          operator delete(__dst[0]);
        }

        if (!value)
        {
LABEL_47:
          if (v16[4] == -1)
          {
            *valuePtr = @"Managed Apps";
            sub_10021D11C(&value, valuePtr);
          }

          else
          {
            v77 = 0;
            sub_1006FF688(a1, v23);
            v76 = 0;
            v37 = v16[4];
            __p[0] = 0;
            *valuePtr = v37;
            v38 = CFNumberCreate(v5, kCFNumberLongLongType, valuePtr);
            if (v38)
            {
              v39 = __p[0];
              __p[0] = v38;
              *valuePtr = v39;
              sub_100029A48(valuePtr);
            }

            v76 = __p[0];
            __p[0] = 0;
            sub_100029A48(__p);
            if (v77)
            {
              StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(0, 0, @"%@ Apps", v77, 0, v76);
              v41 = value;
              value = StringWithValidatedFormat;
              *valuePtr = v41;
              sub_100005978(valuePtr);
            }

            else
            {
              v42 = v17;
              v43 = v22;
              v44 = v19;
              v45 = v18;
              v46 = v21;
              v47 = v20;
              v48 = v23;
              v49 = *(a1 + 40);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                v58 = PersonalityInfo::logPrefix(**(a1 + 64));
                *valuePtr = 136315394;
                *&valuePtr[4] = v58;
                *&valuePtr[12] = 2080;
                *&valuePtr[14] = " ";
                _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "#E %s%sGENRE_FOR_SLICING_GENERIC is empty", valuePtr, 0x16u);
              }

              v50 = CFStringCreateWithFormat(0, 0, @"%@ Apps", v76);
              v23 = v48;
              v51 = value;
              value = v50;
              *valuePtr = v51;
              sub_100005978(valuePtr);
              v20 = v47;
              v21 = v46;
              v18 = v45;
              v19 = v44;
              v22 = v43;
              v17 = v42;
              v5 = v64;
            }

            sub_100029A48(&v76);
            sub_100005978(&v77);
          }
        }

        CFDictionarySetValue(v70, v19, value);
        v52 = *(v16 + 10);
        if (v52 == 1)
        {
          v53 = v70;
          v54 = &kCFBooleanFalse;
        }

        else
        {
          if (v52 == 2)
          {
            v53 = v70;
LABEL_62:
            v54 = &kCFBooleanTrue;
            goto LABEL_63;
          }

          v53 = v70;
          v54 = &kCFBooleanFalse;
          if (*(a1 + 112) == 1)
          {
            goto LABEL_62;
          }
        }

LABEL_63:
        CFDictionarySetValue(v53, v22, *v54);
        CFArrayAppendValue(v71, v70);
        sub_100005978(&value);
        sub_100029A48(&v69);
        sub_1000296E0(&v70);
        v55 = v16[1];
        if (v55)
        {
          do
          {
            v56 = v55;
            v55 = *v55;
          }

          while (v55);
        }

        else
        {
          do
          {
            v56 = v16[2];
            v57 = *v56 == v16;
            v16 = v56;
          }

          while (!v57);
        }

        v16 = v56;
      }

      while (v56 != v17);
    }

    CFDictionarySetValue(theDict, kCTNetworkSlicingCategories, v71);
    a2 = v63;
    v8 = v61;
    v9 = v62;
    sub_1000279DC(&v71);
  }

  v59 = 1;
LABEL_72:
  *a2 = v59;
  a2[1] = v8;
  a2[2] = v9;
  sub_100010180(a2 + 1, &theDict);
  return sub_1000296E0(&theDict);
}

void sub_100700494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, const void *a24, const void *a25, const void *a26, const void *a27, const void *a28, const void *a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_100005978(&a29);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  sub_100005978(&a24);
  sub_100029A48(&a25);
  sub_1000296E0(&a26);
  sub_1000279DC(&a27);
  sub_1000296E0(&a28);
  _Unwind_Resume(a1);
}

const void **sub_100700578@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0;
  v6 = 0;
  (*(*a1 + 56))(&v5);
  *a2 = a1[29] == 2;
  sub_100010024((a2 + 8), &v6);
  return sub_10001021C(&v6);
}

void sub_100700604(uint64_t a1, int a2, CFDictionaryRef *a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(**(a1 + 64));
    v8 = asStringBool(a2);
    v9 = sub_100610010(*(a1 + 120));
    *v17 = 136315906;
    *&v17[4] = v7;
    v18 = 2080;
    v19 = " ";
    v20 = 2080;
    v21 = v8;
    v22 = 2080;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%ssetEnabled(%s): Current 'Network Slicing canSet' status: %s", v17, 0x2Au);
  }

  v10 = *(a1 + 120);
  v11 = v10 > 5;
  v12 = (1 << v10) & 0x23;
  if (v11 || v12 == 0)
  {
    if (*a3)
    {
      Value = CFDictionaryGetValue(*a3, kCTNetworkSlicingCategoryID);
      if (Value && (v15 = Value, v16 = CFGetTypeID(Value), v16 == CFNumberGetTypeID()))
      {
        *v17 = 0;
        if (CFNumberGetValue(v15, kCFNumberLongLongType, v17))
        {
          sub_1006FE01C(a1, *v17, a2);
          (*(*a1 + 104))(a1, 1, 0);
        }

        else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_10177BD10(a1);
        }
      }

      else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10177BDB4(a1);
      }
    }

    else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177BE48(a1);
    }
  }
}

void sub_100700824(uint64_t a1, int a2, char a3)
{
  v6 = sub_1006FC6DC(a1);
  v7 = sub_1006FFA7C(a1);
  v8 = sub_1006FFB98(a1);
  v9 = *(a1 + 112);
  v10 = sub_1006FD738(a1);
  *(a1 + 112) = v10;
  v11 = sub_1006FEA28(a1);
  sub_10034CD9C(*(a1 + 80), 4, a2);
  if (v6 || v7 || v8 || v11 || v9 != v10 || (a3 & 1) != 0 || a2)
  {

    sub_1006FE850(a1);
  }
}

void sub_10070090C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 64));
    v4 = **(a1 + 64);
    v7 = *(v4 + 24);
    v5 = (v4 + 24);
    v6 = v7;
    v8 = *(v5 + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v5 + 1);
    }

    if (v9 < 0)
    {
      v5 = v6;
    }

    if (!v8)
    {
      v5 = "<invalid>";
    }

    *buf = 136315650;
    v43 = v3;
    v44 = 2080;
    v45 = " ";
    v46 = 2080;
    v47 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s== dump NetworkSlicingControl '%s'", buf, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 64));
    v11 = asStringBool(*(a1 + 104));
    *buf = 136315650;
    v43 = v10;
    v44 = 2080;
    v45 = " ";
    v46 = 2080;
    v47 = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | Carrier support: %s", buf, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = PersonalityInfo::logPrefix(**(a1 + 64));
    v13 = asString();
    *buf = 136315650;
    v43 = v12;
    v44 = 2080;
    v45 = " ";
    v46 = 2080;
    v47 = v13;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | Account/Network support: %s", buf, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = PersonalityInfo::logPrefix(**(a1 + 64));
    v15 = asStringBool(*(a1 + 112));
    *buf = 136315650;
    v43 = v14;
    v44 = 2080;
    v45 = " ";
    v46 = 2080;
    v47 = v15;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | Actual Network Slicing switch state: %s", buf, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = PersonalityInfo::logPrefix(**(a1 + 64));
    v17 = sub_100610010(*(a1 + 120));
    *buf = 136315650;
    v43 = v16;
    v44 = 2080;
    v45 = " ";
    v46 = 2080;
    v47 = v17;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | CanSet state: %s", buf, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v18 = PersonalityInfo::logPrefix(**(a1 + 64));
    v19 = asString();
    *buf = 136315650;
    v43 = v18;
    v44 = 2080;
    v45 = " ";
    v46 = 2080;
    v47 = v19;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | Final capability state: %s", buf, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v20 = PersonalityInfo::logPrefix(**(a1 + 64));
    v21 = asStringBool(*(a1 + 113));
    *buf = 136315650;
    v43 = v20;
    v44 = 2080;
    v45 = " ";
    v46 = 2080;
    v47 = v21;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | EnableByDefault: %s", buf, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v22 = PersonalityInfo::logPrefix(**(a1 + 64));
    v23 = *(a1 + 160);
    *buf = 136315650;
    v43 = v22;
    v44 = 2080;
    v45 = " ";
    v46 = 2048;
    v47 = v23;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | DiscoveredCategories: %zu items", buf, 0x20u);
  }

  v24 = *(a1 + 144);
  if (v24 != (a1 + 152))
  {
    do
    {
      v25 = *(a1 + 168);
      if (!v25)
      {
        goto LABEL_33;
      }

      v28 = *(v25 + 8);
      v26 = v25 + 8;
      v27 = v28;
      if (!v28)
      {
        goto LABEL_33;
      }

      v29 = v24[4];
      v30 = v26;
      do
      {
        v31 = *(v27 + 32);
        v32 = v31 >= v29;
        v33 = v31 < v29;
        if (v32)
        {
          v30 = v27;
        }

        v27 = *(v27 + 8 * v33);
      }

      while (v27);
      if (v30 != v26 && v29 >= *(v30 + 32))
      {
        v34 = (v30 + 40);
        if (*(v30 + 63) < 0)
        {
          v34 = *v34;
        }
      }

      else
      {
LABEL_33:
        v34 = "-";
      }

      v35 = *(a1 + 40);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = PersonalityInfo::logPrefix(**(a1 + 64));
        v37 = v24[4];
        v38 = sub_10060FFC0(*(v24 + 10));
        *buf = 136316162;
        v43 = v36;
        v44 = 2080;
        v45 = " ";
        v46 = 2048;
        v47 = v37;
        v48 = 2080;
        v49 = v38;
        v50 = 2080;
        v51 = v34;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s%s |   %llu : %s : '%s'", buf, 0x34u);
      }

      v39 = v24[1];
      if (v39)
      {
        do
        {
          v40 = v39;
          v39 = *v39;
        }

        while (v39);
      }

      else
      {
        do
        {
          v40 = v24[2];
          v41 = *v40 == v24;
          v24 = v40;
        }

        while (!v41);
      }

      v24 = v40;
    }

    while (v40 != (a1 + 152));
  }
}

void sub_100700F64(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100701038);
  __cxa_rethrow();
}

void sub_100700FA4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100700FF8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100701038(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_100701064(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
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

void *sub_100701138(uint64_t a1, unint64_t *a2, _OWORD *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_100701270(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_101E445E0;
  v3 = *a2;
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 24) = v3;
  sub_1007012E4((a1 + 48), a2 + 24);
  return a1;
}

void *sub_1007012E4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10070133C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10070133C(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1007013C4(v5, (v5 + 8), v4 + 4, v4 + 2);
      v6 = v4[1];
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
          v7 = v4[2];
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

uint64_t sub_1007013C4(uint64_t **a1, void *a2, unint64_t *a3, _OWORD *a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *sub_10010CB50(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *sub_100701460(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void *sub_100701CCC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  if (*result > 11)
  {
    if (v2 == 12)
    {
      v3 = "Missing cookie during client auth";
      return sub_10000501C(a2, v3);
    }

    if (v2 == 15)
    {
      v3 = "Certificate verification failed";
      return sub_10000501C(a2, v3);
    }

LABEL_8:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return result;
  }

  if (!v2)
  {
    v3 = "Invalid response";
    return sub_10000501C(a2, v3);
  }

  if (v2 != 11)
  {
    goto LABEL_8;
  }

  v3 = "Empty client Auth response";
  return sub_10000501C(a2, v3);
}

const char *sub_100701D34(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 0x12)
  {
    return "???";
  }

  else
  {
    return off_101E741D0[v1];
  }
}

const char *sub_100701D5C(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 8)
  {
    return "???";
  }

  else
  {
    return off_101E74268[v1];
  }
}

const char *sub_100701D84(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 6)
  {
    return "???";
  }

  else
  {
    return off_101E742B0[v1];
  }
}

void *sub_100701DAC(void *a1, uint64_t a2)
{
  v4 = sub_10000C030(a1, "[", 1);
  v5 = sub_100701D5C(a2);
  v6 = strlen(v5);
  sub_10000C030(v4, v5, v6);
  v7 = sub_10000C030(a1, ", response_code: ", 17);
  if (*(a2 + 8) == 1)
  {
    std::to_string(&v32, *(a2 + 4));
  }

  else
  {
    sub_10000501C(&v32, "(null)");
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v32;
  }

  else
  {
    v8 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v32.__r_.__value_.__l.__size_;
  }

  sub_10000C030(v7, v8, size);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v10 = sub_10000C030(a1, ", ", 2);
  v11 = sub_100701D84((a2 + 12));
  v12 = strlen(v11);
  sub_10000C030(v10, v11, v12);
  sub_10000C030(a1, ", retry_count: ", 15);
  std::ostream::operator<<();
  v13 = sub_10000C030(a1, ", ongoing_for: ", 15);
  sub_100702110(v13, (a2 + 24));
  v14 = sub_10000C030(a1, ", ", 2);
  v15 = *(a2 + 32);
  if (v15 > 2)
  {
    v16 = "???";
  }

  else
  {
    v16 = off_101E742E8[v15];
  }

  v17 = strlen(v16);
  sub_10000C030(v14, v16, v17);
  v18 = sub_10000C030(a1, ", ", 2);
  v19 = *(a2 + 36);
  if (v19 > 2)
  {
    v20 = "???";
  }

  else
  {
    v20 = off_101E74300[v19];
  }

  v21 = strlen(v20);
  sub_10000C030(v18, v20, v21);
  v22 = sub_10000C030(a1, ", ", 2);
  v23 = sub_100701D34((a2 + 40));
  v24 = strlen(v23);
  sub_10000C030(v22, v23, v24);
  v25 = sub_10000C030(a1, ", validity: ", 12);
  if (*(a2 + 48) == 1)
  {
    std::to_string(&v32, *(a2 + 44));
  }

  else
  {
    sub_10000501C(&v32, "(null)");
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &v32;
  }

  else
  {
    v26 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v27 = v32.__r_.__value_.__l.__size_;
  }

  sub_10000C030(v25, v26, v27);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v28 = sub_10000C030(a1, ", retry_after: ", 15);
  if (*(a2 + 64) == 1)
  {
    std::to_string(&v32, *(a2 + 56));
  }

  else
  {
    sub_10000501C(&v32, "(null)");
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v32;
  }

  else
  {
    v29 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v32.__r_.__value_.__l.__size_;
  }

  sub_10000C030(v28, v29, v30);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  sub_10000C030(a1, "]", 1);
  return a1;
}

void sub_1007020EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100702110(uint64_t *a1, void *a2)
{
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  *__p = 0u;
  v20 = 0u;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  sub_10000D518(&v17);
  v3 = v17;
  v4 = *a1;
  *(&v18[-1] + *(v17 - 24) + 8) = *(a1 + *(*a1 - 24) + 8);
  v5 = *(v3 - 24);
  std::ios_base::getloc((a1 + *(v4 - 24)));
  v16.__locale_ = 0;
  std::ios_base::getloc((&v18[-1] + v5));
  std::ios_base::imbue((&v18[-1] + v5), &__loc);
  std::locale::~locale(&v12);
  v6 = *(&v18[1] + v5 + 8);
  if (v6)
  {
    (*(v6->__locale_ + 2))(v6, &__loc);
    v32.__locale_ = 0;
    std::locale::locale(&v32, v6 + 1);
    std::locale::operator=(v6 + 1, &__loc);
    std::locale::~locale(&v32);
  }

  std::locale::~locale(&v16);
  std::locale::~locale(&__loc);
  *(v18 + *(v17 - 24)) = *(a1 + *(*a1 - 24) + 16);
  v7 = std::ostream::operator<<();
  sub_10000C030(v7, "s", 1);
  sub_10006EE70(&v17 + 8, &v12);
  if ((v14 & 0x80u) == 0)
  {
    locale = &v12;
  }

  else
  {
    locale = v12.__locale_;
  }

  if ((v14 & 0x80u) == 0)
  {
    v9 = v14;
  }

  else
  {
    v9 = v13;
  }

  v10 = sub_10000C030(a1, locale, v9);
  if (v14 < 0)
  {
    operator delete(v12.__locale_);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v18);
  std::ostream::~ostream();
  std::ios::~ios();
  return v10;
}

void sub_100702454(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, std::locale a9, std::locale a10, char a11, uint64_t a12, std::locale a13, std::locale a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10.__locale_);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1007024BC(uint64_t a1, _DWORD *a2, void *a3, _DWORD *a4, int *a5, void *a6, _DWORD *a7, int *a8, _DWORD *a9, void *a10, _OWORD *a11, __int128 *a12, __int128 *a13)
{
  *a1 = *a2;
  *(a1 + 4) = *a3;
  v14 = *a5;
  *(a1 + 12) = *a4;
  *(a1 + 16) = v14;
  *(a1 + 24) = *a6;
  v15 = *a8;
  *(a1 + 32) = *a7;
  *(a1 + 36) = v15;
  *(a1 + 40) = *a9;
  *(a1 + 44) = *a10;
  *(a1 + 56) = *a11;
  if (*(a12 + 23) < 0)
  {
    sub_100005F2C((a1 + 72), *a12, *(a12 + 1));
  }

  else
  {
    v16 = *a12;
    *(a1 + 88) = *(a12 + 2);
    *(a1 + 72) = v16;
  }

  if (*(a13 + 23) < 0)
  {
    sub_100005F2C((a1 + 96), *a13, *(a13 + 1));
  }

  else
  {
    v17 = *a13;
    *(a1 + 112) = *(a13 + 2);
    *(a1 + 96) = v17;
  }

  return a1;
}

void sub_100702584(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  _Unwind_Resume(exception_object);
}

void sub_1007025BC(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v40 = xpc_int64_create(*a1);
  if (!v40)
  {
    v40 = xpc_null_create();
  }

  string = a2;
  v18 = "phase";
  sub_10000F688(&string, &v40, &v41);
  xpc_release(v41);
  v41 = 0;
  xpc_release(v40);
  v40 = 0;
  if (*(a1 + 8) == 1)
  {
    v38 = xpc_int64_create(a1[1]);
    if (!v38)
    {
      v38 = xpc_null_create();
    }

    string = a2;
    v18 = "code";
    sub_10000F688(&string, &v38, &v39);
    xpc_release(v39);
    v39 = 0;
    xpc_release(v38);
    v38 = 0;
  }

  v36 = xpc_int64_create(a1[3]);
  if (!v36)
  {
    v36 = xpc_null_create();
  }

  string = a2;
  v18 = "transport";
  sub_10000F688(&string, &v36, &v37);
  xpc_release(v37);
  v37 = 0;
  xpc_release(v36);
  v36 = 0;
  v34 = xpc_int64_create(a1[4]);
  if (!v34)
  {
    v34 = xpc_null_create();
  }

  string = a2;
  v18 = "retry_count";
  sub_10000F688(&string, &v34, &v35);
  xpc_release(v35);
  v35 = 0;
  xpc_release(v34);
  v34 = 0;
  v32 = xpc_int64_create(*(a1 + 3));
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  string = a2;
  v18 = "time_elapsed";
  sub_10000F688(&string, &v32, &v33);
  xpc_release(v33);
  v33 = 0;
  xpc_release(v32);
  v32 = 0;
  v30 = xpc_int64_create(a1[8]);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  string = a2;
  v18 = "server";
  sub_10000F688(&string, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  xpc_release(v30);
  v30 = 0;
  v28 = xpc_int64_create(a1[9]);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  string = a2;
  v18 = "provisioner";
  sub_10000F688(&string, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
  v26 = xpc_int64_create(a1[10]);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  string = a2;
  v18 = "response";
  sub_10000F688(&string, &v26, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v26);
  v26 = 0;
  v7 = (a1 + 18);
  if (*(a1 + 95) < 0)
  {
    v7 = *v7;
  }

  v24 = xpc_string_create(v7);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  string = a2;
  v18 = "PhoneNumberSource";
  sub_10000F688(&string, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  if (*(a1 + 48) == 1)
  {
    v22 = xpc_int64_create(a1[11]);
    if (!v22)
    {
      v22 = xpc_null_create();
    }

    string = a2;
    v18 = "xml_validity";
    sub_10000F688(&string, &v22, &v23);
    xpc_release(v23);
    v23 = 0;
    xpc_release(v22);
    v22 = 0;
  }

  if (*(a1 + 64) == 1)
  {
    v20 = xpc_int64_create(*(a1 + 7));
    if (!v20)
    {
      v20 = xpc_null_create();
    }

    string = a2;
    v18 = "retry_after";
    sub_10000F688(&string, &v20, &v21);
    xpc_release(v21);
    v21 = 0;
    xpc_release(v20);
    v20 = 0;
  }

  string = 0;
  v18 = 0;
  v19 = 0;
  sub_100701CCC(a1 + 5, &string);
  if (SHIBYTE(v19) < 0)
  {
    if (v18)
    {
      p_string = string;
      goto LABEL_44;
    }
  }

  else if (HIBYTE(v19))
  {
    p_string = &string;
LABEL_44:
    v15 = xpc_string_create(p_string);
    if (!v15)
    {
      v15 = xpc_null_create();
    }

    v13 = a2;
    v14 = "failure_reason";
    sub_10000F688(&v13, &v15, &v16);
    xpc_release(v16);
    v16 = 0;
    xpc_release(v15);
    v15 = 0;
    v11 = xpc_BOOL_create(0);
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    v13 = a2;
    v14 = "is_successful";
    sub_10000F688(&v13, &v11, &v12);
    xpc_release(v12);
    v12 = 0;
    xpc_release(v11);
    v11 = 0;
    goto LABEL_52;
  }

  v9 = xpc_BOOL_create(1);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v13 = a2;
  v14 = "is_successful";
  sub_10000F688(&v13, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
LABEL_52:
  if (SHIBYTE(v19) < 0)
  {
    operator delete(string);
  }
}

uint64_t sub_100702C08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  *v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  memset(v55, 0, sizeof(v55));
  v53 = 0u;
  sub_10000C320(&v53);
  v4 = sub_10000C030(&v54, "Metric [ phase: ", 16);
  v5 = sub_100701D5C(a1);
  v6 = strlen(v5);
  sub_10000C030(v4, v5, v6);
  if (*(a1 + 8) == 1)
  {
    sub_10000C030(&v54, ", code: ", 8);
    if (*(a1 + 8) != 1)
    {
      goto LABEL_69;
    }

    std::ostream::operator<<();
  }

  v7 = sub_10000C030(&v54, ", transport: ", 13);
  v8 = sub_100701D84((a1 + 12));
  v9 = strlen(v8);
  sub_10000C030(v7, v8, v9);
  sub_10000C030(&v54, ", retry_count: ", 15);
  std::ostream::operator<<();
  v10 = sub_10000C030(&v54, ", server: ", 10);
  v11 = *(a1 + 32);
  if (v11 > 2)
  {
    v12 = "???";
  }

  else
  {
    v12 = off_101E742E8[v11];
  }

  v13 = strlen(v12);
  sub_10000C030(v10, v12, v13);
  v14 = sub_10000C030(&v54, ", provisioner: ", 15);
  v15 = *(a1 + 36);
  if (v15 > 2)
  {
    v16 = "???";
  }

  else
  {
    v16 = off_101E74300[v15];
  }

  v17 = strlen(v16);
  sub_10000C030(v14, v16, v17);
  v18 = sub_10000C030(&v54, ", response: ", 12);
  v19 = sub_100701D34((a1 + 40));
  v20 = strlen(v19);
  sub_10000C030(v18, v19, v20);
  v21 = sub_10000C030(&v54, ", PhoneNumberSource: ", 21);
  v22 = *(a1 + 95);
  if (v22 >= 0)
  {
    v23 = a1 + 72;
  }

  else
  {
    v23 = *(a1 + 72);
  }

  if (v22 >= 0)
  {
    v24 = *(a1 + 95);
  }

  else
  {
    v24 = *(a1 + 80);
  }

  sub_10000C030(v21, v23, v24);
  if (*(a1 + 48) == 1)
  {
    sub_10000C030(&v54, ", xml_validity: ", 16);
    if (*(a1 + 48) != 1)
    {
      goto LABEL_69;
    }

    std::ostream::operator<<();
  }

  if (*(a1 + 64) != 1)
  {
    goto LABEL_22;
  }

  v25 = sub_10000C030(&v54, ", retry_after: ", 15);
  if ((*(a1 + 64) & 1) == 0)
  {
LABEL_69:
    sub_1000D1644();
  }

  sub_100702110(v25, (a1 + 56));
LABEL_22:
  __p[0] = 0;
  __p[1] = 0;
  v52 = 0;
  sub_100701CCC((a1 + 40), __p);
  v26 = HIBYTE(v52);
  v27 = HIBYTE(v52);
  if (v52 < 0)
  {
    v26 = __p[1];
  }

  if (v26)
  {
    v28 = sub_10000C030(&v54, ", error: ", 9);
    if (v52 >= 0)
    {
      v29 = __p;
    }

    else
    {
      v29 = __p[0];
    }

    if (v52 >= 0)
    {
      v30 = HIBYTE(v52);
    }

    else
    {
      v30 = __p[1];
    }

    sub_10000C030(v28, v29, v30);
    v27 = HIBYTE(v52);
  }

  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  v31 = *(a1 + 119);
  if ((v31 & 0x8000000000000000) != 0)
  {
    v31 = *(a1 + 104);
  }

  if (v31 < 0xB)
  {
    v42 = sub_10000C030(&v54, ", tok: ", 7);
    v43 = *(a1 + 119);
    if (v43 >= 0)
    {
      v44 = a1 + 96;
    }

    else
    {
      v44 = *(a1 + 96);
    }

    if (v43 >= 0)
    {
      v45 = *(a1 + 119);
    }

    else
    {
      v45 = *(a1 + 104);
    }

    sub_10000C030(v42, v44, v45);
  }

  else
  {
    std::string::basic_string(&v49, (a1 + 96), 0, 4uLL, &v48);
    v32 = std::string::append(&v49, "..", 2uLL);
    v33 = *&v32->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = *(a1 + 119);
    if (v34 < 0)
    {
      v34 = *(a1 + 104);
    }

    std::string::basic_string(&v48, (a1 + 96), v34 - 4, 0xFFFFFFFFFFFFFFFFLL, &v69);
    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &v48;
    }

    else
    {
      v35 = v48.__r_.__value_.__r.__words[0];
    }

    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v48.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v48.__r_.__value_.__l.__size_;
    }

    v37 = std::string::append(&v50, v35, size);
    v38 = *&v37->__r_.__value_.__l.__data_;
    v52 = v37->__r_.__value_.__r.__words[2];
    *__p = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    v39 = sub_10000C030(&v54, ", tok: ", 7);
    if (v52 >= 0)
    {
      v40 = __p;
    }

    else
    {
      v40 = __p[0];
    }

    if (v52 >= 0)
    {
      v41 = HIBYTE(v52);
    }

    else
    {
      v41 = __p[1];
    }

    sub_10000C030(v39, v40, v41);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10000C030(&v54, " ]", 2);
  sub_10006EE70(&v54 + 8, a2);
  *&v54 = v46;
  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56[1]);
  }

  std::locale::~locale(v55);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1007031E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void BasebandSettings::create(uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  operator new();
}

void sub_1007033E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    sub_101760EE4(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BasebandSettings::BasebandSettings(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v17, kCtLoggingSystemName, "set.bb");
  sub_1000F0604(v6, "BasebandSettings", QOS_CLASS_USER_INITIATED, &v17);
  ctu::OsLogContext::~OsLogContext(&v17);
  v24[0] = off_101E2B528;
  v24[1] = sub_1000A7C44;
  v24[3] = v24;
  sub_100703B60((a1 + 48), a2, v24);
  sub_1000A8744(v24);
  *a1 = off_101E74328;
  v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  *(a1 + 56) = dispatch_queue_create_with_target_V2("BasebandSettings", v7, *(a1 + 24));
  *a1 = off_101E74328;
  v8 = *a3;
  *a3 = 0;
  *(a1 + 64) = v8;
  *(a1 + 72) = a1 + 72;
  *(a1 + 80) = a1 + 72;
  *(a1 + 88) = 0;
  *(a1 + 96) = *a2;
  v9 = *(a2 + 8);
  *(a1 + 104) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    v8 = *(a1 + 64);
  }

  (*(*v8 + 40))(v8);
  Registry::getCommandDriversFactory(&v17, *a2);
  var0 = v17.var0;
  v11 = *(a1 + 24);
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  (*(*var0 + 216))(var0, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v17.var1.fRef)
  {
    sub_100004A34(v17.var1.fRef);
  }

  sub_10000501C(&__p, "BasebandSettings");
  v12 = *(a1 + 24);
  v20 = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  v19 = 0;
  ctu::RestModule::RestModule();
  if (v19)
  {
    dispatch_release(v19);
  }

  if (v20)
  {
    dispatch_release(v20);
  }

  if (v22 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 160) = 0;
  *(a1 + 162) = 0;
  *(a1 + 168) = 0;
  *(a1 + 200) = 0;
  *(a1 + 232) = 0;
  sub_100109304((a1 + 240), &rest::kDefaultRegistrationStatuses);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = a1 + 296;
  *(a1 + 312) = 0;
  *(a1 + 316) = 3;
  sub_10000501C(&v17, "BasebandSettings");
  PersonalitiesTracker::PersonalitiesTracker();
  if (v18 < 0)
  {
    operator delete(v17.var0);
  }

  *(a1 + 488) = 0;
  *(a1 + 492) = 1;
  *(a1 + 496) = 0;
  *(a1 + 497) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 552) = 2;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  (*(**(a1 + 64) + 32))(*(a1 + 64));
  v13 = *(a1 + 64);
  v14 = *(a1 + 24);
  v16 = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  (*(*v13 + 24))(v13, &v16);
  if (v16)
  {
    dispatch_release(v16);
  }

  (*(**(a1 + 64) + 16))(*(a1 + 64));
  *(a1 + 656) = 0u;
  *(a1 + 648) = a1 + 656;
  *(a1 + 680) = 0u;
  *(a1 + 672) = a1 + 680;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0;
  *(a1 + 744) = 0u;
  *(a1 + 736) = a1 + 744;
  *(a1 + 784) = 0;
  *(a1 + 792) = 1;
  *(a1 + 796) = 0;
  *(a1 + 808) = 0u;
  *(a1 + 800) = a1 + 808;
  Registry::getNotificationSenderFactory(&v17, *a2);
  (*(*v17.var0 + 152))(v17.var0);
  if (v17.var1.fRef)
  {
    sub_100004A34(v17.var1.fRef);
  }

  return a1;
}

void sub_1007038C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, void *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, dispatch_object_t a17, dispatch_object_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_10006DCAC(v24 + 800, *(v24 + 808));
  sub_10070CF14(v24 + 760);
  sub_100703D24(v24 + 696);
  sub_10006DCAC(v24 + 672, *(v24 + 680));
  sub_10006EC28(v24 + 648, *(v24 + 656));
  sub_10006EC28(v24 + 624, *(v24 + 632));
  v28 = *(v24 + 616);
  if (v28)
  {
    sub_100004A34(v28);
  }

  v29 = *(v24 + 600);
  if (v29)
  {
    sub_100004A34(v29);
  }

  v30 = *(v24 + 584);
  if (v30)
  {
    sub_100004A34(v30);
  }

  v31 = *(v24 + 568);
  if (v31)
  {
    sub_100004A34(v31);
  }

  v32 = *(v24 + 544);
  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  v33 = *(v24 + 528);
  if (v33)
  {
    sub_100004A34(v33);
  }

  v34 = *(v24 + 512);
  if (v34)
  {
    sub_100004A34(v34);
  }

  PersonalitiesTracker::~PersonalitiesTracker((v24 + 320));
  sub_100077CD4(v24 + 288, *(v24 + 296));
  __p = (v24 + 264);
  sub_1000B2AF8(&__p);
  sub_10006DCAC(v24 + 240, *(v24 + 248));
  sub_10000FF50(v24 + 208);
  sub_10070CE94(v24 + 176);
  v35 = *(v24 + 168);
  if (v35)
  {
    dispatch_group_leave(v35);
    v36 = *(v24 + 168);
    if (v36)
    {
      dispatch_release(v36);
    }
  }

  v37 = *(v24 + 152);
  if (v37)
  {
    sub_100004A34(v37);
  }

  v38 = *(v24 + 136);
  if (v38)
  {
    sub_100004A34(v38);
  }

  v39 = *(v24 + 120);
  if (v39)
  {
    sub_100004A34(v39);
  }

  v40 = *(v24 + 104);
  if (v40)
  {
    sub_100004A34(v40);
  }

  sub_1000FEFCC(v26);
  v41 = *(v24 + 64);
  *(v24 + 64) = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  v42 = *(v24 + 56);
  if (v42)
  {
    dispatch_release(v42);
  }

  v43 = *(v24 + 48);
  *(v24 + 48) = 0;
  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  ctu::OsLogLogger::~OsLogLogger((v24 + 40));
  sub_1000C0544(v25);
  BasebandSettingsInterface::~BasebandSettingsInterface(v24);
  _Unwind_Resume(a1);
}
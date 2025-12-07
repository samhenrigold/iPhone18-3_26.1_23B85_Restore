void sub_100840F78(uint64_t a1@<X1>, char **a2@<X8>, double a3@<D0>)
{
  LOBYTE(v13) = 0;
  v15 = 0;
  sub_10083FF84(a1, &v13, v16);
  memset(__p, 0, sizeof(__p));
  v6 = v17;
  v7 = __p;
  if (v17)
  {
    v7 = v16;
  }

  v8 = *v7;
  if (v17)
  {
    v9 = v16[1];
  }

  else
  {
    v9 = 0;
  }

  v10 = v7[2];
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  *a2 = v8;
  a2[1] = v9;
  a2[2] = v10;
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v6 && v16[0])
  {
    operator delete(v16[0]);
  }

  if (v15 == 1 && v14 < 0)
  {
    operator delete(v13);
  }

  if (v8 != v9)
  {
    v11 = sub_1008403E4(a2, 1, a3);
    if (v9 - v8 != a2[1] - *a2)
    {
      sub_100840614(v11, a1, a2);
    }
  }
}

void sub_100841084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (v20)
  {
    *(v19 + 8) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1008410C0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = -1227133513 * ((result[1] - *result) >> 4);
  v3 = v2 + 1;
  v4 = *result + 112 * v2;
  while (--v3 >= 1)
  {
    v5 = (v4 - 112);
    v6 = *(v4 - 32);
    v4 -= 112;
    if (v6)
    {
      v7 = v5[5];
      *(a2 + 64) = v5[4];
      *(a2 + 80) = v7;
      *(a2 + 96) = v5[6];
      v8 = v5[1];
      *a2 = *v5;
      *(a2 + 16) = v8;
      v9 = v5[3];
      v10 = 1;
      *(a2 + 32) = v5[2];
      *(a2 + 48) = v9;
      goto LABEL_6;
    }
  }

  v10 = 0;
  *a2 = 0;
LABEL_6:
  *(a2 + 112) = v10;
  return result;
}

void sub_100841144(uint64_t a1, uint64_t a2)
{
  v2 = sub_1008412F4(a2);
  if (v2)
  {
    v3 = v2;
    v4 = +[NSFileManager defaultManager];
    v9 = 0;
    if ([(NSFileManager *)v4 fileExistsAtPath:[(NSURL *)v3 path]]&& [(NSFileManager *)v4 removeItemAtURL:v3 error:&v9])
    {
      if (qword_1025D45D0 != -1)
      {
        sub_1019531C8();
      }

      v5 = qword_1025D45D8;
      if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(NSURL *)v3 path];
        *buf = 138543362;
        v11 = v6;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "[IMUCal] Deleting %{public}@", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10195353C(v3);
      }
    }

    else
    {
      if (qword_1025D45D0 != -1)
      {
        sub_1019531C8();
      }

      v7 = qword_1025D45D8;
      if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_ERROR))
      {
        v8 = [(NSURL *)v3 path];
        *buf = 138543362;
        v11 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "[IMUCal] Failed to delete %{public}@", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101953430(v3);
      }
    }
  }
}

NSURL *sub_1008412F4(unsigned int a1)
{
  if (a1 >= 3)
  {
    if (qword_1025D45D0 != -1)
    {
      sub_1019530A0();
    }

    v3 = qword_1025D45D8;
    if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_ERROR))
    {
      v4 = 138543362;
      v5 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "[IMUCal] Parameter %{public}@ not supported", &v4, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101953648();
    }

    return 0;
  }

  else
  {
    v1 = *(&off_102476688 + a1);

    return [NSURL fileURLWithPath:v1];
  }
}

void sub_100841418(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  v19 = 0;
  sub_10083FF84(a2, __p, &v12);
  if (v19 == 1 && v18 < 0)
  {
    operator delete(*__p);
  }

  if (v14)
  {
    v2 = v12;
    v3 = v13;
    if (v12 != v13)
    {
      v4 = v12;
      do
      {
        if (qword_1025D45D0 != -1)
        {
          sub_1019531C8();
        }

        v5 = qword_1025D45D8;
        if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
        {
          v6 = sub_100840544(v4);
          *__p = 138543362;
          *&__p[4] = v6;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "[IMUCal] %{public}@", __p, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101953744(__p);
          v7 = qword_1025D45D8;
          v8 = sub_100840544(v4);
          v15 = 138543362;
          v16 = v8;
          LODWORD(v11) = 12;
          _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v7, 0, "[IMUCal] %{public}@", &v15, v11);
          v10 = v9;
          sub_100152C7C("Generic", 1, 0, 2, "void CLIMUCalDataStore::readAndLog(const CMIMUCal::Parameter) const", "%s\n", v9);
          if (v10 != __p)
          {
            free(v10);
          }
        }

        v4 += 28;
      }

      while (v4 != v3);
    }

    if (v2)
    {
      operator delete(v2);
    }
  }
}

void sub_100841624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (v25)
  {
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

id sub_100841670(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v14[0] = @"EstimateCovarianceXX";
  v15[0] = [NSNumber numberWithDouble:*(**(a1 + 32) + 112 * *(a1 + 40) + 16)];
  v14[1] = @"EstimateCovarianceXY";
  v15[1] = [NSNumber numberWithDouble:*(**(a1 + 32) + 112 * *(a1 + 40) + 24)];
  v14[2] = @"EstimateCovarianceXZ";
  v15[2] = [NSNumber numberWithDouble:*(**(a1 + 32) + 112 * *(a1 + 40) + 32)];
  v14[3] = @"EstimateCovarianceYY";
  v15[3] = [NSNumber numberWithDouble:*(**(a1 + 32) + 112 * *(a1 + 40) + 40)];
  v14[4] = @"EstimateCovarianceYZ";
  v15[4] = [NSNumber numberWithDouble:*(**(a1 + 32) + 112 * *(a1 + 40) + 48)];
  v14[5] = @"EstimateCovarianceZZ";
  v15[5] = [NSNumber numberWithDouble:*(**(a1 + 32) + 112 * *(a1 + 40) + 56)];
  v14[6] = @"EstimateX";
  LODWORD(v3) = *(**(a1 + 32) + 112 * *(a1 + 40) + 4);
  v15[6] = [NSNumber numberWithFloat:v3];
  v14[7] = @"EstimateY";
  LODWORD(v4) = *(**(a1 + 32) + 112 * *(a1 + 40) + 8);
  v15[7] = [NSNumber numberWithFloat:v4];
  v14[8] = @"EstimateZ";
  LODWORD(v5) = *(**(a1 + 32) + 112 * *(a1 + 40) + 12);
  v15[8] = [NSNumber numberWithFloat:v5];
  v14[9] = @"NumberOfImpacts";
  v15[9] = [NSNumber numberWithUnsignedLong:*(**(a1 + 32) + 112 * *(a1 + 40) + 88)];
  v14[10] = @"TableIndex";
  v15[10] = [NSNumber numberWithUnsignedLong:*(a1 + 48)];
  v14[11] = @"TemperatureIMU";
  LODWORD(v6) = *(**(a1 + 32) + 112 * *(a1 + 40) + 72);
  v15[11] = [NSNumber numberWithFloat:v6];
  v14[12] = @"TimeSincePrevious";
  v15[12] = [NSString stringWithFormat:@"%.0f", *(a1 + 56) / 60.0];
  v15[13] = &off_10254F020;
  v14[13] = @"NumberOfEstimates";
  v14[14] = @"NumberOfEstimatesIndoors";
  if (*(**(a1 + 32) + 112 * *(a1 + 40) + 96))
  {
    v7 = &off_10254F038;
  }

  else
  {
    v7 = &off_10254F020;
  }

  v15[14] = v7;
  [v2 setDictionary:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v15, v14, 15)}];
  LODWORD(v8) = *(**(a1 + 32) + 112 * *(a1 + 40) + 100);
  [v2 setObject:+[NSNumber numberWithFloat:](NSNumber forKeyedSubscript:{"numberWithFloat:", v8), @"RelativeHumidityOutside"}];
  LODWORD(v9) = *(**(a1 + 32) + 112 * *(a1 + 40) + 104);
  [v2 setObject:+[NSNumber numberWithFloat:](NSNumber forKeyedSubscript:{"numberWithFloat:", v9), @"TemperatureOutside"}];
  if (qword_1025D45D0 != -1)
  {
    sub_1019531C8();
  }

  v10 = qword_1025D45D8;
  if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v13 = v2;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "Sending analytics: \n%{private}@", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101953788(v2);
  }

  return v2;
}

void sub_100841A94(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t *sub_100841AF0(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_100841B80(a1, a2);
  }

  return a1;
}

void sub_100841B64(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100841B80(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    sub_100841A94(a1, a2);
  }

  sub_10028C64C();
}

id sub_1008421A4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 56);
  v5[2] = *(a1 + 40);
  v6[0] = v3;
  *(v6 + 10) = *(a1 + 66);
  v5[0] = *(a1 + 8);
  v5[1] = v2;
  return [a2 onSensorParameterEstimate:v5];
}

void sub_100842BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10084349C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

NSDictionary *sub_100843644()
{
  v10[0] = @"/System/Library/PrivateFrameworks/BulletinBoard.framework";
  v9[0] = @"/System/Library/LocationBundles/AppSuggestions.bundle";
  v9[1] = @"/System/Library/LocationBundles/CalendarLocation.bundle";
  v9[2] = @"/System/Library/LocationBundles/DestinationdLocationBundleiOS.bundle";
  v9[3] = @"/System/Library/LocationBundles/DoNotDisturb.bundle";
  v9[4] = @"/System/Library/LocationBundles/ExposureNotificationBundle.bundle";
  v9[5] = @"/System/Library/LocationBundles/MapsAnnouncements.bundle";
  v9[6] = @"/System/Library/LocationBundles/NavdLocationBundleiOS.bundle";
  v9[7] = @"/System/Library/LocationBundles/Oos.bundle";
  v9[8] = @"/System/Library/LocationBundles/PassbookRelevancy.bundle";
  v9[9] = @"/System/Library/LocationBundles/RemindersAlerts.bundle";
  v9[10] = @"/System/Library/LocationBundles/SafetyAlerts.bundle";
  v9[11] = @"/System/Library/LocationBundles/ShortcutsLocation.bundle";
  v9[12] = @"/System/Library/LocationBundles/Wea.bundle";
  v11[0] = [NSArray arrayWithObjects:v9 count:13];
  v10[1] = @"/System/Library/LocationBundles/Traffic.bundle";
  v8[0] = @"/System/Library/LocationBundles/IonosphereHarvest.bundle";
  v8[1] = @"/System/Library/LocationBundles/AltimeterHarvest.bundle";
  v8[2] = @"/System/Library/LocationBundles/GeocorrectionDLocationBundle.bundle";
  v8[3] = @"/System/Library/LocationBundles/TraceHarvest.bundle";
  v11[1] = [NSArray arrayWithObjects:v8 count:4];
  v10[2] = @"/System/Library/PrivateFrameworks/MobileWiFi.framework";
  v7[0] = @"/System/Library/LocationBundles/UWBRegulatory.bundle";
  v7[1] = @"/System/Library/LocationBundles/WRMLinkSelection.bundle";
  v7[2] = @"/System/Library/PrivateFrameworks/NetworkServiceProxy.framework";
  v11[2] = [NSArray arrayWithObjects:v7 count:3];
  v10[3] = @"/System/Library/LocationBundles/SystemCustomization.bundle";
  v6[0] = @"/System/Library/PrivateFrameworks/ChronoCore.framework";
  v6[1] = @"/System/Library/LocationBundles/CountryTracker.bundle";
  v6[2] = @"/System/Library/PrivateFrameworks/ClockPoster.framework";
  v6[3] = @"/System/Library/ExtensionKit/Extensions/MercuryPosterExtension.appex";
  v6[4] = @"/System/Library/LocationBundles/WebContentFilterEligibility.bundle";
  v11[3] = [NSArray arrayWithObjects:v6 count:5];
  v10[4] = @"/System/Library/PrivateFrameworks/CoreParsec.framework";
  v5 = @"/System/Library/LocationBundles/eSIMTravelBuddy.bundle";
  v11[4] = [NSArray arrayWithObjects:&v5 count:1];
  v10[5] = @"/System/Library/PrivateFrameworks/HomeKitDaemon.framework";
  v4[0] = @"/System/Library/LocationBundles/CarPlayHomeLocation.bundle";
  v4[1] = @"/System/Library/PrivateFrameworks/HomeEnergyDaemon.framework";
  v11[5] = [NSArray arrayWithObjects:v4 count:2];
  v10[6] = @"/System/Library/PrivateFrameworks/DeviceManagement.framework";
  v3 = @"/System/Library/PrivateFrameworks/MDM.framework";
  v11[6] = [NSArray arrayWithObjects:&v3 count:1];
  v10[7] = @"/System/Library/PrivateFrameworks/FMF.framework";
  v2 = @"/System/Library/LocationBundles/SafetyMonitorLocationBundle.bundle";
  v11[7] = [NSArray arrayWithObjects:&v2 count:1];
  v10[8] = @"/System/Library/LocationBundles/Routine.bundle";
  v1[0] = @"/System/Library/LocationBundles/Milod.bundle";
  v1[1] = @"/System/Library/LocationBundles/FedMobility.bundle";
  v11[8] = [NSArray arrayWithObjects:v1 count:2];
  return [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:9];
}

NSArray *sub_1008439C0()
{
  v1[0] = @"/System/Library/LocationBundles/PassbookMerchantLookup.bundle";
  v1[1] = @"/System/Library/Frameworks/CoreTelephony.framework";
  v1[2] = @"/System/Library/LocationBundles/CompassCalibration.bundle";
  v1[3] = @"/System/Library/LocationBundles/Emergency SOS.bundle";
  v1[4] = @"/System/Library/PrivateFrameworks/WirelessDiagnostics.framework";
  v1[5] = @"/System/Library/LocationBundles/MotionCalibration.bundle";
  v1[6] = @"/System/Library/LocationBundles/TimeZone.bundle";
  v1[7] = @"/System/Library/PrivateFrameworks/FindMyDevice.framework";
  v1[8] = @"/System/Library/LocationBundles/WifiCalling.bundle";
  v1[9] = @"/System/Library/LocationBundles/Bifrost.bundle";
  v1[10] = @"/System/Library/LocationBundles/ClipServicesLocation.bundle";
  v1[11] = @"/System/Library/LocationBundles/AppGenius.bundle";
  v1[12] = @"/System/Library/LocationBundles/LocationHarvest.bundle";
  return [NSArray arrayWithObjects:v1 count:13];
}

NSArray *sub_100843AD4()
{
  v1[0] = @"/System/Library/Frameworks/CoreWLAN.framework";
  v1[1] = @"/System/Library/LocationBundles/CarbonAnalytics.bundle";
  v1[2] = @"/System/Library/LocationBundles/NanoCompassAlerts.bundle";
  v1[3] = @"/System/Library/LocationBundles/NanoSmartStack.bundle";
  return [NSArray arrayWithObjects:v1 count:4];
}

void sub_100844084(void *a1, uint64_t a2)
{
  xpc_dictionary_set_string(a1, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(a1, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(a1, XPC_ACTIVITY_PREVENT_DEVICE_SLEEP, 1);
  v4 = a2 == 2;
  if (a2 == 2)
  {
    v5 = 60;
  }

  else
  {
    v5 = 30;
  }

  xpc_dictionary_set_BOOL(a1, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, v4);
  xpc_dictionary_set_string(a1, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION_DOWNLOAD);
  xpc_dictionary_set_uint64(a1, XPC_ACTIVITY_GRACE_PERIOD, v5);
  v6 = XPC_ACTIVITY_REQUIRES_CLASS_C;

  xpc_dictionary_set_BOOL(a1, v6, 1);
}

void sub_100844184(uint64_t a1, xpc_activity_t activity)
{
  state = xpc_activity_get_state(activity);
  if (qword_1025D4600 != -1)
  {
    sub_101953B6C();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240192;
    LODWORD(v11) = state;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#tiledownloadscheduler, callback, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101953E6C(state);
  }

  if (state == 2)
  {
    v6 = [objc_msgSend(*(a1 + 32) "universe")];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100844370;
    v9[3] = &unk_102447418;
    v9[4] = *(a1 + 32);
    [v6 async:v9];
    if (!xpc_activity_set_state(activity, 5))
    {
      if (qword_1025D4600 != -1)
      {
        sub_101953F58();
      }

      v7 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
      {
        v8 = xpc_activity_get_state(activity);
        *buf = 134349056;
        v11 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "#tiledownloadscheduler, failed to mark activity as done. current state, %{public}ld", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101953F80();
      }
    }
  }
}

id sub_100844370(uint64_t a1)
{
  if (qword_1025D4600 != -1)
  {
    sub_101953B6C();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v3 = [objc_msgSend(*(a1 + 32) "clients")];
    *buf = 134349056;
    v10 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#tiledownloadscheduler, run, wifi connectivity, client count, %{public}ld", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195407C();
  }

  [*(a1 + 32) setHasRegisteredForWifiConnectivity:0];
  v4 = [*(a1 + 32) clients];
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v4);
  if (result)
  {
    v6 = result;
    v7 = MEMORY[0];
    do
    {
      v8 = 0;
      do
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(8 * v8) onScheduledTileDownloadWithReachabilityRequirement:2];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v4);
      v6 = result;
    }

    while (result);
  }

  return result;
}

void sub_1008445B4(uint64_t a1, xpc_activity_t activity)
{
  state = xpc_activity_get_state(activity);
  if (qword_1025D4600 != -1)
  {
    sub_101953B6C();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240192;
    LODWORD(v11) = state;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#tiledownloadscheduler, callback, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101954170(state);
  }

  if (state == 2)
  {
    v6 = [objc_msgSend(*(a1 + 32) "universe")];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1008447A0;
    v9[3] = &unk_102447418;
    v9[4] = *(a1 + 32);
    [v6 async:v9];
    if (!xpc_activity_set_state(activity, 5))
    {
      if (qword_1025D4600 != -1)
      {
        sub_101953F58();
      }

      v7 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
      {
        v8 = xpc_activity_get_state(activity);
        *buf = 134349056;
        v11 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "#tiledownloadscheduler, failed to mark activity as done. current state, %{public}ld", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10195425C();
      }
    }
  }
}

id sub_1008447A0(uint64_t a1)
{
  if (qword_1025D4600 != -1)
  {
    sub_101953B6C();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v3 = [objc_msgSend(*(a1 + 32) "clients")];
    *buf = 134349056;
    v10 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#tiledownloadscheduler, run, cellular connectivity, client count, %{public}ld", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101954358();
  }

  [*(a1 + 32) setHasRegisteredForCellularConnectivity:0];
  v4 = [*(a1 + 32) clients];
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v4);
  if (result)
  {
    v6 = result;
    v7 = MEMORY[0];
    do
    {
      v8 = 0;
      do
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(8 * v8) onScheduledTileDownloadWithReachabilityRequirement:1];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v4);
      v6 = result;
    }

    while (result);
  }

  return result;
}

BOOL sub_100844A28(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 22);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 22);
  }

  if (v4 - 3 >= v3)
  {
    v5 = 0;
    if ((*(a1 + 92) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v5 = 0;
    v6 = v3 + 1;
    do
    {
      if (*sub_100457AE8((a1 + 20), v6 - 2) <= 18.0)
      {
        ++v5;
      }

      v7 = *(a1 + 22);
      if (v7 <= 3)
      {
        v7 = 3;
      }

      --v6;
    }

    while (v6 > v7 - 2);
    if ((*(a1 + 92) & 1) == 0)
    {
      if (v5 >= 3)
      {
        v8 = *(a1 + 72) ^ 1;
        return v8 & 1;
      }

LABEL_18:
      v8 = 0;
      return v8 & 1;
    }
  }

  return sub_100844B10(a1, v5);
}

BOOL sub_100844B10(uint64_t a1, unsigned int a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (*(a1 + 22) && *sub_100457AE8((a1 + 20), *(a1 + 22) - 1) > *(a1 + 88))
  {
    *(a1 + 80) = 0x7FEFFFFFFFFFFFFFLL;
  }

  v5 = 0;
  if (a2 >= 3 && (*(a1 + 72) & 1) == 0)
  {
    v7 = *(a1 + 80);
    v6 = (a1 + 80);
    v8 = v7;
    v5 = Current > v7;
    if (Current > v7)
    {
      if (Current - v8 <= 180.0)
      {
        return 0;
      }

      if (qword_1025D4310 != -1)
      {
        sub_10195444C();
      }

      v9 = qword_1025D4318;
      if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *v6;
        v12 = 134218240;
        v13 = Current;
        v14 = 2048;
        v15 = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "pressure quality check for good wet barometer mitigation should be applied,now,%f,lastUnknownToGoodSatifiedTimestamp,%f", &v12, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101954460();
      }

      Current = 1.79769313e308;
    }

    *v6 = Current;
  }

  return v5;
}

BOOL sub_100844C90(uint64_t a1)
{
  if (!*(a1 + 22))
  {
    return 0;
  }

  v2 = 0;
  v3 = *(a1 + 22) + 1;
  do
  {
    if (*sub_100457AE8((a1 + 20), v3 - 2) >= 275.0)
    {
      ++v2;
    }

    v4 = *(a1 + 22);
    if (v4 <= 1)
    {
      v4 = 1;
    }

    --v3;
  }

  while (v3 > v4);
  return v2 != 0;
}

BOOL sub_100844D1C(uint64_t a1)
{
  v1 = *(a1 + 22);
  if (v1 <= 5)
  {
    v2 = 5;
  }

  else
  {
    v2 = *(a1 + 22);
  }

  if (v2 - 5 >= v1)
  {
    return 0;
  }

  v4 = 0;
  v5 = v1 + 1;
  do
  {
    if (*sub_100457AE8((a1 + 20), v5 - 2) < 275.0)
    {
      ++v4;
    }

    v6 = *(a1 + 22);
    if (v6 <= 5)
    {
      v6 = 5;
    }

    --v5;
  }

  while (v5 > v6 - 4);
  return v4 > 2;
}

BOOL sub_100844DBC(uint64_t a1)
{
  v1 = *(a1 + 22);
  if (v1 <= 5)
  {
    v2 = 5;
  }

  else
  {
    v2 = *(a1 + 22);
  }

  if (v2 - 5 >= v1)
  {
    return 0;
  }

  v4 = 0;
  v5 = v1 + 1;
  do
  {
    v6 = *sub_100457AE8((a1 + 20), v5 - 2) > *(a1 + 88) && *sub_100457AE8((a1 + 20), v5 - 2) < 275.0;
    v4 += v6;
    v7 = *(a1 + 22);
    if (v7 <= 5)
    {
      v7 = 5;
    }

    --v5;
  }

  while (v5 > v7 - 4);
  return v4 > 2;
}

void sub_100844E90(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 20) = 0;
  *(a1 + 64) = -1082130432;
  if (qword_1025D4310 != -1)
  {
    sub_10195444C();
  }

  v3 = qword_1025D4318;
  if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 68);
    v5 = *(a1 + 16);
    v6 = 134218496;
    v7 = Current;
    v8 = 1024;
    v9 = v4;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "pressure quality state reset,timestamp,%f,old,%d,new,%d", &v6, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101954570();
  }

  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0x7FEFFFFFFFFFFFFFLL;
}

uint64_t sub_100844FB0(uint64_t a1)
{
  *a1 = &unk_102476740;
  *(a1 + 8) = 10;
  *(a1 + 16) = 512;
  *(a1 + 20) = 0x500000000;
  *(a1 + 48) = -1082130432;
  *(a1 + 56) = 0;
  *(a1 + 64) = -1082130432;
  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0x7FEFFFFFFFFFFFFFLL;
  v2 = sub_10071C8A8(a1);
  v3 = 54.0;
  if (v2)
  {
    v3 = 35.0;
  }

  *(a1 + 88) = v3;
  *(a1 + 92) = v2;
  if (qword_1025D4310 != -1)
  {
    sub_10195444C();
  }

  v4 = qword_1025D4318;
  if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 92);
    v6 = *(a1 + 88);
    v8[0] = 67109376;
    v8[1] = v5;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "init pressure quality controller,deviceModelRequiresWetBarometerMitigation,%d,unknownFromGoodThreshold,%f", v8, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101954668((a1 + 92), (a1 + 88));
  }

  return a1;
}

uint64_t sub_100845124(uint64_t result, int a2, uint64_t a3, float a4)
{
  if (a4 != -1.0 && a3 != 0)
  {
    v5 = a4 <= 18.0 && a2 <= 0;
    if (!v5 || a3 == 4)
    {
      v7 = *(result + 22);
      v8 = *(result + 24);
      v9 = *(result + 20);
      if (v9 + v7 >= v8)
      {
        v10 = *(result + 24);
      }

      else
      {
        v10 = 0;
      }

      *(result + 4 * (v9 + v7 - v10) + 28) = a4;
      if (v8 <= v7)
      {
        if (v9 + 1 < v8)
        {
          LOWORD(v8) = 0;
        }

        *(result + 20) = v9 + 1 - v8;
      }

      else
      {
        *(result + 22) = v7 + 1;
      }
    }
  }

  return result;
}

uint64_t sub_100845198(uint64_t a1, int a2, uint64_t a3, __int16 a4, float a5)
{
  *(a1 + 56) = a3;
  *(a1 + 48) = a5;
  result = sub_1000CE87C(a1, 1, &v12);
  if (a3)
  {
    result = sub_100845124(a1, a2, a3, a5);
    *(a1 + 72) |= (a4 & 0x1000) != 0;
    if (*(a1 + 22))
    {
      return sub_1000CE87C(a1, 0, &v11);
    }
  }

  return result;
}

void sub_100845264(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 20) = 0;
  *(a1 + 64) = *(a1 + 48);
  if (qword_1025D4310 != -1)
  {
    sub_10195444C();
  }

  v3 = qword_1025D4318;
  if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 68);
    v5 = *(a1 + 16);
    v6 = 134218496;
    v7 = Current;
    v8 = 1024;
    v9 = v4;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "pressure quality state transition,timestamp,%f,old,%d,new,%d", &v6, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101954794();
  }

  *(a1 + 68) = *(a1 + 16);
}

void sub_10084537C(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 20) = 0;
  *(a1 + 64) = *(a1 + 48);
  if (qword_1025D4310 != -1)
  {
    sub_10195444C();
  }

  v3 = qword_1025D4318;
  if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 68);
    v5 = *(a1 + 16);
    v6 = 134218496;
    v7 = Current;
    v8 = 1024;
    v9 = v4;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "pressure quality state transition,timestamp,%f,old,%d,new,%d", &v6, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195488C();
  }

  *(a1 + 68) = *(a1 + 16);
}

void sub_100845894(id a1)
{
  if (qword_1025D4720 != -1)
  {
    sub_101954984();
  }

  v1 = qword_1025D4728;
  if (os_log_type_enabled(qword_1025D4728, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_INFO, "xpc interruption handler", v2, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101954AA8();
  }
}

void sub_100845928(id a1)
{
  if (qword_1025D4720 != -1)
  {
    sub_101954984();
  }

  v1 = qword_1025D4728;
  if (os_log_type_enabled(qword_1025D4728, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_INFO, "xpc invalidation handler", v2, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101954B84();
  }
}

uint64_t sub_100845AB4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) fetchBleAdvertisementsWithIdentityFilter:0];
  if (qword_1025D4720 != -1)
  {
    sub_101954984();
  }

  v3 = qword_1025D4728;
  if (os_log_type_enabled(qword_1025D4728, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = [v2 count];
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "fetch'd %zu advertisements from volatile store", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101954D3C(v2);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_100845CBC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) fetchBleAdvertisementsWithIdentityFilter:0];
  v12 = 0.0;
  v13 = 0;
  [*(*(a1 + 32) + 32) fetchFromStatisticsNumberOfAdvs:&v13 accumulatedTime:&v12];
  if (qword_1025D4720 != -1)
  {
    sub_101954A80();
  }

  v3 = qword_1025D4728;
  if (os_log_type_enabled(qword_1025D4728, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 count];
    *buf = 134218496;
    v23 = v4;
    v24 = 2048;
    v25 = v13;
    v26 = 2048;
    v27 = v12;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "fetch'd %zu advertisements from volatile store, N %zu, T %.1f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4720 != -1)
    {
      sub_101954A80();
    }

    v8 = qword_1025D4728;
    v9 = [v2 count];
    v16 = 134218496;
    v17 = v9;
    v18 = 2048;
    v19 = v13;
    v20 = 2048;
    v21 = v12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v8, 0, "fetch'd %zu advertisements from volatile store, N %zu, T %.1f", &v16, 32, v12);
    v11 = v10;
    sub_100152C7C("Generic", 1, 0, 2, "[CLGatheringXPCServer fetchAdvertisementsDetailedWithCompletion:]_block_invoke", "%s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  v5.n128_f64[0] = v12;
  if (v12 == 0.0 && v13 != 0)
  {
    v14 = NSLocalizedDescriptionKey;
    v15 = @"received advertisements without scanning?";
    [NSError errorWithDomain:kCLErrorDomain code:1 userInfo:[NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1, v12]];
    v5.n128_f64[0] = v12;
  }

  return (*(*(a1 + 40) + 16))(v5);
}

uint64_t sub_1008460B8(void *a1)
{
  if ([*(a1[4] + 24) getEnablementStatus])
  {
    [*(a1[4] + 24) stop];
    [*(a1[4] + 40) overrideWithConfiguration:a1[6]];
    [*(a1[4] + 24) run];
    v2 = *(a1[5] + 16);

    return v2();
  }

  else
  {
    v4 = NSLocalizedDescriptionKey;
    v5 = @"CLGatheringBluetoothClient disabled";
    [NSError errorWithDomain:kCLErrorDomain code:1 userInfo:[NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1]];
    return (*(a1[5] + 16))();
  }
}

long double sub_1008462A8(uint64_t a1, float64x2_t *a2)
{
  if (qword_1025D41B0 != -1)
  {
    sub_10195504C();
  }

  v3 = qword_1025D41B8;
  if (os_log_type_enabled(qword_1025D41B8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a2->f64[0];
    v4 = a2->f64[1];
    v6 = a2[1].f64[0];
    v7 = a2[1].f64[1];
    v11 = 134284289;
    v12 = v4;
    v13 = 2049;
    v14 = v5;
    v15 = 2049;
    v16 = v6;
    v17 = 2049;
    v18 = v7;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CLMobility::SteadinessModelBalance::Features,intermediateBoutsAsymmetryPercentageMedian,%{private}.3f,intermediateBoutsAsymmetryPercentageCv,%{private}.3f,intermediateBoutsDoubleSupportPercentageMedian,%{private}.3f,intermediateBoutsDoubleSupportPercentageStd,%{private}.3f", &v11, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101955060(a2);
  }

  v8 = vdupq_n_s64(0xFFF0000000000000);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a2, v8), vceqq_f64(a2[1], v8)))) & 1) == 0)
  {
    return sub_1009A32C0(a2);
  }

  if (qword_1025D41B0 != -1)
  {
    sub_1019551AC();
  }

  v9 = qword_1025D41B8;
  if (os_log_type_enabled(qword_1025D41B8, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11) = 0;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Rejection: CLMobilitySteadinessModelBalance missing required feature inputs", &v11, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019551D4();
  }

  return -INFINITY;
}

double sub_10084644C(double a1, uint64_t a2, uint64_t *a3)
{
  __src = 0;
  v74 = 0;
  v75 = 0;
  v4 = *a3;
  v5 = a3[1];
  if (*a3 == v5)
  {
    __p = 0;
    v71 = 0;
    v72 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
  }

  else
  {
    v6 = 0;
    v7 = a1 + -2419200.0;
    do
    {
      v8 = *(v4 + 8);
      if (v8 < a1 && v8 >= v7)
      {
        if (v6 >= v75)
        {
          v20 = __src;
          v21 = v6 - __src;
          v22 = 0x6DB6DB6DB6DB6DB7 * ((v6 - __src) >> 5);
          v23 = v22 + 1;
          if ((v22 + 1) > 0x124924924924924)
          {
            sub_10028C64C();
          }

          if (0xDB6DB6DB6DB6DB6ELL * ((v75 - __src) >> 5) > v23)
          {
            v23 = 0xDB6DB6DB6DB6DB6ELL * ((v75 - __src) >> 5);
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((v75 - __src) >> 5)) >= 0x92492492492492)
          {
            v24 = 0x124924924924924;
          }

          else
          {
            v24 = v23;
          }

          if (v24)
          {
            sub_1006EB5FC(&__src, v24);
          }

          v25 = (32 * ((v6 - __src) >> 5));
          v26 = *(v4 + 16);
          *v25 = *v4;
          v25[1] = v26;
          v27 = *(v4 + 32);
          v28 = *(v4 + 48);
          v29 = *(v4 + 80);
          v25[4] = *(v4 + 64);
          v25[5] = v29;
          v25[2] = v27;
          v25[3] = v28;
          v30 = *(v4 + 96);
          v31 = *(v4 + 112);
          v32 = *(v4 + 144);
          v25[8] = *(v4 + 128);
          v25[9] = v32;
          v25[6] = v30;
          v25[7] = v31;
          v33 = *(v4 + 160);
          v34 = *(v4 + 176);
          v35 = *(v4 + 208);
          v25[12] = *(v4 + 192);
          v25[13] = v35;
          v25[10] = v33;
          v25[11] = v34;
          v6 = (224 * v22 + 224);
          v36 = (224 * v22 - v21);
          memcpy(v25 - v21, v20, v21);
          v37 = __src;
          __src = v36;
          v74 = v6;
          v75 = 0;
          if (v37)
          {
            operator delete(v37);
          }
        }

        else
        {
          v10 = *(v4 + 16);
          *v6 = *v4;
          *(v6 + 1) = v10;
          v11 = *(v4 + 32);
          v12 = *(v4 + 48);
          v13 = *(v4 + 80);
          *(v6 + 4) = *(v4 + 64);
          *(v6 + 5) = v13;
          *(v6 + 2) = v11;
          *(v6 + 3) = v12;
          v14 = *(v4 + 96);
          v15 = *(v4 + 112);
          v16 = *(v4 + 144);
          *(v6 + 8) = *(v4 + 128);
          *(v6 + 9) = v16;
          *(v6 + 6) = v14;
          *(v6 + 7) = v15;
          v17 = *(v4 + 160);
          v18 = *(v4 + 176);
          v19 = *(v4 + 208);
          *(v6 + 12) = *(v4 + 192);
          *(v6 + 13) = v19;
          *(v6 + 10) = v17;
          *(v6 + 11) = v18;
          v6 += 224;
        }

        v74 = v6;
      }

      v4 += 224;
    }

    while (v4 != v5);
    v38 = __src;
    __p = 0;
    v71 = 0;
    v72 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    if (__src != v6)
    {
      do
      {
        v39 = v38[2] - v38[1];
        if (v39 <= 600.0 && v39 > 60.0)
        {
          v41 = *(v38 + 13);
          if (v41)
          {
            v42 = 42;
          }

          else
          {
            v42 = -1;
          }

          if ((v42 & *(v38 + 49)) == 0)
          {
            v43 = v71;
            if (v71 >= v72)
            {
              v45 = __p;
              v46 = v71 - __p;
              v47 = (v71 - __p) >> 3;
              v48 = v47 + 1;
              if ((v47 + 1) >> 61)
              {
                goto LABEL_78;
              }

              v49 = v72 - __p;
              if ((v72 - __p) >> 2 > v48)
              {
                v48 = v49 >> 2;
              }

              if (v49 >= 0x7FFFFFFFFFFFFFF8)
              {
                v50 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v50 = v48;
              }

              if (v50)
              {
                sub_1000B9708(&__p, v50);
              }

              *(8 * v47) = v38[15];
              v44 = 8 * v47 + 8;
              memcpy(0, v45, v46);
              v51 = __p;
              __p = 0;
              v71 = v44;
              v72 = 0;
              if (v51)
              {
                operator delete(v51);
              }
            }

            else
            {
              *v71 = v38[15];
              v44 = (v43 + 8);
            }

            v71 = v44;
            v41 = *(v38 + 13);
          }

          if (v41)
          {
            v52 = 42;
          }

          else
          {
            v52 = -1;
          }

          if ((v52 & *(v38 + 51)) == 0)
          {
            v53 = v68;
            if (v68 >= v69)
            {
              v55 = v67;
              v56 = v68 - v67;
              v57 = (v68 - v67) >> 3;
              v58 = v57 + 1;
              if ((v57 + 1) >> 61)
              {
LABEL_78:
                sub_10028C64C();
              }

              v59 = v69 - v67;
              if ((v69 - v67) >> 2 > v58)
              {
                v58 = v59 >> 2;
              }

              if (v59 >= 0x7FFFFFFFFFFFFFF8)
              {
                v60 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v60 = v58;
              }

              if (v60)
              {
                sub_1000B9708(&v67, v60);
              }

              *(8 * v57) = v38[17];
              v54 = 8 * v57 + 8;
              memcpy(0, v55, v56);
              v61 = v67;
              v67 = 0;
              v68 = v54;
              v69 = 0;
              if (v61)
              {
                operator delete(v61);
              }
            }

            else
            {
              *v68 = v38[17];
              v54 = (v53 + 8);
            }

            v68 = v54;
          }
        }

        v38 += 28;
      }

      while (v38 != v6);
    }
  }

  if (qword_1025D41B0 != -1)
  {
    sub_1019551AC();
  }

  v62 = qword_1025D41B8;
  if (os_log_type_enabled(qword_1025D41B8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349824;
    v85 = a1;
    v86 = 2050;
    v87 = 0x6DB6DB6DB6DB6DB7 * ((v74 - __src) >> 5);
    v88 = 2050;
    v89 = (v71 - __p) >> 3;
    v90 = 2050;
    v91 = (v68 - v67) >> 3;
    _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_DEBUG, "SteadinessModelBalance::extractFeatures,classificationTime,%{public}.2f,numBouts,%{public}lu,doubleSupportPercentages,%{public}lu,asymmetryPercentages,%{public}lu", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019552E8(buf);
    v76 = 134349824;
    v77 = a1;
    v78 = 2050;
    v79 = 0x6DB6DB6DB6DB6DB7 * ((v74 - __src) >> 5);
    v80 = 2050;
    v81 = (v71 - __p) >> 3;
    v82 = 2050;
    v83 = (v68 - v67) >> 3;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D41B8, 2, "SteadinessModelBalance::extractFeatures,classificationTime,%{public}.2f,numBouts,%{public}lu,doubleSupportPercentages,%{public}lu,asymmetryPercentages,%{public}lu", &v76, 42);
    v66 = v65;
    sub_100152C7C("Generic", 1, 0, 2, "Features CLMobility::SteadinessModelBalance::extractFeatures(CFAbsoluteTime, const std::vector<BoutMetrics> &) const", "%s\n", v65);
    if (v66 != buf)
    {
      free(v66);
    }
  }

  sub_100FB15E4(&v67);
  v63 = sub_100FB14B0(&v67);
  sub_100FB15E4(&__p);
  sub_100FB13FC(&__p);
  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  if (__p)
  {
    v71 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v74 = __src;
    operator delete(__src);
  }

  return v63;
}

void sub_100846A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100846AEC()
{
  result = qword_1026372F8;
  if (qword_1026372F8)
  {
    return (*(*qword_1026372F8 + 8))();
  }

  return result;
}

void sub_100846B20(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_10265A690 & 1) == 0)
  {
    byte_10265A690 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/ProtobufDefs/CLPPrivateDataCapture.pb.cc", a4);
    sub_10041B8E4(v4, v5, v6, v7);
    sub_100D0BBD0(v8, v9, v10, v11);
    sub_10099907C(v12, v13, v14, v15);
    sub_101234534(v16, v17, v18, v19);
    sub_10063BFB8(v20, v21, v22, v23);
    sub_1015F481C(v24, v25, v26, v27);
    sub_100B7D4D0(v28, v29, v30, v31);
    sub_100E72208(v32, v33, v34, v35);
    sub_100A5714C(v36, v37, v38, v39);
    sub_1012A34B4(v40, v41, v42, v43);
    sub_10110985C(v44, v45, v46, v47);
    sub_1009464B0(v48, v49, v50, v51);
    sub_100DE4A28(v52, v53, v54, v55);
    operator new();
  }
}

uint64_t sub_100846C64(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = sub_10041F7B4(a1, a2, a3, a4);
  a1[1] = v5;
  v9 = sub_10042031C(v5, v6, v7, v8);
  a1[2] = v9;
  v13 = sub_100420DF8(v9, v10, v11, v12);
  a1[3] = v13;
  v17 = sub_100428B50(v13, v14, v15, v16);
  a1[4] = v17;
  v21 = sub_10042C350(v17, v18, v19, v20);
  a1[5] = v21;
  v25 = sub_10042D5CC(v21, v22, v23, v24);
  a1[6] = v25;
  v29 = sub_10043127C(v25, v26, v27, v28);
  a1[7] = v29;
  v33 = sub_100431A54(v29, v30, v31, v32);
  a1[8] = v33;
  v37 = sub_100431FF8(v33, v34, v35, v36);
  a1[9] = v37;
  v41 = sub_100433924(v37, v38, v39, v40);
  a1[10] = v41;
  v45 = sub_10043A360(v41, v42, v43, v44);
  a1[11] = v45;
  v49 = sub_10043B48C(v45, v46, v47, v48);
  a1[12] = v49;
  v53 = sub_100D18D38(v49, v50, v51, v52);
  a1[13] = v53;
  v57 = sub_10043CA04(v53, v54, v55, v56);
  a1[14] = v57;
  v61 = sub_10043D200(v57, v58, v59, v60);
  a1[15] = v61;
  v65 = sub_10044115C(v61, v62, v63, v64);
  a1[16] = v65;
  v69 = sub_100443720(v65, v66, v67, v68);
  a1[17] = v69;
  v73 = sub_100428B50(v69, v70, v71, v72);
  a1[18] = v73;
  v77 = sub_100445F84(v73, v74, v75, v76);
  a1[19] = v77;
  v81 = sub_100447F34(v77, v78, v79, v80);
  a1[20] = v81;
  v85 = sub_100434DD0(v81, v82, v83, v84);
  a1[21] = v85;
  v89 = sub_100449C1C(v85, v86, v87, v88);
  a1[22] = v89;
  v93 = sub_1004366EC(v89, v90, v91, v92);
  a1[23] = v93;
  v97 = sub_100438190(v93, v94, v95, v96);
  a1[24] = v97;
  v101 = sub_10043763C(v97, v98, v99, v100);
  a1[25] = v101;
  v105 = sub_100443FD0(v101, v102, v103, v104);
  a1[26] = v105;
  v109 = sub_100446CC8(v105, v106, v107, v108);
  a1[27] = v109;
  v113 = sub_10044A798(v109, v110, v111, v112);
  a1[28] = v113;
  v117 = sub_10044C644(v113, v114, v115, v116);
  a1[29] = v117;
  v121 = sub_10044F770(v117, v118, v119, v120);
  a1[30] = v121;
  v125 = sub_10045125C(v121, v122, v123, v124);
  a1[31] = v125;
  v129 = sub_10042F810(v125, v126, v127, v128);
  a1[32] = v129;
  v133 = sub_1004529DC(v129, v130, v131, v132);
  a1[33] = v133;
  v137 = sub_1012A8B5C(v133, v134, v135, v136);
  a1[34] = v137;
  v141 = sub_100453940(v137, v138, v139, v140);
  a1[35] = v141;
  v145 = sub_100E892C0(v141, v142, v143, v144);
  a1[36] = v145;
  v149 = sub_100999584(v145, v146, v147, v148);
  a1[37] = v149;
  v153 = sub_100B7D960(v149, v150, v151, v152);
  a1[38] = v153;
  v157 = sub_1015F4C58(v153, v154, v155, v156);
  a1[39] = v157;
  v161 = sub_100A57514(v157, v158, v159, v160);
  a1[40] = v161;
  v165 = sub_10110A3F4(v161, v162, v163, v164);
  a1[41] = v165;
  v169 = sub_10063C4E4(v165, v166, v167, v168);
  a1[42] = v169;
  v173 = sub_101234C38(v169, v170, v171, v172);
  a1[43] = v173;
  v177 = sub_100E004C4(v173, v174, v175, v176);
  a1[44] = v177;
  v181 = sub_100948B58(v177, v178, v179, v180);
  a1[45] = v181;
  v185 = sub_100949290(v181, v182, v183, v184);
  a1[46] = v185;
  v189 = sub_100949B20(v185, v186, v187, v188);
  a1[47] = v189;
  v193 = sub_10094A3A8(v189, v190, v191, v192);
  a1[48] = v193;
  v197 = sub_10094AAC8(v193, v194, v195, v196);
  a1[49] = v197;
  v201 = sub_10094B9D4(v197, v198, v199, v200);
  a1[50] = v201;
  v205 = sub_10094C200(v201, v202, v203, v204);
  a1[51] = v205;
  v209 = sub_10094CA80(v205, v206, v207, v208);
  a1[52] = v209;
  v213 = sub_10094D6D4(v209, v210, v211, v212);
  a1[53] = v213;
  v217 = sub_10094DDC4(v213, v214, v215, v216);
  a1[54] = v217;
  v221 = sub_10094E6B8(v217, v218, v219, v220);
  a1[55] = v221;
  v225 = sub_10094ECD8(v221, v222, v223, v224);
  a1[56] = v225;
  v229 = sub_10094F3AC(v225, v226, v227, v228);
  a1[57] = v229;
  v233 = sub_10094FB08(v229, v230, v231, v232);
  a1[58] = v233;
  result = sub_100950174(v233, v234, v235, v236);
  a1[59] = result;
  return result;
}

void sub_100846E5C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v125);
  }

  v4 = *(a2 + 488);
  if (v4)
  {
    if (v4)
    {
      *(a1 + 488) |= 1u;
      v5 = *(a1 + 8);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 8);
      if (!v6)
      {
        v6 = *(qword_1026372F8 + 8);
      }

      sub_10041F6A4(v5, v6);
      v4 = *(a2 + 488);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 488) |= 2u;
      v7 = *(a1 + 16);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 16);
      if (!v8)
      {
        v8 = *(qword_1026372F8 + 16);
      }

      sub_10042020C(v7, v8);
      v4 = *(a2 + 488);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 488) |= 4u;
      v9 = *(a1 + 24);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 24);
      if (!v10)
      {
        v10 = *(qword_1026372F8 + 24);
      }

      sub_100420CE8(v9, v10);
      v4 = *(a2 + 488);
    }

    if ((v4 & 8) != 0)
    {
      *(a1 + 488) |= 8u;
      v11 = *(a1 + 32);
      if (!v11)
      {
        operator new();
      }

      v12 = *(a2 + 32);
      if (!v12)
      {
        v12 = *(qword_1026372F8 + 32);
      }

      sub_100428520(v11, v12);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x10) != 0)
    {
      *(a1 + 488) |= 0x10u;
      v13 = *(a1 + 40);
      if (!v13)
      {
        operator new();
      }

      v14 = *(a2 + 40);
      if (!v14)
      {
        v14 = *(qword_1026372F8 + 40);
      }

      sub_10042C048(v13, v14);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x20) != 0)
    {
      *(a1 + 488) |= 0x20u;
      v15 = *(a1 + 48);
      if (!v15)
      {
        operator new();
      }

      v16 = *(a2 + 48);
      if (!v16)
      {
        v16 = *(qword_1026372F8 + 48);
      }

      sub_10042D2CC(v15, v16);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x40) != 0)
    {
      *(a1 + 488) |= 0x40u;
      v17 = *(a1 + 56);
      if (!v17)
      {
        operator new();
      }

      v18 = *(a2 + 56);
      if (!v18)
      {
        v18 = *(qword_1026372F8 + 56);
      }

      sub_100430F74(v17, v18);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x80) != 0)
    {
      *(a1 + 488) |= 0x80u;
      v19 = *(a1 + 64);
      if (!v19)
      {
        operator new();
      }

      v20 = *(a2 + 64);
      if (!v20)
      {
        v20 = *(qword_1026372F8 + 64);
      }

      sub_100431950(v19, v20);
      v4 = *(a2 + 488);
    }
  }

  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      *(a1 + 488) |= 0x100u;
      v21 = *(a1 + 72);
      if (!v21)
      {
        operator new();
      }

      v22 = *(a2 + 72);
      if (!v22)
      {
        v22 = *(qword_1026372F8 + 72);
      }

      sub_100431D68(v21, v22);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x200) != 0)
    {
      *(a1 + 488) |= 0x200u;
      v23 = *(a1 + 80);
      if (!v23)
      {
        operator new();
      }

      v24 = *(a2 + 80);
      if (!v24)
      {
        v24 = *(qword_1026372F8 + 80);
      }

      sub_100433614(v23, v24);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x400) != 0)
    {
      *(a1 + 488) |= 0x400u;
      v25 = *(a1 + 88);
      if (!v25)
      {
        operator new();
      }

      v26 = *(a2 + 88);
      if (!v26)
      {
        v26 = *(qword_1026372F8 + 88);
      }

      sub_100439E7C(v25, v26);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x800) != 0)
    {
      *(a1 + 488) |= 0x800u;
      v27 = *(a1 + 96);
      if (!v27)
      {
        operator new();
      }

      v28 = *(a2 + 96);
      if (!v28)
      {
        v28 = *(qword_1026372F8 + 96);
      }

      sub_10043B24C(v27, v28);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x1000) != 0)
    {
      *(a1 + 488) |= 0x1000u;
      v29 = *(a1 + 104);
      if (!v29)
      {
        operator new();
      }

      v30 = *(a2 + 104);
      if (!v30)
      {
        v30 = *(qword_1026372F8 + 104);
      }

      sub_100D18A4C(v29, v30);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x2000) != 0)
    {
      *(a1 + 488) |= 0x2000u;
      v31 = *(a1 + 112);
      if (!v31)
      {
        operator new();
      }

      v32 = *(a2 + 112);
      if (!v32)
      {
        v32 = *(qword_1026372F8 + 112);
      }

      sub_10043C824(v31, v32);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x4000) != 0)
    {
      *(a1 + 488) |= 0x4000u;
      v33 = *(a1 + 120);
      if (!v33)
      {
        operator new();
      }

      v34 = *(a2 + 120);
      if (!v34)
      {
        v34 = *(qword_1026372F8 + 120);
      }

      sub_10043D038(v33, v34);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x8000) != 0)
    {
      *(a1 + 488) |= 0x8000u;
      v35 = *(a1 + 128);
      if (!v35)
      {
        operator new();
      }

      v36 = *(a2 + 128);
      if (!v36)
      {
        v36 = *(qword_1026372F8 + 128);
      }

      sub_100440E30(v35, v36);
      v4 = *(a2 + 488);
    }
  }

  if ((v4 & 0xFF0000) != 0)
  {
    if ((v4 & 0x10000) != 0)
    {
      *(a1 + 488) |= 0x10000u;
      v37 = *(a1 + 136);
      if (!v37)
      {
        operator new();
      }

      v38 = *(a2 + 136);
      if (!v38)
      {
        v38 = *(qword_1026372F8 + 136);
      }

      sub_1004433CC(v37, v38);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x20000) != 0)
    {
      *(a1 + 488) |= 0x20000u;
      v39 = *(a1 + 144);
      if (!v39)
      {
        operator new();
      }

      v40 = *(a2 + 144);
      if (!v40)
      {
        v40 = *(qword_1026372F8 + 144);
      }

      sub_100428520(v39, v40);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x40000) != 0)
    {
      *(a1 + 488) |= 0x40000u;
      v41 = *(a1 + 152);
      if (!v41)
      {
        operator new();
      }

      v42 = *(a2 + 152);
      if (!v42)
      {
        v42 = *(qword_1026372F8 + 152);
      }

      sub_100445B40(v41, v42);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x80000) != 0)
    {
      *(a1 + 488) |= 0x80000u;
      v43 = *(a1 + 160);
      if (!v43)
      {
        operator new();
      }

      v44 = *(a2 + 160);
      if (!v44)
      {
        v44 = *(qword_1026372F8 + 160);
      }

      sub_100447D60(v43, v44);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x100000) != 0)
    {
      *(a1 + 488) |= 0x100000u;
      v45 = *(a1 + 168);
      if (!v45)
      {
        operator new();
      }

      v46 = *(a2 + 168);
      if (!v46)
      {
        v46 = *(qword_1026372F8 + 168);
      }

      sub_100434ACC(v45, v46);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x200000) != 0)
    {
      *(a1 + 488) |= 0x200000u;
      v47 = *(a1 + 176);
      if (!v47)
      {
        operator new();
      }

      v48 = *(a2 + 176);
      if (!v48)
      {
        v48 = *(qword_1026372F8 + 176);
      }

      sub_1004498A8(v47, v48);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x400000) != 0)
    {
      *(a1 + 488) |= 0x400000u;
      v49 = *(a1 + 184);
      if (!v49)
      {
        operator new();
      }

      v50 = *(a2 + 184);
      if (!v50)
      {
        v50 = *(qword_1026372F8 + 184);
      }

      sub_1004363D8(v49, v50);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x800000) != 0)
    {
      *(a1 + 488) |= 0x800000u;
      v51 = *(a1 + 192);
      if (!v51)
      {
        operator new();
      }

      v52 = *(a2 + 192);
      if (!v52)
      {
        v52 = *(qword_1026372F8 + 192);
      }

      sub_100437D70(v51, v52);
      v4 = *(a2 + 488);
    }
  }

  if (HIBYTE(v4))
  {
    if ((v4 & 0x1000000) != 0)
    {
      *(a1 + 488) |= 0x1000000u;
      v53 = *(a1 + 200);
      if (!v53)
      {
        operator new();
      }

      v54 = *(a2 + 200);
      if (!v54)
      {
        v54 = *(qword_1026372F8 + 200);
      }

      sub_100437450(v53, v54);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x2000000) != 0)
    {
      *(a1 + 488) |= 0x2000000u;
      v55 = *(a1 + 208);
      if (!v55)
      {
        operator new();
      }

      v56 = *(a2 + 208);
      if (!v56)
      {
        v56 = *(qword_1026372F8 + 208);
      }

      sub_100443DF0(v55, v56);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x4000000) != 0)
    {
      *(a1 + 488) |= 0x4000000u;
      v57 = *(a1 + 216);
      if (!v57)
      {
        operator new();
      }

      v58 = *(a2 + 216);
      if (!v58)
      {
        v58 = *(qword_1026372F8 + 216);
      }

      sub_100446AE8(v57, v58);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x8000000) != 0)
    {
      *(a1 + 488) |= 0x8000000u;
      v59 = *(a1 + 224);
      if (!v59)
      {
        operator new();
      }

      v60 = *(a2 + 224);
      if (!v60)
      {
        v60 = *(qword_1026372F8 + 224);
      }

      sub_10044A624(v59, v60);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x10000000) != 0)
    {
      *(a1 + 488) |= 0x10000000u;
      v61 = *(a1 + 232);
      if (!v61)
      {
        operator new();
      }

      v62 = *(a2 + 232);
      if (!v62)
      {
        v62 = *(qword_1026372F8 + 232);
      }

      sub_10044C328(v61, v62);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x20000000) != 0)
    {
      *(a1 + 488) |= 0x20000000u;
      v63 = *(a1 + 240);
      if (!v63)
      {
        operator new();
      }

      v64 = *(a2 + 240);
      if (!v64)
      {
        v64 = *(qword_1026372F8 + 240);
      }

      sub_10044F570(v63, v64);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x40000000) != 0)
    {
      *(a1 + 488) |= 0x40000000u;
      v65 = *(a1 + 248);
      if (!v65)
      {
        operator new();
      }

      v66 = *(a2 + 248);
      if (!v66)
      {
        v66 = *(qword_1026372F8 + 248);
      }

      sub_100450EBC(v65, v66);
      v4 = *(a2 + 488);
    }

    if ((v4 & 0x80000000) != 0)
    {
      *(a1 + 488) |= 0x80000000;
      v67 = *(a1 + 256);
      if (!v67)
      {
        operator new();
      }

      v68 = *(a2 + 256);
      if (!v68)
      {
        v68 = *(qword_1026372F8 + 256);
      }

      sub_10042F50C(v67, v68);
    }
  }

  v69 = *(a2 + 492);
  if (v69)
  {
    if (v69)
    {
      *(a1 + 492) |= 1u;
      v70 = *(a1 + 264);
      if (!v70)
      {
        operator new();
      }

      v71 = *(a2 + 264);
      if (!v71)
      {
        v71 = *(qword_1026372F8 + 264);
      }

      sub_100452438(v70, v71);
      v69 = *(a2 + 492);
    }

    if ((v69 & 2) != 0)
    {
      *(a1 + 492) |= 2u;
      v72 = *(a1 + 272);
      if (!v72)
      {
        operator new();
      }

      v73 = *(a2 + 272);
      if (!v73)
      {
        v73 = *(qword_1026372F8 + 272);
      }

      sub_1012A8884(v72, v73);
      v69 = *(a2 + 492);
    }

    if ((v69 & 4) != 0)
    {
      *(a1 + 492) |= 4u;
      v74 = *(a1 + 280);
      if (!v74)
      {
        operator new();
      }

      v75 = *(a2 + 280);
      if (!v75)
      {
        v75 = *(qword_1026372F8 + 280);
      }

      sub_10045377C(v74, v75);
      v69 = *(a2 + 492);
    }

    if ((v69 & 8) != 0)
    {
      *(a1 + 492) |= 8u;
      v76 = *(a1 + 288);
      if (!v76)
      {
        operator new();
      }

      v77 = *(a2 + 288);
      if (!v77)
      {
        v77 = *(qword_1026372F8 + 288);
      }

      sub_100E88DC8(v76, v77);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x10) != 0)
    {
      *(a1 + 492) |= 0x10u;
      v78 = *(a1 + 296);
      if (!v78)
      {
        operator new();
      }

      v79 = *(a2 + 296);
      if (!v79)
      {
        v79 = *(qword_1026372F8 + 296);
      }

      sub_100999298(v78, v79);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x20) != 0)
    {
      *(a1 + 492) |= 0x20u;
      v80 = *(a1 + 304);
      if (!v80)
      {
        operator new();
      }

      v81 = *(a2 + 304);
      if (!v81)
      {
        v81 = *(qword_1026372F8 + 304);
      }

      sub_100B7D5DC(v80, v81);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x40) != 0)
    {
      *(a1 + 492) |= 0x40u;
      v82 = *(a1 + 312);
      if (!v82)
      {
        operator new();
      }

      v83 = *(a2 + 312);
      if (!v83)
      {
        v83 = *(qword_1026372F8 + 312);
      }

      sub_1015F4A80(v82, v83);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x80) != 0)
    {
      *(a1 + 492) |= 0x80u;
      v84 = *(a1 + 320);
      if (!v84)
      {
        operator new();
      }

      v85 = *(a2 + 320);
      if (!v85)
      {
        v85 = *(qword_1026372F8 + 320);
      }

      sub_100A5734C(v84, v85);
      v69 = *(a2 + 492);
    }
  }

  if ((v69 & 0xFF00) != 0)
  {
    if ((v69 & 0x100) != 0)
    {
      *(a1 + 492) |= 0x100u;
      v86 = *(a1 + 328);
      if (!v86)
      {
        operator new();
      }

      v87 = *(a2 + 328);
      if (!v87)
      {
        v87 = *(qword_1026372F8 + 328);
      }

      sub_101109E9C(v86, v87);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x200) != 0)
    {
      *(a1 + 492) |= 0x200u;
      v88 = *(a1 + 336);
      if (!v88)
      {
        operator new();
      }

      v89 = *(a2 + 336);
      if (!v89)
      {
        v89 = *(qword_1026372F8 + 336);
      }

      sub_10063C314(v88, v89);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x400) != 0)
    {
      *(a1 + 492) |= 0x400u;
      v90 = *(a1 + 344);
      if (!v90)
      {
        operator new();
      }

      v91 = *(a2 + 344);
      if (!v91)
      {
        v91 = *(qword_1026372F8 + 344);
      }

      sub_10123488C(v90, v91);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x800) != 0)
    {
      *(a1 + 492) |= 0x800u;
      v92 = *(a1 + 352);
      if (!v92)
      {
        operator new();
      }

      v93 = *(a2 + 352);
      if (!v93)
      {
        v93 = *(qword_1026372F8 + 352);
      }

      sub_100DFF9EC(v92, v93);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x1000) != 0)
    {
      *(a1 + 492) |= 0x1000u;
      v94 = *(a1 + 360);
      if (!v94)
      {
        operator new();
      }

      v95 = *(a2 + 360);
      if (!v95)
      {
        v95 = *(qword_1026372F8 + 360);
      }

      sub_100948958(v94, v95);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x2000) != 0)
    {
      *(a1 + 492) |= 0x2000u;
      v96 = *(a1 + 368);
      if (!v96)
      {
        operator new();
      }

      v97 = *(a2 + 368);
      if (!v97)
      {
        v97 = *(qword_1026372F8 + 368);
      }

      sub_100949034(v96, v97);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x4000) != 0)
    {
      *(a1 + 492) |= 0x4000u;
      v98 = *(a1 + 376);
      if (!v98)
      {
        operator new();
      }

      v99 = *(a2 + 376);
      if (!v99)
      {
        v99 = *(qword_1026372F8 + 376);
      }

      sub_100949960(v98, v99);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x8000) != 0)
    {
      v100 = *(a2 + 480);
      if (!sub_10041ECEC(v100))
      {
        sub_10195532C();
      }

      *(a1 + 492) |= 0x8000u;
      *(a1 + 480) = v100;
      v69 = *(a2 + 492);
    }
  }

  if ((v69 & 0xFF0000) != 0)
  {
    if ((v69 & 0x10000) != 0)
    {
      *(a1 + 492) |= 0x10000u;
      v101 = *(a1 + 384);
      if (!v101)
      {
        operator new();
      }

      v102 = *(a2 + 384);
      if (!v102)
      {
        v102 = *(qword_1026372F8 + 384);
      }

      sub_10094A19C(v101, v102);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x20000) != 0)
    {
      *(a1 + 492) |= 0x20000u;
      v103 = *(a1 + 392);
      if (!v103)
      {
        operator new();
      }

      v104 = *(a2 + 392);
      if (!v104)
      {
        v104 = *(qword_1026372F8 + 392);
      }

      sub_10094A8BC(v103, v104);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x40000) != 0)
    {
      *(a1 + 492) |= 0x40000u;
      v105 = *(a1 + 400);
      if (!v105)
      {
        operator new();
      }

      v106 = *(a2 + 400);
      if (!v106)
      {
        v106 = *(qword_1026372F8 + 400);
      }

      sub_10094B6E0(v105, v106);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x80000) != 0)
    {
      *(a1 + 492) |= 0x80000u;
      v107 = *(a1 + 408);
      if (!v107)
      {
        operator new();
      }

      v108 = *(a2 + 408);
      if (!v108)
      {
        v108 = *(qword_1026372F8 + 408);
      }

      sub_10094BFBC(v107, v108);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x100000) != 0)
    {
      *(a1 + 492) |= 0x100000u;
      v109 = *(a1 + 416);
      if (!v109)
      {
        operator new();
      }

      v110 = *(a2 + 416);
      if (!v110)
      {
        v110 = *(qword_1026372F8 + 416);
      }

      sub_10094C86C(v109, v110);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x200000) != 0)
    {
      *(a1 + 492) |= 0x200000u;
      v111 = *(a1 + 424);
      if (!v111)
      {
        operator new();
      }

      v112 = *(a2 + 424);
      if (!v112)
      {
        v112 = *(qword_1026372F8 + 424);
      }

      sub_10094D4BC(v111, v112);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x400000) != 0)
    {
      *(a1 + 492) |= 0x400000u;
      v113 = *(a1 + 432);
      if (!v113)
      {
        operator new();
      }

      v114 = *(a2 + 432);
      if (!v114)
      {
        v114 = *(qword_1026372F8 + 432);
      }

      sub_10094DC84(v113, v114);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x800000) != 0)
    {
      *(a1 + 492) |= 0x800000u;
      v115 = *(a1 + 440);
      if (!v115)
      {
        operator new();
      }

      v116 = *(a2 + 440);
      if (!v116)
      {
        v116 = *(qword_1026372F8 + 440);
      }

      sub_10094E4FC(v115, v116);
      v69 = *(a2 + 492);
    }
  }

  if (HIBYTE(v69))
  {
    if ((v69 & 0x1000000) != 0)
    {
      *(a1 + 492) |= 0x1000000u;
      v117 = *(a1 + 448);
      if (!v117)
      {
        operator new();
      }

      v118 = *(a2 + 448);
      if (!v118)
      {
        v118 = *(qword_1026372F8 + 448);
      }

      sub_10094EAEC(v117, v118);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x2000000) != 0)
    {
      *(a1 + 492) |= 0x2000000u;
      v119 = *(a1 + 456);
      if (!v119)
      {
        operator new();
      }

      v120 = *(a2 + 456);
      if (!v120)
      {
        v120 = *(qword_1026372F8 + 456);
      }

      sub_10094F1A0(v119, v120);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x4000000) != 0)
    {
      *(a1 + 492) |= 0x4000000u;
      v121 = *(a1 + 464);
      if (!v121)
      {
        operator new();
      }

      v122 = *(a2 + 464);
      if (!v122)
      {
        v122 = *(qword_1026372F8 + 464);
      }

      sub_10094F928(v121, v122);
      v69 = *(a2 + 492);
    }

    if ((v69 & 0x8000000) != 0)
    {
      *(a1 + 492) |= 0x8000000u;
      v123 = *(a1 + 472);
      if (!v123)
      {
        operator new();
      }

      v124 = *(a2 + 472);
      if (!v124)
      {
        v124 = *(qword_1026372F8 + 472);
      }

      sub_10094FF40(v123, v124);
    }
  }
}

void sub_100848660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  JUMPOUT(0x100848658);
}

void sub_100848674(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102476928;
  sub_1000150A4(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

uint64_t sub_1008486C8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1026372F8;
  if (!qword_1026372F8)
  {
    sub_100846B20(0, a2, a3, a4);
    return qword_1026372F8;
  }

  return result;
}

uint64_t sub_1008487A8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 488);
  if (v2)
  {
    if (v2)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_10041F838(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 2) != 0)
    {
      result = *(v1 + 16);
      if (result)
      {
        result = sub_1004203A0(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 4) != 0)
    {
      result = *(v1 + 24);
      if (result)
      {
        result = sub_100420E7C(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 8) != 0)
    {
      result = *(v1 + 32);
      if (result)
      {
        result = sub_100428BF0(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      result = *(v1 + 40);
      if (result)
      {
        result = sub_10042C3D0(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      result = *(v1 + 48);
      if (result)
      {
        result = sub_10042D64C(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      result = *(v1 + 56);
      if (result)
      {
        result = sub_1004312FC(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      result = *(v1 + 64);
      if (result)
      {
        result = sub_100431AD0(result);
        v2 = *(v1 + 488);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      result = *(v1 + 72);
      if (result)
      {
        result = sub_100432080(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x200) != 0)
    {
      result = *(v1 + 80);
      if (result)
      {
        result = sub_1004339A4(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x400) != 0)
    {
      result = *(v1 + 88);
      if (result)
      {
        result = sub_10043A3F0(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x800) != 0)
    {
      result = *(v1 + 96);
      if (result)
      {
        result = sub_10043B514(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x1000) != 0)
    {
      result = *(v1 + 104);
      if (result)
      {
        result = sub_100D18DDC(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x2000) != 0)
    {
      result = *(v1 + 112);
      if (result)
      {
        result = sub_10043CA88(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x4000) != 0)
    {
      result = *(v1 + 120);
      if (result)
      {
        result = sub_10043D27C(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x8000) != 0)
    {
      result = *(v1 + 128);
      if (result)
      {
        result = sub_1004411DC(result);
        v2 = *(v1 + 488);
      }
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      result = *(v1 + 136);
      if (result)
      {
        result = sub_1004437A4(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x20000) != 0)
    {
      result = *(v1 + 144);
      if (result)
      {
        result = sub_100428BF0(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x40000) != 0)
    {
      result = *(v1 + 152);
      if (result)
      {
        result = sub_100446010(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x80000) != 0)
    {
      result = *(v1 + 160);
      if (result)
      {
        result = sub_100447FB0(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x100000) != 0)
    {
      result = *(v1 + 168);
      if (result)
      {
        result = sub_100434E50(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x200000) != 0)
    {
      result = *(v1 + 176);
      if (result)
      {
        result = sub_100449CA8(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x400000) != 0)
    {
      result = *(v1 + 184);
      if (result)
      {
        result = sub_10043676C(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x800000) != 0)
    {
      result = *(v1 + 192);
      if (result)
      {
        result = sub_100438224(result);
        v2 = *(v1 + 488);
      }
    }
  }

  if (HIBYTE(v2))
  {
    if ((v2 & 0x1000000) != 0)
    {
      result = *(v1 + 200);
      if (result)
      {
        result = sub_1004376C8(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x2000000) != 0)
    {
      result = *(v1 + 208);
      if (result)
      {
        result = sub_100444054(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x4000000) != 0)
    {
      result = *(v1 + 216);
      if (result)
      {
        result = sub_100446D4C(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x8000000) != 0)
    {
      result = *(v1 + 224);
      if (result)
      {
        result = sub_10044A81C(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x10000000) != 0)
    {
      result = *(v1 + 232);
      if (result)
      {
        result = sub_10044C6D0(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x20000000) != 0)
    {
      result = *(v1 + 240);
      if (result)
      {
        result = sub_10044F7F8(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x40000000) != 0)
    {
      result = *(v1 + 248);
      if (result)
      {
        result = sub_1004512E4(result);
        v2 = *(v1 + 488);
      }
    }

    if ((v2 & 0x80000000) != 0)
    {
      result = *(v1 + 256);
      if (result)
      {
        result = sub_10042F890(result);
      }
    }
  }

  v3 = *(v1 + 492);
  if (v3)
  {
    if (v3)
    {
      result = *(v1 + 264);
      if (result)
      {
        result = sub_100452A68(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 2) != 0)
    {
      result = *(v1 + 272);
      if (result)
      {
        result = sub_1012A8BF0(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 4) != 0)
    {
      result = *(v1 + 280);
      if (result)
      {
        result = sub_1004539D0(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 8) != 0)
    {
      result = *(v1 + 288);
      if (result)
      {
        result = sub_100E8934C(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x10) != 0)
    {
      result = *(v1 + 296);
      if (result)
      {
        result = sub_100999600(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x20) != 0)
    {
      result = *(v1 + 304);
      if (result)
      {
        result = sub_100B7D9E8(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x40) != 0)
    {
      result = *(v1 + 312);
      if (result)
      {
        result = sub_1015F4CD4(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x80) != 0)
    {
      result = *(v1 + 320);
      if (result)
      {
        result = sub_100A57590(result);
        v3 = *(v1 + 492);
      }
    }
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      result = *(v1 + 328);
      if (result)
      {
        result = sub_10110A484(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x200) != 0)
    {
      result = *(v1 + 336);
      if (result)
      {
        result = sub_10063C560(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x400) != 0)
    {
      result = *(v1 + 344);
      if (result)
      {
        result = sub_101234CC0(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x800) != 0)
    {
      result = *(v1 + 352);
      if (result)
      {
        result = sub_100E00574(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x1000) != 0)
    {
      result = *(v1 + 360);
      if (result)
      {
        result = sub_100948BD8(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x2000) != 0)
    {
      result = *(v1 + 368);
      if (result)
      {
        result = sub_100949310(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x4000) != 0)
    {
      result = *(v1 + 376);
      if (result)
      {
        result = sub_100949BAC(result);
        v3 = *(v1 + 492);
      }
    }

    *(v1 + 480) = 0;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      result = *(v1 + 384);
      if (result)
      {
        result = sub_10094A428(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x20000) != 0)
    {
      result = *(v1 + 392);
      if (result)
      {
        result = sub_10094AB48(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x40000) != 0)
    {
      result = *(v1 + 400);
      if (result)
      {
        result = sub_10094BA50(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x80000) != 0)
    {
      result = *(v1 + 408);
      if (result)
      {
        result = sub_10094C280(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x100000) != 0)
    {
      result = *(v1 + 416);
      if (result)
      {
        result = sub_10094CB0C(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x200000) != 0)
    {
      result = *(v1 + 424);
      if (result)
      {
        result = sub_10094D750(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x400000) != 0)
    {
      result = *(v1 + 432);
      if (result)
      {
        result = sub_10094DE50(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x800000) != 0)
    {
      result = *(v1 + 440);
      if (result)
      {
        result = sub_10094E740(result);
        v3 = *(v1 + 492);
      }
    }
  }

  if (HIBYTE(v3))
  {
    if ((v3 & 0x1000000) != 0)
    {
      result = *(v1 + 448);
      if (result)
      {
        result = sub_10094ED64(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x2000000) != 0)
    {
      result = *(v1 + 456);
      if (result)
      {
        result = sub_10094F438(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x4000000) != 0)
    {
      result = *(v1 + 464);
      if (result)
      {
        result = sub_10094FB90(result);
        v3 = *(v1 + 492);
      }
    }

    if ((v3 & 0x8000000) != 0)
    {
      result = *(v1 + 472);
      if (result)
      {
        result = sub_1009501F0(result);
      }
    }
  }

  *(v1 + 488) = 0;
  return result;
}

uint64_t sub_100848CAC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 0x3ED)
        {
          switch(v7)
          {
            case 1u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              *(a1 + 488) |= 1u;
              v9 = *(a1 + 8);
              if (!v9)
              {
                operator new();
              }

              v545 = 0;
              v10 = *(this + 1);
              if (v10 >= *(this + 2) || *v10 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v10;
                *(this + 1) = v10 + 1;
              }

              v223 = *(this + 14);
              v224 = *(this + 15);
              *(this + 14) = v223 + 1;
              if (v223 >= v224)
              {
                return 0;
              }

              v225 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10041F888(v9, this, v226) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v225);
              v227 = *(this + 14);
              v20 = __OFSUB__(v227, 1);
              v228 = v227 - 1;
              if (v228 < 0 == v20)
              {
                *(this + 14) = v228;
              }

              v229 = *(this + 1);
              if (v229 >= *(this + 2) || *v229 != 18)
              {
                continue;
              }

              *(this + 1) = v229 + 1;
              goto LABEL_511;
            case 2u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

LABEL_511:
              *(a1 + 488) |= 2u;
              v230 = *(a1 + 16);
              if (!v230)
              {
                operator new();
              }

              v545 = 0;
              v231 = *(this + 1);
              if (v231 >= *(this + 2) || *v231 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v231;
                *(this + 1) = v231 + 1;
              }

              v232 = *(this + 14);
              v233 = *(this + 15);
              *(this + 14) = v232 + 1;
              if (v232 >= v233)
              {
                return 0;
              }

              v234 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_1004203F0(v230, this, v235) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v234);
              v236 = *(this + 14);
              v20 = __OFSUB__(v236, 1);
              v237 = v236 - 1;
              if (v237 < 0 == v20)
              {
                *(this + 14) = v237;
              }

              v238 = *(this + 1);
              if (v238 >= *(this + 2) || *v238 != 26)
              {
                continue;
              }

              *(this + 1) = v238 + 1;
LABEL_525:
              *(a1 + 488) |= 4u;
              v239 = *(a1 + 24);
              if (!v239)
              {
                operator new();
              }

              v545 = 0;
              v240 = *(this + 1);
              if (v240 >= *(this + 2) || *v240 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v240;
                *(this + 1) = v240 + 1;
              }

              v241 = *(this + 14);
              v242 = *(this + 15);
              *(this + 14) = v241 + 1;
              if (v241 >= v242)
              {
                return 0;
              }

              v243 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100420ECC(v239, this, v244) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v243);
              v245 = *(this + 14);
              v20 = __OFSUB__(v245, 1);
              v246 = v245 - 1;
              if (v246 < 0 == v20)
              {
                *(this + 14) = v246;
              }

              v247 = *(this + 1);
              if (v247 >= *(this + 2) || *v247 != 34)
              {
                continue;
              }

              *(this + 1) = v247 + 1;
LABEL_539:
              *(a1 + 488) |= 8u;
              v248 = *(a1 + 32);
              if (!v248)
              {
                operator new();
              }

              v545 = 0;
              v249 = *(this + 1);
              if (v249 >= *(this + 2) || *v249 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v249;
                *(this + 1) = v249 + 1;
              }

              v250 = *(this + 14);
              v251 = *(this + 15);
              *(this + 14) = v250 + 1;
              if (v250 >= v251)
              {
                return 0;
              }

              v252 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100428D2C(v248, this, v253) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v252);
              v254 = *(this + 14);
              v20 = __OFSUB__(v254, 1);
              v255 = v254 - 1;
              if (v255 < 0 == v20)
              {
                *(this + 14) = v255;
              }

              v256 = *(this + 1);
              if (v256 >= *(this + 2) || *v256 != 42)
              {
                continue;
              }

              *(this + 1) = v256 + 1;
LABEL_553:
              *(a1 + 488) |= 0x10u;
              v257 = *(a1 + 40);
              if (!v257)
              {
                operator new();
              }

              v545 = 0;
              v258 = *(this + 1);
              if (v258 >= *(this + 2) || *v258 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v258;
                *(this + 1) = v258 + 1;
              }

              v259 = *(this + 14);
              v260 = *(this + 15);
              *(this + 14) = v259 + 1;
              if (v259 >= v260)
              {
                return 0;
              }

              v261 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10042C434(v257, this, v262) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v261);
              v263 = *(this + 14);
              v20 = __OFSUB__(v263, 1);
              v264 = v263 - 1;
              if (v264 < 0 == v20)
              {
                *(this + 14) = v264;
              }

              v265 = *(this + 1);
              if (v265 >= *(this + 2) || *v265 != 50)
              {
                continue;
              }

              *(this + 1) = v265 + 1;
LABEL_567:
              *(a1 + 488) |= 0x20u;
              v266 = *(a1 + 48);
              if (!v266)
              {
                operator new();
              }

              v545 = 0;
              v267 = *(this + 1);
              if (v267 >= *(this + 2) || *v267 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v267;
                *(this + 1) = v267 + 1;
              }

              v268 = *(this + 14);
              v269 = *(this + 15);
              *(this + 14) = v268 + 1;
              if (v268 >= v269)
              {
                return 0;
              }

              v270 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10042D6B0(v266, this, v271) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v270);
              v272 = *(this + 14);
              v20 = __OFSUB__(v272, 1);
              v273 = v272 - 1;
              if (v273 < 0 == v20)
              {
                *(this + 14) = v273;
              }

              v274 = *(this + 1);
              if (v274 >= *(this + 2) || *v274 != 58)
              {
                continue;
              }

              *(this + 1) = v274 + 1;
LABEL_581:
              *(a1 + 488) |= 0x40u;
              v275 = *(a1 + 56);
              if (!v275)
              {
                operator new();
              }

              v545 = 0;
              v276 = *(this + 1);
              if (v276 >= *(this + 2) || *v276 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v276;
                *(this + 1) = v276 + 1;
              }

              v277 = *(this + 14);
              v278 = *(this + 15);
              *(this + 14) = v277 + 1;
              if (v277 >= v278)
              {
                return 0;
              }

              v279 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10043136C(v275, this, v280) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v279);
              v281 = *(this + 14);
              v20 = __OFSUB__(v281, 1);
              v282 = v281 - 1;
              if (v282 < 0 == v20)
              {
                *(this + 14) = v282;
              }

              v283 = *(this + 1);
              if (v283 >= *(this + 2) || *v283 != 66)
              {
                continue;
              }

              *(this + 1) = v283 + 1;
LABEL_595:
              *(a1 + 488) |= 0x80u;
              v284 = *(a1 + 64);
              if (!v284)
              {
                operator new();
              }

              v545 = 0;
              v285 = *(this + 1);
              if (v285 >= *(this + 2) || *v285 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v285;
                *(this + 1) = v285 + 1;
              }

              v286 = *(this + 14);
              v287 = *(this + 15);
              *(this + 14) = v286 + 1;
              if (v286 >= v287)
              {
                return 0;
              }

              v288 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100431AFC(v284, this, v289) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v288);
              v290 = *(this + 14);
              v20 = __OFSUB__(v290, 1);
              v291 = v290 - 1;
              if (v291 < 0 == v20)
              {
                *(this + 14) = v291;
              }

              v292 = *(this + 1);
              if (v292 >= *(this + 2) || *v292 != 74)
              {
                continue;
              }

              *(this + 1) = v292 + 1;
LABEL_609:
              *(a1 + 488) |= 0x100u;
              v293 = *(a1 + 72);
              if (!v293)
              {
                operator new();
              }

              v545 = 0;
              v294 = *(this + 1);
              if (v294 >= *(this + 2) || *v294 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v294;
                *(this + 1) = v294 + 1;
              }

              v295 = *(this + 14);
              v296 = *(this + 15);
              *(this + 14) = v295 + 1;
              if (v295 >= v296)
              {
                return 0;
              }

              v297 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_1004320B8(v293, this, v298) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v297);
              v299 = *(this + 14);
              v20 = __OFSUB__(v299, 1);
              v300 = v299 - 1;
              if (v300 < 0 == v20)
              {
                *(this + 14) = v300;
              }

              v301 = *(this + 1);
              if (v301 >= *(this + 2) || *v301 != 82)
              {
                continue;
              }

              *(this + 1) = v301 + 1;
LABEL_623:
              *(a1 + 488) |= 0x200u;
              v302 = *(a1 + 80);
              if (!v302)
              {
                operator new();
              }

              v545 = 0;
              v303 = *(this + 1);
              if (v303 >= *(this + 2) || *v303 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v303;
                *(this + 1) = v303 + 1;
              }

              v304 = *(this + 14);
              v305 = *(this + 15);
              *(this + 14) = v304 + 1;
              if (v304 >= v305)
              {
                return 0;
              }

              v306 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100433A08(v302, this, v307) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v306);
              v308 = *(this + 14);
              v20 = __OFSUB__(v308, 1);
              v309 = v308 - 1;
              if (v309 < 0 == v20)
              {
                *(this + 14) = v309;
              }

              v310 = *(this + 1);
              if (v310 >= *(this + 2) || *v310 != 90)
              {
                continue;
              }

              *(this + 1) = v310 + 1;
LABEL_637:
              *(a1 + 488) |= 0x400u;
              v311 = *(a1 + 88);
              if (!v311)
              {
                operator new();
              }

              v545 = 0;
              v312 = *(this + 1);
              if (v312 >= *(this + 2) || *v312 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v312;
                *(this + 1) = v312 + 1;
              }

              v313 = *(this + 14);
              v314 = *(this + 15);
              *(this + 14) = v313 + 1;
              if (v313 >= v314)
              {
                return 0;
              }

              v315 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10043A49C(v311, this, v316) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v315);
              v317 = *(this + 14);
              v20 = __OFSUB__(v317, 1);
              v318 = v317 - 1;
              if (v318 < 0 == v20)
              {
                *(this + 14) = v318;
              }

              v319 = *(this + 1);
              if (v319 >= *(this + 2) || *v319 != 98)
              {
                continue;
              }

              *(this + 1) = v319 + 1;
LABEL_651:
              *(a1 + 488) |= 0x800u;
              v320 = *(a1 + 96);
              if (!v320)
              {
                operator new();
              }

              v545 = 0;
              v321 = *(this + 1);
              if (v321 >= *(this + 2) || *v321 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v321;
                *(this + 1) = v321 + 1;
              }

              v322 = *(this + 14);
              v323 = *(this + 15);
              *(this + 14) = v322 + 1;
              if (v322 >= v323)
              {
                return 0;
              }

              v324 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10043B550(v320, this, v325) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v324);
              v326 = *(this + 14);
              v20 = __OFSUB__(v326, 1);
              v327 = v326 - 1;
              if (v327 < 0 == v20)
              {
                *(this + 14) = v327;
              }

              v328 = *(this + 1);
              if (v328 >= *(this + 2) || *v328 != 106)
              {
                continue;
              }

              *(this + 1) = v328 + 1;
LABEL_665:
              *(a1 + 488) |= 0x1000u;
              v329 = *(a1 + 104);
              if (!v329)
              {
                operator new();
              }

              v545 = 0;
              v330 = *(this + 1);
              if (v330 >= *(this + 2) || *v330 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v330;
                *(this + 1) = v330 + 1;
              }

              v331 = *(this + 14);
              v332 = *(this + 15);
              *(this + 14) = v331 + 1;
              if (v331 >= v332)
              {
                return 0;
              }

              v333 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10013B658(v329, this, v334) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v333);
              v335 = *(this + 14);
              v20 = __OFSUB__(v335, 1);
              v336 = v335 - 1;
              if (v336 < 0 == v20)
              {
                *(this + 14) = v336;
              }

              v337 = *(this + 1);
              if (v337 >= *(this + 2) || *v337 != 114)
              {
                continue;
              }

              *(this + 1) = v337 + 1;
LABEL_679:
              *(a1 + 488) |= 0x2000u;
              v338 = *(a1 + 112);
              if (!v338)
              {
                operator new();
              }

              v545 = 0;
              v339 = *(this + 1);
              if (v339 >= *(this + 2) || *v339 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v339;
                *(this + 1) = v339 + 1;
              }

              v340 = *(this + 14);
              v341 = *(this + 15);
              *(this + 14) = v340 + 1;
              if (v340 >= v341)
              {
                return 0;
              }

              v342 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10043CAD8(v338, this, v343) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v342);
              v344 = *(this + 14);
              v20 = __OFSUB__(v344, 1);
              v345 = v344 - 1;
              if (v345 < 0 == v20)
              {
                *(this + 14) = v345;
              }

              v346 = *(this + 1);
              if (v346 >= *(this + 2) || *v346 != 122)
              {
                continue;
              }

              *(this + 1) = v346 + 1;
LABEL_693:
              *(a1 + 488) |= 0x4000u;
              v347 = *(a1 + 120);
              if (!v347)
              {
                operator new();
              }

              v545 = 0;
              v348 = *(this + 1);
              if (v348 >= *(this + 2) || *v348 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v348;
                *(this + 1) = v348 + 1;
              }

              v349 = *(this + 14);
              v350 = *(this + 15);
              *(this + 14) = v349 + 1;
              if (v349 >= v350)
              {
                return 0;
              }

              v351 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10043D2A8(v347, this, v352) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v351);
              v353 = *(this + 14);
              v20 = __OFSUB__(v353, 1);
              v354 = v353 - 1;
              if (v354 < 0 == v20)
              {
                *(this + 14) = v354;
              }

              v355 = *(this + 1);
              if (*(this + 4) - v355 <= 1 || *v355 != 130 || v355[1] != 1)
              {
                continue;
              }

              *(this + 1) = v355 + 2;
LABEL_708:
              *(a1 + 488) |= 0x8000u;
              v356 = *(a1 + 128);
              if (!v356)
              {
                operator new();
              }

              v545 = 0;
              v357 = *(this + 1);
              if (v357 >= *(this + 2) || *v357 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v357;
                *(this + 1) = v357 + 1;
              }

              v358 = *(this + 14);
              v359 = *(this + 15);
              *(this + 14) = v358 + 1;
              if (v358 >= v359)
              {
                return 0;
              }

              v360 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100441240(v356, this, v361) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v360);
              v362 = *(this + 14);
              v20 = __OFSUB__(v362, 1);
              v363 = v362 - 1;
              if (v363 < 0 == v20)
              {
                *(this + 14) = v363;
              }

              v364 = *(this + 1);
              if (*(this + 4) - v364 <= 1 || *v364 != 138 || v364[1] != 1)
              {
                continue;
              }

              *(this + 1) = v364 + 2;
LABEL_723:
              *(a1 + 488) |= 0x10000u;
              v365 = *(a1 + 136);
              if (!v365)
              {
                operator new();
              }

              v545 = 0;
              v366 = *(this + 1);
              if (v366 >= *(this + 2) || *v366 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v366;
                *(this + 1) = v366 + 1;
              }

              v367 = *(this + 14);
              v368 = *(this + 15);
              *(this + 14) = v367 + 1;
              if (v367 >= v368)
              {
                return 0;
              }

              v369 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10044380C(v365, this, v370) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v369);
              v371 = *(this + 14);
              v20 = __OFSUB__(v371, 1);
              v372 = v371 - 1;
              if (v372 < 0 == v20)
              {
                *(this + 14) = v372;
              }

              v373 = *(this + 1);
              if (*(this + 4) - v373 <= 1 || *v373 != 146 || v373[1] != 1)
              {
                continue;
              }

              *(this + 1) = v373 + 2;
LABEL_738:
              *(a1 + 488) |= 0x20000u;
              v374 = *(a1 + 144);
              if (!v374)
              {
                operator new();
              }

              v545 = 0;
              v375 = *(this + 1);
              if (v375 >= *(this + 2) || *v375 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v375;
                *(this + 1) = v375 + 1;
              }

              v376 = *(this + 14);
              v377 = *(this + 15);
              *(this + 14) = v376 + 1;
              if (v376 >= v377)
              {
                return 0;
              }

              v378 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100428D2C(v374, this, v379) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v378);
              v380 = *(this + 14);
              v20 = __OFSUB__(v380, 1);
              v381 = v380 - 1;
              if (v381 < 0 == v20)
              {
                *(this + 14) = v381;
              }

              v382 = *(this + 1);
              if (*(this + 4) - v382 <= 1 || *v382 != 154 || v382[1] != 1)
              {
                continue;
              }

              *(this + 1) = v382 + 2;
LABEL_753:
              *(a1 + 488) |= 0x40000u;
              v383 = *(a1 + 152);
              if (!v383)
              {
                operator new();
              }

              v545 = 0;
              v384 = *(this + 1);
              if (v384 >= *(this + 2) || *v384 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v384;
                *(this + 1) = v384 + 1;
              }

              v385 = *(this + 14);
              v386 = *(this + 15);
              *(this + 14) = v385 + 1;
              if (v385 >= v386)
              {
                return 0;
              }

              v387 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_1004460A0(v383, this, v388) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v387);
              v389 = *(this + 14);
              v20 = __OFSUB__(v389, 1);
              v390 = v389 - 1;
              if (v390 < 0 == v20)
              {
                *(this + 14) = v390;
              }

              v391 = *(this + 1);
              if (*(this + 4) - v391 <= 1 || *v391 != 162 || v391[1] != 1)
              {
                continue;
              }

              *(this + 1) = v391 + 2;
LABEL_768:
              *(a1 + 488) |= 0x80000u;
              v392 = *(a1 + 160);
              if (!v392)
              {
                operator new();
              }

              v545 = 0;
              v393 = *(this + 1);
              if (v393 >= *(this + 2) || *v393 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v393;
                *(this + 1) = v393 + 1;
              }

              v394 = *(this + 14);
              v395 = *(this + 15);
              *(this + 14) = v394 + 1;
              if (v394 >= v395)
              {
                return 0;
              }

              v396 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100447FE8(v392, this, v397) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v396);
              v398 = *(this + 14);
              v20 = __OFSUB__(v398, 1);
              v399 = v398 - 1;
              if (v399 < 0 == v20)
              {
                *(this + 14) = v399;
              }

              v400 = *(this + 1);
              if (*(this + 4) - v400 <= 1 || *v400 != 170 || v400[1] != 1)
              {
                continue;
              }

              *(this + 1) = v400 + 2;
LABEL_783:
              *(a1 + 488) |= 0x100000u;
              v401 = *(a1 + 168);
              if (!v401)
              {
                operator new();
              }

              v545 = 0;
              v402 = *(this + 1);
              if (v402 >= *(this + 2) || *v402 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v402;
                *(this + 1) = v402 + 1;
              }

              v403 = *(this + 14);
              v404 = *(this + 15);
              *(this + 14) = v403 + 1;
              if (v403 >= v404)
              {
                return 0;
              }

              v405 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100434EB4(v401, this, v406) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v405);
              v407 = *(this + 14);
              v20 = __OFSUB__(v407, 1);
              v408 = v407 - 1;
              if (v408 < 0 == v20)
              {
                *(this + 14) = v408;
              }

              v409 = *(this + 1);
              if (*(this + 4) - v409 <= 1 || *v409 != 178 || v409[1] != 1)
              {
                continue;
              }

              *(this + 1) = v409 + 2;
LABEL_798:
              *(a1 + 488) |= 0x200000u;
              v410 = *(a1 + 176);
              if (!v410)
              {
                operator new();
              }

              v545 = 0;
              v411 = *(this + 1);
              if (v411 >= *(this + 2) || *v411 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v411;
                *(this + 1) = v411 + 1;
              }

              v412 = *(this + 14);
              v413 = *(this + 15);
              *(this + 14) = v412 + 1;
              if (v412 >= v413)
              {
                return 0;
              }

              v414 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100449D44(v410, this, v415) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v414);
              v416 = *(this + 14);
              v20 = __OFSUB__(v416, 1);
              v417 = v416 - 1;
              if (v417 < 0 == v20)
              {
                *(this + 14) = v417;
              }

              v418 = *(this + 1);
              if (*(this + 4) - v418 <= 1 || *v418 != 186 || v418[1] != 1)
              {
                continue;
              }

              *(this + 1) = v418 + 2;
LABEL_813:
              *(a1 + 488) |= 0x400000u;
              v419 = *(a1 + 184);
              if (!v419)
              {
                operator new();
              }

              v545 = 0;
              v420 = *(this + 1);
              if (v420 >= *(this + 2) || *v420 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v420;
                *(this + 1) = v420 + 1;
              }

              v421 = *(this + 14);
              v422 = *(this + 15);
              *(this + 14) = v421 + 1;
              if (v421 >= v422)
              {
                return 0;
              }

              v423 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_1004367D0(v419, this, v424) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v423);
              v425 = *(this + 14);
              v20 = __OFSUB__(v425, 1);
              v426 = v425 - 1;
              if (v426 < 0 == v20)
              {
                *(this + 14) = v426;
              }

              v427 = *(this + 1);
              if (*(this + 4) - v427 <= 1 || *v427 != 194 || v427[1] != 1)
              {
                continue;
              }

              *(this + 1) = v427 + 2;
LABEL_828:
              *(a1 + 488) |= 0x800000u;
              v428 = *(a1 + 192);
              if (!v428)
              {
                operator new();
              }

              v545 = 0;
              v429 = *(this + 1);
              if (v429 >= *(this + 2) || *v429 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v429;
                *(this + 1) = v429 + 1;
              }

              v430 = *(this + 14);
              v431 = *(this + 15);
              *(this + 14) = v430 + 1;
              if (v430 >= v431)
              {
                return 0;
              }

              v432 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_1004382A0(v428, this, v433) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v432);
              v434 = *(this + 14);
              v20 = __OFSUB__(v434, 1);
              v435 = v434 - 1;
              if (v435 < 0 == v20)
              {
                *(this + 14) = v435;
              }

              v436 = *(this + 1);
              if (*(this + 4) - v436 <= 1 || *v436 != 202 || v436[1] != 1)
              {
                continue;
              }

              *(this + 1) = v436 + 2;
LABEL_843:
              *(a1 + 488) |= 0x1000000u;
              v437 = *(a1 + 200);
              if (!v437)
              {
                operator new();
              }

              v545 = 0;
              v438 = *(this + 1);
              if (v438 >= *(this + 2) || *v438 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v438;
                *(this + 1) = v438 + 1;
              }

              v439 = *(this + 14);
              v440 = *(this + 15);
              *(this + 14) = v439 + 1;
              if (v439 >= v440)
              {
                return 0;
              }

              v441 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100437744(v437, this, v442) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v441);
              v443 = *(this + 14);
              v20 = __OFSUB__(v443, 1);
              v444 = v443 - 1;
              if (v444 < 0 == v20)
              {
                *(this + 14) = v444;
              }

              v445 = *(this + 1);
              if (*(this + 4) - v445 <= 1 || *v445 != 210 || v445[1] != 1)
              {
                continue;
              }

              *(this + 1) = v445 + 2;
LABEL_858:
              *(a1 + 488) |= 0x2000000u;
              v446 = *(a1 + 208);
              if (!v446)
              {
                operator new();
              }

              v545 = 0;
              v447 = *(this + 1);
              if (v447 >= *(this + 2) || *v447 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v447;
                *(this + 1) = v447 + 1;
              }

              v448 = *(this + 14);
              v449 = *(this + 15);
              *(this + 14) = v448 + 1;
              if (v448 >= v449)
              {
                return 0;
              }

              v450 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_1004440A4(v446, this, v451) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v450);
              v452 = *(this + 14);
              v20 = __OFSUB__(v452, 1);
              v453 = v452 - 1;
              if (v453 < 0 == v20)
              {
                *(this + 14) = v453;
              }

              v454 = *(this + 1);
              if (*(this + 4) - v454 <= 1 || *v454 != 218 || v454[1] != 1)
              {
                continue;
              }

              *(this + 1) = v454 + 2;
LABEL_873:
              *(a1 + 488) |= 0x4000000u;
              v455 = *(a1 + 216);
              if (!v455)
              {
                operator new();
              }

              v545 = 0;
              v456 = *(this + 1);
              if (v456 >= *(this + 2) || *v456 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v456;
                *(this + 1) = v456 + 1;
              }

              v457 = *(this + 14);
              v458 = *(this + 15);
              *(this + 14) = v457 + 1;
              if (v457 >= v458)
              {
                return 0;
              }

              v459 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100446D9C(v455, this, v460) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v459);
              v461 = *(this + 14);
              v20 = __OFSUB__(v461, 1);
              v462 = v461 - 1;
              if (v462 < 0 == v20)
              {
                *(this + 14) = v462;
              }

              v463 = *(this + 1);
              if (*(this + 4) - v463 <= 1 || *v463 != 226 || v463[1] != 1)
              {
                continue;
              }

              *(this + 1) = v463 + 2;
LABEL_888:
              *(a1 + 488) |= 0x8000000u;
              v464 = *(a1 + 224);
              if (!v464)
              {
                operator new();
              }

              v545 = 0;
              v465 = *(this + 1);
              if (v465 >= *(this + 2) || *v465 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v465;
                *(this + 1) = v465 + 1;
              }

              v466 = *(this + 14);
              v467 = *(this + 15);
              *(this + 14) = v466 + 1;
              if (v466 >= v467)
              {
                return 0;
              }

              v468 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10044A850(v464, this, v469) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v468);
              v470 = *(this + 14);
              v20 = __OFSUB__(v470, 1);
              v471 = v470 - 1;
              if (v471 < 0 == v20)
              {
                *(this + 14) = v471;
              }

              v472 = *(this + 1);
              if (*(this + 4) - v472 <= 1 || *v472 != 234 || v472[1] != 1)
              {
                continue;
              }

              *(this + 1) = v472 + 2;
LABEL_903:
              *(a1 + 488) |= 0x10000000u;
              v473 = *(a1 + 232);
              if (!v473)
              {
                operator new();
              }

              v545 = 0;
              v474 = *(this + 1);
              if (v474 >= *(this + 2) || *v474 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v474;
                *(this + 1) = v474 + 1;
              }

              v475 = *(this + 14);
              v476 = *(this + 15);
              *(this + 14) = v475 + 1;
              if (v475 >= v476)
              {
                return 0;
              }

              v477 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10044C748(v473, this, v478) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v477);
              v479 = *(this + 14);
              v20 = __OFSUB__(v479, 1);
              v480 = v479 - 1;
              if (v480 < 0 == v20)
              {
                *(this + 14) = v480;
              }

              v481 = *(this + 1);
              if (*(this + 4) - v481 <= 1 || *v481 != 242 || v481[1] != 1)
              {
                continue;
              }

              *(this + 1) = v481 + 2;
LABEL_918:
              *(a1 + 488) |= 0x20000000u;
              v482 = *(a1 + 240);
              if (!v482)
              {
                operator new();
              }

              v545 = 0;
              v483 = *(this + 1);
              if (v483 >= *(this + 2) || *v483 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v483;
                *(this + 1) = v483 + 1;
              }

              v484 = *(this + 14);
              v485 = *(this + 15);
              *(this + 14) = v484 + 1;
              if (v484 >= v485)
              {
                return 0;
              }

              v486 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10044F850(v482, this, v487) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v486);
              v488 = *(this + 14);
              v20 = __OFSUB__(v488, 1);
              v489 = v488 - 1;
              if (v489 < 0 == v20)
              {
                *(this + 14) = v489;
              }

              v490 = *(this + 1);
              if (*(this + 4) - v490 <= 1 || *v490 != 250 || v490[1] != 1)
              {
                continue;
              }

              *(this + 1) = v490 + 2;
LABEL_933:
              *(a1 + 488) |= 0x40000000u;
              v491 = *(a1 + 248);
              if (!v491)
              {
                operator new();
              }

              v545 = 0;
              v492 = *(this + 1);
              if (v492 >= *(this + 2) || *v492 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v492;
                *(this + 1) = v492 + 1;
              }

              v493 = *(this + 14);
              v494 = *(this + 15);
              *(this + 14) = v493 + 1;
              if (v493 >= v494)
              {
                return 0;
              }

              v495 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100451368(v491, this, v496) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v495);
              v497 = *(this + 14);
              v20 = __OFSUB__(v497, 1);
              v498 = v497 - 1;
              if (v498 < 0 == v20)
              {
                *(this + 14) = v498;
              }

              v499 = *(this + 1);
              if (*(this + 4) - v499 <= 1 || *v499 != 130 || v499[1] != 2)
              {
                continue;
              }

              *(this + 1) = v499 + 2;
LABEL_948:
              *(a1 + 488) |= 0x80000000;
              v500 = *(a1 + 256);
              if (!v500)
              {
                operator new();
              }

              v545 = 0;
              v501 = *(this + 1);
              if (v501 >= *(this + 2) || *v501 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v501;
                *(this + 1) = v501 + 1;
              }

              v502 = *(this + 14);
              v503 = *(this + 15);
              *(this + 14) = v502 + 1;
              if (v502 >= v503)
              {
                return 0;
              }

              v504 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10042F8F4(v500, this, v505) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v504);
              v506 = *(this + 14);
              v20 = __OFSUB__(v506, 1);
              v507 = v506 - 1;
              if (v507 < 0 == v20)
              {
                *(this + 14) = v507;
              }

              v508 = *(this + 1);
              if (*(this + 4) - v508 <= 1 || *v508 != 138 || v508[1] != 2)
              {
                continue;
              }

              *(this + 1) = v508 + 2;
LABEL_963:
              *(a1 + 492) |= 1u;
              v509 = *(a1 + 264);
              if (!v509)
              {
                operator new();
              }

              v545 = 0;
              v510 = *(this + 1);
              if (v510 >= *(this + 2) || *v510 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v510;
                *(this + 1) = v510 + 1;
              }

              v511 = *(this + 14);
              v512 = *(this + 15);
              *(this + 14) = v511 + 1;
              if (v511 >= v512)
              {
                return 0;
              }

              v513 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100452B58(v509, this, v514) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v513);
              v515 = *(this + 14);
              v20 = __OFSUB__(v515, 1);
              v516 = v515 - 1;
              if (v516 < 0 == v20)
              {
                *(this + 14) = v516;
              }

              v517 = *(this + 1);
              if (*(this + 4) - v517 <= 1 || *v517 != 146 || v517[1] != 2)
              {
                continue;
              }

              *(this + 1) = v517 + 2;
LABEL_978:
              *(a1 + 492) |= 2u;
              v518 = *(a1 + 272);
              if (!v518)
              {
                operator new();
              }

              v545 = 0;
              v519 = *(this + 1);
              if (v519 >= *(this + 2) || *v519 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v519;
                *(this + 1) = v519 + 1;
              }

              v520 = *(this + 14);
              v521 = *(this + 15);
              *(this + 14) = v520 + 1;
              if (v520 >= v521)
              {
                return 0;
              }

              v522 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_1012A8C5C(v518, this, v523) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v522);
              v524 = *(this + 14);
              v20 = __OFSUB__(v524, 1);
              v525 = v524 - 1;
              if (v525 < 0 == v20)
              {
                *(this + 14) = v525;
              }

              v526 = *(this + 1);
              if (*(this + 4) - v526 <= 1 || *v526 != 154 || v526[1] != 2)
              {
                continue;
              }

              *(this + 1) = v526 + 2;
LABEL_993:
              *(a1 + 492) |= 4u;
              v527 = *(a1 + 280);
              if (!v527)
              {
                operator new();
              }

              v545 = 0;
              v528 = *(this + 1);
              if (v528 >= *(this + 2) || *v528 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v528;
                *(this + 1) = v528 + 1;
              }

              v529 = *(this + 14);
              v530 = *(this + 15);
              *(this + 14) = v529 + 1;
              if (v529 >= v530)
              {
                return 0;
              }

              v531 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_1004539F4(v527, this, v532) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v531);
              v533 = *(this + 14);
              v20 = __OFSUB__(v533, 1);
              v534 = v533 - 1;
              if (v534 < 0 == v20)
              {
                *(this + 14) = v534;
              }

              v535 = *(this + 1);
              if (*(this + 4) - v535 <= 1 || *v535 != 226 || v535[1] != 62)
              {
                continue;
              }

              *(this + 1) = v535 + 2;
LABEL_1008:
              *(a1 + 492) |= 8u;
              v536 = *(a1 + 288);
              if (!v536)
              {
                operator new();
              }

              v545 = 0;
              v537 = *(this + 1);
              if (v537 >= *(this + 2) || *v537 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v537;
                *(this + 1) = v537 + 1;
              }

              v538 = *(this + 14);
              v539 = *(this + 15);
              *(this + 14) = v538 + 1;
              if (v538 >= v539)
              {
                return 0;
              }

              v540 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100E893FC(v536, this, v541) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v540);
              v542 = *(this + 14);
              v20 = __OFSUB__(v542, 1);
              v543 = v542 - 1;
              if (v543 < 0 == v20)
              {
                *(this + 14) = v543;
              }

              v544 = *(this + 1);
              if (*(this + 4) - v544 <= 1 || *v544 != 242 || v544[1] != 62)
              {
                continue;
              }

              *(this + 1) = v544 + 2;
              break;
            case 3u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_525;
            case 4u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_539;
            case 5u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_553;
            case 6u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_567;
            case 7u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_581;
            case 8u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_595;
            case 9u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_609;
            case 0xAu:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_623;
            case 0xBu:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_637;
            case 0xCu:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_651;
            case 0xDu:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_665;
            case 0xEu:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_679;
            case 0xFu:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_693;
            case 0x10u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_708;
            case 0x11u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_723;
            case 0x12u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_738;
            case 0x13u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_753;
            case 0x14u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_768;
            case 0x15u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_783;
            case 0x16u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_798;
            case 0x17u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_813;
            case 0x18u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_828;
            case 0x19u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_843;
            case 0x1Au:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_858;
            case 0x1Bu:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_873;
            case 0x1Cu:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_888;
            case 0x1Du:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_903;
            case 0x1Eu:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_918;
            case 0x1Fu:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_933;
            case 0x20u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_948;
            case 0x21u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_963;
            case 0x22u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_978;
            case 0x23u:
              if (v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_993;
            default:
              if (v7 != 1004 || v8 != 2)
              {
                goto LABEL_147;
              }

              goto LABEL_1008;
          }

          goto LABEL_41;
        }

        if (TagFallback >> 3 <= 0x3F7)
        {
          break;
        }

        switch(v7)
        {
          case 0x7D0u:
            if (v8 == 2)
            {
              goto LABEL_265;
            }

            goto LABEL_147;
          case 0x7D1u:
            if (v8 == 2)
            {
              goto LABEL_280;
            }

            goto LABEL_147;
          case 0x7D2u:
            if (v8 == 2)
            {
              goto LABEL_295;
            }

            goto LABEL_147;
          case 0x7D3u:
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_147;
            }

            v14 = *(this + 1);
            v13 = *(this + 2);
            goto LABEL_310;
          case 0x7D4u:
            if (v8 == 2)
            {
              goto LABEL_322;
            }

            goto LABEL_147;
          case 0x7D5u:
            if (v8 == 2)
            {
              goto LABEL_337;
            }

            goto LABEL_147;
          case 0x7D6u:
            if (v8 == 2)
            {
              goto LABEL_352;
            }

            goto LABEL_147;
          case 0x7D7u:
            if (v8 == 2)
            {
              goto LABEL_367;
            }

            goto LABEL_147;
          case 0x7D8u:
            if (v8 != 2)
            {
              goto LABEL_147;
            }

            goto LABEL_382;
          case 0x7D9u:
            if (v8 == 2)
            {
              goto LABEL_397;
            }

            goto LABEL_147;
          case 0x7DAu:
            if (v8 == 2)
            {
              goto LABEL_412;
            }

            goto LABEL_147;
          case 0x7DBu:
            if (v8 == 2)
            {
              goto LABEL_427;
            }

            goto LABEL_147;
          case 0x7DCu:
            if (v8 == 2)
            {
              goto LABEL_442;
            }

            goto LABEL_147;
          case 0x7DDu:
            if (v8 == 2)
            {
              goto LABEL_457;
            }

            goto LABEL_147;
          case 0x7DEu:
            if (v8 == 2)
            {
              goto LABEL_472;
            }

            goto LABEL_147;
          case 0x7DFu:
            if (v8 == 2)
            {
              goto LABEL_487;
            }

            goto LABEL_147;
          default:
            if (v7 == 1016)
            {
              if (v8 == 2)
              {
                goto LABEL_235;
              }

              goto LABEL_147;
            }

            if (v7 != 1017 || v8 != 2)
            {
              goto LABEL_147;
            }

LABEL_250:
            *(a1 + 492) |= 0x800u;
            v77 = *(a1 + 352);
            if (!v77)
            {
              operator new();
            }

            v545 = 0;
            v78 = *(this + 1);
            if (v78 >= *(this + 2) || *v78 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
              {
                return 0;
              }
            }

            else
            {
              v545 = *v78;
              *(this + 1) = v78 + 1;
            }

            v79 = *(this + 14);
            v80 = *(this + 15);
            *(this + 14) = v79 + 1;
            if (v79 >= v80)
            {
              return 0;
            }

            v81 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
            if (!sub_100E007A4(v77, this, v82) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v81);
            v83 = *(this + 14);
            v20 = __OFSUB__(v83, 1);
            v84 = v83 - 1;
            if (v84 < 0 == v20)
            {
              *(this + 14) = v84;
            }

            v85 = *(this + 1);
            if (*(this + 4) - v85 > 1 && *v85 == 130 && v85[1] == 125)
            {
              *(this + 1) = v85 + 2;
LABEL_265:
              *(a1 + 492) |= 0x1000u;
              v86 = *(a1 + 360);
              if (!v86)
              {
                operator new();
              }

              v545 = 0;
              v87 = *(this + 1);
              if (v87 >= *(this + 2) || *v87 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v87;
                *(this + 1) = v87 + 1;
              }

              v88 = *(this + 14);
              v89 = *(this + 15);
              *(this + 14) = v88 + 1;
              if (v88 >= v89)
              {
                return 0;
              }

              v90 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_100948C18(v86, this, v91) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v90);
              v92 = *(this + 14);
              v20 = __OFSUB__(v92, 1);
              v93 = v92 - 1;
              if (v93 < 0 == v20)
              {
                *(this + 14) = v93;
              }

              v94 = *(this + 1);
              if (*(this + 4) - v94 > 1 && *v94 == 138 && v94[1] == 125)
              {
                *(this + 1) = v94 + 2;
LABEL_280:
                *(a1 + 492) |= 0x2000u;
                v95 = *(a1 + 368);
                if (!v95)
                {
                  operator new();
                }

                v545 = 0;
                v96 = *(this + 1);
                if (v96 >= *(this + 2) || *v96 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                  {
                    return 0;
                  }
                }

                else
                {
                  v545 = *v96;
                  *(this + 1) = v96 + 1;
                }

                v97 = *(this + 14);
                v98 = *(this + 15);
                *(this + 14) = v97 + 1;
                if (v97 >= v98)
                {
                  return 0;
                }

                v99 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                if (!sub_100949354(v95, this, v100) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v99);
                v101 = *(this + 14);
                v20 = __OFSUB__(v101, 1);
                v102 = v101 - 1;
                if (v102 < 0 == v20)
                {
                  *(this + 14) = v102;
                }

                v103 = *(this + 1);
                if (*(this + 4) - v103 > 1 && *v103 == 146 && v103[1] == 125)
                {
                  *(this + 1) = v103 + 2;
LABEL_295:
                  *(a1 + 492) |= 0x4000u;
                  v104 = *(a1 + 376);
                  if (!v104)
                  {
                    operator new();
                  }

                  v545 = 0;
                  v105 = *(this + 1);
                  if (v105 >= *(this + 2) || *v105 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v545 = *v105;
                    *(this + 1) = v105 + 1;
                  }

                  v106 = *(this + 14);
                  v107 = *(this + 15);
                  *(this + 14) = v106 + 1;
                  if (v106 >= v107)
                  {
                    return 0;
                  }

                  v108 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                  if (!sub_100949BCC(v104, this, v109) || *(this + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v108);
                  v110 = *(this + 14);
                  v20 = __OFSUB__(v110, 1);
                  v111 = v110 - 1;
                  if (v111 < 0 == v20)
                  {
                    *(this + 14) = v111;
                  }

                  v112 = *(this + 1);
                  v13 = *(this + 2);
                  if (v13 - v112 > 1 && *v112 == 152 && v112[1] == 125)
                  {
                    v14 = (v112 + 2);
                    *(this + 1) = v14;
LABEL_310:
                    v545 = 0;
                    if (v14 >= v13 || (v113 = *v14, (v113 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545);
                      if (!result)
                      {
                        return result;
                      }

                      v113 = v545;
                    }

                    else
                    {
                      *(this + 1) = v14 + 1;
                    }

                    if (sub_10041ECEC(v113))
                    {
                      if (!sub_10041ECEC(v113))
                      {
                        sub_10195532C();
                      }

                      *(a1 + 492) |= 0x8000u;
                      *(a1 + 480) = v113;
                    }

                    v115 = *(this + 1);
                    if (*(this + 4) - v115 >= 2 && *v115 == 162 && v115[1] == 125)
                    {
                      *(this + 1) = v115 + 2;
LABEL_322:
                      *(a1 + 492) |= 0x10000u;
                      v116 = *(a1 + 384);
                      if (!v116)
                      {
                        operator new();
                      }

                      v545 = 0;
                      v117 = *(this + 1);
                      if (v117 >= *(this + 2) || *v117 < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v545 = *v117;
                        *(this + 1) = v117 + 1;
                      }

                      v118 = *(this + 14);
                      v119 = *(this + 15);
                      *(this + 14) = v118 + 1;
                      if (v118 >= v119)
                      {
                        return 0;
                      }

                      v120 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                      if (!sub_10094A468(v116, this, v121) || *(this + 36) != 1)
                      {
                        return 0;
                      }

                      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v120);
                      v122 = *(this + 14);
                      v20 = __OFSUB__(v122, 1);
                      v123 = v122 - 1;
                      if (v123 < 0 == v20)
                      {
                        *(this + 14) = v123;
                      }

                      v124 = *(this + 1);
                      if (*(this + 4) - v124 > 1 && *v124 == 170 && v124[1] == 125)
                      {
                        *(this + 1) = v124 + 2;
LABEL_337:
                        *(a1 + 492) |= 0x20000u;
                        v125 = *(a1 + 392);
                        if (!v125)
                        {
                          operator new();
                        }

                        v545 = 0;
                        v126 = *(this + 1);
                        if (v126 >= *(this + 2) || *v126 < 0)
                        {
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                          {
                            return 0;
                          }
                        }

                        else
                        {
                          v545 = *v126;
                          *(this + 1) = v126 + 1;
                        }

                        v127 = *(this + 14);
                        v128 = *(this + 15);
                        *(this + 14) = v127 + 1;
                        if (v127 >= v128)
                        {
                          return 0;
                        }

                        v129 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                        if (!sub_10094AB88(v125, this, v130) || *(this + 36) != 1)
                        {
                          return 0;
                        }

                        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v129);
                        v131 = *(this + 14);
                        v20 = __OFSUB__(v131, 1);
                        v132 = v131 - 1;
                        if (v132 < 0 == v20)
                        {
                          *(this + 14) = v132;
                        }

                        v133 = *(this + 1);
                        if (*(this + 4) - v133 > 1 && *v133 == 178 && v133[1] == 125)
                        {
                          *(this + 1) = v133 + 2;
LABEL_352:
                          *(a1 + 492) |= 0x40000u;
                          v134 = *(a1 + 400);
                          if (!v134)
                          {
                            operator new();
                          }

                          v545 = 0;
                          v135 = *(this + 1);
                          if (v135 >= *(this + 2) || *v135 < 0)
                          {
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                            {
                              return 0;
                            }
                          }

                          else
                          {
                            v545 = *v135;
                            *(this + 1) = v135 + 1;
                          }

                          v136 = *(this + 14);
                          v137 = *(this + 15);
                          *(this + 14) = v136 + 1;
                          if (v136 >= v137)
                          {
                            return 0;
                          }

                          v138 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                          if (!sub_10094BAA0(v134, this, v139) || *(this + 36) != 1)
                          {
                            return 0;
                          }

                          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v138);
                          v140 = *(this + 14);
                          v20 = __OFSUB__(v140, 1);
                          v141 = v140 - 1;
                          if (v141 < 0 == v20)
                          {
                            *(this + 14) = v141;
                          }

                          v142 = *(this + 1);
                          if (*(this + 4) - v142 > 1 && *v142 == 186 && v142[1] == 125)
                          {
                            *(this + 1) = v142 + 2;
LABEL_367:
                            *(a1 + 492) |= 0x80000u;
                            v143 = *(a1 + 408);
                            if (!v143)
                            {
                              operator new();
                            }

                            v545 = 0;
                            v144 = *(this + 1);
                            if (v144 >= *(this + 2) || *v144 < 0)
                            {
                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                              {
                                return 0;
                              }
                            }

                            else
                            {
                              v545 = *v144;
                              *(this + 1) = v144 + 1;
                            }

                            v145 = *(this + 14);
                            v146 = *(this + 15);
                            *(this + 14) = v145 + 1;
                            if (v145 >= v146)
                            {
                              return 0;
                            }

                            v147 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                            if (!sub_10094C2C4(v143, this, v148) || *(this + 36) != 1)
                            {
                              return 0;
                            }

                            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v147);
                            v149 = *(this + 14);
                            v20 = __OFSUB__(v149, 1);
                            v150 = v149 - 1;
                            if (v150 < 0 == v20)
                            {
                              *(this + 14) = v150;
                            }

                            v151 = *(this + 1);
                            if (*(this + 4) - v151 > 1 && *v151 == 194 && v151[1] == 125)
                            {
                              *(this + 1) = v151 + 2;
LABEL_382:
                              *(a1 + 492) |= 0x100000u;
                              v152 = *(a1 + 416);
                              if (!v152)
                              {
                                operator new();
                              }

                              v545 = 0;
                              v153 = *(this + 1);
                              if (v153 >= *(this + 2) || *v153 < 0)
                              {
                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                                {
                                  return 0;
                                }
                              }

                              else
                              {
                                v545 = *v153;
                                *(this + 1) = v153 + 1;
                              }

                              v154 = *(this + 14);
                              v155 = *(this + 15);
                              *(this + 14) = v154 + 1;
                              if (v154 >= v155)
                              {
                                return 0;
                              }

                              v156 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                              if (!sub_10094CB60(v152, this, v157) || *(this + 36) != 1)
                              {
                                return 0;
                              }

                              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v156);
                              v158 = *(this + 14);
                              v20 = __OFSUB__(v158, 1);
                              v159 = v158 - 1;
                              if (v159 < 0 == v20)
                              {
                                *(this + 14) = v159;
                              }

                              v160 = *(this + 1);
                              if (*(this + 4) - v160 > 1 && *v160 == 202 && v160[1] == 125)
                              {
                                *(this + 1) = v160 + 2;
LABEL_397:
                                *(a1 + 492) |= 0x200000u;
                                v161 = *(a1 + 424);
                                if (!v161)
                                {
                                  operator new();
                                }

                                v545 = 0;
                                v162 = *(this + 1);
                                if (v162 >= *(this + 2) || *v162 < 0)
                                {
                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                                  {
                                    return 0;
                                  }
                                }

                                else
                                {
                                  v545 = *v162;
                                  *(this + 1) = v162 + 1;
                                }

                                v163 = *(this + 14);
                                v164 = *(this + 15);
                                *(this + 14) = v163 + 1;
                                if (v163 >= v164)
                                {
                                  return 0;
                                }

                                v165 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                                if (!sub_10094D784(v161, this, v166) || *(this + 36) != 1)
                                {
                                  return 0;
                                }

                                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v165);
                                v167 = *(this + 14);
                                v20 = __OFSUB__(v167, 1);
                                v168 = v167 - 1;
                                if (v168 < 0 == v20)
                                {
                                  *(this + 14) = v168;
                                }

                                v169 = *(this + 1);
                                if (*(this + 4) - v169 > 1 && *v169 == 210 && v169[1] == 125)
                                {
                                  *(this + 1) = v169 + 2;
LABEL_412:
                                  *(a1 + 492) |= 0x400000u;
                                  v170 = *(a1 + 432);
                                  if (!v170)
                                  {
                                    operator new();
                                  }

                                  v545 = 0;
                                  v171 = *(this + 1);
                                  if (v171 >= *(this + 2) || *v171 < 0)
                                  {
                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                                    {
                                      return 0;
                                    }
                                  }

                                  else
                                  {
                                    v545 = *v171;
                                    *(this + 1) = v171 + 1;
                                  }

                                  v172 = *(this + 14);
                                  v173 = *(this + 15);
                                  *(this + 14) = v172 + 1;
                                  if (v172 >= v173)
                                  {
                                    return 0;
                                  }

                                  v174 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                                  if (!sub_10094DE84(v170, this, v175) || *(this + 36) != 1)
                                  {
                                    return 0;
                                  }

                                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v174);
                                  v176 = *(this + 14);
                                  v20 = __OFSUB__(v176, 1);
                                  v177 = v176 - 1;
                                  if (v177 < 0 == v20)
                                  {
                                    *(this + 14) = v177;
                                  }

                                  v178 = *(this + 1);
                                  if (*(this + 4) - v178 > 1 && *v178 == 218 && v178[1] == 125)
                                  {
                                    *(this + 1) = v178 + 2;
LABEL_427:
                                    *(a1 + 492) |= 0x800000u;
                                    v179 = *(a1 + 440);
                                    if (!v179)
                                    {
                                      operator new();
                                    }

                                    v545 = 0;
                                    v180 = *(this + 1);
                                    if (v180 >= *(this + 2) || *v180 < 0)
                                    {
                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                                      {
                                        return 0;
                                      }
                                    }

                                    else
                                    {
                                      v545 = *v180;
                                      *(this + 1) = v180 + 1;
                                    }

                                    v181 = *(this + 14);
                                    v182 = *(this + 15);
                                    *(this + 14) = v181 + 1;
                                    if (v181 >= v182)
                                    {
                                      return 0;
                                    }

                                    v183 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                                    if (!sub_10094E78C(v179, this, v184) || *(this + 36) != 1)
                                    {
                                      return 0;
                                    }

                                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v183);
                                    v185 = *(this + 14);
                                    v20 = __OFSUB__(v185, 1);
                                    v186 = v185 - 1;
                                    if (v186 < 0 == v20)
                                    {
                                      *(this + 14) = v186;
                                    }

                                    v187 = *(this + 1);
                                    if (*(this + 4) - v187 > 1 && *v187 == 226 && v187[1] == 125)
                                    {
                                      *(this + 1) = v187 + 2;
LABEL_442:
                                      *(a1 + 492) |= 0x1000000u;
                                      v188 = *(a1 + 448);
                                      if (!v188)
                                      {
                                        operator new();
                                      }

                                      v545 = 0;
                                      v189 = *(this + 1);
                                      if (v189 >= *(this + 2) || *v189 < 0)
                                      {
                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                                        {
                                          return 0;
                                        }
                                      }

                                      else
                                      {
                                        v545 = *v189;
                                        *(this + 1) = v189 + 1;
                                      }

                                      v190 = *(this + 14);
                                      v191 = *(this + 15);
                                      *(this + 14) = v190 + 1;
                                      if (v190 >= v191)
                                      {
                                        return 0;
                                      }

                                      v192 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                                      if (!sub_10094EDB4(v188, this, v193) || *(this + 36) != 1)
                                      {
                                        return 0;
                                      }

                                      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v192);
                                      v194 = *(this + 14);
                                      v20 = __OFSUB__(v194, 1);
                                      v195 = v194 - 1;
                                      if (v195 < 0 == v20)
                                      {
                                        *(this + 14) = v195;
                                      }

                                      v196 = *(this + 1);
                                      if (*(this + 4) - v196 > 1 && *v196 == 234 && v196[1] == 125)
                                      {
                                        *(this + 1) = v196 + 2;
LABEL_457:
                                        *(a1 + 492) |= 0x2000000u;
                                        v197 = *(a1 + 456);
                                        if (!v197)
                                        {
                                          operator new();
                                        }

                                        v545 = 0;
                                        v198 = *(this + 1);
                                        if (v198 >= *(this + 2) || *v198 < 0)
                                        {
                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                                          {
                                            return 0;
                                          }
                                        }

                                        else
                                        {
                                          v545 = *v198;
                                          *(this + 1) = v198 + 1;
                                        }

                                        v199 = *(this + 14);
                                        v200 = *(this + 15);
                                        *(this + 14) = v199 + 1;
                                        if (v199 >= v200)
                                        {
                                          return 0;
                                        }

                                        v201 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                                        if (!sub_10094F488(v197, this, v202) || *(this + 36) != 1)
                                        {
                                          return 0;
                                        }

                                        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v201);
                                        v203 = *(this + 14);
                                        v20 = __OFSUB__(v203, 1);
                                        v204 = v203 - 1;
                                        if (v204 < 0 == v20)
                                        {
                                          *(this + 14) = v204;
                                        }

                                        v205 = *(this + 1);
                                        if (*(this + 4) - v205 > 1 && *v205 == 242 && v205[1] == 125)
                                        {
                                          *(this + 1) = v205 + 2;
LABEL_472:
                                          *(a1 + 492) |= 0x4000000u;
                                          v206 = *(a1 + 464);
                                          if (!v206)
                                          {
                                            operator new();
                                          }

                                          v545 = 0;
                                          v207 = *(this + 1);
                                          if (v207 >= *(this + 2) || *v207 < 0)
                                          {
                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                                            {
                                              return 0;
                                            }
                                          }

                                          else
                                          {
                                            v545 = *v207;
                                            *(this + 1) = v207 + 1;
                                          }

                                          v208 = *(this + 14);
                                          v209 = *(this + 15);
                                          *(this + 14) = v208 + 1;
                                          if (v208 >= v209)
                                          {
                                            return 0;
                                          }

                                          v210 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                                          if (!sub_10094FC14(v206, this, v211) || *(this + 36) != 1)
                                          {
                                            return 0;
                                          }

                                          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v210);
                                          v212 = *(this + 14);
                                          v20 = __OFSUB__(v212, 1);
                                          v213 = v212 - 1;
                                          if (v213 < 0 == v20)
                                          {
                                            *(this + 14) = v213;
                                          }

                                          v214 = *(this + 1);
                                          if (*(this + 4) - v214 > 1 && *v214 == 250 && v214[1] == 125)
                                          {
                                            *(this + 1) = v214 + 2;
LABEL_487:
                                            *(a1 + 492) |= 0x8000000u;
                                            v215 = *(a1 + 472);
                                            if (!v215)
                                            {
                                              operator new();
                                            }

                                            v545 = 0;
                                            v216 = *(this + 1);
                                            if (v216 >= *(this + 2) || *v216 < 0)
                                            {
                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                                              {
                                                return 0;
                                              }
                                            }

                                            else
                                            {
                                              v545 = *v216;
                                              *(this + 1) = v216 + 1;
                                            }

                                            v217 = *(this + 14);
                                            v218 = *(this + 15);
                                            *(this + 14) = v217 + 1;
                                            if (v217 >= v218)
                                            {
                                              return 0;
                                            }

                                            v219 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                                            if (!sub_100950230(v215, this, v220) || *(this + 36) != 1)
                                            {
                                              return 0;
                                            }

                                            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v219);
                                            v221 = *(this + 14);
                                            v20 = __OFSUB__(v221, 1);
                                            v222 = v221 - 1;
                                            if (v222 < 0 == v20)
                                            {
                                              *(this + 14) = v222;
                                            }

                                            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
                                            {
                                              *(this + 8) = 0;
                                              result = 1;
                                              *(this + 36) = 1;
                                              return result;
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

            break;
        }
      }

      if (TagFallback >> 3 > 0x3F1)
      {
        if (v7 == 1010)
        {
          if (v8 == 2)
          {
            goto LABEL_190;
          }
        }

        else if (v7 == 1012)
        {
          if (v8 == 2)
          {
            goto LABEL_205;
          }
        }

        else if (v7 == 1014 && v8 == 2)
        {
          goto LABEL_220;
        }

        goto LABEL_147;
      }

      if (v7 != 1006)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_147;
      }

LABEL_41:
      *(a1 + 492) |= 0x10u;
      v11 = *(a1 + 296);
      if (!v11)
      {
        operator new();
      }

      v545 = 0;
      v12 = *(this + 1);
      if (v12 >= *(this + 2) || *v12 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
        {
          return 0;
        }
      }

      else
      {
        v545 = *v12;
        *(this + 1) = v12 + 1;
      }

      v15 = *(this + 14);
      v16 = *(this + 15);
      *(this + 14) = v15 + 1;
      if (v15 >= v16)
      {
        return 0;
      }

      v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
      if (!sub_1009996FC(v11, this, v18) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v17);
      v19 = *(this + 14);
      v20 = __OFSUB__(v19, 1);
      v21 = v19 - 1;
      if (v21 < 0 == v20)
      {
        *(this + 14) = v21;
      }

      v22 = *(this + 1);
      if (*(this + 4) - v22 > 1 && *v22 == 250 && v22[1] == 62)
      {
        *(this + 1) = v22 + 2;
LABEL_160:
        *(a1 + 492) |= 0x20u;
        v23 = *(a1 + 304);
        if (!v23)
        {
          operator new();
        }

        v545 = 0;
        v24 = *(this + 1);
        if (v24 >= *(this + 2) || *v24 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
          {
            return 0;
          }
        }

        else
        {
          v545 = *v24;
          *(this + 1) = v24 + 1;
        }

        v25 = *(this + 14);
        v26 = *(this + 15);
        *(this + 14) = v25 + 1;
        if (v25 >= v26)
        {
          return 0;
        }

        v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
        if (!sub_100B7DA54(v23, this, v28) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v27);
        v29 = *(this + 14);
        v20 = __OFSUB__(v29, 1);
        v30 = v29 - 1;
        if (v30 < 0 == v20)
        {
          *(this + 14) = v30;
        }

        v31 = *(this + 1);
        if (*(this + 4) - v31 > 1 && *v31 == 130 && v31[1] == 63)
        {
          *(this + 1) = v31 + 2;
LABEL_175:
          *(a1 + 492) |= 0x40u;
          v32 = *(a1 + 312);
          if (!v32)
          {
            operator new();
          }

          v545 = 0;
          v33 = *(this + 1);
          if (v33 >= *(this + 2) || *v33 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
            {
              return 0;
            }
          }

          else
          {
            v545 = *v33;
            *(this + 1) = v33 + 1;
          }

          v34 = *(this + 14);
          v35 = *(this + 15);
          *(this + 14) = v34 + 1;
          if (v34 >= v35)
          {
            return 0;
          }

          v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
          if (!sub_1015F4D84(v32, this, v37) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v36);
          v38 = *(this + 14);
          v20 = __OFSUB__(v38, 1);
          v39 = v38 - 1;
          if (v39 < 0 == v20)
          {
            *(this + 14) = v39;
          }

          v40 = *(this + 1);
          if (*(this + 4) - v40 > 1 && *v40 == 146 && v40[1] == 63)
          {
            *(this + 1) = v40 + 2;
LABEL_190:
            *(a1 + 492) |= 0x80u;
            v41 = *(a1 + 320);
            if (!v41)
            {
              operator new();
            }

            v545 = 0;
            v42 = *(this + 1);
            if (v42 >= *(this + 2) || *v42 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
              {
                return 0;
              }
            }

            else
            {
              v545 = *v42;
              *(this + 1) = v42 + 1;
            }

            v43 = *(this + 14);
            v44 = *(this + 15);
            *(this + 14) = v43 + 1;
            if (v43 >= v44)
            {
              return 0;
            }

            v45 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
            if (!sub_100A57620(v41, this, v46) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v45);
            v47 = *(this + 14);
            v20 = __OFSUB__(v47, 1);
            v48 = v47 - 1;
            if (v48 < 0 == v20)
            {
              *(this + 14) = v48;
            }

            v49 = *(this + 1);
            if (*(this + 4) - v49 > 1 && *v49 == 162 && v49[1] == 63)
            {
              *(this + 1) = v49 + 2;
LABEL_205:
              *(a1 + 492) |= 0x100u;
              v50 = *(a1 + 328);
              if (!v50)
              {
                operator new();
              }

              v545 = 0;
              v51 = *(this + 1);
              if (v51 >= *(this + 2) || *v51 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                {
                  return 0;
                }
              }

              else
              {
                v545 = *v51;
                *(this + 1) = v51 + 1;
              }

              v52 = *(this + 14);
              v53 = *(this + 15);
              *(this + 14) = v52 + 1;
              if (v52 >= v53)
              {
                return 0;
              }

              v54 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
              if (!sub_10110A7B4(v50, this, v55) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v54);
              v56 = *(this + 14);
              v20 = __OFSUB__(v56, 1);
              v57 = v56 - 1;
              if (v57 < 0 == v20)
              {
                *(this + 14) = v57;
              }

              v58 = *(this + 1);
              if (*(this + 4) - v58 > 1 && *v58 == 178 && v58[1] == 63)
              {
                *(this + 1) = v58 + 2;
LABEL_220:
                *(a1 + 492) |= 0x200u;
                v59 = *(a1 + 336);
                if (!v59)
                {
                  operator new();
                }

                v545 = 0;
                v60 = *(this + 1);
                if (v60 >= *(this + 2) || *v60 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                  {
                    return 0;
                  }
                }

                else
                {
                  v545 = *v60;
                  *(this + 1) = v60 + 1;
                }

                v61 = *(this + 14);
                v62 = *(this + 15);
                *(this + 14) = v61 + 1;
                if (v61 >= v62)
                {
                  return 0;
                }

                v63 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                if (!sub_10063C5FC(v59, this, v64) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v63);
                v65 = *(this + 14);
                v20 = __OFSUB__(v65, 1);
                v66 = v65 - 1;
                if (v66 < 0 == v20)
                {
                  *(this + 14) = v66;
                }

                v67 = *(this + 1);
                if (*(this + 4) - v67 > 1 && *v67 == 194 && v67[1] == 63)
                {
                  *(this + 1) = v67 + 2;
LABEL_235:
                  *(a1 + 492) |= 0x400u;
                  v68 = *(a1 + 344);
                  if (!v68)
                  {
                    operator new();
                  }

                  v545 = 0;
                  v69 = *(this + 1);
                  if (v69 >= *(this + 2) || *v69 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v545))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v545 = *v69;
                    *(this + 1) = v69 + 1;
                  }

                  v70 = *(this + 14);
                  v71 = *(this + 15);
                  *(this + 14) = v70 + 1;
                  if (v70 >= v71)
                  {
                    return 0;
                  }

                  v72 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v545);
                  if (!sub_101234E24(v68, this, v73) || *(this + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v72);
                  v74 = *(this + 14);
                  v20 = __OFSUB__(v74, 1);
                  v75 = v74 - 1;
                  if (v75 < 0 == v20)
                  {
                    *(this + 14) = v75;
                  }

                  v76 = *(this + 1);
                  if (*(this + 4) - v76 > 1 && *v76 == 202 && v76[1] == 63)
                  {
                    *(this + 1) = v76 + 2;
                    goto LABEL_250;
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v7 == 1007)
    {
      if (v8 == 2)
      {
        goto LABEL_160;
      }
    }

    else if (v7 == 1008 && v8 == 2)
    {
      goto LABEL_175;
    }

LABEL_147:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

void sub_10084CDEC(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100846E5C(a1, lpsrc);
}

double sub_10084D090(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = a2;
  *a1 = off_1024769B8;
  *(a1 + 8) = off_102476A60;
  *(a1 + 296) = 0;
  result = 0.0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  return result;
}

void *sub_10084D0EC(void *a1, uint64_t a2)
{
  *a1 = off_1024769B8;
  v3 = a1 + 1;
  a1[1] = off_102476A60;
  v4 = a1[37];
  a1[37] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[36];
  a1[36] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[35];
  a1[35] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_10084D1E4(v3, a2);
  return a1;
}

void *sub_10084D1E4(void *a1, uint64_t a2)
{
  *a1 = off_102476AE0;
  sub_100EAB1D0(a1, a2);
  v3 = a1[30];
  a1[30] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_10084D268(void *a1, uint64_t a2)
{
  sub_10084D0EC(a1, a2);

  operator delete();
}

void sub_10084D2A0(uint64_t a1, uint64_t a2)
{
  sub_10084D0EC((a1 - 8), a2);

  operator delete();
}

void sub_10084D2DC(uint64_t a1, uint64_t a2)
{
  sub_10001CAF4(&v3);
  (*(*a2 + 168))(a2, &v3);
  if (v4)
  {
    sub_100008080(v4);
  }
}

void sub_10084D344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

id sub_10084D35C(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 256) "vendor")];

  return [v1 syncgetLocationClientKeys];
}

void sub_10084D7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 256) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101955644();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLSubHarvesterTraceExternal::onStepCountNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101955658();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLSubHarvesterTraceExternal::onStepCountNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  (*(**(a4 + 304) + 32))(*(a4 + 304), a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10084D9E4(uint64_t a1)
{
  v2 = *(a1 + 280);
  *(a1 + 280) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 296);
  *(a1 + 296) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 288);
  *(a1 + 288) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  MapsFeature_RemoveDelegateListenerForAllKeys();
  [*(a1 + 272) deregisterForVisionNotifications:*(a1 + 264)];

  [*(a1 + 320) unregisterForUpdates:*(a1 + 312)];
  *(a1 + 320) = 0;
  v5 = *(a1 + 312);
}

uint64_t sub_10084DB00(uint64_t a1, uint64_t a2)
{
  result = sub_100023ED4(0, a2);
  if (result && *(a1 + 296))
  {
    v6 = sub_100023ED4(0, v5);
    v7 = *(a1 + 296);

    return sub_100178498(v6, a2, v7, -1.0);
  }

  return result;
}

void sub_10084DB68(uint64_t a1, uint64_t a2)
{
  if (sub_100023ED4(0, a2) && *(a1 + 296))
  {
    v5 = sub_100023ED4(0, v4);
    v6 = *(a1 + 296);

    sub_10095D9F8(v5, a2, v6);
  }
}

uint64_t sub_10084DBCC(uint64_t result, uint64_t a2)
{
  if (*(result + 288))
  {
    v3 = result;
    v4 = sub_10017C3BC(result, a2);
    v5 = *(v3 + 288);

    return sub_100178498(v4, a2, v5, -1.0);
  }

  return result;
}

void sub_10084DC1C(uint64_t result, uint64_t a2)
{
  if (*(result + 288))
  {
    v4 = sub_10017C3BC(result, a2);
    v5 = *(result + 288);

    sub_10095D9F8(v4, a2, v5);
  }
}

void sub_10084DC68(uint64_t a1, double a2)
{
  v4 = [*(a1 + 256) silo];

  sub_100EAAF8C(a1 + 8, v4, a2);
}

double sub_10084DDE8(uint64_t a1, double **a2)
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

uint64_t sub_10084DE14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_10084DEE8(uint64_t a1, double **a2)
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

uint64_t sub_10084DF38(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10084E01C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10084E108(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10084E16C(uint64_t a1)
{
  sub_10084E1A4(a1);

  operator delete();
}

uint64_t sub_10084E1A4(uint64_t a1)
{
  *a1 = off_102476D68;
  (*(*(a1 + 40) + 16))();
  _Block_release(*(a1 + 40));
  _Block_release(*(a1 + 48));

  return sub_1017E7D44(a1);
}

void sub_10084E220()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_10084E298()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

void sub_10084E310()
{
  qword_10265A698 = off_102476B48;
  qword_10265A6B0 = &qword_10265A698;
  __cxa_atexit(sub_1003EE78C, &qword_10265A698, dword_100000000);
  qword_10265A6B8 = off_102476BC8;
  qword_10265A6D0 = &qword_10265A6B8;
  __cxa_atexit(sub_1003EE78C, &qword_10265A6B8, dword_100000000);
  qword_10265A6D8 = off_102476C48;
  qword_10265A6F0 = &qword_10265A6D8;
  __cxa_atexit(sub_1003EE790, &qword_10265A6D8, dword_100000000);
  qword_10265A6F8 = off_102476CC8;
  qword_10265A710 = &qword_10265A6F8;
  __cxa_atexit(sub_1003EE790, &qword_10265A6F8, dword_100000000);
  operator new();
}

uint64_t sub_10084E49C(unsigned int a1, int a2, int a3)
{
  if (qword_1025D4620 != -1)
  {
    sub_1019557AC();
  }

  v6 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v18 = sub_100085790(a1);
    v19 = 1026;
    v20 = a2;
    v21 = 1026;
    v22 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "@TileDl, tile download completed, %{public}s, reachability, %{public}d, isCompanionNearby, %{public}d", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_1019557C0();
    }

    v8 = qword_1025D4628;
    v11 = 136446722;
    v12 = sub_100085790(a1);
    v13 = 1026;
    v14 = a2;
    v15 = 1026;
    v16 = a3;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v8, 2, "@TileDl, tile download completed, %{public}s, reachability, %{public}d, isCompanionNearby, %{public}d", &v11, 24);
    v10 = v9;
    sub_100152C7C("Generic", 1, 0, 2, "static void CLTileDownloadAnalytics::submitMetricsUponTileDownloadCompleted(const CLTilesManager_Type::TileType, const CLDaemonStatus_Type::Reachability, const BOOL)", "%s\n", v9);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  return AnalyticsSendEventLazy();
}

NSDictionary *sub_10084E6D0(uint64_t a1)
{
  v4[0] = &off_10254F050;
  v3[0] = @"tilesDownloaded";
  v3[1] = @"reachability";
  v4[1] = [NSNumber numberWithUnsignedInt:*(a1 + 32)];
  v3[2] = @"isCompanionNearby";
  v4[2] = [NSNumber numberWithBool:*(a1 + 40)];
  v3[3] = @"tileType";
  v4[3] = [NSString stringWithUTF8String:sub_100085790(*(a1 + 36))];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
}

void sub_10084EB04(id a1)
{
  v2 = sub_10001A3E8(a1, v1);
  if ((sub_10003A088(v2, v3) & 0x100) != 0)
  {
    byte_10265A730 = 1;
  }
}

uint64_t sub_10084EEEC(uint64_t a1, unsigned int *a2, __int128 *a3, void *a4)
{
  v6 = *a2;
  sub_1004BF718(__dst, a3);
  sub_1004BF718(v9, (a3 + 248));
  memcpy(v10, a3 + 31, sizeof(v10));
  [a4 onMonitorNotification:v6 data:__dst];
  return sub_10005E520(__dst);
}

void sub_10084EF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10005E520(va);
  _Unwind_Resume(a1);
}

void sub_10084F150(uint64_t a1)
{
  dispatch_assert_queue_V2([*(a1 + 32) queue]);
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);
}

uint64_t sub_10084F250(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2([*(a1 + 32) queue]);
  v4 = [-[CLFenceAnalyticsMotionActivityHistogram initActivityHistogramWithActivities:dateInterval:]([CLFenceAnalyticsMotionActivityHistogram alloc] initActivityHistogramWithActivities:a2 dateInterval:{*(a1 + 40)), "binsSortedByInterval"}];
  v5 = *(a1 + 48);
  v6 = [objc_msgSend(v4 "firstObject")];
  v7 = *(v5 + 16);

  return v7(v5, v6);
}

void sub_10084F4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1004BF9B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10084F5F8(uint64_t a1)
{
  dispatch_assert_queue_V2([*(a1 + 32) queue]);
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t sub_10084FA60(uint64_t a1, __int128 *a2)
{
  dispatch_assert_queue_V2([*(a1 + 32) queue]);
  v4 = *(a1 + 40);
  v8 = *(a2 + 2);
  v7 = *a2;
  return (*(v4 + 16))(v4, &v7, v5);
}

void sub_10084FDC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10005E520(va);
  _Unwind_Resume(a1);
}

void sub_10084FF68(uint64_t a1, int a2, int a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1065353216;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  operator new();
}

void sub_100850028(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object)
{
  v12 = a2;
  v14 = *(v9 + 120);
  if (v14)
  {
    *(v9 + 128) = v14;
    operator delete(v14);
  }

  sub_101955D3C((v9 + 96), v10, v9, a1, v12, &exception_object);
  v15 = exception_object;
  v16 = *v11;
  if (*v11)
  {
    *(v9 + 32) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(v15);
}

void sub_1008500A0(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_1025D4230 != -1)
  {
    sub_101955DB0();
  }

  v3 = Current + -1814400.0;
  v4 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *v27 = v3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Workload Calibrator, DB Delete Records Before, expirationTime, %f", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101955DC4(v3);
  }

  sub_1012F98EC(*(a1 + 56), v3);
  __p = 0;
  v22 = 0;
  v23 = 0;
  if (qword_1025D4230 != -1)
  {
    sub_101955EE0();
  }

  v5 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 20);
    *buf = 67109376;
    LODWORD(v27[0]) = v6;
    WORD2(v27[0]) = 2048;
    *(v27 + 6) = 0x3FE0000000000000;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Workload Calibrator, DB Get All Records By Activity Type And Maximum Standard Deviation, activityType, %u, standardDeviation, %f", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101955F08(buf);
    v14 = *(a1 + 20);
    v24 = 67109376;
    LODWORD(v25[0]) = v14;
    WORD2(v25[0]) = 2048;
    *(v25 + 6) = 0x3FE0000000000000;
    LODWORD(v20) = 18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "Workload Calibrator, DB Get All Records By Activity Type And Maximum Standard Deviation, activityType, %u, standardDeviation, %f", &v24, v20);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWorkloadCalibrator::bootstrapCalibrationValueFromDb()", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  sub_1012F9524(*(a1 + 56), &__p, *(a1 + 20), 0.5);
  v7 = __p;
  v8 = v22;
  if (__p != v22)
  {
    v9 = *(a1 + 8);
    v10 = 0.0;
    v11 = __p;
    do
    {
      v10 = v10 + *(v11 + 2);
      if (*(v11 + 3) > v9)
      {
        v9 = *(v11 + 3);
      }

      v11 += 32;
    }

    while (v11 != v22);
    *(a1 + 8) = v9;
    *(a1 + 16) = v10 / ((v8 - v7) >> 5);
    if (qword_1025D4230 != -1)
    {
      sub_101955EE0();
    }

    v12 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 16);
      *buf = 134217984;
      *v27 = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Workload Calibrator, Bootstraping Calibration, Value, %f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101955F08(buf);
      v17 = *(a1 + 16);
      v24 = 134217984;
      *v25 = v17;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "Workload Calibrator, Bootstraping Calibration, Value, %f", COERCE_DOUBLE(&v24));
      v19 = v18;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWorkloadCalibrator::bootstrapCalibrationValueFromDb()", "%s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    v7 = __p;
  }

  if (v7)
  {
    v22 = v7;
    operator delete(v7);
  }
}

void sub_100850470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1008504A4(void *a1, uint64_t a2, _BYTE *a3, double a4, float a5, float a6)
{
  v6 = a1;
  *a3 = 0;
  if (!a2)
  {
    return;
  }

  v12 = a1[13];
  v11 = a1[14];
  if (v12 >= v11)
  {
    v14 = a1[12];
    v15 = v12 - v14;
    v16 = (v12 - v14) >> 2;
    v17 = v16 + 1;
    if ((v16 + 1) >> 62)
    {
      goto LABEL_66;
    }

    v18 = v11 - v14;
    if (v18 >> 1 > v17)
    {
      v17 = v18 >> 1;
    }

    v19 = v18 >= 0x7FFFFFFFFFFFFFFCLL;
    v20 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v19)
    {
      v20 = v17;
    }

    if (v20)
    {
      sub_1000B85D0((a1 + 12), v20);
    }

    v21 = (v12 - v14) >> 2;
    v22 = (4 * v16);
    v23 = (4 * v16 - 4 * v21);
    *v22 = a5;
    v13 = v22 + 1;
    memcpy(v23, v14, v15);
    a1 = v6[12];
    v6[12] = v23;
    v6[13] = v13;
    v6[14] = 0;
    if (a1)
    {
      operator delete(a1);
    }
  }

  else
  {
    *v12 = a5;
    v13 = v12 + 1;
  }

  v6[13] = v13;
  v25 = v6[16];
  v24 = v6[17];
  if (v25 < v24)
  {
    *v25 = a6;
    v26 = v25 + 1;
    goto LABEL_25;
  }

  v27 = v6[15];
  v28 = v25 - v27;
  v29 = (v25 - v27) >> 2;
  v30 = v29 + 1;
  if ((v29 + 1) >> 62)
  {
LABEL_66:
    sub_10028C64C();
  }

  v31 = v24 - v27;
  if (v31 >> 1 > v30)
  {
    v30 = v31 >> 1;
  }

  v19 = v31 >= 0x7FFFFFFFFFFFFFFCLL;
  v32 = 0x3FFFFFFFFFFFFFFFLL;
  if (!v19)
  {
    v32 = v30;
  }

  if (v32)
  {
    sub_1000B85D0((v6 + 15), v32);
  }

  v33 = (v25 - v27) >> 2;
  v34 = (4 * v29);
  v35 = (4 * v29 - 4 * v33);
  *v34 = a6;
  v26 = v34 + 1;
  memcpy(v35, v27, v28);
  a1 = v6[15];
  v6[15] = v35;
  v6[16] = v26;
  v6[17] = 0;
  if (a1)
  {
    operator delete(a1);
  }

LABEL_25:
  v6[16] = v26;
  v36 = sub_1008509BC(a1, v6 + 12);
  v38 = sub_1008509BC(v37, v6 + 15);
  if (v38 < 4.0 || v38 >= 6.0)
  {
    if (v38 < 6.0 || v38 >= 11.0)
    {
      v40 = 1.0;
      if (v38 < 11.0 || v38 > 20.0)
      {
        goto LABEL_35;
      }

      v39 = 4.2658;
    }

    else
    {
      v39 = 4.4668;
    }
  }

  else
  {
    v39 = 4.7863;
  }

  v40 = v39 / v38;
LABEL_35:
  v41 = *(a2 + 344);
  v42 = *(a2 + 348);
  if (!(**a2)(a2))
  {
    goto LABEL_56;
  }

  v43 = v42 == 2 || v41 == 4;
  v44 = v43;
  if (v38 < 4.0 || v38 > 20.0 || !v44 || v36 < 4.5 || v36 > 20.0)
  {
    goto LABEL_56;
  }

  if ((v36 / v38) > (10.715 / v38) || (v36 / v38) < v40)
  {
    goto LABEL_56;
  }

  v46 = *(v6 + 12);
  if (v46 == 1)
  {
    sub_100850BFC(v6, a4, v36, v38);
    goto LABEL_55;
  }

  if (!v46)
  {
    sub_100850A38(v6, v36, v38);
LABEL_55:
    *a3 = 1;
    *(v6 + 1) = CFAbsoluteTimeGetCurrent();
  }

LABEL_56:
  if (qword_1025D4230 != -1)
  {
    sub_101955DB0();
  }

  v47 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v48 = *(v6 + 4);
    *buf = 134219008;
    v64 = a4;
    v65 = 2048;
    v66 = v36;
    v67 = 2048;
    v68 = v38;
    v69 = 2048;
    v70 = v48;
    v71 = 2048;
    v72 = (v38 * v48);
    _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEBUG, "WorkloadCalibration, timestamp, %f, HRMETs, %f, WRMETs, %f, calibrationValue, %f, calibratedMets, %f", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_101955EE0();
    }

    v49 = *(v6 + 4);
    v53 = 134219008;
    v54 = a4;
    v55 = 2048;
    v56 = v36;
    v57 = 2048;
    v58 = v38;
    v59 = 2048;
    v60 = v49;
    v61 = 2048;
    v62 = (v38 * v49);
    LODWORD(v52) = 52;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "WorkloadCalibration, timestamp, %f, HRMETs, %f, WRMETs, %f, calibrationValue, %f, calibratedMets, %f", COERCE_DOUBLE(&v53), v52);
    v51 = v50;
    sub_100152C7C("Generic", 1, 0, 2, "float CLWorkloadCalibrator::computeCalibrationValue(const CLNatalieModelInput *, const CFAbsoluteTime, const float, const float, BOOL &)", "%s\n", v50);
    if (v51 != buf)
    {
      free(v51);
    }
  }
}

float sub_1008509BC(uint64_t a1, float **a2)
{
  result = 0.0;
  if (a2)
  {
    v3 = *a2;
    v4 = a2[1];
    if ((v4 - *a2) >= 0x11)
    {
      v5 = v4 - 4;
      if (v4 - 4 != v3)
      {
        if (v4 != v5)
        {
          *v3 = *v5;
        }

        v6 = *a2;
        v4 = v3 + 4;
        a2[1] = v3 + 4;
        v3 = v6;
      }
    }

    if (v3 != v4)
    {
      v7 = v3;
      do
      {
        v8 = *v7++;
        result = result + v8;
      }

      while (v7 != v4);
      return result / (v4 - v3);
    }
  }

  return result;
}

void sub_100850A38(uint64_t a1, float a2, float a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v5 >= v4)
  {
    v7 = *(a1 + 24);
    v8 = (v5 - v7) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      sub_10028C64C();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_1000B9708(a1 + 24, v11);
    }

    v12 = (8 * v8);
    *v12 = a3;
    v12[1] = a2;
    v6 = 8 * v8 + 8;
    v13 = *(a1 + 24);
    v14 = *(a1 + 32) - v13;
    v15 = 8 * v8 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = *(a1 + 24);
    *(a1 + 24) = v15;
    *(a1 + 32) = v6;
    *(a1 + 40) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a3;
    v5[1] = a2;
    v6 = (v5 + 2);
  }

  *(a1 + 32) = v6;
  v17 = *(a1 + 24);
  v18 = v6 - v17;
  if ((v6 - v17) < 0x31)
  {
LABEL_21:
    if (v18 < 0x19)
    {
      return;
    }

    goto LABEL_22;
  }

  v19 = v6 - 48 - v17;
  if (v6 - 48 != v17)
  {
    if (v6 - 48 == v6)
    {
      v20 = *(a1 + 24);
      v21 = v20;
    }

    else
    {
      v20 = (v17 + 48);
      v21 = *(a1 + 24);
      do
      {
        v22 = v21 + v19;
        *v21 = *(v21 + v19);
        v21[1] = *(v21 + v19 + 4);
        v21 += 2;
      }

      while (v22 + 8 != v6);
    }

    *(a1 + 32) = v21;
    v18 = v20 - v17;
    goto LABEL_21;
  }

LABEL_22:
  v23 = sub_10058BEB0((a1 + 24), 30);
  *(a1 + 16) = v23;
  sub_1003F2C74((a1 + 144), v23);
  v24 = *(a1 + 144);
  v25 = 0.0;
  v26 = __OFSUB__(v24, 1);
  v27 = v24 - 1;
  if (v27 < 0 != v26)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = *(a1 + 160);
    if (v27)
    {
      v25 = *(a1 + 176) / v27;
    }
  }

  v29 = sqrt(v25);

  sub_100850DB0(a1, v28, v29);
}

void sub_100850BFC(void *a1, double a2, float a3, float a4)
{
  v7 = a1[9];
  v5 = a1[10];
  v6 = (a1 + 9);
  if (v7 != v5 && a2 - *(v5 - 2) > 120.0)
  {
    a1[10] = v7;
    v5 = v7;
  }

  v8 = a1[11];
  if (v5 >= v8)
  {
    v10 = v5 - v7;
    v11 = (v5 - v7) >> 4;
    v12 = v11 + 1;
    if ((v11 + 1) >> 60)
    {
      sub_10028C64C();
    }

    v13 = v8 - v7;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      sub_1003E5FE8((a1 + 9), v14);
    }

    v15 = 16 * v11;
    *v15 = a2;
    *(v15 + 8) = a3;
    *(v15 + 12) = a4;
    v9 = 16 * v11 + 16;
    memcpy(0, v7, v10);
    v16 = a1[9];
    a1[9] = 0;
    a1[10] = v9;
    a1[11] = 0;
    if (v16)
    {
      operator delete(v16);
      v7 = *v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    *v5 = a2;
    v9 = (v5 + 2);
    *(v5 + 2) = a3;
    *(v5 + 3) = a4;
  }

  a1[10] = v9;
  if ((v9 - v7) >= 0x41 && sub_100851208(a1) > 30.0)
  {
    sub_1008512F4(v17, v6, 8);
    v19 = v18;
    sub_1008512F4(v20, v6, 12);
    a1[10] = v7;

    sub_100850A38(a1, v19, v21);
  }
}

uint64_t sub_100850DB0(uint64_t a1, float a2, float a3)
{
  v6 = *a1;
  if (*a1 == 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    *a1 = Current;
    v21 = 0.0;
    v8 = *(a1 + 20);
    HIDWORD(v21) = v8;
    *&v22 = __PAIR64__(LODWORD(a3), LODWORD(a2));
    v9 = *(a1 + 8);
    v23 = Current;
    v24 = v9;
    if (qword_1025D4230 != -1)
    {
      sub_101955DB0();
    }

    v10 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109888;
      *v34 = v8;
      *&v34[4] = 2048;
      *&v34[6] = a2;
      v35 = 2048;
      v36 = a3;
      v37 = 2048;
      v38 = Current;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Workload Calibrator, DB Insert, activityType, %u, valueAverage, %f, standardDeviation, %f, entry.startTime, %f", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101955EE0();
      }

      v25 = 67109888;
      v26 = v8;
      v27 = 2048;
      v28 = a2;
      v29 = 2048;
      v30 = a3;
      v31 = 2048;
      v32 = Current;
      LODWORD(v20) = 38;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "Workload Calibrator, DB Insert, activityType, %u, valueAverage, %f, standardDeviation, %f, entry.startTime, %f", &v25, v20, v21, v22);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWorkloadCalibrator::persistCalibration(const float, const float)", "%s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    sub_1012FA304(*(a1 + 56), &v21);
    if (qword_1025D48A0 != -1)
    {
      sub_101955F4C();
    }

    v11 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      *v34 = 5;
      *&v34[8] = 1024;
      *&v34[10] = HIDWORD(v21);
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "Workload Calibrator, DB Delete Keep Last N, kMaximumDbHistorySize, %lu, activityType, %u", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101955F74(&v21 + 1);
    }

    return sub_1012FA414(*(a1 + 56), 5, SHIDWORD(v21));
  }

  else
  {
    v21 = 0.0;
    v13 = *(a1 + 20);
    HIDWORD(v21) = v13;
    *&v22 = __PAIR64__(LODWORD(a3), LODWORD(a2));
    v14 = *(a1 + 8);
    v23 = v6;
    v24 = v14;
    if (qword_1025D4230 != -1)
    {
      sub_101955DB0();
    }

    v15 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109888;
      *v34 = v13;
      *&v34[4] = 2048;
      *&v34[6] = a2;
      v35 = 2048;
      v36 = a3;
      v37 = 2048;
      v38 = v6;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "Workload Calibrator, DB Update, activityType, %u, valueAverage, %f, standardDeviation, %f, entry.startTime, %f", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101955EE0();
      }

      v25 = 67109888;
      v26 = v13;
      v27 = 2048;
      v28 = a2;
      v29 = 2048;
      v30 = a3;
      v31 = 2048;
      v32 = v6;
      LODWORD(v20) = 38;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "Workload Calibrator, DB Update, activityType, %u, valueAverage, %f, standardDeviation, %f, entry.startTime, %f", &v25, v20, v21, v22);
      v19 = v18;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWorkloadCalibrator::persistCalibration(const float, const float)", "%s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    return sub_1012FA510(*(a1 + 56), &v21);
  }
}

double sub_100851208(uint64_t a1)
{
  v2 = *(a1 + 72);
  v1 = *(a1 + 80);
  v3 = v2 + 2;
  if (v2 == v1 || v3 == v1)
  {
    v5 = *(a1 + 72);
    v3 = v5;
  }

  else
  {
    v7 = v2[2];
    if (v7 >= *v2)
    {
      v5 = *(a1 + 72);
    }

    else
    {
      v5 = v2 + 2;
    }

    if (v7 < *v2)
    {
      v3 = *(a1 + 72);
    }

    v8 = v2 + 4;
    if (v2 + 4 != v1)
    {
      if (v7 >= *v2)
      {
        v7 = *v2;
      }

      while (1)
      {
        v9 = v8;
        v10 = v8 + 2;
        if (v10 == v1)
        {
          break;
        }

        v11 = v9[2];
        v12 = *v9;
        if (v11 >= *v9)
        {
          v13 = v2 + 6;
          if (v12 < v7)
          {
            v7 = *v9;
            v5 = v9;
          }

          if (v11 >= *v3)
          {
            v3 = v13;
          }
        }

        else
        {
          v7 = *v5;
          if (v11 < *v5)
          {
            v7 = v9[2];
            v5 = v10;
          }

          if (v12 >= *v3)
          {
            v3 = v9;
          }
        }

        v8 = v9 + 4;
        v2 = v9;
        if (v9 + 4 == v1)
        {
          return *v3 - *v5;
        }
      }

      if (*v9 >= *v5)
      {
        if (*v9 >= *v3)
        {
          v3 = v9;
        }
      }

      else
      {
        v5 = v9;
      }
    }
  }

  return *v3 - *v5;
}

void sub_1008512F4(uint64_t a1, double **a2, uint64_t a3)
{
  v3 = 0.0;
  if (a2)
  {
    if (a3 != -1)
    {
      v5 = *a2;
      v4 = a2[1];
      if (*a2 != v4)
      {
        v6 = a2[1];
        do
        {
          v7 = v5;
          if (v6 != v4)
          {
            v3 = v3 + ((*(v6 + a3) + *(v5 + a3)) * 0.5) * (*v5 - *v6);
          }

          v5 += 2;
          v6 = v7;
        }

        while (v7 + 2 != v4);
      }
    }
  }
}

void sub_1008513FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10189B1B8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100851414(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_100851444(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100851484(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1008577B4(v13, a4);
  sub_100DCBEB4(a1, a2, v13);
  sub_100678FA8(v13);
  *a1 = off_102476FD8;
  sub_10085771C(v12, a6);
  v10 = a3[1];
  v11[0] = *a3;
  v11[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100855F9C((a1 + 57), v12, v11);
}

void sub_100852C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  sub_100678FA8(a16 + 4424);
  v64 = *(a16 + 4360);
  if (v64)
  {
    *(a16 + 4368) = v64;
    operator delete(v64);
  }

  sub_100857898((a16 + 4344), 0);
  v65 = *(a16 + 4336);
  *(a16 + 4336) = 0;
  if (v65)
  {
    operator delete();
  }

  sub_10085784C((a16 + 4288), 0);
  nullsub_34();
  sub_100CE1E30(a16 + 4000);
  v66 = *(a16 + 3968);
  *(a16 + 3968) = 0;
  if (v66)
  {
    (*(a16 + 3976))();
  }

  sub_1019561DC(a15, (a16 + 3880), (a16 + 3872), a16 + 456);
  sub_1008533B0(a16);
  _Unwind_Resume(a1);
}

void sub_100852F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10067940C(&a15);
  operator delete();
}

void sub_100853078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10067940C(&a15);
  operator delete();
}

void sub_1008530B8(uint64_t a1)
{
  if (qword_1025D46B0 != -1)
  {
    sub_101956260();
  }

  v2 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLMM,onMapMatcherStopped,timer triggered", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101956274();
  }

  v3 = *(a1 + 3912);
  if (v3)
  {
    sub_100855E38(v3, 1);
    sub_100855E38(*(a1 + 3912), 0);
    GEOResetGeoCodecsAllocator();
    if (qword_1025D46B0 != -1)
    {
      sub_101956350();
    }

    v4 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLMM,onMapMatcherStopped,road and building tiles cleared from process memory", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101956378();
    }
  }

  v5 = *(a1 + 4408);
  if (v5)
  {
    [v5 setNextFireDelay:1.79769313e308];
  }

  if (*(a1 + 4416))
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101956350();
    }

    v6 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "CLMM,Releasing mapmatcher collection OS transaction", v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101956454();
    }

    *(a1 + 4416) = 0;
  }
}

BOOL sub_100853270()
{
  sub_10001CAF4(buf);
  v0 = *buf;
  v3 = sub_1002D48A8(v1, v2);
  v7 = 0;
  if (sub_10001CB4C(v0, "EnableTrackRun", &v7, 0xFFFFFFFFLL))
  {
    v4 = v7;
  }

  else
  {
    v4 = v3;
  }

  if (v9)
  {
    sub_100008080(v9);
  }

  if (qword_1025D41D0 != -1)
  {
    sub_101956170();
  }

  v5 = qword_1025D41D8;
  if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    *&buf[4] = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#cltr,EnableTrackRun,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101956530(v4);
  }

  return v4;
}

void sub_100853390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1008533B0(void *a1)
{
  *a1 = off_1024B1DF8;
  v2 = a1 + 2;
  sub_10120BB38((a1 + 6));
  sub_100678FA8(v2);
  return a1;
}

uint64_t sub_100853408(CLNanoRegistry *a1, uint64_t a2)
{
  v2 = a1;
  if (BYTE3(a1[490].super.isa) == 1)
  {
    BYTE3(a1[490].super.isa) = 0;
  }

  if (!a1[494].super.isa)
  {
    a1 = objc_alloc_init(CLNanoRegistry);
    v2[494].super.isa = a1;
  }

  v3 = sub_10001A3E8(a1, a2);
  if (sub_10001CF04(v3, v4))
  {
    v5 = [(objc_class *)v2[494].super.isa isAFire6OrOlderWatchPaired]^ 1;
  }

  else
  {
    v5 = 0;
  }

  WORD1(v2[490].super.isa) = v5 | 0x100;
  if (qword_1025D41D0 != -1)
  {
    sub_101956624();
  }

  v6 = qword_1025D41D8;
  if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
  {
    if (BYTE3(v2[490].super.isa) == 1)
    {
      v7 = BYTE2(v2[490].super.isa);
    }

    else
    {
      v7 = 1;
    }

    v9[0] = 67240192;
    v9[1] = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#cltr,fIsPhoneThatDoesNotNeedTrackRunProcessing,%{public}d", v9, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101956638();
  }

  return (*(v2->super.isa + 59))(v2);
}

id sub_100853578(uint64_t a1)
{
  v2 = +[RDEstimate currentEstimates];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_44;
  }

  if (*(a1 + 3960))
  {
    v4 = [v2 count];
    v5 = v4 == [*(a1 + 3960) count];
  }

  else
  {
    v5 = 0;
  }

  v23 = a1;
  if ([v3 count])
  {
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3);
    if (v26)
    {
      v25 = MEMORY[0];
      p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      obj = v3;
      while (1)
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (MEMORY[0] != v25)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(8 * i);
          if (p_info[58] != -1)
          {
            sub_101956170();
          }

          v9 = qword_1025D41D8;
          if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
          {
            v10 = [v8 countryCode];
            *buf = 138477827;
            v32 = v10;
            _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#cltr,currentCountryCode,%{private}@", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101956738(v29, v8, &v30);
            if (!v5)
            {
LABEL_34:
              v5 = 0;
              continue;
            }
          }

          else if (!v5)
          {
            goto LABEL_34;
          }

          v11 = *(v23 + 3960);
          v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v23);
          if (v12)
          {
            v13 = v12;
            v14 = MEMORY[0];
            while (2)
            {
              v15 = p_info;
              for (j = 0; j != v13; j = j + 1)
              {
                if (MEMORY[0] != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v17 = *(8 * j);
                if ([objc_msgSend(v8 "countryCode")])
                {
                  p_info = v15;
                  if (v15[58] != -1)
                  {
                    sub_101956170();
                  }

                  v18 = qword_1025D41D8;
                  if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
                  {
                    v19 = [v17 countryCode];
                    *buf = 138477827;
                    v32 = v19;
                    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#cltr,matching country found,%{private}@", buf, 0xCu);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    sub_10195683C(v27, v17, &v28);
                  }

                  goto LABEL_32;
                }
              }

              v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11);
              v5 = 0;
              p_info = v15;
              if (v13)
              {
                continue;
              }

              break;
            }
          }

          else
          {
LABEL_32:
            v5 = 1;
          }
        }

        v3 = obj;
        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
        if (!v26)
        {
          break;
        }
      }
    }
  }

  a1 = v23;
  if (v5)
  {
    if (qword_1025D41D0 != -1)
    {
      sub_101956170();
    }

    v20 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "#cltr,country code list is the same. Not clearing the supported region flag.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101956940();
    }
  }

  else
  {
LABEL_44:
    if (qword_1025D41D0 != -1)
    {
      sub_101956170();
    }

    v21 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "#cltr,country code list has changed. Clearing the supported region flag.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101956A1C();
    }

    if (*(a1 + 3921) == 1)
    {
      *(a1 + 3921) = 0;
    }
  }

  result = v3;
  *(a1 + 3960) = result;
  return result;
}

uint64_t sub_1008539D0(uint64_t a1)
{
  *a1 = off_102476FD8;
  v2 = *(a1 + 4288);
  if (v2)
  {
    sub_1017363F0(v2);
  }

  v3 = *(a1 + 4408);
  if (v3)
  {
    [v3 invalidate];

    *(a1 + 4408) = 0;
  }

  v4 = *(a1 + 3968);
  *(a1 + 3968) = 0;
  if (v4)
  {
    (*(a1 + 3976))();
  }

  (*(*a1 + 448))(a1);
  sub_100733E10(*(a1 + 3936));

  sub_10025CAF4((a1 + 4000));
  sub_100678FA8(a1 + 4424);
  v5 = *(a1 + 4360);
  if (v5)
  {
    *(a1 + 4368) = v5;
    operator delete(v5);
  }

  sub_100857898((a1 + 4344), 0);
  v6 = *(a1 + 4336);
  *(a1 + 4336) = 0;
  if (v6)
  {
    operator delete();
  }

  sub_10085784C((a1 + 4288), 0);
  nullsub_34();
  sub_100CE1E30(a1 + 4000);
  v7 = *(a1 + 3968);
  *(a1 + 3968) = 0;
  if (v7)
  {
    (*(a1 + 3976))();
  }

  v8 = *(a1 + 3912);
  *(a1 + 3912) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  sub_1006F7EA8((a1 + 3880), 0);
  sub_1006F7EA8((a1 + 3872), 0);
  sub_100857568(a1 + 456);
  *a1 = off_1024B1DF8;
  sub_10120BB38(a1 + 48);
  sub_100678FA8(a1 + 16);
  return a1;
}

void sub_100853BA0(uint64_t a1)
{
  sub_1008539D0(a1);

  operator delete();
}

double sub_100853BD8(uint64_t a1)
{
  *(a1 + 3552) = 0xFFFF;
  *(a1 + 3556) = 0u;
  __asm { FMOV            V2.2D, #-1.0 }

  *(a1 + 3572) = xmmword_101C75BF0;
  *(a1 + 3588) = _Q2;
  *(a1 + 3604) = _Q2;
  *(a1 + 3620) = _Q2;
  *(a1 + 3636) = 0;
  *(a1 + 3640) = 0xBFF0000000000000;
  *(a1 + 3648) = 0u;
  *(a1 + 3664) = 0;
  *(a1 + 3668) = 0xBFF0000000000000;
  *(a1 + 3676) = 0x7FFFFFFF;
  *(a1 + 3680) = 0;
  *(a1 + 3696) = 0;
  *(a1 + 3688) = 0;
  *(a1 + 3704) = 0;
  sub_100D6B030(a1 + 456);
  sub_10120BB3C(a1 + 48);
  v8 = *(a1 + 4288);
  if (v8)
  {

    return sub_1017363F0(v8);
  }

  return result;
}

uint64_t sub_100853C88(uint64_t a1, uint64_t a2, double a3)
{
  LODWORD(result) = sub_100D6F154(a1 + 456, a2, a3);
  if (*(a2 + 20) > 0.0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100853CBC(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 3912);
  if (result)
  {
    return sub_101051070(result, a2);
  }

  return result;
}

BOOL sub_100853CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 544);
  if (v4 > 0.0)
  {
    *(a2 + 28) = *(a4 + 28);
    *(a3 + 316) = *(a4 + 476);
    *(a3 + 312) = *(a4 + 472);
    *(a3 + 384) = v4;
    *(a3 + 360) = *(a4 + 520);
    *(a3 + 368) = *(a4 + 528);
    *(a3 + 624) = *(a4 + 784);
    *(a3 + 496) = *(a4 + 656);
  }

  return v4 > 0.0;
}

void sub_100853D2C(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (!*a2)
  {
    v5 = sub_10000B1F8(a1, a2);
    *buf = 1;
    *buf = sub_10001A6B0(v5, buf);
    sub_100D714B4(a1 + 456, buf, a3);
    v6 = *(a1 + 3912);
    if (v6)
    {
      v7 = *a3;
      if (*(a3 + 8) != 73 && (*a3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && v7 > 0.0)
      {
        *buf = *a3;
        *&buf[16] = *(a3 + 16);
        sub_10104DED0(v6, buf);
      }

      if (qword_1025D4600 != -1)
      {
        sub_101956104();
      }

      v8 = qword_1025D4608;
      v9 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        v11 = *(a3 + 8);
        if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v12 = -1.0;
        }

        else
        {
          v12 = *a3;
        }

        v13 = sub_10000B1F8(v9, v10);
        *buf = 1;
        v14 = sub_10001A6B0(v13, buf);
        v17 = sub_10000B1F8(v15, v16);
        v18 = sub_100125220(v17);
        *buf = 67240960;
        *&buf[4] = v11;
        *&buf[8] = 2050;
        *&buf[10] = v12;
        *&buf[18] = 2050;
        v38 = v14;
        v39 = 2050;
        v40 = v18;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLMM,CLLocationFilterController,Received NotificationWorkoutSessionOverride,fitnessSession,%{public}d,startTime,%{public}.1lf,now,%{public}.3f,propagation_us,%{public}.3f", buf, 0x26u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_101956104();
        }

        v21 = qword_1025D4608;
        v22 = *(a3 + 8);
        if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v23 = -1.0;
        }

        else
        {
          v23 = *a3;
        }

        v24 = sub_10002F470(v19, v20);
        v27 = sub_10000B1F8(v25, v26);
        v30[0] = 67240960;
        v30[1] = v22;
        v31 = 2050;
        v32 = v23;
        v33 = 2050;
        v34 = v24;
        v35 = 2050;
        v36 = sub_100125220(v27);
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v21, 2, "CLMM,CLLocationFilterController,Received NotificationWorkoutSessionOverride,fitnessSession,%{public}d,startTime,%{public}.1lf,now,%{public}.3f,propagation_us,%{public}.3f", v30, 38);
        v29 = v28;
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLLocationControllerFusion::feedMotionStateObserverNotification(const CLMotionStateObserver_Type::Notification &, const CLMotionStateObserver_Type::NotificationData &)", "%s\n", v28);
        if (v29 != buf)
        {
          free(v29);
        }
      }
    }
  }
}

void sub_100853FF8(uint64_t a1, int *a2, int *a3)
{
  if ((*a2 - 1) < 2)
  {
    v5 = sub_10000B1F8(a1, a2);
    *buf = 0;
    v6 = sub_10001A6B0(v5, buf);
    v67 = *&v6;
    v7 = *(a3 + 7);
    v64 = *(a3 + 6);
    v65 = v7;
    v66 = *(a3 + 16);
    v8 = *(a3 + 3);
    *&v62.isStanding = *(a3 + 2);
    *&v62.isVehicleConnected = v8;
    v9 = *(a3 + 5);
    *&v62.vehicleType = *(a3 + 4);
    v63 = v9;
    v10 = *(a3 + 1);
    *&v62.type = *a3;
    *&v62.mountedConfidence = v10;
    v11 = *(a1 + 3872);
    if (v11)
    {
      sub_1009311A0(v11, &v62, v6);
    }

    v12 = *(a1 + 3880);
    if (v12)
    {
      sub_1009311A0(v12, &v62, v6);
    }

    v13 = vabdd_f64(v6, *(a1 + 4256));
    if (v13 >= 1.5)
    {
      goto LABEL_44;
    }

    if (*(a1 + 4248) != 0.0)
    {
      goto LABEL_11;
    }

    v14 = 0;
    if (v13 < 0.5 && vabdd_f64(v6, *(a1 + 4164)) < 1.5)
    {
      v15 = *(a1 + 4132);
      if (v15 < 0.0)
      {
LABEL_11:
        v14 = 0;
        goto LABEL_26;
      }

      v14 = v15 + *(a1 + 4140) * -2.0 < 0.0;
    }

LABEL_26:
    if (v62.type <= 0x38u)
    {
      if (((1 << SLOBYTE(v62.type)) & 0x20000000398) != 0)
      {
        v62.type = 5;
LABEL_38:
        v62.confidence = 2;
        goto LABEL_39;
      }

      if (((1 << SLOBYTE(v62.type)) & 0x110000000000020) != 0)
      {
        goto LABEL_38;
      }

      if (((1 << SLOBYTE(v62.type)) & 0xC00) != 0)
      {
        if (!v14)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }
    }

    if (v62.type == 2)
    {
      v20 = 11;
    }

    else
    {
      if (v62.type != 1)
      {
        goto LABEL_39;
      }

      v20 = 10;
    }

    v62.type = v20;
    if (v14)
    {
      goto LABEL_38;
    }

LABEL_39:
    if (qword_1025D4770 != -1)
    {
      sub_101956098();
    }

    v21 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v22 = *a3;
      v23 = a3[1];
      *buf = 67241216;
      *&buf[4] = v22;
      v81 = 1026;
      *v82 = v23;
      *&v82[4] = 1026;
      *&v82[6] = v62.type;
      LOWORD(v83) = 1026;
      *(&v83 + 2) = v62.confidence;
      HIWORD(v83) = 1026;
      LODWORD(v84) = v14;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "In vehicle detected Adjusting motion state,type,%{public}d,confidence,%{public}d,to type,%{public}d,confidence,%{public}d,isSpeedZero,%{public}d", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4770 != -1)
      {
        sub_101956098();
      }

      v45 = *a3;
      v46 = a3[1];
      v68 = 67241216;
      v69 = v45;
      v70 = 1026;
      v71 = v46;
      v72 = 1026;
      type = v62.type;
      v74 = 1026;
      confidence = v62.confidence;
      v76 = 1026;
      LODWORD(v77) = v14;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "In vehicle detected Adjusting motion state,type,%{public}d,confidence,%{public}d,to type,%{public}d,confidence,%{public}d,isSpeedZero,%{public}d", &v68, 32);
      v48 = v47;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLLocationControllerFusion::feedMotionNotification(const CLMotionState_Type::Notification &, const CLMotionState_Type::NotificationData &)", "%s\n", v47);
      if (v48 != buf)
      {
        free(v48);
      }
    }

LABEL_44:
    if (*(a1 + 4272) == 1 && v62.type && (v24 = v6 - *(a1 + 4264), v24 >= 0.0) && v24 < 10.0)
    {
      if (qword_1025D4770 != -1)
      {
        sub_101956098();
      }

      v25 = qword_1025D4778;
      v26 = os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG);
      if (v26)
      {
        v28 = v62.type;
        v29 = sub_10000B1F8(v26, v27);
        v30 = sub_100125220(v29);
        *buf = 67240704;
        *&buf[4] = v28;
        v81 = 2050;
        *v82 = v6;
        *&v82[8] = 2050;
        v83 = v30;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "Going to sleep. Not providing motion state, %{public}d, to the location KF,now,%{public}.3f,propagation_us,%{public}.3f", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019573DC(&v62, v6);
      }
    }

    else
    {
      sub_10120BB80(a1 + 48, &v67, &v62, &v62.confidence);
      v33 = sub_10000B1F8(v31, v32);
      *buf = 1;
      *buf = sub_10001A6B0(v33, buf);
      sub_1000DBA30(a1 + 456, buf, &v62);
      v34 = *(a1 + 3912);
      if (v34)
      {
        (*(*v34 + 64))(v34, &v67, &v62);
        if (qword_1025D4600 != -1)
        {
          sub_101956104();
        }

        v35 = qword_1025D4608;
        v36 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG);
        if (v36)
        {
          v38 = v62.type;
          v39 = v62.confidence;
          mountedState = v62.mountedState;
          mountedConfidence = v62.mountedConfidence;
          v42 = v67;
          v43 = sub_10000B1F8(v36, v37);
          v44 = sub_100125220(v43);
          *buf = 67241472;
          *&buf[4] = v38;
          v81 = 1026;
          *v82 = v39;
          *&v82[4] = 1026;
          *&v82[6] = mountedState;
          LOWORD(v83) = 1026;
          *(&v83 + 2) = mountedConfidence;
          HIWORD(v83) = 2050;
          v84 = v42;
          v85 = 2050;
          v86 = v44;
          _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "CLMM, MotionState,type,%{public}d,confidence,%{public}d,mountedState,%{public}d,mountedConfidence,%{public}d,now,%{public}.3f,propagation_us,%{public}.3f", buf, 0x2Eu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_101956104();
          }

          v51 = qword_1025D4608;
          v52 = v62.type;
          v53 = v62.confidence;
          v54 = v62.mountedState;
          v55 = v62.mountedConfidence;
          v56 = v67;
          v57 = sub_10000B1F8(v49, v50);
          v58 = sub_100125220(v57);
          v68 = 67241472;
          v69 = v52;
          v70 = 1026;
          v71 = v53;
          v72 = 1026;
          type = v54;
          v74 = 1026;
          confidence = v55;
          v76 = 2050;
          v77 = v56;
          v78 = 2050;
          v79 = v58;
          LODWORD(v61) = 46;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v51, 2, "CLMM, MotionState,type,%{public}d,confidence,%{public}d,mountedState,%{public}d,mountedConfidence,%{public}d,now,%{public}.3f,propagation_us,%{public}.3f", &v68, v61);
          v60 = v59;
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLLocationControllerFusion::feedMotionNotification(const CLMotionState_Type::Notification &, const CLMotionState_Type::NotificationData &)", "%s\n", v59);
          if (v60 != buf)
          {
            free(v60);
          }
        }
      }
    }

    return;
  }

  if (*a2)
  {
    if (qword_1025D4770 != -1)
    {
      sub_101957038();
    }

    v18 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_FAULT))
    {
      v19 = *a2;
      *buf = 67240192;
      *&buf[4] = v19;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "#Warning, Fusion Controller, received unhandled motion notification %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019575E8(a2);
    }
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_101957038();
    }

    v16 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#Warning, Fusion Controller, unexpected kNotificationMovementCoarse", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195750C();
    }
  }
}
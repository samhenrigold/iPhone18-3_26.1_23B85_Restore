uint64_t GEOTimepointReadAllFrom(uint64_t a1, void *a2)
{
  for (i = objc_msgSend_position(a2); i < [a2 length] && (objc_msgSend(a2, "hasError") & 1) == 0; i = objc_msgSend_position(a2))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v28) = 0;
      v8 = objc_msgSend_position(a2) + 1;
      if (v8 >= objc_msgSend_position(a2) && (v9 = objc_msgSend_position(a2) + 1, v9 <= [a2 length]))
      {
        v10 = [a2 data];
        [v10 getBytes:&v28 range:{objc_msgSend_position(a2), 1}];

        [a2 setPosition:objc_msgSend_position(a2) + 1];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v28 & 0x7F) << v5;
      if ((v28 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_16;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      break;
    }

    v13 = v12 >> 3;
    if ((v12 >> 3) == 4)
    {
      *(a1 + 20) |= 1u;
      v28 = 0;
      v23 = objc_msgSend_position(a2) + 8;
      if (v23 >= objc_msgSend_position(a2) && (v24 = objc_msgSend_position(a2) + 8, v24 <= [a2 length]))
      {
        v26 = [a2 data];
        [v26 getBytes:&v28 range:{objc_msgSend_position(a2), 8}];

        [a2 setPosition:objc_msgSend_position(a2) + 8];
      }

      else
      {
        [a2 _setError];
      }

      *a1 = v28;
    }

    else if (v13 == 2)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 20) |= 4u;
      while (1)
      {
        LOBYTE(v28) = 0;
        v19 = objc_msgSend_position(a2) + 1;
        if (v19 >= objc_msgSend_position(a2) && (v20 = objc_msgSend_position(a2) + 1, v20 <= [a2 length]))
        {
          v21 = [a2 data];
          [v21 getBytes:&v28 range:{objc_msgSend_position(a2), 1}];

          [a2 setPosition:objc_msgSend_position(a2) + 1];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v28 & 0x7F) << v16;
        if ((v28 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_41;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

LABEL_41:
      *(a1 + 16) = v22;
    }

    else if (v13 == 1)
    {
      *(a1 + 20) |= 2u;
      v28 = 0;
      v14 = objc_msgSend_position(a2) + 8;
      if (v14 >= objc_msgSend_position(a2) && (v15 = objc_msgSend_position(a2) + 8, v15 <= [a2 length]))
      {
        v27 = [a2 data];
        [v27 getBytes:&v28 range:{objc_msgSend_position(a2), 8}];

        [a2 setPosition:objc_msgSend_position(a2) + 8];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 8) = v28;
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

id GEOGetKeyBagLog()
{
  if (GEOGetKeyBagLog_onceToken != -1)
  {
    dispatch_once(&GEOGetKeyBagLog_onceToken, &__block_literal_global_42);
  }

  v1 = GEOGetKeyBagLog_log;

  return v1;
}

void __GEOGetNetEventFileManagerLog_block_invoke()
{
  v0 = os_log_create("com.apple.GeoServices", "NetEventFileManager");
  v1 = GEOGetNetEventFileManagerLog_log;
  GEOGetNetEventFileManagerLog_log = v0;
}

void __GEOGetAnalyticDataFileLog_block_invoke()
{
  v0 = os_log_create("com.apple.GeoServices", "AnalyticDataFile");
  v1 = GEOGetAnalyticDataFileLog_log;
  GEOGetAnalyticDataFileLog_log = v0;
}

void _GEOSystemMonitorPowerNotification(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  switch(a3)
  {
    case -536870144:
      v22 = GEOGetSystemMonitorLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_18660C000, v22, OS_LOG_TYPE_DEBUG, "Received kIOMessageSystemHasPoweredOn", buf, 2u);
      }

      v23 = +[GEOSystemMonitor sharedInstance];
      if (v23)
      {
        *v33 = 0;
        v34 = v33;
        v35 = 0x2020000000;
        LOBYTE(v36) = 0;
        *buf = MEMORY[0x1E69E9820];
        v46 = 3221225472;
        v47 = __34__GEOSystemMonitor__systemDidWake__block_invoke;
        v48 = &unk_1E7071448;
        v49 = v23;
        v50 = v33;
        geo_isolate_sync();
        if (*(v34 + 24))
        {
          v24 = GEOGetSystemMonitorLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(block) = 0;
            _os_log_impl(&dword_18660C000, v24, OS_LOG_TYPE_DEBUG, "System did wake. Notifying observers", &block, 2u);
          }

          [v23[3] systemDidWake];
        }

        _Block_object_dispose(v33, 8);
      }

      break;
    case -536870272:
      v15 = GEOGetSystemMonitorLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_18660C000, v15, OS_LOG_TYPE_DEBUG, "Received kIOMessageSystemWillSleep", buf, 2u);
      }

      v16 = +[GEOSystemMonitor sharedInstance];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v26 = ___GEOSystemMonitorPowerNotification_block_invoke_122;
      v27 = &__block_descriptor_40_e5_v8__0l;
      v28 = a4;
      v17 = v25;
      if (v16)
      {
        block = 0;
        p_block = &block;
        v53 = 0x2020000000;
        LOBYTE(v54) = 0;
        *buf = MEMORY[0x1E69E9820];
        v46 = 3221225472;
        v47 = __37__GEOSystemMonitor__systemWillSleep___block_invoke;
        v48 = &unk_1E7071448;
        v49 = v16;
        v50 = &block;
        geo_isolate_sync();
        if (*(p_block + 24))
        {
          v18 = GEOGetSystemMonitorLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *v33 = 0;
            _os_log_impl(&dword_18660C000, v18, OS_LOG_TYPE_DEBUG, "System will sleep. Notifying observers", v33, 2u);
          }

          v19 = dispatch_group_create();
          v20 = *(v16 + 24);
          *v33 = MEMORY[0x1E69E9820];
          v34 = 3221225472;
          v35 = __37__GEOSystemMonitor__systemWillSleep___block_invoke_14;
          v36 = &unk_1E70700B8;
          v21 = v19;
          v37 = v21;
          [v20 enumerateObserversWithGroup:v21 visitor:v33];
          dispatch_group_notify(v21, *(v16 + 8), v17);
        }

        else
        {
          v26(v17);
        }

        _Block_object_dispose(&block, 8);
      }

      break;
    case -536870288:
      v7 = GEOGetSystemMonitorLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_18660C000, v7, OS_LOG_TYPE_DEBUG, "Received kIOMessageCanSystemSleep", buf, 2u);
      }

      v8 = +[GEOSystemMonitor sharedInstance];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v30 = ___GEOSystemMonitorPowerNotification_block_invoke;
      v31 = &__block_descriptor_40_e8_v12__0B8l;
      v32 = a4;
      v9 = v29;
      if (v8)
      {
        v41 = 0;
        v42 = &v41;
        v43 = 0x2020000000;
        v44 = 0;
        *buf = MEMORY[0x1E69E9820];
        v46 = 3221225472;
        v47 = __36__GEOSystemMonitor__systemCanSleep___block_invoke;
        v48 = &unk_1E7071448;
        v49 = v8;
        v50 = &v41;
        geo_isolate_sync();
        if (v42[3])
        {
          v10 = GEOGetSystemMonitorLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *v33 = 0;
            _os_log_impl(&dword_18660C000, v10, OS_LOG_TYPE_DEBUG, "System is asking to sleep. Checking with observers", v33, 2u);
          }

          v11 = dispatch_group_create();
          v39[0] = 0;
          v39[1] = v39;
          v39[2] = 0x2020000000;
          v40 = 1;
          v12 = v8[3];
          *v33 = MEMORY[0x1E69E9820];
          v34 = 3221225472;
          v35 = __36__GEOSystemMonitor__systemCanSleep___block_invoke_11;
          v36 = &unk_1E7070068;
          v13 = v11;
          v37 = v13;
          v38 = v39;
          [v12 enumerateObserversWithGroup:v13 visitor:v33];
          v14 = v8[1];
          block = MEMORY[0x1E69E9820];
          p_block = 3221225472;
          v53 = __36__GEOSystemMonitor__systemCanSleep___block_invoke_3;
          v54 = &unk_1E7070090;
          v55 = v9;
          v56 = v39;
          dispatch_group_notify(v13, v14, &block);

          _Block_object_dispose(v39, 8);
        }

        else
        {
          v30(v9, 1);
        }

        _Block_object_dispose(&v41, 8);
      }

      break;
  }

  objc_autoreleasePoolPop(v6);
}

void sub_186799A64(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  if (a2 == 1)
  {
    v31 = objc_begin_catch(a1);
    v32 = GEOGetSystemMonitorLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      *(v28 - 144) = 138543362;
      *(v28 - 140) = v31;
      _os_log_impl(&dword_18660C000, v32, OS_LOG_TYPE_FAULT, "Exception raised during system sleep callback: %{public}@", (v28 - 144), 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x186799A20);
  }

  _Unwind_Resume(a1);
}

id GEOGetSystemMonitorLog()
{
  if (GEOGetSystemMonitorLog_onceToken != -1)
  {
    dispatch_once(&GEOGetSystemMonitorLog_onceToken, &__block_literal_global_118);
  }

  v1 = GEOGetSystemMonitorLog_log;

  return v1;
}

uint64_t SetXPCValue(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a4;
  v11 = a5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __SetXPCValue_block_invoke;
  v18[3] = &unk_1E704E628;
  v12 = v9;
  v22 = &v24;
  v23 = a3;
  v19 = v12;
  v13 = v10;
  v20 = v13;
  v14 = v11;
  v21 = v14;
  v15 = [v12 executeStatement:@"SetXPCValue" statementBlock:v18];
  if (a2)
  {
    v16 = v25[5];
    if (v16)
    {
      *a2 = v16;
    }
  }

  _Block_object_dispose(&v24, 8);
  return v15;
}

void sub_18679A0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SetXPCValue_block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[4];
  v5 = a1[8];
  v6 = *(a1[7] + 8);
  obj = *(v6 + 40);
  v7 = [v4 bindInt64Parameter:"@rowid" toValue:v5 inStatement:a2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (!v7)
  {
    return 0;
  }

  v8 = a1[4];
  v9 = a1[5];
  v10 = *(a1[7] + 8);
  v18 = *(v10 + 40);
  v11 = [v8 bindTextParameter:"@type" toValue:v9 inStatement:a2 error:&v18];
  objc_storeStrong((v10 + 40), v18);
  if (!v11)
  {
    return 0;
  }

  v12 = a1[4];
  v13 = a1[6];
  v14 = *(a1[7] + 8);
  v17 = *(v14 + 40);
  v15 = [v12 bindTextParameter:"@value" toValue:v13 inStatement:a2 error:&v17];
  objc_storeStrong((v14 + 40), v17);
  return v15;
}

void sub_18679ADE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

long double GEOBearingFromCoordinateToCoordinate(double a1, double a2, double a3, double a4)
{
  v4 = a2 * 0.0174532925;
  v5 = a3 * 0.0174532925;
  v6 = a4 * 0.0174532925;
  v7 = __sincos_stret(a1 * 0.0174532925);
  v8 = __sincos_stret(v5);
  v9 = __sincos_stret(v6 - v4);
  v10 = atan2(v8.__cosval * v9.__sinval, -(v7.__sinval * v8.__cosval) * v9.__cosval + v7.__cosval * v8.__sinval);
  return fmod(v10, 6.28318531) * 57.2957795;
}

BOOL GEOMapRectContainsPoint(double a1, double a2, double a3, double a4, double a5, double a6)
{
  result = 0;
  v7 = fabs(a2) == INFINITY;
  if (fabs(a1) != INFINITY && !v7)
  {
    v8 = a1 + a3;
    if (a5 >= a1 && a5 < v8 && a6 >= a2)
    {
      return a6 < a2 + a4;
    }
  }

  return result;
}

double GEOMapRectInset(double result, double a2, double a3, double a4, double a5)
{
  v5 = fabs(a2) == INFINITY;
  if (fabs(result) != INFINITY && !v5)
  {
    return result + a5;
  }

  return result;
}

BOOL GEOPolylineCoordinateIsABeforeOrEqualToB(uint64_t a1, uint64_t a2)
{
  v2 = *(&a1 + 1) == *(&a2 + 1) || *(&a1 + 1) < *(&a2 + 1);
  if (a1 == a2)
  {
    return v2;
  }

  else
  {
    return a1 < a2;
  }
}

BOOL GEOPolylineCoordinateIsABeforeB(uint64_t a1, uint64_t a2)
{
  v2 = *(&a1 + 1) < *(&a2 + 1);
  if (*(&a1 + 1) == *(&a2 + 1))
  {
    v2 = 0;
  }

  if (a1 == a2)
  {
    return v2;
  }

  else
  {
    return a1 < a2;
  }
}

BOOL GEOPolylineCoordinateRangeIsInvalid(uint64_t a1, uint64_t a2)
{
  if (*(&a1 + 1) >= 0.0 && *(&a2 + 1) >= 0.0)
  {
    v2 = a1 < a2;
    v3 = *(&a1 + 1) == *(&a2 + 1) || *(&a1 + 1) < *(&a2 + 1);
    if (a1 == a2)
    {
      v2 = v3;
    }
  }

  else
  {
    v2 = 0;
  }

  return !v2;
}

void sub_18679B95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

id GEOGetGEOPathMatcherLog(void)
{
  if (GEOGetGEOPathMatcherLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetGEOPathMatcherLog(void)::onceToken, &__block_literal_global_8125);
  }

  v1 = GEOGetGEOPathMatcherLog(void)::log;

  return v1;
}

BOOL GEOPolylineCoordinateRangeIntersectsRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    if (*(&a2 + 1) <= *(&a3 + 1))
    {
      return 0;
    }
  }

  else if (a2 < a3)
  {
    return 0;
  }

  v5 = a4 < a1;
  v6 = *(&a4 + 1) == *(&a1 + 1) || *(&a4 + 1) < *(&a1 + 1);
  if (a4 == a1)
  {
    v5 = v6;
  }

  return !v5;
}

BOOL GEOPolylineCoordinateInRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a1)
  {
    if (*(&a2 + 1) > *(&a1 + 1))
    {
      return 0;
    }
  }

  else if (a2 >= a1)
  {
    return 0;
  }

  v4 = *(&a1 + 1) == *(&a3 + 1) || *(&a1 + 1) < *(&a3 + 1);
  if (a1 == a3)
  {
    return v4;
  }

  else
  {
    return a1 < a3;
  }
}

double GEOClosestCoordinateOnLineSegmentFromCoordinate3D(double result, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v10 = a4 - result;
  v11 = a5 - a2;
  if (a4 - result != 0.0 || v11 != 0.0)
  {
    v12 = (v11 * (a10 - a2) + (a9 - result) * v10) / (v11 * v11 + v10 * v10);
    if (v12 >= 0.0)
    {
      if (v12 <= 1.0)
      {
        return result + v12 * v10;
      }

      else
      {
        return a4;
      }
    }
  }

  return result;
}

BOOL GEOPolylineCoordinateWithinRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a1)
  {
    if (*(&a2 + 1) > *(&a1 + 1))
    {
      return 0;
    }
  }

  else if (a2 >= a1)
  {
    return 0;
  }

  v4 = *(&a1 + 1) == *(&a3 + 1) || *(&a1 + 1) < *(&a3 + 1);
  if (a1 == a3)
  {
    return v4;
  }

  else
  {
    return a1 < a3;
  }
}

void sub_18679CD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_18679DA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18679DC70(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

id GEORoundedMeasurementForDistance(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD28] _geo_distanceMeasurementForMeters:?];
  v3 = +[GEOComposedString localizationProvider];
  v4 = [_TtC11GeoServices27GEODistanceStringFormatting formattedStringFor:v2 localizationProvider:v3 formatOptions:a1];
  v5 = [v4 roundedDistance];

  return v5;
}

id GEOGetGEOProbeCrumbsLog(void)
{
  if (GEOGetGEOProbeCrumbsLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetGEOProbeCrumbsLog(void)::onceToken, &__block_literal_global_154526);
  }

  v1 = GEOGetGEOProbeCrumbsLog(void)::log;

  return v1;
}

uint64_t sub_18679E074(uint64_t a1, double a2, double a3, uint64_t a4, void *a5)
{
  v7 = (a1 + *a5);
  result = swift_beginAccess();
  *v7 = a2;
  v7[1] = a3;
  return result;
}

uint64_t sub_18679E0C8(uint64_t result, double a2, double a3)
{
  if (*(v3 + OBJC_IVAR____TtC11GeoServices33GEONavigationListenerRemoteClient_hasEntitlement) == 1)
  {
    v4 = *(v3 + OBJC_IVAR____TtC11GeoServices33GEONavigationListenerRemoteClient__connection);
    if (v4)
    {
      v5 = result;
      v8 = [v4 remoteObjectProxy];
      sub_187ED3480();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8FD270, &unk_187FBA1E8);
      result = swift_dynamicCast();
      if (result)
      {
        [v9 *v5];
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void std::vector<gm::Matrix<double,2,1>>::reserve(__int128 **a1, unint64_t a2)
{
  if (a2 > a1[2] - *a1)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<GEOLocationCoordinate2D>>(a2);
    }

    std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<addr_obj::venue::Field>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<addr_obj::venue::Field>>(a1, a2);
  }

  std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
}

uint64_t geo::containsPoint<double>(uint64_t a1, uint64_t a2, double *a3)
{
  if (a2 == a1)
  {
    v31 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = (a2 - a1) >> 4;
    v7 = *a3;
    v6 = a3[1];
    if (v5 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = (a2 - a1) >> 4;
    }

    v9 = 1;
    do
    {
      v10 = 0;
      v11 = (a1 + 16 * v4++);
      v12 = 1;
      do
      {
        v13 = v11[v10];
        v14 = a3[v10];
        v15 = vabdd_f64(v13, v14);
        v16 = v15 <= fabs(v13 + v14) * 2.22044605e-16 * 100.0 || v15 <= 2.22507386e-308;
        if ((v12 & 1) == 0)
        {
          break;
        }

        v12 = 0;
        v10 = 1;
      }

      while (v16);
      v17 = v4 == v5 ? 0 : v4;
      if (v16)
      {
        break;
      }

      v18 = (a1 + 16 * v17);
      v19 = v11[1];
      v20 = v18[1];
      if (v19 == v20 && v19 == v6)
      {
        v22 = *v18;
        if (*v11 <= v7 && v22 >= v7)
        {
          break;
        }

        if (*v11 >= v7 && v22 <= v7)
        {
          break;
        }
      }

      v25 = v19 > v6 || v20 <= v6;
      if (!v25 || (v20 <= v6 ? (v26 = v19 <= v6) : (v26 = 1), !v26))
      {
        v27 = *v11;
        if (*v11 != *v18)
        {
          v27 = v27 + (v6 - v19) / ((v20 - v19) / (*v18 - v27));
        }

        v28 = vabdd_f64(v7, v27);
        v29 = fabs(v27 + v7) * 2.22044605e-16 * 100.0;
        if (v28 < 2.22507386e-308 || v28 <= v29)
        {
          break;
        }

        if (v27 < v7)
        {
          ++v3;
        }
      }

      v9 = v4 < v5;
    }

    while (v4 != v8);
    v31 = v9 | v3;
  }

  return v31 & 1;
}

float static GEOPolylineCoordinate.... infix(_:_:)(unsigned int a1, unsigned int a2, float a3, float a4)
{
  v5 = a2 | (LODWORD(a4) << 32);
  if (GEOPolylineCoordinateIsInvalid(a1 | (LODWORD(a3) << 32)))
  {
    v6 = -1.0;
  }

  else
  {
    v6 = a3 - floorf(a3);
  }

  GEOPolylineCoordinateIsInvalid(v5);
  return v6;
}

id GEOGetFormatStyleParserLog()
{
  if (GEOGetFormatStyleParserLog_onceToken != -1)
  {
    dispatch_once(&GEOGetFormatStyleParserLog_onceToken, &__block_literal_global_55);
  }

  v1 = GEOGetFormatStyleParserLog_log;

  return v1;
}

uint64_t AddXPCValue(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v13 = a1;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __AddXPCValue_block_invoke;
  v24[3] = &unk_1E704E4E8;
  v17 = v13;
  v29 = &v32;
  v30 = a3;
  v25 = v17;
  v18 = v14;
  v26 = v18;
  v31 = a5;
  v19 = v15;
  v27 = v19;
  v20 = v16;
  v28 = v20;
  v21 = [v17 executeStatement:@"AddXPCValue" statementBlock:v24];
  if (a2)
  {
    v22 = v33[5];
    if (v22)
    {
      *a2 = v22;
    }
  }

  _Block_object_dispose(&v32, 8);
  return v21;
}

void sub_18679F820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AddXPCValue_block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[4];
  v5 = a1[9];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [v4 bindInt64Parameter:"@rowid" toValue:v5 inStatement:a2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (!v7)
  {
    return 0;
  }

  v8 = a1[4];
  v9 = a1[5];
  v10 = *(a1[8] + 8);
  v28 = *(v10 + 40);
  v11 = [v8 bindTextParameter:"@key" toValue:v9 inStatement:a2 error:&v28];
  objc_storeStrong((v10 + 40), v28);
  if (!v11)
  {
    return 0;
  }

  v12 = a1[4];
  v13 = a1[10];
  v14 = *(a1[8] + 8);
  v27 = *(v14 + 40);
  v15 = [v12 bindInt64Parameter:"@parent" toValue:v13 inStatement:a2 error:&v27];
  objc_storeStrong((v14 + 40), v27);
  if (!v15)
  {
    return 0;
  }

  v16 = a1[4];
  v17 = a1[6];
  v18 = *(a1[8] + 8);
  v26 = *(v18 + 40);
  v19 = [v16 bindTextParameter:"@type" toValue:v17 inStatement:a2 error:&v26];
  objc_storeStrong((v18 + 40), v26);
  if (!v19)
  {
    return 0;
  }

  v20 = a1[4];
  v21 = a1[7];
  v22 = *(a1[8] + 8);
  v25 = *(v22 + 40);
  v23 = [v20 bindTextParameter:"@value" toValue:v21 inStatement:a2 error:&v25];
  objc_storeStrong((v22 + 40), v25);
  return v23;
}

void std::vector<addr_obj::venue::Formatter>::__destroy_vector::operator()[abi:ne200100](void ****a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<addr_obj::venue::Template>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void ****std::unique_ptr<addr_obj::venue::Formatters>::~unique_ptr[abi:ne200100](void ****a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = v2;
    std::vector<addr_obj::venue::Formatter>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x18CFD1E40](v2, 0x20C40960023A9);
  }

  return a1;
}

void addr_obj::VenueInfo::~VenueInfo(void ****this)
{
  std::unique_ptr<addr_obj::venue::Formatters>::~unique_ptr[abi:ne200100](this + 3);
  v2 = this;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::allocator_traits<std::allocator<addr_obj::venue::Template>>::destroy[abi:ne200100]<addr_obj::venue::Template,0>(uint64_t a1, uint64_t a2)
{
  v6 = (a2 + 72);
  std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](&v6);
  v3 = *(a2 + 48);
  if (v3)
  {
    *(a2 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    *(a2 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v5;
    operator delete(v5);
  }
}

void std::vector<addr_obj::venue::Template>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<addr_obj::venue::Template>>::destroy[abi:ne200100]<addr_obj::venue::Template,0>(a1, i))
  {
    i -= 96;
  }

  *(a1 + 8) = a2;
}

void std::vector<addr_obj::venue::Decorator>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<addr_obj::venue::Decorator>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<addr_obj::venue::Decorator>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
      }

      if (*(v3 - 25) < 0)
      {
        operator delete(*(v3 - 6));
      }

      if (*(v3 - 49) < 0)
      {
        operator delete(*(v3 - 9));
      }

      v4 = v3 - 12;
      if (*(v3 - 73) < 0)
      {
        operator delete(*v4);
      }

      v3 -= 12;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

void std::vector<addr_obj::venue::Template>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<addr_obj::venue::Template>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

char *google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(google::protobuf::io::EpsCopyOutputStream *this, int a2, const void **a3, unsigned __int8 *a4)
{
  v4 = a4;
  v6 = *(a3 + 23);
  v7 = 8 * a2;
  v8 = v6;
  if (v6 < 0 && (v8 = a3[1], v8 >= 128))
  {
    v9 = *this;
  }

  else
  {
    v9 = *this;
    if (v7 >= 0x80)
    {
      v11 = 2;
      v12 = 3;
      v13 = 4;
      if (v7 >> 28)
      {
        v13 = 5;
      }

      if (v7 >= 0x200000)
      {
        v12 = v13;
      }

      if (v7 >= 0x4000)
      {
        v11 = v12;
      }

      if ((v9 + ~&a4[v11] + 16) >= v8)
      {
        *a4 = v7 | 0x82;
        v14 = v7 >> 7;
        if (v7 >> 14)
        {
          v15 = a4 + 1;
          do
          {
            v16 = v15;
            *v15++ = v14 | 0x80;
            v17 = v14 >> 7;
            v18 = v14 >> 14;
            v14 >>= 7;
          }

          while (v18);
          v10 = v16 + 2;
          *v15 = v17;
        }

        else
        {
          a4[1] = v14;
          v10 = a4 + 2;
        }

LABEL_18:
        *v10 = v8;
        v19 = (v10 + 1);
        if (*(a3 + 23) >= 0)
        {
          v20 = a3;
        }

        else
        {
          v20 = *a3;
        }

        memcpy(v19, v20, v8);
        return &v19[v8];
      }
    }

    else if ((v9 - a4 + 14) >= v8)
    {
      *a4 = v7 | 2;
      v10 = a4 + 1;
      goto LABEL_18;
    }
  }

  if (v9 <= a4)
  {
    v40 = a3;
    v41 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a4);
    a3 = v40;
    v4 = v41;
    LOBYTE(v6) = *(a3 + 23);
  }

  if ((v6 & 0x80u) == 0)
  {
    v23 = v6;
  }

  else
  {
    v23 = a3[1];
  }

  if (v7 > 0x7F)
  {
    *v4 = v7 | 0x82;
    v25 = v7 >> 7;
    if (v7 >> 14)
    {
      v26 = v4 + 1;
      do
      {
        v27 = v26;
        *v26++ = v25 | 0x80;
        v28 = v25 >> 7;
        v29 = v25 >> 14;
        v25 >>= 7;
      }

      while (v29);
      v24 = v27 + 2;
      *v26 = v28;
    }

    else
    {
      v4[1] = v25;
      v24 = v4 + 2;
    }
  }

  else
  {
    *v4 = v7 | 2;
    v24 = v4 + 1;
  }

  if (v23 >= 0x80)
  {
    v38 = v23;
    do
    {
      *v24++ = v38 | 0x80;
      v30 = v38 >> 7;
      v39 = v38 >> 14;
      v38 >>= 7;
    }

    while (v39);
  }

  else
  {
    LOBYTE(v30) = v23;
  }

  *v24 = v30;
  v31 = v24 + 1;
  if (*(a3 + 23) >= 0)
  {
    v32 = a3;
  }

  else
  {
    v32 = *a3;
  }

  if (*(this + 57) == 1)
  {
    v33 = *this - v31;
    if (v33 + 16 <= v23)
    {
      v21 = google::protobuf::io::EpsCopyOutputStream::Trim(this, v31);
      if (((*(**(this + 6) + 40))(*(this + 6), v32, v23) & 1) == 0)
      {
        *(this + 56) = 1;
        v21 = this + 16;
        *this = this + 32;
      }

      return v21;
    }

    if (v33 >= v23)
    {
      v34 = v31;
      v35 = v32;
      v36 = v23;
      v37 = v23;
LABEL_47:
      memcpy(v34, v35, v37);
      return &v31[v36];
    }
  }

  else if (*this - v31 >= v23)
  {
    v36 = v23;
    v34 = v31;
    v35 = v32;
    v37 = v23;
    goto LABEL_47;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(this, v32, v23, v31);
}

void google::protobuf::GeneratedCodeInfo_Annotation::~GeneratedCodeInfo_Annotation(google::protobuf::GeneratedCodeInfo_Annotation *this)
{
  v2 = *(this + 6);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x18CFD1E40](v2, 0x1012C40EC159624);
  }

  google::protobuf::internal::InternalMetadata::Delete<google::protobuf::UnknownFieldSet>(*(this + 1));
  if (*(this + 7) >= 1)
  {
    v3 = *(this + 4);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }
}

uint64_t google::protobuf::internal::InternalMetadata::Delete<google::protobuf::UnknownFieldSet>(uint64_t result)
{
  if (result)
  {
    v1 = result & 0xFFFFFFFFFFFFFFFELL;
    if (!*(result & 0xFFFFFFFFFFFFFFFELL) && v1 != 0)
    {
      v3 = *(v1 + 8);
      if (v3 != *(v1 + 16))
      {
        google::protobuf::UnknownFieldSet::ClearFallback((v1 + 8));
        v3 = *(v1 + 8);
      }

      if (v3)
      {
        *(v1 + 16) = v3;
        operator delete(v3);
      }

      JUMPOUT(0x18CFD1E40);
    }
  }

  return result;
}

maps::path_codec::geo3::RiceEncodedIntegers *maps::path_codec::geo3::RiceEncodedIntegers::RiceEncodedIntegers(maps::path_codec::geo3::RiceEncodedIntegers *this, google::protobuf::Arena *a2)
{
  return maps::path_codec::geo3::RiceEncodedIntegers::RiceEncodedIntegers(this, 0);
}

{
  *this = &unk_1EF7F2750;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = a2;
  if (atomic_load_explicit(scc_info_RiceEncodedIntegers_compressed_5fpath_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_RiceEncodedIntegers_compressed_5fpath_2eproto);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 7) = 0;
  return this;
}

uint64_t *google::protobuf::internal::ArenaStringPtr::ClearToEmpty(uint64_t *this)
{
  if (this != &google::protobuf::internal::fixed_address_empty_string)
  {
    v1 = this & 0xFFFFFFFFFFFFFFFELL;
    if (*((this & 0xFFFFFFFFFFFFFFFELL) + 23) < 0)
    {
      **v1 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      *v1 = 0;
      *(v1 + 23) = 0;
    }
  }

  return this;
}

void sub_1867A1120(_Unwind_Exception *exception_object)
{
  if (*(v1 + 28) >= 1)
  {
    v3 = *(v1 + 32);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *google::protobuf::internal::ArenaStringPtr::Mutable(uint64_t **a1, google::protobuf::internal::ArenaImpl *this)
{
  result = *a1;
  if (result == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (!this)
    {
      operator new();
    }

    if (*(this + 24))
    {
      v4 = this;
      this = v4;
    }

    result = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    *a1 = result;
  }

  return result;
}

void *maps::path_codec::BitStream::BitStream(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 0;
  return result;
}

void maps::path_codec::BitStream::reserve(std::string **this, std::string::size_type a2)
{
  std::string::reserve(*this, a2);
  v4 = *this;
  size = SHIBYTE((*this)->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = v4->__r_.__value_.__l.__size_;
  }

  if (size <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = size;
  }

  std::string::resize(v4, v6, 0);
}

void maps::path_codec::BitStream::write(maps::path_codec::BitStream *this, int a2, int a3)
{
  v4 = a2;
  v6 = *(this + 2);
  v7 = (a2 + v6 + 7) >> 3;
  v8 = *this;
  v9 = *(v8 + 23);
  if ((v9 & 0x8000000000000000) != 0)
  {
    v9 = *(v8 + 8);
  }

  if (v9 < v7)
  {
    std::string::resize(v8, v7, 0);
    v6 = *(this + 2);
  }

  v10 = v6 & 7;
  v11 = 1 << (v4 - 1);
  v12 = *(this + 3);
  do
  {
    v13 = *this;
    if (*(*this + 23) < 0)
    {
      v13 = *v13;
    }

    *(v13 + v12) |= ((v11 & a3) != 0) << v10;
    v12 = *(this + 3);
    v14 = *(this + 2) + 1;
    v10 = v14 & 7;
    if ((v14 & 7) == 0)
    {
      ++v12;
    }

    *(this + 2) = v14;
    *(this + 3) = v12;
    v15 = v11 >= 2;
    v11 >>= 1;
  }

  while (v15);
}

void google::protobuf::RepeatedField<int>::Reserve(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

LABEL_10:
      v7 = 2 * v2;
      if (v7 <= a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = v7;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 8);
  if (a2 >= 4)
  {
    if (v2 > 0x3FFFFFFF)
    {
      v6 = 0x7FFFFFFF;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

LABEL_6:
  v6 = 4;
LABEL_13:
  v8 = 4 * v6;
  if (v4)
  {
    v9 = v8 + 15;
    if (*(v4 + 24))
    {
      (*(**(*(v4 + 32) + 32) + 40))(*(*(v4 + 32) + 32), MEMORY[0x1E69E5450], v9 & 0x3FFFFFFF8);
    }

    AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v4, v9 & 0x3FFFFFFF8);
  }

  else
  {
    AlignedNoHook = operator new(v8 + 8);
  }

  *AlignedNoHook = v4;
  v11 = AlignedNoHook + 1;
  a1[1] = v6;
  *(a1 + 1) = v11;
  v12 = *a1;
  if (v12 >= 1)
  {
    memcpy(v11, v5 + 1, 4 * v12);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

void maps::path_codec::BitStream::write_rice(maps::path_codec::BitStream *this, int a2, unsigned int a3)
{
  v6 = a3 >> a2;
  v7 = a3 >> a2;
  if (a3 >> a2 < 0x21)
  {
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    do
    {
      maps::path_codec::BitStream::write(this, 32, -1);
      v7 -= 32;
    }

    while (v7 > 0x20);
  }

  maps::path_codec::BitStream::write(this, v7, 0xFFFFFFFF >> -v7);
LABEL_6:
  maps::path_codec::BitStream::write(this, 1, 0);

  maps::path_codec::BitStream::write(this, a2, a3 - (v6 << a2));
}

void maps::path_codec::BitStream::finalize(std::string **this)
{
  std::string::resize(*this, (*(this + 2) + 7) >> 3, 0);
  v2 = *this;
  if (SHIBYTE((*this)->__r_.__value_.__r.__words[2]) < 0)
  {
    size = v2->__r_.__value_.__l.__size_;
    v9 = size | 7;
    if ((size | 7) == 0x17)
    {
      v9 = 24;
    }

    if (size <= 0x16)
    {
      v7 = 22;
    }

    else
    {
      v7 = v9;
    }

    v6 = (v2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v3 = HIBYTE((*this)->__r_.__value_.__r.__words[2]);
    v4 = v3 | 7;
    if ((v3 | 7) == 0x17)
    {
      v4 = 24;
    }

    v5 = v3 > 0x16;
    v6 = 22;
    if (v5)
    {
      v7 = v4;
    }

    else
    {
      v7 = 22;
    }
  }

  if (v7 != v6)
  {
    std::string::__shrink_or_extend[abi:ne200100](v2, v7);
  }
}

BOOL google::protobuf::MessageLite::SerializeToString(uint64_t a1, std::string *a2)
{
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    *a2->__r_.__value_.__l.__data_ = 0;
    a2->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    a2->__r_.__value_.__s.__data_[0] = 0;
    *(&a2->__r_.__value_.__s + 23) = 0;
  }

  return google::protobuf::MessageLite::AppendPartialToString(a1, a2);
}

BOOL google::protobuf::MessageLite::AppendPartialToString(uint64_t a1, std::string *a2)
{
  v2 = a2;
  v21 = *MEMORY[0x1E69E9840];
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v5 = (*(*a1 + 72))(a1);
  v6 = v5;
  v7 = v5 >> 31;
  if (v5 >> 31)
  {
    v13 = 2;
    v14 = "/Library/Caches/com.apple.xbs/Sources/GeoServices/libprotobuf/src/google/protobuf/message_lite.cc";
    v15 = 457;
    memset(&v16, 0, sizeof(v16));
    (*(*a1 + 16))(__p, a1);
    if ((v12 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = __p[1];
    }

    std::string::append(&v16, v8, v9);
    std::string::append(&v16, " exceeded maximum protobuf size of 2GB: ");
    snprintf(__str, 0x80uLL, "%lu", v6);
    v20 = 0;
    std::string::append(&v16, __str);
    google::protobuf::internal::LogFinisher::operator=(&v13);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::string::resize(v2, v5 + size, 0);
    if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
    {
      v2 = v2->__r_.__value_.__r.__words[0];
    }

    *__str = v2 + size + v6;
    v18 = 0;
    v19[0] = 0;
    *(v19 + 7) = 0;
    (*(*a1 + 96))(a1);
  }

  return v7 == 0;
}

void sub_1867A18BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

const InternalMetadata *maps::path_codec::geo3::RiceEncodedIntegers::ByteSizeLong(maps::path_codec::geo3::RiceEncodedIntegers *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v4 = *(this + 6);
  if (v4 < 1)
  {
    v5 = 0;
LABEL_8:
    v9 = 0;
    v8 = 0;
    goto LABEL_11;
  }

  v5 = 0;
  v6 = *(this + 4);
  do
  {
    v7 = *v6++;
    v5 += (9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6;
    --v4;
  }

  while (v4);
  if (!v5)
  {
    goto LABEL_8;
  }

  if ((v5 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else
  {
    v8 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v9 = v5;
LABEL_11:
  *(this + 10) = v9;
  v10 = (v8 + v5);
  v11 = *(this + 4);
  if ((v11 & 7) == 0)
  {
    goto LABEL_24;
  }

  if (v11)
  {
    v12 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v10 = (v10 + v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1);
    if ((v11 & 2) == 0)
    {
LABEL_14:
      if ((v11 & 4) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_14;
  }

  v10 = (v10 + ((9 * (__clz((2 * *(this + 14)) ^ (*(this + 14) >> 31) | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v11 & 4) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v15 = *(this + 15);
  if (v15 < 0)
  {
    v16 = 11;
  }

  else
  {
    v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v10 = (v10 + v16);
LABEL_24:
  if (*(this + 1))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize(*(this + 1), v10, this + 5, a4);
  }

  *(this + 5) = v10;
  return v10;
}

const google::protobuf::UnknownFieldSet *maps::path_codec::geo3::RiceEncodedIntegers::_InternalSerialize(maps::path_codec::geo3::RiceEncodedIntegers *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) == 0)
  {
LABEL_9:
    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (*a3 <= a2)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 14);
  *v4 = 8;
  v8 = (2 * v7) ^ (v7 >> 31);
  if (v8 <= 0x7F)
  {
    v4[1] = v8;
    v4 += 2;
    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v4);
    goto LABEL_11;
  }

  v4[1] = v8 | 0x80;
  v9 = v8 >> 7;
  if (!(v8 >> 14))
  {
    v4[2] = v9;
    v4 += 3;
    goto LABEL_9;
  }

  v23 = v4 + 2;
  do
  {
    v24 = v23;
    *v23++ = v9 | 0x80;
    v25 = v9 >> 7;
    v26 = v9 >> 14;
    v9 >>= 7;
  }

  while (v26);
  v4 = v24 + 2;
  *v23 = v25;
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_11:
  v10 = *(this + 10);
  if (v10 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    *v4 = 26;
    v11 = v4 + 1;
    if (v10 >= 0x80)
    {
      do
      {
        *v11++ = v10 | 0x80;
        v33 = v10 >> 14;
        v10 >>= 7;
      }

      while (v33);
      v4 = v11 - 1;
    }

    v4 += 2;
    *v11 = v10;
    v12 = *(this + 4);
    v13 = &v12[*(this + 6)];
    do
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v15 = *v12++;
      v14 = v15;
      if (v15 > 0x7F)
      {
        *v4 = v14 | 0x80;
        v16 = v14 >> 7;
        if (v14 >> 14)
        {
          v17 = v4 + 1;
          do
          {
            v18 = v17;
            *v17++ = v16 | 0x80;
            v19 = v16 >> 7;
            v20 = v16 >> 14;
            v16 >>= 7;
          }

          while (v20);
          v4 = v18 + 2;
          *v17 = v19;
        }

        else
        {
          v4[1] = v16;
          v4 += 2;
        }
      }

      else
      {
        *v4++ = v14;
      }
    }

    while (v12 < v13);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v21 = *(this + 15);
    *v4 = 32;
    if (v21 > 0x7F)
    {
      v4[1] = v21 | 0x80;
      v22 = v21 >> 7;
      if (v21 >> 14)
      {
        v27 = v4 + 2;
        do
        {
          v28 = v27;
          *v27++ = v22 | 0x80;
          v29 = v22 >> 7;
          v30 = v22 >> 14;
          v22 >>= 7;
        }

        while (v30);
        v4 = v28 + 2;
        *v27 = v29;
      }

      else
      {
        v4[2] = v22;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v21;
      v4 += 2;
    }
  }

  v31 = *(this + 1);
  if ((v31 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v31 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

void std::string::__shrink_or_extend[abi:ne200100](void *__dst, unint64_t a2)
{
  v3 = *(__dst + 23);
  if (v3 < 0)
  {
    v3 = __dst[1];
    v6 = __dst[2];
    v4 = (v6 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v5 = HIBYTE(v6);
  }

  else
  {
    v4 = 22;
    LOBYTE(v5) = *(__dst + 23);
  }

  v7 = a2 < 0x17;
  if (a2 >= 0x17)
  {
    if (v4 < a2)
    {
      operator new();
    }

    operator new();
  }

  v8 = *__dst;
  if ((v5 & 0x80) != 0)
  {
    v5 = __dst[1];
    v7 = 1;
  }

  else
  {
    v5 = v5;
  }

  if (v5 != -1)
  {
    memmove(__dst, v8, v5 + 1);
  }

  if (v7)
  {
    operator delete(v8);
  }

  *(__dst + 23) = v3 & 0x7F;
}

void sub_1867A1F1C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void *GEOETATrafficUpdateRequestClearSensitiveFields(id *a1, uint64_t a2, int a3)
{
  if (a3 && [a1 hasCurrentUserLocation] && (objc_msgSend(a1, "currentUserLocation"), v6 = objc_claimAutoreleasedReturnValue(), HasSensitiveFields = GEOLocationHasSensitiveFields(v6), v6, HasSensitiveFields))
  {
    v8 = [a1 currentUserLocation];
    v9 = [v8 copy];

    GEOLocationClearSensitiveFields(v9);
    [a1 setCurrentUserLocation:v9];
  }

  else
  {
    v9 = [a1 currentUserLocation];
    [v9 clearSensitiveFields:a2];
  }

  [(GEOETATrafficUpdateRequest *)a1 _readDestinationWaypointTypeds];
  if ([a1[11] count])
  {
    v10 = 0;
    do
    {
      v11 = [a1[11] objectAtIndexedSubscript:v10];
      v12 = v11;
      if (a3 && GEOWaypointTypedHasSensitiveFields(v11))
      {
        v13 = [v12 copy];
        v14 = [v13 waypointLocation];
        [v14 clearSensitiveFields:a2];

        [a1[11] replaceObjectAtIndex:v10 withObject:v13];
      }

      else
      {
        [v12 clearSensitiveFields:a2];
      }

      ++v10;
    }

    while (v10 < [a1[11] count]);
  }

  [(GEOETATrafficUpdateRequest *)a1 _readWaypointTypeds];
  if ([a1[32] count])
  {
    v15 = 0;
    do
    {
      v16 = [a1[32] objectAtIndexedSubscript:v15];
      v17 = v16;
      if (a3 && GEOWaypointTypedHasSensitiveFields(v16))
      {
        v18 = [v17 copy];
        v19 = [v18 waypointLocation];
        [v19 clearSensitiveFields:a2];

        [a1[32] replaceObjectAtIndex:v15 withObject:v18];
      }

      else
      {
        [v17 clearSensitiveFields:a2];
      }

      ++v15;
    }

    while (v15 < [a1[32] count]);
  }

  if ((a3 & 1) != 0 && [a1 hasTripOrigin] && (objc_msgSend(a1, "tripOrigin"), v20 = objc_claimAutoreleasedReturnValue(), v21 = GEOLocationHasSensitiveFields(v20), v20, v21))
  {
    v22 = [a1 tripOrigin];
    v23 = [v22 copy];

    GEOLocationClearSensitiveFields(v23);
    [a1 setTripOrigin:v23];
  }

  else
  {
    v23 = [a1 tripOrigin];
    [v23 clearSensitiveFields:a2];
  }

  [(GEOETATrafficUpdateRequest *)a1 _readUserIncidentReports];
  result = [a1[30] count];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v26 = [a1[30] objectAtIndexedSubscript:i];
      v27 = v26;
      if (a3 && GEOUserIncidentReportHasSensitiveFields(v26))
      {
        v28 = [v27 copy];
        v29 = [v28 userLocation];
        [v29 clearSensitiveFields:a2];

        [a1[30] replaceObjectAtIndex:i withObject:v28];
      }

      else
      {
        [v27 clearSensitiveFields:a2];
      }

      result = [a1[30] count];
    }
  }

  return result;
}

void addr_obj::V1AddressObject::getDisplayLocality(std::string *__return_ptr a1@<X8>, addr_obj::V1AddressObject *this@<X0>, char a3@<W1>)
{
  addr_obj::V1AddressObject::getLocalities(&v4, this, a3);
  *a1 = v4;
  memset(&v4, 0, sizeof(v4));
  if (v6 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }
  }
}

void addr_obj::V1AddressObject::getLocalities(std::string *__return_ptr a1@<X8>, addr_obj::V1AddressObject *this@<X0>, char a3@<W1>)
{
  if ((*(this + 328) & 2) != 0)
  {
    v5 = this;
    v6 = *(this + 39);
    if (!v6)
    {
      this = addr_obj::geo3::Address::default_instance_(this);
      v6 = *(this + 5);
    }

    if ((*(v6 + 244) & 0x20) != 0)
    {
      v7 = *(v5 + 39);
      if (!v7)
      {
        this = addr_obj::geo3::Address::default_instance_(this);
        v7 = *(this + 5);
      }

      v8 = *(v7 + 56);
      if ((*(v8 + 23) & 0x8000000000000000) != 0)
      {
        if (*(v8 + 8))
        {
LABEL_9:
          v9 = addr_obj::Debugging::addChar(this);
          v10 = *(v5 + 39);
          if (!v9)
          {
            goto LABEL_18;
          }

          if (!v10)
          {
            v9 = addr_obj::geo3::Address::default_instance_(v9);
            v10 = *(v9 + 5);
          }

          v11 = *(v10 + 56);
          v12 = *(v11 + 23);
          if (v12 < 0)
          {
            v12 = *(v11 + 8);
          }

          v10 = *(v5 + 39);
          if (v12)
          {
            if (!v10)
            {
              addr_obj::geo3::Address::default_instance_(v9);
            }

            std::operator+<char>();
            v13 = std::string::append(&v43, "]");
            v14 = *&v13->__r_.__value_.__l.__data_;
            v44.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
            *&v44.__r_.__value_.__l.__data_ = v14;
            v13->__r_.__value_.__l.__size_ = 0;
            v13->__r_.__value_.__r.__words[2] = 0;
            v13->__r_.__value_.__r.__words[0] = 0;
            v15 = 1;
          }

          else
          {
LABEL_18:
            if (!v10)
            {
              v10 = *(addr_obj::geo3::Address::default_instance_(v9) + 40);
            }

            v16 = *(v10 + 56);
            if (*(v16 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v44, *v16, *(v16 + 1));
              v15 = 0;
            }

            else
            {
              v15 = 0;
              v17 = *v16;
              v44.__r_.__value_.__r.__words[2] = *(v16 + 2);
              *&v44.__r_.__value_.__l.__data_ = v17;
            }
          }

          std::pair<std::string,std::string>::pair[abi:ne200100]<std::string const,std::string const&,0>(a1, &v44, *(v5 + 55));
LABEL_76:
          if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v44.__r_.__value_.__l.__data_);
          }

          if (v15)
          {
            if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v43.__r_.__value_.__l.__data_);
            }
          }

          return;
        }
      }

      else if (*(v8 + 23))
      {
        goto LABEL_9;
      }
    }

    if (a3)
    {
      v18 = *(v5 + 39);
      v19 = v18;
      if (!v18)
      {
        this = addr_obj::geo3::Address::default_instance_(this);
        v19 = *(this + 5);
        v18 = *(v5 + 39);
      }

      if ((*(v19 + 244) & 4) != 0)
      {
        if (!v18)
        {
          this = addr_obj::geo3::Address::default_instance_(this);
          v18 = *(this + 5);
        }

        v20 = *(v18 + 32);
        v21 = *(v20 + 23);
        if (v21 < 0)
        {
          v21 = *(v20 + 8);
        }

        if (v21)
        {
          v22 = addr_obj::Debugging::addChar(this);
          v23 = *(v5 + 39);
          if (!v22)
          {
            goto LABEL_43;
          }

          if (!v23)
          {
            v22 = addr_obj::geo3::Address::default_instance_(v22);
            v23 = *(v22 + 5);
          }

          v24 = *(v23 + 32);
          v25 = *(v24 + 23);
          if (v25 < 0)
          {
            v25 = *(v24 + 8);
          }

          v23 = *(v5 + 39);
          if (v25)
          {
            if (!v23)
            {
              addr_obj::geo3::Address::default_instance_(v22);
            }

            std::operator+<char>();
            v26 = std::string::append(&v43, "]");
            v27 = *&v26->__r_.__value_.__l.__data_;
            v44.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
            *&v44.__r_.__value_.__l.__data_ = v27;
            v26->__r_.__value_.__l.__size_ = 0;
            v26->__r_.__value_.__r.__words[2] = 0;
            v26->__r_.__value_.__r.__words[0] = 0;
            v15 = 1;
          }

          else
          {
LABEL_43:
            if (!v23)
            {
              v23 = *(addr_obj::geo3::Address::default_instance_(v22) + 40);
            }

            v28 = *(v23 + 32);
            if (*(v28 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v44, *v28, *(v28 + 1));
              v15 = 0;
            }

            else
            {
              v15 = 0;
              v29 = *v28;
              v44.__r_.__value_.__r.__words[2] = *(v28 + 2);
              *&v44.__r_.__value_.__l.__data_ = v29;
            }
          }

          std::pair<std::string,std::string>::pair[abi:ne200100]<std::string const,std::string const&,0>(a1, &v44, *(v5 + 52));
          goto LABEL_76;
        }

        v18 = *(v5 + 39);
      }

      if (!v18)
      {
        this = addr_obj::geo3::Address::default_instance_(this);
        v18 = *(this + 5);
      }

      if (*(v18 + 244))
      {
        v30 = *(v5 + 39);
        if (!v30)
        {
          this = addr_obj::geo3::Address::default_instance_(this);
          v30 = *(this + 5);
        }

        v31 = *(v30 + 16);
        v32 = *(v31 + 23);
        if (v32 < 0)
        {
          v32 = *(v31 + 8);
        }

        if (v32)
        {
          v33 = addr_obj::Debugging::addChar(this);
          v34 = *(v5 + 39);
          if (!v33)
          {
            goto LABEL_68;
          }

          if (!v34)
          {
            v33 = addr_obj::geo3::Address::default_instance_(v33);
            v34 = *(v33 + 5);
          }

          v35 = *(v34 + 16);
          v36 = *(v35 + 23);
          if (v36 < 0)
          {
            v36 = *(v35 + 8);
          }

          v34 = *(v5 + 39);
          if (v36)
          {
            if (!v34)
            {
              addr_obj::geo3::Address::default_instance_(v33);
            }

            std::operator+<char>();
            v37 = std::string::append(&v43, "]");
            v38 = *&v37->__r_.__value_.__l.__data_;
            v44.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
            *&v44.__r_.__value_.__l.__data_ = v38;
            v37->__r_.__value_.__l.__size_ = 0;
            v37->__r_.__value_.__r.__words[2] = 0;
            v37->__r_.__value_.__r.__words[0] = 0;
            v15 = 1;
          }

          else
          {
LABEL_68:
            if (!v34)
            {
              v34 = *(addr_obj::geo3::Address::default_instance_(v33) + 40);
            }

            v41 = *(v34 + 16);
            if (*(v41 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v44, *v41, *(v41 + 1));
              v15 = 0;
            }

            else
            {
              v15 = 0;
              v42 = *v41;
              v44.__r_.__value_.__r.__words[2] = *(v41 + 2);
              *&v44.__r_.__value_.__l.__data_ = v42;
            }
          }

          std::pair<std::string,std::string>::pair[abi:ne200100]<std::string const,std::string const&,0>(a1, &v44, *(v5 + 50));
          goto LABEL_76;
        }
      }
    }
  }

  v39 = addr_obj::emptyString(this);
  v40 = addr_obj::emptyString(v39);

  std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(a1, v39, v40);
}

void sub_1867A30C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<std::string const,std::string const&,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_1867A31A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void addr_obj::V1AddressObject::getCountryCode(addr_obj::V1AddressObject *this@<X0>, uint64_t *x8_0@<X8>)
{
  v4 = *(this + 39);
  if (!v4)
  {
    v4 = *(addr_obj::geo3::Address::default_instance_(0) + 40);
  }

  addr_obj::getCountryCode(x8_0, v4);
}

void addr_obj::cleanCountryCode(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  addr_obj::Debugging::stripDebug(a2, a1);
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    if (v7 > 1)
    {
      v5 = &v6[v7];
LABEL_7:
      while (v6 != v5)
      {
        *v6 = __toupper(*v6);
        ++v6;
      }

      return;
    }

    operator delete(*a1);
  }

  else if (v4 >= 2)
  {
    v5 = (a1 + v4);
    v6 = a1;
    goto LABEL_7;
  }

  addr_obj::emptyString(v3);
  if (byte_1EA905397 < 0)
  {
    std::string::__init_copy_ctor_external(a1, xmmword_1EA905380, *(&xmmword_1EA905380 + 1));
  }

  else
  {
    *a1 = xmmword_1EA905380;
    *(a1 + 16) = unk_1EA905390;
  }
}

void sub_1867A32C8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1867A3278);
}

void addr_obj::Debugging::stripDebug(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  v3 = *(a1 + 23);
  if (v3 < 0)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    if (!v3)
    {
      std::string::__init_copy_ctor_external(a2, v2, 0);
      return;
    }
  }

  else if (!*(a1 + 23))
  {
    *a2 = *a1;
    return;
  }

  v4 = &v2[v3];
  v5 = &v2[v3 - 1];
  if (v2 >= v5)
  {
    goto LABEL_26;
  }

  do
  {
    v6 = *v2;
    if (v6 <= 0x3D)
    {
      if (v6 == 33)
      {
        if (*v5 != 33)
        {
          break;
        }
      }

      else if (v6 == 40)
      {
        if (*v5 != 41)
        {
          break;
        }
      }

      else if (v6 != 60 || *v5 != 62)
      {
        break;
      }

      goto LABEL_24;
    }

    if (v6 == 62)
    {
      if (*v5 != 60)
      {
        break;
      }

      goto LABEL_24;
    }

    if (v6 == 91)
    {
      if (*v5 != 93)
      {
        break;
      }

      goto LABEL_24;
    }

    if (v6 != 123 || *v5 != 125)
    {
      break;
    }

LABEL_24:
    ++v2;
    --v5;
  }

  while (v2 < v5);
  v4 = v5 + 1;
LABEL_26:
  std::string::__init_with_size[abi:ne200100]<char *,char *>(a2, v2, v4, v4 - v2);
}

void addr_obj::Formatting::buildLegacyShortAddress(addr_obj *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>, uint64_t a5@<X3>)
{
  v7 = *(a2 + 23);
  v8 = *(a2 + 8);
  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  v10 = *(a3 + 23);
  if (!v9)
  {
    v8 = *(a3 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v21 = *(a3 + 23);
    }

    else
    {
      v21 = *(a3 + 8);
    }

    if (!v21)
    {
LABEL_77:
      v33 = addr_obj::emptyString(a1);
      if ((*(v33 + 23) & 0x80000000) == 0)
      {
        v34 = *v33;
        a4->__r_.__value_.__r.__words[2] = *(v33 + 2);
        *&a4->__r_.__value_.__l.__data_ = v34;
        return;
      }

      v35 = *v33;
      v8 = *(v33 + 1);
      goto LABEL_82;
    }

    if ((v10 & 0x80) == 0)
    {
      *&a4->__r_.__value_.__l.__data_ = *a3;
      v22 = *(a3 + 16);
LABEL_36:
      a4->__r_.__value_.__r.__words[2] = v22;
      return;
    }

    v35 = *a3;
LABEL_82:

    std::string::__init_copy_ctor_external(a4, v35, v8);
    return;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 8);
  }

  if (!v10)
  {
    if ((v7 & 0x80000000) == 0)
    {
      *&a4->__r_.__value_.__l.__data_ = *a2;
      v22 = *(a2 + 16);
      goto LABEL_36;
    }

    v35 = *a2;
    goto LABEL_82;
  }

  addr_obj::Localization::getDisplayLanguage(a1);
  a1 = sub_1867A39E4(v13, a5);
  if (v14 > 3)
  {
    if (v14 <= 5)
    {
      if (v14 == 4)
      {
        if (*(a3 + 23) >= 0)
        {
          v40 = *(a3 + 23);
        }

        else
        {
          v40 = *(a3 + 8);
        }

        p_p = &__p;
        std::string::basic_string[abi:ne200100](&__p, v40 + 5);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if (v40)
        {
          if (*(a3 + 23) >= 0)
          {
            v42 = a3;
          }

          else
          {
            v42 = *a3;
          }

          memmove(p_p, v42, v40);
        }

        v43 = p_p + v40;
        *v43 = -2132664276;
        *(v43 + 2) = 143;
        v44 = *(a2 + 23);
        if (v44 >= 0)
        {
          v19 = a2;
        }

        else
        {
          v19 = *a2;
        }

        if (v44 >= 0)
        {
          v20 = *(a2 + 23);
        }

        else
        {
          v20 = *(a2 + 8);
        }
      }

      else
      {
        if (*(a3 + 23) >= 0)
        {
          v23 = *(a3 + 23);
        }

        else
        {
          v23 = *(a3 + 8);
        }

        v24 = &__p;
        std::string::basic_string[abi:ne200100](&__p, v23 + 6);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v24 = __p.__r_.__value_.__r.__words[0];
        }

        if (v23)
        {
          if (*(a3 + 23) >= 0)
          {
            v25 = a3;
          }

          else
          {
            v25 = *a3;
          }

          memmove(v24, v25, v23);
        }

        v26 = v24 + v23;
        *(v26 + 2) = -28800;
        *v26 = -501183272;
        v26[6] = 0;
        v27 = *(a2 + 23);
        if (v27 >= 0)
        {
          v19 = a2;
        }

        else
        {
          v19 = *a2;
        }

        if (v27 >= 0)
        {
          v20 = *(a2 + 23);
        }

        else
        {
          v20 = *(a2 + 8);
        }
      }

      goto LABEL_149;
    }

    if (v14 == 6)
    {
      if (*(a2 + 23) >= 0)
      {
        v49 = *(a2 + 23);
      }

      else
      {
        v49 = *(a2 + 8);
      }

      v50 = &__p;
      std::string::basic_string[abi:ne200100](&__p, v49 + 5);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v50 = __p.__r_.__value_.__r.__words[0];
      }

      if (v49)
      {
        if (*(a2 + 23) >= 0)
        {
          v51 = a2;
        }

        else
        {
          v51 = *a2;
        }

        memmove(v50, v51, v49);
      }

      v52 = v50 + v49;
      *v52 = -2132664276;
      *(v52 + 2) = 143;
      v53 = *(a3 + 23);
      if (v53 >= 0)
      {
        v19 = a3;
      }

      else
      {
        v19 = *a3;
      }

      if (v53 >= 0)
      {
        v20 = *(a3 + 23);
      }

      else
      {
        v20 = *(a3 + 8);
      }

      goto LABEL_149;
    }

    if (v14 == 7)
    {
      if (*(a2 + 23) >= 0)
      {
        v28 = *(a2 + 23);
      }

      else
      {
        v28 = *(a2 + 8);
      }

      v29 = &__p;
      std::string::basic_string[abi:ne200100](&__p, v28 + 6);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      if (v28)
      {
        if (*(a2 + 23) >= 0)
        {
          v30 = a2;
        }

        else
        {
          v30 = *a2;
        }

        memmove(v29, v30, v28);
      }

      v31 = v29 + v28;
      *(v31 + 2) = -28800;
      *v31 = -501183272;
      v31[6] = 0;
      v32 = *(a3 + 23);
      if (v32 >= 0)
      {
        v19 = a3;
      }

      else
      {
        v19 = *a3;
      }

      if (v32 >= 0)
      {
        v20 = *(a3 + 23);
      }

      else
      {
        v20 = *(a3 + 8);
      }

      goto LABEL_149;
    }

    goto LABEL_77;
  }

  if (v14 <= 1)
  {
    if (!v14)
    {
      if (*(a2 + 23) >= 0)
      {
        v36 = *(a2 + 23);
      }

      else
      {
        v36 = *(a2 + 8);
      }

      v37 = &__p;
      std::string::basic_string[abi:ne200100](&__p, v36 + 1);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v37 = __p.__r_.__value_.__r.__words[0];
      }

      if (v36)
      {
        if (*(a2 + 23) >= 0)
        {
          v38 = a2;
        }

        else
        {
          v38 = *a2;
        }

        memmove(v37, v38, v36);
      }

      *(&v37->__r_.__value_.__l.__data_ + v36) = 32;
      v39 = *(a3 + 23);
      if (v39 >= 0)
      {
        v19 = a3;
      }

      else
      {
        v19 = *a3;
      }

      if (v39 >= 0)
      {
        v20 = *(a3 + 23);
      }

      else
      {
        v20 = *(a3 + 8);
      }

      goto LABEL_149;
    }

    if (v14 == 1)
    {
      if (*(a2 + 23) >= 0)
      {
        v15 = *(a2 + 23);
      }

      else
      {
        v15 = *(a2 + 8);
      }

      v16 = &__p;
      std::string::basic_string[abi:ne200100](&__p, v15 + 2);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v16 = __p.__r_.__value_.__r.__words[0];
      }

      if (v15)
      {
        if (*(a2 + 23) >= 0)
        {
          v17 = a2;
        }

        else
        {
          v17 = *a2;
        }

        memmove(v16, v17, v15);
      }

      strcpy(v16 + v15, ", ");
      v18 = *(a3 + 23);
      if (v18 >= 0)
      {
        v19 = a3;
      }

      else
      {
        v19 = *a3;
      }

      if (v18 >= 0)
      {
        v20 = *(a3 + 23);
      }

      else
      {
        v20 = *(a3 + 8);
      }

LABEL_149:
      v54 = std::string::append(&__p, v19, v20);
      v55 = *&v54->__r_.__value_.__l.__data_;
      a4->__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
      *&a4->__r_.__value_.__l.__data_ = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      return;
    }

    goto LABEL_77;
  }

  if (v14 == 2)
  {
    if (*(a3 + 23) >= 0)
    {
      v45 = *(a3 + 23);
    }

    else
    {
      v45 = *(a3 + 8);
    }

    v46 = &__p;
    std::string::basic_string[abi:ne200100](&__p, v45 + 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v46 = __p.__r_.__value_.__r.__words[0];
    }

    if (v45)
    {
      if (*(a3 + 23) >= 0)
      {
        v47 = a3;
      }

      else
      {
        v47 = *a3;
      }

      memmove(v46, v47, v45);
    }

    *(&v46->__r_.__value_.__l.__data_ + v45) = 32;
    v48 = *(a2 + 23);
    if (v48 >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    if (v48 >= 0)
    {
      v20 = *(a2 + 23);
    }

    else
    {
      v20 = *(a2 + 8);
    }

    goto LABEL_149;
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, a2, a4);
}

void sub_1867A39B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *sub_1867A39E4(char *a1, uint64_t a2)
{
  v40 = 0;
  v41 = 0;
  v42 = 0;
  addr_obj::Formatting::getLanguageCandidates(a1, &v40);
  v3 = v40;
  if (v40 != v41)
  {
    v4 = *(a2 + 23);
    v5 = *(a2 + 8);
    v6 = ", ";
    while (1)
    {
      while (1)
      {
        v7 = *(v3 + 23);
        if (*(v3 + 23) < 0)
        {
          break;
        }

        if (*(v3 + 23) <= 5u)
        {
          if (v7 != 2)
          {
            if (v7 != 5)
            {
              goto LABEL_342;
            }

            if (*v3 == 1734307429 && *(v3 + 4) == 98)
            {
              goto LABEL_349;
            }

            if (*v3 == 1667197050 && *(v3 + 4) == 110)
            {
              goto LABEL_348;
            }

            if (*v3 == 1751083130 && *(v3 + 4) == 107)
            {
              goto LABEL_348;
            }

            goto LABEL_61;
          }

          v15 = v3;
          if (*v3 == 28261)
          {
            goto LABEL_349;
          }

          goto LABEL_93;
        }

        if (v7 != 6)
        {
          if (v7 != 7)
          {
            goto LABEL_342;
          }

          if (*v3 == 1751083130 && *(v3 + 3) == 1936613736)
          {
            goto LABEL_348;
          }

LABEL_55:
          if (*v3 == 1751083130 && *(v3 + 3) == 1953390952)
          {
            goto LABEL_348;
          }

LABEL_59:
          v15 = v3;
          if (v7 != 2)
          {
            if (v7 != 5)
            {
              goto LABEL_102;
            }

            goto LABEL_61;
          }

          goto LABEL_93;
        }

LABEL_103:
        v25 = *v3 != 878670693 || *(v3 + 4) != 14641;
        v3 += 24;
        if (!v25 || v3 == v41)
        {
          goto LABEL_349;
        }
      }

      if (*(v3 + 8) == 2 && **v3 == 28261)
      {
        goto LABEL_349;
      }

      if (*(v3 + 8) == 5 && **v3 == 1734307429 && *(*v3 + 4) == 98)
      {
        goto LABEL_349;
      }

      if (*(v3 + 8) == 5 && **v3 == 1667197050 && *(*v3 + 4) == 110)
      {
LABEL_348:
        v6 = " ";
        goto LABEL_349;
      }

      if (*(v3 + 8) == 5)
      {
        if (**v3 == 1751083130 && *(*v3 + 4) == 107)
        {
          goto LABEL_348;
        }

        if ((v7 & 0x80) == 0)
        {
          goto LABEL_59;
        }
      }

      if (*(v3 + 8) != 7)
      {
        goto LABEL_74;
      }

      if (**v3 == 1751083130 && *(*v3 + 3) == 1936613736)
      {
        goto LABEL_348;
      }

      if ((v7 & 0x80) != 0)
      {
LABEL_74:
        if (*(v3 + 8) == 7 && **v3 == 1751083130 && *(*v3 + 3) == 1953390952)
        {
          goto LABEL_348;
        }

        if (*(v3 + 8) == 5)
        {
          if (**v3 == 1952409722 && *(*v3 + 4) == 119)
          {
            goto LABEL_348;
          }

          if ((v7 & 0x80) == 0)
          {
            v15 = v3;
            if (v7 == 2)
            {
              goto LABEL_93;
            }

            if (v7 != 6)
            {
              if (v7 != 5)
              {
                goto LABEL_342;
              }

LABEL_65:
              if (*v3 == 1633644133 && *(v3 + 4) == 117)
              {
                goto LABEL_349;
              }

LABEL_101:
              if (v7 != 5)
              {
LABEL_102:
                if (v7 == 6)
                {
                  goto LABEL_103;
                }

                goto LABEL_342;
              }

              goto LABEL_162;
            }

            goto LABEL_103;
          }
        }

        if (*(v3 + 8) == 5 && **v3 == 1633644133 && *(*v3 + 4) == 117)
        {
          goto LABEL_349;
        }

        if (*(v3 + 8) != 2)
        {
          goto LABEL_115;
        }

        v15 = *v3;
      }

      else
      {
        if (*(v3 + 23) > 5u)
        {
          if (v7 == 6)
          {
            goto LABEL_103;
          }

          if (v7 != 7)
          {
            goto LABEL_342;
          }

          goto LABEL_55;
        }

        v15 = v3;
        if (v7 != 2)
        {
          if (v7 != 5)
          {
            goto LABEL_342;
          }

LABEL_61:
          if (*v3 == 1952409722 && *(v3 + 4) == 119)
          {
            goto LABEL_348;
          }

          goto LABEL_65;
        }
      }

LABEL_93:
      if (*v15 != 29281)
      {
        goto LABEL_99;
      }

      if (v4 < 0)
      {
        v23 = *a2;
        if (v5 != 2)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v23 = a2;
        if (v4 != 2)
        {
          goto LABEL_99;
        }
      }

      if (*v23 == 16723)
      {
        goto LABEL_351;
      }

LABEL_99:
      if ((v7 & 0x80) == 0)
      {
        if (v7 != 2)
        {
          goto LABEL_101;
        }

        if (*v3 == 29281)
        {
LABEL_351:
          v6 = "، \u200F";
          goto LABEL_349;
        }

        goto LABEL_126;
      }

LABEL_115:
      if (*(v3 + 8) == 2)
      {
        if (**v3 == 29281)
        {
          goto LABEL_351;
        }

        if ((v7 & 0x80) == 0)
        {
          if (v7 == 6)
          {
            goto LABEL_103;
          }

          if (v7 == 5)
          {
            goto LABEL_162;
          }

          if (v7 != 2)
          {
            goto LABEL_342;
          }

LABEL_126:
          if (*v3 == 24931 || *v3 == 29539)
          {
            goto LABEL_349;
          }

LABEL_135:
          if (*v3 == 24932 || *v3 == 25956)
          {
            goto LABEL_349;
          }

LABEL_146:
          if (*v3 == 27749 || *v3 == 29541)
          {
            goto LABEL_349;
          }

          goto LABEL_201;
        }
      }

      if (*(v3 + 8) == 2 && **v3 == 24931)
      {
        goto LABEL_349;
      }

      if (*(v3 + 8) == 2)
      {
        if (**v3 == 29539)
        {
          goto LABEL_349;
        }

        if ((v7 & 0x80) == 0)
        {
          if (v7 == 6)
          {
            goto LABEL_103;
          }

          if (v7 == 5)
          {
            goto LABEL_162;
          }

          if (v7 != 2)
          {
            goto LABEL_342;
          }

          goto LABEL_135;
        }
      }

      if (*(v3 + 8) == 2 && **v3 == 24932)
      {
        goto LABEL_349;
      }

      if (*(v3 + 8) == 2)
      {
        if (**v3 == 25956)
        {
          goto LABEL_349;
        }

        if ((v7 & 0x80) == 0)
        {
          if (v7 == 6)
          {
            goto LABEL_103;
          }

          if (v7 == 5)
          {
            goto LABEL_162;
          }

          if (v7 != 2)
          {
            goto LABEL_342;
          }

          goto LABEL_146;
        }
      }

      if (*(v3 + 8) == 2 && **v3 == 27749)
      {
        goto LABEL_349;
      }

      if (*(v3 + 8) == 2)
      {
        if (**v3 == 29541)
        {
          goto LABEL_349;
        }

        if ((v7 & 0x80) == 0)
        {
          goto LABEL_192;
        }
      }

      if (*(v3 + 8) == 6)
      {
        if (**v3 == 878670693 && *(*v3 + 4) == 14641)
        {
          goto LABEL_349;
        }

        if ((v7 & 0x80) == 0)
        {
          if (v7 != 2)
          {
            if (v7 != 5)
            {
              goto LABEL_342;
            }

LABEL_162:
            if (*v3 == 1834972005 && *(v3 + 4) == 120)
            {
              goto LABEL_349;
            }

LABEL_166:
            if (*v3 == 1667199590 && *(v3 + 4) == 97)
            {
              goto LABEL_349;
            }

            goto LABEL_170;
          }

LABEL_201:
          if (*v3 == 26982)
          {
            goto LABEL_349;
          }

LABEL_202:
          if (*v3 == 29286)
          {
            goto LABEL_349;
          }

LABEL_212:
          v34 = v3;
          if (v7 != 2)
          {
            goto LABEL_283;
          }

          goto LABEL_216;
        }
      }

      if (*(v3 + 8) == 5)
      {
        if (**v3 == 1834972005 && *(*v3 + 4) == 120)
        {
          goto LABEL_349;
        }

        if ((v7 & 0x80) == 0)
        {
LABEL_192:
          if (v7 != 2)
          {
            if (v7 != 5)
            {
              goto LABEL_342;
            }

            goto LABEL_166;
          }

          goto LABEL_201;
        }
      }

      if (*(v3 + 8) == 2)
      {
        if (**v3 == 26982)
        {
          goto LABEL_349;
        }

        if ((v7 & 0x80) == 0)
        {
          if (v7 == 5)
          {
            goto LABEL_166;
          }

          if (v7 != 2)
          {
            goto LABEL_342;
          }

          goto LABEL_202;
        }
      }

      if (*(v3 + 8) == 2 && **v3 == 29286)
      {
        goto LABEL_349;
      }

      if (*(v3 + 8) == 5)
      {
        if (**v3 == 1667199590 && *(*v3 + 4) == 97)
        {
          goto LABEL_349;
        }

        if ((v7 & 0x80) == 0)
        {
          goto LABEL_212;
        }
      }

      if (*(v3 + 8) != 2)
      {
        goto LABEL_226;
      }

      v34 = *v3;
LABEL_216:
      if (*v34 != 25960)
      {
        goto LABEL_222;
      }

      if (v4 < 0)
      {
        v35 = *a2;
        if (v5 != 2)
        {
          goto LABEL_222;
        }
      }

      else
      {
        v35 = a2;
        if (v4 != 2)
        {
          goto LABEL_222;
        }
      }

      if (*v35 == 19529)
      {
        goto LABEL_349;
      }

LABEL_222:
      if ((v7 & 0x80) == 0)
      {
        if (v7 != 2)
        {
LABEL_283:
          if (v7 != 5)
          {
            goto LABEL_342;
          }

          goto LABEL_170;
        }

        if (*v3 == 25960)
        {
          goto LABEL_349;
        }

LABEL_231:
        if (*v3 == 26984 || *v3 == 29288)
        {
          goto LABEL_349;
        }

        goto LABEL_241;
      }

LABEL_226:
      if (*(v3 + 8) == 2)
      {
        if (**v3 == 25960)
        {
          goto LABEL_349;
        }

        if ((v7 & 0x80) == 0)
        {
          if (v7 == 5)
          {
            goto LABEL_170;
          }

          if (v7 != 2)
          {
            goto LABEL_342;
          }

          goto LABEL_231;
        }
      }

      if (*(v3 + 8) == 2 && **v3 == 26984)
      {
        goto LABEL_349;
      }

      if (*(v3 + 8) == 2)
      {
        if (**v3 == 29288)
        {
          goto LABEL_349;
        }

        if ((v7 & 0x80) == 0)
        {
          if (v7 != 5)
          {
            if (v7 != 2)
            {
              goto LABEL_342;
            }

LABEL_241:
            if (*v3 == 30056 || *v3 == 25705)
            {
              goto LABEL_349;
            }

LABEL_251:
            if (*v3 == 29801 || *v3 == 24938)
            {
              goto LABEL_349;
            }

LABEL_261:
            if (*v3 == 28523 || *v3 == 29549)
            {
              goto LABEL_349;
            }

LABEL_271:
            if (*v3 == 25198 || *v3 == 28526)
            {
              goto LABEL_349;
            }

LABEL_281:
            if (*v3 == 27758 || *v3 == 27760)
            {
              goto LABEL_349;
            }

LABEL_345:
            if (*v3 == 29808)
            {
              goto LABEL_349;
            }

LABEL_178:
            if (v7 == 2)
            {
              goto LABEL_179;
            }

            goto LABEL_342;
          }

LABEL_170:
          if (*v3 == 1650422896 && *(v3 + 4) == 114)
          {
            goto LABEL_349;
          }

LABEL_174:
          if (*v3 == 1885303920 && *(v3 + 4) == 116)
          {
            goto LABEL_349;
          }

          goto LABEL_178;
        }
      }

      if (*(v3 + 8) == 2 && **v3 == 30056)
      {
        goto LABEL_349;
      }

      if (*(v3 + 8) == 2)
      {
        if (**v3 == 25705)
        {
          goto LABEL_349;
        }

        if ((v7 & 0x80) == 0)
        {
          if (v7 != 5)
          {
            if (v7 != 2)
            {
              goto LABEL_342;
            }

            goto LABEL_251;
          }

          goto LABEL_170;
        }
      }

      if (*(v3 + 8) == 2 && **v3 == 29801)
      {
        goto LABEL_349;
      }

      if (*(v3 + 8) == 2)
      {
        if (**v3 == 24938)
        {
          goto LABEL_349;
        }

        if ((v7 & 0x80) == 0)
        {
          if (v7 != 5)
          {
            if (v7 != 2)
            {
              goto LABEL_342;
            }

            goto LABEL_261;
          }

          goto LABEL_170;
        }
      }

      if (*(v3 + 8) == 2 && **v3 == 28523)
      {
        goto LABEL_349;
      }

      if (*(v3 + 8) == 2)
      {
        if (**v3 == 29549)
        {
          goto LABEL_349;
        }

        if ((v7 & 0x80) == 0)
        {
          if (v7 != 5)
          {
            if (v7 != 2)
            {
              goto LABEL_342;
            }

            goto LABEL_271;
          }

          goto LABEL_170;
        }
      }

      if (*(v3 + 8) == 2 && **v3 == 25198)
      {
        goto LABEL_349;
      }

      if (*(v3 + 8) == 2)
      {
        if (**v3 == 28526)
        {
          goto LABEL_349;
        }

        if ((v7 & 0x80) == 0)
        {
          if (v7 != 5)
          {
            if (v7 != 2)
            {
              goto LABEL_342;
            }

            goto LABEL_281;
          }

          goto LABEL_170;
        }
      }

      if (*(v3 + 8) == 2 && **v3 == 27758)
      {
        goto LABEL_349;
      }

      if (*(v3 + 8) == 2)
      {
        if (**v3 == 27760)
        {
          goto LABEL_349;
        }

        if ((v7 & 0x80) == 0)
        {
          if (v7 != 5)
          {
            if (v7 != 2)
            {
              goto LABEL_342;
            }

            goto LABEL_345;
          }

          goto LABEL_170;
        }
      }

      if (*(v3 + 8) == 2 && **v3 == 29808)
      {
        goto LABEL_349;
      }

      if (*(v3 + 8) != 5)
      {
        goto LABEL_308;
      }

      if (**v3 == 1650422896 && *(*v3 + 4) == 114)
      {
        goto LABEL_349;
      }

      if ((v7 & 0x80) != 0)
      {
LABEL_308:
        if (*(v3 + 8) == 5 && **v3 == 1885303920 && *(*v3 + 4) == 116)
        {
          goto LABEL_349;
        }

        if (*(v3 + 8) != 2)
        {
          goto LABEL_315;
        }

        if (**v3 == 28530)
        {
          goto LABEL_349;
        }

        if ((v7 & 0x80) != 0)
        {
LABEL_315:
          if (*(v3 + 8) == 2 && **v3 == 30066)
          {
            goto LABEL_349;
          }

          if (*(v3 + 8) != 2)
          {
            goto LABEL_324;
          }

          if (**v3 == 27507)
          {
            goto LABEL_349;
          }

          if ((v7 & 0x80) != 0)
          {
LABEL_324:
            if (*(v3 + 8) == 2 && **v3 == 30323)
            {
              goto LABEL_349;
            }

            if (*(v3 + 8) != 2)
            {
              goto LABEL_333;
            }

            if (**v3 == 26740)
            {
              goto LABEL_348;
            }

            if ((v7 & 0x80) != 0)
            {
LABEL_333:
              if (*(v3 + 8) == 2 && **v3 == 29300)
              {
                goto LABEL_349;
              }

              if (*(v3 + 8) != 2)
              {
                goto LABEL_339;
              }

              if (**v3 == 27509)
              {
                goto LABEL_349;
              }

              if ((v7 & 0x80) != 0)
              {
LABEL_339:
                if (*(v3 + 8) == 2)
                {
                  v38 = *v3;
                  goto LABEL_341;
                }
              }

              else
              {
                v38 = v3;
                if (v7 == 2)
                {
                  goto LABEL_341;
                }
              }
            }

            else if (v7 == 2)
            {
              goto LABEL_329;
            }
          }

          else if (v7 == 2)
          {
            goto LABEL_320;
          }
        }

        else if (v7 == 2)
        {
          goto LABEL_180;
        }
      }

      else
      {
        if (v7 == 2)
        {
LABEL_179:
          if (*v3 == 28530)
          {
            goto LABEL_349;
          }

LABEL_180:
          if (*v3 == 30066 || *v3 == 27507)
          {
            goto LABEL_349;
          }

LABEL_320:
          if (*v3 == 30323)
          {
            goto LABEL_349;
          }

          if (*v3 == 26740)
          {
            goto LABEL_348;
          }

LABEL_329:
          if (*v3 == 29300)
          {
            goto LABEL_349;
          }

          v38 = v3;
          if (*v3 == 27509)
          {
            goto LABEL_349;
          }

LABEL_341:
          if (*v38 == 26998)
          {
            goto LABEL_349;
          }

          goto LABEL_342;
        }

        if (v7 == 5)
        {
          goto LABEL_174;
        }
      }

LABEL_342:
      v3 += 24;
      if (v3 == v41)
      {
        goto LABEL_349;
      }
    }
  }

  v6 = ", ";
LABEL_349:
  v43 = &v40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v43);
  return v6;
}

void sub_1867A486C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void addr_obj::Formatting::getLanguageCandidates(char *a1, uint64_t a2)
{
  std::vector<std::string>::clear[abi:ne200100](a2);
  memset(&v34, 0, sizeof(v34));
  v4 = a1[23];
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = a1[23];
  }

  else
  {
    v6 = *(a1 + 1);
  }

  v7 = MEMORY[0x1E69E9830];
  if (v6)
  {
    v8 = &v5[v6];
    while (1)
    {
      v9 = *v5;
      if ((v9 & 0x80000000) != 0 ? __maskrune(v9, 0x500uLL) : *(v7 + 4 * v9 + 60) & 0x500)
      {
        break;
      }

      ++v5;
      if (!--v6)
      {
        v5 = v8;
        break;
      }
    }
  }

LABEL_15:
  while (1)
  {
    v11 = a1[23];
    if (v11 < 0)
    {
      v13 = *a1;
      v11 = *(a1 + 1);
      v12 = (*a1 + v11);
    }

    else
    {
      v12 = &a1[v11];
      v13 = a1;
    }

    if (v12 == v5)
    {
      break;
    }

    v14 = &v13[v11];
    v15 = v5;
    if (v5 != &v13[v11])
    {
      v15 = v5;
      v16 = v5;
      while (1)
      {
        v17 = *v16;
        if (!((v17 & 0x80000000) != 0 ? __maskrune(v17, 0x500uLL) : *(v7 + 4 * v17 + 60) & 0x500))
        {
          break;
        }

        ++v16;
        ++v15;
        if (v16 == v14)
        {
          v15 = v14;
          break;
        }
      }
    }

    while (v5 != v15)
    {
      v19 = __tolower(*v5);
      std::string::push_back(&v34, v19);
      ++v5;
    }

    std::vector<std::string>::push_back[abi:ne200100](a2, &v34);
    std::string::push_back(&v34, 95);
    v20 = a1[23];
    if ((v20 & 0x80u) == 0)
    {
      v21 = a1;
    }

    else
    {
      v21 = *a1;
    }

    if ((v20 & 0x80u) != 0)
    {
      v20 = *(a1 + 1);
    }

    v22 = &v21[v20];
    v5 = v15;
    if (v15 != &v21[v20])
    {
      v5 = v15;
      while (1)
      {
        v23 = *v15;
        if ((v23 & 0x80000000) != 0 ? __maskrune(v23, 0x500uLL) : *(v7 + 4 * v23 + 60) & 0x500)
        {
          break;
        }

        ++v15;
        ++v5;
        if (v15 == v22)
        {
          v5 = v22;
          goto LABEL_15;
        }
      }
    }
  }

  v25 = *a2;
  v26 = *(a2 + 8);
  v27 = v26 - 24;
  if (*a2 != v26 && v27 > v25)
  {
    v29 = v25 + 3;
    do
    {
      v30 = *(v29 - 1);
      v31 = *(v29 - 3);
      v32 = *(v27 + 16);
      *(v29 - 3) = *v27;
      *(v29 - 1) = v32;
      *v27 = v31;
      *(v27 + 16) = v30;
      v27 -= 24;
      v33 = v29 >= v27;
      v29 += 3;
    }

    while (!v33);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }
}

void sub_1867A4AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL addr_obj::Formatting::overrideLegacyShortAddress(addr_obj::Localization *a1, uint64_t a2)
{
  addr_obj::Localization::getDisplayLanguage(a1);
  sub_1867A39E4(v3, a2);
  return (v4 & 0xFFFFFFFE) == 6;
}

void addr_obj::V1AddressObject::getShortAddress(addr_obj::V1AddressObject *this@<X0>, std::string *a2@<X8>)
{
  v4 = (*(*this + 152))(this);
  v5 = v4;
  v6 = *(this + 39);
  if (!v6)
  {
    v6 = *(addr_obj::geo3::Address::default_instance_(v4) + 40);
  }

  v7 = *(v6 + 104);
  (*(*this + 136))(&v15, this, 0);
  (*(*this + 176))(__p, this);
  addr_obj::Formatting::buildLegacyShortAddress(v5, v7, &v15, &v16, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if (addr_obj::Debugging::addChar(v8) && ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v10 = HIBYTE(v16.__r_.__value_.__r.__words[2])) : (v10 = v16.__r_.__value_.__l.__size_), v10))
    {
      std::operator+<char>();
      v11 = std::string::append(&v15, "]");
      v12 = *&v11->__r_.__value_.__l.__data_;
      a2->__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&a2->__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if ((*(&v16.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        *a2 = v16;
        return;
      }

      std::string::__init_copy_ctor_external(a2, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
    }
  }

  else
  {
    (*(*this + 72))(this, 1);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_1867A4D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _GEOFormattedStringIsDirty(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner((a1 + 80));
  v2 = *(a1 + 84);
  if ((v2 & 0xDC) != 0)
  {
    return 1;
  }

  if ((*(a1 + 84) & 2) != 0)
  {
    if (GEOConditionalFormattedStringIsDirty(*(a1 + 24)))
    {
      return 1;
    }

    v2 = *(a1 + 84);
  }

  if ((v2 & 0x20) == 0)
  {
    if ((v2 & 4) != 0)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = *(a1 + 32);
      v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v17;
LABEL_11:
        v9 = 0;
        while (1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if (GEOFormatArgumentIsDirty(*(*(&v16 + 1) + 8 * v9)))
          {
            goto LABEL_29;
          }

          if (v7 == ++v9)
          {
            v7 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
            if (v7)
            {
              goto LABEL_11;
            }

            break;
          }
        }
      }

      v2 = *(a1 + 84);
    }

    if ((v2 & 0x10) == 0)
    {
      return 0;
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = *(a1 + 48);
    v3 = [v5 countByEnumeratingWithState:&v12 objects:v20 count:16];
    if (!v3)
    {
LABEL_30:

      return v3;
    }

    v10 = *v13;
LABEL_22:
    v11 = 0;
    while (1)
    {
      if (*v13 != v10)
      {
        objc_enumerationMutation(v5);
      }

      if (GEOFormatStyleIsDirty(*(*(&v12 + 1) + 8 * v11)))
      {
        break;
      }

      if (v3 == ++v11)
      {
        v3 = [v5 countByEnumeratingWithState:&v12 objects:v20 count:16];
        if (v3)
        {
          goto LABEL_22;
        }

        goto LABEL_30;
      }
    }

LABEL_29:
    v3 = 1;
    goto LABEL_30;
  }

  return 1;
}

void sub_1867A5D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1867A5D30);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1867A65C4(uint64_t result, SEL *a2)
{
  if (*(v2 + OBJC_IVAR____TtC11GeoServices33GEONavigationListenerRemoteClient__wantsRoutes) == 1 && *(v2 + OBJC_IVAR____TtC11GeoServices33GEONavigationListenerRemoteClient_hasEntitlement) == 1 && *(v2 + OBJC_IVAR____TtC11GeoServices33GEONavigationListenerRemoteClient__connection))
  {
    v4 = result;
    v5 = [*(v2 + OBJC_IVAR____TtC11GeoServices33GEONavigationListenerRemoteClient__connection) remoteObjectProxy];
    sub_187ED3480();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8FD270, &unk_187FBA1E8);
    result = swift_dynamicCast();
    if (result)
    {
      [v6 *a2];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id GEORoundedDistanceMeasurement(void *a1)
{
  v1 = a1;
  v2 = +[GEOComposedString localizationProvider];
  v3 = [_TtC11GeoServices27GEODistanceStringFormatting formattedStringFor:v1 localizationProvider:v2 formatOptions:0];

  v4 = [v3 roundedDistance];

  return v4;
}

void *GEONameInfoReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 60))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEONameInfoReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 64));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 56) = objc_msgSend_position(v8);
  *(a1 + 60) = [v8 length];
  if (a3)
  {
    v9 = &GEONameInfoReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEONameInfoReadAllFrom_initialTag;
  }

  Specified = GEONameInfoReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  os_unfair_lock_unlock((a1 + 64));
  return Specified;
}

void *GEONameInfoReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 64));
  [v3 setLength:*(a1 + 60)];
  [v3 seekToOffset:*(a1 + 56)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = (vaddv_s16(vand_s8(vshl_u16(vdup_n_s16(*(a1 + 80)), 0xFFFCFFF9FFFAFFFBLL), 0x1000100010001)) + ((*(a1 + 80) >> 3) & 1));
  while (1)
  {
    v11 = a3[v8];
    if (v11 > -3)
    {
      break;
    }

    if (v11 == -4)
    {
      ++v10;
      v6 = 1;
      goto LABEL_12;
    }

    if (v11 == -3)
    {
      v7 = 1;
      goto LABEL_12;
    }

LABEL_11:
    ++v10;
LABEL_12:
    ++v8;
  }

  if (v11 >= 0xFFFFFFFE)
  {
    v6 = 1;
    v9 = 1;
    goto LABEL_12;
  }

  if (v11)
  {
    goto LABEL_11;
  }

  v12 = v10 > 2;
  v13 = (v12 & ~v9 | v6);
  v14 = v9 | v12;
  v64 = v13;
  v65 = v14 | v6;
  if ((v14 | v7))
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  v66 = (v15 == 0) | v14;
  v67 = v14;
  while (1)
  {
    v16 = objc_msgSend_position(v3);
    if (v16 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_121:
      v25 = 1;
      goto LABEL_122;
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    while (1)
    {
      v68 = 0;
      v20 = objc_msgSend_position(v3) + 1;
      if (v20 >= objc_msgSend_position(v3) && (v21 = objc_msgSend_position(v3) + 1, v21 <= [v3 length]))
      {
        v22 = [v3 data];
        [v22 getBytes:&v68 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v19 |= (v68 & 0x7F) << v17;
      if ((v68 & 0x80) == 0)
      {
        break;
      }

      v17 += 7;
      v23 = v18++ >= 9;
      if (v23)
      {
        v19 = 0;
        goto LABEL_30;
      }
    }

    if ([v3 hasError])
    {
      v19 = 0;
    }

LABEL_30:
    v24 = [v3 hasError];
    v25 = 1;
    if ((v24 & 1) != 0 || (v19 & 7) == 4)
    {
      goto LABEL_122;
    }

    v26 = v19 >> 3;
    v27 = v67;
    if ((v66 & 1) == 0)
    {
      v28 = v15;
      do
      {
        v30 = *v28++;
        v29 = v30;
        v27 = v30 != 0;
        if (v30)
        {
          v31 = v29 == v26;
        }

        else
        {
          v31 = 1;
        }
      }

      while (!v31);
    }

    if (v26 > 3)
    {
      if (v26 <= 5)
      {
        if (v26 == 4)
        {
          if ((v7 & 1) == 0)
          {
            goto LABEL_96;
          }

          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 80) |= 2u;
          while (1)
          {
            v71 = 0;
            v46 = objc_msgSend_position(v3) + 1;
            if (v46 >= objc_msgSend_position(v3) && (v47 = objc_msgSend_position(v3) + 1, v47 <= [v3 length]))
            {
              v48 = [v3 data];
              [v48 getBytes:&v71 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v45 |= (v71 & 0x7F) << v43;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v23 = v44++ >= 9;
            if (v23)
            {
              v49 = 0;
              goto LABEL_101;
            }
          }

          if ([v3 hasError])
          {
            v49 = 0;
          }

          else
          {
            v49 = v45;
          }

LABEL_101:
          v38 = -(v49 & 1) ^ (v49 >> 1);
          v57 = 72;
        }

        else
        {
          if ((v7 & 1) == 0)
          {
            goto LABEL_96;
          }

          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 80) |= 1u;
          while (1)
          {
            v70 = 0;
            v35 = objc_msgSend_position(v3) + 1;
            if (v35 >= objc_msgSend_position(v3) && (v36 = objc_msgSend_position(v3) + 1, v36 <= [v3 length]))
            {
              v37 = [v3 data];
              [v37 getBytes:&v70 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v34 |= (v70 & 0x7F) << v32;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v23 = v33++ >= 9;
            if (v23)
            {
              v38 = 0;
              goto LABEL_109;
            }
          }

          if ([v3 hasError])
          {
            v38 = 0;
          }

          else
          {
            v38 = v34;
          }

LABEL_109:
          v57 = 68;
        }

LABEL_110:
        *(a1 + v57) = v38;
        goto LABEL_120;
      }

      if (v26 == 6)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_96;
        }

        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 80) |= 4u;
        while (1)
        {
          v69 = 0;
          v53 = objc_msgSend_position(v3) + 1;
          if (v53 >= objc_msgSend_position(v3) && (v54 = objc_msgSend_position(v3) + 1, v54 <= [v3 length]))
          {
            v55 = [v3 data];
            [v55 getBytes:&v69 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v52 |= (v69 & 0x7F) << v50;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v23 = v51++ >= 9;
          if (v23)
          {
            v38 = 0;
            goto LABEL_105;
          }
        }

        if ([v3 hasError])
        {
          v38 = 0;
        }

        else
        {
          v38 = v52;
        }

LABEL_105:
        v57 = 76;
        goto LABEL_110;
      }

      if (v26 == 7)
      {
        if (!v27)
        {
          goto LABEL_96;
        }

        if ((*(a1 + 80) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_144;
          }

          v58 = *(a1 + 80) << 11;
          goto LABEL_119;
        }

        v39 = PBReaderReadString();
        v40 = 24;
        goto LABEL_95;
      }

      goto LABEL_66;
    }

    if (v26 == 1)
    {
      if (!v27)
      {
        goto LABEL_96;
      }

      if ((*(a1 + 80) & 0x20) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_144;
        }

        v58 = *(a1 + 80) << 10;
        goto LABEL_119;
      }

      v39 = PBReaderReadString();
      v40 = 32;
      goto LABEL_95;
    }

    if (v26 == 2)
    {
      break;
    }

    if (v26 == 3)
    {
      if (!v27)
      {
        goto LABEL_96;
      }

      if ((*(a1 + 80) & 0x80) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_144;
        }

        v58 = *(a1 + 80) << 8;
        goto LABEL_119;
      }

      v39 = PBReaderReadString();
      v40 = 48;
      goto LABEL_95;
    }

LABEL_66:
    if ((v64 & 1) == 0 || (*(a1 + 80) & 8) != 0)
    {
LABEL_96:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_144;
      }

      goto LABEL_120;
    }

    if (!*(a1 + 16))
    {
      v41 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v42 = *(a1 + 16);
      *(a1 + 16) = v41;
    }

    if (!PBUnknownFieldAdd())
    {
      v25 = 0;
      goto LABEL_123;
    }

LABEL_120:
    if (!(v65 & 1 | (v8 != 0)))
    {
      goto LABEL_121;
    }
  }

  if (!v27)
  {
    goto LABEL_96;
  }

  if ((*(a1 + 80) & 0x40) == 0)
  {
    v39 = PBReaderReadString();
    v40 = 40;
LABEL_95:
    v56 = *(a1 + v40);
    *(a1 + v40) = v39;

    --v8;
    goto LABEL_120;
  }

  if (PBReaderSkipValueWithTag())
  {
    v58 = *(a1 + 80) << 9;
LABEL_119:
    v8 += v58 >> 15;
    goto LABEL_120;
  }

LABEL_144:
  v25 = 0;
LABEL_122:
  if ((v64 & 1) == 0)
  {
    goto LABEL_124;
  }

LABEL_123:
  *(a1 + 80) |= 8u;
LABEL_124:
  if (v67 || (v25 & 1) == 0)
  {
    *(a1 + 80) |= 0x20u;
    *(a1 + 80) |= 0x40u;
    *(a1 + 80) |= 0x80u;
    *(a1 + 80) |= 0x10u;
    goto LABEL_138;
  }

  if (v15)
  {
    while (1)
    {
      v60 = *v15++;
      v59 = v60;
      if (v60 > 2)
      {
        if (v59 == 3)
        {
          v61 = 128;
        }

        else
        {
          if (v59 != 7)
          {
            continue;
          }

          v61 = 16;
        }

        goto LABEL_136;
      }

      if (v59 == 1)
      {
        break;
      }

      if (v59 == 2)
      {
        v61 = 64;
LABEL_136:
        *(a1 + 80) |= v61;
        continue;
      }

      if (!v59)
      {
        goto LABEL_138;
      }
    }

    v61 = 32;
    goto LABEL_136;
  }

LABEL_138:
  if (v25)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v67)
  {
    v62 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void std::deque<_GEOProbeCrumbsLocation>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 32) >= 0x154uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 170;
  }
}

void std::__split_buffer<ErrorInfo *>::emplace_front<ErrorInfo *&>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<std::string>>>(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void addr_obj::V2AddressObject::getShortAddress(addr_obj::V2AddressObject *this@<X0>, std::string *a2@<X8>)
{
  if ((*(this + 919) & 0x8000000000000000) != 0)
  {
    if (*(this + 113))
    {
      goto LABEL_3;
    }

LABEL_9:

    addr_obj::V1AddressObject::getShortAddress(this, a2);
    return;
  }

  if (!*(this + 919))
  {
    goto LABEL_9;
  }

LABEL_3:
  v4 = (this + 896);
  if (addr_obj::Debugging::addChar(this))
  {
    if ((*(this + 919) & 0x80) != 0)
    {
      if (*(this + 113))
      {
LABEL_6:
        std::operator+<char>();
        v5 = std::string::append(&v9, "]");
        v6 = *&v5->__r_.__value_.__l.__data_;
        a2->__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
        *&a2->__r_.__value_.__l.__data_ = v6;
        v5->__r_.__value_.__l.__size_ = 0;
        v5->__r_.__value_.__r.__words[2] = 0;
        v5->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v9.__r_.__value_.__l.__data_);
        }

        return;
      }
    }

    else if (*(this + 919))
    {
      goto LABEL_6;
    }
  }

  if ((*(this + 919) & 0x80) != 0)
  {
    v7 = *(this + 112);
    v8 = *(this + 113);

    std::string::__init_copy_ctor_external(a2, v7, v8);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *v4;
    a2->__r_.__value_.__r.__words[2] = *(this + 114);
  }
}

void sub_1867A7BE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id GEOGetGEOComposedRouteLog(void)
{
  if (GEOGetGEOComposedRouteLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetGEOComposedRouteLog(void)::onceToken, &__block_literal_global_1218);
  }

  v1 = GEOGetGEOComposedRouteLog(void)::log;

  return v1;
}

id GEOPolylineCoordinateAsString(uint64_t a1, char a2, char a3, double a4)
{
  LODWORD(a4) = HIDWORD(a1);
  if (a2)
  {
    if ((a3 & 1) != 0 || fabsf(*(&a1 + 1)) >= 0.01)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.2f", (a1 + *(&a1 + 1)), (a1 + *(&a1 + 1)), v6];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", a4, a1, v6];
    }
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%u, %0.2f", *(&a1 + 1), a1, *(&a1 + 1)];
  }
  v4 = ;

  return v4;
}

void *GEOGuidanceEventReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 100))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOGuidanceEventReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 104));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 96) = objc_msgSend_position(v8);
  *(a1 + 100) = [v8 length];
  if (a3)
  {
    v9 = &GEOGuidanceEventReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOGuidanceEventReadAllFrom_initialTag;
  }

  Specified = GEOGuidanceEventReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOGuidanceEventCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 104));
  return Specified;
}

void *GEOGuidanceEventReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 104));
  [v3 setLength:*(a1 + 100)];
  [v3 seekToOffset:*(a1 + 96)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = (a1 + 156);
  v12 = vld1q_dup_f32(v11);
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  v14 = vaddvq_s32(vaddq_s32(vandq_s8(vshlq_u32(v12, xmmword_187FBD8C0), v13), vandq_s8(vshlq_u32(v12, xmmword_187FBD8D0), v13)));
  while (1)
  {
    v15 = a3[v6];
    if (v15 > -3)
    {
      break;
    }

    if (v15 == -4)
    {
      ++v14;
      v8 = 1;
      goto LABEL_15;
    }

    if (v15 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v14;
LABEL_15:
    ++v6;
  }

  if (v15 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v15 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v15)
  {
    goto LABEL_14;
  }

  v16 = v14 > 4;
  v136 = v9;
  v137 = v16 & ~v10 | v8;
  v17 = v10 | v16;
  v138 = v17 | v8;
  if ((v17 | v7))
  {
    v18 = 0;
  }

  else
  {
    v18 = a3;
  }

  v139 = (v18 == 0) | v17;
  v140 = v17;
  while (2)
  {
    v19 = objc_msgSend_position(v3);
    if (v19 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_296:
      v28 = 1;
      goto LABEL_297;
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    while (1)
    {
      LOBYTE(v141) = 0;
      v23 = objc_msgSend_position(v3) + 1;
      if (v23 >= objc_msgSend_position(v3) && (v24 = objc_msgSend_position(v3) + 1, v24 <= [v3 length]))
      {
        v25 = [v3 data];
        [v25 getBytes:&v141 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v22 |= (v141 & 0x7F) << v20;
      if ((v141 & 0x80) == 0)
      {
        break;
      }

      v20 += 7;
      v26 = v21++ >= 9;
      if (v26)
      {
        v22 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v22 = 0;
    }

LABEL_33:
    v27 = [v3 hasError];
    v28 = 1;
    if ((v27 & 1) != 0 || (v22 & 7) == 4)
    {
      goto LABEL_297;
    }

    v29 = v22 >> 3;
    v30 = v140;
    if ((v139 & 1) == 0)
    {
      v31 = v18;
      do
      {
        v33 = *v31++;
        v32 = v33;
        v30 = v33 != 0;
        if (v33)
        {
          v34 = v32 == v29;
        }

        else
        {
          v34 = 1;
        }
      }

      while (!v34);
    }

    switch(v29)
    {
      case 1:
        if ((v7 & 1) == 0)
        {
          goto LABEL_223;
        }

        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 156) |= 0x800u;
        while (1)
        {
          LOBYTE(v141) = 0;
          v38 = objc_msgSend_position(v3) + 1;
          if (v38 >= objc_msgSend_position(v3) && (v39 = objc_msgSend_position(v3) + 1, v39 <= [v3 length]))
          {
            v40 = [v3 data];
            [v40 getBytes:&v141 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v37 |= (v141 & 0x7F) << v35;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v26 = v36++ >= 9;
          if (v26)
          {
            v41 = 0;
LABEL_245:
            v124 = 144;
            goto LABEL_274;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v37;
        }

        goto LABEL_245;
      case 2:
        if ((v7 & 1) == 0)
        {
          goto LABEL_223;
        }

        v75 = 0;
        v76 = 0;
        v77 = 0;
        *(a1 + 156) |= 0x20u;
        while (1)
        {
          LOBYTE(v141) = 0;
          v78 = objc_msgSend_position(v3) + 1;
          if (v78 >= objc_msgSend_position(v3) && (v79 = objc_msgSend_position(v3) + 1, v79 <= [v3 length]))
          {
            v80 = [v3 data];
            [v80 getBytes:&v141 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v77 |= (v141 & 0x7F) << v75;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v75 += 7;
          v26 = v76++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_249;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v77;
        }

LABEL_249:
        v124 = 120;
        goto LABEL_274;
      case 3:
        if (!v30)
        {
          goto LABEL_223;
        }

        if ((*(a1 + 158) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_328;
          }

          v126 = (*(a1 + 156) << 10) >> 31;
          goto LABEL_289;
        }

        v141 = 0;
        v142 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_328;
        }

        v42 = objc_alloc_init(GEOSignGuidance);
        if (!GEOSignGuidanceReadAllFrom(v42, v3, v136 & 1))
        {
          goto LABEL_327;
        }

        PBReaderRecallMark();
        v43 = 80;
        goto LABEL_222;
      case 4:
        if (!v30)
        {
          goto LABEL_223;
        }

        if ((*(a1 + 158) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_328;
          }

          v126 = (*(a1 + 156) << 9) >> 31;
          goto LABEL_289;
        }

        v141 = 0;
        v142 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_328;
        }

        v42 = objc_alloc_init(GEOSpokenGuidance);
        if (!GEOSpokenGuidanceReadAllFrom(v42, v3, v136 & 1))
        {
          goto LABEL_327;
        }

        PBReaderRecallMark();
        v43 = 88;
        goto LABEL_222;
      case 5:
        if (!v30)
        {
          goto LABEL_223;
        }

        if ((*(a1 + 158) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_328;
          }

          v126 = (*(a1 + 156) << 12) >> 31;
          goto LABEL_289;
        }

        v141 = 0;
        v142 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_328;
        }

        v42 = objc_alloc_init(GEOVisualLaneGuidance);
        if (!GEOVisualLaneGuidanceReadAllFrom(v42, v3, v136 & 1))
        {
          goto LABEL_327;
        }

        PBReaderRecallMark();
        v43 = 48;
        goto LABEL_222;
      case 7:
        if ((v7 & 1) == 0)
        {
          goto LABEL_223;
        }

        v63 = 0;
        v64 = 0;
        v65 = 0;
        *(a1 + 156) |= 8u;
        while (1)
        {
          LOBYTE(v141) = 0;
          v66 = objc_msgSend_position(v3) + 1;
          if (v66 >= objc_msgSend_position(v3) && (v67 = objc_msgSend_position(v3) + 1, v67 <= [v3 length]))
          {
            v68 = [v3 data];
            [v68 getBytes:&v141 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v65 |= (v141 & 0x7F) << v63;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v26 = v64++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_238;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v65;
        }

LABEL_238:
        v124 = 112;
        goto LABEL_274;
      case 8:
        if ((v7 & 1) == 0)
        {
          goto LABEL_223;
        }

        *(a1 + 156) |= 2u;
        v141 = 0;
        v81 = objc_msgSend_position(v3) + 8;
        if (v81 >= objc_msgSend_position(v3) && (v82 = objc_msgSend_position(v3) + 8, v82 <= [v3 length]))
        {
          v127 = [v3 data];
          [v127 getBytes:&v141 range:{objc_msgSend_position(v3), 8}];

          [v3 setPosition:objc_msgSend_position(v3) + 8];
        }

        else
        {
          [v3 _setError];
        }

        v128 = v141;
        v129 = 64;
        goto LABEL_294;
      case 9:
        if ((v7 & 1) == 0)
        {
          goto LABEL_223;
        }

        *(a1 + 156) |= 1u;
        v141 = 0;
        v83 = objc_msgSend_position(v3) + 8;
        if (v83 >= objc_msgSend_position(v3) && (v84 = objc_msgSend_position(v3) + 8, v84 <= [v3 length]))
        {
          v130 = [v3 data];
          [v130 getBytes:&v141 range:{objc_msgSend_position(v3), 8}];

          [v3 setPosition:objc_msgSend_position(v3) + 8];
        }

        else
        {
          [v3 _setError];
        }

        v128 = v141;
        v129 = 56;
LABEL_294:
        *(a1 + v129) = v128;
        goto LABEL_295;
      case 10:
        if ((v7 & 1) == 0)
        {
          goto LABEL_223;
        }

        v105 = 0;
        v106 = 0;
        v107 = 0;
        *(a1 + 156) |= 0x80u;
        while (1)
        {
          LOBYTE(v141) = 0;
          v108 = objc_msgSend_position(v3) + 1;
          if (v108 >= objc_msgSend_position(v3) && (v109 = objc_msgSend_position(v3) + 1, v109 <= [v3 length]))
          {
            v110 = [v3 data];
            [v110 getBytes:&v141 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v107 |= (v141 & 0x7F) << v105;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v26 = v106++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_265;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v107;
        }

LABEL_265:
        v124 = 128;
        goto LABEL_274;
      case 11:
        if ((v7 & 1) == 0)
        {
          goto LABEL_223;
        }

        v99 = 0;
        v100 = 0;
        v101 = 0;
        *(a1 + 156) |= 0x100u;
        while (1)
        {
          LOBYTE(v141) = 0;
          v102 = objc_msgSend_position(v3) + 1;
          if (v102 >= objc_msgSend_position(v3) && (v103 = objc_msgSend_position(v3) + 1, v103 <= [v3 length]))
          {
            v104 = [v3 data];
            [v104 getBytes:&v141 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v101 |= (v141 & 0x7F) << v99;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v99 += 7;
          v26 = v100++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_261;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v101;
        }

LABEL_261:
        v124 = 132;
        goto LABEL_274;
      case 12:
        if ((v7 & 1) == 0)
        {
          goto LABEL_223;
        }

        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 156) |= 0x200u;
        while (1)
        {
          LOBYTE(v141) = 0;
          v53 = objc_msgSend_position(v3) + 1;
          if (v53 >= objc_msgSend_position(v3) && (v54 = objc_msgSend_position(v3) + 1, v54 <= [v3 length]))
          {
            v55 = [v3 data];
            [v55 getBytes:&v141 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v52 |= (v141 & 0x7F) << v50;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v26 = v51++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_232;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v52;
        }

LABEL_232:
        v124 = 136;
        goto LABEL_274;
      case 13:
        if ((v7 & 1) == 0)
        {
          goto LABEL_223;
        }

        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 156) |= 0x4000u;
        while (1)
        {
          LOBYTE(v141) = 0;
          v72 = objc_msgSend_position(v3) + 1;
          if (v72 >= objc_msgSend_position(v3) && (v73 = objc_msgSend_position(v3) + 1, v73 <= [v3 length]))
          {
            v74 = [v3 data];
            [v74 getBytes:&v141 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v71 |= (v141 & 0x7F) << v69;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v26 = v70++ >= 9;
          if (v26)
          {
            v62 = 0;
            goto LABEL_240;
          }
        }

        v62 = (v71 != 0) & ~[v3 hasError];
LABEL_240:
        v125 = 153;
        goto LABEL_241;
      case 14:
        if (!v30)
        {
          goto LABEL_223;
        }

        if ((*(a1 + 158) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_328;
          }

          v126 = (*(a1 + 156) << 13) >> 31;
          goto LABEL_289;
        }

        v141 = 0;
        v142 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_328;
        }

        v42 = objc_alloc_init(GEOJunctionView);
        if (!GEOJunctionViewReadAllFrom(v42, v3))
        {
          goto LABEL_327;
        }

        PBReaderRecallMark();
        v43 = 40;
        goto LABEL_222;
      case 15:
        if ((v7 & 1) == 0)
        {
          goto LABEL_223;
        }

        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 156) |= 0x1000u;
        while (1)
        {
          LOBYTE(v141) = 0;
          v47 = objc_msgSend_position(v3) + 1;
          if (v47 >= objc_msgSend_position(v3) && (v48 = objc_msgSend_position(v3) + 1, v48 <= [v3 length]))
          {
            v49 = [v3 data];
            [v49 getBytes:&v141 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v46 |= (v141 & 0x7F) << v44;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v26 = v45++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_228;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v46;
        }

LABEL_228:
        v124 = 148;
        goto LABEL_274;
      case 16:
        if ((v7 & 1) == 0)
        {
          goto LABEL_223;
        }

        v85 = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 156) |= 0x40u;
        while (1)
        {
          LOBYTE(v141) = 0;
          v88 = objc_msgSend_position(v3) + 1;
          if (v88 >= objc_msgSend_position(v3) && (v89 = objc_msgSend_position(v3) + 1, v89 <= [v3 length]))
          {
            v90 = [v3 data];
            [v90 getBytes:&v141 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v87 |= (v141 & 0x7F) << v85;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v26 = v86++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_253;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v87;
        }

LABEL_253:
        v124 = 124;
        goto LABEL_274;
      case 17:
        if ((v7 & 1) == 0)
        {
          goto LABEL_223;
        }

        v91 = 0;
        v92 = 0;
        v93 = 0;
        *(a1 + 156) |= 0x400u;
        while (1)
        {
          LOBYTE(v141) = 0;
          v94 = objc_msgSend_position(v3) + 1;
          if (v94 >= objc_msgSend_position(v3) && (v95 = objc_msgSend_position(v3) + 1, v95 <= [v3 length]))
          {
            v96 = [v3 data];
            [v96 getBytes:&v141 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v93 |= (v141 & 0x7F) << v91;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v26 = v92++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_257;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v93;
        }

LABEL_257:
        v124 = 140;
        goto LABEL_274;
      case 18:
        if ((v7 & 1) == 0)
        {
          goto LABEL_223;
        }

        v117 = 0;
        v118 = 0;
        v119 = 0;
        *(a1 + 156) |= 0x10u;
        while (1)
        {
          LOBYTE(v141) = 0;
          v120 = objc_msgSend_position(v3) + 1;
          if (v120 >= objc_msgSend_position(v3) && (v121 = objc_msgSend_position(v3) + 1, v121 <= [v3 length]))
          {
            v122 = [v3 data];
            [v122 getBytes:&v141 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v119 |= (v141 & 0x7F) << v117;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v117 += 7;
          v26 = v118++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_273;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v119;
        }

LABEL_273:
        v124 = 116;
        goto LABEL_274;
      case 19:
        if ((v7 & 1) == 0)
        {
          goto LABEL_223;
        }

        v111 = 0;
        v112 = 0;
        v113 = 0;
        *(a1 + 156) |= 4u;
        while (1)
        {
          LOBYTE(v141) = 0;
          v114 = objc_msgSend_position(v3) + 1;
          if (v114 >= objc_msgSend_position(v3) && (v115 = objc_msgSend_position(v3) + 1, v115 <= [v3 length]))
          {
            v116 = [v3 data];
            [v116 getBytes:&v141 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v113 |= (v141 & 0x7F) << v111;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v111 += 7;
          v26 = v112++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_269;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v113;
        }

LABEL_269:
        v124 = 108;
LABEL_274:
        *(a1 + v124) = v41;
        goto LABEL_295;
      case 20:
        if (!v30)
        {
          goto LABEL_223;
        }

        if (*(a1 + 158))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_328;
          }

          v126 = (*(a1 + 156) << 15) >> 31;
          goto LABEL_289;
        }

        v141 = 0;
        v142 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_328;
        }

        v42 = objc_alloc_init(GEOARGuidance);
        if (!GEOARGuidanceReadAllFrom(v42, v3, v136 & 1))
        {
          goto LABEL_327;
        }

        PBReaderRecallMark();
        v43 = 24;
        goto LABEL_222;
      case 21:
        if ((v7 & 1) == 0)
        {
          goto LABEL_223;
        }

        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 156) |= 0x2000u;
        while (1)
        {
          LOBYTE(v141) = 0;
          v59 = objc_msgSend_position(v3) + 1;
          if (v59 >= objc_msgSend_position(v3) && (v60 = objc_msgSend_position(v3) + 1, v60 <= [v3 length]))
          {
            v61 = [v3 data];
            [v61 getBytes:&v141 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v58 |= (v141 & 0x7F) << v56;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v26 = v57++ >= 9;
          if (v26)
          {
            v62 = 0;
            goto LABEL_234;
          }
        }

        v62 = (v58 != 0) & ~[v3 hasError];
LABEL_234:
        v125 = 152;
LABEL_241:
        *(a1 + v125) = v62;
        goto LABEL_295;
      case 22:
        if (!v30)
        {
          goto LABEL_223;
        }

        if ((*(a1 + 158) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_328;
          }

          v126 = (*(a1 + 156) << 14) >> 31;
LABEL_289:
          v6 += v126;
          goto LABEL_295;
        }

        v141 = 0;
        v142 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_328;
        }

        v42 = objc_alloc_init(GEOGuidanceImportanceMode);
        if (GEOGuidanceImportanceModeReadAllFrom(v42, v3))
        {
          PBReaderRecallMark();
          v43 = 32;
LABEL_222:
          v123 = *(a1 + v43);
          *(a1 + v43) = v42;

          --v6;
LABEL_295:
          if (!(v138 & 1 | (v6 != 0)))
          {
            goto LABEL_296;
          }

          continue;
        }

LABEL_327:

LABEL_328:
        v28 = 0;
LABEL_297:
        if (v137)
        {
LABEL_298:
          *(a1 + 156) |= 0x8000u;
        }

        if (v140 || (v28 & 1) == 0)
        {
          *(a1 + 156) |= 0x200000u;
          *(a1 + 156) |= 0x400000u;
          *(a1 + 156) |= 0x80000u;
          *(a1 + 156) |= 0x10000u;
          *(a1 + 156) |= 0x100000u;
          *(a1 + 156) |= 0x40000u;
          *(a1 + 156) |= 0x20000u;
          goto LABEL_321;
        }

        if (v18)
        {
          while (1)
          {
LABEL_302:
            v132 = *v18++;
            v131 = v132;
            if (v132 > 13)
            {
              if (v131 > 21)
              {
                if (v131 == 22)
                {
                  v133 = 0x20000;
                }

                else
                {
                  if (v131 != 23)
                  {
                    continue;
                  }

                  v133 = 0x100000;
                }
              }

              else if (v131 == 14)
              {
                v133 = 0x40000;
              }

              else
              {
                if (v131 != 20)
                {
                  continue;
                }

                v133 = 0x10000;
              }

              goto LABEL_319;
            }

            if (v131 > 3)
            {
              break;
            }

            if (v131 == 3)
            {
              v133 = 0x200000;
LABEL_319:
              *(a1 + 156) |= v133;
              continue;
            }

            if (!v131)
            {
              goto LABEL_321;
            }
          }

          if (v131 == 4)
          {
            v133 = 0x400000;
          }

          else
          {
            if (v131 != 5)
            {
              goto LABEL_302;
            }

            v133 = 0x80000;
          }

          goto LABEL_319;
        }

LABEL_321:
        if (v28)
        {
          v3 = ([v3 hasError] ^ 1);
        }

        else
        {
          v3 = 0;
        }

        if (v140)
        {
          v134 = *(a1 + 8);
          *(a1 + 8) = 0;
        }

        return v3;
      case 23:
        if (!v30)
        {
          goto LABEL_223;
        }

        if ((*(a1 + 158) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_328;
          }

          v126 = (*(a1 + 156) << 11) >> 31;
          goto LABEL_289;
        }

        v141 = 0;
        v142 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_328;
        }

        v42 = objc_alloc_init(GEONavTrayGuidance);
        if (!GEONavTrayGuidanceReadAllFrom(v42, v3, v136 & 1))
        {
          goto LABEL_327;
        }

        PBReaderRecallMark();
        v43 = 72;
        goto LABEL_222;
      default:
        if ((v137 & 1) == 0 || (*(a1 + 157) & 0x80) != 0)
        {
LABEL_223:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_328;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            v97 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v98 = *(a1 + 16);
            *(a1 + 16) = v97;
          }

          if (!PBUnknownFieldAdd())
          {
            v28 = 0;
            goto LABEL_298;
          }
        }

        goto LABEL_295;
    }
  }
}

id GEOGetStringConditionEvaluatorLog()
{
  if (GEOGetStringConditionEvaluatorLog_onceToken != -1)
  {
    dispatch_once(&GEOGetStringConditionEvaluatorLog_onceToken, &__block_literal_global_140307);
  }

  v1 = GEOGetStringConditionEvaluatorLog_log;

  return v1;
}

void *sub_1867AA47C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8FD2B8, &qword_187FBA288);
  v10 = *(type metadata accessor for GEONavigationListenerRemoteClient.GEOCellCoverageUnavailableSection(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for GEONavigationListenerRemoteClient.GEOCellCoverageUnavailableSection(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_1867AA654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(type metadata accessor for GEONavigationListenerRemoteClient.GEOCellCoverageUnavailableSection(0) - 8);
  v9 = *(v8 + 72);
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v12 = v11 + v9 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v10;
  if (__OFSUB__(a3, v10))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v9 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v12 + v15;
      v17 = v11 + v9 * a2;
      if (v12 + v15 < v17 || result >= v17 + (v16 - a2) * v9)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
LABEL_22:
    __break(1u);
    JUMPOUT(0x1867AA79CLL);
  }

  return result;
}

void sub_1867AA970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *GEOWaypointTypedReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 68))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOWaypointTypedReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 72));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 64) = objc_msgSend_position(v8);
  *(a1 + 68) = [v8 length];
  if (a3)
  {
    v9 = &GEOWaypointTypedReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOWaypointTypedReadAllFrom_initialTag;
  }

  Specified = GEOWaypointTypedReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOWaypointTypedCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 72));
  return Specified;
}

void *GEOWaypointTypedReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 72));
  [v3 setLength:*(a1 + 68)];
  [v3 seekToOffset:*(a1 + 64)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = (vaddv_s16((*&vshl_u16(vdup_n_s16(*(a1 + 96)), 0xFFF6FFF7FFF5FFF8) & 0xFF01FF01FF01FF01)) + ((*(a1 + 96) >> 7) & 1) + ((*(a1 + 96) >> 6) & 1));
  while (1)
  {
    v12 = a3[v6];
    if (v12 > -3)
    {
      break;
    }

    if (v12 == -4)
    {
      ++v11;
      v8 = 1;
      goto LABEL_15;
    }

    if (v12 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v11;
LABEL_15:
    ++v6;
  }

  if (v12 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v12 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v12)
  {
    goto LABEL_14;
  }

  v13 = v11 > 3;
  v14 = v13 & ~v10 | v8;
  v15 = v10 | v13;
  LODWORD(v85) = v14;
  HIDWORD(v85) = v15 | v8;
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v86 = (v16 == 0) | v15;
  v87 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3, v85);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_182:
      v26 = 1;
      goto LABEL_185;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v88) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v88 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v88 & 0x7F) << v18;
      if ((v88 & 0x80) == 0)
      {
        break;
      }

      v18 += 7;
      v24 = v19++ >= 9;
      if (v24)
      {
        v20 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v20 = 0;
    }

LABEL_33:
    v25 = [v3 hasError];
    v26 = 1;
    if ((v25 & 1) != 0 || (v20 & 7) == 4)
    {
      goto LABEL_185;
    }

    v27 = v20 >> 3;
    v28 = v87;
    if ((v86 & 1) == 0)
    {
      v29 = v16;
      do
      {
        v31 = *v29++;
        v30 = v31;
        v28 = v31 != 0;
        if (v31)
        {
          v32 = v30 == v27;
        }

        else
        {
          v32 = 1;
        }
      }

      while (!v32);
    }

    if (v27 > 5)
    {
      break;
    }

    if (v27 > 2)
    {
      if (v27 == 3)
      {
        if (!v28)
        {
          goto LABEL_146;
        }

        if ((*(a1 + 96) & 0x800) == 0)
        {
          v88 = 0;
          v89 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_184;
          }

          v33 = objc_alloc_init(GEOWaypointPlace);
          if (!GEOWaypointPlaceReadAllFrom(v33, v3, v9 & 1))
          {
            goto LABEL_183;
          }

          PBReaderRecallMark();
          v34 = 56;
          goto LABEL_139;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_184;
        }

        v78 = 16 * *(a1 + 96);
        goto LABEL_180;
      }

      if (v27 == 4)
      {
        if (!v28)
        {
          goto LABEL_146;
        }

        if ((*(a1 + 96) & 0x200) == 0)
        {
          v88 = 0;
          v89 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_184;
          }

          v33 = objc_alloc_init(GEOWaypointLocation);
          if (!GEOWaypointLocationReadAllFrom(v33, v3, v9 & 1))
          {
            goto LABEL_183;
          }

          PBReaderRecallMark();
          v34 = 40;
          goto LABEL_139;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_184;
        }

        v78 = *(a1 + 96) << 6;
        goto LABEL_180;
      }

      if ((v7 & 1) == 0)
      {
        goto LABEL_146;
      }

      v35 = 0;
      v36 = 0;
      v37 = 0;
      *(a1 + 96) |= 0x10u;
      while (1)
      {
        LOBYTE(v88) = 0;
        v38 = objc_msgSend_position(v3) + 1;
        if (v38 >= objc_msgSend_position(v3) && (v39 = objc_msgSend_position(v3) + 1, v39 <= [v3 length]))
        {
          v40 = [v3 data];
          [v40 getBytes:&v88 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v37 |= (v88 & 0x7F) << v35;
        if ((v88 & 0x80) == 0)
        {
          break;
        }

        v35 += 7;
        v24 = v36++ >= 9;
        if (v24)
        {
          v41 = 0;
          goto LABEL_161;
        }
      }

      v41 = (v37 != 0) & ~[v3 hasError];
LABEL_161:
      v77 = 92;
      goto LABEL_169;
    }

    if (v27 == 1)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_146;
      }

      v49 = 0;
      v50 = 0;
      v51 = 0;
      *(a1 + 96) |= 8u;
      while (1)
      {
        LOBYTE(v88) = 0;
        v52 = objc_msgSend_position(v3) + 1;
        if (v52 >= objc_msgSend_position(v3) && (v53 = objc_msgSend_position(v3) + 1, v53 <= [v3 length]))
        {
          v54 = [v3 data];
          [v54 getBytes:&v88 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v51 |= (v88 & 0x7F) << v49;
        if ((v88 & 0x80) == 0)
        {
          break;
        }

        v49 += 7;
        v24 = v50++ >= 9;
        if (v24)
        {
          v48 = 0;
          goto LABEL_151;
        }
      }

      if ([v3 hasError])
      {
        v48 = 0;
      }

      else
      {
        v48 = v51;
      }

LABEL_151:
      v76 = 88;
      goto LABEL_166;
    }

    if (v27 == 2)
    {
      if (!v28)
      {
        goto LABEL_146;
      }

      if ((*(a1 + 96) & 0x100) == 0)
      {
        v88 = 0;
        v89 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_184;
        }

        v33 = objc_alloc_init(GEOWaypointID);
        if (!GEOWaypointIDReadAllFrom(v33, v3, v9 & 1))
        {
          goto LABEL_183;
        }

        PBReaderRecallMark();
        v34 = 32;
        goto LABEL_139;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_184;
      }

      v78 = *(a1 + 96) << 7;
LABEL_180:
      v6 += v78 >> 15;
      goto LABEL_181;
    }

LABEL_140:
    if ((v85 & 1) == 0 || (*(a1 + 96) & 0x40) != 0)
    {
LABEL_146:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_184;
      }

      goto LABEL_181;
    }

    if (!*(a1 + 16))
    {
      v74 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v75 = *(a1 + 16);
      *(a1 + 16) = v74;
    }

    if (!PBUnknownFieldAdd())
    {
      v26 = 0;
      v84 = &OBJC_IVAR___GEORPTransitLineTileInfo__readerMarkLength;
      goto LABEL_186;
    }

LABEL_181:
    if (!(BYTE4(v85) & 1 | (v6 != 0)))
    {
      goto LABEL_182;
    }
  }

  if (v27 <= 8)
  {
    if (v27 != 6)
    {
      if (v27 == 7)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_146;
        }

        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 96) |= 4u;
        while (1)
        {
          LOBYTE(v88) = 0;
          v58 = objc_msgSend_position(v3) + 1;
          if (v58 >= objc_msgSend_position(v3) && (v59 = objc_msgSend_position(v3) + 1, v59 <= [v3 length]))
          {
            v60 = [v3 data];
            [v60 getBytes:&v88 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v57 |= (v88 & 0x7F) << v55;
          if ((v88 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v24 = v56++ >= 9;
          if (v24)
          {
            v48 = 0;
            goto LABEL_155;
          }
        }

        if ([v3 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v57;
        }

LABEL_155:
        v76 = 84;
        goto LABEL_166;
      }

      if (!v28)
      {
        goto LABEL_146;
      }

      if ((*(a1 + 96) & 0x400) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_184;
        }

        v78 = 32 * *(a1 + 96);
        goto LABEL_180;
      }

      v88 = 0;
      v89 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_184;
      }

      v33 = objc_alloc_init(GEOWaypointNameProperties);
      if (!GEOWaypointNamePropertiesReadAllFrom(v33, v3))
      {
        goto LABEL_183;
      }

      PBReaderRecallMark();
      v34 = 48;
LABEL_139:
      v73 = *(a1 + v34);
      *(a1 + v34) = v33;

      --v6;
      goto LABEL_181;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_146;
    }

    v67 = 0;
    v68 = 0;
    v69 = 0;
    *(a1 + 96) |= 0x20u;
    while (1)
    {
      LOBYTE(v88) = 0;
      v70 = objc_msgSend_position(v3) + 1;
      if (v70 >= objc_msgSend_position(v3) && (v71 = objc_msgSend_position(v3) + 1, v71 <= [v3 length]))
      {
        v72 = [v3 data];
        [v72 getBytes:&v88 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v69 |= (v88 & 0x7F) << v67;
      if ((v88 & 0x80) == 0)
      {
        break;
      }

      v67 += 7;
      v24 = v68++ >= 9;
      if (v24)
      {
        v41 = 0;
        goto LABEL_168;
      }
    }

    v41 = (v69 != 0) & ~[v3 hasError];
LABEL_168:
    v77 = 93;
LABEL_169:
    *(a1 + v77) = v41;
    goto LABEL_181;
  }

  if (v27 != 9)
  {
    if (v27 == 10)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_146;
      }

      v61 = 0;
      v62 = 0;
      v63 = 0;
      *(a1 + 96) |= 1u;
      while (1)
      {
        LOBYTE(v88) = 0;
        v64 = objc_msgSend_position(v3) + 1;
        if (v64 >= objc_msgSend_position(v3) && (v65 = objc_msgSend_position(v3) + 1, v65 <= [v3 length]))
        {
          v66 = [v3 data];
          [v66 getBytes:&v88 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v63 |= (v88 & 0x7F) << v61;
        if ((v88 & 0x80) == 0)
        {
          break;
        }

        v61 += 7;
        v24 = v62++ >= 9;
        if (v24)
        {
          v48 = 0;
          goto LABEL_159;
        }
      }

      if ([v3 hasError])
      {
        v48 = 0;
      }

      else
      {
        v48 = v63;
      }

LABEL_159:
      v76 = 76;
      goto LABEL_166;
    }

    if (v27 == 11)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_146;
      }

      v42 = 0;
      v43 = 0;
      v44 = 0;
      *(a1 + 96) |= 2u;
      while (1)
      {
        LOBYTE(v88) = 0;
        v45 = objc_msgSend_position(v3) + 1;
        if (v45 >= objc_msgSend_position(v3) && (v46 = objc_msgSend_position(v3) + 1, v46 <= [v3 length]))
        {
          v47 = [v3 data];
          [v47 getBytes:&v88 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v44 |= (v88 & 0x7F) << v42;
        if ((v88 & 0x80) == 0)
        {
          break;
        }

        v42 += 7;
        v24 = v43++ >= 9;
        if (v24)
        {
          v48 = 0;
          goto LABEL_165;
        }
      }

      if ([v3 hasError])
      {
        v48 = 0;
      }

      else
      {
        v48 = v44;
      }

LABEL_165:
      v76 = 80;
LABEL_166:
      *(a1 + v76) = v48;
      goto LABEL_181;
    }

    goto LABEL_140;
  }

  if (!v28)
  {
    goto LABEL_146;
  }

  if ((*(a1 + 96) & 0x80) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_184;
    }

    v78 = *(a1 + 96) << 8;
    goto LABEL_180;
  }

  v88 = 0;
  v89 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_184;
  }

  v33 = objc_alloc_init(GEOWaypointUUID);
  if (GEOWaypointUUIDReadAllFrom(v33, v3))
  {
    PBReaderRecallMark();
    v34 = 24;
    goto LABEL_139;
  }

LABEL_183:

LABEL_184:
  v26 = 0;
LABEL_185:
  v84 = &OBJC_IVAR___GEORPTransitLineTileInfo__readerMarkLength;
  if ((v85 & 1) == 0)
  {
    goto LABEL_187;
  }

LABEL_186:
  *(a1 + v84[579]) |= 0x40u;
LABEL_187:
  if (v87 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + v84[579]) |= 0x100u;
    *(a1 + v84[579]) |= 0x800u;
    *(a1 + v84[579]) |= 0x200u;
    *(a1 + v84[579]) |= 0x400u;
    *(a1 + v84[579]) |= 0x80u;
    goto LABEL_203;
  }

  if (v16)
  {
    while (1)
    {
      v80 = *v16++;
      v79 = v80;
      if (v80 > 3)
      {
        switch(v79)
        {
          case 4:
            v81 = 512;
            break;
          case 8:
            v81 = 1024;
            break;
          case 9:
            v81 = 128;
            break;
          default:
            continue;
        }

        goto LABEL_201;
      }

      if (v79 == 2)
      {
        break;
      }

      if (v79 == 3)
      {
        v81 = 2048;
LABEL_201:
        *(a1 + v84[579]) |= v81;
        continue;
      }

      if (!v79)
      {
        goto LABEL_203;
      }
    }

    v81 = 256;
    goto LABEL_201;
  }

LABEL_203:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v87)
  {
    v82 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEOClientCapabilitiesReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 236))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOClientCapabilitiesReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 240));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 232) = objc_msgSend_position(v8);
  *(a1 + 236) = [v8 length];
  if (a3)
  {
    v9 = &GEOClientCapabilitiesReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOClientCapabilitiesReadAllFrom_initialTag;
  }

  Specified = GEOClientCapabilitiesReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOClientCapabilitiesCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 240));
  return Specified;
}

void *GEORouteAttributesReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 172))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEORouteAttributesReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 176));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 168) = objc_msgSend_position(v8);
  *(a1 + 172) = [v8 length];
  if (a3)
  {
    v9 = &GEORouteAttributesReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEORouteAttributesReadAllFrom_initialTag;
  }

  Specified = GEORouteAttributesReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEORouteAttributesCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 176));
  return Specified;
}

void *GEORouteAttributesReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 176));
  [v3 setLength:*(a1 + 172)];
  [v3 seekToOffset:*(a1 + 168)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *(a1 + 216);
  v12 = vdupq_n_s32(v11);
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  v14 = vaddvq_s32(vaddq_s32(vandq_s8(vshlq_u32(v12, xmmword_187FBD9F0), v13), (*&vshlq_u32(v12, xmmword_187FBD9E0) & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)))) + ((v11 >> 22) & 1) + (v11 >> 31);
  while (1)
  {
    v15 = a3[v6];
    if (v15 > -3)
    {
      break;
    }

    if (v15 == -4)
    {
      ++v14;
      v8 = 1;
      goto LABEL_15;
    }

    if (v15 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v14;
LABEL_15:
    ++v6;
  }

  if (v15 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v15 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v15)
  {
    goto LABEL_14;
  }

  v16 = v14 > 6;
  v218 = v9;
  v219 = v16 & ~v10 | v8;
  v17 = v10 | v16;
  if ((v10 | v16 | v7))
  {
    v18 = 0;
  }

  else
  {
    v18 = a3;
  }

  v19 = objc_msgSend_position(v3);
  if (v19 >= [v3 length])
  {
LABEL_447:
    v28 = 1;
    goto LABEL_448;
  }

  v220 = v17 | v8;
  v221 = (v18 == 0) | v17;
  v222 = v17;
  while (2)
  {
    if ([v3 hasError])
    {
      goto LABEL_447;
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    while (1)
    {
      LOBYTE(v223) = 0;
      v23 = objc_msgSend_position(v3) + 1;
      if (v23 >= objc_msgSend_position(v3) && (v24 = objc_msgSend_position(v3) + 1, v24 <= [v3 length]))
      {
        v25 = [v3 data];
        [v25 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v22 |= (v223 & 0x7F) << v20;
      if ((v223 & 0x80) == 0)
      {
        break;
      }

      v20 += 7;
      v26 = v21++ >= 9;
      if (v26)
      {
        v22 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v22 = 0;
    }

LABEL_33:
    v27 = [v3 hasError];
    v28 = 1;
    v17 = v222;
    if (v27)
    {
      goto LABEL_448;
    }

    v29 = v22 & 7;
    if (v29 == 4)
    {
      goto LABEL_448;
    }

    v30 = v22 >> 3;
    v31 = v222;
    if ((v221 & 1) == 0)
    {
      v32 = v18;
      do
      {
        v34 = *v32++;
        v33 = v34;
        v31 = v34 != 0;
        if (v34)
        {
          v35 = v33 == v30;
        }

        else
        {
          v35 = 1;
        }
      }

      while (!v35);
    }

    switch(v30)
    {
      case 1:
        if ((v7 & 1) == 0)
        {
          goto LABEL_344;
        }

        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 216) |= 8uLL;
        while (1)
        {
          LOBYTE(v223) = 0;
          v39 = objc_msgSend_position(v3) + 1;
          if (v39 >= objc_msgSend_position(v3) && (v40 = objc_msgSend_position(v3) + 1, v40 <= [v3 length]))
          {
            v41 = [v3 data];
            [v41 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v38 |= (v223 & 0x7F) << v36;
          if ((v223 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v26 = v37++ >= 9;
          if (v26)
          {
            v42 = 0;
LABEL_378:
            v191 = 188;
            goto LABEL_389;
          }
        }

        if ([v3 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v38;
        }

        goto LABEL_378;
      case 2:
        if ((v7 & 1) == 0)
        {
          goto LABEL_344;
        }

        v132 = 0;
        v133 = 0;
        v134 = 0;
        *(a1 + 216) |= 0x1000uLL;
        while (1)
        {
          LOBYTE(v223) = 0;
          v135 = objc_msgSend_position(v3) + 1;
          if (v135 >= objc_msgSend_position(v3) && (v136 = objc_msgSend_position(v3) + 1, v136 <= [v3 length]))
          {
            v137 = [v3 data];
            [v137 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v134 |= (v223 & 0x7F) << v132;
          if ((v223 & 0x80) == 0)
          {
            break;
          }

          v132 += 7;
          v26 = v133++ >= 9;
          if (v26)
          {
            v68 = 0;
            goto LABEL_380;
          }
        }

        v68 = (v134 != 0) & ~[v3 hasError];
LABEL_380:
        v192 = 206;
        goto LABEL_400;
      case 3:
        if ((v7 & 1) == 0)
        {
          goto LABEL_344;
        }

        v100 = 0;
        v101 = 0;
        v102 = 0;
        *(a1 + 216) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v223) = 0;
          v103 = objc_msgSend_position(v3) + 1;
          if (v103 >= objc_msgSend_position(v3) && (v104 = objc_msgSend_position(v3) + 1, v104 <= [v3 length]))
          {
            v105 = [v3 data];
            [v105 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v102 |= (v223 & 0x7F) << v100;
          if ((v223 & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v26 = v101++ >= 9;
          if (v26)
          {
            v68 = 0;
            goto LABEL_366;
          }
        }

        v68 = (v102 != 0) & ~[v3 hasError];
LABEL_366:
        v192 = 205;
        goto LABEL_400;
      case 4:
        if ((v7 & 1) == 0)
        {
          goto LABEL_344;
        }

        v165 = 0;
        v166 = 0;
        v167 = 0;
        *(a1 + 216) |= 0x8000uLL;
        while (1)
        {
          LOBYTE(v223) = 0;
          v168 = objc_msgSend_position(v3) + 1;
          if (v168 >= objc_msgSend_position(v3) && (v169 = objc_msgSend_position(v3) + 1, v169 <= [v3 length]))
          {
            v170 = [v3 data];
            [v170 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v167 |= (v223 & 0x7F) << v165;
          if ((v223 & 0x80) == 0)
          {
            break;
          }

          v165 += 7;
          v26 = v166++ >= 9;
          if (v26)
          {
            v68 = 0;
            goto LABEL_393;
          }
        }

        v68 = (v167 != 0) & ~[v3 hasError];
LABEL_393:
        v192 = 209;
        goto LABEL_400;
      case 5:
        if ((v7 & 1) == 0)
        {
          goto LABEL_344;
        }

        v171 = 0;
        v172 = 0;
        v173 = 0;
        *(a1 + 216) |= 0x100uLL;
        while (1)
        {
          LOBYTE(v223) = 0;
          v174 = objc_msgSend_position(v3) + 1;
          if (v174 >= objc_msgSend_position(v3) && (v175 = objc_msgSend_position(v3) + 1, v175 <= [v3 length]))
          {
            v176 = [v3 data];
            [v176 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v173 |= (v223 & 0x7F) << v171;
          if ((v223 & 0x80) == 0)
          {
            break;
          }

          v171 += 7;
          v26 = v172++ >= 9;
          if (v26)
          {
            v68 = 0;
            goto LABEL_395;
          }
        }

        v68 = (v173 != 0) & ~[v3 hasError];
LABEL_395:
        v192 = 202;
        goto LABEL_400;
      case 6:
        if ((v7 & 1) == 0)
        {
          goto LABEL_344;
        }

        v112 = 0;
        v113 = 0;
        v114 = 0;
        *(a1 + 216) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v223) = 0;
          v115 = objc_msgSend_position(v3) + 1;
          if (v115 >= objc_msgSend_position(v3) && (v116 = objc_msgSend_position(v3) + 1, v116 <= [v3 length]))
          {
            v117 = [v3 data];
            [v117 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v114 |= (v223 & 0x7F) << v112;
          if ((v223 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v26 = v113++ >= 9;
          if (v26)
          {
            v68 = 0;
            goto LABEL_370;
          }
        }

        v68 = (v114 != 0) & ~[v3 hasError];
LABEL_370:
        v192 = 204;
        goto LABEL_400;
      case 7:
        if ((v7 & 1) == 0)
        {
          goto LABEL_344;
        }

        v138 = 0;
        v139 = 0;
        v140 = 0;
        *(a1 + 216) |= 2uLL;
        while (1)
        {
          LOBYTE(v223) = 0;
          v141 = objc_msgSend_position(v3) + 1;
          if (v141 >= objc_msgSend_position(v3) && (v142 = objc_msgSend_position(v3) + 1, v142 <= [v3 length]))
          {
            v143 = [v3 data];
            [v143 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v140 |= (v223 & 0x7F) << v138;
          if ((v223 & 0x80) == 0)
          {
            break;
          }

          v138 += 7;
          v26 = v139++ >= 9;
          if (v26)
          {
            v42 = 0;
            goto LABEL_384;
          }
        }

        if ([v3 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v140;
        }

LABEL_384:
        v191 = 180;
        goto LABEL_389;
      case 8:
        if ((v7 & 1) == 0)
        {
          goto LABEL_344;
        }

        v144 = 0;
        v145 = 0;
        v146 = 0;
        *(a1 + 216) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v223) = 0;
          v147 = objc_msgSend_position(v3) + 1;
          if (v147 >= objc_msgSend_position(v3) && (v148 = objc_msgSend_position(v3) + 1, v148 <= [v3 length]))
          {
            v149 = [v3 data];
            [v149 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v146 |= (v223 & 0x7F) << v144;
          if ((v223 & 0x80) == 0)
          {
            break;
          }

          v144 += 7;
          v26 = v145++ >= 9;
          if (v26)
          {
            v42 = 0;
            goto LABEL_388;
          }
        }

        if ([v3 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v146;
        }

LABEL_388:
        v191 = 192;
        goto LABEL_389;
      case 9:
        if (!v31)
        {
          goto LABEL_344;
        }

        if ((*(a1 + 219) & 0x20) == 0)
        {
          v183 = PBReaderReadString();
          v184 = *(a1 + 144);
          *(a1 + 144) = v183;
          goto LABEL_343;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_483;
        }

        v194 = *(a1 + 216) << 34;
        goto LABEL_417;
      case 10:
        if ((v7 & 1) == 0)
        {
          goto LABEL_344;
        }

        v177 = 0;
        v178 = 0;
        v179 = 0;
        *(a1 + 216) |= 0x2000uLL;
        while (1)
        {
          LOBYTE(v223) = 0;
          v180 = objc_msgSend_position(v3) + 1;
          if (v180 >= objc_msgSend_position(v3) && (v181 = objc_msgSend_position(v3) + 1, v181 <= [v3 length]))
          {
            v182 = [v3 data];
            [v182 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v179 |= (v223 & 0x7F) << v177;
          if ((v223 & 0x80) == 0)
          {
            break;
          }

          v177 += 7;
          v26 = v178++ >= 9;
          if (v26)
          {
            v68 = 0;
            goto LABEL_397;
          }
        }

        v68 = (v179 != 0) & ~[v3 hasError];
LABEL_397:
        v192 = 207;
        goto LABEL_400;
      case 11:
        if ((v7 & 1) == 0)
        {
          goto LABEL_344;
        }

        v223 = 0;
        v224 = 0;
        if (!PBReaderPlaceMark() || (GEOTimepointReadAllFrom(a1 + 96, v3) & 1) == 0)
        {
          goto LABEL_483;
        }

        PBReaderRecallMark();
        *(a1 + 216) |= 1uLL;
        goto LABEL_402;
      case 12:
        if ((v7 & 1) == 0)
        {
          goto LABEL_344;
        }

        v118 = 0;
        v119 = 0;
        v120 = 0;
        *(a1 + 216) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v223) = 0;
          v121 = objc_msgSend_position(v3) + 1;
          if (v121 >= objc_msgSend_position(v3) && (v122 = objc_msgSend_position(v3) + 1, v122 <= [v3 length]))
          {
            v123 = [v3 data];
            [v123 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v120 |= (v223 & 0x7F) << v118;
          if ((v223 & 0x80) == 0)
          {
            break;
          }

          v118 += 7;
          v26 = v119++ >= 9;
          if (v26)
          {
            v68 = 0;
            goto LABEL_372;
          }
        }

        v68 = (v120 != 0) & ~[v3 hasError];
LABEL_372:
        v192 = 203;
        goto LABEL_400;
      case 14:
        if ((v7 & 1) == 0)
        {
          goto LABEL_344;
        }

        v88 = 0;
        v89 = 0;
        v90 = 0;
        *(a1 + 216) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v223) = 0;
          v91 = objc_msgSend_position(v3) + 1;
          if (v91 >= objc_msgSend_position(v3) && (v92 = objc_msgSend_position(v3) + 1, v92 <= [v3 length]))
          {
            v93 = [v3 data];
            [v93 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v90 |= (v223 & 0x7F) << v88;
          if ((v223 & 0x80) == 0)
          {
            break;
          }

          v88 += 7;
          v26 = v89++ >= 9;
          if (v26)
          {
            v68 = 0;
            goto LABEL_362;
          }
        }

        v68 = (v90 != 0) & ~[v3 hasError];
LABEL_362:
        v192 = 208;
        goto LABEL_400;
      case 15:
        if ((v7 & 1) == 0)
        {
          goto LABEL_344;
        }

        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 216) |= 0x20uLL;
        while (1)
        {
          LOBYTE(v223) = 0;
          v59 = objc_msgSend_position(v3) + 1;
          if (v59 >= objc_msgSend_position(v3) && (v60 = objc_msgSend_position(v3) + 1, v60 <= [v3 length]))
          {
            v61 = [v3 data];
            [v61 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v58 |= (v223 & 0x7F) << v56;
          if ((v223 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v26 = v57++ >= 9;
          if (v26)
          {
            v42 = 0;
            goto LABEL_354;
          }
        }

        if ([v3 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v58;
        }

LABEL_354:
        v191 = 196;
        goto LABEL_389;
      case 16:
        if (!v31 || (*(a1 + 218) & 0x80) != 0)
        {
          goto LABEL_344;
        }

        if (v29 == 2)
        {
          v223 = 0;
          v224 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_483;
          }

          while (1)
          {
            v150 = objc_msgSend_position(v3);
            if (v150 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
            {
              break;
            }

            v151 = 0;
            v152 = 0;
            v153 = 0;
            while (1)
            {
              v225 = 0;
              v154 = objc_msgSend_position(v3) + 1;
              if (v154 >= objc_msgSend_position(v3) && (v155 = objc_msgSend_position(v3) + 1, v155 <= [v3 length]))
              {
                v156 = [v3 data];
                [v156 getBytes:&v225 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v153 |= (v225 & 0x7F) << v151;
              if ((v225 & 0x80) == 0)
              {
                break;
              }

              v151 += 7;
              v26 = v152++ >= 9;
              if (v26)
              {
                goto LABEL_263;
              }
            }

            [v3 hasError];
LABEL_263:
            PBRepeatedInt32Add();
          }

LABEL_346:
          PBReaderRecallMark();
        }

        else
        {
          v207 = 0;
          v208 = 0;
          v209 = 0;
          while (1)
          {
            LOBYTE(v223) = 0;
            v210 = objc_msgSend_position(v3) + 1;
            if (v210 >= objc_msgSend_position(v3) && (v211 = objc_msgSend_position(v3) + 1, v211 <= [v3 length]))
            {
              v212 = [v3 data];
              [v212 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v209 |= (v223 & 0x7F) << v207;
            if ((v223 & 0x80) == 0)
            {
              break;
            }

            v207 += 7;
            v26 = v208++ >= 9;
            if (v26)
            {
              goto LABEL_446;
            }
          }

LABEL_445:
          [v3 hasError];
LABEL_446:
          PBRepeatedInt32Add();
        }

LABEL_401:
        v17 = v222;
        goto LABEL_402;
      case 17:
        if (!v31)
        {
          goto LABEL_344;
        }

        if ((*(a1 + 219) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_483;
          }

          v194 = *(a1 + 216) << 37;
          goto LABEL_417;
        }

        v223 = 0;
        v224 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_483;
        }

        v157 = objc_alloc_init(GEOAutomobileOptions);
        if (!GEOAutomobileOptionsReadAllFrom(v157, v3, v218 & 1))
        {
          goto LABEL_482;
        }

        PBReaderRecallMark();
        v158 = 120;
        goto LABEL_342;
      case 18:
        if (!v31)
        {
          goto LABEL_344;
        }

        if ((*(a1 + 219) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_483;
          }

          v194 = *(a1 + 216) << 33;
          goto LABEL_417;
        }

        v223 = 0;
        v224 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_483;
        }

        v157 = objc_alloc_init(GEOTransitOptions);
        if (!GEOTransitOptionsReadAllFrom(v157, v3, v218 & 1))
        {
          goto LABEL_482;
        }

        PBReaderRecallMark();
        v158 = 152;
        goto LABEL_342;
      case 19:
        if (!v31)
        {
          goto LABEL_344;
        }

        if ((*(a1 + 219) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_483;
          }

          v194 = *(a1 + 216) << 32;
          goto LABEL_417;
        }

        v223 = 0;
        v224 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_483;
        }

        v157 = objc_alloc_init(GEOWalkingOptions);
        if (!GEOWalkingOptionsReadAllFrom(v157, v3, v218 & 1))
        {
          goto LABEL_482;
        }

        PBReaderRecallMark();
        v158 = 160;
        goto LABEL_342;
      case 20:
        if (!v31 || (*(a1 + 219) & 2) != 0)
        {
          goto LABEL_344;
        }

        if (v29 != 2)
        {
          v195 = 0;
          v196 = 0;
          v197 = 0;
          while (1)
          {
            LOBYTE(v223) = 0;
            v198 = objc_msgSend_position(v3) + 1;
            if (v198 >= objc_msgSend_position(v3) && (v199 = objc_msgSend_position(v3) + 1, v199 <= [v3 length]))
            {
              v200 = [v3 data];
              [v200 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v197 |= (v223 & 0x7F) << v195;
            if ((v223 & 0x80) == 0)
            {
              goto LABEL_445;
            }

            v195 += 7;
            v26 = v196++ >= 9;
            if (v26)
            {
              goto LABEL_446;
            }
          }
        }

        v223 = 0;
        v224 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_483;
        }

        while (1)
        {
          v43 = objc_msgSend_position(v3);
          if (v43 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_346;
          }

          v44 = 0;
          v45 = 0;
          v46 = 0;
          while (1)
          {
            v225 = 0;
            v47 = objc_msgSend_position(v3) + 1;
            if (v47 >= objc_msgSend_position(v3) && (v48 = objc_msgSend_position(v3) + 1, v48 <= [v3 length]))
            {
              v49 = [v3 data];
              [v49 getBytes:&v225 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v46 |= (v225 & 0x7F) << v44;
            if ((v225 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v26 = v45++ >= 9;
            if (v26)
            {
              goto LABEL_69;
            }
          }

          [v3 hasError];
LABEL_69:
          PBRepeatedInt32Add();
        }

      case 21:
        if ((v7 & 1) == 0)
        {
          goto LABEL_344;
        }

        v94 = 0;
        v95 = 0;
        v96 = 0;
        *(a1 + 216) |= 0x200000uLL;
        while (1)
        {
          LOBYTE(v223) = 0;
          v97 = objc_msgSend_position(v3) + 1;
          if (v97 >= objc_msgSend_position(v3) && (v98 = objc_msgSend_position(v3) + 1, v98 <= [v3 length]))
          {
            v99 = [v3 data];
            [v99 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v96 |= (v223 & 0x7F) << v94;
          if ((v223 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v26 = v95++ >= 9;
          if (v26)
          {
            v68 = 0;
            goto LABEL_364;
          }
        }

        v68 = (v96 != 0) & ~[v3 hasError];
LABEL_364:
        v192 = 215;
        goto LABEL_400;
      case 30:
        if (!v31)
        {
          goto LABEL_344;
        }

        if ((*(a1 + 219) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_483;
          }

          v194 = *(a1 + 216) << 35;
          goto LABEL_417;
        }

        v223 = 0;
        v224 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_483;
        }

        v157 = objc_alloc_init(GEOWaypointNameProperties);
        if (!GEOWaypointNamePropertiesReadAllFrom(v157, v3))
        {
          goto LABEL_482;
        }

        PBReaderRecallMark();
        v158 = 136;
        goto LABEL_342;
      case 31:
        if ((v7 & 1) == 0)
        {
          goto LABEL_344;
        }

        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 216) |= 4uLL;
        while (1)
        {
          LOBYTE(v223) = 0;
          v53 = objc_msgSend_position(v3) + 1;
          if (v53 >= objc_msgSend_position(v3) && (v54 = objc_msgSend_position(v3) + 1, v54 <= [v3 length]))
          {
            v55 = [v3 data];
            [v55 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v52 |= (v223 & 0x7F) << v50;
          if ((v223 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v26 = v51++ >= 9;
          if (v26)
          {
            v42 = 0;
            goto LABEL_350;
          }
        }

        if ([v3 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v52;
        }

LABEL_350:
        v191 = 184;
LABEL_389:
        *(a1 + v191) = v42;
        goto LABEL_401;
      case 32:
        if ((v7 & 1) == 0)
        {
          goto LABEL_344;
        }

        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(a1 + 216) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v223) = 0;
          v85 = objc_msgSend_position(v3) + 1;
          if (v85 >= objc_msgSend_position(v3) && (v86 = objc_msgSend_position(v3) + 1, v86 <= [v3 length]))
          {
            v87 = [v3 data];
            [v87 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v84 |= (v223 & 0x7F) << v82;
          if ((v223 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v26 = v83++ >= 9;
          if (v26)
          {
            v68 = 0;
            goto LABEL_360;
          }
        }

        v68 = (v84 != 0) & ~[v3 hasError];
LABEL_360:
        v192 = 211;
        goto LABEL_400;
      case 33:
        if ((v7 & 1) == 0)
        {
          goto LABEL_344;
        }

        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 216) |= 0x80uLL;
        while (1)
        {
          LOBYTE(v223) = 0;
          v72 = objc_msgSend_position(v3) + 1;
          if (v72 >= objc_msgSend_position(v3) && (v73 = objc_msgSend_position(v3) + 1, v73 <= [v3 length]))
          {
            v74 = [v3 data];
            [v74 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v71 |= (v223 & 0x7F) << v69;
          if ((v223 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v26 = v70++ >= 9;
          if (v26)
          {
            v68 = 0;
            goto LABEL_358;
          }
        }

        v68 = (v71 != 0) & ~[v3 hasError];
LABEL_358:
        v192 = 201;
        goto LABEL_400;
      case 34:
        if ((v7 & 1) == 0)
        {
          goto LABEL_344;
        }

        v126 = 0;
        v127 = 0;
        v128 = 0;
        *(a1 + 216) |= 0x40uLL;
        while (1)
        {
          LOBYTE(v223) = 0;
          v129 = objc_msgSend_position(v3) + 1;
          if (v129 >= objc_msgSend_position(v3) && (v130 = objc_msgSend_position(v3) + 1, v130 <= [v3 length]))
          {
            v131 = [v3 data];
            [v131 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v128 |= (v223 & 0x7F) << v126;
          if ((v223 & 0x80) == 0)
          {
            break;
          }

          v126 += 7;
          v26 = v127++ >= 9;
          if (v26)
          {
            v68 = 0;
            goto LABEL_374;
          }
        }

        v68 = (v128 != 0) & ~[v3 hasError];
LABEL_374:
        v192 = 200;
        goto LABEL_400;
      case 35:
        if ((v7 & 1) == 0)
        {
          goto LABEL_344;
        }

        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 216) |= 0x40000uLL;
        while (1)
        {
          LOBYTE(v223) = 0;
          v65 = objc_msgSend_position(v3) + 1;
          if (v65 >= objc_msgSend_position(v3) && (v66 = objc_msgSend_position(v3) + 1, v66 <= [v3 length]))
          {
            v67 = [v3 data];
            [v67 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v64 |= (v223 & 0x7F) << v62;
          if ((v223 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v26 = v63++ >= 9;
          if (v26)
          {
            v68 = 0;
            goto LABEL_356;
          }
        }

        v68 = (v64 != 0) & ~[v3 hasError];
LABEL_356:
        v192 = 212;
        goto LABEL_400;
      case 36:
        if (!v31)
        {
          goto LABEL_344;
        }

        if ((*(a1 + 219) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_483;
          }

          v194 = *(a1 + 216) << 36;
LABEL_417:
          v6 += v194 >> 63;
LABEL_402:
          if (!(v220 & 1 | (v6 != 0)))
          {
            goto LABEL_447;
          }

          v193 = objc_msgSend_position(v3);
          if (v193 >= [v3 length])
          {
            goto LABEL_447;
          }

          continue;
        }

        v223 = 0;
        v224 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_483;
        }

        v157 = objc_alloc_init(GEOCyclingOptions);
        if (GEOCyclingOptionsReadAllFrom(v157, v3, v218 & 1))
        {
          PBReaderRecallMark();
          v158 = 128;
LABEL_342:
          v184 = *(a1 + v158);
          *(a1 + v158) = v157;
LABEL_343:

          --v6;
          goto LABEL_402;
        }

LABEL_482:

LABEL_483:
        v28 = 0;
LABEL_448:
        if (v219)
        {
LABEL_449:
          *(a1 + 216) |= 0x400000uLL;
        }

        if (v17 & 1 | ((v28 & 1) == 0))
        {
          *(a1 + 216) |= 0xFF800000uLL;
          goto LABEL_476;
        }

        if (v18)
        {
          while (1)
          {
            v214 = *v18++;
            v213 = v214;
            if (v214 > 18)
            {
              if (v213 <= 29)
              {
                if (v213 == 19)
                {
                  v215 = 0x80000000;
                }

                else
                {
                  if (v213 != 20)
                  {
                    continue;
                  }

                  v215 = 0x2000000;
                }
              }

              else
              {
                switch(v213)
                {
                  case 30:
                    v215 = 0x10000000;
                    break;
                  case 36:
                    v215 = 0x8000000;
                    break;
                  case 38:
                    v215 = 0x1000000;
                    break;
                  default:
                    continue;
                }
              }

              goto LABEL_474;
            }

            if (v213 > 16)
            {
              if (v213 == 17)
              {
                v215 = 0x4000000;
              }

              else
              {
                if (v213 != 18)
                {
                  continue;
                }

                v215 = 0x40000000;
              }

              goto LABEL_474;
            }

            if (v213 == 9)
            {
              break;
            }

            if (v213 == 16)
            {
              v215 = 0x800000;
LABEL_474:
              *(a1 + 216) |= v215;
              continue;
            }

            if (!v213)
            {
              goto LABEL_476;
            }
          }

          v215 = 0x20000000;
          goto LABEL_474;
        }

LABEL_476:
        if (v28)
        {
          v3 = ([v3 hasError] ^ 1);
          if ((v17 & 1) == 0)
          {
            return v3;
          }

LABEL_480:
          v216 = *(a1 + 8);
          *(a1 + 8) = 0;
        }

        else
        {
          v3 = 0;
          if (v17)
          {
            goto LABEL_480;
          }
        }

        return v3;
      case 37:
        if ((v7 & 1) == 0)
        {
          goto LABEL_344;
        }

        v185 = 0;
        v186 = 0;
        v187 = 0;
        *(a1 + 216) |= 0x100000uLL;
        while (1)
        {
          LOBYTE(v223) = 0;
          v188 = objc_msgSend_position(v3) + 1;
          if (v188 >= objc_msgSend_position(v3) && (v189 = objc_msgSend_position(v3) + 1, v189 <= [v3 length]))
          {
            v190 = [v3 data];
            [v190 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v187 |= (v223 & 0x7F) << v185;
          if ((v223 & 0x80) == 0)
          {
            break;
          }

          v185 += 7;
          v26 = v186++ >= 9;
          if (v26)
          {
            v68 = 0;
            goto LABEL_399;
          }
        }

        v68 = (v187 != 0) & ~[v3 hasError];
LABEL_399:
        v192 = 214;
        goto LABEL_400;
      case 38:
        if (!v31 || (*(a1 + 219) & 1) != 0)
        {
          goto LABEL_344;
        }

        if (v29 != 2)
        {
          v201 = 0;
          v202 = 0;
          v203 = 0;
          while (1)
          {
            LOBYTE(v223) = 0;
            v204 = objc_msgSend_position(v3) + 1;
            if (v204 >= objc_msgSend_position(v3) && (v205 = objc_msgSend_position(v3) + 1, v205 <= [v3 length]))
            {
              v206 = [v3 data];
              [v206 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v203 |= (v223 & 0x7F) << v201;
            if ((v223 & 0x80) == 0)
            {
              goto LABEL_445;
            }

            v201 += 7;
            v26 = v202++ >= 9;
            if (v26)
            {
              goto LABEL_446;
            }
          }
        }

        v223 = 0;
        v224 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_483;
        }

        while (1)
        {
          v75 = objc_msgSend_position(v3);
          if (v75 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_346;
          }

          v76 = 0;
          v77 = 0;
          v78 = 0;
          while (1)
          {
            v225 = 0;
            v79 = objc_msgSend_position(v3) + 1;
            if (v79 >= objc_msgSend_position(v3) && (v80 = objc_msgSend_position(v3) + 1, v80 <= [v3 length]))
            {
              v81 = [v3 data];
              [v81 getBytes:&v225 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v78 |= (v225 & 0x7F) << v76;
            if ((v225 & 0x80) == 0)
            {
              break;
            }

            v76 += 7;
            v26 = v77++ >= 9;
            if (v26)
            {
              goto LABEL_130;
            }
          }

          [v3 hasError];
LABEL_130:
          PBRepeatedInt32Add();
        }

      case 39:
        if ((v7 & 1) == 0)
        {
          goto LABEL_344;
        }

        v106 = 0;
        v107 = 0;
        v108 = 0;
        *(a1 + 216) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v223) = 0;
          v109 = objc_msgSend_position(v3) + 1;
          if (v109 >= objc_msgSend_position(v3) && (v110 = objc_msgSend_position(v3) + 1, v110 <= [v3 length]))
          {
            v111 = [v3 data];
            [v111 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v108 |= (v223 & 0x7F) << v106;
          if ((v223 & 0x80) == 0)
          {
            break;
          }

          v106 += 7;
          v26 = v107++ >= 9;
          if (v26)
          {
            v68 = 0;
            goto LABEL_368;
          }
        }

        v68 = (v108 != 0) & ~[v3 hasError];
LABEL_368:
        v192 = 210;
        goto LABEL_400;
      case 40:
        if ((v7 & 1) == 0)
        {
          goto LABEL_344;
        }

        v159 = 0;
        v160 = 0;
        v161 = 0;
        *(a1 + 216) |= 0x80000uLL;
        while (1)
        {
          LOBYTE(v223) = 0;
          v162 = objc_msgSend_position(v3) + 1;
          if (v162 >= objc_msgSend_position(v3) && (v163 = objc_msgSend_position(v3) + 1, v163 <= [v3 length]))
          {
            v164 = [v3 data];
            [v164 getBytes:&v223 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v161 |= (v223 & 0x7F) << v159;
          if ((v223 & 0x80) == 0)
          {
            break;
          }

          v159 += 7;
          v26 = v160++ >= 9;
          if (v26)
          {
            v68 = 0;
            goto LABEL_391;
          }
        }

        v68 = (v161 != 0) & ~[v3 hasError];
LABEL_391:
        v192 = 213;
LABEL_400:
        *(a1 + v192) = v68;
        goto LABEL_401;
      default:
        if ((v219 & 1) == 0 || (*(a1 + 218) & 0x40) != 0)
        {
LABEL_344:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_483;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            v124 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v125 = *(a1 + 16);
            *(a1 + 16) = v124;
          }

          if (!PBUnknownFieldAdd())
          {
            v28 = 0;
            goto LABEL_449;
          }
        }

        goto LABEL_402;
    }
  }
}
void sub_1003E1844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

NSDictionary *sub_1003E18A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = @"DailySessionStartedStaticCount";
  v4[0] = [NSNumber numberWithUnsignedShort:*v1];
  v3[1] = @"DailySessionIncludedFitnessCount";
  v4[1] = [NSNumber numberWithUnsignedShort:v1[1]];
  v3[2] = @"DailySessionIncludedDrivingCount";
  v4[2] = [NSNumber numberWithUnsignedShort:v1[2]];
  v3[3] = @"DailySessionIncludedConnectedVehicle";
  v4[3] = [NSNumber numberWithUnsignedShort:v1[3]];
  v3[4] = @"DailySessionCount";
  v4[4] = [NSNumber numberWithUnsignedShort:v1[4]];
  v3[5] = @"DailySessionCountStartedFromLC";
  v4[5] = [NSNumber numberWithUnsignedShort:v1[5]];
  v3[6] = @"DailyWifiAssociatedAndStaticAPSeconds";
  v4[6] = [NSNumber numberWithUnsignedInt:*(v1 + 3)];
  v3[7] = @"DailyWifiYieldingPersonalizedSeconds";
  v4[7] = [NSNumber numberWithUnsignedInt:*(v1 + 4)];
  v3[8] = @"DailyStationaryWithPersonalizedWifiAPSeconds";
  v4[8] = [NSNumber numberWithUnsignedInt:*(v1 + 5)];
  v3[9] = @"DailyStationaryWithoutPersonalizedWifiAPSeconds";
  v4[9] = [NSNumber numberWithUnsignedInt:*(v1 + 6)];
  v3[10] = @"DailyDMMostlyStationarySeconds";
  v4[10] = [NSNumber numberWithUnsignedInt:*(v1 + 7)];
  v3[11] = @"DailyDMnonStationarySeconds";
  v4[11] = [NSNumber numberWithUnsignedInt:*(v1 + 8)];
  v3[12] = @"DailyScreenOffSeconds";
  v4[12] = [NSNumber numberWithUnsignedInt:*(v1 + 9)];
  v3[13] = @"DailyTotalSeconds";
  v4[13] = [NSNumber numberWithUnsignedInt:*(v1 + 10)];
  v3[14] = @"DailyThrottleGpsSeconds";
  v4[14] = [NSNumber numberWithUnsignedInt:*(v1 + 11)];
  v3[15] = @"DailyIOMotionFromStaticLT1mSeconds";
  v4[15] = [NSNumber numberWithUnsignedInt:*(v1 + 12)];
  v3[16] = @"DailyIOMotionFromStaticLT2mSeconds";
  v4[16] = [NSNumber numberWithUnsignedInt:*(v1 + 13)];
  v3[17] = @"DailyIOMotionFromStaticLT5mSeconds";
  v4[17] = [NSNumber numberWithUnsignedInt:*(v1 + 14)];
  v3[18] = @"DailyIOMotionFromStaticLT10mSeconds";
  v4[18] = [NSNumber numberWithUnsignedInt:*(v1 + 15)];
  v3[19] = @"DailyIOMotionFromStaticLT20mSeconds";
  v4[19] = [NSNumber numberWithUnsignedInt:*(v1 + 16)];
  v3[20] = @"DailyIOMotionFromStaticLT50mSeconds";
  v4[20] = [NSNumber numberWithUnsignedInt:*(v1 + 17)];
  v3[21] = @"DailyIOMotionFromStaticGE50mSeconds";
  v4[21] = [NSNumber numberWithUnsignedInt:*(v1 + 18)];
  v3[22] = @"DailyGpsWifiDistanceLT5mSeconds";
  v4[22] = [NSNumber numberWithUnsignedInt:*(v1 + 25)];
  v3[23] = @"DailyGpsWifiDistanceLT10mSeconds";
  v4[23] = [NSNumber numberWithUnsignedInt:*(v1 + 26)];
  v3[24] = @"DailyGpsWifiDistanceLT20mSeconds";
  v4[24] = [NSNumber numberWithUnsignedInt:*(v1 + 27)];
  v3[25] = @"DailyGpsWifiDistanceLT50mSeconds";
  v4[25] = [NSNumber numberWithUnsignedInt:*(v1 + 28)];
  v3[26] = @"DailyGpsWifiDistanceLT100mSeconds";
  v4[26] = [NSNumber numberWithUnsignedInt:*(v1 + 29)];
  v3[27] = @"DailyGpsWifiDistanceLT200mSeconds";
  v4[27] = [NSNumber numberWithUnsignedInt:*(v1 + 30)];
  v3[28] = @"DailyGpsWifiDistanceLT500mSeconds";
  v4[28] = [NSNumber numberWithUnsignedInt:*(v1 + 31)];
  v3[29] = @"DailyGpsWifiDistanceLT1000mSeconds";
  v4[29] = [NSNumber numberWithUnsignedInt:*(v1 + 32)];
  v3[30] = @"DailyGpsWifiDistanceGE1000mSeconds";
  v4[30] = [NSNumber numberWithUnsignedInt:*(v1 + 33)];
  v3[31] = @"DailyGpsOnNotYieldingSeconds";
  v4[31] = [NSNumber numberWithUnsignedInt:*(v1 + 34)];
  v3[32] = @"DailyIOMaxVelocityWhileStaticLT1msSeconds";
  v4[32] = [NSNumber numberWithUnsignedInt:*(v1 + 19)];
  v3[33] = @"DailyIOMaxVelocityWhileStaticLT2msSeconds";
  v4[33] = [NSNumber numberWithUnsignedInt:*(v1 + 20)];
  v3[34] = @"DailyIOMaxVelocityWhileStaticLT3msSeconds";
  v4[34] = [NSNumber numberWithUnsignedInt:*(v1 + 21)];
  v3[35] = @"DailyIOMaxVelocityWhileStaticLT4msSeconds";
  v4[35] = [NSNumber numberWithUnsignedInt:*(v1 + 22)];
  v3[36] = @"DailyIOMaxVelocityWhileStaticLT5msSeconds";
  v4[36] = [NSNumber numberWithUnsignedInt:*(v1 + 23)];
  v3[37] = @"DailyIOMaxVelocityWhileStaticGE5msSeconds";
  v4[37] = [NSNumber numberWithUnsignedInt:*(v1 + 24)];
  v3[38] = @"DailyGpsThrottleStartToDrivingLT0Seconds";
  v4[38] = [NSNumber numberWithUnsignedShort:v1[70]];
  v3[39] = @"DailyGpsThrottleStartToDrivingLT5Seconds";
  v4[39] = [NSNumber numberWithUnsignedShort:v1[71]];
  v3[40] = @"DailyGpsThrottleStartToDrivingLT10Seconds";
  v4[40] = [NSNumber numberWithUnsignedShort:v1[72]];
  v3[41] = @"DailyGpsThrottleStartToDrivingLT30Seconds";
  v4[41] = [NSNumber numberWithUnsignedShort:v1[73]];
  v3[42] = @"DailyGpsThrottleStartToDrivingLT60Seconds";
  v4[42] = [NSNumber numberWithUnsignedShort:v1[74]];
  v3[43] = @"DailyGpsThrottleStartToDrivingLT90Seconds";
  v4[43] = [NSNumber numberWithUnsignedShort:v1[75]];
  v3[44] = @"DailyGpsThrottleStartToDrivingGE90Seconds";
  v4[44] = [NSNumber numberWithUnsignedShort:v1[76]];
  v3[45] = @"DailyGpsThrottleEndToDrivingsLT0Seconds";
  v4[45] = [NSNumber numberWithUnsignedShort:v1[77]];
  v3[46] = @"DailyGpsThrottleEndToDrivingLT5Seconds";
  v4[46] = [NSNumber numberWithUnsignedShort:v1[78]];
  v3[47] = @"DailyGpsThrottleEndToDrivingLT10Seconds";
  v4[47] = [NSNumber numberWithUnsignedShort:v1[79]];
  v3[48] = @"DailyGpsThrottleEndToDrivingLT30Seconds";
  v4[48] = [NSNumber numberWithUnsignedShort:v1[80]];
  v3[49] = @"DailyGpsThrottleEndToDrivingLT60Seconds";
  v4[49] = [NSNumber numberWithUnsignedShort:v1[81]];
  v3[50] = @"DailyGpsThrottleEndToDrivingLT90Seconds";
  v4[50] = [NSNumber numberWithUnsignedShort:v1[82]];
  v3[51] = @"DailyGpsThrottleEndToDrivingGE90Seconds";
  v4[51] = [NSNumber numberWithUnsignedShort:v1[83]];
  v3[52] = @"DailyGpsThrottleStartToFitnessLT0Seconds";
  v4[52] = [NSNumber numberWithUnsignedShort:v1[84]];
  v3[53] = @"DailyGpsThrottleStartToFitnessLT5Seconds";
  v4[53] = [NSNumber numberWithUnsignedShort:v1[85]];
  v3[54] = @"DailyGpsThrottleStartToFitnessLT10Seconds";
  v4[54] = [NSNumber numberWithUnsignedShort:v1[86]];
  v3[55] = @"DailyGpsThrottleStartToFitnessLT30Seconds";
  v4[55] = [NSNumber numberWithUnsignedShort:v1[87]];
  v3[56] = @"DailyGpsThrottleStartToFitnessLT60Seconds";
  v4[56] = [NSNumber numberWithUnsignedShort:v1[88]];
  v3[57] = @"DailyGpsThrottleStartToFitnessLT90Seconds";
  v4[57] = [NSNumber numberWithUnsignedShort:v1[89]];
  v3[58] = @"DailyGpsThrottleStartToFitnessGE90Seconds";
  v4[58] = [NSNumber numberWithUnsignedShort:v1[90]];
  v3[59] = @"DailyGpsThrottleEndToFitnessLT0Seconds";
  v4[59] = [NSNumber numberWithUnsignedShort:v1[91]];
  v3[60] = @"DailyGpsThrottleEndToFitnessLT5Seconds";
  v4[60] = [NSNumber numberWithUnsignedShort:v1[92]];
  v3[61] = @"DailyGpsThrottleEndToFitnessLT10Seconds";
  v4[61] = [NSNumber numberWithUnsignedShort:v1[93]];
  v3[62] = @"DailyGpsThrottleEndToFitnessLT30Seconds";
  v4[62] = [NSNumber numberWithUnsignedShort:v1[94]];
  v3[63] = @"DailyGpsThrottleEndToFitnessLT60Seconds";
  v4[63] = [NSNumber numberWithUnsignedShort:v1[95]];
  v3[64] = @"DailyGpsThrottleEndToFitnessLT90Seconds";
  v4[64] = [NSNumber numberWithUnsignedShort:v1[96]];
  v3[65] = @"DailyGpsThrottleEndToFitnessGE90Seconds";
  v4[65] = [NSNumber numberWithUnsignedShort:v1[97]];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:66];
}

uint64_t sub_1003E2088(uint64_t a1)
{
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 24) = 0;
  *(a1 + 26) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 100) = 0u;
  *a1 = objc_alloc_init(HKHealthStore);
  *(a1 + 120) = dispatch_semaphore_create(0);
  return a1;
}

uint64_t sub_1003E211C(uint64_t a1)
{
  *a1 = 0;
  dispatch_release(*(a1 + 120));
  sub_1003C93BC(a1 + 32, *(a1 + 40));
  return a1;
}

uint64_t sub_1003E2168(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v18 = [NSDate dateWithTimeIntervalSinceReferenceDate:a9];
  v19 = [NSDate dateWithTimeIntervalSinceReferenceDate:a10];
  v20 = [[HKStatisticsCollectionQuery alloc] initWithQuantityType:+[HKQuantityType quantityTypeForIdentifier:](HKQuantityType quantitySamplePredicate:"quantityTypeForIdentifier:" options:a3) anchorDate:+[NSCompoundPredicate andPredicateWithSubpredicates:](NSCompoundPredicate intervalComponents:{"andPredicateWithSubpredicates:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[HKQuery predicateForSamplesWithStartDate:endDate:options:](HKQuery, "predicateForSamplesWithStartDate:endDate:options:", v18, v19, 3), a7, 0)), a6, v18, a5}];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1003E24A4;
  v31[3] = &unk_10244FAA8;
  v32 = a2;
  *&v31[12] = a10;
  v31[10] = &v33;
  v31[11] = a1;
  v31[4] = a3;
  v31[5] = v18;
  v31[13] = a6;
  v31[6] = v19;
  v31[7] = a4;
  v31[8] = a5;
  v31[9] = a8;
  [v20 setInitialResultsHandler:v31];
  [*a1 executeQuery:v20];
  v21 = *(a1 + 120);
  v22 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v21, v22))
  {
    [*a1 stopQuery:v20];
    if (qword_1025D44E0 != -1)
    {
      sub_101877DFC();
    }

    v23 = qword_1025D44E8;
    if (os_log_type_enabled(qword_1025D44E8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_FAULT, "HealthKit query timed out", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101877E24(buf);
      v30 = 0;
      LODWORD(v28) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44E8, 17, "HealthKit query timed out", &v30, v28);
      v27 = v26;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLCardioChange::HealthKitQueryDelegate::performStatisticalCollectionQuery(HKFeatures, HKQuantityTypeIdentifier, HKUnit *, CFAbsoluteTime, CFAbsoluteTime, NSDateComponents *, HKStatisticsOptions, NSPredicate *, ProcessPeriodStatisticFunction)", "%s\n", v26);
      if (v27 != buf)
      {
        free(v27);
      }
    }
  }

  v24 = *(v34 + 24);
  _Block_object_dispose(&v33, 8);
  return v24;
}

void sub_1003E247C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_1003E24A4(int *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *(a1 + 11);
  if (a4)
  {
    if ([a4 code] == 6)
    {
      if (qword_1025D44E0 != -1)
      {
        sub_101877E68();
      }

      v7 = qword_1025D44E8;
      if (os_log_type_enabled(qword_1025D44E8, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 4);
        *buf = 138543362;
        *&buf[4] = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "HealthKit query for %{public}@ failed due to device lock. Will resume query on next run. ", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101878080();
      }
    }

    else if ([a4 code] == 11)
    {
      v19 = *(a1 + 12);
      *buf = a1 + 28;
      sub_1003E3DEC(v5 + 32, a1 + 28, &unk_101C66300, buf)[5] = v19;
      if (qword_1025D44E0 != -1)
      {
        sub_101877DFC();
      }

      v20 = qword_1025D44E8;
      if (os_log_type_enabled(qword_1025D44E8, OS_LOG_TYPE_DEBUG))
      {
        v21 = *(a1 + 4);
        *buf = 138543362;
        *&buf[4] = v21;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "No data availability for HealthKit query collection for %{public}@. Continuing to next day.", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101877F8C();
      }

      *(*(*(a1 + 10) + 8) + 24) = 1;
    }

    else
    {
      if (qword_1025D44E0 != -1)
      {
        sub_101877E68();
      }

      v22 = qword_1025D44E8;
      if (os_log_type_enabled(qword_1025D44E8, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 4);
        *buf = 138543618;
        *&buf[4] = v23;
        v53 = 2114;
        *v54 = a4;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "HealthKit query for %{public}@ encountered error,%{public}@", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101877E7C();
      }

      *(v5 + 26) = 1;
    }
  }

  else
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x4812000000;
    v36 = sub_1000473A8;
    v37 = sub_100048398;
    v38 = &unk_10238AE8B;
    v40 = 0;
    v41 = 0;
    __p = 0;
    v10 = *(a1 + 5);
    v9 = *(a1 + 6);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1003E2A18;
    v32[3] = &unk_10244FA80;
    v11 = *(a1 + 13);
    v32[5] = &v33;
    v32[6] = v11;
    v32[4] = *(a1 + 7);
    [a3 enumerateStatisticsFromDate:v10 toDate:v9 withBlock:v32];
    (*(*(a1 + 9) + 16))();
    *(*(*(a1 + 10) + 8) + 24) = 1;
    v12 = *(a1 + 12);
    *buf = a1 + 28;
    sub_1003E3DEC(v5 + 32, a1 + 28, &unk_101C66300, buf)[5] = v12;
    if (qword_1025D44E0 != -1)
    {
      sub_101877DFC();
    }

    v13 = qword_1025D44E8;
    if (os_log_type_enabled(qword_1025D44E8, OS_LOG_TYPE_DEBUG))
    {
      v14 = (v34[7] - v34[6]) >> 3;
      v15 = *(a1 + 4);
      v16 = *(a1 + 5);
      v17 = *(a1 + 6);
      v18 = *(a1 + 8);
      *buf = 138544386;
      *&buf[4] = v15;
      v53 = 1024;
      *v54 = v14;
      *&v54[4] = 2112;
      *&v54[6] = v16;
      v55 = 2112;
      v56 = v17;
      v57 = 2112;
      v58 = v18;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "HealthKit query for %{public}@ succeeded: samples %d, start %@, end %@, interval %@.", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101877E24(buf);
      v25 = (v34[7] - v34[6]) >> 3;
      v26 = *(a1 + 4);
      v27 = *(a1 + 5);
      v28 = *(a1 + 6);
      v29 = *(a1 + 8);
      v42 = 138544386;
      v43 = v26;
      v44 = 1024;
      v45 = v25;
      v46 = 2112;
      v47 = v27;
      v48 = 2112;
      v49 = v28;
      v50 = 2112;
      v51 = v29;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44E8, 2, "HealthKit query for %{public}@ succeeded: samples %d, start %@, end %@, interval %@.", &v42, 48);
      v31 = v30;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCardioChange::HealthKitQueryDelegate::performStatisticalCollectionQuery(HKFeatures, HKQuantityTypeIdentifier, HKUnit *, CFAbsoluteTime, CFAbsoluteTime, NSDateComponents *, HKStatisticsOptions, NSPredicate *, ProcessPeriodStatisticFunction)_block_invoke", "%s\n", v30);
      if (v31 != buf)
      {
        free(v31);
      }
    }

    _Block_object_dispose(&v33, 8);
    if (__p)
    {
      v40 = __p;
      operator delete(__p);
    }
  }

  return dispatch_semaphore_signal(*(v5 + 120));
}

void sub_1003E29E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1003E2A18(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a1[6];
    if (v3 == 16)
    {
      v4 = [a2 sumQuantity];
      if (!v4)
      {
        return;
      }
    }

    else
    {
      if (v3 != 2)
      {
        return;
      }

      v4 = [a2 averageQuantity];
      if (!v4)
      {
        return;
      }
    }

    [v4 doubleValueForUnit:a1[4]];
    v6 = *(a1[5] + 8);
    v8 = v6[7];
    v7 = v6[8];
    if (v8 >= v7)
    {
      v10 = v6[6];
      v11 = v8 - v10;
      v12 = (v8 - v10) >> 3;
      v13 = v12 + 1;
      if ((v12 + 1) >> 61)
      {
        sub_10028C64C();
      }

      v14 = v7 - v10;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      v15 = v14 >= 0x7FFFFFFFFFFFFFF8;
      v16 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v15)
      {
        v16 = v13;
      }

      if (v16)
      {
        sub_1000B9708((v6 + 6), v16);
      }

      v17 = (v8 - v10) >> 3;
      v18 = (8 * v12);
      v19 = (8 * v12 - 8 * v17);
      *v18 = v5;
      v9 = v18 + 1;
      memcpy(v19, v10, v11);
      v20 = v6[6];
      v6[6] = v19;
      v6[7] = v9;
      v6[8] = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v8 = v5;
      v9 = v8 + 8;
    }

    v6[7] = v9;
  }
}

void sub_1003E2B3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (*(a1 + 24) == 1)
  {
    if (qword_1025D44E0 != -1)
    {
      sub_101877E68();
    }

    v7 = qword_1025D44E8;
    if (os_log_type_enabled(qword_1025D44E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "queryCardioChangeInputs is already running.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101878374();
    }

    v36 = 0u;
    v37 = 0u;
    memset(buf, 0, sizeof(buf));
    (*(a3 + 16))(a3, 0, buf);
  }

  else
  {
    *(a1 + 24) = 1;
    if (*(a1 + 25) == 1 && vabdd_f64(*(a1 + 16), a6) < 86400.0 + 86400.0)
    {
      if (qword_1025D44E0 != -1)
      {
        sub_101877E68();
      }

      v13 = qword_1025D44E8;
      if (os_log_type_enabled(qword_1025D44E8, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(a1 + 8);
        v15 = *(a1 + 16);
        *buf = 134218240;
        *&buf[4] = v14;
        *&buf[12] = 2048;
        *&buf[14] = v15;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Resuming previously interrupted query startTime %f, endTime %f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101878274();
      }
    }

    else
    {
      *(a1 + 25) = 0;
      v16 = (a1 + 40);
      sub_1003C93BC(a1 + 32, *(a1 + 40));
      *(a1 + 32) = v16;
      *v16 = 0;
      *(a1 + 8) = a5;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 100) = 0u;
      *(a1 + 25) = 1;
      *(a1 + 16) = a6;
      if (qword_1025D44E0 != -1)
      {
        sub_101877E68();
      }

      v17 = qword_1025D44E8;
      if (os_log_type_enabled(qword_1025D44E8, OS_LOG_TYPE_DEBUG))
      {
        v18 = *(a1 + 8);
        v19 = *(a1 + 16);
        *buf = 134218240;
        *&buf[4] = v18;
        *&buf[12] = 2048;
        *&buf[14] = v19;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "Starting new query startTime %f, endTime %f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101878174();
      }
    }

    v20 = dispatch_group_create();
    v22 = a1 + 40;
    v21 = *(a1 + 40);
    if (!v21)
    {
      goto LABEL_30;
    }

    v23 = a1 + 40;
    do
    {
      v24 = *(v21 + 32);
      if ((v24 & 0x80000000) == 0)
      {
        v23 = v21;
      }

      v21 = *(v21 + ((v24 >> 28) & 8));
    }

    while (v21);
    if (v23 == v22 || *(v23 + 32) >= 1)
    {
LABEL_30:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1003E30E0;
      block[3] = &unk_102449A78;
      block[4] = a1;
      dispatch_group_async(v20, [a2 queue], block);
    }

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1003E3204;
    v33[3] = &unk_10244FAF0;
    v33[4] = a4;
    v33[5] = a1;
    dispatch_group_async(v20, [a2 queue], v33);
    v25 = *(a1 + 40);
    if (!v25)
    {
      goto LABEL_38;
    }

    v26 = a1 + 40;
    v27 = *(a1 + 40);
    do
    {
      if (*(v27 + 32) >= 2)
      {
        v26 = v27;
      }

      v27 = *(v27 + 8 * (*(v27 + 32) < 2));
    }

    while (v27);
    if (v26 == v22 || *(v26 + 32) >= 3)
    {
LABEL_38:
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1003E35A4;
      v32[3] = &unk_102449A78;
      v32[4] = a1;
      dispatch_group_async(v20, [a2 queue], v32);
      v25 = *(a1 + 40);
    }

    if (!v25)
    {
      goto LABEL_46;
    }

    v28 = a1 + 40;
    do
    {
      if (*(v25 + 32) >= 3)
      {
        v28 = v25;
      }

      v25 = *(v25 + 8 * (*(v25 + 32) < 3));
    }

    while (v25);
    if (v28 == v22 || *(v28 + 32) >= 4)
    {
LABEL_46:
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1003E36E8;
      v31[3] = &unk_102449A78;
      v31[4] = a1;
      dispatch_group_async(v20, [a2 queue], v31);
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1003E380C;
    v30[3] = &unk_10244FAF0;
    v30[4] = a4;
    v30[5] = a1;
    dispatch_group_async(v20, [a2 queue], v30);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1003E3B00;
    v29[3] = &unk_10244FB18;
    v29[5] = a3;
    v29[6] = a1;
    v29[4] = v20;
    dispatch_group_notify(v20, [a2 queue], v29);
  }
}

void sub_1003E30E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(NSDateComponents);
  [v2 setDay:1];
  v3 = +[HKUnit kilocalorieUnit];
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003E31B4;
  v6[3] = &unk_10244FAC8;
  v6[4] = v1;
  sub_1003E2168(v1, 0, HKQuantityTypeIdentifierActiveEnergyBurned, v3, v2, 16, 0, v6, v4, v5);
}

uint64_t sub_1003E31B4(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = 0;
    v5 = v3 >> 3;
    v6 = 0.0;
    do
    {
      v6 = v6 + *(*a2 + 8 * v4++);
    }

    while (v5 != v4);
    v7 = v6 / v5;
  }

  else
  {
    v7 = 0.0;
  }

  *(v2 + 96) = v3 >> 3;
  *(v2 + 56) = v7;
  return result;
}

void sub_1003E3204(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = 90;
  v4 = *(v2 + 40);
  if (v4)
  {
    v5 = v2 + 40;
    do
    {
      if (*(v4 + 32) >= 1)
      {
        v5 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < 1));
    }

    while (v4);
    if (v5 != v2 + 40 && *(v5 + 32) <= 1)
    {
      v14 = 1;
      *buf = &v14;
      v6 = *(sub_1003E3DEC(v2 + 32, &v14, &unk_101C66300, buf) + 5);
      if (v6 > 0.0)
      {
        v3 = vcvtpd_s64_f64(*(v2 + 16) / 86400.0) - vcvtpd_s64_f64(v6 / 86400.0);
      }
    }
  }

  if (qword_1025D44E0 != -1)
  {
    sub_101877DFC();
  }

  v7 = qword_1025D44E8;
  if (os_log_type_enabled(qword_1025D44E8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Starting query for HKQuantityTypeIdentifierHeartRate for %d days", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101878478(v3);
  }

  v8 = objc_alloc_init(NSDateComponents);
  [v8 setMinute:{5, _NSConcreteStackBlock, 3221225472, sub_1003E348C, &unk_10244FAC8, v2}];
  if ((v3 & 0x80000000) == 0)
  {
    do
    {
      v9 = +[HKUnit _countPerSecondUnit];
      v10 = *(v2 + 16);
      v11 = 86400.0 * (floor(v10 / 86400.0) - v3);
      if (v11 + 86400.0 <= v10)
      {
        v10 = v11 + 86400.0;
      }

      if (!sub_1003E2168(v2, 1, HKQuantityTypeIdentifierHeartRate, v9, v8, 2, 0, &v13, v11, v10))
      {
        break;
      }

      v12 = (*(*(a1 + 32) + 16))();
      if (!v3)
      {
        break;
      }

      LODWORD(v3) = v3 - 1;
    }

    while (!v12);
  }
}

double sub_1003E348C(uint64_t a1, void *a2)
{
  if (*a2 != a2[1])
  {
    v2 = *(a1 + 32);
    result = sub_1003E34E0(a2, 95) + *(v2 + 64);
    *(v2 + 64) = result;
    ++*(v2 + 100);
  }

  return result;
}

double sub_1003E34E0(uint64_t a1, int a2)
{
  __p = 0;
  v11 = 0;
  v12 = 0;
  sub_1002AD2D8(&__p, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 3);
  v5 = ((((*(a1 + 8) - *a1) >> 3) - 1) * a2) / 100;
  v6 = __p;
  v7 = (__p + 8 * v5);
  if (v7 != v11)
  {
    sub_1003E3EC0(__p, v7, v11, v4);
    v6 = __p;
  }

  v8 = v6[v5];
  v11 = v6;
  operator delete(v6);
  return v8;
}

void sub_1003E3588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003E35A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(NSDateComponents);
  [v2 setDay:1];
  v3 = +[HKUnit _countPerMinuteUnit];
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003E3698;
  v6[3] = &unk_10244FAC8;
  v6[4] = v1;
  sub_1003E2168(v1, 2, HKQuantityTypeIdentifierRestingHeartRate, v3, v2, 2, +[HKQuery _predicateForObjectsFromAppleWatches], v6, v4, v5);
}

uint64_t sub_1003E3698(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = 0;
    v5 = v3 >> 3;
    v6 = 0.0;
    do
    {
      v6 = v6 + *(*a2 + 8 * v4++);
    }

    while (v5 != v4);
    v7 = v6 / v5;
  }

  else
  {
    v7 = 0.0;
  }

  *(v2 + 104) = v3 >> 3;
  *(v2 + 72) = v7;
  return result;
}

void sub_1003E36E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(NSDateComponents);
  [v2 setDay:1];
  v3 = +[HKUnit meterUnit];
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003E37BC;
  v6[3] = &unk_10244FAC8;
  v6[4] = v1;
  sub_1003E2168(v1, 3, HKQuantityTypeIdentifierSixMinuteWalkTestDistance, v3, v2, 2, 0, v6, v4, v5);
}

uint64_t sub_1003E37BC(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = 0;
    v5 = v3 >> 3;
    v6 = 0.0;
    do
    {
      v6 = v6 + *(*a2 + 8 * v4++);
    }

    while (v5 != v4);
    v7 = v6 / v5;
  }

  else
  {
    v7 = 0.0;
  }

  *(v2 + 108) = v3 >> 3;
  *(v2 + 80) = v7;
  return result;
}

void sub_1003E380C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = 90;
  v4 = *(v2 + 40);
  if (v4)
  {
    v5 = v2 + 40;
    do
    {
      if (*(v4 + 32) >= 4)
      {
        v5 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < 4));
    }

    while (v4);
    if (v5 != v2 + 40 && *(v5 + 32) <= 4)
    {
      v14 = 4;
      *buf = &v14;
      v6 = *(sub_1003E3DEC(v2 + 32, &v14, &unk_101C66300, buf) + 5);
      if (v6 > 0.0)
      {
        v3 = vcvtpd_s64_f64(*(v2 + 16) / 86400.0) - vcvtpd_s64_f64(v6 / 86400.0);
      }
    }
  }

  if (qword_1025D44E0 != -1)
  {
    sub_101877DFC();
  }

  v7 = qword_1025D44E8;
  if (os_log_type_enabled(qword_1025D44E8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Starting query for HKQuantityTypeIdentifierWalkingSpeed for %d days", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101878560(v3);
  }

  v8 = objc_alloc_init(NSDateComponents);
  [v8 setMinute:{5, _NSConcreteStackBlock, 3221225472, sub_1003E3AA8, &unk_10244FAC8, v2}];
  if ((v3 & 0x80000000) == 0)
  {
    do
    {
      v9 = [HKUnit unitFromString:@"m/s"];
      v10 = *(v2 + 16);
      v11 = 86400.0 * (floor(v10 / 86400.0) - v3);
      if (v11 + 86400.0 <= v10)
      {
        v10 = v11 + 86400.0;
      }

      if (!sub_1003E2168(v2, 4, HKQuantityTypeIdentifierWalkingSpeed, v9, v8, 2, 0, &v13, v11, v10))
      {
        break;
      }

      v12 = (*(*(a1 + 32) + 16))();
      if (!v3)
      {
        break;
      }

      LODWORD(v3) = v3 - 1;
    }

    while (!v12);
  }
}

double sub_1003E3AA8(uint64_t a1, uint64_t *a2, double result)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = 0;
    v6 = *(a1 + 32);
    v7 = (v4 - v3) >> 3;
    v8 = 0.0;
    do
    {
      v8 = v8 + *(v3 + 8 * v5++);
    }

    while (v7 != v5);
    result = v8 / v7 + *(v6 + 88);
    *(v6 + 88) = result;
    ++*(v6 + 112);
  }

  return result;
}

void sub_1003E3B00(uint64_t a1)
{
  v2 = *(a1 + 48);
  dispatch_release(*(a1 + 32));
  v3 = 0;
  v4 = (v2 + 40);
  v5 = 1;
  do
  {
    v20 = v3;
    v6 = *v4;
    if (!*v4)
    {
      goto LABEL_9;
    }

    v7 = v2 + 40;
    do
    {
      if (*(v6 + 32) >= v3)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < v3));
    }

    while (v6);
    if (v7 != v4 && v3 >= *(v7 + 32))
    {
      *buf = &v20;
      v8 = *(sub_1003E3DEC(v2 + 32, &v20, &unk_101C66300, buf) + 5) >= *(v2 + 16);
    }

    else
    {
LABEL_9:
      v8 = 0;
    }

    v5 &= v8;
    ++v3;
  }

  while (v3 != 5);
  if (qword_1025D44E0 != -1)
  {
    sub_101877DFC();
  }

  v9 = qword_1025D44E8;
  if (os_log_type_enabled(qword_1025D44E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    *&buf[4] = v5 & 1;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "CardioChange HealthKit inputs queried success, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101878648((v5 & 1));
    if (v5)
    {
      goto LABEL_19;
    }
  }

  else if (v5)
  {
LABEL_19:
    v10 = *(v2 + 100);
    if (v10 >= 1)
    {
      *(v2 + 64) = *(v2 + 64) / v10;
    }

    v11 = *(v2 + 112);
    if (v11 >= 1)
    {
      *(v2 + 88) = *(v2 + 88) / v11;
    }

    v12 = *(a1 + 40);
    v13 = *(v2 + 72);
    v14 = *(v2 + 56);
    v15 = *(v2 + 104);
    v23 = *(v2 + 88);
    v24 = v15;
    *buf = v14;
    v22 = v13;
    (*(v12 + 16))();
    goto LABEL_26;
  }

  v16 = *(a1 + 40);
  v17 = *(v2 + 72);
  v18 = *(v2 + 56);
  v19 = *(v2 + 104);
  v23 = *(v2 + 88);
  v24 = v19;
  *buf = v18;
  v22 = v17;
  (*(v16 + 16))();
  if (*(v2 + 26) == 1)
  {
LABEL_26:
    *(v2 + 25) = 0;
    sub_1003C93BC(v2 + 32, *(v2 + 40));
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    *(v2 + 32) = v4;
    *(v2 + 56) = 0u;
    *(v2 + 72) = 0u;
    *(v2 + 88) = 0u;
    *(v2 + 100) = 0u;
  }

  *(v2 + 24) = 0;
}

void sub_1003E3DA4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t *sub_1003E3DEC(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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

void sub_1003E3EC0(double *result, double *a2, double *a3, double a4)
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
      sub_1003E418C(result, a3, a4);
      return;
    }

    v5 = &result[(a3 - result) >> 4];
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

double sub_1003E418C(double *a1, double *a2, double result)
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

void sub_1003E4200(void *a1, float64x2_t *a2, char a3)
{
  if (a3)
  {
    v5 = a1[18];
    if (a1[17] != v5)
    {
      v6 = vmovn_s64(vmvnq_s8(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(v5[-1], *a2))));
      if ((vorr_s8(v6, vdup_lane_s32(v6, 1)).u32[0] & 1) == 0)
      {
        return;
      }
    }
  }

  else
  {
    v5 = a1[18];
  }

  v7 = a1[19];
  if (v5 >= v7)
  {
    v9 = a1[17];
    v10 = (v5 - v9) >> 4;
    v11 = v10 + 1;
    if ((v10 + 1) >> 60)
    {
      sub_10028C64C();
    }

    v12 = v7 - v9;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_1003E5FE8((a1 + 17), v13);
    }

    v14 = (16 * v10);
    *v14 = *a2;
    v8 = 16 * v10 + 16;
    v15 = a1[17];
    v16 = a1[18] - v15;
    v17 = v14 - v16;
    memcpy(v14 - v16, v15, v16);
    v18 = a1[17];
    a1[17] = v17;
    a1[18] = v8;
    a1[19] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v5 = *a2;
    v8 = &v5[1];
  }

  a1[18] = v8;
}

uint64_t sub_1003E432C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v2 = *(a1 + 136);
  if (((*(a1 + 144) - v2) >> 4) > a2)
  {
    return v2 + 16 * a2;
  }

  else
  {
    return 0;
  }
}

void sub_1003E4354(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_1000B9708(a1, a2);
    }

    sub_10028C64C();
  }
}

uint64_t sub_1003E43F4(void *a1)
{
  v1 = (a1 + 23);
  if (a1[23] != a1[24])
  {
    return 1;
  }

  if (a1[17] != a1[18])
  {
    sub_10018D404(v32);
    sub_1003E4354(v1, ((a1[18] - a1[17]) >> 4) - 1);
    ++qword_102636B48;
    v4 = a1[17];
    if ((a1[18] - v4) >= 0x11)
    {
      v5 = 0;
      v6 = 1;
      do
      {
        v7 = (v4 + v5);
        v8 = sub_1002E9798(v32, *(v4 + v5), *(v4 + v5 + 8), *(v4 + v5 + 16), *(v4 + v5 + 24));
        if (v8 < 0.0)
        {
          if (qword_1025D46B0 != -1)
          {
            sub_101878824();
          }

          v9 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
          {
            v10 = v7[2];
            v11 = v7[3];
            v12 = *v7;
            v13 = v7[1];
            *buf = 134546433;
            v42 = v10;
            v43 = 2053;
            v44 = v11;
            v45 = 2053;
            v46 = v12;
            v47 = 2053;
            v48 = v13;
            _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "CLMM,invalid heading for CLMapRoad coordinate,%{sensitive}.7lf,%{sensitive}.7lf,prev,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x2Au);
          }

          if (sub_10000A100(121, 0))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D46B0 != -1)
            {
              sub_101878824();
            }

            v24 = v7[2];
            v25 = v7[3];
            v26 = *v7;
            v27 = v7[1];
            v33 = 134546433;
            v34 = v24;
            v35 = 2053;
            v36 = v25;
            v37 = 2053;
            v38 = v26;
            v39 = 2053;
            v40 = v27;
            LODWORD(v31) = 42;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 16, "CLMM,invalid heading for CLMapRoad coordinate,%{sensitive}.7lf,%{sensitive}.7lf,prev,%{sensitive}.7lf,%{sensitive}.7lf", &v33, v31);
            v29 = v28;
            sub_100152C7C("Generic", 1, 0, 0, "BOOL CLMapRoad::computeSegmentHeadings()", "%s\n", v28);
            if (v29 != buf)
            {
              free(v29);
            }
          }
        }

        v15 = a1[24];
        v14 = a1[25];
        if (v15 >= v14)
        {
          v17 = *v1;
          v18 = v15 - *v1;
          v19 = (v18 >> 3) + 1;
          if (v19 >> 61)
          {
            sub_10028C64C();
          }

          v20 = v14 - v17;
          if (v20 >> 2 > v19)
          {
            v19 = v20 >> 2;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF8)
          {
            v21 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            sub_1000B9708(v1, v21);
          }

          v22 = (8 * (v18 >> 3));
          *v22 = v8;
          v16 = v22 + 1;
          memcpy(0, v17, v18);
          v23 = a1[23];
          a1[23] = 0;
          a1[24] = v16;
          a1[25] = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v15 = v8;
          v16 = v15 + 1;
        }

        a1[24] = v16;
        ++v6;
        v4 = a1[17];
        v5 += 16;
      }

      while (v6 < (a1[18] - v4) >> 4);
    }

    return 1;
  }

  if (qword_1025D46B0 != -1)
  {
    sub_101878734();
  }

  v30 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_ERROR, "CLMM,computeSegmentLengthsAndHeading,CoordinateCount is 0", buf, 2u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_10187884C();
    return 0;
  }

  return result;
}

double sub_1003E47CC(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  sub_1003E43F4(a1);
  v4 = a1[23];
  if (v2 < ((a1[24] - v4) >> 3))
  {
    return *(v4 + 8 * v2);
  }

  v5 = -1.0;
  if (((a1[18] - a1[17]) >> 4) - 1 > v2)
  {
    v5 = sub_1003E493C(a1, v2, v2 + 1);
    if (qword_1025D46B0 != -1)
    {
      sub_101878734();
    }

    v6 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
    {
      v7 = *a1;
      v9 = 134283777;
      v10 = v7;
      v11 = 1026;
      v12 = v2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "CLMM,getHeadingForSegment,stored bearing value unavailble,had to be calculated,%{private}lld,index,%{public}d", &v9, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101878928(a1, v2);
    }
  }

  return v5;
}

double sub_1003E491C(uint64_t *a1)
{
  v1 = (a1[18] - a1[17]) >> 4;
  if (v1 >= 2)
  {
    return sub_1003E47CC(a1, (v1 - 2));
  }

  else
  {
    return -1.0;
  }
}

double sub_1003E493C(uint64_t a1, int a2, unsigned int a3)
{
  result = -1.0;
  if ((a2 & 0x80000000) == 0)
  {
    v6 = *(a1 + 136);
    v7 = (*(a1 + 144) - v6) >> 4;
    if (v7 > a2 && (a3 & 0x80000000) == 0 && v6 && v7 > a3)
    {
      v11 = v3;
      v12 = v4;
      v8 = (v6 + 16 * a2);
      v9 = (v6 + 16 * a3);
      sub_10018D404(v10);
      return sub_1002E9798(v10, *v8, v8[1], *v9, v9[1]);
    }
  }

  return result;
}

uint64_t sub_1003E49B0(uint64_t *a1)
{
  v1 = (a1[18] - a1[17]) >> 4;
  if (v1 < 3)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = v1 - 1;
  v6 = -1.0;
  do
  {
    v7 = sub_1003E47CC(a1, v4);
    if (v7 >= 0.0)
    {
      v8 = v7;
      if (v6 >= 0.0)
      {
        v9 = fmod(v7 - v6, 360.0);
        if (v9 < 0.0)
        {
          v9 = v9 + 360.0;
        }

        if (v9 > 180.0)
        {
          v9 = v9 + -360.0;
        }

        if (fabs(v9) <= 7.5)
        {
          v3 = v3;
        }

        else
        {
          v3 = (v3 + 1);
        }
      }
    }

    else
    {
      v8 = v6;
    }

    v4 = (v4 + 1);
    v6 = v8;
  }

  while (v5 != v4);
  return v3;
}

BOOL sub_1003E4AA4(uint64_t a1, int a2, double a3, double a4)
{
  if (((*(a1 + 144) - *(a1 + 136)) & 0xFFFFFFFF0) == 0x20)
  {
    return 0;
  }

  sub_10029244C(a1);
  v9 = *(a1 + 160);
  v10 = *(a1 + 168) - v9;
  if (!v10)
  {
    return 0;
  }

  v11 = 0;
  v12 = v10 >> 3;
  v13 = *(a1 + 40) * a3;
  if (v12 <= 1)
  {
    v12 = 1;
  }

  v14 = -v12;
  while (1)
  {
    v13 = v13 - *v9;
    if (v13 <= 0.0)
    {
      break;
    }

    --v11;
    ++v9;
    if (v14 == v11)
    {
      return 0;
    }
  }

  if (!v11)
  {
    v23 = sub_1003E47CC(a1, 0);
    v24 = sub_1003E47CC(a1, 1);
    v17 = v24;
    if (v23 >= 0.0 && v24 >= 0.0)
    {
      v25 = fmod(v23 - v24, 360.0);
      if (v25 < 0.0)
      {
        v25 = v25 + 360.0;
      }

      if (v25 > 180.0)
      {
        v25 = v25 + -360.0;
      }

      if (fabs(v25) > a4)
      {
        return 1;
      }
    }

    if (a2)
    {
      v22 = a1;
      v21 = 2;
      goto LABEL_36;
    }

    return 0;
  }

  v15 = sub_1003E47CC(a1, ~v11);
  v16 = sub_1003E47CC(a1, -v11);
  v17 = v16;
  if (v15 >= 0.0 && v16 >= 0.0)
  {
    v18 = fmod(v15 - v16, 360.0);
    if (v18 < 0.0)
    {
      v18 = v18 + 360.0;
    }

    if (v18 > 180.0)
    {
      v18 = v18 + -360.0;
    }

    if (fabs(v18) > a4)
    {
      return 1;
    }
  }

  if (!a2)
  {
    return 0;
  }

  v19 = sub_1003E47CC(a1, (-2 - v11));
  if (v15 >= 0.0 && v19 >= 0.0)
  {
    v20 = fmod(v19 - v15, 360.0);
    if (v20 < 0.0)
    {
      v20 = v20 + 360.0;
    }

    if (v20 > 180.0)
    {
      v20 = v20 + -360.0;
    }

    if (fabs(v20) > a4)
    {
      return 1;
    }
  }

  v21 = (1 - v11);
  v22 = a1;
LABEL_36:
  v26 = sub_1003E47CC(v22, v21);
  if (v17 < 0.0 || v26 < 0.0)
  {
    return 0;
  }

  v27 = fmod(v17 - v26, 360.0);
  if (v27 < 0.0)
  {
    v27 = v27 + 360.0;
  }

  if (v27 > 180.0)
  {
    v27 = v27 + -360.0;
  }

  return fabs(v27) > a4;
}

uint64_t sub_1003E4D3C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  result = sub_1003E4E28(a1, a2);
  if (result)
  {
    result = sub_1003E4E8C(a1, a2);
    if (result)
    {
      v6 = *(a1 + 136);
      v7 = *(a1 + 144) - v6;
      v8 = v7 >> 4;
      v9 = *(v2 + 136);
      if ((v7 >> 4) == ((*(v2 + 144) - v9) >> 4))
      {
        if (v8 < 3)
        {
          return 1;
        }

        v10 = (v7 >> 4) & 0x7FFFFFFF;
        v11 = v9 + 1;
        v12 = (v8 - 1) - 1;
        v13 = v10 - 2;
        v14 = vdupq_n_s64(0x3E7AD7F29ABCAF48uLL);
        result = 1;
        while (1)
        {
          if (v6)
          {
            if ((v13 & 0x8000000000000000) == 0)
            {
              v15 = vmovn_s64(vcgtq_f64(v14, vabdq_f64(*v11, *(v6 + 16 * v13))));
              if ((vand_s8(v15, vdup_lane_s32(v15, 1)).u8[0] & 1) == 0)
              {
                break;
              }
            }
          }

          ++v11;
          --v13;
          if (!--v12)
          {
            return result;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1003E4E28(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a1 + 136);
    v4 = 0uLL;
    v5 = 0uLL;
    if (*(a1 + 144) != v3)
    {
      v5 = *v3;
    }

    v6 = *(v2 + 144);
    if (v6 != *(v2 + 136))
    {
      v4 = *(v6 - 16);
    }

    v7 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(v5, v4)));
    LOBYTE(v2) = vand_s8(v7, vdup_lane_s32(v7, 1)).u8[0];
  }

  return v2 & 1;
}

uint64_t sub_1003E4E8C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a1 + 144);
    v4 = 0uLL;
    v5 = 0uLL;
    if (v3 != *(a1 + 136))
    {
      v5 = *(v3 - 16);
    }

    v7 = v2 + 136;
    v6 = *(v2 + 136);
    if (*(v7 + 8) != v6)
    {
      v4 = *v6;
    }

    v8 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(v5, v4)));
    LOBYTE(v2) = vand_s8(v8, vdup_lane_s32(v8, 1)).u8[0];
  }

  return v2 & 1;
}

uint64_t sub_1003E4EF0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a1 + 136);
    v4 = 0uLL;
    v5 = 0uLL;
    if (*(a1 + 144) != v3)
    {
      v5 = *v3;
    }

    v7 = v2 + 136;
    v6 = *(v2 + 136);
    if (*(v7 + 8) != v6)
    {
      v4 = *v6;
    }

    v8 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(v5, v4)));
    LOBYTE(v2) = vand_s8(v8, vdup_lane_s32(v8, 1)).u8[0];
  }

  return v2 & 1;
}

uint64_t sub_1003E4F54(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a1 + 144);
    v4 = 0uLL;
    v5 = 0uLL;
    if (v3 != *(a1 + 136))
    {
      v5 = *(v3 - 16);
    }

    v6 = *(v2 + 144);
    if (v6 != *(v2 + 136))
    {
      v4 = *(v6 - 16);
    }

    v7 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(v5, v4)));
    LOBYTE(v2) = vand_s8(v7, vdup_lane_s32(v7, 1)).u8[0];
  }

  return v2 & 1;
}

uint64_t sub_1003E4FB8(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (sub_1003E4EF0(a1, a2))
  {
    return 1;
  }

  return sub_1003E4E8C(a1, a2);
}

uint64_t sub_1003E501C(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (sub_1003E4F54(a1, a2))
  {
    return 1;
  }

  return sub_1003E4E28(a1, a2);
}

uint64_t sub_1003E5080(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (sub_1003E4EF0(a1, a2))
  {
    return 1;
  }

  return sub_1003E4E28(a1, a2);
}

uint64_t sub_1003E50E4(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (sub_1003E4F54(a1, a2))
  {
    return 1;
  }

  return sub_1003E4E8C(a1, a2);
}

uint64_t sub_1003E5148(uint64_t *a1, uint64_t a2, void *a3, int a4)
{
  if (a3)
  {
    if ([a3 valueForKey:@"roadID"])
    {
      *a1 = [objc_msgSend(a3 valueForKey:{@"roadID", "longLongValue"}];
    }

    if ([a3 valueForKey:@"roadClass"])
    {
      *(a1 + 5) = [objc_msgSend(a3 valueForKey:{@"roadClass", "intValue"}];
    }

    if ([a3 valueForKey:@"formOfWay"])
    {
      *(a1 + 6) = [objc_msgSend(a3 valueForKey:{@"formOfWay", "intValue"}];
    }

    if ([a3 valueForKey:@"travelDirection"])
    {
      *(a1 + 18) = [objc_msgSend(a3 valueForKey:{@"travelDirection", "intValue"}];
    }

    if ([a3 valueForKey:@"rampType"])
    {
      *(a1 + 19) = [objc_msgSend(a3 valueForKey:{@"rampType", "intValue"}];
    }

    if ([a3 valueForKey:@"speedLimit"])
    {
      *(a1 + 4) = [objc_msgSend(a3 valueForKey:{@"speedLimit", "intValue"}];
    }

    if ([a3 valueForKey:@"isDrivable"])
    {
      *(a1 + 81) = [objc_msgSend(a3 valueForKey:{@"isDrivable", "BOOLValue"}];
    }

    if ([a3 valueForKey:@"isRoadPedestrianNavigable"])
    {
      v32 = [objc_msgSend(a3 valueForKey:{@"isRoadPedestrianNavigable", "BOOLValue"}];
    }

    else
    {
      v32 = 0;
    }

    if ([a3 valueForKey:@"isTunnel"])
    {
      *(a1 + 18) = [objc_msgSend(a3 valueForKey:{@"isTunnel", "BOOLValue"}];
    }

    if ([a3 valueForKey:@"isBridge"])
    {
      *(a1 + 19) = [objc_msgSend(a3 valueForKey:{@"isBridge", "BOOLValue"}];
    }

    if ([a3 valueForKey:@"isRail"])
    {
      *(a1 + 17) = [objc_msgSend(a3 valueForKey:{@"isRail", "BOOLValue"}];
    }

    if ([a3 valueForKey:@"startJunction"])
    {
      *(a1 + 27) = [objc_msgSend(a3 valueForKey:{@"startJunction", "intValue"}];
    }

    if ([a3 valueForKey:@"stopJunction"])
    {
      *(a1 + 28) = [objc_msgSend(a3 valueForKey:{@"stopJunction", "intValue"}];
    }

    if ([a3 valueForKey:@"startTileBorder"])
    {
      *(a1 + 116) = [objc_msgSend(a3 valueForKey:{@"startTileBorder", "BOOLValue"}];
    }

    if ([a3 valueForKey:@"endTileBorder"])
    {
      *(a1 + 117) = [objc_msgSend(a3 valueForKey:{@"endTileBorder", "BOOLValue"}];
    }

    if ([a3 valueForKey:@"bikeableSide"])
    {
      *(a1 + 22) = [objc_msgSend(a3 valueForKey:{@"bikeableSide", "intValue"}];
    }

    if ([a3 valueForKey:@"walkableSide"])
    {
      *(a1 + 21) = [objc_msgSend(a3 valueForKey:{@"walkableSide", "intValue"}];
    }

    if ([a3 valueForKey:@"coordinateCount"])
    {
      v8 = [objc_msgSend(a3 valueForKey:{@"coordinateCount", "intValue"}];
      if (v8 >= 1)
      {
        v9 = v8;
        v10 = 0;
        while (1)
        {
          v11 = objc_autoreleasePoolPush();
          v12 = [objc_msgSend(a3 valueForKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"coord%i", v10)), "componentsSeparatedByString:", @", "}];
          if ([v12 count] != 3)
          {
            break;
          }

          [objc_msgSend(v12 objectAtIndexedSubscript:{0), "doubleValue"}];
          v14 = v13;
          [objc_msgSend(v12 objectAtIndexedSubscript:{1), "doubleValue"}];
          *buf = v14;
          *&buf[8] = v15;
          sub_1003E4200(a1, buf, 1);
          v16 = (a1[18] - a1[17]) & 0xFFFFFFFF0;
          [objc_msgSend(v12 objectAtIndexedSubscript:{2), "doubleValue"}];
          if (v16 == 16)
          {
            v18 = 15;
          }

          else
          {
            v18 = 16;
          }

          a1[v18] = v17;
          objc_autoreleasePoolPop(v11);
          v10 = (v10 + 1);
          if (v9 == v10)
          {
            goto LABEL_51;
          }
        }

        objc_autoreleasePoolPop(v11);
        return 0;
      }
    }

LABEL_51:
    v19 = *(a1 + 17);
    if ((*(a1 + 21) - 1) < 3)
    {
      v20 = 1;
    }

    else
    {
      v20 = v32;
    }

    *(a1 + 80) = v20 & (v19 ^ 1);
    if (v20 & (v19 ^ 1))
    {
      v21 = 1;
    }

    else
    {
      v21 = ((*(a1 + 22) - 1) < 3) & (v19 ^ 1);
    }

    *(a1 + 82) = v21;
    *(a1 + 12) = sub_1003E5878(*(a1 + 5), *(a1 + 18) != 0);
    v22 = (*(a1 + 17) & 1) == 0 && *(a1 + 18) != 0;
    *(a1 + 16) = v22;
    v23 = a1[17];
    v24 = a1[18] - v23;
    if (a4)
    {
      if ((v24 >> 4) <= 1)
      {
        if (qword_1025D46B0 != -1)
        {
          sub_101878734();
        }

        v25 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
        {
          v26 = *a1;
          v27 = (a1[18] - a1[17]) >> 4;
          *buf = 134283777;
          *&buf[4] = v26;
          *&buf[12] = 1026;
          *&buf[14] = v27;
          _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,id,%{private}lld,has less than two coordinate,%{public}d", buf, 0x12u);
        }

        result = sub_10000A100(121, 2);
        if (result)
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D46B0 != -1)
          {
            sub_101878824();
          }

          v28 = *a1;
          v29 = (a1[18] - a1[17]) >> 4;
          v34 = 134283777;
          v35 = v28;
          v36 = 1026;
          v37 = v29;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,CLTSP,id,%{private}lld,has less than two coordinate,%{public}d", &v34, 18);
          v31 = v30;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMapRoad::fillFromMapHelperNSDictionaryArray(CLDistanceCalc &, NSDictionary * _Nonnull, BOOL)", "%s\n", v30);
          if (v31 != buf)
          {
            free(v31);
          }

          return 0;
        }

        return result;
      }
    }

    else
    {
      result = 1;
      if (!v23 || (v24 & 0xFFFFFFFF0) != 0x10)
      {
        return result;
      }

      *buf = *v23;
      sub_1003E4200(a1, buf, 0);
    }

    return 1;
  }

  if (qword_1025D46B0 != -1)
  {
    sub_101878734();
  }

  v6 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,fillFromMapHelperNSDictionaryArray,array is null", buf, 2u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101878A58();
    return 0;
  }

  return result;
}

float sub_1003E5878(unsigned int a1, int a2)
{
  result = 7.4;
  if (a2)
  {
    result = 5.55;
  }

  if (a1 <= 7)
  {
    v3 = &unk_101C75DA0;
    if (a2)
    {
      v3 = &unk_101C75D80;
    }

    return v3[a1];
  }

  return result;
}

uint64_t sub_1003E58B8(uint64_t a1, void *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a3;
  if (a3)
  {
    if ([a2 coordinateCount] < 2)
    {
      return 0;
    }
  }

  if ([a2 internalRoadName])
  {
    v7 = [objc_msgSend(a2 "internalRoadName")];
    v8 = strlen(v7);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v8;
    if (v8)
    {
      memmove(&__dst, v7, v8);
    }

    __dst.__r_.__value_.__s.__data_[v9] = 0;
    std::string::operator=((a1 + 48), &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  v10 = [a2 roadID];
  v11 = sub_1003E5C9C(a2);
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 17) = [a2 isRail];
  *(a1 + 18) = [a2 isTunnel];
  *(a1 + 19) = [a2 isBridge];
  *(a1 + 20) = [a2 roadClass];
  *(a1 + 24) = [a2 formOfWay];
  v12 = [a2 travelDirection];
  *(a1 + 72) = v12;
  *(a1 + 16) = (v12 != 0) & ~*(a1 + 17);
  *(a1 + 76) = [a2 rampType];
  v13 = [a2 isRoadPedestrianNavigable];
  v14 = [a2 walkableSide];
  v15 = [a2 isRail];
  if (v14 - 1 < 3)
  {
    v16 = 1;
  }

  else
  {
    v16 = v13;
  }

  *(a1 + 80) = v16 & (v15 ^ 1);
  *(a1 + 81) = [a2 isDrivable];
  v17 = [a2 isRoadPedestrianNavigable];
  v18 = [a2 walkableSide];
  v19 = [a2 isRail];
  if (((v18 - 1 > 2) & ~v17) != 0 || v19)
  {
    v21 = [a2 bikeableSide];
    v20 = [a2 isRail] ^ 1;
    if (v21 - 1 >= 3)
    {
      LOBYTE(v20) = 0;
    }
  }

  else
  {
    LOBYTE(v20) = 1;
  }

  *(a1 + 82) = v20;
  *(a1 + 84) = [a2 walkableSide];
  *(a1 + 108) = [objc_msgSend(a2 "startJunction")];
  *(a1 + 112) = [objc_msgSend(a2 "endJunction")];
  *(a1 + 116) = [objc_msgSend(a2 "startJunction")];
  *(a1 + 117) = [objc_msgSend(a2 "endJunction")];
  *(a1 + 96) = sub_1003E5878([a2 roadClass], objc_msgSend(a2, "travelDirection") != 0);
  if ([a2 speedLimitIsMPH])
  {
    v22 = 0.44704;
  }

  else
  {
    v22 = 0.277778;
  }

  *(a1 + 32) = v22 * [a2 speedLimit];
  *(a1 + 104) = [a2 laneCount];
  *(a1 + 88) = [a2 bikeableSide];
  if ([a2 coordinateCount])
  {
    v23 = 0;
    v24 = 0;
    do
    {
      sub_1003E4200(a1, ([a2 coordinates] + v23), 1);
      ++v24;
      v23 += 16;
    }

    while ([a2 coordinateCount] > v24);
  }

  if ((v3 & 1) == 0 && [a2 coordinateCount] == 1)
  {
    sub_1003E4200(a1, [a2 coordinates], 0);
  }

  if ([a2 coordinateCount])
  {
    *(a1 + 120) = *([a2 coordinates3d] + 2);
    v25 = [a2 coordinates3d];
    *(a1 + 128) = v25[3 * [a2 coordinateCount] - 1];
  }

  return 1;
}

void sub_1003E5C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1003E5C9C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 roadID];
  v48 = v2;
  if ([a1 coordinateCount] >= 2)
  {
    __src = 0;
    v46 = 0;
    v47 = 0;
    v44 = *[a1 coordinates];
    v3 = __src;
    v4 = v46 - __src;
    v5 = (v46 - __src) >> 4;
    v6 = v5 + 1;
    if ((v5 + 1) >> 60)
    {
      sub_10028C64C();
    }

    v7 = v47 - __src;
    if ((v47 - __src) >> 3 > v6)
    {
      v6 = v7 >> 3;
    }

    v8 = v7 >= 0x7FFFFFFFFFFFFFF0;
    v9 = 0xFFFFFFFFFFFFFFFLL;
    if (!v8)
    {
      v9 = v6;
    }

    if (v9)
    {
      sub_1003E5FE8(&__src, v9);
    }

    *(16 * v5) = v44;
    memcpy(0, v3, v4);
    v10 = __src;
    __src = 0;
    v46 = (16 * v5 + 16);
    v47 = 0;
    if (v10)
    {
      operator delete(v10);
    }

    *&v11 = v44;
    v12 = 0;
    v46 = (16 * v5 + 16);
    v13 = *(&v44 + 1);
    v14 = 1;
    while ([a1 coordinateCount] > v14)
    {
      v15 = [a1 coordinates];
      v16 = *&v15[v12 + 24];
      v17 = [NSString stringWithFormat:@"%.7lf", *&v15[v12 + 16]];
      v18 = [NSString stringWithFormat:@"%.7lf", v16];
      [(NSString *)v17 doubleValue];
      v20 = v19;
      [(NSString *)v18 doubleValue];
      v21 = *&v11;
      *(&v11 + 1) = *(&v44 + 1);
      if (vabdd_f64(*&v44, v20) >= 0.0000001 || vabdd_f64(v13, *&v11) >= 0.0000001)
      {
        v22 = v46;
        if (v46 >= v47)
        {
          v24 = __src;
          v25 = v46 - __src;
          v26 = (v46 - __src) >> 4;
          v27 = v26 + 1;
          if ((v26 + 1) >> 60)
          {
            sub_10028C64C();
          }

          v28 = v47 - __src;
          if ((v47 - __src) >> 3 > v27)
          {
            v27 = v28 >> 3;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFF0)
          {
            v29 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v27;
          }

          if (v29)
          {
            sub_1003E5FE8(&__src, v29);
          }

          v30 = (v46 - __src) >> 4;
          v31 = (16 * v26);
          *v31 = v20;
          *(v31 + 1) = v11;
          v23 = 16 * v26 + 16;
          v32 = (16 * v26 - 16 * v30);
          memcpy(&v31[-2 * v30], v24, v25);
          v33 = __src;
          __src = v32;
          v46 = v23;
          v47 = 0;
          if (v33)
          {
            operator delete(v33);
          }
        }

        else
        {
          *v46 = v20;
          *(v22 + 1) = v11;
          v23 = (v22 + 16);
        }

        v46 = v23;
      }

      ++v14;
      v12 += 16;
      v13 = v21;
      *&v11 = v20;
      v44 = v11;
    }

    v34 = __src;
    if ((v46 - __src) >= 0x11)
    {
      v35 = [a1 isRail];
      v36 = [a1 isBridge];
      v37 = [a1 isTunnel];
      sub_1003E6060(v35, v36, v37, &__src, &v48, v38, v39, v40, v41, v42);
      v2 = v48;
      v34 = __src;
    }

    if (v34)
    {
      v46 = v34;
      operator delete(v34);
    }
  }

  return v2;
}

void sub_1003E5FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003E5FE8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1001D0818();
}

double sub_1003E6060(int a1, int a2, int a3, uint64_t *a4, unint64_t *a5, __n128 a6, __n128 a7, double a8, double a9, __n128 a10)
{
  if (a3)
  {
    v11 = 5;
  }

  else
  {
    v11 = 2;
  }

  if (a1)
  {
    v11 = 4;
  }

  if (a2)
  {
    v12 = 3;
  }

  else
  {
    v12 = v11;
  }

  v25 = 0uLL;
  v13 = *a4;
  v14 = (a4[1] - *a4) >> 4;
  if (v14 >= 2 * v12 + 2)
  {
    v25 = *(v13 + 16 * v12);
  }

  else
  {
    v15 = 0.7;
    if (a3)
    {
      v15 = 0.9;
    }

    if (a1)
    {
      v15 = 0.775;
    }

    if (a2)
    {
      v16 = 0.825;
    }

    else
    {
      v16 = v15;
    }

    v17 = v14 > 2;
    v18 = (v13 + 16 * (v14 > 2));
    v19 = *v18;
    v20 = v18[1];
    v21 = 16;
    if (v17)
    {
      v21 = 32;
    }

    sub_1003E61A8(&v25, v19, v20, *(v13 + v21), *(v13 + v21 + 8), v16);
  }

  result = *(&v25 + 1);
  v23 = vabdd_f64(0.0, *&v25) >= 0.0000001;
  v24 = vabdd_f64(0.0, *(&v25 + 1)) >= 0.0000001 || v23;
  if (v24 == 1)
  {
    result = (*(&v25 + 1) + 180.0) * 10000000.0;
    *a5 = result | (((*&v25 + 90.0) * 10000000.0) << 32);
  }

  return result;
}

void sub_1003E61A8(double *a1, double a2, double a3, double a4, double a5, double a6)
{
  *a1 = a2 + (a4 - a2) * a6;
  v7 = a3 + 360.0;
  if (a3 >= 0.0)
  {
    v7 = a3;
  }

  v8 = a5 + 360.0;
  if (a5 >= 0.0)
  {
    v8 = a5;
  }

  v9 = v8 - v7;
  if (v9 <= 180.0)
  {
    if (v9 < -180.0)
    {
      v9 = v9 + 360.0;
    }
  }

  else
  {
    v9 = v9 + -360.0;
  }

  v10 = fmod(a3 + v9 * a6, 360.0);
  if (v10 <= -180.0)
  {
    v10 = v10 + 360.0;
  }

  else if (v10 > 180.0)
  {
    v10 = v10 + -360.0;
  }

  a1[1] = v10;
}

uint64_t sub_1003E626C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100008080(v2);
  }

  return a1;
}

void sub_1003E629C(void *a1@<X0>, void *a2@<X8>)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v5[2] = sub_1003E6370;
  v5[3] = &unk_10244FBA0;
  v3 = a1[1];
  v5[4] = *a1;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (qword_102656148 != -1)
  {
    dispatch_once(&qword_102656148, v5);
  }

  v4 = *(&xmmword_1025D53C0 + 1);
  *a2 = xmmword_1025D53C0;
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    sub_100008080(v6);
  }
}

uint64_t sub_1003E63CC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003E63E8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100008080(v1);
  }
}

uint64_t *sub_1003E63F8(uint64_t a1, uint64_t *a2)
{
  result = sub_1003E646C((a1 + 64), a2);
  for (i = *(a1 + 32); i != a1 + 24; i = *(i + 8))
  {
    result = (*(**(i + 24) + 16))(*(i + 24), a1);
  }

  return result;
}

uint64_t *sub_1003E646C(unsigned __int16 *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = *(a1 + 1);
  v6 = *a1;
  if (v5 == v4)
  {
    v7 = &a1[16 * v6];
    v8 = *(v7 + 2);
    if (v8)
    {
      *(v7 + 3) = v8;
      operator delete(v8);
      LODWORD(v6) = *a1;
      v4 = a1[1];
      v5 = *(a1 + 1);
    }

    else
    {
      v5 = v4;
    }
  }

  v9 = v4 + v6;
  v10 = v5;
  if (v9 < v5)
  {
    v10 = 0;
  }

  v11 = &a1[16 * (v9 - v10)];
  v12 = *a2;
  v11[2] = 0;
  v11 += 2;
  *(v11 - 1) = v12;
  v11[1] = 0;
  v11[2] = 0;
  result = sub_10038EB38(v11, a2[1], a2[2], (a2[2] - a2[1]) >> 2);
  v14 = a1[1];
  v15 = *(a1 + 1);
  if (v15 <= v14)
  {
    v16 = *a1 + 1;
    if (v16 < v15)
    {
      LOWORD(v15) = 0;
    }

    *a1 = v16 - v15;
  }

  else
  {
    a1[1] = v14 + 1;
  }

  return result;
}

void sub_1003E653C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 16);
  sub_1003E66FC(a1 + 8, a2, a3);
  if (!v4 && *(a1 + 16) == 1)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_101878B30();
    }

    v5 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "creating IMUFoundationModel dispatcher", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101878B44();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        if (*(a1 + 48))
        {
          v9 = 0;
          operator new();
        }

        sub_100008080(v7);
      }
    }
  }
}

void sub_1003E66D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1003E7670(va);
  sub_100008080(v3);
  _Unwind_Resume(a1);
}

void sub_1003E66FC(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1025D45A0 != -1)
  {
    sub_101878B30();
  }

  v6 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
  {
    v13 = 134218240;
    v14 = a2;
    v15 = 1024;
    v16 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "request stream obs %p attachClient leech %d", &v13, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101878C20(a2, a3);
  }

  if ((a3 & 1) == 0)
  {
    ++*(a1 + 8);
    if (qword_1025D45A0 != -1)
    {
      sub_101878D14();
    }

    v7 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 8);
      v13 = 67109120;
      LODWORD(v14) = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "incrementing active ref count %d", &v13, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101878D3C((a1 + 8));
    }
  }

  v9 = a1 + 16;
  for (i = *(a1 + 24); ; i = *(i + 8))
  {
    if (i == v9)
    {
      goto LABEL_25;
    }

    if (*(i + 24) == a2)
    {
      break;
    }
  }

  if (i == v9)
  {
LABEL_25:
    if (qword_1025D45A0 != -1)
    {
      sub_101878D14();
    }

    v12 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
    {
      v13 = 134217984;
      v14 = a2;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "request stream adding observer %p", &v13, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101878F14();
    }

    operator new();
  }

  if (qword_1025D45A0 != -1)
  {
    sub_101878D14();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
  {
    LOWORD(v13) = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "refusing to add redundant observer", &v13, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101878E38();
  }
}

void sub_1003E69E4(uint64_t a1, uint64_t a2)
{
  if (sub_1003E6B84(a1 + 8, a2))
  {
    if (*(a1 + 16) != 1)
    {
      sub_101879000(qword_1025D45A0 == -1);
    }

    if (qword_1025D45A0 != -1)
    {
      sub_101878B30();
    }

    v4 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "removing IMUFoundationModel delegate", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018791D0();
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = v6;
        v8 = *(a1 + 48);
        if (v8)
        {
          (*(*v8 + 184))(v8);
        }

        sub_100008080(v7);
      }
    }
  }

  if (qword_1025D45A0 != -1)
  {
    sub_101878D14();
  }

  v9 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "detaching IMUFoundationModel client", v10, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018792AC();
  }

  sub_1003E6D3C(a1 + 8, a2);
}

uint64_t sub_1003E6B84(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    for (i = *(a1 + 24); i != a1 + 16; i = *(i + 8))
    {
      if (*(i + 24) == a2 && (*(i + 16) & 1) == 0)
      {
        if (qword_1025D45A0 != -1)
        {
          sub_101878B30();
        }

        v6 = qword_1025D45A8;
        if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
        {
          *v8 = 0;
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "shouldReleaseResourceOnDetach 1", v8, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101879464();
        }

        return 1;
      }
    }

    if (qword_1025D45A0 != -1)
    {
      sub_101878B30();
    }

    v5 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "shouldReleaseResourceOnDetach 0", v7, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101879540();
      return 0;
    }
  }

  else
  {
    if (qword_1025D45A0 != -1)
    {
      sub_101878B30();
    }

    v3 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "shouldReleaseResourceOnDetach early 0", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101879388();
      return 0;
    }
  }

  return result;
}

void sub_1003E6D3C(uint64_t a1, uint64_t a2)
{
  if (qword_1025D45A0 != -1)
  {
    sub_101878B30();
  }

  v4 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
  {
    v15 = 134217984;
    v16 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "detachClient %p", &v15, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187961C();
  }

  v5 = (a1 + 16);
  v6 = *(a1 + 24);
  if (v6 != (a1 + 16))
  {
    while (v6[3] != a2)
    {
      v6 = v6[1];
      if (v6 == v5)
      {
        return;
      }
    }
  }

  if (v6 != v5)
  {
    v7 = *(v6 + 16);
    if (qword_1025D45A0 != -1)
    {
      sub_101878D14();
    }

    v8 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
    {
      v15 = 134218240;
      v16 = a2;
      v17 = 1024;
      v18 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "release stream removing observer %p leech %d", &v15, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101879708(a2, v7);
    }

    v10 = *v6;
    v9 = v6[1];
    *(v10 + 8) = v9;
    *v9 = v10;
    --*(a1 + 32);
    operator delete(v6);
    if ((v7 & 1) == 0)
    {
      v12 = *(a1 + 8);
      v11 = (a1 + 8);
      *v11 = v12 - 1;
      if (qword_1025D45A0 != -1)
      {
        sub_101878D14();
      }

      v13 = qword_1025D45A8;
      if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
      {
        v14 = *v11;
        v15 = 134218240;
        v16 = a2;
        v17 = 1024;
        v18 = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "release stream observer %p decrementing active ref count %d", &v15, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018797FC(a2, v11);
      }
    }
  }
}

double sub_1003E6FB4(uint64_t a1, int a2)
{
  result = -1.0;
  if (a2 == 1 && *(a1 + 66))
  {
    v3 = *(a1 + 66) + *(a1 + 64) - 1;
    v4 = *(a1 + 68);
    if (v3 < v4)
    {
      v4 = 0;
    }

    return *(a1 + 32 * (v3 - v4) + 72);
  }

  return result;
}

void sub_1003E6FF4(unsigned __int16 *a1)
{
  sub_1003E70C4(a1);

  operator delete();
}

void sub_1003E7058(uint64_t a1)
{
  sub_1003E70C4((a1 - 8));

  operator delete();
}

unsigned __int16 *sub_1003E70C4(unsigned __int16 *a1)
{
  *a1 = &off_10244FBE0;
  *(a1 + 1) = off_10244FC48;
  if (qword_1025D45A0 != -1)
  {
    sub_101878B30();
  }

  v2 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "factory stream imu foundation model destroyed", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018798F0(buf);
    v7[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 2, "factory stream imu foundation model destroyed", v7, 2);
    v6 = v5;
    sub_100152C7C("Generic", 1, 0, 2, "virtual CMDataProviderFactoryIMUFoundationModel::~CMDataProviderFactoryIMUFoundationModel()", "%s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  sub_1003E72A4(a1 + 32);
  v3 = *(a1 + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  *(a1 + 1) = off_10244FCF8;
  sub_1001FB750(a1 + 3);
  return a1;
}

void sub_1003E7298(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

unsigned __int16 *sub_1003E72A4(unsigned __int16 *a1)
{
  v2 = a1[1];
  if (a1[1])
  {
    v3 = *a1;
    v4 = &a1[16 * v3];
    do
    {
      v5 = *(a1 + 1);
      if (v3 < v5)
      {
        v5 = 0;
      }

      v6 = &v4[-16 * v5];
      v7 = *(v6 + 2);
      if (v7)
      {
        *(v6 + 3) = v7;
        operator delete(v7);
      }

      ++v3;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return a1;
}

void *sub_1003E737C(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10244FD30;
  sub_1003E7474((a1 + 3), a2);
  return a1;
}

void sub_1003E73F8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10244FD30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1003E7474(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = a1 + 24;
  *(a1 + 32) = a1 + 24;
  *(a1 + 40) = 0;
  *(a1 + 48) = v4;
  *a1 = &off_10244FBE0;
  *(a1 + 8) = off_10244FC48;
  *(a1 + 56) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 64) = 0xA00000000;
    sub_100008080(v3);
  }

  else
  {
    *(a1 + 64) = 0xA00000000;
  }

  return a1;
}

__n128 sub_1003E75A4(uint64_t a1, uint64_t a2)
{
  *a2 = off_10244FD80;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1003E75DC(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t sub_1003E7624(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003E7670(uint64_t a1)
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

uint64_t sub_1003E76F0(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

id sub_1003E7A00()
{
  v0 = +[NSMutableArray array];
  v1 = objc_autoreleasePoolPush();
  if (qword_102656158 - qword_102656150 != 8)
  {
    v2 = 0;
    do
    {
      v3 = [GPSCalCoreAnalyticsBin alloc];
      v4 = (qword_102656150 + 8 * v2++);
      [v0 addObject:{-[GPSCalCoreAnalyticsBin initWithSpeeds:speedUB:](v3, "initWithSpeeds:speedUB:", *v4, v4[1])}];
    }

    while (v2 < ((qword_102656158 - qword_102656150) >> 3) - 1);
  }

  objc_autoreleasePoolPop(v1);
  return v0;
}

uint64_t sub_1003E7AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = sub_1003E7A00();
  sub_1003E7E00(a1, @"GPSSpeedToKValueTable", v6, 1, v4, v3);
  *a1 = off_10244FE40;
  sub_100536F74(a1 + 56, "CMGPSRawSpeedKValueMtex", 0, 1);
  *(a1 + 48) = sub_1003E7A00();
  if (qword_1025D4270 != -1)
  {
    sub_101879934();
  }

  v7 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
  {
    v8 = [*(a1 + 48) count];
    *buf = 67109120;
    v20 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "GPSRawSpeedToKValueTable: number of def bins: %d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101879948(buf);
    v12 = qword_1025D4278;
    v13 = [*(a1 + 48) count];
    v18[0] = 67109120;
    v18[1] = v13;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v12, 1, "GPSRawSpeedToKValueTable: number of def bins: %d", v18);
    v15 = v14;
    sub_100152C7C("Generic", 1, 0, 2, "CMMobilityCal::GPSRawSpeedToKValueTable::GPSRawSpeedToKValueTable(BOOL, BOOL)", "%s\n", v14);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  sub_1003E8078(a1);
  sub_1003E81CC(a1, 1);
  if (qword_1025D4270 != -1)
  {
    sub_10187998C();
  }

  v9 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Log GPSRawSpeedToKValueTable bins on start up.", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101879948(buf);
    LOWORD(v18[0]) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4278, 0, "Log GPSRawSpeedToKValueTable bins on start up.", v18, 2);
    v17 = v16;
    sub_100152C7C("Generic", 1, 0, 2, "CMMobilityCal::GPSRawSpeedToKValueTable::GPSRawSpeedToKValueTable(BOOL, BOOL)", "%s\n", v16);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  sub_1003E8728(a1, v10);
  return a1;
}

void sub_1003E7DC4(_Unwind_Exception *a1)
{
  sub_10053700C(v2);
  sub_1003E8A2C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1003E7E00(uint64_t a1, void *a2, uint64_t a3, int a4, char a5, char a6)
{
  *a1 = &off_10244FF00;
  *(a1 + 8) = [NSMutableArray arrayWithArray:a3];
  *(a1 + 16) = a4;
  *(a1 + 20) = -1;
  v11 = a2;
  *(a1 + 32) = v11;
  *(a1 + 40) = a5;
  *(a1 + 41) = a6;
  *(a1 + 24) = sub_1000206B4(v11, v12);
  if ((sub_1003EA044(a1) & 0x80000000) != 0)
  {
    if (qword_1025D4270 != -1)
    {
      sub_101879934();
    }

    v13 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v20 = 138412290;
      v21 = v14;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "Unable to restore table %@.", &v20, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018799B4();
    }

    v15 = *(a1 + 8);
    if (v15 && [v15 count])
    {
      if (qword_1025D4270 != -1)
      {
        sub_10187998C();
      }

      v16 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 16);
        v20 = 67109120;
        LODWORD(v21) = v17;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "Use default bins version %d and store them.", &v20, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101879AA0((a1 + 16));
      }

      if (sub_1003E93F4(a1) == 100)
      {
        *(a1 + 20) = *(a1 + 16);
      }
    }

    else
    {
      *(a1 + 8) = 0;
      if (qword_1025D4270 != -1)
      {
        sub_10187998C();
      }

      v18 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20) = 0;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "Unexpected error in calibration table initialization.", &v20, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101879B9C();
      }
    }
  }

  return a1;
}

uint64_t sub_1003E8078(uint64_t a1)
{
  if (*(a1 + 16) != *(a1 + 20))
  {
    v9 = v1;
    v10 = v2;
    if (qword_1025D4270 != -1)
    {
      sub_101879934();
    }

    v4 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "The version of restored table does not match runtime version. Restoring default.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101879C80();
    }

    *(a1 + 8) = [NSMutableArray arrayWithArray:sub_1003E7A00()];
    if (sub_1003E93F4(a1) == 100)
    {
      *(a1 + 20) = *(a1 + 16);
    }

    else
    {
      if (qword_1025D4270 != -1)
      {
        sub_10187998C();
      }

      v5 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "Table display error.", v7, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101879D5C();
      }
    }
  }

  return 100;
}

uint64_t sub_1003E81CC(uint64_t a1, char a2)
{
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (a2)
  {
    if (qword_1025D4270 != -1)
    {
      sub_101879934();
    }

    v5 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "* CMMobilityCal::GPSRawSpeedToKValueTable *", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101879F1C();
    }
  }

  else
  {
    if (qword_1025D4270 != -1)
    {
      sub_101879934();
    }

    v6 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "* CMMobilityCal::GPSRawSpeedToKValueTable *", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101879E40();
    }
  }

  v7 = *(a1 + 8);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7);
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = MEMORY[0];
    do
    {
      v12 = 0;
      do
      {
        if (MEMORY[0] != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(8 * v12);
        if (v13)
        {
          if (a2)
          {
            if (qword_1025D4270 != -1)
            {
              sub_10187998C();
            }

            v14 = p_info[79];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              [v13 mean];
              v16 = v15;
              [v13 variance];
              v18 = v17;
              v19 = [v13 updateCount];
              [v13 lastUpdateTime];
              *buf = 67110144;
              v57 = v10;
              v58 = 2048;
              v59 = v16;
              v60 = 2048;
              v61 = v18;
              v62 = 1024;
              v63 = v19;
              p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
              v64 = 2048;
              v65 = v20;
              _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Bin #%d | mean: %f | variance: %f | updateCount: %d | lastUpdateTime: %f", buf, 0x2Cu);
              ++v10;
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4270 != -1)
              {
                sub_10187998C();
              }

              v21 = p_info[79];
              [v13 mean];
              v23 = v22;
              [v13 variance];
              v25 = v24;
              v26 = [v13 updateCount];
              [v13 lastUpdateTime];
              v46 = 67110144;
              v47 = v10;
              v48 = 2048;
              v49 = v23;
              v50 = 2048;
              v51 = v25;
              v52 = 1024;
              v53 = v26;
              v54 = 2048;
              v55 = v27;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v21, 2, "Bin #%d | mean: %f | variance: %f | updateCount: %d | lastUpdateTime: %f", &v46);
LABEL_39:
              v43 = v28;
              sub_100152C7C("Generic", 1, 0, 2, "CMError CMMobilityCal::GPSRawSpeedToKValueTable::show(BOOL)", "%s\n", v28);
              if (v43 != buf)
              {
                free(v43);
              }

              ++v10;
              p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            }
          }

          else
          {
            if (qword_1025D4270 != -1)
            {
              sub_10187998C();
            }

            v29 = p_info[79];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              [v13 mean];
              v31 = v30;
              [v13 variance];
              v33 = v32;
              v34 = [v13 updateCount];
              [v13 lastUpdateTime];
              *buf = 67110144;
              v57 = v10;
              v58 = 2048;
              v59 = v31;
              v60 = 2048;
              v61 = v33;
              v62 = 1024;
              v63 = v34;
              p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
              v64 = 2048;
              v65 = v35;
              _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "Bin #%d | mean: %f | variance: %f | updateCount: %d | lastUpdateTime: %f", buf, 0x2Cu);
              ++v10;
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4270 != -1)
              {
                sub_10187998C();
              }

              v36 = p_info[79];
              [v13 mean];
              v38 = v37;
              [v13 variance];
              v40 = v39;
              v41 = [v13 updateCount];
              [v13 lastUpdateTime];
              v46 = 67110144;
              v47 = v10;
              v48 = 2048;
              v49 = v38;
              v50 = 2048;
              v51 = v40;
              v52 = 1024;
              v53 = v41;
              v54 = 2048;
              v55 = v42;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v36, 0, "Bin #%d | mean: %f | variance: %f | updateCount: %d | lastUpdateTime: %f", &v46);
              goto LABEL_39;
            }
          }
        }

        v12 = v12 + 1;
      }

      while (v9 != v12);
      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7);
      v9 = v44;
    }

    while (v44);
  }

  return 100;
}

unsigned __int8 *sub_1003E8728(uint64_t a1, uint64_t a2)
{
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = *(a1 + 8);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, a2, &v26, v30, 16);
  v4 = result;
  if (result)
  {
    v5 = *v27;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v27 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v26 + 1) + 8 * v6);
      buf[0] = 0;
      result = sub_100126E84(v25, "SaveGPSCalTable", buf, 0);
      if (v25[1] != 1)
      {
        break;
      }

      if (qword_1025D4270 != -1)
      {
        sub_10187998C();
      }

      v8 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CMMobilityCal::GPSRawSpeedToKValueTable Logging Bins to MSL", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101879FF8(&v23, v24);
      }

      sub_10147CAB4(buf);
      [v7 speedLB];
      v22 |= 4u;
      v18 = v9;
      [v7 speedUB];
      v22 |= 8u;
      v19 = v10;
      [v7 mean];
      v22 |= 2u;
      v17 = v11;
      [v7 variance];
      v22 |= 0x10u;
      v20 = v12;
      v13 = [v7 updateCount];
      v22 |= 0x20u;
      v21 = v13;
      [v7 lastUpdateTime];
      v22 |= 1u;
      v16 = v14;
      if (qword_102637F48 != -1)
      {
        sub_10187A10C();
      }

      if (qword_102637F50)
      {
        operator new();
      }

      PB::Base::~Base(buf);
      if (v4 == ++v6)
      {
        result = objc_msgSend_countByEnumeratingWithState_objects_count_(v2);
        v4 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

void sub_1003E89F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PB::Base::~Base(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003E8A2C(uint64_t a1)
{
  *a1 = &off_10244FF00;

  *(a1 + 32) = 0;
  v2 = *(a1 + 8);
  if (v2)
  {

    *(a1 + 8) = 0;
  }

  return a1;
}

uint64_t sub_1003E8A90(uint64_t a1)
{
  *a1 = off_10244FE40;

  sub_10053700C(a1 + 56);

  return sub_1003E8A2C(a1);
}

void sub_1003E8AF8(uint64_t a1)
{
  sub_1003E8A90(a1);

  operator delete();
}

void *sub_1003E8B30(uint64_t a1, double *a2)
{
  if (qword_1025D4270 != -1)
  {
    sub_101879934();
  }

  v4 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Attempt to lookup bin.", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187A16C();
  }

  v6 = a1 + 56;
  v5 = *(a1 + 56);
  *buf = a1 + 56;
  (*(v5 + 16))(a1 + 56);
  v18 = 256;
  v7 = *a2;
  v8 = *(a1 + 8);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, 0);
  if (v9)
  {
    v10 = v7 + 0.00001;
    v11 = MEMORY[0];
LABEL_9:
    v12 = 0;
    while (1)
    {
      if (MEMORY[0] != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(8 * v12);
      if (v13)
      {
        [*(8 * v12) speedLB];
        if (v10 >= v14)
        {
          [v13 speedUB];
          if (v10 < v15)
          {
            break;
          }
        }
      }

      if (v9 == ++v12)
      {
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8);
        if (v9)
        {
          goto LABEL_9;
        }

        break;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  (*(*v6 + 24))(v6);
  return v13;
}

void sub_1003E8D38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003E8D6C(uint64_t a1, double *a2, void *a3)
{
  v6 = a1 + 56;
  (*(*(a1 + 56) + 16))(a1 + 56);
  v7 = *a2;
  v8 = *(v6 - 48);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, 0);
  if (v10)
  {
    v11 = v7 + 0.00001;
    v12 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (MEMORY[0] != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(8 * i);
        if (v14)
        {
          [*(8 * i) speedLB];
          if (v11 >= v15)
          {
            [v14 speedUB];
            if (v11 < v16)
            {
              [a3 mean];
              [v14 setMean:?];
              [a3 variance];
              [v14 setVariance:?];
              [v14 setUpdateCount:{objc_msgSend(a3, "updateCount")}];
              [a3 lastUpdateTime];
              [v14 setLastUpdateTime:?];
              goto LABEL_13;
            }
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
  sub_1003E8728(a1, v9);
  (*(*v6 + 24))(v6);
  return 100;
}

void sub_1003E8F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003E8F88(uint64_t a1, void *a2)
{
  [a2 distanceRawPed];
  if (v4 != 0.0)
  {
    [objc_msgSend(a2 "stop")];
    v6 = v5;
    [objc_msgSend(a2 "start")];
    if (v6 - v7 != 0.0)
    {
      [a2 distanceGps];
      v9 = v8;
      [a2 distanceRawPed];
      v24 = v9 / v10;
      [a2 distanceRawPed];
      v12 = v11;
      [objc_msgSend(a2 "stop")];
      v14 = v13;
      [objc_msgSend(a2 "start")];
      v23 = v12 / (v14 - v15);
      [a2 distanceGps];
      v17 = v16 / 400.0;
      if (v17 > 1.0)
      {
        v17 = 1.0;
      }

      v22 = v17 * 0.4;
      if (qword_1025D4270 != -1)
      {
        sub_101879934();
      }

      v18 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "Attempt to update GPS calibration table.", v21, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187A250();
      }

      sub_1003E9174(a1, &v24, &v23, &v22);
      if (qword_1025D4270 != -1)
      {
        sub_10187998C();
      }

      v19 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "Attempt to persist GPS calibration table.", v21, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187A32C();
      }

      sub_1003E93F4(a1);
    }
  }

  return 100;
}

uint64_t sub_1003E9174(uint64_t a1, double *a2, double *a3, double *a4)
{
  v8 = a1 + 56;
  (*(*(a1 + 56) + 16))(a1 + 56);
  v9 = *a3;
  v10 = *(v8 - 48);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, 0);
  if (v12)
  {
    v13 = v9 + 0.00001;
    v14 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (MEMORY[0] != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(8 * i);
        if (v16)
        {
          [*(8 * i) speedLB];
          if (v13 >= v17)
          {
            [v16 speedUB];
            if (v13 < v18)
            {
              [v16 mean];
              v20 = v19;
              v21 = *a4;
              v22 = *a2;
              [v16 variance];
              v24 = v23;
              v25 = *a4;
              v26 = *a2;
              [v16 mean];
              v28 = v27;
              [v16 setMean:v21 * v22 + v20 * (1.0 - v21)];
              [v16 setVariance:(1.0 - v21) * (v24 + v25 * ((v26 - v28) * (v26 - v28)))];
              [v16 setUpdateCount:{objc_msgSend(v16, "updateCount") + 1}];
              [v16 setLastUpdateTime:CFAbsoluteTimeGetCurrent()];
              goto LABEL_13;
            }
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
  sub_1003E8728(a1, v11);
  (*(*v8 + 24))(v8);
  return 100;
}

void sub_1003E93BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003E93F4(uint64_t a1)
{
  if (*(a1 + 41) != 1)
  {
    return 100;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && (v14[0] = @"version", v2 = [NSNumber numberWithInt:*(a1 + 16)], v14[1] = @"bins", v15[0] = v2, v15[1] = [NSArray arrayWithArray:*(a1 + 8)], [NSKeyedArchiver archivedDataWithRootObject:[NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2] requiringSecureCoding:1 error:0]))
  {
    if (qword_1025D4270 != -1)
    {
      sub_10187998C();
    }

    v3 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Attempt to store %@.", &v12, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187A408();
    }

    v5 = (a1 + 32);
    sub_1003046B4(*(v5 - 1));
    if ((*(**(v5 - 1) + 944))())
    {
      if (qword_1025D4270 != -1)
      {
        sub_10187998C();
      }

      v6 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *v5;
        v12 = 138412290;
        v13 = v7;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Table %@ stored successfully.", &v12, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187A5E8();
      }

      return 100;
    }

    if (qword_1025D4270 != -1)
    {
      sub_10187998C();
    }

    v10 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
    {
      v11 = *v5;
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "Failed to store %@.", &v12, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187A4F4();
    }

    return 103;
  }

  else
  {
    if (qword_1025D4270 != -1)
    {
      sub_10187998C();
    }

    v9 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "Failed to serialize calibration table for storage.", &v12, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187A6D4();
    }

    return 112;
  }
}

uint64_t sub_1003E9734(uint64_t a1, __int128 *a2)
{
  v5 = a1 + 56;
  v4 = *(a1 + 56);
  v68 = a1 + 56;
  (*(v4 + 16))(a1 + 56);
  v69 = 256;
  v6 = a2[1];
  buf = *a2;
  v90 = v6;
  *v91 = a2[2];
  *&v91[12] = *(a2 + 44);
  HIDWORD(v50) = sub_101270708(&buf);
  v7 = a2[1];
  buf = *a2;
  v90 = v7;
  *v91 = a2[2];
  *&v91[12] = *(a2 + 44);
  v8 = sub_100187E48(&buf);
  v9 = a2[1];
  buf = *a2;
  v90 = v9;
  *v91 = a2[2];
  *&v91[12] = *(a2 + 44);
  v10 = sub_1012707B4(&buf);
  v11 = a2[1];
  buf = *a2;
  v90 = v11;
  *v91 = a2[2];
  *&v91[12] = *(a2 + 44);
  v12 = sub_101270878(&buf);
  v46 = v5;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = *(a1 + 8);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
  if (v13)
  {
    v49 = v59;
    v15 = *v65;
    *&v14 = 67111424;
    v47 = v14;
    do
    {
      v16 = 0;
      do
      {
        if (*v65 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v64 + 1) + 8 * v16);
        if (v17)
        {
          if ([*(*(&v64 + 1) + 8 * v16) updateCount] < 1)
          {
            v19 = 0.0;
          }

          else
          {
            [v17 variance];
            v19 = sqrt(v18 / [v17 updateCount]) * 1.98;
          }

          v57 = _NSConcreteStackBlock;
          v58 = 3221225472;
          if (v19 <= 0.0)
          {
            v20 = 0.0;
          }

          else
          {
            v20 = 1.0 - v19;
          }

          v59[0] = sub_1003E9DB4;
          v59[1] = &unk_10244FE68;
          v60 = HIDWORD(v50);
          v61 = v8;
          v59[2] = v17;
          v62 = v10;
          v63 = v12;
          *&v59[3] = v20;
          *&v59[4] = v19;
          AnalyticsSendEventLazy();
          if (qword_1025D4270 != -1)
          {
            sub_10187998C();
          }

          v21 = qword_1025D4278;
          if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
          {
            [v17 speedLB];
            v23 = v22;
            __p = 0;
            v55 = 0;
            v56 = 0;
            sub_1002AD2D8(&__p, qword_102656150, qword_102656158, (qword_102656158 - qword_102656150) >> 3);
            if (v55 == __p)
            {
              LODWORD(v24) = 0;
            }

            else
            {
              v24 = 0;
              v25 = (v55 - __p) >> 3;
              if (v25 <= 1)
              {
                v25 = 1;
              }

              while (*(__p + v24) < v23)
              {
                if (v25 == ++v24)
                {
                  LODWORD(v24) = v25;
                  break;
                }
              }
            }

            [v17 mean];
            v27 = v26;
            [v17 variance];
            v29 = v28;
            [v17 lastUpdateTime];
            *&buf = __PAIR64__(HIDWORD(v50), v47);
            WORD4(buf) = 1024;
            *(&buf + 10) = v8;
            HIWORD(buf) = 1024;
            LODWORD(v90) = v24;
            WORD2(v90) = 1024;
            *(&v90 + 6) = v10;
            WORD5(v90) = 1024;
            HIDWORD(v90) = v12;
            *v91 = 2048;
            *&v91[2] = v27;
            *&v91[10] = 2048;
            *&v91[12] = v29;
            *&v91[20] = 2048;
            *&v91[22] = v20;
            v92 = 2048;
            v93 = v19;
            v94 = 2048;
            v95 = v30;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "GPS Calibration, sent Core Analytics event. ageGroup %d | gender: %d | speedBin: %d | userBmiBin: %d | userHeightBin: %d | kvalueMovingMean: %f | kvalueMovingVar: %f | kvalueConfidenceMetric: %f | kvalueStandardError: %f | timeFromLastUpdate: %f", &buf, 0x52u);
            if (__p)
            {
              v55 = __p;
              operator delete(__p);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_101879948(&buf);
            v31 = qword_1025D4278;
            [v17 speedLB];
            v33 = v32;
            v51 = 0;
            v52 = 0;
            v53 = 0;
            sub_1002AD2D8(&v51, qword_102656150, qword_102656158, (qword_102656158 - qword_102656150) >> 3);
            if (v52 == v51)
            {
              LODWORD(v34) = 0;
            }

            else
            {
              v34 = 0;
              v35 = (v52 - v51) >> 3;
              if (v35 <= 1)
              {
                v35 = 1;
              }

              while (*(v51 + v34) < v33)
              {
                if (v35 == ++v34)
                {
                  LODWORD(v34) = v35;
                  break;
                }
              }
            }

            [v17 mean];
            v37 = v36;
            [v17 variance];
            v39 = v38;
            [v17 lastUpdateTime];
            v70[0] = v47;
            v70[1] = HIDWORD(v50);
            v71 = 1024;
            v72 = v8;
            v73 = 1024;
            v74 = v34;
            v75 = 1024;
            v76 = v10;
            v77 = 1024;
            v78 = v12;
            v79 = 2048;
            v80 = v37;
            v81 = 2048;
            v82 = v39;
            v83 = 2048;
            v84 = v20;
            v85 = 2048;
            v86 = v19;
            v87 = 2048;
            v88 = v40;
            _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, v31, 1, "GPS Calibration, sent Core Analytics event. ageGroup %d | gender: %d | speedBin: %d | userBmiBin: %d | userHeightBin: %d | kvalueMovingMean: %f | kvalueMovingVar: %f | kvalueConfidenceMetric: %f | kvalueStandardError: %f | timeFromLastUpdate: %f", v70, 82, v45, v46, v47, *(&v47 + 1), *&obj, *&v49, v50, *&v51);
            v42 = v41;
            if (v51)
            {
              v52 = v51;
              operator delete(v51);
            }

            sub_100152C7C("Generic", 1, 0, 2, "CMError CMMobilityCal::GPSRawSpeedToKValueTable::sendCoreAnalytics(const CLBodyMetrics &)", "%s\n", v42);
            if (v42 != &buf)
            {
              free(v42);
            }
          }
        }

        v16 = v16 + 1;
      }

      while (v16 != v13);
      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
      v13 = v43;
    }

    while (v43);
  }

  (*(*v46 + 24))(v46);
  return 100;
}

void sub_1003E9D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

NSDictionary *sub_1003E9DB4(uint64_t a1)
{
  v11[0] = @"ageGroup";
  v12[0] = [NSNumber numberWithInt:*(a1 + 56)];
  v11[1] = @"gender";
  v12[1] = [NSNumber numberWithInt:*(a1 + 60)];
  v11[2] = @"speedBin";
  [*(a1 + 32) speedLB];
  v3 = v2;
  v9 = 0;
  v10 = 0;
  __p = 0;
  sub_1002AD2D8(&__p, qword_102656150, qword_102656158, (qword_102656158 - qword_102656150) >> 3);
  if (v9 == __p)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = (v9 - __p) >> 3;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    while (*(__p + v4) < v3)
    {
      if (v5 == ++v4)
      {
        v4 = v5;
        break;
      }
    }
  }

  v12[2] = [NSNumber numberWithInt:v4];
  v11[3] = @"userBmiBin";
  v12[3] = [NSNumber numberWithInt:*(a1 + 64)];
  v11[4] = @"userHeightBin";
  v12[4] = [NSNumber numberWithInt:*(a1 + 68)];
  v11[5] = @"kvalueMovingMean";
  [*(a1 + 32) mean];
  v12[5] = [NSNumber numberWithDouble:?];
  v11[6] = @"kvalueMovingVar";
  [*(a1 + 32) variance];
  v12[6] = [NSNumber numberWithDouble:?];
  v11[7] = @"kvalueConfidenceMetric";
  v12[7] = [NSNumber numberWithDouble:*(a1 + 40)];
  v11[8] = @"kvalueStandardError";
  v12[8] = [NSNumber numberWithDouble:*(a1 + 48)];
  v11[9] = @"timeFromLastUpdate";
  [*(a1 + 32) lastUpdateTime];
  v12[9] = [NSNumber numberWithDouble:?];
  v6 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:10];
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v6;
}

uint64_t sub_1003EA044(uint64_t a1)
{
  if (*(a1 + 40) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (qword_1025D4270 != -1)
  {
    sub_101879934();
  }

  v2 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    *v25 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Attempt to restore %@ from cache.", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187A7B8();
  }

  v23 = 0;
  v4 = (a1 + 32);
  if (!sub_1003045C8(*(a1 + 24), *(a1 + 32), &v23))
  {
    goto LABEL_28;
  }

  v5 = v23;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v22 = 0;
  v10 = [NSKeyedUnarchiver unarchivedObjectOfClasses:[NSSet setWithObjects:v6 fromData:v7 error:v8, v9, objc_opt_class(), 0], v5, &v22];
  if (v22)
  {
    if (qword_1025D4270 != -1)
    {
      sub_10187998C();
    }

    v11 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
    {
      v12 = *v4;
      *buf = 138412546;
      *v25 = v12;
      *&v25[8] = 2112;
      v26 = v22;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "Failed to decode %@, %@", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187A8A4(v4, &v22);
    }

    return 0xFFFFFFFFLL;
  }

  v13 = v10;
  if (!v10)
  {
    goto LABEL_28;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_28;
  }

  v15 = (a1 + 8);
  v14 = *(a1 + 8);
  if (v14)
  {

    *v15 = 0;
  }

  *(a1 + 20) = [objc_msgSend(v13 objectForKeyedSubscript:{@"version", "shortValue"}];
  v16 = (a1 + 20);
  *(v16 - 12) = [objc_msgSend(v13 objectForKeyedSubscript:{@"bins", "mutableCopy"}];
  if (qword_1025D4270 != -1)
  {
    sub_10187998C();
  }

  v17 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*v15 count];
    v19 = *v16;
    *buf = 67109376;
    *v25 = v18;
    *&v25[4] = 1024;
    *&v25[6] = v19;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "Restored %d bins of version %d.", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187A9C0(v15, v16);
  }

  if (![*v15 count] || (result = *v16, result <= 0))
  {
LABEL_28:
    if (qword_1025D4270 != -1)
    {
      sub_10187998C();
    }

    v21 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "Failed to restore bins.", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187AAF0();
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1003EA410()
{
  v1[0] = xmmword_101C76140;
  v1[1] = unk_101C76150;
  v1[2] = xmmword_101C76160;
  v2 = 0x4003333333333333;
  qword_102656158 = 0;
  unk_102656160 = 0;
  qword_102656150 = 0;
  sub_1002EBFD4(&qword_102656150, v1, &v3, 7uLL);
  return __cxa_atexit(sub_1003E76F0, &qword_102656150, dword_100000000);
}

uint64_t sub_1003EA530(uint64_t a1, uint64_t a2)
{
  if (qword_102656168 != -1)
  {
    sub_10187ABD4();
  }

  return qword_102636B58;
}

void sub_1003EAB8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10054B4D4(va);
  v12 = v9[45];
  if (v12)
  {
    sub_100008080(v12);
  }

  sub_1003EE27C(v10);
  sub_10095D914(v9);
  _Unwind_Resume(a1);
}

void sub_1003EABDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100011660(a1, a2);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003ED45C;
  v11[3] = &unk_10244FF80;
  v11[4] = a2;
  v11[5] = a1;
  v11[6] = a3;
  v11[7] = a4;
  v11[8] = a5;
  sub_10017A794(v10, v11);
}

void *sub_1003EAC84(void *a1, uint64_t a2, __n128 a3)
{
  *a1 = off_10244FF50;
  sub_1003EACF0(a1, a2, a3);
  v4 = a1[45];
  if (v4)
  {
    sub_100008080(v4);
  }

  sub_1003EE27C(a1 + 13);

  return sub_10095D914(a1);
}

void sub_1003EACF0(void *a1, uint64_t a2, __n128 a3)
{
  v3 = a1;
  v4 = a1[5];
  if (v4)
  {
    sub_1003EE27C(v4 + 90);
    sub_1003EE27C(v4 + 61);
    sub_1003EE27C(v4 + 32);
    sub_1003EE27C(v4 + 3);
    operator delete();
  }

  if (a1[6])
  {
    v5 = sub_1001C3FFC(a1, a2);
    sub_10095D9F8(v5, 0, v3[6]);
    a1 = v3[6];
    if (a1)
    {
      a1 = (*(*a1 + 8))(a1);
    }

    v3[6] = 0;
  }

  if (v3[8])
  {
    v6 = sub_10098EAD4(a1, a2);
    sub_10095D9F8(v6, 0, v3[8]);
    v7 = v3[8];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v3[8] = 0;
  }

  if (qword_1025D4280 != -1)
  {
    sub_10187ABE8();
  }

  v8 = qword_1025D4288;
  if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "Stopping orientation detection.", v9, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187AC68();
  }
}

void sub_1003EAE60(void *a1, uint64_t a2, __n128 a3)
{
  sub_1003EAC84(a1, a2, a3);

  operator delete();
}

void sub_1003EAE98(uint64_t result, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a2 < 3)
  {
    v5 = a2;
    v6 = result;
    if (!*(result + 352))
    {
      v7 = sub_1012D0640(result, a2);
      sub_101860780(v7);
    }

    if (a3 == 1)
    {
      if ((sub_100023B30(result, a2) & 0x80) != 0)
      {
        sub_1009B5D14(*(v6 + 352), sub_1003EB348, v6);
        sub_1009B5DB0(*(v6 + 352), sub_1003EB350, v6);
        sub_1009B5E04(*(v6 + 352), nullsub_99, v6);
        sub_1003EB390(v6);
        if (v5 == 2)
        {
          if (qword_1025D4280 != -1)
          {
            sub_10187AC40();
          }

          v12 = qword_1025D4288;
          if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
          {
            *buf = 67240192;
            *&buf[4] = 2;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "Unrecognized notification request %{public}u", buf, 8u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_10187AD4C();
          }
        }

        else
        {
          sub_10017A214(*(v6 + 352), 1);
        }
      }

      else if (v5 == 1)
      {
        sub_1003EB408(v6, 1, v11);
      }

      else if (v5)
      {
        if (qword_1025D4280 != -1)
        {
          sub_10187AC40();
        }

        v13 = qword_1025D4288;
        if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "Unrecognized notification", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10187AE4C();
        }
      }

      else
      {
        sub_1003EB408(v6, 0, v11);
      }

      if (!*(v6 + 392))
      {
        operator new();
      }

      *(v6 + 33) = 1;
    }

    else if (!a3)
    {
      *(result + 33) = 0;
      if (*(result + 392))
      {
        v8 = sub_10017BFF4(result, a2);
        sub_10095D9F8(v8, 0, *(v6 + 392));
        result = *(v6 + 392);
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        *(v6 + 392) = 0;
      }

      if ((sub_100023B30(result, a2) & 0x80) != 0)
      {
        sub_10017A214(*(v6 + 352), 0);
        sub_1003EB2DC(v6);
        sub_1009B5E04(*(v6 + 352), 0, 0);
        sub_1009B5DB0(*(v6 + 352), 0, 0);
        sub_1009B5D14(*(v6 + 352), 0, 0);
      }

      if (*(v6 + 48))
      {
        sub_1003EACF0(v6, v9, v10);
      }
    }
  }

  else
  {
    if (qword_1025D4280 != -1)
    {
      sub_10187ABE8();
    }

    v4 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Unrecognized notification", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187AF38();
    }
  }
}

void sub_1003EB2DC(uint64_t result)
{
  v1 = *(result + 368) - 1;
  *(result + 368) = v1;
  if (!v1)
  {
    sub_1009B5F5C(*(result + 352), 0, 0);
    if (sub_10026E634(*(result + 352)))
    {

      sub_1003EBFCC(result);
    }
  }
}

unint64_t sub_1003EB350(uint64_t a1)
{
  sub_1003ECA38(a1);

  return sub_1003ED46C(a1, 1);
}

void sub_1003EB390(uint64_t result)
{
  v2 = *(result + 368);
  *(result + 368) = v2 + 1;
  if (!v2)
  {
    sub_1009B5F5C(*(result + 352), sub_1003EBF94, result);
    if (sub_10026E634(*(result + 352)))
    {
      sub_1003EBFCC(result);
    }

    sub_1003EC11C(result);
  }
}

void sub_1003EB408(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a1;
  v4 = *(a1 + 40);
  if (v4)
  {
    sub_1003EE27C(v4 + 90);
    sub_1003EE27C(v4 + 61);
    sub_1003EE27C(v4 + 32);
    sub_1003EE27C(v4 + 3);
    operator delete();
  }

  v6 = (a1 + 32);
  v5 = *(a1 + 32);
  if (v5 < 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2;
  }

  if (v7 == 1)
  {
    if (v5 >= 2 && a2 != 0)
    {
      if (qword_1025D4280 != -1)
      {
        sub_10187ABE8();
      }

      v9 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *v6;
        *buf = 67240192;
        *&buf[4] = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "forceAccelOnly for device %{public}d", buf, 8u);
      }

      a1 = sub_10000A100(121, 2);
      if (a1)
      {
        sub_10187B024((v3 + 32));
      }

      *v6 = 0;
    }

    *(v3 + 56) = 1092616192;
    *(v3 + 76) = 1;
    *(v3 + 88) = 0;
  }

  else
  {
    *(a1 + 56) = 0x41A0000041C80000;
    v11 = sub_100011660(a1, a2);
    sub_100185AC0(v11, buf);
    sub_1000B9370(*buf, "OrientationGyroTimeout", (v3 + 88));
    v13 = *&buf[8];
    if (*&buf[8])
    {
      sub_100008080(*&buf[8]);
    }

    v14 = *(v3 + 88);
    *(v3 + 80) = v14 > 0.0;
    if (v14 > 0.0)
    {
      sub_1003ECC28((v3 + 104), 8);
      *(v3 + 76) = 2;
    }

    v15 = sub_100011660(v13, v12);
    sub_100185AC0(v15, buf);
    v16 = sub_1004FBE40(*buf, "OrientationStableVariance", (v3 + 84));
    if (*&buf[8])
    {
      sub_100008080(*&buf[8]);
    }

    if ((v16 & 1) == 0)
    {
      *(v3 + 84) = 961656599;
    }

    if (qword_1025D4280 != -1)
    {
      sub_10187AC40();
    }

    v17 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_INFO))
    {
      v18 = *(v3 + 88);
      v19 = *(v3 + 80);
      v20 = *(v3 + 84);
      *buf = 134349568;
      *&buf[4] = v18;
      *&buf[12] = 1026;
      *&buf[14] = v19;
      v43 = 2050;
      v44 = v20;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "fOrientationGyroTimeout,%{public}f,fEnableGyroTimeout,%{public}d,fMaxAccelerationVarianceForStability,%{public}f", buf, 0x1Cu);
    }

    a1 = sub_10000A100(121, 2);
    if (a1)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4280 != -1)
      {
        sub_10187AC40();
      }

      v31 = *(v3 + 88);
      v32 = *(v3 + 80);
      v33 = *(v3 + 84);
      v36 = 134349568;
      v37 = v31;
      v38 = 1026;
      v39 = v32;
      v40 = 2050;
      v41 = v33;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4288, 1, "fOrientationGyroTimeout,%{public}f,fEnableGyroTimeout,%{public}d,fMaxAccelerationVarianceForStability,%{public}f", &v36, 28);
      v35 = v34;
      a1 = sub_100152C7C("Generic", 1, 0, 2, "void CLOrientationNotifier::startDetection(BOOL)", "%s\n", v34);
      if (v35 != buf)
      {
        free(v35);
      }
    }
  }

  v21 = sub_100011660(a1, a2);
  sub_100185AC0(v21, buf);
  sub_10005BBE4(*buf, "OrientationAccelDecimation", (v3 + 76));
  v23 = *&buf[8];
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  *(v3 + 72) = *(v3 + 76);
  if (*(v3 + 56) <= 0.0)
  {
    if (qword_1025D4280 != -1)
    {
      sub_10187AC40();
    }

    v28 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_FAULT, "Not starting orientation detection since requested accelerometer frequency < 0", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187B120();
    }
  }

  else
  {
    v24 = sub_1001C3FFC(v23, v22);
    if (v24)
    {
      if ((v7 & 1) != 0 || sub_10098EAD4(v24, v25))
      {
        if (qword_1025D4280 != -1)
        {
          sub_10187AC40();
        }

        v26 = qword_1025D4288;
        if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *(v3 + 34);
          *buf = 67240192;
          *&buf[4] = v27;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "fHasSeenACaseLatchCoverOnce, %{public}d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10187B2F8(v3);
        }

        operator new();
      }

      if (qword_1025D4280 != -1)
      {
        sub_10187AC40();
      }

      v30 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_FAULT, "No gyro; not detecting orientation!", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10187B20C();
      }
    }

    else
    {
      if (qword_1025D4280 != -1)
      {
        sub_10187AC40();
      }

      v29 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_FAULT, "No accelerometer; not detecting orientation!", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10187B3F4();
      }
    }
  }
}

void sub_1003EBD40(unsigned __int8 *a1, uint64_t a2, __n128 a3)
{
  if (qword_1025D4280 != -1)
  {
    sub_10187ABE8();
  }

  v5 = qword_1025D4288;
  if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_INFO))
  {
    v6 = *a1;
    *buf = 67240192;
    LODWORD(v18) = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "Received keyboard state %{public}u", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187B4E0(a1);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    sub_1003F9798(v7, *a1);
  }

  if (*(a2 + 384))
  {
    if (qword_1025D4280 != -1)
    {
      sub_10187AC40();
    }

    v8 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_INFO))
    {
      v9 = *a1;
      *buf = 67109120;
      LODWORD(v18) = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "Sending keyboard state %u to AOP", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187B5D4(a1);
    }

    v16 = 5;
    HIBYTE(v16) = *a1;
    v15 = 0;
    v14 = 1;
    v10 = (*(**(a2 + 384) + 160))(*(a2 + 384), 32, &v16, 2, &v15, &v14);
    if (v10)
    {
      v11 = v10;
      if (qword_1025D4280 != -1)
      {
        sub_10187AC40();
      }

      v12 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
      {
        v13 = mach_error_string(v11);
        *buf = 136315394;
        v18 = v13;
        v19 = 1026;
        v20 = v11;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "SendCommand() = %s (0x%{public}x)", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10187B6C8();
      }
    }
  }
}

void sub_1003EBF94(void *a1)
{
  sub_1003EBFCC(a1);

  sub_1003EC11C(a1);
}

void sub_1003EBFCC(uint64_t a1)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660(Current, v3);
  if (Current == sub_10018D3EC())
  {
    if (*(a1 + 352))
    {
      v8 = *(a1 + 384);
      if (v8)
      {
        (*(*v8 + 72))(v8, 0);
      }

      v9 = *(a1 + 376);
      if (v9)
      {
        (*(*v9 + 24))(v9);
        IODestroyPlugInInterface(*(a1 + 376));
      }

      *(*(a1 + 352) + 8) = 0;
      *(a1 + 376) = 0;
      *(a1 + 384) = 0;
    }
  }

  else
  {
    if (qword_1025D4280 != -1)
    {
      sub_10187ABE8();
    }

    v4 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "closeHidDriverInterface should be called from motion thread", buf, 2u);
    }

    v5 = sub_10000A100(121, 0);
    if (v5)
    {
      sub_10187B7D4();
    }

    v7 = sub_100011660(v5, v6);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1003ECC20;
    v10[3] = &unk_102449A78;
    v10[4] = a1;
    sub_10017A794(v7, v10);
  }
}

void sub_1003EC11C(void *a1)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660(Current, v3);
  if (Current != sub_10018D3EC())
  {
    if (qword_1025D4280 != -1)
    {
      sub_10187ABE8();
    }

    v4 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "openHidDriverInterface should be called from motion thread", buf, 2u);
    }

    v5 = sub_10000A100(121, 0);
    if (v5)
    {
      sub_10187B8B8();
    }

    v7 = sub_100011660(v5, v6);
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_1003ECA30;
    v60[3] = &unk_102449A78;
    v60[4] = a1;
    sub_10017A794(v7, v60);
    return;
  }

  v8 = a1[44];
  if (!v8)
  {
    return;
  }

  theInterface = 0;
  valuePtr = 0;
  v57 = 0;
  v9 = sub_10026E634(v8);
  if (v9)
  {
    v10 = v9;
    RegistryID = IOHIDServiceClientGetRegistryID(v9);
    CFNumberGetValue(RegistryID, kCFNumberSInt64Type, &valuePtr);
    HIDWORD(parent) = 0;
    v12 = IORegistryEntryIDMatching(valuePtr);
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v12);
    if (MatchingService)
    {
      v14 = MatchingService;
      HIDWORD(v55) = 0;
      LODWORD(parent) = 0;
      ParentEntry = IORegistryEntryGetParentEntry(MatchingService, "IOService", &parent);
      if (ParentEntry)
      {
        v16 = ParentEntry;
        if (qword_1025D4280 != -1)
        {
          sub_10187AC40();
        }

        v17 = qword_1025D4288;
        if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
        {
          v18 = mach_error_string(v16);
          *buf = 67240450;
          *v72 = v16;
          *&v72[4] = 2082;
          *&v72[6] = v18;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "Unable to get parent of orientation service,retCode,0x%{public}x,retStr,%{public}s", buf, 0x12u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10187B99C();
        }

        v19 = v14;
LABEL_41:
        IOObjectRelease(v19);
        return;
      }

      IOObjectRelease(v14);
      v22 = IORegistryEntryGetParentEntry(parent, "IOService", &v55 + 1);
      if (v22)
      {
        v23 = v22;
        if (qword_1025D4280 != -1)
        {
          sub_10187AC40();
        }

        v24 = qword_1025D4288;
        if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
        {
          v25 = mach_error_string(v23);
          *buf = 67240450;
          *v72 = v23;
          *&v72[4] = 2082;
          *&v72[6] = v25;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_FAULT, "Unable to get grand parent of orientation service,retCode,0x%{public}x,retStr,%{public}s", buf, 0x12u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10187BAA8();
        }

        v19 = parent;
        goto LABEL_41;
      }

      IOObjectRelease(parent);
      v26 = HIDWORD(v55);
      v27 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x7Au, 0xCFu, 0x53u, 0x32u, 0x1Au, 0x35u, 0x48u, 0x93u, 0x87u, 0xCBu, 0xBAu, 0x64u, 0xE1u, 0x88u, 0x7Fu, 0xAEu);
      v28 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
      v29 = IOCreatePlugInInterfaceForService(v26, v27, v28, &theInterface, &parent + 1);
      if (v29)
      {
        v30 = v29;
        if (qword_1025D4280 != -1)
        {
          sub_10187AC40();
        }

        v31 = qword_1025D4288;
        if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
        {
          v32 = mach_error_string(v30);
          *buf = 67240706;
          *v72 = v30;
          *&v72[4] = 2082;
          *&v72[6] = v32;
          *&v72[14] = 2114;
          *&v72[16] = v10;
          _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_FAULT, "Unable to create plugin interface,retCode,0x%{public}x,retStr,%{public}s,service,%{public}@", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10187BBB4();
        }

        return;
      }

      v33 = theInterface;
      QueryInterface = (*theInterface)->QueryInterface;
      v35 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 1u, 0x64u, 0x69u, 0xD8u, 0x77u, 0x3Bu, 0x46u, 0xACu, 0x90u, 0x9Eu, 0xF9u, 0xCu, 0x4Au, 0x6Eu, 0x75u, 0x77u);
      v36 = CFUUIDGetUUIDBytes(v35);
      v37 = (QueryInterface)(v33, *&v36.byte0, *&v36.byte8, &v57);
      if (v37)
      {
        v38 = v37;
        if (qword_1025D4280 != -1)
        {
          sub_10187AC40();
        }

        v39 = qword_1025D4288;
        if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
        {
          v40 = mach_error_string(v38);
          *buf = 67240706;
          *v72 = v38;
          *&v72[4] = 2082;
          *&v72[6] = v40;
          *&v72[14] = 2114;
          *&v72[16] = v10;
          _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_FAULT, "Unable to set up query interface,retCode,0x%{public}x,retStr,%{public}s,service,%{public}@", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10187BCB8();
        }

LABEL_56:
        if (theInterface)
        {
          ((*theInterface)->Release)(theInterface);
          IODestroyPlugInInterface(theInterface);
        }

        return;
      }

      v41 = (*(*v57 + 64))(v57, 0);
      if (v41)
      {
        v42 = v41;
        if (qword_1025D4280 != -1)
        {
          sub_10187AC40();
        }

        v43 = qword_1025D4288;
        if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
        {
          v44 = mach_error_string(v42);
          *buf = 67240706;
          *v72 = v42;
          *&v72[4] = 2082;
          *&v72[6] = v44;
          *&v72[14] = 2114;
          *&v72[16] = v10;
          _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_FAULT, "Unable to open hid device interface,retCode,0x%{public}x,retStr,%{public}s,service,%{public}@", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10187BDBC();
        }

        if (v57)
        {
          (*(*v57 + 72))(v57, 0);
        }

        goto LABEL_56;
      }

      if (qword_1025D4280 != -1)
      {
        sub_10187AC40();
      }

      v45 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEFAULT))
      {
        v46 = a1[47];
        v47 = a1[48];
        *buf = 134219008;
        *v72 = valuePtr;
        *&v72[8] = 2048;
        *&v72[10] = v46;
        *&v72[18] = 2048;
        *&v72[20] = v47;
        v73 = 2048;
        v74 = theInterface;
        v75 = 2048;
        v76 = v57;
        _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEFAULT, "Opened hid driver interface, registryID %llx, {cfPlugInInterface, hidDriverInterface} was then {%p,%p}, is now {%p,%p}", buf, 0x34u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4280 != -1)
        {
          sub_10187AC40();
        }

        v50 = a1[47];
        v51 = a1[48];
        v61 = 134219008;
        v62 = valuePtr;
        v63 = 2048;
        v64 = v50;
        v65 = 2048;
        v66 = v51;
        v67 = 2048;
        v68 = theInterface;
        v69 = 2048;
        v70 = v57;
        LODWORD(byte15) = 52;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4288, 0, "Opened hid driver interface, registryID %llx, {cfPlugInInterface, hidDriverInterface} was then {%p,%p}, is now {%p,%p}", &v61, byte15, v55, parent, v57);
        v53 = v52;
        sub_100152C7C("Generic", 1, 0, 2, "void CLOrientationNotifier::openHidDriverInterface()", "%s\n", v52);
        if (v53 != buf)
        {
          free(v53);
        }
      }

      v48 = theInterface;
      *(a1[44] + 8) = valuePtr;
      v49 = v57;
      a1[47] = v48;
      a1[48] = v49;
      sub_1003ECA38(a1);
    }

    else
    {
      if (qword_1025D4280 != -1)
      {
        sub_10187AC40();
      }

      v21 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_FAULT, "AOP service doesn't exist", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10187BEC0();
      }
    }
  }

  else
  {
    if (qword_1025D4280 != -1)
    {
      sub_10187ABE8();
    }

    v20 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "IoHidDevice is not ready!", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187BFA4();
    }
  }
}

void sub_1003ECA38(uint64_t a1)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660(Current, v3);
  if (Current != sub_10018D3EC())
  {
    sub_10187C088();
  }

  v12[0] = 4;
  v4 = *(a1 + 32);
  v12[1] = *(a1 + 32);
  v5 = *(a1 + 34);
  v12[2] = *(a1 + 34);
  if (qword_1025D4280 != -1)
  {
    sub_10187ABE8();
  }

  v6 = qword_1025D4288;
  if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_INFO))
  {
    *buf = 67240448;
    *v14 = v4;
    *&v14[4] = 1026;
    *&v14[6] = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Sending config,formFactor,%{public}d,handleCover,%{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187C258(v4, v5);
  }

  v11 = 3;
  v7 = (*(**(a1 + 384) + 160))(*(a1 + 384), 32, v12, 3, v12, &v11);
  if (v7)
  {
    v8 = v7;
    if (qword_1025D4280 != -1)
    {
      sub_10187AC40();
    }

    v9 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
    {
      v10 = mach_error_string(v8);
      *buf = 136446466;
      *v14 = v10;
      *&v14[8] = 1026;
      v15 = v8;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "SendCommand(Config) = %{public}s (0x%{public}x)", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187C374();
    }
  }
}

void sub_1003ECC28(void *a1, uint64_t a2)
{
  a1[1] = a2;
  a1[3] = a2;
  v4 = a1[6];
  v5 = a1[7];
  a1[10] = 0;
  v6 = (v5 - v4) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v4);
      v7 = a1[7];
      v4 = (a1[6] + 8);
      a1[6] = v4;
      v6 = (v7 - v4) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v8 = 512;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v8 = 1024;
  }

  a1[9] = v8;
LABEL_8:
  a1[4] = 0;
  a1[12] = a2;
  v9 = a1[15];
  v10 = a1[16];
  a1[19] = 0;
  v11 = (v10 - v9) >> 3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v9);
      v12 = a1[16];
      v9 = (a1[15] + 8);
      a1[15] = v9;
      v11 = (v12 - v9) >> 3;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v13 = 512;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_15;
    }

    v13 = 1024;
  }

  a1[18] = v13;
LABEL_15:
  a1[13] = 0;
  a1[21] = a2;
  v14 = a1[24];
  v15 = a1[25];
  a1[28] = 0;
  v16 = (v15 - v14) >> 3;
  if (v16 >= 3)
  {
    do
    {
      operator delete(*v14);
      v17 = a1[25];
      v14 = (a1[24] + 8);
      a1[24] = v14;
      v16 = (v17 - v14) >> 3;
    }

    while (v16 > 2);
  }

  if (v16 == 1)
  {
    v18 = 512;
    goto LABEL_21;
  }

  if (v16 == 2)
  {
    v18 = 1024;
LABEL_21:
    a1[27] = v18;
  }

  a1[22] = 0;
}

void sub_1003ECD7C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 336) == -1.79769313e308)
  {
    CFAbsoluteTimeGetCurrent();
    kdebug_trace();
    *(a2 + 336) = CFAbsoluteTimeGetCurrent();
    if (*(a2 + 48))
    {
      v6 = sub_1001C3FFC(v4, v5);
      v7 = *(a2 + 48);
      *buf = (1.0 / (*(a2 + 56) * *(a2 + 76)));
      sub_10095DD24(v6, 0, v7, buf);
    }
  }

  v8 = *(a2 + 72);
  v9 = __OFSUB__(v8--, 1);
  *(a2 + 72) = v8;
  if ((v8 < 0) ^ v9 | (v8 == 0))
  {
    *(a2 + 72) = *(a2 + 76);
    sub_1003F81C4(*(a2 + 40), (a1 + 8), a1);
    if (sub_1003FB948(*(a2 + 40), &v20, buf))
    {
      if (qword_1025D4280 != -1)
      {
        sub_10187AC40();
      }

      v10 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_INFO))
      {
        *v18 = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "Sending orientation changed notification", v18, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187C480();
      }

      sub_100013B00(a2, 0, buf, 16);
      sub_100013B00(a2, 1, buf, 16);
    }
  }

  if (*(a2 + 80) == 1)
  {
    sub_1000423D4(a2 + 120, (a1 + 8));
    sub_1000423D4(a2 + 192, (a1 + 12));
    sub_1000423D4(a2 + 264, (a1 + 16));
    if (*(a2 + 184) < *(a2 + 128) || sub_1003ED270(a2))
    {
      *(a2 + 96) = *a1;
      if (!*(a2 + 64))
      {
        if (qword_1025D4280 != -1)
        {
          sub_10187AC40();
        }

        v11 = qword_1025D4288;
        if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "Device is in motion, re-enabling Gyro.", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10187C658();
        }

        operator new();
      }
    }

    else if (*(a2 + 64) && *a1 > *(a2 + 96) + *(a2 + 88))
    {
      if (qword_1025D4280 != -1)
      {
        sub_10187AC40();
      }

      v12 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Device is stationary and OrientationGyroTimeout exceeded, disabling Gyro.", buf, 2u);
      }

      v13 = sub_10000A100(121, 2);
      if (v13)
      {
        sub_10187C56C();
      }

      v15 = sub_10098EAD4(v13, v14);
      sub_10095D9F8(v15, 0, *(a2 + 64));
      v17 = *(a2 + 64);
      if (v17)
      {
        v16.n128_f64[0] = (*(*v17 + 8))(v17);
      }

      *(a2 + 64) = 0;
      sub_1003FBB18(*(a2 + 40), v16);
    }
  }
}

void sub_1003ED154(uint64_t a1, uint64_t *a2, __n128 a3)
{
  a3.n128_u64[0] = a2[43];
  if (a3.n128_f64[0] == -1.79769313e308)
  {
    CFAbsoluteTimeGetCurrent();
    kdebug_trace();
    a3.n128_f64[0] = CFAbsoluteTimeGetCurrent();
    a2[43] = a3.n128_u64[0];
  }

  sub_1003F8624(a2[5], (a1 + 8), a1, a3);
  if (!a2[6] && sub_1003FB948(a2[5], &v8, &v7))
  {
    if (qword_1025D4280 != -1)
    {
      sub_10187AC40();
    }

    v5 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "GYRO: Sending orientation changed notification", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187C744();
    }

    sub_100013B00(a2, 0, &v7, 16);
  }
}

BOOL sub_1003ED270(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 < *(a1 + 128))
  {
    return 0;
  }

  v3 = 0.0;
  v4 = 0.0;
  if (v1 >= 2)
  {
    v5 = (v1 * *(a1 + 140)) - (*(a1 + 136) * *(a1 + 136));
    v4 = 0.0;
    if (v5 >= 0.0)
    {
      v4 = v5 / ((v1 - 1) * v1);
    }
  }

  v6 = *(a1 + 256);
  if (v6 >= 2)
  {
    v7 = (v6 * *(a1 + 212)) - (*(a1 + 208) * *(a1 + 208));
    if (v7 >= 0.0)
    {
      v3 = v7 / ((v6 - 1) * v6);
    }
  }

  v8 = *(a1 + 328);
  v9 = 0.0;
  if (v8 >= 2)
  {
    v10 = (v8 * *(a1 + 284)) - (*(a1 + 280) * *(a1 + 280));
    if (v10 >= 0.0)
    {
      v9 = v10 / ((v8 - 1) * v8);
    }
  }

  if (v4 >= v3)
  {
    v3 = v4;
  }

  if (v3 < v9)
  {
    v3 = v9;
  }

  return v3 > *(a1 + 84);
}

void sub_1003ED354(uint64_t a1, int a2, CFStringRef theString1)
{
  if (CFStringCompare(theString1, @"com.apple.springboard.HasSeenACaseLatchCoverNotification", 0) == kCFCompareEqualTo)
  {
    *(a1 + 34) = 1;
    if (*(a1 + 384))
    {
      sub_1003ECA38(a1);
    }
  }

  if (qword_1025D4280 != -1)
  {
    sub_10187ABE8();
  }

  v4 = qword_1025D4288;
  if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 34);
    v6[0] = 67240192;
    v6[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "fHasSeenACaseLatchCoverOnce, %{public}d", v6, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187C828(a1);
  }
}

unint64_t sub_1003ED46C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_100023B30(a1, a2);
  if ((v4 & 0x80) == 0)
  {
    return 0xBFF0000000000000;
  }

  HIDWORD(v36) = v2;
  v46 = 0;
  v47 = &v46;
  v48 = 0x4012000000;
  v49 = sub_1000473CC;
  v50 = nullsub_39;
  v51 = &unk_10238AE8B;
  v53 = 0;
  v7 = 3;
  v52 = 2;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 10;
  while (1)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v8 = sub_100011660(v4, v5);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1003EDF8C;
    v37[3] = &unk_10244FFA8;
    v37[4] = &v38;
    v37[5] = &v46;
    v37[6] = &v42;
    v37[7] = a1;
    sub_10017A794(v8, v37);
    if (!*(v39 + 6))
    {
      break;
    }

    if (qword_1025D4280 != -1)
    {
      sub_10187AC40();
    }

    v9 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_INFO))
    {
      v10 = mach_error_string(*(v39 + 6));
      v11 = *(v39 + 6);
      *buf = 136315394;
      v59 = v10;
      v60 = 1026;
      v61 = v11;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "SendCommand() = %s (0x%{public}x)", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187ABFC(buf);
      v12 = qword_1025D4288;
      v13 = mach_error_string(*(v39 + 6));
      v14 = *(v39 + 6);
      v54 = 136315394;
      v55 = v13;
      v56 = 1026;
      v57 = v14;
      LODWORD(v36) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v12, 1, "SendCommand() = %s (0x%{public}x)", &v54, v36);
      v16 = v15;
      sub_100152C7C("Generic", 1, 0, 2, "CLOrientationNotifier::Sample CLOrientationNotifier::orientationBlocking(const BOOL)", "%s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    usleep(0x3E8u);
    _Block_object_dispose(&v38, 8);
    if (!--v7)
    {
      if (qword_1025D4280 != -1)
      {
        sub_10187AC40();
      }

      v24 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_FAULT, "No reply for LastOrientation", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10187ABFC(buf);
        LOWORD(v38) = 0;
        LODWORD(v36) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4288, 17, "No reply for LastOrientation", &v38, v36);
        v26 = v25;
        sub_100152C7C("Generic", 1, 0, 0, "CLOrientationNotifier::Sample CLOrientationNotifier::orientationBlocking(const BOOL)", "%s\n", v25);
        if (v26 != buf)
        {
          free(v26);
        }
      }

LABEL_38:
      v6 = 0xBFF0000000000000;
      goto LABEL_39;
    }
  }

  if (v43[3] != 10)
  {
    if (qword_1025D4280 != -1)
    {
      sub_10187AC40();
    }

    v27 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
    {
      v28 = v43[3];
      *buf = 134349056;
      v59 = v28;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_FAULT, "SendCommand() got unexpected response size %{public}zd", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187ABFC(buf);
      v33 = v43[3];
      v54 = 134349056;
      v55 = v33;
      LODWORD(v36) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4288, 17, "SendCommand() got unexpected response size %{public}zd", &v54, v36);
      v35 = v34;
      sub_100152C7C("Generic", 1, 0, 0, "CLOrientationNotifier::Sample CLOrientationNotifier::orientationBlocking(const BOOL)", "%s\n", v34);
      if (v35 != buf)
      {
        free(v35);
      }
    }

    _Block_object_dispose(&v38, 8);
    goto LABEL_38;
  }

  v17 = v47;
  if (*(a1 + 402) > *(v47 + 50))
  {
    v18 = *(a1 + 400);
    *(v47 + 28) = *(a1 + 408);
    v17[6] = v18;
  }

  if (qword_1025D4280 != -1)
  {
    sub_10187AC40();
  }

  v19 = qword_1025D4288;
  if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(v47 + 49);
    *buf = 67240192;
    LODWORD(v59) = v20;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "Got cached orientation %{public}u", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187ABFC(buf);
    v30 = *(v47 + 49);
    v54 = 67240192;
    LODWORD(v55) = v30;
    LODWORD(v36) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4288, 0, "Got cached orientation %{public}u", &v54, v36);
    v32 = v31;
    sub_100152C7C("Generic", 1, 0, 2, "CLOrientationNotifier::Sample CLOrientationNotifier::orientationBlocking(const BOOL)", "%s\n", v31);
    if (v32 != buf)
    {
      free(v32);
    }
  }

  _Block_object_dispose(&v38, 8);
  v21 = *(v47 + 50);
  v22.n128_f64[0] = sub_1000080EC(v21);
  v23 = v22.n128_u64[0];
  if (HIDWORD(v36))
  {
    sub_1003EDDC8(a1, v21, *(v47 + 49), v22);
  }

  v6 = v23;
LABEL_39:
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);
  return v6;
}

void sub_1003EDB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003EDBC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (!*(result + 48))
  {
    if (IOHIDEventGetType() == 10)
    {
      IntegerValue = IOHIDEventGetIntegerValue();
      if (IntegerValue - 107 > 0xFFFFFFFFFFFFFFF8)
      {
        v10 = sub_1012ABB78(a5);
        TimeStamp = IOHIDEventGetTimeStamp();
        v12.n128_f64[0] = sub_1000080EC(TimeStamp);

        sub_1003EDDC8(result, v10, (IntegerValue - 100), v12);
      }

      else
      {
        if (qword_1025D4280 != -1)
        {
          sub_10187ABE8();
        }

        v8 = qword_1025D4288;
        if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_ERROR))
        {
          v13 = 134349056;
          v14 = IntegerValue;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "Received invalid orientation %{public}ld", &v13, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10187CA24(IntegerValue);
        }
      }
    }

    else
    {
      if (qword_1025D4280 != -1)
      {
        sub_10187ABE8();
      }

      v9 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 67240192;
        LODWORD(v14) = IOHIDEventGetType();
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Received wrong event type %{public}u", &v13, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187C91C(a5);
      }
    }
  }
}

void sub_1003EDDC8(uint64_t a1, void *a2, void *a3, __n128 a4)
{
  if (*(a1 + 402) >= a2)
  {
    if (qword_1025D4280 != -1)
    {
      sub_10187ABE8();
    }

    v8 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240448;
      *&buf[4] = a3;
      LOWORD(v11[0]) = 2050;
      *(v11 + 2) = a2;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "Skipping stale orientation (%{public}u @ %{public}llu)", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187CB28(a3, a2);
    }
  }

  else
  {
    *(a1 + 401) = a3;
    *(a1 + 402) = a2;
    v11[1] = 0;
    *buf = a4.n128_u64[0];
    v11[0] = a3;
    if (qword_1025D4280 != -1)
    {
      sub_10187ABE8();
    }

    v7 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 67109120;
      v9[1] = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "AOO update: %u", v9, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187CC38(a3);
    }

    sub_100013B00(a1, 0, buf, 16);
    sub_100013B00(a1, 1, buf, 16);
  }
}

uint64_t sub_1003EDF8C(void *a1, __n128 a2)
{
  v3 = *(a1[7] + 384);
  if (v3)
  {
    result = (*(*v3 + 160))(v3, 32, *(a1[5] + 8) + 48, 1, *(a1[5] + 8) + 48, *(a1[6] + 8) + 24, a2);
  }

  else
  {
    if (qword_1025D4280 != -1)
    {
      sub_10187ABE8();
    }

    v5 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "fHidDeviceInterface NULL", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187CD30();
    }

    result = 4160749568;
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void *sub_1003EE0A0(void *a1)
{
  *a1 = off_102450040;
  sub_1003EE180(a1 + 3);
  return a1;
}

void sub_1003EE0E4(void *a1)
{
  sub_1003EE27C(a1);

  operator delete();
}

void sub_1003EE11C(void *a1)
{
  *a1 = off_102450040;
  sub_1003EE180(a1 + 3);

  operator delete();
}

uint64_t sub_1003EE180(void *a1)
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
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
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

uint64_t sub_1003EE22C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void *sub_1003EE27C(void *a1)
{
  *a1 = off_102450010;
  a1[20] = off_102450040;
  sub_1003EE180(a1 + 23);
  a1[11] = off_102450040;
  sub_1003EE180(a1 + 14);
  a1[2] = off_102450040;
  sub_1003EE180(a1 + 5);
  return a1;
}

void sub_1003EE3EC(uint64_t a1)
{
  sub_1017E7D44(a1);

  operator delete();
}

void sub_1003EE424(const void **a1, void *a2)
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

      sub_1003EE744(a1, v9);
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

void sub_1003EE530(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_1003EE744(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_1003EE638(const void **a1, void *a2)
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

      sub_1003EE744(a1[4], v9);
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

void sub_1003EE744(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_1003EE8EC(id a1)
{
  v2 = sub_10001A3E8(a1, v1);
  if (sub_10001CF04(v2, v3))
  {
    byte_102656218 = 1;
  }
}

void sub_1003EEDE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char a13, uint64_t a14)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003EF2C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100008080(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003EF2F0(uint64_t a1, xpc_activity_t activity)
{
  if (xpc_activity_get_state(activity))
  {
    [*(a1 + 32) onP6MWDActivity:activity];
    if (xpc_activity_get_state(activity) == 2 && !xpc_activity_set_state(activity, 4))
    {
      if (qword_1025D4430 != -1)
      {
        sub_10187CE3C();
      }

      v4 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_FAULT))
      {
        v13 = 136446466;
        v14 = "com.apple.locationd.P6MWD";
        v15 = 2050;
        state = xpc_activity_get_state(activity);
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Failed to mark %{public}s activity as Continue. Current state is %{public}ld", &v13, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10187CFA0(activity);
      }
    }
  }

  else
  {
    v5 = xpc_activity_copy_criteria(activity);
    if (!v5)
    {
      v5 = xpc_dictionary_create(0, 0, 0);
    }

    int64 = xpc_dictionary_get_int64(v5, XPC_ACTIVITY_DELAY);
    v8 = *(a1 + 40);
    v7 = (a1 + 40);
    if (int64 == v8)
    {
      if (qword_1025D4430 != -1)
      {
        sub_10187CE3C();
      }

      v9 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *v7;
        v13 = 136446466;
        v14 = "com.apple.locationd.P6MWD";
        v15 = 2050;
        state = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "XPC_CHECK_IN: %{public}s activity already scheduled with a delay of %{public}lld seconds", &v13, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187D1B8();
      }
    }

    else
    {
      if (qword_1025D4430 != -1)
      {
        sub_10187CE3C();
      }

      v11 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *v7;
        v13 = 136446466;
        v14 = "com.apple.locationd.P6MWD";
        v15 = 2050;
        state = v12;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "XPC_CHECK_IN: Setting up %{public}s activity with a delay of %{public}lld seconds", &v13, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187D0C0();
      }

      xpc_dictionary_set_int64(v5, XPC_ACTIVITY_DELAY, *v7);
      xpc_dictionary_set_int64(v5, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_HOUR);
      xpc_dictionary_set_string(v5, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
      xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REQUIRES_CLASS_B, 1);
      xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_ALLOW_BATTERY, 1);
      xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REPEATING, 1);
      xpc_activity_set_criteria(activity, v5);
    }

    xpc_release(v5);
  }
}

void sub_1003EF858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100008080(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003EF870(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4430 != -1)
  {
    sub_10187CE3C();
  }

  v3 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Aggregating bout records", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187D2B0();
  }

  return sub_1003EF91C(*(*(a1 + 32) + 24));
}

uint64_t sub_1003EF91C(char *a1)
{
  if (a1[40])
  {
    if (qword_1025D48A0 != -1)
    {
      sub_10187D38C();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v3 = sub_1000137E0();
      v4 = *(*(a1 + 3) + 132);
      v17 = 134218240;
      *v18 = v3;
      *&v18[8] = 1024;
      v19 = v4;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Aggregating records start %f, count ~%d", &v17, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187D3A0(a1);
    }

    v5 = (*(**(a1 + 3) + 32))(*(a1 + 3), a1);
    if (qword_1025D48A0 != -1)
    {
      sub_10187D4A0();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v7 = sub_1000137E0();
      v8 = *(*(a1 + 3) + 132);
      v17 = 134218240;
      *v18 = v7;
      *&v18[8] = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Aggregating records stop %f, count ~%d", &v17, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187D4C8(a1 + 24);
    }

    v9 = *(a1 + 3);
    v10 = *(v9 + 132);
    if (sub_1003F79D8(v9, a1) * 1.2 < v10)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_10187D4A0();
      }

      v11 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 3);
        v13 = *(v12 + 132);
        v14 = sub_1003F79D8(v12, a1);
        v17 = 67109376;
        *v18 = v13;
        *&v18[4] = 1024;
        *&v18[6] = v14;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning Number of records after aggregation is %d and it greatly exceeds the number of records estimated to be needed %d", &v17, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187D5C8(a1 + 3, a1);
      }
    }

    return v5;
  }

  else
  {
    v16 = *(**(a1 + 3) + 32);

    return v16();
  }
}

void sub_1003F0FC0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x360], 8);
  _Block_object_dispose(&STACK[0x3B8], 8);
  _Block_object_dispose(&STACK[0x410], 8);
  v2 = STACK[0x440];
  if (STACK[0x440])
  {
    STACK[0x448] = v2;
    operator delete(v2);
  }

  _Block_object_dispose(&STACK[0x458], 8);
  v3 = STACK[0x488];
  if (STACK[0x488])
  {
    STACK[0x490] = v3;
    operator delete(v3);
  }

  _Block_object_dispose(&STACK[0x4A0], 8);
  v4 = STACK[0x4D0];
  if (STACK[0x4D0])
  {
    STACK[0x4D8] = v4;
    operator delete(v4);
  }

  _Block_object_dispose(&STACK[0x4E8], 8);
  v5 = STACK[0x518];
  if (STACK[0x518])
  {
    STACK[0x520] = v5;
    operator delete(v5);
  }

  _Block_object_dispose(&STACK[0x530], 8);
  v6 = STACK[0x560];
  if (STACK[0x560])
  {
    STACK[0x568] = v6;
    operator delete(v6);
  }

  _Block_object_dispose(&STACK[0x578], 8);
  v7 = STACK[0x5A8];
  if (STACK[0x5A8])
  {
    STACK[0x5B0] = v7;
    operator delete(v7);
  }

  _Block_object_dispose(&STACK[0x5C0], 8);
  v8 = STACK[0x5F0];
  if (STACK[0x5F0])
  {
    STACK[0x5F8] = v8;
    operator delete(v8);
  }

  _Block_object_dispose(&STACK[0x608], 8);
  v9 = STACK[0x638];
  if (STACK[0x638])
  {
    STACK[0x640] = v9;
    operator delete(v9);
  }

  _Block_object_dispose(&STACK[0x650], 8);
  v10 = STACK[0x680];
  if (STACK[0x680])
  {
    STACK[0x688] = v10;
    operator delete(v10);
  }

  _Block_object_dispose(&STACK[0x698], 8);
  v11 = STACK[0x6C8];
  if (STACK[0x6C8])
  {
    STACK[0x6D0] = v11;
    operator delete(v11);
  }

  _Block_object_dispose(&STACK[0x6E0], 8);
  _Block_object_dispose(&STACK[0x700], 8);
  _Unwind_Resume(a1);
}

__n128 sub_1003F118C(__n128 *a1, __n128 *a2)
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

void sub_1003F11B0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_1003F11C8(__n128 *a1, __n128 *a2)
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

void sub_1003F11EC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_1003F1204(__n128 *a1, __n128 *a2)
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

void sub_1003F1228(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_1003F1240(__n128 *a1, __n128 *a2)
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

void sub_1003F1264(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_1003F127C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_1003F1294(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  v4 = v3;
  [*(a1 + 48) timeIntervalSinceReferenceDate];
  if ((*(*v2 + 168))(v2, *(*(a1 + 64) + 8) + 48, 0, 0xFFFFFFFFLL, 0, v4, v5) == 109)
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v6 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Bout query failed due to device lock", &v9, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187DBB8();
    }
  }

  else
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v7 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
    {
      v8 = 0xEEEEEEEEEEEEEEEFLL * ((*(*(*(a1 + 64) + 8) + 56) - *(*(*(a1 + 64) + 8) + 48)) >> 3);
      v9 = 134349056;
      v10 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Retrieved %{public}lu bout records", &v9, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187DABC();
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

__n128 sub_1003F1494(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  v4 = *(a2 + 80);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 48) = result;
  return result;
}

void sub_1003F14B4(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (!a2 || a4)
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v32 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v34 = [objc_msgSend(a4 "localizedDescription")];
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_ERROR, "No remote StepCadenceToStrideLength table, error:%s\n", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187DD78(a4);
    }
  }

  else
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v8 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Parsing remote StepCadenceToStrideLength table", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187DC94();
    }

    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, 0);
    if (v9)
    {
      v10 = MEMORY[0];
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (MEMORY[0] != v10)
          {
            objc_enumerationMutation(a2);
          }

          v12 = *(8 * i);
          v13 = *(*(a1 + 40) + 8);
          [a3 timeIntervalSinceReferenceDate];
          v15 = v14;
          [v12 center];
          v17 = v16;
          v18 = [v12 state];
          [v12 valueOut];
          v20 = v13[7];
          v21 = v13[8];
          if (v20 >= v21)
          {
            v23 = v13[6];
            v24 = v20 - v23;
            v25 = (v20 - v23) >> 5;
            v26 = v25 + 1;
            if ((v25 + 1) >> 59)
            {
              sub_10028C64C();
            }

            v27 = v21 - v23;
            if (v27 >> 4 > v26)
            {
              v26 = v27 >> 4;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFE0)
            {
              v26 = 0x7FFFFFFFFFFFFFFLL;
            }

            if (v26)
            {
              sub_1003E3DA4((v13 + 6), v26);
            }

            v28 = v25;
            v29 = 32 * v25;
            *v29 = v15;
            *(v29 + 8) = v17;
            *(v29 + 16) = v18;
            *(v29 + 24) = v19;
            v22 = 32 * v25 + 32;
            v30 = (v29 - 32 * v28);
            memcpy(v30, v23, v24);
            v31 = v13[6];
            v13[6] = v30;
            v13[7] = v22;
            v13[8] = 0;
            if (v31)
            {
              operator delete(v31);
            }
          }

          else
          {
            *v20 = v15;
            *(v20 + 8) = v17;
            *(v20 + 16) = v18;
            v22 = v20 + 32;
            *(v20 + 24) = v19;
          }

          v13[7] = v22;
        }

        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
      }

      while (v9);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1003F17CC(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (!a2 || a4)
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v32 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v34 = [objc_msgSend(a4 "localizedDescription")];
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_ERROR, "No StepCadenceToStrideLength table, error:%{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187DF5C(a4);
    }
  }

  else
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v8 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Parsing StepCadenceToStrideLength table", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187DE78();
    }

    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, 0);
    if (v9)
    {
      v10 = MEMORY[0];
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (MEMORY[0] != v10)
          {
            objc_enumerationMutation(a2);
          }

          v12 = *(8 * i);
          v13 = *(*(a1 + 40) + 8);
          [a3 timeIntervalSinceReferenceDate];
          v15 = v14;
          [v12 center];
          v17 = v16;
          v18 = [v12 state];
          [v12 valueOut];
          v20 = v13[7];
          v21 = v13[8];
          if (v20 >= v21)
          {
            v23 = v13[6];
            v24 = v20 - v23;
            v25 = (v20 - v23) >> 5;
            v26 = v25 + 1;
            if ((v25 + 1) >> 59)
            {
              sub_10028C64C();
            }

            v27 = v21 - v23;
            if (v27 >> 4 > v26)
            {
              v26 = v27 >> 4;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFE0)
            {
              v26 = 0x7FFFFFFFFFFFFFFLL;
            }

            if (v26)
            {
              sub_1003E3DA4((v13 + 6), v26);
            }

            v28 = v25;
            v29 = 32 * v25;
            *v29 = v15;
            *(v29 + 8) = v17;
            *(v29 + 16) = v18;
            *(v29 + 24) = v19;
            v22 = 32 * v25 + 32;
            v30 = (v29 - 32 * v28);
            memcpy(v30, v23, v24);
            v31 = v13[6];
            v13[6] = v30;
            v13[7] = v22;
            v13[8] = 0;
            if (v31)
            {
              operator delete(v31);
            }
          }

          else
          {
            *v20 = v15;
            *(v20 + 8) = v17;
            *(v20 + 16) = v18;
            v22 = v20 + 32;
            *(v20 + 24) = v19;
          }

          v13[7] = v22;
        }

        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
      }

      while (v9);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1003F1AE4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  if ((*(*v2 + 168))(v2, *(*(a1 + 56) + 8) + 48, 1.0, v3) == 109)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v4 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "WalkingSpeedCal query failed due to device lock", &v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187E158();
    }
  }

  else
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v5 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
    {
      v6 = 0xAAAAAAAAAAAAAAABLL * ((*(*(*(a1 + 56) + 8) + 56) - *(*(*(a1 + 56) + 8) + 48)) >> 4);
      v7 = 134349056;
      v8 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Retrieved %{public}lu walkingSpeedCal records", &v7, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187E05C();
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

id sub_1003F1CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_msgSend(*(a1 + 32) "universe")];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003F1D70;
  v11[3] = &unk_102450228;
  v11[4] = a4;
  v11[5] = a3;
  v8 = *(a1 + 56);
  v14 = *(a1 + 72);
  v9 = *(a1 + 40);
  v13 = v8;
  v12 = v9;
  return [v7 async:v11];
}

void sub_1003F1D70(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  if (v3)
  {
    if ([v3 code] == 6)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      if (qword_1025D4430 != -1)
      {
        sub_10187CE3C();
      }

      v5 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "HealthKit Activity Summary query failed due to device lock", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187E330();
      }
    }

    else
    {
      if (qword_1025D4430 != -1)
      {
        sub_10187CE3C();
      }

      v71 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_ERROR))
      {
        v72 = [*v4 code];
        *buf = 134349056;
        v92 = v72;
        _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_ERROR, "HealthKit Activity Summary query encountered error,%{public}ld", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10187E234(v4);
      }
    }
  }

  else
  {
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = *(a1 + 40);
    v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, a2, &v77, v101, 16);
    if (v76)
    {
      v75 = *v78;
      do
      {
        v6 = 0;
        do
        {
          if (*v78 != v75)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v77 + 1) + 8 * v6);
          [objc_msgSend(v7 "_flightsClimbed")];
          v9 = v8;
          [objc_msgSend(v7 "stepCount")];
          v11 = v10;
          [objc_msgSend(v7 "appleExerciseTime")];
          v13 = v12;
          if (qword_1025D4430 != -1)
          {
            sub_10187CF34();
          }

          v14 = qword_1025D4438;
          if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
          {
            v15 = [objc_msgSend(v7 "_startDate")];
            v16 = [objc_msgSend(v7 "_endDate")];
            *buf = 138478851;
            v92 = v15;
            v93 = 2113;
            v94 = v16;
            v95 = 2049;
            v96 = v9;
            v97 = 2049;
            v98 = v11;
            v99 = 2049;
            v100 = v13;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Retrieved activity summary... startDate: %{private}@, endDate: %{private}@, Flights climbed: %{private}f, Step count: %{private}f, Exercise minutes: %{private}f", buf, 0x34u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4430 != -1)
            {
              sub_10187CF34();
            }

            v65 = qword_1025D4438;
            v66 = [objc_msgSend(v7 "_startDate")];
            v67 = [objc_msgSend(v7 "_endDate")];
            v81 = 138478851;
            v82 = v66;
            v83 = 2113;
            v84 = v67;
            v85 = 2049;
            v86 = v9;
            v87 = 2049;
            v88 = v11;
            v89 = 2049;
            v90 = v13;
            LODWORD(v73) = 52;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v65, 2, "Retrieved activity summary... startDate: %{private}@, endDate: %{private}@, Flights climbed: %{private}f, Step count: %{private}f, Exercise minutes: %{private}f", &v81, v73);
            v69 = v68;
            sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion getSixMinuteWalkDistancePrediction:]_block_invoke", "%s\n", v68);
            if (v69 != buf)
            {
              free(v69);
            }
          }

          v17 = *(*(a1 + 64) + 8);
          [objc_msgSend(v7 "_startDate")];
          v19 = v18;
          [objc_msgSend(v7 "_endDate")];
          v22 = v17[7];
          v21 = v17[8];
          if (v22 >= v21)
          {
            v24 = v17[6];
            v25 = v22 - v24;
            v26 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v24) >> 3);
            v27 = v26 + 1;
            if (v26 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_10028C64C();
            }

            v28 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v24) >> 3);
            if (2 * v28 > v27)
            {
              v27 = 2 * v28;
            }

            if (v28 >= 0x555555555555555)
            {
              v29 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v29 = v27;
            }

            if (v29)
            {
              sub_1001AB518((v17 + 6), v29);
            }

            v30 = 24 * v26;
            *v30 = v19;
            *(v30 + 8) = v20;
            *(v30 + 16) = v9;
            v23 = 24 * v26 + 24;
            v31 = 24 * v26 - v25;
            memcpy((v30 - v25), v24, v25);
            v32 = v17[6];
            v17[6] = v31;
            v17[7] = v23;
            v17[8] = 0;
            if (v32)
            {
              operator delete(v32);
            }
          }

          else
          {
            *v22 = v19;
            *(v22 + 1) = v20;
            v23 = (v22 + 24);
            *(v22 + 2) = v9;
          }

          v17[7] = v23;
          v33 = *(*(a1 + 72) + 8);
          [objc_msgSend(v7 "_startDate")];
          v35 = v34;
          [objc_msgSend(v7 "_endDate")];
          v38 = v33[7];
          v37 = v33[8];
          if (v38 >= v37)
          {
            v40 = v33[6];
            v41 = v38 - v40;
            v42 = 0xAAAAAAAAAAAAAAABLL * ((v38 - v40) >> 3);
            v43 = v42 + 1;
            if (v42 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_10028C64C();
            }

            v44 = 0xAAAAAAAAAAAAAAABLL * ((v37 - v40) >> 3);
            if (2 * v44 > v43)
            {
              v43 = 2 * v44;
            }

            if (v44 >= 0x555555555555555)
            {
              v45 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v45 = v43;
            }

            if (v45)
            {
              sub_1001AB518((v33 + 6), v45);
            }

            v46 = 24 * v42;
            *v46 = v35;
            *(v46 + 8) = v36;
            *(v46 + 16) = v13;
            v39 = 24 * v42 + 24;
            v47 = 24 * v42 - v41;
            memcpy((v46 - v41), v40, v41);
            v48 = v33[6];
            v33[6] = v47;
            v33[7] = v39;
            v33[8] = 0;
            if (v48)
            {
              operator delete(v48);
            }
          }

          else
          {
            *v38 = v35;
            *(v38 + 1) = v36;
            v39 = (v38 + 24);
            *(v38 + 2) = v13;
          }

          v33[7] = v39;
          v49 = *(*(a1 + 80) + 8);
          [objc_msgSend(v7 "_startDate")];
          v51 = v50;
          [objc_msgSend(v7 "_endDate")];
          v54 = v49[7];
          v53 = v49[8];
          if (v54 >= v53)
          {
            v56 = v49[6];
            v57 = v54 - v56;
            v58 = 0xAAAAAAAAAAAAAAABLL * ((v54 - v56) >> 3);
            v59 = v58 + 1;
            if (v58 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_10028C64C();
            }

            v60 = 0xAAAAAAAAAAAAAAABLL * ((v53 - v56) >> 3);
            if (2 * v60 > v59)
            {
              v59 = 2 * v60;
            }

            if (v60 >= 0x555555555555555)
            {
              v61 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v61 = v59;
            }

            if (v61)
            {
              sub_1001AB518((v49 + 6), v61);
            }

            v62 = 24 * v58;
            *v62 = v51;
            *(v62 + 8) = v52;
            *(v62 + 16) = v11;
            v55 = 24 * v58 + 24;
            v63 = 24 * v58 - v57;
            memcpy((v62 - v57), v56, v57);
            v64 = v49[6];
            v49[6] = v63;
            v49[7] = v55;
            v49[8] = 0;
            if (v64)
            {
              operator delete(v64);
            }
          }

          else
          {
            *v54 = v51;
            *(v54 + 1) = v52;
            v55 = (v54 + 24);
            *(v54 + 2) = v11;
          }

          v49[7] = v55;
          v6 = v6 + 1;
        }

        while (v76 != v6);
        v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
        v76 = v70;
      }

      while (v70);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

id sub_1003F24EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_msgSend(*(a1 + 32) "universe")];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003F2598;
  v11[3] = &unk_102450228;
  v11[4] = a4;
  v11[5] = a3;
  v8 = *(a1 + 56);
  v14 = *(a1 + 72);
  v9 = *(a1 + 40);
  v13 = v8;
  v12 = v9;
  return [v7 async:v11];
}

void sub_1003F2598(void *a1, uint64_t a2)
{
  v4 = (a1 + 4);
  v3 = a1[4];
  v66 = a1;
  if (!v3)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = a1[5];
    v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, a2, &v67, v87, 16);
    if (!v65)
    {
      goto LABEL_69;
    }

    v64 = *v68;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v68 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v67 + 1) + 8 * v6);
        v8 = [objc_msgSend(objc_msgSend(v7 "metadata")];
        if (qword_1025D4430 != -1)
        {
          sub_10187CF34();
        }

        v9 = qword_1025D4438;
        if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
        {
          v10 = [v7 workoutActivityType];
          [objc_msgSend(v7 "startDate")];
          v12 = v11;
          [objc_msgSend(v7 "endDate")];
          *buf = 134284289;
          v80 = v10;
          v81 = 1025;
          v82 = v8;
          v83 = 2049;
          v84 = v12;
          v85 = 2049;
          v86 = v13;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Found workout... Type: %{private}lu, indoor: %{private}d, startTime: %{private}f, endTime: %{private}f", buf, 0x26u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4430 != -1)
          {
            sub_10187CF34();
          }

          v52 = qword_1025D4438;
          v53 = [v7 workoutActivityType];
          [objc_msgSend(v7 "startDate")];
          v55 = v54;
          [objc_msgSend(v7 "endDate")];
          v71 = 134284289;
          v72 = v53;
          v73 = 1025;
          v74 = v8;
          v75 = 2049;
          v76 = v55;
          v77 = 2049;
          v78 = v56;
          LODWORD(v62) = 38;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v52, 2, "Found workout... Type: %{private}lu, indoor: %{private}d, startTime: %{private}f, endTime: %{private}f", &v71, v62);
          v58 = v57;
          sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion getSixMinuteWalkDistancePrediction:]_block_invoke", "%s\n", v57);
          if (v58 != buf)
          {
            free(v58);
          }
        }

        v14 = *(v66[8] + 8);
        [objc_msgSend(v7 "startDate")];
        v16 = v15;
        [objc_msgSend(v7 "endDate")];
        v18 = v17;
        v19 = [v7 workoutActivityType];
        v20 = v14[7];
        v21 = v14[8];
        if (v20 >= v21)
        {
          v23 = v14[6];
          v24 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v23) >> 3);
          v25 = v24 + 1;
          if (v24 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          v26 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v23) >> 3);
          if (2 * v26 > v25)
          {
            v25 = 2 * v26;
          }

          if (v26 >= 0x555555555555555)
          {
            v27 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v27 = v25;
          }

          if (v27)
          {
            sub_1003F6ABC((v14 + 6), v27);
          }

          v28 = 24 * v24;
          *v28 = v16;
          *(v28 + 8) = v18;
          *(v28 + 16) = v19;
          *(v28 + 20) = v8;
          v22 = 24 * v24 + 24;
          v29 = v14[6];
          v30 = v14[7] - v29;
          v31 = v28 - v30;
          memcpy((v28 - v30), v29, v30);
          v32 = v14[6];
          v14[6] = v31;
          v14[7] = v22;
          v14[8] = 0;
          if (v32)
          {
            operator delete(v32);
          }
        }

        else
        {
          *v20 = v16;
          *(v20 + 8) = v18;
          *(v20 + 16) = v19;
          v22 = v20 + 24;
          *(v20 + 20) = v8;
        }

        v14[7] = v22;
        [objc_msgSend(v7 "totalDistance")];
        if (v33 > 0.0 && ([v7 workoutActivityType] == 52 || objc_msgSend(v7, "workoutActivityType") == 37))
        {
          [objc_msgSend(v7 "startDate")];
          v35 = v34;
          v36 = [v7 workoutEvents];
          v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36);
          if (v37)
          {
            v38 = MEMORY[0];
            v39 = 1;
            v40 = 0.0;
            do
            {
              for (i = 0; i != v37; i = i + 1)
              {
                if (MEMORY[0] != v38)
                {
                  objc_enumerationMutation(v36);
                }

                v42 = *(8 * i);
                if (v39)
                {
                  [objc_msgSend(objc_msgSend(*(8 * i) "dateInterval")];
                  v40 = v40 + v43 - v35;
                }

                [objc_msgSend(objc_msgSend(v42 "dateInterval")];
                v35 = v44;
                v45 = [v42 type];
                if ((0x33u >> (v45 - 1)))
                {
                  v46 = 0x22u >> (v45 - 1);
                }

                else
                {
                  v46 = v39;
                }

                if ((v45 - 1) <= 5)
                {
                  v39 = v46;
                }
              }

              v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36);
            }

            while (v37);
            if ((v39 & 1) == 0)
            {
              goto LABEL_52;
            }
          }

          else
          {
            v40 = 0.0;
          }

          [objc_msgSend(v7 "endDate")];
          v40 = v40 + v47 - v35;
LABEL_52:
          v48 = [v7 workoutActivityType];
          v49 = 10;
          if (v48 == 52)
          {
            v49 = 9;
          }

          v50 = *(v66[v49] + 8);
          [objc_msgSend(v7 "totalDistance")];
          sub_1003F2C74((v50 + 48), v40 / v51);
        }

        v6 = v6 + 1;
      }

      while (v6 != v65);
      v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
      v65 = v59;
      if (!v59)
      {
        goto LABEL_69;
      }
    }
  }

  if ([v3 code] == 6)
  {
    *(*(a1[7] + 8) + 24) = 1;
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v5 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "HealthKit Workout query failed due to device lock", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187E510();
    }
  }

  else
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v60 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_ERROR))
    {
      v61 = [*v4 code];
      *buf = 134349056;
      v80 = v61;
      _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_ERROR, "HealthKit Workout query encountered error,%{public}ld", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187E414(v4);
    }
  }

LABEL_69:
  dispatch_group_leave(v66[6]);
}

double *sub_1003F2C74(double *result, double a2)
{
  v2 = *result;
  v3 = *result + 1;
  *result = v3;
  if (v2)
  {
    v4 = result[1];
    v5 = a2 - v4;
    v6 = v4 + (a2 - v4) / v3;
    v7 = result[3];
    result[1] = v6;
    result[2] = v6;
    v8 = v7 + v5 * (a2 - v6);
    result[3] = v8;
    result[4] = v8;
  }

  else
  {
    result[1] = a2;
    result[2] = a2;
    result[3] = 0.0;
  }

  return result;
}

id sub_1003F2CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_msgSend(*(a1 + 32) "universe")];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003F2D60;
  v9[3] = &unk_1024502A0;
  v9[4] = a4;
  v9[5] = a3;
  v11 = *(a1 + 56);
  v10 = *(a1 + 40);
  return [v7 async:v9];
}

void sub_1003F2D60(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  if (v3)
  {
    if ([v3 code] == 6)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      if (qword_1025D4430 != -1)
      {
        sub_10187CE3C();
      }

      v5 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "HealthKit Stand Hour query failed due to device lock", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187E6F0();
      }
    }

    else
    {
      if (qword_1025D4430 != -1)
      {
        sub_10187CE3C();
      }

      v37 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_ERROR))
      {
        v38 = [*v4 code];
        *buf = 134349056;
        v52 = *&v38;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_ERROR, "HealthKit Stand Hour query encountered error,%{public}ld", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10187E5F4(v4);
      }
    }
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = *(a1 + 40);
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, a2, &v41, v57, 16);
    if (v6)
    {
      v7 = *v42;
      do
      {
        v8 = 0;
        do
        {
          if (*v42 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v41 + 1) + 8 * v8);
          v10 = [v9 value];
          if (qword_1025D4430 != -1)
          {
            sub_10187CF34();
          }

          v11 = 1.0 - v10;
          v12 = qword_1025D4438;
          if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
          {
            v13 = [objc_msgSend(v9 "startDate")];
            v14 = [objc_msgSend(v9 "endDate")];
            *buf = 134284035;
            v52 = v11;
            v53 = 2113;
            v54 = v13;
            v55 = 2113;
            v56 = v14;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Retrieved sample... Stand hour: %{private}f, startTime: %{private}@, endTime: %{private}@", buf, 0x20u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4430 != -1)
            {
              sub_10187CF34();
            }

            v31 = qword_1025D4438;
            v32 = [objc_msgSend(v9 "startDate")];
            v33 = [objc_msgSend(v9 "endDate")];
            v45 = 134284035;
            v46 = v11;
            v47 = 2113;
            v48 = v32;
            v49 = 2113;
            v50 = v33;
            LODWORD(v39) = 32;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v31, 2, "Retrieved sample... Stand hour: %{private}f, startTime: %{private}@, endTime: %{private}@", &v45, v39);
            v35 = v34;
            sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion getSixMinuteWalkDistancePrediction:]_block_invoke", "%s\n", v34);
            if (v35 != buf)
            {
              free(v35);
            }
          }

          v15 = *(*(a1 + 64) + 8);
          [objc_msgSend(v9 "startDate")];
          v17 = v16;
          [objc_msgSend(v9 "endDate")];
          v20 = v15[7];
          v19 = v15[8];
          if (v20 >= v19)
          {
            v22 = v15[6];
            v23 = v20 - v22;
            v24 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v22) >> 3);
            v25 = v24 + 1;
            if (v24 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_10028C64C();
            }

            v26 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v22) >> 3);
            if (2 * v26 > v25)
            {
              v25 = 2 * v26;
            }

            if (v26 >= 0x555555555555555)
            {
              v27 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v27 = v25;
            }

            if (v27)
            {
              sub_1001AB518((v15 + 6), v27);
            }

            v28 = 24 * v24;
            *v28 = v17;
            *(v28 + 8) = v18;
            *(v28 + 16) = v11;
            v21 = 24 * v24 + 24;
            v29 = 24 * v24 - v23;
            memcpy((v28 - v23), v22, v23);
            v30 = v15[6];
            v15[6] = v29;
            v15[7] = v21;
            v15[8] = 0;
            if (v30)
            {
              operator delete(v30);
            }
          }

          else
          {
            *v20 = v17;
            *(v20 + 8) = v18;
            v21 = v20 + 24;
            *(v20 + 16) = v11;
          }

          v15[7] = v21;
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
        v6 = v36;
      }

      while (v36);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

id sub_1003F3250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_msgSend(*(a1 + 32) "universe")];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003F32F0;
  v10[3] = &unk_1024502F0;
  v10[4] = a4;
  v10[5] = a3;
  v8 = *(a1 + 56);
  v11 = *(a1 + 40);
  v12 = v8;
  return [v7 async:v10];
}

void sub_1003F32F0(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  if (v3)
  {
    if ([v3 code] == 6)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      if (qword_1025D4430 != -1)
      {
        sub_10187CE3C();
      }

      v5 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "HealthKit Flights query failed due to device lock", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187E8D0();
      }
    }

    else
    {
      if (qword_1025D4430 != -1)
      {
        sub_10187CE3C();
      }

      v40 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_ERROR))
      {
        v41 = [*v4 code];
        *buf = 134349056;
        v59 = v41;
        _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_ERROR, "HealthKit Flights query encountered error,%{public}ld", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10187E7D4(v4);
      }
    }
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = *(a1 + 40);
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, a2, &v46, v66, 16);
    if (v6)
    {
      v7 = *v47;
      do
      {
        v8 = 0;
        do
        {
          if (*v47 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v46 + 1) + 8 * v8);
          [objc_msgSend(v9 "quantity")];
          v11 = v10;
          if (qword_1025D4430 != -1)
          {
            sub_10187CF34();
          }

          v12 = qword_1025D4438;
          if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
          {
            v13 = [objc_msgSend(v9 "startDate")];
            v14 = [objc_msgSend(v9 "endDate")];
            v15 = [objc_msgSend(v9 "sourceRevision")];
            *buf = 134284291;
            v59 = v11;
            v60 = 2113;
            v61 = v13;
            v62 = 2113;
            v63 = v14;
            v64 = 2113;
            v65 = v15;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Retrieved sample... Flights climbed: %{private}f, startDate: %{private}@, endDate: %{private}@ from %{private}@", buf, 0x2Au);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4430 != -1)
            {
              sub_10187CF34();
            }

            v33 = qword_1025D4438;
            v34 = [objc_msgSend(v9 "startDate")];
            v35 = [objc_msgSend(v9 "endDate")];
            v36 = [objc_msgSend(v9 "sourceRevision")];
            v50 = 134284291;
            v51 = v11;
            v52 = 2113;
            v53 = v34;
            v54 = 2113;
            v55 = v35;
            v56 = 2113;
            v57 = v36;
            LODWORD(v42) = 42;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v33, 2, "Retrieved sample... Flights climbed: %{private}f, startDate: %{private}@, endDate: %{private}@ from %{private}@", &v50, v42);
            v38 = v37;
            sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion getSixMinuteWalkDistancePrediction:]_block_invoke", "%s\n", v37);
            if (v38 != buf)
            {
              free(v38);
            }
          }

          if ((*(*(*(a1 + 64) + 8) + 24) & 1) != 0 || ![objc_msgSend(objc_msgSend(v9 "sourceRevision")])
          {
            if ([objc_msgSend(objc_msgSend(v9 "sourceRevision")])
            {
              v17 = *(*(a1 + 72) + 8);
              [objc_msgSend(v9 "startDate")];
              v19 = v18;
              [objc_msgSend(v9 "endDate")];
              v22 = v17[7];
              v21 = v17[8];
              if (v22 >= v21)
              {
                v24 = v17[6];
                v25 = v22 - v24;
                v26 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v24) >> 3);
                v27 = v26 + 1;
                if (v26 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_10028C64C();
                }

                v28 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v24) >> 3);
                if (2 * v28 > v27)
                {
                  v27 = 2 * v28;
                }

                if (v28 >= 0x555555555555555)
                {
                  v29 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v29 = v27;
                }

                if (v29)
                {
                  sub_1001AB518((v17 + 6), v29);
                }

                v30 = 24 * v26;
                *v30 = v19;
                *(v30 + 8) = v20;
                *(v30 + 16) = v11;
                v23 = 24 * v26 + 24;
                v31 = 24 * v26 - v25;
                memcpy((v30 - v25), v24, v25);
                v32 = v17[6];
                v17[6] = v31;
                v17[7] = v23;
                v17[8] = 0;
                if (v32)
                {
                  operator delete(v32);
                }
              }

              else
              {
                *v22 = v19;
                *(v22 + 1) = v20;
                v23 = (v22 + 24);
                *(v22 + 2) = v11;
              }

              v17[7] = v23;
            }
          }

          else
          {
            *(*(*(a1 + 64) + 8) + 24) = 1;
            if (qword_1025D4430 != -1)
            {
              sub_10187CF34();
            }

            v16 = qword_1025D4438;
            if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "Flights from series 4 watch observed, consider only phone flights", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10187E9B4(&v44, v45);
            }
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
        v6 = v39;
      }

      while (v39);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_1003F38EC(uint64_t a1)
{
  dispatch_release(*(a1 + 32));
  v2 = (a1 + 40);
  if (!xpc_activity_should_defer(*(a1 + 40)))
  {
    goto LABEL_15;
  }

  if (qword_1025D4430 != -1)
  {
    sub_10187CE3C();
  }

  v4 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Attempting to defer activity", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187EAC8();
  }

  if (!xpc_activity_set_state(*v2, 3))
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CF34();
    }

    v5 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_FAULT))
    {
      state = xpc_activity_get_state(*v2);
      *buf = 134349056;
      *&buf[4] = state;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Failed to mark activity as deferred. Current state is %{public}ld", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187EBAC((a1 + 40));
    }

LABEL_15:
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      if (qword_1025D4430 != -1)
      {
        sub_10187CF34();
      }

      v7 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "At least one required query failed due to device lock. Rescheduling the activity to try again soon.", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187ECB0();
      }

      v10 = *(a1 + 48);
      v8 = a1 + 48;
      v9 = v10;
      v11 = *(v8 - 8);
      Current = CFAbsoluteTimeGetCurrent();
      v13 = *(*v8 + 176);
      if (v13 >= XPC_ACTIVITY_INTERVAL_1_HOUR)
      {
        v13 = XPC_ACTIVITY_INTERVAL_1_HOUR;
      }

      [v9 completeActivity:v11 withNextEstimateTime:Current + v13];
      return;
    }

    v14 = *(*(a1 + 72) + 8);
    v15 = *(v14 + 48);
    v16 = *(v14 + 56);
    if (v15 == v16)
    {
      v17 = 1.79769313e308;
    }

    else
    {
      v17 = 1.79769313e308;
      v3 = 0.0;
      do
      {
        v18 = *(v15 + 8);
        if (v18 < v17 && v18 > 0.0)
        {
          v17 = *(v15 + 8);
        }

        v15 += 120;
      }

      while (v15 != v16);
    }

    [*(a1 + 56) timeIntervalSinceReferenceDate];
    v21 = v20;
    v117 = 0;
    v118 = 0;
    __src = 0;
    v22 = *(*(a1 + 80) + 8);
    v23 = *(v22 + 48);
    for (i = *(v22 + 56); v23 != i; v23 += 3)
    {
      v26 = *v23;
      v25 = v23[1];
      v27 = *(*(a1 + 88) + 8);
      v28 = *(v27 + 48);
      v29 = *(v27 + 56);
      v30 = 0.0;
      while (v28 != v29)
      {
        v31 = *v28;
        v32 = v28[1];
        v28 += 3;
        if (v32 <= v25 && v31 >= v26)
        {
          v30 = v30 + 1.0;
        }
      }

      if (v17 >= v25)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = v30;
      }

      v35 = v117;
      if (v117 >= v118)
      {
        v37 = __src;
        v38 = v117 - __src;
        v39 = (v117 - __src) >> 5;
        v40 = v39 + 1;
        if ((v39 + 1) >> 59)
        {
          sub_10028C64C();
        }

        v41 = v118 - __src;
        if ((v118 - __src) >> 4 > v40)
        {
          v40 = v41 >> 4;
        }

        if (v41 >= 0x7FFFFFFFFFFFFFE0)
        {
          v40 = 0x7FFFFFFFFFFFFFFLL;
        }

        if (v40)
        {
          sub_1003F6B14(&__src, v40);
        }

        v42 = (32 * v39);
        *v42 = v26;
        v42[1] = v25;
        v42[2] = v34;
        v42[3] = v30;
        v36 = 32 * v39 + 32;
        memcpy(0, v37, v38);
        v43 = __src;
        __src = 0;
        v117 = v36;
        v118 = 0;
        if (v43)
        {
          operator delete(v43);
        }
      }

      else
      {
        *v117 = v26;
        v35[1] = v25;
        v36 = (v35 + 4);
        v35[2] = v34;
        v35[3] = v30;
      }

      v117 = v36;
      if (qword_1025D4430 != -1)
      {
        sub_10187CF34();
      }

      v44 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
      {
        v45 = *(v117 - 2);
        *buf = 134284289;
        *&buf[4] = v26;
        *&buf[12] = 2049;
        *&buf[14] = v25;
        *&buf[22] = 2048;
        *&buf[24] = v30;
        *&buf[32] = 2048;
        *&buf[34] = v45;
        _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_INFO, "Hours for day %{private}f - %{private}f, %f (%f)\n", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187CF5C(buf);
        v46 = *(v117 - 2);
        *v121 = 134284289;
        *&v121[4] = v26;
        *&v121[12] = 2049;
        *&v121[14] = v25;
        *&v121[22] = 2048;
        *&v121[24] = v30;
        LOWORD(v122) = 2048;
        *(&v122 + 2) = v46;
        LODWORD(v90) = 42;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4438, 1, "Hours for day %{private}f - %{private}f, %f (%f)\n", v121, v90);
        v48 = v47;
        sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion getSixMinuteWalkDistancePrediction:]_block_invoke", "%s\n", v47);
        if (v48 != buf)
        {
          free(v48);
        }
      }
    }

    *&v111 = 0;
    DWORD2(v111) = 0;
    *&v113 = 0;
    v112 = 0uLL;
    DWORD2(v113) = 0;
    v115 = 0;
    v114 = 0uLL;
    v49 = sub_100625C4C((*(*(a1 + 96) + 8) + 48), (*(*(a1 + 112) + 8) + 48), (*(*(a1 + 120) + 8) + 48), &v111, *(*(*(a1 + 104) + 8) + 56), *(*(*(a1 + 104) + 8) + 60), *(*(*(a1 + 104) + 8) + 68));
    if (qword_1025D4430 != -1)
    {
      sub_10187CF34();
    }

    v50 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134283521;
      *&buf[4] = v49;
      _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEBUG, "Using cadenceStrideLengthOffset of %{private}.3f", buf, 0xCu);
    }

    v51 = sub_10000A100(121, 2);
    if (v51)
    {
      sub_10187CF5C(buf);
      *v121 = 134283521;
      *&v121[4] = v49;
      LODWORD(v90) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4438, 2, "Using cadenceStrideLengthOffset of %{private}.3f", v121, v90);
      v85 = v84;
      v51 = sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion getSixMinuteWalkDistancePrediction:]_block_invoke", "%s\n", v84);
      if (v85 != buf)
      {
        free(v85);
      }
    }

    v110 = 0.0;
    v53 = sub_1000206B4(v51, v52);
    sub_100023B78(v53, @"PredictedWalkDistanceResetDate", &v110);
    if (qword_1025D4430 != -1)
    {
      sub_10187CF34();
    }

    v54 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = v110;
      _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_INFO, "p6MWD lastResetTime, %f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187CF5C(buf);
      *v121 = 134217984;
      *&v121[4] = v110;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4438, 1, "p6MWD lastResetTime, %f", COERCE_DOUBLE(v121));
      v87 = v86;
      sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion getSixMinuteWalkDistancePrediction:]_block_invoke", "%s\n", v86);
      if (v87 != buf)
      {
        free(v87);
      }
    }

    if (*(*(*(a1 + 128) + 8) + 24) == 1)
    {
      v55 = *(*(a1 + 48) + 40);
      v56 = v110;
      v57 = *(*(a1 + 72) + 8);
      v108 = 0;
      v109 = 0;
      v107 = 0;
      sub_1003F6B5C(&v107, *(v57 + 48), *(v57 + 56), 0xEEEEEEEEEEEEEEEFLL * ((*(v57 + 56) - *(v57 + 48)) >> 3));
      v58 = *(*(a1 + 136) + 8);
      v59 = *(*(a1 + 144) + 8);
      v60 = *(*(a1 + 152) + 8);
      v61 = *(*(a1 + 160) + 8);
      v105 = 0;
      v106 = 0;
      __p = 0;
      sub_1003F6C7C(&__p, *(v61 + 48), *(v61 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(v61 + 56) - *(v61 + 48)) >> 3));
      sub_100F7AAF8(v55, &v107, (v58 + 48), (v59 + 48), (v60 + 48), &__src, &__p, (*(*(a1 + 104) + 8) + 48), buf, v56, v21, v49);
      v91 = *buf;
      v62 = *&buf[16];
      v132 = *&buf[20];
      v133[0] = *&buf[36];
      *(v133 + 12) = *&buf[48];
      v63 = v135;
      v128 = v144;
      v129 = v145;
      v130 = v146;
      v131 = v147;
      v124 = v140;
      v125 = v141;
      v126 = v142;
      v127 = v143;
      *v121 = v136;
      *&v121[16] = v137;
      v122 = v138;
      v123 = v139;
      if (__p)
      {
        v105 = __p;
        operator delete(__p);
      }

      v64 = v107;
      if (!v107)
      {
        goto LABEL_87;
      }

      v108 = v107;
    }

    else
    {
      v65 = *(*(a1 + 48) + 40);
      v66 = v110;
      v67 = *(*(a1 + 72) + 8);
      v102 = 0;
      v103 = 0;
      v101 = 0;
      sub_1003F6B5C(&v101, *(v67 + 48), *(v67 + 56), 0xEEEEEEEEEEEEEEEFLL * ((*(v67 + 56) - *(v67 + 48)) >> 3));
      v68 = *(*(a1 + 80) + 8);
      v69 = *(*(a1 + 144) + 8);
      v70 = *(*(a1 + 152) + 8);
      v71 = *(*(a1 + 160) + 8);
      v99 = 0;
      v100 = 0;
      v98 = 0;
      sub_1003F6C7C(&v98, *(v71 + 48), *(v71 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(v71 + 56) - *(v71 + 48)) >> 3));
      sub_100F7AAF8(v65, &v101, (v68 + 48), (v69 + 48), (v70 + 48), &__src, &v98, (*(*(a1 + 104) + 8) + 48), buf, v66, v21, v49);
      v91 = *buf;
      v62 = *&buf[16];
      v132 = *&buf[20];
      v133[0] = *&buf[36];
      *(v133 + 12) = *&buf[48];
      v63 = v135;
      v128 = v144;
      v129 = v145;
      v130 = v146;
      v131 = v147;
      v124 = v140;
      v125 = v141;
      v126 = v142;
      v127 = v143;
      *v121 = v136;
      *&v121[16] = v137;
      v122 = v138;
      v123 = v139;
      if (v98)
      {
        v99 = v98;
        operator delete(v98);
      }

      v64 = v101;
      if (!v101)
      {
        goto LABEL_87;
      }

      v102 = v101;
    }

    operator delete(v64);
LABEL_87:
    if (v62 == 1)
    {
      [*(a1 + 48) writeToHealthKitPrediction:SDWORD2(v113) > 12 estimateTime:v63 earliestTimeUsed:v91 calibrationStatus:?];
      v72 = v91;
    }

    else
    {
      if (qword_1025D4430 != -1)
      {
        sub_10187CF34();
      }

      v73 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
      {
        *buf = 67240192;
        *&buf[4] = v62;
        _os_log_impl(dword_100000000, v73, OS_LOG_TYPE_INFO, "Weekly p6MWD estimate unavailable, status %{public}d\n", buf, 8u);
      }

      v74 = sub_10000A100(121, 2);
      v72 = v91;
      if (v74)
      {
        sub_10187CF5C(buf);
        LODWORD(v119[0]) = 67240192;
        DWORD1(v119[0]) = v62;
        LODWORD(v90) = 8;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4438, 1, "Weekly p6MWD estimate unavailable, status %{public}d\n", v119, v90);
        v89 = v88;
        sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion getSixMinuteWalkDistancePrediction:]_block_invoke", "%s\n", v88);
        if (v89 != buf)
        {
          free(v89);
        }

        v72 = v91;
      }
    }

    *buf = v72;
    *&buf[16] = v62;
    *&buf[20] = v132;
    *&buf[36] = v133[0];
    *&buf[48] = *(v133 + 12);
    v135 = v63;
    v144 = v128;
    v145 = v129;
    v146 = v130;
    v147 = v131;
    v140 = v124;
    v141 = v125;
    v142 = v126;
    v143 = v127;
    v136 = *v121;
    v137 = *&v121[16];
    v138 = v122;
    v139 = v123;
    v119[2] = v113;
    v119[3] = v114;
    v120 = v115;
    v119[0] = v111;
    v119[1] = v112;
    v75 = *(a1 + 176);
    v76 = *(*(a1 + 168) + 8);
    v77 = *(v76 + 64);
    v96[0] = *(v76 + 48);
    v96[1] = v77;
    v97 = *(v76 + 80);
    v78 = *(v75 + 8);
    v79 = *(v78 + 64);
    v94[0] = *(v78 + 48);
    v94[1] = v79;
    v95 = *(v78 + 80);
    v80 = *(*(a1 + 104) + 8);
    v81 = v80[3];
    v82 = v80[4];
    *&v93[12] = *(v80 + 92);
    v83 = *(a1 + 48);
    v92[0] = v81;
    v92[1] = v82;
    *v93 = v80[5];
    [v83 sendAnalyticsWeeklyEstimate:buf strideCalInfo:v119 walkingWorkoutPaceStats:v96 runningWorkoutPaceStats:v94 userInfo:v92];
    [*(a1 + 48) completeActivity:*(a1 + 40) withNextEstimateTime:CFAbsoluteTimeGetCurrent() + *(*(a1 + 48) + 176)];
    if (__src)
    {
      v117 = __src;
      operator delete(__src);
    }
  }
}
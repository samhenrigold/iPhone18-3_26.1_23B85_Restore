void sub_10004C378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  if (*(v69 - 217) < 0)
  {
    operator delete(*(v69 - 240));
  }

  if (*(v69 - 185) < 0)
  {
    operator delete(*(v69 - 208));
  }

  sub_10004E064(&a49);
  if (a60 < 0)
  {
    operator delete(a55);
  }

  if (a65 < 0)
  {
    operator delete(a62);
  }

  if (a67 < 0)
  {
    operator delete(a66);
  }

  if (a69 < 0)
  {
    operator delete(a68);
  }

  _Unwind_Resume(a1);
}

void sub_10004C688(id a1, id a2, id a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 68289539;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2113;
    v12 = v5;
    v13 = 2113;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#eff,collectEfficacyMetricForAlertType,weaReceivedMetaValue, key:%{private, location:escape_only}@, value:%{private, location:escape_only}@}", v8, 0x26u);
  }
}

void sub_10004C774(id a1, id a2, id a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 68289539;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2113;
    v12 = v5;
    v13 = 2113;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#eff,collectEfficacyMetricForAlertType,saMetaValue, key:%{private, location:escape_only}@, value:%{private, location:escape_only}@}", v8, 0x26u);
  }
}

void sub_10004C860(uint64_t a1)
{
  v43 = 0;
  v2 = CFCalendarCopyCurrent();
  Current = CFAbsoluteTimeGetCurrent();
  CFCalendarDecomposeAbsoluteTime(v2, Current, "H", &v43);
  if (v2)
  {
    CFRelease(v2);
  }

  AnalyticsSendEventLazy();
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v5 = (a1 + 80);
    if (*(a1 + 103) < 0)
    {
      v5 = *v5;
    }

    v6 = (a1 + 104);
    if (*(a1 + 127) < 0)
    {
      v6 = *v6;
    }

    v7 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v7 = *v7;
    }

    v8 = (a1 + 152);
    if (*(a1 + 175) < 0)
    {
      v8 = *v8;
    }

    v9 = (a1 + 176);
    if (*(a1 + 199) < 0)
    {
      v9 = *v9;
    }

    v10 = (a1 + 200);
    if (*(a1 + 223) < 0)
    {
      v10 = *v10;
    }

    v47 = "";
    *v49 = v43;
    *&v49[4] = 2081;
    *&v49[6] = v5;
    *&v49[16] = v6;
    *&v49[26] = v7;
    *&v49[36] = v8;
    *v51 = v9;
    v46 = 2082;
    *&v49[14] = 2082;
    *&v49[24] = 2082;
    *&v49[34] = 2082;
    v50 = 2082;
    *&v51[8] = 2082;
    v11 = *(a1 + 332);
    v52 = v10;
    v12 = *(a1 + 328);
    *&v53[2] = v11;
    v13 = *(a1 + 340);
    *&v54[2] = v12;
    v14 = *(a1 + 348);
    *&v55[2] = v13;
    v15 = *(a1 + 349);
    *(&v56 + 2) = v14;
    v16 = *(a1 + 350);
    *v57 = v15;
    v17 = *(a1 + 351);
    *&v57[6] = v16;
    v18 = *(a1 + 352);
    v59 = v17;
    v19 = *(a1 + 353);
    v61 = v18;
    v60 = 1025;
    v62 = 1025;
    v20 = *(a1 + 354);
    v63 = v19;
    v21 = *(a1 + 355);
    v65 = v20;
    v22 = *(a1 + 356);
    v67 = v21;
    v23 = *(a1 + 357);
    v69 = v22;
    v24 = *(a1 + 358);
    v71 = v23;
    v25 = *(a1 + 359);
    v73 = v24;
    v26 = *(a1 + 360);
    v75 = v25;
    v48 = 1026;
    *v53 = 1026;
    *v54 = 1026;
    *v55 = 1026;
    LOWORD(v56) = 1026;
    HIWORD(v56) = 1026;
    *&v57[4] = 1026;
    v58 = 1026;
    v64 = 1026;
    v66 = 1026;
    v68 = 1026;
    v70 = 1026;
    v72 = 1026;
    v74 = 1026;
    v76 = 1026;
    v77 = v26;
    v27 = *(a1 + 376);
    v79 = *(a1 + 368);
    v81 = v27;
    v28 = *(a1 + 392);
    v83 = *(a1 + 384);
    v85 = v28;
    v29 = *(a1 + 408);
    v87 = *(a1 + 400);
    v78 = 2050;
    v80 = 2050;
    v82 = 2050;
    v84 = 2050;
    v86 = 2050;
    v88 = 2050;
    v89 = v29;
    *buf = 68296451;
    v45 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#eff,metric submitted, hourOfMetricTrigger:%{public}d, alertIDString:%{private, location:escape_only}s, participationType:%{public, location:escape_only}s, pushInterface:%{public, location:escape_only}s, efficacyType:%{public, location:escape_only}s, hashType:%{public, location:escape_only}s, cellularConnectionStatus:%{public, location:escape_only}s, maCompatibilityVersion:%{public}d, maContentVersion:%{public}d, wifiQuality:%{public}d, WoW:%{public}d, wasCellularInternetReachable:%{public}d, wasChannelSubscribed:%{public}d, wasSaReceived:%{public}d, wasUserInSaPolygon:%{private}d, wasUserInWeaPolygon:%{private}d, wasWeaAlertReceived:%{public}d, wasWeaDisplayed:%{public}d, didWeaHavePolygon:%{public}d, wasWifiInternetReachable:%{public}d, wasAnyAlertReceived:%{public}d, wasSaExpected:%{public}d, wasRebootedDuringRollingPeriod:%{public}d, saLatencyRelativeToOriginatorTime:%{public}0.3f, saLatencyRelativeToServerTime:%{public}0.3f, saLatencyFromServerIngressTime:%{public}0.3f, weaLatencyRelativeToOriginatorTime:%{public}0.3f, weaDisplayedLatencyRelativeToReceivedTime:%{public}0.3f, weaMinusSaTimestamp:%{public}0.3f}", buf, 0xF0u);
    v4 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v30 = (a1 + 224);
    if (*(a1 + 247) < 0)
    {
      v30 = *v30;
    }

    v31 = (a1 + 248);
    if (*(a1 + 271) < 0)
    {
      v31 = *v31;
    }

    v32 = (a1 + 272);
    if (*(a1 + 295) < 0)
    {
      v32 = *v32;
    }

    v33 = (a1 + 296);
    if (*(a1 + 319) < 0)
    {
      v33 = *v33;
    }

    v34 = *(a1 + 320);
    v35 = *(a1 + 361);
    v36 = *(a1 + 362);
    v37 = *(a1 + 363);
    v38 = *(a1 + 364);
    v39 = *(a1 + 365);
    v40 = *(a1 + 336);
    v41 = *(a1 + 416);
    v42 = *(a1 + 424);
    *buf = 68292355;
    v45 = 0;
    v46 = 2082;
    v47 = "";
    v48 = 2082;
    *v49 = v30;
    *&v49[8] = 2082;
    *&v49[10] = v31;
    *&v49[18] = 2081;
    *&v49[20] = v32;
    *&v49[28] = 2082;
    *&v49[30] = v33;
    *&v49[38] = 1026;
    *&v49[40] = v34;
    v50 = 1026;
    *v51 = v35;
    *&v51[4] = 1026;
    *&v51[6] = v36;
    LOWORD(v52) = 1026;
    *(&v52 + 2) = v37;
    HIWORD(v52) = 1026;
    *v53 = v38;
    *&v53[4] = 1026;
    *v54 = v39;
    *&v54[4] = 1026;
    *v55 = v40;
    *&v55[4] = 2050;
    v56 = v41;
    *v57 = 2050;
    *&v57[2] = v42;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#eff,metric submitted continue, RAT:%{public, location:escape_only}s, rrcConnectionStatus:%{public, location:escape_only}s, APSDConnectivityStatus:%{private, location:escape_only}s, weaHandling:%{public, location:escape_only}s, cellularQuality:%{public}d, wasEnhancedDeliveryEnabled:%{public}d, isWeaMinusSALessThanThreshold:%{public}d, isAuthenticated:%{public}d, isTestAlert:%{public}d, isReceivedViaPush:%{public}d, numAlertsPerDay:%{public}d, timeSinceRrcConnection:%{public}.3f, weaMinusSaNextMatch:%{public}.3f}", buf, 0x78u);
  }
}

id sub_10004CC9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v58[0] = @"hourOfMetricTrigger";
  v57 = [NSNumber numberWithInt:*(a1 + 40)];
  v59[0] = v57;
  v58[1] = @"manifestVersionNumber";
  v56 = [NSNumber numberWithUnsignedInt:*(*(v1 + 48) + 24)];
  v59[1] = v56;
  v58[2] = @"alertIDString";
  v2 = (v1 + 80);
  if (*(v1 + 103) < 0)
  {
    v2 = *v2;
  }

  v55 = [NSString stringWithUTF8String:v2];
  v59[2] = v55;
  v58[3] = @"participationType";
  v3 = (v1 + 104);
  if (*(v1 + 127) < 0)
  {
    v3 = *v3;
  }

  v54 = [NSString stringWithUTF8String:v3];
  v59[3] = v54;
  v58[4] = @"pushInterface";
  v4 = (v1 + 128);
  if (*(v1 + 151) < 0)
  {
    v4 = *v4;
  }

  v53 = [NSString stringWithUTF8String:v4];
  v59[4] = v53;
  v58[5] = @"efficacyType";
  v5 = (v1 + 152);
  if (*(v1 + 175) < 0)
  {
    v5 = *v5;
  }

  v52 = [NSString stringWithUTF8String:v5];
  v59[5] = v52;
  v58[6] = @"hashType";
  v6 = (v1 + 176);
  if (*(v1 + 199) < 0)
  {
    v6 = *v6;
  }

  v51 = [NSString stringWithUTF8String:v6];
  v59[6] = v51;
  v58[7] = @"cellularConnectionStatus";
  v7 = (v1 + 200);
  if (*(v1 + 223) < 0)
  {
    v7 = *v7;
  }

  v50 = [NSString stringWithUTF8String:v7];
  v59[7] = v50;
  v58[8] = @"RAT";
  v8 = (v1 + 224);
  if (*(v1 + 247) < 0)
  {
    v8 = *v8;
  }

  v49 = [NSString stringWithUTF8String:v8];
  v59[8] = v49;
  v58[9] = @"rrcConnectionStatus";
  v9 = (v1 + 248);
  if (*(v1 + 271) < 0)
  {
    v9 = *v9;
  }

  v48 = [NSString stringWithUTF8String:v9];
  v59[9] = v48;
  v58[10] = @"APSDConnectivityStatus";
  v10 = (v1 + 272);
  if (*(v1 + 295) < 0)
  {
    v10 = *v10;
  }

  v47 = [NSString stringWithUTF8String:v10];
  v59[10] = v47;
  v58[11] = @"weaHandling";
  v11 = (v1 + 296);
  if (*(v1 + 319) < 0)
  {
    v11 = *v11;
  }

  v46 = [NSString stringWithUTF8String:v11];
  v59[11] = v46;
  v58[12] = @"CellularQuality";
  v45 = [NSNumber numberWithInt:*(v1 + 320)];
  v59[12] = v45;
  v58[13] = @"cellularQualityAverage";
  v44 = [NSNumber numberWithInt:*(v1 + 324)];
  v59[13] = v44;
  v58[14] = @"maContentVersion";
  v43 = [NSNumber numberWithUnsignedInt:*(v1 + 328)];
  v59[14] = v43;
  v58[15] = @"maCompatibilityVersion";
  v42 = [NSNumber numberWithUnsignedInt:*(v1 + 332)];
  v59[15] = v42;
  v58[16] = @"numAlertsPerDay";
  v41 = [NSNumber numberWithUnsignedInt:*(v1 + 336)];
  v59[16] = v41;
  v58[17] = @"WifiQuality";
  v40 = [NSNumber numberWithInt:*(v1 + 340)];
  v59[17] = v40;
  v58[18] = @"wifiQualityAverage";
  v39 = [NSNumber numberWithInt:*(v1 + 344)];
  v59[18] = v39;
  v58[19] = @"WoW";
  v38 = [NSNumber numberWithBool:*(v1 + 348)];
  v59[19] = v38;
  v58[20] = @"wasCellularInternetReachable";
  v37 = [NSNumber numberWithBool:*(v1 + 349)];
  v59[20] = v37;
  v58[21] = @"wasChannelSubscribed";
  v36 = [NSNumber numberWithBool:*(v1 + 350)];
  v59[21] = v36;
  v58[22] = @"wasSaReceived";
  v35 = [NSNumber numberWithBool:*(v1 + 351)];
  v59[22] = v35;
  v58[23] = @"wasUserInSaPolygon";
  v34 = [NSNumber numberWithBool:*(v1 + 352)];
  v59[23] = v34;
  v58[24] = @"wasUserInWeaPolygon";
  v33 = [NSNumber numberWithBool:*(v1 + 353)];
  v59[24] = v33;
  v58[25] = @"wasWeaAlertReceived";
  v32 = [NSNumber numberWithBool:*(v1 + 354)];
  v59[25] = v32;
  v58[26] = @"wasWeaDisplayed";
  v31 = [NSNumber numberWithBool:*(v1 + 355)];
  v59[26] = v31;
  v58[27] = @"didWeaHavePolygon";
  v30 = [NSNumber numberWithBool:*(v1 + 356)];
  v59[27] = v30;
  v58[28] = @"wasWifiInternetReachable";
  v29 = [NSNumber numberWithBool:*(v1 + 357)];
  v59[28] = v29;
  v58[29] = @"wasAnyAlertReceived";
  v28 = [NSNumber numberWithBool:*(v1 + 358)];
  v59[29] = v28;
  v58[30] = @"wasSaExpected";
  v27 = [NSNumber numberWithBool:*(v1 + 359)];
  v59[30] = v27;
  v58[31] = @"wasRebootedDuringRollingPeriod";
  v26 = [NSNumber numberWithBool:*(v1 + 360)];
  v59[31] = v26;
  v58[32] = @"wasEnhancedDeliveryEnabled";
  v25 = [NSNumber numberWithBool:*(v1 + 361)];
  v59[32] = v25;
  v58[33] = @"isWeaMinusSALessThanThreshold";
  v24 = [NSNumber numberWithBool:*(v1 + 362)];
  v59[33] = v24;
  v58[34] = @"isTestAlert";
  v23 = [NSNumber numberWithBool:*(v1 + 364)];
  v59[34] = v23;
  v58[35] = @"isReceivedViaPush";
  v12 = [NSNumber numberWithBool:*(v1 + 365)];
  v59[35] = v12;
  v58[36] = @"saLatencyRelativeToOriginatorTime";
  v13 = [NSNumber numberWithDouble:*(v1 + 368)];
  v59[36] = v13;
  v58[37] = @"saLatencyRelativeToServerTime";
  v14 = [NSNumber numberWithDouble:*(v1 + 376)];
  v59[37] = v14;
  v58[38] = @"saLatencyFromServerIngressTime";
  v15 = [NSNumber numberWithDouble:*(v1 + 384)];
  v59[38] = v15;
  v58[39] = @"weaLatencyRelativeToOriginatorTime";
  v16 = [NSNumber numberWithDouble:*(v1 + 392)];
  v59[39] = v16;
  v58[40] = @"weaDisplayedLatencyRelativeToReceivedTime";
  v17 = [NSNumber numberWithDouble:*(v1 + 400)];
  v59[40] = v17;
  v58[41] = @"weaMinusSaTimestamp";
  v18 = [NSNumber numberWithDouble:*(v1 + 408)];
  v59[41] = v18;
  v58[42] = @"timeSinceRrcConnection";
  v19 = [NSNumber numberWithDouble:*(v1 + 416)];
  v59[42] = v19;
  v58[43] = @"weaMinusSaNextMatch";
  v20 = [NSNumber numberWithDouble:*(v1 + 424)];
  v59[43] = v20;
  v22 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:44];

  return v22;
}

void *sub_10004D7E4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10004D83C(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_10004D83C(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10004D8C4(v5, (v5 + 8), (v4 + 4), (v4 + 4));
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

void *sub_10004D8C4(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *sub_10004D958(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    sub_10004DAEC();
  }

  return v4;
}

uint64_t *sub_10004D958(uint64_t **a1, uint64_t *a2, char **a3, uint64_t *a4, uint64_t a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || (sub_100031320((a5 + 24), a2 + 56) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2];
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if ((sub_100031320(v12 + 7, (a5 + 24)) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((sub_100031320(a2 + 7, (a5 + 24)) & 0x80) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = a2 + 1;
  v13 = a2[1];
  if (v13)
  {
    v14 = a2[1];
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if ((sub_100031320((a5 + 24), v15 + 56) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return sub_10004DC10(a1, a3, a5);
}

void sub_10004DB98(_Unwind_Exception *a1)
{
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  sub_10004DBC4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10004DBC4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10002D9D0(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

char *sub_10004DC10(uint64_t a1, char **a2, uint64_t a3)
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
        if ((sub_100031320((a3 + 24), v4 + 56) & 0x80) == 0)
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

      if ((sub_100031320(v7 + 7, (a3 + 24)) & 0x80) == 0)
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

void sub_10004DC98(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10004DC98(a1, *a2);
    sub_10004DC98(a1, a2[1]);
    sub_10002D9D0((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_10004DD64(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013B358;
  a2[1] = v2;
  return result;
}

void sub_10004DD90(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,init,load}", v3, 0x12u);
    }

    sub_100024DD8(v1);
    *(v1 + 8) = 1;
  }
}

uint64_t sub_10004DE60(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004DF1C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013B3D8;
  a2[1] = v2;
  return result;
}

void sub_10004DF48(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0 && (*(v1 + 193) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,destroy,clear}", v3, 0x12u);
    }

    sub_100026A24(v1);
  }
}

uint64_t sub_10004E018(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004E064(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

const void **sub_10004E0CC(void *a1, uint64_t *a2, __int128 **a3)
{
  v5 = sub_100039B6C(a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_10004E530(a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

BOOL sub_10004E530(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void sub_10004E5A8(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_10004E604(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_1000353E8(v16, a3);
  *a1 = off_10013AE08;
  sub_1000353E8((a1 + 1), v16);
  sub_100035480(v16);
  *a1 = off_10013B478;
  sub_1000353E8((a1 + 5), a3);
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SABatteryServiceTest,init}", buf, 0x12u);
  }

  v7 = v5;
  v8 = sub_1000175DC();
  v9 = v7;
  v11[0] = off_10013B4C0;
  v11[1] = a1;
  v11[2] = v9;
  v11[3] = v11;
  sub_1000178C4(v8, 4, v11);
  sub_100017F8C(v11);

  return a1;
}

void sub_10004E7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100017F8C(&a9);

  sub_100035480(v13);
  *v9 = v11;
  sub_100035480(v12);

  _Unwind_Resume(a1);
}

void *sub_10004E80C(void *a1)
{
  *a1 = off_10013B478;
  sub_100035480((a1 + 5));
  *a1 = off_10013AE08;
  sub_100035480((a1 + 1));
  return a1;
}

void sub_10004E874(void *a1)
{
  *a1 = off_10013B478;
  sub_100035480((a1 + 5));
  *a1 = off_10013AE08;
  sub_100035480((a1 + 1));

  operator delete();
}

void sub_10004E930(uint64_t a1)
{

  operator delete();
}

id sub_10004E9E4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_10013B4C0;
  a2[1] = v3;
  result = v4;
  a2[2] = result;
  return result;
}

void sub_10004EA34(id *a1)
{

  operator delete(a1);
}

void sub_10004EA70(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004EB58;
  v7[3] = &unk_100139F08;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t sub_10004EB0C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10004EB58(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = objc_autoreleasePoolPush();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004EC14;
  v4[3] = &unk_100139F08;
  v6 = v2;
  v5 = *(a1 + 32);
  sub_10004EC14(v4);

  objc_autoreleasePoolPop(v3);
}

void sub_10004EC14(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (xpc_dictionary_get_int64(v2, "TestMessageType") == 4)
  {
    int64 = xpc_dictionary_get_int64(v2, "BatteryConnected");
    sub_100035080(v1 + 40, int64 == 0);
  }
}

void *sub_10004ECB4()
{
  if ((atomic_load_explicit(&qword_10014ABE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10014ABE0))
  {
    sub_10004EEA8();
    __cxa_atexit(sub_10004ED44, &unk_10014ABE8, &_mh_execute_header);
    __cxa_guard_release(&qword_10014ABE0);
  }

  return &unk_10014ABE8;
}

uint64_t sub_10004ED44(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    LOWORD(v7) = 2082;
    *(&v7 + 2) = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#nam,release}", buf, 0x12u);
  }

  v3 = *(a1 + 200);
  *buf = _NSConcreteStackBlock;
  *&v7 = 3221225472;
  *(&v7 + 1) = sub_10004FD40;
  v8 = &unk_1001390D0;
  v9 = a1;
  dispatch_async(v3, buf);

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  sub_10000DA70(a1 + 112);
  sub_10000DAF0(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v5 = (a1 + 32);
  sub_10000DB84(&v5);

  return a1;
}

void sub_10004EEA8()
{
  sub_10000F3B8(&unk_10014ABE8);
  qword_10014ACB0 = 0;
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v6 = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#nam,init}", buf, 0x12u);
  }

  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.safetyalerts.networkActivityMetrics", v1);
  v3 = qword_10014ACB0;
  qword_10014ACB0 = v2;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004EFF8;
  block[3] = &unk_1001390D0;
  block[4] = &unk_10014ABE8;
  dispatch_async(qword_10014ACB0, block);
}

uint64_t sub_10004EFF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v1 + 200));
  sub_1000060C4(__str, "network_activity");
  v2 = (v1 + 168);
  std::string::operator=((v1 + 168), __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  *(v1 + 9) = 0;
  *(v1 + 144) = 2000;
  sub_1000060C4(__str, "/var/mobile/Library/com.apple.safetyalerts/");
  sub_1000060C4(__p, "network_activity.elog");
  if ((v24 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v4 = v24;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = std::string::append(__str, v3, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v20 = v5->__r_.__value_.__r.__words[2];
  *v19 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if (v20 >= 0)
  {
    v7 = v19;
  }

  else
  {
    v7 = v19[0];
  }

  __p[0] = off_10013B5B8;
  v25 = __p;
  v21[0] = off_10013B648;
  v22 = v21;
  if (v7)
  {
    sub_1000060C4(__str, v7);
    if (*(v1 + 79) < 0)
    {
      operator delete(*(v1 + 56));
    }

    *(v1 + 56) = *__str;
    *(v1 + 72) = *&__str[16];
    v8 = v25;
    if (v25)
    {
      if (v25 == __p)
      {
        *&__str[24] = __str;
        (*(*v25 + 3))();
LABEL_28:
        v10 = v1 + 80;
        if (__str != (v1 + 80))
        {
          v11 = *&__str[24];
          v12 = *(v1 + 104);
          if (*&__str[24] == __str)
          {
            if (v12 == v10)
            {
              (*(**&__str[24] + 24))();
              (*(**&__str[24] + 32))(*&__str[24]);
              *&__str[24] = 0;
              (*(**(v1 + 104) + 24))(*(v1 + 104), __str);
              (*(**(v1 + 104) + 32))(*(v1 + 104));
              *(v1 + 104) = 0;
              *&__str[24] = __str;
              (*(v27[0] + 24))(v27, v1 + 80);
              (*(v27[0] + 32))(v27);
            }

            else
            {
              (*(**&__str[24] + 24))();
              (*(**&__str[24] + 32))(*&__str[24]);
              *&__str[24] = *(v1 + 104);
            }

            *(v1 + 104) = v10;
          }

          else if (v12 == v10)
          {
            (*(*v12 + 24))(*(v1 + 104), __str);
            (*(**(v1 + 104) + 32))(*(v1 + 104));
            *(v1 + 104) = *&__str[24];
            *&__str[24] = __str;
          }

          else
          {
            *&__str[24] = *(v1 + 104);
            *(v1 + 104) = v11;
          }
        }

        sub_10000DAF0(__str);
        v13 = v22;
        if (v22)
        {
          if (v22 == v21)
          {
            *&__str[24] = __str;
            (*(*v22 + 24))();
            goto LABEL_42;
          }

          v13 = (*(*v22 + 16))();
        }

        *&__str[24] = v13;
LABEL_42:
        v14 = v1 + 112;
        if (__str != (v1 + 112))
        {
          v15 = *&__str[24];
          v16 = *(v1 + 136);
          if (*&__str[24] == __str)
          {
            if (v16 == v14)
            {
              (*(**&__str[24] + 24))();
              (*(**&__str[24] + 32))(*&__str[24]);
              *&__str[24] = 0;
              (*(**(v1 + 136) + 24))(*(v1 + 136), __str);
              (*(**(v1 + 136) + 32))(*(v1 + 136));
              *(v1 + 136) = 0;
              *&__str[24] = __str;
              (*(v27[0] + 24))(v27, v1 + 112);
              (*(v27[0] + 32))(v27);
            }

            else
            {
              (*(**&__str[24] + 24))();
              (*(**&__str[24] + 32))(*&__str[24]);
              *&__str[24] = *(v1 + 136);
            }

            *(v1 + 136) = v14;
          }

          else if (v16 == v14)
          {
            (*(*v16 + 24))(*(v1 + 136), __str);
            (*(**(v1 + 136) + 32))(*(v1 + 136));
            *(v1 + 136) = *&__str[24];
            *&__str[24] = __str;
          }

          else
          {
            *&__str[24] = *(v1 + 136);
            *(v1 + 136) = v15;
          }
        }

        sub_10000DA70(__str);
        *(v1 + 152) = 5000;
        goto LABEL_52;
      }

      v8 = (*(*v25 + 2))();
    }

    *&__str[24] = v8;
    goto LABEL_28;
  }

  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 191) < 0)
    {
      v2 = *v2;
    }

    *__str = 68289283;
    *&__str[8] = 2082;
    *&__str[10] = "";
    *&__str[18] = 2081;
    *&__str[20] = v2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,invalidArgs, history:%{private, location:escape_only}s}", __str, 0x1Cu);
  }

LABEL_52:
  sub_10000DA70(v21);
  sub_10000DAF0(__p);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
    if (v7)
    {
      return sub_10004F858(v1);
    }
  }

  else if (v7)
  {
    return sub_10004F858(v1);
  }

  v17 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *__str = 68289026;
    *&__str[8] = 2082;
    *&__str[10] = "";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,#warning,persistentStorageConfigFailed}", __str, 0x12u);
  }

  return sub_10004F858(v1);
}

void sub_10004F7E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a2)
  {
    sub_10000DB70(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10004F858(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 200));
  Current = CFAbsoluteTimeGetCurrent();
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289539;
    *v47 = 2082;
    *&v47[2] = "";
    *&v47[10] = 2049;
    *&v47[12] = Current;
    *&v47[20] = 2049;
    *&v47[22] = Current + -604800.0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#nam,deleteOldActivitiesInternal, now:%{private}0.1f, deleteBeforeTsSeconds:%{private}0.1f}", buf, 0x26u);
  }

  v44[0] = off_10013B6D8;
  v44[1] = a1;
  v44[3] = v44;
  v43[0] = off_10013B758;
  v43[1] = a1;
  v43[3] = v43;
  sub_1000104CC(v45, v44, v43);
  sub_10000F274(v43);
  sub_10000F274(v44);
  v42 = 0;
  v41 = 0;
  v40 = 0xBFF0000000000000;
  v4 = (a1 + 32);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *buf = a1;
  *v47 = Current + -604800.0;
  *&v47[8] = &v42;
  *&v47[16] = &v41;
  *&v47[24] = &v40;
  if (v5 != v6)
  {
    while (!sub_100051488(buf, v5))
    {
      v5 += 40;
      if (v5 == v6)
      {
        v5 = v6;
        goto LABEL_15;
      }
    }

    if (v5 != v6)
    {
      for (i = v5 + 40; i != v6; i += 40)
      {
        if (!sub_100051488(buf, i))
        {
          v8 = *i;
          *(v5 + 8) = *(i + 8);
          *v5 = v8;
          if (*(v5 + 39) < 0)
          {
            operator delete(*(v5 + 16));
          }

          v9 = *(i + 16);
          *(v5 + 32) = *(i + 32);
          *(v5 + 16) = v9;
          *(i + 39) = 0;
          *(i + 16) = 0;
          v5 += 40;
        }
      }
    }
  }

LABEL_15:
  v10 = *(a1 + 40);
  if (v5 != v10)
  {
    sub_100013134(buf, v10, *(a1 + 40), v5);
    v5 = v11;
    for (j = *(a1 + 40); j != v5; j -= 40)
    {
      if (*(j - 1) < 0)
      {
        operator delete(*(j - 24));
      }
    }

    *(a1 + 40) = v5;
  }

  if (*(a1 + 32) == v5)
  {
    v13 = v40;
    v14 = v41;
    sub_1000060C4(v34, "{}");
    v36 = v13;
    v37 = v14;
    if (SHIBYTE(v35) < 0)
    {
      sub_100004CEC(&__p, v34[0], v34[1]);
    }

    else
    {
      __p = *v34;
      v39 = v35;
    }

    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    if (v15 >= v16)
    {
      v19 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - *v4) >> 3);
      v20 = v19 + 1;
      if (v19 + 1 > 0x666666666666666)
      {
        sub_10000509C();
      }

      v21 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - *v4) >> 3);
      if (2 * v21 > v20)
      {
        v20 = 2 * v21;
      }

      if (v21 >= 0x333333333333333)
      {
        v22 = 0x666666666666666;
      }

      else
      {
        v22 = v20;
      }

      *&v47[24] = a1 + 32;
      if (v22)
      {
        sub_1000135A8(a1 + 32, v22);
      }

      v23 = 40 * v19;
      *buf = 0;
      *v47 = v23;
      *&v47[16] = 0;
      v24 = v36;
      *(v23 + 8) = v37;
      *v23 = v24;
      v25 = __p;
      *(v23 + 32) = v39;
      *(v23 + 16) = v25;
      v39 = 0;
      __p = 0uLL;
      *&v47[8] = 40 * v19 + 40;
      v26 = *(a1 + 32);
      v27 = *(a1 + 40);
      v28 = 40 * v19 + v26 - v27;
      sub_100013600(a1 + 32, v26, v27, v28);
      v29 = *(a1 + 32);
      *(a1 + 32) = v28;
      v30 = *(a1 + 48);
      v33 = *&v47[8];
      *(a1 + 40) = *&v47[8];
      *&v47[8] = v29;
      *&v47[16] = v30;
      *buf = v29;
      *v47 = v29;
      sub_100010D68(buf);
      v31 = SHIBYTE(v39);
      *(a1 + 40) = v33;
      if (v31 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v17 = v36;
      *(v15 + 8) = v37;
      *v15 = v17;
      v18 = __p;
      *(v15 + 32) = v39;
      *(v15 + 16) = v18;
      v39 = 0;
      __p = 0uLL;
      *(a1 + 40) = v15 + 40;
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34[0]);
    }
  }

  if (v42 == 1)
  {
    if ((*(a1 + 79) & 0x8000000000000000) == 0)
    {
      if (!*(a1 + 79))
      {
        return sub_100011208(v45);
      }

      goto LABEL_45;
    }

    if (*(a1 + 64))
    {
LABEL_45:
      sub_100012370(a1);
    }
  }

  return sub_100011208(v45);
}

void sub_10004FCC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100011208(v31 - 144);
  _Unwind_Resume(a1);
}

void sub_10004FD40(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10004F858(v1);
  *(v1 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v1 + 16) = _Q0;
  *(v1 + 160) = 0;

  sub_10000DBD8((v1 + 32));
}

void sub_10004FD8C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 200);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004FE34;
  block[3] = &unk_10013B548;
  v11 = a2;
  v9 = v5;
  v10 = a1;
  v7 = v5;
  dispatch_async(v6, block);
}

void sub_10004FE34(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v2 + 200));
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289539;
    *&buf[4] = 0;
    *v9 = 2082;
    *&v9[2] = "";
    *&v9[10] = 1025;
    *&v9[12] = v1;
    *&v9[16] = 2113;
    *&v9[18] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#nam,updateNetworkActivityInternal, networkActivityType:%{private}d, metaVal:%{private, location:escape_only}@}", buf, 0x22u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  SACommonUtils::convertDictionaryToString(__p, v3);
  *buf = Current;
  *v9 = v1;
  if (SHIBYTE(v7) < 0)
  {
    sub_100004CEC(&v9[8], __p[0], __p[1]);
  }

  else
  {
    *&v9[8] = *__p;
    *&v9[24] = v7;
  }

  sub_100009EDC(v2, buf);
  if ((v9[31] & 0x80000000) != 0)
  {
    operator delete(*&v9[8]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10004FFA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10004FFF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v1 + 200));
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 68289026;
    v6 = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#nam,onFirstUnlockInternal}", &v5, 0x12u);
    v2 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (v1 + 168);
    if (*(v1 + 191) < 0)
    {
      v3 = *v3;
    }

    v5 = 68289283;
    v6 = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2081;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,onFirstUnlock, history:%{private, location:escape_only}s}", &v5, 0x1Cu);
  }

  if (*(v1 + 192) == 1)
  {
    v4 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 68289026;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,onFirstUnlock,skip}", &v5, 0x12u);
    }
  }

  else
  {
    *(v1 + 192) = 1;
    if (*(v1 + 9) == 1)
    {
      sub_1000126B0(v1);
    }
  }
}

void sub_1000501B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  dispatch_assert_queue_V2(*(v1 + 200));
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 68289026;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#nam,submitMetricsInternal}", &v7, 0x12u);
    v3 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 68289283;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2049;
    v12 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#nam,submitMetricsInternal, rollingPeriodS:%{private}lu}", &v7, 0x1Cu);
  }

  v4 = (time(0) / v2 * v2) + -978307200.0;
  v5 = (v4 - v2);
  v6 = v4;
  sub_1000503A8(v1, 0, v5, v6);
  sub_1000503A8(v1, 2, v5, v6);
  sub_1000503A8(v1, 1, v5, v6);
  sub_1000503A8(v1, 3, v5, v6);
  sub_1000503A8(v1, 4, v5, v6);
  sub_1000503A8(v1, 5, v5, v6);
}

void sub_1000503A8(uint64_t a1, int a2, double a3, double a4)
{
  dispatch_assert_queue_V2(*(a1 + 200));
  v8 = &SALogObjectGeneral;
  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289795;
    *&buf[4] = 0;
    *v58 = 2082;
    *&v58[2] = "";
    *&v58[10] = 2049;
    *&v58[12] = a3;
    *&v58[20] = 2049;
    *&v58[22] = a4;
    *&v58[30] = 1025;
    v59 = a2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#nam,submitMetricInternal, startTimeSeconds:%{private}0.1f, endTimeSeconds:%{private}0.1f, networkActivityType:%{private}d}", buf, 0x2Cu);
  }

  v55 = 0;
  v56 = 0uLL;
  v71[0] = off_10013B7D8;
  v71[1] = a1;
  v71[3] = v71;
  v70[0] = off_10013B858;
  v70[1] = a1;
  v70[3] = v70;
  sub_1000104CC(&v72, v71, v70);
  sub_10000F274(v70);
  sub_10000F274(v71);
  v10 = 0;
  *&v56 = 0;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (v11 == v12 || (*(a1 + 8) & 1) == 0)
  {
    v29 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    v30 = (a1 + 168);
    if (*(a1 + 191) < 0)
    {
      v30 = *v30;
    }

    *buf = 68289283;
    *&buf[4] = 0;
    *v58 = 2082;
    *&v58[2] = "";
    *&v58[10] = 2081;
    *&v58[12] = v30;
    v26 = "{msg%{public}.0s:#saEventHistory,#warning,findAllEventsStrictlyWithin,skipping,notReady, history:%{private, location:escape_only}s}";
    v27 = v29;
    v28 = 28;
    goto LABEL_31;
  }

  do
  {
    if (*v11 >= a3 && *v11 <= a4)
    {
      if (v10 >= *(&v56 + 1))
      {
        v14 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - v55) >> 3);
        v15 = v14 + 1;
        if (v14 + 1 > 0x666666666666666)
        {
          sub_10000509C();
        }

        if (0x999999999999999ALL * ((*(&v56 + 1) - v55) >> 3) > v15)
        {
          v15 = 0x999999999999999ALL * ((*(&v56 + 1) - v55) >> 3);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((*(&v56 + 1) - v55) >> 3) >= 0x333333333333333)
        {
          v16 = 0x666666666666666;
        }

        else
        {
          v16 = v15;
        }

        *&v58[24] = &v55;
        if (v16)
        {
          sub_1000135A8(&v55, v16);
        }

        v17 = 40 * v14;
        *buf = 0;
        *v58 = v17;
        *&v58[8] = 40 * v14;
        v18 = *v11;
        *(v17 + 8) = *(v11 + 8);
        *v17 = v18;
        if (*(v11 + 39) < 0)
        {
          sub_100004CEC((v17 + 16), *(v11 + 16), *(v11 + 24));
          v17 = *v58;
          v20 = *&v58[8];
        }

        else
        {
          v19 = *(v11 + 16);
          *(40 * v14 + 0x20) = *(v11 + 32);
          *(40 * v14 + 0x10) = v19;
          v20 = 40 * v14;
        }

        *&v58[8] = v20 + 40;
        v21 = (v55 + v17 - v56);
        sub_100013600(&v55, v55, v56, v21);
        v22 = v55;
        v23 = *(&v56 + 1);
        v55 = v21;
        v54 = *&v58[8];
        v56 = *&v58[8];
        *&v58[8] = v22;
        *&v58[16] = v23;
        *buf = v22;
        *v58 = v22;
        sub_100010D68(buf);
        v10 = v54;
      }

      else
      {
        sub_1000131C0(&v55, v11);
        v10 += 40;
      }

      *&v56 = v10;
    }

    v11 += 40;
  }

  while (v11 != v12);
  v8 = &SALogObjectGeneral;
  v24 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v25 = -858993459 * ((*(a1 + 40) - *(a1 + 32)) >> 3);
    *buf = 68289539;
    *&buf[4] = 0;
    *v58 = 2082;
    *&v58[2] = "";
    *&v58[10] = 1025;
    *&v58[12] = -858993459 * ((v10 - v55) >> 3);
    *&v58[16] = 1025;
    *&v58[18] = v25;
    v26 = "{msg%{public}.0s:#saEventHistory,findAllEventsStrictlyWithin, responseSize:%{private}d, fEventHistorySize:%{private}d}";
    v27 = v24;
    v28 = 30;
LABEL_31:
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
  }

LABEL_32:
  sub_100011208(&v72);
  v31 = v56;
  if (v55 != v56)
  {
    v52 = 0;
    v53 = 0;
    v32 = v55 + 2;
    while (1)
    {
      v34 = v32 - 2;
      v33 = *(v32 - 2);
      *v58 = *(v32 - 2);
      *buf = v33;
      if (*(v32 + 23) < 0)
      {
        sub_100004CEC(&v58[8], *v32, v32[1]);
      }

      else
      {
        v35 = *v32;
        *&v58[24] = v32[2];
        *&v58[8] = v35;
      }

      if (*v58 != a2)
      {
        goto LABEL_53;
      }

      v36 = SACommonUtils::convertStringToDictionary(&v58[8]);
      v37 = v36;
      if (!v36 || ([v36 objectForKey:@"status"], v38 = objc_claimAutoreleasedReturnValue(), v39 = v38 == 0, v38, v39))
      {
        v42 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
        {
          v72 = 68289026;
          v73 = 2082;
          v74 = "";
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#nam,submitMetricInternal,activity status does not exist}", &v72, 0x12u);
        }

        goto LABEL_52;
      }

      v40 = [v37 objectForKey:@"status"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v41 = [v40 intValue];
      if (!v41)
      {
        ++v52;
        goto LABEL_51;
      }

      if (v41 == 1)
      {
        LODWORD(v53) = v53 + 1;
        goto LABEL_51;
      }

      if (v41 != 2)
      {
        v43 = v8;
        v48 = *v8;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v72 = 68289026;
          v73 = 2082;
          v74 = "";
          v45 = v48;
          v46 = OS_LOG_TYPE_DEFAULT;
          v47 = "{msg%{public}.0s:#nam,submitMetricInternal,#warning,activity not supported}";
LABEL_49:
          _os_log_impl(&_mh_execute_header, v45, v46, v47, &v72, 0x12u);
        }

        goto LABEL_50;
      }

      ++HIDWORD(v53);
LABEL_51:

LABEL_52:
LABEL_53:
      if ((v58[31] & 0x80000000) != 0)
      {
        operator delete(*&v58[8]);
      }

      v32 += 5;
      if (v34 + 5 == v31)
      {
        goto LABEL_62;
      }
    }

    v43 = v8;
    v44 = *v8;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v72 = 68289026;
      v73 = 2082;
      v74 = "";
      v45 = v44;
      v46 = OS_LOG_TYPE_ERROR;
      v47 = "{msg%{public}.0s:#nam,submitMetricInternal,activity status is not a number}";
      goto LABEL_49;
    }

LABEL_50:
    v8 = v43;
    goto LABEL_51;
  }

  v53 = 0;
  v52 = 0;
LABEL_62:
  v49 = vcvtmd_s64_f64(v52 * 100.0 / (v52 + v53));
  v50 = vcvtmd_s64_f64(v53 * 100.0 / (v52 + v53));
  v51 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68291075;
    *&buf[4] = 0;
    *v58 = 2082;
    *&v58[2] = "";
    *&v58[10] = 2049;
    *&v58[12] = a3;
    *&v58[20] = 2049;
    *&v58[22] = a4;
    *&v58[30] = 1025;
    v59 = a2;
    v60 = 1025;
    v61 = v52 + v53 + HIDWORD(v53);
    v62 = 1025;
    v63 = v52 + v53;
    v64 = 1025;
    v65 = v49;
    v66 = 1025;
    v67 = v50;
    v68 = 1025;
    v69 = HIDWORD(v53);
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#nam,submitMetricInternal, startTimeSeconds:%{private}0.1f, endTimeSeconds:%{private}0.1f, networkActivityType:%{private}d, totalCount:%{private}d, totalAttemptedActicityCount:%{private}d, successRate:%{private}d, failureRate:%{private}d, droppedCount:%{private}d}", buf, 0x4Au);
  }

  AnalyticsSendEventLazy();
  *buf = &v55;
  sub_10000DB84(buf);
}

void sub_100050BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  *(v36 - 160) = &a20;
  sub_10000DB84((v36 - 160));
  _Unwind_Resume(a1);
}

id sub_100050C50(unsigned int *a1)
{
  v12[0] = @"networkActivityType";
  v2 = [NSNumber numberWithInt:a1[8]];
  v13[0] = v2;
  v12[1] = @"totalCount";
  v3 = [NSNumber numberWithInt:a1[9]];
  v13[1] = v3;
  v12[2] = @"totalAttemptedActicityCount";
  v4 = [NSNumber numberWithInt:a1[10]];
  v13[2] = v4;
  v12[3] = @"successRate";
  v5 = [NSNumber numberWithInt:a1[11]];
  v13[3] = v5;
  v12[4] = @"failureRate";
  v6 = [NSNumber numberWithInt:a1[12]];
  v13[4] = v6;
  v12[5] = @"activityDroppedCount";
  v7 = [NSNumber numberWithInt:a1[13]];
  v13[5] = v7;
  v12[6] = @"isEnhancedDeliveryEnabled";
  v8 = sub_100002DB0();
  v9 = [NSNumber numberWithBool:*(v8 + 127) & *(v8 + 126) & 1];
  v13[6] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:7];

  return v10;
}

uint64_t sub_100050F08(uint64_t a1, int *a2, uint64_t a3)
{
  std::to_string(&v5, *a2);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v5;
  return 1;
}

uint64_t sub_100050F60(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100051034(uint64_t a1, uint64_t a2, int *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100004CEC(v6, *a2, *(a2 + 8));
  }

  else
  {
    *v6 = *a2;
    v7 = *(a2 + 16);
  }

  if (SHIBYTE(v7) < 0)
  {
    v4 = v6[0];
    *a3 = atoi(v6[0]);
    operator delete(v4);
  }

  else
  {
    *a3 = atoi(v6);
  }

  return 1;
}

uint64_t sub_1000510BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100051178(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013B6D8;
  a2[1] = v2;
  return result;
}

void sub_1000511A4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,init,load}", v3, 0x12u);
    }

    sub_1000126B0(v1);
    *(v1 + 8) = 1;
  }
}

uint64_t sub_100051274(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100051330(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013B758;
  a2[1] = v2;
  return result;
}

__n128 sub_10005135C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0 && (*(v1 + 193) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 68289026;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,destroy,clear}", v9, 0x12u);
    }

    *(v1 + 8) = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v1 + 16) = _Q0;
    *(v1 + 160) = 0;
    sub_10000DBD8((v1 + 32));
  }

  return result;
}

uint64_t sub_10005143C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_100051488(double *a1, uint64_t a2)
{
  v3 = *a1;
  __p = 0;
  v16 = 0;
  v17 = 0;
  v4 = *(v3 + 104);
  if (!v4)
  {
    sub_1000053C4();
  }

  (*(*v4 + 48))(v4, a2 + 8, &__p);
  v6 = *a2;
  v7 = a1[1];
  if (*a2 < v7)
  {
    **(a1 + 2) = 1;
  }

  v8 = *(a1 + 4);
  if (*v8 < v6)
  {
    *v8 = v6;
    **(a1 + 3) = *(a2 + 8);
  }

  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v10 = (v3 + 168);
    if (*(v3 + 191) < 0)
    {
      v10 = *v10;
    }

    v11 = *(a1 + 1);
    v12 = *a2;
    if (SHIBYTE(v17) < 0)
    {
      if (v16)
      {
        p_p = __p;
      }

      else
      {
        p_p = "";
      }
    }

    else
    {
      p_p = &__p;
      if (!HIBYTE(v17))
      {
        p_p = "";
      }
    }

    *buf = 68290307;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2081;
    v23 = v10;
    v24 = 2049;
    v25 = v11;
    v26 = 2049;
    v27 = v12;
    v28 = 2081;
    v29 = p_p;
    v30 = 1025;
    v31 = v6 < v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saEventHistory,cleanup, history:%{private, location:escape_only}s, before:%{private}0.1f, ts:%{private}0.1f, value:%{private, location:escape_only}s, remove:%{private}hhd}", buf, 0x40u);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  return v6 < v7;
}

void sub_100051668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000516F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013B7D8;
  a2[1] = v2;
  return result;
}

void sub_100051720(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,init,load}", v3, 0x12u);
    }

    sub_1000126B0(v1);
    *(v1 + 8) = 1;
  }
}

uint64_t sub_1000517F0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000518AC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013B858;
  a2[1] = v2;
  return result;
}

__n128 sub_1000518D8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0 && (*(v1 + 193) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 68289026;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,destroy,clear}", v9, 0x12u);
    }

    *(v1 + 8) = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v1 + 16) = _Q0;
    *(v1 + 160) = 0;
    sub_10000DBD8((v1 + 32));
  }

  return result;
}

uint64_t sub_1000519B8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100051A04(uint64_t a1)
{
  v2 = sub_10000F2F4(a1);
  sub_10000F2F4(v2 + 200);
  sub_10000F2F4(a1 + 400);
  sub_10000F2F4(a1 + 600);
  sub_100056C0C(a1 + 800);
  sub_100056C0C(a1 + 1000);
  sub_1000247C0(a1 + 1200);
  sub_1000247C0(a1 + 1400);
  sub_1000247C0(a1 + 1600);
  sub_1000247C0(a1 + 1800);
  *(a1 + 2000) = 0;
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    buf.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,initialized}", &buf, 0x12u);
  }

  sub_10000F2F4(&buf);
  v4 = buf.__r_.__value_.__r.__words[0];
  buf.__r_.__value_.__r.__words[0] = 0;
  v5 = *a1;
  *a1 = v4;

  v7 = (a1 + 32);
  v6 = *(a1 + 32);
  *(a1 + 8) = *&buf.__r_.__value_.__r.__words[1];
  *(a1 + 24) = v67;
  if (v6)
  {
    sub_10000DBD8((a1 + 32));
    operator delete(*v7);
    *v7 = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  *(a1 + 32) = v68;
  *(a1 + 48) = v69;
  v69 = 0;
  v68 = 0uLL;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *(a1 + 56) = __p;
  *(a1 + 72) = v71;
  HIBYTE(v71) = 0;
  v9 = (a1 + 104);
  v8 = *(a1 + 104);
  LOBYTE(__p) = 0;
  *(a1 + 104) = 0;
  if (v8 == a1 + 80)
  {
    (*(*v8 + 32))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 40))(v8);
  }

  v10 = v73;
  if (!v73)
  {
    goto LABEL_14;
  }

  if (v73 != v72)
  {
    *v9 = v73;
    v9 = &v73;
LABEL_14:
    *v9 = 0;
    goto LABEL_16;
  }

  *v9 = a1 + 80;
  (*(*v10 + 24))(v10, a1 + 80);
LABEL_16:
  v12 = (a1 + 136);
  v11 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v11 == a1 + 112)
  {
    (*(*v11 + 32))(v11);
  }

  else if (v11)
  {
    (*(*v11 + 40))(v11);
  }

  v13 = v75;
  if (!v75)
  {
    goto LABEL_23;
  }

  if (v75 != v74)
  {
    *v12 = v75;
    v12 = &v75;
LABEL_23:
    *v12 = 0;
    goto LABEL_25;
  }

  *v12 = a1 + 112;
  (*(*v13 + 24))(v13, a1 + 112);
LABEL_25:
  *(a1 + 144) = v76;
  *(a1 + 160) = v77;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 168) = v78;
  *(a1 + 184) = v79;
  HIBYTE(v79) = 0;
  LOBYTE(v78) = 0;
  *(a1 + 192) = v80;
  sub_10000DC28(v74);
  sub_10000DCA8(v72);
  if (SHIBYTE(v71) < 0)
  {
    operator delete(__p);
  }

  v45 = &v68;
  sub_10000DB84(&v45);

  sub_1000060C4(&buf, "ls");
  std::string::operator=((a1 + 168), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  *(a1 + 9) = 0;
  *(a1 + 144) = 200;
  sub_100053340(&buf, "ls.elog");
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_buf = &buf;
  }

  else
  {
    p_buf = buf.__r_.__value_.__r.__words[0];
  }

  v65[0] = off_10013B8F8;
  v65[3] = v65;
  v64[0] = off_10013B988;
  v64[3] = v64;
  v15 = sub_100052CC8(a1, p_buf, v65, v64);
  sub_10000DC28(v64);
  sub_10000DCA8(v65);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if (v15)
    {
      goto LABEL_41;
    }
  }

  else if (v15)
  {
    goto LABEL_41;
  }

  v16 = SALogObjectGeneral;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    buf.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,#warning,persistentStorageConfigFailed}", &buf, 0x12u);
  }

LABEL_41:
  sub_1000060C4(&buf, "pushp");
  std::string::operator=((a1 + 368), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  *(a1 + 209) = 0;
  *(a1 + 344) = 200;
  sub_100053340(&buf, "pushp.elog");
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &buf;
  }

  else
  {
    v17 = buf.__r_.__value_.__r.__words[0];
  }

  v63[0] = off_10013B8F8;
  v63[3] = v63;
  v62[0] = off_10013B988;
  v62[3] = v62;
  v18 = sub_100052CC8(a1 + 200, v17, v63, v62);
  sub_10000DC28(v62);
  sub_10000DCA8(v63);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if (v18)
    {
      goto LABEL_53;
    }
  }

  else if (v18)
  {
    goto LABEL_53;
  }

  v19 = SALogObjectGeneral;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    buf.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,#warning,persistentStorageConfigFailed}", &buf, 0x12u);
  }

LABEL_53:
  sub_1000060C4(&buf, "sub");
  std::string::operator=((a1 + 568), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  *(a1 + 409) = 0;
  *(a1 + 544) = 200;
  sub_100053340(&buf, "sub.elog");
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &buf;
  }

  else
  {
    v20 = buf.__r_.__value_.__r.__words[0];
  }

  v61[0] = off_10013B8F8;
  v61[3] = v61;
  v60[0] = off_10013B988;
  v60[3] = v60;
  v21 = sub_100052CC8(a1 + 400, v20, v61, v60);
  sub_10000DC28(v60);
  sub_10000DCA8(v61);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if (v21)
    {
      goto LABEL_65;
    }
  }

  else if (v21)
  {
    goto LABEL_65;
  }

  v22 = SALogObjectGeneral;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    buf.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,#warning,persistentStorageConfigFailed}", &buf, 0x12u);
  }

LABEL_65:
  sub_1000060C4(&buf, "wea_received");
  std::string::operator=((a1 + 1568), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  *(a1 + 1409) = 0;
  *(a1 + 1544) = 2000;
  sub_100053340(&buf, "wea_received.elog");
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &buf;
  }

  else
  {
    v23 = buf.__r_.__value_.__r.__words[0];
  }

  v59[0] = off_10013BA18;
  v59[3] = v59;
  v58[0] = off_10013BA18;
  v58[3] = v58;
  v24 = sub_100023C34(a1 + 1400, v23, 0x1388uLL, v59, v58);
  sub_100024884(v58);
  sub_100024884(v59);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if (v24)
    {
      goto LABEL_77;
    }
  }

  else if (v24)
  {
    goto LABEL_77;
  }

  v25 = SALogObjectGeneral;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    buf.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,#warning,persistentStorageConfigFailed}", &buf, 0x12u);
  }

LABEL_77:
  sub_1000060C4(&buf, "wea_displayed");
  std::string::operator=((a1 + 1368), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  *(a1 + 1209) = 0;
  *(a1 + 1344) = 2000;
  sub_100053340(&buf, "wea_displayed.elog");
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &buf;
  }

  else
  {
    v26 = buf.__r_.__value_.__r.__words[0];
  }

  v57[0] = off_10013BA18;
  v57[3] = v57;
  v56[0] = off_10013BA18;
  v56[3] = v56;
  v27 = sub_100023C34(a1 + 1200, v26, 0x1388uLL, v57, v56);
  sub_100024884(v56);
  sub_100024884(v57);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if (v27)
    {
      goto LABEL_89;
    }
  }

  else if (v27)
  {
    goto LABEL_89;
  }

  v28 = SALogObjectGeneral;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    buf.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,#warning,persistentStorageConfigFailed}", &buf, 0x12u);
  }

LABEL_89:
  sub_1000060C4(&buf, "sa");
  std::string::operator=((a1 + 1768), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  *(a1 + 1609) = 0;
  *(a1 + 1744) = 2000;
  sub_100053340(&buf, "sa.elog");
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &buf;
  }

  else
  {
    v29 = buf.__r_.__value_.__r.__words[0];
  }

  v55[0] = off_10013BA18;
  v55[3] = v55;
  v54[0] = off_10013BA18;
  v54[3] = v54;
  v30 = sub_100023C34(a1 + 1600, v29, 0x1388uLL, v55, v54);
  sub_100024884(v54);
  sub_100024884(v55);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if (v30)
    {
      goto LABEL_101;
    }
  }

  else if (v30)
  {
    goto LABEL_101;
  }

  v31 = SALogObjectGeneral;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    buf.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,#warning,persistentStorageConfigFailed}", &buf, 0x12u);
  }

LABEL_101:
  sub_1000060C4(&buf, "ig");
  std::string::operator=((a1 + 1968), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  *(a1 + 1809) = 0;
  *(a1 + 1944) = 2000;
  sub_100053340(&buf, "ig.elog");
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &buf;
  }

  else
  {
    v32 = buf.__r_.__value_.__r.__words[0];
  }

  v53[0] = off_10013BA18;
  v53[3] = v53;
  v52[0] = off_10013BA18;
  v52[3] = v52;
  v33 = sub_100023C34(a1 + 1800, v32, 0xBB8uLL, v53, v52);
  sub_100024884(v52);
  sub_100024884(v53);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if (v33)
    {
      goto LABEL_113;
    }
  }

  else if (v33)
  {
    goto LABEL_113;
  }

  v34 = SALogObjectGeneral;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    buf.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,#warning,persistentStorageConfigFailed}", &buf, 0x12u);
  }

LABEL_113:
  sub_1000060C4(&buf, "ig_sub");
  std::string::operator=((a1 + 768), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  *(a1 + 609) = 0;
  *(a1 + 744) = 200;
  sub_100053340(&buf, "ig_sub.elog");
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = &buf;
  }

  else
  {
    v35 = buf.__r_.__value_.__r.__words[0];
  }

  v51[0] = off_10013B8F8;
  v51[3] = v51;
  v50[0] = off_10013B988;
  v50[3] = v50;
  v36 = sub_100052CC8(a1 + 600, v35, v51, v50);
  sub_10000DC28(v50);
  sub_10000DCA8(v51);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if (v36)
    {
      goto LABEL_125;
    }
  }

  else if (v36)
  {
    goto LABEL_125;
  }

  v37 = SALogObjectGeneral;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    buf.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,#warning,persistentStorageConfigFailed}", &buf, 0x12u);
  }

LABEL_125:
  sub_1000060C4(&buf, "slc");
  std::string::operator=((a1 + 968), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  *(a1 + 809) = 0;
  *(a1 + 944) = 2000;
  sub_100053340(&buf, "slc.elog");
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = &buf;
  }

  else
  {
    v38 = buf.__r_.__value_.__r.__words[0];
  }

  v49[0] = off_10013BA98;
  v49[3] = v49;
  v48[0] = off_10013BB28;
  v48[3] = v48;
  v39 = sub_100053420(a1 + 800, v38, v49, v48);
  sub_100056D50(v48);
  sub_100056CD0(v49);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if (v39)
    {
      goto LABEL_137;
    }
  }

  else if (v39)
  {
    goto LABEL_137;
  }

  v40 = SALogObjectGeneral;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    buf.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,#warning,persistentStorageConfigFailed}", &buf, 0x12u);
  }

LABEL_137:
  sub_1000060C4(&buf, "submission_timestamp");
  std::string::operator=((a1 + 1168), &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  *(a1 + 1009) = 0;
  *(a1 + 1144) = 2000;
  sub_100053340(&buf, "submission_timestamp.elog");
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = &buf;
  }

  else
  {
    v41 = buf.__r_.__value_.__r.__words[0];
  }

  v47[0] = off_10013BA98;
  v47[3] = v47;
  v46[0] = off_10013BB28;
  v46[3] = v46;
  v42 = sub_100053420(a1 + 1000, v41, v47, v46);
  sub_100056D50(v46);
  sub_100056CD0(v47);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if (v42)
    {
      return a1;
    }
  }

  else if (v42)
  {
    return a1;
  }

  v43 = SALogObjectGeneral;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    buf.__r_.__value_.__r.__words[0] = 68289026;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = "";
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,#warning,persistentStorageConfigFailed}", &buf, 0x12u);
  }

  return a1;
}

void sub_100052AA8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10000DB70(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100052CC8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (a2 && *(a3 + 24) && *(a4 + 24))
  {
    sub_1000060C4(v19, a2);
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    *(a1 + 56) = *v19;
    *(a1 + 72) = *&v19[16];
    v7 = *(a3 + 24);
    if (v7)
    {
      if (v7 == a3)
      {
        *&v19[24] = v19;
        (*(*v7 + 24))(v7, v19);
      }

      else
      {
        *&v19[24] = (*(*v7 + 16))(v7);
      }
    }

    else
    {
      *&v19[24] = 0;
    }

    v12 = a1 + 80;
    if (v19 != (a1 + 80))
    {
      v13 = *&v19[24];
      v14 = *(a1 + 104);
      if (*&v19[24] == v19)
      {
        if (v14 == v12)
        {
          (*(**&v19[24] + 24))();
          (*(**&v19[24] + 32))(*&v19[24]);
          *&v19[24] = 0;
          (*(**(a1 + 104) + 24))(*(a1 + 104), v19);
          (*(**(a1 + 104) + 32))(*(a1 + 104));
          *(a1 + 104) = 0;
          *&v19[24] = v19;
          (*(v20[0] + 24))(v20, a1 + 80);
          (*(v20[0] + 32))(v20);
        }

        else
        {
          (*(**&v19[24] + 24))();
          (*(**&v19[24] + 32))(*&v19[24]);
          *&v19[24] = *(a1 + 104);
        }

        *(a1 + 104) = v12;
      }

      else if (v14 == v12)
      {
        (*(*v14 + 24))(*(a1 + 104), v19);
        (*(**(a1 + 104) + 32))(*(a1 + 104));
        *(a1 + 104) = *&v19[24];
        *&v19[24] = v19;
      }

      else
      {
        *&v19[24] = *(a1 + 104);
        *(a1 + 104) = v13;
      }
    }

    sub_10000DCA8(v19);
    v15 = *(a4 + 24);
    if (v15)
    {
      if (v15 == a4)
      {
        *&v19[24] = v19;
        (*(*v15 + 24))(v15, v19);
      }

      else
      {
        *&v19[24] = (*(*v15 + 16))(v15);
      }
    }

    else
    {
      *&v19[24] = 0;
    }

    v16 = a1 + 112;
    if (v19 != (a1 + 112))
    {
      v17 = *&v19[24];
      v18 = *(a1 + 136);
      if (*&v19[24] == v19)
      {
        if (v18 == v16)
        {
          (*(**&v19[24] + 24))();
          (*(**&v19[24] + 32))(*&v19[24]);
          *&v19[24] = 0;
          (*(**(a1 + 136) + 24))(*(a1 + 136), v19);
          (*(**(a1 + 136) + 32))(*(a1 + 136));
          *(a1 + 136) = 0;
          *&v19[24] = v19;
          (*(v20[0] + 24))(v20, a1 + 112);
          (*(v20[0] + 32))(v20);
        }

        else
        {
          (*(**&v19[24] + 24))();
          (*(**&v19[24] + 32))(*&v19[24]);
          *&v19[24] = *(a1 + 136);
        }

        *(a1 + 136) = v16;
      }

      else if (v18 == v16)
      {
        (*(*v18 + 24))(*(a1 + 136), v19);
        (*(**(a1 + 136) + 32))(*(a1 + 136));
        *(a1 + 136) = *&v19[24];
        *&v19[24] = v19;
      }

      else
      {
        *&v19[24] = *(a1 + 136);
        *(a1 + 136) = v17;
      }
    }

    sub_10000DC28(v19);
    *(a1 + 152) = 64;
    return 1;
  }

  else
  {
    v8 = SALogObjectGeneral;
    v9 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v9)
    {
      v11 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v11 = *v11;
      }

      *v19 = 68289283;
      *&v19[8] = 2082;
      *&v19[10] = "";
      *&v19[18] = 2081;
      *&v19[20] = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,invalidArgs, history:%{private, location:escape_only}s}", v19, 0x1Cu);
      return 0;
    }
  }

  return result;
}

void sub_10005332C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10000DB70(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100053340(std::string *a1, char *a2)
{
  sub_1000060C4(&v9, "/var/mobile/Library/com.apple.safetyalerts/");
  sub_1000060C4(__p, a2);
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v9, v4, v5);
  *a1 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1000533EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_100053420(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (a2 && *(a3 + 24) && *(a4 + 24))
  {
    sub_1000060C4(v19, a2);
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    *(a1 + 56) = *v19;
    *(a1 + 72) = *&v19[16];
    v7 = *(a3 + 24);
    if (v7)
    {
      if (v7 == a3)
      {
        *&v19[24] = v19;
        (*(*v7 + 24))(v7, v19);
      }

      else
      {
        *&v19[24] = (*(*v7 + 16))(v7);
      }
    }

    else
    {
      *&v19[24] = 0;
    }

    v12 = a1 + 80;
    if (v19 != (a1 + 80))
    {
      v13 = *&v19[24];
      v14 = *(a1 + 104);
      if (*&v19[24] == v19)
      {
        if (v14 == v12)
        {
          (*(**&v19[24] + 24))();
          (*(**&v19[24] + 32))(*&v19[24]);
          *&v19[24] = 0;
          (*(**(a1 + 104) + 24))(*(a1 + 104), v19);
          (*(**(a1 + 104) + 32))(*(a1 + 104));
          *(a1 + 104) = 0;
          *&v19[24] = v19;
          (*(v20[0] + 24))(v20, a1 + 80);
          (*(v20[0] + 32))(v20);
        }

        else
        {
          (*(**&v19[24] + 24))();
          (*(**&v19[24] + 32))(*&v19[24]);
          *&v19[24] = *(a1 + 104);
        }

        *(a1 + 104) = v12;
      }

      else if (v14 == v12)
      {
        (*(*v14 + 24))(*(a1 + 104), v19);
        (*(**(a1 + 104) + 32))(*(a1 + 104));
        *(a1 + 104) = *&v19[24];
        *&v19[24] = v19;
      }

      else
      {
        *&v19[24] = *(a1 + 104);
        *(a1 + 104) = v13;
      }
    }

    sub_100056CD0(v19);
    v15 = *(a4 + 24);
    if (v15)
    {
      if (v15 == a4)
      {
        *&v19[24] = v19;
        (*(*v15 + 24))(v15, v19);
      }

      else
      {
        *&v19[24] = (*(*v15 + 16))(v15);
      }
    }

    else
    {
      *&v19[24] = 0;
    }

    v16 = a1 + 112;
    if (v19 != (a1 + 112))
    {
      v17 = *&v19[24];
      v18 = *(a1 + 136);
      if (*&v19[24] == v19)
      {
        if (v18 == v16)
        {
          (*(**&v19[24] + 24))();
          (*(**&v19[24] + 32))(*&v19[24]);
          *&v19[24] = 0;
          (*(**(a1 + 136) + 24))(*(a1 + 136), v19);
          (*(**(a1 + 136) + 32))(*(a1 + 136));
          *(a1 + 136) = 0;
          *&v19[24] = v19;
          (*(v20[0] + 24))(v20, a1 + 112);
          (*(v20[0] + 32))(v20);
        }

        else
        {
          (*(**&v19[24] + 24))();
          (*(**&v19[24] + 32))(*&v19[24]);
          *&v19[24] = *(a1 + 136);
        }

        *(a1 + 136) = v16;
      }

      else if (v18 == v16)
      {
        (*(*v18 + 24))(*(a1 + 136), v19);
        (*(**(a1 + 136) + 32))(*(a1 + 136));
        *(a1 + 136) = *&v19[24];
        *&v19[24] = v19;
      }

      else
      {
        *&v19[24] = *(a1 + 136);
        *(a1 + 136) = v17;
      }
    }

    sub_100056D50(v19);
    *(a1 + 152) = 5000;
    return 1;
  }

  else
  {
    v8 = SALogObjectGeneral;
    v9 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v9)
    {
      v11 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v11 = *v11;
      }

      *v19 = 68289283;
      *&v19[8] = 2082;
      *&v19[10] = "";
      *&v19[18] = 2081;
      *&v19[20] = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,invalidArgs, history:%{private, location:escape_only}s}", v19, 0x1Cu);
      return 0;
    }
  }

  return result;
}

void sub_100053A84(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10000DB70(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100053A98(uint64_t a1)
{
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  sub_100056D50(a1 + 112);
  sub_100056CD0(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = (a1 + 32);
  sub_10000DB84(&v3);

  return a1;
}

uint64_t sub_100053B0C(uint64_t a1)
{
  *(a1 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v9 = _Q0;
  *(a1 + 16) = _Q0;
  *(a1 + 160) = 0;
  v7 = (a1 + 32);
  sub_10000DBD8((a1 + 32));
  *(a1 + 208) = 0;
  *(a1 + 216) = v9;
  *(a1 + 360) = 0;
  sub_10000DBD8((a1 + 232));
  *(a1 + 408) = 0;
  *(a1 + 416) = v9;
  *(a1 + 560) = 0;
  sub_10000DBD8((a1 + 432));
  sub_100026A24(a1 + 1200);
  sub_100026A24(a1 + 1400);
  sub_100026A24(a1 + 1600);
  *(a1 + 1008) = 0;
  *(a1 + 1016) = 0xBFF0000000000000;
  *(a1 + 1024) = 0xBFF0000000000000;
  *(a1 + 1160) = 0;
  sub_10000DBD8((a1 + 1032));
  *(a1 + 808) = 0;
  *(a1 + 816) = v9;
  *(a1 + 960) = 0;
  sub_10000DBD8((a1 + 832));
  sub_100026A24(a1 + 1800);
  *(a1 + 608) = 0;
  *(a1 + 616) = 0xBFF0000000000000;
  *(a1 + 624) = 0xBFF0000000000000;
  *(a1 + 760) = 0;
  sub_10000DBD8((a1 + 632));
  if (*(a1 + 1991) < 0)
  {
    operator delete(*(a1 + 1968));
  }

  sub_100024884(a1 + 1912);
  sub_100024884(a1 + 1880);
  if (*(a1 + 1879) < 0)
  {
    operator delete(*(a1 + 1856));
  }

  v10 = (a1 + 1832);
  sub_1000246A0(&v10);

  if (*(a1 + 1791) < 0)
  {
    operator delete(*(a1 + 1768));
  }

  sub_100024884(a1 + 1712);
  sub_100024884(a1 + 1680);
  if (*(a1 + 1679) < 0)
  {
    operator delete(*(a1 + 1656));
  }

  v10 = (a1 + 1632);
  sub_1000246A0(&v10);

  if (*(a1 + 1591) < 0)
  {
    operator delete(*(a1 + 1568));
  }

  sub_100024884(a1 + 1512);
  sub_100024884(a1 + 1480);
  if (*(a1 + 1479) < 0)
  {
    operator delete(*(a1 + 1456));
  }

  v10 = (a1 + 1432);
  sub_1000246A0(&v10);

  if (*(a1 + 1391) < 0)
  {
    operator delete(*(a1 + 1368));
  }

  sub_100024884(a1 + 1312);
  sub_100024884(a1 + 1280);
  if (*(a1 + 1279) < 0)
  {
    operator delete(*(a1 + 1256));
  }

  v10 = (a1 + 1232);
  sub_1000246A0(&v10);

  if (*(a1 + 1191) < 0)
  {
    operator delete(*(a1 + 1168));
  }

  sub_100056D50(a1 + 1112);
  sub_100056CD0(a1 + 1080);
  if (*(a1 + 1079) < 0)
  {
    operator delete(*(a1 + 1056));
  }

  v10 = (a1 + 1032);
  sub_10000DB84(&v10);

  if (*(a1 + 991) < 0)
  {
    operator delete(*(a1 + 968));
  }

  sub_100056D50(a1 + 912);
  sub_100056CD0(a1 + 880);
  if (*(a1 + 879) < 0)
  {
    operator delete(*(a1 + 856));
  }

  v10 = (a1 + 832);
  sub_10000DB84(&v10);

  if (*(a1 + 791) < 0)
  {
    operator delete(*(a1 + 768));
  }

  sub_10000DC28(a1 + 712);
  sub_10000DCA8(a1 + 680);
  if (*(a1 + 679) < 0)
  {
    operator delete(*(a1 + 656));
  }

  v10 = (a1 + 632);
  sub_10000DB84(&v10);

  if (*(a1 + 591) < 0)
  {
    operator delete(*(a1 + 568));
  }

  sub_10000DC28(a1 + 512);
  sub_10000DCA8(a1 + 480);
  if (*(a1 + 479) < 0)
  {
    operator delete(*(a1 + 456));
  }

  v10 = (a1 + 432);
  sub_10000DB84(&v10);

  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  sub_10000DC28(a1 + 312);
  sub_10000DCA8(a1 + 280);
  if (*(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  v10 = (a1 + 232);
  sub_10000DB84(&v10);

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  sub_10000DC28(a1 + 112);
  sub_10000DCA8(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v10 = v7;
  sub_10000DB84(&v10);

  return a1;
}

void sub_100053ED8(uint64_t a1, int a2)
{
  if (*(a1 + 2001) == 1 && *(a1 + 2000) == a2)
  {
    v4 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      v9 = 2082;
      *__p = "";
      *&__p[8] = 1025;
      *&__p[10] = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,updateLsStatusNoChange, status:%{private}hhd}", buf, 0x18u);
    }
  }

  else
  {
    *(a1 + 2000) = a2 | 0x100;
    Current = CFAbsoluteTimeGetCurrent();
    sub_1000060C4(v6, "{}");
    *buf = Current;
    LOBYTE(v9) = a2;
    if (SHIBYTE(v7) < 0)
    {
      sub_100004CEC(&__p[6], v6[0], v6[1]);
    }

    else
    {
      *&__p[6] = *v6;
      v11 = v7;
    }

    sub_10000972C(a1, buf);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(*&__p[6]);
    }

    if (SHIBYTE(v7) < 0)
    {
      operator delete(v6[0]);
    }
  }
}

void sub_100054044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100054080(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a2;
  sub_1000060C4(v5, "{}");
  *v7 = v4;
  v7[1] = v3;
  if (SHIBYTE(v6) < 0)
  {
    sub_100004CEC(&__p, v5[0], v5[1]);
  }

  else
  {
    __p = *v5;
    v9 = v6;
  }

  sub_10005415C(a1 + 800, v7);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_100054128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10005415C(uint64_t a1, unint64_t a2)
{
  v21[0] = off_10013BBB8;
  v21[1] = a1;
  v21[3] = v21;
  v20[0] = off_10013BC38;
  v20[1] = a1;
  v20[3] = v20;
  sub_1000104CC(v22, v21, v20);
  sub_10000F274(v20);
  sub_10000F274(v21);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v5 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v5 = *v5;
    }

    v6 = (a1 + 168);
    if (*(a1 + 191) < 0)
    {
      v6 = *v6;
    }

    v13[0] = 68289539;
    v13[1] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2081;
    v17 = v5;
    v18 = 2081;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saEventHistory,update, filePath:%{private, location:escape_only}s, debugName:%{private, location:escape_only}s}", v13, 0x26u);
  }

  sub_10005745C(a1, a2);
  if ((*(a1 + 79) & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 79))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (*(a1 + 64))
  {
LABEL_11:
    sub_100057A10(a1);
  }

LABEL_12:
  if ((*(a1 + 9) & 1) == 0 && (*(a1 + 193) & 1) == 0)
  {
    *(a1 + 8) = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(a1 + 16) = _Q0;
    *(a1 + 160) = 0;
    sub_10000DBD8((a1 + 32));
  }

  return sub_100011208(v22);
}

void sub_100054318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_10000F274(va);
  sub_10000F274(va1);
  _Unwind_Resume(a1);
}

void sub_100054344(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a2;
  sub_1000060C4(v5, "{}");
  *v7 = v4;
  v7[1] = v3;
  if (SHIBYTE(v6) < 0)
  {
    sub_100004CEC(&__p, v5[0], v5[1]);
  }

  else
  {
    __p = *v5;
    v9 = v6;
  }

  sub_10005415C(a1 + 1000, v7);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_1000543EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100054420(uint64_t a1, int a2)
{
  if (*(a1 + 2003) == 1 && *(a1 + 2002) == a2)
  {
    v4 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      v9 = 2082;
      *__p = "";
      *&__p[8] = 1025;
      *&__p[10] = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,updatePushParticipationStatusNoChange, status:%{private}hhd}", buf, 0x18u);
    }
  }

  else
  {
    *(a1 + 2002) = a2 | 0x100;
    Current = CFAbsoluteTimeGetCurrent();
    sub_1000060C4(v6, "{}");
    *buf = Current;
    LOBYTE(v9) = a2;
    if (SHIBYTE(v7) < 0)
    {
      sub_100004CEC(&__p[6], v6[0], v6[1]);
    }

    else
    {
      *&__p[6] = *v6;
      v11 = v7;
    }

    sub_10000972C(a1 + 200, buf);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(*&__p[6]);
    }

    if (SHIBYTE(v7) < 0)
    {
      operator delete(v6[0]);
    }
  }
}

void sub_10005458C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000545C8(uint64_t a1, int a2)
{
  if (*(a1 + 2007) == 1 && *(a1 + 2006) == a2)
  {
    v4 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      v10 = 2082;
      *__p = "";
      *&__p[8] = 1025;
      *&__p[10] = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,updateIgneousSubscription,no change, status:%{private}hhd}", buf, 0x18u);
    }
  }

  else
  {
    *(a1 + 2006) = a2 | 0x100;
    v5 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      v10 = 2082;
      *__p = "";
      *&__p[8] = 1025;
      *&__p[10] = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,updateIgneousSubscription, status:%{private}hhd}", buf, 0x18u);
    }

    Current = CFAbsoluteTimeGetCurrent();
    sub_1000060C4(v7, "{}");
    *buf = Current;
    LOBYTE(v10) = a2;
    if (SHIBYTE(v8) < 0)
    {
      sub_100004CEC(&__p[6], v7[0], v7[1]);
    }

    else
    {
      *&__p[6] = *v7;
      v12 = v8;
    }

    sub_10000972C(a1 + 600, buf);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(*&__p[6]);
    }

    if (SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }
}

void sub_1000547AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000547E8(uint64_t a1, int a2)
{
  if (*(a1 + 2005) == 1 && *(a1 + 2004) == a2)
  {
    v4 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      v10 = 2082;
      *__p = "";
      *&__p[8] = 1025;
      *&__p[10] = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,updateSubscriptionStatusNoChange, status:%{private}hhd}", buf, 0x18u);
    }
  }

  else
  {
    *(a1 + 2004) = a2 | 0x100;
    v5 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      v10 = 2082;
      *__p = "";
      *&__p[8] = 1025;
      *&__p[10] = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,updateSubscription, status:%{private}hhd}", buf, 0x18u);
    }

    Current = CFAbsoluteTimeGetCurrent();
    sub_1000060C4(v7, "{}");
    *buf = Current;
    LOBYTE(v10) = a2;
    if (SHIBYTE(v8) < 0)
    {
      sub_100004CEC(&__p[6], v7[0], v7[1]);
    }

    else
    {
      *&__p[6] = *v7;
      v12 = v8;
    }

    sub_10000972C(a1 + 400, buf);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(*&__p[6]);
    }

    if (SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }
}

void sub_1000549CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100054A08(uint64_t a1, char *a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (a2[23] >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    *&buf = 68289283;
    *v12 = 2082;
    *&v12[2] = "";
    v13 = 2081;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,updateWeaDisplayed, weaText:%{private, location:escape_only}s}", &buf, 0x1Cu);
  }

  Current = CFAbsoluteTimeGetCurrent();
  SACommonUtils::getHashForString(v9, a2);
  sub_1000060C4(v7, "{}");
  sub_100026200(&buf, v9, v7, Current);
  sub_10002BA64(a1 + 1200, &buf);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(*v12);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_100054B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  sub_10002477C(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_100054BC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 enumerateKeysAndObjectsUsingBlock:&stru_10013B8C8];
    v5 = [v4 objectForKey:@"Body"];
    v6 = v5;
    if (v5)
    {
      sub_1000060C4(&__p, [v5 UTF8String]);
      SACommonUtils::getHashForString(v14, &__p);
      if (v18 < 0)
      {
        operator delete(__p);
      }

      Current = CFAbsoluteTimeGetCurrent();
      SACommonUtils::convertDictionaryToString(v12, v4);
      if (SHIBYTE(v15) < 0)
      {
        sub_100004CEC(v10, v14[0], v14[1]);
      }

      else
      {
        *v10 = *v14;
        v11 = v15;
      }

      sub_100026200(&__p, v10, v12, Current);
      sub_10002BA64(a1 + 1400, &__p);
      if (v21 < 0)
      {
        operator delete(v20);
      }

      if (v19 < 0)
      {
        operator delete(*v17);
      }

      if (SHIBYTE(v11) < 0)
      {
        operator delete(v10[0]);
      }

      if (v13 < 0)
      {
        operator delete(v12[0]);
      }

      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }
    }

    else
    {
      v9 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        __p = 68289026;
        *v17 = 2082;
        *&v17[2] = "";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,updateWeaReceived,unable to read message id,ignoring.}", &__p, 0x12u);
      }
    }
  }

  else
  {
    v8 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      __p = 68289026;
      *v17 = 2082;
      *&v17[2] = "";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,updateWeaReceived,alert does not have any info,ignoring.}", &__p, 0x12u);
    }
  }
}

void sub_100054E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void sub_100054EAC(id a1, id a2, id a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 68289539;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2113;
    v12 = v5;
    v13 = 2113;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,updateWeaReceived, key:%{private, location:escape_only}@, value:%{private, location:escape_only}@}", v8, 0x26u);
  }
}

void sub_100054F98(uint64_t a1, void **a2, void *a3)
{
  v5 = a3;
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    *&buf = 68289283;
    *v14 = 2082;
    *&v14[2] = "";
    v15 = 2081;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,updateSaReceived, uid:%{private, location:escape_only}s}", &buf, 0x1Cu);
  }

  Current = CFAbsoluteTimeGetCurrent();
  SACommonUtils::convertDictionaryToString(v11, v5);
  if (*(a2 + 23) < 0)
  {
    sub_100004CEC(v9, *a2, a2[1]);
  }

  else
  {
    *v9 = *a2;
    v10 = a2[2];
  }

  sub_100026200(&buf, v9, v11, Current);
  sub_10002BA64(a1 + 1600, &buf);
  if (v19 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(*v14);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }
}

void sub_100055128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100055184(uint64_t a1, double a2, double a3)
{
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  sub_10000B47C(a1 + 400, &v11, a2, a3);
  v5 = sub_10006709C(&v11);
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_100067114(v5, __p);
    if (v10 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 68289795;
    v14 = 2082;
    v15 = "";
    v16 = 2049;
    v17 = a2;
    v18 = 2049;
    v19 = a3;
    v20 = 2081;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,wasSubscribedWithinWindow, startTsSeconds:%{private}0.1f, endTsSeconds:%{private}0.1f, result:%{private, location:escape_only}s}", buf, 0x30u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100015A38(&v11, v12[0]);
  return v5;
}

uint64_t sub_100055308(uint64_t a1, double a2, double a3)
{
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  sub_10000B47C(a1 + 600, &v11, a2, a3);
  v5 = sub_10006709C(&v11);
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_100067114(v5, __p);
    if (v10 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 68289795;
    v14 = 2082;
    v15 = "";
    v16 = 2049;
    v17 = a2;
    v18 = 2049;
    v19 = a3;
    v20 = 2081;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,wasIgneousSubscribedWithinWindow, startTsSeconds:%{private}0.1f, endTsSeconds:%{private}0.1f, result:%{private, location:escape_only}s}", buf, 0x30u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100015A38(&v11, v12[0]);
  return v5;
}

uint64_t sub_10005548C(uint64_t a1, double a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    LOWORD(v17) = 2082;
    *(&v17 + 2) = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,deleteOldAlerts}", buf, 0x12u);
  }

  sub_10002E71C(a1 + 1200, 1, a2);
  sub_10002E71C(a1 + 1400, 1, a2);
  sub_10002E71C(a1 + 1600, 1, a2);
  sub_10002E71C(a1 + 1800, 1, a2);
  v21[0] = off_10013BCB8;
  v21[1] = a1 + 1000;
  v21[3] = v21;
  v20[0] = off_10013BD38;
  v20[1] = a1 + 1000;
  v20[3] = v20;
  sub_1000104CC(v22, v21, v20);
  sub_10000F274(v20);
  sub_10000F274(v21);
  v15 = 0;
  v13 = 0xBFF0000000000000;
  v14 = 0;
  v5 = *(a1 + 1032);
  v6 = *(a1 + 1040);
  *buf = a1 + 1000;
  *&v17 = a2;
  *(&v17 + 1) = &v15;
  v18 = &v14;
  v19 = &v13;
  if (v5 != v6)
  {
    while (!sub_100058F8C(buf, v5))
    {
      v5 += 40;
      if (v5 == v6)
      {
        v5 = v6;
        goto LABEL_15;
      }
    }

    if (v5 != v6)
    {
      for (i = v5 + 40; i != v6; i += 40)
      {
        if (!sub_100058F8C(buf, i))
        {
          *v5 = *i;
          if (*(v5 + 39) < 0)
          {
            operator delete(*(v5 + 16));
          }

          v8 = *(i + 16);
          *(v5 + 32) = *(i + 32);
          *(v5 + 16) = v8;
          *(i + 39) = 0;
          *(i + 16) = 0;
          v5 += 40;
        }
      }
    }
  }

LABEL_15:
  v9 = *(a1 + 1040);
  if (v5 != v9)
  {
    v10 = sub_100058648(v9, *(a1 + 1040), v5);
    for (j = *(a1 + 1040); j != v10; j -= 40)
    {
      if (*(j - 1) < 0)
      {
        operator delete(*(j - 24));
      }
    }

    *(a1 + 1040) = v10;
  }

  if (v15 == 1)
  {
    if ((*(a1 + 1079) & 0x8000000000000000) == 0)
    {
      if (!*(a1 + 1079))
      {
        return sub_100011208(v22);
      }

      goto LABEL_26;
    }

    if (*(a1 + 1064))
    {
LABEL_26:
      sub_100057A10((a1 + 1000));
    }
  }

  return sub_100011208(v22);
}

uint64_t sub_100055780(uint64_t a1, double a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,deleteOldStates}", v6, 0x12u);
  }

  sub_100059188(a1, a2);
  sub_100059188(a1 + 200, a2);
  sub_100059188(a1 + 400, a2);
  return sub_100059188(a1 + 600, a2);
}

uint64_t sub_100055874(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v23[0] = off_10013BEB8;
  v23[1] = a1;
  v23[3] = v23;
  v22[0] = off_10013BF38;
  v22[1] = a1;
  v22[3] = v22;
  sub_1000104CC(v24, v23, v22);
  sub_10000F274(v22);
  sub_10000F274(v23);
  sub_100015A38(a2, *(a2 + 8));
  *a2 = a2 + 8;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  if (*(a1 + 16) <= a3)
  {
    if (*(a1 + 32) == *(a1 + 40) || (*(a1 + 8) & 1) == 0)
    {
      v8 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v15 = (a1 + 168);
        if (*(a1 + 191) < 0)
        {
          v15 = *v15;
        }

        v17 = 68289283;
        v18 = 2082;
        v19 = "";
        v20 = 2081;
        v21 = v15;
        v10 = "{msg%{public}.0s:#saEventHistory,#warning,findAllValuesWithin,skipping,notReady, history:%{private, location:escape_only}s}";
        goto LABEL_22;
      }
    }

    else
    {
      v17 = sub_100055D50(a1, a3);
      LOBYTE(v18) = v11;
      if (v11)
      {
        sub_100059ED4(a2, &v17, &v17);
      }

      v13 = *(a1 + 32);
      v12 = *(a1 + 40);
      while (v13 != v12)
      {
        if (*v13 >= a3 && *v13 <= a4)
        {
          sub_100059ED4(a2, (v13 + 8), (v13 + 8));
        }

        v13 += 40;
      }
    }
  }

  else
  {
    v8 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v9 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v9 = *v9;
      }

      v17 = 68289283;
      v18 = 2082;
      v19 = "";
      v20 = 2081;
      v21 = v9;
      v10 = "{msg%{public}.0s:#saEventHistory,#warning,findAllValuesWithin,outOfRangeArgs, history:%{private, location:escape_only}s}";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, &v17, 0x1Cu);
    }
  }

  return sub_100011208(v24);
}

uint64_t sub_100055B0C(uint64_t a1, uint64_t a2, void *a3, std::string *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100004CEC(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v8 = sub_100023EF4(a1 + 1400, __p, a3, a4);
  v9 = v8;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      return 1;
    }
  }

  else if (v8)
  {
    return 1;
  }

  if (*(a2 + 23) < 0)
  {
    sub_100004CEC(v12, *a2, *(a2 + 8));
  }

  else
  {
    *v12 = *a2;
    v13 = *(a2 + 16);
  }

  v10 = sub_100023EF4(a1 + 1200, v12, a3, a4);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  return v10;
}

void sub_100055C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100055C38(uint64_t a1, double a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = sub_100055D50(a1 + 1000, Current);
  if ((v6 & 1) == 0)
  {
    return 1;
  }

  v7 = vcvtmd_s64_f64(Current / a2);
  v8 = vcvtmd_s64_f64(v5 / a2);
  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 68289539;
    v11[1] = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2049;
    v15 = v7;
    v16 = 2049;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,isLastSubmissionOlderThanRollingPeriod, currentRollingPeriod:%{private}lld, prevRollingPeriod:%{private}lld}", v11, 0x26u);
  }

  return v7 > v8;
}

unint64_t sub_100055D50(uint64_t a1, double a2)
{
  v26[0] = off_10013BFB8;
  v26[1] = a1;
  v26[3] = v26;
  v25[0] = off_10013C038;
  v25[1] = a1;
  v25[3] = v25;
  sub_1000104CC(v27, v26, v25);
  sub_10000F274(v25);
  sub_10000F274(v26);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v5 = *v5;
    }

    v6 = (a1 + 168);
    if (*(a1 + 191) < 0)
    {
      v6 = *v6;
    }

    v17 = 68289539;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2081;
    v22 = v5;
    v23 = 2081;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,findLatestValueBefore, filePath:%{private, location:escape_only}s, debugName:%{private, location:escape_only}s}", &v17, 0x26u);
  }

  if (*(a1 + 16) > a2)
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v8 = *v8;
      }

      v17 = 68289283;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2081;
      v22 = v8;
      v9 = "{msg%{public}.0s:#saEventHistory,#warning,findLatestValueBefore,InvalidArgs, history:%{private, location:escape_only}s}";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, &v17, 0x1Cu);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  if (v11 == v10 || (*(a1 + 8) & 1) == 0)
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v14 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v14 = *v14;
      }

      v17 = 68289283;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2081;
      v22 = v14;
      v9 = "{msg%{public}.0s:#saEventHistory,#warning,findLatestValueBefore,skipping,notReady, history:%{private, location:escape_only}s}";
      goto LABEL_21;
    }

LABEL_22:
    LOBYTE(v13) = 0;
    v15 = 0;
    goto LABEL_23;
  }

  while (v10 != v11)
  {
    v12 = *(v10 - 40);
    v10 -= 40;
    if (v12 <= a2)
    {
      v13 = *(v10 + 8);
      goto LABEL_25;
    }
  }

  v13 = *(v11 + 8);
LABEL_25:
  v15 = v13 & 0xFFFFFFFFFFFFFF00;
LABEL_23:
  sub_100011208(v27);
  return v15 | v13;
}

void sub_10005600C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_10000F274(va);
  sub_10000F274(va1);
  _Unwind_Resume(a1);
}

void sub_100056028(_BYTE *a1)
{
  sub_1000560A0(a1);
  sub_1000560A0(a1 + 200);
  sub_1000560A0(a1 + 400);
  sub_100023D90(a1 + 1400);
  sub_100023D90(a1 + 1200);
  sub_100023D90(a1 + 1600);
  sub_100023D90(a1 + 1800);
  sub_1000560A0(a1 + 600);
  sub_100056204(a1 + 800);

  sub_100056204(a1 + 1000);
}

void sub_1000560A0(_BYTE *a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1 + 168;
    if (a1[191] < 0)
    {
      v3 = *v3;
    }

    v5 = 68289283;
    v6 = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2081;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,onFirstUnlock, history:%{private, location:escape_only}s}", &v5, 0x1Cu);
  }

  if (a1[192] == 1)
  {
    v4 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 68289026;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,onFirstUnlock,skip}", &v5, 0x12u);
    }
  }

  else
  {
    a1[192] = 1;
    if (a1[9] == 1)
    {
      sub_10000FBBC(a1);
    }
  }
}

void sub_100056204(_BYTE *a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1 + 168;
    if (a1[191] < 0)
    {
      v3 = *v3;
    }

    v5 = 68289283;
    v6 = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2081;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,onFirstUnlock, history:%{private, location:escape_only}s}", &v5, 0x1Cu);
  }

  if (a1[192] == 1)
  {
    v4 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 68289026;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,onFirstUnlock,skip}", &v5, 0x12u);
    }
  }

  else
  {
    a1[192] = 1;
    if (a1[9] == 1)
    {
      sub_100057D50(a1);
    }
  }
}

void sub_100056368(uint64_t a1, uint64_t a2)
{
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a2 + 152);
    if (*(a2 + 175) < 0)
    {
      v4 = *(a2 + 152);
    }

    *&buf = 68289283;
    *v37 = 2082;
    *&v37[2] = "";
    v38 = 2081;
    v39 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,onIgneousReceived, bleUid:%{private, location:escape_only}s}", &buf, 0x1Cu);
  }

  v5 = mach_continuous_time();
  v6 = sub_1000B1880(v5);
  v7 = *(sub_100002DB0() + 23);
  if (fmin(v6, v7) < 0.0)
  {
    v8 = 4294966296;
  }

  else
  {
    v8 = ((v6 - v7) * 1000.0);
  }

  if (*(a2 + 384) == 2)
  {
    v9 = ((CFAbsoluteTimeGetCurrent() - *(a2 + 320)) * 1000.0);
  }

  else
  {
    v9 = 0xFFFFFFFFLL;
  }

  v43[0] = @"0";
  v31 = [NSNumber numberWithInt:v9];
  v44[0] = v31;
  v43[1] = @"1";
  v30 = [NSNumber numberWithInt:*(a2 + 176)];
  v44[1] = v30;
  v43[2] = @"2";
  v28 = [NSNumber numberWithInt:*(sub_100002DB0() + 20)];
  v44[2] = v28;
  v43[3] = @"3";
  v29 = [NSNumber numberWithInt:*(a2 + 316)];
  v44[3] = v29;
  v43[4] = @"4";
  v10 = [NSNumber numberWithInt:*(a2 + 352)];
  v44[4] = v10;
  v43[5] = @"5";
  v11 = sub_100002DB0();
  if (*(v11 + 121))
  {
    v12 = *(v11 + 120);
  }

  else
  {
    v12 = 0;
  }

  v13 = [NSNumber numberWithInt:v12];
  v44[5] = v13;
  v43[6] = @"6";
  v14 = sub_100002DB0();
  if (*(v14 + 141))
  {
    v15 = *(v14 + 140);
  }

  else
  {
    v15 = 0;
  }

  v16 = [NSNumber numberWithInt:v15];
  v44[6] = v16;
  v43[7] = @"7";
  v17 = sub_100002DB0();
  if (*(v17 + 143))
  {
    v18 = *(v17 + 142) ^ 1u;
  }

  else
  {
    v18 = 1;
  }

  v19 = [NSNumber numberWithInt:v18];
  v44[7] = v19;
  v43[8] = @"8";
  v20 = [NSNumber numberWithDouble:*(a2 + 264)];
  v44[8] = v20;
  v43[9] = @"9";
  v21 = [NSNumber numberWithInt:*(sub_100002DB0() + 12)];
  v44[9] = v21;
  v43[10] = @"a";
  v22 = [NSNumber numberWithInt:v8];
  v44[10] = v22;
  v43[11] = @"b";
  v23 = [NSNumber numberWithInt:*(a2 + 384)];
  v44[11] = v23;
  v24 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:12];

  v25 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *&buf = 68289283;
    *v37 = 2082;
    *&v37[2] = "";
    v38 = 2113;
    v39 = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,onIgneousReceived, metaDataDict:%{private, location:escape_only}@}", &buf, 0x1Cu);
  }

  Current = CFAbsoluteTimeGetCurrent();
  SACommonUtils::convertDictionaryToString(v34, v24);
  if (*(a2 + 175) < 0)
  {
    sub_100004CEC(__dst, *(a2 + 152), *(a2 + 160));
  }

  else
  {
    *__dst = *(a2 + 152);
    v33 = *(a2 + 168);
  }

  sub_100026200(&buf, __dst, v34, Current);
  sub_10002BA64(a1 + 1800, &buf);
  if (v42 < 0)
  {
    operator delete(__p);
  }

  if (v40 < 0)
  {
    operator delete(*v37);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }
}

void sub_100056848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100056940(uint64_t a1, const void **a2, uint64_t *a3, double a4, double a5)
{
  v10 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v28 = 2082;
    v29 = "";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,getIgneousEvents}", buf, 0x12u);
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  sub_10002BE58((a1 + 1800), &v24, a4, a5);
  v12 = *a3;
  for (i = a3[1]; i != v12; sub_100024724(i))
  {
    i -= 56;
  }

  a3[1] = v12;
  v13 = v24;
  v14 = v25;
  while (v13 != v14)
  {
    v15 = *(v13 + 31);
    if (v15 >= 0)
    {
      v16 = *(v13 + 31);
    }

    else
    {
      v16 = *(v13 + 16);
    }

    v17 = *(a2 + 23);
    v18 = v17;
    if (v17 < 0)
    {
      v17 = a2[1];
    }

    if (v16 == v17)
    {
      if (v15 >= 0)
      {
        v19 = (v13 + 8);
      }

      else
      {
        v19 = *(v13 + 8);
      }

      if (v18 >= 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a2;
      }

      if (!memcmp(v19, v20, v16))
      {
        sub_100056BAC(a3, v13);
      }
    }

    v13 += 56;
  }

  v21 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    v23 = -1227133513 * ((a3[1] - *a3) >> 3);
    *buf = 68290051;
    v28 = 2082;
    v29 = "";
    v30 = 2081;
    v31 = v22;
    v32 = 2049;
    v33 = a4;
    v34 = 2049;
    v35 = a5;
    v36 = 1025;
    v37 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#evtTrk,getIgneousEvents, bleAlertUID:%{private, location:escape_only}s, startTimestamp:%{private}0.1f, endTimestamp:%{private}0.1f, responseCount:%{private}d}", buf, 0x36u);
  }

  *buf = &v24;
  sub_1000246A0(buf);
}

void sub_100056B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  sub_1000246A0(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_100056BAC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10002E570(a1, a2);
  }

  else
  {
    sub_10002DDEC(a1, a1[1], a2);
    result = v3 + 56;
    a1[1] = v3 + 56;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_100056C0C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 16) = _Q0;
  *(a1 + 32) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 136) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 144) = xmmword_1000DD6E0;
  *(a1 + 160) = 0;
  sub_1000060C4((a1 + 168), "Unknown");
  *(a1 + 192) = 0;
  return a1;
}

void sub_100056C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100056D50(v3 + 112);
  sub_100056CD0(v3 + 80);
  if (*(v3 + 79) < 0)
  {
    operator delete(*(v3 + 56));
  }

  sub_10000DB84(va);

  _Unwind_Resume(a1);
}

uint64_t sub_100056CD0(uint64_t a1)
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

uint64_t sub_100056D50(uint64_t a1)
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

uint64_t sub_100056E58(int a1, _BYTE *a2, std::string *a3)
{
  if (*a2)
  {
    v3 = "1";
  }

  else
  {
    v3 = "0";
  }

  sub_10001D128(a3, v3);
  return 1;
}

uint64_t sub_100056E94(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100056F68(uint64_t a1, __int128 *a2, BOOL *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100004CEC(&v8, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    v9 = *(a2 + 2);
  }

  if (SHIBYTE(v9) < 0)
  {
    v5 = v8;
    v6 = *(&v8 + 1) != 1 || *v8 != 48;
    *a3 = v6;
    operator delete(v5);
  }

  else
  {
    v4 = SHIBYTE(v9) != 1 || v8 != 48;
    *a3 = v4;
  }

  return 1;
}

uint64_t sub_10005701C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000570F0(int a1, uint64_t a2, std::string *this)
{
  if (*(a2 + 23) < 0)
  {
    sub_100004CEC(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  std::string::operator=(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_100057164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100057180(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100057254(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  std::to_string(&v5, *a2);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v5;
  return 1;
}

uint64_t sub_1000572AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100057380(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100004CEC(v6, *a2, *(a2 + 8));
  }

  else
  {
    *v6 = *a2;
    v7 = *(a2 + 16);
  }

  if (SHIBYTE(v7) < 0)
  {
    v4 = v6[0];
    *a3 = atoi(v6[0]);
    operator delete(v4);
  }

  else
  {
    *a3 = atoi(v6);
  }

  return 1;
}

uint64_t sub_100057410(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10005745C(uint64_t a1, unint64_t a2)
{
  if (*a2 >= 0.0)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 3) >= *(a1 + 144))
    {
      v8 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v9 = (a1 + 168);
        if (*(a1 + 191) < 0)
        {
          v9 = *v9;
        }

        *buf = 68289283;
        *&buf[4] = 0;
        v49[0] = 2082;
        *&v49[1] = "";
        v50 = 2081;
        v51 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,maxHistoryLenReached, history:%{private, location:escape_only}s}", buf, 0x1Cu);
        v7 = *(a1 + 32);
        v6 = *(a1 + 40);
      }

      v6 = sub_100058648(v7 + 40, v6, v7);
      for (i = *(a1 + 40); i != v6; i -= 40)
      {
        if (*(i - 1) < 0)
        {
          operator delete(*(i - 24));
        }
      }

      *(a1 + 40) = v6;
      *(a1 + 160) = 1;
      v7 = *(a1 + 32);
    }

    if (v6 == v7)
    {
      v12 = v6;
    }

    else
    {
      v11 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 3);
      v12 = v6;
      do
      {
        v13 = v11 >> 1;
        v14 = v12 - 40 * (v11 >> 1);
        v16 = *(v14 - 40);
        v15 = v14 - 40;
        v11 += ~(v11 >> 1);
        if (*a2 >= v16)
        {
          v11 = v13;
        }

        else
        {
          v12 = v15;
        }
      }

      while (v11);
    }

    v17 = *(a1 + 48);
    if (v6 >= v17)
    {
      v27 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 3) + 1;
      if (v27 > 0x666666666666666)
      {
        sub_10000509C();
      }

      v28 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - v7) >> 3);
      if (2 * v28 > v27)
      {
        v27 = 2 * v28;
      }

      if (v28 >= 0x333333333333333)
      {
        v29 = 0x666666666666666;
      }

      else
      {
        v29 = v27;
      }

      v47 = a1 + 32;
      if (v29)
      {
        sub_1000586C4(v29);
      }

      v31 = v12 - v7;
      v32 = 8 * ((v12 - v7) >> 3);
      v44 = 0;
      v45 = v32;
      v46 = v32;
      if (!(0xCCCCCCCCCCCCCCCDLL * ((v12 - v7) >> 3)))
      {
        if (v31 < 1)
        {
          if (v12 == v7)
          {
            v34 = 1;
          }

          else
          {
            v34 = 0x999999999999999ALL * ((v12 - v7) >> 3);
          }

          v52 = a1 + 32;
          sub_1000586C4(v34);
        }

        v33 = v32 - 40 * ((1 - 0x3333333333333333 * (v31 >> 3)) >> 1);
        v32 = sub_100058648(v32, v32, v33);
        v45 = v33;
        *&v46 = v32;
      }

      *v32 = *a2;
      if (*(a2 + 39) < 0)
      {
        sub_100004CEC((v32 + 16), *(a2 + 16), *(a2 + 24));
      }

      else
      {
        v35 = *(a2 + 16);
        *(v32 + 32) = *(a2 + 32);
        *(v32 + 16) = v35;
      }

      *&v46 = v46 + 40;
      sub_10005871C(v12, *(a1 + 40), v46);
      v36 = *(a1 + 32);
      v37 = v45;
      *&v46 = v46 + *(a1 + 40) - v12;
      *(a1 + 40) = v12;
      v38 = v37 + v36 - v12;
      sub_10005871C(v36, v12, v38);
      v39 = *(a1 + 32);
      *(a1 + 32) = v38;
      v40 = *(a1 + 48);
      *(a1 + 40) = v46;
      *&v46 = v39;
      *(&v46 + 1) = v40;
      v44 = v39;
      v45 = v39;
      sub_10005879C(&v44);
    }

    else if (v12 == v6)
    {
      *v6 = *a2;
      if (*(a2 + 39) < 0)
      {
        sub_100004CEC((v6 + 16), *(a2 + 16), *(a2 + 24));
      }

      else
      {
        v30 = *(a2 + 16);
        *(v6 + 32) = *(a2 + 32);
        *(v6 + 16) = v30;
      }

      *(a1 + 40) = v6 + 40;
    }

    else
    {
      v18 = v6;
      if (v6 >= 0x28)
      {
        v18 = v6 + 40;
        *v6 = *(v6 - 40);
        v19 = *(v6 - 24);
        *(v6 + 32) = *(v6 - 8);
        *(v6 + 16) = v19;
        *(v6 - 16) = 0;
        *(v6 - 8) = 0;
        *(v6 - 24) = 0;
      }

      *(a1 + 40) = v18;
      if (v6 != v12 + 40)
      {
        v20 = 0;
        do
        {
          v21 = v6 + v20;
          *(v6 + v20 - 40) = *(v6 + v20 - 80);
          v22 = v6 + v20 - 24;
          if (*(v6 + v20 - 1) < 0)
          {
            operator delete(*v22);
          }

          v20 -= 40;
          v23 = *(v21 - 64);
          *(v22 + 16) = *(v21 - 48);
          *v22 = v23;
          *(v21 - 41) = 0;
          *(v21 - 64) = 0;
        }

        while (v12 - v6 + 40 != v20);
        v18 = *(a1 + 40);
      }

      v24 = v18 <= a2 || v12 > a2;
      v25 = 40;
      if (v24)
      {
        v25 = 0;
      }

      v26 = a2 + v25;
      *v12 = *v26;
      std::string::operator=((v12 + 16), (v26 + 16));
    }

    v41 = *(a1 + 16);
    v42 = *a2;
    if (v41 < 0.0 || v41 > v42)
    {
      *(a1 + 16) = v42;
    }

    if (*(a1 + 24) < v42)
    {
      *(a1 + 24) = v42;
    }
  }

  else
  {
    v3 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v4 = *v4;
      }

      *buf = 68289283;
      *&buf[4] = 0;
      v49[0] = 2082;
      *&v49[1] = "";
      v50 = 2081;
      v51 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,updateWithInvalidArgs, history:%{private, location:escape_only}s}", buf, 0x1Cu);
    }
  }
}

void sub_100057A10(char *a1)
{
  v2 = *a1;
  if (*a1 && a1[9] == 1)
  {
    v3 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1 + 168;
      if (a1[191] < 0)
      {
        v4 = *v4;
      }

      *buf = 68289283;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2081;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,save,dispatched, debugName:%{private, location:escape_only}s}", buf, 0x1Cu);
      v2 = *a1;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100058800;
    block[3] = &unk_1001390D0;
    block[4] = a1;
    dispatch_async(v2, block);
  }

  else
  {

    sub_100058808(a1);
  }
}

uint64_t sub_100057C08(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013BBB8;
  a2[1] = v2;
  return result;
}

void sub_100057C34(uint64_t result)
{
  v1 = *(result + 8);
  if ((*(v1 + 9) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,init,load}", v3, 0x12u);
    }

    sub_100057D50(v1);
    *(v1 + 8) = 1;
  }
}

uint64_t sub_100057D04(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100057D50(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v3 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v3 = *v3;
    }

    v4 = (a1 + 168);
    if (*(a1 + 191) < 0)
    {
      v4 = *v4;
    }

    *buf = 68289539;
    *&buf[4] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2081;
    v16 = v3;
    v17 = 2081;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saEventHistory,load, filePath:%{private, location:escape_only}s, debugName:%{private, location:escape_only}s}", buf, 0x26u);
  }

  if ((*(a1 + 192) & 1) == 0)
  {
    v6 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v7 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v7 = *v7;
    }

    *buf = 68289283;
    *&buf[4] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2081;
    v16 = v7;
    v8 = "{msg%{public}.0s:#saEventHistory,load,#warning,deferLoadingTillFirstUnlock, filePath:%{private, location:escape_only}s}";
    goto LABEL_15;
  }

  v5 = (a1 + 56);
  if (*(a1 + 79) < 0)
  {
    if (!*(a1 + 64))
    {
      return;
    }
  }

  else if (!*(a1 + 79))
  {
    return;
  }

  sub_1000060C4(buf, "0003");
  v9 = sub_1000AC508();
  v10 = v9;
  if (SBYTE3(v16) < 0)
  {
    operator delete(*buf);
    if (v10)
    {
LABEL_19:
      operator new[]();
    }
  }

  else if (v9)
  {
    goto LABEL_19;
  }

  v11 = (a1 + 56);
  if (*(a1 + 79) < 0)
  {
    v11 = *v5;
  }

  if (sub_1000ABE8C(v11))
  {
    v6 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 79) < 0)
      {
        v5 = *v5;
      }

      *buf = 68289283;
      *&buf[4] = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2081;
      v16 = v5;
      v8 = "{msg%{public}.0s:#saEventHistory,load,#warning,unabletToRemoveFile, filePath:%{private, location:escape_only}s}";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0x1Cu);
    }
  }
}

void sub_100058364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  sub_1000AC484(&a33);
  operator delete[]();
}

uint64_t sub_1000584F0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013BC38;
  a2[1] = v2;
  return result;
}

__n128 sub_10005851C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0 && (*(v1 + 193) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 68289026;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,destroy,clear}", v9, 0x12u);
    }

    *(v1 + 8) = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v1 + 16) = _Q0;
    *(v1 + 160) = 0;
    sub_10000DBD8((v1 + 32));
  }

  return result;
}

uint64_t sub_1000585FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100058648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 = *v5;
      if (*(a3 + 39) < 0)
      {
        operator delete(*(a3 + 16));
      }

      v6 = *(v5 + 16);
      *(a3 + 32) = *(v5 + 32);
      *(a3 + 16) = v6;
      *(v5 + 39) = 0;
      *(v5 + 16) = 0;
      v5 += 40;
      a3 += 40;
    }

    while (v5 != a2);
  }

  return a3;
}

void sub_1000586C4(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  sub_100004E38();
}

void sub_10005871C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      v6 = *(v5 + 16);
      *(a3 + 32) = *(v5 + 32);
      *(a3 + 16) = v6;
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;
      *(v5 + 16) = 0;
      v5 += 40;
      a3 += 40;
    }

    while (v5 != a2);
    do
    {
      if (*(v4 + 39) < 0)
      {
        operator delete(*(v4 + 16));
      }

      v4 += 40;
    }

    while (v4 != a2);
  }
}

uint64_t sub_10005879C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100058808(char *a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1 + 56;
    if (a1[79] < 0)
    {
      v3 = *v3;
    }

    v4 = a1 + 168;
    if (a1[191] < 0)
    {
      v4 = *v4;
    }

    *buf = 68289539;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2081;
    v18 = v3;
    v19 = 2081;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,save, filePath:%{private, location:escape_only}s, debugName:%{private, location:escape_only}s}", buf, 0x26u);
  }

  if (a1[192])
  {
    v5 = a1 + 56;
    if (a1[79] < 0)
    {
      v5 = *v5;
    }

    sub_1000060C4(&__p, "0003");
    sub_1000ACC04(buf, v5, &__p);
    if (SBYTE3(v12) < 0)
    {
      operator delete(__p);
    }

    if (v21)
    {
      operator new[]();
    }

    v8 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1 + 168;
      if (a1[191] < 0)
      {
        v9 = *v9;
      }

      __p = 68289283;
      v11[0] = 2082;
      *&v11[1] = "";
      v11[5] = 2081;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,cannotOpenFileToSave, history:%{private, location:escape_only}s}", &__p, 0x1Cu);
    }

    sub_1000ACF88(buf);
  }

  else
  {
    v6 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1 + 168;
      if (a1[191] < 0)
      {
        v7 = *v7;
      }

      *buf = 68289283;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2081;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saEventHistory,#warning,deferSavingTillFirstUnlock, history:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    a1[193] = 1;
  }
}

uint64_t sub_100058C7C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013BCB8;
  a2[1] = v2;
  return result;
}

void sub_100058CA8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,init,load}", v3, 0x12u);
    }

    sub_100057D50(v1);
    *(v1 + 8) = 1;
  }
}

uint64_t sub_100058D78(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100058E34(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013BD38;
  a2[1] = v2;
  return result;
}

__n128 sub_100058E60(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0 && (*(v1 + 193) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 68289026;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,destroy,clear}", v9, 0x12u);
    }

    *(v1 + 8) = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v1 + 16) = _Q0;
    *(v1 + 160) = 0;
    sub_10000DBD8((v1 + 32));
  }

  return result;
}

uint64_t sub_100058F40(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_100058F8C(double *a1, uint64_t a2)
{
  v3 = *a1;
  __p = 0;
  v16 = 0;
  v17 = 0;
  v4 = *(v3 + 104);
  if (!v4)
  {
    sub_1000053C4();
  }

  (*(*v4 + 48))(v4, a2 + 8, &__p);
  v6 = *a2;
  v7 = a1[1];
  if (*a2 < v7)
  {
    **(a1 + 2) = 1;
  }

  v8 = *(a1 + 4);
  if (*v8 < v6)
  {
    *v8 = v6;
    **(a1 + 3) = *(a2 + 8);
  }

  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v10 = (v3 + 168);
    if (*(v3 + 191) < 0)
    {
      v10 = *v10;
    }

    v11 = *(a1 + 1);
    v12 = *a2;
    if (SHIBYTE(v17) < 0)
    {
      if (v16)
      {
        p_p = __p;
      }

      else
      {
        p_p = "";
      }
    }

    else
    {
      p_p = &__p;
      if (!HIBYTE(v17))
      {
        p_p = "";
      }
    }

    *buf = 68290307;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2081;
    v23 = v10;
    v24 = 2049;
    v25 = v11;
    v26 = 2049;
    v27 = v12;
    v28 = 2081;
    v29 = p_p;
    v30 = 1025;
    v31 = v6 < v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saEventHistory,cleanup, history:%{private, location:escape_only}s, before:%{private}0.1f, ts:%{private}0.1f, value:%{private, location:escape_only}s, remove:%{private}hhd}", buf, 0x40u);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  return v6 < v7;
}

void sub_10005916C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100059188(uint64_t a1, double a2)
{
  v47[0] = off_10013BDB8;
  v47[1] = a1;
  v47[3] = v47;
  v46[0] = off_10013BE38;
  v46[1] = a1;
  v46[3] = v46;
  sub_1000104CC(v48, v47, v46);
  sub_10000F274(v46);
  sub_10000F274(v47);
  v41 = 0;
  v40 = 0xBFF0000000000000;
  v4 = (a1 + 32);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v42 = a1;
  v43 = a2;
  *&v44 = &v41 + 1;
  *(&v44 + 1) = &v41;
  v45 = &v40;
  if (v5 != v6)
  {
    while (!sub_100059958(&v42, v5))
    {
      v5 += 40;
      if (v5 == v6)
      {
        v5 = v6;
        goto LABEL_13;
      }
    }

    if (v5 != v6)
    {
      for (i = v5 + 40; i != v6; i += 40)
      {
        if (!sub_100059958(&v42, i))
        {
          v8 = *i;
          *(v5 + 8) = *(i + 8);
          *v5 = v8;
          if (*(v5 + 39) < 0)
          {
            operator delete(*(v5 + 16));
          }

          v9 = *(i + 16);
          *(v5 + 32) = *(i + 32);
          *(v5 + 16) = v9;
          *(i + 39) = 0;
          *(i + 16) = 0;
          v5 += 40;
        }
      }
    }
  }

LABEL_13:
  v10 = *(a1 + 40);
  if (v5 != v10)
  {
    sub_100010758(&v42, v10, *(a1 + 40), v5);
    v5 = v11;
    for (j = *(a1 + 40); j != v5; j -= 40)
    {
      if (*(j - 1) < 0)
      {
        operator delete(*(j - 24));
      }
    }

    *(a1 + 40) = v5;
  }

  if (*(a1 + 32) == v5)
  {
    v13 = v40;
    v14 = v41;
    sub_1000060C4(v34, "{}");
    v36 = v13;
    v37 = v14;
    if (SHIBYTE(v35) < 0)
    {
      sub_100004CEC(&__p, v34[0], v34[1]);
    }

    else
    {
      __p = *v34;
      v39 = v35;
    }

    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    if (v15 >= v16)
    {
      v19 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - *v4) >> 3);
      v20 = v19 + 1;
      if (v19 + 1 > 0x666666666666666)
      {
        sub_10000509C();
      }

      v21 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - *v4) >> 3);
      if (2 * v21 > v20)
      {
        v20 = 2 * v21;
      }

      if (v21 >= 0x333333333333333)
      {
        v22 = 0x666666666666666;
      }

      else
      {
        v22 = v20;
      }

      v45 = (a1 + 32);
      if (v22)
      {
        sub_100010BCC(a1 + 32, v22);
      }

      v23 = 40 * v19;
      v42 = 0;
      v43 = *&v23;
      *(&v44 + 1) = 0;
      v24 = v36;
      *(v23 + 8) = v37;
      *v23 = v24;
      v25 = __p;
      *(v23 + 32) = v39;
      *(v23 + 16) = v25;
      v39 = 0;
      __p = 0uLL;
      *&v44 = 40 * v19 + 40;
      v26 = *(a1 + 32);
      v27 = *(a1 + 40);
      v28 = 40 * v19 + v26 - v27;
      sub_100010C24(a1 + 32, v26, v27, v28);
      v29 = *(a1 + 32);
      *(a1 + 32) = v28;
      v30 = *(a1 + 48);
      v33 = v44;
      *(a1 + 40) = v44;
      *&v44 = v29;
      *(&v44 + 1) = v30;
      v42 = *&v29;
      v43 = v29;
      sub_100010D68(&v42);
      v31 = SHIBYTE(v39);
      *(a1 + 40) = v33;
      if (v31 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v17 = v36;
      *(v15 + 8) = v37;
      *v15 = v17;
      v18 = __p;
      *(v15 + 32) = v39;
      *(v15 + 16) = v18;
      v39 = 0;
      __p = 0uLL;
      *(a1 + 40) = v15 + 40;
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34[0]);
    }
  }

  if (HIBYTE(v41) == 1)
  {
    if ((*(a1 + 79) & 0x8000000000000000) == 0)
    {
      if (!*(a1 + 79))
      {
        return sub_100011208(v48);
      }

      goto LABEL_43;
    }

    if (*(a1 + 64))
    {
LABEL_43:
      sub_10000F87C(a1);
    }
  }

  return sub_100011208(v48);
}

void sub_10005955C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100011208(v32 - 104);
  _Unwind_Resume(a1);
}

uint64_t sub_100059648(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013BDB8;
  a2[1] = v2;
  return result;
}

void sub_100059674(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,init,load}", v3, 0x12u);
    }

    sub_10000FBBC(v1);
    *(v1 + 8) = 1;
  }
}

uint64_t sub_100059744(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100059800(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013BE38;
  a2[1] = v2;
  return result;
}

__n128 sub_10005982C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0 && (*(v1 + 193) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 68289026;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,destroy,clear}", v9, 0x12u);
    }

    *(v1 + 8) = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v1 + 16) = _Q0;
    *(v1 + 160) = 0;
    sub_10000DBD8((v1 + 32));
  }

  return result;
}

uint64_t sub_10005990C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_100059958(double *a1, uint64_t a2)
{
  v3 = *a1;
  __p = 0;
  v16 = 0;
  v17 = 0;
  v4 = *(v3 + 104);
  if (!v4)
  {
    sub_1000053C4();
  }

  (*(*v4 + 48))(v4, a2 + 8, &__p);
  v6 = *a2;
  v7 = a1[1];
  if (*a2 < v7)
  {
    **(a1 + 2) = 1;
  }

  v8 = *(a1 + 4);
  if (*v8 < v6)
  {
    *v8 = v6;
    **(a1 + 3) = *(a2 + 8);
  }

  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v10 = (v3 + 168);
    if (*(v3 + 191) < 0)
    {
      v10 = *v10;
    }

    v11 = *(a1 + 1);
    v12 = *a2;
    if (SHIBYTE(v17) < 0)
    {
      if (v16)
      {
        p_p = __p;
      }

      else
      {
        p_p = "";
      }
    }

    else
    {
      p_p = &__p;
      if (!HIBYTE(v17))
      {
        p_p = "";
      }
    }

    *buf = 68290307;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2081;
    v23 = v10;
    v24 = 2049;
    v25 = v11;
    v26 = 2049;
    v27 = v12;
    v28 = 2081;
    v29 = p_p;
    v30 = 1025;
    v31 = v6 < v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#saEventHistory,cleanup, history:%{private, location:escape_only}s, before:%{private}0.1f, ts:%{private}0.1f, value:%{private, location:escape_only}s, remove:%{private}hhd}", buf, 0x40u);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  return v6 < v7;
}

void sub_100059B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100059BC4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013BEB8;
  a2[1] = v2;
  return result;
}

void sub_100059BF0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,init,load}", v3, 0x12u);
    }

    sub_100057D50(v1);
    *(v1 + 8) = 1;
  }
}

uint64_t sub_100059CC0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100059D7C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013BF38;
  a2[1] = v2;
  return result;
}

__n128 sub_100059DA8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0 && (*(v1 + 193) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 68289026;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,destroy,clear}", v9, 0x12u);
    }

    *(v1 + 8) = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v1 + 16) = _Q0;
    *(v1 + 160) = 0;
    sub_10000DBD8((v1 + 32));
  }

  return result;
}

uint64_t sub_100059E88(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100059ED4(uint64_t a1, uint64_t *a2, void *a3)
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

uint64_t sub_10005A010(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013BFB8;
  a2[1] = v2;
  return result;
}

void sub_10005A03C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,init,load}", v3, 0x12u);
    }

    sub_100057D50(v1);
    *(v1 + 8) = 1;
  }
}

uint64_t sub_10005A10C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005A1C8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013C038;
  a2[1] = v2;
  return result;
}

__n128 sub_10005A1F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 9) & 1) == 0 && (*(v1 + 193) & 1) == 0)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 68289026;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#raii,destroy,clear}", v9, 0x12u);
    }

    *(v1 + 8) = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v1 + 16) = _Q0;
    *(v1 + 160) = 0;
    sub_10000DBD8((v1 + 32));
  }

  return result;
}

uint64_t sub_10005A2D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t **sub_10005A320(uint64_t **a1, __int128 *a2)
{
  *a1 = 0;
  a1[1] = 0;
  *(a1 + 21) = 0;
  a1[2] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 2) = _Q0;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 20) = 1065353216;
  if (*(a2 + 23) < 0)
  {
    sub_100004CEC(a1 + 88, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    a1[13] = *(a2 + 2);
    *(a1 + 11) = v9;
  }

  v10 = *(a2 + 23);
  if (v10 < 0)
  {
    if (!*(a2 + 1))
    {
      goto LABEL_38;
    }

    v11 = *a2;
LABEL_9:
    v12 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", v11, +[NSString defaultCStringEncoding]);
    if (!v12)
    {
      v28 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v29 = a2;
        }

        else
        {
          v29 = *a2;
        }

        *buf = 68289283;
        v56[0] = 2082;
        *&v56[1] = "";
        v57 = 2081;
        v58 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifest,#warning,loadManifest,pathNotDerived, manifest:%{private, location:escape_only}s}", buf, 0x1Cu);
      }

      goto LABEL_75;
    }

    v13 = [NSData dataWithContentsOfFile:v12];
    v48 = v12;
    if (!v13)
    {
      v30 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v31 = a2;
        }

        else
        {
          v31 = *a2;
        }

        *buf = 68289283;
        v56[0] = 2082;
        *&v56[1] = "";
        v57 = 2081;
        v58 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifest,loadManifest,readFailed, manifest:%{private, location:escape_only}s}", buf, 0x1Cu);
      }

      goto LABEL_74;
    }

    v14 = [NSJSONSerialization JSONObjectWithData:v13 options:0 error:0];
    v49 = v14;
    if (v14)
    {
      v46 = [v14 objectForKey:@"manifest"];
      if (v46)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v46 objectForKey:@"start"];
          if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v44 = v15;
            [v15 doubleValue];
            *(a1 + 4) = v16 + -978307200.0;
            v17 = CFCalendarCopyCurrent();
            CFCalendarDecomposeAbsoluteTime(v17, *(a1 + 4), "M", a1 + 3);
            if (v17)
            {
              CFRelease(v17);
            }

            v45 = [v46 objectForKey:@"end"];
            if (v45 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v45 doubleValue];
              *(a1 + 5) = v18 + -978307200.0;
              v19 = [v46 objectForKey:@"messages"];
              if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v52 = 0u;
                v53 = 0u;
                v50 = 0u;
                v51 = 0u;
                v20 = v19;
                obj = v20;
                v21 = [v20 countByEnumeratingWithState:&v50 objects:v54 count:16];
                if (v21)
                {
                  v22 = *v51;
                  do
                  {
                    for (i = 0; i != v21; i = i + 1)
                    {
                      if (*v51 != v22)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v24 = *(*(&v50 + 1) + 8 * i);
                      if (v24)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          if (sub_10005C9F8(v24))
                          {
                            operator new();
                          }

                          operator new();
                        }
                      }

                      v25 = SALogObjectGeneral;
                      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 68289539;
                        v56[0] = 2082;
                        *&v56[1] = "";
                        v57 = 2081;
                        v58 = "message";
                        v59 = 2113;
                        v60 = v49;
                        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifest,#warning,parseFailed, field:%{private, location:escape_only}s, manifestDictionary:%{private, location:escape_only}@}", buf, 0x26u);
                      }
                    }

                    v20 = obj;
                    v21 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
                  }

                  while (v21);
                }

                if (*a1 == a1[1])
                {
                  v42 = SALogObjectGeneral;
                  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 68289539;
                    v56[0] = 2082;
                    *&v56[1] = "";
                    v57 = 2081;
                    v58 = "msgsCount";
                    v59 = 2113;
                    v60 = v49;
                    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifest,#warning,parseFailed, field:%{private, location:escape_only}s, manifestDictionary:%{private, location:escape_only}@}", buf, 0x26u);
                  }
                }

                else
                {
                  *(a1 + 28) = 1;
                  sub_10005B034(a1);
                }

                v41 = obj;
              }

              else
              {

                v40 = SALogObjectGeneral;
                if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 68289539;
                  v56[0] = 2082;
                  *&v56[1] = "";
                  v57 = 2081;
                  v58 = "msgs";
                  v59 = 2113;
                  v60 = v49;
                  _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifest,#warning,parseFailed, field:%{private, location:escape_only}s, manifestDictionary:%{private, location:escape_only}@}", buf, 0x26u);
                }

                v41 = 0;
              }
            }

            else
            {

              v39 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68289539;
                v56[0] = 2082;
                *&v56[1] = "";
                v57 = 2081;
                v58 = "end";
                v59 = 2113;
                v60 = v49;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifest,#warning,parseFailed, field:%{private, location:escape_only}s, manifestDictionary:%{private, location:escape_only}@}", buf, 0x26u);
              }
            }
          }

          else
          {

            v38 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289539;
              v56[0] = 2082;
              *&v56[1] = "";
              v57 = 2081;
              v58 = "start";
              v59 = 2113;
              v60 = v49;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifest,#warning,parseFailed, field:%{private, location:escape_only}s, manifestDictionary:%{private, location:escape_only}@}", buf, 0x26u);
            }
          }

          goto LABEL_73;
        }
      }

      v32 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289539;
        v56[0] = 2082;
        *&v56[1] = "";
        v57 = 2081;
        v58 = "manifest";
        v59 = 2113;
        v60 = v49;
        v33 = "{msg%{public}.0s:#effManifest,#warning,parseFailed, field:%{private, location:escape_only}s, manifestDictionary:%{private, location:escape_only}@}";
        v34 = v32;
        v35 = 38;
LABEL_59:
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v33, buf, v35);
      }
    }

    else
    {
      v36 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v37 = a2;
        }

        else
        {
          v37 = *a2;
        }

        *buf = 68289283;
        v56[0] = 2082;
        *&v56[1] = "";
        v57 = 2081;
        v58 = v37;
        v33 = "{msg%{public}.0s:#effManifest,loadManifest,parseFailed, manifest:%{private, location:escape_only}s}";
        v34 = v36;
        v35 = 28;
        goto LABEL_59;
      }
    }

LABEL_73:

LABEL_74:
    v12 = v48;
LABEL_75:

    return a1;
  }

  v11 = a2;
  if (*(a2 + 23))
  {
    goto LABEL_9;
  }

LABEL_38:
  v26 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *a2;
    if (v10 >= 0)
    {
      v27 = a2;
    }

    *buf = 68289283;
    v56[0] = 2082;
    *&v56[1] = "";
    v57 = 2081;
    v58 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifest,#warning,loadManifest,invalidPath, manifest:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  return a1;
}

void sub_10005AE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (*(v32 + 111) < 0)
  {
    operator delete(*(v32 + 88));
  }

  sub_10004E064(a18);
  a32 = v32;
  sub_10005B6C8(&a32);
  _Unwind_Resume(a1);
}

void sub_10005B034(uint64_t **a1)
{
  v1 = *a1;
  v14 = a1[1];
  if (*a1 != v14)
  {
    do
    {
      v4 = *v1;
      v3 = v1[1];
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      {
        v6 = v5;
        if (v3)
        {
          atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v7 = SALogObjectGeneral;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v4 + 103) < 0)
          {
            sub_100004CEC(__p, *(v4 + 80), *(v4 + 88));
          }

          else
          {
            *__p = *(v4 + 80);
            v16 = *(v4 + 96);
          }

          v8 = v16 >= 0 ? __p : __p[0];
          *buf = 68289283;
          *&buf[4] = 0;
          *v19 = 2082;
          *&v19[2] = "";
          v20 = 2081;
          v21 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifest,updateHashToCount, uid:%{private, location:escape_only}s}", buf, 0x1Cu);
          if (SHIBYTE(v16) < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_10004D7E4(buf, v6 + 136);
        v9 = *buf;
        if (*buf != v19)
        {
          do
          {
            if (v9[79] < 0)
            {
              sub_100004CEC(__p, *(v9 + 7), *(v9 + 8));
            }

            else
            {
              *__p = *(v9 + 56);
              v16 = *(v9 + 9);
            }

            if (sub_10005B888(a1 + 6, __p))
            {
              v17 = __p;
              v10 = *(sub_10005B984(a1 + 6, __p, &unk_1000E089A, &v17) + 10);
              v17 = __p;
              *(sub_10005B984(a1 + 6, __p, &unk_1000E089A, &v17) + 10) = v10 + 1;
            }

            else
            {
              v17 = __p;
              *(sub_10005B984(a1 + 6, __p, &unk_1000E089A, &v17) + 10) = 1;
            }

            if (SHIBYTE(v16) < 0)
            {
              operator delete(__p[0]);
            }

            v11 = *(v9 + 1);
            if (v11)
            {
              do
              {
                v12 = v11;
                v11 = *v11;
              }

              while (v11);
            }

            else
            {
              do
              {
                v12 = *(v9 + 2);
                v13 = *v12 == v9;
                v9 = v12;
              }

              while (!v13);
            }

            v9 = v12;
          }

          while (v12 != v19);
        }

        sub_10004DC98(buf, *v19);
        if (!v3)
        {
          goto LABEL_37;
        }

        sub_10002A838(v3);
      }

      else if (!v3)
      {
        goto LABEL_37;
      }

      sub_10002A838(v3);
LABEL_37:
      v1 += 2;
    }

    while (v1 != v14);
  }
}

void sub_10005B33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23)
{
  if (v23)
  {
    sub_10002A838(v23);
    sub_10002A838(v23);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10005B3A0(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 68289026;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifest,release}", &v4, 0x12u);
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  sub_10004E064(a1 + 48);
  v4 = a1;
  sub_10005B6C8(&v4);
  return a1;
}

void sub_10005B480(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 68289026;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifest,eraseManifests}", &v6, 0x12u);
  }

  v4 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    if (!*(a1 + 96))
    {
      goto LABEL_9;
    }

    v4 = v4->__pn_.__r_.__value_.__r.__words[0];
LABEL_8:
    remove(v4, v3);
    return;
  }

  if (*(a1 + 111))
  {
    goto LABEL_8;
  }

LABEL_9:
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 68289026;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifest,eraseManifest,empty file name}", &v6, 0x12u);
  }
}

const void **sub_10005B5C4(uint64_t a1, uint64_t *a2)
{
  result = sub_10005B888((a1 + 48), a2);
  if (result)
  {
    v5 = a2;
    return *(sub_10005B984((a1 + 48), a2, &unk_1000E089A, &v5) + 10);
  }

  return result;
}

void sub_10005B620(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_100004E38();
}

uint64_t sub_10005B668(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      sub_10002A838(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10005B6C8(void ***a1)
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
        v6 = *(v4 - 1);
        if (v6)
        {
          sub_10002A838(v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10005B770(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10013C0B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10005B80C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10013C108;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const void **sub_10005B888(void *a1, uint64_t *a2)
{
  v4 = sub_100039B6C(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_10004E530(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

const void **sub_10005B984(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_100039B6C(a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!sub_10004E530(a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

uint64_t sub_10005BDF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  *a1 = off_10013C158;
  *(a1 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 16) = _Q0;
  *(a1 + 32) = _Q0;
  *(a1 + 48) = 0xBFF0000000000000;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  if (!v3)
  {
    v27 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    *buf = 68289026;
    v38 = 0;
    v39 = 2082;
    v40 = "";
    v24 = "{msg%{public}.0s:#effManifestEntry,parseManifestEntry,invalidArgs}";
    v25 = v27;
    v26 = 18;
    goto LABEL_26;
  }

  v10 = [v3 objectForKey:@"server_timestamp"];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v23 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    *buf = 68289539;
    v38 = 0;
    v39 = 2082;
    v40 = "";
    v41 = 2081;
    v42 = "server_timestamp";
    v43 = 2113;
    v44 = v4;
    v24 = "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}";
    v25 = v23;
    v26 = 38;
LABEL_26:
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
    goto LABEL_45;
  }

  [v10 doubleValue];
  *(a1 + 16) = v11 + -978307200.0;
  v12 = [v4 objectForKey:@"ingress_timestamp"];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v12 doubleValue];
    *(a1 + 24) = v13 + -978307200.0;
    v14 = [v4 objectForKey:@"originator_timestamp"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v14 doubleValue];
      *(a1 + 32) = v15 + -978307200.0;
      v16 = [v4 objectForKey:@"effective"];
      if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v16 doubleValue];
        *(a1 + 40) = v17 + -978307200.0;
        v18 = [v4 objectForKey:@"expires"];
        if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          [v18 doubleValue];
          *(a1 + 48) = v19 + -978307200.0;
          v36 = [v4 objectForKey:@"uid"];
          if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            sub_10001D128((a1 + 80), [v36 UTF8String]);
            v20 = [v4 objectForKey:@"type"];
            if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {

              v21 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68289539;
                v38 = 0;
                v39 = 2082;
                v40 = "";
                v41 = 2081;
                v42 = "alertType";
                v43 = 2113;
                v44 = v4;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", buf, 0x26u);
              }

              v20 = @"None";
            }

            v22 = v20;
            sub_10001D128((a1 + 56), [(__CFString *)v20 UTF8String]);
            v35 = [v4 objectForKey:@"geometry"];
            if (v35)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                operator new();
              }
            }

            v33 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289539;
              v38 = 0;
              v39 = 2082;
              v40 = "";
              v41 = 2081;
              v42 = "geometry";
              v43 = 2113;
              v44 = v4;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", buf, 0x26u);
            }
          }

          else
          {

            v32 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289539;
              v38 = 0;
              v39 = 2082;
              v40 = "";
              v41 = 2081;
              v42 = "uid";
              v43 = 2113;
              v44 = v4;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", buf, 0x26u);
            }
          }
        }

        else
        {

          v31 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289539;
            v38 = 0;
            v39 = 2082;
            v40 = "";
            v41 = 2081;
            v42 = "expires";
            v43 = 2113;
            v44 = v4;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", buf, 0x26u);
          }
        }
      }

      else
      {

        v30 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289539;
          v38 = 0;
          v39 = 2082;
          v40 = "";
          v41 = 2081;
          v42 = "effective";
          v43 = 2113;
          v44 = v4;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", buf, 0x26u);
        }
      }
    }

    else
    {

      v29 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289539;
        v38 = 0;
        v39 = 2082;
        v40 = "";
        v41 = 2081;
        v42 = "originator_timestamp";
        v43 = 2113;
        v44 = v4;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", buf, 0x26u);
      }
    }
  }

  else
  {

    v28 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289539;
      v38 = 0;
      v39 = 2082;
      v40 = "";
      v41 = 2081;
      v42 = "ingress_timestamp";
      v43 = 2113;
      v44 = v4;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", buf, 0x26u);
    }
  }

LABEL_45:
  return a1;
}

void sub_10005C880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *a10, void *a11, void *a12)
{
  if (*(v13 + 103) < 0)
  {
    operator delete(*(v13 + 80));
  }

  if (*(v13 + 79) < 0)
  {
    operator delete(*v19);
  }

  sub_10005E200(v18, 0);

  _Unwind_Resume(a1);
}

id sub_10005C9F8(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v10 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 68289026;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v7 = "{msg%{public}.0s:#effManifestEntry,parseManifestEntry,invalidArgs}";
      v8 = v10;
      v9 = 18;
      goto LABEL_11;
    }

LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

  v3 = [v1 objectForKey:@"isIgneousEntry"];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2081;
      v17 = "igneousEntry";
      v18 = 2113;
      v19 = v2;
      v7 = "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}";
      v8 = v6;
      v9 = 38;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v12, v9);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v4 = [v3 BOOLValue];
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 68289283;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 1025;
    LODWORD(v17) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,parseManifestEntry, isIgneousEntry:%{private}hhd}", &v12, 0x18u);
  }

LABEL_13:
  return v4;
}

uint64_t sub_10005CC38(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_10005BDF0(a1, v3);
  *a1 = off_10013C180;
  *(a1 + 112) = 0xBFF0000000000000;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0xBFF0000000000000;
  *(a1 + 144) = -1;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  if (*(a1 + 104))
  {
    *(a1 + 104) = 0;
    v4 = [v3 objectForKey:@"bleUid"];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        sub_10001D128((a1 + 152), [v4 UTF8String]);
        v5 = [v3 objectForKey:@"origin_timestamp"];
        if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {

          v16 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            v20 = 68289539;
            v21 = 0;
            v22 = 2082;
            v23 = "";
            v24 = 2081;
            v25 = "origin_timestamp";
            v26 = 2113;
            v27 = v3;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", &v20, 0x26u);
          }

          goto LABEL_23;
        }

        [v5 doubleValue];
        *(a1 + 112) = v6 + -978307200.0;
        v7 = [v3 objectForKey:@"epiCenter"];
        if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          if ([v7 count] == 2)
          {
            v8 = [v7 objectAtIndex:1];
            [v8 doubleValue];
            *(a1 + 120) = v9;

            v10 = [v7 objectAtIndex:0];
            [v10 doubleValue];
            *(a1 + 128) = v11;

            v12 = [v3 objectForKey:@"magnitude"];
            if (v12)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v12 doubleValue];
                *(a1 + 136) = v13;
                v14 = [v3 objectForKey:@"senderID"];
                if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  *(a1 + 144) = [v14 intValue];
                  *(a1 + 104) = 1;
                }

                else
                {

                  v19 = SALogObjectGeneral;
                  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                  {
                    v20 = 68289539;
                    v21 = 0;
                    v22 = 2082;
                    v23 = "";
                    v24 = 2081;
                    v25 = "senderID";
                    v26 = 2113;
                    v27 = v3;
                    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", &v20, 0x26u);
                  }
                }

                goto LABEL_22;
              }
            }

            v17 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              v20 = 68289539;
              v21 = 0;
              v22 = 2082;
              v23 = "";
              v24 = 2081;
              v25 = "magnitude";
              v26 = 2113;
              v27 = v3;
              goto LABEL_21;
            }

            goto LABEL_22;
          }
        }

        else
        {

          v7 = 0;
        }

        v17 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 68289539;
          v21 = 0;
          v22 = 2082;
          v23 = "";
          v24 = 2081;
          v25 = "epiCenter";
          v26 = 2113;
          v27 = v3;
LABEL_21:
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", &v20, 0x26u);
        }

LABEL_22:

LABEL_23:
        goto LABEL_24;
      }
    }

    v15 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2081;
      v25 = "bleUid";
      v26 = 2113;
      v27 = v3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", &v20, 0x26u);
    }
  }

LABEL_24:

  return a1;
}

void sub_10005D188(_Unwind_Exception *a1)
{
  v9 = v8;

  if (*(v1 + 175) < 0)
  {
    operator delete(*v5);
  }

  sub_10005D22C(v1);

  _Unwind_Resume(a1);
}

uint64_t sub_10005D22C(uint64_t a1)
{
  *a1 = off_10013C158;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  sub_10005E200((a1 + 8), 0);
  return a1;
}

void sub_10005D298(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 16);
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = (a1 + 80);
    if (*(a1 + 103) < 0)
    {
      v6 = *v6;
    }

    v7 = *(a1 + 104);
    v8 = 68290307;
    v9 = 2082;
    v10 = "";
    v11 = 2049;
    v12 = v3;
    v13 = 2049;
    v14 = v5;
    v15 = 2049;
    v16 = v4;
    v17 = 2081;
    v18 = v6;
    v19 = 1025;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igManifestEntry, serverTime:%{private}0.1f, effective:%{private}0.1f, expires:%{private}0.1f, uid:%{private, location:escape_only}s, fIsValid:%{private}hhd}", &v8, 0x40u);
  }
}

_BYTE *sub_10005D39C(uint64_t a1, void *a2)
{
  v34 = a2;
  sub_10005BDF0(a1, v34);
  *a1 = off_10013C1A8;
  *(a1 + 105) = 0;
  *(a1 + 112) = 0;
  v3 = (a1 + 112);
  *(a1 + 144) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a1 + 144;
  v32 = a1;
  v33 = a1 + 136;
  *(a1 + 152) = 0;
  if (*(a1 + 104))
  {
    *(a1 + 104) = 0;
    v4 = [v34 objectForKey:@"cmam"];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        obj = v4;
        v5 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v5)
        {
          v6 = *v39;
          do
          {
            for (i = 0; i != v5; i = i + 1)
            {
              if (*v39 != v6)
              {
                objc_enumerationMutation(obj);
              }

              v8 = *(*(&v38 + 1) + 8 * i);
              if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v9 = v8;
                v10 = [v9 objectForKey:@"htype"];
                if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v11 = [v9 objectForKey:@"hash"];
                  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v12 = v10;
                    sub_1000060C4(v42, [v10 UTF8String]);
                    v13 = v11;
                    sub_1000060C4(__p, [v11 UTF8String]);
                    if (SHIBYTE(v43) < 0)
                    {
                      sub_100004CEC(buf, v42[0], v42[1]);
                    }

                    else
                    {
                      *buf = *v42;
                      *&buf[16] = v43;
                    }

                    if (SHIBYTE(v37) < 0)
                    {
                      sub_100004CEC(&buf[24], __p[0], __p[1]);
                      if (SHIBYTE(v37) < 0)
                      {
                        operator delete(__p[0]);
                      }
                    }

                    else
                    {
                      *&buf[24] = *__p;
                      v46 = v37;
                    }

                    if (SHIBYTE(v43) < 0)
                    {
                      operator delete(v42[0]);
                    }

                    if (!*sub_10004DC10(v33, &v44, buf))
                    {
                      sub_10004DAEC();
                    }

                    if (SHIBYTE(v46) < 0)
                    {
                      operator delete(*&buf[24]);
                    }

                    if ((buf[23] & 0x80000000) != 0)
                    {
                      operator delete(*buf);
                    }
                  }

                  else
                  {

                    v16 = SALogObjectGeneral;
                    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 68289539;
                      *&buf[4] = 0;
                      *&buf[8] = 2082;
                      *&buf[10] = "";
                      *&buf[18] = 2081;
                      *&buf[20] = "weaHash";
                      *&buf[28] = 2113;
                      *&buf[30] = v34;
                      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", buf, 0x26u);
                    }
                  }
                }

                else
                {

                  v15 = SALogObjectGeneral;
                  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 68289539;
                    *&buf[4] = 0;
                    *&buf[8] = 2082;
                    *&buf[10] = "";
                    *&buf[18] = 2081;
                    *&buf[20] = "weaHashType";
                    *&buf[28] = 2113;
                    *&buf[30] = v34;
                    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", buf, 0x26u);
                  }
                }
              }

              else
              {
                v14 = SALogObjectGeneral;
                if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 68289539;
                  *&buf[4] = 0;
                  *&buf[8] = 2082;
                  *&buf[10] = "";
                  *&buf[18] = 2081;
                  *&buf[20] = "cmam";
                  *&buf[28] = 2113;
                  *&buf[30] = v34;
                  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", buf, 0x26u);
                }
              }
            }

            v5 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
          }

          while (v5);
        }

        v17 = [v34 objectForKey:@"sa"];
        if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v18 = 0;
          v19 = [v17 intValue] != 0;
          v20 = 1;
        }

        else
        {

          v22 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289539;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2081;
            *&buf[20] = "saPresent";
            *&buf[28] = 2113;
            v23 = v34;
            *&buf[30] = v34;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", buf, 0x26u);
            v20 = 0;
            v17 = 0;
            v19 = 0;
            v18 = 1;
LABEL_50:
            v32[106] = v19;
            v24 = [v23 objectForKey:@"igneous"];
            if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v32[105] = [v24 intValue] != 0;
              if (v20)
              {
                v25 = SALogObjectGeneral;
                if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 68289026;
                  *&buf[4] = 0;
                  *&buf[8] = 2082;
                  *&buf[10] = "";
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#capManifestEntry,#warning,parseFailed,both SA and Igneous keyword exist}", buf, 0x12u);
                }

LABEL_68:
                goto LABEL_69;
              }
            }

            else
            {

              v26 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68289539;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = "";
                *&buf[18] = 2081;
                *&buf[20] = "igneousPresent";
                *&buf[28] = 2113;
                *&buf[30] = v34;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", buf, 0x26u);
              }

              v32[105] = 0;
              if (v18)
              {
                v27 = SALogObjectGeneral;
                if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 68289026;
                  *&buf[4] = 0;
                  *&buf[8] = 2082;
                  *&buf[10] = "";
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#capManifestEntry,#warning,parseFailed,none of SA and Igneous keyword exist}", buf, 0x12u);
                }

                goto LABEL_68;
              }

              v24 = 0;
            }

            v28 = [v34 objectForKey:@"weaHandling"];
            if (!v28 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {

              v29 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68289539;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = "";
                *&buf[18] = 2081;
                *&buf[20] = "weaHandling";
                *&buf[28] = 2113;
                *&buf[30] = v34;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", buf, 0x26u);
              }

              v28 = @"None";
            }

            v30 = v28;
            sub_10001D128(v3, [(__CFString *)v28 UTF8String]);
            v32[104] = 1;

            goto LABEL_68;
          }

          v20 = 0;
          v17 = 0;
          v19 = 0;
          v18 = 1;
        }

        v23 = v34;
        goto LABEL_50;
      }
    }

    v21 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = "weaHashList";
      *&buf[28] = 2113;
      *&buf[30] = v34;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#effManifestEntry,#warning,parseFailed, field:%{private, location:escape_only}s, entry:%{private, location:escape_only}@}", buf, 0x26u);
    }
  }

LABEL_69:

  return v32;
}

void sub_10005DCE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  sub_10004DC98(a12, *(a11 + 144));
  if (*(a11 + 135) < 0)
  {
    operator delete(*a10);
  }

  sub_10005D22C(a11);

  _Unwind_Resume(a1);
}

void sub_10005DE64(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 16);
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = (a1 + 80);
    if (*(a1 + 103) < 0)
    {
      v6 = *v6;
    }

    v7 = *(a1 + 104);
    *buf = 68290307;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2049;
    v21 = v3;
    v22 = 2049;
    v23 = v5;
    v24 = 2049;
    v25 = v4;
    v26 = 2081;
    v27 = v6;
    v28 = 1025;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#capManifestEntry, serverTime:%{private}0.1f, effective:%{private}0.1f, expires:%{private}0.1f, uid:%{private, location:escape_only}s, fIsValid:%{private}hhd}", buf, 0x40u);
  }

  v8 = *(a1 + 136);
  v9 = (a1 + 144);
  if (v8 != (a1 + 144))
  {
    v10 = SALogObjectGeneral;
    do
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = v8 + 4;
        if (*(v8 + 55) < 0)
        {
          v11 = *v11;
        }

        v12 = v8 + 7;
        if (*(v8 + 79) < 0)
        {
          v12 = *v12;
        }

        *buf = 68289539;
        v17 = 0;
        v18 = 2082;
        v19 = "";
        v20 = 2081;
        v21 = v11;
        v22 = 2081;
        v23 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#capManifestEntry,weaList, weaHashType:%{private, location:escape_only}s, weaHash:%{private, location:escape_only}s}", buf, 0x26u);
        v10 = SALogObjectGeneral;
      }

      v13 = v8[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v8[2];
          v15 = *v14 == v8;
          v8 = v14;
        }

        while (!v15);
      }

      v8 = v14;
    }

    while (v14 != v9);
  }
}

void sub_10005E074(uint64_t a1)
{
  sub_10005E134(a1);

  operator delete();
}

void sub_10005E0B0(uint64_t a1)
{
  sub_10005E194(a1);

  operator delete();
}

uint64_t sub_10005E0F0(uint64_t a1)
{
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

uint64_t sub_10005E134(uint64_t a1)
{
  *a1 = off_10013C180;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  return sub_10005D22C(a1);
}

uint64_t sub_10005E194(uint64_t a1)
{
  *a1 = off_10013C1A8;
  sub_10004DC98(a1 + 136, *(a1 + 144));
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  return sub_10005D22C(a1);
}

id **sub_10005E200(id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    *v2 = 0;

    operator delete();
  }

  return result;
}

uint64_t sub_10005E26C(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validateIntensity,getIsRichAlertsEnabled is true}", buf, 0x12u);
  }

  memset(buf, 0, sizeof(buf));
  __asm { FMOV            V1.2D, #-1.0 }

  v37 = 0u;
  v38 = _Q1;
  v39 = _Q1;
  v40 = 0xBFF0000000000000;
  memset(v41, 0, sizeof(v41));
  v42 = 1065353216;
  memset(v43, 0, sizeof(v43));
  v44 = 1065353216;
  v7 = sub_10008E020();
  sub_10008F5B0(v7, buf);
  v8 = *(a1 + 312);
  v9 = sub_10005FF30(*&v43[0], *(&v43[0] + 1), *(a1 + 312));
  if (!v9)
  {
    v22 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 68289283;
      *&v25[4] = 0;
      v26 = 2082;
      v27 = "";
      v28 = 1025;
      LODWORD(v29) = v8;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validateIntensity,source Not found, senderId:%{private}d}", v25, 0x18u);
    }

    goto LABEL_21;
  }

  v10 = v9[12];
  v11 = v9[13];
  if (v10 == v11)
  {
LABEL_21:
    v21 = 0;
    goto LABEL_22;
  }

  v12 = SALogObjectGeneral;
  while (1)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v10 + 2);
      v14 = *(v10 + 3);
      v15 = *v10;
      v16 = *(v10 + 1);
      *v25 = 68290051;
      *&v25[4] = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2049;
      v29 = v13;
      v30 = 2049;
      v31 = v14;
      v32 = 2049;
      v33 = v15;
      v34 = 2049;
      v35 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validateIntensity,mmiBand, minMagnitude:%{private}.1f, maxMagnitude:%{private}.1f, minIntensity:%{private}.1f, maxIntensity:%{private}.1f}", v25, 0x3Au);
      v12 = SALogObjectGeneral;
    }

    v17 = *(a1 + 264);
    if (v17 >= *v10 && v17 < v10[1])
    {
      v19 = *(a1 + 256);
      if (v19 >= v10[2] && v19 < v10[3])
      {
        break;
      }
    }

    v10 += 8;
    if (v10 == v11)
    {
      v21 = 0;
      goto LABEL_22;
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 68289026;
    *&v25[4] = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validateIntensity,found}", v25, 0x12u);
  }

  v21 = 1;
LABEL_22:
  v23 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 68289283;
    *&v25[4] = 0;
    v26 = 2082;
    v27 = "";
    v28 = 1025;
    LODWORD(v29) = v21;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validateIntensity, result:%{private}hhd}", v25, 0x18u);
  }

  sub_10002D804(v43);
  sub_10002DA28(v41);
  *v25 = &buf[24];
  sub_100005208(v25);
  *v25 = buf;
  sub_100005208(v25);
  return v21;
}

void sub_10005E5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_10002BE00(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005E5FC(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 68289026;
    LOWORD(buf[1]) = 2082;
    *(&buf[1] + 2) = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validate}", buf, 0x12u);
    v2 = SALogObjectGeneral;
  }

  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    v4 = *(a1 + 152);
    if (*(a1 + 175) >= 0)
    {
      v4 = a1 + 152;
    }

    v5 = *(a1 + 352);
    v6 = *(a1 + 384);
    v7 = *(a1 + 184);
    v8 = *(a1 + 192);
    v9 = *(a1 + 200);
    v10 = *(a1 + 208);
    v11 = *(a1 + 216);
    v12 = *(a1 + 320);
    buf[0] = 68292355;
    LOWORD(buf[1]) = 2082;
    *(&buf[1] + 2) = "";
    WORD1(buf[2]) = 2081;
    *(&buf[2] + 4) = "info";
    WORD2(buf[3]) = 2081;
    *(&buf[3] + 6) = "igAlertFlow";
    HIWORD(buf[4]) = 2081;
    buf[5] = "igv";
    LOWORD(v234[0]) = 2081;
    *(v234 + 2) = "validate";
    WORD5(v234[0]) = 2081;
    *(v234 + 12) = v4;
    WORD2(v234[1]) = 1025;
    *(&v234[1] + 6) = v5;
    WORD5(v234[1]) = 1025;
    HIDWORD(v234[1]) = v6;
    LOWORD(v235[0]) = 2049;
    *(v235 + 2) = v7;
    WORD1(v235[1]) = 2049;
    *(&v235[1] + 4) = v8;
    WORD2(v235[2]) = 2049;
    *(&v235[2] + 6) = v9;
    HIWORD(v235[3]) = 2049;
    v235[4] = v10;
    LOWORD(v236[0]) = 2049;
    *(v236 + 2) = v11;
    WORD1(v236[1]) = 2049;
    *(&v236[1] + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:validating alert, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
  }

  if (*(a1 + 180) != 4)
  {
    if (*(a1 + 312) >> 10 < 0x3Fu || (*(SAPlatformInfo::instance(v3) + 9) & 1) != 0)
    {
      memset(buf, 0, sizeof(buf));
      __asm { FMOV            V1.2D, #-1.0 }

      v234[0] = _Q1;
      v199 = _Q1;
      v234[1] = _Q1;
      v235[0] = 0xBFF0000000000000;
      memset(&v235[1], 0, 32);
      LODWORD(v236[0]) = 1065353216;
      *&v236[1] = 0u;
      v237 = 0u;
      v238 = 1065353216;
      v31 = sub_10008E020();
      sub_10008F5B0(v31, buf);
      v32 = *(a1 + 312);
      v33 = sub_10005FF30(v236[1], v236[2], *(a1 + 312));
      if (!v33)
      {
        v34 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v35 = *(a1 + 152);
          if (*(a1 + 175) >= 0)
          {
            v35 = a1 + 152;
          }

          v36 = *(a1 + 352);
          v37 = *(a1 + 384);
          v38 = *(a1 + 184);
          v39 = *(a1 + 192);
          v40 = *(a1 + 200);
          v41 = *(a1 + 208);
          v42 = *(a1 + 216);
          v43 = *(a1 + 320);
          *v202 = 68292611;
          *&v202[4] = 0;
          v203 = 2082;
          v204 = "";
          v205 = 2081;
          v206 = "warning";
          v207 = 2081;
          v208 = "igAlertFlow";
          v209 = 2081;
          v210 = "igv";
          v211 = 2081;
          v212 = "validateSenderId";
          v213 = 2081;
          v214 = v35;
          v215 = 1025;
          v216 = v36;
          v217 = 1025;
          v218 = v37;
          v219 = 2049;
          v220 = v38;
          v221 = 2049;
          v222 = v39;
          v223 = 2049;
          v224 = v40;
          v225 = 2049;
          v226 = v41;
          v227 = 2049;
          v228 = v42;
          v229 = 2049;
          v230 = v43;
          v231 = 1025;
          v232 = v32;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:senderId not found in sourceConfig, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f, senderId:%{private}d}", v202, 0x92u);
        }
      }

      sub_10002D804(&v236[1]);
      sub_10002DA28(&v235[1]);
      *v202 = &buf[3];
      sub_100005208(v202);
      *v202 = buf;
      sub_100005208(v202);
      if (v33)
      {
        if (*(a1 + 184) < 2.22044605e-16 || (v44 = vdupq_n_s64(0x3CB0000000000000uLL), (vaddvq_s32(vandq_s8(vuzp1q_s32(vcgtq_f64(v44, *(a1 + 192)), vcgtq_f64(v44, *(a1 + 208))), xmmword_1000E20A0)) & 0xF) != 0))
        {
          v55 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            buf[0] = 68289026;
            LOWORD(buf[1]) = 2082;
            *(&buf[1] + 2) = "";
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validate,time invalid}", buf, 0x12u);
            v55 = SALogObjectGeneral;
          }

          if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            return 0;
          }

          v92 = *(a1 + 152);
          v91 = a1 + 152;
          v90 = v92;
          if (*(v91 + 23) >= 0)
          {
            v90 = v91;
          }

          v93 = *(v91 + 200);
          v94 = *(v91 + 232);
          v95 = *(v91 + 32);
          v96 = *(v91 + 40);
          v97 = *(v91 + 48);
          v98 = *(v91 + 56);
          v99 = *(v91 + 64);
          v100 = *(v91 + 168);
          buf[0] = 68292355;
          LOWORD(buf[1]) = 2082;
          *(&buf[1] + 2) = "";
          WORD1(buf[2]) = 2081;
          *(&buf[2] + 4) = "warning";
          WORD2(buf[3]) = 2081;
          *(&buf[3] + 6) = "igAlertFlow";
          HIWORD(buf[4]) = 2081;
          buf[5] = "igv";
          LOWORD(v234[0]) = 2081;
          *(v234 + 2) = "validate";
          WORD5(v234[0]) = 2081;
          *(v234 + 12) = v90;
          WORD2(v234[1]) = 1025;
          *(&v234[1] + 6) = v93;
          WORD5(v234[1]) = 1025;
          HIDWORD(v234[1]) = v94;
          LOWORD(v235[0]) = 2049;
          *(v235 + 2) = v95;
          WORD1(v235[1]) = 2049;
          *(&v235[1] + 4) = v96;
          WORD2(v235[2]) = 2049;
          *(&v235[2] + 6) = v97;
          HIWORD(v235[3]) = 2049;
          v235[4] = v98;
          LOWORD(v236[0]) = 2049;
          *(v236 + 2) = v99;
          WORD1(v236[1]) = 2049;
          *(&v236[1] + 4) = v100;
          v68 = "{msg%{public}.0s:time invalid, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
          goto LABEL_66;
        }

        v45 = *(a1 + 240);
        v46 = *(a1 + 248);
        v47 = v45 != 0.0;
        if (v46 != 0.0)
        {
          v47 = 1;
        }

        if (v46 > 180.0 || v46 < -180.0 || v45 > 90.0 || v45 < -90.0 || !v47)
        {
          v55 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            buf[0] = 68289026;
            LOWORD(buf[1]) = 2082;
            *(&buf[1] + 2) = "";
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validate,location invalid}", buf, 0x12u);
            v55 = SALogObjectGeneral;
          }

          if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            return 0;
          }

          v103 = *(a1 + 152);
          v102 = a1 + 152;
          v101 = v103;
          if (*(v102 + 23) >= 0)
          {
            v101 = v102;
          }

          v104 = *(v102 + 200);
          v105 = *(v102 + 232);
          v106 = *(v102 + 32);
          v107 = *(v102 + 40);
          v108 = *(v102 + 48);
          v109 = *(v102 + 56);
          v110 = *(v102 + 64);
          v111 = *(v102 + 168);
          buf[0] = 68292355;
          LOWORD(buf[1]) = 2082;
          *(&buf[1] + 2) = "";
          WORD1(buf[2]) = 2081;
          *(&buf[2] + 4) = "warning";
          WORD2(buf[3]) = 2081;
          *(&buf[3] + 6) = "igAlertFlow";
          HIWORD(buf[4]) = 2081;
          buf[5] = "igv";
          LOWORD(v234[0]) = 2081;
          *(v234 + 2) = "validate";
          WORD5(v234[0]) = 2081;
          *(v234 + 12) = v101;
          WORD2(v234[1]) = 1025;
          *(&v234[1] + 6) = v104;
          WORD5(v234[1]) = 1025;
          HIDWORD(v234[1]) = v105;
          LOWORD(v235[0]) = 2049;
          *(v235 + 2) = v106;
          WORD1(v235[1]) = 2049;
          *(&v235[1] + 4) = v107;
          WORD2(v235[2]) = 2049;
          *(&v235[2] + 6) = v108;
          HIWORD(v235[3]) = 2049;
          v235[4] = v109;
          LOWORD(v236[0]) = 2049;
          *(v236 + 2) = v110;
          WORD1(v236[1]) = 2049;
          *(&v236[1] + 4) = v111;
          v68 = "{msg%{public}.0s:location invalid, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
          goto LABEL_66;
        }

        memset(buf, 0, sizeof(buf));
        v234[0] = v199;
        v234[1] = v199;
        v235[0] = 0xBFF0000000000000;
        memset(&v235[1], 0, 32);
        LODWORD(v236[0]) = 1065353216;
        *&v236[1] = 0u;
        v237 = 0u;
        v238 = 1065353216;
        v48 = sub_10008E020();
        sub_10008F5B0(v48, buf);
        Current = CFAbsoluteTimeGetCurrent();
        v50 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v51 = *(a1 + 192);
          *v202 = 68289794;
          *&v202[4] = 0;
          v203 = 2082;
          v204 = "";
          v205 = 2050;
          v206 = *&Current;
          v207 = 2050;
          v208 = v51;
          v209 = 2050;
          v210 = *(&v234[1] + 1);
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,isStaleAlert, nowSeconds:%{public}0.3f, egressTime:%{public}0.3f, ignoreAlertDuration:%{public}0.3f}", v202, 0x30u);
        }

        v52 = vabdd_f64(Current, *(a1 + 192));
        v53 = *(&v234[1] + 1);
        if (v52 > *(&v234[1] + 1))
        {
          v54 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *v202 = 68289026;
            *&v202[4] = 0;
            v203 = 2082;
            v204 = "";
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,isStaleAlert,stale alert received}", v202, 0x12u);
          }
        }

        sub_10002D804(&v236[1]);
        sub_10002DA28(&v235[1]);
        *v202 = &buf[3];
        sub_100005208(v202);
        *v202 = buf;
        sub_100005208(v202);
        v55 = SALogObjectGeneral;
        v56 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
        if (v52 > v53)
        {
          if (v56)
          {
            buf[0] = 68289026;
            LOWORD(buf[1]) = 2082;
            *(&buf[1] + 2) = "";
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validate,stale alert}", buf, 0x12u);
            v55 = SALogObjectGeneral;
          }

          if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            return 0;
          }

          v59 = *(a1 + 152);
          v58 = a1 + 152;
          v57 = v59;
          if (*(v58 + 23) >= 0)
          {
            v57 = v58;
          }

          v60 = *(v58 + 200);
          v61 = *(v58 + 232);
          v62 = *(v58 + 32);
          v63 = *(v58 + 40);
          v64 = *(v58 + 48);
          v65 = *(v58 + 56);
          v66 = *(v58 + 64);
          v67 = *(v58 + 168);
          buf[0] = 68292355;
          LOWORD(buf[1]) = 2082;
          *(&buf[1] + 2) = "";
          WORD1(buf[2]) = 2081;
          *(&buf[2] + 4) = "warning";
          WORD2(buf[3]) = 2081;
          *(&buf[3] + 6) = "igAlertFlow";
          HIWORD(buf[4]) = 2081;
          buf[5] = "igv";
          LOWORD(v234[0]) = 2081;
          *(v234 + 2) = "validate";
          WORD5(v234[0]) = 2081;
          *(v234 + 12) = v57;
          WORD2(v234[1]) = 1025;
          *(&v234[1] + 6) = v60;
          WORD5(v234[1]) = 1025;
          HIDWORD(v234[1]) = v61;
          LOWORD(v235[0]) = 2049;
          *(v235 + 2) = v62;
          WORD1(v235[1]) = 2049;
          *(&v235[1] + 4) = v63;
          WORD2(v235[2]) = 2049;
          *(&v235[2] + 6) = v64;
          HIWORD(v235[3]) = 2049;
          v235[4] = v65;
          LOWORD(v236[0]) = 2049;
          *(v236 + 2) = v66;
          WORD1(v236[1]) = 2049;
          *(&v236[1] + 4) = v67;
          v68 = "{msg%{public}.0s:stale alert, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
          goto LABEL_66;
        }

        if (v56)
        {
          buf[0] = 68289026;
          LOWORD(buf[1]) = 2082;
          *(&buf[1] + 2) = "";
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validateAlertSignature}", buf, 0x12u);
        }

        if (*(a1 + 384) == 1)
        {
          *(a1 + 176) = 1;
          v113 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            buf[0] = 68289283;
            LOWORD(buf[1]) = 2082;
            *(&buf[1] + 2) = "";
            WORD1(buf[2]) = 1025;
            HIDWORD(buf[2]) = 1;
            _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igbv,validateAlertSignature,APNS, isAuthenticated:%{private}hhd}", buf, 0x18u);
          }

LABEL_78:
          if (*(a1 + 328) != 1 || (v116 = *(a1 + 336)) != 0 && (*(v116 + 8) & 1) != 0)
          {
            v117 = sub_100002DB0();
            if (*(v117 + 147) == 1 && *(v117 + 146) == 1)
            {
              v118 = sub_100002DB0();
              if (*(v118 + 107) == 1 && (*(v118 + 106) & 1) != 0)
              {
                v119 = sub_100002DB0();
                v120 = *v119;
                v121 = *(v119 + 1);
                v122 = *(v119 + 3);
                v123 = [NSNumber numberWithDouble:*(a1 + 248)];
                v200[0] = v123;
                v124 = [NSNumber numberWithDouble:*(a1 + 240)];
                v200[1] = v124;
                v125 = [NSNumber numberWithDouble:*(a1 + 288)];
                v200[2] = v125;
                v126 = [NSArray arrayWithObjects:v200 count:3];
                v201 = v126;
                v127 = [NSArray arrayWithObjects:&v201 count:1];

                if (SAGeometry::isLocationInCircle(v127, v120, v121, v122, v128))
                {
                  v129 = sub_10005E26C(a1);
                  v130 = SALogObjectGeneral;
                  v131 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
                  if (v129)
                  {
                    if (v131)
                    {
                      v134 = *(a1 + 152);
                      v133 = a1 + 152;
                      v132 = v134;
                      if (*(v133 + 23) >= 0)
                      {
                        v132 = v133;
                      }

                      v135 = *(v133 + 200);
                      v136 = *(v133 + 232);
                      v137 = *(v133 + 32);
                      v138 = *(v133 + 40);
                      v139 = *(v133 + 48);
                      v140 = *(v133 + 56);
                      v141 = *(v133 + 64);
                      v142 = *(v133 + 168);
                      buf[0] = 68292355;
                      LOWORD(buf[1]) = 2082;
                      *(&buf[1] + 2) = "";
                      WORD1(buf[2]) = 2081;
                      *(&buf[2] + 4) = "info";
                      WORD2(buf[3]) = 2081;
                      *(&buf[3] + 6) = "igAlertFlow";
                      HIWORD(buf[4]) = 2081;
                      buf[5] = "igv";
                      LOWORD(v234[0]) = 2081;
                      *(v234 + 2) = "validate";
                      WORD5(v234[0]) = 2081;
                      *(v234 + 12) = v132;
                      WORD2(v234[1]) = 1025;
                      *(&v234[1] + 6) = v135;
                      WORD5(v234[1]) = 1025;
                      HIDWORD(v234[1]) = v136;
                      LOWORD(v235[0]) = 2049;
                      *(v235 + 2) = v137;
                      WORD1(v235[1]) = 2049;
                      *(&v235[1] + 4) = v138;
                      WORD2(v235[2]) = 2049;
                      *(&v235[2] + 6) = v139;
                      HIWORD(v235[3]) = 2049;
                      v235[4] = v140;
                      LOWORD(v236[0]) = 2049;
                      *(v236 + 2) = v141;
                      WORD1(v236[1]) = 2049;
                      *(&v236[1] + 4) = v142;
                      _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:alert validated, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
                    }

                    v25 = 1;
                    goto LABEL_124;
                  }

                  if (v131)
                  {
                    buf[0] = 68289026;
                    LOWORD(buf[1]) = 2082;
                    *(&buf[1] + 2) = "";
                    _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validate,alert received below threshold level}", buf, 0x12u);
                    v130 = SALogObjectGeneral;
                  }

                  if (!os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_123:
                    v25 = 0;
LABEL_124:

                    return v25;
                  }

                  v190 = *(a1 + 152);
                  v189 = a1 + 152;
                  v188 = v190;
                  if (*(v189 + 23) >= 0)
                  {
                    v188 = v189;
                  }

                  v191 = *(v189 + 200);
                  v192 = *(v189 + 232);
                  v193 = *(v189 + 32);
                  v194 = *(v189 + 40);
                  v195 = *(v189 + 48);
                  v196 = *(v189 + 56);
                  v197 = *(v189 + 64);
                  v198 = *(v189 + 168);
                  buf[0] = 68292355;
                  LOWORD(buf[1]) = 2082;
                  *(&buf[1] + 2) = "";
                  WORD1(buf[2]) = 2081;
                  *(&buf[2] + 4) = "warning";
                  WORD2(buf[3]) = 2081;
                  *(&buf[3] + 6) = "igAlertFlow";
                  HIWORD(buf[4]) = 2081;
                  buf[5] = "igv";
                  LOWORD(v234[0]) = 2081;
                  *(v234 + 2) = "validate";
                  WORD5(v234[0]) = 2081;
                  *(v234 + 12) = v188;
                  WORD2(v234[1]) = 1025;
                  *(&v234[1] + 6) = v191;
                  WORD5(v234[1]) = 1025;
                  HIDWORD(v234[1]) = v192;
                  LOWORD(v235[0]) = 2049;
                  *(v235 + 2) = v193;
                  WORD1(v235[1]) = 2049;
                  *(&v235[1] + 4) = v194;
                  WORD2(v235[2]) = 2049;
                  *(&v235[2] + 6) = v195;
                  HIWORD(v235[3]) = 2049;
                  v235[4] = v196;
                  LOWORD(v236[0]) = 2049;
                  *(v236 + 2) = v197;
                  WORD1(v236[1]) = 2049;
                  *(&v236[1] + 4) = v198;
                  v187 = "{msg%{public}.0s:alert received below threshold level, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
                }

                else
                {
                  v130 = SALogObjectGeneral;
                  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                  {
                    buf[0] = 68289026;
                    LOWORD(buf[1]) = 2082;
                    *(&buf[1] + 2) = "";
                    _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validate,device not in polygon}", buf, 0x12u);
                    v130 = SALogObjectGeneral;
                  }

                  if (!os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_123;
                  }

                  v178 = *(a1 + 152);
                  v177 = a1 + 152;
                  v176 = v178;
                  if (*(v177 + 23) >= 0)
                  {
                    v176 = v177;
                  }

                  v179 = *(v177 + 200);
                  v180 = *(v177 + 232);
                  v181 = *(v177 + 32);
                  v182 = *(v177 + 40);
                  v183 = *(v177 + 48);
                  v184 = *(v177 + 56);
                  v185 = *(v177 + 64);
                  v186 = *(v177 + 168);
                  buf[0] = 68292355;
                  LOWORD(buf[1]) = 2082;
                  *(&buf[1] + 2) = "";
                  WORD1(buf[2]) = 2081;
                  *(&buf[2] + 4) = "warning";
                  WORD2(buf[3]) = 2081;
                  *(&buf[3] + 6) = "igAlertFlow";
                  HIWORD(buf[4]) = 2081;
                  buf[5] = "igv";
                  LOWORD(v234[0]) = 2081;
                  *(v234 + 2) = "validate";
                  WORD5(v234[0]) = 2081;
                  *(v234 + 12) = v176;
                  WORD2(v234[1]) = 1025;
                  *(&v234[1] + 6) = v179;
                  WORD5(v234[1]) = 1025;
                  HIDWORD(v234[1]) = v180;
                  LOWORD(v235[0]) = 2049;
                  *(v235 + 2) = v181;
                  WORD1(v235[1]) = 2049;
                  *(&v235[1] + 4) = v182;
                  WORD2(v235[2]) = 2049;
                  *(&v235[2] + 6) = v183;
                  HIWORD(v235[3]) = 2049;
                  v235[4] = v184;
                  LOWORD(v236[0]) = 2049;
                  *(v236 + 2) = v185;
                  WORD1(v236[1]) = 2049;
                  *(&v236[1] + 4) = v186;
                  v187 = "{msg%{public}.0s:device not in polygon, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
                }

                _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, v187, buf, 0x8Cu);
                goto LABEL_123;
              }
            }

            v55 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              buf[0] = 68289026;
              LOWORD(buf[1]) = 2082;
              *(&buf[1] + 2) = "";
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validate,invalid location}", buf, 0x12u);
              v55 = SALogObjectGeneral;
            }

            if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              return 0;
            }

            v145 = *(a1 + 152);
            v144 = a1 + 152;
            v143 = v145;
            if (*(v144 + 23) >= 0)
            {
              v143 = v144;
            }

            v146 = *(v144 + 200);
            v147 = *(v144 + 232);
            v148 = *(v144 + 32);
            v149 = *(v144 + 40);
            v150 = *(v144 + 48);
            v151 = *(v144 + 56);
            v152 = *(v144 + 64);
            v153 = *(v144 + 168);
            buf[0] = 68292355;
            LOWORD(buf[1]) = 2082;
            *(&buf[1] + 2) = "";
            WORD1(buf[2]) = 2081;
            *(&buf[2] + 4) = "warning";
            WORD2(buf[3]) = 2081;
            *(&buf[3] + 6) = "igAlertFlow";
            HIWORD(buf[4]) = 2081;
            buf[5] = "igv";
            LOWORD(v234[0]) = 2081;
            *(v234 + 2) = "validate";
            WORD5(v234[0]) = 2081;
            *(v234 + 12) = v143;
            WORD2(v234[1]) = 1025;
            *(&v234[1] + 6) = v146;
            WORD5(v234[1]) = 1025;
            HIDWORD(v234[1]) = v147;
            LOWORD(v235[0]) = 2049;
            *(v235 + 2) = v148;
            WORD1(v235[1]) = 2049;
            *(&v235[1] + 4) = v149;
            WORD2(v235[2]) = 2049;
            *(&v235[2] + 6) = v150;
            HIWORD(v235[3]) = 2049;
            v235[4] = v151;
            LOWORD(v236[0]) = 2049;
            *(v236 + 2) = v152;
            WORD1(v236[1]) = 2049;
            *(&v236[1] + 4) = v153;
            v68 = "{msg%{public}.0s:invalid location, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
          }

          else
          {
            v55 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              buf[0] = 68289026;
              LOWORD(buf[1]) = 2082;
              *(&buf[1] + 2) = "";
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validate,invalid geometry}", buf, 0x12u);
              v55 = SALogObjectGeneral;
            }

            if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              return 0;
            }

            v156 = *(a1 + 152);
            v155 = a1 + 152;
            v154 = v156;
            if (*(v155 + 23) >= 0)
            {
              v154 = v155;
            }

            v157 = *(v155 + 200);
            v158 = *(v155 + 232);
            v159 = *(v155 + 32);
            v160 = *(v155 + 40);
            v161 = *(v155 + 48);
            v162 = *(v155 + 56);
            v163 = *(v155 + 64);
            v164 = *(v155 + 168);
            buf[0] = 68292355;
            LOWORD(buf[1]) = 2082;
            *(&buf[1] + 2) = "";
            WORD1(buf[2]) = 2081;
            *(&buf[2] + 4) = "warning";
            WORD2(buf[3]) = 2081;
            *(&buf[3] + 6) = "igAlertFlow";
            HIWORD(buf[4]) = 2081;
            buf[5] = "igv";
            LOWORD(v234[0]) = 2081;
            *(v234 + 2) = "validate";
            WORD5(v234[0]) = 2081;
            *(v234 + 12) = v154;
            WORD2(v234[1]) = 1025;
            *(&v234[1] + 6) = v157;
            WORD5(v234[1]) = 1025;
            HIDWORD(v234[1]) = v158;
            LOWORD(v235[0]) = 2049;
            *(v235 + 2) = v159;
            WORD1(v235[1]) = 2049;
            *(&v235[1] + 4) = v160;
            WORD2(v235[2]) = 2049;
            *(&v235[2] + 6) = v161;
            HIWORD(v235[3]) = 2049;
            v235[4] = v162;
            LOWORD(v236[0]) = 2049;
            *(v236 + 2) = v163;
            WORD1(v236[1]) = 2049;
            *(&v236[1] + 4) = v164;
            v68 = "{msg%{public}.0s:invalid geometry, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
          }

LABEL_66:
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, v68, buf, 0x8Cu);
          return 0;
        }

        v114 = sub_10001FA68();
        v115 = sub_100021484(v114, a1 + 104, (a1 + 128));
        *(a1 + 176) = v115;
        v55 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          buf[0] = 68289283;
          LOWORD(buf[1]) = 2082;
          *(&buf[1] + 2) = "";
          WORD1(buf[2]) = 1025;
          HIDWORD(buf[2]) = v115;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igbv,validateAlertSignature, isAuthenticated:%{private}hhd}", buf, 0x18u);
          if (*(a1 + 176))
          {
            goto LABEL_78;
          }

          v55 = SALogObjectGeneral;
        }

        else if (v115)
        {
          goto LABEL_78;
        }

        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          buf[0] = 68289026;
          LOWORD(buf[1]) = 2082;
          *(&buf[1] + 2) = "";
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validate,not authenticated}", buf, 0x12u);
          v55 = SALogObjectGeneral;
        }

        if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          return 0;
        }

        v167 = *(a1 + 152);
        v166 = a1 + 152;
        v165 = v167;
        if (*(v166 + 23) >= 0)
        {
          v165 = v166;
        }

        v168 = *(v166 + 200);
        v169 = *(v166 + 232);
        v170 = *(v166 + 32);
        v171 = *(v166 + 40);
        v172 = *(v166 + 48);
        v173 = *(v166 + 56);
        v174 = *(v166 + 64);
        v175 = *(v166 + 168);
        buf[0] = 68292355;
        LOWORD(buf[1]) = 2082;
        *(&buf[1] + 2) = "";
        WORD1(buf[2]) = 2081;
        *(&buf[2] + 4) = "warning";
        WORD2(buf[3]) = 2081;
        *(&buf[3] + 6) = "igAlertFlow";
        HIWORD(buf[4]) = 2081;
        buf[5] = "igv";
        LOWORD(v234[0]) = 2081;
        *(v234 + 2) = "validate";
        WORD5(v234[0]) = 2081;
        *(v234 + 12) = v165;
        WORD2(v234[1]) = 1025;
        *(&v234[1] + 6) = v168;
        WORD5(v234[1]) = 1025;
        HIDWORD(v234[1]) = v169;
        LOWORD(v235[0]) = 2049;
        *(v235 + 2) = v170;
        WORD1(v235[1]) = 2049;
        *(&v235[1] + 4) = v171;
        WORD2(v235[2]) = 2049;
        *(&v235[2] + 6) = v172;
        HIWORD(v235[3]) = 2049;
        v235[4] = v173;
        LOWORD(v236[0]) = 2049;
        *(v236 + 2) = v174;
        WORD1(v236[1]) = 2049;
        *(&v236[1] + 4) = v175;
        v68 = "{msg%{public}.0s:not authenticated, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
        goto LABEL_66;
      }
    }

    else
    {
      v69 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf[0] = 68289026;
        LOWORD(buf[1]) = 2082;
        *(&buf[1] + 2) = "";
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validateSenderId,not internal install}", buf, 0x12u);
        v69 = SALogObjectGeneral;
      }

      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v70 = *(a1 + 152);
        if (*(a1 + 175) >= 0)
        {
          v70 = a1 + 152;
        }

        v71 = *(a1 + 352);
        v72 = *(a1 + 384);
        v73 = *(a1 + 184);
        v74 = *(a1 + 192);
        v75 = *(a1 + 200);
        v76 = *(a1 + 208);
        v77 = *(a1 + 216);
        v78 = *(a1 + 320);
        buf[0] = 68292355;
        LOWORD(buf[1]) = 2082;
        *(&buf[1] + 2) = "";
        WORD1(buf[2]) = 2081;
        *(&buf[2] + 4) = "warning";
        WORD2(buf[3]) = 2081;
        *(&buf[3] + 6) = "igAlertFlow";
        HIWORD(buf[4]) = 2081;
        buf[5] = "igv";
        LOWORD(v234[0]) = 2081;
        *(v234 + 2) = "validateSenderId";
        WORD5(v234[0]) = 2081;
        *(v234 + 12) = v70;
        WORD2(v234[1]) = 1025;
        *(&v234[1] + 6) = v71;
        WORD5(v234[1]) = 1025;
        HIDWORD(v234[1]) = v72;
        LOWORD(v235[0]) = 2049;
        *(v235 + 2) = v73;
        WORD1(v235[1]) = 2049;
        *(&v235[1] + 4) = v74;
        WORD2(v235[2]) = 2049;
        *(&v235[2] + 6) = v75;
        HIWORD(v235[3]) = 2049;
        v235[4] = v76;
        LOWORD(v236[0]) = 2049;
        *(v236 + 2) = v77;
        WORD1(v236[1]) = 2049;
        *(&v236[1] + 4) = v78;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:not internal device, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
      }
    }

    v55 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v81 = *(a1 + 152);
    v80 = a1 + 152;
    v79 = v81;
    if (*(v80 + 23) >= 0)
    {
      v79 = v80;
    }

    v82 = *(v80 + 200);
    v83 = *(v80 + 232);
    v84 = *(v80 + 32);
    v85 = *(v80 + 40);
    v86 = *(v80 + 48);
    v87 = *(v80 + 56);
    v88 = *(v80 + 64);
    v89 = *(v80 + 168);
    buf[0] = 68292355;
    LOWORD(buf[1]) = 2082;
    *(&buf[1] + 2) = "";
    WORD1(buf[2]) = 2081;
    *(&buf[2] + 4) = "warning";
    WORD2(buf[3]) = 2081;
    *(&buf[3] + 6) = "igAlertFlow";
    HIWORD(buf[4]) = 2081;
    buf[5] = "igv";
    LOWORD(v234[0]) = 2081;
    *(v234 + 2) = "validate";
    WORD5(v234[0]) = 2081;
    *(v234 + 12) = v79;
    WORD2(v234[1]) = 1025;
    *(&v234[1] + 6) = v82;
    WORD5(v234[1]) = 1025;
    HIDWORD(v234[1]) = v83;
    LOWORD(v235[0]) = 2049;
    *(v235 + 2) = v84;
    WORD1(v235[1]) = 2049;
    *(&v235[1] + 4) = v85;
    WORD2(v235[2]) = 2049;
    *(&v235[2] + 6) = v86;
    HIWORD(v235[3]) = 2049;
    v235[4] = v87;
    LOWORD(v236[0]) = 2049;
    *(v236 + 2) = v88;
    WORD1(v236[1]) = 2049;
    *(&v236[1] + 4) = v89;
    v68 = "{msg%{public}.0s:sender id invalid, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
    goto LABEL_66;
  }

  v13 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 68289026;
    LOWORD(buf[1]) = 2082;
    *(&buf[1] + 2) = "";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igv,validate,followup alert valid}", buf, 0x12u);
    v13 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 152);
    v15 = a1 + 152;
    v14 = v16;
    if (*(v15 + 23) >= 0)
    {
      v14 = v15;
    }

    v17 = *(v15 + 200);
    v18 = *(v15 + 232);
    v19 = *(v15 + 32);
    v20 = *(v15 + 40);
    v21 = *(v15 + 48);
    v22 = *(v15 + 56);
    v23 = *(v15 + 64);
    v24 = *(v15 + 168);
    buf[0] = 68292355;
    LOWORD(buf[1]) = 2082;
    *(&buf[1] + 2) = "";
    WORD1(buf[2]) = 2081;
    *(&buf[2] + 4) = "info";
    WORD2(buf[3]) = 2081;
    *(&buf[3] + 6) = "igAlertFlow";
    HIWORD(buf[4]) = 2081;
    buf[5] = "igv";
    LOWORD(v234[0]) = 2081;
    *(v234 + 2) = "validate";
    WORD5(v234[0]) = 2081;
    *(v234 + 12) = v14;
    WORD2(v234[1]) = 1025;
    *(&v234[1] + 6) = v17;
    WORD5(v234[1]) = 1025;
    HIDWORD(v234[1]) = v18;
    LOWORD(v235[0]) = 2049;
    *(v235 + 2) = v19;
    WORD1(v235[1]) = 2049;
    *(&v235[1] + 4) = v20;
    WORD2(v235[2]) = 2049;
    *(&v235[2] + 6) = v21;
    HIWORD(v235[3]) = 2049;
    v235[4] = v22;
    LOWORD(v236[0]) = 2049;
    *(v236 + 2) = v23;
    WORD1(v236[1]) = 2049;
    *(&v236[1] + 4) = v24;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:followup alert valid, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
  }

  return 1;
}
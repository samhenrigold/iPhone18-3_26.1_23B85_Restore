BOOL sub_1002D5358(uint64_t a1, double *a2)
{
  if (*(a1 + 112))
  {
    sub_100109D18((a1 + 32), *a2, a2[1], *(a1 + 96), *(a1 + 104), 0.0);
    v4 = v3;
    *(a1 + 72) = v3;
    *(a1 + 80) = 1;
    v5 = *(a1 + 136);
    v6 = v3 >= v5;
    if (qword_1025D41D0 != -1)
    {
      sub_101920FA8();
    }

    v7 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 80) & 1) == 0)
      {
        goto LABEL_21;
      }

      v8 = *(a1 + 72);
      v9 = *(a1 + 136);
      *buf = 134349568;
      v23 = v8;
      v24 = 2050;
      v25 = v9;
      v26 = 1026;
      v27 = v4 >= v5;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#cltm,fDistanceFromLastQueryLocation_m,%{public}.1f,fMinimumDistanceForNewQuery_m,%{public}.1f,isQueryNeeded,%{public}d", buf, 0x1Cu);
    }

    if (!sub_10000A100(121, 2))
    {
      return v6;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D41D0 != -1)
    {
      sub_101921098();
    }

    if (*(a1 + 80))
    {
      v10 = *(a1 + 72);
      v11 = *(a1 + 136);
      v16 = 134349568;
      v17 = v10;
      v18 = 2050;
      v19 = v11;
      v20 = 1026;
      v21 = v4 >= v5;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D41D8, 0, "#cltm,fDistanceFromLastQueryLocation_m,%{public}.1f,fMinimumDistanceForNewQuery_m,%{public}.1f,isQueryNeeded,%{public}d", &v16, 28);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTrackRunGeoMapRunningTrackDataManager::IsQueryNeeded(const CLClientLocationCoordinate &) const", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }

      return v6;
    }

LABEL_21:
    sub_100173BA0();
  }

  if (qword_1025D41D0 != -1)
  {
    sub_101920FA8();
  }

  v14 = qword_1025D41D8;
  if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#cltm,Will query,last query location has no value", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101920FBC();
  }

  return 1;
}

void sub_1002D5600(uint64_t a1, uint64_t *a2, int *a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 52) |= 2u;
  v8 = *(a5 + 40);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 488) |= 8u;
  v9 = *(v8 + 32);
  if (!v9)
  {
    operator new();
  }

  sub_1002D6118(a2, a5);
  *(v9 + 100) |= 1u;
  v10 = *(v9 + 8);
  if (!v10)
  {
    operator new();
  }

  if ((sub_10027E930(a2, v10) & 1) == 0)
  {
    if (qword_1025D41D0 != -1)
    {
      sub_101B95F94();
    }

    v11 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEBUG))
    {
      *v13 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "TrackRun,Warning,failed to convert location notification receipt time to protobuf", v13, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B986A4();
    }
  }

  v12 = *a3;
  *(v9 + 100) |= 2u;
  *(v9 + 40) = v12;
  sub_1002AAE10(a4, v9);
}

uint64_t sub_1002D57E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 384) == 1 && *(a1 + 400) == 1)
  {
    *(a2 + 4) = *(a1 + 376);
    *(a2 + 12) = *(a1 + 392);
  }

  if (*(a1 + 336) == 1 && *(a1 + 352) == 1 && *(a1 + 368) == 1)
  {
    v6 = *(a2 + 96) - 1;
    if (v6 <= 0xA && ((0x509u >> v6) & 1) != 0)
    {
      v7 = 0x508u >> (*(a2 + 96) - 1);
      sub_100109D18((a1 + 280), *(a2 + 4), *(a2 + 12), *(a1 + 328), *(a1 + 344), 0.0);
      if (v7)
      {
        if ((*(a1 + 368) & 1) == 0)
        {
LABEL_103:
          sub_100173BA0();
        }

LABEL_14:
        v9 = *(a1 + 360);
        if (v8 <= v9 + v9)
        {
          v10 = 3;
        }

        else if (v8 <= v9 * 3.0)
        {
          v10 = 2;
        }

        else
        {
          v10 = 1;
        }

        goto LABEL_18;
      }

      if ((*(a1 + 368) & 1) == 0)
      {
        goto LABEL_103;
      }

      if (v8 > *(a1 + 360))
      {
        goto LABEL_14;
      }

      v10 = 4;
    }

    else
    {
      v10 = 0;
    }

LABEL_18:
    *(a1 + 428) = v10;
  }

  if (*(a1 + 412) == 1)
  {
    v11 = *(a1 + 408);
  }

  else
  {
    v11 = -1;
  }

  *(a3 + 168) = v11;
  if (*(a1 + 420) == 1)
  {
    v12 = *(a1 + 416);
  }

  else
  {
    v12 = -1;
  }

  *(a3 + 248) = v12;
  *(a3 + 264) = v12;
  v13 = *(a1 + 424);
  if (v13 >= 4)
  {
    v13 = 0;
  }

  *(a3 + 272) = v13;
  v14 = *(a1 + 428);
  if ((v14 - 1) >= 4)
  {
    v14 = 0;
  }

  *(a3 + 276) = v14;
  if (*(a1 + 34) != 1 || !*(a1 + 104) || *(a1 + 96) == a1 + 56)
  {
    return 0;
  }

  sub_1002D6054(v42);
  std::mutex::lock((a1 + 112));
  TrackRunSolution = trackrun::TrackRunSupervisor::GetTrackRunSolution(*(a1 + 104), v42);
  if (TrackRunSolution)
  {
    if (qword_1025D41D0 != -1)
    {
      sub_101B95E90();
    }

    v16 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = TrackRunSolution;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "TrackRun,could not retrieve latest TrackRun solution,retval,%d", &buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B96244(&buf);
      v77 = 67109120;
      v78 = TrackRunSolution;
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D41D8, 1, "TrackRun,could not retrieve latest TrackRun solution,retval,%d", &v77);
      v36 = v35;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTrackRunController::GetLocation(CLDaemonLocation &, CLDaemonLocationPrivate &)", "%s\n", v35);
      if (v36 != &buf)
      {
        free(v36);
      }
    }

    v17 = 0;
  }

  else
  {
    if (qword_1025D41D0 != -1)
    {
      sub_101B95E90();
    }

    v18 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 67174657;
      DWORD1(buf) = v46;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "TrackRun,obtained latest TrackRun solution with track proximity %{private}d", &buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B96244(&buf);
      v77 = 67174657;
      v78 = v46;
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D41D8, 2, "TrackRun,obtained latest TrackRun solution with track proximity %{private}d", &v77, 8);
      v38 = v37;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTrackRunController::GetLocation(CLDaemonLocation &, CLDaemonLocationPrivate &)", "%s\n", v37);
      if (v38 != &buf)
      {
        free(v38);
      }
    }

    v17 = 0;
    v19 = v46;
    if ((v46 - 1) >= 4)
    {
      v19 = 0;
    }

    *(a3 + 276) = v19;
    if (v60 == 1)
    {
      *(a3 + 268) = v48;
      *(a3 + 280) = v47;
      *(a3 + 256) = v59;
      if (v56 == 1)
      {
        *(a3 + 264) = v55;
      }

      if (v58 == 1)
      {
        *(a3 + 248) = v57;
      }

      if (v52 == 1)
      {
        *(a2 + 60) = v51;
      }

      v17 = v50;
      if (v50 == 1)
      {
        *(a2 + 4) = v49;
      }

      if (v54 == 1)
      {
        *(a2 + 20) = v53;
      }

      if (v75 == 1 && (sub_1002D4C90(*(a1 + 192), 1), sub_1002D4D90(*(a1 + 192), (a2 + 4), a1, 1), (v75 & 1) != 0) && (*(a1 + 49) & 1) != 0)
      {
        v20 = *(a1 + 52);
        *(a1 + 52) = v20 + 1;
        if (v20 >= 1)
        {
          if (qword_1025D41D0 != -1)
          {
            sub_101B95E90();
          }

          v21 = qword_1025D41D8;
          if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_ERROR))
          {
            v22 = *(a1 + 52);
            LODWORD(buf) = 67109120;
            DWORD1(buf) = v22;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "CLTR,consective epochs requesting full track geometry during a trackrun supported workout,count,%d", &buf, 8u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_101B96244(&buf);
            v39 = *(a1 + 52);
            v77 = 67109120;
            v78 = v39;
            _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D41D8, 16, "CLTR,consective epochs requesting full track geometry during a trackrun supported workout,count,%d", &v77);
            v41 = v40;
            sub_100152C7C("Generic", 1, 0, 0, "BOOL CLTrackRunController::GetLocation(CLDaemonLocation &, CLDaemonLocationPrivate &)", "%s\n", v40);
            if (v41 != &buf)
            {
              free(v41);
            }
          }

          if (*(a1 + 52) == 4)
          {
            sub_1016B1A70([objc_msgSend(*(a1 + 184) "silo")], "trackrun", "need_full_track_geometry", 0);
          }
        }
      }

      else
      {
        *(a1 + 52) = 0;
      }
    }

    if ((*(a2 + 96) & 0xFFFFFFF7) == 1)
    {
      if (v65 == 1 && v61 == 1)
      {
        v23 = *(a3 + 8);
        v24 = v23 & 0x7FFFFFFFFFFFFFFFLL;
        v25 = (v23 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
        v26 = v23 < 0;
        v27 = v23 < 0 && ((v23 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
        if (!v26)
        {
          v25 = 0;
        }

        v28 = v24 <= 0x7FF0000000000000;
        v29 = v24 == 0x7FF0000000000000 || v25;
        if (!v28)
        {
          v29 = 1;
        }

        v30 = v63;
        if (((v29 | v27) & 1) == 0)
        {
          *(a1 + 320) = *(a1 + 320) + v63 - *(a3 + 8);
        }

        v31 = v64;
        *(a3 + 8) = v30;
        *(a3 + 16) = v31;
        if (v62 == 1)
        {
          *(a3 + 288) = v62;
        }
      }

      if (*a3 > 0.0)
      {
        *a3 = *a3 + *(a1 + 320);
      }
    }

    if (v74 == 1)
    {
      *(a3 + 168) = v72;
      v32 = v68;
      v33 = v69;
      *(a3 + 176) = v67 + v66;
      *(a3 + 184) = v32;
      *(a3 + 192) = v33;
      *(a3 + 200) = v70;
      *(a3 + 216) = v71;
      *(a3 + 232) = v73;
    }

    v80 = 0u;
    v81 = 0u;
    buf = 0u;
    sub_1002D5FFC(&buf);
    v43 = buf;
    v44 = v80;
    v45 = v81;
    v76 = 0;
  }

  std::mutex::unlock((a1 + 112));
  trackrun::TrackRunSolutionEvent::~TrackRunSolutionEvent(v42);
  if (TrackRunSolution)
  {
    return 0;
  }

  return v17;
}

void sub_1002D5FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::mutex::unlock((v7 + 112));
  trackrun::TrackRunSolutionEvent::~TrackRunSolutionEvent(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D5FFC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  CNTimeSpan::SetTimeSpan((a1 + 8), 0, 0.0);
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  CNTimeSpan::SetTimeSpan((a1 + 32), 0, 0.0);
  return a1;
}

uint64_t sub_1002D6054(uint64_t a1)
{
  v2 = (a1 + 8);
  sub_1002D5FFC(a1 + 8);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 370) = 0;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  sub_1002D5FFC(&v5);
  v3 = v6;
  *v2 = v5;
  v2[1] = v3;
  v2[2] = v7;
  *(a1 + 370) = 0;
  return a1;
}

uint64_t sub_1002D6108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 3968);
  if (result)
  {
    return sub_1002D57E4(result, a2, a3);
  }

  return result;
}

double sub_1002D6118(uint64_t a1, uint64_t a2)
{
  *(a2 + 52) |= 1u;
  v2 = *(a2 + 32);
  if (!v2)
  {
    operator new();
  }

  v3 = *(v2 + 44);
  *(v2 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
  result = *a1;
  *(v2 + 44) = v3 | 7;
  *(v2 + 24) = result;
  return result;
}

void sub_1002D61B8(uint64_t a1, uint64_t a2, char a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  if (wireless_diagnostics::google::protobuf::MessageLite::SerializeToString())
  {
    if (*(a1 + 34) == 1 && *(a1 + 104) && (a3 & 1) == 0)
    {
      trackrun::TrackRunSupervisor::RaiseEventsFrom();
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      sub_1000145C0(v5, __p);
    }
  }

  else
  {
    if (qword_1025D41D0 != -1)
    {
      sub_101B95E90();
    }

    v6 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "TrackRun,Could not serialize protobuf message", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B96244(buf);
      v9 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D41D8, 16, "TrackRun,Could not serialize protobuf message", &v9, 2);
      v8 = v7;
      sub_100152C7C("Generic", 1, 0, 0, "void CLTrackRunController::SendMessage(const CLP::LogEntry::LogEntry &, BOOL)", "%s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1002D6370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002D6398(uint64_t a1, double a2, double a3)
{
  v62 = a3;
  v63 = a2;
  v5 = a1 + 96;
  v4 = *(a1 + 96);
  v60 = a1 + 96;
  (*(v4 + 16))(a1 + 96);
  v61 = 256;
  sub_10001CAF4(buf);
  v6 = sub_10001CB4C(*buf, "ForceDownloadHrseTiles", (a1 + 825), 0xFFFFFFFFLL);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if (v6)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73324();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 825);
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "HRSE,getSignalEnvironment,fForceDownloadHrseTiles, %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B7334C(buf);
      v43 = *(a1 + 825);
      v64 = 67109120;
      LODWORD(v65) = v43;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "HRSE,getSignalEnvironment,fForceDownloadHrseTiles, %d", &v64);
      v45 = v44;
      sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLHighResolutionSignalEnvironmentDataManager::getSignalEnvironment(double, double)", "%s\n", v44);
      if (v45 != buf)
      {
        free(v45);
      }
    }
  }

  if ((sub_1002D7D9C(&v63, &v62) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73324();
    }

    v24 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 134545921;
      *&buf[4] = v63;
      *&buf[12] = 2053;
      *&buf[14] = v62;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_ERROR, "#Error,HRSE,getSignalEnvironment,invalid coordinates,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf", buf, 0x16u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_33;
    }

    sub_101B7334C(buf);
    v64 = 134545921;
    v65 = v63;
    v66 = 2053;
    v67 = v62;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 16, "#Error,HRSE,getSignalEnvironment,invalid coordinates,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf", &v64, 22);
    v40 = v46;
    sub_100152C7C("Generic", 1, 0, 0, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLHighResolutionSignalEnvironmentDataManager::getSignalEnvironment(double, double)", "%s\n", v46);
    goto LABEL_77;
  }

  if (*(a1 + 768) == 1)
  {
    v9 = *(a1 + 544);
    v10 = *(a1 + 540);
    v11 = *(a1 + 560);
    v12 = *(a1 + 552);
    v13 = *(a1 + 536);
    sub_10002DB04(v9);
    v15 = v14;
    sub_10002DB04(v9 + (v11 * v10));
    v17 = v16;
    v18 = v12 + (v11 * v13);
    if (v63 >= v12 && v63 < v18 && v62 >= v15 && v62 < v16)
    {
      *(a1 + 816) = 0;
LABEL_16:
      if (qword_1025D4650 != -1)
      {
        sub_101B73324();
      }

      v19 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "HRSE,good to go!", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B7334C(buf);
        LOWORD(v64) = 0;
        LODWORD(v58) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "HRSE,good to go!", &v64, v58);
        v54 = v53;
        sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLHighResolutionSignalEnvironmentDataManager::getSignalEnvironment(double, double)", "%s\n", v53);
        if (v54 != buf)
        {
          free(v54);
        }
      }

      *(a1 + 440) = 0;
      v20 = sub_1002D71E8(a1 + 504, v63, v62);
      if (qword_1025D4650 != -1)
      {
        sub_101B73324();
      }

      v21 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134546177;
        *&buf[4] = v63;
        *&buf[12] = 2053;
        *&buf[14] = v62;
        v76 = 1025;
        *v77 = v20;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "HRSE,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hrse,%{private}d", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B7334C(buf);
        v64 = 134546177;
        v65 = v63;
        v66 = 2053;
        v67 = v62;
        v68 = 1025;
        *v69 = v20;
        LODWORD(v58) = 28;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "HRSE,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hrse,%{private}d", &v64, v58);
        v23 = v22;
        sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLHighResolutionSignalEnvironmentDataManager::getSignalEnvironment(double, double)", "%s\n", v22);
        if (v23 != buf)
        {
          free(v23);
        }
      }

      goto LABEL_47;
    }

    if (qword_1025D4650 != -1)
    {
      sub_101B73324();
    }

    v25 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134546945;
      *&buf[4] = v63;
      *&buf[12] = 2053;
      *&buf[14] = v62;
      v76 = 2053;
      *v77 = v12;
      *&v77[8] = 2053;
      v78 = v18;
      v79 = 2053;
      v80 = v15;
      v81 = 2053;
      v82 = v17;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "HRSE,getSignalEnvironment,not on the current in-memory tile,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,minLat,%{sensitive}.7lf,maxLat,%{sensitive}.7lf,minLon,%{sensitive}.7lf,maxLon,%{sensitive}.7lf", buf, 0x3Eu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B7334C(buf);
      v64 = 134546945;
      v65 = v63;
      v66 = 2053;
      v67 = v62;
      v68 = 2053;
      *v69 = v12;
      *&v69[8] = 2053;
      v70 = v18;
      v71 = 2053;
      v72 = v15;
      v73 = 2053;
      v74 = v17;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "HRSE,getSignalEnvironment,not on the current in-memory tile,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,minLat,%{sensitive}.7lf,maxLat,%{sensitive}.7lf,minLon,%{sensitive}.7lf,maxLon,%{sensitive}.7lf", &v64, 62);
      v50 = v49;
      sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLHighResolutionSignalEnvironmentDataManager::getSignalEnvironment(double, double)", "%s\n", v49);
      if (v50 != buf)
      {
        free(v50);
      }
    }
  }

  if (!sub_100258AE0((a1 + 8), &v63, &v62) || *(a1 + 825) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73324();
    }

    v26 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "HRSE,getSignalEnvironment,tile not available", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B7334C(buf);
      LOWORD(v64) = 0;
      LODWORD(v58) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "HRSE,getSignalEnvironment,tile not available", &v64, v58);
      v48 = v47;
      sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLHighResolutionSignalEnvironmentDataManager::getSignalEnvironment(double, double)", "%s\n", v47);
      if (v48 != buf)
      {
        free(v48);
      }
    }

    v20 = 0;
    *(a1 + 440) = 0;
    *(a1 + 448) = 0;
    *(a1 + 456) = 0;
    goto LABEL_47;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101B73324();
  }

  v28 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "HRSE,getSignalEnvironment,need to load tile", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B7334C(buf);
    LOWORD(v64) = 0;
    LODWORD(v58) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "HRSE,getSignalEnvironment,need to load tile", &v64, v58);
    v52 = v51;
    sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLHighResolutionSignalEnvironmentDataManager::getSignalEnvironment(double, double)", "%s\n", v51);
    if (v52 != buf)
    {
      free(v52);
    }
  }

  v29 = *(a1 + 816);
  if ((v29 & 7) == 0)
  {
    *(a1 + 816) = v29 | 1;
    v59 = 0;
    v32 = sub_1012152FC(a1, &v59 + 1, &v59, v63, v62);
    if (HIBYTE(v59) == 1)
    {
      *(a1 + 440) = HIBYTE(v59);
      *(a1 + 441) = v59;
      v33 = v62;
      *(a1 + 448) = v63;
      *(a1 + 456) = v33;
      if (qword_1025D4650 != -1)
      {
        sub_101B73324();
      }

      v34 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v35 = *(a1 + 440);
        v36 = *(a1 + 441);
        *buf = 134546433;
        *&buf[4] = v63;
        *&buf[12] = 2053;
        *&buf[14] = v62;
        v76 = 1026;
        *v77 = v35;
        *&v77[4] = 1026;
        *&v77[6] = v36;
        _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "HRSE,getSignalEnvironment,tile download needed,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,is file needed,%{public}d,is bad tile,%{public}d", buf, 0x22u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_33;
      }

      sub_101B7334C(buf);
      v37 = *(a1 + 440);
      v38 = *(a1 + 441);
      v64 = 134546433;
      v65 = v63;
      v66 = 2053;
      v67 = v62;
      v68 = 1026;
      *v69 = v37;
      *&v69[4] = 1026;
      *&v69[6] = v38;
      LODWORD(v58) = 34;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "HRSE,getSignalEnvironment,tile download needed,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,is file needed,%{public}d,is bad tile,%{public}d", &v64, v58);
      v40 = v39;
      sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLHighResolutionSignalEnvironmentDataManager::getSignalEnvironment(double, double)", "%s\n", v39);
    }

    else
    {
      if (v32)
      {
        goto LABEL_16;
      }

      if (qword_1025D4650 != -1)
      {
        sub_101B73324();
      }

      v41 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "HRSE,Tile not loaded yet", buf, 2u);
      }

      if (!sub_10000A100(121, 2))
      {
LABEL_33:
        v20 = 0;
        goto LABEL_47;
      }

      sub_101B7334C(buf);
      LOWORD(v64) = 0;
      LODWORD(v58) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "HRSE,Tile not loaded yet", &v64, v58);
      v40 = v42;
      sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLHighResolutionSignalEnvironmentDataManager::getSignalEnvironment(double, double)", "%s\n", v42);
    }

LABEL_77:
    if (v40 != buf)
    {
      free(v40);
    }

    goto LABEL_33;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101B73324();
  }

  v30 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v31 = *(a1 + 816);
    *buf = 67240192;
    *&buf[4] = v31;
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "HRSE,getSignalEnvironment,skipping loadTile query,skipCount,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B7334C(buf);
    v55 = *(a1 + 816);
    v64 = 67240192;
    LODWORD(v65) = v55;
    LODWORD(v58) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "HRSE,getSignalEnvironment,skipping loadTile query,skipCount,%{public}d", &v64, v58);
    v57 = v56;
    sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLHighResolutionSignalEnvironmentDataManager::getSignalEnvironment(double, double)", "%s\n", v56);
    if (v57 != buf)
    {
      free(v57);
    }
  }

  v20 = 0;
  ++*(a1 + 816);
LABEL_47:
  (*(*v5 + 24))(v5);
  return v20;
}

void sub_1002D7118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

double sub_1002D719C(double *a1, uint64_t a2, float64x2_t *a3)
{
  sub_100226B90(a1, a2, a3);
  v5 = v4;
  if (*(a2 + 232) == *(a2 + 224))
  {
    return v4 - sub_100226BC0(a2);
  }

  return v5;
}

void *sub_1002D71E8(uint64_t a1, double a2, double a3)
{
  v44 = a3;
  v45 = a2;
  if ((*(a1 + 264) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73390();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "#Warning,HRSE,getSignalEnvironmentForTile,invalid tile", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B736B8();
    }

    return 0;
  }

  if ((sub_1002D7D9C(&v45, &v44) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73390();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 134545921;
      v63 = a2;
      v64 = 2053;
      v65 = v44;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "#Error,HRSE,getSignalEnvironmentForTile,invalid coordinates,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B7379C();
    }

    return 0;
  }

  v5 = *(a1 + 56);
  if (v5 == 0.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73390();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "#Warning,HRSE,getSignalEnvironmentForTile,cellsize is zero", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B73F44();
    }

    return 0;
  }

  v11 = (a1 + 48);
  v12 = *(a1 + 48);
  if (v12 > a2)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73390();
    }

    v13 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v14 = *v11;
      *buf = 134545921;
      v63 = a2;
      v64 = 2053;
      v65 = v14;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "#Warning,HRSE,getSignalEnvironmentForTile,latitude,%{sensitive}.9lf,lessThanMin,%{sensitive}.9lf", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B73E48();
    }

    return 0;
  }

  v15 = v12 + (v5 * *(a1 + 32));
  if (v15 < a2)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73390();
    }

    v16 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 134545921;
      v63 = a2;
      v64 = 2053;
      v65 = v15;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "#Warning,HRSE,getSignalEnvironmentForTile,latitude,%{sensitive}.9lf,exceedsMax,%{sensitive}.9lf", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B73D50();
    }

    return 0;
  }

  v17 = v44;
  v18 = (a1 + 40);
  v19 = *(a1 + 40);
  if (v44 < v19)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73390();
    }

    v20 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v21 = *v18;
      *buf = 134545921;
      v63 = v17;
      v64 = 2053;
      v65 = v21;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "#Warning,HRSE,getSignalEnvironmentForTile,longitude,%{sensitive}.9lf,lessThanMin,%{sensitive}.9lf", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B73C54();
    }

    return 0;
  }

  v22 = *(a1 + 36);
  v23 = v19 + (v5 * v22);
  if (v44 > v23)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73390();
    }

    v24 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 134545921;
      v63 = v17;
      v64 = 2053;
      v65 = v23;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "#Warning,HRSE,getSignalEnvironmentForTile,longitude,%{sensitive}.9lf,exceedsMax,%{sensitive}.9lf", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B73B5C();
    }

    return 0;
  }

  v25 = *(a1 + 192);
  v26 = *(a1 + 200) - v25;
  if (!v26 || (v27 = v5, v28 = (v44 - v19) / v27, v29 = (floor(v28) + 0.5), v30 = (a2 - v12) / v27, v31 = (floor(v30) + 0.5), v32 = v29 + v22 * v31, v33 = (v32 + (v32 >> 31)) >> 1, v26 <= v33))
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73390();
    }

    v40 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_INFO, "#Warning,HRSE,getSignalEnvironmentForTile,invalid tile - unable to get data byte", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B73898();
    }

    return 0;
  }

  v34 = *(v25 + v33);
  v35 = v34 & 0xF;
  v36 = v34 >> 4;
  if (v32 % 2 == 1)
  {
    v37 = v35;
  }

  else
  {
    v37 = v36;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101B73390();
  }

  v38 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134547457;
    v63 = v28;
    v64 = 2053;
    v65 = v30;
    v66 = 1025;
    v67 = v29;
    v68 = 1025;
    v69 = v31;
    v70 = 1025;
    v71 = v32;
    v72 = 1025;
    v73 = v32 / 2;
    v74 = 1025;
    v75 = v32 % 2;
    v76 = 1025;
    v77 = v37;
    _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "HRSE,getSignalEnvironmentForTile,X,%{sensitive}.7lf,Y,%{sensitive}.7lf,x1,%{private}d,y1,%{private}d,iNibble,%{private}d,iByte,%{private}d,iNibbleInByte,%{private}d,typeNibble,%{private}d", buf, 0x3Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101B73324();
    }

    v46 = 134547457;
    v47 = v28;
    v48 = 2053;
    v49 = v30;
    v50 = 1025;
    v51 = v29;
    v52 = 1025;
    v53 = v31;
    v54 = 1025;
    v55 = v32;
    v56 = 1025;
    v57 = v32 / 2;
    v58 = 1025;
    v59 = v32 % 2;
    v60 = 1025;
    v61 = v37;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "HRSE,getSignalEnvironmentForTile,X,%{sensitive}.7lf,Y,%{sensitive}.7lf,x1,%{private}d,y1,%{private}d,iNibble,%{private}d,iByte,%{private}d,iNibbleInByte,%{private}d,typeNibble,%{private}d", &v46, 58);
    v43 = v42;
    sub_100152C7C("Generic", 1, 0, 2, "static CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLHighResolutionSignalEnvironmentDataManager::getSignalEnvironmentForTile(CLHRSETile &, double, double)", "%s\n", v42);
    if (v43 != buf)
    {
      free(v43);
    }
  }

  if (v37 >= 7 || ((0x5Fu >> v37) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73324();
    }

    v41 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 67174657;
      LODWORD(v63) = v37;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_ERROR, "#Error,HRSE,getSignalEnvironmentForTile,unexpected signal environment type detected: %{private}d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B7397C(v37);
    }

    return 0;
  }

  v9 = dword_101D25560[v37];
  if (qword_1025D4650 != -1)
  {
    sub_101B73324();
  }

  v39 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67174657;
    LODWORD(v63) = v9;
    _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "HRSE,getSignalEnvironmentForTile,hrseType,%{private}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B73A6C(v9);
  }

  return v9;
}

uint64_t sub_1002D7A58(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!*a3)
  {
    return 4;
  }

  sub_10018D404(v25);
  v5 = sub_1002D719C((a1 + 4), a2, v25);
  if (v5 >= *(sub_100229814() + 5))
  {
    if (v5 >= *(sub_100229814() + 4))
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 3;
  }

  v24 = v6;
  if (qword_1025D4640 != -1)
  {
    sub_1019280C4();
  }

  v7 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a2 + 23) >= 0 ? a2 : *a2;
    v9 = *(a2 + 47) >= 0 ? a2 + 24 : *(a2 + 24);
    sub_1002D7D58(&v24, __p);
    v10 = v29 >= 0 ? __p : *__p;
    *buf = 136315906;
    v34 = v8;
    v35 = 2080;
    v36 = v9;
    v37 = 2048;
    v38 = v5;
    v39 = 2080;
    v40 = v10;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "converging state change, fence, %s/%s, distance, %.2f, proximity state, %s", buf, 0x2Au);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4640 != -1)
    {
      sub_1019280C4();
    }

    v12 = off_1025D4648;
    if (*(a2 + 23) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    v14 = *(a2 + 47);
    v17 = *(a2 + 24);
    v16 = a2 + 24;
    v15 = v17;
    if (v14 < 0)
    {
      v16 = v15;
    }

    sub_1002D7D58(&v24, v22);
    if (v23 >= 0)
    {
      v18 = v22;
    }

    else
    {
      v18 = v22[0];
    }

    *__p = 136315906;
    *&__p[4] = v13;
    v27 = 2080;
    v28 = v16;
    v29 = 2048;
    v30 = v5;
    v31 = 2080;
    v32 = v18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v12, 2, "converging state change, fence, %s/%s, distance, %.2f, proximity state, %s", __p, 42, v21, v22[0]);
    v20 = v19;
    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "static CLFenceProximityState CLFenceApproachingClassifier::getFenceProximityState(const CLDaemonLocation &, const CLFenceManager_Type::Fence &, const CLFenceManager_Type::FenceStatus &)", "%s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  return v6;
}

void *sub_1002D7D58@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  if (v4 > 4)
  {
    v5 = "Invalid";
  }

  else
  {
    v5 = off_10246E7D0[v4];
  }

  return sub_10000EC00(a2, v5);
}

uint64_t sub_1002D7D9C(double *a1, long double *a2)
{
  if ((*a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B73390();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v5 = (*a1 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      v6 = (*a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      v11 = 67437057;
      LODWORD(v12[0]) = v5;
      WORD2(v12[0]) = 1029;
      *(v12 + 6) = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#Error,HRSE,is latitude finite,%{sensitive}d,is longitude finite,%{sensitive}d", &v11, 0xEu);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_101B7358C();
    return 0;
  }

  if (fabs(*a1) <= 90.0)
  {
    sub_10002DB04(*a2);
    *a2 = v10;
    return 1;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101B73390();
  }

  v8 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
  {
    v9 = *a1;
    v11 = 134545665;
    v12[0] = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "#Error,HRSE,latitude is beyond the valid range,lat,%{sensitive}.7lf", &v11, 0xCu);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101B73498();
    return 0;
  }

  return result;
}

uint64_t sub_1002D7F8C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a1 + 96;
  (*(*(a1 + 96) + 16))(a1 + 96);
  v7 = sub_1002AC764(v6 - 88);
  v8 = *(a1 + 440);
  if (qword_1025D4650 != -1)
  {
    sub_101B73390();
  }

  v9 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240448;
    *v51 = v7;
    *&v51[4] = 1026;
    *&v51[6] = v8;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "HRSE,downloadFileIfNeeded,needAvailability,%{public}d,needTile,%{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B7334C(buf);
    v48 = 67240448;
    *v49 = v7;
    *&v49[4] = 1026;
    *&v49[6] = v8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "HRSE,downloadFileIfNeeded,needAvailability,%{public}d,needTile,%{public}d", &v48, 14);
    v31 = v30;
    sub_100152C7C("Generic", 1, 0, 2, "void CLHighResolutionSignalEnvironmentDataManager::downloadFileIfNeeded(const CLDaemonLocation &, const BOOL)", "%s\n", v30);
    if (v31 != buf)
    {
      free(v31);
    }
  }

  if ((v7 | v8))
  {
    if (v7 && (v10 = (a2 + 76), vabdd_f64(*(a2 + 76), *(a1 + 808)) > 3600.0))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101B73324();
      }

      v11 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v12 = *v10;
        v13 = *(a1 + 808);
        *buf = 67240704;
        *v51 = 1;
        *&v51[4] = 2050;
        *&v51[6] = v12;
        *&v51[14] = 2050;
        *&v51[16] = v13;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "HRSE,downloadFileIfNeeded,download availability file,needAvailability,%{public}d,location_timestamp,%{public}.3f,timeOfLastDownloadRequestAvailability,%{public}.3f", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B7334C(buf);
        v36 = *v10;
        v37 = *(a1 + 808);
        v48 = 67240704;
        *v49 = 1;
        *&v49[4] = 2050;
        *&v49[6] = v36;
        *&v49[14] = 2050;
        *&v49[16] = v37;
        LODWORD(v47) = 28;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "HRSE,downloadFileIfNeeded,download availability file,needAvailability,%{public}d,location_timestamp,%{public}.3f,timeOfLastDownloadRequestAvailability,%{public}.3f", &v48, v47);
        v39 = v38;
        sub_100152C7C("Generic", 1, 0, 2, "void CLHighResolutionSignalEnvironmentDataManager::downloadFileIfNeeded(const CLDaemonLocation &, const BOOL)", "%s\n", v38);
        if (v39 != buf)
        {
          free(v39);
        }
      }

      sub_101214F8C(a1, v10);
    }

    else
    {
      v14 = 31.0;
      if (*(a1 + 441) == 1)
      {
        if (qword_1025D4650 != -1)
        {
          sub_101B73324();
        }

        v15 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          *v51 = 0x4122750000000000;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "HRSE,downloadFileIfNeeded,corrupted tile, increase download retry interval to %{public}.5lf seconds", buf, 0xCu);
        }

        v14 = 604800.0;
        if (sub_10000A100(121, 2))
        {
          sub_101B7334C(buf);
          v48 = 134349056;
          *v49 = 0x4122750000000000;
          LODWORD(v47) = 12;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "HRSE,downloadFileIfNeeded,corrupted tile, increase download retry interval to %{public}.5lf seconds", &v48, v47);
          v35 = v34;
          sub_100152C7C("Generic", 1, 0, 2, "void CLHighResolutionSignalEnvironmentDataManager::downloadFileIfNeeded(const CLDaemonLocation &, const BOOL)", "%s\n", v34);
          if (v35 != buf)
          {
            free(v35);
          }
        }
      }

      if (v8)
      {
        v16 = *(a2 + 76);
        if (vabdd_f64(v16, *(a1 + 800)) > v14)
        {
          *(a1 + 800) = v16;
          if (qword_1025D4650 != -1)
          {
            sub_101B73324();
          }

          v17 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
          {
            v18 = *(a1 + 448);
            v19 = *(a1 + 456);
            *buf = 134545921;
            *v51 = v18;
            *&v51[8] = 2053;
            *&v51[10] = v19;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "HRSE,requestDownload,requesting HRSE tile download,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B7334C(buf);
            v40 = *(a1 + 448);
            v41 = *(a1 + 456);
            v48 = 134545921;
            *v49 = v40;
            *&v49[8] = 2053;
            *&v49[10] = v41;
            LODWORD(v47) = 22;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "HRSE,requestDownload,requesting HRSE tile download,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf", &v48, v47);
            v43 = v42;
            sub_100152C7C("Generic", 1, 0, 2, "void CLHighResolutionSignalEnvironmentDataManager::downloadFileIfNeeded(const CLDaemonLocation &, const BOOL)", "%s\n", v42);
            if (v43 != buf)
            {
              free(v43);
            }
          }

          if (a3 && *(a2 + 20) > 10.0)
          {
            if (qword_1025D4650 != -1)
            {
              sub_101B73324();
            }

            v20 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
            {
              v21 = *(a2 + 20);
              *buf = 134349312;
              *v51 = v21;
              *&v51[8] = 2050;
              *&v51[10] = 0x4024000000000000;
              _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "HRSE,allowing download request over cell due to large horizontal uncertainty, uncertainty,%{public}.5lf, uncertainty threshold,%{public}.5lf", buf, 0x16u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101B7334C(buf);
              v44 = *(a2 + 20);
              v48 = 134349312;
              *v49 = v44;
              *&v49[8] = 2050;
              *&v49[10] = 0x4024000000000000;
              LODWORD(v47) = 22;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "HRSE,allowing download request over cell due to large horizontal uncertainty, uncertainty,%{public}.5lf, uncertainty threshold,%{public}.5lf", &v48, v47);
              v46 = v45;
              sub_100152C7C("Generic", 1, 0, 2, "void CLHighResolutionSignalEnvironmentDataManager::downloadFileIfNeeded(const CLDaemonLocation &, const BOOL)", "%s\n", v45);
              if (v46 != buf)
              {
                free(v46);
              }
            }

            v22 = 1;
          }

          else
          {
            v22 = 0;
          }

          Current = CFAbsoluteTimeGetCurrent();
          v24 = *(a1 + 825);
          v25 = [objc_msgSend(*(a1 + 360) "vendor")];
          v26 = *(a1 + 448);
          v27 = *(a1 + 456);
          buf[0] = v22 | v24;
          buf[1] = v24;
          buf[2] = 0;
          *&v51[4] = 0xBFF0000000000000;
          *&v51[12] = 0;
          *&v51[20] = Current;
          v52 = 1;
          [v25 requestTileDownloadByType:2 lat:-1 lon:buf seckey:v26 details:v27];
        }
      }

      if (qword_1025D4650 != -1)
      {
        sub_101B73324();
      }

      v28 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "HRSE,downloadFileIfNeeded,tile download finished!", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B7334C(buf);
        LOWORD(v48) = 0;
        LODWORD(v47) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "HRSE,downloadFileIfNeeded,tile download finished!", &v48, v47);
        v33 = v32;
        sub_100152C7C("Generic", 1, 0, 2, "void CLHighResolutionSignalEnvironmentDataManager::downloadFileIfNeeded(const CLDaemonLocation &, const BOOL)", "%s\n", v32);
        if (v33 != buf)
        {
          free(v33);
        }
      }
    }
  }

  return (*(*v6 + 24))(v6);
}

void sub_1002D883C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_1002D8894(uint64_t a1, void *a2)
{
  if (qword_1025D4640 != -1)
  {
    sub_101A4014C();
  }

  v4 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 2664);
    v6 = *(a1 + 2659);
    *buf = 136381187;
    v9 = a2;
    v10 = 2049;
    v11 = v5;
    v12 = 1025;
    v13 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Fence: createActivityAlarm, %{private}s, %{private}p, fIsUseActivityAlarm, %{private}d", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A43B1C(a2, a1);
  }

  if (*(a1 + 2659) == 1 && !*(a1 + 2664))
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100C8D984;
    v7[3] = &unk_10245C1D8;
    v7[4] = a1;
    *(a1 + 2664) = -[CMActivityAlarmLocal initWithTrigger:duration:onQueue:withHandler:]([CMActivityAlarmLocal alloc], "initWithTrigger:duration:onQueue:withHandler:", 6, [*(a1 + 48) queue], v7, 900.0);
  }
}

uint64_t sub_1002D8A2C(uint64_t ***a1, char *a2)
{
  result = sub_100019438(a1, a2);
  if (!result)
  {

    return sub_100019438(a1 + 3, a2 + 24);
  }

  return result;
}

NSDictionary *sub_1002D8A80(uint64_t a1)
{
  v5[0] = @"requester";
  v2 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v2 = *v2;
  }

  v6[0] = [NSString stringWithUTF8String:v2];
  v5[1] = @"type";
  v6[1] = [NSString stringWithUTF8String:*(a1 + 56)];
  v5[2] = @"activepassive";
  v6[2] = [NSString stringWithUTF8String:*(a1 + 64)];
  v5[3] = @"priority";
  v3 = [NSString stringWithUTF8String:*(a1 + 72)];
  v5[4] = @"daily";
  v6[3] = v3;
  v6[4] = &off_10254EB70;
  return [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:5];
}

void sub_1002D8B80(uint64_t a1@<X1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, _BYTE *a7@<X8>, uint64_t a8@<X0>)
{
  v12 = a1;
  valuePtr = a2;
  v14 = sub_1002DAC84(a8, a1);
  if (v14)
  {
    v15 = v14;
    v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
    v17 = CFAutorelease(v16);
    if (a3)
    {
      v18 = kCFBooleanTrue;
    }

    else
    {
      v18 = kCFBooleanFalse;
    }

    if (a4)
    {
      v19 = kCFBooleanTrue;
    }

    else
    {
      v19 = kCFBooleanFalse;
    }

    CFDictionarySetValue(v15, @"SCAN_TYPE", v17);
    CFDictionarySetValue(v15, @"SCAN_LOW_PRIORITY", v18);
    CFDictionarySetValue(v15, @"SCAN_LOW_LATENCY", v19);
    if ((v12 - 11) <= 1u && *(a6 + 24) == 1)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v20 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        if ((*(a6 + 24) & 1) == 0)
        {
          sub_100173BA0();
        }

        sub_100C5D328(a6, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 67240450;
        HIDWORD(buf.__r_.__value_.__r.__words[0]) = v12;
        LOWORD(buf.__r_.__value_.__r.__words[1]) = 2082;
        *(&buf.__r_.__value_.__r.__words[1] + 2) = p_p;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "WifiScan, type, %{public}d, overriding channels, %{public}s", &buf, 0x12u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(121, 2))
      {
        bzero(&__p, 0x65CuLL);
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }

        if ((*(a6 + 24) & 1) == 0)
        {
          sub_100173BA0();
        }

        v23 = qword_1025D4628;
        sub_100C5D328(a6, &buf);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        v32[0] = 67240450;
        v32[1] = v12;
        v33 = 2082;
        v34 = p_buf;
        _os_log_send_and_compose_impl(2, 0, &__p, 1628, dword_100000000, v23, 0, "WifiScan, type, %{public}d, overriding channels, %{public}s", v32, 18);
        v26 = v25;
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 2, "std::optional<CLWifiService_Type::ScanParameters> CLWifiService::toWifiScanParameters(CLWifiService_Type::ScanType, apple80211_scan_type, CLWifiService_Type::ScanParameters::Priority, BOOL, std::string, const std::optional<CLWifiService_Type::Channels> &)", "%s\n", v26);
        if (v26 != &__p)
        {
          free(v26);
        }
      }

      if (*(a5 + 23) < 0)
      {
        sub_100007244(__dst, *a5, *(a5 + 8));
      }

      else
      {
        *__dst = *a5;
        v28 = *(a5 + 16);
      }

      sub_1005A4528(&buf, a6);
    }

    else
    {
      if (*(a5 + 23) < 0)
      {
        sub_100007244(__dst, *a5, *(a5 + 8));
      }

      else
      {
        *__dst = *a5;
        v28 = *(a5 + 16);
      }

      buf.__r_.__value_.__s.__data_[0] = 0;
      v31 = 0;
    }

    sub_1002D90FC(&__p, v12, v15, __dst, &buf);
    sub_1002D98B4(a7, &__p);
    a7[96] = 1;
    if (v38 < 0)
    {
      operator delete(v37);
    }

    if (__p.__r_.__value_.__r.__words[2])
    {
      v36 = __p.__r_.__value_.__r.__words[2];
      operator delete(__p.__r_.__value_.__r.__words[2]);
    }

    if (v31 == 1 && buf.__r_.__value_.__r.__words[0])
    {
      buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD6A4();
    }

    v22 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v12;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "Got null wifi device options for scan type %d", &__p, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CFFB4(v12);
    }

    *a7 = 0;
    a7[96] = 0;
  }
}

void sub_1002D8FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ***sub_1002D9048(void *a1, char *a2)
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
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
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
      if (*(result + 16) == v3)
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

void sub_1002D90FC(uint64_t *__return_ptr a1@<X8>, char a2@<W0>, const __CFDictionary *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = 0;
  v45 = off_1024B71D8;
  v46 = *&off_1024B71E8;
  v47 = off_1024B71F8;
  v41 = off_1024B7198;
  v42 = *&off_1024B71A8;
  v43 = off_1024B71B8;
  v44 = *&off_1024B71C8;
  do
  {
    v9 = &v41 + v8;
    *(v9 + 2) = sub_1002DB3B8(a3, *(&v41 + v8));
    v9[12] = 1;
    v8 += 16;
  }

  while (v8 != 112);
  if (!CFDictionaryContainsKey(a3, @"SCAN_CHANNELS"))
  {
    sub_101AA39C8();
  }

  __src = 0;
  v39 = 0;
  v40 = 0;
  if (*(a5 + 24) == 1)
  {
    if (&__src != a5)
    {
      sub_100731D80(&__src, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
    }
  }

  else
  {
    Value = CFDictionaryGetValue(a3, @"SCAN_CHANNELS");
    Count = CFArrayGetCount(Value);
    sub_1002982C8(&__src, Count);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
        v14 = sub_1002DB3B8(ValueAtIndex, @"CHANNEL");
        v15 = v39;
        if (v39 >= v40)
        {
          v17 = __src;
          v18 = v39 - __src;
          v19 = (v39 - __src) >> 2;
          v20 = v19 + 1;
          if ((v19 + 1) >> 62)
          {
            sub_10028C64C();
          }

          v21 = v40 - __src;
          if ((v40 - __src) >> 1 > v20)
          {
            v20 = v21 >> 1;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v22 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v20;
          }

          if (v22)
          {
            sub_1000B85D0(&__src, v22);
          }

          *(4 * v19) = v14;
          v16 = (4 * v19 + 4);
          memcpy(0, v17, v18);
          v23 = __src;
          __src = 0;
          v39 = v16;
          v40 = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v39 = v14;
          v16 = v15 + 1;
        }

        v39 = v16;
      }
    }
  }

  v24 = DWORD2(v41);
  v25 = DWORD2(v42);
  v26 = DWORD2(v43);
  v36 = 0;
  v37 = 0;
  v35 = 0;
  sub_10038EB38(&v35, __src, v39, (v39 - __src) >> 2);
  v27 = SDWORD2(v44);
  v28 = SDWORD2(v45);
  v29 = DWORD2(v46);
  v30 = DWORD2(v47);
  if (*(a4 + 23) < 0)
  {
    sub_100007244(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v34 = *(a4 + 16);
  }

  sub_1002DB444(a1, v24, v25, v26, &v35, v27, v28, v29 != 0, v30 != 0, __p, a2);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (__src)
  {
    v39 = __src;
    operator delete(__src);
  }
}

void sub_1002D93E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D9448(void *a1, char **a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == v4)
  {
    sub_101AA3848();
  }

  if (*(v4 - 1) != -1)
  {
    v6 = a2[2];
    if (v4 >= v6)
    {
      v8 = v4 - v3;
      v9 = (v4 - v3) >> 2;
      v10 = v9 + 1;
      if ((v9 + 1) >> 62)
      {
        sub_10028C64C();
      }

      v11 = v6 - v3;
      if (v11 >> 1 > v10)
      {
        v10 = v11 >> 1;
      }

      v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
      v13 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v10;
      }

      if (v13)
      {
        sub_1000B85D0(a2, v13);
      }

      v14 = (v4 - v3) >> 2;
      v15 = (4 * v9);
      v16 = (4 * v9 - 4 * v14);
      *v15 = -1;
      v7 = (v15 + 1);
      memcpy(v16, v3, v8);
      v17 = *a2;
      *a2 = v16;
      a2[1] = v7;
      a2[2] = 0;
      if (v17)
      {
        operator delete(v17);
        v3 = *a2;
      }

      else
      {
        v3 = v16;
      }
    }

    else
    {
      *v4 = -1;
      v7 = v4 + 4;
    }

    a2[1] = v7;
  }

  v18 = a1[2];
  a1[2] = v3;
  *a2 = v18;
  v19 = a1[3];
  a1[3] = a2[1];
  a2[1] = v19;
  v20 = a1[4];
  a1[4] = a2[2];
  a2[2] = v20;
}

uint64_t sub_1002D9584(uint64_t a1, uint64_t *a2)
{
  sub_1002D98B4(v4, a2);
  sub_1002D98B4(a1, v4);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_1002D95F8@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, _BYTE *a3@<X8>)
{
  v4 = a1;
  sub_10003848C(v16);
  v6 = sub_1002DDED4(v4);
  v7 = strlen(v6);
  sub_100038730(&v17, v6, v7);
  if ((a2 & 0x100) != 0)
  {
    v8 = sub_100038730(&v17, "-", 1);
    v9 = sub_100F386AC(a2);
    v10 = strlen(v9);
    sub_100038730(v8, v9, v10);
  }

  if ((v24 & 0x10) != 0)
  {
    v12 = v23;
    if (v23 < v20)
    {
      v23 = v20;
      v12 = v20;
    }

    locale = v19[4].__locale_;
  }

  else
  {
    if ((v24 & 8) == 0)
    {
      v11 = 0;
      a3[23] = 0;
      goto LABEL_16;
    }

    locale = v19[1].__locale_;
    v12 = v19[3].__locale_;
  }

  v11 = v12 - locale;
  if ((v12 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a3[23] = v11;
  if (v11)
  {
    memmove(a3, locale, v11);
  }

LABEL_16:
  a3[v11] = 0;
  v17 = v14;
  if (v22 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1002D9890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1002D98B4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_10038EB38((a1 + 16), a2[2], a2[3], (a2[3] - a2[2]) >> 2);
  v5 = *(a2 + 5);
  *(a1 + 56) = *(a2 + 28);
  *(a1 + 40) = v5;
  if (*(a2 + 87) < 0)
  {
    sub_100007244((a1 + 64), a2[8], a2[9]);
  }

  else
  {
    v6 = *(a2 + 4);
    *(a1 + 80) = a2[10];
    *(a1 + 64) = v6;
  }

  *(a1 + 88) = *(a2 + 88);
  return a1;
}

void sub_1002D9958(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002D9974(unint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 42 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_1005A53B0(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x2A)) + 96 * (v7 % 0x2A);
  }

  sub_1002D9584(v8, a2);
  v9 = a1[4];
  v10 = a1[5] + 1;
  a1[5] = v10;
  v11 = v9 + v10;
  v12 = a1[1];
  v13 = (v12 + 8 * (v11 / 0x2A));
  v14 = *v13 + 96 * (v11 % 0x2A);
  if (a1[2] == v12)
  {
    v14 = 0;
  }

  if (v14 == *v13)
  {
    v14 = *(v13 - 1) + 4032;
  }

  return v14 - 96;
}

uint64_t sub_1002D9A90(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x2A)
  {
    a2 = 1;
  }

  if (v2 < 0x54)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 42;
  }

  return v4 ^ 1u;
}

std::string *sub_1002D9AF0(std::string *a1, char *a2)
{
  if (a1[1].__r_.__value_.__s.__data_[0] == 1)
  {
    sub_100006044(a1, a2);
  }

  else
  {
    sub_10000EC00(a1, a2);
    a1[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return a1;
}

void sub_1002D9B4C(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v25 = a2;
  if (a2 != 12)
  {
    *a3 = 0;
    *(a3 + 32) = 0;
    return;
  }

  sub_100F20D0C(a1 + 16, &v22);
  if (v24 == 1)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101ACAA1C();
    }

    v5 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      if ((v24 & 1) == 0)
      {
        sub_100173BA0();
      }

      sub_100C5D328(&v22, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = p_p;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "@WifiChannel, apply, time-based 5GHz channel selector overrides, %{public}s", &buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(&__p, 0x65CuLL);
      if (qword_1025D4630 != -1)
      {
        sub_101ACAA1C();
      }

      if ((v24 & 1) == 0)
      {
        sub_100173BA0();
      }

      v14 = qword_1025D4638;
      sub_100C5D328(&v22, &buf);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      v27 = 136446210;
      v28 = p_buf;
      _os_log_send_and_compose_impl(2, 0, &__p, 1628, dword_100000000, v14, 1, "@WifiChannel, apply, time-based 5GHz channel selector overrides, %{public}s", &v27, 12);
      v17 = v16;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      sub_100152C7C("Generic", 1, 0, 2, "virtual std::optional<CLWifiLocationChannelSelectionService_Type::ChannelRecommendation> CLWifiLocation5GHzChannelSelectionService::recommendedChannels(CLWifiService_Type::ScanType)", "%s\n", v17);
      if (v17 != &__p)
      {
        free(v17);
      }
    }

    if ((v24 & 1) == 0)
    {
      sub_100173BA0();
    }

    __p.__r_.__value_.__s.__data_[0] = 1;
    v30 = 0;
    *&__p.__r_.__value_.__r.__words[1] = 0uLL;
    sub_10038EB38(&__p.__r_.__value_.__l.__size_, v22, v23, (v23 - v22) >> 2);
    buf.__r_.__value_.__r.__words[0] = &v25;
    v7 = sub_100F21E2C(a1 + 96, &v25, &unk_101C66300, &buf.__r_.__value_.__l.__data_);
    *(v7 + 40) = __p.__r_.__value_.__s.__data_[0];
    v8 = v7[6];
    if (v8)
    {
      v7[7] = v8;
      operator delete(v8);
      v7[6] = 0;
      v7[7] = 0;
      v7[8] = 0;
    }

LABEL_35:
    *(v7 + 3) = *&__p.__r_.__value_.__r.__words[1];
    v7[8] = v30;
    __p.__r_.__value_.__r.__words[0] = &v25;
    v12 = sub_100F21E2C(a1 + 96, &v25, &unk_101C66300, &__p.__r_.__value_.__l.__data_);
    *a3 = *(v12 + 40);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    sub_10038EB38((a3 + 8), v12[6], v12[7], (v12[7] - v12[6]) >> 2);
    v13 = 1;
    goto LABEL_37;
  }

  sub_100F20D0C(a1 + 8, &__p);
  sub_100F21CBC(&v22, &__p);
  if (v30 == 1 && __p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v24 == 1)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101ACAA1C();
    }

    v9 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      if ((v24 & 1) == 0)
      {
        sub_100173BA0();
      }

      sub_100C5D328(&v22, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &__p;
      }

      else
      {
        v10 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "@WifiChannel, apply, default 5GHz channel selector overrides, %{public}s", &buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(&__p, 0x65CuLL);
      if (qword_1025D4630 != -1)
      {
        sub_101ACAA1C();
      }

      if ((v24 & 1) == 0)
      {
        sub_100173BA0();
      }

      v18 = qword_1025D4638;
      sub_100C5D328(&v22, &buf);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &buf;
      }

      else
      {
        v19 = buf.__r_.__value_.__r.__words[0];
      }

      v27 = 136446210;
      v28 = v19;
      _os_log_send_and_compose_impl(2, 0, &__p, 1628, dword_100000000, v18, 1, "@WifiChannel, apply, default 5GHz channel selector overrides, %{public}s", &v27, 12);
      v21 = v20;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      sub_100152C7C("Generic", 1, 0, 2, "virtual std::optional<CLWifiLocationChannelSelectionService_Type::ChannelRecommendation> CLWifiLocation5GHzChannelSelectionService::recommendedChannels(CLWifiService_Type::ScanType)", "%s\n", v21);
      if (v21 != &__p)
      {
        free(v21);
      }
    }

    if ((v24 & 1) == 0)
    {
      sub_100173BA0();
    }

    __p.__r_.__value_.__s.__data_[0] = 0;
    v30 = 0;
    *&__p.__r_.__value_.__r.__words[1] = 0uLL;
    sub_10038EB38(&__p.__r_.__value_.__l.__size_, v22, v23, (v23 - v22) >> 2);
    buf.__r_.__value_.__r.__words[0] = &v25;
    v7 = sub_100F21E2C(a1 + 96, &v25, &unk_101C66300, &buf.__r_.__value_.__l.__data_);
    *(v7 + 40) = __p.__r_.__value_.__s.__data_[0];
    v11 = v7[6];
    if (v11)
    {
      v7[7] = v11;
      operator delete(v11);
      v7[6] = 0;
      v7[7] = 0;
      v7[8] = 0;
    }

    goto LABEL_35;
  }

  v13 = 0;
  *a3 = 0;
LABEL_37:
  *(a3 + 32) = v13;
  if (v24 == 1)
  {
    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }
  }
}

void sub_1002DA14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (a15 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002DA1CC(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 88) == 1)
  {
    v4 = *a2;
    *(a1 + 13) = *(a2 + 13);
    *a1 = v4;
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
    *(a2 + 47) = 0;
    *(a2 + 24) = 0;
    sub_101052778(a1 + 48, a2 + 48);
  }

  else
  {
    sub_1002DA304(a1, a2);
    *(a1 + 88) = 1;
  }

  return a1;
}

uint64_t sub_1002DA260(uint64_t a1, char a2, int a3, char a4, __int128 *a5, uint64_t a6, double a7)
{
  *a1 = a2;
  *(a1 + 8) = a7;
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  if (*(a5 + 23) < 0)
  {
    sub_100007244((a1 + 24), *a5, *(a5 + 1));
  }

  else
  {
    v9 = *a5;
    *(a1 + 40) = *(a5 + 2);
    *(a1 + 24) = v9;
  }

  *(a1 + 48) = 0;
  *(a1 + 80) = 0;
  if (*(a6 + 32) == 1)
  {
    *(a1 + 48) = *a6;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    *(a1 + 56) = *(a6 + 8);
    *(a1 + 72) = *(a6 + 24);
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    *(a6 + 24) = 0;
    *(a1 + 80) = 1;
  }

  return a1;
}

__n128 sub_1002DA304(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = v2;
  result = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = result;
  a2[2] = 0uLL;
  *(a2 + 3) = 0;
  *(a1 + 48) = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    result = *(a2 + 56);
    *(a1 + 56) = result;
    *(a1 + 72) = *(a2 + 9);
    *(a2 + 56) = 0uLL;
    *(a2 + 9) = 0;
    *(a1 + 80) = 1;
  }

  return result;
}

uint64_t sub_1002DA384(uint64_t a1, _BYTE *a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  if (a2[32] == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    sub_10038EB38((a1 + 8), *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
    *(a1 + 32) = 1;
  }

  return a1;
}

void sub_1002DA3F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *(v1 + 16) = v4;
      operator delete(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1002DA420(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 32) == a2[32])
  {
    if (*(a1 + 32))
    {

      sub_1007BE7D4(a1, a2);
    }
  }

  else if (*(a1 + 32))
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      *(a1 + 16) = v3;
      operator delete(v3);
    }

    *(a1 + 32) = 0;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    sub_10038EB38((a1 + 8), *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
    *(a1 + 32) = 1;
  }
}

id sub_1002DA4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = a2;
  v8 = [*(a1 + 104) syncgetStartScanWithType:a2 lowPriority:a3 lowLatency:a4 passive:1 requester:"wlp" channels:a6];
  if (qword_1025D4630 != -1)
  {
    sub_1019293D4();
  }

  v9 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_1002DDED4(v7);
    v11 = a5;
    if (*(a5 + 23) < 0)
    {
      v11 = *a5;
    }

    *buf = 136446722;
    v24 = v10;
    v25 = 2082;
    v26 = v11;
    v27 = 1026;
    v28 = v8;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "@WifiFlow, scanreq, %{public}s, %{public}s, result, %{public}d", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4630 != -1)
    {
      sub_1019293E8();
    }

    v13 = qword_1025D4638;
    v14 = sub_1002DDED4(v7);
    if (*(a5 + 23) < 0)
    {
      a5 = *a5;
    }

    v17 = 136446722;
    v18 = v14;
    v19 = 2082;
    v20 = a5;
    v21 = 1026;
    v22 = v8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v13, 0, "@WifiFlow, scanreq, %{public}s, %{public}s, result, %{public}d", &v17, 28);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiLocationProviderExternal::startWifiScan(CLWifiService_Type::ScanType, BOOL, BOOL, std::string, const std::optional<CLWifiService_Type::Channels> &) const", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  if ((v8 & 1) == 0)
  {
    sub_1001E87E0(4u);
  }

  return v8;
}

uint64_t sub_1002DA6F0(uint64_t a1, uint64_t a2, int a3, int a4, int a5, void **a6, uint64_t a7)
{
  HIDWORD(v30) = a4;
  v12 = sub_1002DDED4(a2);
  if (a5)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  HIDWORD(v29) = a5;
  LODWORD(v30) = v13;
  if (a5)
  {
    v14 = "passive";
  }

  else
  {
    v14 = "active";
  }

  if (a3)
  {
    v15 = "low";
  }

  else
  {
    v15 = "normal";
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018CD624();
  }

  v16 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v17 = a6;
    if (*(a6 + 23) < 0)
    {
      v17 = *a6;
    }

    *buf = 136446978;
    *v66 = v17;
    *&v66[8] = 2082;
    v67 = v12;
    *v68 = 2082;
    *&v68[2] = v14;
    v69 = 2082;
    v70 = v15;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "WsMetric, scanrequest, %{public}s, %{public}s, %{public}s, %{public}s", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v23 = a6;
    if (*(a6 + 23) < 0)
    {
      v23 = *a6;
    }

    v55 = 136446978;
    v56 = v23;
    v57 = 2082;
    *v58 = v12;
    *&v58[8] = 2082;
    v59 = v14;
    v60 = 2082;
    v61 = v15;
    LODWORD(v29) = 42;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "WsMetric, scanrequest, %{public}s, %{public}s, %{public}s, %{public}s", &v55, v29, v30);
    v25 = v24;
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiService::startScan(CLWifiService_Type::ScanType, BOOL, BOOL, BOOL, std::string, const std::optional<CLWifiService_Type::Channels> &)", "%s\n", v24);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  v39 = _NSConcreteStackBlock;
  v40 = 3321888768;
  v41 = sub_1002D8A80;
  v42 = &unk_102460C78;
  if (*(a6 + 23) < 0)
  {
    sub_100007244(&v43, *a6, a6[1]);
  }

  else
  {
    v43 = *a6;
    v44 = a6[2];
  }

  v45 = v12;
  v46 = v14;
  v47 = v15;
  AnalyticsSendEventLazy();
  v18 = a7;
  if (*(a6 + 23) < 0)
  {
    sub_100007244(__p, *a6, a6[1]);
  }

  else
  {
    *__p = *a6;
    v38 = a6[2];
  }

  sub_1002D8B80(a2, v30, a3, SHIDWORD(v30), __p, a7, &v55, a1);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }

  if (v64)
  {
    sub_1002D98B4(v32, &v55);
    v19 = sub_1002DB54C(a1, v32);
    if (v36 < 0)
    {
      operator delete(v35);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD638();
      v18 = a7;
    }

    v20 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(v18 + 24);
      *buf = 67109888;
      *v66 = a2;
      *&v66[4] = 1024;
      *&v66[6] = a3;
      LOWORD(v67) = 1024;
      *(&v67 + 2) = HIDWORD(v29);
      HIWORD(v67) = 1026;
      *v68 = v21;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "Unable to convert type: %d, isLowPriority: %d, isPassiveScan: %d, w/ overriding channels: %{public}d to scan parameters. Not attempting to scan", buf, 0x1Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD660(buf);
      v26 = *(a7 + 24);
      v48[0] = 67109888;
      v48[1] = a2;
      v49 = 1024;
      v50 = a3;
      v51 = 1024;
      v52 = HIDWORD(v29);
      v53 = 1026;
      v54 = v26;
      LODWORD(v29) = 26;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "Unable to convert type: %d, isLowPriority: %d, isPassiveScan: %d, w/ overriding channels: %{public}d to scan parameters. Not attempting to scan", v48, v29);
      v28 = v27;
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiService::startScan(CLWifiService_Type::ScanType, BOOL, BOOL, BOOL, std::string, const std::optional<CLWifiService_Type::Channels> &)", "%s\n", v27);
      if (v28 != buf)
      {
        free(v28);
      }
    }

    v19 = 0;
  }

  if (v64 == 1)
  {
    if (v63 < 0)
    {
      operator delete(v62);
    }

    if (*&v58[2])
    {
      v59 = *&v58[2];
      operator delete(*&v58[2]);
    }
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43);
  }

  return v19;
}

void sub_1002DAC20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  sub_1005A43AC(&a49);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const __CFDictionary *sub_1002DAC84(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = 136;
  switch(a2)
  {
    case -1:
    case 13:
      if (qword_1025D4620 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_45;
    case 0:
      goto LABEL_13;
    case 1:
      v4 = 144;
      goto LABEL_13;
    case 2:
      v4 = 152;
      goto LABEL_13;
    case 3:
      v4 = 160;
      goto LABEL_13;
    case 4:
      v4 = 168;
      goto LABEL_13;
    case 5:
      v4 = 216;
      goto LABEL_13;
    case 6:
      v5 = *(a1 + 224);
      if (!v5)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    case 7:
      v4 = 128;
      goto LABEL_13;
    case 8:
      v4 = 176;
      goto LABEL_13;
    case 9:
      v4 = 184;
      goto LABEL_13;
    case 10:
LABEL_8:
      v4 = 200;
      goto LABEL_13;
    case 11:
      if (qword_1025D4620 != -1)
      {
        sub_1018CD624();
      }

      v14 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
      {
        __p = 68289539;
        *v20 = 2082;
        *&v20[2] = "";
        v21 = 2082;
        v22 = "assert";
        v23 = 2081;
        v24 = "false";
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No predefined scan options exist for this type. Call toWifiDeviceOptions(const CLWifiService_Type::ScanParameters&) instead, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }
      }

      v15 = qword_1025D4628;
      if (os_signpost_enabled(qword_1025D4628))
      {
        __p = 68289539;
        *v20 = 2082;
        *&v20[2] = "";
        v21 = 2082;
        v22 = "assert";
        v23 = 2081;
        v24 = "false";
        _os_signpost_emit_with_name_impl(dword_100000000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No predefined scan options exist for this type. Call toWifiDeviceOptions(const CLWifiService_Type::ScanParameters&) instead", "{msg%{public}.0s:No predefined scan options exist for this type. Call toWifiDeviceOptions(const CLWifiService_Type::ScanParameters&) instead, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }
      }

      v16 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
      {
        __p = 68289539;
        *v20 = 2082;
        *&v20[2] = "";
        v21 = 2082;
        v22 = "assert";
        v23 = 2081;
        v24 = "false";
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No predefined scan options exist for this type. Call toWifiDeviceOptions(const CLWifiService_Type::ScanParameters&) instead, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/WifiService/CLWifiService.mm", 3267, "toWifiDeviceOptions");
      while (1)
      {
        __break(1u);
LABEL_45:
        sub_1018CD624();
LABEL_24:
        v11 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
        {
          __p = 68289539;
          *v20 = 2082;
          *&v20[2] = "";
          v21 = 2082;
          v22 = "assert";
          v23 = 2081;
          v24 = "false";
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Attempting to scan with an invalid scan type, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }
        }

        v12 = qword_1025D4628;
        if (os_signpost_enabled(qword_1025D4628))
        {
          __p = 68289539;
          *v20 = 2082;
          *&v20[2] = "";
          v21 = 2082;
          v22 = "assert";
          v23 = 2081;
          v24 = "false";
          _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Attempting to scan with an invalid scan type", "{msg%{public}.0s:Attempting to scan with an invalid scan type, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }
        }

        v13 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
        {
          __p = 68289539;
          *v20 = 2082;
          *&v20[2] = "";
          v21 = 2082;
          v22 = "assert";
          v23 = 2081;
          v24 = "false";
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Attempting to scan with an invalid scan type, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
        }

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/WifiService/CLWifiService.mm", 3271, "toWifiDeviceOptions");
      }

    case 12:
      v4 = 192;
LABEL_13:
      v5 = *(a1 + v4);
      if (!v5)
      {
        return v5;
      }

LABEL_14:
      v6 = sub_1002D903C();
      sub_1002DB26C(v6, v2, &__p);
      v7 = BYTE4(v22);
      if (BYTE4(v22) != 1)
      {
        return v5;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v5);
      v17 = *v20;
      v18 = __p;
      sub_1005A2874(a1, &v18, &v17, MutableCopy);
      v9 = CFAutorelease(MutableCopy);
      if (BYTE4(v22))
      {
        if (__p)
        {
          *v20 = __p;
          operator delete(__p);
        }

        if ((v7 & 1) == 0)
        {
          return v5;
        }
      }

      return v9;
    default:
      return 0;
  }
}

void sub_1002DB1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18)
{
  if (a18 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002DB26C@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v17 = a2;
  v6 = a1 + 5;
  v5 = a1[5];
  v15 = a1 + 5;
  (*(v5 + 16))(a1 + 5);
  v16 = 256;
  v7 = sub_1002D9048(a1, &v17);
  if (!v7)
  {
LABEL_7:
    *a3 = 0;
    *(a3 + 24) = 0;
    return (*(*v6 + 24))(v6);
  }

  __p = 0;
  v13 = 0;
  v14 = 0;
  sub_10038EB38(&__p, v7[3], v7[4], (v7[4] - v7[3]) >> 2);
  v8 = __p;
  v9 = v13;
  v10 = v13 - __p;
  if (v13 == __p)
  {
    if (v13)
    {
      v13 = __p;
      operator delete(__p);
    }

    goto LABEL_7;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_10038EB38(a3, v8, v9, v10 >> 2);
  *(a3 + 24) = 1;
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return (*(*v6 + 24))(v6);
}

void sub_1002DB384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002DB3B8(const __CFDictionary *a1, CFStringRef theString)
{
  CFStringGetCStringPtr(theString, 0x8000100u);
  if (!CFDictionaryContainsKey(a1, theString))
  {
    sub_101AA3D0C();
  }

  Value = CFDictionaryGetValue(a1, theString);
  valuePtr = 0;
  if (!CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
  {
    sub_101AA3B84();
  }

  return valuePtr;
}

uint64_t sub_1002DB444(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, __int128 *a10, char a11)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a6;
  *(a1 + 48) = a7;
  *(a1 + 56) = a8;
  *(a1 + 57) = a9;
  if (*(a10 + 23) < 0)
  {
    sub_100007244((a1 + 64), *a10, *(a10 + 1));
  }

  else
  {
    v13 = *a10;
    *(a1 + 80) = *(a10 + 2);
    *(a1 + 64) = v13;
  }

  *(a1 + 88) = a11;
  *__p = *a5;
  v16 = *(a5 + 16);
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  sub_1002D9448(a1, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1002DB508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v13 = *v11;
  if (*v11)
  {
    *(v10 + 24) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002DB54C(uint64_t a1, uint64_t *a2)
{
  v4 = a1 + 832;
  v58 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v59 = 256;
  if (!*(a1 + 312))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v14 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "WifiScan, skip, null device, #KvCheck", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_31;
    }

    sub_1018CD5B4(buf);
    *__p = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiScan, skip, null device, #KvCheck", __p, 2);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::startScan(CLWifiService_Type::ScanParameters)", "%s\n", v15);
    goto LABEL_63;
  }

  if (!*(a1 + 296))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v17 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "WifiScan, skip, null dpc, #KvCheck", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_31;
    }

    sub_1018CD5B4(buf);
    *__p = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiScan, skip, null dpc, #KvCheck", __p, 2);
    v16 = v18;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::startScan(CLWifiService_Type::ScanParameters)", "%s\n", v18);
    goto LABEL_63;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v6 = Current - *(a1 + 752);
  if (v6 < 10.0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v19 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      v20 = sub_1002DCBCC(a2);
      v21 = *(a1 + 760);
      *buf = 67240704;
      *v67 = v20;
      *&v67[4] = 2050;
      *&v67[6] = v6;
      *&v67[14] = 1026;
      *&v67[16] = v21;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "WifiScan, skip, cooloff, type, %{public}d, since, %{public}.1lf, error, %{public}d", buf, 0x18u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_31;
    }

    sub_1018CD5B4(buf);
    v36 = qword_1025D4628;
    v37 = sub_1002DCBCC(a2);
    v38 = *(a1 + 760);
    *__p = 67240704;
    *&__p[4] = v37;
    *&__p[8] = 2050;
    *&__p[10] = v6;
    *&__p[18] = 1026;
    *&__p[20] = v38;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v36, 1, "WifiScan, skip, cooloff, type, %{public}d, since, %{public}.1lf, error, %{public}d", __p, 24);
    v16 = v39;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::startScan(CLWifiService_Type::ScanParameters)", "%s\n", v39);
LABEL_63:
    if (v16 != buf)
    {
      free(v16);
    }

LABEL_31:
    v22 = 0;
    goto LABEL_32;
  }

  buf[0] = sub_1002DCBCC(a2);
  sub_1002DC1B0((a1 + 764), buf);
  if (sub_100071CA0())
  {
    sub_10004FD18();
    v7 = sub_1002DCBCC(a2);
    v8 = sub_1002DDED4(v7);
    sub_1002DC414(buf, "scan", v8);
    __p[0] = sub_1002DCBD4(a2);
    sub_100043360(buf, "low_priority", __p);
    __p[0] = sub_1002DCBDC(a2);
    sub_100043360(buf, "passive", __p);
    sub_100071CAC(buf, "locationd");
    sub_100005DA4();
  }

  if (*(a1 + 384) < 7uLL)
  {
    if (*(a1 + 232) == 1)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018CD638();
      }

      v24 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "override scan, passive scans only...", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CD660(buf);
        *__p = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "override scan, passive scans only...", __p, 2);
        v54 = v53;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::startScan(CLWifiService_Type::ScanParameters)", "%s\n", v53);
        if (v54 != buf)
        {
          free(v54);
        }
      }

      sub_100E43F30(a2, 2);
    }

    sub_1002D9974((a1 + 344), a2);
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v25 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      sub_1002DCBEC(a2, __p);
      v26 = __p[23] >= 0 ? __p : *__p;
      v27 = sub_1002DCBCC(a2);
      v28 = sub_1002DDED4(v27);
      v29 = sub_1002DCBD4(a2);
      v30 = sub_1002DCBDC(a2);
      v31 = *(a1 + 384);
      *buf = 136447234;
      *v67 = v26;
      *&v67[8] = 2082;
      *&v67[10] = v28;
      *&v67[18] = 1026;
      v68 = v29;
      v69 = 1026;
      v70 = v30;
      v71 = 2050;
      v72 = v31;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "WifiScan, enqueue, %{public}s, %{public}s, lowpri, %{public}d, passive, %{public}d, pending, %{public}lu", buf, 0x2Cu);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_49;
    }

    sub_1018CD5B4(buf);
    v45 = qword_1025D4628;
    sub_1002DCBEC(a2, v56);
    if (v57 >= 0)
    {
      v46 = v56;
    }

    else
    {
      v46 = v56[0];
    }

    v47 = sub_1002DCBCC(a2);
    v48 = sub_1002DDED4(v47);
    v49 = sub_1002DCBD4(a2);
    v50 = sub_1002DCBDC(a2);
    v51 = *(a1 + 384);
    *__p = 136447234;
    *&__p[4] = v46;
    *&__p[12] = 2082;
    *&__p[14] = v48;
    *&__p[22] = 1026;
    v61 = v49;
    v62 = 1026;
    v63 = v50;
    v64 = 2050;
    v65 = v51;
    LODWORD(v55) = 44;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v45, 0, "WifiScan, enqueue, %{public}s, %{public}s, lowpri, %{public}d, passive, %{public}d, pending, %{public}lu", __p, v55);
    v13 = v52;
    if (v57 < 0)
    {
      operator delete(v56[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::startScan(CLWifiService_Type::ScanParameters)", "%s\n", v13);
    if (v13 == buf)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 384);
      *buf = 134349056;
      *v67 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "WifiScan, skip, maxed, %{public}ld", buf, 0xCu);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_49;
    }

    sub_1018CD5B4(buf);
    v11 = *(a1 + 384);
    *__p = 134349056;
    *&__p[4] = v11;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 1, "WifiScan, skip, maxed, %{public}ld", __p, 12);
    v13 = v12;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::startScan(CLWifiService_Type::ScanParameters)", "%s\n", v12);
    if (v13 == buf)
    {
      goto LABEL_49;
    }
  }

  free(v13);
LABEL_49:
  if (Current - *(a1 + 424) <= 3.0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v34 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(a1 + 424);
      *buf = 134349312;
      *v67 = v35;
      *&v67[8] = 2050;
      *&v67[10] = 0x4008000000000000;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEFAULT, "WifiScan, misc, inprogress, last, %{public}.1f, interval, %{public}.1f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(buf);
      v40 = *(a1 + 424);
      *__p = 134349312;
      *&__p[4] = v40;
      *&__p[12] = 2050;
      *&__p[14] = 0x4008000000000000;
      LODWORD(v55) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiScan, misc, inprogress, last, %{public}.1f, interval, %{public}.1f", __p, v55);
      v42 = v41;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::startScan(CLWifiService_Type::ScanParameters)", "%s\n", v41);
      if (v42 != buf)
      {
        free(v42);
      }
    }
  }

  else
  {
    WiFiDeviceClientRegisterScanUpdateCallback();
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v32 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEFAULT, "WifiDpc, signal", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(buf);
      *__p = 0;
      LODWORD(v55) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiDpc, signal", __p, v55);
      v44 = v43;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::startScan(CLWifiService_Type::ScanParameters)", "%s\n", v43);
      if (v44 != buf)
      {
        free(v44);
      }
    }

    CFRunLoopSourceSignal(*(a1 + 296));
    v33 = sub_100107858();
    CFRunLoopWakeUp(v33);
  }

  v22 = 1;
LABEL_32:
  (*(*v4 + 24))(v4);
  return v22;
}

void sub_1002DC1B0(unsigned int *a1, char *a2)
{
  if (qword_1025D48A0 != -1)
  {
    sub_1018CD6A4();
  }

  v4 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a2;
    LODWORD(__p) = 67109378;
    HIDWORD(__p) = v5;
    v13 = 2080;
    v14 = sub_1002DDED4(v5);
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "WIFI: stats: increment scan, type, %d, %s", &__p, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CF5B4(a2);
  }

  v6 = *a2;
  if (v6 > 12)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v7 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      v8 = *a2;
      v9 = sub_1002DDED4(v8);
      LODWORD(__p) = 67240450;
      HIDWORD(__p) = v8;
      v13 = 2082;
      v14 = v9;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "WIFI: stats: unknown scan type, %{public}d, %{public}s", &__p, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CF6D4(a2);
    }
  }

  else
  {
    ++a1[v6 + 3];
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018CD638();
  }

  v10 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    sub_1005A3214(&__p);
    v11 = v15 >= 0 ? &__p : __p;
    *buf = 136315138;
    v17 = v11;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "WIFI: stats: scansStat, %s", buf, 0xCu);
    if (v15 < 0)
    {
      operator delete(__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CF7F4(a1);
  }
}

BOOL sub_1002DC414(uint64_t a1, const char *a2, char *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1002DC480(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1002DC480(uint64_t a1, const __CFString *a2, char *cStr)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
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
      sub_1018AB810();
    }
  }

  return v5 != 0;
}

void sub_1002DC604(uint64_t a1)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v2 = _os_activity_create(dword_100000000, "CL: CLWifiService::onDpcSource", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v2, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v3 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a1;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onDpcSource, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  v4 = [*(a1 + 32) silo];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002D9A80;
  v5[3] = &unk_102449A78;
  v5[4] = a1;
  [v4 sync:v5];
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1002DC808(uint64_t a1)
{
  v2 = a1 + 832;
  v15 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v16 = 256;
  if (*(a1 + 744))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "WifiDpc, onDpcSource", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(buf);
      v14 = 0;
      v11 = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "WifiDpc, onDpcSource", &v14, v11);
      v8 = v7;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onDpcSource()", "%s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    v4 = *(a1 + 744);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002D9A88;
    block[3] = &unk_102449A78;
    block[4] = a1;
    dispatch_async(v4, block);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "WifiDpc, null dispatch queue (shutdown?), #KvCheck", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(buf);
      v14 = 0;
      v12 = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiDpc, null dispatch queue (shutdown?), #KvCheck", &v14, v12);
      v10 = v9;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onDpcSource()", "%s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  return (*(*v2 + 24))(v2);
}

void sub_1002DCB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002DCB44(int64x2_t *a1)
{
  sub_1002DDC9C(*(a1->i64[1] + 8 * (a1[2].i64[0] / 0x2AuLL)) + 96 * (a1[2].i64[0] % 0x2AuLL));
  a1[2] = vaddq_s64(a1[2], xmmword_101C66230);

  return sub_1002D9A90(a1, 1);
}

char *sub_1002DCBEC@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[87] < 0)
  {
    return sub_100007244(a2, *(result + 8), *(result + 9));
  }

  *a2 = *(result + 4);
  *(a2 + 16) = *(result + 10);
  return result;
}

void sub_1002DCC14(uint64_t a1)
{
  v2 = a1 + 832;
  v90 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v92 = 256;
  Current = CFAbsoluteTimeGetCurrent();
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (!*(a1 + 312) || !*(a1 + 296))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v70 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v71 = *(a1 + 312) == 0;
      v72 = *(a1 + 296) == 0;
      *buf = 67240448;
      *v105 = v71;
      *&v105[4] = 1026;
      *&v105[6] = v72;
      _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_DEFAULT, "WifiMgr, performScan, fail,  device, %{public}d, dpc, %{public}d", buf, 0xEu);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_120;
    }

    sub_1018CD5B4(buf);
    v73 = *(a1 + 312) == 0;
    v74 = *(a1 + 296) == 0;
    v98 = 67240448;
    *v99 = v73;
    *&v99[4] = 1026;
    *&v99[6] = v74;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiMgr, performScan, fail,  device, %{public}d, dpc, %{public}d", &v98, 14);
    v76 = v75;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::performPendingScans()", "%s\n", v75);
    goto LABEL_117;
  }

  v5 = Current;
  if (Current - *(a1 + 424) <= 3.0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v77 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v77, OS_LOG_TYPE_DEFAULT, "WifiMgr, performScan, in progress", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_120;
    }

    sub_1018CD5B4(buf);
    LOWORD(v98) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiMgr, performScan, in progress", &v98, 2);
    v76 = v78;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::performPendingScans()", "%s\n", v78);
LABEL_117:
    if (v76 != buf)
    {
      free(v76);
    }

LABEL_120:
    if (v92)
    {
      pthread_mutex_unlock(v91);
    }

    else
    {
      (*(*v90 + 24))(v90);
    }

    return;
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018CD624();
  }

  v6 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 384);
    *buf = 134349056;
    *v105 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "WifiScan, perform, %{public}lu", buf, 0xCu);
  }

  v85 = v2;
  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    v79 = *(a1 + 384);
    v98 = 134349056;
    *v99 = v79;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 1, "WifiScan, perform, %{public}lu", &v98, 12);
    v81 = v80;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::performPendingScans()", "%s\n", v80);
    if (v81 != buf)
    {
      free(v81);
    }
  }

  *&v9 = 67109890;
  v83 = v9;
  v84 = 134217984;
  v86 = 1;
  while (*(a1 + 384))
  {
    sub_1002D98B4(&v98, (*(*(a1 + 352) + 8 * (*(a1 + 376) / 0x2AuLL)) + 96 * (*(a1 + 376) % 0x2AuLL)));
    v10 = sub_1002DCBCC(&v98);
    sub_1002DCB44((a1 + 344));
    v11 = sub_1002DDCF4(a1, &v98);
    if (v11)
    {
      if (sub_1002DCBD4(&v98))
      {
        v12 = kCFBooleanTrue;
      }

      else
      {
        v12 = kCFBooleanFalse;
      }

      CFDictionarySetValue(v11, @"SCAN_LOW_PRIORITY", v12);
      if (sub_1002DDC94(&v98))
      {
        v13 = kCFBooleanTrue;
      }

      else
      {
        v13 = kCFBooleanFalse;
      }

      CFDictionarySetValue(v11, @"SCAN_LOW_LATENCY", v13);
      v14 = sub_1002DCBDC(&v98);
      v15 = 120;
      if (v14)
      {
        v15 = 112;
      }

      CFDictionarySetValue(v11, @"SCAN_TYPE", *(a1 + v15));
      v16 = *(a1 + 312);
      CFRetain(v16);
      CFRetain(v11);
      sub_1000393C8(v2);
      v17 = CFAbsoluteTimeGetCurrent();
      *(a1 + 233) = v10;
      v18 = WiFiDeviceClientScanAsync();
      if (p_info[196] != -1)
      {
        sub_1018CD58C();
      }

      v19 = v6[197];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        sub_1002DCBEC(&v98, __p);
        if (__p[23] >= 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = *__p;
        }

        v21 = sub_1002DCBCC(&v98);
        v22 = sub_1002DDED4(v21);
        if (sub_1002DCBD4(&v98))
        {
          v23 = 108;
        }

        else
        {
          v23 = 110;
        }

        v24 = sub_1002DDC94(&v98);
        v25 = sub_1002DCBDC(&v98);
        *buf = 136447746;
        if (v24)
        {
          v26 = 108;
        }

        else
        {
          v26 = 100;
        }

        *v105 = v20;
        if (v25)
        {
          v27 = 112;
        }

        else
        {
          v27 = 97;
        }

        *&v105[8] = 2082;
        *&v105[10] = v22;
        *&v105[18] = 1026;
        *&v105[20] = v23;
        v106 = 1026;
        LODWORD(v107) = v26;
        WORD2(v107) = 1026;
        *(&v107 + 6) = v27;
        WORD5(v107) = 1026;
        HIDWORD(v107) = v86;
        v108 = 1026;
        v109 = v18;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "WifiScan, execute, %{public}s, %{public}s, flags, %{public}c%{public}c%{public}c, n, %{public}d, error, %{public}d", buf, 0x34u);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        ++v86;
        v2 = v85;
        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        v6 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CD5B4(buf);
        v41 = v6[197];
        sub_1002DCBEC(&v98, v88);
        if (v89 >= 0)
        {
          v42 = v88;
        }

        else
        {
          v42 = v88[0];
        }

        v43 = sub_1002DCBCC(&v98);
        v44 = sub_1002DDED4(v43);
        if (sub_1002DCBD4(&v98))
        {
          v45 = 108;
        }

        else
        {
          v45 = 110;
        }

        v46 = sub_1002DDC94(&v98);
        v47 = sub_1002DCBDC(&v98);
        *__p = 136447746;
        if (v46)
        {
          v48 = 108;
        }

        else
        {
          v48 = 100;
        }

        *&__p[4] = v42;
        if (v47)
        {
          v49 = 112;
        }

        else
        {
          v49 = 97;
        }

        *&__p[12] = 2082;
        *&__p[14] = v44;
        *&__p[22] = 1026;
        *&__p[24] = v45;
        v94 = 1026;
        LODWORD(v95) = v48;
        WORD2(v95) = 1026;
        *(&v95 + 6) = v49;
        WORD5(v95) = 1026;
        HIDWORD(v95) = v86;
        v96 = 1026;
        v97 = v18;
        LODWORD(v82) = 52;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v41, 0, "WifiScan, execute, %{public}s, %{public}s, flags, %{public}c%{public}c%{public}c, n, %{public}d, error, %{public}d", __p, v82);
        v51 = v50;
        if (v89 < 0)
        {
          operator delete(v88[0]);
        }

        sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::performPendingScans()", "%s\n", v51);
        v2 = v85;
        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        v6 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        if (v51 != buf)
        {
          free(v51);
        }

        ++v86;
      }

      if (*(a1 + 234) == 1)
      {
        if (p_info[196] != -1)
        {
          sub_1018CD58C();
        }

        v28 = v6[197];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "WifiMgr, Requesting scan with pending scan reply, #CloneMe", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018CD5B4(buf);
          v57 = v6[197];
          *__p = 0;
          LODWORD(v82) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v57, 0, "WifiMgr, Requesting scan with pending scan reply, #CloneMe", __p, v82);
          v59 = v58;
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::performPendingScans()", "%s\n", v58);
          if (v59 != buf)
          {
            free(v59);
          }
        }
      }

      *(a1 + 234) = 1;
      v29 = CFAbsoluteTimeGetCurrent();
      sub_10003926C(v2);
      CFRelease(v11);
      CFRelease(v16);
      v30 = v29 - v17;
      if (v30 >= 3.0)
      {
        if (qword_1025D48A0 != -1)
        {
          sub_1018CD638();
        }

        v31 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v84;
          *v105 = v30;
          _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "#Warning WIFI: ScanAsync blocked for, %.1lf", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018CD660(buf);
          *__p = v84;
          *&__p[4] = v30;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning WIFI: ScanAsync blocked for, %.1lf", COERCE_DOUBLE(__p));
          v61 = v60;
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::performPendingScans()", "%s\n", v60);
          if (v61 != buf)
          {
            free(v61);
          }
        }
      }

      if (!v18)
      {
        *(a1 + 424) = v5;
        if (qword_1025D48A0 != -1)
        {
          sub_1018CD638();
        }

        v37 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          v38 = sub_1002DDED4(v10);
          v39 = *(a1 + 384);
          *buf = v83;
          *v105 = v10;
          *&v105[4] = 2080;
          *&v105[6] = v38;
          *&v105[14] = 2048;
          *&v105[16] = v39;
          v106 = 2048;
          *&v107 = v30;
          _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "asynchronous scan type %d %s in progress (%lu requests left), scanWaitInterval, %.3lf", buf, 0x26u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018CD660(buf);
          v62 = qword_1025D48A8;
          v63 = sub_1002DDED4(v10);
          v64 = *(a1 + 384);
          *__p = v83;
          *&__p[4] = v10;
          *&__p[8] = 2080;
          *&__p[10] = v63;
          *&__p[18] = 2048;
          *&__p[20] = v64;
          v94 = 2048;
          *&v95 = v30;
          LODWORD(v82) = 38;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v62, 2, "asynchronous scan type %d %s in progress (%lu requests left), scanWaitInterval, %.3lf", __p, v82, v83, *(&v83 + 1));
          v66 = v65;
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::performPendingScans()", "%s\n", v65);
          if (v66 != buf)
          {
            free(v66);
          }
        }

        if (*(a1 + 312))
        {
          WiFiDeviceClientRegisterScanUpdateCallback();
        }

        else
        {
          if (p_info[196] != -1)
          {
            sub_1018CD58C();
          }

          v40 = v6[197];
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_ERROR, "WifiService, performPendingScans, fWifiDevice NULL", buf, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018CD5B4(buf);
            v67 = v6[197];
            *__p = 0;
            LODWORD(v82) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v67, 16, "WifiService, performPendingScans, fWifiDevice NULL", __p, v82);
            v69 = v68;
            sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::performPendingScans()", "%s\n", v68);
            if (v69 != buf)
            {
              free(v69);
            }
          }
        }

        v36 = 0;
        goto LABEL_72;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018CD638();
      }

      v32 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v33 = sub_1002DDED4(v10);
        v34 = *(a1 + 384);
        *buf = 67110146;
        *v105 = v10;
        *&v105[4] = 2080;
        *&v105[6] = v33;
        *&v105[14] = 2048;
        *&v105[16] = v34;
        v106 = 1024;
        LODWORD(v107) = v18;
        WORD2(v107) = 2048;
        *(&v107 + 6) = v30;
        _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEFAULT, "#Warning asynchronous scan type %d %s failed (%lu requests left) - error %d, scanWaitInterval, %.3lf", buf, 0x2Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CD660(buf);
        v52 = qword_1025D48A8;
        v53 = sub_1002DDED4(v10);
        v54 = *(a1 + 384);
        *__p = 67110146;
        *&__p[4] = v10;
        *&__p[8] = 2080;
        *&__p[10] = v53;
        *&__p[18] = 2048;
        *&__p[20] = v54;
        v94 = 1024;
        LODWORD(v95) = v18;
        WORD2(v95) = 2048;
        *(&v95 + 6) = v30;
        LODWORD(v82) = 44;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v52, 0, "#Warning asynchronous scan type %d %s failed (%lu requests left) - error %d, scanWaitInterval, %.3lf", __p, v82, v83, DWORD2(v83), *&v84);
        v56 = v55;
        sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::performPendingScans()", "%s\n", v55);
        if (v56 != buf)
        {
          free(v56);
        }
      }

      sub_10014E54C((a1 + 448));
      *(a1 + 432) = -1;
      *(a1 + 440) = 0;
      v35 = *(a1 + 40);
      v87[0] = _NSConcreteStackBlock;
      v87[1] = 3221225472;
      v87[2] = sub_1005A2F04;
      v87[3] = &unk_102449A78;
      v87[4] = a1;
      [v35 async:v87];
    }

    v36 = 1;
LABEL_72:
    if (v103 < 0)
    {
      operator delete(v102);
    }

    if (v100)
    {
      v101 = v100;
      operator delete(v100);
    }

    if ((v36 & 1) == 0)
    {
      break;
    }
  }

  if ((v92 & 0x100) != 0)
  {
    goto LABEL_120;
  }
}

void sub_1002DDBD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  sub_10038EBF0(&a49);
  sub_1017EC98C(&a35);
  _Unwind_Resume(a1);
}

void sub_1002DDC9C(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;

    operator delete(v2);
  }
}

const __CFDictionary *sub_1002DDCF4(uint64_t a1, unsigned int *a2)
{
  if (sub_1002DCBCC(a2) == 11)
  {
    v4 = sub_100187E48(a2);
    v5 = sub_100BCA9AC(a2);
    v6 = sub_10002411C(a2);
    v14 = *sub_100E43F28(a2);
    v13 = *(sub_100E43F28(a2) + 8);
    v7 = sub_10085FD60(a2);
    v8 = sub_100036020(a2);
    v9 = sub_1002DCBD4(a2);
    v10 = sub_1005A29D8(a1, v4, v5, v6, &v14, &v13, v7, v8, v9);
    return CFAutorelease(v10);
  }

  else
  {
    v12 = sub_1002DCBCC(a2);

    return sub_1002DAC84(a1, v12);
  }
}

void *sub_1002DDE28(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *sub_1000F2B3C(a1, &v6, a2);
  if (!result)
  {
    sub_1005350B8();
  }

  return result;
}

const char *sub_1002DDED4(unsigned int a1)
{
  if (a1 > 0xC)
  {
    return "na";
  }

  else
  {
    return (&off_1024A0F00)[a1];
  }
}

uint64_t sub_1002DDEF8(uint64_t a1, uint64_t a2, const __CFArray *a3, int a4)
{
  v7 = a1 + 832;
  v50 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832, a2);
  v51 = 256;
  v8 = _os_activity_create(dword_100000000, "CL: onWiFiDeviceClientScanCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    v61 = 0;
    v62 = 2082;
    *v63 = "";
    *&v63[8] = 2082;
    *&v63[10] = "activity";
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiDeviceClientScanCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  sub_100063E40(a1);
  v10 = *(a1 + 233);
  if ((*(a1 + 234) & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v11 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "WifiMgr, Multiple scan callbacks, #CloneMe", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(buf);
      LOWORD(v52) = 0;
      LODWORD(v41) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiMgr, Multiple scan callbacks, #CloneMe", &v52, v41);
      v29 = v28;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClientScanCallback(WiFiDeviceClientRef, CFArrayRef, WiFiError)", "%s\n", v28);
      if (v29 != buf)
      {
        free(v29);
      }
    }
  }

  *(a1 + 234) = 0;
  v42 = qword_102637AD0;
  if (byte_102637AD8[23] < 0)
  {
    sub_100007244(&__p, *byte_102637AD8, *&byte_102637AD8[8]);
  }

  else
  {
    __p = *byte_102637AD8;
    v44 = *&byte_102637AD8[16];
  }

  v45 = xmmword_102637AF0;
  v46 = xmmword_102637B00;
  v47 = xmmword_102637B10;
  v48 = qword_102637B20;
  if (a3 && (v12 = CFGetTypeID(a3), v12 == CFArrayGetTypeID()))
  {
    Count = CFArrayGetCount(a3);
    v14 = 1;
  }

  else
  {
    v14 = 0;
    Count = 0;
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v15 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240704;
    v61 = a4;
    v62 = 1026;
    *v63 = v14;
    *&v63[4] = 1026;
    *&v63[6] = Count;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "WifiMgr, onWiFiDeviceClientScanCallback, error, %{public}d, valid, %{public}d, count, %{public}d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    LODWORD(v52) = 67240704;
    HIDWORD(v52) = a4;
    *v53 = 1026;
    *&v53[2] = v14;
    *&v53[6] = 1026;
    *&v53[8] = Count;
    LODWORD(v41) = 20;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiMgr, onWiFiDeviceClientScanCallback, error, %{public}d, valid, %{public}d, count, %{public}d", &v52, v41, v42);
    v27 = v26;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClientScanCallback(WiFiDeviceClientRef, CFArrayRef, WiFiError)", "%s\n", v26);
    if (v27 != buf)
    {
      free(v27);
    }
  }

  v16 = v14 ^ 1;
  if (a4)
  {
    v16 = 1;
  }

  if (v16)
  {
    *(a1 + 432) = -1;
    *(a1 + 440) = 0;
    sub_10014E54C((a1 + 448));
    *(a1 + 424) = 0;
    if (a4 == 16)
    {
      *(a1 + 752) = -kCFAbsoluteTimeIntervalSince1970;
      *(a1 + 760) = 16;
      if (*(a1 + 408) < 0.0)
      {
        if (qword_1025D48A0 != -1)
        {
          sub_1018CD638();
        }

        v22 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "recording busy start time as now", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018CD660(buf);
          LOWORD(v52) = 0;
          LODWORD(v41) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "recording busy start time as now", &v52, v41);
          v40 = v39;
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClientScanCallback(WiFiDeviceClientRef, CFArrayRef, WiFiError)", "%s\n", v39);
          if (v40 != buf)
          {
            free(v40);
          }
        }

        *(a1 + 408) = CFAbsoluteTimeGetCurrent();
      }

      ++*(a1 + 772);
      *buf = 5;
      (*(*a1 + 144))(a1, buf, 0, 0xFFFFFFFFLL);
    }

    else
    {
      *buf = 4;
      (*(*a1 + 144))(a1, buf, 0, 0xFFFFFFFFLL);
      if (a4 == 6)
      {
        *(a1 + 752) = CFAbsoluteTimeGetCurrent();
        *(a1 + 760) = 6;
      }

      ++*(a1 + 768);
    }
  }

  else
  {
    *(a1 + 432) = v10;
    *(a1 + 440) = CFAbsoluteTimeGetCurrent();
    sub_10014E54C((a1 + 448));
    *(a1 + 752) = -kCFAbsoluteTimeIntervalSince1970;
    *(a1 + 760) = 0;
    sub_1002E0A48(a1, a3, (a1 + 400), (a1 + 448), "scan");
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD638();
    }

    v17 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v18 = sub_1002DDED4(v10);
      v19 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 456) - *(a1 + 448)) >> 3);
      v20 = *(a1 + 440) - *(a1 + 424);
      v21 = *(a1 + 400);
      *buf = 67110146;
      v61 = v10;
      v62 = 2080;
      *v63 = v18;
      *&v63[8] = 2048;
      *&v63[10] = v19;
      v64 = 2048;
      v65 = v20;
      v66 = 2048;
      v67 = v21;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "asynchronous scan type %d %s completed - %lu results (%.3fs scan time), max age, %.3f", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD660(buf);
      v30 = qword_1025D48A8;
      v31 = sub_1002DDED4(v10);
      v32 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 456) - *(a1 + 448)) >> 3);
      v33 = *(a1 + 440) - *(a1 + 424);
      v34 = *(a1 + 400);
      LODWORD(v52) = 67110146;
      HIDWORD(v52) = v10;
      *v53 = 2080;
      *&v53[2] = v31;
      *&v53[10] = 2048;
      v54 = v32;
      v55 = 2048;
      v56 = v33;
      v57 = 2048;
      v58 = v34;
      LODWORD(v41) = 48;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v30, 2, "asynchronous scan type %d %s completed - %lu results (%.3fs scan time), max age, %.3f", &v52, v41, v42, *&__p, *(&__p + 1));
      v36 = v35;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClientScanCallback(WiFiDeviceClientRef, CFArrayRef, WiFiError)", "%s\n", v35);
      if (v36 != buf)
      {
        free(v36);
      }
    }

    ++*(a1 + 764);
    *(a1 + 424) = 0;
    sub_1002E2588(a1, (a1 + 448), v10);
    buf[0] = 0;
    LOBYTE(v62) = 0;
    v68 = 0;
    memset(v69, 0, sizeof(v69));
    v70 = 0;
    buf[1] = v10;
    (*(*a1 + 224))(a1, &v69[8], v69);
    sub_1002E1CB0(a1, &v52);
    if (v59 == 1)
    {
      sub_1002DEB0C(&v62, &v52);
    }

    HIDWORD(v41) = 3;
    (*(*a1 + 152))(a1, &v41 + 4, buf, 1, 0xFFFFFFFFLL, 0);
    [*(a1 + 672) processEventTime:CFAbsoluteTimeGetCurrent()];
    if (v59 == 1 && SBYTE1(v56) < 0)
    {
      operator delete(*v53);
    }

    v52 = &v69[8];
    sub_1000B96B4(&v52);
    if (v68 == 1 && SHIBYTE(v66) < 0)
    {
      operator delete(*&v63[6]);
    }
  }

  if (*(a1 + 312))
  {
    WiFiDeviceClientRegisterScanUpdateCallback();
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v23 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "WifiService, scan callback, fWifiDevice NULL", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD5B4(buf);
      LOWORD(v52) = 0;
      LODWORD(v41) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "WifiService, scan callback, fWifiDevice NULL", &v52, v41);
      v38 = v37;
      sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiDeviceClientScanCallback(WiFiDeviceClientRef, CFArrayRef, WiFiError)", "%s\n", v37);
      if (v38 != buf)
      {
        free(v38);
      }
    }
  }

  if (*(a1 + 384))
  {
    CFRunLoopSourceSignal(*(a1 + 296));
    v24 = sub_100107858();
    CFRunLoopWakeUp(v24);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p);
  }

  os_activity_scope_leave(&state);
  return (*(*v7 + 24))(v7);
}

void sub_1002DEA14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, os_activity_scope_state_s state, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, int a44, __int16 a45, char a46, char a47)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  os_activity_scope_leave(&state);
  sub_1017EC98C(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_1002DEACC(const void *a1, _DWORD *a2)
{
  v4 = 0;
  result = sub_1002E198C(a1, &v4);
  if (result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t sub_1002DEB0C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == 1)
  {
    *a1 = *a2;
    std::string::operator=((a1 + 8), (a2 + 8));
    v5 = *(a2 + 48);
    v4 = *(a2 + 64);
    v6 = *(a2 + 32);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 48) = v5;
    *(a1 + 64) = v4;
    *(a1 + 32) = v6;
  }

  else
  {
    sub_1001005C4(a1, a2);
    *(a1 + 88) = 1;
  }

  return a1;
}

uint64_t sub_1002DEB84(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_102460EC8;
  *(a1 + 24) = *a2;
  sub_1000FB724((a1 + 32), a2 + 8);
  v4 = *(a2 + 104);
  *(a1 + 136) = 0;
  *(a1 + 128) = v4;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  sub_100288650((a1 + 136), *(a2 + 112), *(a2 + 120), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 120) - *(a2 + 112)) >> 3));
  *(a1 + 160) = *(a2 + 136);
  return a1;
}

void sub_1002DEC1C(_Unwind_Exception *a1)
{
  if (*(v1 + 120) == 1 && *(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002DEC54(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a3 = qword_102637AD0;
  std::string::operator=((a3 + 8), byte_102637AD8);
  v7 = xmmword_102637B00;
  v6 = xmmword_102637B10;
  v8 = xmmword_102637AF0;
  *(a3 + 80) = qword_102637B20;
  *(a3 + 48) = v7;
  *(a3 + 64) = v6;
  *(a3 + 32) = v8;
  memset(&v137, 0, sizeof(v137));
  Property = WiFiNetworkGetProperty();
  if (!Property || !sub_100005A24(Property, &v137))
  {
    goto LABEL_6;
  }

  size = HIBYTE(v137.__r_.__value_.__r.__words[2]);
  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v137.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
LABEL_6:
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v11 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      v12 = &v137;
      if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = v137.__r_.__value_.__r.__words[0];
      }

      *buf = 136380675;
      *&buf[4] = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "WifiMgr, error, bssid invalid, %{private}s, #CloneMe", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD5B4(buf);
      v87 = &v137;
      if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v87 = v137.__r_.__value_.__r.__words[0];
      }

      v138 = 136380675;
      v139 = v87;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "WifiMgr, error, bssid invalid, %{private}s, #CloneMe", &v138, 12);
      v89 = v88;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLWifiService::getAccessPoint(const WiFiNetworkRef, CLWifiService_Type::AccessPoint &, GetAccessPointQueryType) const", "%s\n", v88);
      if (v89 != buf)
      {
        free(v89);
      }
    }
  }

  v13 = *(a3 + 32);
  v14 = *(a3 + 36);
  v135 = *(a3 + 40);
  v136 = v14;
  memset(&v134, 0, sizeof(v134));
  v133 = v13;
  v132 = *(a3 + 48);
  HIDWORD(v128) = *(a3 + 65);
  v131 = *(a3 + 68);
  v15 = WiFiNetworkGetProperty();
  if (!v15 || (sub_100005EEC(v15, &v136) & 1) == 0)
  {
    v136 = -1;
  }

  v16 = WiFiNetworkGetProperty();
  if (!v16 || (sub_100005EEC(v16, &v135) & 1) == 0)
  {
    v135 = -1;
  }

  v17 = WiFiNetworkGetProperty();
  if (!v17 || !sub_100005A24(v17, &v134))
  {
    if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
    {
      *v134.__r_.__value_.__l.__data_ = 0;
      v134.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v134.__r_.__value_.__s.__data_[0] = 0;
      *(&v134.__r_.__value_.__s + 23) = 0;
    }
  }

  v18 = WiFiNetworkGetProperty();
  if (!v18 || (sub_100005EEC(v18, &v133) & 1) == 0)
  {
    v133 = -1;
  }

  v19 = WiFiNetworkGetProperty();
  v20 = -1.0;
  if (v19 && sub_1000B8430(v19, &v132))
  {
    v20 = v132 / 1000.0;
  }

  v132 = v20;
  IsApplePersonalHotspot = WiFiNetworkIsApplePersonalHotspot();
  if (v136 != -1 || v135 != -1)
  {
    v24 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = v137.__r_.__value_.__l.__size_;
    }

    if (!v24)
    {
      goto LABEL_45;
    }

    if (v135 >= 1)
    {
LABEL_49:
      v25 = 0;
      v26 = v135 < 0xA6;
      goto LABEL_51;
    }

LABEL_44:
    v25 = 0;
    v26 = 0;
    goto LABEL_51;
  }

  if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(v134.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = v134.__r_.__value_.__l.__size_;
  }

  v23 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v23 = v137.__r_.__value_.__l.__size_;
  }

  if (!v22)
  {
    v26 = v23 != 0;
    v25 = 1;
    goto LABEL_51;
  }

  if (v23)
  {
    goto LABEL_44;
  }

LABEL_45:
  v25 = 0;
  v27 = HIBYTE(v134.__r_.__value_.__r.__words[2]);
  v26 = 0;
  if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = v134.__r_.__value_.__l.__size_;
  }

  if (v27 && v135 >= 1)
  {
    goto LABEL_49;
  }

LABEL_51:
  v28 = WiFiNetworkGetProperty();
  if (!v28 || (sub_1002DEACC(v28, &v131) & 1) == 0)
  {
    v131 = 0;
  }

  LODWORD(v128) = v26;
  if (v26)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v29 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v30 = &v137;
      if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v30 = v137.__r_.__value_.__r.__words[0];
      }

      v31 = &v134;
      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v31 = v134.__r_.__value_.__r.__words[0];
      }

      *buf = 136316930;
      *&buf[4] = v30;
      *&buf[12] = 2080;
      *&buf[14] = v31;
      *&buf[22] = 1024;
      v159 = v135;
      v160 = 1024;
      v161 = v136;
      v162 = 1024;
      v163 = v133;
      v164 = 2048;
      v165 = v132;
      v166 = 1024;
      v167 = v25;
      v168 = 1024;
      LODWORD(v169) = v131;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "WifiService, getAccessPoint, mac, %s, ssid, %s, channel, %d, mode, 0x%x, rssi, %d, age, %.1lf, isEPNONetwork, %d， rssiFlags, %u", buf, 0x3Eu);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_111;
    }

    sub_1018CD5B4(buf);
    v32 = &v137;
    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v32 = v137.__r_.__value_.__r.__words[0];
    }

    v33 = &v134;
    if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v33 = v134.__r_.__value_.__r.__words[0];
    }

    v138 = 136316930;
    v139 = v32;
    v140 = 2080;
    v141 = v33;
    v142 = 1024;
    v143 = v135;
    v144 = 1024;
    v145 = v136;
    v146 = 1024;
    v147 = v133;
    v148 = 2048;
    v149 = v132;
    v150 = 1024;
    v151 = v25;
    v152 = 1024;
    LODWORD(v153) = v131;
    LODWORD(v104) = 62;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "WifiService, getAccessPoint, mac, %s, ssid, %s, channel, %d, mode, 0x%x, rssi, %d, age, %.1lf, isEPNONetwork, %d， rssiFlags, %u", &v138, v104, v105, v106, v109, v114, v118, v26);
    v35 = v34;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::getAccessPoint(const WiFiNetworkRef, CLWifiService_Type::AccessPoint &, GetAccessPointQueryType) const", "%s\n", v34);
    if (v35 == buf)
    {
      goto LABEL_111;
    }

LABEL_170:
    free(v35);
    goto LABEL_111;
  }

  if (*(a3 + 40))
  {
    if (*(a3 + 31) < 0)
    {
      sub_100007244(buf, *(a3 + 8), *(a3 + 16));
    }

    else
    {
      *buf = *(a3 + 8);
      *&buf[16] = *(a3 + 24);
    }

    if (buf[23] >= 0)
    {
      v36 = buf[23];
    }

    else
    {
      v36 = *&buf[8];
    }

    if ((buf[23] & 0x8000000000000000) != 0)
    {
      operator delete(*buf);
      if (v36)
      {
        goto LABEL_79;
      }
    }

    else if (v36)
    {
LABEL_79:
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v37 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        v115 = v25;
        v119 = IsApplePersonalHotspot;
        v124 = a4;
        if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v38 = &v137;
        }

        else
        {
          v38 = v137.__r_.__value_.__r.__words[0];
        }

        if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v39 = &v134;
        }

        else
        {
          v39 = v134.__r_.__value_.__r.__words[0];
        }

        v41 = v135;
        v40 = v136;
        v107 = v133;
        v110 = v132;
        v42 = WiFiNetworkGetProperty();
        v43 = WiFiNetworkGetProperty();
        v44 = WiFiNetworkGetProperty();
        *buf = 136382979;
        *&buf[4] = v38;
        *&buf[12] = 2081;
        *&buf[14] = v39;
        *&buf[22] = 1026;
        v159 = v41;
        v160 = 1026;
        v161 = v40;
        v162 = 1026;
        v163 = v107;
        v164 = 2050;
        v165 = v110;
        v166 = 1026;
        v25 = v115;
        v167 = v115;
        v168 = 2050;
        v169 = v42;
        v170 = 2050;
        v171 = v43;
        v172 = 2049;
        v173 = v44;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_ERROR, "WifiService, getAccessPoint, invalid-network, mac, %{private}s, ssid, %{private}s, channel, %{public}d, mode, 0x%{public}x, rssi, %{public}d, age, %{public}.1lf, isEPNONetwork, %{public}d, m, %{public}p, c, %{public}p, s, %{private}p", buf, 0x56u);
        IsApplePersonalHotspot = v119;
        a4 = v124;
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018CD5B4(buf);
        v116 = v25;
        v120 = IsApplePersonalHotspot;
        v125 = a4;
        if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v137;
        }

        else
        {
          v45 = v137.__r_.__value_.__r.__words[0];
        }

        if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = &v134;
        }

        else
        {
          v46 = v134.__r_.__value_.__r.__words[0];
        }

        v47 = v135;
        v48 = v136;
        v49 = v133;
        v108 = v132;
        v111 = qword_1025D4628;
        v50 = WiFiNetworkGetProperty();
        v51 = WiFiNetworkGetProperty();
        v52 = WiFiNetworkGetProperty();
        v138 = 136382979;
        v139 = v45;
        v140 = 2081;
        v141 = v46;
        v142 = 1026;
        v143 = v47;
        v144 = 1026;
        v145 = v48;
        v146 = 1026;
        v147 = v49;
        v148 = 2050;
        v149 = v108;
        v150 = 1026;
        v151 = v116;
        v152 = 2050;
        v153 = v50;
        v154 = 2050;
        v155 = v51;
        v156 = 2049;
        v157 = v52;
        LODWORD(v104) = 86;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v111, 16, "WifiService, getAccessPoint, invalid-network, mac, %{private}s, ssid, %{private}s, channel, %{public}d, mode, 0x%{public}x, rssi, %{public}d, age, %{public}.1lf, isEPNONetwork, %{public}d, m, %{public}p, c, %{public}p, s, %{private}p", &v138, v104);
        v54 = v53;
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLWifiService::getAccessPoint(const WiFiNetworkRef, CLWifiService_Type::AccessPoint &, GetAccessPointQueryType) const", "%s\n", v53);
        if (v54 != buf)
        {
          free(v54);
        }

        IsApplePersonalHotspot = v120;
        a4 = v125;
      }

      goto LABEL_111;
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v55 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v117 = v25;
    v121 = IsApplePersonalHotspot;
    v126 = a4;
    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = &v137;
    }

    else
    {
      v56 = v137.__r_.__value_.__r.__words[0];
    }

    if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = &v134;
    }

    else
    {
      v57 = v134.__r_.__value_.__r.__words[0];
    }

    v59 = *(a3 + 36);
    v58 = *(a3 + 40);
    v60 = *(a3 + 32);
    v112 = *(a3 + 48);
    v61 = WiFiNetworkGetProperty();
    v62 = WiFiNetworkGetProperty();
    v63 = WiFiNetworkGetProperty();
    *buf = 136317442;
    *&buf[4] = v56;
    *&buf[12] = 2080;
    *&buf[14] = v57;
    *&buf[22] = 1024;
    v159 = v58;
    v160 = 1024;
    v161 = v59;
    v162 = 1024;
    v163 = v60;
    v164 = 2048;
    v165 = v112;
    v166 = 1024;
    v25 = v117;
    v167 = v117;
    v168 = 2048;
    v169 = v61;
    v170 = 2048;
    v171 = v62;
    v172 = 2048;
    v173 = v63;
    _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEFAULT, "WifiService, getAccessPoint, invalid-network, mac, %s, ssid, %s, channel, %d, mode, 0x%x, rssi, %d, age, %.1lf, isEPNONetwork, %d, m, %p, c, %p, s, %p", buf, 0x56u);
    IsApplePersonalHotspot = v121;
    a4 = v126;
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    HIDWORD(v114) = v25;
    v122 = IsApplePersonalHotspot;
    v113 = qword_1025D4628;
    v94 = (v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v137 : v137.__r_.__value_.__r.__words[0];
    v95 = (v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v134 : v134.__r_.__value_.__r.__words[0];
    v96 = *(a3 + 36);
    v97 = *(a3 + 40);
    v98 = *(a3 + 32);
    v99 = *(a3 + 48);
    v100 = WiFiNetworkGetProperty();
    v101 = WiFiNetworkGetProperty();
    v102 = WiFiNetworkGetProperty();
    v138 = 136317442;
    v139 = v94;
    v140 = 2080;
    v141 = v95;
    v142 = 1024;
    v143 = v97;
    v144 = 1024;
    v145 = v96;
    v146 = 1024;
    v147 = v98;
    v148 = 2048;
    v149 = v99;
    v150 = 1024;
    v151 = HIDWORD(v114);
    v152 = 2048;
    v153 = v100;
    v154 = 2048;
    v155 = v101;
    v156 = 2048;
    v157 = v102;
    LODWORD(v104) = 86;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v113, 0, "WifiService, getAccessPoint, invalid-network, mac, %s, ssid, %s, channel, %d, mode, 0x%x, rssi, %d, age, %.1lf, isEPNONetwork, %d, m, %p, c, %p, s, %p", &v138, v104, v105, v106, v113, v114, v122, v128, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v35 = v103;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::getAccessPoint(const WiFiNetworkRef, CLWifiService_Type::AccessPoint &, GetAccessPointQueryType) const", "%s\n", v103);
    IsApplePersonalHotspot = v123;
    a4 = v127;
    if (v35 != buf)
    {
      goto LABEL_170;
    }
  }

LABEL_111:
  v130 = qword_102637AD0;
  if (a4)
  {
    if (a4 == 1)
    {
      v64 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
      if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v64 = v137.__r_.__value_.__l.__size_;
      }

      if (v64 || (*buf = qword_102637AD0, sub_100A8D070(&v130, buf)))
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }

        v65 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
        {
          v66 = &v137;
          if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v66 = v137.__r_.__value_.__r.__words[0];
          }

          *buf = 136380931;
          *&buf[4] = v66;
          *&buf[12] = 1025;
          *&buf[14] = 75312138;
          _os_log_impl(dword_100000000, v65, OS_LOG_TYPE_ERROR, "WifiService, getAccessPoint, HostedNetwork, %{private}s, r%{private}d", buf, 0x12u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018CD5B4(buf);
          v67 = &v137;
          if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v67 = v137.__r_.__value_.__r.__words[0];
          }

          v138 = 136380931;
          v139 = v67;
          v140 = 1025;
          LODWORD(v141) = 75312138;
          LODWORD(v104) = 18;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "WifiService, getAccessPoint, HostedNetwork, %{private}s, r%{private}d", &v138, v104);
          v69 = v68;
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLWifiService::getAccessPoint(const WiFiNetworkRef, CLWifiService_Type::AccessPoint &, GetAccessPointQueryType) const", "%s\n", v68);
          if (v69 != buf)
          {
            free(v69);
          }
        }
      }
    }
  }

  else
  {
    v130 = sub_100196E8C(&v137);
  }

  v70 = v130;
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100007244(&__p, v134.__r_.__value_.__l.__data_, v134.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v134;
  }

  v71 = v133;
  v72 = IsApplePersonalHotspot != 0;
  v74 = v135;
  v73 = v136;
  v75 = v132;
  v76 = *(a3 + 56);
  v77 = v131;
  *buf = __p.__r_.__value_.__l.__size_;
  v78 = __p.__r_.__value_.__r.__words[0];
  *&buf[7] = *(&__p.__r_.__value_.__r.__words[1] + 7);
  v79 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  memset(&__p, 0, sizeof(__p));
  *a3 = v70;
  if (*(a3 + 31) < 0)
  {
    operator delete(*(a3 + 8));
    v80 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  }

  else
  {
    v80 = 0;
  }

  v81 = *buf;
  *(a3 + 8) = v78;
  *(a3 + 16) = v81;
  *(a3 + 23) = *&buf[7];
  *(a3 + 31) = v79;
  *(a3 + 32) = v71;
  *(a3 + 36) = v73;
  *(a3 + 40) = v74;
  *(a3 + 48) = v75;
  *(a3 + 56) = v76;
  *(a3 + 64) = v72;
  *(a3 + 65) = BYTE4(v128);
  *(a3 + 68) = v77;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  if (v80)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v82 = v128;
  if (sub_1002E1AA0(&v130))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v83 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      v84 = &v137;
      if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v84 = v137.__r_.__value_.__r.__words[0];
      }

      v85 = &v134;
      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v85 = v134.__r_.__value_.__r.__words[0];
      }

      *buf = 136380931;
      *&buf[4] = v84;
      *&buf[12] = 2081;
      *&buf[14] = v85;
      _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_ERROR, "WifiService, getAccessPoint, invalid mac, %{private}s, %{private}s, #CloneMe", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD5B4(buf);
      v90 = &v137;
      if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v90 = v137.__r_.__value_.__r.__words[0];
      }

      v91 = &v134;
      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v91 = v134.__r_.__value_.__r.__words[0];
      }

      v138 = 136380931;
      v139 = v90;
      v140 = 2081;
      v141 = v91;
      LODWORD(v104) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "WifiService, getAccessPoint, invalid mac, %{private}s, %{private}s, #CloneMe", &v138, v104);
      v93 = v92;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLWifiService::getAccessPoint(const WiFiNetworkRef, CLWifiService_Type::AccessPoint &, GetAccessPointQueryType) const", "%s\n", v92);
      if (v93 != buf)
      {
        free(v93);
      }
    }

    v82 = 0;
  }

  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v134.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v137.__r_.__value_.__l.__data_);
  }

  return v82;
}

void sub_1002DFCE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002DFD60(void *a1, void *a2)
{
  v4 = sub_10018D3FC(a2);
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

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (sub_100195A00(v11 + 2, a2))
        {
          return v11;
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

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t sub_1002DFE5C(void *a1, uint64_t *a2, void *a3)
{
  v6 = a1 + 104;
  (*(a1[104] + 16))(a1 + 104);
  if (a1 + 56 != a2)
  {
    sub_100288978(a2, a1[56], a1[57], 0x2E8BA2E8BA2E8BA3 * ((a1[57] - a1[56]) >> 3));
  }

  *a3 = a1[55];
  return (*(a1[104] + 24))(v6);
}

void sub_1002DFF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002DFF48(uint64_t a1, uint64_t *a2)
{
  v4 = a1 + 832;
  v36 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v37 = 256;
  if (!*(a1 + 312) || !*(a1 + 304))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v11 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 312) == 0;
      v13 = *(a1 + 304) == 0;
      *buf = 67240448;
      *v43 = v12;
      *&v43[4] = 1026;
      *&v43[6] = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "WifiMgr, getAssoc, fail, device, %{public}d, manager, %{public}d", buf, 0xEu);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_23;
    }

    sub_1018CD5B4(buf);
    v14 = *(a1 + 312) == 0;
    v15 = *(a1 + 304) == 0;
    LODWORD(v38.__r_.__value_.__l.__data_) = 67240448;
    HIDWORD(v38.__r_.__value_.__r.__words[0]) = v14;
    LOWORD(v38.__r_.__value_.__r.__words[1]) = 1026;
    *(&v38.__r_.__value_.__r.__words[1] + 2) = v15;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiMgr, getAssoc, fail, device, %{public}d, manager, %{public}d", &v38, 14);
    v17 = v16;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::getAssociatedNetwork(CLWifiService_Type::AccessPoint &) const", "%s\n", v16);
    goto LABEL_35;
  }

  if (*(a1 + 648) != 1 || *(a1 + 600) < 1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v18 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "WifiMgr, getAssoc, fail, no association", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_23;
    }

    sub_1018CD5B4(buf);
    LOWORD(v38.__r_.__value_.__l.__data_) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 1, "WifiMgr, getAssoc, fail, no association", &v38, 2);
    v17 = v24;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::getAssociatedNetwork(CLWifiService_Type::AccessPoint &) const", "%s\n", v24);
LABEL_35:
    if (v17 != buf)
    {
      free(v17);
    }

LABEL_23:
    v19 = 0;
    goto LABEL_24;
  }

  *a2 = *(a1 + 560);
  v5 = a2 + 1;
  std::string::operator=((a2 + 1), (a1 + 568));
  v6 = *(a1 + 592);
  v7 = *(a1 + 608);
  v8 = *(a1 + 624);
  a2[10] = *(a1 + 640);
  *(a2 + 3) = v7;
  *(a2 + 4) = v8;
  *(a2 + 2) = v6;
  if (qword_1025D4620 != -1)
  {
    sub_1018CD624();
  }

  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    __dst[0] = *a2;
    v10 = &v38;
    sub_1000ECD9C(&v38);
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = v38.__r_.__value_.__r.__words[0];
    }

    if (*(a2 + 31) < 0)
    {
      sub_100007244(&__p, a2[1], a2[2]);
    }

    else
    {
      *&__p.__r_.__value_.__l.__data_ = *v5;
      __p.__r_.__value_.__r.__words[2] = a2[3];
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v22 = *(a2 + 10);
    v23 = *(a2 + 8);
    *buf = 136381443;
    *v43 = v10;
    *&v43[8] = 2081;
    v44 = p_p;
    v45 = 1026;
    v46 = v22;
    v47 = 1026;
    v48 = v23;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "WifiMgr, getAssoc, mac, %{private}s, ssid, %{private}s, channel, %{public}d, rssi, %{public}d", buf, 0x22u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    v25 = qword_1025D4628;
    v34 = *a2;
    v26 = &__p;
    sub_1000ECD9C(&__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v26 = __p.__r_.__value_.__r.__words[0];
    }

    if (*(a2 + 31) < 0)
    {
      sub_100007244(__dst, a2[1], a2[2]);
    }

    else
    {
      *__dst = *v5;
      v33 = a2[3];
    }

    v27 = __dst;
    if (v33 < 0)
    {
      v27 = __dst[0];
    }

    v28 = *(a2 + 10);
    v29 = *(a2 + 8);
    LODWORD(v38.__r_.__value_.__l.__data_) = 136381443;
    *(v38.__r_.__value_.__r.__words + 4) = v26;
    WORD2(v38.__r_.__value_.__r.__words[1]) = 2081;
    *(&v38.__r_.__value_.__r.__words[1] + 6) = v27;
    HIWORD(v38.__r_.__value_.__r.__words[2]) = 1026;
    v39 = v28;
    v40 = 1026;
    v41 = v29;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v25, 2, "WifiMgr, getAssoc, mac, %{private}s, ssid, %{private}s, channel, %{public}d, rssi, %{public}d", &v38, 34);
    v31 = v30;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::getAssociatedNetwork(CLWifiService_Type::AccessPoint &) const", "%s\n", v31);
    if (v31 != buf)
    {
      free(v31);
    }
  }

  v19 = 1;
LABEL_24:
  (*(*v4 + 24))(v4);
  return v19;
}

void sub_1002E0528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1017EC98C(&a21);
  _Unwind_Resume(a1);
}

void sub_1002E0594(uint64_t a1)
{
  v2 = (a1 + 112);
  sub_1000B96B4(&v2);
  if (*(a1 + 96) == 1 && *(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void sub_1002E06EC(_Unwind_Exception *a1)
{
  if (*(v1 + 96) == 1 && *(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  operator delete();
}

void *sub_1002E0728(uint64_t a1, int a2)
{
  v2 = *(a1 + 2656);
  if (a2)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019131A0();
    }

    v3 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
    {
      v5[0] = 67240192;
      v5[1] = v2;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "CLAccessory,getAccessoryTypeBitSet,%{public}d", v5, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019131B4(v2);
    }
  }

  return v2;
}

void sub_1002E080C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v14 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiDeviceClientScanCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "activity";
      v21 = 2050;
      v22 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiDeviceClientScanCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v14 = 0;
  }

  v10 = [*(a4 + 32) silo];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002E0A34;
  v11[3] = &unk_102460E48;
  v11[4] = a4;
  v11[5] = a1;
  v11[6] = a2;
  v12 = a3;
  [v10 sync:v11];
  if (v14 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1002E0A48(uint64_t a1, CFArrayRef theArray, double *a3, uint64_t *a4, uint64_t a5)
{
  v52 = a5;
  v53 = a3;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 10001)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD624();
      }

      v7 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446466;
        *&buf[4] = v52;
        *&buf[12] = 2050;
        *&buf[14] = Count;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "WifiScan, warning, too many APs returned from wifid. source, %{public}s, APs, %{public}ld", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018CF940();
      }
    }
  }

  else
  {
    Count = 0;
  }

  v62 = 0u;
  v63 = 0u;
  v64 = 1065353216;
  v8 = *a4;
  v9 = a4[1];
  while (v8 != v9)
  {
    *buf = *v8;
    sub_100188540(&v62, buf, buf);
    v8 += 11;
  }

  *&v10 = CFAbsoluteTimeGetCurrent();
  if (Count >= 1)
  {
    v11 = *&v10;
    v12 = 0;
    v55 = 0;
    v13 = 0;
    v57 = 0;
    v14 = 0;
    v54 = 67240448;
    *&v10 = 136381187;
    v50 = v10;
    *&v10 = 67240451;
    v51 = v10;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v12);
      v16 = CFGetTypeID(ValueAtIndex);
      TypeID = WiFiNetworkGetTypeID();
      if (v16 != TypeID)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }

        v18 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          *&buf[4] = v12;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "WifiScan, failed to retrieve index %{public}d in array", buf, 8u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018CD5B4(buf);
          *v79 = 67240192;
          *&v79[4] = v12;
          LODWORD(v49) = 8;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "WifiScan, failed to retrieve index %{public}d in array", v79, v49);
          v33 = v32;
          sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::addAccessPoints(CFArrayRef, const CFTimeInterval &, std::vector<CLWifiService_Type::AccessPoint> &, const char *)", "%s\n", v32);
          if (v33 != buf)
          {
            free(v33);
          }
        }

        ++v14;
        goto LABEL_94;
      }

      *v79 = qword_102637AD0;
      if (byte_102637AD8[23] < 0)
      {
        TypeID = sub_100007244(&v79[8], *byte_102637AD8, *&byte_102637AD8[8]);
      }

      else
      {
        *&v79[8] = *byte_102637AD8;
        *&v79[24] = *&byte_102637AD8[16];
      }

      *v80 = xmmword_102637AF0;
      *&v80[16] = xmmword_102637B00;
      v81 = xmmword_102637B10;
      v82 = qword_102637B20;
      if ((sub_1002DEC54(TypeID, ValueAtIndex, v79, 0) & 1) == 0)
      {
        ++v14;
        goto LABEL_92;
      }

      *&v80[24] = v11 - *&v80[16];
      if (qword_1025D48A0 != -1)
      {
        sub_1018CD638();
      }

      v19 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        __dst[0] = *v79;
        sub_1000ECD9C(v65);
        if (v65[23] >= 0)
        {
          v20 = v65;
        }

        else
        {
          v20 = *v65;
        }

        if ((v79[31] & 0x80000000) != 0)
        {
          sub_100007244(&__p, *&v79[8], *&v79[16]);
        }

        else
        {
          __p = *&v79[8];
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 67111170;
        *&buf[4] = v12;
        *&buf[8] = 2048;
        *&buf[10] = Count;
        *&buf[18] = 2080;
        *&buf[20] = v20;
        *&buf[28] = 2080;
        *&buf[30] = p_p;
        v84 = 1024;
        v85 = *v80;
        v86 = 1024;
        v87 = *&v80[4];
        v88 = 1024;
        v89 = *&v80[8];
        v90 = 2048;
        v91 = *&v80[16];
        v92 = 2048;
        v93 = *&v80[24];
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "WIFI_SCAN: raw scan result, ap, %d, %ld, mac, %-20s, ssid, %-30s, rssi, %+4d, mode, %d, channel, %3d, age, %5.2lf, timestamp, %.1lf", buf, 0x4Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((v65[23] & 0x80000000) != 0)
        {
          operator delete(*v65);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CD660(buf);
        v34 = qword_1025D48A8;
        v61 = *v79;
        sub_1000ECD9C(&__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &__p;
        }

        else
        {
          v35 = __p.__r_.__value_.__r.__words[0];
        }

        if ((v79[31] & 0x80000000) != 0)
        {
          sub_100007244(__dst, *&v79[8], *&v79[16]);
        }

        else
        {
          *__dst = *&v79[8];
          v60 = *&v79[24];
        }

        v37 = __dst;
        if (v60 < 0)
        {
          v37 = __dst[0];
        }

        *v65 = 67111170;
        *&v65[4] = v12;
        *&v65[8] = 2048;
        *&v65[10] = Count;
        *&v65[18] = 2080;
        *&v65[20] = v35;
        v66 = 2080;
        v67 = v37;
        v68 = 1024;
        v69 = *v80;
        v70 = 1024;
        v71 = *&v80[4];
        v72 = 1024;
        v73 = *&v80[8];
        v74 = 2048;
        v75 = *&v80[16];
        v76 = 2048;
        v77 = *&v80[24];
        LODWORD(v49) = 76;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v34, 2, "WIFI_SCAN: raw scan result, ap, %d, %ld, mac, %-20s, ssid, %-30s, rssi, %+4d, mode, %d, channel, %3d, age, %5.2lf, timestamp, %.1lf", v65, v49, v50, *(&v50 + 1), v51, DWORD2(v51), v52, *&v53, *&v54);
        v39 = v38;
        if (SHIBYTE(v60) < 0)
        {
          operator delete(__dst[0]);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::addAccessPoints(CFArrayRef, const CFTimeInterval &, std::vector<CLWifiService_Type::AccessPoint> &, const char *)", "%s\n", v39);
        if (v39 != buf)
        {
          free(v39);
        }
      }

      if ((*v80 - 1) <= 0xFFFFFF7E)
      {
        break;
      }

      if (*(a1 + 648) == 1 && *(a1 + 600) >= 1)
      {
        *buf = *v79;
        *v65 = *(a1 + 560);
        if (sub_100195A00(buf, v65))
        {
          if (*(a1 + 648) == 1)
          {
            *(a1 + 592) = *v80;
          }

          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          v23 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
          {
            __dst[0] = *v79;
            sub_10018F0D0(v65);
            if (v65[23] >= 0)
            {
              v24 = v65;
            }

            else
            {
              v24 = *v65;
            }

            if ((v79[31] & 0x80000000) != 0)
            {
              sub_100007244(&__p, *&v79[8], *&v79[16]);
            }

            else
            {
              __p = *&v79[8];
            }

            v25 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v25 = __p.__r_.__value_.__r.__words[0];
            }

            *buf = v50;
            *&buf[4] = v24;
            *&buf[12] = 2081;
            *&buf[14] = v25;
            *&buf[22] = 1026;
            *&buf[24] = *v80;
            _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "WifiScan, update associated rssi, mac, %{private}s, ssid, %{private}s, rssi, %{public}d", buf, 0x1Cu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if ((v65[23] & 0x80000000) != 0)
            {
              operator delete(*v65);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018CD5B4(buf);
            v40 = qword_1025D4628;
            v61 = *v79;
            sub_10018F0D0(&__p);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v41 = &__p;
            }

            else
            {
              v41 = __p.__r_.__value_.__r.__words[0];
            }

            if ((v79[31] & 0x80000000) != 0)
            {
              sub_100007244(__dst, *&v79[8], *&v79[16]);
            }

            else
            {
              *__dst = *&v79[8];
              v60 = *&v79[24];
            }

            v42 = __dst;
            if (v60 < 0)
            {
              v42 = __dst[0];
            }

            *v65 = v50;
            *&v65[4] = v41;
            *&v65[12] = 2081;
            *&v65[14] = v42;
            *&v65[22] = 1026;
            *&v65[24] = *v80;
            LODWORD(v49) = 28;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v40, 2, "WifiScan, update associated rssi, mac, %{private}s, ssid, %{private}s, rssi, %{public}d", v65, v49);
            v44 = v43;
            if (SHIBYTE(v60) < 0)
            {
              operator delete(__dst[0]);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::addAccessPoints(CFArrayRef, const CFTimeInterval &, std::vector<CLWifiService_Type::AccessPoint> &, const char *)", "%s\n", v44);
            if (v44 != buf)
            {
              free(v44);
            }
          }
        }
      }

      if (byte_102656F88 == 1)
      {
        *buf = *v79;
        if (sub_100195A00(&qword_102656F80, buf))
        {
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          v26 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            sub_10018F0D0(buf);
            v27 = buf;
            if (buf[23] < 0)
            {
              v27 = *buf;
            }

            *v65 = v51;
            *&v65[4] = v12 + 1;
            *&v65[8] = 2081;
            *&v65[10] = v27;
            _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "WifiScan, addAp, %{public}d, excluded, %{private}s", v65, 0x12u);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018CD5B4(buf);
            v28 = qword_1025D4628;
            sub_10018F0D0(v65);
            v29 = v65;
            if (v65[23] < 0)
            {
              v29 = *v65;
            }

            LODWORD(__p.__r_.__value_.__l.__data_) = v51;
            HIDWORD(__p.__r_.__value_.__r.__words[0]) = v12 + 1;
            LOWORD(__p.__r_.__value_.__r.__words[1]) = 2081;
            *(&__p.__r_.__value_.__r.__words[1] + 2) = v29;
            LODWORD(v49) = 18;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v28, 0, "WifiScan, addAp, %{public}d, excluded, %{private}s", &__p, v49);
            v31 = v30;
            if ((v65[23] & 0x80000000) != 0)
            {
              operator delete(*v65);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::addAccessPoints(CFArrayRef, const CFTimeInterval &, std::vector<CLWifiService_Type::AccessPoint> &, const char *)", "%s\n", v31);
LABEL_104:
            if (v31 != buf)
            {
              free(v31);
            }
          }

LABEL_49:
          ++v13;
          goto LABEL_92;
        }
      }

      *buf = *v79;
      if (sub_1002DFD60(&v62, buf))
      {
        ++v57;
      }

      else if (*v53 < 0.0 || *v53 >= *&v80[16])
      {
        *buf = *v79;
        sub_100188540(&v62, buf, buf);
        sub_1002E1AB4(a4, v79);
        LODWORD(v55) = v55 + 1;
      }

      else
      {
        ++HIDWORD(v55);
      }

LABEL_92:
      if ((v79[31] & 0x80000000) != 0)
      {
        operator delete(*&v79[8]);
      }

LABEL_94:
      if (Count == ++v12)
      {
        goto LABEL_130;
      }
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v22 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = v54;
      *&buf[4] = v12 + 1;
      *&buf[8] = 1026;
      *&buf[10] = *v80;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "WifiScan, addAp, %{public}d, badrssi, %{public}d, #CloneMe", buf, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD5B4(buf);
      *v65 = v54;
      *&v65[4] = v12 + 1;
      *&v65[8] = 1026;
      *&v65[10] = *v80;
      LODWORD(v49) = 14;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "WifiScan, addAp, %{public}d, badrssi, %{public}d, #CloneMe", v65, v49);
      v31 = v36;
      sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::addAccessPoints(CFArrayRef, const CFTimeInterval &, std::vector<CLWifiService_Type::AccessPoint> &, const char *)", "%s\n", v36);
      goto LABEL_104;
    }

    goto LABEL_49;
  }

  v14 = 0;
  v57 = 0;
  v55 = 0;
  v13 = 0;
LABEL_130:
  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v45 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136448002;
    *&buf[4] = v52;
    *&buf[12] = 2050;
    *&buf[14] = Count;
    *&buf[22] = 2050;
    *&buf[24] = *(&v63 + 1);
    *&buf[32] = 1026;
    *&buf[34] = v55;
    v84 = 1026;
    v85 = v57;
    v86 = 1026;
    v87 = v14;
    v88 = 1026;
    v89 = HIDWORD(v55);
    v90 = 1026;
    LODWORD(v91) = v13;
    _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEFAULT, "WifiScan, addAps, %{public}s, returned, %{public}ld, unique, %{public}ld, insert, %{public}d, keep, %{public}d, error, %{public}d, stale, %{public}d, ignore, %{public}d", buf, 0x3Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    *v79 = 136448002;
    *&v79[4] = v52;
    *&v79[12] = 2050;
    *&v79[14] = Count;
    *&v79[22] = 2050;
    *&v79[24] = *(&v63 + 1);
    *v80 = 1026;
    *&v80[2] = v55;
    *&v80[6] = 1026;
    *&v80[8] = v57;
    *&v80[12] = 1026;
    *&v80[14] = v14;
    *&v80[18] = 1026;
    *&v80[20] = HIDWORD(v55);
    *&v80[24] = 1026;
    *&v80[26] = v13;
    LODWORD(v49) = 62;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiScan, addAps, %{public}s, returned, %{public}ld, unique, %{public}ld, insert, %{public}d, keep, %{public}d, error, %{public}d, stale, %{public}d, ignore, %{public}d", v79, v49);
    v48 = v47;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::addAccessPoints(CFArrayRef, const CFTimeInterval &, std::vector<CLWifiService_Type::AccessPoint> &, const char *)", "%s\n", v47);
    if (v48 != buf)
    {
      free(v48);
    }
  }

  return sub_1004906DC(&v62);
}

uint64_t sub_1002E198C(const void *a1, void *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != CFNumberGetTypeID())
  {
    v10 = 0;
    v8 = CFGetTypeID(a1);
    if (v8 != CFBooleanGetTypeID())
    {
      return 0;
    }

    result = sub_1000700DC(a1, &v10);
    if (!result)
    {
      return result;
    }

    *a2 = v10;
    return 1;
  }

  if (CFNumberGetValue(a1, kCFNumberSInt64Type, a2))
  {
    return 1;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018A9CF4();
  }

  v5 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    *v9 = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "could not get value", v9, 2u);
  }

  v6 = sub_10000A100(121, 0);
  result = 0;
  if (v6)
  {
    sub_1018AA664();
    return 0;
  }

  return result;
}

uint64_t sub_1002E1AB4(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1005A423C(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v5 = *(a2 + 32);
    v6 = *(a2 + 48);
    v7 = *(a2 + 64);
    *(v3 + 80) = *(a2 + 80);
    *(v3 + 48) = v6;
    *(v3 + 64) = v7;
    *(v3 + 32) = v5;
    result = v3 + 88;
  }

  a1[1] = result;
  return result;
}

NSDictionary *sub_1002E1B2C(uint64_t a1)
{
  v4[0] = @"type";
  v5[0] = [NSString stringWithUTF8String:*(a1 + 32)];
  v4[1] = @"aps";
  v5[1] = [NSNumber numberWithInt:*(a1 + 40)];
  v4[2] = @"binAps";
  v5[2] = [NSNumber numberWithInt:*(a1 + 44)];
  v4[3] = @"aps2GHz";
  v5[3] = [NSNumber numberWithInt:*(a1 + 48)];
  v4[4] = @"bin2GHz";
  v5[4] = [NSNumber numberWithInt:*(a1 + 52)];
  v4[5] = @"aps5GHz";
  v5[5] = [NSNumber numberWithInt:*(a1 + 40)];
  v4[6] = @"bin5GHz";
  v5[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v4[7] = @"apsLocalAdmin";
  v5[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v4[8] = @"binLocalAdmin";
  v2 = [NSNumber numberWithInt:*(a1 + 64)];
  v4[9] = @"daily";
  v5[8] = v2;
  v5[9] = &off_10254EB70;
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:10];
}

uint64_t sub_1002E1CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 832;
  v15 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v16 = 256;
  v8 = qword_102637AD0;
  if (byte_102637AD8[23] < 0)
  {
    sub_100007244(__p, *byte_102637AD8, *&byte_102637AD8[8]);
  }

  else
  {
    *__p = *byte_102637AD8;
    v10 = *&byte_102637AD8[16];
  }

  v11 = xmmword_102637AF0;
  v12 = xmmword_102637B00;
  v13 = xmmword_102637B10;
  v14 = qword_102637B20;
  if (sub_1002DFF48(a1, &v8))
  {
    *a2 = v8;
    *(a2 + 8) = *__p;
    *(a2 + 24) = v10;
    __p[0] = 0;
    __p[1] = 0;
    v10 = 0;
    v5 = v12;
    *(a2 + 32) = v11;
    *(a2 + 48) = v5;
    *(a2 + 64) = v13;
    *(a2 + 80) = v14;
    *(a2 + 88) = 1;
  }

  else
  {
    *a2 = 0;
    v6 = SHIBYTE(v10);
    *(a2 + 88) = 0;
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return (*(*v4 + 24))(v4);
}

void sub_1002E1E40(uint64_t a1, int *a2, uint64_t a3, int a4, int a5)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = *a2;
    v9 = a1 + 64;
    do
    {
      if (*(v6 + 32) >= v8)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < v8));
    }

    while (v6);
    if (v9 == v7 || v8 < *(v9 + 32))
    {
LABEL_9:
      v12 = v13;
      memset(v13, 0, 32);
      sub_1005A4740(buf, a2, &v12);
      sub_10047D8C8(v7 - 8, buf);
    }

    if (a4)
    {
      sub_1002E2EF4();
    }

    v10 = *(v9 + 72);
    *(v9 + 64) = 0;
    *(v9 + 72) = 0;
    if (v10)
    {
      sub_100008080(v10);
    }

    if (*(v9 + 56))
    {
      sub_1002E05E8(a3);
    }
  }
}

void sub_1002E22EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_101865570(va);
  sub_101864718(v16 - 144);
  _Unwind_Resume(a1);
}

id sub_1002E2324(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_1002E2384(a1);
}

id sub_1002E2384(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018D08F4();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101CB6EF0 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018D0908();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018D08F4();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101CB6EF0 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018D0A00();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

void sub_1002E2588(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  HIDWORD(v42) = a3;
  v43 = sub_1002DDED4(a3);
  if (sub_100071CA0())
  {
    sub_10004FD18();
    LODWORD(v49.__r_.__value_.__l.__data_) = -1171354717 * ((a2[1] - *a2) >> 3);
    sub_10004345C(buf, "scanResult", &v49);
    sub_100071CAC(buf, "locationd");
    sub_100005DA4();
  }

  v6 = *a2;
  v5 = a2[1];
  v44 = -1171354717 * ((v5 - *a2) >> 3);
  if (v5 == *a2)
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
    do
    {
      if (*(a1 + 648) == 1 && *(a1 + 600) > 0)
      {
        *buf = *(a1 + 560);
        v49.__r_.__value_.__r.__words[0] = *v6;
        v11 = sub_100195A00(buf, &v49);
      }

      else
      {
        v11 = 0;
      }

      if (v10 <= sub_10019E6F8())
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }

        v12 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          __dst[0] = *v6;
          sub_10018F0D0(&v49);
          if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v13 = &v49;
          }

          else
          {
            v13 = v49.__r_.__value_.__r.__words[0];
          }

          if (*(v6 + 31) < 0)
          {
            sub_100007244(&__p, *(v6 + 8), *(v6 + 16));
          }

          else
          {
            v14 = *(v6 + 8);
            __p.__r_.__value_.__r.__words[2] = *(v6 + 24);
            *&__p.__r_.__value_.__l.__data_ = v14;
          }

          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v16 = *(v6 + 32);
          v17 = *(v6 + 36);
          v18 = *(v6 + 40);
          v19 = *(v6 + 48);
          v20 = *(v6 + 56);
          *buf = 136448771;
          *&buf[4] = v43;
          v63 = 2081;
          *v64 = v13;
          *&v64[8] = 1026;
          *v65 = v10;
          *&v65[4] = 1026;
          *v66 = v44;
          *&v66[4] = 2081;
          v67 = p_p;
          *v68 = 1026;
          *&v68[2] = v16;
          *v69 = 1026;
          *&v69[2] = v17;
          *v70 = 1026;
          *&v70[2] = v18;
          v71 = 2050;
          v72 = v19;
          v73 = 2050;
          v74 = v20;
          v75 = 1026;
          v76 = v11;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "WifiScan, result, %{public}s, mac, %{private}s, %{public}d / %{public}d, ssid, %{private}s, rssi, %{public}d, mode, %{public}d, channel, %{public}d, age, %{public}0.1lf, timestamp, %{public}.1lf, associated, %{public}d", buf, 0x58u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v49.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          v23 = qword_1025D4628;
          v47 = *v6;
          sub_10018F0D0(&__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = &__p;
          }

          else
          {
            v24 = __p.__r_.__value_.__r.__words[0];
          }

          if (*(v6 + 31) < 0)
          {
            sub_100007244(__dst, *(v6 + 8), *(v6 + 16));
          }

          else
          {
            v25 = *(v6 + 8);
            v46 = *(v6 + 24);
            *__dst = v25;
          }

          v26 = __dst;
          if (v46 < 0)
          {
            v26 = __dst[0];
          }

          v27 = *(v6 + 32);
          v28 = *(v6 + 36);
          v29 = *(v6 + 40);
          v30 = *(v6 + 48);
          v31 = *(v6 + 56);
          LODWORD(v49.__r_.__value_.__l.__data_) = 136448771;
          *(v49.__r_.__value_.__r.__words + 4) = v43;
          WORD2(v49.__r_.__value_.__r.__words[1]) = 2081;
          *(&v49.__r_.__value_.__r.__words[1] + 6) = v24;
          HIWORD(v49.__r_.__value_.__r.__words[2]) = 1026;
          *v50 = v10;
          *&v50[4] = 1026;
          *v51 = v44;
          *&v51[4] = 2081;
          v52 = v26;
          *v53 = 1026;
          *&v53[2] = v27;
          *v54 = 1026;
          *&v54[2] = v28;
          *v55 = 1026;
          *&v55[2] = v29;
          v56 = 2050;
          v57 = v30;
          v58 = 2050;
          v59 = v31;
          v60 = 1026;
          v61 = v11;
          LODWORD(v42) = 88;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v23, 2, "WifiScan, result, %{public}s, mac, %{private}s, %{public}d / %{public}d, ssid, %{private}s, rssi, %{public}d, mode, %{public}d, channel, %{public}d, age, %{public}0.1lf, timestamp, %{public}.1lf, associated, %{public}d", &v49, v42);
          v33 = v32;
          if (SHIBYTE(v46) < 0)
          {
            operator delete(__dst[0]);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::logWifiScanResult(const std::vector<CLWifiService_Type::AccessPoint> &, CLWifiService_Type::ScanType)", "%s\n", v33);
          if (v33 != buf)
          {
            free(v33);
          }
        }
      }

      v21 = sub_10018D3FC(v6);
      v22 = sub_100189E38(*(v6 + 40));
      v9 += (v21 >> 41) & 1;
      v8 += v22 ^ 1;
      v7 += v22;
      v6 += 88;
      ++v10;
    }

    while (v6 != v5);
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v34 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = v43;
    v63 = 1026;
    *v64 = v44;
    _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEFAULT, "WifiScan, results, %{public}s, %{public}d", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CF4A4();
  }

  if (HIDWORD(v42) != 5 || v44 >= 1)
  {
    v35 = v44;
    if (v44 >= 2)
    {
      if (v44 >= 5)
      {
        if (v44 >= 9)
        {
          if (v44 >= 0x11)
          {
            if (v44 >= 0x21)
            {
              if (v44 < 0x41)
              {
                v35 = 64;
              }

              else
              {
                v35 = 65;
              }
            }

            else
            {
              v35 = 32;
            }
          }

          else
          {
            v35 = 16;
          }
        }

        else
        {
          v35 = 8;
        }
      }

      else
      {
        v35 = 4;
      }
    }

    v36 = v7;
    if (v7 >= 2)
    {
      if (v7 >= 5)
      {
        if (v7 >= 9)
        {
          if (v7 >= 0x11)
          {
            if (v7 >= 0x21)
            {
              if (v7 < 0x41)
              {
                v36 = 64;
              }

              else
              {
                v36 = 65;
              }
            }

            else
            {
              v36 = 32;
            }
          }

          else
          {
            v36 = 16;
          }
        }

        else
        {
          v36 = 8;
        }
      }

      else
      {
        v36 = 4;
      }
    }

    v37 = v8;
    if (v8 >= 2)
    {
      if (v8 >= 5)
      {
        if (v8 >= 9)
        {
          if (v8 >= 0x11)
          {
            if (v8 >= 0x21)
            {
              if (v8 < 0x41)
              {
                v37 = 64;
              }

              else
              {
                v37 = 65;
              }
            }

            else
            {
              v37 = 32;
            }
          }

          else
          {
            v37 = 16;
          }
        }

        else
        {
          v37 = 8;
        }
      }

      else
      {
        v37 = 4;
      }
    }

    v38 = v9;
    if (v9 >= 2)
    {
      if (v9 >= 5)
      {
        if (v9 >= 9)
        {
          if (v9 >= 0x11)
          {
            if (v9 >= 0x21)
            {
              if (v9 < 0x41)
              {
                v38 = 64;
              }

              else
              {
                v38 = 65;
              }
            }

            else
            {
              v38 = 32;
            }
          }

          else
          {
            v38 = 16;
          }
        }

        else
        {
          v38 = 8;
        }
      }

      else
      {
        v38 = 4;
      }
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v39 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136448258;
      *&buf[4] = v43;
      v63 = 1026;
      *v64 = v44;
      *&v64[4] = 1026;
      *&v64[6] = v35;
      *v65 = 1026;
      *&v65[2] = v7;
      *v66 = 1026;
      *&v66[2] = v36;
      LOWORD(v67) = 1026;
      *(&v67 + 2) = v8;
      HIWORD(v67) = 1026;
      *v68 = v37;
      *&v68[4] = 1026;
      *v69 = v9;
      *&v69[4] = 1026;
      *v70 = v38;
      _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "WsMetric, scanreply, %{public}s, %{public}d, %{public}d, 2ghz, %{public}d, %{public}d, 5ghz, %{public}d, %{public}d, la, %{public}d, %{public}d", buf, 0x3Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      LODWORD(v49.__r_.__value_.__l.__data_) = 136448258;
      *(v49.__r_.__value_.__r.__words + 4) = v43;
      WORD2(v49.__r_.__value_.__r.__words[1]) = 1026;
      *(&v49.__r_.__value_.__r.__words[1] + 6) = v44;
      WORD1(v49.__r_.__value_.__r.__words[2]) = 1026;
      HIDWORD(v49.__r_.__value_.__r.__words[2]) = v35;
      *v50 = 1026;
      *&v50[2] = v7;
      *v51 = 1026;
      *&v51[2] = v36;
      LOWORD(v52) = 1026;
      *(&v52 + 2) = v8;
      HIWORD(v52) = 1026;
      *v53 = v37;
      *&v53[4] = 1026;
      *v54 = v9;
      *&v54[4] = 1026;
      *v55 = v38;
      LODWORD(v42) = 60;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "WsMetric, scanreply, %{public}s, %{public}d, %{public}d, 2ghz, %{public}d, %{public}d, 5ghz, %{public}d, %{public}d, la, %{public}d, %{public}d", &v49, v42);
      v41 = v40;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::logWifiScanResult(const std::vector<CLWifiService_Type::AccessPoint> &, CLWifiService_Type::ScanType)", "%s\n", v40);
      if (v41 != buf)
      {
        free(v41);
      }
    }

    AnalyticsSendEventLazy();
  }
}

void sub_1002E2EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002E2F60(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v39 = v9;
        v10 = sub_1002E2324(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 8);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v38 = v16;
              sub_1002E331C(a1, &v38, &v39, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v39 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 32) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 32) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 8))
                {
                  do
                  {
                    v28 = *(v24 + 32);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v38 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_1002E9770();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 8);
                *buf = 136446466;
                v45 = v19;
                v46 = 1026;
                v47 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_1002E9770();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 8);
                v40 = 136446466;
                v41 = v33;
                v42 = 1026;
                v43 = v34;
                LODWORD(v37) = 18;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 17, "%{public}s; unknown client %{public}d", &v40, v37);
                v36 = v35;
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLWifiService_Type::Notification, CLWifiService_Type::NotificationData, char, CLWifiService_Type::RegInfo>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLWifiService_Type::Notification, NotificationData_T = CLWifiService_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = CLWifiService_Type::RegInfo]", "%s\n", v35);
                if (v36 != buf)
                {
                  free(v36);
                }
              }
            }
          }

          while (v11 != (v39 + 48));
        }
      }
    }
  }
}

_BYTE *sub_1002E331C(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_1002E2324(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_1002E3414(v10 + 40, v13, &unk_101C66300, &v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 5);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

uint64_t *sub_1002E3414(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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

id sub_1002E34F4(uint64_t a1, int a2, void *a3)
{
  result = sub_1002E2324(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

void sub_1002E3544(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onWifiNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *v12 = 2082;
      *&v12[2] = "";
      *&v12[10] = 2082;
      *&v12[12] = "activity";
      *&v12[20] = 2050;
      *&v12[22] = a4;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onWifiNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v10 = 0;
  }

  if (*a2 == 3)
  {
    v8 = *(*(a4 + 10232) + 16);
    *buf = _NSConcreteStackBlock;
    *v12 = 3221225472;
    *&v12[8] = sub_1002E86C8;
    *&v12[16] = &unk_1024689B0;
    *&v12[24] = a4;
    [v8 fetchScanResultWithReply:buf];
  }

  if (v10 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1002E3760(uint64_t a1, int *a2, int *a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*a4 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101BD1F2C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiServiceClient::onWifiNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101BD1F40();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiServiceClient::onWifiNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1002E393C(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1002E393C(uint64_t a1, uint64_t a2, int *a3, int *a4)
{
  v6 = a2;
  if ((*a3 - 6) >= 2)
  {
    if (*a3 == 1)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101BD1FA4();
      }

      v10 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v11 = *a3;
        v12 = *(a1 + 144);
        v13 = *a4;
        *buf = 67109632;
        v29 = v11;
        LOWORD(__p) = 1024;
        *(&__p + 2) = v12;
        HIWORD(__p) = 1024;
        v31 = v13;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "notification, %d, kNotificationPower, fIsWifiPowered, %d, data.power, %d", buf, 0x14u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D48A0 != -1)
        {
          sub_101BD1FB8();
        }

        v19 = *(a1 + 144);
        v20 = *a4;
        v24 = 1024;
        v25 = v19;
        v26 = 1024;
        v27 = v20;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "notification, %d, kNotificationPower, fIsWifiPowered, %d, data.power, %d", v23, 20, 67109632);
        v22 = v21;
        sub_100152C7C("Generic", 1, 0, 2, "void CLWifiServiceClient::onWifiNotification(int, const CLWifiService_Type::Notification &, const CLWifiService_Type::NotificationData &)", "%s\n", v21);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      *(a1 + 144) = *a4;
    }
  }

  else
  {
    if (a4[12] > 0)
    {
      v8 = *(a4 + 96);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(a1 + 136) == 1 && *(a1 + 88) > 0;
    if (qword_1025D48A0 != -1)
    {
      sub_101BD1FA4();
    }

    v14 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v15 = *a3;
      *buf = 67240704;
      v29 = v15;
      LOWORD(__p) = 1026;
      *(&__p + 2) = v9;
      HIWORD(__p) = 1026;
      v31 = v8;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "notification, %{public}d, kNotificationLinkStatus/Roam, wasAssociated, %{public}d, isAssociated, %{public}d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_101BD1FB8();
      }

      v16 = *a3;
      v23[0] = 67240704;
      v23[1] = v16;
      v24 = 1026;
      v25 = v9;
      v26 = 1026;
      v27 = v8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "notification, %{public}d, kNotificationLinkStatus/Roam, wasAssociated, %{public}d, isAssociated, %{public}d", v23, 20);
      v18 = v17;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiServiceClient::onWifiNotification(int, const CLWifiService_Type::Notification &, const CLWifiService_Type::NotificationData &)", "%s\n", v17);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    sub_100C5D75C((a4 + 2), buf);
    sub_1000F8A78(a1 + 48, buf);
    if (v33 == 1 && v32 < 0)
    {
      operator delete(__p);
    }
  }

  if (*(a1 + 32))
  {
    sub_1002E3D30(a1 + 8, v6);
  }
}

void sub_1002E3D24(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002E3D30(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000CF05C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_1002E3D84(uint64_t a1, uint64_t a2, int *a3, unsigned __int8 *a4)
{
  v7.n128_f64[0] = CFAbsoluteTimeGetCurrent();
  v8 = v7.n128_f64[0];
  sub_1002E3E28(a1 + 120, a3, a4, v7);
  if (*(a1 + 3032))
  {
    sub_10000AED0();
    sub_1002E5668(a3, a4, v9, v8);
    sub_10021CB90(*(a1 + 3032), v9);
    sub_10000CE1C(v9);
  }
}

void sub_1002E3E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

void sub_1002E3E28(uint64_t a1, int *a2, unsigned __int8 *a3, __n128 a4)
{
  v6 = a4.n128_f64[0];
  v8 = *a2;
  if (*a2 == 11)
  {
    sub_100CD34F0(a1 + 904, a3[137]);
  }

  else if (v8 == 7)
  {
    *(a1 + 1760) = a4.n128_u64[0];
    sub_100CD35D4(a1 + 904, a4.n128_f64[0]);
  }

  else if (v8 == 1)
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4C9EC();
    }

    v9 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
    {
      v10 = *a3;
      *buf = 67240192;
      *v64 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Fence: Got kNotificationPower, isWifiPowered, %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4F4A0(a3);
    }

    if ((*a3 & 1) == 0)
    {
      sub_100E2717C(a1 + 1312, 0);
      *(a1 + 684) = 0;
      (*(**(a1 + 1768) + 288))();
    }
  }

  if (*(a1 + 612))
  {
    v11 = *(a1 + 256);
    v12 = *a2;
    if (*a2 > 3)
    {
      if (v12 != 4)
      {
        if (v12 == 8)
        {
          if (qword_1025D4640 != -1)
          {
            sub_101A4C980();
          }

          v29 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "Fence: monitor, got kNotificationBackgroundEntry", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A4F668();
          }

          sub_100CD3BA4(a1 + 904, v6);
        }

        else if (v12 == 9)
        {
          if (qword_1025D4640 != -1)
          {
            sub_101A4C980();
          }

          v13 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Fence: monitor, got kNotificationBackgroundExit", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A4F58C();
          }

          sub_100CD35DC(a1 + 904, v6);
        }

        return;
      }

      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      v21 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
      {
        v22 = *(a1 + 684);
        v23 = *(a1 + 688);
        *buf = 67240448;
        *v64 = v22;
        *&v64[4] = 1026;
        *&v64[6] = v23;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "scan result, count, wait, %{public}d, retry, %{public}d, error", buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A4F744();
      }

LABEL_44:
      if (!v11)
      {
        return;
      }

      if (!(*(**(a1 + 1768) + 16))(*(a1 + 1768)))
      {
        return;
      }

      v24 = *(a1 + 684);
      if (v24 < 1 || !sub_10021D1B8(a1))
      {
        return;
      }

      if (*(a1 + 444))
      {
        v25 = (a1 + 688);
        v26 = *(a1 + 688);
        if (v26 <= 1)
        {
          if (qword_1025D4640 != -1)
          {
            sub_101A4C980();
          }

          v27 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
          {
            v28 = *v25;
            *buf = 67240192;
            *v64 = v28;
            _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "Fence: startScan, requesting a scan due to an error / empty scan, fScanRetryCounter, %{public}d", buf, 8u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A4F94C((a1 + 688));
          }

          (*(**(a1 + 1768) + 312))(*(a1 + 1768), "onWifiNotification");
          goto LABEL_94;
        }

        if (v24 != 1)
        {
          return;
        }

        if (v26 != 2)
        {
          return;
        }

        v41 = (*(**(a1 + 1768) + 408))(*(a1 + 1768));
        if (v41)
        {
          return;
        }

        sub_10001A3E8(v41, v42);
        if (sub_10001CF3C())
        {
          return;
        }

        if (qword_1025D4640 != -1)
        {
          sub_101A4C980();
        }

        v43 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
        {
          v44 = *v25;
          *buf = 67240704;
          *v64 = v44;
          *&v64[4] = 1026;
          *&v64[6] = 2;
          *v65 = 2050;
          *&v65[2] = 0x4014000000000000;
          _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEBUG, "Fence: expedite location watchdog due to empty / error scan , %{public}d, %{public}d, kUrgentWatchdogActivation, %{public}.1lf", buf, 0x18u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A4F840();
        }
      }

      else
      {
        if (qword_1025D4640 != -1)
        {
          sub_101A4C980();
        }

        v30 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          *v64 = 0x4014000000000000;
          _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "Fence: no reachability, expedite watchdog, %{public}.1lf", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A4FA38();
        }

        *(a1 + 688) = 2;
        if (((*(**(a1 + 1768) + 408))(*(a1 + 1768)) & 1) != 0 || *(a1 + 684) != 1)
        {
          if (qword_1025D4640 != -1)
          {
            sub_101A4C980();
          }

          v31 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
          {
            v32 = *(a1 + 684);
            v33 = *(a1 + 688);
            v34 = (*(**(a1 + 1768) + 408))(*(a1 + 1768));
            *buf = 67240704;
            *v64 = v32;
            *&v64[4] = 1026;
            *&v64[6] = v33;
            *v65 = 1026;
            *&v65[2] = v34;
            _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "Fence: skip urgent, watchdog already active, %{public}d,%{public}d, %{public}d", buf, 0x14u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            v35 = off_1025D4648;
            v36 = *(a1 + 684);
            v37 = *(a1 + 688);
            v38 = (*(**(a1 + 1768) + 408))(*(a1 + 1768));
            v52 = 67240704;
            *v53 = v36;
            *&v53[4] = 1026;
            *&v53[6] = v37;
            LOWORD(v54) = 1026;
            *(&v54 + 2) = v38;
            LODWORD(v51) = 20;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v35, 2, "Fence: skip urgent, watchdog already active, %{public}d,%{public}d, %{public}d", &v52, v51);
            v40 = v39;
            sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleWifiNotification(const CFAbsoluteTime, const CLWifiService_Type::Notification &, const CLWifiService_Type::NotificationData &)", "%s\n", v39);
            if (v40 != buf)
            {
              free(v40);
            }
          }

          goto LABEL_94;
        }
      }

      (*(**(a1 + 1768) + 240))(*(a1 + 1768), &unk_101CF5678);
LABEL_94:
      ++*(a1 + 688);
      return;
    }

    if (v12 == 1)
    {
      sub_100CD32F0((a1 + 904), *a3, v6);
      return;
    }

    if (v12 == 3)
    {
      sub_1002E48CC(a1 + 904, a3 + 13, v6);
      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      v14 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        v15 = 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 15) - *(a3 + 14)) >> 3);
        v16 = *(a3 + 13);
        v17 = *(a1 + 684);
        v18 = *(a1 + 688);
        *buf = 134284801;
        *v64 = v15;
        *&v64[8] = 2049;
        *v65 = v16;
        *&v65[8] = 2049;
        v66 = v6 - v16;
        v67 = 2050;
        v68 = v11;
        v69 = 1026;
        v70 = v17;
        v71 = 1026;
        v72 = v18;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Fence: monitor, got kNotificationScan, result, %{private}lu, time, %{private}.1lf, age, %{private}.1lf, numFences, %{public}lu, locationCount, %{public}d, %{public}d", buf, 0x36u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4640 != -1)
        {
          sub_101A4C980();
        }

        v45 = 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 15) - *(a3 + 14)) >> 3);
        v46 = *(a3 + 13);
        v47 = *(a1 + 684);
        v48 = *(a1 + 688);
        v52 = 134284801;
        *v53 = v45;
        *&v53[8] = 2049;
        v54 = v46;
        v55 = 2049;
        v56 = v6 - v46;
        v57 = 2050;
        v58 = v11;
        v59 = 1026;
        v60 = v47;
        v61 = 1026;
        v62 = v48;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "Fence: monitor, got kNotificationScan, result, %{private}lu, time, %{private}.1lf, age, %{private}.1lf, numFences, %{public}lu, locationCount, %{public}d, %{public}d", &v52, 54);
        v50 = v49;
        sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleWifiNotification(const CFAbsoluteTime, const CLWifiService_Type::Notification &, const CLWifiService_Type::NotificationData &)", "%s\n", v49);
        if (v50 != buf)
        {
          free(v50);
        }
      }

      v19 = (*(**(a1 + 1768) + 24))(*(a1 + 1768));
      v20 = v6 - *(a3 + 13) < 7.5 ? 1 : v19;
      if ((v20 & 1) == 0)
      {
        goto LABEL_44;
      }
    }
  }
}

void sub_1002E48CC(uint64_t a1, double *a2, double a3)
{
  if ((*(a1 + 234) & 1) != 0 || (*(a1 + 232) & 1) == 0)
  {
    v10 = a1 + 168;

    sub_1011A6884(v10);
  }

  else
  {
    sub_1002E4AF4(a1 + 168, a2, a3);
    v6 = *a2;
    if (qword_1025D4640 != -1)
    {
      sub_101A57534();
    }

    v7 = vabdd_f64(a3, v6);
    v8 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
    {
      v9 = 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 2) - *(a2 + 1)) >> 3);
      v12 = 134283777;
      v13 = *&v9;
      v14 = 2049;
      v15 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "Fence: fLastScanResult, %{private}lu, age, %{private}.1lf", &v12, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A58850(a2, v7);
    }

    if (v7 >= 120.0)
    {
      if (qword_1025D4640 != -1)
      {
        sub_101A57EC0();
      }

      v11 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134283521;
        v13 = v7;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning Fence: scan result is too old, request one more scan, age, %{private}.1lf ", &v12, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A58980(v7);
      }
    }

    else if (*(a2 + 1) != *(a2 + 2))
    {
      *(a1 + 400) = a3;
    }
  }
}

void sub_1002E4AF4(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(a2 + 16) - *(a2 + 8);
  v7 = *(a1 + 32);
  if (*a1 > 0.0)
  {
    sub_1002E4DE8(a1, a3);
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    if (v8 != v9)
    {
      v10 = 0;
      while (1)
      {
        if (vabdd_f64(a3, *(v8 + 56)) <= *a1)
        {
          *buf = *v8;
          v11 = sub_1002DFD60((a1 + 8), buf);
          if (!v11)
          {
            goto LABEL_8;
          }

          if (*(v8 + 56) >= v11[10])
          {
            break;
          }
        }

LABEL_9:
        v8 += 88;
        if (v8 == v9)
        {
          goto LABEL_16;
        }
      }

      sub_1002E4F28((a1 + 8), v11);
LABEL_8:
      *buf = *v8;
      sub_100189E48((a1 + 8), buf, buf, v8);
      ++v10;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  sub_10018A278(a1 + 8);
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  if (v12 == v13)
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v10 = 0;
  v14 = v12;
  do
  {
    v15 = *v14;
    v14 += 11;
    *buf = v15;
    sub_100189E48((a1 + 8), buf, buf, v12);
    ++v10;
    v12 = v14;
  }

  while (v14 != v13);
LABEL_16:
  if (qword_1025D4640 != -1)
  {
    sub_101B58CE0();
  }

  v16 = 0x2E8BA2E8BA2E8BA3 * (v6 >> 3);
  v17 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 32);
    *buf = 134349824;
    *&buf[4] = v7;
    v31 = 2050;
    v32 = v16;
    v33 = 2050;
    v34 = v10;
    v35 = 2050;
    v36 = v18;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "Adding scanned,pre,%{public}zu,input,%{public}zu,updated,%{public}zu,result,%{public}zu", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4640 != -1)
    {
      sub_101B58CE0();
    }

    v19 = *(a1 + 32);
    v22 = 134349824;
    v23 = v7;
    v24 = 2050;
    v25 = v16;
    v26 = 2050;
    v27 = v10;
    v28 = 2050;
    v29 = v19;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "Adding scanned,pre,%{public}zu,input,%{public}zu,updated,%{public}zu,result,%{public}zu", &v22, 42);
    v21 = v20;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiScanAggregator::addScanResult(const CFAbsoluteTime, const CLWifiService_Type::ScanResult &)", "%s\n", v20);
    if (v21 != buf)
    {
      free(v21);
    }
  }
}

void sub_1002E4DE8(uint64_t a1, double a2)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  for (i = *(a1 + 24); i; i = *i)
  {
    while (vabdd_f64(a2, *(i + 80)) > *a1)
    {
      i = sub_1002E4F28(v2 - 3, i);
      if (!i)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_6:
  if (qword_1025D4640 != -1)
  {
    sub_101B58D08();
  }

  v7 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    v8 = *v2;
    v9 = 134349312;
    v10 = v3;
    v11 = 2050;
    v12 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Scrubbing done,pre,%{public}zu,post,%{public}zu", &v9, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B58D1C(v2, v3);
  }
}

uint64_t sub_1002E4F28(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100546628(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_1002E4F74(&v6, v3);
  }

  return v2;
}

void sub_1002E4F74(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_1002E5008(uint64_t result, uint64_t *a2)
{
  if (a2[1] != a2[2])
  {
    sub_1002E5020(result + 2552, a2);
  }
}

void sub_1002E5020(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  memset(v4, 0, sizeof(v4));
  sub_100288650(v4, a2[1], a2[2], 0x2E8BA2E8BA2E8BA3 * ((a2[2] - a2[1]) >> 3));
  sub_1002E50F0((a1 + 2968), &v3, *(a1 + 3200));
  v5 = v4;
  sub_1000B96B4(&v5);
}

void sub_1002E50A8(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  sub_1000B96B4((v2 - 24));
  _Unwind_Resume(a1);
}

void *sub_1002E50F0(void *result, uint64_t a2, double a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v3 != v4)
  {
    v6 = result;
    do
    {
      v7 = v6[3];
      v8 = v6[4];
      v90 = *v3;
      if (*(v3 + 31) < 0)
      {
        sub_100007244(&__p, *(v3 + 8), *(v3 + 16));
      }

      else
      {
        v9 = *(v3 + 8);
        v92 = *(v3 + 24);
        __p = v9;
      }

      v10 = *(v3 + 32);
      v11 = *(v3 + 48);
      v12 = *(v3 + 64);
      v96 = *(v3 + 80);
      v94 = v11;
      v95 = v12;
      v93 = v10;
      if (v7 != v8)
      {
        while (1)
        {
          v13 = *(v7 + 24);
          v86[0] = v90;
          v14 = sub_10018D3FC(v86);
          if (v13 == sub_1002E87DC(v14))
          {
            break;
          }

          v7 += 80;
          if (v7 == v8)
          {
            v7 = v8;
            break;
          }
        }
      }

      if (SHIBYTE(v92) < 0)
      {
        operator delete(__p);
      }

      v15 = v6[4];
      if (v7 == v15)
      {
        memset(v89, 0, sizeof(v89));
        v87 = 0u;
        *v88 = 0u;
        *v86 = 0u;
        if (v7 >= v6[5])
        {
          v27 = sub_10121FA88(v6 + 3, v86);
          v28 = v88[0];
          v6[4] = v27;
          if (v28)
          {
            v88[1] = v28;
            operator delete(v28);
          }
        }

        else
        {
          *(v15 + 8) = 0;
          *(v15 + 16) = 0;
          *v15 = 0;
          *v15 = *v86;
          *(v15 + 16) = v87;
          v86[0] = 0;
          v86[1] = 0;
          *&v87 = 0;
          *(v15 + 24) = DWORD2(v87);
          *(v15 + 40) = 0;
          *(v15 + 48) = 0;
          *(v15 + 32) = 0;
          *(v15 + 32) = *v88;
          *(v15 + 48) = *&v89[0];
          v88[0] = 0;
          v88[1] = 0;
          *&v89[0] = 0;
          v19 = *(v89 + 8);
          *(v15 + 72) = DWORD2(v89[1]);
          *(v15 + 56) = v19;
          v6[4] = v15 + 80;
        }

        if (v86[0])
        {
          v86[1] = v86[0];
          operator delete(v86[0]);
        }

        v29 = v6[4];
        v86[0] = *v3;
        v30 = sub_10018D3FC(v86);
        *(v29 - 56) = sub_1002E87DC(v30);
        v32 = *(v29 - 72);
        v31 = *(v29 - 64);
        if (v32 >= v31)
        {
          v34 = *(v29 - 80);
          v35 = v32 - v34;
          v36 = (v32 - v34) >> 3;
          v37 = v36 + 1;
          if ((v36 + 1) >> 61)
          {
            goto LABEL_79;
          }

          v38 = v31 - v34;
          if (v38 >> 2 > v37)
          {
            v37 = v38 >> 2;
          }

          v25 = v38 >= 0x7FFFFFFFFFFFFFF8;
          v39 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v25)
          {
            v39 = v37;
          }

          if (v39)
          {
            sub_1000B9708(v29 - 80, v39);
          }

          v55 = (v32 - v34) >> 3;
          v56 = (8 * v36);
          v57 = (8 * v36 - 8 * v55);
          *v56 = a3;
          v33 = v56 + 1;
          memcpy(v57, v34, v35);
          v58 = *(v29 - 80);
          *(v29 - 80) = v57;
          *(v29 - 72) = v33;
          *(v29 - 64) = 0;
          if (v58)
          {
            operator delete(v58);
          }
        }

        else
        {
          *v32 = a3;
          v33 = v32 + 1;
        }

        *(v29 - 72) = v33;
        v59 = *(v3 + 32);
        v61 = *(v29 - 40);
        v60 = *(v29 - 32);
        if (v61 >= v60)
        {
          v63 = *(v29 - 48);
          v64 = v61 - v63;
          v65 = (v61 - v63) >> 2;
          v66 = v65 + 1;
          if ((v65 + 1) >> 62)
          {
LABEL_80:
            sub_10028C64C();
          }

          v67 = v60 - v63;
          if (v67 >> 1 > v66)
          {
            v66 = v67 >> 1;
          }

          v25 = v67 >= 0x7FFFFFFFFFFFFFFCLL;
          v68 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v25)
          {
            v68 = v66;
          }

          if (v68)
          {
            sub_1000B85D0(v29 - 48, v68);
          }

          v69 = (v61 - v63) >> 2;
          v70 = (4 * v65);
          v71 = (4 * v65 - 4 * v69);
          *v70 = v59;
          v62 = v70 + 1;
          memcpy(v71, v63, v64);
          v72 = *(v29 - 48);
          *(v29 - 48) = v71;
          *(v29 - 40) = v62;
          *(v29 - 32) = 0;
          if (v72)
          {
            operator delete(v72);
          }
        }

        else
        {
          *v61 = v59;
          v62 = v61 + 4;
        }

        *(v29 - 40) = v62;
      }

      else
      {
        v17 = *(v7 + 8);
        v16 = *(v7 + 16);
        if (v17 >= v16)
        {
          v20 = *v7;
          v21 = v17 - *v7;
          v22 = v21 >> 3;
          v23 = (v21 >> 3) + 1;
          if (v23 >> 61)
          {
            goto LABEL_79;
          }

          v24 = v16 - v20;
          if (v24 >> 2 > v23)
          {
            v23 = v24 >> 2;
          }

          v25 = v24 >= 0x7FFFFFFFFFFFFFF8;
          v26 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v25)
          {
            v26 = v23;
          }

          if (v26)
          {
            sub_1000B9708(v7, v26);
          }

          *(8 * v22) = a3;
          v18 = 8 * v22 + 8;
          memcpy(0, v20, v21);
          v40 = *v7;
          *v7 = 0;
          *(v7 + 8) = v18;
          *(v7 + 16) = 0;
          if (v40)
          {
            operator delete(v40);
          }
        }

        else
        {
          *v17 = a3;
          v18 = (v17 + 1);
        }

        *(v7 + 8) = v18;
        v41 = *(v3 + 32);
        v43 = *(v7 + 40);
        v42 = *(v7 + 48);
        if (v43 >= v42)
        {
          v45 = *(v7 + 32);
          v46 = v43 - v45;
          v47 = (v43 - v45) >> 2;
          v48 = v47 + 1;
          if ((v47 + 1) >> 62)
          {
            goto LABEL_80;
          }

          v49 = v42 - v45;
          if (v49 >> 1 > v48)
          {
            v48 = v49 >> 1;
          }

          v25 = v49 >= 0x7FFFFFFFFFFFFFFCLL;
          v50 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v25)
          {
            v50 = v48;
          }

          if (v50)
          {
            sub_1000B85D0(v7 + 32, v50);
          }

          v51 = (v43 - v45) >> 2;
          v52 = (4 * v47);
          v53 = (4 * v47 - 4 * v51);
          *v52 = v41;
          v44 = v52 + 1;
          memcpy(v53, v45, v46);
          v54 = *(v7 + 32);
          *(v7 + 32) = v53;
          *(v7 + 40) = v44;
          *(v7 + 48) = 0;
          if (v54)
          {
            operator delete(v54);
          }
        }

        else
        {
          *v43 = v41;
          v44 = v43 + 4;
        }

        *(v7 + 40) = v44;
      }

      v3 += 88;
    }

    while (v3 != v4);
    v74 = v6[7];
    v73 = v6[8];
    if (v74 >= v73)
    {
      v76 = v6[6];
      v77 = v74 - v76;
      v78 = (v74 - v76) >> 3;
      v79 = v78 + 1;
      if ((v78 + 1) >> 61)
      {
LABEL_79:
        sub_10028C64C();
      }

      v80 = v73 - v76;
      if (v80 >> 2 > v79)
      {
        v79 = v80 >> 2;
      }

      v25 = v80 >= 0x7FFFFFFFFFFFFFF8;
      v81 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v25)
      {
        v81 = v79;
      }

      if (v81)
      {
        sub_1000B9708((v6 + 6), v81);
      }

      v82 = (v74 - v76) >> 3;
      v83 = (8 * v78);
      v84 = (8 * v78 - 8 * v82);
      *v83 = a3;
      v75 = v83 + 1;
      memcpy(v84, v76, v77);
      v85 = v6[6];
      v6[6] = v84;
      v6[7] = v75;
      v6[8] = 0;
      if (v85)
      {
        operator delete(v85);
      }
    }

    else
    {
      *v74 = a3;
      v75 = v74 + 1;
    }

    v6[7] = v75;
    return sub_1000B60F4(v6, a3);
  }

  return result;
}

void sub_1002E5668(unsigned int *a1, char *a2, uint64_t a3, double a4)
{
  *(a3 + 52) |= 1u;
  v4 = *(a3 + 32);
  if (!v4)
  {
    operator new();
  }

  *(v4 + 44) |= 1u;
  *(v4 + 8) = a4;
  *(a3 + 52) |= 2u;
  v5 = *(a3 + 40);
  if (!v5)
  {
    operator new();
  }

  *(v5 + 488) |= 0x200000u;
  v6 = *(v5 + 176);
  if (!v6)
  {
    operator new();
  }

  sub_1002E57E8(a1, a2, v6);
}

double sub_1002E57B4(uint64_t a1)
{
  *a1 = off_102453F58;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 33) = 0u;
  return result;
}

void sub_1002E57E8(unsigned int *a1, char *a2, uint64_t a3)
{
  if (a3)
  {
    v6 = sub_1002E5A3C(a1);
    if (!sub_1002E5B3C(v6))
    {
      sub_101882D10();
    }

    v7 = *(a3 + 56);
    v8 = v7 | 4;
    *(a3 + 56) = v7 | 4;
    *(a3 + 20) = v6;
    v9 = *a1;
    if (*a1 == 3)
    {
      v12 = sub_1002E5B48(a2 + 1);
      if (!sub_1002E5B3C(v12))
      {
        sub_101882D3C();
      }

      v8 = *(a3 + 56) | 8;
      *(a3 + 56) = v8;
      *(a3 + 40) = v12;
      v9 = *a1;
    }

    else if (v9 == 1)
    {
      v10 = *a2;
      *(a3 + 56) = v7 | 0x14;
      *(a3 + 44) = v10;
      return;
    }

    if (v9 <= 7 && ((1 << v9) & 0xC8) != 0)
    {
      *(a3 + 56) = v8 | 0x20;
      v13 = *(a3 + 24);
      if (!v13)
      {
        operator new();
      }

      sub_1002E5C54((a2 + 8), v13, 0);
      v9 = *a1;
    }

    if (v9 == 8 || v9 == 3)
    {
      *(a3 + 56) |= 0x40u;
      v14 = *(a3 + 32);
      if (!v14)
      {
        operator new();
      }

      sub_1002E5FF8(a2 + 13, v14, 0);
      v9 = *a1;
    }

    if ((v9 & 0xFFFFFFFE) == 0xA)
    {
      v15 = a2[137];
      *(a3 + 56) |= 0x100u;
      *(a3 + 46) = v15;
    }

    else if (v9 == 6)
    {
      v16 = a2[138];
      *(a3 + 56) |= 0x200u;
      *(a3 + 47) = v16;
    }
  }

  else
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v11 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_FAULT))
    {
      *v17 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "pWn,Invalid pointer", v17, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B89DBC();
    }
  }
}

uint64_t sub_1002E5A3C(unsigned int *a1)
{
  v1 = *a1;
  if (v1 < 0xE)
  {
    return dword_101D7A5E8[v1];
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v4 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    v7[0] = 67240192;
    v7[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "Received unhandled wifi service notification type: %{public}d", v7, 8u);
  }

  v6 = sub_10000A100(121, 0);
  result = 0;
  if (v6)
  {
    sub_101B89EA0(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1002E5B48(char *a1)
{
  if ((*a1 + 1) < 0xEu)
  {
    return dword_101D7A620[(*a1 + 1)];
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v3 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v4 = *a1;
    v6[0] = 67240192;
    v6[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled wifi scan type: %{public}d", v6, 8u);
  }

  v5 = sub_10000A100(121, 0);
  result = 0;
  if (v5)
  {
    sub_101B89F8C(a1);
    return 0;
  }

  return result;
}
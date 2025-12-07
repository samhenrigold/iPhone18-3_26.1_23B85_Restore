BOOL sub_19B9180C4(double a1, double a2)
{
  v2 = fabs(a1);
  if (v2 == INFINITY)
  {
    return 0;
  }

  v3 = fabs(a2);
  if (v3 == INFINITY || v2 < 0.00003 && v3 < 0.00003)
  {
    return 0;
  }

  v5 = v2 <= 90.0;
  if (a2 > 180.0)
  {
    v5 = 0;
  }

  return a2 >= -180.0 && v5;
}

void sub_19B918144(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

const void **sub_19B91819C(const void **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_19B927BFC(a2);
    }

    sub_19B8B8A40();
  }

  return result;
}

uint64_t sub_19B91825C(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  if (v3 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 36);
  if (v5 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = fabs(a2);
  if (v6 < 0.00003 && fabs(a3) < 0.00003)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (a3 >= -180.0 && v6 <= 90.0 && a3 <= 180.0)
  {
    v8 = *(a1 + 8);
    v9 = (v8 - *a1) / v3;
    v10 = vbslq_s8(vcltzq_f64(*(a1 + 16)), vaddq_f64(*(a1 + 16), vdupq_n_s64(0x4076800000000000uLL)), *(a1 + 16));
    v11 = vsubq_f64(vdupq_laneq_s64(v10, 1), v10).f64[0];
    if (v11 <= 180.0)
    {
      if (v11 >= -180.0)
      {
LABEL_15:
        if (fabs(v9) > 0.0000001)
        {
          v13 = fabs(v11) / v5;
          if (fabs(v13) > 0.0000001)
          {
            if (a3 < 0.0)
            {
              a3 = a3 + 360.0;
            }

            v14 = a3 - v10.f64[0];
            if (v14 <= 180.0)
            {
              if (v14 < -180.0)
              {
                v14 = v14 + 360.0;
              }
            }

            else
            {
              v14 = v14 + -360.0;
            }

            v15 = (floor(fabs(v14) / v13) + floor((v8 - a2) / v9) * v5);
            if (v5 * v3 <= v15 || v15 <= -1)
            {
              return 0xFFFFFFFFLL;
            }

            else
            {
              return v15;
            }
          }
        }

        return result;
      }

      v12 = 360.0;
    }

    else
    {
      v12 = -360.0;
    }

    v11 = v11 + v12;
    goto LABEL_15;
  }

  return result;
}

void sub_19B9183CC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      sub_19B8B8A40();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_19B927CB8(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t sub_19B91849C(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = xmmword_19BA89490;
  *(a1 + 32) = 0x3FF0000000000000;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 470) = 0u;
  *(a1 + 520) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 524) = -1;
  *(a1 + 532) = -1;
  *(a1 + 540) = -1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 544) = _Q0;
  *(a1 + 560) = _Q0;
  *(a1 + 576) = 0x4044000000000000;
  *(a1 + 48) = objc_alloc_init(MEMORY[0x1E695DF70]);
  return a1;
}

void sub_19B918580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = v10 + 96;
  sub_19B927D00(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_19B91859C(uint64_t a1)
{
  sub_19B9185F0(a1);
  sub_19B918858(a1);

  v3 = (a1 + 96);
  sub_19B927D00(&v3);
  return a1;
}

void sub_19B9185F0(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 481) & 1) == 0 && *(a1 + 508))
  {
    if (objc_opt_class())
    {
      v5 = objc_msgSend_sharedConnection(MEMORY[0x1E69ADFC0], v2, v3, v4);
      isHealthDataSubmissionAllowed = objc_msgSend_isHealthDataSubmissionAllowed(v5, v6, v7, v8);
    }

    else
    {
      isHealthDataSubmissionAllowed = 0;
    }

    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v10 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      v15 = isHealthDataSubmissionAllowed;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "CLRR,hasIHAPermission,isPermissionGranted,%{public}d", buf, 8u);
    }

    v11 = sub_19B87DD40();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v13[0] = 67240192;
      v13[1] = isHealthDataSubmissionAllowed;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,hasIHAPermission,isPermissionGranted,%{public}d", v13, 8);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::hasIHAPermission() const", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    if (isHealthDataSubmissionAllowed)
    {
      AnalyticsSendEventLazy();
      *(a1 + 481) = 1;
    }
  }
}

void sub_19B918858(uint64_t a1)
{
  v110 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v2 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 88);
      v4 = *(a1 + 92);
      v5 = *(a1 + 56);
      v6 = *(a1 + 64);
      v7 = *(a1 + 72);
      v8 = *(a1 + 80);
      *buf = 67241473;
      *v102 = v3;
      *&v102[4] = 1026;
      *&v102[6] = v4;
      *v103 = 2053;
      *&v103[2] = v5;
      *v104 = 2053;
      *&v104[2] = v6;
      *v105 = 2053;
      *&v105[2] = v7;
      *v106 = 2053;
      *&v106[2] = v8;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "CLRR,printRoutePointArray,boxRows,%{public}d,boxColumns,%{public}d,boxMinLat,%{sensitive}.7lf,boxMaxLat,%{sensitive}.7lf,boxMinLon,%{sensitive}.7lf,boxMaxLon,%{sensitive}.7lf", buf, 0x36u);
    }

    v9 = sub_19B87DD40();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v13 = *(a1 + 88);
      v14 = *(a1 + 92);
      v15 = *(a1 + 56);
      v16 = *(a1 + 64);
      v17 = *(a1 + 72);
      v18 = *(a1 + 80);
      v92 = 67241473;
      *v93 = v13;
      *&v93[4] = 1026;
      *&v93[6] = v14;
      *v94 = 2053;
      *&v94[2] = v15;
      *v95 = 2053;
      *&v95[2] = v16;
      *v96 = 2053;
      *&v96[2] = v17;
      *v97 = 2053;
      *&v97[2] = v18;
      v19 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,printRoutePointArray,boxRows,%{public}d,boxColumns,%{public}d,boxMinLat,%{sensitive}.7lf,boxMaxLat,%{sensitive}.7lf,boxMinLon,%{sensitive}.7lf,boxMaxLon,%{sensitive}.7lf", &v92, 54);
      sub_19B885924("Generic", 1, 0, 2, "void CLRacingRoute::printRoutePointArray() const", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    if (objc_msgSend_count(*(a1 + 48), v10, v11, v12))
    {
      v22 = 0;
      do
      {
        v23 = objc_msgSend_objectAtIndex_(*(a1 + 48), v20, v22, v21);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v24 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
        {
          objc_msgSend_timestamp_s(v23, v25, v26, v27);
          v29 = v28;
          objc_msgSend_latitude_deg(v23, v30, v31, v32);
          v34 = v33;
          objc_msgSend_longitude_deg(v23, v35, v36, v37);
          v39 = v38;
          objc_msgSend_altitude_m(v23, v40, v41, v42);
          v44 = v43;
          objc_msgSend_odometer_m(v23, v45, v46, v47);
          v49 = v48;
          v53 = objc_msgSend_signalEnvironmentType(v23, v50, v51, v52);
          *buf = 134350593;
          *v102 = v29;
          *&v102[8] = 2053;
          *v103 = v34;
          *&v103[8] = 2053;
          *v104 = v39;
          *&v104[8] = 2049;
          *v105 = v44;
          *&v105[8] = 2050;
          *v106 = v49;
          *&v106[8] = 1026;
          v107 = v53;
          v108 = 1026;
          v109 = v22;
          _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_DEFAULT, "CLRR,printRoutePointArray,time,%{public}.1lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,alt,%{private}.2lf,odom,%{public}.2lf,signalEnv,%{public}d,pointCount,%{public}d", buf, 0x40u);
        }

        v54 = sub_19B87DD40();
        if (*(v54 + 160) > 1 || *(v54 + 164) > 1 || *(v54 + 168) > 1 || *(v54 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          v61 = qword_1EAFE4790;
          objc_msgSend_timestamp_s(v23, v58, v59, v60);
          v63 = v62;
          objc_msgSend_latitude_deg(v23, v64, v65, v66);
          v68 = v67;
          objc_msgSend_longitude_deg(v23, v69, v70, v71);
          v73 = v72;
          objc_msgSend_altitude_m(v23, v74, v75, v76);
          v78 = v77;
          objc_msgSend_odometer_m(v23, v79, v80, v81);
          v83 = v82;
          v87 = objc_msgSend_signalEnvironmentType(v23, v84, v85, v86);
          v92 = 134350593;
          *v93 = v63;
          *&v93[8] = 2053;
          *v94 = v68;
          *&v94[8] = 2053;
          *v95 = v73;
          *&v95[8] = 2049;
          *v96 = v78;
          *&v96[8] = 2050;
          *v97 = v83;
          *&v97[8] = 1026;
          v98 = v87;
          v99 = 1026;
          v100 = v22;
          v88 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v61, 0, "CLRR,printRoutePointArray,time,%{public}.1lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,alt,%{private}.2lf,odom,%{public}.2lf,signalEnv,%{public}d,pointCount,%{public}d", &v92, 64);
          sub_19B885924("Generic", 1, 0, 2, "void CLRacingRoute::printRoutePointArray() const", "CoreLocation: %s\n", v88);
          if (v88 != buf)
          {
            free(v88);
          }
        }

        ++v22;
      }

      while (objc_msgSend_count(*(a1 + 48), v55, v56, v57) > v22);
    }
  }

  else
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v89 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v89, OS_LOG_TYPE_ERROR, "CLRR,printRoutePointArray,fRoutePoints is a null pointer", buf, 2u);
    }

    v90 = sub_19B87DD40();
    if ((*(v90 + 160) & 0x80000000) == 0 || (*(v90 + 164) & 0x80000000) == 0 || (*(v90 + 168) & 0x80000000) == 0 || *(v90 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      LOWORD(v92) = 0;
      v91 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,printRoutePointArray,fRoutePoints is a null pointer", &v92, 2);
      sub_19B885924("Generic", 1, 0, 0, "void CLRacingRoute::printRoutePointArray() const", "CoreLocation: %s\n", v91);
      if (v91 != buf)
      {
        free(v91);
      }
    }
  }
}

uint64_t sub_19B918EA4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v37[8] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v36[0] = @"raceRoutePercentageOfMatchedPoints";
  v5 = *(v4 + 508);
  if (v5)
  {
    v6 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a3, a4, *(v4 + 500) * 100.0 / v5);
  }

  else
  {
    v6 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a3, a4, 0.0);
  }

  v37[0] = v6;
  v36[1] = @"raceRouteTimeTraveledOnRoute";
  v37[1] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v7, v8, v9, *(v4 + 336));
  v36[2] = @"raceRouteTimeTraveledOffRoute";
  v37[2] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v10, v11, v12, *(v4 + 344));
  v36[3] = @"raceRouteDistanceTraveledOnRoute";
  v37[3] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v13, v14, v15, *(v4 + 352));
  v36[4] = @"raceRouteDistanceTraveledOffRoute";
  v37[4] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v16, v17, v18, *(v4 + 360));
  v36[5] = @"raceRouteOnRouteAveragePace";
  v37[5] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v19, v20, v21, *(v4 + 368));
  v36[6] = @"signalEnvironmentType";
  v37[6] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v22, *(v4 + 40), v23);
  v36[7] = @"workoutActivityType";
  v37[7] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v24, *(v4 + 44), v25);
  v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v26, v37, v36, 8);
  if (qword_1EAFE4788 != -1)
  {
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
  }

  v28 = qword_1EAFE4790;
  if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v35 = v27;
    _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_DEBUG, "CLRR,sendRacingRouteAnalytics: \n%{private}@", buf, 0xCu);
  }

  v29 = sub_19B87DD40();
  if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v32 = 138477827;
    v33 = v27;
    v30 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 2, "CLRR,sendRacingRouteAnalytics: \n%{private}@", &v32, 12);
    sub_19B885924("Generic", 1, 0, 2, "void CLRacingRoute::sendRacingRouteAnalytics()_block_invoke", "CoreLocation: %s\n", v30);
    if (v30 != buf)
    {
      free(v30);
    }
  }

  return v27;
}

uint64_t sub_19B919194(uint64_t a1, void *a2, void *a3, _DWORD *a4, uint64_t a5)
{
  v208 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v132 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v132, OS_LOG_TYPE_ERROR, "CLRR,updateScoreboard,null data point", buf, 2u);
    }

    v133 = sub_19B87DD40();
    if ((*(v133 + 160) & 0x80000000) != 0 && (*(v133 + 164) & 0x80000000) != 0 && (*(v133 + 168) & 0x80000000) != 0 && !*(v133 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    LOWORD(v192) = 0;
    v131 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,updateScoreboard,null data point", &v192, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::updateScoreboard(CLRoutePoint *, CLRoutePoint *, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v131);
    if (v131 == buf)
    {
      return 0;
    }

LABEL_30:
    free(v131);
    return 0;
  }

  objc_msgSend_latitude_deg(a2, a2, a3, a4);
  v11 = v10;
  objc_msgSend_longitude_deg(a2, v12, v13, v14);
  if (!sub_19B9180C4(v11, v15) || (objc_msgSend_latitude_deg(a3, v16, v17, v18), v20 = v19, objc_msgSend_longitude_deg(a3, v21, v22, v23), !sub_19B9180C4(v20, v24)))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v90 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      objc_msgSend_latitude_deg(a2, v91, v92, v93);
      v95 = v94;
      objc_msgSend_longitude_deg(a2, v96, v97, v98);
      v100 = v99;
      objc_msgSend_latitude_deg(a3, v101, v102, v103);
      v105 = v104;
      objc_msgSend_longitude_deg(a3, v106, v107, v108);
      *buf = 134546433;
      v201 = v95;
      v202 = 2053;
      v203 = v100;
      v204 = 2053;
      v205 = v105;
      v206 = 2053;
      v207 = v109;
      _os_log_impl(&dword_19B873000, v90, OS_LOG_TYPE_ERROR, "CLRR,updateScoreboard,invalid data point,%{sensitive}.7lf,%{sensitive}.7lf,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x2Au);
    }

    v110 = sub_19B87DD40();
    if ((*(v110 + 160) & 0x80000000) != 0 && (*(v110 + 164) & 0x80000000) != 0 && (*(v110 + 168) & 0x80000000) != 0 && !*(v110 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v114 = qword_1EAFE4790;
    objc_msgSend_latitude_deg(a2, v111, v112, v113);
    v116 = v115;
    objc_msgSend_longitude_deg(a2, v117, v118, v119);
    v121 = v120;
    objc_msgSend_latitude_deg(a3, v122, v123, v124);
    v126 = v125;
    objc_msgSend_longitude_deg(a3, v127, v128, v129);
    v192 = 134546433;
    v193 = v116;
    v194 = 2053;
    v195 = v121;
    v196 = 2053;
    v197 = v126;
    v198 = 2053;
    v199 = v130;
    v131 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v114, 16, "CLRR,updateScoreboard,invalid data point,%{sensitive}.7lf,%{sensitive}.7lf,%{sensitive}.7lf,%{sensitive}.7lf", &v192, 42);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::updateScoreboard(CLRoutePoint *, CLRoutePoint *, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v131);
    if (v131 == buf)
    {
      return 0;
    }

    goto LABEL_30;
  }

  if (!*a4)
  {
    objc_msgSend_latitude_deg(a2, v25, v26, v27);
    *(a1 + 120) = v134;
    objc_msgSend_longitude_deg(a2, v135, v136, v137);
    *(a1 + 128) = v138;
    objc_msgSend_altitude_m(a2, v139, v140, v141);
    *(a1 + 136) = v142;
    objc_msgSend_timestamp_s(a2, v143, v144, v145);
    *(a1 + 152) = v146;
    objc_msgSend_odometer_m(a2, v147, v148, v149);
    *(a1 + 144) = v150;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 192) = 0;
    objc_msgSend_odometer_m(a3, v151, v152, v153);
    *(a1 + 200) = v154;
    objc_msgSend_latitude_deg(a3, v155, v156, v157);
    *(a1 + 208) = v158;
    objc_msgSend_longitude_deg(a3, v159, v160, v161);
    *(a1 + 216) = v162;
    objc_msgSend_altitude_m(a3, v163, v164, v165);
    *(a1 + 224) = v166;
    objc_msgSend_timestamp_s(a3, v167, v168, v169);
    *(a1 + 240) = v170;
    objc_msgSend_odometer_m(a3, v171, v172, v173);
    *(a1 + 248) = 0u;
    *(a1 + 232) = v174;
    *(a1 + 264) = 0u;
    *(a1 + 280) = 0;
    objc_msgSend_odometer_m(a3, v175, v176, v177);
    *(a1 + 288) = v178;
    v179 = *(a1 + 168);
    v180 = *(a1 + 184);
    v181 = *(a1 + 200);
    *(a5 + 32) = *(a1 + 152);
    v182 = *(a1 + 136);
    v183 = *(a1 + 120);
    *(a5 + 80) = v181;
    *(a5 + 48) = v179;
    *(a5 + 64) = v180;
    *a5 = v183;
    *(a5 + 16) = v182;
    v184 = *(a1 + 256);
    v185 = *(a1 + 272);
    v186 = *(a1 + 240);
    *(a5 + 168) = *(a1 + 288);
    *(a5 + 120) = v186;
    *(a5 + 152) = v185;
    *(a5 + 136) = v184;
    v187 = *(a1 + 224);
    *(a5 + 88) = *(a1 + 208);
    *(a5 + 104) = v187;
    v188 = *(a1 + 168);
    v189 = *(a1 + 184);
    *(a1 + 328) = *(a1 + 152);
    *(a1 + 344) = v188;
    *(a1 + 360) = v189;
    *(a1 + 376) = *(a1 + 200);
    v190 = *(a1 + 136);
    *(a1 + 296) = *(a1 + 120);
    *(a1 + 312) = v190;
    *(a1 + 464) = *(a1 + 288);
    *(a1 + 448) = *(a1 + 272);
    *(a1 + 432) = *(a1 + 256);
    v191 = *(a1 + 224);
    *(a1 + 416) = *(a1 + 240);
    *(a1 + 384) = *(a1 + 208);
    *(a1 + 400) = v191;
    return 1;
  }

  objc_msgSend_latitude_deg(a2, v25, v26, v27);
  *a5 = v28;
  objc_msgSend_longitude_deg(a2, v29, v30, v31);
  *(a5 + 8) = v32;
  objc_msgSend_altitude_m(a2, v33, v34, v35);
  *(a5 + 16) = v36;
  objc_msgSend_timestamp_s(a2, v37, v38, v39);
  *(a5 + 32) = v40;
  objc_msgSend_odometer_m(a2, v41, v42, v43);
  *(a5 + 24) = v44;
  objc_msgSend_timestamp_s(a2, v45, v46, v47);
  *(a5 + 40) = v48 - *(a1 + 152);
  *(a5 + 48) = *(a1 + 344);
  objc_msgSend_odometer_m(a2, v49, v50, v51);
  *(a5 + 56) = v52 - *(a1 + 144);
  *(a5 + 64) = *(a1 + 360);
  objc_msgSend_latitude_deg(a3, v53, v54, v55);
  *(a5 + 88) = v56;
  objc_msgSend_longitude_deg(a3, v57, v58, v59);
  *(a5 + 96) = v60;
  objc_msgSend_altitude_m(a3, v61, v62, v63);
  *(a5 + 104) = v64;
  objc_msgSend_timestamp_s(a3, v65, v66, v67);
  *(a5 + 120) = v68;
  objc_msgSend_odometer_m(a3, v69, v70, v71);
  *(a5 + 112) = v72;
  objc_msgSend_timestamp_s(a3, v73, v74, v75);
  *(a5 + 128) = v76 - *(a1 + 240);
  *(a5 + 136) = *(a1 + 432);
  objc_msgSend_odometer_m(a3, v77, v78, v79);
  *(a5 + 144) = v80 - *(a1 + 232);
  *(a5 + 152) = *(a1 + 448);
  if (*a4 == 1)
  {
    sub_19B919870(a1, a5, (a5 + 88));
  }

  result = sub_19B9198D0(a1, a5, a5 + 88);
  if (result)
  {
    sub_19B919CFC(a1, a5, (a5 + 88));
    v82 = *(a5 + 16);
    *(a1 + 296) = *a5;
    *(a1 + 312) = v82;
    v83 = *(a5 + 32);
    v84 = *(a5 + 48);
    v85 = *(a5 + 64);
    *(a1 + 376) = *(a5 + 80);
    *(a1 + 344) = v84;
    *(a1 + 360) = v85;
    *(a1 + 328) = v83;
    v87 = *(a5 + 136);
    v86 = *(a5 + 152);
    v88 = *(a5 + 120);
    *(a1 + 464) = *(a5 + 168);
    *(a1 + 432) = v87;
    *(a1 + 448) = v86;
    *(a1 + 416) = v88;
    v89 = *(a5 + 104);
    *(a1 + 384) = *(a5 + 88);
    *(a1 + 400) = v89;
    return 1;
  }

  return result;
}

double sub_19B919870(uint64_t a1, double *a2, double *a3)
{
  if (*(a1 + 476) == 1)
  {
    a2[6] = a2[6] + a2[5] - *(a1 + 336);
    a3[6] = a3[6] + a3[5] - *(a1 + 424);
    a2[8] = a2[8] + a2[7] - *(a1 + 352);
    result = a3[8] + a3[7] - *(a1 + 440);
    a3[8] = result;
  }

  return result;
}

uint64_t sub_19B9198D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = vabdd_f64(*a3, *(a1 + 384)) > 0.0000001 || vabdd_f64(*(a3 + 8), *(a1 + 392)) > 0.0000001;
  v7 = vabdd_f64(*a2, *(a1 + 296)) <= 0.0000001 && vabdd_f64(*(a2 + 8), *(a1 + 304)) <= 0.0000001;
  v8 = *(a1 + 475) | (v6 || v7);
  if (v8)
  {
    if (*(a3 + 32) < *(a1 + 416))
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v9 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a2 + 32);
        *buf = 134283521;
        v32 = v10;
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "CLRR,EvaluateProjectionStatus,projection went backward,timestamp,%{private}.1lf", buf, 0xCu);
      }

      v11 = sub_19B87DD40();
      if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v12 = *(a2 + 32);
        v29 = 134283521;
        v30 = v12;
        v13 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,EvaluateProjectionStatus,projection went backward,timestamp,%{private}.1lf", &v29, 12);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::EvaluateProjectionStatus(RacingRouteState &, RacingRouteState &) const", "CoreLocation: %s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      v14 = *(a1 + 400);
      *a3 = *(a1 + 384);
      *(a3 + 16) = v14;
      v15 = *(a1 + 416);
      v16 = *(a1 + 432);
      v17 = *(a1 + 448);
      *(a3 + 80) = *(a1 + 464);
      *(a3 + 48) = v16;
      *(a3 + 64) = v17;
      *(a3 + 32) = v15;
      v18 = *(a2 + 32);
      v20 = *(a1 + 344);
      v19 = *(a1 + 360);
      v21 = *(a1 + 376);
      *(a2 + 32) = *(a1 + 328);
      v22 = *(a1 + 312);
      *a2 = *(a1 + 296);
      *(a2 + 16) = v22;
      *(a2 + 80) = v21;
      *(a2 + 48) = v20;
      *(a2 + 64) = v19;
      *(a2 + 32) = v18;
    }
  }

  else
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v23 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a2 + 32);
      *buf = 134283521;
      v32 = v24;
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_DEFAULT, "CLRR,EvaluateProjectionStatus,user moved but its projection on reference route is same as before,skip this point,timestamp,%{private}.1lf", buf, 0xCu);
    }

    v25 = sub_19B87DD40();
    if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v26 = *(a2 + 32);
      v29 = 134283521;
      v30 = v26;
      v27 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,EvaluateProjectionStatus,user moved but its projection on reference route is same as before,skip this point,timestamp,%{private}.1lf", &v29, 12);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::EvaluateProjectionStatus(RacingRouteState &, RacingRouteState &) const", "CoreLocation: %s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }
    }
  }

  return v8 & 1;
}

void sub_19B919CFC(uint64_t a1, uint64_t a2, double *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 56);
  v6 = a3[7];
  v7 = *(a2 + 40);
  v8 = a3[5];
  v9 = fabs(v5);
  v10 = v7 / v5;
  v11 = (a1 + 376);
  v12 = v9 > 0.0000001;
  v13 = 0.0;
  if (v9 <= 0.0000001)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v10;
  }

  if (v12)
  {
    v11 = a3 + 3;
  }

  v15 = *v11;
  *(a2 + 72) = v14;
  *(a2 + 80) = v15;
  if (fabs(v6) <= 0.0000001)
  {
    v16 = *(a1 + 464);
  }

  else
  {
    v13 = v8 / v6;
    v16 = a3[3] - (v8 - v7) / (v8 / v6);
  }

  a3[9] = v13;
  a3[10] = v16;
  if (*(a1 + 483) == 1 && v16 > *(a1 + 544))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v17 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEBUG, "CLRR,updateDistanceAndAveragePace,DistanceAlongReferenceRoute passed upper threshold", buf, 2u);
    }

    v18 = sub_19B87DD40();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v24[0] = 0;
      v19 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 2, "CLRR,updateDistanceAndAveragePace,DistanceAlongReferenceRoute passed upper threshold", v24, 2);
      sub_19B885924("Generic", 1, 0, 2, "void CLRacingRoute::updateDistanceAndAveragePace(RacingRouteState &, RacingRouteState &) const", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    v20 = *(a1 + 544);
  }

  else
  {
    if (v16 >= 0.0)
    {
      return;
    }

    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v21 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_DEBUG, "CLRR,updateDistanceAndAveragePace,DistanceAlongReferenceRoute passed lower threshold", buf, 2u);
    }

    v22 = sub_19B87DD40();
    if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || (v20 = 0, *(v22 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v24[0] = 0;
      v23 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 2, "CLRR,updateDistanceAndAveragePace,DistanceAlongReferenceRoute passed lower threshold", v24, 2);
      sub_19B885924("Generic", 1, 0, 2, "void CLRacingRoute::updateDistanceAndAveragePace(RacingRouteState &, RacingRouteState &) const", "CoreLocation: %s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }

      v20 = 0;
    }
  }

  *(a3 + 10) = v20;
}

uint64_t sub_19B91A09C(uint64_t a1, void *a2, void *a3, void *a4, double *a5, int *a6, uint64_t a7)
{
  v313 = *MEMORY[0x1E69E9840];
  if (!a3 || !a4)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v63 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v63, OS_LOG_TYPE_ERROR, "CLRR,updateScoreboard,null input data or segment point", buf, 2u);
    }

    v64 = sub_19B87DD40();
    if ((*(v64 + 160) & 0x80000000) != 0 && (*(v64 + 164) & 0x80000000) != 0 && (*(v64 + 168) & 0x80000000) != 0 && !*(v64 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v65 = qword_1EAFE4790;
    LOWORD(v289) = 0;
    v288 = 2;
    v66 = "CLRR,updateScoreboard,null input data or segment point";
    goto LABEL_32;
  }

  objc_msgSend_latitude_deg(a2, a2, a3, a4);
  v15 = v14;
  objc_msgSend_longitude_deg(a2, v16, v17, v18);
  if (!sub_19B9180C4(v15, v19) || (objc_msgSend_latitude_deg(a3, v20, v21, v22), v24 = v23, objc_msgSend_longitude_deg(a3, v25, v26, v27), !sub_19B9180C4(v24, v28)) || (objc_msgSend_latitude_deg(a4, v29, v30, v31), v33 = v32, objc_msgSend_longitude_deg(a4, v34, v35, v36), !sub_19B9180C4(v33, v37)))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v67 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      objc_msgSend_latitude_deg(a2, v68, v69, v70);
      v72 = v71;
      objc_msgSend_longitude_deg(a2, v73, v74, v75);
      v77 = v76;
      objc_msgSend_latitude_deg(a3, v78, v79, v80);
      v82 = v81;
      objc_msgSend_longitude_deg(a3, v83, v84, v85);
      v87 = v86;
      objc_msgSend_latitude_deg(a4, v88, v89, v90);
      v92 = v91;
      objc_msgSend_longitude_deg(a4, v93, v94, v95);
      *buf = 134546945;
      v302 = v72;
      v303 = 2053;
      v304 = v77;
      v305 = 2053;
      v306 = v82;
      v307 = 2053;
      v308 = v87;
      v309 = 2053;
      v310 = v92;
      v311 = 2053;
      v312 = v96;
      _os_log_impl(&dword_19B873000, v67, OS_LOG_TYPE_ERROR, "CLRR,updateScoreboard,invalid input data or segment point,%{sensitive}.7lf,%{sensitive}.7lf,%{sensitive}.7lf,%{sensitive}.7lf,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x3Eu);
    }

    v97 = sub_19B87DD40();
    if ((*(v97 + 160) & 0x80000000) != 0 && (*(v97 + 164) & 0x80000000) != 0 && (*(v97 + 168) & 0x80000000) != 0 && !*(v97 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v101 = qword_1EAFE4790;
    objc_msgSend_latitude_deg(a2, v98, v99, v100);
    v103 = v102;
    objc_msgSend_longitude_deg(a2, v104, v105, v106);
    v108 = v107;
    objc_msgSend_latitude_deg(a3, v109, v110, v111);
    v113 = v112;
    objc_msgSend_longitude_deg(a3, v114, v115, v116);
    v118 = v117;
    objc_msgSend_latitude_deg(a4, v119, v120, v121);
    v123 = v122;
    objc_msgSend_longitude_deg(a4, v124, v125, v126);
    v289 = 134546945;
    v290 = v103;
    v291 = 2053;
    v292 = v108;
    v293 = 2053;
    v294 = v113;
    v295 = 2053;
    v296 = v118;
    v297 = 2053;
    v298 = v123;
    v299 = 2053;
    v300 = v127;
    v288 = 62;
    v66 = "CLRR,updateScoreboard,invalid input data or segment point,%{sensitive}.7lf,%{sensitive}.7lf,%{sensitive}.7lf,%{sensitive}.7lf,%{sensitive}.7lf,%{sensitive}.7lf";
    v65 = v101;
    goto LABEL_32;
  }

  v41 = *a6;
  objc_msgSend_latitude_deg(a4, v38, v39, v40);
  v43 = v42;
  objc_msgSend_latitude_deg(a3, v44, v45, v46);
  v48 = v47;
  objc_msgSend_longitude_deg(a3, v49, v50, v51);
  v53 = v52;
  objc_msgSend_longitude_deg(a4, v54, v55, v56);
  v61 = v53 + 360.0;
  if (v53 >= 0.0)
  {
    v61 = v53;
  }

  if (v60 < 0.0)
  {
    v60 = v60 + 360.0;
  }

  v62 = v60 - v61;
  if (v60 - v61 <= 180.0)
  {
    if (v62 < -180.0)
    {
      v62 = v62 + 360.0;
    }
  }

  else
  {
    v62 = v62 + -360.0;
  }

  v130 = v43 - v48;
  objc_msgSend_altitude_m(a4, v57, v58, v59);
  v132 = v131;
  objc_msgSend_altitude_m(a3, v133, v134, v135);
  v137 = v136;
  objc_msgSend_timestamp_s(a4, v138, v139, v140);
  v142 = v141;
  objc_msgSend_timestamp_s(a3, v143, v144, v145);
  v147 = v146;
  objc_msgSend_odometer_m(a4, v148, v149, v150);
  v152 = v151;
  objc_msgSend_odometer_m(a3, v153, v154, v155);
  v157 = v156;
  objc_msgSend_latitude_deg(a2, v158, v159, v160);
  if (!v41)
  {
    v216 = v152 - v157;
    *(a1 + 120) = v164;
    v217 = a1 + 120;
    objc_msgSend_longitude_deg(a2, v161, v162, v163);
    *(a1 + 128) = v218;
    objc_msgSend_altitude_m(a2, v219, v220, v221);
    *(a1 + 136) = v222;
    objc_msgSend_timestamp_s(a2, v223, v224, v225);
    *(a1 + 152) = v226;
    objc_msgSend_odometer_m(a2, v227, v228, v229);
    *(a1 + 144) = v230;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 192) = 0;
    objc_msgSend_odometer_m(a3, v231, v232, v233);
    *(a1 + 200) = v234 + *a5 * v216;
    objc_msgSend_latitude_deg(a3, v235, v236, v237);
    *(a1 + 208) = v238 + *a5 * v130;
    v239 = (a1 + 208);
    objc_msgSend_longitude_deg(a3, v240, v241, v242);
    v244 = v243 + *a5 * v62;
    *(a1 + 216) = v244;
    if (sub_19B9180C4(*(a1 + 208), v244))
    {
      objc_msgSend_altitude_m(a3, v245, v246, v247);
      *(a1 + 224) = v248 + *a5 * (v132 - v137);
      objc_msgSend_timestamp_s(a3, v249, v250, v251);
      *(a1 + 240) = v252 + *a5 * (v142 - v147);
      objc_msgSend_odometer_m(a3, v253, v254, v255);
      v257 = v256 + *a5 * v216;
      *(a1 + 248) = 0u;
      v258 = a1 + 248;
      *(v258 - 16) = v257;
      *(v258 + 32) = 0;
      *(v258 + 16) = 0u;
      objc_msgSend_odometer_m(a3, v259, v260, v261);
      *(v258 + 40) = v262 + *a5 * v216;
      v263 = *(v217 + 16);
      *a7 = *v217;
      *(a7 + 16) = v263;
      v264 = *(v217 + 32);
      v265 = *(v217 + 48);
      v266 = *(v217 + 64);
      *(a7 + 80) = *(v217 + 80);
      *(a7 + 48) = v265;
      *(a7 + 64) = v266;
      *(a7 + 32) = v264;
      v267 = *(v239 + 10);
      v269 = v239[2];
      v268 = v239[3];
      *(a7 + 152) = v239[4];
      *(a7 + 120) = v269;
      *(a7 + 168) = v267;
      *(a7 + 136) = v268;
      v270 = *v239;
      *(a7 + 104) = v239[1];
      *(a7 + 88) = v270;
      v271 = *(v217 + 48);
      *(v258 + 80) = *(v217 + 32);
      *(v258 + 96) = v271;
      *(v258 + 112) = *(v217 + 64);
      *(v258 + 128) = *(v217 + 80);
      v272 = *(v217 + 16);
      *(v258 + 48) = *v217;
      *(v258 + 64) = v272;
      *(v258 + 216) = *(v239 + 10);
      v273 = v239[3];
      *(v258 + 200) = v239[4];
      v274 = v239[1];
      v275 = v239[2];
      *(v258 + 184) = v273;
      *(v258 + 168) = v275;
      *(v258 + 136) = *v239;
      *(v258 + 152) = v274;
      return 1;
    }

    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v282 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      v283 = *(a1 + 208);
      v284 = *(a1 + 216);
      *buf = 134545921;
      v302 = v283;
      v303 = 2053;
      v304 = v284;
      _os_log_impl(&dword_19B873000, v282, OS_LOG_TYPE_ERROR, "CLRR,updateScoreboard,invalid raceStartPointOnReferenceRoute,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x16u);
    }

    v285 = sub_19B87DD40();
    if ((*(v285 + 160) & 0x80000000) != 0 && (*(v285 + 164) & 0x80000000) != 0 && (*(v285 + 168) & 0x80000000) != 0 && !*(v285 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v65 = qword_1EAFE4790;
    v286 = *(a1 + 208);
    v287 = *(a1 + 216);
    v289 = 134545921;
    v290 = v286;
    v291 = 2053;
    v292 = v287;
    v288 = 22;
    v66 = "CLRR,updateScoreboard,invalid raceStartPointOnReferenceRoute,%{sensitive}.7lf,%{sensitive}.7lf";
    goto LABEL_32;
  }

  *a7 = v164;
  objc_msgSend_longitude_deg(a2, v161, v162, v163);
  *(a7 + 8) = v165;
  objc_msgSend_altitude_m(a2, v166, v167, v168);
  *(a7 + 16) = v169;
  objc_msgSend_timestamp_s(a2, v170, v171, v172);
  *(a7 + 32) = v173;
  objc_msgSend_odometer_m(a2, v174, v175, v176);
  *(a7 + 24) = v177;
  objc_msgSend_timestamp_s(a2, v178, v179, v180);
  *(a7 + 40) = v181 - *(a1 + 152);
  *(a7 + 48) = *(a1 + 344);
  objc_msgSend_odometer_m(a2, v182, v183, v184);
  *(a7 + 56) = v185 - *(a1 + 144);
  *(a7 + 64) = *(a1 + 360);
  objc_msgSend_latitude_deg(a3, v186, v187, v188);
  *(a7 + 88) = v189 + *a5 * v130;
  objc_msgSend_longitude_deg(a3, v190, v191, v192);
  v194 = v193 + *a5 * v62;
  *(a7 + 96) = v194;
  if (!sub_19B9180C4(*(a7 + 88), v194))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v276 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      v277 = *(a7 + 88);
      v278 = *(a7 + 96);
      *buf = 134545921;
      v302 = v277;
      v303 = 2053;
      v304 = v278;
      _os_log_impl(&dword_19B873000, v276, OS_LOG_TYPE_ERROR, "CLRR,updateScoreboard,invalid referenceState,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x16u);
    }

    v279 = sub_19B87DD40();
    if ((*(v279 + 160) & 0x80000000) != 0 && (*(v279 + 164) & 0x80000000) != 0 && (*(v279 + 168) & 0x80000000) != 0 && !*(v279 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v65 = qword_1EAFE4790;
    v280 = *(a7 + 88);
    v281 = *(a7 + 96);
    v289 = 134545921;
    v290 = v280;
    v291 = 2053;
    v292 = v281;
    v288 = 22;
    v66 = "CLRR,updateScoreboard,invalid referenceState,%{sensitive}.7lf,%{sensitive}.7lf";
LABEL_32:
    v128 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v65, 16, v66, &v289, v288);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::updateScoreboard(CLRoutePoint *, CLRoutePoint *, CLRoutePoint *, const double &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v128);
    if (v128 != buf)
    {
      free(v128);
    }

    return 0;
  }

  objc_msgSend_altitude_m(a3, v195, v196, v197);
  *(a7 + 104) = v198 + *a5 * (v132 - v137);
  objc_msgSend_timestamp_s(a3, v199, v200, v201);
  *(a7 + 120) = v202 + *a5 * (v142 - v147);
  objc_msgSend_odometer_m(a3, v203, v204, v205);
  v207 = v206 + *a5 * (v152 - v157);
  *(a7 + 112) = v207;
  *(a7 + 128) = *(a7 + 120) - *(a1 + 240);
  *(a7 + 136) = *(a1 + 432);
  *(a7 + 144) = v207 - *(a1 + 232);
  *(a7 + 152) = *(a1 + 448);
  if (*a6 == 1)
  {
    sub_19B919870(a1, a7, (a7 + 88));
  }

  result = sub_19B9198D0(a1, a7, a7 + 88);
  if (result)
  {
    sub_19B919CFC(a1, a7, (a7 + 88));
    v208 = *(a7 + 16);
    *(a1 + 296) = *a7;
    *(a1 + 312) = v208;
    v209 = *(a7 + 32);
    v210 = *(a7 + 48);
    v211 = *(a7 + 64);
    *(a1 + 376) = *(a7 + 80);
    *(a1 + 344) = v210;
    *(a1 + 360) = v211;
    *(a1 + 328) = v209;
    v213 = *(a7 + 136);
    v212 = *(a7 + 152);
    v214 = *(a7 + 120);
    *(a1 + 464) = *(a7 + 168);
    *(a1 + 432) = v213;
    *(a1 + 448) = v212;
    *(a1 + 416) = v214;
    v215 = *(a7 + 104);
    *(a1 + 384) = *(a7 + 88);
    *(a1 + 400) = v215;
    return 1;
  }

  return result;
}

uint64_t sub_19B91AB54(uint64_t a1, const char *a2, void *a3, int *a4, unsigned int *a5, uint64_t a6)
{
  v343 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v28 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_ERROR, "CLRR,processLocationPoint,input data array is null", buf, 2u);
    }

    v29 = sub_19B87DD40();
    if ((*(v29 + 160) & 0x80000000) != 0 && (*(v29 + 164) & 0x80000000) != 0 && (*(v29 + 168) & 0x80000000) != 0 && !*(v29 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    LOWORD(v335[0]) = 0;
    v27 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,processLocationPoint,input data array is null", v335, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v27);
    goto LABEL_39;
  }

  v7 = *a4;
  if ((v7 & 0x80000000) != 0 || (v8 = a1, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 104) - *(a1 + 96)) >> 3) <= v7))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v25 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_ERROR, "CLRR,processLocationPoint,invalid matrix index", buf, 2u);
    }

    v26 = sub_19B87DD40();
    if ((*(v26 + 160) & 0x80000000) != 0 && (*(v26 + 164) & 0x80000000) != 0 && (*(v26 + 168) & 0x80000000) != 0 && !*(v26 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    LOWORD(v335[0]) = 0;
    v27 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,processLocationPoint,invalid matrix index", v335, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v27);
LABEL_39:
    if (v27 != buf)
    {
      free(v27);
    }

    return 0;
  }

  v10 = a3;
  v12 = objc_msgSend_count(a3, a2, a3, a4);
  v16 = *(v8 + 524);
  v331 = 0;
  *(v8 + 482) = 0;
  v328 = 0;
  v329 = 0;
  v330 = 0;
  v325 = 0;
  v326 = 0;
  v327 = 0;
  if (*a5 >= 2)
  {
    if (*a5 != 2)
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v178 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v178, OS_LOG_TYPE_ERROR, "CLRR,processLocationPoint,unknown point type", buf, 2u);
      }

      v179 = sub_19B87DD40();
      if ((*(v179 + 160) & 0x80000000) != 0 && (*(v179 + 164) & 0x80000000) != 0 && (*(v179 + 168) & 0x80000000) != 0 && !*(v179 + 152))
      {
        goto LABEL_462;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      LOWORD(v335[0]) = 0;
      v160 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,processLocationPoint,unknown point type", v335, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v160);
      goto LABEL_460;
    }

    v316 = v12;
    v315 = v16;
    v318 = a2;
    sub_19B8EB230(&v325, a4);
    v317 = a6;
    v320 = 0;
  }

  else
  {
    v17 = *(v8 + 88);
    if (v17 < 1 || (v18 = *(v8 + 92), v18 < 1) || *a4 < 0 || *a4 >= v18 * v17)
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v158 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v158, OS_LOG_TYPE_ERROR, "CLRR,processLocationPoint,failed to determine neighboring cells index", buf, 2u);
      }

      v159 = sub_19B87DD40();
      if ((*(v159 + 160) & 0x80000000) != 0 && (*(v159 + 164) & 0x80000000) != 0 && (*(v159 + 168) & 0x80000000) != 0 && !*(v159 + 152))
      {
        goto LABEL_462;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      LOWORD(v335[0]) = 0;
      v160 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,processLocationPoint,failed to determine neighboring cells index", v335, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v160);
      goto LABEL_460;
    }

    v316 = v12;
    v315 = v16;
    v317 = a6;
    for (i = -1; i != 2; ++i)
    {
      v20 = *a4 / *(v8 + 92);
      if (v20 + i >= 0 && v20 + i < *(v8 + 88))
      {
        v21 = v20 + i;
        for (j = -1; j != 2; ++j)
        {
          v23 = *(v8 + 92);
          v24 = *a4 % v23;
          if (j + v24 >= 0 && j + v24 < v23)
          {
            *buf = j + v24 + v21 * v23;
            sub_19B8EB230(&v325, buf);
          }
        }
      }
    }

    v318 = a2;
    v320 = 1;
  }

  v323 = (v8 + 524);
  v324 = v8;
  v321 = v10;
  if (v326 != v325)
  {
    v32 = 0;
    v33 = (v326 - v325) > 4;
    while (1)
    {
      if (v33)
      {
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v34 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEBUG))
        {
          v35 = *(v325 + v32);
          *buf = 67240192;
          *&buf[4] = v35;
          _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_DEBUG, "CLRR,processLocationPoint,processing matrix cell index,%{public}d", buf, 8u);
        }

        v36 = sub_19B87DD40();
        if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          v37 = *(v325 + v32);
          LODWORD(v335[0]) = 67240192;
          HIDWORD(v335[0]) = v37;
          v38 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 2, "CLRR,processLocationPoint,processing matrix cell index,%{public}d", v335, 8);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v38);
          if (v38 != buf)
          {
            free(v38);
          }
        }
      }

      if (v320)
      {
        v39 = v325;
        v40 = *(v325 + v32);
        v41 = *(v8 + 96);
        v42 = *(v41 + 24 * v40);
        v43 = *(v41 + 24 * v40 + 8);
        if (v43 == v42)
        {
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          v100 = qword_1EAFE4790;
          if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEBUG))
          {
            v101 = v39[v32];
            *buf = 67109120;
            *&buf[4] = v101;
            _os_log_impl(&dword_19B873000, v100, OS_LOG_TYPE_DEBUG, "CLRR,updateSearchRange,empty matrix cell at index,%d,", buf, 8u);
          }

          v102 = sub_19B87DD40();
          if (*(v102 + 160) <= 1 && *(v102 + 164) <= 1 && *(v102 + 168) <= 1 && !*(v102 + 152))
          {
            goto LABEL_158;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          v103 = v39[v32];
          LODWORD(v335[0]) = 67109120;
          HIDWORD(v335[0]) = v103;
          v104 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 2, "CLRR,updateSearchRange,empty matrix cell at index,%d,", v335, 8);
          sub_19B885924("Generic", 1, 0, 2, "void CLRacingRoute::updateSearchRange(const int &, int &, int &, BOOL &) const", "CoreLocation: %s\n", v104);
          goto LABEL_156;
        }

        v44 = 0;
        v45 = -1;
        v46 = 16;
        v322 = -1;
        while (1)
        {
          if (((v43 - v42) >> 3) - 1 <= v44)
          {
            v50 = v44;
          }

          else
          {
            v47 = v44 + 1;
            v48 = *(v42 + 8 * (v44 + 1)) - *(v42 + 8 * v44 + 4);
            v49 = v46;
            v50 = v44;
            while (v48 <= 0x3C)
            {
              v50 = v47;
              if (qword_1EAFE4788 != -1)
              {
                dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
              }

              v51 = qword_1EAFE4790;
              if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_19B873000, v51, OS_LOG_TYPE_DEFAULT, "CLRR,updateSearchRange,detected a short segment across the cell border,expanding the search range", buf, 2u);
              }

              v52 = sub_19B87DD40();
              if (*(v52 + 160) > 1 || *(v52 + 164) > 1 || *(v52 + 168) > 1 || *(v52 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE4788 != -1)
                {
                  dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
                }

                LOWORD(v335[0]) = 0;
                v53 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,updateSearchRange,detected a short segment across the cell border,expanding the search range", v335, 2);
                sub_19B885924("Generic", 1, 0, 2, "void CLRacingRoute::updateSearchRange(const int &, int &, int &, BOOL &) const", "CoreLocation: %s\n", v53);
                if (v53 != buf)
                {
                  free(v53);
                }
              }

              v40 = v39[v32];
              v41 = *(v324 + 96);
              v42 = *(v41 + 24 * v40);
              if (((*(v41 + 24 * v40 + 8) - v42) >> 3) - 1 <= v50)
              {
                break;
              }

              v47 = v50 + 1;
              v48 = *(v42 + v49) - *(v42 + 8 * v44 + 4);
              v49 += 8;
            }
          }

          v54 = *(v42 + 8 * v44);
          v55 = *(v42 + 8 * v50 + 4);
          if (v55 >= v54)
          {
            v56 = *v323;
            if (v54 > *v323)
            {
              v56 = v54;
            }

            if (v56 - v54 <= v55 - v54)
            {
              break;
            }
          }

          ++v44;
          v42 = *(v41 + 24 * v40);
          v43 = *(v41 + 24 * v40 + 8);
          v46 += 8;
          if ((v43 - v42) >> 3 <= v44)
          {
            goto LABEL_90;
          }
        }

        v45 = v56;
        v322 = v55;
      }

      else
      {
        v45 = *v323;
        v322 = *v323 + 10;
      }

LABEL_90:
      v8 = v324;
      if ((v45 & 0x80000000) == 0 && v322 >= v45)
      {
        break;
      }

LABEL_158:
      ++v32;
      v33 = 1;
      v10 = v321;
      if (v32 >= (v326 - v325) >> 2)
      {
        goto LABEL_252;
      }
    }

    v57 = v45 - 3;
    if (v45 < 3)
    {
      v57 = 0;
    }

    if (v57 <= *v323)
    {
      v58 = *v323;
    }

    else
    {
      v58 = v57;
    }

    v62 = v322 + 3;
    if (objc_msgSend_count(v321, v13, v14, v15) <= (v322 + 3))
    {
      v62 = objc_msgSend_count(v321, v59, v60, v61) - 1;
    }

    if (v62 < v58)
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v63 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240448;
        *&buf[4] = v58;
        *&buf[8] = 1026;
        *&buf[10] = v62;
        _os_log_impl(&dword_19B873000, v63, OS_LOG_TYPE_ERROR, "CLRR,findNearestPointIndex,invalid search range index,fromIndex,%{public}d,toIndex,%{public}d", buf, 0xEu);
      }

      v64 = sub_19B87DD40();
      if ((*(v64 + 160) & 0x80000000) == 0 || (*(v64 + 164) & 0x80000000) == 0 || (*(v64 + 168) & 0x80000000) == 0 || *(v64 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        LODWORD(v335[0]) = 67240448;
        HIDWORD(v335[0]) = v58;
        LOWORD(v335[1]) = 1026;
        *(&v335[1] + 2) = v62;
        v65 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,findNearestPointIndex,invalid search range index,fromIndex,%{public}d,toIndex,%{public}d", v335, 14);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::findNearestPointIndex(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const int &, const RacingRoutePointType &, int &)", "CoreLocation: %s\n", v65);
        goto LABEL_143;
      }

LABEL_145:
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v107 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEBUG))
      {
        v108 = *(v325 + v32);
        *buf = 67240192;
        *&buf[4] = v108;
        _os_log_impl(&dword_19B873000, v107, OS_LOG_TYPE_DEBUG, "CLRR,processLocationPoint,no points within the accepted distance in matrix cell index,%{public}d", buf, 8u);
      }

      v109 = sub_19B87DD40();
      if (*(v109 + 160) <= 1 && *(v109 + 164) <= 1 && *(v109 + 168) <= 1 && !*(v109 + 152))
      {
        goto LABEL_158;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v110 = *(v325 + v32);
      LODWORD(v335[0]) = 67240192;
      HIDWORD(v335[0]) = v110;
      v104 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 2, "CLRR,processLocationPoint,no points within the accepted distance in matrix cell index,%{public}d", v335, 8);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v104);
LABEL_156:
      if (v104 != buf)
      {
        free(v104);
      }

      goto LABEL_158;
    }

    objc_msgSend_latitude_deg(v318, v59, v60, v61);
    v67 = v66;
    objc_msgSend_longitude_deg(v318, v68, v69, v70);
    v72 = v71;
    if (sub_19B9180C4(*&v67, v71))
    {
      if (objc_msgSend_count(v321, v73, v74, v75) > v58)
      {
        if (objc_msgSend_count(v321, v76, v77, v78) <= v62)
        {
          v62 = objc_msgSend_count(v321, v13, v14, v15) - 1;
        }

        memset(v335, 0, sizeof(v335));
        __p = 0;
        v333 = 0;
        v334 = 0;
        if (*a5)
        {
          v79 = 0;
          v80 = 0;
          v81 = 0;
        }

        else
        {
          v124 = 0;
          v337 = 0;
          do
          {
            v125 = objc_msgSend_objectAtIndex_(v321, v13, v124, v15);
            objc_msgSend_latitude_deg(v125, v126, v127, v128);
            v130 = v129;
            v133 = objc_msgSend_objectAtIndex_(v321, v131, v124, v132);
            objc_msgSend_longitude_deg(v133, v134, v135, v136);
            sub_19BA0C01C(v324, *&v67, v72, v130, v137, 0.0);
            *buf = v138;
            if (v138 <= *(v324 + 576))
            {
              sub_19B8EB230(v335, &v337);
              sub_19B8F518C(&__p, buf);
            }

            v337 = ++v124;
          }

          while (v124 != 11);
          v80 = v335[1];
          v79 = v335[0];
          v81 = v335[1] != v335[0];
          if (v335[1] != v335[0] && !*a5)
          {
            v81 = 1;
            goto LABEL_189;
          }
        }

        if (v58 <= v62)
        {
          v82 = 0;
          v83 = v62 - v58 + 1;
          v84 = v58;
          do
          {
            v85 = objc_msgSend_objectAtIndex_(v321, v13, v84, v15);
            objc_msgSend_latitude_deg(v85, v86, v87, v88);
            v90 = v89;
            v93 = objc_msgSend_objectAtIndex_(v321, v91, v84, v92);
            objc_msgSend_longitude_deg(v93, v94, v95, v96);
            sub_19BA0C01C(v324, *&v67, v72, v90, v97, 0.0);
            *buf = v98;
            if (v98 <= *(v324 + 576))
            {
              v337 = v82;
              sub_19B8EB230(v335, &v337);
              sub_19B8F518C(&__p, buf);
            }

            ++v84;
            ++v82;
          }

          while (v83 != v82);
          v99 = v335[0];
          v80 = v335[1];
LABEL_190:
          if (v80 == v99)
          {
            v152 = -1;
            goto LABEL_229;
          }

          v139 = (__p + 8);
          v140 = *__p;
          if (__p == v333 || v139 == v333)
          {
            v147 = *__p;
            v148 = __p;
          }

          else
          {
            v141 = *__p;
            v142 = (__p + 8);
            v143 = __p;
            v144 = (__p + 8);
            do
            {
              v145 = *v144++;
              v146 = v145;
              if (v145 < v141)
              {
                v141 = v146;
                v143 = v142;
              }

              v142 = v144;
            }

            while (v144 != v333);
            v147 = *v143;
            v148 = __p;
            v149 = (__p + 8);
            do
            {
              v150 = *v149++;
              v151 = v150;
              if (v150 < v140)
              {
                v140 = v151;
                v148 = v139;
              }

              v139 = v149;
            }

            while (v149 != v333);
          }

          v152 = *&v99[(v148 - __p) << 29 >> 30];
          if (v81)
          {
            if (qword_1EAFE4788 != -1)
            {
              dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
            }

            v153 = qword_1EAFE4790;
            if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134349312;
              *&buf[4] = v147;
              *&buf[12] = 1026;
              *&buf[14] = v152;
              _os_log_impl(&dword_19B873000, v153, OS_LOG_TYPE_DEBUG, "CLRR,findNearestPointIndex,start point is matched to reference head section,min distance,%{public}.2lf,index from start of reference route,%{public}d", buf, 0x12u);
            }

            v154 = sub_19B87DD40();
            if (*(v154 + 160) > 1 || *(v154 + 164) > 1 || *(v154 + 168) > 1 || *(v154 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE4788 != -1)
              {
                dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
              }

              v337 = 134349312;
              v338 = v147;
              v339 = 1026;
              v340 = v152;
              v155 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 2, "CLRR,findNearestPointIndex,start point is matched to reference head section,min distance,%{public}.2lf,index from start of reference route,%{public}d", &v337, 18);
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::findNearestPointIndex(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const int &, const RacingRoutePointType &, int &)", "CoreLocation: %s\n", v155);
LABEL_227:
              if (v155 != buf)
              {
                free(v155);
              }
            }
          }

          else
          {
            if (qword_1EAFE4788 != -1)
            {
              dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
            }

            v156 = qword_1EAFE4790;
            if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134349312;
              *&buf[4] = v147;
              *&buf[12] = 1026;
              *&buf[14] = v152;
              _os_log_impl(&dword_19B873000, v156, OS_LOG_TYPE_DEBUG, "CLRR,findNearestPointIndex,min distance,%{public}.2lf,index from start of search window,%{public}d", buf, 0x12u);
            }

            v157 = sub_19B87DD40();
            if (*(v157 + 160) > 1 || *(v157 + 164) > 1 || *(v157 + 168) > 1 || *(v157 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE4788 != -1)
              {
                dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
              }

              v337 = 134349312;
              v338 = v147;
              v339 = 1026;
              v340 = v152;
              v155 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 2, "CLRR,findNearestPointIndex,min distance,%{public}.2lf,index from start of search window,%{public}d", &v337, 18);
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::findNearestPointIndex(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const int &, const RacingRoutePointType &, int &)", "CoreLocation: %s\n", v155);
              goto LABEL_227;
            }
          }

LABEL_229:
          if (__p)
          {
            v333 = __p;
            operator delete(__p);
          }

          if (v335[0])
          {
            v335[1] = v335[0];
            operator delete(v335[0]);
          }

          if (v80 != v99)
          {
            if ((v152 & 0x80000000) == 0)
            {
              *buf = v152 + v58;
              sub_19B8EB230(&v328, buf);
            }

            goto LABEL_158;
          }

          goto LABEL_145;
        }

LABEL_189:
        v99 = v79;
        goto LABEL_190;
      }

      if (*(v324 + 479) == 1)
      {
        *(v324 + 475) = 1;
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v111 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v111, OS_LOG_TYPE_DEFAULT, "CLRR,findNearestPointIndex,reached end of reference route", buf, 2u);
        }

        v112 = sub_19B87DD40();
        if (*(v112 + 160) <= 1 && *(v112 + 164) <= 1 && *(v112 + 168) <= 1 && !*(v112 + 152))
        {
          goto LABEL_145;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        LOWORD(v335[0]) = 0;
        v65 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,findNearestPointIndex,reached end of reference route", v335, 2);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::findNearestPointIndex(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const int &, const RacingRoutePointType &, int &)", "CoreLocation: %s\n", v65);
      }

      else
      {
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v113 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
        {
          v117 = objc_msgSend_count(v321, v114, v115, v116);
          *buf = 67240448;
          *&buf[4] = v58;
          *&buf[8] = 2050;
          *&buf[10] = v117;
          _os_log_impl(&dword_19B873000, v113, OS_LOG_TYPE_ERROR, "CLRR,findNearestPointIndex,invalid search index,%{public}d,array size,%{public}lu", buf, 0x12u);
        }

        v118 = sub_19B87DD40();
        if ((*(v118 + 160) & 0x80000000) != 0 && (*(v118 + 164) & 0x80000000) != 0 && (*(v118 + 168) & 0x80000000) != 0 && !*(v118 + 152))
        {
          goto LABEL_145;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v122 = qword_1EAFE4790;
        v123 = objc_msgSend_count(v321, v119, v120, v121);
        LODWORD(v335[0]) = 67240448;
        HIDWORD(v335[0]) = v58;
        LOWORD(v335[1]) = 2050;
        *(&v335[1] + 2) = v123;
        v65 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v122, 16, "CLRR,findNearestPointIndex,invalid search index,%{public}d,array size,%{public}lu", v335, 18);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::findNearestPointIndex(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const int &, const RacingRoutePointType &, int &)", "CoreLocation: %s\n", v65);
      }
    }

    else
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v105 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
      {
        *buf = 134545921;
        *&buf[4] = v67;
        *&buf[12] = 2053;
        *&buf[14] = v72;
        _os_log_impl(&dword_19B873000, v105, OS_LOG_TYPE_ERROR, "CLRR,findNearestPointIndex,invalid coordinates,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf", buf, 0x16u);
      }

      v106 = sub_19B87DD40();
      if ((*(v106 + 160) & 0x80000000) != 0 && (*(v106 + 164) & 0x80000000) != 0 && (*(v106 + 168) & 0x80000000) != 0 && !*(v106 + 152))
      {
        goto LABEL_145;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      LODWORD(v335[0]) = 134545921;
      *(v335 + 4) = v67;
      WORD2(v335[1]) = 2053;
      *(&v335[1] + 6) = *&v72;
      v65 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,findNearestPointIndex,invalid coordinates,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf", v335, 22);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::findNearestPointIndex(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const int &, const RacingRoutePointType &, int &)", "CoreLocation: %s\n", v65);
    }

LABEL_143:
    if (v65 != buf)
    {
      free(v65);
    }

    goto LABEL_145;
  }

LABEL_252:
  v161 = v328;
  if (v329 == v328)
  {
    *(v8 + 484) = 1;
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v180 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v180, OS_LOG_TYPE_DEBUG, "CLRR,processLocationPoint,no matched point is found in the current or neighboring cells.Skip this point.", buf, 2u);
    }

    v181 = sub_19B87DD40();
    if (*(v181 + 160) <= 1 && *(v181 + 164) <= 1 && *(v181 + 168) <= 1 && !*(v181 + 152))
    {
      goto LABEL_462;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    LOWORD(v335[0]) = 0;
    v160 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 2, "CLRR,processLocationPoint,no matched point is found in the current or neighboring cells.Skip this point.", v335, 2);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v160);
    goto LABEL_460;
  }

  v162 = v328 + 4;
  if (v328 + 4 != v329)
  {
    v163 = *v328;
    v164 = v328 + 4;
    do
    {
      v166 = *v164;
      v164 += 4;
      v165 = v166;
      if (v166 < v163)
      {
        v163 = v165;
        v161 = v162;
      }

      v162 = v164;
    }

    while (v164 != v329);
  }

  v167 = *v161;
  *(v8 + 524) = v167;
  if (v167 >= *(v8 + 488))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v182 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      v183 = *(v8 + 524);
      v184 = *(v8 + 488);
      *buf = 67240448;
      *&buf[4] = v183;
      *&buf[8] = 1026;
      *&buf[10] = v184;
      _os_log_impl(&dword_19B873000, v182, OS_LOG_TYPE_ERROR, "CLRR,processLocationPoint,index exceeded buffer range,last matched index,%{public}d,buffer size,%{public}d", buf, 0xEu);
    }

    v185 = sub_19B87DD40();
    if ((*(v185 + 160) & 0x80000000) != 0 && (*(v185 + 164) & 0x80000000) != 0 && (*(v185 + 168) & 0x80000000) != 0 && !*(v185 + 152))
    {
      goto LABEL_462;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v186 = *(v8 + 524);
    v187 = *(v8 + 488);
    LODWORD(v335[0]) = 67240448;
    HIDWORD(v335[0]) = v186;
    LOWORD(v335[1]) = 1026;
    *(&v335[1] + 2) = v187;
    v160 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,processLocationPoint,index exceeded buffer range,last matched index,%{public}d,buffer size,%{public}d", v335, 14);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v160);
    goto LABEL_460;
  }

  if (*a5 - 1 >= 2)
  {
    if (!*a5)
    {
      v188 = *(v8 + 540);
      if ((v188 & 0x80000000) != 0 || objc_msgSend_count(v10, v13, v14, v15) <= v188)
      {
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v198 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
        {
          v199 = *(v8 + 540);
          *buf = 67240192;
          *&buf[4] = v199;
          _os_log_impl(&dword_19B873000, v198, OS_LOG_TYPE_ERROR, "CLRR,processLocationPoint,invalid raceStartLineProximityIndex,%{public}d", buf, 8u);
        }

        v200 = sub_19B87DD40();
        if ((*(v200 + 160) & 0x80000000) != 0 && (*(v200 + 164) & 0x80000000) != 0 && (*(v200 + 168) & 0x80000000) != 0 && !*(v200 + 152))
        {
          goto LABEL_462;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v201 = *(v8 + 540);
        LODWORD(v335[0]) = 67240192;
        HIDWORD(v335[0]) = v201;
        v160 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,processLocationPoint,invalid raceStartLineProximityIndex,%{public}d", v335, 8);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v160);
        goto LABEL_460;
      }

      if (*(v8 + 524) > *(v8 + 540))
      {
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v189 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
        {
          v190 = *(v8 + 524);
          v191 = *(v8 + 540);
          *buf = 67240448;
          *&buf[4] = v190;
          *&buf[8] = 1026;
          *&buf[10] = v191;
          _os_log_impl(&dword_19B873000, v189, OS_LOG_TYPE_DEFAULT, "CLRR,processLocationPoint,user joined the race at a wrong location,lastMatchedPointIndex,%{public}d,raceStartLineProximityIndex,%{public}d", buf, 0xEu);
        }

        v192 = sub_19B87DD40();
        if (*(v192 + 160) > 1 || *(v192 + 164) > 1 || *(v192 + 168) > 1 || *(v192 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          v193 = *(v8 + 524);
          v194 = *(v8 + 540);
          LODWORD(v335[0]) = 67240448;
          HIDWORD(v335[0]) = v193;
          LOWORD(v335[1]) = 1026;
          *(&v335[1] + 2) = v194;
          v195 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,processLocationPoint,user joined the race at a wrong location,lastMatchedPointIndex,%{public}d,raceStartLineProximityIndex,%{public}d", v335, 14);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v195);
          if (v195 != buf)
          {
            free(v195);
          }
        }

        v30 = 0;
        *v323 = v315;
        goto LABEL_463;
      }
    }

    goto LABEL_364;
  }

  v168 = (v316 * 0.75);
  if (v168 < 0 || objc_msgSend_count(v10, v13, v14, v15) <= v168)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v196 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = (v316 * 0.75);
      _os_log_impl(&dword_19B873000, v196, OS_LOG_TYPE_ERROR, "CLRR,processLocationPoint,invalid prematureRaceEndIndex,%{public}d", buf, 8u);
    }

    v197 = sub_19B87DD40();
    if ((*(v197 + 160) & 0x80000000) != 0 && (*(v197 + 164) & 0x80000000) != 0 && (*(v197 + 168) & 0x80000000) != 0 && !*(v197 + 152))
    {
      goto LABEL_462;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    LODWORD(v335[0]) = 67240192;
    HIDWORD(v335[0]) = (v316 * 0.75);
    v160 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,processLocationPoint,invalid prematureRaceEndIndex,%{public}d", v335, 8);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v160);
    goto LABEL_460;
  }

  v172 = objc_msgSend_count(v10, v169, v170, v171);
  v176 = *v323;
  if (v315 > vcvtd_n_f64_u64(v172, 2uLL) || v176 < v168)
  {
    if (objc_msgSend_count(v10, v173, v174, v175) - 1 == v176)
    {
      *(v8 + 477) = 0;
    }

    else if (*v323 == v315 && *(v8 + 477) == 1)
    {
      v331 = 1;
    }

LABEL_364:
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v242 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      v243 = *a5;
      v244 = *v323;
      *buf = 67240448;
      *&buf[4] = v243;
      *&buf[8] = 1026;
      *&buf[10] = v244;
      _os_log_impl(&dword_19B873000, v242, OS_LOG_TYPE_DEFAULT, "CLRR,processLocationPoint,pointType,%{public}d,last matched index,%{public}d", buf, 0xEu);
    }

    v245 = sub_19B87DD40();
    if (*(v245 + 160) > 1 || *(v245 + 164) > 1 || *(v245 + 168) > 1 || *(v245 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v249 = *a5;
      v250 = *v323;
      LODWORD(v335[0]) = 67240448;
      HIDWORD(v335[0]) = v249;
      LOWORD(v335[1]) = 1026;
      *(&v335[1] + 2) = v250;
      v251 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,processLocationPoint,pointType,%{public}d,last matched index,%{public}d", v335, 14);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v251);
      if (v251 != buf)
      {
        free(v251);
      }
    }

    v252 = *v323;
    if (objc_msgSend_count(v10, v246, v247, v248) - 1 == v252 && *(v8 + 479) == 1)
    {
      *(v8 + 475) = 1;
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v256 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v256, OS_LOG_TYPE_DEFAULT, "CLRR,processLocationPoint,reached end of reference route", buf, 2u);
      }

      v257 = sub_19B87DD40();
      if (*(v257 + 160) > 1 || *(v257 + 164) > 1 || *(v257 + 168) > 1 || *(v257 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        LOWORD(v335[0]) = 0;
        v258 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,processLocationPoint,reached end of reference route", v335, 2);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v258);
        if (v258 != buf)
        {
          free(v258);
        }
      }
    }

    if ((*(v8 + 475) & 1) == 0 && *(v8 + 483) == 1 && *(v8 + 376) >= *(v8 + 544) - *(v8 + 576))
    {
      v259 = objc_msgSend_count(v10, v253, v254, v255);
      v260 = *v317;
      v261 = *(v317 + 8);
      v262 = v259 - 1;
      v265 = objc_msgSend_objectAtIndexedSubscript_(v10, v263, v262, v264);
      objc_msgSend_latitude_deg(v265, v266, v267, v268);
      v270 = v269;
      v273 = objc_msgSend_objectAtIndexedSubscript_(v10, v271, v262, v272);
      objc_msgSend_longitude_deg(v273, v274, v275, v276);
      sub_19BA0C01C(v8, v260, v261, v270, v277, 0.0);
      if (*(v8 + 568) < 0.0 && v281 <= *(v8 + 576))
      {
        *(v8 + 568) = v281 * *(v317 + 72) + 2.0;
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v282 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
        {
          v283 = *(v8 + 568);
          *buf = 134349056;
          *&buf[4] = v283;
          _os_log_impl(&dword_19B873000, v282, OS_LOG_TYPE_DEFAULT, "CLRR,processLocationPoint,end the race in %{public}.2lf seconds if it did not happen naturally", buf, 0xCu);
        }

        v284 = sub_19B87DD40();
        if (*(v284 + 160) > 1 || *(v284 + 164) > 1 || *(v284 + 168) > 1 || *(v284 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          v285 = *(v8 + 568);
          LODWORD(v335[0]) = 134349056;
          *(v335 + 4) = v285;
          v286 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,processLocationPoint,end the race in %{public}.2lf seconds if it did not happen naturally", v335, 12);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v286);
          if (v286 != buf)
          {
            free(v286);
          }
        }

        *(v8 + 560) = *(v317 + 32);
      }

      if (*(v8 + 376) >= *(v8 + 544) + -2.0)
      {
        *v323 = objc_msgSend_count(v10, v278, v279, v280) - 1;
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v307 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v307, OS_LOG_TYPE_DEFAULT, "CLRR,processLocationPoint,too close to finish line,jump to the end of the reference route", buf, 2u);
        }

        v308 = sub_19B87DD40();
        if (*(v308 + 160) > 1 || *(v308 + 164) > 1 || *(v308 + 168) > 1 || *(v308 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          LOWORD(v335[0]) = 0;
          v309 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,processLocationPoint,too close to finish line,jump to the end of the reference route", v335, 2);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v309);
          if (v309 != buf)
          {
            free(v309);
          }
        }
      }

      else if (*(v8 + 560) > 0.0)
      {
        objc_msgSend_timestamp_s(v318, v278, v279, v280);
        if (v290 - *(v8 + 560) > *(v8 + 568))
        {
          *v323 = objc_msgSend_count(v10, v287, v288, v289) - 1;
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          v291 = qword_1EAFE4790;
          v8 = v324;
          if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
          {
            objc_msgSend_timestamp_s(v318, v292, v293, v294);
            v8 = v324;
            v295 = *(v324 + 560);
            v296 = *(v324 + 568);
            *buf = 134349568;
            *&buf[4] = v297;
            *&buf[12] = 2050;
            *&buf[14] = v295;
            *&buf[22] = 2050;
            v342 = v296;
            _os_log_impl(&dword_19B873000, v291, OS_LOG_TYPE_DEFAULT, "CLRR,processLocationPoint,timeout,jump to the end of the reference route,current time,%{public}.2lf,registeredTimeAtThreshold,%{public}.2lf,endOfRaceTimeThreshold,%{public}.2lf", buf, 0x20u);
          }

          v298 = sub_19B87DD40();
          v10 = v321;
          if (*(v298 + 160) > 1 || *(v298 + 164) > 1 || *(v298 + 168) > 1 || *(v298 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4788 != -1)
            {
              dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
            }

            v302 = qword_1EAFE4790;
            objc_msgSend_timestamp_s(v318, v299, v300, v301);
            v303 = *(v324 + 560);
            v304 = *(v324 + 568);
            LODWORD(v335[0]) = 134349568;
            *(v335 + 4) = v305;
            WORD2(v335[1]) = 2050;
            *(&v335[1] + 6) = v303;
            HIWORD(v335[2]) = 2050;
            v336 = v304;
            v306 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v302, 0, "CLRR,processLocationPoint,timeout,jump to the end of the reference route,current time,%{public}.2lf,registeredTimeAtThreshold,%{public}.2lf,endOfRaceTimeThreshold,%{public}.2lf", v335, 32);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v306);
            if (v306 != buf)
            {
              free(v306);
            }

            v8 = v324;
            v10 = v321;
          }
        }
      }
    }

    if (sub_19B91DBE4(v8, v318, v10, v323, &v331, a5, v317))
    {
      sub_19BA0C01C(v8, *v317, *(v317 + 8), *(v317 + 88), *(v317 + 96), 0.0);
      v30 = 1;
      if (v310 <= *(v8 + 576))
      {
        goto LABEL_463;
      }

      *(v8 + 484) = 1;
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v311 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v311, OS_LOG_TYPE_DEFAULT, "CLRR,processLocationPoint,failed to process the most recent point,the matched point is too far away", buf, 2u);
      }

      v312 = sub_19B87DD40();
      if (*(v312 + 160) <= 1 && *(v312 + 164) <= 1 && *(v312 + 168) <= 1 && !*(v312 + 152))
      {
LABEL_462:
        v30 = 0;
        goto LABEL_463;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      LOWORD(v335[0]) = 0;
      v160 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,processLocationPoint,failed to process the most recent point,the matched point is too far away", v335, 2);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v160);
    }

    else
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v313 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v313, OS_LOG_TYPE_DEBUG, "CLRR,processLocationPoint,failed to set the most recent point", buf, 2u);
      }

      v314 = sub_19B87DD40();
      if (*(v314 + 160) <= 1 && *(v314 + 164) <= 1 && *(v314 + 168) <= 1 && !*(v314 + 152))
      {
        goto LABEL_462;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      LOWORD(v335[0]) = 0;
      v160 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 2, "CLRR,processLocationPoint,failed to set the most recent point", v335, 2);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v160);
    }

LABEL_460:
    if (v160 != buf)
    {
      free(v160);
    }

    goto LABEL_462;
  }

  if (qword_1EAFE4788 != -1)
  {
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
  }

  v202 = qword_1EAFE4790;
  if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
  {
    v206 = objc_msgSend_count(v10, v203, v204, v205);
    v207 = *v323;
    *buf = 134349824;
    *&buf[4] = v206;
    *&buf[12] = 1026;
    *&buf[14] = (v316 * 0.75);
    *&buf[18] = 1026;
    *&buf[20] = v207;
    LOWORD(v342) = 1026;
    *(&v342 + 2) = v315;
    _os_log_impl(&dword_19B873000, v202, OS_LOG_TYPE_DEFAULT, "CLRR,processLocationPoint,race start point already detected,most recent matched point jumped from head to tail of the reference route,skip this data point to avoid premature race ending,reference route count,%{public}lu,premature race ending index,%{public}d,last matched index,%{public}d,matched index before update,%{public}d", buf, 0x1Eu);
  }

  v208 = sub_19B87DD40();
  if (*(v208 + 160) > 1 || *(v208 + 164) > 1 || *(v208 + 168) > 1 || *(v208 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v215 = qword_1EAFE4790;
    v216 = objc_msgSend_count(v10, v212, v213, v214);
    v217 = *v323;
    LODWORD(v335[0]) = 134349824;
    *(v335 + 4) = v216;
    WORD2(v335[1]) = 1026;
    *(&v335[1] + 6) = (v316 * 0.75);
    WORD1(v335[2]) = 1026;
    HIDWORD(v335[2]) = v217;
    LOWORD(v336) = 1026;
    *(&v336 + 2) = v315;
    v218 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v215, 0, "CLRR,processLocationPoint,race start point already detected,most recent matched point jumped from head to tail of the reference route,skip this data point to avoid premature race ending,reference route count,%{public}lu,premature race ending index,%{public}d,last matched index,%{public}d,matched index before update,%{public}d", v335, 30);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::processLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v218);
    if (v218 != buf)
    {
      free(v218);
    }
  }

  *v323 = v315;
  objc_msgSend_latitude_deg(v318, v209, v210, v211);
  v220 = v219;
  objc_msgSend_longitude_deg(v318, v221, v222, v223);
  v225 = v224;
  v228 = objc_msgSend_objectAtIndexedSubscript_(v10, v226, *v323, v227);
  objc_msgSend_latitude_deg(v228, v229, v230, v231);
  v233 = v232;
  v236 = objc_msgSend_objectAtIndexedSubscript_(v10, v234, *v323, v235);
  objc_msgSend_longitude_deg(v236, v237, v238, v239);
  sub_19BA0C01C(v8, v220, v225, v233, v240, 0.0);
  if (v241 <= *(v8 + 576))
  {
    goto LABEL_462;
  }

  v30 = 0;
  *(v8 + 484) = 1;
LABEL_463:
  if (v325)
  {
    v326 = v325;
    operator delete(v325);
  }

  if (v328)
  {
    v329 = v328;
    operator delete(v328);
  }

  return v30;
}

void sub_19B91DAEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B91DBE4(uint64_t a1, const char *a2, void *a3, unsigned int *a4, _BYTE *a5, int *a6, uint64_t a7)
{
  v67 = *MEMORY[0x1E69E9840];
  v9 = *a4;
  if ((v9 & 0x80000000) != 0 || objc_msgSend_count(a3, a2, a3, a4) <= v9)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v19 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_msgSend_count(a3, v20, v21, v22);
      v24 = *a4;
      *buf = 134349312;
      v64 = v23;
      v65 = 1026;
      v66 = v24;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "CLRR,setLocationPoint,index out of bounds,input array size,%{public}lu,index,%{public}d", buf, 0x12u);
    }

    v25 = sub_19B87DD40();
    if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_55;
    }
  }

  else
  {
    *(a1 + 477) = 0;
    if (!*a6)
    {
      v15 = *a4;
      if (objc_msgSend_count(a3, v12, v13, v14) - 1 == v15)
      {
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v16 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEFAULT, "CLRR,setLocationPoint,reached end of route", buf, 2u);
        }

        v17 = sub_19B87DD40();
        if (*(v17 + 160) <= 1 && *(v17 + 164) <= 1 && *(v17 + 168) <= 1 && !*(v17 + 152))
        {
          return 0;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        LOWORD(v62[0]) = 0;
        v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,setLocationPoint,reached end of route", v62, 2);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::setLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const BOOL &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v18);
        if (v18 == buf)
        {
          return 0;
        }

LABEL_26:
        free(v18);
        return 0;
      }
    }

    v33 = *a4;
    if (!*a4)
    {
      v34 = objc_msgSend_count(a3, v12, v13, v14);
      v33 = *a4;
      if (v34 >= 2)
      {
        objc_msgSend_objectAtIndex_(a3, v12, v33, v14);
        objc_msgSend_objectAtIndex_(a3, v35, *a4 + 1, v36);
        goto LABEL_37;
      }
    }

    v40 = objc_msgSend_count(a3, v12, v13, v14);
    v44 = *a4;
    if (v40 - 1 == v33)
    {
      if (v44 >= 1)
      {
        objc_msgSend_objectAtIndex_(a3, v41, (v44 - 1), v43);
        objc_msgSend_objectAtIndex_(a3, v45, *a4, v46);
        goto LABEL_37;
      }
    }

    else if (v44 >= 1 && objc_msgSend_count(a3, v41, v42, v43) > (v44 + 1))
    {
      objc_msgSend_objectAtIndex_(a3, v47, *a4 - 1, v48);
      objc_msgSend_objectAtIndex_(a3, v49, *a4, v50);
      objc_msgSend_objectAtIndex_(a3, v51, *a4 + 1, v52);
LABEL_37:
      v53 = *a4;
      if (v53)
      {
        if (objc_msgSend_count(a3, v37, v38, v39) - 1 == v53)
        {
          memset(v62, 0, 24);
          sub_19B927D54(&__p, 3);
        }

        memset(v62, 0, 24);
        sub_19B927D54(&__p, 4);
      }

      memset(v62, 0, 24);
      sub_19B927D54(&__p, 3);
    }

    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v54 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      v58 = objc_msgSend_count(a3, v55, v56, v57);
      v59 = *a4;
      *buf = 134349312;
      v64 = v58;
      v65 = 1026;
      v66 = v59;
      _os_log_impl(&dword_19B873000, v54, OS_LOG_TYPE_ERROR, "CLRR,setLocationPoint,index out of bounds,input array size,%{public}lu,index,%{public}d", buf, 0x12u);
    }

    v60 = sub_19B87DD40();
    if ((*(v60 + 160) & 0x80000000) == 0 || (*(v60 + 164) & 0x80000000) == 0 || (*(v60 + 168) & 0x80000000) == 0 || *(v60 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 == -1)
      {
LABEL_25:
        v29 = qword_1EAFE4790;
        v30 = objc_msgSend_count(a3, v26, v27, v28);
        v31 = *a4;
        LODWORD(v62[0]) = 134349312;
        *(v62 + 4) = v30;
        WORD2(v62[1]) = 1026;
        *(&v62[1] + 6) = v31;
        v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v29, 16, "CLRR,setLocationPoint,index out of bounds,input array size,%{public}lu,index,%{public}d", v62, 18);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::setLocationPoint(CLRoutePoint *, const NSArray<CLRoutePoint *> *, const int &, const BOOL &, const RacingRoutePointType &, RacingRouteScoreboard &)", "CoreLocation: %s\n", v18);
        if (v18 == buf)
        {
          return 0;
        }

        goto LABEL_26;
      }

LABEL_55:
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      goto LABEL_25;
    }
  }

  return 0;
}

void sub_19B9205FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9206D4(double *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (vabdd_f64(a2, a4) <= 0.0000001 && vabdd_f64(a3, a5) <= 0.0000001)
  {
    return 0;
  }

  if (vabdd_f64(a2, a6) <= 0.0000001)
  {
    v7 = 0.0;
    if (vabdd_f64(a3, a7) <= 0.0000001)
    {
      goto LABEL_8;
    }
  }

  v8 = 0;
  v9 = a4 - a2;
  v10 = a5 - a3;
  v11 = a6 - a2;
  v12 = a7 - a3;
  v13 = sqrt(v10 * v10 + v9 * v9);
  v14 = sqrt(v12 * v12 + v11 * v11);
  if (fabs(v13 * v14) > 0.0000001 && fabs(v13) > 0.0000001)
  {
    v7 = v14 * ((v10 * v12 + v9 * v11) / (v13 * v14)) / v13;
LABEL_8:
    *a1 = v7;
    return 1;
  }

  return v8;
}

char *sub_19B920784(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 484) == 1)
  {
    ++*(a1 + 512);
  }

  else
  {
    ++*(a1 + 516);
  }

  if ((*(a1 + 476) & 1) == 0 && *(a1 + 512) >= 5u)
  {
    *(a1 + 476) = 1;
  }

  if ((*(a1 + 485) & 1) == 0 && *(a1 + 516) >= 0xAu)
  {
    *(a1 + 485) = 1;
  }

  return sub_19B9207EC(a1, a2, a3, a4);
}

char *sub_19B9207EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 512) > *(a1 + 496) << ((*(a1 + 40) - 3) < 2))
  {
    *(a1 + 478) = 1;
  }

  v5 = *(a1 + 524);
  result = objc_msgSend_count(*(a1 + 48), a2, a3, a4);
  v10 = *(a1 + 488);
  if (v10 >= result)
  {
    v10 = result;
  }

  if (v10 * 0.75 <= v5 || (v11 = *(a1 + 512), result = objc_msgSend_count(*(a1 + 48), v7, v8, v9), &result[-*(a1 + 524)] <= v11))
  {
    *(a1 + 492) = 0;
    if ((*(a1 + 479) & 1) == 0)
    {
      *(a1 + 492) = *(a1 + 524);
    }
  }

  return result;
}

char *sub_19B9208A0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  ++*(a1 + 500);
  v5 = *(a1 + 524);
  *(a1 + 528) = v5 + (*(a1 + 532) & ~(*(a1 + 532) >> 31));
  v6 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 48), a2, v5, a4);
  objc_msgSend_timestamp_s(v6, v7, v8, v9);
  *(a1 + 552) = v13;
  *(a1 + 476) = 0;
  *(a1 + 485) = 0;
  *(a1 + 512) = 0;

  return sub_19B9207EC(a1, v10, v11, v12);
}

uint64_t sub_19B920914(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 492) >= 1)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v2 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 492);
      *buf = 67240192;
      v10 = v3;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "CLRR,getNumberOfRoutePointsToAdd,required number of points,%{public}d", buf, 8u);
    }

    v4 = sub_19B87DD40();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v5 = *(a1 + 492);
      v8[0] = 67240192;
      v8[1] = v5;
      v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,getNumberOfRoutePointsToAdd,required number of points,%{public}d", v8, 8);
      sub_19B885924("Generic", 1, 0, 2, "int CLRacingRoute::getNumberOfRoutePointsToAdd() const", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  return *(a1 + 492);
}

uint64_t sub_19B920AF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v357 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v15 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "CLRR,updateRoutePointsBuffer,input data array is null", buf, 2u);
    }

    v16 = sub_19B87DD40();
    if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      LOWORD(v344) = 0;
      v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,updateRoutePointsBuffer,input data array is null", &v344, 2);
      sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteBufferUpdateState CLRacingRoute::updateRoutePointsBuffer(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    return 4;
  }

  v6 = objc_msgSend_count(a2, a2, a3, a4);
  if (*(a1 + 473) == 1)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v7 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 492);
      *buf = 67240448;
      *&buf[4] = v8;
      *&buf[8] = 1026;
      *&buf[10] = v6;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "CLRR,updateRoutePointsBuffer,recovery mode,update started,number of requested points,%{public}d,number of given points,%{public}d", buf, 0xEu);
    }

    v9 = sub_19B87DD40();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v13 = *(a1 + 492);
      v344 = 67240448;
      *v345 = v13;
      *&v345[4] = 1026;
      *&v345[6] = v6;
      v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,updateRoutePointsBuffer,recovery mode,update started,number of requested points,%{public}d,number of given points,%{public}d", &v344, 14);
      sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteBufferUpdateState CLRacingRoute::updateRoutePointsBuffer(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v14);
LABEL_37:
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  else
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v19 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 492);
      *buf = 67240448;
      *&buf[4] = v20;
      *&buf[8] = 1026;
      *&buf[10] = v6;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEFAULT, "CLRR,updateRoutePointsBuffer,update started,number of requested points,%{public}d,number of given points,%{public}d", buf, 0xEu);
    }

    v21 = sub_19B87DD40();
    if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v22 = *(a1 + 492);
      v344 = 67240448;
      *v345 = v22;
      *&v345[4] = 1026;
      *&v345[6] = v6;
      v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,updateRoutePointsBuffer,update started,number of requested points,%{public}d,number of given points,%{public}d", &v344, 14);
      sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteBufferUpdateState CLRacingRoute::updateRoutePointsBuffer(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v14);
      goto LABEL_37;
    }
  }

  if (!v6)
  {
    if (!*(a1 + 504))
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v75 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v75, OS_LOG_TYPE_ERROR, "CLRR,updateRoutePointsBuffer,input data array is empty", buf, 2u);
      }

      v76 = sub_19B87DD40();
      if ((*(v76 + 160) & 0x80000000) == 0 || (*(v76 + 164) & 0x80000000) == 0 || (*(v76 + 168) & 0x80000000) == 0 || *(v76 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        LOWORD(v344) = 0;
        v77 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,updateRoutePointsBuffer,input data array is empty", &v344, 2);
        sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteBufferUpdateState CLRacingRoute::updateRoutePointsBuffer(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v77);
        if (v77 != buf)
        {
          free(v77);
        }
      }

      return 3;
    }

    *(a1 + 479) = 1;
    *(a1 + 492) = 0;
    *(a1 + 473) = 0;
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v31 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_DEFAULT, "CLRR,updateRoutePointsBuffer,no more data available,rolling buffer includes the end of the reference route", buf, 2u);
    }

    v32 = sub_19B87DD40();
    if (*(v32 + 160) <= 1 && *(v32 + 164) <= 1 && *(v32 + 168) <= 1 && !*(v32 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    LOWORD(v344) = 0;
    v33 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,updateRoutePointsBuffer,no more data available,rolling buffer includes the end of the reference route", &v344, 2);
    sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteBufferUpdateState CLRacingRoute::updateRoutePointsBuffer(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v33);
LABEL_66:
    if (v33 != buf)
    {
      free(v33);
    }

    return 0;
  }

  v23 = *(a1 + 492);
  if (v23 < v6)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v24 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 488);
      v26 = *(a1 + 492);
      *buf = 67240704;
      *&buf[4] = v25;
      *&buf[8] = 1026;
      *&buf[10] = v26;
      *&buf[14] = 1026;
      *&buf[16] = v6;
      _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_ERROR, "CLRR,updateRoutePointsBuffer,buffer capacity exceeded,bufferSize,%{public}d,numberOfPointsToAdd,%{public}d,routePointsCount,%{public}d", buf, 0x14u);
    }

    v27 = sub_19B87DD40();
    if ((*(v27 + 160) & 0x80000000) != 0 && (*(v27 + 164) & 0x80000000) != 0 && (*(v27 + 168) & 0x80000000) != 0 && !*(v27 + 152))
    {
      return 1;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v28 = *(a1 + 488);
    v29 = *(a1 + 492);
    v344 = 67240704;
    *v345 = v28;
    *&v345[4] = 1026;
    *&v345[6] = v29;
    *v346 = 1026;
    *&v346[2] = v6;
    v30 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,updateRoutePointsBuffer,buffer capacity exceeded,bufferSize,%{public}d,numberOfPointsToAdd,%{public}d,routePointsCount,%{public}d", &v344, 20);
    sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteBufferUpdateState CLRacingRoute::updateRoutePointsBuffer(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v30);
LABEL_51:
    if (v30 == buf)
    {
      return 1;
    }

LABEL_52:
    free(v30);
    return 1;
  }

  if (v23 > v6)
  {
    *(a1 + 479) = 1;
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v34 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_DEFAULT, "CLRR,updateRoutePointsBuffer,rolling buffer includes the end of the reference route", buf, 2u);
    }

    v35 = sub_19B87DD40();
    if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      LOWORD(v344) = 0;
      v36 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,updateRoutePointsBuffer,rolling buffer includes the end of the reference route", &v344, 2);
      sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteBufferUpdateState CLRacingRoute::updateRoutePointsBuffer(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }
    }
  }

  if ((*(a1 + 472) & 1) == 0)
  {
    v53 = objc_msgSend_mutableCopy(a2, v10, v11, v12);
    *(a1 + 48) = v53;
    if (objc_msgSend_count(v53, v54, v55, v56) > *(a1 + 492))
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v60 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
      {
        v64 = *(a1 + 488);
        v65 = *(a1 + 492);
        v66 = objc_msgSend_count(*(a1 + 48), v61, v62, v63);
        *buf = 67240704;
        *&buf[4] = v64;
        *&buf[8] = 1026;
        *&buf[10] = v65;
        *&buf[14] = 1026;
        *&buf[16] = v66;
        _os_log_impl(&dword_19B873000, v60, OS_LOG_TYPE_ERROR, "CLRR,updateRoutePointsBuffer,buffer capacity exceeded,bufferSize,%{public}d,numberOfPointsToAdd,%{public}d,bufferedRoutePointsCount,%{public}u", buf, 0x14u);
      }

      v67 = sub_19B87DD40();
      if ((*(v67 + 160) & 0x80000000) != 0 && (*(v67 + 164) & 0x80000000) != 0 && (*(v67 + 168) & 0x80000000) != 0 && !*(v67 + 152))
      {
        return 1;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v71 = qword_1EAFE4790;
      v72 = *(a1 + 488);
      v73 = *(a1 + 492);
      v74 = objc_msgSend_count(*(a1 + 48), v68, v69, v70);
      v344 = 67240704;
      *v345 = v72;
      *&v345[4] = 1026;
      *&v345[6] = v73;
      *v346 = 1026;
      *&v346[2] = v74;
      v30 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v71, 16, "CLRR,updateRoutePointsBuffer,buffer capacity exceeded,bufferSize,%{public}d,numberOfPointsToAdd,%{public}d,bufferedRoutePointsCount,%{public}u", &v344, 20);
      sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteBufferUpdateState CLRacingRoute::updateRoutePointsBuffer(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v30);
      if (v30 == buf)
      {
        return 1;
      }

      goto LABEL_52;
    }

    if (objc_msgSend_count(*(a1 + 48), v57, v58, v59) > 9)
    {
      if ((*(a1 + 473) & 1) == 0)
      {
        *(a1 + 504) = objc_msgSend_count(*(a1 + 48), v84, v85, v86);
        goto LABEL_149;
      }
    }

    else if ((*(a1 + 473) & 1) == 0)
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v87 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
      {
        v91 = objc_msgSend_count(*(a1 + 48), v88, v89, v90);
        *buf = 67240448;
        *&buf[4] = 10;
        *&buf[8] = 1026;
        *&buf[10] = v91;
        _os_log_impl(&dword_19B873000, v87, OS_LOG_TYPE_ERROR, "CLRR,updateRoutePointsBuffer,location series too short,minimumPointsToProcess,%{public}u,bufferedRoutePointsCount,%{public}u", buf, 0xEu);
      }

      v92 = sub_19B87DD40();
      if ((*(v92 + 160) & 0x80000000) == 0 || (*(v92 + 164) & 0x80000000) == 0 || (*(v92 + 168) & 0x80000000) == 0 || *(v92 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v96 = qword_1EAFE4790;
        v97 = objc_msgSend_count(*(a1 + 48), v93, v94, v95);
        v344 = 67240448;
        *v345 = 10;
        *&v345[4] = 1026;
        *&v345[6] = v97;
        v98 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v96, 16, "CLRR,updateRoutePointsBuffer,location series too short,minimumPointsToProcess,%{public}u,bufferedRoutePointsCount,%{public}u", &v344, 14);
        sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteBufferUpdateState CLRacingRoute::updateRoutePointsBuffer(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v98);
        if (v98 != buf)
        {
          free(v98);
        }
      }

      return 5;
    }

    v99 = *(a1 + 528);
    *(a1 + 504) = v99 + objc_msgSend_count(*(a1 + 48), v84, v85, v86);
    *(a1 + 524) = 0;
    goto LABEL_149;
  }

  v37 = *(a1 + 524);
  if ((v37 & 0x80000000) == 0)
  {
    objc_msgSend_removeObjectsInRange_(*(a1 + 48), v10, 0, v37);
    v38 = *(a1 + 532);
    if (v38 == -1)
    {
      v38 = 0;
    }

    *(a1 + 532) = v38 + *(a1 + 524);
    *(a1 + 524) = 0;
  }

  if (objc_msgSend_count(*(a1 + 48), v10, v11, v37) + v6 > *(a1 + 488))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v40 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      v44 = *(a1 + 488);
      v45 = objc_msgSend_count(*(a1 + 48), v41, v42, v43);
      *buf = 67240704;
      *&buf[4] = v44;
      *&buf[8] = 1026;
      *&buf[10] = v45;
      *&buf[14] = 1026;
      *&buf[16] = v6;
      _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_ERROR, "CLRR,updateRoutePointsBuffer,buffer capacity exceeded,bufferSize,%{public}d,bufferedRoutePointsCount,%{public}u,routePointsCount,%{public}d", buf, 0x14u);
    }

    v46 = sub_19B87DD40();
    if ((*(v46 + 160) & 0x80000000) != 0 && (*(v46 + 164) & 0x80000000) != 0 && (*(v46 + 168) & 0x80000000) != 0 && !*(v46 + 152))
    {
      return 1;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v50 = qword_1EAFE4790;
    v51 = *(a1 + 488);
    v52 = objc_msgSend_count(*(a1 + 48), v47, v48, v49);
    v344 = 67240704;
    *v345 = v51;
    *&v345[4] = 1026;
    *&v345[6] = v52;
    *v346 = 1026;
    *&v346[2] = v6;
    v30 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v50, 16, "CLRR,updateRoutePointsBuffer,buffer capacity exceeded,bufferSize,%{public}d,bufferedRoutePointsCount,%{public}u,routePointsCount,%{public}d", &v344, 20);
    sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteBufferUpdateState CLRacingRoute::updateRoutePointsBuffer(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v30);
    goto LABEL_51;
  }

  v341 = 0u;
  v342 = 0u;
  v339 = 0u;
  v340 = 0u;
  v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v39, &v339, v343, 16);
  if (v81)
  {
    v82 = *v340;
    do
    {
      for (i = 0; i != v81; ++i)
      {
        if (*v340 != v82)
        {
          objc_enumerationMutation(a2);
        }

        objc_msgSend_addObject_(*(a1 + 48), v78, *(*(&v339 + 1) + 8 * i), v80);
        ++*(a1 + 504);
      }

      v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v78, &v339, v343, 16);
    }

    while (v81);
  }

LABEL_149:
  v100 = *(a1 + 48);
  if (!v100)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v156 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v156, OS_LOG_TYPE_ERROR, "CLRR,convertRouteDataToMatrix,input data array is null", buf, 2u);
    }

    v157 = sub_19B87DD40();
    if ((*(v157 + 160) & 0x80000000) != 0 && (*(v157 + 164) & 0x80000000) != 0 && (*(v157 + 168) & 0x80000000) != 0 && !*(v157 + 152))
    {
      goto LABEL_227;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    LOWORD(v344) = 0;
    v158 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,convertRouteDataToMatrix,input data array is null", &v344, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::convertRouteDataToMatrix(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v158);
    goto LABEL_225;
  }

  if (!objc_msgSend_count(*(a1 + 48), v78, v79, v80))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v159 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v159, OS_LOG_TYPE_ERROR, "CLRR,convertRouteDataToMatrix,input data array is empty", buf, 2u);
    }

    v160 = sub_19B87DD40();
    if ((*(v160 + 160) & 0x80000000) != 0 && (*(v160 + 164) & 0x80000000) != 0 && (*(v160 + 168) & 0x80000000) != 0 && !*(v160 + 152))
    {
      goto LABEL_227;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    LOWORD(v344) = 0;
    v158 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,convertRouteDataToMatrix,input data array is empty", &v344, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::convertRouteDataToMatrix(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v158);
    goto LABEL_225;
  }

  if (!objc_msgSend_objectAtIndex_(v100, v101, 0, v102))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v161 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = 0;
      _os_log_impl(&dword_19B873000, v161, OS_LOG_TYPE_ERROR, "CLRR,convertRouteDataToMatrix,input data point is null at index,%{public}d", buf, 8u);
    }

    v162 = sub_19B87DD40();
    if ((*(v162 + 160) & 0x80000000) != 0 && (*(v162 + 164) & 0x80000000) != 0 && (*(v162 + 168) & 0x80000000) != 0 && !*(v162 + 152))
    {
      goto LABEL_227;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v344 = 67240192;
    *v345 = 0;
    v158 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,convertRouteDataToMatrix,input data point is null at index,%{public}d", &v344, 8);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::convertRouteDataToMatrix(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v158);
    goto LABEL_225;
  }

  v105 = objc_msgSend_objectAtIndex_(v100, v103, 0, v104);
  objc_msgSend_latitude_deg(v105, v106, v107, v108);
  v110 = v109;
  v113 = objc_msgSend_objectAtIndex_(v100, v111, 0, v112);
  objc_msgSend_longitude_deg(v113, v114, v115, v116);
  v118 = v117;
  if (!sub_19B9180C4(v110, v117))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v163 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 134546177;
      *&buf[4] = v110;
      *&buf[12] = 2053;
      *&buf[14] = v118;
      *&buf[22] = 1026;
      *&buf[24] = 0;
      _os_log_impl(&dword_19B873000, v163, OS_LOG_TYPE_ERROR, "CLRR,convertRouteDataToMatrix,invalid coordinates,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,at index,%{public}d", buf, 0x1Cu);
    }

    v164 = sub_19B87DD40();
    if ((*(v164 + 160) & 0x80000000) != 0 && (*(v164 + 164) & 0x80000000) != 0 && (*(v164 + 168) & 0x80000000) != 0 && !*(v164 + 152))
    {
      goto LABEL_227;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v344 = 134546177;
    *v345 = v110;
    *&v345[8] = 2053;
    *v346 = v118;
    *&v346[8] = 1026;
    *&v346[10] = 0;
    v158 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,convertRouteDataToMatrix,invalid coordinates,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,at index,%{public}d", &v344, 28);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::convertRouteDataToMatrix(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v158);
    goto LABEL_225;
  }

  if (objc_msgSend_count(v100, v119, v120, v121) >= 2)
  {
    v124 = 1;
    v125 = v110;
    v126 = v118;
    while (1)
    {
      v127 = objc_msgSend_objectAtIndex_(v100, v122, v124, v123);
      v131 = v127;
      if (!v127)
      {
        break;
      }

      objc_msgSend_latitude_deg(v127, v128, v129, v130);
      v133 = v132;
      objc_msgSend_longitude_deg(v131, v134, v135, v136);
      v138 = v137;
      objc_msgSend_altitude_m(v131, v139, v140, v141);
      v143 = v142;
      if (!sub_19B9180C4(v133, v138) || (*&v143 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v143 <= -430.5 || v143 >= 8848.86)
      {
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v177 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
        {
          *buf = 134546433;
          *&buf[4] = v133;
          *&buf[12] = 2053;
          *&buf[14] = v138;
          *&buf[22] = 2049;
          *&buf[24] = v143;
          *&buf[32] = 1026;
          *&buf[34] = v124;
          _os_log_impl(&dword_19B873000, v177, OS_LOG_TYPE_ERROR, "CLRR,convertRouteDataToMatrix,invalid reference point,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,alt,%{private}.2lf,at index,%{public}d", buf, 0x26u);
        }

        v178 = sub_19B87DD40();
        if ((*(v178 + 160) & 0x80000000) != 0 && (*(v178 + 164) & 0x80000000) != 0 && (*(v178 + 168) & 0x80000000) != 0 && !*(v178 + 152))
        {
          goto LABEL_227;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v344 = 134546433;
        *v345 = v133;
        *&v345[8] = 2053;
        *v346 = v138;
        *&v346[8] = 2049;
        *&v346[10] = v143;
        *&v346[18] = 1026;
        *v347 = v124;
        v158 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,convertRouteDataToMatrix,invalid reference point,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,alt,%{private}.2lf,at index,%{public}d", &v344, 38);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::convertRouteDataToMatrix(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v158);
        goto LABEL_225;
      }

      if (v133 >= v125)
      {
        if (v133 > v110)
        {
          v110 = v133;
        }
      }

      else
      {
        v125 = v133;
      }

      if (v138 >= v126)
      {
        if (v138 > v118)
        {
          v118 = v138;
        }
      }

      else
      {
        v126 = v138;
      }

      objc_msgSend_odometer_m(v131, v144, v145, v146);
      if (v150 >= 350.0 && (*(a1 + 474) & 1) == 0 && (*(a1 + 540) & 0x80000000) != 0)
      {
        *(a1 + 540) = v124;
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v151 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
        {
          v152 = *(a1 + 540);
          *buf = 67240192;
          *&buf[4] = v152;
          _os_log_impl(&dword_19B873000, v151, OS_LOG_TYPE_DEFAULT, "CLRR,convertRouteDataToMatrix,raceStartLineProximityIndex,%{public}d", buf, 8u);
        }

        v153 = sub_19B87DD40();
        if (*(v153 + 160) > 1 || *(v153 + 164) > 1 || *(v153 + 168) > 1 || *(v153 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          v154 = *(a1 + 540);
          v344 = 67240192;
          *v345 = v154;
          v155 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,convertRouteDataToMatrix,raceStartLineProximityIndex,%{public}d", &v344, 8);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::convertRouteDataToMatrix(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v155);
          if (v155 != buf)
          {
            free(v155);
          }
        }
      }

      if (objc_msgSend_count(v100, v147, v148, v149) <= ++v124)
      {
        goto LABEL_242;
      }
    }

    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v179 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = v124;
      _os_log_impl(&dword_19B873000, v179, OS_LOG_TYPE_ERROR, "CLRR,convertRouteDataToMatrix,input data point is null at index,%{public}d", buf, 8u);
    }

    v180 = sub_19B87DD40();
    if ((*(v180 + 160) & 0x80000000) != 0 && (*(v180 + 164) & 0x80000000) != 0 && (*(v180 + 168) & 0x80000000) != 0 && !*(v180 + 152))
    {
      goto LABEL_227;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v344 = 67240192;
    *v345 = v124;
    v158 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,convertRouteDataToMatrix,input data point is null at index,%{public}d", &v344, 8);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::convertRouteDataToMatrix(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v158);
LABEL_225:
    if (v158 != buf)
    {
      free(v158);
    }

    goto LABEL_227;
  }

  v126 = v118;
  v125 = v110;
LABEL_242:
  v168 = v125 + -0.0004;
  *(a1 + 56) = v125 + -0.0004;
  v169 = v110 + 0.0004;
  *(a1 + 64) = v110 + 0.0004;
  v170 = fmod(v126 + -0.0004, 360.0);
  v171 = v170;
  if (v170 <= -180.0)
  {
    v171 = v170 + 360.0;
  }

  else if (v170 > 180.0)
  {
    v171 = v170 + -360.0;
  }

  *(a1 + 72) = v171;
  v172 = fmod(v118 + 0.0004, 360.0);
  v173 = v172;
  if (v172 <= -180.0)
  {
    v173 = v172 + 360.0;
  }

  else if (v172 > 180.0)
  {
    v173 = v172 + -360.0;
  }

  *(a1 + 80) = v173;
  if (!sub_19B9180C4(v168, v171) || !sub_19B9180C4(v169, v173))
  {
    goto LABEL_227;
  }

  *(a1 + 88) = 0x500000005;
  v174 = v171 + 360.0;
  if (v171 >= 0.0)
  {
    v174 = v171;
  }

  v175 = v173 + 360.0;
  if (v173 >= 0.0)
  {
    v175 = v173;
  }

  v176 = v175 - v174;
  if (v176 <= 180.0)
  {
    if (v176 < -180.0)
    {
      v176 = v176 + 360.0;
    }
  }

  else
  {
    v176 = v176 + -360.0;
  }

  v181 = fabs(v176);
  if (v169 - v168 < 0.0009)
  {
    *(a1 + 88) = 1;
  }

  if (v181 < 0.0009)
  {
    *(a1 + 92) = 1;
  }

  if (qword_1EAFE4788 != -1)
  {
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
  }

  v182 = qword_1EAFE4790;
  if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
  {
    v183 = *(a1 + 88);
    v184 = *(a1 + 92);
    v185 = *(a1 + 56);
    v186 = *(a1 + 64);
    v187 = *(a1 + 72);
    v188 = *(a1 + 80);
    *buf = 67241473;
    *&buf[4] = v183;
    *&buf[8] = 1026;
    *&buf[10] = v184;
    *&buf[14] = 2053;
    *&buf[16] = v185;
    *&buf[24] = 2053;
    *&buf[26] = v186;
    *&buf[34] = 2053;
    *&buf[36] = v187;
    *v353 = 2053;
    *&v353[2] = v188;
    _os_log_impl(&dword_19B873000, v182, OS_LOG_TYPE_DEFAULT, "CLRR,convertRouteDataToMatrix,boxRows,%{public}d,boxColumns,%{public}d,boxMinLat,%{sensitive}.7lf,boxMaxLat,%{sensitive}.7lf,boxMinLon,%{sensitive}.7lf,boxMaxLon,%{sensitive}.7lf", buf, 0x36u);
  }

  v189 = sub_19B87DD40();
  if (*(v189 + 160) > 1 || *(v189 + 164) > 1 || *(v189 + 168) > 1 || *(v189 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v190 = *(a1 + 88);
    v191 = *(a1 + 92);
    v192 = *(a1 + 56);
    v193 = *(a1 + 64);
    v194 = *(a1 + 72);
    v195 = *(a1 + 80);
    v344 = 67241473;
    *v345 = v190;
    *&v345[4] = 1026;
    *&v345[6] = v191;
    *v346 = 2053;
    *&v346[2] = v192;
    *&v346[10] = 2053;
    *&v346[12] = v193;
    *v347 = 2053;
    *&v347[2] = v194;
    *v348 = 2053;
    *&v348[2] = v195;
    v196 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,convertRouteDataToMatrix,boxRows,%{public}d,boxColumns,%{public}d,boxMinLat,%{sensitive}.7lf,boxMaxLat,%{sensitive}.7lf,boxMinLon,%{sensitive}.7lf,boxMaxLon,%{sensitive}.7lf", &v344, 54);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::convertRouteDataToMatrix(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v196);
    if (v196 != buf)
    {
      free(v196);
    }
  }

  sub_19B918144((a1 + 96));
  v197 = *(a1 + 92) * *(a1 + 88);
  v337 = (a1 + 96);
  sub_19B91819C((a1 + 96), *(a1 + 92) * *(a1 + 88));
  v201 = (a1 + 96);
  if (v197 >= 1)
  {
    v202 = *(a1 + 104);
    do
    {
      v203 = *(a1 + 112);
      if (v202 >= v203)
      {
        v204 = 0xAAAAAAAAAAAAAAABLL * ((v202 - *v201) >> 3);
        v205 = v204 + 1;
        if (v204 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_19B8B8A40();
        }

        v206 = 0xAAAAAAAAAAAAAAABLL * ((v203 - *v201) >> 3);
        if (2 * v206 > v205)
        {
          v205 = 2 * v206;
        }

        if (v206 >= 0x555555555555555)
        {
          v207 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v207 = v205;
        }

        *&buf[32] = v201;
        if (v207)
        {
          sub_19B927BFC(v207);
        }

        v208 = 24 * v204;
        *buf = 0;
        *&buf[8] = v208;
        *&buf[16] = 24 * v204;
        *&buf[24] = 0;
        *v208 = 0;
        *(v208 + 8) = 0;
        *(v208 + 16) = 0;
        v202 = (*&buf[16] + 24);
        v209 = *(a1 + 96);
        v210 = *(a1 + 104) - v209;
        v211 = *&buf[8] - v210;
        memcpy((*&buf[8] - v210), v209, v210);
        v212 = *(a1 + 96);
        *(a1 + 96) = v211;
        *(a1 + 104) = v202;
        v213 = *(a1 + 112);
        *(a1 + 112) = *&buf[24];
        *&buf[16] = v212;
        *&buf[24] = v213;
        *buf = v212;
        *&buf[8] = v212;
        sub_19B927C54(buf);
        v201 = (a1 + 96);
      }

      else
      {
        *v202 = 0;
        v202[1] = 0;
        v202[2] = 0;
        v202 += 3;
        *(a1 + 104) = v202;
      }

      *(a1 + 104) = v202;
      --v197;
    }

    while (v197);
  }

  if (!objc_msgSend_count(v100, v198, v199, v200))
  {
LABEL_367:
    ++*(a1 + 520);
    *(a1 + 492) = 0;
    *(a1 + 472) = 1;
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v321 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      v322 = *(a1 + 520);
      v323 = *(a1 + 524);
      v324 = *(a1 + 532);
      v325 = *(a1 + 504);
      v326 = *(a1 + 492);
      v327 = *(a1 + 472);
      *buf = 67241472;
      *&buf[4] = v322;
      *&buf[8] = 1026;
      *&buf[10] = v323;
      *&buf[14] = 1026;
      *&buf[16] = v324;
      *&buf[20] = 1026;
      *&buf[22] = v325;
      *&buf[26] = 1026;
      *&buf[28] = v326;
      *&buf[32] = 1026;
      *&buf[34] = v327;
      _os_log_impl(&dword_19B873000, v321, OS_LOG_TYPE_DEFAULT, "CLRR,updateRoutePointsBuffer,update completed,rollingBufferUpdateCounter,%{public}d,lastMatchedPointIndex,%{public}d,rollingBufferStartIndexOnReferenceRoute,%{public}d,referenceRouteDataPointCounter,%{public}d,numberOfRoutePointsToAdd,%{public}d,routePointsArrayInitialized,%{public}d", buf, 0x26u);
    }

    v328 = sub_19B87DD40();
    if (*(v328 + 160) <= 1 && *(v328 + 164) <= 1 && *(v328 + 168) <= 1 && !*(v328 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v329 = *(a1 + 520);
    v330 = *(a1 + 524);
    v331 = *(a1 + 532);
    v332 = *(a1 + 504);
    v333 = *(a1 + 492);
    v334 = *(a1 + 472);
    v344 = 67241472;
    *v345 = v329;
    *&v345[4] = 1026;
    *&v345[6] = v330;
    *v346 = 1026;
    *&v346[2] = v331;
    *&v346[6] = 1026;
    *&v346[8] = v332;
    *&v346[12] = 1026;
    *&v346[14] = v333;
    *&v346[18] = 1026;
    *v347 = v334;
    v33 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,updateRoutePointsBuffer,update completed,rollingBufferUpdateCounter,%{public}d,lastMatchedPointIndex,%{public}d,rollingBufferStartIndexOnReferenceRoute,%{public}d,referenceRouteDataPointCounter,%{public}d,numberOfRoutePointsToAdd,%{public}d,routePointsArrayInitialized,%{public}d", &v344, 38);
    sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteBufferUpdateState CLRacingRoute::updateRoutePointsBuffer(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v33);
    goto LABEL_66;
  }

  v216 = 0;
  v217 = 0;
  v218 = 0;
  v336 = -1;
  v219 = 0xFFFFFFFF00000000;
  v335 = 0xFFFFFFFFLL;
  while (1)
  {
    v338 = v217;
    v220 = objc_msgSend_objectAtIndex_(v100, v214, v218, v215);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v221 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      objc_msgSend_timestamp_s(v220, v222, v223, v224);
      v226 = v225;
      objc_msgSend_latitude_deg(v220, v227, v228, v229);
      v231 = v230;
      objc_msgSend_longitude_deg(v220, v232, v233, v234);
      v236 = v235;
      objc_msgSend_altitude_m(v220, v237, v238, v239);
      v241 = v240;
      objc_msgSend_odometer_m(v220, v242, v243, v244);
      v246 = v245;
      v250 = objc_msgSend_signalEnvironmentType(v220, v247, v248, v249);
      *buf = 134350593;
      *&buf[4] = v226;
      *&buf[12] = 2053;
      *&buf[14] = v231;
      *&buf[22] = 2053;
      *&buf[24] = v236;
      *&buf[32] = 2049;
      *&buf[34] = v241;
      *&buf[42] = 2050;
      *v353 = v246;
      *&v353[8] = 1026;
      v354 = v250;
      v355 = 1026;
      v356 = v218;
      _os_log_impl(&dword_19B873000, v221, OS_LOG_TYPE_DEFAULT, "CLRR,convertRouteDataToMatrix,time,%{public}.1lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,alt,%{private}.2lf,odom,%{public}.2lf,signalEnv,%{public}d,pointCount,%{public}d", buf, 0x40u);
    }

    v251 = sub_19B87DD40();
    if (*(v251 + 160) > 1 || *(v251 + 164) > 1 || *(v251 + 168) > 1 || *(v251 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v258 = qword_1EAFE4790;
      objc_msgSend_timestamp_s(v220, v255, v256, v257);
      v260 = v259;
      objc_msgSend_latitude_deg(v220, v261, v262, v263);
      v265 = v264;
      objc_msgSend_longitude_deg(v220, v266, v267, v268);
      v270 = v269;
      objc_msgSend_altitude_m(v220, v271, v272, v273);
      v275 = v274;
      objc_msgSend_odometer_m(v220, v276, v277, v278);
      v280 = v279;
      v284 = objc_msgSend_signalEnvironmentType(v220, v281, v282, v283);
      v344 = 134350593;
      *v345 = v260;
      *&v345[8] = 2053;
      *v346 = v265;
      *&v346[8] = 2053;
      *&v346[10] = v270;
      *&v346[18] = 2049;
      *v347 = v275;
      *&v347[8] = 2050;
      *v348 = v280;
      *&v348[8] = 1026;
      v349 = v284;
      v350 = 1026;
      v351 = v218;
      v285 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v258, 0, "CLRR,convertRouteDataToMatrix,time,%{public}.1lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,alt,%{private}.2lf,odom,%{public}.2lf,signalEnv,%{public}d,pointCount,%{public}d", &v344, 64);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::convertRouteDataToMatrix(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v285);
      if (v285 != buf)
      {
        free(v285);
      }
    }

    objc_msgSend_latitude_deg(v220, v252, v253, v254);
    v287 = v286;
    objc_msgSend_longitude_deg(v220, v288, v289, v290);
    v292 = sub_19B91825C(a1 + 56, v287, v291);
    if (v292 == -1)
    {
      break;
    }

    v296 = v292;
    if (!v218)
    {
      v335 = 0;
      goto LABEL_342;
    }

    if (v218 == objc_msgSend_count(v100, v293, v294, v295) - 1)
    {
      v320 = *v337 + 24 * v336;
      if (v296 == v336)
      {
        *buf = v335 - v216;
      }

      else
      {
        *buf = v335 + v219;
        sub_19B9183CC(v320, buf);
        v320 = *v337 + 24 * v296;
        *buf = v338;
      }

      sub_19B9183CC(v320, buf);
      goto LABEL_367;
    }

    if (v296 != v336)
    {
      v297 = *v337 + 24 * v336;
      *buf = v219 + v335;
      sub_19B9183CC(v297, buf);
      v335 = v218;
LABEL_342:
      v336 = v296;
    }

    v298 = objc_msgSend_count(v100, v293, v294, v295);
    ++v218;
    v217 = v338 + 0x100000001;
    v216 -= 0x100000000;
    v219 += 0x100000000;
    if (v298 <= v218)
    {
      goto LABEL_367;
    }
  }

  if (qword_1EAFE4788 != -1)
  {
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
  }

  v299 = qword_1EAFE4790;
  if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
  {
    objc_msgSend_latitude_deg(v220, v300, v301, v302);
    v304 = v303;
    objc_msgSend_longitude_deg(v220, v305, v306, v307);
    *buf = 134545921;
    *&buf[4] = v304;
    *&buf[12] = 2053;
    *&buf[14] = v308;
    _os_log_impl(&dword_19B873000, v299, OS_LOG_TYPE_ERROR, "CLRR,convertRouteDataToMatrix,invalid index for location,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf", buf, 0x16u);
  }

  v309 = sub_19B87DD40();
  if ((*(v309 + 160) & 0x80000000) == 0 || (*(v309 + 164) & 0x80000000) == 0 || (*(v309 + 168) & 0x80000000) == 0 || *(v309 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v313 = qword_1EAFE4790;
    objc_msgSend_latitude_deg(v220, v310, v311, v312);
    v315 = v314;
    objc_msgSend_longitude_deg(v220, v316, v317, v318);
    v344 = 134545921;
    *v345 = v315;
    *&v345[8] = 2053;
    *v346 = v319;
    v158 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v313, 16, "CLRR,convertRouteDataToMatrix,invalid index for location,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf", &v344, 22);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::convertRouteDataToMatrix(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v158);
    goto LABEL_225;
  }

LABEL_227:
  if (qword_1EAFE4788 != -1)
  {
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
  }

  v165 = qword_1EAFE4790;
  if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v165, OS_LOG_TYPE_ERROR, "CLRR,updateRoutePointsBuffer,unable to convert reference route to matrix", buf, 2u);
  }

  v166 = sub_19B87DD40();
  if ((*(v166 + 160) & 0x80000000) == 0 || (*(v166 + 164) & 0x80000000) == 0 || (*(v166 + 168) & 0x80000000) == 0 || *(v166 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    LOWORD(v344) = 0;
    v167 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,updateRoutePointsBuffer,unable to convert reference route to matrix", &v344, 2);
    sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteBufferUpdateState CLRacingRoute::updateRoutePointsBuffer(NSArray<CLRoutePoint *> *)", "CoreLocation: %s\n", v167);
    if (v167 != buf)
    {
      free(v167);
    }
  }

  return 2;
}

uint64_t sub_19B92335C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v90 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 524);
  if ((v5 & 0x80000000) != 0 || objc_msgSend_count(*(a1 + 48), a2, a3, a4) < v5)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v11 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 524);
      *buf = 67240192;
      LODWORD(v87) = v12;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "CLRR,getDistanceDuringOffRoutePeriod,invalid array index, %{public}d", buf, 8u);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) != 0 && (*(v13 + 164) & 0x80000000) != 0 && (*(v13 + 168) & 0x80000000) != 0 && !*(v13 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v14 = *(a1 + 524);
    v82 = 67240192;
    LODWORD(v83) = v14;
    v15 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,getDistanceDuringOffRoutePeriod,invalid array index, %{public}d", &v82, 8);
LABEL_13:
    v16 = v15;
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::updateDistanceDuringOffRoutePeriod(const CLRoutePoint *, RacingRouteScoreboard &) const", "CoreLocation: %s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }

    return 0;
  }

  objc_msgSend_timestamp_s(a2, v8, v9, v10);
  v21 = v20 - *(a1 + 328);
  if (v21 < 0.0)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v56 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v87 = v21;
      _os_log_impl(&dword_19B873000, v56, OS_LOG_TYPE_ERROR, "CLRR,getDistanceDuringOffRoutePeriod,invalid time, %{public}.2lf", buf, 0xCu);
    }

    v57 = sub_19B87DD40();
    if ((*(v57 + 160) & 0x80000000) != 0 && (*(v57 + 164) & 0x80000000) != 0 && (*(v57 + 168) & 0x80000000) != 0 && !*(v57 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v82 = 134349056;
    v83 = v21;
    v15 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,getDistanceDuringOffRoutePeriod,invalid time, %{public}.2lf", &v82, 12);
    goto LABEL_13;
  }

  v22 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 48), v18, *(a1 + 524), v19);
  objc_msgSend_timestamp_s(v22, v23, v24, v25);
  v27 = v21 + v26;
  *(a3 + 80) = *(a1 + 376);
  *(a3 + 168) = *(a1 + 464);
  v28 = *(a1 + 48);
  v32 = objc_msgSend_count(v28, v29, v30, v31);
  v35 = objc_msgSend_objectAtIndexedSubscript_(v28, v33, v32 - 1, v34);
  objc_msgSend_timestamp_s(v35, v36, v37, v38);
  if (v42 >= v27)
  {
    v58 = *(a1 + 524);
    if (objc_msgSend_count(*(a1 + 48), v39, v40, v41) <= v58)
    {
      return 1;
    }

    while (1)
    {
      v61 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 48), v59, v58, v60);
      objc_msgSend_timestamp_s(v61, v62, v63, v64);
      if (v68 >= v27)
      {
        break;
      }

      ++v58;
      v69 = objc_msgSend_count(*(a1 + 48), v65, v66, v67);
      result = 1;
      if (v69 <= v58)
      {
        return result;
      }
    }

    v70 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 48), v65, v58, v67);
    objc_msgSend_odometer_m(v70, v71, v72, v73);
    *(a3 + 168) = v74;
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v75 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      v76 = *(a3 + 80);
      v77 = *(a3 + 168);
      *buf = 134283777;
      v87 = v76;
      v88 = 2049;
      v89 = v77;
      _os_log_impl(&dword_19B873000, v75, OS_LOG_TYPE_DEFAULT, "CLRR,getDistanceDuringOffRoutePeriod,distAlongRefRoute,%{private}.2lf,refDistAlongRefRoute,%{private}.2lf", buf, 0x16u);
    }

    v78 = sub_19B87DD40();
    if (*(v78 + 160) <= 1 && *(v78 + 164) <= 1 && *(v78 + 168) <= 1 && !*(v78 + 152))
    {
      return 1;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 == -1)
    {
      goto LABEL_53;
    }

    goto LABEL_58;
  }

  v43 = *(a1 + 48);
  v44 = objc_msgSend_count(v43, v39, v40, v41);
  v47 = objc_msgSend_objectAtIndexedSubscript_(v43, v45, v44 - 1, v46);
  objc_msgSend_odometer_m(v47, v48, v49, v50);
  *(a3 + 168) = v51;
  if (qword_1EAFE4788 != -1)
  {
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
  }

  v52 = qword_1EAFE4790;
  if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
  {
    v53 = *(a3 + 80);
    v54 = *(a3 + 168);
    *buf = 134283777;
    v87 = v53;
    v88 = 2049;
    v89 = v54;
    _os_log_impl(&dword_19B873000, v52, OS_LOG_TYPE_DEFAULT, "CLRR,getDistanceDuringOffRoutePeriod,distAlongRefRoute,%{private}.2lf,refDistAlongRefRoute,%{private}.2lf", buf, 0x16u);
  }

  v55 = sub_19B87DD40();
  if (*(v55 + 160) <= 1 && *(v55 + 164) <= 1 && *(v55 + 168) <= 1 && !*(v55 + 152))
  {
    return 1;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1EAFE4788 != -1)
  {
LABEL_58:
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
  }

LABEL_53:
  v79 = *(a3 + 80);
  v80 = *(a3 + 168);
  v82 = 134283777;
  v83 = v79;
  v84 = 2049;
  v85 = v80;
  v81 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,getDistanceDuringOffRoutePeriod,distAlongRefRoute,%{private}.2lf,refDistAlongRefRoute,%{private}.2lf", &v82, 22);
  sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::updateDistanceDuringOffRoutePeriod(const CLRoutePoint *, RacingRouteScoreboard &) const", "CoreLocation: %s\n", v81);
  if (v81 != buf)
  {
    free(v81);
  }

  return 1;
}

void sub_19B9239F0(uint64_t a1, double *a2, uint64_t *a3)
{
  v166 = *MEMORY[0x1E69E9840];
  v6 = a2[16];
  v7 = a2[5];
  v8 = a2[10];
  v9 = a2[21];
  if (qword_1EAFE4788 != -1)
  {
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
  }

  v10 = v6 - v7;
  v11 = qword_1EAFE4790;
  v12 = "NSt3__110__function6__funcIZNK29CLGeoMapFeatureAccessGeometry19roadsAtIntersectionER10CLMapCrumbPNS_4listIN13CLMapGeometry23IntersectionQueryResultENS_9allocatorIS7_EEEESB_bRKNS_10shared_ptrI9CLMapRoadEEbddRdE3$_1NS8_ISI_EEFPU37objcproto26GEOMapFeatureAccessRequest11objc_objectU13block_pointerFvP7NSErrorEEEE" + 275;
  if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
  {
    v13 = a3;
    if (*(a3 + 23) < 0)
    {
      v13 = *a3;
    }

    v14 = *a2;
    v15 = *(a2 + 1);
    v16 = *(a2 + 4);
    v17 = *(a2 + 5);
    v18 = *(a2 + 6);
    v19 = *(a2 + 7);
    v20 = *(a2 + 8);
    v21 = *(a2 + 9);
    v22 = *(a2 + 2);
    v23 = *(a2 + 3);
    v24 = *(a2 + 10);
    v25 = *(a2 + 11);
    v26 = *(a2 + 12);
    v27 = *(a2 + 13);
    v28 = *(a2 + 16);
    v29 = *(a2 + 17);
    v30 = *(a2 + 18);
    v31 = *(a2 + 19);
    v33 = *(a2 + 14);
    v32 = *(a2 + 15);
    v34 = *(a2 + 20);
    v35 = *(a2 + 21);
    v61 = *(a1 + 40);
    *buf = 136452611;
    v115 = v13;
    v116 = 2050;
    v117 = v16;
    v118 = 2053;
    v119 = v14;
    v120 = 2053;
    v121 = v15;
    v122 = 2049;
    v123 = v22;
    v124 = 2050;
    v125 = v17;
    v126 = 2050;
    v127 = v18;
    v128 = 2050;
    v129 = v19;
    v130 = 2050;
    v131 = v20;
    v132 = 2049;
    v133 = v21;
    v134 = 2050;
    v135 = v23;
    v136 = 2050;
    v137 = v24;
    v138 = 2050;
    v139 = v32;
    v140 = 2053;
    v141 = v25;
    v142 = 2053;
    v143 = v26;
    v144 = 2049;
    v145 = v27;
    v146 = 2050;
    v147 = v28;
    v148 = 2050;
    v149 = v29;
    v150 = 2050;
    v151 = v30;
    v152 = 2050;
    v153 = v31;
    v12 = "ectU13block_pointerFvP7NSErrorEEEE";
    v154 = 2049;
    v155 = v34;
    v156 = 2050;
    v157 = v33;
    v158 = 2050;
    v159 = v35;
    v160 = 1026;
    v161 = v61;
    v162 = 2050;
    v163 = v10;
    v164 = 2050;
    v165 = v8 - v9;
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "CLRR,printDebugLog,pointType,%{public}s,time,%{public}.1lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,alt,%{private}.2lf,timeFromStart,%{public}.1lf,offRouteTime,%{public}.1lf,distFromStart,%{public}.2lf,offRouteDist,%{public}.2lf,pace,%{private}.2lf,odom,%{public}.2lf,distAlongRefRoute,%{public}.2lf,refTime,%{public}.1lf,refLat,%{sensitive}.7lf,refLon,%{sensitive}.7lf,refAlt,%{private}.2lf,refTimeFromStart,%{public}.1lf,refOffRouteTime,%{public}.1lf,refDistFromStart,%{public}.2lf,refOffRouteDist,%{public}.2lf,refPace,%{private}.2lf,refOdom,%{public}.2lf,refDistAlongRefRoute,%{public}.2lf,signalEnv,%{public}d,timeAhead,%{public}.2lf,distanceAhead,%{public}.2lf", buf, 0x102u);
  }

  v36 = sub_19B87DD40();
  if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    if (*(a3 + 23) < 0)
    {
      a3 = *a3;
    }

    v37 = *a2;
    v38 = *(a2 + 1);
    v39 = *(a2 + 4);
    v40 = *(a2 + 5);
    v41 = *(a2 + 6);
    v42 = *(a2 + 7);
    v43 = *(a2 + 8);
    v44 = *(a2 + 9);
    v46 = *(a2 + 2);
    v45 = *(a2 + 3);
    v47 = *(a2 + 10);
    v48 = *(a2 + 11);
    v49 = *(a2 + 12);
    v50 = *(a2 + 13);
    v51 = *(a2 + 16);
    v52 = *(a2 + 17);
    v53 = *(a2 + 18);
    v54 = *(a2 + 19);
    v56 = *(a2 + 14);
    v55 = *(a2 + 15);
    v58 = *(a2 + 20);
    v57 = *(a2 + 21);
    v59 = *(a1 + 40);
    v62 = *(v12 + 177);
    v63 = a3;
    v64 = 2050;
    v65 = v39;
    v66 = 2053;
    v67 = v37;
    v68 = 2053;
    v69 = v38;
    v70 = 2049;
    v71 = v46;
    v72 = 2050;
    v73 = v40;
    v74 = 2050;
    v75 = v41;
    v76 = 2050;
    v77 = v42;
    v78 = 2050;
    v79 = v43;
    v80 = 2049;
    v81 = v44;
    v82 = 2050;
    v83 = v45;
    v84 = 2050;
    v85 = v47;
    v86 = 2050;
    v87 = v55;
    v88 = 2053;
    v89 = v48;
    v90 = 2053;
    v91 = v49;
    v92 = 2049;
    v93 = v50;
    v94 = 2050;
    v95 = v51;
    v96 = 2050;
    v97 = v52;
    v98 = 2050;
    v99 = v53;
    v100 = 2050;
    v101 = v54;
    v102 = 2049;
    v103 = v58;
    v104 = 2050;
    v105 = v56;
    v106 = 2050;
    v107 = v57;
    v108 = 1026;
    v109 = v59;
    v110 = 2050;
    v111 = v10;
    v112 = 2050;
    v113 = v8 - v9;
    v60 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,printDebugLog,pointType,%{public}s,time,%{public}.1lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,alt,%{private}.2lf,timeFromStart,%{public}.1lf,offRouteTime,%{public}.1lf,distFromStart,%{public}.2lf,offRouteDist,%{public}.2lf,pace,%{private}.2lf,odom,%{public}.2lf,distAlongRefRoute,%{public}.2lf,refTime,%{public}.1lf,refLat,%{sensitive}.7lf,refLon,%{sensitive}.7lf,refAlt,%{private}.2lf,refTimeFromStart,%{public}.1lf,refOffRouteTime,%{public}.1lf,refDistFromStart,%{public}.2lf,refOffRouteDist,%{public}.2lf,refPace,%{private}.2lf,refOdom,%{public}.2lf,refDistAlongRefRoute,%{public}.2lf,signalEnv,%{public}d,timeAhead,%{public}.2lf,distanceAhead,%{public}.2lf", &v62, 258);
    sub_19B885924("Generic", 1, 0, 2, "void CLRacingRoute::printDebugLog(const RacingRouteScoreboard &, const std::string) const", "CoreLocation: %s\n", v60);
    if (v60 != buf)
    {
      free(v60);
    }
  }
}

uint64_t sub_19B923E48(uint64_t a1, unsigned int *a2, unsigned int *a3, _DWORD *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (*a2 <= 8 && ((1 << *a2) & 0x150) != 0 || v4 == 90603)
  {
    v8 = *a3;
    if (*a3 > 9)
    {
      *(a1 + 44) = v4;
      *(a1 + 488) = v8;
      *(a1 + 496) = *a4;
      *(a1 + 492) = v8;
      *(a1 + 480) = 1;
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v16 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 44);
        v18 = *(a1 + 488);
        v19 = *(a1 + 492);
        v20 = *(a1 + 496);
        *buf = 67240960;
        v42 = v17;
        v43 = 1026;
        v44 = v18;
        v45 = 1026;
        v46 = v19;
        v47 = 1026;
        v48 = v20;
        _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEFAULT, "CLRR,configureRouteModel,configuration succeeded,workout activity type,%{public}u,route points rolling buffer size,%{public}d,number of route points to add,%{public}d,off route grace duration,%{public}d", buf, 0x1Au);
      }

      v21 = sub_19B87DD40();
      if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v22 = *(a1 + 44);
        v23 = *(a1 + 488);
        v24 = *(a1 + 492);
        v25 = *(a1 + 496);
        v33 = 67240960;
        v34 = v22;
        v35 = 1026;
        v36 = v23;
        v37 = 1026;
        v38 = v24;
        v39 = 1026;
        v40 = v25;
        v26 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,configureRouteModel,configuration succeeded,workout activity type,%{public}u,route points rolling buffer size,%{public}d,number of route points to add,%{public}d,off route grace duration,%{public}d", &v33, 26);
        sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteConfigurationState CLRacingRoute::configureRouteModel(const CLMotionActivity::Type &, const int &, const int &)", "CoreLocation: %s\n", v26);
        if (v26 != buf)
        {
          free(v26);
        }
      }

      return 0;
    }

    else
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v9 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
      {
        v10 = *a3;
        *buf = 67240192;
        v42 = v10;
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "CLRR,configureRouteModel,buffer size is too small,%{public}d", buf, 8u);
      }

      v11 = sub_19B87DD40();
      if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v12 = *a3;
        v33 = 67240192;
        v34 = v12;
        v13 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,configureRouteModel,buffer size is too small,%{public}d", &v33, 8);
        sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteConfigurationState CLRacingRoute::configureRouteModel(const CLMotionActivity::Type &, const int &, const int &)", "CoreLocation: %s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      return 2;
    }
  }

  else
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v28 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      v29 = *a2;
      *buf = 67240192;
      v42 = v29;
      _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_ERROR, "CLRR,configureRouteModel,unsupported activity type,%{public}d", buf, 8u);
    }

    v30 = sub_19B87DD40();
    if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v31 = *a2;
      v33 = 67240192;
      v34 = v31;
      v32 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,configureRouteModel,unsupported activity type,%{public}d", &v33, 8);
      sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteConfigurationState CLRacingRoute::configureRouteModel(const CLMotionActivity::Type &, const int &, const int &)", "CoreLocation: %s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }

    return 1;
  }
}

uint64_t sub_19B924398(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v330 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 480) & 1) == 0)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v7 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_ERROR, "CLRR,getPerformanceResults,route model has NOT been configured successfully,expire the race session", buf, 2u);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      LOWORD(v302) = 0;
      v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,getPerformanceResults,route model has NOT been configured successfully,expire the race session", &v302, 2);
      sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    *(a1 + 478) = 1;
  }

  if (*(a1 + 475) == 1)
  {
    sub_19B9185F0(a1);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v10 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "CLRR,getPerformanceResults,passed finish line", buf, 2u);
    }

    v11 = sub_19B87DD40();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      LOWORD(v302) = 0;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,getPerformanceResults,passed finish line", &v302, 2);
      sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    return 3;
  }

  if (a2)
  {
    objc_msgSend_timestamp_s(a2, a2, a3, a4);
    if (v17 < *(a1 + 328) || (objc_msgSend_odometer_m(a2, v14, v15, v16), v21 < *(a1 + 320)))
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v22 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
      {
        objc_msgSend_timestamp_s(a2, v23, v24, v25);
        v27 = v26;
        v28 = *(a1 + 328);
        objc_msgSend_odometer_m(a2, v29, v30, v31);
        v32 = *(a1 + 320);
        *buf = 134349824;
        v317 = v27;
        v318 = 2050;
        v319 = v28;
        v320 = 2050;
        v321 = v33;
        v322 = 2050;
        v323 = v32;
        _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_ERROR, "CLRR,getPerformanceResults,invalid input data,time,%{public}.1lf,lastOnRouteTime,%{public}.1lf,odom,%{public}.2lf,lastOnRouteOdom,%{public}.2lf", buf, 0x2Au);
      }

      v34 = sub_19B87DD40();
      if ((*(v34 + 160) & 0x80000000) != 0 && (*(v34 + 164) & 0x80000000) != 0 && (*(v34 + 168) & 0x80000000) != 0 && !*(v34 + 152))
      {
        return 5;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v38 = qword_1EAFE4790;
      objc_msgSend_timestamp_s(a2, v35, v36, v37);
      v40 = v39;
      v41 = *(a1 + 328);
      objc_msgSend_odometer_m(a2, v42, v43, v44);
      v45 = *(a1 + 320);
      v302 = 134349824;
      v303 = v40;
      v304 = 2050;
      v305 = v41;
      v306 = 2050;
      v307 = v46;
      v308 = 2050;
      v309 = v45;
      v47 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v38, 16, "CLRR,getPerformanceResults,invalid input data,time,%{public}.1lf,lastOnRouteTime,%{public}.1lf,odom,%{public}.2lf,lastOnRouteOdom,%{public}.2lf", &v302, 42);
      sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v47);
      if (v47 == buf)
      {
        return 5;
      }

      goto LABEL_96;
    }

    objc_msgSend_latitude_deg(a2, v18, v19, v20);
    v52 = v51;
    objc_msgSend_longitude_deg(a2, v53, v54, v55);
    if (!sub_19B9180C4(v52, v56) || (objc_msgSend_altitude_m(a2, v57, v58, v59), (*&v60 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) || v60 <= -430.5 || v60 >= 8848.86)
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v68 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
      {
        objc_msgSend_latitude_deg(a2, v69, v70, v71);
        v73 = v72;
        objc_msgSend_longitude_deg(a2, v74, v75, v76);
        v78 = v77;
        objc_msgSend_altitude_m(a2, v79, v80, v81);
        *buf = 134546177;
        v317 = v73;
        v318 = 2053;
        v319 = v78;
        v320 = 2049;
        v321 = v82;
        _os_log_impl(&dword_19B873000, v68, OS_LOG_TYPE_ERROR, "CLRR,getPerformanceResults,invalid input data,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,alt,%{private}.2lf", buf, 0x20u);
      }

      v83 = sub_19B87DD40();
      if ((*(v83 + 160) & 0x80000000) != 0 && (*(v83 + 164) & 0x80000000) != 0 && (*(v83 + 168) & 0x80000000) != 0 && !*(v83 + 152))
      {
        return 5;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v87 = qword_1EAFE4790;
      objc_msgSend_latitude_deg(a2, v84, v85, v86);
      v89 = v88;
      objc_msgSend_longitude_deg(a2, v90, v91, v92);
      v94 = v93;
      objc_msgSend_altitude_m(a2, v95, v96, v97);
      v302 = 134546177;
      v303 = v89;
      v304 = 2053;
      v305 = v94;
      v306 = 2049;
      v307 = v98;
      v47 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v87, 16, "CLRR,getPerformanceResults,invalid input data,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,alt,%{private}.2lf", &v302, 32);
      sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v47);
      goto LABEL_95;
    }

    if (*(a1 + 478) == 1)
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v61 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v61, OS_LOG_TYPE_DEFAULT, "CLRR,getPerformanceResults,race session expired", buf, 2u);
      }

      v62 = sub_19B87DD40();
      if (*(v62 + 160) > 1 || *(v62 + 164) > 1 || *(v62 + 168) > 1 || *(v62 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        LOWORD(v302) = 0;
        v64 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,getPerformanceResults,race session expired", &v302, 2);
        sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v64);
        if (v64 != buf)
        {
          free(v64);
        }
      }

      if (*(a1 + 474) == 1 && (sub_19B92335C(a1, a2, a3, v63) & 1) == 0)
      {
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v65 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v65, OS_LOG_TYPE_ERROR, "CLRR,getPerformanceResults,race session expired but failed to updateDistanceDuringOffRoutePeriod", buf, 2u);
        }

        v66 = sub_19B87DD40();
        if ((*(v66 + 160) & 0x80000000) == 0 || (*(v66 + 164) & 0x80000000) == 0 || (*(v66 + 168) & 0x80000000) == 0 || *(v66 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          LOWORD(v302) = 0;
          v67 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,getPerformanceResults,race session expired but failed to updateDistanceDuringOffRoutePeriod", &v302, 2);
          sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v67);
          if (v67 != buf)
          {
            free(v67);
          }
        }
      }

      return 6;
    }

    ++*(a1 + 508);
    *(a1 + 484) = 0;
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v99 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
    {
      objc_msgSend_timestamp_s(a2, v100, v101, v102);
      v104 = v103;
      objc_msgSend_latitude_deg(a2, v105, v106, v107);
      v109 = v108;
      objc_msgSend_longitude_deg(a2, v110, v111, v112);
      v114 = v113;
      objc_msgSend_altitude_m(a2, v115, v116, v117);
      v119 = v118;
      objc_msgSend_odometer_m(a2, v120, v121, v122);
      v124 = v123;
      v128 = objc_msgSend_signalEnvironmentType(a2, v125, v126, v127);
      v129 = *(a1 + 508);
      *buf = 134285057;
      v317 = v104;
      v318 = 2053;
      v319 = v109;
      v320 = 2053;
      v321 = v114;
      v322 = 2049;
      v323 = v119;
      v324 = 2049;
      v325 = v124;
      v326 = 1025;
      v327 = v128;
      v328 = 1026;
      v329 = v129;
      _os_log_impl(&dword_19B873000, v99, OS_LOG_TYPE_DEFAULT, "CLRR,getPerformanceResults,pointType,currentLocation,time,%{private}.1lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,alt,%{private}.2lf,odom,%{private}.2lf,signalEnv,%{private}d,pointCount,%{public}d", buf, 0x40u);
    }

    v130 = sub_19B87DD40();
    if (*(v130 + 160) > 1 || *(v130 + 164) > 1 || *(v130 + 168) > 1 || *(v130 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v137 = qword_1EAFE4790;
      objc_msgSend_timestamp_s(a2, v134, v135, v136);
      v139 = v138;
      objc_msgSend_latitude_deg(a2, v140, v141, v142);
      v144 = v143;
      objc_msgSend_longitude_deg(a2, v145, v146, v147);
      v149 = v148;
      objc_msgSend_altitude_m(a2, v150, v151, v152);
      v154 = v153;
      objc_msgSend_odometer_m(a2, v155, v156, v157);
      v159 = v158;
      v163 = objc_msgSend_signalEnvironmentType(a2, v160, v161, v162);
      v164 = *(a1 + 508);
      v302 = 134285057;
      v303 = v139;
      v304 = 2053;
      v305 = v144;
      v306 = 2053;
      v307 = v149;
      v308 = 2049;
      v309 = v154;
      v310 = 2049;
      v311 = v159;
      v312 = 1025;
      v313 = v163;
      v314 = 1026;
      v315 = v164;
      v165 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v137, 0, "CLRR,getPerformanceResults,pointType,currentLocation,time,%{private}.1lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,alt,%{private}.2lf,odom,%{private}.2lf,signalEnv,%{private}d,pointCount,%{public}d", &v302, 64);
      sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v165);
      if (v165 != buf)
      {
        free(v165);
      }
    }

    if ((*(a1 + 483) & 1) == 0 && *(a1 + 479) == 1 && objc_msgSend_count(*(a1 + 48), v131, v132, v133))
    {
      v166 = *(a1 + 48);
      v167 = objc_msgSend_count(v166, v131, v132, v133);
      v170 = objc_msgSend_objectAtIndexedSubscript_(v166, v168, v167 - 1, v169);
      objc_msgSend_odometer_m(v170, v171, v172, v173);
      *(a1 + 544) = v174;
      *(a1 + 483) = 1;
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v175 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
      {
        v176 = *(a1 + 544);
        *buf = 134283521;
        v317 = v176;
        _os_log_impl(&dword_19B873000, v175, OS_LOG_TYPE_DEFAULT, "CLRR,getPerformanceResults,reference route total length,%{private}.2lf", buf, 0xCu);
      }

      v177 = sub_19B87DD40();
      if (*(v177 + 160) > 1 || *(v177 + 164) > 1 || *(v177 + 168) > 1 || *(v177 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v178 = *(a1 + 544);
        v302 = 134283521;
        v303 = v178;
        v179 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,getPerformanceResults,reference route total length,%{private}.2lf", &v302, 12);
        sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v179);
        if (v179 != buf)
        {
          free(v179);
        }
      }
    }

    v180 = *(a1 + 40);
    if (v180 != objc_msgSend_signalEnvironmentType(a2, v131, v132, v133))
    {
      v184 = objc_msgSend_signalEnvironmentType(a2, v181, v182, v183);
      *(a1 + 40) = 0;
      if (v184 >= 5 && v184 != 6)
      {
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v262 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
        {
          v266 = objc_msgSend_signalEnvironmentType(a2, v263, v264, v265);
          *buf = 67240192;
          LODWORD(v317) = v266;
          _os_log_impl(&dword_19B873000, v262, OS_LOG_TYPE_ERROR, "CLRR,getPerformanceResults,invalid signal environment type,%{public}d", buf, 8u);
        }

        v267 = sub_19B87DD40();
        if ((*(v267 + 160) & 0x80000000) != 0 && (*(v267 + 164) & 0x80000000) != 0 && (*(v267 + 168) & 0x80000000) != 0 && !*(v267 + 152))
        {
          return 5;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v271 = qword_1EAFE4790;
        v272 = objc_msgSend_signalEnvironmentType(a2, v268, v269, v270);
        v302 = 67240192;
        LODWORD(v303) = v272;
        v47 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v271, 16, "CLRR,getPerformanceResults,invalid signal environment type,%{public}d", &v302, 8);
        sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v47);
LABEL_95:
        if (v47 == buf)
        {
          return 5;
        }

LABEL_96:
        free(v47);
        return 5;
      }

      *(a1 + 40) = v184;
      if (v184 - 1 > 5)
      {
        v185 = 0x4044000000000000;
      }

      else
      {
        v185 = qword_19BA8A5A0[v184 - 1];
      }

      *(a1 + 576) = v185;
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v186 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEBUG))
      {
        v187 = *(a1 + 576);
        *buf = 134283521;
        v317 = v187;
        _os_log_impl(&dword_19B873000, v186, OS_LOG_TYPE_DEBUG, "CLRR,getPerformanceResults,nearest neighbor maximum accepted distance,%{private}.2lf", buf, 0xCu);
      }

      v188 = sub_19B87DD40();
      if (*(v188 + 160) > 1 || *(v188 + 164) > 1 || *(v188 + 168) > 1 || *(v188 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v189 = *(a1 + 576);
        v302 = 134283521;
        v303 = v189;
        v190 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 2, "CLRR,getPerformanceResults,nearest neighbor maximum accepted distance,%{private}.2lf", &v302, 12);
        sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v190);
        if (v190 != buf)
        {
          free(v190);
        }
      }
    }

    objc_msgSend_latitude_deg(a2, v181, v182, v183);
    v192 = v191;
    objc_msgSend_longitude_deg(a2, v193, v194, v195);
    if (!sub_19B926648((a1 + 56), v192, v196))
    {
      *(a1 + 484) = 1;
      *(a3 + 144) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      if (*(a1 + 474))
      {
        sub_19B920784(a1, v197, v198, v199);
        if (*(a1 + 476) == 1)
        {
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          v231 = qword_1EAFE4790;
          if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v231, OS_LOG_TYPE_DEFAULT, "CLRR,getPerformanceResults,current location outside of bounding box,user is off-route", buf, 2u);
          }

          v232 = sub_19B87DD40();
          if (*(v232 + 160) > 1 || *(v232 + 164) > 1 || *(v232 + 168) > 1 || *(v232 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4788 != -1)
            {
              dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
            }

            LOWORD(v302) = 0;
            v234 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,getPerformanceResults,current location outside of bounding box,user is off-route", &v302, 2);
            sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v234);
            if (v234 != buf)
            {
              free(v234);
            }
          }

          if (sub_19B92335C(a1, a2, a3, v233))
          {
            return 2;
          }

          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          v235 = qword_1EAFE4790;
          if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v235, OS_LOG_TYPE_ERROR, "CLRR,getPerformanceResults,user is off-route but failed to updateDistanceDuringOffRoutePeriod", buf, 2u);
          }

          v236 = sub_19B87DD40();
          if ((*(v236 + 160) & 0x80000000) != 0 && (*(v236 + 164) & 0x80000000) != 0 && (*(v236 + 168) & 0x80000000) != 0 && !*(v236 + 152))
          {
            return 2;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          LOWORD(v302) = 0;
          v237 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,getPerformanceResults,user is off-route but failed to updateDistanceDuringOffRoutePeriod", &v302, 2);
          sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v237);
          goto LABEL_187;
        }

        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v273 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v273, OS_LOG_TYPE_DEFAULT, "CLRR,getPerformanceResults,current location outside of bounding box,unspecified state", buf, 2u);
        }

        v274 = sub_19B87DD40();
        if (*(v274 + 160) <= 1 && *(v274 + 164) <= 1 && *(v274 + 168) <= 1 && !*(v274 + 152))
        {
          return 0;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        LOWORD(v302) = 0;
        v259 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,getPerformanceResults,current location outside of bounding box,unspecified state", &v302, 2);
        sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v259);
      }

      else
      {
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v260 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v260, OS_LOG_TYPE_DEFAULT, "CLRR,getPerformanceResults,race not started yet,current location outside of bounding box,unspecified state", buf, 2u);
        }

        v261 = sub_19B87DD40();
        if (*(v261 + 160) <= 1 && *(v261 + 164) <= 1 && *(v261 + 168) <= 1 && !*(v261 + 152))
        {
          return 0;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        LOWORD(v302) = 0;
        v259 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,getPerformanceResults,race not started yet,current location outside of bounding box,unspecified state", &v302, 2);
        sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v259);
      }

LABEL_301:
      if (v259 != buf)
      {
LABEL_302:
        free(v259);
      }

      return 0;
    }

    objc_msgSend_latitude_deg(a2, v197, v198, v199);
    v201 = v200;
    objc_msgSend_longitude_deg(a2, v202, v203, v204);
    v206 = sub_19B91825C(a1 + 56, v201, v205);
    v301 = v206;
    if ((v206 & 0x80000000) != 0 || 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 104) - *(a1 + 96)) >> 3) <= v206)
    {
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v238 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
      {
        objc_msgSend_latitude_deg(a2, v239, v240, v241);
        v243 = v242;
        objc_msgSend_longitude_deg(a2, v244, v245, v246);
        *buf = 134545921;
        v317 = v243;
        v318 = 2053;
        v319 = v247;
        _os_log_impl(&dword_19B873000, v238, OS_LOG_TYPE_ERROR, "CLRR,getPerformanceResults,unspecified state,invalid index for location,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf", buf, 0x16u);
      }

      v248 = sub_19B87DD40();
      if ((*(v248 + 160) & 0x80000000) != 0 && (*(v248 + 164) & 0x80000000) != 0 && (*(v248 + 168) & 0x80000000) != 0 && !*(v248 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v252 = qword_1EAFE4790;
      objc_msgSend_latitude_deg(a2, v249, v250, v251);
      v254 = v253;
      objc_msgSend_longitude_deg(a2, v255, v256, v257);
      v302 = 134545921;
      v303 = v254;
      v304 = 2053;
      v305 = v258;
      v259 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v252, 16, "CLRR,getPerformanceResults,unspecified state,invalid index for location,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf", &v302, 22);
      sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v259);
      if (v259 == buf)
      {
        return 0;
      }

      goto LABEL_302;
    }

    v210 = *(a1 + 524);
    if ((v210 & 0x80000000) == 0 && objc_msgSend_count(*(a1 + 48), v207, v208, v209) > v210)
    {
      v213 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 48), v211, *(a1 + 524), v212);
      objc_msgSend_latitude_deg(v213, v214, v215, v216);
      v218 = v217;
      v221 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 48), v219, *(a1 + 524), v220);
      objc_msgSend_longitude_deg(v221, v222, v223, v224);
      *(a1 + 536) = sub_19B91825C(a1 + 56, v218, v225);
    }

    if ((*(a1 + 474) & 1) == 0)
    {
      v275 = *(a1 + 48);
      *buf = 0;
      if (sub_19B91AB54(a1, a2, v275, &v301, buf, a3))
      {
        *(a1 + 474) = 1;
        sub_19B9208A0(a1, v276, v277, v278);
        sub_19B8759E8(__p, "start");
        sub_19B9239F0(a1, a3, __p);
        if (v300 < 0)
        {
          v230 = __p[0];
          goto LABEL_237;
        }

        return 1;
      }

      *(a3 + 144) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v279 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v279, OS_LOG_TYPE_DEFAULT, "CLRR,getPerformanceResults,race not started yet,unspecified state", buf, 2u);
      }

      v280 = sub_19B87DD40();
      if (*(v280 + 160) <= 1 && *(v280 + 164) <= 1 && *(v280 + 168) <= 1 && !*(v280 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      LOWORD(v302) = 0;
      v259 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,getPerformanceResults,race not started yet,unspecified state", &v302, 2);
      sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v259);
      goto LABEL_301;
    }

    if ((*(a1 + 476) & 1) != 0 || *(a1 + 485) == 1)
    {
      v226 = *(a1 + 48);
      *buf = 1;
      if (sub_19B91AB54(a1, a2, v226, &v301, buf, a3))
      {
        sub_19B9208A0(a1, v227, v228, v229);
        sub_19B8759E8(v297, "rejoin");
        sub_19B9239F0(a1, a3, v297);
        if (v298 < 0)
        {
          v230 = v297[0];
LABEL_237:
          operator delete(v230);
          return 1;
        }

        return 1;
      }

      *(a3 + 144) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      sub_19B920784(a1, v227, v228, v229);
      if (*(a1 + 476) == 1)
      {
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v281 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v281, OS_LOG_TYPE_DEFAULT, "CLRR,getPerformanceResults,user is off-route", buf, 2u);
        }

        v282 = sub_19B87DD40();
        if (*(v282 + 160) > 1 || *(v282 + 164) > 1 || *(v282 + 168) > 1 || *(v282 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4788 != -1)
          {
            dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
          }

          LOWORD(v302) = 0;
          v284 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,getPerformanceResults,user is off-route", &v302, 2);
          sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v284);
          if (v284 != buf)
          {
            free(v284);
          }
        }

        if (sub_19B92335C(a1, a2, a3, v283))
        {
          return 2;
        }

        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        v285 = qword_1EAFE4790;
        if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v285, OS_LOG_TYPE_ERROR, "CLRR,getPerformanceResults,user is off-route but failed to updateDistanceDuringOffRoutePeriod", buf, 2u);
        }

        v286 = sub_19B87DD40();
        if ((*(v286 + 160) & 0x80000000) != 0 && (*(v286 + 164) & 0x80000000) != 0 && (*(v286 + 168) & 0x80000000) != 0 && !*(v286 + 152))
        {
          return 2;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4788 != -1)
        {
          dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
        }

        LOWORD(v302) = 0;
        v237 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,getPerformanceResults,user is off-route but failed to updateDistanceDuringOffRoutePeriod", &v302, 2);
        sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v237);
LABEL_187:
        if (v237 != buf)
        {
          free(v237);
        }

        return 2;
      }

      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v291 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v291, OS_LOG_TYPE_DEFAULT, "CLRR,getPerformanceResults,unspecified state", buf, 2u);
      }

      v292 = sub_19B87DD40();
      if (*(v292 + 160) <= 1 && *(v292 + 164) <= 1 && *(v292 + 168) <= 1 && !*(v292 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 == -1)
      {
        goto LABEL_300;
      }
    }

    else
    {
      v287 = *(a1 + 48);
      *buf = 2;
      if (sub_19B91AB54(a1, a2, v287, &v301, buf, a3))
      {
        sub_19B9208A0(a1, v288, v289, v290);
        sub_19B8759E8(v295, "onRoute");
        sub_19B9239F0(a1, a3, v295);
        if ((v296 & 0x80000000) == 0)
        {
          return 1;
        }

        v230 = v295[0];
        goto LABEL_237;
      }

      *(a3 + 144) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      sub_19B920784(a1, v288, v289, v290);
      if (qword_1EAFE4788 != -1)
      {
        dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
      }

      v293 = qword_1EAFE4790;
      if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v293, OS_LOG_TYPE_DEFAULT, "CLRR,getPerformanceResults,unspecified state", buf, 2u);
      }

      v294 = sub_19B87DD40();
      if (*(v294 + 160) <= 1 && *(v294 + 164) <= 1 && *(v294 + 168) <= 1 && !*(v294 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4788 == -1)
      {
        goto LABEL_300;
      }
    }

    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
LABEL_300:
    LOWORD(v302) = 0;
    v259 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,getPerformanceResults,unspecified state", &v302, 2);
    sub_19B885924("Generic", 1, 0, 2, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v259);
    goto LABEL_301;
  }

  if (qword_1EAFE4788 != -1)
  {
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
  }

  v48 = qword_1EAFE4790;
  if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v48, OS_LOG_TYPE_ERROR, "CLRR,getPerformanceResults,current data point is null", buf, 2u);
  }

  v49 = sub_19B87DD40();
  if ((*(v49 + 160) & 0x80000000) == 0 || (*(v49 + 164) & 0x80000000) == 0 || (*(v49 + 168) & 0x80000000) == 0 || *(v49 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    LOWORD(v302) = 0;
    v50 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,getPerformanceResults,current data point is null", &v302, 2);
    sub_19B885924("Generic", 1, 0, 0, "CLRacingRouteLocationState CLRacingRoute::getPerformanceResults(CLRoutePoint *, RacingRouteScoreboard &)", "CoreLocation: %s\n", v50);
    if (v50 != buf)
    {
      free(v50);
    }
  }

  return 4;
}

void sub_19B9265F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B926648(double *a1, double a2, double a3)
{
  v3 = fabs(a2);
  if (v3 < 0.00003 && fabs(a3) < 0.00003)
  {
    return 0;
  }

  v4 = 0;
  if (a3 >= -180.0 && v3 <= 90.0 && a3 <= 180.0)
  {
    if (*a1 > a2 || a1[1] < a2)
    {
      return 0;
    }

    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= 0.0 && v7 >= 0.0 || v6 <= 0.0 && v7 <= 0.0)
    {
      return v7 >= a3 && v6 <= a3;
    }

    v8 = 360.0;
    if (v6 < 0.0)
    {
      v6 = v6 + 360.0;
    }

    v9 = v7 + 360.0;
    if (v7 >= 0.0)
    {
      v9 = a1[3];
    }

    v10 = v9 - v6;
    if (v9 - v6 <= 180.0)
    {
      if (v10 < -180.0)
      {
        v10 = v10 + 360.0;
      }
    }

    else
    {
      v10 = v10 + -360.0;
    }

    v11 = a3 + 360.0;
    if (a3 >= 0.0)
    {
      v11 = a3;
    }

    v12 = v9 - v11;
    if (v12 <= 180.0)
    {
      if (v12 < -180.0)
      {
        v12 = v12 + 360.0;
      }
    }

    else
    {
      v12 = v12 + -360.0;
    }

    v13 = fabs(v10);
    v14 = fabs(v12);
    v15 = v6 - v11;
    if (v15 <= 180.0)
    {
      if (v15 >= -180.0)
      {
        return fabs(v15) <= v13 && v14 <= v13;
      }
    }

    else
    {
      v8 = -360.0;
    }

    v15 = v15 + v8;
    return fabs(v15) <= v13 && v14 <= v13;
  }

  return v4;
}

__n128 sub_19B9267B0(uint64_t a1)
{
  v1 = a1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;

  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 48) = 0u;
  sub_19B918144((v1 + 96));
  *(v1 + 120) = 0u;
  v1 += 120;
  *(v1 + 400) = 0;
  *(v1 + 368) = 0u;
  *(v1 + 384) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0u;
  *(v1 + 350) = 0u;
  *(v1 + 420) = -1;
  *(v1 + 404) = -1;
  *(v1 + 412) = -1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v1 + 424) = result;
  *(v1 + 440) = result;
  *(v1 + 456) = 0x4044000000000000;
  return result;
}

uint64_t sub_19B926868(uint64_t a1, void *a2)
{
  v640 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4788 != -1)
  {
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
  }

  v4 = qword_1EAFE4790;
  if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "CLRR,setRacingRouteParameters,set race parameters", buf, 2u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    LOWORD(v625[0]) = 0;
    v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,setRacingRouteParameters,set race parameters", v625, 2);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::setRacingRouteParameters(CLRacingRouteParameters *)", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  if (!a2)
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v607 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v607, OS_LOG_TYPE_ERROR, "CLRR,setRacingRouteParameters,racingRouteParameters is null", buf, 2u);
    }

    v608 = sub_19B87DD40();
    if ((*(v608 + 160) & 0x80000000) != 0 && (*(v608 + 164) & 0x80000000) != 0 && (*(v608 + 168) & 0x80000000) != 0 && !*(v608 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    LOWORD(v625[0]) = 0;
    v609 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,setRacingRouteParameters,racingRouteParameters is null", v625, 2);
    goto LABEL_116;
  }

  if (!objc_msgSend_routeMatrixIndexVec(a2, v6, v7, v8))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v610 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v610, OS_LOG_TYPE_ERROR, "CLRR,setRacingRouteParameters,racingRouteParameters.routeMatrixIndexVec is null", buf, 2u);
    }

    v611 = sub_19B87DD40();
    if ((*(v611 + 160) & 0x80000000) != 0 && (*(v611 + 164) & 0x80000000) != 0 && (*(v611 + 168) & 0x80000000) != 0 && !*(v611 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    LOWORD(v625[0]) = 0;
    v609 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,setRacingRouteParameters,racingRouteParameters.routeMatrixIndexVec is null", v625, 2);
    goto LABEL_116;
  }

  if (!objc_msgSend_racingRouteVariables(a2, v10, v11, v12))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v612 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v612, OS_LOG_TYPE_ERROR, "CLRR,setRacingRouteParameters,racingRouteParameters.racingRouteVariables is null", buf, 2u);
    }

    v613 = sub_19B87DD40();
    if ((*(v613 + 160) & 0x80000000) != 0 && (*(v613 + 164) & 0x80000000) != 0 && (*(v613 + 168) & 0x80000000) != 0 && !*(v613 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    LOWORD(v625[0]) = 0;
    v609 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,setRacingRouteParameters,racingRouteParameters.racingRouteVariables is null", v625, 2);
    goto LABEL_116;
  }

  if (!objc_msgSend_routeBoundingBox(a2, v13, v14, v15))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v614 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v614, OS_LOG_TYPE_ERROR, "CLRR,setRacingRouteParameters,racingRouteParameters.routeBoundingBox is null", buf, 2u);
    }

    v615 = sub_19B87DD40();
    if ((*(v615 + 160) & 0x80000000) != 0 && (*(v615 + 164) & 0x80000000) != 0 && (*(v615 + 168) & 0x80000000) != 0 && !*(v615 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    LOWORD(v625[0]) = 0;
    v609 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,setRacingRouteParameters,racingRouteParameters.routeBoundingBox is null", v625, 2);
    goto LABEL_116;
  }

  if (!objc_msgSend_startPointOnCurrentRoute(a2, v16, v17, v18))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v616 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v616, OS_LOG_TYPE_ERROR, "CLRR,setRacingRouteParameters,racingRouteParameters.startPointOnCurrentRoute is null", buf, 2u);
    }

    v617 = sub_19B87DD40();
    if ((*(v617 + 160) & 0x80000000) != 0 && (*(v617 + 164) & 0x80000000) != 0 && (*(v617 + 168) & 0x80000000) != 0 && !*(v617 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    LOWORD(v625[0]) = 0;
    v609 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,setRacingRouteParameters,racingRouteParameters.startPointOnCurrentRoute is null", v625, 2);
    goto LABEL_116;
  }

  if (!objc_msgSend_startPointOnReferenceRoute(a2, v19, v20, v21))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v618 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v618, OS_LOG_TYPE_ERROR, "CLRR,setRacingRouteParameters,racingRouteParameters.startPointOnReferenceRoute is null", buf, 2u);
    }

    v619 = sub_19B87DD40();
    if ((*(v619 + 160) & 0x80000000) != 0 && (*(v619 + 164) & 0x80000000) != 0 && (*(v619 + 168) & 0x80000000) != 0 && !*(v619 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    LOWORD(v625[0]) = 0;
    v609 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,setRacingRouteParameters,racingRouteParameters.startPointOnReferenceRoute is null", v625, 2);
    goto LABEL_116;
  }

  if (!objc_msgSend_lastOnRouteDataPoint(a2, v22, v23, v24))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v620 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v620, OS_LOG_TYPE_ERROR, "CLRR,setRacingRouteParameters,racingRouteParameters.lastOnRouteDataPoint is null", buf, 2u);
    }

    v621 = sub_19B87DD40();
    if ((*(v621 + 160) & 0x80000000) != 0 && (*(v621 + 164) & 0x80000000) != 0 && (*(v621 + 168) & 0x80000000) != 0 && !*(v621 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    LOWORD(v625[0]) = 0;
    v609 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,setRacingRouteParameters,racingRouteParameters.lastOnRouteDataPoint is null", v625, 2);
    goto LABEL_116;
  }

  if (!objc_msgSend_lastProjectedDataPoint(a2, v25, v26, v27))
  {
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v622 = qword_1EAFE4790;
    if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v622, OS_LOG_TYPE_ERROR, "CLRR,setRacingRouteParameters,racingRouteParameters.lastProjectedDataPoint is null", buf, 2u);
    }

    v623 = sub_19B87DD40();
    if ((*(v623 + 160) & 0x80000000) != 0 && (*(v623 + 164) & 0x80000000) != 0 && (*(v623 + 168) & 0x80000000) != 0 && !*(v623 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    LOWORD(v625[0]) = 0;
    v609 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 16, "CLRR,setRacingRouteParameters,racingRouteParameters.lastProjectedDataPoint is null", v625, 2);
LABEL_116:
    v624 = v609;
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLRacingRoute::setRacingRouteParameters(CLRacingRouteParameters *)", "CoreLocation: %s\n", v609);
    if (v624 != buf)
    {
      free(v624);
    }

    return 0;
  }

  started = objc_msgSend_startPointOnCurrentRoute(a2, v28, v29, v30);
  objc_msgSend_latitude(started, v32, v33, v34);
  *(a1 + 120) = v35;
  v39 = objc_msgSend_startPointOnCurrentRoute(a2, v36, v37, v38);
  objc_msgSend_longitude(v39, v40, v41, v42);
  *(a1 + 128) = v43;
  v47 = objc_msgSend_startPointOnCurrentRoute(a2, v44, v45, v46);
  objc_msgSend_altitude(v47, v48, v49, v50);
  *(a1 + 136) = v51;
  v55 = objc_msgSend_startPointOnCurrentRoute(a2, v52, v53, v54);
  objc_msgSend_odometer(v55, v56, v57, v58);
  *(a1 + 144) = v59;
  v63 = objc_msgSend_startPointOnCurrentRoute(a2, v60, v61, v62);
  objc_msgSend_timestamp(v63, v64, v65, v66);
  *(a1 + 152) = v67;
  v71 = objc_msgSend_startPointOnCurrentRoute(a2, v68, v69, v70);
  objc_msgSend_timeSinceStart(v71, v72, v73, v74);
  *(a1 + 160) = v75;
  v79 = objc_msgSend_startPointOnCurrentRoute(a2, v76, v77, v78);
  objc_msgSend_offRouteTime(v79, v80, v81, v82);
  *(a1 + 168) = v83;
  v87 = objc_msgSend_startPointOnCurrentRoute(a2, v84, v85, v86);
  objc_msgSend_distanceSinceStart(v87, v88, v89, v90);
  *(a1 + 176) = v91;
  v95 = objc_msgSend_startPointOnCurrentRoute(a2, v92, v93, v94);
  objc_msgSend_offRouteDistance(v95, v96, v97, v98);
  *(a1 + 184) = v99;
  v103 = objc_msgSend_startPointOnCurrentRoute(a2, v100, v101, v102);
  objc_msgSend_averagePace(v103, v104, v105, v106);
  *(a1 + 192) = v107;
  v111 = objc_msgSend_startPointOnCurrentRoute(a2, v108, v109, v110);
  objc_msgSend_distanceAlongReference(v111, v112, v113, v114);
  *(a1 + 200) = v115;
  v119 = objc_msgSend_startPointOnReferenceRoute(a2, v116, v117, v118);
  objc_msgSend_latitude(v119, v120, v121, v122);
  *(a1 + 208) = v123;
  v127 = objc_msgSend_startPointOnReferenceRoute(a2, v124, v125, v126);
  objc_msgSend_longitude(v127, v128, v129, v130);
  *(a1 + 216) = v131;
  v135 = objc_msgSend_startPointOnReferenceRoute(a2, v132, v133, v134);
  objc_msgSend_altitude(v135, v136, v137, v138);
  *(a1 + 224) = v139;
  v143 = objc_msgSend_startPointOnReferenceRoute(a2, v140, v141, v142);
  objc_msgSend_odometer(v143, v144, v145, v146);
  *(a1 + 232) = v147;
  v151 = objc_msgSend_startPointOnReferenceRoute(a2, v148, v149, v150);
  objc_msgSend_timestamp(v151, v152, v153, v154);
  *(a1 + 240) = v155;
  v159 = objc_msgSend_startPointOnReferenceRoute(a2, v156, v157, v158);
  objc_msgSend_timeSinceStart(v159, v160, v161, v162);
  *(a1 + 248) = v163;
  v167 = objc_msgSend_startPointOnReferenceRoute(a2, v164, v165, v166);
  objc_msgSend_offRouteTime(v167, v168, v169, v170);
  *(a1 + 256) = v171;
  v175 = objc_msgSend_startPointOnReferenceRoute(a2, v172, v173, v174);
  objc_msgSend_distanceSinceStart(v175, v176, v177, v178);
  *(a1 + 264) = v179;
  v183 = objc_msgSend_startPointOnReferenceRoute(a2, v180, v181, v182);
  objc_msgSend_offRouteDistance(v183, v184, v185, v186);
  *(a1 + 272) = v187;
  v191 = objc_msgSend_startPointOnReferenceRoute(a2, v188, v189, v190);
  objc_msgSend_averagePace(v191, v192, v193, v194);
  *(a1 + 280) = v195;
  v199 = objc_msgSend_startPointOnReferenceRoute(a2, v196, v197, v198);
  objc_msgSend_distanceAlongReference(v199, v200, v201, v202);
  *(a1 + 288) = v203;
  v207 = objc_msgSend_lastOnRouteDataPoint(a2, v204, v205, v206);
  objc_msgSend_latitude(v207, v208, v209, v210);
  *(a1 + 296) = v211;
  v215 = objc_msgSend_lastOnRouteDataPoint(a2, v212, v213, v214);
  objc_msgSend_longitude(v215, v216, v217, v218);
  *(a1 + 304) = v219;
  v223 = objc_msgSend_lastOnRouteDataPoint(a2, v220, v221, v222);
  objc_msgSend_altitude(v223, v224, v225, v226);
  *(a1 + 312) = v227;
  v231 = objc_msgSend_lastOnRouteDataPoint(a2, v228, v229, v230);
  objc_msgSend_odometer(v231, v232, v233, v234);
  *(a1 + 320) = v235;
  v239 = objc_msgSend_lastOnRouteDataPoint(a2, v236, v237, v238);
  objc_msgSend_timestamp(v239, v240, v241, v242);
  *(a1 + 328) = v243;
  v247 = objc_msgSend_lastOnRouteDataPoint(a2, v244, v245, v246);
  objc_msgSend_timeSinceStart(v247, v248, v249, v250);
  *(a1 + 336) = v251;
  v255 = objc_msgSend_lastOnRouteDataPoint(a2, v252, v253, v254);
  objc_msgSend_offRouteTime(v255, v256, v257, v258);
  *(a1 + 344) = v259;
  v263 = objc_msgSend_lastOnRouteDataPoint(a2, v260, v261, v262);
  objc_msgSend_distanceSinceStart(v263, v264, v265, v266);
  *(a1 + 352) = v267;
  v271 = objc_msgSend_lastOnRouteDataPoint(a2, v268, v269, v270);
  objc_msgSend_offRouteDistance(v271, v272, v273, v274);
  *(a1 + 360) = v275;
  v279 = objc_msgSend_lastOnRouteDataPoint(a2, v276, v277, v278);
  objc_msgSend_averagePace(v279, v280, v281, v282);
  *(a1 + 368) = v283;
  v287 = objc_msgSend_lastOnRouteDataPoint(a2, v284, v285, v286);
  objc_msgSend_distanceAlongReference(v287, v288, v289, v290);
  *(a1 + 376) = v291;
  ProjectedDataPoint = objc_msgSend_lastProjectedDataPoint(a2, v292, v293, v294);
  objc_msgSend_latitude(ProjectedDataPoint, v296, v297, v298);
  *(a1 + 384) = v299;
  v303 = objc_msgSend_lastProjectedDataPoint(a2, v300, v301, v302);
  objc_msgSend_longitude(v303, v304, v305, v306);
  *(a1 + 392) = v307;
  v311 = objc_msgSend_lastProjectedDataPoint(a2, v308, v309, v310);
  objc_msgSend_altitude(v311, v312, v313, v314);
  *(a1 + 400) = v315;
  v319 = objc_msgSend_lastProjectedDataPoint(a2, v316, v317, v318);
  objc_msgSend_odometer(v319, v320, v321, v322);
  *(a1 + 408) = v323;
  v327 = objc_msgSend_lastProjectedDataPoint(a2, v324, v325, v326);
  objc_msgSend_timestamp(v327, v328, v329, v330);
  *(a1 + 416) = v331;
  v335 = objc_msgSend_lastProjectedDataPoint(a2, v332, v333, v334);
  objc_msgSend_timeSinceStart(v335, v336, v337, v338);
  *(a1 + 424) = v339;
  v343 = objc_msgSend_lastProjectedDataPoint(a2, v340, v341, v342);
  objc_msgSend_offRouteTime(v343, v344, v345, v346);
  *(a1 + 432) = v347;
  v351 = objc_msgSend_lastProjectedDataPoint(a2, v348, v349, v350);
  objc_msgSend_distanceSinceStart(v351, v352, v353, v354);
  *(a1 + 440) = v355;
  v359 = objc_msgSend_lastProjectedDataPoint(a2, v356, v357, v358);
  objc_msgSend_offRouteDistance(v359, v360, v361, v362);
  *(a1 + 448) = v363;
  v367 = objc_msgSend_lastProjectedDataPoint(a2, v364, v365, v366);
  objc_msgSend_averagePace(v367, v368, v369, v370);
  *(a1 + 456) = v371;
  v375 = objc_msgSend_lastProjectedDataPoint(a2, v372, v373, v374);
  objc_msgSend_distanceAlongReference(v375, v376, v377, v378);
  *(a1 + 464) = v379;
  v383 = objc_msgSend_racingRouteVariables(a2, v380, v381, v382);
  *(a1 + 474) = objc_msgSend_raceStartPointDetected(v383, v384, v385, v386);
  v390 = objc_msgSend_racingRouteVariables(a2, v387, v388, v389);
  *(a1 + 475) = objc_msgSend_raceEndPointDetected(v390, v391, v392, v393);
  v397 = objc_msgSend_racingRouteVariables(a2, v394, v395, v396);
  *(a1 + 476) = objc_msgSend_userIsOffRoute(v397, v398, v399, v400);
  v404 = objc_msgSend_racingRouteVariables(a2, v401, v402, v403);
  *(a1 + 477) = objc_msgSend_projectedOnNearestPoint(v404, v405, v406, v407);
  v411 = objc_msgSend_racingRouteVariables(a2, v408, v409, v410);
  *(a1 + 478) = objc_msgSend_raceSessionExpired(v411, v412, v413, v414);
  v418 = objc_msgSend_racingRouteVariables(a2, v415, v416, v417);
  *(a1 + 479) = objc_msgSend_rollingBufferReachedEndOfReferenceRoute(v418, v419, v420, v421);
  v425 = objc_msgSend_racingRouteVariables(a2, v422, v423, v424);
  *(a1 + 480) = objc_msgSend_routeConfigurationSuccessful(v425, v426, v427, v428);
  v432 = objc_msgSend_racingRouteVariables(a2, v429, v430, v431);
  *(a1 + 481) = objc_msgSend_racingRouteAnalyticsSent(v432, v433, v434, v435);
  v439 = objc_msgSend_racingRouteVariables(a2, v436, v437, v438);
  *(a1 + 482) = objc_msgSend_prematureRaceEndDetected(v439, v440, v441, v442);
  v446 = objc_msgSend_racingRouteVariables(a2, v443, v444, v445);
  *(a1 + 483) = objc_msgSend_referenceRouteTotalLengthDetermined(v446, v447, v448, v449);
  v453 = objc_msgSend_racingRouteVariables(a2, v450, v451, v452);
  *(a1 + 484) = objc_msgSend_locationPointIsOutsideOfAcceptedRange(v453, v454, v455, v456);
  v460 = objc_msgSend_racingRouteVariables(a2, v457, v458, v459);
  *(a1 + 485) = objc_msgSend_locationPointNotMatched(v460, v461, v462, v463);
  v467 = objc_msgSend_racingRouteVariables(a2, v464, v465, v466);
  *(a1 + 488) = objc_msgSend_routePointsBufferSize(v467, v468, v469, v470);
  v474 = objc_msgSend_racingRouteVariables(a2, v471, v472, v473);
  *(a1 + 492) = objc_msgSend_numberOfRoutePointsToAdd(v474, v475, v476, v477);
  v481 = objc_msgSend_racingRouteVariables(a2, v478, v479, v480);
  *(a1 + 496) = objc_msgSend_offRouteGraceDuration(v481, v482, v483, v484);
  v488 = objc_msgSend_racingRouteVariables(a2, v485, v486, v487);
  *(a1 + 500) = objc_msgSend_matchedPointCounter(v488, v489, v490, v491);
  v495 = objc_msgSend_racingRouteVariables(a2, v492, v493, v494);
  *(a1 + 504) = objc_msgSend_referenceRouteDataPointCounter(v495, v496, v497, v498);
  v502 = objc_msgSend_racingRouteVariables(a2, v499, v500, v501);
  *(a1 + 508) = objc_msgSend_currentRouteDataPointCounter(v502, v503, v504, v505);
  v509 = objc_msgSend_racingRouteVariables(a2, v506, v507, v508);
  *(a1 + 512) = objc_msgSend_offRouteDataPointCounter(v509, v510, v511, v512);
  v516 = objc_msgSend_racingRouteVariables(a2, v513, v514, v515);
  *(a1 + 516) = objc_msgSend_inutileDataPointCounter(v516, v517, v518, v519);
  v523 = objc_msgSend_racingRouteVariables(a2, v520, v521, v522);
  *(a1 + 520) = objc_msgSend_rollingBufferUpdateCounter(v523, v524, v525, v526);
  v530 = objc_msgSend_racingRouteVariables(a2, v527, v528, v529);
  *(a1 + 524) = objc_msgSend_lastMatchedPointIndex(v530, v531, v532, v533);
  v537 = objc_msgSend_racingRouteVariables(a2, v534, v535, v536);
  *(a1 + 528) = objc_msgSend_lastMatchedPointIndexOnReferenceRoute(v537, v538, v539, v540);
  v544 = objc_msgSend_racingRouteVariables(a2, v541, v542, v543);
  *(a1 + 532) = objc_msgSend_rollingBufferStartIndexOnReferenceRoute(v544, v545, v546, v547);
  v551 = objc_msgSend_racingRouteVariables(a2, v548, v549, v550);
  *(a1 + 536) = objc_msgSend_matrixCellIndexForLastMatchedPoint(v551, v552, v553, v554);
  v558 = objc_msgSend_racingRouteVariables(a2, v555, v556, v557);
  objc_msgSend_referenceRouteTotalLength(v558, v559, v560, v561);
  *(a1 + 544) = v562;
  v566 = objc_msgSend_racingRouteVariables(a2, v563, v564, v565);
  objc_msgSend_timestampOfLastMatchedPointOnReferenceRoute(v566, v567, v568, v569);
  *(a1 + 552) = v570;
  v574 = objc_msgSend_racingRouteVariables(a2, v571, v572, v573);
  objc_msgSend_registeredTimeAtThresholdDistance(v574, v575, v576, v577);
  *(a1 + 560) = v578;
  v582 = objc_msgSend_racingRouteVariables(a2, v579, v580, v581);
  objc_msgSend_endOfRaceTimeThreshold(v582, v583, v584, v585);
  *(a1 + 568) = v586;
  v590 = objc_msgSend_racingRouteVariables(a2, v587, v588, v589);
  objc_msgSend_nearestNeighborMaximumAcceptedDistance(v590, v591, v592, v593);
  *(a1 + 576) = v594;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 492) = *(a1 + 488);
  *(a1 + 473) = 1;
  *(a1 + 479) = 0;
  *(a1 + 483) = 0;
  *(a1 + 544) = 0xBFF0000000000000;
  if (qword_1EAFE4788 != -1)
  {
    dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
  }

  v595 = qword_1EAFE4790;
  if (os_log_type_enabled(qword_1EAFE4790, OS_LOG_TYPE_DEFAULT))
  {
    v596 = *(a1 + 473);
    v597 = *(a1 + 524);
    v598 = *(a1 + 528);
    v599 = *(a1 + 552);
    *buf = 67240960;
    v633 = v596;
    v634 = 1026;
    v635 = v597;
    v636 = 1026;
    v637 = v598;
    v638 = 2050;
    v639 = v599;
    _os_log_impl(&dword_19B873000, v595, OS_LOG_TYPE_DEFAULT, "CLRR,setRacingRouteParameters,recoveryMode,%{public}d,lastMatchedPointIndex,%{public}d,lastMatchedPointIndexOnReferenceRoute,%{public}d,timestampOfLastMatchedPointOnReferenceRoute,%{public}.1lf", buf, 0x1Eu);
  }

  v600 = sub_19B87DD40();
  if (*(v600 + 160) > 1 || *(v600 + 164) > 1 || *(v600 + 168) > 1 || *(v600 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4788 != -1)
    {
      dispatch_once(&qword_1EAFE4788, &unk_1F0E6BFC8);
    }

    v601 = *(a1 + 473);
    v602 = *(a1 + 524);
    v603 = *(a1 + 528);
    v604 = *(a1 + 552);
    v625[0] = 67240960;
    v625[1] = v601;
    v626 = 1026;
    v627 = v602;
    v628 = 1026;
    v629 = v603;
    v630 = 2050;
    v631 = v604;
    v605 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4790, 0, "CLRR,setRacingRouteParameters,recoveryMode,%{public}d,lastMatchedPointIndex,%{public}d,lastMatchedPointIndexOnReferenceRoute,%{public}d,timestampOfLastMatchedPointOnReferenceRoute,%{public}.1lf", v625, 30);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLRacingRoute::setRacingRouteParameters(CLRacingRouteParameters *)", "CoreLocation: %s\n", v605);
    if (v605 != buf)
    {
      free(v605);
    }
  }

  return 1;
}

CLRacingRouteParameters *sub_19B927888(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  v77 = objc_msgSend_initWithCapacity_(v2, v3, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 104) - *(a1 + 96)) >> 3), v4);
  if (*(a1 + 104) != *(a1 + 96))
  {
    v5 = 0;
    do
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (*(*(a1 + 96) + 24 * v5 + 8) != *(*(a1 + 96) + 24 * v5))
      {
        v9 = 0;
        v10 = 0;
        do
        {
          v11 = [CLPair alloc];
          v12 = (*(*(a1 + 96) + 24 * v5) + v9);
          v14 = objc_msgSend_initWithFirst_second_(v11, v13, *v12, v12[1]);
          objc_msgSend_addObject_(v8, v15, v14, v16);
          ++v10;
          v9 += 8;
        }

        while (v10 < (*(*(a1 + 96) + 24 * v5 + 8) - *(*(a1 + 96) + 24 * v5)) >> 3);
      }

      objc_msgSend_addObject_(v77, v6, v8, v7);
      ++v5;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 104) - *(a1 + 96)) >> 3) > v5);
  }

  v17 = [CLRacingRouteState alloc];
  v21 = objc_msgSend_initWithLatitude_longitude_altitude_odometer_timestamp_timeSinceStart_offRouteTime_distanceSinceStart_offRouteDistance_averagePace_distanceAlongReference_(v17, v18, v19, v20, *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192), *(a1 + 200));
  v22 = [CLRacingRouteState alloc];
  v26 = objc_msgSend_initWithLatitude_longitude_altitude_odometer_timestamp_timeSinceStart_offRouteTime_distanceSinceStart_offRouteDistance_averagePace_distanceAlongReference_(v22, v23, v24, v25, *(a1 + 208), *(a1 + 216), *(a1 + 224), *(a1 + 232), *(a1 + 240), *(a1 + 248), *(a1 + 256), *(a1 + 264), *(a1 + 272), *(a1 + 280), *(a1 + 288));
  v27 = [CLRacingRouteState alloc];
  v31 = objc_msgSend_initWithLatitude_longitude_altitude_odometer_timestamp_timeSinceStart_offRouteTime_distanceSinceStart_offRouteDistance_averagePace_distanceAlongReference_(v27, v28, v29, v30, *(a1 + 296), *(a1 + 304), *(a1 + 312), *(a1 + 320), *(a1 + 328), *(a1 + 336), *(a1 + 344), *(a1 + 352), *(a1 + 360), *(a1 + 368), *(a1 + 376));
  v32 = [CLRacingRouteState alloc];
  v36 = objc_msgSend_initWithLatitude_longitude_altitude_odometer_timestamp_timeSinceStart_offRouteTime_distanceSinceStart_offRouteDistance_averagePace_distanceAlongReference_(v32, v33, v34, v35, *(a1 + 384), *(a1 + 392), *(a1 + 400), *(a1 + 408), *(a1 + 416), *(a1 + 424), *(a1 + 432), *(a1 + 440), *(a1 + 448), *(a1 + 456), *(a1 + 464));
  v37 = [CLRouteBoundingBox alloc];
  v39 = objc_msgSend_initWithMinLatitude_maxLatitude_minLongitude_maxLongitude_nRows_nColumns_(v37, v38, *(a1 + 88), *(a1 + 92), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  v40 = [CLRacingRouteVariables alloc];
  v76 = *(a1 + 536);
  WORD2(v75) = *(a1 + 484);
  LODWORD(v75) = *(a1 + 480);
  v42 = objc_msgSend_initWithRaceStartPointDetected_raceEndPointDetected_userIsOffRoute_projectedOnNearestPoint_raceSessionExpired_rollingBufferReachedEndOfReferenceRoute_routeConfigurationSuccessful_racingRouteAnalyticsSent_prematureRaceEndDetected_referenceRouteTotalLengthDetermined_locationPointIsOutsideOfAcceptedRange_locationPointNotMatched_routePointsBufferSize_numberOfRoutePointsToAdd_offRouteGraceDuration_matchedPointCounter_referenceRouteDataPointCounter_currentRouteDataPointCounter_offRouteDataPointCounter_inutileDataPointCounter_rollingBufferUpdateCounter_lastMatchedPointIndex_lastMatchedPointIndexOnReferenceRoute_rollingBufferStartIndexOnReferenceRoute_matrixCellIndexForLastMatchedPoint_referenceRouteTotalLength_timestampOfLastMatchedPointOnReferenceRoute_registeredTimeAtThresholdDistance_endOfRaceTimeThreshold_nearestNeighborMaximumAcceptedDistance_(v40, v41, *(a1 + 474), *(a1 + 475), *(a1 + 476), *(a1 + 477), *(a1 + 478), *(a1 + 479), *(a1 + 544), *(a1 + 552), *(a1 + 560), *(a1 + 568), *(a1 + 576), v75, *(a1 + 488), *(a1 + 496), *(a1 + 504), *(a1 + 512), *(a1 + 520), *(a1 + 528), v76);
  v43 = [CLRacingRouteParameters alloc];
  v47 = objc_msgSend_copy(v77, v44, v45, v46);
  v51 = objc_msgSend_copy(v42, v48, v49, v50);
  v55 = objc_msgSend_copy(v21, v52, v53, v54);
  v59 = objc_msgSend_copy(v26, v56, v57, v58);
  v63 = objc_msgSend_copy(v31, v60, v61, v62);
  v67 = objc_msgSend_copy(v36, v64, v65, v66);
  v71 = objc_msgSend_copy(v39, v68, v69, v70);
  started = objc_msgSend_initWithRouteMatrixIndexVec_racingRouteVariables_startPointOnCurrentRoute_startPointOnReferenceRoute_lastOnRouteDataPoint_lastProjectedDataPoint_routeBoundingBox_(v43, v72, v47, v51, v55, v59, v63, v67, v71);

  return started;
}

os_log_t sub_19B927BCC()
{
  result = os_log_create("com.apple.locationd.Position", "RacingRoute");
  qword_1EAFE4790 = result;
  return result;
}

void sub_19B927BFC(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

uint64_t sub_19B927C54(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_19B927CB8(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void sub_19B927D00(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_19B918144(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_19B927D54(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_19B927DC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B927DE8(void *a1)
{
  sub_19B8756F0(a1);

  JUMPOUT(0x19EAE98C0);
}

uint64_t sub_19B927EA4(void *context, uint64_t a2, int a3)
{
  v4 = *(a2 + 8);
  if (a3)
  {
    v5 = sub_19B927E68;
  }

  else
  {
    v5 = sub_19B927E2C;
  }

  CFDictionaryApplyFunction(v4, v5, context);
  v6 = *(*context + 848);

  return v6(context);
}

uint64_t sub_19B927F3C(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v75 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DFF8];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, a2, a4);
  isDirectory = objc_msgSend_fileURLWithPath_isDirectory_(v6, v8, v7, 0);
  if (isDirectory)
  {
    v66 = 0;
    if (objc_opt_respondsToSelector())
    {
      v12 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x1E695DEF0], v10, isDirectory, 0, &v66);
    }

    else
    {
      v12 = objc_msgSend_dataWithContentsOfURL_(MEMORY[0x1E695DEF0], v10, isDirectory, v11);
    }

    v18 = *a1;
    if (!v12)
    {
      (*(v18 + 872))(a1);
      result = v66;
      if (!v66)
      {
        return result;
      }

      v22 = objc_msgSend_domain(v66, v19, v20, v21);
      if (objc_msgSend_isEqual_(v22, v23, *MEMORY[0x1E696A250], v24) && objc_msgSend_code(v66, v25, v26, v27) == 260)
      {
        if (qword_1ED519078 != -1)
        {
          dispatch_once(&qword_1ED519078, &unk_1F0E6C3D0);
        }

        v28 = qword_1ED519080;
        if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_ERROR))
        {
          v32 = objc_msgSend_description(v66, v29, v30, v31);
          v36 = objc_msgSend_UTF8String(v32, v33, v34, v35);
          *buf = 68289538;
          v68 = 0;
          v69 = 2082;
          v70 = "";
          v71 = 2082;
          v72 = a2;
          v73 = 2082;
          v74 = v36;
          _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:file does not exist... clearing, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}", buf, 0x26u);
          if (qword_1ED519078 != -1)
          {
            dispatch_once(&qword_1ED519078, &unk_1F0E6C3D0);
          }
        }

        v37 = qword_1ED519080;
        result = os_signpost_enabled(qword_1ED519080);
        if (!result)
        {
          return result;
        }

        v41 = objc_msgSend_description(v66, v38, v39, v40);
        v45 = objc_msgSend_UTF8String(v41, v42, v43, v44);
        *buf = 68289538;
        v68 = 0;
        v69 = 2082;
        v70 = "";
        v71 = 2082;
        v72 = a2;
        v73 = 2082;
        v74 = v45;
        v16 = "file does not exist... clearing";
        v17 = "{msg%{public}.0s:file does not exist... clearing, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}";
      }

      else
      {
        if (qword_1ED519078 != -1)
        {
          dispatch_once(&qword_1ED519078, &unk_1F0E6C3D0);
        }

        v49 = qword_1ED519080;
        if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_ERROR))
        {
          v53 = objc_msgSend_description(v66, v50, v51, v52);
          v57 = objc_msgSend_UTF8String(v53, v54, v55, v56);
          *buf = 68289538;
          v68 = 0;
          v69 = 2082;
          v70 = "";
          v71 = 2082;
          v72 = a2;
          v73 = 2082;
          v74 = v57;
          _os_log_impl(&dword_19B873000, v49, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Warning Error reading file, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}", buf, 0x26u);
          if (qword_1ED519078 != -1)
          {
            dispatch_once(&qword_1ED519078, &unk_1F0E6C3D0);
          }
        }

        v37 = qword_1ED519080;
        result = os_signpost_enabled(qword_1ED519080);
        if (!result)
        {
          return result;
        }

        v61 = objc_msgSend_description(v66, v58, v59, v60);
        v65 = objc_msgSend_UTF8String(v61, v62, v63, v64);
        *buf = 68289538;
        v68 = 0;
        v69 = 2082;
        v70 = "";
        v71 = 2082;
        v72 = a2;
        v73 = 2082;
        v74 = v65;
        v16 = "#Warning Error reading file";
        v17 = "{msg%{public}.0s:#Warning Error reading file, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}";
      }

      v47 = v37;
      v48 = 38;
      goto LABEL_41;
    }

    if ((*(v18 + 784))(a1))
    {
      return 1;
    }

    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6C3D0);
    }

    v46 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v68 = 0;
      v69 = 2082;
      v70 = "";
      v71 = 2082;
      v72 = a2;
      _os_log_impl(&dword_19B873000, v46, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:could not deserialize property list, file:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6C3D0);
      }
    }

    v14 = qword_1ED519080;
    result = os_signpost_enabled(qword_1ED519080);
    if (result)
    {
      *buf = 68289282;
      v68 = 0;
      v69 = 2082;
      v70 = "";
      v71 = 2082;
      v72 = a2;
      v16 = "could not deserialize property list";
      v17 = "{msg%{public}.0s:could not deserialize property list, file:%{public, location:escape_only}s}";
      goto LABEL_32;
    }
  }

  else
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6C3D0);
    }

    v13 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v68 = 0;
      v69 = 2082;
      v70 = "";
      v71 = 2082;
      v72 = a2;
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Invalid fileURL, filename:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6C3D0);
      }
    }

    v14 = qword_1ED519080;
    result = os_signpost_enabled(qword_1ED519080);
    if (result)
    {
      *buf = 68289282;
      v68 = 0;
      v69 = 2082;
      v70 = "";
      v71 = 2082;
      v72 = a2;
      v16 = "Invalid fileURL";
      v17 = "{msg%{public}.0s:Invalid fileURL, filename:%{public, location:escape_only}s}";
LABEL_32:
      v47 = v14;
      v48 = 28;
LABEL_41:
      _os_signpost_emit_with_name_impl(&dword_19B873000, v47, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v16, v17, buf, v48);
      return 0;
    }
  }

  return result;
}

void sub_19B928574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int buf, int a12, __int128 a13, __int128 a14, __int16 a15, uint64_t a16)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(a1);
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6C3D0);
    }

    v17 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_ERROR))
    {
      buf = 68289538;
      a12 = 0;
      LOWORD(a13) = 2082;
      *(&a13 + 2) = "";
      WORD5(a13) = 2082;
      WORD2(a14) = 2114;
      *(&a14 + 6) = v16;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Can't load data from file, filename:%{public, location:escape_only}s, exception:%{public, location:escape_only}@}", &buf, 0x26u);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6C3D0);
      }
    }

    v18 = qword_1ED519080;
    if (os_signpost_enabled(qword_1ED519080))
    {
      buf = 68289538;
      a12 = 0;
      LOWORD(a13) = 2082;
      *(&a13 + 2) = "";
      WORD5(a13) = 2082;
      WORD2(a14) = 2114;
      *(&a14 + 6) = v16;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Can't load data from file", "{msg%{public}.0s:Can't load data from file, filename:%{public, location:escape_only}s, exception:%{public, location:escape_only}@}", &buf, 0x26u);
    }

    objc_end_catch();
    JUMPOUT(0x19B928478);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19B928704(uint64_t a1, void *a2, int a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  v7 = MEMORY[0x1E695DFF8];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v8, a1, v9);
  isDirectory = objc_msgSend_fileURLWithPath_isDirectory_(v7, v11, v10, 0);
  if (isDirectory)
  {
    v14 = 536870913;
    if (a3)
    {
      v14 = 1;
    }

    if (a3 == 1)
    {
      v15 = 1073741825;
    }

    else
    {
      v15 = v14;
    }

    v41 = 0;
    v16 = objc_msgSend_writeToURL_options_error_(a2, v13, isDirectory, v15, &v41);
    if ((v16 & 1) == 0)
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v17 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_msgSend_description(v41, v18, v19, v20);
        v25 = objc_msgSend_UTF8String(v21, v22, v23, v24);
        *buf = 136446466;
        v47 = a1;
        v48 = 2082;
        v49 = v25;
        _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_ERROR, "Could not write data to disk %{public}s, %{public}s", buf, 0x16u);
      }

      v26 = sub_19B87DD40();
      if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v30 = off_1ED519060;
        v31 = objc_msgSend_description(v41, v27, v28, v29);
        v35 = objc_msgSend_UTF8String(v31, v32, v33, v34);
        v42 = 136446466;
        v43 = a1;
        v44 = 2082;
        v45 = v35;
        v36 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v30, 16, "Could not write data to disk %{public}s, %{public}s", &v42, 22);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLNameValuePair::writeDataToFile(const char *, CFDataRef, CLNVPDataProtection) const", "CoreLocation: %s\n", v36);
        if (v36 != buf)
        {
          free(v36);
        }
      }
    }
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v37 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v47 = a1;
      _os_log_impl(&dword_19B873000, v37, OS_LOG_TYPE_FAULT, "Could not create NSURL for file: %{public}s", buf, 0xCu);
    }

    v38 = sub_19B87DD40();
    if ((*(v38 + 160) & 0x80000000) == 0 || (*(v38 + 164) & 0x80000000) == 0 || (*(v38 + 168) & 0x80000000) == 0 || *(v38 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v42 = 136446210;
      v43 = a1;
      v39 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "Could not create NSURL for file: %{public}s", &v42, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLNameValuePair::writeDataToFile(const char *, CFDataRef, CLNVPDataProtection) const", "CoreLocation: %s\n", v39);
      if (v39 != buf)
      {
        free(v39);
      }
    }

    v16 = 0;
  }

  objc_autoreleasePoolPop(v6);
  return v16;
}

uint64_t sub_19B928AE0(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 768))(a1, &cf))
  {
    v3 = sub_19B928704(a2, cf, 2);
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v4 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v12 = a2;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "Could not serialize data for file %{public}s", buf, 0xCu);
    }

    v5 = sub_19B87DD40();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v9 = 136446210;
      v10 = a2;
      v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "Could not serialize data for file %{public}s", &v9, 12);
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::saveToFile(const char *) const", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    v3 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t sub_19B928D00(uint64_t a1, uint64_t a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  cf = 0;
  sub_19B8B8B78(v11, "CLNameValuePair.SaveToBinaryFile", 0);
  v6 = objc_autoreleasePoolPush();
  if ((*(*a1 + 776))(a1, &cf))
  {
    v7 = sub_19B928704(a2, cf, a3);
  }

  else
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6C3D0);
    }

    v8 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = a2;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not serialize data, file:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6C3D0);
      }
    }

    v9 = qword_1ED519080;
    if (os_signpost_enabled(qword_1ED519080))
    {
      *buf = 68289282;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = a2;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not serialize data", "{msg%{public}.0s:Could not serialize data, file:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v7 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  objc_autoreleasePoolPop(v6);
  sub_19B8B8DC0(v11);
  return v7;
}

void sub_19B928F44(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*a1 + 880))(a1, v5, a3);

  CFRelease(v5);
}

uint64_t sub_19B929004(CFMutableDictionaryRef *a1)
{
  CFDictionaryRemoveAllValues(a1[1]);
  v2 = *(*a1 + 106);

  return v2(a1);
}

void sub_19B929068(uint64_t a1, const __CFString *a2, unsigned int a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x80000000) == 0)
  {
    cf = 0;
    if (!(*(*a1 + 912))(a1, a2, &cf))
    {
      return;
    }

    v6 = CFGetTypeID(cf);
    if (v6 == CFArrayGetTypeID())
    {
      if (CFArrayGetCount(cf) > a3)
      {
        CFArrayRemoveValueAtIndex(cf, a3);
        (*(*a1 + 848))(a1);
LABEL_46:
        CFRelease(cf);
        return;
      }

      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v20 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        sub_19B929670(a2, __p);
        v21 = SBYTE3(v38);
        v22 = *__p;
        Count = CFArrayGetCount(cf);
        v24 = __p;
        *buf = 136446722;
        if (v21 < 0)
        {
          v24 = v22;
        }

        v40 = v24;
        v41 = 1026;
        v42 = a3;
        v43 = 2050;
        v44 = Count;
        _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_FAULT, "key %{public}s does not have element %{public}d in array of size %{public}ld", buf, 0x1Cu);
        if (SBYTE3(v38) < 0)
        {
          operator delete(*__p);
        }
      }

      v25 = sub_19B87DD40();
      if ((*(v25 + 160) & 0x80000000) != 0 && (*(v25 + 164) & 0x80000000) != 0 && (*(v25 + 168) & 0x80000000) != 0 && !*(v25 + 152))
      {
        goto LABEL_46;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v26 = off_1ED519060;
      sub_19B929670(a2, v31);
      v27 = v32;
      v28 = v31[0];
      v29 = CFArrayGetCount(cf);
      v30 = v31;
      *__p = 136446722;
      if (v27 < 0)
      {
        v30 = v28;
      }

      *&__p[4] = v30;
      v35 = 1026;
      v36 = a3;
      v37 = 2050;
      v38 = v29;
      v19 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v26, 17, "key %{public}s does not have element %{public}d in array of size %{public}ld", __p, 28);
      if (v32 < 0)
      {
        operator delete(v31[0]);
      }
    }

    else
    {
      if (!a3)
      {
        (*(*a1 + 888))(a1, a2);
        goto LABEL_46;
      }

      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v8 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        sub_19B929670(a2, __p);
        v9 = SBYTE3(v38);
        v10 = *__p;
        v11 = CFGetTypeID(cf);
        v12 = __p;
        if (v9 < 0)
        {
          v12 = v10;
        }

        *buf = 136446722;
        v40 = v12;
        v41 = 1026;
        v42 = a3;
        v43 = 2050;
        v44 = v11;
        _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "key %{public}s does not have element %{public}d in non-array type %{public}lu", buf, 0x1Cu);
        if (SBYTE3(v38) < 0)
        {
          operator delete(*__p);
        }
      }

      v13 = sub_19B87DD40();
      if ((*(v13 + 160) & 0x80000000) != 0 && (*(v13 + 164) & 0x80000000) != 0 && (*(v13 + 168) & 0x80000000) != 0 && !*(v13 + 152))
      {
        goto LABEL_46;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v14 = off_1ED519060;
      sub_19B929670(a2, v31);
      v15 = v32;
      v16 = v31[0];
      v17 = CFGetTypeID(cf);
      v18 = v31;
      if (v15 < 0)
      {
        v18 = v16;
      }

      *__p = 136446722;
      *&__p[4] = v18;
      v35 = 1026;
      v36 = a3;
      v37 = 2050;
      v38 = v17;
      v19 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v14, 17, "key %{public}s does not have element %{public}d in non-array type %{public}lu", __p, 28);
      if (v32 < 0)
      {
        operator delete(v31[0]);
      }
    }

    sub_19B885924("Generic", 1, 0, 0, "virtual void CLNameValuePair::clearInternal(const CFStringRef, int)", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }

    goto LABEL_46;
  }

  v7 = *(*a1 + 888);

  v7();
}

void sub_19B929630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B929670@<X0>(const __CFString *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = sub_19B92C864(a1, a2);
  if ((result & 1) == 0)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }
  }

  return result;
}

void sub_19B9296C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9296E0(CFMutableDictionaryRef *a1, const void *a2)
{
  CFDictionaryRemoveValue(a1[1], a2);
  v3 = *(*a1 + 106);

  return v3(a1);
}

void sub_19B929858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B929874(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, a2, a4);
  v6 = *(*a1 + 920);

  return v6(a1, v5);
}

uint64_t sub_19B92991C(uint64_t a1, const char *a2, _WORD *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_19B929990(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_19B929990(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  *buf = 0;
  v6 = sub_19B8765C0(cf, buf);
  if (v6)
  {
    *a3 = *buf;
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v7 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = a2;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v10 = off_1ED519060;
      v11 = (*(*a1 + 840))(a1);
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = a2;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v15, 22);
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, uint16_t &, int) const", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_19B929C4C(uint64_t a1, const char *a2, _WORD *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_19B929CC0(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_19B929CC0(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = cf;
  v7 = CFGetTypeID(cf);
  if (v7 == CFNumberGetTypeID())
  {
    if (!CFNumberGetValue(v6, kCFNumberSInt16Type, a3))
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v8 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "could not get value", buf, 2u);
      }

      v9 = sub_19B87DD40();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        LOWORD(v21) = 0;
        v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "could not get value", &v21, 2);
        sub_19B885924("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, short &)", "CoreLocation: %s\n", v10);
        if (v10 != buf)
        {
          free(v10);
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    buf[0] = 0;
    v12 = CFGetTypeID(v6);
    if (v12 != CFBooleanGetTypeID() || (sub_19B876AEC(v6, buf) & 1) == 0)
    {
LABEL_21:
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v13 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        v14 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v26 = v14;
        v27 = 2112;
        v28 = a2;
        _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v15 = sub_19B87DD40();
      if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v16 = off_1ED519060;
        v17 = (*(*a1 + 840))(a1);
        v21 = 138412546;
        v22 = v17;
        v23 = 2112;
        v24 = a2;
        v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v16, 17, "Unsupported type at %@:%@ (domain:key)", &v21, 22);
        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, short &, int) const", "CoreLocation: %s\n", v18);
        if (v18 != buf)
        {
          free(v18);
        }
      }

      v11 = 0;
      goto LABEL_33;
    }

    *a3 = buf[0];
  }

  v11 = 1;
LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t sub_19B92A10C(uint64_t a1, const char *a2, _DWORD *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_19B92A180(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_19B92A180(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  *buf = 0;
  v6 = sub_19B92C2E0(cf, buf);
  if (v6)
  {
    *a3 = *buf;
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v7 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      *&buf[4] = v8;
      v20 = 2112;
      v21 = a2;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v10 = off_1ED519060;
      v11 = (*(*a1 + 840))(a1);
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = a2;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v15, 22);
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, uint32_t &, int) const", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_19B92A43C(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_19B92A4B0(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_19B92A4B0(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = sub_19B92C2E0(cf, a3);
  if ((v6 & 1) == 0)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v7 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = a2;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v10 = off_1ED519060;
      v11 = (*(*a1 + 840))(a1);
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = a2;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v15, 22);
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, int64_t &, int) const", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_19B92A75C(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_19B92A7D0(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_19B92A7D0(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = cf;
  v7 = CFGetTypeID(cf);
  if (v7 == CFNumberGetTypeID())
  {
    if (!CFNumberGetValue(v6, kCFNumberLongType, a3))
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v8 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "could not get value", buf, 2u);
      }

      v9 = sub_19B87DD40();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        LOWORD(v21) = 0;
        v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "could not get value", &v21, 2);
        sub_19B885924("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, long &)", "CoreLocation: %s\n", v10);
        if (v10 != buf)
        {
          free(v10);
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    buf[0] = 0;
    v12 = CFGetTypeID(v6);
    if (v12 != CFBooleanGetTypeID() || (sub_19B876AEC(v6, buf) & 1) == 0)
    {
LABEL_21:
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v13 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        v14 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v26 = v14;
        v27 = 2112;
        v28 = a2;
        _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v15 = sub_19B87DD40();
      if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v16 = off_1ED519060;
        v17 = (*(*a1 + 840))(a1);
        v21 = 138412546;
        v22 = v17;
        v23 = 2112;
        v24 = a2;
        v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v16, 17, "Unsupported type at %@:%@ (domain:key)", &v21, 22);
        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, long &, int) const", "CoreLocation: %s\n", v18);
        if (v18 != buf)
        {
          free(v18);
        }
      }

      v11 = 0;
      goto LABEL_33;
    }

    *a3 = buf[0];
  }

  v11 = 1;
LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t sub_19B92AC1C(uint64_t a1, const char *a2, float *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v9 = 0.0;
  v6 = sub_19B92AD64(a1, v5, &v9);
  if (v6)
  {
    v7 = v9;
    *a3 = v7;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

float sub_19B92ACA8(uint64_t a1, uint64_t a2, float *a3)
{
  v5 = 0.0;
  if (sub_19B92AD64(a1, a2, &v5))
  {
    result = v5;
    *a3 = result;
  }

  return result;
}

uint64_t sub_19B92ACF0(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_19B92AD64(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_19B92AD64(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = sub_19B92C4EC(cf, a3);
  if ((v6 & 1) == 0)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v7 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = a2;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v10 = off_1ED519060;
      v11 = (*(*a1 + 840))(a1);
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = a2;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v15, 22);
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, double &, int) const", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_19B92B010(uint64_t a1, const char *a2, std::string *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_19B92B084(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_19B92B084(uint64_t a1, uint64_t a2, std::string *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = sub_19B92C864(cf, a3);
  if ((v6 & 1) == 0)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v7 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = a2;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v10 = off_1ED519060;
      v11 = (*(*a1 + 840))(a1);
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = a2;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v15, 22);
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, std::string &, int) const", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_19B92B330(uint64_t a1, const char *a2, CFTypeRef *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_19B92B3A4(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t sub_19B92B3A4(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  cf = 0;
  result = (*(*a1 + 904))(a1, a2, &cf);
  if (result)
  {
    v7 = CFGetTypeID(cf);
    if (v7 == CFStringGetTypeID())
    {
      v8 = cf;
      *a3 = cf;
      CFAutorelease(v8);
      return 1;
    }

    else
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v9 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        sub_19B929670(a2, __p);
        v10 = v31 >= 0 ? __p : *__p;
        v11 = CFGetTypeID(cf);
        TypeID = CFStringGetTypeID();
        *buf = 136446722;
        v34 = v10;
        v35 = 2050;
        v36 = v11;
        v37 = 2050;
        v38 = TypeID;
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_FAULT, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", buf, 0x20u);
        if (SHIBYTE(v31) < 0)
        {
          operator delete(*__p);
        }
      }

      v13 = sub_19B87DD40();
      if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v14 = off_1ED519060;
        sub_19B929670(a2, v25);
        if (v26 >= 0)
        {
          v15 = v25;
        }

        else
        {
          v15 = v25[0];
        }

        v16 = CFGetTypeID(cf);
        v17 = CFStringGetTypeID();
        *__p = 136446722;
        *&__p[4] = v15;
        v29 = 2050;
        v30 = v16;
        v31 = 2050;
        v32 = v17;
        v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v14, 17, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", __p, 32);
        if (v26 < 0)
        {
          operator delete(v25[0]);
        }

        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFStringRef &, int) const", "CoreLocation: %s\n", v18);
        if (v18 != buf)
        {
          free(v18);
        }
      }

      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v19 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        v20 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v34 = v20;
        v35 = 2112;
        v36 = a2;
        _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v21 = sub_19B87DD40();
      if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v22 = off_1ED519060;
        v23 = (*(*a1 + 840))(a1);
        *__p = 138412546;
        *&__p[4] = v23;
        v29 = 2112;
        v30 = a2;
        v24 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v22, 17, "Unsupported type at %@:%@ (domain:key)", __p, 22);
        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFStringRef &, int) const", "CoreLocation: %s\n", v24);
        if (v24 != buf)
        {
          free(v24);
        }
      }

      CFRelease(cf);
      return 0;
    }
  }

  return result;
}

void sub_19B92B85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B92B894(uint64_t a1, const char *a2, const UInt8 **a3, _DWORD *a4, uint64_t a5)
{
  v9 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v10 = sub_19B92B914(a1, v9, a3, a4, a5);
  CFRelease(v9);
  return v10;
}

BOOL sub_19B92B914(uint64_t a1, CFTypeID a2, const UInt8 **a3, _DWORD *a4, uint64_t a5)
{
  v37 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf, a5))
  {
    return 0;
  }

  v9 = cf;
  v10 = CFGetTypeID(cf);
  v11 = v10 == CFDataGetTypeID();
  v12 = v11;
  if (v11)
  {
    *a3 = CFDataGetBytePtr(v9);
    *a4 = CFDataGetLength(v9);
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v13 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      v14 = CFGetTypeID(v9);
      TypeID = CFDataGetTypeID();
      *buf = 134349312;
      v34 = v14;
      v35 = 2050;
      v36 = TypeID;
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_FAULT, "type IDs do not match - %{public}lu vs %{public}lu", buf, 0x16u);
    }

    v16 = sub_19B87DD40();
    if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v17 = off_1ED519060;
      v18 = CFGetTypeID(v9);
      v19 = CFDataGetTypeID();
      v29 = 134349312;
      v30 = v18;
      v31 = 2050;
      v32 = v19;
      v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v17, 17, "type IDs do not match - %{public}lu vs %{public}lu", &v29, 22);
      sub_19B885924("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, const char *&, unsigned int &)", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v21 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      v22 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v34 = v22;
      v35 = 2112;
      v36 = a2;
      _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v23 = sub_19B87DD40();
    if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v24 = off_1ED519060;
      v25 = (*(*a1 + 840))(a1);
      v29 = 138412546;
      v30 = v25;
      v31 = 2112;
      v32 = a2;
      v26 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v24, 17, "Unsupported type at %@:%@ (domain:key)", &v29, 22);
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, const char *&, unsigned int &, int) const", "CoreLocation: %s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }
  }

  CFRelease(cf);
  return v12;
}

BOOL sub_19B92BD80(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v7 = sub_19B92BDF4(a1, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

BOOL sub_19B92BDF4(uint64_t a1, CFTypeID a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = cf;
  v7 = CFGetTypeID(cf);
  v8 = v7 == CFDictionaryGetTypeID();
  v9 = v8;
  if (v8)
  {
    if (v6)
    {
      v10 = a3[1];
      if (v10)
      {
        CFRelease(v10);
      }

      a3[1] = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v6);
      (*(*a3 + 848))(a3);
    }

    else
    {
      (*(*a3 + 872))(a3);
    }
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v11 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      v12 = CFGetTypeID(v6);
      TypeID = CFDictionaryGetTypeID();
      *buf = 134349312;
      v32 = v12;
      v33 = 2050;
      v34 = TypeID;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_FAULT, "type IDs do not match - %{public}lu vs %{public}lu", buf, 0x16u);
    }

    v14 = sub_19B87DD40();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v15 = off_1ED519060;
      v16 = CFGetTypeID(v6);
      v17 = CFDictionaryGetTypeID();
      v27 = 134349312;
      v28 = v16;
      v29 = 2050;
      v30 = v17;
      v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v15, 17, "type IDs do not match - %{public}lu vs %{public}lu", &v27, 22);
      sub_19B885924("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, CLNameValuePair &)", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v19 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      v20 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v32 = v20;
      v33 = 2112;
      v34 = a2;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    v21 = sub_19B87DD40();
    if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v22 = off_1ED519060;
      v23 = (*(*a1 + 840))(a1);
      v27 = 138412546;
      v28 = v23;
      v29 = 2112;
      v30 = a2;
      v24 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v22, 17, "Unsupported type at %@:%@ (domain:key)", &v27, 22);
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CLNameValuePair &, int) const", "CoreLocation: %s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t sub_19B92C2E0(const void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = CFGetTypeID(a1);
  if (v4 == CFNumberGetTypeID())
  {
    if (!CFNumberGetValue(a1, kCFNumberSInt64Type, a2))
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v5 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "could not get value", buf, 2u);
      }

      v6 = sub_19B87DD40();
      if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v10[0] = 0;
        v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "could not get value", v10, 2);
        sub_19B885924("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, int64_t &)", "CoreLocation: %s\n", v7);
        if (v7 != buf)
        {
          free(v7);
        }
      }

      return 0;
    }

    return 1;
  }

  buf[0] = 0;
  v8 = CFGetTypeID(a1);
  if (v8 == CFBooleanGetTypeID())
  {
    result = sub_19B876AEC(a1, buf);
    if (!result)
    {
      return result;
    }

    *a2 = buf[0];
    return 1;
  }

  return 0;
}

uint64_t sub_19B92C4EC(const void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = CFGetTypeID(a1);
  if (v4 != CFNumberGetTypeID())
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 134349312;
      v17 = CFGetTypeID(a1);
      v18 = 2050;
      TypeID = CFNumberGetTypeID();
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "type IDs do not match - %{public}lu vs %{public}lu", buf, 0x16u);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) != 0 && (*(v7 + 164) & 0x80000000) != 0 && (*(v7 + 168) & 0x80000000) != 0 && !*(v7 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v8 = off_1ED519060;
    v12 = 134349312;
    v13 = CFGetTypeID(a1);
    v14 = 2050;
    v15 = CFNumberGetTypeID();
    v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v8, 17, "type IDs do not match - %{public}lu vs %{public}lu", &v12, 22);
    sub_19B885924("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, double &)", "CoreLocation: %s\n", v9);
    if (v9 == buf)
    {
      return 0;
    }

    goto LABEL_25;
  }

  if (CFNumberGetValue(a1, kCFNumberFloat64Type, a2))
  {
    return 1;
  }

  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
  }

  v10 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "could not get value", buf, 2u);
  }

  v11 = sub_19B87DD40();
  if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    LOWORD(v12) = 0;
    v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "could not get value", &v12, 2);
    sub_19B885924("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, double &)", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
LABEL_25:
      free(v9);
    }
  }

  return 0;
}

uint64_t sub_19B92C864(const __CFString *cf, std::string *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      CStringPtr = CFStringGetCStringPtr(cf, 0x8000100u);
      if (!CStringPtr)
      {
        *bufferSize = 0;
        v37.length = CFStringGetLength(cf);
        v37.location = 0;
        CFStringGetBytes(cf, v37, 0x8000100u, 0, 0, 0, 0, bufferSize);
        ++*bufferSize;
        operator new[]();
      }

      sub_19B8D7878(a2, CStringPtr);
      return 1;
    }

    v7 = CFGetTypeID(cf);
    if (v7 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(cf);
      Length = CFDataGetLength(cf);
      if (BytePtr)
      {
        v10 = xmlBufferCreate();
        if (v10)
        {
          v11 = v10;
          v12 = xmlNewTextWriterMemory(v10, 0);
          if (v12)
          {
            v13 = v12;
            v14 = xmlTextWriterWriteBase64(v12, BytePtr, 0, Length);
            v6 = v14 != -1;
            if (v14 != -1)
            {
              xmlTextWriterFlush(v13);
              v15 = xmlBufferContent(v11);
              v16 = xmlBufferLength(v11);
              if (qword_1ED519058 != -1)
              {
                dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
              }

              v17 = off_1ED519060;
              if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134218498;
                *&buf[4] = v15;
                *&buf[12] = 1024;
                *&buf[14] = v16;
                *&buf[18] = 2080;
                *&buf[20] = v15;
                _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEBUG, "processed %p %d to (%s)", buf, 0x1Cu);
              }

              v18 = sub_19B87DD40();
              if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1ED519058 != -1)
                {
                  dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
                }

                *bufferSize = 134218498;
                *&bufferSize[4] = v15;
                v31 = 1024;
                v32 = v16;
                v33 = 2080;
                v34 = v15;
                v19 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 2, "processed %p %d to (%s)", bufferSize, 28);
                sub_19B885924("Generic", 1, 0, 2, "static BOOL CLNameValuePair::encodeBase64(const void *, unsigned long, std::string &)", "CoreLocation: %s\n", v19);
                if (v19 != buf)
                {
                  free(v19);
                }
              }

              if (v16 < 0)
              {
                sub_19B890AD4();
              }

              if (v16 >= 0x17)
              {
                operator new();
              }

              buf[23] = v16;
              if (v16)
              {
                memmove(buf, v15, v16);
              }

              buf[v16] = 0;
              if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(a2->__r_.__value_.__l.__data_);
              }

              *&a2->__r_.__value_.__l.__data_ = *buf;
              a2->__r_.__value_.__r.__words[2] = *&buf[16];
            }

            xmlFreeTextWriter(v13);
          }

          else
          {
            v6 = 0;
          }

          xmlBufferFree(v11);
          return v6;
        }
      }

      else
      {
        if (qword_1ED519058 != -1)
        {
          dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
        }

        v27 = off_1ED519060;
        if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
        {
          *buf = 67240192;
          *&buf[4] = Length;
          _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_FAULT, "can't convert %{public}u data bytes", buf, 8u);
        }

        v28 = sub_19B87DD40();
        if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED519058 != -1)
          {
            dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
          }

          *bufferSize = 67240192;
          *&bufferSize[4] = Length;
          v29 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "can't convert %{public}u data bytes", bufferSize, 8);
          sub_19B885924("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, std::string &)", "CoreLocation: %s\n", v29);
          if (v29 != buf)
          {
            free(v29);
          }
        }
      }

      return 0;
    }
  }

  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
  }

  v20 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_DEFAULT))
  {
    if (cf)
    {
      v21 = CFGetTypeID(cf);
    }

    else
    {
      v21 = -1;
    }

    *buf = 134349056;
    *&buf[4] = v21;
    _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_DEFAULT, "#Warning type IDs do not match - %{public}lu", buf, 0xCu);
  }

  v22 = sub_19B87DD40();
  if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v23 = off_1ED519060;
    if (cf)
    {
      v24 = CFGetTypeID(cf);
    }

    else
    {
      v24 = -1;
    }

    *bufferSize = 134349056;
    *&bufferSize[4] = v24;
    v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v23, 0, "#Warning type IDs do not match - %{public}lu", bufferSize, 12);
    sub_19B885924("Generic", 1, 0, 2, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, std::string &)", "CoreLocation: %s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    a2->__r_.__value_.__l.__size_ = 0;
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&a2->__r_.__value_.__s + 23) = 0;
  }

  v6 = 0;
  a2->__r_.__value_.__s.__data_[0] = 0;
  return v6;
}

BOOL sub_19B92D0EC(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 912))(a1, a2, &cf))
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  v6 = v5 == CFArrayGetTypeID();
  v7 = v6;
  if (v6)
  {
    *a3 = cf;
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v8 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v9 = v25 >= 0 ? __p : *__p;
      v10 = CFGetTypeID(cf);
      TypeID = CFArrayGetTypeID();
      *buf = 136446722;
      v28 = v9;
      v29 = 2050;
      v30 = v10;
      v31 = 2050;
      v32 = TypeID;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", buf, 0x20u);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(*__p);
      }
    }

    v12 = sub_19B87DD40();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v13 = off_1ED519060;
      v14 = v19;
      sub_19B929670(a2, v19);
      if (v20 < 0)
      {
        v14 = v19[0];
      }

      v15 = CFGetTypeID(cf);
      v16 = CFArrayGetTypeID();
      *__p = 136446722;
      *&__p[4] = v14;
      v23 = 2050;
      v24 = v15;
      v25 = 2050;
      v26 = v16;
      v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v13, 17, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", __p, 32);
      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFArrayRef &) const", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  CFAutorelease(cf);
  return v7;
}

void sub_19B92D3D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B92D410(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  v6 = v5 == CFDataGetTypeID();
  v7 = v6;
  if (v6)
  {
    *a3 = cf;
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v8 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v9 = v25 >= 0 ? __p : *__p;
      v10 = CFGetTypeID(cf);
      TypeID = CFDataGetTypeID();
      *buf = 136446722;
      v28 = v9;
      v29 = 2050;
      v30 = v10;
      v31 = 2050;
      v32 = TypeID;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", buf, 0x20u);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(*__p);
      }
    }

    v12 = sub_19B87DD40();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v13 = off_1ED519060;
      v14 = v19;
      sub_19B929670(a2, v19);
      if (v20 < 0)
      {
        v14 = v19[0];
      }

      v15 = CFGetTypeID(cf);
      v16 = CFDataGetTypeID();
      *__p = 136446722;
      *&__p[4] = v14;
      v23 = 2050;
      v24 = v15;
      v25 = 2050;
      v26 = v16;
      v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v13, 17, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", __p, 32);
      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFDataRef &, int) const", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  CFAutorelease(cf);
  return v7;
}

void sub_19B92D6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B92D79C(uint64_t a1, const char *a2, unsigned __int16 *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92D808(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92D808(uint64_t a1, const __CFString *a2, unsigned __int16 *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  LODWORD(valuePtr[0]) = *a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, valuePtr);
      v7 = v18 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(valuePtr, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v9 = off_1ED519060;
      sub_19B929670(a2, buf);
      if (v14 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v15 = 136446210;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, valuePtr, 1628, &dword_19B873000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const uint16_t &)", "CoreLocation: %s\n", v11);
      if (v11 != valuePtr)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B92DAAC(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92DB18(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92DB18(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v9 = off_1ED519060;
      sub_19B929670(a2, buf);
      if (v14 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v15 = 136446210;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const short &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B92DDB0(uint64_t a1, const char *a2, unsigned int *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92DE1C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92DE1C(uint64_t a1, const __CFString *a2, unsigned int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  valuePtr[0] = *a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, valuePtr);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, valuePtr);
      v7 = v18 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(valuePtr, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v9 = off_1ED519060;
      sub_19B929670(a2, buf);
      if (v14 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v15 = 136446210;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, valuePtr, 1628, &dword_19B873000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const uint32_t &)", "CoreLocation: %s\n", v11);
      if (v11 != valuePtr)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B92E0C0(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92E12C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92E12C(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v9 = off_1ED519060;
      sub_19B929670(a2, buf);
      if (v14 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v15 = 136446210;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const int64_t &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}

BOOL sub_19B92E3C4(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B92E430(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_19B92E430(uint64_t a1, const __CFString *a2, const void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
    }

    v6 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      sub_19B929670(a2, __p);
      v7 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6C3B0);
      }

      v9 = off_1ED519060;
      sub_19B929670(a2, buf);
      if (v14 >= 0)
      {
        v10 = buf;
      }

      else
      {
        v10 = *buf;
      }

      v15 = 136446210;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, v9, 17, "could not create cf type for key %{public}s", &v15, 12);
      if (v14 < 0)
      {
        operator delete(*buf);
      }

      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::set(CFStringRef, const long &)", "CoreLocation: %s\n", v11);
      if (v11 != __p)
      {
        free(v11);
      }
    }
  }

  return v5 != 0;
}
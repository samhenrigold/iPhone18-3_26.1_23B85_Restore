void sub_19B94D5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_19B94FA90(va);
  _Unwind_Resume(a1);
}

void sub_19B94D6A8(uint64_t a1, __int128 *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = vsubq_f64(*(a2 + 8), *(a1 + 80));
  v55 = v4;
  if (*(a1 + 1) == 1)
  {
    v5 = sqrt(vaddvq_f64(vmulq_f64(v4, v4)));
    v6 = *(a1 + 512);
    v7 = *(a1 + 520);
    if (v6 >= v7)
    {
      v9 = *(a1 + 504);
      v10 = v6 - v9;
      v11 = (v6 - v9) >> 3;
      v12 = v11 + 1;
      if ((v11 + 1) >> 61)
      {
        sub_19B8F3F74();
      }

      v13 = v7 - v9;
      if (v13 >> 2 > v12)
      {
        v12 = v13 >> 2;
      }

      v14 = v13 >= 0x7FFFFFFFFFFFFFF8;
      v15 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v14)
      {
        v15 = v12;
      }

      if (v15)
      {
        sub_19B8D9954(a1 + 504, v15);
      }

      v16 = (v6 - v9) >> 3;
      v17 = (8 * v11);
      v18 = (8 * v11 - 8 * v16);
      *v17 = v5;
      v8 = v17 + 1;
      memcpy(v18, v9, v10);
      v19 = *(a1 + 504);
      *(a1 + 504) = v18;
      *(a1 + 512) = v8;
      *(a1 + 520) = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v6 = v5;
      v8 = v6 + 1;
    }

    *(a1 + 512) = v8;
  }

  v20 = 0;
  v54[0] = *(a2 + 3) * *(a2 + 3) * 0.5;
  v54[1] = v54[0];
  v53[0] = 0x3FF0000000000000;
  v53[1] = 0;
  v53[2] = 0;
  v53[3] = 0x3FF0000000000000;
  v21 = 1;
  v22 = 0.0;
  v23 = 0.0;
  while (1)
  {
    v24 = v21;
    v25 = sub_19B94FF2C(v53, v20, 0);
    v26 = *(a1 + 120);
    v27 = sub_19B94FF2C(v53, v20, 1uLL);
    v28 = sub_19B94FF2C(v53, v20, 0);
    v29 = *(a1 + 128);
    v30 = *(a1 + 136);
    v31 = v25 * v26;
    v32 = sub_19B950834(v54, v20) + v25 * v31;
    if (v32 <= 0.0)
    {
      break;
    }

    v33 = sub_19B950834(v54, v20);
    v34 = v27 + v28 * v30;
    v35 = v34 * v29;
    v36 = 1.0 / v32;
    *(a1 + 120) = *(a1 + 120) * (1.0 / v32 * v33);
    v37 = v32 + v34 * (v34 * v29);
    if (v37 <= 0.0)
    {
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
      }

      v45 = off_1ED519060;
      if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v59 = v20;
        _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_DEBUG, "%zu: alpha <= 0, matrix ! positive definite", buf, 0xCu);
      }

      v46 = sub_19B87DD40();
      if (*(v46 + 160) > 1 || *(v46 + 164) > 1 || *(v46 + 168) > 1 || (v23 = 0.0, v22 = 0.0, *(v46 + 152)))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519058 == -1)
        {
LABEL_38:
          v56 = 134217984;
          v57 = v20;
          v47 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 2, "%zu: alpha <= 0, matrix ! positive definite", &v56, 12);
          sub_19B885924("Generic", 1, 0, 2, "CMVector<T, N> CMFactoredMatrix<double, 2>::biermanObservationalUpdate(const CMMatrix<T, P, N> &, const CMVector<T, P> &, const CMVector<T, P> &) [T = double, N = 2, P = 2UL]", "CoreLocation: %s\n", v47);
          if (v47 != buf)
          {
            free(v47);
          }

          v23 = 0.0;
          v22 = 0.0;
          goto LABEL_41;
        }

LABEL_44:
        dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
        goto LABEL_38;
      }

      goto LABEL_41;
    }

    v38 = 1.0 / v37;
    v39 = v32 * (1.0 / v37);
    v40 = *(a1 + 136);
    *(a1 + 128) = v39 * *(a1 + 128);
    *(a1 + 136) = v40 + v31 * -(v34 * v36);
    v41 = sub_19B950834(&v55, v20);
    v21 = 0;
    v42 = v38 * v41;
    v22 = v22 + v42 * (v31 + v35 * v40);
    v23 = v23 + v42 * v35;
    v20 = 1;
    if ((v24 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
  }

  v43 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v59 = v20;
    _os_log_impl(&dword_19B873000, v43, OS_LOG_TYPE_DEBUG, "%zu: alpha <= 0, matrix ! positive definite", buf, 0xCu);
  }

  v44 = sub_19B87DD40();
  if (*(v44 + 160) > 1 || *(v44 + 164) > 1 || *(v44 + 168) > 1 || (v23 = 0.0, v22 = 0.0, *(v44 + 152)))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_44;
  }

LABEL_41:
  v48 = v23 + *(a1 + 88);
  *(a1 + 80) = v22 + *(a1 + 80);
  *(a1 + 88) = v48;
  *(a1 + 72) = *a2;
  *(a1 + 100) = *(a2 + 9);
  v49 = *(a1 + 232);
  v51 = a2[1];
  v50 = a2[2];
  v52 = *a2;
  *(a1 + 224) = *(a2 + 6);
  *(a1 + 192) = v51;
  *(a1 + 208) = v50;
  *(a1 + 176) = v52;
  if ((v49 & 1) == 0)
  {
    *(a1 + 232) = 1;
  }
}

void sub_19B94DC44(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v5 = a4;
  v81 = *MEMORY[0x1E69E9840];
  v10 = objc_msgSend_objectAtIndexedSubscript_(a2, a2, a3, a4);
  v14 = objc_msgSend_deltaPosition_m(v10, v11, v12, v13);
  isValid = objc_msgSend_isValid(v14, v15, v16, v17);
  if (a3 && ((isValid | v5 ^ 1) & 1) != 0)
  {
    if ((isValid | v5))
    {
      v21 = objc_msgSend_objectAtIndexedSubscript_(a2, v19, a3, v20);
      v25 = objc_msgSend_cfAbsTimestamp(v21, v22, v23, v24);
      objc_msgSend_timeIntervalSinceReferenceDate(v25, v26, v27, v28);
      v30 = v29;
      v33 = objc_msgSend_objectAtIndexedSubscript_(a2, v31, a3 - 1, v32);
      v37 = objc_msgSend_cfAbsTimestamp(v33, v34, v35, v36);
      objc_msgSend_timeIntervalSinceReferenceDate(v37, v38, v39, v40);
      v44 = v30 - v43;
      v45 = v30 - a5;
      if (v45 < 0.0 && *a1 == 1)
      {
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
        }

        v46 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v46, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[interpolateInertialOdometryDeltaPosition] time between first inertial to next location is negative.", buf, 2u);
        }

        v47 = sub_19B87DD40();
        if ((*(v47 + 160) & 0x80000000) == 0 || (*(v47 + 164) & 0x80000000) == 0 || (*(v47 + 168) & 0x80000000) == 0 || *(v47 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
          }

          v79[0] = 0;
          v48 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLPedestrianRTSSmoother]:[interpolateInertialOdometryDeltaPosition] time between first inertial to next location is negative.", v79, 2);
          sub_19B885924("Generic", 1, 0, 0, "void CLPedestrianRTSSmoother::interpolateInertialOdometryDeltaPosition(NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, const size_t, const CFAbsoluteTime, const BOOL)", "CoreLocation: %s\n", v48);
          if (v48 != buf)
          {
            free(v48);
          }
        }
      }

      v49 = v45 / v44;
      if (fabs(v44) < 2.22044605e-16 && *a1 == 1)
      {
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
        }

        v50 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v50, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[interpolateInertialOdometryDeltaPosition] repeated timestamps of inertialOdometry.", buf, 2u);
        }

        v51 = sub_19B87DD40();
        if ((*(v51 + 160) & 0x80000000) == 0 || (*(v51 + 164) & 0x80000000) == 0 || (*(v51 + 168) & 0x80000000) == 0 || *(v51 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
          }

          v79[0] = 0;
          v52 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLPedestrianRTSSmoother]:[interpolateInertialOdometryDeltaPosition] repeated timestamps of inertialOdometry.", v79, 2);
          sub_19B885924("Generic", 1, 0, 0, "void CLPedestrianRTSSmoother::interpolateInertialOdometryDeltaPosition(NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, const size_t, const CFAbsoluteTime, const BOOL)", "CoreLocation: %s\n", v52);
          if (v52 != buf)
          {
            free(v52);
          }
        }
      }

      if (v49 > 1.0 && *a1 == 1)
      {
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
        }

        v53 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v53, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[interpolateInertialOdometryDeltaPosition] interpolationScaleFactor is greater than 1.", buf, 2u);
        }

        v54 = sub_19B87DD40();
        if ((*(v54 + 160) & 0x80000000) == 0 || (*(v54 + 164) & 0x80000000) == 0 || (*(v54 + 168) & 0x80000000) == 0 || *(v54 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
          }

          v79[0] = 0;
          v55 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLPedestrianRTSSmoother]:[interpolateInertialOdometryDeltaPosition] interpolationScaleFactor is greater than 1.", v79, 2);
          sub_19B885924("Generic", 1, 0, 0, "void CLPedestrianRTSSmoother::interpolateInertialOdometryDeltaPosition(NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, const size_t, const CFAbsoluteTime, const BOOL)", "CoreLocation: %s\n", v55);
          if (v55 != buf)
          {
            free(v55);
          }
        }
      }

      v56 = objc_msgSend_objectAtIndexedSubscript_(a2, v41, a3, v42);
      v60 = objc_msgSend_deltaPosition_m(v56, v57, v58, v59);
      objc_msgSend_X(v60, v61, v62, v63);
      v65 = v64;
      v68 = objc_msgSend_objectAtIndexedSubscript_(a2, v66, a3, v67);
      v72 = objc_msgSend_deltaPosition_m(v68, v69, v70, v71);
      objc_msgSend_Y(v72, v73, v74, v75);
      v77 = sqrt(v76 * v76 + v65 * v65);
      v78 = atan2(v76, v65);
      if (v5)
      {
        *(a1 + 304) = a3;
        *(a1 + 312) = v49 * v77;
        *(a1 + 320) = v78;
      }

      else
      {
        *(a1 + 328) = a3;
        *(a1 + 336) = (1.0 - v49) * v77;
        *(a1 + 344) = v78;
      }
    }

    else
    {
      *(a1 + 336) = 0;
      *(a1 + 344) = 0;
      *(a1 + 328) = a3;
    }
  }

  else
  {
    *(a1 + 312) = 0;
    *(a1 + 320) = 0;
    *(a1 + 304) = a3;
  }
}

char *sub_19B94E1C8(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v182 = *MEMORY[0x1E69E9840];
  Object = objc_msgSend_lastObject(a3, a2, a3, a4);
  objc_msgSend_horizontalAccuracy(Object, v8, v9, v10);
  v177[1] = 0.0;
  v177[2] = 0.0;
  v177[0] = v11 * v11 * 0.5;
  v177[3] = v177[0];
  sub_19B94EDC0(&v174, v177);
  v173[0] = 1.0;
  v173[1] = 0.0;
  v173[2] = 0.0;
  v173[3] = 1.0;
  if ((*(a1 + 352) & 0x80000000) == 0)
  {
    v15 = *(a1 + 352) & 0x7FFFFFFFLL;
    do
    {
      v16 = objc_msgSend_objectAtIndexedSubscript_(a2, v12, v15, v14);
      v19 = objc_msgSend_objectAtIndexedSubscript_(a2, v17, v15, v18);
      v23 = objc_msgSend_deltaPosition_m(v19, v20, v21, v22);
      isValid = objc_msgSend_isValid(v23, v24, v25, v26);
      v31 = 0.0;
      v32 = 0.0;
      if (isValid)
      {
        v33 = objc_msgSend_deltaPosition_m(v16, v27, v28, v29, 0.0);
        objc_msgSend_X(v33, v34, v35, v36);
        v31 = v37;
        v41 = objc_msgSend_deltaPosition_m(v16, v38, v39, v40);
        objc_msgSend_Y(v41, v42, v43, v44);
      }

      v45 = sqrt(v32 * v32 + v31 * v31);
      if (*(a1 + 352) == v15)
      {
        v45 = v45 - *(a1 + 360);
      }

      v46 = 0.0;
      if (isValid)
      {
        v46 = atan2(v32, v31);
      }

      v47 = __sincos_stret(v46 + *(a1 + 368));
      v51 = objc_msgSend_lastObject(a3, v48, v49, v50);
      objc_msgSend_latitude(v51, v52, v53, v54);
      v56 = v55;
      v60 = objc_msgSend_lastObject(a3, v57, v58, v59);
      objc_msgSend_longitude(v60, v61, v62, v63);
      v171 = 0.0;
      v172 = 0.0;
      sub_19BA0C1C0((a1 + 8), &v172, &v171, &v170, v56, v64, 0.0, -(v45 * v47.__cosval), v45 * v47.__sinval, 0.0);
      if (*(a1 + 296) == 1)
      {
        v65 = *(a1 + 276);
      }

      else
      {
        v65 = 1;
      }

      v66 = [CLTripSegmentLocation alloc];
      v70 = objc_msgSend_cfAbsTimestamp(v16, v67, v68, v69);
      v72 = objc_msgSend_initWithTime_latitude_longitude_horizontalAccuracy_course_courseAccuracy_speed_speedAccuracy_altitude_altitudeAccuracy_locType_referenceFrame_(v66, v71, v70, 1, v65, v172, v171, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, 0xBFF0000000000000);
      objc_msgSend_setLocationReconstructionType_(v72, v73, 2, v74);
      if (*(a1 + 296) == 1)
      {
        objc_msgSend_setSignalEnvironmentType_(v72, v75, *(a1 + 272), v77);
      }

      else if (*a1 == 1)
      {
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
        }

        v78 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v78, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[openLoopPropagationHead] FirstConsumedMeasurement is not initialized.", buf, 2u);
        }

        v79 = sub_19B87DD40();
        if ((*(v79 + 160) & 0x80000000) == 0 || (*(v79 + 164) & 0x80000000) == 0 || (*(v79 + 168) & 0x80000000) == 0 || *(v79 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
          }

          LOWORD(v169[0]) = 0;
          v80 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLPedestrianRTSSmoother]:[openLoopPropagationHead] FirstConsumedMeasurement is not initialized.", v169, 2);
          sub_19B885924("Generic", 1, 0, 0, "void CLPedestrianRTSSmoother::openLoopPropagationHead(NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v80);
          if (v80 != buf)
          {
            free(v80);
          }
        }
      }

      v81 = objc_msgSend_lastObject(a3, v75, v76, v77);
      objc_msgSend_latitude(v72, v82, v83, v84);
      v86 = v85;
      objc_msgSend_longitude(v72, v87, v88, v89);
      v91 = v90;
      objc_msgSend_latitude(v81, v92, v93, v94);
      v96 = v95;
      objc_msgSend_longitude(v81, v97, v98, v99);
      v101 = sub_19BA0C44C((a1 + 8), v86, v91, v96, v100);
      objc_msgSend_setCourse_(v81, v102, v103, v104, v101);
      objc_msgSend_course(v81, v105, v106, v107);
      v112 = v111 <= 0.0;
      v113 = -1.0;
      if (!v112)
      {
        v113 = 10.0;
      }

      objc_msgSend_setCourseAccuracy_(v81, v108, v109, v110, v113);
      objc_msgSend_course(v81, v114, v115, v116);
      v118 = v117 * 0.0174532924;
      objc_msgSend_latitude(v81, v119, v120, v121);
      v123 = v122;
      objc_msgSend_longitude(v81, v124, v125, v126);
      v128 = v127;
      objc_msgSend_latitude(v72, v129, v130, v131);
      v133 = v132;
      objc_msgSend_longitude(v72, v134, v135, v136);
      v137 = 0.0;
      sub_19BA0C01C((a1 + 8), v123, v128, v133, v138, 0.0);
      v140 = v139;
      v141 = __sincos_stret(v118);
      v169[0] = -(v140 * v141.__sinval);
      v169[1] = v141.__cosval * v140;
      v169[2] = v141.__cosval;
      v169[3] = v141.__sinval;
      if (isValid)
      {
        v142 = 1.05;
      }

      else
      {
        v142 = 1.6;
      }

      v143 = 25.0;
      if (isValid)
      {
        v143 = 16.0;
      }

      *v168 = v142;
      *&v168[1] = v143;
      sub_19B94F27C(&v174, v173, v169, v168);
      v144 = 0;
      *buf = v174 + 0.0 + v176 * v175 * v176;
      v179 = v175 * v176 + 0.0;
      v180 = v176 * v175 + 0.0;
      v181 = v175 + 0.0;
      v145 = 1;
      do
      {
        v146 = v145;
        v149 = sub_19B94FF2C(buf, v144, v144);
        v145 = 0;
        v137 = v137 + v149;
        v144 = 1;
      }

      while ((v146 & 1) != 0);
      objc_msgSend_setHorizontalAccuracy_(v81, 1, v147, v148, sqrt(v137));
      objc_msgSend_addObject_(a3, v150, v72, v151);

      v112 = v15-- <= 0;
    }

    while (!v112);
  }

  result = objc_msgSend_count(a3, v12, v13, v14);
  if (result > 1)
  {
    v155 = objc_msgSend_objectAtIndex_(a3, v153, (result - 2), v154);
    objc_msgSend_horizontalAccuracy(v155, v156, v157, v158);
    v160 = v159;
    v164 = objc_msgSend_lastObject(a3, v161, v162, v163);
    return objc_msgSend_setHorizontalAccuracy_(v164, v165, v166, v167, v160);
  }

  return result;
}

uint64_t sub_19B94E75C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = objc_msgSend_timestamp(a2, a2, a3, a4);
  v10 = objc_msgSend_timestamp(a3, v6, v7, v8);

  return objc_msgSend_compare_(v5, v9, v10, v11);
}

void sub_19B94E7A8(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v130 = *MEMORY[0x1E69E9840];
  Object = objc_msgSend_lastObject(a3, a2, a3, a4);
  objc_msgSend_horizontalAccuracy(Object, v8, v9, v10);
  v125[1] = 0.0;
  v125[2] = 0.0;
  v125[0] = v11 * v11 * 0.5;
  v125[3] = v125[0];
  sub_19B94EDC0(&v122, v125);
  v121[0] = 1.0;
  v121[1] = 0.0;
  v121[2] = 0.0;
  v121[3] = 1.0;
  v12 = *(a1 + 328);
  if (v12 < objc_msgSend_count(a2, v13, v14, v15))
  {
    while (1)
    {
      v18 = objc_msgSend_objectAtIndexedSubscript_(a2, v16, v12, v17);
      v22 = objc_msgSend_deltaPosition_m(v18, v19, v20, v21);
      isValid = objc_msgSend_isValid(v22, v23, v24, v25);
      v30 = 0.0;
      v31 = 0.0;
      if (isValid)
      {
        v32 = objc_msgSend_deltaPosition_m(v18, v26, v27, v28, 0.0);
        objc_msgSend_X(v32, v33, v34, v35);
        v30 = v36;
        v40 = objc_msgSend_deltaPosition_m(v18, v37, v38, v39);
        objc_msgSend_Y(v40, v41, v42, v43);
      }

      v44 = sqrt(v31 * v31 + v30 * v30);
      if (v12 == *(a1 + 328))
      {
        v44 = v44 - *(a1 + 336);
      }

      v45 = 0.0;
      if (isValid)
      {
        v45 = atan2(v31, v30);
      }

      if ((*(a1 + 392) & 1) == 0)
      {
        break;
      }

      v46 = __sincos_stret(v45 + *(a1 + 384));
      v47 = v44 * v46.__cosval;
      v48 = -(v44 * v46.__sinval);
      v52 = objc_msgSend_lastObject(a3, v49, v50, v51);
      objc_msgSend_latitude(v52, v53, v54, v55);
      v57 = v56;
      v61 = objc_msgSend_lastObject(a3, v58, v59, v60);
      objc_msgSend_longitude(v61, v62, v63, v64);
      v119 = 0.0;
      v120 = 0.0;
      v65 = 0.0;
      sub_19BA0C1C0((a1 + 8), &v120, &v119, &v118, v57, v66, 0.0, v47, v48, 0.0);
      v117[0] = v48;
      v117[1] = v47;
      v117[2] = v46.__cosval;
      v117[3] = v46.__sinval;
      if (isValid)
      {
        v67 = 1.05;
      }

      else
      {
        v67 = 1.6;
      }

      v68 = 25.0;
      if (isValid)
      {
        v68 = 16.0;
      }

      *v116 = v67;
      *&v116[1] = v68;
      sub_19B94F27C(&v122, v121, v117, v116);
      v69 = 0;
      *buf = v122 + 0.0 + v124 * v123 * v124;
      v127 = v123 * v124 + 0.0;
      v128 = v124 * v123 + 0.0;
      v129 = v123 + 0.0;
      v70 = 1;
      do
      {
        v71 = v70;
        v74 = sub_19B94FF2C(buf, v69, v69);
        v70 = 0;
        v65 = v65 + v74;
        v69 = 1;
      }

      while ((v71 & 1) != 0);
      v75 = objc_msgSend_lastObject(a3, 1, v72, v73);
      objc_msgSend_latitude(v75, v76, v77, v78);
      v80 = v79;
      v84 = objc_msgSend_lastObject(a3, v81, v82, v83);
      objc_msgSend_longitude(v84, v85, v86, v87);
      v89 = v119;
      v88 = v120;
      v91 = sub_19BA0C44C((a1 + 8), v80, v90, v120, v119);
      if (*(a1 + 232) == 1)
      {
        v92 = *(a1 + 212);
      }

      else
      {
        v92 = 1;
      }

      v93 = sqrt(v65);
      v94 = [CLTripSegmentLocation alloc];
      v99 = objc_msgSend_cfAbsTimestamp(v18, v95, v96, v97);
      if (v91 <= 0.0)
      {
        v100 = objc_msgSend_initWithTime_latitude_longitude_horizontalAccuracy_course_courseAccuracy_speed_speedAccuracy_altitude_altitudeAccuracy_locType_referenceFrame_(v94, v98, v99, 1, v92, v88, v89, v93, v91, -1.0, -1.0, -1.0, -1.0, 0xBFF0000000000000);
      }

      else
      {
        v100 = objc_msgSend_initWithTime_latitude_longitude_horizontalAccuracy_course_courseAccuracy_speed_speedAccuracy_altitude_altitudeAccuracy_locType_referenceFrame_(v94, v98, v99, 1, v92, v88, v89, v93, v91, 10.0, -1.0, -1.0, -1.0, 0xBFF0000000000000);
      }

      v103 = v100;
      objc_msgSend_setLocationReconstructionType_(v100, v101, 2, v102);
      if (*(a1 + 232) == 1)
      {
        objc_msgSend_setSignalEnvironmentType_(v103, v104, *(a1 + 208), v105);
      }

      else if (*a1 == 1)
      {
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
        }

        v106 = qword_1EAFE4760;
        if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v106, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[openLoopPropagationTail] LastConsumedMeasurement is not initialized.", buf, 2u);
        }

        v107 = sub_19B87DD40();
        if ((*(v107 + 160) & 0x80000000) == 0 || (*(v107 + 164) & 0x80000000) == 0 || (*(v107 + 168) & 0x80000000) == 0 || *(v107 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4758 != -1)
          {
            dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
          }

          v115[0] = 0;
          v108 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLPedestrianRTSSmoother]:[openLoopPropagationTail] LastConsumedMeasurement is not initialized.", v115, 2);
          sub_19B885924("Generic", 1, 0, 0, "void CLPedestrianRTSSmoother::openLoopPropagationTail(NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v108);
          if (v108 != buf)
          {
            free(v108);
          }
        }
      }

      objc_msgSend_addObject_(a3, v104, v103, v105);

      if (++v12 >= objc_msgSend_count(a2, v109, v110, v111))
      {
        return;
      }
    }

    if (*a1 == 1)
    {
      if (qword_1EAFE4758 != -1)
      {
        dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
      }

      v112 = qword_1EAFE4760;
      if (os_log_type_enabled(qword_1EAFE4760, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v112, OS_LOG_TYPE_ERROR, "[CLPedestrianRTSSmoother]:[openLoopPropagationTail] course offset is not initialized.", buf, 2u);
      }

      v113 = sub_19B87DD40();
      if ((*(v113 + 160) & 0x80000000) == 0 || (*(v113 + 164) & 0x80000000) == 0 || (*(v113 + 168) & 0x80000000) == 0 || *(v113 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4758 != -1)
        {
          dispatch_once(&qword_1EAFE4758, &unk_1F0E6D5B0);
        }

        LOWORD(v117[0]) = 0;
        v114 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4760, 16, "[CLPedestrianRTSSmoother]:[openLoopPropagationTail] course offset is not initialized.", v117, 2);
        sub_19B885924("Generic", 1, 0, 0, "void CLPedestrianRTSSmoother::openLoopPropagationTail(NSArray<CLBackgroundInertialOdometrySample *> * _Nullable, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v114);
        if (v114 != buf)
        {
          free(v114);
        }
      }
    }
  }
}

uint64_t sub_19B94EDC0(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  if (v2 >= v3)
  {
    v4 = v2 - v3;
  }

  else
  {
    v4 = -(v2 - v3);
  }

  if (v4 <= 1.00000002e-16)
  {
    for (i = 1; ; --i)
    {
      v8 = sub_19B94FF2C(a2, i, i);
      if (!i)
      {
        v9 = *sub_19B9502B4(a1 + 16, 0, 1uLL);
        v8 = v8 + -(v9 * *sub_19B9502B4(a1 + 16, 0, 1uLL)) * *(a1 + 8);
      }

      *sub_19B95063C(a1, i) = v8;
      if (*sub_19B95063C(a1, i) <= 0.0)
      {
        break;
      }

      if (!i)
      {
        return 1;
      }

      v10 = sub_19B94FF2C(a2, i - 1, i);
      v11 = v10 / *sub_19B95063C(a1, i);
      *sub_19B9502B4(a1 + 16, i - 1, i) = v11;
    }

    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
    }

    v12 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v19 = i;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEBUG, "D(%zu) <= 0 non-positive definite matrix!", buf, 0xCu);
    }

    v13 = sub_19B87DD40();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
      }

      v16 = 134217984;
      v17 = i;
      v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 2, "D(%zu) <= 0 non-positive definite matrix!", &v16, 12);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CMFactoredMatrix<double, 2>::factor(const CMMatrix<T, N, N> &) [T = double, N = 2]", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  return 0;
}

uint64_t sub_19B94F084(uint64_t a1, unint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2 >= 2)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
    }

    v5 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v13 = a2;
      v14 = 2048;
      v15 = 2;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 279,invalid index %zu >= %zu.", buf, 0x16u);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
      }

      v8 = 134218240;
      v9 = a2;
      v10 = 2048;
      v11 = 2;
      v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 279,invalid index %zu >= %zu.", &v8, 22);
      sub_19B885924("Generic", 1, 0, 0, "T &CMVector<double, 2>::operator[](const size_t) [T = double, N = 2]", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  return a1 + 8 * a2;
}

void sub_19B94F27C(uint64_t a1, double *a2, double *a3, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a1 + 16;
  v9 = a2[1];
  v10 = a2[3];
  a2[2] = a2[2] + *a2 * *(a1 + 16);
  a2[3] = v10 + v9 * *(a1 + 16);
  for (i = 1; ; --i)
  {
    v12 = 0;
    *(&v49 + i) = 0;
    v13 = 1;
    v14 = 0.0;
    do
    {
      v15 = v13;
      v16 = *sub_19B8D7BD0(a2, i, v12);
      v17 = v16 * *sub_19B8D7BD0(a2, i, v12);
      v18 = sub_19B95063C(a1, v12);
      v13 = 0;
      v14 = v14 + v17 * *v18;
      *(&v49 + i) = v14;
      v12 = 1;
    }

    while ((v15 & 1) != 0);
    v19 = 0;
    v20 = 1;
    do
    {
      v21 = v20;
      v22 = *sub_19B8D7BD0(a3, i, v19);
      v23 = v22 * *sub_19B8D7BD0(a3, i, v19);
      v24 = sub_19B950834(a4, v19);
      v20 = 0;
      v14 = v14 + v23 * v24;
      *(&v49 + i) = v14;
      v19 = 1;
    }

    while ((v21 & 1) != 0);
    if (v14 <= 0.0)
    {
      break;
    }

    if (!i)
    {
      *a1 = v49;
      return;
    }

    v25 = 0;
    v26 = 0.0;
    v27 = 1;
    do
    {
      v28 = v27;
      v29 = *sub_19B8D7BD0(a2, 0, v25);
      v30 = v29 * *sub_19B95063C(a1, v25);
      v31 = sub_19B8D7BD0(a2, i, v25);
      v27 = 0;
      v26 = v26 + v30 * *v31;
      v25 = 1;
    }

    while ((v28 & 1) != 0);
    v32 = 0;
    v33 = 1;
    do
    {
      v34 = v33;
      v35 = *sub_19B8D7BD0(a3, 0, v32);
      v36 = v35 * sub_19B950834(a4, v32);
      v37 = sub_19B8D7BD0(a3, i, v32);
      v33 = 0;
      v26 = v26 + v36 * *v37;
      v32 = 1;
    }

    while ((v34 & 1) != 0);
    *sub_19B9502B4(v8, 0, i) = v26 / v14;
    v38 = *sub_19B9502B4(v8, 0, i);
    *a2 = *a2 - v38 * *sub_19B8D7BD0(a2, i, 0);
    v39 = *sub_19B9502B4(v8, 0, i);
    a2[2] = a2[2] - v39 * *sub_19B8D7BD0(a2, i, 1uLL);
    v40 = *sub_19B9502B4(v8, 0, i);
    *a3 = *a3 - v40 * *sub_19B8D7BD0(a3, i, 0);
    v41 = *sub_19B9502B4(v8, 0, i);
    a3[2] = a3[2] - v41 * *sub_19B8D7BD0(a3, i, 1uLL);
  }

  if (qword_1ED519058 != -1)
  {
    dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
  }

  v42 = off_1ED519060;
  if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v48 = i;
    _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_DEBUG, "D[%zu] <= 0, matrix ! positive definite", buf, 0xCu);
  }

  v43 = sub_19B87DD40();
  if (*(v43 + 160) > 1 || *(v43 + 164) > 1 || *(v43 + 168) > 1 || *(v43 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
    }

    v45 = 134217984;
    v46 = i;
    v44 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 2, "D[%zu] <= 0, matrix ! positive definite", &v45, 12);
    sub_19B885924("Generic", 1, 0, 2, "void CMFactoredMatrix<double, 2>::thorntonTemporalUpdate(CMMatrix<T, N, N> &, CMMatrix<T, N, M> &, const CMVector<T, M> &) [T = double, N = 2, M = 2UL]", "CoreLocation: %s\n", v44);
    if (v44 != buf)
    {
      free(v44);
    }
  }
}

double sub_19B94F70C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = 0;
    v7 = v5;
    v8 = 1;
    do
    {
      v9 = v8;
      v10 = sub_19B94FF2C(a1, v4, 0);
      v11 = v10 * sub_19B94FF2C(a2, 0, v6);
      *sub_19B8D7BD0(&v16, v4, v6) = v11;
      v12 = sub_19B94FF2C(a1, v4, 1uLL);
      v13 = sub_19B94FF2C(a2, 1uLL, v6);
      v14 = sub_19B8D7BD0(&v16, v4, v6);
      v8 = 0;
      *v14 = *v14 + v12 * v13;
      v6 = 1;
    }

    while ((v9 & 1) != 0);
    v5 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  return v16;
}

double sub_19B94F808(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = 0;
  *v8 = a2;
  *&v8[1] = a3;
  *&v8[2] = a4;
  *&v8[3] = a5;
  do
  {
    *&v8[v6] = *&v8[v6] - sub_19B950B90(a1, v6);
    ++v6;
  }

  while (v6 != 4);
  return *v8;
}

double sub_19B94F874(uint64_t a1, double *a2)
{
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = sub_19B94FF2C(a1, v4, 0) * *a2;
    *sub_19B94F084(&v12, v4) = v7;
    v8 = sub_19B94FF2C(a1, v4, 1uLL);
    v9 = a2[1];
    v10 = sub_19B94F084(&v12, v4);
    v5 = 0;
    *v10 = *v10 + v8 * v9;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  return v12;
}

os_log_t sub_19B94F924()
{
  result = os_log_create("com.apple.locationd.Motion", "PedTrajectorySmoothing");
  qword_1EAFE4760 = result;
  return result;
}

void sub_19B94F954()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5418], MEMORY[0x1E69E52A0]);
}

uint64_t *sub_19B94F9A0(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      v6 = *v2;
      v7 = *(v2 + 32);
      *(v5 + 16) = *(v2 + 16);
      *(v5 + 32) = v7;
      *v5 = v6;
      *(v5 + 48) = *(v2 + 48);
      *(v5 + 56) = *(v2 + 56);
      *(v5 + 64) = *(v2 + 64);
      *(v5 + 72) = *(v2 + 72);
      v2 += 80;
      v5 += 80;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void sub_19B94FA38(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

uint64_t sub_19B94FA90(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
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

double *sub_19B94FADC(float *a1, void **a2, double a3)
{
  if (a3 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a3;
  }

  v4 = *(a1 + 2);
  if (!*&v4)
  {
    goto LABEL_21;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v3;
    if (*&v3 >= *&v4)
    {
      *&v6 = *&v3 % *&v4;
    }
  }

  else
  {
    *&v6 = (*&v4 - 1) & *&v3;
  }

  v7 = *(*a1 + 8 * *&v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v9 = *(v8 + 1);
    if (v9 == *&v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != *&v6)
    {
      goto LABEL_21;
    }

LABEL_20:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_21;
    }
  }

  if (v8[2] != a3)
  {
    goto LABEL_20;
  }

  return v8;
}

os_log_t sub_19B94FEFC()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED519060 = result;
  return result;
}

double sub_19B94FF2C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2 >= 2)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
    }

    v7 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v18 = a2;
      v19 = 2048;
      v20 = 2;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 70,invalid row %zu > %zu.", buf, 0x16u);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
      }

      v13 = 134218240;
      v14 = a2;
      v15 = 2048;
      v16 = 2;
      v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 70,invalid row %zu > %zu.", &v13, 22);
      sub_19B885924("Generic", 1, 0, 0, "T CMMatrix<double, 2>::operator()(size_t, size_t) const [T = double, M = 2, N = 2]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  if (a3 >= 2)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
    }

    v10 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v18 = a3;
      v19 = 2048;
      v20 = 2;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 71,invalid col %zu > %zu.", buf, 0x16u);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
      }

      v13 = 134218240;
      v14 = a3;
      v15 = 2048;
      v16 = 2;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 71,invalid col %zu > %zu.", &v13, 22);
      sub_19B885924("Generic", 1, 0, 0, "T CMMatrix<double, 2>::operator()(size_t, size_t) const [T = double, M = 2, N = 2]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  return *(a1 + 8 * (a2 + 2 * a3));
}

uint64_t sub_19B9502B4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3 >= 2)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
    }

    v7 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v18 = a3;
      v19 = 2048;
      v20 = 2;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 237,invalid col %zu > %zu.", buf, 0x16u);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
      }

      v13 = 134218240;
      v14 = a3;
      v15 = 2048;
      v16 = 2;
      v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 237,invalid col %zu > %zu.", &v13, 22);
      sub_19B885924("Generic", 1, 0, 0, "T &CMFactoredMatrix<double, 2>::UnitaryUpperTriangularMatrix::operator()(size_t, size_t) [T = double, N = 2]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  if (a3 <= a2)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
    }

    v10 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v18 = a3;
      v19 = 2048;
      v20 = a2;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "Assertion failed: col > row, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 238,invalid element %zu <= %zu.", buf, 0x16u);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
      }

      v13 = 134218240;
      v14 = a3;
      v15 = 2048;
      v16 = a2;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "Assertion failed: col > row, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 238,invalid element %zu <= %zu.", &v13, 22);
      sub_19B885924("Generic", 1, 0, 0, "T &CMFactoredMatrix<double, 2>::UnitaryUpperTriangularMatrix::operator()(size_t, size_t) [T = double, N = 2]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  return a1 + 8 * (a2 + (((a3 - 1) * a3) >> 1));
}

uint64_t sub_19B95063C(uint64_t a1, unint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2 >= 2)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
    }

    v5 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v13 = a2;
      v14 = 2048;
      v15 = 2;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "Assertion failed: row < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 191,invalid row %zu > %zu.", buf, 0x16u);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
      }

      v8 = 134218240;
      v9 = a2;
      v10 = 2048;
      v11 = 2;
      v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "Assertion failed: row < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 191,invalid row %zu > %zu.", &v8, 22);
      sub_19B885924("Generic", 1, 0, 0, "T &CMFactoredMatrix<double, 2>::DiagonalMatrix::operator()(size_t) [T = double, N = 2]", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  return a1 + 8 * a2;
}

double sub_19B950834(uint64_t a1, unint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2 >= 2)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
    }

    v5 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v13 = a2;
      v14 = 2048;
      v15 = 2;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", buf, 0x16u);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
      }

      v8 = 134218240;
      v9 = a2;
      v10 = 2048;
      v11 = 2;
      v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", &v8, 22);
      sub_19B885924("Generic", 1, 0, 0, "T CMVector<double, 2>::operator[](const size_t) const [T = double, N = 2]", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  return *(a1 + 8 * a2);
}

void *sub_19B950A2C(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (result[2] == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= *&v2)
        {
          v7 %= *&v2;
        }
      }

      else
      {
        v7 &= *&v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

double *sub_19B950ADC(uint64_t a1, unint64_t a2, double a3)
{
  v3 = a3;
  if (a3 == 0.0)
  {
    v3 = 0.0;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = vcnt_s8(a2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *&v3;
    if (*&v3 >= a2)
    {
      v5 = *&v3 % a2;
    }
  }

  else
  {
    v5 = *&v3 & (a2 - 1);
  }

  v6 = *(a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = *(result + 1);
    if (*&v3 == v8)
    {
      if (result[2] == a3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= a2)
        {
          v8 %= a2;
        }
      }

      else
      {
        v8 &= a2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

double sub_19B950B90(uint64_t a1, unint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2 >= 4)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
    }

    v5 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v13 = a2;
      v14 = 2048;
      v15 = 4;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "Assertion failed: ldx < M*N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 84,invalid element %zu >= %zu.", buf, 0x16u);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519058 != -1)
      {
        dispatch_once(&qword_1ED519058, &unk_1F0E6D5D0);
      }

      v8 = 134218240;
      v9 = a2;
      v10 = 2048;
      v11 = 4;
      v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1ED519060, 17, "Assertion failed: ldx < M*N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 84,invalid element %zu >= %zu.", &v8, 22);
      sub_19B885924("Generic", 1, 0, 0, "T CMMatrix<double, 2>::operator[](size_t) const [T = double, M = 2, N = 2]", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  return *(a1 + 8 * a2);
}

uint64_t sub_19B9511F0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_setIdentityToken_(*(a1 + 32), a2, *(a1 + 40), a4);
  objc_msgSend_setStorageToken_(*(a1 + 32), v5, 0, v6);
  v10 = *(a1 + 32);

  return objc_msgSend_manageConnection(v10, v7, v8, v9);
}

uint64_t sub_19B95146C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_destroyConnection(*(a1 + 32), a2, a3, a4);
  v8 = *(a1 + 32);

  return objc_msgSend_tearDown(v8, v5, v6, v7);
}

void sub_19B9516BC(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
    }

    v2 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_msgSend_UTF8String(*(a1 + 32), v3, v4, v5);
      *buf = 68289282;
      *&buf[4] = 0;
      v13[0] = 2082;
      *&v13[1] = "";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#backgroundActivitySession destroying connection (dealloc), self:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
      }
    }

    v7 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v11 = objc_msgSend_UTF8String(*(a1 + 32), v8, v9, v10);
      *buf = 68289282;
      *&buf[4] = 0;
      v13[0] = 2082;
      *&v13[1] = "";
      v14 = 2082;
      v15 = v11;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#backgroundActivitySession destroying connection (dealloc)", "{msg%{public}.0s:#backgroundActivitySession destroying connection (dealloc), self:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    sub_19B943C68();
  }
}

void sub_19B9518B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_19B8750F8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B951DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a12)
  {
    sub_19B8750F8(a12);
  }

  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19B951E74(uint64_t a1, uint64_t *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v4 = Weak;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2050;
      v17 = v4;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#backgroundActivitySession Default handler received message, self:%{public}p}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
      }
    }

    v6 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2050;
      v17 = v4;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#backgroundActivitySession Default handler received message", "{msg%{public}.0s:#backgroundActivitySession Default handler received message, self:%{public}p}", buf, 0x1Cu);
    }

    v9 = a2[1];
    v10 = *a2;
    v11 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    objc_msgSend_handleMessage_(v4, v7, &v10, v8);
    if (v11)
    {
      sub_19B8750F8(v11);
    }
  }
}

void sub_19B952044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9523E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_19B8750F8(a11);
  }

  if (a14)
  {
    sub_19B8750F8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B952638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, os_activity_scope_state_s state)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void *sub_19B952F44(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E6B5E0;
  sub_19B952FA0((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B952FA0(uint64_t a1, char *a2, void *a3)
{
  sub_19B8759E8(__p, a2);
  MEMORY[0x19EAE95F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B952FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B953254(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v25[2] = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(a1 + 23) < 0)
  {
    if (!*(a1 + 8))
    {
LABEL_7:
      v4 = CFCopyUserName();
      goto LABEL_8;
    }

    v2 = *a1;
  }

  else if (!*(a1 + 23))
  {
    goto LABEL_7;
  }

  v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v2, 0x8000100u);
LABEL_8:
  v5 = v4;
  sub_19B87BBB4();
  if (sub_19B93CCA4() && (v6 = getenv("_SET_CLPERSISTENTSTORE_TEST_PATH")) != 0)
  {
    v9 = MEMORY[0x1E696AEC0];
    v25[0] = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, v6, v8);
    v25[1] = v5;
    v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v10, v25, 2);
    v14 = objc_msgSend_pathWithComponents_(v9, v12, v11, v13);
    v18 = objc_msgSend_UTF8String(v14, v15, v16, v17);
    sub_19B8759E8(&v23, v18);
    *a2 = v23;
    a2[2] = v24;
  }

  else if (v5)
  {
    v19 = CFCopyHomeDirectoryURLForUser();
    v20 = v19;
    if (v19)
    {
      v21 = CFURLCopyFileSystemPath(v19, kCFURLPOSIXPathStyle);
      v22 = v21;
      if (v21)
      {
        sub_19B929670(v21, &v23);
        *a2 = v23;
        a2[2] = v24;
        CFRelease(v22);
      }

      CFRelease(v20);
    }

    CFRelease(v5);
  }
}

void sub_19B9533D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B953400(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    if (*(a1 + 8))
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if (*(a1 + 23))
  {
    goto LABEL_3;
  }

  v5 = CFCopyUserName();
  sub_19B929670(v5, &v16);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = *&v16.__r_.__value_.__l.__data_;
  v6 = v16.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v16.__r_.__value_.__l + 2);
  v4 = HIBYTE(v6);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    if (!v4)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_10:
  if (!*(a1 + 8))
  {
    return;
  }

LABEL_11:
  sub_19B95355C(&v15);
  v7 = std::string::append(&v15, "/private/var/Managed Preferences/", 0x21uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = *(a1 + 8);
  }

  v12 = std::string::append(&v16, v10, v11);
  size = v12->__r_.__value_.__l.__size_;
  *a2 = v12->__r_.__value_.__r.__words[0];
  *(a2 + 8) = size;
  *(a2 + 15) = *(&v12->__r_.__value_.__r.__words[1] + 7);
  LOBYTE(size) = *(&v12->__r_.__value_.__s + 23);
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
  *(a2 + 23) = size;
  if (v14 < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_19B953528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

const __CFString *sub_19B95355C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (qword_1ED5192A8 != -1)
  {
    dispatch_once(&qword_1ED5192A8, &unk_1F0E6D610);
  }

  result = qword_1ED5192A0;
  if (qword_1ED5192A0)
  {

    return sub_19B929670(result, a1);
  }

  return result;
}

void sub_19B9535D8(int a1@<W0>, std::string *a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1 == 3)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D630);
    }

    v7 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_DEFAULT))
    {
      v14.__r_.__value_.__r.__words[0] = 0x304020100;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "no mutable store path for type, %{public}d", &v14, 8u);
    }

    v8 = sub_19B87DD40();
    if (*(v8 + 160) <= 1 && *(v8 + 164) <= 1 && *(v8 + 168) <= 1 && !*(v8 + 152))
    {
      goto LABEL_38;
    }

    bzero(&v14, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D630);
    }

    v15[0] = 0x304020100;
    v9 = _os_log_send_and_compose_impl(2, 0, &v14, 1628, &dword_19B873000, off_1ED519060, 0, "no mutable store path for type, %{public}d", v15, 8);
    sub_19B885924("Generic", 1, 0, 2, "static std::string CLPersistentStore::getMutableStorePath(CLPersistentStoreType)", "CoreLocation: %s\n", v9);
    goto LABEL_36;
  }

  if (a1)
  {
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D630);
    }

    v10 = off_1ED519060;
    if (os_log_type_enabled(off_1ED519060, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v14.__r_.__value_.__l.__data_) = 67240192;
      HIDWORD(v14.__r_.__value_.__r.__words[0]) = a1;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "could not get mutable store path for type, %{public}d", &v14, 8u);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) != 0 && (*(v11 + 164) & 0x80000000) != 0 && (*(v11 + 168) & 0x80000000) != 0 && !*(v11 + 152))
    {
      goto LABEL_38;
    }

    bzero(&v14, 0x65CuLL);
    if (qword_1ED519058 != -1)
    {
      dispatch_once(&qword_1ED519058, &unk_1F0E6D630);
    }

    LODWORD(v15[0]) = 67240192;
    HIDWORD(v15[0]) = a1;
    v9 = _os_log_send_and_compose_impl(2, 0, &v14, 1628, &dword_19B873000, off_1ED519060, 17, "could not get mutable store path for type, %{public}d", v15, 8);
    sub_19B885924("Generic", 1, 0, 0, "static std::string CLPersistentStore::getMutableStorePath(CLPersistentStoreType)", "CoreLocation: %s\n", v9);
LABEL_36:
    if (v9 != &v14)
    {
      free(v9);
    }

LABEL_38:
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    return;
  }

  sub_19B8759E8(__p, "root");
  sub_19B953254(__p, &v14);
  sub_19B8759E8(v15, "/Library/Caches/locationd/");
  if ((v16 & 0x80u) == 0)
  {
    v4 = v15;
  }

  else
  {
    v4 = v15[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = v15[1];
  }

  v6 = std::string::append(&v14, v4, v5);
  *a2 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19B9539B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 73) < 0)
  {
    operator delete(*(v23 - 96));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B953A04(std::string *a1@<X8>)
{
  sub_19B95355C(&v3);
  v2 = std::string::append(&v3, "/System/Library/Frameworks/CoreLocation.framework/Support/", 0x3AuLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_19B953A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B953A8C(std::string *a1@<X8>)
{
  sub_19B95355C(&v3);
  v2 = std::string::append(&v3, "/System/Library/Frameworks/CoreLocation.framework", 0x31uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_19B953AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B953B28()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1ED519060 = result;
  return result;
}

void sub_19B954588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9545AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_UUIDString(a2, a2, a3, a4);
  v9 = objc_msgSend_UTF8String(v5, v6, v7, v8);
  sub_19B8759E8(__p, v9);
  sub_19B95D580(a1, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19B954608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B95476C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9547A0(uint64_t a1, const char *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_processTripSegmentData_withOptions_outputHandler_(*(a1 + 32), a2, *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 64) + 8) + 40), *(a1 + 40));
  if (v3)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v4 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349571;
      v33 = objc_msgSend_code(v3, v5, v6, v7);
      v34 = 2114;
      v35 = objc_msgSend_domain(v3, v8, v9, v10);
      v36 = 2113;
      v37 = objc_msgSend_localizedDescription(v3, v11, v12, v13);
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "CLTSP,processTripData returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
    }

    v14 = sub_19B87DD40();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v18 = qword_1EAFE46E8;
      v26 = 134349571;
      v27 = objc_msgSend_code(v3, v15, v16, v17);
      v28 = 2114;
      v29 = objc_msgSend_domain(v3, v19, v20, v21);
      v30 = 2113;
      v31 = objc_msgSend_localizedDescription(v3, v22, v23, v24);
      v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v18, 0, "CLTSP,processTripData returned error,%{public}lld,domain,%{public}@,description,%{private}@", &v26, 32);
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager processTripSegmentData:withOptions:outputHandler:completionHandler:]_block_invoke", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_19B9555A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 176), 8);
  _Block_object_dispose((v34 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19B9555FC(uint64_t a1, const char *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  started = objc_msgSend_constructRouteWithID_withOptions_usingRoadData_startRoad_endRoad_modeOfTransport_outputHandler_(*(a1 + 32), a2, *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 64) + 8) + 40), *(*(*(a1 + 72) + 8) + 40), *(*(*(a1 + 80) + 8) + 40), *(*(*(a1 + 88) + 8) + 40), *(a1 + 96), *(a1 + 40));
  if (started)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v4 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_msgSend_UUIDString(*(*(*(a1 + 56) + 8) + 40), v5, v6, v7);
      *buf = 136446979;
      v49 = objc_msgSend_UTF8String(v8, v9, v10, v11);
      v50 = 2050;
      v51 = objc_msgSend_code(started, v12, v13, v14);
      v52 = 2114;
      v53 = objc_msgSend_domain(started, v15, v16, v17);
      v54 = 2113;
      v55 = objc_msgSend_localizedDescription(started, v18, v19, v20);
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "CLTSP,constructRouteUsingRoadData for tripID,%{public}s,returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x2Au);
    }

    v21 = sub_19B87DD40();
    if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v25 = qword_1EAFE46E8;
      v26 = objc_msgSend_UUIDString(*(*(*(a1 + 56) + 8) + 40), v22, v23, v24);
      v40 = 136446979;
      v41 = objc_msgSend_UTF8String(v26, v27, v28, v29);
      v42 = 2050;
      v43 = objc_msgSend_code(started, v30, v31, v32);
      v44 = 2114;
      v45 = objc_msgSend_domain(started, v33, v34, v35);
      v46 = 2113;
      v47 = objc_msgSend_localizedDescription(started, v36, v37, v38);
      v39 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v25, 0, "CLTSP,constructRouteUsingRoadData for tripID,%{public}s,returned error,%{public}lld,domain,%{public}@,description,%{private}@", &v40, 42);
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager constructRouteWithID:withOptions:usingRoadData:startRoad:endRoad:modeOfTransport:outputHandler:completionHandler:]_block_invoke", "CoreLocation: %s\n", v39);
      if (v39 != buf)
      {
        free(v39);
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_19B9561F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19B95621C(uint64_t a1, const char *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_simulateLocationOnRouteID_withOptions_usingRoadData_modeOfTransport_constantSpeed_outputHandler_(*(a1 + 32), a2, *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 64) + 8) + 40), *(*(*(a1 + 72) + 8) + 40), *(a1 + 80), *(a1 + 40), *(a1 + 88));
  if (v3)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v4 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_msgSend_UUIDString(*(*(*(a1 + 56) + 8) + 40), v5, v6, v7);
      *buf = 136446979;
      v49 = objc_msgSend_UTF8String(v8, v9, v10, v11);
      v50 = 2050;
      v51 = objc_msgSend_code(v3, v12, v13, v14);
      v52 = 2114;
      v53 = objc_msgSend_domain(v3, v15, v16, v17);
      v54 = 2113;
      v55 = objc_msgSend_localizedDescription(v3, v18, v19, v20);
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "CLTSP,simulateLocationOnRoute for tripID,%{public}s,returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x2Au);
    }

    v21 = sub_19B87DD40();
    if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v25 = qword_1EAFE46E8;
      v26 = objc_msgSend_UUIDString(*(*(*(a1 + 56) + 8) + 40), v22, v23, v24);
      v40 = 136446979;
      v41 = objc_msgSend_UTF8String(v26, v27, v28, v29);
      v42 = 2050;
      v43 = objc_msgSend_code(v3, v30, v31, v32);
      v44 = 2114;
      v45 = objc_msgSend_domain(v3, v33, v34, v35);
      v46 = 2113;
      v47 = objc_msgSend_localizedDescription(v3, v36, v37, v38);
      v39 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v25, 0, "CLTSP,simulateLocationOnRoute for tripID,%{public}s,returned error,%{public}lld,domain,%{public}@,description,%{private}@", &v40, 42);
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager simulateLocationOnRouteID:withOptions:usingRoadData:modeOfTransport:constantSpeed:outputHandler:completionHandler:]_block_invoke", "CoreLocation: %s\n", v39);
      if (v39 != buf)
      {
        free(v39);
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_19B958178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 176), 8);
  _Block_object_dispose((v34 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19B9581CC(uint64_t a1, const char *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  matched = objc_msgSend_matchLocations_toRoute_waypoints_withOptions_andRouteID_modeOfTransport_outputHandler_(*(a1 + 32), a2, *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 64) + 8) + 40), *(*(*(a1 + 72) + 8) + 40), *(*(*(a1 + 80) + 8) + 40), *(*(*(a1 + 88) + 8) + 40), *(a1 + 96), *(a1 + 40));
  if (matched)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v4 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_msgSend_UUIDString(*(*(*(a1 + 88) + 8) + 40), v5, v6, v7);
      *buf = 136446979;
      v49 = objc_msgSend_UTF8String(v8, v9, v10, v11);
      v50 = 2050;
      v51 = objc_msgSend_code(matched, v12, v13, v14);
      v52 = 2114;
      v53 = objc_msgSend_domain(matched, v15, v16, v17);
      v54 = 2113;
      v55 = objc_msgSend_localizedDescription(matched, v18, v19, v20);
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "CLTSP,matchLocations for routeID,%{public}s,returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x2Au);
    }

    v21 = sub_19B87DD40();
    if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v25 = qword_1EAFE46E8;
      v26 = objc_msgSend_UUIDString(*(*(*(a1 + 88) + 8) + 40), v22, v23, v24);
      v40 = 136446979;
      v41 = objc_msgSend_UTF8String(v26, v27, v28, v29);
      v42 = 2050;
      v43 = objc_msgSend_code(matched, v30, v31, v32);
      v44 = 2114;
      v45 = objc_msgSend_domain(matched, v33, v34, v35);
      v46 = 2113;
      v47 = objc_msgSend_localizedDescription(matched, v36, v37, v38);
      v39 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v25, 0, "CLTSP,matchLocations for routeID,%{public}s,returned error,%{public}lld,domain,%{public}@,description,%{private}@", &v40, 42);
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager matchLocations:toRoute:waypoints:withOptions:andRouteID:modeOfTransport:outputHandler:completionHandler:]_block_invoke", "CoreLocation: %s\n", v39);
      if (v39 != buf)
      {
        free(v39);
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_19B9590E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19B959110(uint64_t a1, const char *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_propagateLocation_route_distance_withOptions_modeOfTransport_outputHandler_(*(a1 + 32), a2, *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 64) + 8) + 40), *(*(*(a1 + 72) + 8) + 40), *(a1 + 88), *(a1 + 40), *(a1 + 80));
  if (v3)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v4 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 80);
      *buf = 134349827;
      v37 = v8;
      v38 = 2050;
      v39 = objc_msgSend_code(v3, v5, v6, v7);
      v40 = 2114;
      v41 = objc_msgSend_domain(v3, v9, v10, v11);
      v42 = 2113;
      v43 = objc_msgSend_localizedDescription(v3, v12, v13, v14);
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "CLTSP,propagateLocation,distance,%{public}.2lf,returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x2Au);
    }

    v15 = sub_19B87DD40();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v19 = qword_1EAFE46E8;
      v20 = *(a1 + 80);
      v28 = 134349827;
      v29 = v20;
      v30 = 2050;
      v31 = objc_msgSend_code(v3, v16, v17, v18);
      v32 = 2114;
      v33 = objc_msgSend_domain(v3, v21, v22, v23);
      v34 = 2113;
      v35 = objc_msgSend_localizedDescription(v3, v24, v25, v26);
      v27 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v19, 0, "CLTSP,propagateLocation,distance,%{public}.2lf,returned error,%{public}lld,domain,%{public}@,description,%{private}@", &v28, 42);
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager propagateLocation:route:distance:withOptions:modeOfTransport:outputHandler:completionHandler:]_block_invoke", "CoreLocation: %s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_19B959C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19B959CC0(uint64_t a1, const char *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  WaypointsOnTheRoute_forRouteID_withOptions_modeOfTransport_outputHandler = objc_msgSend_generateWaypointsOnTheRoute_forRouteID_withOptions_modeOfTransport_outputHandler_(*(a1 + 32), a2, *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 64) + 8) + 40), *(*(*(a1 + 72) + 8) + 40), *(a1 + 80), *(a1 + 40));
  if (WaypointsOnTheRoute_forRouteID_withOptions_modeOfTransport_outputHandler)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v4 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349571;
      v33 = objc_msgSend_code(WaypointsOnTheRoute_forRouteID_withOptions_modeOfTransport_outputHandler, v5, v6, v7);
      v34 = 2114;
      v35 = objc_msgSend_domain(WaypointsOnTheRoute_forRouteID_withOptions_modeOfTransport_outputHandler, v8, v9, v10);
      v36 = 2113;
      v37 = objc_msgSend_localizedDescription(WaypointsOnTheRoute_forRouteID_withOptions_modeOfTransport_outputHandler, v11, v12, v13);
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "CLTSP,generateWaypointsOnTheRoute,returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
    }

    v14 = sub_19B87DD40();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v18 = qword_1EAFE46E8;
      v26 = 134349571;
      v27 = objc_msgSend_code(WaypointsOnTheRoute_forRouteID_withOptions_modeOfTransport_outputHandler, v15, v16, v17);
      v28 = 2114;
      v29 = objc_msgSend_domain(WaypointsOnTheRoute_forRouteID_withOptions_modeOfTransport_outputHandler, v19, v20, v21);
      v30 = 2113;
      v31 = objc_msgSend_localizedDescription(WaypointsOnTheRoute_forRouteID_withOptions_modeOfTransport_outputHandler, v22, v23, v24);
      v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v18, 0, "CLTSP,generateWaypointsOnTheRoute,returned error,%{public}lld,domain,%{public}@,description,%{private}@", &v26, 32);
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager generateWaypointsOnTheRoute:forRouteID:withOptions:modeOfTransport:outputHandler:completionHandler:]_block_invoke", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_19B95A680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19B95A6AC(uint64_t a1, const char *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_constructRouteFromWaypoints_forRouteID_withOptions_outputHandler_(*(a1 + 32), a2, *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 64) + 8) + 40), *(*(*(a1 + 72) + 8) + 40), *(a1 + 40));
  if (v3)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v4 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349571;
      v33 = objc_msgSend_code(v3, v5, v6, v7);
      v34 = 2114;
      v35 = objc_msgSend_domain(v3, v8, v9, v10);
      v36 = 2113;
      v37 = objc_msgSend_localizedDescription(v3, v11, v12, v13);
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "CLTSP,constructRouteFromWaypoints,returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
    }

    v14 = sub_19B87DD40();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v18 = qword_1EAFE46E8;
      v26 = 134349571;
      v27 = objc_msgSend_code(v3, v15, v16, v17);
      v28 = 2114;
      v29 = objc_msgSend_domain(v3, v19, v20, v21);
      v30 = 2113;
      v31 = objc_msgSend_localizedDescription(v3, v22, v23, v24);
      v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v18, 0, "CLTSP,constructRouteFromWaypoints,returned error,%{public}lld,domain,%{public}@,description,%{private}@", &v26, 32);
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager constructRouteFromWaypoints:forRouteID:withOptions:outputHandler:completionHandler:]_block_invoke", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_19B95B688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B95B6B4(uint64_t a1, const char *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  MatchedLocationCandidates_dataID_modeOfTransport_options_outputHandler = objc_msgSend_getMatchedLocationCandidates_dataID_modeOfTransport_options_outputHandler_(*(a1 + 32), a2, *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 64) + 8) + 40), *(a1 + 80), *(*(*(a1 + 72) + 8) + 40), *(a1 + 40));
  if (MatchedLocationCandidates_dataID_modeOfTransport_options_outputHandler)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v4 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349571;
      v34 = objc_msgSend_code(MatchedLocationCandidates_dataID_modeOfTransport_options_outputHandler, v5, v6, v7);
      v35 = 2114;
      v36 = objc_msgSend_domain(MatchedLocationCandidates_dataID_modeOfTransport_options_outputHandler, v8, v9, v10);
      v37 = 2113;
      v38 = objc_msgSend_localizedDescription(MatchedLocationCandidates_dataID_modeOfTransport_options_outputHandler, v11, v12, v13);
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "CLTSP,getMatchedLocationCandidates,returned error,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
    }

    v14 = sub_19B87DD40();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v18 = qword_1EAFE46E8;
      v27 = 134349571;
      v28 = objc_msgSend_code(MatchedLocationCandidates_dataID_modeOfTransport_options_outputHandler, v15, v16, v17);
      v29 = 2114;
      v30 = objc_msgSend_domain(MatchedLocationCandidates_dataID_modeOfTransport_options_outputHandler, v19, v20, v21);
      v31 = 2113;
      v32 = objc_msgSend_localizedDescription(MatchedLocationCandidates_dataID_modeOfTransport_options_outputHandler, v22, v23, v24);
      v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v18, 0, "CLTSP,getMatchedLocationCandidates,returned error,%{public}lld,domain,%{public}@,description,%{private}@", &v27, 32);
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager getMatchedLocationCandidates:dataID:modeOfTransport:options:outputHandler:completionHandler:]_block_invoke", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_19B95BBC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::mutex::unlock(v18);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_19B95CC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19B95CCD0(id *result, void *a2)
{
  v159 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v4 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_msgSend_tripSegmentID(a2, v5, v6, v7);
      v12 = objc_msgSend_UUIDString(v8, v9, v10, v11);
      v16 = objc_msgSend_UTF8String(v12, v13, v14, v15);
      objc_msgSend_distance_m(a2, v17, v18, v19);
      v21 = v20;
      objc_msgSend_distanceUnc_m(a2, v22, v23, v24);
      v26 = v25;
      started = objc_msgSend_startDate(a2, v27, v28, v29);
      objc_msgSend_timeIntervalSinceReferenceDate(started, v31, v32, v33);
      v35 = v34;
      v39 = objc_msgSend_endDate(a2, v36, v37, v38);
      objc_msgSend_timeIntervalSinceReferenceDate(v39, v40, v41, v42);
      v44 = v43;
      v48 = objc_msgSend_modeOfTransport(a2, v45, v46, v47);
      v52 = objc_msgSend_tripLocations(a2, v49, v50, v51);
      *buf = 136447746;
      v146 = v16;
      v147 = 2050;
      v148 = v21;
      v149 = 2050;
      v150 = v26;
      v151 = 2050;
      v152 = v35;
      v153 = 2050;
      v154 = v44;
      v155 = 1026;
      v156 = v48;
      v157 = 1026;
      v158 = objc_msgSend_count(v52, v53, v54, v55);
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "CLTSP,simulatedSparse,received reconstructed trip,ID,%{public}s,distance,%{public}.2lf,distance unc,%{public}.2lf,startTime,%{public}.2lf,endTime, %{public}.2lf,modeOfTransport,%{public}d,locations,%{public}d", buf, 0x40u);
    }

    v56 = sub_19B87DD40();
    if (*(v56 + 160) > 1 || *(v56 + 164) > 1 || *(v56 + 168) > 1 || *(v56 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v60 = qword_1EAFE46E8;
      v61 = objc_msgSend_tripSegmentID(a2, v57, v58, v59);
      v65 = objc_msgSend_UUIDString(v61, v62, v63, v64);
      v69 = objc_msgSend_UTF8String(v65, v66, v67, v68);
      objc_msgSend_distance_m(a2, v70, v71, v72);
      v74 = v73;
      objc_msgSend_distanceUnc_m(a2, v75, v76, v77);
      v79 = v78;
      v83 = objc_msgSend_startDate(a2, v80, v81, v82);
      objc_msgSend_timeIntervalSinceReferenceDate(v83, v84, v85, v86);
      v88 = v87;
      v92 = objc_msgSend_endDate(a2, v89, v90, v91);
      objc_msgSend_timeIntervalSinceReferenceDate(v92, v93, v94, v95);
      v97 = v96;
      v101 = objc_msgSend_modeOfTransport(a2, v98, v99, v100);
      v105 = objc_msgSend_tripLocations(a2, v102, v103, v104);
      v131 = 136447746;
      v132 = v69;
      v133 = 2050;
      v134 = v74;
      v135 = 2050;
      v136 = v79;
      v137 = 2050;
      v138 = v88;
      v139 = 2050;
      v140 = v97;
      v141 = 1026;
      v142 = v101;
      v143 = 1026;
      v144 = objc_msgSend_count(v105, v106, v107, v108);
      v109 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v60, 0, "CLTSP,simulatedSparse,received reconstructed trip,ID,%{public}s,distance,%{public}.2lf,distance unc,%{public}.2lf,startTime,%{public}.2lf,endTime, %{public}.2lf,modeOfTransport,%{public}d,locations,%{public}d", &v131, 64);
      sub_19B885924("Generic", 1, 0, 2, "[CLTripSegmentProcessorManager simulateSparseTrajectoryAndSubmitCoreAnalytics:]_block_invoke", "CoreLocation: %s\n", v109);
      if (v109 != buf)
      {
        free(v109);
      }
    }

    v110 = sub_19BA3C324();
    v114 = objc_msgSend_tripSegmentID(result[4], v111, v112, v113);
    v118 = objc_msgSend_tripSegmentID(a2, v115, v116, v117);
    v119 = *(*(result[5] + 1) + 24);
    v123 = objc_msgSend_tripLocations(result[4], v120, v121, v122);
    v124 = *(result[6] + 1);
    v125 = 0.0;
    if (*(v124 + 48) >= 0.0)
    {
      v126 = mach_continuous_time();
      v125 = vabdd_f64(sub_19B994BF4(v126), *(v124 + 48)) * 1000.0;
    }

    sub_19BA3C480(v110, v114, v118, v119, v123, a2, v125);
    if (objc_msgSend_isFinalPart(result[4], v127, v128, v129))
    {
      v130 = sub_19BA3C324();
      sub_19BA3D1E8(v130);
    }
  }
}

os_log_t sub_19B95D0C0()
{
  result = os_log_create("com.apple.locationd.Position", "TripSegmentProcessor");
  qword_1EAFE46E8 = result;
  return result;
}

uint64_t sub_19B95D0F0(std::mutex *a1, char *a2)
{
  std::mutex::lock(a1);
  v4 = sub_19B95D148(a1, a2);
  std::mutex::unlock(a1);
  return v4;
}

uint64_t sub_19B95D148(uint64_t a1, char *a2)
{
  if (!sub_19B95D1AC(a1, a2))
  {
    return 0;
  }

  v6 = a2;
  return *(sub_19B95D310((a1 + 64), a2, &unk_19BA897F0, &v6, &v5)[7] + 1384);
}

uint64_t sub_19B95D1AC(uint64_t a1, char *a2)
{
  result = sub_19B95D210(a1 + 64, a2);
  if (result)
  {
    v6 = a2;
    return sub_19B95D310((a1 + 64), a2, &unk_19BA897F0, &v6, &v5)[7] != 0;
  }

  return result;
}

uint64_t sub_19B95D210(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 1;
    do
    {
      if ((sub_19B95D278(a2, v2 + 32) & 0x80) == 0)
      {
        if ((sub_19B95D278(v2 + 4, a2) & 0x80) == 0)
        {
          return v4;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_19B95D278(uint64_t ***a1, char *a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = a2[23];
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    v6 = *(a2 + 1);
  }

  return sub_19B95D2B0(a1, v2, v5, v6);
}

uint64_t sub_19B95D2B0(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

void *sub_19B95D310(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *sub_19B95D3B8(a1, &v7, a2);
  if (!v5)
  {
    sub_19B95D440();
  }

  return v5;
}

char *sub_19B95D3B8(uint64_t a1, char **a2, uint64_t ***a3)
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
        if ((sub_19B95D278(a3, v4 + 32) & 0x80) == 0)
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

      if ((sub_19B95D278(v7 + 4, a3) & 0x80) == 0)
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

char **sub_19B95D4E0(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_19B95D52C(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_19B95D52C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_19B95D580(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  std::mutex::lock(a1);
  if (sub_19B95D210(a1 + 64, a2))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D670);
    }

    v4 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      if (*(a2 + 23) >= 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = *a2;
      }

      v6 = *(a1 + 80) - 1;
      *buf = 136446466;
      *&buf[4] = v5;
      v17 = 2050;
      v18 = v6;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_INFO, "CLTSP,sharedData,tripData stats submitted and element erased,tripID,%{public}s,count,%{public}lu", buf, 0x16u);
    }

    v7 = sub_19B87DD40();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D670);
      }

      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      v9 = *(a1 + 80) - 1;
      v12 = 136446466;
      v13 = v8;
      v14 = 2050;
      v15 = v9;
      v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLTSP,sharedData,tripData stats submitted and element erased,tripID,%{public}s,count,%{public}lu", &v12, 22);
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentSharedData::removeTrip(const std::string &)", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    *buf = a2;
    v11 = sub_19B95D310((a1 + 64), a2, &unk_19BA897F0, buf, &v12);
    sub_19BA3A1F8(v11[7] + 48);
    sub_19B95D834((a1 + 64), a2);
  }

  std::mutex::unlock(a1);
}

os_log_t sub_19B95D804()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

uint64_t sub_19B95D834(uint64_t **a1, char *a2)
{
  v3 = sub_19B95D890(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_19B8F128C(a1, v3);
  sub_19B95D52C((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t sub_19B95D890(uint64_t a1, char *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_19B95D278((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (sub_19B95D278(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

void sub_19B95D910(uint64_t a1, uint64_t a2, int a3)
{
  v56 = *MEMORY[0x1E69E9840];
  if (a3 && !sub_19B95D210(a1 + 88, a2))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D670);
    }

    v5 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      if (*(a2 + 23) >= 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = *a2;
      }

      *buf = 136446210;
      *&buf[4] = v6;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_INFO, "CLTSP,sharedData,stopProcessingForTrip,trip added to map,%{public}s", buf, 0xCu);
    }

    v7 = sub_19B87DD40();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D670);
      }

      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      v45 = 136446210;
      v46 = v8;
      v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLTSP,sharedData,stopProcessingForTrip,trip added to map,%{public}s", &v45, 12);
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentSharedData::stopProcessingForTripInternal(const std::string &, BOOL)", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    Current = CFAbsoluteTimeGetCurrent();
    *buf = a2;
    *(sub_19B95E314((a1 + 88), a2, &unk_19BA897F0, buf, &v45) + 7) = Current;
  }

  if (sub_19B95D1AC(a1, a2) && sub_19B95D210(a1 + 88, a2))
  {
    sub_19B95E004(a1, a2, &v43);
    sub_19B95E280(a1, a2, 13);
    if (v43)
    {
      *v43 = 0x3F847AE147AE147BLL;
    }

    sub_19B95E4C8((a1 + 88), a2);
    v14 = objc_msgSend_sharedInstance(CLMapsXPCServiceManager, v11, v12, v13);
    objc_msgSend_stopConstructRouteFromLocation(v14, v15, v16, v17);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
    }

    v18 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      v19 = *v43;
      v20 = *(a2 + 23);
      v21 = *a2;
      v22 = sub_19B95D148(a1, a2);
      if (v20 >= 0)
      {
        v23 = a2;
      }

      else
      {
        v23 = v21;
      }

      *buf = 134349570;
      *&buf[4] = v19;
      v52 = 2082;
      v53 = v23;
      v54 = 1026;
      v55 = v22;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_INFO, "CLTSP,sharedData,stopProcessingForTrip,max processing time set to,%{public}.2lf,for id,%{public}s,status,%{public}d", buf, 0x1Cu);
    }

    v24 = sub_19B87DD40();
    if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6D650);
      }

      v25 = qword_1EAFE46E8;
      v26 = *v43;
      v27 = *(a2 + 23);
      v28 = *a2;
      v29 = sub_19B95D148(a1, a2);
      if (v27 >= 0)
      {
        v30 = a2;
      }

      else
      {
        v30 = v28;
      }

      v45 = 134349570;
      v46 = v26;
      v47 = 2082;
      v48 = v30;
      v49 = 1026;
      v50 = v29;
      v31 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v25, 1, "CLTSP,sharedData,stopProcessingForTrip,max processing time set to,%{public}.2lf,for id,%{public}s,status,%{public}d", &v45, 28);
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentSharedData::stopProcessingForTripInternal(const std::string &, BOOL)", "CoreLocation: %s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }
    }

    if (v44)
    {
      sub_19B8750F8(v44);
    }
  }

  v32 = *(a1 + 88);
  if (v32 != a1 + 96)
  {
    do
    {
      if (vabdd_f64(CFAbsoluteTimeGetCurrent(), *(v32 + 56)) <= 21600.0)
      {
        v41 = *(v32 + 8);
        if (v41)
        {
          do
          {
            v40 = v41;
            v41 = *v41;
          }

          while (v41);
        }

        else
        {
          do
          {
            v40 = *(v32 + 16);
            v42 = *v40 == v32;
            v32 = v40;
          }

          while (!v42);
        }
      }

      else
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D670);
        }

        v33 = (v32 + 32);
        v34 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
        {
          v35 = (v32 + 32);
          if (*(v32 + 55) < 0)
          {
            v35 = *v33;
          }

          v36 = *(a1 + 104) - 1;
          *buf = 136446466;
          *&buf[4] = v35;
          v52 = 2050;
          v53 = v36;
          _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_INFO, "CLTSP,sharedData,stop trip processing element erased due to timeout,tripID,%{public}s,count,%{public}lu", buf, 0x16u);
        }

        v37 = sub_19B87DD40();
        if (*(v37 + 160) > 1 || *(v37 + 164) > 1 || *(v37 + 168) > 1 || *(v37 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D670);
          }

          if (*(v32 + 55) < 0)
          {
            v33 = *v33;
          }

          v38 = *(a1 + 104) - 1;
          v45 = 136446466;
          v46 = v33;
          v47 = 2050;
          v48 = v38;
          v39 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLTSP,sharedData,stop trip processing element erased due to timeout,tripID,%{public}s,count,%{public}lu", &v45, 22);
          sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentSharedData::stopProcessingForTripInternal(const std::string &, BOOL)", "CoreLocation: %s\n", v39);
          if (v39 != buf)
          {
            free(v39);
          }
        }

        v40 = sub_19B95E510((a1 + 88), v32);
      }

      v32 = v40;
    }

    while (v40 != (a1 + 96));
  }
}

void sub_19B95DFD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_19B8750F8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B95E004(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  if (sub_19B95D1AC(a1, a2))
  {
    *buf = a2;
    v6 = sub_19B95D310((a1 + 64), a2, &unk_19BA897F0, buf, &v16);
    v8 = v6[7];
    v7 = v6[8];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v8)
      {
        *a3 = v8 + 32;
        a3[1] = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_19B8750F8(v7);
        return;
      }

      sub_19B8750F8(v7);
    }

    else if (v8)
    {
      *a3 = v8 + 32;
      a3[1] = 0;
      return;
    }
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D670);
  }

  v9 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    v11 = *(a1 + 80);
    *buf = 136446466;
    *&buf[4] = v10;
    v21 = 1026;
    v22 = v11;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "CLTSP,sharedData,tripID not present in CLTripSegmentSharedData array while accessing getProcessingTimeTrackerInternal,%{public}s,arraySize,%{public}d", buf, 0x12u);
  }

  v12 = sub_19B87DD40();
  if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D670);
    }

    if (*(a2 + 23) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    v14 = *(a1 + 80);
    v16 = 136446466;
    v17 = v13;
    v18 = 1026;
    v19 = v14;
    v15 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLTSP,sharedData,tripID not present in CLTripSegmentSharedData array while accessing getProcessingTimeTrackerInternal,%{public}s,arraySize,%{public}d", &v16, 18);
    sub_19B885924("Generic", 1, 0, 0, "std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker> CLTripSegmentSharedData::getProcessingTimeTrackerInternal(const std::string &)", "CoreLocation: %s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  *a3 = 0;
  a3[1] = 0;
}

uint64_t sub_19B95E280(uint64_t a1, char *a2, uint64_t a3)
{
  result = sub_19B95D1AC(a1, a2);
  if (result)
  {
    v8 = a2;
    result = sub_19B95D310((a1 + 64), a2, &unk_19BA897F0, &v8, &v7);
    if (!*(*(result + 56) + 1384))
    {
      v8 = a2;
      result = sub_19B95D310((a1 + 64), a2, &unk_19BA897F0, &v8, &v7);
      *(*(result + 56) + 1384) = a3;
    }
  }

  return result;
}

void *sub_19B95E314(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *sub_19B95D3B8(a1, &v6, a2);
  if (!result)
  {
    sub_19B95E3AC();
  }

  return result;
}

void sub_19B95E448(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_19B95E464(v3, v2);
  _Unwind_Resume(a1);
}

void sub_19B95E464(uint64_t a1, void **__p)
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

uint64_t sub_19B95E4C8(uint64_t **a1, char *a2)
{
  v3 = sub_19B95D890(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_19B95E510(a1, v3);
  return 1;
}

uint64_t *sub_19B95E510(uint64_t **a1, uint64_t a2)
{
  v3 = sub_19B8F128C(a1, a2);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

uint64_t sub_19B95EA9C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_setIdentityToken_(*(a1 + 32), a2, *(a1 + 40), a4);
  objc_msgSend_setStorageToken_(*(a1 + 32), v5, 0, v6);
  v10 = *(a1 + 32);

  return objc_msgSend_manageConnection(v10, v7, v8, v9);
}

void sub_19B95F00C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a12)
  {
    sub_19B8750F8(a12);
  }

  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19B95F094(uint64_t a1, uint64_t *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v4 = Weak;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2050;
      v17 = v4;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#fullAccuracySession Default handler received message, self:%{public}p}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
      }
    }

    v6 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2050;
      v17 = v4;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#fullAccuracySession Default handler received message", "{msg%{public}.0s:#fullAccuracySession Default handler received message, self:%{public}p}", buf, 0x1Cu);
    }

    v9 = a2[1];
    v10 = *a2;
    v11 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    objc_msgSend_handleMessage_(v4, v7, &v10, v8);
    if (v11)
    {
      sub_19B8750F8(v11);
    }
  }
}

void sub_19B95F264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B95F4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, os_activity_scope_state_s state)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_19B95FB78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_19B8750F8(a11);
  }

  if (a14)
  {
    sub_19B8750F8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B95FDB8(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
    }

    v2 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_msgSend_UTF8String(*(a1 + 32), v3, v4, v5);
      *buf = 68289282;
      *&buf[4] = 0;
      v13[0] = 2082;
      *&v13[1] = "";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#fullAccuracySession destroying connection (dealloc), self:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
      }
    }

    v7 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v11 = objc_msgSend_UTF8String(*(a1 + 32), v8, v9, v10);
      *buf = 68289282;
      *&buf[4] = 0;
      v13[0] = 2082;
      *&v13[1] = "";
      v14 = 2082;
      v15 = v11;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#fullAccuracySession destroying connection (dealloc)", "{msg%{public}.0s:#fullAccuracySession destroying connection (dealloc), self:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    sub_19B943C68();
  }
}

void sub_19B95FFAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_19B8750F8(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9601B0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_destroyConnection(*(a1 + 32), a2, a3, a4);
  v8 = *(a1 + 32);

  return objc_msgSend_tearDown(v8, v5, v6, v7);
}

void *sub_19B9602C8(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E6B5E0;
  sub_19B960324((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B960324(uint64_t a1, char *a2, void *a3)
{
  sub_19B8759E8(__p, a2);
  MEMORY[0x19EAE95F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B96037C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B960580(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a12)
  {
    sub_19B8750F8(a12);
  }

  if (a14)
  {
    sub_19B8750F8(a14);
  }

  MEMORY[0x19EAE98C0](v28, v29, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

CLBBTimeFreqTransferCallbackAssertion *sub_19B96068C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D6D0);
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLBBTFTA,reason missing}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D6D0);
      }
    }

    v12 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      return 0;
    }

    *buf = 68289026;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v13 = "CLBBTFTA,reason missing";
    v14 = "{msg%{public}.0s:CLBBTFTA,reason missing}";
    goto LABEL_35;
  }

  if (!a1 || !a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D6D0);
    }

    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLBBTFTA,bundleID or bundlePath needed}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D6D0);
      }
    }

    v12 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      return 0;
    }

    *buf = 68289026;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v13 = "CLBBTFTA,bundleID or bundlePath needed";
    v14 = "{msg%{public}.0s:CLBBTFTA,bundleID or bundlePath needed}";
    goto LABEL_35;
  }

  if (!a4)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D6D0);
    }

    v16 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLBBTFTA,nil callback queue}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D6D0);
      }
    }

    v12 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      return 0;
    }

    *buf = 68289026;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v13 = "CLBBTFTA,nil callback queue";
    v14 = "{msg%{public}.0s:CLBBTFTA,nil callback queue}";
    goto LABEL_35;
  }

  if (a5)
  {
    v18[0] = @"kCLConnectionMessageBundleIdentifierKey";
    v18[1] = @"kCLConnectionMessageBundlePathKey";
    v19[0] = a1;
    v19[1] = a2;
    v18[2] = @"kCLConnectionMessagePurposeKey";
    v19[2] = a3;
    v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v19, v18, 3);
    v8 = [CLBBTimeFreqTransferCallbackAssertion alloc];
    return objc_msgSend_initWithRegistrationMessageName_messageDictionary_dispatchQueue_codeBlock_(v8, v9, "kCLConnectionMessageBBTimeFreqTransferAssert", v7, a4, a5);
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D6D0);
  }

  v17 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLBBTFTA,nil callback block}", buf, 0x12u);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D6D0);
    }
  }

  v12 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    *buf = 68289026;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v13 = "CLBBTFTA,nil callback block";
    v14 = "{msg%{public}.0s:CLBBTFTA,nil callback block}";
LABEL_35:
    _os_signpost_emit_with_name_impl(&dword_19B873000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v13, v14, buf, 0x12u);
  }

  return 0;
}

void sub_19B960C68(uint64_t a1, CLConnectionMessage **a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D6D0);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v4 = CLConnectionMessage::name(*a2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    *buf = 136315138;
    v14 = v5;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "CLBBTFTA,unexpected message,%s", buf, 0xCu);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D6D0);
    }

    v7 = qword_1ED519090;
    v8 = CLConnectionMessage::name(*a2);
    if (*(v8 + 23) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *v8;
    }

    v11 = 136315138;
    v12 = v9;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v7, 2, "CLBBTFTA,unexpected message,%s", &v11, 12);
    sub_19B885924("Generic", 1, 0, 2, "CLCallbackAssertionInternal::CLCallbackAssertionInternal(dispatch_queue_t, const char *, NSDictionary *, BBTimeFreqTransferCallback)_block_invoke", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }
}

uint64_t sub_19B960E60(uint64_t a1, CLConnectionMessage **a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D6D0);
  }

  v4 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v5 = CLConnectionMessage::name(*a2);
    if (*(v5 + 23) >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = *v5;
    }

    v19[0] = 68289282;
    v19[1] = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2082;
    v23 = v6;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLBBTFTA, Connection Message:%{public, location:escape_only}s}", v19, 0x1Cu);
  }

  v7 = CLConnectionMessage::name(*a2);
  if (*(v7 + 23) < 0 && *(v7 + 8) == 49 && !memcmp(*v7, "kCLConnectionMessageBBTimeFreqTransferAssertError", 0x31uLL))
  {
    result = CLConnectionMessage::getDictionary(*a2);
    if (*(v3 + 8))
    {
      v14 = result;
      v15 = objc_alloc(MEMORY[0x1E696ABC0]);
      v17 = objc_msgSend_initWithDomain_code_userInfo_(v15, v16, @"CLBBTFTA Error", 0, v14);
      return (*(*(v3 + 8) + 16))();
    }
  }

  else
  {
    v8 = CLConnectionMessage::name(*a2);
    if (*(v8 + 23) < 0 && *(v8 + 8) == 49 && !memcmp(*v8, "kCLConnectionMessageBBTimeFreqTransferMeasurement", 0x31uLL))
    {
      Dictionary = CLConnectionMessage::getDictionary(*a2);
      result = *(v3 + 8);
      if (result)
      {
        return (*(result + 16))(result, Dictionary, 0, 0);
      }
    }

    else
    {
      result = CLConnectionMessage::name(*a2);
      if (*(result + 23) < 0 && *(result + 8) == 31 && **result == 0x656E6E6F434C436BLL && *(*result + 8) == 0x73654D6E6F697463 && *(*result + 16) == 0x53534E4765676173 && *(*result + 23) == 0x70614D7461654853)
      {
        v13 = CLConnectionMessage::getDictionary(*a2);
        result = *(v3 + 8);
        if (result)
        {
          return (*(result + 16))(result, 0, v13, 0);
        }
      }
    }
  }

  return result;
}

uint64_t sub_19B961718()
{
  qword_1ED5192B0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  objc_msgSend_setDateStyle_(qword_1ED5192B0, v0, 1, v1);
  objc_msgSend_setTimeStyle_(qword_1ED5192B0, v2, 4, v3);
  v5 = qword_1ED5192B0;

  return MEMORY[0x1EEE66B58](v5, sel_setFormatterBehavior_, 1040, v4);
}

os_log_t sub_19B961BF8()
{
  result = os_log_create("com.apple.locationd.Utility", "QA");
  qword_1EAFE47C0 = result;
  return result;
}

void sub_19B963BBC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (byte_1EAFE5108 == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D770);
    }

    v4 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "CLMM, memory cache and tile count limit already set", buf, 2u);
    }

    v5 = sub_19B87DD40();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D770);
      }

      LOWORD(v12[0]) = 0;
      v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM, memory cache and tile count limit already set", v12, 2);
      sub_19B885924("Generic", 1, 0, 2, "static void CLGeoMapAccessTileLoader::setTileMemoryCacheAndCountLimits()", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    objc_msgSend_setMemoryCacheCountLimit_(MEMORY[0x1E69A2610], a2, 9, a4);
    objc_msgSend_setMemoryCacheTotalCostLimit_(MEMORY[0x1E69A2610], v7, 153600, v8);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D770);
    }

    v9 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      v16 = 153600;
      v17 = 1024;
      v18 = 9;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEBUG, "CLMM,GEOTileLoader memory cache,%d,tile count limit,%d", buf, 0xEu);
    }

    v10 = sub_19B87DD40();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D770);
      }

      v12[0] = 67109376;
      v12[1] = 153600;
      v13 = 1024;
      v14 = 9;
      v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,GEOTileLoader memory cache,%d,tile count limit,%d", v12, 14);
      sub_19B885924("Generic", 1, 0, 2, "static void CLGeoMapAccessTileLoader::setTileMemoryCacheAndCountLimits()", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    byte_1EAFE5108 = 1;
  }
}

os_log_t sub_19B963F34()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

uint64_t sub_19B964614(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = *v5;
    *(a1 + 16) = a3;
    sub_19B8750F8(v4);
  }

  else
  {
    *a1 = *v5;
    *(a1 + 16) = a3;
  }

  return a1;
}

uint64_t sub_19B964678(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v5 = objc_msgSend_roadID(a1, a2, a3, a4);
  v50 = v5;
  if (objc_msgSend_coordinateCount(a1, v6, v7, v8) >= 2)
  {
    __p = 0;
    v48 = 0;
    v49 = 0;
    v46 = *objc_msgSend_coordinates(a1, v9, v10, v11);
    sub_19B8F1158(&__p, &v46);
    v15 = 1;
    v16 = 16;
    while (objc_msgSend_coordinateCount(a1, v12, v13, v14) > v15)
    {
      v45 = *(objc_msgSend_coordinates(a1, v17, v18, v19) + v16);
      v22 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v20, @"%.7lf", v21, v45);
      v25 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v23, @"%.7lf", v24, *(&v45 + 1));
      objc_msgSend_doubleValue(v22, v26, v27, v28);
      *&v45 = v29;
      objc_msgSend_doubleValue(v25, v30, v31, v32);
      *(&v45 + 1) = v33;
      if (vabdd_f64(*(&v46 + 1), v33) >= 0.0000001 || vabdd_f64(*&v46, *&v45) >= 0.0000001)
      {
        sub_19B8F1158(&__p, &v45);
      }

      v46 = v45;
      ++v15;
      v16 += 16;
    }

    v34 = __p;
    if ((v48 - __p) >= 0x11)
    {
      isRail = objc_msgSend_isRail(a1, v17, v18, v19);
      isBridge = objc_msgSend_isBridge(a1, v36, v37, v38);
      isTunnel = objc_msgSend_isTunnel(a1, v40, v41, v42);
      sub_19B8F1FB4(isRail, isBridge, isTunnel, &__p, &v50);
      v5 = v50;
      v34 = __p;
    }

    if (v34)
    {
      v48 = v34;
      operator delete(v34);
    }
  }

  return v5;
}

void sub_19B964834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B964860(unsigned __int8 *a1, double *a2, void *a3, uint64_t a4, double a5)
{
  v5 = a4;
  v159 = *MEMORY[0x1E69E9840];
  *a2 = -1.0;
  if (*a1 != 1 || (v7 = *(a1 + 8)) == 0 || *(v7 + 18) != 1 || (v11 = *(a1 + 22), v11 > 0.0) && vabdd_f64(a5, v11) <= 0.9)
  {
    if (!a4)
    {
      return 0;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v15 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 8);
      if (v16)
      {
        v17 = *(v16 + 18);
      }

      else
      {
        v17 = -1;
      }

      v18 = *a1;
      v19 = *(a1 + 22);
      *buf = 67240704;
      *v140 = v17;
      *&v140[4] = 1026;
      *&v140[6] = v18;
      *v141 = 2050;
      *&v141[2] = v19;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEBUG, "CLMM,no TEPA,isTunnel,%{public}d,isSnapUsable,%{public}d,lastAssistanceTime,%{public}.1lf", buf, 0x18u);
    }

    v20 = sub_19B87DD40();
    if (*(v20 + 160) <= 1 && *(v20 + 164) <= 1 && *(v20 + 168) <= 1 && !*(v20 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v21 = *(a1 + 8);
    if (v21)
    {
      v22 = *(v21 + 18);
    }

    else
    {
      v22 = -1;
    }

    v23 = *a1;
    v24 = *(a1 + 22);
    *v115 = 67240704;
    *&v115[4] = v22;
    *&v115[8] = 1026;
    *&v115[10] = v23;
    *&v115[14] = 2050;
    *&v115[16] = v24;
    v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,no TEPA,isTunnel,%{public}d,isSnapUsable,%{public}d,lastAssistanceTime,%{public}.1lf", v115, 24);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::findTunnelEndPoint(double, CLGpsAssistant_Type::TunnelEndPositionAssistance &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v14);
    goto LABEL_37;
  }

  if (objc_msgSend_isLocationShiftRequiredForCoordinate_(MEMORY[0x1E69A1E80], a2, a3, a4, *(a1 + 12), *(a1 + 13)))
  {
    if (!v5)
    {
      return 0;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v12 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *v140 = a5;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,no TEPA, shifted coordinates", buf, 0xCu);
    }

    v13 = sub_19B87DD40();
    if (*(v13 + 160) <= 1 && *(v13 + 164) <= 1 && *(v13 + 168) <= 1 && !*(v13 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    *v115 = 134349056;
    *&v115[4] = a5;
    v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,no TEPA, shifted coordinates", v115, 12);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::findTunnelEndPoint(double, CLGpsAssistant_Type::TunnelEndPositionAssistance &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v14);
LABEL_37:
    if (v14 != buf)
    {
      free(v14);
    }

    return 0;
  }

  v27 = *(a1 + 8);
  v28 = *(a1 + 9);
  v111 = v27;
  v112 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v29 = *(v27 + 18);
  v30 = *(a1 + 14);
  *(a2 + 72) = 0;
  if (v29 != 1)
  {
    v31 = 0;
    v32 = 0.0;
    goto LABEL_96;
  }

  v31 = 0;
  v32 = 0.0;
  __asm { FMOV            V0.2D, #-1.0 }

  v105 = _Q0;
  while (1)
  {
    v38 = v111;
    if (!v111)
    {
      goto LABEL_96;
    }

    if (v31 == 200)
    {
      break;
    }

    sub_19B9F5AA8(v111);
    v39 = v38[5];
    *a2 = a5;
    v40 = v111;
    v41 = *(v111 + 18);
    v42 = v41 - *(v111 + 17);
    if (v42)
    {
      v43 = *(v41 - 16);
    }

    else
    {
      v43 = 0uLL;
    }

    *(a2 + 1) = v43;
    v44 = v42 >> 4;
    v45 = -1.0;
    if (v44 >= 2)
    {
      v45 = sub_19B9F5C98(v40, v44 - 2);
      v40 = v111;
    }

    a2[4] = v45;
    a2[8] = v40[12];
    if (sub_19B9F5D9C(v40) >= 1)
    {
      *(a2 + 72) = 1;
    }

    v46 = fmod(*(a1 + 22) - a2[4], 360.0);
    if (v46 < 0.0)
    {
      v46 = v46 + 360.0;
    }

    if (v46 > 180.0)
    {
      v46 = v46 + -360.0;
    }

    if (fabs(v46) > 7.5)
    {
      *(a2 + 72) = 1;
    }

    v47 = v111;
    sub_19B9F5AA8(v111);
    v48 = 1.0 - v30;
    v49 = v47[5];
    v109 = 0;
    v110 = 0.0;
    v107 = &v107;
    v108 = &v107;
    *v115 = 0;
    *&v115[16] = v105;
    *v116 = 0uLL;
    *&v116[16] = 0xBFF0000000000000;
    v128 = 0;
    v129 = 0;
    v125 = 0u;
    v126 = 0u;
    v127 = 0;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    memset(v133, 0, sizeof(v133));
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    memset(v124, 0, sizeof(v124));
    v123 = 0u;
    v122 = 0u;
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
    v118 = 0u;
    memset(v117, 0, sizeof(v117));
    *&v116[24] = 0u;
    v138 = 0xBFF0000000000000;
    v137 = 0;
    *&v115[8] = a5;
    if (!(*(**a3 + 80))(*a3, v115, &v107, 0, 1, &v111, 1, &v110, v30, v49 * (1.0 - v30) + 1.0))
    {
      goto LABEL_76;
    }

    if (v109 != 1 || v110 < 0.0)
    {
      if (v5)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
        }

        v56 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67240192;
          *v140 = v109;
          _os_log_impl(&dword_19B873000, v56, OS_LOG_TYPE_DEBUG, "CLMM,no TEPA,multi-outbound,%{public}d", buf, 8u);
        }

        v57 = sub_19B87DD40();
        if (*(v57 + 160) > 1 || *(v57 + 164) > 1 || *(v57 + 168) > 1 || *(v57 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
          }

          v113 = 67240192;
          v114 = v109;
          v58 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,no TEPA,multi-outbound,%{public}d", &v113, 8);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::findTunnelEndPoint(double, CLGpsAssistant_Type::TunnelEndPositionAssistance &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v58);
          if (v58 != buf)
          {
            free(v58);
          }
        }
      }

      v55 = 0;
      *a2 = -1.0;
      goto LABEL_91;
    }

    v50 = v108[2];
    v51 = v108[3];
    if (v51)
    {
      atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v52 = v112;
    v111 = v50;
    v112 = v51;
    if (v52)
    {
      sub_19B8750F8(v52);
      v50 = v111;
    }

    v53 = sub_19B9F5D20(v50, 0, 1u);
    if (v53 < 0.0)
    {
      goto LABEL_73;
    }

    v54 = fmod(v53 - a2[4], 360.0);
    if (v54 < 0.0)
    {
      v54 = v54 + 360.0;
    }

    if (v54 > 180.0)
    {
      v54 = v54 + -360.0;
    }

    if (fabs(v54) > 7.5)
    {
LABEL_73:
      *(a2 + 72) = 1;
    }

    v30 = 0.0;
    if (v111)
    {
      v55 = *(v111 + 18);
    }

    else
    {
LABEL_76:
      v55 = 0;
    }

LABEL_91:
    if (SHIBYTE(v120) < 0)
    {
      operator delete(*(&v119 + 1));
    }

    v32 = v32 + v39 * v48;
    sub_19B916DC0(&v107);
    ++v31;
    if ((v55 & 1) == 0)
    {
      goto LABEL_96;
    }
  }

  *a2 = -1.0;
  if (v5)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v80 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240192;
      *v140 = 201;
      _os_log_impl(&dword_19B873000, v80, OS_LOG_TYPE_DEBUG, "CLMM,TEPA,outgoing reached max iterations,%{public}d", buf, 8u);
    }

    v81 = sub_19B87DD40();
    if (*(v81 + 160) > 1 || *(v81 + 164) > 1 || *(v81 + 168) > 1 || *(v81 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
      }

      *v115 = 0xC904020100;
      v82 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,TEPA,outgoing reached max iterations,%{public}d", v115, 8);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::findTunnelEndPoint(double, CLGpsAssistant_Type::TunnelEndPositionAssistance &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v82);
      if (v82 != buf)
      {
        free(v82);
      }
    }

    v31 = 201;
LABEL_96:
    v59 = *a2;
    if (*a2 > 0.0)
    {
      a2[14] = v32;
      a2[3] = 25.0;
      *(a2 + 5) = xmmword_19BA8BD40;
      a2[7] = -1.0;
      v60 = *(a1 + 4);
      if (v60 > 0.0)
      {
        a2[6] = *(a1 + 5);
        a2[7] = v60;
      }

      *(a1 + 22) = v59;
      a2[11] = 0.0;
      a2[12] = 0.0;
      v61 = (a2 + 11);
      a2[13] = v32;
      v62 = *(a1 + 8);
      v63 = *(a1 + 9);
      if (v63)
      {
        atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v64 = v112;
      v111 = v62;
      v112 = v63;
      if (v64)
      {
        sub_19B8750F8(v64);
        v62 = v111;
      }

      if (*(v62 + 18) == 1)
      {
        v65 = 0;
        v66 = *(a1 + 14);
        __asm { FMOV            V0.2D, #-1.0 }

        v106 = _Q0;
        while (1)
        {
          v68 = v111;
          if (!v111)
          {
            goto LABEL_166;
          }

          if (v65 == 200)
          {
            a2[13] = -1.0;
            *v61 = 0;
            a2[12] = 0.0;
            if (v5)
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
              }

              v83 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                *buf = 67240192;
                *v140 = 201;
                _os_log_impl(&dword_19B873000, v83, OS_LOG_TYPE_DEBUG, "CLMM,TEPA,incoming reached max iterations,%{public}d", buf, 8u);
              }

              v84 = sub_19B87DD40();
              if (*(v84 + 160) > 1 || *(v84 + 164) > 1 || *(v84 + 168) > 1 || *(v84 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
                }

                *v115 = 0xC904020100;
                v85 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,TEPA,incoming reached max iterations,%{public}d", v115, 8);
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::findTunnelEndPoint(double, CLGpsAssistant_Type::TunnelEndPositionAssistance &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v85);
                if (v85 != buf)
                {
                  free(v85);
                }
              }
            }

            v65 = 201;
            goto LABEL_166;
          }

          sub_19B9F5AA8(v111);
          a2[13] = a2[13] + v68[5] * v66;
          v69 = v111;
          v70 = *(v111 + 17);
          if (*(v111 + 18) == v70)
          {
            v71 = 0uLL;
          }

          else
          {
            v71 = *v70;
          }

          *v61 = v71;
          sub_19B9F5AA8(v69);
          v72 = v69[5];
          v109 = 0;
          v110 = 0.0;
          v107 = &v107;
          v108 = &v107;
          *v115 = 0;
          *&v115[16] = v106;
          *v116 = 0uLL;
          *&v116[16] = 0xBFF0000000000000;
          v128 = 0;
          v129 = 0;
          v125 = 0u;
          v126 = 0u;
          v127 = 0;
          v130 = 0u;
          v131 = 0u;
          v132 = 0u;
          memset(v133, 0, sizeof(v133));
          v134 = 0u;
          v135 = 0u;
          v136 = 0u;
          memset(v124, 0, sizeof(v124));
          v123 = 0u;
          v122 = 0u;
          v121 = 0u;
          v120 = 0u;
          v119 = 0u;
          v118 = 0u;
          memset(v117, 0, sizeof(v117));
          *&v116[24] = 0u;
          v138 = 0xBFF0000000000000;
          v137 = 0;
          *&v115[8] = a5;
          if (!(*(**a3 + 80))(*a3, v115, 0, &v107, 0, &v111, 1, &v110, v66, v72 * v66 + 1.0))
          {
            goto LABEL_132;
          }

          if (v109 != 1 || v110 < 0.0)
          {
            break;
          }

          v73 = v108[2];
          v74 = v108[3];
          if (v74)
          {
            atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v75 = v112;
          v111 = v73;
          v112 = v74;
          if (v75)
          {
            sub_19B8750F8(v75);
            v73 = v111;
          }

          v66 = 1.0;
          if (!v73)
          {
            goto LABEL_132;
          }

          v76 = *(v73 + 18);
LABEL_133:
          if (SHIBYTE(v120) < 0)
          {
            operator delete(*(&v119 + 1));
          }

          sub_19B916DC0(&v107);
          ++v65;
          if ((v76 & 1) == 0)
          {
            goto LABEL_166;
          }
        }

        a2[13] = -1.0;
        *v61 = 0;
        a2[12] = 0.0;
        if (v5)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
          }

          v77 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67240192;
            *v140 = v109;
            _os_log_impl(&dword_19B873000, v77, OS_LOG_TYPE_DEBUG, "CLMM,no TEPA,multi-inbound,%{public}d", buf, 8u);
          }

          v78 = sub_19B87DD40();
          if (*(v78 + 160) > 1 || *(v78 + 164) > 1 || *(v78 + 168) > 1 || *(v78 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
            }

            v113 = 67240192;
            v114 = v109;
            v79 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,no TEPA,multi-inbound,%{public}d", &v113, 8);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::findTunnelEndPoint(double, CLGpsAssistant_Type::TunnelEndPositionAssistance &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v79);
            if (v79 != buf)
            {
              free(v79);
            }
          }
        }

LABEL_132:
        v76 = 0;
        goto LABEL_133;
      }

      v65 = 0;
LABEL_166:
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
      }

      v86 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v87 = *(a2 + 1);
        v88 = *(a2 + 2);
        v89 = *(a2 + 11);
        v90 = *(a2 + 12);
        v91 = *(a2 + 6);
        v92 = *(a2 + 7);
        v93 = *(a2 + 13);
        v94 = *(a2 + 14);
        *buf = 134351617;
        *v140 = a5;
        *&v140[8] = 2053;
        *v141 = v87;
        *&v141[8] = 2053;
        v142 = v88;
        v143 = 2053;
        v144 = v89;
        v145 = 2053;
        v146 = v90;
        v147 = 2050;
        v148 = v91;
        v149 = 2050;
        v150 = v92;
        v151 = 2050;
        v152 = v93;
        v153 = 2050;
        v154 = v94;
        v155 = 1026;
        v156 = v31;
        v157 = 1026;
        v158 = v65;
        _os_log_impl(&dword_19B873000, v86, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,TEPA,ell,%{sensitive}.7lf,%{sensitive}.7lf,sll,%{sensitive}.7lf,%{sensitive}.7lf,alt,%{public}.1lf,vUnc,%{public}.1lf,length,%{public}.2lf,distFromCurrentParticle,%{public}.1lf,iterCountOut,%{public}d,iterCountIn,%{public}d", buf, 0x68u);
      }

      v95 = sub_19B87DD40();
      if (*(v95 + 160) > 1 || *(v95 + 164) > 1 || *(v95 + 168) > 1 || *(v95 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
        }

        v96 = *(a2 + 1);
        v97 = *(a2 + 2);
        v98 = *(a2 + 11);
        v99 = *(a2 + 12);
        v100 = *(a2 + 6);
        v101 = *(a2 + 7);
        v102 = *(a2 + 13);
        v103 = *(a2 + 14);
        *v115 = 134351617;
        *&v115[4] = a5;
        *&v115[12] = 2053;
        *&v115[14] = v96;
        *&v115[22] = 2053;
        *&v115[24] = v97;
        *v116 = 2053;
        *&v116[2] = v98;
        *&v116[10] = 2053;
        *&v116[12] = v99;
        *&v116[20] = 2050;
        *&v116[22] = v100;
        *&v116[30] = 2050;
        *&v116[32] = v101;
        LOWORD(v117[0]) = 2050;
        *(v117 + 2) = v102;
        HIWORD(v117[2]) = 2050;
        *&v117[3] = v103;
        LOWORD(v117[5]) = 1026;
        *(&v117[5] + 2) = v31;
        HIWORD(v117[6]) = 1026;
        v117[7] = v65;
        v104 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,TEPA,ell,%{sensitive}.7lf,%{sensitive}.7lf,sll,%{sensitive}.7lf,%{sensitive}.7lf,alt,%{public}.1lf,vUnc,%{public}.1lf,length,%{public}.2lf,distFromCurrentParticle,%{public}.1lf,iterCountOut,%{public}d,iterCountIn,%{public}d", v115, 104);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::findTunnelEndPoint(double, CLGpsAssistant_Type::TunnelEndPositionAssistance &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v104);
        if (v104 != buf)
        {
          free(v104);
        }
      }
    }
  }

  v25 = *a2 > 0.0;
  if (v112)
  {
    sub_19B8750F8(v112);
  }

  return v25;
}

void sub_19B965A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a20)
  {
    sub_19B8750F8(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B965AA8(double *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v148 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 96);
  v9 = *(a2 + 76);
  v10 = *(a2 + 44);
  if (v10 >= 0.0)
  {
    a1[6] = v9;
    a1[1] = v10;
  }

  if (*a1 != 1 || (v11 = *(a1 + 8)) == 0 || ((v12 = a1[7], v13 = v9 - v12, v12 > 0.0) ? (v14 = v13 > 5.0) : (v14 = 1), v14 || *(v11 + 18) != 1 || (v8 == 3 || a1[2] <= 0.0) && ((v15 = a1[6], v15 <= 0.0) || (v13 = a1[1], v13 < 0.0) || v9 - v15 > 15.0)))
  {
    if (!a4)
    {
      return 0;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v21 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a2 + 76);
      v23 = *(a1 + 8);
      if (v23)
      {
        v24 = *(v23 + 18);
      }

      else
      {
        v24 = -1;
      }

      v25 = *a1;
      v27 = *(a1 + 6);
      v26 = *(a1 + 7);
      v28 = *(a1 + 1);
      v29 = *(a1 + 2);
      *buf = 134351104;
      v137 = v22;
      v138 = 1026;
      *v139 = v24;
      *&v139[4] = 1026;
      *&v139[6] = v25;
      *v140 = 2050;
      *&v140[2] = v26;
      *v141 = 2050;
      *&v141[2] = 0x4014000000000000;
      *v142 = 2050;
      *&v142[2] = v28;
      *v143 = 2050;
      *&v143[2] = v27;
      v144 = 2050;
      v145 = 0x402E000000000000;
      v146 = 2050;
      v147 = v29;
      _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,NotPropagating,isTunnel,%{public}d,isSnapUsable,%{public}d,particleTime,%{public}.2lf,particleTimeOut,%{public}.1lf,speed,%{public}.2lf,speedTime,%{public}.2lf,speedTimeOut,%{public}.1lf,speedLimit,%{public}.1lf", buf, 0x54u);
    }

    v30 = sub_19B87DD40();
    if (*(v30 + 160) <= 1 && *(v30 + 164) <= 1 && *(v30 + 168) <= 1 && !*(v30 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v31 = *(a2 + 76);
    v32 = *(a1 + 8);
    if (v32)
    {
      v33 = *(v32 + 18);
    }

    else
    {
      v33 = -1;
    }

    v34 = *a1;
    v36 = *(a1 + 6);
    v35 = *(a1 + 7);
    v37 = *(a1 + 1);
    v38 = *(a1 + 2);
    *v118 = 134351104;
    *&v118[4] = v31;
    *&v118[12] = 1026;
    *&v118[14] = v33;
    *&v118[18] = 1026;
    *&v118[20] = v34;
    *&v118[24] = 2050;
    *&v118[26] = v35;
    *&v118[34] = 2050;
    *&v118[36] = 0x4014000000000000;
    *&v118[44] = 2050;
    *&v118[46] = v37;
    *&v118[54] = 2050;
    *&v118[56] = v36;
    *&v118[64] = 2050;
    *&v118[66] = 0x402E000000000000;
    *&v118[74] = 2050;
    *&v118[76] = v38;
    v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,NotPropagating,isTunnel,%{public}d,isSnapUsable,%{public}d,particleTime,%{public}.2lf,particleTimeOut,%{public}.1lf,speed,%{public}.2lf,speedTime,%{public}.2lf,speedTimeOut,%{public}.1lf,speedLimit,%{public}.1lf", v118, 84);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::propagateSolution(CLDaemonLocation &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v20);
    goto LABEL_47;
  }

  if (objc_msgSend_isLocationShiftRequiredForCoordinate_(MEMORY[0x1E69A1E80], a2, a3, a4, a1[12], a1[13], v13) && *(a2 + 132) != 2)
  {
    if (!v4)
    {
      return 0;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v16 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a2 + 76);
      *buf = 134349056;
      v137 = v17;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,NotPropagating, shifting is required but accessory is outputting  unshifted coordinates", buf, 0xCu);
    }

    v18 = sub_19B87DD40();
    if (*(v18 + 160) <= 1 && *(v18 + 164) <= 1 && *(v18 + 168) <= 1 && !*(v18 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v19 = *(a2 + 76);
    *v118 = 134349056;
    *&v118[4] = v19;
    v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,NotPropagating, shifting is required but accessory is outputting  unshifted coordinates", v118, 12);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::propagateSolution(CLDaemonLocation &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v20);
LABEL_47:
    if (v20 != buf)
    {
      free(v20);
    }

    return 0;
  }

  v41 = *(a2 + 76) - a1[7];
  if (v41 < 0.0)
  {
    if (!v4)
    {
      return 0;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v42 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v43 = *(a2 + 76);
      v44 = *(a1 + 7);
      *buf = 134349312;
      v137 = v43;
      v138 = 2050;
      *v139 = v44;
      _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,NotPropagating,time lower than particleTime, %{public}.2lf", buf, 0x16u);
    }

    v45 = sub_19B87DD40();
    if (*(v45 + 160) <= 1 && *(v45 + 164) <= 1 && *(v45 + 168) <= 1 && !*(v45 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v46 = *(a2 + 76);
    v47 = *(a1 + 7);
    *v118 = 134349312;
    *&v118[4] = v46;
    *&v118[12] = 2050;
    *&v118[14] = v47;
    v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,NotPropagating,time lower than particleTime, %{public}.2lf", v118, 22);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::propagateSolution(CLDaemonLocation &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v20);
    goto LABEL_47;
  }

  if (v8 == 3 || (v48 = a1[2], v48 <= 0.0))
  {
    v48 = a1[1];
  }

  else if (a1[1] >= v48)
  {
    v48 = a1[1];
  }

  v49 = v41 * v48;
  if (v41 * v48 <= 225.0)
  {
    v50 = v41 * v48;
  }

  else
  {
    v50 = 225.0;
  }

  if (v41 * v48 > 225.0 && v4 != 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v52 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v53 = *(a2 + 76);
      *buf = 134349568;
      v137 = v53;
      v138 = 2050;
      *v139 = v49;
      *&v139[8] = 2050;
      *v140 = 0x406C200000000000;
      _os_log_impl(&dword_19B873000, v52, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,limit distance to propagate,orig,%{public}.1lf,new,%{public}.1lf", buf, 0x20u);
    }

    v54 = sub_19B87DD40();
    if (*(v54 + 160) > 1 || *(v54 + 164) > 1 || *(v54 + 168) > 1 || *(v54 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
      }

      v55 = *(a2 + 76);
      *v118 = 134349568;
      *&v118[4] = v55;
      *&v118[12] = 2050;
      *&v118[14] = v49;
      *&v118[22] = 2050;
      *&v118[24] = 0x406C200000000000;
      v56 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,limit distance to propagate,orig,%{public}.1lf,new,%{public}.1lf", v118, 32);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::propagateSolution(CLDaemonLocation &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v56);
      if (v56 != buf)
      {
        free(v56);
      }
    }

    v50 = 225.0;
  }

  *v118 = 0;
  *&v118[8] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v96 = _Q0;
  *&v118[16] = _Q0;
  *&v118[32] = 0;
  *&v118[40] = 0;
  *&v118[48] = 0xBFF0000000000000;
  v128 = 0;
  v129 = 0;
  memset(&v126[32], 0, 32);
  v127 = 0;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  memset(v133, 0, 27);
  memset(&v133[32], 0, 48);
  memset(v126, 0, 30);
  v125 = 0u;
  v124 = 0u;
  v123 = 0u;
  v122 = 0u;
  v121 = 0u;
  v120 = 0u;
  v119 = 0u;
  memset(&v118[56], 0, 32);
  v135 = 0xBFF0000000000000;
  v134 = 0;
  v99[0] = v99;
  v99[1] = v99;
  v100 = 0;
  v98 = 0;
  if (((*(**a3 + 80))(*a3, v118, v99, 0, 1, a1 + 8, *(a1 + 84), &v98, a1[14], v50) & 1) == 0)
  {
    if (!v4)
    {
      goto LABEL_118;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v64 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v64, OS_LOG_TYPE_DEBUG, "CLMM,NotPropagating,roadsAtIntersection returned false", buf, 2u);
    }

    v65 = sub_19B87DD40();
    if (*(v65 + 160) <= 1 && *(v65 + 164) <= 1 && *(v65 + 168) <= 1 && !*(v65 + 152))
    {
      goto LABEL_118;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    *v113 = 0;
    v63 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,NotPropagating,roadsAtIntersection returned false", v113, 2);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::propagateSolution(CLDaemonLocation &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v63);
    goto LABEL_116;
  }

  if (v100 >= 2)
  {
    if (!v4)
    {
      goto LABEL_118;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v61 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      v137 = v100;
      v138 = 2050;
      *v139 = v50;
      _os_log_impl(&dword_19B873000, v61, OS_LOG_TYPE_DEBUG, "CLMM,NotPropagating,multi-outbound,%{public}lu,intersection within the distance,%{public}.2lf, needed to be travelled returned", buf, 0x16u);
    }

    v62 = sub_19B87DD40();
    if (*(v62 + 160) <= 1 && *(v62 + 164) <= 1 && *(v62 + 168) <= 1 && !*(v62 + 152))
    {
      goto LABEL_118;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    *v113 = 134349312;
    *&v113[4] = v100;
    v114 = 2050;
    v115 = v50;
    v63 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,NotPropagating,multi-outbound,%{public}lu,intersection within the distance,%{public}.2lf, needed to be travelled returned", v113, 22);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::propagateSolution(CLDaemonLocation &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v63);
LABEL_116:
    if (v63 != buf)
    {
      free(v63);
    }

LABEL_118:
    v39 = 0;
    goto LABEL_180;
  }

  sub_19B9676B4(v113, (a1 + 8));
  v97[0] = v97;
  v97[1] = v97;
  v97[2] = 0;
  if (((*(**a3 + 88))(*a3, v113, v97, v50) & 1) == 0)
  {
    if (!v4)
    {
      goto LABEL_178;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v83 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v83, OS_LOG_TYPE_DEBUG, "CLMM,NotPropagating,moveOnRoad returned false", buf, 2u);
    }

    v84 = sub_19B87DD40();
    if (*(v84 + 160) <= 1 && *(v84 + 164) <= 1 && *(v84 + 168) <= 1 && !*(v84 + 152))
    {
      goto LABEL_178;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    LOWORD(v101) = 0;
    v85 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,NotPropagating,moveOnRoad returned false", &v101, 2);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::propagateSolution(CLDaemonLocation &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v85);
    goto LABEL_176;
  }

  if (!*v113)
  {
    if (!v4)
    {
      goto LABEL_178;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v86 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v86, OS_LOG_TYPE_FAULT, "CLMM,NotPropagating,NULL road", buf, 2u);
    }

    v87 = sub_19B87DD40();
    if ((*(v87 + 160) & 0x80000000) != 0 && (*(v87 + 164) & 0x80000000) != 0 && (*(v87 + 168) & 0x80000000) != 0 && !*(v87 + 152))
    {
      goto LABEL_178;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    LOWORD(v101) = 0;
    v85 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 17, "CLMM,NotPropagating,NULL road", &v101, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::propagateSolution(CLDaemonLocation &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v85);
    goto LABEL_176;
  }

  if (*(*v113 + 18))
  {
    if (v4)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
      }

      v66 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v67 = *(a2 + 76);
        v68 = *(a1 + 1);
        v69 = *(a1 + 2);
        *buf = 134350337;
        v137 = v67;
        v138 = 2053;
        *v139 = v117;
        *&v139[8] = 2053;
        *v140 = *(&v117 + 1);
        *&v140[8] = 2050;
        *v141 = v116;
        *&v141[8] = 2050;
        *v142 = v68;
        *&v142[8] = 2050;
        *v143 = v69;
        _os_log_impl(&dword_19B873000, v66, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,Propagating,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,course,%{public}.3lf,speed,%{public}.1lf,speedLimit,%{public}.1lf", buf, 0x3Eu);
      }

      v70 = sub_19B87DD40();
      if (*(v70 + 160) > 1 || *(v70 + 164) > 1 || *(v70 + 168) > 1 || *(v70 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
        }

        v71 = *(a2 + 76);
        v72 = *(a1 + 1);
        v73 = *(a1 + 2);
        v101 = 134350337;
        v102 = v71;
        v103 = 2053;
        v104 = v117;
        v105 = 2053;
        v106 = *(&v117 + 1);
        v107 = 2050;
        v108 = v116;
        v109 = 2050;
        v110 = v72;
        v111 = 2050;
        v112 = v73;
        v74 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,Propagating,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,course,%{public}.3lf,speed,%{public}.1lf,speedLimit,%{public}.1lf", &v101, 62);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::propagateSolution(CLDaemonLocation &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v74);
        if (v74 != buf)
        {
          free(v74);
        }
      }
    }

    v75 = *(a2 + 76);
    a1[6] = v75;
    *(a2 + 4) = v117;
    v76 = v116;
    *(a2 + 60) = v116;
    *(a2 + 52) = 0x3FC999999999999ALL;
    *(a2 + 68) = 0x4008000000000000;
    *(a2 + 28) = xmmword_19BA896C0;
    v77 = *(a2 + 96);
    if (v77 != 3)
    {
      *(a2 + 44) = v96;
    }

    v78 = a1[4];
    if (v78 <= 0.0)
    {
      v80 = 0.0;
      v82 = -1.0;
    }

    else
    {
      v79 = (a2 + 36);
      v80 = a1[5];
      *(a2 + 28) = v80;
      v81 = v78 + v41 * 0.15;
      *(a2 + 36) = v81;
      if (v81 > 200.0)
      {
        v79 = &unk_19BA8BD50;
      }

      v82 = *v79;
      *(a2 + 36) = *v79;
    }

    *(a2 + 20) = 0x4024000000000000;
    v90 = (a2 + 20);
    v91 = 10.0;
    if ((v77 & 0xFFFFFFF7) == 1)
    {
      v92 = a1[3] + v41 * 0.5;
      *v90 = v92;
      v93 = &unk_19BA8BD58;
      if (v92 >= 10.0)
      {
        v93 = (a2 + 20);
      }

      v94 = *v93;
      *v90 = *v93;
      v95 = &unk_19BA8BD60;
      if (v94 <= 149.0)
      {
        v95 = (a2 + 20);
      }

      v91 = *v95;
      *v90 = *v95;
    }

    *(a2 + 100) = *(a2 + 4);
    *(a2 + 136) = *(a2 + 132);
    *(a2 + 116) = v76;
    v39 = 1;
    sub_19B966EDC(a1, v113, 1, v75, v91, v80, v82);
    goto LABEL_179;
  }

  if (v4)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v88 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v88, OS_LOG_TYPE_DEBUG, "CLMM,NotPropagating,solution moved away from tunnel", buf, 2u);
    }

    v89 = sub_19B87DD40();
    if (*(v89 + 160) > 1 || *(v89 + 164) > 1 || *(v89 + 168) > 1 || *(v89 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
      }

      LOWORD(v101) = 0;
      v85 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,NotPropagating,solution moved away from tunnel", &v101, 2);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::propagateSolution(CLDaemonLocation &, CLMapGeometryPtr, BOOL)", "CoreLocation: %s\n", v85);
LABEL_176:
      if (v85 != buf)
      {
        free(v85);
      }
    }
  }

LABEL_178:
  v39 = 0;
LABEL_179:
  sub_19B9679F8(v97);
  sub_19B966FCC(v113);
LABEL_180:
  sub_19B916DC0(v99);
  if (SHIBYTE(v122) < 0)
  {
    operator delete(*(&v121 + 1));
  }

  return v39;
}

void sub_19B966E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, int a61, __int16 a62, char a63)
{
  sub_19B9679F8(&a14);
  sub_19B966FCC(&a29);
  sub_19B916DC0(&a18);
  if (a64 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_19B966EDC(uint64_t a1, uint64_t *a2, char a3, double a4, double a5, double a6, double a7)
{
  *(a1 + 56) = a4;
  v14 = *a2;
  v13 = a2[1];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = (a1 + 64);
  v16 = *(a1 + 72);
  *(a1 + 64) = v14;
  *(a1 + 72) = v13;
  if (v16)
  {
    sub_19B8750F8(v16);
  }

  v17 = *(a2 + 1);
  v18 = *(a2 + 2);
  *(a1 + 112) = a2[6];
  *(a1 + 80) = v17;
  *(a1 + 96) = v18;
  v19 = *(a2 + 7);
  *(a1 + 129) = *(a2 + 65);
  *(a1 + 120) = v19;
  if (v15 != a2)
  {
    sub_19B967884((a1 + 152), a2[11], a2[12], 0x8E38E38E38E38E39 * ((a2[12] - a2[11]) >> 3));
  }

  *a1 = a3;
  *(a1 + 32) = a7;
  *(a1 + 40) = a6;
  *(a1 + 24) = a5;
  v20 = *(a1 + 64);
  if (v20)
  {
    v21 = *(v20 + 32);
    if (v21 <= 0.0)
    {
      v21 = -1.0;
    }

    *(a1 + 16) = v21;
  }
}

void *sub_19B966FCC(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  return a1;
}

void sub_19B96700C(uint64_t a1, __int128 *a2)
{
  v3 = *(a2 + 1);
  *a1 = v3;
  if ((*(a2 + 264) & 1) == 0)
  {
    goto LABEL_7;
  }

  v23 = 0.0;
  v24 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
  *(a1 + 56) = 0;
  if (*(a1 + 8))
  {
    v5 = v3 - *(a1 + 72);
    if (v5 >= 0.0 && v5 <= 2.2 && sub_19BA0BE88((a1 + 496), &v22, &v21, &v25, *(a2 + 36), *(a2 + 37), *(a2 + 9), *(a1 + 352), *(a1 + 360), *(a1 + 136)) && sqrt(v21 * v21 + v22 * v22) / v5 <= 3.8)
    {
      v17 = v21;
      v18 = v22;
      if ((*(a2 + 228) & 1) != 0 || *(a2 + 12) <= 2.2 || sub_19BA0BE88((a1 + 496), &v24, &v23, &v25, *(a2 + 7), *(a2 + 8), *(a2 + 9), *(a1 + 120), *(a1 + 128), *(a1 + 136)))
      {
        v19 = 0.0;
        sub_19BA0C3BC((a1 + 496), &v20, &v19, *(a2 + 36), *(a2 + 37), *(a2 + 9), *(a2 + 21), *(a2 + 7), *(a2 + 8));
        v16 = v19;
        if (v19 > *(a1 + 48))
        {
          *(a1 + 56) = 1;
        }

        *(a1 + 48) = v16;
        v6.f64[0] = v24;
        v7 = *(a1 + 8) + 1;
        v6.f64[1] = v23;
        v8.f64[0] = v18;
        v8.f64[1] = v17;
        goto LABEL_11;
      }
    }

LABEL_7:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 41) = 0u;

    sub_19B967A5C(a1 + 64);
    return;
  }

  v6 = 0uLL;
  v7 = 1;
  v8 = 0uLL;
LABEL_11:
  *(a1 + 8) = v7;
  v9 = vaddq_f64(v8, *(a1 + 32));
  *(a1 + 16) = vaddq_f64(v6, *(a1 + 16));
  *(a1 + 32) = v9;
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[3];
  *(a1 + 96) = a2[2];
  *(a1 + 112) = v12;
  *(a1 + 64) = v10;
  *(a1 + 80) = v11;
  v13 = a2[4];
  v14 = a2[5];
  v15 = a2[7];
  *(a1 + 160) = a2[6];
  *(a1 + 176) = v15;
  *(a1 + 128) = v13;
  *(a1 + 144) = v14;
  std::string::operator=((a1 + 192), (a2 + 8));

  memcpy((a1 + 216), a2 + 152, 0x118uLL);
}

uint64_t sub_19B967214(uint64_t *a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a1 + 2) < 4u)
  {
    return 0;
  }

  v3 = sqrt(*(a1 + 3) * *(a1 + 3) + *(a1 + 2) * *(a1 + 2));
  v4 = sqrt(*(a1 + 5) * *(a1 + 5) + *(a1 + 4) * *(a1 + 4));
  if ((a1[7] & 1) == 0)
  {
    v5 = v3 - v4;
LABEL_20:
    if (v5 > 5.0 && a2 != 0)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
      }

      v15 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v16 = *a1;
        v17 = *(a1 + 56);
        *buf = 134350080;
        v27 = v16;
        v28 = 1026;
        *v29 = v17;
        *&v29[4] = 2050;
        *&v29[6] = v3;
        *&v29[14] = 2050;
        *&v29[16] = v4;
        *&v29[24] = 2050;
        *&v29[26] = 0x403D000000000000;
        _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEBUG, "CLMM, %{public}.1lf,isMovingAway,%{public}d,deltaPosChange,%{public}.1lf,deltaSnapChange,%{public}.1lf,thresholdDiff,%{public}.1lf", buf, 0x30u);
      }

      v18 = sub_19B87DD40();
      if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
        }

        v19 = *a1;
        v20 = *(a1 + 56);
        v22 = 134350080;
        v23 = v19;
        v24 = 1026;
        *v25 = v20;
        *&v25[4] = 2050;
        *&v25[6] = v3;
        *&v25[14] = 2050;
        *&v25[16] = v4;
        *&v25[24] = 2050;
        *&v25[26] = 0x403D000000000000;
        v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM, %{public}.1lf,isMovingAway,%{public}d,deltaPosChange,%{public}.1lf,deltaSnapChange,%{public}.1lf,thresholdDiff,%{public}.1lf", &v22, 48);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::StuckAtEndOfRoad::isStuckAtEndOfRoad(const BOOL)", "CoreLocation: %s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }
    }

    return 0;
  }

  v5 = v3 - v4;
  if (*(a1 + 6) <= 15.0 || v5 <= 29.0)
  {
    goto LABEL_20;
  }

  if (a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
    }

    v6 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      v7 = *a1;
      v8 = a1[6];
      *buf = 134350080;
      v27 = v7;
      v28 = 2050;
      *v29 = v8;
      *&v29[8] = 2050;
      *&v29[10] = v3;
      *&v29[18] = 2050;
      *&v29[20] = v4;
      *&v29[28] = 2050;
      *&v29[30] = 0x403D000000000000;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_INFO, "CLMM,%{public}.1lf,detected stuck,alongTrackRawToSnap,%{public}.1lf,deltaPosChange,%{public}.1lf,deltaSnapChange,%{public}.1lf,thresholdDiff,%{public}.1lf", buf, 0x34u);
    }

    v9 = sub_19B87DD40();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D790);
      }

      v10 = *a1;
      v11 = a1[6];
      v22 = 134350080;
      v23 = v10;
      v24 = 2050;
      *v25 = v11;
      *&v25[8] = 2050;
      *&v25[10] = v3;
      *&v25[18] = 2050;
      *&v25[20] = v4;
      *&v25[28] = 2050;
      *&v25[30] = 0x403D000000000000;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLMM,%{public}.1lf,detected stuck,alongTrackRawToSnap,%{public}.1lf,deltaPosChange,%{public}.1lf,deltaSnapChange,%{public}.1lf,thresholdDiff,%{public}.1lf", &v22, 52);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::StuckAtEndOfRoad::isStuckAtEndOfRoad(const BOOL)", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  return 1;
}

os_log_t sub_19B967684()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

uint64_t sub_19B9676B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  v6 = *(a2 + 56);
  v7 = *(a2 + 65);
  *(a1 + 88) = 0;
  *(a1 + 65) = v7;
  *(a1 + 56) = v6;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_19B96775C((a1 + 88), *(a2 + 88), *(a2 + 96), 0x8E38E38E38E38E39 * ((*(a2 + 96) - *(a2 + 88)) >> 3));
  return a1;
}

void sub_19B967744(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_19B96775C(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_19B9677D8(result, a4);
  }

  return result;
}

void sub_19B9677BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9677D8(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    sub_19B967828(a1, a2);
  }

  sub_19B8B8A40();
}

void sub_19B967828(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

uint64_t *sub_19B967884(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0x8E38E38E38E38E39 * ((v8 - *result) >> 3) < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v10 = 0x8E38E38E38E38E39 * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x1C71C71C71C71C7)
      {
        v12 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v12 = v11;
      }

      sub_19B9677D8(v7, v12);
    }

    sub_19B8B8A40();
  }

  v13 = result[1];
  v14 = v13 - v9;
  if (0x8E38E38E38E38E39 * ((v13 - v9) >> 3) >= a4)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18 - 4);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v13 != v9)
    {
      result = memmove(*result, __src, v14 - 4);
      v13 = v7[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16 - 4);
    }

    v17 = &v13[v16];
  }

  v7[1] = v17;
  return result;
}

void *sub_19B9679F8(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void sub_19B967A5C(uint64_t a1)
{
  __asm { FMOV            V0.2D, #-1.0 }

  *v7 = 0xBFF0000000000000;
  *&v9[120] = 0;
  *&v9[128] = 0;
  memset(&v9[80], 0, 34);
  memset(&v9[136], 0, 75);
  memset(&v9[216], 0, 56);
  memset(&v7[8], 0, 80);
  memset(v9, 0, 78);
  v8 = 0u;
  *&v9[272] = 0xBFF0000000000000;
  *(a1 + 32) = 0uLL;
  *(a1 + 48) = *v7;
  *a1 = 0uLL;
  *(a1 + 16) = _Q0;
  *(a1 + 96) = *&v7[48];
  *(a1 + 112) = *&v7[64];
  *(a1 + 64) = *&v7[16];
  *(a1 + 80) = *&v7[32];
  std::string::operator=((a1 + 128), &v7[80]);
  memcpy((a1 + 152), v9, 0x118uLL);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(*&v7[80]);
  }
}

void sub_19B967B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLGetUncertaintyScaleFactors(uint64_t a1, double *a2, double *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a2 || !a3)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D7B0);
    }

    v8 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "#CLEU,CLGetUncertaintyScaleFactors,input horzontal or vertical SF pointer is NULL", buf, 2u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) != 0 && (*(v9 + 164) & 0x80000000) != 0 && (*(v9 + 168) & 0x80000000) != 0 && !*(v9 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D7B0);
    }

    LOWORD(v20) = 0;
    v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#CLEU,CLGetUncertaintyScaleFactors,input horzontal or vertical SF pointer is NULL", &v20, 2);
    goto LABEL_24;
  }

  v4 = a1;
  if ((a1 - 100) <= 0xFFFFFF9C)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D7B0);
    }

    v5 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      v27 = v4;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_ERROR, "#CLEU,CLGetUncertaintyScaleFactors,confidence out of bounds,%{public}d", buf, 8u);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) != 0 && (*(v6 + 164) & 0x80000000) != 0 && (*(v6 + 168) & 0x80000000) != 0 && !*(v6 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D7B0);
    }

    v20 = 67240192;
    v21 = v4;
    v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#CLEU,CLGetUncertaintyScaleFactors,confidence out of bounds,%{public}d", &v20, 8);
LABEL_24:
    v10 = v7;
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLGetUncertaintyScaleFactors(unsigned int, double *, double *)", "CoreLocation: %s\n", v7);
    if (v10 != buf)
    {
      free(v10);
    }

    return 0;
  }

  *a2 = sub_19B968D48(a1, dbl_19BA8BD68);
  *a3 = sub_19B968D48(v4, dbl_19BA8BDF8);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D7B0);
  }

  v13 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    v14 = *a2;
    v15 = *a3;
    *buf = 67240704;
    v27 = v4;
    v28 = 2050;
    v29 = v14;
    v30 = 2050;
    v31 = v15;
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEBUG, "#CLEU,CLGetUncertaintyScaleFactors,conf,%{public}d,horzSF,%{public}f,vertSF,%{public}f", buf, 0x1Cu);
  }

  v16 = sub_19B87DD40();
  if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D7B0);
    }

    v17 = *a2;
    v18 = *a3;
    v20 = 67240704;
    v21 = v4;
    v22 = 2050;
    v23 = v17;
    v24 = 2050;
    v25 = v18;
    v19 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 2, "#CLEU,CLGetUncertaintyScaleFactors,conf,%{public}d,horzSF,%{public}f,vertSF,%{public}f", &v20, 28);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGetUncertaintyScaleFactors(unsigned int, double *, double *)", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  return 1;
}

double sub_19B968D48(unsigned int a1, double *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*a2 <= a1)
  {
    if (*(a2 + 32) >= a1)
    {
      v15 = 0;
      v16 = a2 + 1;
      do
      {
        v17 = *(v16 - 2);
        if (v17 == a1)
        {
          return *v16;
        }

        if (v15 && v17 > a1)
        {
          return *v16 + -(*v16 - *(v16 - 2)) / (v17 - *(v16 - 6)) * (v17 - a1);
        }

        v16 += 2;
        --v15;
      }

      while (v15 != -9);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D7B0);
      }

      v18 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_ERROR, "#CLEU,linearInterp,failed to find table points bounding x", buf, 2u);
      }

      v19 = sub_19B87DD40();
      if ((*(v19 + 160) & 0x80000000) != 0 && (*(v19 + 164) & 0x80000000) != 0 && (*(v19 + 168) & 0x80000000) != 0 && !*(v19 + 152))
      {
        return a2[17];
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D7B0);
      }

      LOWORD(v21) = 0;
      v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#CLEU,linearInterp,failed to find table points bounding x", &v21, 2);
    }

    else
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D7B0);
      }

      v10 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a2 + 32);
        *buf = 67240448;
        v26 = a1;
        v27 = 1026;
        v28 = v11;
        _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "#CLEU,linearInterp,x is greater than the last point in table,x,%{public}d,table[size-1].first,%{public}d", buf, 0xEu);
      }

      v12 = sub_19B87DD40();
      if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
      {
        return a2[17];
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D7B0);
      }

      v13 = *(a2 + 32);
      v21 = 67240448;
      v22 = a1;
      v23 = 1026;
      v24 = v13;
      v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#CLEU,linearInterp,x is greater than the last point in table,x,%{public}d,table[size-1].first,%{public}d", &v21, 14);
    }

    v20 = v14;
    sub_19B885924("Generic", 1, 0, 0, "double linearInterp(unsigned int, std::array<std::pair<unsigned int, double>, size>) [size = 9UL]", "CoreLocation: %s\n", v14);
    if (v20 != buf)
    {
      free(v20);
    }

    return a2[17];
  }

  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D7B0);
  }

  v4 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
  {
    v5 = *a2;
    *buf = 67240448;
    v26 = a1;
    v27 = 1026;
    v28 = v5;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "#CLEU,linearInterp,x is less than the first point in table,x,%{public}d,table[0].first,%{public}d", buf, 0xEu);
  }

  v6 = sub_19B87DD40();
  if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D7B0);
    }

    v7 = *a2;
    v21 = 67240448;
    v22 = a1;
    v23 = 1026;
    v24 = v7;
    v8 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#CLEU,linearInterp,x is less than the first point in table,x,%{public}d,table[0].first,%{public}d", &v21, 14);
    sub_19B885924("Generic", 1, 0, 0, "double linearInterp(unsigned int, std::array<std::pair<unsigned int, double>, size>) [size = 9UL]", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  return a2[1];
}

os_log_t sub_19B969238()
{
  result = os_log_create("com.apple.locationd.Position", "Emergency");
  qword_1EAFE4718 = result;
  return result;
}

const void *sub_19B969268@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_19B8BA1C8(a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_19B890AD4();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  *(a2 + v5) = 0;
  return result;
}

CLBeaconRegion *sub_19B96935C()
{
  v0 = [CLBeaconRegion alloc];
  result = objc_msgSend_initWithIdentifier_(v0, v1, @"CLBeaconRegionAnyIdentifier", v2);
  qword_1EAFE5110 = result;
  return result;
}

void sub_19B96A800(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a12)
  {
    sub_19B8750F8(a12);
  }

  if (a14)
  {
    sub_19B8750F8(a14);
  }

  MEMORY[0x19EAE98C0](v28, v29, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

CLGnssExtensionsClient *sub_19B96A90C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D810);
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLGnssExtensions,reason missing}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D810);
      }
    }

    v12 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      return 0;
    }

    *buf = 68289026;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v13 = "CLGnssExtensions,reason missing";
    v14 = "{msg%{public}.0s:CLGnssExtensions,reason missing}";
    goto LABEL_35;
  }

  if (!a1 || !a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D810);
    }

    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLGnssExtensions,bundleID or bundlePath needed}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D810);
      }
    }

    v12 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      return 0;
    }

    *buf = 68289026;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v13 = "CLGnssExtensions,bundleID or bundlePath needed";
    v14 = "{msg%{public}.0s:CLGnssExtensions,bundleID or bundlePath needed}";
    goto LABEL_35;
  }

  if (!a4)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D810);
    }

    v16 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLGnssExtensions,nil callback queue}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D810);
      }
    }

    v12 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      return 0;
    }

    *buf = 68289026;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v13 = "CLGnssExtensions,nil callback queue";
    v14 = "{msg%{public}.0s:CLGnssExtensions,nil callback queue}";
    goto LABEL_35;
  }

  if (a5)
  {
    v18[0] = @"kCLConnectionMessageBundleIdentifierKey";
    v18[1] = @"kCLConnectionMessageBundlePathKey";
    v19[0] = a1;
    v19[1] = a2;
    v18[2] = @"kCLConnectionMessagePurposeKey";
    v19[2] = a3;
    v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v19, v18, 3);
    v8 = [CLGnssExtensionsClient alloc];
    return objc_msgSend_initWithRegistrationMessageName_messageDictionary_dispatchQueue_codeBlock_(v8, v9, "kCLConnectionMessageGnssExtensionsClient", v7, a4, a5);
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D810);
  }

  v17 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLGnssExtensions,nil callback block}", buf, 0x12u);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D810);
    }
  }

  v12 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    *buf = 68289026;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v13 = "CLGnssExtensions,nil callback block";
    v14 = "{msg%{public}.0s:CLGnssExtensions,nil callback block}";
LABEL_35:
    _os_signpost_emit_with_name_impl(&dword_19B873000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v13, v14, buf, 0x12u);
  }

  return 0;
}

void sub_19B96AE78(uint64_t a1, CLConnectionMessage **a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D810);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v4 = CLConnectionMessage::name(*a2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    *buf = 136315138;
    v14 = v5;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "CLGnssExtensions,unexpected message,%s", buf, 0xCu);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D810);
    }

    v7 = qword_1ED519090;
    v8 = CLConnectionMessage::name(*a2);
    if (*(v8 + 23) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *v8;
    }

    v11 = 136315138;
    v12 = v9;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v7, 2, "CLGnssExtensions,unexpected message,%s", &v11, 12);
    sub_19B885924("Generic", 1, 0, 2, "CLGnssExtensionsCallbackAssertionInternal::CLGnssExtensionsCallbackAssertionInternal(dispatch_queue_t, const char *, NSDictionary *, GnssExtensionsCallback)_block_invoke", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }
}

uint64_t sub_19B96B070(uint64_t a1, CLConnectionMessage **a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D810);
  }

  v4 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v5 = CLConnectionMessage::name(*a2);
    if (*(v5 + 23) >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = *v5;
    }

    v14[0] = 68289282;
    v14[1] = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = v6;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssExtensions, Connection Message:%{public, location:escape_only}s}", v14, 0x1Cu);
  }

  v7 = CLConnectionMessage::name(*a2);
  if (*(v7 + 23) < 0 && *(v7 + 8) == 45 && !memcmp(*v7, "kCLConnectionMessageGnssExtensionsClientError", 0x2DuLL))
  {
    result = CLConnectionMessage::getDictionary(*a2);
    if (*(v3 + 8))
    {
      v10 = result;
      v11 = objc_alloc(MEMORY[0x1E696ABC0]);
      v13 = objc_msgSend_initWithDomain_code_userInfo_(v11, v12, @"CLGnssExtensions Error", 0, v10);
      return (*(*(v3 + 8) + 16))();
    }
  }

  else
  {
    result = CLConnectionMessage::name(*a2);
    if (*(result + 23) < 0 && *(result + 8) == 38)
    {
      result = memcmp(*result, "kCLConnectionMessageGnssExtensionsData", 0x26uLL);
      if (!result)
      {
        Dictionary = CLConnectionMessage::getDictionary(*a2);
        result = *(v3 + 8);
        if (result)
        {
          return (*(result + 16))(result, Dictionary, 0);
        }
      }
    }
  }

  return result;
}

os_log_t sub_19B96B7B8()
{
  result = os_log_create("com.apple.locationd.Position", "Proximity");
  qword_1EAFE4700 = result;
  return result;
}

BOOL sub_19B96B7E8(double *a1, double *a2)
{
  v2 = *a1;
  if (*a1 >= 51.1 && v2 <= 61.1 && *a2 >= -13.2 && *a2 <= 1.87)
  {
    return 1;
  }

  if (v2 >= 49.866 && v2 <= 61.1 && *a2 >= -6.48 && *a2 <= 0.15)
  {
    return 1;
  }

  if (v2 >= 50.688 && v2 <= 61.1 && *a2 >= 0.15 && *a2 <= 1.43)
  {
    return 1;
  }

  if (v2 >= 29.32 && v2 <= 35.8 && *a2 >= 130.0 && *a2 <= 141.0)
  {
    return 1;
  }

  if (v2 >= 35.8 && v2 <= 41.3 && *a2 >= 135.8 && *a2 <= 142.95)
  {
    return 1;
  }

  if (v2 >= 41.3 && v2 <= 45.7 && *a2 >= 139.5 && *a2 <= 145.8)
  {
    return 1;
  }

  if (v2 >= 25.7 && v2 <= 34.756 && *a2 >= 128.837 && *a2 <= 130.0)
  {
    return 1;
  }

  if (v2 >= 23.861 && v2 <= 27.891 && *a2 >= 122.927 && *a2 <= 131.426)
  {
    return 1;
  }

  if (v2 >= -45.0 && v2 <= 4.3 && *a2 >= 104.0 && *a2 <= 156.25)
  {
    return 1;
  }

  if (v2 >= 0.0 && v2 <= 7.408 && *a2 >= 108.75 && *a2 <= 119.215)
  {
    return 1;
  }

  if (v2 >= -14.25 && v2 <= 8.35 && *a2 >= 88.9289 && *a2 <= 108.75)
  {
    return 1;
  }

  if (v2 >= -56.4 && v2 <= -28.0)
  {
    v3 = *a2;
    if (*a2 >= 155.0 && v3 <= 180.1)
    {
      return 1;
    }

    if (v3 >= -180.1 && v3 <= -175.74)
    {
      return 1;
    }
  }

  if (v2 >= -9.0 && v2 <= 27.3 && *a2 >= 67.0 && *a2 <= 92.17)
  {
    return 1;
  }

  if (v2 >= 27.3 && v2 <= 35.44 && *a2 >= 71.746 && *a2 <= 77.876)
  {
    return 1;
  }

  if (v2 >= 26.29 && v2 <= 27.8959 && *a2 >= 79.734 && *a2 <= 88.251)
  {
    return 1;
  }

  if (v2 >= 27.3 && v2 <= 29.15 && *a2 >= 77.83 && *a2 <= 84.154)
  {
    return 1;
  }

  if (v2 >= 27.3 && v2 <= 30.0 && *a2 >= 77.83 && *a2 <= 82.4)
  {
    return 1;
  }

  if (v2 >= 24.18 && v2 <= 29.338 && *a2 >= 63.36 && *a2 <= 71.746)
  {
    return 1;
  }

  if (v2 >= 29.338 && v2 <= 30.917 && *a2 >= 66.437 && *a2 <= 71.746)
  {
    return 1;
  }

  if (v2 >= 30.917 && v2 <= 33.0 && *a2 >= 69.584 && *a2 <= 71.746)
  {
    return 1;
  }

  if (v2 >= -36.08 && v2 <= -18.04 && *a2 >= 11.32 && *a2 <= 37.9)
  {
    return 1;
  }

  if (v2 >= -18.5 && v2 <= -13.45 && *a2 >= 23.5008 && *a2 <= 41.892382)
  {
    return 1;
  }

  if (v2 >= -13.45 && v2 <= 1.68 && *a2 >= 30.905 && *a2 <= 40.987)
  {
    return 1;
  }

  if (v2 >= 1.68 && v2 <= 3.388 && *a2 >= 31.324836 && *a2 <= 40.987)
  {
    return 1;
  }

  if (v2 >= -13.8 && v2 <= -12.44 && *a2 >= 24.07 && *a2 <= 28.33)
  {
    return 1;
  }

  if (v2 >= 11.671 && v2 <= 14.258 && *a2 >= -62.322 && *a2 <= -59.263)
  {
    return 1;
  }

  if (v2 >= 22.950919 && v2 <= 27.567702 && *a2 >= -79.487787 && *a2 <= -72.604668)
  {
    return 1;
  }

  if (v2 >= 21.74346 && v2 <= 27.567702 && *a2 >= -76.173118 && *a2 <= -72.604668)
  {
    return 1;
  }

  if (v2 >= 20.668412 && v2 <= 27.567702 && *a2 >= -73.949372 && *a2 <= -72.604668)
  {
    return 1;
  }

  if (v2 >= 8.3 && v2 <= 17.45 && *a2 >= 99.675 && *a2 <= 102.316)
  {
    return 1;
  }

  if (v2 >= 14.481 && v2 <= 17.51 && *a2 >= 102.286 && *a2 <= 104.683)
  {
    return 1;
  }

  if (v2 >= 17.45 && v2 <= 19.45 && *a2 >= 98.1 && *a2 <= 100.94)
  {
    return 1;
  }

  if (v2 >= 18.142198 && v2 <= 18.315026 && *a2 >= -63.184398 && *a2 <= -62.912807)
  {
    return 1;
  }

  if (v2 >= 16.914842 && v2 <= 17.240077 && *a2 >= -61.964541 && *a2 <= -61.607641)
  {
    return 1;
  }

  if (v2 >= 21.497173 && v2 <= 26.635702 && *a2 >= 88.025462 && *a2 <= 92.577511)
  {
    return 1;
  }

  if (v2 >= 32.166353 && v2 <= 32.577428 && *a2 >= -65.0 && *a2 <= -64.50204)
  {
    return 1;
  }

  if (v2 >= 26.902547 && v2 <= 27.854393 && *a2 >= 89.351473 && *a2 <= 91.521758)
  {
    return 1;
  }

  if (v2 >= 19.103 && v2 <= 20.058 && *a2 >= -81.654 && *a2 <= -79.5)
  {
    return 1;
  }

  if (v2 >= -23.5 && v2 <= -8.32 && *a2 >= -166.288 && *a2 <= -155.88)
  {
    return 1;
  }

  if (v2 >= 34.3297 && v2 <= 35.757 && *a2 >= 32.09 && *a2 <= 34.6509)
  {
    return 1;
  }

  if (v2 >= 15.06 && v2 <= 15.816 && *a2 >= -61.61 && *a2 <= -60.984)
  {
    return 1;
  }

  if (v2 >= -53.02 && v2 <= -50.229 && *a2 >= -61.937 && *a2 <= -56.853)
  {
    return 1;
  }

  if (v2 >= -21.1769 && v2 <= -12.1 && *a2 >= 176.19 && *a2 <= 180.1)
  {
    return 1;
  }

  if (v2 >= -21.1769 && v2 <= -15.057 && *a2 >= -180.1 && *a2 <= -178.097)
  {
    return 1;
  }

  v4 = v2 > 49.589 || v2 < 49.07;
  if (!v4 && *a2 >= -2.82 && *a2 <= -1.96)
  {
    return 1;
  }

  v5 = v2 < 2.6019;
  if (v2 > 8.469)
  {
    v5 = 1;
  }

  return !v5 && *a2 >= -59.5 && *a2 <= -54.489 || v2 >= 22.178 && v2 <= 22.4435 && *a2 >= 113.828 && *a2 <= 114.4585 || v2 >= 22.4435 && v2 <= 22.502 && *a2 >= 113.952 && *a2 <= 114.4585 || v2 >= 17.366 && v2 <= 18.926 && *a2 >= -78.498 && *a2 <= -75.908 || !v4 && *a2 >= -2.82 && *a2 <= -1.96 || v2 >= 22.175 && v2 <= 22.203 && *a2 >= 113.53 && *a2 <= 113.6 || v2 >= 22.107 && v2 <= 22.175 && *a2 >= 113.548 && *a2 <= 113.6 || v2 >= 35.656 && v2 <= 36.201 && *a2 >= 14.04 && *a2 <= 14.713 || v2 >= -20.76 && v2 <= -19.6 && *a2 >= 56.9 && *a2 <= 58.4 || v2 >= 16.61 && v2 <= 16.91 && *a2 >= -62.3 && *a2 <= -62.06 || v2 >= -0.6 && v2 <= -0.42 && *a2 >= 166.866 && *a2 <= 167.028 || v2 >= -19.3 && v2 <= -18.67 && *a2 >= -170.126 && *a2 <= -169.6 || v2 >= -25.858 && v2 <= -23.42 && *a2 >= -131.33 && *a2 <= -123.664 || v2 >= -14.457 && v2 <= -12.864 && *a2 >= -173.081 && *a2 <= -171.117 || v2 >= -16.4 && v2 <= -15.4 && *a2 >= -6.2 && *a2 <= -5.0 || v2 >= 16.986 && v2 <= 17.508 && *a2 >= -62.918 && *a2 <= -62.478 || v2 >= -5.4 && v2 <= -3.15 && *a2 >= 54.5 && *a2 <= 56.8 || v2 >= -12.139 && v2 <= -6.353 && *a2 >= 156.267 && *a2 <= 167.87 || !v5 && *a2 >= -59.5 && *a2 <= -54.489 || v2 >= -9.8 && v2 <= -8.01 && *a2 >= -172.9 && *a2 <= -170.9 || v2 >= -22.115 && v2 <= -14.7 && *a2 >= -176.47 && *a2 <= -172.98 || v2 >= 10.0 && v2 <= 11.585 && *a2 >= -61.8316 && *a2 <= -60.32 || v2 >= 20.8 && v2 <= 22.35 && *a2 >= -72.56 && *a2 <= -70.81 || v2 >= 17.555 && v2 <= 18.9639 && *a2 >= -65.11 && *a2 <= -64.14;
}

BOOL sub_19B96CD5C(double *a1, double *a2)
{
  v2 = *a1;
  result = 1;
  if ((*a1 < 27.6 || v2 > 90.0 || *a2 < -180.0 || *a2 > -65.0) && (v2 < 37.1 || v2 > 90.0 || *a2 < 2.75 || *a2 > 129.7))
  {
    if (v2 < -49.0 || v2 > 0.0 || (*a2 >= -93.0 ? (v3 = *a2 > -30.0) : (v3 = 1), v3))
    {
      if ((v2 < 22.7 || v2 > 90.0 || *a2 < 97.7 || *a2 > 122.7) && (v2 < 5.24 || v2 > 33.0 || *a2 < -29.8 || *a2 > 54.475) && (v2 < 31.75 || v2 > 49.0 || *a2 < -13.0 || *a2 > 3.0))
      {
        v4 = v2 < -1.0 || v2 > 28.0;
        if ((v4 || *a2 < -120.0 || *a2 > -81.67) && (v2 < 14.3 || v2 > 25.4 || *a2 < -163.4 || *a2 > -150.8))
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_19B96CF60(double a1, double a2)
{
  v3 = a2;
  v4 = a1;
  if (sub_19B96CD5C(&v4, &v3))
  {
    return 2;
  }

  if (sub_19B96B7E8(&v4, &v3))
  {
    return 1;
  }

  if (sub_19B96C9D8(&v4, &v3))
  {
    return 0;
  }

  return 2;
}

BOOL sub_19B96CFC8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, double a5)
{
  sub_19B96D0EC(a1, *a2, *a3, a4, &v8);
  v6 = v8;
  if (!v8)
  {
    operator new();
  }

  if (*(v8 + 8) < a5)
  {
    *(v8 + 8) = a5;
  }

  if (v9)
  {
    sub_19B8750F8(v9);
  }

  return v6 == 0;
}

void sub_19B96D0C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    sub_19B8750F8(a12);
  }

  if (a14)
  {
    sub_19B8750F8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B96D0EC(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v13[0] = a2;
  v13[1] = a3;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (!sub_19B96D240(a1, v13, &v10) || (v7 = v10, v10 == v11))
  {
LABEL_5:
    *a5 = 0;
    a5[1] = 0;
  }

  else
  {
    while (1)
    {
      v8 = *v7;
      if (**v7 == *a4)
      {
        break;
      }

      v7 += 2;
      if (v7 == v11)
      {
        goto LABEL_5;
      }
    }

    v9 = v7[1];
    *a5 = v8;
    a5[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }
  }

  v14 = &v10;
  sub_19B8F0E84(&v14);
}

void sub_19B96D19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_19B8F0E84(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B96D1B4(uint64_t a1, unint64_t *a2)
{
  v3 = sub_19B96DBFC(a1, a2);
  if (v3 == v4)
  {
    return 0;
  }

  while (v3[4] != *a2 || v3[5] != a2[1])
  {
    v5 = v3[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = v3[2];
        v7 = *v6 == v3;
        v3 = v6;
      }

      while (!v7);
    }

    v3 = v6;
    if (v6 == v4)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_19B96D240(uint64_t a1, unint64_t *a2, void *a3)
{
  v5 = sub_19B96DBFC(a1, a2);
  if (v5 != v6)
  {
    v7 = v5;
    v8 = v6;
    do
    {
      if (*(v7 + 4) == *a2 && *(v7 + 5) == a2[1])
      {
        sub_19B96D2F0(a3, v7 + 3);
      }

      v9 = *(v7 + 1);
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
          v10 = *(v7 + 2);
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != v8);
  }

  return *a3 != a3[1];
}

void sub_19B96D2F0(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_19B8B8A40();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      sub_19B8B8AB0();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

BOOL sub_19B96D414(void *a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (*a2)
  {
    a1[2] = a3;
    v7 = *a2;
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = a1[1];
    *a1 = v7;
    a1[1] = v6;
    if (v8)
    {
      sub_19B8750F8(v8);
    }
  }

  return v3 != 0;
}

void *sub_19B96D47C(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
  }

  v3 = a1[5];
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  return a1;
}

uint64_t sub_19B96D4C8(uint64_t *a1, uint64_t **a2)
{
  v2 = *a2;
  if (!v2)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    if ((*(result + 116) & 1) != 0 || (v4 = *(result + 108), (~v4 & 0x7FFFFFFF) == 0) || (*(result + 117) & 1) != 0 || (v5 = *(result + 112), (~v5 & 0x7FFFFFFF) == 0) || *(*v2 + 116) == 1)
    {

      return sub_19B9F63A4(result, v2);
    }

    else
    {
      v6 = *(*v2 + 108);
      result = sub_19B9F63A4(result, v2);
      if (result && (v6 & 0x7FFFFFFF) != 0x7FFFFFFF)
      {
        return v4 == v6 || v5 == v6;
      }
    }
  }

  return result;
}

uint64_t sub_19B96D58C(uint64_t *a1, uint64_t **a2)
{
  v2 = *a2;
  if (!v2)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    if ((*(result + 116) & 1) != 0 || (v4 = *(result + 108), (~v4 & 0x7FFFFFFF) == 0) || (*(result + 117) & 1) != 0 || (v5 = *(result + 112), (~v5 & 0x7FFFFFFF) == 0) || *(*v2 + 117) == 1)
    {

      return sub_19B9F6408(result, v2);
    }

    else
    {
      v6 = *(*v2 + 112);
      result = sub_19B9F6408(result, v2);
      if (result && (v6 & 0x7FFFFFFF) != 0x7FFFFFFF)
      {
        return v4 == v6 || v5 == v6;
      }
    }
  }

  return result;
}

uint64_t sub_19B96D650(uint64_t *a1, uint64_t **a2)
{
  v2 = *a2;
  if (!v2)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    if (*(result + 116) & 1) != 0 || (v4 = *(result + 108), (~v4 & 0x7FFFFFFF) == 0) || (v5 = *v2, (*(*v2 + 116)) || (v6 = *(v5 + 108), (~v6 & 0x7FFFFFFF) == 0) || *(v5 + 117) == 1)
    {

      return sub_19B9F646C(result, v2);
    }

    else
    {
      v7 = *(v5 + 112);
      result = sub_19B9F646C(result, v2);
      if (result && (v7 & 0x7FFFFFFF) != 0x7FFFFFFF)
      {
        return v4 == v6 || v4 == v7;
      }
    }
  }

  return result;
}

uint64_t sub_19B96D714(uint64_t *a1, uint64_t **a2)
{
  v2 = *a2;
  if (!v2)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    if (*(result + 117) & 1) != 0 || (v4 = *(result + 112), (~v4 & 0x7FFFFFFF) == 0) || (v5 = *v2, (*(*v2 + 116)) || (v6 = *(v5 + 108), (~v6 & 0x7FFFFFFF) == 0) || *(v5 + 117) == 1)
    {

      return sub_19B9F64D0(result, v2);
    }

    else
    {
      v7 = *(v5 + 112);
      result = sub_19B9F64D0(result, v2);
      if (result && (v7 & 0x7FFFFFFF) != 0x7FFFFFFF)
      {
        return v4 == v6 || v4 == v7;
      }
    }
  }

  return result;
}

double sub_19B96D7D8(uint64_t *a1, int a2)
{
  v3 = *(a1 + 24);
  v4 = *a1;
  if (v3 != a2)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v5 = (v4[18] - v4[17]) >> 4;
  v6 = -1.0;
  v7 = v5 - 2;
  if (v5 >= 2)
  {
LABEL_5:
    v6 = sub_19B9F5C98(v4, v7);
  }

  v8 = 180.0;
  if (*(a1 + 24))
  {
    v8 = 0.0;
  }

  return v6 - v8;
}

void sub_19B96D848(uint64_t **a1, unint64_t ***a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = *v2;
    if (*v2)
    {
      v9 = *v2;
      v5 = sub_19B96DCE4(a1, v4, &unk_19BA897F0, &v9);
      v7 = *a2;
      v6 = a2[1];
      if (v6)
      {
        atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
      }

      v8 = *(v5 + 56);
      *(v5 + 48) = v7;
      *(v5 + 56) = v6;
      if (v8)
      {
        sub_19B8750F8(v8);
      }
    }
  }
}

uint64_t sub_19B96D8C4(uint64_t result, unint64_t ***a2)
{
  v2 = *a2;
  if (*a2)
  {
    if (*v2)
    {
      v4 = result;
      if (*(result + 16))
      {
        result = sub_19B8F07E0(result, *v2);
        if (result)
        {
          v5 = **a2;

          return sub_19B96DD80(v4, v5);
        }
      }
    }
  }

  return result;
}

BOOL sub_19B96D934(void *a1, void *a2)
{
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  if (a1[2])
  {
    v7 = *a1;
    v5 = a1 + 1;
    v6 = v7;
    if (v7 != v5)
    {
      v8 = -1.0;
      while (1)
      {
        v9 = v6[6];
        if (v8 < 0.0)
        {
          break;
        }

        if (v9)
        {
          v10 = *(v9 + 48) + *(v9 + 56);
          if (v10 < v8)
          {
            goto LABEL_10;
          }
        }

LABEL_15:
        v13 = v6[1];
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
            v14 = v6[2];
            v15 = *v14 == v6;
            v6 = v14;
          }

          while (!v15);
        }

        v6 = v14;
        if (v14 == v5)
        {
          return v8 >= 0.0;
        }
      }

      v10 = *(v9 + 48) + *(v9 + 56);
LABEL_10:
      v11 = v6[7];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v12 = a2[1];
      *a2 = v9;
      a2[1] = v11;
      if (v12)
      {
        sub_19B8750F8(v12);
      }

      v8 = v10;
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_19B96DA2C@<X0>(uint64_t result@<X0>, unint64_t ***a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  if (*a2 && *v4 && (v6 = result, (result = sub_19B8F07E0(result, *v4)) != 0))
  {
    v8 = **a2;
    result = sub_19B96DCE4(v6, v8, &unk_19BA897F0, &v8);
    v7 = *(result + 56);
    *a3 = *(result + 48);
    a3[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void sub_19B96DAE0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6D860;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void *sub_19B96DBFC(uint64_t a1, unint64_t *a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *a2;
  v5 = a2[1];
  while (1)
  {
    v6 = v3[4];
    v7 = v3[5];
    v8 = v5 < v7;
    if (v4 != v6)
    {
      v8 = v4 < v6;
    }

    if (!v8)
    {
      break;
    }

    v2 = v3;
LABEL_12:
    v3 = *v3;
    if (!v3)
    {
      return v2;
    }
  }

  v9 = v7 < v5;
  if (v4 == v6)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6 < v4;
  }

  if (v10)
  {
    ++v3;
    goto LABEL_12;
  }

  v12 = *v3;
  result = v3;
  if (*v3)
  {
    result = v3;
    do
    {
      v13 = v12[4];
      v15 = v13 == v4;
      v14 = v13 < v4;
      if (v15)
      {
        v14 = v12[5] < v5;
      }

      v15 = !v14;
      v16 = v14;
      if (v15)
      {
        result = v12;
      }

      v12 = v12[v16];
    }

    while (v12);
  }

  for (i = v3[1]; i; i = *(i + v20))
  {
    v18 = *(i + 32);
    v15 = v4 == v18;
    v19 = v4 < v18;
    if (v15)
    {
      v19 = v5 < *(i + 40);
    }

    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = 8;
    }
  }

  return result;
}

uint64_t sub_19B96DCE4(uint64_t **a1, unint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *sub_19B8F08E8(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_19B96DD80(uint64_t **a1, unint64_t *a2)
{
  v3 = sub_19B8F1950(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_19B8F3444(a1, v3);
  return 1;
}

uint64_t sub_19B96F4F0(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v20 = *a2;
  v21 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_19B93D204(a1, &v20, a3);
  if (v21)
  {
    sub_19B8750F8(v21);
  }

  *a1 = &unk_1F0E6D8B0;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = a1 + 912;
  *(a1 + 920) = a1 + 912;
  *(a1 + 992) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0;
  *(a1 + 984) = a1 + 992;
  sub_19B988568(a1 + 1008);
  sub_19B988568(a1 + 1848);
  *(a1 + 2688) = 0;
  *(a1 + 2696) = 0u;
  *(a1 + 2712) = 0u;
  *(a1 + 2728) = 0;
  *(a1 + 2732) = 1;
  *(a1 + 2736) = 0;
  *(a1 + 2744) = 0u;
  *(a1 + 2760) = 0u;
  *(a1 + 2776) = 0u;
  *(a1 + 2792) = 0;
  *(a1 + 2800) = 0;
  *(a1 + 2808) = 0u;
  *(a1 + 2824) = 0;
  *(a1 + 2856) = 0u;
  *(a1 + 2872) = 0;
  *(a1 + 2848) = 0;
  *(a1 + 2832) = 0u;
  *(a1 + 2876) = 1;
  *(a1 + 2880) = 0;
  *(a1 + 2960) = 0;
  *(a1 + 2944) = 0u;
  *(a1 + 2888) = 0u;
  *(a1 + 2904) = 0u;
  *(a1 + 2920) = 0u;
  *(a1 + 2936) = 0;
  *(a1 + 2968) = 0xFFFFFFFFLL;
  *(a1 + 2976) = &unk_1F0E6D9A8;
  *(a1 + 2984) = 30;
  *(a1 + 2992) = 0u;
  *(a1 + 3008) = 0u;
  *(a1 + 3024) = 0u;
  *(a1 + 3040) = 0;
  *(a1 + 3048) = a1 + 3048;
  *(a1 + 3056) = a1 + 3048;
  *(a1 + 3064) = 0;
  *(a1 + 3072) = a1 + 3072;
  *(a1 + 3080) = a1 + 3072;
  *(a1 + 3088) = 0;
  *(a1 + 3096) = a1 + 3096;
  *(a1 + 3104) = a1 + 3096;
  *(a1 + 3112) = 0;
  *(a1 + 3120) = a1 + 3120;
  *(a1 + 3128) = a1 + 3120;
  *(a1 + 3152) = 0;
  *(a1 + 3136) = 0u;
  *(a1 + 3176) = 0;
  *(a1 + 3184) = 0;
  *(a1 + 3192) = 0u;
  *(a1 + 3208) = 0u;
  *(a1 + 3217) = 0u;
  *(a1 + 3240) = 0u;
  *(a1 + 3256) = 0xBFF0000000000000;
  *(a1 + 3264) = 0xBFF0000000000000;
  *(a1 + 3272) = 0u;
  *(a1 + 3288) = 0xBFF0000000000000;
  *(a1 + 3512) = 0;
  *(a1 + 3520) = 0;
  *(a1 + 3504) = 0;
  *(a1 + 3472) = 0u;
  *(a1 + 3488) = 0u;
  *(a1 + 3587) = 0u;
  *(a1 + 3560) = 0u;
  *(a1 + 3576) = 0u;
  *(a1 + 3528) = 0u;
  *(a1 + 3544) = 0u;
  *(a1 + 3624) = 0u;
  *(a1 + 3640) = 0u;
  *(a1 + 3608) = 0u;
  *(a1 + 3454) = 0u;
  *(a1 + 3440) = 0u;
  *(a1 + 3424) = 0u;
  *(a1 + 3408) = 0u;
  *(a1 + 3392) = 0u;
  *(a1 + 3376) = 0u;
  *(a1 + 3360) = 0u;
  *(a1 + 3344) = 0u;
  *(a1 + 3328) = 0u;
  *(a1 + 3312) = 0u;
  *(a1 + 3296) = 0u;
  *(a1 + 3656) = 0;
  *(a1 + 3688) = 0u;
  *(a1 + 3664) = xmmword_19BA8C810;
  *(a1 + 3680) = 0x415854A640000000;
  *(a1 + 3704) = 0x3FF0000000000000;
  *(a1 + 3712) = 0;
  *(a1 + 3824) = 0;
  *(a1 + 3832) = 0xBFF0000000000000;
  *(a1 + 3840) = 0xBFF0000000000000;
  *(a1 + 3864) = 0;
  *(a1 + 3848) = 0u;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 3872) = _Q0;
  *(a1 + 3904) = 0;
  *(a1 + 3888) = 0u;
  *(a1 + 3908) = 1;
  *(a1 + 3912) = 0;
  *(a1 + 3992) = 0;
  *(a1 + 3976) = 0u;
  *(a1 + 3968) = 0;
  *(a1 + 3952) = 0u;
  *(a1 + 3936) = 0u;
  *(a1 + 3920) = 0u;
  *(a1 + 4000) = _Q0;
  *(a1 + 4016) = _Q0;
  *(a1 + 4032) = 0;
  *(a1 + 4104) = 0;
  *(a1 + 4072) = 0u;
  *(a1 + 4088) = 0u;
  *(a1 + 4040) = 0u;
  *(a1 + 4056) = 0u;
  *(a1 + 4112) = _Q0;
  *(a1 + 4128) = 1;
  if (sub_19B93C1F4())
  {
    *(a1 + 3160) = 0;
LABEL_8:
    v11 = 30.0;
    goto LABEL_10;
  }

  v10 = sub_19B93CBFC();
  *(a1 + 3160) = (v10 & 1) == 0;
  if (v10)
  {
    goto LABEL_8;
  }

  v11 = 70.0;
LABEL_10:
  *(a1 + 3168) = v11;
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
  }

  v12 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 3160);
    v14 = *(a1 + 3168);
    *buf = 67240448;
    v26 = v13;
    v27 = 2050;
    v28 = v14;
    _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEBUG, "CLMM,Constructor,fUseSpeedCheckForDOT,%{public}d,fMaxDistanceForTIntersectionForDOT,%{public}.1lf", buf, 0x12u);
  }

  v15 = sub_19B87DD40();
  if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v16 = *(a1 + 3160);
    v17 = *(a1 + 3168);
    v22[0] = 67240448;
    v22[1] = v16;
    v23 = 2050;
    v24 = v17;
    v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,Constructor,fUseSpeedCheckForDOT,%{public}d,fMaxDistanceForTIntersectionForDOT,%{public}.1lf", v22, 18);
    sub_19B885924("Generic", 1, 0, 2, "CLParticleMapMatcher::CLParticleMapMatcher(CLMapGeometryPtr, const std::string &)", "CoreLocation: %s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  srandom(0);
  bzero((a1 + 3720), 0x68uLL);
  return a1;
}

void sub_19B96FA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a19 = v19 + 4088;
  sub_19B98868C(&a19);
  a19 = v19 + 4064;
  sub_19B98868C(&a19);
  sub_19B9886E0(&a19);
  sub_19B96FB20((v19 + 3824));
  if (*(v19 + 3391) < 0)
  {
    operator delete(*(v19 + 3368));
  }

  sub_19B916DC0(v23);
  sub_19B916DC0(v22);
  sub_19B916DC0(v21);
  sub_19B916DC0(v20);
  *(v19 + 2976) = a11;
  sub_19B98A184(v19 + 3000);
  sub_19B96FBA4((v19 + 2848));
  sub_19B96FBE4((v19 + 2688));
  sub_19B96FC24(v19 + 1848);
  sub_19B96FC24(v19 + 1008);
  sub_19B98A0DC(*(v19 + 992));
  v25 = *(v19 + 960);
  if (v25)
  {
    *(v19 + 968) = v25;
    operator delete(v25);
  }

  v26 = *(v19 + 936);
  if (v26)
  {
    *(v19 + 944) = v26;
    operator delete(v26);
  }

  sub_19B9679F8(a12);
  a19 = v19 + 888;
  sub_19B988734(&a19);
  a19 = v19 + 864;
  sub_19B988734(&a19);
  sub_19B93D56C(v19);
  _Unwind_Resume(a1);
}

void *sub_19B96FB20(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    a1[20] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  return a1;
}

void *sub_19B96FB60(void *a1)
{
  *a1 = &unk_1F0E6D9A8;
  sub_19B98A184((a1 + 3));
  return a1;
}

void *sub_19B96FBA4(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  return a1;
}

void *sub_19B96FBE4(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  return a1;
}

uint64_t sub_19B96FC24(uint64_t a1)
{
  v2 = *(a1 + 760);
  if (v2)
  {
    *(a1 + 768) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 680);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  v4 = *(a1 + 656);
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    *(a1 + 104) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    sub_19B8750F8(v6);
  }

  return a1;
}

uint64_t sub_19B96FC9C(uint64_t a1)
{
  *a1 = &unk_1F0E6D8B0;
  v21 = (a1 + 4088);
  sub_19B98868C(&v21);
  v21 = (a1 + 4064);
  sub_19B98868C(&v21);
  v21 = (a1 + 4040);
  sub_19B9886E0(&v21);
  v2 = *(a1 + 3976);
  if (v2)
  {
    *(a1 + 3984) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 3896);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  if (*(a1 + 3391) < 0)
  {
    operator delete(*(a1 + 3368));
  }

  sub_19B916DC0((a1 + 3120));
  sub_19B916DC0((a1 + 3096));
  sub_19B916DC0((a1 + 3072));
  sub_19B916DC0((a1 + 3048));
  *(a1 + 2976) = &unk_1F0E6D9A8;
  sub_19B98A184(a1 + 3000);
  v4 = *(a1 + 2944);
  if (v4)
  {
    *(a1 + 2952) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 2864);
  if (v5)
  {
    sub_19B8750F8(v5);
  }

  v6 = *(a1 + 2800);
  if (v6)
  {
    *(a1 + 2808) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 2720);
  if (v7)
  {
    sub_19B8750F8(v7);
  }

  v8 = *(a1 + 2608);
  if (v8)
  {
    *(a1 + 2616) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 2528);
  if (v9)
  {
    sub_19B8750F8(v9);
  }

  v10 = *(a1 + 2504);
  if (v10)
  {
    sub_19B8750F8(v10);
  }

  if (*(a1 + 2119) < 0)
  {
    operator delete(*(a1 + 2096));
  }

  v11 = *(a1 + 1944);
  if (v11)
  {
    *(a1 + 1952) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 1864);
  if (v12)
  {
    sub_19B8750F8(v12);
  }

  v13 = *(a1 + 1768);
  if (v13)
  {
    *(a1 + 1776) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 1688);
  if (v14)
  {
    sub_19B8750F8(v14);
  }

  v15 = *(a1 + 1664);
  if (v15)
  {
    sub_19B8750F8(v15);
  }

  if (*(a1 + 1279) < 0)
  {
    operator delete(*(a1 + 1256));
  }

  v16 = *(a1 + 1104);
  if (v16)
  {
    *(a1 + 1112) = v16;
    operator delete(v16);
  }

  v17 = *(a1 + 1024);
  if (v17)
  {
    sub_19B8750F8(v17);
  }

  sub_19B98A0DC(*(a1 + 992));
  v18 = *(a1 + 960);
  if (v18)
  {
    *(a1 + 968) = v18;
    operator delete(v18);
  }

  v19 = *(a1 + 936);
  if (v19)
  {
    *(a1 + 944) = v19;
    operator delete(v19);
  }

  sub_19B9679F8((a1 + 912));
  v21 = (a1 + 888);
  sub_19B988734(&v21);
  v21 = (a1 + 864);
  sub_19B988734(&v21);
  return sub_19B93D56C(a1);
}

void sub_19B96FEC0(uint64_t a1)
{
  sub_19B96FC9C(a1);

  JUMPOUT(0x19EAE98C0);
}

uint64_t sub_19B96FEF8(uint64_t a1, uint64_t **a2, int *a3, double a4)
{
  LODWORD(v24) = 0;
  BYTE5(v24) = 0;
  DWORD2(v24) = 0;
  v25 = 0uLL;
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = v7;
  v23 = v6;
  v8 = a2[6];
  BYTE4(v24) = *(a2 + 20);
  v26 = v8;
  v20 = 0;
  v21 = 0;
  v18.n128_u64[0] = &v18;
  v18.n128_u64[1] = &v18;
  v19 = 0;
  v17[0] = v17;
  v17[1] = v17;
  v17[2] = 0;
  *a3 = 0;
  v9 = sub_19B970048(*(a1 + 8), *(a1 + 16), &v22, a3, &v18, v17, &v21, &v20, a4);
  if (*a3 > 1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v12 = v22;
    v11 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = a2[1];
    *a2 = v12;
    a2[1] = v11;
    if (v13)
    {
      sub_19B8750F8(v13);
    }

    v14 = v25;
    *(a2 + 1) = v24;
    *(a2 + 2) = v14;
    a2[6] = v26;
    v15 = v20;
    a2[4] = v21;
    a2[5] = v15;
    *(a2 + 6) = -1082130432;
  }

  sub_19B916DC0(v17);
  sub_19B916DC0(&v18);
  if (v23)
  {
    sub_19B8750F8(v23);
  }

  return v10;
}

void sub_19B970020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  sub_19B916DC0(&a10);
  sub_19B916DC0(&a13);
  if (a19)
  {
    sub_19B8750F8(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19B970048(uint64_t a1, std::__shared_weak_count *a2, uint64_t **a3, int *a4, __n128 *a5, __n128 **a6, void *a7, void *a8, double a9)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = 0;
  *a7 = 0;
  *a8 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v42 = _Q0;
  do
  {
    sub_19B916DC0(a5);
    *a4 = 0;
    v67[0] = 0.0;
    v43[0] = 0;
    v43[1] = 0;
    v44 = v42;
    v45 = 0;
    v46 = 0;
    v47 = 0xBFF0000000000000;
    v59 = 0;
    v60 = 0;
    memset(&v57[32], 0, 32);
    v58 = 0;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    memset(v64, 0, 27);
    memset(&v64[32], 0, 48);
    memset(v57, 0, 30);
    v56 = 0u;
    v55 = 0u;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v65 = 0;
    v66 = 0xBFF0000000000000;
    if ((*(*a1 + 80))(a1, v43, a5, 0, 1, a3, *(a3 + 20), v67, *(a3 + 6), a9))
    {
      v21 = v67[0];
      if (v67[0] == -1.0)
      {
        goto LABEL_6;
      }

      v23 = a5->n128_i64[1];
      v24 = *a4;
      if (v23 == a5)
      {
        v25 = 0;
        v28 = a5;
      }

      else
      {
        v25 = 0;
        v26 = **a3;
        v27 = *(a3 + 20);
        v28 = a5;
        do
        {
          if (**(v23 + 16) == v26 && *(v23 + 32) != v27)
          {
            v28 = v23;
          }

          else
          {
            *a4 = ++v24;
            v25 = v23;
          }

          v23 = *(v23 + 8);
        }

        while (v23 != a5);
      }

      a9 = a9 - v21;
      if (v24 < 2)
      {
        if (v24 != 1)
        {
          sub_19B916DC0(a5);
LABEL_6:
          v22 = 0;
          v9 = 1;
          goto LABEL_36;
        }

        v34 = *(v25 + 16);
        v33 = *(v25 + 24);
        if (v33)
        {
          atomic_fetch_add_explicit(v33 + 1, 1uLL, memory_order_relaxed);
        }

        v35 = a3[1];
        *a3 = v34;
        a3[1] = v33;
        if (v35)
        {
          sub_19B8750F8(v35);
        }

        *(a3 + 20) = *(v25 + 32);
        a3[6] = *(v25 + 40);
        *a4 = 0;
        v36 = a5->n128_u64[1];
        if (v36 == a5)
        {
          v22 = 1;
        }

        else
        {
          do
          {
            if (*v36[1].n128_u64[0] != **a3 || v36[2].n128_u8[0] == *(a3 + 20))
            {
              sub_19B9131FC(a6, v36 + 1);
            }

            v36 = v36->n128_u64[1];
            v22 = 1;
          }

          while (v36 != a5);
        }
      }

      else
      {
        if (v28 != a5)
        {
          v30 = *v28;
          v29 = v28[1];
          *(v30 + 8) = v29;
          *v29 = v30;
          --a5[1].n128_u64[0];
          v31 = v28[3];
          if (v31)
          {
            sub_19B8750F8(v31);
          }

          operator delete(v28);
        }

        v22 = 0;
        v32 = *(&v54 + 1);
        *a7 = v54;
        *a8 = v32;
        a3[6] = v59;
        v9 = 1;
      }
    }

    else
    {
      v22 = 0;
      v9 = 0;
    }

LABEL_36:
    if (SHIBYTE(v53) < 0)
    {
      operator delete(*(&v52 + 1));
    }

    if ((v22 & 1) == 0)
    {
      goto LABEL_41;
    }

    ++v15;
  }

  while (v15 != 30);
  v9 = 1;
LABEL_41:
  if (a2)
  {
    sub_19B8750F8(a2);
  }

  return v9 & 1;
}

void sub_19B970390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a9)
  {
    sub_19B8750F8(a9);
  }

  _Unwind_Resume(exception_object);
}

double sub_19B9703C0(uint64_t a1, double a2)
{
  v2 = -1.0;
  if (*(a1 + 1008) == 1)
  {
    v17 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v4 = *(a1 + 1016);
    v5 = *(a1 + 1024);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = v4;
    v16 = v5;
    v6 = *(a1 + 1064);
    v18 = *(a1 + 1036);
    v23 = v6;
    v13 = 0.0;
    v14 = 0.0;
    v11.n128_u64[0] = &v11;
    v11.n128_u64[1] = &v11;
    v12 = 0;
    v10[0] = v10;
    v10[1] = v10;
    v10[2] = 0;
    v9 = 0;
    if (sub_19B970048(*(a1 + 8), *(a1 + 16), &v15, &v9, &v11, v10, &v14, &v13, a2) && (fabs(v14) >= 0.00003 || fabs(v13) >= 0.00003))
    {
      sub_19BA0C01C((a1 + 608), *(a1 + 1280), *(a1 + 1288), v14, v13, *(a1 + 1200));
      v2 = v7;
    }

    sub_19B916DC0(v10);
    sub_19B916DC0(&v11);
    if (v16)
    {
      sub_19B8750F8(v16);
    }
  }

  return v2;
}

void sub_19B9704DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  sub_19B916DC0(&a10);
  sub_19B916DC0(&a13);
  if (a19)
  {
    sub_19B8750F8(a19);
  }

  _Unwind_Resume(a1);
}

void sub_19B970504()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v0;
  v120 = *MEMORY[0x1E69E9840];
  v11 = *v8;
  v12 = v8[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    v63 = *v11;
    LOBYTE(v64) = v1;
    sub_19B8750F8(v12);
    sub_19B8750F8(v12);
  }

  else
  {
    v63 = *v11;
    LOBYTE(v64) = v1;
  }

  v13 = sub_19B98A250(v10 + 984, &v63);
  v14 = (v10 + 992);
  if (v10 + 992 != v13)
  {
    v15 = v13;
    if (*(v13 + 72) > 95)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v29 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v65) = 0;
        _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_ERROR, "CLMM,Unexpected out of bounds array access attempt", &v65, 2u);
      }

      v30 = sub_19B87DD40();
      if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
      {
        bzero(&v65, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        *v36 = 0;
        v31 = _os_log_send_and_compose_impl(2, 0, &v65, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,Unexpected out of bounds array access attempt", v36, 2);
        sub_19B885924("Generic", 1, 0, 0, "void CLParticleMapMatcher::updateCandidate(const CLMapRoadPtr &, BOOL, double, double, double)", "CoreLocation: %s\n", v31);
        if (v31 != &v65)
        {
          free(v31);
        }
      }
    }

    else
    {
      v17 = *v9;
      v16 = v9[1];
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v18 = *(v13 + 64);
      *(v15 + 56) = v17;
      *(v15 + 64) = v16;
      if (v18)
      {
        sub_19B8750F8(v18);
      }

      v19 = *(v15 + 72);
      v20 = (v15 + 8 * v19);
      v20[141] = v5;
      v20[237] = v3;
      v20[333] = v7;
      *(v15 + 72) = v19 + 1;
    }

    return;
  }

  memset(v36, 0, 44);
  *&v36[44] = 1;
  *&v36[48] = 0;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  HIDWORD(v41) = 0;
  v42 = 0;
  v39 = 0;
  LOBYTE(v41) = 0;
  v40 = 0u;
  *&v43 = 0;
  DWORD2(v43) = 0;
  v44 = 0u;
  v45[0] = 1;
  memset(&v45[8], 0, 24);
  __asm { FMOV            V2.2D, #-1.0 }

  v46 = _Q2;
  v47 = 0u;
  *v48 = 0xBFF0000000000000;
  *&v49[120] = 0;
  *&v49[128] = 0;
  memset(&v49[80], 0, 34);
  memset(&v49[136], 0, 75);
  memset(&v49[216], 0, 56);
  memset(v49, 0, 78);
  memset(&v48[8], 0, 96);
  *&v49[272] = 0xBFF0000000000000;
  v50 = 0u;
  *&v51 = 0xBFF0000000000000;
  *(&v51 + 1) = 0xBFF0000000000000;
  v52 = 0u;
  *v53 = 0xBFF0000000000000;
  *&v54[120] = 0;
  *&v54[128] = 0;
  memset(&v54[80], 0, 34);
  memset(&v54[136], 0, 75);
  memset(&v54[216], 0, 56);
  memset(v54, 0, 78);
  memset(&v53[8], 0, 96);
  *&v54[272] = xmmword_19BA89720;
  v56 = 0u;
  v57 = _Q2;
  v58 = 0u;
  *v59 = 0xBFF0000000000000;
  v60[15] = 0;
  LODWORD(v60[16]) = 0;
  memset(&v60[10], 0, 34);
  memset(&v60[17], 0, 75);
  memset(&v60[27], 0, 56);
  memset(v60, 0, 78);
  memset(&v59[8], 0, 96);
  v60[34] = 0xBFF0000000000000;
  *&v62 = 0;
  v61 = 0u;
  *(&v62 + 1) = 0x3FF0000000000000;
  bzero(v55, 0xC00uLL);
  v27 = *v9;
  v26 = v9[1];
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v28 = *&v36[8];
  *v36 = v27;
  *&v36[8] = v26;
  if (v28)
  {
    sub_19B8750F8(v28);
  }

  v55[0] = v5;
  v55[96] = v3;
  v55[192] = v7;
  *&v36[16] = 1;
  v65 = v63;
  v66 = v64;
  v67 = v27;
  v68 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v69 = *&v36[16];
  v70 = *&v36[24];
  if (*&v36[32])
  {
    atomic_fetch_add_explicit((*&v36[32] + 8), 1uLL, memory_order_relaxed);
  }

  v71 = *&v36[40];
  v72 = v37;
  v74[0] = *&v38[8];
  *(v74 + 9) = *&v38[17];
  v73 = *v38;
  v75 = 0;
  v77 = 0;
  v76 = 0;
  sub_19B96775C(&v75, v39, v40, 0x8E38E38E38E38E39 * ((v40 - v39) >> 3));
  v80 = v43;
  v81 = v44;
  v82 = *v45;
  v83 = *&v45[16];
  v84 = v46;
  v85 = v47;
  v86 = *v48;
  v87 = *&v48[16];
  v88 = *&v48[32];
  v89 = *&v48[48];
  v78 = v41;
  v79 = v42;
  v90 = *&v48[64];
  if ((v48[103] & 0x80000000) != 0)
  {
    sub_19B874C9C(&v91, *&v48[80], *&v48[88]);
  }

  else
  {
    v91 = *&v48[80];
    v92 = *&v48[96];
  }

  memcpy(v93, v49, sizeof(v93));
  v98 = *&v53[16];
  v99 = *&v53[32];
  v100 = *&v53[48];
  v101 = *&v53[64];
  v94 = v50;
  v95 = v51;
  v96 = v52;
  v97 = *v53;
  if ((v53[103] & 0x80000000) != 0)
  {
    sub_19B874C9C(&v102, *&v53[80], *&v53[88]);
  }

  else
  {
    v102 = *&v53[80];
    v103 = *&v53[96];
  }

  memcpy(v104, v54, sizeof(v104));
  v105 = *&v54[280];
  memcpy(v106, v55, sizeof(v106));
  v111 = *&v59[16];
  v112 = *&v59[32];
  v113 = *&v59[48];
  v114 = *&v59[64];
  v107 = v56;
  v108 = v57;
  v109 = v58;
  v110 = *v59;
  if ((v59[103] & 0x80000000) != 0)
  {
    sub_19B874C9C(&__p, *&v59[80], *&v59[88]);
  }

  else
  {
    __p = *&v59[80];
    v116 = *&v59[96];
  }

  memcpy(v117, v60, sizeof(v117));
  v118 = v61;
  v119 = v62;
  v32 = *v14;
  if (!*v14)
  {
LABEL_54:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v33 = v32;
      v34 = v32[4];
      if (v65 != v34)
      {
        if (v65 >= v34)
        {
          if (v34 >= v65)
          {
            goto LABEL_55;
          }

          goto LABEL_53;
        }

        goto LABEL_50;
      }

      if ((v66 & 1) == 0 || (v33[6] & 1) == 0)
      {
        break;
      }

      v35 = v33[5];
      if (*(&v65 + 1) >= v35)
      {
        if (v35 >= *(&v65 + 1))
        {
          goto LABEL_55;
        }

        goto LABEL_53;
      }

LABEL_50:
      v32 = *v33;
      if (!*v33)
      {
        goto LABEL_54;
      }
    }

    if (v66)
    {
      goto LABEL_50;
    }

    if ((v33[6] & 1) == 0)
    {
      break;
    }

LABEL_53:
    v32 = v33[1];
    if (!v32)
    {
      goto LABEL_54;
    }
  }

LABEL_55:
  if (SHIBYTE(v116) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v103) < 0)
  {
    operator delete(v102);
  }

  if (SHIBYTE(v92) < 0)
  {
    operator delete(v91);
  }

  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  if (*(&v70 + 1))
  {
    sub_19B8750F8(*(&v70 + 1));
  }

  if (v68)
  {
    sub_19B8750F8(v68);
  }

  if ((v59[103] & 0x80000000) != 0)
  {
    operator delete(*&v59[80]);
  }

  if ((v53[103] & 0x80000000) != 0)
  {
    operator delete(*&v53[80]);
  }

  if ((v48[103] & 0x80000000) != 0)
  {
    operator delete(*&v48[80]);
  }

  if (*&v36[32])
  {
    sub_19B8750F8(*&v36[32]);
  }

  if (*&v36[8])
  {
    sub_19B8750F8(*&v36[8]);
  }
}

void sub_19B970FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_19B9887B8(v9 + 176);
  sub_19B966FCC(&STACK[0x1570]);
  if (STACK[0x1560])
  {
    sub_19B8750F8(STACK[0x1560]);
  }

  sub_19B98887C(va);
  _Unwind_Resume(a1);
}

void sub_19B97106C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3[0] = *a1;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_19B964614(a2, v3, *(a1 + 20));

    sub_19B8750F8(v2);
  }

  else
  {
    sub_19B964614(a2, v3, *(a1 + 20));
  }
}

uint64_t sub_19B9710EC(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  if (v6)
  {
    sub_19B8750F8(v6);
  }

  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  *(a1 + 48) = a2[6];
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v9 = *(a2 + 7);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 56) = v9;
  if (a1 != a2)
  {
    sub_19B967884((a1 + 88), a2[11], a2[12], 0x8E38E38E38E38E39 * ((a2[12] - a2[11]) >> 3));
  }

  return a1;
}

uint64_t sub_19B971188(uint64_t a1)
{
  v220 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v194 = *(a1 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 2064);
  v4 = 0.0;
  if (v3 >= 0.0)
  {
    if (*(a1 + 2152) > 0.0)
    {
      v4 = *(a1 + 2152);
    }

    else
    {
      v4 = 0.0;
    }
  }

  v5 = *(a1 + 1224);
  if (v5 >= 0.0)
  {
    v6 = *(a1 + 1640);
    if (v3 >= 0.0 && v6 < 2.2)
    {
      v5 = (v3 + v5) * 0.5;
    }

    *(a1 + 1792) = v5;
  }

  else
  {
    *(a1 + 1792) = 0;
    v6 = *(a1 + 1640);
    v5 = 0.0;
  }

  v7 = v6 * v5;
  if (*(a1 + 2048) <= 0.0 || v6 >= 2.2)
  {
    *(a1 + 1800) = v7;
    v9 = -1.0;
  }

  else
  {
    sub_19BA0C01C((a1 + 608), *(a1 + 1184), *(a1 + 1192), *(a1 + 2024), *(a1 + 2032), *(a1 + 1200));
    v9 = v8;
    if (v8 > 300.0)
    {
      if (*(a1 + 96) != 1)
      {
        goto LABEL_89;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v10 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 1640);
        *buf = 134349312;
        *&buf[4] = v9;
        *&buf[12] = 2050;
        *&buf[14] = v11;
        _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "CLMM, Position jump(m),%{public}.1lf,dT(s),%{public}.1lf", buf, 0x16u);
      }

      v12 = sub_19B87DD40();
      if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
      {
        goto LABEL_89;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v13 = *(a1 + 1640);
      LODWORD(v209[0]) = 134349312;
      *(v209 + 4) = v9;
      WORD2(v209[1]) = 2050;
      *(&v209[1] + 6) = v13;
      v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM, Position jump(m),%{public}.1lf,dT(s),%{public}.1lf", v209, 22);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v14);
      goto LABEL_87;
    }

    *(a1 + 1800) = v7;
    if (v8 < 0.0 || *(a1 + 1792) <= 0.0 || (*(a1 + 1356) & 1) != 0)
    {
      if (v8 >= 0.0 && (*(a1 + 1356) & 1) == 0)
      {
        *(a1 + 1800) = v8;
      }
    }

    else
    {
      *(a1 + 1800) = (v7 + v8) * 0.5;
    }
  }

  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v15 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 1136);
      v17 = *(a1 + 1800);
      *buf = 134349824;
      *&buf[4] = v16;
      *&buf[12] = 2050;
      *&buf[14] = v17;
      *&buf[22] = 2050;
      *&buf[24] = v7;
      LOWORD(v214[0]) = 2050;
      *(v214 + 2) = v9;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,predictionAndUpdate,distance,%{public}.1lf,distBasedOnSpeed,%{public}.1lf,distBasedOnPos,%{public}.1lf", buf, 0x2Au);
    }

    v18 = sub_19B87DD40();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v19 = *(a1 + 1136);
      v20 = *(a1 + 1800);
      LODWORD(v209[0]) = 134349824;
      *(v209 + 4) = v19;
      WORD2(v209[1]) = 2050;
      *(&v209[1] + 6) = v20;
      HIWORD(v209[2]) = 2050;
      *&v209[3] = v7;
      LOWORD(v209[4]) = 2050;
      *(&v209[4] + 2) = v9;
      v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,predictionAndUpdate,distance,%{public}.1lf,distBasedOnSpeed,%{public}.1lf,distBasedOnPos,%{public}.1lf", v209, 42);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }

  v22 = a1;
  *(a1 + 1608) = 0xBFF0000000000000;
  if (*(a1 + 872) == *(a1 + 864))
  {
LABEL_335:
    v45 = 1;
  }

  else
  {
    v185 = *(a1 + 872) - *(a1 + 864);
    v23 = *(a1 + 1800);
    v24 = *(a1 + 1640);
    v25 = v24 * v24;
    if (*(a1 + 1356) == 1 && v24 > 4.9)
    {
      v26 = 24.01;
      if (*(a1 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v27 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349312;
          *&buf[4] = v25;
          *&buf[12] = 2050;
          *&buf[14] = 0x4038028F5C28F5C4;
          _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_DEBUG, "CLMM,dT2 limited,from,%{public}.1lf,to,%{public}.1lf", buf, 0x16u);
        }

        v28 = sub_19B87DD40();
        if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          LODWORD(v209[0]) = 134349312;
          *(v209 + 4) = v25;
          WORD2(v209[1]) = 2050;
          *(&v209[1] + 6) = 0x4038028F5C28F5C4;
          v29 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,dT2 limited,from,%{public}.1lf,to,%{public}.1lf", v209, 22);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v29);
          v22 = a1;
          if (v29 != buf)
          {
            free(v29);
          }
        }

        else
        {
          v22 = a1;
        }
      }
    }

    else
    {
      v26 = v24 * v24;
    }

    v30 = v26 * ((v4 * v4 + *(v22 + 1312) * *(v22 + 1312)) * 0.25);
    *(v22 + 1808) = v30;
    v31 = *(v22 + 1792);
    v32 = v26 * 3.0;
    if (v31 >= 8.05555556)
    {
      v32 = v26;
    }

    *(v22 + 1816) = v32;
    v33 = v26 * (v31 * v31 * 0.25);
    *(v22 + 1824) = v33;
    *(v22 + 1832) = sqrt(v30 + v32 + v33);
    v34 = *(v22 + 1640);
    if (v34 <= 0.0 || v34 > 75.0 || ((v34 > 4.9) & (*(v22 + 1356) ^ 1)) != 0)
    {
      if (*(v22 + 96) != 1)
      {
        goto LABEL_89;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v41 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        v42 = *(a1 + 1640);
        *buf = 134349568;
        *&buf[4] = v42;
        *&buf[12] = 2050;
        *&buf[14] = 0x401399999999999ALL;
        *&buf[22] = 2050;
        *&buf[24] = 0x4052C00000000000;
        _os_log_impl(&dword_19B873000, v41, OS_LOG_TYPE_ERROR, "#Warning CLMM,unexpected,dT,%{public}.1lf,minMoreThan,0,threshold1,%{public}.1lf,threshold2,%{public}.1lf", buf, 0x20u);
      }

      v43 = sub_19B87DD40();
      if ((*(v43 + 160) & 0x80000000) != 0 && (*(v43 + 164) & 0x80000000) != 0 && (*(v43 + 168) & 0x80000000) != 0 && !*(v43 + 152))
      {
        goto LABEL_89;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v44 = *(a1 + 1640);
      LODWORD(v209[0]) = 134349568;
      *(v209 + 4) = v44;
      WORD2(v209[1]) = 2050;
      *(&v209[1] + 6) = 0x401399999999999ALL;
      HIWORD(v209[2]) = 2050;
      v209[3] = 0x4052C00000000000;
      v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "#Warning CLMM,unexpected,dT,%{public}.1lf,minMoreThan,0,threshold1,%{public}.1lf,threshold2,%{public}.1lf", v209, 32);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v14);
LABEL_87:
      if (v14 != buf)
      {
        free(v14);
      }

      goto LABEL_89;
    }

    v35 = (v22 + 864);
    if (*(v22 + 2688) == 1)
    {
      sub_19BA0C01C((v22 + 608), *(v22 + 2120), *(v22 + 2128), *(v22 + 2744), *(v22 + 2752), *(v22 + 1200));
      v37 = v36;
      v38 = *(v22 + 2824);
      v39 = 4 * v38;
      if (v38 >= 1)
      {
        v40 = 4 * v38;
        if (v39 <= 1)
        {
          v39 = 1;
        }

        do
        {
          sub_19B973C04((v22 + 864), v22 + 2712);
          --v39;
        }

        while (v39);
        v39 = v40;
      }
    }

    else
    {
      v39 = 0;
      v37 = 0.0;
    }

    if (*(v22 + 2232) != 1)
    {
      v192 = 0;
      v181 = 0;
      v60 = v39;
LABEL_114:
      v183 = v2;
      v182 = v39;
      v188 = v60;
      if (*(v22 + 114) == 1 && ((v61 = *(v22 + 88), v62 = vabdd_f64(*(v22 + 1152), v61), v61 >= 0.0) ? (v63 = v62 <= 6.0) : (v63 = 0), v63 && (v64 = *(v22 + 4040), v184 = *(v22 + 4048), v64 != v184)))
      {
        v190 = 0;
        do
        {
          v66 = *v64;
          v65 = *(v64 + 8);
          if (v65)
          {
            atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v67 = *(v64 + 16);
          v68 = *(v64 + 20);
          LOWORD(v199) = *(v64 + 21);
          BYTE2(v199) = *(v64 + 23);
          v69 = *(v64 + 24);
          v70 = *(v64 + 28);
          v72 = *(v64 + 32);
          v71 = *(v64 + 40);
          v188 += 2;
          v190 += 2;
          v73 = 1;
          v187 = v64;
          v74 = *(v64 + 48);
          do
          {
            v75 = v73;
            memset(buf, 0, 20);
            *&buf[20] = 1;
            *&buf[24] = 0;
            v218 = 0;
            v219 = 0;
            __p = 0;
            memset(v214, 0, sizeof(v214));
            v215 = 0u;
            v216 = 0;
            if (v65)
            {
              atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
              v76 = *&buf[8];
              *buf = v66;
              *&buf[8] = v65;
              if (v76)
              {
                sub_19B8750F8(v76);
              }
            }

            else
            {
              *buf = v66;
              *&buf[8] = 0;
            }

            *&buf[16] = v67;
            buf[20] = v68;
            *&buf[21] = v199;
            buf[23] = BYTE2(v199);
            *&buf[24] = v69;
            *&buf[28] = v70;
            v214[0] = v72;
            v214[1] = v71;
            v214[2] = v74;
            sub_19B973C04(v35, buf);
            if (__p)
            {
              v218 = __p;
              operator delete(__p);
            }

            if (*&buf[8])
            {
              sub_19B8750F8(*&buf[8]);
            }

            v73 = 0;
          }

          while ((v75 & 1) != 0);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v77 = off_1EAFE4708;
          v78 = v69;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v79 = *(a1 + 1136);
            v80 = *v66;
            *buf = 134350337;
            *&buf[4] = v79;
            *&buf[12] = 2053;
            *&buf[14] = v72;
            *&buf[22] = 2053;
            *&buf[24] = v71;
            LOWORD(v214[0]) = 2050;
            *(v214 + 2) = v78;
            WORD1(v214[1]) = 2049;
            *(&v214[1] + 4) = v80;
            WORD2(v214[2]) = 1026;
            *(&v214[2] + 6) = v68;
            _os_log_impl(&dword_19B873000, v77, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHint,add particle,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,course,%{public}.3lf,rseg,%{private}lld,fwd,%{public}d", buf, 0x3Au);
          }

          v81 = sub_19B87DD40();
          if (*(v81 + 160) > 1 || *(v81 + 164) > 1 || *(v81 + 168) > 1 || *(v81 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v82 = *(a1 + 1136);
            v83 = *v66;
            LODWORD(v209[0]) = 134350337;
            *(v209 + 4) = v82;
            WORD2(v209[1]) = 2053;
            *(&v209[1] + 6) = v72;
            HIWORD(v209[2]) = 2053;
            v209[3] = v71;
            LOWORD(v209[4]) = 2050;
            *(&v209[4] + 2) = v78;
            WORD1(v209[5]) = 2049;
            *(&v209[5] + 4) = v83;
            WORD2(v209[6]) = 1026;
            *(&v209[6] + 6) = v68;
            v84 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,routeHint,add particle,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,course,%{public}.3lf,rseg,%{private}lld,fwd,%{public}d", v209, 58);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v84);
            if (v84 != buf)
            {
              free(v84);
            }
          }

          if (v65)
          {
            sub_19B8750F8(v65);
          }

          v64 = v187 + 56;
          v22 = a1;
        }

        while (v187 + 56 != v184);
      }

      else
      {
        v190 = 0;
      }

      if (*(v22 + 2684) == 1)
      {
        v196 = &v196;
        v197 = &v196;
        v198 = 0;
        if (((*(*v194 + 64))(v194, &v196, v22 + 1128, 1, 40.0) & 1) == 0 && *(v22 + 96) == 1)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v85 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v85, OS_LOG_TYPE_DEBUG, "CLMM,railway search,roadsWithinDistance returned false", buf, 2u);
          }

          v86 = sub_19B87DD40();
          if (*(v86 + 160) > 1 || *(v86 + 164) > 1 || *(v86 + 168) > 1 || *(v86 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            LOWORD(v209[0]) = 0;
            v87 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,railway search,roadsWithinDistance returned false", v209, 2);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v87);
            if (v87 != buf)
            {
              free(v87);
            }
          }
        }

        if (!v198 || (v88 = v197, v197 == &v196))
        {
          v89 = 0;
        }

        else
        {
          v89 = 0;
          do
          {
            if (*(v88[2] + 17) == 1)
            {
              memset(v209, 0, 20);
              WORD2(v209[2]) = 1;
              LODWORD(v209[3]) = 0;
              v211 = 0;
              v212 = 0;
              v210 = 0;
              memset(&v209[4], 0, 49);
              v90 = v88[2];
              v91 = v88[3];
              if (v91)
              {
                atomic_fetch_add_explicit((v91 + 8), 1uLL, memory_order_relaxed);
                v92 = v209[1];
                v209[0] = v90;
                v209[1] = v91;
                if (v92)
                {
                  sub_19B8750F8(v92);
                }
              }

              else
              {
                v209[0] = v88[2];
                v209[1] = 0;
              }

              v93 = *(v88 + 3);
              *&v209[2] = *(v88 + 2);
              *&v209[4] = v93;
              v209[6] = v88[8];
              sub_19B973C04(v35, v209);
              sub_19B973C04(v35, v209);
              if (*(v22 + 96) == 1)
              {
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                }

                v94 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                {
                  v95 = *(v22 + 1136);
                  v96 = *v88[2];
                  *buf = 134350081;
                  *&buf[4] = v95;
                  *&buf[12] = 2053;
                  *&buf[14] = v209[4];
                  *&buf[22] = 2053;
                  *&buf[24] = v209[5];
                  LOWORD(v214[0]) = 2050;
                  *(v214 + 2) = *&v209[3];
                  WORD1(v214[1]) = 2049;
                  *(&v214[1] + 4) = v96;
                  _os_log_impl(&dword_19B873000, v94, OS_LOG_TYPE_DEBUG, "CLMM,railwayParticle,timestamp,%{public}.3lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,course,%{public}.3lf,rseg,%{private}lld", buf, 0x34u);
                }

                v97 = sub_19B87DD40();
                if (*(v97 + 160) > 1 || *(v97 + 164) > 1 || *(v97 + 168) > 1 || *(v97 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                  }

                  v98 = *(v22 + 1136);
                  v99 = *v88[2];
                  v199 = 134350081;
                  v200 = v98;
                  v201 = 2053;
                  v202 = v209[4];
                  v203 = 2053;
                  v204 = v209[5];
                  v205 = 2050;
                  v206 = *&v209[3];
                  v207 = 2049;
                  v208 = v99;
                  v100 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,railwayParticle,timestamp,%{public}.3lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,course,%{public}.3lf,rseg,%{private}lld", &v199, 52);
                  sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v100);
                  if (v100 != buf)
                  {
                    free(v100);
                  }
                }
              }

              if (v210)
              {
                v211 = v210;
                operator delete(v210);
              }

              if (v209[1])
              {
                sub_19B8750F8(v209[1]);
              }

              v89 += 2;
            }

            v88 = v88[1];
          }

          while (v88 != &v196);
        }

        sub_19B916DC0(&v196);
      }

      else
      {
        v89 = 0;
      }

      v2 = v183;
      if (*(v22 + 2512) == 1 && *(v22 + 2233) == 1)
      {
        v102 = 4;
        do
        {
          sub_19B973C04(v35, v22 + 2520);
          --v102;
        }

        while (v102);
        v188 += 4;
        v103 = 4;
      }

      else
      {
        v103 = 0;
      }

      if (*(v22 + 96) == 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        v104 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v105 = -1227133513 * ((*(a1 + 872) - *(a1 + 864)) >> 4);
          *buf = 67242240;
          *&buf[4] = v105;
          *&buf[8] = 1026;
          *&buf[10] = -1227133513 * (v185 >> 4);
          *&buf[14] = 1026;
          *&buf[16] = v188;
          *&buf[20] = 1026;
          *&buf[22] = v182;
          *&buf[26] = 1026;
          *&buf[28] = 0;
          LOWORD(v214[0]) = 1026;
          *(v214 + 2) = v192;
          HIWORD(v214[0]) = 1026;
          LODWORD(v214[1]) = v181;
          WORD2(v214[1]) = 1026;
          *(&v214[1] + 6) = v103;
          WORD1(v214[2]) = 1026;
          HIDWORD(v214[2]) = v190;
          _os_log_impl(&dword_19B873000, v104, OS_LOG_TYPE_DEBUG, "CLMM,prediction,NrParticles,%{public}d,NrStandard,%{public}d,NrNew,%{public}d,NrPriorIntersectionParticles,%{public}d,NrNewAlternateCandidateNoiseParticles,%{public}d,NrNewFwdIntersectionParticles,%{public}d,NrNewBiasedToPrior,%{public}d,NrNewAmbiguous,%{public}d,NrNewRouteParticles,%{public}d", buf, 0x38u);
        }

        v106 = sub_19B87DD40();
        if (*(v106 + 160) > 1 || *(v106 + 164) > 1 || *(v106 + 168) > 1 || *(v106 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v107 = -1227133513 * ((*(a1 + 872) - *(a1 + 864)) >> 4);
          LODWORD(v209[0]) = 67242240;
          HIDWORD(v209[0]) = v107;
          LOWORD(v209[1]) = 1026;
          *(&v209[1] + 2) = -1227133513 * (v185 >> 4);
          HIWORD(v209[1]) = 1026;
          LODWORD(v209[2]) = v188;
          WORD2(v209[2]) = 1026;
          *(&v209[2] + 6) = v182;
          WORD1(v209[3]) = 1026;
          HIDWORD(v209[3]) = 0;
          LOWORD(v209[4]) = 1026;
          *(&v209[4] + 2) = v192;
          HIWORD(v209[4]) = 1026;
          LODWORD(v209[5]) = v181;
          WORD2(v209[5]) = 1026;
          *(&v209[5] + 6) = v103;
          WORD1(v209[6]) = 1026;
          HIDWORD(v209[6]) = v190;
          v108 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,prediction,NrParticles,%{public}d,NrStandard,%{public}d,NrNew,%{public}d,NrPriorIntersectionParticles,%{public}d,NrNewAlternateCandidateNoiseParticles,%{public}d,NrNewFwdIntersectionParticles,%{public}d,NrNewBiasedToPrior,%{public}d,NrNewAmbiguous,%{public}d,NrNewRouteParticles,%{public}d", v209, 56);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v108);
          if (v108 != buf)
          {
            free(v108);
          }
        }
      }

      v109 = a1;
      v110 = *(a1 + 864);
      if (v110 == *(a1 + 872))
      {
        v115 = 0.0;
LABEL_298:
        if (*(a1 + 96) == 1)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v151 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349056;
            *&buf[4] = v115;
            _os_log_impl(&dword_19B873000, v151, OS_LOG_TYPE_ERROR, "CLMM,totalScore<=0,%{public}.1lf", buf, 0xCu);
          }

          v152 = sub_19B87DD40();
          v109 = a1;
          if ((*(v152 + 160) & 0x80000000) == 0 || (*(v152 + 164) & 0x80000000) == 0 || (*(v152 + 168) & 0x80000000) == 0 || *(v152 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            LODWORD(v209[0]) = 134349056;
            *(v209 + 4) = v115;
            v153 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,totalScore<=0,%{public}.1lf", v209, 12);
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v153);
            if (v153 != buf)
            {
              free(v153);
            }

            v109 = a1;
          }
        }

        v154 = v109;
        v155 = *(v109 + 872);
        v156 = *(v154 + 864);
        while (v155 != v156)
        {
          v155 -= 14;
          sub_19B988BB4(v155);
        }

        v45 = 0;
        v46 = a1;
        *(a1 + 872) = v156;
        goto LABEL_90;
      }

      v111 = 0;
      v112 = -1227133513 * (v185 >> 4);
      v189 = v182 - 1227133513 * (v185 >> 4);
      v186 = v192 + v189;
      v113 = v190 + v181 + v192 + v189;
      if (v113 <= v89 + v113)
      {
        v113 += v89;
      }

      v191 = v113;
      v193 = v23;
      if (v23 + v37 <= 0.0)
      {
        v114 = 0.1;
      }

      else
      {
        v114 = v23 + v37 + 0.0;
      }

      v115 = 0.0;
      while (1)
      {
        if (v111 >= v112)
        {
          if (v111 >= v189)
          {
            if (v111 >= v186)
            {
              if (v111 >= v181 + v186)
              {
                if (v111 >= v191)
                {
                  if (byte_1EAFE4E38)
                  {
                    byte_1EAFE4E38 = 0;
                    v146 = *&dword_1EAFE4E3C;
                  }

                  else
                  {
                    do
                    {
                      v147 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
                      v148 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
                      v149 = (v148 * v148) + (v147 * v147);
                    }

                    while (v149 >= 1.0);
                    v146 = 0.0;
                    if (v149 != 0.0)
                    {
                      v150 = sqrtf((logf((v148 * v148) + (v147 * v147)) * -2.0) / v149);
                      *&dword_1EAFE4E3C = v148 * v150;
                      byte_1EAFE4E38 = 1;
                      v146 = v147 * v150;
                    }
                  }

                  if (((*(*v194 + 88))(v194, v110, a1 + 912, v193 + *(a1 + 1832) * v146) & 1) == 0)
                  {
                    if (*(a1 + 96) == 1)
                    {
                      if (qword_1EAFE46D0 != -1)
                      {
                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                      }

                      v179 = off_1EAFE4708;
                      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_19B873000, v179, OS_LOG_TYPE_DEBUG, "CLMM,moveOnRoad returned false,alternate ambiguous particles", buf, 2u);
                      }

                      v180 = sub_19B87DD40();
                      if (*(v180 + 160) > 1 || *(v180 + 164) > 1 || *(v180 + 168) > 1 || *(v180 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE46D0 != -1)
                        {
                          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                        }

                        LOWORD(v209[0]) = 0;
                        v174 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,moveOnRoad returned false,alternate ambiguous particles", v209, 2);
                        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v174);
LABEL_426:
                        if (v174 != buf)
                        {
                          free(v174);
                        }
                      }
                    }

LABEL_428:
                    v45 = 0;
                    v101 = a1;
                    goto LABEL_429;
                  }
                }
              }

              else
              {
                if (byte_1EAFE4E38)
                {
                  byte_1EAFE4E38 = 0;
                  v136 = *&dword_1EAFE4E3C;
                }

                else
                {
                  do
                  {
                    v137 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
                    v138 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
                    v139 = (v138 * v138) + (v137 * v137);
                  }

                  while (v139 >= 1.0);
                  v136 = 0.0;
                  if (v139 != 0.0)
                  {
                    v140 = sqrtf((logf((v138 * v138) + (v137 * v137)) * -2.0) / v139);
                    *&dword_1EAFE4E3C = v138 * v140;
                    byte_1EAFE4E38 = 1;
                    v136 = v137 * v140;
                  }
                }

                if (((*(*v194 + 88))(v194, v110, a1 + 912, *(a1 + 1832) * v136 + 0.0) & 1) == 0)
                {
                  if (*(a1 + 96) == 1)
                  {
                    if (qword_1EAFE46D0 != -1)
                    {
                      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                    }

                    v177 = off_1EAFE4708;
                    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_19B873000, v177, OS_LOG_TYPE_DEBUG, "CLMM,moveOnRoad returned false,prior snap particles", buf, 2u);
                    }

                    v178 = sub_19B87DD40();
                    if (*(v178 + 160) > 1 || *(v178 + 164) > 1 || *(v178 + 168) > 1 || *(v178 + 152))
                    {
                      bzero(buf, 0x65CuLL);
                      if (qword_1EAFE46D0 != -1)
                      {
                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                      }

                      LOWORD(v209[0]) = 0;
                      v174 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,moveOnRoad returned false,prior snap particles", v209, 2);
                      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v174);
                      goto LABEL_426;
                    }
                  }

                  goto LABEL_428;
                }
              }
            }

            else if (((*(*v194 + 88))(v194, v110, a1 + 912, ((v111 - v189) % 6 + 1) * 3.5 + 0.0) & 1) == 0)
            {
              if (*(a1 + 96) == 1)
              {
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                }

                v175 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&dword_19B873000, v175, OS_LOG_TYPE_DEBUG, "CLMM,moveOnRoad returned false,fwd intersection particles", buf, 2u);
                }

                v176 = sub_19B87DD40();
                if (*(v176 + 160) > 1 || *(v176 + 164) > 1 || *(v176 + 168) > 1 || *(v176 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                  }

                  LOWORD(v209[0]) = 0;
                  v174 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,moveOnRoad returned false,fwd intersection particles", v209, 2);
                  sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v174);
                  goto LABEL_426;
                }
              }

              goto LABEL_428;
            }
          }

          else
          {
            v124 = *(v110 + 8);
            v209[0] = *v110;
            v209[1] = v124;
            if (v124)
            {
              atomic_fetch_add_explicit((v124 + 8), 1uLL, memory_order_relaxed);
            }

            v125 = *(v110 + 16);
            v126 = *(v110 + 32);
            v209[6] = *(v110 + 48);
            *&v209[2] = v125;
            *&v209[4] = v126;
            v127 = *(v110 + 65);
            *&v209[7] = *(v110 + 56);
            *(&v209[8] + 1) = v127;
            v211 = 0;
            v212 = 0;
            v210 = 0;
            sub_19B96775C(&v210, *(v110 + 88), *(v110 + 96), 0x8E38E38E38E38E39 * ((*(v110 + 96) - *(v110 + 88)) >> 3));
            v128 = 4;
            while (1)
            {
              v129 = (*(*v194 + 88))(v194, v110, a1 + 912, v114);
              if ((v129 & 1) == 0)
              {
                break;
              }

              v130 = v209[0];
              if (**v110 == *v209[0] && *(v110 + 20) != BYTE4(v209[2]))
              {
                v131 = v209[1];
                if (v209[1])
                {
                  atomic_fetch_add_explicit((v209[1] + 8), 1uLL, memory_order_relaxed);
                }

                v132 = *(v110 + 8);
                *v110 = v130;
                *(v110 + 8) = v131;
                if (v132)
                {
                  sub_19B8750F8(v132);
                }

                v133 = *&v209[2];
                v134 = *&v209[4];
                *(v110 + 48) = v209[6];
                *(v110 + 16) = v133;
                *(v110 + 32) = v134;
                v135 = *&v209[7];
                *(v110 + 65) = *(&v209[8] + 1);
                *(v110 + 56) = v135;
                if (v110 != v209)
                {
                  sub_19B967884((v110 + 88), v210, v211, 0x8E38E38E38E38E39 * ((v211 - v210) >> 3));
                }

                if (--v128)
                {
                  continue;
                }
              }

              goto LABEL_279;
            }

            if (*(a1 + 96) == 1)
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              v141 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_19B873000, v141, OS_LOG_TYPE_DEBUG, "CLMM,moveOnRoad returned false,prior intersection particles", buf, 2u);
              }

              v142 = sub_19B87DD40();
              if (*(v142 + 160) > 1 || *(v142 + 164) > 1 || *(v142 + 168) > 1 || *(v142 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                }

                LOWORD(v199) = 0;
                v143 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,moveOnRoad returned false,prior intersection particles", &v199, 2);
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v143);
                if (v143 != buf)
                {
                  free(v143);
                }
              }
            }

            ++*(a1 + 108);
LABEL_279:
            if (v210)
            {
              v211 = v210;
              operator delete(v210);
            }

            v2 = v183;
            v112 = -1227133513 * (v185 >> 4);
            if (v209[1])
            {
              sub_19B8750F8(v209[1]);
            }

            if ((v129 & 1) == 0)
            {
              v45 = 0;
              goto LABEL_336;
            }
          }
        }

        else
        {
          if (byte_1EAFE4E38)
          {
            byte_1EAFE4E38 = 0;
            v116 = *&dword_1EAFE4E3C;
          }

          else
          {
            do
            {
              v117 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
              v118 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
              v119 = (v118 * v118) + (v117 * v117);
            }

            while (v119 >= 1.0);
            v116 = 0.0;
            if (v119 != 0.0)
            {
              v120 = sqrtf((logf((v118 * v118) + (v117 * v117)) * -2.0) / v119);
              *&dword_1EAFE4E3C = v118 * v120;
              byte_1EAFE4E38 = 1;
              v116 = v117 * v120;
            }
          }

          v121 = *(a1 + 1832);
          v122 = v121 * v116;
          if ((-1171354717 * v111) <= 0x1745D174 && v121 < 8.0)
          {
            v122 = fabs(v122) / v121 * 8.0;
          }

          else if ((-252645135 * v111) <= 0xF0F0F0F)
          {
            v122 = fabs(v122) / v121 * 34.0;
          }

          if (((*(*v194 + 88))(v194, v110, a1 + 912, v193 + v122) & 1) == 0)
          {
            if (*(a1 + 96) == 1)
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              v172 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_19B873000, v172, OS_LOG_TYPE_DEBUG, "CLMM,moveOnRoad returned false,standard particles", buf, 2u);
              }

              v173 = sub_19B87DD40();
              if (*(v173 + 160) > 1 || *(v173 + 164) > 1 || *(v173 + 168) > 1 || *(v173 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
                }

                LOWORD(v209[0]) = 0;
                v174 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,moveOnRoad returned false,standard particles", v209, 2);
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v174);
                goto LABEL_426;
              }
            }

            goto LABEL_428;
          }
        }

        if (!*v110)
        {
          break;
        }

        if (*(v110 + 32) == 0.0 && *(v110 + 40) == 0.0)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
          }

          v170 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v170, OS_LOG_TYPE_ERROR, "CLMM,Unexpected particle with snapLat == snapLon == 0", buf, 2u);
          }

          v171 = sub_19B87DD40();
          if ((*(v171 + 160) & 0x80000000) == 0 || (*(v171 + 164) & 0x80000000) == 0 || (*(v171 + 168) & 0x80000000) == 0 || *(v171 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            LOWORD(v209[0]) = 0;
            v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,Unexpected particle with snapLat == snapLon == 0", v209, 2);
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v14);
            goto LABEL_87;
          }

          goto LABEL_89;
        }

        *(v110 + 56) = 0;
        *(v110 + 64) = 0;
        *(v110 + 72) = 0;
        *(v110 + 96) = *(v110 + 88);
        memset(buf, 0, 24);
        *&buf[24] = 0x3FF0000000000000;
        memset(v214, 0, sizeof(v214));
        LODWORD(v215) = 0;
        sub_19B940928(a1, a1 + 656, v110, (a1 + 1128), v209, &v199, &v196, buf, 0);
        v144 = *&buf[16];
        *(v110 + 56) = *buf;
        *(v110 + 72) = v144;
        LODWORD(v215) = 1;
        *&buf[24] = 0x3FF0000000000000;
        sub_19B973D80(v110 + 88, buf);
        ++v111;
        v115 = v115 + *(v110 + 56);
        v110 += 112;
        v145 = *(a1 + 872);
        if (v110 == v145)
        {
          if (v115 <= 0.0)
          {
            goto LABEL_298;
          }

          v159 = *v35;
          if (*v35 != v110)
          {
            v160 = 0.0;
            do
            {
              v161 = *(v159 + 56) / v115;
              *(v159 + 64) = v161;
              v160 = v160 + v161;
              *&v161 = v160;
              *buf = LODWORD(v161);
              sub_19B973EC0((a1 + 936), buf);
              v159 += 112;
              v145 = *(a1 + 872);
            }

            while (v159 != v145);
            v159 = *v35;
          }

          if (v145 != v159)
          {
            v162 = 0.0;
            do
            {
              v162 = v162 + *(v159 + 64) * *(v159 + 64);
              v159 += 112;
            }

            while (v159 != v145);
            if (v162 > 0.0)
            {
              *(a1 + 1608) = 1.0 / v162;
            }
          }

          goto LABEL_335;
        }
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v157 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v157, OS_LOG_TYPE_ERROR, "CLMM,NULL road", buf, 2u);
      }

      v158 = sub_19B87DD40();
      if ((*(v158 + 160) & 0x80000000) == 0 || (*(v158 + 164) & 0x80000000) == 0 || (*(v158 + 168) & 0x80000000) == 0 || *(v158 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
        }

        LOWORD(v209[0]) = 0;
        v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,NULL road", v209, 2);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcher::predictionAndUpdate()", "CoreLocation: %s\n", v14);
        goto LABEL_87;
      }

LABEL_89:
      v45 = 0;
      v46 = a1;
LABEL_90:
      ++*(v46 + 104);
      goto LABEL_336;
    }

    v47 = v22 + 3048;
    v48 = v22 + 3096;
    *&buf[16] = 0;
    buf[21] = 0;
    *&buf[24] = 0;
    v214[0] = 0;
    v214[1] = 0;
    v49 = *(v22 + 1856);
    v50 = *(v22 + 1864);
    if (v50)
    {
      atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
    }

    *buf = v49;
    *&buf[8] = v50;
    v51 = *(v22 + 1904);
    buf[20] = *(v22 + 1876);
    v214[2] = v51;
    sub_19B916DC0((v22 + 3048));
    sub_19B916DC0((v22 + 3096));
    LODWORD(v196) = 0;
    v52 = sub_19B970048(*(v22 + 8), *(v22 + 16), buf, &v196, (v22 + 3048), (v22 + 3096), v209, &v199, 80.0);
    if (*&buf[8])
    {
      sub_19B8750F8(*&buf[8]);
    }

    if (v52)
    {
      v53 = v39;
      v54 = *(v22 + 3104);
      if (v54 == v48)
      {
        v55 = 0;
      }

      else
      {
        v55 = 0;
        do
        {
          memset(buf, 0, 20);
          *&buf[20] = 1;
          *&buf[24] = 0;
          v218 = 0;
          v219 = 0;
          __p = 0;
          memset(v214, 0, sizeof(v214));
          v215 = 0u;
          v216 = 0;
          v56 = *(v54 + 16);
          v57 = *(v54 + 24);
          if (v57)
          {
            atomic_fetch_add_explicit((v57 + 8), 1uLL, memory_order_relaxed);
            v58 = *&buf[8];
            *buf = v56;
            *&buf[8] = v57;
            if (v58)
            {
              sub_19B8750F8(v58);
            }
          }

          else
          {
            *buf = *(v54 + 16);
            *&buf[8] = 0;
          }

          v214[2] = *(v54 + 40);
          buf[20] = *(v54 + 32);
          v55 += 6;
          v59 = 6;
          do
          {
            sub_19B973C04(v35, buf);
            --v59;
          }

          while (v59);
          if (__p)
          {
            v218 = __p;
            operator delete(__p);
          }

          if (*&buf[8])
          {
            sub_19B8750F8(*&buf[8]);
          }

          v54 = *(v54 + 8);
        }

        while (v54 != v48);
      }

      v164 = *(a1 + 3056);
      v192 = v55;
      if (v164 != v47)
      {
        v192 = v55;
        do
        {
          memset(buf, 0, 20);
          *&buf[20] = 1;
          *&buf[24] = 0;
          v218 = 0;
          v219 = 0;
          __p = 0;
          memset(v214, 0, sizeof(v214));
          v215 = 0u;
          v216 = 0;
          v165 = *(v164 + 16);
          v166 = *(v164 + 24);
          if (v166)
          {
            atomic_fetch_add_explicit((v166 + 8), 1uLL, memory_order_relaxed);
            v167 = *&buf[8];
            *buf = v165;
            *&buf[8] = v166;
            if (v167)
            {
              sub_19B8750F8(v167);
            }
          }

          else
          {
            *buf = *(v164 + 16);
            *&buf[8] = 0;
          }

          v214[2] = *(v164 + 40);
          buf[20] = *(v164 + 32);
          v192 += 6;
          v168 = 6;
          do
          {
            sub_19B973C04(v35, buf);
            --v168;
          }

          while (v168);
          if (__p)
          {
            v218 = __p;
            operator delete(__p);
          }

          if (*&buf[8])
          {
            sub_19B8750F8(*&buf[8]);
          }

          v164 = *(v164 + 8);
        }

        while (v164 != v47);
      }

      v60 = v55 + v53 + v192;
      v22 = a1;
      if (*(a1 + 2232))
      {
        v169 = 12;
        do
        {
          sub_19B973C04(v35, a1 + 1856);
          --v169;
        }

        while (v169);
        v60 += 12;
        v181 = 12;
        v39 = v53;
      }

      else
      {
        v39 = v53;
        v181 = 0;
      }

      goto LABEL_114;
    }

    v101 = v22;
    v45 = 0;
LABEL_429:
    ++*(v101 + 108);
  }

LABEL_336:
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  return v45;
}
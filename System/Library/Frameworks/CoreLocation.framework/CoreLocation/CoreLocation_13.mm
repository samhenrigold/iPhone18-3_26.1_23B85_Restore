void sub_19BA1C430(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA1C484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v250 = *MEMORY[0x1E69E9840];
  if (*(a2 + 48) == *(a2 + 40))
  {
    return 0;
  }

  v4 = *(a2 + 384);
  if (*(a2 + 881) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v5 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v4;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous check,already ambiguous", buf, 0xCu);
    }

    v6 = sub_19B87DD40();
    if (*(v6 + 160) <= 1 && *(v6 + 164) <= 1 && *(v6 + 168) <= 1 && !*(v6 + 152))
    {
      return 1;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v228 = 134349056;
    *&v228[4] = v4;
    v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,isSolutionAmbiguous check,already ambiguous", v228, 12);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v7);
LABEL_14:
    if (v7 != buf)
    {
      free(v7);
    }

    return 1;
  }

  v11 = *(a2 + 792) - 2;
  v12 = 10.0;
  if (v11 <= 4)
  {
    v12 = dbl_19BA8D4B0[v11];
  }

  v13 = *(a2 + 456) + *(a2 + 456);
  if (v13 >= v12)
  {
    v13 = v12;
  }

  if (v13 >= 7.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 7.0;
  }

  v15 = fabs(*(a2 + 632));
  if (*(a2 + 882) == 1)
  {
    sub_19B9988CC((a1 + 2120), *(a2 + 608));
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v16 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 2144);
      v18 = *(a2 + 608);
      v19 = *(a1 + 2152);
      v20 = *(a1 + 2184);
      v21 = *(a1 + 2176);
      v22 = v20 - v21;
      if (v20 == v21)
      {
        v34 = 0.0;
        v27 = 0.0;
        v36 = 0.0;
      }

      else
      {
        v23 = 0.0;
        v24 = *(a1 + 2176);
        do
        {
          v25 = *v24++;
          v23 = v23 + v25;
        }

        while (v24 != v20);
        v26 = v22;
        v27 = v23 / v22;
        v28 = 60;
        if (v22 < 0x3C)
        {
          v28 = v22;
        }

        v29 = 0.0;
        v30 = *(a1 + 2176);
        do
        {
          v31 = *v30++;
          v29 = v29 + v31;
          --v28;
        }

        while (v28);
        v32 = 30;
        if (v22 < 0x1E)
        {
          v32 = v22;
        }

        v33 = 0.0;
        v34 = v29 / v26;
        do
        {
          v35 = *v21++;
          v33 = v33 + v35;
          --v32;
        }

        while (v32);
        v36 = v33 / v26;
      }

      v37 = *(a2 + 640);
      v38 = fabs(*(a2 + 616));
      v39 = *(a1 + 2088) != 0;
      v40 = *(a1 + 2080) != 0;
      *buf = 134352384;
      *&buf[4] = v4;
      *&buf[12] = 1026;
      *&buf[14] = v17;
      *&buf[18] = 2050;
      *&buf[20] = v18;
      *&buf[28] = 2050;
      *&buf[30] = v19;
      *&buf[38] = 2050;
      *&buf[40] = v27;
      *&buf[48] = 2050;
      *&buf[50] = v22;
      *&buf[58] = 2050;
      *&buf[60] = v34;
      *&buf[68] = 2050;
      *&buf[70] = v36;
      *&buf[78] = 1026;
      *&buf[80] = v37;
      v240 = 2050;
      v241 = v38;
      v242 = 2050;
      v243 = v15;
      v244 = 2050;
      v245 = v14;
      v246 = 1026;
      v247 = v39;
      v248 = 1026;
      v249 = v40;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,AverageVarianceFactor,count,%{public}d,vf,%{public}.4lf,avf,%{public}.4lf,avfBuffer,%{public}.4lf,avfBufferCnt,%{public}zu,avfBuffer60,%{public}.4lf,avfBuffer30,%{public}.4lf,isUsable,%{public}d,deltaAz,%{public}.2lf,fabsAT,%{public}.2lf,threshold,%{public}.2lf,usingAPI,%{public}d,usingBuffer,%{public}d", buf, 0x7Eu);
    }

    v41 = sub_19B87DD40();
    if (*(v41 + 160) > 1 || *(v41 + 164) > 1 || *(v41 + 168) > 1 || *(v41 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v42 = *(a1 + 2144);
      v43 = *(a2 + 608);
      v44 = *(a1 + 2152);
      v45 = *(a1 + 2184);
      v46 = *(a1 + 2176);
      v47 = v45 - v46;
      if (v45 == v46)
      {
        v59 = 0.0;
        v52 = 0.0;
        v61 = 0.0;
      }

      else
      {
        v48 = 0.0;
        v49 = *(a1 + 2176);
        do
        {
          v50 = *v49++;
          v48 = v48 + v50;
        }

        while (v49 != v45);
        v51 = v47;
        v52 = v48 / v47;
        v53 = 60;
        if (v47 < 0x3C)
        {
          v53 = v47;
        }

        v54 = 0.0;
        v55 = *(a1 + 2176);
        do
        {
          v56 = *v55++;
          v54 = v54 + v56;
          --v53;
        }

        while (v53);
        v57 = 30;
        if (v47 < 0x1E)
        {
          v57 = v47;
        }

        v58 = 0.0;
        v59 = v54 / v51;
        do
        {
          v60 = *v46++;
          v58 = v58 + v60;
          --v57;
        }

        while (v57);
        v61 = v58 / v51;
      }

      v62 = *(a2 + 640);
      v63 = fabs(*(a2 + 616));
      v64 = *(a1 + 2088) != 0;
      v65 = *(a1 + 2080) != 0;
      *v228 = 134352384;
      *&v228[4] = v4;
      *&v228[12] = 1026;
      *&v228[14] = v42;
      *&v228[18] = 2050;
      *&v228[20] = v43;
      *&v228[28] = 2050;
      *&v228[30] = v44;
      *&v228[38] = 2050;
      *&v228[40] = v52;
      *&v228[48] = 2050;
      *&v228[50] = v47;
      *&v228[58] = 2050;
      *&v228[60] = v59;
      *&v228[68] = 2050;
      *&v228[70] = v61;
      *&v228[78] = 1026;
      *&v228[80] = v62;
      v229 = 2050;
      v230 = v63;
      v231 = 2050;
      v232 = v15;
      v233 = 2050;
      v234 = v14;
      v235 = 1026;
      v236 = v64;
      v237 = 1026;
      v238 = v65;
      v66 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,AverageVarianceFactor,count,%{public}d,vf,%{public}.4lf,avf,%{public}.4lf,avfBuffer,%{public}.4lf,avfBufferCnt,%{public}zu,avfBuffer60,%{public}.4lf,avfBuffer30,%{public}.4lf,isUsable,%{public}d,deltaAz,%{public}.2lf,fabsAT,%{public}.2lf,threshold,%{public}.2lf,usingAPI,%{public}d,usingBuffer,%{public}d", v228, 126);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v66);
      if (v66 != buf)
      {
        free(v66);
      }
    }
  }

  if (!*(a1 + 2088) && !*(a1 + 2080))
  {
    return 0;
  }

  v67 = *(a1 + 1872);
  v68 = vabdd_f64(*(a2 + 400), v67);
  if (v67 >= 0.0 && v68 <= 6.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v74 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v4;
      _os_log_impl(&dword_19B873000, v74, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,0,routeHintsAvailable,1", buf, 0xCu);
    }

    v75 = sub_19B87DD40();
    if (*(v75 + 160) <= 1 && *(v75 + 164) <= 1 && *(v75 + 168) <= 1 && !*(v75 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v228 = 134349056;
    *&v228[4] = v4;
    v73 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,0,routeHintsAvailable,1", v228, 12);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v73);
    goto LABEL_104;
  }

  if ((*(a2 + 640) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v76 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v4;
      _os_log_impl(&dword_19B873000, v76, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,0,isSnapUsable,0", buf, 0xCu);
    }

    v77 = sub_19B87DD40();
    if (*(v77 + 160) <= 1 && *(v77 + 164) <= 1 && *(v77 + 168) <= 1 && !*(v77 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v228 = 134349056;
    *&v228[4] = v4;
    v73 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,0,isSnapUsable,0", v228, 12);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v73);
    goto LABEL_104;
  }

  v70 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(*(a2 + 432), *(a2 + 528))));
  if (vand_s8(v70, vdup_lane_s32(v70, 1)).u8[0])
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v71 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v4;
      _os_log_impl(&dword_19B873000, v71, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,0,sameAsRawGPS,1", buf, 0xCu);
    }

    v72 = sub_19B87DD40();
    if (*(v72 + 160) <= 1 && *(v72 + 164) <= 1 && *(v72 + 168) <= 1 && !*(v72 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v228 = 134349056;
    *&v228[4] = v4;
    v73 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,0,sameAsRawGPS,1", v228, 12);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v73);
    goto LABEL_104;
  }

  v79 = *(a2 + 384);
  *(a2 + 898) = 0;
  v80 = fmod(*(a2 + 480) - *(a2 + 280), 360.0);
  if (v80 < 0.0)
  {
    v80 = v80 + 360.0;
  }

  if (v80 > 180.0)
  {
    v80 = v80 + -360.0;
  }

  if ((*(a2 + 792) - 1) >= 2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v87 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v88 = *(a2 + 792);
      *buf = 134349312;
      *&buf[4] = v79;
      *&buf[12] = 1026;
      *&buf[14] = v88;
      _os_log_impl(&dword_19B873000, v87, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,harshDigitizationCheck skipped,signalEnv,%{public}d", buf, 0x12u);
    }

    v89 = sub_19B87DD40();
    if (*(v89 + 160) > 1 || *(v89 + 164) > 1 || *(v89 + 168) > 1 || *(v89 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v90 = *(a2 + 792);
      *v228 = 134349312;
      *&v228[4] = v79;
      *&v228[12] = 1026;
      *&v228[14] = v90;
      v91 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,harshDigitizationCheck skipped,signalEnv,%{public}d", v228, 18);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isHarshDigitizationCaseAtTurns(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v91);
      if (v91 != buf)
      {
        free(v91);
      }
    }

    if ((*(a2 + 898) & 1) == 0)
    {
      goto LABEL_241;
    }

LABEL_142:
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v92 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v4;
      _os_log_impl(&dword_19B873000, v92, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,1,isHarshDigitizationCaseAtTurns,1", buf, 0xCu);
    }

    v93 = sub_19B87DD40();
    if (*(v93 + 160) <= 1 && *(v93 + 164) <= 1 && *(v93 + 168) <= 1 && !*(v93 + 152))
    {
      return 1;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v228 = 134349056;
    *&v228[4] = v4;
    v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,1,isHarshDigitizationCaseAtTurns,1", v228, 12);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v7);
    goto LABEL_14;
  }

  v81 = fabs(v80);
  if (v81 <= 15.0 || fabs(*(a2 + 632)) < 1.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v82 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v83 = *(a2 + 632);
      *buf = 134349568;
      *&buf[4] = v79;
      *&buf[12] = 2050;
      *&buf[14] = v81;
      *&buf[22] = 2050;
      *&buf[24] = v83;
      _os_log_impl(&dword_19B873000, v82, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,harshDigitizationCheck skipped,courseDiff,%{public}.3lf,acrossTrack,%{public}.3lf", buf, 0x20u);
    }

    v84 = sub_19B87DD40();
    if (*(v84 + 160) > 1 || *(v84 + 164) > 1 || *(v84 + 168) > 1 || *(v84 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v85 = *(a2 + 632);
      *v228 = 134349568;
      *&v228[4] = v79;
      *&v228[12] = 2050;
      *&v228[14] = v81;
      *&v228[22] = 2050;
      *&v228[24] = v85;
      v86 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,harshDigitizationCheck skipped,courseDiff,%{public}.3lf,acrossTrack,%{public}.3lf", v228, 32);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isHarshDigitizationCaseAtTurns(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v86);
LABEL_126:
      if (v86 != buf)
      {
        free(v86);
      }

      goto LABEL_241;
    }

    goto LABEL_241;
  }

  if (*(a2 + 256))
  {
    v95 = *(a1 + 208);
    v94 = *(a1 + 216);
    if (v94)
    {
      atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v95)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v102 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = v79;
        _os_log_impl(&dword_19B873000, v102, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,invalid geometry pointer,isHarshDigitizationCaseAtTurns", buf, 0xCu);
      }

      v103 = sub_19B87DD40();
      if ((*(v103 + 160) & 0x80000000) == 0 || (*(v103 + 164) & 0x80000000) == 0 || (*(v103 + 168) & 0x80000000) == 0 || *(v103 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        *v228 = 134349056;
        *&v228[4] = v79;
        v104 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,invalid geometry pointer,isHarshDigitizationCaseAtTurns", v228, 12);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isHarshDigitizationCaseAtTurns(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v104);
        if (v104 != buf)
        {
          free(v104);
        }
      }

      v105 = 0;
LABEL_238:
      if (v94)
      {
        sub_19B8750F8(v94);
      }

      if ((v105 & 1) == 0)
      {
        goto LABEL_241;
      }

      goto LABEL_142;
    }

    v96 = v14;
    v97 = fmin(fmax(*(*(a2 + 256) + 96) + *(*(a2 + 256) + 96), 15.0), 45.0);
    v225 = &v225;
    v226 = &v225;
    v227 = 0;
    v224[0] = v95;
    v224[1] = v94;
    if (v94)
    {
      atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v98 = sub_19BA21C90(v224, (a2 + 256), *(a2 + 276), &v225, v97 + 0.5);
    v99 = v98;
    if (v94)
    {
      sub_19B8750F8(v94);
      if (v99)
      {
        v221 = &v221;
        v222 = &v221;
        v223 = 0;
        v219 = v95;
        v220 = v94;
        atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_186:
        v106 = sub_19BA21C90(&v219, (a2 + 256), (*(a2 + 276) & 1) == 0, &v221, v97 + 0.5);
        if (v94)
        {
          sub_19B8750F8(v94);
        }

        if (v106)
        {
          v107 = v227;
          v108 = v223;
          if (v227 > 1 || v223 > 1 || *(a3 + 762) == 1 && *(a3 + 120) && (sub_19B97106C(a2 + 256, buf), sub_19B97106C(a3 + 120, v228), *buf == *v228) && buf[16] == v228[16] && *&buf[8] == *&v228[8])
          {
            *(a2 + 898) = 1;
          }

          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v109 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v110 = *(a2 + 256);
            v111 = *v110;
            v112 = v110[12];
            v113 = *(a2 + 632);
            v114 = *(a2 + 898);
            *buf = 134351617;
            *&buf[4] = v79;
            *&buf[12] = 2049;
            *&buf[14] = v111;
            *&buf[22] = 1026;
            *&buf[24] = v107 > 1;
            *&buf[28] = 1026;
            *&buf[30] = v108 > 1;
            *&buf[34] = 2050;
            *&buf[36] = v227;
            *&buf[44] = 2050;
            *&buf[46] = v223;
            *&buf[54] = 2050;
            *&buf[56] = v97;
            *&buf[64] = 2050;
            *&buf[66] = v112;
            *&buf[74] = 2050;
            *&buf[76] = v81;
            v240 = 2050;
            v241 = v113;
            v242 = 1026;
            LODWORD(v243) = v114;
            _os_log_impl(&dword_19B873000, v109, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,harshDigitizationCheck,road,%{private}lld,isApproachingMulti,%{public}d,justCrossedMulti,%{public}d,nextList,%{public}lu,priorList,%{public}lu,threshold,%{public}.1lf,roadWidth,%{public}.1lf,courseDiff,%{public}.3lf,AT,%{public}.3lf,harshAmb,%{public}d", buf, 0x64u);
          }

          v115 = sub_19B87DD40();
          if (*(v115 + 160) > 1 || *(v115 + 164) > 1 || *(v115 + 168) > 1 || *(v115 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            v116 = *(a2 + 256);
            v117 = *v116;
            v118 = v116[12];
            v119 = *(a2 + 632);
            v120 = *(a2 + 898);
            *v228 = 134351617;
            *&v228[4] = v79;
            *&v228[12] = 2049;
            *&v228[14] = v117;
            *&v228[22] = 1026;
            *&v228[24] = v107 > 1;
            *&v228[28] = 1026;
            *&v228[30] = v108 > 1;
            *&v228[34] = 2050;
            *&v228[36] = v227;
            *&v228[44] = 2050;
            *&v228[46] = v223;
            *&v228[54] = 2050;
            *&v228[56] = v97;
            *&v228[64] = 2050;
            *&v228[66] = v118;
            *&v228[74] = 2050;
            *&v228[76] = v81;
            v229 = 2050;
            v230 = v119;
            v231 = 1026;
            LODWORD(v232) = v120;
            v121 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,harshDigitizationCheck,road,%{private}lld,isApproachingMulti,%{public}d,justCrossedMulti,%{public}d,nextList,%{public}lu,priorList,%{public}lu,threshold,%{public}.1lf,roadWidth,%{public}.1lf,courseDiff,%{public}.3lf,AT,%{public}.3lf,harshAmb,%{public}d", v228, 100);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isHarshDigitizationCaseAtTurns(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v121);
            if (v121 != buf)
            {
              free(v121);
            }
          }

          v105 = *(a2 + 898);
          v14 = v96;
        }

        else
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v14 = v96;
          v125 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            *&buf[4] = v79;
            _os_log_impl(&dword_19B873000, v125, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,findMultiOutboundIntersection returned false, searching for prior connected candidates", buf, 0xCu);
          }

          v126 = sub_19B87DD40();
          if (*(v126 + 160) > 1 || *(v126 + 164) > 1 || *(v126 + 168) > 1 || *(v126 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            *v228 = 134349056;
            *&v228[4] = v79;
            v127 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,findMultiOutboundIntersection returned false, searching for prior connected candidates", v228, 12);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isHarshDigitizationCaseAtTurns(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v127);
            if (v127 != buf)
            {
              free(v127);
            }
          }

          v105 = 0;
        }

        sub_19B941414(&v221);
LABEL_237:
        sub_19B941414(&v225);
        goto LABEL_238;
      }
    }

    else if (v98)
    {
      v221 = &v221;
      v222 = &v221;
      v223 = 0;
      v219 = v95;
      v220 = 0;
      goto LABEL_186;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v14 = v96;
    v122 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v79;
      _os_log_impl(&dword_19B873000, v122, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,findMultiOutboundIntersection returned false, searching for next connected candidates", buf, 0xCu);
    }

    v123 = sub_19B87DD40();
    if (*(v123 + 160) > 1 || *(v123 + 164) > 1 || *(v123 + 168) > 1 || *(v123 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *v228 = 134349056;
      *&v228[4] = v79;
      v124 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,findMultiOutboundIntersection returned false, searching for next connected candidates", v228, 12);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isHarshDigitizationCaseAtTurns(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v124);
      if (v124 != buf)
      {
        free(v124);
      }
    }

    v105 = 0;
    goto LABEL_237;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v100 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    *&buf[4] = v79;
    _os_log_impl(&dword_19B873000, v100, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,invalid road pointer,isHarshDigitizationCaseAtTurns", buf, 0xCu);
  }

  v101 = sub_19B87DD40();
  if ((*(v101 + 160) & 0x80000000) == 0 || (*(v101 + 164) & 0x80000000) == 0 || (*(v101 + 168) & 0x80000000) == 0 || *(v101 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v228 = 134349056;
    *&v228[4] = v79;
    v86 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,invalid road pointer,isHarshDigitizationCaseAtTurns", v228, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isHarshDigitizationCaseAtTurns(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v86);
    goto LABEL_126;
  }

LABEL_241:
  if (v15 <= v14)
  {
    v136 = *(a1 + 2200);
    if (v136 > 3.0 && v136 < 20.0 && *(a3 + 505) == 1 && v15 > v14 * 0.85)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v137 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v138 = *(a1 + 2200);
        *buf = 134349824;
        *&buf[4] = v4;
        *&buf[12] = 2050;
        *&buf[14] = v15;
        *&buf[22] = 2050;
        *&buf[24] = v14 * 0.85;
        *&buf[32] = 2050;
        *&buf[34] = v138;
        _os_log_impl(&dword_19B873000, v137, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,1, previous solution was ambiguous and AT,%{public}.1lf,is over scaled threshold,%{public}.1lf,consecutiveAmbCnt,%{public}1lf", buf, 0x2Au);
      }

      v139 = sub_19B87DD40();
      if (*(v139 + 160) <= 1 && *(v139 + 164) <= 1 && *(v139 + 168) <= 1 && !*(v139 + 152))
      {
        return 1;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v140 = *(a1 + 2200);
      *v228 = 134349824;
      *&v228[4] = v4;
      *&v228[12] = 2050;
      *&v228[14] = v15;
      *&v228[22] = 2050;
      *&v228[24] = v14 * 0.85;
      *&v228[32] = 2050;
      *&v228[34] = v140;
      v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,1, previous solution was ambiguous and AT,%{public}.1lf,is over scaled threshold,%{public}.1lf,consecutiveAmbCnt,%{public}1lf", v228, 42);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v7);
      goto LABEL_14;
    }

    if (*(a2 + 640) == 1)
    {
      v146 = *(a1 + 2184);
      v147 = *(a1 + 2176);
      if (v146 != v147)
      {
        v148 = v146 - v147;
        v149 = 0.0;
        do
        {
          v150 = *v147++;
          v149 = v149 + v150;
        }

        while (v147 != v146);
        if (v149 / v148 > 1.2)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v151 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v152 = *(a1 + 2144);
            v153 = *(a2 + 608);
            v154 = *(a1 + 2152);
            *buf = 134349824;
            *&buf[4] = v4;
            *&buf[12] = 1026;
            *&buf[14] = v152;
            *&buf[18] = 2050;
            *&buf[20] = v153;
            *&buf[28] = 2050;
            *&buf[30] = v154;
            _os_log_impl(&dword_19B873000, v151, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,1,averageVarianceFactor,count,%{public}d,vf,%{public}.4lf,avf,%{public}.4lf", buf, 0x26u);
          }

          v155 = sub_19B87DD40();
          if (*(v155 + 160) > 1 || *(v155 + 164) > 1 || *(v155 + 168) > 1 || *(v155 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            v156 = *(a1 + 2144);
            v157 = *(a2 + 608);
            v158 = *(a1 + 2152);
            *v228 = 134349824;
            *&v228[4] = v4;
            *&v228[12] = 1026;
            *&v228[14] = v156;
            *&v228[18] = 2050;
            *&v228[20] = v157;
            *&v228[28] = 2050;
            *&v228[30] = v158;
            v159 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,1,averageVarianceFactor,count,%{public}d,vf,%{public}.4lf,avf,%{public}.4lf", v228, 38);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v159);
            if (v159 != buf)
            {
              free(v159);
            }
          }

          v8 = 1;
          if (*(a3 + 504) != 1 || (*(a3 + 505) & 1) != 0)
          {
            return v8;
          }

          goto LABEL_242;
        }
      }
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v160 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349568;
      *&buf[4] = v4;
      *&buf[12] = 2050;
      *&buf[14] = v15;
      *&buf[22] = 2050;
      *&buf[24] = v14;
      _os_log_impl(&dword_19B873000, v160, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,0,lowAcrossTrack,%{public}.1lf,threshold,%{public}.2lf", buf, 0x20u);
    }

    v161 = sub_19B87DD40();
    if (*(v161 + 160) <= 1 && *(v161 + 164) <= 1 && *(v161 + 168) <= 1 && !*(v161 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v228 = 134349568;
    *&v228[4] = v4;
    *&v228[12] = 2050;
    *&v228[14] = v15;
    *&v228[22] = 2050;
    *&v228[24] = v14;
    v73 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,0,lowAcrossTrack,%{public}.1lf,threshold,%{public}.2lf", v228, 32);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v73);
LABEL_104:
    if (v73 != buf)
    {
      free(v73);
    }

    return 0;
  }

LABEL_242:
  if (*(a2 + 568) > 0.0)
  {
    v128 = *(a2 + 480);
    if (v128 >= 0.0)
    {
      v129 = fmod(*(a2 + 680) - v128, 360.0);
      if (v129 < 0.0)
      {
        v129 = v129 + 360.0;
      }

      if (v129 > 180.0)
      {
        v129 = v129 + -360.0;
      }

      if ((*(a3 + 505) != 1 || *(a1 + 2200) < 5.0) && *(a2 + 456) < 10.0)
      {
        v130 = fabs(v129);
        if (v130 < 18.0 && v15 <= v14 * 1.5)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v132 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v133 = *(a2 + 456);
            *buf = 134350080;
            *&buf[4] = v4;
            *&buf[12] = 2050;
            *&buf[14] = v130;
            *&buf[22] = 2050;
            *&buf[24] = v15;
            *&buf[32] = 2050;
            *&buf[34] = v133;
            *&buf[42] = 2050;
            *&buf[44] = v14 * 1.5;
            _os_log_impl(&dword_19B873000, v132, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,0,overridden based on course matching,%{public}.2lf,AT,%{public}.2lf,hunc,%{public}.2lf,threshold,%{public}.2lf", buf, 0x34u);
          }

          v134 = sub_19B87DD40();
          if (*(v134 + 160) <= 1 && *(v134 + 164) <= 1 && *(v134 + 168) <= 1 && !*(v134 + 152))
          {
            return 0;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v135 = *(a2 + 456);
          *v228 = 134350080;
          *&v228[4] = v4;
          *&v228[12] = 2050;
          *&v228[14] = v130;
          *&v228[22] = 2050;
          *&v228[24] = v15;
          *&v228[32] = 2050;
          *&v228[34] = v135;
          *&v228[42] = 2050;
          *&v228[44] = v14 * 1.5;
          v73 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,0,overridden based on course matching,%{public}.2lf,AT,%{public}.2lf,hunc,%{public}.2lf,threshold,%{public}.2lf", v228, 52);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v73);
          goto LABEL_104;
        }
      }
    }
  }

  v141 = *(a2 + 256);
  if (v141 && ((*(a1 + 12) & 1) != 0 || (*(v141 + 20) & 0xFFFFFFFE) == 8))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v142 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v143 = *(*(a2 + 256) + 20);
      *buf = 134349312;
      *&buf[4] = v4;
      *&buf[12] = 1026;
      *&buf[14] = v143;
      _os_log_impl(&dword_19B873000, v142, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,skipping building checks for unknown roads,%{public}d", buf, 0x12u);
    }

    v144 = sub_19B87DD40();
    if (*(v144 + 160) <= 1 && *(v144 + 164) <= 1 && *(v144 + 168) <= 1 && !*(v144 + 152))
    {
      return 1;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v145 = *(*(a2 + 256) + 20);
    *v228 = 134349312;
    *&v228[4] = v4;
    *&v228[12] = 1026;
    *&v228[14] = v145;
    v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,skipping building checks for unknown roads,%{public}d", v228, 18);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v7);
    goto LABEL_14;
  }

  if (*(a2 + 456) + 30.0 <= 45.0)
  {
    v162 = *(a2 + 456) + 30.0;
  }

  else
  {
    v162 = 45.0;
  }

  v225 = 0;
  v226 = 0;
  v227 = 0;
  v163 = *(a1 + 2080);
  if (!v163)
  {
    sub_19B9DDB5C(*(a1 + 2088), &v225, a2 + 376, v162);
  }

  memset(buf, 0, 24);
  sub_19B8EE770(v163, buf, *(a2 + 432), *(a2 + 440), v162);
  sub_19BA2F2D8(&v225, v225, *buf, *&buf[8], (*&buf[8] - *buf) >> 6);
  sub_19B8ED82C(*(a1 + 2080), 0, 1, v4, *(a2 + 432), *(a2 + 440), *(*(a1 + 2080) + 176));
  *v228 = buf;
  sub_19BA2F8A0(v228);
  v165 = v225;
  v164 = v226;
  if ((v226 - v225) <= 0x40)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v166 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      *&buf[4] = v4;
      *&buf[12] = 1026;
      *&buf[14] = (v226 - v225) >> 6;
      _os_log_impl(&dword_19B873000, v166, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,1,fewerThan2Buildings,%{public}d", buf, 0x12u);
    }

    v167 = sub_19B87DD40();
    if (*(v167 + 160) > 1 || *(v167 + 164) > 1 || *(v167 + 168) > 1 || *(v167 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *v228 = 134349312;
      *&v228[4] = v4;
      *&v228[12] = 1026;
      *&v228[14] = (v226 - v225) >> 6;
      v168 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,1,fewerThan2Buildings,%{public}d", v228, 18);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v168);
      goto LABEL_433;
    }

    goto LABEL_435;
  }

  if (v225 == v226)
  {
    v169 = 0;
    v170 = 0;
    goto LABEL_422;
  }

  v217 = v15;
  v169 = 0;
  v170 = 0;
  v218 = v4;
  do
  {
    v172 = *(v165 + 8);
    v171 = *(v165 + 16);
    v173 = -1.0;
    if (v172 != v171)
    {
      v174 = 0.0;
      v175 = 0.0;
      v176 = 0.0;
      do
      {
        v177 = *v172;
        v178 = *(v172 + 1);
        v172 += 2;
        v179 = atan2(v177, v178);
        if (v179 < 0.0)
        {
          v179 = v179 + 6.28318531;
        }

        v180 = __sincos_stret(v179);
        v174 = v174 + v180.__cosval;
        v175 = v175 + v180.__sinval;
        v176 = v176 + 1.0;
      }

      while (v172 != v171);
      if (v176 > 0.0)
      {
        v181 = atan2(v175 / v176, v174 / v176);
        v182 = fmod(v181 * 57.2957795, 360.0);
        if (v182 >= 0.0)
        {
          v173 = v182;
        }

        else
        {
          v173 = v182 + 360.0;
        }
      }
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v183 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v184 = *(a2 + 432);
      v185 = *(a2 + 440);
      v186 = *(a2 + 480);
      *buf = 134351105;
      *&buf[4] = v4;
      *&buf[12] = 1026;
      *&buf[14] = (v226 - v225) >> 6;
      *&buf[18] = 2053;
      *&buf[20] = v184;
      *&buf[28] = 2053;
      *&buf[30] = v185;
      *&buf[38] = 2050;
      *&buf[40] = v186;
      *&buf[48] = 1026;
      *&buf[50] = v170;
      *&buf[54] = 1026;
      *&buf[56] = v169;
      *&buf[60] = 2050;
      *&buf[62] = v162;
      *&buf[70] = 2050;
      *&buf[72] = v173;
      _os_log_impl(&dword_19B873000, v183, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,-1,buildingCount,%{public}d,latitude,%{sensitive}.7lf,longitude,%{sensitive}.7lf,course,%{public}.2lf,rightSideCount,%{public}d,leftSideCount,%{public}d,searchDistance,%{public}.2lf,averageBuildingDirection,%{public}.2lf", buf, 0x50u);
    }

    v187 = sub_19B87DD40();
    if (*(v187 + 160) > 1 || *(v187 + 164) > 1 || *(v187 + 168) > 1 || *(v187 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v188 = *(a2 + 432);
      v189 = *(a2 + 440);
      v190 = *(a2 + 480);
      *v228 = 134351105;
      *&v228[4] = v4;
      *&v228[12] = 1026;
      *&v228[14] = (v226 - v225) >> 6;
      *&v228[18] = 2053;
      *&v228[20] = v188;
      *&v228[28] = 2053;
      *&v228[30] = v189;
      *&v228[38] = 2050;
      *&v228[40] = v190;
      *&v228[48] = 1026;
      *&v228[50] = v170;
      *&v228[54] = 1026;
      *&v228[56] = v169;
      *&v228[60] = 2050;
      *&v228[62] = v162;
      *&v228[70] = 2050;
      *&v228[72] = v173;
      v191 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,-1,buildingCount,%{public}d,latitude,%{sensitive}.7lf,longitude,%{sensitive}.7lf,course,%{public}.2lf,rightSideCount,%{public}d,leftSideCount,%{public}d,searchDistance,%{public}.2lf,averageBuildingDirection,%{public}.2lf", v228, 80);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v191);
      if (v191 != buf)
      {
        free(v191);
      }
    }

    v192 = v162;
    v193 = *(a2 + 480);
    v194 = fmod(v173, 360.0);
    if (v194 >= 0.0)
    {
      v195 = v194;
    }

    else
    {
      v195 = v194 + 360.0;
    }

    v196 = fmod(v193, 360.0);
    if (v196 >= 0.0)
    {
      v197 = v196;
    }

    else
    {
      v197 = v196 + 360.0;
    }

    v198 = fmod(v193 + 90.0, 360.0);
    if (v198 >= 0.0)
    {
      v199 = v198;
    }

    else
    {
      v199 = v198 + 360.0;
    }

    if (v197 >= v199)
    {
      v200 = v197 > v195 && v195 > v199;
    }

    else
    {
      v200 = v197 > v195 || v195 > v199;
    }

    if (v200)
    {
      v201 = fmod(v193 + 180.0, 360.0);
      if (v201 < 0.0)
      {
        v201 = v201 + 360.0;
      }

      v202 = v199 <= v195;
      if (v195 <= v201)
      {
        v202 = 1;
      }

      v203 = v199 <= v195;
      if (v195 > v201)
      {
        v203 = 0;
      }

      if (v199 < v201)
      {
        v204 = v203;
      }

      else
      {
        v204 = v202;
      }
    }

    else
    {
      v204 = 1;
    }

    v205 = v193 + 270.0;
    v206 = fmod(v193 + 180.0, 360.0);
    if (v206 >= 0.0)
    {
      v207 = v206;
    }

    else
    {
      v207 = v206 + 360.0;
    }

    v208 = fmod(v205, 360.0);
    if (v208 < 0.0)
    {
      v208 = v208 + 360.0;
    }

    if (v207 >= v208)
    {
      if (v207 <= v195 || v195 <= v208)
      {
LABEL_413:
        v210 = 1;
        goto LABEL_416;
      }
    }

    else if (v207 <= v195 && v195 <= v208)
    {
      goto LABEL_413;
    }

    if (v208 >= v197)
    {
      v210 = v195 <= v197;
      if (v208 <= v195)
      {
        v210 = 1;
      }
    }

    else
    {
      v210 = v195 <= v197;
      if (v208 > v195)
      {
        v210 = 0;
      }
    }

LABEL_416:
    v170 += v204;
    v169 += v210;
    v165 += 64;
    v162 = v192;
    v4 = v218;
  }

  while (v165 != v164);
  if (v170 && v169)
  {
    v212 = *(a2 + 792);
    if (v212 == 3)
    {
      v8 = 0;
      goto LABEL_436;
    }

    v8 = 0;
    if (v212 != 4 && v217 > v14 + v14)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v215 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134350080;
        *&buf[4] = v218;
        *&buf[12] = 1026;
        *&buf[14] = v170;
        *&buf[18] = 1026;
        *&buf[20] = v169;
        *&buf[24] = 2050;
        *&buf[26] = v217;
        *&buf[34] = 2050;
        *&buf[36] = v14 + v14;
        _os_log_impl(&dword_19B873000, v215, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,1,buildingOnBothSides but AT too high,rightCount,%{public}d,leftCount,%{public}d,AT,%{public}.1lf,threshold,%{public}.1lf", buf, 0x2Cu);
      }

      v216 = sub_19B87DD40();
      if (*(v216 + 160) > 1 || *(v216 + 164) > 1 || *(v216 + 168) > 1 || *(v216 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        *v228 = 134350080;
        *&v228[4] = v218;
        *&v228[12] = 1026;
        *&v228[14] = v170;
        *&v228[18] = 1026;
        *&v228[20] = v169;
        *&v228[24] = 2050;
        *&v228[26] = v217;
        *&v228[34] = 2050;
        *&v228[36] = v14 + v14;
        v168 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,1,buildingOnBothSides but AT too high,rightCount,%{public}d,leftCount,%{public}d,AT,%{public}.1lf,threshold,%{public}.1lf", v228, 44);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v168);
        goto LABEL_433;
      }

      goto LABEL_435;
    }

    goto LABEL_436;
  }

LABEL_422:
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v213 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349568;
    *&buf[4] = v4;
    *&buf[12] = 1026;
    *&buf[14] = v170;
    *&buf[18] = 1026;
    *&buf[20] = v169;
    _os_log_impl(&dword_19B873000, v213, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,1,buildingNotOnBothSides,rightCount,%{public}d,leftCount,%{public}d", buf, 0x18u);
  }

  v214 = sub_19B87DD40();
  if (*(v214 + 160) > 1 || *(v214 + 164) > 1 || *(v214 + 168) > 1 || *(v214 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v228 = 134349568;
    *&v228[4] = v4;
    *&v228[12] = 1026;
    *&v228[14] = v170;
    *&v228[18] = 1026;
    *&v228[20] = v169;
    v168 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,1,buildingNotOnBothSides,rightCount,%{public}d,leftCount,%{public}d", v228, 24);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v168);
LABEL_433:
    if (v168 != buf)
    {
      free(v168);
    }
  }

LABEL_435:
  v8 = 1;
LABEL_436:
  *buf = &v225;
  sub_19BA2F8A0(buf);
  return v8;
}

void sub_19BA1F1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_19B941414(&a23);
  sub_19B941414(&a28);
  if (v28)
  {
    sub_19B8750F8(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19BA1F280(uint64_t a1, uint64_t *a2)
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

  *(a1 + 112) = a2[14];
  v11 = a2[15];
  v10 = a2[16];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 128);
  *(a1 + 120) = v11;
  *(a1 + 128) = v10;
  if (v12)
  {
    sub_19B8750F8(v12);
  }

  v13 = *(a2 + 17);
  v14 = *(a2 + 19);
  *(a1 + 168) = a2[21];
  *(a1 + 152) = v14;
  *(a1 + 136) = v13;
  v15 = *(a2 + 11);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 176) = v15;
  if (a1 != a2)
  {
    sub_19B967884((a1 + 208), a2[26], a2[27], 0x8E38E38E38E38E39 * ((a2[27] - a2[26]) >> 3));
  }

  *(a1 + 232) = *(a2 + 232);
  v16 = *(a2 + 15);
  v17 = *(a2 + 16);
  v18 = *(a2 + 18);
  *(a1 + 272) = *(a2 + 17);
  *(a1 + 288) = v18;
  *(a1 + 240) = v16;
  *(a1 + 256) = v17;
  v19 = *(a2 + 19);
  v20 = *(a2 + 20);
  v21 = *(a2 + 22);
  *(a1 + 336) = *(a2 + 21);
  *(a1 + 352) = v21;
  *(a1 + 304) = v19;
  *(a1 + 320) = v20;
  std::string::operator=((a1 + 368), (a2 + 46));
  memcpy((a1 + 392), a2 + 49, 0x118uLL);
  v22 = *(a2 + 42);
  v23 = *(a2 + 43);
  v24 = *(a2 + 44);
  *(a1 + 720) = a2[90];
  *(a1 + 688) = v23;
  *(a1 + 704) = v24;
  *(a1 + 672) = v22;
  v25 = a2[91];
  v26 = a2[92];
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 728) = v25;
  v27 = *(a1 + 736);
  *(a1 + 736) = v26;
  if (v27)
  {
    sub_19B8750F8(v27);
  }

  v28 = *(a2 + 93);
  *(a1 + 759) = *(a2 + 759);
  *(a1 + 744) = v28;
  return a1;
}

uint64_t sub_19BA1F438(uint64_t a1)
{
  v2 = *(a1 + 872);
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  if (*(a1 + 527) < 0)
  {
    operator delete(*(a1 + 504));
  }

  v3 = *(a1 + 344);
  if (v3)
  {
    *(a1 + 352) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 264);
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  v5 = *(a1 + 224);
  if (v5)
  {
    *(a1 + 232) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 144);
  if (v6)
  {
    sub_19B8750F8(v6);
  }

  sub_19BA2E9A8(*(a1 + 120));
  v7 = *(a1 + 64);
  if (v7)
  {
    *(a1 + 72) = v7;
    operator delete(v7);
  }

  v9 = (a1 + 40);
  sub_19B988734(&v9);
  return a1;
}

uint64_t sub_19BA1F4E0(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v4;
  *(a1 + 16) = v5;
  if (a1 == a2)
  {
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 13);
  }

  else
  {
    sub_19BA2EB5C((a1 + 40), *(a2 + 5), *(a2 + 6), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 6) - *(a2 + 5)) >> 4));
    sub_19BA2EFD8((a1 + 64), *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 2);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 13);
    v6 = *(a2 + 14);
    v7 = a2 + 120;
    if (*(a1 + 128))
    {
      v9 = (a1 + 120);
      v8 = *(a1 + 120);
      v10 = *(a1 + 112);
      *(a1 + 112) = a1 + 120;
      *(v8 + 16) = 0;
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      if (*(v10 + 8))
      {
        v11 = *(v10 + 8);
      }

      else
      {
        v11 = v10;
      }

      v22 = a1 + 112;
      v23 = v11;
      v24 = v11;
      if (!v11 || (v23 = sub_19BA2F234(v11), v6 == v7))
      {
        v19 = v6;
        goto LABEL_33;
      }

      while (1)
      {
        v12 = *(v6 + 2);
        *(v11 + 48) = v6[48];
        *(v11 + 2) = v12;
        sub_19BA0EF24((v11 + 7), (v6 + 56));
        v13 = *v9;
        v14 = a1 + 120;
        v15 = (a1 + 120);
        if (!*v9)
        {
          goto LABEL_21;
        }

        v16 = v24[4];
        do
        {
          while (1)
          {
            v14 = v13;
            v17 = *(v13 + 32);
            if (v16 != v17)
            {
              if (v16 >= v17)
              {
                goto LABEL_19;
              }

              goto LABEL_16;
            }

            if (*(v24 + 48) == 1 && (*(v14 + 48) & 1) != 0)
            {
              break;
            }

            if (!*(v24 + 48))
            {
              goto LABEL_19;
            }

LABEL_16:
            v13 = *v14;
            v15 = v14;
            if (!*v14)
            {
              goto LABEL_21;
            }
          }

          if (v24[5] < *(v14 + 40))
          {
            goto LABEL_16;
          }

LABEL_19:
          v13 = *(v14 + 8);
        }

        while (v13);
        v15 = (v14 + 8);
LABEL_21:
        sub_19B8F0968((a1 + 112), v14, v15, v24);
        v11 = v23;
        v24 = v23;
        if (v23)
        {
          v23 = sub_19BA2F234(v23);
        }

        v18 = *(v6 + 1);
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = *(v6 + 2);
            v20 = *v19 == v6;
            v6 = v19;
          }

          while (!v20);
        }

        if (v11)
        {
          v6 = v19;
          if (v19 != v7)
          {
            continue;
          }
        }

LABEL_33:
        sub_19BA2F288(&v22);
        v6 = v19;
        break;
      }
    }

    if (v6 != v7)
    {
      operator new();
    }
  }

  sub_19BA1F280(a1 + 136, a2 + 17);
  *(a1 + 904) = *(a2 + 904);
  return a1;
}

void sub_19BA1F9BC(_Unwind_Exception *a1)
{
  if (*(v1 + 375) < 0)
  {
    operator delete(*(v1 + 352));
  }

  sub_19B966FCC((v1 + 64));
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA1FA38(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, double *a5, double *a6, double a7)
{
  v37 = *MEMORY[0x1E69E9840];
  v14 = a5[1];
  v24 = v14;
  if ((sub_19BA1FDF8(a1, a4, v14, a7) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v16 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v17 = a2;
      if (*(a2 + 23) < 0)
      {
        v17 = *a2;
      }

      *buf = 134349570;
      v32 = v14;
      v33 = 2082;
      v34 = v17;
      v35 = 2050;
      v36 = a7;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,moveParticle,failed,%{public}s,moveDistance,%{public}.1lf", buf, 0x20u);
    }

    v18 = sub_19B87DD40();
    if (*(v18 + 160) <= 1 && *(v18 + 164) <= 1 && *(v18 + 168) <= 1 && !*(v18 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    v25 = 134349570;
    v26 = v14;
    v27 = 2082;
    v28 = a2;
    v29 = 2050;
    v30 = a7;
    v19 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,moveParticle,failed,%{public}s,moveDistance,%{public}.1lf", &v25, 32);
    goto LABEL_34;
  }

  if (sub_19BA206AC(&v24, a5, (a1 + 168), a6, *(a4 + 32), *(a4 + 40), *(a4 + 24)))
  {
    return 1;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v20 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v21 = a3;
    if (*(a3 + 23) < 0)
    {
      v21 = *a3;
    }

    *buf = 134349314;
    v32 = v14;
    v33 = 2082;
    v34 = v21;
    _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf, no DOT,%{public}s,location or course diverged", buf, 0x16u);
  }

  v22 = sub_19B87DD40();
  if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    if (*(a3 + 23) < 0)
    {
      a3 = *a3;
    }

    v25 = 134349314;
    v26 = v14;
    v27 = 2082;
    v28 = a3;
    v19 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf, no DOT,%{public}s,location or course diverged", &v25, 22);
LABEL_34:
    v23 = v19;
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::moveParticleAndCheckDivergence(const std::string, const std::string, CLParticleMapMatcherCommon::Particle &, const double, const CLMapCrumb &, double &)", "CoreLocation: %s\n", v19);
    if (v23 != buf)
    {
      free(v23);
    }
  }

  return 0;
}

uint64_t sub_19BA1FDF8(uint64_t a1, double *a2, double a3, double a4)
{
  v54 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 208);
  v8 = *(a1 + 216);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    if ((*(*v7 + 88))(v7, a2, a1 + 1040, a4))
    {
      if (*a2)
      {
        if (fabs(a2[4]) >= 0.00003 || fabs(a2[5]) >= 0.00003)
        {
          v24 = a2[6];
          if (v24 >= 0.0 && v24 <= 1.0)
          {
            v32 = 1;
            if (!v8)
            {
              return v32;
            }

            goto LABEL_66;
          }

          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v26 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
          {
            v27 = *(a2 + 6);
            v28 = **a2;
            *buf = 134349569;
            v45 = a3;
            v46 = 2050;
            v47 = v27;
            v48 = 2049;
            v49 = v28;
            _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,moveParticle,invalidProjection,%{public}.3lf,roadID,%{private}lld", buf, 0x20u);
          }

          v29 = sub_19B87DD40();
          if ((*(v29 + 160) & 0x80000000) == 0 || (*(v29 + 164) & 0x80000000) == 0 || (*(v29 + 168) & 0x80000000) == 0 || *(v29 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            v30 = *(a2 + 6);
            v31 = **a2;
            v34 = 134349569;
            v35 = a3;
            v36 = 2050;
            v37 = v30;
            v38 = 2049;
            v39 = v31;
            v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,moveParticle,invalidProjection,%{public}.3lf,roadID,%{private}lld", &v34, 32);
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::moveParticle(CFAbsoluteTime, CLParticleMapMatcherCommon::Particle &, double) const", "CoreLocation: %s\n", v11);
            goto LABEL_63;
          }
        }

        else
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v9 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349056;
            v45 = a3;
            _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,moveParticle,unexpected particle with snapLat == snapLon == 0", buf, 0xCu);
          }

          v10 = sub_19B87DD40();
          if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            v34 = 134349056;
            v35 = a3;
            v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,moveParticle,unexpected particle with snapLat == snapLon == 0", &v34, 12);
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::moveParticle(CFAbsoluteTime, CLParticleMapMatcherCommon::Particle &, double) const", "CoreLocation: %s\n", v11);
LABEL_63:
            if (v11 != buf)
            {
              free(v11);
            }
          }
        }
      }

      else
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v22 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          v45 = a3;
          _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,moveParticle,null road", buf, 0xCu);
        }

        v23 = sub_19B87DD40();
        if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v34 = 134349056;
          v35 = a3;
          v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,moveParticle,null road", &v34, 12);
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::moveParticle(CFAbsoluteTime, CLParticleMapMatcherCommon::Particle &, double) const", "CoreLocation: %s\n", v11);
          goto LABEL_63;
        }
      }
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v14 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v15 = **a2;
        v16 = *(a2 + 6);
        v17 = *(a2 + 20);
        *buf = 134350081;
        v45 = a3;
        v46 = 2049;
        v47 = v15;
        v48 = 2050;
        v49 = v16;
        v50 = 1026;
        v51 = v17;
        v52 = 2050;
        v53 = a4;
        _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,moveParticle,moveOnRoad returned false,roadID,%{private}lld,projection,%{public}.3lf,fwd,%{public}d,moveDistance,%{public}.2lf", buf, 0x30u);
      }

      v18 = sub_19B87DD40();
      if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v19 = **a2;
        v20 = *(a2 + 6);
        v21 = *(a2 + 20);
        v34 = 134350081;
        v35 = a3;
        v36 = 2049;
        v37 = v19;
        v38 = 2050;
        v39 = v20;
        v40 = 1026;
        v41 = v21;
        v42 = 2050;
        v43 = a4;
        v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,moveParticle,moveOnRoad returned false,roadID,%{private}lld,projection,%{public}.3lf,fwd,%{public}d,moveDistance,%{public}.2lf", &v34, 48);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::moveParticle(CFAbsoluteTime, CLParticleMapMatcherCommon::Particle &, double) const", "CoreLocation: %s\n", v11);
        goto LABEL_63;
      }
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v12 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v45 = a3;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,invalid geometry pointer, moveParticle", buf, 0xCu);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v34 = 134349056;
      v35 = a3;
      v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,invalid geometry pointer, moveParticle", &v34, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::moveParticle(CFAbsoluteTime, CLParticleMapMatcherCommon::Particle &, double) const", "CoreLocation: %s\n", v11);
      goto LABEL_63;
    }
  }

  v32 = 0;
  if (v8)
  {
LABEL_66:
    sub_19B8750F8(v8);
  }

  return v32;
}

void sub_19BA20680(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA206AC(uint64_t *a1, double *a2, float64x2_t *a3, double *a4, double a5, double a6, double a7)
{
  v37 = *MEMORY[0x1E69E9840];
  v13 = a2[38];
  v14 = fmod(v13 - a7, 360.0);
  if (v14 < 0.0)
  {
    v14 = v14 + 360.0;
  }

  if (v14 > 180.0)
  {
    v14 = v14 + -360.0;
  }

  v15 = fabs(v14);
  if (v15 > 8.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v16 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v17 = *a1;
      *buf = 134349056;
      v36 = v17;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf, no DOT, course is not aligned", buf, 0xCu);
    }

    v18 = sub_19B87DD40();
    if (*(v18 + 160) <= 1 && *(v18 + 164) <= 1 && *(v18 + 168) <= 1 && !*(v18 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v19 = *a1;
    v33 = 134349056;
    v34 = v19;
    v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf, no DOT, course is not aligned", &v33, 12);
LABEL_43:
    v29 = v20;
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::checkDivergence(const CFAbsoluteTime &, double, double, double, const CLMapCrumb &, CLDistanceCalc &, double &)", "CoreLocation: %s\n", v20);
    if (v29 != buf)
    {
      free(v29);
    }

    return 0;
  }

  if (v15 > *a4)
  {
    *a4 = v15;
    v13 = a2[38];
  }

  v31 = 0.0;
  v32 = 0.0;
  sub_19BA0C3BC(a3, &v32, &v31, a2[36], a2[37], a2[9], v13, a5, a6);
  if (fabs(v32) > 5.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v21 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v22 = *a1;
      *buf = 134349056;
      v36 = v22;
      _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf, across track too large, not suitable DOT assistance", buf, 0xCu);
    }

    v23 = sub_19B87DD40();
    if (*(v23 + 160) <= 1 && *(v23 + 164) <= 1 && *(v23 + 168) <= 1 && !*(v23 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v24 = *a1;
    v33 = 134349056;
    v34 = v24;
    v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf, across track too large, not suitable DOT assistance", &v33, 12);
    goto LABEL_43;
  }

  if (fabs(v31) > 45.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v25 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v26 = *a1;
      *buf = 134349056;
      v36 = v26;
      _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf, along track too large, not suitable DOT assistance", buf, 0xCu);
    }

    v27 = sub_19B87DD40();
    if (*(v27 + 160) <= 1 && *(v27 + 164) <= 1 && *(v27 + 168) <= 1 && !*(v27 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v28 = *a1;
    v33 = 134349056;
    v34 = v28;
    v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf, along track too large, not suitable DOT assistance", &v33, 12);
    goto LABEL_43;
  }

  return 1;
}

uint64_t sub_19BA20B88(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0uLL;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5)
  {
    sub_19B8750F8(v5);
  }

  v6 = a2[1];
  v7 = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  v8 = *(a2 + 56);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 56) = v8;
  sub_19BA2F10C(a1 + 88, (a2 + 88));
  *(a1 + 112) = *(a2 + 14);
  v9 = *(a2 + 120);
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  v10 = *(a1 + 128);
  *(a1 + 120) = v9;
  if (v10)
  {
    sub_19B8750F8(v10);
  }

  v11 = *(a2 + 136);
  v12 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 21);
  *(a1 + 152) = v12;
  *(a1 + 136) = v11;
  v13 = a2[11];
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 176) = v13;
  sub_19BA2F10C(a1 + 208, a2 + 13);
  *(a1 + 232) = *(a2 + 232);
  v14 = a2[15];
  v15 = a2[16];
  v16 = a2[18];
  *(a1 + 272) = a2[17];
  *(a1 + 288) = v16;
  *(a1 + 240) = v14;
  *(a1 + 256) = v15;
  v17 = a2[19];
  v18 = a2[20];
  v19 = a2[22];
  *(a1 + 336) = a2[21];
  *(a1 + 352) = v19;
  *(a1 + 304) = v17;
  *(a1 + 320) = v18;
  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  v20 = a2[23];
  *(a1 + 384) = *(a2 + 48);
  *(a1 + 368) = v20;
  *(a2 + 391) = 0;
  *(a2 + 368) = 0;
  memcpy((a1 + 392), a2 + 392, 0x118uLL);
  v22 = a2[43];
  v21 = a2[44];
  v23 = a2[42];
  *(a1 + 720) = *(a2 + 90);
  *(a1 + 688) = v22;
  *(a1 + 704) = v21;
  *(a1 + 672) = v23;
  v24 = *(a2 + 728);
  *(a2 + 728) = 0u;
  v25 = *(a1 + 736);
  *(a1 + 728) = v24;
  if (v25)
  {
    sub_19B8750F8(v25);
  }

  v26 = *(a2 + 744);
  *(a1 + 759) = *(a2 + 759);
  *(a1 + 744) = v26;
  return a1;
}

uint64_t sub_19BA20CFC(uint64_t *a1, void **a2, uint64_t a3, double *a4)
{
  v4 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v9 = *(a2 + 20) ? 1.0 - *(a2 + 6) : *(a2 + 6);
  sub_19B9F5AA8(*a2);
  if (v9 * *(v4 + 40) > 18.0)
  {
    v10 = *(a2 + 20) ? *(a2 + 6) : 1.0 - *(a2 + 6);
    v11 = *a2;
    sub_19B9F5AA8(*a2);
    if (v10 * *(v11 + 40) > 36.0)
    {
      return 0;
    }
  }

  v13 = a2[1];
  v36 = *a2;
  v37 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *(a2 + 2);
  v38 = *(a2 + 1);
  v39 = v14;
  v15 = a2[6];
  v41[0] = *(a2 + 7);
  *(v41 + 9) = *(a2 + 65);
  v40 = v15;
  __p = 0;
  v43 = 0;
  v16 = a2[11];
  v17 = a2[12];
  v44 = 0;
  sub_19B96775C(&__p, v16, v17, 0x8E38E38E38E38E39 * (v17 - v16));
  v19 = sub_19BA20F64(a1, &v36, a3, 1, a4, v18);
  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }

  if (v37)
  {
    sub_19B8750F8(v37);
  }

  if (v19)
  {
    return 1;
  }

  v35 = 0x4051800000000000;
  v20 = a2[1];
  v26 = *a2;
  v27 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *(a2 + 2);
  v28 = *(a2 + 1);
  v29 = v21;
  v30 = a2[6];
  v31[0] = *(a2 + 7);
  *(v31 + 9) = *(a2 + 65);
  v33 = 0;
  v34 = 0;
  v22 = a2[11];
  v23 = a2[12];
  v32 = 0;
  sub_19B96775C(&v32, v22, v23, 0x8E38E38E38E38E39 * (v23 - v22));
  v12 = sub_19BA20F64(a1, &v26, a3, 0, &v35, v24);
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v27)
  {
    sub_19B8750F8(v27);
  }

  return v12;
}

void sub_19BA20F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B966FCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA20F64(uint64_t *a1, uint64_t *a2, uint64_t a3, int a4, double *a5, __n128 a6)
{
  v76 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v7 = a5;
  if (a4)
  {
    v12 = "next";
  }

  else
  {
    v12 = "prior";
  }

  v13 = ((*(a2 + 20) ^ a4) & 1) == 0;
  *(a2 + 20) = v13;
  v14 = -1.0;
  if (*(a3 + 264) == 1)
  {
    a6.n128_f64[0] = *a5;
    *&buf[16] = 0;
    buf[21] = 0;
    LODWORD(v73) = 0;
    v74 = 0uLL;
    v15 = a2[1];
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      v13 = *(a2 + 20);
    }

    *buf = v6;
    *&buf[8] = v15;
    v16 = *a1;
    v17 = a2[6];
    buf[20] = v13;
    v75 = v17;
    v58[0] = 0;
    *v64 = v64;
    *&v64[8] = v64;
    *&v64[16] = 0;
    v61 = 0;
    *v62 = v62;
    *&v62[8] = v62;
    *&v62[16] = 0;
    v60 = 0;
    v18 = (*(v16 + 88))(a1, buf, &v60, v64, v62, v58, &v61, a6);
    if (v60 > 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v19 == 1)
    {
      v20 = *(a2 + 20);
      v21 = *(a2 + 6);
      v22 = *a2;
      sub_19B9F5AA8(*a2);
      v23 = 1.0 - v21;
      if (!v20)
      {
        v23 = v21;
      }

      v14 = v23 * *(v22 + 40);
      for (i = *&v62[8]; i != v62; i = *(i + 8))
      {
        v26 = *(i + 16);
        v25 = *(i + 24);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_19B9F5AA8(v26);
        v27 = v26[5];
        if (v25)
        {
          sub_19B8750F8(v25);
        }

        v14 = v14 + v27;
      }
    }

    sub_19B916DC0(v62);
    sub_19B916DC0(v64);
    if (*&buf[8])
    {
      sub_19B8750F8(*&buf[8]);
    }

    v7 = a5;
  }

  v28 = *(a3 + 96);
  sub_19B8759E8(v58, v12);
  v29 = *(a3 + 8);
  if (v14 < 0.0)
  {
    v30 = a2[1];
    *v64 = *a2;
    *&v64[8] = v30;
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    v31 = *(a2 + 2);
    *&v64[16] = *(a2 + 1);
    v65 = v31;
    v32 = a2[6];
    v67[0] = *(a2 + 7);
    *(v67 + 9) = *(a2 + 65);
    v66 = v32;
    __p = 0;
    v69 = 0;
    v33 = a2[11];
    v34 = a2[12];
    v70 = 0;
    sub_19B96775C(&__p, v33, v34, 0x8E38E38E38E38E39 * ((v34 - v33) >> 3));
    if (sub_19BA1FDF8(a1, v64, v29, 24.0))
    {
      v35 = fmod(*&v64[24] - *(a3 + 104), 360.0);
      if (v35 < 0.0)
      {
        v35 = v35 + 360.0;
      }

      if (v35 > 180.0)
      {
        v35 = v35 + -360.0;
      }

      if (fabs(v35) <= 8.0)
      {
        if (__p)
        {
          v69 = __p;
          operator delete(__p);
        }

        if (*&v64[8])
        {
          sub_19B8750F8(*&v64[8]);
        }

        v41 = 0;
        goto LABEL_92;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v36 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v37 = v58;
        if (v59 < 0)
        {
          v37 = v58[0];
        }

        *buf = 134349314;
        *&buf[4] = v29;
        *&buf[12] = 2082;
        *&buf[14] = v37;
        _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,no DOT, too close to a %{public}s road with large direction change", buf, 0x16u);
      }

      v38 = sub_19B87DD40();
      if (*(v38 + 160) <= 1 && *(v38 + 164) <= 1 && *(v38 + 168) <= 1 && !*(v38 + 152))
      {
        goto LABEL_87;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v39 = v58;
      if (v59 < 0)
      {
        v39 = v58[0];
      }

      *v62 = 134349314;
      *&v62[4] = v29;
      *&v62[12] = 2082;
      *&v62[14] = v39;
      v40 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,no DOT, too close to a %{public}s road with large direction change", v62, 22);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isCloseToMultiOutboundIntersection(CLParticleMapMatcherCommon::Particle, const CLMapCrumb &, const BOOL, double &) const", "CoreLocation: %s\n", v40);
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v52 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v53 = v58;
        if (v59 < 0)
        {
          v53 = v58[0];
        }

        *buf = 134349570;
        *&buf[4] = v29;
        *&buf[12] = 2082;
        *&buf[14] = v53;
        v72 = 2050;
        v73 = 0x4038000000000000;
        _os_log_impl(&dword_19B873000, v52, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,moveParticle failed for %{public}s particle,distance,%{public}.1lf", buf, 0x20u);
      }

      v54 = sub_19B87DD40();
      if (*(v54 + 160) <= 1 && *(v54 + 164) <= 1 && *(v54 + 168) <= 1 && !*(v54 + 152))
      {
        goto LABEL_87;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v55 = v58;
      if (v59 < 0)
      {
        v55 = v58[0];
      }

      *v62 = 134349570;
      *&v62[4] = v29;
      *&v62[12] = 2082;
      *&v62[14] = v55;
      *&v62[22] = 2050;
      v63 = 0x4038000000000000;
      v40 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,moveParticle failed for %{public}s particle,distance,%{public}.1lf", v62, 32);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isCloseToMultiOutboundIntersection(CLParticleMapMatcherCommon::Particle, const CLMapCrumb &, const BOOL, double &) const", "CoreLocation: %s\n", v40);
    }

    if (v40 != buf)
    {
      free(v40);
    }

LABEL_87:
    if (__p)
    {
      v69 = __p;
      operator delete(__p);
    }

    if (*&v64[8])
    {
      sub_19B8750F8(*&v64[8]);
    }

    goto LABEL_91;
  }

  v42 = fabs(v28);
  if (v28 < 0.0)
  {
    v42 = 3.0;
  }

  v43 = v14 - v42;
  v44 = 36.0;
  if (a4)
  {
    v44 = 18.0;
  }

  if (v43 >= v44)
  {
    v41 = 0;
    *v7 = v14 + -1.0;
    goto LABEL_92;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v45 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v46 = v58;
    if (v59 < 0)
    {
      v46 = v58[0];
    }

    v47 = *(a3 + 96);
    *buf = 134349826;
    *&buf[4] = v29;
    *&buf[12] = 2082;
    *&buf[14] = v46;
    v72 = 2050;
    v73 = *&v43;
    LOWORD(v74) = 2050;
    *(&v74 + 2) = v47;
    _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,no DOT,too close to %{public}s intersection,dist,%{public}.2lf,speed,%{public}.2lf", buf, 0x2Au);
  }

  v48 = sub_19B87DD40();
  if (*(v48 + 160) > 1 || *(v48 + 164) > 1 || *(v48 + 168) > 1 || *(v48 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v49 = v58;
    if (v59 < 0)
    {
      v49 = v58[0];
    }

    v50 = *(a3 + 96);
    *v64 = 134349826;
    *&v64[4] = v29;
    *&v64[12] = 2082;
    *&v64[14] = v49;
    *&v64[22] = 2050;
    *&v64[24] = v43;
    LOWORD(v65) = 2050;
    *(&v65 + 2) = v50;
    v51 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,no DOT,too close to %{public}s intersection,dist,%{public}.2lf,speed,%{public}.2lf", v64, 42);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isCloseToMultiOutboundIntersection(CLParticleMapMatcherCommon::Particle, const CLMapCrumb &, const BOOL, double &) const", "CoreLocation: %s\n", v51);
    if (v51 != buf)
    {
      free(v51);
    }
  }

LABEL_91:
  v41 = 1;
LABEL_92:
  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  return v41;
}

void sub_19BA21850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  sub_19B966FCC(&a24);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_19BA218DC(uint64_t a1, std::__shared_weak_count *a2, double *a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1)
  {
    v8 = *a3;
    if (*a3)
    {
      v9 = *(a3 + 20);
      v10 = a3[6];
      sub_19B9F5AA8(*a3);
      v11 = 1.0 - v10;
      if (!v9)
      {
        v11 = v10;
      }

      (*(*a1 + 72))(a1, a4, a3, v9, 0, v10, v11 * *(v8 + 40) + 5.0);
      goto LABEL_30;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v15 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "CLMMPED,Unexpected,null road, getRoadsAtIntersection", buf, 2u);
    }

    v16 = sub_19B87DD40();
    if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v17[0] = 0;
      v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,Unexpected,null road, getRoadsAtIntersection", v17, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::getRoadsAtIntersection(const CFAbsoluteTime, const CLMapGeometry::DistanceQueryResult &, CLMapGeometry::ConnectedQueryResultList &)", "CoreLocation: %s\n", v14);
LABEL_28:
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v12 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "CLMMPED,Unexpected,invalid geometry pointer, getRoadsAtIntersection", buf, 2u);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v17[0] = 0;
      v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,Unexpected,invalid geometry pointer, getRoadsAtIntersection", v17, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::getRoadsAtIntersection(const CFAbsoluteTime, const CLMapGeometry::DistanceQueryResult &, CLMapGeometry::ConnectedQueryResultList &)", "CoreLocation: %s\n", v14);
      goto LABEL_28;
    }
  }

LABEL_30:
  if (a2)
  {
    sub_19B8750F8(a2);
  }
}

void sub_19BA21C70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA21C90(void *a1, double *a2, unsigned __int8 a3, uint64_t *a4, double a5)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v42 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v9 = *a2;
    v8 = *(a2 + 1);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *buf = v9;
    v41 = v8;
    v10 = a2[6];
    v43 = a3;
    v48 = v10;
    v11 = 30;
    while (1)
    {
      v12 = v43;
      v13 = v48;
      v14 = *buf;
      sub_19B9F5AA8(*buf);
      v15 = 1.0 - v13;
      if (!v12)
      {
        v15 = v13;
      }

      v16 = v15 * v14[5];
      if (v16 > a5)
      {
LABEL_22:
        v19 = 1;
        goto LABEL_55;
      }

      a5 = a5 - v16;
      if (v43)
      {
        v17 = 1.0;
      }

      else
      {
        v17 = 0.0;
      }

      sub_19B941414(a4);
      if (v43)
      {
        v18 = 1.0;
      }

      else
      {
        v18 = 0.0;
      }

      v48 = v18;
      v37 = &v37;
      v38 = &v37;
      v39 = 0;
      v19 = (*(**a1 + 72))(*a1, &v37, buf, v17, a5);
      if ((v19 & 1) == 0)
      {
        goto LABEL_54;
      }

      if (v39 >= 2)
      {
        break;
      }

      if (v39 != 1)
      {
        goto LABEL_54;
      }

      v21 = v38[4];
      v20 = v38[5];
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = v41;
      *buf = v21;
      v41 = v20;
      if (v22)
      {
        sub_19B8750F8(v22);
      }

      v43 = *(v38 + 24);
      v48 = *(v38 + 6);
      sub_19B941414(&v37);
      if (!--v11)
      {
        goto LABEL_22;
      }
    }

    if (&v37 != a4)
    {
      v26 = v38;
      v27 = a4[1];
      if (v38 != &v37 && v27 != a4)
      {
        do
        {
          v28 = v26[2];
          *(v27 + 24) = *(v26 + 12);
          *(v27 + 16) = v28;
          v30 = v26[4];
          v29 = v26[5];
          if (v29)
          {
            atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
          }

          v31 = *(v27 + 40);
          *(v27 + 32) = v30;
          *(v27 + 40) = v29;
          if (v31)
          {
            sub_19B8750F8(v31);
          }

          *(v27 + 48) = v26[6];
          v26 = v26[1];
          v27 = *(v27 + 8);
        }

        while (v26 != &v37 && v27 != a4);
      }

      if (v27 == a4)
      {
        if (v26 != &v37)
        {
          sub_19BA300BC(0, (v26 + 2));
        }
      }

      else
      {
        v32 = *(*a4 + 8);
        v33 = *v27;
        *(v33 + 8) = v32;
        *v32 = v33;
        do
        {
          v34 = *(v27 + 8);
          --a4[2];
          v35 = *(v27 + 40);
          if (v35)
          {
            sub_19B8750F8(v35);
          }

          operator delete(v27);
          v27 = v34;
        }

        while (v34 != a4);
      }
    }

LABEL_54:
    sub_19B941414(&v37);
LABEL_55:
    if (v41)
    {
      sub_19B8750F8(v41);
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v23 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_ERROR, "CLMMPED,Unexpected,invalid geometry pointer, findMultiOutboundIntersection", buf, 2u);
    }

    v24 = sub_19B87DD40();
    if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      LOWORD(v37) = 0;
      v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,Unexpected,invalid geometry pointer, findMultiOutboundIntersection", &v37, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::findMultiOutboundIntersection(CLMapGeometryPtr, const CLMapGeometry::DistanceQueryResult &, BOOL, double, CLMapGeometry::ConnectedQueryResultList &)", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    return 0;
  }

  return v19;
}

void sub_19BA2211C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  sub_19B941414(&a11);
  if (a16)
  {
    sub_19B8750F8(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19BA221A4(void *a1, uint64_t a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = (a2 + 40);
  v2 = *(a2 + 40);
  a1[28] = *(a2 + 400);
  v4 = *(a2 + 384);
  if (*(a2 + 48) != v2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v5 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,initialized called on already initialized filter", &buf, 0xCu);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      LODWORD(v48) = 134349056;
      *(&v48 + 4) = v4;
      v7 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,initialized called on already initialized filter", &v48, 12);
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::initialize(MMFilterData &)", "CoreLocation: %s\n", v7);
      if (v7 != &buf)
      {
        free(v7);
      }
    }

    return 0;
  }

  sub_19BA2ECC0((a2 + 40));
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  v58 = 0;
  buf = 0uLL;
  *&v48 = &buf;
  sub_19B988734(&v48);
  v11.n128_u64[0] = *(a2 + 456);
  v12 = *(a2 + 576);
  if (v12 > 0.0)
  {
    v13 = *(a2 + 584);
    if (v13 > 0.0)
    {
      v11.n128_f64[0] = sqrt(v13 / 2.45 * (v13 / 2.45) + v12 / 2.45 * (v12 / 2.45));
    }
  }

  v43 = &v43;
  v44 = &v43;
  v45 = 0;
  v14 = a1[26];
  v15 = a1[27];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v14)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v30 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,invalid geometry pointer, initialize", &buf, 0xCu);
    }

    v31 = sub_19B87DD40();
    if ((*(v31 + 160) & 0x80000000) != 0 && (*(v31 + 164) & 0x80000000) != 0 && (*(v31 + 168) & 0x80000000) != 0 && !*(v31 + 152))
    {
      goto LABEL_124;
    }

    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    LODWORD(v48) = 134349056;
    *(&v48 + 4) = v4;
    v32 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,invalid geometry pointer, initialize", &v48, 12);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::initialize(MMFilterData &)", "CoreLocation: %s\n", v32);
    goto LABEL_122;
  }

  v11.n128_f64[0] = v11.n128_f64[0] * 4.0;
  if (v11.n128_f64[0] < 75.0)
  {
    v11.n128_f64[0] = 75.0;
  }

  if (v11.n128_f64[0] > 250.0)
  {
    v11.n128_f64[0] = 250.0;
  }

  v14[9] = 0;
  if (((*(*v14 + 64))(v14, &v43, v3 + 42, 1, v11) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v33 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,roadsWithinDistance returned false", &buf, 0xCu);
    }

    v34 = sub_19B87DD40();
    if (*(v34 + 160) <= 1 && *(v34 + 164) <= 1 && *(v34 + 168) <= 1 && !*(v34 + 152))
    {
      goto LABEL_124;
    }

    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    LODWORD(v48) = 134349056;
    *(&v48 + 4) = v4;
    v32 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,roadsWithinDistance returned false", &v48, 12);
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::initialize(MMFilterData &)", "CoreLocation: %s\n", v32);
    goto LABEL_122;
  }

  if (!v45)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v38 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,roadsWithinDistance returned 0 roads", &buf, 0xCu);
    }

    v39 = sub_19B87DD40();
    if (*(v39 + 160) <= 1 && *(v39 + 164) <= 1 && *(v39 + 168) <= 1 && !*(v39 + 152))
    {
      goto LABEL_124;
    }

    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    LODWORD(v48) = 134349056;
    *(&v48 + 4) = v4;
    v32 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,roadsWithinDistance returned 0 roads", &v48, 12);
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::initialize(MMFilterData &)", "CoreLocation: %s\n", v32);
    goto LABEL_122;
  }

  v16 = v44;
  if (v44 != &v43)
  {
    while (1)
    {
      LODWORD(v49) = 0;
      v48 = 0uLL;
      WORD2(v49) = 1;
      DWORD2(v49) = 0;
      v55 = 0;
      v56 = 0;
      __p = 0;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0;
      v18 = v16[2];
      v17 = v16[3];
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
        v19 = *(&v48 + 1);
        *&v48 = v18;
        *(&v48 + 1) = v17;
        if (v19)
        {
          sub_19B8750F8(v19);
          v18 = v48;
        }
      }

      else
      {
        v48 = v16[2];
      }

      v20 = *(v16 + 3);
      v49 = *(v16 + 2);
      v50 = v20;
      *&v51 = v16[8];
      if (v18)
      {
        break;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v24 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134349056;
        *(&buf + 4) = v4;
        _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected, NULL road at initialization", &buf, 0xCu);
      }

      v25 = sub_19B87DD40();
      if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v46 = 134349056;
        v47 = v4;
        v26 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected, NULL road at initialization", &v46, 12);
        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::initialize(MMFilterData &)", "CoreLocation: %s\n", v26);
        if (v26 != &buf)
        {
          free(v26);
        }
      }

LABEL_54:
      if (__p)
      {
        v55 = __p;
        operator delete(__p);
      }

      if (*(&v48 + 1))
      {
        sub_19B8750F8(*(&v48 + 1));
      }

      if (!v18)
      {
        goto LABEL_124;
      }

      v16 = v16[1];
      if (v16 == &v43)
      {
        goto LABEL_85;
      }
    }

    sub_19B973C04(v3, &v48);
    v21 = a1[26];
    if (!v21)
    {
LABEL_51:
      BYTE4(v49) ^= 1u;
      v28 = fmod((*(&v49 + 2) + 180.0), 360.0);
      if (v28 < 0.0)
      {
        v28 = v28 + 360.0;
      }

      v29 = v28;
      *(&v49 + 2) = v29;
      sub_19B973C04(v3, &v48);
      goto LABEL_54;
    }

    if (!(*(*v21 + 104))(v21))
    {
      goto LABEL_48;
    }

    v22 = *(v48 + 88);
    if (v22 == 3)
    {
      v23 = 1;
      goto LABEL_49;
    }

    if (v22)
    {
LABEL_48:
      v23 = 0;
    }

    else
    {
      v23 = *(v48 + 80);
    }

LABEL_49:
    v27 = a1[26];
    if (v27 && !(v23 & 1 | (((*(*v27 + 104))(v27) & 1) == 0)))
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

LABEL_85:
  if (*(a2 + 48) != *(a2 + 40))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v35 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,filter initialized", &buf, 0xCu);
    }

    v36 = sub_19B87DD40();
    if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      LODWORD(v48) = 134349056;
      *(&v48 + 4) = v4;
      v37 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,filter initialized", &v48, 12);
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::initialize(MMFilterData &)", "CoreLocation: %s\n", v37);
      if (v37 != &buf)
      {
        free(v37);
      }
    }

    v8 = 1;
    goto LABEL_125;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v40 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 134349056;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,zero particles at initialization", &buf, 0xCu);
  }

  v41 = sub_19B87DD40();
  if ((*(v41 + 160) & 0x80000000) == 0 || (*(v41 + 164) & 0x80000000) == 0 || (*(v41 + 168) & 0x80000000) == 0 || *(v41 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    LODWORD(v48) = 134349056;
    *(&v48 + 4) = v4;
    v32 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,zero particles at initialization", &v48, 12);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::initialize(MMFilterData &)", "CoreLocation: %s\n", v32);
LABEL_122:
    if (v32 != &buf)
    {
      free(v32);
    }
  }

LABEL_124:
  v8 = 0;
LABEL_125:
  if (v15)
  {
    sub_19B8750F8(v15);
  }

  sub_19B916DC0(&v43);
  return v8;
}

void sub_19BA22E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (v11)
  {
    sub_19B8750F8(v11);
  }

  sub_19B916DC0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA22ED4(uint64_t a1, double *a2, uint64_t a3, __n128 a4)
{
  v5 = a2[12];
  a4.n128_u64[0] = *(a1 + 24);
  if (a4.n128_f64[0] >= 0.0)
  {
    goto LABEL_15;
  }

  v8 = *(a1 + 208);
  if (v8)
  {
    v9 = (*(*v8 + 104))(v8);
    a4.n128_u64[0] = 0.75;
    if (v9)
    {
      a4.n128_f64[0] = 2.5;
    }
  }

  else
  {
    a4.n128_u64[0] = 0.75;
  }

  if (a2[3] - *(a1 + 232) < 900.0)
  {
    v10 = *(a1 + 208);
    if (v10)
    {
      v11 = (*(*v10 + 104))(v10, a4);
      a4.n128_u64[0] = 0.375;
      if (v11)
      {
        a4.n128_f64[0] = 1.25;
      }
    }

    else
    {
      a4.n128_u64[0] = 0.375;
    }
  }

  if (a2[23] > 0.0 && a2[12] >= 0.0 || *(a3 + 424) <= 0.0 || (v12 = *(a3 + 336), v12 < 0.0) || (v14 = a2[3], v14 >= 0.0) && (v15 = *(a3 + 264), v15 >= 0.0) && vabdd_f64(v14, v15) > 2.2)
  {
LABEL_15:
    v12 = v5;
  }

  return (v12 > a4.n128_f64[0]) | *(a3 + 504) & 1u;
}

uint64_t sub_19BA23038(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v4 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 8);
    *buf = 134349312;
    v15 = v5;
    v16 = 1026;
    v17 = v3;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,allowsNetworkUsage,%{public}d", buf, 0x12u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v7 = *(a2 + 8);
    v10 = 134349312;
    v11 = v7;
    v12 = 1026;
    v13 = v3;
    v8 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,allowsNetworkUsage,%{public}d", &v10, 18);
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::shallUseNetwork(const CLMapCrumb &)", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  return v3;
}

void sub_19BA2322C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 104);
  if (v6 > 0.0 && *(a2 + 192) <= 0.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v7 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a2 + 8);
      v9 = *(a2 + 104);
      v10 = *(a2 + 192);
      *buf = 134349568;
      v87 = v8;
      v88 = 2050;
      v89 = v9;
      v90 = 2050;
      v91 = v10;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "CLMMPED,match,%{public}.1lf,course invalidated as courseUnc was invalid,course,%{public}.2lf,courseUnc,%{public}.2lf", buf, 0x20u);
    }

    v11 = sub_19B87DD40();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v12 = *(a2 + 8);
      v13 = *(a2 + 104);
      v14 = *(a2 + 192);
      v80 = 134349568;
      v81 = v12;
      v82 = 2050;
      v83 = v13;
      v84 = 2050;
      v85 = v14;
      v15 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,match,%{public}.1lf,course invalidated as courseUnc was invalid,course,%{public}.2lf,courseUnc,%{public}.2lf", &v80, 32);
      sub_19B885924("Generic", 1, 0, 2, "virtual void CLParticleMM::CLPedestrianMapMatcherFilter::prefilterCourse(CLMapCrumb &, const MMSnapData &)", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    *(a2 + 104) = 0xBFF0000000000000;
    *(a2 + 192) = 0xBFF0000000000000;
    v6 = -1.0;
  }

  v16 = *(a3 + 264);
  if (v16 <= 0.0)
  {
    return;
  }

  v17 = *(a2 + 24);
  v18 = vabdd_f64(v17, v16);
  if (*(a2 + 184) <= 0.0 || (v19 = *(a2 + 96), v19 < 0.0) || v19 >= 0.001)
  {
    v20 = *(a2 + 228);
  }

  else
  {
    v20 = 1;
  }

  v23 = v18 < 2.2;
  v21 = *(a2 + 192);
  v22 = v23 || v17 < 0.0;
  v23 = v21 <= 0.0 || v6 < 0.0;
  if (v23 && (v20 & 1) != 0 && v22)
  {
    v24 = *(a3 + 432);
    if (v24 < 90.0 && v24 > 0.0)
    {
      v25 = *(a3 + 344);
      if (v25 >= 0.0)
      {
        *(a2 + 104) = v25;
        *(a2 + 192) = v24;
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v26 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v27 = *(a2 + 8);
          v28 = *(a2 + 104);
          v29 = *(a2 + 192);
          *buf = 134349568;
          v87 = v27;
          v88 = 2050;
          v89 = v28;
          v90 = 2050;
          v91 = v29;
          _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEBUG, "CLMMPED,match,%{public}.1lf,invalidCourseInfoUpdatedUsingPreviousEpochInfo,course,%{public}.2lf,courseUnc,%{public}.2lf", buf, 0x20u);
        }

        v30 = sub_19B87DD40();
        if (*(v30 + 160) <= 1 && *(v30 + 164) <= 1 && *(v30 + 168) <= 1 && !*(v30 + 152))
        {
          goto LABEL_83;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v31 = *(a2 + 8);
        v32 = *(a2 + 104);
        v33 = *(a2 + 192);
        v80 = 134349568;
        v81 = v31;
        v82 = 2050;
        v83 = v32;
        v84 = 2050;
        v85 = v33;
        v34 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,match,%{public}.1lf,invalidCourseInfoUpdatedUsingPreviousEpochInfo,course,%{public}.2lf,courseUnc,%{public}.2lf", &v80, 32);
        sub_19B885924("Generic", 1, 0, 2, "virtual void CLParticleMM::CLPedestrianMapMatcherFilter::prefilterCourse(CLMapCrumb &, const MMSnapData &)", "CoreLocation: %s\n", v34);
        goto LABEL_81;
      }
    }
  }

  if (v6 >= 0.0 && v21 > 179.9)
  {
    if (!v22 || (v35 = *(a3 + 432), v35 >= 90.0) || v35 <= 0.0 || *(a3 + 344) < 0.0 || *(a3 + 504) != 1 || !*(a3 + 120))
    {
      *(a2 + 104) = 0xBFF0000000000000;
      *(a2 + 192) = 0xBFF0000000000000;
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v47 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v48 = *(a2 + 8);
        v49 = *(a2 + 104);
        v50 = *(a2 + 192);
        *buf = 134349568;
        v87 = v48;
        v88 = 2050;
        v89 = v49;
        v90 = 2050;
        v91 = v50;
        _os_log_impl(&dword_19B873000, v47, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,courseInvalidated,course,%{public}.2lf,courseUnc,%{public}.2lf", buf, 0x20u);
      }

      v51 = sub_19B87DD40();
      if (*(v51 + 160) <= 1 && *(v51 + 164) <= 1 && *(v51 + 168) <= 1 && !*(v51 + 152))
      {
        goto LABEL_83;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v52 = *(a2 + 8);
      v53 = *(a2 + 104);
      v54 = *(a2 + 192);
      v80 = 134349568;
      v81 = v52;
      v82 = 2050;
      v83 = v53;
      v84 = 2050;
      v85 = v54;
      v34 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,courseInvalidated,course,%{public}.2lf,courseUnc,%{public}.2lf", &v80, 32);
      sub_19B885924("Generic", 1, 0, 2, "virtual void CLParticleMM::CLPedestrianMapMatcherFilter::prefilterCourse(CLMapCrumb &, const MMSnapData &)", "CoreLocation: %s\n", v34);
LABEL_81:
      if (v34 != buf)
      {
        free(v34);
      }

      goto LABEL_83;
    }

    v78[0] = v78;
    v78[1] = v78;
    v79 = 0;
    sub_19BA218DC(*(a1 + 208), *(a1 + 216), (a3 + 120), v78);
    v36 = *(a3 + 168);
    v37 = v36 >= 0.07 && v36 <= 0.93;
    if (v37 || v79 < 2)
    {
      *(a2 + 104) = *(a3 + 344);
      v69 = *(a3 + 432);
      if (v69 < 29.9)
      {
        v69 = 29.9;
      }

      *(a2 + 192) = v69;
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v70 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v71 = *(a2 + 8);
        v72 = *(a2 + 104);
        v73 = *(a2 + 192);
        *buf = 134349568;
        v87 = v71;
        v88 = 2050;
        v89 = v72;
        v90 = 2050;
        v91 = v73;
        _os_log_impl(&dword_19B873000, v70, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,highCourseUncDataReplacedWithPreviousEpochInfo,course,%{public}.2lf,courseUnc,%{public}.2lf", buf, 0x20u);
      }

      v74 = sub_19B87DD40();
      if (*(v74 + 160) <= 1 && *(v74 + 164) <= 1 && *(v74 + 168) <= 1 && !*(v74 + 152))
      {
        goto LABEL_127;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v75 = *(a2 + 8);
      v76 = *(a2 + 104);
      v77 = *(a2 + 192);
      v80 = 134349568;
      v81 = v75;
      v82 = 2050;
      v83 = v76;
      v84 = 2050;
      v85 = v77;
      v46 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,highCourseUncDataReplacedWithPreviousEpochInfo,course,%{public}.2lf,courseUnc,%{public}.2lf", &v80, 32);
      sub_19B885924("Generic", 1, 0, 2, "virtual void CLParticleMM::CLPedestrianMapMatcherFilter::prefilterCourse(CLMapCrumb &, const MMSnapData &)", "CoreLocation: %s\n", v46);
    }

    else
    {
      *(a2 + 104) = 0xBFF0000000000000;
      *(a2 + 192) = 0xBFF0000000000000;
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v38 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v39 = *(a2 + 8);
        v40 = *(a2 + 104);
        v41 = *(a2 + 192);
        *buf = 134349568;
        v87 = v39;
        v88 = 2050;
        v89 = v40;
        v90 = 2050;
        v91 = v41;
        _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,courseInvalidated,particle near multioutbound intersection,course,%{public}.2lf,courseUnc,%{public}.2lf", buf, 0x20u);
      }

      v42 = sub_19B87DD40();
      if (*(v42 + 160) <= 1 && *(v42 + 164) <= 1 && *(v42 + 168) <= 1 && !*(v42 + 152))
      {
        goto LABEL_127;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v43 = *(a2 + 8);
      v44 = *(a2 + 104);
      v45 = *(a2 + 192);
      v80 = 134349568;
      v81 = v43;
      v82 = 2050;
      v83 = v44;
      v84 = 2050;
      v85 = v45;
      v46 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,courseInvalidated,particle near multioutbound intersection,course,%{public}.2lf,courseUnc,%{public}.2lf", &v80, 32);
      sub_19B885924("Generic", 1, 0, 2, "virtual void CLParticleMM::CLPedestrianMapMatcherFilter::prefilterCourse(CLMapCrumb &, const MMSnapData &)", "CoreLocation: %s\n", v46);
    }

    if (v46 != buf)
    {
      free(v46);
    }

LABEL_127:
    sub_19B941414(v78);
  }

LABEL_83:
  v55 = *(a2 + 192);
  v56 = *(a2 + 104);
  if (v55 > 0.0 && v56 >= 0.0)
  {
    if (v55 < 13.0)
    {
      *(a2 + 192) = 0x402A000000000000;
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v57 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v58 = *(a2 + 8);
        v59 = *(a2 + 104);
        v60 = *(a2 + 192);
        *buf = 134349568;
        v87 = v58;
        v88 = 2050;
        v89 = v59;
        v90 = 2050;
        v91 = v60;
        _os_log_impl(&dword_19B873000, v57, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,courseUncFloorApplied,course,%{public}.2lf,courseUnc,%{public}.2lf", buf, 0x20u);
      }

      v61 = sub_19B87DD40();
      if (*(v61 + 160) > 1 || *(v61 + 164) > 1 || *(v61 + 168) > 1 || *(v61 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v62 = *(a2 + 8);
        v63 = *(a2 + 104);
        v64 = *(a2 + 192);
        v80 = 134349568;
        v81 = v62;
        v82 = 2050;
        v83 = v63;
        v84 = 2050;
        v85 = v64;
        v65 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,courseUncFloorApplied,course,%{public}.2lf,courseUnc,%{public}.2lf", &v80, 32);
        sub_19B885924("Generic", 1, 0, 2, "virtual void CLParticleMM::CLPedestrianMapMatcherFilter::prefilterCourse(CLMapCrumb &, const MMSnapData &)", "CoreLocation: %s\n", v65);
        if (v65 != buf)
        {
          free(v65);
        }
      }
    }

    v55 = *(a2 + 192);
    v56 = *(a2 + 104);
  }

  if (v55 <= 0.0)
  {
    goto LABEL_109;
  }

  if (v56 < 0.0)
  {
    goto LABEL_109;
  }

  if (*(a3 + 432) <= 0.0)
  {
    goto LABEL_109;
  }

  v66 = *(a3 + 344);
  if (v66 < 0.0 || !v22)
  {
    goto LABEL_109;
  }

  v67 = fmod(v56 - v66, 360.0);
  if (v67 < 0.0)
  {
    v67 = v67 + 360.0;
  }

  if (v67 > 180.0)
  {
    v67 = v67 + -360.0;
  }

  v68 = fabs(v67);
  if ((*(a1 + 1032) & 1) == 0)
  {
    *(a1 + 1032) = v68 > 14.0;
    return;
  }

  if (v68 < 8.0)
  {
LABEL_109:
    *(a1 + 1032) = 0;
  }
}

void sub_19BA23EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_19B941414(va);
  _Unwind_Resume(a1);
}

double sub_19BA23F20(uint64_t a1, uint64_t a2, double *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 24);
  if (v4 >= 0.0 && (v5 = a3[33], v5 >= 0.0))
  {
    v12 = (v4 - v5) * (v4 - v5);
    v13 = *(a2 + 184);
    v14 = 0.0;
    if (v13 <= 0.0 || (v15 = *(a2 + 96), v15 < 0.0) || (v16 = a3[53], v16 <= 0.0))
    {
      v18 = 0.0;
    }

    else
    {
      v17 = a3[42];
      v18 = 0.0;
      if (v17 >= 0.0)
      {
        v14 = v12 * ((v16 * v16 + v13 * v13) * 0.25);
        v18 = v12 * ((v15 + v17) * 0.5 * ((v15 + v17) * 0.5 * 0.25));
      }
    }

    return sqrt(v12 * 3.0 + v14 + v18);
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v6 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a2 + 8);
      *buf = 134349312;
      v24 = v7;
      v25 = 2050;
      v26 = 0xBFF0000000000000;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unexpected, negtive dT,%{public}.1lf", buf, 0x16u);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v9 = *(a2 + 8);
      v19 = 134349312;
      v20 = v9;
      v21 = 2050;
      v22 = 0xBFF0000000000000;
      v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,unexpected, negtive dT,%{public}.1lf", &v19, 22);
      sub_19B885924("Generic", 1, 0, 0, "virtual double CLParticleMM::CLPedestrianMapMatcherFilter::getProcessNoise(const CLMapCrumb &, const MMSnapData &)", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    return 0.0;
  }
}

uint64_t sub_19BA241C4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  if (*(a3 + 746) != 1)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(a3 + 128);
    v25 = *(a3 + 120);
    v26 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(a3 + 152);
    v27 = *(a3 + 136);
    v28 = v12;
    v29 = *(a3 + 168);
    v30[0] = *(a3 + 176);
    *(v30 + 9) = *(a3 + 185);
    v32 = 0;
    v33 = 0;
    v13 = *(a3 + 208);
    v14 = *(a3 + 216);
    __p = 0;
    sub_19B96775C(&__p, v13, v14, 0x8E38E38E38E38E39 * ((v14 - v13) >> 3));
    if (v25)
    {
      BYTE4(v27) ^= 1u;
      v15 = fmod((*(&v27 + 2) + 180.0), 360.0);
      if (v15 < 0.0)
      {
        v15 = v15 + 360.0;
      }

      v16 = v15;
      *(&v27 + 2) = v16;
      if (byte_1EAFE4E38)
      {
        byte_1EAFE4E38 = 0;
        v17 = *&dword_1EAFE4E3C;
      }

      else
      {
        do
        {
          v18 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
          v19 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
          v20 = (v19 * v19) + (v18 * v18);
        }

        while (v20 >= 1.0);
        v17 = 0.0;
        if (v20 != 0.0)
        {
          v21 = sqrtf((logf((v19 * v19) + (v18 * v18)) * -2.0) / v20);
          *&dword_1EAFE4E3C = v19 * v21;
          byte_1EAFE4E38 = 1;
          v17 = v18 * v21;
        }
      }

      if (sub_19BA1FDF8(a1, &v25, *(a2 + 384), v17 * a4 + a5))
      {
        sub_19B973C04((a2 + 40), &v25);
        v22 = 0;
        v9 = (v9 + 1);
      }

      else
      {
        v22 = 1;
      }
    }

    else
    {
      v22 = 4;
    }

    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }

    if (v26)
    {
      sub_19B8750F8(v26);
    }

    if ((v22 | 4) != 4)
    {
      break;
    }

    if (++v10 == 3)
    {
      return v9;
    }
  }

  return 0xFFFFFFFFLL;
}

void sub_19BA24428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B966FCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA24454(uint64_t a1, double *a2, _DWORD *a3, uint64_t *a4, __n128 **a5, void *a6, void *a7, double a8)
{
  v46 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 208);
  v14 = *(a1 + 216);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v15)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v31 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      buf.n128_u16[0] = 0;
      _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_ERROR, "CLMMPED,Unexpected,invalid geometry pointer, multiOutboundHelper", &buf, 2u);
    }

    v32 = sub_19B87DD40();
    if ((*(v32 + 160) & 0x80000000) == 0 || (*(v32 + 164) & 0x80000000) == 0 || (*(v32 + 168) & 0x80000000) == 0 || *(v32 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      LOWORD(v39) = 0;
      v33 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,Unexpected,invalid geometry pointer, multiOutboundHelper", &v39, 2);
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::multiOutboundHelper(CLMapGeometry::DistanceQueryResult &, int &, double, CLMapGeometry::IntersectionQueryResultList &, CLMapGeometry::IntersectionQueryResultList &, double &, double &) const", "CoreLocation: %s\n", v33);
      if (v33 != &buf)
      {
        free(v33);
      }
    }

    v21 = 0;
LABEL_38:
    if (!v14)
    {
      return v21;
    }

LABEL_39:
    sub_19B8750F8(v14);
    return v21;
  }

  *a6 = 0;
  *a7 = 0;
  *a3 = 0;
  v16 = *(a2 + 20);
  v17 = a2[6];
  v18 = *a2;
  sub_19B9F5AA8(*a2);
  v19 = 1.0 - v17;
  if (!v16)
  {
    v19 = v17;
  }

  v20 = v19 * *(*&v18 + 40);
  v21 = 1;
  if (v20 > a8)
  {
    goto LABEL_38;
  }

  v22 = a8 - v20;
  if (*(a2 + 20))
  {
    v23 = 1.0;
  }

  else
  {
    v23 = 0.0;
  }

  sub_19B916DC0(a4);
  *a3 = 0;
  v25 = *(*a2 + 136);
  v24 = *(*a2 + 144);
  if (*(a2 + 20) == 1)
  {
    if (v24 == v25)
    {
      *a6 = 0;
      v26 = 0;
    }

    else
    {
      *a6 = *(v24 - 2);
      v26 = *(v24 - 1);
    }

    v27 = 1.0;
  }

  else if (v24 == v25)
  {
    *a6 = 0;
    v27 = 0;
    v26 = 0;
  }

  else
  {
    *a6 = *v25;
    v26 = v25[1];
    v27 = 0;
  }

  *a7 = v26;
  *(a2 + 6) = v27;
  v39 = &v39;
  v40 = &v39;
  v41 = 0;
  v21 = (*(*v15 + 72))(v15, &v39, a2, v23, v22);
  if (v21)
  {
    if (v41 >= 2)
    {
      buf = 0uLL;
      v45 = 0;
      if (v40 != &v39)
      {
        v43 = *(v40 + 24);
        v44 = v40[6];
        v36 = v40[4];
        v35 = v40[5];
        if (v35)
        {
          atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
        }

        v37 = buf.n128_u64[1];
        buf.n128_u64[0] = v36;
        buf.n128_u64[1] = v35;
        if (v37)
        {
          sub_19B8750F8(v37);
        }

        v45 = 1;
        sub_19B9131FC(a4, &buf);
      }
    }

    else if (v41 == 1)
    {
      buf = 0uLL;
      v45 = 0;
      v43 = *(v40 + 24);
      v44 = v40[6];
      v28 = v40[4];
      v29 = v40[5];
      if (v29)
      {
        atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
        v30 = buf.n128_u64[1];
        buf.n128_u64[0] = v28;
        buf.n128_u64[1] = v29;
        if (v30)
        {
          sub_19B8750F8(v30);
        }
      }

      else
      {
        buf = v40[4];
      }

      v45 = 1;
      sub_19B9131FC(a5, &buf);
    }
  }

  sub_19B941414(&v39);
  if (v14)
  {
    goto LABEL_39;
  }

  return v21;
}

void sub_19BA248DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (v18)
  {
    sub_19B8750F8(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA2492C(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x1E69E9840];
  if (*(a1 + 9) != 1)
  {
    return 0;
  }

  v3 = *(a1 + 1880);
  v4 = *(a1 + 1888);
  if (v3 == v4)
  {
    return 0;
  }

  v6 = *(a1 + 1872);
  v7 = vabdd_f64(*(a2 + 400), v6);
  if (v6 < 0.0 || v7 > 2.5)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v31 = *(a2 + 384);
  v30 = v4;
  while (2)
  {
    v33 = result;
    v10 = *(v3 + 8);
    v35 = *v3;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(v3 + 16);
    v36 = *(v3 + 20);
    v37 = *(v3 + 21);
    v38 = *(v3 + 23);
    v34 = *(v3 + 24);
    v12 = *(v3 + 28);
    v13 = *(v3 + 32);
    v14 = *(v3 + 40);
    v15 = 1;
    v32 = v3;
    v16 = *(v3 + 48);
    do
    {
      v17 = v15;
      memset(buf, 0, 20);
      *&buf[20] = 1;
      LODWORD(v52) = 0;
      v57 = 0;
      v58 = 0;
      v56 = 0;
      memset(v53, 0, sizeof(v53));
      v54 = 0u;
      v55 = 0;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = *&buf[8];
        *buf = v35;
        *&buf[8] = v10;
        if (v18)
        {
          sub_19B8750F8(v18);
        }
      }

      else
      {
        *buf = v35;
        *&buf[8] = 0;
      }

      *&buf[16] = v11;
      buf[20] = v36;
      *&buf[21] = v37;
      buf[23] = v38;
      v52 = __PAIR64__(v12, LODWORD(v34));
      v53[0] = v13;
      v53[1] = v14;
      v53[2] = v16;
      if (byte_1EAFE4E38)
      {
        byte_1EAFE4E38 = 0;
        v19 = *&dword_1EAFE4E3C;
      }

      else
      {
        do
        {
          v20 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
          v21 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
          v22 = (v21 * v21) + (v20 * v20);
        }

        while (v22 >= 1.0);
        v19 = 0.0;
        if (v22 != 0.0)
        {
          v23 = sqrtf((logf((v21 * v21) + (v20 * v20)) * -2.0) / v22);
          *&dword_1EAFE4E3C = v21 * v23;
          byte_1EAFE4E38 = 1;
          v19 = v20 * v23;
        }
      }

      v24 = sub_19BA1FDF8(a1, buf, *(a2 + 384), v19);
      if (v24)
      {
        sub_19B973C04((a2 + 40), buf);
        ++v33;
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (*&buf[8])
      {
        sub_19B8750F8(*&buf[8]);
      }

      if ((v24 & 1) == 0)
      {
        if (v10)
        {
          sub_19B8750F8(v10);
        }

        return 0xFFFFFFFFLL;
      }

      v15 = 0;
    }

    while ((v17 & 1) != 0);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v25 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v26 = *v35;
      *buf = 134350337;
      *&buf[4] = v31;
      *&buf[12] = 2053;
      *&buf[14] = v13;
      *&buf[22] = 2053;
      v52 = v14;
      LOWORD(v53[0]) = 2050;
      *(v53 + 2) = v34;
      WORD1(v53[1]) = 2049;
      *(&v53[1] + 4) = v26;
      WORD2(v53[2]) = 1026;
      *(&v53[2] + 6) = v36;
      _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHint,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,course,%{public}.3lf,rseg,%{private}lld,fwd,%{public}d", buf, 0x3Au);
    }

    v27 = sub_19B87DD40();
    if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v28 = *v35;
      v39 = 134350337;
      v40 = v31;
      v41 = 2053;
      v42 = v13;
      v43 = 2053;
      v44 = v14;
      v45 = 2050;
      v46 = v34;
      v47 = 2049;
      v48 = v28;
      v49 = 1026;
      v50 = v36;
      v29 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,routeHint,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,course,%{public}.3lf,rseg,%{private}lld,fwd,%{public}d", &v39, 58);
      sub_19B885924("Generic", 1, 0, 2, "int CLParticleMM::CLPedestrianMapMatcherFilter::addRouteHintParticles(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v29);
      if (v29 != buf)
      {
        free(v29);
      }
    }

    if (v10)
    {
      sub_19B8750F8(v10);
    }

    v3 = v32 + 56;
    result = v33;
    if (v32 + 56 != v30)
    {
      continue;
    }

    break;
  }

  return result;
}

void sub_19BA24E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (v29)
  {
    sub_19B8750F8(v29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA24E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v132 = *MEMORY[0x1E69E9840];
  if (*(a4 + 264) <= 0.0)
  {
    return 1;
  }

  v7 = *(a1 + 208);
  v8 = *(a1 + 216);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v7)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v45 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_ERROR, "CLMMPED,Unexpected,invalid geometry pointer, predict", buf, 2u);
    }

    v46 = sub_19B87DD40();
    if ((*(v46 + 160) & 0x80000000) != 0 && (*(v46 + 164) & 0x80000000) != 0 && (*(v46 + 168) & 0x80000000) != 0 && !*(v46 + 152))
    {
      goto LABEL_88;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v123 = 0;
    v47 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,Unexpected,invalid geometry pointer, predict", v123, 2);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::predict(CLMapCrumb &, MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v47);
    if (v47 == buf)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  v9 = *(a2 + 8);
  v10 = *(a2 + 24);
  if (v10 < 0.0 || (v11 = *(a4 + 264), v11 < 0.0))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v12 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a2 + 8);
      *buf = 134349312;
      *&buf[4] = v13;
      *&buf[12] = 2050;
      *&buf[14] = 0xBFF0000000000000;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unexpected, negtive dT,%{public}.1lf", buf, 0x16u);
    }

    v14 = sub_19B87DD40();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || (v17 = 0.0, *(v14 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v15 = *(a2 + 8);
      *v123 = 134349312;
      *&v123[4] = v15;
      *&v123[12] = 2050;
      *&v123[14] = 0xBFF0000000000000;
      v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,unexpected, negtive dT,%{public}.1lf", v123, 22);
      v14 = sub_19B885924("Generic", 1, 0, 0, "double CLParticleMM::CLParticleMapMatcherFilterBase::getDistanceTravelled(const CLMapCrumb &, const MMSnapData &)", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }

      v17 = 0.0;
    }

LABEL_19:
    *(a3 + 856) = v17;
    if (*(a3 + 48) != *(a3 + 40))
    {
      v108 = *(a3 + 48) - *(a3 + 40);
      v112 = v17;
      v113 = sub_19BA23F20(v14, a2, a4);
      v19 = *(a3 + 40);
      v18 = *(a3 + 48);
      v110 = a3;
      if (v19 != v18)
      {
        v20 = 0;
        do
        {
          v21 = v9;
          if (byte_1EAFE4E38)
          {
            byte_1EAFE4E38 = 0;
            v22 = *&dword_1EAFE4E3C;
          }

          else
          {
            do
            {
              v23 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
              v24 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
              v25 = (v24 * v24) + (v23 * v23);
            }

            while (v25 >= 1.0);
            v22 = 0.0;
            if (v25 != 0.0)
            {
              v26 = sqrtf((logf((v24 * v24) + (v23 * v23)) * -2.0) / v25);
              *&dword_1EAFE4E3C = v24 * v26;
              byte_1EAFE4E38 = 1;
              v22 = v23 * v26;
            }
          }

          v27 = v22;
          v28 = v113 * v27;
          v29 = fabs(v27);
          if ((-252645135 * v20) <= 0xF0F0F0F)
          {
            v28 = v29 * 34.0;
          }

          v30 = v29 * 8.0;
          v31 = (-1171354717 * v20) <= 0x1745D174 && v113 < 8.0;
          if (!v31)
          {
            v30 = v28;
          }

          v9 = v21;
          if ((sub_19BA1FDF8(a1, v19, v21, v112 + v30) & 1) == 0)
          {
            goto LABEL_236;
          }

          ++v20;
          v19 += 14;
        }

        while (v19 != v18);
      }

      if (*(a1 + 1064) == 1)
      {
        v32 = a4;
        v33 = v112;
        if (*(a4 + 504) == 1)
        {
          sub_19BA0C01C((a1 + 168), *(a4 + 392), *(a4 + 400), *(a1 + 1120), *(a1 + 1128), *(a4 + 312));
          if (*(a1 + 1200) >= 1)
          {
            v109 = 0;
            v35 = 0;
            v36 = v112 + v34;
            if (v36 <= 0.0)
            {
              v37 = 0.1;
            }

            else
            {
              v37 = v36 + 0.0;
            }

LABEL_42:
            v38 = 4;
            while (1)
            {
              v39 = *(a1 + 1096);
              *buf = *(a1 + 1088);
              *&buf[8] = v39;
              if (v39)
              {
                atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
              }

              v40 = *(a1 + 1120);
              *&buf[16] = *(a1 + 1104);
              *&buf[32] = v40;
              v128[0] = *(a1 + 1136);
              *&v128[1] = *(a1 + 1144);
              *(&v128[2] + 1) = *(a1 + 1153);
              v130 = 0;
              v131 = 0;
              v41 = *(a1 + 1176);
              v42 = *(a1 + 1184);
              __p = 0;
              sub_19B96775C(&__p, v41, v42, 0x8E38E38E38E38E39 * ((v42 - v41) >> 3));
              if (*buf)
              {
                if (sub_19BA1FDF8(a1, buf, v9, v37))
                {
                  if (**(a1 + 1088) == **buf && *(a1 + 1108) != buf[20])
                  {
                    v43 = 0;
                  }

                  else
                  {
                    sub_19B973C04((v110 + 40), buf);
                    v43 = 0;
                    ++v109;
                  }
                }

                else
                {
                  v43 = 1;
                }
              }

              else
              {
                v43 = 7;
              }

              if (__p)
              {
                v130 = __p;
                operator delete(__p);
              }

              if (*&buf[8])
              {
                sub_19B8750F8(*&buf[8]);
              }

              if (v43 != 7 && v43)
              {
                goto LABEL_88;
              }

              if (!--v38)
              {
                if (++v35 < *(a1 + 1200))
                {
                  goto LABEL_42;
                }

                v32 = a4;
                if (v109 != -1)
                {
                  goto LABEL_101;
                }

                goto LABEL_88;
              }
            }
          }
        }

        v109 = 0;
      }

      else
      {
        v109 = 0;
        v32 = a4;
        v33 = v112;
      }

LABEL_101:
      if (*(v32 + 504) != 1)
      {
        v61 = 0;
        v62 = 0;
        v59 = v110;
        goto LABEL_172;
      }

      memset(v123, 0, 20);
      v123[21] = 0;
      *&v123[24] = 0;
      *&v123[32] = 0;
      *&v123[40] = 0;
      v57 = *(v32 + 120);
      v58 = *(v32 + 128);
      v59 = v110;
      if (v58)
      {
        atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
        v60 = *&v123[8];
        *v123 = v57;
        *&v123[8] = v58;
        if (v60)
        {
          sub_19B8750F8(v60);
        }
      }

      else
      {
        *v123 = *(v32 + 120);
      }

      v123[20] = *(v32 + 140);
      *v124 = *(v32 + 168);
      if (!v57)
      {
        v61 = -1;
        goto LABEL_151;
      }

      v120 = 0;
      v117 = &v117;
      v118 = &v117;
      v119 = 0;
      v114 = &v114;
      v115 = &v114;
      v116 = 0;
      sub_19BA24454(a1, v123, &v120, &v114, &v117, &v122, &v121, 80.0);
      if ((a1 + 1808) != &v114)
      {
        sub_19B91737C((a1 + 1808), v115, &v114);
      }

      if ((a1 + 1784) != &v117)
      {
        sub_19B91737C((a1 + 1784), v118, &v117);
      }

      v63 = v118;
      if (v118 == &v117)
      {
        v61 = 0;
LABEL_133:
        v69 = v115;
        if (v115 == &v114)
        {
          goto LABEL_150;
        }

LABEL_134:
        v70 = 6;
        while (1)
        {
          memset(buf, 0, 20);
          *&buf[20] = 1;
          *&buf[24] = 0;
          v130 = 0;
          v131 = 0;
          __p = 0;
          *&buf[32] = 0u;
          memset(v128, 0, 33);
          v71 = *(v69 + 16);
          v72 = *(v69 + 24);
          if (v72)
          {
            atomic_fetch_add_explicit((v72 + 8), 1uLL, memory_order_relaxed);
            v73 = *&buf[8];
            *buf = v71;
            *&buf[8] = v72;
            if (v73)
            {
              sub_19B8750F8(v73);
            }
          }

          else
          {
            *buf = *(v69 + 16);
            *&buf[8] = 0;
          }

          v128[0] = *(v69 + 40);
          buf[20] = *(v69 + 32);
          v74 = sub_19BA1FDF8(a1, buf, v9, ((v61 + 1) % 6) * 3.5);
          if (v74)
          {
            sub_19B973C04((v110 + 40), buf);
            ++v61;
          }

          if (__p)
          {
            v130 = __p;
            operator delete(__p);
          }

          if (*&buf[8])
          {
            sub_19B8750F8(*&buf[8]);
          }

          if ((v74 & 1) == 0)
          {
            break;
          }

          if (!--v70)
          {
            v69 = *(v69 + 8);
            if (v69 != &v114)
            {
              goto LABEL_134;
            }

            goto LABEL_150;
          }
        }
      }

      else
      {
        v61 = 0;
LABEL_114:
        v64 = 6;
        while (1)
        {
          memset(buf, 0, 20);
          *&buf[20] = 1;
          *&buf[24] = 0;
          v130 = 0;
          v131 = 0;
          __p = 0;
          *&buf[32] = 0u;
          memset(v128, 0, 33);
          v65 = *(v63 + 16);
          v66 = *(v63 + 24);
          if (v66)
          {
            atomic_fetch_add_explicit((v66 + 8), 1uLL, memory_order_relaxed);
            v67 = *&buf[8];
            *buf = v65;
            *&buf[8] = v66;
            if (v67)
            {
              sub_19B8750F8(v67);
            }
          }

          else
          {
            *buf = *(v63 + 16);
            *&buf[8] = 0;
          }

          v128[0] = *(v63 + 40);
          buf[20] = *(v63 + 32);
          v68 = sub_19BA1FDF8(a1, buf, v9, ((v61 + 1) % 6) * 3.5);
          if (v68)
          {
            sub_19B973C04((v110 + 40), buf);
            ++v61;
          }

          if (__p)
          {
            v130 = __p;
            operator delete(__p);
          }

          if (*&buf[8])
          {
            sub_19B8750F8(*&buf[8]);
          }

          if ((v68 & 1) == 0)
          {
            break;
          }

          if (!--v64)
          {
            v63 = *(v63 + 8);
            if (v63 != &v117)
            {
              goto LABEL_114;
            }

            goto LABEL_133;
          }
        }
      }

      v61 = -1;
LABEL_150:
      sub_19B916DC0(&v114);
      sub_19B916DC0(&v117);
      v58 = *&v123[8];
      v59 = v110;
      v32 = a4;
LABEL_151:
      if (v58)
      {
        sub_19B8750F8(v58);
      }

      if (v61 != -1)
      {
        if (*(v32 + 504))
        {
          if (*(v32 + 120))
          {
            v75 = 0;
            while (1)
            {
              v76 = *(a4 + 128);
              *buf = *(a4 + 120);
              *&buf[8] = v76;
              if (v76)
              {
                atomic_fetch_add_explicit((v76 + 8), 1uLL, memory_order_relaxed);
              }

              v77 = v9;
              v78 = *(a4 + 152);
              *&buf[16] = *(a4 + 136);
              *&buf[32] = v78;
              v128[0] = *(a4 + 168);
              *&v128[1] = *(a4 + 176);
              *(&v128[2] + 1) = *(a4 + 185);
              v130 = 0;
              v131 = 0;
              v79 = *(a4 + 208);
              v80 = *(a4 + 216);
              __p = 0;
              sub_19B96775C(&__p, v79, v80, 0x8E38E38E38E38E39 * ((v80 - v79) >> 3));
              if (byte_1EAFE4E38)
              {
                byte_1EAFE4E38 = 0;
                v81 = *&dword_1EAFE4E3C;
              }

              else
              {
                do
                {
                  v82 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
                  v83 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
                  v84 = (v83 * v83) + (v82 * v82);
                }

                while (v84 >= 1.0);
                v81 = 0.0;
                if (v84 != 0.0)
                {
                  v85 = sqrtf((logf((v83 * v83) + (v82 * v82)) * -2.0) / v84);
                  *&dword_1EAFE4E3C = v83 * v85;
                  byte_1EAFE4E38 = 1;
                  v81 = v82 * v85;
                }
              }

              v9 = v77;
              if ((sub_19BA1FDF8(a1, buf, v77, v113 * v81 + 0.0) & 1) == 0)
              {
                break;
              }

              sub_19B973C04((v110 + 40), buf);
              if (__p)
              {
                v130 = __p;
                operator delete(__p);
              }

              if (*&buf[8])
              {
                sub_19B8750F8(*&buf[8]);
              }

              if (++v75 == 12)
              {
                v62 = 12;
                v59 = v110;
                v32 = a4;
                v33 = v112;
                goto LABEL_172;
              }
            }

            if (__p)
            {
              v130 = __p;
              operator delete(__p);
            }

            if (*&buf[8])
            {
              sub_19B8750F8(*&buf[8]);
            }
          }

          goto LABEL_88;
        }

        v62 = 0;
LABEL_172:
        v86 = sub_19BA241C4(a1, v59, v32, v113, v33);
        if (v86 != -1)
        {
          v87 = 0;
          if (*(v32 + 745) == 1 && *v32)
          {
            v88 = 4;
            do
            {
              sub_19B973C04((v110 + 40), v32);
              --v88;
            }

            while (v88);
            v87 = 4;
          }

          v89 = sub_19BA2492C(a1, v110);
          if (v89 != -1)
          {
            v90 = *(v110 + 40);
            v91 = *(v110 + 48);
            while (v90 != v91)
            {
              v90[7] = 0;
              v90[8] = 0;
              v90[9] = 0;
              v90[12] = v90[11];
              v90 += 14;
            }

            v92 = v8;
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            v93 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              v94 = -1227133513 * ((*(v110 + 48) - *(v110 + 40)) >> 4);
              *buf = 134351104;
              *&buf[4] = v9;
              *&buf[12] = 1026;
              *&buf[14] = v94;
              *&buf[18] = 2050;
              *&buf[20] = 0x6DB6DB6DB6DB6DB7 * (v108 >> 4);
              *&buf[28] = 1026;
              *&buf[30] = v109;
              *&buf[34] = 1026;
              *&buf[36] = v61;
              *&buf[40] = 1026;
              *&buf[42] = v62;
              *&buf[46] = 1026;
              LODWORD(v128[0]) = v86;
              WORD2(v128[0]) = 1026;
              *(v128 + 6) = v87;
              WORD1(v128[1]) = 1026;
              HIDWORD(v128[1]) = v89;
              _os_log_impl(&dword_19B873000, v93, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,prediction,%{public}d,NrParticles,%{public}lu,NrPriorIntersectionParticles,%{public}d,NrNewFwdIntersectionParticles,%{public}d,NrNewBiasedToPrior,%{public}d,NrNewBiasedToPriorOppositeDirection,%{public}d,NrNewAmbiguous,%{public}d,numNewRouteParticles,%{public}d", buf, 0x40u);
            }

            v8 = v92;
            v95 = sub_19B87DD40();
            if (*(v95 + 160) > 1 || *(v95 + 164) > 1 || *(v95 + 168) > 1 || *(v95 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v96 = -1227133513 * ((*(v110 + 48) - *(v110 + 40)) >> 4);
              *v123 = 134351104;
              *&v123[4] = v9;
              *&v123[12] = 1026;
              *&v123[14] = v96;
              *&v123[18] = 2050;
              *&v123[20] = 0x6DB6DB6DB6DB6DB7 * (v108 >> 4);
              *&v123[28] = 1026;
              *&v123[30] = v109;
              *&v123[34] = 1026;
              *&v123[36] = v61;
              *&v123[40] = 1026;
              *&v123[42] = v62;
              *&v123[46] = 1026;
              *v124 = v86;
              *&v124[4] = 1026;
              *&v124[6] = v87;
              v125 = 1026;
              v126 = v89;
              v97 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,prediction,%{public}d,NrParticles,%{public}lu,NrPriorIntersectionParticles,%{public}d,NrNewFwdIntersectionParticles,%{public}d,NrNewBiasedToPrior,%{public}d,NrNewBiasedToPriorOppositeDirection,%{public}d,NrNewAmbiguous,%{public}d,numNewRouteParticles,%{public}d", v123, 64);
              sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::predict(CLMapCrumb &, MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v97);
              if (v97 != buf)
              {
                free(v97);
              }
            }

            v44 = 1;
            goto LABEL_89;
          }
        }
      }

LABEL_88:
      v44 = 0;
      goto LABEL_89;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v48 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v9;
      _os_log_impl(&dword_19B873000, v48, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,predict called with 0 particles", buf, 0xCu);
    }

    v49 = sub_19B87DD40();
    if ((*(v49 + 160) & 0x80000000) == 0 || (*(v49 + 164) & 0x80000000) == 0 || (*(v49 + 168) & 0x80000000) == 0 || *(v49 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *v123 = 134349056;
      *&v123[4] = v9;
      v47 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,predict called with 0 particles", v123, 12);
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::predict(CLMapCrumb &, MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v47);
      goto LABEL_86;
    }

    goto LABEL_236;
  }

  v51 = vabdd_f64(v10, v11);
  v52 = -1.0;
  v53 = -1.0;
  if (*(a2 + 184) > 0.0)
  {
    v54 = *(a2 + 96);
    if (v54 >= 0.0)
    {
      if (v51 >= 2.2 || *(a4 + 424) <= 0.0)
      {
        v53 = *(a2 + 96);
      }

      else
      {
        v55 = *(a4 + 336);
        v31 = v55 < 0.0;
        v56 = (v54 + v55) * 0.5;
        if (v31)
        {
          v53 = *(a2 + 96);
        }

        else
        {
          v53 = v56;
        }
      }
    }
  }

  if (v53 < 0.0)
  {
    v98 = 0.0;
  }

  else
  {
    v98 = v51 * v53;
  }

  if (v51 >= 2.2)
  {
    goto LABEL_222;
  }

  v17 = v98;
  if (*(a4 + 320) <= 0.0)
  {
    goto LABEL_223;
  }

  sub_19BA0C01C((a1 + 168), *(a2 + 56), *(a2 + 64), *(a4 + 296), *(a4 + 304), *(a2 + 72));
  v52 = v99;
  if (v99 <= 300.0)
  {
    if (v53 > 0.0 && v99 >= 0.0 && (*(a2 + 228) & 1) == 0)
    {
      v17 = (v98 + v99) * 0.5;
      goto LABEL_223;
    }

    if (v99 >= 0.0)
    {
      if (*(a2 + 228))
      {
        v17 = v98;
      }

      else
      {
        v17 = v99;
      }

LABEL_223:
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v104 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v105 = *(a2 + 8);
        *buf = 134349824;
        *&buf[4] = v105;
        *&buf[12] = 2050;
        *&buf[14] = v17;
        *&buf[22] = 2050;
        *&buf[24] = v98;
        *&buf[32] = 2050;
        *&buf[34] = v52;
        _os_log_impl(&dword_19B873000, v104, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,predictionAndUpdate, distance,%{public}.1lf,distBasedOnSpeed,%{public}.1lf,distBasedOnPos,%{public}.1lf", buf, 0x2Au);
      }

      v14 = sub_19B87DD40();
      if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v106 = *(a2 + 8);
        *v123 = 134349824;
        *&v123[4] = v106;
        *&v123[12] = 2050;
        *&v123[14] = v17;
        *&v123[22] = 2050;
        *&v123[24] = v98;
        *&v123[32] = 2050;
        *&v123[34] = v52;
        v107 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,predictionAndUpdate, distance,%{public}.1lf,distBasedOnSpeed,%{public}.1lf,distBasedOnPos,%{public}.1lf", v123, 42);
        v14 = sub_19B885924("Generic", 1, 0, 2, "double CLParticleMM::CLParticleMapMatcherFilterBase::getDistanceTravelled(const CLMapCrumb &, const MMSnapData &)", "CoreLocation: %s\n", v107);
        if (v107 != buf)
        {
          free(v107);
        }
      }

      if (v17 < 0.0)
      {
        goto LABEL_236;
      }

      goto LABEL_19;
    }

LABEL_222:
    v17 = v98;
    goto LABEL_223;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v100 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
  {
    v101 = *(a2 + 8);
    *buf = 134349568;
    *&buf[4] = v101;
    *&buf[12] = 2050;
    *&buf[14] = v52;
    *&buf[22] = 2050;
    *&buf[24] = v51;
    _os_log_impl(&dword_19B873000, v100, OS_LOG_TYPE_INFO, "#Warning,CLMMPED,%{public}.1lf,Position jump,%{public}.1lf,dT,%{public}.1lf", buf, 0x20u);
  }

  v102 = sub_19B87DD40();
  if (*(v102 + 160) > 1 || *(v102 + 164) > 1 || *(v102 + 168) > 1 || *(v102 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v103 = *(a2 + 8);
    *v123 = 134349568;
    *&v123[4] = v103;
    *&v123[12] = 2050;
    *&v123[14] = v52;
    *&v123[22] = 2050;
    *&v123[24] = v51;
    v47 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "#Warning,CLMMPED,%{public}.1lf,Position jump,%{public}.1lf,dT,%{public}.1lf", v123, 32);
    sub_19B885924("Generic", 1, 0, 2, "double CLParticleMM::CLParticleMapMatcherFilterBase::getDistanceTravelled(const CLMapCrumb &, const MMSnapData &)", "CoreLocation: %s\n", v47);
LABEL_86:
    if (v47 == buf)
    {
      goto LABEL_88;
    }

LABEL_87:
    free(v47);
    goto LABEL_88;
  }

LABEL_236:
  v44 = 0;
LABEL_89:
  if (v8)
  {
    sub_19B8750F8(v8);
  }

  return v44;
}

void sub_19BA26300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36)
{
  if (a12)
  {
    sub_19B8750F8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA263B4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v272 = *MEMORY[0x1E69E9840];
  v6 = a1[239];
  v7 = a1[238];
  if (v6 != v7)
  {
    sub_19B98984C(a1 + 241, v7, v6, 0xF83E0F83E0F83E1 * ((v6 - v7) >> 3));
  }

  sub_19B9882F8(v5 + 238);
  if (*(v5 + 9) != 1 || v5[235] == v5[236])
  {
    return 0;
  }

  v8 = *(v5 + 234);
  v9 = vabdd_f64(*(a2 + 400), v8);
  v10 = v8 >= 0.0 && v9 <= 2.5;
  if (!v10 || vabdd_f64(v8, *(v5 + 244)) < 60.0)
  {
    return 0;
  }

  v13 = *(a2 + 384);
  v15 = v5[26];
  v14 = v5[27];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v213 = v14;
  if (!v15)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v70 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v13;
      _os_log_impl(&dword_19B873000, v70, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,invalid geometry pointer, generateRouteHint", buf, 0xCu);
    }

    v71 = sub_19B87DD40();
    if ((*(v71 + 160) & 0x80000000) == 0 || (*(v71 + 164) & 0x80000000) == 0 || (*(v71 + 168) & 0x80000000) == 0 || *(v71 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *v243 = 134349056;
      *&v243[4] = v13;
      v72 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,invalid geometry pointer, generateRouteHint", v243, 12);
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v72);
      if (v72 != buf)
      {
        free(v72);
      }
    }

    v11 = 0;
    v73 = v213;
    goto LABEL_231;
  }

  v226 = 0;
  v227 = 0;
  v228 = 0;
  v219 = v5;
  if (*(a3 + 504) != 1)
  {
    goto LABEL_31;
  }

  sub_19B97106C(a3 + 120, v224);
  v16 = v5[235];
  if (v16 == v5[236])
  {
    goto LABEL_31;
  }

  while (1)
  {
    v17 = *v16;
    v18 = *(v16 + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = *(v16 + 20);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *v17;
      v21 = v17[1];
      sub_19B8750F8(v18);
    }

    else
    {
      v19 = *(v16 + 20);
      v20 = *v17;
      v21 = v17[1];
    }

    v23 = v224[0] == v20 && v225 == v19 && v224[1] == v21;
    v5 = v219;
    if (v18)
    {
      sub_19B8750F8(v18);
    }

    if (v23)
    {
      break;
    }

    v16 += 56;
    if (v16 == v219[236])
    {
      goto LABEL_31;
    }
  }

  v74 = *(a2 + 400);
  v75 = -6.0;
  if (v74 >= 0.0)
  {
    v76 = *(a3 + 264);
    v77 = vabdd_f64(v74, v76) * 6.0;
    if (v76 >= 0.0)
    {
      v75 = v77;
    }

    else
    {
      v75 = -6.0;
    }
  }

  v78 = fmax(*(a2 + 856), 0.0) + vcvts_n_f32_s64(random(), 0x1FuLL) * 0.25;
  if (v78 <= v75)
  {
    v75 = v78;
  }

  sub_19B973CD8(v255, a3 + 120);
  v221 = &v221;
  v222 = &v221;
  v223 = 0;
  if (v16 != v219[236])
  {
    sub_19B9117CC(&v221, v16);
  }

  v220 = 0;
  if (((*(*v15 + 56))(v15, v255, &v221, &v220, *&v256[16], v75) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v125 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v13;
      _os_log_impl(&dword_19B873000, v125, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,failed as not enough route roads are available", buf, 0xCu);
    }

    v126 = sub_19B87DD40();
    if (*(v126 + 160) <= 1 && *(v126 + 164) <= 1 && *(v126 + 168) <= 1 && !*(v126 + 152))
    {
      goto LABEL_227;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v243 = 134349056;
    *&v243[4] = v13;
    v127 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,failed as not enough route roads are available", v243, 12);
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v127);
    goto LABEL_225;
  }

  if (v223 <= v220)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v128 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349568;
      *&buf[4] = v13;
      v262 = 1026;
      *v263 = v220;
      *&v263[4] = 2050;
      *&v263[6] = v223;
      _os_log_impl(&dword_19B873000, v128, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,route index,%{public}d,is more than number of route roads,%{public}ld", buf, 0x1Cu);
    }

    v129 = sub_19B87DD40();
    if ((*(v129 + 160) & 0x80000000) != 0 && (*(v129 + 164) & 0x80000000) != 0 && (*(v129 + 168) & 0x80000000) != 0 && !*(v129 + 152))
    {
      goto LABEL_227;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v243 = 134349568;
    *&v243[4] = v13;
    *&v243[12] = 1026;
    *&v243[14] = v220;
    *&v243[18] = 2050;
    *&v243[20] = v223;
    v127 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,route index,%{public}d,is more than number of route roads,%{public}ld", v243, 28);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v127);
    goto LABEL_225;
  }

  v79 = *&v255[24];
  v80 = 5.0;
  if (*&v256[16] > 0.97 || *&v256[16] < 0.03)
  {
LABEL_251:
    if (*(a2 + 568) <= 0.0)
    {
      goto LABEL_325;
    }

    v137 = *(a2 + 480);
    if (v137 < 0.0)
    {
      goto LABEL_325;
    }

    v215 = v80;
    v138 = fmod(v137 - v79, 360.0);
    if (v138 < 0.0)
    {
      v138 = v138 + 360.0;
    }

    v139 = -360.0;
    if (v138 > 180.0)
    {
      v138 = v138 + -360.0;
    }

    v218 = fabs(v138);
    if (v218 <= 50.0)
    {
LABEL_324:
      v80 = v215;
      goto LABEL_325;
    }

    v140 = 0;
    v141 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
    v142 = 1;
    while (1)
    {
      v143 = v140;
      v144 = v220 + v142;
      if (v223 > v144)
      {
        v145 = v222;
        if ((v144 & 0x80000000) != 0)
        {
          v147 = v220 + v142;
          do
          {
            v145 = *v145;
            _CF = __CFADD__(v147++, 1);
          }

          while (!_CF);
        }

        else if (v144)
        {
          v146 = v220 + v142 + 1;
          do
          {
            v145 = *(v145 + 8);
            --v146;
          }

          while (v146 > 1);
        }

        if (v145 == &v221 || (v148 = *(v145 + 16)) == 0)
        {
          if (*(v141 + 218) != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v5 = v219;
          v80 = v215;
          v204 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349056;
            *&buf[4] = v13;
            _os_log_impl(&dword_19B873000, v204, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unexpected,routeHints,moving on to next route road,nullptr", buf, 0xCu);
          }

          v205 = sub_19B87DD40();
          if ((*(v205 + 160) & 0x80000000) == 0 || (*(v205 + 164) & 0x80000000) == 0 || (*(v205 + 168) & 0x80000000) == 0 || *(v205 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (*(v141 + 218) != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            *v243 = 134349056;
            *&v243[4] = v13;
            v206 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,unexpected,routeHints,moving on to next route road,nullptr", v243, 12);
            sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v206);
            if (v206 != buf)
            {
              free(v206);
            }
          }

          goto LABEL_325;
        }

        v149 = *(v145 + 40);
        v150 = fmod(v149 - v79, 360.0);
        if (v150 < 0.0)
        {
          v150 = v150 + 360.0;
        }

        if (v150 <= 180.0)
        {
          v151 = v150;
        }

        else
        {
          v151 = v150 + v139;
        }

        if (v151 >= 10.0)
        {
          goto LABEL_287;
        }

        sub_19B9F5AA8(v148);
        if (v148[5] >= 7.0)
        {
          v149 = *(v145 + 40);
LABEL_287:
          v156 = v79;
          v157 = fmod(v79 + v151 * 0.5, 360.0);
          if (v157 >= 0.0)
          {
            v158 = v157;
          }

          else
          {
            v158 = v157 + 360.0;
          }

          v159 = *(a2 + 480);
          v160 = fmod(v159 - v149, 360.0);
          if (v160 < 0.0)
          {
            v160 = v160 + 360.0;
          }

          if (v160 > 180.0)
          {
            v160 = v160 + v139;
          }

          v161 = v139;
          v162 = fabs(v160);
          v163 = fmod(v159 - v158, 360.0);
          if (v163 < 0.0)
          {
            v163 = v163 + 360.0;
          }

          v164 = v161;
          if (v163 > 180.0)
          {
            v163 = v163 + v161;
          }

          v165 = fabs(v163);
          if (v162 < 25.0 || v165 < 15.0)
          {
            if (*(v141 + 218) != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            v166 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              v167 = *(a2 + 480);
              v168 = *(v145 + 40);
              *buf = 134350848;
              *&buf[4] = v13;
              v262 = 2050;
              *v263 = v167;
              *&v263[8] = 2050;
              *&v263[10] = v168;
              *&v263[18] = 2050;
              *&v263[20] = v156;
              v264 = 2050;
              v265 = v162;
              v266 = 2050;
              v267 = v158;
              v268 = 2050;
              v269 = v165;
              v270 = 2050;
              v271 = v218;
              _os_log_impl(&dword_19B873000, v166, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,skipping,moveOnRouteRoads meas,crumb close to intersection and gpsCourse,%{public}.1lf,is matching with next road on route,%{public}.1lf,course,%{public}.1lf,nextCourseDiff,%{public}.1lf,approxCourseOfTurningRoad,%{public}.1lf,turningCourseDiff,%{public}.1lf,courseDiff,%{public}.1lf", buf, 0x52u);
            }

            v169 = sub_19B87DD40();
            if (*(v169 + 160) > 1 || *(v169 + 164) > 1 || *(v169 + 168) > 1 || *(v169 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (*(v141 + 218) != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v170 = *(a2 + 480);
              v171 = *(v145 + 40);
              *v243 = 134350848;
              *&v243[4] = v13;
              *&v243[12] = 2050;
              *&v243[14] = v170;
              *&v243[22] = 2050;
              *&v243[24] = v171;
              *&v243[32] = 2050;
              *&v243[34] = v156;
              *&v243[42] = 2050;
              *&v243[44] = v162;
              *&v243[52] = 2050;
              *&v243[54] = v158;
              *&v243[62] = 2050;
              *v244 = v165;
              *&v244[8] = 2050;
              *&v244[10] = v218;
              v172 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,routeHints,skipping,moveOnRouteRoads meas,crumb close to intersection and gpsCourse,%{public}.1lf,is matching with next road on route,%{public}.1lf,course,%{public}.1lf,nextCourseDiff,%{public}.1lf,approxCourseOfTurningRoad,%{public}.1lf,turningCourseDiff,%{public}.1lf,courseDiff,%{public}.1lf", v243, 82);
              sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v172);
              if (v172 != buf)
              {
                free(v172);
              }
            }

            v174 = *(v145 + 16);
            v173 = *(v145 + 24);
            if (v173)
            {
              atomic_fetch_add_explicit((v173 + 8), 1uLL, memory_order_relaxed);
            }

            v175 = *&v255[8];
            *v255 = v174;
            *&v255[8] = v173;
            v139 = v164;
            if (v175)
            {
              sub_19B8750F8(v175);
            }

            v176 = *(v145 + 32);
            v177 = *(v145 + 48);
            *&v256[16] = *(v145 + 64);
            *&v255[16] = v176;
            *v256 = v177;
            v79 = *(v145 + 40);
            v220 = v144;
            v5 = v219;
          }

          else
          {
            v5 = v219;
            v79 = v156;
            v139 = v164;
          }

          goto LABEL_318;
        }

        if (*(v141 + 218) != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v152 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v153 = *(v145 + 16);
          sub_19B9F5AA8(v153);
          v154 = *(v153 + 40);
          *buf = 134349824;
          *&buf[4] = v13;
          v262 = 1026;
          *v263 = v144;
          *&v263[4] = 2050;
          *&v263[6] = v151;
          *&v263[14] = 2050;
          *&v263[16] = v154;
          _os_log_impl(&dword_19B873000, v152, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,moving on to next route road,nextRouteRoadIndex,%{public}d,angleBetweenTwoRoads,%{public}.2lf,length,%{public}.2lf", buf, 0x26u);
          v141 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
        }

        v155 = sub_19B87DD40();
        if (*(v155 + 160) > 1 || *(v155 + 164) > 1 || *(v155 + 168) > 1 || *(v155 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (*(v141 + 218) != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v178 = off_1EAFE4708;
          v179 = *(v145 + 16);
          sub_19B9F5AA8(v179);
          v180 = *(v179 + 40);
          *v243 = 134349824;
          *&v243[4] = v13;
          *&v243[12] = 1026;
          *&v243[14] = v144;
          *&v243[18] = 2050;
          *&v243[20] = v151;
          *&v243[28] = 2050;
          *&v243[30] = v180;
          v181 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v178, 2, "CLMMPED,%{public}.1lf,routeHints,moving on to next route road,nextRouteRoadIndex,%{public}d,angleBetweenTwoRoads,%{public}.2lf,length,%{public}.2lf", v243, 38);
          sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v181);
          v5 = v219;
          v141 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
          if (v181 != buf)
          {
            free(v181);
          }
        }

        else
        {
          v5 = v219;
        }
      }

LABEL_318:
      v142 = 2;
      v140 = 1;
      if (v143)
      {
        goto LABEL_324;
      }
    }
  }

  if (*(a2 + 568) <= 0.0 || (v81 = *(a2 + 480), v81 < 0.0))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v130 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      *&buf[4] = v13;
      v262 = 2050;
      *v263 = 0x403E000000000000;
      _os_log_impl(&dword_19B873000, v130, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,course deweighted,unc,%{public}.2lf", buf, 0x16u);
    }

    v131 = sub_19B87DD40();
    if (*(v131 + 160) > 1 || *(v131 + 164) > 1 || *(v131 + 168) > 1 || (v80 = 30.0, *(v131 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *v243 = 134349312;
      *&v243[4] = v13;
      *&v243[12] = 2050;
      *&v243[14] = 0x403E000000000000;
      v132 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,course deweighted,unc,%{public}.2lf", v243, 22);
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v132);
      if (v132 != buf)
      {
        free(v132);
      }

      v80 = 30.0;
    }

    goto LABEL_248;
  }

  v82 = fmod(v81 - v79, 360.0);
  if (v82 < 0.0)
  {
    v82 = v82 + 360.0;
  }

  if (v82 > 180.0)
  {
    v82 = v82 + -360.0;
  }

  v83 = fabs(v82);
  v84 = *(v219 + 518);
  if (v83 >= 135.0)
  {
    *(v219 + 518) = v84 + 1;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v198 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v199 = *(a2 + 480);
      v200 = *(v219 + 518);
      *buf = 134349824;
      *&buf[4] = v13;
      v262 = 2050;
      *v263 = v79;
      *&v263[8] = 2050;
      *&v263[10] = v199;
      *&v263[18] = 1026;
      *&v263[20] = v200;
      _os_log_impl(&dword_19B873000, v198, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,routeCourse,%{public}.1lf,is very different than crumb course,%{public}.1lf,rejection,%{public}d", buf, 0x26u);
    }

    v201 = sub_19B87DD40();
    if (*(v201 + 160) <= 1 && *(v201 + 164) <= 1 && *(v201 + 168) <= 1 && !*(v201 + 152))
    {
      goto LABEL_227;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v202 = *(a2 + 480);
    v203 = *(v219 + 518);
    *v243 = 134349824;
    *&v243[4] = v13;
    *&v243[12] = 2050;
    *&v243[14] = v79;
    *&v243[22] = 2050;
    *&v243[24] = v202;
    *&v243[32] = 1026;
    *&v243[34] = v203;
    v127 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,routeCourse,%{public}.1lf,is very different than crumb course,%{public}.1lf,rejection,%{public}d", v243, 38);
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v127);
    goto LABEL_225;
  }

  if (v83 > 60.0 && v84 >= 1)
  {
    *(v219 + 518) = v84 + 1;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v207 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v208 = *(a2 + 480);
      v209 = *(v219 + 518);
      *buf = 134349824;
      *&buf[4] = v13;
      v262 = 2050;
      *v263 = v79;
      *&v263[8] = 2050;
      *&v263[10] = v208;
      *&v263[18] = 1026;
      *&v263[20] = v209;
      _os_log_impl(&dword_19B873000, v207, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,routeCourse,%{public}.1lf,is different than crumb course,%{public}.1lf, and rejections are high,rejection,%{public}d", buf, 0x26u);
    }

    v210 = sub_19B87DD40();
    if (*(v210 + 160) <= 1 && *(v210 + 164) <= 1 && *(v210 + 168) <= 1 && !*(v210 + 152))
    {
      goto LABEL_227;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v211 = *(a2 + 480);
    v212 = *(v219 + 518);
    *v243 = 134349824;
    *&v243[4] = v13;
    *&v243[12] = 2050;
    *&v243[14] = v79;
    *&v243[22] = 2050;
    *&v243[24] = v211;
    *&v243[32] = 1026;
    *&v243[34] = v212;
    v127 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,routeCourse,%{public}.1lf,is different than crumb course,%{public}.1lf, and rejections are high,rejection,%{public}d", v243, 38);
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v127);
LABEL_225:
    if (v127 != buf)
    {
      free(v127);
    }

LABEL_227:
    sub_19B916DC0(&v221);
    sub_19B966FCC(v255);
    goto LABEL_228;
  }

  if (v83 <= 80.0)
  {
LABEL_248:
    v133 = v255[20];
    v134 = *&v256[16];
    v135 = *v255;
    sub_19B9F5AA8(*v255);
    v136 = 1.0 - v134;
    if (!v133)
    {
      v136 = v134;
    }

    if (v136 * *(v135 + 40) >= 15.0)
    {
LABEL_325:
      v182 = *v256;
      v183 = *&v256[8];
      v184 = v222;
      v185 = v220;
      if (v220 < 0)
      {
        do
        {
          v184 = *v184;
          _CF = __CFADD__(v185++, 1);
        }

        while (!_CF);
      }

      else if (v220)
      {
        v186 = v220 + 1;
        do
        {
          v184 = v184[1];
          --v186;
        }

        while (v186 > 1);
      }

      sub_19BA0C01C((v5 + 21), *v256, *&v256[8], *(v184 + 6), *(v184 + 7), 0.0);
      memset(v243, 0, 24);
      *&v243[24] = xmmword_19BA89720;
      v243[40] = 0;
      *&v243[48] = 0u;
      *v244 = 0u;
      __asm { FMOV            V1.2D, #-1.0 }

      v248 = _Q1;
      *&v249[0] = 0xBFF0000000000000;
      v250 = 0.0;
      v251 = 0;
      LODWORD(v252) = 0;
      WORD2(v252) = 1;
      DWORD2(v252) = 0;
      v254 = 0;
      v253 = 0uLL;
      *&v244[16] = v182;
      *&v244[24] = v183;
      *&v245 = *(a2 + 448);
      *(&v245 + 1) = v79;
      if (v187 < 8.0)
      {
        v187 = 8.0;
      }

      *v246 = v187;
      *(v246 + 1) = v80;
      *&v246[1] = 0x3FF0000000000000;
      v189 = *(a2 + 560);
      *(&v246[1] + 1) = *(a2 + 472);
      *&v247 = v189;
      BYTE8(v247) = *(a2 + 604);
      *(v249 + 8) = vextq_s8(*(a2 + 392), *(a2 + 392), 8uLL);
      *(&v249[1] + 1) = *(a2 + 384);
      sub_19B988344(v243, 0);
      v191 = *v255;
      v190 = *&v255[8];
      if (*&v255[8])
      {
        atomic_fetch_add_explicit((*&v255[8] + 8), 1uLL, memory_order_relaxed);
      }

      v192 = v251;
      v250 = v191;
      v251 = v190;
      if (v192)
      {
        sub_19B8750F8(v192);
      }

      v252 = *&v255[16];
      v253 = *v256;
      v254 = *&v256[16];
      sub_19B989CC8(&v226, v243);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v193 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v194 = 0xF83E0F83E0F83E1 * ((v5[239] - v5[238]) >> 3);
        *buf = 134350593;
        *&buf[4] = v13;
        v262 = 2053;
        *v263 = *&v244[16];
        *&v263[8] = 2053;
        *&v263[10] = *&v244[24];
        *&v263[18] = 2050;
        *&v263[20] = *(&v245 + 1);
        v264 = 2050;
        v265 = *v246;
        v266 = 2050;
        v267 = *(v246 + 1);
        v268 = 2050;
        v269 = *&v194;
        _os_log_impl(&dword_19B873000, v193, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,meas,moveOnRouteRoads,ll,%{sensitive}.7lf,%{sensitive}.7lf,course,%{public}.3lf,hunc,%{public}.3lf,cunc,%{public}.3lf,count,%{public}lu", buf, 0x48u);
      }

      v195 = sub_19B87DD40();
      if (*(v195 + 160) > 1 || *(v195 + 164) > 1 || *(v195 + 168) > 1 || *(v195 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v196 = 0xF83E0F83E0F83E1 * ((v5[239] - v5[238]) >> 3);
        v229 = 134350593;
        v230 = v13;
        v231 = 2053;
        v232 = *&v244[16];
        v233 = 2053;
        v234 = *&v244[24];
        v235 = 2050;
        v236 = *(&v245 + 1);
        v237 = 2050;
        v238 = *&v246[0];
        v239 = 2050;
        v240 = *(&v246[0] + 1);
        v241 = 2050;
        v242 = v196;
        v197 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,routeHints,meas,moveOnRouteRoads,ll,%{sensitive}.7lf,%{sensitive}.7lf,course,%{public}.3lf,hunc,%{public}.3lf,cunc,%{public}.3lf,count,%{public}lu", &v229, 72);
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v197);
        if (v197 != buf)
        {
          free(v197);
        }
      }

      if (v251)
      {
        sub_19B8750F8(v251);
      }

      goto LABEL_352;
    }

    goto LABEL_251;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v86 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v87 = *(a2 + 480);
    *buf = 134349568;
    *&buf[4] = v13;
    v262 = 2050;
    *v263 = v79;
    *&v263[8] = 2050;
    *&v263[10] = v87;
    _os_log_impl(&dword_19B873000, v86, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,skipping,moveOnRouteRoads meas,routeCourse,%{public}.1lf,is somewhat different than crumb course,%{public}.1lf", buf, 0x20u);
  }

  v88 = sub_19B87DD40();
  v5 = v219;
  if (*(v88 + 160) > 1 || *(v88 + 164) > 1 || *(v88 + 168) > 1 || *(v88 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v89 = *(a2 + 480);
    *v243 = 134349568;
    *&v243[4] = v13;
    *&v243[12] = 2050;
    *&v243[14] = v79;
    *&v243[22] = 2050;
    *&v243[24] = v89;
    v90 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,routeHints,skipping,moveOnRouteRoads meas,routeCourse,%{public}.1lf,is somewhat different than crumb course,%{public}.1lf", v243, 32);
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v90);
    if (v90 != buf)
    {
      free(v90);
    }

    v5 = v219;
  }

LABEL_352:
  sub_19B916DC0(&v221);
  sub_19B966FCC(v255);
LABEL_31:
  v24 = v226;
  v217 = v227;
  if (v227 != v226)
  {
    goto LABEL_145;
  }

  v25 = v5[235];
  v216 = v5[236];
  if (v25 == v216)
  {
    goto LABEL_145;
  }

  v26 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v214 = _Q0;
  v30 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
  do
  {
    sub_19BA0C01C((v219 + 21), v25[4], v25[5], *(a2 + 408), *(a2 + 416), 0.0);
    memset(v243, 0, 24);
    *&v243[24] = xmmword_19BA89720;
    v243[40] = 0;
    *&v243[48] = 0u;
    *v244 = 0u;
    v248 = v214;
    *&v249[0] = 0xBFF0000000000000;
    LODWORD(v252) = 0;
    v250 = 0.0;
    v251 = 0;
    WORD2(v252) = 1;
    DWORD2(v252) = 0;
    v254 = 0;
    v253 = 0uLL;
    *&v244[16] = *(v25 + 2);
    *&v245 = *(a2 + 448);
    if (v31 < 8.0)
    {
      v31 = 8.0;
    }

    *(&v245 + 1) = *(v25 + 6);
    *v246 = v31;
    *(v246 + 8) = xmmword_19BA8D470;
    v32 = *(a2 + 560);
    *(&v246[1] + 1) = *(a2 + 472);
    *&v247 = v32;
    BYTE8(v247) = *(a2 + 604);
    *(v249 + 8) = vextq_s8(*(a2 + 392), *(a2 + 392), 8uLL);
    *(&v249[1] + 1) = *(a2 + 384);
    sub_19B988344(v243, 0);
    *&v246[1] = 1.0 / *(v246 + 1);
    v34 = *v25;
    v33 = *(v25 + 1);
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v35 = v251;
    v250 = v34;
    v251 = v33;
    if (v35)
    {
      sub_19B8750F8(v35);
    }

    v36 = *(v25 + 1);
    v37 = *(v25 + 2);
    v254 = *(v25 + 6);
    v252 = v36;
    v253 = v37;
    if (*(a2 + 568) <= 0.0 || (v38 = *(a2 + 480), v38 < 0.0))
    {
      if (*(a3 + 746) != 1)
      {
        goto LABEL_53;
      }

      v38 = *(a3 + 408);
      if (v38 < 0.0)
      {
        goto LABEL_53;
      }
    }

    v39 = fmod(v38 - *(&v245 + 1), 360.0);
    if (v39 < 0.0)
    {
      v39 = v39 + 360.0;
    }

    v40 = v39 + -360.0;
    if (v39 <= 180.0)
    {
      v40 = v39;
    }

    if ((v41 = fabs(v40), v41 < 135.0) && (v41 <= 60.0 || *(v219 + 518) <= 0) && (v41 <= 80.0 || (0x6DB6DB6DB6DB6DB7 * ((v219[236] - v219[235]) >> 3)) < 2))
    {
      if (v40 == 0.0)
      {
        v51 = *&v246[1];
      }

      else
      {
        v51 = 1.0 / v41;
      }

      *&v246[1] = v51;
      sub_19B988344(v243, 0);
      v52 = v227;
      if (v227 >= v228)
      {
        v65 = sub_19B989D6C(&v226, v243);
      }

      else
      {
        *v227 = *v243;
        v53 = *&v243[16];
        v54 = *&v243[32];
        v55 = *v244;
        *(v52 + 3) = *&v243[48];
        *(v52 + 4) = v55;
        *(v52 + 1) = v53;
        *(v52 + 2) = v54;
        v56 = *&v244[16];
        v57 = v245;
        v58 = v246[1];
        *(v52 + 7) = v246[0];
        *(v52 + 8) = v58;
        *(v52 + 5) = v56;
        *(v52 + 6) = v57;
        v59 = v247;
        v60 = v248;
        v61 = v249[1];
        *(v52 + 11) = v249[0];
        *(v52 + 12) = v61;
        *(v52 + 9) = v59;
        *(v52 + 10) = v60;
        v52[26] = v250;
        v62 = v251;
        *(v52 + 27) = v251;
        if (v62)
        {
          atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v63 = v252;
        v64 = v253;
        *(v52 + 32) = v254;
        *(v52 + 14) = v63;
        *(v52 + 15) = v64;
        v65 = (v52 + 33);
      }

      v227 = v65;
      if (*(v30 + 218) != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v66 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v67 = 0xF83E0F83E0F83E1 * ((v219[239] - v219[238]) >> 3);
        *buf = 134350849;
        *&buf[4] = v13;
        v262 = 2053;
        *v263 = *&v244[16];
        *&v263[8] = 2053;
        *&v263[10] = *&v244[24];
        *&v263[18] = 2050;
        *&v263[20] = *(&v245 + 1);
        v264 = 2050;
        v265 = *v246;
        v266 = 2050;
        v267 = *(v246 + 1);
        v268 = 2050;
        v269 = *&v67;
        v270 = 2050;
        v271 = *&v246[1];
        _os_log_impl(&dword_19B873000, v66, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,meas,projection,ll,%{sensitive}.7lf,%{sensitive}.7lf,course,%{public}.3lf,hunc,%{public}.3lf,cunc,%{public}.3lf,count,%{public}lu,confidence,%{public}.4lf", buf, 0x52u);
      }

      v68 = sub_19B87DD40();
      if (*(v68 + 160) > 1 || *(v68 + 164) > 1 || *(v68 + 168) > 1 || *(v68 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (*(v30 + 218) != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v69 = 0xF83E0F83E0F83E1 * ((v219[239] - v219[238]) >> 3);
        *v255 = 134350849;
        *&v255[4] = v13;
        *&v255[12] = 2053;
        *&v255[14] = *&v244[16];
        *&v255[22] = 2053;
        *&v255[24] = *&v244[24];
        *v256 = 2050;
        *&v256[2] = *(&v245 + 1);
        *&v256[10] = 2050;
        *&v256[12] = *&v246[0];
        *&v256[20] = 2050;
        *&v256[22] = *(&v246[0] + 1);
        v257 = 2050;
        v258 = v69;
        v259 = 2050;
        v260 = *&v246[1];
        v50 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,routeHints,meas,projection,ll,%{sensitive}.7lf,%{sensitive}.7lf,course,%{public}.3lf,hunc,%{public}.3lf,cunc,%{public}.3lf,count,%{public}lu,confidence,%{public}.4lf", v255, 82);
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v50);
        goto LABEL_64;
      }
    }

    else
    {
LABEL_53:
      if (*(v30 + 218) != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v42 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v43 = *(v25 + 6);
        v44 = *(a2 + 480);
        v45 = *(v219 + 518);
        *buf = 134349824;
        *&buf[4] = v13;
        v262 = 2050;
        *v263 = v43;
        *&v263[8] = 2050;
        *&v263[10] = v44;
        *&v263[18] = 1026;
        *&v263[20] = v45;
        _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints, no meas, projection,routeCourse,%{public}.1lf,is very different than crumb course,%{public}.1lf,rejection,%{public}d", buf, 0x26u);
      }

      v46 = sub_19B87DD40();
      ++v26;
      if (*(v46 + 160) > 1 || *(v46 + 164) > 1 || *(v46 + 168) > 1 || *(v46 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (*(v30 + 218) != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v47 = *(v25 + 6);
        v48 = *(a2 + 480);
        v49 = *(v219 + 518);
        *v255 = 134349824;
        *&v255[4] = v13;
        *&v255[12] = 2050;
        *&v255[14] = v47;
        *&v255[22] = 2050;
        *&v255[24] = v48;
        *v256 = 1026;
        *&v256[2] = v49;
        v50 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,routeHints, no meas, projection,routeCourse,%{public}.1lf,is very different than crumb course,%{public}.1lf,rejection,%{public}d", v255, 38);
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v50);
LABEL_64:
        if (v50 != buf)
        {
          free(v50);
        }

        v30 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
      }
    }

    if (v251)
    {
      sub_19B8750F8(v251);
    }

    v25 += 7;
  }

  while (v25 != v216);
  v24 = v226;
  v217 = v227;
  if (v26 > 0 && 0x6DB6DB6DB6DB6DB7 * ((v219[236] - v219[235]) >> 3) == v26 && v227 == v226)
  {
    v5 = v219;
    ++*(v219 + 518);
  }

  else
  {
    v5 = v219;
  }

LABEL_145:
  if (v217 == v24)
  {
LABEL_228:
    v11 = 0;
    goto LABEL_229;
  }

  *(v5 + 518) = 0;
  v91 = -1.0;
  v92 = 0.0;
  v93 = -1.0;
  do
  {
    v94 = v5[241];
    v95 = v5[242];
    if (v94 == v95)
    {
      goto LABEL_174;
    }

    v96 = 1;
    do
    {
      v97 = vabdd_f64(v94[23], *(v24 + 184));
      if (v91 < 0.0)
      {
        v91 = v97;
      }

      sub_19BA0C01C((v5 + 21), *(v24 + 80), *(v24 + 88), v94[10], v94[11], 0.0);
      if (v98 < v93 || v93 < 0.0)
      {
        v93 = v98;
      }

      if (v98 < 0.001)
      {
        v100 = *(v24 + 256) >= 0.2;
        *v255 = v255;
        *&v255[8] = v255;
        *&v255[16] = 0;
        if ((*(*v15 + 72))(v15, v255, v24 + 208, v100, 0))
        {
          v101 = *&v255[16];
          v96 = *&v255[16] > 1uLL;
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v102 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349568;
            *&buf[4] = v13;
            v262 = 1026;
            *v263 = v101 > 1;
            *&v263[4] = 2050;
            *&v263[6] = *&v255[16];
            _os_log_impl(&dword_19B873000, v102, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,duplicate measurement check,measurementGood,%{public}d,vector,%{public}lu", buf, 0x1Cu);
          }

          v103 = sub_19B87DD40();
          v5 = v219;
          if (*(v103 + 160) > 1 || *(v103 + 164) > 1 || *(v103 + 168) > 1 || *(v103 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            *v243 = 134349568;
            *&v243[4] = v13;
            *&v243[12] = 1026;
            *&v243[14] = v101 > 1;
            *&v243[18] = 2050;
            *&v243[20] = *&v255[16];
            v104 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,routeHints,duplicate measurement check,measurementGood,%{public}d,vector,%{public}lu", v243, 28);
            sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v104);
            if (v104 != buf)
            {
              free(v104);
            }

            v5 = v219;
          }
        }

        sub_19B941414(v255);
      }

      v94 += 33;
    }

    while (v94 != v95);
    if (v96)
    {
LABEL_174:
      v105 = *(v24 + 128);
      v106 = v5[239];
      if (v106 >= v5[240])
      {
        v119 = sub_19B989D6C(v5 + 238, v24);
      }

      else
      {
        *v106 = *v24;
        v107 = *(v24 + 16);
        v108 = *(v24 + 32);
        v109 = *(v24 + 64);
        *(v106 + 48) = *(v24 + 48);
        *(v106 + 64) = v109;
        *(v106 + 16) = v107;
        *(v106 + 32) = v108;
        v110 = *(v24 + 80);
        v111 = *(v24 + 96);
        v112 = *(v24 + 128);
        *(v106 + 112) = *(v24 + 112);
        *(v106 + 128) = v112;
        *(v106 + 80) = v110;
        *(v106 + 96) = v111;
        v113 = *(v24 + 144);
        v114 = *(v24 + 160);
        v115 = *(v24 + 192);
        *(v106 + 176) = *(v24 + 176);
        *(v106 + 192) = v115;
        *(v106 + 144) = v113;
        *(v106 + 160) = v114;
        *(v106 + 208) = *(v24 + 208);
        v116 = *(v24 + 216);
        *(v106 + 216) = v116;
        if (v116)
        {
          atomic_fetch_add_explicit((v116 + 8), 1uLL, memory_order_relaxed);
        }

        v117 = *(v24 + 224);
        v118 = *(v24 + 240);
        *(v106 + 256) = *(v24 + 256);
        *(v106 + 224) = v117;
        *(v106 + 240) = v118;
        v119 = v106 + 264;
      }

      v92 = v92 + v105;
      v5[239] = v119;
    }

    v24 += 264;
  }

  while (v24 != v217);
  if (v93 >= 0.0 && v91 > 0.0 && v91 < 5.0 && v93 > v91 * 6.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v120 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      *&buf[4] = v13;
      v262 = 2050;
      *v263 = v93;
      _os_log_impl(&dword_19B873000, v120, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,jump in route hint measurement,%{public}.3lf,rejecting", buf, 0x16u);
    }

    v121 = sub_19B87DD40();
    if (*(v121 + 160) > 1 || *(v121 + 164) > 1 || *(v121 + 168) > 1 || *(v121 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *v243 = 134349312;
      *&v243[4] = v13;
      *&v243[12] = 2050;
      *&v243[14] = v93;
      v122 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,routeHints,jump in route hint measurement,%{public}.3lf,rejecting", v243, 22);
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v122);
      if (v122 != buf)
      {
        free(v122);
      }
    }

    sub_19B9882F8(v5 + 238);
    goto LABEL_228;
  }

  if (v92 <= 0.0 || (v123 = v5[238], v124 = v5[239], v123 == v124))
  {
    v11 = 1;
LABEL_229:
    v73 = v213;
    goto LABEL_230;
  }

  v73 = v213;
  do
  {
    *(v123 + 128) = *(v123 + 128) / v92;
    v123 += 264;
  }

  while (v123 != v124);
  v11 = 1;
LABEL_230:
  *buf = &v226;
  sub_19B98868C(buf);
LABEL_231:
  if (v73)
  {
    sub_19B8750F8(v73);
  }

  return v11;
}

void sub_19BA28BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  sub_19B916DC0(&a30);
  sub_19B966FCC(&STACK[0x250]);
  *(v36 + 112) = &a36;
  sub_19B98868C(&STACK[0x2C0]);
  if (a14)
  {
    sub_19B8750F8(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19BA28CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v219 = *MEMORY[0x1E69E9840];
  if (*(a2 + 48) == *(a2 + 40))
  {
    return 0;
  }

  v6 = *(a2 + 384);
  v7 = *(a1 + 208);
  v8 = *(a1 + 216);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v7)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v23 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v6;
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,invalid geometry pointer, mapMatch", buf, 0xCu);
    }

    v24 = sub_19B87DD40();
    if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *__p = 134349056;
      *&__p[4] = v6;
      v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,invalid geometry pointer, mapMatch", __p, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    LOBYTE(v11) = 0;
    v26 = 0;
    if (v8)
    {
      goto LABEL_195;
    }

    goto LABEL_196;
  }

  v9 = *(a1 + 1872);
  v10 = v9 < 0.0;
  if (vabdd_f64(*(a2 + 400), v9) > 6.0)
  {
    v10 = 1;
  }

  v188 = v10;
  if (!v10)
  {
    v21 = 0;
    LODWORD(v11) = 0;
    goto LABEL_57;
  }

  v11 = *(a2 + 256);
  if (!v11)
  {
    v21 = 0;
    goto LABEL_57;
  }

  v12 = 25.0;
  v13 = 15.0;
  if (*(a1 + 12))
  {
    v12 = 15.0;
    v13 = 5.0;
  }

  if (*(v11 + 96) * 1.5 >= 0.0)
  {
    v13 = *(v11 + 96) * 1.5;
  }

  if (v12 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  v15 = *(a2 + 276);
  v16 = *(a2 + 304);
  sub_19B9F5AA8(*(a2 + 256));
  v17 = 1.0 - v16;
  if (!v15)
  {
    v17 = v16;
  }

  v18 = *(a2 + 276);
  v19 = *(a2 + 304);
  if (v17 * *(v11 + 40) >= v14)
  {
    v20 = 1.0 - v19;
    if (*(a2 + 276))
    {
      v20 = *(a2 + 304);
    }

    if (v20 < 0.99)
    {
      v21 = 0;
      LODWORD(v11) = 0;
      goto LABEL_52;
    }
  }

  v27 = *(a2 + 256);
  sub_19B9F5AA8(v27);
  v28 = 1.0 - v19;
  if ((v18 & 1) == 0)
  {
    v28 = v19;
  }

  v29 = v28 * v27[5];
  *buf = buf;
  *&buf[8] = buf;
  *&buf[16] = 0;
  if (!(*(*v7 + 72))(v7, buf, a2 + 256, *(a2 + 276), 1, *(a2 + 304), v29 + 1.0))
  {
    goto LABEL_45;
  }

  if (!*&buf[16])
  {
    v31 = *(a2 + 304);
    v30 = *(a2 + 276);
LABEL_48:
    if (!v30)
    {
      v31 = 1.0 - v31;
    }

    v21 = v31 >= 0.99;
    LODWORD(v11) = 1;
    goto LABEL_51;
  }

  if (*&buf[16] == 1 && **(a2 + 256) == *(*&buf[8] + 16))
  {
    v30 = *(a2 + 276);
    if (v30 != *(*&buf[8] + 24))
    {
      v31 = *(a2 + 304);
      goto LABEL_48;
    }
  }

LABEL_45:
  v21 = 0;
  LODWORD(v11) = 0;
LABEL_51:
  sub_19B941414(buf);
LABEL_52:
  if (*(a1 + 12) == 1)
  {
    v32 = *(a2 + 276);
    v33 = *(a2 + 304);
    v34 = *(a2 + 256);
    sub_19B9F5AA8(v34);
    v35 = 1.0 - v33;
    if (!v32)
    {
      v35 = v33;
    }

    if (v35 * v34[5] < v14)
    {
      LODWORD(v11) = 1;
    }
  }

LABEL_57:
  v36 = *(a2 + 616);
  v37 = *(a2 + 368);
  v38 = *(a2 + 896) ^ 1;
  v39 = fabs(*(a3 + 480));
  if (*(a3 + 504))
  {
    v40 = v39;
  }

  else
  {
    v40 = -1.0;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v190 = v38 & v37;
  v41 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v42 = *(a2 + 384);
    v43 = *(a2 + 608);
    v44 = *(a2 + 632);
    *buf = 134350592;
    *&buf[4] = v42;
    *&buf[12] = 2050;
    *&buf[14] = v36;
    *&buf[22] = 2050;
    *&buf[24] = v40;
    *&buf[32] = 1026;
    *v207 = v190 & 1;
    *&v207[4] = 2050;
    *&v207[6] = v43;
    *&v207[14] = 2050;
    *&v207[16] = v44;
    *&v207[24] = 1026;
    *&v207[26] = v11;
    _os_log_impl(&dword_19B873000, v41, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,evaluateMatch,oldOffRoadCount,fabsDeltaAz,%{public}.2lf,priorFabsDeltaAz,%{public}.2lf,atIntersection,%{public}d,varFactor,%{public}.2lf,acrossTrack,%{public}.2lf,isAmbiguous,%{public}d", buf, 0x40u);
  }

  v45 = sub_19B87DD40();
  if (*(v45 + 160) > 1 || *(v45 + 164) > 1 || *(v45 + 168) > 1 || *(v45 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v46 = *(a2 + 384);
    v47 = *(a2 + 608);
    v48 = *(a2 + 632);
    *__p = 134350592;
    *&__p[4] = v46;
    *&__p[12] = 2050;
    *&__p[14] = v36;
    *&__p[22] = 2050;
    *&__p[24] = v40;
    *&__p[32] = 1026;
    *v194 = v190 & 1;
    *&v194[4] = 2050;
    *&v194[6] = v47;
    *&v194[14] = 2050;
    *&v194[16] = v48;
    *&v194[24] = 1026;
    *&v194[26] = v11;
    v49 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,evaluateMatch,oldOffRoadCount,fabsDeltaAz,%{public}.2lf,priorFabsDeltaAz,%{public}.2lf,atIntersection,%{public}d,varFactor,%{public}.2lf,acrossTrack,%{public}.2lf,isAmbiguous,%{public}d", __p, 64);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v49);
    if (v49 != buf)
    {
      free(v49);
    }
  }

  v50 = *(a2 + 608);
  v189 = a3;
  v187 = v21;
  if (!((v36 < 25.0) | v190 & 1))
  {
    if (v50 > 7)
    {
      if (v50 <= 0x14)
      {
        if (((1 << v50) & 0x1E000) != 0)
        {
          goto LABEL_89;
        }

        if (((1 << v50) & 0x1E0000) != 0)
        {
LABEL_91:
          v52 = 4;
          goto LABEL_92;
        }

        if (((1 << v50) & 0x1800) != 0)
        {
LABEL_86:
          v52 = 2;
LABEL_92:
          v51 = 1;
          goto LABEL_93;
        }
      }

      if ((v50 - 8) < 3)
      {
        goto LABEL_117;
      }

LABEL_121:
      v52 = 10;
      goto LABEL_92;
    }

LABEL_80:
    if (v50 > 2)
    {
      v51 = 0;
      v52 = 0;
      goto LABEL_93;
    }

    if (v50 <= 2)
    {
      v51 = 0;
      v52 = -1;
      goto LABEL_93;
    }

    goto LABEL_121;
  }

  if (v50 <= 12)
  {
    goto LABEL_80;
  }

  if (v50 > 16)
  {
    if ((v50 - 17) < 4)
    {
      goto LABEL_91;
    }

    goto LABEL_121;
  }

  if ((v50 - 15) < 2)
  {
LABEL_89:
    v52 = 3;
    goto LABEL_92;
  }

  if (v50 != 13)
  {
    if (v50 != 14)
    {
      goto LABEL_121;
    }

    goto LABEL_86;
  }

LABEL_117:
  v51 = 1;
  v52 = 1;
LABEL_93:
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v53 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v54 = *(a2 + 384);
    v55 = *(a1 + 1208);
    *buf = 134349568;
    *&buf[4] = v54;
    *&buf[12] = 1026;
    *&buf[14] = v55;
    *&buf[18] = 1026;
    *&buf[20] = v55 + v52;
    _os_log_impl(&dword_19B873000, v53, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,varFactorCheck,oldOffRoadCount,%{public}d,newOffRoadCount,%{public}d", buf, 0x18u);
  }

  v56 = sub_19B87DD40();
  if (*(v56 + 160) > 1 || *(v56 + 164) > 1 || *(v56 + 168) > 1 || *(v56 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v57 = *(a2 + 384);
    v58 = *(a1 + 1208);
    *__p = 134349568;
    *&__p[4] = v57;
    *&__p[12] = 1026;
    *&__p[14] = v58;
    *&__p[18] = 1026;
    *&__p[20] = v58 + v52;
    v59 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,varFactorCheck,oldOffRoadCount,%{public}d,newOffRoadCount,%{public}d", __p, 24);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v59);
    if (v59 != buf)
    {
      free(v59);
    }
  }

  *(a1 + 1208) = (*(a1 + 1208) + v52) & ~((*(a1 + 1208) + v52) >> 31);
  v60 = *(a2 + 568);
  if (v60 > 0.0 && *(a2 + 480) >= 0.0)
  {
    if (*(a2 + 560) <= 0.0 || (v61 = *(a2 + 472), v61 < 0.0) || v61 >= 0.001)
    {
      if ((*(a2 + 604) & 1) == 0 && fabs(*(a2 + 632)) > 25.0)
      {
        if (v190)
        {
          if (v36 <= 67.5)
          {
            goto LABEL_148;
          }

          if (v60 >= 20.0)
          {
            v62 = 4;
LABEL_135:
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            v64 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              v65 = *(a2 + 384);
              v66 = *(a1 + 1208);
              *buf = 134349568;
              *&buf[4] = v65;
              *&buf[12] = 1026;
              *&buf[14] = v66;
              *&buf[18] = 1026;
              *&buf[20] = v66 + v62;
              _os_log_impl(&dword_19B873000, v64, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,courseCheck,oldOffRoadCount,%{public}d,newOffRoadCount,%{public}d", buf, 0x18u);
            }

            v67 = sub_19B87DD40();
            if (*(v67 + 160) > 1 || *(v67 + 164) > 1 || *(v67 + 168) > 1 || *(v67 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v68 = *(a2 + 384);
              v69 = *(a1 + 1208);
              *__p = 134349568;
              *&__p[4] = v68;
              *&__p[12] = 1026;
              *&__p[14] = v69;
              *&__p[18] = 1026;
              *&__p[20] = v69 + v62;
              v70 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,courseCheck,oldOffRoadCount,%{public}d,newOffRoadCount,%{public}d", __p, 24);
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v70);
              if (v70 != buf)
              {
                free(v70);
              }
            }

            *(a1 + 1208) += v62;
            v51 = 1;
            goto LABEL_148;
          }

          goto LABEL_128;
        }

        if (v60 >= 20.0)
        {
          if (v36 > 67.5)
          {
            goto LABEL_128;
          }

          if (v36 > 45.0)
          {
            goto LABEL_131;
          }

          v63 = 30.0;
        }

        else
        {
          if (v36 > 67.5)
          {
            v62 = 18;
            goto LABEL_135;
          }

          if (v36 > 45.0)
          {
LABEL_128:
            v62 = 6;
            goto LABEL_135;
          }

          if (v36 > 30.0)
          {
LABEL_131:
            v62 = 2;
            goto LABEL_135;
          }

          v63 = 20.0;
        }

        if (v36 <= v63)
        {
          goto LABEL_148;
        }

        v62 = 1;
        goto LABEL_135;
      }
    }
  }

LABEL_148:
  v71 = *(a2 + 456);
  v72 = *(a2 + 576);
  if (v72 > 0.0)
  {
    v73 = *(a2 + 584);
    if (v73 > 0.0)
    {
      v71 = sqrt(v73 / 2.45 * (v73 / 2.45) + v72 / 2.45 * (v72 / 2.45));
    }
  }

  if (v71 >= 10.0)
  {
    v74 = v71;
  }

  else
  {
    v74 = 10.0;
  }

  if (v74 >= 50.0)
  {
    v75 = 1;
  }

  else
  {
    v75 = v51;
  }

  if ((v75 & 1) == 0)
  {
    if (fabs(*(a2 + 632)) <= 75.0 && fabs(*(a2 + 624)) <= 150.0)
    {
      v51 = 0;
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v76 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v77 = *(a2 + 384);
        v78 = *(a1 + 1208);
        *buf = 134349568;
        *&buf[4] = v77;
        *&buf[12] = 1026;
        *&buf[14] = v78;
        *&buf[18] = 1026;
        *&buf[20] = v78 + 1;
        _os_log_impl(&dword_19B873000, v76, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,courseCheck,oldOffRoadCount,%{public}d,newOffRoadCount,%{public}d", buf, 0x18u);
      }

      v79 = sub_19B87DD40();
      if (*(v79 + 160) > 1 || *(v79 + 164) > 1 || *(v79 + 168) > 1 || *(v79 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v80 = *(a2 + 384);
        v81 = *(a1 + 1208);
        *__p = 134349568;
        *&__p[4] = v80;
        *&__p[12] = 1026;
        *&__p[14] = v81;
        *&__p[18] = 1026;
        *&__p[20] = v81 + 1;
        v82 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,courseCheck,oldOffRoadCount,%{public}d,newOffRoadCount,%{public}d", __p, 24);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v82);
        if (v82 != buf)
        {
          free(v82);
        }
      }

      ++*(a1 + 1208);
      v51 = 1;
    }
  }

  v83 = *(a3 + 504);
  v84 = 10000.0;
  if (v83 == 1 && *(a3 + 601) == 1)
  {
    v85 = 40000.0;
    if (v190)
    {
      v85 = 10000.0;
    }

    if (*(a2 + 737))
    {
      v84 = v85;
    }

    else
    {
      v84 = 10000.0;
    }
  }

  v86 = *(a2 + 632) * *(a2 + 632) + *(a2 + 624) * *(a2 + 624);
  if (v86 > v84)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v87 = off_1EAFE4708;
    v88 = sqrt(v84);
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v89 = *(a2 + 384);
      *buf = 134349568;
      *&buf[4] = v89;
      *&buf[12] = 2050;
      *&buf[14] = v88;
      *&buf[22] = 1026;
      *&buf[24] = v190 & 1;
      _os_log_impl(&dword_19B873000, v87, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,stopSnapping,distance > %{public}.0lfm,Intersection,%{public}d", buf, 0x1Cu);
    }

    v90 = sub_19B87DD40();
    if (*(v90 + 160) > 1 || *(v90 + 164) > 1 || *(v90 + 168) > 1 || *(v90 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v91 = *(a2 + 384);
      *__p = 134349568;
      *&__p[4] = v91;
      *&__p[12] = 2050;
      *&__p[14] = v88;
      *&__p[22] = 1026;
      *&__p[24] = v190 & 1;
      v92 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,stopSnapping,distance > %{public}.0lfm,Intersection,%{public}d", __p, 28);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v92);
      if (v92 != buf)
      {
        free(v92);
      }
    }

    v26 = 0;
    *(a1 + 1212) = 0;
    if (v8)
    {
      goto LABEL_195;
    }

    goto LABEL_196;
  }

  v97 = *(a2 + 472);
  if (v97 >= 0.0 && *(a2 + 560) > 0.0)
  {
    v97 = (v97 + *(a3 + 336)) * 0.5;
  }

  v99 = *(a2 + 400);
  v100 = -1.0;
  if (v99 >= 0.0)
  {
    v101 = *(a3 + 264);
    if (v101 >= 0.0)
    {
      v100 = vabdd_f64(v99, v101);
    }
  }

  if ((*(a1 + 1212) & v83) == 1 && *(a2 + 608) > 13.0)
  {
    v102 = v97 * v100;
    sub_19BA0C01C((a1 + 168), *(a3 + 392), *(a3 + 400), *(a2 + 528), *(a2 + 536), *(a2 + 448));
    v104 = v103 - v102;
    if (v103 - v102 > 100.0)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v105 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v106 = *(a2 + 384);
        v107 = *(a1 + 1208);
        *buf = 134350080;
        *&buf[4] = v106;
        *&buf[12] = 2050;
        *&buf[14] = v104;
        *&buf[22] = 2050;
        *&buf[24] = v102;
        *&buf[32] = 1026;
        *v207 = v107;
        *&v207[4] = 1026;
        *&v207[6] = v107 + 18;
        _os_log_impl(&dword_19B873000, v105, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,jumpDistanceCheck,%{public}.1lf,expectedDistanceTravelled,%{public}.1lf,oldOffRoadCount,%{public}d,newOffRoadCount,%{public}d", buf, 0x2Cu);
      }

      v108 = sub_19B87DD40();
      if (*(v108 + 160) > 1 || *(v108 + 164) > 1 || *(v108 + 168) > 1 || *(v108 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v109 = *(a2 + 384);
        v110 = *(a1 + 1208);
        *__p = 134350080;
        *&__p[4] = v109;
        *&__p[12] = 2050;
        *&__p[14] = v104;
        *&__p[22] = 2050;
        *&__p[24] = v102;
        *&__p[32] = 1026;
        *v194 = v110;
        *&v194[4] = 1026;
        *&v194[6] = v110 + 18;
        v111 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,jumpDistanceCheck,%{public}.1lf,expectedDistanceTravelled,%{public}.1lf,oldOffRoadCount,%{public}d,newOffRoadCount,%{public}d", __p, 44);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v111);
        if (v111 != buf)
        {
          free(v111);
        }
      }

      *(a1 + 1208) += 18;
      v51 = 1;
    }
  }

  if (v188 && v187)
  {
    v112 = *(a2 + 276) ? *(a2 + 304) : 1.0 - *(a2 + 304);
    if (v112 >= 0.99)
    {
      *(a1 + 1208) += (v112 * 10.0);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v113 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v114 = *(a2 + 384);
        v115 = *(a1 + 1208);
        *buf = 134349824;
        *&buf[4] = v114;
        *&buf[12] = 1026;
        *&buf[14] = v115;
        *&buf[18] = 2050;
        *&buf[20] = v112;
        *&buf[28] = 1026;
        *&buf[30] = (v112 * 10.0);
        _os_log_impl(&dword_19B873000, v113, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,evalauteMatch,offRoadCount,%{public}d,projection,%{public}.2lf,delta,%{public}d", buf, 0x22u);
      }

      v116 = sub_19B87DD40();
      if (*(v116 + 160) > 1 || *(v116 + 164) > 1 || *(v116 + 168) > 1 || *(v116 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v117 = *(a2 + 384);
        v118 = *(a1 + 1208);
        *__p = 134349824;
        *&__p[4] = v117;
        *&__p[12] = 1026;
        *&__p[14] = v118;
        *&__p[18] = 2050;
        *&__p[20] = v112;
        *&__p[28] = 1026;
        *&__p[30] = (v112 * 10.0);
        v119 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,evalauteMatch,offRoadCount,%{public}d,projection,%{public}.2lf,delta,%{public}d", __p, 34);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v119);
        if (v119 != buf)
        {
          free(v119);
        }

        v51 = 1;
      }

      else
      {
        v51 = 1;
      }
    }
  }

  if (*(a1 + 1212) != 1)
  {
    if (v51)
    {
      goto LABEL_358;
    }

    v128 = 13.5;
    if (*(a2 + 724))
    {
      v128 = 7.5;
    }

    if (v71 > 7.5)
    {
      v129 = 20.0;
    }

    else
    {
      v129 = v128;
    }

    v130 = 30.0;
    if (v188)
    {
      if (*(a2 + 496) == 9)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v131 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v132 = v8;
          v133 = *(a2 + 384);
          v134 = *(a2 + 496);
          if (*(a2 + 527) < 0)
          {
            sub_19B874C9C(__p, *(a2 + 504), *(a2 + 512));
          }

          else
          {
            *__p = *(a2 + 504);
            *&__p[16] = *(a2 + 520);
          }

          v150 = __p;
          if (__p[23] < 0)
          {
            v150 = *__p;
          }

          *buf = 134349570;
          *&buf[4] = v133;
          *&buf[12] = 1026;
          *&buf[14] = v134;
          *&buf[18] = 2082;
          *&buf[20] = v150;
          _os_log_impl(&dword_19B873000, v131, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,startSnapping,shouldStartSnappingOnfrc,frc,%{public}d,name,%{public}s,using tighter-threshold", buf, 0x1Cu);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          v8 = v132;
          a3 = v189;
        }

        v151 = sub_19B87DD40();
        if (*(v151 + 160) > 1 || *(v151 + 164) > 1 || *(v151 + 168) > 1 || *(v151 + 152))
        {
          bzero(buf, 0x65CuLL);
          v152 = v8;
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v153 = off_1EAFE4708;
          v154 = *(a2 + 384);
          v155 = *(a2 + 496);
          if (*(a2 + 527) < 0)
          {
            sub_19B874C9C(__dst, *(a2 + 504), *(a2 + 512));
          }

          else
          {
            *__dst = *(a2 + 504);
            v192 = *(a2 + 520);
          }

          v156 = __dst;
          if (v192 < 0)
          {
            v156 = __dst[0];
          }

          *__p = 134349570;
          *&__p[4] = v154;
          *&__p[12] = 1026;
          *&__p[14] = v155;
          *&__p[18] = 2082;
          *&__p[20] = v156;
          v157 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v153, 2, "CLMMPED,%{public}.1lf,startSnapping,shouldStartSnappingOnfrc,frc,%{public}d,name,%{public}s,using tighter-threshold", __p, 28);
          if (SHIBYTE(v192) < 0)
          {
            operator delete(__dst[0]);
          }

          v8 = v152;
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v157);
          a3 = v189;
          if (v157 != buf)
          {
            free(v157);
          }
        }

        v129 = 5.0;
        v130 = 8.0;
      }

      else
      {
        v149 = *(a2 + 792);
        if (v149 != 3)
        {
          v130 = v149 == 4 ? 30.0 : 18.0;
          if (v149 != 4)
          {
            v129 = 6.0;
          }
        }
      }
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v158 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v159 = *(a2 + 384);
      v160 = *(a2 + 632);
      v161 = *(a2 + 608);
      v162 = *(a3 + 472);
      v163 = *(a2 + 472);
      v164 = *(a2 + 480);
      v165 = *(a3 + 336);
      v166 = *(a3 + 344);
      *buf = 134351872;
      *&buf[4] = v159;
      *&buf[12] = 2050;
      *&buf[14] = v86;
      *&buf[22] = 2050;
      *&buf[24] = v160;
      *&buf[32] = 2050;
      *v207 = v74;
      *&v207[8] = 2050;
      *&v207[10] = v161;
      *&v207[18] = 2048;
      *&v207[20] = v162;
      *&v207[28] = 2050;
      v208 = v163;
      v209 = 2050;
      v210 = v165;
      v211 = 2050;
      v212 = v164;
      v213 = 2050;
      v214 = v166;
      v215 = 2050;
      v216 = v36;
      v217 = 2050;
      v218 = v40;
      _os_log_impl(&dword_19B873000, v158, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,startSnapping criteria,distance2,%{public}.1lf,acrossTrack,%{public}.2lf,drms,%{public}.1lf,currentVF,%{public}.3lf,prioVF{public},%.3lf,curSpeed,%{public}.2lf,priorSpeed,%{public}.2lf,curCourse,%{public}.2lf,priorCourse,%{public}.2lf,fabsDeltaAz,%{public}.2lf,priorFabsDeltaAz,%{public}.2lf", buf, 0x7Au);
    }

    v167 = sub_19B87DD40();
    if (*(v167 + 160) > 1 || *(v167 + 164) > 1 || *(v167 + 168) > 1 || *(v167 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v168 = *(a2 + 384);
      v169 = *(a2 + 632);
      v170 = *(a2 + 608);
      v171 = *(a3 + 472);
      v172 = *(a2 + 472);
      v173 = *(a2 + 480);
      v174 = *(a3 + 336);
      v175 = *(a3 + 344);
      *__p = 134351872;
      *&__p[4] = v168;
      *&__p[12] = 2050;
      *&__p[14] = v86;
      *&__p[22] = 2050;
      *&__p[24] = v169;
      *&__p[32] = 2050;
      *v194 = v74;
      *&v194[8] = 2050;
      *&v194[10] = v170;
      *&v194[18] = 2048;
      *&v194[20] = v171;
      *&v194[28] = 2050;
      v195 = v172;
      v196 = 2050;
      v197 = v174;
      v198 = 2050;
      v199 = v173;
      v200 = 2050;
      v201 = v175;
      v202 = 2050;
      v203 = v36;
      v204 = 2050;
      v205 = v40;
      v176 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,startSnapping criteria,distance2,%{public}.1lf,acrossTrack,%{public}.2lf,drms,%{public}.1lf,currentVF,%{public}.3lf,prioVF{public},%.3lf,curSpeed,%{public}.2lf,priorSpeed,%{public}.2lf,curCourse,%{public}.2lf,priorCourse,%{public}.2lf,fabsDeltaAz,%{public}.2lf,priorFabsDeltaAz,%{public}.2lf", __p, 122);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v176);
      if (v176 != buf)
      {
        free(v176);
      }
    }

    if (*(a2 + 641))
    {
      goto LABEL_344;
    }

    if (v86 >= 400.0)
    {
      goto LABEL_344;
    }

    if (*(a3 + 505))
    {
      goto LABEL_344;
    }

    if (fabs(*(a2 + 632)) >= v129)
    {
      goto LABEL_344;
    }

    if (v74 >= 101.0)
    {
      goto LABEL_344;
    }

    v182 = *(a2 + 608);
    if (v182 >= 3.0)
    {
      goto LABEL_344;
    }

    v183 = *(a3 + 472);
    if (v183 >= 3.0 || *(a2 + 472) <= 0.25 || *(a3 + 336) <= 0.25 || *(a2 + 480) < 0.0 || *(a3 + 344) < 0.0 || v36 >= v130 || v40 >= v130)
    {
      goto LABEL_344;
    }

    v184 = *(a2 + 568);
    if (v184 <= 0.0 || v184 >= 20.0)
    {
      v185 = *(a2 + 556);
      v186 = 3.0;
    }

    else
    {
      if (v36 >= 40.0)
      {
LABEL_344:
        if (*(a1 + 1212) == 1)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v177 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v178 = *(a2 + 384);
            *buf = 134349056;
            *&buf[4] = v178;
            _os_log_impl(&dword_19B873000, v177, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,startSnapping", buf, 0xCu);
          }

          v179 = sub_19B87DD40();
          if (*(v179 + 160) > 1 || *(v179 + 164) > 1 || *(v179 + 168) > 1 || *(v179 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            v180 = *(a2 + 384);
            *__p = 134349056;
            *&__p[4] = v180;
            v181 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,startSnapping", __p, 12);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v181);
            if (v181 != buf)
            {
              free(v181);
            }
          }

          *(a1 + 1208) = 0;
        }

        goto LABEL_358;
      }

      v185 = *(a2 + 556);
      v186 = 2.5;
    }

    if (v185 > v186 || v182 < 1.0 && v183 < 1.0 && (v185 == 0.0 || v185 > 1.1))
    {
      *(a1 + 1212) = 1;
    }

    goto LABEL_344;
  }

  v120 = *(a2 + 608);
  if (v120 > 70.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v121 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v122 = *(a2 + 384);
      v123 = *(a2 + 608);
      *buf = 134349568;
      *&buf[4] = v122;
      *&buf[12] = 2050;
      *&buf[14] = v123;
      *&buf[22] = 2050;
      *&buf[24] = 0x4051800000000000;
      _os_log_impl(&dword_19B873000, v121, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,stopSnapping,varFactor,%{public}.1lf,threshold,%{public}.1lf", buf, 0x20u);
    }

    v124 = sub_19B87DD40();
    if (*(v124 + 160) <= 1 && *(v124 + 164) <= 1 && *(v124 + 168) <= 1 && !*(v124 + 152))
    {
      goto LABEL_284;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v125 = *(a2 + 384);
    v126 = *(a2 + 608);
    *__p = 134349568;
    *&__p[4] = v125;
    *&__p[12] = 2050;
    *&__p[14] = v126;
    *&__p[22] = 2050;
    *&__p[24] = 0x4051800000000000;
    v127 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,stopSnapping,varFactor,%{public}.1lf,threshold,%{public}.1lf", __p, 32);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v127);
LABEL_282:
    if (v127 != buf)
    {
      free(v127);
    }

LABEL_284:
    *(a1 + 1212) = 0;
    goto LABEL_358;
  }

  if (*(a1 + 1208) >= 18)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v135 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v136 = *(a2 + 384);
      v137 = *(a1 + 1208);
      *buf = 134349568;
      *&buf[4] = v136;
      *&buf[12] = 1026;
      *&buf[14] = v137;
      *&buf[18] = 1026;
      *&buf[20] = 18;
      _os_log_impl(&dword_19B873000, v135, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,stopSnapping,offRoadCount,%{public}d,threshold,%{public}d", buf, 0x18u);
    }

    v138 = sub_19B87DD40();
    if (*(v138 + 160) <= 1 && *(v138 + 164) <= 1 && *(v138 + 168) <= 1 && !*(v138 + 152))
    {
      goto LABEL_284;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v139 = *(a2 + 384);
    v140 = *(a1 + 1208);
    *__p = 134349568;
    *&__p[4] = v139;
    *&__p[12] = 1026;
    *&__p[14] = v140;
    *&__p[18] = 1026;
    *&__p[20] = 18;
    v127 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,stopSnapping,offRoadCount,%{public}d,threshold,%{public}d", __p, 24);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v127);
    goto LABEL_282;
  }

  if (v120 >= 6.5)
  {
    v141 = 1;
  }

  else
  {
    v141 = v51;
  }

  if ((v141 & 1) == 0)
  {
    *(a1 + 1208) = 0;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v142 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v143 = *(a2 + 384);
      v144 = *(a1 + 1208);
      *buf = 134349312;
      *&buf[4] = v143;
      *&buf[12] = 1026;
      *&buf[14] = v144;
      _os_log_impl(&dword_19B873000, v142, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,reseting offRoadCount,%{public}d", buf, 0x12u);
    }

    v145 = sub_19B87DD40();
    if (*(v145 + 160) > 1 || *(v145 + 164) > 1 || *(v145 + 168) > 1 || *(v145 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v146 = *(a2 + 384);
      v147 = *(a1 + 1208);
      *__p = 134349312;
      *&__p[4] = v146;
      *&__p[12] = 1026;
      *&__p[14] = v147;
      v148 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,reseting offRoadCount,%{public}d", __p, 18);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v148);
      if (v148 != buf)
      {
        free(v148);
      }
    }
  }

LABEL_358:
  v26 = *(a1 + 1212);
  if (v8)
  {
LABEL_195:
    sub_19B8750F8(v8);
  }

LABEL_196:
  *(a2 + 640) = v26 & 1;
  *(a2 + 881) |= v11;
  sub_19B96700C(a1 + 1216, (a2 + 376));
  v93 = sub_19B967214((a1 + 1216), 0);
  if (v93)
  {
    *(a2 + 640) = 0;
  }

  else if (v26)
  {
    return 1;
  }

  result = v93 ^ 1u;
  *(a2 + 656) = 0;
  v94 = *(a2 + 432);
  v95 = *(a2 + 440);
  *(a2 + 528) = v94;
  *(a2 + 536) = v95;
  v96 = *(a2 + 480);
  *(a2 + 544) = v96;
  *(a2 + 664) = v94;
  *(a2 + 672) = v95;
  *(a2 + 680) = v96;
  return result;
}

void sub_19BA2AED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (v35)
  {
    sub_19B8750F8(v35);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19BA2AF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v129 = *MEMORY[0x1E69E9840];
  if (*(a2 + 640) == 1)
  {
    *(a1 + 1752) = 0;
    *(a1 + 1760) = 0u;
    if (fabs(*(a2 + 528)) < 0.00003 && fabs(*(a2 + 536)) < 0.00003)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v6 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a2 + 384);
        *buf = 134349056;
        *&buf[4] = v7;
        _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,reset,snap coordinate is null island", buf, 0xCu);
      }

      v8 = sub_19B87DD40();
      if (*(v8 + 160) <= 1 && *(v8 + 164) <= 1 && *(v8 + 168) <= 1 && !*(v8 + 152))
      {
        return 1;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v9 = *(a2 + 384);
      *v123 = 134349056;
      *&v123[4] = v9;
      v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,reset,snap coordinate is null island", v123, 12);
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::shallReset(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v10);
LABEL_73:
      if (v10 != buf)
      {
        free(v10);
      }

      return 1;
    }

    if (*(a2 + 882) == 1 && *(a3 + 746) == 1 && *(a3 + 120) && *(a2 + 256) && (sub_19B97106C(a3 + 120, buf), sub_19B97106C(a2 + 256, v123), *buf == *v123) && buf[16] == v123[16] && *&buf[8] == *&v123[8])
    {
      ++*(a1 + 1776);
    }

    else
    {
      *(a1 + 1776) = 0;
    }

    if (*(a2 + 640) != 1)
    {
      goto LABEL_57;
    }

    if (*(a3 + 504) != 1)
    {
      goto LABEL_57;
    }

    v22 = *(a2 + 488);
    if (v22 == *(a3 + 352))
    {
      goto LABEL_57;
    }

    v23 = fmod(*(a2 + 680) - *(a3 + 544), 360.0);
    if (v23 < 0.0)
    {
      v23 = v23 + 360.0;
    }

    if (v23 > 180.0)
    {
      v23 = v23 + -360.0;
    }

    if (fabs(v23) < 45.0)
    {
LABEL_57:
      v24 = (a1 + 1808);
      v25 = 1784;
LABEL_58:
      sub_19B916DC0(v24);
      sub_19B916DC0((a1 + v25));
      return 0;
    }

    v24 = (a1 + 1784);
    if (*(a1 + 1800) || (v44 = *(a1 + 1816), v44 == a1 + 1808))
    {
      v42 = 0;
    }

    else
    {
      do
      {
        v42 = v22 == **(v44 + 16);
        if (v22 == **(v44 + 16))
        {
          break;
        }

        v44 = *(v44 + 8);
      }

      while (v44 != a1 + 1808);
    }

    v43 = *(a1 + 1792);
    if (v43 != v24)
    {
      v25 = 1808;
      while (v22 != **(v43 + 16))
      {
        v43 = *(v43 + 8);
        if (v43 == v24)
        {
          goto LABEL_94;
        }
      }

      goto LABEL_58;
    }

LABEL_94:
    if (v42)
    {
      goto LABEL_95;
    }

    v45 = *(a2 + 256);
    if (v45)
    {
      v46 = *(a3 + 120);
      if (v46)
      {
        v47 = *(a2 + 264);
        v121 = v47;
        if (v47)
        {
          atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
          v46 = *(a3 + 120);
        }

        v48 = *(a3 + 128);
        if (v48)
        {
          atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v50 = v45[17];
        v49 = v45[18];
        v51 = 0uLL;
        v52 = 0uLL;
        if (v49 != v50)
        {
          v52 = *v50;
        }

        v54 = v46[17];
        v53 = v46[18];
        if (v53 != v54)
        {
          v51 = *v54;
        }

        v55 = vabdq_f64(v52, v51);
        v56 = vdupq_n_s64(0x3E7AD7F29ABCAF48uLL);
        *&v55.f64[0] = vmovn_s64(vcgtq_f64(v56, v55));
        if (vand_s8(*&v55.f64[0], vdup_lane_s32(*&v55.f64[0], 1)).u8[0])
        {
          goto LABEL_126;
        }

        v57 = 0uLL;
        v58 = 0uLL;
        if (v49 != v50)
        {
          v58 = *v50;
        }

        if (v53 != v54)
        {
          v57 = v53[-1];
        }

        v59 = vmovn_s64(vcgtq_f64(v56, vabdq_f64(v58, v57)));
        if (vand_s8(v59, vdup_lane_s32(v59, 1)).u8[0])
        {
          goto LABEL_126;
        }

        v60 = 0uLL;
        v61 = 0uLL;
        if (v49 != v50)
        {
          v61 = v49[-1];
        }

        if (v53 != v54)
        {
          v60 = *v54;
        }

        v62 = vmovn_s64(vcgtq_f64(v56, vabdq_f64(v61, v60)));
        if (vand_s8(v62, vdup_lane_s32(v62, 1)).u8[0])
        {
          goto LABEL_126;
        }

        v63 = 0uLL;
        v64 = 0uLL;
        if (v49 != v50)
        {
          v64 = v49[-1];
        }

        if (v53 != v54)
        {
          v63 = v53[-1];
        }

        v65 = vmovn_s64(vcgtq_f64(v56, vabdq_f64(v64, v63)));
        if (vand_s8(v65, vdup_lane_s32(v65, 1)).u8[0])
        {
LABEL_126:
          v66 = 1;
        }

        else
        {
          v66 = 0;
        }

        v119 = v48;
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v67 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v68 = *(a2 + 384);
          v69 = *v45;
          v70 = *v46;
          *buf = 134349825;
          *&buf[4] = v68;
          *&buf[12] = 1026;
          *&buf[14] = v66;
          *&buf[18] = 2049;
          *&buf[20] = v69;
          *&buf[28] = 2049;
          *&buf[30] = v70;
          _os_log_impl(&dword_19B873000, v67, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,hopping check,connecting roads,%{public}d, current road %{private}lld,prior road %{private}lld", buf, 0x26u);
        }

        v71 = sub_19B87DD40();
        if (*(v71 + 160) > 1 || *(v71 + 164) > 1 || *(v71 + 168) > 1 || *(v71 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v72 = *(a2 + 384);
          v73 = *v45;
          v74 = *v46;
          *v123 = 134349825;
          *&v123[4] = v72;
          *&v123[12] = 1026;
          *&v123[14] = v66;
          *&v123[18] = 2049;
          *&v123[20] = v73;
          *&v123[28] = 2049;
          *&v123[30] = v74;
          v75 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,hopping check,connecting roads,%{public}d, current road %{private}lld,prior road %{private}lld", v123, 38);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::checkForSolutionHopping(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v75);
          if (v75 != buf)
          {
            free(v75);
          }
        }

        if (v119)
        {
          sub_19B8750F8(v119);
        }

        if (v121)
        {
          sub_19B8750F8(v121);
        }

        if (v66)
        {
          goto LABEL_95;
        }
      }
    }

    v76 = *(a3 + 120);
    if (v76)
    {
      v77 = *(a2 + 864);
      if (v77)
      {
        v78 = *(a3 + 128);
        if (v78)
        {
          atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
          v77 = *(a2 + 864);
        }

        v81 = v77 + 136;
        v79 = *(v77 + 136);
        v80 = *(v81 + 8);
        v120 = 0u;
        v122 = 0u;
        if (v80 != v79)
        {
          if (*(a2 + 880))
          {
            v82 = *v79;
          }

          else
          {
            v82 = v80[-1];
          }

          v120 = v82;
        }

        v84 = v76[17];
        v83 = v76[18];
        if (v83 != v84)
        {
          if (*(a3 + 140))
          {
            v85 = v83[-1];
          }

          else
          {
            v85 = *v84;
          }

          v122 = v85;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v86 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v87 = *(a2 + 384);
          v88 = *v76;
          v89 = **(a2 + 864);
          v90 = **(a2 + 256);
          *buf = 134349825;
          *&buf[4] = v87;
          *&buf[12] = 2049;
          *&buf[14] = v88;
          *&buf[22] = 2049;
          *&buf[24] = v89;
          *&buf[32] = 2049;
          *&buf[34] = v90;
          _os_log_impl(&dword_19B873000, v86, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,hopping check,prior road, %{private}lld, connected to the incoming road, %{private}lld, of the current solution road, %{private}lld", buf, 0x2Au);
        }

        v91 = sub_19B87DD40();
        if (*(v91 + 160) > 1 || *(v91 + 164) > 1 || *(v91 + 168) > 1 || *(v91 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v92 = *(a2 + 384);
          v93 = *v76;
          v94 = **(a2 + 864);
          v95 = **(a2 + 256);
          *v123 = 134349825;
          *&v123[4] = v92;
          *&v123[12] = 2049;
          *&v123[14] = v93;
          *&v123[22] = 2049;
          *&v123[24] = v94;
          *&v123[32] = 2049;
          *&v123[34] = v95;
          v96 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,hopping check,prior road, %{private}lld, connected to the incoming road, %{private}lld, of the current solution road, %{private}lld", v123, 42);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::checkForSolutionHopping(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v96);
          if (v96 != buf)
          {
            free(v96);
          }
        }

        v97 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(v120, v122)));
        v98 = vand_s8(vdup_lane_s32(v97, 1), v97).u8[0];
        if (v78)
        {
          sub_19B8750F8(v78);
        }

        if (v98)
        {
LABEL_95:
          v25 = 1808;
          goto LABEL_58;
        }
      }
    }

    sub_19BA0C01C((a1 + 168), *(a3 + 528), *(a3 + 536), *(a2 + 664), *(a2 + 672), *(a2 + 448));
    v100 = v99 > 35.0 || *(a1 + 1776) > 15;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v101 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v102 = *(a2 + 384);
      v103 = *(a3 + 544);
      v104 = *(a2 + 680);
      v105 = *(a2 + 488);
      v106 = *(a3 + 352);
      *buf = 134350081;
      *&buf[4] = v102;
      *&buf[12] = 2050;
      *&buf[14] = v103;
      *&buf[22] = 2050;
      *&buf[24] = v104;
      *&buf[32] = 2049;
      *&buf[34] = v105;
      v127 = 2049;
      v128 = v106;
      _os_log_impl(&dword_19B873000, v101, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,hopping between roads detected,priorfullSnapCourse,%{public}.1lf,currentFullSnapCourse,%{public}.1lf,priorId,%{private}llu,currentId,%{private}llu", buf, 0x34u);
    }

    v107 = sub_19B87DD40();
    if (*(v107 + 160) > 1 || *(v107 + 164) > 1 || *(v107 + 168) > 1 || *(v107 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v108 = *(a2 + 384);
      v109 = *(a3 + 544);
      v110 = *(a2 + 680);
      v111 = *(a2 + 488);
      v112 = *(a3 + 352);
      *v123 = 134350081;
      *&v123[4] = v108;
      *&v123[12] = 2050;
      *&v123[14] = v109;
      *&v123[22] = 2050;
      *&v123[24] = v110;
      *&v123[32] = 2049;
      *&v123[34] = v111;
      v124 = 2049;
      v125 = v112;
      v113 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,hopping between roads detected,priorfullSnapCourse,%{public}.1lf,currentFullSnapCourse,%{public}.1lf,priorId,%{private}llu,currentId,%{private}llu", v123, 52);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::checkForSolutionHopping(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v113);
      if (v113 != buf)
      {
        free(v113);
      }
    }

    sub_19B916DC0((a1 + 1784));
    sub_19B916DC0((a1 + 1808));
    if (v100)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v114 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v115 = *(a2 + 384);
        *buf = 134349056;
        *&buf[4] = v115;
        _os_log_impl(&dword_19B873000, v114, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,reset,solution hopping detected", buf, 0xCu);
      }

      v116 = sub_19B87DD40();
      if (*(v116 + 160) <= 1 && *(v116 + 164) <= 1 && *(v116 + 168) <= 1 && !*(v116 + 152))
      {
        return 1;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v117 = *(a2 + 384);
      *v123 = 134349056;
      *&v123[4] = v117;
      v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,reset,solution hopping detected", v123, 12);
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::shallReset(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v10);
      goto LABEL_73;
    }

    return 0;
  }

  if (*(a2 + 608) > 70.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v11 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a2 + 384);
      v13 = *(a2 + 608);
      *buf = 134349568;
      *&buf[4] = v12;
      *&buf[12] = 2050;
      *&buf[14] = v13;
      *&buf[22] = 2050;
      *&buf[24] = 0x4051800000000000;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,Reseeding due to varFactor,%{public}.1lf,max,%{public}.1lf", buf, 0x20u);
    }

    v14 = sub_19B87DD40();
    if (*(v14 + 160) <= 1 && *(v14 + 164) <= 1 && *(v14 + 168) <= 1 && !*(v14 + 152))
    {
      return 1;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v15 = *(a2 + 384);
    v16 = *(a2 + 608);
    *v123 = 134349568;
    *&v123[4] = v15;
    *&v123[12] = 2050;
    *&v123[14] = v16;
    *&v123[22] = 2050;
    *&v123[24] = 0x4051800000000000;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,Reseeding due to varFactor,%{public}.1lf,max,%{public}.1lf", v123, 32);
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::shallReset(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v10);
    goto LABEL_73;
  }

  v17 = *(a1 + 1752);
  if ((v17 & 0x80000000) == 0)
  {
    *(a1 + 1752) = v17 + 1;
    if (v17 >= 0x1E)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v18 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a2 + 384);
        *buf = 134349312;
        *&buf[4] = v19;
        *&buf[12] = 1026;
        *&buf[14] = 30;
        _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,Reseeding as unable to match,max,%{public}d", buf, 0x12u);
      }

      v20 = sub_19B87DD40();
      if (*(v20 + 160) <= 1 && *(v20 + 164) <= 1 && *(v20 + 168) <= 1 && !*(v20 + 152))
      {
        return 1;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v21 = *(a2 + 384);
      *v123 = 134349312;
      *&v123[4] = v21;
      *&v123[12] = 1026;
      *&v123[14] = 30;
      v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,Reseeding as unable to match,max,%{public}d", v123, 18);
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::shallReset(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v10);
      goto LABEL_73;
    }
  }

  if (*(a3 + 746) != 1)
  {
    return 0;
  }

  *(a1 + 1760) = *(a2 + 856) + *(a1 + 1760);
  sub_19BA0C01C((a1 + 168), *(a3 + 392), *(a3 + 400), *(a2 + 528), *(a2 + 536), *(a2 + 448));
  v27 = v26 + *(a1 + 1768);
  *(a1 + 1768) = v27;
  v28 = *(a1 + 1760);
  if (v28 <= 80.0)
  {
    return 0;
  }

  if (v27 < 0.001)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v29 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v30 = *(a2 + 384);
      v31 = *(a1 + 1768);
      *buf = 134349312;
      *&buf[4] = v30;
      *&buf[12] = 2050;
      *&buf[14] = v31;
      _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,accumulated snap distance is ~0, %{public}.3lf", buf, 0x16u);
    }

    v32 = sub_19B87DD40();
    if (*(v32 + 160) <= 1 && *(v32 + 164) <= 1 && *(v32 + 168) <= 1 && !*(v32 + 152))
    {
      return 1;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v33 = *(a2 + 384);
    v34 = *(a1 + 1768);
    *v123 = 134349312;
    *&v123[4] = v33;
    *&v123[12] = 2050;
    *&v123[14] = v34;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,accumulated snap distance is ~0, %{public}.3lf", v123, 22);
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::shallReset(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v10);
    goto LABEL_73;
  }

  v36 = v28 / v27;
  v35 = v28 / v27 > 5.0;
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v37 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v38 = *(a2 + 384);
    *buf = 134349312;
    *&buf[4] = v38;
    *&buf[12] = 2050;
    *&buf[14] = v36;
    _os_log_impl(&dword_19B873000, v37, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,Reseeding due to stuck at dead-end while observations move away, ratioDist, %{public}.3lf", buf, 0x16u);
  }

  v39 = sub_19B87DD40();
  if (*(v39 + 160) > 1 || *(v39 + 164) > 1 || *(v39 + 168) > 1 || *(v39 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v40 = *(a2 + 384);
    *v123 = 134349312;
    *&v123[4] = v40;
    *&v123[12] = 2050;
    *&v123[14] = v36;
    v41 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,Reseeding due to stuck at dead-end while observations move away, ratioDist, %{public}.3lf", v123, 22);
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::shallReset(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v41);
    if (v41 != buf)
    {
      free(v41);
    }
  }

  return v35;
}

void sub_19BA2C338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v13)
  {
    sub_19B8750F8(v13);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19BA2C380(uint64_t a1, uint64_t a2)
{
  v68 = *MEMORY[0x1E69E9840];
  if (*(a2 + 48) == *(a2 + 40))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v31 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v32 = *(a2 + 384);
      *buf = 134349056;
      v61 = v32;
      _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,roadWithAdustment,number of particles are 0", buf, 0xCu);
    }

    v33 = sub_19B87DD40();
    if ((*(v33 + 160) & 0x80000000) != 0 && (*(v33 + 164) & 0x80000000) != 0 && (*(v33 + 168) & 0x80000000) != 0 && !*(v33 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v34 = *(a2 + 384);
    v52 = 134349056;
    v53 = v34;
    v35 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,roadWithAdustment,number of particles are 0", &v52, 12);
    goto LABEL_77;
  }

  *(a2 + 688) = 0u;
  if (*(a2 + 640))
  {
    if (*(a2 + 256))
    {
      v50 = 0;
      v51 = 0.0;
      sub_19BA0C3BC((a1 + 168), &v51, &v50, *(a2 + 664), *(a2 + 672), *(a2 + 448), *(a2 + 680), *(a2 + 432), *(a2 + 440));
      v4 = *(a2 + 256);
      v5 = v4 != 0;
      if (v4)
      {
        v6 = *(v4 + 20);
        v7 = 0.5;
        v8 = 1.0;
        if (v6 != 9)
        {
          v9 = *(v4 + 72);
          if (v9 != 6 && v9 != 255)
          {
            v10 = *(v4 + 96);
            if (v10 < 0.000001)
            {
              v10 = 1.0;
              if ((v6 & 0xFFFFFFFE) != 8)
              {
                v10 = sub_19B988DA8(v6, *(v4 + 16));
              }
            }

            v8 = v10 + 1.0;
            v7 = v10 * 0.5 + 1.0;
          }
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v11 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v12 = *(a2 + 384);
          v13 = *(a2 + 256);
          v14 = *(v13 + 20);
          LODWORD(v13) = *(v13 + 16);
          *buf = 134350080;
          v61 = v12;
          v62 = 1026;
          *v63 = v14;
          *&v63[4] = 1026;
          *&v63[6] = v13;
          v64 = 2050;
          v65 = v8;
          v66 = 2050;
          v67 = v51;
          _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,frc,%{public}d,oneway,%{public}d,roadWidth,%{public}.1lf,acrossTrack,%{public}.3lf", buf, 0x2Cu);
        }

        v15 = sub_19B87DD40();
        if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v16 = *(a2 + 384);
          v17 = *(a2 + 256);
          v18 = *(v17 + 20);
          LODWORD(v17) = *(v17 + 16);
          v52 = 134350080;
          v53 = v16;
          v54 = 1026;
          *v55 = v18;
          *&v55[4] = 1026;
          *&v55[6] = v17;
          v56 = 2050;
          v57 = v8;
          v58 = 2050;
          v59 = v51;
          v19 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,frc,%{public}d,oneway,%{public}d,roadWidth,%{public}.1lf,acrossTrack,%{public}.3lf", &v52, 44);
          sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::adjustSolutionforRoadWidth(MMFilterData &)", "CoreLocation: %s\n", v19);
          if (v19 != buf)
          {
            free(v19);
          }
        }

        if (v8 >= 0.000001)
        {
          v20 = *(a2 + 528);
          v48 = *(a2 + 536);
          v49 = v20;
          v21 = *(a1 + 1872);
          if (v21 < 0.0 || vabdd_f64(*(a2 + 400), v21) > 6.0)
          {
            v22 = *(a2 + 256);
            if (!v22 || (*(v22 + 20) & 0xFFFFFFFE) != 8)
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v23 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                v24 = v8 + *(a1 + 16);
                *buf = 134349312;
                v61 = v8;
                v62 = 2050;
                *v63 = v24;
                _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_DEBUG, "CLMMPED,Road width inflated from,%{public}.1lf,to,%{public}.1lf", buf, 0x16u);
              }

              v25 = sub_19B87DD40();
              if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                v26 = v8 + *(a1 + 16);
                v52 = 134349312;
                v53 = v8;
                v54 = 2050;
                *v55 = v26;
                v27 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,Road width inflated from,%{public}.1lf,to,%{public}.1lf", &v52, 22);
                sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::adjustSolutionforRoadWidth(MMFilterData &)", "CoreLocation: %s\n", v27);
                if (v27 != buf)
                {
                  free(v27);
                }
              }

              v7 = v7 + *(a1 + 16) * 0.5;
            }
          }

          v28 = fabs(v51);
          if (v28 >= v7)
          {
            if (v51 >= 0.0)
            {
              v47 = -(v28 - v7);
            }

            else
            {
              v47 = v28 - v7;
            }

            sub_19BA0C0F8((a1 + 168), &v49, &v48, *(a2 + 432), *(a2 + 440), *(a2 + 448), *(a2 + 680), v47);
            *(a2 + 656) = 2;
            v30 = v48;
            v29 = v49;
            *(a2 + 688) = v49;
            *(a2 + 696) = v30;
          }

          else
          {
            v29 = *(a2 + 432);
            v30 = *(a2 + 440);
          }

          *(a2 + 528) = v29;
          *(a2 + 536) = v30;
        }
      }

      return v5;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v41 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v42 = *(a2 + 384);
      *buf = 134349056;
      v61 = v42;
      _os_log_impl(&dword_19B873000, v41, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,roadWithAdustment,road is nullptr", buf, 0xCu);
    }

    v43 = sub_19B87DD40();
    if ((*(v43 + 160) & 0x80000000) != 0 && (*(v43 + 164) & 0x80000000) != 0 && (*(v43 + 168) & 0x80000000) != 0 && !*(v43 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v44 = *(a2 + 384);
    v52 = 134349056;
    v53 = v44;
    v35 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,roadWithAdustment,road is nullptr", &v52, 12);
LABEL_77:
    v45 = v35;
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::adjustSolutionforRoadWidth(MMFilterData &)", "CoreLocation: %s\n", v35);
    if (v45 != buf)
    {
      free(v45);
    }

    return 0;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v36 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v37 = *(a2 + 384);
    *buf = 134349056;
    v61 = v37;
    _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,roadWithAdustment,snap invalid or frc = 9", buf, 0xCu);
  }

  v38 = sub_19B87DD40();
  if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v39 = *(a2 + 384);
    v52 = 134349056;
    v53 = v39;
    v40 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,roadWithAdustment,snap invalid or frc = 9", &v52, 12);
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::adjustSolutionforRoadWidth(MMFilterData &)", "CoreLocation: %s\n", v40);
    if (v40 != buf)
    {
      free(v40);
    }
  }

  return 1;
}

uint64_t sub_19BA2CCC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v186 = *MEMORY[0x1E69E9840];
  *(a1 + 1976) = 0u;
  *(a1 + 1992) = 0u;
  *(a1 + 2008) = 0u;
  *(a1 + 2024) = 0u;
  *(a1 + 2037) = 0;
  *(a1 + 1968) = 0xBFF0000000000000;
  *(a1 + 2048) = 0;
  *(a1 + 2056) = 0xBFF0000000000000;
  *(a1 + 2064) = 0xBFF0000000000000;
  *v108 = 0xBFF0000000000000;
  *v109 = 0;
  memset(&v108[8], 0, 69);
  __asm { FMOV            V0.2D, #-1.0 }

  *&v109[8] = _Q0;
  if (*(a3 + 248) > 0.0)
  {
    v12 = *(a2 + 384);
    v107 = v12;
    v13 = *(a2 + 400);
    v14 = -1.0;
    if (v13 >= 0.0)
    {
      v15 = *(a3 + 264);
      _NF = v15 < 0.0;
      v14 = vabdd_f64(v13, v15);
      if (_NF)
      {
        v14 = -1.0;
      }
    }

    if (*(a2 + 256))
    {
      if (v14 <= 0.0)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v21 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          v149 = v12;
          _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,invalid timeDiff,DOT", buf, 0xCu);
        }

        v22 = sub_19B87DD40();
        if ((*(v22 + 160) & 0x80000000) != 0 && (*(v22 + 164) & 0x80000000) != 0 && (*(v22 + 168) & 0x80000000) != 0 && !*(v22 + 152))
        {
          return 0;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v110 = 134349056;
        v111 = v12;
        v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,invalid timeDiff,DOT", &v110, 12);
        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateDirectionOfTravelAssistance(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v18);
      }

      else
      {
        if (v14 > 1.5)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v16 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            v149 = v12;
            _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,timeDiff too large,DOT", buf, 0xCu);
          }

          v17 = sub_19B87DD40();
          if (*(v17 + 160) <= 1 && *(v17 + 164) <= 1 && *(v17 + 168) <= 1 && !*(v17 + 152))
          {
            return 0;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v110 = 134349056;
          v111 = v12;
          v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,timeDiff too large,DOT", &v110, 12);
          sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateDirectionOfTravelAssistance(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v18);
          goto LABEL_52;
        }

        if (*(a2 + 640) != 1 || *(a2 + 641) == 1)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v23 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            v149 = v12;
            _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf, no DOT, currentCrumb invalid", buf, 0xCu);
          }

          v24 = sub_19B87DD40();
          if (*(v24 + 160) <= 1 && *(v24 + 164) <= 1 && *(v24 + 168) <= 1 && !*(v24 + 152))
          {
            return 0;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v110 = 134349056;
          v111 = v12;
          v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf, no DOT, currentCrumb invalid", &v110, 12);
          sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateDirectionOfTravelAssistance(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v18);
          goto LABEL_52;
        }

        if (*(a3 + 504) != 1 || *(a3 + 505) == 1)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v26 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            v149 = v12;
            _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf, no DOT, priorCrumb invalid", buf, 0xCu);
          }

          v27 = sub_19B87DD40();
          if (*(v27 + 160) <= 1 && *(v27 + 164) <= 1 && *(v27 + 168) <= 1 && !*(v27 + 152))
          {
            return 0;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v110 = 134349056;
          v111 = v12;
          v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf, no DOT, priorCrumb invalid", &v110, 12);
          sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateDirectionOfTravelAssistance(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v18);
          goto LABEL_52;
        }

        v28 = *(a1 + 2272);
        if (v28 > 0.0 && vabdd_f64(v13, v28 + -1.0) < 0.9)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v29 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            v149 = v12;
            _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf, no DOT,feedback interval check", buf, 0xCu);
          }

          v30 = sub_19B87DD40();
          if (*(v30 + 160) <= 1 && *(v30 + 164) <= 1 && *(v30 + 168) <= 1 && !*(v30 + 152))
          {
            return 0;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v110 = 134349056;
          v111 = v12;
          v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf, no DOT,feedback interval check", &v110, 12);
          sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateDirectionOfTravelAssistance(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v18);
          goto LABEL_52;
        }

        if (*(a1 + 1064) == 1 && *(a1 + 1072) < 36.0)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v31 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v32 = *(a1 + 1064);
            v33 = *(a1 + 1072);
            *buf = 134349568;
            v149 = v12;
            v150 = 1026;
            *v151 = v32;
            *&v151[4] = 2050;
            *&v151[6] = v33;
            _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf, no DOT, too close to prior intersection,transitiondetected,%{public}d,dist,%{public}.2lf", buf, 0x1Cu);
          }

          v34 = sub_19B87DD40();
          if (*(v34 + 160) <= 1 && *(v34 + 164) <= 1 && *(v34 + 168) <= 1 && !*(v34 + 152))
          {
            return 0;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v35 = *(a1 + 1064);
          v36 = *(a1 + 1072);
          v110 = 134349568;
          v111 = v12;
          v112 = 1026;
          *v113 = v35;
          *&v113[4] = 2050;
          *&v113[6] = v36;
          v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf, no DOT, too close to prior intersection,transitiondetected,%{public}d,dist,%{public}.2lf", &v110, 28);
          sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateDirectionOfTravelAssistance(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v18);
          goto LABEL_52;
        }

        v37 = fmod(*(a2 + 544) - *(a2 + 680), 360.0);
        if (v37 < 0.0)
        {
          v37 = v37 + 360.0;
        }

        if (v37 > 180.0)
        {
          v37 = v37 + -360.0;
        }

        if (fabs(v37) > 1.0)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v38 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            v149 = v12;
            _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf, no DOT, course not aligned to full snap", buf, 0xCu);
          }

          v39 = sub_19B87DD40();
          if (*(v39 + 160) <= 1 && *(v39 + 164) <= 1 && *(v39 + 168) <= 1 && !*(v39 + 152))
          {
            return 0;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v110 = 134349056;
          v111 = v12;
          v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf, no DOT, course not aligned to full snap", &v110, 12);
          sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateDirectionOfTravelAssistance(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v18);
          goto LABEL_52;
        }

        v106 = -1.0;
        if (sub_19BA206AC(&v107, (a2 + 376), (a1 + 168), &v106, *(a3 + 528), *(a3 + 536), *(a3 + 544)))
        {
          v105 = 70.0;
          sub_19B973CD8(v104, a2 + 256);
          v40 = sub_19BA20CFC(a1, v104, a2 + 376, &v105);
          sub_19B966FCC(v104);
          if (v40)
          {
            return 0;
          }

          sub_19B973CD8(&v101, a2 + 256);
          sub_19B8759E8(v99, "lookBehindParticle");
          sub_19B8759E8(__p, "currentCrumb");
          v41 = sub_19BA1FA38(a1, v99, __p, &v101, (a2 + 376), &v106, -15.0);
          if (v98 < 0)
          {
            operator delete(__p[0]);
          }

          if (v100 < 0)
          {
            operator delete(v99[0]);
          }

          if (v41)
          {
            sub_19B8759E8(v95, "Start");
            v42 = sub_19B8D72F4(a2 + 376, (a1 + 168), v95, &v108[8], &v108[16], v102, v103);
            if (v96 < 0)
            {
              operator delete(v95[0]);
            }

            if (v42)
            {
              sub_19BA0C01C((a1 + 168), *(a2 + 288), *(a2 + 296), v102, v103, *(a2 + 448));
              v44 = v43;
              sub_19B973CD8(v92, a2 + 256);
              v45 = *(a2 + 472);
              if (v45 >= 0.0)
              {
                v48 = fabs(v45);
              }

              else
              {
                v46 = *(a1 + 208);
                if (v46)
                {
                  v47 = (*(*v46 + 104))(v46);
                  v48 = 8.32;
                  if ((v47 & 1) == 0)
                  {
                    v48 = 3.0;
                  }
                }

                else
                {
                  v48 = 3.0;
                }
              }

              v54 = v105;
              v55 = v48;
              v56 = v105 - v48;
              if (v105 - v48 >= 18.0)
              {
                sub_19B8759E8(v90, "predictedParticle");
                sub_19B8759E8(v88, "currentCrumb");
                v60 = sub_19BA1FA38(a1, v90, v88, v92, (a2 + 376), &v106, v55);
                if (v89 < 0)
                {
                  operator delete(v88[0]);
                }

                if (v91 < 0)
                {
                  operator delete(v90[0]);
                }

                if ((v60 & 1) == 0)
                {
                  goto LABEL_213;
                }

                *&v108[24] = v94;
                v87 = 0xBFF0000000000000;
                sub_19BA0D194(v92[0], &v108[64], &v87);
                v61 = fmax(*&v108[64], 15.0);
                if (v54 > v61 + 1.0)
                {
                  sub_19B973CD8(v86, a2 + 256);
                  if (v54 - v61 >= v55 + 15.0)
                  {
                    v62 = v55 + 15.0;
                  }

                  else
                  {
                    v62 = v54 - v61;
                  }

                  sub_19B8759E8(v84, "lookAheadParticle");
                  sub_19B8759E8(v82, "currentCrumb");
                  v63 = sub_19BA1FA38(a1, v84, v82, v86, (a2 + 376), &v106, v62);
                  if (v83 < 0)
                  {
                    operator delete(v82[0]);
                  }

                  if (v85 < 0)
                  {
                    operator delete(v84[0]);
                  }

                  if ((v63 & 1) == 0)
                  {
                    goto LABEL_219;
                  }

                  v64 = fmin(v44, 15.0);
                  v65 = v106;
                  if (v106 < 3.0)
                  {
                    v65 = 3.0;
                  }

                  *&v108[40] = v64 + v62;
                  *&v108[56] = v65;
                  sub_19B8759E8(v80, "Predicted");
                  v66 = sub_19B8D72F4(a2 + 376, (a1 + 168), v80, &v108[24], &v108[32], *&v108[24], *&v108[32]);
                  if (v81 < 0)
                  {
                    operator delete(v80[0]);
                  }

                  if (v66)
                  {
                    v67 = *(a2 + 384) + 1.0;
                    *&v108[48] = v93;
                    *v108 = v67;
                    __asm { FMOV            V1.2D, #1.0 }

                    *&v109[8] = vaddq_f64(*(a2 + 392), _Q1);
                    v108[73] = 0;
                    v108[74] = *(v92[0] + 17);
                    v108[72] = *(v92[0] + 18);
                    v108[75] = *(v92[0] + 19);
                    v108[76] = *(a2 + 496) == 0;
                    *v109 = 2;
                    v69 = *(a1 + 208);
                    if (v69 && (*(*v69 + 104))(v69))
                    {
                      *v109 = 3;
                    }

                    v70 = *v109;
                    *(a1 + 2032) = *&v108[64];
                    *(a1 + 2048) = v70;
                    *(a1 + 2064) = *&v109[16];
                    v71 = *&v108[16];
                    *(a1 + 1968) = *v108;
                    *(a1 + 1984) = v71;
                    v72 = *&v108[48];
                    *(a1 + 2000) = *&v108[32];
                    *(a1 + 2016) = v72;
                    *(a1 + 2272) = *&v109[16];
                    if (qword_1EAFE46D0 != -1)
                    {
                      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                    }

                    v73 = off_1EAFE4708;
                    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                    {
                      v74 = *(a2 + 472);
                      *buf = 134353921;
                      v149 = v12;
                      v150 = 2050;
                      *v151 = *v108;
                      *&v151[8] = 2053;
                      *&v151[10] = *&v108[24];
                      v152 = 2053;
                      v153 = *&v108[32];
                      v154 = 2050;
                      v155 = *&v108[48];
                      v156 = 2050;
                      v157 = *&v108[56];
                      v158 = 2050;
                      v159 = *&v108[64];
                      v160 = 2053;
                      v161 = *&v108[8];
                      v162 = 2053;
                      v163 = *&v108[16];
                      v164 = 2050;
                      v165 = *&v108[40];
                      v166 = 2050;
                      v167 = v74;
                      v168 = 1026;
                      v169 = v108[73];
                      v170 = 1026;
                      v171 = v108[74];
                      v172 = 1026;
                      v173 = v108[72];
                      v174 = 1026;
                      v175 = v108[75];
                      v176 = 2050;
                      v177 = v61;
                      v178 = 1026;
                      v179 = v108[76];
                      v180 = 2050;
                      v181 = *&v109[16];
                      v182 = 2050;
                      v183 = v64;
                      v184 = 1026;
                      v185 = *v109;
                      _os_log_impl(&dword_19B873000, v73, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,DOT,%{public}.1lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,course,%{public}.1lf,courseUnc,%{public}.1lf,rw,%{public}.1lf,startLat,%{sensitive}.7lf,startLon,%{sensitive}.7lf,length,%{public}.1lf,speed,%{public}.3lf,isOneWay,%{public}d,isRailWay,%{public}d,isTunnel,%{public}d,isBridge,%{public}d,distFromIntersection,%{public}.1lf,isFreeway,%{public}d,machContTime,%{public}.3lf,lookBehindDist,%{public}.2lf,type,%{public}d", buf, 0xB2u);
                    }

                    v75 = sub_19B87DD40();
                    if (*(v75 + 160) > 1 || *(v75 + 164) > 1 || *(v75 + 168) > 1 || *(v75 + 152))
                    {
                      bzero(buf, 0x65CuLL);
                      if (qword_1EAFE46D0 != -1)
                      {
                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                      }

                      v76 = *(a2 + 472);
                      v110 = 134353921;
                      v111 = v107;
                      v112 = 2050;
                      *v113 = *v108;
                      *&v113[8] = 2053;
                      *&v113[10] = *&v108[24];
                      v114 = 2053;
                      v115 = *&v108[32];
                      v116 = 2050;
                      v117 = *&v108[48];
                      v118 = 2050;
                      v119 = *&v108[56];
                      v120 = 2050;
                      v121 = *&v108[64];
                      v122 = 2053;
                      v123 = *&v108[8];
                      v124 = 2053;
                      v125 = *&v108[16];
                      v126 = 2050;
                      v127 = *&v108[40];
                      v128 = 2050;
                      v129 = v76;
                      v130 = 1026;
                      v131 = v108[73];
                      v132 = 1026;
                      v133 = v108[74];
                      v134 = 1026;
                      v135 = v108[72];
                      v136 = 1026;
                      v137 = v108[75];
                      v138 = 2050;
                      v139 = v61;
                      v140 = 1026;
                      v141 = v108[76];
                      v142 = 2050;
                      v143 = *&v109[16];
                      v144 = 2050;
                      v145 = v64;
                      v146 = 1026;
                      v147 = *v109;
                      v77 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf,DOT,%{public}.1lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,course,%{public}.1lf,courseUnc,%{public}.1lf,rw,%{public}.1lf,startLat,%{sensitive}.7lf,startLon,%{sensitive}.7lf,length,%{public}.1lf,speed,%{public}.3lf,isOneWay,%{public}d,isRailWay,%{public}d,isTunnel,%{public}d,isBridge,%{public}d,distFromIntersection,%{public}.1lf,isFreeway,%{public}d,machContTime,%{public}.3lf,lookBehindDist,%{public}.2lf,type,%{public}d", &v110, 178);
                      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateDirectionOfTravelAssistance(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v77);
                      if (v77 != buf)
                      {
                        free(v77);
                      }
                    }

                    v3 = 1;
                  }

                  else
                  {
LABEL_219:
                    v3 = 0;
                  }

                  sub_19B966FCC(v86);
                  goto LABEL_214;
                }

                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                v78 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 134349056;
                  v149 = v12;
                  _os_log_impl(&dword_19B873000, v78, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf, no DOT, current particle within the stopDistanceFromIntersection", buf, 0xCu);
                }

                v79 = sub_19B87DD40();
                if (*(v79 + 160) <= 1 && *(v79 + 164) <= 1 && *(v79 + 168) <= 1 && !*(v79 + 152))
                {
LABEL_213:
                  v3 = 0;
LABEL_214:
                  sub_19B966FCC(v92);
                  goto LABEL_215;
                }

                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                v110 = 134349056;
                v111 = v12;
                v59 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf, no DOT, current particle within the stopDistanceFromIntersection", &v110, 12);
                sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateDirectionOfTravelAssistance(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v59);
              }

              else
              {
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                v57 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 134349312;
                  v149 = v12;
                  v150 = 2050;
                  *v151 = v56;
                  _os_log_impl(&dword_19B873000, v57, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf, no DOT, predicted point is too close to intersection,dist,%{public}.2lf", buf, 0x16u);
                }

                v58 = sub_19B87DD40();
                if (*(v58 + 160) <= 1 && *(v58 + 164) <= 1 && *(v58 + 168) <= 1 && !*(v58 + 152))
                {
                  goto LABEL_213;
                }

                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                v110 = 134349312;
                v111 = v12;
                v112 = 2050;
                *v113 = v56;
                v59 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf, no DOT, predicted point is too close to intersection,dist,%{public}.2lf", &v110, 22);
                sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateDirectionOfTravelAssistance(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v59);
              }

              if (v59 != buf)
              {
                free(v59);
              }

              goto LABEL_213;
            }

            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            v51 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134349056;
              v149 = v12;
              _os_log_impl(&dword_19B873000, v51, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf, no DOT, computeSnapCoordinatesFromRawGPSCoordinates lookBehind returned false", buf, 0xCu);
            }

            v52 = sub_19B87DD40();
            if (*(v52 + 160) > 1 || *(v52 + 164) > 1 || *(v52 + 168) > 1 || *(v52 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v110 = 134349056;
              v111 = v12;
              v53 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf, no DOT, computeSnapCoordinatesFromRawGPSCoordinates lookBehind returned false", &v110, 12);
              sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateDirectionOfTravelAssistance(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v53);
              if (v53 != buf)
              {
                free(v53);
              }
            }
          }

          v3 = 0;
LABEL_215:
          sub_19B966FCC(&v101);
          return v3;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v49 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          v149 = v12;
          _os_log_impl(&dword_19B873000, v49, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf, no DOT, priorCrumb location or course diverged", buf, 0xCu);
        }

        v50 = sub_19B87DD40();
        if (*(v50 + 160) <= 1 && *(v50 + 164) <= 1 && *(v50 + 168) <= 1 && !*(v50 + 152))
        {
          return 0;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v110 = 134349056;
        v111 = v12;
        v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%{public}.1lf, no DOT, priorCrumb location or course diverged", &v110, 12);
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateDirectionOfTravelAssistance(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v18);
      }
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v19 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        v149 = v12;
        _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,invalid bestParticle road,DOT", buf, 0xCu);
      }

      v20 = sub_19B87DD40();
      if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v110 = 134349056;
      v111 = v12;
      v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%{public}.1lf,Unexpected,invalid bestParticle road,DOT", &v110, 12);
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateDirectionOfTravelAssistance(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v18);
    }

LABEL_52:
    if (v18 != buf)
    {
      free(v18);
    }

    return 0;
  }

  return v3;
}
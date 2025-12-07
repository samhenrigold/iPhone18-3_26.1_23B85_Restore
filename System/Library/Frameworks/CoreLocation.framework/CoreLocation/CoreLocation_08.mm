void sub_19B9862D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_19B966FCC(&a15);
  sub_19B966FCC(&a30);
  sub_19B966FCC(&a47);
  if (v47)
  {
    sub_19B8750F8(v47);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19B9863AC(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if (*(a1 + 3712) != 1 || *(a1 + 1224) >= 22.222 || *(a1 + 1248) < 2)
  {
    return 0;
  }

  v25 = 0x4056800000000000;
  v4 = *(a1 + 1208);
  v5 = 0x4049000000000000;
  if (v4 <= 10.0)
  {
    goto LABEL_7;
  }

  if (v4 < 50.0)
  {
    v5 = 0x4052C00000000000;
LABEL_7:
    v25 = v5;
  }

  v24 = 1;
  *buf = 0x4024000000000000;
  if (!sub_19B979230(a1, &v25, buf, &v24) || (v24 & 1) != 0)
  {
    return 0;
  }

  *a2 = *(a1 + 3720);
  *(a2 + 1) = *(a1 + 3744);
  a2[3] = 0x4059000000000000;
  a2[4] = *(a1 + 3784);
  a2[5] = *(a1 + 3768);
  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v6 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v7 = *a2;
      v8 = a2[1];
      v9 = a2[2];
      v10 = a2[3];
      v11 = a2[4];
      v12 = a2[5];
      v13 = *(a1 + 1432);
      *buf = 134350593;
      *&buf[4] = v7;
      v41 = 2053;
      v42 = v8;
      v43 = 2053;
      v44 = v9;
      v45 = 2050;
      v46 = v10;
      v47 = 2050;
      v48 = v11;
      v49 = 2050;
      v50 = v12;
      v51 = 2050;
      v52 = v13;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "CLMM,MMPA,%{public}.1lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,a,%{public}.2lf,b,%{public}.2lf,az,%{public}.3lf,course,%{public}.3lf", buf, 0x48u);
    }

    v14 = sub_19B87DD40();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v15 = *a2;
      v16 = a2[1];
      v17 = a2[2];
      v18 = a2[3];
      v19 = a2[4];
      v20 = a2[5];
      v21 = *(a1 + 1432);
      v26 = 134350593;
      v27 = v15;
      v28 = 2053;
      v29 = v16;
      v30 = 2053;
      v31 = v17;
      v32 = 2050;
      v33 = v18;
      v34 = 2050;
      v35 = v19;
      v36 = 2050;
      v37 = v20;
      v38 = 2050;
      v39 = v21;
      v22 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,MMPA,%{public}.1lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,a,%{public}.2lf,b,%{public}.2lf,az,%{public}.3lf,course,%{public}.3lf", &v26, 72);
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getPosAssistanceForGps(CLGpsAssistant_Type::MapMatchedPositionAssistance &)", "CoreLocation: %s\n", v22);
      if (v22 != buf)
      {
        free(v22);
      }
    }
  }

  return 1;
}

void sub_19B9866E4(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    v4 = *(i - 48);
    if (v4)
    {
      sub_19B8750F8(v4);
    }
  }

  a1[1] = v2;
}

BOOL sub_19B986730(uint64_t a1, void *a2, float64x2_t *a3, uint64_t a4, uint64_t *a5, int a6, double a7)
{
  v146 = *MEMORY[0x1E69E9840];
  sub_19B9866E4(a5);
  if (*(a4 + 16) == *(a4 + 8) || ((v14 = *(a4 + 40), v15 = vabdd_f64(*(a1 + 24), v14), v14 >= 0.0) ? (v16 = v15 <= 6.0) : (v16 = 0), !v16))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v17 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 8);
      v19 = 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 16) - *(a4 + 8)) >> 3);
      *buf = 134349312;
      *&buf[4] = v18;
      v142 = 2050;
      v143 = v19;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routehint timed out or empty, segments,%{public}lu", buf, 0x16u);
    }

    v20 = sub_19B87DD40();
    if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v21 = *(a1 + 8);
      v22 = 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 16) - *(a4 + 8)) >> 3);
      *v138 = 134349312;
      *&v138[4] = v21;
      *&v138[12] = 2050;
      *&v138[14] = v22;
      v23 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,routehint timed out or empty, segments,%{public}lu", v138, 22);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::determineRouteHintRoadVectors(const CLMapCrumb &, const CLMapGeometryPtr, CLDistanceCalc &, CLMapsRouteHintData &, std::vector<CLMapGeometry::DistanceQueryResult> &, double, BOOL)", "CoreLocation: %s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    v24 = 0;
    *(a4 + 16) = *(a4 + 8);
    return v24;
  }

  if (!*a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v32 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v33 = *(a1 + 8);
      *buf = 134349056;
      *&buf[4] = v33;
      _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,Unexpected,invalid geometry pointer, determineRouteHintRoadVectors", buf, 0xCu);
    }

    v34 = sub_19B87DD40();
    if ((*(v34 + 160) & 0x80000000) != 0 && (*(v34 + 164) & 0x80000000) != 0 && (*(v34 + 168) & 0x80000000) != 0 && !*(v34 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v35 = *(a1 + 8);
    *v138 = 134349056;
    *&v138[4] = v35;
    v31 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,Unexpected,invalid geometry pointer, determineRouteHintRoadVectors", v138, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcherCommon::determineRouteHintRoadVectors(const CLMapCrumb &, const CLMapGeometryPtr, CLDistanceCalc &, CLMapsRouteHintData &, std::vector<CLMapGeometry::DistanceQueryResult> &, double, BOOL)", "CoreLocation: %s\n", v31);
    goto LABEL_142;
  }

  if (a6)
  {
    if (!sub_19B8B9318(a4))
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v25 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        v26 = *(a1 + 8);
        v27 = 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 16) - *(a4 + 8)) >> 3);
        *buf = 134349312;
        *&buf[4] = v26;
        v142 = 2050;
        v143 = v27;
        _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,routeHint road search,isConnectivityGood,poorConnectivity caused by radar:58817500,%{public}lu,file radar if 58817500 is already fixed", buf, 0x16u);
      }

      v28 = sub_19B87DD40();
      if ((*(v28 + 160) & 0x80000000) != 0 && (*(v28 + 164) & 0x80000000) != 0 && (*(v28 + 168) & 0x80000000) != 0 && !*(v28 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v29 = *(a1 + 8);
      v30 = 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 16) - *(a4 + 8)) >> 3);
      *v138 = 134349312;
      *&v138[4] = v29;
      *&v138[12] = 2050;
      *&v138[14] = v30;
      v31 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,routeHint road search,isConnectivityGood,poorConnectivity caused by radar:58817500,%{public}lu,file radar if 58817500 is already fixed", v138, 22);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcherCommon::determineRouteHintRoadVectors(const CLMapCrumb &, const CLMapGeometryPtr, CLDistanceCalc &, CLMapsRouteHintData &, std::vector<CLMapGeometry::DistanceQueryResult> &, double, BOOL)", "CoreLocation: %s\n", v31);
LABEL_142:
      if (v31 != buf)
      {
        free(v31);
      }

      return 0;
    }
  }

  else if (!sub_19B8B95C8(a4))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v89 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v90 = *(a1 + 8);
      v91 = 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 16) - *(a4 + 8)) >> 3);
      *buf = 134349312;
      *&buf[4] = v90;
      v142 = 2050;
      v143 = v91;
      _os_log_impl(&dword_19B873000, v89, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,routeHint road search,getConnectedRouteSegments,poorConnectivity caused by radar:58817500,%{public}lu,file radar if 58817500 is already fixed", buf, 0x16u);
    }

    v92 = sub_19B87DD40();
    if ((*(v92 + 160) & 0x80000000) != 0 && (*(v92 + 164) & 0x80000000) != 0 && (*(v92 + 168) & 0x80000000) != 0 && !*(v92 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v93 = *(a1 + 8);
    v94 = 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 16) - *(a4 + 8)) >> 3);
    *v138 = 134349312;
    *&v138[4] = v93;
    *&v138[12] = 2050;
    *&v138[14] = v94;
    v31 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,routeHint road search,getConnectedRouteSegments,poorConnectivity caused by radar:58817500,%{public}lu,file radar if 58817500 is already fixed", v138, 22);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcherCommon::determineRouteHintRoadVectors(const CLMapCrumb &, const CLMapGeometryPtr, CLDistanceCalc &, CLMapsRouteHintData &, std::vector<CLMapGeometry::DistanceQueryResult> &, double, BOOL)", "CoreLocation: %s\n", v31);
    goto LABEL_142;
  }

  v131 = &v131;
  v132 = &v131;
  v133 = 0;
  if (((*(**a2 + 64))(*a2, &v131, a1, 1, a7) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v95 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v96 = *(a1 + 8);
      *buf = 134349056;
      *&buf[4] = v96;
      _os_log_impl(&dword_19B873000, v95, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,search, roadsWithinDistance returned false", buf, 0xCu);
    }

    v97 = sub_19B87DD40();
    if (*(v97 + 160) <= 1 && *(v97 + 164) <= 1 && *(v97 + 168) <= 1 && !*(v97 + 152))
    {
      goto LABEL_168;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v98 = *(a1 + 8);
    *v138 = 134349056;
    *&v138[4] = v98;
    v99 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,routeHints,search, roadsWithinDistance returned false", v138, 12);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::determineRouteHintRoadVectors(const CLMapCrumb &, const CLMapGeometryPtr, CLDistanceCalc &, CLMapsRouteHintData &, std::vector<CLMapGeometry::DistanceQueryResult> &, double, BOOL)", "CoreLocation: %s\n", v99);
    goto LABEL_166;
  }

  if (!v133)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v100 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v101 = *(a1 + 8);
      *buf = 134349056;
      *&buf[4] = v101;
      _os_log_impl(&dword_19B873000, v100, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,Unexpected, empty road list", buf, 0xCu);
    }

    v102 = sub_19B87DD40();
    if ((*(v102 + 160) & 0x80000000) != 0 && (*(v102 + 164) & 0x80000000) != 0 && (*(v102 + 168) & 0x80000000) != 0 && !*(v102 + 152))
    {
      goto LABEL_168;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v103 = *(a1 + 8);
    *v138 = 134349056;
    *&v138[4] = v103;
    v99 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,Unexpected, empty road list", v138, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcherCommon::determineRouteHintRoadVectors(const CLMapCrumb &, const CLMapGeometryPtr, CLDistanceCalc &, CLMapsRouteHintData &, std::vector<CLMapGeometry::DistanceQueryResult> &, double, BOOL)", "CoreLocation: %s\n", v99);
LABEL_166:
    if (v99 != buf)
    {
      free(v99);
    }

LABEL_168:
    v24 = 0;
    goto LABEL_189;
  }

  v115 = a1;
  v130[0] = 0;
  v130[1] = 0;
  v129 = v130;
  v36 = *(a4 + 8);
  v113 = *(a4 + 16);
  if (v36 == v113)
  {
    goto LABEL_188;
  }

  v114 = vdupq_n_s64(0x3E7AD7F29ABCAF48uLL);
  do
  {
    v126 = &v126;
    v127 = &v126;
    v128 = 0;
    v123 = &v123;
    v124 = &v123;
    v125 = 0;
    v37 = v132;
    if (v132 != &v131)
    {
      do
      {
        v38 = v37[2];
        if (*v36 == *v38)
        {
          *v134 = 0;
          v121 = 0;
          v122 = 0;
          v39 = v36[1];
          v40 = v36[2];
          v41 = v37[3];
          v118 = v38;
          v119 = v41;
          v120 = 0;
          if (v41)
          {
            atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v42 = sub_19B988DE8(a3, &v118, &v121, v134, v39, v40);
          if (v119)
          {
            sub_19B8750F8(v119);
          }

          v43 = v36[3];
          v44 = v36[4];
          v45 = v37[3];
          v116 = v37[2];
          v117 = v45;
          if (v45)
          {
            atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v46 = sub_19B988DE8(a3, &v116, &v120, &v122, v43, v44);
          if (v117)
          {
            sub_19B8750F8(v117);
          }

          if (v42)
          {
            sub_19B9117CC(&v126, (v37 + 2));
          }

          if (v46)
          {
            sub_19B9117CC(&v123, (v37 + 2));
          }
        }

        v37 = v37[1];
      }

      while (v37 != &v131);
      v47 = v127;
      if (v127 != &v126)
      {
        while (1)
        {
          v48 = v124;
          if (v124 != &v123)
          {
            break;
          }

LABEL_127:
          v47 = v47[1];
          if (v47 == &v126)
          {
            goto LABEL_130;
          }
        }

        v49 = 0;
        while (1)
        {
          while (1)
          {
            v50 = v47[2];
            if (v49)
            {
              goto LABEL_80;
            }

            v51 = *(v50 + 136);
            v52 = *(v50 + 144);
            v53 = 0uLL;
            v54 = 0uLL;
            if (v52 != v51)
            {
              v54 = v52[-1];
            }

            v56 = *(v48[2] + 136);
            v55 = *(v48[2] + 144);
            if (v55 != v56)
            {
              v53 = *v56;
            }

            v57 = vmovn_s64(vcgtq_f64(v114, vabdq_f64(v54, v53)));
            if ((vand_s8(v57, vdup_lane_s32(v57, 1)).u8[0] & 1) == 0)
            {
              break;
            }

            v58 = 1;
LABEL_72:
            v59 = 1;
LABEL_79:
            *(v47 + 36) = v58;
            *(v48 + 36) = v59;
LABEL_80:
            v63 = v47[3];
            if (v63)
            {
              atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
              v64 = *(v47 + 36);
              *v138 = 0;
              *&v138[8] = 0;
              v138[16] = 1;
              atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
              *v138 = *v50;
              v138[16] = v64;
              sub_19B8750F8(v63);
              sub_19B8750F8(v63);
            }

            else
            {
              v65 = *(v47 + 36);
              *v138 = 0;
              *&v138[8] = 0;
              *v138 = *v50;
              v138[16] = v65;
            }

            if (sub_19B98933C(&v129, v138))
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              v66 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                v67 = *(v115 + 8);
                v68 = *v47[2];
                *buf = 134349313;
                *&buf[4] = v67;
                v142 = 2049;
                v143 = v68;
                _os_log_impl(&dword_19B873000, v66, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,road search,road already present,start,%{private}lld", buf, 0x16u);
              }

              v69 = sub_19B87DD40();
              if (*(v69 + 160) <= 1 && *(v69 + 164) <= 1 && *(v69 + 168) <= 1 && !*(v69 + 152))
              {
                goto LABEL_112;
              }

              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              v70 = *(v115 + 8);
              v71 = *v47[2];
              *v137 = 134349313;
              *&v137[4] = v70;
              *&v137[12] = 2049;
              *&v137[14] = v71;
              v72 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,routeHints,road search,road already present,start,%{private}lld", v137, 22);
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::determineRouteHintRoadVectors(const CLMapCrumb &, const CLMapGeometryPtr, CLDistanceCalc &, CLMapsRouteHintData &, std::vector<CLMapGeometry::DistanceQueryResult> &, double, BOOL)", "CoreLocation: %s\n", v72);
              goto LABEL_110;
            }

            *buf = v138;
            *(sub_19B9893AC(&v129, v138, &unk_19BA897F0, buf) + 56) = 1;
            sub_19B9892D4(a5, (v47 + 2));
            v73 = v48[2];
            v74 = v48[3];
            if (v74)
            {
              atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
              v75 = *(v48 + 36);
              *v137 = 0;
              *&v137[8] = 0;
              v137[16] = 1;
              atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
              *v137 = *v73;
              v137[16] = v75;
              sub_19B8750F8(v74);
              sub_19B8750F8(v74);
            }

            else
            {
              v76 = *(v48 + 36);
              *v137 = 0;
              *&v137[8] = 0;
              *v137 = *v73;
              v137[16] = v76;
            }

            if (!sub_19B98933C(&v129, v137))
            {
              *buf = v137;
              *(sub_19B9893AC(&v129, v137, &unk_19BA897F0, buf) + 56) = 1;
              sub_19B9892D4(a5, (v48 + 2));
              goto LABEL_130;
            }

            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v77 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              v78 = *(v115 + 8);
              v79 = *v48[2];
              *buf = 134349313;
              *&buf[4] = v78;
              v142 = 2049;
              v143 = v79;
              _os_log_impl(&dword_19B873000, v77, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,road search,road already present,stop,%{private}lld", buf, 0x16u);
            }

            v80 = sub_19B87DD40();
            if (*(v80 + 160) > 1 || *(v80 + 164) > 1 || *(v80 + 168) > 1 || *(v80 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              v81 = *(v115 + 8);
              v82 = *v48[2];
              *v134 = 134349313;
              *&v134[4] = v81;
              v135 = 2049;
              v136 = v82;
              v72 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.1lf,routeHints,road search,road already present,stop,%{private}lld", v134, 22);
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::determineRouteHintRoadVectors(const CLMapCrumb &, const CLMapGeometryPtr, CLDistanceCalc &, CLMapsRouteHintData &, std::vector<CLMapGeometry::DistanceQueryResult> &, double, BOOL)", "CoreLocation: %s\n", v72);
LABEL_110:
              if (v72 != buf)
              {
                free(v72);
              }
            }

LABEL_112:
            v48 = v48[1];
            v49 = 1;
            if (v48 == &v123)
            {
              goto LABEL_130;
            }
          }

          v60 = 0uLL;
          v61 = 0uLL;
          if (v52 != v51)
          {
            v61 = v52[-1];
          }

          if (v55 != v56)
          {
            v60 = v55[-1];
          }

          v62 = vmovn_s64(vcgtq_f64(v114, vabdq_f64(v61, v60)));
          if (vand_s8(v62, vdup_lane_s32(v62, 1)).u8[0])
          {
            v59 = 0;
            v58 = 1;
            goto LABEL_79;
          }

          v83 = 0uLL;
          v84 = 0uLL;
          if (v52 != v51)
          {
            v84 = *v51;
          }

          if (v55 != v56)
          {
            v83 = *v56;
          }

          v85 = vmovn_s64(vcgtq_f64(v114, vabdq_f64(v84, v83)));
          if (vand_s8(v85, vdup_lane_s32(v85, 1)).u8[0])
          {
            v58 = 0;
            goto LABEL_72;
          }

          v86 = 0uLL;
          v87 = 0uLL;
          if (v52 != v51)
          {
            v87 = *v51;
          }

          if (v55 != v56)
          {
            v86 = v55[-1];
          }

          v88 = vmovn_s64(vcgtq_f64(v114, vabdq_f64(v87, v86)));
          if (vand_s8(v88, vdup_lane_s32(v88, 1)).u8[0])
          {
            v58 = 0;
            v59 = 0;
            goto LABEL_79;
          }

          v49 = 0;
          v48 = v48[1];
          if (v48 == &v123)
          {
            goto LABEL_127;
          }
        }
      }
    }

LABEL_130:
    sub_19B916DC0(&v123);
    sub_19B916DC0(&v126);
    v36 += 5;
  }

  while (v36 != v113);
  v104 = *(a4 + 16) == *(a4 + 8) || v133 == 0;
  if (!v104 && a5[1] == *a5)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v105 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v106 = *(v115 + 8);
      v107 = 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 16) - *(a4 + 8)) >> 3);
      *buf = 134349568;
      *&buf[4] = v106;
      v142 = 2050;
      v143 = v107;
      v144 = 2050;
      v145 = v133;
      _os_log_impl(&dword_19B873000, v105, OS_LOG_TYPE_DEBUG, "#Warning,CLMM,%{public}.1lf,routeHints,unable to find routeHints road,segments,%{public}lu,roadList,%{public}lu", buf, 0x20u);
    }

    v108 = sub_19B87DD40();
    if (*(v108 + 160) > 1 || *(v108 + 164) > 1 || *(v108 + 168) > 1 || *(v108 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v109 = *(v115 + 8);
      v110 = 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 16) - *(a4 + 8)) >> 3);
      *v138 = 134349568;
      *&v138[4] = v109;
      *&v138[12] = 2050;
      *&v138[14] = v110;
      v139 = 2050;
      v140 = v133;
      v111 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "#Warning,CLMM,%{public}.1lf,routeHints,unable to find routeHints road,segments,%{public}lu,roadList,%{public}lu", v138, 32);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::determineRouteHintRoadVectors(const CLMapCrumb &, const CLMapGeometryPtr, CLDistanceCalc &, CLMapsRouteHintData &, std::vector<CLMapGeometry::DistanceQueryResult> &, double, BOOL)", "CoreLocation: %s\n", v111);
      if (v111 != buf)
      {
        free(v111);
      }
    }
  }

LABEL_188:
  v24 = a5[1] != *a5;
  sub_19B8F3484(&v129, v130[0]);
LABEL_189:
  sub_19B916DC0(&v131);
  return v24;
}

void sub_19B988254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36)
{
  sub_19B8F3484(&a33, a34);
  sub_19B916DC0(&a36);
  _Unwind_Resume(a1);
}

void sub_19B9882F8(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 264)
  {
    v4 = *(i - 48);
    if (v4)
    {
      sub_19B8750F8(v4);
    }
  }

  a1[1] = v2;
}

void sub_19B988344(uint64_t a1, uint64_t a2)
{
  v24 = 0u;
  v25 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  memset(v32, 0, 27);
  memset(&v32[32], 0, 48);
  *&v23[14] = 0u;
  *v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  *__p = 0u;
  v17 = 0u;
  v16 = 0u;
  v13 = *(a1 + 80);
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  v4 = *(a1 + 120);
  v14 = *(a1 + 96);
  v15 = v3;
  *v23 = *(a1 + 160);
  v5 = *(a1 + 184);
  *&v23[16] = *(a1 + 176);
  v6 = *(a1 + 144);
  *(&v16 + 1) = *(a1 + 136);
  *&v17 = v2;
  *&v22 = v6;
  *(&v22 + 1) = v4;
  v7 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0xBFF0000000000000;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v33 = 0;
  v34 = 0xBFF0000000000000;
  v23[28] = *(a1 + 152);
  v9 = v5;
  v8 = vextq_s8(*(a1 + 192), *(a1 + 192), 8uLL);
  sub_19B9C138C(a1, &v7, a2);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[1]);
  }
}

void sub_19B988438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B988454(double *a1)
{
  a1[7] = 0.0;
  a1[8] = 0.0;
  a1[9] = 0.0;
  v1 = *(a1 + 11);
  v2 = *(a1 + 12);
  if (v1 != v2)
  {
    v4 = 0.0;
    v5 = 0.0;
    v6 = *(a1 + 11);
    do
    {
      if (*(v6 + 64) == 2)
      {
        v7 = *(v6 + 24);
        v4 = v4 + *v6 * v7;
        v5 = v5 + *(v6 + 16) * v7;
      }

      v6 += 72;
    }

    while (v6 != v2);
    v8 = v5 + 0.0;
    a1[7] = v4;
    a1[9] = v5 + 0.0;
    do
    {
      if (*(v1 + 64) != 2)
      {
        v9 = *(v1 + 24);
        v10 = *v1 * v9;
        if (v4 > 0.0)
        {
          v11 = log(v4);
          v12 = log(v10);
          v10 = exp(v11 + v12);
        }

        a1[7] = v10;
        v8 = v8 + *(v1 + 16) * v9;
        a1[9] = v8;
        v4 = v10;
      }

      v1 += 72;
    }

    while (v1 != v2);
  }
}

uint64_t sub_19B988540@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 1024);
  *a2 = *(result + 1016);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

double sub_19B988568(uint64_t a1)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 136) = _Q1;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0xBFF0000000000000;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 384) = 0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 467) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 544) = 0xBFF0000000000000;
  *(a1 + 536) = 0;
  *(a1 + 552) = 0;
  *(a1 + 688) = 0;
  *(a1 + 672) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 664) = 0;
  *(a1 + 692) = 1;
  *(a1 + 696) = 0;
  *(a1 + 752) = 0;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 334) = 0u;
  *(a1 + 639) = 0;
  *(a1 + 648) = 0u;
  *(a1 + 822) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  return result;
}

os_log_t sub_19B98865C()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

void sub_19B98868C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_19B9882F8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_19B9886E0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_19B9866E4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_19B988734(void ***a1)
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
        v4 -= 14;
        sub_19B988BB4(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_19B9887B8(uint64_t a1)
{
  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  return a1;
}

uint64_t sub_19B9887FC(uint64_t a1)
{
  if (*(a1 + 5087) < 0)
  {
    operator delete(*(a1 + 5064));
  }

  if (*(a1 + 807) < 0)
  {
    operator delete(*(a1 + 784));
  }

  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  v2 = *(a1 + 136);
  if (v2)
  {
    *(a1 + 144) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  return a1;
}

uint64_t sub_19B98887C(uint64_t a1)
{
  if (*(a1 + 5063) < 0)
  {
    operator delete(*(a1 + 5040));
  }

  if (*(a1 + 783) < 0)
  {
    operator delete(*(a1 + 760));
  }

  if (*(a1 + 351) < 0)
  {
    operator delete(*(a1 + 328));
  }

  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  return a1;
}

uint64_t sub_19B9888FC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    sub_19B8B8A40();
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

  v22 = a1;
  if (v6)
  {
    sub_19B988AB4(a1, v6);
  }

  v7 = 112 * v2;
  v19 = 0;
  v20 = v7;
  v21 = v7;
  v8 = *(a2 + 8);
  *v7 = *a2;
  *(v7 + 8) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 16) = v9;
  *(v7 + 32) = v10;
  v11 = *(a2 + 56);
  v12 = *(a2 + 65);
  *(v7 + 88) = 0;
  *(v7 + 65) = v12;
  *(v7 + 56) = v11;
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  sub_19B96775C((v7 + 88), *(a2 + 88), *(a2 + 96), 0x8E38E38E38E38E39 * ((*(a2 + 96) - *(a2 + 88)) >> 3));
  *&v21 = v21 + 112;
  v13 = a1[1];
  v14 = v20 + *a1 - v13;
  sub_19B988B10(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_19B988C08(&v19);
  return v18;
}

void sub_19B988A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_19B988C08(va);
  _Unwind_Resume(a1);
}

void sub_19B988AB4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void sub_19B988B10(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      *(v6 + 8) = 0;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 16) = v7;
      *(a4 + 32) = v8;
      v9 = *(v6 + 56);
      *(a4 + 65) = *(v6 + 65);
      *(a4 + 56) = v9;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 88) = 0;
      *(a4 + 88) = *(v6 + 88);
      *(a4 + 104) = *(v6 + 104);
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      v6 += 112;
      a4 += 112;
    }

    while (v6 != a3);
    do
    {
      sub_19B988BB4(v5);
      v5 += 14;
    }

    while (v5 != a3);
  }
}

void sub_19B988BB4(void *a1)
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
}

uint64_t sub_19B988C08(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 112;
    sub_19B988BB4((i - 112));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_19B988C58(uint64_t *a1, unint64_t a2, int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_19B988D6C(a1, a2);
  }

  return a1;
}

void sub_19B988D50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B988D6C(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_19B8F1D64(a1, a2);
  }

  sub_19B8B8A40();
}

float sub_19B988DA8(unsigned int a1, int a2)
{
  result = 7.4;
  if (a2)
  {
    result = 5.55;
  }

  if (a1 <= 7)
  {
    v3 = &unk_19BA8C964;
    if (a2)
    {
      v3 = &unk_19BA8C944;
    }

    return v3[a1];
  }

  return result;
}

BOOL sub_19B988DE8(float64x2_t *a1, uint64_t *a2, double *a3, double *a4, double a5, double a6)
{
  v47[204] = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *(*a2 + 136);
  v8 = *(*a2 + 144) - v7;
  *a3 = -1.0;
  *a4 = -1.0;
  if ((v8 >> 4) > 1)
  {
    v14 = *v7;
    v15 = v7[1];
    *buf = 0.0;
    v47[0] = 0.0;
    sub_19BA0BE88(a1, buf, v47, &v43, a5, a6, 0.0, v14, v15, 0.0);
    v16 = 0;
    v17 = *buf;
    v18 = v47[0];
    v19 = ((v8 >> 4) & 0x7FFFFFFF) - 1;
    v20 = 0.0;
    v21 = 0.0;
    while (1)
    {
      v22 = *(v6 + 136) + v16;
      v23 = *(v22 + 16);
      v24 = *(v22 + 24);
      v43 = 0.0;
      v44[0] = 0.0;
      sub_19BA0BE88(a1, &v43, v44, &v45, a5, a6, 0.0, v23, v24, 0.0);
      v25 = v43;
      v26 = v44[0];
      v27 = (v17 - v43) * (v17 - v43) + (v18 - v44[0]) * (v18 - v44[0]);
      v28 = 0.0 - v17;
      if (v27 < 0.001)
      {
        break;
      }

      v30 = ((0.0 - v18) * (v44[0] - v18) + v28 * (v43 - v17)) / v27;
      if (v30 >= 0.0)
      {
        if (v30 <= 1.0)
        {
          v29 = (0.0 - (v17 + (v43 - v17) * v30)) * (0.0 - (v17 + (v43 - v17) * v30));
          v31 = 0.0 - (v18 + (v44[0] - v18) * v30);
          goto LABEL_5;
        }

        v32 = (0.0 - v43) * (0.0 - v43) + (0.0 - v44[0]) * (0.0 - v44[0]);
        v30 = 1.0;
      }

      else
      {
        v32 = v28 * v28 + (0.0 - v18) * (0.0 - v18);
        v30 = 0.0;
      }

LABEL_10:
      v33 = sqrt(v27);
      v34 = sqrt(v32);
      if (*a3 < 0.0 || v34 < *a3)
      {
        *a3 = v34;
        v21 = v20 + v33 * v30;
      }

      v20 = v20 + v33;
      v16 += 16;
      v18 = v26;
      v17 = v25;
      if (!--v19)
      {
        v42 = v21 / v20;
        if (v20 < 0.001)
        {
          v42 = 0.0;
        }

        *a4 = v42;
        return *a3 < 0.03;
      }
    }

    v29 = v28 * v28;
    v30 = 0.0;
    v31 = 0.0 - v18;
LABEL_5:
    v32 = v29 + v31 * v31;
    goto LABEL_10;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
  }

  v35 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_DEBUG, "CLMM,findClosestPointOnRoad,CoordinateCount is <= 1", buf, 2u);
  }

  v36 = sub_19B87DD40();
  if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    LOWORD(v43) = 0;
    v37 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,findClosestPointOnRoad,CoordinateCount is <= 1", &v43, 2);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::findClosestPointOnRoad(CLDistanceCalc &, const int, const std::vector<Coordinate> &, const Coordinate &, double &, double &) [Coordinate = GEOLocationCoordinate2D]", "CoreLocation: %s\n", v37);
    if (v37 != buf)
    {
      free(v37);
    }
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
  }

  v38 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_ERROR, "#Warning CLMM, findClosestPointOnRoad returned false", buf, 2u);
  }

  v39 = sub_19B87DD40();
  if ((*(v39 + 160) & 0x80000000) == 0 || (*(v39 + 164) & 0x80000000) == 0 || (*(v39 + 168) & 0x80000000) == 0 || *(v39 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    LOWORD(v43) = 0;
    v40 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "#Warning CLMM, findClosestPointOnRoad returned false", &v43, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryCommon::isCoordinateOnRoadVector(CLDistanceCalc &, const double, const double, CLMapRoadPtr, double &, double &)", "CoreLocation: %s\n", v40);
    if (v40 != buf)
    {
      free(v40);
    }
  }

  return 0;
}

uint64_t sub_19B9892D4(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_19B9894D8(a1, a2);
  }

  else
  {
    v4 = *(a2 + 8);
    *v3 = *a2;
    *(v3 + 8) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(v3 + 16) = v5;
    *(v3 + 32) = v6;
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_19B98933C(uint64_t a1, uint64_t **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    result = 1;
    v4 = *a2;
    v5 = a2[1];
    do
    {
      v6 = v2[4];
      if (v4 == v6)
      {
        if (a2[2] & 1) != 0 && (v2[6])
        {
          v7 = v2[5];
          if (v5 >= v7)
          {
            if (v7 >= v5)
            {
              return result;
            }

LABEL_14:
            ++v2;
          }
        }

        else if ((a2[2] & 1) == 0)
        {
          if ((v2[6] & 1) == 0)
          {
            return result;
          }

          goto LABEL_14;
        }
      }

      else if (v4 >= v6)
      {
        if (v6 >= v4)
        {
          return result;
        }

        goto LABEL_14;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_19B9893AC(uint64_t **a1, uint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *sub_19B989450(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_19B989450(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 32);
        if (v6 == v9)
        {
          break;
        }

        if (v6 >= v9)
        {
          if (v9 >= v6)
          {
            goto LABEL_19;
          }

          goto LABEL_16;
        }

LABEL_13:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_19;
        }
      }

      if ((a3[2] & 1) == 0 || (v8[6] & 1) == 0)
      {
        if ((a3[2] & 1) == 0)
        {
          if ((v8[6] & 1) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_16;
        }

        goto LABEL_13;
      }

      v10 = v8[5];
      if (v7 < v10)
      {
        goto LABEL_13;
      }

      if (v10 >= v7)
      {
        goto LABEL_19;
      }

LABEL_16:
      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_19;
      }
    }
  }

  v8 = result;
LABEL_19:
  *a2 = v8;
  return result;
}

uint64_t sub_19B9894D8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_19B8B8A40();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_19B989638(a1, v6);
  }

  v7 = 56 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  v8 = *(a2 + 8);
  *v7 = *a2;
  *(v7 + 8) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  *(56 * v2 + 0x30) = *(a2 + 48);
  *(56 * v2 + 0x10) = v9;
  *(56 * v2 + 0x20) = v10;
  *&v19 = v7 + 56;
  v11 = a1[1];
  v12 = v7 + *a1 - v11;
  sub_19B989694(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_19B9897C4(&v17);
  return v16;
}

void sub_19B989624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_19B9897C4(va);
  _Unwind_Resume(a1);
}

void sub_19B989638(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

uint64_t sub_19B989694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      *(v6 + 8) = 0;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 16) = v7;
      *(a4 + 32) = v8;
      v6 += 56;
      a4 += 56;
    }

    while (v6 != a3);
    v14 = a4;
    v12 = 1;
    do
    {
      v9 = *(v5 + 8);
      if (v9)
      {
        sub_19B8750F8(v9);
      }

      v5 += 56;
    }

    while (v5 != a3);
  }

  return sub_19B989748(v11);
}

uint64_t sub_19B989748(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_19B989780(a1);
  }

  return a1;
}

void sub_19B989780(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 48);
    if (v3)
    {
      sub_19B8750F8(v3);
    }

    v1 -= 56;
  }
}

void **sub_19B9897C4(void **a1)
{
  sub_19B9897F8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_19B9897F8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 56;
    v4 = *(v1 - 48);
    if (v4)
    {
      sub_19B8750F8(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 56;
    }
  }
}

void sub_19B98984C(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *a1;
  if (0xF83E0F83E0F83E1 * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_19B9899D0(a1);
    if (a4 <= 0xF83E0F83E0F83ELL)
    {
      v8 = 0x1F07C1F07C1F07C2 * ((a1[2] - *a1) >> 3);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if ((0xF83E0F83E0F83E1 * ((a1[2] - *a1) >> 3)) >= 0x7C1F07C1F07C1FLL)
      {
        v9 = 0xF83E0F83E0F83ELL;
      }

      else
      {
        v9 = v8;
      }

      sub_19B989A10(a1, v9);
    }

    sub_19B8B8A40();
  }

  v10 = a1[1] - v7;
  if (0xF83E0F83E0F83E1 * (v10 >> 3) >= a4)
  {
    sub_19B989BAC(&v17, a2, a3, v7);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      do
      {
        v15 = *(v14 - 48);
        if (v15)
        {
          sub_19B8750F8(v15);
        }

        v14 -= 264;
      }

      while (v14 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    v11 = sub_19B989BAC(&v16, a2, a2 + v10, v7);
    a1[1] = sub_19B989A60(a1, v11, a3, a1[1]);
  }
}

void sub_19B9899D0(uint64_t *a1)
{
  if (*a1)
  {
    sub_19B9882F8(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_19B989A10(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xF83E0F83E0F83FLL)
  {
    sub_19B989C6C(a1, a2);
  }

  sub_19B8B8A40();
}

uint64_t sub_19B989A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v21 = a4;
  v20 = a4;
  v18[0] = a1;
  v18[1] = &v20;
  v18[2] = &v21;
  if (a2 != a3)
  {
    do
    {
      *v4 = *a2;
      v5 = *(a2 + 16);
      v6 = *(a2 + 32);
      v7 = *(a2 + 64);
      *(v4 + 48) = *(a2 + 48);
      *(v4 + 64) = v7;
      *(v4 + 16) = v5;
      *(v4 + 32) = v6;
      v8 = *(a2 + 80);
      v9 = *(a2 + 96);
      v10 = *(a2 + 128);
      *(v4 + 112) = *(a2 + 112);
      *(v4 + 128) = v10;
      *(v4 + 80) = v8;
      *(v4 + 96) = v9;
      v11 = *(a2 + 144);
      v12 = *(a2 + 160);
      v13 = *(a2 + 192);
      *(v4 + 176) = *(a2 + 176);
      *(v4 + 192) = v13;
      *(v4 + 144) = v11;
      *(v4 + 160) = v12;
      v14 = *(a2 + 216);
      *(v4 + 208) = *(a2 + 208);
      *(v4 + 216) = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *(a2 + 224);
      v16 = *(a2 + 240);
      *(v4 + 256) = *(a2 + 256);
      *(v4 + 224) = v15;
      *(v4 + 240) = v16;
      a2 += 264;
      v4 += 264;
    }

    while (a2 != a3);
    v21 = v4;
  }

  v19 = 1;
  sub_19B989B30(v18);
  return v4;
}

uint64_t sub_19B989B30(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_19B989B68(a1);
  }

  return a1;
}

void sub_19B989B68(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 48);
    if (v3)
    {
      sub_19B8750F8(v3);
    }

    v1 -= 264;
  }
}

uint64_t sub_19B989BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      v7 = *(v5 + 16);
      v8 = *(v5 + 32);
      v9 = *(v5 + 64);
      *(a4 + 48) = *(v5 + 48);
      *(a4 + 64) = v9;
      *(a4 + 16) = v7;
      *(a4 + 32) = v8;
      v10 = *(v5 + 80);
      v11 = *(v5 + 96);
      v12 = *(v5 + 128);
      *(a4 + 112) = *(v5 + 112);
      *(a4 + 128) = v12;
      *(a4 + 80) = v10;
      *(a4 + 96) = v11;
      v13 = *(v5 + 144);
      v14 = *(v5 + 160);
      v15 = *(v5 + 192);
      *(a4 + 176) = *(v5 + 176);
      *(a4 + 192) = v15;
      *(a4 + 144) = v13;
      *(a4 + 160) = v14;
      v17 = *(v5 + 208);
      v16 = *(v5 + 216);
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v18 = *(a4 + 216);
      *(a4 + 208) = v17;
      *(a4 + 216) = v16;
      if (v18)
      {
        sub_19B8750F8(v18);
      }

      v19 = *(v5 + 224);
      v20 = *(v5 + 240);
      *(a4 + 256) = *(v5 + 256);
      *(a4 + 224) = v19;
      *(a4 + 240) = v20;
      v5 += 264;
      a4 += 264;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_19B989C6C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xF83E0F83E0F83FLL)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

uint64_t sub_19B989CC8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v16 = sub_19B989D6C(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 16);
    v5 = *(a2 + 32);
    v6 = *(a2 + 64);
    *(v3 + 48) = *(a2 + 48);
    *(v3 + 64) = v6;
    *(v3 + 16) = v4;
    *(v3 + 32) = v5;
    v7 = *(a2 + 80);
    v8 = *(a2 + 96);
    v9 = *(a2 + 128);
    *(v3 + 112) = *(a2 + 112);
    *(v3 + 128) = v9;
    *(v3 + 80) = v7;
    *(v3 + 96) = v8;
    v10 = *(a2 + 144);
    v11 = *(a2 + 160);
    v12 = *(a2 + 192);
    *(v3 + 176) = *(a2 + 176);
    *(v3 + 192) = v12;
    *(v3 + 144) = v10;
    *(v3 + 160) = v11;
    v13 = *(a2 + 216);
    *(v3 + 208) = *(a2 + 208);
    *(v3 + 216) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(a2 + 224);
    v15 = *(a2 + 240);
    *(v3 + 256) = *(a2 + 256);
    *(v3 + 224) = v14;
    *(v3 + 240) = v15;
    v16 = v3 + 264;
  }

  a1[1] = v16;
  return v16 - 264;
}

uint64_t sub_19B989D6C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xF83E0F83E0F83E1 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xF83E0F83E0F83ELL)
  {
    sub_19B8B8A40();
  }

  if (0x1F07C1F07C1F07C2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1F07C1F07C1F07C2 * ((a1[2] - *a1) >> 3);
  }

  if ((0xF83E0F83E0F83E1 * ((a1[2] - *a1) >> 3)) >= 0x7C1F07C1F07C1FLL)
  {
    v6 = 0xF83E0F83E0F83ELL;
  }

  else
  {
    v6 = v3;
  }

  v29 = a1;
  if (v6)
  {
    sub_19B989C6C(a1, v6);
  }

  v7 = 264 * v2;
  v26 = 0;
  v27 = v7;
  *(&v28 + 1) = 0;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 64);
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 64) = v10;
  *(v7 + 32) = v9;
  v11 = *(a2 + 128);
  v13 = *(a2 + 80);
  v12 = *(a2 + 96);
  *(v7 + 112) = *(a2 + 112);
  *(v7 + 128) = v11;
  *(v7 + 80) = v13;
  *(v7 + 96) = v12;
  v14 = *(a2 + 192);
  v16 = *(a2 + 144);
  v15 = *(a2 + 160);
  *(v7 + 176) = *(a2 + 176);
  *(v7 + 192) = v14;
  *(v7 + 144) = v16;
  *(v7 + 160) = v15;
  *v7 = *a2;
  *(v7 + 16) = v8;
  v17 = *(a2 + 216);
  *(v7 + 208) = *(a2 + 208);
  *(v7 + 216) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = *(a2 + 224);
  v19 = *(a2 + 240);
  *(264 * v2 + 0x100) = *(a2 + 256);
  *(264 * v2 + 0xE0) = v18;
  *(264 * v2 + 0xF0) = v19;
  *&v28 = v7 + 264;
  v20 = a1[1];
  v21 = v7 + *a1 - v20;
  sub_19B989F04(a1, *a1, v20, v21);
  v22 = *a1;
  *a1 = v21;
  v23 = a1[2];
  v25 = v28;
  *(a1 + 1) = v28;
  *&v28 = v22;
  *(&v28 + 1) = v23;
  v26 = v22;
  v27 = v22;
  sub_19B989FF0(&v26);
  return v25;
}

void sub_19B989EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_19B989FF0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B989F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v22 = a4;
  v20[0] = a1;
  v20[1] = &v22;
  v20[2] = &v23;
  if (a2 == a3)
  {
    v21 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      v9 = *(v6 + 64);
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 64) = v9;
      *(a4 + 16) = v7;
      *(a4 + 32) = v8;
      v10 = *(v6 + 80);
      v11 = *(v6 + 96);
      v12 = *(v6 + 128);
      *(a4 + 112) = *(v6 + 112);
      *(a4 + 128) = v12;
      *(a4 + 80) = v10;
      *(a4 + 96) = v11;
      v13 = *(v6 + 144);
      v14 = *(v6 + 160);
      v15 = *(v6 + 192);
      *(a4 + 176) = *(v6 + 176);
      *(a4 + 192) = v15;
      *(a4 + 144) = v13;
      *(a4 + 160) = v14;
      *(a4 + 208) = *(v6 + 208);
      *(v6 + 208) = 0;
      *(v6 + 216) = 0;
      v16 = *(v6 + 224);
      v17 = *(v6 + 240);
      *(a4 + 256) = *(v6 + 256);
      *(a4 + 224) = v16;
      *(a4 + 240) = v17;
      v6 += 264;
      a4 += 264;
    }

    while (v6 != a3);
    v23 = a4;
    v21 = 1;
    do
    {
      v18 = *(v5 + 216);
      if (v18)
      {
        sub_19B8750F8(v18);
      }

      v5 += 264;
    }

    while (v5 != a3);
  }

  return sub_19B989B30(v20);
}

void **sub_19B989FF0(void **a1)
{
  sub_19B98A024(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_19B98A024(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 264;
    v4 = *(v1 - 48);
    if (v4)
    {
      sub_19B8750F8(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 264;
    }
  }
}

void sub_19B98A078(void *a1)
{
  *a1 = &unk_1F0E6D9A8;
  sub_19B98A184((a1 + 3));

  JUMPOUT(0x19EAE98C0);
}

void sub_19B98A0DC(char *a1)
{
  if (a1)
  {
    sub_19B98A0DC(*a1);
    sub_19B98A0DC(*(a1 + 1));
    if (a1[5119] < 0)
    {
      operator delete(*(a1 + 637));
    }

    if (a1[839] < 0)
    {
      operator delete(*(a1 + 102));
    }

    if (a1[407] < 0)
    {
      operator delete(*(a1 + 48));
    }

    v2 = *(a1 + 21);
    if (v2)
    {
      *(a1 + 22) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 11);
    if (v3)
    {
      sub_19B8750F8(v3);
    }

    v4 = *(a1 + 8);
    if (v4)
    {
      sub_19B8750F8(v4);
    }

    operator delete(a1);
  }
}

uint64_t sub_19B98A184(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 1024;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_19B98A250(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = v2;
  v7 = *a2;
  v6 = a2[1];
  do
  {
    v8 = *(v3 + 32);
    if (v8 == v7)
    {
      v9 = *(v3 + 48);
      if (v9 == 1 && (a2[2] & 1) != 0)
      {
        v9 = *(v3 + 40) < v6;
      }
    }

    else
    {
      v9 = v8 < v7;
    }

    v10 = v9 == 0;
    if (v9)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v5 = v3;
    }

    v3 = *(v3 + v11);
  }

  while (v3);
  if (v5 == v2)
  {
    return v2;
  }

  v12 = *(v5 + 32);
  if (v7 == v12)
  {
    if (a2[2] & 1) != 0 && (*(v5 + 48))
    {
      if (v6 >= *(v5 + 40))
      {
        return v5;
      }
    }

    else if ((a2[2] & 1) == 0)
    {
      return v5;
    }

    return v2;
  }

  if (v7 < v12)
  {
    return v2;
  }

  return v5;
}

void sub_19B98A2F4(std::string *a1)
{
  sub_19B8759E8(&v50, "{public}");
  sub_19B8759E8(&__p, "");
  v2 = 0;
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = a1->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v5 = v52;
  if ((v52 & 0x80u) == 0)
  {
    v6 = v52;
  }

  else
  {
    v6 = v51;
  }

  if ((v52 & 0x80u) == 0)
  {
    v7 = &v50;
  }

  else
  {
    v7 = v50;
  }

  while (!v6)
  {
LABEL_22:
    if (v2 != -1)
    {
      if ((v49 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v49 & 0x80u) == 0)
      {
        v15 = v49;
      }

      else
      {
        v15 = v48;
      }

      std::string::replace(a1, v2, v6, p_p, v15);
      v16 = v49;
      if ((v49 & 0x80u) != 0)
      {
        v16 = v48;
      }

      v2 += v16;
      size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v4 = a1;
      }

      else
      {
        v4 = a1->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = a1->__r_.__value_.__l.__size_;
      }

      v5 = v52;
      v7 = (v52 & 0x80u) == 0 ? &v50 : v50;
      v6 = (v52 & 0x80u) == 0 ? v52 : v51;
      if (size >= v2)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

  v8 = size - v2;
  if ((size - v2) >= v6)
  {
    v9 = v4 + size;
    v10 = v4 + v2;
    v11 = *v7;
    do
    {
      if (v8 - v6 == -1)
      {
        break;
      }

      v12 = memchr(v10, v11, v8 - v6 + 1);
      if (!v12)
      {
        break;
      }

      v13 = v12;
      if (!memcmp(v12, v7, v6))
      {
        if (v13 == v9)
        {
          break;
        }

        v2 = v13 - v4;
        goto LABEL_22;
      }

      v10 = v13 + 1;
      v8 = v9 - (v13 + 1);
    }

    while (v8 >= v6);
  }

LABEL_43:
  if (v49 < 0)
  {
    operator delete(__p);
    if ((v52 & 0x80) == 0)
    {
      goto LABEL_45;
    }

LABEL_135:
    operator delete(v50);
    goto LABEL_45;
  }

  if ((v5 & 0x80) != 0)
  {
    goto LABEL_135;
  }

LABEL_45:
  sub_19B8759E8(&v50, "{private}");
  sub_19B8759E8(&__p, "");
  v17 = 0;
  v18 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v18 & 0x80u) == 0)
  {
    v19 = a1;
  }

  else
  {
    v19 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v18 & 0x80u) != 0)
  {
    v18 = a1->__r_.__value_.__l.__size_;
  }

  v20 = v52;
  if ((v52 & 0x80u) == 0)
  {
    v21 = v52;
  }

  else
  {
    v21 = v51;
  }

  if ((v52 & 0x80u) == 0)
  {
    v22 = &v50;
  }

  else
  {
    v22 = v50;
  }

  while (!v21)
  {
LABEL_66:
    if (v17 != -1)
    {
      if ((v49 & 0x80u) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p;
      }

      if ((v49 & 0x80u) == 0)
      {
        v30 = v49;
      }

      else
      {
        v30 = v48;
      }

      std::string::replace(a1, v17, v21, v29, v30);
      v31 = v49;
      if ((v49 & 0x80u) != 0)
      {
        v31 = v48;
      }

      v17 += v31;
      v18 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      if ((v18 & 0x80u) == 0)
      {
        v19 = a1;
      }

      else
      {
        v19 = a1->__r_.__value_.__r.__words[0];
      }

      if ((v18 & 0x80u) != 0)
      {
        v18 = a1->__r_.__value_.__l.__size_;
      }

      v20 = v52;
      v22 = (v52 & 0x80u) == 0 ? &v50 : v50;
      v21 = (v52 & 0x80u) == 0 ? v52 : v51;
      if (v18 >= v17)
      {
        continue;
      }
    }

    goto LABEL_87;
  }

  v23 = v18 - v17;
  if ((v18 - v17) >= v21)
  {
    v24 = v19 + v18;
    v25 = v19 + v17;
    v26 = *v22;
    do
    {
      if (v23 - v21 == -1)
      {
        break;
      }

      v27 = memchr(v25, v26, v23 - v21 + 1);
      if (!v27)
      {
        break;
      }

      v28 = v27;
      if (!memcmp(v27, v22, v21))
      {
        if (v28 == v24)
        {
          break;
        }

        v17 = v28 - v19;
        goto LABEL_66;
      }

      v25 = v28 + 1;
      v23 = v24 - (v28 + 1);
    }

    while (v23 >= v21);
  }

LABEL_87:
  if (v49 < 0)
  {
    operator delete(__p);
    if ((v52 & 0x80) == 0)
    {
      goto LABEL_89;
    }

LABEL_137:
    operator delete(v50);
    goto LABEL_89;
  }

  if ((v20 & 0x80) != 0)
  {
    goto LABEL_137;
  }

LABEL_89:
  sub_19B8759E8(&v50, "{sensitive}");
  sub_19B8759E8(&__p, "");
  v32 = 0;
  v33 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v33 & 0x80u) == 0)
  {
    v34 = a1;
  }

  else
  {
    v34 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v33 & 0x80u) != 0)
  {
    v33 = a1->__r_.__value_.__l.__size_;
  }

  v35 = v52;
  if ((v52 & 0x80u) == 0)
  {
    v36 = v52;
  }

  else
  {
    v36 = v51;
  }

  if ((v52 & 0x80u) == 0)
  {
    v37 = &v50;
  }

  else
  {
    v37 = v50;
  }

  while (!v36)
  {
LABEL_110:
    if (v32 != -1)
    {
      if ((v49 & 0x80u) == 0)
      {
        v44 = &__p;
      }

      else
      {
        v44 = __p;
      }

      if ((v49 & 0x80u) == 0)
      {
        v45 = v49;
      }

      else
      {
        v45 = v48;
      }

      std::string::replace(a1, v32, v36, v44, v45);
      v46 = v49;
      if ((v49 & 0x80u) != 0)
      {
        v46 = v48;
      }

      v32 += v46;
      v33 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      if ((v33 & 0x80u) == 0)
      {
        v34 = a1;
      }

      else
      {
        v34 = a1->__r_.__value_.__r.__words[0];
      }

      if ((v33 & 0x80u) != 0)
      {
        v33 = a1->__r_.__value_.__l.__size_;
      }

      v35 = v52;
      v37 = (v52 & 0x80u) == 0 ? &v50 : v50;
      v36 = (v52 & 0x80u) == 0 ? v52 : v51;
      if (v33 >= v32)
      {
        continue;
      }
    }

    goto LABEL_131;
  }

  v38 = v33 - v32;
  if ((v33 - v32) >= v36)
  {
    v39 = v34 + v33;
    v40 = v34 + v32;
    v41 = *v37;
    do
    {
      if (v38 - v36 == -1)
      {
        break;
      }

      v42 = memchr(v40, v41, v38 - v36 + 1);
      if (!v42)
      {
        break;
      }

      v43 = v42;
      if (!memcmp(v42, v37, v36))
      {
        if (v43 == v39)
        {
          break;
        }

        v32 = v43 - v34;
        goto LABEL_110;
      }

      v40 = v43 + 1;
      v38 = v39 - (v43 + 1);
    }

    while (v38 >= v36);
  }

LABEL_131:
  if ((v49 & 0x80000000) == 0)
  {
    if ((v35 & 0x80) == 0)
    {
      return;
    }

LABEL_139:
    operator delete(v50);
    return;
  }

  operator delete(__p);
  if ((v52 & 0x80) != 0)
  {
    goto LABEL_139;
  }
}

void sub_19B98A790(unint64_t *a1, void *a2)
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

      sub_19B98A894(v11);
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

void sub_19B98A894(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void sub_19B98A9A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B98C400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B98C420()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4720 != -1)
  {
    dispatch_once(&qword_1EAFE4720, &unk_1F0E6DA28);
  }

  v0 = qword_1EAFE46F0;
  if (os_log_type_enabled(qword_1EAFE46F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_DEFAULT, "Simulation connection interrupted", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4720 != -1)
    {
      dispatch_once(&qword_1EAFE4720, &unk_1F0E6DA28);
    }

    v3[0] = 0;
    v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46F0, 0, "Simulation connection interrupted", v3, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLSimulationManager daemonProxy]_block_invoke", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }
}

uint64_t sub_19B98C5E0(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4720 != -1)
  {
    dispatch_once(&qword_1EAFE4720, &unk_1F0E6DA28);
  }

  v2 = qword_1EAFE46F0;
  if (os_log_type_enabled(qword_1EAFE46F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "Simulation connection invalidated", buf, 2u);
  }

  v3 = sub_19B87DD40();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4720 != -1)
    {
      dispatch_once(&qword_1EAFE4720, &unk_1F0E6DA28);
    }

    v8[0] = 0;
    v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46F0, 0, "Simulation connection invalidated", v8, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLSimulationManager daemonProxy]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  return objc_msgSend_setConnection_(*(*(*(a1 + 32) + 8) + 40), v4, 0, v5);
}

void sub_19B98C7A4()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4720 != -1)
  {
    dispatch_once(&qword_1EAFE4720, &unk_1F0E6DA28);
  }

  v0 = qword_1EAFE46F0;
  if (os_log_type_enabled(qword_1EAFE46F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_DEFAULT, "Error fetching remoteObjectProxy", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4720 != -1)
    {
      dispatch_once(&qword_1EAFE4720, &unk_1F0E6DA28);
    }

    v3[0] = 0;
    v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46F0, 0, "Error fetching remoteObjectProxy", v3, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLSimulationManager daemonProxy]_block_invoke", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }
}

os_log_t sub_19B98C980()
{
  result = os_log_create("com.apple.locationd.Core", "Simulation");
  qword_1EAFE46F0 = result;
  return result;
}

void *sub_19B98D0E4(uint64_t a1)
{
  *a1 = &unk_1F0E6DA78;
  sub_19B98D158(a1, 0, 0);
  dispatch_release(*(a1 + 208));
  v2 = *(a1 + 224);
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  return sub_19BA4EBD8(a1);
}

uint64_t sub_19B98D158(uint64_t a1, FILE *a2, char a3)
{
  v6 = (a1 + 40);
  (*(*(a1 + 40) + 16))(a1 + 40);
  v7 = v6[18];
  if (v7 != a2)
  {
    *(a1 + 184) = a2;
    if (v7 && *(a1 + 156) == 1)
    {
      fclose(v7);
    }

    *(a1 + 156) = a3;
  }

  return (*(*v6 + 24))(v6);
}

void sub_19B98D20C(uint64_t a1)
{
  sub_19B98D0E4(a1);

  JUMPOUT(0x19EAE98C0);
}

uint64_t sub_19B98D244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9 = a1 + 40;
  (*(*(a1 + 40) + 16))(a1 + 40, a2, a3, a4, a5, a6, a7, a8);
  sub_19B885B60(a1, "Generic", 0, 2, "void CLLog::logHeader()", "%s\n", va);
  return (*(*v9 + 24))(v9);
}

void sub_19B98D304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B98D318(uint64_t a1, const char *a2, int a3, uint64_t a4, const char *a5, char *__src, va_list a7)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = strncpy(__dst, __src, 0x65CuLL);
  sub_19B98D3D0(v13, __dst);
  return sub_19B885B60(a1, a2, a3, a4, a5, __dst, a7);
}

BOOL sub_19B98D3D0(int a1, char *__s)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = strlen(__s);
  if (v3 < 1)
  {
    return 1;
  }

  v4 = &__s[v3];
  v5 = __s;
  while (1)
  {
    if (*v5 != 37)
    {
      v11 = v5;
      goto LABEL_17;
    }

    v6 = v5 + 1;
    v7 = v5[1];
    if (v7 == 123)
    {
      break;
    }

LABEL_10:
    v11 = v5 + 1;
    v12 = v5 + 1;
    if (v7 != 64)
    {
      if (v7 != 46)
      {
        goto LABEL_17;
      }

      if (v5[2] != 42)
      {
        goto LABEL_17;
      }

      v12 = v5 + 3;
      if (v5[3] != 80)
      {
        goto LABEL_17;
      }

      *(v5 + 1) = 9572;
    }

    *v12 = 112;
LABEL_17:
    v5 = v11 + 1;
    if (v11 + 1 >= v4)
    {
      return 1;
    }
  }

  if (v6 != v4)
  {
    v8 = 0;
    while (1)
    {
      v9 = &v5[v8 + 2];
      if (v9 == v4)
      {
        break;
      }

      ++v8;
      if (*v9 == 125)
      {
        v10 = &v5[v8];
        memmove(v5, v6, v8 + 1);
        *++v10 = 37;
        v7 = v10[1];
        v5 = v10;
        goto LABEL_10;
      }
    }
  }

  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6DB50);
  }

  v14 = qword_1ED519080;
  result = os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v15 = 136446210;
    v16 = __s;
    _os_log_error_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "Failed parse os_log format specifier for shimming:missing closing brace,format,%{public}s", &v15, 0xCu);
    return 0;
  }

  return result;
}

uint64_t sub_19B98D58C(uint64_t a1, int a2, FILE *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a1 + 40;
  v5 = *(a1 + 40);
  v12 = a1 + 40;
  (*(v5 + 16))(a1 + 40);
  v13 = 256;
  CFAbsoluteTimeGetCurrent();
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *v14 = 0u;
  v7 = backtrace(v14, 128);
  v8 = a2 + 1;
  if (a2 + 1 < v7)
  {
    v9 = &v14[v8];
    do
    {
      if (dladdr(*v9, &v11))
      {
        if (v11.dli_sname)
        {
          basename(v11.dli_fname);
          fprintf(a3, "%s,%s,Time,%08.3f,%d\t%s\t0x%08lx %s + %lu\n", "STATUS");
        }

        else
        {
          basename(v11.dli_fname);
          fprintf(a3, "%s,%s,Time,%08.3f,%d\t%s\t0x%08lx 0x%08lx + %lu\n", "STATUS");
        }
      }

      else
      {
        fprintf(a3, "%s,%s,Time,%08.3f,%d\t0x%08lx\n");
      }

      ++v8;
      ++v9;
    }

    while (v7 != v8);
  }

  return (*(*v6 + 24))(v6);
}

void sub_19B98D7B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_19B890AB0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B98D7E0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v40[2] = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(*(*(a1 + 48) + 64), a2, a3, a4);
  pthread_self();
  sub_19B8767CC(*(a1 + 24), "ShowError", (a1 + 154), 0xFFFFFFFFLL);
  sub_19B8767CC(*(a1 + 24), "LogShowUI", (a1 + 155), 0xFFFFFFFFLL);
  sub_19B876178(*(a1 + 24), "LogFileLevel", (a1 + 160), 0xFFFFFFFFLL);
  sub_19B876178(*(a1 + 24), "LogBufferLevel", (a1 + 164), 0xFFFFFFFFLL);
  sub_19B876178(*(a1 + 24), "LogConsoleLevel", (a1 + 168), 0xFFFFFFFFLL);
  sub_19B876178(*(a1 + 24), "LogStackLevel", (a1 + 172), 0xFFFFFFFFLL);
  sub_19B92B010(*(a1 + 24), "LogFileDirectory", (a1 + 56), 0xFFFFFFFFLL);
  sub_19B92B010(*(a1 + 24), "LogFilePrefix", (a1 + 80), 0xFFFFFFFFLL);
  sub_19B8767CC(*(a1 + 24), "LogFileFlush", (a1 + 157), 0xFFFFFFFFLL);
  sub_19B8767CC(*(a1 + 24), "LogFence", (a1 + 153), 0xFFFFFFFFLL);
  v39 = 0;
  sub_19B876178(*(a1 + 24), "LogBufferSize", &v39, 0xFFFFFFFFLL);
  if ((*(a1 + 160) & 0x80000000) != 0)
  {
    sub_19B98D158(a1, 0, 0);
    goto LABEL_75;
  }

  v5 = *(a1 + 184);
  memset(&__p, 0, sizeof(__p));
  if (!sub_19B92B010(*(a1 + 24), "LogFile", &__p, 0xFFFFFFFFLL))
  {
    goto LABEL_6;
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
LABEL_6:
    v7 = *(a1 + 79);
    if (v7 < 0)
    {
      if (!*(a1 + 64))
      {
        goto LABEL_43;
      }
    }

    else if (!*(a1 + 79))
    {
      goto LABEL_43;
    }

    if ((*(a1 + 103) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 88))
      {
        goto LABEL_43;
      }
    }

    else if (!*(a1 + 103))
    {
      goto LABEL_43;
    }

    if (v7 >= 0)
    {
      v8 = *(a1 + 79);
    }

    else
    {
      v8 = *(a1 + 64);
    }

    v9 = &v36;
    sub_19B8D78C0(&v36, v8 + 1);
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v36.__r_.__value_.__r.__words[0];
    }

    if (v8)
    {
      if (*(a1 + 79) >= 0)
      {
        v10 = (a1 + 56);
      }

      else
      {
        v10 = *(a1 + 56);
      }

      memmove(v9, v10, v8);
    }

    *(&v9->__r_.__value_.__l.__data_ + v8) = 47;
    v11 = *(a1 + 103);
    if (v11 >= 0)
    {
      v12 = (a1 + 80);
    }

    else
    {
      v12 = *(a1 + 80);
    }

    if (v11 >= 0)
    {
      v13 = *(a1 + 103);
    }

    else
    {
      v13 = *(a1 + 88);
    }

    v14 = std::string::append(&v36, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = *(a1 + 127);
    if (v16 >= 0)
    {
      v17 = (a1 + 104);
    }

    else
    {
      v17 = *(a1 + 104);
    }

    if (v16 >= 0)
    {
      v18 = *(a1 + 127);
    }

    else
    {
      v18 = *(a1 + 112);
    }

    v19 = std::string::append(&v37, v17, v18);
    v20 = v19->__r_.__value_.__r.__words[0];
    v40[0] = v19->__r_.__value_.__l.__size_;
    *(v40 + 7) = *(&v19->__r_.__value_.__r.__words[1] + 7);
    v21 = HIBYTE(v19->__r_.__value_.__r.__words[2]);
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v20;
    __p.__r_.__value_.__l.__size_ = v40[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v40 + 7);
    *(&__p.__r_.__value_.__s + 23) = v21;
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }
  }

LABEL_43:
  v22 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = __p.__r_.__value_.__l.__size_;
  }

  if (v23)
  {
    if (v5)
    {
      v24 = *(a1 + 151);
      v25 = v24;
      if ((v24 & 0x80u) != 0)
      {
        v24 = *(a1 + 136);
      }

      v26 = __p.__r_.__value_.__r.__words[0];
      if (v23 == v24)
      {
        v27 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v28 = v25 >= 0 ? (a1 + 128) : *(a1 + 128);
        if (!memcmp(v27, v28, v23))
        {
          goto LABEL_67;
        }
      }
    }

    else
    {
      v26 = __p.__r_.__value_.__r.__words[0];
    }

    if (v22 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = v26;
    }

    sub_19B98DE08(a1, p_p);
    if (!v5)
    {
      v30 = *(a1 + 216);
      if (v30)
      {
        sub_19B994440(v30, *(a1 + 184));
      }
    }

LABEL_67:
    sub_19B98E3B0(a1, *(a1 + 157));
    v31 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v31 = __p.__r_.__value_.__r.__words[0];
    }

    if (*(a1 + 157))
    {
      v32 = " and flushing immediately";
    }

    else
    {
      v32 = " no flush";
    }

    syslog(5, "%s,%s,logging locations to %s%s\n", "NOTICE", "CLLog", v31, v32);
    goto LABEL_73;
  }

  sub_19B98D158(a1, 0, 0);
LABEL_73:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_75:
  if ((*(a1 + 164) & 0x80000000) != 0 || (v33 = v39, v39 < 1))
  {
    v35 = *(a1 + 224);
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    if (v35)
    {
      sub_19B8750F8(v35);
    }

    *(a1 + 192) = 0;
  }

  else
  {
    if (v39 > 0xA00000)
    {
      v33 = 10485760;
      v39 = 10485760;
    }

    v34 = *(a1 + 216);
    if (!v34 || *(v34 + 16) != v33)
    {
      operator new();
    }

    *(a1 + 192) = sub_19B9941CC(v34);
    syslog(5, "%s,%s,logging locations to an internal buffer with capacity %d\n", "NOTICE", "CLLog", v39);
  }
}

void sub_19B98DD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B98DE08(uint64_t a1, char *a2)
{
  *&v69[1526] = *MEMORY[0x1E69E9840];
  v4 = a1 + 40;
  (*(*(a1 + 40) + 16))(a1 + 40);
  if (a2)
  {
    v5 = getuid();
    v6 = getgid();
    sub_19B8B6834(a2, v5, v6);
    v7 = fopen(a2, "a");
    if (v7)
    {
      sub_19B8D7878((a1 + 128), a2);
      sub_19B98D158(a1, v7, 1);
      sub_19B98E3B0(a1, *(a1 + 157));
      v8 = *(a1 + 184);
      if (v8)
      {
        sub_19B8B7FE8(v8);
      }

      sub_19B87BBB4();
      sub_19B93BA28(__p);
      if (__p[23] >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      sub_19B8759E8(&v64, v9);
      if (__p[23] < 0)
      {
        operator delete(*__p);
      }

      v10 = v66;
      v11 = v66;
      if (v66 < 0)
      {
        v10 = v65;
      }

      if (!v10)
      {
        if (v66 < 0)
        {
          v65 = 10;
          v12 = v64;
        }

        else
        {
          v66 = 10;
          v12 = &v64;
        }

        strcpy(v12, "Unplugged!");
        v11 = v66;
      }

      bzero(__p, 0x65CuLL);
      v14 = &v64;
      if (v11 < 0)
      {
        v14 = v64;
      }

      snprintf(__p, 0x65CuLL, "CoreLocation-%s\n", v14);
      sub_19B98D244(a1, v15, 0, v16, v17, v18, v19, v20, __p);
      bzero(__p, 0x65CuLL);
      snprintf(__p, 0x65CuLL, "locationd was compiled on %s at %s\n", "Oct 22 2025", "21:28:52");
      sub_19B98D244(a1, v21, 0, v22, v23, v24, v25, v26, __p);
      bufsize = 1024;
      if (_NSGetExecutablePath(buf, &bufsize))
      {
        bzero(__p, 0x65CuLL);
        v27 = sub_19B87BBB4();
        v28 = v61;
        sub_19B93B830(v27, v61);
        if (v62 < 0)
        {
          v28 = v61[0];
        }

        sub_19B87BBB4();
        sub_19B93B2E8(v59);
        if (v60 >= 0)
        {
          v29 = v59;
        }

        else
        {
          v29 = v59[0];
        }

        snprintf(__p, 0x65CuLL, "/usr/libexec/locationd @ system model %s / version %s\n", v28, v29);
        if (v60 < 0)
        {
          operator delete(v59[0]);
        }

        if (v62 < 0)
        {
          operator delete(v61[0]);
        }
      }

      else
      {
        bzero(__p, 0x65CuLL);
        v36 = sub_19B87BBB4();
        v37 = v61;
        sub_19B93B830(v36, v61);
        if (v62 < 0)
        {
          v37 = v61[0];
        }

        sub_19B87BBB4();
        sub_19B93B2E8(v59);
        if (v60 >= 0)
        {
          v38 = v59;
        }

        else
        {
          v38 = v59[0];
        }

        snprintf(__p, 0x65CuLL, "%s @ system model %s / version %s\n", buf, v37, v38);
        if (v60 < 0)
        {
          operator delete(v59[0]);
        }

        if (v62 < 0)
        {
          operator delete(v61[0]);
        }
      }

      sub_19B98D244(a1, v30, 0, v31, v32, v33, v34, v35, __p);
      bzero(__p, 0x65CuLL);
      sub_19B87BBB4();
      sub_19B93BC88(v61);
      if (v62 >= 0)
      {
        v39 = v61;
      }

      else
      {
        v39 = v61[0];
      }

      snprintf(__p, 0x65CuLL, "IOPlatformSerialNumber: %s\n", v39);
      if (v62 < 0)
      {
        operator delete(v61[0]);
      }

      sub_19B98D244(a1, v40, 0, v41, v42, v43, v44, v45, __p);
      bzero(v69, 0x5EAuLL);
      strcpy(__p, "Begin settings dump (read at construction of CLSettings or upon darwin notification 'com.apple.locationd/prefs')\n");
      sub_19B98D244(a1, v46, 0, v47, v48, v49, v50, v51, __p);
      (*(**(a1 + 24) + 792))(*(a1 + 24));
      bzero(&__p[19], 0x649uLL);
      strcpy(__p, "End settings dump\n");
      sub_19B98D244(a1, v52, 0, v53, v54, v55, v56, v57, __p);
      if (v66 < 0)
      {
        operator delete(v64);
      }
    }

    else
    {
      v13 = __error();
      syslog(3, "%s,%s,could not open locations log %s, errno %d\n", "ERROR", "CLLog", a2, *v13);
    }
  }

  return (*(*v4 + 24))(v4);
}

void sub_19B98E31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_19B888D7C(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_19B98E3B0(uint64_t a1, int a2)
{
  v3 = a1 + 40;
  (*(*(a1 + 40) + 16))(a1 + 40);
  *(v3 + 117) = a2 != 0;
  v4 = *(v3 + 144);
  if (v4)
  {
    setvbuf(v4, 0, a2 != 0, 0);
  }

  return (*(*v3 + 24))(v3);
}

uint64_t sub_19B98E450(uint64_t a1)
{
  v1 = (a1 + 40);
  (*(*(a1 + 40) + 16))(a1 + 40);
  v2 = v1[18];
  if (v2)
  {
    fflush(v2);
  }

  return (*(*v1 + 24))(v1);
}

uint64_t sub_19B98E4D0(uint64_t a1, char *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  sub_19B8759E8(v21, a2);
  if (*(a1 + 71) >= 0)
  {
    v5 = *(a1 + 71);
  }

  else
  {
    v5 = *(a1 + 56);
  }

  v6 = v19;
  sub_19B8D78C0(v19, v5 + 1);
  if (v20 < 0)
  {
    v6 = v19[0];
  }

  if (v5)
  {
    if (*(a1 + 71) >= 0)
    {
      v7 = (a1 + 48);
    }

    else
    {
      v7 = *(a1 + 48);
    }

    memmove(v6, v7, v5);
  }

  *(v6 + v5) = 95;
  if (sub_19BA4F4EC(v4, v21, v19))
  {
    sub_19B8759E8(v17, a2);
    sub_19B8759E8(v15, ".log.bz2");
    if (sub_19BA4F5B8(v4, v17, v15))
    {
      v8 = 1;
    }

    else
    {
      sub_19B8759E8(v13, a2);
      sub_19B8759E8(__p, ".log");
      v8 = sub_19BA4F5B8(v4, v13, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
    if (!v8)
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  if (++*(*(*(a1 + 32) + 8) + 24) > *(a1 + 96))
  {
    LOBYTE(v21[0]) = 0;
    v9 = (a1 + 72);
    if (*(a1 + 95) < 0)
    {
      v9 = *v9;
    }

    if (snprintf(v21, 0x400uLL, "%s/%s", v9, a2) > 1023)
    {
      syslog(3, "%s,%s,Rotation path is too long, could not delete old logs.\n", "ERROR", "CLLog");
    }

    else if (unlink(v21))
    {
      perror("Failed to delete log");
    }
  }

  return 1;
}

void sub_19B98E73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_19B98E7C0(_BYTE *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 71) < 0)
  {
    result = sub_19B874C9C(result + 48, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v4 = *(a2 + 48);
    *(result + 8) = *(a2 + 64);
    *(result + 3) = v4;
  }

  if (*(a2 + 95) < 0)
  {
    return sub_19B874C9C(v3 + 72, *(a2 + 72), *(a2 + 80));
  }

  v5 = *(a2 + 72);
  *(v3 + 11) = *(a2 + 88);
  *(v3 + 72) = v5;
  return result;
}

void sub_19B98E834(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_19B98E850(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    v2 = *(a1 + 48);

    operator delete(v2);
  }
}

void sub_19B98E8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 112))
  {
    goto LABEL_7;
  }

  v5 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v5 = *v5;
  }

  v6 = (a1 + 64);
  v7 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v7 = *v6;
  }

  if (!sub_19B8B6FE4(v5, v7, a3, a4))
  {
    if (*(a1 + 87) < 0)
    {
      v6 = *v6;
    }

    syslog(3, "%s,%s,Failed to write %s\n", "ERROR", "CLLog", v6);
  }

  else
  {
LABEL_7:
    v8 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v8 = *v8;
    }

    unlink(v8);
  }

  if ((*(a1 + 112) & 0x80000000) == 0)
  {
    v9 = (a1 + 88);
    if (*(a1 + 111) < 0)
    {
      v9 = *v9;
    }

    v10 = *(a1 + 32);

    sub_19B9952B0(v9, v10);
  }
}

char *sub_19B98E98C(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 63) < 0)
  {
    result = sub_19B874C9C(result + 40, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(result + 7) = *(a2 + 56);
    *(result + 40) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    result = sub_19B874C9C(v3 + 64, *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v5 = *(a2 + 64);
    *(v3 + 10) = *(a2 + 80);
    *(v3 + 4) = v5;
  }

  if (*(a2 + 111) < 0)
  {
    return sub_19B874C9C(v3 + 88, *(a2 + 88), *(a2 + 96));
  }

  v6 = *(a2 + 88);
  *(v3 + 13) = *(a2 + 104);
  *(v3 + 88) = v6;
  return result;
}

void sub_19B98EA28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_19B98EA5C(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

uint64_t sub_19B98EAC4(uint64_t a1)
{
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  v76 = a1 + 40;
  (*(v2 + 16))(a1 + 40);
  v77 = 256;
  v7 = sub_19BA4F4E0(a1, v4, v5, v6);
  if (*(a1 + 79) < 0)
  {
    sub_19B874C9C(&__dst, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    __dst = *(a1 + 56);
    v75 = *(a1 + 72);
  }

  if (*(a1 + 103) < 0)
  {
    sub_19B874C9C(&v72, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    v72 = *(a1 + 80);
    v73 = *(a1 + 96);
  }

  if (*(a1 + 216))
  {
    syslog(5, "%s,%s,dumping internal buffer\n", "NOTICE", "CLLog");
    sub_19BA4F410(a1, &v78);
    if ((v78.st_gid & 0x80000000) == 0)
    {
      v8 = &v78;
    }

    else
    {
      v8 = *&v78.st_dev;
    }

    v9 = fopen(v8, "a");
    v10 = v9;
    if (SHIBYTE(v78.st_gid) < 0)
    {
      operator delete(*&v78.st_dev);
      if (v10)
      {
        goto LABEL_13;
      }
    }

    else if (v9)
    {
LABEL_13:
      sub_19B994440(*(a1 + 216), v10);
      fclose(v10);
      v11 = 1;
      goto LABEL_16;
    }
  }

  v11 = 0;
LABEL_16:
  if (v75 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (!stat(p_dst, &v78))
  {
    v13 = HIBYTE(v75);
    if (v75 >= 0)
    {
      v14 = &__dst;
    }

    else
    {
      v14 = __dst;
    }

    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3321888768;
    v67[2] = sub_19B98F69C;
    v67[3] = &unk_1F0E6DB08;
    v67[4] = a1;
    if (SHIBYTE(v73) < 0)
    {
      sub_19B874C9C(&v68, v72, *(&v72 + 1));
      v13 = HIBYTE(v75);
    }

    else
    {
      v68 = v72;
      v69 = v73;
    }

    if (v13 < 0)
    {
      sub_19B874C9C(&__p, __dst, *(&__dst + 1));
    }

    else
    {
      __p = __dst;
      v71 = v75;
    }

    sub_19B9952B0(v14, v67);
    if (SHIBYTE(v71) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v69) < 0)
    {
      operator delete(v68);
    }
  }

  sub_19B98E450(a1);
  v15 = (a1 + 128);
  v16 = (a1 + 128);
  if (*(a1 + 151) < 0)
  {
    v16 = *v15;
  }

  if (!stat(v16, &v78))
  {
    sub_19BA4F410(a1, &v78);
    v18 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v18 = *v15;
    }

    if ((v78.st_gid & 0x80000000) == 0)
    {
      v19 = &v78;
    }

    else
    {
      v19 = *&v78.st_dev;
    }

    rename(v18, v19, v17);
    if ((v78.st_gid & 0x80000000) == 0)
    {
      v20 = &v78;
    }

    else
    {
      v20 = *&v78.st_dev;
    }

    sub_19B8B67E0(v20);
    if (*(a1 + 151) < 0)
    {
      v15 = *v15;
    }

    sub_19B98DE08(a1, v15);
    if (SHIBYTE(v78.st_gid) < 0)
    {
      operator delete(*&v78.st_dev);
    }

    v11 = 1;
  }

  v66 = 0;
  sub_19B9415F0(&v78);
  if (sub_19B8767CC(*&v78.st_dev, "LogNatalimetry", &v66, 0xFFFFFFFFLL))
  {
    v21 = 1;
  }

  else
  {
    sub_19B9415F0(v64);
    v21 = sub_19B8767CC(v64[0], "LogCalorimetry", &v66, 0xFFFFFFFFLL);
    if (v64[1])
    {
      sub_19B8750F8(v64[1]);
    }
  }

  if (v78.st_ino)
  {
    sub_19B8750F8(v78.st_ino);
  }

  if (v21)
  {
    if (v66)
    {
      sub_19B9535D8(0, &v63);
      v22 = std::string::append(&v63, "userinfo", 8uLL);
      v23 = *&v22->__r_.__value_.__l.__data_;
      *&v78.st_uid = *(&v22->__r_.__value_.__l + 2);
      *&v78.st_dev = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      v24 = std::string::append(&v78, ".plist", 6uLL);
      v25 = *&v24->__r_.__value_.__l.__data_;
      v65 = v24->__r_.__value_.__r.__words[2];
      *v64 = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v78.st_gid) < 0)
      {
        operator delete(*&v78.st_dev);
      }

      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      if (v65 >= 0)
      {
        v26 = v64;
      }

      else
      {
        v26 = v64[0];
      }

      if (!stat(v26, &v78))
      {
        sub_19BA4EF9C(&v61);
        v27 = std::string::append(&v61, "/", 1uLL);
        v28 = *&v27->__r_.__value_.__l.__data_;
        v62.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v62.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        v29 = std::string::append(&v62, "userinfo", 8uLL);
        v30 = *&v29->__r_.__value_.__l.__data_;
        v63.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
        *&v63.__r_.__value_.__l.__data_ = v30;
        v29->__r_.__value_.__l.__size_ = 0;
        v29->__r_.__value_.__r.__words[2] = 0;
        v29->__r_.__value_.__r.__words[0] = 0;
        v31 = std::string::append(&v63, ".log", 4uLL);
        v32 = *&v31->__r_.__value_.__l.__data_;
        *&v78.st_uid = *(&v31->__r_.__value_.__l + 2);
        *&v78.st_dev = v32;
        v31->__r_.__value_.__l.__size_ = 0;
        v31->__r_.__value_.__r.__words[2] = 0;
        v31->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v63.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        if (v65 >= 0)
        {
          v33 = v64;
        }

        else
        {
          v33 = v64[0];
        }

        if ((v78.st_gid & 0x80000000) == 0)
        {
          v34 = &v78;
        }

        else
        {
          v34 = *&v78.st_dev;
        }

        sub_19B8B6930(v33, v34);
        if ((v78.st_gid & 0x80000000) == 0)
        {
          v35 = &v78;
        }

        else
        {
          v35 = *&v78.st_dev;
        }

        sub_19B8B67E0(v35);
        if (SHIBYTE(v78.st_gid) < 0)
        {
          operator delete(*&v78.st_dev);
        }
      }

      sub_19B9535D8(0, &v62);
      v36 = std::string::append(&v62, "cache", 5uLL);
      v37 = *&v36->__r_.__value_.__l.__data_;
      *&v78.st_uid = *(&v36->__r_.__value_.__l + 2);
      *&v78.st_dev = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      v38 = std::string::append(&v78, ".plist", 6uLL);
      v39 = *&v38->__r_.__value_.__l.__data_;
      v63.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
      *&v63.__r_.__value_.__l.__data_ = v39;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v78.st_gid) < 0)
      {
        operator delete(*&v78.st_dev);
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v63;
      }

      else
      {
        v40 = v63.__r_.__value_.__r.__words[0];
      }

      if (!stat(v40, &v78))
      {
        sub_19BA4EF9C(&v60);
        v41 = std::string::append(&v60, "/", 1uLL);
        v42 = *&v41->__r_.__value_.__l.__data_;
        v61.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
        *&v61.__r_.__value_.__l.__data_ = v42;
        v41->__r_.__value_.__l.__size_ = 0;
        v41->__r_.__value_.__r.__words[2] = 0;
        v41->__r_.__value_.__r.__words[0] = 0;
        v43 = std::string::append(&v61, "cache", 5uLL);
        v44 = *&v43->__r_.__value_.__l.__data_;
        v62.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
        *&v62.__r_.__value_.__l.__data_ = v44;
        v43->__r_.__value_.__l.__size_ = 0;
        v43->__r_.__value_.__r.__words[2] = 0;
        v43->__r_.__value_.__r.__words[0] = 0;
        v45 = std::string::append(&v62, ".log", 4uLL);
        v46 = *&v45->__r_.__value_.__l.__data_;
        *&v78.st_uid = *(&v45->__r_.__value_.__l + 2);
        *&v78.st_dev = v46;
        v45->__r_.__value_.__l.__size_ = 0;
        v45->__r_.__value_.__r.__words[2] = 0;
        v45->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v47 = &v63;
        }

        else
        {
          v47 = v63.__r_.__value_.__r.__words[0];
        }

        if ((v78.st_gid & 0x80000000) == 0)
        {
          v48 = &v78;
        }

        else
        {
          v48 = *&v78.st_dev;
        }

        sub_19B8B6930(v47, v48);
        if ((v78.st_gid & 0x80000000) == 0)
        {
          v49 = &v78;
        }

        else
        {
          v49 = *&v78.st_dev;
        }

        sub_19B8B67E0(v49);
        if (SHIBYTE(v78.st_gid) < 0)
        {
          operator delete(*&v78.st_dev);
        }
      }

      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v65) < 0)
      {
        operator delete(v64[0]);
      }
    }
  }

  else
  {
    v66 = 0;
  }

  sub_19BA4EDC4(&v62);
  v50 = std::string::append(&v62, "/", 1uLL);
  v51 = *&v50->__r_.__value_.__l.__data_;
  v63.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
  *&v63.__r_.__value_.__l.__data_ = v51;
  v50->__r_.__value_.__l.__size_ = 0;
  v50->__r_.__value_.__r.__words[2] = 0;
  v50->__r_.__value_.__r.__words[0] = 0;
  v52 = std::string::append(&v63, "com.apple.timed", 0xFuLL);
  v53 = *&v52->__r_.__value_.__l.__data_;
  *&v78.st_uid = *(&v52->__r_.__value_.__l + 2);
  *&v78.st_dev = v53;
  v52->__r_.__value_.__l.__size_ = 0;
  v52->__r_.__value_.__r.__words[2] = 0;
  v52->__r_.__value_.__r.__words[0] = 0;
  v54 = std::string::append(&v78, ".plist", 6uLL);
  v55 = *&v54->__r_.__value_.__l.__data_;
  v65 = v54->__r_.__value_.__r.__words[2];
  *v64 = v55;
  v54->__r_.__value_.__l.__size_ = 0;
  v54->__r_.__value_.__r.__words[2] = 0;
  v54->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v78.st_gid) < 0)
  {
    operator delete(*&v78.st_dev);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (v65 >= 0)
  {
    v56 = v64;
  }

  else
  {
    v56 = v64[0];
  }

  if (stat(v56, &v78))
  {
    goto LABEL_137;
  }

  sub_19BA4ECC4(&v63);
  sub_19B8759E8(&v62, "com.apple.timed");
  sub_19B8759E8(&v61, ".plist.log");
  sub_19BA4F174(&v63.__r_.__value_.__l.__data_, &v62, &v61, v7, &v78);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (v65 >= 0)
  {
    v57 = v64;
  }

  else
  {
    v57 = v64[0];
  }

  if ((v78.st_gid & 0x80000000) == 0)
  {
    v58 = &v78;
  }

  else
  {
    v58 = *&v78.st_dev;
  }

  if (sub_19B8B6930(v57, v58) == 1)
  {
    syslog(5, "%s,%s,could not copy %s log\n", "WARNING", "CLLog", "com.apple.timed");
  }

  if ((SHIBYTE(v78.st_gid) & 0x80000000) == 0)
  {
LABEL_137:
    if (v11)
    {
      goto LABEL_139;
    }

    goto LABEL_138;
  }

  operator delete(*&v78.st_dev);
  if ((v11 & 1) == 0)
  {
LABEL_138:
    syslog(5, "%s,%s,could not dump log file\n", "WARNING", "CLLog");
  }

LABEL_139:
  if (SHIBYTE(v65) < 0)
  {
    operator delete(v64[0]);
  }

  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72);
  }

  if (SHIBYTE(v75) < 0)
  {
    operator delete(__dst);
  }

  return (*(*v3 + 24))(v3);
}

void sub_19B98F400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (*(v63 - 233) < 0)
  {
    operator delete(*(v63 - 256));
  }

  sub_19B888D7C(v63 - 232);
  _Unwind_Resume(a1);
}

uint64_t sub_19B98F69C(uint64_t a1, char *a2)
{
  v4 = *(a1 + 32);
  sub_19B8759E8(&v33, a2);
  if (*(a1 + 63) >= 0)
  {
    v5 = *(a1 + 63);
  }

  else
  {
    v5 = *(a1 + 48);
  }

  v6 = &v32;
  sub_19B8D78C0(&v32, v5 + 1);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v32.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    if (*(a1 + 63) >= 0)
    {
      v7 = (a1 + 40);
    }

    else
    {
      v7 = *(a1 + 40);
    }

    memmove(v6, v7, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 95;
  if (sub_19BA4F4EC(v4, &v33, &v32))
  {
    sub_19B8759E8(&v31, a2);
    sub_19B8759E8(v29, ".log.bz2");
    if (sub_19BA4F5B8(v4, &v31, v29))
    {
      v8 = 1;
    }

    else
    {
      sub_19B8759E8(v27, a2);
      sub_19B8759E8(__p, ".log");
      v8 = sub_19BA4F5B8(v4, v27, __p);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v8 = 0;
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
    if (!v8)
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  sub_19BA4EF9C(&v31);
  v9 = std::string::append(&v31, "/", 1uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = strlen(a2);
  v12 = std::string::append(&v32, a2, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v34 = v12->__r_.__value_.__r.__words[2];
  v33 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 87) >= 0)
  {
    v14 = *(a1 + 87);
  }

  else
  {
    v14 = *(a1 + 72);
  }

  v15 = &v31;
  sub_19B8D78C0(&v31, v14 + 1);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v15 = v31.__r_.__value_.__r.__words[0];
  }

  if (v14)
  {
    if (*(a1 + 87) >= 0)
    {
      v16 = (a1 + 64);
    }

    else
    {
      v16 = *(a1 + 64);
    }

    memmove(v15, v16, v14);
  }

  *(&v15->__r_.__value_.__l.__data_ + v14) = 47;
  v17 = strlen(a2);
  v18 = std::string::append(&v31, a2, v17);
  v32 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v20 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
  v21 = v32.__r_.__value_.__r.__words[0];
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v32;
  }

  else
  {
    v22 = v32.__r_.__value_.__r.__words[0];
  }

  if (v34 >= 0)
  {
    v23 = &v33;
  }

  else
  {
    v23 = v33;
  }

  rename(v22, v23, v19);
  sub_19B8B67E0(v23);
  if (v20 < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  return 1;
}

void sub_19B98F9B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 57) < 0)
  {
    operator delete(*(v35 - 80));
  }

  _Unwind_Resume(exception_object);
}

char *sub_19B98FA88(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 63) < 0)
  {
    result = sub_19B874C9C(result + 40, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(result + 7) = *(a2 + 56);
    *(result + 40) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    return sub_19B874C9C(v3 + 64, *(a2 + 64), *(a2 + 72));
  }

  v5 = *(a2 + 64);
  *(v3 + 10) = *(a2 + 80);
  *(v3 + 4) = v5;
  return result;
}

void sub_19B98FAFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_19B98FB18(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

os_log_t sub_19B98FB70()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1ED519080 = result;
  return result;
}

FILE ***sub_19B98FBA0(FILE ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_19B9940B8(v2);
    MEMORY[0x19EAE98C0](v3, 0x10B0C403E4C181ELL);
  }

  return a1;
}

void sub_19B98FBEC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

FILE **sub_19B98FC24(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_19B9940B8(result);

    JUMPOUT(0x19EAE98C0);
  }

  return result;
}

uint64_t sub_19B98FC68(uint64_t a1, uint64_t a2)
{
  if (sub_19B916FBC(a2, &unk_1F0E6DBD0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19B98FCA8(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  objc_msgSend_setDateFormat_(v2, v3, @"yy-MM-dd", v4);

  return objc_msgSend_stringFromDate_(v2, v5, a1, v6);
}

uint64_t sub_19B98FD00(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  objc_msgSend_setDateFormat_(v2, v3, @"HH-mm-ss", v4);

  return objc_msgSend_stringFromDate_(v2, v5, a1, v6);
}

void sub_19B98FD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v188[152] = *MEMORY[0x1E69E9840];
  sub_19B87BBB4();
  if (!sub_19B93CCA4() || *a1 != 1)
  {
    return;
  }

  v11 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v8, v9, v10);
  v12 = NSHomeDirectory();
  v14 = objc_msgSend_attributesOfFileSystemForPath_error_(v11, v13, v12, 0);
  v17 = objc_msgSend_objectForKey_(v14, v15, *MEMORY[0x1E696A3C0], v16);
  v21 = objc_msgSend_unsignedLongValue(v17, v18, v19, v20);
  if (v21 <= 0x3B9AC9FF)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
    }

    v22 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = v21;
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_INFO, "CLTSP,Recorder,unable to write data as device doesn't have enough disk space,%lu", buf, 0xCu);
    }

    v23 = sub_19B87DD40();
    if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
      }

      *__dst = 134217984;
      *&__dst[4] = v21;
      v24 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,Recorder,unable to write data as device doesn't have enough disk space,%lu", __dst, 12);
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRecorder::writeToFile(id _Nonnull, NSDate * _Nonnull, const CLTripSegmentRecorderLogEnum)", "CoreLocation: %s\n", v24);
LABEL_129:
      if (v24 != buf)
      {
        free(v24);
      }

      return;
    }

    return;
  }

  if (a4)
  {
LABEL_16:
    v25 = sub_19B98FCA8(a3);
    v28 = sub_19B98FD00(a3);
    if (*(a1 + 1) == 1)
    {
      v29 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v26, @"%@/tripSegment_%@_%@.cltsp", v27, *(a1 + 8), v25, v28);
    }

    else
    {
      v29 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v26, @"%@/tripSegment_%@.cltsp", v27, *(a1 + 8), v25);
    }

    v88 = v29;
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
    }

    v89 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      v93 = objc_msgSend_UTF8String(v25, v90, v91, v92);
      v97 = objc_msgSend_UTF8String(v28, v94, v95, v96);
      *buf = 136446722;
      *&buf[4] = v93;
      *&buf[12] = 2082;
      *v185 = v97;
      *&v185[8] = 2114;
      v186 = v88;
      _os_log_impl(&dword_19B873000, v89, OS_LOG_TYPE_INFO, "CLTSP,Recorder,recording data for date,%{public}s,time,%{public}s to filename,%{public}@", buf, 0x20u);
    }

    v98 = sub_19B87DD40();
    if (*(v98 + 160) > 1 || *(v98 + 164) > 1 || *(v98 + 168) > 1 || *(v98 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
      }

      v105 = qword_1EAFE46E8;
      v106 = objc_msgSend_UTF8String(v25, v102, v103, v104);
      v110 = objc_msgSend_UTF8String(v28, v107, v108, v109);
      *__dst = 136446722;
      *&__dst[4] = v106;
      v180 = 2082;
      v181 = v110;
      v182 = 2114;
      v183 = v88;
      v111 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v105, 1, "CLTSP,Recorder,recording data for date,%{public}s,time,%{public}s to filename,%{public}@", __dst, 32);
      sub_19B885924("Generic", 1, 0, 2, "NSString * _Nonnull CLTripSegmentRecorder::getFileName(NSDate * _Nonnull)", "CoreLocation: %s\n", v111);
      if (v111 != buf)
      {
        free(v111);
      }
    }

    v112 = objc_msgSend_UTF8String(v88, v99, v100, v101);
    v113 = strlen(v112);
    if (v113 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_19B890AD4();
    }

    v117 = v113;
    if (v113 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v182) = v113;
    if (v113)
    {
      memmove(__dst, v112, v113);
    }

    __dst[v117] = 0;
    buf[0] = 0;
    v118 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v114, v115, v116);
    if ((objc_msgSend_fileExistsAtPath_isDirectory_(v118, v119, v88, buf) & 1) == 0)
    {
      if (v182 >= 0)
      {
        v120 = __dst;
      }

      else
      {
        v120 = *__dst;
      }

      sub_19B8E3AF0(buf, v120, 20);
      if (!std::filebuf::close())
      {
        std::ios_base::clear(&buf[*(*buf - 24)], *&v187[*(*buf - 24)] | 4);
      }

      *buf = *MEMORY[0x1E69E54D0];
      *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54D0] + 24);
      MEMORY[0x19EAE9740](&buf[8]);
      std::ostream::~ostream();
      MEMORY[0x19EAE9870](v188);
    }

    v121 = objc_autoreleasePoolPush();
    v125 = objc_msgSend_fileHandleForWritingAtPath_(MEMORY[0x1E696AC00], v122, v88, v123);
    if (!v125)
    {
      goto LABEL_105;
    }

    v173 = 0;
    v126 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v124, a2, 1, &v173);
    if (objc_msgSend_length(v126, v127, v128, v129))
    {
      objc_msgSend_seekToEndOfFile(v125, v130, v131, v132);
      v133 = MEMORY[0x1E696AEC0];
      v137 = objc_msgSend_length(v126, v134, v135, v136);
      v140 = objc_msgSend_stringWithFormat_(v133, v138, @"cltspv1,%d,%d,AA", v139, a4, v137);
      v143 = objc_msgSend_dataUsingEncoding_(v140, v141, 4, v142);
      objc_msgSend_writeData_(v125, v144, v143, v145);
      objc_msgSend_writeData_(v125, v146, v126, v147);
      objc_msgSend_closeFile(v125, v148, v149, v150);
      ++dword_1EAFE5120;
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
      }

      v151 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
      {
        v155 = objc_msgSend_length(v126, v152, v153, v154);
        *buf = 67240704;
        *&buf[4] = a4;
        *&buf[8] = 1026;
        *&buf[10] = v155;
        *v185 = 2050;
        *&v185[2] = v21;
        _os_log_impl(&dword_19B873000, v151, OS_LOG_TYPE_INFO, "CLTSP,Recorder,writeToFile,success,type,%{public}d,length,%{public}d,freeDiskSpace,%{public}lu", buf, 0x18u);
      }

      v156 = sub_19B87DD40();
      if (*(v156 + 160) <= 1 && *(v156 + 164) <= 1 && *(v156 + 168) <= 1 && !*(v156 + 152))
      {
        goto LABEL_105;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
      }

      v160 = qword_1EAFE46E8;
      v161 = objc_msgSend_length(v126, v157, v158, v159);
      LODWORD(v174) = 67240704;
      HIDWORD(v174) = a4;
      v175 = 1026;
      v176 = v161;
      v177 = 2050;
      v178 = v21;
      v162 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v160, 1, "CLTSP,Recorder,writeToFile,success,type,%{public}d,length,%{public}d,freeDiskSpace,%{public}lu", &v174, 24);
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRecorder::writeToFile(id _Nonnull, NSDate * _Nonnull, const CLTripSegmentRecorderLogEnum)", "CoreLocation: %s\n", v162);
    }

    else
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
      }

      v163 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
      {
        *buf = 67240192;
        *&buf[4] = a4;
        _os_log_impl(&dword_19B873000, v163, OS_LOG_TYPE_INFO, "CLTSP,Recorder,writeToFile,failed as date length is 0,type,%{public}d", buf, 8u);
      }

      v164 = sub_19B87DD40();
      if (*(v164 + 160) <= 1 && *(v164 + 164) <= 1 && *(v164 + 168) <= 1 && !*(v164 + 152))
      {
        goto LABEL_105;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
      }

      LODWORD(v174) = 67240192;
      HIDWORD(v174) = a4;
      v162 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,Recorder,writeToFile,failed as date length is 0,type,%{public}d", &v174, 8);
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRecorder::writeToFile(id _Nonnull, NSDate * _Nonnull, const CLTripSegmentRecorderLogEnum)", "CoreLocation: %s\n", v162);
    }

    if (v162 != buf)
    {
      free(v162);
    }

LABEL_105:
    objc_autoreleasePoolPop(v121);
    if (SHIBYTE(v182) < 0)
    {
      operator delete(*__dst);
    }

    return;
  }

  sub_19B87BBB4();
  if (sub_19B93CCA4() && *a1 == 1)
  {
    v33 = *(a1 + 8);
    buf[0] = 0;
    v34 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v30, v31, v32);
    if (objc_msgSend_fileExistsAtPath_isDirectory_(v34, v35, v33, buf))
    {
LABEL_34:
      v46 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v36, v37, v38, -604800.0);
      sub_19B87BBB4();
      if (sub_19B93CCA4())
      {
        if (*a1 == 1)
        {
          v172 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v47, v48, v49);
          v52 = objc_msgSend_enumeratorAtPath_(v172, v50, *(a1 + 8), v51);
          for (i = objc_msgSend_nextObject(v52, v53, v54, v55); i; i = objc_msgSend_nextObject(v52, v68, v69, v70))
          {
            v174 = 0;
            v59 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v57, @"%@/%@", v58, *(a1 + 8), i);
            v61 = objc_msgSend_attributesOfItemAtPath_error_(v172, v60, v59, 0);
            v65 = objc_msgSend_fileCreationDate(v61, v62, v63, v64);
            if (objc_msgSend_compare_(v65, v66, v46, v67) == -1)
            {
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
              }

              v71 = qword_1EAFE46E8;
              if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
              {
                objc_msgSend_timeIntervalSinceReferenceDate(v65, v72, v73, v74);
                *buf = 138543618;
                *&buf[4] = v59;
                *&buf[12] = 2050;
                *v185 = v75;
                _os_log_impl(&dword_19B873000, v71, OS_LOG_TYPE_INFO, "CLTSP,Recorder,old file deleted,%{public}@,creationDate,%{public}.2lf", buf, 0x16u);
              }

              v76 = sub_19B87DD40();
              if (*(v76 + 160) > 1 || *(v76 + 164) > 1 || *(v76 + 168) > 1 || *(v76 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
                }

                v83 = qword_1EAFE46E8;
                objc_msgSend_timeIntervalSinceReferenceDate(v65, v80, v81, v82);
                *__dst = 138543618;
                *&__dst[4] = v59;
                v180 = 2050;
                v181 = v84;
                v85 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v83, 1, "CLTSP,Recorder,old file deleted,%{public}@,creationDate,%{public}.2lf", __dst, 22);
                sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRecorder::removeFilesOlderThanThisDate(NSDate * _Nonnull)", "CoreLocation: %s\n", v85);
                if (v85 != buf)
                {
                  free(v85);
                }
              }

              v86 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v77, v78, v79);
              objc_msgSend_removeItemAtPath_error_(v86, v87, v59, &v174);
            }
          }
        }
      }

      goto LABEL_16;
    }

    v39 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v36, v37, v38);
    v174 = 0;
    if (objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v39, v40, *(a1 + 8), 1, 0, &v174))
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
      }

      v41 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
      {
        v42 = *(a1 + 8);
        *buf = 138543362;
        *&buf[4] = v42;
        _os_log_impl(&dword_19B873000, v41, OS_LOG_TYPE_INFO, "CLTSP,Recorder,created directory at path,%{public}@", buf, 0xCu);
      }

      v43 = sub_19B87DD40();
      if (*(v43 + 160) > 1 || *(v43 + 164) > 1 || *(v43 + 168) > 1 || *(v43 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
        }

        v44 = *(a1 + 8);
        *__dst = 138543362;
        *&__dst[4] = v44;
        v45 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,Recorder,created directory at path,%{public}@", __dst, 12);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRecorder::createDirectory()", "CoreLocation: %s\n", v45);
        if (v45 != buf)
        {
          free(v45);
        }
      }

      goto LABEL_34;
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
    }

    v165 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      v166 = *(a1 + 8);
      *buf = 138543618;
      *&buf[4] = v166;
      *&buf[12] = 2114;
      *v185 = v174;
      _os_log_impl(&dword_19B873000, v165, OS_LOG_TYPE_INFO, "CLTSP,Recorder,unable to create directory at path,%{public}@, error, %{public}@", buf, 0x16u);
    }

    v167 = sub_19B87DD40();
    if (*(v167 + 160) > 1 || *(v167 + 164) > 1 || *(v167 + 168) > 1 || *(v167 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
      }

      v168 = *(a1 + 8);
      *__dst = 138543618;
      *&__dst[4] = v168;
      v180 = 2114;
      v181 = v174;
      v169 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,Recorder,unable to create directory at path,%{public}@, error, %{public}@", __dst, 22);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRecorder::createDirectory()", "CoreLocation: %s\n", v169);
      if (v169 != buf)
      {
        free(v169);
      }
    }
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
  }

  v170 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = 0;
    _os_log_impl(&dword_19B873000, v170, OS_LOG_TYPE_ERROR, "CLTSP,Recorder,unable to write data of type,%{pubilc}d,as directory could not be created", buf, 8u);
  }

  v171 = sub_19B87DD40();
  if ((*(v171 + 160) & 0x80000000) == 0 || (*(v171 + 164) & 0x80000000) == 0 || (*(v171 + 168) & 0x80000000) == 0 || *(v171 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
    }

    *__dst = 67109120;
    v24 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,Recorder,unable to write data of type,%{pubilc}d,as directory could not be created", __dst, 8);
    sub_19B885924("Generic", 1, 0, 0, "void CLTripSegmentRecorder::writeToFile(id _Nonnull, NSDate * _Nonnull, const CLTripSegmentRecorderLogEnum)", "CoreLocation: %s\n", v24);
    goto LABEL_129;
  }
}

void sub_19B990E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B990E90()
{
  result = os_log_create("com.apple.locationd.Position", "TripSegmentProcessor");
  qword_1EAFE46E8 = result;
  return result;
}

id sub_19B9939EC(uint64_t a1, const char *a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E696A3A0];
  v4[0] = *MEMORY[0x1E696A388];
  result = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v4, &v3, 1);
  qword_1ED5192E0 = result;
  return result;
}

os_log_t sub_19B993A78()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1ED519080 = result;
  return result;
}

char *sub_19B993FC8(char *a1, const __CFString *a2, char a3)
{
  v4 = sub_19B93866C(a1, a2, a3, 0x1F0E6FE80);
  *v4 = &unk_1F0E6DC78;
  if (*(v4 + 16) == 1)
  {
    sub_19B938FCC(a1, 1);
  }

  return a1;
}

void sub_19B994044(uint64_t a1)
{
  sub_19B938EFC(a1);

  JUMPOUT(0x19EAE98C0);
}

BOOL sub_19B994080(uint64_t a1, const __CFString *a2, const void *a3)
{
  sub_19B93AA98(a1, a2, a3);

  return sub_19B938E40(a1);
}

FILE **sub_19B9940B8(FILE **a1)
{
  sub_19B9940EC(a1);
  sub_19B93466C((a1 + 4));
  return a1;
}

uint64_t sub_19B9940EC(FILE **a1)
{
  v2 = a1 + 4;
  (*&a1[4]->_flags)(a1 + 4);
  v3 = *a1;
  if (*a1)
  {
    *a1 = 0;
    fclose(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    free(v4);
    a1[1] = 0;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  sub_19B9943C8(a1);
  (*(*v2 + 24))(v2);
  return v5;
}

void sub_19B9941B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

FILE *sub_19B9941CC(FILE **a1)
{
  v2 = a1 + 4;
  (*&a1[4]->_flags)(a1 + 4);
  if (!*a1)
  {
    v3 = malloc_type_malloc(*(a1 + 4), 0x100004077774924uLL);
    a1[1] = v3;
    if (v3)
    {
      *a1 = funopen(a1, 0, sub_19B9942E0, 0, sub_19B9943C4);
      sub_19B9943C8(a1);
    }
  }

  v4 = *a1;
  (a1[4]->_bf._base)(v2);
  return v4;
}

void sub_19B9942C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9942E0(uint64_t a1, const void *a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = a1 + 32;
  (*(*(a1 + 32) + 16))(a1 + 32);
  v7 = *(v6 - 24);
  if (v7)
  {
    v8 = *(a1 + 20);
    v9 = *(a1 + 16) - v8;
    if (v9 >= v3)
    {
      v3 = v3;
    }

    else
    {
      v3 = v9;
    }

    memcpy((v7 + v8), a2, v3);
    v10 = *(a1 + 16);
    v11 = (*(a1 + 20) + v3) % v10;
    if (*(a1 + 24) + v3 < v10)
    {
      v10 = *(a1 + 24) + v3;
    }

    *(a1 + 20) = v11;
    *(a1 + 24) = v10;
  }

  else
  {
    v3 = 0;
  }

  (*(*v6 + 24))(v6);
  return v3;
}

uint64_t sub_19B9943C8(uint64_t a1)
{
  v1 = a1 + 32;
  (*(*(a1 + 32) + 16))(a1 + 32);
  *(v1 - 12) = 0;
  return (*(*v1 + 24))(v1);
}

uint64_t sub_19B994440(uint64_t a1, FILE *a2)
{
  v4 = a1 + 32;
  (*(*(a1 + 32) + 16))(a1 + 32);
  v5 = *(v4 - 24);
  if (v5)
  {
    if (*a1)
    {
      fflush(*a1);
      v5 = *(a1 + 8);
    }

    v6 = *(a1 + 24);
    v7 = *(a1 + 16);
    if (v6 >= v7)
    {
      v8 = v5 + v7;
      v9 = *(v8 - 1);
      *(v8 - 1) = 0;
      fputs((*(a1 + 8) + *(a1 + 20)), a2);
      fputc(v9, a2);
      v5 = *(a1 + 8);
    }

    *(v5 + *(a1 + 20)) = 0;
    fputs(*(a1 + 8), a2);
    sub_19B9943C8(a1);
  }

  else
  {
    v6 = 0;
  }

  (*(*v4 + 24))(v4);
  return v6;
}

void sub_19B99455C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

double sub_19B994BF4(unint64_t a1)
{
  v2 = *&qword_1EAFE5B08;
  if (*&qword_1EAFE5B08 == 0.0)
  {
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v5 = denom;
        denom = numer % denom;
        numer = v5;
      }

      while (denom);
    }

    else
    {
      v5 = info.numer;
    }

    v6 = 1000000000;
    v7 = info.numer / v5;
    do
    {
      v8 = v7;
      v7 = v6;
      v6 = v8 % v6;
    }

    while (v6);
    v2 = (info.numer / v5 / v7) / (0x3B9ACA00 / v7 * (info.denom / v5));
    *&qword_1EAFE5B08 = v2;
  }

  return v2 * a1;
}

void sub_19B9952B0(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, a1, v6);
  v9 = objc_msgSend_contentsOfDirectoryAtPath_error_(v4, v8, v7, 0);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = objc_msgSend_reverseObjectEnumerator(v9, v10, v11, v12, 0);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v23, v27, 16);
  if (v15)
  {
    v19 = v15;
    v20 = *v24;
LABEL_3:
    v21 = 0;
    while (1)
    {
      if (*v24 != v20)
      {
        objc_enumerationMutation(v13);
      }

      v22 = objc_msgSend_UTF8String(*(*(&v23 + 1) + 8 * v21), v16, v17, v18);
      if (!(*(a2 + 16))(a2, v22))
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v23, v27, 16);
        if (v19)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

id sub_19B9964DC(void *a1, uint64_t a2, void *a3)
{
  v88.receiver = a1;
  v88.super_class = &off_1F0EA52A0;
  v7 = objc_msgSendSuper2(&v88, sel_init);
  if (v7)
  {
    v86 = 0.0;
    v87 = 0.0;
    objc_msgSend_center(a3, v4, v5, v6);
    v9 = v8;
    objc_msgSend_center(a3, v10, v11, v12);
    objc_msgSend_radius(a3, v13, v14, v15);
    v16 = v9 * 0.0174532925;
    v18 = v17 / 6378137.0;
    v19 = __sincos_stret(v16);
    v20 = __sincos_stret(v18);
    v21 = asin(v19.__cosval * v20.__sinval + v19.__sinval * v20.__cosval) / 0.0174532925;
    objc_msgSend_center(a3, v22, v23, v24);
    v26 = v25;
    objc_msgSend_center(a3, v27, v28, v29);
    v31 = v30;
    objc_msgSend_radius(a3, v32, v33, v34);
    v35 = v26 * 0.0174532925;
    v37 = v36 / 6378137.0;
    v38 = __sincos_stret(v35);
    v39 = __sincos_stret(v37);
    v40 = asin(v38.__cosval * v39.__sinval * 6.123234e-17 + v38.__sinval * v39.__cosval);
    v41 = sin(v40);
    v42 = (v31 * 0.0174532925 + atan2(v38.__cosval * v39.__sinval, v39.__cosval - v38.__sinval * v41)) / 0.0174532925;
    objc_msgSend_center(a3, v43, v44, v45);
    v47 = v46;
    objc_msgSend_center(a3, v48, v49, v50);
    v52 = v51;
    objc_msgSend_radius(a3, v53, v54, v55);
    v57 = sub_19B8B7A88(&v87, &v85, v47, v52, 180.0, v56);
    objc_msgSend_center(a3, v58, v59, v60, v57);
    v62 = v61;
    objc_msgSend_center(a3, v63, v64, v65);
    v67 = v66;
    objc_msgSend_radius(a3, v68, v69, v70);
    sub_19B8B7A88(&v85, &v86, v62, v67, 270.0, v71);
    objc_msgSend_setSouthLat_(v7, v72, v73, v74, v87);
    objc_msgSend_setWestLng_(v7, v75, v76, v77, v86);
    objc_msgSend_setNorthLat_(v7, v78, v79, v80, v21);
    objc_msgSend_setEastLng_(v7, v81, v82, v83, v42);
  }

  return v7;
}

void sub_19B996888(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v82 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_isGeocoding(*(a1 + 32), a2, a3, a4) & 1) == 0)
  {
    v8 = *(*(*(a1 + 32) + 8) + 8);
    if (v8)
    {
      v9 = v8;
    }

    *(*(*(a1 + 32) + 8) + 8) = objc_msgSend_copy(*(a1 + 56), v5, v6, v7);
    v13 = *(a1 + 40);
    if (!v13 || (objc_msgSend_coordinate(v13, v10, v11, v12), !CLLocationCoordinate2DIsValid(v83)))
    {
      v63 = *(a1 + 32);
      v64 = *(*(v63 + 8) + 24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B996CF8;
      block[3] = &unk_1E753CC90;
      block[4] = v63;
      dispatch_async(v64, block);
      return;
    }

    v17 = objc_msgSend_sharedService(MEMORY[0x1E69A2208], v14, v15, v16);
    v21 = objc_msgSend_defaultTraits(v17, v18, v19, v20);
    v25 = v21;
    if (*(a1 + 48))
    {
      objc_msgSend_clearDeviceDisplayLanguages(v21, v22, v23, v24);
      v26 = MEMORY[0x1E695DF58];
      v30 = objc_msgSend_localeIdentifier(*(a1 + 48), v27, v28, v29);
      v33 = objc_msgSend_canonicalLanguageIdentifierFromString_(v26, v31, v30, v32);
      if (v33)
      {
        objc_msgSend_addDeviceDisplayLanguage_(v25, v22, v33, v24);
      }
    }

    memset(v76, 0, 156);
    v34 = *(a1 + 40);
    if (v34)
    {
      objc_msgSend_clientLocation(v34, v22, v23, v24);
    }

    v35 = objc_alloc(MEMORY[0x1E69A1E70]);
    v38 = objc_msgSend__initWithCLClientLocation_(v35, v36, v76, v37);
    v42 = v38;
    v43 = *(a1 + 64);
    if (v43 < 0.0 || v43 >= 360.0)
    {
      v43 = -1.0;
    }

    objc_msgSend_setHeading_(v38, v39, v40, v41, v43);
    v48 = objc_msgSend_coarseMetaData(*(a1 + 40), v45, v46, v47);
    v75 = 0;
    if (!v48)
    {
      goto LABEL_33;
    }

    v52 = v48;
    v53 = MEMORY[0x1E696ACD0];
    v54 = objc_opt_class();
    v56 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v53, v55, v54, v52, &v75);
    if (v75)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E068);
      }

      v57 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v81 = v75;
        _os_log_impl(&dword_19B873000, v57, OS_LOG_TYPE_ERROR, "Coarse MetaData cannot be decoded while reverse geocoding location, error, %@", buf, 0xCu);
      }

      v58 = sub_19B87DD40();
      if ((*(v58 + 160) & 0x80000000) == 0 || (*(v58 + 164) & 0x80000000) == 0 || (*(v58 + 168) & 0x80000000) == 0 || *(v58 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6E068);
        }

        v78 = 138412290;
        v79 = v75;
        v59 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "Coarse MetaData cannot be decoded while reverse geocoding location, error, %@", &v78, 12);
        sub_19B885924("Generic", 1, 0, 0, "[CLGeocoder reverseGeocodeLocation:preferredLocale:heading:localResultsOnly:completionHandler:]_block_invoke", "CoreLocation: %s\n", v59);
        if (v59 != buf)
        {
          free(v59);
        }
      }
    }

    if (v56)
    {
      objc_msgSend_setCoarseMetadata_(v42, v49, v56, v51);
    }

    else
    {
LABEL_33:
      objc_msgSend_horizontalAccuracy(*(a1 + 40), v49, v50, v51);
      if (v65 > 1000.0)
      {
        v66 = objc_msgSend_sharedService(MEMORY[0x1E69A2208], v60, v61, v62);
        v68 = objc_msgSend_ticketForReverseGeocodeLocation_placeTypeLimit_traits_(v66, v67, v42, 4, v25);
        goto LABEL_36;
      }
    }

    v69 = objc_msgSend_sharedService(MEMORY[0x1E69A2208], v60, v61, v62);
    v68 = objc_msgSend__cl_ticketForReverseGeocodeLocation_traits_(v69, v70, v42, v25);
LABEL_36:
    v71 = v68;
    *(*(*(a1 + 32) + 8) + 16) = v68;
    if (*(a1 + 72) == 1)
    {
      objc_msgSend__ticket_didReturnError_partialResultForLocation_(*(a1 + 32), v72, v71, 0, *(a1 + 40));
    }

    else
    {
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = sub_19B996D00;
      v74[3] = &unk_1E753D0E8;
      v73 = *(a1 + 40);
      v74[4] = *(a1 + 32);
      v74[5] = v71;
      v74[6] = v73;
      objc_msgSend_submitWithHandler_networkActivity_(v71, v72, v74, 0);
    }
  }
}

uint64_t sub_19B996D00(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a1[5];
  if (a3)
  {
    return objc_msgSend__ticket_didReturnError_partialResultForLocation_(v5, a2, v6, a3, a1[6]);
  }

  else
  {
    return MEMORY[0x1EEE66B58](v5, sel__ticket_didReturnGeoMapItems_, v6, a2);
  }
}

void sub_19B996DAC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if ((objc_msgSend_isGeocoding(*(a1 + 32), a2, a3, a4) & 1) == 0)
  {
    v8 = *(*(*(a1 + 32) + 8) + 8);
    if (v8)
    {
      v9 = v8;
    }

    *(*(*(a1 + 32) + 8) + 8) = objc_msgSend_copy(*(a1 + 56), v5, v6, v7);
    v13 = *(a1 + 40);
    if (v13 && objc_msgSend_count(v13, v10, v11, v12))
    {
      v17 = objc_msgSend_sharedService(MEMORY[0x1E69A2208], v14, v15, v16);
      v21 = objc_msgSend_defaultTraits(v17, v18, v19, v20);
      v25 = v21;
      if (*(a1 + 48))
      {
        objc_msgSend_clearDeviceDisplayLanguages(v21, v22, v23, v24);
        v26 = MEMORY[0x1E695DF58];
        v30 = objc_msgSend_localeIdentifier(*(a1 + 48), v27, v28, v29);
        v33 = objc_msgSend_canonicalLanguageIdentifierFromString_(v26, v31, v30, v32);
        if (v33)
        {
          objc_msgSend_addDeviceDisplayLanguage_(v25, v22, v33, v24);
        }
      }

      v34 = objc_msgSend_sharedService(MEMORY[0x1E69A2208], v22, v23, v24);
      v36 = objc_msgSend__cl_ticketForForwardGeocodeAddressDictionary_maxResults_traits_(v34, v35, *(a1 + 40), 5, v25);
      *(*(*(a1 + 32) + 8) + 16) = v36;
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = sub_19B996F60;
      v40[3] = &unk_1E753E220;
      v40[4] = *(a1 + 32);
      v40[5] = v36;
      objc_msgSend_submitWithRefinedHandler_networkActivity_(v36, v37, v40, 0);
    }

    else
    {
      v38 = *(a1 + 32);
      v39 = *(*(v38 + 8) + 24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B996F58;
      block[3] = &unk_1E753CC90;
      block[4] = v38;
      dispatch_async(v39, block);
    }
  }
}

uint64_t sub_19B996F60(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return MEMORY[0x1EEE66B58](v5, sel__ticket_didReturnError_, v6, a4);
  }

  else
  {
    v8 = a2;
    if (!objc_msgSend_count(a2, a2, a3, 0))
    {
      if (objc_msgSend_count(a3, v9, v10, v11))
      {
        v8 = a3;
      }

      else
      {
        v8 = 0;
      }
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);

    return MEMORY[0x1EEE66B58](v12, sel__ticket_didReturnGeoMapItems_, v13, v8);
  }
}

void sub_19B99715C(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  if (objc_msgSend_isGeocoding(*(a1 + 40), v2, v3, v4))
  {
    return;
  }

  v9 = *(*(*(a1 + 40) + 8) + 8);
  if (v9)
  {
    v10 = v9;
  }

  *(*(*(a1 + 40) + 8) + 8) = objc_msgSend_copy(*(a1 + 64), v6, v7, v8);
  v14 = *(a1 + 48);
  if (!v14 || !objc_msgSend_length(v14, v11, v12, v13))
  {
    goto LABEL_14;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  objc_msgSend_center(v5, v15, v16, v17);
  if (!CLLocationCoordinate2DIsValid(v56))
  {
LABEL_14:
    v25 = *(a1 + 40);
    v26 = *(*(v25 + 8) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B997458;
    block[3] = &unk_1E753CC90;
    block[4] = v25;
    dispatch_async(v26, block);
    return;
  }

  v18 = objc_alloc(MEMORY[0x1E69A2200]);
  v5 = objc_msgSend__initWithCircularRegion_(v18, v19, v5, v20);
LABEL_12:
  getpid();
  v51 = "com.apple.locationd.registration";
  if (sandbox_check() || (memset(v54, 0, 156), !CLClientRetrieveLocationWithDynamicAccuracyReductionAndAlteredAccessoryLocations(0, 0, 0, v54)))
  {
    v24 = 0;
  }

  else
  {
    memset(v53, 0, 156);
    CLClientSnapLocationToResolution();
    v27 = objc_alloc(MEMORY[0x1E69A1E70]);
    v24 = objc_msgSend__initWithCLClientLocation_(v27, v28, v53, v29, "com.apple.locationd.registration");
  }

  v30 = objc_msgSend_sharedService(MEMORY[0x1E69A2208], v21, v22, v23, v51);
  v34 = objc_msgSend_defaultTraits(v30, v31, v32, v33);
  v38 = v34;
  if (*(a1 + 56))
  {
    objc_msgSend_clearDeviceDisplayLanguages(v34, v35, v36, v37);
    v39 = MEMORY[0x1E695DF58];
    v43 = objc_msgSend_localeIdentifier(*(a1 + 56), v40, v41, v42);
    v46 = objc_msgSend_canonicalLanguageIdentifierFromString_(v39, v44, v43, v45);
    if (v46)
    {
      objc_msgSend_addDeviceDisplayLanguage_(v38, v35, v46, v37);
    }
  }

  if (v24 | v5)
  {
    if (v24)
    {
      objc_msgSend_setDeviceLocation_(v38, v35, v24, v37);
    }

    if (v5)
    {
      objc_msgSend_setMapRegion_(v38, v35, v5, v37);
    }
  }

  v47 = objc_msgSend_sharedService(MEMORY[0x1E69A2208], v35, v36, v37);
  v49 = objc_msgSend__cl_ticketForForwardGeocodeString_maxResults_traits_(v47, v48, *(a1 + 48), 5, v38);
  *(*(*(a1 + 40) + 8) + 16) = v49;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = sub_19B997460;
  v52[3] = &unk_1E753E220;
  v52[4] = *(a1 + 40);
  v52[5] = v49;
  objc_msgSend_submitWithRefinedHandler_networkActivity_(v49, v50, v52, 0);
}

uint64_t sub_19B997460(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return MEMORY[0x1EEE66B58](v5, sel__ticket_didReturnError_, v6, a4);
  }

  else
  {
    v8 = a2;
    if (!objc_msgSend_count(a2, a2, a3, 0))
    {
      if (objc_msgSend_count(a3, v9, v10, v11))
      {
        v8 = a3;
      }

      else
      {
        v8 = 0;
      }
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);

    return MEMORY[0x1EEE66B58](v12, sel__ticket_didReturnGeoMapItems_, v13, v8);
  }
}

uint64_t sub_19B997568(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 32))
  {
    v5 = objc_msgSend_sharedService(MEMORY[0x1E69A2208], a2, a3, a4);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_19B99764C;
    v10[3] = &unk_1E753E298;
    v6 = *(a1 + 32);
    v10[4] = *(a1 + 40);
    return objc_msgSend_resolveMapItemLocallyFromHandle_completionHandler_(v5, v7, v6, v10);
  }

  else
  {
    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"kCLErrorDomain", 8, 0);
    v9 = *(*(a1 + 40) + 16);

    return v9();
  }
}

void sub_19B99764C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B9976C8;
  block[3] = &unk_1E753CD30;
  v3 = *(a1 + 32);
  block[5] = a3;
  block[6] = v3;
  block[4] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void *sub_19B997758(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_isGeocoding(*(a1 + 32), a2, a3, a4);
  if (result)
  {
    objc_msgSend_cancel(*(*(*(a1 + 32) + 8) + 16), v6, v7, v8);

    *(*(*(a1 + 32) + 8) + 16) = 0;
    v11 = *(a1 + 32);

    return MEMORY[0x1EEE66B58](v11, sel__notifyCancel, v9, v10);
  }

  return result;
}

void *sub_19B99784C(void *result)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(*(result[4] + 8) + 16);
  if (v1 == result[5])
  {
    v2 = result;

    *(*(v2[4] + 8) + 16) = 0;
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = v2[6];
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v19, v23, 16);
    if (v6)
    {
      v10 = v6;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v4);
          }

          v13 = objc_msgSend_placemarkWithGEOMapItem_(CLPlacemark, v7, *(*(&v19 + 1) + 8 * i), v9);
          if (v13)
          {
            objc_msgSend_addObject_(v3, v7, v13, v9);
          }
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v19, v23, 16);
      }

      while (v10);
    }

    v17 = objc_msgSend_count(v3, v7, v8, v9);
    v18 = v2[4];
    if (v17)
    {
      return objc_msgSend__notifyResult_(v18, v14, v3, v16);
    }

    else
    {
      return objc_msgSend__notifyNoResult(v18, v14, v15, v16);
    }
  }

  return result;
}

void *sub_19B997A2C(void *result)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = *(*(result[4] + 8) + 16);
  if (v1 == result[5])
  {
    v2 = result;

    *(*(v2[4] + 8) + 16) = 0;
    if (v2[6])
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E068);
      }

      v6 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_msgSend_description(v2[6], v7, v8, v9);
        *buf = 138477827;
        v29 = v10;
        _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Geocode error: %{private}@", buf, 0xCu);
      }

      v11 = sub_19B87DD40();
      if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6E068);
        }

        v15 = qword_1ED519090;
        v16 = objc_msgSend_description(v2[6], v12, v13, v14);
        v26 = 138477827;
        v27 = v16;
        v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v15, 0, "#Warning Geocode error: %{private}@", &v26, 12);
        sub_19B885924("Generic", 1, 0, 2, "[CLGeocoder _ticket:didReturnError:partialResultForLocation:]_block_invoke", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }
    }

    v18 = objc_msgSend_domain(v2[6], v3, v4, v5);
    v19 = GEOErrorDomain();
    if (objc_msgSend_isEqual_(v18, v20, v19, v21) && objc_msgSend_code(v2[6], v22, v23, v24) == -8)
    {
      return objc_msgSend__notifyNoResult(v2[4], v22, v25, v24);
    }

    else
    {
      return objc_msgSend__notifyError_(v2[4], v22, v2[6], v24);
    }
  }

  return result;
}

void *sub_19B997EB8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_initWithGEOCoordinate_(a1, a2, a3, a4, *(a3 + 4), *(a3 + 12));
  v9 = v5;
  if (v5)
  {
    objc_msgSend_setTimestamp_(v5, v6, v7, v8, *(a3 + 76));
    objc_msgSend_setAltitude_(v9, v10, *(a3 + 28), v11);
    objc_msgSend_setHorizontalAccuracy_(v9, v12, v13, v14, *(a3 + 20));
    objc_msgSend_setVerticalAccuracy_(v9, v15, v16, v17, *(a3 + 36));
    v20 = *(a3 + 132);
    if (v20 == 2)
    {
      objc_msgSend_setReferenceFrame_(v9, v18, 2, v19);
    }

    else
    {
      objc_msgSend_setReferenceFrame_(v9, v18, v20 == 1, v19);
    }

    if (*(a3 + 44) > -1.0)
    {
      objc_msgSend_setSpeed_(v9, v21, v22, v23);
    }

    v24 = *(a3 + 60);
    if (v24 < 360.0 && v24 >= 0.0)
    {
      objc_msgSend_setCourse_(v9, v21, v22, v23);
    }
  }

  return v9;
}

BOOL sub_19B99815C(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 20) & 0xFFFFFFFE) != 8)
    {
      return (*(a1 + 24) & 0xFFFFFFFE) == 6;
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v2 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_ERROR, "CLTSP,isRestrictedRoadForWiFiFix,null road", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v5[0] = 0;
      v4 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,isRestrictedRoadForWiFiFix,null road", v5, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL isRestrictedRoadForWiFiFix(CLMapRoadPtr)", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  return 1;
}

BOOL sub_19B998324(uint64_t a1, std::__shared_weak_count *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = !sub_19B99815C(a1);
  if (a2)
  {
    sub_19B8750F8(a2);
  }

  return v3;
}

void sub_19B998378(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B998390(char a1, uint64_t a2, uint64_t **a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *a3;
  if (!*a3)
  {
    return 0;
  }

  result = *v4;
  if (!*v4)
  {
    return result;
  }

  v7 = *(a2 + 88);
  if (v7 != 11 && v7 != 4)
  {
    return 1;
  }

  v9 = *(result + 20);
  if (v9 >= 3 && (*(result + 24) - 1) >= 2)
  {
    v11 = v9 == 3 || *(result + 76) == 2;
    v10 = v11;
  }

  else
  {
    v10 = 1;
  }

  v12 = *(a2 + 24);
  if (v12 >= 80.0)
  {
    v13 = (v12 < 240.0) & v10;
  }

  else
  {
    v13 = 1;
  }

  v14 = v4[1];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = sub_19B998324(result, v14, a1);
  if (v14)
  {
    sub_19B8750F8(v14);
  }

  if (v13)
  {
    return v15 & ((*(*a3 + 11) < 75.0) | v10);
  }

  else
  {
    return 0;
  }
}

void sub_19B9984A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9984C0(uint64_t result, void **a2, void **a3)
{
  if (result)
  {
    v3 = *result;
    if (*result)
    {
      while (a2 != a3)
      {
        v4 = *a2;
        if (*a2 && *v3 == *v4 && v3[1] == v4[1])
        {
          return 1;
        }

        a2 += 2;
      }
    }

    return 0;
  }

  return result;
}

void sub_19B998514(uint64_t **a1, unint64_t ****a2, uint64_t *a3, void **a4, uint64_t **a5)
{
  v5 = *a1;
  if (*a1)
  {
    memset(v31, 0, sizeof(v31));
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v11 = *a3;
    v13 = *v5;
    v12 = v5[1];
    v26 = v13;
    v27 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = sub_19B8EB824(v11, &v26, v31, &v28, 0, 200.0);
    if (v27)
    {
      sub_19B8750F8(v27);
    }

    if ((v14 & 1) != 0 && v28 != v29)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      if (sub_19B8EAC7C(*a3, v28, &v23, 0))
      {
        sub_19B8F1A28(&v28, v29, v23, v24, (v24 - v23) >> 4);
      }

      v15 = v28;
      for (i = v29; v15 != i; v15 += 2)
      {
        v17 = *v15;
        if (*v15)
        {
          v18 = **a1;
          if (*v17 != *v18 || v17[1] != v18[1])
          {
            v19 = *a2;
            v20 = a2[1];
            while (v19 != v20)
            {
              v21 = *v19;
              if (*v19)
              {
                if (*v21)
                {
                  if (!sub_19B8F07E0(a5, *v21))
                  {
                    v22 = **v19;
                    if (*v22 == **v15 && v22[1] == *(*v15 + 1))
                    {
                      v32 = **v19;
                      *(sub_19B8F3760(a5, v22, &unk_19BA897F0, &v32) + 48) = 1;
                      sub_19B8EAB68(a4, v19);
                    }
                  }
                }
              }

              v19 += 2;
            }
          }
        }
      }

      v33 = &v23;
      sub_19B8F0E84(&v33);
    }

    v23 = &v28;
    sub_19B8F0E84(&v23);
    v28 = v31;
    sub_19B8F0E84(&v28);
  }
}

void sub_19B99871C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v17 - 88) = &a9;
  sub_19B8F0E84((v17 - 88));
  a9 = &a14;
  sub_19B8F0E84(&a9);
  a14 = &a17;
  sub_19B8F0E84(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_19B998774(char *a1, char *a2)
{
  if (a1 == a2)
  {
    v4 = 0;
  }

  else
  {
    v3 = a1;
    if ((a2 - a1) >= 0x40)
    {
      v5 = 0;
      v6 = 0;
      v7 = vdupq_n_s64(0x3E7AD7F29ABCAF48uLL);
      v8 = 1;
      v9 = 1;
      v10 = 1;
      v17 = v7;
      do
      {
        v11 = *v3;
        if (*v3)
        {
          v12 = *(v11 + 48) <= 2.22;
          v13 = *(v11 + 40) >= 179.0;
          if (v5)
          {
            v14 = v6;
            v11 = v5;
          }

          else
          {
            v14 = *(v3 + 1);
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v6)
            {
              sub_19B8750F8(v6);
              v7 = v17;
            }
          }

          v8 &= v12;
          v15 = vmovn_s64(vcgtq_f64(v7, vabdq_f64(*(*v3 + 8), *(v11 + 8))));
          v10 &= v13;
          v9 &= vand_s8(v15, vdup_lane_s32(v15, 1)).u8[0];
          v6 = v14;
          v5 = v11;
        }

        v3 += 16;
      }

      while (v3 != a2);
      v4 = v8 | v9 | v10;
      if (v6)
      {
        sub_19B8750F8(v6);
      }
    }

    else
    {
      v4 = 1;
    }
  }

  return v4 & 1;
}

char *sub_19B9988CC(char *result, double a2)
{
  v2 = result;
  v12 = a2;
  v3 = *(result + 6);
  if (v3)
  {
    v4 = *(result + 1);
  }

  else
  {
    *(result + 1) = a2;
    *(result + 2) = a2;
    v4 = a2;
  }

  v5 = fabs(a2);
  if (v5 > fabs(v4))
  {
    *(result + 1) = a2;
  }

  if (v5 < fabs(*(result + 2)))
  {
    *(result + 2) = a2;
  }

  v6 = v3 + 1;
  *(result + 6) = v6;
  v7 = *(result + 4);
  v8 = a2 - v7;
  v9 = v7 + (a2 - v7) / v6;
  v10 = *(result + 5) + (a2 - v9) * v8;
  *(result + 4) = v9;
  *(result + 5) = v10;
  *(result + 6) = a2 * a2 / v6 + *(result + 6) - *(result + 6) / v6;
  if (*result >= 1)
  {
    result = sub_19B9A2A88(result + 7, *(result + 7), &v12);
    v11 = *(v2 + 8);
    if (*v2 < ((v11 - *(v2 + 7)) >> 3))
    {
      *(v2 + 8) = v11 - 8;
    }
  }

  return result;
}

void sub_19B9989BC(uint64_t *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v1 = a1[1];
  v35[0] = 0;
  v35[1] = 0;
  v34 = v35;
  v3 = v1 - v2;
  if (v1 != v2)
  {
    v33 = v1 - v2;
    v5 = &dword_19B873000;
    v6 = "CLTSP,%{public}.1lf,removeDuplicateSnapsOnSameRoad,invalid snap pointer";
    v7 = -1.0;
    while (1)
    {
      v8 = *v2;
      v9 = *(v2 + 8);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v8)
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
        }

        v17 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          *&buf[4] = v7;
          _os_log_impl(v5, v17, OS_LOG_TYPE_ERROR, v6, buf, 0xCu);
        }

        v18 = sub_19B87DD40();
        if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
          }

          *v36 = 134349056;
          *&v36[4] = v7;
          v19 = _os_log_send_and_compose_impl(2, 0, buf, 1628, v5, qword_1EAFE46E8, 16, "CLTSP,%{public}.1lf,removeDuplicateSnapsOnSameRoad,invalid snap pointer", v36, 12);
          sub_19B885924("Generic", 1, 0, 0, "void CLTripSegmentRouteBuilder::removeDuplicateSnapsOnSameRoad(std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v19);
LABEL_38:
          if (v19 != buf)
          {
            free(v19);
          }
        }

LABEL_40:
        v2 += 16;
        if (!v9)
        {
          goto LABEL_42;
        }

LABEL_41:
        sub_19B8750F8(v9);
        goto LABEL_42;
      }

      v7 = *(v8 + 16);
      v10 = *v8;
      if (!v10)
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
        }

        v20 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          *&buf[4] = v7;
          _os_log_impl(v5, v20, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.1lf,removeDuplicateSnapsOnSameRoad,invalid road in snap pointer", buf, 0xCu);
        }

        v21 = sub_19B87DD40();
        if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
          }

          *v36 = 134349056;
          *&v36[4] = v7;
          v19 = _os_log_send_and_compose_impl(2, 0, buf, 1628, v5, qword_1EAFE46E8, 16, "CLTSP,%{public}.1lf,removeDuplicateSnapsOnSameRoad,invalid road in snap pointer", v36, 12);
          sub_19B885924("Generic", 1, 0, 0, "void CLTripSegmentRouteBuilder::removeDuplicateSnapsOnSameRoad(std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v19);
          goto LABEL_38;
        }

        goto LABEL_40;
      }

      *buf = *v10;
      v11 = v35[0];
      if (!v35[0])
      {
LABEL_17:
        *v36 = buf;
        *(sub_19B8F3760(&v34, buf, &unk_19BA897F0, v36) + 48) = 1;
        goto LABEL_40;
      }

      while (1)
      {
        v12 = v11[4];
        v13 = v11[5];
        v14 = *&buf[8] < v13;
        if (*buf != v12)
        {
          v14 = *buf < v12;
        }

        if (v14)
        {
          goto LABEL_16;
        }

        v15 = v13 < *&buf[8];
        v16 = *buf == v12 ? v15 : v12 < *buf;
        if (v16 != 1)
        {
          break;
        }

        ++v11;
LABEL_16:
        v11 = *v11;
        if (!v11)
        {
          goto LABEL_17;
        }
      }

      v22 = v5;
      v23 = v6;
      sub_19B8F1CF8(v36, (v2 + 16), a1[1], v2);
      v25 = v24;
      for (i = a1[1]; i != v25; i -= 16)
      {
        v27 = *(i - 8);
        if (v27)
        {
          sub_19B8750F8(v27);
        }
      }

      a1[1] = v25;
      v6 = v23;
      v5 = v22;
      if (v9)
      {
        goto LABEL_41;
      }

LABEL_42:
      if (v2 == a1[1])
      {
        v1 = *a1;
        v3 = v33;
        goto LABEL_56;
      }
    }
  }

  v7 = -1.0;
  v2 = v1;
LABEL_56:
  v28 = v3 >> 4;
  v29 = (v2 - v1) >> 4;
  if (v29 != v3 >> 4)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v30 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349568;
      *&buf[4] = v7;
      *&buf[12] = 2050;
      *&buf[14] = v28;
      v42 = 2050;
      v43 = v29;
      _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.1lf,removeDuplicateSnapsOnSameRoad,prevSize,%{public}lu,newSize,%{public}lu", buf, 0x20u);
    }

    v31 = sub_19B87DD40();
    if (*(v31 + 160) > 1 || *(v31 + 164) > 1 || *(v31 + 168) > 1 || *(v31 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      *v36 = 134349568;
      *&v36[4] = v7;
      v37 = 2050;
      v38 = v28;
      v39 = 2050;
      v40 = v29;
      v32 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,%{public}.1lf,removeDuplicateSnapsOnSameRoad,prevSize,%{public}lu,newSize,%{public}lu", v36, 32);
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRouteBuilder::removeDuplicateSnapsOnSameRoad(std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }
  }

  sub_19B8F3484(&v34, v35[0]);
}

void sub_19B999008(float64x2_t *a1, uint64_t *a2, uint64_t *a3, void *a4, _BYTE *a5)
{
  v92 = *MEMORY[0x1E69E9840];
  v8 = *a3;
  v9 = a3[1];
  while (v9 != v8)
  {
    v9 -= 24;
    *&buf = v9;
    sub_19B8F0E84(&buf);
  }

  a3[1] = v8;
  v10 = *a2;
  v11 = a2[1];
  if (*a2 == v11)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v12 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "CLTSP,processLocationSeries,empty GPS section", &buf, 2u);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      LOWORD(p_buf) = 0;
      v14 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,processLocationSeries,empty GPS section", &p_buf, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentRouteBuilder::processLocationSeries(std::vector<CLGeoMapLocationPtr> &, std::vector<std::vector<CLGeoMapSnapDataPtr>> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL &)", "CoreLocation: %s\n", v14);
      if (v14 != &buf)
      {
        free(v14);
      }
    }
  }

  else
  {
    if (v11 - v10 == 16)
    {
      *(*v10 + 88) = 4;
    }

    v70 = 0;
    v71 = 0;
    v72 = 0;
    if (sub_19B998774(v10, v11))
    {
      sub_19B999C3C(&v70, a2);
    }

    else
    {
      buf = 0uLL;
      v91 = 0;
      v16 = *a2;
      v15 = a2[1];
      if (*a2 == v15)
      {
        p_buf = &buf;
        sub_19B8F0E84(&p_buf);
      }

      else
      {
        v17 = a5;
        v18 = 0;
        v19 = 0;
        while (1)
        {
          if (v18)
          {
            v20 = *(v18 + 48);
            if ((v20 >= 2.22 || *(*v16 + 48) >= 2.22) && (v20 < 2.22 || *(*v16 + 48) < 2.22))
            {
              sub_19B999C3C(&v70, &buf);
              v22 = *(&buf + 1);
              v21 = buf;
              while (v22 != v21)
              {
                v23 = *(v22 - 8);
                if (v23)
                {
                  sub_19B8750F8(v23);
                }

                v22 -= 16;
              }

              *(&buf + 1) = v21;
            }
          }

          sub_19B8EAB68(&buf, v16);
          v18 = *v16;
          if (*v16 == *(a2[1] - 16))
          {
            break;
          }

          v24 = *(v16 + 8);
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v19)
          {
            sub_19B8750F8(v19);
          }

          v16 += 16;
          v19 = v24;
          if (v16 == v15)
          {
            goto LABEL_42;
          }
        }

        sub_19B999C3C(&v70, &buf);
        v24 = v19;
LABEL_42:
        p_buf = &buf;
        sub_19B8F0E84(&p_buf);
        a5 = v17;
        if (v24)
        {
          sub_19B8750F8(v24);
        }
      }
    }

    v26 = v70;
    v25 = v71;
    if (v70 != v71)
    {
      v67 = a2;
      v64 = a5;
      v65 = v71;
      v66 = a4;
      do
      {
        v27 = *a4;
        v28 = a4[1];
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v29 = *v26;
        v30 = v26[1];
        if (*v26 == v30)
        {
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
          }

          v34 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_ERROR, "CLTSP,processLocationSeries,empty GPS section", &buf, 2u);
          }

          v35 = sub_19B87DD40();
          if ((*(v35 + 160) & 0x80000000) == 0 || (*(v35 + 164) & 0x80000000) == 0 || (*(v35 + 168) & 0x80000000) == 0 || *(v35 + 152))
          {
            bzero(&buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
            }

            LOWORD(p_buf) = 0;
            v36 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,processLocationSeries,empty GPS section", &p_buf, 2);
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentRouteBuilder::processSplitLocationSeries(std::vector<CLGeoMapLocationPtr> &, std::vector<std::vector<CLGeoMapSnapDataPtr>> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL)", "CoreLocation: %s\n", v36);
            if (v36 != &buf)
            {
              free(v36);
            }
          }
        }

        else
        {
          v31 = *a5;
          if (v30 - v29 == 16 || (v32 = sub_19B998774(v29, v30), v29 = *v26, v32))
          {
            buf = 0uLL;
            v91 = 0;
            v73 = *(*v29 + 32);
            p_buf = 0;
            v85 = 0;
            *&v88 = v27;
            *(&v88 + 1) = v28;
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
              v29 = *v26;
            }

            if (v31)
            {
              v33 = v29;
            }

            else
            {
              v33 = (v26[1] - 16);
            }

            sub_19B999DC8(a1, &v88, 1, v33, &p_buf, &v73, &buf);
            if (v28)
            {
              sub_19B8750F8(v28);
            }

            if (buf != *(&buf + 1))
            {
              sub_19B9989BC(&buf);
              sub_19B99BD08(a3, &buf);
            }

            sub_19B8EBC04(v26);
            if (v85)
            {
              sub_19B8750F8(v85);
            }

            p_buf = &buf;
            sub_19B8F0E84(&p_buf);
          }

          else
          {
            v37 = **v29;
            p_buf = 0;
            v85 = 0;
            v86 = 0;
            v82 = v27;
            v83 = v28;
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v38 = sub_19B9AEA5C(v26, &p_buf, &v82);
            if (v83)
            {
              sub_19B8750F8(v83);
            }

            if (v38)
            {
              v39 = *(v27 + 152);
              if (v39 == 3)
              {
                v40 = 20.0;
              }

              else
              {
                v40 = 30.0;
              }

              if (v39 == 2)
              {
                v41 = 8.0;
              }

              else
              {
                v41 = v40;
              }

              *(&buf + 1) = 0;
              v91 = 0;
              *&buf = &buf + 8;
              v81 = 0xBFF0000000000000;
              v43 = &p_buf->__vftable;
              v42 = v85;
              if (p_buf == v85)
              {
                v25 = v65;
                a4 = v66;
              }

              else
              {
                v44 = 0;
                v45 = 0;
                do
                {
                  v46 = *v43;
                  if (*v43)
                  {
                    if (v44)
                    {
                      v47 = v45;
                      v46 = v44;
                    }

                    else
                    {
                      v47 = v43[1];
                      if (v47)
                      {
                        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      if (v45)
                      {
                        sub_19B8750F8(v45);
                      }
                    }

                    v48 = *v43;
                    if (*v43 == p_buf->__vftable && (v31 & 1) != 0 || v48 == v85[-1].__shared_owners_ || ((v85 - p_buf) < 0x1E1 || vabdd_f64(v46[2], v48[2]) >= 5.0) && (sub_19BA0C01C(a1 + 5, v48[3], v48[4], v46[3], v46[4], 0.0), v49 >= v41))
                    {
                      v79 = 0;
                      v80 = 0;
                      v77 = 0;
                      v78 = 0;
                      for (i = *v26; ; i += 2)
                      {
                        if (i == v26[1])
                        {
                          v88 = 0uLL;
                          v89 = 0;
                          goto LABEL_107;
                        }

                        v51 = *i;
                        if (*i)
                        {
                          if (vabdd_f64(*v51, *(*v43 + 2)) < 0.001)
                          {
                            break;
                          }
                        }
                      }

                      v60 = i[1];
                      if (v60)
                      {
                        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      v79 = v51;
                      v80 = v60;
                      v88 = 0uLL;
                      v89 = 0;
                      v81 = *(v51 + 32);
                      v76[0] = v27;
                      v76[1] = v28;
                      if (v28)
                      {
                        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      sub_19B999DC8(a1, v76, 1, &v79, &v77, &v81, &v88);
                      if (v28)
                      {
                        sub_19B8750F8(v28);
                      }

LABEL_107:
                      v73 = 0;
                      v74 = 0;
                      v75 = 0;
                      v53 = *(&v88 + 1);
                      for (j = v88; j != v53; ++j)
                      {
                        v54 = *j;
                        if (*j)
                        {
                          v55 = *v54;
                          if (*v54)
                          {
                            v56 = **v43;
                            if (v56)
                            {
                              if (*v55 != *v56 || v55[1] != v56[1])
                              {
                                v57 = sqrt(*(v54 + 72) * *(v54 + 72) + *(v54 + 80) * *(v54 + 80));
                                v58 = sqrt(*(*v43 + 9) * *(*v43 + 9) + *(*v43 + 10) * *(*v43 + 10)) * 1.5;
                                if (v57 < 35.0 || v57 < v58)
                                {
                                  sub_19B8EAB68(&v73, j);
                                }
                              }
                            }
                          }
                        }
                      }

                      sub_19B8EAB68(&v73, v43);
                      if (v73 != v74)
                      {
                        sub_19B9989BC(&v73);
                        sub_19B99BD08(a3, &v73);
                      }

                      v44 = *v43;
                      v45 = v43[1];
                      if (v45)
                      {
                        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      if (v47)
                      {
                        sub_19B8750F8(v47);
                      }

                      v87 = &v73;
                      sub_19B8F0E84(&v87);
                      v73 = &v88;
                      sub_19B8F0E84(&v73);
                      if (v78)
                      {
                        sub_19B8750F8(v78);
                      }

                      if (v80)
                      {
                        sub_19B8750F8(v80);
                      }
                    }

                    else
                    {
                      v45 = v47;
                      v44 = v46;
                    }
                  }

                  v43 += 2;
                }

                while (v43 != v42);
                sub_19B8F3484(&buf, *(&buf + 1));
                a5 = v64;
                v25 = v65;
                a4 = v66;
                if (v45)
                {
                  sub_19B8750F8(v45);
                }
              }
            }

            else
            {
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
              }

              v61 = qword_1EAFE46E8;
              if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(buf) = 134349056;
                *(&buf + 4) = v37;
                _os_log_impl(&dword_19B873000, v61, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.1lf,processLocationSeries,unable to snap solution", &buf, 0xCu);
              }

              v62 = sub_19B87DD40();
              if (*(v62 + 160) > 1 || *(v62 + 164) > 1 || *(v62 + 168) > 1 || *(v62 + 152))
              {
                bzero(&buf, 0x65CuLL);
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
                }

                LODWORD(v88) = 134349056;
                *(&v88 + 4) = v37;
                v63 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,%{public}.1lf,processLocationSeries,unable to snap solution", &v88, 12);
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::processSplitLocationSeries(std::vector<CLGeoMapLocationPtr> &, std::vector<std::vector<CLGeoMapSnapDataPtr>> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL)", "CoreLocation: %s\n", v63);
                if (v63 != &buf)
                {
                  free(v63);
                }
              }
            }

            sub_19B8EBC04(v26);
            *&buf = &p_buf;
            sub_19B8F0E84(&buf);
            a2 = v67;
          }
        }

        if (v28)
        {
          sub_19B8750F8(v28);
        }

        v26 += 3;
      }

      while (v26 != v25);
    }

    *a5 = 0;
    sub_19B8EBC04(a2);
    *&buf = &v70;
    sub_19B8F1C84(&buf);
  }
}

void sub_19B999B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void **a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  a35 = &a43;
  sub_19B8F0E84(&a35);
  if (v43)
  {
    sub_19B8750F8(v43);
  }

  a35 = &a20;
  sub_19B8F1C84(&a35);
  _Unwind_Resume(a1);
}

uint64_t sub_19B999C3C(const void **a1, uint64_t *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_19B8B8A40();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v20 = a1;
    if (v10)
    {
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_19B8B8AB0();
    }

    v11 = 24 * v7;
    v16 = 0;
    v17 = v11;
    v18 = 24 * v7;
    v19 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = 0;
    sub_19B9A2D5C((24 * v7), *a2, a2[1], (a2[1] - *a2) >> 4);
    v6 = (v18 + 24);
    v12 = a1[1] - *a1;
    v13 = &v17[-v12];
    memcpy(&v17[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = v19;
    v18 = v14;
    v19 = v15;
    v16 = v14;
    v17 = v14;
    result = sub_19B8F22C8(&v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    result = sub_19B9A2D5C(v4, *a2, a2[1], (a2[1] - *a2) >> 4);
    v6 = v4 + 3;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_19B999DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8F22C8(va);
  _Unwind_Resume(a1);
}

BOOL sub_19B999DC8(float64x2_t *a1, uint64_t a2, char a3, uint64_t **a4, uint64_t *a5, double *a6, uint64_t a7)
{
  v219 = *MEMORY[0x1E69E9840];
  v7 = *a4;
  if (*a4)
  {
    v13 = *v7;
    if (!*a5)
    {
      v14 = a4[1];
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = a5[1];
      *a5 = v7;
      a5[1] = v14;
      if (v15)
      {
        sub_19B8750F8(v15);
      }
    }

    v190 = 0;
    v191 = 0;
    v192 = 0;
    v16 = *a4;
    v17 = *(*a4 + 4);
    if (v17 >= 0.0)
    {
      v18 = *(v16 + 5);
      if (v18 > 0.0)
      {
        v19 = *(v16 + 3);
        if (v18 < v19)
        {
          v18 = v19 + 10.0;
        }

        if (v18 <= 179.0)
        {
          v20 = v18;
        }

        else
        {
          v20 = 135.0;
        }

        *(v16 + 5) = v20;
        v21 = *(v16 + 22);
        v22 = v21 > 9;
        v23 = (1 << v21) & 0x20A;
        if (v22 || v23 == 0)
        {
          v20 = fmax(v20, 60.0);
          *(v16 + 5) = v20;
        }

        if (!sub_19B8E83FC(*a2, *(v16 + 24), &v190, 0, *v16, *(v16 + 1), *(v16 + 2), v17, v19, v20))
        {
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
          }

          v25 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
          {
            *buf = 134349056;
            *&buf[4] = v13;
            _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_INFO, "CLTSP,%{public}.2lf,generateWiFiSnapCandidates,unable to compute candidates", buf, 0xCu);
          }

          v26 = sub_19B87DD40();
          if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
            }

            *v193 = 134349056;
            *&v193[4] = v13;
            v27 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,%{public}.2lf,generateWiFiSnapCandidates,unable to compute candidates", v193, 12);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::processSingleLocation(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL, const CLGeoMapLocationPtr &, CLGeoMapLocationPtr &, double &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v27);
            if (v27 != buf)
            {
              free(v27);
            }
          }
        }

        v16 = *a4;
        v28 = v190;
        v29 = v191;
        while (v28 != v29)
        {
          v30 = *v28;
          if (*v28)
          {
            *(v30 + 120) = *(v16 + 22);
            *(v30 + 104) = v16[6];
          }

          ++v28;
        }
      }
    }

    v188 = 0;
    v189 = 0;
    v187 = 0;
    sub_19BA0C01C(a1 + 5, *(v16 + 1), *(v16 + 2), *(*a5 + 8), *(*a5 + 16), 0.0);
    v32 = v31;
    if (v31 > 70.0 || v31 > 50.0 && *(*a4 + 3) <= 30.0 || (v33 = *a6, *a6 < 0.0))
    {
      v33 = sub_19BA0C44C(a1 + 5, *(*a5 + 8), *(*a5 + 16), *(*a4 + 1), *(*a4 + 2));
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v34 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
      {
        v35 = *a6;
        *buf = 134349824;
        *&buf[4] = v13;
        v207 = 2050;
        v208 = v35;
        v209 = 2050;
        v210 = v33;
        v211 = 2050;
        v212 = v32;
        _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.2lf,processSparseLocations,distance,lastAzimuthChangedfrom,%{public}.1lf,to,%{public}.1lf,distance,%{public}.2lf", buf, 0x2Au);
      }

      v36 = sub_19B87DD40();
      if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
        }

        v37 = *a6;
        *v193 = 134349824;
        *&v193[4] = v13;
        v194 = 2050;
        v195 = v37;
        v196 = 2050;
        v197 = v33;
        v198 = 2050;
        v199 = v32;
        v38 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,%{public}.2lf,processSparseLocations,distance,lastAzimuthChangedfrom,%{public}.1lf,to,%{public}.1lf,distance,%{public}.2lf", v193, 42);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::processSingleLocation(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL, const CLGeoMapLocationPtr &, CLGeoMapLocationPtr &, double &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v38);
        if (v38 != buf)
        {
          free(v38);
        }
      }

      v40 = *a4;
      v39 = a4[1];
      if (v39)
      {
        atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
      }

      v41 = a5[1];
      *a5 = v40;
      a5[1] = v39;
      if (v41)
      {
        sub_19B8750F8(v41);
      }

      *a6 = v33;
    }

    v42 = *a4;
    if (v33 >= 0.0)
    {
      v71 = *(v42 + 32);
      v70 = *(v42 + 40);
      if (v70 <= 0.0 || v71 < 0.0)
      {
        goto LABEL_151;
      }

      v72 = fmod(v71 - v33, 360.0);
      if (v72 < 0.0)
      {
        v72 = v72 + 360.0;
      }

      if (v72 > 180.0)
      {
        v72 = v72 + -360.0;
      }

      if (fabs(v72) > 5.0)
      {
LABEL_151:
        v73 = *(v42 + 24);
        if (v71 >= 0.0)
        {
          v74 = v73 + 10.0;
          if (v70 >= v73)
          {
            v74 = v70;
          }

          if (v74 <= 179.0)
          {
            v70 = v74;
          }

          else
          {
            v70 = 135.0;
          }
        }

        v75 = fmax(v70, 60.0);
        *(v42 + 40) = v75;
        if (!sub_19B8E83FC(*a2, *(v42 + 96), &v187, 0, *v42, *(v42 + 8), *(v42 + 16), *a6, v73, v75))
        {
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
          }

          v76 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
          {
            *buf = 134349056;
            *&buf[4] = v13;
            _os_log_impl(&dword_19B873000, v76, OS_LOG_TYPE_INFO, "CLTSP,%{public}.2lf,generateWiFiSnapCandidates,unable to compute candidates based on alternate course", buf, 0xCu);
          }

          v77 = sub_19B87DD40();
          if (*(v77 + 160) > 1 || *(v77 + 164) > 1 || *(v77 + 168) > 1 || *(v77 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
            }

            *v193 = 134349056;
            *&v193[4] = v13;
            v78 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,%{public}.2lf,generateWiFiSnapCandidates,unable to compute candidates based on alternate course", v193, 12);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::processSingleLocation(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL, const CLGeoMapLocationPtr &, CLGeoMapLocationPtr &, double &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v78);
            if (v78 != buf)
            {
              free(v78);
            }
          }
        }

        v42 = *a4;
        v79 = v187;
        v80 = v188;
        while (v79 != v80)
        {
          v81 = *v79;
          if (*v79)
          {
            *(v81 + 120) = *(v42 + 88);
            *(v81 + 104) = *(v42 + 48);
          }

          ++v79;
        }
      }
    }

    v184 = 0;
    v185 = 0;
    v186 = 0;
    if (!sub_19B8E83FC(*a2, *(v42 + 96), &v184, 0, *v42, *(v42 + 8), *(v42 + 16), -1.0, *(v42 + 24), -1.0))
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v43 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        *&buf[4] = v13;
        _os_log_impl(&dword_19B873000, v43, OS_LOG_TYPE_INFO, "CLTSP,%{public}.2lf,generateSnapCandidates,unable to compute candidates with just position", buf, 0xCu);
      }

      v44 = sub_19B87DD40();
      if (*(v44 + 160) > 1 || *(v44 + 164) > 1 || *(v44 + 168) > 1 || *(v44 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
        }

        *v193 = 134349056;
        *&v193[4] = v13;
        v45 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,%{public}.2lf,generateSnapCandidates,unable to compute candidates with just position", v193, 12);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::processSingleLocation(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL, const CLGeoMapLocationPtr &, CLGeoMapLocationPtr &, double &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v45);
        if (v45 != buf)
        {
          free(v45);
        }
      }
    }

    v46 = v184;
    v47 = v185;
    if (v184 != v185)
    {
      v48 = *a4;
      do
      {
        v49 = *v46;
        if (*v46)
        {
          *(v49 + 30) = *(v48 + 88);
          v49[13] = *(v48 + 48);
        }

        v46 += 2;
      }

      while (v46 != v47);
    }

    v183 = 0uLL;
    if (v190 != v191 && (sub_19B8ED57C(*a2, &v190, &v183, -1.0) & 1) == 0)
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v50 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = v13;
        _os_log_impl(&dword_19B873000, v50, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.2lf,generateSnapCandidates,unable to determine snap with highest score", buf, 0xCu);
      }

      v51 = sub_19B87DD40();
      if ((*(v51 + 160) & 0x80000000) == 0 || (*(v51 + 164) & 0x80000000) == 0 || (*(v51 + 168) & 0x80000000) == 0 || *(v51 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
        }

        *v193 = 134349056;
        *&v193[4] = v13;
        v52 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,%{public}.2lf,generateSnapCandidates,unable to determine snap with highest score", v193, 12);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentRouteBuilder::processSingleLocation(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL, const CLGeoMapLocationPtr &, CLGeoMapLocationPtr &, double &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v52);
        if (v52 != buf)
        {
          free(v52);
        }
      }
    }

    v182 = 0uLL;
    if (v187 != v188 && (sub_19B8ED57C(*a2, &v187, &v182, -1.0) & 1) == 0)
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v53 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = v13;
        _os_log_impl(&dword_19B873000, v53, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.2lf,generateSnapCandidates,unable to determine snap with highest score for alternate course", buf, 0xCu);
      }

      v54 = sub_19B87DD40();
      if ((*(v54 + 160) & 0x80000000) == 0 || (*(v54 + 164) & 0x80000000) == 0 || (*(v54 + 168) & 0x80000000) == 0 || *(v54 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
        }

        *v193 = 134349056;
        *&v193[4] = v13;
        v55 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,%{public}.2lf,generateSnapCandidates,unable to determine snap with highest score for alternate course", v193, 12);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentRouteBuilder::processSingleLocation(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL, const CLGeoMapLocationPtr &, CLGeoMapLocationPtr &, double &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v55);
        if (v55 != buf)
        {
          free(v55);
        }
      }
    }

    v181 = 0uLL;
    if (v184 != v185 && (sub_19B8ED57C(*a2, &v184, &v181, *(*a4 + 4)) & 1) == 0)
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v56 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = v13;
        _os_log_impl(&dword_19B873000, v56, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.2lf,generateSnapCandidates,unable to determine snap with highest score for position only", buf, 0xCu);
      }

      v57 = sub_19B87DD40();
      if ((*(v57 + 160) & 0x80000000) == 0 || (*(v57 + 164) & 0x80000000) == 0 || (*(v57 + 168) & 0x80000000) == 0 || *(v57 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
        }

        *v193 = 134349056;
        *&v193[4] = v13;
        v58 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,%{public}.2lf,generateSnapCandidates,unable to determine snap with highest score for position only", v193, 12);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentRouteBuilder::processSingleLocation(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL, const CLGeoMapLocationPtr &, CLGeoMapLocationPtr &, double &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v58);
        if (v58 != buf)
        {
          free(v58);
        }
      }
    }

    v59 = v183;
    if (*(&v183 + 1))
    {
      atomic_fetch_add_explicit((*(&v183 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v60 = v182;
    if (*(&v182 + 1))
    {
      atomic_fetch_add_explicit((*(&v182 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v61 = v181;
    if (*(&v181 + 1))
    {
      atomic_fetch_add_explicit((*(&v181 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    if (!v59 || (v62 = *v59) == 0)
    {
      v65 = 0;
      v64 = 0;
      if (!v60)
      {
        goto LABEL_183;
      }

LABEL_178:
      v82 = *v60;
      if (*v60)
      {
        v83 = *(v60 + 8);
        if (v83)
        {
          atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v84 = (*(v82 + 20) & 0xFFFFFFFE) == 8 || (*(v82 + 24) & 0xFFFFFFFE) == 6;
        v85 = a7;
        ++v65;
        v64 += v84;
        if (v83)
        {
          sub_19B8750F8(v83);
        }

LABEL_187:
        if (v61)
        {
          v86 = *v61;
          if (*v61)
          {
            v87 = *(v61 + 8);
            if (v87)
            {
              atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v88 = (*(v86 + 20) & 0xFFFFFFFE) == 8 || (*(v86 + 24) & 0xFFFFFFFE) == 6;
            ++v65;
            v64 += v88;
            if (v87)
            {
              sub_19B8750F8(v87);
            }
          }
        }

        if (*(&v61 + 1))
        {
          sub_19B8750F8(*(&v61 + 1));
        }

        if (*(&v60 + 1))
        {
          sub_19B8750F8(*(&v60 + 1));
        }

        if (*(&v59 + 1))
        {
          sub_19B8750F8(*(&v59 + 1));
        }

        v180[0] = 0;
        v180[1] = 0;
        v178 = 0;
        v179 = v180;
        v176 = 0;
        v177 = 0;
        v89 = v183;
        if (v183)
        {
          if (!*v183 || (a3 & 1) != 0)
          {
            if (!*v183)
            {
              goto LABEL_237;
            }
          }

          else
          {
            v90 = *a4;
            v91 = a4[1];
            if (v91)
            {
              atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v92 = *(&v183 + 1);
            v175[0] = v89;
            v175[1] = *(&v183 + 1);
            if (*(&v183 + 1))
            {
              atomic_fetch_add_explicit((*(&v183 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            v93 = sub_19B998390(v65 == v64, v90, v175);
            if (v92)
            {
              sub_19B8750F8(v92);
            }

            if (v91)
            {
              sub_19B8750F8(v91);
              if ((v93 & 1) == 0)
              {
                goto LABEL_237;
              }
            }

            else if (!v93)
            {
              goto LABEL_237;
            }
          }

          sub_19B8EAB68(v85, &v183);
          *v193 = *v183;
          *(sub_19B8F3760(&v179, *v193, &unk_19BA897F0, v193) + 48) = 1;
          v94 = *(&v183 + 1);
          v174 = v183;
          if (*(&v183 + 1))
          {
            atomic_fetch_add_explicit((*(&v183 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v95 = *(a2 + 8);
          v173[0] = *a2;
          v173[1] = v95;
          if (v95)
          {
            atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_19B998514(&v174, &v190, v173, v85, &v179);
          if (v95)
          {
            sub_19B8750F8(v95);
          }

          if (v94)
          {
            sub_19B8750F8(v94);
          }

          sub_19B8EAC7C(*a2, v183, &v176, 1);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
          }

          v96 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
          {
            v97 = (*a4)[1];
            v98 = *(*a4 + 2);
            v99 = *(*a4 + 4);
            v100 = *(v183 + 24);
            v101 = *(v183 + 32);
            v102 = *(v183 + 40);
            *buf = 134350593;
            *&buf[4] = v13;
            v207 = 2053;
            v208 = v97;
            v209 = 2053;
            v210 = v98;
            v211 = 2050;
            v212 = v99;
            v213 = 2053;
            v214 = v100;
            v215 = 2053;
            v216 = v101;
            v217 = 2050;
            v218 = v102;
            _os_log_impl(&dword_19B873000, v96, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.2lf,generateSnapCandidates,added course based snap as primary snap,rawLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{public}.2lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCourse,%{public}.2lf", buf, 0x48u);
          }

          v103 = sub_19B87DD40();
          if (*(v103 + 160) > 1 || *(v103 + 164) > 1 || *(v103 + 168) > 1 || *(v103 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
            }

            v104 = (*a4)[1];
            v105 = *(*a4 + 2);
            v106 = *(*a4 + 4);
            v107 = *(v183 + 24);
            v108 = *(v183 + 32);
            v109 = *(v183 + 40);
            *v193 = 134350593;
            *&v193[4] = v13;
            v194 = 2053;
            v195 = v104;
            v196 = 2053;
            v197 = v105;
            v198 = 2050;
            v199 = v106;
            v200 = 2053;
            v201 = v107;
            v202 = 2053;
            v203 = v108;
            v204 = 2050;
            v205 = v109;
            v110 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,%{public}.2lf,generateSnapCandidates,added course based snap as primary snap,rawLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{public}.2lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCourse,%{public}.2lf", v193, 72);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::processSingleLocation(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL, const CLGeoMapLocationPtr &, CLGeoMapLocationPtr &, double &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v110);
            if (v110 != buf)
            {
              free(v110);
            }
          }
        }

LABEL_237:
        if (v182 && *v182 && !sub_19B8F07E0(&v179, *v182))
        {
          v119 = v182;
          if (*(&v182 + 1))
          {
            atomic_fetch_add_explicit((*(&v182 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v120 = sub_19B9984C0(v119, v176, v177);
          v121 = v120 ^ 1;
          if ((v120 & 1) == 0 && (a3 & 1) == 0)
          {
            v122 = *a4;
            v123 = a4[1];
            if (v123)
            {
              atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v124 = *(&v182 + 1);
            v172[0] = v119;
            v172[1] = *(&v182 + 1);
            if (*(&v182 + 1))
            {
              atomic_fetch_add_explicit((*(&v182 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            v121 = sub_19B998390(v65 == v64, v122, v172);
            if (v124)
            {
              sub_19B8750F8(v124);
            }

            if (v123)
            {
              sub_19B8750F8(v123);
            }
          }

          if (*(&v119 + 1))
          {
            sub_19B8750F8(*(&v119 + 1));
            v85 = a7;
            if ((v121 & 1) == 0)
            {
              goto LABEL_240;
            }
          }

          else
          {
            v85 = a7;
            if (!v121)
            {
              goto LABEL_240;
            }
          }

          sub_19B8EAB68(v85, &v182);
          *v193 = *v182;
          *(sub_19B8F3760(&v179, *v193, &unk_19BA897F0, v193) + 48) = 1;
          v131 = *(&v182 + 1);
          v171 = v182;
          if (*(&v182 + 1))
          {
            atomic_fetch_add_explicit((*(&v182 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v132 = *(a2 + 8);
          v170[0] = *a2;
          v170[1] = v132;
          if (v132)
          {
            atomic_fetch_add_explicit(&v132->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_19B998514(&v171, &v187, v170, v85, &v179);
          if (v132)
          {
            sub_19B8750F8(v132);
          }

          if (v131)
          {
            sub_19B8750F8(v131);
          }

          sub_19B8EAC7C(*a2, v182, &v176, 1);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
          }

          v133 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
          {
            v134 = (*a4)[1];
            v135 = *(*a4 + 2);
            v136 = *(*a4 + 4);
            v137 = *(v182 + 24);
            v138 = *(v182 + 32);
            v139 = *(v182 + 40);
            *buf = 134350593;
            *&buf[4] = v13;
            v207 = 2053;
            v208 = v134;
            v209 = 2053;
            v210 = v135;
            v211 = 2050;
            v212 = v136;
            v213 = 2053;
            v214 = v137;
            v215 = 2053;
            v216 = v138;
            v217 = 2050;
            v218 = v139;
            _os_log_impl(&dword_19B873000, v133, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.2lf,generateSnapCandidates,added alternate course based snap as primary snap,rawLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{public}.2lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCourse,%{public}.2lf", buf, 0x48u);
          }

          v140 = sub_19B87DD40();
          if (*(v140 + 160) > 1 || *(v140 + 164) > 1 || *(v140 + 168) > 1 || *(v140 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
            }

            v141 = (*a4)[1];
            v142 = *(*a4 + 2);
            v143 = *(*a4 + 4);
            v144 = *(v182 + 24);
            v145 = *(v182 + 32);
            v146 = *(v182 + 40);
            *v193 = 134350593;
            *&v193[4] = v13;
            v194 = 2053;
            v195 = v141;
            v196 = 2053;
            v197 = v142;
            v198 = 2050;
            v199 = v143;
            v200 = 2053;
            v201 = v144;
            v202 = 2053;
            v203 = v145;
            v204 = 2050;
            v205 = v146;
            v147 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,%{public}.2lf,generateSnapCandidates,added alternate course based snap as primary snap,rawLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{public}.2lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCourse,%{public}.2lf", v193, 72);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::processSingleLocation(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL, const CLGeoMapLocationPtr &, CLGeoMapLocationPtr &, double &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v147);
            if (v147 != buf)
            {
              free(v147);
            }
          }
        }

LABEL_240:
        if (!v181 || !*v181 || sub_19B8F07E0(&v179, *v181))
        {
          goto LABEL_243;
        }

        v125 = v182;
        if (*(&v182 + 1))
        {
          atomic_fetch_add_explicit((*(&v182 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v126 = sub_19B9984C0(v125, v176, v177);
        v127 = v126 ^ 1;
        if ((v126 & 1) == 0 && (a3 & 1) == 0)
        {
          v128 = *a4;
          v129 = a4[1];
          if (v129)
          {
            atomic_fetch_add_explicit(&v129->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v130 = *(&v181 + 1);
          v169 = v181;
          if (*(&v181 + 1))
          {
            atomic_fetch_add_explicit((*(&v181 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v127 = sub_19B998390(v65 == v64, v128, &v169);
          if (v130)
          {
            sub_19B8750F8(v130);
          }

          if (v129)
          {
            sub_19B8750F8(v129);
          }
        }

        if (*(&v125 + 1))
        {
          sub_19B8750F8(*(&v125 + 1));
          if (v127)
          {
            goto LABEL_321;
          }
        }

        else if (v127)
        {
LABEL_321:
          sub_19B8EAB68(v85, &v181);
          *v193 = *v181;
          *(sub_19B8F3760(&v179, *v193, &unk_19BA897F0, v193) + 48) = 1;
          v148 = *(&v181 + 1);
          v168 = v181;
          if (*(&v181 + 1))
          {
            atomic_fetch_add_explicit((*(&v181 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v149 = *(a2 + 8);
          v167[0] = *a2;
          v167[1] = v149;
          if (v149)
          {
            atomic_fetch_add_explicit(&v149->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_19B998514(&v168, &v184, v167, v85, &v179);
          if (v149)
          {
            sub_19B8750F8(v149);
          }

          if (v148)
          {
            sub_19B8750F8(v148);
          }

          sub_19B8EAC7C(*a2, v181, &v176, 1);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
          }

          v150 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
          {
            v151 = (*a4)[1];
            v152 = *(*a4 + 2);
            v153 = *(*a4 + 4);
            v154 = *(v181 + 24);
            v155 = *(v181 + 32);
            v156 = *(v181 + 40);
            *buf = 134350593;
            *&buf[4] = v13;
            v207 = 2053;
            v208 = v151;
            v209 = 2053;
            v210 = v152;
            v211 = 2050;
            v212 = v153;
            v213 = 2053;
            v214 = v154;
            v215 = 2053;
            v216 = v155;
            v217 = 2050;
            v218 = v156;
            _os_log_impl(&dword_19B873000, v150, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.2lf,generateSnapCandidates,added position based snap as primary snap,rawLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{public}.2lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCourse,%{public}.2lf", buf, 0x48u);
          }

          v157 = sub_19B87DD40();
          if (*(v157 + 160) > 1 || *(v157 + 164) > 1 || *(v157 + 168) > 1 || *(v157 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
            }

            v158 = (*a4)[1];
            v159 = *(*a4 + 2);
            v160 = *(*a4 + 4);
            v161 = *(v181 + 24);
            v162 = *(v181 + 32);
            v163 = *(v181 + 40);
            *v193 = 134350593;
            *&v193[4] = v13;
            v194 = 2053;
            v195 = v158;
            v196 = 2053;
            v197 = v159;
            v198 = 2050;
            v199 = v160;
            v200 = 2053;
            v201 = v161;
            v202 = 2053;
            v203 = v162;
            v204 = 2050;
            v205 = v163;
            v164 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,%{public}.2lf,generateSnapCandidates,added position based snap as primary snap,rawLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{public}.2lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCourse,%{public}.2lf", v193, 72);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::processSingleLocation(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL, const CLGeoMapLocationPtr &, CLGeoMapLocationPtr &, double &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v164);
            if (v164 != buf)
            {
              free(v164);
            }
          }
        }

LABEL_243:
        if (*v85 == *(v85 + 8))
        {
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
          }

          v114 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
          {
            *buf = 134349056;
            *&buf[4] = v13;
            _os_log_impl(&dword_19B873000, v114, OS_LOG_TYPE_INFO, "CLTSP,%{public}.2lf,generateSnapCandidates,unable to determine primary snap", buf, 0xCu);
          }

          v115 = sub_19B87DD40();
          if (*(v115 + 160) > 1 || *(v115 + 164) > 1 || *(v115 + 168) > 1 || *(v115 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
            }

            *v193 = 134349056;
            *&v193[4] = v13;
            v116 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,%{public}.2lf,generateSnapCandidates,unable to determine primary snap", v193, 12);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::processSingleLocation(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL, const CLGeoMapLocationPtr &, CLGeoMapLocationPtr &, double &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v116);
            if (v116 != buf)
            {
              free(v116);
            }
          }

          v69 = 0;
        }

        else
        {
          v111 = v190;
          v112 = v191;
          if (v190 == v191)
          {
            sub_19B9A3250(&v190, v187, v188, (v188 - v187) >> 4);
            v113 = a1;
            v111 = v190;
            v112 = v191;
          }

          else
          {
            v113 = a1;
          }

          v117 = v113;
          sub_19B99BD48(v113, v111, v112, (*(*a2 + 152) & 0xFFFFFFFE) == 2, v85, &v179, &v176);
          sub_19B99BD48(v117, v184, v185, (*(*a2 + 152) & 0xFFFFFFFE) == 2, v85, &v179, &v176);
          v69 = *v85 != *(v85 + 8);
        }

        *buf = &v176;
        sub_19B8F0E84(buf);
        sub_19B8F3484(&v179, v180[0]);
        if (*(&v181 + 1))
        {
          sub_19B8750F8(*(&v181 + 1));
        }

        if (*(&v182 + 1))
        {
          sub_19B8750F8(*(&v182 + 1));
        }

        if (*(&v183 + 1))
        {
          sub_19B8750F8(*(&v183 + 1));
        }

        *buf = &v184;
        sub_19B8F0E84(buf);
        *buf = &v187;
        sub_19B8F0E84(buf);
        *buf = &v190;
        sub_19B8F0E84(buf);
        return v69;
      }

LABEL_183:
      v85 = a7;
      goto LABEL_187;
    }

    v63 = *(v59 + 8);
    if (v63)
    {
      atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(v62 + 20) & 0xFFFFFFFE) == 8)
    {
      v64 = 1;
      if (!v63)
      {
LABEL_177:
        v65 = 1;
        if (!v60)
        {
          goto LABEL_183;
        }

        goto LABEL_178;
      }
    }

    else
    {
      v64 = (*(v62 + 24) & 0xFFFFFFFE) == 6;
      if (!v63)
      {
        goto LABEL_177;
      }
    }

    sub_19B8750F8(v63);
    goto LABEL_177;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
  }

  v66 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v66, OS_LOG_TYPE_ERROR, "CLTSP,addLocationToGPSSectionAndProcess,null location", buf, 2u);
  }

  v67 = sub_19B87DD40();
  if ((*(v67 + 160) & 0x80000000) == 0 || (*(v67 + 164) & 0x80000000) == 0 || (*(v67 + 168) & 0x80000000) == 0 || *(v67 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    *v193 = 0;
    v68 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,addLocationToGPSSectionAndProcess,null location", v193, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentRouteBuilder::processSingleLocation(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL, const CLGeoMapLocationPtr &, CLGeoMapLocationPtr &, double &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v68);
    if (v68 != buf)
    {
      free(v68);
    }
  }

  return 0;
}

void sub_19B99BBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, std::__shared_weak_count *a40, uint64_t a41, std::__shared_weak_count *a42, char a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void **a63)
{
  a63 = &a31;
  sub_19B8F0E84(&a63);
  sub_19B8F3484(&a34, a35);
  if (a38)
  {
    sub_19B8750F8(a38);
  }

  if (a40)
  {
    sub_19B8750F8(a40);
  }

  if (a42)
  {
    sub_19B8750F8(a42);
  }

  a63 = &a43;
  sub_19B8F0E84(&a63);
  a63 = &a46;
  sub_19B8F0E84(&a63);
  a63 = &a49;
  sub_19B8F0E84(&a63);
  _Unwind_Resume(a1);
}

void *sub_19B99BD08(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_19B9A2EF8(a1, a2);
  }

  else
  {
    sub_19B9A2EA4(a1, a2);
    result = (v3 + 24);
  }

  *(a1 + 8) = result;
  return result;
}

void sub_19B99BD48(float64x2_t *a1, unint64_t ***a2, unint64_t ***a3, int a4, void **a5, uint64_t **a6, void ***a7)
{
  v83 = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    v11 = a2;
    if (a4)
    {
      v13 = 0.01;
    }

    else
    {
      v13 = 0.5;
    }

    while (1)
    {
      v14 = *v11;
      if (*v11)
      {
        v15 = *v14;
        if (*v14)
        {
          v16 = *(v14 + 30);
          if ((v16 == 11 || v16 == 4) && (*(v15 + 24) & 0xFFFFFFFE) != 6)
          {
            if (**a5)
            {
              v18 = sub_19B8F07E0(a6, v15);
              v14 = *v11;
              if (!v18)
              {
                v19 = **a5;
                v20 = v19[5];
                v21 = fmod(v20 - *(v14 + 5), 360.0);
                if (v21 < 0.0)
                {
                  v21 = v21 + 360.0;
                }

                if (v21 > 180.0)
                {
                  v21 = v21 + -360.0;
                }

                if (fabs(v21) < 20.0)
                {
                  v54 = 0.0;
                  v55 = 0.0;
                  sub_19BA0C3BC(a1 + 5, &v55, &v54, v19[3], v19[4], 0.0, v20, *(v14 + 3), *(v14 + 4));
                  if (fabs(v55) >= 50.0)
                  {
                    v14 = *v11;
                  }

                  else
                  {
                    v14 = *v11;
                    if (fabs(v54) < 10.0 && *(v14 + 14) > 0.1)
                    {
                      v22 = *a5;
                      v23 = a5[1];
                      while (v22 != v23)
                      {
                        v24 = **v22;
                        if (v24 && (sub_19B9F6534(v24, v14) & 1) != 0)
                        {
                          goto LABEL_29;
                        }

                        v22 += 2;
                      }

                      sub_19B8EAB68(a5, v11);
                      *buf = **v11;
                      *(sub_19B8F3760(a6, *buf, &unk_19BA897F0, buf) + 48) = 1;
                      if (qword_1EAFE46B8 != -1)
                      {
                        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
                      }

                      v35 = qword_1EAFE46E8;
                      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
                      {
                        v36 = **a5;
                        v37 = v36[2];
                        v38 = v36[3];
                        v40 = v36[4];
                        v39 = v36[5];
                        v41 = (*v11)[3];
                        v42 = (*v11)[4];
                        v43 = (*v11)[5];
                        *buf = 134350593;
                        *&buf[4] = v37;
                        v71 = 2053;
                        v72 = v38;
                        v73 = 2053;
                        v74 = v40;
                        v75 = 2050;
                        v76 = v39;
                        v77 = 2053;
                        v78 = v41;
                        v79 = 2053;
                        v80 = v42;
                        v81 = 2050;
                        v82 = v43;
                        _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.2lf,added snap on parallel road,primaryLL,%{sensitive}.7lf,%{sensitive}.7lf,primaryCourse,%{public}.2lf,candLL,%{sensitive}.7lf,%{sensitive}.7lf,candCourse,%{public}.2lf", buf, 0x48u);
                      }

                      v44 = sub_19B87DD40();
                      if (*(v44 + 160) > 1 || *(v44 + 164) > 1 || *(v44 + 168) > 1 || *(v44 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE46B8 != -1)
                        {
                          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
                        }

                        v45 = **a5;
                        v46 = v45[2];
                        v47 = v45[3];
                        v49 = v45[4];
                        v48 = v45[5];
                        v50 = (*v11)[3];
                        v51 = (*v11)[4];
                        v52 = (*v11)[5];
                        v56 = 134350593;
                        v57 = v46;
                        v58 = 2053;
                        v59 = v47;
                        v60 = 2053;
                        v61 = v49;
                        v62 = 2050;
                        v63 = v48;
                        v64 = 2053;
                        v65 = v50;
                        v66 = 2053;
                        v67 = v51;
                        v68 = 2050;
                        v69 = v52;
                        v53 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,%{public}.2lf,added snap on parallel road,primaryLL,%{sensitive}.7lf,%{sensitive}.7lf,primaryCourse,%{public}.2lf,candLL,%{sensitive}.7lf,%{sensitive}.7lf,candCourse,%{public}.2lf", &v56, 72);
                        sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRouteBuilder::addAdditionalCandidates(const std::vector<CLGeoMapSnapDataPtr> &, BOOL, std::vector<CLGeoMapSnapDataPtr> &, std::map<CLMapRoadKey, BOOL> &, std::vector<CLMapRoadPtr> &)", "CoreLocation: %s\n", v53);
                        if (v53 != buf)
                        {
                          free(v53);
                        }
                      }

                      goto LABEL_48;
                    }
                  }
                }
              }
            }
          }

LABEL_29:
          v25 = *v14;
          v26 = v14[1];
          if (v26)
          {
            atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (sub_19B998324(v25, v26, 0))
          {
            if (v26)
            {
              sub_19B8750F8(v26);
            }
          }

          else
          {
            v27 = *(*v11 + 14);
            if (v26)
            {
              sub_19B8750F8(v26);
            }

            if (v27 < 0.7)
            {
              goto LABEL_48;
            }
          }

          v28 = **v11;
          if (v28)
          {
            if (!sub_19B8F07E0(a6, v28))
            {
              break;
            }
          }
        }
      }

LABEL_48:
      v11 += 2;
      if (v11 == a3)
      {
        return;
      }
    }

    v30 = *v11;
    v29 = v11[1];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v31 = sub_19B9984C0(v30, *a7, a7[1]);
      sub_19B8750F8(v29);
      v30 = *v11;
      if (!v31)
      {
        goto LABEL_45;
      }
    }

    else if ((sub_19B9984C0(*v11, *a7, a7[1]) & 1) == 0)
    {
      goto LABEL_45;
    }

    if (sqrt(v30[9] * v30[9] + v30[10] * v30[10]) < 7.0 && v30[14] > 0.25)
    {
      goto LABEL_47;
    }

LABEL_45:
    v32 = *v30;
    v33 = *(*v30 + 20);
    if (v33 < 3 || (*(v32 + 24) - 1) <= 1)
    {
      goto LABEL_47;
    }

    if (v33 == 3 || v33 == 5 || *(v32 + 76) == 2)
    {
      v34 = v30[14];
      if (v34 > 0.05)
      {
LABEL_47:
        sub_19B8EAB68(a5, v11);
        *buf = **v11;
        *(sub_19B8F3760(a6, *buf, &unk_19BA897F0, buf) + 48) = 1;
        goto LABEL_48;
      }
    }

    else
    {
      v34 = v30[14];
    }

    if (v34 <= v13)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }
}

void sub_19B99C3BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B99C3DC(uint64_t a1, std::string *a2, uint64_t a3, int a4, void *a5, double **a6)
{
  v8 = a3 == 1;
  v415 = *MEMORY[0x1E69E9840];
  sub_19B99EE80(a1, a2);
  ++*(a1 + 76);
  v388 = a1;
  *(a1 + 128) = sub_19B99F158(@"UsePreferredSnapCandidatesInRouteBuilder", *(a1 + 128), v9, v10);
  v14 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12, v13);
  v389 = a5;
  sub_19B9A338C(a5, v14);
  v386 = objc_msgSend_array(MEMORY[0x1E695DF70], v15, v16, v17);
  Object = objc_msgSend_lastObject(v14, v18, v19, v20);
  if (objc_msgSend_count(v14, v21, v22, v23))
  {
    v26 = 0;
    v27 = dbl_19BA8CB00[v8];
    v28 = 1;
    do
    {
      v29 = objc_msgSend_objectAtIndexedSubscript_(v14, v24, v26, v25);
      if ((objc_msgSend_isWiFiLocationType(v29, v30, v31, v32) & 1) != 0 || objc_msgSend_isLoiLocationType(v29, v33, v34, v35))
      {
        v36 = objc_msgSend_timestamp(v29, v33, v34, v35);
        objc_msgSend_timeIntervalSinceReferenceDate(v36, v37, v38, v39);
        if ((objc_msgSend_containsObject_(v386, v40, v29, v41) & 1) == 0)
        {
          if (v26)
          {
            objc_msgSend_count(v14, v33, v34, v35);
          }

          objc_msgSend_distanceFromLocation_(Object, v33, v29, v35);
          if (v45 >= 120.0)
          {
            v46 = 60.0;
          }

          else
          {
            v46 = 120.0;
          }

          objc_msgSend_latitude(v29, v42, v43, v44);
          v48 = v47;
          objc_msgSend_longitude(v29, v49, v50, v51);
          sub_19B8F1EE8(&v395, v48, v52, v46);
          v56 = objc_msgSend_array(MEMORY[0x1E695DF70], v53, v54, v55);
          objc_msgSend_addObject_(v56, v57, v29, v58);
          if (objc_msgSend_count(v14, v59, v60, v61) - 1 > v26 + 1)
          {
            for (i = v28; objc_msgSend_count(v14, v69, v70, v71) - 1 > i; ++i)
            {
              v65 = objc_msgSend_objectAtIndexedSubscript_(v14, v62, i, v63);
              if ((objc_msgSend_isWiFiLocationType(v65, v66, v67, v68) & 1) == 0 && !objc_msgSend_isLoiLocationType(v65, v69, v70, v71))
              {
                continue;
              }

              v72 = objc_msgSend_timestamp(v65, v69, v70, v71);
              objc_msgSend_timeIntervalSinceReferenceDate(v72, v73, v74, v75);
              v77 = v76;
              v81 = objc_msgSend_timestamp(v65, v78, v79, v80);
              v85 = objc_msgSend_timestamp(v29, v82, v83, v84);
              objc_msgSend_timeIntervalSinceDate_(v81, v86, v85, v87);
              if (v90 > v27)
              {
                break;
              }

              objc_msgSend_latitude(v65, v62, v88, v89);
              v92 = v91;
              objc_msgSend_longitude(v65, v93, v94, v95);
              if (v395 > v92 || v397 < v92)
              {
                continue;
              }

              if (v398 <= v396)
              {
                if (v398 < v396 && (v398 > v96 || v396 < v96))
                {
LABEL_21:
                  if (qword_1EAFE46B8 != -1)
                  {
                    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
                  }

                  v97 = qword_1EAFE46E8;
                  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
                  {
                    objc_msgSend_latitude(v65, v98, v99, v100);
                    v102 = v101;
                    objc_msgSend_longitude(v65, v103, v104, v105);
                    v107 = v106;
                    objc_msgSend_horizontalAccuracy(v65, v108, v109, v110);
                    v112 = v111;
                    objc_msgSend_speed(v65, v113, v114, v115);
                    v117 = v116;
                    objc_msgSend_course(v65, v118, v119, v120);
                    *buf = 134350593;
                    *&buf[4] = v77;
                    *&buf[12] = 2053;
                    *&buf[14] = v102;
                    *&buf[22] = 2053;
                    *&buf[24] = v107;
                    *&buf[32] = 2050;
                    *&buf[34] = v112;
                    *&buf[42] = 2050;
                    *&buf[44] = v117;
                    *&buf[52] = 2050;
                    *&buf[54] = v121;
                    *&buf[62] = 2050;
                    *&v414 = v46;
                    _os_log_impl(&dword_19B873000, v97, OS_LOG_TYPE_DEBUG, "CLTSP,filterWiFiFixes,boundingBoxCheck removed,time,%{public}.2lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,hunc,%{public}.3lf,speed,%{public}.3lf,course,%{public}.3lf,distThreshold,%{public}.1lf", buf, 0x48u);
                  }

                  v122 = sub_19B87DD40();
                  if (*(v122 + 160) > 1 || *(v122 + 164) > 1 || *(v122 + 168) > 1 || *(v122 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE46B8 != -1)
                    {
                      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
                    }

                    v128 = qword_1EAFE46E8;
                    objc_msgSend_latitude(v65, v125, v126, v127);
                    v130 = v129;
                    objc_msgSend_longitude(v65, v131, v132, v133);
                    v135 = v134;
                    objc_msgSend_horizontalAccuracy(v65, v136, v137, v138);
                    v140 = v139;
                    objc_msgSend_speed(v65, v141, v142, v143);
                    v145 = v144;
                    objc_msgSend_course(v65, v146, v147, v148);
                    LODWORD(v404[0]) = 134350593;
                    *(v404 + 4) = v77;
                    WORD2(v404[1]) = 2053;
                    *(&v404[1] + 6) = v130;
                    HIWORD(v404[2]) = 2053;
                    v404[3] = v135;
                    v405 = 2050;
                    v406 = v140;
                    v407 = 2050;
                    v408 = v145;
                    v409 = 2050;
                    v410 = v149;
                    v411 = 2050;
                    v412 = v46;
                    v150 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v128, 2, "CLTSP,filterWiFiFixes,boundingBoxCheck removed,time,%{public}.2lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,hunc,%{public}.3lf,speed,%{public}.3lf,course,%{public}.3lf,distThreshold,%{public}.1lf", v404, 72);
                    sub_19B885924("Generic", 1, 0, 2, "static void CLTripSegmentUtilities::filterWiFiFixes(const CLTripSegmentModeOfTransport, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, double, double)", "CoreLocation: %s\n", v150);
                    if (v150 != buf)
                    {
                      free(v150);
                    }
                  }

                  objc_msgSend_addObject_(v386, v123, v65, v124);
                  objc_msgSend_addObject_(v56, v151, v65, v152);
                }
              }

              else if (v398 >= v96 && v396 <= v96)
              {
                goto LABEL_21;
              }
            }
          }

          v393 = 0u;
          v394 = 0u;
          v391 = 0u;
          v392 = 0u;
          v153 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v62, &v391, v399, 16);
          if (v153)
          {
            v154 = *v392;
            v155 = 0.0;
            v156 = 0.0;
            v157 = 0.0;
            do
            {
              for (j = 0; j != v153; ++j)
              {
                if (*v392 != v154)
                {
                  objc_enumerationMutation(v56);
                }

                v159 = *(*(&v391 + 1) + 8 * j);
                objc_msgSend_horizontalAccuracy(v159, v33, v34, v35);
                if (v160 >= 0.0)
                {
                  objc_msgSend_horizontalAccuracy(v159, v33, v34, v35);
                  if ((v161 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                  {
                    objc_msgSend_horizontalAccuracy(v159, v33, v34, v35);
                    v163 = v162;
                    objc_msgSend_horizontalAccuracy(v159, v164, v165, v166);
                    v168 = v167;
                    objc_msgSend_latitude(v159, v169, v170, v171);
                    v173 = v172;
                    objc_msgSend_longitude(v159, v174, v175, v176);
                    v177 = 1.0 / (v163 * v168);
                    v155 = v155 + v177 * v173;
                    v156 = v156 + v177 * v178;
                    v157 = v157 + v177;
                  }
                }
              }

              v153 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v33, &v391, v399, 16);
            }

            while (v153);
            if (v157 > 0.0 && objc_msgSend_count(v56, v33, v34, v35) >= 2)
            {
              v179 = objc_msgSend_referenceFrame(v29, v33, v34, v35);
              objc_msgSend_updateLatitude_longitude_horizontalAccuracy_referenceFrame_(v29, v180, v179, v181, v155 / v157, v156 / v157, sqrt(1.0 / v157));
              objc_msgSend_updateCourse_andCourseAccuracy_(v29, v182, v183, v184, -1.0, -1.0);
            }
          }
        }
      }

      ++v26;
      ++v28;
    }

    while (objc_msgSend_count(v14, v33, v34, v35) > v26);
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
  }

  v185 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
  {
    v189 = objc_msgSend_count(v389, v186, v187, v188);
    v193 = objc_msgSend_count(v386, v190, v191, v192);
    *buf = 67240448;
    *&buf[4] = v189;
    *&buf[8] = 1026;
    *&buf[10] = v193;
    _os_log_impl(&dword_19B873000, v185, OS_LOG_TYPE_INFO, "CLTSP,filterWiFiFixes,locationCountIn,%{public}d,locationsRemoved,%{public}d", buf, 0xEu);
  }

  v194 = sub_19B87DD40();
  if (*(v194 + 160) > 1 || *(v194 + 164) > 1 || *(v194 + 168) > 1 || *(v194 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v200 = qword_1EAFE46E8;
    v201 = objc_msgSend_count(v389, v197, v198, v199);
    v205 = objc_msgSend_count(v386, v202, v203, v204);
    LODWORD(v404[0]) = 67240448;
    HIDWORD(v404[0]) = v201;
    LOWORD(v404[1]) = 1026;
    *(&v404[1] + 2) = v205;
    v206 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v200, 1, "CLTSP,filterWiFiFixes,locationCountIn,%{public}d,locationsRemoved,%{public}d", v404, 14);
    sub_19B885924("Generic", 1, 0, 2, "static void CLTripSegmentUtilities::filterWiFiFixes(const CLTripSegmentModeOfTransport, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, double, double)", "CoreLocation: %s\n", v206);
    if (v206 != buf)
    {
      free(v206);
    }
  }

  objc_msgSend_removeObjectsInArray_(v389, v195, v386, v196);
  objc_msgSend_removeAllObjects(v386, v207, v208, v209);
  if (objc_msgSend_count(v389, v210, v211, v212))
  {
    v215 = 0;
    v216 = 0;
    do
    {
      v217 = objc_msgSend_objectAtIndexedSubscript_(v389, v213, v215, v214);
      if (objc_msgSend_isWiFiLocationType(v217, v218, v219, v220))
      {
        if (v216 && (v224 = objc_msgSend_timestamp(v217, v221, v222, v223), v228 = objc_msgSend_timestamp(v216, v225, v226, v227), objc_msgSend_timeIntervalSinceDate_(v224, v229, v228, v230), v231 < 15.0))
        {
          objc_msgSend_addObject_(v386, v221, v217, v223);
        }

        else
        {
          v216 = v217;
        }
      }

      ++v215;
    }

    while (objc_msgSend_count(v389, v221, v222, v223) > v215);
  }

  objc_msgSend_removeObjectsInArray_(v389, v213, v386, v214);
  v235 = 0;
  v395 = 0.0;
  v396 = 0.0;
  v397 = 0.0;
  while (objc_msgSend_count(v389, v232, v233, v234) > v235)
  {
    if (a4)
    {
      objc_msgSend_count(v389, v236, v237, v238);
    }

    v390 = objc_msgSend_objectAtIndexedSubscript_(v389, v236, v235, v238);
    if (v390)
    {
      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      if (sub_19B99F500(qword_1EAFE5B10, a2))
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E0A8);
        }

        v337 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v337, OS_LOG_TYPE_INFO, "CLTSP,RouteBuilder,generateSnapCandidates,processingTime exceeded max allowed", buf, 2u);
        }

        v338 = sub_19B87DD40();
        if (*(v338 + 160) > 1 || *(v338 + 164) > 1 || *(v338 + 168) > 1 || *(v338 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E0A8);
          }

          *v399 = 0;
          v339 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLTSP,RouteBuilder,generateSnapCandidates,processingTime exceeded max allowed", v399, 2);
          sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRouteBuilder::generateSnapCandidates(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v339);
          if (v339 != buf)
          {
            free(v339);
          }
        }

        goto LABEL_366;
      }

      v242 = *(v388 + 32);
      if (*(v388 + 24) == v242 || (v243 = *(v242 - 24), v243 == *(v242 - 16)) || (v244 = *(*v243 + 16), objc_msgSend_iOSTime(v390, v239, v240, v241), vabdd_f64(v244, v245) >= 0.0001))
      {
        sub_19B94948C();
      }

      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v246 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
      {
        objc_msgSend_iOSTime(v390, v247, v248, v249);
        *buf = 134349056;
        *&buf[4] = v250;
        _os_log_impl(&dword_19B873000, v246, OS_LOG_TYPE_DEBUG, "CLTSP,duplicate location at time,%{public}.1lf,snap already exists!", buf, 0xCu);
      }

      v251 = sub_19B87DD40();
      if (*(v251 + 160) > 1 || *(v251 + 164) > 1 || *(v251 + 168) > 1 || *(v251 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
        }

        v255 = qword_1EAFE46E8;
        objc_msgSend_iOSTime(v390, v252, v253, v254);
        *v399 = 134349056;
        *&v399[4] = v256;
        v257 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v255, 2, "CLTSP,duplicate location at time,%{public}.1lf,snap already exists!", v399, 12);
        sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRouteBuilder::generateSnapCandidates(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v257);
LABEL_105:
        if (v257 != buf)
        {
          free(v257);
        }
      }
    }

    else
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v258 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v258, OS_LOG_TYPE_ERROR, "CLTSP,generateSnapCandidates,null location", buf, 2u);
      }

      v259 = sub_19B87DD40();
      if ((*(v259 + 160) & 0x80000000) == 0 || (*(v259 + 164) & 0x80000000) == 0 || (*(v259 + 168) & 0x80000000) == 0 || *(v259 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
        }

        *v399 = 0;
        v257 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,generateSnapCandidates,null location", v399, 2);
        sub_19B885924("Generic", 1, 0, 0, "void CLTripSegmentRouteBuilder::generateSnapCandidates(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v257);
        goto LABEL_105;
      }
    }

    ++v235;
  }

  v260 = a6[1];
  v384 = *a6;
  if (v260)
  {
    atomic_fetch_add_explicit(&v260->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v261 = *(v388 + 24);
  v262 = *(v388 + 32);
  v380 = v260;
  if (v261 == v262)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v340 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = 0;
      _os_log_impl(&dword_19B873000, v340, OS_LOG_TYPE_ERROR, "CLTSP,generateAndCombineRoute called with 0 snaps,runIndex,%{public}d", buf, 8u);
    }

    v341 = sub_19B87DD40();
    if ((*(v341 + 160) & 0x80000000) != 0 && (*(v341 + 164) & 0x80000000) != 0 && (*(v341 + 168) & 0x80000000) != 0 && !*(v341 + 152))
    {
      goto LABEL_312;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    *v399 = 67240192;
    v342 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,generateAndCombineRoute called with 0 snaps,runIndex,%{public}d", v399, 8);
    sub_19B885924("Generic", 1, 0, 0, "void CLTripSegmentRouteBuilder::generateAndCombineRoute(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const BOOL, int)", "CoreLocation: %s\n", v342);
    goto LABEL_310;
  }

  v263 = *(v388 + 72);
  if (0xAAAAAAAAAAAAAAABLL * ((v262 - v261) >> 3) > v263)
  {
    v264 = v263;
    v387 = (v388 + 48);
    v265 = -1;
    v266 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
    v267 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
    while (1)
    {
      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      if (sub_19B99F500(qword_1EAFE5B10, v388))
      {
        break;
      }

      *(v388 + 72) = v263;
      v268 = *(v388 + 24);
      v269 = v268 + 24 * v264;
      if (*v269 == *(v269 + 8))
      {
        if (*(v266 + 218) != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E0A8);
        }

        v282 = *(v267 + 225);
        if (os_log_type_enabled(v282, OS_LOG_TYPE_INFO))
        {
          *buf = 67240192;
          *&buf[4] = v263;
          _os_log_impl(&dword_19B873000, v282, OS_LOG_TYPE_INFO, "CLTSP,RouteBuilder,generateAndCombineRoute,snap empty,index,%{public}d", buf, 8u);
        }

        v283 = sub_19B87DD40();
        if (*(v283 + 160) > 1 || *(v283 + 164) > 1 || *(v283 + 168) > 1 || *(v283 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (*(v266 + 218) != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E0A8);
          }

          v284 = *(v267 + 225);
          *v399 = 67240192;
          *&v399[4] = v263;
          v285 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v284, 1, "CLTSP,RouteBuilder,generateAndCombineRoute,snap empty,index,%{public}d", v399, 8);
          sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRouteBuilder::generateAndCombineRoute(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const BOOL, int)", "CoreLocation: %s\n", v285);
          if (v285 != buf)
          {
            free(v285);
          }
        }
      }

      else if ((v265 & 0x80000000) != 0)
      {
        v265 = v263;
      }

      else
      {
        v270 = *(**v269 + 16);
        memset(v404, 0, 24);
        v391 = 0uLL;
        *&v392 = 0;
        if (v260)
        {
          atomic_fetch_add_explicit(&v260->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v271 = (v268 + 24 * v265);
        v272 = sub_19B99F8CC(v388, v263 == 1, v384, v260, v271, (v268 + 24 * v264), &v391, v404);
        if (v260)
        {
          sub_19B8750F8(v260);
        }

        if (v272)
        {
          v273 = *(v388 + 48);
          v274 = *(v388 + 56);
          v275 = v404[0];
          v276 = v404[1];
          if (v274 == v273)
          {
            goto LABEL_181;
          }

          if (v404[0] == v404[1] && v265)
          {
            v277 = *(&v391 + 1);
            v278 = v391;
            if (*(&v391 + 1) != v391)
            {
              do
              {
                v279 = *(v277 - 8);
                if (v279)
                {
                  sub_19B8750F8(v279);
                }

                v277 -= 16;
              }

              while (v277 != v278);
              v273 = *(v388 + 48);
              v274 = *(v388 + 56);
            }

            *(&v391 + 1) = v278;
            v280 = *(v388 + 24);
            memset(buf, 0, 24);
            *v399 = buf;
            v399[8] = 0;
            if (v274 != v273)
            {
              v281 = 0xCCCCCCCCCCCCCCCDLL * ((v274 - v273) >> 4);
              if (v281 < 0x333333333333334)
              {
                sub_19B9A3C74(v281);
              }

              sub_19B8B8A40();
            }

            v286 = v280;
            while (v273 != v274)
            {
              v287 = *(v273 + 1);
              v288 = *(v287 - 8);
              if (v288)
              {
                sub_19B8750F8(v288);
              }

              *(v273 + 1) = v287 - 16;
              v289 = *(v273 + 4);
              v290 = *(v289 - 8);
              if (v290)
              {
                sub_19B8750F8(v290);
              }

              *(v273 + 4) = v289 - 16;
              v291 = *(v273 + 7);
              v292 = *(v291 - 8);
              if (v292)
              {
                sub_19B8750F8(v292);
              }

              *(v273 + 7) = v291 - 16;
              v273 += 80;
            }

            if (v380)
            {
              atomic_fetch_add_explicit(&v380->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_19B99F8CC(v388, v263 == 1, v384, v380, (v286 + 24 * v265 - 24), v269, &v391, v404);
            if (v380)
            {
              sub_19B8750F8(v380);
            }

            if (v387 != buf && v404[0] == v404[1])
            {
              sub_19B9A3ED0(v387, *buf, *&buf[8], 0xCCCCCCCCCCCCCCCDLL * ((*&buf[8] - *buf) >> 4));
            }

            *v399 = buf;
            sub_19B9A3E4C(v399);
            v273 = *(v388 + 48);
            v274 = *(v388 + 56);
            v275 = v404[0];
            v276 = v404[1];
          }

          if (v274 == v273)
          {
LABEL_181:
            v260 = v380;
          }

          else
          {
            v260 = v380;
            if (v275 == v276)
            {
              v293 = *(v388 + 24);
              if (0xAAAAAAAAAAAAAAABLL * ((*(v388 + 32) - v293) >> 3) > v263 + 1)
              {
                v294 = *(&v391 + 1);
                v295 = v391;
                if (*(&v391 + 1) != v391)
                {
                  do
                  {
                    v296 = *(v294 - 8);
                    if (v296)
                    {
                      sub_19B8750F8(v296);
                    }

                    v294 -= 16;
                  }

                  while (v294 != v295);
                  v293 = *(v388 + 24);
                }

                *(&v391 + 1) = v295;
                if (v380)
                {
                  atomic_fetch_add_explicit(&v380->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                sub_19B99F8CC(v388, v263 == 1, v384, v380, v271, (v293 + 24 * (v263 + 1)), &v391, v404);
                if (v380)
                {
                  sub_19B8750F8(v380);
                }

                v275 = v404[0];
                v276 = v404[1];
                if (v404[0] != v404[1])
                {
                  ++v263;
                }
              }
            }
          }

          if (v275 == v276)
          {
            v297 = *(&v391 + 1);
            for (k = v391; k != v297; ++k)
            {
              if (*k && *(*k + 48) != *(*k + 56))
              {
                v414 = 0u;
                memset(buf, 0, sizeof(buf));
                sub_19B9A48B0(buf, k);
                sub_19B9A18F8(v387, buf);
                *v399 = &buf[48];
                sub_19B8F0E84(v399);
                *v399 = &buf[24];
                sub_19B8F0E84(v399);
                *v399 = buf;
                sub_19B8F0E84(v399);
              }
            }

            if (*(v388 + 48) != *(v388 + 56) && v263 == 1)
            {
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
              }

              v300 = qword_1EAFE46E8;
              if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
              {
                v301 = 0xCCCCCCCCCCCCCCCDLL * ((*(v388 + 56) - *(v388 + 48)) >> 4);
                *buf = 134349568;
                *&buf[4] = v270;
                *&buf[12] = 2050;
                *&buf[14] = v301;
                *&buf[22] = 1026;
                *&buf[24] = 0;
                _os_log_impl(&dword_19B873000, v300, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.1lf,combined candidates initialized using routeCandidateVector,%{public}lu,runIndex,%{public}d", buf, 0x1Cu);
              }

              v302 = sub_19B87DD40();
              if (*(v302 + 160) > 1 || *(v302 + 164) > 1 || *(v302 + 168) > 1 || *(v302 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
                }

                v303 = 0xCCCCCCCCCCCCCCCDLL * ((*(v388 + 56) - *(v388 + 48)) >> 4);
                *v399 = 134349568;
                *&v399[4] = v270;
                v400 = 2050;
                v401 = v303;
                v402 = 1026;
                v403 = 0;
                v304 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,%{public}.1lf,combined candidates initialized using routeCandidateVector,%{public}lu,runIndex,%{public}d", v399, 28);
                sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRouteBuilder::generateAndCombineRoute(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const BOOL, int)", "CoreLocation: %s\n", v304);
                if (v304 != buf)
                {
                  free(v304);
                }
              }
            }
          }

          else if (v387 != v404)
          {
            sub_19B9A3ED0(v387, v275, v276, 0xCCCCCCCCCCCCCCCDLL * ((v276 - v275) >> 4));
          }

          v305 = *(v388 + 24);
          v306 = *(v388 + 32);
          if (-1 - 0x5555555555555555 * (v306 - v305) == v263 && a4 != 0)
          {
            v309 = *(&v391 + 1);
            v308 = v391;
            *&buf[8] = 0;
            *&buf[16] = 0;
            *buf = &buf[8];
            while (v308 != v309)
            {
              if (*v308)
              {
                v310 = *(*v308 + 32);
                if (v310)
                {
                  v311 = *v310;
                  if (*v310)
                  {
                    *v399 = *v310;
                    *(sub_19B8F3760(buf, v311, &unk_19BA897F0, v399) + 48) = 1;
                  }
                }
              }

              v308 += 16;
            }

            v312 = *v269;
LABEL_220:
            for (m = *(v269 + 8); ; *(v269 + 8) = m)
            {
              if (v312 == m)
              {
                sub_19B8F3484(buf, *&buf[8]);
                v305 = *(v388 + 24);
                v306 = *(v388 + 32);
                break;
              }

              v314 = **v312;
              if (v314)
              {
                if (sub_19B8F07E0(buf, v314))
                {
                  v312 += 2;
                  goto LABEL_220;
                }

                m = *(v269 + 8);
              }

              sub_19B8F1CF8(v399, v312 + 1, m, v312);
              m = v315;
              for (n = *(v269 + 8); n != m; --n)
              {
                v317 = *(n - 1);
                if (v317)
                {
                  sub_19B8750F8(v317);
                }
              }
            }
          }

          while (v305 != v306)
          {
            v318 = v305[1];
            if (v318 != *v305)
            {
              v319 = *(v318 - 16);
              if (v319)
              {
                if (*(v319 + 16) >= v270)
                {
                  break;
                }

                *&buf[8] = 0;
                *&buf[16] = 0;
                *buf = &buf[8];
                v320 = *(v388 + 48);
                v321 = *(v388 + 56);
                if (v320 != v321)
                {
                  do
                  {
                    for (ii = *(v320 + 24); ii != *(v320 + 32); ii += 2)
                    {
                      v323 = *ii;
                      if (*ii)
                      {
                        v324 = *v305;
                        v325 = v305[1];
                        if (*v305 != v325)
                        {
                          v326 = -1.0;
                          while (1)
                          {
                            if (*v324)
                            {
                              v327 = vabdd_f64(*(v323 + 16), *(*v324 + 16));
                              if (v327 < v326 || v326 < 0.0)
                              {
                                v326 = v327;
                              }

                              if (v326 < 0.0001)
                              {
                                break;
                              }
                            }

                            v324 += 16;
                            if (v324 == v325)
                            {
                              goto LABEL_251;
                            }
                          }

                          v329 = *v323;
                          if (*v323)
                          {
                            *v399 = *v323;
                            *(sub_19B8F3760(buf, v329, &unk_19BA897F0, v399) + 48) = 1;
                          }

                          break;
                        }
                      }

LABEL_251:
                      ;
                    }

                    v320 += 80;
                  }

                  while (v320 != v321);
                  if (*&buf[16])
                  {
                    v330 = *v305;
                    v331 = v305[1];
                    if (*&buf[16] != (v331 - *v305) >> 4 && v330 != v331)
                    {
                      while (1)
                      {
                        v333 = **v330;
                        if (!v333)
                        {
                          goto LABEL_264;
                        }

                        if (!sub_19B8F07E0(buf, v333))
                        {
                          break;
                        }

                        v330 += 16;
                        v331 = v305[1];
LABEL_270:
                        if (v330 == v331)
                        {
                          goto LABEL_271;
                        }
                      }

                      v331 = v305[1];
LABEL_264:
                      sub_19B8F1CF8(v399, (v330 + 16), v331, v330);
                      v331 = v334;
                      for (jj = v305[1]; jj != v331; --jj)
                      {
                        v336 = *(jj - 1);
                        if (v336)
                        {
                          sub_19B8750F8(v336);
                        }
                      }

                      v305[1] = v331;
                      goto LABEL_270;
                    }
                  }
                }

LABEL_271:
                sub_19B8F3484(buf, *&buf[8]);
              }
            }

            v305 += 3;
          }

          v265 = v263;
        }

        else
        {
          sub_19B8EBC04((*(v388 + 24) + 24 * v264));
        }

        *buf = &v391;
        sub_19B8F0E84(buf);
        *buf = v404;
        sub_19B9A3E4C(buf);
        v267 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
        v266 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
      }

      v264 = ++v263;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v388 + 32) - *(v388 + 24)) >> 3) <= v263)
      {
        goto LABEL_312;
      }
    }

    if (*(v266 + 218) != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E0A8);
    }

    v343 = *(v267 + 225);
    if (os_log_type_enabled(v343, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v343, OS_LOG_TYPE_INFO, "CLTSP,RouteBuilder,generateAndCombineRoute for loop,processingTime exceeded max allowed", buf, 2u);
    }

    v344 = sub_19B87DD40();
    if (*(v344 + 160) > 1 || *(v344 + 164) > 1 || *(v344 + 168) > 1 || *(v344 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (*(v266 + 218) != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E0A8);
      }

      v345 = *(v267 + 225);
      *v399 = 0;
      v342 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v345, 1, "CLTSP,RouteBuilder,generateAndCombineRoute for loop,processingTime exceeded max allowed", v399, 2);
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRouteBuilder::generateAndCombineRoute(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const BOOL, int)", "CoreLocation: %s\n", v342);
LABEL_310:
      if (v342 != buf)
      {
        free(v342);
      }
    }
  }

LABEL_312:
  if (v260)
  {
    sub_19B8750F8(v260);
  }

  v346 = *(v388 + 24);
  v347 = *(v388 + 32) - v346;
  if (v347)
  {
    v348 = 0xAAAAAAAAAAAAAAABLL * (v347 >> 3);
    if (v348 <= 1)
    {
      v348 = 1;
    }

    v349 = (v346 + 8);
    v350 = -1.0;
    do
    {
      v351 = *(v349 - 1);
      if (*v349 != v351 && (*v349 - v351) <= 0x10)
      {
        v350 = *(*v351 + 16);
      }

      v349 += 3;
      --v348;
    }

    while (v348);
    if (*(v388 + 76) == 1)
    {
      v353 = *(v388 + 48);
      v354 = *(v388 + 56);
      if (v353 != v354)
      {
        v355 = 0;
        v356 = -1.0;
        do
        {
          v357 = sub_19B9A4798(v353, 1);
          v358 = v356 < 0.0;
          if (v357 < v356)
          {
            v358 = 1;
          }

          if (v358)
          {
            v356 = v357;
            v355 = v353;
          }

          v353 += 10;
        }

        while (v353 != v354);
        v359 = *(v388 + 24);
        if ((v359[1] - *v359) >= 0x11 && v355 != 0)
        {
          v361 = *(v355 + 3);
          if (v361 != *(v355 + 4))
          {
            v362 = *v361;
            v363 = v361[1];
            *buf = v362;
            *&buf[8] = v363;
            if (v363)
            {
              atomic_fetch_add_explicit((v363 + 8), 1uLL, memory_order_relaxed);
            }

            if (v362 && vabdd_f64(*(v362 + 16), *(**v359 + 16)) < 0.0001)
            {
              sub_19B8EBC04(v359);
              sub_19B8EAB68(v359, buf);
            }

            if (*&buf[8])
            {
              sub_19B8750F8(*&buf[8]);
            }
          }
        }
      }
    }
  }

  else
  {
    v350 = -1.0;
  }

  if (a4)
  {
    if (*(v388 + 24) != *(v388 + 32))
    {
      v365 = *(v388 + 48);
      v364 = *(v388 + 56);
      if (v365 != v364)
      {
        v366 = 0;
        v367 = -1.0;
        do
        {
          v368 = sub_19B9A4798(v365, 1);
          v369 = v367 < 0.0;
          if (v368 < v367)
          {
            v369 = 1;
          }

          if (v369)
          {
            v367 = v368;
            v366 = v365;
          }

          v365 += 10;
        }

        while (v365 != v364);
        v370 = *(v388 + 32);
        v371 = *(v370 - 24);
        v372 = *(v370 - 16);
        v373 = (v370 - 24);
        if ((v372 - v371) >= 0x11 && v366 != 0)
        {
          v375 = *(v366 + 7);
          if (*(v366 + 6) != v375)
          {
            v376 = *(v375 - 16);
            *buf = v376;
            v377 = *(v375 - 8);
            *&buf[8] = v377;
            if (v377)
            {
              atomic_fetch_add_explicit(&v377->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v376 && vabdd_f64(*(v376 + 16), *(**v373 + 16)) < 0.0001)
            {
              sub_19B8EBC04(v373);
              sub_19B8EAB68(v373, buf);
              v377 = *&buf[8];
            }

            if (v377)
            {
              sub_19B8750F8(v377);
            }
          }
        }
      }
    }
  }

  else
  {
    v379 = *(v388 + 48);
    v378 = *(v388 + 56);
    while (v379 != v378)
    {
      sub_19B9A4698(v379, v350);
      v379 += 10;
    }
  }

LABEL_366:
  *buf = &v395;
  sub_19B8F0E84(buf);
}
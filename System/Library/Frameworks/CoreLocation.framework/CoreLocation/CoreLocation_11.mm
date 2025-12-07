void sub_19B9E4D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void ***a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void **a63)
{
  a41 = &a63;
  sub_19B8F0E84(&a41);
  a63 = a16;
  sub_19B8F0E84(&a63);
  a63 = (v63 - 160);
  sub_19B8F0E84(&a63);
  if (a17)
  {
    sub_19B8750F8(a17);
  }

  *(v63 - 160) = &a25;
  sub_19B8F0E84((v63 - 160));
  _Unwind_Resume(a1);
}

void sub_19B9E4F38(void *a1, const char *a2, char a3, void *a4, uint64_t **a5, __int128 ***a6, id **a7)
{
  v220 = *MEMORY[0x1E69E9840];
  if (*a7)
  {
    v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v172 = 0u;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(a4, a2, &v171, v198, 16);
    if (v15)
    {
      v16 = *v172;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v172 != v16)
          {
            objc_enumerationMutation(a4);
          }

          v18 = *(*(&v171 + 1) + 8 * i);
          objc_msgSend_course(v18, v12, v13, v14);
          objc_msgSend_courseAccuracy(v18, v19, v20, v21);
          objc_msgSend_horizontalAccuracy(v18, v22, v23, v24);
          objc_msgSend_course(v18, v25, v26, v27);
          objc_msgSend_updateCourse_andCourseAccuracy_(v18, v28, v29, v30);
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(a4, v12, &v171, v198, 16);
      }

      while (v15);
    }

    v165 = 0;
    v166 = 0;
    v164 = xmmword_19BA89490;
    v167 = 0x3FF0000000000000;
    v168 = 0;
    v169 = 0;
    v170 = 0;
    sub_19B948DC0(&v164, a4);
    v161 = 0;
    v162 = 0;
    v163 = 0;
    if (v169 - v168 == 16)
    {
      v31 = *(*v168 + 22);
      v32 = v31 > 0xD;
      v33 = (1 << v31) & 0x2810;
      if (!v32 && v33 != 0)
      {
        v35 = *a5;
        v36 = a5[1];
        if (*a5 == v36)
        {
LABEL_18:
          *&buf[8] = 0;
          *buf = 0;
        }

        else
        {
          while (1)
          {
            v37 = *v35;
            if (*v35)
            {
              if (vabdd_f64(*(v37 + 16), **v168) < 0.001)
              {
                break;
              }
            }

            v35 += 2;
            if (v35 == v36)
            {
              goto LABEL_18;
            }
          }

          v62 = v35[1];
          *buf = v37;
          *&buf[8] = v62;
          if (v62)
          {
            atomic_fetch_add_explicit((v62 + 8), 1uLL, memory_order_relaxed);
          }

          if (*v37)
          {
            sub_19B8EAB68(&v161, buf);
          }
        }

        if (*&buf[8])
        {
          sub_19B8750F8(*&buf[8]);
        }

        if (v161 != v162)
        {
LABEL_93:
          v196 = 0uLL;
          v197 = 0;
          v63 = v161;
          v64 = v162;
          v65 = "est11objc_objectU13block_pointerFvP7NSErrorEEEE";
          if (v161 == v162)
          {
            v103 = 0;
            v104 = a1;
            v106 = a6;
          }

          else
          {
            v66 = a1[6];
            v67 = -1.0;
            if (a1[5] != v66)
            {
              v69 = *(v66 - 24);
              v68 = *(v66 - 16);
              if (v69 != v68)
              {
                v70 = *(v68 - 16);
                if (v70)
                {
                  v67 = *(v70 + 16);
                }
              }
            }

            do
            {
              v71 = *v63;
              if (*v63)
              {
                if (*(v71 + 64) == 1 && (v72 = *(v71 + 16), v72 > 0.0) && *v71 && ((v73 = *(v71 + 32), v74 = fabs(*(v71 + 24)), v74 >= 0.00003) || fabs(v73) >= 0.00003))
                {
                  v101 = fmax(v72, 0.0) > v67;
                  v75 = -1;
                  if (v73 >= -180.0 && v74 <= 90.0 && v73 <= 180.0 && v101)
                  {
                    sub_19B8EAB68(&v196, v63);
                    v75 = *(**v63 + 20);
                  }
                }

                else
                {
                  v75 = -1;
                }

                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                }

                v76 = qword_1EAFE46E8;
                if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
                {
                  if (a2[23] >= 0)
                  {
                    v77 = a2;
                  }

                  else
                  {
                    v77 = *a2;
                  }

                  v78 = *(*v63 + 16);
                  v79 = *(*v63 + 24);
                  v80 = *(*v63 + 32);
                  v81 = *(*v63 + 40);
                  v82 = *(*v63 + 48);
                  v83 = *(*v63 + 56);
                  v85 = *(*v63 + 72);
                  v84 = *(*v63 + 80);
                  v86 = *(*v63 + 88);
                  v87 = *(*v63 + 64);
                  *buf = 136449027;
                  *&buf[4] = v77;
                  *&buf[12] = 2050;
                  *&buf[14] = v78;
                  v200 = 2053;
                  v201 = v79;
                  v202 = 2053;
                  v203 = v80;
                  v204 = 2049;
                  v205 = v81;
                  v206 = 2050;
                  v207 = v82;
                  v208 = 2050;
                  v209 = v83;
                  v210 = 2050;
                  v211 = v84;
                  v212 = 2050;
                  v213 = v85;
                  v214 = 2050;
                  v215 = v86;
                  v216 = 1026;
                  v217 = v87;
                  v218 = 1026;
                  v219 = v75;
                  _os_log_impl(&dword_19B873000, v76, OS_LOG_TYPE_DEBUG, "CLTSP,MI,snappedGPSLocation,id,%{public}s,time,%{public}.3lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{private}.3lf,projection,%{public}.8lf,score,%{public}.12lf,dE,%{public}.2lf,dN,%{public}.2lf,dCourse,%{public}.2lf,valid,%{public}d,frc,%{public}d", buf, 0x72u);
                }

                v88 = sub_19B87DD40();
                if (*(v88 + 160) > 1 || *(v88 + 164) > 1 || *(v88 + 168) > 1 || *(v88 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46B8 != -1)
                  {
                    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                  }

                  if (a2[23] >= 0)
                  {
                    v89 = a2;
                  }

                  else
                  {
                    v89 = *a2;
                  }

                  v90 = *(*v63 + 16);
                  v91 = *(*v63 + 24);
                  v92 = *(*v63 + 32);
                  v93 = *(*v63 + 40);
                  v94 = *(*v63 + 48);
                  v95 = *(*v63 + 56);
                  v97 = *(*v63 + 72);
                  v96 = *(*v63 + 80);
                  v98 = *(*v63 + 88);
                  v99 = *(*v63 + 64);
                  *v175 = 136449027;
                  *&v175[4] = v89;
                  *&v175[12] = 2050;
                  *&v175[14] = v90;
                  v176 = 2053;
                  v177 = v91;
                  v178 = 2053;
                  v179 = v92;
                  v180 = 2049;
                  v181 = v93;
                  v182 = 2050;
                  v183 = v94;
                  v184 = 2050;
                  v185 = v95;
                  v186 = 2050;
                  v187 = v96;
                  v188 = 2050;
                  v189 = v97;
                  v190 = 2050;
                  v191 = v98;
                  v192 = 1026;
                  v193 = v99;
                  v194 = 1026;
                  v195 = v75;
                  v100 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,MI,snappedGPSLocation,id,%{public}s,time,%{public}.3lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{private}.3lf,projection,%{public}.8lf,score,%{public}.12lf,dE,%{public}.2lf,dN,%{public}.2lf,dCourse,%{public}.2lf,valid,%{public}d,frc,%{public}d", v175, 114);
                  sub_19B885924("Generic", 1, 0, 2, "void CLTripLocationFilter::processLocationChunk(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<std::vector<CLGeoMapSnapDataPtr>> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v100);
                  if (v100 != buf)
                  {
                    free(v100);
                  }
                }
              }

              ++v63;
            }

            while (v63 != v64);
            v103 = v196;
            v104 = a1;
            if (v196 != *(&v196 + 1))
            {
              v105 = 0;
              v106 = a6;
              v65 = "NSt3__110__function6__funcIZN36CLGeoFeatureAccess3dBuildingGeometry23buildingsWithinDistanceERNS_6vectorI25ExtrudedBuildingFootprintNS_9allocatorIS4_EEEERKdSA_SA_E3$_0NS5_ISB_EEFPU37objcproto26GEOMapFeatureAccessRequest11objc_objectU13block_pointerFvP7NSErrorEEEE" + 216;
              goto LABEL_138;
            }

            v106 = a6;
            v65 = "est11objc_objectU13block_pointerFvP7NSErrorEEEE";
          }

          if (*v106 == v106[1])
          {
            if (v169 != v168)
            {
              operator new();
            }

            goto LABEL_186;
          }

          v105 = 1;
LABEL_138:
          v151 = (v104 + 5);
          v107 = v104[6];
          v108 = -1.0;
          v109 = -1.0;
          if (v104[5] != v107)
          {
            v111 = *(v107 - 24);
            v110 = *(v107 - 16);
            if (v111 != v110)
            {
              v112 = *(v110 - 16);
              if (v112)
              {
                v109 = *(v112 + 16);
              }
            }
          }

          if ((v105 & 1) == 0)
          {
            v108 = *(*v103 + 16);
          }

          v113 = *v106;
          v154 = v106[1];
          if (*v106 != v154)
          {
            v155 = *(v65 + 50);
            do
            {
              v156 = 0;
              v157 = 0;
              v158 = 0;
              v115 = *v113;
              v114 = v113[1];
              if (*v113 != v114)
              {
                do
                {
                  v116 = *v115;
                  if (*v115 && *v116)
                  {
                    v117 = *(v116 + 16);
                    v118 = v117 < v108 + -1.0 || v108 == -1.0;
                    v119 = v117 > v109 + 1.0 || v109 == -1.0;
                    if (v119 && v118)
                    {
                      if (qword_1EAFE46B8 != -1)
                      {
                        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                      }

                      v121 = qword_1EAFE46E8;
                      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
                      {
                        if (a2[23] >= 0)
                        {
                          v122 = a2;
                        }

                        else
                        {
                          v122 = *a2;
                        }

                        v123 = *(*v115 + 16);
                        v124 = *(*v115 + 24);
                        v125 = *(*v115 + 32);
                        v126 = *(*v115 + 40);
                        v127 = *(*v115 + 48);
                        v128 = *(*v115 + 56);
                        v130 = *(*v115 + 72);
                        v129 = *(*v115 + 80);
                        v131 = *(*v115 + 88);
                        v132 = *(*v115 + 64);
                        v133 = *(**v115 + 20);
                        *buf = v155;
                        *&buf[4] = v122;
                        *&buf[12] = 2050;
                        *&buf[14] = v123;
                        v200 = 2053;
                        v201 = v124;
                        v202 = 2053;
                        v203 = v125;
                        v204 = 2049;
                        v205 = v126;
                        v206 = 2050;
                        v207 = v127;
                        v208 = 2050;
                        v209 = v128;
                        v210 = 2050;
                        v211 = v129;
                        v212 = 2050;
                        v213 = v130;
                        v214 = 2050;
                        v215 = v131;
                        v216 = 1026;
                        v217 = v132;
                        v218 = 1026;
                        v219 = v133;
                        _os_log_impl(&dword_19B873000, v121, OS_LOG_TYPE_DEBUG, "CLTSP,MI,snappedIILocation,id,%{public}s,time,%{public}.3lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{private}.3lf,projection,%{public}.8lf,score,%{public}.12lf,dE,%{public}.2lf,dN,%{public}.2lf,dCourse,%{public}.2lf,valid,%{public}d,frc,%{public}d", buf, 0x72u);
                      }

                      v134 = sub_19B87DD40();
                      if (*(v134 + 160) > 1 || *(v134 + 164) > 1 || *(v134 + 168) > 1 || *(v134 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE46B8 != -1)
                        {
                          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                        }

                        if (a2[23] >= 0)
                        {
                          v135 = a2;
                        }

                        else
                        {
                          v135 = *a2;
                        }

                        v136 = *(*v115 + 16);
                        v137 = *(*v115 + 24);
                        v138 = *(*v115 + 32);
                        v139 = *(*v115 + 40);
                        v140 = *(*v115 + 48);
                        v141 = *(*v115 + 56);
                        v143 = *(*v115 + 72);
                        v142 = *(*v115 + 80);
                        v144 = *(*v115 + 88);
                        v145 = *(*v115 + 64);
                        v146 = *(**v115 + 20);
                        *v175 = v155;
                        *&v175[4] = v135;
                        *&v175[12] = 2050;
                        *&v175[14] = v136;
                        v176 = 2053;
                        v177 = v137;
                        v178 = 2053;
                        v179 = v138;
                        v180 = 2049;
                        v181 = v139;
                        v182 = 2050;
                        v183 = v140;
                        v184 = 2050;
                        v185 = v141;
                        v186 = 2050;
                        v187 = v142;
                        v188 = 2050;
                        v189 = v143;
                        v190 = 2050;
                        v191 = v144;
                        v192 = 1026;
                        v193 = v145;
                        v194 = 1026;
                        v195 = v146;
                        v147 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,MI,snappedIILocation,id,%{public}s,time,%{public}.3lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{private}.3lf,projection,%{public}.8lf,score,%{public}.12lf,dE,%{public}.2lf,dN,%{public}.2lf,dCourse,%{public}.2lf,valid,%{public}d,frc,%{public}d", v175, 114);
                        sub_19B885924("Generic", 1, 0, 2, "void CLTripLocationFilter::processLocationChunk(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<std::vector<CLGeoMapSnapDataPtr>> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v147);
                        if (v147 != buf)
                        {
                          free(v147);
                        }
                      }

                      sub_19B8EAB68(&v156, v115);
                    }
                  }

                  ++v115;
                }

                while (v115 != v114);
                if (v156 != v157)
                {
                  v148 = *(v157 - 2);
                  if (v148)
                  {
                    v109 = *(v148 + 16);
                    v149 = a1[6];
                    if (v149 >= a1[7])
                    {
                      v150 = sub_19B9A2EF8(v151, &v156);
                    }

                    else
                    {
                      sub_19B9A2EA4(v151, &v156);
                      v150 = (v149 + 24);
                    }

                    a1[6] = v150;
                  }
                }
              }

              *buf = &v156;
              sub_19B8F0E84(buf);
              v113 += 3;
            }

            while (v113 != v154);
          }

LABEL_186:
          *buf = &v196;
          sub_19B8F0E84(buf);
          *buf = &v161;
          sub_19B8F0E84(buf);
          *buf = &v168;
          sub_19B8F0E84(buf);
          return;
        }
      }
    }

    if (a3)
    {
      v38 = a7[1];
      v159 = *a7;
      v160 = v38;
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v39 = sub_19B9AECDC(&v168, &v161, &v159);
      if (v160)
      {
        sub_19B8750F8(v160);
      }

      if ((v39 & 1) == 0)
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v40 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
        {
          v41 = **v168;
          *buf = 134349056;
          *&buf[4] = v41;
          _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_ERROR, "CLTSP,MI,%{public}.1lf,unable to compute snap using particle mapmatcher", buf, 0xCu);
        }

        v42 = sub_19B87DD40();
        if ((*(v42 + 160) & 0x80000000) == 0 || (*(v42 + 164) & 0x80000000) == 0 || (*(v42 + 168) & 0x80000000) == 0 || *(v42 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
          }

          v43 = **v168;
          *v175 = 134349056;
          *&v175[4] = v43;
          v44 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,MI,%{public}.1lf,unable to compute snap using particle mapmatcher", v175, 12);
          sub_19B885924("Generic", 1, 0, 0, "void CLTripLocationFilter::processLocationChunk(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<std::vector<CLGeoMapSnapDataPtr>> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v44);
          if (v44 != buf)
          {
            free(v44);
          }
        }
      }

      goto LABEL_93;
    }

    v48 = v168;
    v49 = v169;
    if (v168 == v169)
    {
      goto LABEL_93;
    }

    while (1)
    {
      *v175 = 0;
      *&v175[8] = 0;
      if (!sub_19B8E8210(*a7, v175, 1, **v48, (*v48)[1], (*v48)[2], (*v48)[4], (*v48)[3], (*v48)[5]))
      {
        break;
      }

      v50 = *v175;
      if (!*v175)
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v58 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
        {
          v59 = **v48;
          *buf = 134349056;
          *&buf[4] = v59;
          _os_log_impl(&dword_19B873000, v58, OS_LOG_TYPE_ERROR, "CLTSP,MI,%{public}.1lf,destination snap is nullptr", buf, 0xCu);
        }

        v60 = sub_19B87DD40();
        if ((*(v60 + 160) & 0x80000000) != 0 && (*(v60 + 164) & 0x80000000) != 0 && (*(v60 + 168) & 0x80000000) != 0 && !*(v60 + 152))
        {
          goto LABEL_78;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v61 = **v48;
        LODWORD(v196) = 134349056;
        *(&v196 + 4) = v61;
        v57 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,MI,%{public}.1lf,destination snap is nullptr", &v196, 12);
        sub_19B885924("Generic", 1, 0, 0, "void CLTripLocationFilter::processLocationChunk(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<std::vector<CLGeoMapSnapDataPtr>> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v57);
        goto LABEL_76;
      }

      v51 = *v48;
      v52 = -1.0;
      if ((*v48)[7] > 0.0)
      {
        v52 = v51[6];
      }

      *(*v175 + 104) = v52;
      *(v50 + 120) = *(v51 + 22);
      sub_19B8EAB68(&v161, v175);
LABEL_78:
      if (*&v175[8])
      {
        sub_19B8750F8(*&v175[8]);
      }

      v48 += 2;
      if (v48 == v49)
      {
        goto LABEL_93;
      }
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v53 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v54 = **v48;
      *buf = 134349056;
      *&buf[4] = v54;
      _os_log_impl(&dword_19B873000, v53, OS_LOG_TYPE_ERROR, "CLTSP,MI,%{public}.1lf,unable to compute Snap", buf, 0xCu);
    }

    v55 = sub_19B87DD40();
    if ((*(v55 + 160) & 0x80000000) != 0 && (*(v55 + 164) & 0x80000000) != 0 && (*(v55 + 168) & 0x80000000) != 0 && !*(v55 + 152))
    {
      goto LABEL_78;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v56 = **v48;
    LODWORD(v196) = 134349056;
    *(&v196 + 4) = v56;
    v57 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,MI,%{public}.1lf,unable to compute Snap", &v196, 12);
    sub_19B885924("Generic", 1, 0, 0, "void CLTripLocationFilter::processLocationChunk(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<std::vector<CLGeoMapSnapDataPtr>> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v57);
LABEL_76:
    if (v57 != buf)
    {
      free(v57);
    }

    goto LABEL_78;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
  }

  v45 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_ERROR, "CLTSP,Unexpected,invalid geometry pointer,processLocationChunk", buf, 2u);
  }

  v46 = sub_19B87DD40();
  if ((*(v46 + 160) & 0x80000000) == 0 || (*(v46 + 164) & 0x80000000) == 0 || (*(v46 + 168) & 0x80000000) == 0 || *(v46 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    *v175 = 0;
    v47 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,Unexpected,invalid geometry pointer,processLocationChunk", v175, 2);
    sub_19B885924("Generic", 1, 0, 0, "void CLTripLocationFilter::processLocationChunk(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<std::vector<CLGeoMapSnapDataPtr>> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v47);
    if (v47 != buf)
    {
      free(v47);
    }
  }
}

void sub_19B9E6114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (STACK[0x228])
  {
    sub_19B8750F8(STACK[0x228]);
  }

  STACK[0x220] = &a22;
  sub_19B8F0E84(&STACK[0x220]);
  STACK[0x220] = a11;
  sub_19B8F0E84(&STACK[0x220]);
  _Unwind_Resume(a1);
}

BOOL sub_19B9E61E4(float64x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6, void *a7, void *a8, uint64_t *a9, uint64_t *a10)
{
  v680 = *MEMORY[0x1E69E9840];
  if (!*a9)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v23 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_ERROR, "CLTSP,Unexpected,invalid geometry pointer,makeSegmentsForRouteConstruction", buf, 2u);
    }

    v24 = sub_19B87DD40();
    if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      LOWORD(v627[0]) = 0;
      v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,Unexpected,invalid geometry pointer,makeSegmentsForRouteConstruction", v627, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    return 0;
  }

  v10 = a4;
  v12 = a1[2].f64[1];
  v578 = &a1[2].f64[1];
  v13 = a1[3].f64[0];
  while (*&v13 != *&v12)
  {
    *&v13 -= 24;
    *buf = v13;
    sub_19B8F0E84(buf);
  }

  a1[3].f64[0] = v12;
  v615 = 0;
  v614 = 0;
  v613 = xmmword_19BA89490;
  v616 = 0x3FF0000000000000;
  v617 = 0;
  v619 = 0;
  v618 = 0;
  if (a3 != 1)
  {
    v26 = *a9;
    v27 = a9[1];
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_19B9E2EF8(&v613, a2, a8, v26, v27, a3);
    if (v27)
    {
      sub_19B8750F8(v27);
    }

    v588 = objc_msgSend_array(MEMORY[0x1E695DF70], v28, v29, v30);
    v34 = 0;
    v623 = 0;
    v622 = 0;
    v624 = 0;
    v620 = 0uLL;
    v621 = 0;
    v605 = 0uLL;
    v606 = 0;
    v603 = 0uLL;
    v604 = 0;
    v601 = 0xBFF0000000000000;
    v602 = 0;
    while (objc_msgSend_count(a7, v31, v32, v33) > v34)
    {
      if (v34)
      {
        objc_msgSend_count(a7, v35, v36, v37);
      }

      v600 = objc_msgSend_objectAtIndexedSubscript_(a7, v35, v34, v37);
      if (v600)
      {
        objc_msgSend_objectAtIndexedSubscript_(a7, v38, v34, v39);
        if (v34)
        {
          goto LABEL_78;
        }

        objc_msgSend_course(v600, v43, v44, v45);
        v47 = v46;
        objc_msgSend_courseAccuracy(v600, v48, v49, v50);
        v52 = v51;
        memset(v627, 0, sizeof(v627));
        v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(a7, v53, v627, buf, 16);
        if (!v57)
        {
          goto LABEL_77;
        }

        v58 = 0;
        v59 = **&v627[1];
        while (1)
        {
          for (i = 0; i != v57; ++i)
          {
            if (**&v627[1] != v59)
            {
              objc_enumerationMutation(a7);
            }

            v61 = *(*(&v627[0] + 1) + 8 * i);
            if (!v58 && (v58 = *(*(&v627[0] + 1) + 8 * i), (objc_msgSend_isCourseValid(v58, v54, v55, v56) & 1) != 0) || objc_msgSend_isGPSLocationType(v61, v54, v55, v56) && objc_msgSend_isCourseValid(v61, v54, v55, v56) && (objc_msgSend_courseAccuracy(v61, v54, v55, v56), v62 < 135.0))
            {
              objc_msgSend_course(v61, v54, v55, v56);
              v98 = v97;
              objc_msgSend_courseAccuracy(v61, v99, v100, v101);
              objc_msgSend_updateCourse_andCourseAccuracy_(v600, v102, v103, v104, v98, v105);
              goto LABEL_78;
            }

            objc_msgSend_latitude(v58, v54, v55, v56);
            v64 = v63;
            objc_msgSend_longitude(v58, v65, v66, v67);
            v69 = v68;
            objc_msgSend_latitude(v61, v70, v71, v72);
            v74 = v73;
            objc_msgSend_longitude(v61, v75, v76, v77);
            sub_19BA0C01C(a1, v64, v69, v74, v78, 0.0);
            v80 = v79;
            if (v79 > 10.0)
            {
              objc_msgSend_latitude(v58, v54, v55, v56);
              v82 = v81;
              objc_msgSend_longitude(v58, v83, v84, v85);
              v87 = v86;
              objc_msgSend_latitude(v61, v88, v89, v90);
              v92 = v91;
              objc_msgSend_longitude(v61, v93, v94, v95);
              v47 = sub_19BA0C44C(a1, v82, v87, v92, v96);
              v52 = 90.0;
              if (v80 > 75.0)
              {
                v52 = 90.0;
                goto LABEL_77;
              }
            }
          }

          v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(a7, v54, v627, buf, 16);
          if (!v57)
          {
LABEL_77:
            objc_msgSend_updateCourse_andCourseAccuracy_(v600, v54, v55, v56, v47, v52);
LABEL_78:
            sub_19B94948C();
          }
        }
      }

      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v40 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240448;
        *&buf[4] = v34;
        *&buf[8] = 1026;
        *&buf[10] = a3;
        _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_ERROR, "CLTSP,MI,loc is unexpectedly nil,i,%{public}d,mode,%{public}d", buf, 0xEu);
      }

      v41 = sub_19B87DD40();
      if ((*(v41 + 160) & 0x80000000) == 0 || (*(v41 + 164) & 0x80000000) == 0 || (*(v41 + 168) & 0x80000000) == 0 || *(v41 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        LODWORD(v627[0]) = 67240448;
        DWORD1(v627[0]) = v34;
        WORD4(v627[0]) = 1026;
        *(v627 + 10) = a3;
        v42 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,MI,loc is unexpectedly nil,i,%{public}d,mode,%{public}d", v627, 14);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v42);
        if (v42 != buf)
        {
          free(v42);
        }
      }

      ++v34;
    }

    if (!objc_msgSend_count(v588, v35, v36, v37))
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v317 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
      {
        v321 = *(a2 + 23);
        v322 = *a2;
        v323 = objc_msgSend_count(a7, v318, v319, v320);
        if (v321 >= 0)
        {
          v324 = a2;
        }

        else
        {
          v324 = v322;
        }

        *buf = 136446466;
        *&buf[4] = v324;
        *&buf[12] = 2048;
        *&buf[14] = v323;
        _os_log_impl(&dword_19B873000, v317, OS_LOG_TYPE_DEFAULT, "CLTSP,MI,data not available for segment creation after filtering,id,%{public}s,count,%lu", buf, 0x16u);
      }

      v325 = sub_19B87DD40();
      if (*(v325 + 160) > 1 || *(v325 + 164) > 1 || *(v325 + 168) > 1 || *(v325 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v329 = qword_1EAFE46E8;
        v330 = *(a2 + 23);
        v331 = *a2;
        v332 = objc_msgSend_count(a7, v326, v327, v328);
        if (v330 >= 0)
        {
          v333 = a2;
        }

        else
        {
          v333 = v331;
        }

        LODWORD(v627[0]) = 136446466;
        *(v627 + 4) = v333;
        WORD6(v627[0]) = 2048;
        *(v627 + 14) = v332;
        v334 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v329, 0, "CLTSP,MI,data not available for segment creation after filtering,id,%{public}s,count,%lu", v627, 22);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v334);
        if (v334 != buf)
        {
          free(v334);
        }
      }

      v22 = 0;
      goto LABEL_262;
    }

    v579 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v598 = 0u;
    v599 = 0u;
    v596 = 0u;
    v597 = 0u;
    v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(v588, v106, &v596, v626, 16);
    if (v110)
    {
      v111 = 0;
      v112 = -1;
      v113 = *v597;
      v114 = -1;
      do
      {
        v115 = 0;
        do
        {
          if (*v597 != v113)
          {
            objc_enumerationMutation(v588);
          }

          v116 = *(*(&v596 + 1) + 8 * v115);
          if ((objc_msgSend_isGPSLocationType(v116, v107, v108, v109) & 1) == 0)
          {
            if (v114 < 0)
            {
              v114 = objc_msgSend_mapsRoadClass(v116, v107, v108, v109);
            }

            else
            {
              if (v112 != -1)
              {
                if (objc_msgSend_mapsRoadClass(v116, v107, v108, v109) == v114 || objc_msgSend_mapsRoadClass(v116, v117, v118, v119) != v112)
                {
                  objc_msgSend_addObject_(v579, v117, v111, v119);
                  v111 = 0;
                }

                else
                {
                  v111 = 0;
                  if (objc_msgSend_mapsRoadClass(v116, v117, v120, v119) == v112)
                  {
                    v114 = v112;
                  }
                }
              }

              if (objc_msgSend_mapsRoadClass(v116, v107, v108, v109) == v114)
              {
                v112 = -1;
              }

              else
              {
                v112 = objc_msgSend_mapsRoadClass(v116, v121, v122, v123);
                v111 = v116;
              }

              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
              }

              v124 = qword_1EAFE46E8;
              if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
              {
                v128 = objc_msgSend_timestamp(v116, v125, v126, v127);
                objc_msgSend_timeIntervalSinceReferenceDate(v128, v129, v130, v131);
                v133 = v132;
                v137 = objc_msgSend_mapsRoadClass(v116, v134, v135, v136);
                *buf = 134349824;
                *&buf[4] = v133;
                *&buf[12] = 1026;
                *&buf[14] = v137;
                *&buf[18] = 1026;
                *&buf[20] = v114;
                LOWORD(v652) = 1026;
                *(&v652 + 2) = v112;
                _os_log_impl(&dword_19B873000, v124, OS_LOG_TYPE_INFO, "CLTSP,WiFiFiltering,%{public}.2lf,locFRC,%{public}d,currentFRC,%{public}d,outlierFRC,%{public}d", buf, 0x1Eu);
              }

              v138 = sub_19B87DD40();
              if (*(v138 + 160) > 1 || *(v138 + 164) > 1 || *(v138 + 168) > 1 || *(v138 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                }

                v142 = qword_1EAFE46E8;
                v143 = objc_msgSend_timestamp(v116, v139, v140, v141);
                objc_msgSend_timeIntervalSinceReferenceDate(v143, v144, v145, v146);
                v148 = v147;
                v152 = objc_msgSend_mapsRoadClass(v116, v149, v150, v151);
                LODWORD(v627[0]) = 134349824;
                *(v627 + 4) = v148;
                WORD6(v627[0]) = 1026;
                *(v627 + 14) = v152;
                WORD1(v627[1]) = 1026;
                DWORD1(v627[1]) = v114;
                WORD4(v627[1]) = 1026;
                *(&v627[1] + 10) = v112;
                v153 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v142, 1, "CLTSP,WiFiFiltering,%{public}.2lf,locFRC,%{public}d,currentFRC,%{public}d,outlierFRC,%{public}d", v627, 30);
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v153);
                if (v153 != buf)
                {
                  free(v153);
                }
              }
            }
          }

          ++v115;
        }

        while (v110 != v115);
        v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(v588, v107, &v596, v626, 16);
      }

      while (v110);
    }

    v594 = 0u;
    v595 = 0u;
    v592 = 0u;
    v593 = 0u;
    v157 = objc_msgSend_countByEnumeratingWithState_objects_count_(v579, v107, &v592, v625, 16);
    if (v157)
    {
      v158 = *v593;
      do
      {
        v159 = 0;
        do
        {
          if (*v593 != v158)
          {
            objc_enumerationMutation(v579);
          }

          v160 = *(*(&v592 + 1) + 8 * v159);
          objc_msgSend_removeObject_(v588, v154, v160, v156);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
          }

          v161 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
          {
            v165 = objc_msgSend_timestamp(v160, v162, v163, v164);
            objc_msgSend_timeIntervalSinceReferenceDate(v165, v166, v167, v168);
            v170 = v169;
            v174 = objc_msgSend_mapsRoadClass(v160, v171, v172, v173);
            *buf = 134349312;
            *&buf[4] = v170;
            *&buf[12] = 1026;
            *&buf[14] = v174;
            _os_log_impl(&dword_19B873000, v161, OS_LOG_TYPE_INFO, "CLTSP,WiFiFiltering,erased,%{public}.2lf,locFRC,%{public}d", buf, 0x12u);
          }

          v175 = sub_19B87DD40();
          if (*(v175 + 160) > 1 || *(v175 + 164) > 1 || *(v175 + 168) > 1 || *(v175 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
            }

            v179 = qword_1EAFE46E8;
            v180 = objc_msgSend_timestamp(v160, v176, v177, v178);
            objc_msgSend_timeIntervalSinceReferenceDate(v180, v181, v182, v183);
            v185 = v184;
            v189 = objc_msgSend_mapsRoadClass(v160, v186, v187, v188);
            LODWORD(v627[0]) = 134349312;
            *(v627 + 4) = v185;
            WORD6(v627[0]) = 1026;
            *(v627 + 14) = v189;
            v190 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v179, 1, "CLTSP,WiFiFiltering,erased,%{public}.2lf,locFRC,%{public}d", v627, 18);
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v190);
            if (v190 != buf)
            {
              free(v190);
            }
          }

          ++v159;
        }

        while (v157 != v159);
        v157 = objc_msgSend_countByEnumeratingWithState_objects_count_(v579, v154, &v592, v625, 16);
      }

      while (v157);
    }

    v194 = objc_msgSend_array(MEMORY[0x1E695DF70], v154, v155, v156);
    v195 = 0;
    v196 = 0;
    while (1)
    {
      if (objc_msgSend_count(v588, v191, v192, v193) <= v195)
      {
        v277 = a1[3].f64[0];
        if (*&a1[2].f64[1] != *&v277)
        {
          v279 = *(*&v277 - 24);
          v278 = *(*&v277 - 16);
          if (v279 != v278)
          {
            v280 = *(v278 - 16);
            if (v280)
            {
              v281 = v617;
              v282 = v618;
              if (v617 != v618)
              {
                v283 = *(v280 + 16);
                do
                {
                  memset(buf, 0, sizeof(buf));
                  v284 = *v281;
                  v285 = v281[1];
                  if (*v281 != v285)
                  {
                    do
                    {
                      if (*v284 && *(*v284 + 16) > v283 + 1.0)
                      {
                        sub_19B8EAB68(buf, v284);
                      }

                      ++v284;
                    }

                    while (v284 != v285);
                    if (*buf != *&buf[8])
                    {
                      v286 = *(*&buf[8] - 16);
                      if (v286)
                      {
                        v283 = *(v286 + 16);
                        v287 = a1[3].f64[0];
                        if (*&v287 >= *&a1[3].f64[1])
                        {
                          v288 = sub_19B9A2EF8(v578, buf);
                        }

                        else
                        {
                          sub_19B9A2EA4(v578, buf);
                          v288 = (*&v287 + 24);
                        }

                        *&a1[3].f64[0] = v288;
                      }
                    }
                  }

                  *&v627[0] = buf;
                  sub_19B8F0E84(v627);
                  v281 += 3;
                }

                while (v281 != v282);
              }
            }
          }
        }

        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v289 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
        {
          if (*(a2 + 23) >= 0)
          {
            v293 = a2;
          }

          else
          {
            v293 = *a2;
          }

          v294 = objc_msgSend_count(v588, v290, v291, v292);
          v298 = objc_msgSend_count(a7, v295, v296, v297);
          v299 = 0xAAAAAAAAAAAAAAABLL * ((*&a1[3].f64[0] - *&a1[2].f64[1]) >> 3);
          v300 = *(*a9 + 116);
          v301 = *(*a9 + 152);
          *buf = 136447490;
          *&buf[4] = v293;
          *&buf[12] = 2050;
          *&buf[14] = v294;
          *&buf[22] = 2048;
          v652 = v298;
          *v653 = 2050;
          *&v653[2] = v299;
          v654 = 1026;
          *v655 = v300;
          *&v655[4] = 1026;
          *&v655[6] = v301;
          _os_log_impl(&dword_19B873000, v289, OS_LOG_TYPE_INFO, "CLTSP,MI,makeSegmentsForRouteConstruction,id,%{public}s,filteredCount,%{public}lu,inputCount,%lu,segments,%{public}lu,mapsAPICalls,%{public}d,geometry,%{public}d", buf, 0x36u);
        }

        v302 = sub_19B87DD40();
        if (*(v302 + 160) > 1 || *(v302 + 164) > 1 || *(v302 + 168) > 1 || *(v302 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
          }

          v306 = qword_1EAFE46E8;
          if (*(a2 + 23) >= 0)
          {
            v307 = a2;
          }

          else
          {
            v307 = *a2;
          }

          v308 = objc_msgSend_count(v588, v303, v304, v305);
          v312 = objc_msgSend_count(a7, v309, v310, v311);
          v313 = 0xAAAAAAAAAAAAAAABLL * ((*&a1[3].f64[0] - *&a1[2].f64[1]) >> 3);
          v314 = *(*a9 + 116);
          v315 = *(*a9 + 152);
          LODWORD(v627[0]) = 136447490;
          *(v627 + 4) = v307;
          WORD6(v627[0]) = 2050;
          *(v627 + 14) = v308;
          WORD3(v627[1]) = 2048;
          *(&v627[1] + 1) = v312;
          LOWORD(v627[2]) = 2050;
          *(&v627[2] + 2) = v313;
          WORD5(v627[2]) = 1026;
          HIDWORD(v627[2]) = v314;
          LOWORD(v627[3]) = 1026;
          *(&v627[3] + 2) = v315;
          v316 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v306, 1, "CLTSP,MI,makeSegmentsForRouteConstruction,id,%{public}s,filteredCount,%{public}lu,inputCount,%lu,segments,%{public}lu,mapsAPICalls,%{public}d,geometry,%{public}d", v627, 54);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v316);
          if (v316 != buf)
          {
            free(v316);
          }
        }

        v22 = *&a1[2].f64[1] != *&a1[3].f64[0];
LABEL_262:
        *buf = &v603;
        sub_19B8F0E84(buf);
        *buf = &v605;
        sub_19B8F0E84(buf);
        *buf = &v620;
        sub_19B8F0E84(buf);
        *buf = &v622;
        sub_19B8F0E84(buf);
        goto LABEL_449;
      }

      v199 = objc_msgSend_objectAtIndexedSubscript_(v588, v197, v195, v198);
      v203 = v199;
      if (v199)
      {
        if (!v196)
        {
          objc_msgSend_addObject_(v194, v200, v199, v202);
          v196 = v203;
          goto LABEL_194;
        }

        if (objc_msgSend_timestamp(v199, v200, v201, v202) && objc_msgSend_timestamp(v196, v204, v205, v206))
        {
          v210 = objc_msgSend_timestamp(v203, v207, v208, v209);
          v214 = objc_msgSend_timestamp(v196, v211, v212, v213);
          objc_msgSend_timeIntervalSinceDate_(v210, v215, v214, v216);
          v218 = 1;
          if (v217 >= 0.0 && v217 < 3.0)
          {
            objc_msgSend_addObject_(v194, v191, v203, v193);
            if (v195 != objc_msgSend_count(v588, v219, v220, v221) - 1)
            {
              goto LABEL_193;
            }

            v218 = 0;
          }
        }

        else
        {
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
          }

          v225 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
          {
            v229 = objc_msgSend_timestamp(v203, v226, v227, v228);
            v233 = objc_msgSend_timestamp(v196, v230, v231, v232);
            *buf = 67240448;
            *&buf[4] = v229 == 0;
            *&buf[8] = 1026;
            *&buf[10] = v233 == 0;
            _os_log_impl(&dword_19B873000, v225, OS_LOG_TYPE_ERROR, "CLTSP,CLTripLocationFilter,makeSegmentsForRouteConstruction,timeSincePrev cannot be set,loc.timestamp is nil,%{public}d,prevLocation.timestamp is nil,%{public}d", buf, 0xEu);
          }

          v234 = sub_19B87DD40();
          if ((*(v234 + 160) & 0x80000000) == 0 || (*(v234 + 164) & 0x80000000) == 0 || (*(v234 + 168) & 0x80000000) == 0 || *(v234 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
            }

            v238 = qword_1EAFE46E8;
            v239 = objc_msgSend_timestamp(v203, v235, v236, v237);
            v243 = objc_msgSend_timestamp(v196, v240, v241, v242);
            LODWORD(v627[0]) = 67240448;
            DWORD1(v627[0]) = v239 == 0;
            WORD4(v627[0]) = 1026;
            *(v627 + 10) = v243 == 0;
            v244 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v238, 16, "CLTSP,CLTripLocationFilter,makeSegmentsForRouteConstruction,timeSincePrev cannot be set,loc.timestamp is nil,%{public}d,prevLocation.timestamp is nil,%{public}d", v627, 14);
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v244);
            if (v244 != buf)
            {
              free(v244);
            }
          }

          v218 = 1;
        }

        if (!objc_msgSend_count(v194, v191, v192, v193))
        {
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
          }

          v255 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
          {
            v259 = *(a2 + 23);
            v260 = *a2;
            v261 = objc_msgSend_count(a7, v256, v257, v258);
            *buf = 136446466;
            if (v259 >= 0)
            {
              v262 = a2;
            }

            else
            {
              v262 = v260;
            }

            *&buf[4] = v262;
            *&buf[12] = 2050;
            *&buf[14] = v261;
            _os_log_impl(&dword_19B873000, v255, OS_LOG_TYPE_ERROR, "CLTSP,MI,unexpected,location chunk empty,id,%{public}s,sparseCount,%{public}lu", buf, 0x16u);
          }

          v263 = sub_19B87DD40();
          if ((*(v263 + 160) & 0x80000000) == 0 || (*(v263 + 164) & 0x80000000) == 0 || (*(v263 + 168) & 0x80000000) == 0 || *(v263 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
            }

            v267 = qword_1EAFE46E8;
            v268 = *(a2 + 23);
            v269 = *a2;
            v270 = objc_msgSend_count(a7, v264, v265, v266);
            LODWORD(v627[0]) = 136446466;
            if (v268 >= 0)
            {
              v271 = a2;
            }

            else
            {
              v271 = v269;
            }

            *(v627 + 4) = v271;
            WORD6(v627[0]) = 2050;
            *(v627 + 14) = v270;
            v272 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v267, 16, "CLTSP,MI,unexpected,location chunk empty,id,%{public}s,sparseCount,%{public}lu", v627, 22);
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v272);
            if (v272 != buf)
            {
              free(v272);
            }
          }

LABEL_193:
          v196 = v203;
          goto LABEL_194;
        }

        v245 = a9[1];
        v591[0] = *a9;
        v591[1] = &v245->__vftable;
        if (v245)
        {
          atomic_fetch_add_explicit(&v245->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_19B9E4F38(a1, a2, a5, v194, &v603, &v617, v591);
        if (v245)
        {
          sub_19B8750F8(v245);
        }

        objc_msgSend_removeAllObjects(v194, v246, v247, v248);
        objc_msgSend_addObject_(v194, v249, v203, v250);
        isGPSLocationType = objc_msgSend_isGPSLocationType(v203, v251, v252, v253);
        if ((v218 & isGPSLocationType) == 1)
        {
          if (v195 != objc_msgSend_count(v588, v191, v192, v193) - 1)
          {
            goto LABEL_193;
          }
        }

        else if (isGPSLocationType)
        {
          goto LABEL_193;
        }

        v196 = v203;
        if (objc_msgSend_count(v194, v191, v192, v193))
        {
          v273 = a9[1];
          v590[0] = *a9;
          v590[1] = &v273->__vftable;
          if (v273)
          {
            atomic_fetch_add_explicit(&v273->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_19B9E4F38(a1, a2, a5, v194, &v603, &v617, v590);
          if (v273)
          {
            sub_19B8750F8(v273);
          }

          objc_msgSend_removeAllObjects(v194, v274, v275, v276);
          v196 = 0;
        }
      }

      else
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v222 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v222, OS_LOG_TYPE_ERROR, "CLTSP,CLTripLocationFilter,makeSegmentsForRouteConstruction,loc is nil", buf, 2u);
        }

        v223 = sub_19B87DD40();
        if ((*(v223 + 160) & 0x80000000) == 0 || (*(v223 + 164) & 0x80000000) == 0 || (*(v223 + 168) & 0x80000000) == 0 || *(v223 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
          }

          LOWORD(v627[0]) = 0;
          v224 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,CLTripLocationFilter,makeSegmentsForRouteConstruction,loc is nil", v627, 2);
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v224);
          if (v224 != buf)
          {
            free(v224);
          }
        }
      }

LABEL_194:
      ++v195;
    }
  }

  v14 = *a10;
  v15 = v578;
  if (*a10)
  {
    v16 = objc_msgSend_mutableCopy(a7, a2, a3, a4);
    v17 = a9[1];
    v611 = *a9;
    v612 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_19B99C3DC(v14, a2, 1, v10, v16, &v611);
    if (v612)
    {
      sub_19B8750F8(v612);
    }

    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    if (sub_19B99F500(qword_1EAFE5B10, a2))
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EA10);
      }

      v19 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_INFO, "CLTSP,CLTripSegmentMapIntegratorSparse,processingTime exceeded max allowed,after generateSnapCandidates", buf, 2u);
      }

      v20 = sub_19B87DD40();
      if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EA10);
        }

        LOWORD(v627[0]) = 0;
        v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLTSP,CLTripSegmentMapIntegratorSparse,processingTime exceeded max allowed,after generateSnapCandidates", v627, 2);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }

      v22 = 0;
      goto LABEL_449;
    }

    v609 = 0u;
    v610 = 0u;
    v607 = 0u;
    v608 = 0u;
    v337 = objc_msgSend_countByEnumeratingWithState_objects_count_(a7, v18, &v607, v650, 16);
    if (v337)
    {
      v580 = 0;
      v338 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
      v574 = *v608;
      do
      {
        v339 = 0;
        v572 = v337;
        do
        {
          if (*v608 != v574)
          {
            objc_enumerationMutation(a7);
          }

          v340 = *(*(&v607 + 1) + 8 * v339);
          if (v340)
          {
            if (v340 == objc_msgSend_objectAtIndexedSubscript_(a7, v335, 0, v336))
            {
              v344 = *a10;
              v345 = objc_msgSend_timestamp(v340, v341, v342, v343);
              objc_msgSend_timeIntervalSinceReferenceDate(v345, v346, v347, v348);
              sub_19B9A27FC(v344, &v605, v349);
              if (v605)
              {
                v623 = 0;
                v622 = 0;
                v624 = 0;
                sub_19B8EAB68(&v622, &v605);
                v350 = a1[3].f64[0];
                if (*&v350 >= *&a1[3].f64[1])
                {
                  v354 = sub_19B9A2EF8(v15, &v622);
                }

                else
                {
                  sub_19B9A2EA4(v15, &v622);
                  v354 = (*&v350 + 24);
                }

                v358 = v340;
                v575 = v339;
                *&a1[3].f64[0] = v354;
                Object = objc_msgSend_firstObject(a8, v351, v352, v353);
                v363 = objc_msgSend_timestamp(Object, v360, v361, v362);
                objc_msgSend_timeIntervalSinceReferenceDate(v363, v364, v365, v366);
                v368 = v367;
                do
                {
                  v369 = *(v605 + 16);
                  if (v369 <= v368)
                  {
                    break;
                  }

                  sub_19B9A27FC(*a10, &v603, v369);
                  v370 = v603;
                  if (v603)
                  {
                    v620 = 0uLL;
                    v621 = 0;
                    sub_19B8EAB68(&v620, &v603);
                    v372 = *&a1[2].f64[1];
                    v371 = *&a1[3].f64[0];
                    v373 = *&a1[3].f64[1];
                    if (v371 >= v373)
                    {
                      v377 = 1 - 0x5555555555555555 * ((v371 - v372) >> 3);
                      if (v377 <= 0xAAAAAAAAAAAAAAALL)
                      {
                        v378 = 0xAAAAAAAAAAAAAAABLL * ((v373 - v372) >> 3);
                        if (2 * v378 > v377)
                        {
                          v377 = 2 * v378;
                        }

                        if (v378 >= 0x555555555555555)
                        {
                          v379 = 0xAAAAAAAAAAAAAAALL;
                        }

                        else
                        {
                          v379 = v377;
                        }

                        *&v627[2] = v15;
                        if (v379)
                        {
                          sub_19B9A3170(v15, v379);
                        }

                        memset(v627, 0, 32);
                        *v653 = v15;
                        sub_19B9A3170(v15, 1uLL);
                      }

                      sub_19B8B8A40();
                    }

                    if (v372 == v371)
                    {
                      sub_19B9A2EA4(v15, &v620);
                    }

                    else
                    {
                      sub_19B9A3988(v15, *&a1[2].f64[1], v371, (v372 + 3));
                      v374 = 24;
                      if (v372 > &v620 || *&a1[3].f64[0] <= &v620)
                      {
                        v374 = 0;
                      }

                      v375 = (&v620 + v374);
                      if (v372 != v375)
                      {
                        v376 = 8;
                        if (v372 <= &v620 && *&a1[3].f64[0] > &v620)
                        {
                          v376 = 32;
                        }

                        sub_19B9A3250(v372, *v375, *(&v620 + v376), (*(&v620 + v376) - *v375) >> 4);
                      }
                    }

                    v380 = v603;
                    if (*(&v603 + 1))
                    {
                      atomic_fetch_add_explicit((*(&v603 + 1) + 8), 1uLL, memory_order_relaxed);
                    }

                    v381 = *(&v605 + 1);
                    v605 = v380;
                    if (v381)
                    {
                      sub_19B8750F8(v381);
                    }

                    if (*(v338 + 215) != -1)
                    {
                      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                    }

                    v382 = qword_1EAFE46E8;
                    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
                    {
                      v383 = *(v605 + 16);
                      *buf = 134349312;
                      *&buf[4] = v368;
                      *&buf[12] = 2050;
                      *&buf[14] = v383;
                      _os_log_impl(&dword_19B873000, v382, OS_LOG_TYPE_DEBUG, "CLTSP,makeSegmentsForRouteConstruction,prior snap added,firstUpsampledTime,%{public}.1lf,snapTime,%{public}.1lf", buf, 0x16u);
                    }

                    v384 = sub_19B87DD40();
                    if (*(v384 + 160) > 1 || *(v384 + 164) > 1 || *(v384 + 168) > 1 || *(v384 + 152))
                    {
                      bzero(buf, 0x65CuLL);
                      if (*(v338 + 215) != -1)
                      {
                        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                      }

                      v385 = *(v605 + 16);
                      LODWORD(v627[0]) = 134349312;
                      *(v627 + 4) = v368;
                      WORD6(v627[0]) = 2050;
                      *(v627 + 14) = v385;
                      v386 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,makeSegmentsForRouteConstruction,prior snap added,firstUpsampledTime,%{public}.1lf,snapTime,%{public}.1lf", v627, 22);
                      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v386);
                      if (v386 != buf)
                      {
                        free(v386);
                      }
                    }

                    *buf = &v620;
                    sub_19B8F0E84(buf);
                  }

                  if (*(&v603 + 1))
                  {
                    sub_19B8750F8(*(&v603 + 1));
                  }
                }

                while (v370);
                *buf = &v622;
                sub_19B8F0E84(buf);
                v339 = v575;
                v340 = v358;
                v337 = v572;
              }

              if (*(&v605 + 1))
              {
                sub_19B8750F8(*(&v605 + 1));
              }
            }

            if ((objc_msgSend_isGPSLocationType(v340, v341, v342, v343) & 1) != 0 || (objc_msgSend_isWiFiLocationType(v340, v335, v387, v336) & 1) != 0 || objc_msgSend_isLoiLocationType(v340, v335, v387, v336))
            {
              v388 = *a10;
              v389 = objc_msgSend_timestamp(v340, v335, v387, v336);
              objc_msgSend_timeIntervalSinceReferenceDate(v389, v390, v391, v392);
              sub_19B9A271C(v388, &v620, v393);
              if (!v580 || v340 == objc_msgSend_lastObject(a7, v335, v394, v336) || (objc_msgSend_distanceFromLocation_(v340, v335, v580, v336), v395 >= 10.0))
              {
                if (v620)
                {
                  v623 = 0;
                  v622 = 0;
                  v624 = 0;
                  sub_19B8EAB68(&v622, &v620);
                  v396 = a1[3].f64[0];
                  if (*&v396 >= *&a1[3].f64[1])
                  {
                    v397 = sub_19B9A2EF8(v15, &v622);
                  }

                  else
                  {
                    sub_19B9A2EA4(v15, &v622);
                    v397 = (*&v396 + 24);
                  }

                  *&a1[3].f64[0] = v397;
                  if (*(v338 + 215) != -1)
                  {
                    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                  }

                  v398 = qword_1EAFE46E8;
                  v576 = v339;
                  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
                  {
                    v581 = v398;
                    v402 = objc_msgSend_isGPSLocationType(v340, v399, v400, v401);
                    v406 = "wifi";
                    if (v402)
                    {
                      v406 = "gps";
                    }

                    v570 = v406;
                    if (*(a2 + 23) >= 0)
                    {
                      v407 = a2;
                    }

                    else
                    {
                      v407 = *a2;
                    }

                    v408 = objc_msgSend_timestamp(v340, v403, v404, v405);
                    objc_msgSend_timeIntervalSinceReferenceDate(v408, v409, v410, v411);
                    v413 = v412;
                    objc_msgSend_latitude(v340, v414, v415, v416);
                    v418 = v417;
                    objc_msgSend_longitude(v340, v419, v420, v421);
                    v423 = v422;
                    objc_msgSend_course(v340, v424, v425, v426);
                    v428 = v427;
                    v429 = *(v620 + 24);
                    v430 = *(v620 + 32);
                    v431 = *(v620 + 40);
                    objc_msgSend_horizontalAccuracy(v340, v432, v433, v434);
                    v436 = v435;
                    objc_msgSend_courseAccuracy(v340, v437, v438, v439);
                    v441 = v440;
                    v442 = *(v620 + 48);
                    v443 = *(v620 + 56);
                    v445 = *(v620 + 72);
                    v444 = *(v620 + 80);
                    v446 = *(v620 + 88);
                    v450 = objc_msgSend_locType(v340, v447, v448, v449);
                    *buf = 136450563;
                    *&buf[4] = v570;
                    *&buf[12] = 2082;
                    *&buf[14] = v407;
                    *&buf[22] = 2050;
                    v652 = v413;
                    *v653 = 2053;
                    *&v653[2] = v418;
                    v654 = 2053;
                    *v655 = v423;
                    *&v655[8] = 2049;
                    v656 = v428;
                    v657 = 2053;
                    v658 = v429;
                    v659 = 2053;
                    v660 = v430;
                    v661 = 2049;
                    v662 = v431;
                    v663 = 2049;
                    v664 = v436;
                    v665 = 2049;
                    *v666 = v441;
                    *&v666[8] = 2050;
                    v667 = v442;
                    v668 = 2050;
                    v669 = v443;
                    v670 = 2050;
                    v671 = v444;
                    v672 = 2050;
                    v673 = v445;
                    v674 = 2050;
                    v675 = v446;
                    v676 = 1026;
                    v677 = 1;
                    v678 = 1026;
                    v679 = v450;
                    _os_log_impl(&dword_19B873000, v581, OS_LOG_TYPE_DEBUG, "CLTSP,MI,%{public}sLocation,filtered,1,id,%{public}s,time,%{public}.3lf,rawLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{private}.3lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCourse,%{private}.3lf,hunc,%{private}.3lf,cunc,%{private}.3lf,projection,%{public}.8lf,score,%{public}.12lf,dE,%{public}.2lf,dN,%{public}.2lf,dCourse,%{public}.2lf,mode,%{public}d,type,%{public}d", buf, 0xAEu);
                    v15 = v578;
                    v337 = v572;
                    v338 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
                    v339 = v576;
                  }

                  v451 = sub_19B87DD40();
                  if (*(v451 + 160) > 1 || *(v451 + 164) > 1 || *(v451 + 168) > 1 || *(v451 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (*(v338 + 215) != -1)
                    {
                      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                    }

                    v582 = qword_1EAFE46E8;
                    v455 = objc_msgSend_isGPSLocationType(v340, v452, v453, v454);
                    v459 = "wifi";
                    if (v455)
                    {
                      v459 = "gps";
                    }

                    v571 = v459;
                    if (*(a2 + 23) >= 0)
                    {
                      v460 = a2;
                    }

                    else
                    {
                      v460 = *a2;
                    }

                    v461 = objc_msgSend_timestamp(v340, v456, v457, v458);
                    objc_msgSend_timeIntervalSinceReferenceDate(v461, v462, v463, v464);
                    v466 = v465;
                    objc_msgSend_latitude(v340, v467, v468, v469);
                    v471 = v470;
                    objc_msgSend_longitude(v340, v472, v473, v474);
                    v476 = v475;
                    objc_msgSend_course(v340, v477, v478, v479);
                    v481 = v480;
                    v482 = *(v620 + 24);
                    v483 = *(v620 + 32);
                    v484 = *(v620 + 40);
                    objc_msgSend_horizontalAccuracy(v340, v485, v486, v487);
                    v489 = v488;
                    objc_msgSend_courseAccuracy(v340, v490, v491, v492);
                    v494 = v493;
                    v496 = *(v620 + 48);
                    v495 = *(v620 + 56);
                    v497 = *(v620 + 72);
                    v498 = *(v620 + 80);
                    v499 = *(v620 + 88);
                    v503 = objc_msgSend_locType(v340, v500, v501, v502);
                    LODWORD(v627[0]) = 136450563;
                    *(v627 + 4) = v571;
                    WORD6(v627[0]) = 2082;
                    *(v627 + 14) = v460;
                    WORD3(v627[1]) = 2050;
                    *(&v627[1] + 1) = v466;
                    LOWORD(v627[2]) = 2053;
                    *(&v627[2] + 2) = v471;
                    WORD5(v627[2]) = 2053;
                    *(&v627[2] + 12) = v476;
                    WORD2(v627[3]) = 2049;
                    *(&v627[3] + 6) = v481;
                    HIWORD(v627[3]) = 2053;
                    v628 = v482;
                    v629 = 2053;
                    v630 = v483;
                    v631 = 2049;
                    v632 = v484;
                    v633 = 2049;
                    v634 = v489;
                    v635 = 2049;
                    *v636 = v494;
                    *&v636[8] = 2050;
                    v637 = v496;
                    v638 = 2050;
                    v639 = v495;
                    v640 = 2050;
                    v641 = v498;
                    v642 = 2050;
                    v643 = v497;
                    v644 = 2050;
                    v645 = v499;
                    v646 = 1026;
                    v647 = 1;
                    v648 = 1026;
                    v649 = v503;
                    v504 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v582, 2, "CLTSP,MI,%{public}sLocation,filtered,1,id,%{public}s,time,%{public}.3lf,rawLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{private}.3lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCourse,%{private}.3lf,hunc,%{private}.3lf,cunc,%{private}.3lf,projection,%{public}.8lf,score,%{public}.12lf,dE,%{public}.2lf,dN,%{public}.2lf,dCourse,%{public}.2lf,mode,%{public}d,type,%{public}d", v627, 174);
                    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v504);
                    v15 = v578;
                    v337 = v572;
                    v338 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
                    v339 = v576;
                    if (v504 != buf)
                    {
                      free(v504);
                    }
                  }

                  *buf = &v622;
                  sub_19B8F0E84(buf);
                  v580 = v340;
                }
              }

              if (*(&v620 + 1))
              {
                sub_19B8750F8(*(&v620 + 1));
              }
            }
          }

          else
          {
            if (*(v338 + 215) != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
            }

            v355 = qword_1EAFE46E8;
            if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_19B873000, v355, OS_LOG_TYPE_ERROR, "CLTSP,MI,makeSegmentsForRouteConstruction,loc is unexpectedly nil", buf, 2u);
            }

            v356 = sub_19B87DD40();
            if ((*(v356 + 160) & 0x80000000) == 0 || (*(v356 + 164) & 0x80000000) == 0 || (*(v356 + 168) & 0x80000000) == 0 || *(v356 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (*(v338 + 215) != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
              }

              LOWORD(v627[0]) = 0;
              v357 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,MI,makeSegmentsForRouteConstruction,loc is unexpectedly nil", v627, 2);
              sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v357);
              if (v357 != buf)
              {
                free(v357);
              }
            }
          }

          ++v339;
        }

        while (v339 != v337);
        v505 = objc_msgSend_countByEnumeratingWithState_objects_count_(a7, v335, &v607, v650, 16);
        v337 = v505;
      }

      while (v505);
    }
  }

  if (a6)
  {
    v506 = *a9;
    v507 = a9[1];
    if (v507)
    {
      atomic_fetch_add_explicit(&v507->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_19B9E2EF8(&v613, a2, a8, v506, v507, 1);
    if (v507)
    {
      sub_19B8750F8(v507);
    }
  }

  v508 = *&a1[2].f64[1];
  v509 = a1[3].f64[0];
  if (v617 == v618)
  {
    goto LABEL_448;
  }

  v623 = 0;
  v622 = 0;
  v624 = 0;
  v510 = *&v509 - v508;
  if (*&v509 == v508)
  {
    v552 = 0;
    v511 = 0;
    goto LABEL_428;
  }

  v577 = *&v509 - v508;
  v511 = 0;
  v512 = -1.0;
  v583 = v509;
  do
  {
    v513 = v508[1];
    if (*v508 == v513)
    {
      goto LABEL_425;
    }

    if (v512 >= 0.0 || (v514 = *(v513 - 16)) == 0)
    {
      obja = v508;
      v515 = v617;
      v587 = v618;
      if (v617 != v618)
      {
        v516 = *(**v508 + 16);
        do
        {
          v620 = 0uLL;
          v621 = 0;
          v518 = *v515;
          v517 = v515[1];
          if (*v515 != v517)
          {
            do
            {
              v519 = *v518;
              if (*v518 && *v519)
              {
                v520 = *(v519 + 16);
                if (v520 > v512 && v520 < v516)
                {
                  if (qword_1EAFE46B8 != -1)
                  {
                    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                  }

                  v522 = qword_1EAFE46E8;
                  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
                  {
                    if (*(a2 + 23) >= 0)
                    {
                      v523 = a2;
                    }

                    else
                    {
                      v523 = *a2;
                    }

                    v524 = *(*v518 + 16);
                    v525 = *(*v518 + 24);
                    v526 = *(*v518 + 32);
                    v527 = *(*v518 + 40);
                    v528 = *(*v518 + 48);
                    v529 = *(*v518 + 56);
                    v531 = *(*v518 + 72);
                    v530 = *(*v518 + 80);
                    v532 = *(*v518 + 88);
                    v533 = *(*v518 + 64);
                    v534 = *(**v518 + 20);
                    *buf = 136449027;
                    *&buf[4] = v523;
                    *&buf[12] = 2050;
                    *&buf[14] = v524;
                    *&buf[22] = 2053;
                    v652 = v525;
                    *v653 = 2053;
                    *&v653[2] = v526;
                    v654 = 2049;
                    *v655 = v527;
                    *&v655[8] = 2050;
                    v656 = v528;
                    v657 = 2050;
                    v658 = v529;
                    v659 = 2050;
                    v660 = v530;
                    v661 = 2050;
                    v662 = v531;
                    v663 = 2050;
                    v664 = v532;
                    v665 = 1026;
                    *v666 = v533;
                    *&v666[4] = 1026;
                    *&v666[6] = v534;
                    _os_log_impl(&dword_19B873000, v522, OS_LOG_TYPE_DEBUG, "CLTSP,MI,snappedIILocation,id,%{public}s,time,%{public}.3lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{private}.3lf,projection,%{public}.8lf,score,%{public}.12lf,dE,%{public}.2lf,dN,%{public}.2lf,dCourse,%{public}.2lf,valid,%{public}d,frc,%{public}d", buf, 0x72u);
                  }

                  v535 = sub_19B87DD40();
                  if (*(v535 + 160) > 1 || *(v535 + 164) > 1 || *(v535 + 168) > 1 || *(v535 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE46B8 != -1)
                    {
                      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                    }

                    if (*(a2 + 23) >= 0)
                    {
                      v536 = a2;
                    }

                    else
                    {
                      v536 = *a2;
                    }

                    v537 = *(*v518 + 16);
                    v538 = *(*v518 + 24);
                    v539 = *(*v518 + 32);
                    v540 = *(*v518 + 40);
                    v541 = *(*v518 + 48);
                    v542 = *(*v518 + 56);
                    v544 = *(*v518 + 72);
                    v543 = *(*v518 + 80);
                    v545 = *(*v518 + 88);
                    v546 = *(*v518 + 64);
                    v547 = *(**v518 + 20);
                    LODWORD(v627[0]) = 136449027;
                    *(v627 + 4) = v536;
                    WORD6(v627[0]) = 2050;
                    *(v627 + 14) = v537;
                    WORD3(v627[1]) = 2053;
                    *(&v627[1] + 1) = v538;
                    LOWORD(v627[2]) = 2053;
                    *(&v627[2] + 2) = v539;
                    WORD5(v627[2]) = 2049;
                    *(&v627[2] + 12) = v540;
                    WORD2(v627[3]) = 2050;
                    *(&v627[3] + 6) = v541;
                    HIWORD(v627[3]) = 2050;
                    v628 = v542;
                    v629 = 2050;
                    v630 = v543;
                    v631 = 2050;
                    v632 = v544;
                    v633 = 2050;
                    v634 = v545;
                    v635 = 1026;
                    *v636 = v546;
                    *&v636[4] = 1026;
                    *&v636[6] = v547;
                    v548 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,MI,snappedIILocation,id,%{public}s,time,%{public}.3lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{private}.3lf,projection,%{public}.8lf,score,%{public}.12lf,dE,%{public}.2lf,dN,%{public}.2lf,dCourse,%{public}.2lf,valid,%{public}d,frc,%{public}d", v627, 114);
                    sub_19B885924("Generic", 1, 0, 2, "void CLTripLocationFilter::insertUpsampledFilteredSnap(const std::string &, const std::vector<std::vector<CLGeoMapSnapDataPtr>> &)", "CoreLocation: %s\n", v548);
                    if (v548 != buf)
                    {
                      free(v548);
                    }
                  }

                  sub_19B8EAB68(&v620, v518);
                }
              }

              ++v518;
            }

            while (v518 != v517);
            if (v620 != *(&v620 + 1))
            {
              v512 = *(*(*(&v620 + 1) - 16) + 16);
              v549 = v623;
              if (v623 >= v624)
              {
                v550 = sub_19B9A2EF8(&v622, &v620);
              }

              else
              {
                *v623 = 0;
                v549[1] = 0;
                v549[2] = 0;
                sub_19B9A3028(v549, v620, *(&v620 + 1), (*(&v620 + 1) - v620) >> 4);
                v550 = v549 + 3;
              }

              v623 = v550;
            }
          }

          *buf = &v620;
          sub_19B8F0E84(buf);
          v515 += 3;
        }

        while (v515 != v587);
        v511 = v623;
      }

      v509 = v583;
      v508 = obja;
      if (v511 < v624)
      {
        goto LABEL_420;
      }

      v551 = sub_19B9A2EF8(&v622, obja);
LABEL_423:
      v511 = v551;
      goto LABEL_424;
    }

    v512 = *(v514 + 16);
    if (v511 >= v624)
    {
      v551 = sub_19B9A2EF8(&v622, v508);
      goto LABEL_423;
    }

LABEL_420:
    *v511 = 0;
    v511[1] = 0;
    v511[2] = 0;
    sub_19B9A3028(v511, *v508, v508[1], (v508[1] - *v508) >> 4);
    v511 += 3;
LABEL_424:
    v623 = v511;
LABEL_425:
    v508 += 3;
  }

  while (v508 != *&v509);
  v552 = v622;
  v510 = v577;
LABEL_428:
  if (v578 != &v622)
  {
    v553 = v511 - v552;
    if (v511 - v552 > v510)
    {
      v554 = *&a1[3].f64[1];
      v555 = a1[2].f64[1];
      if (v554 - *&v555 < v553)
      {
        v556 = 0xAAAAAAAAAAAAAAABLL * (v553 >> 3);
        if (v555 != 0.0)
        {
          v557 = a1[3].f64[0];
          v558 = *&a1[2].f64[1];
          if (*&v557 != *&v555)
          {
            do
            {
              *&v557 -= 24;
              *buf = v557;
              sub_19B8F0E84(buf);
            }

            while (*&v557 != *&v555);
            v558 = *v578;
          }

          a1[3].f64[0] = v555;
          operator delete(v558);
          v554 = 0;
          *v578 = 0;
          v578[1] = 0;
          v578[2] = 0;
        }

        if (v556 <= 0xAAAAAAAAAAAAAAALL)
        {
          v559 = 0xAAAAAAAAAAAAAAABLL * (v554 >> 3);
          v560 = 2 * v559;
          if (2 * v559 <= v556)
          {
            v560 = v556;
          }

          if (v559 >= 0x555555555555555)
          {
            v561 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v561 = v560;
          }

          if (v561 <= 0xAAAAAAAAAAAAAAALL)
          {
            sub_19B9A3170(v578, v561);
          }
        }

        sub_19B8B8A40();
      }

      v562 = *&a1[3].f64[0] - *&v555;
      if (v562 >= v553)
      {
        sub_19B9A3BB4(v627, v552, v511, *&a1[2].f64[1]);
        v564 = v566;
        v567 = a1[3].f64[0];
        while (*&v567 != v564)
        {
          *&v567 -= 24;
          *buf = v567;
          sub_19B8F0E84(buf);
        }
      }

      else
      {
        v563 = sub_19B9A3BB4(v627, v552, (v552 + v562), *&a1[2].f64[1]);
        v564 = sub_19B9A3A08(v578, v563, v511, *&a1[3].f64[0]);
      }

      *&a1[3].f64[0] = v564;
    }
  }

  *buf = &v622;
  sub_19B8F1C84(buf);
  v508 = *&a1[2].f64[1];
  v509 = a1[3].f64[0];
LABEL_448:
  v22 = v508 != *&v509;
LABEL_449:
  *buf = &v617;
  sub_19B8F1C84(buf);
  return v22;
}

void sub_19B9E9B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  *(a36 + 48) = v36;
  STACK[0x4E0] = &STACK[0x298];
  sub_19B8F1C84(&STACK[0x4E0]);
  STACK[0x298] = a13;
  sub_19B8F1C84(&STACK[0x298]);
  _Unwind_Resume(a1);
}

void *sub_19B9E9E38(uint64_t a1, const char *a2, void *a3, int a4)
{
  v337 = *MEMORY[0x1E69E9840];
  v256 = 0u;
  v257 = 0u;
  v258 = 0u;
  v259 = 0u;
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, a2, &v256, v336, 16);
  v245 = result;
  if (result)
  {
    v244 = *v257;
    do
    {
      v9 = 0;
      do
      {
        if (*v257 != v244)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v256 + 1) + 8 * v9);
        v11 = objc_msgSend_timestamp(v10, v6, v7, v8);
        objc_msgSend_timeIntervalSinceReferenceDate(v11, v12, v13, v14);
        v19 = v18;
        for (i = *(a1 + 48); ; i += 2)
        {
          if (i == *(a1 + 56))
          {
            v21 = 0;
            v22 = 0;
            goto LABEL_12;
          }

          v21 = *i;
          if (*i)
          {
            if (vabdd_f64(v21[2], v18) < 0.001)
            {
              break;
            }
          }
        }

        v22 = i[1];
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

LABEL_12:
        objc_msgSend_latitude(v10, v15, v16, v17);
        v250 = v23;
        objc_msgSend_longitude(v10, v24, v25, v26);
        v249 = v27;
        objc_msgSend_course(v10, v28, v29, v30);
        v248 = v31;
        objc_msgSend_latitude(v10, v32, v33, v34);
        v253 = v35;
        objc_msgSend_longitude(v10, v36, v37, v38);
        v251 = v39;
        objc_msgSend_course(v10, v40, v41, v42);
        v46 = v45;
        if (v21 && *(v21 + 64) == 1)
        {
          v47 = [CLTripSegmentLocation alloc];
          v51 = objc_msgSend_timestamp(v10, v48, v49, v50);
          v252 = v21[4];
          v254 = v21[3];
          objc_msgSend_horizontalAccuracy(v10, v52, v53, v54);
          v56 = v55;
          v57 = v21[5];
          objc_msgSend_courseAccuracy(v10, v58, v59, v60);
          v62 = v61;
          objc_msgSend_speed(v10, v63, v64, v65);
          v67 = v66;
          objc_msgSend_speedAccuracy(v10, v68, v69, v70);
          v72 = v71;
          objc_msgSend_altitude(v10, v73, v74, v75);
          v77 = v76;
          objc_msgSend_altitudeAccuracy(v10, v78, v79, v80);
          v82 = v81;
          v86 = objc_msgSend_locType(v10, v83, v84, v85);
          v90 = objc_msgSend_referenceFrame(v10, v87, v88, v89);
          v92 = objc_msgSend_initWithTime_latitude_longitude_horizontalAccuracy_course_courseAccuracy_speed_speedAccuracy_altitude_altitudeAccuracy_locType_referenceFrame_(v47, v91, v51, v86, v90, v254, v252, v56, v57, v62, v67, v72, v77, v82);
          v96 = v92;
          v251 = *(v21 + 4);
          v253 = *(v21 + 3);
          v46 = *(v21 + 5);
          v97 = *v21;
          if (*v21)
          {
            v247 = *(v97 + 8);
            objc_msgSend_setMapsRoadClass_(v92, v93, *(v97 + 20), v95);
            objc_msgSend_setMapsFormOfWay_(v96, v98, *(*v21 + 24), v99);
            objc_msgSend_setCLRoadID_(v96, v100, *(*v21 + 8), v101);
          }

          else
          {
            v247 = 0;
          }

          objc_msgSend_rawLatitude(v10, v93, v94, v95);
          v103 = v102;
          objc_msgSend_rawLongitude(v10, v104, v105, v106);
          v108 = v107;
          v112 = objc_msgSend_rawReferenceFrame(v10, v109, v110, v111);
          objc_msgSend_setRawLatitude_longitude_referenceFrame_(v96, v113, v112, v114, v103, v108);
          if (objc_msgSend_isOriginalLocationType(v10, v115, v116, v117))
          {
            objc_msgSend_setLocationReconstructionType_(v96, v118, 1, v120);
          }

          if (objc_msgSend_isInertialIntegrated(v10, v118, v119, v120))
          {
            objc_msgSend_setLocationReconstructionType_(v96, v121, 2, v123);
          }

          if (objc_msgSend_isLinearInterpolated(v10, v121, v122, v123))
          {
            objc_msgSend_setLocationReconstructionType_(v96, v124, 4, v126);
          }

          if (objc_msgSend_isOriginalLocationType(v96, v124, v125, v126) && objc_msgSend_isGPSLocationType(v96, v127, v128, v129) && (objc_msgSend_altitudeAccuracy(v96, v127, v128, v129), v130 > 0.0) || !*v21)
          {
            objc_msgSend_altitudeAccuracy(v96, v127, v128, v129);
            v137 = v136;
            v133 = 0.0;
            v138 = v137 > 0.0;
            v134 = 250.0;
            if (!v138)
            {
              objc_msgSend_updateAltitude_andAltitudeAccuracy_(v96, v131, v135, v132, 0.0, 250.0);
            }
          }

          else
          {
            objc_msgSend_updateAltitude_andAltitudeAccuracy_(v96, v127, v128, v129, v21[6] * *(*v21 + 128) + *(*v21 + 120) * (1.0 - v21[6]), 50.0);
          }

          objc_msgSend_setLocationReconstructionType_(v96, v131, 8, v132, v133, v134);
          objc_msgSend_setSignalEnvironmentType_(v96, v139, *(v21 + 42), v140);
          v144 = objc_msgSend_locTypeStart(v10, v141, v142, v143);
          objc_msgSend_setStartLocationType_(v96, v145, v144, v146);
          v150 = objc_msgSend_locTypeStop(v10, v147, v148, v149);
          objc_msgSend_setStopLocationType_(v96, v151, v150, v152);
          objc_msgSend_addObject_(*(a1 + 40), v153, v96, v154);
        }

        else
        {
          objc_msgSend_addObject_(*(a1 + 40), v43, v10, v44);
          v247 = 0;
        }

        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v155 = qword_1EAFE46E8;
        v159 = v22;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
        {
          objc_msgSend_horizontalAccuracy(v10, v156, v157, v158);
          v161 = v160;
          objc_msgSend_courseAccuracy(v10, v162, v163, v164);
          v166 = v165;
          objc_msgSend_speed(v10, v167, v168, v169);
          v171 = v170;
          objc_msgSend_speedAccuracy(v10, v172, v173, v174);
          v176 = v175;
          objc_msgSend_altitude(v10, v177, v178, v179);
          v181 = v180;
          objc_msgSend_altitudeAccuracy(v10, v182, v183, v184);
          v186 = v185;
          v190 = objc_msgSend_locType(v10, v187, v188, v189);
          v191 = a2[23];
          v192 = *a2;
          v196 = objc_msgSend_reconstructionType(v10, v193, v194, v195);
          *buf = 134353667;
          v197 = a2;
          if (v191 < 0)
          {
            v197 = v192;
          }

          v299 = v19;
          v300 = 2053;
          v301 = v253;
          v302 = 2053;
          v303 = v251;
          v304 = 2050;
          v305 = v46;
          v306 = 2053;
          v307 = v250;
          v308 = 2053;
          v309 = v249;
          v310 = 2050;
          v311 = v248;
          v312 = 2050;
          v313 = v161;
          v314 = 2050;
          v315 = v166;
          v316 = 2050;
          v317 = v171;
          v318 = 2050;
          v319 = v176;
          v320 = 2050;
          v321 = v181;
          v322 = 2050;
          v323 = v186;
          v324 = 2049;
          v325 = v247;
          v326 = 1026;
          v327 = v21 != 0;
          v328 = 1026;
          v329 = v190;
          v330 = 2082;
          v331 = v197;
          v332 = 1026;
          v333 = a4;
          v334 = 1026;
          v335 = v196;
          _os_log_impl(&dword_19B873000, v155, OS_LOG_TYPE_DEBUG, "CLTSP,MI,snapSolution,time,%{public}.1lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCourse,%{public}.2lf,rawLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{public}.2lf,hunc,%{public}.2lf,cunc,%{public}.2lf,speed,%{public}.2lf,sunc,%{public}.2lf,alt,%{public}.2lf,vunc,%{public}.2lf,roadID,%{private}lld,snapValid,%{public}d,type,%{public}d,id,%{public}s,mode,%{public}d,reconstructedType,%{public}d", buf, 0xB0u);
          v22 = v159;
        }

        v198 = sub_19B87DD40();
        if (*(v198 + 160) > 1 || *(v198 + 164) > 1 || *(v198 + 168) > 1 || *(v198 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
          }

          v202 = qword_1EAFE46E8;
          objc_msgSend_horizontalAccuracy(v10, v199, v200, v201);
          v204 = v203;
          objc_msgSend_courseAccuracy(v10, v205, v206, v207);
          v209 = v208;
          objc_msgSend_speed(v10, v210, v211, v212);
          v214 = v213;
          objc_msgSend_speedAccuracy(v10, v215, v216, v217);
          v219 = v218;
          objc_msgSend_altitude(v10, v220, v221, v222);
          v224 = v223;
          objc_msgSend_altitudeAccuracy(v10, v225, v226, v227);
          v229 = v228;
          v230 = v21 != 0;
          v234 = objc_msgSend_locType(v10, v231, v232, v233);
          v235 = a2[23];
          v236 = *a2;
          v240 = objc_msgSend_reconstructionType(v10, v237, v238, v239);
          v260 = 134353667;
          v241 = a2;
          if (v235 < 0)
          {
            v241 = v236;
          }

          v261 = v19;
          v262 = 2053;
          v263 = v253;
          v264 = 2053;
          v265 = v251;
          v266 = 2050;
          v267 = v46;
          v268 = 2053;
          v269 = v250;
          v270 = 2053;
          v271 = v249;
          v272 = 2050;
          v273 = v248;
          v274 = 2050;
          v275 = v204;
          v276 = 2050;
          v277 = v209;
          v278 = 2050;
          v279 = v214;
          v280 = 2050;
          v281 = v219;
          v282 = 2050;
          v283 = v224;
          v284 = 2050;
          v285 = v229;
          v286 = 2049;
          v287 = v247;
          v288 = 1026;
          v289 = v230;
          v290 = 1026;
          v291 = v234;
          v292 = 2082;
          v293 = v241;
          v294 = 1026;
          v295 = a4;
          v296 = 1026;
          v297 = v240;
          v242 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v202, 2, "CLTSP,MI,snapSolution,time,%{public}.1lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCourse,%{public}.2lf,rawLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{public}.2lf,hunc,%{public}.2lf,cunc,%{public}.2lf,speed,%{public}.2lf,sunc,%{public}.2lf,alt,%{public}.2lf,vunc,%{public}.2lf,roadID,%{private}lld,snapValid,%{public}d,type,%{public}d,id,%{public}s,mode,%{public}d,reconstructedType,%{public}d", &v260, 176);
          sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentMapIntegrationBase::updateOutputLocations(const std::string &, NSArray<CLTripSegmentLocation *> * _Nonnull, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v242);
          v22 = v159;
          if (v242 != buf)
          {
            free(v242);
          }
        }

        if (v22)
        {
          sub_19B8750F8(v22);
        }

        v9 = v9 + 1;
      }

      while (v9 != v245);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v6, &v256, v336, 16);
      v245 = result;
    }

    while (result);
  }

  return result;
}

void sub_19B9EA6AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9EA700(uint64_t a1, double ***a2, uint64_t *a3, const void **a4, double a5, double a6, double a7)
{
  v91 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v11 = a2[1];
  if (v10 == v11 || a5 > 1.0 || ((v13 = *a3, v12 = a3[1], a5 >= 0.0) ? (v14 = v13 == v12) : (v14 = 1), v14))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v54 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v55 = (a2[1] - *a2) >> 4;
      v56 = (a3[1] - *a3) >> 4;
      *buf = 67240704;
      *&buf[4] = v55;
      v89 = 1026;
      *v90 = v56;
      *&v90[4] = 2050;
      *&v90[6] = a5;
      _os_log_impl(&dword_19B873000, v54, OS_LOG_TYPE_ERROR, "CLTSP,MI,snapLocationsOnRoads,invalid input,inputLocations,%{public}d,roadVectors,%{public}d,firstSnapProjection,%{public}.3lf", buf, 0x18u);
    }

    v57 = sub_19B87DD40();
    if ((*(v57 + 160) & 0x80000000) == 0 || (*(v57 + 164) & 0x80000000) == 0 || (*(v57 + 168) & 0x80000000) == 0 || *(v57 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v58 = (a2[1] - *a2) >> 4;
      v59 = (a3[1] - *a3) >> 4;
      LODWORD(v81) = 67240704;
      DWORD1(v81) = v58;
      WORD4(v81) = 1026;
      *(&v81 + 10) = v59;
      HIWORD(v81) = 2050;
      v82 = a5;
      v60 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,MI,snapLocationsOnRoads,invalid input,inputLocations,%{public}d,roadVectors,%{public}d,firstSnapProjection,%{public}.3lf", &v81, 24);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegrationBase::snapLocationsOnRoads(const std::vector<CLGeoMapLocationPtr> &, const std::vector<CLRouteRoadPtr> &, const double, std::vector<CLGeoMapSnapDataPtr> &, double, double) const", "CoreLocation: %s\n", v60);
      if (v60 != buf)
      {
        free(v60);
      }
    }

    return 0;
  }

  v82 = 0.0;
  v83 = 0;
  v81 = xmmword_19BA89490;
  v84 = 0x3FF0000000000000;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  if (&v85 != a2)
  {
    sub_19B9F1EC8(&v85, v10, v11, (v11 - v10) >> 4);
    v13 = *a3;
    v12 = a3[1];
    v10 = *a2;
    v11 = a2[1];
  }

  v16 = 1;
  if (v11 == v10)
  {
    goto LABEL_122;
  }

  v17 = 0;
  v18 = (v12 - v13) >> 4;
  while (1)
  {
    v19 = &v10[16 * v17];
    if (*v19)
    {
      if (*v10)
      {
        break;
      }
    }

    ++v17;
    v10 = *a2;
    if (v17 >= (a2[1] - *a2) >> 4)
    {
      v16 = 1;
      goto LABEL_122;
    }
  }

  v20 = v85;
  for (i = 0.0; v20 != v86; v20 += 2)
  {
    v22 = *v20;
    if (*v20)
    {
      if (*v22 > **v10 && *v22 <= **v19)
      {
        i = i + v22[10];
      }
    }
  }

  v24 = 0;
  v25 = i * a6;
  v26 = a5;
  do
  {
    v27 = *a3;
    if (v25 <= 0.0)
    {
      goto LABEL_84;
    }

    v28 = *(v27 + 16 * v24);
    v30 = *v28;
    v29 = v28[1];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v28 = *(*a3 + 16 * v24);
    }

    v31 = sub_19B96D7D8(v28, 1);
    v32 = v31;
    if (((a3[1] - *a3) >> 4) - 1 > v24)
    {
      v31 = sub_19B96D7D8(*(*a3 + 16 * v24 + 16), 0);
    }

    v33 = 0.0;
    if (a7 != 0.0)
    {
      v34 = fmod(v32 + -90.0 + 90.0 - v31 + 180.0, 360.0);
      if (v34 < 0.0)
      {
        v34 = v34 + 360.0;
      }

      if (v34 > 180.0)
      {
        v34 = v34 + -360.0;
      }

      v35 = fabs(v34);
      if (v35 > 5.0 && v35 < 180.0)
      {
        v33 = a7 / tan(v34 * 0.0174532925 * 0.5);
      }
    }

    if (v30)
    {
      sub_19B9F5AA8(v30);
      v36 = v30[5];
      v37 = 1.0 - v26;
      if (!*(*(*a3 + 16 * v24) + 24))
      {
        v37 = v26;
      }

      v38 = v36 * v37;
      if (v25 <= v36 * v37 - v33 + 0.000000001)
      {
        v41 = 12;
        if (v29)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v39 = v24 + 1;
        if (v24 + 1 >= v18)
        {
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
          }

          v47 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
          {
            v48 = **v19;
            *buf = 67240448;
            *&buf[4] = v18;
            v89 = 2050;
            *v90 = v48;
            _os_log_impl(&dword_19B873000, v47, OS_LOG_TYPE_ERROR, "CLTSP,currentRoadIndex over candidate road size,count,%{public}d,locationTime,%{public}.3lf", buf, 0x12u);
          }

          v49 = sub_19B87DD40();
          if ((*(v49 + 160) & 0x80000000) == 0 || (*(v49 + 164) & 0x80000000) == 0 || (*(v49 + 168) & 0x80000000) == 0 || *(v49 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
            }

            v50 = **v19;
            __y = 67240448;
            __y_4 = v18;
            v77 = 2050;
            v78 = v50;
            v51 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,currentRoadIndex over candidate road size,count,%{public}d,locationTime,%{public}.3lf", &__y, 18);
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegrationBase::snapLocationsOnRoads(const std::vector<CLGeoMapLocationPtr> &, const std::vector<CLRouteRoadPtr> &, const double, std::vector<CLGeoMapSnapDataPtr> &, double, double) const", "CoreLocation: %s\n", v51);
            if (v51 != buf)
            {
              free(v51);
            }
          }

          sub_19B9F5AA8(v30);
          v41 = 0;
          if (*(*(*a3 + 16 * v24) + 24))
          {
            v26 = 1.0 - v33 / v30[5];
          }

          else
          {
            v26 = v33 / v30[5];
          }

          v25 = 0.0;
          if (v29)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v40 = **(*a3 + 16 * v39);
          sub_19B9F5AA8(v40);
          v41 = 0;
          v25 = v25 - v38;
          if (*(*(*a3 + 16 * v39) + 24))
          {
            v26 = v33 / v40[5];
          }

          else
          {
            v26 = 1.0 - v33 / v40[5];
          }

          ++v24;
          if (v29)
          {
            goto LABEL_57;
          }
        }
      }
    }

    else
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v42 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        v43 = **v19;
        *buf = 67240448;
        *&buf[4] = v18;
        v89 = 2050;
        *v90 = v43;
        _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_ERROR, "CLTSP,MI,road pointer invalid,count,%{public}d,locationTime,%{public}.3lf", buf, 0x12u);
      }

      v44 = sub_19B87DD40();
      if ((*(v44 + 160) & 0x80000000) == 0 || (*(v44 + 164) & 0x80000000) == 0 || (*(v44 + 168) & 0x80000000) == 0 || *(v44 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v45 = **v19;
        __y = 67240448;
        __y_4 = v18;
        v77 = 2050;
        v78 = v45;
        v46 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,MI,road pointer invalid,count,%{public}d,locationTime,%{public}.3lf", &__y, 18);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegrationBase::snapLocationsOnRoads(const std::vector<CLGeoMapLocationPtr> &, const std::vector<CLRouteRoadPtr> &, const double, std::vector<CLGeoMapSnapDataPtr> &, double, double) const", "CoreLocation: %s\n", v46);
        if (v46 != buf)
        {
          free(v46);
        }
      }

      v41 = 1;
      if (v29)
      {
LABEL_57:
        sub_19B8750F8(v29);
      }
    }
  }

  while (!v41);
  if (v41 != 12)
  {
    goto LABEL_125;
  }

  v27 = *a3;
LABEL_84:
  v52 = *(v27 + 16 * v24);
  v53 = *v52;
  if (*v52)
  {
    sub_19B9F5AA8(*v52);
    if (v53[5] != 0.0)
    {
      sub_19B9F5AA8(**(*a3 + 16 * v24));
      operator new();
    }
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
  }

  v61 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    v62 = **v19;
    v63 = *(*a3 + 16 * v24);
    v64 = *v63;
    if (*v63)
    {
      sub_19B9F5AA8(*v63);
      v65 = *(v64 + 5);
    }

    else
    {
      v65 = 0xBFF0000000000000;
    }

    *buf = 67240704;
    *&buf[4] = v18;
    v89 = 2050;
    *v90 = v62;
    *&v90[8] = 2050;
    *&v90[10] = v65;
    _os_log_impl(&dword_19B873000, v61, OS_LOG_TYPE_ERROR, "CLTSP,MI,road pointer invalid or zero length,count,%{public}d,locationTime,%{public}.3lf,roadLength,%{public}.2lf", buf, 0x1Cu);
  }

  v66 = sub_19B87DD40();
  if ((*(v66 + 160) & 0x80000000) != 0 && (*(v66 + 164) & 0x80000000) != 0 && (*(v66 + 168) & 0x80000000) != 0 && !*(v66 + 152))
  {
LABEL_125:
    v16 = 0;
    goto LABEL_122;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
  }

  v67 = qword_1EAFE46E8;
  v68 = **v19;
  v69 = *(*a3 + 16 * v24);
  v70 = *v69;
  if (*v69)
  {
    sub_19B9F5AA8(*v69);
    v71 = *(v70 + 5);
  }

  else
  {
    v71 = 0xBFF0000000000000;
  }

  __y = 67240704;
  __y_4 = v18;
  v77 = 2050;
  v78 = v68;
  v79 = 2050;
  v80 = v71;
  v72 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v67, 16, "CLTSP,MI,road pointer invalid or zero length,count,%{public}d,locationTime,%{public}.3lf,roadLength,%{public}.2lf", &__y, 28);
  sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegrationBase::snapLocationsOnRoads(const std::vector<CLGeoMapLocationPtr> &, const std::vector<CLRouteRoadPtr> &, const double, std::vector<CLGeoMapSnapDataPtr> &, double, double) const", "CoreLocation: %s\n", v72);
  if (v72 != buf)
  {
    free(v72);
  }

  v16 = 0;
LABEL_122:
  *buf = &v85;
  sub_19B8F0E84(buf);
  return v16;
}

void sub_19B9EC1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33)
{
  a33 = a14;
  sub_19B8F0E84(&a33);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9EC27C(uint64_t a1, void *a2, uint32_t *a3, uint64_t a4, uint64_t *a5, void *a6, void *a7)
{
  v229 = *MEMORY[0x1E69E9840];
  if (*(a1 + 136))
  {
    v14 = mach_continuous_time();
    v15 = sub_19B994BF4(v14);
    v19 = objc_msgSend_UUIDString(a2, v16, v17, v18);
    v23 = objc_msgSend_UTF8String(v19, v20, v21, v22);
    sub_19B8759E8(__p, v23);
    if (!objc_msgSend_count(a6, v24, v25, v26))
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v45 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
      {
        v49 = objc_msgSend_count(a7, v46, v47, v48);
        v50 = __p;
        if (v210 < 0)
        {
          v50 = __p[0];
        }

        *buf = 134349314;
        v221 = v49;
        v222 = 2082;
        *v223 = v50;
        _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_INFO, "CLTSP,MI,integrateWithMapData,empty sparseLocations,upsampledLocations,%{public}lu,id,%{public}s", buf, 0x16u);
      }

      v51 = sub_19B87DD40();
      if (*(v51 + 160) <= 1 && *(v51 + 164) <= 1 && *(v51 + 168) <= 1 && !*(v51 + 152))
      {
        goto LABEL_72;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v55 = qword_1EAFE46E8;
      v56 = objc_msgSend_count(a7, v52, v53, v54);
      v57 = __p;
      if (v210 < 0)
      {
        v57 = __p[0];
      }

      v211 = 134349314;
      v212 = v56;
      v213 = 2082;
      *v214 = v57;
      v40 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v55, 1, "CLTSP,MI,integrateWithMapData,empty sparseLocations,upsampledLocations,%{public}lu,id,%{public}s", &v211, 22);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::integrateWithMapData(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, std::shared_ptr<CLTripSegmentRouteBuilder> &, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v40);
      goto LABEL_53;
    }

    sub_19B8E5AC0(*(a1 + 136));
    v27 = *(a1 + 176);
    v28 = *(a1 + 177);
    v29 = *(a1 + 144);
    v208[0] = *(a1 + 136);
    v208[1] = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v30 = *a5;
    v31 = a5[1];
    v207[0] = v30;
    v207[1] = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v34 = sub_19B9E61E4((a1 + 184), __p, a3, a4, v27, v28, a6, a7, v208, v207);
    if (v31)
    {
      sub_19B8750F8(v31);
    }

    if (v29)
    {
      sub_19B8750F8(v29);
    }

    if (!v34)
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v58 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
      {
        v62 = objc_msgSend_count(a6, v59, v60, v61);
        v66 = objc_msgSend_count(a7, v63, v64, v65);
        v67 = __p;
        if (v210 < 0)
        {
          v67 = __p[0];
        }

        v68 = *(a1 + 136);
        v69 = *(v68 + 116);
        v70 = *(v68 + 320);
        LODWORD(v68) = *(v68 + 152);
        *buf = 134350338;
        v221 = v62;
        v222 = 2050;
        *v223 = v66;
        *&v223[8] = 2082;
        *v224 = v67;
        *&v224[8] = 1026;
        *v225 = v69;
        *&v225[4] = 2050;
        *&v225[6] = v70;
        LOWORD(v226) = 1026;
        *(&v226 + 2) = v68;
        _os_log_impl(&dword_19B873000, v58, OS_LOG_TYPE_INFO, "CLTSP,MI,integrateWithMapData,segments not available for reconstruction,sparseLocations,%{public}lu,upsampledLocations,%{public}lu,id,%{public}s,mapsAPICalls,%{public}d,connectionBufferUsedCount,%{public}lu,geometry,%{public}d", buf, 0x36u);
      }

      v71 = sub_19B87DD40();
      if (*(v71 + 160) > 1 || *(v71 + 164) > 1 || *(v71 + 168) > 1 || *(v71 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v75 = qword_1EAFE46E8;
        v76 = objc_msgSend_count(a6, v72, v73, v74);
        v80 = objc_msgSend_count(a7, v77, v78, v79);
        v81 = __p;
        if (v210 < 0)
        {
          v81 = __p[0];
        }

        v82 = *(a1 + 136);
        v83 = *(v82 + 116);
        v84 = *(v82 + 320);
        LODWORD(v82) = *(v82 + 152);
        v211 = 134350338;
        v212 = v76;
        v213 = 2050;
        *v214 = v80;
        *&v214[8] = 2082;
        *v215 = v81;
        *&v215[8] = 1026;
        *v216 = v83;
        *&v216[4] = 2050;
        *&v216[6] = v84;
        LOWORD(v217) = 1026;
        *(&v217 + 2) = v82;
        v85 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v75, 1, "CLTSP,MI,integrateWithMapData,segments not available for reconstruction,sparseLocations,%{public}lu,upsampledLocations,%{public}lu,id,%{public}s,mapsAPICalls,%{public}d,connectionBufferUsedCount,%{public}lu,geometry,%{public}d", &v211, 54);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::integrateWithMapData(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, std::shared_ptr<CLTripSegmentRouteBuilder> &, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v85);
        if (v85 != buf)
        {
          free(v85);
        }
      }

      sub_19B8E5C90(*(a1 + 136));
      goto LABEL_72;
    }

    p_cb = &OBJC_PROTOCOL___CLHarvesterServerInterface.cb;
    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    if (sub_19B9EDDA0(qword_1EAFE5B10, a2, v32, v33))
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EA10);
      }

      v38 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_INFO, "CLTSP,CLTripSegmentMapIntegratorSparse,processingTime exceeded max allowed,after makeSegmentsForRouteConstruction", buf, 2u);
      }

      v39 = sub_19B87DD40();
      if (*(v39 + 160) <= 1 && *(v39 + 164) <= 1 && *(v39 + 168) <= 1 && !*(v39 + 152))
      {
        goto LABEL_72;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EA10);
      }

      LOWORD(v211) = 0;
      v40 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLTSP,CLTripSegmentMapIntegratorSparse,processingTime exceeded max allowed,after makeSegmentsForRouteConstruction", &v211, 2);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::integrateWithMapData(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, std::shared_ptr<CLTripSegmentRouteBuilder> &, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v40);
LABEL_53:
      if (v40 != buf)
      {
        free(v40);
      }

LABEL_72:
      v44 = 0;
LABEL_73:
      if (v210 < 0)
      {
        operator delete(__p[0]);
      }

      return v44;
    }

    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    sub_19B9EDE20(qword_1EAFE5B10, a2, v36, v37, &v205);
    if (v205)
    {
      *(v205 + 72) -= 1431655765 * ((*(a1 + 232) - *(a1 + 224)) >> 3);
    }

    v90 = *(*(a1 + 136) + 88);
    if (v90)
    {
      objc_msgSend_clearRoadTiles(v90, v87, v88, v89);
    }

    if (sub_19B948DC0(a1 + 72, a7) && **(a1 + 112))
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v91 = qword_1EAFE46E8;
      v204 = a3;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
      {
        v96 = *(a1 + 224);
        v95 = *(a1 + 232);
        v97 = objc_msgSend_count(a6, v92, v93, v94);
        v101 = objc_msgSend_count(a7, v98, v99, v100);
        v102 = __p;
        *buf = 134349826;
        if (v210 < 0)
        {
          v102 = __p[0];
        }

        v221 = 0xAAAAAAAAAAAAAAABLL * ((v95 - v96) >> 3);
        v222 = 2050;
        *v223 = v97;
        *&v223[8] = 2050;
        *v224 = v101;
        *&v224[8] = 2082;
        *v225 = v102;
        _os_log_impl(&dword_19B873000, v91, OS_LOG_TYPE_DEFAULT, "CLTSP,MI,integrateWithMapData,segments,%{public}lu,sparseLocations,%{public}lu,upsampledLocations,%{public}lu,id,%{public}s", buf, 0x2Au);
        p_cb = &OBJC_PROTOCOL___CLHarvesterServerInterface.cb;
      }

      v103 = sub_19B87DD40();
      if (*(v103 + 160) > 1 || *(v103 + 164) > 1 || *(v103 + 168) > 1 || *(v103 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v110 = qword_1EAFE46E8;
        v112 = *(a1 + 224);
        v111 = *(a1 + 232);
        v113 = objc_msgSend_count(a6, v107, v108, v109);
        v117 = objc_msgSend_count(a7, v114, v115, v116);
        v118 = __p;
        v211 = 134349826;
        if (v210 < 0)
        {
          v118 = __p[0];
        }

        v212 = 0xAAAAAAAAAAAAAAABLL * ((v111 - v112) >> 3);
        v213 = 2050;
        *v214 = v113;
        *&v214[8] = 2050;
        *v215 = v117;
        *&v215[8] = 2082;
        *v216 = v118;
        v119 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v110, 0, "CLTSP,MI,integrateWithMapData,segments,%{public}lu,sparseLocations,%{public}lu,upsampledLocations,%{public}lu,id,%{public}s", &v211, 42);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::integrateWithMapData(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, std::shared_ptr<CLTripSegmentRouteBuilder> &, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v119);
        if (v119 != buf)
        {
          free(v119);
        }
      }

      v120 = *(a1 + 224);
      v121 = *(a1 + 232);
      if (0xAAAAAAAAAAAAAAABLL * ((v121 - v120) >> 3) >= 2)
      {
        v202 = a7;
        v122 = 1;
        v123 = 1;
        while (1)
        {
          if (*(p_cb + 352) != -1)
          {
            dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
          }

          if (sub_19B9EDDA0(qword_1EAFE5B10, a2, v105, v106))
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EA10);
            }

            v169 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
            {
              *buf = 67240192;
              LODWORD(v221) = v123;
              _os_log_impl(&dword_19B873000, v169, OS_LOG_TYPE_INFO, "CLTSP,CLTripSegmentMapIntegratorSparse,processingTime exceeded max allowed,constructSegment loop,iteration,%{public}d", buf, 8u);
            }

            v170 = sub_19B87DD40();
            if (*(v170 + 160) > 1 || *(v170 + 164) > 1 || *(v170 + 168) > 1 || *(v170 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EA10);
              }

              v211 = 67240192;
              LODWORD(v212) = v123;
              v171 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLTSP,CLTripSegmentMapIntegratorSparse,processingTime exceeded max allowed,constructSegment loop,iteration,%{public}d", &v211, 8);
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::integrateWithMapData(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, std::shared_ptr<CLTripSegmentRouteBuilder> &, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v171);
              if (v171 != buf)
              {
                free(v171);
              }
            }

            goto LABEL_198;
          }

          a3 = p_cb;
          v124 = *(a1 + 224);
          v125 = v124 + 24 * v123;
          v126 = (v125 - 24);
          v127 = v124 + 24 * v122;
          if (*(v125 - 24) == *(v125 - 16) || *v127 == *(v127 + 8))
          {
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
            }

            v129 = qword_1EAFE46E8;
            if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
            {
              v130 = (*(v125 - 16) - *(v125 - 24)) >> 4;
              v131 = (*(v127 + 8) - *v127) >> 4;
              *buf = 134349312;
              v221 = v130;
              v222 = 2050;
              *v223 = v131;
              _os_log_impl(&dword_19B873000, v129, OS_LOG_TYPE_ERROR, "CLTSP,MI,constructSegment,invalid size,start,%{public}lu,end,%{public}lu", buf, 0x16u);
            }

            v132 = sub_19B87DD40();
            if ((*(v132 + 160) & 0x80000000) == 0 || (*(v132 + 164) & 0x80000000) == 0 || (*(v132 + 168) & 0x80000000) == 0 || *(v132 + 152))
            {
              bzero(buf, 0x65CuLL);
              LODWORD(a3) = v204;
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
              }

              v133 = (*(v125 - 16) - *(v125 - 24)) >> 4;
              v134 = (*(v127 + 8) - *v127) >> 4;
              v211 = 134349312;
              v212 = v133;
              v213 = 2050;
              *v214 = v134;
              v135 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,MI,constructSegment,invalid size,start,%{public}lu,end,%{public}lu", &v211, 22);
              sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegratorSparse::integrateWithMapData(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, std::shared_ptr<CLTripSegmentRouteBuilder> &, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v135);
              if (v135 == buf)
              {
                goto LABEL_165;
              }

LABEL_164:
              free(v135);
              goto LABEL_165;
            }
          }

          else
          {
            v128 = -1 - 0x5555555555555555 * ((*(a1 + 232) - v124) >> 3);
            if (!sub_19B9EDEA0(a1, a2, v126, v127, v128 == v122, v204))
            {
              if (v204 != 1)
              {
                goto LABEL_150;
              }

              v203 = v123 + 1;
              if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 232) - *(a1 + 224)) >> 3) <= v203)
              {
                goto LABEL_150;
              }

              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
              }

              log = qword_1EAFE46E8;
              if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
              {
                v136 = __p;
                if (v210 < 0)
                {
                  v136 = __p[0];
                }

                *buf = 136446210;
                v221 = v136;
                _os_log_impl(&dword_19B873000, log, OS_LOG_TYPE_DEBUG, "CLTSP,MI,integrateWithMapDataSparse,errorReported,trying with next snap,%{public}s", buf, 0xCu);
              }

              v137 = sub_19B87DD40();
              if (*(v137 + 160) > 1 || *(v137 + 164) > 1 || *(v137 + 168) > 1 || *(v137 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                }

                v138 = __p;
                if (v210 < 0)
                {
                  v138 = __p[0];
                }

                v211 = 136446210;
                v212 = v138;
                v139 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,MI,integrateWithMapDataSparse,errorReported,trying with next snap,%{public}s", &v211, 12);
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::integrateWithMapData(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, std::shared_ptr<CLTripSegmentRouteBuilder> &, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v139);
                if (v139 != buf)
                {
                  free(v139);
                }
              }

              if (!sub_19B9EDEA0(a1, a2, v126, (*(a1 + 224) + 24 * v203), v128 == v122, 1))
              {
LABEL_150:
                sub_19B9F22AC((a1 + 48), *(a1 + 56), *(v125 - 24), *(v125 - 16), (*(v125 - 16) - *(v125 - 24)) >> 4);
                sub_19B9F22AC((a1 + 48), *(a1 + 56), *v127, *(v127 + 8), (*(v127 + 8) - *v127) >> 4);
                p_cb = a3;
                LODWORD(a3) = v204;
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                }

                v143 = qword_1EAFE46E8;
                if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
                {
                  v144 = __p;
                  if (v210 < 0)
                  {
                    v144 = __p[0];
                  }

                  *buf = 136446210;
                  v221 = v144;
                  _os_log_impl(&dword_19B873000, v143, OS_LOG_TYPE_ERROR, "CLTSP,MI,integrateWithMapDataSparse,errorReported,id,%{public}s", buf, 0xCu);
                }

                v145 = sub_19B87DD40();
                if ((*(v145 + 160) & 0x80000000) != 0 && (*(v145 + 164) & 0x80000000) != 0 && (*(v145 + 168) & 0x80000000) != 0 && !*(v145 + 152))
                {
                  goto LABEL_165;
                }

                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                }

                v146 = __p;
                if (v210 < 0)
                {
                  v146 = __p[0];
                }

                v211 = 136446210;
                v212 = v146;
                v135 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,MI,integrateWithMapDataSparse,errorReported,id,%{public}s", &v211, 12);
                sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegratorSparse::integrateWithMapData(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, std::shared_ptr<CLTripSegmentRouteBuilder> &, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v135);
                if (v135 == buf)
                {
                  goto LABEL_165;
                }

                goto LABEL_164;
              }

              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
              }

              v140 = qword_1EAFE46E8;
              if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
              {
                v141 = __p;
                if (v210 < 0)
                {
                  v141 = __p[0];
                }

                *buf = 136446466;
                v221 = v141;
                v222 = 1026;
                *v223 = v123 + 1;
                _os_log_impl(&dword_19B873000, v140, OS_LOG_TYPE_DEBUG, "CLTSP,MI,integrateWithMapDataSparse,constructSegment with next snap success,%{public}s,nextIndex,%{public}d", buf, 0x12u);
              }

              v142 = sub_19B87DD40();
              p_cb = a3;
              if (*(v142 + 160) > 1 || *(v142 + 164) > 1 || *(v142 + 168) > 1 || *(v142 + 152))
              {
                bzero(buf, 0x65CuLL);
                LODWORD(a3) = 1;
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                }

                v147 = __p;
                if (v210 < 0)
                {
                  v147 = __p[0];
                }

                v211 = 136446466;
                v212 = v147;
                v213 = 1026;
                *v214 = v123 + 1;
                v148 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,MI,integrateWithMapDataSparse,constructSegment with next snap success,%{public}s,nextIndex,%{public}d", &v211, 18);
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::integrateWithMapData(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, std::shared_ptr<CLTripSegmentRouteBuilder> &, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v148);
                if (v148 != buf)
                {
                  free(v148);
                }

                ++v123;
                goto LABEL_165;
              }

              ++v123;
            }
          }

          LODWORD(a3) = v204;
LABEL_165:
          v122 = ++v123;
          v120 = *(a1 + 224);
          v121 = *(a1 + 232);
          if (0xAAAAAAAAAAAAAAABLL * ((v121 - v120) >> 3) <= v123)
          {
            a7 = v202;
            break;
          }
        }
      }

      if (v121 - v120 == 24)
      {
        sub_19B9F22AC((a1 + 48), *(a1 + 56), *v120, v120[1], (v120[1] - *v120) >> 4);
      }

      v172 = *(a1 + 136);
      if (*(v172 + 88))
      {
        objc_msgSend_clearRoadTiles(*(v172 + 88), v104, v105, v106);
        v172 = *(a1 + 136);
      }

      sub_19B8E5C90(v172);
      sub_19B9E9E38(a1, __p, a7, a3);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v173 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
      {
        v177 = 0.0;
        if (v15 >= 0.0)
        {
          v178 = mach_continuous_time();
          v177 = vabdd_f64(sub_19B994BF4(v178), v15) * 1000.0;
        }

        v179 = objc_msgSend_count(a7, v174, v175, v176);
        v180 = (*(a1 + 56) - *(a1 + 48)) >> 4;
        v181 = __p;
        if (v210 < 0)
        {
          v181 = __p[0];
        }

        v182 = *(a1 + 136);
        v184 = *(v182 + 112);
        v183 = *(v182 + 116);
        v185 = *(v182 + 320);
        LODWORD(v182) = *(v182 + 152);
        *buf = 134350850;
        v221 = *&v177;
        v222 = 1026;
        *v223 = v179;
        *&v223[4] = 1026;
        *&v223[6] = v180;
        *v224 = 2082;
        *&v224[2] = v181;
        *v225 = 1026;
        *&v225[2] = v183;
        *&v225[6] = 1026;
        *&v225[8] = v184;
        *&v225[12] = 2050;
        v226 = v185;
        v227 = 1026;
        v228 = v182;
        _os_log_impl(&dword_19B873000, v173, OS_LOG_TYPE_DEFAULT, "CLTSP,MI,integrateWithMapDataSparse,timeTakenInMS,%{public}.3lf,inputLocations,%{public}d,snapLocations,%{public}d,id,%{public}s,mapsAPICalls,%{public}d,bufferCalls,%{public}d,connectionUsed,%{public}lu,geometry,%{public}d", buf, 0x3Eu);
      }

      v186 = sub_19B87DD40();
      if (*(v186 + 160) > 1 || *(v186 + 164) > 1 || *(v186 + 168) > 1 || *(v186 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v190 = qword_1EAFE46E8;
        v191 = 0.0;
        if (v15 >= 0.0)
        {
          v192 = mach_continuous_time();
          v191 = vabdd_f64(sub_19B994BF4(v192), v15) * 1000.0;
        }

        v193 = objc_msgSend_count(a7, v187, v188, v189);
        v194 = (*(a1 + 56) - *(a1 + 48)) >> 4;
        v195 = __p;
        if (v210 < 0)
        {
          v195 = __p[0];
        }

        v196 = *(a1 + 136);
        v198 = *(v196 + 112);
        v197 = *(v196 + 116);
        v199 = *(v196 + 320);
        LODWORD(v196) = *(v196 + 152);
        v211 = 134350850;
        v212 = *&v191;
        v213 = 1026;
        *v214 = v193;
        *&v214[4] = 1026;
        *&v214[6] = v194;
        *v215 = 2082;
        *&v215[2] = v195;
        *v216 = 1026;
        *&v216[2] = v197;
        *&v216[6] = 1026;
        *&v216[8] = v198;
        *&v216[12] = 2050;
        v217 = v199;
        v218 = 1026;
        v219 = v196;
        v200 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v190, 0, "CLTSP,MI,integrateWithMapDataSparse,timeTakenInMS,%{public}.3lf,inputLocations,%{public}d,snapLocations,%{public}d,id,%{public}s,mapsAPICalls,%{public}d,bufferCalls,%{public}d,connectionUsed,%{public}lu,geometry,%{public}d", &v211, 62);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::integrateWithMapData(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, std::shared_ptr<CLTripSegmentRouteBuilder> &, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v200);
        if (v200 != buf)
        {
          free(v200);
        }
      }

      sub_19B9E008C(*(a1 + 136));
      v44 = 1;
    }

    else
    {
      sub_19B9E9E38(a1, __p, a7, a3);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v149 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        v153 = 0.0;
        if (v15 >= 0.0)
        {
          v154 = mach_continuous_time();
          v153 = vabdd_f64(sub_19B994BF4(v154), v15) * 1000.0;
        }

        v155 = objc_msgSend_count(a7, v150, v151, v152);
        v156 = (*(a1 + 56) - *(a1 + 48)) >> 4;
        v157 = __p;
        if (v210 < 0)
        {
          v157 = __p[0];
        }

        *buf = 134349826;
        v221 = *&v153;
        v222 = 1026;
        *v223 = v155;
        *&v223[4] = 1026;
        *&v223[6] = v156;
        *v224 = 2082;
        *&v224[2] = v157;
        _os_log_impl(&dword_19B873000, v149, OS_LOG_TYPE_ERROR, "CLTSP,MI,integrateWithMapDataSparse failed, tripLocations count not be initialized,timeTakenInMS,%{public}.3lf,inputLocations,%{public}d,snapLocations,%{public}d,id,%{public}s", buf, 0x22u);
      }

      v158 = sub_19B87DD40();
      if ((*(v158 + 160) & 0x80000000) == 0 || (*(v158 + 164) & 0x80000000) == 0 || (*(v158 + 168) & 0x80000000) == 0 || *(v158 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v162 = qword_1EAFE46E8;
        v163 = 0.0;
        if (v15 >= 0.0)
        {
          v164 = mach_continuous_time();
          v163 = vabdd_f64(sub_19B994BF4(v164), v15) * 1000.0;
        }

        v165 = objc_msgSend_count(a7, v159, v160, v161);
        v166 = (*(a1 + 56) - *(a1 + 48)) >> 4;
        v167 = __p;
        if (v210 < 0)
        {
          v167 = __p[0];
        }

        v211 = 134349826;
        v212 = *&v163;
        v213 = 1026;
        *v214 = v165;
        *&v214[4] = 1026;
        *&v214[6] = v166;
        *v215 = 2082;
        *&v215[2] = v167;
        v168 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v162, 16, "CLTSP,MI,integrateWithMapDataSparse failed, tripLocations count not be initialized,timeTakenInMS,%{public}.3lf,inputLocations,%{public}d,snapLocations,%{public}d,id,%{public}s", &v211, 34);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegratorSparse::integrateWithMapData(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, std::shared_ptr<CLTripSegmentRouteBuilder> &, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v168);
        if (v168 != buf)
        {
          free(v168);
        }
      }

      sub_19B8E5C90(*(a1 + 136));
LABEL_198:
      v44 = 0;
    }

    if (v206)
    {
      sub_19B8750F8(v206);
    }

    goto LABEL_73;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
  }

  v41 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v41, OS_LOG_TYPE_ERROR, "CLTSP,MI,integrateWithMapData,geometry pointer is nullptr", buf, 2u);
  }

  v42 = sub_19B87DD40();
  if ((*(v42 + 160) & 0x80000000) == 0 || (*(v42 + 164) & 0x80000000) == 0 || (*(v42 + 168) & 0x80000000) == 0 || *(v42 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    LOWORD(v211) = 0;
    v43 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,MI,integrateWithMapData,geometry pointer is nullptr", &v211, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegratorSparse::integrateWithMapData(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, std::shared_ptr<CLTripSegmentRouteBuilder> &, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v43);
    if (v43 != buf)
    {
      free(v43);
    }
  }

  return 0;
}

void sub_19B9EDCD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a25)
  {
    sub_19B8750F8(a25);
  }

  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9EDDA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_UUIDString(a2, a2, a3, a4);
  v9 = objc_msgSend_UTF8String(v5, v6, v7, v8);
  sub_19B8759E8(__p, v9);
  v10 = sub_19B99F500(a1, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_19B9EDE04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9EDE20(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = objc_msgSend_UUIDString(a2, a2, a3, a4);
  v11 = objc_msgSend_UTF8String(v7, v8, v9, v10);
  sub_19B8759E8(__p, v11);
  sub_19B9F2000(a1, __p, a5);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19B9EDE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B9EDEA0(uint64_t a1, void *a2, uint64_t ***a3, uint64_t ***a4, int a5, uint64_t a6)
{
  v305 = *MEMORY[0x1E69E9840];
  v8 = a3[1];
  if (*a3 == v8 || *a4 == a4[1])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v31 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v32 = (a3[1] - *a3) >> 4;
      v33 = (a4[1] - *a4) >> 4;
      *buf = 134349312;
      *&buf[4] = v32;
      *&buf[12] = 2050;
      *&buf[14] = v33;
      _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_ERROR, "CLTSP,MI,constructSegment,invalid size,start,%{public}lu,end,%{public}lu", buf, 0x16u);
    }

    v34 = sub_19B87DD40();
    if ((*(v34 + 160) & 0x80000000) != 0 && (*(v34 + 164) & 0x80000000) != 0 && (*(v34 + 168) & 0x80000000) != 0 && !*(v34 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v35 = (a3[1] - *a3) >> 4;
    v36 = (a4[1] - *a4) >> 4;
    *v266 = 134349312;
    *&v266[4] = v35;
    *&v266[12] = 2050;
    *&v266[14] = v36;
    v37 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,MI,constructSegment,invalid size,start,%{public}lu,end,%{public}lu", v266, 22);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v37);
    goto LABEL_75;
  }

  v9 = *(v8 - 2);
  if (!v9 || (v10 = **a4) == 0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v38 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v39 = (a3[1] - *a3) >> 4;
      v40 = (a4[1] - *a4) >> 4;
      *buf = 134349312;
      *&buf[4] = v39;
      *&buf[12] = 2050;
      *&buf[14] = v40;
      _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_ERROR, "CLTSP,MI,constructSegment,null pointers,start,%{public}lu,end,%{public}lu", buf, 0x16u);
    }

    v41 = sub_19B87DD40();
    if ((*(v41 + 160) & 0x80000000) != 0 && (*(v41 + 164) & 0x80000000) != 0 && (*(v41 + 168) & 0x80000000) != 0 && !*(v41 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v42 = (a3[1] - *a3) >> 4;
    v43 = (a4[1] - *a4) >> 4;
    *v266 = 134349312;
    *&v266[4] = v42;
    *&v266[12] = 2050;
    *&v266[14] = v43;
    v37 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,MI,constructSegment,null pointers,start,%{public}lu,end,%{public}lu", v266, 22);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v37);
    goto LABEL_75;
  }

  v13 = *(v9 + 16);
  v14 = *(v10 + 2);
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
  }

  v15 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    *&buf[4] = v13;
    *&buf[12] = 2050;
    *&buf[14] = v14;
    _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_INFO, "CLTSP,MI,constructSegment,start,%{public}.3lf,end,%{public}.3lf", buf, 0x16u);
  }

  v16 = sub_19B87DD40();
  if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    *v266 = 134349312;
    *&v266[4] = v13;
    *&v266[12] = 2050;
    *&v266[14] = v14;
    v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,MI,constructSegment,start,%{public}.3lf,end,%{public}.3lf", v266, 22);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  v18 = a3[1];
  if (*a3 == v18 || (v19 = *a4, *a4 == a4[1]))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v44 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v13;
      _os_log_impl(&dword_19B873000, v44, OS_LOG_TYPE_ERROR, "CLTSP,MI,%{public}.1lf,start or stop snap road is empty", buf, 0xCu);
    }

    v45 = sub_19B87DD40();
    if ((*(v45 + 160) & 0x80000000) != 0 && (*(v45 + 164) & 0x80000000) != 0 && (*(v45 + 168) & 0x80000000) != 0 && !*(v45 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    *v266 = 134349056;
    *&v266[4] = v13;
    v37 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,MI,%{public}.1lf,start or stop snap road is empty", v266, 12);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v37);
LABEL_75:
    if (v37 != buf)
    {
      free(v37);
    }

    return 0;
  }

  v20 = *(v18 - 2);
  v21 = *(v18 - 1);
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = *a4;
  }

  v23 = *v19;
  v22 = v19[1];
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v218 = v22;
  if (*(v20 + 64) != 1 || v20[2] <= 0.0 || (v24 = *v20) == 0 || (v25 = v20[4], v26 = fabs(v20[3]), v26 < 0.00003) && fabs(v25) < 0.00003 || v25 < -180.0 || v26 > 90.0 || v25 > 180.0 || *(v23 + 64) != 1 || *(v23 + 2) <= 0.0 || (v47 = *v23) == 0 || (v48 = *(v23 + 4), v49 = fabs(*(v23 + 3)), v49 < 0.00003) && fabs(v48) < 0.00003 || v48 < -180.0 || v49 > 90.0 || v48 > 180.0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v27 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      *&buf[4] = v13;
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_DEFAULT, "CLTSP,MI,%{public}.1lf,start or destination snap is not valid. Skipping constructing this segment", buf, 0xCu);
    }

    v28 = sub_19B87DD40();
    if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      *v266 = 134349056;
      *&v266[4] = v13;
      v29 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLTSP,MI,%{public}.1lf,start or destination snap is not valid. Skipping constructing this segment", v266, 12);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v29);
      if (v29 != buf)
      {
        free(v29);
      }
    }

    v30 = 0;
    goto LABEL_41;
  }

  v216 = v23;
  v213 = v21;
  v50 = *(v24 + 144);
  v51 = 0.0;
  v52 = 0.0;
  v53 = 0.0;
  if (v50 != *(v24 + 136))
  {
    v52 = *(v50 - 16);
    v53 = *(v50 - 8);
  }

  v54 = *(v47 + 136);
  v55 = 0.0;
  if (*(v47 + 144) != v54)
  {
    v51 = *v54;
    v55 = v54[1];
  }

  sub_19BA0C01C(a1, v52, v53, v51, v55, 0.0);
  v59 = v58;
  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  sub_19B9EDE20(qword_1EAFE5B10, a2, v56, v57, &v252);
  if (!v252)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v64 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      v68 = objc_msgSend_UUIDString(a2, v65, v66, v67);
      v72 = objc_msgSend_UTF8String(v68, v69, v70, v71);
      sub_19B8759E8(buf, v72);
      v73 = v287 >= 0 ? buf : *buf;
      *v266 = 136446210;
      *&v266[4] = v73;
      _os_log_impl(&dword_19B873000, v64, OS_LOG_TYPE_DEFAULT, "CLTSP,constructSegment,tripID,%{public}s is not in CLTripSegmentSharedData", v266, 0xCu);
      if (SHIBYTE(v287) < 0)
      {
        operator delete(*buf);
      }
    }

    v74 = sub_19B87DD40();
    if (*(v74 + 160) > 1 || *(v74 + 164) > 1 || *(v74 + 168) > 1 || *(v74 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v78 = qword_1EAFE46E8;
      v79 = objc_msgSend_UUIDString(a2, v75, v76, v77);
      v83 = objc_msgSend_UTF8String(v79, v80, v81, v82);
      sub_19B8759E8(v266, v83);
      if ((v266[23] & 0x80u) == 0)
      {
        v84 = v266;
      }

      else
      {
        v84 = *v266;
      }

      LODWORD(v278) = 136446210;
      *(&v278 + 4) = v84;
      v85 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v78, 0, "CLTSP,constructSegment,tripID,%{public}s is not in CLTripSegmentSharedData", &v278, 12);
      if (v266[23] < 0)
      {
        operator delete(*v266);
      }

      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v85);
      if (v85 != buf)
      {
        free(v85);
      }
    }

    v30 = 0;
    goto LABEL_374;
  }

  ++*(v252 + 76);
  v281 = 0.0;
  v285 = 0;
  v278 = 0u;
  v279 = 0u;
  v280 = 0;
  v284 = 0;
  v283 = 0;
  v282 = *(a1 + 178);
  if (a6 == 2)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v60 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      v61 = *(*v20 + 144);
      if (v61 == *(*v20 + 136))
      {
        v62 = 0;
        v63 = 0;
      }

      else
      {
        v62 = *(v61 - 16);
        v63 = *(v61 - 8);
      }

      v102 = *(*v216 + 136);
      if (*(*v216 + 144) == v102)
      {
        v103 = 0;
        v104 = 0;
      }

      else
      {
        v103 = *v102;
        v104 = v102[1];
      }

      *buf = 134350593;
      *&buf[4] = v13;
      *&buf[12] = 2053;
      *&buf[14] = v62;
      v287 = 2053;
      v288 = v63;
      v289 = 2053;
      v290 = v103;
      v291 = 2053;
      v292 = v104;
      v293 = 2050;
      v294 = v59;
      v295 = 2050;
      v296 = v14;
      _os_log_impl(&dword_19B873000, v60, OS_LOG_TYPE_INFO, "CLTSP,MI,%{public}.3lf,constructing astar route between,startPoint,%{sensitive}.7lf,%{sensitive}.7lf,endPoint,%{sensitive}.7lf,%{sensitive}.7lf,distance,%{public}.3lf,endTime,%{public}.3lf", buf, 0x48u);
    }

    v108 = sub_19B87DD40();
    if (*(v108 + 160) > 1 || *(v108 + 164) > 1 || *(v108 + 168) > 1 || *(v108 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v111 = *(*v20 + 144);
      if (v111 == *(*v20 + 136))
      {
        v112 = 0;
        v113 = 0;
      }

      else
      {
        v112 = *(v111 - 16);
        v113 = *(v111 - 8);
      }

      v114 = *(*v216 + 136);
      if (*(*v216 + 144) == v114)
      {
        v115 = 0;
        v116 = 0;
      }

      else
      {
        v115 = *v114;
        v116 = v114[1];
      }

      *v266 = 134350593;
      *&v266[4] = v13;
      *&v266[12] = 2053;
      *&v266[14] = v112;
      *&v266[22] = 2053;
      v267 = v113;
      *v268 = 2053;
      *&v268[2] = v115;
      *&v268[10] = 2053;
      *&v268[12] = v116;
      *&v268[20] = 2050;
      *&v268[22] = v59;
      *&v268[30] = 2050;
      v269 = v14;
      v117 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,MI,%{public}.3lf,constructing astar route between,startPoint,%{sensitive}.7lf,%{sensitive}.7lf,endPoint,%{sensitive}.7lf,%{sensitive}.7lf,distance,%{public}.3lf,endTime,%{public}.3lf", v266, 72);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v117);
      if (v117 != buf)
      {
        free(v117);
      }
    }

    *buf = *(v216 + 3);
    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    sub_19B9F081C(qword_1EAFE5B10, a2, &v250, v109, v110);
    v124 = *(a1 + 144);
    v248 = *(a1 + 136);
    v249 = v124;
    if (v124)
    {
      atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v125 = sub_19B9A95C8(&v278, a1, &v250, v20, v216, &v248, buf, v13, v20[6], *(v216 + 6), v118, v119, v120, v121, v122, v123, 0.0, 0);
    if (v249)
    {
      sub_19B8750F8(v249);
    }

    if (v251)
    {
      sub_19B8750F8(v251);
    }

    if ((v125 & 1) == 0)
    {
      goto LABEL_189;
    }

    goto LABEL_305;
  }

  v86 = *v20;
  v87 = 53.0;
  if (*v20)
  {
    v88 = *(v86 + 20);
    if (v88 >= 4 && (*(v86 + 24) - 1) >= 2)
    {
      v87 = dbl_19BA8D180[v88 - 5 < 2];
    }
  }

  v89 = v20[13];
  v90 = *(v216 + 13);
  if (v89 >= 0.0)
  {
    if (v90 < 0.0)
    {
      v91 = v89 * 2.5;
      goto LABEL_142;
    }

    v90 = (v89 + v90) * 0.5;
    goto LABEL_141;
  }

  v91 = v87;
  if (v90 >= 0.0)
  {
LABEL_141:
    v91 = v90 * 2.5;
  }

LABEL_142:
  if (v87 >= v91)
  {
    v87 = v91;
  }

  if (v91 >= 20.0)
  {
    v92 = v87;
  }

  else
  {
    v92 = 20.0;
  }

  v93 = fabs(v14 - v13) * v92;
  if (v93 >= 250.0)
  {
    v94 = v93;
  }

  else
  {
    v94 = 250.0;
  }

  sub_19BA0C01C(a1, v20[3], v20[4], *(v216 + 3), *(v216 + 4), 0.0);
  v96 = v95 + v95;
  if (v95 + v95 >= v94)
  {
    v97 = v95 + v95;
  }

  else
  {
    v97 = v94;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
  }

  v98 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
  {
    v99 = *(*v20 + 144);
    if (v99 == *(*v20 + 136))
    {
      v100 = 0;
      v101 = 0;
    }

    else
    {
      v100 = *(v99 - 16);
      v101 = *(v99 - 8);
    }

    v105 = *(*v216 + 136);
    if (*(*v216 + 144) == v105)
    {
      v106 = 0;
      v107 = 0;
    }

    else
    {
      v106 = *v105;
      v107 = v105[1];
    }

    *buf = 134351617;
    *&buf[4] = v13;
    *&buf[12] = 2053;
    *&buf[14] = v100;
    v287 = 2053;
    v288 = v101;
    v289 = 2053;
    v290 = v106;
    v291 = 2053;
    v292 = v107;
    v293 = 2050;
    v294 = v59;
    v295 = 2050;
    v296 = v14;
    v297 = 2050;
    v298 = v97;
    v299 = 2050;
    v300 = v92;
    v301 = 2050;
    v302 = v94;
    v303 = 2050;
    v304 = v96;
    _os_log_impl(&dword_19B873000, v98, OS_LOG_TYPE_INFO, "CLTSP,MI,%{public}.3lf,constructing astar route between,startPoint,%{sensitive}.7lf,%{sensitive}.7lf,endPoint,%{sensitive}.7lf,%{sensitive}.7lf,distance,%{public}.3lf,endTime,%{public}.3lf,maxDistance,%{public}.3lf,speed,%{public}.3lf,maxSpeedBasedDistance,%{public}.1lf,maxLOSBasedDistance,%{public}.1lf", buf, 0x70u);
  }

  v138 = sub_19B87DD40();
  if (*(v138 + 160) > 1 || *(v138 + 164) > 1 || *(v138 + 168) > 1 || *(v138 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v141 = *(*v20 + 144);
    if (v141 == *(*v20 + 136))
    {
      v142 = 0;
      v143 = 0;
    }

    else
    {
      v142 = *(v141 - 16);
      v143 = *(v141 - 8);
    }

    v144 = *(*v216 + 136);
    if (*(*v216 + 144) == v144)
    {
      v145 = 0;
      v146 = 0;
    }

    else
    {
      v145 = *v144;
      v146 = v144[1];
    }

    *v266 = 134351617;
    *&v266[4] = v13;
    *&v266[12] = 2053;
    *&v266[14] = v142;
    *&v266[22] = 2053;
    v267 = v143;
    *v268 = 2053;
    *&v268[2] = v145;
    *&v268[10] = 2053;
    *&v268[12] = v146;
    *&v268[20] = 2050;
    *&v268[22] = v59;
    *&v268[30] = 2050;
    v269 = v14;
    v270 = 2050;
    v271 = v97;
    v272 = 2050;
    v273 = v92;
    v274 = 2050;
    v275 = v94;
    v276 = 2050;
    v277 = v96;
    v147 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,MI,%{public}.3lf,constructing astar route between,startPoint,%{sensitive}.7lf,%{sensitive}.7lf,endPoint,%{sensitive}.7lf,%{sensitive}.7lf,distance,%{public}.3lf,endTime,%{public}.3lf,maxDistance,%{public}.3lf,speed,%{public}.3lf,maxSpeedBasedDistance,%{public}.1lf,maxLOSBasedDistance,%{public}.1lf", v266, 112);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v147);
    if (v147 != buf)
    {
      free(v147);
    }
  }

  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  sub_19B9F081C(qword_1EAFE5B10, a2, &v246, v139, v140);
  v244 = v20;
  v245 = v213;
  if (v213)
  {
    atomic_fetch_add_explicit(&v213->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v242 = v216;
  v243 = v218;
  if (v218)
  {
    atomic_fetch_add_explicit(&v218->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v148 = *(a1 + 144);
  v240 = *(a1 + 136);
  v241 = v148;
  if (v148)
  {
    atomic_fetch_add_explicit(&v148->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v238 = 0;
  v239 = 0;
  v149 = sub_19B9A4AC0(&v278, a1, &v246, &v244, &v242, &v240, 1, &v238, v13, v97, 5.0);
  if (v239)
  {
    sub_19B8750F8(v239);
  }

  if (v241)
  {
    sub_19B8750F8(v241);
  }

  if (v243)
  {
    sub_19B8750F8(v243);
  }

  if (v245)
  {
    sub_19B8750F8(v245);
  }

  if (v247)
  {
    sub_19B8750F8(v247);
  }

  if ((v149 & 1) == 0)
  {
    v217 = *a3;
    v150 = a4[1];
    v151 = v150 - *a4;
    v152 = v151 >= 0x11 || (a3[1] - *a3) >= 0x11;
    if (!v152 || v150 == *a4)
    {
LABEL_189:
      v126 = v252;
      v127.i32[0] = 1;
      v127.i32[1] = DWORD2(v279);
      *(v252 + 80) = vadd_s32(*(v252 + 80), v127);
      v128 = v280;
      *(v126 + 88) += HIDWORD(v279);
      sub_19B9988CC((v126 + 128), v128);
      *(v252 + 96) = v281 + *(v252 + 96);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v129 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
      {
        v130 = (a3[1] - *a3) >> 4;
        v131 = (a4[1] - *a4) >> 4;
        v132 = (*(a1 + 56) - *(a1 + 48)) >> 4;
        *buf = 134350080;
        *&buf[4] = v13;
        *&buf[12] = 2050;
        *&buf[14] = v14;
        v287 = 2050;
        v288 = v130;
        v289 = 2050;
        v290 = v131;
        v291 = 2050;
        v292 = v132;
        _os_log_impl(&dword_19B873000, v129, OS_LOG_TYPE_INFO, "CLTSP,MI,unable to construct route,added snap solutions,startTime,%{public}.3lf,endTime,%{public}.3lf,startSnap,%{public}lu,constructed,0,endSnap,%{public}lu,total,%{public}lu", buf, 0x34u);
      }

      v133 = sub_19B87DD40();
      if (*(v133 + 160) > 1 || *(v133 + 164) > 1 || *(v133 + 168) > 1 || *(v133 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v134 = (a3[1] - *a3) >> 4;
        v135 = (a4[1] - *a4) >> 4;
        v136 = (*(a1 + 56) - *(a1 + 48)) >> 4;
        *v266 = 134350080;
        *&v266[4] = v13;
        *&v266[12] = 2050;
        *&v266[14] = v14;
        *&v266[22] = 2050;
        v267 = v134;
        *v268 = 2050;
        *&v268[2] = v135;
        *&v268[10] = 2050;
        *&v268[12] = v136;
        v137 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,MI,unable to construct route,added snap solutions,startTime,%{public}.3lf,endTime,%{public}.3lf,startSnap,%{public}lu,constructed,0,endSnap,%{public}lu,total,%{public}lu", v266, 52);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v137);
        if (v137 != buf)
        {
          free(v137);
        }
      }

      v30 = 0;
      goto LABEL_373;
    }

    v153 = 0;
    v214 = 0;
    v154 = v151 >> 4;
    if (v154 >= 0x1E)
    {
      v154 = 30;
    }

    if (v154 <= 1)
    {
      v154 = 1;
    }

    v212 = 16 * v154;
    while (1)
    {
      v155 = *a4;
      sub_19BA0C01C(a1, *(*v217 + 24), *(*v217 + 32), *((*a4)[v153 / 8] + 3), *((*a4)[v153 / 8] + 4), 0.0);
      v157 = v156;
      v158 = v156 + v156;
      if (v156 + v156 >= v94)
      {
        v159 = v156 + v156;
      }

      else
      {
        v159 = v94;
      }

      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v160 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
      {
        v161 = *(**v217 + 144);
        if (v161 == *(**v217 + 136))
        {
          v162 = 0;
          v163 = 0;
        }

        else
        {
          v162 = *(v161 - 16);
          v163 = *(v161 - 8);
        }

        v164 = *v155[v153 / 8];
        v165 = *(v164 + 136);
        if (*(v164 + 144) == v165)
        {
          v166 = 0;
          v167 = 0;
        }

        else
        {
          v166 = *v165;
          v167 = v165[1];
        }

        *buf = 134351617;
        *&buf[4] = v13;
        *&buf[12] = 2053;
        *&buf[14] = v162;
        v287 = 2053;
        v288 = v163;
        v289 = 2053;
        v290 = v166;
        v291 = 2053;
        v292 = v167;
        v293 = 2050;
        v294 = *&v157;
        v295 = 2050;
        v296 = v14;
        v297 = 2050;
        v298 = v159;
        v299 = 2050;
        v300 = v94;
        v301 = 2050;
        v302 = v158;
        v303 = 1026;
        LODWORD(v304) = v214;
        _os_log_impl(&dword_19B873000, v160, OS_LOG_TYPE_INFO, "CLTSP,MI,%{public}.3lf,try alternate astar route between,startPoint,%{sensitive}.7lf,%{sensitive}.7lf,endPoint,%{sensitive}.7lf,%{sensitive}.7lf,distance,%{public}.3lf,endTime,%{public}.3lf,maxDistance,%{public}.3lf,maxSpeedBasedDistance,%{public}.1lf,maxLOSBasedDistance,%{public}.1lf,tryCount,%{public}d", buf, 0x6Cu);
      }

      v168 = sub_19B87DD40();
      if (*(v168 + 160) > 1 || *(v168 + 164) > 1 || *(v168 + 168) > 1 || *(v168 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v171 = *(**v217 + 144);
        if (v171 == *(**v217 + 136))
        {
          v172 = 0;
          v173 = 0;
        }

        else
        {
          v172 = *(v171 - 16);
          v173 = *(v171 - 8);
        }

        v174 = *v155[v153 / 8];
        v175 = *(v174 + 136);
        if (*(v174 + 144) == v175)
        {
          v176 = 0;
          v177 = 0;
        }

        else
        {
          v176 = *v175;
          v177 = v175[1];
        }

        *v266 = 134351617;
        *&v266[4] = v13;
        *&v266[12] = 2053;
        *&v266[14] = v172;
        *&v266[22] = 2053;
        v267 = v173;
        *v268 = 2053;
        *&v268[2] = v176;
        *&v268[10] = 2053;
        *&v268[12] = v177;
        *&v268[20] = 2050;
        *&v268[22] = v157;
        *&v268[30] = 2050;
        v269 = v14;
        v270 = 2050;
        v271 = v159;
        v272 = 2050;
        v273 = v94;
        v274 = 2050;
        v275 = v158;
        v276 = 1026;
        LODWORD(v277) = v214;
        v178 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,MI,%{public}.3lf,try alternate astar route between,startPoint,%{sensitive}.7lf,%{sensitive}.7lf,endPoint,%{sensitive}.7lf,%{sensitive}.7lf,distance,%{public}.3lf,endTime,%{public}.3lf,maxDistance,%{public}.3lf,maxSpeedBasedDistance,%{public}.1lf,maxLOSBasedDistance,%{public}.1lf,tryCount,%{public}d", v266, 108);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v178);
        if (v178 != buf)
        {
          free(v178);
        }
      }

      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      sub_19B9F081C(qword_1EAFE5B10, a2, &v236, v169, v170);
      v179 = *(v217 + 1);
      v234 = *v217;
      v235 = v179;
      if (v179)
      {
        atomic_fetch_add_explicit(&v179->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v232 = v155[v153 / 8];
      v180 = v155[v153 / 8 + 1];
      v233 = v180;
      if (v180)
      {
        atomic_fetch_add_explicit(&v180->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v181 = *(a1 + 144);
      v230 = *(a1 + 136);
      v231 = v181;
      if (v181)
      {
        atomic_fetch_add_explicit(&v181->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v228 = 0;
      v229 = 0;
      v182 = sub_19B9A4AC0(&v278, a1, &v236, &v234, &v232, &v230, 1, &v228, v13, v159, 5.0);
      if (v229)
      {
        sub_19B8750F8(v229);
      }

      if (v231)
      {
        sub_19B8750F8(v231);
      }

      if (v233)
      {
        sub_19B8750F8(v233);
      }

      if (v235)
      {
        sub_19B8750F8(v235);
      }

      if (v237)
      {
        sub_19B8750F8(v237);
      }

      if (v182)
      {
        break;
      }

      ++v214;
      v153 += 16;
      if (v212 == v153)
      {
        goto LABEL_189;
      }
    }

    v20 = *v217;
    v215 = *(v217 + 1);
    if (v215)
    {
      atomic_fetch_add_explicit(&v215->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v213)
    {
      sub_19B8750F8(v213);
    }

    v216 = v155[v153 / 8];
    v183 = v155[v153 / 8 + 1];
    if (v183)
    {
      atomic_fetch_add_explicit(&v183->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v218)
    {
      sub_19B8750F8(v218);
    }

    v213 = v215;
    v218 = v183;
  }

LABEL_305:
  v184 = v252;
  *(v252 + 96) = v281 + *(v252 + 96);
  sub_19B9988CC((v184 + 128), v280);
  v185 = *a3;
  v186 = a3[1];
  if ((v186 - *a3) >= 0x11 && v20 != *v185)
  {
    memset(v266, 0, sizeof(v266));
    if (sub_19B9F03E4(a1, a2, v185, v186, v266))
    {
      sub_19B8F1A28((a1 + 152), *(a1 + 160), *v266, *&v266[8], (*&v266[8] - *v266) >> 4);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v187 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
      {
        *buf = 67240192;
        *&buf[4] = (*&v266[8] - *v266) >> 4;
        _os_log_impl(&dword_19B873000, v187, OS_LOG_TYPE_INFO, "CLTSP,route appended at start using startSnaps,numRoads,%{public}d", buf, 8u);
      }

      v188 = sub_19B87DD40();
      if (*(v188 + 160) > 1 || *(v188 + 164) > 1 || *(v188 + 168) > 1 || *(v188 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v254 = 67240192;
        LODWORD(v255) = (*&v266[8] - *v266) >> 4;
        v189 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,route appended at start using startSnaps,numRoads,%{public}d", &v254, 8);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v189);
        if (v189 != buf)
        {
          free(v189);
        }
      }
    }

    *buf = v266;
    sub_19B8F0E84(buf);
  }

  if (a5)
  {
    v190 = *a4;
    v191 = a4[1];
    if ((v191 - *a4) >= 0x11 && v216 != *(v191 - 2))
    {
      memset(v266, 0, sizeof(v266));
      if (sub_19B9F03E4(a1, a2, v190, v191, v266))
      {
        sub_19B8F1A28((a1 + 152), *(a1 + 160), *v266, *&v266[8], (*&v266[8] - *v266) >> 4);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v192 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
        {
          *buf = 67240192;
          *&buf[4] = (*&v266[8] - *v266) >> 4;
          _os_log_impl(&dword_19B873000, v192, OS_LOG_TYPE_INFO, "CLTSP,route appended at end using stopSnaps,numRoads,%{public}d", buf, 8u);
        }

        v193 = sub_19B87DD40();
        if (*(v193 + 160) > 1 || *(v193 + 164) > 1 || *(v193 + 168) > 1 || *(v193 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
          }

          v254 = 67240192;
          LODWORD(v255) = (*&v266[8] - *v266) >> 4;
          v194 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,route appended at end using stopSnaps,numRoads,%{public}d", &v254, 8);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v194);
          if (v194 != buf)
          {
            free(v194);
          }
        }
      }

      *buf = v266;
      sub_19B8F0E84(buf);
    }
  }

  v226 = 0uLL;
  v227 = 0;
  v196 = *(&v278 + 1);
  v195 = v278;
  if (v278 != *(&v278 + 1))
  {
    do
    {
      sub_19B8EAB68(&v226, *v195);
      v195 += 2;
    }

    while (v195 != v196);
    if (v226 != *(&v226 + 1))
    {
      v198 = *(a1 + 160);
      v197 = (a1 + 152);
      if (*(a1 + 152) == v198)
      {
        sub_19B8F1A28(v197, *(a1 + 152), v226, *(&v226 + 1), (*(&v226 + 1) - v226) >> 4);
      }

      else
      {
        v199 = *(v198 - 2);
        if (*v199 == **v226 && v199[1] == *(*v226 + 8))
        {
          sub_19B8F1A28(v197, v198, (v226 + 16), *(&v226 + 1), (*(&v226 + 1) - (v226 + 16)) >> 4);
        }

        else
        {
          sub_19B8F1A28(v197, v198, v226, *(&v226 + 1), (*(&v226 + 1) - v226) >> 4);
        }
      }
    }
  }

  v223 = 0;
  v224 = 0;
  v225 = 0;
  *&v266[16] = 0;
  v267 = 0;
  *v266 = xmmword_19BA89490;
  *v268 = 0x3FF0000000000000;
  memset(&v268[8], 0, 24);
  sub_19B948EFC(a1 + 72, &v268[8], 1, 0, v20[2], *(v216 + 2));
  if (a6 == 1)
  {
    if ((sub_19B9F1380(a1, &v278, &v223, a3, a4, v266) & 1) == 0)
    {
      goto LABEL_372;
    }

LABEL_360:
    sub_19B9F22AC((a1 + 48), *(a1 + 56), *a3, a3[1], (a3[1] - *a3) >> 4);
    sub_19B9F2604((a1 + 48), *(a1 + 56), v223, v224, (v224 - v223) >> 4);
    sub_19B9F22AC((a1 + 48), *(a1 + 56), *a4, a4[1], (a4[1] - *a4) >> 4);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v201 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      v202 = (a3[1] - *a3) >> 4;
      v203 = (a4[1] - *a4) >> 4;
      v204 = (*(a1 + 56) - *(a1 + 48)) >> 4;
      *buf = 134350336;
      *&buf[4] = v13;
      *&buf[12] = 2050;
      *&buf[14] = v14;
      v287 = 2050;
      v288 = v202;
      v289 = 2050;
      v290 = (v224 - v223) >> 4;
      v291 = 2050;
      v292 = v203;
      v293 = 2050;
      v294 = v204;
      _os_log_impl(&dword_19B873000, v201, OS_LOG_TYPE_INFO, "CLTSP,MI,added snap solutions,startTime,%{public}.3lf,endTime,%{public}.3lf,startSnap,%{public}lu,constructed,%{public}lu,endSnap,%{public}lu,total,%{public}lu", buf, 0x3Eu);
    }

    v205 = sub_19B87DD40();
    if (*(v205 + 160) > 1 || *(v205 + 164) > 1 || *(v205 + 168) > 1 || *(v205 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v206 = (a3[1] - *a3) >> 4;
      v207 = (a4[1] - *a4) >> 4;
      v208 = (*(a1 + 56) - *(a1 + 48)) >> 4;
      v254 = 134350336;
      v255 = v13;
      v256 = 2050;
      v257 = v14;
      v258 = 2050;
      v259 = v206;
      v260 = 2050;
      v261 = (v224 - v223) >> 4;
      v262 = 2050;
      v263 = v207;
      v264 = 2050;
      v265 = v208;
      v209 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,MI,added snap solutions,startTime,%{public}.3lf,endTime,%{public}.3lf,startSnap,%{public}lu,constructed,%{public}lu,endSnap,%{public}lu,total,%{public}lu", &v254, 62);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v209);
      if (v209 != buf)
      {
        free(v209);
      }
    }

    goto LABEL_372;
  }

  v222[0] = v20;
  v222[1] = v213;
  if (v213)
  {
    atomic_fetch_add_explicit(&v213->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v221[0] = v216;
  v221[1] = v218;
  if (v218)
  {
    atomic_fetch_add_explicit(&v218->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v200 = sub_19B9F089C(a1, &v278, &v223, v222, v221, v266);
  if (v218)
  {
    sub_19B8750F8(v218);
  }

  if (v213)
  {
    sub_19B8750F8(v213);
    if (!v200)
    {
      goto LABEL_372;
    }

    goto LABEL_360;
  }

  if (v200)
  {
    goto LABEL_360;
  }

LABEL_372:
  v210 = *(a1 + 136);
  *(v252 + 104) += *(v210 + 116);
  Current = CFAbsoluteTimeGetCurrent();
  sub_19B8E62BC(v210 + 288, Current, 0.5, 0.5);
  v30 = v223 != v224;
  *buf = &v268[8];
  sub_19B8F0E84(buf);
  *buf = &v223;
  sub_19B8F0E84(buf);
  *buf = &v226;
  sub_19B8F0E84(buf);
LABEL_373:
  *buf = &v278;
  sub_19B8F0E84(buf);
LABEL_374:
  if (v253)
  {
    sub_19B8750F8(v253);
  }

  v21 = v213;
LABEL_41:
  if (v218)
  {
    sub_19B8750F8(v218);
  }

  if (v21)
  {
    sub_19B8750F8(v21);
  }

  return v30;
}

void sub_19B9F020C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, std::__shared_weak_count *a58)
{
  STACK[0x290] = &a29;
  sub_19B8F0E84(&STACK[0x290]);
  STACK[0x290] = &STACK[0x240];
  sub_19B8F0E84(&STACK[0x290]);
  if (a58)
  {
    sub_19B8750F8(a58);
  }

  if (a19)
  {
    sub_19B8750F8(a19);
  }

  if (a16)
  {
    sub_19B8750F8(a16);
  }

  _Unwind_Resume(a1);
}

BOOL sub_19B9F03E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a4 - a3) < 0x11)
  {
    return 1;
  }

  v8 = a3;
  if (a3 == a4)
  {
    return *a5 != *(a5 + 8);
  }

  v11 = 0;
  v12 = 0;
  v13 = *(*(a4 - 16) + 16);
  do
  {
    v14 = *v8;
    if (!*v8)
    {
      goto LABEL_60;
    }

    v15 = *v14;
    if (!*v14)
    {
      goto LABEL_60;
    }

    v16 = v14[1];
    *&v52 = v15;
    *(&v52 + 1) = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
    }

    v17 = *(a5 + 8);
    if (*a5 == v17)
    {
      sub_19B8EAB68(a5, &v52);
      v11 = *v8;
      v22 = *(v8 + 8);
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = v12;
      if (!v12)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v18 = *(v17 - 16);
      v19 = *(v17 - 8);
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*v18 != *v15 || v18[1] != v15[1])
      {
        if (sub_19B9F6278(v18, &v52))
        {
          sub_19B8EAB68(a5, &v52);
        }

        else
        {
          v47 = 0;
          v51 = 0;
          memset(v45, 0, sizeof(v45));
          v46 = 0;
          v50 = 0;
          v49 = 0;
          v48 = 1;
          if (qword_1EAFE5B00 != -1)
          {
            dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
          }

          sub_19B9F081C(qword_1EAFE5B10, a2, &v43, v20, v21);
          v41 = v11;
          v42 = v12;
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v23 = *(v8 + 8);
          v39 = *v8;
          v40 = v23;
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v24 = *(a1 + 144);
          v37 = *(a1 + 136);
          v38 = v24;
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v35 = 0;
          v36 = 0;
          v25 = sub_19B9A4AC0(v45, a1, &v43, &v41, &v39, &v37, 1, &v35, v13, -1.0, 5.0);
          if (v36)
          {
            sub_19B8750F8(v36);
          }

          if (v38)
          {
            sub_19B8750F8(v38);
          }

          if (v40)
          {
            sub_19B8750F8(v40);
          }

          if (v42)
          {
            sub_19B8750F8(v42);
          }

          if (v44)
          {
            sub_19B8750F8(v44);
          }

          if (v25)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v27 = *(&v45[0] + 1);
            v26 = *&v45[0];
            if (*&v45[0] == *(&v45[0] + 1))
            {
              v28 = 0;
            }

            else
            {
              do
              {
                sub_19B8EAB68(&v32, *v26);
                v26 += 2;
              }

              while (v26 != v27);
              v28 = v32;
            }

            v29 = *(a5 + 8);
            if (*a5 != v29 && (v30 = *(v29 - 2), *v30 == **v28) && v30[1] == *(*v28 + 8))
            {
              sub_19B8F1A28(a5, v29, v28 + 2, v33, (v33 - (v28 + 2)) >> 4);
            }

            else
            {
              sub_19B8F1A28(a5, v29, v28, v33, (v33 - v28) >> 4);
            }

            v53 = &v32;
            sub_19B8F0E84(&v53);
          }

          else
          {
            sub_19B8EAB68(a5, &v52);
          }

          v32 = v45;
          sub_19B8F0E84(&v32);
        }
      }

      v11 = *v8;
      v22 = *(v8 + 8);
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v12)
      {
        sub_19B8750F8(v12);
      }

      if (!v19)
      {
        goto LABEL_57;
      }
    }

    sub_19B8750F8(v19);
LABEL_57:
    if (*(&v52 + 1))
    {
      sub_19B8750F8(*(&v52 + 1));
    }

    v12 = v22;
LABEL_60:
    v8 += 16;
  }

  while (v8 != a4);
  v5 = *a5 != *(a5 + 8);
  if (v12)
  {
    sub_19B8750F8(v12);
  }

  return v5;
}

void sub_19B9F0768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  *(v25 - 112) = &a10;
  sub_19B8F0E84((v25 - 112));
  a10 = &a23;
  sub_19B8F0E84(&a10);
  if (v23)
  {
    sub_19B8750F8(v23);
  }

  v27 = *(v25 - 120);
  if (v27)
  {
    sub_19B8750F8(v27);
  }

  if (v24)
  {
    sub_19B8750F8(v24);
  }

  _Unwind_Resume(a1);
}

void sub_19B9F081C(std::mutex *a1@<X0>, void *a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = objc_msgSend_UUIDString(a2, a2, a4, a5);
  v11 = objc_msgSend_UTF8String(v7, v8, v9, v10);
  sub_19B8759E8(__p, v11);
  sub_19B9A26B0(a1, __p, a3);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19B9F0880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B9F089C(float64x2_t *a1, uint64_t *a2, void **a3, double **a4, double ***a5, uint64_t a6)
{
  v90 = *MEMORY[0x1E69E9840];
  v6 = *a4;
  if (!*a4 || (v8 = *a5) == 0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v20 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_ERROR, "CLTSP,MI,interpolateLocationsAlongSegmentPedestrian,null pointers", buf, 2u);
    }

    v21 = sub_19B87DD40();
    if ((*(v21 + 160) & 0x80000000) != 0 && (*(v21 + 164) & 0x80000000) != 0 && (*(v21 + 168) & 0x80000000) != 0 && !*(v21 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    LOWORD(v77) = 0;
    v22 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,MI,interpolateLocationsAlongSegmentPedestrian,null pointers", &v77, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegratorSparse::interpolateLocationsAlongSegmentPedestrian(CLAStarRouteConstructor &, std::vector<CLGeoMapSnapDataPtr> &, const CLGeoMapSnapDataPtr, const CLGeoMapSnapDataPtr, const CLGeoMapLocationArray &) const", "CoreLocation: %s\n", v22);
LABEL_16:
    if (v22 != buf)
    {
      free(v22);
    }

    return 0;
  }

  v10 = *a2;
  v11 = a2[1];
  if (v11 == *a2)
  {
    return 1;
  }

  v16 = *(*v10 + 24);
  v17 = *(v11 - 16);
  v18 = *(v17 + 24);
  if ((v11 - *a2) < 0x11)
  {
    v19 = *(v8 + 6) > v6[6];
    *(*v10 + 24) = v19;
  }

  else
  {
    sub_19B9AC9F0(a2, a1);
    v10 = *a2;
    v11 = a2[1];
    v19 = *(**a2 + 24);
    v6 = *a4;
    v8 = *a5;
    v17 = *(v11 - 16);
  }

  v24 = *(v17 + 24);
  v25 = v6[20];
  if (v19 != v16)
  {
    v25 = -v25;
  }

  v6[20] = v25;
  v26 = *(v8 + 20);
  if (v24 != v18)
  {
    v26 = -v26;
  }

  *(v8 + 20) = v26;
  if (v10 == v11)
  {
    return 1;
  }

  if (v19)
  {
    v27 = v6[6];
  }

  else
  {
    v27 = 1.0 - v6[6];
  }

  v28 = *v6;
  sub_19B9F5AA8(*v6);
  v29 = v28[5];
  v30 = *a5;
  if (*(*(a2[1] - 16) + 24))
  {
    v31 = 1.0 - *(*a5 + 6);
  }

  else
  {
    v31 = *(*a5 + 6);
  }

  v32 = *v30;
  sub_19B9F5AA8(*v30);
  v33 = v31 * v32[5] + v27 * v29;
  v34 = sub_19B9B0CAC(a2, (*a4)[20]) - v33;
  v35 = sub_19B9B0CAC(a2, *(*a5 + 20)) - v33;
  v36 = *a4;
  v37 = (*a4)[13];
  v38 = *(*a5 + 13);
  if (v37 <= 0.5)
  {
    v37 = -1.0;
    if (v38 > 0.5)
    {
      v37 = *(*a5 + 13);
    }
  }

  else if (v38 > 0.5 && v37 < v38)
  {
    v37 = *(*a5 + 13);
  }

  v39 = (v34 + v35) * 0.5;
  v40 = *(*a5 + 2) - (*a4)[2];
  v41 = *(a6 + 40);
  v42 = *(a6 + 48);
  v43 = (a6 + 40);
  v44 = 0.0;
  if (v41 != v42)
  {
    v45 = *(a6 + 40);
    do
    {
      if (*v45)
      {
        v44 = v44 + *(*v45 + 80);
      }

      v45 += 16;
    }

    while (v45 != v42);
  }

  v46 = 0;
  v47 = v39 / v40;
  if (v37 >= 0.0 && v47 > 0.0)
  {
    v48 = fabs(v40) * -0.0833333333 + 4.5;
    v49 = 4.0;
    if (v48 <= 4.0)
    {
      v49 = v48;
    }

    if (v48 >= 2.0)
    {
      v50 = v49;
    }

    else
    {
      v50 = 2.0;
    }

    v46 = v47 > v50 * v37;
  }

  v51 = v44 * 1.2;
  if (v46 || v39 > v51)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v53 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110400;
      *&buf[4] = v46;
      *&buf[8] = 1024;
      *&buf[10] = v39 > v51;
      *&buf[14] = 2050;
      v87 = v47;
      *v88 = 2050;
      *&v88[2] = v37;
      *&v88[10] = 2048;
      *&v88[12] = (v34 + v35) * 0.5;
      *&v88[20] = 2048;
      *&v88[22] = v44;
      _os_log_impl(&dword_19B873000, v53, OS_LOG_TYPE_DEFAULT, "CLTSP,Warning,cannot interpolate along route,speed_check_failed,%d,distance_check_failed,%d,route_speed_mps,%{public}.1lf,max_start_destination_speed_mps,%{public}.1lf,routeLength_m,%.1lf,li_distance_m,%.1lf", buf, 0x36u);
    }

    v54 = sub_19B87DD40();
    if (*(v54 + 160) <= 1 && *(v54 + 164) <= 1 && *(v54 + 168) <= 1 && !*(v54 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    LODWORD(v77) = 67110400;
    HIDWORD(v77) = v46;
    LOWORD(v78) = 1024;
    *(&v78 + 2) = v39 > v51;
    HIWORD(v78) = 2050;
    v79 = v47;
    v80 = 2050;
    v81 = v37;
    v82 = 2048;
    v83 = (v34 + v35) * 0.5;
    v84 = 2048;
    v85 = v44;
    v22 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLTSP,Warning,cannot interpolate along route,speed_check_failed,%d,distance_check_failed,%d,route_speed_mps,%{public}.1lf,max_start_destination_speed_mps,%{public}.1lf,routeLength_m,%.1lf,li_distance_m,%.1lf", &v77, 54);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::interpolateLocationsAlongSegmentPedestrian(CLAStarRouteConstructor &, std::vector<CLGeoMapSnapDataPtr> &, const CLGeoMapSnapDataPtr, const CLGeoMapSnapDataPtr, const CLGeoMapLocationArray &) const", "CoreLocation: %s\n", v22);
    goto LABEL_16;
  }

  v52 = 0.0;
  while (v41 != v42)
  {
    if (*v41)
    {
      v52 = v52 + *(*v41 + 80);
    }

    v41 += 16;
  }

  v77 = 0;
  v78 = 0;
  v79 = 0.0;
  if ((sub_19B9EA700(a1, (a6 + 40), a2, &v77, v36[6], v34 / v52, v36[20]) & 1) == 0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v64 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v65 = *(*a4 + 2);
      *buf = 134349056;
      *&buf[4] = v65;
      _os_log_impl(&dword_19B873000, v64, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.1lf,unable to compute snap on constructed route", buf, 0xCu);
    }

    v66 = sub_19B87DD40();
    if ((*(v66 + 160) & 0x80000000) == 0 || (*(v66 + 164) & 0x80000000) == 0 || (*(v66 + 168) & 0x80000000) == 0 || *(v66 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v67 = *(*a4 + 2);
      LODWORD(v75) = 134349056;
      *(&v75 + 4) = v67;
      v68 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,%{public}.1lf,unable to compute snap on constructed route", &v75, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegratorSparse::interpolateLocationsAlongSegmentPedestrian(CLAStarRouteConstructor &, std::vector<CLGeoMapSnapDataPtr> &, const CLGeoMapSnapDataPtr, const CLGeoMapSnapDataPtr, const CLGeoMapLocationArray &) const", "CoreLocation: %s\n", v68);
      if (v68 != buf)
      {
        free(v68);
      }
    }

    *buf = &v77;
    sub_19B8F0E84(buf);
    return 0;
  }

  v75 = 0uLL;
  v76 = 0;
  v55 = sub_19B9EA700(a1, (a6 + 40), a2, &v75, (*a4)[6], v35 / v52, *(*a5 + 20));
  if (v55)
  {
    v87 = 0.0;
    *v88 = 0;
    *buf = xmmword_19BA89490;
    *&v88[8] = 0x3FF0000000000000;
    *&v88[16] = 0;
    *&v88[24] = 0;
    v89 = 0;
    if (buf != a6)
    {
      sub_19B9F1EC8(&v88[16], *(a6 + 40), *(a6 + 48), (*(a6 + 48) - *(a6 + 40)) >> 4);
    }

    v56 = v77;
    if (v78 != v77)
    {
      v57 = 0;
      do
      {
        v58 = *&v88[16];
        v59 = 0.0;
        for (i = 0.0; v58 != *&v88[24]; v58 += 2)
        {
          v61 = *v58;
          if (*v58)
          {
            if (*v61 > ***v43 && *v61 <= *(*v43)[2 * v57])
            {
              i = i + v61[10];
            }
          }
        }

        if (v39 > 0.0)
        {
          v59 = v34 / v52 * i / v34;
        }

        v63 = &v56[16 * v57];
        *(*v63 + 24) = vmlaq_n_f64(vmulq_n_f64(*(*(v75 + 16 * v57) + 24), v59), *(*v63 + 24), 1.0 - v59);
        sub_19B8EAB68(a3, v63);
        ++v57;
        v56 = v77;
      }

      while (v57 < (v78 - v77) >> 4);
    }

    *v74 = &v88[16];
    sub_19B8F0E84(v74);
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v69 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v70 = *(*a4 + 2);
      *buf = 134349056;
      *&buf[4] = v70;
      _os_log_impl(&dword_19B873000, v69, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.1lf,unable to compute snap on constructed route", buf, 0xCu);
    }

    v71 = sub_19B87DD40();
    if ((*(v71 + 160) & 0x80000000) == 0 || (*(v71 + 164) & 0x80000000) == 0 || (*(v71 + 168) & 0x80000000) == 0 || *(v71 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v72 = *(*a4 + 2);
      *v74 = 134349056;
      *&v74[4] = v72;
      v73 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,%{public}.1lf,unable to compute snap on constructed route", v74, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegratorSparse::interpolateLocationsAlongSegmentPedestrian(CLAStarRouteConstructor &, std::vector<CLGeoMapSnapDataPtr> &, const CLGeoMapSnapDataPtr, const CLGeoMapSnapDataPtr, const CLGeoMapLocationArray &) const", "CoreLocation: %s\n", v73);
      if (v73 != buf)
      {
        free(v73);
      }
    }
  }

  *buf = &v75;
  sub_19B8F0E84(buf);
  *buf = &v77;
  sub_19B8F0E84(buf);
  return (v55 & 1) != 0;
}

void sub_19B9F1324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  sub_19B8F0E84(&a11);
  a25 = &a13;
  sub_19B8F0E84(&a25);
  a25 = &a17;
  sub_19B8F0E84(&a25);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9F1380(uint64_t a1, uint64_t *a2, const void **a3, void *a4, uint64_t ***a5, uint64_t a6)
{
  v67 = *MEMORY[0x1E69E9840];
  v8 = a4[1];
  if (*a4 == v8 || (v9 = *a5, *a5 == a5[1]))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v22 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v23 = (a4[1] - *a4) >> 4;
      v24 = (a5[1] - *a5) >> 4;
      *buf = 134349312;
      *&buf[4] = v23;
      v59 = 2050;
      v60 = v24;
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_ERROR, "CLTSP,MI,interpolateLocationsAlongSegmentVehicular,invalid size,start,%{public}lu,end,%{public}lu", buf, 0x16u);
    }

    v25 = sub_19B87DD40();
    if ((*(v25 + 160) & 0x80000000) != 0 && (*(v25 + 164) & 0x80000000) != 0 && (*(v25 + 168) & 0x80000000) != 0 && !*(v25 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v26 = (a4[1] - *a4) >> 4;
    v27 = (a5[1] - *a5) >> 4;
    LODWORD(v53[0]) = 134349312;
    *(v53 + 4) = v26;
    WORD2(v53[1]) = 2050;
    *(&v53[1] + 6) = v27;
    v28 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,MI,interpolateLocationsAlongSegmentVehicular,invalid size,start,%{public}lu,end,%{public}lu", v53, 22);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegratorSparse::interpolateLocationsAlongSegmentVehicular(CLAStarRouteConstructor &, std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, const CLGeoMapLocationArray &, BOOL)", "CoreLocation: %s\n", v28);
    goto LABEL_38;
  }

  if (!*(v8 - 16) || !*v9)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v29 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v30 = (a4[1] - *a4) >> 4;
      v31 = (a5[1] - *a5) >> 4;
      *buf = 134349312;
      *&buf[4] = v30;
      v59 = 2050;
      v60 = v31;
      _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_ERROR, "CLTSP,MI,interpolateLocationsAlongSegmentVehicular,null pointers,start,%{public}lu,end,%{public}lu", buf, 0x16u);
    }

    v32 = sub_19B87DD40();
    if ((*(v32 + 160) & 0x80000000) != 0 && (*(v32 + 164) & 0x80000000) != 0 && (*(v32 + 168) & 0x80000000) != 0 && !*(v32 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v33 = (a4[1] - *a4) >> 4;
    v34 = (a5[1] - *a5) >> 4;
    LODWORD(v53[0]) = 134349312;
    *(v53 + 4) = v33;
    WORD2(v53[1]) = 2050;
    *(&v53[1] + 6) = v34;
    v28 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,MI,interpolateLocationsAlongSegmentVehicular,null pointers,start,%{public}lu,end,%{public}lu", v53, 22);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegratorSparse::interpolateLocationsAlongSegmentVehicular(CLAStarRouteConstructor &, std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, const CLGeoMapLocationArray &, BOOL)", "CoreLocation: %s\n", v28);
LABEL_38:
    if (v28 != buf)
    {
      free(v28);
    }

    return 0;
  }

  v49 = *(v8 - 16);
  v14 = *(v8 - 8);
  v50 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = *a5;
  }

  v16 = *v9;
  v15 = *(v9 + 1);
  v47 = v16;
  v48 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = sub_19B9AEA00(a2, &v49, &v47);
  if (v48)
  {
    sub_19B8750F8(v48);
  }

  if (v50)
  {
    sub_19B8750F8(v50);
  }

  v18 = *(a6 + 40);
  v19 = *(a6 + 48);
  v20 = (a6 + 40);
  v21 = 0.0;
  while (v18 != v19)
  {
    if (*v18)
    {
      v21 = v21 + *(*v18 + 80);
    }

    v18 += 16;
  }

  v37 = *(*(a4[1] - 16) + 16);
  v38 = (**a5)[2];
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
  }

  v39 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
  {
    *buf = 134350080;
    *&buf[4] = v37;
    v59 = 2050;
    v60 = v38;
    v61 = 2050;
    v62 = v17;
    v63 = 2050;
    v64 = v21;
    v65 = 2050;
    v66 = v17 / v21;
    _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_INFO, "CLTSP,MI,construct route distances,startTime,%{public}.3lf,endTime,%{public}.3lf,routeConstructed,%{public}.3lf,routeExpected,%{public}.3lf,distanceScale,%{public}.3lf", buf, 0x34u);
  }

  v40 = sub_19B87DD40();
  if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    LODWORD(v53[0]) = 134350080;
    *(v53 + 4) = v37;
    WORD2(v53[1]) = 2050;
    *(&v53[1] + 6) = v38;
    HIWORD(v53[2]) = 2050;
    v53[3] = *&v17;
    v54 = 2050;
    v55 = v21;
    v56 = 2050;
    v57 = v17 / v21;
    v41 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,MI,construct route distances,startTime,%{public}.3lf,endTime,%{public}.3lf,routeConstructed,%{public}.3lf,routeExpected,%{public}.3lf,distanceScale,%{public}.3lf", v53, 52);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::interpolateLocationsAlongSegmentVehicular(CLAStarRouteConstructor &, std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, const CLGeoMapLocationArray &, BOOL)", "CoreLocation: %s\n", v41);
    if (v41 != buf)
    {
      free(v41);
    }
  }

  memset(v53, 0, 24);
  v42 = *a2;
  v43 = a2[1];
  while (v42 != v43)
  {
    sub_19B8EAB68(v53, *v42);
    v42 += 2;
  }

  v35 = sub_19B9EA700(a1, v20, a2, a3, *(*(a4[1] - 16) + 48), v17 / v21, 0.0);
  if ((v35 & 1) == 0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v44 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v37;
      _os_log_impl(&dword_19B873000, v44, OS_LOG_TYPE_ERROR, "CLTSP,MI,%{public}.1lf,unable to compute snap on constructed route", buf, 0xCu);
    }

    v45 = sub_19B87DD40();
    if ((*(v45 + 160) & 0x80000000) == 0 || (*(v45 + 164) & 0x80000000) == 0 || (*(v45 + 168) & 0x80000000) == 0 || *(v45 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v51 = 134349056;
      v52 = v37;
      v46 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,MI,%{public}.1lf,unable to compute snap on constructed route", &v51, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegratorSparse::interpolateLocationsAlongSegmentVehicular(CLAStarRouteConstructor &, std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, const CLGeoMapLocationArray &, BOOL)", "CoreLocation: %s\n", v46);
      if (v46 != buf)
      {
        free(v46);
      }
    }
  }

  *buf = v53;
  sub_19B8F0E84(buf);
  return v35;
}

void sub_19B9F1B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  a25 = &a17;
  sub_19B8F0E84(&a25);
  _Unwind_Resume(a1);
}

os_log_t sub_19B9F1BE4()
{
  result = os_log_create("com.apple.locationd.Position", "TripSegmentProcessor");
  qword_1EAFE46E8 = result;
  return result;
}

void sub_19B9F1C14(uint64_t a1, uint64_t *a2, uint64_t a3, double a4)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = (v5 - *a1) >> 4;
  v7 = 3;
  if (a3 == 1)
  {
    v7 = 14;
  }

  if (v6 > v7 && (a3 != 1 || (3 * v6) < a4))
  {
    v11 = a2[1];
    if (*a2 == v11)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
    }

    else
    {
      v13 = *(v11 - 16);
      v12 = *(v11 - 8);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = -1.0;
      if (v13)
      {
        v15 = *v13;
        if (*v13)
        {
          if (*(*&v15 + 20) < 3u || (*(*&v15 + 24) - 1) <= 1)
          {
            v14 = v13[2];
          }
        }
      }

      if (v12)
      {
        sub_19B8750F8(v12);
      }

      v23 = 0;
      v24 = 0;
      v25 = 0;
      v4 = *a1;
      v5 = *(a1 + 8);
      if (v14 > 0.0 && v4 != v5)
      {
        v16 = 60.0;
        v17 = *a1;
        do
        {
          v18 = *v17;
          if (*v17)
          {
            v16 = v16 + 1.0;
            if (sub_19B9E2ED8(*(*v18 + 20)) == 2 && vabdd_f64(v14, v18[2]) < v16 && v18[13] > 18.0)
            {
              goto LABEL_37;
            }
          }

          v17 += 2;
        }

        while (v17 != v5);
      }
    }

    if (v4 == v5)
    {
      v22 = 0;
      v21 = 0;
    }

    else
    {
      do
      {
        v19 = *v4;
        if (*v4)
        {
          v20 = 0.0;
          if (a3 != 1 || (v20 = 3.0, !*v19) || (*(*v19 + 24) & 0xFFFFFFFE) != 6)
          {
            if (v19[13] >= v20)
            {
              sub_19B8EAB68(&v23, v4);
            }
          }
        }

        ++v4;
      }

      while (v4 != v5);
      v21 = v23;
      v22 = v24;
    }

    sub_19B9F2604(a2, a2[1], v21, v22, (v22 - v21) >> 4);
LABEL_37:
    v26 = &v23;
    sub_19B8F0E84(&v26);
  }
}

void sub_19B9F1E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_19B8F0E84(&a12);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B9F1E2C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sub_19B8F0FC8(a3);
      *a3 = *v5;
      a3[2] = *(v5 + 16);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v5 += 24;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

os_log_t sub_19B9F1E98()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

void sub_19B9F1EC8(uint64_t **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 4)
  {
    if (v8)
    {
      sub_19B8EBC04(a1);
      operator delete(*a1);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_19B8F0CFC(a1, v10);
    }

    sub_19B8B8A40();
  }

  v11 = a1[1] - v8;
  if (a4 <= v11 >> 4)
  {
    sub_19B8F3078(a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          sub_19B8750F8(v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    v12 = sub_19B8F3078(a2, (a2 + v11), v8);
    a1[1] = sub_19B9A2DE4(a1, v12, a3, a1[1]);
  }
}

void sub_19B9F2000(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  std::mutex::lock(a1);
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
        *a3 = v8 + 48;
        a3[1] = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_19B8750F8(v7);
        goto LABEL_26;
      }

      sub_19B8750F8(v7);
    }

    else if (v8)
    {
      *a3 = v8 + 48;
      a3[1] = 0;
      goto LABEL_26;
    }
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EA10);
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
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "CLTSP,sharedData,tripID not present in CLTripSegmentSharedData array while accessing getAnalyticsInstance,%{public}s,arraySize,%{public}d", buf, 0x12u);
  }

  v12 = sub_19B87DD40();
  if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EA10);
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
    v15 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLTSP,sharedData,tripID not present in CLTripSegmentSharedData array while accessing getAnalyticsInstance,%{public}s,arraySize,%{public}d", &v16, 18);
    sub_19B885924("Generic", 1, 0, 0, "std::shared_ptr<CLTripSegmentAnalytics> CLTripSegmentSharedData::getAnalyticsInstance(const std::string &)", "CoreLocation: %s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  *a3 = 0;
  a3[1] = 0;
LABEL_26:
  std::mutex::unlock(a1);
}

void sub_19B9F22AC(void **result, char *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v10 = result[1];
    v9 = result[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        sub_19B9F250C(result, a2, result[1], &a2[16 * a5]);

        sub_19B9F2594(v6, &v6[2 * a5], a2);
      }

      else
      {
        v18 = (a3 + v16);
        v38 = result[1];
        v39 = v10;
        v33 = result;
        v34 = &v38;
        v19 = v10;
        v35 = &v39;
        if ((a3 + v16) != a4)
        {
          v19 = v10;
          v20 = v10;
          v21 = (a3 + v16);
          do
          {
            *v20 = *v21;
            v22 = v21[1];
            v20[1] = v22;
            if (v22)
            {
              atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
            }

            v21 += 2;
            v20 += 2;
            v19 += 16;
          }

          while (v21 != a4);
          v39 = v20;
        }

        LOBYTE(v36) = 1;
        sub_19B9A3138(&v33);
        result[1] = v19;
        if (v17 >= 1)
        {
          sub_19B9F250C(result, a2, v10, &a2[16 * a5]);
          sub_19B9F2594(v6, v18, a2);
        }
      }
    }

    else
    {
      v11 = *result;
      v12 = a5 + ((v10 - *result) >> 4);
      if (v12 >> 60)
      {
        sub_19B8B8A40();
      }

      v13 = a2 - v11;
      v14 = v9 - v11;
      if (v14 >> 3 > v12)
      {
        v12 = v14 >> 3;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF0)
      {
        v15 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      v37 = result;
      if (v15)
      {
        sub_19B8F0D38(result, v15);
      }

      v23 = 16 * (v13 >> 4);
      v36 = 0;
      v24 = (v23 + 16 * a5);
      v25 = v23;
      do
      {
        *v25 = *v6;
        v26 = v6[1];
        *(v25 + 1) = v26;
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
        }

        v25 += 16;
        v6 += 2;
      }

      while (v25 != v24);
      memcpy(v24, a2, result[1] - a2);
      v27 = *result;
      v28 = &v24[result[1] - a2];
      result[1] = a2;
      v29 = (a2 - v27);
      v30 = (v23 - (a2 - v27));
      memcpy(v30, v27, v29);
      v31 = *result;
      *result = v30;
      result[1] = v28;
      v32 = result[2];
      result[2] = v36;
      v35 = v31;
      v36 = v32;
      v33 = v31;
      v34 = v31;
      sub_19B8F10D0(&v33);
    }
  }
}

void sub_19B9F250C(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(a1 + 8);
  v5 = v4 - a4;
  v6 = a2 + v4 - a4;
  v7 = v4;
  while (v6 < a3)
  {
    *v7 = *v6;
    v7 += 16;
    *v6 = 0;
    *(v6 + 8) = 0;
    v6 += 16;
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v8 = (v4 - 8);
    v9 = a2 - 16;
    do
    {
      v10 = (v9 + v5);
      v11 = *(v9 + v5);
      *v10 = 0;
      v10[1] = 0;
      v12 = *v8;
      *(v8 - 1) = v11;
      if (v12)
      {
        sub_19B8750F8(v12);
      }

      v8 -= 2;
      v5 -= 16;
    }

    while (v5);
  }
}

void sub_19B9F2594(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        sub_19B8750F8(v8);
      }

      v5 += 2;
      a3 += 2;
    }

    while (v5 != a2);
  }
}

uint64_t *sub_19B9F2604(uint64_t *result, uint64_t *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v8 = result;
    v10 = result[1];
    v9 = result[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        sub_19B9F250C(result, a2, result[1], &a2[2 * a5]);
        v18 = &v6[2 * a5];
      }

      else
      {
        result = sub_19B9A30B0(result, (a3 + v16), a4, result[1]);
        v8[1] = result;
        if (v17 < 1)
        {
          return result;
        }

        sub_19B9F250C(v8, a2, v10, &a2[2 * a5]);
        v18 = (v6 + v16);
      }

      return sub_19B8F1C0C(v29, v6, v18, a2);
    }

    v11 = *result;
    v12 = a5 + ((v10 - *result) >> 4);
    if (v12 >> 60)
    {
      sub_19B8B8A40();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v31 = result;
    if (v15)
    {
      sub_19B8F0D38(result, v15);
    }

    v19 = 16 * (v13 >> 4);
    v30 = 0;
    v20 = (v19 + 16 * a5);
    v21 = v19;
    do
    {
      *v21 = *v6;
      v22 = v6[1];
      *(v21 + 1) = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v21 += 16;
      v6 += 2;
    }

    while (v21 != v20);
    memcpy(v20, a2, result[1] - a2);
    v23 = *v8;
    v24 = &v20[v8[1] - a2];
    v8[1] = a2;
    v25 = (a2 - v23);
    v26 = (v19 - (a2 - v23));
    memcpy(v26, v23, v25);
    v27 = *v8;
    *v8 = v26;
    v8[1] = v24;
    v28 = v8[2];
    v8[2] = v30;
    v29[2] = v27;
    v30 = v28;
    v29[0] = v27;
    v29[1] = v27;
    return sub_19B8F10D0(v29);
  }

  return result;
}

void sub_19B9F3234(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_19B9F3290(uint64_t a1, uint64_t *a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v6 = a2[1];
  v7 = *a2;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend_handleMessage_(Weak, v4, &v7, v5);
  if (v8)
  {
    sub_19B8750F8(v8);
  }
}

void sub_19B9F32EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9F3304(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return objc_msgSend_handleInterruption(Weak, v2, v3, v4);
}

void sub_19B9F46A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9F4994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9F4C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9F505C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9F5390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9F56C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B9F5758()
{
  result = os_log_create("com.apple.locationd.Position", "Proximity");
  qword_1EAFE4700 = result;
  return result;
}

void sub_19B9F5A50(uint64_t a1, float64x2_t *a2, int a3)
{
  if (!a3 || (v3 = *(a1 + 144), *(a1 + 136) == v3) || (v4 = vmovn_s64(vmvnq_s8(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(*(v3 - 16), *a2)))), (vorr_s8(v4, vdup_lane_s32(v4, 1)).u32[0] & 1) != 0))
  {
    sub_19B8F1158(a1 + 136, a2);
  }
}

uint64_t sub_19B9F5AA8(double *a1)
{
  v1 = (a1 + 20);
  if (*(a1 + 20) == *(a1 + 21))
  {
    a1[5] = 0.0;
    v4 = *(a1 + 17);
    v5 = *(a1 + 18);
    if (v4 == v5)
    {
      return 0;
    }

    ++qword_1EAFE5B20;
    v12 = 0;
    v13 = 0;
    v11 = xmmword_19BA89490;
    v14 = 0x3FF0000000000000;
    sub_19B9CA9C0(a1 + 20, ((v5 - v4) >> 4) - 1);
    v6 = *(a1 + 17);
    if ((*(a1 + 18) - v6) >= 0x11)
    {
      v7 = 0;
      v8 = 1;
      do
      {
        sub_19BA0C01C(&v11, *(v6 + v7), *(v6 + v7 + 8), *(v6 + v7 + 16), *(v6 + v7 + 24), 0.0);
        v10 = v9;
        sub_19B8F518C(v1, &v10);
        a1[5] = v10 + a1[5];
        ++v8;
        v6 = *(a1 + 17);
        v7 += 16;
      }

      while (v8 < (*(a1 + 18) - v6) >> 4);
    }
  }

  return 1;
}

uint64_t sub_19B9F5BAC(void *a1)
{
  v1 = (a1 + 23);
  if (a1[23] == a1[24])
  {
    v4 = a1[17];
    v5 = a1[18];
    if (v4 == v5)
    {
      return 0;
    }

    v11 = 0;
    v12 = 0;
    v10 = xmmword_19BA89490;
    v13 = 0x3FF0000000000000;
    sub_19B9CA9C0(a1 + 23, ((v5 - v4) >> 4) - 1);
    ++qword_1EAFE5B28;
    v6 = a1[17];
    if ((a1[18] - v6) >= 0x11)
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = sub_19BA0C44C(&v10, *(v6 + v7), *(v6 + v7 + 8), *(v6 + v7 + 16), *(v6 + v7 + 24));
        sub_19B8F518C(v1, &v9);
        ++v8;
        v6 = a1[17];
        v7 += 16;
      }

      while (v8 < (a1[18] - v6) >> 4);
    }
  }

  return 1;
}

double sub_19B9F5C98(void *a1, int a2)
{
  sub_19B9F5BAC(a1);
  v4 = a1[23];
  if (a2 < ((a1[24] - v4) >> 3))
  {
    return *(v4 + 8 * a2);
  }

  result = -1.0;
  if (((a1[18] - a1[17]) >> 4) - 1 > a2)
  {

    return sub_19B9F5D20(a1, a2, a2 + 1);
  }

  return result;
}

double sub_19B9F5D20(uint64_t a1, int a2, unsigned int a3)
{
  result = -1.0;
  if ((a2 & 0x80000000) == 0)
  {
    v6 = *(a1 + 136);
    v7 = (*(a1 + 144) - v6) >> 4;
    if (v7 > a2 && (a3 & 0x80000000) == 0 && v6 && v7 > a3)
    {
      v12 = v3;
      v13 = v4;
      v9 = 0;
      v10 = 0;
      v8 = xmmword_19BA89490;
      v11 = 0x3FF0000000000000;
      return sub_19BA0C44C(&v8, *(v6 + 16 * a2), *(v6 + 16 * a2 + 8), *(v6 + 16 * a3), *(v6 + 16 * a3 + 8));
    }
  }

  return result;
}

uint64_t sub_19B9F5D9C(void *a1)
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
    v7 = sub_19B9F5C98(a1, v4);
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

    ++v4;
    v6 = v8;
  }

  while (v5 != v4);
  return v3;
}

BOOL sub_19B9F5E90(uint64_t a1, int a2, double a3, double a4)
{
  if (((*(a1 + 144) - *(a1 + 136)) & 0xFFFFFFFF0) == 0x20)
  {
    return 0;
  }

  sub_19B9F5AA8(a1);
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
    v23 = sub_19B9F5C98(a1, 0);
    v24 = sub_19B9F5C98(a1, 1);
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

  v15 = sub_19B9F5C98(a1, ~v11);
  v16 = sub_19B9F5C98(a1, -v11);
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

  v19 = sub_19B9F5C98(a1, -2 - v11);
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

  v21 = 1 - v11;
  v22 = a1;
LABEL_36:
  v26 = sub_19B9F5C98(v22, v21);
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

uint64_t sub_19B9F6128(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  result = sub_19B9F6214(a1, a2);
  if (result)
  {
    result = sub_19B9F6278(a1, a2);
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

uint64_t sub_19B9F6214(uint64_t a1, uint64_t *a2)
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

uint64_t sub_19B9F6278(uint64_t a1, uint64_t *a2)
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

uint64_t sub_19B9F62DC(uint64_t a1, uint64_t *a2)
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

uint64_t sub_19B9F6340(uint64_t a1, uint64_t *a2)
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

uint64_t sub_19B9F63A4(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (sub_19B9F62DC(a1, a2))
  {
    return 1;
  }

  return sub_19B9F6278(a1, a2);
}

uint64_t sub_19B9F6408(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (sub_19B9F6340(a1, a2))
  {
    return 1;
  }

  return sub_19B9F6214(a1, a2);
}

uint64_t sub_19B9F646C(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (sub_19B9F62DC(a1, a2))
  {
    return 1;
  }

  return sub_19B9F6214(a1, a2);
}

uint64_t sub_19B9F64D0(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (sub_19B9F6340(a1, a2))
  {
    return 1;
  }

  return sub_19B9F6278(a1, a2);
}

uint64_t sub_19B9F6534(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (sub_19B9F646C(a1, a2))
  {
    return 1;
  }

  return sub_19B9F64D0(a1, a2);
}

uint64_t sub_19B9F6598(uint64_t a1)
{
  v2 = *(a1 + 136);
  v1 = *(a1 + 144);
  if ((v1 - v2) >= 0x11)
  {
    if (v1 - v2 != 32)
    {
      return 1;
    }

    v4 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(*(v1 - 16), *v2)));
    if ((vand_s8(v4, vdup_lane_s32(v4, 1)).u32[0] & 1) == 0)
    {
      return 1;
    }
  }

  result = 0;
  ++qword_1EAFE5B60;
  return result;
}

BOOL sub_19B9F6608(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v164 = a4;
  if (objc_msgSend_valueForKey_(a3, a2, @"roadID", a4))
  {
    v8 = objc_msgSend_valueForKey_(a3, v6, @"roadID", v7);
    *a1 = objc_msgSend_longLongValue(v8, v9, v10, v11);
  }

  if (objc_msgSend_valueForKey_(a3, v6, @"roadClass", v7))
  {
    v14 = objc_msgSend_valueForKey_(a3, v12, @"roadClass", v13);
    *(a1 + 20) = objc_msgSend_intValue(v14, v15, v16, v17);
  }

  if (objc_msgSend_valueForKey_(a3, v12, @"formOfWay", v13))
  {
    v20 = objc_msgSend_valueForKey_(a3, v18, @"formOfWay", v19);
    *(a1 + 24) = objc_msgSend_intValue(v20, v21, v22, v23);
  }

  if (objc_msgSend_valueForKey_(a3, v18, @"travelDirection", v19))
  {
    v26 = objc_msgSend_valueForKey_(a3, v24, @"travelDirection", v25);
    *(a1 + 72) = objc_msgSend_intValue(v26, v27, v28, v29);
  }

  if (objc_msgSend_valueForKey_(a3, v24, @"rampType", v25))
  {
    v32 = objc_msgSend_valueForKey_(a3, v30, @"rampType", v31);
    *(a1 + 76) = objc_msgSend_intValue(v32, v33, v34, v35);
  }

  if (objc_msgSend_valueForKey_(a3, v30, @"speedLimit", v31))
  {
    v38 = objc_msgSend_valueForKey_(a3, v36, @"speedLimit", v37);
    *(a1 + 32) = objc_msgSend_intValue(v38, v39, v40, v41);
  }

  if (objc_msgSend_valueForKey_(a3, v36, @"isDrivable", v37))
  {
    v44 = objc_msgSend_valueForKey_(a3, v42, @"isDrivable", v43);
    *(a1 + 81) = objc_msgSend_BOOLValue(v44, v45, v46, v47);
  }

  if (objc_msgSend_valueForKey_(a3, v42, @"isRoadPedestrianNavigable", v43))
  {
    v50 = objc_msgSend_valueForKey_(a3, v48, @"isRoadPedestrianNavigable", v49);
    v163 = objc_msgSend_BOOLValue(v50, v51, v52, v53);
  }

  else
  {
    v163 = 0;
  }

  if (objc_msgSend_valueForKey_(a3, v48, @"isTunnel", v49))
  {
    v57 = objc_msgSend_valueForKey_(a3, v55, @"isTunnel", v56);
    *(a1 + 18) = objc_msgSend_BOOLValue(v57, v58, v59, v60);
  }

  if (objc_msgSend_valueForKey_(a3, v55, @"isBridge", v56))
  {
    v63 = objc_msgSend_valueForKey_(a3, v61, @"isBridge", v62);
    *(a1 + 19) = objc_msgSend_BOOLValue(v63, v64, v65, v66);
  }

  if (objc_msgSend_valueForKey_(a3, v61, @"isRail", v62))
  {
    v69 = objc_msgSend_valueForKey_(a3, v67, @"isRail", v68);
    *(a1 + 17) = objc_msgSend_BOOLValue(v69, v70, v71, v72);
  }

  if (objc_msgSend_valueForKey_(a3, v67, @"startJunction", v68))
  {
    v75 = objc_msgSend_valueForKey_(a3, v73, @"startJunction", v74);
    *(a1 + 108) = objc_msgSend_intValue(v75, v76, v77, v78);
  }

  if (objc_msgSend_valueForKey_(a3, v73, @"stopJunction", v74))
  {
    v81 = objc_msgSend_valueForKey_(a3, v79, @"stopJunction", v80);
    *(a1 + 112) = objc_msgSend_intValue(v81, v82, v83, v84);
  }

  if (objc_msgSend_valueForKey_(a3, v79, @"startTileBorder", v80))
  {
    v87 = objc_msgSend_valueForKey_(a3, v85, @"startTileBorder", v86);
    *(a1 + 116) = objc_msgSend_BOOLValue(v87, v88, v89, v90);
  }

  if (objc_msgSend_valueForKey_(a3, v85, @"endTileBorder", v86))
  {
    v93 = objc_msgSend_valueForKey_(a3, v91, @"endTileBorder", v92);
    *(a1 + 117) = objc_msgSend_BOOLValue(v93, v94, v95, v96);
  }

  if (objc_msgSend_valueForKey_(a3, v91, @"bikeableSide", v92))
  {
    v99 = objc_msgSend_valueForKey_(a3, v97, @"bikeableSide", v98);
    *(a1 + 88) = objc_msgSend_intValue(v99, v100, v101, v102);
  }

  if (objc_msgSend_valueForKey_(a3, v97, @"walkableSide", v98))
  {
    v105 = objc_msgSend_valueForKey_(a3, v103, @"walkableSide", v104);
    *(a1 + 84) = objc_msgSend_intValue(v105, v106, v107, v108);
  }

  if (objc_msgSend_valueForKey_(a3, v103, @"coordinateCount", v104) && (v111 = objc_msgSend_valueForKey_(a3, v109, @"coordinateCount", v110), v115 = objc_msgSend_intValue(v111, v112, v113, v114), v115 >= 1))
  {
    v116 = v115;
    v117 = 0;
    while (1)
    {
      v118 = objc_autoreleasePoolPush();
      v121 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v119, @"coord%i", v120, v117);
      v124 = objc_msgSend_valueForKey_(a3, v122, v121, v123);
      v127 = objc_msgSend_componentsSeparatedByString_(v124, v125, @",", v126);
      if (objc_msgSend_count(v127, v128, v129, v130) != 3)
      {
        break;
      }

      v133 = objc_msgSend_objectAtIndexedSubscript_(v127, v131, 0, v132);
      objc_msgSend_doubleValue(v133, v134, v135, v136);
      v138 = v137;
      v141 = objc_msgSend_objectAtIndexedSubscript_(v127, v139, 1, v140);
      objc_msgSend_doubleValue(v141, v142, v143, v144);
      v165.f64[0] = v138;
      v165.f64[1] = v145;
      sub_19B9F5A50(a1, &v165, 1);
      v146 = (*(a1 + 144) - *(a1 + 136)) & 0xFFFFFFFF0;
      v149 = objc_msgSend_objectAtIndexedSubscript_(v127, v147, 2, v148);
      objc_msgSend_doubleValue(v149, v150, v151, v152);
      if (v146 == 16)
      {
        v154 = 120;
      }

      else
      {
        v154 = 128;
      }

      *(a1 + v154) = v153;
      objc_autoreleasePoolPop(v118);
      v117 = (v117 + 1);
      if (v116 == v117)
      {
        goto LABEL_46;
      }
    }

    objc_autoreleasePoolPop(v118);
    return 0;
  }

  else
  {
LABEL_46:
    v155 = *(a1 + 17);
    if ((*(a1 + 84) - 1) < 3)
    {
      v156 = 1;
    }

    else
    {
      v156 = v163;
    }

    *(a1 + 80) = v156 & (v155 ^ 1);
    if (v156 & (v155 ^ 1))
    {
      v157 = 1;
    }

    else
    {
      v157 = ((*(a1 + 88) - 1) < 3) & (v155 ^ 1);
    }

    *(a1 + 82) = v157;
    *(a1 + 96) = sub_19B988DA8(*(a1 + 20), *(a1 + 72) != 0);
    v158 = (*(a1 + 17) & 1) == 0 && *(a1 + 72) != 0;
    v161 = *(a1 + 136);
    v160 = a1 + 136;
    v159 = v161;
    *(v160 - 120) = v158;
    v162 = *(v160 + 8) - v161;
    if (v164)
    {
      return (v162 >> 4) > 1;
    }

    else
    {
      result = 1;
      if (v159)
      {
        if ((v162 & 0xFFFFFFFF0) == 0x10)
        {
          v165 = *v159;
          sub_19B8F1158(v160, &v165);
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_19B9F6B4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a3;
  if (a3)
  {
    if (objc_msgSend_coordinateCount(a2, a2, a3, a4) < 2)
    {
      return 0;
    }
  }

  if (objc_msgSend_internalRoadName(a2, a2, a3, a4))
  {
    v11 = objc_msgSend_internalRoadName(a2, v8, v9, v10);
    v15 = objc_msgSend_UTF8String(v11, v12, v13, v14);
    v16 = strlen(v15);
    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_19B890AD4();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v16;
    if (v16)
    {
      memmove(&__dst, v15, v16);
    }

    __dst.__r_.__value_.__s.__data_[v17] = 0;
    std::string::operator=((a1 + 48), &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  v18 = objc_msgSend_roadID(a2, v8, v9, v10);
  v22 = sub_19B964678(a2, v19, v20, v21);
  *a1 = v18;
  *(a1 + 8) = v22;
  *(a1 + 17) = objc_msgSend_isRail(a2, v23, v24, v25);
  *(a1 + 18) = objc_msgSend_isTunnel(a2, v26, v27, v28);
  *(a1 + 19) = objc_msgSend_isBridge(a2, v29, v30, v31);
  *(a1 + 20) = objc_msgSend_roadClass(a2, v32, v33, v34);
  *(a1 + 24) = objc_msgSend_formOfWay(a2, v35, v36, v37);
  v41 = objc_msgSend_travelDirection(a2, v38, v39, v40);
  *(a1 + 72) = v41;
  *(a1 + 16) = (v41 != 0) & ~*(a1 + 17);
  *(a1 + 76) = objc_msgSend_rampType(a2, v42, v43, v44);
  isRoadPedestrianNavigable = objc_msgSend_isRoadPedestrianNavigable(a2, v45, v46, v47);
  v52 = objc_msgSend_walkableSide(a2, v49, v50, v51);
  isRail = objc_msgSend_isRail(a2, v53, v54, v55);
  if ((v52 - 1) < 3)
  {
    v60 = 1;
  }

  else
  {
    v60 = isRoadPedestrianNavigable;
  }

  *(a1 + 80) = v60 & (isRail ^ 1);
  *(a1 + 81) = objc_msgSend_isDrivable(a2, v57, v58, v59);
  v64 = objc_msgSend_isRoadPedestrianNavigable(a2, v61, v62, v63);
  v68 = objc_msgSend_walkableSide(a2, v65, v66, v67);
  v72 = objc_msgSend_isRail(a2, v69, v70, v71);
  if ((((v68 - 1) > 2) & ~v64) != 0 || v72)
  {
    v77 = objc_msgSend_bikeableSide(a2, v73, v74, v75);
    v76 = objc_msgSend_isRail(a2, v78, v79, v80) ^ 1;
    if ((v77 - 1) >= 3)
    {
      LOBYTE(v76) = 0;
    }
  }

  else
  {
    LOBYTE(v76) = 1;
  }

  *(a1 + 82) = v76;
  *(a1 + 84) = objc_msgSend_walkableSide(a2, v73, v74, v75);
  started = objc_msgSend_startJunction(a2, v81, v82, v83);
  *(a1 + 108) = objc_msgSend_junctionIndex(started, v85, v86, v87);
  v91 = objc_msgSend_endJunction(a2, v88, v89, v90);
  *(a1 + 112) = objc_msgSend_junctionIndex(v91, v92, v93, v94);
  v98 = objc_msgSend_startJunction(a2, v95, v96, v97);
  *(a1 + 116) = objc_msgSend_isOnTileBorder(v98, v99, v100, v101);
  v105 = objc_msgSend_endJunction(a2, v102, v103, v104);
  *(a1 + 117) = objc_msgSend_isOnTileBorder(v105, v106, v107, v108);
  v112 = objc_msgSend_roadClass(a2, v109, v110, v111);
  v116 = objc_msgSend_travelDirection(a2, v113, v114, v115) != 0;
  *(a1 + 96) = sub_19B988DA8(v112, v116);
  if (objc_msgSend_speedLimitIsMPH(a2, v117, v118, v119))
  {
    v123 = 0.44704;
  }

  else
  {
    v123 = 0.277778;
  }

  *(a1 + 32) = v123 * objc_msgSend_speedLimit(a2, v120, v121, v122);
  *(a1 + 104) = objc_msgSend_laneCount(a2, v124, v125, v126);
  *(a1 + 88) = objc_msgSend_bikeableSide(a2, v127, v128, v129);
  if (objc_msgSend_coordinateCount(a2, v130, v131, v132))
  {
    v136 = 0;
    v137 = 0;
    do
    {
      v138 = objc_msgSend_coordinates(a2, v133, v134, v135);
      sub_19B9F5A50(a1, (v138 + v136), 1);
      ++v137;
      v136 += 16;
    }

    while (objc_msgSend_coordinateCount(a2, v139, v140, v141) > v137);
  }

  if ((v4 & 1) == 0 && objc_msgSend_coordinateCount(a2, v133, v134, v135) == 1)
  {
    v142 = objc_msgSend_coordinates(a2, v133, v134, v135);
    sub_19B8F1158(a1 + 136, v142);
  }

  if (objc_msgSend_coordinateCount(a2, v133, v134, v135))
  {
    *(a1 + 120) = *(objc_msgSend_coordinates3d(a2, v143, v144, v145) + 16);
    v149 = objc_msgSend_coordinates3d(a2, v146, v147, v148);
    *(a1 + 128) = *(v149 + 24 * objc_msgSend_coordinateCount(a2, v150, v151, v152) - 8);
  }

  return 1;
}

void sub_19B9F6F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9F6F2C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_objectForKey_(a1, a2, @"Authorization", a4);
  if (v5)
  {
    v9 = objc_msgSend_integerValue(v5, v6, v7, v8);
    if (v9 < 5)
    {
      return qword_19BA8D310[v9];
    }

    return 0;
  }

  v11 = objc_msgSend_objectForKey_(a1, v6, @"Authorized", v8);
  if (!v11)
  {
    v15 = sub_19B9F7A74(a1, 1, v13, v14) - 3;
    if (v15 < 6)
    {
      return qword_19BA8D338[v15];
    }

    return 0;
  }

  if (objc_msgSend_BOOLValue(v11, v12, v13, v14))
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_19B9F6FCC(void *a1, double a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  v8 = 0;
  v9 = off_1E753EA18;
  do
  {
    v10 = dbl_19BA8D298[v7];
    v11 = *v9;
    v12 = objc_msgSend_objectForKey_(a1, a3, *(v9 - 1), a5);
    v15 = objc_msgSend_objectForKey_(a1, v13, v11, v14);
    v17 = v15;
    if (v12)
    {
      v18 = v15 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      objc_msgSend_doubleValue(v12, a3, v16, a5);
      v20 = v19;
      objc_msgSend_doubleValue(v17, v21, v22, v23);
      if (v20 <= v24)
      {
        v25 = 1;
        goto LABEL_15;
      }

      v17 = 0;
    }

    v25 = v17 != 0;
    if (v12)
    {
      v26 = v17 == 0;
    }

    else
    {
      v26 = 0;
    }

    if (v26)
    {
LABEL_20:
      v8 = dword_19BA8D2E8[v7] | v8;
      goto LABEL_21;
    }

LABEL_15:
    v27 = a2 - v10;
    if (v27 > 0.0 && v25)
    {
      v29 = objc_msgSend_date(MEMORY[0x1E695DF00], a3, v16, a5);
      objc_msgSend_timeIntervalSinceReferenceDate(v29, v30, v31, v32);
      v34 = v33;
      objc_msgSend_doubleValue(v17, v35, v36, v37);
      if (vabdd_f64(v38, v34) < v27)
      {
        goto LABEL_20;
      }
    }

LABEL_21:
    ++v7;
    v9 += 2;
  }

  while (v7 != 10);
  return v8;
}

id sub_19B9F7100(void *a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = objc_msgSend_allKeys(a1, v2, v3, v4);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v40, v50, 16);
  if (!v7)
  {
    goto LABEL_31;
  }

  v11 = v7;
  v12 = 0;
  v13 = *v41;
  *&v10 = 68289282;
  v38 = v10;
  do
  {
    v14 = 0;
    do
    {
      if (*v41 != v13)
      {
        objc_enumerationMutation(v5);
      }

      v15 = *(*(&v40 + 1) + 8 * v14);
      objc_msgSend_objectForKeyedSubscript_(a1, v8, v15, v9, v38);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v19 = objc_msgSend_objectForKeyedSubscript_(a1, v17, v15, v18);
      if (isKindOfClass)
      {
        v22 = objc_msgSend_objectAtIndexedSubscript_(v19, v20, 1, v21);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_setObject_forKeyedSubscript_(v39, v23, v22, v15);
        }

        else
        {
          if (qword_1ED519078 != -1)
          {
            dispatch_once(&qword_1ED519078, &unk_1F0E6EA70);
          }

          v28 = qword_1ED519080;
          if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
          {
            *buf = v38;
            v45 = 0;
            v46 = 2082;
            v47 = "";
            v48 = 2114;
            v49 = v22;
            _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Invalid RemoteUsageDictionary. Found NSArray value where index 1 is not a timestamp, arr[1]:%{public, location:escape_only}@}", buf, 0x1Cu);
            if (qword_1ED519078 != -1)
            {
              dispatch_once(&qword_1ED519078, &unk_1F0E6EA70);
            }
          }

          v29 = qword_1ED519080;
          if (os_signpost_enabled(qword_1ED519080))
          {
            *buf = v38;
            v45 = 0;
            v46 = 2082;
            v47 = "";
            v48 = 2114;
            v49 = v22;
            _os_signpost_emit_with_name_impl(&dword_19B873000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid RemoteUsageDictionary. Found NSArray value where index 1 is not a timestamp", "{msg%{public}.0s:Invalid RemoteUsageDictionary. Found NSArray value where index 1 is not a timestamp, arr[1]:%{public, location:escape_only}@}", buf, 0x1Cu);
          }
        }

        v12 = 1;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = objc_msgSend_objectForKeyedSubscript_(a1, v24, v15, v25);
          objc_msgSend_setObject_forKeyedSubscript_(v39, v27, v26, v15);
        }

        else
        {
          if (qword_1ED519078 != -1)
          {
            dispatch_once(&qword_1ED519078, &unk_1F0E6EA70);
          }

          v30 = qword_1ED519080;
          if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
          {
            v33 = objc_msgSend_objectForKeyedSubscript_(a1, v31, v15, v32);
            *buf = v38;
            v45 = 0;
            v46 = 2082;
            v47 = "";
            v48 = 2114;
            v49 = v33;
            _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Invalid RemoteUsageDictionary. Found non-NSArray value which is not a timestamp, value:%{public, location:escape_only}@}", buf, 0x1Cu);
            if (qword_1ED519078 != -1)
            {
              dispatch_once(&qword_1ED519078, &unk_1F0E6EA70);
            }
          }

          v34 = qword_1ED519080;
          if (os_signpost_enabled(qword_1ED519080))
          {
            v35 = objc_msgSend_objectForKeyedSubscript_(a1, v8, v15, v9);
            *buf = v38;
            v45 = 0;
            v46 = 2082;
            v47 = "";
            v48 = 2114;
            v49 = v35;
            _os_signpost_emit_with_name_impl(&dword_19B873000, v34, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid RemoteUsageDictionary. Found non-NSArray value which is not a timestamp", "{msg%{public}.0s:Invalid RemoteUsageDictionary. Found non-NSArray value which is not a timestamp, value:%{public, location:escape_only}@}", buf, 0x1Cu);
          }
        }
      }

      ++v14;
    }

    while (v11 != v14);
    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v40, v50, 16);
    v11 = v36;
  }

  while (v36);
  if (v12)
  {
    return v39;
  }

LABEL_31:

  return a1;
}

uint64_t sub_19B9F756C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v6 = sub_19B9F6F2C(a1, a2, a3, a4);
  v10 = 60.0;
  if (v4 != 2)
  {
    v10 = 0.0;
  }

  if (v4 == 1)
  {
    v10 = 10.0;
  }

  if ((v6 & 6) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = -1.0;
  }

  v12 = sub_19B9F6FCC(a1, v11, v7, v8, v9);
  v15 = objc_msgSend_objectForKeyedSubscript_(a1, v13, 0x1F0E73D40, v14);
  v16 = sub_19B9F7100(v15);
  if (v16)
  {
    LODWORD(v16) = sub_19B9F6FCC(v16, v11, v17, v18, v19);
  }

  if (((v16 | v12) & 0x240) != 0)
  {
    return 2;
  }

  if (!(v16 | v12))
  {
    return 0;
  }

  v21 = objc_msgSend_objectForKeyedSubscript_(a1, v17, 0x1F0E73840, v19);
  objc_opt_class();
  v25 = (objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_intValue(v21, v22, v23, v24) != 0;
  v26 = objc_msgSend_objectForKeyedSubscript_(a1, v22, 0x1F0E73D20, v24);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = objc_msgSend_BOOLValue(v26, v27, v28, v29) ^ 1;
  }

  else
  {
    v30 = 1;
  }

  return (v25 | v30) & 1;
}

BOOL sub_19B9F76B4(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_objectForKeyedSubscript_(a1, a2, 0x1F0E73D40, a4);
  v6 = sub_19B9F7100(v5);
  if (objc_msgSend_objectForKey_(a1, v7, @"FenceTimeStarted", v8) || objc_msgSend_objectForKeyedSubscript_(v6, v9, @"FenceTimeStarted", v10))
  {
    return 1;
  }

  v14 = 0;
  do
  {
    v15 = v14;
    if (v14 == 11)
    {
      break;
    }

    v16 = off_1E753E9B0[v14 + 1];
    if (objc_msgSend_objectForKey_(a1, v11, v16, v12))
    {
      break;
    }

    v19 = objc_msgSend_objectForKeyedSubscript_(v6, v17, v16, v18);
    v14 = v15 + 1;
  }

  while (!v19);
  return v15 < 0xB;
}

uint64_t sub_19B9F7774(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_objectForKey_(a1, a2, @"SupportedAuthorizationMask", a4);
  if (v4)
  {
    return objc_msgSend_integerValue(v4, v5, v6, v7) & 7;
  }

  else
  {
    return 5;
  }
}

void *sub_19B9F77D4(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_objectForKey_(a1, a2, @"IncidentalUseMode", a4);
  if (result)
  {
    result = objc_msgSend_integerValue(result, v5, v6, v7);
    if (result >= 4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_19B9F7810(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_objectForKey_(a1, a2, @"Relevant", a4);
  if (result)
  {

    return objc_msgSend_BOOLValue(result, v5, v6, v7);
  }

  return result;
}

uint64_t sub_19B9F784C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_objectForKey_(a1, a2, @"BackgroundIndicatorEnabled", a4);
  if (!v4)
  {
    return 1;
  }

  return objc_msgSend_BOOLValue(v4, v5, v6, v7);
}

uint64_t sub_19B9F788C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_19B9F7904(a1, a2, a3, a4);
  v8 = objc_msgSend_objectForKeyedSubscript_(a1, v6, 0x1F0E73D40, v7);
  v9 = sub_19B9F7100(v8);
  if (!v9)
  {
    v13 = 0;
    if (v5)
    {
      goto LABEL_3;
    }

    return v13;
  }

  v13 = sub_19B9F7904(v9, v10, v11, v12);
  if (!v5)
  {
    return v13;
  }

LABEL_3:

  return MEMORY[0x1EEE66B58](v5, sel_laterDate_, v13, v12);
}

uint64_t sub_19B9F7904(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 2.22507386e-308;
  while (2)
  {
    v8 = &off_1E753EA10[v5 + 1];
    v9 = v5;
    while ((v9 | 8) == 0xA)
    {
LABEL_11:
      v8 += 2;
      v16 = v9 > 0x11;
      v9 += 2;
      if (v16)
      {
        if ((v6 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_20;
      }
    }

    v10 = objc_msgSend_objectForKey_(a1, a2, *(v8 - 1), a4);
    v13 = objc_msgSend_objectForKey_(a1, v11, *v8, v12);
    v14 = v13;
    if (v10)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      if (v10)
      {
        break;
      }

      if (v13)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    objc_msgSend_doubleValue(v10, a2, a3, a4);
    v18 = v17;
    objc_msgSend_doubleValue(v14, v19, v20, v21);
    if (v18 <= v22)
    {
LABEL_15:
      objc_msgSend_doubleValue(v14, a2, a3, a4);
      if (v23 > v7)
      {
        v7 = v23;
      }

      v5 = v9 + 2;
      v6 = 1;
      if (v9 > 0x11)
      {
LABEL_20:
        v24 = MEMORY[0x1E695DF00];

        return objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v24, a2, a3, a4, v7);
      }

      continue;
    }

    break;
  }

  v26 = MEMORY[0x1E695DF00];

  return objc_msgSend_date(v26, a2, a3, a4);
}

uint64_t sub_19B9F7A74(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v6 = objc_msgSend_objectForKey_(a1, a2, @"BundleId", a4);
  v9 = objc_msgSend_objectForKey_(a1, v7, @"BundlePath", v8);
  if (v6)
  {
    if (!v4)
    {
      return 1;
    }

    if (objc_msgSend_objectForKey_(a1, v10, @"Registered", v11))
    {
      return 1;
    }

    if (objc_msgSend_objectForKey_(a1, v12, @"Authorized", v13))
    {
      return 1;
    }

    result = objc_msgSend_objectForKey_(a1, v14, @"Authorization", v15);
    if (result)
    {
      return 1;
    }
  }

  else
  {
    v17 = v9;
    if (v9)
    {
      if (sub_19B8B866C(v9))
      {
        return 4;
      }

      else if (sub_19B8B86FC(v17))
      {
        return 5;
      }

      else if (sub_19B8B8754(v17))
      {
        return 7;
      }

      else if (sub_19B8B8414(v17, v18, v19, v20))
      {
        return 8;
      }

      else if (sub_19B8B83AC(v17, v21, v22, v23))
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

os_log_t sub_19B9F7B80()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1ED519080 = result;
  return result;
}

BOOL sub_19B9F7DBC(uint64_t a1, const __CFString *a2)
{
  v4 = a1 + 48;
  (*(*(a1 + 48) + 16))(a1 + 48);
  v5 = sub_19B9F7EA8(*a1, a2, @"CLSystemService");
  v6 = v5;
  if (v5)
  {
    v7 = CFBooleanGetValue(v5) != 0;
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  (*(*v4 + 24))(v4);
  return v7;
}

void sub_19B9F7E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

void *sub_19B9F7EA8(CFMutableDictionaryRef theDict, const __CFString *key, const __CFString *a3)
{
  value = 0;
  if (!key)
  {
    goto LABEL_10;
  }

  if (CFDictionaryGetValueIfPresent(theDict, key, &value))
  {
    if (value)
    {
      CFRetain(value);
      goto LABEL_7;
    }

LABEL_10:
    v7 = *MEMORY[0x1E695E4C0];
    CFDictionarySetValue(theDict, key, *MEMORY[0x1E695E4C0]);
    return v7;
  }

  v6 = sub_19B8B8308(key, a3);
  value = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  CFDictionarySetValue(theDict, key, v6);
LABEL_7:
  v7 = value;
  if (!value)
  {
    goto LABEL_10;
  }

  v8 = CFGetTypeID(value);
  if (v8 != CFBooleanGetTypeID())
  {
    CFRelease(v7);
    goto LABEL_10;
  }

  return v7;
}

BOOL sub_19B9F7F78(uint64_t a1, const __CFString *a2)
{
  v3 = a1 + 48;
  (*(*(a1 + 48) + 16))(a1 + 48);
  v4 = sub_19B9F7EA8(*(v3 - 32), a2, @"CLIsFindMyiPhone");
  v5 = v4;
  if (v4)
  {
    v6 = CFBooleanGetValue(v4) != 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  (*(*v3 + 24))(v3);
  return v6;
}

void sub_19B9F804C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

BOOL sub_19B9F8060(uint64_t a1, const __CFString *a2)
{
  v3 = a1 + 48;
  (*(*(a1 + 48) + 16))(a1 + 48);
  v4 = sub_19B9F7EA8(*(v3 - 24), a2, @"CLIsCoreRoutine");
  v5 = v4;
  if (v4)
  {
    v6 = CFBooleanGetValue(v4) != 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  (*(*v3 + 24))(v3);
  return v6;
}

void sub_19B9F8134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

BOOL sub_19B9F8148(uint64_t a1, const __CFString *a2)
{
  v3 = a1 + 48;
  (*(*(a1 + 48) + 16))(a1 + 48);
  v4 = sub_19B9F7EA8(*(v3 - 8), a2, @"CLEmergencyService");
  v5 = v4;
  if (v4)
  {
    v6 = CFBooleanGetValue(v4) != 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  (*(*v3 + 24))(v3);
  return v6;
}

void sub_19B9F821C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

void sub_19B9FBE64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  if (v10)
  {
    sub_19B8750F8(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9FBEA8(uint64_t a1, CLConnectionMessage **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "received service event callback kCLConnectionMessageMiLoServiceEvent", buf, 2u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v20[0] = 0;
    v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 0, "received service event callback kCLConnectionMessageMiLoServiceEvent", v20, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _registerForMiLoServiceEvents]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v15 = objc_msgSend_setWithObjects_(v7, v13, v8, v14, v9, v10, v11, v12, 0);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v15);
  return objc_msgSend__handleDaemonEvent_(*(a1 + 32), v17, DictionaryOfClasses, v18);
}

void sub_19B9FC294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a11)
  {
    sub_19B8750F8(a11);
  }

  if (v20)
  {
    sub_19B8750F8(v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9FC434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9FC458(uint64_t a1, CLConnectionMessage **a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "received callback for kCLConnectionMessageMiLoPredictionEventUpdate", buf, 2u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v16[0] = 0;
    v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 0, "received callback for kCLConnectionMessageMiLoPredictionEventUpdate", v16, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _setHandlerForMiLoPredictionEvents]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v11 = objc_msgSend_setWithObjects_(v7, v9, v8, v10, 0);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v11);
  return objc_msgSend__handlePredictionUpdateEvent_(*(a1 + 32), v13, DictionaryOfClasses, v14);
}

void sub_19B9FC75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9FC8DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9FC900(uint64_t a1, CLConnectionMessage **a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "received callback for kCLConnectionMessageMiLoServiceDebugResponse", buf, 2u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v16[0] = 0;
    v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 0, "received callback for kCLConnectionMessageMiLoServiceDebugResponse", v16, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _registerForMiLoDebugResponseEvents]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v11 = objc_msgSend_setWithObjects_(v7, v9, v8, v10, 0);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v11);
  return objc_msgSend__handleDebugResponseEvent_(*(a1 + 32), v13, DictionaryOfClasses, v14);
}

void sub_19B9FCC04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9FCD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9FCDA8(uint64_t a1, CLConnectionMessage **a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "received callback for kCLConnectionMessageMiLoGenericEventResponse", buf, 2u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v16[0] = 0;
    v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 0, "received callback for kCLConnectionMessageMiLoGenericEventResponse", v16, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _registerForMiLoGenericEvents]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v11 = objc_msgSend_setWithObjects_(v7, v9, v8, v10, 0);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v11);
  return objc_msgSend__handleGenericEvent_(*(a1 + 32), v13, DictionaryOfClasses, v14);
}

void sub_19B9FD0AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9FD308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9FD32C(uint64_t a1, CLConnectionMessage **a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "received callback for kCLConnectionMessageMiLoConnectionStatusEvent", buf, 2u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v16[0] = 0;
    v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 0, "received callback for kCLConnectionMessageMiLoConnectionStatusEvent", v16, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _registerForMiLoConnectionStatusEvents]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v11 = objc_msgSend_setWithObjects_(v7, v9, v8, v10, 0);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v11);
  return objc_msgSend__handleMiLoConnectionStatusEvent_(*(a1 + 32), v13, DictionaryOfClasses, v14);
}

void sub_19B9FD630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9FDEC8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  v7 = *(v5 + 40);
  v8 = objc_msgSend_exportDatabaseTablesResult(*(a1 + 40), a2, a3, a4);
  v12 = objc_msgSend_exportDir(v8, v9, v10, v11);
  v16 = objc_msgSend_exportDatabaseTablesResult(*(a1 + 40), v13, v14, v15);
  objc_msgSend_fileName(v16, v17, v18, v19);
  v23 = objc_msgSend_exportDatabaseTablesResult(*(a1 + 40), v20, v21, v22);
  objc_msgSend_sandboxExtensionTok(v23, v24, v25, v26);

  return MEMORY[0x1EEE66B58](v6, sel_miLoConnection_didExportMiLoDatabaseWithExportDir_withFileName_withSandboxExtensionToken_, v7, v12);
}

uint64_t sub_19B9FDFE0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  v7 = *(v5 + 40);
  v8 = objc_msgSend_eventType(*(a1 + 40), a2, a3, a4);
  objc_msgSend_genericEventDescription(*(a1 + 40), v9, v10, v11);
  objc_msgSend_error(*(a1 + 40), v12, v13, v14);

  return MEMORY[0x1EEE66B58](v6, sel_miLoConnection_didGetGenericEventNotificationWithEventType_withDescription_withError_, v7, v8);
}

__CFString *sub_19BA007C0(unint64_t a1)
{
  if (a1 > 0x24)
  {
    return @"No error";
  }

  else
  {
    return off_1E753EB78[a1];
  }
}

void sub_19BA01D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  if (v15)
  {
    sub_19B8750F8(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA01DA0(uint64_t a1, CLConnectionMessage **a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for creating a service}", buf, 0x12u);
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v5, v7, v6, v8, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9);
    if (DictionaryOfClasses)
    {
      return objc_msgSend__handleDaemonEvent_(*(a1 + 32), v11, DictionaryOfClasses, v12);
    }
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v14 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to create a service, empty response}", buf, 0x12u);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }
  }

  v15 = qword_1EAFE4730;
  if (os_signpost_enabled(qword_1EAFE4730))
  {
    *buf = 68289026;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to create a service, empty response", "{msg%{public}.0s:SPI request, failed to create a service, empty response}", buf, 0x12u);
  }

  v17 = MEMORY[0x1E696ABC0];
  v23 = *MEMORY[0x1E696A578];
  v24 = @"Internal error";
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, &v24, &v23, 1);
  v20 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v19, @"kCLErrorDomainPrivate", 0, v18);
  return objc_msgSend__notifyClientCreateServiceDidFailWithError_(*(a1 + 32), v21, v20, v22);
}

void sub_19BA0236C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_19B8750F8(a17);
  }

  if (v17)
  {
    sub_19B8750F8(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA02398(uint64_t a1, CLConnectionMessage **a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for deleting a service}", buf, 0x12u);
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v5, v7, v6, v8, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9);
    if (DictionaryOfClasses)
    {
      return objc_msgSend__handleDaemonEvent_(*(a1 + 32), v11, DictionaryOfClasses, v12);
    }
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v14 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to delete a service with empty response}", buf, 0x12u);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }
  }

  v15 = qword_1EAFE4730;
  if (os_signpost_enabled(qword_1EAFE4730))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to delete a service with empty response", "{msg%{public}.0s:SPI request, failed to delete a service with empty response}", buf, 0x12u);
  }

  v17 = MEMORY[0x1E696ABC0];
  v22 = *MEMORY[0x1E696A578];
  v23 = @"Internal error";
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, &v23, &v22, 1);
  v20 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v19, @"kCLErrorDomainPrivate", 0, v18);
  return objc_msgSend__notifyClientDeleteServiceDidFailWithServiceIdentifier_withError_(*(a1 + 32), v21, *(a1 + 40), v20);
}

void sub_19BA02980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a16)
  {
    sub_19B8750F8(a16);
  }

  sub_19B8750F8(v24);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA029D4(uint64_t a1, CLConnectionMessage **a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for query my services}", buf, 0x12u);
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v5, v7, v6, v8, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9);
    if (DictionaryOfClasses)
    {
      return objc_msgSend__handleDaemonEvent_(*(a1 + 32), v11, DictionaryOfClasses, v12);
    }
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v14 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to query my services with empty response}", buf, 0x12u);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }
  }

  v15 = qword_1EAFE4730;
  if (os_signpost_enabled(qword_1EAFE4730))
  {
    *buf = 68289026;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to query my services with empty response", "{msg%{public}.0s:SPI request, failed to query my services with empty response}", buf, 0x12u);
  }

  v17 = MEMORY[0x1E696ABC0];
  v23 = *MEMORY[0x1E696A578];
  v24 = @"Internal error";
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, &v24, &v23, 1);
  v20 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v19, @"kCLErrorDomainPrivate", 0, v18);
  return objc_msgSend__notifyClientQueryServiceDidFailWithError_(*(a1 + 32), v21, v20, v22);
}

void sub_19BA03070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_19B8750F8(a18);
  }

  if (v18)
  {
    sub_19B8750F8(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA0309C(uint64_t a1, CLConnectionMessage **a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "received response message for query MiLo connection status", buf, 2u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v26[0] = 0;
    v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 0, "received response message for query MiLo connection status", v26, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _queryMiLoConnectionStatus]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v11 = objc_msgSend_setWithObjects_(v7, v9, v8, v10, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v11);
    if (DictionaryOfClasses)
    {
      return objc_msgSend__handleDaemonEvent_(*(a1 + 32), v13, DictionaryOfClasses, v14);
    }
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v16 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "SPI request, failed to query MiLo connection status with empty response", buf, 2u);
  }

  v17 = sub_19B87DD40();
  if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v26[0] = 0;
    v19 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4730, 16, "SPI request, failed to query MiLo connection status with empty response", v26, 2);
    sub_19B885924("Generic", 1, 0, 0, "[CLMiLoConnectionInternal _queryMiLoConnectionStatus]_block_invoke", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  v20 = MEMORY[0x1E696ABC0];
  v27 = *MEMORY[0x1E696A578];
  v28 = @"Internal error";
  v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, &v28, &v27, 1);
  v23 = objc_msgSend_errorWithDomain_code_userInfo_(v20, v22, @"kCLErrorDomainPrivate", 0, v21);
  return objc_msgSend__notifyClientQueryMiLoConnectionStatusDidFailWithError_(*(a1 + 32), v24, v23, v25);
}

void sub_19BA03978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B8750F8(a16);
  }

  v18 = *(v16 - 72);
  if (v18)
  {
    sub_19B8750F8(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA039A4(uint64_t a1, CLConnectionMessage **a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    *buf = 68289026;
    v36 = 0;
    v37 = 2082;
    v38 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received response message for connect to a service}", buf, 0x12u);
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v5, v7, v6, v8, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9)) != 0)
  {
    v13 = DictionaryOfClasses;
    v14 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v11, 0x1F0E73DA0, v12);
    if ((objc_msgSend_isEqualToNumber_(v14, v15, &unk_1F0E8CD90, v16) & 1) == 0)
    {
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v19 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
      {
        *buf = 68289026;
        v36 = 0;
        v37 = 2082;
        v38 = "";
        _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:connect to service failed, set connectedServiceIdentifier to nil}", buf, 0x12u);
      }

      *(*(a1 + 32) + 48) = 0;
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v20 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
      {
        *buf = 68289026;
        v36 = 0;
        v37 = 2082;
        v38 = "";
        _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_INFO, "{msg%{public}.0s:connect to service failed, unset handler for prediction updates}", buf, 0x12u);
      }

      objc_msgSend__unsetHandlerForMiLoPredictionEvents(*(a1 + 32), v21, v22, v23);
    }

    return objc_msgSend__handleDaemonEvent_(*(a1 + 32), v17, v13, v18);
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v25 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v36 = 0;
      v37 = 2082;
      v38 = "";
      _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to connect to services with empty response}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v26 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v36 = 0;
      v37 = 2082;
      v38 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to connect to services with empty response", "{msg%{public}.0s:SPI request, failed to connect to services with empty response}", buf, 0x12u);
    }

    v28 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A578];
    v34 = @"Internal error";
    v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v27, &v34, &v33, 1);
    v31 = objc_msgSend_errorWithDomain_code_userInfo_(v28, v30, @"kCLErrorDomainPrivate", 0, v29);
    return objc_msgSend__notifyClientConnectServiceDidFailWithServiceIdentifier_withError_(*(a1 + 32), v32, *(a1 + 40), v31);
  }
}
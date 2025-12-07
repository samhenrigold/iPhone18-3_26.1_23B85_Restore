void sub_26236ACF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (*v26)
  {
    operator delete(*v26);
  }

  v28 = *(v26 + 24);
  if (v28)
  {
    operator delete(v28);
  }

  if (v25)
  {
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

id sub_26236ADAC(void *a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_initWithArray_(v7, v8, v5);
  if (objc_msgSend_count(v6, v10, v11))
  {
    if (a3)
    {
      v13 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CBEE30];
      v18[0] = @"Outlier Room is found!";
      v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v18, &v17, 1);
      *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"com.apple.RoomScanCoreError", -1001, v14);
    }

    objc_msgSend_removeObjectsAtIndexes_(v9, v12, v6);
  }

  return v9;
}

void sub_26236AF10(uint64_t a1, void *a2)
{
  v448 = *MEMORY[0x277D85DE8];
  v382 = a2;
  sub_262378DD8(a1 + 328);
  sub_262378DD8(a1 + 368);
  sub_262378DD8(a1 + 408);
  *(a1 + 288) = *(a1 + 280);
  *(a1 + 312) = *(a1 + 304);
  *(a1 + 456) = *(a1 + 448);
  if (*(a1 + 496))
  {
    v3 = *(a1 + 488);
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    *(a1 + 488) = 0;
    v5 = *(a1 + 480);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        *(*(a1 + 472) + 8 * i) = 0;
      }
    }

    *(a1 + 496) = 0;
  }

  sub_262378DD8(a1 + 512);
  if (*(a1 + 600))
  {
    v7 = *(a1 + 592);
    if (v7)
    {
      do
      {
        v8 = *v7;
        operator delete(v7);
        v7 = v8;
      }

      while (v8);
    }

    *(a1 + 592) = 0;
    v9 = *(a1 + 584);
    if (v9)
    {
      for (j = 0; j != v9; ++j)
      {
        *(*(a1 + 576) + 8 * j) = 0;
      }
    }

    *(a1 + 600) = 0;
  }

  v11 = *(a1 + 624);
  v12 = *(a1 + 616);
  while (v11 != v12)
  {
    v11 = sub_2621C74C4(v11 - 40);
  }

  *(a1 + 624) = v12;
  v13 = *(a1 + 560);
  v14 = *(a1 + 552);
  while (v13 != v14)
  {
    v13 = sub_2621C7004(v13 - 5);
  }

  *(a1 + 560) = v14;
  *(a1 + 656) = 0;
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = *(a1 + 640);
  *(a1 + 640) = v15;

  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = *(a1 + 648);
  *(a1 + 648) = v17;

  v19 = v382;
  v22 = objc_msgSend_array(MEMORY[0x277CBEB18], v20, v21);
  v442 = 0u;
  v441 = 0u;
  v440 = 0u;
  v439 = 0u;
  v23 = v19;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v439, v443, 16);
  v390 = a1;
  if (v27)
  {
    v28 = *v440;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v440 != v28)
        {
          objc_enumerationMutation(v23);
        }

        v30 = objc_msgSend_walls(*(*(&v439 + 1) + 8 * k), v25, v26, v382);
        objc_msgSend_addObjectsFromArray_(v22, v31, v30);
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v439, v443, 16);
    }

    while (v27);
  }

  v383 = v23;
  v32 = *(a1 + 256);
  *(a1 + 256) = v22;

  v404 = 0u;
  v405 = 0u;
  v402 = 0u;
  v403 = 0u;
  v33 = *(a1 + 256);
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v402, v431, 16);
  if (v35)
  {
    v36 = *v403;
    do
    {
      for (m = 0; m != v35; ++m)
      {
        if (*v403 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v402 + 1) + 8 * m);
        *&v39 = sub_262375C50(v38);
        *v443 = v39;
        sub_2621D9F60(v390 + 280, v443);
        v41 = sub_26223FCEC(v38).n128_u64[0];
        v43 = vsub_f32(v41, v42);
        v44 = sqrtf(vaddv_f32(vmul_f32(v43, v43)));
        v46 = *(v390 + 312);
        v45 = *(v390 + 320);
        if (v46 >= v45)
        {
          v48 = *(v390 + 304);
          v49 = v46 - v48;
          v50 = (v46 - v48) >> 2;
          v51 = v50 + 1;
          if ((v50 + 1) >> 62)
          {
            sub_2621CBEB0();
          }

          v52 = v45 - v48;
          if (v52 >> 1 > v51)
          {
            v51 = v52 >> 1;
          }

          if (v52 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v53 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v53 = v51;
          }

          if (v53)
          {
            sub_2621C7F54(v53);
          }

          v54 = (v46 - v48) >> 2;
          v55 = (4 * v50);
          v56 = (4 * v50 - 4 * v54);
          *v55 = v44;
          v47 = v55 + 1;
          memcpy(v56, v48, v49);
          v57 = *(v390 + 304);
          *(v390 + 304) = v56;
          *(v390 + 312) = v47;
          *(v390 + 320) = 0;
          if (v57)
          {
            operator delete(v57);
          }
        }

        else
        {
          *v46 = v44;
          v47 = v46 + 1;
        }

        *(v390 + 312) = v47;
      }

      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v40, &v402, v431, 16);
    }

    while (v35);
  }

  v58 = v23;
  v400 = 0u;
  v401 = 0u;
  v398 = 0u;
  v399 = 0u;
  v59 = *(v390 + 256);
  v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v398, v430, 16);
  if (v61)
  {
    v62 = *v399;
    do
    {
      for (n = 0; n != v61; ++n)
      {
        if (*v399 != v62)
        {
          objc_enumerationMutation(v59);
        }

        v64 = *(*(&v398 + 1) + 8 * n);
        v69 = objc_msgSend_polygonSize(v64, v65, v66);
        v70 = 1.0;
        if (v69 >= 3)
        {
          objc_msgSend_quad(v64, v67, v68);
          v391 = v71;
          objc_msgSend_quad(v64, v72, v73);
          v75 = vsubq_f32(v74, v391);
          v76 = vmulq_f32(v75, v75);
          v77 = vaddv_f32(*v76.f32);
          if (sqrtf(v76.f32[2] + v77) >= 0.00001)
          {
            v384 = v77;
            v386 = v74;
            obja = *v75.f32;
            v439 = 0uLL;
            *&v440 = 0;
            sub_26220F5A0(&v439, v69);
            v80 = 0;
            v81.i64[0] = 0x3F0000003F000000;
            v81.i64[1] = 0x3F0000003F000000;
            v392 = vmulq_f32(vaddq_f32(v391, v386), v81);
            *v81.f32 = vrsqrte_f32(LODWORD(v384));
            *v81.f32 = vmul_f32(*v81.f32, vrsqrts_f32(LODWORD(v384), vmul_f32(*v81.f32, *v81.f32)));
            v82 = vmul_n_f32(obja, vmul_f32(*v81.f32, vrsqrts_f32(LODWORD(v384), vmul_f32(*v81.f32, *v81.f32))).f32[0]);
            do
            {
              v83 = vsubq_f32(*(objc_msgSend_polygon(v64, v78, v79, v382) + 16 * v80), v392);
              v84 = vmul_f32(v82, *v83.f32);
              LODWORD(v84) = vadd_f32(v84, vdup_lane_s32(v84, 1)).u32[0];
              HIDWORD(v84) = v83.i32[2];
              v443[0] = v84;
              sub_2621CBA84(&v439, v443);
              ++v80;
            }

            while (v69 != v80);
            v437 = 0;
            __p = 0;
            v438 = 0;
            sub_26220F5A0(&__p, 4uLL);
            for (ii = 0; ii != 8; ii += 2)
            {
              objc_msgSend_quad(v64, v85, v86);
              LODWORD(v443[1]) = v88;
              LODWORD(v443[3]) = v89;
              v443[0] = v90;
              v443[2] = v91;
              v445 = v92;
              v447 = v93;
              v444 = v94;
              v446 = v95;
              v96 = vsubq_f32(*&v443[ii], v392);
              v97 = vmul_f32(v82, *v96.f32);
              v97.i32[0] = vadd_f32(v97, vdup_lane_s32(v97, 1)).u32[0];
              v97.i32[1] = v96.i32[2];
              v435[0] = v97;
              sub_2621CBA84(&__p, v435);
            }

            v99 = v439;
            LODWORD(v98) = 1008981770;
            sub_26233E420(v443, v439, *(&v439 + 1), &__p, v98);
            v100 = v443[0];
            v101 = v443[1];
            v102 = v443[2];
            if (__p)
            {
              operator delete(__p);
            }

            if (v99)
            {
              operator delete(v99);
            }

            v70 = v100 / (v102 + v101 - v100);
            v58 = v383;
          }
        }

        if (v70 > *(v390 + 168) && v64 != 0)
        {
          v64[2] = v64[1];
          v64[11] = v64[10];
          v64[5] = v64[4];
          v64[8] = v64[7];
        }
      }

      v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v103, &v398, v430, 16);
    }

    while (v61);
  }

  v105 = v58;
  v108 = objc_msgSend_array(MEMORY[0x277CBEB18], v106, v107);
  v442 = 0u;
  v441 = 0u;
  v440 = 0u;
  v439 = 0u;
  v109 = v105;
  v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v109, v110, &v439, v443, 16);
  if (v113)
  {
    v114 = *v440;
    do
    {
      for (jj = 0; jj != v113; ++jj)
      {
        if (*v440 != v114)
        {
          objc_enumerationMutation(v109);
        }

        v116 = *(*(&v439 + 1) + 8 * jj);
        v117 = objc_msgSend_doors(v116, v111, v112, v382);
        objc_msgSend_addObjectsFromArray_(v108, v118, v117);

        v121 = objc_msgSend_opendoors(v116, v119, v120);
        objc_msgSend_addObjectsFromArray_(v108, v122, v121);

        v125 = objc_msgSend_openings(v116, v123, v124);
        objc_msgSend_addObjectsFromArray_(v108, v126, v125);
      }

      v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v109, v111, &v439, v443, 16);
    }

    while (v113);
  }

  v127 = *(v390 + 264);
  *(v390 + 264) = v108;

  v128 = v109;
  v131 = objc_msgSend_array(MEMORY[0x277CBEB18], v129, v130);
  v442 = 0u;
  v441 = 0u;
  v440 = 0u;
  v439 = 0u;
  v132 = v128;
  v136 = objc_msgSend_countByEnumeratingWithState_objects_count_(v132, v133, &v439, v443, 16);
  if (v136)
  {
    v137 = *v440;
    do
    {
      for (kk = 0; kk != v136; ++kk)
      {
        if (*v440 != v137)
        {
          objc_enumerationMutation(v132);
        }

        v139 = objc_msgSend_windows(*(*(&v439 + 1) + 8 * kk), v134, v135, v382);
        objc_msgSend_addObjectsFromArray_(v131, v140, v139);
      }

      v136 = objc_msgSend_countByEnumeratingWithState_objects_count_(v132, v134, &v439, v443, 16);
    }

    while (v136);
  }

  v141 = *(v390 + 272);
  *(v390 + 272) = v131;

  v142 = v132;
  v426 = 0u;
  v427 = 0u;
  v428 = 0u;
  v429 = 0u;
  obj = v142;
  v146 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v143, &v426, v443, 16);
  if (v146)
  {
    v147 = 0;
    v148 = 0;
    v393 = *v427;
    do
    {
      for (mm = 0; mm != v146; ++mm)
      {
        if (*v427 != v393)
        {
          objc_enumerationMutation(obj);
        }

        v150 = *(*(&v426 + 1) + 8 * mm);
        v422 = 0u;
        v423 = 0u;
        v424 = 0u;
        v425 = 0u;
        v151 = objc_msgSend_walls(v150, v144, v145, v382);
        v154 = objc_msgSend_countByEnumeratingWithState_objects_count_(v151, v152, &v422, &v439, 16);
        v155 = v146;
        if (v154)
        {
          v156 = 0;
          v157 = *v423;
          do
          {
            for (nn = 0; nn != v154; ++nn)
            {
              if (*v423 != v157)
              {
                objc_enumerationMutation(v151);
              }

              v159 = *(*(&v422 + 1) + 8 * nn);
              if (v159)
              {
                *(v159 + 160) = v148;
                *(v159 + 168) = v156;
                *(v159 + 176) = v147;
                *(v159 + 112) = v148;
                *(v159 + 106) = 0;
              }

              ++v147;
              ++v156;
            }

            v154 = objc_msgSend_countByEnumeratingWithState_objects_count_(v151, v153, &v422, &v439, 16);
          }

          while (v154);
        }

        v146 = v155;
        v420 = 0u;
        v421 = 0u;
        v418 = 0u;
        v419 = 0u;
        v162 = objc_msgSend_windows(v150, v160, v161);
        v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(v162, v163, &v418, &__p, 16);
        if (v165)
        {
          v166 = 0;
          v167 = *v419;
          do
          {
            for (i1 = 0; i1 != v165; ++i1)
            {
              if (*v419 != v167)
              {
                objc_enumerationMutation(v162);
              }

              v169 = *(*(&v418 + 1) + 8 * i1);
              if (v169)
              {
                *(v169 + 160) = v148;
                *(v169 + 168) = v166;
                *(v169 + 112) = v148;
                *(v169 + 106) = 0;
              }

              ++v166;
            }

            v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(v162, v164, &v418, &__p, 16);
          }

          while (v165);
        }

        v416 = 0u;
        v417 = 0u;
        v414 = 0u;
        v415 = 0u;
        v172 = objc_msgSend_doors(v150, v170, v171);
        v175 = objc_msgSend_countByEnumeratingWithState_objects_count_(v172, v173, &v414, v435, 16);
        if (v175)
        {
          v176 = 0;
          v177 = *v415;
          do
          {
            for (i2 = 0; i2 != v175; ++i2)
            {
              if (*v415 != v177)
              {
                objc_enumerationMutation(v172);
              }

              v179 = *(*(&v414 + 1) + 8 * i2);
              if (v179)
              {
                *(v179 + 160) = v148;
                *(v179 + 168) = v176;
                *(v179 + 112) = v148;
                *(v179 + 106) = 0;
              }

              ++v176;
            }

            v175 = objc_msgSend_countByEnumeratingWithState_objects_count_(v172, v174, &v414, v435, 16);
          }

          while (v175);
        }

        v182 = objc_msgSend_doors(v150, v180, v181);
        v185 = objc_msgSend_count(v182, v183, v184);

        v412 = 0u;
        v413 = 0u;
        v410 = 0u;
        v411 = 0u;
        v188 = objc_msgSend_opendoors(v150, v186, v187);
        v191 = objc_msgSend_countByEnumeratingWithState_objects_count_(v188, v189, &v410, &v433, 16);
        if (v191)
        {
          v192 = *v411;
          do
          {
            for (i3 = 0; i3 != v191; ++i3)
            {
              if (*v411 != v192)
              {
                objc_enumerationMutation(v188);
              }

              v194 = *(*(&v410 + 1) + 8 * i3);
              if (v194)
              {
                *(v194 + 160) = v148;
                *(v194 + 168) = v185;
                *(v194 + 112) = v148;
                *(v194 + 106) = 0;
              }

              ++v185;
            }

            v191 = objc_msgSend_countByEnumeratingWithState_objects_count_(v188, v190, &v410, &v433, 16);
          }

          while (v191);
        }

        v197 = objc_msgSend_doors(v150, v195, v196);
        v200 = objc_msgSend_count(v197, v198, v199);
        v203 = objc_msgSend_opendoors(v150, v201, v202);
        v206 = objc_msgSend_count(v203, v204, v205);

        v408 = 0u;
        v409 = 0u;
        v406 = 0u;
        v407 = 0u;
        v209 = objc_msgSend_openings(v150, v207, v208);
        v212 = objc_msgSend_countByEnumeratingWithState_objects_count_(v209, v210, &v406, v432, 16);
        if (v212)
        {
          v213 = v206 + v200;
          v214 = *v407;
          do
          {
            for (i4 = 0; i4 != v212; ++i4)
            {
              if (*v407 != v214)
              {
                objc_enumerationMutation(v209);
              }

              v216 = *(*(&v406 + 1) + 8 * i4);
              if (v216)
              {
                *(v216 + 160) = v148;
                *(v216 + 168) = v213;
                *(v216 + 112) = v148;
                *(v216 + 106) = 0;
              }

              ++v213;
            }

            v212 = objc_msgSend_countByEnumeratingWithState_objects_count_(v209, v211, &v406, v432, 16);
          }

          while (v212);
        }

        ++v148;
      }

      v146 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v144, &v426, v443, 16);
    }

    while (v146);
  }

  v217 = objc_alloc_init(RSMultiRoomFloorEstimation);
  v218 = *(v390 + 664);
  *(v390 + 664) = v217;

  v221 = objc_msgSend_count(obj, v219, v220);
  memset(v443, 0, 24);
  *&v439 = v443;
  BYTE8(v439) = 0;
  if (v221)
  {
    if (v221 < 0x666666666666667)
    {
      operator new();
    }

    sub_2621CBEB0();
  }

  v222 = 0;
  v385 = (v390 + 552);
  v223 = *(v390 + 552);
  if (v223)
  {
    v224 = *(v390 + 560);
    v225 = *(v390 + 552);
    if (v224 != v223)
    {
      do
      {
        v224 = sub_2621C7004(v224 - 5);
      }

      while (v224 != v223);
      v225 = *v385;
    }

    *(v390 + 560) = v223;
    operator delete(v225);
    *v385 = 0;
    *(v390 + 560) = 0;
    *(v390 + 568) = 0;
    v222 = v443[0];
    v226 = *&v443[1];
  }

  else
  {
    v226 = vdupq_n_s64(0);
  }

  *(v390 + 552) = v222;
  *(v390 + 560) = v226;
  memset(v443, 0, 24);
  *&v439 = v443;
  sub_262362DD4(&v439);
  for (i5 = 0; objc_msgSend_count(obj, v227, v228, v382) > i5; i5 = v394 + 1)
  {
    v232 = objc_msgSend_objectAtIndexedSubscript_(obj, v230, i5);
    v394 = i5;
    v233 = v232 == 0;

    if (!v233)
    {
      v236 = objc_msgSend_objectAtIndexedSubscript_(obj, v227, v394);
      v237 = 0;
      memset(v443, 0, sizeof(v443));
      LODWORD(v444) = 1065353216;
      while (1)
      {
        v238 = objc_msgSend_walls(v236, v234, v235);
        v241 = objc_msgSend_count(v238, v239, v240) > v237;

        if (!v241)
        {
          break;
        }

        *&v439 = v237;
        v244 = sub_262377868(v443, &v439);
        v245 = *v244;
        if (*v244)
        {
          v244[1] = v245;
          operator delete(v245);
          *v244 = 0;
          v244[1] = 0;
          v244[2] = 0;
        }

        *v244 = 0;
        v244[1] = 0;
        v244[2] = 0;
        *&v439 = v237 | 0x100000000;
        v246 = sub_262377868(v443, &v439);
        v247 = *v246;
        if (*v246)
        {
          v246[1] = v247;
          operator delete(v247);
          *v246 = 0;
          v246[1] = 0;
          v246[2] = 0;
        }

        *v246 = 0;
        v246[1] = 0;
        ++v237;
        v246[2] = 0;
      }

      for (i6 = 0; ; ++i6)
      {
        v249 = objc_msgSend_walls(v236, v242, v243);
        v252 = objc_msgSend_count(v249, v250, v251) > i6;

        if (!v252)
        {
          break;
        }

        v255 = objc_msgSend_walls(v236, v253, v254);
        v257 = objc_msgSend_objectAtIndexedSubscript_(v255, v256, i6);

        if (v257)
        {
          v260 = sub_26223FCEC(v257).n128_u64[0];
          v262 = v261;
          __p = v260;
          v437 = v261;
          v263 = i6;
          while (1)
          {
            v264 = objc_msgSend_walls(v236, v258, v259);
            v267 = objc_msgSend_count(v264, v265, v266) > ++v263;

            if (!v267)
            {
              goto LABEL_199;
            }

            v270 = objc_msgSend_walls(v236, v268, v269);
            v272 = objc_msgSend_objectAtIndexedSubscript_(v270, v271, v263);

            if (v272)
            {
              break;
            }

LABEL_198:
          }

          v273 = sub_26223FCEC(v272).n128_u64[0];
          v275 = v274;
          v435[0] = v273;
          v435[1] = v274;
          sub_2621DCD34(&v439, &__p, v435);
          v276 = v439;
          if (v439 == *(&v439 + 1))
          {
            v278 = v439;
          }

          else
          {
            v277 = (v439 + 4);
            v278 = v439;
            if (v439 + 4 != *(&v439 + 1))
            {
              v279 = *v439;
              v278 = v439;
              v280 = (v439 + 4);
              do
              {
                v281 = *v280++;
                v282 = v281;
                if (v281 < v279)
                {
                  v279 = v282;
                  v278 = v277;
                }

                v277 = v280;
              }

              while (v280 != *(&v439 + 1));
            }
          }

          v283 = (v278 - v439) >> 2;
          if (v283 > 1)
          {
            if (v283 == 2)
            {
              v293 = vceq_f32(v262, v273);
              if ((vpmin_u32(v293, v293).u32[0] & 0x80000000) == 0)
              {
                goto LABEL_181;
              }

              v433 = i6;
              v434 = 1;
              v319 = sub_262377868(v443, &v433);
              v432[0] = v263;
              sub_26223C48C(v319, v432);
              v433 = v263;
              v434 = 0;
              v320 = sub_262377868(v443, &v433);
              v432[0] = i6 | 0x100000000;
              sub_26223C48C(v320, v432);
            }

            else
            {
              if (v283 != 3)
              {
                goto LABEL_181;
              }

              v287 = vceq_f32(v262, v275);
              if ((vpmin_u32(v287, v287).u32[0] & 0x80000000) == 0)
              {
                goto LABEL_181;
              }

              v433 = i6;
              v434 = 1;
              v288 = sub_262377868(v443, &v433);
              v432[0] = v263 | 0x100000000;
              sub_26223C48C(v288, v432);
              v433 = v263;
              v434 = 1;
              v289 = sub_262377868(v443, &v433);
              v432[0] = i6 | 0x100000000;
              sub_26223C48C(v289, v432);
            }
          }

          else
          {
            if (v283)
            {
              if (v283 == 1)
              {
                v284 = vceq_f32(v260, v275);
                if ((vpmin_u32(v284, v284).u32[0] & 0x80000000) != 0)
                {
                  v433 = i6;
                  v434 = 0;
                  v285 = sub_262377868(v443, &v433);
                  v432[0] = v263 | 0x100000000;
                  sub_26223C48C(v285, v432);
                  v433 = v263;
                  v434 = 1;
                  v286 = sub_262377868(v443, &v433);
                  v432[0] = i6;
                  sub_26223C48C(v286, v432);
                  goto LABEL_196;
                }
              }

LABEL_181:
              v294 = vsub_f32(v275, v273);
              v295 = vaddv_f32(vmul_f32(vsub_f32(v260, v273), v294));
              v296 = vaddv_f32(vmul_f32(v294, v294));
              if (v296 < 0.000001)
              {
                v296 = 0.000001;
              }

              v297 = vmla_n_f32(v273, v294, v295 / v296);
              v298 = vsub_f32(v297, v273);
              v299 = vsub_f32(v297, v275);
              if (vaddv_f32(vmul_f32(v298, v299)) > 0.00001)
              {
                v300 = vmul_f32(v298, v298);
                v301 = vmul_f32(v299, v299);
                v302 = vsqrt_f32(vadd_f32(vzip1_s32(v300, v301), vzip2_s32(v300, v301)));
                v297 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(vdup_lane_s32(v302, 1), v302)), 0), v275, v273);
              }

              v303 = vmla_n_f32(v273, v294, vaddv_f32(vmul_f32(vsub_f32(v262, v273), v294)) / v296);
              v304 = vsub_f32(v303, v273);
              v305 = vsub_f32(v303, v275);
              if (vaddv_f32(vmul_f32(v304, v305)) > 0.00001)
              {
                v306 = vmul_f32(v304, v304);
                v307 = vmul_f32(v305, v305);
                v308 = vsqrt_f32(vadd_f32(vzip1_s32(v306, v307), vzip2_s32(v306, v307)));
                v303 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(vdup_lane_s32(v308, 1), v308)), 0), v275, v273);
              }

              v309 = vceq_f32(v260, v297);
              v310 = vpmin_u32(v309, v309).u32[0];
              if ((v310 & 0x80000000) != 0 || (v311 = vceq_f32(v262, v303), (vpmin_u32(v311, v311).u32[0] & 0x80000000) != 0))
              {
                v433 = v263;
                v434 = 2;
                v312 = sub_262377868(v443, &v433);
                v313 = *v312;
                if (*v312)
                {
                  v312[1] = v313;
                  operator delete(v313);
                  *v312 = 0;
                  v312[1] = 0;
                  v312[2] = 0;
                }

                *v312 = 0;
                v312[1] = 0;
                v312[2] = 0;
                if ((v310 & 0x80000000) != 0)
                {
                  v433 = i6;
                  v434 = 0;
                  v314 = sub_262377868(v443, &v433);
                  v432[0] = v263 | 0x200000000;
                  sub_26223C48C(v314, v432);
                  v433 = v263;
                  v434 = 2;
                  v315 = sub_262377868(v443, &v433);
                  v432[0] = i6;
                  sub_26223C48C(v315, v432);
                }

                v316 = vceq_f32(v262, v303);
                if ((vpmin_u32(v316, v316).u32[0] & 0x80000000) != 0)
                {
                  v433 = i6;
                  v434 = 1;
                  v317 = sub_262377868(v443, &v433);
                  v432[0] = v263 | 0x200000000;
                  sub_26223C48C(v317, v432);
                  v433 = v263;
                  v434 = 2;
                  v318 = sub_262377868(v443, &v433);
                  v432[0] = i6 | 0x100000000;
                  sub_26223C48C(v318, v432);
                }
              }

              goto LABEL_196;
            }

            v290 = vceq_f32(v260, v273);
            if ((vpmin_u32(v290, v290).u32[0] & 0x80000000) == 0)
            {
              goto LABEL_181;
            }

            v433 = i6;
            v434 = 0;
            v291 = sub_262377868(v443, &v433);
            v432[0] = v263;
            sub_26223C48C(v291, v432);
            v433 = v263;
            v434 = 0;
            v292 = sub_262377868(v443, &v433);
            v432[0] = i6;
            sub_26223C48C(v292, v432);
          }

LABEL_196:
          if (v276)
          {
            operator delete(v276);
          }

          goto LABEL_198;
        }

LABEL_199:
      }

      v321 = *v385 + 40 * v394;
      sub_262378DD8(v321);
      v322 = v443[0];
      v443[0] = 0;
      v323 = *v321;
      *v321 = v322;
      if (v323)
      {
        operator delete(v323);
      }

      v324 = v443[1];
      v325 = v443[2];
      *(v321 + 16) = v443[2];
      *(v321 + 8) = v324;
      v443[1] = 0;
      v326 = v443[3];
      *(v321 + 24) = v443[3];
      *(v321 + 32) = v444;
      if (v326)
      {
        v327 = v325[1];
        v328 = *(v321 + 8);
        if ((v328 & (v328 - 1)) != 0)
        {
          if (v327 >= v328)
          {
            v327 %= v328;
          }
        }

        else
        {
          v327 &= v328 - 1;
        }

        v325 = 0;
        *(*v321 + 8 * v327) = v321 + 16;
        *&v443[2] = 0uLL;
      }

      sub_2621C7150(v325);
      v329 = v443[0];
      v443[0] = 0;
      if (v329)
      {
        operator delete(v329);
      }
    }
  }

  v330 = 0;
LABEL_213:
  if (objc_msgSend_count(obj, v230, v231) > v330)
  {
    v332 = objc_msgSend_objectAtIndexedSubscript_(obj, v331, v330);
    v387 = v330;
    v333 = v332 == 0;

    if (v333)
    {
      goto LABEL_258;
    }

    v334 = objc_msgSend_objectAtIndexedSubscript_(obj, v230, v387);
    v335 = *v385 + 40 * v387;
    *v395 = 0u;
    *v396 = 0u;
    v397 = *(v335 + 32);
    sub_2621C67D4(v395, *(v335 + 8));
    v336 = *(v335 + 16);
    if (!v336)
    {
      goto LABEL_238;
    }

    while (1)
    {
      v337 = *(v336 + 4);
      v338 = *(v336 + 5);
      v339 = v338 ^ v337;
      if (!v395[1])
      {
        goto LABEL_236;
      }

      v340 = vcnt_s8(v395[1]);
      v340.i16[0] = vaddlv_u8(v340);
      if (v340.u32[0] > 1uLL)
      {
        v341 = v338 ^ v337;
        if (v395[1] <= v339)
        {
          v341 = v339 % v395[1];
        }
      }

      else
      {
        v341 = (v395[1] - 1) & v339;
      }

      v342 = *(v395[0] + v341);
      if (!v342 || (v343 = *v342) == 0)
      {
LABEL_236:
        operator new();
      }

      while (1)
      {
        v344 = v343[1];
        if (v344 == v339)
        {
          break;
        }

        if (v340.u32[0] > 1uLL)
        {
          if (v344 >= v395[1])
          {
            v344 %= v395[1];
          }
        }

        else
        {
          v344 &= v395[1] - 1;
        }

        if (v344 != v341)
        {
          goto LABEL_236;
        }

LABEL_235:
        v343 = *v343;
        if (!v343)
        {
          goto LABEL_236;
        }
      }

      if (*(v343 + 4) != v337 || *(v343 + 5) != v338)
      {
        goto LABEL_235;
      }

      v336 = *v336;
      if (!v336)
      {
LABEL_238:
        v346 = v334;
        v351 = objc_msgSend_walls(v346, v347, v348);
        if (v351)
        {
          v352 = objc_msgSend_walls(v346, v349, v350);
          v355 = objc_msgSend_count(v352, v353, v354) == 0;

          if (!v355)
          {
            v358 = objc_msgSend_walls(v346, v356, v357);
            sub_262377468(v443, v358);

            v361 = 0;
            v362 = v443[0];
            for (i7 = (v443[0] + 8); ; i7 += 6)
            {
              v364 = objc_msgSend_walls(v346, v359, v360);
              v367 = objc_msgSend_count(v364, v365, v366) > v361;

              if (!v367)
              {
                break;
              }

              v370 = i7[-1];
              v371 = *i7;
              v372 = objc_msgSend_walls(v346, v368, v369);
              v374 = objc_msgSend_objectAtIndexedSubscript_(v372, v373, v361);
              if (v374)
              {
                v374[107] = 0;
              }

              v375 = vsub_f32(v370, v371);
              if (sqrtf(vaddv_f32(vmul_f32(v375, v375))) <= *(v390 + 212))
              {
                if (!sub_2623777AC(v395, v361, 0) || !sub_2623777AC(v395, v361, 1) || (*&v439 = v361, v376 = sub_262377868(v395, &v439), v376[1] == *v376) || (__p = (v361 | 0x100000000), v377 = sub_262377868(v395, &__p), v377[1] == *v377))
                {
                  v378 = objc_msgSend_walls(v346, v359, v360);
                  v380 = objc_msgSend_objectAtIndexedSubscript_(v378, v379, v361);
                  if (v380)
                  {
                    v380[107] = 1;
                  }
                }
              }

              ++v361;
            }

            if (v362)
            {
              operator delete(v362);
            }
          }
        }

        sub_2621C7150(v396[0]);
        v381 = v395[0];
        v395[0] = 0;
        if (v381)
        {
          operator delete(v381);
        }

LABEL_258:
        v330 = v387 + 1;
        goto LABEL_213;
      }
    }
  }
}

void sub_26236CC8C(id *a1, void *a2)
{
  v398 = *MEMORY[0x277D85DE8];
  v352 = a2;
  sub_262377468(&v375, a1[32]);
  v370 = a1;
  if (objc_msgSend_count(a1[32], v3, v4))
  {
    v7 = 0;
    v8 = v375;
    do
    {
      v11 = objc_msgSend_objectAtIndexedSubscript_(a1[32], v5, v7, v352);
      v12 = 0;
      v13 = v8;
      while (objc_msgSend_count(a1[32], v9, v10) > v12)
      {
        if (v12 <= v7)
        {
          goto LABEL_18;
        }

        v14 = objc_msgSend_objectAtIndexedSubscript_(a1[32], v9, v12);
        v17 = objc_msgSend_identifier(v11, v15, v16);
        v20 = objc_msgSend_identifier(v14, v18, v19);
        isEqual = objc_msgSend_isEqual_(v17, v21, v20);

        if ((isEqual & 1) == 0)
        {
          if (v11)
          {
            v23 = v11[20];
            if (v14)
            {
              goto LABEL_9;
            }

LABEL_20:
            v24 = 0;
          }

          else
          {
            v23 = 0;
            if (!v14)
            {
              goto LABEL_20;
            }

LABEL_9:
            v24 = v14[20];
          }

          if (v23 != v24)
          {
            sub_26229E1DC(&v391, &v8[6 * v7], v13, v370 + 2);
            if (v391 != -1)
            {
              *v386 = &v391;
              v25 = sub_262377054(v370 + 82, v391, v386);
              *v386 = v7;
              *&v386[4] = v12;
              sub_26223C48C((v25 + 3), v386);
            }

            if (*(&v396 + 1))
            {
              *&v397 = *(&v396 + 1);
              operator delete(*(&v396 + 1));
            }

            if (v395)
            {
              *(&v395 + 1) = v395;
              operator delete(v395);
            }
          }
        }

        a1 = v370;
LABEL_18:
        ++v12;
        v13 += 6;
      }

      a1 = v370;
      ++v7;
    }

    while (objc_msgSend_count(v370[32], v26, v27) > v7);
  }

  if (objc_msgSend_count(a1[33], v5, v6, v352))
  {
    sub_262377468(v385, a1[33]);
    if (objc_msgSend_count(a1[33], v30, v31))
    {
      v32 = 0;
      v358 = a1 + 1;
      v33 = vdup_n_s32(0x49742400u);
      do
      {
        v36 = objc_msgSend_objectAtIndexedSubscript_(a1[33], v28, v32);
        v37 = v32;
        v366 = v32;
        while (objc_msgSend_count(a1[33], v34, v35) > ++v37)
        {
          v39 = objc_msgSend_objectAtIndexedSubscript_(a1[33], v38, v37);
          v42 = objc_msgSend_identifier(v36, v40, v41);
          v45 = objc_msgSend_identifier(v39, v43, v44);
          v47 = objc_msgSend_isEqual_(v42, v46, v45);

          if (v47)
          {
            goto LABEL_79;
          }

          if (v36)
          {
            v48 = v36[20];
            if (v39)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v48 = 0;
            if (v39)
            {
LABEL_30:
              v49 = v39[20];
              goto LABEL_31;
            }
          }

          v49 = 0;
LABEL_31:
          if (v48 != v49)
          {
            v50 = (v385[0] + 48 * v32);
            *v392 = xmmword_2623A7900;
            *&v392[16] = v33;
            v393 = -3175874560;
            v51 = (v385[0] + 48 * v37);
            v394 = 0;
            v395 = 0u;
            v396 = 0u;
            v397 = 0u;
            sub_262240084(v386, v50, v51);
            v52 = 0;
            v53 = *&v386[8];
            v54 = v387;
            v55 = v388;
            v56 = vsub_f32(*v50, v50[1]);
            v57 = sqrtf(vaddv_f32(vmul_f32(v56, v56)));
            v58 = vsub_f32(*v51, v51[1]);
            v59 = sqrtf(vaddv_f32(vmul_f32(v58, v58)));
            if (v59 < v57)
            {
              v57 = v59;
            }

            v60 = 8;
            if (v57 < *(v370 + 6))
            {
              v60 = 12;
            }

            if (v387 < *(v370 + 2) && v388 < *(v358 + v60))
            {
              v52 = *&v386[8] >= *(v370 + 3);
            }

            v61 = *v386;
            v62 = *&v386[4];
            v63 = *&v386[12];
            v64 = v389;
            v65 = v390;
            sub_2621DCD34(v386, v50, v51);
            v66 = *v386;
            if (*v386 != *&v386[8])
            {
              v67 = *v386 + 4;
              v66 = *v386;
              if (*v386 + 4 != *&v386[8])
              {
                v68 = **v386;
                v66 = *v386;
                v69 = (*v386 + 4);
                do
                {
                  v70 = *v69++;
                  v71 = v70;
                  if (v70 < v68)
                  {
                    v68 = v71;
                    v66 = v67;
                  }

                  v67 = v69;
                }

                while (v69 != *&v386[8]);
              }
            }

            v72 = vsub_f32(v50[1], *v50);
            v73 = vmul_f32(v72, v72);
            v74 = vsub_f32(v51[1], *v51);
            v75 = vmul_f32(v74, v74);
            v76 = vsqrt_f32(vadd_f32(vzip1_s32(v73, v75), vzip2_s32(v73, v75)));
            *v75.i32 = fabsf(vsub_f32(v76, vdup_lane_s32(v76, 1)).f32[0]);
            v77 = *(v370 + 8);
            v79 = *v75.i32 < *(v370 + 20) && v55 < v77 && v54 < *(v370 + 9);
            if (v79 && ((v80 = *(v370 + 22), v61 > v80) ? (v81 = v62 <= v80) : (v81 = 1), !v81 ? (v82 = *v66 < *(v370 + 21)) : (v82 = 0), v82))
            {
              v86 = 4;
              LODWORD(v391) = 4;
              v85 = 1;
            }

            else
            {
              v84 = v55 < v77 && v53 > *(v370 + 23) && v54 < *(v370 + 24);
              v85 = 0;
              if (v84)
              {
                v86 = 6;
              }

              else
              {
                v86 = -1;
              }

              LODWORD(v391) = v86;
            }

            BYTE12(v391) = v85;
            *v392 = v61;
            *&v392[4] = v62;
            *&v392[12] = v63;
            *&v392[8] = v53;
            *&v392[20] = v54;
            v393 = __PAIR64__(v64, LODWORD(v55));
            LOBYTE(v394) = v52;
            HIBYTE(v394) = v65;
            if (*v386)
            {
              operator delete(*v386);
              v86 = v391;
            }

            v32 = v366;
            if (v86 != -1)
            {
              *v386 = &v391;
              v87 = sub_262377054(v370 + 92, v86, v386);
              *v386 = v366;
              *&v386[4] = v37;
              sub_26223C48C((v87 + 3), v386);
            }

            if (*(&v396 + 1))
            {
              *&v397 = *(&v396 + 1);
              operator delete(*(&v396 + 1));
            }

            if (v395)
            {
              *(&v395 + 1) = v395;
              operator delete(v395);
            }
          }

LABEL_79:

          a1 = v370;
        }

        a1 = v370;
        ++v32;
      }

      while (objc_msgSend_count(v370[33], v88, v89) > v32);
    }

    if (v385[0])
    {
      operator delete(v385[0]);
    }
  }

  if (objc_msgSend_count(a1[34], v28, v29))
  {
    sub_262377468(v385, a1[34]);
    if (objc_msgSend_count(a1[34], v90, v91))
    {
      v93 = 0;
      v355 = 1;
      v356 = a1 + 1;
      v354 = 68;
      v94 = vdup_n_s32(0x49742400u);
      do
      {
        v97 = objc_msgSend_objectAtIndexedSubscript_(a1[34], v92, v93);
        v99 = v354;
        v98 = v355;
        v362 = v97;
        v359 = v93;
        while (objc_msgSend_count(a1[34], v95, v96) > v98)
        {
          v101 = objc_msgSend_objectAtIndexedSubscript_(a1[34], v100, v98);
          v104 = objc_msgSend_identifier(v97, v102, v103);
          v107 = objc_msgSend_identifier(v101, v105, v106);
          v109 = objc_msgSend_isEqual_(v104, v108, v107);

          if (v109)
          {
            goto LABEL_135;
          }

          if (v97)
          {
            v110 = v97[20];
            if (v101)
            {
              goto LABEL_93;
            }
          }

          else
          {
            v110 = 0;
            if (v101)
            {
LABEL_93:
              v111 = v101[20];
              goto LABEL_94;
            }
          }

          v111 = 0;
LABEL_94:
          if (v110 != v111)
          {
            v112 = v385[0];
            *v392 = xmmword_2623A7900;
            v113 = (v385[0] + 48 * v93);
            v114 = v385[0] + v99;
            v115 = (v385[0] + v99 - 20);
            *&v392[16] = v94;
            v393 = -3175874560;
            v394 = 0;
            v395 = 0u;
            v396 = 0u;
            v397 = 0u;
            sub_262240084(v386, v113, v115);
            v116 = 0;
            v117 = *&v386[8];
            v118 = v387;
            v119 = v388;
            v120 = vsub_f32(*v113, v113[1]);
            v121 = sqrtf(vaddv_f32(vmul_f32(v120, v120)));
            v122 = vsub_f32(*v115, *(v114 - 12));
            v123 = sqrtf(vaddv_f32(vmul_f32(v122, v122)));
            if (v123 < v121)
            {
              v121 = v123;
            }

            v124 = 8;
            if (v121 < *(v370 + 6))
            {
              v124 = 12;
            }

            v367 = v99;
            if (v387 < *(v370 + 2) && v388 < *(v356 + v124))
            {
              v116 = *&v386[8] >= *(v370 + 3);
            }

            v125 = v116;
            v126 = *v386;
            v127 = *&v386[4];
            v128 = *&v386[12];
            v129 = v389;
            v130 = v390;
            sub_2621DCD34(v386, v113, v115);
            v131 = vsub_f32(v113[1], *v113);
            v132 = vmul_f32(v131, v131);
            v133 = vsub_f32(*(v114 - 12), *v115);
            v134 = vmul_f32(v133, v133);
            v135 = vsqrt_f32(vadd_f32(vzip1_s32(v132, v134), vzip2_s32(v132, v134)));
            v136 = fabsf(vsub_f32(v135, vdup_lane_s32(v135, 1)).f32[0]);
            v137 = *(v370 + 28);
            v138 = *(v370 + 30);
            v140 = v136 < *(v370 + 25) && v119 < v137 && v118 < v138;
            v141 = v125;
            if (v140 && (v144 = *(v370 + 27), v126 > v144) && v127 > v144)
            {
              v143 = 4;
              LODWORD(v391) = 4;
              v142 = 1;
              v99 = v367;
            }

            else
            {
              v99 = v367;
              if (v119 >= v137 || v117 <= *(v370 + 29) || v118 >= v138)
              {
                v142 = 0;
                v143 = -1;
              }

              else
              {
                v142 = 0;
                v143 = 6;
              }

              LODWORD(v391) = v143;
            }

            BYTE12(v391) = v142;
            *v392 = v126;
            *&v392[4] = v127;
            *&v392[12] = v128;
            *&v392[8] = v117;
            *&v392[20] = v118;
            v393 = __PAIR64__(v129, LODWORD(v119));
            LOBYTE(v394) = v141;
            HIBYTE(v394) = v130;
            if (*v386)
            {
              operator delete(*v386);
              v143 = v391;
            }

            v97 = v362;
            v93 = v359;
            if (v143 != -1)
            {
              v145 = v113[2].f32[0];
              v146 = v113[2].f32[1];
              v147 = *&v112[v99 - 4];
              v148 = *&v112[v99];
              if (v148 >= v146)
              {
                v149 = v113[2].f32[1];
              }

              else
              {
                v149 = *&v112[v99];
              }

              if (v145 >= v147)
              {
                v150 = v113[2].f32[0];
              }

              else
              {
                v150 = *&v112[v99 - 4];
              }

              v151 = v149 - v150;
              v152 = v151 / (v146 - v145);
              if (v152 < (v151 / (v148 - v147)))
              {
                v152 = v151 / (v148 - v147);
              }

              if (v152 >= *(v370 + 31))
              {
                *v386 = &v391;
                v153 = sub_262377054(v370 + 102, v143, v386);
                *v386 = v359;
                *&v386[4] = v98;
                sub_26223C48C((v153 + 3), v386);
              }
            }

            if (*(&v396 + 1))
            {
              *&v397 = *(&v396 + 1);
              operator delete(*(&v396 + 1));
            }

            if (v395)
            {
              *(&v395 + 1) = v395;
              operator delete(v395);
            }
          }

LABEL_135:

          ++v98;
          v99 += 48;
          a1 = v370;
        }

        a1 = v370;
        ++v93;
        v354 += 48;
        ++v355;
      }

      while (objc_msgSend_count(v370[34], v154, v155) > v93);
    }

    if (v385[0])
    {
      operator delete(v385[0]);
    }
  }

  v368 = v353;
  for (i = 0; objc_msgSend_count(a1[32], v156, v157) > i; ++i)
  {
    *&v391 = i;
    v161 = sub_262377868(a1 + 64, &v391);
    v162 = *v161;
    if (*v161)
    {
      v161[1] = v162;
      operator delete(v162);
      *v161 = 0;
      v161[1] = 0;
      v161[2] = 0;
    }

    *v161 = 0;
    v161[1] = 0;
    v161[2] = 0;
    *&v391 = i | 0x100000000;
    v163 = sub_262377868(a1 + 64, &v391);
    v164 = *v163;
    if (*v163)
    {
      v163[1] = v164;
      operator delete(v164);
      *v163 = 0;
      v163[1] = 0;
      v163[2] = 0;
    }

    *v163 = 0;
    v163[1] = 0;
    v163[2] = 0;
  }

  for (j = 0; objc_msgSend_count(v370[32], v159, v160) > j; ++j)
  {
    v167 = objc_msgSend_objectAtIndexedSubscript_(v370[32], v166, j);
    v170 = v167;
    if (v167)
    {
      v172 = *(v167 + 160);
      v171 = *(v167 + 168);
      if (v172 < objc_msgSend_count(v368, v168, v169))
      {
        v173 = v370[69] + 40 * v172;
        if (sub_2623777AC(v173, v171, 0))
        {
          *&v391 = v171;
          v174 = sub_262377868(v173, &v391);
          if (v174[1] != *v174)
          {
            v176 = objc_msgSend_objectAtIndexedSubscript_(v368, v175, v172);
            v179 = objc_msgSend_walls(v176, v177, v178);

            *&v391 = v171;
            v180 = sub_262377868(v173, &v391);
            v184 = *v180;
            v183 = v180[1];
            while (v184 != v183)
            {
              v185 = *v184;
              if (objc_msgSend_count(v179, v181, v182) > v185)
              {
                v186 = objc_msgSend_objectAtIndexedSubscript_(v179, v181, *v184);
                v187 = v186;
                if (v186)
                {
                  v188 = *(v186 + 176);
                }

                else
                {
                  LODWORD(v188) = 0;
                }

                *v386 = j;
                *&v386[4] = 0;
                v189 = sub_262377868(v370 + 64, v386);
                v385[0] = __PAIR64__(v184[1], v188);
                sub_26223C48C(v189, v385);
              }

              v184 += 2;
            }
          }
        }

        if (sub_2623777AC(v173, v171, 1))
        {
          *&v391 = v171 | 0x100000000;
          v190 = sub_262377868(v173, &v391);
          if (v190[1] != *v190)
          {
            v192 = objc_msgSend_objectAtIndexedSubscript_(v368, v191, v172);
            v195 = objc_msgSend_walls(v192, v193, v194);

            *&v391 = v171 | 0x100000000;
            v196 = sub_262377868(v173, &v391);
            v199 = *v196;
            v200 = v196[1];
            while (v199 != v200)
            {
              v201 = *v199;
              if (objc_msgSend_count(v195, v197, v198) > v201)
              {
                v202 = objc_msgSend_objectAtIndexedSubscript_(v195, v197, *v199);
                v203 = v202;
                if (v202)
                {
                  v204 = *(v202 + 176);
                }

                else
                {
                  LODWORD(v204) = 0;
                }

                *v386 = j;
                *&v386[4] = 1;
                v205 = sub_262377868(v370 + 64, v386);
                v385[0] = __PAIR64__(v199[1], v204);
                sub_26223C48C(v205, v385);
              }

              v199 += 2;
            }
          }
        }

        if (sub_2623777AC(v173, v171, 2))
        {
          *&v391 = v171 | 0x200000000;
          v206 = sub_262377868(v173, &v391);
          if (v206[1] != *v206)
          {
            *&v391 = j | 0x200000000;
            v208 = sub_262377868(v370 + 64, &v391);
            v209 = *v208;
            if (*v208)
            {
              v208[1] = v209;
              operator delete(v209);
              *v208 = 0;
              v208[1] = 0;
              v208[2] = 0;
            }

            *v208 = 0;
            v208[1] = 0;
            v208[2] = 0;
            v210 = objc_msgSend_objectAtIndexedSubscript_(v368, v207, v172);
            v213 = objc_msgSend_walls(v210, v211, v212);

            *&v391 = v171 | 0x200000000;
            v214 = sub_262377868(v173, &v391);
            v217 = *v214;
            v218 = v214[1];
            while (v217 != v218)
            {
              v219 = *v217;
              if (objc_msgSend_count(v213, v215, v216) > v219)
              {
                v220 = objc_msgSend_objectAtIndexedSubscript_(v213, v215, *v217);
                v221 = v220;
                if (v220)
                {
                  v222 = *(v220 + 176);
                }

                else
                {
                  LODWORD(v222) = 0;
                }

                *v386 = j;
                *&v386[4] = 2;
                v223 = sub_262377868(v370 + 64, v386);
                v385[0] = __PAIR64__(v217[1], v222);
                sub_26223C48C(v223, v385);
              }

              v217 += 2;
            }
          }
        }
      }
    }
  }

  v226 = v370[32];
  v227 = 0;
  v228 = v375;
  v363 = v226;
  while (objc_msgSend_count(v226, v224, v225) > v227)
  {
    v229 = vsub_f32(v228[6 * v227], v228[6 * v227 + 1]);
    if (sqrtf(vaddv_f32(vmul_f32(v229, v229))) < *(v370 + 37))
    {
      if (sub_2623777AC(v370 + 64, v227, 0))
      {
        if (sub_2623777AC(v370 + 64, v227, 1))
        {
          *&v391 = v227;
          v230 = sub_262377868(v370 + 64, &v391);
          if (v230[1] != *v230)
          {
            *v386 = v227;
            *&v386[4] = 1;
            v231 = sub_262377868(v370 + 64, v386);
            if (v231[1] != *v231)
            {
              *v386 = v227;
              *&v386[4] = 0;
              v232 = sub_262377868(v370 + 64, v386);
              v233 = *v232;
              v234 = v232[1];
              while (v233 != v234)
              {
                v384 = *v233;
                v385[0] = (v227 | 0x100000000);
                v235 = sub_262377868(v370 + 64, v385);
                v237 = *v235;
                v236 = v235[1];
                while (v237 != v236)
                {
                  LODWORD(v380) = *v237;
                  sub_262240084(&v391, &v228[6 * v227], &v228[6 * v384]);
                  v238 = *&v392[8];
                  sub_262240084(&v391, &v228[6 * v227], &v228[6 * v380]);
                  v239 = *&v392[8];
                  sub_262240084(&v391, &v228[6 * v384], &v228[6 * v380]);
                  v240 = *(v370 + 38);
                  if (vabdd_f64(90.0, v238) <= v240 && vabdd_f64(90.0, v239) <= v240 && *&v392[8] <= v240)
                  {
                    v242 = v384;
                    v243 = vsub_f32(v228[6 * v384], v228[6 * v384 + 1]);
                    v244 = vmul_f32(v243, v243);
                    v245 = v380;
                    v246 = vsub_f32(v228[6 * v380], v228[6 * v380 + 1]);
                    v247 = vmul_f32(v246, v246);
                    v248 = vsqrt_f32(vadd_f32(vzip1_s32(v244, v247), vzip2_s32(v244, v247)));
                    if (vmvn_s8(vcge_f32(v248, vdup_lane_s32(v248, 1))).u8[0])
                    {
                      *&v391 = &v384;
                      *(sub_262378BB4(v370 + 72, v384, &v391) + 5) = v245;
                    }

                    else
                    {
                      *&v391 = &v380;
                      *(sub_262378BB4(v370 + 72, v380, &v391) + 5) = v242;
                    }
                  }

                  v237 += 2;
                }

                v233 += 2;
              }

              v226 = v363;
            }
          }
        }
      }
    }

    ++v227;
  }

  for (k = v370[43]; k; k = *k)
  {
    v250 = k[3];
    v251 = k[4];
    while (v250 != v251)
    {
      v252 = v250[1];
      LODWORD(v391) = *v250;
      DWORD1(v391) = v252;
      v253 = *(k + 4);
      DWORD2(v391) = v253;
      if (!sub_2621C719C(v370 + 72, v391) && !sub_2621C719C(v370 + 72, v252) || (v253 != 3 ? (v254 = v253 == 6) : (v254 = 1), !v254))
      {
        sub_262371F84(v370 + 56, &v391);
      }

      v250 += 2;
    }
  }

  sub_262378DD8((v370 + 41));
  v257 = v370[56];
  v258 = v370[57];
  if (v257 != v258)
  {
    v259 = v257 + 2;
    do
    {
      *&v391 = v259;
      v260 = sub_262377054(v370 + 82, *v259, &v391);
      *&v391 = *(v259 - 1);
      sub_26223C48C((v260 + 3), &v391);
      v261 = v259 + 1;
      v259 += 3;
    }

    while (v261 != v258);
  }

  v262 = objc_msgSend_count(v370[32], v255, v256);
  sub_262371AD8(&v391, v370 + 56, v262);
  v263 = v370 + 77;
  v264 = v370[77];
  if (v264)
  {
    v265 = v370[78];
    v266 = v370[77];
    if (v265 != v264)
    {
      do
      {
        v265 = sub_2621C74C4(v265 - 40);
      }

      while (v265 != v264);
      v266 = *v263;
    }

    v370[78] = v264;
    operator delete(v266);
    *v263 = 0;
    v370[78] = 0;
    v370[79] = 0;
  }

  *v263 = v391;
  v370[79] = *v392;
  *v392 = 0;
  v391 = 0uLL;
  *v386 = &v391;
  sub_262362D50(v386);
  v267 = v370[78];
  v268 = v370[77];
  v269 = 0xCCCCCCCCCCCCCCCDLL * ((v267 - v268) >> 3);
  sub_262371EA8(&v373, v269);
  v272 = v370[56];
  v271 = v370[57];
  if (v272 != v271)
  {
    if (v269 <= 1)
    {
      v269 = 1;
    }

    do
    {
      if (v267 != v268)
      {
        v273 = 0;
        v274 = 0;
        v275 = v269;
        do
        {
          v276 = *v263;
          if (sub_2621C719C(*v263 + v273, *v272) || sub_2621C719C(&v276[v273], v272[1]))
          {
            sub_262371F84((v373 + v274), v272);
          }

          v274 += 24;
          v273 += 40;
          --v275;
        }

        while (v275);
      }

      v272 += 3;
    }

    while (v272 != v271);
    v272 = v370[56];
    v271 = v370[57];
  }

  memset(v371, 0, sizeof(v371));
  v372 = 1065353216;
  if (v272 != v271)
  {
    v277 = v272 + 1;
    do
    {
      if (v277[1] != 3)
      {
        v278 = objc_msgSend_objectAtIndexedSubscript_(v370[32], v270, *(v277 - 1));
        *v279.i64 = sub_262375C50(v278);
        v364 = v279;

        v281 = objc_msgSend_objectAtIndexedSubscript_(v370[32], v280, *v277);
        *v282.i64 = sub_262375C50(v281);
        v360 = v282;

        v283 = vmulq_f32(v364, v360);
        if ((v283.f32[2] + vaddv_f32(*v283.f32)) <= 0.0)
        {
          sub_2621C729C(v371, *(v277 - 1), v277 - 1);
          sub_2621C729C(v371, *v277, v277);
        }
      }

      v284 = v277 + 2;
      v277 += 3;
    }

    while (v284 != v271);
  }

  v286 = v373;
  v285 = v374;
  if (v374 == v373)
  {
    goto LABEL_299;
  }

  v287 = 0;
  do
  {
    v288 = (v286 + 24 * v287);
    v289 = *v288;
    v290 = v288[1];
    if (*v288 == v290)
    {
      goto LABEL_298;
    }

    v291 = v375;
    do
    {
      v293 = *v289;
      v292 = v289[1];
      *v386 = v291[3 * v293];
      *v385 = v291[3 * v292];
      sub_262240084(&v391, v386, v385);
      v294 = *&v392[4];
      if (!sub_2621C719C(v371, v293))
      {
        goto LABEL_271;
      }

      v296 = objc_msgSend_objectAtIndexedSubscript_(v370[32], v295, v293);
      if (!v296)
      {
        v299 = v370[32];
LABEL_265:
        v314 = objc_msgSend_objectAtIndexedSubscript_(v299, v297, v293);
        if (v314)
        {
          v314[33] = v294;
        }

        v313 = objc_msgSend_objectAtIndexedSubscript_(v370[32], v315, v293);
        v301 = 1.0;
        goto LABEL_268;
      }

      v298 = v296[33] > 0.0001;

      v299 = v370[32];
      if (!v298)
      {
        goto LABEL_265;
      }

      v300 = objc_msgSend_objectAtIndexedSubscript_(v299, v297, v293);
      if (v300)
      {
        v301 = v300[34] + 1.0;
      }

      else
      {
        v301 = 1.0;
      }

      v303 = objc_msgSend_objectAtIndexedSubscript_(v370[32], v302, v293);
      v305 = v303;
      if (v303)
      {
        v306 = *(v303 + 132);
      }

      else
      {
        v306 = 0.0;
      }

      v307 = objc_msgSend_objectAtIndexedSubscript_(v370[32], v304, v293);
      v309 = v307;
      if (v307)
      {
        v310 = *(v307 + 136);
      }

      else
      {
        v310 = 0.0;
      }

      v311 = objc_msgSend_objectAtIndexedSubscript_(v370[32], v308, v293);
      if (v311)
      {
        v311[33] = (v294 + (v306 * v310)) / v301;
      }

      v313 = objc_msgSend_objectAtIndexedSubscript_(v370[32], v312, v293);
LABEL_268:
      if (v313)
      {
        v313[34] = v301;
      }

LABEL_271:
      if (!sub_2621C719C(v371, v292))
      {
        goto LABEL_290;
      }

      v317 = objc_msgSend_objectAtIndexedSubscript_(v370[32], v316, v292);
      if (!v317)
      {
        v320 = v370[32];
LABEL_284:
        v335 = objc_msgSend_objectAtIndexedSubscript_(v320, v318, v292);
        if (v335)
        {
          v335[33] = v294;
        }

        v334 = objc_msgSend_objectAtIndexedSubscript_(v370[32], v336, v292);
        v322 = 1.0;
        goto LABEL_287;
      }

      v319 = v317[33] > 0.0001;

      v320 = v370[32];
      if (!v319)
      {
        goto LABEL_284;
      }

      v321 = objc_msgSend_objectAtIndexedSubscript_(v320, v318, v292);
      if (v321)
      {
        v322 = v321[34] + 1.0;
      }

      else
      {
        v322 = 1.0;
      }

      v324 = objc_msgSend_objectAtIndexedSubscript_(v370[32], v323, v292);
      v326 = v324;
      if (v324)
      {
        v327 = *(v324 + 132);
      }

      else
      {
        v327 = 0.0;
      }

      v328 = objc_msgSend_objectAtIndexedSubscript_(v370[32], v325, v292);
      v330 = v328;
      if (v328)
      {
        v331 = *(v328 + 136);
      }

      else
      {
        v331 = 0.0;
      }

      v332 = objc_msgSend_objectAtIndexedSubscript_(v370[32], v329, v292);
      if (v332)
      {
        v332[33] = (v294 + (v327 * v331)) / v322;
      }

      v334 = objc_msgSend_objectAtIndexedSubscript_(v370[32], v333, v292);
LABEL_287:
      if (v334)
      {
        v334[34] = v322;
      }

LABEL_290:
      v289 += 3;
    }

    while (v289 != v290);
    v286 = v373;
    v285 = v374;
LABEL_298:
    ++v287;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((v285 - v286) >> 3) > v287);
LABEL_299:
  v337 = v368;
  v380 = 0u;
  v381 = 0u;
  v382 = 0u;
  v383 = 0u;
  obj = v337;
  v341 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v338, &v380, &v391, 16);
  if (v341)
  {
    v361 = *v381;
    do
    {
      v342 = 0;
      v365 = v341;
      do
      {
        if (*v381 != v361)
        {
          objc_enumerationMutation(obj);
        }

        v343 = *(*(&v380 + 1) + 8 * v342);
        v376 = 0u;
        v377 = 0u;
        v378 = 0u;
        v379 = 0u;
        v344 = objc_msgSend_walls(v343, v339, v340);
        v347 = objc_msgSend_countByEnumeratingWithState_objects_count_(v344, v345, &v376, v386, 16);
        v369 = v342;
        if (v347)
        {
          v348 = *v377;
          do
          {
            for (m = 0; m != v347; ++m)
            {
              if (*v377 != v348)
              {
                objc_enumerationMutation(v344);
              }

              v350 = *(*(&v376 + 1) + 8 * m);
              if (v350)
              {
                v351 = *(v350 + 132);
                if (v351 > 0.0001 && v351 < *(v370 + 35))
                {
                  sub_2621C7F54(1uLL);
                }
              }
            }

            v347 = objc_msgSend_countByEnumeratingWithState_objects_count_(v344, v346, &v376, v386, 16);
          }

          while (v347);
        }

        v342 = v369 + 1;
      }

      while (v369 + 1 != v365);
      v341 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v339, &v380, &v391, 16);
    }

    while (v341);
  }

  sub_2621C74C4(v371);
  *&v391 = &v373;
  sub_2621E1CB0(&v391);
  if (v375)
  {
    operator delete(v375);
  }
}

void sub_26236E64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *__p)
{
  if (v30)
  {
    operator delete(v30);
  }

  sub_2621C74C4(&a21);
  a21 = &a27;
  sub_2621E1CB0(&a21);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_26236E9C8(float *a1, void *a2)
{
  v315 = *MEMORY[0x277D85DE8];
  v255 = a2;
  v3 = *(a1 + 78);
  v4 = *(a1 + 77);
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 3);
  sub_262371EA8(&v274, v5);
  v267 = a1;
  v6 = *(a1 + 56);
  v7 = *(a1 + 57);
  if (v6 != v7)
  {
    if (v5 <= 1)
    {
      v5 = 1;
    }

    do
    {
      if (v3 != v4)
      {
        v8 = 0;
        v9 = 0;
        v10 = v5;
        do
        {
          v11 = *(v267 + 77);
          if (sub_2621C719C((v11 + v8), *v6) || sub_2621C719C((v11 + v8), *(v6 + 4)))
          {
            sub_262371F84(&v274[v9], v6);
          }

          v9 += 3;
          v8 += 40;
          --v10;
        }

        while (v10);
      }

      v6 += 12;
    }

    while (v6 != v7);
  }

  sub_262377468(&v272, *(v267 + 32));
  v12 = v274;
  v262 = v275;
  if (v274 == v275)
  {
    goto LABEL_186;
  }

  do
  {
    v271[0] = 0;
    v271[1] = 0;
    v270 = v271;
    v13 = v12[1];
    if (*v12 == v13)
    {
      v17 = -1;
      v18 = v271;
    }

    else
    {
      v14 = *v12 + 1;
      do
      {
        sub_2621C8094(&v270, *(v14 - 1), v14 - 1);
        sub_2621C8094(&v270, *v14, v14);
        v15 = v14 + 3;
        v16 = v14 + 2;
        v14 += 3;
      }

      while (v16 != v13);
      v17 = *(v15 - 2);
      v18 = v270;
    }

    sub_262331F00(&v268, v18, v271);
    v19 = v268;
    v20 = v269;
    if (v269 - v268 == 8)
    {
      if (v17 != 6)
      {
        if (v17 == 5)
        {
          sub_2623783A4(v267, v272, *v268, *(v268 + 1));
        }

        else if (v17 == 4)
        {
          sub_262378224(v267, v272, *v268, *(v268 + 1));
        }

        goto LABEL_183;
      }

      v25 = *v268;
      v24 = *(v268 + 1);
      v26 = v272;
      sub_26229E1DC(&v301, v272 + 6 * v25, v272 + 6 * v24, v267 + 2);
      v27 = *(v267 + 56);
      v28 = *(v267 + 57) - v27;
      if (v28)
      {
        v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 2);
        if (v29 <= 1)
        {
          v29 = 1;
        }

        v30 = (v27 + 8);
        do
        {
          v31 = *(v30 - 2);
          v32 = *(v30 - 1);
          _ZF = v31 == v25 && v32 == v24;
          if (_ZF || (v31 == v24 ? (v34 = v32 == v25) : (v34 = 0), v34))
          {
            *v30 = v301;
          }

          v30 += 3;
          --v29;
        }

        while (v29);
      }

      if (v301 > 4)
      {
        if (v301 == 5)
        {
          sub_2623783A4(v267, v26, v25, v24);
          goto LABEL_178;
        }

        if (v301 != 6)
        {
          goto LABEL_178;
        }
      }

      else if (v301 != -1)
      {
        if (v301 == 4)
        {
          sub_262378224(v267, v26, v25, v24);
        }

        goto LABEL_178;
      }

      if (v273 != v26)
      {
        v124 = 0xAAAAAAAAAAAAAAABLL * ((v273 - v26) >> 4);
        if (v124 < 0x555555555555556)
        {
          sub_2623780D4(v124);
        }

        sub_2621CBEB0();
      }

      *v297 = *(48 * v25);
      *v299 = *(48 * v24);
      v126 = v297[0];
      v125 = v297[1];
      v127 = v299[0];
      v128 = v299[1];
      sub_26229E1DC(&v308, v297, v299, v267 + 2);
      v131.n128_u64[0] = vsub_f32(v126, v125);
      v131.n128_u64[0] = vmul_f32(v131.n128_u64[0], v131.n128_u64[0]);
      v129 = vsub_f32(v127, v128);
      v130 = vmul_f32(v129, v129);
      v131.n128_u64[0] = vsqrt_f32(vadd_f32(vzip1_s32(v131.n128_u64[0], v130), vzip2_s32(v131.n128_u64[0], v130)));
      if (*&v309 <= *(&v309 + 1))
      {
        v132 = v25;
      }

      else
      {
        v132 = v24;
      }

      v137 = *(48 * v132 + 0x20);
      v133 = vmla_n_f32(vmul_lane_f32(vmla_f32(vmul_f32(v128, 0x3F0000003F000000), 0x3F0000003F000000, v127), v131.n128_u64[0], 1), vmla_f32(vmul_f32(v125, 0x3F0000003F000000), 0x3F0000003F000000, v126), v131.n128_f32[0]);
      v134 = vdup_lane_s32(vadd_f32(v131.n128_u64[0], vdup_lane_s32(v131.n128_u64[0], 1)), 0);
      v135 = vdiv_f32(v133, v134);
      *v134.i32 = -v137.n128_f32[1];
      v131.n128_u64[0] = vadd_f32(vzip1_s32(v134, v137.n128_u64[0]), v135);
      v137.n128_u64[0] = vsub_f32(v126, v135);
      v136 = vsub_f32(v131.n128_u64[0], v135);
      v131.n128_f32[0] = vaddv_f32(vmul_f32(v137.n128_u64[0], v136));
      v137.n128_f32[0] = vaddv_f32(vmul_f32(v136, v136));
      if (v137.n128_f32[0] >= 0.000001)
      {
        v138 = v137.n128_f32[0];
      }

      else
      {
        v138 = 0.000001;
      }

      v131.n128_u64[0] = vmla_n_f32(v135, v136, v131.n128_f32[0] / v138);
      v137.n128_u64[0] = vmla_n_f32(v135, v136, vaddv_f32(vmul_f32(vsub_f32(v125, v135), v136)) / v138);
      sub_26237812C(v267, v25, v131, v137);
      v139.n128_u64[0] = vmla_n_f32(v135, v136, vaddv_f32(vmul_f32(vsub_f32(v128, v135), v136)) / v138);
      v140.n128_u64[0] = vmla_n_f32(v135, v136, vaddv_f32(vmul_f32(vsub_f32(v127, v135), v136)) / v138);
      sub_26237812C(v267, v24, v140, v139);
      if (v313)
      {
        v314 = v313;
        operator delete(v313);
      }

      if (v311)
      {
        v312 = v311;
        operator delete(v311);
      }

      operator delete(0);
LABEL_178:
      if (v306)
      {
        v307 = v306;
        operator delete(v306);
      }

      v123 = v304;
      if (v304)
      {
        v305 = v304;
LABEL_182:
        operator delete(v123);
      }

      goto LABEL_183;
    }

    if ((v269 - v268) < 9)
    {
      goto LABEL_183;
    }

    v299[1] = 0;
    v299[0] = 0;
    v300 = 0;
    v294 = 0;
    v295 = 0;
    v296 = 0;
    v291 = 0;
    v292 = 0;
    v293 = 0;
    v288 = 0;
    v289 = 0;
    v290 = 0;
    v285 = 0;
    v286 = 0;
    v287 = 0;
    v282 = 0;
    v283 = 0;
    v284 = 0;
    if (v268 == v269)
    {
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v21 = v272;
      do
      {
        *v264 = v21[3 * *v19 + 2];
        LODWORD(v308) = v264[0];
        sub_2621C8F2C(&v285, &v308);
        LODWORD(v308) = HIDWORD(v264[0]);
        sub_2621C8F2C(&v282, &v308);
        ++v19;
      }

      while (v19 != v20);
      v23 = v285;
      v22 = v286;
    }

    memset(__p, 0, sizeof(__p));
    sub_2621C8E70(__p, v23, v22, (v22 - v23) >> 2);
    *&v308 = &unk_2874EEF98;
    v310 = &v308;
    v35 = sub_26237865C(__p, &v308);
    v37 = v36;
    sub_26230C710(&v308);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    memset(v280, 0, sizeof(v280));
    v265 = v282;
    sub_2621C8E70(v280, v282, v283, (v283 - v282) >> 2);
    *&v301 = &unk_2874EEF98;
    *(&v302 + 1) = &v301;
    v38 = sub_26237865C(v280, &v301);
    v40 = v39;
    sub_26230C710(&v301);
    if (v280[0])
    {
      v280[1] = v280[0];
      operator delete(v280[0]);
    }

    v279[0] = 0;
    v279[1] = 0;
    v278 = v279;
    v43 = v268;
    v44 = v269;
    if (v268 != v269)
    {
      v45 = atanf(((v38 + v40) * 0.5) / ((v35 + v37) * 0.5));
      v46 = v272;
      do
      {
        v47 = *v43;
        LODWORD(v297[0]) = v47;
        v41.n128_f32[0] = ((v45 - atanf(COERCE_FLOAT(HIDWORD(v46[6 * v47 + 4])) / COERCE_FLOAT(*&v46[6 * v47 + 4]))) * 180.0) / 3.14159265;
        if (fabsf(v41.n128_f32[0]) <= v267[39])
        {
          sub_2621C8094(&v278, v47, v297);
        }

        ++v43;
      }

      while (v43 != v44);
    }

    v48 = *v12;
    v49 = v12[1];
    if (*v12 == v49)
    {
      v78 = 0;
      goto LABEL_138;
    }

    v260 = v23;
    v50 = v272;
    do
    {
      v51 = *v48;
      v52 = v48[1];
      v53 = &v50[3 * *v48];
      v42 = *v53;
      v41 = v50[3 * v52];
      v276 = v41;
      v277 = v42;
      v54 = v48[2];
      if (v54 > 4)
      {
        if (v54 != 5)
        {
          if (v54 != 6)
          {
            goto LABEL_124;
          }

          v58 = v279[0];
          if (!v279[0])
          {
            goto LABEL_111;
          }

          v59 = v279[0];
          while (1)
          {
            v60 = *(v59 + 7);
            if (v51 >= v60)
            {
              if (v60 >= v51)
              {
                v72 = vsub_f32(v277.n128_u64[0], *&v277.n128_i8[8]);
                if (sqrtf(vaddv_f32(vmul_f32(v72, v72))) > v267[11])
                {
                  v297[0] = v53[4];
                  sub_2621CBA84(v299, v297);
                  v58 = v279[0];
                }

                while (1)
                {
LABEL_106:
                  if (!v58)
                  {
                    goto LABEL_111;
                  }

                  v73 = *(v58 + 7);
                  if (v52 >= v73)
                  {
                    if (v73 >= v52)
                    {
                      v74 = vsub_f32(v276.n128_u64[0], *&v276.n128_i8[8]);
                      if (sqrtf(vaddv_f32(vmul_f32(v74, v74))) > v267[11])
                      {
                        v297[0] = v50[3 * v52 + 2].n128_u64[0];
                        sub_2621CBA84(v299, v297);
                      }

LABEL_111:
                      v297[0] = vmla_f32(vmul_f32(vmul_f32(vadd_f32(v276.n128_u64[0], *&v276.n128_i8[8]), 0x3F0000003F000000), 0x3F0000003F000000), 0x3F0000003F000000, vmul_f32(vadd_f32(v277.n128_u64[0], *&v277.n128_i8[8]), 0x3F0000003F000000));
                      sub_2621CBA84(&v294, v297);
                      goto LABEL_124;
                    }

                    ++v58;
                  }

                  v58 = *v58;
                }
              }

              ++v59;
            }

            v59 = *v59;
            if (!v59)
            {
              goto LABEL_106;
            }
          }
        }

        v61 = v277;
        v62 = v276;
        sub_2621DCD34(v297, &v277, &v276);
        v63 = v267[18];
        v64 = v62.n128_u64[0];
        v65 = v61.n128_u64[0];
        if (*v297[0] >= v63)
        {
          v64 = *&v62.n128_i8[8];
          v65 = v61.n128_u64[0];
          if (*(v297[0] + 1) >= v63)
          {
            v64 = v62.n128_u64[0];
            v65 = *&v61.n128_i8[8];
            if (*(v297[0] + 2) >= v63)
            {
              v64 = *&v62.n128_i8[8];
              v65 = *&v61.n128_i8[8];
            }
          }
        }

        operator delete(v297[0]);
        v66 = vabd_f32(v65, v61.n128_u64[0]);
        if (fmaxf(v66.f32[0], v66.f32[1]) <= 0.000001)
        {
          v297[0] = v51;
        }

        else
        {
          v297[0] = (v51 | 0x100000000);
        }

        sub_2623787A8(v267 + 118, v297);
        v67 = vabd_f32(v64, v62.n128_u64[0]);
        if (fmaxf(v67.f32[0], v67.f32[1]) <= 0.000001)
        {
          v297[0] = v52;
        }

        else
        {
          v297[0] = (v52 | 0x100000000);
        }

        sub_2623787A8(v267 + 118, v297);
        v68 = v279[0];
        if (v279[0])
        {
          v69 = v279[0];
          while (1)
          {
            v70 = *(v69 + 7);
            if (v51 >= v70)
            {
              if (v70 >= v51)
              {
                v75 = vsub_f32(v61.n128_u64[0], *&v61.n128_i8[8]);
                if (sqrtf(vaddv_f32(vmul_f32(v75, v75))) > v267[11])
                {
                  v297[0] = v50[3 * v51 + 2].n128_u64[0];
                  sub_2621CBA84(v299, v297);
                  v68 = v279[0];
                }

                while (1)
                {
LABEL_116:
                  if (!v68)
                  {
                    goto LABEL_121;
                  }

                  v76 = *(v68 + 7);
                  if (v52 >= v76)
                  {
                    if (v76 >= v52)
                    {
                      v77 = vsub_f32(v62.n128_u64[0], *&v62.n128_i8[8]);
                      if (sqrtf(vaddv_f32(vmul_f32(v77, v77))) > v267[11])
                      {
                        v297[0] = v50[3 * v52 + 2].n128_u64[0];
                        sub_2621CBA84(v299, v297);
                      }

                      goto LABEL_121;
                    }

                    ++v68;
                  }

                  v68 = *v68;
                }
              }

              ++v69;
            }

            v69 = *v69;
            if (!v69)
            {
              goto LABEL_116;
            }
          }
        }

LABEL_121:
        v297[0] = vmla_f32(vmul_f32(v64, 0x3F0000003F000000), 0x3F0000003F000000, v65);
        sub_2621CBA84(&v294, v297);
        goto LABEL_124;
      }

      if (v54 == 3)
      {
        v297[0] = v53[4];
        sub_2621CBA84(&v291, v297);
        v297[0] = v50[3 * v52 + 2].n128_u64[0];
        sub_2621CBA84(&v291, v297);
        v297[0] = vmul_f32(vadd_f32(v277.n128_u64[0], *&v277.n128_i8[8]), 0x3F0000003F000000);
        sub_2621CBA84(&v288, v297);
        v297[0] = vmul_f32(vadd_f32(v276.n128_u64[0], *&v276.n128_i8[8]), 0x3F0000003F000000);
        sub_2621CBA84(&v288, v297);
        goto LABEL_124;
      }

      if (v54 != 4)
      {
        goto LABEL_124;
      }

      v55 = v279[0];
      if (!v279[0])
      {
        goto LABEL_123;
      }

      v56 = v279[0];
      while (1)
      {
        v57 = *(v56 + 7);
        if (v51 >= v57)
        {
          break;
        }

LABEL_67:
        v56 = *v56;
        if (!v56)
        {
          while (1)
          {
LABEL_97:
            v71 = *(v55 + 7);
            if (v52 >= v71)
            {
              if (v71 >= v52)
              {
                v297[0] = v50[3 * v52 + 2].n128_u64[0];
                sub_2621CBA84(v299, v297);
                v297[0] = vmul_f32(vadd_f32(v276.n128_u64[0], *&v276.n128_i8[8]), 0x3F0000003F000000);
                sub_2621CBA84(&v294, v297);
                goto LABEL_123;
              }

              ++v55;
            }

            v55 = *v55;
            if (!v55)
            {
              goto LABEL_123;
            }
          }
        }
      }

      if (v57 < v51)
      {
        ++v56;
        goto LABEL_67;
      }

      v297[0] = v53[4];
      sub_2621CBA84(v299, v297);
      v297[0] = vmul_f32(vadd_f32(v277.n128_u64[0], *&v277.n128_i8[8]), 0x3F0000003F000000);
      sub_2621CBA84(&v294, v297);
      v55 = v279[0];
      if (v279[0])
      {
        goto LABEL_97;
      }

LABEL_123:
      v297[0] = v51;
      sub_2623787A8(v267 + 118, v297);
      v297[0] = (v51 | 0x100000000);
      sub_2623787A8(v267 + 118, v297);
      v297[0] = v52;
      sub_2623787A8(v267 + 118, v297);
      v297[0] = (v52 | 0x100000000);
      sub_2623787A8(v267 + 118, v297);
LABEL_124:
      v48 += 3;
    }

    while (v48 != v49);
    v78 = v299[0];
    v23 = v260;
    if (v299[1] != v299[0])
    {
      v79 = v294;
      if (v295 != v294)
      {
        v80 = 0;
        v81 = v299[0];
        do
        {
          v82 = *v81++;
          v80 = vadd_f32(v80, v82);
        }

        while (v81 != v299[1]);
        v83 = 0;
        do
        {
          v84 = *v79++;
          v85.i32[1] = v84.i32[1];
          v83 = vadd_f32(v83, v84);
        }

        while (v79 != v295);
        v86 = v268;
        v87 = v269;
        if (v268 != v269)
        {
          *v85.i32 = ((v295 - v294) >> 3);
          v88 = vdiv_f32(v83, vdup_lane_s32(v85, 0));
          *v83.i32 = ((v299[1] - v299[0]) >> 3);
          v89 = vdiv_f32(v80, vdup_lane_s32(v83, 0));
          v90 = vmul_f32(v89, v89);
          v90.i32[0] = vadd_f32(v90, vdup_lane_s32(v90, 1)).u32[0];
          v91 = vrsqrte_f32(v90.u32[0]);
          v92 = vmul_f32(v91, vrsqrts_f32(v90.u32[0], vmul_f32(v91, v91)));
          v93 = vmul_f32(v92, vrsqrts_f32(v90.u32[0], vmul_f32(v92, v92)));
          v94 = vmul_n_f32(v89, *v93.i32);
          *v93.i32 = -*&v94.i32[1];
          v95 = v272;
          v96 = vsub_f32(vadd_f32(v88, vzip1_s32(v93, v94)), v88);
          v97 = vaddv_f32(vmul_f32(v96, v96));
          if (v97 >= 0.000001)
          {
            v98 = v97;
          }

          else
          {
            v98 = 0.000001;
          }

          do
          {
            v99 = *v86;
            v100 = &v95[48 * v99];
            v41.n128_u64[0] = vmla_n_f32(v88, v96, vaddv_f32(vmul_f32(vsub_f32(*v100, v88), v96)) / v98);
            v42.n128_u64[0] = vmla_n_f32(v88, v96, vaddv_f32(vmul_f32(vsub_f32(v100[1], v88), v96)) / v98);
            sub_26237812C(v267, v99, v41, v42);
            ++v86;
          }

          while (v86 != v87);
        }

        goto LABEL_149;
      }
    }

LABEL_138:
    v101 = v288;
    if (v289 != v288)
    {
      v102 = v291;
      v103 = 0;
      v104 = 0;
      if (v292 != v291)
      {
        v105 = 0;
        do
        {
          v106 = *v102++;
          v107.i32[1] = v106.i32[1];
          v105 = vadd_f32(v105, v106);
        }

        while (v102 != v292);
        *v107.i32 = ((v292 - v291) >> 3);
        v108 = vdiv_f32(v105, vdup_lane_s32(v107, 0));
        v109 = vmul_f32(v108, v108);
        v109.i32[0] = vadd_f32(v109, vdup_lane_s32(v109, 1)).u32[0];
        v110 = vrsqrte_f32(v109.u32[0]);
        v111 = vmul_f32(v110, vrsqrts_f32(v109.u32[0], vmul_f32(v110, v110)));
        v104 = vmul_n_f32(v108, vmul_f32(v111, vrsqrts_f32(v109.u32[0], vmul_f32(v111, v111))).f32[0]);
      }

      do
      {
        v112 = *v101++;
        v113.i32[1] = v112.i32[1];
        v103 = vadd_f32(v103, v112);
      }

      while (v101 != v289);
      v114 = v268;
      v115 = v269;
      if (v268 != v269)
      {
        *v113.i32 = ((v289 - v288) >> 3);
        v116 = vdiv_f32(v103, vdup_lane_s32(v113, 0));
        *v103.i32 = -*&v104.i32[1];
        v117 = v272;
        v118 = vsub_f32(vadd_f32(vzip1_s32(v103, v104), v116), v116);
        v119 = vaddv_f32(vmul_f32(v118, v118));
        if (v119 >= 0.000001)
        {
          v120 = v119;
        }

        else
        {
          v120 = 0.000001;
        }

        do
        {
          v121 = *v114;
          v122 = &v117[48 * v121];
          v41.n128_u64[0] = vmla_n_f32(v116, v118, vaddv_f32(vmul_f32(vsub_f32(*v122, v116), v118)) / v120);
          v42.n128_u64[0] = vmla_n_f32(v116, v118, vaddv_f32(vmul_f32(vsub_f32(v122[1], v116), v118)) / v120);
          sub_26237812C(v267, v121, v41, v42);
          ++v114;
        }

        while (v114 != v115);
      }
    }

LABEL_149:
    sub_2621C6C04(v279[0]);
    if (v265)
    {
      operator delete(v265);
    }

    if (v23)
    {
      operator delete(v23);
    }

    if (v288)
    {
      operator delete(v288);
    }

    if (v291)
    {
      operator delete(v291);
    }

    if (v294)
    {
      operator delete(v294);
    }

    if (v78)
    {
      v123 = v78;
      goto LABEL_182;
    }

LABEL_183:
    if (v268)
    {
      v269 = v268;
      operator delete(v268);
    }

    sub_2621C6C04(v271[0]);
    v12 += 3;
  }

  while (v12 != v262);
LABEL_186:
  if (v272)
  {
    operator delete(v272);
  }

  *&v308 = &v274;
  sub_2621E1CB0(&v308);
  sub_262378DD8((v267 + 82));
  v141 = *(v267 + 56);
  v142 = *(v267 + 57);
  if (v141 != v142)
  {
    v143 = v141 + 2;
    do
    {
      *&v308 = v143;
      v144 = sub_262377054(v267 + 82, *v143, &v308);
      *&v308 = *(v143 - 1);
      sub_26223C48C((v144 + 3), &v308);
      v145 = v143 + 1;
      v143 += 3;
    }

    while (v145 != v142);
  }

  v266 = v255;
  for (i = 0; objc_msgSend_count(*(v267 + 32), v146, v147, v255) > i; ++i)
  {
    v150 = objc_msgSend_objectAtIndexedSubscript_(*(v267 + 32), v149, i);
    v153 = v150;
    if (v150)
    {
      v155 = *(v150 + 160);
      v154 = *(v150 + 168);
    }

    else
    {
      v155 = 0;
      LODWORD(v154) = 0;
    }

    if (v155 < objc_msgSend_count(v266, v151, v152) && (!sub_2623777AC(v267 + 59, i, 0) || !sub_2623777AC(v267 + 59, i, 1)))
    {
      v156 = *(v267 + 69);
      v157 = sub_26223FCEC(v153).n128_u64[0];
      v159 = v158;
      v160 = (v156 + 40 * v155);
      if (sub_2623777AC(v160, v154, 0))
      {
        *&v308 = v154;
        v161 = sub_262377868((v156 + 40 * v155), &v308);
        if (v161[1] != *v161)
        {
          v163 = objc_msgSend_objectAtIndexedSubscript_(v266, v162, v155);
          v166 = objc_msgSend_walls(v163, v164, v165);

          *&v308 = v154;
          v167 = sub_262377868(v160, &v308);
          v170 = *v167;
          v171 = v167[1];
          while (v170 != v171)
          {
            v172 = *v170;
            if (objc_msgSend_count(v166, v168, v169) > v172)
            {
              v173 = objc_msgSend_objectAtIndexedSubscript_(v166, v168, *v170);
              v174 = v173;
              if (v173)
              {
                v175 = v173[22];
              }

              else
              {
                v175 = 0;
              }

              v176 = sub_26223FCEC(v173);
              v178 = v176.n128_u64[0];
              v179 = v177.n128_u64[0];
              v180 = v170[1];
              if (v180 == 1)
              {
                v177.n128_u64[0] = vsub_f32(v177.n128_u64[0], v176.n128_u64[0]);
                v176.n128_f32[0] = vaddv_f32(vmul_f32(vsub_f32(v157, v176.n128_u64[0]), v177.n128_u64[0]));
                v185 = vaddv_f32(vmul_f32(v177.n128_u64[0], v177.n128_u64[0]));
                if (v185 < 0.000001)
                {
                  v185 = 0.000001;
                }

                v186 = vmla_n_f32(v178, v177.n128_u64[0], v176.n128_f32[0] / v185);
                v176.n128_u64[0] = v186;
                v177.n128_u64[0] = v159;
                sub_26237812C(v267, i, v176, v177);
                v187.n128_u64[0] = v178;
                v188.n128_u64[0] = v186;
                sub_26237812C(v267, v175, v187, v188);
              }

              else if (!v180)
              {
                v177.n128_u64[0] = vsub_f32(v177.n128_u64[0], v176.n128_u64[0]);
                v176.n128_f32[0] = vaddv_f32(vmul_f32(vsub_f32(v157, v176.n128_u64[0]), v177.n128_u64[0]));
                v181 = vaddv_f32(vmul_f32(v177.n128_u64[0], v177.n128_u64[0]));
                if (v181 < 0.000001)
                {
                  v181 = 0.000001;
                }

                v182 = vmla_n_f32(v178, v177.n128_u64[0], v176.n128_f32[0] / v181);
                v176.n128_u64[0] = v182;
                v177.n128_u64[0] = v159;
                sub_26237812C(v267, i, v176, v177);
                v183.n128_u64[0] = v182;
                v184.n128_u64[0] = v179;
                sub_26237812C(v267, v175, v183, v184);
              }
            }

            v170 += 2;
          }
        }
      }

      if (sub_2623777AC(v160, v154, 1))
      {
        *&v308 = v154 | 0x100000000;
        v189 = sub_262377868(v160, &v308);
        if (v189[1] != *v189)
        {
          v191 = objc_msgSend_objectAtIndexedSubscript_(v266, v190, v155);
          v194 = objc_msgSend_walls(v191, v192, v193);

          *&v308 = v154 | 0x100000000;
          v195 = sub_262377868(v160, &v308);
          v198 = *v195;
          v199 = v195[1];
          while (v198 != v199)
          {
            v200 = *v198;
            if (objc_msgSend_count(v194, v196, v197) > v200)
            {
              v201 = objc_msgSend_objectAtIndexedSubscript_(v194, v196, *v198);
              v202 = v201;
              if (v201)
              {
                v203 = v201[22];
              }

              else
              {
                v203 = 0;
              }

              v204 = sub_26223FCEC(v201);
              v206 = v204.n128_u64[0];
              v207 = v205.n128_u64[0];
              v208 = v198[1];
              if (v208 == 1)
              {
                v205.n128_u64[0] = vsub_f32(v205.n128_u64[0], v204.n128_u64[0]);
                v204.n128_f32[0] = vaddv_f32(vmul_f32(vsub_f32(v159, v204.n128_u64[0]), v205.n128_u64[0]));
                v213 = vaddv_f32(vmul_f32(v205.n128_u64[0], v205.n128_u64[0]));
                if (v213 < 0.000001)
                {
                  v213 = 0.000001;
                }

                v214 = vmla_n_f32(v206, v205.n128_u64[0], v204.n128_f32[0] / v213);
                v204.n128_u64[0] = v157;
                v205.n128_u64[0] = v214;
                sub_26237812C(v267, i, v204, v205);
                v215.n128_u64[0] = v206;
                v216.n128_u64[0] = v214;
                sub_26237812C(v267, v203, v215, v216);
              }

              else if (!v208)
              {
                v205.n128_u64[0] = vsub_f32(v205.n128_u64[0], v204.n128_u64[0]);
                v204.n128_f32[0] = vaddv_f32(vmul_f32(vsub_f32(v159, v204.n128_u64[0]), v205.n128_u64[0]));
                v209 = vaddv_f32(vmul_f32(v205.n128_u64[0], v205.n128_u64[0]));
                if (v209 < 0.000001)
                {
                  v209 = 0.000001;
                }

                v210 = vmla_n_f32(v206, v205.n128_u64[0], v204.n128_f32[0] / v209);
                v204.n128_u64[0] = v157;
                v205.n128_u64[0] = v210;
                sub_26237812C(v267, i, v204, v205);
                v211.n128_u64[0] = v210;
                v212.n128_u64[0] = v207;
                sub_26237812C(v267, v203, v211, v212);
              }
            }

            v198 += 2;
          }
        }
      }
    }
  }

  v217 = v266;
  v218 = *(v267 + 78);
  v219 = *(v267 + 77);
  v220 = 0xCCCCCCCCCCCCCCCDLL * ((v218 - v219) >> 3);
  sub_262371EA8(&v288, v220);
  v221 = *(v267 + 56);
  v222 = *(v267 + 57);
  if (v221 != v222)
  {
    if (v220 <= 1)
    {
      v220 = 1;
    }

    do
    {
      if (v218 != v219)
      {
        v223 = 0;
        v224 = 0;
        v225 = v220;
        do
        {
          v226 = *(v267 + 77);
          if (sub_2621C719C((v226 + v223), *v221) || sub_2621C719C((v226 + v223), *(v221 + 4)))
          {
            sub_262371F84((v288 + v224), v221);
          }

          v224 += 24;
          v223 += 40;
          --v225;
        }

        while (v225);
      }

      v221 += 12;
    }

    while (v221 != v222);
  }

  v301 = 0u;
  v302 = 0u;
  v303 = 1065353216;
  v227 = *(v267 + 78) - *(v267 + 77);
  if (v227)
  {
    v228 = 0xCCCCCCCCCCCCCCCDLL * (v227 >> 3);
    if (v228 <= 1)
    {
      v228 = 1;
    }

    v256 = v228;
    v257 = 0;
    __asm { FMOV            V0.2S, #1.0 }

    while (1)
    {
      v233 = *(v267 + 77);
      sub_262377468(v299, *(v267 + 32));
      v234 = (v288 + 24 * v257);
      v235 = *v234;
      v236 = v234[1];
      while (1)
      {
        if (v235 == v236)
        {
          goto LABEL_295;
        }

        if (*(v235 + 8) != 3)
        {
          break;
        }

        v235 += 12;
      }

      if (*(v233 + 40 * v257 + 16))
      {
        sub_262241270(1uLL);
      }

      v238 = v267[32];
      v295 = 0;
      v296 = 0;
      v294 = 0;
      sub_262349634(&v294, 0, 0, 0);
      sub_2623496B0(v297, 1, &v294, v238 * 0.6);
      if (v294)
      {
        v295 = v294;
        operator delete(v294);
      }

      sub_262336EFC(v297);
      v239 = v298;
      v291 = 0;
      v292 = 0;
      v293 = 0;
      sub_262349634(&v291, v297[0], v297[1], 0xAAAAAAAAAAAAAAABLL * ((v297[1] - v297[0]) >> 2));
      if (v239 >= 1)
      {
        break;
      }

LABEL_291:
      if (v291)
      {
        operator delete(v291);
      }

      if (v297[0])
      {
        v297[1] = v297[0];
        operator delete(v297[0]);
      }

LABEL_295:
      if (v299[0])
      {
        operator delete(v299[0]);
      }

      if (++v257 == v256)
      {
        goto LABEL_298;
      }
    }

    v240 = 0;
    v258 = v239;
    while (2)
    {
      v242 = v291;
      v241 = v292;
      v259 = v240;
      if (v292 == v291)
      {
        v261 = 0;
      }

      else
      {
        v243 = 0;
        v261 = 0;
        v244 = 0;
        v245 = 8;
        do
        {
          if (*&v242[v245] - 1 == v240)
          {
            v246 = v243 - v261;
            v247 = (v243 - v261) >> 2;
            v248 = v247 + 1;
            if ((v247 + 1) >> 62)
            {
              sub_2621CBEB0();
            }

            if (-v261 >> 1 > v248)
            {
              v248 = -v261 >> 1;
            }

            if (-v261 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v249 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v249 = v248;
            }

            if (v249)
            {
              sub_2621C7F54(v249);
            }

            v250 = (v243 - v261) >> 2;
            v251 = (4 * v247);
            v252 = (4 * v247 - 4 * v250);
            *v251 = v244;
            v243 = v251 + 1;
            memcpy(v252, v261, v246);
            if (v261)
            {
              operator delete(v261);
              v242 = v291;
              v241 = v292;
            }

            v261 = v252;
            v240 = v259;
          }

          ++v244;
          v245 += 12;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((v241 - v242) >> 2) > v244);
        v253 = v261;
        if (v243 != v261)
        {
          do
          {
            v263 = vcvt_s32_f32(*(8 * *v253));
            if (sub_2623777AC(v267 + 64, v263.i32[0], v263.i32[1]))
            {
              *&v308 = v263;
              v254 = sub_262377868(v267 + 64, &v308);
              if (v254[1] != *v254)
              {
                sub_2621CBEC8(1uLL);
              }
            }

            ++v253;
          }

          while (v253 != v243);
          v239 = v258;
          goto LABEL_288;
        }

        v239 = v258;
      }

      sub_262377468(&v308, *(v267 + 32));
      if (v299[0])
      {
        operator delete(v299[0]);
      }

      *v299 = v308;
      v300 = v309;
LABEL_288:
      if (v261)
      {
        operator delete(v261);
      }

      v240 = v259 + 1;
      if (v259 + 1 == v239)
      {
        goto LABEL_291;
      }

      continue;
    }
  }

LABEL_298:
  sub_2621C74C4(&v301);
  *&v308 = &v288;
  sub_2621E1CB0(&v308);
}

void sub_262370938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  sub_262258C88(&STACK[0x220]);
  if (__p)
  {
    operator delete(__p);
  }

  sub_2621C6C04(a31);
  if (a33)
  {
    operator delete(a33);
  }

  a64 = &a36;
  sub_2621E1CB0(&a64);

  _Unwind_Resume(a1);
}

void *sub_262370CD4(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_2621E1EE4(a2);
    }

    sub_2621CBEB0();
  }

  return a1;
}

void sub_262370D9C(void ***a1)
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
        v6 = *(v4 - 18);
        v4 -= 144;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_262370E1C(float **a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = a2;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v17, v21, 16);
  if (v7)
  {
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        if (*(*a1 + 4) == 1)
        {
          v11 = **a1;
          objc_msgSend_quad(v10, v5, v6);
          if (vabds_f32(v11, v12) > 0.01)
          {
            if (qword_27FF0C060 != -1)
            {
              dispatch_once(&qword_27FF0C060, &unk_2874EE100);
            }

            v13 = qword_27FF0C058;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              *v16 = 0;
              _os_log_debug_impl(&dword_2621C3000, v13, OS_LOG_TYPE_DEBUG, "Inconsistent floor height from merged and external walls.", v16, 2u);
            }
          }
        }

        else
        {
          objc_msgSend_quad(v10, v5, v6);
          v14 = *a1;
          *v14 = v15;
          *(v14 + 4) = 1;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v17, v21, 16);
    }

    while (v7);
  }
}

void sub_262371014(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v37 = a2;
  v38 = a3;
  __p = 0;
  v48 = 0uLL;
  v8 = *(a4 + 16);
  if (v8)
  {
    v9 = 0;
    do
    {
      v10 = v8[3];
      v11 = v8[4];
      while (v10 != v11)
      {
        v13 = *v10;
        v12 = v10[1];
        v14 = *(v8 + 4);
        if (v9 >= *(&v48 + 1))
        {
          v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - __p) >> 2);
          v16 = v15 + 1;
          if ((v15 + 1) > 0x1555555555555555)
          {
            sub_2621CBEB0();
          }

          if (0x5555555555555556 * ((*(&v48 + 1) - __p) >> 2) > v16)
          {
            v16 = 0x5555555555555556 * ((*(&v48 + 1) - __p) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((*(&v48 + 1) - __p) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v17 = 0x1555555555555555;
          }

          else
          {
            v17 = v16;
          }

          sub_262371A4C(&v49, v17, v15, &__p);
          v18 = v50;
          *v50 = v13;
          *(v18 + 4) = v12;
          *(v18 + 8) = v14;
          *&v50 = v18 + 12;
          v19 = (*(&v49 + 1) - (v48 - __p));
          memcpy(v19, __p, v48 - __p);
          v20 = __p;
          v21 = *(&v48 + 1);
          __p = v19;
          v22 = v50;
          v48 = v50;
          *&v50 = v20;
          *(&v50 + 1) = v21;
          *&v49 = v20;
          *(&v49 + 1) = v20;
          if (v20)
          {
            v41 = v22;
            operator delete(v20);
            v22 = v41;
          }

          v9 = v22;
        }

        else
        {
          *v9 = v13;
          *(v9 + 1) = v12;
          *(v9 + 2) = v14;
          v9 += 12;
        }

        *&v48 = v9;
        v10 += 2;
      }

      v8 = *v8;
    }

    while (v8);
  }

  v23 = objc_msgSend_count(v38, v6, v7);
  sub_262371AD8(&v45, &__p, v23);
  v25 = v45;
  v24 = v46;
  v26 = 0xCCCCCCCCCCCCCCCDLL * ((v46 - v45) >> 3);
  sub_262371EA8(&v43, v26);
  v27 = __p;
  v28 = v48;
  if (__p != v48)
  {
    if (v26 <= 1)
    {
      v26 = 1;
    }

    do
    {
      if (v24 != v25)
      {
        v29 = 0;
        v30 = 0;
        v31 = v26;
        do
        {
          v32 = v45;
          if (sub_2621C719C((v45 + v29), *v27) || sub_2621C719C((v32 + v29), *(v27 + 1)))
          {
            sub_262371F84(&v43[v30], v27);
          }

          v30 += 3;
          v29 += 40;
          --v31;
        }

        while (v31);
      }

      v27 += 12;
    }

    while (v27 != v28);
  }

  v33 = v43;
  v36 = v44;
  if (v43 != v44)
  {
    do
    {
      v49 = 0u;
      v50 = 0u;
      v51 = 1065353216;
      v34 = v33[1];
      v39 = v33;
      if (*v33 != v34)
      {
        v35 = (*v33 + 2);
        sub_2621C729C(&v49, **v33, *v33);
        sub_2621C729C(&v49, *(v35 - 4), (v35 - 4));
        operator new();
      }

      memset(v42, 0, sizeof(v42));
      sub_2623720A0(v42, 0, 0);
      v40 = v37;

      if (v42[0])
      {
        operator delete(v42[0]);
      }

      sub_2621C74C4(&v49);
      v33 = v39 + 3;
    }

    while (v39 + 3 != v36);
  }

  *&v49 = &v43;
  sub_2621E1CB0(&v49);
  *&v49 = &v45;
  sub_262362D50(&v49);
  if (__p)
  {
    *&v48 = __p;
    operator delete(__p);
  }
}

void sub_2623718E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, char *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36)
{
  a31 = &a25;
  sub_262362D50(&a31);
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_262371A4C(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    if (a2 < 0x1555555555555556)
    {
      operator new();
    }

    sub_2621C6A34();
  }

  *a1 = 0;
  a1[1] = 12 * a3;
  a1[2] = 12 * a3;
  a1[3] = 0;
  return a1;
}

void sub_262371AD8(void *a1, int **a2, unint64_t a3)
{
  v13 = -1;
  sub_2621DE86C(__p, a3, &v13);
  memset(v14, 0, sizeof(v14));
  v11 = v14;
  v12 = 0;
  if (a3)
  {
    if (a3 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_2621E1E3C(a3);
    }

    sub_2621CBEB0();
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v8 = v14[0];
    do
    {
      v9 = *v6;
      v10 = v6[1];
      v6 += 3;
      *(*(v8 + 24 * v9) + 4 * v10) = 0;
    }

    while (v6 != v7);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v13 = 0;
  __p[0] = v14;
  sub_2621E1CB0(__p);
}

void sub_262371E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  sub_2621E1CB0(&a11);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_262371EA8(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_2621CBEB0();
  }

  return a1;
}

void sub_262371F84(char **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if ((v8 + 1) > 0x1555555555555555)
    {
      sub_2621CBEB0();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    sub_262371A4C(&v20, v11, v8, a1);
    v12 = v22;
    v13 = *(a2 + 2);
    *v22 = *a2;
    *(v12 + 8) = v13;
    *&v22 = v22 + 12;
    v14 = a1[1] - *a1;
    v15 = &v21[-v14];
    memcpy(&v21[-v14], *a1, v14);
    v16 = *a1;
    *a1 = v15;
    v17 = a1[2];
    v18 = v22;
    *(a1 + 1) = v22;
    *&v22 = v16;
    *(&v22 + 1) = v17;
    v20 = v16;
    v21 = v16;
    if (v16)
    {
      v19 = v18;
      operator delete(v16);
      v18 = v19;
    }

    v7 = v18;
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 12;
  }

  a1[1] = v7;
}

uint64_t *sub_2623720A0(uint64_t *result, uint64_t *a2, unint64_t a3)
{
  if (a3)
  {
    sub_2621C8EEC(result, a3);
  }

  return result;
}

void sub_2623720EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_262372108(void *a1, __n128 a2, __n128 a3, float a4, float a5)
{
  v5 = a1;
  v7 = a2;
  v6 = a3;
  v8 = a2;
  v8.n128_f32[2] = a5;
  v9 = a3;
  v9.n128_f32[2] = a5;
  v6.n128_f32[2] = a4;
  v7.n128_f32[2] = a4;
  src[0] = v8;
  src[1] = v9;
  src[2] = v6;
  src[3] = v7;
  v14 = v5;
  if (v5)
  {
    objc_copyStruct(v5 + 272, src, 64, 1, 0);
  }
}

void sub_2623721AC(uint64_t a1, void *a2, float a3, float a4)
{
  v5 = a2;
  if (a1)
  {
    v19 = v5;
    objc_msgSend_quad(v5, v6, v7);
    v16 = v8;
    objc_msgSend_quad(v19, v9, v10);
    v11 = v16;
    v12 = v16;
    *(&v12 + 2) = a4;
    v14 = v13;
    *(&v14 + 2) = a4;
    *(&v13 + 2) = a3;
    *(&v11 + 2) = a3;
    src[0] = v12;
    src[1] = v14;
    src[2] = v13;
    src[3] = v11;
    v5 = v19;
    if (v19)
    {
      objc_copyStruct(v19 + 34, src, 64, 1, 0);
      v5 = v19;
      v15 = v19[2] - v19[1];
      if (v15 >= 0x21)
      {
        *(v19[2] - 8) = a3;
        *(v19[1] + v15 - 24) = a3;
      }
    }
  }
}

void sub_262372294(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v1[106] = 1;
  }
}

uint64_t sub_2623722C8(uint64_t result, uint64_t a2, uint64_t *a3, void *a4, unint64_t a5)
{
  v9 = result;
  v10 = 0;
  v11 = 0;
  *(*(*a3 + 24 * result) + 4 * a2) = 1;
  v12 = result;
  v13 = a2;
  v15 = 0;
  do
  {
    v14 = *a3;
    if (!*(*(*a3 + 24 * v12) + 4 * v11))
    {
      if (!sub_2621C719C(a4, v11))
      {
        sub_2621C729C(a4, v11, &v15);
      }

      result = sub_2623722C8(v9, v11, a3, a4, a5);
      v14 = *a3;
    }

    if (!*(*(v14 + v10) + 4 * v12))
    {
      if (!sub_2621C719C(a4, v11))
      {
        sub_2621C729C(a4, v11, &v15);
      }

      result = sub_2623722C8(v11, v9, a3, a4, a5);
      v14 = *a3;
    }

    if (!*(*(v14 + 24 * v13) + 4 * v11))
    {
      if (!sub_2621C719C(a4, v11))
      {
        sub_2621C729C(a4, v11, &v15);
      }

      result = sub_2623722C8(a2, v11, a3, a4, a5);
      v14 = *a3;
    }

    if (!*(*(v14 + v10) + 4 * v13))
    {
      if (!sub_2621C719C(a4, v11))
      {
        sub_2621C729C(a4, v11, &v15);
      }

      result = sub_2623722C8(v11, a2, a3, a4, a5);
    }

    v15 = ++v11;
    v10 += 24;
  }

  while (v11 < a5);
  return result;
}

uint64_t sub_262372488(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    sub_2621C74C4(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2623724D8(id **a1, void *a2, void *a3, void *a4)
{
  v83 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v65 = a3;
  v66 = a4;
  v67 = v7;
  v10 = objc_msgSend_parentIdentifier(v7, v8, v9);

  if (v10)
  {
    v13 = **a1;
    v14 = objc_msgSend_parentIdentifier(v67, v11, v12);
    v15 = v66;
    v18 = v14;
    if (v13)
    {
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v19 = objc_msgSend_walls(v15, v16, v17);
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v72, buf, 16);
      if (v23)
      {
        v24 = *v73;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v73 != v24)
            {
              objc_enumerationMutation(v19);
            }

            v26 = *(*(&v72 + 1) + 8 * i);
            v27 = objc_msgSend_identifier(v26, v21, v22);
            isEqual = objc_msgSend_isEqual_(v27, v28, v18);

            if (isEqual)
            {
              v64 = v26;
              goto LABEL_13;
            }
          }

          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v72, buf, 16);
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v64 = 0;
LABEL_13:
    }

    else
    {
      v64 = 0;
    }

    if (!v64)
    {
      if (qword_27FF0C060 != -1)
      {
        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
      }

      v35 = qword_27FF0C058;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v56 = objc_msgSend_identifier(v67, v54, v55);
        v59 = objc_msgSend_parentIdentifier(v67, v57, v58);
        *buf = 138412802;
        v78 = v65;
        v79 = 2112;
        v80 = v56;
        v81 = 2112;
        v82 = v59;
        _os_log_error_impl(&dword_2621C3000, v35, OS_LOG_TYPE_ERROR, "%@ (ID=%@) (ParentID=%@) can't find a matching parent wall!!!", buf, 0x20u);
      }

      goto LABEL_44;
    }

    sub_262372B20(**a1, v67, v64);
    v30 = *(**a1 + 80);
    v33 = objc_msgSend_identifier(v64, v31, v32);
    v35 = objc_msgSend_objectForKeyedSubscript_(v30, v34, v33);

    if (!v35)
    {
LABEL_44:

      v50 = v64;
      goto LABEL_45;
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v36 = *a1[1];
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v68, v76, 16);
    if (v38)
    {
      v39 = 0;
      v40 = *v69;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v69 != v40)
          {
            objc_enumerationMutation(v36);
          }

          v42 = *(*(&v68 + 1) + 8 * j);
          v45 = objc_msgSend_identifier(v42, v43, v44);
          v47 = objc_msgSend_isEqual_(v45, v46, v35);

          if (v47)
          {
            v48 = v42;

            v39 = v48;
          }
        }

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v49, &v68, v76, 16);
      }

      while (v38);

      if (v39)
      {
        sub_262372B20(**a1, v67, v39);
        if (*(v39 + 33) > 0.0 && v67)
        {
          v67[33] = v39[33];
        }

LABEL_43:

        goto LABEL_44;
      }
    }

    else
    {
    }

    if (qword_27FF0C060 != -1)
    {
      dispatch_once(&qword_27FF0C060, &unk_2874EE100);
    }

    v60 = qword_27FF0C058;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v63 = objc_msgSend_identifier(v64, v61, v62);
      *buf = 138412802;
      v78 = v65;
      v79 = 2112;
      v80 = v63;
      v81 = 2112;
      v82 = v35;
      _os_log_error_impl(&dword_2621C3000, v60, OS_LOG_TYPE_ERROR, "instance %@ parent wall (ID=%@) has associated merged wall UUID (=%@) but can't find it in mergedWalls", buf, 0x20u);
    }

    v39 = 0;
    goto LABEL_43;
  }

  if (qword_27FF0C060 != -1)
  {
    dispatch_once(&qword_27FF0C060, &unk_2874EE100);
  }

  v50 = qword_27FF0C058;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
  {
    v53 = objc_msgSend_identifier(v67, v51, v52);
    *buf = 138412546;
    v78 = v65;
    v79 = 2112;
    v80 = v53;
    _os_log_error_impl(&dword_2621C3000, v50, OS_LOG_TYPE_ERROR, "%@ (ID=%@) has nil parentIdentifier!!!", buf, 0x16u);
  }

LABEL_45:
}

void sub_262372B20(uint64_t a1, void *a2, void *a3)
{
  v92 = a2;
  v5 = a3;
  v8 = v5;
  if (a1)
  {
    objc_msgSend_quad(v5, v6, v7);
    v90 = v9;
    objc_msgSend_quad(v8, v10, v11);
    v88 = v12;
    objc_msgSend_quad(v8, v13, v14);
    v86 = v15;
    objc_msgSend_quad(v8, v16, v17);
    v84 = v18;
    objc_msgSend_quad(v92, v19, v20);
    v82 = v21;
    objc_msgSend_quad(v92, v22, v23);
    v79 = v24;
    objc_msgSend_dimensions(v92, v25, v26);
    v77 = v27;
    objc_msgSend_dimensions(v92, v28, v29);
    v76 = v30;
    v33 = objc_msgSend_type(v92, v31, v32);
    v36 = vsubq_f32(v90, v88);
    v37 = vmulq_f32(v36, v36);
    v38 = vaddv_f32(*v37.f32);
    *v37.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v37.f32[2] + v38));
    *v37.f32 = vmul_f32(*v37.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v37.f32[2] + v38), vmul_f32(*v37.f32, *v37.f32)));
    v39 = vmulq_n_f32(v36, vmul_f32(*v37.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v37.f32[2] + v38), vmul_f32(*v37.f32, *v37.f32))).f32[0]);
    v75 = xmmword_2623A7700;
    v40 = vmlaq_f32(vmulq_f32(v39, xmmword_2623A7910), xmmword_2623A7700, vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL));
    v41 = vmulq_f32(v40, v40);
    *&v42 = v41.f32[1] + (v41.f32[2] + v41.f32[0]);
    v43 = vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL);
    *v40.i8 = vrsqrte_f32(v42);
    *v40.i8 = vmul_f32(*v40.i8, vrsqrts_f32(v42, vmul_f32(*v40.i8, *v40.i8)));
    v44 = vmulq_n_f32(v43, vmul_f32(*v40.i8, vrsqrts_f32(v42, vmul_f32(*v40.i8, *v40.i8))).f32[0]);
    v45.i64[0] = 0x3F0000003F000000;
    v45.i64[1] = 0x3F0000003F000000;
    v46 = vmulq_f32(vaddq_f32(v82, v79), v45);
    v80 = vmulq_f32(vaddq_f32(v86, v84), v45);
    v47 = vmulq_f32(v44, vsubq_f32(v46, v80));
    v47.f32[0] = v47.f32[2] + vaddv_f32(*v47.f32);
    v48 = vmlsq_lane_f32(v46, v44, *v47.f32, 0);
    v49 = v77;
    v49.f32[0] = 0.5 * v77.f32[0];
    v87 = v48;
    v89 = v39;
    v85 = v49;
    v83 = vmuls_lane_f32(0.5, v76, 2);
    v91 = vmlaq_n_f32(vmlaq_n_f32(v48, v39, 0.5 * v77.f32[0]), xmmword_2623A7920, v83);
    if (v33 == 2 || objc_msgSend_type(v92, v34, v35, 0, 1065353216) == 4 || objc_msgSend_type(v92, v34, v35) == 3)
    {
      objc_msgSend_quad(v8, v34, v35, *&v75);
      v78 = v50;
      objc_msgSend_quad(v8, v51, v52);
      v54.i64[0] = v91.i64[0];
      v54.i64[1] = __PAIR64__(v91.u32[3], vmlaq_n_f32(v80, xmmword_2623A7930, fabsf(COERCE_FLOAT(*(vsubq_f32(v78, v53).f32 + 8)))).u32[2]);
      v91 = v54;
    }

    objc_msgSend_quad(v8, v34, v35);
    v81 = v55;
    objc_msgSend_quad(v8, v56, v57);
    v58 = vmlaq_n_f32(vmlaq_n_f32(v87, vnegq_f32(v89), v85.f32[0]), v75, v83);
    v59 = vsubq_f32(v81, v87);
    v60 = vmulq_f32(v59, v59);
    v60.f32[0] = sqrtf(vaddv_f32(*v60.f32));
    v61 = v81;
    v61.i32[2] = v58.i32[2];
    v62 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v85, v60), 0), v61, v58);
    v64 = vsubq_f32(v63, v87);
    v65 = vmulq_f32(v64, v64);
    v65.f32[0] = sqrtf(vaddv_f32(*v65.f32));
    v66 = v63;
    v66.i32[2] = v91.i32[2];
    v67 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v85, v65), 0), v66, v91);
    v68 = v62;
    v68.i32[2] = v81.i32[2];
    v69 = vcgt_f32(vzip1_s32(*&vextq_s8(v63, v63, 8uLL), *&vextq_s8(v62, v62, 8uLL)), vzip1_s32(*&vextq_s8(v67, v67, 8uLL), *&vextq_s8(v81, v81, 8uLL)));
    v70 = vbslq_s8(vmovl_s16(vdup_lane_s16(v69, 2)), v68, v62);
    *&v71 = v70.i64[0];
    HIDWORD(v71) = v62.i32[3];
    v72 = v67;
    v72.i32[2] = v63.i32[2];
    v73 = vbslq_s8(vmovl_s16(vdup_lane_s16(v69, 0)), v72, v67);
    src[2] = v73;
    v73.i32[3] = v67.i32[3];
    v74 = v73;
    v74.i32[2] = v70.i32[2];
    DWORD2(v71) = v73.i32[2];
    src[0] = v70;
    src[1] = v74;
    src[3] = v71;
    if (v92)
    {
      objc_copyStruct(v92 + 272, src, 64, 1, 0);
    }
  }
}

void sub_262372EC0(uint64_t *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = a2;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v17, v21, 16);
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        objc_msgSend_quad(v10, v5, v6);
        v15 = v11;
        v16 = 0xFFFFFFFF00000000;
        sub_262240B6C(*a1, &v15);
        objc_msgSend_quad(v10, v12, v13);
        v15 = v14;
        sub_262240B6C(a1[1], &v15);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v17, v21, 16);
    }

    while (v7);
  }
}

void *sub_26237302C(void *a1, unint64_t a2, void *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      sub_2621CBEC8(a2);
    }

    sub_2621CBEB0();
  }

  return a1;
}

void sub_2623730AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2623730C8(uint64_t a1, void *a2, int a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = 0;
  v9 = a3;
  while (objc_msgSend_count(v7, v5, v6) > v8)
  {
    v10 = *(**(a1 + 24) + 12 * (v8 + v9) + 8);
    if (v10 >= 1)
    {
      v11 = **(a1 + 8) + 8 * v10;
      if (*(a1 + 32) >= *(v11 - 8))
      {
        v12 = *(v11 - 8);
      }

      else
      {
        v12 = *(a1 + 32);
      }

      v13 = **a1;
      v14 = objc_msgSend_objectAtIndexedSubscript_(v7, v5, v8);
      sub_2623721AC(v13, v14, **(a1 + 16), v12);

      v15 = *(**a1 + 648);
      v17 = objc_msgSend_objectAtIndexedSubscript_(v7, v16, v8);
      v20 = objc_msgSend_identifier(v17, v18, v19);
      v22 = objc_msgSend_objectForKeyedSubscript_(v15, v21, v20);

      if (v22)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v23 = v22;
        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v29, v33, 16);
        if (v25)
        {
          v26 = *v30;
          do
          {
            v27 = 0;
            do
            {
              if (*v30 != v26)
              {
                objc_enumerationMutation(v23);
              }

              sub_2623721AC(**a1, *(*(&v29 + 1) + 8 * v27++), **(a1 + 16), v12);
            }

            while (v25 != v27);
            v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v28, &v29, v33, 16);
          }

          while (v25);
        }
      }
    }

    ++v8;
  }
}

__n128 sub_26237332C(unint64_t **a1, unint64_t **a2, float32x2_t **a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v10 = (a2 - 3);
  v435 = a2 - 2;
  v436 = a2 - 1;
  v11 = a1;
  while (1)
  {
    a1 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * (a2 - v11);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v288 = *v10;
        v289 = a3[1];
        v290 = **a3;
        v291 = vmul_f32(vsub_f32(**v10, v290), *v289);
        v292 = *v11;
        v293 = vmul_f32(*v289, vsub_f32(**v11, v290));
        result.n128_u64[0] = vadd_f32(vzip1_s32(v291, v293), vzip2_s32(v291, v293));
        v294 = result.n128_f32[0] < result.n128_f32[1];
        if (result.n128_f32[0] == result.n128_f32[1])
        {
          result.n128_u32[0] = v288[1].u32[0];
          v294 = result.n128_f32[0] < *(v292 + 2);
        }

        if (!v294)
        {
          return result;
        }

        *v11 = v288;
        *v10 = v292;
LABEL_357:
        v424 = v11[1];
        v313 = a2 - 1;
        v11[1] = *v435;
        *v435 = v424;
        v314 = v11[2];
        v11[2] = *v436;
LABEL_358:
        *v313 = v314;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      sub_262376468(v11, (v11 + 3), (v11 + 6), (a2 - 3), a3);
      return result;
    }

    if (v13 == 5)
    {
      sub_262376468(v11, (v11 + 3), (v11 + 6), (v11 + 9), a3);
      result.n128_u64[0] = **a3;
      v261 = *v10;
      v262 = *a3[1];
      v263 = vmul_f32(vsub_f32(**v10, result.n128_u64[0]), v262);
      v264 = v11[9];
      result.n128_u64[0] = vmul_f32(v262, vsub_f32(*v264, result.n128_u64[0]));
      result.n128_u64[0] = vadd_f32(vzip1_s32(v263, result.n128_u64[0]), vzip2_s32(v263, result.n128_u64[0]));
      v265 = result.n128_f32[0] < result.n128_f32[1];
      if (result.n128_f32[0] == result.n128_f32[1])
      {
        result.n128_u32[0] = v261[1].u32[0];
        v265 = result.n128_f32[0] < v264[1].f32[0];
      }

      if (v265)
      {
        v11[9] = v261;
        *v10 = v264;
        v266 = v11[10];
        v11[10] = *v435;
        *v435 = v266;
        v267 = v11[11];
        v11[11] = *v436;
        *v436 = v267;
        v268 = v11[9];
        result.n128_u64[0] = *v268;
        v269 = a3[1];
        v270 = **a3;
        v271 = vmul_f32(vsub_f32(*v268, v270), *v269);
        v272 = v11[6];
        v273 = vmul_f32(*v269, vsub_f32(*v272, v270));
        v274 = vadd_f32(vzip1_s32(v271, v273), vzip2_s32(v271, v273));
        v275 = v274.f32[0] < v274.f32[1];
        if (v274.f32[0] == v274.f32[1])
        {
          v275 = v268[1].f32[0] < v272[1].f32[0];
        }

        if (v275)
        {
          v277 = v11[10];
          v276 = v11[11];
          v278 = *(v11 + 7);
          v11[6] = v268;
          v11[7] = v277;
          v11[8] = v276;
          v11[9] = v272;
          *(v11 + 5) = v278;
          v279 = a3[1];
          *&v278 = **a3;
          v280 = vmul_f32(vsub_f32(result.n128_u64[0], *&v278), *v279);
          v281 = v11[3];
          *&v278 = vmul_f32(*v279, vsub_f32(*v281, *&v278));
          *&v278 = vadd_f32(vzip1_s32(v280, *&v278), vzip2_s32(v280, *&v278));
          v282 = *&v278 < *(&v278 + 1);
          if (*&v278 == *(&v278 + 1))
          {
            v282 = v268[1].f32[0] < v281[1].f32[0];
          }

          if (v282)
          {
            v283 = *(v11 + 2);
            v11[3] = v268;
            v11[4] = v277;
            v11[5] = v276;
            v11[6] = v281;
            *(v11 + 7) = v283;
            v284 = a3[1];
            *&v283 = **a3;
            v285 = vmul_f32(vsub_f32(result.n128_u64[0], *&v283), *v284);
            v286 = *v11;
            *&v283 = vmul_f32(*v284, vsub_f32(**v11, *&v283));
            result.n128_u64[0] = vadd_f32(vzip1_s32(v285, *&v283), vzip2_s32(v285, *&v283));
            v287 = result.n128_f32[0] < result.n128_f32[1];
            if (result.n128_f32[0] == result.n128_f32[1])
            {
              result.n128_u32[0] = v268[1].u32[0];
              v287 = result.n128_f32[0] < *(v286 + 2);
            }

            if (v287)
            {
              result = *(v11 + 1);
              *v11 = v268;
              v11[1] = v277;
              v11[2] = v276;
              v11[3] = v286;
              *(v11 + 2) = result;
            }
          }
        }
      }

      return result;
    }

LABEL_9:
    if (v12 <= 575)
    {
      v315 = v11 + 3;
      v317 = v11 == a2 || v315 == a2;
      if (a5)
      {
        if (!v317)
        {
          v318 = 0;
          v319 = v11;
          do
          {
            v320 = v319;
            v319 = v315;
            v321 = a3[1];
            v322 = **a3;
            v323 = v320[3];
            v324 = vmul_f32(vsub_f32(*v323, v322), *v321);
            v325 = vmul_f32(*v321, vsub_f32(**v320, v322));
            result.n128_u64[0] = vadd_f32(vzip1_s32(v324, v325), vzip2_s32(v324, v325));
            v326 = result.n128_f32[0] < result.n128_f32[1];
            if (result.n128_f32[0] == result.n128_f32[1])
            {
              result.n128_u32[0] = v323[1].u32[0];
              v326 = result.n128_f32[0] < *(*v320 + 2);
            }

            if (v326)
            {
              v327 = *(v320 + 2);
              *v315 = 0;
              v315[1] = 0;
              v328 = v318;
              v315[2] = 0;
              while (1)
              {
                v329 = a1 + v328;
                result = *(a1 + v328);
                *(v329 + 24) = result;
                *(v329 + 5) = *(a1 + v328 + 16);
                *(v329 + 1) = 0;
                *(v329 + 2) = 0;
                *v329 = 0;
                if (!v328)
                {
                  break;
                }

                v330 = a3[1];
                v331 = **a3;
                v332 = vmul_f32(vsub_f32(*v323, v331), *v330);
                v333 = *(v329 - 3);
                v334 = vmul_f32(*v330, vsub_f32(*v333, v331));
                result.n128_u64[0] = vadd_f32(vzip1_s32(v332, v334), vzip2_s32(v332, v334));
                v335 = result.n128_f32[0] < result.n128_f32[1];
                if (result.n128_f32[0] == result.n128_f32[1])
                {
                  result.n128_u32[0] = v323[1].u32[0];
                  v335 = result.n128_f32[0] < v333[1].f32[0];
                }

                if (!v335)
                {
                  v336 = (a1 + v328);
                  goto LABEL_282;
                }

                v328 -= 24;
              }

              v336 = a1;
LABEL_282:
              v337 = *v336;
              if (*v336)
              {
                v336[1] = v337;
                v442 = v327;
                operator delete(v337);
                v327 = v442;
              }

              *v336 = v323;
              *(v336 + 1) = v327;
            }

            v315 = v319 + 3;
            v318 += 24;
          }

          while (v319 + 3 != a2);
        }
      }

      else if (!v317)
      {
        do
        {
          v408 = a1;
          a1 = v315;
          v409 = **a3;
          v410 = v408[3];
          v411 = *a3[1];
          v412 = vmul_f32(vsub_f32(*v410, v409), v411);
          v413 = vmul_f32(v411, vsub_f32(**v408, v409));
          result.n128_u64[0] = vadd_f32(vzip1_s32(v412, v413), vzip2_s32(v412, v413));
          v414 = result.n128_f32[0] < result.n128_f32[1];
          if (result.n128_f32[0] == result.n128_f32[1])
          {
            result.n128_u32[0] = v410[1].u32[0];
            v414 = result.n128_f32[0] < *(*v408 + 2);
          }

          if (v414)
          {
            result = *(v408 + 2);
            *a1 = 0;
            a1[1] = 0;
            a1[2] = 0;
            do
            {
              v415 = v408;
              *(v408 + 3) = *v408;
              v408[5] = v408[2];
              *v408 = 0;
              v408[1] = 0;
              v408[2] = 0;
              v416 = a3[1];
              v417 = **a3;
              v419 = *(v408 - 3);
              v408 -= 3;
              v418 = v419;
              v420 = vmul_f32(vsub_f32(*v410, v417), *v416);
              v421 = vmul_f32(*v416, vsub_f32(*v419, v417));
              v422 = vadd_f32(vzip1_s32(v420, v421), vzip2_s32(v420, v421));
              v423 = v422.f32[0] < v422.f32[1];
              if (v422.f32[0] == v422.f32[1])
              {
                v423 = v410[1].f32[0] < v418[1].f32[0];
              }
            }

            while (v423);
            *v415 = v410;
            *(v415 + 1) = result;
          }

          v315 = a1 + 3;
        }

        while (a1 + 3 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v11 == a2)
      {
        return result;
      }

      v338 = (v13 - 2) >> 1;
      v339 = v338;
      do
      {
        v340 = v339;
        if (v338 >= v339)
        {
          v341 = (2 * v339) | 1;
          v342 = &v11[3 * v341];
          v343 = **a3;
          if (2 * v340 + 2 >= v13)
          {
            v345 = *a3[1];
          }

          else
          {
            v344 = v342[3];
            v345 = *a3[1];
            v346 = vmul_f32(vsub_f32(**v342, v343), v345);
            v347 = vmul_f32(v345, vsub_f32(*v344, v343));
            v348 = vadd_f32(vzip1_s32(v346, v347), vzip2_s32(v346, v347));
            v349 = v348.f32[0] < v348.f32[1];
            if (v348.f32[0] == v348.f32[1])
            {
              v349 = *(*v342 + 2) < v344[1].f32[0];
            }

            if (v349)
            {
              v342 += 3;
              v341 = 2 * v340 + 2;
            }
          }

          v350 = &v11[3 * v340];
          v351 = vmul_f32(v345, vsub_f32(**v342, v343));
          v352 = *v350;
          v353 = vmul_f32(v345, vsub_f32(**v350, v343));
          v354 = vadd_f32(vzip1_s32(v351, v353), vzip2_s32(v351, v353));
          v355 = v354.f32[0] < v354.f32[1];
          if (v354.f32[0] == v354.f32[1])
          {
            v355 = *(*v342 + 2) < v352[1].f32[0];
          }

          if (!v355)
          {
            v356 = *(v350 + 1);
            *v350 = 0;
            v350[1] = 0;
            v350[2] = 0;
            do
            {
              v357 = v342;
              *v350 = *v342;
              v350[2] = v342[2];
              *v342 = 0;
              v342[1] = 0;
              v342[2] = 0;
              if (v338 < v341)
              {
                break;
              }

              v358 = 2 * v341;
              v341 = (2 * v341) | 1;
              v342 = &v11[3 * v341];
              v359 = v358 + 2;
              v360 = **a3;
              v361 = *a3[1];
              if (v359 < v13)
              {
                v362 = v342[3];
                v363 = vmul_f32(v361, vsub_f32(**v342, v360));
                v364 = vmul_f32(v361, vsub_f32(*v362, v360));
                v365 = vadd_f32(vzip1_s32(v363, v364), vzip2_s32(v363, v364));
                v366 = v365.f32[0] < v365.f32[1];
                if (v365.f32[0] == v365.f32[1])
                {
                  v366 = *(*v342 + 2) < v362[1].f32[0];
                }

                if (v366)
                {
                  v342 += 3;
                  v341 = v359;
                }
              }

              v367 = vmul_f32(v361, vsub_f32(**v342, v360));
              v368 = vmul_f32(v361, vsub_f32(*v352, v360));
              v369 = vadd_f32(vzip1_s32(v367, v368), vzip2_s32(v367, v368));
              v370 = v369.f32[0] < v369.f32[1];
              if (v369.f32[0] == v369.f32[1])
              {
                v370 = *(*v342 + 2) < v352[1].f32[0];
              }

              v350 = v357;
            }

            while (!v370);
            *v357 = v352;
            *(v357 + 1) = v356;
          }
        }

        v339 = v340 - 1;
      }

      while (v340);
      v371 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
      while (2)
      {
        v372 = 0;
        v373 = *v11;
        result = *(v11 + 1);
        v11[1] = 0;
        v11[2] = 0;
        v374 = v11;
        *v11 = 0;
        do
        {
          v375 = v374;
          v376 = &v374[3 * v372];
          v374 = v376 + 3;
          v377 = 2 * v372;
          v372 = (2 * v372) | 1;
          v378 = v377 + 2;
          if (v378 < v371)
          {
            v381 = v376[6];
            v380 = v376 + 6;
            v379 = v381;
            v382 = a3[1];
            v383 = **a3;
            v384 = *(v380 - 3);
            v385 = vmul_f32(vsub_f32(*v384, v383), *v382);
            v386 = vmul_f32(*v382, vsub_f32(*v381, v383));
            v387 = vadd_f32(vzip1_s32(v385, v386), vzip2_s32(v385, v386));
            v388 = v387.f32[0] < v387.f32[1];
            if (v387.f32[0] == v387.f32[1])
            {
              v388 = v384[1].f32[0] < v379[1].f32[0];
            }

            if (v388)
            {
              v374 = v380;
              v372 = v378;
            }
          }

          *v375 = *v374;
          v375[2] = v374[2];
          *v374 = 0;
          v374[1] = 0;
          v374[2] = 0;
        }

        while (v372 <= ((v371 - 2) >> 1));
        if (v374 == a2 - 3)
        {
          *v374 = v373;
          v398 = v374;
        }

        else
        {
          *v374 = *(a2 - 3);
          v374[2] = *(a2 - 1);
          *(a2 - 3) = v373;
          *(a2 - 1) = result;
          v389 = v374 - v11 + 24;
          if (v389 < 25)
          {
            goto LABEL_337;
          }

          v390 = (-2 - 0x5555555555555555 * (v389 >> 3)) >> 1;
          v391 = &v11[3 * v390];
          v392 = a3[1];
          v393 = **a3;
          v394 = vmul_f32(vsub_f32(**v391, v393), *v392);
          v395 = *v374;
          v396 = vmul_f32(*v392, vsub_f32(**v374, v393));
          result.n128_u64[0] = vadd_f32(vzip1_s32(v394, v396), vzip2_s32(v394, v396));
          v397 = result.n128_f32[0] < result.n128_f32[1];
          if (result.n128_f32[0] == result.n128_f32[1])
          {
            result.n128_u32[0] = *(*v391 + 2);
            v397 = result.n128_f32[0] < v395[1].f32[0];
          }

          if (!v397)
          {
LABEL_337:
            a2 -= 3;
            if (v371-- <= 2)
            {
              return result;
            }

            continue;
          }

          result = *(v374 + 1);
          *v374 = 0;
          v374[1] = 0;
          v374[2] = 0;
          do
          {
            v398 = v391;
            *v374 = *v391;
            v374[2] = v391[2];
            *v391 = 0;
            v391[1] = 0;
            v391[2] = 0;
            if (!v390)
            {
              break;
            }

            v390 = (v390 - 1) >> 1;
            v391 = &v11[3 * v390];
            v399 = a3[1];
            v400 = **a3;
            v401 = vmul_f32(vsub_f32(**v391, v400), *v399);
            v402 = vmul_f32(*v399, vsub_f32(*v395, v400));
            v403 = vadd_f32(vzip1_s32(v401, v402), vzip2_s32(v401, v402));
            v404 = v403.f32[0] < v403.f32[1];
            if (v403.f32[0] == v403.f32[1])
            {
              v404 = *(*v391 + 2) < v395[1].f32[0];
            }

            v374 = v398;
          }

          while (v404);
          *v398 = v395;
        }

        break;
      }

      *(v398 + 1) = result;
      goto LABEL_337;
    }

    v14 = v13 >> 1;
    v15 = &v11[3 * (v13 >> 1)];
    v16 = **a3;
    v17 = *a3[1];
    if (v12 >= 0xC01)
    {
      v18 = *v15;
      v19 = vmul_f32(vsub_f32(**v15, v16), v17);
      v20 = *v11;
      v21 = **v11;
      v22 = vmul_f32(v17, vsub_f32(v21, v16));
      v23 = vadd_f32(vzip1_s32(v19, v22), vzip2_s32(v19, v22));
      v24 = v23.f32[0] < v23.f32[1];
      if (v23.f32[0] == v23.f32[1])
      {
        v24 = v18[1].f32[0] < *(v20 + 2);
      }

      if (!v24)
      {
        v52 = *v10;
        v53 = vmul_f32(v17, vsub_f32(**v10, v16));
        v54 = vadd_f32(v53, vdup_lane_s32(v53, 1));
        if (vceq_f32(v54, v23).u8[0])
        {
          if (v52[1].f32[0] >= v18[1].f32[0])
          {
            goto LABEL_53;
          }
        }

        else if ((vcgt_f32(v23, v54).u8[0] & 1) == 0)
        {
          goto LABEL_53;
        }

        *v15 = v52;
        *v10 = v18;
        v34 = v15 + 1;
        v61 = v15[1];
        v15[1] = *v435;
        *v435 = v61;
        v58 = v15 + 2;
        v62 = v15[2];
        v15[2] = *v436;
        *v436 = v62;
        v16 = **a3;
        v63 = *v15;
        v17 = *a3[1];
        v64 = vmul_f32(vsub_f32(**v15, v16), v17);
        v65 = *v11;
        v66 = vmul_f32(v17, vsub_f32(**v11, v16));
        v67 = vadd_f32(vzip1_s32(v64, v66), vzip2_s32(v64, v66));
        v68 = v67.f32[0] < v67.f32[1];
        if (v67.f32[0] == v67.f32[1])
        {
          v68 = v63[1].f32[0] < *(v65 + 2);
        }

        if (!v68)
        {
LABEL_53:
          v71 = &v11[3 * v14];
          v74 = *(v71 - 3);
          v72 = (v71 - 3);
          v73 = v74;
          v75 = vmul_f32(vsub_f32(*v74, v16), v17);
          v76 = v11[3];
          v77 = vmul_f32(v17, vsub_f32(*v76, v16));
          v78 = vadd_f32(vzip1_s32(v75, v77), vzip2_s32(v75, v77));
          v79 = v78.f32[0] < v78.f32[1];
          if (v78.f32[0] == v78.f32[1])
          {
            v79 = v73[1].f32[0] < v76[1].f32[0];
          }

          if (!v79)
          {
            v93 = *(a2 - 6);
            v94 = vmul_f32(v17, vsub_f32(*v93, v16));
            v95 = vadd_f32(v94, vdup_lane_s32(v94, 1));
            if (vceq_f32(v95, v78).u8[0])
            {
              if (v93[1].f32[0] >= v73[1].f32[0])
              {
                goto LABEL_83;
              }
            }

            else if ((vcgt_f32(v78, v95).u8[0] & 1) == 0)
            {
              goto LABEL_83;
            }

            *v72 = v93;
            *(a2 - 6) = v73;
            v110 = v72[1];
            v72[1] = *(a2 - 5);
            *(a2 - 5) = v110;
            v109 = (v72 + 2);
            v111 = v72[2];
            v72[2] = *(a2 - 4);
            *(a2 - 4) = v111;
            v16 = **a3;
            v112 = *v72;
            v17 = *a3[1];
            v113 = vmul_f32(vsub_f32(**v72, v16), v17);
            v114 = v11[3];
            v115 = vmul_f32(v17, vsub_f32(*v114, v16));
            v116 = vadd_f32(vzip1_s32(v113, v115), vzip2_s32(v113, v115));
            v117 = v116.f32[0] < v116.f32[1];
            if (v116.f32[0] == v116.f32[1])
            {
              v117 = v112[1].f32[0] < v114[1].f32[0];
            }

            if (!v117)
            {
LABEL_83:
              v120 = &v11[3 * v14];
              v123 = v120[3];
              v121 = (v120 + 3);
              v122 = v123;
              v124 = vmul_f32(vsub_f32(*v123, v16), v17);
              v125 = v11[6];
              v126 = vmul_f32(v17, vsub_f32(*v125, v16));
              v127 = vadd_f32(vzip1_s32(v124, v126), vzip2_s32(v124, v126));
              v128 = v127.f32[0] < v127.f32[1];
              if (v127.f32[0] == v127.f32[1])
              {
                v128 = v122[1].f32[0] < v125[1].f32[0];
              }

              if (!v128)
              {
                v142 = *(a2 - 9);
                v143 = vmul_f32(v17, vsub_f32(*v142, v16));
                v144 = vadd_f32(v143, vdup_lane_s32(v143, 1));
                if (vceq_f32(v144, v127).u8[0])
                {
                  if (v142[1].f32[0] >= v122[1].f32[0])
                  {
                    goto LABEL_107;
                  }
                }

                else if ((vcgt_f32(v127, v144).u8[0] & 1) == 0)
                {
                  goto LABEL_107;
                }

                *v121 = v142;
                *(a2 - 9) = v122;
                v147 = v121[1];
                v121[1] = *(a2 - 8);
                *(a2 - 8) = v147;
                v146 = (v121 + 2);
                v148 = v121[2];
                v121[2] = *(a2 - 7);
                *(a2 - 7) = v148;
                v16 = **a3;
                v149 = *v121;
                v17 = *a3[1];
                v150 = vmul_f32(vsub_f32(**v121, v16), v17);
                v151 = v11[6];
                v152 = vmul_f32(v17, vsub_f32(*v151, v16));
                v153 = vadd_f32(vzip1_s32(v150, v152), vzip2_s32(v150, v152));
                v154 = v153.f32[0] < v153.f32[1];
                if (v153.f32[0] == v153.f32[1])
                {
                  v154 = v149[1].f32[0] < v151[1].f32[0];
                }

                if (!v154)
                {
LABEL_107:
                  v157 = *v15;
                  v158 = vmul_f32(vsub_f32(**v15, v16), v17);
                  v159 = *v72;
                  v160 = **v72;
                  v161 = vmul_f32(v17, vsub_f32(v160, v16));
                  v162 = vadd_f32(vzip1_s32(v158, v161), vzip2_s32(v158, v161));
                  v163 = v162.f32[0] < v162.f32[1];
                  if (v162.f32[0] == v162.f32[1])
                  {
                    v163 = v157[1].f32[0] < v159[1].f32[0];
                  }

                  if (!v163)
                  {
                    v164 = *v121;
                    v175 = **v121;
                    v176 = vmul_f32(v17, vsub_f32(v175, v16));
                    v177 = vadd_f32(v176, vdup_lane_s32(v176, 1));
                    if (vceq_f32(v177, v162).u8[0])
                    {
                      if (v164[1].f32[0] < v157[1].f32[0])
                      {
LABEL_124:
                        *v121 = v157;
                        v179 = v121[1];
                        v180 = v121[2];
                        v181 = *(v15 + 1);
                        *v15 = v164;
                        v15[1] = v179;
                        v15[2] = v180;
                        *(v121 + 1) = v181;
                        *&v181 = **a3;
                        v182 = *a3[1];
                        v183 = vmul_f32(vsub_f32(v175, *&v181), v182);
                        *&v181 = vmul_f32(vsub_f32(v160, *&v181), v182);
                        *&v181 = vadd_f32(vzip1_s32(v183, *&v181), vzip2_s32(v183, *&v181));
                        v184 = *&v181 < *(&v181 + 1);
                        if (*&v181 == *(&v181 + 1))
                        {
                          v184 = v164[1].f32[0] < v159[1].f32[0];
                        }

                        if (v184)
                        {
                          *v15 = v159;
                          v185 = *(v72 + 1);
                          *v72 = v164;
                          v72[1] = v179;
                          v72[2] = v180;
                          *(v15 + 1) = v185;
                        }

                        else
                        {
LABEL_130:
                          v159 = v164;
                        }

                        goto LABEL_131;
                      }
                    }

                    else if (vcgt_f32(v162, v177).u8[0])
                    {
                      goto LABEL_124;
                    }

LABEL_129:
                    v159 = v157;
                    goto LABEL_131;
                  }

                  v164 = *v121;
                  v165 = **v121;
                  v166 = vmul_f32(v17, vsub_f32(v165, v16));
                  v167 = vadd_f32(v166, vdup_lane_s32(v166, 1));
                  if (vceq_f32(v167, v162).u8[0])
                  {
                    if (v164[1].f32[0] >= v157[1].f32[0])
                    {
                      goto LABEL_113;
                    }

LABEL_122:
                    *v72 = v164;
                    *v121 = v159;
                    v178 = *(v72 + 1);
                    *(v72 + 1) = *(v121 + 1);
                    *(v121 + 1) = v178;
                    goto LABEL_129;
                  }

                  if (vcgt_f32(v162, v167).u8[0])
                  {
                    goto LABEL_122;
                  }

LABEL_113:
                  *v72 = v157;
                  v169 = v72[1];
                  v168 = v72[2];
                  v170 = *(v15 + 1);
                  *v15 = v159;
                  v15[1] = v169;
                  *(v72 + 1) = v170;
                  v15[2] = v168;
                  *&v170 = **a3;
                  v171 = *a3[1];
                  v172 = vmul_f32(vsub_f32(v165, *&v170), v171);
                  *&v170 = vmul_f32(vsub_f32(v160, *&v170), v171);
                  *&v170 = vadd_f32(vzip1_s32(v172, *&v170), vzip2_s32(v172, *&v170));
                  v173 = *&v170 < *(&v170 + 1);
                  if (*&v170 == *(&v170 + 1))
                  {
                    v173 = v164[1].f32[0] < v159[1].f32[0];
                  }

                  if (v173)
                  {
                    *v15 = v164;
                    v174 = *(v121 + 1);
                    *v121 = v159;
                    v121[1] = v169;
                    *(v15 + 1) = v174;
                    v121[2] = v168;
                    goto LABEL_130;
                  }

LABEL_131:
                  v186 = v15[1];
                  result = *v11;
                  *v11 = v159;
                  v11[1] = v186;
                  *v15 = result;
                  v50 = v11 + 2;
                  v60 = v15 + 2;
LABEL_132:
                  v187 = *v50;
                  *v50 = *v60;
                  *v60 = v187;
                  goto LABEL_133;
                }

                v11[6] = v149;
                *v121 = v151;
                v155 = v11[7];
                v11[7] = v121[1];
                v121[1] = v155;
                v133 = v11 + 8;
LABEL_106:
                v156 = *v133;
                *v133 = *v146;
                *v146 = v156;
                v16 = **a3;
                v17 = *a3[1];
                goto LABEL_107;
              }

              v129 = *(a2 - 9);
              v130 = vmul_f32(v17, vsub_f32(*v129, v16));
              v131 = vadd_f32(v130, vdup_lane_s32(v130, 1));
              if (vceq_f32(v131, v127).u8[0])
              {
                if (v129[1].f32[0] >= v122[1].f32[0])
                {
                  goto LABEL_89;
                }

LABEL_98:
                v11[6] = v129;
                *(a2 - 9) = v125;
                v145 = v11[7];
                v11[7] = *(a2 - 8);
                *(a2 - 8) = v145;
                v133 = v11 + 8;
              }

              else
              {
                if (vcgt_f32(v127, v131).u8[0])
                {
                  goto LABEL_98;
                }

LABEL_89:
                v11[6] = v122;
                *v121 = v125;
                v132 = v11[7];
                v11[7] = v121[1];
                v121[1] = v132;
                v133 = (v121 + 2);
                v134 = v11[8];
                v11[8] = v121[2];
                v121[2] = v134;
                v16 = **a3;
                v135 = *(a2 - 9);
                v17 = *a3[1];
                v136 = vmul_f32(vsub_f32(*v135, v16), v17);
                v137 = *v121;
                v138 = vmul_f32(v17, vsub_f32(**v121, v16));
                v139 = vadd_f32(vzip1_s32(v136, v138), vzip2_s32(v136, v138));
                v140 = v139.f32[0] < v139.f32[1];
                if (v139.f32[0] == v139.f32[1])
                {
                  v140 = v135[1].f32[0] < v137[1].f32[0];
                }

                if (!v140)
                {
                  goto LABEL_107;
                }

                *v121 = v135;
                *(a2 - 9) = v137;
                v141 = v121[1];
                v121[1] = *(a2 - 8);
                *(a2 - 8) = v141;
              }

              v146 = a2 - 7;
              goto LABEL_106;
            }

            v11[3] = v112;
            *v72 = v114;
            v118 = v11[4];
            v11[4] = v72[1];
            v72[1] = v118;
            v84 = v11 + 5;
LABEL_82:
            v119 = *v84;
            *v84 = *v109;
            *v109 = v119;
            v16 = **a3;
            v17 = *a3[1];
            goto LABEL_83;
          }

          v80 = *(a2 - 6);
          v81 = vmul_f32(v17, vsub_f32(*v80, v16));
          v82 = vadd_f32(v81, vdup_lane_s32(v81, 1));
          if (vceq_f32(v82, v78).u8[0])
          {
            if (v80[1].f32[0] >= v73[1].f32[0])
            {
              goto LABEL_59;
            }

LABEL_74:
            v11[3] = v80;
            *(a2 - 6) = v76;
            v108 = v11[4];
            v11[4] = *(a2 - 5);
            *(a2 - 5) = v108;
            v84 = v11 + 5;
          }

          else
          {
            if (vcgt_f32(v78, v82).u8[0])
            {
              goto LABEL_74;
            }

LABEL_59:
            v11[3] = v73;
            *v72 = v76;
            v83 = v11[4];
            v11[4] = v72[1];
            v72[1] = v83;
            v84 = (v72 + 2);
            v85 = v11[5];
            v11[5] = v72[2];
            v72[2] = v85;
            v16 = **a3;
            v86 = *(a2 - 6);
            v17 = *a3[1];
            v87 = vmul_f32(vsub_f32(*v86, v16), v17);
            v88 = *v72;
            v89 = vmul_f32(v17, vsub_f32(**v72, v16));
            v90 = vadd_f32(vzip1_s32(v87, v89), vzip2_s32(v87, v89));
            v91 = v90.f32[0] < v90.f32[1];
            if (v90.f32[0] == v90.f32[1])
            {
              v91 = v86[1].f32[0] < v88[1].f32[0];
            }

            if (!v91)
            {
              goto LABEL_83;
            }

            *v72 = v86;
            *(a2 - 6) = v88;
            v92 = v72[1];
            v72[1] = *(a2 - 5);
            *(a2 - 5) = v92;
          }

          v109 = a2 - 4;
          goto LABEL_82;
        }

        *v11 = v63;
        *v15 = v65;
        v35 = v11;
LABEL_52:
        v69 = v35[1];
        v35[1] = *v34;
        *v34 = v69;
        v70 = v35[2];
        v35[2] = *v58;
        *v58 = v70;
        v16 = **a3;
        v17 = *a3[1];
        goto LABEL_53;
      }

      v25 = *v10;
      v26 = vmul_f32(v17, vsub_f32(**v10, v16));
      v27 = vadd_f32(v26, vdup_lane_s32(v26, 1));
      if (vceq_f32(v27, v23).u8[0])
      {
        if (v25[1].f32[0] >= v18[1].f32[0])
        {
          goto LABEL_18;
        }

LABEL_41:
        *v11 = v25;
        *v10 = v20;
        v34 = a2 - 2;
        v35 = v11;
      }

      else
      {
        if (vcgt_f32(v23, v27).u8[0])
        {
          goto LABEL_41;
        }

LABEL_18:
        *v11 = v18;
        *v15 = v20;
        v28 = *(v11 + 1);
        *(v11 + 1) = *(v15 + 1);
        *(v15 + 1) = v28;
        v16 = **a3;
        v29 = *v10;
        v17 = *a3[1];
        v30 = vmul_f32(vsub_f32(**v10, v16), v17);
        v31 = vmul_f32(vsub_f32(v21, v16), v17);
        v32 = vadd_f32(vzip1_s32(v30, v31), vzip2_s32(v30, v31));
        v33 = v32.f32[0] < v32.f32[1];
        if (v32.f32[0] == v32.f32[1])
        {
          v33 = v29[1].f32[0] < *(v20 + 2);
        }

        if (!v33)
        {
          goto LABEL_53;
        }

        *v15 = v29;
        *v10 = v20;
        v34 = a2 - 2;
        v35 = v15;
      }

      v58 = a2 - 1;
      goto LABEL_52;
    }

    v36 = *v11;
    v37 = vmul_f32(vsub_f32(**v11, v16), v17);
    v38 = *v15;
    v39 = **v15;
    v40 = vmul_f32(v17, vsub_f32(v39, v16));
    v41 = vadd_f32(vzip1_s32(v37, v40), vzip2_s32(v37, v40));
    v42 = v41.f32[0] < v41.f32[1];
    if (v41.f32[0] == v41.f32[1])
    {
      v42 = *(v36 + 2) < v38[1].f32[0];
    }

    if (v42)
    {
      v43 = *v10;
      v44 = vmul_f32(v17, vsub_f32(**v10, v16));
      v45 = vadd_f32(v44, vdup_lane_s32(v44, 1));
      if (vceq_f32(v45, v41).u8[0])
      {
        if (v43[1].f32[0] >= *(v36 + 2))
        {
          goto LABEL_29;
        }

LABEL_44:
        *v15 = v43;
        *v10 = v38;
        v59 = v15[1];
        v15[1] = *v435;
        *v435 = v59;
        v50 = v15 + 2;
      }

      else
      {
        if (vcgt_f32(v41, v45).u8[0])
        {
          goto LABEL_44;
        }

LABEL_29:
        *v15 = v36;
        *v11 = v38;
        result = *(v15 + 1);
        *(v15 + 1) = *(v11 + 1);
        *(v11 + 1) = result;
        result.n128_u64[0] = **a3;
        v46 = *v10;
        v47 = *a3[1];
        v48 = vmul_f32(vsub_f32(**v10, result.n128_u64[0]), v47);
        result.n128_u64[0] = vmul_f32(vsub_f32(v39, result.n128_u64[0]), v47);
        result.n128_u64[0] = vadd_f32(vzip1_s32(v48, result.n128_u64[0]), vzip2_s32(v48, result.n128_u64[0]));
        v49 = result.n128_f32[0] < result.n128_f32[1];
        if (result.n128_f32[0] == result.n128_f32[1])
        {
          v49 = v46[1].f32[0] < v38[1].f32[0];
        }

        if (!v49)
        {
          goto LABEL_133;
        }

        v50 = v11 + 2;
        *v11 = v46;
        *v10 = v38;
        v51 = v11[1];
        v11[1] = *v435;
        *v435 = v51;
      }

      v60 = a2 - 1;
      goto LABEL_132;
    }

    v55 = *v10;
    v56 = vmul_f32(v17, vsub_f32(**v10, v16));
    v57 = vadd_f32(v56, vdup_lane_s32(v56, 1));
    if ((vceq_f32(v57, v41).u8[0] & 1) == 0)
    {
      if ((vcgt_f32(v41, v57).u8[0] & 1) == 0)
      {
        goto LABEL_133;
      }

LABEL_68:
      *v11 = v55;
      *v10 = v36;
      v96 = v11[1];
      v11[1] = *v435;
      *v435 = v96;
      v60 = v11 + 2;
      v97 = v11[2];
      v11[2] = *v436;
      *v436 = v97;
      v98 = **a3;
      v99 = *v11;
      v100 = *a3[1];
      v101 = vmul_f32(vsub_f32(**v11, v98), v100);
      v102 = *v15;
      v103 = vmul_f32(v100, vsub_f32(**v15, v98));
      v104 = vadd_f32(vzip1_s32(v101, v103), vzip2_s32(v101, v103));
      v105 = v104.f32[0] < v104.f32[1];
      if (v104.f32[0] == v104.f32[1])
      {
        v105 = *(v99 + 2) < v102[1].f32[0];
      }

      if (!v105)
      {
        goto LABEL_133;
      }

      v106 = v15[1];
      v107 = v11[1];
      *v15 = v99;
      v15[1] = v107;
      *v11 = v102;
      v11[1] = v106;
      v50 = v15 + 2;
      goto LABEL_132;
    }

    if (v55[1].f32[0] < *(v36 + 2))
    {
      goto LABEL_68;
    }

LABEL_133:
    --a4;
    v188 = *v11;
    if ((a5 & 1) == 0)
    {
      v189 = a3[1];
      v190 = **a3;
      v191 = *(v11 - 3);
      v192 = vmul_f32(vsub_f32(*v191, v190), *v189);
      v193 = vmul_f32(*v189, vsub_f32(*v188, v190));
      v194 = vadd_f32(vzip1_s32(v192, v193), vzip2_s32(v192, v193));
      v195 = v194.f32[0] < v194.f32[1];
      if (v194.f32[0] == v194.f32[1])
      {
        v195 = v191[1].f32[0] < *(v188 + 2);
      }

      if (!v195)
      {
        v228 = *(v11 + 1);
        *v11 = 0;
        v11[1] = 0;
        v11[2] = 0;
        v229 = **a3;
        result.n128_u64[0] = *v188;
        v230 = *a3[1];
        v231 = vmul_f32(vsub_f32(*v188, v229), v230);
        v232 = *v10;
        v233 = **v10;
        v234 = vmul_f32(v230, vsub_f32(v233, v229));
        v235 = vadd_f32(vzip1_s32(v231, v234), vzip2_s32(v231, v234));
        if (v235.f32[0] == v235.f32[1])
        {
          if (*(v188 + 2) < v232[1].f32[0])
          {
            goto LABEL_183;
          }
        }

        else if (v235.f32[0] < v235.f32[1])
        {
LABEL_183:
          for (v11 += 3; ; v11 += 3)
          {
            v236 = vmul_f32(v230, vsub_f32(**v11, v229));
            v237 = vadd_f32(v236, vdup_lane_s32(v236, 1));
            if (vceq_f32(v235, v237).u8[0])
            {
              if (*(v188 + 2) < *(*v11 + 2))
              {
                goto LABEL_197;
              }
            }

            else if (vcgt_f32(v237, v235).u8[0])
            {
              goto LABEL_197;
            }
          }
        }

        for (v11 += 3; v11 < a2; v11 += 3)
        {
          v238 = vmul_f32(v230, vsub_f32(**v11, v229));
          v239 = vadd_f32(v238, vdup_lane_s32(v238, 1));
          if (vceq_f32(v235, v239).u8[0])
          {
            if (*(v188 + 2) < *(*v11 + 2))
            {
              break;
            }
          }

          else if (vcgt_f32(v239, v235).u8[0])
          {
            break;
          }
        }

LABEL_197:
        i = a2;
        if (v11 < a2)
        {
          for (i = a2 - 3; ; i -= 3)
          {
            v241 = vmul_f32(v230, vsub_f32(v233, v229));
            v242 = vadd_f32(v241, vdup_lane_s32(v241, 1));
            if (vceq_f32(v235, v242).u8[0])
            {
              if (*(v188 + 2) >= v232[1].f32[0])
              {
                break;
              }
            }

            else if ((vcgt_f32(v242, v235).u8[0] & 1) == 0)
            {
              break;
            }

            v243 = *(i - 3);
            v232 = v243;
            v233 = *v243;
          }
        }

        if (v11 < i)
        {
          v244 = *v11;
          v245 = *i;
          do
          {
            *v11 = v245;
            *i = v244;
            v246 = v11[1];
            v11[1] = i[1];
            i[1] = v246;
            v247 = v11[2];
            v11[2] = i[2];
            i[2] = v247;
            v248 = **a3;
            v249 = *a3[1];
            v250 = vmul_f32(vsub_f32(result.n128_u64[0], v248), v249);
            v251 = vadd_f32(v250, vdup_lane_s32(v250, 1));
            do
            {
              while (1)
              {
                v252 = v11[3];
                v11 += 3;
                v244 = v252;
                v253 = vmul_f32(v249, vsub_f32(*v252, v248));
                v254 = vadd_f32(v253, vdup_lane_s32(v253, 1));
                if ((vceq_f32(v251, v254).u8[0] & 1) == 0)
                {
                  break;
                }

                if (*(v188 + 2) < *(v244 + 2))
                {
                  goto LABEL_213;
                }
              }
            }

            while ((vcgt_f32(v254, v251).u8[0] & 1) == 0);
            do
            {
LABEL_213:
              while (1)
              {
                v255 = *(i - 3);
                i -= 3;
                v245 = v255;
                v256 = vmul_f32(v249, vsub_f32(*v255, v248));
                v257 = vadd_f32(v256, vdup_lane_s32(v256, 1));
                if (vceq_f32(v251, v257).u8[0])
                {
                  break;
                }

                if ((vcgt_f32(v257, v251).u8[0] & 1) == 0)
                {
                  goto LABEL_215;
                }
              }
            }

            while (*(v188 + 2) < *(v245 + 2));
LABEL_215:
            ;
          }

          while (v11 < i);
        }

        v258 = (v11 - 3);
        if (v11 - 3 == a1)
        {
          v260 = *v258;
          if (*v258)
          {
            *(v11 - 2) = v260;
            v441 = v228;
            operator delete(v260);
            v228 = v441;
          }
        }

        else
        {
          v259 = *a1;
          if (*a1)
          {
            a1[1] = v259;
            v440 = v228;
            operator delete(v259);
            v228 = v440;
            *a1 = 0;
            a1[1] = 0;
            a1[2] = 0;
          }

          result = *(v11 - 3);
          *a1 = result;
          a1[2] = *(v11 - 1);
          *v258 = 0;
          *(v11 - 2) = 0;
          *(v11 - 1) = 0;
        }

        a5 = 0;
        *(v11 - 3) = v188;
        *(v11 - 1) = v228;
        continue;
      }
    }

    v196 = *(v11 + 1);
    *v11 = 0;
    v11[1] = 0;
    v11[2] = 0;
    v197 = **a3;
    v198 = *a3[1];
    result.n128_u64[0] = *v188;
    v199 = vmul_f32(v198, vsub_f32(*v188, v197));
    v200 = vadd_f32(v199, vdup_lane_s32(v199, 1));
    for (j = (v11 + 3); ; j += 3)
    {
      v202 = *j;
      v203 = vmul_f32(v198, vsub_f32(**j, v197));
      v204 = vadd_f32(v203, vdup_lane_s32(v203, 1));
      if ((vceq_f32(v204, v200).u8[0] & 1) == 0)
      {
        break;
      }

      if (v202[1].f32[0] >= *(v188 + 2))
      {
        goto LABEL_144;
      }

LABEL_143:
      ;
    }

    if (vcgt_f32(v200, v204).u8[0])
    {
      goto LABEL_143;
    }

LABEL_144:
    k = a2 - 3;
    if (j - 3 != v11)
    {
      while (1)
      {
        v206 = vmul_f32(v198, vsub_f32(**k, v197));
        v207 = vadd_f32(v206, vdup_lane_s32(v206, 1));
        if (vceq_f32(v207, v200).u8[0])
        {
          if (*(*k + 2) < *(v188 + 2))
          {
            goto LABEL_159;
          }
        }

        else if (vcgt_f32(v200, v207).u8[0])
        {
          goto LABEL_159;
        }

        k -= 3;
      }
    }

    k = a2;
    if (j < a2)
    {
      for (k = a2 - 3; ; k -= 3)
      {
        v208 = vmul_f32(v198, vsub_f32(**k, v197));
        v209 = vadd_f32(v208, vdup_lane_s32(v208, 1));
        if (vceq_f32(v209, v200).u8[0])
        {
          if (j >= k || *(*k + 2) < *(v188 + 2))
          {
            break;
          }
        }

        else if (j >= k || (vmvn_s8(vcgt_f32(v200, v209)).u8[0] & 1) == 0)
        {
          break;
        }
      }
    }

LABEL_159:
    v11 = j;
    if (j < k)
    {
      v210 = *k;
      v11 = j;
      v211 = k;
      do
      {
        *v11 = v210;
        *v211 = v202;
        v212 = v11[1];
        v11[1] = v211[1];
        v211[1] = v212;
        v213 = v11[2];
        v11[2] = v211[2];
        v211[2] = v213;
        v214 = **a3;
        v215 = *a3[1];
        v216 = vmul_f32(vsub_f32(result.n128_u64[0], v214), v215);
        v217 = vadd_f32(v216, vdup_lane_s32(v216, 1));
        do
        {
          while (1)
          {
            v218 = v11[3];
            v11 += 3;
            v202 = v218;
            v219 = vmul_f32(v215, vsub_f32(*v218, v214));
            v220 = vadd_f32(v219, vdup_lane_s32(v219, 1));
            if ((vceq_f32(v220, v217).u8[0] & 1) == 0)
            {
              break;
            }

            if (v202[1].f32[0] >= *(v188 + 2))
            {
              goto LABEL_168;
            }
          }
        }

        while ((vcgt_f32(v217, v220).u8[0] & 1) != 0);
        do
        {
LABEL_168:
          while (1)
          {
            v221 = *(v211 - 3);
            v211 -= 3;
            v210 = v221;
            v222 = vmul_f32(v215, vsub_f32(*v221, v214));
            v223 = vadd_f32(v222, vdup_lane_s32(v222, 1));
            if (vceq_f32(v223, v217).u8[0])
            {
              break;
            }

            if (vcgt_f32(v217, v223).u8[0])
            {
              goto LABEL_170;
            }
          }
        }

        while (v210[1].f32[0] >= *(v188 + 2));
LABEL_170:
        ;
      }

      while (v11 < v211);
    }

    v224 = (v11 - 3);
    if (v11 - 3 == a1)
    {
      v226 = *v224;
      if (*v224)
      {
        *(v11 - 2) = v226;
        v438 = v196;
        operator delete(v226);
        v196 = v438;
      }
    }

    else
    {
      v225 = *a1;
      if (*a1)
      {
        a1[1] = v225;
        v437 = v196;
        operator delete(v225);
        v196 = v437;
        *a1 = 0;
        a1[1] = 0;
        a1[2] = 0;
      }

      result = *(v11 - 3);
      *a1 = result;
      a1[2] = *(v11 - 1);
      *v224 = 0;
      *(v11 - 2) = 0;
      *(v11 - 1) = 0;
    }

    *(v11 - 3) = v188;
    *(v11 - 1) = v196;
    if (j < k)
    {
LABEL_180:
      result = sub_26237332C(a1, v11 - 3, a3, a4, a5 & 1, result);
      a5 = 0;
    }

    else
    {
      v227 = sub_262376824(a1, v11 - 3, a3);
      if (sub_262376824(v11, a2, a3))
      {
        a2 = v11 - 3;
        if (v227)
        {
          return result;
        }

        goto LABEL_1;
      }

      if (!v227)
      {
        goto LABEL_180;
      }
    }
  }

  v295 = **a3;
  v296 = v11[3];
  v297 = *a3[1];
  v298 = vmul_f32(vsub_f32(*v296, v295), v297);
  v299 = *v11;
  result.n128_u64[0] = **v11;
  v300 = vmul_f32(v297, vsub_f32(result.n128_u64[0], v295));
  v301 = vadd_f32(vzip1_s32(v298, v300), vzip2_s32(v298, v300));
  v302 = v301.f32[0] < v301.f32[1];
  if (v301.f32[0] == v301.f32[1])
  {
    v302 = v296[1].f32[0] < *(v299 + 2);
  }

  if (!v302)
  {
    v406 = *v10;
    v407 = vmul_f32(v297, vsub_f32(**v10, v295));
    result.n128_u64[0] = vadd_f32(v407, vdup_lane_s32(v407, 1));
    if (vceq_f32(result.n128_u64[0], v301).u8[0])
    {
      result.n128_u32[0] = v406[1].u32[0];
      if (result.n128_f32[0] >= v296[1].f32[0])
      {
        return result;
      }
    }

    else
    {
      result.n128_u64[0] = vcgt_f32(v301, result.n128_u64[0]);
      if ((result.n128_u8[0] & 1) == 0)
      {
        return result;
      }
    }

    v11[3] = v406;
    *v10 = v296;
    v425 = v11[4];
    v11[4] = *v435;
    *v435 = v425;
    v426 = v11[5];
    v11[5] = *v436;
    *v436 = v426;
    v427 = v11[3];
    v428 = a3[1];
    v429 = **a3;
    v430 = vmul_f32(vsub_f32(*v427, v429), *v428);
    v431 = *v11;
    v432 = vmul_f32(*v428, vsub_f32(**v11, v429));
    result.n128_u64[0] = vadd_f32(vzip1_s32(v430, v432), vzip2_s32(v430, v432));
    v433 = result.n128_f32[0] < result.n128_f32[1];
    if (result.n128_f32[0] == result.n128_f32[1])
    {
      result.n128_u32[0] = v427[1].u32[0];
      v433 = result.n128_f32[0] < *(v431 + 2);
    }

    if (v433)
    {
      *v11 = v427;
      v11[3] = v431;
      result = *(v11 + 2);
      v434 = *(v11 + 1);
      *(v11 + 1) = result;
      *(v11 + 2) = v434;
    }

    return result;
  }

  v303 = *v10;
  v304 = vmul_f32(v297, vsub_f32(**v10, v295));
  v305 = vadd_f32(v304, vdup_lane_s32(v304, 1));
  if (vceq_f32(v305, v301).u8[0])
  {
    if (v303[1].f32[0] >= v296[1].f32[0])
    {
      goto LABEL_253;
    }

LABEL_356:
    *v11 = v303;
    *v10 = v299;
    goto LABEL_357;
  }

  if (vcgt_f32(v301, v305).u8[0])
  {
    goto LABEL_356;
  }

LABEL_253:
  *v11 = v296;
  v11[3] = v299;
  v306 = *(v11 + 1);
  *(v11 + 1) = *(v11 + 2);
  *(v11 + 2) = v306;
  v307 = *v10;
  *&v306 = **a3;
  v308 = *a3[1];
  v309 = vmul_f32(vsub_f32(**v10, *&v306), v308);
  v310 = vmul_f32(vsub_f32(result.n128_u64[0], *&v306), v308);
  result.n128_u64[0] = vadd_f32(vzip1_s32(v309, v310), vzip2_s32(v309, v310));
  v311 = result.n128_f32[0] < result.n128_f32[1];
  if (result.n128_f32[0] == result.n128_f32[1])
  {
    result.n128_u32[0] = v307[1].u32[0];
    v311 = result.n128_f32[0] < *(v299 + 2);
  }

  if (v311)
  {
    v11[3] = v307;
    *v10 = v299;
    v312 = v11[4];
    v313 = a2 - 1;
    v11[4] = *v435;
    *v435 = v312;
    v314 = v11[5];
    v11[5] = *v436;
    goto LABEL_358;
  }

  return result;
}

void sub_262374FE8(float **a1, float **a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = (a2 - 3);
  j = a1;
  while (1)
  {
    a1 = j;
    v10 = a2 - j;
    v11 = 0xAAAAAAAAAAAAAAABLL * (a2 - j);
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          sub_262375D14(j, j + 3, a2 - 3);
          return;
        case 4:

          sub_262375EE4(j, j + 3, j + 6, (a2 - 3));
          return;
        case 5:

          sub_26237603C(j, j + 3, j + 6, (j + 9), (a2 - 3));
          return;
      }
    }

    else
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        v93 = *v8;
        v94 = **v8;
        v95 = *j;
        v96 = **j;
        v97 = v94 < v96;
        if (v94 == v96)
        {
          v98 = v93[1];
          v99 = v95[1];
          v97 = v98 < v99;
          if (v98 == v99)
          {
            v97 = v93[2] < v95[2];
          }
        }

        if (v97)
        {
          *j = v93;
          *(a2 - 3) = v95;
          v100 = j[1];
          j[1] = *(a2 - 2);
          *(a2 - 2) = v100;
          v101 = j[2];
          j[2] = *(a2 - 1);
          *(a2 - 1) = v101;
        }

        return;
      }
    }

    if (v10 <= 575)
    {
      break;
    }

    if (!a3)
    {
      if (j == a2)
      {
        return;
      }

      v123 = (v11 - 2) >> 1;
      v124 = v123;
      do
      {
        v125 = v124;
        if (v123 >= v124)
        {
          v126 = (2 * v124) | 1;
          v127 = &j[3 * v126];
          if (2 * v125 + 2 < v11)
          {
            v128 = v127[3];
            v129 = *v127;
            v130 = **v127;
            v131 = v130 < *v128;
            if (v130 == *v128)
            {
              v132 = v129[1];
              v133 = v128[1];
              v131 = v132 < v133;
              if (v132 == v133)
              {
                v131 = v129[2] < v128[2];
              }
            }

            if (v131)
            {
              v127 += 3;
              v126 = 2 * v125 + 2;
            }
          }

          v134 = &j[3 * v125];
          v135 = *v127;
          v136 = **v127;
          v137 = *v134;
          v138 = **v134;
          v139 = v136 < v138;
          if (v136 == v138)
          {
            v140 = v135[1];
            v141 = v137[1];
            v139 = v140 < v141;
            if (v140 == v141)
            {
              v139 = v135[2] < v137[2];
            }
          }

          if (!v139)
          {
            v142 = *(v134 + 1);
            *v134 = 0;
            v134[1] = 0;
            v134[2] = 0;
            do
            {
              v143 = v127;
              *v134 = *v127;
              v134[2] = v127[2];
              *v127 = 0;
              v127[1] = 0;
              v127[2] = 0;
              if (v123 < v126)
              {
                break;
              }

              v144 = 2 * v126;
              v126 = (2 * v126) | 1;
              v127 = &j[3 * v126];
              v145 = v144 + 2;
              if (v145 < v11)
              {
                v146 = v127[3];
                v147 = *v127;
                v148 = **v127;
                v149 = v148 < *v146;
                if (v148 == *v146)
                {
                  v150 = v147[1];
                  v151 = v146[1];
                  v149 = v150 < v151;
                  if (v150 == v151)
                  {
                    v149 = v147[2] < v146[2];
                  }
                }

                if (v149)
                {
                  v127 += 3;
                  v126 = v145;
                }
              }

              v152 = *v127;
              v153 = **v127;
              v154 = v153 < *v137;
              if (v153 == *v137)
              {
                v155 = v152[1];
                v156 = v137[1];
                v154 = v155 < v156;
                if (v155 == v156)
                {
                  v154 = v152[2] < v137[2];
                }
              }

              v134 = v143;
            }

            while (!v154);
            *v143 = v137;
            *(v143 + 1) = v142;
          }
        }

        v124 = v125 - 1;
      }

      while (v125);
      v157 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
      while (2)
      {
        v158 = 0;
        v159 = *j;
        v160 = *(j + 1);
        j[1] = 0;
        j[2] = 0;
        v161 = j;
        *j = 0;
        do
        {
          v162 = v161;
          v163 = &v161[24 * v158];
          v161 = v163 + 24;
          v164 = 2 * v158;
          v158 = (2 * v158) | 1;
          v165 = v164 + 2;
          if (v165 < v157)
          {
            v168 = *(v163 + 6);
            v167 = v163 + 48;
            v166 = v168;
            v169 = *(v167 - 3);
            v170 = *v169 < *v168;
            if (*v169 == *v168)
            {
              v171 = v169[1];
              v172 = v166[1];
              v170 = v171 < v172;
              if (v171 == v172)
              {
                v170 = v169[2] < v166[2];
              }
            }

            if (v170)
            {
              v161 = v167;
              v158 = v165;
            }
          }

          *v162 = *v161;
          *(v162 + 2) = *(v161 + 2);
          *v161 = 0;
          *(v161 + 1) = 0;
          *(v161 + 2) = 0;
        }

        while (v158 <= ((v157 - 2) >> 1));
        if (v161 == (a2 - 3))
        {
          *v161 = v159;
          v183 = v161;
        }

        else
        {
          *v161 = *(a2 - 3);
          *(v161 + 2) = *(a2 - 1);
          *(a2 - 3) = v159;
          *(a2 - 1) = v160;
          v173 = v161 - j + 24;
          if (v173 < 25)
          {
            goto LABEL_214;
          }

          v174 = (0xAAAAAAAAAAAAAAABLL * (v173 >> 3) - 2) >> 1;
          v175 = &j[3 * v174];
          v176 = *v175;
          v177 = **v175;
          v178 = *v161;
          v179 = **v161;
          v180 = v177 < v179;
          if (v177 == v179)
          {
            v181 = v176[1];
            v182 = v178[1];
            v180 = v181 < v182;
            if (v181 == v182)
            {
              v180 = v176[2] < v178[2];
            }
          }

          if (!v180)
          {
LABEL_214:
            a2 -= 3;
            if (v157-- <= 2)
            {
              return;
            }

            continue;
          }

          v160 = *(v161 + 8);
          *v161 = 0;
          *(v161 + 1) = 0;
          *(v161 + 2) = 0;
          do
          {
            v183 = v175;
            *v161 = *v175;
            *(v161 + 2) = v175[2];
            *v175 = 0;
            v175[1] = 0;
            v175[2] = 0;
            if (!v174)
            {
              break;
            }

            v174 = (v174 - 1) >> 1;
            v175 = &j[3 * v174];
            v184 = *v175;
            v185 = **v175;
            v186 = v185 < *v178;
            if (v185 == *v178)
            {
              v187 = v184[1];
              v188 = v178[1];
              v186 = v187 < v188;
              if (v187 == v188)
              {
                v186 = v184[2] < v178[2];
              }
            }

            v161 = v183;
          }

          while (v186);
          *v183 = v178;
        }

        break;
      }

      *(v183 + 8) = v160;
      goto LABEL_214;
    }

    v12 = v11 >> 1;
    v13 = &j[3 * (v11 >> 1)];
    if (v10 < 0xC01)
    {
      sub_262375D14(&a1[3 * v12], a1, a2 - 3);
    }

    else
    {
      sub_262375D14(a1, &a1[3 * v12], a2 - 3);
      v14 = 3 * v12;
      sub_262375D14(a1 + 3, &a1[v14 - 3], a2 - 6);
      sub_262375D14(a1 + 6, &a1[v14 + 3], a2 - 9);
      sub_262375D14(&a1[v14 - 3], v13, &a1[v14 + 3]);
      v15 = *a1;
      *a1 = *v13;
      *v13 = v15;
      v16 = a1[2];
      a1[2] = v13[2];
      v13[2] = v16;
    }

    --a3;
    v17 = *a1;
    if (a4)
    {
      goto LABEL_20;
    }

    v18 = *(a1 - 3);
    v19 = *v18 < *v17;
    if (*v18 == *v17)
    {
      v20 = v18[1];
      v21 = v17[1];
      v19 = v20 < v21;
      if (v20 == v21)
      {
        v19 = v18[2] < v17[2];
      }
    }

    if (v19)
    {
LABEL_20:
      v22 = *(a1 + 1);
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      v23 = a1 + 3;
      v24 = *v17;
      while (1)
      {
        v25 = *v23;
        v26 = **v23;
        v27 = v26 < v24;
        if (v26 == v24)
        {
          v28 = v25[1];
          v29 = v17[1];
          v27 = v28 < v29;
          if (v28 == v29)
          {
            v27 = v25[2] < v17[2];
          }
        }

        if (!v27)
        {
          break;
        }

        v23 += 3;
      }

      i = (a2 - 3);
      if (v23 - 3 == a1)
      {
        i = a2;
        if (v23 < a2)
        {
          for (i = (a2 - 3); ; i -= 24)
          {
            v36 = *i;
            v37 = **i;
            if (v37 == v24)
            {
              v38 = v36[1];
              v39 = v17[1];
              if (v38 == v39)
              {
                if (v23 >= i)
                {
                  break;
                }

                v38 = v36[2];
                v39 = v17[2];
              }

              else if (v23 >= i)
              {
                break;
              }

              if (v38 < v39)
              {
                break;
              }
            }

            else if (v23 >= i || v37 < v24)
            {
              break;
            }
          }
        }
      }

      else
      {
        while (1)
        {
          v31 = *i;
          v32 = **i;
          v33 = v32 < v24;
          if (v32 == v24)
          {
            v34 = v31[1];
            v35 = v17[1];
            v33 = v34 < v35;
            if (v34 == v35)
            {
              v33 = v31[2] < v17[2];
            }
          }

          if (v33)
          {
            break;
          }

          i -= 24;
        }
      }

      j = v23;
      if (v23 < i)
      {
        v40 = *i;
        j = v23;
        v41 = i;
        do
        {
          *j = v40;
          *v41 = v25;
          v42 = j[1];
          j[1] = *(v41 + 1);
          *(v41 + 1) = v42;
          v43 = j[2];
          j[2] = *(v41 + 2);
          *(v41 + 2) = v43;
          do
          {
            v44 = j[3];
            j += 3;
            v25 = v44;
            v45 = *v44 < v24;
            if (*v44 == v24)
            {
              v46 = v25[1];
              v47 = v17[1];
              v45 = v46 < v47;
              if (v46 == v47)
              {
                v45 = v25[2] < v17[2];
              }
            }
          }

          while (v45);
          do
          {
            v48 = *(v41 - 3);
            v41 -= 24;
            v40 = v48;
            v49 = *v48 < v24;
            if (*v48 == v24)
            {
              v50 = v40[1];
              v51 = v17[1];
              v49 = v50 < v51;
              if (v50 == v51)
              {
                v49 = v40[2] < v17[2];
              }
            }
          }

          while (!v49);
        }

        while (j < v41);
      }

      v52 = (j - 3);
      if (j - 3 == a1)
      {
        v54 = *v52;
        if (*v52)
        {
          *(j - 2) = v54;
          v205 = v22;
          operator delete(v54);
          v22 = v205;
        }
      }

      else
      {
        v53 = *a1;
        if (*a1)
        {
          a1[1] = v53;
          v204 = v22;
          operator delete(v53);
          v22 = v204;
          *a1 = 0;
          a1[1] = 0;
          a1[2] = 0;
        }

        *a1 = *(j - 3);
        a1[2] = *(j - 1);
        *v52 = 0;
        *(j - 2) = 0;
        *(j - 1) = 0;
      }

      *(j - 3) = v17;
      *(j - 1) = v22;
      if (v23 < i)
      {
        goto LABEL_67;
      }

      v55 = sub_262376200(a1, j - 3);
      if (sub_262376200(j, a2))
      {
        a2 = j - 3;
        if (v55)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v55)
      {
LABEL_67:
        sub_262374FE8(a1, j - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v56 = *(a1 + 1);
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      v57 = *v17;
      v58 = *v8;
      v59 = **v8;
      v60 = *v17 < v59;
      if (*v17 == v59)
      {
        v61 = v17[1];
        v62 = v58[1];
        v60 = v61 < v62;
        if (v61 == v62)
        {
          v60 = v17[2] < v58[2];
        }
      }

      if (v60)
      {
        for (j = a1 + 3; ; j += 3)
        {
          v63 = *j;
          v64 = **j;
          v65 = v57 < v64;
          if (v57 == v64)
          {
            v66 = v17[1];
            v67 = v63[1];
            v65 = v66 < v67;
            if (v66 == v67)
            {
              v65 = v17[2] < v63[2];
            }
          }

          if (v65)
          {
            break;
          }
        }
      }

      else
      {
        for (j = a1 + 3; j < a2; j += 3)
        {
          v68 = *j;
          v69 = **j;
          v70 = v57 < v69;
          if (v57 == v69)
          {
            v71 = v17[1];
            v72 = v68[1];
            v70 = v71 < v72;
            if (v71 == v72)
            {
              v70 = v17[2] < v68[2];
            }
          }

          if (v70)
          {
            break;
          }
        }
      }

      k = a2;
      if (j < a2)
      {
        for (k = (a2 - 3); ; k -= 24)
        {
          v74 = v57 < v59;
          if (v57 == v59)
          {
            v75 = v17[1];
            v76 = v58[1];
            v74 = v75 < v76;
            if (v75 == v76)
            {
              v74 = v17[2] < v58[2];
            }
          }

          if (!v74)
          {
            break;
          }

          v77 = *(k - 3);
          v58 = v77;
          v59 = *v77;
        }
      }

      if (j < k)
      {
        v78 = *j;
        v79 = *k;
        do
        {
          *j = v79;
          *k = v78;
          v80 = j[1];
          j[1] = *(k + 1);
          *(k + 1) = v80;
          v81 = j[2];
          j[2] = *(k + 2);
          *(k + 2) = v81;
          do
          {
            v82 = j[3];
            j += 3;
            v78 = v82;
            v83 = v57 < *v82;
            if (v57 == *v82)
            {
              v84 = v17[1];
              v85 = v78[1];
              v83 = v84 < v85;
              if (v84 == v85)
              {
                v83 = v17[2] < v78[2];
              }
            }
          }

          while (!v83);
          do
          {
            v86 = *(k - 3);
            k -= 24;
            v79 = v86;
            v87 = v57 < *v86;
            if (v57 == *v86)
            {
              v88 = v17[1];
              v89 = v79[1];
              v87 = v88 < v89;
              if (v88 == v89)
              {
                v87 = v17[2] < v79[2];
              }
            }
          }

          while (v87);
        }

        while (j < k);
      }

      v90 = (j - 3);
      if (j - 3 == a1)
      {
        v92 = *v90;
        if (*v90)
        {
          *(j - 2) = v92;
          v207 = v56;
          operator delete(v92);
          v56 = v207;
        }
      }

      else
      {
        v91 = *a1;
        if (*a1)
        {
          a1[1] = v91;
          v206 = v56;
          operator delete(v91);
          v56 = v206;
          *a1 = 0;
          a1[1] = 0;
          a1[2] = 0;
        }

        *a1 = *(j - 3);
        a1[2] = *(j - 1);
        *v90 = 0;
        *(j - 2) = 0;
        *(j - 1) = 0;
      }

      a4 = 0;
      *(j - 3) = v17;
      *(j - 1) = v56;
    }
  }

  v102 = j + 3;
  v104 = j == a2 || v102 == a2;
  if (a4)
  {
    if (!v104)
    {
      v105 = 0;
      v106 = j;
      do
      {
        v107 = v106;
        v106 = v102;
        v108 = v107[3];
        v109 = *v107;
        v110 = **v107;
        v111 = *v108 < v110;
        if (*v108 == v110)
        {
          v112 = v108[1];
          v113 = v109[1];
          v111 = v112 < v113;
          if (v112 == v113)
          {
            v111 = v108[2] < v109[2];
          }
        }

        if (v111)
        {
          v114 = *(v107 + 2);
          *v106 = 0;
          v106[1] = 0;
          v115 = v105;
          v106[2] = 0;
          while (1)
          {
            v116 = j + v115;
            *(v116 + 24) = *(j + v115);
            *(v116 + 5) = *(j + v115 + 16);
            *(v116 + 1) = 0;
            *(v116 + 2) = 0;
            *v116 = 0;
            if (!v115)
            {
              break;
            }

            v117 = *(v116 - 3);
            v118 = *v108 < *v117;
            if (*v108 == *v117)
            {
              v119 = v108[1];
              v120 = v117[1];
              v118 = v119 < v120;
              if (v119 == v120)
              {
                v118 = v108[2] < v117[2];
              }
            }

            if (!v118)
            {
              v121 = (j + v115);
              goto LABEL_153;
            }

            v115 -= 24;
          }

          v121 = j;
LABEL_153:
          v122 = *v121;
          if (*v121)
          {
            v121[1] = v122;
            v208 = v114;
            operator delete(v122);
            v114 = v208;
          }

          *v121 = v108;
          *(v121 + 1) = v114;
        }

        v102 = v106 + 3;
        v105 += 24;
      }

      while (v106 + 3 != a2);
    }
  }

  else if (!v104)
  {
    do
    {
      v190 = a1;
      a1 = v102;
      v191 = v190[3];
      v192 = *v190;
      v193 = **v190;
      v194 = *v191 < v193;
      if (*v191 == v193)
      {
        v195 = v191[1];
        v196 = v192[1];
        v194 = v195 < v196;
        if (v195 == v196)
        {
          v194 = v191[2] < v192[2];
        }
      }

      if (v194)
      {
        v197 = *(v190 + 2);
        *a1 = 0;
        a1[1] = 0;
        a1[2] = 0;
        do
        {
          v198 = v190;
          *(v190 + 3) = *v190;
          v190[5] = v190[2];
          *v190 = 0;
          v190[1] = 0;
          v190[2] = 0;
          v200 = *(v190 - 3);
          v190 -= 3;
          v199 = v200;
          v201 = *v191 < *v200;
          if (*v191 == *v200)
          {
            v202 = v191[1];
            v203 = v199[1];
            v201 = v202 < v203;
            if (v202 == v203)
            {
              v201 = v191[2] < v199[2];
            }
          }
        }

        while (v201);
        *v198 = v191;
        *(v198 + 1) = v197;
      }

      v102 = a1 + 3;
    }

    while (a1 + 3 != a2);
  }
}

double sub_262375C50(void *a1)
{
  v1 = a1;
  objc_msgSend_quad(v1, v2, v3);
  v13 = v4;
  objc_msgSend_quad(v1, v5, v6);
  v8 = vsubq_f32(v13, v7);
  v9 = vmulq_f32(v8, v8);
  *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
  *v9.f32 = vrsqrte_f32(v10);
  *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
  v11 = vmulq_n_f32(v8, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]);
  v14 = vmlaq_f32(vmulq_f32(v11, xmmword_2623A7910), xmmword_2623A7700, vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));

  *&result = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL).u64[0];
  return result;
}

float **sub_262375D14(float **result, float **a2, float **a3)
{
  v3 = *a2;
  v4 = **a2;
  v5 = *result;
  v6 = **result;
  v7 = v4 < v6;
  if (v4 == v6)
  {
    v8 = v3[1];
    v9 = v5[1];
    v7 = v8 < v9;
    if (v8 == v9)
    {
      v7 = v3[2] < v5[2];
    }
  }

  if (!v7)
  {
    v17 = *a3;
    v18 = **a3;
    v19 = v18 < v4;
    if (v18 == v4)
    {
      v20 = v17[1];
      v21 = v3[1];
      v19 = v20 < v21;
      if (v20 == v21)
      {
        v19 = v17[2] < v3[2];
      }
    }

    if (!v19)
    {
      return result;
    }

    *a2 = v17;
    *a3 = v3;
    v22 = a2[1];
    a2[1] = a3[1];
    a3[1] = v22;
    v24 = a2 + 2;
    v23 = a2[2];
    a2[2] = a3[2];
    a3[2] = v23;
    v25 = *a2;
    v26 = **a2;
    v27 = *result;
    v28 = **result;
    v29 = v26 < v28;
    if (v26 == v28)
    {
      v30 = v25[1];
      v31 = v27[1];
      v29 = v30 < v31;
      if (v30 == v31)
      {
        v29 = v25[2] < v27[2];
      }
    }

    if (!v29)
    {
      return result;
    }

    *result = v25;
    *a2 = v27;
    v32 = result[1];
    result[1] = a2[1];
    a2[1] = v32;
    v16 = result + 2;
LABEL_30:
    v43 = *v16;
    *v16 = *v24;
    *v24 = v43;
    return result;
  }

  v10 = *a3;
  v11 = **a3;
  v12 = v11 < v4;
  if (v11 == v4)
  {
    v13 = v10[1];
    v14 = v3[1];
    v12 = v13 < v14;
    if (v13 == v14)
    {
      v12 = v10[2] < v3[2];
    }
  }

  if (v12)
  {
    *result = v10;
    *a3 = v5;
    v15 = result[1];
    result[1] = a3[1];
    a3[1] = v15;
    v16 = result + 2;
LABEL_29:
    v24 = a3 + 2;
    goto LABEL_30;
  }

  *result = v3;
  *a2 = v5;
  v33 = result[1];
  result[1] = a2[1];
  a2[1] = v33;
  v16 = a2 + 2;
  v34 = result[2];
  result[2] = a2[2];
  a2[2] = v34;
  v35 = *a3;
  v36 = **a3;
  v37 = *a2;
  v38 = **a2;
  v39 = v36 < v38;
  if (v36 == v38)
  {
    v40 = v35[1];
    v41 = v37[1];
    v39 = v40 < v41;
    if (v40 == v41)
    {
      v39 = v35[2] < v37[2];
    }
  }

  if (v39)
  {
    *a2 = v35;
    *a3 = v37;
    v42 = a2[1];
    a2[1] = a3[1];
    a3[1] = v42;
    goto LABEL_29;
  }

  return result;
}

float **sub_262375EE4(float **a1, float **a2, float **a3, uint64_t a4)
{
  result = sub_262375D14(a1, a2, a3);
  v9 = *a4;
  v10 = **a4;
  v11 = *a3;
  v12 = **a3;
  v13 = v10 < v12;
  if (v10 == v12)
  {
    v14 = v9[1];
    v15 = v11[1];
    v13 = v14 < v15;
    if (v14 == v15)
    {
      v13 = v9[2] < v11[2];
    }
  }

  if (v13)
  {
    *a3 = v9;
    *a4 = v11;
    v16 = a3[1];
    a3[1] = *(a4 + 8);
    *(a4 + 8) = v16;
    v17 = a3[2];
    a3[2] = *(a4 + 16);
    *(a4 + 16) = v17;
    v18 = *a3;
    v19 = **a3;
    v20 = *a2;
    v21 = **a2;
    v22 = v19 < v21;
    if (v19 == v21)
    {
      v23 = v18[1];
      v24 = v20[1];
      v22 = v23 < v24;
      if (v23 == v24)
      {
        v22 = v18[2] < v20[2];
      }
    }

    if (v22)
    {
      *a2 = v18;
      *a3 = v20;
      v25 = a2[1];
      a2[1] = a3[1];
      a3[1] = v25;
      v26 = a2[2];
      a2[2] = a3[2];
      a3[2] = v26;
      v27 = *a2;
      v28 = **a2;
      v29 = *a1;
      v30 = **a1;
      v31 = v28 < v30;
      if (v28 == v30)
      {
        v32 = v27[1];
        v33 = v29[1];
        v31 = v32 < v33;
        if (v32 == v33)
        {
          v31 = v27[2] < v29[2];
        }
      }

      if (v31)
      {
        *a1 = v27;
        *a2 = v29;
        v34 = a1[1];
        a1[1] = a2[1];
        a2[1] = v34;
        v35 = a1[2];
        a1[2] = a2[2];
        a2[2] = v35;
      }
    }
  }

  return result;
}

float **sub_26237603C(float **a1, float **a2, float **a3, uint64_t a4, uint64_t a5)
{
  result = sub_262375EE4(a1, a2, a3, a4);
  v11 = *a5;
  v12 = **a5;
  v13 = *a4;
  v14 = **a4;
  v15 = v12 < v14;
  if (v12 == v14)
  {
    v16 = v11[1];
    v17 = v13[1];
    v15 = v16 < v17;
    if (v16 == v17)
    {
      v15 = v11[2] < v13[2];
    }
  }

  if (v15)
  {
    *a4 = v11;
    *a5 = v13;
    v18 = *(a4 + 8);
    *(a4 + 8) = *(a5 + 8);
    *(a5 + 8) = v18;
    v19 = *(a4 + 16);
    *(a4 + 16) = *(a5 + 16);
    *(a5 + 16) = v19;
    v20 = *a4;
    v21 = **a4;
    v22 = *a3;
    v23 = **a3;
    v24 = v21 < v23;
    if (v21 == v23)
    {
      v25 = v20[1];
      v26 = v22[1];
      v24 = v25 < v26;
      if (v25 == v26)
      {
        v24 = v20[2] < v22[2];
      }
    }

    if (v24)
    {
      *a3 = v20;
      *a4 = v22;
      v27 = a3[1];
      a3[1] = *(a4 + 8);
      *(a4 + 8) = v27;
      v28 = a3[2];
      a3[2] = *(a4 + 16);
      *(a4 + 16) = v28;
      v29 = *a3;
      v30 = **a3;
      v31 = *a2;
      v32 = **a2;
      v33 = v30 < v32;
      if (v30 == v32)
      {
        v34 = v29[1];
        v35 = v31[1];
        v33 = v34 < v35;
        if (v34 == v35)
        {
          v33 = v29[2] < v31[2];
        }
      }

      if (v33)
      {
        *a2 = v29;
        *a3 = v31;
        v36 = a2[1];
        a2[1] = a3[1];
        a3[1] = v36;
        v37 = a2[2];
        a2[2] = a3[2];
        a3[2] = v37;
        v38 = *a2;
        v39 = **a2;
        v40 = *a1;
        v41 = **a1;
        v42 = v39 < v41;
        if (v39 == v41)
        {
          v43 = v38[1];
          v44 = v40[1];
          v42 = v43 < v44;
          if (v43 == v44)
          {
            v42 = v38[2] < v40[2];
          }
        }

        if (v42)
        {
          *a1 = v38;
          *a2 = v40;
          v45 = a1[1];
          a1[1] = a2[1];
          a2[1] = v45;
          v46 = a1[2];
          a1[2] = a2[2];
          a2[2] = v46;
        }
      }
    }
  }

  return result;
}

BOOL sub_262376200(float **a1, float **a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 3);
        v6 = *a1;
        v7 = **a1;
        v8 = *v5 < v7;
        if (*v5 == v7)
        {
          v9 = v5[1];
          v10 = v6[1];
          v8 = v9 < v10;
          if (v9 == v10)
          {
            v8 = v5[2] < v6[2];
          }
        }

        if (v8)
        {
          *a1 = v5;
          *(a2 - 3) = v6;
          v11 = a1[1];
          a1[1] = *(a2 - 2);
          *(a2 - 2) = v11;
          v12 = a1[2];
          a1[2] = *(a2 - 1);
          *(a2 - 1) = v12;
        }

        return 1;
      }

      goto LABEL_15;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_262375D14(a1, a1 + 3, a2 - 3);
      return 1;
    case 4:
      sub_262375EE4(a1, a1 + 3, a1 + 6, (a2 - 3));
      return 1;
    case 5:
      sub_26237603C(a1, a1 + 3, a1 + 6, (a1 + 9), (a2 - 3));
      return 1;
  }

LABEL_15:
  v13 = a1 + 6;
  sub_262375D14(a1, a1 + 3, a1 + 6);
  v14 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *v14;
    v18 = **v14;
    v19 = *v13;
    v20 = **v13;
    v21 = v18 < v20;
    if (v18 == v20)
    {
      v22 = v17[1];
      v23 = v19[1];
      v21 = v22 < v23;
      if (v22 == v23)
      {
        v21 = v17[2] < v19[2];
      }
    }

    if (v21)
    {
      v24 = *(v14 + 1);
      *v14 = 0;
      v14[1] = 0;
      v25 = v15;
      v14[2] = 0;
      while (1)
      {
        v26 = a1 + v25;
        *(v26 + 72) = *(a1 + v25 + 48);
        *(v26 + 11) = *(a1 + v25 + 64);
        *(v26 + 7) = 0;
        *(v26 + 8) = 0;
        *(v26 + 6) = 0;
        if (v25 == -48)
        {
          break;
        }

        v27 = *(v26 + 3);
        v28 = *v17 < *v27;
        if (*v17 == *v27)
        {
          v29 = v17[1];
          v30 = v27[1];
          v28 = v29 < v30;
          if (v29 == v30)
          {
            v28 = v17[2] < v27[2];
          }
        }

        if (!v28)
        {
          v31 = (a1 + v25 + 48);
          goto LABEL_31;
        }

        v25 -= 24;
      }

      v31 = a1;
LABEL_31:
      v32 = *v31;
      if (*v31)
      {
        v31[1] = v32;
        v34 = v24;
        operator delete(v32);
        v24 = v34;
      }

      *v31 = v17;
      *(v31 + 1) = v24;
      if (++v16 == 8)
      {
        return v14 + 3 == a2;
      }
    }

    v13 = v14;
    v15 += 24;
    v14 += 3;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_262376468(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, float32x2_t **a5)
{
  v5 = **a5;
  v6 = *a2;
  v7 = *a5[1];
  v8 = vmul_f32(vsub_f32(**a2, v5), v7);
  v9 = *result;
  v10 = vmul_f32(v7, vsub_f32(**result, v5));
  v11 = vadd_f32(vzip1_s32(v8, v10), vzip2_s32(v8, v10));
  v12 = v11.f32[0] < v11.f32[1];
  if (v11.f32[0] == v11.f32[1])
  {
    v12 = v6[1].f32[0] < v9[1].f32[0];
  }

  if (v12)
  {
    v13 = *a3;
    v14 = vmul_f32(v7, vsub_f32(**a3, v5));
    v15 = vadd_f32(v14, vdup_lane_s32(v14, 1));
    if (vceq_f32(v15, v11).u8[0])
    {
      if (v13[1].f32[0] >= v6[1].f32[0])
      {
LABEL_7:
        *result = v6;
        *a2 = v9;
        v16 = *(result + 8);
        *(result + 8) = *(a2 + 8);
        *(a2 + 8) = v16;
        v17 = (a2 + 16);
        v18 = *(result + 16);
        *(result + 16) = *(a2 + 16);
        *(a2 + 16) = v18;
        v5 = **a5;
        v19 = *a3;
        v7 = *a5[1];
        v20 = vmul_f32(vsub_f32(**a3, v5), v7);
        v21 = *a2;
        v22 = vmul_f32(v7, vsub_f32(**a2, v5));
        v23 = vadd_f32(vzip1_s32(v20, v22), vzip2_s32(v20, v22));
        v24 = v23.f32[0] < v23.f32[1];
        if (v23.f32[0] == v23.f32[1])
        {
          v24 = v19[1].f32[0] < v21[1].f32[0];
        }

        if (!v24)
        {
          goto LABEL_25;
        }

        *a2 = v19;
        *a3 = v21;
        v25 = *(a2 + 8);
        *(a2 + 8) = *(a3 + 8);
        *(a3 + 8) = v25;
        goto LABEL_17;
      }
    }

    else if ((vcgt_f32(v11, v15).u8[0] & 1) == 0)
    {
      goto LABEL_7;
    }

    *result = v13;
    *a3 = v9;
    v29 = *(result + 8);
    *(result + 8) = *(a3 + 8);
    *(a3 + 8) = v29;
    v17 = (result + 16);
LABEL_17:
    v30 = (a3 + 16);
LABEL_24:
    v40 = *v17;
    *v17 = *v30;
    *v30 = v40;
    v5 = **a5;
    v7 = *a5[1];
    goto LABEL_25;
  }

  v26 = *a3;
  v27 = vmul_f32(v7, vsub_f32(**a3, v5));
  v28 = vadd_f32(v27, vdup_lane_s32(v27, 1));
  if (vceq_f32(v28, v11).u8[0])
  {
    if (v26[1].f32[0] >= v6[1].f32[0])
    {
      goto LABEL_25;
    }
  }

  else if ((vcgt_f32(v11, v28).u8[0] & 1) == 0)
  {
    goto LABEL_25;
  }

  *a2 = v26;
  *a3 = v6;
  v31 = *(a2 + 8);
  *(a2 + 8) = *(a3 + 8);
  *(a3 + 8) = v31;
  v30 = (a2 + 16);
  v32 = *(a2 + 16);
  *(a2 + 16) = *(a3 + 16);
  *(a3 + 16) = v32;
  v5 = **a5;
  v33 = *a2;
  v7 = *a5[1];
  v34 = vmul_f32(vsub_f32(**a2, v5), v7);
  v35 = *result;
  v36 = vmul_f32(v7, vsub_f32(**result, v5));
  v37 = vadd_f32(vzip1_s32(v34, v36), vzip2_s32(v34, v36));
  v38 = v37.f32[0] < v37.f32[1];
  if (v37.f32[0] == v37.f32[1])
  {
    v38 = v33[1].f32[0] < v35[1].f32[0];
  }

  if (v38)
  {
    *result = v33;
    *a2 = v35;
    v39 = *(result + 8);
    *(result + 8) = *(a2 + 8);
    *(a2 + 8) = v39;
    v17 = (result + 16);
    goto LABEL_24;
  }

LABEL_25:
  v41 = *a4;
  v42 = vmul_f32(vsub_f32(**a4, v5), v7);
  v43 = *a3;
  v44 = vmul_f32(v7, vsub_f32(**a3, v5));
  v45 = vadd_f32(vzip1_s32(v42, v44), vzip2_s32(v42, v44));
  v46 = v45.f32[0] < v45.f32[1];
  if (v45.f32[0] == v45.f32[1])
  {
    v46 = v41[1].f32[0] < v43[1].f32[0];
  }

  if (v46)
  {
    *a3 = v41;
    *a4 = v43;
    v47 = *(a3 + 8);
    *(a3 + 8) = *(a4 + 8);
    *(a4 + 8) = v47;
    v48 = *(a3 + 16);
    *(a3 + 16) = *(a4 + 16);
    *(a4 + 16) = v48;
    v49 = *a3;
    v50 = a5[1];
    v51 = **a5;
    v52 = vmul_f32(vsub_f32(**a3, v51), *v50);
    v53 = *a2;
    v54 = vmul_f32(*v50, vsub_f32(**a2, v51));
    v55 = vadd_f32(vzip1_s32(v52, v54), vzip2_s32(v52, v54));
    v56 = v55.f32[0] < v55.f32[1];
    if (v55.f32[0] == v55.f32[1])
    {
      v56 = v49[1].f32[0] < v53[1].f32[0];
    }

    if (v56)
    {
      *a2 = v49;
      *a3 = v53;
      v57 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v57;
      v58 = *(a2 + 16);
      *(a2 + 16) = *(a3 + 16);
      *(a3 + 16) = v58;
      v59 = *a2;
      v60 = a5[1];
      v61 = **a5;
      v62 = vmul_f32(vsub_f32(**a2, v61), *v60);
      v63 = *result;
      v64 = vmul_f32(*v60, vsub_f32(**result, v61));
      v65 = vadd_f32(vzip1_s32(v62, v64), vzip2_s32(v62, v64));
      v66 = v65.f32[0] < v65.f32[1];
      if (v65.f32[0] == v65.f32[1])
      {
        v66 = v59[1].f32[0] < v63[1].f32[0];
      }

      if (v66)
      {
        *result = v59;
        *a2 = v63;
        v67 = *(result + 8);
        *(result + 8) = *(a2 + 8);
        *(a2 + 8) = v67;
        v68 = *(result + 16);
        *(result + 16) = *(a2 + 16);
        *(a2 + 16) = v68;
      }
    }
  }

  return result;
}

BOOL sub_262376824(float32x2_t **a1, float32x2_t **a2, float32x2_t **a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 != 4)
      {
        if (v6 == 5)
        {
          sub_262376468(a1, (a1 + 3), (a1 + 6), (a1 + 9), a3);
          v15 = **a3;
          v16 = *(a2 - 3);
          v17 = *a3[1];
          v18 = vmul_f32(vsub_f32(*v16, v15), v17);
          v19 = a1[9];
          v20 = vmul_f32(v17, vsub_f32(*v19, v15));
          v21 = vadd_f32(vzip1_s32(v18, v20), vzip2_s32(v18, v20));
          v22 = v21.f32[0] < v21.f32[1];
          if (v21.f32[0] == v21.f32[1])
          {
            v22 = v16[1].f32[0] < v19[1].f32[0];
          }

          if (v22)
          {
            a1[9] = v16;
            *(a2 - 3) = v19;
            v23 = a1[10];
            a1[10] = *(a2 - 2);
            *(a2 - 2) = v23;
            v24 = a1[11];
            a1[11] = *(a2 - 1);
            *(a2 - 1) = v24;
            v25 = a1[9];
            v26 = *v25;
            v27 = a3[1];
            v28 = **a3;
            v29 = vmul_f32(vsub_f32(*v25, v28), *v27);
            v30 = a1[6];
            v31 = vmul_f32(*v27, vsub_f32(*v30, v28));
            v32 = vadd_f32(vzip1_s32(v29, v31), vzip2_s32(v29, v31));
            v33 = v32.f32[0] < v32.f32[1];
            if (v32.f32[0] == v32.f32[1])
            {
              v33 = v25[1].f32[0] < v30[1].f32[0];
            }

            if (v33)
            {
              v35 = a1[10];
              v34 = a1[11];
              v36 = *(a1 + 7);
              a1[6] = v25;
              a1[7] = v35;
              a1[8] = v34;
              a1[9] = v30;
              *(a1 + 5) = v36;
              v37 = a3[1];
              *&v36 = **a3;
              v38 = vmul_f32(vsub_f32(v26, *&v36), *v37);
              v39 = a1[3];
              *&v36 = vmul_f32(*v37, vsub_f32(*v39, *&v36));
              v40 = vadd_f32(vzip1_s32(v38, *&v36), vzip2_s32(v38, *&v36));
              v41 = v40.f32[0] < v40.f32[1];
              if (v40.f32[0] == v40.f32[1])
              {
                v41 = v25[1].f32[0] < v39[1].f32[0];
              }

              if (v41)
              {
                v42 = *(a1 + 2);
                a1[3] = v25;
                a1[4] = v35;
                a1[5] = v34;
                a1[6] = v39;
                *(a1 + 7) = v42;
                if (sub_262377010(v25, *a1, **a3, *a3[1]))
                {
                  v43 = *a1;
                  *a1 = v25;
                  a1[1] = v35;
                  *(a1 + 3) = v43;
                  v44 = a1[2];
                  a1[2] = v34;
                  a1[5] = v44;
                }
              }
            }
          }

          return 1;
        }

        goto LABEL_37;
      }

      sub_262376468(a1, (a1 + 3), (a1 + 6), (a2 - 3), a3);
      return 1;
    }

    v45 = **a3;
    v46 = a1[3];
    v47 = *a3[1];
    v48 = vmul_f32(vsub_f32(*v46, v45), v47);
    v49 = *a1;
    v50 = **a1;
    v51 = vmul_f32(v47, vsub_f32(v50, v45));
    v52 = vadd_f32(vzip1_s32(v48, v51), vzip2_s32(v48, v51));
    v53 = v52.f32[0] < v52.f32[1];
    if (v52.f32[0] == v52.f32[1])
    {
      v53 = v46[1].f32[0] < v49[1].f32[0];
    }

    if (!v53)
    {
      v89 = *(a2 - 3);
      v90 = vmul_f32(v47, vsub_f32(*v89, v45));
      v91 = vadd_f32(v90, vdup_lane_s32(v90, 1));
      if (vceq_f32(v91, v52).u8[0])
      {
        if (v89[1].f32[0] >= v46[1].f32[0])
        {
          return 1;
        }
      }

      else if ((vcgt_f32(v52, v91).u32[0] & 1) == 0)
      {
        return 1;
      }

      a1[3] = v89;
      *(a2 - 3) = v46;
      v97 = a1[4];
      a1[4] = *(a2 - 2);
      *(a2 - 2) = v97;
      v98 = a1[5];
      a1[5] = *(a2 - 1);
      *(a2 - 1) = v98;
      v99 = a1[3];
      v100 = a3[1];
      v101 = **a3;
      v102 = vmul_f32(vsub_f32(*v99, v101), *v100);
      v103 = *a1;
      v104 = vmul_f32(*v100, vsub_f32(**a1, v101));
      v105 = vadd_f32(vzip1_s32(v102, v104), vzip2_s32(v102, v104));
      v106 = v105.f32[0] < v105.f32[1];
      if (v105.f32[0] == v105.f32[1])
      {
        v106 = v99[1].f32[0] < v103[1].f32[0];
      }

      if (v106)
      {
        *a1 = v99;
        a1[3] = v103;
        v107 = *(a1 + 1);
        *(a1 + 1) = *(a1 + 2);
        *(a1 + 2) = v107;
      }

      return 1;
    }

    v54 = *(a2 - 3);
    v55 = vmul_f32(v47, vsub_f32(*v54, v45));
    v56 = vadd_f32(v55, vdup_lane_s32(v55, 1));
    if (vceq_f32(v56, v52).u8[0])
    {
      if (v54[1].f32[0] >= v46[1].f32[0])
      {
LABEL_32:
        *a1 = v46;
        a1[3] = v49;
        v57 = *(a1 + 1);
        *(a1 + 1) = *(a1 + 2);
        *(a1 + 2) = v57;
        v58 = *(a2 - 3);
        *&v57 = **a3;
        v59 = *a3[1];
        v60 = vmul_f32(vsub_f32(*v58, *&v57), v59);
        v61 = vmul_f32(vsub_f32(v50, *&v57), v59);
        v62 = vadd_f32(vzip1_s32(v60, v61), vzip2_s32(v60, v61));
        v63 = v62.f32[0] < v62.f32[1];
        if (v62.f32[0] == v62.f32[1])
        {
          v63 = v58[1].f32[0] < v49[1].f32[0];
        }

        if (!v63)
        {
          return 1;
        }

        a1[3] = v58;
        *(a2 - 3) = v49;
        v64 = a1[4];
        a1[4] = *(a2 - 2);
        *(a2 - 2) = v64;
        v65 = a1[5];
        a1[5] = *(a2 - 1);
        goto LABEL_58;
      }
    }

    else if ((vcgt_f32(v52, v56).u8[0] & 1) == 0)
    {
      goto LABEL_32;
    }

    *a1 = v54;
    *(a2 - 3) = v49;
LABEL_57:
    v96 = a1[1];
    a1[1] = *(a2 - 2);
    *(a2 - 2) = v96;
    v65 = a1[2];
    a1[2] = *(a2 - 1);
LABEL_58:
    *(a2 - 1) = v65;
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 3);
    v8 = a3[1];
    v9 = **a3;
    v10 = vmul_f32(vsub_f32(*v7, v9), *v8);
    v11 = *a1;
    v12 = vmul_f32(*v8, vsub_f32(**a1, v9));
    v13 = vadd_f32(vzip1_s32(v10, v12), vzip2_s32(v10, v12));
    v14 = v13.f32[0] < v13.f32[1];
    if (v13.f32[0] == v13.f32[1])
    {
      v14 = v7[1].f32[0] < v11[1].f32[0];
    }

    if (!v14)
    {
      return 1;
    }

    *a1 = v7;
    *(a2 - 3) = v11;
    goto LABEL_57;
  }

LABEL_37:
  v66 = a1 + 6;
  v67 = **a3;
  v68 = a1[3];
  v69 = *a3[1];
  v70 = vmul_f32(vsub_f32(*v68, v67), v69);
  v71 = *a1;
  v72 = **a1;
  v73 = vmul_f32(v69, vsub_f32(v72, v67));
  v74 = vadd_f32(vzip1_s32(v70, v73), vzip2_s32(v70, v73));
  v75 = v74.f32[0] < v74.f32[1];
  if (v74.f32[0] == v74.f32[1])
  {
    v75 = v68[1].f32[0] < v71[1].f32[0];
  }

  if (v75)
  {
    v76 = *v66;
    v77 = **v66;
    v78 = vmul_f32(v69, vsub_f32(v77, v67));
    v79 = vadd_f32(v78, vdup_lane_s32(v78, 1));
    if (vceq_f32(v79, v74).u8[0])
    {
      if (v76[1].f32[0] >= v68[1].f32[0])
      {
LABEL_43:
        *a1 = v68;
        v81 = a1[1];
        v80 = a1[2];
        v82 = *(a1 + 2);
        a1[3] = v71;
        a1[4] = v81;
        *(a1 + 1) = v82;
        a1[5] = v80;
        *&v82 = **a3;
        v83 = *a3[1];
        v84 = vmul_f32(vsub_f32(v77, *&v82), v83);
        v85 = vmul_f32(vsub_f32(v72, *&v82), v83);
        v86 = vadd_f32(vzip1_s32(v84, v85), vzip2_s32(v84, v85));
        v87 = v86.f32[0] < v86.f32[1];
        if (v86.f32[0] == v86.f32[1])
        {
          v87 = v76[1].f32[0] < v71[1].f32[0];
        }

        if (v87)
        {
          a1[3] = v76;
          v88 = *(a1 + 7);
          a1[6] = v71;
          a1[7] = v81;
          *(a1 + 2) = v88;
          a1[8] = v80;
        }

        goto LABEL_73;
      }
    }

    else if ((vcgt_f32(v74, v79).u8[0] & 1) == 0)
    {
      goto LABEL_43;
    }

    *a1 = v76;
    a1[6] = v71;
    v108 = *(a1 + 1);
    *(a1 + 1) = *(a1 + 7);
    *(a1 + 7) = v108;
    goto LABEL_73;
  }

  v92 = *v66;
  v93 = **v66;
  v94 = vmul_f32(v69, vsub_f32(v93, v67));
  v95 = vadd_f32(v94, vdup_lane_s32(v94, 1));
  if (vceq_f32(v95, v74).u8[0])
  {
    if (v92[1].f32[0] >= v68[1].f32[0])
    {
      goto LABEL_73;
    }
  }

  else if ((vcgt_f32(v74, v95).u8[0] & 1) == 0)
  {
    goto LABEL_73;
  }

  v110 = a1[7];
  v109 = a1[8];
  v111 = *(a1 + 2);
  a1[3] = v92;
  a1[4] = v110;
  a1[5] = v109;
  a1[6] = v68;
  *(a1 + 7) = v111;
  *&v111 = **a3;
  v112 = *a3[1];
  v113 = vmul_f32(vsub_f32(v93, *&v111), v112);
  v114 = vmul_f32(vsub_f32(v72, *&v111), v112);
  v115 = vadd_f32(vzip1_s32(v113, v114), vzip2_s32(v113, v114));
  v116 = v115.f32[0] < v115.f32[1];
  if (v115.f32[0] == v115.f32[1])
  {
    v116 = v92[1].f32[0] < v71[1].f32[0];
  }

  if (v116)
  {
    v117 = *(a1 + 1);
    *a1 = v92;
    a1[1] = v110;
    a1[2] = v109;
    a1[3] = v71;
    *(a1 + 2) = v117;
  }

LABEL_73:
  v118 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v119 = 0;
  v120 = 0;
  while (1)
  {
    v121 = a3[1];
    v122 = **a3;
    v123 = *v118;
    v124 = vmul_f32(vsub_f32(**v118, v122), *v121);
    v125 = *v66;
    v126 = vmul_f32(*v121, vsub_f32(*v125, v122));
    v127 = vadd_f32(vzip1_s32(v124, v126), vzip2_s32(v124, v126));
    v128 = v127.f32[0] < v127.f32[1];
    if (v127.f32[0] == v127.f32[1])
    {
      v128 = v123[1].f32[0] < v125[1].f32[0];
    }

    if (v128)
    {
      v129 = *(v118 + 1);
      *v118 = 0;
      v118[1] = 0;
      v130 = v119;
      v118[2] = 0;
      while (1)
      {
        v131 = a1 + v130;
        *(v131 + 72) = *(a1 + v130 + 48);
        *(v131 + 11) = *(a1 + v130 + 64);
        *(v131 + 7) = 0;
        *(v131 + 8) = 0;
        *(v131 + 6) = 0;
        if (v130 == -48)
        {
          break;
        }

        v132 = a3[1];
        v133 = **a3;
        v134 = vmul_f32(vsub_f32(*v123, v133), *v132);
        v135 = *(v131 + 3);
        v136 = vmul_f32(*v132, vsub_f32(*v135, v133));
        v137 = vadd_f32(vzip1_s32(v134, v136), vzip2_s32(v134, v136));
        v138 = v137.f32[0] < v137.f32[1];
        if (v137.f32[0] == v137.f32[1])
        {
          v138 = v123[1].f32[0] < v135[1].f32[0];
        }

        if (!v138)
        {
          v139 = (a1 + v130 + 48);
          goto LABEL_87;
        }

        v130 -= 24;
      }

      v139 = a1;
LABEL_87:
      v140 = *v139;
      if (*v139)
      {
        v139[1] = v140;
        v142 = v129;
        operator delete(v140);
        v129 = v142;
      }

      *v139 = v123;
      *(v139 + 1) = v129;
      if (++v120 == 8)
      {
        return v118 + 3 == a2;
      }
    }

    v66 = v118;
    v119 += 24;
    v118 += 3;
    if (v118 == a2)
    {
      return 1;
    }
  }
}

BOOL sub_262377010(float32x2_t *a1, float32x2_t *a2, float32x2_t a3, float32x2_t a4)
{
  v4 = vmul_f32(vsub_f32(*a1, a3), a4);
  v5 = vmul_f32(vsub_f32(*a2, a3), a4);
  v6 = vadd_f32(vzip1_s32(v4, v5), vzip2_s32(v4, v5));
  v7 = v6.f32[0] < v6.f32[1];
  if (v6.f32[0] == v6.f32[1])
  {
    return a1[1].f32[0] < a2[1].f32[0];
  }

  return v7;
}

uint64_t *sub_262377054(float *a1, int a2, _DWORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_262377468(void **a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v4 = v3;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v42, v47, 16);
  if (v6)
  {
    v7 = 0;
    v8 = *v43;
    v9 = v4;
    do
    {
      v10 = 0;
      do
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v42 + 1) + 8 * v10);
        v41 = sub_26223FCEC(v11).n128_u64[0];
        v13 = v12;
        objc_msgSend_quad(v11, v14, v15);
        v40 = v16;
        objc_msgSend_quad(v11, v17, v18);
        v39 = v20;
        v21 = vsub_f32(vext_s8(v13, v41, 4uLL), vext_s8(v41, v13, 4uLL));
        v22 = vmul_f32(v21, v21);
        v22.i32[0] = vadd_f32(v22, vdup_lane_s32(v22, 1)).u32[0];
        v23 = vrsqrte_f32(v22.u32[0]);
        v24 = vmul_f32(v23, vrsqrts_f32(v22.u32[0], vmul_f32(v23, v23)));
        *&v25 = vmul_n_f32(v21, vmul_f32(v24, vrsqrts_f32(v22.u32[0], vmul_f32(v24, v24))).f32[0]);
        v38 = v25;
        v26 = *&v25 < 0.0;
        if (v11)
        {
          objc_copyStruct(&dest, (v11 + 208), 16, 1, 0);
          v27 = dest;
        }

        else
        {
          v27 = 0;
        }

        HIDWORD(v28) = HIDWORD(v38);
        *&v28 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v26), 0x1FuLL)), vneg_f32(*&v38), *&v38);
        *(&v28 + 2) = -(COERCE_FLOAT(vmul_f32(v41, *&v28).i32[1]) + (*&v28 * v41.f32[0]));
        v29 = a1[2];
        if (v7 >= v29)
        {
          v30 = *a1;
          v31 = v7 - *a1;
          v32 = 0xAAAAAAAAAAAAAAABLL * (v31 >> 4) + 1;
          if (v32 > 0x555555555555555)
          {
            sub_2621CBEB0();
          }

          v33 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v30) >> 4);
          if (2 * v33 > v32)
          {
            v32 = 2 * v33;
          }

          if (v33 >= 0x2AAAAAAAAAAAAAALL)
          {
            v34 = 0x555555555555555;
          }

          else
          {
            v34 = v32;
          }

          if (v34)
          {
            sub_2623780D4(v34);
          }

          v35 = 16 * (v31 >> 4);
          *v35 = v41;
          *(v35 + 8) = v13;
          *(v35 + 16) = v39;
          *(v35 + 20) = v40;
          *(v35 + 24) = v27;
          *(v35 + 32) = v28;
          v7 = (v35 + 48);
          v36 = (v35 - v31);
          memcpy((v35 - v31), v30, v31);
          *a1 = v36;
          a1[1] = v7;
          a1[2] = 0;
          if (v30)
          {
            operator delete(v30);
          }

          v4 = v9;
        }

        else
        {
          *v7 = v41;
          v7[1] = v13;
          v7[2].i32[0] = v39;
          v7[2].i32[1] = v40;
          v7[3] = v27;
          *v7[4].f32 = v28;
          v7 += 6;
        }

        a1[1] = v7;
        ++v10;
      }

      while (v6 != v10);
      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v19, &v42, v47, 16);
      v6 = v37;
    }

    while (v37);
  }
}

uint64_t sub_2623777AC(void *a1, int a2, int a3)
{
  v3 = a1[1];
  if (v3)
  {
    v4 = a3 ^ a2;
    v5 = vcnt_s8(v3);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a3 ^ a2;
      if (*&v3 <= v4)
      {
        v6 = v4 % *&v3;
      }
    }

    else
    {
      v6 = (*&v3 - 1) & v4;
    }

    v7 = *(*a1 + 8 * v6);
    if (v7)
    {
      v8 = *v7;
      if (v8)
      {
        result = 1;
        do
        {
          v10 = v8[1];
          if (v10 == v4)
          {
            if (*(v8 + 4) == a2 && *(v8 + 5) == a3)
            {
              return result;
            }
          }

          else
          {
            if (v5.u32[0] > 1uLL)
            {
              if (v10 >= *&v3)
              {
                v10 %= *&v3;
              }
            }

            else
            {
              v10 &= *&v3 - 1;
            }

            if (v10 != v6)
            {
              return 0;
            }
          }

          v8 = *v8;
        }

        while (v8);
      }
    }
  }

  return 0;
}

uint64_t *sub_262377868(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 ^ *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 ^ v2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2 || *(v9 + 5) != v3)
  {
    goto LABEL_21;
  }

  return v9 + 3;
}

uint64_t *sub_262377A9C(float *a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 ^ *a2;
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 ^ v2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2 || *(v9 + 5) != v3)
  {
    goto LABEL_21;
  }

  return v9 + 3;
}

void sub_262377EB0(uint64_t a1, const char *a2, int a3, double a4)
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 256), a2, a2);
  v8 = 0;
  v32 = v5;
  do
  {
    objc_msgSend_quad(v5, v6, v7);
    DWORD2(src) = v9;
    DWORD2(v35) = v10;
    DWORD2(v36) = v11;
    *&src = v12;
    *&v35 = v13;
    DWORD2(v37) = v14;
    *&v36 = v15;
    *&v37 = v16;
    v33[v8] = *(&src + v8 * 16);
    ++v8;
    v5 = v32;
  }

  while (v8 != 4);
  objc_msgSend_quad(v32, v6, v7);
  if (a3)
  {
    v29 = v20;
    objc_msgSend_quad(v32, v17, v18);
    *&v21 = a4;
    *(&v21 + 1) = vextq_s8(v29, v29, 8uLL).u64[0];
    v23 = vextq_s8(v22, v22, 8uLL).u64[0];
    *&v24 = a4;
    *(&v24 + 1) = v23;
    v25 = v33[0];
    v26 = v33[3];
  }

  else
  {
    v30 = v19;
    objc_msgSend_quad(v32, v17, v18);
    *&v26 = a4;
    *&v25 = a4;
    *(&v25 + 1) = vextq_s8(v30, v30, 8uLL).u64[0];
    *(&v26 + 1) = vextq_s8(v27, v27, 8uLL).u64[0];
    v21 = v33[1];
    v24 = v33[2];
  }

  src = v25;
  v35 = v21;
  v36 = v24;
  v37 = v26;
  v28 = v32;
  if (v32)
  {
    objc_copyStruct(v32 + 272, &src, 64, 1, 0);
    v28 = v32;
  }
}

uint64_t sub_262378020(uint64_t a1, unint64_t a2, int a3, int a4)
{
  if (a2)
  {
    v4 = a4 ^ a3;
    v5 = vcnt_s8(a2);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a4 ^ a3;
      if (v4 >= a2)
      {
        v6 = v4 % a2;
      }
    }

    else
    {
      v6 = (a2 - 1) & v4;
    }

    v7 = *(a1 + 8 * v6);
    if (v7)
    {
      v8 = *v7;
      if (v8)
      {
        result = 1;
        do
        {
          v10 = v8[1];
          if (v10 == v4)
          {
            if (*(v8 + 4) == a3 && *(v8 + 5) == a4)
            {
              return result;
            }
          }

          else
          {
            if (v5.u32[0] > 1uLL)
            {
              if (v10 >= a2)
              {
                v10 %= a2;
              }
            }

            else
            {
              v10 &= a2 - 1;
            }

            if (v10 != v6)
            {
              return 0;
            }
          }

          v8 = *v8;
        }

        while (v8);
      }
    }
  }

  return 0;
}

void sub_2623780D4(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  sub_2621C6A34();
}

void sub_26237812C(uint64_t a1, const char *a2, __n128 a3, __n128 a4)
{
  v25 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 256), a2, a2);
  objc_msgSend_quad(v25, v4, v5);
  v22 = v6;
  objc_msgSend_quad(v25, v7, v8);
  v21 = v9;
  objc_msgSend_quad(v25, v10, v11);
  v20 = v12;
  objc_msgSend_quad(v25, v13, v14);
  v15 = a3;
  *&v16 = a3.n128_u64[0];
  *(&v16 + 1) = vextq_s8(v22, v22, 8uLL).u64[0];
  v17 = a4;
  *&v18 = a4.n128_u64[0];
  *(&v18 + 1) = vextq_s8(v21, v21, 8uLL).u64[0];
  v17.n128_u32[2] = v20;
  v15.n128_u32[2] = v19;
  src[0] = v16;
  src[1] = v18;
  src[2] = v17;
  src[3] = v15;
  if (v25)
  {
    objc_copyStruct(v25 + 272, src, 64, 1, 0);
  }
}

void sub_262378224(uint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  v7 = *(a2 + 48 * a3);
  v20 = *(a2 + 48 * a4);
  v21 = v7;
  v8 = v7;
  v9 = v20;
  sub_2621DCD34(&v19, &v21, &v20);
  v11 = v19;
  v12.n128_u32[0] = *(a1 + 72);
  if (*v19 >= v12.n128_f32[0] && v19[3] >= v12.n128_f32[0])
  {
    v14 = vmla_f32(vmul_f32(*(&v9 + 8), 0x3F0000003F000000), 0x3F0000003F000000, *&v8);
    v13 = vmla_f32(vmul_f32(*&v9, 0x3F0000003F000000), 0x3F0000003F000000, *(&v8 + 8));
    v12.n128_u64[0] = v14;
    v10.n128_u64[0] = v13;
    sub_26237812C(a1, a3, v12, v10);
  }

  else
  {
    v13 = vmla_f32(vmul_f32(*&v9, 0x3F0000003F000000), 0x3F0000003F000000, *&v8);
    v14 = vmla_f32(vmul_f32(*(&v9 + 8), 0x3F0000003F000000), 0x3F0000003F000000, *(&v8 + 8));
    v12.n128_u64[0] = v13;
    v10.n128_u64[0] = v14;
    sub_26237812C(a1, a3, v12, v10);
  }

  v15.n128_u64[0] = v13;
  v16.n128_u64[0] = v14;
  sub_26237812C(a1, a4, v15, v16);
  v17 = a3;
  v18 = 0;
  sub_2623787A8((a1 + 472), &v17);
  v17 = a3;
  v18 = 1;
  sub_2623787A8((a1 + 472), &v17);
  v17 = a4;
  v18 = 0;
  sub_2623787A8((a1 + 472), &v17);
  v17 = a4;
  v18 = 1;
  sub_2623787A8((a1 + 472), &v17);

  operator delete(v11);
}

void sub_2623783A4(uint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  v7 = *(a2 + 48 * a3);
  v31 = *(a2 + 48 * a4);
  v32 = v7;
  v8 = v7;
  v29 = *(&v31 + 8);
  v9 = v31;
  v30 = v31;
  v10 = vmla_f32(vmul_f32(vmla_f32(vmul_f32(*(&v31 + 8), 0x3F0000003F000000), 0x3F0000003F000000, *&v31), 0x3F0000003F000000), 0x3F0000003F000000, vmla_f32(vmul_f32(*(&v7 + 8), 0x3F0000003F000000), 0x3F0000003F000000, *&v7));
  sub_2621DCD34(&v28, &v32, &v31);
  v11 = v28;
  v12 = *(a1 + 72);
  if (*v28 >= v12)
  {
    v13 = &v29;
    v14 = v8;
    if (v28[1] >= v12)
    {
      if (v28[2] < v12)
      {
        v13 = &v30;
      }

      v14 = *(&v8 + 8);
    }
  }

  else
  {
    v13 = &v30;
    v14 = v8;
  }

  v15 = vmla_f32(vmul_f32(*v13, 0x3F0000003F000000), 0x3F0000003F000000, v14);
  v16 = vsub_f32(v15, v10);
  v17 = vaddv_f32(vmul_f32(v16, v16));
  if (v17 < 0.000001)
  {
    v17 = 0.000001;
  }

  v18 = vmla_n_f32(v10, v16, vaddv_f32(vmul_f32(vsub_f32(*(&v8 + 8), v10), v16)) / v17);
  v19 = vmla_n_f32(v10, v16, vaddv_f32(vmul_f32(vsub_f32(v29, v10), v16)) / v17);
  if (*v28 >= v12)
  {
    v22 = vmla_n_f32(v10, v16, vaddv_f32(vmul_f32(vsub_f32(v9, v10), v16)) / v17);
    if (v28[1] >= v12)
    {
      v23 = vmla_n_f32(v10, v16, vaddv_f32(vmul_f32(vsub_f32(*&v8, v10), v16)) / v17);
      if (v28[2] >= v12)
      {
        v26 = a3;
        v27 = 1;
        sub_2623787A8((a1 + 472), &v26);
        v26 = a4;
        v27 = 1;
        sub_2623787A8((a1 + 472), &v26);
        v19 = v15;
      }

      else
      {
        v26 = a3;
        v27 = 1;
        sub_2623787A8((a1 + 472), &v26);
        v26 = a4;
        v27 = 0;
        sub_2623787A8((a1 + 472), &v26);
        v22 = v15;
      }

      v18 = v15;
      v15 = v23;
    }

    else
    {
      v26 = a3;
      v27 = 0;
      sub_2623787A8((a1 + 472), &v26);
      v26 = a4;
      v27 = 1;
      sub_2623787A8((a1 + 472), &v26);
      v19 = v15;
    }
  }

  else
  {
    v26 = a3;
    v27 = 0;
    sub_2623787A8((a1 + 472), &v26);
    v26 = a4;
    v27 = 0;
    sub_2623787A8((a1 + 472), &v26);
    v22 = v15;
  }

  v20.n128_u64[0] = v15;
  v21.n128_u64[0] = v18;
  sub_26237812C(a1, a3, v20, v21);
  v24.n128_u64[0] = v22;
  v25.n128_u64[0] = v19;
  sub_26237812C(a1, a4, v24, v25);

  operator delete(v11);
}
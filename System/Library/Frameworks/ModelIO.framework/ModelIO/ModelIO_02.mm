MDLMesh *sub_239E78750(uint64_t *a1)
{
  v518[1] = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    sub_239E78EC8(a1[10]);
    v515 = 0;
    v516 = 0;
    v517 = 0;
    __p = 0;
    v513 = 0;
    v514 = 0;
    sub_239E7926C(*a1, &v515);
    sub_239E79370(*a1, &__p);
    v2 = objc_alloc_init(MDLMeshBufferAllocatorDefault);
    v4 = __p;
    v3 = v513;
    v509 = v2;
    v5 = objc_alloc(MEMORY[0x277CBEA90]);
    v508 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v5, v6, __p, v3 - v4, v10, v11, v12, v13, 0, v7, v8, v9);
    v511 = objc_msgSend_newBufferWithData_type_(v2, v14, v508, 2, v19, v20, v21, v22, v15, v16, v17, v18);
    if (objc_msgSend_conformsToProtocol_(v511, v23, &unk_284D24D98, v24, v29, v30, v31, v32, v25, v26, v27, v28))
    {
      v41 = v511;
      v52 = objc_msgSend_stringByAppendingString_(@"Mesh", v42, @"-Indices", v43, v48, v49, v50, v51, v44, v45, v46, v47);
      objc_msgSend_setName_(v41, v53, v52, v54, v59, v60, v61, v62, v55, v56, v57, v58);
    }

    v510 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v33, v515, v516 - v515, v37, v38, v39, v40, 0, v34, v35, v36);
    v63 = objc_opt_new();
    v75 = objc_msgSend_attributes(v63, v64, v65, v66, v71, v72, v73, v74, v67, v68, v69, v70);
    v86 = objc_msgSend_objectAtIndexedSubscript_(v75, v76, 0, v77, v82, v83, v84, v85, v78, v79, v80, v81);
    objc_msgSend_setName_(v86, v87, @"position", v88, v93, v94, v95, v96, v89, v90, v91, v92);

    v108 = objc_msgSend_attributes(v63, v97, v98, v99, v104, v105, v106, v107, v100, v101, v102, v103);
    v119 = objc_msgSend_objectAtIndexedSubscript_(v108, v109, 0, v110, v115, v116, v117, v118, v111, v112, v113, v114);
    objc_msgSend_setFormat_(v119, v120, 786435, v121, v126, v127, v128, v129, v122, v123, v124, v125);

    v141 = objc_msgSend_attributes(v63, v130, v131, v132, v137, v138, v139, v140, v133, v134, v135, v136);
    v152 = objc_msgSend_objectAtIndexedSubscript_(v141, v142, 0, v143, v148, v149, v150, v151, v144, v145, v146, v147);
    objc_msgSend_setOffset_(v152, v153, 0, v154, v159, v160, v161, v162, v155, v156, v157, v158);

    v174 = objc_msgSend_attributes(v63, v163, v164, v165, v170, v171, v172, v173, v166, v167, v168, v169);
    v185 = objc_msgSend_objectAtIndexedSubscript_(v174, v175, 0, v176, v181, v182, v183, v184, v177, v178, v179, v180);
    objc_msgSend_setBufferIndex_(v185, v186, 0, v187, v192, v193, v194, v195, v188, v189, v190, v191);

    v207 = objc_msgSend_attributes(v63, v196, v197, v198, v203, v204, v205, v206, v199, v200, v201, v202);
    v218 = objc_msgSend_objectAtIndexedSubscript_(v207, v208, 1, v209, v214, v215, v216, v217, v210, v211, v212, v213);
    objc_msgSend_setName_(v218, v219, @"normal", v220, v225, v226, v227, v228, v221, v222, v223, v224);

    v240 = objc_msgSend_attributes(v63, v229, v230, v231, v236, v237, v238, v239, v232, v233, v234, v235);
    v251 = objc_msgSend_objectAtIndexedSubscript_(v240, v241, 1, v242, v247, v248, v249, v250, v243, v244, v245, v246);
    objc_msgSend_setFormat_(v251, v252, 786435, v253, v258, v259, v260, v261, v254, v255, v256, v257);

    v273 = objc_msgSend_attributes(v63, v262, v263, v264, v269, v270, v271, v272, v265, v266, v267, v268);
    v284 = objc_msgSend_objectAtIndexedSubscript_(v273, v274, 1, v275, v280, v281, v282, v283, v276, v277, v278, v279);
    objc_msgSend_setOffset_(v284, v285, 12, v286, v291, v292, v293, v294, v287, v288, v289, v290);

    v306 = objc_msgSend_attributes(v63, v295, v296, v297, v302, v303, v304, v305, v298, v299, v300, v301);
    v317 = objc_msgSend_objectAtIndexedSubscript_(v306, v307, 1, v308, v313, v314, v315, v316, v309, v310, v311, v312);
    objc_msgSend_setBufferIndex_(v317, v318, 0, v319, v324, v325, v326, v327, v320, v321, v322, v323);

    v339 = objc_msgSend_layouts(v63, v328, v329, v330, v335, v336, v337, v338, v331, v332, v333, v334);
    v350 = objc_msgSend_objectAtIndexedSubscript_(v339, v340, 0, v341, v346, v347, v348, v349, v342, v343, v344, v345);
    objc_msgSend_setStride_(v350, v351, 24, v352, v357, v358, v359, v360, v353, v354, v355, v356);

    v370 = objc_msgSend_newBufferWithData_type_(v2, v361, v510, 1, v366, v367, v368, v369, v362, v363, v364, v365);
    if (objc_msgSend_conformsToProtocol_(v370, v371, &unk_284D24D98, v372, v377, v378, v379, v380, v373, v374, v375, v376))
    {
      v391 = v370;
      v402 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v392, @"%@-%@", v393, v398, v399, v400, v401, v394, v395, v396, v397, @"Mesh", @"position");
      objc_msgSend_setName_(v391, v403, v402, v404, v409, v410, v411, v412, v405, v406, v407, v408);
    }

    if ((atomic_load_explicit(&qword_27DF90E18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF90E18))
    {
      v497 = [MDLMaterial alloc];
      v498 = objc_opt_new();
      qword_27DF90E10 = objc_msgSend_initWithName_scatteringFunction_(v497, v499, @"Octree material", v498, v504, v505, v506, v507, v500, v501, v502, v503);

      __cxa_guard_release(&qword_27DF90E18);
    }

    v413 = objc_msgSend_propertyWithSemantic_(qword_27DF90E10, v381, 2, v382, v387, v388, v389, v390, v383, v384, v385, v386);
    v414.n128_u64[0] = 0;
    objc_msgSend_setFloatValue_(v413, v415, v416, v417, v414, v422, v423, v424, v418, v419, v420, v421);
    v435 = objc_msgSend_propertyWithSemantic_(qword_27DF90E10, v425, 6, v426, v431, v432, v433, v434, v427, v428, v429, v430);

    v436.n128_u32[0] = 1.0;
    objc_msgSend_setFloatValue_(v435, v437, v438, v439, v436, v444, v445, v446, v440, v441, v442, v443);
    v447 = [MDLSubmesh alloc];
    v454 = objc_msgSend_initWithIndexBuffer_indexCount_indexType_geometryType_material_(v447, v448, v511, (v513 - __p) >> 2, v450, v451, v452, v453, 32, 2, qword_27DF90E10, v449);
    v456 = v515;
    v455 = v516;
    v457 = [MDLMesh alloc];
    v518[0] = v454;
    v467 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v458, v518, 1, v463, v464, v465, v466, v459, v460, v461, v462);
    v475 = objc_msgSend_initWithVertexBuffer_vertexCount_descriptor_submeshes_(v457, v468, v370, ((v455 - v456) >> 2) / 6uLL, v471, v472, v473, v474, v63, v467, v469, v470);

    objc_msgSend_setName_(v475, v476, @"Mesh", v477, v482, v483, v484, v485, v478, v479, v480, v481);
    v486.n128_u32[0] = 1045220557;
    objc_msgSend_addNormalsWithAttributeNamed_creaseThreshold_(v475, v487, @"normal", v488, v486, v493, v494, v495, v489, v490, v491, v492);

    if (__p)
    {
      v513 = __p;
      operator delete(__p);
    }

    if (v515)
    {
      v516 = v515;
      operator delete(v515);
    }
  }

  else
  {
    v475 = 0;
  }

  return v475;
}

void sub_239E78CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  __cxa_guard_abort(&qword_27DF90E18);

  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void sub_239E78EC8(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  for (i = *(*(a1 + 1312) + 184); i; i = *i)
  {
    v3 = *(a1 + 1312);
    v6 = *(v3 + 24);
    v4 = v3 + 24;
    v5 = v6;
    if (v6)
    {
      v7 = i[2];
      v8 = v4;
      do
      {
        v9 = *(v5 + 32);
        v10 = v9 >= v7;
        v11 = v9 < v7;
        if (v10)
        {
          v8 = v5;
        }

        v5 = *(v5 + 8 * v11);
      }

      while (v5);
      if (v8 != v4 && v7 >= *(v8 + 32))
      {
        v12 = *(v8 + 40);
        v13 = 0;
        v14 = 0;
        memset(v54, 0, sizeof(v54));
        do
        {
          v15 = sub_239E794A0(a1, v12, v13);
          *(v54 + v13) = v15;
          v14 |= (v15 < 0.0) << v13++;
        }

        while (v13 != 8);
        if (v14 && v14 != 255)
        {
          v17 = 0;
          memset(v53, 0, sizeof(v53));
          memset(v52, 0, sizeof(v52));
          v50 = 0uLL;
          v49 = 0u;
          v18 = 12;
          v19 = &byte_239F9B421;
          do
          {
            v20 = *(v19 - 1);
            v21 = v14 >> *v19;
            if ((((v14 >> v20) | v21) & 1) != 0 && (((v14 >> v20) & 1) == 0 || (v21 & 1) == 0))
            {
              v16.i32[0] = 0;
              v23 = *(v12 + 16);
              v22 = *(v12 + 32);
              v24.i64[0] = 0x3F0000003F000000;
              v24.i64[1] = 0x3F0000003F000000;
              v25 = vmulq_f32(vaddq_f32(v23, v22), v24);
              v23.f32[0] = vsubq_f32(v23, v22).f32[0];
              v26 = 0.5 * v23.f32[0];
              v22.i32[0] = v20 & 4;
              *v27.i32 = *v25.i32 + (0.5 * v23.f32[0]);
              v27.i32[1] = v25.i32[1];
              v27.i64[1] = v25.i64[1];
              *v28.i32 = *v25.i32 - (0.5 * v23.f32[0]);
              v28.i32[1] = v25.i32[1];
              v28.i64[1] = v25.i64[1];
              v29 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v22, v16), 0), v28, v27);
              v30 = -(v23.f32[0] * 0.5);
              if ((*(v19 - 1) & 2) != 0)
              {
                v31 = v26;
              }

              else
              {
                v31 = v30;
              }

              v29.f32[1] = v29.f32[1] + v31;
              if (*(v19 - 1))
              {
                *v25.i32 = v26;
              }

              else
              {
                *v25.i32 = v30;
              }

              v29.f32[2] = v29.f32[2] + *v25.i32;
              v25.i32[0] = *v19 & 4;
              v32 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v25, v16), 0), v28, v27);
              if ((*v19 & 2) != 0)
              {
                v33 = v26;
              }

              else
              {
                v33 = v30;
              }

              v32.f32[1] = v32.f32[1] + v33;
              if (*v19)
              {
                v30 = v26;
              }

              v32.f32[2] = v32.f32[2] + v30;
              v34 = vmlaq_n_f32(v29, vsubq_f32(v32, v29), *(v54 + *(v19 - 1)) / (*(v54 + *(v19 - 1)) - *(v54 + *v19)));
              v35 = v34;
              v35.i32[3] = 0;
              v48 = v35;
              v36 = (*(*(a1 + 1312) + 40) + 224 * *(v12 + 144));
              *v37.f32 = sub_239F53B28(v36, v34);
              v38 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36[4], v37.f32[0]), v36[5], *v37.f32, 1), v36[6], v37, 2);
              v39 = vmulq_f32(v38, v38);
              *&v40 = vaddv_f32(*v39.f32) + v39.f32[2];
              *v39.f32 = vrsqrte_f32(v40);
              *v16.i8 = vmul_f32(*v39.f32, *v39.f32);
              v41 = vmulq_n_f32(v38, vmul_f32(vrsqrts_f32(v40, *v16.i8), *v39.f32).f32[0]);
              v49 = vaddq_f32(v41, v49);
              v41.i32[3] = 0;
              v53[v17] = v48;
              v52[v17++] = v41;
            }

            v19 += 2;
            --v18;
          }

          while (v18);
          *v42.i64 = sub_239E71798(v53, v52, v17, &v51, &v50);
          v43 = *(v12 + 16);
          v44 = v42;
          v44.i32[3] = *(v12 + 32);
          v43.i32[3] = v42.i32[0];
          if (vmaxv_u16(vmovn_s32(vcgtq_f32(v44, v43))) & 1) != 0 || (v45 = vmovn_s32(vcgtq_f32(*(v12 + 32), v42)), (v45.i8[2]) || (v46 = v45.i8[4], v47 = v42, (v46))
          {
            v47 = vdivq_f32(v50, vdupq_laneq_s32(v50, 3));
            v47.i32[3] = v42.i32[3];
          }

          *(v12 + 224) = 1;
          *(v12 + 208) = v47;
          *(v12 + 225) = v14;
          *(v12 + 240) = v49;
        }
      }
    }
  }
}

void sub_239E7926C(uint64_t result, const void **a2)
{
  if (result)
  {
    if (*(result + 224))
    {
      goto LABEL_6;
    }

    for (i = 0; i != 64; i += 8)
    {
      sub_239E7926C(*(result + 48 + i), a2);
    }

    if (*(result + 224))
    {
LABEL_6:
      *(result + 256) = ((a2[1] - *a2) >> 2) / 6uLL;
      v5 = *(result + 208);
      sub_239E798A4(a2, &v5);
      v5 = *(result + 212);
      sub_239E798A4(a2, &v5);
      v5 = *(result + 216);
      sub_239E798A4(a2, &v5);
      v5 = *(result + 240);
      sub_239E798A4(a2, &v5);
      v5 = *(result + 244);
      sub_239E798A4(a2, &v5);
      v5 = *(result + 248);
      sub_239E798A4(a2, &v5);
    }
  }
}

void sub_239E79370(uint64_t result, const void **a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (result && (*(result + 224) & 1) == 0)
  {
    v3 = 0;
    v4 = result + 48;
    do
    {
      sub_239E79370(*(v4 + v3), a2);
      v3 += 8;
    }

    while (v3 != 64);
    v5 = &dword_239F9B440;
    v6 = 12;
    do
    {
      v7 = *(v4 + 8 * *(v5 - 1));
      *&v13[0] = *(v4 + 8 * *(v5 - 2));
      *(&v13[0] + 1) = v7;
      v8 = *v5;
      v5 += 3;
      sub_239E79E80(v13, v8, a2);
      --v6;
    }

    while (v6);
    for (i = 0; i != 6; ++i)
    {
      v10 = 0;
      memset(v13, 0, sizeof(v13));
      v11 = &unk_239F9B4C8 + 20 * i;
      v12 = *v11;
      do
      {
        *(v13 + v10) = *(v4 + 8 * *(&v13[-1] + v10));
        ++v10;
      }

      while (v10 != 4);
      sub_239E7A040(v13, *(v11 + 4), a2);
    }
  }
}

float sub_239E794A0(uint64_t a1, uint64_t a2, int a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v22.i32[2] = 0;
  v22.i64[0] = 0;
  v23 = 0;
  v24 = 0;
  v26 = 0.0;
  v25 = 0;
  v27 = *(a2 + 116);
  sub_239E761FC(a1, *(a2 + 8), &v22);
  v5 = 0;
  v6 = v22;
  do
  {
    v7 = vaddq_s32(*(a1 + 112 * a3 + 16 * v5), v6);
    v8 = v7.i16[0];
    if (v7.i32[0] < 0)
    {
      goto LABEL_16;
    }

    v9 = v7.i16[2];
    if (v7.i32[1] < 0)
    {
      goto LABEL_16;
    }

    if (v7.i32[2] < 0)
    {
      goto LABEL_16;
    }

    v10 = *(a1 + 1312);
    v11 = vmovn_s32(vcgtq_s32(v10[18], v7));
    if ((v11.i8[0] & 1) == 0)
    {
      goto LABEL_16;
    }

    if ((v11.i8[2] & 1) == 0)
    {
      goto LABEL_16;
    }

    if ((v11.i8[4] & 1) == 0)
    {
      goto LABEL_16;
    }

    v14 = v10[1].i64[1];
    v12 = &v10[1].i64[1];
    v13 = v14;
    if (!v14)
    {
      goto LABEL_16;
    }

    v15 = *(v12[15] + 8 * v7.u8[8]) | ((*(v12[12] + 8 * HIBYTE(v9)) | *(v12[15] + 8 * v7.u8[9]) | *(v12[9] + 8 * HIBYTE(v8))) << 24) | *(v12[12] + 8 * v9) | *(v12[9] + 8 * v8);
    v16 = v12;
    do
    {
      v17 = v13[4];
      v18 = v17 >= v15;
      v19 = v17 < v15;
      if (v18)
      {
        v16 = v13;
      }

      v13 = v13[v19];
    }

    while (v13);
    if (v16 != v12 && v15 >= v16[4])
    {
      *(&v23 + v5) = *(v16[5] + 116);
    }

    else
    {
LABEL_16:
      *(&v23 + v5) = 0;
    }

    ++v5;
  }

  while (v5 != 7);
  v20 = (*&v23 + ((*(&v23 + 1) - *&v23) * 0.5)) + (((*&v24 - (*&v23 + ((*(&v23 + 1) - *&v23) * 0.5))) + ((*(&v24 + 1) - *&v24) * 0.5)) * 0.5);
  return v20 + ((((*&v25 + ((*(&v25 + 1) - *&v25) * 0.5)) - v20) + (((v26 + ((v27 - v26) * 0.5)) - (*&v25 + ((*(&v25 + 1) - *&v25) * 0.5))) * 0.5)) * 0.5);
}

void sub_239E7967C(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_239E797B4();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_239E797E0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_239E7983C(exception, a1);
  __cxa_throw(exception, off_278B40278, MEMORY[0x277D825F0]);
}

std::logic_error *sub_239E7983C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_239E79870()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_239E798A4(const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_239E797B4();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_239E79984(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_239E79984(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239E799CC(uint64_t a1, uint64_t a2)
{
  *a1 = -1;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_239E7B5AC(a1 + 64, a2);
  sub_239ED981C(a1 + 96);
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 200) = 1065353216;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 1065353216;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 1065353216;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 1065353216;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 1065353216;
  return a1;
}

void sub_239E79A74(_Unwind_Exception *a1)
{
  sub_239E7B424(v1 + 64);
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 48) = v6;
    operator delete(v6);
  }

  sub_239E79AAC(v2, *v3);
  _Unwind_Resume(a1);
}

void sub_239E79AAC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_239E79AAC(a1, *a2);
    sub_239E79AAC(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_239E79B00(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_239E79B48(a1, a2);
  }

  else
  {
    sub_239E79CE8(v3, a2);
    result = v4 + 224;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_239E79B48(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x124924924924924)
  {
    sub_239E797B4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 5)) >= 0x92492492492492)
  {
    v6 = 0x124924924924924;
  }

  else
  {
    v6 = v3;
  }

  v13 = a1;
  if (v6)
  {
    sub_239E79E24(a1, v6);
  }

  __p = 0;
  v10 = 224 * v2;
  v12 = 0;
  sub_239E79CE8(224 * v2, a2);
  v11 = 224 * v2 + 224;
  sub_239E79D84(a1, &__p);
  v7 = a1[1];
  if (v11 != v10)
  {
    v11 = v11 - 224 * ((((v11 - v10 - 224) >> 5) * 0x2492492492492493uLL) >> 64) - 224;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_239E79C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_239E79CE8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 176) = 0u;
  v2 = 64;
  v3 = 176;
  do
  {
    v4 = (a1 + v2);
    *(v4 - 3) = *(a2 + v2 - 48);
    *v4 = *(a2 + v2);
    v5 = a1 + v3;
    *v5 = *(a2 + v3);
    result = *(a2 + v3 + 24);
    *(v5 + 24) = result;
    v2 += 16;
    v3 += 8;
  }

  while (v2 != 112);
  return result;
}

uint64_t *sub_239E79D84(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v5 = *result;
  v6 = result[1];
  v7 = v4 + *result - v6;
  if (v6 != *result)
  {
    result = (v4 + *result - v6);
    do
    {
      sub_239E79CE8(result, v5);
      v5 += 224;
      result = (v8 + 224);
    }

    while (v5 != v6);
    v5 = *v3;
  }

  a2[1] = v7;
  *v3 = v7;
  v3[1] = v5;
  a2[1] = v5;
  v9 = v3[1];
  v3[1] = a2[2];
  a2[2] = v9;
  v10 = v3[2];
  v3[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void sub_239E79E24(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x124924924924925)
  {
    operator new();
  }

  sub_239E79870();
}

void sub_239E79E80(void *result, int a2, const void **a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*result)
  {
    v4 = result[1];
    if (v4)
    {
      if (*(*result + 224) != 1 || (*(v4 + 224) & 1) == 0)
      {
        v6 = 0;
        v8 = &unk_239F9B540 + 48 * a2;
        do
        {
          v9 = 0;
          v23[0] = 0uLL;
          v10 = &v8[12 * v6];
          *&v22 = *v10;
          v11 = v23;
          v12 = &v22;
          v13 = 1;
          do
          {
            v14 = v13;
            v15 = result[v9];
            if ((*(v15 + 224) & 1) == 0)
            {
              v15 = *(v15 + 8 * *v12 + 48);
            }

            v13 = 0;
            *v11 = v15;
            v12 = (&v22 + 4);
            v11 = v23 + 1;
            v9 = 1;
          }

          while ((v14 & 1) != 0);
          sub_239E79E80(v23, *(v10 + 2), a3);
          ++v6;
        }

        while (v6 != 4);
        v16 = 0;
        v17 = &unk_239F9B5F0 + 96 * a2;
        do
        {
          v18 = 0;
          memset(v23, 0, sizeof(v23));
          v19 = &v17[24 * v16];
          v22 = *(v19 + 4);
          v20 = &unk_239F9B5D0 + 16 * *v19;
          do
          {
            v21 = result[*&v20[4 * v18]];
            if ((*(v21 + 224) & 1) == 0)
            {
              v21 = *(v21 + 8 * *(&v23[-1] + v18) + 48);
            }

            *(v23 + v18++) = v21;
          }

          while (v18 != 4);
          sub_239E7A040(v23, *(v19 + 5), a3);
          ++v16;
        }

        while (v16 != 4);
      }
    }
  }
}

void sub_239E7A040(void *result, int a2, const void **a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*result)
  {
    v4 = result[1];
    if (v4)
    {
      v5 = result[2];
      if (v5)
      {
        v6 = result[3];
        if (v6)
        {
          if (*(*result + 224) == 1 && *(v4 + 224) == 1 && *(v5 + 224) == 1 && *(v6 + 224) == 1)
          {

            sub_239E7A1D0(result, a2, a3);
          }

          else
          {
            v8 = 0;
            v9 = 1;
            v10 = &unk_239F9B710 + 40 * a2;
            do
            {
              v11 = 0;
              v12 = v9;
              memset(v16, 0, sizeof(v16));
              v13 = &v10[20 * v8];
              v15 = *v13;
              do
              {
                v14 = result[v11];
                if ((*(v14 + 224) & 1) == 0)
                {
                  v14 = *(v14 + 8 * *(&v16[-1] + v11) + 48);
                }

                *(v16 + v11++) = v14;
              }

              while (v11 != 4);
              sub_239E7A040(v16, *(v13 + 4), a3);
              v9 = 0;
              v8 = 1;
            }

            while ((v12 & 1) != 0);
          }
        }
      }
    }
  }
}

void sub_239E7A1D0(uint64_t a1, int a2, const void **a3)
{
  v4 = 0;
  LOBYTE(v5) = 0;
  v15 = *MEMORY[0x277D85DE8];
  v13 = -1;
  v14 = -1;
  v6 = 0x7FFFFFFF;
  do
  {
    v7 = *(a1 + 8 * v4);
    v8 = *(v7 + 16) - *(v7 + 32);
    if (v8 < v6)
    {
      v5 = *(v7 + 225) >> *(&unk_239F9B420 + 2 * dword_239F9B788[4 * a2 + v4]);
      v6 = v8;
    }

    *(&v13 + v4++) = *(v7 + 256);
  }

  while (v4 != 4);
  v9 = v13;
  v12 = v13;
  if (v5)
  {
    sub_239E73254(a3, &v12);
    v10 = HIDWORD(v14);
    v12 = HIDWORD(v14);
    sub_239E73254(a3, &v12);
    v12 = HIDWORD(v13);
    sub_239E73254(a3, &v12);
    v12 = v9;
    sub_239E73254(a3, &v12);
    v12 = v14;
    sub_239E73254(a3, &v12);
    v12 = v10;
  }

  else
  {
    sub_239E73254(a3, &v12);
    v12 = HIDWORD(v13);
    sub_239E73254(a3, &v12);
    v11 = HIDWORD(v14);
    v12 = HIDWORD(v14);
    sub_239E73254(a3, &v12);
    v12 = v9;
    sub_239E73254(a3, &v12);
    v12 = v11;
    sub_239E73254(a3, &v12);
    v12 = v14;
  }

  sub_239E73254(a3, &v12);
}

void sub_239E7A380(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x23EE802C0);
  }
}

uint64_t sub_239E7A3DC(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_239E740A0(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239E7A428(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v73 = *(a2 - 1);
        v74 = *v8;
        if (*(v73 + 20) < *(*v8 + 20))
        {
          *v8 = v73;
          *(a2 - 1) = v74;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v80 = v8 + 1;
      v81 = v8[1];
      v82 = v8 + 2;
      v83 = v8[2];
      v84 = *v8;
      v85 = *(v81 + 20);
      v86 = *(v83 + 20);
      if (v85 >= *(*v8 + 20))
      {
        if (v86 >= v85)
        {
          goto LABEL_174;
        }

        *v80 = v83;
        *v82 = v81;
        v87 = v8;
        v88 = v8 + 1;
        result = v81;
        if (*(v83 + 20) < *(v84 + 20))
        {
          goto LABEL_167;
        }
      }

      else
      {
        v87 = v8;
        v88 = v8 + 2;
        result = *v8;
        if (v86 >= v85)
        {
          *v8 = v81;
          v8[1] = v84;
          v87 = v8 + 1;
          v88 = v8 + 2;
          result = v84;
          if (*(v83 + 20) >= *(v84 + 20))
          {
LABEL_174:
            v81 = v83;
            goto LABEL_175;
          }
        }

LABEL_167:
        *v87 = v83;
        *v88 = v84;
        v81 = result;
      }

LABEL_175:
      v130 = *(a2 - 1);
      if (*(v130 + 20) < *(v81 + 20))
      {
        *v82 = v130;
        *(a2 - 1) = v81;
        v131 = *v82;
        v132 = *v80;
        if (*(v131 + 20) < *(v132 + 20))
        {
          v8[1] = v131;
          v8[2] = v132;
          v133 = *v8;
          if (*(v131 + 20) < *(*v8 + 20))
          {
            *v8 = v131;
            v8[1] = v133;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return sub_239E7AE34(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v89 = v8 + 1;
      v91 = v8 == a2 || v89 == a2;
      if (a4)
      {
        if (!v91)
        {
          v92 = 0;
          v93 = v8;
          do
          {
            v95 = *v93;
            v94 = v93[1];
            v93 = v89;
            if (*(v94 + 20) < *(v95 + 20))
            {
              v96 = v92;
              while (1)
              {
                *(v8 + v96 + 8) = v95;
                if (!v96)
                {
                  break;
                }

                v95 = *(v8 + v96 - 8);
                v96 -= 8;
                if (*(v94 + 20) >= *(v95 + 20))
                {
                  v97 = (v8 + v96 + 8);
                  goto LABEL_130;
                }
              }

              v97 = v8;
LABEL_130:
              *v97 = v94;
            }

            v89 = v93 + 1;
            v92 += 8;
          }

          while (v93 + 1 != a2);
        }
      }

      else if (!v91)
      {
        do
        {
          v129 = *v7;
          v128 = v7[1];
          v7 = v89;
          if (*(v128 + 20) < *(v129 + 20))
          {
            do
            {
              *v89 = v129;
              v129 = *(v89 - 2);
              --v89;
            }

            while (*(v128 + 20) < *(v129 + 20));
            *v89 = v128;
          }

          v89 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v98 = (v9 - 2) >> 1;
        v99 = v98;
        do
        {
          v100 = v99;
          if (v98 >= v99)
          {
            v101 = (2 * v99) | 1;
            v102 = &v8[v101];
            if (2 * v100 + 2 < v9 && *(*v102 + 20) < *(v102[1] + 20))
            {
              ++v102;
              v101 = 2 * v100 + 2;
            }

            v103 = &v8[v100];
            v104 = *v102;
            v105 = *v103;
            if (*(*v102 + 20) >= *(*v103 + 20))
            {
              do
              {
                v106 = v102;
                *v103 = v104;
                if (v98 < v101)
                {
                  break;
                }

                v107 = 2 * v101;
                v101 = (2 * v101) | 1;
                v102 = &v8[v101];
                v108 = v107 + 2;
                if (v108 < v9)
                {
                  result = v102[1];
                  if (*(*v102 + 20) < *(result + 20))
                  {
                    ++v102;
                    v101 = v108;
                  }
                }

                v104 = *v102;
                v103 = v106;
              }

              while (*(*v102 + 20) >= *(v105 + 20));
              *v106 = v105;
            }
          }

          v99 = v100 - 1;
        }

        while (v100);
        do
        {
          v109 = 0;
          v110 = *v8;
          v111 = v8;
          do
          {
            v112 = v111;
            v113 = &v111[v109];
            v111 = v113 + 1;
            v114 = 2 * v109;
            v109 = (2 * v109) | 1;
            v115 = v114 + 2;
            if (v115 < v9)
            {
              v117 = v113[2];
              v116 = v113 + 2;
              if (*(*(v116 - 1) + 20) < *(v117 + 20))
              {
                v111 = v116;
                v109 = v115;
              }
            }

            *v112 = *v111;
          }

          while (v109 <= ((v9 - 2) >> 1));
          if (v111 == --a2)
          {
            *v111 = v110;
          }

          else
          {
            *v111 = *a2;
            *a2 = v110;
            v118 = (v111 - v8 + 8) >> 3;
            v119 = v118 < 2;
            v120 = v118 - 2;
            if (!v119)
            {
              v121 = v120 >> 1;
              v122 = &v8[v121];
              v123 = *v122;
              v124 = *v111;
              if (*(*v122 + 20) < *(*v111 + 20))
              {
                do
                {
                  v125 = v122;
                  *v111 = v123;
                  if (!v121)
                  {
                    break;
                  }

                  v121 = (v121 - 1) >> 1;
                  v122 = &v8[v121];
                  v123 = *v122;
                  v111 = v125;
                }

                while (*(*v122 + 20) < *(v124 + 20));
                *v125 = v124;
              }
            }
          }

          v119 = v9-- <= 2;
        }

        while (!v119);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *(v12 + 20);
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = *(*v10 + 20);
      if (v16 >= *(*v8 + 20))
      {
        if (v13 < v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v20 = *v8;
          if (*(*v10 + 20) < *(*v8 + 20))
          {
            *v8 = *v10;
            *v10 = v20;
          }
        }
      }

      else
      {
        if (v13 < v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v22 = *(a2 - 1);
        if (*(v22 + 20) < *(v15 + 20))
        {
          *v10 = v22;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v23 = v10 - 1;
      v24 = *(v10 - 1);
      v25 = v8[1];
      v26 = *(v24 + 20);
      v27 = *(a2 - 2);
      v28 = *(v27 + 20);
      if (v26 >= *(v25 + 20))
      {
        if (v28 < v26)
        {
          *v23 = v27;
          *(a2 - 2) = v24;
          v29 = v8[1];
          if (*(*v23 + 20) < *(v29 + 20))
          {
            v8[1] = *v23;
            *v23 = v29;
          }
        }
      }

      else
      {
        if (v28 < v26)
        {
          v8[1] = v27;
          goto LABEL_39;
        }

        v8[1] = v24;
        *v23 = v25;
        v31 = *(a2 - 2);
        if (*(v31 + 20) < *(v25 + 20))
        {
          *v23 = v31;
LABEL_39:
          *(a2 - 2) = v25;
        }
      }

      v34 = v10[1];
      v32 = v10 + 1;
      v33 = v34;
      v35 = v8[2];
      v36 = *(v34 + 20);
      v37 = *(a2 - 3);
      v38 = *(v37 + 20);
      if (v36 >= *(v35 + 20))
      {
        if (v38 < v36)
        {
          *v32 = v37;
          *(a2 - 3) = v33;
          v39 = v8[2];
          if (*(*v32 + 20) < *(v39 + 20))
          {
            v8[2] = *v32;
            *v32 = v39;
          }
        }
      }

      else
      {
        if (v38 < v36)
        {
          v8[2] = v37;
          goto LABEL_48;
        }

        v8[2] = v33;
        *v32 = v35;
        v40 = *(a2 - 3);
        if (*(v40 + 20) < *(v35 + 20))
        {
          *v32 = v40;
LABEL_48:
          *(a2 - 3) = v35;
        }
      }

      v41 = *v11;
      v42 = *v23;
      v43 = *(*v11 + 20);
      v44 = *v32;
      v45 = *(*v32 + 20);
      if (v43 >= *(*v23 + 20))
      {
        if (v45 >= v43)
        {
          goto LABEL_56;
        }

        *v11 = v44;
        *v32 = v41;
        v32 = v11;
        v41 = v42;
        if (*(v44 + 20) >= *(v42 + 20))
        {
          v41 = v44;
          goto LABEL_56;
        }
      }

      else if (v45 >= v43)
      {
        *v23 = v41;
        *v11 = v42;
        v23 = v11;
        v41 = v44;
        if (*(v44 + 20) >= *(v42 + 20))
        {
          v41 = v42;
LABEL_56:
          v46 = *v8;
          *v8 = v41;
          *v11 = v46;
          goto LABEL_57;
        }
      }

      *v23 = v44;
      *v32 = v42;
      goto LABEL_56;
    }

    v17 = *v8;
    v18 = *v11;
    v19 = *(*v8 + 20);
    if (v19 >= *(*v11 + 20))
    {
      if (v13 < v19)
      {
        *v8 = v12;
        *(a2 - 1) = v17;
        v21 = *v11;
        if (*(*v8 + 20) < *(*v11 + 20))
        {
          *v11 = *v8;
          *v8 = v21;
        }
      }

      goto LABEL_57;
    }

    if (v13 < v19)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v18;
      goto LABEL_57;
    }

    *v11 = v17;
    *v8 = v18;
    v30 = *(a2 - 1);
    if (*(v30 + 20) < *(v18 + 20))
    {
      *v8 = v30;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v47 = *v8;
    if (a4)
    {
      v48 = *(v47 + 20);
LABEL_60:
      v49 = 0;
      do
      {
        v50 = v8[++v49];
      }

      while (*(v50 + 20) < v48);
      v51 = &v8[v49];
      v52 = a2;
      if (v49 == 1)
      {
        v52 = a2;
        do
        {
          if (v51 >= v52)
          {
            break;
          }

          v54 = *--v52;
        }

        while (*(v54 + 20) >= v48);
      }

      else
      {
        do
        {
          v53 = *--v52;
        }

        while (*(v53 + 20) >= v48);
      }

      if (v51 >= v52)
      {
        v61 = v51 - 1;
      }

      else
      {
        v55 = *v52;
        v56 = &v8[v49];
        v57 = v52;
        do
        {
          *v56 = v55;
          *v57 = v50;
          v58 = *(v47 + 20);
          do
          {
            v59 = v56[1];
            ++v56;
            v50 = v59;
          }

          while (*(v59 + 20) < v58);
          do
          {
            v60 = *--v57;
            v55 = v60;
          }

          while (*(v60 + 20) >= v58);
        }

        while (v56 < v57);
        v61 = v56 - 1;
      }

      if (v61 != v8)
      {
        *v8 = *v61;
      }

      *v61 = v47;
      if (v51 < v52)
      {
        goto LABEL_81;
      }

      v62 = sub_239E7AFAC(v8, v61);
      v8 = v61 + 1;
      result = sub_239E7AFAC(v61 + 1, a2);
      if (result)
      {
        a2 = v61;
        if (!v62)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v62)
      {
LABEL_81:
        result = sub_239E7A428(v7, v61, a3, a4 & 1);
        a4 = 0;
        v8 = v61 + 1;
      }
    }

    else
    {
      v48 = *(v47 + 20);
      if (*(*(v8 - 1) + 20) < v48)
      {
        goto LABEL_60;
      }

      if (v48 >= *(*(a2 - 1) + 20))
      {
        v64 = (v8 + 1);
        do
        {
          v8 = v64;
          if (v64 >= a2)
          {
            break;
          }

          v64 += 8;
        }

        while (v48 >= *(*v8 + 20));
      }

      else
      {
        do
        {
          v63 = v8[1];
          ++v8;
        }

        while (v48 >= *(v63 + 20));
      }

      v65 = a2;
      if (v8 < a2)
      {
        v65 = a2;
        do
        {
          v66 = *--v65;
        }

        while (v48 < *(v66 + 20));
      }

      if (v8 < v65)
      {
        v67 = *v8;
        v68 = *v65;
        do
        {
          *v8 = v68;
          *v65 = v67;
          v69 = *(v47 + 20);
          do
          {
            v70 = v8[1];
            ++v8;
            v67 = v70;
          }

          while (v69 >= *(v70 + 20));
          do
          {
            v71 = *--v65;
            v68 = v71;
          }

          while (v69 < *(v71 + 20));
        }

        while (v8 < v65);
      }

      v72 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v72;
      }

      a4 = 0;
      *v72 = v47;
    }
  }

  v75 = *v8;
  v76 = v8[1];
  v77 = *(v76 + 20);
  v78 = *(a2 - 1);
  v79 = *(v78 + 20);
  if (v77 >= *(*v8 + 20))
  {
    if (v79 < v77)
    {
      v8[1] = v78;
      *(a2 - 1) = v76;
      v127 = *v8;
      v126 = v8[1];
      if (*(v126 + 20) < *(*v8 + 20))
      {
        *v8 = v126;
        v8[1] = v127;
      }
    }
  }

  else
  {
    if (v79 >= v77)
    {
      *v8 = v76;
      v8[1] = v75;
      v134 = *(a2 - 1);
      if (*(v134 + 20) >= *(v75 + 20))
      {
        return result;
      }

      v8[1] = v134;
    }

    else
    {
      *v8 = v78;
    }

    *(a2 - 1) = v75;
  }

  return result;
}

uint64_t *sub_239E7AE34(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 20);
  v8 = *a3;
  v9 = *(*a3 + 20);
  if (v7 >= *(*result + 20))
  {
    if (v9 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v8;
      *a3 = v5;
      v10 = *result;
      if (*(*a2 + 20) < *(*result + 20))
      {
        *result = *a2;
        *a2 = v10;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v9 < v7)
    {
      *result = v8;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 20) < *(v6 + 20))
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 20) < *(v5 + 20))
  {
    *a3 = *a4;
    *a4 = v5;
    v11 = *a2;
    if (*(*a3 + 20) < *(*a2 + 20))
    {
      *a2 = *a3;
      *a3 = v11;
      v12 = *result;
      if (*(*a2 + 20) < *(*result + 20))
      {
        *result = *a2;
        *a2 = v12;
      }
    }
  }

  v13 = *a4;
  if (*(*a5 + 20) < *(*a4 + 20))
  {
    *a4 = *a5;
    *a5 = v13;
    v14 = *a3;
    if (*(*a4 + 20) < *(*a3 + 20))
    {
      *a3 = *a4;
      *a4 = v14;
      v15 = *a2;
      if (*(*a3 + 20) < *(*a2 + 20))
      {
        *a2 = *a3;
        *a3 = v15;
        v16 = *result;
        if (*(*a2 + 20) < *(*result + 20))
        {
          *result = *a2;
          *a2 = v16;
        }
      }
    }
  }

  return result;
}

BOOL sub_239E7AFAC(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 20);
      v8 = *(a2 - 1);
      v9 = *(v8 + 20);
      if (v7 >= *(*a1 + 20))
      {
        if (v9 < v7)
        {
          a1[1] = v8;
          *(a2 - 1) = v6;
          v29 = *a1;
          v28 = a1[1];
          if (*(v28 + 20) < *(*a1 + 20))
          {
            *a1 = v28;
            a1[1] = v29;
          }
        }

        return 1;
      }

      if (v9 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v42 = *(a2 - 1);
        if (*(v42 + 20) >= *(v5 + 20))
        {
          return 1;
        }

        a1[1] = v42;
      }

      else
      {
        *a1 = v8;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_239E7AE34(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v18 = a1 + 1;
    v19 = a1[1];
    v20 = a1 + 2;
    v21 = a1[2];
    v22 = *a1;
    v23 = *(v19 + 20);
    v24 = *(v21 + 20);
    if (v23 >= *(*a1 + 20))
    {
      if (v24 >= v23)
      {
LABEL_41:
        v19 = v21;
        goto LABEL_42;
      }

      *v18 = v21;
      *v20 = v19;
      v25 = a1;
      v26 = a1 + 1;
      v27 = v19;
      if (*(v21 + 20) >= *(v22 + 20))
      {
LABEL_42:
        v38 = *(a2 - 1);
        if (*(v38 + 20) < *(v19 + 20))
        {
          *v20 = v38;
          *(a2 - 1) = v19;
          v39 = *v20;
          v40 = *v18;
          if (*(v39 + 20) < *(v40 + 20))
          {
            a1[1] = v39;
            a1[2] = v40;
            v41 = *a1;
            if (*(v39 + 20) < *(*a1 + 20))
            {
              *a1 = v39;
              a1[1] = v41;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v25 = a1;
      v26 = a1 + 2;
      v27 = *a1;
      if (v24 >= v23)
      {
        *a1 = v19;
        a1[1] = v22;
        v25 = a1 + 1;
        v26 = a1 + 2;
        v27 = v22;
        if (*(v21 + 20) >= *(v22 + 20))
        {
          goto LABEL_41;
        }
      }
    }

    *v25 = v21;
    *v26 = v22;
    v19 = v27;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 20) < *(*a1 + 20))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v11 = a1 + 2;
  v10 = a1[2];
  v12 = a1[1];
  v13 = *a1;
  v14 = *(v12 + 20);
  v15 = *(v10 + 20);
  if (v14 < *(*a1 + 20))
  {
    v16 = a1;
    v17 = a1 + 2;
    if (v15 >= v14)
    {
      *a1 = v12;
      a1[1] = v13;
      v16 = a1 + 1;
      v17 = a1 + 2;
      if (*(v10 + 20) >= *(v13 + 20))
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    *v16 = v10;
    *v17 = v13;
    goto LABEL_27;
  }

  if (v15 < v14)
  {
    a1[1] = v10;
    *v11 = v12;
    v16 = a1;
    v17 = a1 + 1;
    if (*(v10 + 20) < *(v13 + 20))
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v30 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v31 = 0;
  for (i = 24; ; i += 8)
  {
    v33 = *v30;
    v34 = *v11;
    if (*(*v30 + 20) < *(v34 + 20))
    {
      v35 = i;
      while (1)
      {
        *(a1 + v35) = v34;
        v36 = v35 - 8;
        if (v35 == 8)
        {
          break;
        }

        v34 = *(a1 + v35 - 16);
        v35 -= 8;
        if (*(v33 + 20) >= *(v34 + 20))
        {
          v37 = (a1 + v36);
          goto LABEL_35;
        }
      }

      v37 = a1;
LABEL_35:
      *v37 = v33;
      if (++v31 == 8)
      {
        break;
      }
    }

    v11 = v30++;
    if (v30 == a2)
    {
      return 1;
    }
  }

  return v30 + 1 == a2;
}

uint64_t sub_239E7B384(uint64_t a1, uint64_t a2)
{
  if (sub_239E7B3D0(a2, &unk_284D175A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_239E7B3D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t sub_239E7B424(uint64_t a1)
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

uint64_t sub_239E7B560(uint64_t a1, uint64_t a2)
{
  if (sub_239E7B3D0(a2, &unk_284D17598))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239E7B5AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_239E7B644(uint64_t a1)
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

uint64_t sub_239E7B690(uint64_t a1)
{
  sub_239E7B644(a1 + 384);
  sub_239E7B644(a1 + 344);
  sub_239E7B644(a1 + 304);
  sub_239E7B644(a1 + 208);
  sub_239E7B644(a1 + 168);
  v2 = *(a1 + 144);
  if (v2)
  {
    *(a1 + 152) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    *(a1 + 128) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;
    operator delete(v4);
  }

  sub_239E7B424(a1 + 64);
  v5 = *(a1 + 40);
  if (v5)
  {
    *(a1 + 48) = v5;
    operator delete(v5);
  }

  sub_239E79AAC(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_239E7B730(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = result[2];
  v9 = *result;
  if (0x6DB6DB6DB6DB6DB7 * ((v8 - *result) >> 5) < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *result = 0;
      result[1] = 0;
      result[2] = 0;
    }

    if (a4 <= 0x124924924924924)
    {
      v10 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 5);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x92492492492492)
      {
        v12 = 0x124924924924924;
      }

      else
      {
        v12 = v11;
      }

      sub_239E7B8DC(result, v12);
    }

    sub_239E797B4();
  }

  v13 = result[1];
  v14 = v13 - v9;
  if (0x6DB6DB6DB6DB6DB7 * ((v13 - v9) >> 5) >= a4)
  {
    while (v6 != a3)
    {
      sub_239E7B92C(v9, v6);
      v6 += 224;
      v9 += 224;
    }

    result[1] = v9;
  }

  else
  {
    v15 = a2 + v14;
    if (v13 != v9)
    {
      do
      {
        sub_239E7B92C(v9, v6);
        v6 += 224;
        v9 += 224;
        v14 -= 224;
      }

      while (v14);
      v13 = result[1];
    }

    v16 = v13;
    if (v15 != a3)
    {
      v16 = v13;
      v17 = v13;
      do
      {
        sub_239E79CE8(v17, v15);
        v15 += 224;
        v17 = v18 + 224;
        v16 += 224;
      }

      while (v15 != a3);
    }

    result[1] = v16;
  }
}

void sub_239E7B8DC(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x124924924924925)
  {
    sub_239E79E24(a1, a2);
  }

  sub_239E797B4();
}

float sub_239E7B92C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = 64;
  v3 = 176;
  do
  {
    v4 = (a1 + v2);
    *(v4 - 3) = *(a2 + v2 - 48);
    *v4 = *(a2 + v2);
    v5 = (a1 + v3);
    *v5 = *(a2 + v3);
    v5[3] = *(a2 + v3 + 24);
    v2 += 16;
    v3 += 8;
  }

  while (v2 != 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 160) = *(a2 + 160);
  result = *(a2 + 168);
  *(a1 + 168) = result;
  *(a1 + 172) = *(a2 + 172);
  return result;
}

void *sub_239E7B9B0(float *a1, unint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = *(a1 + 2);
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
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

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void sub_239E7BBE0(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_239E7BCD0(result, prime);
    }
  }
}

void sub_239E7BCD0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_239E79870();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_239E7BE34(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
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
      v7 = v4[4];
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

uint64_t *sub_239E7BF04(void *a1, int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
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

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void *sub_239E7C134(void *a1, unint64_t *a2)
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
    if (v3 >= *&v2)
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
      if (result[2] == v3)
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

uint64_t sub_239E7C1E8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_239E7C22C(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *sub_239E7C22C@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void sub_239E7C368()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t sub_239E7C3B4(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x124924924924924)
  {
    sub_239E797B4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 5)) >= 0x92492492492492)
  {
    v6 = 0x124924924924924;
  }

  else
  {
    v6 = v3;
  }

  v13 = a1;
  if (v6)
  {
    sub_239E79E24(a1, v6);
  }

  __p = 0;
  v10 = 224 * v2;
  v12 = 0;
  sub_239E79CE8(224 * v2, a2);
  v11 = 224 * v2 + 224;
  sub_239E79D84(a1, &__p);
  v7 = a1[1];
  if (v11 != v10)
  {
    v11 = v11 - 224 * ((((v11 - v10 - 224) >> 5) * 0x2492492492492493uLL) >> 64) - 224;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_239E7C4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_239E7C554(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E7B8DC(result, a4);
  }

  return result;
}

void sub_239E7C5B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_239E7C5D0(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_239E7C648(a1, a2);
  }

  return a1;
}

void sub_239E7C62C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E7C648(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_239E7C684(a1, a2);
  }

  sub_239E797B4();
}

void sub_239E7C684(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_239E79870();
}

float32x4_t *sub_239E7C6CC(void *a1, float32x4_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2->u32[0];
  if (COERCE_FLOAT(*a2) == 0.0)
  {
    v4 = 0;
  }

  v5 = v2.u32[1];
  if (v2.f32[1] == 0.0)
  {
    v5 = 0;
  }

  v6 = v2.u32[2];
  if (v2.f32[2] == 0.0)
  {
    v6 = 0;
  }

  v7 = v3.u32[0];
  if (v3.f32[0] == 0.0)
  {
    v7 = 0;
  }

  v8 = v3.u32[1];
  if (v3.f32[1] == 0.0)
  {
    v8 = 0;
  }

  v9 = v3.u32[2];
  if (v3.f32[2] == 0.0)
  {
    v9 = 0;
  }

  v10 = a1[1];
  if (!*&v10)
  {
    return 0;
  }

  v12 = v4 ^ v5 ^ v6 ^ v7;
  v13 = v12 ^ v8 ^ v9;
  v14 = vcnt_s8(v10);
  v14.i16[0] = vaddlv_u8(v14);
  v15 = v14.u32[0];
  if (v14.u32[0] > 1uLL)
  {
    v16 = v13 >= *&v10 ? v13 % v10.i32[0] : v12 ^ v8 ^ v9;
  }

  else
  {
    v16 = v13 & (*&v10 - 1);
  }

  v17 = *(*a1 + 8 * v16);
  if (!v17)
  {
    return 0;
  }

  for (i = *v17; i; i = i->i64[0])
  {
    v19 = i->u64[1];
    if (v19 == v13)
    {
      if (sub_239E7C82C(i + 1, a2))
      {
        return i;
      }
    }

    else
    {
      if (v15 > 1)
      {
        if (v19 >= *&v10)
        {
          v19 %= *&v10;
        }
      }

      else
      {
        v19 &= *&v10 - 1;
      }

      if (v19 != v16)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_239E7C82C(float32x4_t *a1, float32x4_t *a2)
{
  v2 = *a2;
  LODWORD(v3) = HIDWORD(a1->i64[0]);
  LODWORD(v4) = a1->i64[1];
  if ((vmovn_s32(vceqq_f32(*a1, *a2)).u8[0] & 1) != 0 && (v3 == v2.f32[1] ? (v5 = v4 == v2.f32[2]) : (v5 = 0), v5))
  {
    v6 = a2[1];
    v7 = vmovn_s32(vceqq_f32(a1[1], v6));
    LODWORD(v8) = HIDWORD(a2[1].i64[0]);
    LODWORD(v9) = a2[1].i64[1];
    if (v7.i8[0] & 1) != 0 && (v7.i8[2] & 1) != 0 && (v7.i8[4])
    {
      v10 = 1;
      return v10 & 1;
    }
  }

  else
  {
    v6 = a2[1];
    LODWORD(v8) = HIDWORD(a2[1].i64[0]);
    LODWORD(v9) = a2[1].i64[1];
  }

  if (COERCE_FLOAT(*a1) == v6.f32[0] && v3 == v8 && v4 == v9)
  {
    v10 = 0;
    v13 = vmovn_s32(vceqq_f32(a1[1], v2));
    if (v13.i8[0] & 1) != 0 && (v13.i8[2])
    {
      v10 = v13.i8[4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

float32x4_t *sub_239E7C8E8(void *a1, float32x4_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2->u32[0];
  if (COERCE_FLOAT(*a2) == 0.0)
  {
    v5 = 0;
  }

  v6 = DWORD1(v3);
  if (*(&v3 + 1) == 0.0)
  {
    v6 = 0;
  }

  v7 = v5 ^ v6;
  v8 = DWORD2(v3);
  if (*(&v3 + 2) == 0.0)
  {
    v8 = 0;
  }

  v9 = v4.u32[0];
  if (v4.f32[0] == 0.0)
  {
    v9 = 0;
  }

  v10 = v7 ^ v8 ^ v9;
  v11 = v4.u32[1];
  if (v4.f32[1] == 0.0)
  {
    v11 = 0;
  }

  v12 = v4.u32[2];
  if (v4.f32[2] == 0.0)
  {
    v12 = 0;
  }

  v13 = v11 ^ v12;
  v14 = v10 ^ v13;
  v15 = a1[1];
  if (!*&v15)
  {
    goto LABEL_30;
  }

  v17 = vcnt_s8(v15);
  v17.i16[0] = vaddlv_u8(v17);
  v18 = v17.u32[0];
  if (v17.u32[0] > 1uLL)
  {
    v19 = v10 ^ v13;
    if (v14 >= *&v15)
    {
      v19 = v14 % v15.i32[0];
    }
  }

  else
  {
    v19 = v14 & (*&v15 - 1);
  }

  v20 = *(*a1 + 8 * v19);
  if (!v20 || (v21 = *v20) == 0)
  {
LABEL_30:
    operator new();
  }

  while (1)
  {
    v22 = v21->u64[1];
    if (v22 == v14)
    {
      break;
    }

    if (v18 > 1)
    {
      if (v22 >= *&v15)
      {
        v22 %= *&v15;
      }
    }

    else
    {
      v22 &= *&v15 - 1;
    }

    if (v22 != v19)
    {
      goto LABEL_30;
    }

LABEL_29:
    v21 = v21->i64[0];
    if (!v21)
    {
      goto LABEL_30;
    }
  }

  if ((sub_239E7C82C(v21 + 1, a2) & 1) == 0)
  {
    goto LABEL_29;
  }

  return v21;
}

uint64_t sub_239E7CBA4(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_239E7BBE0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_239E7B9B0(a1, i + 2, i + 2);
  }

  return a1;
}

void sub_239E7CC1C(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = a2[2];
        v8[2] = v9;
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_239E7CD28(a1, v9, v8 + 2);
        sub_239E7CE88(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_239E7D1DC(a1, a2 + 2);
  }
}

void sub_239E7CCF4(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *sub_239E7CD28(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_239E7CF70(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *sub_239E7CE88(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void sub_239E7CF70(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_239E7D060(result, prime);
    }
  }
}

void sub_239E7D060(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_239E79870();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_239E7D264(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t *sub_239E7D2D0(void *a1, unint64_t *a2)
{
  result = sub_239E7C134(a1, a2);
  if (result)
  {
    sub_239E7C1E8(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_239E7D308(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_239E7D38C(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *sub_239E7D38C(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_239E7D400(v6, a2);
  return v3;
}

uint64_t *sub_239E7D400(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (*(v23 + 24))
  {
    v24 = *(v7 + 8);
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    *(v7 + 8) = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = *(v7 + 16);
    *(v24 + 16) = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    *(v7 + 16) = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

void sub_239E7D780(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 4);
        *(v8 + 4) = v9;
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_239E7D88C(a1, v9, v8 + 4);
        sub_239E7CE88(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_239E7DC58(a1, a2 + 4);
  }
}

void sub_239E7D858(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t sub_239E7D88C(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_239E7D9EC(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void sub_239E7D9EC(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_239E7DADC(result, prime);
    }
  }
}

void sub_239E7DADC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_239E79870();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_239E7E970(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MDLMaterialProperty;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_239E80160(_Unwind_Exception *a1)
{
  v3 = v1;
  MEMORY[0x23EE802C0](v3, 0x10A1C40A30AD078);

  _Unwind_Resume(a1);
}

void sub_239E83A14(void *a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ((objc_msgSend_containsObject_(v4, v5, v3, v6, v11, v12, v13, v14, v7, v8, v9, v10) & 1) == 0)
  {
    objc_msgSend_addObject_(v4, v15, v3, v16, v21, v22, v23, v24, v17, v18, v19, v20);
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v25 = v3[3];
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v45, v49, v30, v31, v32, v33, 16, v27, v28, v29);
    if (v34)
    {
      v35 = *v46;
      do
      {
        v36 = 0;
        do
        {
          if (*v46 != v35)
          {
            objc_enumerationMutation(v25);
          }

          sub_239E83A14(*(*(&v45 + 1) + 8 * v36++), v4);
        }

        while (v34 != v36);
        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v37, &v45, v49, v41, v42, v43, v44, 16, v38, v39, v40);
      }

      while (v34);
    }

    (*(v3[4] + 2))(v3[4]);
  }
}

void sub_239E83D5C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_239E842AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

float sub_239E848C4(CGColor *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  Components = CGColorGetComponents(a1);
  ColorSpace = CGColorGetColorSpace(a1);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model == kCGColorSpaceModelRGB)
  {
    v7 = vmulq_f64(*(Components + 1), xmmword_239F9B9A0);
    return v7.f64[0] + *Components * 0.212655 + v7.f64[1];
  }

  else
  {
    result = 1.0;
    if (Model)
    {
      return result;
    }

    return *Components;
  }
}

CGColorRef sub_239E8494C(float32x4_t a1, float32x4_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = 0uLL;
  if (a1.f32[0] >= 1000.0 && a1.f32[0] <= 40000.0)
  {
    a2.i32[0] = 1170939904;
    v3 = vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(a2, a1)), 0);
    v4 = vaddq_f32(vdivq_f32(vbslq_s8(v3, xmmword_239F9B9E0, xmmword_239F9B9D0), vaddq_f32(vbslq_s8(v3, xmmword_239F9BA00, xmmword_239F9B9F0), vdupq_lane_s32(*a1.f32, 0))), vbslq_s8(v3, xmmword_239F9B9C0, xmmword_239F9B9B0));
    v4.i32[3] = 0;
    v5 = vmaxnmq_f32(v4, 0);
    v5.i32[3] = 0;
    v2 = vminnmq_f32(v5, xmmword_239F9BA10);
  }

  v9 = v2;
  v6 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  *components = vcvtq_f64_f32(*v9.f32);
  v11 = v9.f32[2];
  v12 = 0x3FF0000000000000;
  v7 = CGColorCreate(v6, components);
  CGColorSpaceRelease(v6);
  return v7;
}

__n64 sub_239E84A8C(CGColor *a1)
{
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v2, kCGRenderingIntentAbsoluteColorimetric, a1, 0);
  CGColorSpaceRelease(v2);
  Components = CGColorGetComponents(CopyByMatchingToColorSpace);
  v25 = vcvt_f32_f64(*Components);
  v5 = Components[1].f64[0];
  v24 = v5;
  CGColorRelease(CopyByMatchingToColorSpace);
  v7 = fminf(v25.f32[0], fminf(v25.f32[1], v24));
  v8.f32[0] = fmaxf(v25.f32[0], fmaxf(v25.f32[1], v24));
  v9 = v8.f32[0] - v7;
  v10 = (v7 + v8.f32[0]) * 0.5;
  if (v10 >= 0.5)
  {
    v11 = 1.0 - v10;
  }

  else
  {
    v11 = v10;
  }

  v12 = v9 / (v11 + v11);
  _NF = v10 > 0.0 && v10 < 1.0;
  v14 = vdup_lane_s32(*v8.f32, 0);
  if (!_NF)
  {
    v12 = 0.0;
  }

  v15.i32[0] = vdup_lane_s32(v25, 1).u32[0];
  v15.f32[1] = v24;
  __asm { FMOV            V16.2S, #1.0 }

  *v6.f32 = vand_s8(_D16, vbic_s8(vceq_f32(v14, v25), vceq_f32(v14, v15)));
  if (v8.f32[0] != v25.f32[0] && v8.f32[0] == v24)
  {
    v8.f32[0] = 1.0;
  }

  else
  {
    v8.f32[0] = 0.0;
  }

  v6.i32[2] = v8.i32[0];
  v8.f32[0] = (v25.f32[1] - v24) * (1.0 / v9);
  v8.f32[1] = ((v24 - v25.f32[0]) * (1.0 / v9)) + 2.0;
  v8.f32[2] = ((v25.f32[0] - v25.f32[1]) * (1.0 / v9)) + 4.0;
  v20 = vmulq_f32(v6, v8);
  v21 = vaddv_f32(*v20.f32) + v20.f32[2];
  v22 = 0.16667;
  if (v9 <= 0.0)
  {
    v22 = 0.0;
  }

  result.n64_f32[0] = v22 * v21;
  if (result.n64_f32[0] < 0.0)
  {
    result.n64_f32[0] = result.n64_f32[0] + 1.0;
  }

  result.n64_f32[1] = v12;
  return result;
}

double sub_239E84C14(float32x4_t a1, double a2, double a3, double a4, double a5, float32x4_t a6)
{
  v6 = 6.0 * a1.f32[0];
  v7.i64[1] = 0;
  if (a1.f32[0] >= 0.66667)
  {
    v8.i32[1] = 0;
    v8.i32[3] = 0;
    *v8.i32 = v6 + -4.0;
    *&v8.i32[2] = 6.0 - v6;
  }

  else
  {
    v8.i32[0] = 0;
    v8.i32[3] = 0;
    *&v8.i32[1] = 4.0 - v6;
    *&v8.i32[2] = v6 + -2.0;
  }

  a6.i32[0] = 1051372203;
  *v7.i32 = 2.0 - v6;
  *&v7.i32[1] = 6.0 * a1.f32[0];
  v9 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a6, a1), 0), v7, v8);
  v9.i32[3] = 0;
  *&a3 = 1.0 - a1.f32[1];
  v10 = vmlaq_n_f32(vdupq_lane_s32(*&a3, 0), vminnmq_f32(v9, xmmword_239F9BA10), a1.f32[1] + a1.f32[1]);
  if (a1.f32[2] >= 0.5)
  {
    a1.f32[0] = (a1.f32[2] * 2.0) + -1.0;
    a1.i64[0] = vmlaq_n_f32(vdupq_lane_s32(*a1.f32, 0), v10, 1.0 - a1.f32[2]).u64[0];
  }

  else
  {
    a1.i64[0] = vmulq_laneq_f32(v10, a1, 2).u64[0];
  }

  return *a1.i64;
}

float sub_239E84CE8(float *a1, float *a2, float *a3, float a4, float a5, float a6, float a7)
{
  v11 = __sincos_stret(a7);
  v12 = ((a5 + a4) + a6) * 0.333333333;
  *&v12 = v12;
  v13 = (*&v12 + a6) - ((*&v12 + a6) <= 0.0);
  v14 = vadd_f32(vdup_lane_s32(*&v12, 0), __PAIR64__(LODWORD(a5), LODWORD(a4)));
  v15 = vadd_s32(vmvn_s8(vcgtz_f32(v14)), vcvt_s32_f32(v14));
  v16 = v15.i32[1];
  v17 = vcvt_f32_s32(v15);
  v18 = v15.i32[0];
  v19 = (v15.i32[0] + v13 + v15.i32[1]) * 0.166666667;
  *&v19 = v19;
  v20 = vadd_f32(vsub_f32(vdup_lane_s32(*&v19, 0), v17), __PAIR64__(LODWORD(a5), LODWORD(a4)));
  v21 = (*&v19 - v13) + a6;
  if (v20.f32[0] >= v20.f32[1])
  {
    if (v20.f32[1] >= v21)
    {
      v24 = 0;
      v25 = 0;
      v22 = 1;
      v23 = 0x100000001;
    }

    else
    {
      v25 = v20.f32[0] < v21;
      v22 = (v20.f32[0] >= v21);
      v23 = 1;
      v24 = 1;
    }
  }

  else if (v20.f32[1] >= v21)
  {
    v25 = 0;
    v24 = v20.f32[0] < v21;
    v23.i32[1] = 1;
    v23.i32[0] = v20.f32[0] >= v21;
    v22 = 0x100000000;
  }

  else
  {
    v22 = 0;
    v23 = 0x100000000;
    v24 = 1;
    v25 = 1;
  }

  sinval = v11.__sinval;
  cosval = v11.__cosval;
  _D0 = vcvt_f32_f64(vaddq_f64(vcvtq_f64_f32(vsub_f32(v20, vcvt_f32_u32(v22))), vdupq_n_s64(0x3FC55555560C95D4uLL)));
  v29 = (v21 - v25) + 0.166666667;
  v30 = vaddq_f64(vcvtq_f64_f32(vsub_f32(v20, vcvt_f32_u32(v23))), vdupq_n_s64(0x3FD55555560C95D4uLL));
  __asm { FMOV            V4.2S, #-1.0 }

  v36 = vcvtq_f64_f32(vadd_f32(v20, _D4));
  v37 = vdupq_n_s64(0x3FE000000089705FuLL);
  _NF = -v18 < 0;
  v18 = v18;
  if (!_NF)
  {
    v18 = --v18;
  }

  _NF = -v16 < 0;
  v16 = v16;
  if (!_NF)
  {
    v16 = --v16;
  }

  _NF = -v13 < 0;
  v13 = v13;
  if (!_NF)
  {
    v13 = --v13;
  }

  v38 = vmul_f32(v20, v20);
  v39 = 0.6 - ((v38.f32[0] + (v21 * v21)) + v38.f32[1]);
  v40.i32[0] = 0;
  v41.i32[0] = 0;
  v42 = 0.0;
  v43 = 0.0;
  v44 = 0.0;
  v45 = 0.0;
  v46 = 0.0;
  v47 = 0.0;
  if (v39 >= 0.0)
  {
    v48 = (&unk_239F9BA84 + 12 * (byte_239F9BC04[byte_239F9BC04[byte_239F9BC04[v13] + v16] + v18] & 0xF));
    v49 = (&unk_239F9BB44 + 12 * (byte_239F9BC04[byte_239F9BC04[byte_239F9BC04[v13] + v16] + v18] & 0xF));
    v43 = (v48[1].f32[0] * cosval) + (v49[1].f32[0] * sinval);
    v45 = v39 * v39;
    v46 = v45 * v45;
    v41 = vmla_n_f32(vmul_n_f32(*v48, cosval), *v49, sinval);
    v47 = (vaddv_f32(vmul_f32(v41, v20)) + (v43 * v21)) * (v45 * v45);
    v42 = v41.f32[1];
    v44 = v39;
  }

  v105 = v45;
  v107 = v46;
  v108 = v43;
  v111 = v47;
  v50 = vaddq_f64(v36, v37);
  _D25 = vcvt_f32_f64(v30);
  v52 = (v21 - v24) + 0.333333334;
  v53 = vmul_f32(_D0, _D0);
  v54 = 0.6 - ((v53.f32[1] + (v29 * v29)) + v53.f32[0]);
  v55 = 0.0;
  v56 = 0.0;
  v57 = 0.0;
  v58 = 0.0;
  v59 = 0.0;
  v60 = 0.0;
  if (v54 >= 0.0)
  {
    v61 = 3 * (byte_239F9BC04[byte_239F9BC04[byte_239F9BC04[v25 + v13] + (v22.i32[1] + v16)] + (v22.i32[0] + v18)] & 0xF);
    v62 = (&unk_239F9BA84 + 4 * v61);
    v63 = (&unk_239F9BB44 + 4 * v61);
    v56 = (v62[1].f32[0] * cosval) + (v63[1].f32[0] * sinval);
    v58 = v54 * v54;
    v59 = v58 * v58;
    v40 = vmla_n_f32(vmul_n_f32(*v62, cosval), *v63, sinval);
    v60 = (vaddv_f32(vmul_f32(v40, _D0)) + (v56 * v29)) * (v58 * v58);
    v55 = v40.f32[1];
    v57 = v54;
  }

  v64 = v44;
  v103 = v42;
  v104 = v55;
  v106 = v29;
  _D8 = vcvt_f32_f64(v50);
  v66 = (v21 + -1.0) + 0.500000001;
  v67 = vmul_f32(_D25, _D25);
  v68 = 0.6 - ((v67.f32[1] + (v52 * v52)) + v67.f32[0]);
  v69.i32[0] = 0;
  v70.i32[0] = 0;
  _S15 = 0.0;
  v72 = 0.0;
  v73 = 0.0;
  v74 = 0.0;
  v75 = 0.0;
  v76 = 0.0;
  if (v68 >= 0.0)
  {
    v77 = 3 * (byte_239F9BC04[byte_239F9BC04[byte_239F9BC04[v24 + v13] + (v23.i32[1] + v16)] + (v23.i32[0] + v18)] & 0xF);
    v78 = (&unk_239F9BA84 + 4 * v77);
    v79 = (&unk_239F9BB44 + 4 * v77);
    v72 = (v78[1].f32[0] * cosval) + (v79[1].f32[0] * sinval);
    v74 = v68 * v68;
    v75 = v74 * v74;
    v70 = vmla_n_f32(vmul_n_f32(*v78, cosval), *v79, sinval);
    v76 = (vaddv_f32(vmul_f32(v70, _D25)) + (v72 * v52)) * (v74 * v74);
    _S15 = v70.f32[1];
    v73 = v68;
  }

  v80 = vmul_f32(_D8, _D8);
  v81 = 0.6 - ((v80.f32[0] + (v66 * v66)) + v80.f32[1]);
  _S23 = 0.0;
  v83 = 0.0;
  v84 = 0.0;
  v85 = 0.0;
  v86 = 0.0;
  v87 = 0.0;
  if (v81 >= 0.0)
  {
    v88 = 3 * (byte_239F9BC04[byte_239F9BC04[byte_239F9BC04[v13 + 1] + 1 + v16] + 1 + v18] & 0xF);
    v89 = (&unk_239F9BA84 + 12 * (byte_239F9BC04[byte_239F9BC04[byte_239F9BC04[v13 + 1] + 1 + v16] + 1 + v18] & 0xF));
    v90 = (&unk_239F9BB44 + 4 * v88);
    v83 = (v89[1].f32[0] * cosval) + (v90[1].f32[0] * sinval);
    v85 = v81 * v81;
    v86 = v85 * v85;
    v69 = vmla_n_f32(vmul_n_f32(*v89, cosval), *v90, sinval);
    v87 = (vaddv_f32(vmul_f32(v69, _D8)) + (v83 * v66)) * (v85 * v85);
    _S23 = v69.f32[1];
    v84 = v81;
  }

  if (a1 && a2 && a3)
  {
    v91 = (v105 * v64) * (((v41.f32[0] * v20.f32[0]) + (v103 * v20.f32[1])) + (v108 * v21));
    *a1 = v91 * v20.f32[0];
    *a2 = v91 * v20.f32[1];
    *a3 = v91 * v21;
    _S4 = v104;
    __asm { FMLA            S3, S4, V0.S[1] }

    _S2 = (v58 * v57) * (_S3 + (v56 * v106));
    *a1 = *a1 + (_S2 * _D0.f32[0]);
    __asm { FMLA            S3, S2, V0.S[1] }

    *a2 = _S3;
    *a3 = *a3 + (_S2 * v106);
    __asm { FMLA            S1, S15, V25.S[1] }

    _S0 = (v74 * v73) * (_S1 + (v72 * v52));
    *a1 = *a1 + (_S0 * _D25.f32[0]);
    __asm { FMLA            S1, S0, V25.S[1] }

    *a2 = _S1;
    *a3 = *a3 + (_S0 * v52);
    __asm { FMLA            S1, S23, V8.S[1] }

    _S0 = (v85 * v84) * (_S1 + (v83 * v66));
    *a1 = *a1 + (_S0 * _D8.f32[0]);
    __asm { FMLA            S1, S0, V8.S[1] }

    *a2 = _S1;
    *a3 = *a3 + (_S0 * v66);
    *a1 = *a1 * -8.0;
    *a2 = *a2 * -8.0;
    *a3 = *a3 * -8.0;
    *a1 = (((*a1 + (v107 * v41.f32[0])) + (v59 * v40.f32[0])) + (v75 * v70.f32[0])) + (v86 * v69.f32[0]);
    *a2 = (((*a2 + (v107 * v103)) + (v59 * v104)) + (v75 * _S15)) + (v86 * _S23);
    *a3 = (((*a3 + (v107 * v108)) + (v59 * v56)) + (v75 * v72)) + (v86 * v83);
    *a1 = *a1 * 28.0;
    *a2 = *a2 * 28.0;
    *a3 = *a3 * 28.0;
  }

  return ((v60 + v111) + (v76 + v87)) * 28.0;
}

void sub_239E8540C(void *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, double a3)
{
  v7[5] = *MEMORY[0x277D85DE8];
  a1;
  v7[1] = 0;
  v7[2] = 0;
  v3 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v7[0] = MEMORY[0x277D866E0] + 16;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetPointsAttr(&v4, v3);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
}

void sub_239E85C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_239E56C80(va);
  sub_239E5B240(v31 - 136);
  v33 = *(v30 + 40);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_239E56C80(v31 - 208);
  MEMORY[0x23EE7E6C0](v31 - 160);

  _Unwind_Resume(a1);
}

void sub_239E85E44(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_239E797CC(a1);
  }

  _Unwind_Resume(a1);
}

void sub_239E85E4C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x239E85E50);
  }

  _Unwind_Resume(a1);
}

void sub_239E85E54(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x239E85E58);
  }

  sub_239E797CC(a1);
}

uint64_t sub_239E85E5C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_239E5E560(v3);
  }

  return a1;
}

uint64_t sub_239E85EB8(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) == 20)
    {
      goto LABEL_6;
    }

    if ((v2 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, &stru_284D17B10))
    {
      v2 = *(this + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return *this;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(this);
    }
  }

  return MEMORY[0x282207DB0](this, sub_239E8612C, &stru_284D17B10);
}

uint64_t sub_239E85F74(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5[0] = 0;
  v5[1] = 0;
  sub_239E5B364(a1);
  v6 = v5;
  sub_239E861E8(a1, a2, &v6);
  return a1;
}

pxrInternal__aapl__pxrReserved__::Sdf_PathNode *sub_239E85FE8(pxrInternal__aapl__pxrReserved__::Sdf_PathNode *result)
{
  v1 = *(result + 14);
  if (v1 > 3)
  {
    if (*(result + 14) <= 5u)
    {
      if (v1 == 4)
      {
        v2 = MEMORY[0x23EE7EA10]();
      }

      else
      {
        if (v1 != 5)
        {
          return result;
        }

        v2 = MEMORY[0x23EE7EA00]();
      }
    }

    else
    {
      switch(v1)
      {
        case 6u:
          v2 = MEMORY[0x23EE7EC90]();
          break;
        case 7u:
          v2 = MEMORY[0x23EE7EA80]();
          break;
        case 8u:
          v2 = MEMORY[0x23EE7EAD0]();
          break;
        default:
          return result;
      }
    }

    goto LABEL_24;
  }

  if (*(result + 14) > 1u)
  {
    if (v1 != 2)
    {
      if (v1 != 3)
      {
        return result;
      }

      v2 = MEMORY[0x23EE7EB50]();
LABEL_24:

      return MEMORY[0x282206558](v2);
    }

    v3 = MEMORY[0x23EE7EC30]();
  }

  else if (*(result + 14))
  {
    v3 = MEMORY[0x23EE7E890]();
  }

  else
  {
    v3 = sub_239E860CC(result);
  }

  return MEMORY[0x282206550](v3);
}

pxrInternal__aapl__pxrReserved__::Sdf_PathNode *sub_239E860CC(pxrInternal__aapl__pxrReserved__::Sdf_PathNode *this)
{
  if ((*(this + 2) & 0x80000000) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNode::_RemovePathTokenFromTable(this);
  }

  v2 = *this;
  if (*this && (atomic_fetch_add((v2 + 8), 0xFFFFFFFF) & 0x7FFFFFFF) == 1)
  {
    sub_239E85FE8(v2);
  }

  return this;
}

uint64_t sub_239E8618C(uint64_t result)
{
  if (result)
  {
    sub_239E56C80(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void sub_239E861E8(unint64_t *a1, unint64_t a2, _OWORD **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239E863B0(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  *&v10[v11] = *(v9 + v11 * 8);
                  v11 += 2;
                }

                while (2 * v3 != v11);
              }
            }

            v12 = *a3;
            v13 = 2 * v3;
            do
            {
              *&v7[v13] = *v12;
              v13 += 2;
            }

            while (2 * a2 != v13);
          }

          v14 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a1;
      }

      v20 = sub_239E863B0(a1, a2);
      v14 = v20;
      if (v3)
      {
        v21 = 16 * v19;
        v22 = v20;
        do
        {
          v23 = *v7;
          v7 += 2;
          *v22++ = v23;
          v21 -= 16;
        }

        while (v21);
      }

      if (v3 < a2)
      {
        v24 = *a3;
        v25 = 2 * v3;
        do
        {
          *&v20[v25] = *v24;
          v25 += 2;
        }

        while (2 * a2 != v25);
      }

      goto LABEL_31;
    }

    v15 = 16 * a2;
    if (16 * a2 / a2 == 16)
    {
      v16 = sub_239E863B0(a1, a2);
      v14 = v16;
      v17 = 0;
      v18 = *a3;
      do
      {
        *&v16[v17 / 8] = *v18;
        v17 += 16;
      }

      while (v15 != v17);
LABEL_31:
      if (v14 != a1[4])
      {
        sub_239E56C80(a1);
        a1[4] = v14;
      }

      *a1 = a2;
      return;
    }
  }

  sub_239E5B364(a1);
}

void *sub_239E863B0(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_AllocateNew(size_t) [T = pxrInternal__aapl__pxrReserved__::GfVec4f]");
  if (a2 > 0x7FFFFFFFFFFFFFELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 16 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void *sub_239E86444(void *a1)
{
  if (*a1)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
    *a1 = 0;
  }

  return a1;
}

void sub_239E86480(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *result)
{
  v1 = *(result + 4);
  if (v1)
  {
    if (*(result + 3) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_239F737DC(result, result + 4);
    }
  }
}

void *sub_239E86580(void *a1)
{
  v204 = (a1 + 202);
  sub_239E878AC(&v204);
  v2 = a1[201];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a1[200];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = a1[199];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = a1[198];
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = a1[197];
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = a1[196];
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = a1[195];
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = a1[194];
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = a1[193];
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = a1[192];
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = a1[191];
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = a1[190];
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = a1[189];
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = a1[188];
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = a1[187];
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = a1[186];
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = a1[185];
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = a1[184];
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = a1[183];
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = a1[182];
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = a1[181];
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = a1[180];
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = a1[179];
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = a1[178];
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = a1[177];
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = a1[176];
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = a1[175];
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = a1[174];
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = a1[173];
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = a1[172];
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = a1[171];
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = a1[170];
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = a1[169];
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = a1[168];
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = a1[167];
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = a1[166];
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = a1[165];
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v39 = a1[164];
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v40 = a1[163];
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v41 = a1[162];
  if ((v41 & 7) != 0)
  {
    atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v42 = a1[161];
  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v43 = a1[160];
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v44 = a1[159];
  if ((v44 & 7) != 0)
  {
    atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v45 = a1[158];
  if ((v45 & 7) != 0)
  {
    atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v46 = a1[157];
  if ((v46 & 7) != 0)
  {
    atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v47 = a1[156];
  if ((v47 & 7) != 0)
  {
    atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v48 = a1[155];
  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v49 = a1[154];
  if ((v49 & 7) != 0)
  {
    atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v50 = a1[153];
  if ((v50 & 7) != 0)
  {
    atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v51 = a1[152];
  if ((v51 & 7) != 0)
  {
    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v52 = a1[151];
  if ((v52 & 7) != 0)
  {
    atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v53 = a1[150];
  if ((v53 & 7) != 0)
  {
    atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v54 = a1[149];
  if ((v54 & 7) != 0)
  {
    atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v55 = a1[148];
  if ((v55 & 7) != 0)
  {
    atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v56 = a1[147];
  if ((v56 & 7) != 0)
  {
    atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v57 = a1[146];
  if ((v57 & 7) != 0)
  {
    atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v58 = a1[145];
  if ((v58 & 7) != 0)
  {
    atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v59 = a1[144];
  if ((v59 & 7) != 0)
  {
    atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v60 = a1[143];
  if ((v60 & 7) != 0)
  {
    atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v61 = a1[142];
  if ((v61 & 7) != 0)
  {
    atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v62 = a1[141];
  if ((v62 & 7) != 0)
  {
    atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v63 = a1[140];
  if ((v63 & 7) != 0)
  {
    atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v64 = a1[139];
  if ((v64 & 7) != 0)
  {
    atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v65 = a1[138];
  if ((v65 & 7) != 0)
  {
    atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v66 = a1[137];
  if ((v66 & 7) != 0)
  {
    atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v67 = a1[136];
  if ((v67 & 7) != 0)
  {
    atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v68 = a1[135];
  if ((v68 & 7) != 0)
  {
    atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v69 = a1[134];
  if ((v69 & 7) != 0)
  {
    atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v70 = a1[133];
  if ((v70 & 7) != 0)
  {
    atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v71 = a1[132];
  if ((v71 & 7) != 0)
  {
    atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v72 = a1[131];
  if ((v72 & 7) != 0)
  {
    atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v73 = a1[130];
  if ((v73 & 7) != 0)
  {
    atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v74 = a1[129];
  if ((v74 & 7) != 0)
  {
    atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v75 = a1[128];
  if ((v75 & 7) != 0)
  {
    atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v76 = a1[127];
  if ((v76 & 7) != 0)
  {
    atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v77 = a1[126];
  if ((v77 & 7) != 0)
  {
    atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v78 = a1[125];
  if ((v78 & 7) != 0)
  {
    atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v79 = a1[124];
  if ((v79 & 7) != 0)
  {
    atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v80 = a1[123];
  if ((v80 & 7) != 0)
  {
    atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v81 = a1[122];
  if ((v81 & 7) != 0)
  {
    atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v82 = a1[121];
  if ((v82 & 7) != 0)
  {
    atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v83 = a1[120];
  if ((v83 & 7) != 0)
  {
    atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v84 = a1[119];
  if ((v84 & 7) != 0)
  {
    atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v85 = a1[118];
  if ((v85 & 7) != 0)
  {
    atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v86 = a1[117];
  if ((v86 & 7) != 0)
  {
    atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v87 = a1[116];
  if ((v87 & 7) != 0)
  {
    atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v88 = a1[115];
  if ((v88 & 7) != 0)
  {
    atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v89 = a1[114];
  if ((v89 & 7) != 0)
  {
    atomic_fetch_add_explicit((v89 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v90 = a1[113];
  if ((v90 & 7) != 0)
  {
    atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v91 = a1[112];
  if ((v91 & 7) != 0)
  {
    atomic_fetch_add_explicit((v91 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v92 = a1[111];
  if ((v92 & 7) != 0)
  {
    atomic_fetch_add_explicit((v92 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v93 = a1[110];
  if ((v93 & 7) != 0)
  {
    atomic_fetch_add_explicit((v93 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v94 = a1[109];
  if ((v94 & 7) != 0)
  {
    atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v95 = a1[108];
  if ((v95 & 7) != 0)
  {
    atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v96 = a1[107];
  if ((v96 & 7) != 0)
  {
    atomic_fetch_add_explicit((v96 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v97 = a1[106];
  if ((v97 & 7) != 0)
  {
    atomic_fetch_add_explicit((v97 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v98 = a1[105];
  if ((v98 & 7) != 0)
  {
    atomic_fetch_add_explicit((v98 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v99 = a1[104];
  if ((v99 & 7) != 0)
  {
    atomic_fetch_add_explicit((v99 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v100 = a1[103];
  if ((v100 & 7) != 0)
  {
    atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v101 = a1[102];
  if ((v101 & 7) != 0)
  {
    atomic_fetch_add_explicit((v101 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v102 = a1[101];
  if ((v102 & 7) != 0)
  {
    atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v103 = a1[100];
  if ((v103 & 7) != 0)
  {
    atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v104 = a1[99];
  if ((v104 & 7) != 0)
  {
    atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v105 = a1[98];
  if ((v105 & 7) != 0)
  {
    atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v106 = a1[97];
  if ((v106 & 7) != 0)
  {
    atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v107 = a1[96];
  if ((v107 & 7) != 0)
  {
    atomic_fetch_add_explicit((v107 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v108 = a1[95];
  if ((v108 & 7) != 0)
  {
    atomic_fetch_add_explicit((v108 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v109 = a1[94];
  if ((v109 & 7) != 0)
  {
    atomic_fetch_add_explicit((v109 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v110 = a1[93];
  if ((v110 & 7) != 0)
  {
    atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v111 = a1[92];
  if ((v111 & 7) != 0)
  {
    atomic_fetch_add_explicit((v111 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v112 = a1[91];
  if ((v112 & 7) != 0)
  {
    atomic_fetch_add_explicit((v112 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v113 = a1[90];
  if ((v113 & 7) != 0)
  {
    atomic_fetch_add_explicit((v113 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v114 = a1[89];
  if ((v114 & 7) != 0)
  {
    atomic_fetch_add_explicit((v114 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v115 = a1[88];
  if ((v115 & 7) != 0)
  {
    atomic_fetch_add_explicit((v115 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v116 = a1[87];
  if ((v116 & 7) != 0)
  {
    atomic_fetch_add_explicit((v116 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v117 = a1[86];
  if ((v117 & 7) != 0)
  {
    atomic_fetch_add_explicit((v117 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v118 = a1[85];
  if ((v118 & 7) != 0)
  {
    atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v119 = a1[84];
  if ((v119 & 7) != 0)
  {
    atomic_fetch_add_explicit((v119 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v120 = a1[83];
  if ((v120 & 7) != 0)
  {
    atomic_fetch_add_explicit((v120 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v121 = a1[82];
  if ((v121 & 7) != 0)
  {
    atomic_fetch_add_explicit((v121 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v122 = a1[81];
  if ((v122 & 7) != 0)
  {
    atomic_fetch_add_explicit((v122 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v123 = a1[80];
  if ((v123 & 7) != 0)
  {
    atomic_fetch_add_explicit((v123 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v124 = a1[79];
  if ((v124 & 7) != 0)
  {
    atomic_fetch_add_explicit((v124 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v125 = a1[78];
  if ((v125 & 7) != 0)
  {
    atomic_fetch_add_explicit((v125 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v126 = a1[77];
  if ((v126 & 7) != 0)
  {
    atomic_fetch_add_explicit((v126 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v127 = a1[76];
  if ((v127 & 7) != 0)
  {
    atomic_fetch_add_explicit((v127 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v128 = a1[75];
  if ((v128 & 7) != 0)
  {
    atomic_fetch_add_explicit((v128 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v129 = a1[74];
  if ((v129 & 7) != 0)
  {
    atomic_fetch_add_explicit((v129 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v130 = a1[73];
  if ((v130 & 7) != 0)
  {
    atomic_fetch_add_explicit((v130 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v131 = a1[72];
  if ((v131 & 7) != 0)
  {
    atomic_fetch_add_explicit((v131 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v132 = a1[71];
  if ((v132 & 7) != 0)
  {
    atomic_fetch_add_explicit((v132 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v133 = a1[70];
  if ((v133 & 7) != 0)
  {
    atomic_fetch_add_explicit((v133 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v134 = a1[69];
  if ((v134 & 7) != 0)
  {
    atomic_fetch_add_explicit((v134 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v135 = a1[68];
  if ((v135 & 7) != 0)
  {
    atomic_fetch_add_explicit((v135 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v136 = a1[67];
  if ((v136 & 7) != 0)
  {
    atomic_fetch_add_explicit((v136 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v137 = a1[66];
  if ((v137 & 7) != 0)
  {
    atomic_fetch_add_explicit((v137 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v138 = a1[65];
  if ((v138 & 7) != 0)
  {
    atomic_fetch_add_explicit((v138 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v139 = a1[64];
  if ((v139 & 7) != 0)
  {
    atomic_fetch_add_explicit((v139 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v140 = a1[63];
  if ((v140 & 7) != 0)
  {
    atomic_fetch_add_explicit((v140 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v141 = a1[62];
  if ((v141 & 7) != 0)
  {
    atomic_fetch_add_explicit((v141 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v142 = a1[61];
  if ((v142 & 7) != 0)
  {
    atomic_fetch_add_explicit((v142 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v143 = a1[60];
  if ((v143 & 7) != 0)
  {
    atomic_fetch_add_explicit((v143 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v144 = a1[59];
  if ((v144 & 7) != 0)
  {
    atomic_fetch_add_explicit((v144 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v145 = a1[58];
  if ((v145 & 7) != 0)
  {
    atomic_fetch_add_explicit((v145 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v146 = a1[57];
  if ((v146 & 7) != 0)
  {
    atomic_fetch_add_explicit((v146 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v147 = a1[56];
  if ((v147 & 7) != 0)
  {
    atomic_fetch_add_explicit((v147 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v148 = a1[55];
  if ((v148 & 7) != 0)
  {
    atomic_fetch_add_explicit((v148 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v149 = a1[54];
  if ((v149 & 7) != 0)
  {
    atomic_fetch_add_explicit((v149 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v150 = a1[53];
  if ((v150 & 7) != 0)
  {
    atomic_fetch_add_explicit((v150 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v151 = a1[52];
  if ((v151 & 7) != 0)
  {
    atomic_fetch_add_explicit((v151 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v152 = a1[51];
  if ((v152 & 7) != 0)
  {
    atomic_fetch_add_explicit((v152 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v153 = a1[50];
  if ((v153 & 7) != 0)
  {
    atomic_fetch_add_explicit((v153 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v154 = a1[49];
  if ((v154 & 7) != 0)
  {
    atomic_fetch_add_explicit((v154 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v155 = a1[48];
  if ((v155 & 7) != 0)
  {
    atomic_fetch_add_explicit((v155 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v156 = a1[47];
  if ((v156 & 7) != 0)
  {
    atomic_fetch_add_explicit((v156 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v157 = a1[46];
  if ((v157 & 7) != 0)
  {
    atomic_fetch_add_explicit((v157 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v158 = a1[45];
  if ((v158 & 7) != 0)
  {
    atomic_fetch_add_explicit((v158 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v159 = a1[44];
  if ((v159 & 7) != 0)
  {
    atomic_fetch_add_explicit((v159 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v160 = a1[43];
  if ((v160 & 7) != 0)
  {
    atomic_fetch_add_explicit((v160 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v161 = a1[42];
  if ((v161 & 7) != 0)
  {
    atomic_fetch_add_explicit((v161 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v162 = a1[41];
  if ((v162 & 7) != 0)
  {
    atomic_fetch_add_explicit((v162 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v163 = a1[40];
  if ((v163 & 7) != 0)
  {
    atomic_fetch_add_explicit((v163 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v164 = a1[39];
  if ((v164 & 7) != 0)
  {
    atomic_fetch_add_explicit((v164 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v165 = a1[38];
  if ((v165 & 7) != 0)
  {
    atomic_fetch_add_explicit((v165 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v166 = a1[37];
  if ((v166 & 7) != 0)
  {
    atomic_fetch_add_explicit((v166 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v167 = a1[36];
  if ((v167 & 7) != 0)
  {
    atomic_fetch_add_explicit((v167 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v168 = a1[35];
  if ((v168 & 7) != 0)
  {
    atomic_fetch_add_explicit((v168 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v169 = a1[34];
  if ((v169 & 7) != 0)
  {
    atomic_fetch_add_explicit((v169 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v170 = a1[33];
  if ((v170 & 7) != 0)
  {
    atomic_fetch_add_explicit((v170 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v171 = a1[32];
  if ((v171 & 7) != 0)
  {
    atomic_fetch_add_explicit((v171 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v172 = a1[31];
  if ((v172 & 7) != 0)
  {
    atomic_fetch_add_explicit((v172 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v173 = a1[30];
  if ((v173 & 7) != 0)
  {
    atomic_fetch_add_explicit((v173 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v174 = a1[29];
  if ((v174 & 7) != 0)
  {
    atomic_fetch_add_explicit((v174 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v175 = a1[28];
  if ((v175 & 7) != 0)
  {
    atomic_fetch_add_explicit((v175 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v176 = a1[27];
  if ((v176 & 7) != 0)
  {
    atomic_fetch_add_explicit((v176 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v177 = a1[26];
  if ((v177 & 7) != 0)
  {
    atomic_fetch_add_explicit((v177 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v178 = a1[25];
  if ((v178 & 7) != 0)
  {
    atomic_fetch_add_explicit((v178 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v179 = a1[24];
  if ((v179 & 7) != 0)
  {
    atomic_fetch_add_explicit((v179 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v180 = a1[23];
  if ((v180 & 7) != 0)
  {
    atomic_fetch_add_explicit((v180 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v181 = a1[22];
  if ((v181 & 7) != 0)
  {
    atomic_fetch_add_explicit((v181 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v182 = a1[21];
  if ((v182 & 7) != 0)
  {
    atomic_fetch_add_explicit((v182 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v183 = a1[20];
  if ((v183 & 7) != 0)
  {
    atomic_fetch_add_explicit((v183 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v184 = a1[19];
  if ((v184 & 7) != 0)
  {
    atomic_fetch_add_explicit((v184 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v185 = a1[18];
  if ((v185 & 7) != 0)
  {
    atomic_fetch_add_explicit((v185 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v186 = a1[17];
  if ((v186 & 7) != 0)
  {
    atomic_fetch_add_explicit((v186 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v187 = a1[16];
  if ((v187 & 7) != 0)
  {
    atomic_fetch_add_explicit((v187 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v188 = a1[15];
  if ((v188 & 7) != 0)
  {
    atomic_fetch_add_explicit((v188 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v189 = a1[14];
  if ((v189 & 7) != 0)
  {
    atomic_fetch_add_explicit((v189 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v190 = a1[13];
  if ((v190 & 7) != 0)
  {
    atomic_fetch_add_explicit((v190 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v191 = a1[12];
  if ((v191 & 7) != 0)
  {
    atomic_fetch_add_explicit((v191 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v192 = a1[11];
  if ((v192 & 7) != 0)
  {
    atomic_fetch_add_explicit((v192 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v193 = a1[10];
  if ((v193 & 7) != 0)
  {
    atomic_fetch_add_explicit((v193 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v194 = a1[9];
  if ((v194 & 7) != 0)
  {
    atomic_fetch_add_explicit((v194 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v195 = a1[8];
  if ((v195 & 7) != 0)
  {
    atomic_fetch_add_explicit((v195 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v196 = a1[7];
  if ((v196 & 7) != 0)
  {
    atomic_fetch_add_explicit((v196 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v197 = a1[6];
  if ((v197 & 7) != 0)
  {
    atomic_fetch_add_explicit((v197 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v198 = a1[5];
  if ((v198 & 7) != 0)
  {
    atomic_fetch_add_explicit((v198 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v199 = a1[4];
  if ((v199 & 7) != 0)
  {
    atomic_fetch_add_explicit((v199 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v200 = a1[3];
  if ((v200 & 7) != 0)
  {
    atomic_fetch_add_explicit((v200 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v201 = a1[2];
  if ((v201 & 7) != 0)
  {
    atomic_fetch_add_explicit((v201 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v202 = a1[1];
  if ((v202 & 7) != 0)
  {
    atomic_fetch_add_explicit((v202 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_239E878AC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    operator delete(v4);
  }
}

void *sub_239E87900(void *a1)
{
  *a1 = &unk_284D17288;
  a1[1] = 0;
  v2 = objc_alloc_init(MDLTransform);
  sub_239E682E4(&v2->_transform);
  v3 = a1[1];
  a1[1] = v2;

  return a1;
}

void sub_239E879F0(void *a1@<X0>, const std::string::value_type *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a1;
  v8 = v7;
  v73[0] = a2;
  if (!a3)
  {
    sub_239E552A0(a4, "");
    goto LABEL_201;
  }

  v53 = a4;
  v51 = v7;
  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  v68[0] = 0;
  v68[1] = 0;
  v69 = 0;
  v50 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v9 = 0;
  v10 = &a2[a3];
  v11 = *MEMORY[0x277D82820];
  v12 = *(MEMORY[0x277D82820] + 24);
  do
  {
    memset(v67, 0, 160);
    v65 = 0u;
    v66 = 0u;
    memset(v64, 0, sizeof(v64));
    v62 = 0u;
    v63 = 0u;
    sub_239E88804(v73, v10, __p);
    sub_239E8897C(&v62, __p, 8);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v59 = 0;
    v60 = 0;
    v61 = 0;
    sub_239E88B00(&v62, &v59);
    if (SHIBYTE(v61) < 0)
    {
      v14 = 3;
      if (*v59 == 35 || !v60)
      {
        goto LABEL_174;
      }

      if (v60 >= 0x801)
      {
        sub_239E552A0(v53, "lines in file too long to parse");
        v14 = 1;
        goto LABEL_174;
      }

      if (v60 == 1)
      {
        if (*v59 == 115)
        {
          goto LABEL_174;
        }
      }

      else if (v60 == 6 && *v59 == 1819047021 && *(v59 + 2) == 25193)
      {
LABEL_41:
        memset(__p, 0, 24);
        std::stringbuf::str();
        v20 = std::string::find(__p, 35, 0);
        if (v20 != -1)
        {
          std::string::basic_string(&v58, __p, 0, v20, (&v56 + 4));
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          *__p = v58;
        }

        v21 = __p[23];
        v22 = __p[23];
        if (__p[23] < 0)
        {
          v21 = *&__p[8];
        }

        if (v21 >= 8)
        {
          std::string::basic_string(&v58, __p, 7uLL, 0xFFFFFFFFFFFFFFFFLL, (&v56 + 4));
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          *__p = v58;
          v22 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
        }

        if ((v22 & 0x80) == 0)
        {
          goto LABEL_173;
        }

        v23 = *__p;
        goto LABEL_86;
      }

      v18 = v60;
      if (v60 == 1)
      {
        if (*v59 == 103)
        {
          goto LABEL_39;
        }

        v18 = v60;
        if (*v59 == 111)
        {
LABEL_75:
          memset(&v58, 0, sizeof(v58));
          sub_239E88B00(&v62, &v58);
          memset(__p, 0, sizeof(__p));
          v19 = v72;
          if (v72 < *(&v72 + 1))
          {
LABEL_40:
            *v19 = 0;
            *(v19 + 16) = 0;
            *(v19 + 24) = 0;
            *(v19 + 8) = 0;
            *(v19 + 8) = *&__p[8];
            *(v19 + 24) = *&__p[24];
            *&v72 = v19 + 32;
LABEL_72:
            if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_173;
            }

            v23 = v58.__r_.__value_.__r.__words[0];
            goto LABEL_86;
          }

LABEL_70:
          *&v72 = sub_239E997E4(&v71 + 1, __p);
          if (*&__p[8])
          {
            *&__p[16] = *&__p[8];
            operator delete(*&__p[8]);
          }

          goto LABEL_72;
        }

        if ((v61 & 0x8000000000000000) == 0)
        {
          v13 = v59;
LABEL_64:
          if (HIBYTE(v61) == 1)
          {
LABEL_77:
            if (v13 == 118)
            {
              goto LABEL_90;
            }

            goto LABEL_101;
          }

          if (HIBYTE(v61) != 2)
          {
            goto LABEL_101;
          }

          v25 = &v59;
LABEL_100:
          if (*v25 == 25462)
          {
            *__p = 0;
            LODWORD(v58.__r_.__value_.__l.__data_) = 0;
            v56 = 0;
            MEMORY[0x23EE80090](&v62, __p);
            MEMORY[0x23EE80090](&v62, &v58);
            MEMORY[0x23EE80090](&v62, &v56 + 4);
            MEMORY[0x23EE80090](&v62, &v56);
            v14 = 0;
            ++DWORD1(v70);
            goto LABEL_174;
          }

          goto LABEL_101;
        }
      }

      if (v18 == 6)
      {
        if (*v59 == 1835365237 && *(v59 + 2) == 27764)
        {
          goto LABEL_67;
        }

        if ((v61 & 0x8000000000000000) == 0)
        {
          v13 = v59;
          goto LABEL_64;
        }

        v18 = v60;
      }

      if (v18 == 1)
      {
        if (*v59 == 118)
        {
LABEL_90:
          HIDWORD(v56) = 0;
          *__p = 0;
          LODWORD(v58.__r_.__value_.__l.__data_) = 0;
          MEMORY[0x23EE80090](&v62, __p);
          MEMORY[0x23EE80090](&v62, &v58);
          MEMORY[0x23EE80090](&v62, &v56 + 4);
          LODWORD(v70) = v70 + 1;
          if ((v64[*(v62 - 24)] & 2) == 0)
          {
            LODWORD(v56) = 0;
            v55 = 0;
            MEMORY[0x23EE80090](&v62, &v56);
            v28 = *&v64[*(v62 - 24)];
            MEMORY[0x23EE80090](&v62, &v55 + 4);
            v29 = *&v64[*(v62 - 24)];
            MEMORY[0x23EE80090](&v62, &v55);
            v54 = 1065353216;
            if ((v64[*(v62 - 24)] & 2) == 0)
            {
              MEMORY[0x23EE80090](&v62, &v54);
            }

            if (((v29 | v28) & 2) == 0 && v70 - 1 == DWORD1(v70))
            {
              DWORD1(v70) = v70;
            }
          }

          goto LABEL_173;
        }

        if ((v61 & 0x8000000000000000) == 0)
        {
          goto LABEL_101;
        }
      }

      if (v60 != 2)
      {
        goto LABEL_101;
      }

      v25 = v59;
      goto LABEL_100;
    }

    v13 = v59;
    if (v59 == 35)
    {
      v14 = 3;
      goto LABEL_176;
    }

    if (!HIBYTE(v61))
    {
      goto LABEL_38;
    }

    if (HIBYTE(v61) == 1)
    {
      if (v59 != 103)
      {
        if (v59 == 115)
        {
LABEL_38:
          v14 = 3;
          goto LABEL_174;
        }

        if (v59 == 111)
        {
          goto LABEL_75;
        }

        goto LABEL_77;
      }

LABEL_39:
      memset(&v58, 0, sizeof(v58));
      sub_239E88B00(&v62, &v58);
      memset(__p, 0, sizeof(__p));
      v19 = v72;
      if (v72 < *(&v72 + 1))
      {
        goto LABEL_40;
      }

      goto LABEL_70;
    }

    if (HIBYTE(v61) != 6)
    {
      goto LABEL_64;
    }

    if (v59 == 1819047021 && WORD2(v59) == 25193)
    {
      goto LABEL_41;
    }

    if (v59 == 1835365237 && WORD2(v59) == 27764)
    {
LABEL_67:
      sub_239E88B00(&v62, v68);
      v26 = v72;
      if (v72 == *(&v71 + 1))
      {
        memset(__p, 0, sizeof(__p));
        if (v72 >= *(&v72 + 1))
        {
          v26 = sub_239E997E4(&v71 + 1, __p);
          *&v72 = v26;
          if (*&__p[8])
          {
            *&__p[16] = *&__p[8];
            operator delete(*&__p[8]);
            v26 = v72;
          }
        }

        else
        {
          *v72 = 0;
          *(v26 + 16) = 0;
          *(v26 + 24) = 0;
          *(v26 + 8) = 0;
          *(v26 + 8) = *&__p[8];
          *(v26 + 24) = *&__p[24];
          v26 += 32;
          *&v72 = v26;
        }
      }

      if (!*(v26 - 32))
      {
        goto LABEL_173;
      }

      memset(__p, 0, sizeof(__p));
      if (v26 < *(&v72 + 1))
      {
        *v26 = 0;
        *(v26 + 16) = 0;
        *(v26 + 24) = 0;
        *(v26 + 8) = 0;
        *(v26 + 8) = *&__p[8];
        *(v26 + 24) = *&__p[24];
        *&v72 = v26 + 32;
        goto LABEL_173;
      }

      v27 = sub_239E997E4(&v71 + 1, __p);
      v23 = *&__p[8];
      *&v72 = v27;
      if (!*&__p[8])
      {
LABEL_173:
        v14 = 0;
        goto LABEL_174;
      }

      *&__p[16] = *&__p[8];
LABEL_86:
      operator delete(v23);
      goto LABEL_173;
    }

LABEL_101:
    if (sub_239E55D74(&v59, "vt"))
    {
      *__p = 0;
      LODWORD(v58.__r_.__value_.__l.__data_) = 0;
      MEMORY[0x23EE80090](&v62, __p);
      MEMORY[0x23EE80090](&v62, &v58);
      ++DWORD2(v70);
      if ((v64[*(v62 - 24)] & 2) == 0)
      {
        MEMORY[0x23EE80090](&v62, __p);
        if ((v64[*(v62 - 24)] & 2) == 0)
        {
          MEMORY[0x23EE80090](&v62, &v58);
          ++HIDWORD(v70);
        }
      }

      goto LABEL_173;
    }

    if (sub_239E55D74(&v59, "vt2"))
    {
      *__p = 0;
      LODWORD(v58.__r_.__value_.__l.__data_) = 0;
      MEMORY[0x23EE80090](&v62, __p);
      MEMORY[0x23EE80090](&v62, &v58);
      v14 = 0;
      ++HIDWORD(v70);
      goto LABEL_174;
    }

    if (sub_239E55D74(&v59, "vn"))
    {
      HIDWORD(v56) = 0;
      *__p = 0;
      LODWORD(v58.__r_.__value_.__l.__data_) = 0;
      MEMORY[0x23EE80090](&v62, __p);
      MEMORY[0x23EE80090](&v62, &v58);
      MEMORY[0x23EE80090](&v62, &v56 + 4);
      v14 = 0;
      LODWORD(v71) = v71 + 1;
      goto LABEL_174;
    }

    if (sub_239E55D74(&v59, "f"))
    {
      if (v72 == *(&v71 + 1))
      {
        memset(__p, 0, sizeof(__p));
        sub_239E99778(&v71 + 1, __p);
        if (*&__p[8])
        {
          *&__p[16] = *&__p[8];
          operator delete(*&__p[8]);
        }
      }

      if ((v64[*(v62 - 24)] & 2) != 0)
      {
        goto LABEL_173;
      }

      v30 = 0;
      while (1)
      {
        memset(__p, 0, 24);
        sub_239E88B00(&v62, __p);
        v31 = __p[23];
        if ((__p[23] & 0x8000000000000000) == 0)
        {
          break;
        }

        v31 = *&__p[8];
        if (*&__p[8])
        {
          v52 = v30;
          v32 = *__p;
LABEL_121:
          v33 = strtol(v32, 0, 10);
          v34 = *v32;
          v35 = v32;
          if (v34 == 45)
          {
            v35 = v32 + 1;
            v34 = *(v32 + 1);
          }

          if ((v34 - 48) <= 9)
          {
            do
            {
              v36 = *++v35;
              v34 = v36;
            }

            while ((v36 - 48) < 0xA);
          }

          v37 = &v32[v31];
          if (v37 > v35)
          {
            if (v34 == 47)
            {
              v38 = v35 + 1;
            }

            else
            {
              v38 = v35;
            }

            if (v37 > v38)
            {
              if (*v38 == 47)
              {
                ++v38;
              }

              else
              {
                strtol(v38, 0, 10);
                v39 = *v38;
                if (v39 == 45)
                {
                  v40 = *++v38;
                  v39 = v40;
                }

                if ((v39 - 48) <= 9)
                {
                  do
                  {
                    v41 = *++v38;
                    v39 = v41;
                  }

                  while ((v41 - 48) < 0xA);
                }

                if (v39 == 47)
                {
                  ++v38;
                }
              }
            }

            if (v37 > v38)
            {
              if (*v38 == 47)
              {
                ++v38;
              }

              else
              {
                strtol(v38, 0, 10);
                v42 = *v38;
                if (v42 == 45)
                {
                  v43 = *++v38;
                  v42 = v43;
                }

                if ((v42 - 48) <= 9)
                {
                  do
                  {
                    v44 = *++v38;
                    v42 = v44;
                  }

                  while ((v44 - 48) < 0xA);
                }

                if (v42 == 47)
                {
                  ++v38;
                }
              }
            }

            if (v37 > v38)
            {
              if (*v38 == 47)
              {
                v45 = v38 + 1;
              }

              else
              {
                v45 = v38;
              }

              strtol(v45, 0, 10);
            }
          }

          if (v70)
          {
            v46 = v70 < v33;
          }

          else
          {
            v46 = 1;
          }

          if (v46)
          {
            v30 = v52;
          }

          else
          {
            v30 = v52;
            if (v33 >= 1 && v70 >= v33 || v33 < 0 && v33 >= -v70)
            {
              ++*(v72 - 32);
              v30 = v52 + 1;
            }
          }

          if ((__p[23] & 0x80000000) == 0)
          {
            goto LABEL_167;
          }
        }

        operator delete(*__p);
LABEL_167:
        if ((v64[*(v62 - 24)] & 2) != 0)
        {
          if ((v30 - 3) >= 0xFFFFFFFE)
          {
            v47 = v30;
            v14 = 0;
            *(v72 - 32) -= v47;
            goto LABEL_174;
          }

          goto LABEL_173;
        }
      }

      if (!__p[23])
      {
        goto LABEL_167;
      }

      v52 = v30;
      v32 = __p;
      goto LABEL_121;
    }

    if (sub_239E55D74(&v59, "p") || sub_239E55D74(&v59, "l") || sub_239E55D74(&v59, "t"))
    {
      goto LABEL_173;
    }

    if (SHIBYTE(v61) < 0)
    {
      if (v60 <= 1)
      {
        v14 = 0;
LABEL_175:
        operator delete(v59);
        goto LABEL_176;
      }

      v48 = v59;
      goto LABEL_188;
    }

    if (HIBYTE(v61) > 1u)
    {
      v48 = &v59;
LABEL_188:
      v14 = 0;
      if (v48[1] != 32)
      {
        ++v9;
      }

LABEL_174:
      if ((SHIBYTE(v61) & 0x80000000) == 0)
      {
        goto LABEL_176;
      }

      goto LABEL_175;
    }

    v14 = 0;
LABEL_176:
    *&v62 = v11;
    *(&v62 + *(v11 - 24)) = v12;
    *&v63 = MEMORY[0x277D82878] + 16;
    if (SBYTE7(v66) < 0)
    {
      operator delete(v65);
    }

    *&v63 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v63 + 1);
    std::istream::~istream();
    MEMORY[0x23EE80250](&v67[8]);
    if (v14 != 3 && v14)
    {
      goto LABEL_197;
    }
  }

  while (v10 > v73[0] && v9 < 200);
  if (v9 <= 199)
  {
    v49 = "";
  }

  else
  {
    v49 = "Too much unrecognized data in file, can't parse";
  }

  sub_239E552A0(v53, v49);
LABEL_197:

  if (SHIBYTE(v69) < 0)
  {
    operator delete(v68[0]);
  }

  *&v62 = &v71 + 8;
  sub_239E916B8(&v62);
  v8 = v51;
LABEL_201:
}

void sub_239E886E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  sub_239E88DF8(&a35);

  if (*(v36 - 161) < 0)
  {
    operator delete(*(v35 + 280));
  }

  a35 = a12;
  sub_239E916B8(&a35);

  _Unwind_Resume(a1);
}

void sub_239E88804(const std::string::value_type **a1@<X0>, unint64_t a2@<X1>, std::string *a3@<X8>)
{
  v6 = *a1;
  memset(&v14, 0, sizeof(v14));
  if (v6 >= a2)
  {
    v11 = 0;
    v9 = v6;
  }

  else
  {
    while (1)
    {
      v7 = 0;
      v8 = a2 - v6;
      while (v6[v7] != 10)
      {
        *a1 = &v6[++v7];
        if (a2 - v6 == v7)
        {
          v9 = &v6[v7];
          goto LABEL_7;
        }
      }

      v9 = &v6[v7];
      v8 = v7;
LABEL_7:
      v10 = v9 + 1 >= a2 || v9 == v6;
      if (v10 || *(v9 - 1) != 92)
      {
        break;
      }

      std::string::append(&v14, v6, (v8 - 1));
      v6 = *a1 + 1;
      *a1 = v6;
      if (v6 >= a2)
      {
        v8 = 0;
        v9 = v6;
        break;
      }
    }

    v11 = v8;
  }

  if (v9 < a2)
  {
    v12 = a2 - v9;
    v13 = (v9 + 1);
    do
    {
      if (*(v13 - 1) != 10)
      {
        break;
      }

      *a1 = v13++;
      --v12;
    }

    while (v12);
  }

  std::string::append(&v14, v6, v11);
  sub_239E91570(&v14);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_239E5BAE0(a3, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a3 = v14;
  }
}

void sub_239E8895C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_239E8897C(uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x277D82898] + 64;
  a1[15] = MEMORY[0x277D82898] + 64;
  v7 = *(MEMORY[0x277D82820] + 16);
  v8 = *(MEMORY[0x277D82820] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x277D82898] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  sub_239E989B8((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_239E88AD8(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x23EE80250](v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_239E88B00(uint64_t *a1, uint64_t a2)
{
  v20 = 0;
  MEMORY[0x23EE80060](&v20, a1, 0);
  if (v20 != 1)
  {
    return a1;
  }

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

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x277D82680]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_239E88D48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x239E88D08);
  }

  __cxa_rethrow();
}

uint64_t sub_239E88DF8(uint64_t a1)
{
  v2 = MEMORY[0x277D82820];
  v3 = *MEMORY[0x277D82820];
  *a1 = *MEMORY[0x277D82820];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x23EE80250](a1 + 120);
  return a1;
}

void sub_239E88F18(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v50[2] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v17 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (!v5)
  {
    goto LABEL_6;
  }

  v18 = objc_msgSend_name(v5, v6, v7, v8, v13, v14, v15, v16, v9, v10, v11, v12);

  if (!v18)
  {
    goto LABEL_6;
  }

  v30 = objc_msgSend_name(v17, v19, v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  v31 = v30;
  v43 = objc_msgSend_UTF8String(v31, v32, v33, v34, v39, v40, v41, v42, v35, v36, v37, v38);
  MEMORY[0x23EE7FFA0](a3, v43);

  v44 = *(a3 + 23);
  if (*(a3 + 23) < 0)
  {
    v44 = *(a3 + 8);
  }

  if (!v44)
  {
LABEL_6:
    std::to_string(&__p, a2);
    v45 = std::string::insert(&__p, 0, "material_");
    v46 = v45->__r_.__value_.__r.__words[0];
    v50[0] = v45->__r_.__value_.__l.__size_;
    *(v50 + 7) = *(&v45->__r_.__value_.__r.__words[1] + 7);
    v47 = HIBYTE(v45->__r_.__value_.__r.__words[2]);
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    v48 = v50[0];
    *a3 = v46;
    *(a3 + 8) = v48;
    *(a3 + 15) = *(v50 + 7);
    *(a3 + 23) = v47;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_239E8905C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(a1);
}

void *sub_239E890AC@<X0>(uint64_t a1@<X1>, std::string *a2@<X2>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  v122[19] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D82860] + 64;
  bzero(v121, 0x230uLL);
  v122[0] = v7;
  v8 = *(MEMORY[0x277D82810] + 16);
  v120 = *(MEMORY[0x277D82810] + 8);
  *&v121[*(v120 - 24) - 8] = v8;
  v9 = &v121[*(v120 - 24) - 8];
  std::ios_base::init(v9, v121);
  v10 = MEMORY[0x277D82860] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v120 = v10;
  v122[0] = v7;
  MEMORY[0x23EE80030](v121);
  std::ofstream::open();
  v113 = *&v121[*(v120 - 24) + 24] & 5;
  if (v113)
  {
    sub_239E552A0(a4, "Failed to open file path.");
    goto LABEL_20;
  }

  v21 = MEMORY[0x277CBEBC0];
  v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, a1, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v111 = objc_msgSend_fileURLWithPath_(v21, v23, v22, v24, v29, v30, v31, v32, v25, v26, v27, v28);

  v112 = objc_msgSend_lastPathComponent(v111, v33, v34, v35, v40, v41, v42, v43, v36, v37, v38, v39);
  v44 = sub_239E98B94(&v120, "# Apple ModelI/O MTL File: ", 27);
  v45 = v112;
  v57 = objc_msgSend_UTF8String(v112, v46, v47, v48, v53, v54, v55, v56, v49, v50, v51, v52);
  v58 = strlen(v57);
  v59 = sub_239E98B94(v44, v57, v58);
  std::ios_base::getloc((v59 + *(*v59 - 24)));
  v60 = std::locale::use_facet(&v116, MEMORY[0x277D82680]);
  (v60->__vftable[2].~facet_0)(v60, 10);
  std::locale::~locale(&v116);
  std::ostream::put();
  std::ostream::flush();
  std::ios_base::getloc((v59 + *(*v59 - 24)));
  v61 = std::locale::use_facet(&v116, MEMORY[0x277D82680]);
  (v61->__vftable[2].~facet_0)(v61, 10);
  std::locale::~locale(&v116);
  std::ostream::put();
  std::ostream::flush();
  v73 = objc_msgSend_path(v111, v62, v63, v64, v69, v70, v71, v72, v65, v66, v67, v68);
  v85 = objc_msgSend_stringByDeletingLastPathComponent(v73, v74, v75, v76, v81, v82, v83, v84, v77, v78, v79, v80);

  v86 = *a3;
  v115 = a3[1];
  if (*a3 != v115)
  {
    v87 = 1;
    do
    {
      v88 = *(v86 + 64);
      v89 = *(v86 + 72);
      v101 = objc_msgSend_material(v89, v90, v91, v92, v97, v98, v99, v100, v93, v94, v95, v96);
      v102 = sub_239E98B94(&v120, "newmtl ", 7);
      sub_239E88F18(v101, v87, &v116);
      if ((v118 & 0x80u) == 0)
      {
        locale = &v116;
      }

      else
      {
        locale = v116.__locale_;
      }

      if ((v118 & 0x80u) == 0)
      {
        v104 = v118;
      }

      else
      {
        v104 = v117;
      }

      v105 = sub_239E98B94(v102, locale, v104);
      std::ios_base::getloc((v105 + *(*v105 - 24)));
      v106 = std::locale::use_facet(&v119, MEMORY[0x277D82680]);
      (v106->__vftable[2].~facet_0)(v106, 10);
      std::locale::~locale(&v119);
      std::ostream::put();
      std::ostream::flush();
      if (v118 < 0)
      {
        operator delete(v116.__locale_);
        if (!v101)
        {
LABEL_15:
          v107 = sub_239E98B94(&v120, "Kd = 0.5 0.5 0.5", 16);
          std::ios_base::getloc((v107 + *(*v107 - 24)));
          v108 = std::locale::use_facet(&v116, MEMORY[0x277D82680]);
          (v108->__vftable[2].~facet_0)(v108, 10);
          std::locale::~locale(&v116);
          std::ostream::put();
          std::ostream::flush();
          goto LABEL_16;
        }
      }

      else if (!v101)
      {
        goto LABEL_15;
      }

      sub_239E89D0C(v101, 0, "Kd", "map_Kd", a2, &v120, v85);
      sub_239E89D0C(v101, 13, "Ka", "map_Ka", a2, &v120, v85);
      sub_239E89D0C(v101, 3, "Ks", "map_Ks", a2, &v120, v85);
      sub_239E89D0C(v101, 15, "d", "map_d", a2, &v120, v85);
      sub_239E89D0C(v101, 22, "ao", "map_ao", a2, &v120, v85);
      sub_239E89D0C(v101, 4, "Ns", "map_Ns", a2, &v120, v85);
      sub_239E89D0C(v101, 14, "bump", "map_bump", a2, &v120, v85);
      sub_239E89D0C(v101, 1, "subsurface", "map_subsurface", a2, &v120, v85);
      sub_239E89D0C(v101, 2, "metallic", "map_metallic", a2, &v120, v85);
      sub_239E89D0C(v101, 5, "specularTint", "map_specularTint", a2, &v120, v85);
      sub_239E89D0C(v101, 6, "roughness", "map_roughness", a2, &v120, v85);
      sub_239E89D0C(v101, 7, "anisotropic", "map_anisotropic", a2, &v120, v85);
      sub_239E89D0C(v101, 8, "anisotropicRotation", "map_anisotropicRotation", a2, &v120, v85);
      sub_239E89D0C(v101, 9, "sheen", "map_sheen", a2, &v120, v85);
      sub_239E89D0C(v101, 10, "sheenTint", "map_sheenTint", a2, &v120, v85);
      sub_239E89D0C(v101, 11, "clearCoat", "map_clearCoat", a2, &v120, v85);
      sub_239E89D0C(v101, 12, "clearCoatGloss", "map_clearCoatGloss", a2, &v120, v85);
      sub_239E89D0C(v101, 18, "objectSpaceNormal", "map_objectSpaceNormal", a2, &v120, v85);
      sub_239E89D0C(v101, 19, "tangentSpaceNormal", "map_tangentSpaceNormal", a2, &v120, v85);
      sub_239E89D0C(v101, 20, "displacement", "map_displacement", a2, &v120, v85);
      sub_239E89D0C(v101, 21, "objectDisplacementScale", "map_objectDisplacementScale", a2, &v120, v85);
LABEL_16:
      std::ios_base::getloc(&v121[*(v120 - 24) - 8]);
      v109 = std::locale::use_facet(&v116, MEMORY[0x277D82680]);
      (v109->__vftable[2].~facet_0)(v109, 10);
      std::locale::~locale(&v116);
      std::ostream::put();
      std::ostream::flush();

      v86 += 80;
      ++v87;
    }

    while (v86 != v115);
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear(&v121[*(v120 - 24) - 8], *&v121[*(v120 - 24) + 24] | 4);
  }

LABEL_20:
  v120 = *MEMORY[0x277D82810];
  *&v121[*(v120 - 24) - 8] = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x23EE80040](v121);
  std::ostream::~ostream();
  result = MEMORY[0x23EE80250](v122);
  if (!v113)
  {
    return sub_239E552A0(a4, "");
  }

  return result;
}

void sub_239E89B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::locale a22, uint64_t a23)
{
  sub_239E8AAF8(&a23);
  if (a2 == 1)
  {
    v26 = __cxa_begin_catch(a1);
    v27 = (*(*v26 + 16))(v26);
    sub_239E552A0(a14, v27);
    __cxa_end_catch();
    JUMPOUT(0x239E89B14);
  }

  _Unwind_Resume(a1);
}

void sub_239E89D0C(void *a1, uint64_t a2, const char *a3, const char *a4, std::string *a5, void *a6, void *a7)
{
  v259 = *MEMORY[0x277D85DE8];
  v244 = a1;
  v245 = a7;
  v21 = objc_msgSend_propertiesWithSemantic_(v244, v11, a2, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  if (v21)
  {
    v256 = 0u;
    v257 = 0u;
    v254 = 0u;
    v255 = 0u;
    v243 = v21;
    obj = v21;
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v254, v258, v26, v27, v28, v29, 16, v23, v24, v25);
    if (!v37)
    {
      goto LABEL_54;
    }

    v42 = *v255;
    while (1)
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v255 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v44 = *(*(&v254 + 1) + 8 * i);
        v45 = objc_msgSend_type(v44, v30, v31, v32, v38, v39, v40, v41, v33, v34, v35, v36);
        if (v45 > 4)
        {
          if (v45 > 6)
          {
            if (v45 == 8)
            {
              objc_msgSend_float4Value(v44, v46, v47, v48, v53, v54, v55, v56, v49, v50, v51, v52);
              v101 = sub_239E98B94(a6, "\t", 1);
              v102 = strlen(a3);
              v103 = sub_239E98B94(v101, a3, v102);
              sub_239E98B94(v103, " ", 1);
              v104 = std::ostream::operator<<();
              sub_239E98B94(v104, " ", 1);
              v105 = std::ostream::operator<<();
              sub_239E98B94(v105, " ", 1);
              v106 = std::ostream::operator<<();
              sub_239E98B94(v106, " ", 1);
              v107 = std::ostream::operator<<();
              std::ios_base::getloc((v107 + *(*v107 - 24)));
              v108 = std::locale::use_facet(v252, MEMORY[0x277D82680]);
              (v108->__vftable[2].~facet_0)(v108, 10);
              std::locale::~locale(v252);
              std::ostream::put();
              std::ostream::flush();
              continue;
            }

LABEL_26:
            objc_msgSend_float3Value(v44, v46, v47, v48, v53, v54, v55, v56, v49, v50, v51, v52);
            v225 = sub_239E98B94(a6, "\t", 1);
            v226 = strlen(a3);
            v227 = sub_239E98B94(v225, a3, v226);
            sub_239E98B94(v227, " ", 1);
            v228 = std::ostream::operator<<();
            sub_239E98B94(v228, " ", 1);
            v229 = std::ostream::operator<<();
            sub_239E98B94(v229, " ", 1);
            v230 = std::ostream::operator<<();
            std::ios_base::getloc((v230 + *(*v230 - 24)));
            v231 = std::locale::use_facet(v252, MEMORY[0x277D82680]);
            (v231->__vftable[2].~facet_0)(v231, 10);
            std::locale::~locale(v252);
            std::ostream::put();
            std::ostream::flush();
            continue;
          }

          if (v45 == 5)
          {
            objc_msgSend_floatValue(v44, v46, v47, v48, v53, v54, v55, v56, v49, v50, v51, v52);
            v122 = sub_239E98B94(a6, "\t", 1);
            v123 = strlen(a3);
            v85 = sub_239E98B94(v122, a3, v123);
          }

          else
          {
            objc_msgSend_float2Value(v44, v46, v47, v48, v53, v54, v55, v56, v49, v50, v51, v52);
            v82 = sub_239E98B94(a6, "\t", 1);
            v83 = strlen(a3);
            v84 = sub_239E98B94(v82, a3, v83);
            sub_239E98B94(v84, " ", 1);
            v85 = std::ostream::operator<<();
          }

          sub_239E98B94(v85, " ", 1);
          v86 = std::ostream::operator<<();
          std::ios_base::getloc((v86 + *(*v86 - 24)));
          v87 = std::locale::use_facet(v252, MEMORY[0x277D82680]);
          (v87->__vftable[2].~facet_0)(v87, 10);
          std::locale::~locale(v252);
          std::ostream::put();
          std::ostream::flush();
        }

        else if (v45 > 2)
        {
          if (v45 == 3)
          {
            v124 = objc_msgSend_name(v244, v46, v47, v48, v53, v54, v55, v56, v49, v50, v51, v52);
            v136 = objc_msgSend_name(v44, v125, v126, v127, v132, v133, v134, v135, v128, v129, v130, v131);
            v147 = objc_msgSend_stringByAppendingFormat_(v124, v137, @"_%@.png", v138, v143, v144, v145, v146, v139, v140, v141, v142, v136);

            v148 = MEMORY[0x277CBEBC0];
            v159 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v149, @"%@/%@", v150, v155, v156, v157, v158, v151, v152, v153, v154, v245, v147);
            v170 = objc_msgSend_fileURLWithPath_(v148, v160, v159, v161, v166, v167, v168, v169, v162, v163, v164, v165);

            v182 = objc_msgSend_textureSamplerValue(v44, v171, v172, v173, v178, v179, v180, v181, v174, v175, v176, v177);
            v194 = objc_msgSend_texture(v182, v183, v184, v185, v190, v191, v192, v193, v186, v187, v188, v189);
            objc_msgSend_writeToURL_(v194, v195, v170, v196, v201, v202, v203, v204, v197, v198, v199, v200);

            v205 = sub_239E98B94(a6, "\t", 1);
            v206 = strlen(a4);
            v207 = sub_239E98B94(v205, a4, v206);
            v208 = sub_239E98B94(v207, " ", 1);
            v209 = v147;
            v221 = objc_msgSend_UTF8String(v147, v210, v211, v212, v217, v218, v219, v220, v213, v214, v215, v216);
            v222 = strlen(v221);
            v223 = sub_239E98B94(v208, v221, v222);
            std::ios_base::getloc((v223 + *(*v223 - 24)));
            v224 = std::locale::use_facet(v252, MEMORY[0x277D82680]);
            (v224->__vftable[2].~facet_0)(v224, 10);
            std::locale::~locale(v252);
            std::ostream::put();
            std::ostream::flush();
          }

          else
          {
            v88 = objc_msgSend_color(v44, v46, v47, v48, v53, v54, v55, v56, v49, v50, v51, v52);
            if (CGColorGetNumberOfComponents(v88) >= 3)
            {
              v89 = objc_msgSend_color(v44, v30, v31, v32, v38, v39, v40, v41, v33, v34, v35, v36);
              Components = CGColorGetComponents(v89);
              v91 = sub_239E98B94(a6, "\t", 1);
              v92 = strlen(a3);
              v93 = sub_239E98B94(v91, a3, v92);
              v94 = sub_239E98B94(v93, " ", 1);
              v95 = MEMORY[0x23EE80120](v94, *Components);
              v96 = sub_239E98B94(v95, " ", 1);
              v97 = MEMORY[0x23EE80120](v96, Components[1]);
              v98 = sub_239E98B94(v97, " ", 1);
              v99 = MEMORY[0x23EE80120](v98, Components[2]);
              std::ios_base::getloc((v99 + *(*v99 - 24)));
              v100 = std::locale::use_facet(v252, MEMORY[0x277D82680]);
              (v100->__vftable[2].~facet_0)(v100, 10);
              std::locale::~locale(v252);
              std::ostream::put();
              std::ostream::flush();
            }
          }
        }

        else
        {
          if (v45 == 1)
          {
            v252[0].__locale_ = 0;
            v252[1].__locale_ = 0;
            v253 = 0;
            v109 = objc_msgSend_stringValue(v44, v46, v47, v48, v53, v54, v55, v56, v49, v50, v51, v52);
            v110 = v109;
            v121 = objc_msgSend_cStringUsingEncoding_(v109, v111, 4, v112, v117, v118, v119, v120, v113, v114, v115, v116);
            sub_239E552A0(v252, v121);

            if (SHIBYTE(v253) < 0)
            {
              sub_239E5BAE0(&__p, v252[0].__locale_, v252[1].__locale_);
            }

            else
            {
              *&__p.__r_.__value_.__l.__data_ = *&v252[0].__locale_;
              __p.__r_.__value_.__r.__words[2] = v253;
            }

            sub_239E9175C(&v251, &__p, a5);
            if (SHIBYTE(v253) < 0)
            {
              operator delete(v252[0].__locale_);
            }

            *&v252[0].__locale_ = *&v251.__r_.__value_.__l.__data_;
            v253 = v251.__r_.__value_.__r.__words[2];
            *(&v251.__r_.__value_.__s + 23) = 0;
            v251.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v232 = sub_239E98B94(a6, "\t", 1);
            v233 = strlen(a4);
            v234 = sub_239E98B94(v232, a4, v233);
            v235 = sub_239E98B94(v234, " ", 1);
            if (v253 >= 0)
            {
              locale = v252;
            }

            else
            {
              locale = v252[0].__locale_;
            }

            if (v253 >= 0)
            {
              v237 = HIBYTE(v253);
            }

            else
            {
              v237 = v252[1].__locale_;
            }
          }

          else
          {
            if (v45 != 2)
            {
              goto LABEL_26;
            }

            v252[0].__locale_ = 0;
            v252[1].__locale_ = 0;
            v253 = 0;
            v57 = objc_msgSend_URLValue(v44, v46, v47, v48, v53, v54, v55, v56, v49, v50, v51, v52);
            v69 = objc_msgSend_path(v57, v58, v59, v60, v65, v66, v67, v68, v61, v62, v63, v64);
            v70 = v69;
            v81 = objc_msgSend_cStringUsingEncoding_(v69, v71, 4, v72, v77, v78, v79, v80, v73, v74, v75, v76);
            sub_239E552A0(v252, v81);

            if (SHIBYTE(v253) < 0)
            {
              sub_239E5BAE0(&__dst, v252[0].__locale_, v252[1].__locale_);
            }

            else
            {
              *&__dst.__r_.__value_.__l.__data_ = *&v252[0].__locale_;
              __dst.__r_.__value_.__r.__words[2] = v253;
            }

            sub_239E9175C(&v251, &__dst, a5);
            if (SHIBYTE(v253) < 0)
            {
              operator delete(v252[0].__locale_);
            }

            *&v252[0].__locale_ = *&v251.__r_.__value_.__l.__data_;
            v253 = v251.__r_.__value_.__r.__words[2];
            *(&v251.__r_.__value_.__s + 23) = 0;
            v251.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            v238 = sub_239E98B94(a6, "\t", 1);
            v239 = strlen(a4);
            v240 = sub_239E98B94(v238, a4, v239);
            v235 = sub_239E98B94(v240, " ", 1);
            if (v253 >= 0)
            {
              locale = v252;
            }

            else
            {
              locale = v252[0].__locale_;
            }

            if (v253 >= 0)
            {
              v237 = HIBYTE(v253);
            }

            else
            {
              v237 = v252[1].__locale_;
            }
          }

          v241 = sub_239E98B94(v235, locale, v237);
          std::ios_base::getloc((v241 + *(*v241 - 24)));
          v242 = std::locale::use_facet(&v251, MEMORY[0x277D82680]);
          (v242->__vftable[2].~facet_0)(v242, 10);
          std::locale::~locale(&v251);
          std::ostream::put();
          std::ostream::flush();
          if (SHIBYTE(v253) < 0)
          {
            operator delete(v252[0].__locale_);
          }
        }
      }

      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v254, v258, v38, v39, v40, v41, 16, v34, v35, v36);
      if (!v37)
      {
LABEL_54:

        v21 = v243;
        break;
      }
    }
  }
}

void *sub_239E8AAF8(void *a1)
{
  v2 = MEMORY[0x277D82810];
  v3 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x23EE80040](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x23EE80250](a1 + 52);
  return a1;
}

void sub_239E8ABC4(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v263[19] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v258 = 0uLL;
  v259 = 0;
  v228 = v7;
  sub_239E552A0(&v258, "");
  memset(&v257, 0, sizeof(v257));
  sub_239E5663C(v7, &v257, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
  v20 = MEMORY[0x277D82860] + 64;
  bzero(v262, 0x230uLL);
  v263[0] = v20;
  v21 = *(MEMORY[0x277D82810] + 16);
  v261 = *(MEMORY[0x277D82810] + 8);
  *&v262[*(v261 - 24) - 8] = v21;
  v22 = &v262[*(v261 - 24) - 8];
  std::ios_base::init(v22, v262);
  v23 = MEMORY[0x277D82860] + 24;
  v22[1].__vftable = 0;
  v22[1].__fmtflags_ = -1;
  v261 = v23;
  v263[0] = v20;
  MEMORY[0x23EE80030](v262);
  std::ofstream::open();
  v227 = *&v262[*(v261 - 24) + 24] & 5;
  if (v227)
  {
    sub_239E552A0(a4, "Failed to open file path.");
  }

  else
  {
    memset(&__str, 0, sizeof(__str));
    if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_239E5BAE0(&__str, v257.__r_.__value_.__l.__data_, v257.__r_.__value_.__l.__size_);
    }

    else
    {
      __str = v257;
    }

    p_str = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    memset(&__p, 0, sizeof(__p));
    memset(&v254, 0, sizeof(v254));
    v252 = 0uLL;
    v253 = 0;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    v26 = &p_str[-1].__r_.__value_.__r.__words[2] + 7;
    v225 = a4;
    v226 = v8;
    do
    {
      if (!size)
      {
        goto LABEL_18;
      }

      v27 = v26[size--];
    }

    while (v27 != 46);
    if (size == -1)
    {
LABEL_18:
      v224 = 0;
      v223 = 0;
      std::string::operator=(&__p, &__str);
      goto LABEL_19;
    }

    std::string::basic_string(v240, &__str, size + 1, 0xFFFFFFFFFFFFFFFFLL, v238);
    v223 = *v240;
    v224 = v240[23];
    std::string::basic_string(v240, &__str, 0, size, v238);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = *v240;
LABEL_19:
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v28 = __p.__r_.__value_.__l.__size_;
    }

    memset(v240, 0, 24);
    v29 = v240;
    sub_239E959D0(v240, v28 + 4);
    if (v240[23] < 0)
    {
      v29 = *v240;
    }

    if (v28)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      memmove(v29, p_p, v28);
    }

    strcpy(&v29[v28], ".mtl");
    if (SHIBYTE(v253) < 0)
    {
      operator delete(v252);
    }

    v253 = *&v240[16];
    v31 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v31 = __p.__r_.__value_.__r.__words[0];
    }

    v252 = *v240;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v32 = __p.__r_.__value_.__l.__size_;
    }

    v33 = ~v32;
    v34 = (v31 + v32 - 1);
    do
    {
      if (v33 == -1)
      {
        goto LABEL_43;
      }

      v35 = v34->__r_.__value_.__s.__data_[0];
      v34 = (v34 - 1);
      ++v33;
    }

    while (v35 != 47);
    if (!v33)
    {
LABEL_43:
      std::string::operator=(&v254, &__p);
      goto LABEL_44;
    }

    std::string::basic_string(v240, &__p, -v33, 0xFFFFFFFFFFFFFFFFLL, v238);
    if (SHIBYTE(v254.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v254.__r_.__value_.__l.__data_);
    }

    v254 = *v240;
LABEL_44:
    v36 = sub_239E98B94(&v261, "# Apple ModelIO OBJ File: ", 26);
    if ((v254.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v254;
    }

    else
    {
      v37 = v254.__r_.__value_.__r.__words[0];
    }

    if ((v254.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = HIBYTE(v254.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = v254.__r_.__value_.__l.__size_;
    }

    v39 = sub_239E98B94(v36, v37, v38);
    std::ios_base::getloc((v39 + *(*v39 - 24)));
    v40 = std::locale::use_facet(v240, MEMORY[0x277D82680]);
    (v40->__vftable[2].~facet_0)(v40, 10);
    std::locale::~locale(v240);
    std::ostream::put();
    std::ostream::flush();
    v41 = sub_239E98B94(&v261, "mtllib ", 7);
    if ((v254.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &v254;
    }

    else
    {
      v42 = v254.__r_.__value_.__r.__words[0];
    }

    if ((v254.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = HIBYTE(v254.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v43 = v254.__r_.__value_.__l.__size_;
    }

    v44 = sub_239E98B94(v41, v42, v43);
    v45 = sub_239E98B94(v44, ".mtl", 4);
    std::ios_base::getloc((v45 + *(*v45 - 24)));
    v46 = std::locale::use_facet(v240, MEMORY[0x277D82680]);
    (v46->__vftable[2].~facet_0)(v46, 10);
    std::locale::~locale(v240);
    std::ostream::put();
    std::ostream::flush();
    v250 = 0;
    v249 = 0;
    v251 = 0;
    v245 = 0u;
    v246 = 0u;
    v247 = 0u;
    v248 = 0u;
    v47 = v8;
    v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v245, v260, v52, v53, v54, v55, 16, v49, v50, v51);
    if (v56)
    {
      v57 = *v246;
      v58 = MEMORY[0x277D860B8];
      do
      {
        for (i = 0; i != v56; ++i)
        {
          if (*v246 != v57)
          {
            objc_enumerationMutation(v47);
          }

          v60 = *(*(&v245 + 1) + 8 * i);
          sub_239F5C680(a1, &v249, v60, *v58, v58[1], v58[2], v58[3]);
          sub_239F5CA38(a1, &v249, v60, *v58, v58[1], v58[2], v58[3]);
        }

        v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v61, &v245, v260, v65, v66, v67, v68, 16, v62, v63, v64);
      }

      while (v56);
    }

    memset(&v244, 0, sizeof(v244));
    v80 = objc_msgSend_URL(v47, v69, v70, v71, v76, v77, v78, v79, v72, v73, v74, v75);
    v81 = v80 == 0;

    if (!v81)
    {
      v93 = objc_msgSend_URL(v47, v82, v83, v84, v89, v90, v91, v92, v85, v86, v87, v88);
      v105 = objc_msgSend_path(v93, v94, v95, v96, v101, v102, v103, v104, v97, v98, v99, v100);
      v106 = v105;
      v117 = objc_msgSend_cStringUsingEncoding_(v105, v107, 4, v108, v113, v114, v115, v116, v109, v110, v111, v112);
      MEMORY[0x23EE7FFA0](&v244, v117);

      v118 = &v244;
      if ((v244.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v118 = v244.__r_.__value_.__r.__words[0];
      }

      if ((v244.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v119 = SHIBYTE(v244.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v119 = v244.__r_.__value_.__l.__size_;
      }

      v120 = &v118[-1].__r_.__value_.__r.__words[2] + 7;
      while (v119)
      {
        v121 = v120[v119--];
        if (v121 == 47)
        {
          goto LABEL_74;
        }
      }

      v119 = -1;
LABEL_74:
      std::string::basic_string(v240, &v244, 0, v119, v238);
      if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v244.__r_.__value_.__l.__data_);
      }

      v244 = *v240;
    }

    if (v253 >= 0)
    {
      v122 = &v252;
    }

    else
    {
      v122 = v252;
    }

    sub_239E890AC(v122, &v244, &v249, v240);
    if (SHIBYTE(v259) < 0)
    {
      operator delete(v258);
    }

    v258 = *v240;
    v259 = *&v240[16];
    v243[1] = 0;
    v243[0] = 0;
    v242 = v243;
    memset(v240, 0, sizeof(v240));
    v241 = 1065353216;
    memset(v238, 0, sizeof(v238));
    v239 = 1065353216;
    memset(v237, 0, 32);
    v237[4] = 1065353216;
    memset(v236, 0, 32);
    v236[4] = 1065353216;
    if (v250 != v249)
    {
      v123 = v249;
      v229 = *(v249 + 64);
      v230 = *(v123 + 72);
      v135 = objc_msgSend_name(v230, v124, v125, v126, v131, v132, v133, v134, v127, v128, v129, v130);
      LODWORD(v123) = v135 == 0;

      if (v123)
      {
        v194 = sub_239E98B94(&v261, "g mesh_", 7);
        v195 = MEMORY[0x23EE80140](v194, 0);
        std::ios_base::getloc((v195 + *(*v195 - 24)));
        v196 = std::locale::use_facet(&v233, MEMORY[0x277D82680]);
        (v196->__vftable[2].~facet_0)(v196, 10);
        std::locale::~locale(&v233);
        std::ostream::put();
        std::ostream::flush();
      }

      else
      {
        v234 = 0;
        v233.__locale_ = 0;
        v235 = 0;
        v147 = objc_msgSend_name(v230, v136, v137, v138, v143, v144, v145, v146, v139, v140, v141, v142);
        v148 = v147;
        v160 = objc_msgSend_UTF8String(v147, v149, v150, v151, v156, v157, v158, v159, v152, v153, v154, v155);
        sub_239E552A0(&v233, v160);

        v232.__locale_ = &v233;
        if (v243 == sub_239E69484(&v242, &v233.__locale_))
        {
          *(sub_239E631F0(&v242, &v233.__locale_, &unk_239F9BFF0, &v232, &v231) + 14) = 0;
          v197 = sub_239E98B94(&v261, "g ", 2);
          v174 = objc_msgSend_name(v230, v198, v199, v200, v205, v206, v207, v208, v201, v202, v203, v204);
          v209 = v174;
          v221 = objc_msgSend_UTF8String(v174, v210, v211, v212, v217, v218, v219, v220, v213, v214, v215, v216);
          v222 = strlen(v221);
          v192 = sub_239E98B94(v197, v221, v222);
        }

        else
        {
          v161 = sub_239E631F0(&v242, &v233.__locale_, &unk_239F9BFF0, &v232, &v231);
          ++*(v161 + 14);
          v162 = sub_239E98B94(&v261, "g ", 2);
          v174 = objc_msgSend_name(v230, v163, v164, v165, v170, v171, v172, v173, v166, v167, v168, v169);
          v175 = v174;
          v187 = objc_msgSend_UTF8String(v174, v176, v177, v178, v183, v184, v185, v186, v179, v180, v181, v182);
          v188 = strlen(v187);
          v189 = sub_239E98B94(v162, v187, v188);
          v190 = sub_239E98B94(v189, "_", 1);
          v232.__locale_ = &v233;
          v191 = sub_239E631F0(&v242, &v233.__locale_, &unk_239F9BFF0, &v232, &v231);
          v192 = MEMORY[0x23EE80140](v190, *(v191 + 14));
        }

        std::ios_base::getloc((v192 + *(*v192 - 24)));
        v193 = std::locale::use_facet(&v232, MEMORY[0x277D82680]);
        (v193->__vftable[2].~facet_0)(v193, 10);
        std::locale::~locale(&v232);
        std::ostream::put();
        std::ostream::flush();

        if (SHIBYTE(v235) < 0)
        {
          operator delete(v233.__locale_);
        }
      }

      v229;
      operator new();
    }

    if (!std::filebuf::close())
    {
      std::ios_base::clear(&v262[*(v261 - 24) - 8], *&v262[*(v261 - 24) + 24] | 4);
    }

    sub_239E99BE0(v236);
    sub_239E7B644(v237);
    sub_239E7B644(v238);
    sub_239E7B644(v240);
    sub_239E6A66C(&v242, v243[0]);
    if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v244.__r_.__value_.__l.__data_);
    }

    *v240 = &v249;
    sub_239E99B30(v240);
    a4 = v225;
    if (v224 < 0)
    {
      operator delete(v223);
    }

    v8 = v226;
    if (SHIBYTE(v253) < 0)
    {
      operator delete(v252);
    }

    if (SHIBYTE(v254.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v254.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v261 = *MEMORY[0x277D82810];
  *&v262[*(v261 - 24) - 8] = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x23EE80040](v262);
  std::ostream::~ostream();
  MEMORY[0x23EE80250](v263);
  if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v257.__r_.__value_.__l.__data_);
  }

  if (!v227)
  {
    *a4 = v258;
    a4[2] = v259;
    v259 = 0;
    v258 = 0uLL;
  }

  if (SHIBYTE(v259) < 0)
  {
    operator delete(v258);
  }
}

void sub_239E8DBEC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, int a13, char a14, void *a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, void *a43, void *a44, void *a45, void *a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54)
{
  v57 = STACK[0x250];
  if (STACK[0x250])
  {
    STACK[0x258] = v57;
    operator delete(v57);
  }

  v58 = STACK[0x5B0];
  if (STACK[0x5B0])
  {
    STACK[0x5B8] = v58;
    operator delete(v58);
  }

  v59 = STACK[0x5E0];
  if (STACK[0x5E0])
  {
    STACK[0x5E8] = v59;
    operator delete(v59);
  }

  v60 = STACK[0x600];
  if (STACK[0x600])
  {
    STACK[0x608] = v60;
    operator delete(v60);
  }

  v61 = STACK[0x618];
  if (STACK[0x618])
  {
    STACK[0x620] = v61;
    operator delete(v61);
  }

  v62 = STACK[0x630];
  if (STACK[0x630])
  {
    STACK[0x638] = v62;
    operator delete(v62);
  }

  v63 = STACK[0x648];
  if (STACK[0x648])
  {
    STACK[0x650] = v63;
    operator delete(v63);
  }

  sub_239E99BE0(&STACK[0x660]);
  sub_239E7B644(&STACK[0x690]);
  sub_239E7B644(&STACK[0x6C0]);
  sub_239E7B644(&STACK[0x6F0]);
  sub_239E6A66C(&STACK[0x718], STACK[0x720]);
  if (SLOBYTE(STACK[0x747]) < 0)
  {
    operator delete(STACK[0x730]);
  }

  STACK[0x6F0] = &STACK[0x798];
  sub_239E99B30(&STACK[0x6F0]);
  if (a14 < 0)
  {
    operator delete(a12);
  }

  if (SLOBYTE(STACK[0x7C7]) < 0)
  {
    operator delete(STACK[0x7B0]);
  }

  if (SLOBYTE(STACK[0x7E7]) < 0)
  {
    operator delete(STACK[0x7D0]);
  }

  if (SLOBYTE(STACK[0x807]) < 0)
  {
    operator delete(STACK[0x7F0]);
  }

  if (SLOBYTE(STACK[0x827]) < 0)
  {
    operator delete(STACK[0x810]);
  }

  sub_239E8AAF8(&STACK[0x8E0]);
  if (SLOBYTE(STACK[0x83F]) < 0)
  {
    operator delete(STACK[0x828]);
  }

  if (a2 == 1)
  {
    v64 = __cxa_begin_catch(a1);
    v65 = (*(*v64 + 16))(v64);
    sub_239E552A0(a15, v65);
    __cxa_end_catch();
    JUMPOUT(0x239E8DB8CLL);
  }

  if (SLOBYTE(STACK[0x857]) < 0)
  {
    operator delete(STACK[0x840]);
  }

  _Unwind_Resume(a1);
}

void sub_239E8E4FC(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_239E797B4();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_239E91AC8(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_239E8E5D0(void *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, void *a9@<X8>, float32x4_t a10@<Q0>, float32x4_t a11@<Q1>, float32x4_t a12@<Q2>, float32x4_t a13@<Q3>, void *a14, void *a15, void *a16)
{
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v294 = a6;
  v32 = a7;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  v293 = a9;
  v295 = v24;
  if (v22 && objc_msgSend_stride(v22, v25, v26, v27, v33, v34, v35, v36, v28, v29, v30, v31))
  {
    v37 = objc_msgSend_bufferSize(v22, v25, v26, v27, v33, v34, v35, v36, v28, v29, v30, v31);
    v49 = v37 / objc_msgSend_stride(v22, v38, v39, v40, v45, v46, v47, v48, v41, v42, v43, v44) - 1;
  }

  else
  {
    v49 = -1;
  }

  if (v294 && objc_msgSend_stride(v294, v25, v26, v27, v33, v34, v35, v36, v28, v29, v30, v31))
  {
    v50 = objc_msgSend_bufferSize(v294, v25, v26, v27, v33, v34, v35, v36, v28, v29, v30, v31);
    v62 = v50 / objc_msgSend_stride(v294, v51, v52, v53, v58, v59, v60, v61, v54, v55, v56, v57) - 1;
  }

  else
  {
    v62 = -1;
  }

  v288 = v62;
  if (v32 && objc_msgSend_stride(v32, v25, v26, v27, v33, v34, v35, v36, v28, v29, v30, v31))
  {
    v63 = objc_msgSend_bufferSize(v32, v25, v26, v27, v33, v34, v35, v36, v28, v29, v30, v31);
    v75 = v63 / objc_msgSend_stride(v32, v64, v65, v66, v71, v72, v73, v74, v67, v68, v69, v70) - 1;
  }

  else
  {
    v75 = -1;
  }

  v296 = v75;
  if (v23 && objc_msgSend_stride(v23, v25, v26, v27, v33, v34, v35, v36, v28, v29, v30, v31))
  {
    v76 = objc_msgSend_bufferSize(v23, v25, v26, v27, v33, v34, v35, v36, v28, v29, v30, v31);
    v88 = v76 / objc_msgSend_stride(v23, v77, v78, v79, v84, v85, v86, v87, v80, v81, v82, v83) - 1;
  }

  else
  {
    v88 = -1;
  }

  v285 = v88;
  v287 = v23;
  if (v295 && objc_msgSend_stride(v295, v25, v26, v27, v33, v34, v35, v36, v28, v29, v30, v31))
  {
    v89 = objc_msgSend_bufferSize(v295, v25, v26, v27, v33, v34, v35, v36, v28, v29, v30, v31);
    v101 = v89 / objc_msgSend_stride(v295, v90, v91, v92, v97, v98, v99, v100, v93, v94, v95, v96) - 1;
  }

  else
  {
    v101 = -1;
  }

  v284 = v101;
  if (a1[1] != *a1)
  {
    v102 = 0;
    v297 = v32;
    do
    {
      if (a2[9])
      {
        v300 = 0uLL;
        v301 = 0;
        v103 = objc_msgSend_stride(v22, v25, v26, v27, v33, v34, v35, v36, v28, v29, v30, v31);
        v115 = objc_msgSend_stride(v32, v104, v105, v106, v111, v112, v113, v114, v107, v108, v109, v110);
        v127 = objc_msgSend_dataStart(v22, v116, v117, v118, v123, v124, v125, v126, v119, v120, v121, v122);
        v146 = objc_msgSend_dataStart(v32, v128, v129, v130, v135, v136, v137, v138, v131, v132, v133, v134);
        v151 = *(*a1 + 4 * v102);
        if (v49 >= v151)
        {
          v152 = *(*a1 + 4 * v102);
        }

        else
        {
          v152 = v49;
        }

        if (v296 >= v151)
        {
          v153 = *(*a1 + 4 * v102);
        }

        else
        {
          v153 = v296;
        }

        v154 = v103 * (v152 & ~(v152 >> 31));
        if (v154 + 12 <= objc_msgSend_bufferSize(v22, v139, v140, v141, v147, v148, v149, v150, v142, v143, v144, v145) && (v155 = v115 * (v153 & ~(v153 >> 31)), v155 + 12 <= objc_msgSend_bufferSize(v297, v25, v26, v27, v33, v34, v35, v36, v28, v29, v30, v31)))
        {
          v299 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(a13, a10, *(v127 + v154)), a11, *(v127 + v154 + 4)), a12, *(v127 + v154 + 8));
          sub_239E8E4FC(&v300, &v299);
          *(v299.i64 + 4) = 0;
          v299.i32[0] = 0;
          v185.i64[0] = *(v146 + v155);
          v185.i32[2] = *(v146 + v155 + 8);
          v299 = v185;
          sub_239E8E4FC(&v300, &v299);
          v303 = &v300;
          v157 = *(sub_239E98F30(a16, &v300, &unk_239F9BFF0, &v303, &v302) + 10) + 1;
          v156 = 1;
        }

        else
        {
          v156 = 0;
          v157 = -1;
        }

        v32 = v297;
        if (v300.i64[0])
        {
          v300.i64[1] = v300.i64[0];
          operator delete(v300.i64[0]);
        }

        if ((v156 & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v158 = objc_msgSend_stride(v22, v25, v26, v27, v33, v34, v35, v36, v28, v29, v30, v31);
        v177 = objc_msgSend_dataStart(v22, v159, v160, v161, v166, v167, v168, v169, v162, v163, v164, v165);
        if (v49 >= *(*a1 + 4 * v102))
        {
          v182 = *(*a1 + 4 * v102);
        }

        else
        {
          v182 = v49;
        }

        v183 = objc_msgSend_bufferSize(v22, v170, v171, v172, v178, v179, v180, v181, v173, v174, v175, v176);
        v184 = v158 * (v182 & ~(v182 >> 31));
        if (v184 + 12 > v183)
        {
          goto LABEL_64;
        }

        v300 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(a13, a10, *(v177 + v184)), a11, *(v177 + v184 + 4)), a12, *(v177 + v184 + 8));
        v299.i64[0] = &v300;
        v157 = sub_239E91870(a8, &v300, &unk_239F9BFF0, &v299)[2].i32[0] + 1;
      }

      if (a2[8] != 1)
      {
        v214 = -1;
        goto LABEL_49;
      }

      v186 = objc_msgSend_dataStart(v294, v25, v26, v27, v33, v34, v35, v36, v28, v29, v30, v31);
      v205 = objc_msgSend_stride(v294, v187, v188, v189, v194, v195, v196, v197, v190, v191, v192, v193);
      if (v288 >= *(*a1 + 4 * v102))
      {
        v210 = *(*a1 + 4 * v102);
      }

      else
      {
        v210 = v288;
      }

      v211 = objc_msgSend_bufferSize(v294, v198, v199, v200, v206, v207, v208, v209, v201, v202, v203, v204);
      v212 = v205 * (v210 & ~(v210 >> 31));
      if (v212 + 12 <= v211)
      {
        v213 = v186 + v212;
        *(v300.i64 + 4) = 0;
        v300.i32[0] = 0;
        v33.n128_u64[0] = *v213;
        v33.n128_u32[2] = *(v213 + 8);
        v300 = v33;
        v299.i64[0] = &v300;
        v214 = sub_239E992C8(a15, &v300, &unk_239F9BFF0, &v299)[2].i32[0] + 1;
LABEL_49:
        if (a2[10] == 1)
        {
          v215 = objc_msgSend_dataStart(v287, v25, v26, v27, v33, v34, v35, v36, v28, v29, v30, v31);
          v234 = objc_msgSend_stride(v287, v216, v217, v218, v223, v224, v225, v226, v219, v220, v221, v222);
          if (v285 >= *(*a1 + 4 * v102))
          {
            v239 = *(*a1 + 4 * v102);
          }

          else
          {
            v239 = v285;
          }

          v300 = 0uLL;
          v240 = objc_msgSend_bufferSize(v287, v227, v228, v229, v235, v236, v237, v238, v230, v231, v232, v233);
          v252 = v234 * (v239 & ~(v239 >> 31));
          if (v252 + 8 <= v240)
          {
            v253 = (v215 + v252);
            v248.n128_u32[0] = *v253;
            v249.n128_u64[1] = v300.u64[1];
            v300.i32[0] = *v253;
            v249.n128_u32[0] = v300.i32[0];
            v249.n128_u32[1] = v253[1];
            v300 = v249;
          }

          if (a2[11] == 1)
          {
            v254 = objc_msgSend_dataStart(v295, v241, v242, v243, v248, v249, v250, v251, v244, v245, v246, v247);
            v273 = objc_msgSend_stride(v295, v255, v256, v257, v262, v263, v264, v265, v258, v259, v260, v261);
            if (v284 >= *(*a1 + 4 * v102))
            {
              v278 = *(*a1 + 4 * v102);
            }

            else
            {
              v278 = v284;
            }

            v279 = objc_msgSend_bufferSize(v295, v266, v267, v268, v274, v275, v276, v277, v269, v270, v271, v272);
            v280 = v273 * (v278 & ~(v278 >> 31));
            if (v280 + 8 <= v279)
            {
              v281.i64[0] = v300.i64[0];
              v282 = *(v254 + v280);
              v281.i64[1] = v282;
              v300 = v281;
            }
          }

          v299.i64[0] = &v300;
          v283 = sub_239E99520(a14, &v300, &unk_239F9BFF0, &v299)[2].i32[0] + 1;
        }

        else
        {
          v283 = -1;
        }

        v33.n128_u64[0] = __PAIR64__(v283, v157);
        v33.n128_u32[2] = v214;
        v300 = v33;
        sub_239E8E4FC(v293, &v300);
        v32 = v297;
      }

LABEL_64:
      ++v102;
    }

    while (v102 < (a1[1] - *a1) >> 2);
  }
}

void sub_239E8EBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27)
{
  v31 = *a25;
  if (*a25)
  {
    *(a25 + 8) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239E8EC98(uint64_t result, char a2)
{
  *(result + 24) = 0;
  *(result + 16) = 0;
  *(result + 32) = a2;
  *result = &unk_284D16FF8;
  *(result + 8) = result + 16;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

void *sub_239E8ECCC(void *a1)
{
  *a1 = &unk_284D16FF8;
  v2 = a1[6];
  if (v2)
  {
    sub_239E9A9B4(v2);
  }

  *a1 = &unk_284D17508;
  sub_239E91CE0((a1 + 1), a1[2]);
  return a1;
}

void sub_239E8ED44(void *a1)
{
  sub_239E8ECCC(a1);

  JUMPOUT(0x23EE802C0);
}

void sub_239E8ED7C(uint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v9 = a2;
  v10 = a4;
  if (sub_239F5C490(v9, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21))
  {
    v40 = sub_239F5C624(v9, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
    if (v40)
    {
      v45 = sub_239F5C560(v9, v33, v34, v35, v36, v37, v38, v39, v41, v42, v43, v44);
      if (v45)
      {
        __ptr = 0;
        v47 = 0;
        v48 = 0;
        sub_239E7967C(&__ptr, &v40->_p + 1);
        fread(__ptr, 1uLL, v40, v45);
        *(&v40->_p + __ptr) = 0;
        fclose(v45);
        sub_239E8EEE4(v9, __ptr, v40, v10, *a3, *(a1 + 32), a5);
        if (__ptr)
        {
          v47 = __ptr;
          operator delete(__ptr);
        }
      }

      else
      {
        sub_239E552A0(a5, "Could not read OBJ file");
      }
    }

    else
    {
      sub_239E552A0(a5, "OBJ file has no contents");
    }
  }

  else
  {
    sub_239E552A0(a5, "Could not open OBJ file");
  }
}

void sub_239E8EEB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239E8EEE4(void *a1@<X0>, const std::string::value_type *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, int a5@<W4>, int a6@<W5>, void *a7@<X8>)
{
  v587 = *MEMORY[0x277D85DE8];
  v519 = a1;
  v550 = a2;
  v524 = a4;
  if (!v524)
  {
    sub_239E552A0(a7, "cannot import to nil asset");
    goto LABEL_556;
  }

  v11 = 0;
  v12 = &a2[a3];
  v544 = 0;
  v546 = 0u;
  v542 = 0u;
  v543 = 0u;
  v540 = 0u;
  v541 = 0u;
  v538 = 0u;
  v539 = 0u;
  v537 = 0u;
  v545 = &v546;
  v548 = 0;
  v549 = 0;
  v547 = 0;
  memset(&__str, 0, sizeof(__str));
  v529 = *(MEMORY[0x277D82820] + 24);
  v531 = *MEMORY[0x277D82820];
  v13 = a7;
  v520 = a7;
  do
  {
    v586 = 0u;
    v585 = 0u;
    v584 = 0u;
    v582 = 0u;
    v583 = 0u;
    v580 = 0u;
    v581 = 0u;
    v578 = 0u;
    v579 = 0u;
    v576 = 0u;
    v577 = 0u;
    v574 = 0u;
    *v575 = 0u;
    v572 = 0u;
    v573 = 0u;
    *v570 = 0u;
    v571 = 0u;
    sub_239E88804(&v550, v12, __p);
    sub_239E8897C(v570, __p, 8);
    if (SBYTE7(v557) < 0)
    {
      operator delete(__p[0]);
    }

    v567 = 0;
    v566 = 0;
    v568 = 0;
    sub_239E88B00(v570, &v566);
    if ((SHIBYTE(v568) & 0x80000000) == 0)
    {
      v14 = v566;
      if (v566 == 35)
      {
        v15 = 3;
        goto LABEL_175;
      }

      if (!HIBYTE(v568))
      {
        goto LABEL_38;
      }

      if (HIBYTE(v568) != 1)
      {
        if (HIBYTE(v568) == 6)
        {
          v16 = v566 == 1819047021 && WORD2(v566) == 25193;
          if (v16)
          {
            goto LABEL_44;
          }

          if (v566 == 1835365237 && WORD2(v566) == 27764)
          {
            goto LABEL_70;
          }

          goto LABEL_162;
        }

        goto LABEL_67;
      }

      if (v566 != 103)
      {
        if (v566 == 115)
        {
LABEL_38:
          v15 = 3;
          goto LABEL_173;
        }

        if (v566 == 111)
        {
          goto LABEL_139;
        }

LABEL_144:
        if (v14 == 118)
        {
          goto LABEL_149;
        }

        goto LABEL_162;
      }

LABEL_39:
      *&v560 = 0;
      v558 = 0u;
      v559 = 0u;
      *__p = 0u;
      v557 = 0u;
      DWORD2(v560) = -2;
      sub_239E91D94(&v547, __p);
      __dst.__r_.__value_.__r.__words[0] = &v559;
      sub_239E95924(&__dst);
      if (SHIBYTE(v558) < 0)
      {
        operator delete(*(&v557 + 1));
      }

      if (SBYTE7(v557) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_43;
    }

    v15 = 3;
    if (*v566 == 35 || !v567)
    {
      goto LABEL_173;
    }

    if (v567 >= 0x801)
    {
      sub_239E552A0(v13, "lines in file too long to parse");
      v15 = 1;
      goto LABEL_173;
    }

    if (v567 == 1)
    {
      if (*v566 == 115)
      {
        goto LABEL_38;
      }
    }

    else if (v567 == 6 && *v566 == 1819047021 && *(v566 + 2) == 25193)
    {
LABEL_44:
      __p[0] = 0;
      __p[1] = 0;
      *&v557 = 0;
      std::stringbuf::str();
      v20 = std::string::find(__p, 35, 0);
      if (v20 != -1)
      {
        std::string::basic_string(&__dst, __p, 0, v20, &v569);
        if (SBYTE7(v557) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = *&__dst.__r_.__value_.__l.__data_;
        *&v557 = *(&__dst.__r_.__value_.__l + 2);
      }

      v21 = BYTE7(v557);
      v22 = BYTE7(v557);
      if (SBYTE7(v557) < 0)
      {
        v21 = __p[1];
      }

      if (v21 >= 8)
      {
        std::string::basic_string(&__dst, __p, 7uLL, 0xFFFFFFFFFFFFFFFFLL, &v569);
        if (SBYTE7(v557) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = *&__dst.__r_.__value_.__l.__data_;
        *&v557 = *(&__dst.__r_.__value_.__l + 2);
        sub_239E91570(__p);
        sub_239E95344(&v545, __p, __p);
        v22 = BYTE7(v557);
      }

      if ((v22 & 0x80) == 0)
      {
        goto LABEL_172;
      }

      v23 = __p[0];
      goto LABEL_126;
    }

    v19 = v567;
    if (v567 == 1)
    {
      if (*v566 == 103)
      {
        goto LABEL_39;
      }

      v19 = v567;
      if (*v566 == 111)
      {
LABEL_139:
        *&v560 = 0;
        v558 = 0u;
        v559 = 0u;
        *__p = 0u;
        v557 = 0u;
        DWORD2(v560) = -2;
        sub_239E91D94(&v547, __p);
        __dst.__r_.__value_.__r.__words[0] = &v559;
        sub_239E95924(&__dst);
        if (SHIBYTE(v558) < 0)
        {
          operator delete(*(&v557 + 1));
        }

        if (SBYTE7(v557) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_43:
        sub_239E88B00(v570, v548 - 80);
        std::string::operator=((v548 - 56), &__str);
LABEL_172:
        v15 = 0;
        goto LABEL_173;
      }

      if ((v568 & 0x8000000000000000) == 0)
      {
        v14 = v566;
LABEL_67:
        if (HIBYTE(v568) == 1)
        {
          goto LABEL_144;
        }

        if (HIBYTE(v568) != 2)
        {
          goto LABEL_162;
        }

        v25 = &v566;
        goto LABEL_161;
      }
    }

    if (v19 == 6)
    {
      if (*v566 != 1835365237 || *(v566 + 2) != 27764)
      {
        if ((v568 & 0x8000000000000000) == 0)
        {
          v14 = v566;
          goto LABEL_67;
        }

        v19 = v567;
        goto LABEL_147;
      }

LABEL_70:
      sub_239E88B00(v570, &__str);
      v26 = v548;
      if (v548 == v547)
      {
        *&v560 = 0;
        v558 = 0u;
        v559 = 0u;
        *__p = 0u;
        v557 = 0u;
        DWORD2(v560) = -2;
        sub_239E91D94(&v547, __p);
        __dst.__r_.__value_.__r.__words[0] = &v559;
        sub_239E95924(&__dst);
        if (SHIBYTE(v558) < 0)
        {
          operator delete(*(&v557 + 1));
        }

        if (SBYTE7(v557) < 0)
        {
          operator delete(__p[0]);
        }

        MEMORY[0x23EE7FFA0](v548 - 80, "MDL_OBJ");
        v26 = v548;
      }

      memset(&__dst, 0, sizeof(__dst));
      if (*(v26 - 57) < 0)
      {
        sub_239E5BAE0(&__dst, *(v26 - 80), *(v26 - 72));
        v26 = v548;
      }

      else
      {
        v27 = *(v26 - 80);
        __dst.__r_.__value_.__r.__words[2] = *(v26 - 64);
        *&__dst.__r_.__value_.__l.__data_ = v27;
      }

      v527 = v11;
      v28 = *(v26 - 33);
      if (v28 < 0)
      {
        v29 = *(v26 - 48);
        if (!v29)
        {
          goto LABEL_96;
        }

LABEL_83:
        v30 = (v26 - 56);
        size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __dst.__r_.__value_.__l.__size_;
        }

        if (v28 >= 0)
        {
          v33 = v30;
        }

        else
        {
          v33 = *v30;
        }

        if (v28 >= 0)
        {
          v34 = v28;
        }

        else
        {
          v34 = v29;
        }

        if (v34)
        {
          if (size < v34)
          {
            goto LABEL_96;
          }

          v45 = p_dst;
          v46 = p_dst + size;
          v47 = *v33;
          while (1)
          {
            v48 = size - v34;
            if (v48 == -1)
            {
              goto LABEL_96;
            }

            v49 = memchr(v45, v47, v48 + 1);
            if (!v49)
            {
              goto LABEL_96;
            }

            v50 = v49;
            if (!memcmp(v49, v33, v34))
            {
              break;
            }

            v45 = (v50 + 1);
            size = v46 - (v50 + 1);
            if (size < v34)
            {
              goto LABEL_96;
            }
          }

          if (v50 == v46)
          {
            goto LABEL_96;
          }

          v44 = v50 - p_dst;
          if (v50 - p_dst == -1)
          {
            goto LABEL_96;
          }
        }

        else
        {
          v44 = 0;
        }

        __p[0] = 0;
        __p[1] = 0;
        *&v557 = 0;
        std::string::basic_string(__p, &__dst, 0, v44, &v569);
        sub_239E91E88(__p, &__str.__r_.__value_.__l.__data_, &v569);
        v11 = v527;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        __dst = v569;
        v13 = v520;
        if (SBYTE7(v557) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        if (*(v26 - 33))
        {
          v29 = *(v26 - 48);
          goto LABEL_83;
        }

LABEL_96:
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v35 = __dst.__r_.__value_.__l.__size_;
        }

        __p[1] = 0;
        *&v557 = 0;
        __p[0] = 0;
        sub_239E959D0(__p, v35 + 1);
        if ((SBYTE7(v557) & 0x80u) == 0)
        {
          v36 = __p;
        }

        else
        {
          v36 = __p[0];
        }

        if (v35)
        {
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v37 = &__dst;
          }

          else
          {
            v37 = __dst.__r_.__value_.__r.__words[0];
          }

          memmove(v36, v37, v35);
        }

        *(v36 + v35) = 95;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v39 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v39 = __str.__r_.__value_.__l.__size_;
        }

        v40 = std::string::append(__p, p_str, v39);
        v41 = v40->__r_.__value_.__r.__words[0];
        v569.__r_.__value_.__r.__words[0] = v40->__r_.__value_.__l.__size_;
        *(v569.__r_.__value_.__r.__words + 7) = *(&v40->__r_.__value_.__r.__words[1] + 7);
        v42 = HIBYTE(v40->__r_.__value_.__r.__words[2]);
        v40->__r_.__value_.__l.__size_ = 0;
        v40->__r_.__value_.__r.__words[2] = 0;
        v40->__r_.__value_.__r.__words[0] = 0;
        v11 = v527;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        __dst.__r_.__value_.__r.__words[0] = v41;
        __dst.__r_.__value_.__l.__size_ = v569.__r_.__value_.__r.__words[0];
        *(&__dst.__r_.__value_.__r.__words[1] + 7) = *(v569.__r_.__value_.__r.__words + 7);
        *(&__dst.__r_.__value_.__s + 23) = v42;
        if (SBYTE7(v557) < 0)
        {
          operator delete(__p[0]);
        }

        v13 = v520;
      }

      v43 = v548;
      if (*(v548 - 24) != *(v548 - 32))
      {
        *&v560 = 0;
        v558 = 0u;
        v559 = 0u;
        *__p = 0u;
        v557 = 0u;
        DWORD2(v560) = -2;
        sub_239E91D94(&v547, __p);
        v569.__r_.__value_.__r.__words[0] = &v559;
        sub_239E95924(&v569);
        if (SHIBYTE(v558) < 0)
        {
          operator delete(*(&v557 + 1));
        }

        if (SBYTE7(v557) < 0)
        {
          operator delete(__p[0]);
        }

        v43 = v548;
      }

      std::string::operator=((v43 - 80), &__dst);
      std::string::operator=((v548 - 56), &__str);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_172;
      }

      v23 = __dst.__r_.__value_.__r.__words[0];
LABEL_126:
      operator delete(v23);
      goto LABEL_172;
    }

LABEL_147:
    if (v19 == 1)
    {
      if (*v566 == 118)
      {
LABEL_149:
        LODWORD(__dst.__r_.__value_.__l.__data_) = 0;
        LODWORD(v569.__r_.__value_.__l.__data_) = 0;
        LODWORD(__s1) = 0;
        MEMORY[0x23EE80090](v570, &__dst);
        MEMORY[0x23EE80090](v570, &v569);
        MEMORY[0x23EE80090](v570, &__s1);
        __p[0] = __PAIR64__(v569.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__data_);
        LODWORD(__p[1]) = __s1;
        v51 = *(&v537 + 1);
        if (*(&v537 + 1) >= v538)
        {
          v53 = sub_239E95A74(&v537, __p);
        }

        else
        {
          v52 = __p[0];
          *(*(&v537 + 1) + 8) = __p[1];
          *v51 = v52;
          v53 = v51 + 12;
        }

        *(&v537 + 1) = v53;
        if ((*(&v572 + *(v570[0] - 3)) & 2) == 0)
        {
          LODWORD(v551[0]) = 0;
          LODWORD(v533[0]) = 0;
          LODWORD(v564) = 0;
          MEMORY[0x23EE80090](v570, v551);
          v54 = *(&v572 + *(v570[0] - 3));
          MEMORY[0x23EE80090](v570, v533);
          v55 = *(&v572 + *(v570[0] - 3));
          MEMORY[0x23EE80090](v570, &v564);
          v535 = 1065353216;
          if ((*(&v572 + *(v570[0] - 3)) & 2) == 0)
          {
            MEMORY[0x23EE80090](v570, &v535);
          }

          v56 = v55 | v54;
          v13 = v520;
          if ((v56 & 2) == 0 && -1 - 0x5555555555555555 * ((*(&v537 + 1) - v537) >> 2) == (*(&v543 + 1) - v543) >> 4)
          {
            __p[0] = __PAIR64__(v533[0], v551[0]);
            __p[1] = __PAIR64__(v535, v564);
            sub_239E91F5C(&v543, __p);
          }
        }

        goto LABEL_172;
      }

      if ((v568 & 0x8000000000000000) == 0)
      {
        goto LABEL_162;
      }
    }

    if (v567 != 2)
    {
      goto LABEL_162;
    }

    v25 = v566;
LABEL_161:
    if (*v25 == 25462)
    {
      LODWORD(__dst.__r_.__value_.__l.__data_) = 0;
      LODWORD(v569.__r_.__value_.__l.__data_) = 0;
      LODWORD(__s1) = 0;
      LODWORD(v551[0]) = 0;
      MEMORY[0x23EE80090](v570, &__dst);
      MEMORY[0x23EE80090](v570, &v569);
      MEMORY[0x23EE80090](v570, &__s1);
      MEMORY[0x23EE80090](v570, v551);
      __p[0] = __PAIR64__(v569.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__data_);
      __p[1] = __PAIR64__(v551[0], __s1);
      sub_239E91F5C(&v543, __p);
      goto LABEL_172;
    }

LABEL_162:
    if (sub_239E55D74(&v566, "vt"))
    {
      LODWORD(__dst.__r_.__value_.__l.__data_) = 0;
      LODWORD(v569.__r_.__value_.__l.__data_) = 0;
      MEMORY[0x23EE80090](v570, &__dst);
      MEMORY[0x23EE80090](v570, &v569);
      __p[0] = __PAIR64__(v569.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__data_);
      sub_239E92038(&v538 + 8, __p);
      if ((*(&v572 + *(v570[0] - 3)) & 2) == 0)
      {
        MEMORY[0x23EE80090](v570, &__dst);
        if ((*(&v572 + *(v570[0] - 3)) & 2) == 0)
        {
          MEMORY[0x23EE80090](v570, &v569);
          __p[0] = __PAIR64__(v569.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__data_);
          sub_239E92038(&v540, __p);
        }
      }

      goto LABEL_172;
    }

    if (sub_239E55D74(&v566, "vt2"))
    {
      LODWORD(__dst.__r_.__value_.__l.__data_) = 0;
      LODWORD(v569.__r_.__value_.__l.__data_) = 0;
      MEMORY[0x23EE80090](v570, &__dst);
      MEMORY[0x23EE80090](v570, &v569);
      __p[0] = __PAIR64__(v569.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__data_);
      sub_239E92038(&v540, __p);
      goto LABEL_172;
    }

    if (sub_239E55D74(&v566, "vn"))
    {
      LODWORD(__dst.__r_.__value_.__l.__data_) = 0;
      LODWORD(v569.__r_.__value_.__l.__data_) = 0;
      LODWORD(__s1) = 0;
      MEMORY[0x23EE80090](v570, &__dst);
      MEMORY[0x23EE80090](v570, &v569);
      MEMORY[0x23EE80090](v570, &__s1);
      __p[0] = __PAIR64__(v569.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__data_);
      LODWORD(__p[1]) = __s1;
      v57 = v542;
      if (v542 >= *(&v542 + 1))
      {
        v59 = sub_239E95A74(&v541 + 8, __p);
      }

      else
      {
        v58 = __p[0];
        *(v542 + 8) = __p[1];
        *v57 = v58;
        v59 = v57 + 12;
      }

      v15 = 0;
      *&v542 = v59;
      goto LABEL_173;
    }

    if (sub_239E55D74(&v566, "f"))
    {
      v70 = v548;
      if (v548 == v547)
      {
        *&v560 = 0;
        v558 = 0u;
        v559 = 0u;
        *__p = 0u;
        v557 = 0u;
        DWORD2(v560) = -2;
        sub_239E91D94(&v547, __p);
        sub_239E91E2C(__p);
        MEMORY[0x23EE7FFA0](v548 - 80, "MDL_OBJ");
        v70 = v548;
      }

      __p[0] = 0;
      __p[1] = 0;
      *&v557 = 0;
      sub_239E92110(v70 - 32, __p);
      v71 = __p[0];
      if (__p[0])
      {
        __p[1] = __p[0];
LABEL_285:
        operator delete(v71);
      }

      while (2)
      {
        while (2)
        {
          if ((*(&v572 + *(v570[0] - 3)) & 2) != 0)
          {
            v106 = *(v548 - 24);
            v108 = *(v106 - 24);
            v109 = *(v106 - 16);
            v107 = v106 - 24;
            if ((v109 - v108) <= 0x20)
            {
              sub_239E95CEC(v548 - 32, v107);
            }

            v15 = 0;
            goto LABEL_173;
          }

          __p[0] = 0;
          __p[1] = 0;
          *&v557 = 0;
          sub_239E88B00(v570, __p);
          v73 = SBYTE7(v557);
          if ((SBYTE7(v557) & 0x8000000000000000) != 0)
          {
            v73 = __p[1];
            if (!__p[1])
            {
              goto LABEL_284;
            }

            v74 = __p[0];
          }

          else
          {
            if (!BYTE7(v557))
            {
              continue;
            }

            v74 = __p;
          }

          break;
        }

        v75 = strtol(v74, 0, 10);
        v76 = *v74;
        v77 = v74;
        if (v76 == 45)
        {
          v77 = v74 + 1;
          v76 = *(v74 + 1);
        }

        if ((v76 - 48) <= 9)
        {
          do
          {
            v78 = *++v77;
            v76 = v78;
          }

          while ((v78 - 48) < 0xA);
        }

        v79 = v73 + v74;
        if (v79 <= v77)
        {
          v82 = 0;
          v83 = 0;
          v81 = 0;
          v84 = -1;
          v85 = -1;
          v86 = -1;
        }

        else
        {
          if (v76 == 47)
          {
            v80 = v77 + 1;
          }

          else
          {
            v80 = v77;
          }

          if (v79 <= v80)
          {
            v81 = 0;
LABEL_224:
            v85 = -1;
          }

          else
          {
            if (*v80 == 47)
            {
              v81 = 0;
              ++v80;
              goto LABEL_224;
            }

            v85 = strtol(v80, 0, 10);
            v87 = *v80;
            if (v87 == 45)
            {
              v88 = *++v80;
              v87 = v88;
            }

            if ((v87 - 48) <= 9)
            {
              do
              {
                v89 = *++v80;
                v87 = v89;
              }

              while ((v89 - 48) < 0xA);
            }

            if (v87 == 47)
            {
              ++v80;
            }

            v81 = 1;
          }

          if (v79 <= v80)
          {
            v82 = 0;
LABEL_236:
            v86 = -1;
          }

          else
          {
            if (*v80 == 47)
            {
              v82 = 0;
              ++v80;
              goto LABEL_236;
            }

            v90 = v85;
            v86 = strtol(v80, 0, 10);
            v91 = *v80;
            if (v91 == 45)
            {
              v92 = *++v80;
              v91 = v92;
            }

            v85 = v90;
            if ((v91 - 48) <= 9)
            {
              do
              {
                v93 = *++v80;
                v91 = v93;
              }

              while ((v93 - 48) < 0xA);
            }

            if (v91 == 47)
            {
              ++v80;
            }

            v82 = 1;
          }

          if (v79 <= v80)
          {
            v83 = 0;
            v84 = -1;
          }

          else
          {
            if (*v80 == 47)
            {
              v94 = v80 + 1;
            }

            else
            {
              v94 = v80;
            }

            v95 = v85;
            v96 = v86;
            v84 = strtol(v94, 0, 10);
            v86 = v96;
            v85 = v95;
            v83 = 1;
          }
        }

        v97 = 0xAAAAAAAAAAAAAAABLL * ((*(&v537 + 1) - v537) >> 2);
        if (*(&v537 + 1) == v537 || v75 > v97)
        {
LABEL_279:
          v13 = v520;
          if (SBYTE7(v557) < 0)
          {
LABEL_284:
            v71 = __p[0];
            goto LABEL_285;
          }

          continue;
        }

        break;
      }

      v99 = v75 - 1;
      if (v75 < 1)
      {
        if ((v75 & 0x80000000) == 0 || 0x5555555555555555 * ((*(&v537 + 1) - v537) >> 2) > v75)
        {
          goto LABEL_279;
        }

        v99 = v97 + v75;
      }

      else if ((v75 & 0x7FFFFFFFu) > v97)
      {
        goto LABEL_279;
      }

      *&v100 = v99 | 0xFFFFFFFF00000000;
      *(&v100 + 1) = 0;
      *&__dst.__r_.__value_.__l.__data_ = v100;
      if (v81)
      {
        v101 = v85 - 1;
        if (v85 < 1)
        {
          if (v85 < 0 && v85 >= -((v539 - *(&v538 + 1)) >> 3))
          {
            v101 = v85 + ((v539 - *(&v538 + 1)) >> 3);
LABEL_260:
            DWORD1(v100) = v101;
            *&__dst.__r_.__value_.__l.__data_ = v100;
          }
        }

        else if (v85 <= ((v539 - *(&v538 + 1)) >> 3))
        {
          goto LABEL_260;
        }
      }

      LODWORD(__dst.__r_.__value_.__r.__words[1]) = -1;
      if (v82)
      {
        v102 = v86 - 1;
        if (v86 < 1)
        {
          if (v86 < 0)
          {
            v103 = (v542 - *(&v541 + 1)) >> 2;
            if (v86 >= (0x5555555555555555 * v103))
            {
              v102 = v86 - 1431655765 * v103;
LABEL_269:
              DWORD2(v100) = v102;
              *&__dst.__r_.__value_.__l.__data_ = v100;
            }
          }
        }

        else if (0xAAAAAAAAAAAAAAABLL * ((v542 - *(&v541 + 1)) >> 2) >= v86)
        {
          goto LABEL_269;
        }
      }

      v104 = *&__dst.__r_.__value_.__l.__data_;
      HIDWORD(__dst.__r_.__value_.__r.__words[1]) = -1;
      if (v83)
      {
        v105 = v84 - 1;
        if (v84 < 1)
        {
          if (v84 < 0 && v84 >= -((*(&v543 + 1) - v543) >> 4))
          {
            v105 = v84 + ((*(&v543 + 1) - v543) >> 4);
LABEL_275:
            HIDWORD(v104) = v105;
            *&__dst.__r_.__value_.__l.__data_ = v104;
          }
        }

        else if (v84 <= ((*(&v543 + 1) - v543) >> 4))
        {
          goto LABEL_275;
        }
      }

      sub_239E8E4FC(*(v548 - 24) - 24, &__dst);
      goto LABEL_279;
    }

    if (sub_239E55D74(&v566, "p") || sub_239E55D74(&v566, "l") || sub_239E55D74(&v566, "t"))
    {
      goto LABEL_172;
    }

    if (SHIBYTE(v568) < 0)
    {
      if (v567 <= 1)
      {
        v15 = 0;
LABEL_174:
        operator delete(v566);
        goto LABEL_175;
      }

      v72 = v566;
    }

    else
    {
      if (HIBYTE(v568) <= 1u)
      {
        v15 = 0;
        goto LABEL_175;
      }

      v72 = &v566;
    }

    v15 = 0;
    if (v72[1] != 32)
    {
      ++v11;
    }

LABEL_173:
    if (SHIBYTE(v568) < 0)
    {
      goto LABEL_174;
    }

LABEL_175:
    v528 = v531;
    v570[0] = v531;
    v526 = v529;
    *(v570 + *(v531 - 3)) = v529;
    *&v571 = MEMORY[0x277D82878] + 16;
    if (SBYTE7(v576) < 0)
    {
      operator delete(v575[0]);
    }

    *&v571 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v571 + 1);
    std::istream::~istream();
    MEMORY[0x23EE80250](&v577 + 8);
    if (v15 != 3 && v15)
    {
      goto LABEL_553;
    }
  }

  while (v12 > v550 && v11 < 200);
  if (v11 >= 200)
  {
    sub_239E552A0(v13, "Too much unrecognized data in file, can't parse");
    goto LABEL_553;
  }

  v110 = v545;
  if (v545 != &v546)
  {
    v111 = 0;
    while (1)
    {
      v533[0] = 0;
      v533[1] = 0;
      v534 = 0;
      v522 = v111;
      if (*(v110 + 55) < 0)
      {
        sub_239E5BAE0(v533, v110[4], v110[5]);
        objc_msgSend_resolver(v524, v112, v113, v114, v119, v120, v121, v122, v115, v116, v117, v118);
      }

      else
      {
        *v533 = *(v110 + 2);
        v534 = v110[6];
        objc_msgSend_resolver(v524, v60, v61, v62, *v533, v67, v68, v69, v63, v64, v65, v66);
      }
      v128 = ;
      if (v534 >= 0)
      {
        objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v123, v533, 4, v129, v130, v131, v132, v124, v125, v126, v127);
      }

      else
      {
        objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v123, v533[0], 4, v129, v130, v131, v132, v124, v125, v126, v127);
      }
      v133 = ;
      v521 = v110;
      v523 = objc_msgSend_resolveAssetNamed_(v128, v134, v133, v135, v140, v141, v142, v143, v136, v137, v138, v139);

      v155 = objc_msgSend_resolver(v524, v144, v145, v146, v151, v152, v153, v154, v147, v148, v149, v150);
      v156 = v523;
      v530 = v155;
      v525 = v156;
      if (v156)
      {
        v168 = sub_239F5C560(v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167);
        v180 = v168;
        if (v168)
        {
          fseek(v168, 0, 2);
          v181 = MEMORY[0x23EE80600](v180);
          v182 = v181 + 1;
          if (v181 != -1)
          {
            v188 = v181;
            v190 = v526;
            v189 = v528;
            v191 = malloc_type_malloc(v181 + 1, 0x100004077774924uLL);
            fseek(v180, 0, 0);
            fread(v191, 1uLL, v188, v180);
            fclose(v180);
            *(v191 + v188) = 0;
            v564 = v191;
            v518 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v517 = v191;
            if (v188 > 0x7FFFFFFFFFFFFFFELL)
            {
              v532 = 0;
LABEL_525:
              free(v517);
              v558 = 0u;
              v559 = 0u;
              *__p = 0u;
              v557 = 0u;
              v184 = v518;
              v438 = objc_msgSend_countByEnumeratingWithState_objects_count_(v184, v430, __p, v570, v434, v435, v436, v437, 16, v431, v432, v433);
              if (v438)
              {
                v439 = *v557;
                do
                {
                  for (i = 0; i != v438; ++i)
                  {
                    if (*v557 != v439)
                    {
                      objc_enumerationMutation(v184);
                    }

                    v441 = *(__p[1] + i);
                    v459 = objc_msgSend_count(v441, v442, v443, v444, v449, v450, v451, v452, v445, v446, v447, v448);
                    if (v459)
                    {
                      for (j = 0; j != v459; ++j)
                      {
                        v465 = objc_msgSend_objectAtIndexedSubscript_(v441, v453, j, v454, v460, v461, v462, v463, v455, v456, v457, v458);
                        v484 = objc_msgSend_stringValue(v465, v466, v467, v468, v473, v474, v475, v476, v469, v470, v471, v472);
                        if (v484)
                        {
                          v489 = objc_msgSend_type(v465, v477, v478, v479, v485, v486, v487, v488, v480, v481, v482, v483) == 1;

                          if (!v489)
                          {
                            objc_msgSend_setType_(v465, v490, 1, v491, v496, v497, v498, v499, v492, v493, v494, v495);
                          }
                        }
                      }
                    }
                  }

                  v438 = objc_msgSend_countByEnumeratingWithState_objects_count_(v184, v500, __p, v570, v504, v505, v506, v507, 16, v501, v502, v503);
                }

                while (v438);
              }

              goto LABEL_306;
            }

            v532 = 0;
            v192 = v191 + v182;
            while (2)
            {
              memset(v563, 0, sizeof(v563));
              *v561 = 0u;
              v562 = 0u;
              v559 = 0u;
              v560 = 0u;
              v557 = 0u;
              v558 = 0u;
              *__p = 0u;
              v193 = v192;
              sub_239E88804(&v564, v192, v570);
              sub_239E8897C(__p, v570, 8);
              if (SBYTE7(v571) < 0)
              {
                operator delete(v570[0]);
              }

              __s1 = 0;
              v554 = 0;
              v555 = 0;
              sub_239E88B00(__p, &__s1);
              if ((SHIBYTE(v555) & 0x80000000) == 0)
              {
                if (__s1 != 35)
                {
                  if (HIBYTE(v555))
                  {
                    if (HIBYTE(v555) == 6)
                    {
                      p_s1 = &__s1;
                      goto LABEL_327;
                    }

                    goto LABEL_331;
                  }

LABEL_355:
                  v204 = v532;
LABEL_516:
                  if (SHIBYTE(v555) < 0)
                  {
                    operator delete(__s1);
                  }

                  v532 = v204;
                }

                __p[0] = v189;
                *(__p + *(v189 - 3)) = v190;
                *&v557 = MEMORY[0x277D82878] + 16;
                if (SBYTE7(v562) < 0)
                {
                  operator delete(v561[0]);
                }

                *&v557 = MEMORY[0x277D82868] + 16;
                std::locale::~locale(&v557 + 1);
                std::istream::~istream();
                MEMORY[0x23EE80250](v563 + 8);
                v192 = v193;
                if (v564 >= v193)
                {
                  goto LABEL_525;
                }

                continue;
              }

              break;
            }

            p_s1 = __s1;
            if (*__s1 == 35 || !v554)
            {
              goto LABEL_355;
            }

            if (v554 != 6)
            {
              goto LABEL_331;
            }

LABEL_327:
            v195 = *p_s1;
            v196 = p_s1[2];
            if (v195 == 1836541294 && v196 == 27764)
            {
              sub_239E88B00(__p, &__s1);
              v255 = [MDLMaterial alloc];
              v256 = objc_alloc(MEMORY[0x277CCACA8]);
              if (v555 >= 0)
              {
                v266 = objc_msgSend_initWithCString_encoding_(v256, v257, &__s1, 4, v262, v263, v264, v265, v258, v259, v260, v261);
              }

              else
              {
                v266 = objc_msgSend_initWithCString_encoding_(v256, v257, __s1, 4, v262, v263, v264, v265, v258, v259, v260, v261);
              }

              v267 = v266;
              v268 = objc_opt_new();
              v204 = objc_msgSend_initWithName_scatteringFunction_(v255, v269, v267, v268, v274, v275, v276, v277, v270, v271, v272, v273);

              objc_msgSend_conformToMatProperties(v204, v278, v279, v280, v285, v286, v287, v288, v281, v282, v283, v284);
              v190 = v526;
              v189 = v528;
              objc_msgSend_addObject_(v518, v289, v204, v290, v295, v296, v297, v298, v291, v292, v293, v294);
              goto LABEL_516;
            }

LABEL_331:
            if (!v532)
            {
              v204 = 0;
              goto LABEL_516;
            }

            v551[0] = 0;
            v551[1] = 0;
            v552 = 0;
            sub_239E552A0(v551, "@TODO");
            v198 = &qword_278B408B8;
            v199 = 1536;
            while (2)
            {
              v201 = *(v198 - 2);
              v200 = *(v198 - 1);
              v202 = *v198;
              v203 = v198[1];
              v204 = v532;
              v205 = v530;
              v206 = strlen(v201);
              v207 = v206;
              if ((SHIBYTE(v555) & 0x8000000000000000) == 0)
              {
                if (v206 == SHIBYTE(v555))
                {
                  v208 = &__s1;
                  goto LABEL_339;
                }

                goto LABEL_347;
              }

              if (v206 != v554)
              {
                goto LABEL_347;
              }

              if (v206 == -1)
              {
                sub_239E98910();
              }

              v208 = __s1;
LABEL_339:
              if (memcmp(v208, v201, v207))
              {
LABEL_347:

                v198 += 4;
                v199 -= 32;
                if (!v199)
                {
                  if (SHIBYTE(v555) < 0)
                  {
                    v190 = v526;
                    v189 = v528;
                    if (v554 != 5)
                    {
                      goto LABEL_514;
                    }

                    v254 = __s1;
                    if (*__s1 == 1633903972 && *(__s1 + 4) == 108)
                    {
                      goto LABEL_514;
                    }
                  }

                  else
                  {
                    v190 = v526;
                    v189 = v528;
                    if (HIBYTE(v555) != 5)
                    {
                      goto LABEL_514;
                    }

                    if (__s1 == 1633903972 && BYTE4(__s1) == 108)
                    {
                      goto LABEL_514;
                    }

                    v254 = &__s1;
                  }

                  v300 = *v254;
                  v301 = v254[4];
                  if (v300 == 1970039913 && v301 == 109)
                  {
                    LODWORD(v570[0]) = 0;
                    MEMORY[0x23EE800A0](__p, v570);
                  }

LABEL_514:
                  if (SHIBYTE(v552) < 0)
                  {
                    operator delete(v551[0]);
                  }

                  goto LABEL_516;
                }

                continue;
              }

              break;
            }

            v219 = objc_msgSend_propertyNamed_(v204, v209, v203, v210, v215, v216, v217, v218, v211, v212, v213, v214);
            v231 = v219;
            if (!v219 || objc_msgSend_semantic(v219, v220, v221, v222, v227, v228, v229, v230, v223, v224, v225, v226) != v200)
            {
              v242 = [MDLMaterialProperty alloc];
              v252 = objc_msgSend_initWithName_semantic_(v242, v243, v203, v200, v248, v249, v250, v251, v244, v245, v246, v247);

              v231 = v252;
            }

            if (v202 == 7)
            {
              LODWORD(v570[0]) = 0;
              LODWORD(v566) = 0;
              LODWORD(__dst.__r_.__value_.__l.__data_) = 0;
              if ((*(&v558 + *(__p[0] - 3)) & 2) == 0)
              {
                MEMORY[0x23EE80090](__p, v570);
                if ((*(&v558 + *(__p[0] - 3)) & 2) == 0)
                {
                  MEMORY[0x23EE80090](__p, &v566);
                  MEMORY[0x23EE80090](__p, &__dst);
                  v303.n128_u64[0] = __PAIR64__(v566, v570[0]);
                  v303.n128_u32[2] = __dst.__r_.__value_.__l.__data_;
                  objc_msgSend_setFloat3Value_(v231, v304, v305, v306, v303, v311, v312, v313, v307, v308, v309, v310);
                }
              }

              goto LABEL_513;
            }

            if (v202 == 5)
            {
              if ((*(&v558 + *(__p[0] - 3)) & 2) == 0)
              {
                LODWORD(v570[0]) = 0;
                MEMORY[0x23EE80090](__p, v570);
                v314.n128_u32[0] = v570[0];
                objc_msgSend_setFloatValue_(v231, v315, v316, v317, v314, v322, v323, v324, v318, v319, v320, v321);
              }

              goto LABEL_513;
            }

            if (v202 != 1)
            {

              goto LABEL_347;
            }

            memset(&__dst, 0, sizeof(__dst));
            sub_239E88B00(__p, &__dst);
            while (2)
            {
              v334 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
              v335 = __dst.__r_.__value_.__r.__words[0];
              if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v336 = &__dst;
              }

              else
              {
                v336 = __dst.__r_.__value_.__r.__words[0];
              }

              if (v336->__r_.__value_.__s.__data_[0] != 45)
              {
                v355 = __dst.__r_.__value_.__l.__size_;
                if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v356 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v356 = __dst.__r_.__value_.__l.__size_;
                }

                if (v356)
                {
                  v357 = 0;
                  v358 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]) >> 31;
                  do
                  {
                    v16 = (v358 & 1) == 0;
                    v359 = &__dst;
                    if (!v16)
                    {
                      v359 = v335;
                    }

                    if (v359->__r_.__value_.__s.__data_[v357] == 92)
                    {
                      v359->__r_.__value_.__s.__data_[v357] = 47;
                      v334 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
                      v355 = __dst.__r_.__value_.__l.__size_;
                      v335 = __dst.__r_.__value_.__r.__words[0];
                    }

                    ++v357;
                    LOBYTE(v358) = (v334 & 0x80u) != 0;
                    if ((v334 & 0x80u) == 0)
                    {
                      v360 = v334;
                    }

                    else
                    {
                      v360 = v355;
                    }
                  }

                  while (v357 < v360);
                  if ((v334 & 0x80u) != 0)
                  {
                    objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v325, v335, 4, v330, v331, v332, v333, v326, v327, v328, v329);
                    goto LABEL_482;
                  }

                  v336 = &__dst;
                }

                objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v325, v336, 4, v330, v331, v332, v333, v326, v327, v328, v329);
                v361 = LABEL_482:;
                objc_msgSend_setStringValue_(v231, v362, v361, v363, v368, v369, v370, v371, v364, v365, v366, v367);
                v372 = objc_opt_new();
                std::stringbuf::str();
                v586 = 0u;
                v585 = 0u;
                v584 = 0u;
                v582 = 0u;
                v583 = 0u;
                v580 = 0u;
                v581 = 0u;
                v578 = 0u;
                v579 = 0u;
                v576 = 0u;
                v577 = 0u;
                v574 = 0u;
                *v575 = 0u;
                v572 = 0u;
                v573 = 0u;
                *v570 = 0u;
                v571 = 0u;
                sub_239E8897C(v570, &v569, 8);
                v567 = 0;
                v566 = 0;
                v568 = 0;
                sub_239E88B00(v570, &v566);
                sub_239E88B00(v570, &v566);
                while (2)
                {
                  if ((*(&v572 + *(v570[0] - 3)) & 2) != 0)
                  {
                    v377 = 0;
                    if ((v568 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_504;
                    }

                    goto LABEL_495;
                  }

                  if (v568 < 0)
                  {
                    if (v567 == 6)
                    {
                      v373 = v566;
                      goto LABEL_489;
                    }
                  }

                  else if (HIBYTE(v568) == 6)
                  {
                    v373 = &v566;
LABEL_489:
                    v374 = *v373;
                    v375 = v373[2];
                    if (v374 == 1634493229 && v375 == 28781)
                    {
                      sub_239E88B00(v570, &v566);
                      if ((SHIBYTE(v568) & 0x80000000) == 0)
                      {
                        if (HIBYTE(v568) == 2)
                        {
                          v378 = &v566;
                          goto LABEL_501;
                        }

                        v377 = 0;
LABEL_504:
                        v570[0] = v528;
                        *(v570 + *(v528 - 3)) = v526;
                        *&v571 = MEMORY[0x277D82878] + 16;
                        if (SBYTE7(v576) < 0)
                        {
                          operator delete(v575[0]);
                        }

                        *&v571 = MEMORY[0x277D82868] + 16;
                        std::locale::~locale(&v571 + 1);
                        std::istream::~istream();
                        MEMORY[0x23EE80250](&v577 + 8);
                        if (SHIBYTE(v569.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v569.__r_.__value_.__l.__data_);
                        }

                        if (v377)
                        {
                          objc_msgSend_setSWrapMode_(v372, v379, 0, v380, v385, v386, v387, v388, v381, v382, v383, v384);
                          objc_msgSend_setTWrapMode_(v372, v389, 0, v390, v395, v396, v397, v398, v391, v392, v393, v394);
                        }

                        else
                        {
                          objc_msgSend_setSWrapMode_(v372, v379, 1, v380, v385, v386, v387, v388, v381, v382, v383, v384);
                          objc_msgSend_setTWrapMode_(v372, v399, 1, v400, v405, v406, v407, v408, v401, v402, v403, v404);
                        }

                        v409 = objc_opt_new();
                        objc_msgSend_setHardwareFilter_(v409, v410, v372, v411, v416, v417, v418, v419, v412, v413, v414, v415);
                        objc_msgSend_setTextureSamplerValue_(v231, v420, v409, v421, v426, v427, v428, v429, v422, v423, v424, v425);

                        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__dst.__r_.__value_.__l.__data_);
                        }

LABEL_513:
                        objc_msgSend_setProperty_(v204, v232, v231, v233, v238, v239, v240, v241, v234, v235, v236, v237);

                        v190 = v526;
                        v189 = v528;
                        goto LABEL_514;
                      }

                      v378 = v566;
                      if (v567 == 2)
                      {
LABEL_501:
                        v377 = *v378 == 28271;
                        if ((v568 & 0x8000000000000000) == 0)
                        {
                          goto LABEL_504;
                        }

LABEL_495:
                        v378 = v566;
                      }

                      else
                      {
                        v377 = 0;
                      }

                      operator delete(v378);
                      goto LABEL_504;
                    }
                  }

                  sub_239E88B00(v570, &v566);
                  continue;
                }
              }

              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                if (HIBYTE(__dst.__r_.__value_.__r.__words[2]) <= 5uLL)
                {
                  if (HIBYTE(__dst.__r_.__value_.__r.__words[2]) != 2)
                  {
                    if (HIBYTE(__dst.__r_.__value_.__r.__words[2]) != 3)
                    {
                      if (HIBYTE(__dst.__r_.__value_.__r.__words[2]) == 5)
                      {
                        v335 = &__dst;
                        goto LABEL_392;
                      }

LABEL_464:
                      sub_239E88B00(__p, &__dst);
                      continue;
                    }

                    if (LOWORD(__dst.__r_.__value_.__l.__data_) != 25133 || __dst.__r_.__value_.__s.__data_[2] != 109)
                    {
                      if (LOWORD(__dst.__r_.__value_.__l.__data_) != 27949 || __dst.__r_.__value_.__s.__data_[2] != 109)
                      {
                        goto LABEL_464;
                      }

LABEL_437:
                      sub_239E88B00(__p, &__dst);
                    }

                    goto LABEL_463;
                  }

                  if (LOWORD(__dst.__r_.__value_.__l.__data_) != 28461 && LOWORD(__dst.__r_.__value_.__l.__data_) != 29485)
                  {
                    data_low = LOWORD(__dst.__r_.__value_.__l.__data_);
LABEL_435:
                    if (data_low != 29741)
                    {
                      goto LABEL_464;
                    }
                  }

                  goto LABEL_436;
                }

                switch(HIBYTE(__dst.__r_.__value_.__r.__words[2]))
                {
                  case 6u:
                    v342 = WORD2(__dst.__r_.__value_.__r.__words[0]);
                    v343 = LODWORD(__dst.__r_.__value_.__l.__data_) == 1634493229;
                    v344 = 28781;
                    break;
                  case 7u:
                    if (LODWORD(__dst.__r_.__value_.__l.__data_) == 1701601837 && *(__dst.__r_.__value_.__r.__words + 3) == 1969516133)
                    {
                      goto LABEL_463;
                    }

                    if (LODWORD(__dst.__r_.__value_.__l.__data_) == 1701601837 && *(__dst.__r_.__value_.__r.__words + 3) == 1986293349)
                    {
                      goto LABEL_463;
                    }

                    v342 = *(__dst.__r_.__value_.__r.__words + 3);
                    v343 = LODWORD(__dst.__r_.__value_.__l.__data_) == 2019914797;
                    v344 = 1936028280;
                    break;
                  case 8u:
LABEL_401:
                    if (v335 != 0x6E616863666D692DLL)
                    {
                      goto LABEL_464;
                    }

                    goto LABEL_463;
                  default:
                    goto LABEL_464;
                }

                if (!v343 || v342 != v344)
                {
                  goto LABEL_464;
                }

                goto LABEL_463;
              }

              break;
            }

            if (__dst.__r_.__value_.__l.__size_ > 5)
            {
              switch(__dst.__r_.__value_.__l.__size_)
              {
                case 6uLL:
                  v338 = *(__dst.__r_.__value_.__r.__words[0] + 4);
                  v339 = *__dst.__r_.__value_.__l.__data_ == 1634493229;
                  v340 = 28781;
                  break;
                case 7uLL:
                  if (*__dst.__r_.__value_.__l.__data_ == 1701601837 && *(__dst.__r_.__value_.__r.__words[0] + 3) == 1969516133)
                  {
                    goto LABEL_463;
                  }

                  if (*__dst.__r_.__value_.__l.__data_ == 1701601837 && *(__dst.__r_.__value_.__r.__words[0] + 3) == 1986293349)
                  {
                    goto LABEL_463;
                  }

                  v338 = *(__dst.__r_.__value_.__r.__words[0] + 3);
                  v339 = *__dst.__r_.__value_.__l.__data_ == 2019914797;
                  v340 = 1936028280;
                  break;
                case 8uLL:
                  v335 = *__dst.__r_.__value_.__l.__data_;
                  goto LABEL_401;
                default:
                  goto LABEL_464;
              }
            }

            else
            {
              if (__dst.__r_.__value_.__l.__size_ == 2)
              {
                if (*__dst.__r_.__value_.__l.__data_ != 28461 && *__dst.__r_.__value_.__l.__data_ != 29485)
                {
                  data_low = *__dst.__r_.__value_.__l.__data_;
                  goto LABEL_435;
                }

LABEL_436:
                sub_239E88B00(__p, &__dst);
                goto LABEL_437;
              }

              if (__dst.__r_.__value_.__l.__size_ == 3)
              {
                if (*__dst.__r_.__value_.__l.__data_ != 25133 || *(__dst.__r_.__value_.__r.__words[0] + 2) != 109)
                {
                  if (*__dst.__r_.__value_.__l.__data_ != 27949 || *(__dst.__r_.__value_.__r.__words[0] + 2) != 109)
                  {
                    goto LABEL_464;
                  }

                  goto LABEL_437;
                }

LABEL_463:
                sub_239E88B00(__p, &__dst);
                goto LABEL_464;
              }

              if (__dst.__r_.__value_.__l.__size_ != 5)
              {
                goto LABEL_464;
              }

LABEL_392:
              data = v335->__r_.__value_.__l.__data_;
              v338 = v335->__r_.__value_.__s.__data_[4];
              v339 = data == 1887007789;
              v340 = 101;
            }

            if (!v339 || v338 != v340)
            {
              goto LABEL_464;
            }

            goto LABEL_463;
          }

          fclose(v180);
        }

        else
        {
          v183 = objc_msgSend_absoluteString(v156, v169, v170, v171, v176, v177, v178, v179, v172, v173, v174, v175);
          NSLog(&cfstr_UnableToFindMt.isa, v183);
        }
      }

      v184 = 0;
LABEL_306:

      if (SHIBYTE(v534) < 0)
      {
        operator delete(v533[0]);
      }

      v185 = v521;
      v186 = v521[1];
      if (v186)
      {
        do
        {
          v187 = v186;
          v186 = *v186;
        }

        while (v186);
      }

      else
      {
        do
        {
          v187 = v185[2];
          v16 = *v187 == v185;
          v185 = v187;
        }

        while (!v16);
      }

      v111 = v184;
      v110 = v187;
      if (v187 == &v546)
      {
        goto LABEL_540;
      }
    }
  }

  v184 = 0;
LABEL_540:
  v508 = v547;
  for (k = v548; v508 != k; v508 += 80)
  {
    *(v508 + 72) = -2;
    v510 = *(v508 + 48);
    v511 = *(v508 + 56);
    if (v510 != v511)
    {
      v512 = 4294967294;
      do
      {
        v513 = v510[1] - *v510;
        if (v513)
        {
          v514 = v513 >> 4;
          if ((v512 & 0x80000000) != 0)
          {
            v512 = v514;
            *(v508 + 72) = v514;
          }

          else if (v514 != v512)
          {
            goto LABEL_550;
          }
        }

        v510 += 3;
      }

      while (v510 != v511);
      if (v512 != 4294967294)
      {
        continue;
      }
    }

LABEL_550:
    *(v508 + 72) = -1;
  }

  sub_239E92254(&v537, v184, v524, a5, a6, v520);

LABEL_553:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_239E987D0(&v537);
LABEL_556:
}
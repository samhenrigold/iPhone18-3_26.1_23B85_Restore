uint64_t sub_239DE2F08(int a1)
{
  v1 = 4;
  if (a1 != 32)
  {
    v1 = 1;
  }

  if (a1 == 16)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_239DE30C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 84);
  if (v2 == 2)
  {
    return 64;
  }

  if (v2 == 4)
  {
    return 128;
  }

  v4 = MTLReportFailureTypeEnabled();
  result = 0;
  if (v4)
  {
    MTLReportFailure();
    return 0;
  }

  return result;
}

void sub_239DE4A84(uint64_t a1)
{
  v305 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  kdebug_trace();
  v272 = a1;
  if ((*(*(a1 + 32) + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    v4 = objc_msgSend_validate(*(a1 + 40), v2, v3);
    if (!*(a1 + 48))
    {
      sub_239E20548(v4, v2);
    }
  }

  v5 = *(a1 + 32);
  if (*(v5 + 160))
  {
    if (*(v5 + 168))
    {
      sub_239E18C24(*(v5 + 168));
      *(*(a1 + 32) + 168) = 0;
      v5 = *(a1 + 32);
    }

    v6 = objc_msgSend_group(v5, v2, v3);
    v9 = objc_msgSend_bvhGroup(v6, v7, v8);
    v12 = objc_msgSend_commandBuffer(*(v9 + 24), v10, v11);
    v15 = objc_msgSend_group(*(a1 + 32), v13, v14);
    v18 = *(objc_msgSend_bvhGroup(v15, v16, v17) + 80);
    v21 = objc_msgSend_count(*(*(a1 + 32) + 152), v19, v20);
    v24 = objc_msgSend_encodedLength(*(*(a1 + 32) + 160), v22, v23);
    *(*(a1 + 32) + 168) = sub_239E19178(v18, v24 * v21, v12);
    objc_msgSend_commit(v12, v25, v26);
    v27 = *(a1 + 32);
    LODWORD(v12) = *(*(v27 + 168) + 32);
    v30 = objc_msgSend_encodedLength(*(v27 + 160), v28, v29);
    v5 = *(a1 + 32);
    v270 = v12 / v30;
  }

  else
  {
    v270 = 0;
  }

  if (*(v5 + 176))
  {
    v31 = *(v5 + 176);
  }

  else
  {
    v31 = 16;
  }

  v32 = *(v5 + 128);
  v33 = 4;
  if (v32 != 32)
  {
    v33 = 1;
  }

  v118 = v32 == 16;
  v34 = 2;
  if (!v118)
  {
    v34 = v33;
  }

  v267 = v34;
  v268 = v31;
  v298 = 0;
  v296 = 0u;
  v297 = 0u;
  v295 = 0u;
  if (*(a1 + 40))
  {
    objc_msgSend_getBVHOptions(*(a1 + 40), v2, v3);
    v5 = *(a1 + 32);
  }

  v35 = *(v5 + 144);
  if (v35)
  {
    if (atomic_fetch_add(v35 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v35 + 8))(v35);
    }

    *(*(a1 + 32) + 144) = 0;
  }

  v36 = objc_msgSend_array(MEMORY[0x277CBEB18], v2, v3);
  v39 = objc_msgSend_array(MEMORY[0x277CBEB18], v37, v38);
  v42 = objc_msgSend_array(MEMORY[0x277CBEB18], v40, v41);
  v44 = objc_msgSend_objectAtIndexedSubscript_(*(*(v272 + 32) + 152), v43, 0);
  if (objc_msgSend_indexBuffer(v44, v45, v46))
  {
    v275 = objc_msgSend_array(MEMORY[0x277CBEB18], v47, v48);
    obj = objc_msgSend_array(MEMORY[0x277CBEB18], v49, v50);
  }

  else
  {
    obj = 0;
    v275 = 0;
  }

  v293 = 0u;
  v294 = 0u;
  v291 = 0u;
  v292 = 0u;
  v51 = *(*(v272 + 32) + 152);
  v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v47, &v291, v304, 16);
  if (v54)
  {
    v55 = *v292;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v292 != v55)
        {
          objc_enumerationMutation(v51);
        }

        v57 = *(*(&v291 + 1) + 8 * i);
        v58 = objc_msgSend_vertexBuffer(v57, v52, v53);
        objc_msgSend_addObject_(v36, v59, v58);
        v60 = MEMORY[0x277CCABB0];
        v63 = objc_msgSend_vertexBufferOffset(v57, v61, v62);
        v65 = objc_msgSend_numberWithUnsignedInteger_(v60, v64, v63);
        objc_msgSend_addObject_(v39, v66, v65);
        if (objc_msgSend_indexBuffer(v57, v67, v68))
        {
          v71 = objc_msgSend_indexBuffer(v57, v69, v70);
          objc_msgSend_addObject_(v275, v72, v71);
          v73 = MEMORY[0x277CCABB0];
          v76 = objc_msgSend_indexBufferOffset(v57, v74, v75);
          v78 = objc_msgSend_numberWithUnsignedInteger_(v73, v77, v76);
          objc_msgSend_addObject_(obj, v79, v78);
        }

        v80 = MEMORY[0x277CCABB0];
        v81 = objc_msgSend_polygonCount(v57, v69, v70);
        v83 = objc_msgSend_numberWithUnsignedInteger_(v80, v82, v81);
        objc_msgSend_addObject_(v42, v84, v83);
      }

      v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v291, v304, 16);
    }

    while (v54);
  }

  v85 = objc_msgSend_group(*(v272 + 40), v52, v53);
  v271 = objc_msgSend_bvhGroup(v85, v86, v87);
  v88 = DWORD2(v297);
  v91 = objc_msgSend_usage(*(v272 + 32), v89, v90);
  v94 = objc_msgSend_usage(*(v272 + 32), v92, v93);
  v97 = v94;
  v98 = (v91 >> 3) & 1;
  if (!v88)
  {
    LODWORD(v98) = 0;
  }

  if (v98 == 1)
  {
    v94 = sub_239E20598(v94, v95);
  }

  if ((v97 & 4) != 0 && v88)
  {
    v94 = sub_239E205D4(v94, v95);
  }

  if ((v91 & 8) != 0 && (v97 & 4) != 0)
  {
    sub_239E20610(v94, v95);
  }

  else
  {
    if ((v91 & 8) != 0)
    {
      v99 = 1;
    }

    else
    {
      v99 = v88;
    }

    if (v99 == 2)
    {
      goto LABEL_80;
    }

    if (!v99)
    {
      v265 = *MEMORY[0x277CD7350];
      v263 = *(*(*(v272 + 32) + v265) + 16);
      v264 = objc_msgSend_dedicatedMemorySize(v263, v95, v96);
      if (!v264)
      {
        v264 = objc_msgSend_sharedMemorySize(v263, v100, v101);
      }

      v289 = 0u;
      v290 = 0u;
      v287 = 0u;
      v288 = 0u;
      v102 = *(*(v272 + 32) + 152);
      v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v102, v100, &v287, v303, 16);
      if (v105)
      {
        v106 = 0;
        v107 = *v288;
        do
        {
          for (j = 0; j != v105; ++j)
          {
            if (*v288 != v107)
            {
              objc_enumerationMutation(v102);
            }

            v106 += objc_msgSend_polygonCount(*(*(&v287 + 1) + 8 * j), v103, v104);
          }

          v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v102, v103, &v287, v303, 16);
        }

        while (v105);
        v109 = v106 > 0x7FF;
      }

      else
      {
        v109 = 0;
      }

      v110 = *(*(*(v272 + 32) + v265) + 16);
      v285[0] = v295;
      v285[1] = v296;
      v285[2] = v297;
      v286 = v298;
      v111 = sub_239E1A3A0(v110, v285, v36, v275, v42);
      v114 = sub_239E1D32C(*(*(*(v272 + 32) + v265) + 16));
      if (v109)
      {
        v115 = objc_msgSend_name(v263, v112, v113);
        v117 = objc_msgSend_containsString_(v115, v116, @"AMD");
      }

      else
      {
        v117 = 0;
      }

      if (HIDWORD(v297) == 2)
      {
        v118 = (DWORD1(v295) & 0xFFFFFFFE) == 2 && v298 == 0;
        v119 = !v118 || v111 > v264;
        v120 = !v119;
        if (v120 & v114) == 1 && (v117 | (v97 >> 2))
        {
LABEL_80:
          if (HIDWORD(v298) != 1)
          {
            if (!HIDWORD(v298))
            {
              operator new();
            }

            abort();
          }

          operator new();
        }
      }
    }
  }

  if (HIDWORD(v297) == 4)
  {
    operator new();
  }

  if (HIDWORD(v297) == 2)
  {
    operator new();
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v124 = objc_msgSend_group(*(v272 + 40), v122, v123);
  if (*(*(objc_msgSend_bvhGroup(v124, v125, v126) + 32) + 40))
  {
    operator new();
  }

  *(*(v272 + 32) + 144) = (*(MEMORY[0] + 16))(0, v271, v36, v39, v268, v275, obj, v267, v42, *(*(v272 + 32) + 136), v270);
  (*(MEMORY[0] + 8))(0);
  if (v295 == 1)
  {
    v269 = *(*(*(v272 + 32) + 144) + 104);
    v276 = objc_msgSend_array(MEMORY[0x277CBEB18], v127, v128);
    objc_msgSend_setObject_forKeyedSubscript_(v269, v129, v276, @"User Buffers");
    v283 = 0u;
    v284 = 0u;
    v281 = 0u;
    v282 = 0u;
    obja = *(*(v272 + 32) + 152);
    v131 = 0;
    v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v130, &v281, v302, 16);
    if (v134)
    {
      v135 = 0;
      v136 = *v282;
      do
      {
        for (k = 0; k != v134; ++k)
        {
          if (*v282 != v136)
          {
            objc_enumerationMutation(obja);
          }

          v138 = *(*(&v281 + 1) + 8 * k);
          v139 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v132, v133);
          objc_msgSend_addObject_(v276, v140, v139);
          v141 = MEMORY[0x277CCABB0];
          v144 = objc_msgSend_vertexBuffer(v138, v142, v143);
          v147 = objc_msgSend_length(v144, v145, v146);
          v150 = objc_msgSend_numberWithDouble_(v141, v148, v149, vcvtd_n_f64_u64(v147, 0x14uLL));
          objc_msgSend_setObject_forKeyedSubscript_(v139, v151, v150, @"Vertex Buffer (mb)");
          v152 = MEMORY[0x277CCABB0];
          v155 = objc_msgSend_indexBuffer(v138, v153, v154);
          v158 = objc_msgSend_length(v155, v156, v157);
          v161 = objc_msgSend_numberWithDouble_(v152, v159, v160, vcvtd_n_f64_u64(v158, 0x14uLL));
          objc_msgSend_setObject_forKeyedSubscript_(v139, v162, v161, @"Index Buffer (mb)");
          v163 = MEMORY[0x277CCABB0];
          v166 = objc_msgSend_maskBuffer(v138, v164, v165);
          v169 = objc_msgSend_length(v166, v167, v168);
          v172 = objc_msgSend_numberWithDouble_(v163, v170, v171, vcvtd_n_f64_u64(v169, 0x14uLL));
          objc_msgSend_setObject_forKeyedSubscript_(v139, v173, v172, @"Mask Buffer (mb)");
          v174 = MEMORY[0x277CCABB0];
          v177 = objc_msgSend_polygonCount(v138, v175, v176);
          v179 = objc_msgSend_numberWithUnsignedInteger_(v174, v178, v177);
          objc_msgSend_setObject_forKeyedSubscript_(v139, v180, v179, @"Polygons");
          v183 = objc_msgSend_vertexBuffer(v138, v181, v182);
          v186 = objc_msgSend_length(v183, v184, v185);
          v189 = objc_msgSend_indexBuffer(v138, v187, v188);
          v192 = objc_msgSend_length(v189, v190, v191);
          v195 = objc_msgSend_maskBuffer(v138, v193, v194);
          v135 += v186 + v192 + objc_msgSend_length(v195, v196, v197);
          v131 += objc_msgSend_polygonCount(v138, v198, v199);
        }

        v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v132, &v281, v302, 16);
      }

      while (v134);
      v200 = vcvtd_n_f64_u64(v135, 0x14uLL);
    }

    else
    {
      v200 = 0.0;
    }

    v201 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v132, v131);
    objc_msgSend_setObject_forKeyedSubscript_(v269, v202, v201, @"Polygons");
    v300 = @"Total (mb)";
    v301 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v203, v204, v200);
    v206 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v205, &v301, &v300, 1);
    objc_msgSend_addObject_(v276, v207, v206);
    v210 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v208, v209);
    objc_msgSend_setObject_forKeyedSubscript_(v269, v211, v210, @"Internal Buffers");
    v214 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v212, v213, *(*(*(*(v272 + 32) + 144) + 120) + 40) * 0.000000953674316);
    objc_msgSend_setObject_forKeyedSubscript_(v210, v215, v214, @"Polygon Index Buffer (mb)");
    v218 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v216, v217, *(*(*(*(v272 + 32) + 144) + 120) + 40) * 0.000000953674316);
    objc_msgSend_setObject_forKeyedSubscript_(v210, v219, v218, @"Resource Index Buffer (mb)");
    v222 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v220, v221, *(*(*(*(v272 + 32) + 144) + 24) + 40) * 0.000000953674316);
    objc_msgSend_setObject_forKeyedSubscript_(v210, v223, v222, @"Inner Node Buffer (mb)");
    v226 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v224, v225, *(*(*(*(v272 + 32) + 144) + 32) + 40) * 0.000000953674316);
    objc_msgSend_setObject_forKeyedSubscript_(v210, v227, v226, @"Leaf Node Buffer (mb)");
    v230 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v228, v229, *(*(*(*(v272 + 32) + 144) + 40) + 40) * 0.000000953674316);
    objc_msgSend_setObject_forKeyedSubscript_(v210, v231, v230, @"Page Table 0 Buffer (mb)");
    v234 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v232, v233, *(*(*(*(v272 + 32) + 144) + 48) + 40) * 0.000000953674316);
    objc_msgSend_setObject_forKeyedSubscript_(v210, v235, v234, @"Page Table 1 Buffer (mb)");
    v238 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v236, v237, *(*(*(*(v272 + 32) + 144) + 56) + 40) * 0.000000953674316);
    objc_msgSend_setObject_forKeyedSubscript_(v210, v239, v238, @"Page Buffer (mb)");
    v279 = 0u;
    v280 = 0u;
    v277 = 0u;
    v278 = 0u;
    v243 = objc_msgSend_countByEnumeratingWithState_objects_count_(v210, v240, &v277, v299, 16);
    if (v243)
    {
      v244 = *v278;
      v245 = 0.0;
      do
      {
        for (m = 0; m != v243; ++m)
        {
          if (*v278 != v244)
          {
            objc_enumerationMutation(v210);
          }

          v247 = objc_msgSend_objectForKeyedSubscript_(v210, v241, *(*(&v277 + 1) + 8 * m));
          objc_msgSend_doubleValue(v247, v248, v249);
          v245 = v245 + v250;
        }

        v243 = objc_msgSend_countByEnumeratingWithState_objects_count_(v210, v241, &v277, v299, 16);
      }

      while (v243);
    }

    else
    {
      v245 = 0.0;
    }

    v251 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v241, v242, v245);
    objc_msgSend_setObject_forKeyedSubscript_(v210, v252, v251, @"Total (mb)");
  }

  v253 = objc_msgSend_group(*(v272 + 40), v127, v128);
  if (v271 != objc_msgSend_bvhGroup(v253, v254, v255))
  {
    operator new();
  }

  v258 = objc_msgSend_group(*(v272 + 40), v256, v257);
  v261 = objc_msgSend_bvhGroup(v258, v259, v260);
  sub_239E00D2C(*(v261 + 24));
  kdebug_trace();
  objc_msgSend_setStatus_(*(v272 + 40), v262, 1);
  (*(*(v272 + 48) + 16))();

  objc_autoreleasePoolPop(context);
}

uint64_t sub_239DE63AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  add = atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
  if (v2)
  {
    v4 = add == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(a1 + 40);
  if (result)
  {

    return sub_239E18C24(result);
  }

  return result;
}

uint64_t sub_239DE7190(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v13 = a2;
  if ((atomic_load_explicit(byte_27DF884E8, memory_order_acquire) & 1) == 0)
  {
    sub_239E206E4();
  }

  std::mutex::lock(&stru_27DF884A8);
  if (!qword_27DF884A0)
  {
    operator new();
  }

  v9 = sub_239DE7494(qword_27DF884A0, &v13);
  if (!v9)
  {
    operator new();
  }

  v10 = sub_239DE73FC(v9[3], a4);
  std::mutex::unlock(&stru_27DF884A8);
  MPSLibrary::CreateUberShaderKey(a3, a1, &unk_239E26CA0, v10, a5, a4, 1, 0, 0, 0, 0, 0, 0);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSLibrary::ReleaseMPSKey();
  return PipelineStateForMPSKey;
}

uint64_t sub_239DE733C(uint64_t a1)
{
  v2 = *(a1 + 32);
  add = atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
  if (v2)
  {
    v4 = add == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(a1 + 40);
  if (result)
  {

    return sub_239E18C24(result);
  }

  return result;
}

uint64_t sub_239DE73FC(void *a1, __int128 *a2)
{
  v4 = a2[1];
  v9 = *a2;
  v10 = v4;
  v11 = *(a2 + 4);
  v5 = sub_239DE7A70(a1, &v9);
  if (v5)
  {
    return v5[7];
  }

  v6 = a1[3];
  v7 = a2[1];
  v9 = *a2;
  v10 = v7;
  v11 = *(a2 + 4);
  v12 = &v9;
  sub_239DE7BA4(a1, &v9, &unk_239E26E90, &v12)[7] = v6;
  return v6;
}

void *sub_239DE7494(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_239DE7580(float *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_239DE77E8()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, &unk_284D087E0, MEMORY[0x277D82620]);
}

void sub_239DE781C(uint64_t result, size_t __n)
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

      sub_239DE790C(result, prime);
    }
  }
}

void sub_239DE790C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_239DE77E8();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_239DE7A70(void *a1, char *__s2)
{
  v3 = 0;
  v4 = 1193086;
  do
  {
    v4 = (1540483477 * ((1540483477 * *&__s2[v3]) ^ ((1540483477 * *&__s2[v3]) >> 24))) ^ (1540483477 * v4);
    v3 += 4;
  }

  while (v3 != 40);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = (1540483477 * (v4 ^ (v4 >> 13))) ^ ((1540483477 * (v4 ^ (v4 >> 13))) >> 15);
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = (1540483477 * (v4 ^ (v4 >> 13))) ^ ((1540483477 * (v4 ^ (v4 >> 13))) >> 15);
    if (*&v5 <= v6)
    {
      v9 = v6 % v5.i32[0];
    }
  }

  else
  {
    v9 = (v5.i32[0] - 1) & v6;
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
        if (!memcmp(v11 + 2, __s2, 0x28uLL))
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

void *sub_239DE7BA4(void *a1, char *__s2, uint64_t a3, _OWORD **a4)
{
  v5 = 0;
  v6 = 1193086;
  do
  {
    v6 = (1540483477 * ((1540483477 * *&__s2[v5]) ^ ((1540483477 * *&__s2[v5]) >> 24))) ^ (1540483477 * v6);
    v5 += 4;
  }

  while (v5 != 40);
  v7 = 1540483477 * (v6 ^ (v6 >> 13));
  v8 = v7 ^ (v7 >> 15);
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_20;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7 ^ (v7 >> 15);
    if (*&v9 <= v8)
    {
      v12 = v8 % v9.i32[0];
    }
  }

  else
  {
    v12 = (v9.i32[0] - 1) & v8;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_20;
    }

LABEL_19:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_20;
    }
  }

  if (memcmp(v14 + 2, __s2, 0x28uLL))
  {
    goto LABEL_19;
  }

  return v14;
}

uint64_t sub_239DE7E3C(uint64_t a1, uint64_t a2)
{

  return MTLReportFailureTypeEnabled();
}

float *sub_239DE7FD0(int32x2_t a1, int32x2_t a2, int32x2_t a3, double a4, double a5, double a6, int32x2_t a7, int32x4_t a8, uint64_t a9, uint64_t a10, float *a11, int *a12, _DWORD *a13, _DWORD *a14, _DWORD *a15, _DWORD *a16)
{
  v17 = 0;
  v130 = *MEMORY[0x277D85DE8];
  v18 = vdupq_lane_s32(a1, 0);
  v19 = vdupq_lane_s32(a2, 0);
  v20 = vdupq_lane_s32(a3, 0);
  v21 = vdupq_lane_s32(*&a4, 0);
  v22 = vdupq_lane_s32(*&a5, 0);
  v23 = vdupq_lane_s32(*&a6, 0);
  v24 = 1.0 / *&a4;
  v25 = 1.0 / *&a5;
  if (*&a5 < 0.0)
  {
    v26 = 12;
  }

  else
  {
    v26 = 8;
  }

  if (*&a5 < 0.0)
  {
    v27 = 8;
  }

  else
  {
    v27 = 12;
  }

  if (*&a6 < 0.0)
  {
    v28 = 20;
  }

  else
  {
    v28 = 16;
  }

  if (*&a6 < 0.0)
  {
    v29 = 16;
  }

  else
  {
    v29 = 20;
  }

  v30 = vdupq_lane_s32(a7, 0);
  *&v16 = 0;
  v31 = -1;
  v32 = xmmword_239E26D10;
  v33.i64[0] = 0x7F0000007FLL;
  v33.i64[1] = 0x7F0000007FLL;
  v118 = vnegq_f32(v33);
  result = v129;
  v35 = 1.0 / *&a6;
  __asm { FMOV            V15.4S, #1.0 }

LABEL_14:
  if ((a10 & 0x30) != 0)
  {
LABEL_96:
    v80 = a10 & 0xF;
    if ((a10 & 0xF) != 0)
    {
      v119 = v32;
      v81 = v16;
      v82 = (a10 & 0xFFFFFFFFFFFFFFC0) + 80;
      do
      {
        v84 = *(v82 + 16);
        v83 = *(v82 + 32);
        v85 = *(v82 + 48);
        v86 = vsubq_f32(*(v82 - 80), v84);
        v87 = vsubq_f32(*(v82 - 64), v83);
        v88 = vsubq_f32(*(v82 - 48), v85);
        v89 = vsubq_f32(*(v82 - 32), v84);
        v90 = vsubq_f32(*(v82 - 16), v83);
        v91 = vsubq_f32(*v82, v85);
        v92 = vmlaq_f32(vnegq_f32(vmulq_n_f32(v90, *&a6)), v91, v22);
        v93 = vmlaq_f32(vnegq_f32(vmulq_n_f32(v91, *&a4)), v89, v23);
        v94 = vmlaq_f32(vnegq_f32(vmulq_n_f32(v89, *&a5)), v90, v21);
        v95 = vmlaq_f32(vmlaq_f32(vmulq_f32(v87, v93), v92, v86), v94, v88);
        v96 = vceqzq_f32(v95);
        v97 = vdivq_f32(_Q15, v95);
        v98 = vsubq_f32(v18, v84);
        v99 = vsubq_f32(v19, v83);
        v100 = vsubq_f32(v20, v85);
        v101 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v99, v93), v92, v98), v94, v100), v97);
        v102 = vmlaq_f32(vnegq_f32(vmulq_f32(v87, v100)), v88, v99);
        v103 = vmlaq_f32(vnegq_f32(vmulq_f32(v98, v88)), v100, v86);
        v104 = vmlaq_f32(vnegq_f32(vmulq_f32(v86, v99)), v87, v98);
        v105 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v103, *&a5), v102, v21), v104, v23), v97);
        v106 = vandq_s8(vbicq_s8(vandq_s8(vcgezq_f32(v101), vcgezq_f32(v105)), v96), vcgeq_f32(_Q15, vaddq_f32(v101, v105)));
        if ((vmaxvq_u32(v106) & 0x80000000) != 0)
        {
          v107 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v90, v103), v102, v89), v104, v91), v97);
          v108 = vand_s8(vmovn_s32(vandq_s8(vcgeq_f32(v107, v30), vcgeq_f32(vdupq_lane_s32(*a8.i8, 0), v107))), vmovn_s32(v106));
          v109 = vmovl_s16(v108);
          if ((vmaxvq_u32(v109) & 0x80000000) != 0)
          {
            v110 = *(v82 + 64);
            v111 = *(v82 + 80);
            *(&v81 + 1) = v119.i64[1];
            v112 = vbslq_s8(v109, v107, v118);
            v113 = vminnmq_f32(v112, vrev64q_s32(v112));
            a8 = vandq_s8(vmovl_s16(vand_s8(vmovn_s32(vceqq_f32(vminnmq_f32(v113, vextq_s8(v113, v113, 8uLL)), v112)), v108)), v119);
            v114 = __clz(__rbit32(vaddvq_s32(a8)));
            v124 = v107;
            a8.i32[0] = *(&v124 & 0xFFFFFFFFFFFFFFF3 | (4 * (v114 & 3)));
            v123 = v101;
            LODWORD(v81) = *(&v123 & 0xFFFFFFFFFFFFFFF3 | (4 * (v114 & 3)));
            v122 = v105;
            DWORD1(v81) = *(&v122 & 0xFFFFFFFFFFFFFFF3 | (4 * (v114 & 3)));
            v121 = v110;
            v31 = *(&v121 & 0xFFFFFFFFFFFFFFF3 | (4 * (v114 & 3)));
            v120 = v111;
            v17 = *(&v120 & 0xFFFFFFFFFFFFFFF3 | (4 * (v114 & 3)));
          }
        }

        v82 += 192;
        --v80;
      }

      while (v80);
      v16 = v81;
      v32 = v119;
    }
  }

  else
  {
    v40 = vdupq_lane_s32(*a8.i8, 0);
    while (1)
    {
      v41 = vmaxnmq_f32(vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(a10 + 32 + 16 * (*&a4 < 0.0)), v18), v24), vmulq_n_f32(vsubq_f32(*(a10 + 32 + 4 * v26), v19), v25)), vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(a10 + 32 + 4 * v28), v20), v35), v30));
      v42 = *(a10 + 128) & vaddvq_s32(vandq_s8(vcgeq_f32(vminnmq_f32(vminnmq_f32(vmulq_n_f32(vsubq_f32(*(a10 + 32 + 16 * (*&a4 >= 0.0)), v18), v24), vmulq_n_f32(vsubq_f32(*(a10 + 32 + 4 * v27), v19), v25)), vminnmq_f32(vmulq_n_f32(vsubq_f32(*(a10 + 32 + 4 * v29), v20), v35), v40)), v41), v32));
      if (!v42)
      {
        break;
      }

      v43 = __clz(__rbit32(v42));
      v44 = *(a10 + 8 * v43);
      v128 = v41;
      v45 = v42 & ~(1 << v43);
      if (v45)
      {
        v46 = *(&v128 & 0xFFFFFFFFFFFFFFF3 | (4 * (v43 & 3)));
        v47 = __clz(__rbit32(v45));
        v48 = (&v127 & 0xFFFFFFFFFFFFFFF3 | (4 * (v47 & 3)));
        v49 = 1 << v47;
        v50 = *(a10 + 8 * v47);
        v127 = v41;
        v51 = *v48;
        v52 = v45 & ~v49;
        if (v52)
        {
          v53 = __clz(__rbit32(v52));
          v54 = (&v126 & 0xFFFFFFFFFFFFFFF3 | (4 * (v53 & 3)));
          v55 = 1 << v53;
          v56 = *(a10 + 8 * v53);
          v126 = v41;
          v57 = *v54;
          v58 = v52 & ~v55;
          if (v58)
          {
            v59 = __clz(__rbit32(v58));
            v125 = v41;
            v60 = *(&v125 & 0xFFFFFFFFFFFFFFF3 | (4 * (v59 & 3)));
            v61 = *(a10 + 8 * v59);
            if (v57 < v46)
            {
              v62 = v56;
            }

            else
            {
              v62 = v44;
            }

            if (v57 < v46)
            {
              v63 = v57;
            }

            else
            {
              v63 = v46;
            }

            if (v57 >= v46)
            {
              v44 = v56;
              v46 = v57;
            }

            _NF = v60 < v51;
            if (v60 < v51)
            {
              v65 = v61;
            }

            else
            {
              v65 = v50;
            }

            if (v60 < v51)
            {
              v66 = v60;
            }

            else
            {
              v66 = v51;
            }

            if (v60 < v51)
            {
              v60 = v51;
            }

            if (!_NF)
            {
              v50 = v61;
            }

            if (v66 >= v63)
            {
              a10 = v62;
            }

            else
            {
              a10 = v65;
            }

            if (v66 >= v63)
            {
              v67 = v66;
            }

            else
            {
              v65 = v62;
              v67 = v63;
            }

            v68 = v60 < v46;
            if (v60 < v46)
            {
              v69 = v50;
            }

            else
            {
              v69 = v44;
            }

            if (v60 < v46)
            {
              v70 = v60;
            }

            else
            {
              v70 = v46;
            }

            if (v60 < v46)
            {
              v60 = v46;
            }

            if (!v68)
            {
              v44 = v50;
            }

            if (v70 < v67)
            {
              v71 = v69;
            }

            else
            {
              v71 = v65;
            }

            if (v70 < v67)
            {
              v72 = v70;
            }

            else
            {
              v72 = v67;
            }

            if (v70 >= v67)
            {
              v65 = v69;
            }

            *result = v44;
            result[2] = v60;
            if (v70 < v67)
            {
              v73 = v67;
            }

            else
            {
              v73 = v70;
            }

            *(result + 2) = v65;
            result[6] = v73;
            *(result + 4) = v71;
            result[10] = v72;
            result += 12;
          }

          else
          {
            if (v51 < v46)
            {
              v76 = v50;
            }

            else
            {
              v76 = v44;
            }

            if (v51 < v46)
            {
              v77 = v51;
            }

            else
            {
              v77 = v46;
            }

            if (v51 >= v46)
            {
              v44 = v50;
              v46 = v51;
            }

            if (v57 >= v46)
            {
              v78 = v44;
              v79 = v46;
              v44 = v56;
              v46 = *v54;
            }

            else
            {
              v78 = v56;
              v79 = *v54;
            }

            if (v79 >= v77)
            {
              a10 = v76;
            }

            else
            {
              a10 = v78;
            }

            if (v79 >= v77)
            {
              v77 = v79;
            }

            else
            {
              v78 = v76;
            }

            *result = v44;
            result[2] = v46;
            *(result + 2) = v78;
            result[6] = v77;
            result += 8;
          }
        }

        else
        {
          if (v51 >= v46)
          {
            v74 = v50;
          }

          else
          {
            v74 = v44;
          }

          if (v51 >= v46)
          {
            v75 = v51;
          }

          else
          {
            v75 = v46;
          }

          if (v51 >= v46)
          {
            a10 = v44;
          }

          else
          {
            a10 = v50;
          }

          *result = v74;
          result[2] = v75;
          result += 4;
        }
      }

      else
      {
        a10 = v44;
      }

      if ((a10 & 0x30) != 0)
      {
        goto LABEL_96;
      }
    }
  }

  v115 = result;
  while (v115 != v129)
  {
    result = v115 - 4;
    v116 = *(v115 - 2);
    v115 -= 4;
    if (v116 <= *a8.i32)
    {
      a10 = *result;
      goto LABEL_14;
    }
  }

  v117 = -1.0;
  if (v31 >= 0)
  {
    v117 = *a8.i32;
  }

  *a11 = v117;
  *a12 = v31;
  *a13 = v17;
  *a14 = v16;
  *a15 = DWORD1(v16);
  *a16 = 0;
  return result;
}

float32x4_t *sub_239DE8554(int32x2_t a1, int32x2_t a2, int32x2_t a3, double a4, double a5, double a6, int32x2_t a7, double a8, uint64_t a9, unint64_t a10, _DWORD *a11, _DWORD *a12, _DWORD *a13, _DWORD *a14, _DWORD *a15, _DWORD *a16)
{
  v16 = vdupq_lane_s32(a1, 0);
  v17 = vdupq_lane_s32(a2, 0);
  v18 = vdupq_lane_s32(a3, 0);
  v19 = vdupq_lane_s32(*&a4, 0);
  v20 = vdupq_lane_s32(*&a5, 0);
  v75 = *MEMORY[0x277D85DE8];
  v21 = vdupq_lane_s32(*&a6, 0);
  v22 = 1.0 / *&a4;
  v23 = 1.0 / *&a5;
  v24 = vdupq_lane_s32(a7, 0);
  v25 = vdupq_lane_s32(*&a8, 0);
  if (*&a5 < 0.0)
  {
    v26 = 12;
  }

  else
  {
    v26 = 8;
  }

  if (*&a5 < 0.0)
  {
    v27 = 8;
  }

  else
  {
    v27 = 12;
  }

  if (*&a6 < 0.0)
  {
    v28 = 20;
  }

  else
  {
    v28 = 16;
  }

  if (*&a6 < 0.0)
  {
    v29 = 16;
  }

  else
  {
    v29 = 20;
  }

  __asm { FMOV            V23.4S, #1.0 }

  v35 = v74;
  v36 = 1.0 / *&a6;
LABEL_14:
  while (1)
  {
    result = a10;
    if ((a10 & 0x30) != 0)
    {
      break;
    }

    v64 = vmaxnmq_f32(vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(a10 + 32 + 16 * (*&a4 < 0.0)), v16), v22), vmulq_n_f32(vsubq_f32(*(a10 + 32 + 4 * v26), v17), v23)), vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(a10 + 32 + 4 * v28), v18), v36), v24));
    v65 = *(a10 + 128) & vaddvq_s32(vandq_s8(vcgeq_f32(vminnmq_f32(vminnmq_f32(vmulq_n_f32(vsubq_f32(*(a10 + 32 + 16 * (*&a4 >= 0.0)), v16), v22), vmulq_n_f32(vsubq_f32(*(a10 + 32 + 4 * v27), v17), v23)), vminnmq_f32(vmulq_n_f32(vsubq_f32(*(a10 + 32 + 4 * v29), v18), v36), v25)), v64), xmmword_239E26D10));
    if (!v65)
    {
      goto LABEL_25;
    }

    v66 = __clz(__rbit32(v65));
    v67 = 1 << v66;
    a10 = result->u64[v66];
    while (1)
    {
      v65 &= ~v67;
      if (!v65)
      {
        break;
      }

      v68 = __clz(__rbit32(v65));
      v69 = result->u64[v68];
      v73 = v64;
      v70 = *(&v73 & 0xFFFFFFFFFFFFFFF3 | (4 * (v68 & 3)));
      v67 = 1 << v68;
      *v35 = v69;
      *(v35 + 2) = v70;
      v35 += 2;
    }
  }

  v38 = a10 & 0xF;
  if ((a10 & 0xF) == 0)
  {
    goto LABEL_25;
  }

  result = ((a10 & 0xFFFFFFFFFFFFFFC0) + 64);
  do
  {
    v40 = result[2];
    v39 = result[3];
    v41 = result[4];
    v42 = vsubq_f32(result[-4], v40);
    v43 = vsubq_f32(result[-3], v39);
    v44 = vsubq_f32(result[-2], v41);
    v45 = vsubq_f32(result[-1], v40);
    v46 = vsubq_f32(*result, v39);
    v47 = vsubq_f32(result[1], v41);
    v48 = vmlaq_f32(vnegq_f32(vmulq_n_f32(v46, *&a6)), v47, v20);
    v49 = vmlaq_f32(vnegq_f32(vmulq_n_f32(v47, *&a4)), v45, v21);
    v50 = vmlaq_f32(vnegq_f32(vmulq_n_f32(v45, *&a5)), v46, v19);
    v51 = vmlaq_f32(vmlaq_f32(vmulq_f32(v43, v49), v48, v42), v50, v44);
    v52 = vceqzq_f32(v51);
    v53 = vdivq_f32(_Q23, v51);
    v54 = vsubq_f32(v16, v40);
    v55 = vsubq_f32(v17, v39);
    v56 = vsubq_f32(v18, v41);
    v57 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v55, v49), v48, v54), v50, v56), v53);
    v58 = vmlaq_f32(vnegq_f32(vmulq_f32(v43, v56)), v44, v55);
    v59 = vmlaq_f32(vnegq_f32(vmulq_f32(v54, v44)), v56, v42);
    v60 = vmlaq_f32(vnegq_f32(vmulq_f32(v42, v55)), v43, v54);
    v61 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v59, *&a5), v58, v19), v60, v21), v53);
    v62 = vandq_s8(vbicq_s8(vandq_s8(vcgezq_f32(v57), vcgezq_f32(v61)), v52), vcgeq_f32(_Q23, vaddq_f32(v57, v61)));
    if ((vmaxvq_u32(v62) & 0x80000000) != 0)
    {
      v63 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v46, v59), v58, v45), v60, v47), v53);
      if ((vmaxvq_u32(vmovl_s16(vand_s8(vmovn_s32(vandq_s8(vcgeq_f32(v63, v24), vcgeq_f32(v25, v63))), vmovn_s32(v62)))) & 0x80000000) != 0)
      {
        *a11 = 1065353216;
        return result;
      }
    }

    result += 12;
    --v38;
  }

  while (v38);
LABEL_25:
  while (v35 != v74)
  {
    v71 = v35 - 2;
    v72 = *(v35 - 2);
    v35 -= 2;
    if (v72 <= *&a8)
    {
      a10 = *v71;
      v35 = v71;
      goto LABEL_14;
    }
  }

  *a11 = -1082130432;
  *a12 = -1;
  *a13 = 0;
  *a14 = 0;
  *a15 = 0;
  *a16 = 0;
  return result;
}

unint64_t sub_239DE88C4(double a1, int32x2_t a2, int32x2_t a3, double a4, double a5, double a6, int32x2_t a7, double a8, uint64_t a9, unint64_t a10, float *a11, int *a12, _DWORD *a13, _DWORD *a14, _DWORD *a15, _DWORD *a16)
{
  v18 = 0;
  v155 = 0;
  v162 = 0;
  v149 = *&a1;
  v20 = vdupq_lane_s32(*&a1, 0);
  v21 = vdupq_lane_s32(a2, 0);
  v22 = vdupq_lane_s32(a3, 0);
  v159 = v21;
  v23 = vdupq_lane_s32(*&a4, 0);
  v156 = v23;
  v157 = v20;
  v172 = *MEMORY[0x277D85DE8];
  v24 = vdupq_lane_s32(*&a5, 0);
  v25 = vdupq_lane_s32(*&a6, 0);
  v150 = *&a4;
  *&a1 = 1.0 / *&a4;
  v158 = v22;
  v26 = vdupq_lane_s32(*&a1, 0);
  *&a1 = 1.0 / *&a5;
  v27 = vdupq_lane_s32(*&a1, 0);
  *&a1 = 1.0 / *&a6;
  v28 = vdupq_lane_s32(*&a1, 0);
  v19 = *&a4 < 0.0;
  v29 = 4 * v19;
  v30 = 4 * (*&a4 >= 0.0);
  if (*&a5 < 0.0)
  {
    v31 = 12;
  }

  else
  {
    v31 = 8;
  }

  if (*&a5 < 0.0)
  {
    v32 = 8;
  }

  else
  {
    v32 = 12;
  }

  if (*&a6 < 0.0)
  {
    v33 = 20;
  }

  else
  {
    v33 = 16;
  }

  if (*&a6 < 0.0)
  {
    v34 = 16;
  }

  else
  {
    v34 = 20;
  }

  v160 = -1;
  v35 = vdupq_lane_s32(a7, 0);
  v161 = 0;
  v36 = v34;
  v37 = v33;
  v38 = v32;
  v39 = v31;
  v40 = 4 * (*&a4 >= 0.0);
  v41 = 4 * v19;
  v42 = v28;
  v43 = v27;
  v44.i64[0] = 0x7F0000007FLL;
  v44.i64[1] = 0x7F0000007FLL;
  v154 = vnegq_f32(v44);
  v45 = v26;
  v46 = v25;
  v47 = v24;
  v48 = v171;
  while (2)
  {
    v49 = v18;
LABEL_15:
    v50 = vdupq_lane_s32(*&a8, 0);
    result = 4 * v41;
    v18 = v48;
    v52 = &off_239E26000;
    while (1)
    {
      v53 = a10;
      v54 = (a10 >> 4) & 3;
      if (v54)
      {
        break;
      }

      v55 = vmaxnmq_f32(vmaxnmq_f32(vmulq_f32(v45, vsubq_f32(*(a10 + 32 + 4 * v41), v20)), vmulq_f32(v43, vsubq_f32(*(a10 + 32 + 4 * v39), v21))), vmaxnmq_f32(vmulq_f32(v42, vsubq_f32(*(a10 + 32 + 4 * v37), v22)), v35));
      v56 = *(a10 + 128) & vaddvq_s32(vandq_s8(vcgeq_f32(vminnmq_f32(vminnmq_f32(vmulq_f32(v45, vsubq_f32(*(a10 + 32 + 4 * v40), v20)), vmulq_f32(v43, vsubq_f32(*(a10 + 32 + 4 * v38), v21))), vminnmq_f32(vmulq_f32(v42, vsubq_f32(*(a10 + 32 + 4 * v36), v22)), v50)), v55), v52[209]));
      if (!v56)
      {
        goto LABEL_111;
      }

      v57 = __clz(__rbit32(v56));
      a10 = *(a10 + 8 * v57);
      v58 = v56 & ~(1 << v57);
      if (v58)
      {
        v148 = a15;
        v165 = v55;
        v59 = *(&v165 & 0xFFFFFFFFFFFFFFF3 | (4 * (v57 & 3)));
        v60 = __clz(__rbit32(v58));
        v61 = *(v53 + 8 * v60);
        v62 = *(&v165 & 0xFFFFFFFFFFFFFFF3 | (4 * (v60 & 3)));
        v63 = v58 & ~(1 << v60);
        if (v63)
        {
          v64 = __clz(__rbit32(v63));
          v65 = (&v164 & 0xFFFFFFFFFFFFFFF3 | (4 * (v64 & 3)));
          v66 = 1 << v64;
          v67 = *(v53 + 8 * v64);
          v164 = v55;
          v68 = *v65;
          v69 = v63 & ~v66;
          if (v69)
          {
            v70 = __clz(__rbit32(v69));
            v163 = v55;
            v71 = *(&v163 & 0xFFFFFFFFFFFFFFF3 | (4 * (v70 & 3)));
            v72 = *(v53 + 8 * v70);
            if (v68 < v59)
            {
              v73 = v59;
            }

            else
            {
              v73 = v68;
            }

            if (v68 < v59)
            {
              v74 = a10;
            }

            else
            {
              v74 = v67;
            }

            if (v68 < v59)
            {
              v75 = v68;
            }

            else
            {
              v75 = v59;
            }

            if (v68 >= v59)
            {
              v67 = a10;
            }

            if (v71 < v62)
            {
              v76 = v61;
            }

            else
            {
              v76 = v72;
            }

            if (v71 < v62)
            {
              v77 = v62;
            }

            else
            {
              v77 = v71;
            }

            if (v71 >= v62)
            {
              v71 = v62;
              v72 = v61;
            }

            _NF = v71 < v75;
            if (v71 >= v75)
            {
              v79 = v72;
            }

            else
            {
              v71 = v75;
              v79 = v67;
            }

            if (_NF)
            {
              a10 = v72;
            }

            else
            {
              a10 = v67;
            }

            v80 = v77 < v73;
            if (v77 < v73)
            {
              v81 = v74;
            }

            else
            {
              v81 = v76;
            }

            if (v77 < v73)
            {
              v82 = v73;
            }

            else
            {
              v82 = v77;
            }

            if (v77 < v73)
            {
              v73 = v77;
            }

            if (v80)
            {
              v83 = v76;
            }

            else
            {
              v83 = v74;
            }

            v84 = v73 < v71;
            if (v73 < v71)
            {
              v85 = v71;
            }

            else
            {
              v85 = v73;
            }

            if (v73 < v71)
            {
              v86 = v79;
            }

            else
            {
              v86 = v83;
            }

            if (v73 < v71)
            {
              v71 = v73;
            }

            *v18 = v81;
            *(v18 + 2) = v82;
            if (v84)
            {
              v87 = v83;
            }

            else
            {
              v87 = v79;
            }

            v18[2] = v86;
            *(v18 + 6) = v85;
            v18[4] = v87;
            *(v18 + 10) = v71;
            v18 += 6;
            goto LABEL_78;
          }

          if (v62 < v59)
          {
            v90 = v59;
          }

          else
          {
            v90 = v62;
          }

          if (v62 < v59)
          {
            v91 = a10;
          }

          else
          {
            v91 = v61;
          }

          if (v62 < v59)
          {
            v92 = v62;
          }

          else
          {
            v92 = v59;
          }

          if (v62 < v59)
          {
            v93 = v61;
          }

          else
          {
            v93 = a10;
          }

          v52 = &off_239E26000;
          if (v68 >= v90)
          {
            v94 = *v65;
            v95 = v67;
            v68 = v90;
            v67 = v91;
          }

          else
          {
            v94 = v90;
            v95 = v91;
          }

          a15 = v148;
          v96 = v68 < v92;
          if (v68 < v92)
          {
            v97 = v93;
          }

          else
          {
            v92 = v68;
            v97 = v67;
          }

          if (v96)
          {
            a10 = v67;
          }

          else
          {
            a10 = v93;
          }

          *v18 = v95;
          *(v18 + 2) = v94;
          v18[2] = v97;
          *(v18 + 6) = v92;
          v18 += 4;
        }

        else
        {
          if (v62 >= v59)
          {
            v88 = v61;
          }

          else
          {
            v88 = a10;
          }

          if (v62 >= v59)
          {
            v89 = v62;
          }

          else
          {
            v89 = v59;
          }

          if (v62 < v59)
          {
            a10 = v61;
          }

          *v18 = v88;
          *(v18 + 2) = v89;
          v18 += 2;
LABEL_78:
          a15 = v148;
          v52 = &off_239E26000;
        }
      }
    }

    if (v54 != 1)
    {
      if (v54 != 2)
      {
        goto LABEL_111;
      }

      v98 = (a10 & 0xFFFFFFFFFFFFFFC0);
      a10 = *((a10 & 0xFFFFFFFFFFFFFFC0) + 0x30);
      if (!a10)
      {
        goto LABEL_111;
      }

      v155 = *((v53 & 0xFFFFFFFFFFFFFFC0) + 0x38);
      v138.i64[0] = *v98;
      v138.i64[1] = *((v53 & 0xFFFFFFFFFFFFFFC0) + 8);
      v139.i64[0] = *((v53 & 0xFFFFFFFFFFFFFFC0) + 0xC);
      v139.i64[1] = *((v53 & 0xFFFFFFFFFFFFFFC0) + 0x14);
      v140.i64[0] = *((v53 & 0xFFFFFFFFFFFFFFC0) + 0x18);
      v140.i64[1] = *((v53 & 0xFFFFFFFFFFFFFFC0) + 0x20);
      v141.i64[0] = *((v53 & 0xFFFFFFFFFFFFFFC0) + 0x24);
      v141.i32[2] = *((v53 & 0xFFFFFFFFFFFFFFC0) + 0x2C);
      v141.i32[3] = 1.0;
      v142 = vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v138, v149), v159, v139), v158, v140), v141);
      v20 = vdupq_lane_s32(*v142.i8, 0);
      v21 = vdupq_lane_s32(*v142.i8, 1);
      v22 = vdupq_laneq_s32(v142, 2);
      v143 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v138, v150), v24, v139), v25, v140), 0, v141);
      v144 = *v143.i32 < 0.0;
      v145 = *v143.i32 < 0.0;
      v23 = vdupq_lane_s32(*v143.i8, 0);
      v47 = vdupq_lane_s32(*v143.i8, 1);
      v46 = vdupq_laneq_s32(v143, 2);
      *v143.i32 = 1.0 / *v143.i32;
      v45 = vdupq_lane_s32(*v143.i8, 0);
      *v143.i32 = 1.0 / *&v143.i32[1];
      v43 = vdupq_lane_s32(*v143.i8, 0);
      *v143.i32 = 1.0 / *&v143.i32[2];
      v42 = vdupq_lane_s32(*v143.i8, 0);
      v146 = !v144;
      v41 = 4 * v145;
      v40 = 4 * v146;
      if (*&v143.i32[1] < 0.0)
      {
        v39 = 12;
      }

      else
      {
        v39 = 8;
      }

      if (*&v143.i32[1] < 0.0)
      {
        v38 = 8;
      }

      else
      {
        v38 = 12;
      }

      if (*&v143.i32[2] < 0.0)
      {
        v37 = 20;
      }

      else
      {
        v37 = 16;
      }

      if (*&v143.i32[2] < 0.0)
      {
        v36 = 16;
      }

      else
      {
        v36 = 20;
      }

      v48 = v18;
      continue;
    }

    break;
  }

  v99 = a10 & 0xF;
  if ((a10 & 0xF) != 0)
  {
    result = (a10 & 0xFFFFFFFFFFFFFFC0) + 80;
    do
    {
      v101 = *(result + 16);
      v100 = *(result + 32);
      v102 = *(result + 48);
      v103 = vsubq_f32(*(result - 80), v101);
      v104 = vsubq_f32(*(result - 64), v100);
      v105 = vsubq_f32(*(result - 48), v102);
      v106 = vsubq_f32(*(result - 32), v101);
      v107 = vsubq_f32(*(result - 16), v100);
      v108 = vsubq_f32(*result, v102);
      v109 = vmlaq_f32(vnegq_f32(vmulq_f32(v46, v107)), v108, v47);
      v110 = vmlaq_f32(vnegq_f32(vmulq_f32(v23, v108)), v106, v46);
      v111 = vmlaq_f32(vnegq_f32(vmulq_f32(v47, v106)), v107, v23);
      v112 = vmlaq_f32(vmlaq_f32(vmulq_f32(v104, v110), v109, v103), v111, v105);
      v113 = vceqzq_f32(v112);
      __asm { FMOV            V2.4S, #1.0 }

      v118 = vdivq_f32(_Q2, v112);
      v119 = vsubq_f32(v20, v101);
      v120 = vsubq_f32(v21, v100);
      v121 = vsubq_f32(v22, v102);
      v122 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v120, v110), v109, v119), v111, v121), v118);
      v123 = vmlaq_f32(vnegq_f32(vmulq_f32(v104, v121)), v105, v120);
      v124 = vmlaq_f32(vnegq_f32(vmulq_f32(v119, v105)), v121, v103);
      v125 = vmlaq_f32(vnegq_f32(vmulq_f32(v103, v120)), v104, v119);
      v126 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v47, v124), v123, v23), v125, v46), v118);
      v127 = vandq_s8(vbicq_s8(vandq_s8(vcgezq_f32(v122), vcgezq_f32(v126)), v113), vcgeq_f32(_Q2, vaddq_f32(v122, v126)));
      if ((vmaxvq_u32(v127) & 0x80000000) != 0)
      {
        v128 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v107, v124), v123, v106), v125, v108), v118);
        v129 = vand_s8(vmovn_s32(vandq_s8(vcgeq_f32(v128, v35), vcgeq_f32(vdupq_lane_s32(*&a8, 0), v128))), vmovn_s32(v127));
        v130 = vmovl_s16(v129);
        if ((vmaxvq_u32(v130) & 0x80000000) != 0)
        {
          v131 = *(result + 64);
          v132 = *(result + 80);
          v133 = vbslq_s8(v130, v128, v154);
          v134 = vminnmq_f32(v133, vrev64q_s32(v133));
          v135 = __clz(__rbit32(vaddvq_s32(vandq_s8(vmovl_s16(vand_s8(vmovn_s32(vceqq_f32(vminnmq_f32(v134, vextq_s8(v134, v134, 8uLL)), v133)), v129)), v52[209]))));
          v170 = v128;
          LODWORD(a8) = *(&v170 & 0xFFFFFFFFFFFFFFF3 | (4 * (v135 & 3)));
          v169 = v122;
          LODWORD(v136) = *(&v169 & 0xFFFFFFFFFFFFFFF3 | (4 * (v135 & 3)));
          v168 = v126;
          HIDWORD(v136) = *(&v168 & 0xFFFFFFFFFFFFFFF3 | (4 * (v135 & 3)));
          v161 = v136;
          v167 = v131;
          v160 = *(&v167 & 0xFFFFFFFFFFFFFFF3 | (4 * (v135 & 3)));
          v166 = v132;
          LODWORD(v162) = *(&v166 & 0xFFFFFFFFFFFFFFF3 | (4 * (v135 & 3)));
          HIDWORD(v162) = v155;
        }
      }

      result += 192;
      --v99;
    }

    while (v99);
  }

LABEL_111:
  while (v18 != v171)
  {
    if (v18 == v49)
    {
      v49 = 0;
      v36 = v34;
      v37 = v33;
      v38 = v32;
      v39 = v31;
      v40 = v30;
      v41 = v29;
      v42 = v28;
      v43 = v27;
      v45 = v26;
      v46 = v25;
      v47 = v24;
      v23 = v156;
      v22 = v158;
      v21 = v159;
      v20 = v157;
    }

    v48 = v18 - 2;
    v137 = *(v18 - 2);
    v18 -= 2;
    if (v137 <= *&a8)
    {
      a10 = *v48;
      goto LABEL_15;
    }
  }

  v147 = -1.0;
  if (v160 >= 0)
  {
    v147 = *&a8;
  }

  *a11 = v147;
  *a12 = v160;
  *a13 = v162;
  *a14 = v161;
  *a15 = HIDWORD(v161);
  *a16 = HIDWORD(v162);
  return result;
}

_BYTE *sub_239DE9090(int32x2_t a1, int32x2_t a2, int32x2_t a3, double a4, double a5, double a6, int32x2_t a7, double a8, uint64_t a9, unint64_t a10, _DWORD *a11, _DWORD *a12, _DWORD *a13, _DWORD *a14, _DWORD *a15, _DWORD *a16)
{
  v18 = 0;
  v19 = *&a4 < 0.0;
  v20 = *&a4 < 0.0;
  v107 = *a1.i32;
  v21 = vdupq_lane_s32(a1, 0);
  v22 = vdupq_lane_s32(a2, 0);
  v23 = vdupq_lane_s32(a3, 0);
  v24 = vdupq_lane_s32(*&a4, 0);
  v25 = vdupq_lane_s32(*&a5, 0);
  v26 = vdupq_lane_s32(*&a6, 0);
  v108 = *&a4;
  *v16.i32 = 1.0 / *&a4;
  v27 = vdupq_lane_s32(v16, 0);
  *v16.i32 = 1.0 / *&a5;
  v28 = vdupq_lane_s32(v16, 0);
  v120 = *MEMORY[0x277D85DE8];
  *v16.i32 = 1.0 / *&a6;
  v29 = vdupq_lane_s32(v16, 0);
  v30 = !v19;
  v31 = 4 * v20;
  v32 = 4 * v30;
  if (*&a5 < 0.0)
  {
    v33 = 12;
  }

  else
  {
    v33 = 8;
  }

  if (*&a5 < 0.0)
  {
    v34 = 8;
  }

  else
  {
    v34 = 12;
  }

  if (*&a6 < 0.0)
  {
    v35 = 20;
  }

  else
  {
    v35 = 16;
  }

  v36 = vdupq_lane_s32(a7, 0);
  if (*&a6 < 0.0)
  {
    v37 = 16;
  }

  else
  {
    v37 = 20;
  }

  result = v119;
  v39 = vdupq_lane_s32(*&a8, 0);
  v40 = v37;
  v41 = v35;
  v42 = v34;
  v43 = v33;
  v44 = v32;
  v45 = v31;
  v46 = v29;
  v47 = v28;
  v48 = v27;
  v49 = v26;
  v50 = v25;
  v51 = v24;
  v116 = v23;
  v117 = v22;
  v52 = v21;
  v53 = v119;
  v114 = v24;
  v115 = v21;
  v112 = v28;
  v113 = v27;
  v111 = v29;
  while (1)
  {
LABEL_17:
    while (1)
    {
      v54 = a10;
      v55 = (a10 >> 4) & 3;
      if (v55)
      {
        break;
      }

      v56 = vmaxnmq_f32(vmaxnmq_f32(vmulq_f32(v48, vsubq_f32(*(a10 + 32 + 4 * v45), v52)), vmulq_f32(v47, vsubq_f32(*(a10 + 32 + 4 * v43), v22))), vmaxnmq_f32(vmulq_f32(v46, vsubq_f32(*(a10 + 32 + 4 * v41), v23)), v36));
      v57 = *(a10 + 128) & vaddvq_s32(vandq_s8(vcgeq_f32(vminnmq_f32(vminnmq_f32(vmulq_f32(v48, vsubq_f32(*(a10 + 32 + 4 * v44), v52)), vmulq_f32(v47, vsubq_f32(*(a10 + 32 + 4 * v42), v22))), vminnmq_f32(vmulq_f32(v46, vsubq_f32(*(a10 + 32 + 4 * v40), v23)), v39)), v56), xmmword_239E26D10));
      if (!v57)
      {
        goto LABEL_47;
      }

      v58 = __clz(__rbit32(v57));
      a10 = *(a10 + 8 * v58);
      v59 = v57 & ~(1 << v58);
      if (v59)
      {
        v60 = a11;
        do
        {
          v61 = __clz(__rbit32(v59));
          v62 = *(v54 + 8 * v61);
          v118 = v56;
          v63 = *(&v118 & 0xFFFFFFFFFFFFFFF3 | (4 * (v61 & 3)));
          *v53 = v62;
          *(v53 + 2) = v63;
          v53 += 2;
          v59 &= ~(1 << v61);
        }

        while (v59);
        a11 = v60;
      }
    }

    if (v55 == 1)
    {
      v73 = a10 & 0xF;
      if ((a10 & 0xF) == 0)
      {
        break;
      }

      v74 = (a10 & 0xFFFFFFFFFFFFFFC0) + 64;
      while (1)
      {
        v75 = *(v74 + 32);
        v76 = *(v74 + 48);
        v77 = *(v74 + 64);
        v78 = vsubq_f32(*(v74 - 64), v75);
        v79 = vsubq_f32(*(v74 - 48), v76);
        v80 = vsubq_f32(*(v74 - 32), v77);
        v81 = vsubq_f32(*(v74 - 16), v75);
        v82 = vsubq_f32(*v74, v76);
        v83 = vsubq_f32(*(v74 + 16), v77);
        v84 = vmlaq_f32(vnegq_f32(vmulq_f32(v49, v82)), v83, v50);
        v85 = vmlaq_f32(vnegq_f32(vmulq_f32(v51, v83)), v81, v49);
        v86 = vmlaq_f32(vnegq_f32(vmulq_f32(v50, v81)), v82, v51);
        v87 = vmlaq_f32(vmlaq_f32(vmulq_f32(v79, v85), v84, v78), v86, v80);
        v88 = vceqzq_f32(v87);
        __asm { FMOV            V1.4S, #1.0 }

        v94 = vdivq_f32(_Q1, v87);
        v95 = vsubq_f32(v52, v75);
        v96 = vsubq_f32(v22, v76);
        v97 = vsubq_f32(v23, v77);
        v98 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v96, v85), v84, v95), v86, v97), v94);
        v99 = vmlaq_f32(vnegq_f32(vmulq_f32(v79, v97)), v80, v96);
        v100 = vmlaq_f32(vnegq_f32(vmulq_f32(v95, v80)), v97, v78);
        v101 = vmlaq_f32(vnegq_f32(vmulq_f32(v78, v96)), v79, v95);
        v102 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v50, v100), v99, v51), v101, v49), v94);
        v103 = vandq_s8(vbicq_s8(vandq_s8(vcgezq_f32(v98), vcgezq_f32(v102)), v88), vcgeq_f32(_Q1, vaddq_f32(v98, v102)));
        if ((vmaxvq_u32(v103) & 0x80000000) != 0)
        {
          v104 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v82, v100), v99, v81), v101, v83), v94);
          if ((vmaxvq_u32(vmovl_s16(vand_s8(vmovn_s32(vandq_s8(vcgeq_f32(v104, v36), vcgeq_f32(v39, v104))), vmovn_s32(v103)))) & 0x80000000) != 0)
          {
            break;
          }
        }

        v74 += 192;
        if (!--v73)
        {
          goto LABEL_47;
        }
      }

      *a11 = 1065353216;
      return result;
    }

    if (v55 != 2)
    {
      break;
    }

    v64 = (a10 & 0xFFFFFFFFFFFFFFC0);
    a10 = *((a10 & 0xFFFFFFFFFFFFFFC0) + 0x30);
    if (!a10)
    {
      break;
    }

    v65.i64[0] = *v64;
    v65.i64[1] = *((v54 & 0xFFFFFFFFFFFFFFC0) + 8);
    v66.i64[0] = *((v54 & 0xFFFFFFFFFFFFFFC0) + 0xC);
    v66.i64[1] = *((v54 & 0xFFFFFFFFFFFFFFC0) + 0x14);
    v67.i64[0] = *((v54 & 0xFFFFFFFFFFFFFFC0) + 0x18);
    v67.i64[1] = *((v54 & 0xFFFFFFFFFFFFFFC0) + 0x20);
    v68.i64[0] = *((v54 & 0xFFFFFFFFFFFFFFC0) + 0x24);
    v68.i32[2] = *((v54 & 0xFFFFFFFFFFFFFFC0) + 0x2C);
    v68.i32[3] = 1.0;
    v69 = vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v65, v107), v117, v66), v116, v67), v68);
    v52 = vdupq_lane_s32(*v69.i8, 0);
    v22 = vdupq_lane_s32(*v69.i8, 1);
    v23 = vdupq_laneq_s32(v69, 2);
    v71 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v65, v108), v25, v66), v26, v67), 0, v68);
    v19 = *v71.i32 < 0.0;
    v70 = *v71.i32 < 0.0;
    v51 = vdupq_lane_s32(*v71.i8, 0);
    v50 = vdupq_lane_s32(*v71.i8, 1);
    v49 = vdupq_laneq_s32(v71, 2);
    *v71.i32 = 1.0 / *v71.i32;
    v48 = vdupq_lane_s32(*v71.i8, 0);
    *v71.i32 = 1.0 / *&v71.i32[1];
    v47 = vdupq_lane_s32(*v71.i8, 0);
    *v71.i32 = 1.0 / *&v71.i32[2];
    v46 = vdupq_lane_s32(*v71.i8, 0);
    v72 = !v19;
    v45 = 4 * v70;
    v44 = 4 * v72;
    if (*&v71.i32[1] < 0.0)
    {
      v43 = 12;
    }

    else
    {
      v43 = 8;
    }

    if (*&v71.i32[1] < 0.0)
    {
      v42 = 8;
    }

    else
    {
      v42 = 12;
    }

    if (*&v71.i32[2] < 0.0)
    {
      v41 = 20;
    }

    else
    {
      v41 = 16;
    }

    if (*&v71.i32[2] < 0.0)
    {
      v40 = 16;
    }

    else
    {
      v40 = 20;
    }

    v18 = v53;
  }

LABEL_47:
  while (v53 != v119)
  {
    if (v53 == v18)
    {
      v18 = 0;
      v40 = v37;
      v41 = v35;
      v42 = v34;
      v43 = v33;
      v44 = v32;
      v45 = v31;
      v46 = v111;
      v47 = v112;
      v48 = v113;
      v49 = v26;
      v50 = v25;
      v51 = v114;
      v23 = v116;
      v22 = v117;
      v52 = v115;
    }

    v105 = v53 - 2;
    v106 = *(v53 - 2);
    v53 -= 2;
    if (v106 <= *&a8)
    {
      a10 = *v105;
      v53 = v105;
      goto LABEL_17;
    }
  }

  *a11 = -1082130432;
  *a12 = -1;
  *a13 = 0;
  *a14 = 0;
  *a15 = 0;
  *a16 = 0;
  return result;
}

uint64_t sub_239DE9618(int32x2_t a1, int32x2_t a2, int32x2_t a3, double a4, double a5, double a6, int32x2_t a7, int32x4_t a8, uint64_t a9, unint64_t a10, float *a11, int *a12, _DWORD *a13, _DWORD *a14, _DWORD *a15, _DWORD *a16)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v137 = *MEMORY[0x277D85DE8];
  v19 = vdupq_lane_s32(a1, 0);
  v20 = vdupq_lane_s32(a2, 0);
  v21 = vdupq_lane_s32(a3, 0);
  v22 = vdupq_lane_s32(*&a4, 0);
  v23 = vdupq_lane_s32(*&a5, 0);
  v24 = vdupq_lane_s32(*&a6, 0);
  v25 = 1.0 / *&a4;
  v26 = 1.0 / *&a5;
  if (*&a5 < 0.0)
  {
    v27 = 12;
  }

  else
  {
    v27 = 8;
  }

  if (*&a5 < 0.0)
  {
    v28 = 8;
  }

  else
  {
    v28 = 12;
  }

  if (*&a6 < 0.0)
  {
    v29 = 20;
  }

  else
  {
    v29 = 16;
  }

  if (*&a6 < 0.0)
  {
    v30 = 16;
  }

  else
  {
    v30 = 20;
  }

  v31 = vdupq_lane_s32(a7, 0);
  v127 = 0;
  v32 = -1;
  v33 = 4 * v27;
  v34 = 4 * v28;
  v35 = 4 * v29;
  v36 = 4 * v30;
  result = 1;
  v38.i64[0] = 0x7F0000007FLL;
  v38.i64[1] = 0x7F0000007FLL;
  v126 = vnegq_f32(v38);
  v39 = v136;
  v40 = 1.0 / *&a6;
  __asm { FMOV            V15.4S, #1.0 }

LABEL_14:
  v45 = vdupq_lane_s32(*a8.i8, 0);
  v46 = v39;
  while (1)
  {
    while (1)
    {
      v47 = a10;
      v48 = (a10 >> 4) & 3;
      if (v48)
      {
        break;
      }

      v49 = vmaxnmq_f32(vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(v47 + 32 + 16 * (*&a4 < 0.0)), v19), v25), vmulq_n_f32(vsubq_f32(*(v47 + 32 + v33), v20), v26)), vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(v47 + 32 + v35), v21), v40), v31));
      v50 = *(v47 + 128) & vaddvq_s32(vandq_s8(vcgeq_f32(vminnmq_f32(vminnmq_f32(vmulq_n_f32(vsubq_f32(*(v47 + 32 + 16 * (*&a4 >= 0.0)), v19), v25), vmulq_n_f32(vsubq_f32(*(v47 + 32 + v34), v20), v26)), vminnmq_f32(vmulq_n_f32(vsubq_f32(*(v47 + 32 + v36), v21), v40), v45)), v49), xmmword_239E26D10));
      if (!v50)
      {
        goto LABEL_109;
      }

      v51 = __clz(__rbit32(v50));
      a10 = *(v47 + 8 * v51);
      v52 = v50 & ~(1 << v51);
      if (v52)
      {
        v130 = v49;
        v53 = *(&v130 & 0xFFFFFFFFFFFFFFF3 | (4 * (v51 & 3)));
        v54 = __clz(__rbit32(v52));
        v55 = (&v130 & 0xFFFFFFFFFFFFFFF3 | (4 * (v54 & 3)));
        v56 = 1 << v54;
        v57 = *(v47 + 8 * v54);
        v58 = *v55;
        v59 = v52 & ~v56;
        if (v59)
        {
          v60 = __clz(__rbit32(v59));
          v61 = (&v129 & 0xFFFFFFFFFFFFFFF3 | (4 * (v60 & 3)));
          v62 = 1 << v60;
          v63 = *(v47 + 8 * v60);
          v129 = v49;
          v64 = *v61;
          v65 = v59 & ~v62;
          if (v65)
          {
            v66 = __clz(__rbit32(v65));
            v128 = v49;
            v67 = *(&v128 & 0xFFFFFFFFFFFFFFF3 | (4 * (v66 & 3)));
            v68 = *(v47 + 8 * v66);
            if (v64 < v53)
            {
              v69 = v63;
            }

            else
            {
              v69 = a10;
            }

            if (v64 < v53)
            {
              v70 = v64;
            }

            else
            {
              v70 = v53;
            }

            if (v64 >= v53)
            {
              v53 = v64;
            }

            else
            {
              v63 = a10;
            }

            _NF = v67 < v58;
            if (v67 < v58)
            {
              v72 = v68;
            }

            else
            {
              v72 = v57;
            }

            if (v67 < v58)
            {
              v73 = v67;
            }

            else
            {
              v73 = v58;
            }

            if (v67 < v58)
            {
              v67 = v58;
            }

            if (_NF)
            {
              v68 = v57;
            }

            if (v73 >= v70)
            {
              a10 = v69;
            }

            else
            {
              a10 = v72;
            }

            if (v73 >= v70)
            {
              v74 = v72;
            }

            else
            {
              v74 = v69;
            }

            if (v73 >= v70)
            {
              v75 = v73;
            }

            else
            {
              v75 = v70;
            }

            v76 = v67 < v53;
            if (v67 < v53)
            {
              v77 = v68;
            }

            else
            {
              v77 = v63;
            }

            if (v67 < v53)
            {
              v78 = v67;
            }

            else
            {
              v78 = v53;
            }

            if (v67 < v53)
            {
              v67 = v53;
            }

            if (v76)
            {
              v68 = v63;
            }

            if (v78 < v75)
            {
              v79 = v77;
            }

            else
            {
              v79 = v74;
            }

            if (v78 < v75)
            {
              v80 = v78;
            }

            else
            {
              v80 = v75;
            }

            if (v78 >= v75)
            {
              v74 = v77;
            }

            *v46 = v68;
            *(v46 + 2) = v67;
            if (v78 < v75)
            {
              v81 = v75;
            }

            else
            {
              v81 = v78;
            }

            v46[2] = v74;
            *(v46 + 6) = v81;
            v46[4] = v79;
            *(v46 + 10) = v80;
            v46 += 6;
          }

          else
          {
            if (v58 < v53)
            {
              v85 = v57;
            }

            else
            {
              v85 = a10;
            }

            if (v58 < v53)
            {
              v86 = v58;
            }

            else
            {
              v86 = v53;
            }

            if (v58 >= v53)
            {
              v53 = v58;
            }

            else
            {
              v57 = a10;
            }

            if (v64 >= v53)
            {
              v87 = v57;
              v88 = v53;
              v57 = v63;
              v53 = *v61;
            }

            else
            {
              v87 = v63;
              v88 = *v61;
            }

            if (v88 >= v86)
            {
              a10 = v85;
            }

            else
            {
              a10 = v87;
            }

            if (v88 >= v86)
            {
              v85 = v87;
              v86 = v88;
            }

            *v46 = v57;
            *(v46 + 2) = v53;
            v46[2] = v85;
            *(v46 + 6) = v86;
            v46 += 4;
          }
        }

        else
        {
          if (v58 >= v53)
          {
            v83 = v57;
          }

          else
          {
            v83 = a10;
          }

          if (v58 >= v53)
          {
            v84 = v58;
          }

          else
          {
            v84 = v53;
          }

          if (v58 < v53)
          {
            a10 = v57;
          }

          *v46 = v83;
          *(v46 + 2) = v84;
          v46 += 2;
        }
      }
    }

    if (v48 == 1)
    {
      break;
    }

    if (v48 != 2)
    {
      goto LABEL_109;
    }

    v82 = v47 & 0xFFFFFFFFFFFFFFC0;
    a10 = *(v82 + 48);
    if (!a10)
    {
      goto LABEL_109;
    }

    v16 = *(v82 + 56);
  }

  v89 = v47 & 0xF;
  if ((v47 & 0xF) != 0)
  {
    v90 = (v47 & 0xFFFFFFFFFFFFFFC0) + 80;
    do
    {
      v92 = *(v90 + 16);
      v91 = *(v90 + 32);
      v93 = *(v90 + 48);
      v94 = vsubq_f32(*(v90 - 80), v92);
      v95 = vsubq_f32(*(v90 - 64), v91);
      v96 = vsubq_f32(*(v90 - 48), v93);
      v97 = vsubq_f32(*(v90 - 32), v92);
      v98 = vsubq_f32(*(v90 - 16), v91);
      v99 = vsubq_f32(*v90, v93);
      v100 = vmlaq_f32(vnegq_f32(vmulq_n_f32(v98, *&a6)), v99, v23);
      v101 = vmlaq_f32(vnegq_f32(vmulq_n_f32(v99, *&a4)), v97, v24);
      v102 = vmlaq_f32(vnegq_f32(vmulq_n_f32(v97, *&a5)), v98, v22);
      v103 = vmlaq_f32(vmlaq_f32(vmulq_f32(v95, v101), v100, v94), v102, v96);
      v104 = vceqzq_f32(v103);
      v105 = vdivq_f32(_Q15, v103);
      v106 = vsubq_f32(v19, v92);
      v107 = vsubq_f32(v20, v91);
      v108 = vsubq_f32(v21, v93);
      v109 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v107, v101), v100, v106), v102, v108), v105);
      v110 = vmlaq_f32(vnegq_f32(vmulq_f32(v95, v108)), v96, v107);
      v111 = vmlaq_f32(vnegq_f32(vmulq_f32(v106, v96)), v108, v94);
      v112 = vmlaq_f32(vnegq_f32(vmulq_f32(v94, v107)), v95, v106);
      v113 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v111, *&a5), v110, v22), v112, v24), v105);
      v114 = vandq_s8(vbicq_s8(vandq_s8(vcgezq_f32(v109), vcgezq_f32(v113)), v104), vcgeq_f32(_Q15, vaddq_f32(v109, v113)));
      if ((vmaxvq_u32(v114) & 0x80000000) != 0)
      {
        v115 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v98, v111), v110, v97), v112, v99), v105);
        v116 = vand_s8(vmovn_s32(vandq_s8(vcgeq_f32(v115, v31), vcgeq_f32(vdupq_lane_s32(*a8.i8, 0), v115))), vmovn_s32(v114));
        v117 = vmovl_s16(v116);
        if ((vmaxvq_u32(v117) & 0x80000000) != 0)
        {
          v118 = *(v90 + 64);
          v119 = *(v90 + 80);
          v120 = vbslq_s8(v117, v115, v126);
          v121 = vminnmq_f32(v120, vrev64q_s32(v120));
          a8 = vandq_s8(vmovl_s16(vand_s8(vmovn_s32(vceqq_f32(vminnmq_f32(v121, vextq_s8(v121, v121, 8uLL)), v120)), v116)), xmmword_239E26D10);
          v122 = __clz(__rbit32(vaddvq_s32(a8)));
          v135 = v115;
          a8.i32[0] = *(&v135 & 0xFFFFFFFFFFFFFFF3 | (4 * (v122 & 3)));
          v134 = v109;
          LODWORD(v123) = *(&v134 & 0xFFFFFFFFFFFFFFF3 | (4 * (v122 & 3)));
          v133 = v113;
          HIDWORD(v123) = *(&v133 & 0xFFFFFFFFFFFFFFF3 | (4 * (v122 & 3)));
          v127 = v123;
          v132 = v118;
          v32 = *(&v132 & 0xFFFFFFFFFFFFFFF3 | (4 * (v122 & 3)));
          v131 = v119;
          v18 = *(&v131 & 0xFFFFFFFFFFFFFFF3 | (4 * (v122 & 3)));
          v17 = v16;
        }
      }

      v90 += 192;
      --v89;
    }

    while (v89);
  }

LABEL_109:
  while (v46 != v136)
  {
    v39 = v46 - 2;
    v124 = *(v46 - 2);
    v46 -= 2;
    if (v124 <= *a8.i32)
    {
      a10 = *v39;
      goto LABEL_14;
    }
  }

  v125 = -1.0;
  if (v32 >= 0)
  {
    v125 = *a8.i32;
  }

  *a11 = v125;
  *a12 = v32;
  *a13 = v18;
  *a14 = v127;
  *a15 = HIDWORD(v127);
  *a16 = v17;
  return result;
}

float *sub_239DE9BC4(int32x2_t a1, int32x2_t a2, int32x2_t a3, double a4, double a5, double a6, int32x2_t a7, double a8, uint64_t a9, unint64_t a10, _DWORD *a11, _DWORD *a12, _DWORD *a13, _DWORD *a14, _DWORD *a15, _DWORD *a16)
{
  v76 = *MEMORY[0x277D85DE8];
  v16 = vdupq_lane_s32(a1, 0);
  v17 = vdupq_lane_s32(a2, 0);
  v18 = vdupq_lane_s32(a3, 0);
  v19 = vdupq_lane_s32(*&a4, 0);
  v20 = vdupq_lane_s32(*&a5, 0);
  v21 = vdupq_lane_s32(*&a6, 0);
  v22 = 1.0 / *&a4;
  v23 = 1.0 / *&a5;
  v24 = vdupq_lane_s32(a7, 0);
  v25 = vdupq_lane_s32(*&a8, 0);
  if (*&a5 < 0.0)
  {
    v26 = 12;
  }

  else
  {
    v26 = 8;
  }

  if (*&a5 < 0.0)
  {
    v27 = 8;
  }

  else
  {
    v27 = 12;
  }

  if (*&a6 < 0.0)
  {
    v28 = 20;
  }

  else
  {
    v28 = 16;
  }

  if (*&a6 < 0.0)
  {
    v29 = 16;
  }

  else
  {
    v29 = 20;
  }

  __asm { FMOV            V22.4S, #1.0 }

  v35 = v75;
  v36 = 1.0 / *&a6;
LABEL_14:
  while (2)
  {
    v37 = a10;
    while (1)
    {
      v38 = (v37 >> 4) & 3;
      if (v38 != 2)
      {
        break;
      }

      v37 = *((v37 & 0xFFFFFFFFFFFFFFC0) + 0x30);
      if (!v37)
      {
        goto LABEL_30;
      }
    }

    if (v38 == 3)
    {
      goto LABEL_30;
    }

    if (v38 != 1)
    {
      v66 = vmaxnmq_f32(vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(v37 + 32 + 16 * (*&a4 < 0.0)), v16), v22), vmulq_n_f32(vsubq_f32(*(v37 + 32 + 4 * v26), v17), v23)), vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(v37 + 32 + 4 * v28), v18), v36), v24));
      v67 = *(v37 + 128) & vaddvq_s32(vandq_s8(vcgeq_f32(vminnmq_f32(vminnmq_f32(vmulq_n_f32(vsubq_f32(*(v37 + 32 + 16 * (*&a4 >= 0.0)), v16), v22), vmulq_n_f32(vsubq_f32(*(v37 + 32 + 4 * v27), v17), v23)), vminnmq_f32(vmulq_n_f32(vsubq_f32(*(v37 + 32 + 4 * v29), v18), v36), v25)), v66), xmmword_239E26D10));
      if (v67)
      {
        v68 = __clz(__rbit32(v67));
        v69 = 1 << v68;
        a10 = *(v37 + 8 * v68);
        while (1)
        {
          v67 &= ~v69;
          if (!v67)
          {
            break;
          }

          v70 = __clz(__rbit32(v67));
          v71 = *(v37 + 8 * v70);
          v74 = v66;
          v72 = *(&v74 & 0xFFFFFFFFFFFFFFF3 | (4 * (v70 & 3)));
          v69 = 1 << v70;
          *v35 = v71;
          *(v35 + 2) = v72;
          v35 += 4;
        }

        continue;
      }

      goto LABEL_30;
    }

    break;
  }

  result = (v37 & 0xF);
  if ((v37 & 0xF) == 0)
  {
LABEL_30:
    result = v35;
    while (result != v75)
    {
      v35 = result - 4;
      v73 = *(result - 2);
      result -= 4;
      if (v73 <= *&a8)
      {
        a10 = *v35;
        goto LABEL_14;
      }
    }

    *a11 = -1082130432;
    *a12 = -1;
    *a13 = 0;
    *a14 = 0;
    *a15 = 0;
    *a16 = 0;
    return result;
  }

  v40 = (v37 & 0xFFFFFFFFFFFFFFC0) + 64;
  while (1)
  {
    v41 = *(v40 + 32);
    v42 = *(v40 + 48);
    v43 = *(v40 + 64);
    v44 = vsubq_f32(*(v40 - 64), v41);
    v45 = vsubq_f32(*(v40 - 48), v42);
    v46 = vsubq_f32(*(v40 - 32), v43);
    v47 = vsubq_f32(*(v40 - 16), v41);
    v48 = vsubq_f32(*v40, v42);
    v49 = vsubq_f32(*(v40 + 16), v43);
    v50 = vmlaq_f32(vnegq_f32(vmulq_n_f32(v48, *&a6)), v49, v20);
    v51 = vmlaq_f32(vnegq_f32(vmulq_n_f32(v49, *&a4)), v47, v21);
    v52 = vmlaq_f32(vnegq_f32(vmulq_n_f32(v47, *&a5)), v48, v19);
    v53 = vmlaq_f32(vmlaq_f32(vmulq_f32(v45, v51), v50, v44), v52, v46);
    v54 = vceqzq_f32(v53);
    v55 = vdivq_f32(_Q22, v53);
    v56 = vsubq_f32(v16, v41);
    v57 = vsubq_f32(v17, v42);
    v58 = vsubq_f32(v18, v43);
    v59 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v57, v51), v50, v56), v52, v58), v55);
    v60 = vmlaq_f32(vnegq_f32(vmulq_f32(v45, v58)), v46, v57);
    v61 = vmlaq_f32(vnegq_f32(vmulq_f32(v56, v46)), v58, v44);
    v62 = vmlaq_f32(vnegq_f32(vmulq_f32(v44, v57)), v45, v56);
    v63 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v61, *&a5), v60, v19), v62, v21), v55);
    v64 = vandq_s8(vbicq_s8(vandq_s8(vcgezq_f32(v59), vcgezq_f32(v63)), v54), vcgeq_f32(_Q22, vaddq_f32(v59, v63)));
    if ((vmaxvq_u32(v64) & 0x80000000) != 0)
    {
      v65 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v48, v61), v60, v47), v62, v49), v55);
      if ((vmaxvq_u32(vmovl_s16(vand_s8(vmovn_s32(vandq_s8(vcgeq_f32(v65, v24), vcgeq_f32(v25, v65))), vmovn_s32(v64)))) & 0x80000000) != 0)
      {
        break;
      }
    }

    v40 += 192;
    result = (result - 1);
    if (!result)
    {
      goto LABEL_30;
    }
  }

  *a11 = 1065353216;
  return result;
}

uint64_t sub_239DE9F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, float32x4_t *a4@<X8>, float32x4_t a5@<Q0>, float32x4_t a6@<Q1>)
{
  v8 = a2;
  v11.i64[0] = 0x7F0000007FLL;
  v11.i64[1] = 0x7F0000007FLL;
  v12 = vnegq_f32(v11);
  a4[2] = v12;
  a4[3] = v11;
  a4[4] = v12;
  a4[5] = v11;
  a4[6].i32[0] = 0;
  v13 = vsubq_f32(a6, a5);
  v14 = v13.f32[1];
  v15 = v13.f32[0] <= v13.f32[1];
  v16 = v13.f32[2];
  v56 = v12;
  v57 = v13.f32[0];
  if (v13.f32[0] <= v13.f32[1])
  {
    v13.f32[0] = v13.f32[1];
  }

  if (v13.f32[0] <= v13.f32[2])
  {
    v15 = 2;
  }

  a4->i32[0] = 2139095040;
  a4->i32[1] = v15;
  LODWORD(v6) = vcvtad_u64_f64(vcvtd_n_f64_u32(a3, 1uLL));
  a4->i32[2] = v6;
  a4->i32[3] = 2139095040;
  v17 = a3 - v6;
  a4[1].i32[0] = v6;
  a4[1].i32[1] = v17;
  v18 = a2 + 32 * v6;
  v19 = (a2 + 32 * a3);
  v58 = v15;
  v20 = 126 - 2 * __clz(a3);
  if (a3)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  result = sub_239DEA478(v8, v19, &v58, v21, 1);
  v23 = v56;
  v24 = v56;
  v25.i64[0] = 0x7F0000007FLL;
  v25.i32[2] = 127;
  if (v6)
  {
    v26.i64[0] = 0x7F0000007FLL;
    v26.i64[1] = 0x7F0000007FLL;
    v27 = vnegq_f32(v26);
    do
    {
      v28.i64[0] = *v8;
      v29.i64[0] = *(v8 + 16);
      v30 = v27;
      v30.i32[3] = 0;
      v28.i64[1] = *(v8 + 8);
      v31 = v26;
      v31.i32[3] = 0;
      v24 = vminnmq_f32(v30, v28);
      v29.i64[1] = *(v8 + 24);
      v25 = vmaxnmq_f32(v31, v29);
      v24.i32[3] = v27.i32[3];
      v25.i32[3] = v26.i32[3];
      v8 += 32;
      v26 = v25;
      v27 = v24;
    }

    while (v8 != v18);
  }

  a4[2].i32[2] = v24.i32[2];
  a4[2].i64[0] = v24.i64[0];
  a4[3].i32[2] = v25.i32[2];
  a4[3].i64[0] = v25.i64[0];
  v24.i64[0] = 0x7F0000007FLL;
  v24.i32[2] = 127;
  if (a3 != v6)
  {
    v32 = v18 + 32 * v17;
    v33.i64[0] = 0x7F0000007FLL;
    v33.i64[1] = 0x7F0000007FLL;
    v34 = vnegq_f32(v33);
    do
    {
      v35.i64[0] = *v18;
      v36.i64[0] = *(v18 + 16);
      v37 = v34;
      v37.i32[3] = 0;
      v35.i64[1] = *(v18 + 8);
      v38 = v33;
      v38.i32[3] = 0;
      v23 = vminnmq_f32(v37, v35);
      v36.i64[1] = *(v18 + 24);
      v24 = vmaxnmq_f32(v38, v36);
      v23.i32[3] = v34.i32[3];
      v24.i32[3] = v33.i32[3];
      v18 += 32;
      v33 = v24;
      v34 = v23;
    }

    while (v18 != v32);
  }

  a4[4].i32[2] = v23.i32[2];
  a4[4].i64[0] = v23.i64[0];
  a4[5].i32[2] = v24.i32[2];
  a4[5].i64[0] = v24.i64[0];
  v39 = a4[2];
  v40 = a4[3];
  _Q2 = vsubq_f32(v40, v39);
  _S4 = _Q2.i32[2];
  __asm { FMLA            S3, S4, V2.S[1] }

  _Q2.f32[0] = _S3 + _S3;
  v48 = a4[4];
  v49 = a4[5];
  _Q5 = vsubq_f32(v49, v48);
  _S7 = _Q5.i32[2];
  __asm { FMLA            S6, S7, V5.S[1] }

  _Q5.f32[0] = _S6 + _S6;
  v53 = ((v57 * v16) + (v57 * v14)) + (v14 * v16);
  a4->f32[0] = ((*(a1 + 16) * (((1.0 / (v53 + v53)) * _Q2.f32[0]) * v6)) + 2.0) + (*(a1 + 16) * (((1.0 / (v53 + v53)) * _Q5.f32[0]) * v17));
  v39.i32[3] = 0;
  v48.i32[3] = 0;
  v40.i32[3] = 0;
  v49.i32[3] = 0;
  v54 = vsubq_f32(vminnmq_f32(v40, v49), vmaxnmq_f32(v39, v48));
  *_Q2.f32 = vmul_f32(*v54.i8, *&vextq_s8(v54, v54, 4uLL));
  v55 = (_Q2.f32[1] + (_Q2.f32[0] + (*v54.i32 * *&v54.i32[2]))) + (_Q2.f32[1] + (_Q2.f32[0] + (*v54.i32 * *&v54.i32[2])));
  if (v55 < 0.0)
  {
    v55 = 0.0;
  }

  a4->f32[3] = v55;
  return result;
}

uint64_t sub_239DEA218(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = (a3 + 32 * a4);
  v8 = *(a2 + 4);
  v5 = 126 - 2 * __clz(a4);
  if (a4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_239DEA478(a3, v4, &v8, v6, 1);
}

uint64_t sub_239DEA26C(double a1, double a2, float32x4_t a3, float32x4_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, unsigned int *a10, _DWORD *a11, uint64_t a12, uint64_t a13)
{
  v17 = vsubq_f32(a4, a3);
  v18 = v17.f32[0] <= v17.f32[1];
  if (v17.f32[0] <= v17.f32[1])
  {
    v17.f32[0] = v17.f32[1];
  }

  v19 = vcvtad_u64_f64(vcvtd_n_f64_u32(a8, 1uLL));
  if (v17.f32[0] <= v17.f32[2])
  {
    v18 = 2;
  }

  *a10 = v19;
  *a11 = a8 - v19;
  v20 = (a7 + 32 * a8);
  v46 = v18;
  v21 = 126 - 2 * __clz(a8);
  if (a8)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  sub_239DEA478(a7, v20, &v46, v22, 1);
  v23 = *a10;
  v24.i64[0] = 0x7F0000007FLL;
  v24.i64[1] = 0x7F0000007FLL;
  v25 = vnegq_f32(v24);
  v26 = v25;
  v27.i64[0] = 0x7F0000007FLL;
  v27.i32[2] = 127;
  if (v23)
  {
    v28 = a7 + 32 * v23;
    v29.i64[0] = 0x7F0000007FLL;
    v29.i64[1] = 0x7F0000007FLL;
    v30 = vnegq_f32(v29);
    v31 = a7;
    do
    {
      v32.i64[0] = *v31;
      v33.i64[0] = *(v31 + 16);
      v34 = v30;
      v34.i32[3] = 0;
      v32.i64[1] = *(v31 + 8);
      v35 = v29;
      v35.i32[3] = 0;
      v26 = vminnmq_f32(v34, v32);
      v33.i64[1] = *(v31 + 24);
      v27 = vmaxnmq_f32(v35, v33);
      v26.i32[3] = v30.i32[3];
      v27.i32[3] = v29.i32[3];
      v31 += 32;
      v29 = v27;
      v30 = v26;
    }

    while (v31 != v28);
  }

  *(a12 + 8) = v26.i32[2];
  *a12 = v26.i64[0];
  *(a12 + 24) = v27.i32[2];
  *(a12 + 16) = v27.i64[0];
  v36 = *a11;
  if (v36)
  {
    v37 = a7 + 32 * *a10;
    v38 = v37 + 32 * v36;
    v39.i64[0] = 0x7F0000007FLL;
    v39.i64[1] = 0x7F0000007FLL;
    v40 = vnegq_f32(v39);
    do
    {
      v41.i64[0] = *v37;
      v42.i64[0] = *(v37 + 16);
      v43 = v40;
      v43.i32[3] = 0;
      v41.i64[1] = *(v37 + 8);
      v44 = v39;
      v44.i32[3] = 0;
      v25 = vminnmq_f32(v43, v41);
      v42.i64[1] = *(v37 + 24);
      v24 = vmaxnmq_f32(v44, v42);
      v25.i32[3] = v40.i32[3];
      v24.i32[3] = v39.i32[3];
      v37 += 32;
      v39 = v24;
      v40 = v25;
    }

    while (v37 != v38);
  }

  *(a13 + 8) = v25.i32[2];
  *a13 = v25.i64[0];
  *(a13 + 24) = v24.i32[2];
  *(a13 + 16) = v24.i64[0];
  return 1;
}

void sub_239DEA440(uint64_t a1)
{
  sub_239E0512C(a1);

  JUMPOUT(0x23EE7D780);
}

__n128 sub_239DEB2C4(float *a1, float *a2, float *a3, float *a4, unsigned int *a5, __n128 result)
{
  v6 = *a5;
  if (v6 >= 2)
  {
    v6 = 2;
  }

  v7 = a2[v6] + ((a2[v6 + 4] - a2[v6]) * 0.5);
  v8 = a3[v6] + ((a3[v6 + 4] - a3[v6]) * 0.5);
  if (v7 >= (a1[v6] + ((a1[v6 + 4] - a1[v6]) * 0.5)))
  {
    if (v8 < v7)
    {
      v11 = *a2;
      result = *(a2 + 4);
      v12 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v12;
      *a3 = v11;
      *(a3 + 1) = result;
      v13 = *a5;
      if (v13 >= 2)
      {
        v13 = 2;
      }

      if ((a2[v13] + ((a2[v13 + 4] - a2[v13]) * 0.5)) < (a1[v13] + ((a1[v13 + 4] - a1[v13]) * 0.5)))
      {
        v14 = *a1;
        result = *(a1 + 4);
        v15 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v15;
        *a2 = v14;
        *(a2 + 1) = result;
      }
    }
  }

  else
  {
    if (v8 < v7)
    {
      v9 = *a1;
      result = *(a1 + 4);
      v10 = *(a3 + 1);
      *a1 = *a3;
      *(a1 + 1) = v10;
LABEL_15:
      *a3 = v9;
      *(a3 + 1) = result;
      goto LABEL_16;
    }

    v16 = *a1;
    result = *(a1 + 4);
    v17 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v17;
    *a2 = v16;
    *(a2 + 1) = result;
    v18 = *a5;
    if (v18 >= 2)
    {
      v18 = 2;
    }

    if ((a3[v18] + ((a3[v18 + 4] - a3[v18]) * 0.5)) < (a2[v18] + ((a2[v18 + 4] - a2[v18]) * 0.5)))
    {
      v9 = *a2;
      result = *(a2 + 4);
      v19 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v19;
      goto LABEL_15;
    }
  }

LABEL_16:
  v20 = *a5;
  if (v20 >= 2)
  {
    v20 = 2;
  }

  result.n128_u32[0] = 0.5;
  if ((a4[v20] + ((a4[v20 + 4] - a4[v20]) * 0.5)) < (a3[v20] + ((a3[v20 + 4] - a3[v20]) * 0.5)))
  {
    v22 = *a3;
    v21 = *(a3 + 1);
    v23 = *(a4 + 1);
    *a3 = *a4;
    *(a3 + 1) = v23;
    *a4 = v22;
    *(a4 + 1) = v21;
    v24 = *a5;
    if (v24 >= 2)
    {
      v24 = 2;
    }

    result.n128_f32[0] = a2[v24] + ((a2[v24 + 4] - a2[v24]) * 0.5);
    if ((a3[v24] + ((a3[v24 + 4] - a3[v24]) * 0.5)) < result.n128_f32[0])
    {
      v25 = *a2;
      result = *(a2 + 4);
      v26 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v26;
      *a3 = v25;
      *(a3 + 1) = result;
      v27 = *a5;
      if (v27 >= 2)
      {
        v27 = 2;
      }

      result.n128_f32[0] = a2[v27] + ((a2[v27 + 4] - a2[v27]) * 0.5);
      if (result.n128_f32[0] < (a1[v27] + ((a1[v27 + 4] - a1[v27]) * 0.5)))
      {
        v28 = *a1;
        result = *(a1 + 4);
        v29 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v29;
        *a2 = v28;
        *(a2 + 1) = result;
      }
    }
  }

  return result;
}

uint64_t sub_239DEB528(uint64_t result, uint64_t a2, unsigned int *a3, double a4, __n128 a5)
{
  if (result != a2)
  {
    v5 = result + 32;
    if (result + 32 != a2)
    {
      v6 = 0;
      v7 = result;
      do
      {
        v8 = v5;
        v9 = *(v7 + 32);
        a5.n128_u64[0] = *(v7 + 48);
        a5.n128_u32[2] = *(v7 + 56);
        v10 = *a3;
        v11 = (&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (v10 & 3)));
        v12 = (&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v10 & 3)));
        v26 = v9;
        if (v10 >= 2)
        {
          v10 = 2;
        }

        v13 = *v12;
        v27 = a5;
        if ((v13 + ((*v11 - v13) * 0.5)) < (*(v7 + 4 * v10) + ((*(v7 + 4 * v10 + 16) - *(v7 + 4 * v10)) * 0.5)))
        {
          v14 = *(v7 + 44);
          v15 = *(v7 + 60);
          v16 = v6;
          while (1)
          {
            v17 = result + v16;
            v18 = *(result + v16 + 16);
            *(v17 + 32) = *(result + v16);
            *(v17 + 48) = v18;
            if (!v16)
            {
              break;
            }

            v19 = *a3;
            v20 = (&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3)));
            v21 = (&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3)));
            v25 = v9;
            if (v19 >= 2)
            {
              v19 = 2;
            }

            v22 = *v21;
            v24 = a5;
            v16 -= 32;
            if ((v22 + ((*v20 - v22) * 0.5)) >= (*(v17 + 4 * v19 - 32) + ((*(v17 + 4 * v19 - 16) - *(v17 + 4 * v19 - 32)) * 0.5)))
            {
              v23 = result + v16 + 32;
              goto LABEL_14;
            }
          }

          v23 = result;
LABEL_14:
          *(v23 + 8) = DWORD2(v9);
          *v23 = v9;
          *(v23 + 12) = v14;
          *(v23 + 24) = a5.n128_u32[2];
          *(v23 + 16) = a5.n128_u64[0];
          *(v23 + 28) = v15;
        }

        v5 = v8 + 32;
        v6 += 32;
        v7 = v8;
      }

      while (v8 + 32 != a2);
    }
  }

  return result;
}

uint64_t sub_239DEB670(uint64_t result, uint64_t a2, unsigned int *a3, double a4, __n128 a5)
{
  if (result != a2)
  {
    v5 = result + 32;
    if (result + 32 != a2)
    {
      do
      {
        v6 = v5;
        v7 = *(result + 32);
        a5.n128_u64[0] = *(result + 48);
        a5.n128_u32[2] = *(result + 56);
        v8 = *a3;
        v9 = (&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3)));
        v10 = (&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3)));
        v22 = v7;
        if (v8 >= 2)
        {
          v8 = 2;
        }

        v11 = *v10;
        v23 = a5;
        if ((v11 + ((*v9 - v11) * 0.5)) < (*(result + 4 * v8) + ((*(result + 4 * v8 + 16) - *(result + 4 * v8)) * 0.5)))
        {
          v12 = *(result + 44);
          v13 = *(result + 60);
          v14 = v6;
          do
          {
            v15 = *(v14 - 16);
            *v14 = *(v14 - 32);
            *(v14 + 16) = v15;
            v16 = *a3;
            if (v16 >= 2)
            {
              v17 = 2;
            }

            else
            {
              v17 = *a3;
            }

            v18 = v14 + 4 * v17;
            v14 -= 32;
            v21 = v7;
            v19 = *(&v21 & 0xFFFFFFFFFFFFFFF3 | (4 * (v16 & 3)));
            v20 = a5;
          }

          while ((v19 + ((*(&v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (v16 & 3))) - v19) * 0.5)) < (*(v18 - 64) + ((*(v18 - 48) - *(v18 - 64)) * 0.5)));
          *(v14 + 8) = DWORD2(v7);
          *v14 = v7;
          *(v14 + 12) = v12;
          *(v14 + 24) = a5.n128_u32[2];
          *(v14 + 16) = a5.n128_u64[0];
          *(v14 + 28) = v13;
        }

        v5 = v6 + 32;
        result = v6;
      }

      while (v6 + 32 != a2);
    }
  }

  return result;
}

float *sub_239DEB794(float *a1, float *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13)
{
  v14 = *a1;
  v13 = *(a1 + 1);
  v15 = *(a1 + 3);
  v16 = *(a1 + 7);
  v17 = *a3;
  a10 = *a1;
  v18 = 2;
  if (v17 < 2)
  {
    v18 = v17;
  }

  v19 = *(&a10 & 0xFFFFFFFFFFFFFFF3 | (4 * (v17 & 3)));
  a11 = v13;
  v20 = v19 + ((*(&a11 & 0xFFFFFFFFFFFFFFF3 | (4 * (v17 & 3))) - v19) * 0.5);
  if (v20 >= (a2[v18 - 8] + ((a2[v18 - 4] - a2[v18 - 8]) * 0.5)))
  {
    v25 = a1 + 8;
    do
    {
      v22 = v25;
      if (v25 >= a2)
      {
        break;
      }

      v26 = v17 >= 2uLL ? 2 : v17;
      v27 = *(v22 + v26) + ((*(v22 + v26 + 4) - *(v22 + v26)) * 0.5);
      v25 = (v22 + 2);
    }

    while (v20 >= v27);
  }

  else
  {
    v21 = a1;
    do
    {
      v22 = (v21 + 8);
      if (v17 >= 2uLL)
      {
        v23 = 2;
      }

      else
      {
        v23 = v17;
      }

      v24 = *(v22 + v23) + ((v21[v23 + 12] - *(v22 + v23)) * 0.5);
      v21 += 8;
    }

    while (v20 >= v24);
  }

  if (v22 >= a2)
  {
    v29 = a2;
  }

  else
  {
    v28 = v17;
    do
    {
      v29 = a2 - 8;
      if (v28 >= 2)
      {
        v30 = 2;
      }

      else
      {
        v30 = v28;
      }

      v31 = v29[v30] + ((a2[v30 - 4] - v29[v30]) * 0.5);
      a2 -= 8;
    }

    while (v20 < v31);
  }

  while (v22 < v29)
  {
    a13 = v22[1];
    a12 = *v22;
    v22[1] = *(v29 + 1);
    *v22 = *v29;
    *(v29 + 1) = a13;
    *v29 = a12;
    v32 = *a3;
    v33 = (&vars0 & 0xFFFFFFFFFFFFFFF3 | (4 * (*a3 & 3)));
    v34 = (&a9 & 0xFFFFFFFFFFFFFFF3 | (4 * (*a3 & 3)));
    a9 = v14;
    v35 = *v34;
    vars0 = v13;
    v36 = v35 + ((*v33 - v35) * 0.5);
    do
    {
      if (v32 >= 2uLL)
      {
        v37 = 2;
      }

      else
      {
        v37 = v32;
      }

      v38 = v22 + v37;
      v22 += 2;
    }

    while (v36 >= (*(v22 + v37) + ((v38[12] - *(v22 + v37)) * 0.5)));
    do
    {
      if (v32 >= 2uLL)
      {
        v39 = 2;
      }

      else
      {
        v39 = v32;
      }

      v40 = &v29[v39];
      v29 -= 8;
    }

    while (v36 < (v29[v39] + ((*(v40 - 4) - v29[v39]) * 0.5)));
  }

  if (v22 - 2 != a1)
  {
    *(a1 + 1) = *(v22 - 1);
    *a1 = *(v22 - 2);
  }

  *(v22 - 6) = DWORD2(v14);
  *(v22 - 4) = v14;
  *(v22 - 5) = v15;
  *(v22 - 2) = DWORD2(v13);
  *(v22 - 2) = v13;
  *(v22 - 1) = v16;
  return v22;
}

float *sub_239DEB9E4(float *a1, float *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13)
{
  v13 = 0;
  v15 = *a1;
  v14 = *(a1 + 1);
  v16 = *(a1 + 3);
  v17 = *(a1 + 7);
  v18 = *a3;
  v19 = (&a10 & 0xFFFFFFFFFFFFFFF3 | (4 * (*a3 & 3)));
  a10 = *a1;
  v20 = *v19;
  a11 = v14;
  v21 = v20 + ((*(&a11 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) - v20) * 0.5);
  do
  {
    if (v18 >= 2uLL)
    {
      v22 = 2;
    }

    else
    {
      v22 = v18;
    }

    v23 = a1[v13 + 8 + v22] + ((a1[v13 + 12 + v22] - a1[v13 + 8 + v22]) * 0.5);
    v13 += 8;
  }

  while (v23 < v21);
  v24 = &a1[v13];
  if (v13 == 8)
  {
    while (v24 < a2)
    {
      v25 = a2 - 8;
      if (v18 >= 2uLL)
      {
        v28 = 2;
      }

      else
      {
        v28 = v18;
      }

      v29 = v25[v28] + ((a2[v28 - 4] - v25[v28]) * 0.5);
      a2 -= 8;
      if (v29 < v21)
      {
        goto LABEL_18;
      }
    }

    v25 = a2;
  }

  else
  {
    do
    {
      v25 = a2 - 8;
      if (v18 >= 2uLL)
      {
        v26 = 2;
      }

      else
      {
        v26 = v18;
      }

      v27 = v25[v26] + ((a2[v26 - 4] - v25[v26]) * 0.5);
      a2 -= 8;
    }

    while (v27 >= v21);
  }

LABEL_18:
  if (v24 >= v25)
  {
    v30 = v24;
  }

  else
  {
    v30 = v24;
    v31 = v25;
    do
    {
      v32 = v30[1];
      a12 = *v30;
      v33 = a12;
      a13 = v32;
      v30[1] = v31[1];
      *v30 = *v31;
      *v31 = v33;
      v31[1] = v32;
      v34 = *a3;
      v35 = (&vars0 & 0xFFFFFFFFFFFFFFF3 | (4 * (*a3 & 3)));
      v36 = (&a9 & 0xFFFFFFFFFFFFFFF3 | (4 * (*a3 & 3)));
      a9 = v15;
      LODWORD(v32) = *v36;
      vars0 = v14;
      v37 = *&v32 + ((*v35 - *&v32) * 0.5);
      do
      {
        if (v34 >= 2uLL)
        {
          v38 = 2;
        }

        else
        {
          v38 = v34;
        }

        v39 = v30 + v38;
        v30 += 2;
      }

      while ((*(v30 + v38) + ((v39[12] - *(v30 + v38)) * 0.5)) < v37);
      do
      {
        if (v34 >= 2uLL)
        {
          v40 = 2;
        }

        else
        {
          v40 = v34;
        }

        v41 = v31 + v40;
        v31 -= 2;
      }

      while ((*(v31 + v40) + ((*(v41 - 4) - *(v31 + v40)) * 0.5)) >= v37);
    }

    while (v30 < v31);
  }

  if (v30 - 2 != a1)
  {
    *(a1 + 1) = *(v30 - 1);
    *a1 = *(v30 - 2);
  }

  *(v30 - 6) = DWORD2(v15);
  *(v30 - 4) = v15;
  *(v30 - 5) = v16;
  *(v30 - 2) = DWORD2(v14);
  *(v30 - 2) = v14;
  *(v30 - 1) = v17;
  return (v30 - 2);
}

BOOL sub_239DEBC00(__n128 *a1, __n128 *a2, unsigned int *a3, __n128 a4, __n128 a5, double a6, __n128 a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13, __n128 a15, __n128 a17, __n128 a19, __n128 a14, __int128 a16, __n128 a18, __n128 a20, __n128 a21, __int128 a22, __n128 a23, __n128 a24)
{
  v27 = (a2 - a1) >> 5;
  if (v27 > 2)
  {
    if (v27 != 3)
    {
      if (v27 == 4)
      {
        sub_239DEB2C4(a1, &a1[2], &a1[4], &a2[-2], a3, a4);
        return 1;
      }

      if (v27 == 5)
      {
        v33 = a1 + 6;
        v34 = a2 - 2;
        sub_239DEB2C4(a1, &a1[2], &a1[4], &a1[6], a3, a4);
        v35 = *a3;
        if (v35 >= 2)
        {
          v35 = 2;
        }

        if ((v34->n128_f32[v35] + ((a2[-1].n128_f32[v35] - v34->n128_f32[v35]) * 0.5)) < (v33->n128_f32[v35] + ((a1[7].n128_f32[v35] - v33->n128_f32[v35]) * 0.5)))
        {
          v37 = *v33;
          v36 = a1[7];
          v38 = a2[-1];
          *v33 = *v34;
          a1[7] = v38;
          *v34 = v37;
          a2[-1] = v36;
          v39 = *a3;
          if (v39 >= 2)
          {
            v39 = 2;
          }

          v40 = a1 + v39;
          if ((v40[24] + ((v40[28] - v40[24]) * 0.5)) < (v40[16] + ((v40[20] - v40[16]) * 0.5)))
          {
            v42 = a1[4];
            v41 = a1[5];
            v43 = a1[7];
            a1[4] = *v33;
            a1[5] = v43;
            *v33 = v42;
            a1[7] = v41;
            v44 = *a3;
            if (v44 >= 2)
            {
              v44 = 2;
            }

            v45 = a1 + v44;
            if ((v45[16] + ((v45[20] - v45[16]) * 0.5)) < (v45[8] + ((v45[12] - v45[8]) * 0.5)))
            {
              v47 = a1[2];
              v46 = a1[3];
              v48 = a1[5];
              a1[2] = a1[4];
              a1[3] = v48;
              a1[4] = v47;
              a1[5] = v46;
              v49 = *a3;
              if (v49 >= 2)
              {
                v49 = 2;
              }

              v50 = a1 + v49;
              if ((v50[8] + ((v50[12] - v50[8]) * 0.5)) < (*v50 + ((v50[4] - *v50) * 0.5)))
              {
                v52 = *a1;
                v51 = a1[1];
                v53 = a1[3];
                *a1 = a1[2];
                a1[1] = v53;
                a1[2] = v52;
                a1[3] = v51;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_30;
    }

    v28 = a1 + 2;
    v54 = a2 - 2;
    v55 = *a3;
    if (v55 >= 2)
    {
      v55 = 2;
    }

    v56 = a1 + v55;
    v57 = v28->n128_f32[v55] + ((v56[12] - v28->n128_f32[v55]) * 0.5);
    v58 = v54->n128_f32[v55] + ((a2[-1].n128_f32[v55] - v54->n128_f32[v55]) * 0.5);
    if (v57 >= (*v56 + ((v56[4] - *v56) * 0.5)))
    {
      if (v58 >= v57)
      {
        return 1;
      }

      v75 = *v28;
      v74 = a1[3];
      v76 = a2[-1];
      *v28 = *v54;
      a1[3] = v76;
      *v54 = v75;
      a2[-1] = v74;
      v77 = *a3;
      if (v77 >= 2)
      {
        v77 = 2;
      }

      v78 = a1 + v77;
      if ((v78[8] + ((v78[12] - v78[8]) * 0.5)) >= (*v78 + ((v78[4] - *v78) * 0.5)))
      {
        return 1;
      }

      v31 = *a1;
      v30 = a1[1];
      v79 = a1[3];
      *a1 = *v28;
      a1[1] = v79;
LABEL_8:
      *v28 = v31;
      v28[1] = v30;
      return 1;
    }

    if (v58 >= v57)
    {
      v90 = *a1;
      v89 = a1[1];
      v91 = a1[3];
      *a1 = *v28;
      a1[1] = v91;
      *v28 = v90;
      a1[3] = v89;
      v92 = *a3;
      if (v92 >= 2)
      {
        v92 = 2;
      }

      if ((a2[-2].n128_f32[v92] + ((a2[-1].n128_f32[v92] - a2[-2].n128_f32[v92]) * 0.5)) >= (a1[2].n128_f32[v92] + ((a1[3].n128_f32[v92] - a1[2].n128_f32[v92]) * 0.5)))
      {
        return 1;
      }

      v60 = *v28;
      v59 = a1[3];
      v93 = a2[-1];
      *v28 = *v54;
      a1[3] = v93;
    }

    else
    {
      v60 = *a1;
      v59 = a1[1];
      v61 = a2[-1];
      *a1 = *v54;
      a1[1] = v61;
    }

    *v54 = v60;
    a2[-1] = v59;
    return 1;
  }

  if (v27 < 2)
  {
    return 1;
  }

  if (v27 == 2)
  {
    v28 = a2 - 2;
    v29 = *a3;
    if (v29 >= 2)
    {
      v29 = 2;
    }

    if ((v28->n128_f32[v29] + ((a2[-1].n128_f32[v29] - v28->n128_f32[v29]) * 0.5)) >= (a1->n128_f32[v29] + ((a1[1].n128_f32[v29] - a1->n128_f32[v29]) * 0.5)))
    {
      return 1;
    }

    v31 = *a1;
    v30 = a1[1];
    v32 = a2[-1];
    *a1 = *v28;
    a1[1] = v32;
    goto LABEL_8;
  }

LABEL_30:
  v62 = a1 + 4;
  v63 = a1[4];
  v64 = a1 + 2;
  v65 = *a3;
  v66 = 2;
  if (v65 < 2)
  {
    v66 = *a3;
  }

  v67 = v64->n128_f32[v66] + ((a1[3].n128_f32[v66] - v64->n128_f32[v66]) * 0.5);
  v68 = *a1;
  a5.n128_u64[0] = a1[1].n128_u64[0];
  a5.n128_u32[2] = a1[1].n128_u32[2];
  a21 = *a1;
  a7.n128_u32[0] = *(&a21 & 0xFFFFFFFFFFFFFFF3 | (4 * (v65 & 3)));
  a24 = a5;
  v69 = a7.n128_f32[0] + ((*(&a24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v65 & 3))) - a7.n128_f32[0]) * 0.5);
  a7.n128_u64[0] = a1[5].n128_u64[0];
  a7.n128_u32[2] = a1[5].n128_u32[2];
  a22 = v63;
  v70 = *(&a22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v65 & 3)));
  a23 = a7;
  v71 = *(&a23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v65 & 3))) - v70;
  if (v67 >= v69)
  {
    if ((v70 + (v71 * 0.5)) < v67)
    {
      v81 = *v64;
      v80 = a1[3];
      v82 = a1[5];
      *v64 = *v62;
      a1[3] = v82;
      *v62 = v81;
      a1[5] = v80;
      v83 = *a3;
      v84 = 2;
      if (v83 < 2)
      {
        v84 = *a3;
      }

      v85 = a1[2].n128_f32[v84] + ((a1[3].n128_f32[v84] - a1[2].n128_f32[v84]) * 0.5);
      a20 = v68;
      v86 = *(&a20 & 0xFFFFFFFFFFFFFFF3 | (4 * (v83 & 3)));
      a18 = a5;
      if (v85 < (v86 + ((*(&a18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v83 & 3))) - v86) * 0.5)))
      {
        a5 = *a1;
        v87 = a1[1];
        v88 = a1[3];
        *a1 = *v64;
        a1[1] = v88;
        *v64 = a5;
        a1[3] = v87;
      }
    }
  }

  else
  {
    if ((v70 + (v71 * 0.5)) < v67)
    {
      a5 = *a1;
      v72 = a1[1];
      v73 = a1[5];
      *a1 = *v62;
      a1[1] = v73;
LABEL_55:
      *v62 = a5;
      a1[5] = v72;
      goto LABEL_56;
    }

    v94 = *a1;
    a5 = a1[1];
    v95 = a1[3];
    *a1 = *v64;
    a1[1] = v95;
    *v64 = v94;
    a1[3] = a5;
    v96 = *a3;
    v97 = (&a14 & 0xFFFFFFFFFFFFFFF3 | (4 * (v96 & 3)));
    v98 = (&a16 & 0xFFFFFFFFFFFFFFF3 | (4 * (v96 & 3)));
    a16 = v63;
    if (v96 >= 2)
    {
      v96 = 2;
    }

    v99 = *v98;
    a14 = a7;
    if ((v99 + ((*v97 - v99) * 0.5)) < (a1[2].n128_f32[v96] + ((a1[3].n128_f32[v96] - a1[2].n128_f32[v96]) * 0.5)))
    {
      a5 = *v64;
      v72 = a1[3];
      v100 = a1[5];
      *v64 = *v62;
      a1[3] = v100;
      goto LABEL_55;
    }
  }

LABEL_56:
  v101 = a1 + 6;
  if (&a1[6] == a2)
  {
    return 1;
  }

  v102 = 0;
  v103 = 0;
  while (1)
  {
    v104 = *v101;
    a5.n128_u64[0] = v101[1].n128_u64[0];
    a5.n128_u32[2] = v101[1].n128_u32[2];
    v105 = *a3;
    v106 = (&vars0 & 0xFFFFFFFFFFFFFFF3 | (4 * (v105 & 3)));
    v107 = (&v122 & 0xFFFFFFFFFFFFFFF3 | (4 * (v105 & 3)));
    v122 = *v101;
    if (v105 >= 2)
    {
      v105 = 2;
    }

    v108 = *v107;
    vars0 = a5;
    if ((v108 + ((*v106 - v108) * 0.5)) < (v62->n128_f32[v105] + ((v62[1].n128_f32[v105] - v62->n128_f32[v105]) * 0.5)))
    {
      v109 = v101->n128_u32[3];
      v110 = v101[1].n128_u32[3];
      v111 = v102;
      while (1)
      {
        v112 = a1 + v111;
        v113 = *(&a1[5] + v111);
        *(v112 + 96) = *(a1 + v111 + 64);
        *(v112 + 112) = v113;
        if (v111 == -64)
        {
          break;
        }

        v114 = *a3;
        v115 = (&v120 & 0xFFFFFFFFFFFFFFF3 | (4 * (v114 & 3)));
        v116 = (&v121 & 0xFFFFFFFFFFFFFFF3 | (4 * (v114 & 3)));
        v121 = v104;
        if (v114 >= 2)
        {
          v114 = 2;
        }

        v117 = *v116;
        v120 = a5;
        v111 -= 32;
        if ((v117 + ((*v115 - v117) * 0.5)) >= (*(v112 + 4 * v114 + 32) + ((*(v112 + 4 * v114 + 48) - *(v112 + 4 * v114 + 32)) * 0.5)))
        {
          v118 = &a1[6] + v111;
          goto LABEL_68;
        }
      }

      v118 = a1;
LABEL_68:
      *(v118 + 8) = v104.n128_u32[2];
      *v118 = v104.n128_u64[0];
      *(v118 + 12) = v109;
      *(v118 + 24) = a5.n128_u32[2];
      *(v118 + 16) = a5.n128_u64[0];
      ++v103;
      *(v118 + 28) = v110;
      if (v103 == 8)
      {
        return &v101[2] == a2;
      }
    }

    v62 = v101;
    v102 += 32;
    v101 += 2;
    if (v101 == a2)
    {
      return 1;
    }
  }
}

__n128 *sub_239DEC2AC(__n128 *a1, __n128 *a2, __n128 *a3, unsigned int *a4, __n128 a5)
{
  if (a1 != a2)
  {
    v9 = (a2 - a1) >> 5;
    if (v9 >= 2)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[2 * v10];
      do
      {
        sub_239DEC450(a1, a4, v9, v12, a5);
        v12 -= 8;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        v14 = *a4;
        if (v14 >= 2)
        {
          v14 = 2;
        }

        if ((v13[v14] + ((v13[v14 + 4] - v13[v14]) * 0.5)) < (a1->n128_f32[v14] + ((a1[1].n128_f32[v14] - a1->n128_f32[v14]) * 0.5)))
        {
          v16 = *v13;
          v15 = *(v13 + 4);
          v17 = a1[1];
          *v13 = *a1;
          *(v13 + 1) = v17;
          *a1 = v16;
          a1[1] = v15;
          sub_239DEC450(a1, a4, v9, a1, v15);
        }

        v13 += 8;
      }

      while (v13 != a3);
    }

    if (v9 >= 2)
    {
      v18 = &a2[-2];
      do
      {
        v22 = *a1;
        v23 = a1[1];
        v19 = sub_239DEC638(a1, a4, v9);
        if (v18 == v19)
        {
          *v19 = v22;
          *(v19 + 1) = v23;
        }

        else
        {
          *(v19 + 1) = *(v18 + 1);
          *v19 = *v18;
          *v18 = v22;
          *(v18 + 1) = v23;
          sub_239DEC6D8(a1, (v19 + 8), a4, ((v19 + 8) - a1) >> 5, v23.n128_f64[0], v22);
        }

        v18 -= 8;
      }

      while (v9-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t sub_239DEC450(uint64_t result, unsigned int *a2, uint64_t a3, float *a4, __n128 a5)
{
  if (a3 >= 2)
  {
    v5 = a4 - result;
    v6 = (a3 - 2) >> 1;
    if (v6 >= (a4 - result) >> 5)
    {
      v7 = v5 >> 4;
      v8 = (v5 >> 4) + 1;
      v9 = result + 32 * v8;
      v10 = v7 + 2;
      v11 = *a2;
      if (v10 < a3)
      {
        v12 = 2;
        if (v11 < 2)
        {
          v12 = *a2;
        }

        if ((*(v9 + 4 * v12) + ((*(v9 + 4 * v12 + 16) - *(v9 + 4 * v12)) * 0.5)) < (*(v9 + 32 + 4 * v12) + ((*(v9 + 4 * v12 + 48) - *(v9 + 32 + 4 * v12)) * 0.5)))
        {
          v9 += 32;
          v8 = v10;
        }
      }

      v13 = 2;
      if (v11 < 2)
      {
        v13 = *a2;
      }

      v14 = *(v9 + 4 * v13) + ((*(v9 + 4 * v13 + 16) - *(v9 + 4 * v13)) * 0.5);
      v15 = *a4;
      a5.n128_u64[0] = *(a4 + 2);
      a5.n128_f32[2] = a4[6];
      v29 = *a4;
      v16 = *(&v29 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3)));
      v30 = a5;
      if (v14 >= (v16 + ((*(&v30 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3))) - v16) * 0.5)))
      {
        v17 = *(a4 + 3);
        v18 = *(a4 + 7);
        do
        {
          v19 = a4;
          a4 = v9;
          *(v19 + 1) = *(v9 + 16);
          *v19 = *v9;
          if (v6 < v8)
          {
            break;
          }

          v20 = 2 * v8;
          v8 = (2 * v8) | 1;
          v9 = result + 32 * v8;
          v21 = v20 + 2;
          v22 = *a2;
          if (v21 < a3)
          {
            v23 = v22 >= 2 ? 2 : *a2;
            if ((*(v9 + 4 * v23) + ((*(v9 + 4 * v23 + 16) - *(v9 + 4 * v23)) * 0.5)) < (*(v9 + 32 + 4 * v23) + ((*(v9 + 4 * v23 + 48) - *(v9 + 32 + 4 * v23)) * 0.5)))
            {
              v9 += 32;
              v8 = v21;
            }
          }

          v24 = v22 >= 2 ? 2 : *a2;
          v25 = *(v9 + 4 * v24) + ((*(v9 + 4 * v24 + 16) - *(v9 + 4 * v24)) * 0.5);
          v28 = v15;
          v26 = *(&v28 & 0xFFFFFFFFFFFFFFF3 | (4 * (v22 & 3)));
          v27 = a5;
        }

        while (v25 >= (v26 + ((*(&v27 & 0xFFFFFFFFFFFFFFF3 | (4 * (v22 & 3))) - v26) * 0.5)));
        a4[2] = *(&v15 + 2);
        *a4 = v15;
        *(a4 + 3) = v17;
        a4[6] = a5.n128_f32[2];
        *(a4 + 2) = a5.n128_u64[0];
        *(a4 + 7) = v18;
      }
    }
  }

  return result;
}

_OWORD *sub_239DEC638(_OWORD *result, unsigned int *a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[2 * v3];
    result = v5 + 2;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = *a2;
      if (v8 >= 2)
      {
        v8 = 2;
      }

      if ((*(v5 + v8 + 8) + ((*(v5 + v8 + 12) - *(v5 + v8 + 8)) * 0.5)) < (*(v5 + v8 + 16) + ((*(v5 + v8 + 20) - *(v5 + v8 + 16)) * 0.5)))
      {
        result = v5 + 4;
        v3 = v7;
      }
    }

    v4[1] = result[1];
    *v4 = *result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t sub_239DEC6D8(uint64_t result, uint64_t a2, unsigned int *a3, uint64_t a4, double a5, __n128 a6)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v6 >> 1;
    v8 = (result + 32 * (v6 >> 1));
    v9 = (a2 - 32);
    v10 = *(a2 - 32);
    v11 = *a3;
    v12 = 2;
    if (v11 < 2)
    {
      v12 = *a3;
    }

    v13 = v8[v12] + ((v8[v12 + 4] - v8[v12]) * 0.5);
    a6.n128_u64[0] = *(a2 - 16);
    a6.n128_u32[2] = *(a2 - 8);
    v24 = *(a2 - 32);
    v14 = *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3)));
    v25 = a6;
    if (v13 < (v14 + ((*(&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3))) - v14) * 0.5)))
    {
      v15 = *(a2 - 20);
      v16 = *(a2 - 4);
      do
      {
        v17 = v9;
        v9 = v8;
        *(v17 + 1) = *(v8 + 1);
        *v17 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (result + 32 * v7);
        v18 = *a3;
        v19 = v18 >= 2 ? 2 : *a3;
        v20 = v8[v19] + ((v8[v19 + 4] - v8[v19]) * 0.5);
        v23 = v10;
        v21 = *(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3)));
        v22 = a6;
      }

      while (v20 < (v21 + ((*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3))) - v21) * 0.5)));
      v9[2] = *(&v10 + 2);
      *v9 = v10;
      *(v9 + 3) = v15;
      v9[6] = a6.n128_f32[2];
      *(v9 + 2) = a6.n128_u64[0];
      *(v9 + 7) = v16;
    }
  }

  return result;
}

void sub_239DEC804(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>, float32x4_t a5@<Q0>, float32x4_t a6@<Q1>)
{
  v101 = a2;
  v110 = a6;
  v109 = a5;
  v129 = *MEMORY[0x277D85DE8];
  _Q4 = vsubq_f32(a6, a5);
  _S2 = _Q4.i32[2];
  __asm { FMLA            S1, S2, V4.S[1] }

  a5.f32[0] = 1.0 / (_S1 + _S1);
  v108 = a5;
  *a4 = 2139095040;
  *(a4 + 4) = 0;
  *(a4 + 12) = 2139095040;
  *(a4 + 16) = 0;
  v16.i64[0] = 0x7F0000007FLL;
  v16.i64[1] = 0x7F0000007FLL;
  v17 = vnegq_f32(v16);
  *(a4 + 32) = v17;
  v18 = (a4 + 32);
  *(a4 + 48) = v16;
  *(a4 + 64) = v17;
  v107 = v17;
  *(a4 + 80) = v16;
  *(a4 + 96) = 0;
  v19 = *(a1 + 44);
  MEMORY[0x28223BE20]();
  v21 = v100 - v20;
  v106 = v22;
  bzero(v100 - v20, v22);
  MEMORY[0x28223BE20]();
  v23 = &v100[-4 * v19];
  bzero(v23, 32 * v19);
  MEMORY[0x28223BE20]();
  bzero(v23, 32 * v19);
  v28 = v108.f32[0];
  v29 = v109;
  v30 = v110;
  v31 = 0;
  v112 = (a3 + 0x7FFF) >> 15;
  v100[1] = v120;
  v32 = (v19 - 1);
  v103 = a3;
  v102 = v101 + 16;
  v105 = v23 + 1;
  f32 = v23[1].f32;
  v104 = &v23[2 * v32 + 1];
  do
  {
    v118 = v30;
    v33 = *(&v118 & 0xFFFFFFFFFFFFFFF3 | (4 * (v31 & 3)));
    v117 = v29;
    v34 = *(&v117 & 0xFFFFFFFFFFFFFFF3 | (4 * (v31 & 3)));
    v35 = v33 - v34;
    if ((v33 - v34) >= 0.001)
    {
      v114 = v26;
      v113 = v27;
      if (v19)
      {
        bzero(v21, v106);
        v27 = v113;
        v26 = v114;
        v24 = v107;
        *&v36 = 0x7F0000007FLL;
        *(&v36 + 1) = 0x7F0000007FLL;
        v28 = v108.f32[0];
        v29 = v109;
        v30 = v110;
        v37 = v19;
        v38 = f32;
        do
        {
          *(v38 - 1) = v24;
          *v38 = v36;
          v38 += 2;
          --v37;
        }

        while (v37);
      }

      if (v112 == 1 || (v39 = *(a1 + 64)) == 0)
      {
        if (a3)
        {
          v40 = v103;
          v41 = v102;
          do
          {
            v24.i64[0] = *(v41 - 16);
            v42 = *(v41 - 8);
            v43.i32[3] = 0;
            v43.i64[0] = v24.i64[0];
            v25.i64[0] = *v41;
            v44.i32[3] = 0;
            v44.i64[0] = *v41;
            v24.i32[2] = v42;
            v45 = *(v41 + 8);
            v25.i32[2] = v45;
            v46 = vsubq_f32(v25, v24);
            v115 = v24;
            v47 = *(&v115 & 0xFFFFFFFFFFFFFFF3 | (4 * (v31 & 3)));
            v116 = v46;
            LODWORD(v48) = ((((v47 + (*(&v116 & 0xFFFFFFFFFFFFFFF3 | (4 * (v31 & 3))) * 0.5)) - v34) / v35) * v19);
            if (v32 >= v48)
            {
              v48 = v48;
            }

            else
            {
              v48 = v32;
            }

            v49 = &v23[2 * v48];
            v50 = *v49;
            v25 = v49[1];
            v43.i32[2] = v42;
            v50.i32[3] = 0;
            v25.i32[3] = 0;
            v44.i32[2] = v45;
            ++*&v21[4 * v48];
            v51 = vminnmq_f32(v50, v43);
            v24 = vmaxnmq_f32(v25, v44);
            v49->i32[2] = v51.i32[2];
            v49->i64[0] = v51.i64[0];
            v49[1].i32[2] = v24.i32[2];
            v49[1].i64[0] = v24.i64[0];
            v41 += 32;
            --v40;
          }

          while (v40);
        }
      }

      else
      {
        __dmb(0xBu);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        v120[0] = sub_239DECEBC;
        v120[1] = &unk_278B3B390;
        v126 = v19;
        v127 = a3;
        v128 = v31;
        v121 = v29;
        v122 = v30;
        v123 = v101;
        v124 = v21;
        v125 = &v100[-4 * v19];
        dispatch_apply(v112, v39, block);
        v27 = v113;
        v26 = v114;
        v28 = v108.f32[0];
        v29 = v109;
        v30 = v110;
        __dmb(9u);
      }

      if (v19)
      {
        v52.i64[0] = 0x7F0000007FLL;
        v52.i64[1] = 0x7F0000007FLL;
        v53 = vnegq_f32(v52);
        v54 = v19;
        v55 = f32;
        v56 = v105;
        do
        {
          v56[-1] = v53;
          *v56 = v52;
          v57 = v55[-1];
          v58 = *v55;
          v59 = v53;
          v59.i32[3] = 0;
          v57.i32[3] = 0;
          v60 = vminnmq_f32(v59, v57);
          v61 = v52;
          v61.i32[3] = 0;
          v58.i32[3] = 0;
          v25 = vmaxnmq_f32(v61, v58);
          v60.i32[3] = v53.i32[3];
          v56 += 2;
          v25.i32[3] = v52.i32[3];
          v55 += 2;
          v52 = v25;
          v53 = v60;
          --v54;
        }

        while (v54);
      }

      v62 = *a4;
      v64 = *(a4 + 4);
      v63 = *(a4 + 8);
      v65 = *(a4 + 12);
      v67 = *(a4 + 16);
      v66 = *(a4 + 20);
      v24 = *(a4 + 64);
      if (v19 != 1)
      {
        v68 = 0;
        v69 = (a1 + 16);
        v70 = *(a1 + 32);
        v71 = *(a4 + 80);
        v72.i64[0] = 0x7F0000007FLL;
        v72.i64[1] = 0x7F0000007FLL;
        v73 = vnegq_f32(v72);
        v74 = vld1_dup_f32(v69);
        v75 = &v23[2 * v32];
        v76 = v104;
        v77 = (v19 - 1);
        v78 = a3;
        do
        {
          v79 = v73;
          v80 = v72;
          v81 = v76[-1];
          v82 = *v76;
          v83 = v79;
          v83.i32[3] = 0;
          v81.i32[3] = 0;
          v84 = vminnmq_f32(v83, v81);
          v85 = v80;
          v85.i32[3] = 0;
          v82.i32[3] = 0;
          v86 = vmaxnmq_f32(v85, v82);
          v73 = v84;
          v73.i32[3] = v79.i32[3];
          v72 = v86;
          v72.i32[3] = v80.i32[3];
          v87 = *&v21[4 * v77];
          v78 -= v87;
          v68 += v87;
          if (v78 >= v70 && v68 >= v70)
          {
            v88 = vsubq_f32(v72, v73);
            v89 = *v75;
            v90 = v75[1];
            v91 = vsubq_f32(v90, *v75);
            v92 = vzip1_s32(*v88.i8, *v91.i8);
            v93 = vzip2_s32(*v88.i8, *v91.i8);
            *v88.i8 = vzip1_s32(*&vextq_s8(v88, v88, 8uLL), *&vextq_s8(v91, v91, 8uLL));
            *v91.i8 = vmla_f32(vmla_f32(vmul_f32(v92, *v88.i8), v93, v92), *v88.i8, v93);
            *v88.i8 = vmul_f32(v74, vmul_f32(vmul_n_f32(vadd_f32(*v91.i8, *v91.i8), v28), vcvt_f32_u32(__PAIR64__(v78, v68))));
            v94 = *v88.i32 + (*&v88.i32[1] + 2.0);
            if (v94 < v62)
            {
              v89.i32[3] = 0;
              v84.i32[3] = 0;
              v90.i32[3] = 0;
              v86.i32[3] = 0;
              v95 = vmaxnmq_f32(v89, v84);
              v96 = vminnmq_f32(v90, v86);
              v95.i32[3] = v27.i32[3];
              v96.i32[3] = v26.i32[3];
              v97 = vsubq_f32(v96, v95);
              v98 = vmul_f32(*v97.i8, *&vextq_s8(v97, v97, 4uLL));
              v65 = (v98.f32[1] + (v98.f32[0] + (*v97.i32 * *&v97.i32[2]))) + (v98.f32[1] + (v98.f32[0] + (*v97.i32 * *&v97.i32[2])));
              if (v65 < 0.0)
              {
                v65 = 0.0;
              }

              v71 = v72;
              v99 = v75[1];
              v24 = v73;
              v66 = v68;
              v67 = v78;
              v63 = v77;
              *v18 = *v75;
              v18[1] = v99;
              v64 = v31;
              v62 = v94;
              v26 = v96;
              v27 = v95;
            }
          }

          v76 -= 2;
          v75 -= 2;
          --v77;
        }

        while (v77);
        *(a4 + 80) = v71;
      }

      *a4 = v62;
      *(a4 + 4) = v64;
      *(a4 + 8) = v63;
      *(a4 + 12) = v65;
      *(a4 + 16) = v67;
      *(a4 + 20) = v66;
      *(a4 + 64) = v24;
    }

    ++v31;
  }

  while (v31 != 3);
}

void sub_239DECEBC(uint64_t a1, int a2)
{
  v73 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 88);
  MEMORY[0x28223BE20]();
  v5 = &v71 - ((4 * v4 + 15) & 0x7FFFFFFF0);
  bzero(v5, 4 * v4);
  MEMORY[0x28223BE20]();
  v6 = &v71 - 2 * v4;
  bzero(v6, v7);
  if (v4)
  {
    bzero(&v71 - ((4 * v4 + 15) & 0x7FFFFFFF0), 4 * v4);
    v10 = v6 + 1;
    v11.i64[0] = 0x7F0000007FLL;
    v11.i64[1] = 0x7F0000007FLL;
    v12 = vnegq_f32(v11);
    v13 = v4;
    do
    {
      v10[-1] = v12;
      *v10 = v11;
      v10 += 2;
      --v13;
    }

    while (v13);
  }

  v14 = *(a1 + 92);
  if ((a2 << 15) + 0x8000 < v14)
  {
    v14 = (a2 << 15) + 0x8000;
  }

  if (a2 << 15 < v14)
  {
    v15 = a1 + 4 * (*(a1 + 96) & 3);
    v16 = *(v15 + 32);
    v17 = *(v15 + 48) - v16;
    v18 = v4 - 1;
    v19 = *(a1 + 64) + ((*&a2 & 0x1FFFFLL) << 20) + 16;
    v20 = v14 - (a2 << 15);
    v21 = *(a1 + 96);
    v22 = (&v71 & 0xFFFFFFFFFFFFFFF3 | (4 * (v21 & 3)));
    v23 = (&v72 & 0xFFFFFFFFFFFFFFF3 | (4 * (v21 & 3)));
    do
    {
      v8.i64[0] = *(v19 - 16);
      v24 = *(v19 - 8);
      v25.i32[3] = 0;
      v25.i64[0] = v8.i64[0];
      v9.i64[0] = *v19;
      v9.i32[2] = *(v19 + 8);
      v8.i32[2] = v24;
      v26 = vsubq_f32(v9, v8);
      v71 = v8;
      v27 = *v22;
      v72 = v26;
      LODWORD(v28) = ((((v27 + (*v23 * 0.5)) - v16) / v17) * v4);
      if (v18 >= v28)
      {
        v28 = v28;
      }

      else
      {
        v28 = v18;
      }

      v29 = &v6[2 * v28];
      v30 = *v29;
      v31 = v29[1];
      v25.i32[2] = v24;
      v30.i32[3] = 0;
      v31.i32[3] = 0;
      v9.i32[3] = 0;
      ++*&v5[4 * v28];
      v8 = vminnmq_f32(v30, v25);
      v32 = vmaxnmq_f32(v31, v9);
      v29->i32[2] = v8.i32[2];
      v29->i64[0] = v8.i64[0];
      v29[1].i32[2] = v32.i32[2];
      v29[1].i64[0] = v32.i64[0];
      v19 += 32;
      --v20;
    }

    while (v20);
  }

  if (v4)
  {
    v33 = 0;
    do
    {
      atomic_fetch_add((*(a1 + 72) + 4 * v33), *&v5[4 * v33]);
      v34 = (*(a1 + 80) + 32 * v33);
      f32 = v6[2 * v33].f32;
      v36 = *f32;
      v37 = COERCE_FLOAT(atomic_load(v34));
      v38 = LODWORD(v37);
      if (*&v36 <= v37)
      {
        v38 = *f32;
      }

      v39 = v37;
      atomic_compare_exchange_strong_explicit(v34, &v39, v38, memory_order_release, memory_order_relaxed);
      if (LODWORD(v39) != LODWORD(v37))
      {
        v40 = v39;
        do
        {
          v41 = v39;
          if (*&v36 <= v39)
          {
            v41 = *&v36;
          }

          atomic_compare_exchange_strong_explicit(v34, &v40, LODWORD(v41), memory_order_release, memory_order_relaxed);
          v42 = LODWORD(v40) == LODWORD(v39);
          v39 = v40;
        }

        while (!v42);
      }

      v43 = COERCE_FLOAT(atomic_load(v34 + 1));
      v44 = v43;
      if (*(&v36 + 1) <= v43)
      {
        v44 = *(&v36 + 1);
      }

      v45 = v43;
      atomic_compare_exchange_strong_explicit(v34 + 1, &v45, LODWORD(v44), memory_order_release, memory_order_relaxed);
      if (LODWORD(v45) != LODWORD(v43))
      {
        v46 = v45;
        do
        {
          v47 = v45;
          if (*(&v36 + 1) <= v45)
          {
            v47 = *(&v36 + 1);
          }

          atomic_compare_exchange_strong_explicit(v34 + 1, &v46, LODWORD(v47), memory_order_release, memory_order_relaxed);
          v42 = LODWORD(v46) == LODWORD(v45);
          v45 = v46;
        }

        while (!v42);
      }

      v48 = f32[2];
      v49 = COERCE_FLOAT(atomic_load(v34 + 2));
      v50 = LODWORD(v49);
      if (v48 <= v49)
      {
        v50 = *(f32 + 2);
      }

      v51 = v49;
      atomic_compare_exchange_strong_explicit(v34 + 2, &v51, v50, memory_order_release, memory_order_relaxed);
      if (LODWORD(v51) != LODWORD(v49))
      {
        v52 = v51;
        do
        {
          *&v53 = v51;
          if (v48 <= v51)
          {
            *&v53 = v48;
          }

          atomic_compare_exchange_strong_explicit(v34 + 2, &v52, v53, memory_order_release, memory_order_relaxed);
          v42 = LODWORD(v52) == LODWORD(v51);
          v51 = v52;
        }

        while (!v42);
      }

      v54 = *(f32 + 1);
      v55 = COERCE_FLOAT(atomic_load(v34 + 4));
      v56 = LODWORD(v55);
      if (*&v54 > v55)
      {
        v56 = *(f32 + 1);
      }

      v57 = v55;
      atomic_compare_exchange_strong_explicit(v34 + 4, &v57, v56, memory_order_release, memory_order_relaxed);
      if (LODWORD(v57) != LODWORD(v55))
      {
        v58 = v57;
        do
        {
          v59 = v57;
          if (*&v54 > v57)
          {
            v59 = *&v54;
          }

          atomic_compare_exchange_strong_explicit(v34 + 4, &v58, LODWORD(v59), memory_order_release, memory_order_relaxed);
          v42 = LODWORD(v58) == LODWORD(v57);
          v57 = v58;
        }

        while (!v42);
      }

      v60 = COERCE_FLOAT(atomic_load(v34 + 5));
      v61 = v60;
      if (*(&v54 + 1) > v60)
      {
        v61 = *(&v54 + 1);
      }

      v62 = v60;
      atomic_compare_exchange_strong_explicit(v34 + 5, &v62, LODWORD(v61), memory_order_release, memory_order_relaxed);
      if (LODWORD(v62) != LODWORD(v60))
      {
        v63 = v62;
        do
        {
          v64 = v62;
          if (*(&v54 + 1) > v62)
          {
            v64 = *(&v54 + 1);
          }

          atomic_compare_exchange_strong_explicit(v34 + 5, &v63, LODWORD(v64), memory_order_release, memory_order_relaxed);
          v42 = LODWORD(v63) == LODWORD(v62);
          v62 = v63;
        }

        while (!v42);
      }

      v65 = f32[6];
      v66 = COERCE_FLOAT(atomic_load(v34 + 6));
      v67 = LODWORD(v66);
      if (v65 > v66)
      {
        v67 = *(f32 + 6);
      }

      v68 = v66;
      atomic_compare_exchange_strong_explicit(v34 + 6, &v68, v67, memory_order_release, memory_order_relaxed);
      if (LODWORD(v68) != LODWORD(v66))
      {
        v69 = v68;
        do
        {
          *&v70 = v68;
          if (v65 > v68)
          {
            *&v70 = v65;
          }

          atomic_compare_exchange_strong_explicit(v34 + 6, &v69, v70, memory_order_release, memory_order_relaxed);
          v42 = LODWORD(v69) == LODWORD(v68);
          v68 = v69;
        }

        while (!v42);
      }

      ++v33;
    }

    while (v33 < *(a1 + 88));
  }
}

uint64_t sub_239DED2EC(uint64_t result, uint64_t a2, float *a3, int a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11, __n128 a12, __int128 a13, __int128 a14)
{
  if (a4)
  {
    v14 = *(a2 + 4);
    v15 = *(a2 + 8);
    v16 = &a3[8 * a4];
    v17 = *(result + 44);
    a12 = a5;
    v18 = *(&a12 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3)));
    vars0 = a6;
    v19 = *(&vars0 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) - v18;
    v20 = v17;
    v21 = v17 - 1;
    while (1)
    {
LABEL_3:
      if (v14 >= 2)
      {
        v22 = 2;
      }

      else
      {
        v22 = v14;
      }

      v23 = ((((a3[v22] + ((a3[v22 + 4] - a3[v22]) * 0.5)) - v18) / v19) * v20);
      if (v21 < v23)
      {
        v23 = v21;
      }

      if (v23 >= v15)
      {
        break;
      }

      a3 += 8;
      if (a3 == v16)
      {
        return result;
      }
    }

    v24 = v16;
    while (1)
    {
      v16 = v24 - 8;
      if (v24 - 8 == a3)
      {
        break;
      }

      if (v14 >= 2)
      {
        v25 = 2;
      }

      else
      {
        v25 = v14;
      }

      v26 = ((((v24[v25 - 8] + ((v24[v25 - 4] - v24[v25 - 8]) * 0.5)) - v18) / v19) * v20);
      if (v21 >= v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = v21;
      }

      v24 = v16;
      if (v27 < v15)
      {
        a14 = *(a3 + 1);
        a13 = *a3;
        *(a3 + 1) = *(v16 + 1);
        *a3 = *v16;
        a3 += 8;
        *(v16 + 1) = a14;
        *v16 = a13;
        if (v16 != a3)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

BOOL sub_239DED42C(uint64_t a1, double a2, double a3, float32x4_t a4, float32x4_t a5, uint64_t a6, float *a7, unsigned int a8, uint64_t a9, _DWORD *a10, __int32 *a11, float32x4_t *a12, float32x4_t *a13)
{
  v43 = *MEMORY[0x277D85DE8];
  sub_239DEC804(a1, a7, a8, &v36, a4, a5);
  v25 = v36.f32[0];
  v26 = v36.f32[0];
  if (v36.f32[0] == INFINITY)
  {
    sub_239DE9F60(a1, a7, a8, v34, a4, a5);
    v40 = v34[4];
    v41 = v34[5];
    v42 = v35;
    v36 = v34[0];
    v37 = v34[1];
    v38 = v34[2];
    v39 = v34[3];
    v26 = v34[0].f32[0];
  }

  if (*(a1 + 36) >= a8)
  {
    v27 = *(a1 + 16) * a8;
  }

  else
  {
    v27 = INFINITY;
  }

  if (v26 < v27)
  {
    if (v25 == INFINITY)
    {
      sub_239DEA218(a1, &v36, a7, a8);
    }

    else
    {
      sub_239DED2EC(a1, &v36, a7, a8, a4, a5, v19, v20, v21, v22, v23, v24, *&a4, *&a5);
    }

    v28 = v37.i32[1];
    *a10 = v37.i32[0];
    *a11 = v28;
    v29 = v39;
    *a12 = v38;
    a12[1] = v29;
    v30 = v41;
    *a13 = v40;
    a13[1] = v30;
  }

  return v26 < v27;
}

void sub_239DED5C0(uint64_t a1)
{
  sub_239E0512C(a1);

  JUMPOUT(0x23EE7D780);
}

void sub_239DEDCF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

void sub_239DEDD74(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_239DEDF38();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_239DEDFE0(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
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

void sub_239DEDE48(const void **a1, int *a2)
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
      sub_239DEDF38();
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
      sub_239DEE028(a1, v12);
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

void sub_239DEDF50(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_239DEDFAC(exception, a1);
  __cxa_throw(exception, &unk_284D08810, MEMORY[0x277D825F0]);
}

std::logic_error *sub_239DEDFAC(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_239DEDFE0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_239DE77E8();
}

void sub_239DEE028(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_239DE77E8();
}

uint64_t sub_239DEEE1C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v13 = a2;
  if ((atomic_load_explicit(byte_27DF88718, memory_order_acquire) & 1) == 0)
  {
    sub_239E20B34();
  }

  std::mutex::lock(&stru_27DF886D8);
  if (!qword_27DF886D0)
  {
    operator new();
  }

  v9 = sub_239DE7494(qword_27DF886D0, &v13);
  if (!v9)
  {
    operator new();
  }

  v10 = sub_239DF1484(v9[3], a4);
  std::mutex::unlock(&stru_27DF886D8);
  MPSLibrary::CreateUberShaderKey(a3, a1, &unk_239E26D60, v10, a5, a4, 1, 0, 0, 0, 0, 0, 0);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSLibrary::ReleaseMPSKey();
  return PipelineStateForMPSKey;
}

uint64_t sub_239DEEFC0(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a2[8];
  v7 = v6[1];
  v34 = *v6;
  v35 = v7;
  v8 = MPSCreateFunctionConstantValues();
  v10 = v8;
  v11 = *a3;
  v12 = *(a3 + 1);
  v13.i64[0] = -1;
  v13.i64[1] = -1;
  v14 = vceqq_s64(v12, v13);
  if (*a3 != -1 || ((v15 = vaddvq_s32(vbicq_s8(xmmword_239E26D10, vuzp1q_s32(vceqq_s64(*(a3 + 3), v13), vceqq_s64(*(a3 + 4), v13)))) & 0xF, (~vaddvq_s32(vandq_s8(vuzp1q_s32(v14, vceqq_s64(*(a3 + 3), v13)), xmmword_239E26D10)) & 0xF) == 0) ? (v16 = v15 == 0) : (v16 = 0), v16 ? (v17 = a3[5] == -1) : (v17 = 0), !v17))
  {
    if ((vuzp1_s16(vmovn_s64(v14), *v12.i8).u8[0] & 1) == 0)
    {
      v36 = *(a3 + 1);
      objc_msgSend_setConstantValue_type_atIndex_(v8, v9, &v36, 33, 126);
      v11 = *a3;
    }

    if (v11 != -1)
    {
      v36 = v11;
      objc_msgSend_setConstantValue_type_atIndex_(v10, v9, &v36, 33, 125);
    }

    if (a3[2] != -1)
    {
      v36 = a3[2];
      objc_msgSend_setConstantValue_type_atIndex_(v10, v9, &v36, 33, 124);
    }

    if (a3[3] != -1)
    {
      v36 = a3[3];
      objc_msgSend_setConstantValue_type_atIndex_(v10, v9, &v36, 33, 123);
    }

    if (a3[4] != -1)
    {
      v36 = a3[4];
      objc_msgSend_setConstantValue_type_atIndex_(v10, v9, &v36, 33, 119);
    }

    if (a3[5] != -1)
    {
      v36 = a3[5];
      objc_msgSend_setConstantValue_type_atIndex_(v10, v9, &v36, 33, 118);
    }

    if (a3[8] != -1)
    {
      v36 = a3[8];
      objc_msgSend_setConstantValue_type_atIndex_(v10, v9, &v36, 33, 122);
    }

    if (a3[9] != -1)
    {
      v36 = a3[9];
      objc_msgSend_setConstantValue_type_atIndex_(v10, v9, &v36, 33, 121);
    }

    if (a3[6] != -1)
    {
      v36 = a3[6];
      objc_msgSend_setConstantValue_type_atIndex_(v10, v9, &v36, 33, 117);
    }

    if (a3[7] != -1)
    {
      v36 = a3[7];
      objc_msgSend_setConstantValue_type_atIndex_(v10, v9, &v36, 33, 116);
    }
  }

  v18 = v34;
  v36 = (v34 >> 2) & 1;
  objc_msgSend_setConstantValue_type_atIndex_(v10, v9, &v36, 33, 0);
  v33 = (v34 & 8) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v10, v19, &v33, 53, 1);
  v32 = (v18 & 0x10) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v10, v20, &v32, 53, 2);
  v31 = (v18 & 0x20) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v10, v21, &v31, 53, 3);
  objc_msgSend_setConstantValue_type_atIndex_(v10, v22, &v35, 33, 4);
  objc_msgSend_setConstantValue_type_atIndex_(v10, v23, &v35 + 4, 33, 5);
  objc_msgSend_setConstantValue_type_atIndex_(v10, v24, &v35 + 8, 33, 6);
  v30 = v34 >> 6;
  objc_msgSend_setConstantValue_type_atIndex_(v10, v25, &v30, 33, 7);
  v29 = BYTE1(v34) & 3;
  objc_msgSend_setConstantValue_type_atIndex_(v10, v26, &v29, 33, 8);
  v27 = _MPSNewSpecializedFunction();

  return v27;
}

uint64_t sub_239DF1484(void *a1, __int128 *a2)
{
  v4 = a2[1];
  v9 = *a2;
  v10 = v4;
  v5 = sub_239DF150C(a1, &v9);
  if (v5)
  {
    return v5[6];
  }

  v6 = a1[3];
  v7 = a2[1];
  v9 = *a2;
  v10 = v7;
  v11 = &v9;
  sub_239DF1618(a1, &v9, &unk_239E26E90, &v11)[6] = v6;
  return v6;
}

void *sub_239DF150C(void *a1, void *a2)
{
  v2 = 0;
  v3 = 1193078;
  do
  {
    v3 = (1540483477 * ((1540483477 * *(a2 + v2)) ^ ((1540483477 * *(a2 + v2)) >> 24))) ^ (1540483477 * v3);
    v2 += 4;
  }

  while (v2 != 32);
  v4 = a1[1];
  if (!*&v4)
  {
    return 0;
  }

  v5 = (1540483477 * (v3 ^ (v3 >> 13))) ^ ((1540483477 * (v3 ^ (v3 >> 13))) >> 15);
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (*&v4 <= v5)
    {
      v7 = v5 % v4.i32[0];
    }
  }

  else
  {
    v7 = (v4.i32[0] - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == *a2 && result[3] == a2[1] && result[4] == a2[2] && result[5] == a2[3])
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_239DF1618(void *a1, void *a2, uint64_t a3, _OWORD **a4)
{
  v4 = 0;
  v5 = 1193078;
  do
  {
    v5 = (1540483477 * ((1540483477 * *(a2 + v4)) ^ ((1540483477 * *(a2 + v4)) >> 24))) ^ (1540483477 * v5);
    v4 += 4;
  }

  while (v4 != 32);
  v6 = (1540483477 * (v5 ^ (v5 >> 13))) ^ ((1540483477 * (v5 ^ (v5 >> 13))) >> 15);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_30;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (1540483477 * (v5 ^ (v5 >> 13))) ^ ((1540483477 * (v5 ^ (v5 >> 13))) >> 15);
    if (*&v7 <= v6)
    {
      v9 = v6 % v7.i32[0];
    }
  }

  else
  {
    v9 = (v7.i32[0] - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_30:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_30;
    }

LABEL_29:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_30;
    }
  }

  if (v11[2] != *a2 || v11[3] != a2[1] || v11[4] != a2[2] || v11[5] != a2[3])
  {
    goto LABEL_29;
  }

  return v11;
}

uint64_t sub_239DF18A8(uint64_t a1, uint64_t a2)
{

  return MTLReportFailureTypeEnabled();
}

uint64_t sub_239DF18C8(uint64_t a1, uint64_t a2)
{

  return MTLReportFailureTypeEnabled();
}

uint64_t sub_239DF18FC(uint64_t a1, const char *a2)
{

  return objc_msgSend_channelCount_(v3, a2, v2);
}

uint64_t sub_239DF1914(uint64_t a1, const char *a2)
{

  return objc_msgSend_channelCount_(v3, a2, v2);
}

uint64_t sub_239DF192C(uint64_t a1, uint64_t a2)
{

  return MTLReportFailureTypeEnabled();
}

uint64_t sub_239DF1D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a2;
  v13 = a4;
  if ((atomic_load_explicit(byte_27DF88768, memory_order_acquire) & 1) == 0)
  {
    sub_239E21F70();
  }

  std::mutex::lock(&stru_27DF88728);
  if (!qword_27DF88720)
  {
    operator new();
  }

  v8 = sub_239DE7494(qword_27DF88720, &v12);
  if (!v8)
  {
    operator new();
  }

  v9 = sub_239DF2470(v8[3], &v13);
  std::mutex::unlock(&stru_27DF88728);
  MPSLibrary::CreateUberShaderKey(a3, a1, &unk_239E26E40, v9, a5, &v13, 1, 0, 0, 0, 0, 0, 0);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSLibrary::ReleaseMPSKey();
  return PipelineStateForMPSKey;
}

uint64_t sub_239DF1EA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = **(a2 + 64);
  v7 = MPSCreateFunctionConstantValues();
  v9 = v7;
  v10 = *a3;
  v11 = *(a3 + 1);
  v12.i64[0] = -1;
  v12.i64[1] = -1;
  v13 = vceqq_s64(v11, v12);
  v14 = vaddvq_s32(vbicq_s8(xmmword_239E26D10, vuzp1q_s32(vceqq_s64(*(a3 + 3), v12), vceqq_s64(*(a3 + 4), v12))));
  v15 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(v13, vceqq_s64(*(a3 + 3), v12)), xmmword_239E26D10)) & 0xF;
  if (*a3 != -1 || v15 != 0 || (v14 & 0xF) != 0 || a3[5] != -1)
  {
    if ((vuzp1_s16(vmovn_s64(v13), *v11.i8).u8[0] & 1) == 0)
    {
      v23 = *(a3 + 1);
      objc_msgSend_setConstantValue_type_atIndex_(v7, v8, &v23, 33, 126);
      v10 = *a3;
    }

    if (v10 != -1)
    {
      v23 = v10;
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v23, 33, 125);
    }

    if (a3[2] != -1)
    {
      v23 = a3[2];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v23, 33, 124);
    }

    if (a3[3] != -1)
    {
      v23 = a3[3];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v23, 33, 123);
    }

    if (a3[4] != -1)
    {
      v23 = a3[4];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v23, 33, 119);
    }

    if (a3[5] != -1)
    {
      v23 = a3[5];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v23, 33, 118);
    }

    if (a3[8] != -1)
    {
      v23 = a3[8];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v23, 33, 122);
    }

    if (a3[9] != -1)
    {
      v23 = a3[9];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v23, 33, 121);
    }

    if (a3[6] != -1)
    {
      v23 = a3[6];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v23, 33, 117);
    }

    if (a3[7] != -1)
    {
      v23 = a3[7];
      objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v23, 33, 116);
    }
  }

  LOBYTE(v23) = (v6 & 2) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v9, v8, &v23, 53, 0);
  v22 = (v6 & 4) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v9, v19, &v22, 53, 1);
  v20 = _MPSNewSpecializedFunction();

  return v20;
}

uint64_t sub_239DF2470(void *a1, void *a2)
{
  v8 = *a2;
  v4 = sub_239DF24F8(a1, &v8);
  if (v4)
  {
    return v4[3];
  }

  v5 = a1[3];
  v7 = *a2;
  v8 = &v7;
  sub_239DF25F0(a1, &v7, &unk_239E26E90, &v8)[3] = v5;
  return v5;
}

void *sub_239DF24F8(void *a1, void *a2)
{
  v2 = 0;
  v3 = 1193054;
  do
  {
    v3 = (1540483477 * ((1540483477 * *(a2 + v2)) ^ ((1540483477 * *(a2 + v2)) >> 24))) ^ (1540483477 * v3);
    v2 += 4;
  }

  while (v2 != 8);
  v4 = a1[1];
  if (!*&v4)
  {
    return 0;
  }

  v5 = (1540483477 * (v3 ^ (v3 >> 13))) ^ ((1540483477 * (v3 ^ (v3 >> 13))) >> 15);
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (*&v4 <= v5)
    {
      v7 = v5 % v4.i32[0];
    }
  }

  else
  {
    v7 = (v4.i32[0] - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_239DF25F0(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = 0;
  v5 = 1193054;
  do
  {
    v5 = (1540483477 * ((1540483477 * *(a2 + v4)) ^ ((1540483477 * *(a2 + v4)) >> 24))) ^ (1540483477 * v5);
    v4 += 4;
  }

  while (v4 != 8);
  v6 = (1540483477 * (v5 ^ (v5 >> 13))) ^ ((1540483477 * (v5 ^ (v5 >> 13))) >> 15);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_20;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (1540483477 * (v5 ^ (v5 >> 13))) ^ ((1540483477 * (v5 ^ (v5 >> 13))) >> 15);
    if (*&v7 <= v6)
    {
      v9 = v6 % v7.i32[0];
    }
  }

  else
  {
    v9 = (v7.i32[0] - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_20;
    }

LABEL_19:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_19;
  }

  return v11;
}

void sub_239DF38B8(uint64_t a1)
{
  v148[1] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  kdebug_trace();
  if ((*(*(a1 + 32) + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    v4 = objc_msgSend_validate(*(a1 + 40), v2, v3);
    if (!*(a1 + 48))
    {
      sub_239E228F8(v4, v5);
    }
  }

  v6 = *(*(a1 + 32) + 136);
  if (v6)
  {
    if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v6 + 8))(v6);
    }

    *(*(a1 + 32) + 136) = 0;
  }

  kdebug_trace();
  v147 = 0;
  v145 = 0u;
  v146 = 0u;
  v144 = 0u;
  v9 = *(a1 + 40);
  if (v9)
  {
    objc_msgSend_getBVHOptions(v9, v7, v8);
    if (DWORD1(v144) == 3)
    {
      DWORD1(v144) = 2;
    }
  }

  *(&v145 + 1) = 0x100000001;
  kdebug_trace();
  kdebug_trace();
  v12 = objc_msgSend_group(*(a1 + 40), v10, v11);
  v15 = objc_msgSend_bvhGroup(v12, v13, v14);
  v16 = DWORD2(v146);
  v19 = objc_msgSend_usage(*(a1 + 32), v17, v18);
  v22 = objc_msgSend_usage(*(a1 + 32), v20, v21);
  v25 = v22;
  v26 = (v19 >> 3) & 1;
  if (!DWORD2(v146))
  {
    LODWORD(v26) = 0;
  }

  if (v26 == 1)
  {
    v22 = sub_239E22948(v22, v23);
  }

  if ((v25 & 4) != 0 && DWORD2(v146))
  {
    sub_239E22984(v22, v23);
  }

  if ((v19 & 8) != 0 && (v25 & 4) != 0)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v16 = 1;
  }

  else
  {
    if ((v19 & 8) != 0)
    {
      v16 = 1;
    }

    if (!v16)
    {
      v27 = *MEMORY[0x277CD7350];
      v28 = *(*(*(a1 + 32) + v27) + 16);
      v31 = objc_msgSend_dedicatedMemorySize(v28, v23, v24);
      if (!v31)
      {
        v31 = objc_msgSend_sharedMemorySize(v28, v29, v30);
      }

      v32 = *(a1 + 32);
      v33 = *(*(v32 + v27) + 16);
      v142[0] = v144;
      v142[1] = v145;
      v142[2] = v146;
      v143 = v147;
      v148[0] = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v29, *(v32 + 200));
      v35 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v34, v148, 1);
      v36 = sub_239E1A3A0(v33, v142, 0, 0, v35);
      v37 = sub_239E1D32C(*(*(*(a1 + 32) + v27) + 16));
      v41 = HIDWORD(v146) == 2 && DWORD1(v144) == 2 && v147 == 0 && v36 <= v31;
      if (v41 & v37 & (v25 >> 2))
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }
    }
  }

  kdebug_trace();
  kdebug_trace();
  if (v16 == 2)
  {
    operator new();
  }

  if (objc_msgSend_count(*(*(a1 + 32) + 144), v42, v43))
  {
    v45 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 144), v44, 0);
    v48 = objc_msgSend_branchingFactor(v45, v46, v47);
    if (v48 != HIDWORD(v146))
    {
      sub_239E229C0(v48, v49);
    }

    v50 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 144), v49, 0);
    v53 = objc_msgSend_nodeLayout(v50, v51, v52);
    if (v147 != v53)
    {
      sub_239E229FC(v53, v54);
    }
  }

  if (HIDWORD(v146) == 4)
  {
    operator new();
  }

  if (HIDWORD(v146) == 2)
  {
    operator new();
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v57 = objc_msgSend_group(*(a1 + 32), v55, v56);
  if (*(*(objc_msgSend_bvhGroup(v57, v58, v59) + 32) + 40))
  {
    operator new();
  }

  kdebug_trace();
  v60 = *(a1 + 32);
  v60[17] = (*(MEMORY[0] + 24))(0, v15, v60[21], v60[22], v60[16], v60[19], v60[20], v60[25], v60[18]);
  (*(MEMORY[0] + 8))(0);
  if (v144 == 1)
  {
    v63 = *(a1 + 32);
    v64 = *(*(v63 + 136) + 104);
    v65 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v61, *(v63 + 200));
    objc_msgSend_setObject_forKeyedSubscript_(v64, v66, v65, @"Instances");
    v69 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v67, v68);
    objc_msgSend_setObject_forKeyedSubscript_(v64, v70, v69, @"Buffers");
    v71 = MEMORY[0x277CCABB0];
    v74 = objc_msgSend_length(*(*(a1 + 32) + 152), v72, v73);
    v77 = objc_msgSend_numberWithDouble_(v71, v75, v76, vcvtd_n_f64_u64(v74, 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v69, v78, v77, @"Instance Buffer (mb)");
    v79 = MEMORY[0x277CCABB0];
    v82 = objc_msgSend_length(*(*(a1 + 32) + 168), v80, v81);
    v85 = objc_msgSend_numberWithDouble_(v79, v83, v84, vcvtd_n_f64_u64(v82, 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v69, v86, v85, @"Transform Buffer (mb)");
    v87 = MEMORY[0x277CCABB0];
    v90 = objc_msgSend_length(*(*(a1 + 32) + 184), v88, v89);
    v93 = objc_msgSend_numberWithDouble_(v87, v91, v92, vcvtd_n_f64_u64(v90, 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v69, v94, v93, @"Mask Buffer (mb)");
    v95 = MEMORY[0x277CCABB0];
    v98 = objc_msgSend_length(*(*(*(a1 + 32) + 136) + 120), v96, v97);
    v101 = objc_msgSend_numberWithDouble_(v95, v99, v100, vcvtd_n_f64_u64(v98, 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v69, v102, v101, @"Inverse Transform Buffer (mb)");
    v105 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v103, v104, *(*(*(*(a1 + 32) + 136) + 24) + 40) * 0.000000953674316);
    objc_msgSend_setObject_forKeyedSubscript_(v69, v106, v105, @"Inner Node Buffer (mb)");
    v109 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v107, v108, *(*(*(*(a1 + 32) + 136) + 32) + 40) * 0.000000953674316);
    objc_msgSend_setObject_forKeyedSubscript_(v69, v110, v109, @"Leaf Node Buffer (mb)");
    v113 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v111, v112, *(*(*(*(a1 + 32) + 136) + 40) + 40) * 0.000000953674316);
    objc_msgSend_setObject_forKeyedSubscript_(v69, v114, v113, @"Page Table 0 Buffer (mb)");
    v117 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v115, v116, *(*(*(*(a1 + 32) + 136) + 48) + 40) * 0.000000953674316);
    objc_msgSend_setObject_forKeyedSubscript_(v69, v118, v117, @"Page Table 1 Buffer (mb)");
    v121 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v119, v120, *(*(*(*(a1 + 32) + 136) + 56) + 40) * 0.000000953674316);
    objc_msgSend_setObject_forKeyedSubscript_(v69, v122, v121, @"Page Buffer (mb)");
    v125 = objc_msgSend_length(*(*(*(a1 + 32) + 136) + 120), v123, v124);
    v126 = *(*(a1 + 32) + 136);
    v129 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v127, v128, vcvtd_n_f64_u64(*(v126[3] + 40) + v125 + *(v126[4] + 40) + *(v126[5] + 40) + *(v126[6] + 40) + *(v126[7] + 40), 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v69, v130, v129, @"Total Internal (mb)");
  }

  v131 = objc_msgSend_group(*(a1 + 40), v61, v62);
  if (v15 != objc_msgSend_bvhGroup(v131, v132, v133))
  {
    operator new();
  }

  v136 = objc_msgSend_group(*(a1 + 40), v134, v135);
  v139 = objc_msgSend_bvhGroup(v136, v137, v138);
  sub_239E00D2C(*(v139 + 24));
  kdebug_trace();
  objc_msgSend_setStatus_(*(a1 + 40), v140, 1);
  (*(*(a1 + 48) + 16))();

  objc_autoreleasePoolPop(context);
}

void sub_239DF46D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239DF5260(uint64_t a1)
{
  v2 = *(a1 + 32);
  add = atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
  if (v2)
  {
    v4 = add == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    (*(*v2 + 8))(v2);
  }

  v5 = *(a1 + 40);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 == v7)
  {
    goto LABEL_16;
  }

  do
  {
    result = *v6;
    v9 = atomic_fetch_add((*v6 + 8), 0xFFFFFFFF);
    if (result)
    {
      v10 = v9 == 1;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      result = (*(*result + 8))(result);
    }

    v6 += 8;
  }

  while (v6 != v7);
  v5 = *(a1 + 40);
  if (v5)
  {
LABEL_16:
    v11 = *v5;
    if (*v5)
    {
      v5[1] = v11;
      operator delete(v11);
    }

    JUMPOUT(0x23EE7D780);
  }

  return result;
}

atomic_uint *sub_239DF5D58(uint64_t a1)
{
  result = *(a1 + 32);
  add = atomic_fetch_add(result + 2, 0xFFFFFFFF);
  if (result)
  {
    v3 = add == 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_239DF5E8C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_239DE77E8();
}

void sub_239DF5EE4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_239DE77E8();
}

uint64_t MPSRayDataTypeStride(MPSRayDataType a1)
{
  if (a1 == MPSRayDataTypePackedOriginDirection)
  {
    return 24;
  }

  else
  {
    return 32;
  }
}

uint64_t MPSIntersectionDataTypeStride(MPSIntersectionDataType a1)
{
  if (a1 - 1 > 7)
  {
    return 4;
  }

  else
  {
    return qword_239E26F68[a1 - 1];
  }
}

uint64_t sub_239DF72B4(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a2[8];
  v7 = *v6;
  v8 = *(v6 + 2);
  v9 = *(v6 + 3);
  v10 = *(v6 + 4);
  v11 = *(v6 + 5);
  v13 = *(v6 + 6);
  v12 = *(v6 + 7);
  v14 = *(v6 + 8);
  v15 = MPSCreateFunctionConstantValues();
  v17 = v15;
  v18 = *a3;
  v19 = *(a3 + 1);
  v20.i64[0] = -1;
  v20.i64[1] = -1;
  v21 = vceqq_s64(v19, v20);
  if (*a3 != -1 || ((v22 = vaddvq_s32(vbicq_s8(xmmword_239E26D10, vuzp1q_s32(vceqq_s64(*(a3 + 3), v20), vceqq_s64(*(a3 + 4), v20)))) & 0xF, (~vaddvq_s32(vandq_s8(vuzp1q_s32(v21, vceqq_s64(*(a3 + 3), v20)), xmmword_239E26D10)) & 0xF) == 0) ? (v23 = v22 == 0) : (v23 = 0), v23 ? (v24 = a3[5] == -1) : (v24 = 0), !v24))
  {
    if ((vuzp1_s16(vmovn_s64(v21), *v19.i8).u8[0] & 1) == 0)
    {
      v87 = *(a3 + 1);
      objc_msgSend_setConstantValue_type_atIndex_(v15, v16, &v87, 33, 126);
      v18 = *a3;
    }

    if (v18 != -1)
    {
      v87 = v18;
      objc_msgSend_setConstantValue_type_atIndex_(v17, v16, &v87, 33, 125);
    }

    if (a3[2] != -1)
    {
      v87 = a3[2];
      objc_msgSend_setConstantValue_type_atIndex_(v17, v16, &v87, 33, 124);
    }

    if (a3[3] != -1)
    {
      v87 = a3[3];
      objc_msgSend_setConstantValue_type_atIndex_(v17, v16, &v87, 33, 123);
    }

    if (a3[4] != -1)
    {
      v87 = a3[4];
      objc_msgSend_setConstantValue_type_atIndex_(v17, v16, &v87, 33, 119);
    }

    if (a3[5] != -1)
    {
      v87 = a3[5];
      objc_msgSend_setConstantValue_type_atIndex_(v17, v16, &v87, 33, 118);
    }

    if (a3[8] != -1)
    {
      v87 = a3[8];
      objc_msgSend_setConstantValue_type_atIndex_(v17, v16, &v87, 33, 122);
    }

    if (a3[9] != -1)
    {
      v87 = a3[9];
      objc_msgSend_setConstantValue_type_atIndex_(v17, v16, &v87, 33, 121);
    }

    if (a3[6] != -1)
    {
      v87 = a3[6];
      objc_msgSend_setConstantValue_type_atIndex_(v17, v16, &v87, 33, 117);
    }

    if (a3[7] != -1)
    {
      v87 = a3[7];
      objc_msgSend_setConstantValue_type_atIndex_(v17, v16, &v87, 33, 116);
    }
  }

  v86 = (v7 >> 4) & 1;
  v87 = (v7 >> 2) & 3;
  v84 = (v7 >> 6) & 1;
  v85 = (v7 >> 5) & 1;
  v82 = (v7 >> 10) & 3;
  v83 = (v7 >> 7) & 3;
  v81 = (v7 & 0x200) != 0;
  v80 = (v7 & 0x1000) != 0;
  v78 = v9;
  v79 = v8;
  v76 = (v7 >> 13) & 3;
  v77 = v10;
  v74 = (v7 >> 19) & 3;
  v75 = (v7 >> 15) & 0xF;
  v72 = (v7 >> 29) & 1;
  v73 = (v7 >> 21);
  v70 = (v7 >> 36) & 1;
  v71 = (v7 >> 30) & 0x3F;
  v69 = (v7 & 0x2000000000) != 0;
  v68 = (v7 & 0x4000000000) != 0;
  v66 = v11;
  v67 = (v7 >> 39) & 1;
  v64 = v12;
  v65 = v13;
  v63 = (v7 >> 40) & 3;
  v62 = (v7 & 0x40000000000) != 0;
  v61 = v14;
  v60 = (v7 & 0x80000000000) != 0;
  v59 = (v7 >> 44) & 0xF;
  objc_msgSend_setConstantValue_type_atIndex_(v17, v16, &v87, 33, 0, a2, a1, a4, a5);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v25, &v86, 33, 1);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v26, &v85, 33, 2);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v27, &v84, 33, 3);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v28, &v83, 33, 4);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v29, &v81, 53, 5);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v30, &v82, 33, 6);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v31, &v80, 53, 7);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v32, &v79, 33, 8);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v33, &v78, 33, 9);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v34, &v77, 33, 10);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v35, &v76, 33, 11);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v36, &v75, 33, 12);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v37, &v74, 33, 14);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v38, &v73, 33, 13);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v39, &v66, 33, 15);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v40, &v65, 33, 16);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v41, &v64, 33, 17);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v42, &v72, 33, 18);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v43, &v71, 33, 19);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v44, &v70, 33, 20);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v45, &v69, 53, 21);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v46, &v68, 53, 22);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v47, &v67, 33, 23);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v48, &v63, 33, 24);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v49, &v62, 53, 25);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v50, &v61, 33, 26);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v51, &v60, 53, 27);
  objc_msgSend_setConstantValue_type_atIndex_(v17, v52, &v59, 33, 28);
  v53 = _MPSNewSpecializedFunction();

  return v53;
}

uint64_t sub_239DFA1F8(uint64_t a1, uint64_t a2)
{

  return MTLReportFailureTypeEnabled();
}

uint64_t sub_239DFA214(uint64_t a1, uint64_t a2)
{

  return MTLReportFailureTypeEnabled();
}

uint64_t sub_239DFA254(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4, float32x4_t a5, float32x4_t a6)
{
  sub_239DFA788();
  v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(a4, v11, v10, @"BVH Statistics");
  v13 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v12, 0);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v14, v13, @"Nodes");
  v16 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v15, 0);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v17, v16, @"Primitive Indices");
  *&v18 = 0.0 / 0;
  v21 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v19, v20, v18);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v22, v21, @"Average leaf depth");
  v24 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v23, 0xFFFFFFFFLL);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v25, v24, @"Min Leaf Depth");
  v27 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v26, 1);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v28, v27, @"Max Leaf Depth");
  v30 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v29, 0);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v31, v30, @"Inner Nodes");
  v33 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v32, 0);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v34, v33, @"Leaf Nodes");
  *&v35 = 0 / 0;
  v38 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v36, v37, v35);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v39, v38, @"Inner Node Percentage");
  *&v40 = 0 / 0;
  v43 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v41, v42, v40);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v44, v43, @"Leaf Node Percentage");
  *&v45 = 0.0 / 0;
  v48 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v46, v47, v45);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v49, v48, @"Average Fragments per Leaf");
  v51 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v50, 0xFFFFFFFFLL);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v52, v51, @"Min Fragments per Leaf");
  v54 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v53, 0);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v55, v54, @"Max Fragments per Leaf");
  LODWORD(v56) = 0;
  v59 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v57, v58, v56);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v60, v59, @"SAH Cost");
  v63 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v61, v62, 0.0);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v64, v63, @"Overlap");
  *&v65 = 0.0 / 0;
  v68 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v66, v67, v65);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v69, v68, @"Average Children per Inner Node");
  v72 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v70, v71);
  objc_msgSend_setObject_forKeyedSubscript_(a4, v73, v72, @"BVH Options");
  v75 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v74, a2[8]);
  objc_msgSend_setObject_forKeyedSubscript_(v72, v76, v75, @"Max Depth");
  v78 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v77, a2[6]);
  objc_msgSend_setObject_forKeyedSubscript_(v72, v79, v78, @"Min Fragments Per Leaf");
  v81 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v80, a2[7]);
  objc_msgSend_setObject_forKeyedSubscript_(v72, v82, v81, @"Max Fragments Per Leaf");
  LODWORD(v83) = a2[2];
  v86 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v84, v85, v83);
  objc_msgSend_setObject_forKeyedSubscript_(v72, v87, v86, @"Fragment Cost");
  v91 = a2[1];
  if (v91 <= 3)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v72, v88, off_278B3C378[v91], @"Split Heuristic");
  }

  v92 = a2[12];
  if (v92 == 1)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v72, v88, @"AOS", @"Node Layout");
  }

  else if (!v92)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v72, v88, @"SOA", @"Node Layout");
  }

  v93 = a2[10];
  if (v93 <= 2)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v72, v88, off_278B3C398[v93], @"Builder");
  }

  LODWORD(v90) = a2[3];
  v94 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v88, v89, v90);
  objc_msgSend_setObject_forKeyedSubscript_(v72, v95, v94, @"Minimum Overlap");
  v97 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v96, a2[4]);
  objc_msgSend_setObject_forKeyedSubscript_(v72, v98, v97, @"Batch Size");
  v100 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v99, a2[5]);
  objc_msgSend_setObject_forKeyedSubscript_(v72, v101, v100, @"Max Concurrent Node Size");
  v103 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v102, a2[9]);
  objc_msgSend_setObject_forKeyedSubscript_(v72, v104, v103, @"Bins");
  v106 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v105, a2[11]);
  return objc_msgSend_setObject_forKeyedSubscript_(v72, v107, v106, @"Branching Factor");
}

float32_t sub_239DFA788()
{
  v34[1] = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20]();
  v6 = (v34 - v5);
  v7 = 0;
  v8 = 1;
  for (i = v6; ; --i)
  {
    if (*(v0 + 32 * v7 + 28) < 1)
    {
      v18 = *(v2 + 8);
      v19 = **v2 + 32 * v7;
      v20 = *v18;
      if (*v18 <= v8)
      {
        v20 = v8;
      }

      *v18 = v20;
      v21 = *(v2 + 24);
      **(v2 + 16) = **(v2 + 16) + v8;
      v3.i64[0] = *v19;
      v3.i32[2] = *(v19 + 8);
      v4.i64[0] = *(v19 + 16);
      v4.i32[2] = *(v19 + 24);
      v3 = vsubq_f32(v4, v3);
      v22 = vmul_f32(*v3.f32, *&vextq_s8(v3, v3, 4uLL));
      v3.f32[0] = v22.f32[0] + (v3.f32[0] * v3.f32[2]);
      v23 = *(v19 + 28);
      v24 = -v23;
      *v21 = *v21 + -v23;
      v25 = *(v2 + 32);
      v26 = *(v2 + 40);
      if (*v25 < v8)
      {
        LODWORD(v8) = *v25;
      }

      v27 = (v22.f32[1] + v3.f32[0]) + (v22.f32[1] + v3.f32[0]);
      *v25 = v8;
      v28 = *v26;
      if (*v26 >= v24)
      {
        v28 = -v23;
      }

      *v26 = v28;
      v29 = *(v2 + 48);
      v30 = *(v2 + 56);
      v31 = *v29 <= v24 ? -v23 : *v29;
      *v29 = v31;
      v3.f32[0] = *v30 + (((v27 * **(v2 + 64)) * -v23) * *(*(v2 + 72) + 8));
      *v30 = v3.f32[0];
      v32 = *(v2 + 88);
      ++**(v2 + 80);
      *v32 -= v23;
    }

    else
    {
      v10 = *(v1 + 8);
      v11 = **v1 + 32 * v7;
      v12 = *v10;
      if (*v10 <= v8)
      {
        v12 = v8;
      }

      *v10 = v12;
      **(v1 + 16) = **(v1 + 16) + v8;
      v3.i64[0] = *v11;
      v3.i32[2] = *(v11 + 8);
      v4.i64[0] = *(v11 + 16);
      v4.i32[2] = *(v11 + 24);
      v3 = vsubq_f32(v4, v3);
      v13 = vmul_f32(*v3.f32, *&vextq_s8(v3, v3, 4uLL));
      **(v1 + 32) = **(v1 + 32) + (**(v1 + 40) * (((v13.f32[1] + (v13.f32[0] + (v3.f32[0] * v3.f32[2]))) + (v13.f32[1] + (v13.f32[0] + (v3.f32[0] * v3.f32[2])))) * *(*(v1 + 24) + 52)));
      v14 = *(v1 + 56);
      ++**(v1 + 48);
      v15 = *(v11 + 28);
      v3.f32[0] = *v14 + v15;
      *v14 = v3.f32[0];
      if (v15 >= 1)
      {
        v16 = (v8 << 32) + 0x100000000;
        v17 = v15 + 1;
        do
        {
          *i++ = v16 | (v17 + *(v11 + 12) - 2);
          --v17;
        }

        while (v17 > 1);
      }
    }

    if (i == v6)
    {
      break;
    }

    v7 = *(i - 2);
    v8 = *(i - 1);
  }

  return v3.f32[0];
}

uint64_t sub_239DFB37C(uint64_t a1, uint64_t a2)
{

  return MTLReportFailureTypeEnabled();
}

BOOL sub_239DFB58C(uint64_t a1, double a2, double a3, float32x4_t a4, float32x4_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, _DWORD *a10, unsigned int *a11, float32x4_t *a12, float32x4_t *a13)
{
  v16 = a8;
  v17 = malloc_type_malloc(32 * a8, 0x1000040E0EAB150uLL);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  _Q0 = vsubq_f32(a5, a4);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[1] }

  v29 = 1.0 / (_S1 + _S1);
  v30 = (a7 + 32 * v16);
  v31 = 126 - 2 * __clz(v16);
  if (a8)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v78 = v17 + 1;
  v33 = (32 * (a8 - 1)) | 0x10;
  v34 = INFINITY;
  v77 = v17;
  v79 = (v17 + v33);
  v80 = a7 + v33;
  v35.i64[0] = 0x7F0000007FLL;
  v35.i64[1] = 0x7F0000007FLL;
  v36.i64[0] = 0x7F0000007FLL;
  v36.i64[1] = 0x7F0000007FLL;
  v87 = v36;
  v83 = v35;
  v85 = vnegq_f32(v35);
  v81 = v29;
  v82 = v85;
  do
  {
    v88 = v18;
    sub_239DEA478(a7, v30, &v88, v32, 1);
    if (!a8)
    {
      goto LABEL_9;
    }

    v37.i64[0] = 0x7F0000007FLL;
    v37.i64[1] = 0x7F0000007FLL;
    v38 = vnegq_f32(v37);
    v40 = v78;
    v39 = v16;
    v41 = a7 + 16;
    do
    {
      v40[-1] = v38;
      *v40 = v37;
      v42.i64[0] = *(v41 - 16);
      v43.i64[0] = *v41;
      v44 = v38;
      v44.i32[3] = 0;
      v42.i64[1] = *(v41 - 8);
      v45 = vminnmq_f32(v44, v42);
      v46 = v37;
      v46.i32[3] = 0;
      v43.i64[1] = *(v41 + 8);
      v47 = vmaxnmq_f32(v46, v43);
      v45.i32[3] = v38.i32[3];
      v40 += 2;
      v47.i32[3] = v37.i32[3];
      v41 += 32;
      v38 = v45;
      v37 = v47;
      --v39;
    }

    while (v39);
    if (a8 == 1)
    {
      v58 = v87;
      v60 = v83;
      v59 = v85;
      v57 = v82;
    }

    else
    {
LABEL_9:
      v48 = (a1 + 16);
      v49 = *(a1 + 32);
      v50.i64[0] = 0x7F0000007FLL;
      v50.i64[1] = 0x7F0000007FLL;
      v51 = vnegq_f32(v50);
      v52 = vld1_dup_f32(v48);
      v53 = 1;
      v54 = v79;
      v55 = v80;
      v56 = a8 - 1;
      v57 = v82;
      v58 = v87;
      v60 = v83;
      v59 = v85;
      do
      {
        v61 = v50;
        v62 = v51;
        v63.i64[0] = *(v55 - 16);
        v64.i64[0] = *v55;
        v65 = v62;
        v65.i32[3] = 0;
        v63.i64[1] = *(v55 - 8);
        v51 = vminnmq_f32(v65, v63);
        v66 = v61;
        v66.i32[3] = 0;
        v64.i64[1] = *(v55 + 8);
        v50 = vmaxnmq_f32(v66, v64);
        v51.i32[3] = v62.i32[3];
        v50.i32[3] = v61.i32[3];
        if (v56 >= v49 && v53 >= v49)
        {
          v67 = vsubq_f32(v50, v51);
          v68 = vsubq_f32(*v54, v54[-1]);
          v69 = vzip1_s32(*v67.i8, *v68.i8);
          v70 = vzip2_s32(*v67.i8, *v68.i8);
          *v67.i8 = vzip1_s32(*&vextq_s8(v67, v67, 8uLL), *&vextq_s8(v68, v68, 8uLL));
          *v68.i8 = vmla_f32(vmla_f32(vmul_f32(v69, *v67.i8), v70, v69), *v67.i8, v70);
          *v67.i8 = vmul_f32(v52, vmul_f32(vmul_n_f32(vadd_f32(*v68.i8, *v68.i8), v81), vcvt_f32_u32(__PAIR64__(v56, v53))));
          v71 = *v67.i32 + (*&v67.i32[1] + *(a1 + 52));
          if (v71 < v34)
          {
            v21 = v18;
            v34 = v71;
            v20 = v56;
            v19 = v53;
            v57 = v54[-1];
            v60 = *v54;
            v59 = v51;
            v58 = v50;
          }
        }

        v55 -= 32;
        ++v53;
        v54 -= 2;
        --v56;
      }

      while (v56);
    }

    v82 = v57;
    v83 = v60;
    v85 = v59;
    v87 = v58;
    ++v18;
  }

  while (v18 != 3);
  free(v77);
  v72 = *(a1 + 16) * a8;
  if (v34 < v72)
  {
    *a10 = v20;
    *a11 = v19;
    *a12 = v82;
    a12[1] = v83;
    *a13 = v85;
    a13[1] = v87;
    v89[0] = v21;
    sub_239DEA478(a7, v30, v89, v32, 1);
  }

  return v34 < v72;
}

void sub_239DFB8F8(uint64_t a1)
{
  sub_239E0512C(a1);

  JUMPOUT(0x23EE7D780);
}

BOOL sub_239DFB930(uint64_t a1, double a2, double a3, float32x4_t a4, float32x4_t a5, uint64_t a6, float *a7, uint64_t a8, uint64_t a9, _DWORD *a10, _DWORD *a11, float32x4_t *a12, float32x4_t *a13)
{
  v16 = a9;
  v17 = a8;
  v64 = *MEMORY[0x277D85DE8];
  sub_239DEC804(a1, a7, a8, &v58, a4, a5);
  if (v58.f32[0] == INFINITY)
  {
    sub_239DE9F60(a1, a7, v17, &v51, a4, a5);
    v62[0] = v55;
    v62[1] = v56;
    v63 = v57;
    v58 = v51;
    v59 = v52;
    v25 = 2;
    v60 = v53;
    v61 = v54;
  }

  else
  {
    v25 = 1;
  }

  v51.i32[0] = 2139095040;
  *(v51.i64 + 4) = 0;
  v51.i32[3] = 2139095040;
  *&v52 = 0;
  v26.i64[0] = 0x7F0000007FLL;
  v26.i64[1] = 0x7F0000007FLL;
  v53 = vnegq_f32(v26);
  v54 = v26;
  v55 = v53;
  v56 = v26;
  v57 = 0;
  v27 = vsubq_f32(v41, v40);
  v28 = vextq_s8(v27, v27, 4uLL);
  v28.n128_u64[0] = vmul_f32(*v27.i8, v28.n128_u64[0]);
  if ((v58.f32[3] / ((v28.n128_f32[1] + (v28.n128_f32[0] + (*v27.i32 * *&v27.i32[2]))) + (v28.n128_f32[1] + (v28.n128_f32[0] + (*v27.i32 * *&v27.i32[2]))))) <= *(a1 + 20))
  {
    v29 = INFINITY;
  }

  else
  {
    if (*(a1 + 176))
    {
      sub_239DFC264(a1, a7, v17, v16, &v44, a4, a5);
    }

    else
    {
      sub_239DFBC30(a1, a7, v17, v16, &v44, a4, a5);
    }

    v55 = v48;
    v56 = v49;
    v57 = v50;
    v51 = v44;
    v52 = v45;
    v53 = v46;
    v54 = v47;
    if (DWORD1(v45) + v45 <= v16)
    {
      v29 = v51.f32[0];
    }

    else
    {
      v51.i32[0] = 2139095040;
      v29 = INFINITY;
    }
  }

  v30 = *(a1 + 16) * v17;
  if (*(a1 + 36) < v17)
  {
    v30 = INFINITY;
  }

  v28.n128_u32[0] = v58.i32[0];
  if (v58.f32[0] >= v30)
  {
    v24.n128_f32[0] = v30;
  }

  else
  {
    v24.n128_u32[0] = v58.i32[0];
  }

  v31 = v29 < v24.n128_f32[0] || v58.f32[0] < v30;
  if (v31)
  {
    if (v58.f32[0] >= v30)
    {
      v32 = 0;
    }

    else
    {
      v32 = v25;
    }

    if (v29 < v24.n128_f32[0])
    {
      v32 = 3;
    }

    if (v32 == 2)
    {
      sub_239DEA218(a1, &v58, a7, v17);
    }

    else
    {
      if (v32 != 1)
      {
        v35 = &v55;
        if (*(a1 + 176))
        {
          sub_239DFCF68(a1, &v51, a7, v17, a4, a5);
        }

        else
        {
          sub_239DFC898(a1, &v51, a7, v17, a4, a5);
        }

        v36 = DWORD1(v52);
        *a10 = v52;
        *a11 = v36;
        v37 = v54;
        *a12 = v53;
        a12[1] = v37;
        goto LABEL_35;
      }

      sub_239DED2EC(a1, &v58, a7, v17, a4, a5, v20, v21, v22, v23, v28, v24, v40, v41);
    }

    v33 = DWORD1(v59);
    *a10 = v59;
    *a11 = v33;
    v34 = v61;
    *a12 = v60;
    a12[1] = v34;
    v35 = v62;
LABEL_35:
    v38 = v35[1];
    *a13 = *v35;
    a13[1] = v38;
  }

  return v31;
}

void sub_239DFBC30(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X8>, float32x4_t a6@<Q0>, float32x4_t a7@<Q1>)
{
  v84 = a3;
  v83 = a2;
  v102 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 44);
  v87 = a7;
  v86 = a6;
  _Q0 = vsubq_f32(a7, a6);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[1] }

  _Q0.f32[0] = 1.0 / (_S1 + _S1);
  v82 = _Q0;
  *a5 = 2139095040;
  *(a5 + 4) = 0;
  *(a5 + 12) = 2139095040;
  _Q0.i64[0] = 0x7F0000007FLL;
  _Q0.i64[1] = 0x7F0000007FLL;
  v17 = vnegq_f32(_Q0);
  *(a5 + 32) = v17;
  v18 = (a5 + 32);
  *(a5 + 16) = 0;
  *(a5 + 48) = _Q0;
  *(a5 + 64) = v17;
  v78 = v17;
  *(a5 + 80) = _Q0;
  *(a5 + 96) = 0;
  MEMORY[0x28223BE20]();
  v19 = v73 - ((4 * v10 + 15) & 0x7FFFFFFF0);
  bzero(v19, 4 * v10);
  MEMORY[0x28223BE20]();
  v77 = 4 * v10;
  bzero(v19, v77);
  MEMORY[0x28223BE20]();
  bzero(&v73[-4 * v10], 32 * v10);
  MEMORY[0x28223BE20]();
  v20 = &v73[-4 * v10];
  bzero(v20, 32 * v10);
  v27 = 0;
  v80 = v84 - 1;
  v73[1] = v91;
  LODWORD(v28) = 0;
  HIDWORD(v28) = v84;
  v79 = v28;
  v81 = v20;
  v29 = (v10 - 1);
  v76 = v20 + 1;
  f32 = v20[1].f32;
  v75 = &v20[2 * v29 + 1];
  v74 = &v20[2 * v29];
  do
  {
    v89 = v87;
    v30 = *(&v89 & 0xFFFFFFFFFFFFFFF3 | (4 * (v27 & 3)));
    v88 = v86;
    if ((v30 - *(&v88 & 0xFFFFFFFFFFFFFFF3 | (4 * (v27 & 3)))) >= 0.001)
    {
      if (v10)
      {
        v31 = v77;
        bzero(v19, v77);
        bzero(v19, v31);
        v32 = v78;
        *&v33 = 0x7F0000007FLL;
        *(&v33 + 1) = 0x7F0000007FLL;
        v34 = v10;
        v35 = f32;
        do
        {
          *(v35 - 1) = v32;
          *v35 = v33;
          v35 += 2;
          --v34;
        }

        while (v34);
      }

      v36 = (v80 + *(a1 + 24)) / *(a1 + 24);
      if (v36 == 1 || (v37 = *(a1 + 64)) == 0)
      {
        if (v27 == 2)
        {
          sub_239DFE608(a1, v83, v19, v19, v81, 0, v84, v86, v87, *v21.i64, *v22.i64, *v23.i64, *v24.i64, *v25.i64, v26);
        }

        else if (v27 == 1)
        {
          sub_239DFE28C(a1, v83, v19, v19, v81, 0, v84, v86, v87, *v21.i64, *v22.i64, *v23.i64, *v24.i64, *v25.i64, v26);
        }

        else
        {
          sub_239DFDF40(a1, v83, v19, v19, v81, 0, v84, v86, v87, *v21.i64, *v22.i64, *v23.i64, *v24.i64, *v25.i64, v26);
        }
      }

      else
      {
        __dmb(0xBu);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        v91[0] = sub_239DFE960;
        v91[1] = &unk_278B3C3B0;
        v99 = v10;
        v100 = v84;
        v101 = v27;
        v92 = v86;
        v93 = v87;
        v94 = a1;
        v95 = v83;
        v96 = v73 - ((4 * v10 + 15) & 0x7FFFFFFF0);
        v97 = v96;
        v98 = v81;
        dispatch_apply(v36, v37, block);
        __dmb(9u);
      }

      v38 = v82.f32[0];
      if (v10)
      {
        v39.i64[0] = 0x7F0000007FLL;
        v39.i64[1] = 0x7F0000007FLL;
        v40 = vnegq_f32(v39);
        v41 = v10;
        v42 = f32;
        v43 = v76;
        do
        {
          v43[-1] = v40;
          *v43 = v39;
          v44 = v42[-1];
          v45 = *v42;
          v46 = v40;
          v46.i32[3] = 0;
          v44.i32[3] = 0;
          v21 = vminnmq_f32(v46, v44);
          v23 = v39;
          v23.i32[3] = 0;
          v45.i32[3] = 0;
          v22 = vmaxnmq_f32(v23, v45);
          v21.i32[3] = v40.i32[3];
          v43 += 2;
          v22.i32[3] = v39.i32[3];
          v42 += 2;
          v39 = v22;
          v40 = v21;
          --v41;
        }

        while (v41);
      }

      v21.i32[0] = *a5;
      v48 = *(a5 + 4);
      v47 = *(a5 + 8);
      v49 = *(a5 + 12);
      v51 = *(a5 + 16);
      v50 = *(a5 + 20);
      v52 = *(a5 + 64);
      if (v10 != 1)
      {
        v53 = (a1 + 16);
        v54 = *(a1 + 32);
        v24 = *(a5 + 80);
        v23.i64[0] = 0x7F0000007FLL;
        v23.i64[1] = 0x7F0000007FLL;
        v25 = vnegq_f32(v23);
        *v22.f32 = vld1_dup_f32(v53);
        v55 = v74;
        v56 = v75;
        v57 = (v10 - 1);
        v26 = v79;
        do
        {
          v58 = v25;
          v59 = v56[-1];
          v60 = *v56;
          v61 = v58;
          v61.i32[3] = 0;
          v59.i32[3] = 0;
          v62 = v23.i32[3];
          v23.i32[3] = 0;
          v60.i32[3] = 0;
          v25 = vminnmq_f32(v61, v59);
          v23 = vmaxnmq_f32(v23, v60);
          v25.i32[3] = v58.i32[3];
          v23.i32[3] = v62;
          v58.i32[0] = *&v19[4 * v57];
          v58.i32[1] = v58.i32[0];
          v63 = vsub_s32(v26.n128_u64[0], *v58.f32);
          v26.n128_u32[0] = vadd_s32(v26.n128_u64[0], *v58.f32).u32[0];
          v26.n128_u32[1] = v63.u32[1];
          v64 = v63.i32[1];
          if (v63.i32[1] >= v54 && v26.n128_u32[0] >= v54 && v26.n128_u32[0] + v63.i32[1] <= a4)
          {
            v67 = vsubq_f32(v23, v25);
            v68 = vsubq_f32(v55[1], *v55);
            v69 = vzip1_s32(*v67.i8, *v68.i8);
            v70 = vzip2_s32(*v67.i8, *v68.i8);
            *v67.i8 = vzip1_s32(*&vextq_s8(v67, v67, 8uLL), *&vextq_s8(v68, v68, 8uLL));
            *v68.i8 = vmla_f32(vmla_f32(vmul_f32(v69, *v67.i8), v70, v69), *v67.i8, v70);
            *v67.i8 = vmul_f32(*v22.f32, vmul_f32(vmul_n_f32(vadd_f32(*v68.i8, *v68.i8), v38), vcvt_f32_u32(v26.n128_u64[0])));
            v71 = *v67.i32 + (*&v67.i32[1] + 2.0);
            if (v71 < v21.f32[0])
            {
              v72 = v55[1];
              *v18 = *v55;
              v18[1] = v72;
              v24 = v23;
              v52 = v25;
              v50 = v26.n128_u32[0];
              v49 = 0;
              v51 = v64;
              v47 = v57;
              v48 = v27;
              v21.f32[0] = v71;
            }
          }

          v56 -= 2;
          v55 -= 2;
          --v57;
        }

        while (v57);
        *(a5 + 80) = v24;
      }

      *a5 = v21.i32[0];
      *(a5 + 4) = v48;
      *(a5 + 8) = v47;
      *(a5 + 12) = v49;
      *(a5 + 16) = v51;
      *(a5 + 20) = v50;
      *(a5 + 64) = v52;
    }

    ++v27;
  }

  while (v27 != 3);
}

void sub_239DFC264(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X8>, float32x4_t a6@<Q0>, float32x4_t a7@<Q1>)
{
  v87 = a3;
  v86 = a2;
  v105 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 44);
  v90 = a7;
  v89 = a6;
  _Q0 = vsubq_f32(a7, a6);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[1] }

  _Q0.f32[0] = 1.0 / (_S1 + _S1);
  v85 = _Q0;
  *a5 = 2139095040;
  *(a5 + 4) = 0;
  *(a5 + 12) = 2139095040;
  _Q0.i64[0] = 0x7F0000007FLL;
  _Q0.i64[1] = 0x7F0000007FLL;
  v17 = vnegq_f32(_Q0);
  *(a5 + 32) = v17;
  v18 = (a5 + 32);
  *(a5 + 16) = 0;
  *(a5 + 48) = _Q0;
  *(a5 + 64) = v17;
  v81 = v17;
  *(a5 + 80) = _Q0;
  *(a5 + 96) = 0;
  MEMORY[0x28223BE20]();
  v19 = v76 - ((4 * v10 + 15) & 0x7FFFFFFF0);
  bzero(v19, 4 * v10);
  MEMORY[0x28223BE20]();
  v80 = 4 * v10;
  bzero(v19, v80);
  MEMORY[0x28223BE20]();
  bzero(&v76[-4 * v10], 32 * v10);
  MEMORY[0x28223BE20]();
  v20 = &v76[-4 * v10];
  bzero(v20, 32 * v10);
  v21 = 0;
  v83 = v87 - 1;
  v76[1] = v94;
  LODWORD(v22) = 0;
  HIDWORD(v22) = v87;
  v82 = v22;
  v84 = v20;
  v23 = (v10 - 1);
  v79 = v20 + 1;
  f32 = v20[1].f32;
  v78 = &v20[2 * v23 + 1];
  v77 = &v20[2 * v23];
  do
  {
    v92 = v90;
    v24 = *(&v92 & 0xFFFFFFFFFFFFFFF3 | (4 * (v21 & 3)));
    v91 = v89;
    if ((v24 - *(&v91 & 0xFFFFFFFFFFFFFFF3 | (4 * (v21 & 3)))) >= 0.001)
    {
      if (v10)
      {
        v25 = v80;
        bzero(v19, v80);
        bzero(v19, v25);
        v26 = v81;
        *&v27 = 0x7F0000007FLL;
        *(&v27 + 1) = 0x7F0000007FLL;
        v28 = v10;
        v29 = f32;
        do
        {
          *(v29 - 1) = v26;
          *v29 = v27;
          v29 += 2;
          --v28;
        }

        while (v28);
      }

      v30 = (v83 + *(a1 + 24)) / *(a1 + 24);
      if (v30 == 1 || (v31 = *(a1 + 64)) == 0)
      {
        if (v21 == 2)
        {
          sub_239DFFA00(a1, v86, v19, v19, v84, 0, v87, v89, v90);
        }

        else if (v21 == 1)
        {
          sub_239DFF3A8(a1, v86, v19, v19, v84, 0, v87, v89, v90);
        }

        else
        {
          sub_239DFED64(a1, v86, v19, v19, v84, 0, v87, v89, v90);
        }
      }

      else
      {
        __dmb(0xBu);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        v94[0] = sub_239E00038;
        v94[1] = &unk_278B3C3B0;
        v102 = v10;
        v103 = v87;
        v104 = v21;
        v95 = v89;
        v96 = v90;
        v97 = a1;
        v98 = v86;
        v99 = v76 - ((4 * v10 + 15) & 0x7FFFFFFF0);
        v100 = v99;
        v101 = v84;
        dispatch_apply(v30, v31, block);
        __dmb(9u);
      }

      v32 = v85.f32[0];
      if (v10)
      {
        v33.i64[0] = 0x7F0000007FLL;
        v33.i64[1] = 0x7F0000007FLL;
        v34 = vnegq_f32(v33);
        v35 = v10;
        v36 = f32;
        v37 = v79;
        do
        {
          v37[-1] = v34;
          *v37 = v33;
          v38 = v36[-1];
          v39 = *v36;
          v40 = v34;
          v40.i32[3] = 0;
          v38.i32[3] = 0;
          v41 = vminnmq_f32(v40, v38);
          v42 = v33;
          v42.i32[3] = 0;
          v39.i32[3] = 0;
          v43 = vmaxnmq_f32(v42, v39);
          v41.i32[3] = v34.i32[3];
          v37 += 2;
          v43.i32[3] = v33.i32[3];
          v36 += 2;
          v33 = v43;
          v34 = v41;
          --v35;
        }

        while (v35);
      }

      v44 = *a5;
      v46 = *(a5 + 4);
      v45 = *(a5 + 8);
      v47 = *(a5 + 12);
      v49 = *(a5 + 16);
      v48 = *(a5 + 20);
      v50 = *(a5 + 64);
      if (v10 != 1)
      {
        v51 = (a1 + 16);
        v52 = *(a1 + 32);
        v53 = *(a5 + 80);
        v54.i64[0] = 0x7F0000007FLL;
        v54.i64[1] = 0x7F0000007FLL;
        v55 = vnegq_f32(v54);
        v56 = vld1_dup_f32(v51);
        v57 = v77;
        v58 = v78;
        v59 = (v10 - 1);
        v60 = v82;
        do
        {
          v61 = v55;
          v62 = v58[-1];
          v63 = *v58;
          v64 = v61;
          v64.i32[3] = 0;
          v62.i32[3] = 0;
          v65 = v54.i32[3];
          v54.i32[3] = 0;
          v63.i32[3] = 0;
          v55 = vminnmq_f32(v64, v62);
          v54 = vmaxnmq_f32(v54, v63);
          v55.i32[3] = v61.i32[3];
          v54.i32[3] = v65;
          v61.i32[0] = *&v19[4 * v59];
          v61.i32[1] = v61.i32[0];
          v66 = vsub_s32(v60, *v61.f32);
          v60.i32[0] = vadd_s32(v60, *v61.f32).u32[0];
          v60.i32[1] = v66.i32[1];
          v67 = v66.i32[1];
          if (v66.i32[1] >= v52 && v60.i32[0] >= v52 && v60.i32[0] + v66.i32[1] <= a4)
          {
            v70 = vsubq_f32(v54, v55);
            v71 = vsubq_f32(v57[1], *v57);
            v72 = vzip1_s32(*v70.i8, *v71.i8);
            v73 = vzip2_s32(*v70.i8, *v71.i8);
            *v70.i8 = vzip1_s32(*&vextq_s8(v70, v70, 8uLL), *&vextq_s8(v71, v71, 8uLL));
            *v71.i8 = vmla_f32(vmla_f32(vmul_f32(v72, *v70.i8), v73, v72), *v70.i8, v73);
            *v70.i8 = vmul_f32(v56, vmul_f32(vmul_n_f32(vadd_f32(*v71.i8, *v71.i8), v32), vcvt_f32_u32(v60)));
            v74 = *v70.i32 + (*&v70.i32[1] + 2.0);
            if (v74 < v44)
            {
              v75 = v57[1];
              *v18 = *v57;
              v18[1] = v75;
              v53 = v54;
              v50 = v55;
              v48 = v60.i32[0];
              v47 = 0;
              v49 = v67;
              v45 = v59;
              v46 = v21;
              v44 = v74;
            }
          }

          v58 -= 2;
          v57 -= 2;
          --v59;
        }

        while (v59);
        *(a5 + 80) = v53;
      }

      *a5 = v44;
      *(a5 + 4) = v46;
      *(a5 + 8) = v45;
      *(a5 + 12) = v47;
      *(a5 + 16) = v49;
      *(a5 + 20) = v48;
      *(a5 + 64) = v50;
    }

    ++v21;
  }

  while (v21 != 3);
}

__int128 *sub_239DFC898(uint64_t a1, __int128 *a2, float *a3, unsigned int a4, __n128 a5, __n128 a6)
{
  v139 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 44);
  v10 = a2[5];
  v11 = &a3[8 * a4];
  v133 = a2[4];
  v134 = v10;
  v135 = *(a2 + 24);
  v12 = a2[1];
  v129 = *a2;
  v130 = v12;
  v13 = a2[3];
  v131 = a2[2];
  v132 = v13;
  v136 = a5;
  v137 = a6;
  v138 = v9;
  v14 = sub_239E0043C(a3, v11, &v129);
  v15 = a2[5];
  v133 = a2[4];
  v134 = v15;
  v135 = *(a2 + 24);
  v16 = a2[1];
  v129 = *a2;
  v130 = v16;
  v17 = a2[3];
  v131 = a2[2];
  v132 = v17;
  v136 = a5;
  v137 = a6;
  v138 = v9;
  result = sub_239E00554(a3, v14, &v129);
  if (result < v14)
  {
    while (1)
    {
      v22 = *(result + 7);
      v23 = *(result + 3);
      v24 = 3 * v23;
      v25 = 3 * v23 + 1;
      v26 = 3 * v23 + 2;
      v27 = *(*(a1 + 128) + 8 * v22);
      if (v27)
      {
        if (*(*(a1 + 152) + 4 * v22) == 4)
        {
          v24 = *(v27 + 4 * v24);
          v25 = *(v27 + 4 * v25);
          v26 = *(v27 + 4 * v26);
        }

        else
        {
          v24 = *(v27 + 2 * v24);
          v25 = *(v27 + 2 * v25);
          v26 = *(v27 + 2 * v26);
        }
      }

      v28 = *(*(a1 + 80) + 8 * v22);
      v29 = *(*(a1 + 104) + 4 * v22);
      v30 = v28 + v29 * v24;
      v20.i64[0] = *v30;
      v20.i32[2] = *(v30 + 8);
      v31 = v28 + v29 * v25;
      v21.i64[0] = *v31;
      v21.i32[2] = *(v31 + 8);
      v32 = v28 + v29 * v26;
      v19.i64[0] = *v32;
      v19.i32[2] = *(v32 + 8);
      v33.i64[0] = *result;
      v34 = *(result + 2);
      v35.i64[0] = *(result + 2);
      v36 = *(result + 6);
      v37 = *(a2 + 1);
      LODWORD(v30) = *(a2 + 2) - 1;
      v128 = a6;
      v38 = *(&v128 & 0xFFFFFFFFFFFFFFF3 | (4 * (v37 & 3)));
      v127 = a5;
      v39 = (*(&v127 & 0xFFFFFFFFFFFFFFF3 | (4 * (v37 & 3))) + ((v38 - *(&v127 & 0xFFFFFFFFFFFFFFF3 | (4 * (v37 & 3)))) / v9)) + (((v38 - *(&v127 & 0xFFFFFFFFFFFFFFF3 | (4 * (v37 & 3)))) / v9) * v30);
      if (v37 == 2)
      {
        if (vmovn_s32(vcgtq_f32(v20, v21)).i32[1])
        {
          v80 = -1;
        }

        else
        {
          v80 = 0;
        }

        v81 = vdupq_n_s32(v80);
        v82 = vbslq_s8(v81, v20, v21);
        if (vmovn_s32(vcgtq_f32(v82, v19)).i32[1])
        {
          v83 = -1;
        }

        else
        {
          v83 = 0;
        }

        v84 = vdupq_n_s32(v83);
        v85 = vbslq_s8(v81, v21, v20);
        v86 = vbslq_s8(v84, v19, v82);
        v87 = vbslq_s8(v84, v82, v19);
        if (vmovn_s32(vcgtq_f32(v85, v86)).i32[1])
        {
          v88 = -1;
        }

        else
        {
          v88 = 0;
        }

        v89 = vdupq_n_s32(v88);
        v90 = vbslq_s8(v89, v85, v86);
        v91 = vbslq_s8(v89, v86, v85);
        v92 = vmlaq_n_f32(v91, vsubq_f32(v87, v91), (v39 - v91.f32[2]) / (v87.f32[2] - v91.f32[2]));
        if (v90.f32[2] < v39 || v91.f32[2] == v90.f32[2])
        {
          v91.i32[3] = 0;
          v94 = v90;
          v94.i32[3] = 0;
          v95 = vminnmq_f32(v91, v94);
          v96 = vmaxnmq_f32(v91, v94);
          v92.i32[3] = 0;
          v97 = vmlaq_n_f32(v90, vsubq_f32(v87, v90), (v39 - v90.f32[2]) / (v87.f32[2] - v90.f32[2]));
          v97.i32[3] = 0;
          v98 = vminnmq_f32(v92, v97);
          v116 = vmaxnmq_f32(v92, v97);
          v95.i32[3] = 0;
          v98.i32[3] = 0;
          v96.i32[3] = 0;
          v116.i32[3] = 0;
          v19 = vminnmq_f32(v95, v98);
          v58 = vmaxnmq_f32(v96, v116);
          v87.i32[3] = 0;
          v60 = vminnmq_f32(v98, v87);
        }

        else
        {
          v92.i32[3] = 0;
          v114 = vmlaq_n_f32(v91, vsubq_f32(v90, v91), (v39 - v91.f32[2]) / (v90.f32[2] - v91.f32[2]));
          v114.i32[3] = 0;
          v115 = vminnmq_f32(v92, v114);
          v116 = vmaxnmq_f32(v92, v114);
          v91.i32[3] = 0;
          v115.i32[3] = 0;
          v19 = vminnmq_f32(v91, v115);
          v116.i32[3] = 0;
          v58 = vmaxnmq_f32(v91, v116);
          v90.i32[3] = 0;
          v87.i32[3] = 0;
          v117 = vminnmq_f32(v90, v87);
          v87 = vmaxnmq_f32(v90, v87);
          v117.i32[3] = 0;
          v60 = vminnmq_f32(v115, v117);
          v87.i32[3] = 0;
        }

        v21 = vmaxnmq_f32(v116, v87);
        v107 = 2;
        goto LABEL_56;
      }

      if (v37 == 1)
      {
        break;
      }

      if (!v37)
      {
        if (vmovn_s32(vcgtq_f32(v20, v21)).u8[0])
        {
          v40 = -1;
        }

        else
        {
          v40 = 0;
        }

        v41 = vdupq_n_s32(v40);
        v42 = vbslq_s8(v41, v20, v21);
        v43 = vbslq_s8(v41, v21, v20);
        if (vmovn_s32(vcgtq_f32(v42, v19)).u8[0])
        {
          v44 = -1;
        }

        else
        {
          v44 = 0;
        }

        v45 = vdupq_n_s32(v44);
        v46 = vbslq_s8(v45, v42, v19);
        v47 = vbslq_s8(v45, v19, v42);
        if (vmovn_s32(vcgtq_f32(v43, v47)).u8[0])
        {
          v48 = -1;
        }

        else
        {
          v48 = 0;
        }

        v49 = vdupq_n_s32(v48);
        v50 = vbslq_s8(v49, v43, v47);
        v51 = vbslq_s8(v49, v47, v43);
        v52 = vsubq_f32(v46, v51);
        v53 = vmlaq_n_f32(v51, v52, (v39 - v51.f32[0]) / v52.f32[0]);
        if (v50.f32[0] < v39 || (vmovn_s32(vceqq_f32(v51, v50)).u8[0] & 1) != 0)
        {
          v108 = vsubq_f32(v46, v50);
          v51.i32[3] = 0;
          v109 = v50;
          v109.i32[3] = 0;
          v110 = vminnmq_f32(v51, v109);
          v111 = vmaxnmq_f32(v51, v109);
          v53.i32[3] = 0;
          v112 = vmlaq_n_f32(v50, v108, (v39 - v50.f32[0]) / v108.f32[0]);
          v112.i32[3] = 0;
          v113 = vminnmq_f32(v53, v112);
          v57 = vmaxnmq_f32(v53, v112);
          v110.i32[3] = 0;
          v113.i32[3] = 0;
          v111.i32[3] = 0;
          v57.i32[3] = 0;
          v19 = vminnmq_f32(v110, v113);
          v58 = vmaxnmq_f32(v111, v57);
          v46.i32[3] = 0;
          v60 = vminnmq_f32(v113, v46);
        }

        else
        {
          v54 = vsubq_f32(v50, v51);
          v53.i32[3] = 0;
          v55 = vmlaq_n_f32(v51, v54, (v39 - v51.f32[0]) / v54.f32[0]);
          v55.i32[3] = 0;
          v56 = vminnmq_f32(v53, v55);
          v57 = vmaxnmq_f32(v53, v55);
          v51.i32[3] = 0;
          v56.i32[3] = 0;
          v19 = vminnmq_f32(v51, v56);
          v57.i32[3] = 0;
          v58 = vmaxnmq_f32(v51, v57);
          v50.i32[3] = 0;
          v46.i32[3] = 0;
          v59 = vminnmq_f32(v50, v46);
          v46 = vmaxnmq_f32(v50, v46);
          v59.i32[3] = 0;
          v60 = vminnmq_f32(v56, v59);
          v46.i32[3] = 0;
        }

        v21 = vmaxnmq_f32(v57, v46);
        v107 = 0;
LABEL_56:
        v126 = v58;
        *(&v126 & 0xFFFFFFFFFFFFFFF3 | (4 * (v107 & 3))) = v39;
        v20 = v126;
        v125 = v60;
        *(&v125 & 0xFFFFFFFFFFFFFFF3 | (4 * (v107 & 3))) = v39;
        v118 = v19;
        v118.i32[3] = 0;
        v33.i64[1] = v34;
        v119 = v20;
        v119.i32[3] = 0;
        v35.i64[1] = v36;
        v101 = vmaxnmq_f32(v118, v33);
        v102 = vminnmq_f32(v119, v35);
        v120 = v125;
        v120.i32[3] = 0;
        v100 = vmaxnmq_f32(v120, v33);
        v121 = v21;
        v121.i32[3] = 0;
        v99 = vminnmq_f32(v121, v35);
        goto LABEL_57;
      }

      v99.i64[0] = 0x7F0000007FLL;
      v99.i64[1] = 0x7F0000007FLL;
      v100 = vnegq_f32(v99);
      v101 = v100;
      v102.i64[0] = 0x7F0000007FLL;
      v102.i32[2] = 127;
LABEL_57:
      *result = v101.i64[0];
      *(result + 2) = v102.i64[0];
      *(result + 2) = v101.i32[2];
      *(result + 6) = v102.i32[2];
      *v11 = v100.i64[0];
      v11[2] = v100.f32[2];
      *(v11 + 3) = v23;
      *(v11 + 2) = v99.i64[0];
      v122 = v11 + 6;
      *(v11 + 7) = v22;
      v11 += 8;
      result += 2;
      *v122 = v99.i32[2];
      if (result >= v14)
      {
        return result;
      }
    }

    if (vmovn_s32(vcgtq_f32(v20, v21)).i8[2])
    {
      v61 = -1;
    }

    else
    {
      v61 = 0;
    }

    v62 = vdupq_n_s32(v61);
    v63 = vbslq_s8(v62, v20, v21);
    if (vmovn_s32(vcgtq_f32(v63, v19)).i8[2])
    {
      v64 = -1;
    }

    else
    {
      v64 = 0;
    }

    v65 = vdupq_n_s32(v64);
    v66 = vbslq_s8(v62, v21, v20);
    v67 = vbslq_s8(v65, v19, v63);
    v68 = vbslq_s8(v65, v63, v19);
    if (vmovn_s32(vcgtq_f32(v66, v67)).i16[1])
    {
      v69 = -1;
    }

    else
    {
      v69 = 0;
    }

    v70 = vdupq_n_s32(v69);
    v71 = vbslq_s8(v70, v66, v67);
    v72 = vbslq_s8(v70, v67, v66);
    v73 = vmlaq_n_f32(v72, vsubq_f32(v68, v72), (v39 - v72.f32[1]) / (v68.f32[1] - v72.f32[1]));
    if (v71.f32[1] < v39 || v72.f32[1] == v71.f32[1])
    {
      v72.i32[3] = 0;
      v75 = v71;
      v75.i32[3] = 0;
      v76 = vminnmq_f32(v72, v75);
      v77 = vmaxnmq_f32(v72, v75);
      v73.i32[3] = 0;
      v78 = vmlaq_n_f32(v71, vsubq_f32(v68, v71), (v39 - v71.f32[1]) / (v68.f32[1] - v71.f32[1]));
      v78.i32[3] = 0;
      v79 = vminnmq_f32(v73, v78);
      v105 = vmaxnmq_f32(v73, v78);
      v76.i32[3] = 0;
      v79.i32[3] = 0;
      v77.i32[3] = 0;
      v105.i32[3] = 0;
      v19 = vminnmq_f32(v76, v79);
      v58 = vmaxnmq_f32(v77, v105);
      v68.i32[3] = 0;
      v60 = vminnmq_f32(v79, v68);
    }

    else
    {
      v73.i32[3] = 0;
      v103 = vmlaq_n_f32(v72, vsubq_f32(v71, v72), (v39 - v72.f32[1]) / (v71.f32[1] - v72.f32[1]));
      v103.i32[3] = 0;
      v104 = vminnmq_f32(v73, v103);
      v105 = vmaxnmq_f32(v73, v103);
      v72.i32[3] = 0;
      v104.i32[3] = 0;
      v19 = vminnmq_f32(v72, v104);
      v105.i32[3] = 0;
      v58 = vmaxnmq_f32(v72, v105);
      v71.i32[3] = 0;
      v68.i32[3] = 0;
      v106 = vminnmq_f32(v71, v68);
      v68 = vmaxnmq_f32(v71, v68);
      v106.i32[3] = 0;
      v60 = vminnmq_f32(v104, v106);
      v68.i32[3] = 0;
    }

    v21 = vmaxnmq_f32(v105, v68);
    v107 = 1;
    goto LABEL_56;
  }

  return result;
}

__int128 *sub_239DFCF68(uint64_t a1, __int128 *a2, float *a3, unsigned int a4, __n128 a5, __n128 a6)
{
  v291 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 44);
  v10 = a2[5];
  v11 = &a3[8 * a4];
  v285 = a2[4];
  v286 = v10;
  v287 = *(a2 + 24);
  v12 = a2[1];
  v281 = *a2;
  v282 = v12;
  v13 = a2[3];
  v283 = a2[2];
  v284 = v13;
  v288 = a5;
  v289 = a6;
  v290 = v9;
  v14 = sub_239E0043C(a3, v11, &v281);
  v15 = a2[5];
  v285 = a2[4];
  v286 = v15;
  v287 = *(a2 + 24);
  v16 = a2[1];
  v281 = *a2;
  v282 = v16;
  v17 = a2[3];
  v283 = a2[2];
  v284 = v17;
  v288 = a5;
  v289 = a6;
  v290 = v9;
  for (result = sub_239E00554(a3, v14, &v281); result < v14; *v276 = v275.i32[2])
  {
    v23 = *(result + 7);
    v24 = *(result + 3);
    v25 = 4 * v24;
    v26 = (4 * v24) | 1;
    v27 = (4 * v24) | 2;
    v28 = (4 * v24) | 3;
    v29 = *(*(a1 + 128) + 8 * v23);
    if (v29)
    {
      if (*(*(a1 + 152) + 4 * v23) == 4)
      {
        v25 = *(v29 + 4 * v25);
        v26 = *(v29 + 4 * v26);
        v27 = *(v29 + 4 * v27);
        v28 = *(v29 + 4 * v28);
      }

      else
      {
        v25 = *(v29 + 2 * v25);
        v26 = *(v29 + 2 * v26);
        v27 = *(v29 + 2 * v27);
        v28 = *(v29 + 2 * v28);
      }
    }

    v30 = *(*(a1 + 80) + 8 * v23);
    v31 = *(*(a1 + 104) + 4 * v23);
    v32 = v30 + v31 * v25;
    v19.i64[0] = *v32;
    v19.i32[2] = *(v32 + 8);
    v33 = v30 + v31 * v26;
    v22.i64[0] = *v33;
    v22.i32[2] = *(v33 + 8);
    v34 = v30 + v31 * v27;
    v21.i64[0] = *v34;
    v21.i32[2] = *(v34 + 8);
    v35 = v30 + v31 * v28;
    v20.i64[0] = *v35;
    v20.i32[2] = *(v35 + 8);
    v36.i64[0] = *result;
    v37 = *(result + 2);
    v38.i64[0] = *(result + 2);
    v39 = *(result + 6);
    v40 = *(a2 + 1);
    LODWORD(v33) = *(a2 + 2) - 1;
    v280 = a6;
    v41 = *(&v280 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3)));
    v279 = a5;
    v42 = (*(&v279 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3))) + ((v41 - *(&v279 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3)))) / v9)) + (((v41 - *(&v279 & 0xFFFFFFFFFFFFFFF3 | (4 * (v40 & 3)))) / v9) * v33);
    if (v40 == 2)
    {
      v43.i64[0] = 0x7F0000007FLL;
      v43.i64[1] = 0x7F0000007FLL;
      v44 = vnegq_f32(v43);
      v45 = v44;
      v46.i64[0] = 0x7F0000007FLL;
      v46.i64[1] = 0x7F0000007FLL;
      if (v19.f32[2] <= v42)
      {
        v195 = v19;
        v195.i32[3] = 0;
        v45 = vminnmq_f32(v195, xmmword_239E26FC0);
        v46 = vmaxnmq_f32(v195, xmmword_239E26FD0);
      }

      if (v19.f32[2] < v42)
      {
        v197 = v22.f32[2] <= v42;
      }

      else
      {
        v196 = v19;
        v196.i32[3] = 0;
        v44 = vminnmq_f32(v196, xmmword_239E26FC0);
        v43 = vmaxnmq_f32(v196, xmmword_239E26FD0);
        v197 = 1;
      }

      if (!v197 || (v19.f32[2] > v42 ? (v198 = v22.f32[2] < v42) : (v198 = 0), v198))
      {
        v199 = v45;
        v199.i32[3] = 0;
        v200 = vmlaq_n_f32(vmulq_n_f32(v19, 1.0 - ((v42 - v19.f32[2]) / (v22.f32[2] - v19.f32[2]))), v22, (v42 - v19.f32[2]) / (v22.f32[2] - v19.f32[2]));
        v200.i32[3] = 0;
        v201 = vminnmq_f32(v199, v200);
        v202 = v46;
        v202.i32[3] = 0;
        v203 = vmaxnmq_f32(v202, v200);
        v201.i32[3] = v45.i32[3];
        v203.i32[3] = v46.i32[3];
        v204 = v44;
        v204.i32[3] = 0;
        v205 = vminnmq_f32(v204, v200);
        v206 = v43;
        v206.i32[3] = 0;
        v207 = vmaxnmq_f32(v206, v200);
        v205.i32[3] = v44.i32[3];
        v207.i32[3] = v43.i32[3];
        v44 = v205;
        v43 = v207;
        v45 = v201;
        v46 = v203;
      }

      if (v22.f32[2] <= v42)
      {
        v208 = v45;
        v208.i32[3] = 0;
        v209 = v22;
        v209.i32[3] = 0;
        v210 = vminnmq_f32(v208, v209);
        v211 = v46;
        v211.i32[3] = 0;
        v212 = vmaxnmq_f32(v211, v209);
        v210.i32[3] = v45.i32[3];
        v212.i32[3] = v46.i32[3];
        v45 = v210;
        v46 = v212;
      }

      if (v22.f32[2] >= v42)
      {
        v213 = v44;
        v213.i32[3] = 0;
        v214 = v22;
        v214.i32[3] = 0;
        v215 = vminnmq_f32(v213, v214);
        v216 = v43;
        v216.i32[3] = 0;
        v217 = vmaxnmq_f32(v216, v214);
        v215.i32[3] = v44.i32[3];
        v217.i32[3] = v43.i32[3];
        v44 = v215;
        v43 = v217;
      }

      v219 = v21.f32[2] < v42 && v22.f32[2] > v42;
      v221 = v21.f32[2] > v42 && v22.f32[2] < v42;
      if (v221 || v219)
      {
        v22 = vmlaq_n_f32(vmulq_n_f32(v22, 1.0 - ((v42 - v22.f32[2]) / (v21.f32[2] - v22.f32[2]))), v21, (v42 - v22.f32[2]) / (v21.f32[2] - v22.f32[2]));
        v222 = v45;
        v222.i32[3] = 0;
        v22.i32[3] = 0;
        v223 = vminnmq_f32(v222, v22);
        v224 = v46;
        v224.i32[3] = 0;
        v225 = vmaxnmq_f32(v224, v22);
        v223.i32[3] = v45.i32[3];
        v225.i32[3] = v46.i32[3];
        v226 = v44;
        v226.i32[3] = 0;
        v227 = vminnmq_f32(v226, v22);
        v228 = v43;
        v228.i32[3] = 0;
        v229 = vmaxnmq_f32(v228, v22);
        v227.i32[3] = v44.i32[3];
        v229.i32[3] = v43.i32[3];
        v44 = v227;
        v43 = v229;
        v45 = v223;
        v46 = v225;
      }

      if (v21.f32[2] <= v42)
      {
        v230 = v45;
        v230.i32[3] = 0;
        v231 = v21;
        v231.i32[3] = 0;
        v22 = vminnmq_f32(v230, v231);
        v232 = v46;
        v232.i32[3] = 0;
        v233 = vmaxnmq_f32(v232, v231);
        v22.i32[3] = v45.i32[3];
        v233.i32[3] = v46.i32[3];
        v45 = v22;
        v46 = v233;
      }

      if (v21.f32[2] >= v42)
      {
        v234 = v44;
        v234.i32[3] = 0;
        v235 = v21;
        v235.i32[3] = 0;
        v22 = vminnmq_f32(v234, v235);
        v236 = v43;
        v236.i32[3] = 0;
        v237 = vmaxnmq_f32(v236, v235);
        v22.i32[3] = v44.i32[3];
        v237.i32[3] = v43.i32[3];
        v44 = v22;
        v43 = v237;
      }

      v239 = v20.f32[2] < v42 && v21.f32[2] > v42;
      v241 = v20.f32[2] > v42 && v21.f32[2] < v42;
      if (v241 || v239)
      {
        v21 = vmlaq_n_f32(vmulq_n_f32(v21, 1.0 - ((v42 - v21.f32[2]) / (v20.f32[2] - v21.f32[2]))), v20, (v42 - v21.f32[2]) / (v20.f32[2] - v21.f32[2]));
        v242 = v45;
        v242.i32[3] = 0;
        v21.i32[3] = 0;
        v243 = vminnmq_f32(v242, v21);
        v244 = v46;
        v244.i32[3] = 0;
        v245 = vmaxnmq_f32(v244, v21);
        v243.i32[3] = v45.i32[3];
        v245.i32[3] = v46.i32[3];
        v246 = v44;
        v246.i32[3] = 0;
        v247 = vminnmq_f32(v246, v21);
        v248 = v43;
        v248.i32[3] = 0;
        v249 = vmaxnmq_f32(v248, v21);
        v247.i32[3] = v44.i32[3];
        v249.i32[3] = v43.i32[3];
        v44 = v247;
        v43 = v249;
        v45 = v243;
        v46 = v245;
      }

      if (v20.f32[2] <= v42)
      {
        v250 = v45;
        v250.i32[3] = 0;
        v251 = v20;
        v251.i32[3] = 0;
        v21 = vminnmq_f32(v250, v251);
        v252 = v46;
        v252.i32[3] = 0;
        v253 = vmaxnmq_f32(v252, v251);
        v21.i32[3] = v45.i32[3];
        v253.i32[3] = v46.i32[3];
        v45 = v21;
        v46 = v253;
      }

      if (v20.f32[2] >= v42)
      {
        v254 = v44;
        v254.i32[3] = 0;
        v255 = v20;
        v255.i32[3] = 0;
        v21 = vminnmq_f32(v254, v255);
        v256 = v43;
        v256.i32[3] = 0;
        v257 = vmaxnmq_f32(v256, v255);
        v21.i32[3] = v44.i32[3];
        v257.i32[3] = v43.i32[3];
        v44 = v21;
        v43 = v257;
      }

      v259 = v19.f32[2] < v42 && v20.f32[2] > v42;
      v261 = v19.f32[2] > v42 && v20.f32[2] < v42;
      if (v261 || v259)
      {
        v262 = vmlaq_n_f32(vmulq_n_f32(v20, 1.0 - ((v42 - v20.f32[2]) / (v19.f32[2] - v20.f32[2]))), v19, (v42 - v20.f32[2]) / (v19.f32[2] - v20.f32[2]));
        v263 = v45;
        v263.i32[3] = 0;
        v262.i32[3] = 0;
        v19 = vminnmq_f32(v263, v262);
        v264 = v46;
        v264.i32[3] = 0;
        v21 = vmaxnmq_f32(v264, v262);
        v19.i32[3] = v45.i32[3];
        v21.i32[3] = v46.i32[3];
        v265 = v44;
        v265.i32[3] = 0;
        v266 = vminnmq_f32(v265, v262);
        v267 = v43;
        v267.i32[3] = 0;
        v20 = vmaxnmq_f32(v267, v262);
        v266.i32[3] = v44.i32[3];
        v20.i32[3] = v43.i32[3];
        v44 = v266;
        v43 = v20;
        v45 = v19;
        v46 = v21;
      }

      v46.f32[2] = v42;
      v44.f32[2] = v42;
    }

    else if (v40 == 1)
    {
      v43.i64[0] = 0x7F0000007FLL;
      v43.i64[1] = 0x7F0000007FLL;
      v44 = vnegq_f32(v43);
      v45 = v44;
      v46.i64[0] = 0x7F0000007FLL;
      v46.i64[1] = 0x7F0000007FLL;
      if (v19.f32[1] <= v42)
      {
        v122 = v19;
        v122.i32[3] = 0;
        v45 = vminnmq_f32(v122, xmmword_239E26FC0);
        v46 = vmaxnmq_f32(v122, xmmword_239E26FD0);
      }

      if (v19.f32[1] < v42)
      {
        v124 = v22.f32[1] <= v42;
      }

      else
      {
        v123 = v19;
        v123.i32[3] = 0;
        v44 = vminnmq_f32(v123, xmmword_239E26FC0);
        v43 = vmaxnmq_f32(v123, xmmword_239E26FD0);
        v124 = 1;
      }

      if (!v124 || (v19.f32[1] > v42 ? (v125 = v22.f32[1] < v42) : (v125 = 0), v125))
      {
        v126 = v45;
        v126.i32[3] = 0;
        v127 = vmlaq_n_f32(vmulq_n_f32(v19, 1.0 - ((v42 - v19.f32[1]) / (v22.f32[1] - v19.f32[1]))), v22, (v42 - v19.f32[1]) / (v22.f32[1] - v19.f32[1]));
        v127.i32[3] = 0;
        v128 = vminnmq_f32(v126, v127);
        v129 = v46;
        v129.i32[3] = 0;
        v130 = vmaxnmq_f32(v129, v127);
        v128.i32[3] = v45.i32[3];
        v130.i32[3] = v46.i32[3];
        v131 = v44;
        v131.i32[3] = 0;
        v132 = vminnmq_f32(v131, v127);
        v133 = v43;
        v133.i32[3] = 0;
        v134 = vmaxnmq_f32(v133, v127);
        v132.i32[3] = v44.i32[3];
        v134.i32[3] = v43.i32[3];
        v44 = v132;
        v43 = v134;
        v45 = v128;
        v46 = v130;
      }

      if (v22.f32[1] <= v42)
      {
        v135 = v45;
        v135.i32[3] = 0;
        v136 = v22;
        v136.i32[3] = 0;
        v137 = vminnmq_f32(v135, v136);
        v138 = v46;
        v138.i32[3] = 0;
        v139 = vmaxnmq_f32(v138, v136);
        v137.i32[3] = v45.i32[3];
        v139.i32[3] = v46.i32[3];
        v45 = v137;
        v46 = v139;
      }

      if (v22.f32[1] >= v42)
      {
        v140 = v44;
        v140.i32[3] = 0;
        v141 = v22;
        v141.i32[3] = 0;
        v142 = vminnmq_f32(v140, v141);
        v143 = v43;
        v143.i32[3] = 0;
        v144 = vmaxnmq_f32(v143, v141);
        v142.i32[3] = v44.i32[3];
        v144.i32[3] = v43.i32[3];
        v44 = v142;
        v43 = v144;
      }

      v146 = v21.f32[1] < v42 && v22.f32[1] > v42;
      v148 = v21.f32[1] > v42 && v22.f32[1] < v42;
      if (v148 || v146)
      {
        v22 = vmlaq_n_f32(vmulq_n_f32(v22, 1.0 - ((v42 - v22.f32[1]) / (v21.f32[1] - v22.f32[1]))), v21, (v42 - v22.f32[1]) / (v21.f32[1] - v22.f32[1]));
        v149 = v45;
        v149.i32[3] = 0;
        v22.i32[3] = 0;
        v150 = vminnmq_f32(v149, v22);
        v151 = v46;
        v151.i32[3] = 0;
        v152 = vmaxnmq_f32(v151, v22);
        v150.i32[3] = v45.i32[3];
        v152.i32[3] = v46.i32[3];
        v153 = v44;
        v153.i32[3] = 0;
        v154 = vminnmq_f32(v153, v22);
        v155 = v43;
        v155.i32[3] = 0;
        v156 = vmaxnmq_f32(v155, v22);
        v154.i32[3] = v44.i32[3];
        v156.i32[3] = v43.i32[3];
        v44 = v154;
        v43 = v156;
        v45 = v150;
        v46 = v152;
      }

      if (v21.f32[1] <= v42)
      {
        v157 = v45;
        v157.i32[3] = 0;
        v158 = v21;
        v158.i32[3] = 0;
        v22 = vminnmq_f32(v157, v158);
        v159 = v46;
        v159.i32[3] = 0;
        v160 = vmaxnmq_f32(v159, v158);
        v22.i32[3] = v45.i32[3];
        v160.i32[3] = v46.i32[3];
        v45 = v22;
        v46 = v160;
      }

      if (v21.f32[1] >= v42)
      {
        v161 = v44;
        v161.i32[3] = 0;
        v162 = v21;
        v162.i32[3] = 0;
        v22 = vminnmq_f32(v161, v162);
        v163 = v43;
        v163.i32[3] = 0;
        v164 = vmaxnmq_f32(v163, v162);
        v22.i32[3] = v44.i32[3];
        v164.i32[3] = v43.i32[3];
        v44 = v22;
        v43 = v164;
      }

      v166 = v20.f32[1] < v42 && v21.f32[1] > v42;
      v168 = v20.f32[1] > v42 && v21.f32[1] < v42;
      if (v168 || v166)
      {
        v21 = vmlaq_n_f32(vmulq_n_f32(v21, 1.0 - ((v42 - v21.f32[1]) / (v20.f32[1] - v21.f32[1]))), v20, (v42 - v21.f32[1]) / (v20.f32[1] - v21.f32[1]));
        v169 = v45;
        v169.i32[3] = 0;
        v21.i32[3] = 0;
        v170 = vminnmq_f32(v169, v21);
        v171 = v46;
        v171.i32[3] = 0;
        v172 = vmaxnmq_f32(v171, v21);
        v170.i32[3] = v45.i32[3];
        v172.i32[3] = v46.i32[3];
        v173 = v44;
        v173.i32[3] = 0;
        v174 = vminnmq_f32(v173, v21);
        v175 = v43;
        v175.i32[3] = 0;
        v176 = vmaxnmq_f32(v175, v21);
        v174.i32[3] = v44.i32[3];
        v176.i32[3] = v43.i32[3];
        v44 = v174;
        v43 = v176;
        v45 = v170;
        v46 = v172;
      }

      if (v20.f32[1] <= v42)
      {
        v177 = v45;
        v177.i32[3] = 0;
        v178 = v20;
        v178.i32[3] = 0;
        v21 = vminnmq_f32(v177, v178);
        v179 = v46;
        v179.i32[3] = 0;
        v180 = vmaxnmq_f32(v179, v178);
        v21.i32[3] = v45.i32[3];
        v180.i32[3] = v46.i32[3];
        v45 = v21;
        v46 = v180;
      }

      if (v20.f32[1] >= v42)
      {
        v181 = v44;
        v181.i32[3] = 0;
        v182 = v20;
        v182.i32[3] = 0;
        v21 = vminnmq_f32(v181, v182);
        v183 = v43;
        v183.i32[3] = 0;
        v184 = vmaxnmq_f32(v183, v182);
        v21.i32[3] = v44.i32[3];
        v184.i32[3] = v43.i32[3];
        v44 = v21;
        v43 = v184;
      }

      v186 = v19.f32[1] < v42 && v20.f32[1] > v42;
      v188 = v19.f32[1] > v42 && v20.f32[1] < v42;
      if (v188 || v186)
      {
        v189 = vmlaq_n_f32(vmulq_n_f32(v20, 1.0 - ((v42 - v20.f32[1]) / (v19.f32[1] - v20.f32[1]))), v19, (v42 - v20.f32[1]) / (v19.f32[1] - v20.f32[1]));
        v190 = v45;
        v190.i32[3] = 0;
        v189.i32[3] = 0;
        v19 = vminnmq_f32(v190, v189);
        v191 = v46;
        v191.i32[3] = 0;
        v21 = vmaxnmq_f32(v191, v189);
        v19.i32[3] = v45.i32[3];
        v21.i32[3] = v46.i32[3];
        v192 = v44;
        v192.i32[3] = 0;
        v193 = vminnmq_f32(v192, v189);
        v194 = v43;
        v194.i32[3] = 0;
        v20 = vmaxnmq_f32(v194, v189);
        v193.i32[3] = v44.i32[3];
        v20.i32[3] = v43.i32[3];
        v44 = v193;
        v43 = v20;
        v45 = v19;
        v46 = v21;
      }

      v46.f32[1] = v42;
      v44.f32[1] = v42;
    }

    else
    {
      if (v40)
      {
        v275.i64[0] = 0x7F0000007FLL;
        v275.i64[1] = 0x7F0000007FLL;
        v273 = vnegq_f32(v275);
        v270 = v273;
        v271.i64[0] = 0x7F0000007FLL;
        v271.i32[2] = 127;
        goto LABEL_230;
      }

      v43.i64[0] = 0x7F0000007FLL;
      v43.i64[1] = 0x7F0000007FLL;
      v44 = vnegq_f32(v43);
      v45 = v44;
      v46.i64[0] = 0x7F0000007FLL;
      v46.i64[1] = 0x7F0000007FLL;
      if (v19.f32[0] <= v42)
      {
        v47 = v19;
        v47.i32[3] = 0;
        v45 = vminnmq_f32(v47, xmmword_239E26FC0);
        v46 = vmaxnmq_f32(v47, xmmword_239E26FD0);
      }

      if (v19.f32[0] >= v42)
      {
        v48 = v19;
        v48.i32[3] = 0;
        v44 = vminnmq_f32(v48, xmmword_239E26FC0);
        v43 = vmaxnmq_f32(v48, xmmword_239E26FD0);
      }

      v50 = v22.f32[0] < v42 && v19.f32[0] > v42;
      v52 = v22.f32[0] > v42 && v19.f32[0] < v42;
      if (v52 || v50)
      {
        v53 = (v42 - v19.f32[0]) / vsubq_f32(v22, v19).f32[0];
        v54 = v45;
        v54.i32[3] = 0;
        v55 = vmlaq_n_f32(vmulq_n_f32(v19, 1.0 - v53), v22, v53);
        v55.i32[3] = 0;
        v56 = vminnmq_f32(v54, v55);
        v57 = v46;
        v57.i32[3] = 0;
        v58 = vmaxnmq_f32(v57, v55);
        v56.i32[3] = v45.i32[3];
        v58.i32[3] = v46.i32[3];
        v59 = v44;
        v59.i32[3] = 0;
        v60 = vminnmq_f32(v59, v55);
        v61 = v43;
        v61.i32[3] = 0;
        v62 = vmaxnmq_f32(v61, v55);
        v60.i32[3] = v44.i32[3];
        v62.i32[3] = v43.i32[3];
        v44 = v60;
        v43 = v62;
        v45 = v56;
        v46 = v58;
      }

      if (v22.f32[0] <= v42)
      {
        v63 = v45;
        v63.i32[3] = 0;
        v64 = v22;
        v64.i32[3] = 0;
        v65 = vminnmq_f32(v63, v64);
        v66 = v46;
        v66.i32[3] = 0;
        v67 = vmaxnmq_f32(v66, v64);
        v65.i32[3] = v45.i32[3];
        v67.i32[3] = v46.i32[3];
        v45 = v65;
        v46 = v67;
      }

      if (v22.f32[0] >= v42)
      {
        v68 = v44;
        v68.i32[3] = 0;
        v69 = v22;
        v69.i32[3] = 0;
        v70 = vminnmq_f32(v68, v69);
        v71 = v43;
        v71.i32[3] = 0;
        v72 = vmaxnmq_f32(v71, v69);
        v70.i32[3] = v44.i32[3];
        v72.i32[3] = v43.i32[3];
        v44 = v70;
        v43 = v72;
      }

      v74 = v21.f32[0] < v42 && v22.f32[0] > v42;
      v76 = v21.f32[0] > v42 && v22.f32[0] < v42;
      if (v76 || v74)
      {
        v77 = (v42 - v22.f32[0]) / vsubq_f32(v21, v22).f32[0];
        v22 = vmlaq_n_f32(vmulq_n_f32(v22, 1.0 - v77), v21, v77);
        v78 = v45;
        v78.i32[3] = 0;
        v22.i32[3] = 0;
        v79 = vminnmq_f32(v78, v22);
        v80 = v46;
        v80.i32[3] = 0;
        v81 = vmaxnmq_f32(v80, v22);
        v79.i32[3] = v45.i32[3];
        v81.i32[3] = v46.i32[3];
        v82 = v44;
        v82.i32[3] = 0;
        v83 = vminnmq_f32(v82, v22);
        v84 = v43;
        v84.i32[3] = 0;
        v85 = vmaxnmq_f32(v84, v22);
        v83.i32[3] = v44.i32[3];
        v85.i32[3] = v43.i32[3];
        v44 = v83;
        v43 = v85;
        v45 = v79;
        v46 = v81;
      }

      if (v21.f32[0] <= v42)
      {
        v86 = v45;
        v86.i32[3] = 0;
        v87 = v21;
        v87.i32[3] = 0;
        v22 = vminnmq_f32(v86, v87);
        v88 = v46;
        v88.i32[3] = 0;
        v89 = vmaxnmq_f32(v88, v87);
        v22.i32[3] = v45.i32[3];
        v89.i32[3] = v46.i32[3];
        v45 = v22;
        v46 = v89;
      }

      if (v21.f32[0] >= v42)
      {
        v90 = v44;
        v90.i32[3] = 0;
        v91 = v21;
        v91.i32[3] = 0;
        v22 = vminnmq_f32(v90, v91);
        v92 = v43;
        v92.i32[3] = 0;
        v93 = vmaxnmq_f32(v92, v91);
        v22.i32[3] = v44.i32[3];
        v93.i32[3] = v43.i32[3];
        v44 = v22;
        v43 = v93;
      }

      v95 = v20.f32[0] < v42 && v21.f32[0] > v42;
      v97 = v20.f32[0] > v42 && v21.f32[0] < v42;
      if (v97 || v95)
      {
        v98 = (v42 - v21.f32[0]) / vsubq_f32(v20, v21).f32[0];
        v21 = vmlaq_n_f32(vmulq_n_f32(v21, 1.0 - v98), v20, v98);
        v99 = v45;
        v99.i32[3] = 0;
        v21.i32[3] = 0;
        v22 = vminnmq_f32(v99, v21);
        v100 = v46;
        v100.i32[3] = 0;
        v101 = vmaxnmq_f32(v100, v21);
        v22.i32[3] = v45.i32[3];
        v101.i32[3] = v46.i32[3];
        v102 = v44;
        v102.i32[3] = 0;
        v103 = vminnmq_f32(v102, v21);
        v104 = v43;
        v104.i32[3] = 0;
        v105 = vmaxnmq_f32(v104, v21);
        v103.i32[3] = v44.i32[3];
        v105.i32[3] = v43.i32[3];
        v44 = v103;
        v43 = v105;
        v45 = v22;
        v46 = v101;
      }

      if (v20.f32[0] <= v42)
      {
        v106 = v45;
        v106.i32[3] = 0;
        v107 = v20;
        v107.i32[3] = 0;
        v21 = vminnmq_f32(v106, v107);
        v108 = v46;
        v108.i32[3] = 0;
        v22 = vmaxnmq_f32(v108, v107);
        v21.i32[3] = v45.i32[3];
        v22.i32[3] = v46.i32[3];
        v45 = v21;
        v46 = v22;
      }

      if (v20.f32[0] >= v42)
      {
        v109 = v44;
        v109.i32[3] = 0;
        v110 = v20;
        v110.i32[3] = 0;
        v21 = vminnmq_f32(v109, v110);
        v111 = v43;
        v111.i32[3] = 0;
        v22 = vmaxnmq_f32(v111, v110);
        v21.i32[3] = v44.i32[3];
        v22.i32[3] = v43.i32[3];
        v44 = v21;
        v43 = v22;
      }

      v113 = v19.f32[0] < v42 && v20.f32[0] > v42;
      v115 = v19.f32[0] > v42 && v20.f32[0] < v42;
      if (v115 || v113)
      {
        v22 = vsubq_f32(v19, v20);
        v116 = vmlaq_n_f32(vmulq_n_f32(v20, 1.0 - ((v42 - v20.f32[0]) / v22.f32[0])), v19, (v42 - v20.f32[0]) / v22.f32[0]);
        v117 = v45;
        v117.i32[3] = 0;
        v116.i32[3] = 0;
        v19 = vminnmq_f32(v117, v116);
        v118 = v46;
        v118.i32[3] = 0;
        v21 = vmaxnmq_f32(v118, v116);
        v19.i32[3] = v45.i32[3];
        v21.i32[3] = v46.i32[3];
        v119 = v44;
        v119.i32[3] = 0;
        v120 = vminnmq_f32(v119, v116);
        v121 = v43;
        v121.i32[3] = 0;
        v20 = vmaxnmq_f32(v121, v116);
        v120.i32[3] = v44.i32[3];
        v20.i32[3] = v43.i32[3];
        v44 = v120;
        v43 = v20;
        v45 = v19;
        v46 = v21;
      }

      v46.f32[0] = v42;
      v44.f32[0] = v42;
    }

    v268 = v45;
    v268.i32[3] = 0;
    v36.i64[1] = v37;
    v269 = v46;
    v269.i32[3] = 0;
    v38.i64[1] = v39;
    v270 = vmaxnmq_f32(v268, v36);
    v271 = vminnmq_f32(v269, v38);
    v272 = v44;
    v272.i32[3] = 0;
    v273 = vmaxnmq_f32(v272, v36);
    v274 = v43;
    v274.i32[3] = 0;
    v275 = vminnmq_f32(v274, v38);
LABEL_230:
    *result = v270.i64[0];
    *(result + 2) = v271.i64[0];
    *(result + 2) = v270.i32[2];
    *(result + 6) = v271.i32[2];
    *v11 = v273.i64[0];
    v11[2] = v273.f32[2];
    *(v11 + 3) = v24;
    *(v11 + 2) = v275.i64[0];
    v276 = v11 + 6;
    *(v11 + 7) = v23;
    v11 += 8;
    result += 2;
  }

  return result;
}

uint64_t sub_239DFDDE4(void *a1)
{
  *a1 = &unk_284D08500;
  sub_239DFDEDC((a1 + 10));

  return sub_239E0512C(a1);
}

void sub_239DFDE38(void *a1)
{
  *a1 = &unk_284D08500;
  v2 = a1[19];
  if (v2)
  {
    a1[20] = v2;
    operator delete(v2);
  }

  v3 = a1[16];
  if (v3)
  {
    a1[17] = v3;
    operator delete(v3);
  }

  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  sub_239E0512C(a1);

  JUMPOUT(0x23EE7D780);
}

uint64_t sub_239DFDEDC(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_239DFDF40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, float32x4_t a8, float32x4_t a9, double a10, double a11, double a12, double a13, double a14, int8x16_t a15)
{
  if (a6 < a7)
  {
    v17 = *(result + 44);
    LODWORD(v18) = vsubq_f32(a9, a8).u32[0];
    v19 = v17;
    v20 = v17 - 1;
    v21 = a6;
    v22 = a7;
    do
    {
      v23 = a2 + 32 * v21;
      v24.i64[0] = *v23;
      v25 = (((COERCE_FLOAT(*v23) - a8.f32[0]) / v18) * v19);
      if (v20 >= v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = v20;
      }

      v27.i64[0] = *(v23 + 16);
      LODWORD(v28) = (((v27.f32[0] - a8.f32[0]) / v18) * v19);
      if (v20 >= v28)
      {
        v28 = v28;
      }

      else
      {
        v28 = v20;
      }

      v29 = *(v23 + 28);
      v30 = 3 * *(v23 + 12);
      v31 = v30 + 1;
      v32 = v30 + 2;
      v33 = *(*(result + 128) + 8 * v29);
      if (v33)
      {
        if (*(*(result + 152) + 4 * v29) == 4)
        {
          v30 = *(v33 + 4 * v30);
          v31 = *(v33 + 4 * v31);
          v32 = *(v33 + 4 * v32);
        }

        else
        {
          v30 = *(v33 + 2 * v30);
          v31 = *(v33 + 2 * v31);
          v32 = *(v33 + 2 * v32);
        }
      }

      v24.i32[2] = *(v23 + 8);
      v27.i32[2] = *(v23 + 24);
      v34 = *(*(result + 80) + 8 * v29);
      v35 = *(*(result + 104) + 4 * v29);
      v36 = v34 + v35 * v30;
      a15.i64[0] = *v36;
      v37 = *(v36 + 8);
      v38 = v34 + v35 * v31;
      v16.i64[0] = *v38;
      v39 = *(v38 + 8);
      v40 = v34 + v35 * v32;
      v15.i64[0] = *v40;
      v41 = *(v40 + 8);
      ++*(a4 + 4 * v26);
      ++*(a3 + 4 * v28);
      if (v28 > v25)
      {
        v42 = v15;
        v42.i32[2] = v41;
        v43 = v16;
        v43.i32[2] = v39;
        v44 = a15;
        v44.i32[2] = v37;
        if (vcgt_f32(*a15.i8, *v16.f32).u8[0])
        {
          v45 = -1;
        }

        else
        {
          v45 = 0;
        }

        v46 = vdupq_n_s32(v45);
        v47 = vbslq_s8(v46, v44, v43);
        v48 = vbslq_s8(v46, v43, v44);
        v49 = vdupq_lane_s32(*&vcgtq_f32(v47, v15), 0);
        v50 = vbslq_s8(v49, v47, v42);
        v51 = vbslq_s8(v49, v42, v47);
        if (vmovn_s32(vcgtq_f32(v48, v51)).u8[0])
        {
          v52 = -1;
        }

        else
        {
          v52 = 0;
        }

        v53 = vdupq_n_s32(v52);
        v54 = vbslq_s8(v53, v48, v51);
        v55 = vbslq_s8(v53, v51, v48);
        v56 = vmovn_s32(vceqq_f32(v55, v54)).u8[0];
        v16 = vsubq_f32(v50, v55);
        v57 = vsubq_f32(v54, v55);
        v58 = v55;
        v58.i32[3] = 0;
        v59 = v54;
        v59.i32[3] = 0;
        v60 = vsubq_f32(v50, v54);
        v50.i32[3] = 0;
        v61 = a5 + 16 + 32 * v26;
        do
        {
          v62.f32[0] = (a8.f32[0] + (v18 / v19)) + ((v18 / v19) * v26);
          v63 = vmlaq_n_f32(v55, v16, (v62.f32[0] - v55.f32[0]) / v16.f32[0]);
          if ((v54.f32[0] < v62.f32[0]) | v56 & 1)
          {
            v64 = vminnmq_f32(v58, v59);
            v65 = vmaxnmq_f32(v58, v59);
            v63.i32[3] = 0;
            v66 = vmlaq_n_f32(v54, v60, (v62.f32[0] - v54.f32[0]) / v60.f32[0]);
            v66.i32[3] = 0;
            v67 = vminnmq_f32(v63, v66);
            v68 = vmaxnmq_f32(v63, v66);
            v64.i32[3] = 0;
            v67.i32[3] = 0;
            v65.i32[3] = 0;
            v69 = vminnmq_f32(v64, v67);
            v68.i32[3] = 0;
            v70 = vmaxnmq_f32(v65, v68);
            v71 = vminnmq_f32(v67, v50);
            v72 = vmaxnmq_f32(v68, v50);
          }

          else
          {
            v63.i32[3] = 0;
            v73 = vmlaq_n_f32(v55, v57, (v62.f32[0] - v55.f32[0]) / v57.f32[0]);
            v73.i32[3] = 0;
            v74 = vminnmq_f32(v63, v73);
            v75 = vmaxnmq_f32(v63, v73);
            v74.i32[3] = 0;
            v69 = vminnmq_f32(v58, v74);
            v75.i32[3] = 0;
            v70 = vmaxnmq_f32(v58, v75);
            v76 = vminnmq_f32(v59, v50);
            v77 = vmaxnmq_f32(v59, v50);
            v76.i32[3] = 0;
            v71 = vminnmq_f32(v74, v76);
            v77.i32[3] = 0;
            v72 = vmaxnmq_f32(v75, v77);
          }

          v69.i32[3] = 0;
          v24.i32[3] = 0;
          v78 = vmaxnmq_f32(v69, v24);
          v79.f32[0] = (a8.f32[0] + (v18 / v19)) + ((v18 / v19) * v26);
          v62 = v62.u32[0];
          v62.i32[1] = v70.i32[1];
          v62.i32[2] = v70.i32[2];
          v27.i32[3] = 0;
          v79.i32[1] = v71.i32[1];
          v80 = vminnmq_f32(v62, v27);
          v79.i64[1] = v71.u32[2];
          v24 = vmaxnmq_f32(v79, v24);
          v72.i32[3] = 0;
          v81 = *(v61 - 16);
          v82 = *v61;
          v81.i32[3] = 0;
          v78.i32[3] = 0;
          v27 = vminnmq_f32(v72, v27);
          v83 = vminnmq_f32(v81, v78);
          v82.i32[3] = 0;
          v80.i32[3] = 0;
          v84 = vmaxnmq_f32(v82, v80);
          *(v61 - 8) = v83.i32[2];
          *(v61 - 16) = v83.i64[0];
          *(v61 + 8) = v84.i32[2];
          *v61 = v84.i64[0];
          v61 += 32;
          LODWORD(v26) = v26 + 1;
        }

        while (v28 != v26);
      }

      v85 = (a5 + 32 * v28);
      a15 = *v85;
      v15 = v85[1];
      a15.i32[3] = 0;
      v24.i32[3] = 0;
      v15.i32[3] = 0;
      v27.i32[3] = 0;
      v86 = vminnmq_f32(a15, v24);
      v87 = vmaxnmq_f32(v15, v27);
      v85->i32[2] = v86.i32[2];
      v85->i64[0] = v86.i64[0];
      v85[1].i32[2] = v87.i32[2];
      v85[1].i64[0] = v87.i64[0];
      ++v21;
    }

    while (v21 != v22);
  }

  return result;
}

uint64_t sub_239DFE28C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, float32x4_t a8, float32x4_t a9, double a10, double a11, double a12, double a13, double a14, int8x16_t a15)
{
  if (a6 < a7)
  {
    v17 = *(result + 44);
    v18 = a8.f32[1];
    v19 = vsubq_f32(a9, a8);
    v20 = v17;
    v21 = v17 - 1;
    v22 = v19.f32[1] / v20;
    v23 = v18 + (v19.f32[1] / v20);
    v24 = a6;
    v25 = a7;
    do
    {
      v26 = a2 + 32 * v24;
      v27.i64[0] = *v26;
      v28 = (((COERCE_FLOAT(HIDWORD(*v26)) - v18) / v19.f32[1]) * v20);
      if (v21 >= v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = v21;
      }

      v30.i64[0] = *(v26 + 16);
      LODWORD(v31) = (((v30.f32[1] - v18) / v19.f32[1]) * v20);
      if (v21 >= v31)
      {
        v31 = v31;
      }

      else
      {
        v31 = v21;
      }

      v32 = *(v26 + 28);
      v33 = 3 * *(v26 + 12);
      v34 = v33 + 1;
      v35 = v33 + 2;
      v36 = *(*(result + 128) + 8 * v32);
      if (v36)
      {
        if (*(*(result + 152) + 4 * v32) == 4)
        {
          v33 = *(v36 + 4 * v33);
          v34 = *(v36 + 4 * v34);
          v35 = *(v36 + 4 * v35);
        }

        else
        {
          v33 = *(v36 + 2 * v33);
          v34 = *(v36 + 2 * v34);
          v35 = *(v36 + 2 * v35);
        }
      }

      v27.i32[2] = *(v26 + 8);
      v30.i32[2] = *(v26 + 24);
      v37 = *(*(result + 80) + 8 * v32);
      v38 = *(*(result + 104) + 4 * v32);
      v39 = v37 + v38 * v33;
      v15.i64[0] = *v39;
      v40 = *(v39 + 8);
      v41 = v37 + v38 * v34;
      v16.i64[0] = *v41;
      v42 = *(v41 + 8);
      v43 = v37 + v38 * v35;
      a15.i64[0] = *v43;
      v44 = *(v43 + 8);
      ++*(a4 + 4 * v29);
      ++*(a3 + 4 * v31);
      if (v31 > v28)
      {
        v45 = a15;
        v45.i32[2] = v44;
        v46 = v16;
        v46.i32[2] = v42;
        v47 = v15;
        v47.i32[2] = v40;
        if (vcgt_f32(*&v15, *&v16).i32[1])
        {
          v48 = -1;
        }

        else
        {
          v48 = 0;
        }

        v49 = vdupq_n_s32(v48);
        v50 = vbslq_s8(v49, v47, v46);
        v51 = vbslq_s8(v49, v46, v47);
        v52 = vdupq_lane_s32(*&vcgtq_f32(vdupq_lane_s32(*v50.i8, 1), vdupq_lane_s32(*a15.i8, 1)), 0);
        v53 = vbslq_s8(v52, v50, v45);
        v54 = vbslq_s8(v52, v45, v50);
        if (vmovn_s32(vcgtq_f32(v51, v54)).i8[2])
        {
          v55 = -1;
        }

        else
        {
          v55 = 0;
        }

        v16 = vdupq_n_s32(v55);
        v56 = vbslq_s8(v16, v51, v54);
        v57 = vbslq_s8(v16, v54, v51);
        v58 = vsubq_f32(v53, v57);
        v59 = v57;
        v59.i32[3] = 0;
        v60 = v56;
        v60.i32[3] = 0;
        v61 = vsubq_f32(v56, v57);
        v62 = vsubq_f32(v53, v56);
        v53.i32[3] = 0;
        v63 = a5 + 16 + 32 * v29;
        do
        {
          v64 = v23 + (v22 * v29);
          v65 = vmlaq_n_f32(v57, v58, (v64 - v57.f32[1]) / (v53.f32[1] - v57.f32[1]));
          if (v56.f32[1] < v64 || v57.f32[1] == v56.f32[1])
          {
            v67 = vminnmq_f32(v59, v60);
            v68 = vmaxnmq_f32(v59, v60);
            v65.i32[3] = 0;
            v69 = vmlaq_n_f32(v56, v62, (v64 - v56.f32[1]) / (v53.f32[1] - v56.f32[1]));
            v69.i32[3] = 0;
            v70 = vminnmq_f32(v65, v69);
            v71 = vmaxnmq_f32(v65, v69);
            v67.i32[3] = 0;
            v70.i32[3] = 0;
            v68.i32[3] = 0;
            v75 = vminnmq_f32(v67, v70);
            v71.i32[3] = 0;
            v76 = vmaxnmq_f32(v68, v71);
            v79 = vminnmq_f32(v70, v53);
            v80 = vmaxnmq_f32(v71, v53);
          }

          else
          {
            v65.i32[3] = 0;
            v72 = vmlaq_n_f32(v57, v61, (v64 - v57.f32[1]) / (v56.f32[1] - v57.f32[1]));
            v72.i32[3] = 0;
            v73 = vminnmq_f32(v65, v72);
            v74 = vmaxnmq_f32(v65, v72);
            v73.i32[3] = 0;
            v75 = vminnmq_f32(v59, v73);
            v74.i32[3] = 0;
            v76 = vmaxnmq_f32(v59, v74);
            v77 = vminnmq_f32(v60, v53);
            v78 = vmaxnmq_f32(v60, v53);
            v77.i32[3] = 0;
            v79 = vminnmq_f32(v73, v77);
            v78.i32[3] = 0;
            v80 = vmaxnmq_f32(v74, v78);
          }

          v75.i32[3] = 0;
          v27.i32[3] = 0;
          v81.i32[0] = v76.i32[0];
          v81.f32[1] = v23 + (v22 * v29);
          v81.i64[1] = v76.u32[2];
          v30.i32[3] = 0;
          v82 = vmaxnmq_f32(v75, v27);
          v83.i32[0] = v79.i32[0];
          v83.f32[1] = v81.f32[1];
          v84 = vminnmq_f32(v81, v30);
          v83.i64[1] = v79.u32[2];
          v27 = vmaxnmq_f32(v83, v27);
          v80.i32[3] = 0;
          v86 = *(v63 - 16);
          v85 = *v63;
          v86.i32[3] = 0;
          v82.i32[3] = 0;
          v30 = vminnmq_f32(v80, v30);
          v87 = vminnmq_f32(v86, v82);
          v85.i32[3] = 0;
          v84.i32[3] = 0;
          v88 = vmaxnmq_f32(v85, v84);
          *(v63 - 8) = v87.i32[2];
          *(v63 - 16) = v87.i64[0];
          *(v63 + 8) = v88.i32[2];
          *v63 = v88.i64[0];
          v63 += 32;
          LODWORD(v29) = v29 + 1;
        }

        while (v31 != v29);
      }

      v89 = (a5 + 32 * v31);
      a15 = *v89;
      v15 = v89[1];
      a15.i32[3] = 0;
      v27.i32[3] = 0;
      v15.i32[3] = 0;
      v30.i32[3] = 0;
      v90 = vminnmq_f32(a15, v27);
      v91 = vmaxnmq_f32(v15, v30);
      v89->i32[2] = v90.i32[2];
      v89->i64[0] = v90.i64[0];
      v89[1].i32[2] = v91.i32[2];
      v89[1].i64[0] = v91.i64[0];
      ++v24;
    }

    while (v24 != v25);
  }

  return result;
}

uint64_t sub_239DFE608(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, float32x4_t a8, float32x4_t a9, double a10, double a11, double a12, double a13, double a14, __n128 a15)
{
  if (a6 < a7)
  {
    v20 = *(result + 44);
    v21 = a8.f32[2];
    v22 = vsubq_f32(a9, a8);
    v23 = v20;
    v24 = v20 - 1;
    v25 = a6;
    v26 = a7;
    do
    {
      v27 = a2 + 32 * v25;
      v28 = (((*(v27 + 8) - v21) / v22.f32[2]) * v23);
      if (v24 >= v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = v24;
      }

      LODWORD(v30) = (((*(v27 + 24) - v21) / v22.f32[2]) * v23);
      if (v24 >= v30)
      {
        v30 = v30;
      }

      else
      {
        v30 = v24;
      }

      v31 = *(v27 + 28);
      v32 = 3 * *(v27 + 12);
      v33 = v32 + 1;
      v34 = v32 + 2;
      v35 = *(*(result + 128) + 8 * v31);
      if (v35)
      {
        if (*(*(result + 152) + 4 * v31) == 4)
        {
          v32 = *(v35 + 4 * v32);
          v33 = *(v35 + 4 * v33);
          v34 = *(v35 + 4 * v34);
        }

        else
        {
          v32 = *(v35 + 2 * v32);
          v33 = *(v35 + 2 * v33);
          v34 = *(v35 + 2 * v34);
        }
      }

      v36.i64[0] = *v27;
      v36.i32[2] = *(v27 + 8);
      v37.i64[0] = *(v27 + 16);
      v37.i32[2] = *(v27 + 24);
      v38 = *(*(result + 80) + 8 * v31);
      v39 = *(*(result + 104) + 4 * v31);
      v40 = v38 + v39 * v32;
      a15.n128_u64[0] = *v40;
      v15.i32[0] = *(v40 + 8);
      v41 = v38 + v39 * v33;
      v17.i64[0] = *v41;
      v19.i32[0] = *(v41 + 8);
      v42 = v38 + v39 * v34;
      v16.i64[0] = *v42;
      v18.i32[0] = *(v42 + 8);
      ++*(a4 + 4 * v29);
      ++*(a3 + 4 * v30);
      if (v30 > v28)
      {
        v16.i32[2] = v18.i32[0];
        v17.i32[2] = v19.i32[0];
        a15.n128_u32[2] = v15.i32[0];
        v43 = vdupq_lane_s32(*&vcgtq_f32(v15, v19), 0);
        v44 = vbslq_s8(v43, v17, a15);
        v45 = vbslq_s8(v43, a15, v17);
        v46 = vdupq_lane_s32(*&vcgtq_f32(vdupq_laneq_s32(v45, 2), v18), 0);
        v47 = vbslq_s8(v46, v45, v16);
        v48 = vbslq_s8(v46, v16, v45);
        if (vmovn_s32(vcgtq_f32(v44, v48)).i32[1])
        {
          v49 = -1;
        }

        else
        {
          v49 = 0;
        }

        v17 = vdupq_n_s32(v49);
        v50 = vbslq_s8(v17, v44, v48);
        v16 = vbslq_s8(v17, v48, v44);
        v19 = vsubq_f32(v47, v16);
        v51 = v16;
        v51.i32[3] = 0;
        v52 = v50;
        v52.i32[3] = 0;
        v53 = vsubq_f32(v50, v16);
        v54 = vsubq_f32(v47, v50);
        v47.i32[3] = 0;
        v55 = a5 + 16 + 32 * v29;
        do
        {
          v56 = (v21 + (v22.f32[2] / v23)) + ((v22.f32[2] / v23) * v29);
          v57 = vmlaq_n_f32(v16, v19, (v56 - v16.f32[2]) / (v47.f32[2] - v16.f32[2]));
          if (v50.f32[2] < v56 || v16.f32[2] == v50.f32[2])
          {
            v59 = vminnmq_f32(v51, v52);
            v60 = vmaxnmq_f32(v51, v52);
            v57.i32[3] = 0;
            v61 = vmlaq_n_f32(v50, v54, (v56 - v50.f32[2]) / (v47.f32[2] - v50.f32[2]));
            v61.i32[3] = 0;
            v62 = vminnmq_f32(v57, v61);
            v63 = vmaxnmq_f32(v57, v61);
            v59.i32[3] = 0;
            v62.i32[3] = 0;
            v60.i32[3] = 0;
            v67 = vminnmq_f32(v59, v62);
            v63.i32[3] = 0;
            v68 = vmaxnmq_f32(v60, v63).u64[0];
            v71 = vminnmq_f32(v62, v47).u64[0];
            v72 = vmaxnmq_f32(v63, v47);
          }

          else
          {
            v57.i32[3] = 0;
            v64 = vmlaq_n_f32(v16, v53, (v56 - v16.f32[2]) / (v50.f32[2] - v16.f32[2]));
            v64.i32[3] = 0;
            v65 = vminnmq_f32(v57, v64);
            v66 = vmaxnmq_f32(v57, v64);
            v65.i32[3] = 0;
            v67 = vminnmq_f32(v51, v65);
            v66.i32[3] = 0;
            v68 = vmaxnmq_f32(v51, v66).u64[0];
            v69 = vminnmq_f32(v52, v47);
            v70 = vmaxnmq_f32(v52, v47);
            v69.i32[3] = 0;
            v71 = vminnmq_f32(v65, v69).u64[0];
            v70.i32[3] = 0;
            v72 = vmaxnmq_f32(v66, v70);
          }

          v67.i32[3] = 0;
          v36.i32[3] = 0;
          v73.i64[0] = v68;
          v73.i64[1] = LODWORD(v56);
          v37.i32[3] = 0;
          v74 = vmaxnmq_f32(v67, v36);
          v75.i64[0] = v71;
          v76 = vminnmq_f32(v73, v37);
          v75.i64[1] = LODWORD(v56);
          v36 = vmaxnmq_f32(v75, v36);
          v72.i32[3] = 0;
          v78 = *(v55 - 16);
          v77 = *v55;
          v78.i32[3] = 0;
          v74.i32[3] = 0;
          v37 = vminnmq_f32(v72, v37);
          v79 = vminnmq_f32(v78, v74);
          v77.i32[3] = 0;
          v76.i32[3] = 0;
          v80 = vmaxnmq_f32(v77, v76);
          *(v55 - 8) = v79.i32[2];
          *(v55 - 16) = v79.i64[0];
          *(v55 + 8) = v80.i32[2];
          *v55 = v80.i64[0];
          v55 += 32;
          LODWORD(v29) = v29 + 1;
        }

        while (v30 != v29);
      }

      v81 = a5 + 32 * v30;
      a15 = *v81;
      v15 = *(v81 + 16);
      a15.n128_u32[3] = 0;
      v36.i32[3] = 0;
      v15.i32[3] = 0;
      v37.i32[3] = 0;
      v82 = vminnmq_f32(a15, v36);
      v83 = vmaxnmq_f32(v15, v37);
      *(v81 + 8) = v82.i32[2];
      *v81 = v82.i64[0];
      *(v81 + 24) = v83.i32[2];
      *(v81 + 16) = v83.i64[0];
      ++v25;
    }

    while (v25 != v26);
  }

  return result;
}
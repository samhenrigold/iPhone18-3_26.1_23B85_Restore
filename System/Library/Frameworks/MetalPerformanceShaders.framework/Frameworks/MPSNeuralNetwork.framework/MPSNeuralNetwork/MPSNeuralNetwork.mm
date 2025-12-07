void sub_239BAC7D0(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_239BACD2C(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t sub_239BAC7E4(char *a1, const char *a2, char *a3, char *a4, char *a5, char *a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v11 = MEMORY[0x277CD73A8];
  if (a7)
  {
    v12 = objc_msgSend_columns(a4, a2, a3, a4, a5, a6, a7, a8);
    objc_msgSend_secondarySourceMatrixOrigin(a1, v13, v14, v15, v16, v17, v18, v19);
    v20 = v12 - v438;
    v28 = objc_msgSend_sourceInputFeatureChannels(a1, v21, v22, v23, v24, v25, v26, v27);
    if (v20 >= v28)
    {
      v36 = v28;
    }

    else
    {
      v36 = v20;
    }

    v433 = v36;
    v37 = objc_msgSend_columns(a3, v29, v30, v31, v32, v33, v34, v35);
    objc_msgSend_primarySourceMatrixOrigin(a1, v38, v39, v40, v41, v42, v43, v44);
    v45 = v37 - v438;
    v53 = objc_msgSend_sourceOutputFeatureChannels(a1, v46, v47, v48, v49, v50, v51, v52);
    if (v45 >= v53)
    {
      v61 = v53;
    }

    else
    {
      v61 = v45;
    }

    v62 = objc_msgSend_rows(v8, v54, v55, v56, v57, v58, v59, v60);
    objc_msgSend_secondarySourceMatrixOrigin(a1, v63, v64, v65, v66, v67, v68, v69);
    v70 = v62 - v437;
    v78 = objc_msgSend_rows(a3, v71, v72, v73, v74, v75, v76, v77);
    objc_msgSend_primarySourceMatrixOrigin(a1, v79, v80, v81, v82, v83, v84, v85);
    if (v70 >= v78 - v437)
    {
      v93 = v78 - v437;
    }

    else
    {
      v93 = v70;
    }

    v94 = objc_msgSend_sourceNumberOfFeatureVectors(a1, v86, v87, v88, v89, v90, v91, v92);
    if (v93 >= v94)
    {
      v102 = v94;
    }

    else
    {
      v102 = v93;
    }

    v430 = v102;
    objc_msgSend_secondarySourceMatrixOrigin(a1, v95, v96, v97, v98, v99, v100, v101);
    v110 = v438 * (objc_msgSend_dataType(v8, v103, v104, v105, v106, v107, v108, v109) >> 3);
    objc_msgSend_secondarySourceMatrixOrigin(a1, v111, v112, v113, v114, v115, v116, v117);
    v431 = v110 + objc_msgSend_rowBytes(v8, v118, v119, v120, v121, v122, v123, v124) * v445[0] + *&v8[*v11];
    objc_msgSend_primarySourceMatrixOrigin(a1, v125, v126, v127, v128, v129, v130, v131);
    v139 = v438 * (objc_msgSend_dataType(a3, v132, v133, v134, v135, v136, v137, v138) >> 3);
    objc_msgSend_primarySourceMatrixOrigin(a1, v140, v141, v142, v143, v144, v145, v146);
    v154 = v11;
    v429 = v139 + objc_msgSend_rowBytes(a3, v147, v148, v149, v150, v151, v152, v153) * v445[0] + *&a3[*v11];
    v162 = a3;
  }

  else
  {
    v163 = objc_msgSend_rows(a3, a2, a3, a4, a5, a6, a7, a8);
    objc_msgSend_primarySourceMatrixOrigin(a1, v164, v165, v166, v167, v168, v169, v170);
    v171 = v163 - v437;
    v179 = objc_msgSend_sourceNumberOfFeatureVectors(a1, v172, v173, v174, v175, v176, v177, v178);
    if (v171 >= v179)
    {
      v187 = v179;
    }

    else
    {
      v187 = v171;
    }

    v433 = v187;
    v188 = objc_msgSend_rows(v8, v180, v181, v182, v183, v184, v185, v186);
    objc_msgSend_secondarySourceMatrixOrigin(a1, v189, v190, v191, v192, v193, v194, v195);
    v196 = v188 - v437;
    v204 = objc_msgSend_sourceInputFeatureChannels(a1, v197, v198, v199, v200, v201, v202, v203);
    if (v196 >= v204)
    {
      v61 = v204;
    }

    else
    {
      v61 = v196;
    }

    v212 = objc_msgSend_columns(a3, v205, v206, v207, v208, v209, v210, v211);
    objc_msgSend_primarySourceMatrixOrigin(a1, v213, v214, v215, v216, v217, v218, v219);
    v220 = v212 - v438;
    v228 = objc_msgSend_columns(v8, v221, v222, v223, v224, v225, v226, v227);
    objc_msgSend_secondarySourceMatrixOrigin(a1, v229, v230, v231, v232, v233, v234, v235);
    if (v220 >= v228 - v438)
    {
      v243 = v228 - v438;
    }

    else
    {
      v243 = v220;
    }

    v244 = objc_msgSend_sourceOutputFeatureChannels(a1, v236, v237, v238, v239, v240, v241, v242);
    if (v243 >= v244)
    {
      v252 = v244;
    }

    else
    {
      v252 = v243;
    }

    v430 = v252;
    objc_msgSend_primarySourceMatrixOrigin(a1, v245, v246, v247, v248, v249, v250, v251);
    v260 = v438 * (objc_msgSend_dataType(a3, v253, v254, v255, v256, v257, v258, v259) >> 3);
    objc_msgSend_primarySourceMatrixOrigin(a1, v261, v262, v263, v264, v265, v266, v267);
    v431 = v260 + objc_msgSend_rowBytes(a3, v268, v269, v270, v271, v272, v273, v274) * v445[0] + *&a3[*v11];
    objc_msgSend_secondarySourceMatrixOrigin(a1, v275, v276, v277, v278, v279, v280, v281);
    v289 = v438 * (objc_msgSend_dataType(v8, v282, v283, v284, v285, v286, v287, v288) >> 3);
    objc_msgSend_secondarySourceMatrixOrigin(a1, v290, v291, v292, v293, v294, v295, v296);
    v154 = v11;
    v429 = v289 + objc_msgSend_rowBytes(v8, v297, v298, v299, v300, v301, v302, v303) * v445[0] + *&v8[*v11];
    v162 = v8;
    v8 = a3;
  }

  objc_msgSend_resultMatrixOrigin(a1, v155, v156, v157, v158, v159, v160, v161);
  v311 = v438 * (objc_msgSend_dataType(a5, v304, v305, v306, v307, v308, v309, v310) >> 3);
  objc_msgSend_resultMatrixOrigin(a1, v312, v313, v314, v315, v316, v317, v318);
  v427 = v311 + objc_msgSend_rowBytes(a5, v319, v320, v321, v322, v323, v324, v325) * v445[0];
  v326 = *&a5[*v154];
  ComputeState = MPSLibrary::GetComputeState();
  v437 = __PAIR64__(v61, v433);
  LODWORD(v438) = v430;
  HIDWORD(v438) = objc_msgSend_rowBytes(v8, v328, v329, v330, v331, v332, v333, v334);
  v439 = objc_msgSend_rowBytes(v162, v335, v336, v337, v338, v339, v340, v341);
  v440 = objc_msgSend_rowBytes(a5, v342, v343, v344, v345, v346, v347, v348);
  v441 = 0;
  objc_msgSend_alpha(a1, v349, v350, v351, v352, v353, v354, v355);
  *&v356 = v356;
  v442 = LODWORD(v356);
  v443 = 0;
  v444 = 0;
  v364 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v357, v358, v359, v360, v361, v362, v363);
  v371 = 8;
  if (v364 > 0x3F)
  {
    v372 = a2;
  }

  else
  {
    v372 = a2;
    do
    {
      v371 >>= 1;
    }

    while (v364 < 8 * v371);
  }

  objc_msgSend_setComputePipelineState_(v372, v365, ComputeState, v366, v367, v368, v369, v370, v427);
  v380 = objc_msgSend_data(v8, v373, v374, v375, v376, v377, v378, v379);
  objc_msgSend_setBuffer_offset_atIndex_(v372, v381, v380, v431, 0, v382, v383, v384);
  v392 = objc_msgSend_data(v162, v385, v386, v387, v388, v389, v390, v391);
  objc_msgSend_setBuffer_offset_atIndex_(v372, v393, v392, v429, 1, v394, v395, v396);
  v404 = objc_msgSend_data(a5, v397, v398, v399, v400, v401, v402, v403);
  objc_msgSend_setBuffer_offset_atIndex_(v372, v405, v404, v428 + v326, 2, v406, v407, v408);
  if (a6)
  {
    v416 = objc_msgSend_data(a6, v409, v410, v411, v412, v413, v414, v415);
    objc_msgSend_setBuffer_offset_atIndex_(v372, v417, v416, *&a6[*MEMORY[0x277CD74A8]], 3, v418, v419, v420);
  }

  objc_msgSend_setBytes_length_atIndex_(v372, v409, &v437, 44, 4, v413, v414, v415);
  v445[0] = (v61 + 31) >> 5;
  v445[1] = (4 * v371 + v433 - 1) / (4 * v371);
  v445[2] = 1;
  v436[0] = 8;
  v436[1] = v371;
  v436[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v372, v421, v445, v436, v422, v423, v424, v425);
  return MPSLibrary::ReleaseComputeState();
}

id *sub_239BACD2C(id *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  objc_msgSend_endEncoding(*a1, a2, a3, a4, a5, a6, a7, a8);

  return a1;
}

void sub_239BAD3D4(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_239BACD2C(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t sub_239BAD6EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MPSCreateFunctionConstantValues();
  v11 = v6;
  v15 = 1;
  v12 = a2[8];
  if (v12)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v6, v7, &v15, 53, 0, v8, v9, v10);
    v12 = a2[8];
  }

  if ((v12 & 2) != 0)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v11, v7, &v15, 53, 1, v8, v9, v10);
  }

  v13 = _MPSNewSpecializedFunction();

  return v13;
}

uint64_t sub_239BAD85C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + *MEMORY[0x277CD7378]);
  v11 = *(a4 + 40);
  v12 = *(a4 + 104);
  v145 = *(a4 + 120);
  v14 = *(a4 + 144);
  v13 = *(a4 + 152);
  if (*(a4 + 8) == *(a4 + 72))
  {
    if (v11 == v12)
    {
      return -18;
    }

    v34 = a2;
    isEqual = objc_msgSend_isEqual_(v11, a2, v12, a4, a5, a6, a7, a8);
    a2 = v34;
    if (isEqual)
    {
      return -18;
    }
  }

  result = 0;
  if (v13)
  {
    v144 = v12;
    if (v14)
    {
      v143 = a2;
      v16 = *(a4 + 24);
      v142 = *(a4 + 88);
      v17 = v13 * v14 * v142;
      v18 = objc_msgSend_width(v11, a2, a3, a4, a5, a6, a7, a8) - *(a4 + 168);
      v33 = v18 * v16 * (objc_msgSend_height(v11, v19, v20, v21, v22, v23, v24, v25) - *(a4 + 176));
      if ((v10 & 1) == 0)
      {
        if (v17 != v33 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNReshape.mm", 0x44, @"Source %p and destination %p shaapes are not the same sizes\n", v29, v30, v31, v32);
        }

        if (*(a4 + 200) && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNReshape.mm", 0x45, @"Source feature channel offset for rehape must be 0 %lu\n", v29, v30, v31, v32);
        }

        if (*(a4 + 192) && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNReshape.mm", 0x46, @"Destination feature channel offset for rehape must be 0 %lu\n", v29, v30, v31, v32);
        }
      }

      if (*(a4 + 200))
      {
        return -20;
      }

      else
      {
        result = -20;
        if (!*(a4 + 192) && v17 == v33)
        {
          v36 = objc_msgSend_maxBatchSize(a1, v26, v27, v28, v29, v30, v31, v32);
          *&v37 = -1;
          *(&v37 + 1) = -1;
          v175 = v37;
          v176 = v37;
          v173 = v37;
          v174 = v37;
          v38 = *(a4 + 80) & 0x3F | ((*(a4 + 16) & 0x3Fu) << 6);
          v171 = v36;
          v172 = v38;
          MPSLibrary::CreateUberShaderKey();
          PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
          if (PipelineStateForMPSKey)
          {
            v147 = v16;
            objc_msgSend_setComputePipelineState_(v143, v40, PipelineStateForMPSKey, v41, v42, v43, v44, v45, 0, 0, 0, 0, 0);
            MPSLibrary::ReleaseMPSKey();
            v53 = 16;
            if (v14 <= 0xF && v13 <= 0xF)
            {
              if (v14 <= v13)
              {
                v54 = v13;
              }

              else
              {
                v54 = v14;
              }

              v53 = ((v54 - 1) | ((v54 - 1) >> 1) | (((v54 - 1) | ((v54 - 1) >> 1)) >> 2)) + 1;
            }

            v141 = objc_msgSend_arrayLength(v144, v46, v47, v48, v49, v50, v51, v52);
            v169 = 0u;
            v170 = 0u;
            v167 = 0u;
            v168 = 0u;
            v55 = vmovn_s64(*(a4 + 168));
            v55.i16[1] = v55.i16[2];
            v55.i16[2] = *(a4 + 200);
            v56 = vmovn_s64(v145);
            v56.i16[1] = v56.i16[2];
            v56.i16[2] = *(a4 + 192);
            v166[0] = v55;
            v166[1] = v56;
            v64 = objc_msgSend_arrayLength(v144, v57, v58, v59, v60, v61, v62, v63);
            LOWORD(v65) = v14;
            WORD1(v65) = v13;
            WORD2(v65) = v64;
            *&v167 = v65;
            v73 = objc_msgSend_width(v11, v66, v67, v68, v69, v70, v71, v72);
            LODWORD(v74) = v147;
            DWORD1(v74) = v73 * v147;
            DWORD2(v74) = v147;
            HIDWORD(v74) = v73 * v147;
            v168 = v74;
            v82 = objc_msgSend_width(v144, v75, v76, v77, v78, v79, v80, v81);
            LODWORD(v83) = v142;
            DWORD1(v83) = v82 * v142;
            DWORD2(v83) = v142;
            HIDWORD(v83) = v82 * v142;
            v169 = v83;
            *&v170 = 0;
            v84.i32[0] = *(a4 + 192) >> 2;
            v84.i32[1] = *(a4 + 136);
            v161[0] = vuzp1_s16(vmovn_s64(*(a4 + 120)), v84);
            v146 = *(a4 + 144);
            v92.i32[0] = objc_msgSend_arrayLength(v144, v85, v86, v87, v88, v89, v90, v91);
            v92.i32[1] = *(a4 + 160);
            v161[1] = vuzp1_s16(vmovn_s64(v146), v92);
            v162 = v142;
            v163 = 65537;
            v164 = 1;
            memset(v165, 0, sizeof(v165));
            v151 = 0;
            v150 = 0;
            v93 = vmovn_s64(*(a4 + 168));
            v153 = v93.i16[2];
            v152 = v93.i16[0];
            v154 = objc_msgSend_strideInPixelsX(a1, v94, v95, v96, v97, v98, v99, v100);
            v155 = objc_msgSend_strideInPixelsY(a1, v101, v102, v103, v104, v105, v106, v107);
            v156 = 0;
            v157 = *(a4 + 200);
            v158 = v147;
            v159 = *(a4 + 184);
            v160 = 1;
            objc_msgSend_setTexture_atIndex_(v143, v108, v11, v36, v109, v110, v111, v112);
            objc_msgSend_setBytes_length_atIndex_(v143, v113, &v150, 32, 1, v114, v115, v116);
            objc_msgSend_setTexture_atIndex_(v143, v117, v144, 0, v118, v119, v120, v121);
            objc_msgSend_setBytes_length_atIndex_(v143, v122, v161, 40, 0, v123, v124, v125);
            objc_msgSend_setBytes_length_atIndex_(v143, v126, v166, 80, 30, v127, v128, v129);
            Sampler = MPSDevice::GetSampler();
            objc_msgSend_setSamplerState_atIndex_(v143, v131, Sampler, 0, v132, v133, v134, v135);
            v149[0] = (v14 + v53 - 1) / v53;
            v149[1] = (v13 + v53 - 1) / v53;
            v149[2] = v141;
            v148[0] = v53;
            v148[1] = v53;
            v148[2] = 1;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v143, v136, v149, v148, v137, v138, v139, v140);
            return 0;
          }

          else
          {
            return -1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_239BAE344(void *a1, const char *a2, uint64_t a3, int64x2_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + *MEMORY[0x277CD7378]);
  v11 = a4[2].i64[1];
  v12 = a4[10].i64[0];
  v145 = a4[11];
  v14 = a4[12].u64[1];
  v13 = a4[13].u64[0];
  if (a4->i64[1] == a4[8].i64[0])
  {
    if (v11 == v12)
    {
      return -18;
    }

    v34 = a2;
    isEqual = objc_msgSend_isEqual_(v11, a2, v12, a4, a5, a6, a7, a8);
    a2 = v34;
    if (isEqual)
    {
      return -18;
    }
  }

  result = 0;
  if (v13)
  {
    v144 = v12;
    if (v14)
    {
      v143 = a2;
      v16 = a4[1].i64[1];
      v142 = a4[9].i64[0];
      v17 = v13 * v14 * v142;
      v18 = objc_msgSend_width(v11, a2, a3, a4, a5, a6, a7, a8) - a4[14].i64[0];
      v33 = v18 * v16 * (objc_msgSend_height(v11, v19, v20, v21, v22, v23, v24, v25) - a4[14].i64[1]);
      if ((v10 & 1) == 0)
      {
        if (v17 != v33 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNReshape.mm", 0x1B3, @"Source %p and destination %p shaapes are not the same sizes\n", v29, v30, v31, v32);
        }

        if (a4[19].i64[1] && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNReshape.mm", 0x1B4, @"Source feature channel offset for rehape must be 0 %lu\n", v29, v30, v31, v32);
        }

        if (a4[19].i64[0] && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNReshape.mm", 0x1B5, @"Destination feature channel offset for rehape must be 0 %lu\n", v29, v30, v31, v32);
        }
      }

      if (a4[19].i64[1])
      {
        return -20;
      }

      else
      {
        result = -20;
        if (!a4[19].i64[0] && v17 == v33)
        {
          v36 = objc_msgSend_maxBatchSize(a1, v26, v27, v28, v29, v30, v31, v32);
          *&v37 = -1;
          *(&v37 + 1) = -1;
          v175 = v37;
          v176 = v37;
          v173 = v37;
          v174 = v37;
          v38 = a4[8].i32[2] & 0x3F | ((a4[1].i32[0] & 0x3Fu) << 6);
          v171 = v36;
          v172 = v38;
          MPSLibrary::CreateUberShaderKey();
          PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
          if (PipelineStateForMPSKey)
          {
            v147 = v16;
            objc_msgSend_setComputePipelineState_(v143, v40, PipelineStateForMPSKey, v41, v42, v43, v44, v45, 0, 0, 0, 0, 0);
            MPSLibrary::ReleaseMPSKey();
            v53 = 16;
            if (v14 <= 0xF && v13 <= 0xF)
            {
              if (v14 <= v13)
              {
                v54 = v13;
              }

              else
              {
                v54 = v14;
              }

              v53 = ((v54 - 1) | ((v54 - 1) >> 1) | (((v54 - 1) | ((v54 - 1) >> 1)) >> 2)) + 1;
            }

            v141 = objc_msgSend_arrayLength(v144, v46, v47, v48, v49, v50, v51, v52);
            v169 = 0u;
            v170 = 0u;
            v167 = 0u;
            v168 = 0u;
            v55 = vmovn_s64(a4[14]);
            v55.i16[1] = v55.i16[2];
            v55.i16[2] = a4[19].i16[4];
            v56 = vmovn_s64(v145);
            v56.i16[1] = v56.i16[2];
            v56.i16[2] = a4[19].i16[0];
            v166[0] = v55;
            v166[1] = v56;
            v64 = objc_msgSend_arrayLength(v144, v57, v58, v59, v60, v61, v62, v63);
            LOWORD(v65) = v14;
            WORD1(v65) = v13;
            WORD2(v65) = v64;
            *&v167 = v65;
            v73 = objc_msgSend_width(v11, v66, v67, v68, v69, v70, v71, v72);
            LODWORD(v74) = v147;
            DWORD1(v74) = v73 * v147;
            DWORD2(v74) = v147;
            HIDWORD(v74) = v73 * v147;
            v168 = v74;
            v82 = objc_msgSend_width(v144, v75, v76, v77, v78, v79, v80, v81);
            LODWORD(v83) = v142;
            DWORD1(v83) = v82 * v142;
            DWORD2(v83) = v142;
            HIDWORD(v83) = v82 * v142;
            v169 = v83;
            *&v170 = 0;
            v84.i32[0] = a4[19].i32[0] >> 2;
            v84.i32[1] = a4[12].i32[0];
            v161[0] = vuzp1_s16(vmovn_s64(a4[11]), v84);
            v146 = *(a4 + 200);
            v92.i32[0] = objc_msgSend_arrayLength(v144, v85, v86, v87, v88, v89, v90, v91);
            v92.i32[1] = a4[13].i32[2];
            v161[1] = vuzp1_s16(vmovn_s64(v146), v92);
            v162 = v142;
            v163 = 65537;
            v164 = 1;
            memset(v165, 0, sizeof(v165));
            v151 = 0;
            v150 = 0;
            v93 = vmovn_s64(a4[14]);
            v153 = v93.i16[2];
            v152 = v93.i16[0];
            v154 = objc_msgSend_primaryStrideInPixelsX(a1, v94, v95, v96, v97, v98, v99, v100);
            v155 = objc_msgSend_primaryStrideInPixelsY(a1, v101, v102, v103, v104, v105, v106, v107);
            v156 = 0;
            v157 = a4[19].i64[1];
            v158 = v147;
            v159 = a4[15].i64[0];
            v160 = 1;
            objc_msgSend_setTexture_atIndex_(v143, v108, v11, v36, v109, v110, v111, v112);
            objc_msgSend_setBytes_length_atIndex_(v143, v113, &v150, 32, 1, v114, v115, v116);
            objc_msgSend_setTexture_atIndex_(v143, v117, v144, 0, v118, v119, v120, v121);
            objc_msgSend_setBytes_length_atIndex_(v143, v122, v161, 40, 0, v123, v124, v125);
            objc_msgSend_setBytes_length_atIndex_(v143, v126, v166, 80, 30, v127, v128, v129);
            Sampler = MPSDevice::GetSampler();
            objc_msgSend_setSamplerState_atIndex_(v143, v131, Sampler, 0, v132, v133, v134, v135);
            v149[0] = (v14 + v53 - 1) / v53;
            v149[1] = (v13 + v53 - 1) / v53;
            v149[2] = v141;
            v148[0] = v53;
            v148[1] = v53;
            v148[2] = 1;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v143, v136, v149, v148, v137, v138, v139, v140);
            return 0;
          }

          else
          {
            return -1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_239BAEF10(void *a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  v10 = *(a4 + 168);
  v11 = *(a4 + 176);
  v12 = *(a4 + 120);
  v13 = *(a4 + 128);
  v15 = *(a4 + 136);
  v14 = *(a4 + 144);
  v17 = *(a4 + 152);
  v16 = *(a4 + 160);
  memset(v90, 0, sizeof(v90));
  v18 = *(a1 + *MEMORY[0x277CD7350]);
  v88 = 0u;
  v89 = 0u;
  v19 = *(a1 + *MEMORY[0x277CD7370]);
  v20 = a1[34];
  v78[0] = v18;
  v78[1] = v19;
  v21 = *(a1 + *MEMORY[0x277CD7378]);
  v78[2] = v20;
  v78[3] = v21;
  v78[4] = 1;
  v78[5] = v12;
  v78[6] = v13;
  v78[7] = v15;
  v78[8] = v14;
  v78[9] = v17;
  v22 = *(a4 + 200);
  v78[10] = v16;
  v78[11] = v22;
  v78[12] = objc_msgSend_sourceFeatureChannelMaxCount(a1, a2, a3, a4, a5, a6, a7, a8);
  objc_msgSend_paddingSizeBefore(v9, v23, v24, v25, v26, v27, v28, v29);
  v78[13] = v77;
  objc_msgSend_paddingSizeAfter(v9, v30, v31, v32, v33, v34, v35, v36);
  v37 = *(a4 + 40);
  v78[16] = v9[41];
  v78[17] = v37;
  v79 = *(a4 + 16);
  v82 = 0x1000100000000;
  v39 = *(a4 + 184);
  v38 = *(a4 + 192);
  v78[14] = v76;
  v78[15] = v38;
  v81 = v11;
  v80 = v10;
  v84 = v11;
  v83 = v10;
  v85 = 0x1000100010001;
  v86 = *(a4 + 200);
  v87 = *(a4 + 24);
  LODWORD(v88) = v39;
  *(&v88 + 1) = *(a4 + 104);
  LODWORD(v89) = *(a4 + 80);
  LOWORD(v40) = v12;
  WORD1(v40) = v13;
  WORD2(v40) = (v38 + 3) >> 2;
  HIWORD(v40) = v15;
  v41 = *(a4 + 88);
  LOWORD(v42) = v14;
  WORD1(v42) = v17;
  WORD2(v42) = (v41 + 3) >> 2;
  HIWORD(v42) = v16;
  *(&v89 + 1) = v40;
  *&v90[0] = v42;
  WORD4(v90[0]) = v41;
  WORD5(v90[0]) = objc_msgSend_numberOfImages(*(a4 + 64), v43, v44, v45, v46, v47, v48, v49);
  *(v90 + 12) = 0x1000000000001uLL;
  objc_msgSend_fillValue(v9, v50, v51, v52, v53, v54, v55, v56);
  v91 = v57;
  LOWORD(v9) = objc_msgSend_width(*a4, v58, v59, v60, v61, v62, v63, v64);
  v72 = objc_msgSend_height(*a4, v65, v66, v67, v68, v69, v70, v71);
  v92 = v9;
  v93 = v72;
  sub_239BB0810(a2, a3, v78);
  return 0;
}

uint64_t sub_239BAF114(void *a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a1;
  v87 = 0;
  v88 = 0;
  v12 = *(a1 + *MEMORY[0x277CD7370]);
  v73[0] = *(a1 + *MEMORY[0x277CD7350]);
  v73[1] = v12;
  v13 = *(a1 + *MEMORY[0x277CD7378]);
  v73[2] = a1[34];
  v73[3] = v13;
  v73[4] = *(a4 + 8);
  v14 = *(a4 + 152);
  v74 = *(a4 + 136);
  v75 = v14;
  v76 = *(a4 + 168);
  v15 = *(a4 + 216);
  *&v86[12] = 0;
  v77 = v15;
  v78 = objc_msgSend_sourceFeatureChannelMaxCount(a1, a2, a3, a4, a5, a6, a7, a8);
  objc_msgSend_paddingSizeBefore(v11, v16, v17, v18, v19, v20, v21, v22);
  v79 = v72;
  objc_msgSend_paddingSizeAfter(v11, v23, v24, v25, v26, v27, v28, v29);
  v85 = *(a4 + 104);
  *v86 = *(a4 + 120);
  v30 = *(a4 + 64);
  v89 = *(a4 + 48);
  v31 = *(a4 + 208);
  v80 = v71;
  v81 = v31;
  v32 = *(a4 + 96);
  v82 = v11[41];
  v83 = v32;
  v84 = *(a4 + 88);
  v87 = *(a4 + 40);
  LODWORD(v88) = *(a4 + 32);
  v90 = v30;
  v91 = *(a4 + 80);
  objc_msgSend_fillValue(v11, v33, v34, v35, v36, v37, v38, v39);
  v92 = v40;
  v47 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 96), v41, 0, v42, v43, v44, v45, v46);
  LOWORD(v11) = objc_msgSend_width(v47, v48, v49, v50, v51, v52, v53, v54);
  v61 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 96), v55, 0, v56, v57, v58, v59, v60);
  v69 = objc_msgSend_height(v61, v62, v63, v64, v65, v66, v67, v68);
  v93 = v11;
  v94 = v69;
  sub_239BB0810(a2, a3, v73);
  return 0;
}

uint64_t sub_239BB00DC(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a4 + 256);
  v10 = *(a4 + 192);
  v94 = *(a4 + 200);
  v95 = *(a4 + 176);
  v11 = *(a4 + 216);
  if (*(a4 + 112))
  {
    v87 = *(a4 + 256);
    v12 = a1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = *(a4 + 112);
      v90 = *(v13 + 304);
      v91 = v13;
      v89 = *(v13 + 328);
    }

    else
    {
      v89 = 0;
      v90 = 0;
      v91 = 0;
    }

    a1 = v12;
    v9 = v87;
  }

  else
  {
    v89 = 0;
    v90 = 0;
    v91 = 0;
  }

  v81 = *(a1 + *MEMORY[0x277CD7350]);
  v88 = vmovn_s64(v9);
  v14 = a1[45];
  v15 = *(a1 + *MEMORY[0x277CD7378]);
  v80 = *(a4 + 312);
  v16 = objc_msgSend_primarySourceFeatureChannelMaxCount(a1, a2, a3, a4, a5, a6, a7, a8, *(a1 + *MEMORY[0x277CD7370]));
  v79 = *(a4 + 40);
  v78 = *(a4 + 16);
  v17 = *(a4 + 304);
  v83 = *(a4 + 312);
  v84 = *(a4 + 24);
  v85 = *(a4 + 240);
  v86 = *(a4 + 160);
  v18.i32[0] = (v17 + 3) >> 2;
  v18.i32[1] = v10;
  v82 = *(a4 + 136);
  v19 = vuzp1_s16(vmovn_s64(v95), v18);
  v20 = *(a4 + 144);
  v18.i32[0] = (v20 + 3) >> 2;
  v18.i32[1] = v11;
  v21 = vuzp1_s16(vmovn_s64(v94), v18);
  v29 = objc_msgSend_numberOfImages(*(a4 + 120), v22, v23, v24, v25, v26, v27, v28);
  v37 = objc_msgSend_width(*(a4 + 56), v30, v31, v32, v33, v34, v35, v36);
  v45 = objc_msgSend_height(*(a4 + 56), v38, v39, v40, v41, v42, v43, v44);
  v96[0] = v81;
  v96[1] = v77;
  v96[2] = v14;
  v96[3] = v15;
  v96[4] = 1;
  v97 = v95;
  v98 = v10;
  v99 = v94;
  v100 = v11;
  v101 = v80;
  v102 = v16;
  v103 = v90;
  v104 = v89;
  v105 = v17;
  v106 = 0;
  v107 = v79;
  v108 = v78;
  v110 = v88.i16[2];
  v109 = v88.i16[0];
  v111 = 0x1000100000000;
  v113 = v88.i16[2];
  v112 = v88.i16[0];
  v114 = 0x1000100010001;
  v115 = v83;
  v116 = v84;
  v117 = v85;
  v118 = 0;
  v119 = 0;
  v120 = v86;
  v121 = v82;
  v122 = 0;
  v123 = v19;
  v124 = v21;
  v125 = v20;
  v126 = v29;
  v127 = 0x1000000000001;
  v129 = 0;
  v128 = 0;
  v131 = v45;
  v130 = v37;
  v132 = v91;
  LOWORD(v16) = objc_msgSend_width(*(a4 + 120), v46, v47, v48, v49, v50, v51, v52);
  v60 = objc_msgSend_height(*(a4 + 120), v53, v54, v55, v56, v57, v58, v59);
  v133 = v16;
  v134 = v60;
  LOWORD(v16) = objc_msgSend_width(*a4, v61, v62, v63, v64, v65, v66, v67);
  v75 = objc_msgSend_height(*a4, v68, v69, v70, v71, v72, v73, v74);
  v135 = v16;
  v136 = v75;
  sub_239BB161C(a2, a3, v96);
  return 0;
}

uint64_t sub_239BB03CC(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a4 + 200);
  v148 = *(a4 + 184);
  v149 = v9;
  v150 = *(a4 + 216);
  if (*(*(a4 + 24) + 168))
  {
    v10 = a1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = *(*(a4 + 24) + 168);
      v114 = v11;
      v112 = *(v11 + 304);
      v113 = *(v11 + 328);
    }

    else
    {
      v113 = 0;
      v114 = 0;
      v112 = 0;
    }

    a1 = v10;
  }

  else
  {
    v113 = 0;
    v114 = 0;
    v112 = 0;
  }

  v12 = objc_msgSend_primarySourceFeatureChannelMaxCount(a1, a2, a3, a4, a5, a6, a7, a8, *(a4 + 288), *(a4 + 8), *(a1 + *MEMORY[0x277CD7378]), a1[45], *(a1 + *MEMORY[0x277CD7370]), *(a1 + *MEMORY[0x277CD7350]));
  v13 = *(a4 + 120);
  v146 = *(a4 + 104);
  v147 = v13;
  v14 = *(a4 + 64);
  v135 = *(a4 + 48);
  v15 = *(a4 + 280);
  v16 = *(a4 + 96);
  v17 = *(a4 + 88);
  v18 = *(a4 + 40);
  v19 = *(a4 + 32);
  v136 = v14;
  v137 = *(a4 + 80);
  v26 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 144), v20, 0, v21, v22, v23, v24, v25);
  v34 = objc_msgSend_width(v26, v27, v28, v29, v30, v31, v32, v33);
  v41 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 144), v35, 0, v36, v37, v38, v39, v40);
  v118 = v148;
  v119 = v149;
  v120 = v150;
  v130 = v147;
  v117[0] = v111;
  v117[1] = v110;
  v117[2] = v109;
  v117[3] = v108;
  v117[4] = v107;
  v121 = v106;
  v122 = v12;
  v123 = v112;
  v124 = v113;
  v125 = v15;
  v126 = 0;
  v127 = v16;
  v129 = v146;
  v128 = v17;
  v131 = 0;
  v132 = v18;
  v133 = v19;
  v134 = 0;
  v138 = 0;
  v140 = objc_msgSend_height(v41, v42, v43, v44, v45, v46, v47, v48);
  v139 = v34;
  v141 = v114;
  v55 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 40), v49, 0, v50, v51, v52, v53, v54);
  LOWORD(v12) = objc_msgSend_width(v55, v56, v57, v58, v59, v60, v61, v62);
  v69 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 40), v63, 0, v64, v65, v66, v67, v68);
  v142 = v12;
  v143 = objc_msgSend_height(v69, v70, v71, v72, v73, v74, v75, v76);
  v83 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 96), v77, 0, v78, v79, v80, v81, v82);
  LOWORD(v12) = objc_msgSend_width(v83, v84, v85, v86, v87, v88, v89, v90);
  v97 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 96), v91, 0, v92, v93, v94, v95, v96);
  v144 = v12;
  v145 = objc_msgSend_height(v97, v98, v99, v100, v101, v102, v103, v104);
  sub_239BB161C(a2, a3, v117);
  return 0;
}

void sub_239BB0810(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v189 = *MEMORY[0x277D85DE8];
  v6 = a3[2];
  v7 = v6 == 2;
  if (v6 == 1)
  {
    v7 = 0;
  }

  if (v6 <= 2)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = v6 == 3;
  }

  v9 = a3[8];
  if (v9)
  {
    v10 = a3[9];
    if (v10)
    {
      v157 = a3[16];
      v11 = *(a3 + 113);
      v12 = *(a3 + 87);
      v13 = a3[11];
      if (v13 >= v12)
      {
        v13 = *(a3 + 87);
      }

      v14 = v12 - v13;
      if (v14 >= a3[12])
      {
        v15 = a3[12];
      }

      else
      {
        v15 = v14;
      }

      v16 = a3[14] + a3[13] + v15;
      if ((a3[3] & 1) == 0 && v16 > *(a3 + 108))
      {
        v155 = v8;
        v151 = v7;
        v146 = v15;
        v148 = v13;
        v134 = MTLReportFailureTypeEnabled();
        LODWORD(v15) = v146;
        LODWORD(v13) = v148;
        v7 = v151;
        v8 = v155;
        v4 = a2;
        if (v134)
        {
          MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNReshape.mm", 0x5EC, @"[MPSNNPad encode] Error: Number of feature channels in result (%d) not large enough (needed %lu).", v135, v136, v137, v138);
          LODWORD(v15) = v146;
          LODWORD(v13) = v148;
          v7 = v151;
          v8 = v155;
          v4 = a2;
        }
      }

      if (v16 >= *(a3 + 108))
      {
        v16 = *(a3 + 108);
      }

      if (v16)
      {
        v149 = v7;
        v152 = v8;
        v141 = (v16 + 3) >> 2;
        v147 = v13;
        v17 = v15;
        v172 = -1;
        *&v18 = -1;
        *(&v18 + 1) = -1;
        v171 = v18;
        v170 = v18;
        v169 = v18;
        v168 = v18;
        v167[1] = v11;
        v19 = v4;
        MPSLibrary::CreateUberShaderKey();
        v139 = v19;
        PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
        v21.i16[0] = v9;
        v21.i16[1] = v10;
        v21.i16[2] = (v16 + 3) >> 2;
        v21.i16[3] = *(a3 + 16);
        v144 = v21;
        v29 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v22, v23, v24, v25, v26, v27, v28, 0, 0, 0, 0, 0);
        if (v29 >= 0x100)
        {
          v35 = 256;
        }

        else
        {
          v35 = v29;
        }

        v167[0] = 0;
        sub_239BB1200(*(*a3 + 16), v35, v167, v144, v30, v31, v32, v33, v34);
        v42 = WORD2(v167[0]);
        v142 = v167[0];
        v143 = *&v44;
        v43 = HIWORD(v167[0]);
        v145 = WORD2(v44);
        *(a3 + 111) = LOWORD(v44) * WORD1(v44) * WORD2(v44);
        LODWORD(v44) = *(a3 + 60);
        v162 = LODWORD(v44);
        v163 = v147;
        v164 = v17;
        if (v16 >= 5)
        {
          v46 = __clz(0x80000000 / v141);
          v47 = (0x80000000 / v141) >> (16 - v46);
          v48 = v46 + 15;
          v49 = -65536 * v141 * v47 / v141;
          if (v49 <= v47)
          {
            v50 = v47;
          }

          else
          {
            v50 = v47 + 1;
          }

          if (v49 <= v47)
          {
            LOWORD(v47) = 0;
          }

          v45 = (v48 << 48) | ((v49 - v47) << 32) | (v50 << 16) | v141;
        }

        else
        {
          v45 = 65537;
        }

        v51 = v42 * v43;
        v161 = v45;
        v166 = 0;
        v165 = 0;
        if (!v149 && !v152)
        {
          goto LABEL_37;
        }

        LODWORD(v44) = *(a3 + 122);
        HIDWORD(v44) = *(a3 + 123);
        if (v149)
        {
          v52 = vcgt_u32(*&v44, 0x100000001);
          v53 = vadd_s32(*&v44, *&v44);
          v54 = 2 * v17 - 2;
          if (v17 <= 1)
          {
            v54 = 1;
          }

          v55 = vadd_s32(v53, 0x100000001);
          v56.i64[0] = v55.i32[0];
          v56.i64[1] = v55.i32[1];
          __asm { FMOV            V2.2D, #1.0 }

          v62 = vdivq_f64(_Q2, vcvtq_f64_s64(v56));
          __asm { FMOV            V2.2S, #1.0 }

          v166 = vbsl_s8(v52, vcvt_f32_f64(v62), *&_Q2.f64[0]);
        }

        else
        {
          if (!v152)
          {
LABEL_37:
            objc_msgSend_setComputePipelineState_(a1, v36, PipelineStateForMPSKey, v37, v38, v39, v40, v41, v44);
            v73 = a3[17];
            if ((a3[18] & 2) == 0)
            {
              objc_msgSend_setTexture_atIndex_(a1, v66, a3[17], v11, v69, v70, v71, v72);
LABEL_57:
              v84 = v51;
              v150 = vmovl_u16(v142).u64[0];
              v154 = vmovl_u16(v143).u64[0];
              objc_msgSend_setBytes_length_atIndex_(a1, v74, a3 + 148, 32, 1, v75, v76, v77);
              Sampler = MPSDevice::GetSampler();
              objc_msgSend_setSamplerState_atIndex_(a1, v86, Sampler, 1, v87, v88, v89, v90);
              v98 = a3[23];
              if ((a3[24] & 2) == 0)
              {
                objc_msgSend_setTexture_atIndex_(a1, v91, a3[23], 0, v94, v95, v96, v97);
LABEL_77:
                objc_msgSend_setBytes_length_atIndex_(a1, v99, (a3 + 25), 40, 0, v100, v101, v102);
                objc_msgSend_setBytes_length_atIndex_(a1, v109, &v161, 32, 30, v110, v111, v112);
                objc_msgSend_setBuffer_offset_atIndex_(a1, v113, v157, 0, 29, v114, v115, v116);
                if (v157)
                {
                  if ((objc_msgSend_retainedReferences(v139, v117, v118, v119, v120, v121, v122, v123) & 1) == 0)
                  {
                    v124 = v157;
                    v160[0] = MEMORY[0x277D85DD0];
                    v160[1] = 3221225472;
                    v160[2] = sub_239BB1614;
                    v160[3] = &unk_278B28F28;
                    v160[4] = v157;
                    objc_msgSend_addCompletedHandler_(v139, v125, v160, v126, v127, v128, v129, v130);
                  }
                }

                v131 = vand_s8(v150, 0xFFFF0000FFFFLL);
                *&v132 = v131.u32[0];
                *(&v132 + 1) = v131.u32[1];
                v173 = v132;
                *&v174 = v84;
                v133 = vand_s8(v154, 0xFFFF0000FFFFLL);
                *&v132 = v133.u32[0];
                *(&v132 + 1) = v133.u32[1];
                v158 = v132;
                v159 = v145;
                objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a1, v117, &v173, &v158, v120, v121, v122, v123);
                MPSLibrary::ReleaseMPSKey();
                return;
              }

              v156 = v51;
              v103 = objc_msgSend_count(v98, v91, v92, v93, v94, v95, v96, v97);
              v187 = 0u;
              v188 = 0u;
              v185 = 0u;
              v186 = 0u;
              v183 = 0u;
              v184 = 0u;
              v181 = 0u;
              v182 = 0u;
              v179 = 0u;
              v180 = 0u;
              v177 = 0u;
              v178 = 0u;
              v175 = 0u;
              v176 = 0u;
              v173 = 0u;
              v174 = 0u;
              if (!v11)
              {
LABEL_76:
                v84 = v156;
                goto LABEL_77;
              }

              v104 = v103;
              v105 = 0;
              while (1)
              {
                if (v104 <= v105)
                {
                  v106 = 0;
                  if (v11 - v105 >= 0x20)
                  {
                    v107 = 32;
                  }

                  else
                  {
                    v107 = v11 - v105;
                  }

                  v108 = v107;
                  if (!v107)
                  {
                    goto LABEL_61;
                  }
                }

                else
                {
                  if (v104 - v105 >= 0x20)
                  {
                    v106 = 32;
                    objc_msgSend_getObjects_range_(v98, v99, &v173, v105, 32, v100, v101, v102);
                  }

                  else
                  {
                    v106 = v104 - v105;
                    objc_msgSend_getObjects_range_(v98, v99, &v173, v105, v104 - v105, v100, v101, v102);
                  }

                  if (v11 - v105 >= 0x20)
                  {
                    v107 = 32;
                  }

                  else
                  {
                    v107 = v11 - v105;
                  }

                  v108 = v107 - v106;
                  if (v107 == v106)
                  {
                    goto LABEL_61;
                  }
                }

                bzero(&v173 + 8 * v106, 8 * v108);
LABEL_61:
                objc_msgSend_setTextures_withRange_(a1, v99, &v173, v105, v107, v100, v101, v102);
                v105 += v107;
                if (v105 >= v11)
                {
                  goto LABEL_76;
                }
              }
            }

            v153 = v51;
            v78 = objc_msgSend_count(v73, v66, v67, v68, v69, v70, v71, v72);
            v187 = 0u;
            v188 = 0u;
            v185 = 0u;
            v186 = 0u;
            v183 = 0u;
            v184 = 0u;
            v181 = 0u;
            v182 = 0u;
            v179 = 0u;
            v180 = 0u;
            v177 = 0u;
            v178 = 0u;
            v175 = 0u;
            v176 = 0u;
            v173 = 0u;
            v174 = 0u;
            if (!v11)
            {
LABEL_56:
              v51 = v153;
              goto LABEL_57;
            }

            v79 = v78;
            v80 = 0;
            while (1)
            {
              if (v79 <= v80)
              {
                v81 = 0;
                if (v11 - v80 >= 0x20)
                {
                  v82 = 32;
                }

                else
                {
                  v82 = v11 - v80;
                }

                v83 = v82;
                if (!v82)
                {
                  goto LABEL_41;
                }
              }

              else
              {
                if (v79 - v80 >= 0x20)
                {
                  v81 = 32;
                  objc_msgSend_getObjects_range_(v73, v74, &v173, v80, 32, v75, v76, v77);
                }

                else
                {
                  v81 = v79 - v80;
                  objc_msgSend_getObjects_range_(v73, v74, &v173, v80, v79 - v80, v75, v76, v77);
                }

                if (v11 - v80 >= 0x20)
                {
                  v82 = 32;
                }

                else
                {
                  v82 = v11 - v80;
                }

                v83 = v82 - v81;
                if (v82 == v81)
                {
                  goto LABEL_41;
                }
              }

              bzero(&v173 + 8 * v81, 8 * v83);
LABEL_41:
              objc_msgSend_setTextures_withRange_(a1, v74, &v173, v80 + v11, v82, v75, v76, v77);
              v80 += v82;
              if (v80 >= v11)
              {
                goto LABEL_56;
              }
            }
          }

          v63 = vadd_s32(*&v44, *&v44);
          v64.i64[0] = v63.u32[0];
          v64.i64[1] = v63.u32[1];
          __asm { FMOV            V1.2D, #1.0 }

          v166 = vcvt_f32_f64(vdivq_f64(_Q1, vcvtq_f64_u64(v64)));
          v54 = 2 * v17;
        }

        v44 = 1.0 / v54;
        *&v44 = v44;
        v165 = LODWORD(v44);
        goto LABEL_37;
      }
    }
  }
}

uint64_t sub_239BB0FEC(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = MPSCreateFunctionConstantValues();
  v8 = a2[8];
  v9 = *a3;
  v73 = (v8 >> 18) & 0xFC0 | (v8 >> 30) & 0x3F;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v10, &v73, 33, 126, v11, v12, v13);
  if (v9 != -1)
  {
    v73 = v9;
    objc_msgSend_setConstantValue_type_atIndex_(v7, v14, &v73, 33, 125, v15, v16, v17);
  }

  v73 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v14, &v73, 33, 123, v15, v16, v17);
  v73 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v18, &v73, 33, 119, v19, v20, v21);
  v73 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v22, &v73, 33, 118, v23, v24, v25);
  v73 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v26, &v73, 33, 122, v27, v28, v29);
  v73 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v30, &v73, 33, 121, v31, v32, v33);
  v73 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v34, &v73, 33, 117, v35, v36, v37);
  v73 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v38, &v73, 33, 116, v39, v40, v41);
  LOWORD(v73) = BYTE2(v8);
  objc_msgSend_setConstantValue_type_atIndex_(v7, v42, &v73, 41, 2, v43, v44, v45);
  v72 = (v8 & 0x2000000000) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v46, &v72, 53, 3, v47, v48, v49);
  v71 = (v8 & 0x4000000000) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v50, &v71, 53, 4, v51, v52, v53);
  v70 = (v8 & 0x1000000000) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v54, &v70, 53, 5, v55, v56, v57);
  v69 = v8;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v58, &v69, 41, 6, v59, v60, v61);
  v68 = (v8 & 0x8000000000) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v62, &v68, 53, 7, v63, v64, v65);
  v66 = _MPSNewSpecializedFunction();

  return v66;
}

uint64_t sub_239BB1200(void *a1, unint64_t a2, void *a3, uint16x4_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = vmax_u16(a4, 0x1000100010001);
  v36 = v12;
  if (a1)
  {
    objc_msgSend_maxThreadsPerThreadgroup(a1, a2, a3, a5, a6, a7, a8, a9);
    v12 = v36;
  }

  v13 = v12.u16[0];
  v14 = v12.u16[1];
  v15 = v12.u16[2];
  if (v12.u16[0] * v12.u16[1] * v12.u16[2] <= a2 && v12.u16[0] == 0 && v12.u16[1] == 0 && v12.u16[2] == 0)
  {
    v19 = v12;
    v20 = v12.u16[2];
    v21 = v12.u16[1];
    v22 = v12.u16[0];
  }

  else
  {
    if (a1)
    {
      objc_msgSend_maxThreadsPerThreadgroup(a1, a2, a3, a5, a6, a7, a8, a9);
      v12.i16[3] = v36.i16[3];
    }

    v23 = (64 - __clz(a2)) >> 1;
    v24 = 0;
    if (v23 < 0x8000000000000000)
    {
      v24 = v23;
    }

    if (a2 >> v24)
    {
      LOWORD(v25) = 0;
    }

    else
    {
      v25 = a2 >> v24;
    }

    v19.i16[2] = 1;
    v19.i16[0] = v25;
    v22 = 0;
    v21 = 0;
    v20 = 0;
    v19.i16[1] = 1 << v24;
  }

  if (v19.i16[0])
  {
    v26 = (v13 + v19.u16[0] - 1) / v19.u16[0];
    LOWORD(v27) = v26;
    v28 = v19.u16[1];
    if (v19.i16[1])
    {
      goto LABEL_24;
    }
  }

  else
  {
    LOWORD(v26) = 0;
    LOWORD(v27) = 0;
    v28 = v19.u16[1];
    if (v19.i16[1])
    {
LABEL_24:
      v29 = (v14 + v28 - 1) / v28;
      WORD1(v27) = v29;
      v30 = v19.u16[2];
      if (v19.i16[2])
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    }
  }

  LOWORD(v29) = 0;
  WORD1(v27) = 0;
  v30 = v19.u16[2];
  if (v19.i16[2])
  {
LABEL_25:
    v31 = (v15 + v30 - 1) / v30;
    WORD2(v27) = v31;
    if (v22)
    {
      goto LABEL_26;
    }

LABEL_31:
    LOWORD(v32) = 0;
    HIWORD(v27) = v12.i16[3];
    if (v21)
    {
      goto LABEL_27;
    }

    goto LABEL_32;
  }

LABEL_30:
  LOWORD(v31) = 0;
  WORD2(v27) = 0;
  if (!v22)
  {
    goto LABEL_31;
  }

LABEL_26:
  v32 = (v13 + v22 - 1) / v22;
  HIWORD(v27) = v12.i16[3];
  if (v21)
  {
LABEL_27:
    v33 = (v14 + v21 - 1) / v21;
    goto LABEL_33;
  }

LABEL_32:
  LOWORD(v33) = 0;
LABEL_33:
  v34 = (v15 + v20 - 1) / v20;
  result = v34;
  if (v33 * v32 * v34 < v29 * v26 * v31)
  {
    LOWORD(v27) = v32;
    WORD1(v27) = v33;
    WORD2(v27) = v34;
    HIWORD(v27) = v12.i16[3];
  }

  if (a3)
  {
    *a3 = v27;
  }

  return result;
}

void sub_239BB161C(void *result, uint64_t a2, void *a3)
{
  v189 = *MEMORY[0x277D85DE8];
  v3 = a3[2];
  v4 = v3 != 3 && v3 == 2;
  v5 = v3 == 3;
  v7 = a3[8];
  v6 = a3[9];
  if (v7)
  {
    _ZF = v6 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (!_ZF)
  {
    v11 = a3[31];
    v12 = *(a3 + 87);
    v13 = a3[11] >= v12 ? *(a3 + 87) : a3[11];
    v14 = v12 - v13;
    if (v14 >= a3[12])
    {
      v15 = a3[12];
    }

    else
    {
      LODWORD(v15) = v14;
    }

    if (v11)
    {
      v16 = v11[42];
      v17 = v11[20];
      v19 = (a3 + 27);
      v18 = *(a3 + 108);
      v20 = v11[34];
      v21 = *(a3 + 108);
    }

    else
    {
      v17 = 0;
      v19 = (a3 + 27);
      v18 = *(a3 + 108);
      v16 = -1;
      v21 = *(a3 + 108);
      v20 = v18;
    }

    v22 = v17 >= v20 ? v20 : v17;
    v23 = v20 - v22 >= v16 ? v16 : v20 - v22;
    v24 = a3[15];
    _CF = v20 >= v24;
    v26 = v20 - v24;
    v27 = _CF ? v26 : 0;
    if (v26 != 0 && _CF)
    {
      v28 = *(a3 + 113);
      if ((a3[3] & 1) == 0 && v27 > v18)
      {
        v146 = v15;
        v136 = v5;
        v152 = v4;
        v149 = v13;
        v140 = v22;
        v143 = v23;
        v130 = MTLReportFailureTypeEnabled();
        LODWORD(v22) = v140;
        v23 = v143;
        LODWORD(v15) = v146;
        LODWORD(v13) = v149;
        v4 = v152;
        v5 = v136;
        v21 = *v19;
        if (v130)
        {
          MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNReshape.mm", 0x7AF, @"[MPSNNPad encode] Error: Number of feature channels in result (%d) not large enough (needed %lu).", v131, v132, v133, v134);
          LODWORD(v22) = v140;
          v23 = v143;
          LODWORD(v15) = v146;
          LODWORD(v13) = v149;
          v4 = v152;
          v5 = v136;
          v21 = *v19;
        }
      }

      v29 = v27 >= v21 ? v21 : v27;
      if (v29)
      {
        v135 = v5;
        v137 = (v29 + 3) >> 2;
        v138 = v29;
        v147 = v13;
        v172 = -1;
        *&v30 = -1;
        *(&v30 + 1) = -1;
        v171 = v30;
        v170 = v30;
        v169 = v30;
        v168 = v30;
        v167[1] = v28;
        v31 = v23;
        v32 = v22;
        v150 = v4;
        v144 = v15;
        MPSLibrary::CreateUberShaderKey();
        PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
        v34.i16[0] = v7;
        v34.i16[1] = v6;
        v34.i16[2] = v137;
        v34.i16[3] = *(a3 + 16);
        v141 = v34;
        v42 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v35, v36, v37, v38, v39, v40, v41, 0, 0, 0, 0, 0);
        if (v42 >= 0x100)
        {
          v48 = 256;
        }

        else
        {
          v48 = v42;
        }

        v167[0] = 0;
        sub_239BB1200(*(*a3 + 16), v48, v167, v141, v43, v44, v45, v46, v47);
        v56 = v167[0];
        v57 = WORD2(v167[0]) * HIWORD(v167[0]);
        v139 = v59;
        v142 = v58;
        *(a3 + 111) = v55 * v58 * v59;
        v157 = v32;
        v158 = v31;
        v159 = v20;
        v60.i32[0] = *(a3 + 80);
        v60.i32[1] = *(a3 + 81);
        v61 = a3[14];
        v161 = a3[13];
        v62.i32[0] = *(a3 + 130);
        v62.i32[1] = *(a3 + 131);
        v63.i32[0] = *(a3 + 128);
        v63.i32[1] = *(a3 + 129);
        v160 = vcvt_f32_s32(v60);
        v162 = vsub_f32(vsub_f32(vcvt_f32_u32(v62), vcvt_f32_u32(v63)), v160);
        v163 = v61;
        v64.i32[0] = *(a3 + 122);
        v64.i32[1] = *(a3 + 123);
        v164 = vcvt_f32_u32(v64);
        v155 = v147;
        v156 = v144;
        v166 = 0;
        v165 = 0.0;
        if (v150)
        {
          v65 = vcgt_u32(v64, 0x100000001);
          v66 = 2 * v31 - 2;
          if (v31 <= 1)
          {
            v66 = 1;
          }

          __asm { FMOV            V4.2S, #1.0 }

          v166 = vbsl_s8(v65, vcvt_f32_u32(vadd_s32(vadd_s32(v64, v64), 0x100000001)), _D4);
          v70 = v138;
        }

        else
        {
          v70 = v138;
          if (!v135)
          {
LABEL_44:
            if (v70 >= 5)
            {
              v72 = __clz(0x80000000 / v137);
              v73 = (0x80000000 / v137) >> (16 - v72);
              v74 = v72 + 15;
              v75 = -65536 * v137 * v73 / v137;
              if (v75 <= v73)
              {
                v76 = v73;
              }

              else
              {
                v76 = v73 + 1;
              }

              if (v75 <= v73)
              {
                LOWORD(v73) = 0;
              }

              v71 = (v74 << 48) | ((v75 - v73) << 32) | (v76 << 16) | v137;
            }

            else
            {
              v71 = 65537;
            }

            v145 = vmovl_u16(v56).u64[0];
            v148 = v55;
            v151 = v57;
            v154 = v71;
            objc_msgSend_setComputePipelineState_(result, v49, PipelineStateForMPSKey, v50, v51, v52, v53, v54);
            v84 = a3[17];
            if ((a3[18] & 2) == 0)
            {
              objc_msgSend_setTexture_atIndex_(result, v77, a3[17], v28, v80, v81, v82, v83);
LABEL_71:
              objc_msgSend_setBytes_length_atIndex_(result, v85, a3 + 148, 32, 1, v86, v87, v88);
              Sampler = MPSDevice::GetSampler();
              objc_msgSend_setSamplerState_atIndex_(result, v96, Sampler, 1, v97, v98, v99, v100);
              v108 = a3[23];
              if ((a3[24] & 2) == 0)
              {
                objc_msgSend_setTexture_atIndex_(result, v101, a3[23], 0, v104, v105, v106, v107);
LABEL_90:
                objc_msgSend_setBytes_length_atIndex_(result, v109, (a3 + 25), 40, 0, v110, v111, v112);
                objc_msgSend_setBytes_length_atIndex_(result, v119, &v154, 72, 30, v120, v121, v122);
                v123 = vand_s8(v145, 0xFFFF0000FFFFLL);
                *&v124 = v123.u32[0];
                *(&v124 + 1) = v123.u32[1];
                v173 = v124;
                *&v174 = v151;
                v153[0] = v148;
                v153[1] = v142;
                v153[2] = v139;
                objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(result, v125, &v173, v153, v126, v127, v128, v129);
                MPSLibrary::ReleaseMPSKey();
                return;
              }

              v113 = objc_msgSend_count(a3[23], v101, v102, v103, v104, v105, v106, v107);
              v187 = 0u;
              v188 = 0u;
              v185 = 0u;
              v186 = 0u;
              v183 = 0u;
              v184 = 0u;
              v181 = 0u;
              v182 = 0u;
              v179 = 0u;
              v180 = 0u;
              v177 = 0u;
              v178 = 0u;
              v175 = 0u;
              v176 = 0u;
              v173 = 0u;
              v174 = 0u;
              if (!v28)
              {
                goto LABEL_90;
              }

              v114 = v113;
              v115 = 0;
              while (1)
              {
                if (v114 <= v115)
                {
                  v116 = 0;
                  if (v28 - v115 >= 0x20)
                  {
                    v117 = 32;
                  }

                  else
                  {
                    v117 = v28 - v115;
                  }

                  v118 = v117;
                  if (!v117)
                  {
                    goto LABEL_75;
                  }
                }

                else
                {
                  if (v114 - v115 >= 0x20)
                  {
                    v116 = 32;
                    objc_msgSend_getObjects_range_(v108, v109, &v173, v115, 32, v110, v111, v112);
                  }

                  else
                  {
                    v116 = v114 - v115;
                    objc_msgSend_getObjects_range_(v108, v109, &v173, v115, v114 - v115, v110, v111, v112);
                  }

                  if (v28 - v115 >= 0x20)
                  {
                    v117 = 32;
                  }

                  else
                  {
                    v117 = v28 - v115;
                  }

                  v118 = v117 - v116;
                  if (v117 == v116)
                  {
                    goto LABEL_75;
                  }
                }

                bzero(&v173 + 8 * v116, 8 * v118);
LABEL_75:
                objc_msgSend_setTextures_withRange_(result, v109, &v173, v115, v117, v110, v111, v112);
                v115 += v117;
                if (v115 >= v28)
                {
                  goto LABEL_90;
                }
              }
            }

            v89 = objc_msgSend_count(a3[17], v77, v78, v79, v80, v81, v82, v83);
            v187 = 0u;
            v188 = 0u;
            v185 = 0u;
            v186 = 0u;
            v183 = 0u;
            v184 = 0u;
            v181 = 0u;
            v182 = 0u;
            v179 = 0u;
            v180 = 0u;
            v177 = 0u;
            v178 = 0u;
            v175 = 0u;
            v176 = 0u;
            v173 = 0u;
            v174 = 0u;
            if (!v28)
            {
              goto LABEL_71;
            }

            v90 = v89;
            v91 = 0;
            while (1)
            {
              if (v90 <= v91)
              {
                v92 = 0;
                if (v28 - v91 >= 0x20)
                {
                  v93 = 32;
                }

                else
                {
                  v93 = v28 - v91;
                }

                v94 = v93;
                if (!v93)
                {
                  goto LABEL_56;
                }
              }

              else
              {
                if (v90 - v91 >= 0x20)
                {
                  v92 = 32;
                  objc_msgSend_getObjects_range_(v84, v85, &v173, v91, 32, v86, v87, v88);
                }

                else
                {
                  v92 = v90 - v91;
                  objc_msgSend_getObjects_range_(v84, v85, &v173, v91, v90 - v91, v86, v87, v88);
                }

                if (v28 - v91 >= 0x20)
                {
                  v93 = 32;
                }

                else
                {
                  v93 = v28 - v91;
                }

                v94 = v93 - v92;
                if (v93 == v92)
                {
                  goto LABEL_56;
                }
              }

              bzero(&v173 + 8 * v92, 8 * v94);
LABEL_56:
              objc_msgSend_setTextures_withRange_(result, v85, &v173, v91 + v28, v93, v86, v87, v88);
              v91 += v93;
              if (v91 >= v28)
              {
                goto LABEL_71;
              }
            }
          }

          v166 = vcvt_f32_u32(vadd_s32(v64, v64));
          v66 = 2 * v31;
        }

        v165 = v66;
        goto LABEL_44;
      }
    }
  }
}

uint64_t sub_239BB2DF4(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v12 = a1 + 54;
  v13 = a1[54];
  v14 = v12[1];
  if (a5)
  {
    v15 = *(*(a5 + 24) + 168);
    if (!v15)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = *(a4 + 112);
  if (v15)
  {
LABEL_3:
    v16 = v15 + 72;
    v13 = *(v16 + 24);
    v14 = *(v16 + 32);
  }

LABEL_4:
  v17 = a1[30];
  v488 = a1[31];
  v482 = a1[38];
  v18 = *(a1 + *MEMORY[0x277CD7378]);
  v490 = a1[39];
  v470 = *(a1 + *MEMORY[0x277CD7350]);
  v471 = v13;
  v494 = a1[34];
  v486 = a1[35];
  v496 = a6;
  if (a6 == 1)
  {
    v480 = objc_msgSend_zeroPadSizeX(a1, a2, a3, a4, a5, a6, a7, a8);
    v26 = objc_msgSend_zeroPadSizeY(a1, v19, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    v26 = 0;
    v480 = 0;
  }

  v27 = (v8 + 232);
  if (!v8)
  {
    v27 = (a4 + 224);
  }

  v28 = (v8 + 256);
  if (!v8)
  {
    v28 = (a4 + 280);
  }

  v493 = a3;
  v478 = v26;
  if (v8)
  {
    v29 = *(v8 + 130);
    v30 = *(v8 + 64);
  }

  else
  {
    v29 = *(a4 + 24);
    v30 = *(a4 + 144);
  }

  v485 = a1[45];
  v473 = *v28;
  v475 = *v27;
  v31 = (v8 + 280);
  if (!v8)
  {
    v31 = (a4 + 304);
  }

  v32 = *v31;
  if ((v18 & 1) == 0)
  {
    if (v30 < v32 + v29 && MTLReportFailureTypeEnabled())
    {
      v457 = objc_opt_class();
      v467 = NSStringFromClass(v457);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNPoolingGradient.mm", 0x24A, @"[%@ encode...] Destination feature channel offset too large!", v458, v459, v460, v461);
    }

    if ((v32 & 3) != 0 && MTLReportFailureTypeEnabled())
    {
      v462 = objc_opt_class();
      v467 = NSStringFromClass(v462);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNPoolingGradient.mm", 0x24D, @"[%@ encode...] Destination feature channel offset Not multiple of 4!", v463, v464, v465, v466);
    }
  }

  v33 = (v29 + 3) >> 2;
  v498 = v8;
  v476 = v32;
  if (!v8)
  {
    v468 = v17;
    v42 = objc_msgSend_width(*a4, a2, a3, a4, a5, a6, a7, a8);
    v57 = objc_msgSend_height(*a4, v97, v98, v99, v100, v101, v102, v103);
    v72 = objc_msgSend_width(*(a4 + 56), v104, v105, v106, v107, v108, v109, v110);
    v8 = objc_msgSend_height(*(a4 + 56), v111, v112, v113, v114, v115, v116, v117);
    v94 = *(a4 + 160);
    v95 = *(a4 + 304);
    v96 = *(a4 + 32);
    if (v95)
    {
      goto LABEL_28;
    }

LABEL_26:
    if (v96 == *(a4 + 152))
    {
      v472 = v94;
      v118 = v94;
      v119 = v496;
      v120 = v488;
LABEL_31:
      v17 = v468;
      goto LABEL_33;
    }

LABEL_28:
    v121 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v94, v87, **(a4 + 128) & 0x3FFLL, v96, 0, 1, (v95 + 3) >> 2, v33, v467);
    v472 = v121;
    if ((objc_msgSend_retainedReferences(v493, v122, v123, v124, v125, v126, v127, v128) & 1) == 0)
    {
      v129 = v121;
      v512[0] = MEMORY[0x277D85DD0];
      v512[1] = 3221225472;
      v512[2] = sub_239BB3F1C;
      v512[3] = &unk_278B28F28;
      v512[4] = v121;
      objc_msgSend_addCompletedHandler_(v493, v130, v512, v131, v132, v133, v134, v135);
    }

    v119 = v496;
    v120 = v488;
    goto LABEL_31;
  }

  v34 = objc_msgSend_objectAtIndexedSubscript_(*(v8 + 96), a2, 0, a4, a5, a6, a7, a8);
  v42 = objc_msgSend_width(v34, v35, v36, v37, v38, v39, v40, v41);
  v49 = objc_msgSend_objectAtIndexedSubscript_(*(v8 + 96), v43, 0, v44, v45, v46, v47, v48);
  v57 = objc_msgSend_height(v49, v50, v51, v52, v53, v54, v55, v56);
  v64 = objc_msgSend_objectAtIndexedSubscript_(*(v8 + 144), v58, 0, v59, v60, v61, v62, v63);
  v72 = objc_msgSend_width(v64, v65, v66, v67, v68, v69, v70, v71);
  v79 = objc_msgSend_objectAtIndexedSubscript_(*(v8 + 144), v73, 0, v74, v75, v76, v77, v78);
  LOWORD(v8) = objc_msgSend_height(v79, v80, v81, v82, v83, v84, v85, v86);
  if (a4)
  {
    v468 = v17;
    v94 = *(a4 + 160);
    v95 = *(a4 + 304);
    v96 = *(a4 + 32);
    if (v95)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v472 = 0;
  v119 = v496;
  v120 = v488;
LABEL_33:
  v136 = vcvt_f32_f64(vcvtq_f64_s64(v473));
  v514 = v136;
  if (v119 == 3)
  {
    if ((v17 & 1) == 0)
    {
      v137.i32[1] = v136.i32[1];
      v137.f32[0] = v136.f32[0] + (v482 >> 1);
      v514 = v137;
    }

    if ((v120 & 1) == 0)
    {
      v514.f32[1] = v136.f32[1] + (v490 >> 1);
    }
  }

  if (v471 >= v42)
  {
    v138 = v42;
  }

  else
  {
    v138 = v471;
  }

  if (v14 >= v57)
  {
    v139 = v57;
  }

  else
  {
    v139 = v14;
  }

  if (*&v475 == 0 && v14 >= v57 && v471 >= v42)
  {
    v142 = 0x1000000000000000;
  }

  else
  {
    v142 = 0;
  }

  *&v143 = 1.0 / v494;
  v144 = 0.0;
  if (!v494)
  {
    *&v143 = 0.0;
  }

  if (v486)
  {
    v144 = 1.0 / v486;
  }

  *&v145 = v138;
  v146 = vcvt_f32_f64(vcvtq_f64_s64(v475));
  v147 = v498 + 184;
  if (!v498)
  {
    v147 = a4 + 176;
  }

  v513[0] = v146;
  *(&v145 + 1) = v139;
  v513[1] = v145;
  v527 = v72;
  v148 = v498;
  v528 = v8;
  v149 = vmovn_s64(*v147);
  v518 = v149.i16[2];
  v517 = v149.i16[0];
  v150 = vmovn_s64(*(v147 + 24));
  v520 = v150.u16[2];
  v519 = v150.i16[0];
  *(&v151 + 1) = v486;
  *(&v143 + 1) = v144;
  *&v151 = v494;
  v515 = v151;
  v516 = v143;
  v529 = v33;
  v152 = (v476 + 3) >> 2;
  if (!v498)
  {
    LOWORD(v152) = 0;
  }

  v530 = v152;
  v521 = v17;
  v522 = v120;
  v532 = 1.0 / (v120 * v17);
  v523 = v482;
  v524 = v490;
  v153 = -1;
  if (v480 >= 0xFFFF)
  {
    v154 = -1;
  }

  else
  {
    v154 = v480;
  }

  v525 = v154;
  if (v478 < 0xFFFF)
  {
    v153 = v478;
  }

  v526 = v153;
  v156 = v119 != 2 && v485 == 1;
  if (!v498)
  {
    v531 = 0;
    if (v119 == 2)
    {
      v168 = 6;
    }

    else
    {
      v168 = 0;
    }

    if (v119 == 3)
    {
      v168 = 4;
    }

    if (v119 == 1)
    {
      v168 = 2;
    }

    v169 = *(a4 + 40);
    if (*(a4 + 32) == 3)
    {
      v159 = v168 + 1;
    }

    else
    {
      v159 = v168;
    }

    v170 = *(a4 + 160);
    if (v169 && v170)
    {
      if (v169 == v170 || (objc_msgSend_isEqual_(v169, v87, v170, v89, v90, v91, v92, v93) & 1) != 0)
      {
        return -18;
      }

      v170 = *(a4 + 160);
      v119 = v496;
      v120 = v488;
    }

    v157 = 0;
    v158 = 1;
    if (!v170)
    {
      goto LABEL_105;
    }

    v171 = *(a4 + 96);
    if (!v171)
    {
      goto LABEL_105;
    }

    if (v171 == v170)
    {
      isEqual = 1;
      v157 = 0;
      v158 = 1;
      if (v119 == 1)
      {
        goto LABEL_105;
      }
    }

    else
    {
      isEqual = objc_msgSend_isEqual_(v171, v87, v170, v89, v90, v91, v92, v93);
      v120 = v488;
      v119 = v496;
      v157 = 0;
      v158 = 1;
      if (v496 == 1)
      {
        goto LABEL_105;
      }
    }

    if ((isEqual & 1) == 0)
    {
      goto LABEL_105;
    }

    return -18;
  }

  v157 = 0;
  v158 = *(v498 + 8);
  v531 = 0;
  v159 = 8;
  if (v119)
  {
    goto LABEL_105;
  }

  v483 = v142;
  v160 = *(v498 + 24);
  v161 = *(v160 + 168);
  if (!v161)
  {
    goto LABEL_104;
  }

  if (!objc_msgSend_resourceCount(*(v160 + 168), v87, v88, v89, v90, v91, v92, v93) || *(v161 + 72) != 0)
  {
    v157 = 0;
    v119 = v496;
LABEL_103:
    v120 = v488;
LABEL_104:
    v142 = v483;
    goto LABEL_105;
  }

  v469 = v17;
  v173 = v158;
  v175 = *(v161 + 96);
  v174 = *(v161 + 104);
  v176 = objc_msgSend_objectAtIndexedSubscript_(*(v498 + 96), v162, 0, v163, v164, v165, v166, v167);
  if (v175 < objc_msgSend_width(v176, v177, v178, v179, v180, v181, v182, v183))
  {
    goto LABEL_99;
  }

  v190 = objc_msgSend_objectAtIndexedSubscript_(*(v498 + 96), v184, 0, v185, v186, v187, v188, v189);
  v158 = v173;
  if (v174 < objc_msgSend_height(v190, v191, v192, v193, v194, v195, v196, v197))
  {
    goto LABEL_101;
  }

  v394 = MEMORY[0x277CD7488];
  v395 = *(v161 + *MEMORY[0x277CD7488]);
  v119 = v496;
  v120 = v488;
  if (*v395 - 1 > 1 || !atomic_load_explicit(v395 + 1, memory_order_acquire))
  {
    v157 = 0;
    v159 = 8;
    v17 = v469;
    goto LABEL_104;
  }

  v396 = sub_239BB3F24(*(v161 + *v394));
  v404 = objc_msgSend_width(v396, v397, v398, v399, v400, v401, v402, v403);
  v411 = objc_msgSend_objectAtIndexedSubscript_(*(v498 + 96), v405, 0, v406, v407, v408, v409, v410);
  if (v404 < objc_msgSend_width(v411, v412, v413, v414, v415, v416, v417, v418) || (v426 = objc_msgSend_height(v396, v419, v420, v421, v422, v423, v424, v425), v433 = objc_msgSend_objectAtIndexedSubscript_(*(v498 + 96), v427, 0, v428, v429, v430, v431, v432), v426 < objc_msgSend_height(v433, v434, v435, v436, v437, v438, v439, v440)))
  {
LABEL_99:
    v157 = 0;
    v159 = 8;
    v119 = v496;
    v158 = v173;
LABEL_102:
    v17 = v469;
    goto LABEL_103;
  }

  v158 = v173;
  if (objc_msgSend_arrayLength(v396, v441, v442, v443, v444, v445, v446, v447) < v33)
  {
LABEL_101:
    v157 = 0;
    v159 = 8;
    v119 = v496;
    goto LABEL_102;
  }

  v448 = malloc_type_malloc(8 * v173, 0x80040B8603338uLL);
  v157 = v448;
  v142 = v483;
  if (!v173)
  {
LABEL_259:
    v531 = (*(v498 + 288) + 3) >> 2;
    v159 = 9;
    goto LABEL_262;
  }

  v449 = 0;
  v450 = 168;
  v492 = v448;
  while (1)
  {
    v451 = *(*(v498 + 24) + v450);
    v157[v449] = 0;
    if (!v451)
    {
      break;
    }

    v452 = *(v451 + *v394);
    if (*v452 - 1 > 1)
    {
      break;
    }

    if (!atomic_load_explicit(v452 + 1, memory_order_acquire))
    {
      explicit = v157[v449];
      goto LABEL_256;
    }

    v453 = *(v451 + *v394);
    v454 = *v453;
    if (v454 == 2)
    {
      v455 = (v453 + 1);
      explicit = atomic_load_explicit(v453 + 1, memory_order_acquire);
      if (!explicit)
      {
        MPSAutoTexture::AllocateTexture(v455, 0);
        goto LABEL_252;
      }
    }

    else
    {
      if (v454 != 1)
      {
        explicit = 0;
        goto LABEL_255;
      }

      v455 = (v453 + 1);
      explicit = atomic_load_explicit(v453 + 1, memory_order_acquire);
      if (!explicit)
      {
        MPSAutoBuffer::AllocateBuffer(v455, 0);
LABEL_252:
        v157 = v492;
        explicit = atomic_load_explicit(v455, memory_order_acquire);
      }
    }

    v142 = v483;
LABEL_255:
    v157[v449] = explicit;
LABEL_256:
    if (++v449 < v173)
    {
      v450 += 176;
      if (explicit)
      {
        continue;
      }
    }

    if (explicit)
    {
      goto LABEL_259;
    }

    break;
  }

  free(v157);
  v157 = 0;
  v159 = 8;
LABEL_262:
  v119 = v496;
  v158 = v173;
  v17 = v469;
  v120 = v488;
LABEL_105:
  if (v17 >= 0x3FFF)
  {
    v198 = 0x3FFFLL;
  }

  else
  {
    v198 = v17;
  }

  if (v120 >= 0x3FFF)
  {
    v199 = 0x3FFFLL;
  }

  else
  {
    v199 = v120;
  }

  if (v494 != v486 || v494 >= 0x7F)
  {
    v201 = 0;
  }

  else
  {
    v201 = (v494 & 0x7F) << 28;
  }

  if (v156)
  {
    v202 = 0x2000000000000000;
  }

  else
  {
    v202 = 0;
  }

  if ((v485 != 4 || v119 != 3) && v525 == 0 && v526 == 0)
  {
    v206 = 0;
  }

  else
  {
    v206 = 0x4000000000000000;
  }

  if (v120 > v528 || v17 > v527)
  {
    v208 = 0;
  }

  else
  {
    v208 = 0x8000000000000000;
  }

  v209 = (((v198 | ((v119 & 7) << 48) | (v199 << 14) | v201 | v202) + v142) | ((v158 & 0x7F) << 35)) + (v159 << 42) + v206 + v208;
  v489 = v158;
  v491 = v157;
  if (v498)
  {
    v210 = (*(v498 + 136) & 7) << 54;
    if (v157)
    {
      v210 = 0xC0000000000000;
    }

    v209 = v210 | v209 & 0xF007FFFFFFFFFFFFLL | ((*(v498 + 32) & 7) << 57) | ((*(v498 + 88) & 7) << 51);
  }

  v511 = -1;
  *&v211 = -1;
  *(&v211 + 1) = -1;
  v510 = v211;
  v509 = v211;
  v508 = v211;
  v507 = v211;
  v474 = (v209 >> 35) & 0x7F;
  v506 = v474;
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v213 = a2;
  objc_msgSend_setComputePipelineState_(a2, v214, PipelineStateForMPSKey, v215, v216, v217, v218, v219, 0, 0, 0, 0, 0);
  v227 = objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v220, v221, v222, v223, v224, v225, v226);
  if (v227 <= 1)
  {
    v235 = 1;
  }

  else
  {
    v235 = v227;
  }

  v236 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v228, v229, v230, v231, v232, v233, v234);
  if (v236 >= 0x100)
  {
    v237 = 256;
  }

  else
  {
    v237 = v236;
  }

  MPSLibrary::ReleaseMPSKey();
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v239, Sampler, 0, v240, v241, v242, v243);
  v244 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v245, v244, 1, v246, v247, v248, v249);
  v255 = v237 / v235;
  if (v237 / v235 >= 4)
  {
    v255 = 4;
  }

  if (v255 <= 1)
  {
    v255 = 1;
  }

  v256 = v237 / (4 * v235);
  if (v256 <= 1)
  {
    v256 = 1;
  }

  if ((*(v470 + 1477) & 4) != 0)
  {
    v257 = v235;
  }

  else
  {
    v257 = v255;
  }

  if ((*(v470 + 1477) & 4) != 0)
  {
    v258 = v256;
  }

  else
  {
    v258 = v235;
  }

  if (v257 <= v520 && v258 <= v519 && v258 * v257 < v519 * v520)
  {
    v487 = 1;
    v260 = v489;
    if (v498)
    {
      goto LABEL_166;
    }

LABEL_178:
    v275 = (v520 + v257 - 1) / v257;
    v276 = v257;
    v277 = (v487 + v529 - 1) / v487;
    v278 = (v519 + v258 - 1) / v258;
    objc_msgSend_setTexture_atIndex_(a2, v250, *(a4 + 40), 0, v251, v252, v253, v254);
    objc_msgSend_setTexture_atIndex_(a2, v279, v472, 1, v280, v281, v282, v283);
    objc_msgSend_setTexture_atIndex_(a2, v284, *(a4 + 96), 2, v285, v286, v287, v288);
    objc_msgSend_setBytes_length_atIndex_(a2, v289, v513, 88, 30, v290, v291, v292);
    v503 = v278;
    v504 = v275;
    v505 = v277;
    v500 = v258;
    v501 = v276;
    v502 = v487;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v293, &v503, &v500, v294, v295, v296, v297);
    goto LABEL_229;
  }

  if (v235 >> 3 <= 1)
  {
    v258 = 1;
  }

  else
  {
    v258 = v235 >> 3;
  }

  if (v529 < 4u)
  {
    v274 = 1;
  }

  else
  {
    v274 = 4;
  }

  v487 = v274;
  if (v529 >= 4u)
  {
    v257 = 4;
  }

  else
  {
    v257 = 8;
  }

  v260 = v489;
  if (!v498)
  {
    goto LABEL_178;
  }

LABEL_166:
  objc_msgSend_setBytes_length_atIndex_(a2, v250, v498 + 104, 32, 1, v252, v253, v254);
  objc_msgSend_setBytes_length_atIndex_(a2, v261, v498 + 152, 32, 2, v262, v263, v264);
  objc_msgSend_setBytes_length_atIndex_(a2, v265, v498 + 48, 40, 0, v266, v267, v268);
  if (v529 >= 2u)
  {
    v298 = __clz(0x80000000 / v529);
    v299 = (0x80000000 / v529) >> (16 - v298);
    v300 = v298 + 15;
    v301 = -65536 * v529 * v299 / v529;
    if (v301 <= v299)
    {
      v302 = v299;
    }

    else
    {
      v302 = v299 + 1;
    }

    if (v301 <= v299)
    {
      LOWORD(v299) = 0;
    }

    v273 = (v300 << 48) | ((v301 - v299) << 32) | (v302 << 16) | v529;
  }

  else
  {
    v273 = 65537;
  }

  v533 = v273;
  objc_msgSend_setBytes_length_atIndex_(a2, v269, v513, 88, 30, v270, v271, v272);
  if (v260)
  {
    v303 = 0;
    v477 = v257 - 1;
    v479 = v258 - 1;
    v495 = 2 * v474;
    v481 = v257;
    v484 = v258;
    do
    {
      if (v260 - v303 >= 0x20)
      {
        v309 = 32;
      }

      else
      {
        v309 = v260 - v303;
      }

      v506 = v309;
      v497 = v209 & 0xFFFFFC07FFFFFFFFLL | (v309 << 35);
      MPSLibrary::CreateUberShaderKey();
      v310 = MPSLibrary::GetPipelineStateForMPSKey();
      objc_msgSend_setComputePipelineState_(v213, v311, v310, v312, v313, v314, v315, v316, 0, 0, 0, 0, 0);
      MPSLibrary::ReleaseMPSKey();
      v324 = v519;
      v325 = v520;
      v326 = v529;
      v327 = *(v148 + 96);
      if ((*(v148 + 88) & 2) != 0)
      {
        v335 = objc_msgSend_count(*(v148 + 96), v317, v318, v319, v320, v321, v322, v323);
        if (v335 > v303)
        {
          if (v303 + 32 <= v335)
          {
            v336 = 32;
          }

          else
          {
            v336 = v335 - v303;
          }

          v337 = malloc_type_malloc(8 * v336, 0x80040B8603338uLL);
          if (v337)
          {
            v338 = v337;
            objc_msgSend_getObjects_range_(v327, v328, v337, v303, v336, v332, v333, v334);
            objc_msgSend_setTextures_withRange_(a2, v339, v338, v474, v336, v340, v341, v342);
            free(v338);
          }

          else if (v336)
          {
            for (i = 0; i < v336; ++i)
            {
              v344 = objc_msgSend_objectAtIndexedSubscript_(v327, v328, i, v330, v331, v332, v333, v334);
              objc_msgSend_setTexture_atIndex_(a2, v345, v344, v474 + i, v346, v347, v348, v349);
            }
          }
        }
      }

      else
      {
        objc_msgSend_setTexture_atIndex_(v213, v317, *(v148 + 96), v474, v320, v321, v322, v323);
      }

      if (v491)
      {
        objc_msgSend_setTextures_withRange_(a2, v328, v491 + 8 * v303, v495, v309, v332, v333, v334);
      }

      else
      {
        v357 = *(v498 + 144);
        if ((*(v498 + 136) & 2) != 0)
        {
          v371 = objc_msgSend_count(*(v498 + 144), v328, v329, v330, v331, v332, v333, v334);
          v358 = v326;
          v359 = v325;
          v360 = v324;
          v209 = v497;
          if (v371 > v303)
          {
            if (v303 + 32 <= v371)
            {
              v372 = 32;
            }

            else
            {
              v372 = v371 - v303;
            }

            v373 = malloc_type_malloc(8 * v372, 0x80040B8603338uLL);
            if (v373)
            {
              v374 = v373;
              objc_msgSend_getObjects_range_(v357, v350, v373, v303, v372, v354, v355, v356);
              objc_msgSend_setTextures_withRange_(a2, v375, v374, v495, v372, v376, v377, v378);
              free(v374);
            }

            else if (v372)
            {
              for (j = 0; j < v372; ++j)
              {
                v387 = objc_msgSend_objectAtIndexedSubscript_(v357, v350, j, v352, v353, v354, v355, v356);
                objc_msgSend_setTexture_atIndex_(a2, v388, v387, v495 + j, v389, v390, v391, v392);
              }
            }
          }

          goto LABEL_208;
        }

        objc_msgSend_setTexture_atIndex_(a2, v328, *(v498 + 144), v495, v331, v332, v333, v334);
      }

      v358 = v326;
      v359 = v325;
      v360 = v324;
      v209 = v497;
LABEL_208:
      v361 = *(v498 + 40);
      if ((*(v498 + 32) & 2) != 0)
      {
        v362 = objc_msgSend_count(*(v498 + 40), v350, v351, v352, v353, v354, v355, v356);
        v213 = a2;
        if (v362 > v303)
        {
          if (v303 + 32 <= v362)
          {
            v363 = 32;
          }

          else
          {
            v363 = v362 - v303;
          }

          v364 = malloc_type_malloc(8 * v363, 0x80040B8603338uLL);
          if (v364)
          {
            v366 = v364;
            objc_msgSend_getObjects_range_(v361, v304, v364, v303, v363, v306, v307, v308);
            v213 = a2;
            objc_msgSend_setTextures_withRange_(a2, v367, v366, 0, v363, v368, v369, v370);
            free(v366);
          }

          else
          {
            v213 = a2;
            if (v363)
            {
              for (k = 0; k < v363; ++k)
              {
                v380 = objc_msgSend_objectAtIndexedSubscript_(v361, v304, k, v365, v305, v306, v307, v308);
                objc_msgSend_setTexture_atIndex_(a2, v381, v380, k, v382, v383, v384, v385);
              }
            }
          }
        }
      }

      else
      {
        v213 = a2;
        objc_msgSend_setTexture_atIndex_(a2, v350, *(v498 + 40), 0, v353, v354, v355, v356);
      }

      v503 = (v479 + v360) / v484;
      v504 = (v477 + v359) / v481;
      v505 = (v487 - 1 + ((v309 + 3) >> 2) * v358) / v487;
      v500 = v484;
      v501 = v481;
      v502 = v487;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v213, v304, &v503, &v500, v305, v306, v307, v308);
      v303 += 32;
      v260 = v489;
      v148 = v498;
    }

    while (v303 < v489);
  }

LABEL_229:

  if (v491)
  {
    free(v491);
  }

  return 0;
}

unint64_t sub_239BB3F24(atomic_ullong *a1)
{
  v1 = *a1;
  if (v1 == 2)
  {
    v4 = (a1 + 1);
    result = atomic_load_explicit(a1 + 1, memory_order_acquire);
    if (!result)
    {
      MPSAutoTexture::AllocateTexture(v4, 0);
      return atomic_load_explicit(v4, memory_order_acquire);
    }
  }

  else if (v1 == 1)
  {
    v2 = (a1 + 1);
    result = atomic_load_explicit(a1 + 1, memory_order_acquire);
    if (!result)
    {
      MPSAutoBuffer::AllocateBuffer(v2, 0);
      return atomic_load_explicit(v2, memory_order_acquire);
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_239BB3FB4(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a2[8];
  v7 = MPSCreateFunctionConstantValues();
  v87 = (v6 & 0x2000000000000000) != 0;
  v86 = (v6 & 0x1000000000000000) != 0;
  v85 = (v6 & 0x4000000000000000) != 0;
  v84 = (v6 & 0x8000000000000000) != 0;
  v83 = (v6 >> 28) & 0x7F;
  v82 = v6 & 0x3FFF;
  v81 = (v6 >> 14) & 0x3FFF;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v8, &v82, 37, 0, v9, v10, v11);
  objc_msgSend_setConstantValue_type_atIndex_(v7, v12, &v81, 37, 1, v13, v14, v15);
  objc_msgSend_setConstantValue_type_atIndex_(v7, v16, &v86, 53, 2, v17, v18, v19);
  objc_msgSend_setConstantValue_type_atIndex_(v7, v20, &v87, 53, 3, v21, v22, v23);
  objc_msgSend_setConstantValue_type_atIndex_(v7, v24, &v83, 37, 4, v25, v26, v27);
  objc_msgSend_setConstantValue_type_atIndex_(v7, v28, &v85, 53, 5, v29, v30, v31);
  objc_msgSend_setConstantValue_type_atIndex_(v7, v32, &v84, 53, 6, v33, v34, v35);
  v80 = BYTE6(v6) & 7;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v36, &v80, 37, 7, v37, v38, v39);
  v79 = (v6 >> 35) & 0x7F;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v40, &v79, 37, 8, v41, v42, v43);
  v44 = *a3;
  v88 = (v6 >> 45) & 0x1C0 | (v6 >> 57) & 7 | (v6 >> 42) & 0x7000;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v45, &v88, 33, 126, v46, v47, v48);
  if (v44 != -1)
  {
    v88 = v44;
    objc_msgSend_setConstantValue_type_atIndex_(v7, v49, &v88, 33, 125, v50, v51, v52);
  }

  v88 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v49, &v88, 33, 123, v50, v51, v52);
  v88 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v53, &v88, 33, 119, v54, v55, v56);
  v88 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v57, &v88, 33, 118, v58, v59, v60);
  v88 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v61, &v88, 33, 122, v62, v63, v64);
  v88 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v65, &v88, 33, 121, v66, v67, v68);
  v88 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v69, &v88, 33, 117, v70, v71, v72);
  v88 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v73, &v88, 33, 116, v74, v75, v76);
  v77 = _MPSNewSpecializedFunction();

  return v77;
}

uint64_t sub_239BB4830(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a4 + 48) != 1 && MTLReportFailureTypeEnabled())
  {
    v117 = objc_opt_class();
    v122 = NSStringFromClass(v117);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNArithmetic.mm", 0x28F, @"[%@ encode...] MPSImageFeatureChannelsInterleavedPerPixel is not supported", v118, v119, v120, v121);
  }

  v12 = *(a4 + 144);
  v13 = *(a4 + 304);
  if (v13 < v12)
  {
    v14 = (a4 + 24);
    if (*(a4 + 24) + v13 <= v12)
    {
      goto LABEL_20;
    }

    if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      v15 = objc_opt_class();
      v122 = NSStringFromClass(v15);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNArithmetic.mm", 0x29D, @"[%@ encode...] not enough destination feature channels:  destinationFeatureChannelOffset + src.featureChannels > dest.featureChannels", v16, v17, v18, v19);
    }

    if (*(a4 + 144) != *(a4 + 304))
    {
LABEL_20:
      if (!*(a1 + 440))
      {
        if (*(a1 + 448))
        {
          v14 = (a4 + 80);
        }

        else
        {
          v14 = (a4 + 144);
        }
      }

      v20 = *v14;
      v21 = objc_msgSend_maxBatchSize(a1, a2, a3, a4, a5, a6, a7, a8, v122);
      v141 = 0u;
      v142 = 0u;
      v140 = 0u;
      v143 = 0;
      v139 = 0u;
      memset(v138, 0, sizeof(v138));
      v137 = 0u;
      v136 = 0u;
      v135 = 0u;
      v134 = 0u;
      v133 = 0u;
      v132 = 0u;
      v131 = 0u;
      v130 = 0u;
      v129 = 0u;
      v123 = 1;
      v22 = *(a4 + 224);
      v126 = *(a4 + 208);
      v23 = *(a4 + 176);
      v125 = *(a4 + 192);
      v124 = v23;
      v24 = *(a4 + 40);
      v127 = *(a4 + 304);
      v128 = v24;
      LODWORD(v129) = *(a4 + 16);
      *(&v129 + 1) = **(a4 + 8);
      *&v130 = 0;
      DWORD2(v130) = 0;
      *&v23 = vmovn_s64(v22);
      HIWORD(v130) = WORD2(v23);
      WORD6(v130) = v23;
      LOWORD(v131) = objc_msgSend_primaryStrideInPixelsX(a1, v25, v26, v27, v28, v29, v30, v31);
      WORD1(v131) = objc_msgSend_primaryStrideInPixelsY(a1, v32, v33, v34, v35, v36, v37, v38);
      DWORD1(v131) = 0;
      WORD4(v131) = (*(a4 + 312) + 3) >> 2;
      WORD5(v131) = *(a4 + 24);
      WORD6(v131) = *(a4 + 240);
      HIWORD(v131) = objc_msgSend_numberOfImages(*a4, v39, v40, v41, v42, v43, v44, v45);
      *&v132 = *(a4 + 96);
      DWORD2(v132) = *(a4 + 72);
      v133 = **(a4 + 64);
      LODWORD(v134) = 0;
      v46 = vmovn_s64(*(a4 + 280));
      WORD3(v134) = v46.i16[2];
      WORD2(v134) = v46.i16[0];
      WORD4(v134) = objc_msgSend_secondaryStrideInPixelsX(a1, v47, v48, v49, v50, v51, v52, v53);
      WORD5(v134) = objc_msgSend_secondaryStrideInPixelsY(a1, v54, v55, v56, v57, v58, v59, v60);
      HIDWORD(v134) = 0;
      LOWORD(v135) = (*(a4 + 320) + 3) >> 2;
      WORD1(v135) = *(a4 + 80);
      WORD2(v135) = *(a4 + 296);
      v68 = objc_msgSend_numberOfImages(*(a4 + 56), v61, v62, v63, v64, v65, v66, v67);
      v69.i32[0] = (*(a4 + 304) + 3) >> 2;
      v69.i32[1] = *(a4 + 192);
      v70 = vuzp1_s16(vmovn_s64(*(a4 + 176)), v69);
      v71.i32[0] = (v20 + 3) >> 2;
      v71.i32[1] = *(a4 + 216);
      v72 = vuzp1_s16(vmovn_s64(*(a4 + 200)), v71);
      WORD3(v135) = v68;
      *(&v135 + 1) = *(a4 + 160);
      LODWORD(v136) = *(a4 + 136);
      v73 = *(a4 + 120);
      *(&v136 + 1) = **(a4 + 128);
      *&v137 = v70;
      *(&v137 + 1) = v72;
      LOWORD(v138[0]) = *(a4 + 144);
      v81 = objc_msgSend_numberOfImages(v73, v74, v75, v76, v77, v78, v79, v80);
      v82 = *(a1 + 416);
      v83 = *(a1 + 420);
      HIWORD(v138[0]) = v81;
      v84 = *(a1 + 424);
      v138[1] = 2;
      v138[6] = v82;
      v138[7] = v83;
      v85 = *(a1 + 428);
      LOWORD(v138[2]) = 0;
      HIWORD(v138[2]) = v21;
      *&v139 = __PAIR64__(v85, v84);
      *(&v139 + 1) = *(a1 + 432);
      v86 = *(a1 + 448);
      *&v140 = *(a1 + 440);
      *(&v140 + 1) = v86;
      *&v141 = objc_msgSend_width(*(a4 + 40), v87, v88, v89, v90, v91, v92, v93);
      *(&v141 + 1) = objc_msgSend_height(*(a4 + 40), v94, v95, v96, v97, v98, v99, v100);
      LODWORD(v142) = *(a1 + 456);
      *(&v142 + 1) = 0;
      if (v142 == 4)
      {
        objc_msgSend_threshold(a1, v101, v102, v103, v104, v105, v106, v107);
        HIDWORD(v139) = v108;
        *(&v142 + 1) = objc_msgSend_comparisonType(a1, v109, v110, v111, v112, v113, v114, v115);
      }

      sub_239BB87B4(a1, a2, a3, &v123, v104, v105, v106, v107);
    }
  }

  return 0;
}

uint64_t sub_239BB4C38(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a4 + 8);
  if (v12)
  {
    v13 = 0;
    v14 = 48;
    do
    {
      if (*(*(a4 + 24) + v14) != 1 && MTLReportFailureTypeEnabled())
      {
        v15 = objc_opt_class();
        v70 = NSStringFromClass(v15);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNArithmetic.mm", 0x24C, @"[%@ encode...] MPSImageFeatureChannelsInterleavedPerPixel is not supported", v16, v17, v18, v19);
      }

      ++v13;
      v12 = *(a4 + 8);
      v14 += 176;
    }

    while (v13 < v12);
  }

  v88 = 0u;
  v89 = 0u;
  v87 = 0u;
  v90 = 0;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  *&v81[32] = 0u;
  *&v81[16] = 0u;
  *v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v71 = v12;
  v20 = *(a4 + 184);
  v21 = *(a4 + 200);
  v74 = *(a4 + 216);
  v73 = v21;
  v72 = v20;
  v22 = *(a4 + 96);
  v75 = *(a4 + 280);
  v76 = v22;
  LODWORD(v77) = *(a4 + 88);
  v23 = *(a4 + 24);
  v24 = *MEMORY[0x277CD7318];
  *(&v77 + 1) = *(*v23 + v24);
  v79 = *(a4 + 120);
  v78 = *(a4 + 104);
  *&v80 = *(a4 + 144);
  DWORD2(v80) = *(a4 + 136);
  *v81 = *(v23[7] + v24);
  v25 = *(a4 + 168);
  *&v81[8] = *(a4 + 152);
  *&v81[24] = v25;
  *&v81[40] = *(a4 + 40);
  LODWORD(v82) = *(a4 + 32);
  v26 = *(v23[14] + v24);
  v27 = *(a4 + 64);
  v83 = *(a4 + 48);
  v84 = v27;
  v28 = *(a4 + 80);
  *(&v82 + 1) = v26;
  *&v85 = v28;
  LODWORD(v27) = *(a1 + 420);
  DWORD2(v85) = *(a1 + 416);
  HIDWORD(v85) = v27;
  LODWORD(v27) = *(a1 + 428);
  LODWORD(v86) = *(a1 + 424);
  DWORD1(v86) = v27;
  DWORD2(v86) = *(a1 + 432);
  v29 = *(a1 + 448);
  *&v87 = *(a1 + 440);
  *(&v87 + 1) = v29;
  v30 = objc_msgSend_objectAtIndexedSubscript_(v22, a2, 0, a4, a5, a6, a7, a8, v70);
  *&v88 = objc_msgSend_width(v30, v31, v32, v33, v34, v35, v36, v37);
  v44 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 96), v38, 0, v39, v40, v41, v42, v43);
  *(&v88 + 1) = objc_msgSend_height(v44, v45, v46, v47, v48, v49, v50, v51);
  LODWORD(v89) = *(a1 + 456);
  *(&v89 + 1) = 0;
  if (v89 == 4)
  {
    objc_msgSend_threshold(a1, v52, v53, v54, v55, v56, v57, v58);
    HIDWORD(v86) = v59;
    *(&v89 + 1) = objc_msgSend_comparisonType(a1, v60, v61, v62, v63, v64, v65, v66);
  }

  if (*(a1 + 440))
  {
    v67 = WORD5(v79);
  }

  else
  {
    if (*(a1 + 448))
    {
      v68 = &v81[34];
    }

    else
    {
      v68 = &v84;
    }

    v67 = *v68;
  }

  WORD6(v83) = (v67 + 3) >> 2;
  WORD4(v79) = (WORD4(v79) + 3) >> 2;
  *&v81[32] = (*&v81[32] + 3) >> 2;
  sub_239BB87B4(a1, a2, a3, &v71, v55, v56, v57, v58);
  return 0;
}

uint64_t sub_239BB632C(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a4 + 48) != 1 && MTLReportFailureTypeEnabled())
  {
    v687 = objc_opt_class();
    v713 = NSStringFromClass(v687);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNArithmetic.mm", 0x5C4, @"[%@ encode...] MPSImageFeatureChannelsInterleavedPerPixel is not supported", v688, v689, v690, v691);
  }

  v10 = *(a4 + 304);
  v11 = *(a4 + 144);
  if (v11 > v10)
  {
    v12 = *(a4 + 24);
    if (v12 + v10 <= v11 || (LODWORD(v12) = v11 - v10, v11 != v10))
    {
      v736 = *(a1 + *MEMORY[0x277CD7350]);
      v13 = objc_msgSend_secondaryStrideInPixelsX(a1, a2, a3, a4, a5, a6, a7, a8, v713);
      v21 = objc_msgSend_secondaryStrideInPixelsY(a1, v14, v15, v16, v17, v18, v19, v20);
      v29 = v21;
      v30 = *(a1 + 456);
      if (*(a4 + 112))
      {
        objc_opt_class();
        v31 = v13;
        v32 = v29;
        v33 = v30;
        if (objc_opt_isKindOfClass())
        {
          v34 = *(a4 + 112);
          v31 = v34[31];
          v32 = v34[32];
          v33 = v34[57];
          v13 = v34[33];
          v29 = v34[34];
          v30 = v34[58];
        }
      }

      else
      {
        v31 = v13;
        v32 = v21;
        v33 = *(a1 + 456);
      }

      v737 = *(a1 + 468);
      v741 = a1;
      v36 = *(a1 + 464);
      if (v36 && (v36 != 1 || (v737 & 1) != 0))
      {
        v730 = 0;
        if (objc_msgSend_width(*a4, v22, v23, v24, v25, v26, v27, v28) > *(a4 + 200))
        {
          goto LABEL_17;
        }
      }

      else
      {
        v730 = 1;
        if (objc_msgSend_width(*a4, v22, v23, v24, v25, v26, v27, v28) > *(a4 + 200))
        {
          goto LABEL_17;
        }
      }

      if (objc_msgSend_height(*a4, v37, v38, v39, v40, v41, v42, v43) <= *(a4 + 208))
      {
        v44 = objc_msgSend_featureChannels(*a4, v37, v38, v39, v40, v41, v42, v43) > *(a4 + 144);
LABEL_19:
        if (v737)
        {
          v45 = v13;
        }

        else
        {
          v45 = v31;
        }

        if (v737)
        {
          v46 = v29;
        }

        else
        {
          v46 = v32;
        }

        if (v737)
        {
          v47 = v30;
        }

        else
        {
          v47 = v33;
        }

        v715 = v45;
        v720 = v46;
        v721 = v47;
        if (v45)
        {
          v48 = v46 == 0;
        }

        else
        {
          v48 = 1;
        }

        v50 = v48 || v47 == 0;
        v714 = *(v741 + 472);
        v734 = v36 == 1;
        v719 = *(v741 + 480);
        v717 = *(v741 + 488);
        v732 = objc_msgSend_maxBatchSize(v741, v37, v38, v39, v40, v41, v42, v43);
        MEMORY[0x23EE7D040](v793, a3, 0);
        v51 = MTLPixelFormatInvalid;
        v52 = *(a4 + 120);
        v53 = *(a4 + 160);
        v739 = *(a4 + 136);
        v54 = *(a4 + 144);
        v791 = *(a4 + 176);
        v55 = *(a4 + 200);
        v792 = *(a4 + 192);
        v56 = *(a4 + 208);
        v57 = *(a4 + 216);
        if ((*(*(a4 + 8) + 3) & 0xFu) <= 4)
        {
          v51 = qword_239D7D320[*(*(a4 + 8) + 3) & 0xF];
        }

        PixelInfo = MPSDevice::GetPixelInfo(v736, v51, MPSImageFeatureChannelFormatNone);
        v728 = v50 | v44;
        if ((v50 | v44))
        {
          v55 = objc_msgSend_width(*a4, v58, v59, v60, v61, v62, v63, v64);
          v56 = objc_msgSend_height(*a4, v65, v66, v67, v68, v69, v70, v71);
          v740 = objc_msgSend_featureChannels(*a4, v72, v73, v74, v75, v76, v77, v78);
          v86 = objc_msgSend_featureChannels(*a4, v79, v80, v81, v82, v83, v84, v85);
          v94 = objc_msgSend_numberOfImages(*a4, v87, v88, v89, v90, v91, v92, v93);
          v95 = objc_autoreleasePoolPush();
          v97 = objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_numberOfImages_usage_(MEMORY[0x277CD7220], v96, 4, v55, v56, v86, v94, 19);
          v98 = &unk_239D7D2F8;
          if ((PixelInfo & 0xFF00000000) > 0x1000000000)
          {
            v98 = qword_239D7D320;
          }

          v746 = MPSDevice::GetPixelInfo(v736, v98[(PixelInfo >> 24) & 0xF], MPSImageFeatureChannelFormatNone);
          v768 = objc_msgSend_width(v97, v99, v100, v101, v102, v103, v104, v105);
          *&v769 = objc_msgSend_height(v97, v106, v107, v108, v109, v110, v111, v112);
          *(&v769 + 1) = (objc_msgSend_featureChannels(v97, v113, v114, v115, v116, v117, v118, v119) + 3) >> 2;
          TempTexture = MPSAutoCache::GetTempTexture();
          v121 = objc_alloc(MEMORY[0x277CD7218]);
          v129 = objc_msgSend_featureChannels(v97, v122, v123, v124, v125, v126, v127, v128);
          v135 = objc_msgSend_initWithTexture_featureChannels_(v121, v130, TempTexture, v129, v131, v132, v133, v134);
          objc_autoreleasePoolPop(v95);
          v53 = objc_msgSend_texture(v135, v136, v137, v138, v139, v140, v141, v142);
          v150 = &v135[*MEMORY[0x277CD7320]];
          explicit = atomic_load_explicit(v150, memory_order_acquire);
          if ((v150[56] & 2) != 0)
          {
            if (*(v150 + 13) < 2u)
            {
              v156 = 2;
            }

            else
            {
              v156 = 3;
            }
          }

          else
          {
            if (explicit)
            {
              v152 = objc_msgSend_textureType(explicit, v143, v144, v145, v146, v147, v148, v149);
            }

            else
            {
              v152 = objc_msgSend_textureType(*(v150 + 5), v143, v144, v145, v146, v147, v148, v149);
            }

            v156 = v152;
          }

          v157 = *&v135[*MEMORY[0x277CD72F0]] - 1;
          if (v157 > 4)
          {
            v158 = 0;
          }

          else
          {
            v158 = dword_239D7D348[v157];
          }

          v159 = *&v135[*MEMORY[0x277CD7318]];
          v160 = objc_msgSend_numberOfImages(v135, v143, v144, v145, v146, v147, v148, v149);
          v57 = (v740 + 3) >> 2;
          if (v156 == 3)
          {
            v161 = v158 + 1;
          }

          else
          {
            v161 = v158;
          }

          if ((v159 & 0x3000000) != 0)
          {
            v161 |= 4u;
          }

          v739 = v161;
          v162.i16[0] = v55;
          v162.i16[1] = v56;
          v162.i16[2] = v57;
          v162.i16[3] = v160;
          v726 = v162;
          v54 = *&v135[*MEMORY[0x277CD72F8]];
          v723 = 0;
          v153 = *(a4 + 304);
          v718 = v135;
          v52 = v135;
        }

        else
        {
          v718 = 0;
          v153 = *(a4 + 304);
          v154.i32[0] = (v153 + 3) >> 2;
          v154.i32[1] = *(a4 + 192);
          v723 = vuzp1_s16(vmovn_s64(*(a4 + 176)), v154);
          v155.i32[0] = (v12 + 3) >> 2;
          v155.i32[1] = *(a4 + 216);
          v726 = vuzp1_s16(vmovn_s64(*(a4 + 200)), v155);
        }

        v788 = 0u;
        v789 = 0u;
        v787 = 0u;
        v790 = 0;
        v786 = 0u;
        memset(v785, 0, sizeof(v785));
        v784 = 0u;
        v783 = 0u;
        v782 = 0u;
        v781 = 0u;
        v780 = 0u;
        v779 = 0u;
        v778 = 0u;
        v777 = 0u;
        v776 = 0u;
        v768 = 1;
        v770 = v792;
        v769 = v791;
        v771 = v55;
        v772 = v56;
        v773 = v57;
        v774 = v153;
        v775 = *(a4 + 40);
        LODWORD(v776) = *(a4 + 16);
        v163 = *a4;
        *(&v776 + 1) = *(*a4 + *MEMORY[0x277CD7318]);
        *&v777 = 0;
        DWORD2(v777) = 0;
        v164 = vmovn_s64(*(a4 + 224));
        HIWORD(v777) = v164.i16[2];
        WORD6(v777) = v164.i16[0];
        *&v778 = 65537;
        WORD4(v778) = (*(a4 + 312) + 3) >> 2;
        WORD5(v778) = *(a4 + 24);
        v735 = (a4 + 224);
        WORD6(v778) = *(a4 + 240);
        HIWORD(v778) = objc_msgSend_numberOfImages(v163, v58, v59, v60, v61, v62, v63, v64);
        if (v734 & v737)
        {
          v172 = 0;
        }

        else
        {
          v172 = *(a4 + 96);
        }

        *&v779 = v172;
        DWORD2(v779) = *(a4 + 72);
        v173 = *(a4 + 56);
        v780 = *&v173[*MEMORY[0x277CD7318]];
        LODWORD(v781) = 0;
        v174 = vmovn_s64(*(a4 + 280));
        WORD3(v781) = v174.i16[2];
        WORD2(v781) = v174.i16[0];
        *(&v781 + 1) = 65537;
        LOWORD(v782) = (*(a4 + 320) + 3) >> 2;
        WORD1(v782) = *(a4 + 80);
        WORD2(v782) = *(a4 + 296);
        WORD3(v782) = objc_msgSend_numberOfImages(v173, v165, v166, v167, v168, v169, v170, v171);
        *(&v782 + 1) = v53;
        LODWORD(v783) = v739;
        *(&v783 + 1) = *&v52[*MEMORY[0x277CD7318]];
        *&v784 = v723;
        *(&v784 + 1) = v726;
        LOWORD(v785[0]) = v54;
        HIWORD(v785[0]) = objc_msgSend_numberOfImages(v52, v175, v176, v177, v178, v179, v180, v181);
        v785[1] = 2;
        HIWORD(v785[2]) = v732;
        v182 = *(v741 + 436);
        v183 = *(v741 + 440);
        v785[6] = *(v741 + 432);
        v785[7] = v182;
        v184 = *(v741 + 444);
        LOWORD(v785[2]) = 0;
        *&v785[3] = 0;
        *&v786 = __PAIR64__(v184, v183);
        *(&v786 + 1) = *(v741 + 448);
        v185 = *(v741 + 456);
        *&v787 = 0;
        *(&v787 + 1) = v185;
        *&v788 = objc_msgSend_width(*(a4 + 40), v186, v187, v188, v189, v190, v191, v192);
        *(&v788 + 1) = objc_msgSend_height(*(a4 + 40), v193, v194, v195, v196, v197, v198, v199);
        LODWORD(v789) = *(v741 + 464);
        *(&v789 + 1) = 0;
        LOBYTE(v790) = 1;
        BYTE1(v790) = v734 & v737;
        BYTE2(v790) = *(a4 + 112) == 0;
        BYTE3(v790) = *(v741 + 468);
        if (v730)
        {
          v794[0] = **(a4 + 8);
          v767 = *&v52[*MEMORY[0x277CD7318]];
          v746 = v794;
          v747 = &v767;
          v748 = v791;
          v753 = *v735;
          v754 = *(a4 + 240);
          v755 = 0;
          v204 = (*(a4 + 24) + 3) >> 2;
          v749 = v204 * v792;
          v750 = v55;
          v751 = v56;
          v752 = v204 * v57;
          v35 = MPSEncodeCopyTexture();
          if ((v728 & 1) == 0)
          {
            goto LABEL_207;
          }
        }

        else
        {
          sub_239BB87B4(v741, a2, a3, &v768, v200, v201, v202, v203);
          v35 = 0;
          if ((v728 & 1) == 0)
          {
LABEL_207:
            MPSAutoCache::~MPSAutoCache(v793);
            return v35;
          }
        }

        v212 = *(a4 + 120);
        v213 = *(a4 + 208);
        v214 = *(a4 + 216);
        v729 = *(a4 + 184);
        v731 = *(a4 + 176);
        v733 = *(a4 + 200);
        v727 = *(a4 + 192);
        v738 = *(a4 + 136);
        v216 = *(a4 + 152);
        v215 = *(a4 + 160);
        v217 = *(a4 + 144);
        if (objc_msgSend_width(v52, v205, v206, v207, v208, v209, v210, v211) <= v733 && v715)
        {
          v716 = 0;
          v225 = v52;
          v226 = objc_msgSend_height(v52, v218, v219, v220, v221, v222, v223, v224);
        }

        else
        {
          if (objc_msgSend_height(v52, v218, v219, v220, v221, v222, v223, v224) <= v213 && v720 && objc_msgSend_featureChannels(v52, v234, v235, v236, v237, v238, v239, v240) <= v217 && v721)
          {
            v225 = 0;
          }

          else
          {
            v241 = objc_msgSend_height(*a4, v234, v235, v236, v237, v238, v239, v240);
            objc_msgSend_featureChannels(*a4, v242, v243, v244, v245, v246, v247, v248);
            v256 = objc_msgSend_featureChannels(*a4, v249, v250, v251, v252, v253, v254, v255);
            v264 = objc_msgSend_numberOfImages(*a4, v257, v258, v259, v260, v261, v262, v263);
            v265 = objc_autoreleasePoolPush();
            v267 = objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_numberOfImages_usage_(MEMORY[0x277CD7220], v266, 4, 1, v241, v256, v264, 19);
            v268 = &unk_239D7D2F8;
            if ((PixelInfo & 0xFF00000000) > 0x1000000000)
            {
              v268 = qword_239D7D320;
            }

            v794[0] = MPSDevice::GetPixelInfo(v736, v268[(PixelInfo >> 24) & 0xF], MPSImageFeatureChannelFormatNone);
            v746 = objc_msgSend_width(v267, v269, v270, v271, v272, v273, v274, v275);
            v747 = objc_msgSend_height(v267, v276, v277, v278, v279, v280, v281, v282);
            *&v748 = (objc_msgSend_featureChannels(v267, v283, v284, v285, v286, v287, v288, v289) + 3) >> 2;
            v290 = MPSAutoCache::GetTempTexture();
            v291 = objc_alloc(MEMORY[0x277CD7218]);
            v299 = objc_msgSend_featureChannels(v267, v292, v293, v294, v295, v296, v297, v298);
            v212 = objc_msgSend_initWithTexture_featureChannels_(v291, v300, v290, v299, v301, v302, v303, v304);
            objc_autoreleasePoolPop(v265);
            objc_msgSend_width(v212, v305, v306, v307, v308, v309, v310, v311);
            v213 = objc_msgSend_height(v212, v312, v313, v314, v315, v316, v317, v318);
            v214 = objc_msgSend_numberOfImages(v212, v319, v320, v321, v322, v323, v324, v325);
            v333 = &v212[*MEMORY[0x277CD7320]];
            v334 = atomic_load_explicit(v333, memory_order_acquire);
            if ((v333[56] & 2) != 0)
            {
              if (*(v333 + 13) < 2u)
              {
                v335 = 2;
              }

              else
              {
                v335 = 3;
              }
            }

            else if (v334)
            {
              v335 = objc_msgSend_textureType(v334, v326, v327, v328, v329, v330, v331, v332);
            }

            else
            {
              v335 = objc_msgSend_textureType(*(v333 + 5), v326, v327, v328, v329, v330, v331, v332);
            }

            v336 = *&v212[*MEMORY[0x277CD72F0]] - 1;
            if (v336 > 4)
            {
              v337 = 0;
            }

            else
            {
              v337 = dword_239D7D348[v336];
            }

            if (v335 == 3)
            {
              ++v337;
            }

            if ((*&v212[*MEMORY[0x277CD7318]] & 0x3000000) != 0)
            {
              v337 |= 4u;
            }

            v738 = v337;
            v215 = objc_msgSend_texture(v212, v326, v327, v328, v329, v330, v331, v332);
            v216 = objc_msgSend_textureType(v212, v338, v339, v340, v341, v342, v343, v344);
            v217 = objc_msgSend_featureChannels(v212, v345, v346, v347, v348, v349, v350, v351);
            v729 = 0;
            v731 = 0;
            v727 = 0;
            v225 = v212;
          }

          v724 = v214;
          if (v216 == 3 && v217 <= 4)
          {
            v352 = objc_msgSend_pixelFormat(v215, v234, v235, v236, v237, v238, v239, v240);
            v355 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v215, v353, v352, 2, 0, 1, 0, 1);
            if (v355)
            {
              if ((objc_msgSend_retainedReferences(a3, v234, v354, v236, v237, v238, v239, v240) & 1) == 0)
              {
                v356 = v355;
                v766[0] = MEMORY[0x277D85DD0];
                v766[1] = 3221225472;
                v766[2] = sub_239BB925C;
                v766[3] = &unk_278B28F28;
                v766[4] = v355;
                objc_msgSend_addCompletedHandler_(a3, v357, v766, v358, v359, v360, v361, v362);
              }

              v363 = v213;
              v364 = *&v212[*MEMORY[0x277CD7318]];
              v365 = objc_alloc(MEMORY[0x277CD7218]);
              if ((v364 & 0xE000000) != 0)
              {
                v371 = objc_msgSend_initWithTexture_featureChannels_(v365, v366, v355, BYTE3(v364) & 0xF, v367, v368, v369, v370);
              }

              else
              {
                v371 = objc_msgSend_initWithTexture_featureChannels_(v365, v366, v355, 1, v367, v368, v369, v370);
              }

              v212 = v371;
              v215 = objc_msgSend_texture(v212, v372, v373, v374, v375, v376, v377, v378);
              v216 = objc_msgSend_textureType(v212, v379, v380, v381, v382, v383, v384, v385);
              v217 = objc_msgSend_featureChannels(v212, v386, v387, v388, v389, v390, v391, v392);
              v738 &= ~1u;
            }

            else
            {
              v363 = v213;
              v216 = 3;
            }
          }

          else
          {
            v363 = v213;
          }

          v393 = *MEMORY[0x277CD7318];
          v794[0] = *&v52[v393];
          v767 = *&v212[v393];
          v765 = *(a4 + 328);
          v394 = *&v52[*MEMORY[0x277CD72F8]];
          v395 = *&v52[*MEMORY[0x277CD7328]];
          v396 = MEMORY[0x277CD7300];
          v397 = *&v52[*MEMORY[0x277CD7300]];
          v746 = v52;
          v747 = v794;
          LODWORD(v748) = v739;
          *(&v748 + 1) = v394;
          v749 = v395;
          v750 = 0;
          v751 = v397;
          v398 = &v52[*MEMORY[0x277CD7320]];
          v399 = atomic_load_explicit(v398, memory_order_acquire);
          if (!v399)
          {
            MPSAutoTexture::AllocateTexture(v398, 0);
            v399 = atomic_load_explicit(v398, memory_order_acquire);
          }

          v750 = v399;
          v400 = *&v212[*v396];
          *&v753 = v212;
          *(&v753 + 1) = &v767;
          LODWORD(v754) = v738;
          v755 = v217;
          v756 = v216;
          v757 = v215;
          v758 = v400;
          *&v759 = v731;
          *(&v759 + 1) = v729;
          *&v761 = v363;
          *(&v761 + 1) = v724;
          *&v760 = v727;
          *(&v760 + 1) = 1;
          v763 = *(a4 + 240);
          v762 = *v735;
          v764 = *(a4 + 304);
          if ((*(v714 + *MEMORY[0x277CD7378]) & 8) != 0)
          {
            v692 = *(v714 + *MEMORY[0x277CD7360]);
            if (!v692)
            {
              v693 = objc_opt_class();
              v692 = NSStringFromClass(v693);
            }

            v401 = a2;
            objc_msgSend_pushDebugGroup_(a2, v234, v692, v236, v237, v238, v239, v240);
          }

          else
          {
            v401 = 0;
          }

          v35 = (*(v714 + 288))(*(v714 + 304), a2, a3, &v746);
          if (v401)
          {
            objc_msgSend_popDebugGroup(v401, v402, v403, v404, v405, v406, v407, v408);
          }

          if (v35)
          {
            if (MTLReportFailureTypeEnabled())
            {
              v694 = objc_opt_class();
              NSStringFromClass(v694);
              MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNArithmetic.mm", 0x736, @"[%@ encode...] partial computation failed", v695, v696, v697, v698);
            }

            goto LABEL_207;
          }

          if (v225)
          {
            v409 = &v225[*MEMORY[0x277CD7320]];
            v410 = atomic_load_explicit(v409, memory_order_acquire);
            if ((v409[56] & 2) != 0)
            {
              if (*(v409 + 13) < 2u)
              {
                v411 = 2;
              }

              else
              {
                v411 = 3;
              }
            }

            else if (v410)
            {
              v411 = objc_msgSend_textureType(v410, v402, v403, v404, v405, v406, v407, v408);
            }

            else
            {
              v411 = objc_msgSend_textureType(*(v409 + 5), v402, v403, v404, v405, v406, v407, v408);
            }

            v412 = *&v225[*MEMORY[0x277CD72F0]] - 1;
            if (v412 > 4)
            {
              v413 = 0;
            }

            else
            {
              v413 = dword_239D7D348[v412];
            }

            if (v411 == 3)
            {
              ++v413;
            }

            if ((v225[*MEMORY[0x277CD7318] + 3] & 3) != 0)
            {
              v413 |= 4u;
            }

            v739 = v413;
          }

          v35 = 0;
          v212 = *(a4 + 120);
          v213 = *(a4 + 208);
          v214 = *(a4 + 216);
          v729 = *(a4 + 184);
          v731 = *(a4 + 176);
          v733 = *(a4 + 200);
          v727 = *(a4 + 192);
          v738 = *(a4 + 136);
          v216 = *(a4 + 152);
          v215 = *(a4 + 160);
          v716 = v225;
          v217 = *(a4 + 144);
          v226 = objc_msgSend_height(v225, v402, v403, v404, v405, v406, v407, v408);
        }

        if (v226 <= v213 && v720)
        {
          v414 = 0;
          v415 = v225;
          v416 = objc_msgSend_featureChannels(v225, v227, v228, v229, v230, v231, v232, v233);
LABEL_185:
          if (v416 > v217 || !v721)
          {
            v610 = *(a4 + 120);
            v611 = *(a4 + 136);
            v613 = *(a4 + 152);
            v612 = *(a4 + 160);
            if (v613 == 3)
            {
              v614 = objc_msgSend_pixelFormat(*(a4 + 160), v417, v418, v419, v420, v421, v422, v423);
              v616 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v612, v615, v614, 2, 0, 1, 0, 1);
              if (v616)
              {
                if ((objc_msgSend_retainedReferences(a3, v417, v418, v419, v420, v421, v422, v423) & 1) == 0)
                {
                  v617 = v616;
                  v744[0] = MEMORY[0x277D85DD0];
                  v744[1] = 3221225472;
                  v744[2] = sub_239BB926C;
                  v744[3] = &unk_278B28F28;
                  v744[4] = v616;
                  objc_msgSend_addCompletedHandler_(a3, v618, v744, v619, v620, v621, v622, v623);
                }

                v624 = *&v610[*MEMORY[0x277CD7318]];
                v625 = objc_alloc(MEMORY[0x277CD7218]);
                if ((v624 & 0xE000000) != 0)
                {
                  v631 = objc_msgSend_initWithTexture_featureChannels_(v625, v626, v616, BYTE3(v624) & 0xF, v627, v628, v629, v630);
                }

                else
                {
                  v631 = objc_msgSend_initWithTexture_featureChannels_(v625, v626, v616, 1, v627, v628, v629, v630);
                }

                v610 = v631;
                v612 = objc_msgSend_texture(v610, v632, v633, v634, v635, v636, v637, v638);
                v613 = objc_msgSend_textureType(v610, v639, v640, v641, v642, v643, v644, v645);
                objc_msgSend_featureChannels(v610, v646, v647, v648, v649, v650, v651, v652);
                v611 &= ~1u;
              }

              else
              {
                v613 = 3;
              }
            }

            v653 = *MEMORY[0x277CD7318];
            v794[0] = *(v415 + v653);
            v767 = *&v610[v653];
            v654 = BYTE3(v767) & 0xF;
            if (v654 > 2)
            {
              v655 = 4;
            }

            else
            {
              v655 = qword_239D7D360[v654];
            }

            v765 = *(a4 + 328);
            v656 = *(v415 + *MEMORY[0x277CD72F8]);
            v657 = *(v415 + *MEMORY[0x277CD7328]);
            v658 = MEMORY[0x277CD7300];
            v659 = *(v415 + *MEMORY[0x277CD7300]);
            v746 = v415;
            v747 = v794;
            LODWORD(v748) = v739;
            *(&v748 + 1) = v656;
            v749 = v657;
            v750 = 0;
            v751 = v659;
            v660 = (v415 + *MEMORY[0x277CD7320]);
            v661 = atomic_load_explicit(v660, memory_order_acquire);
            if (!v661)
            {
              MPSAutoTexture::AllocateTexture(v660, 0);
              v661 = atomic_load_explicit(v660, memory_order_acquire);
            }

            v750 = v661;
            v662 = *&v610[*v658];
            v663 = *(a4 + 192);
            v761 = *(a4 + 208);
            v664 = *(a4 + 176);
            v760 = v663;
            *&v753 = v610;
            *(&v753 + 1) = &v767;
            LODWORD(v754) = v611;
            v755 = v655;
            v756 = v613;
            v757 = v612;
            v758 = v662;
            v759 = v664;
            *(&v760 + 1) = objc_msgSend_width(v415, v417, v418, v419, v420, v421, v422, v423);
            *&v761 = objc_msgSend_height(v415, v665, v666, v667, v668, v669, v670, v671);
            *(&v761 + 1) = 1;
            v763 = *(a4 + 240);
            v762 = *v735;
            v764 = *(a4 + 304);
            if ((*(v717 + *MEMORY[0x277CD7378]) & 8) != 0)
            {
              v706 = *(v717 + *MEMORY[0x277CD7360]);
              if (!v706)
              {
                v707 = objc_opt_class();
                v706 = NSStringFromClass(v707);
              }

              v678 = a2;
              objc_msgSend_pushDebugGroup_(a2, v672, v706, v673, v674, v675, v676, v677);
            }

            else
            {
              v678 = 0;
            }

            v35 = (*(v717 + 288))(*(v717 + 304), a2, a3, &v746);
            if (v678)
            {
              objc_msgSend_popDebugGroup(v678, v679, v680, v681, v682, v683, v684, v685);
            }

            if (v35 && MTLReportFailureTypeEnabled())
            {
              v708 = objc_opt_class();
              NSStringFromClass(v708);
              MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNArithmetic.mm", 0x812, @"[%@ encode...] partial computation failed", v709, v710, v711, v712);
            }
          }

          goto LABEL_207;
        }

        if (objc_msgSend_featureChannels(v225, v227, v228, v229, v230, v231, v232, v233) <= v217 && v721)
        {
          v415 = 0;
          v725 = v214;
          if (v216 != 3)
          {
            goto LABEL_159;
          }
        }

        else
        {
          v431 = objc_msgSend_width(v225, v424, v425, v426, v427, v428, v429, v430);
          objc_msgSend_featureChannels(*a4, v432, v433, v434, v435, v436, v437, v438);
          v446 = objc_msgSend_featureChannels(*a4, v439, v440, v441, v442, v443, v444, v445);
          v454 = objc_msgSend_numberOfImages(*a4, v447, v448, v449, v450, v451, v452, v453);
          v455 = objc_autoreleasePoolPush();
          v457 = objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_numberOfImages_usage_(MEMORY[0x277CD7220], v456, 4, v431, 1, v446, v454, 19);
          v458 = &unk_239D7D2F8;
          if ((PixelInfo & 0xFF00000000) > 0x1000000000)
          {
            v458 = qword_239D7D320;
          }

          v794[0] = MPSDevice::GetPixelInfo(v736, v458[(PixelInfo >> 24) & 0xF], MPSImageFeatureChannelFormatNone);
          v746 = objc_msgSend_width(v457, v459, v460, v461, v462, v463, v464, v465);
          v747 = objc_msgSend_height(v457, v466, v467, v468, v469, v470, v471, v472);
          *&v748 = (objc_msgSend_featureChannels(v457, v473, v474, v475, v476, v477, v478, v479) + 3) >> 2;
          v480 = MPSAutoCache::GetTempTexture();
          v481 = objc_alloc(MEMORY[0x277CD7218]);
          v489 = objc_msgSend_featureChannels(v457, v482, v483, v484, v485, v486, v487, v488);
          v212 = objc_msgSend_initWithTexture_featureChannels_(v481, v490, v480, v489, v491, v492, v493, v494);
          objc_autoreleasePoolPop(v455);
          v733 = objc_msgSend_width(v212, v495, v496, v497, v498, v499, v500, v501);
          v213 = objc_msgSend_height(v212, v502, v503, v504, v505, v506, v507, v508);
          v523 = objc_msgSend_numberOfImages(v212, v509, v510, v511, v512, v513, v514, v515);
          v524 = &v212[*MEMORY[0x277CD7320]];
          v525 = atomic_load_explicit(v524, memory_order_acquire);
          if ((v524[56] & 2) != 0)
          {
            if (*(v524 + 13) < 2u)
            {
              v526 = 2;
            }

            else
            {
              v526 = 3;
            }
          }

          else if (v525)
          {
            v526 = objc_msgSend_textureType(v525, v516, v517, v518, v519, v520, v521, v522);
          }

          else
          {
            v526 = objc_msgSend_textureType(*(v524 + 5), v516, v517, v518, v519, v520, v521, v522);
          }

          v527 = *&v212[*MEMORY[0x277CD72F0]] - 1;
          if (v527 > 4)
          {
            v528 = 0;
          }

          else
          {
            v528 = dword_239D7D348[v527];
          }

          if (v526 == 3)
          {
            ++v528;
          }

          if ((*&v212[*MEMORY[0x277CD7318]] & 0x3000000) != 0)
          {
            v528 |= 4u;
          }

          v738 = v528;
          v215 = objc_msgSend_texture(v212, v516, v517, v518, v519, v520, v521, v522);
          v216 = objc_msgSend_textureType(v212, v529, v530, v531, v532, v533, v534, v535);
          v217 = objc_msgSend_featureChannels(v212, v536, v537, v538, v539, v540, v541, v542);
          v729 = 0;
          v731 = 0;
          v727 = 0;
          v415 = v212;
          v725 = v523;
          if (v216 != 3)
          {
            goto LABEL_159;
          }
        }

        if (v217 <= 4)
        {
          v543 = objc_msgSend_pixelFormat(v215, v424, v425, v426, v427, v428, v429, v430);
          v545 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v215, v544, v543, 2, 0, 1, 0, 1);
          if (v545)
          {
            if ((objc_msgSend_retainedReferences(a3, v424, v425, v426, v427, v428, v429, v430) & 1) == 0)
            {
              v546 = v545;
              v745[0] = MEMORY[0x277D85DD0];
              v745[1] = 3221225472;
              v745[2] = sub_239BB9264;
              v745[3] = &unk_278B28F28;
              v745[4] = v545;
              objc_msgSend_addCompletedHandler_(a3, v547, v745, v548, v549, v550, v551, v552);
            }

            v553 = v213;
            v554 = *&v212[*MEMORY[0x277CD7318]];
            v555 = objc_alloc(MEMORY[0x277CD7218]);
            if ((v554 & 0xE000000) != 0)
            {
              v561 = objc_msgSend_initWithTexture_featureChannels_(v555, v556, v545, BYTE3(v554) & 0xF, v557, v558, v559, v560);
            }

            else
            {
              v561 = objc_msgSend_initWithTexture_featureChannels_(v555, v556, v545, 1, v557, v558, v559, v560);
            }

            v212 = v561;
            v215 = objc_msgSend_texture(v212, v562, v563, v564, v565, v566, v567, v568);
            v216 = objc_msgSend_textureType(v212, v569, v570, v571, v572, v573, v574, v575);
            v217 = objc_msgSend_featureChannels(v212, v576, v577, v578, v579, v580, v581, v582);
            v738 &= ~1u;
          }

          else
          {
            v553 = v213;
            v216 = 3;
          }

          goto LABEL_161;
        }

LABEL_159:
        v553 = v213;
LABEL_161:
        v583 = *MEMORY[0x277CD7318];
        v794[0] = *&v225[v583];
        v767 = *&v212[v583];
        v765 = *(a4 + 328);
        v584 = *&v225[*MEMORY[0x277CD72F8]];
        v585 = *&v225[*MEMORY[0x277CD7328]];
        v586 = MEMORY[0x277CD7300];
        v587 = *&v225[*MEMORY[0x277CD7300]];
        v746 = v225;
        v747 = v794;
        LODWORD(v748) = v739;
        *(&v748 + 1) = v584;
        v749 = v585;
        v750 = 0;
        v751 = v587;
        v588 = &v225[*MEMORY[0x277CD7320]];
        v589 = atomic_load_explicit(v588, memory_order_acquire);
        if (!v589)
        {
          MPSAutoTexture::AllocateTexture(v588, 0);
          v589 = atomic_load_explicit(v588, memory_order_acquire);
        }

        v750 = v589;
        v590 = *&v212[*v586];
        *&v753 = v212;
        *(&v753 + 1) = &v767;
        LODWORD(v754) = v738;
        v755 = v217;
        v756 = v216;
        v757 = v215;
        v758 = v590;
        *&v759 = v731;
        *(&v759 + 1) = v729;
        *&v760 = v727;
        *(&v760 + 1) = v733;
        *&v761 = v553;
        *(&v761 + 1) = v725;
        *(&v760 + 1) = objc_msgSend_width(v225, v424, v425, v426, v427, v428, v429, v430);
        *&v761 = 1;
        v763 = *(a4 + 240);
        v762 = *v735;
        v764 = *(a4 + 304);
        if ((*(v719 + *MEMORY[0x277CD7378]) & 8) != 0)
        {
          v699 = *(v719 + *MEMORY[0x277CD7360]);
          if (!v699)
          {
            v700 = objc_opt_class();
            v699 = NSStringFromClass(v700);
          }

          v597 = a2;
          objc_msgSend_pushDebugGroup_(a2, v591, v699, v592, v593, v594, v595, v596);
        }

        else
        {
          v597 = 0;
        }

        v35 = (*(v719 + 288))(*(v719 + 304), a2, a3, &v746);
        if (v597)
        {
          objc_msgSend_popDebugGroup(v597, v598, v599, v600, v601, v602, v603, v604);
        }

        if (v35)
        {
          if (MTLReportFailureTypeEnabled())
          {
            v701 = objc_opt_class();
            NSStringFromClass(v701);
            MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNArithmetic.mm", 0x7A8, @"[%@ encode...] partial computation failed", v702, v703, v704, v705);
          }

          goto LABEL_207;
        }

        if (v415)
        {
          v605 = v415 + *MEMORY[0x277CD7320];
          v606 = atomic_load_explicit(v605, memory_order_acquire);
          if ((v605[56] & 2) != 0)
          {
            if (*(v605 + 13) < 2u)
            {
              v607 = 2;
            }

            else
            {
              v607 = 3;
            }
          }

          else if (v606)
          {
            v607 = objc_msgSend_textureType(v606, v598, v599, v600, v601, v602, v603, v604);
          }

          else
          {
            v607 = objc_msgSend_textureType(*(v605 + 5), v598, v599, v600, v601, v602, v603, v604);
          }

          v608 = *(v415 + *MEMORY[0x277CD72F0]) - 1;
          if (v608 > 4)
          {
            v609 = 0;
          }

          else
          {
            v609 = dword_239D7D348[v608];
          }

          if (v607 == 3)
          {
            ++v609;
          }

          if ((*(v415 + *MEMORY[0x277CD7318] + 3) & 3) != 0)
          {
            v609 |= 4u;
          }

          v739 = v609;
        }

        v35 = 0;
        v217 = *(a4 + 144);
        v414 = v415;
        v416 = objc_msgSend_featureChannels(v415, v598, v599, v600, v601, v602, v603, v604);
        goto LABEL_185;
      }

LABEL_17:
      v44 = 1;
      goto LABEL_19;
    }
  }

  return 0;
}

uint64_t sub_239BB87B4(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v260 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + *MEMORY[0x277CD7378]);
  v12 = objc_msgSend_primaryStrideInPixelsX(a1, a2, a3, a4, a5, a6, a7, a8);
  v229 = objc_msgSend_primaryStrideInPixelsY(a1, v13, v14, v15, v16, v17, v18, v19);
  v27 = objc_msgSend_secondaryStrideInPixelsX(a1, v20, v21, v22, v23, v24, v25, v26);
  v42 = objc_msgSend_secondaryStrideInPixelsY(a1, v28, v29, v30, v31, v32, v33, v34);
  v43 = a1;
  *&v44 = *(a4 + 240);
  v45 = *(a4 + 248);
  v46.i64[0] = *(a4 + 252);
  v217 = v46;
  v47 = *(a4 + 264);
  v48 = *(a4 + 272);
  v49 = *(a4 + 296);
  v227 = v44;
  if (v49 >= 10)
  {
    v189 = v43;
    v190 = MTLReportFailureTypeEnabled();
    *&v44 = v227;
    v191 = v190;
    v43 = v189;
    if (v191)
    {
      v192 = objc_opt_class();
      v213 = NSStringFromClass(v192);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNArithmetic.mm", 0x322, @"[%@ encode...] invalid arithmetic operation", v193, v194, v195, v196);
      *&v44 = v227;
      v43 = v189;
    }
  }

  if (*(a4 + 312) == 1)
  {
    if (v49 != 2 || *(a4 + 314) == 1)
    {
      v12 = 1;
      v229 = 1;
      v27 = 1;
      v42 = 1;
      v50 = 1uLL;
      v218 = 1;
      v51 = *(a4 + 114);
      if (v11)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v12 = 1;
    v229 = 1;
    v47 = 1;
  }

  else if (!v47)
  {
    if (v48)
    {
      v52 = (a4 + 170);
    }

    else
    {
      v52 = (a4 + 216);
    }

    v50 = 0.0;
    v218 = v48;
    v51 = *v52;
    if (v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v50 = v47;
  v218 = v48;
  v51 = *(a4 + 114);
  if (v11)
  {
    goto LABEL_13;
  }

LABEL_12:
  if (*(a4 + 56) + v51 > *(a4 + 216))
  {
    v205 = v43;
    v206 = MTLReportFailureTypeEnabled();
    *&v44 = v227;
    v207 = v206;
    v43 = v205;
    if (v207)
    {
      v208 = objc_opt_class();
      v213 = NSStringFromClass(v208);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNArithmetic.mm", 0x338, @"[%@ encode...] not enough destination feature channels:  destinationFeatureChannelOffset + src.featureChannels > dest.featureChannels", v209, v210, v211, v212);
      *&v44 = v227;
      v43 = v205;
    }
  }

LABEL_13:
  v216 = v51;
  v53 = *(a4 + 80);
  v220 = v42;
  v222 = v12;
  v54 = (v12 | v229) != 0;
  v224 = v27;
  v55 = (v27 | v42) == 0;
  v56 = *(a4 + 280);
  v57 = 2 * v49;
  if (v49 == 4)
  {
    v57 = 2 * *(a4 + 304) + 8;
  }

  v58 = v57 & 0x1E;
  v59 = (*(a4 + 136) >> 15) & 0x1E00 | (v53 >> 19) & 0x1E0 | v58;
  v60 = *(a4 + 184);
  v61 = *(a4 + 72);
  v62 = *(a4 + 128);
  if (v58 == 8 && *(a4 + 260) < 0.0)
  {
    v197 = v43;
    v215 = *(a4 + 280);
    v198 = MTLReportFailureTypeEnabled();
    v56 = v215;
    *&v44 = v227;
    v199 = v198;
    v43 = v197;
    if (v199)
    {
      v200 = objc_opt_class();
      v213 = NSStringFromClass(v200);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNArithmetic.mm", 0x356, @"[%@ encode...] equality threshold is negative.", v201, v202, v203, v204);
      v56 = v215;
      *&v44 = v227;
      v43 = v197;
    }
  }

  v63 = vrev64_s32(*&v44);
  if (*(a4 + 312) == 1)
  {
    v214 = 0;
LABEL_19:
    v64 = a4;
    goto LABEL_27;
  }

  if ((v53 & 0xF000000) == 0x4000000 && (vaddvq_s32(vandq_s8(vuzp1q_s32(vcgtq_u64(vdupq_n_s64(2uLL), v56), vcgtq_u64(vdupq_n_s64(0x400uLL), *(a4 + 32))), xmmword_239D7CEE0)) & 0xF) == 0)
  {
    if (v54 || v55)
    {
      v214 = v55 && v54;
    }

    else
    {
      v59 |= 1u;
      v214 = 1;
    }

    goto LABEL_19;
  }

  v64 = a4;
  v214 = 0;
LABEL_27:
  v65 = objc_msgSend_maxBatchSize(v43, v35, v36, v37, v38, v39, v40, v41, v213);
  v243 = -1;
  *&v66 = -1;
  *(&v66 + 1) = -1;
  v242 = v66;
  v241 = v66;
  v240 = v66;
  v239[1] = v60 & 0x3F | ((v61 & 0x3F) << 6) & 0xFFF | ((v62 & 0x3F) << 12);
  v239[2] = v59;
  v239[0] = v65;
  MPSLibrary::CreateUberShaderKey();
  *v69.i8 = vmvn_s8(vceq_f32(*v217.i8, COERCE_FLOAT32X2_T(-COERCE_DOUBLE(0x7F0000007FLL))));
  v67 = *(v64 + 312);
  v68 = v69.i8[0] | v69.i8[4];
  v69.i64[0] = 0;
  v70 = 1.0;
  if ((v68 & 1) == 0)
  {
    v70 = 0.0;
  }

  if (*(v64 + 312))
  {
    v71 = 0.0;
  }

  else
  {
    v71 = v45;
  }

  v72 = v227;
  *(&v72 + 2) = v71;
  LODWORD(v73) = vmul_f32(v63, *&v227).u32[0];
  HIDWORD(v73) = vdiv_f32(v63, *&v227).i32[1];
  v232 = v73;
  if (!v67)
  {
    *v69.i32 = v70;
  }

  v231[0] = v72;
  v231[1] = vextq_s8(vextq_s8(v69, v69, 4uLL), v217, 0xCuLL);
  v233 = *(v64 + 260);
  *&v74 = v222;
  *(&v74 + 1) = v229;
  v235 = v50;
  v234 = v74;
  *&v74 = v224;
  *(&v74 + 1) = v220;
  v237 = v218;
  v236 = v74;
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  objc_msgSend_setComputePipelineState_(a2, v76, PipelineStateForMPSKey, v77, v78, v79, v80, v81, 0, 0, 0, 0, 0);
  v89 = objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v82, v83, v84, v85, v86, v87, v88);
  if (v89 <= 1)
  {
    v97 = 1;
  }

  else
  {
    v97 = v89;
  }

  if (v97 >= 0x10)
  {
    v98 = 16;
  }

  else
  {
    v98 = v97;
  }

  v99 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v90, v91, v92, v93, v94, v95, v96);
  v107 = *(v64 + 208);
  v108 = v64;
  if (v214)
  {
    v221 = (v107 + 1) >> 1;
    v109 = (WORD1(v107) + 1) >> 1;
    v110 = v216;
    v111 = v216 + 3;
    v112 = v99 / v98;
    if (v98 <= v99)
    {
      goto LABEL_42;
    }

LABEL_50:
    v225 = 0;
    v226 = v112;
    v113 = v111 >> 2;
    if (v110 >= 5)
    {
      goto LABEL_43;
    }

LABEL_51:
    v119 = 65537;
    goto LABEL_52;
  }

  LODWORD(v221) = v107;
  v109 = WORD1(v107);
  v110 = v216;
  v111 = v216 + 3;
  v112 = v99 / v98;
  if (v98 > v99)
  {
    goto LABEL_50;
  }

LABEL_42:
  v225 = (v112 + v109 - 1) / v112;
  v226 = v112;
  v113 = v111 >> 2;
  if (v110 < 5)
  {
    goto LABEL_51;
  }

LABEL_43:
  v114 = __clz(0x80000000 / v113);
  v115 = (0x80000000 / v113) >> (16 - v114);
  v116 = v114 + 15;
  v117 = -65536 * v113 * v115 / v113;
  if (v117 <= v115)
  {
    v118 = v115;
  }

  else
  {
    v118 = v115 + 1;
  }

  if (v117 <= v115)
  {
    LOWORD(v115) = 0;
  }

  v119 = (v116 << 48) | ((v117 - v115) << 32) | (v118 << 16) | v113;
LABEL_52:
  v219 = v113;
  v223 = HIWORD(*(v64 + 208));
  v238 = v119;
  v120 = *(v64 + 176);
  v228 = v98;
  if ((*(v64 + 184) & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a2, v100, v120, 0, v103, v104, v105, v106);
    goto LABEL_71;
  }

  v125 = objc_msgSend_count(v120, v100, v101, v102, v103, v104, v105, v106);
  v258 = 0u;
  v259 = 0u;
  v256 = 0u;
  v257 = 0u;
  v254 = 0u;
  v255 = 0u;
  v252 = 0u;
  v253 = 0u;
  v250 = 0u;
  v251 = 0u;
  v248 = 0u;
  v249 = 0u;
  v246 = 0u;
  v247 = 0u;
  v244 = 0u;
  v245 = 0u;
  if (v65)
  {
    v126 = v125;
    for (i = 0; i < v65; i += v129)
    {
      if (v126 <= i)
      {
        v128 = 0;
        if (v65 - i >= 0x20)
        {
          v129 = 32;
        }

        else
        {
          v129 = v65 - i;
        }

        v130 = v129;
        if (!v129)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v126 - i >= 0x20)
        {
          v128 = 32;
          objc_msgSend_getObjects_range_(v120, v121, &v244, i, 32, v122, v123, v124);
        }

        else
        {
          v128 = v126 - i;
          objc_msgSend_getObjects_range_(v120, v121, &v244, i, v126 - i, v122, v123, v124);
        }

        if (v65 - i >= 0x20)
        {
          v129 = 32;
        }

        else
        {
          v129 = v65 - i;
        }

        v130 = v129 - v128;
        if (v129 == v128)
        {
          goto LABEL_56;
        }
      }

      bzero(&v244 + 8 * v128, 8 * v130);
LABEL_56:
      objc_msgSend_setTextures_withRange_(a2, v121, &v244, i, v129, v122, v123, v124);
    }
  }

LABEL_71:
  objc_msgSend_setBytes_length_atIndex_(a2, v121, v108 + 200, 40, 0, v122, v123, v124);
  v138 = *(v108 + 64);
  if ((*(v108 + 72) & 2) == 0)
  {
    objc_msgSend_setTexture_atIndex_(a2, v131, *(v108 + 64), v65, v134, v135, v136, v137);
    goto LABEL_90;
  }

  v143 = objc_msgSend_count(*(v108 + 64), v131, v132, v133, v134, v135, v136, v137);
  v258 = 0u;
  v259 = 0u;
  v256 = 0u;
  v257 = 0u;
  v254 = 0u;
  v255 = 0u;
  v252 = 0u;
  v253 = 0u;
  v250 = 0u;
  v251 = 0u;
  v248 = 0u;
  v249 = 0u;
  v246 = 0u;
  v247 = 0u;
  v244 = 0u;
  v245 = 0u;
  if (v65)
  {
    v144 = v143;
    for (j = 0; j < v65; j += v147)
    {
      if (v144 <= j)
      {
        v146 = 0;
        if (v65 - j >= 0x20)
        {
          v147 = 32;
        }

        else
        {
          v147 = v65 - j;
        }

        v148 = v147;
        if (!v147)
        {
          goto LABEL_75;
        }
      }

      else
      {
        if (v144 - j >= 0x20)
        {
          v146 = 32;
          objc_msgSend_getObjects_range_(v138, v139, &v244, j, 32, v140, v141, v142);
        }

        else
        {
          v146 = v144 - j;
          objc_msgSend_getObjects_range_(v138, v139, &v244, j, v144 - j, v140, v141, v142);
        }

        if (v65 - j >= 0x20)
        {
          v147 = 32;
        }

        else
        {
          v147 = v65 - j;
        }

        v148 = v147 - v146;
        if (v147 == v146)
        {
          goto LABEL_75;
        }
      }

      bzero(&v244 + 8 * v146, 8 * v148);
LABEL_75:
      objc_msgSend_setTextures_withRange_(a2, v139, &v244, j + v65, v147, v140, v141, v142);
    }
  }

LABEL_90:
  objc_msgSend_setBytes_length_atIndex_(a2, v139, v108 + 88, 32, 1, v140, v141, v142);
  v156 = *(v108 + 120);
  if ((*(v108 + 128) & 2) != 0)
  {
    v161 = objc_msgSend_count(v156, v149, v150, v151, v152, v153, v154, v155);
    v258 = 0u;
    v259 = 0u;
    v256 = 0u;
    v257 = 0u;
    v254 = 0u;
    v255 = 0u;
    v252 = 0u;
    v253 = 0u;
    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    v244 = 0u;
    v245 = 0u;
    if (!v65)
    {
      goto LABEL_109;
    }

    v162 = v161;
    v163 = 0;
    while (1)
    {
      if (v162 <= v163)
      {
        v164 = 0;
        if (v65 - v163 >= 0x20)
        {
          v165 = 32;
        }

        else
        {
          v165 = v65 - v163;
        }

        v166 = v165;
        if (!v165)
        {
          goto LABEL_94;
        }
      }

      else
      {
        if (v162 - v163 >= 0x20)
        {
          v164 = 32;
          objc_msgSend_getObjects_range_(v156, v157, &v244, v163, 32, v158, v159, v160);
        }

        else
        {
          v164 = v162 - v163;
          objc_msgSend_getObjects_range_(v156, v157, &v244, v163, v162 - v163, v158, v159, v160);
        }

        if (v65 - v163 >= 0x20)
        {
          v165 = 32;
        }

        else
        {
          v165 = v65 - v163;
        }

        v166 = v165 - v164;
        if (v165 == v164)
        {
          goto LABEL_94;
        }
      }

      bzero(&v244 + 8 * v164, 8 * v166);
LABEL_94:
      objc_msgSend_setTextures_withRange_(a2, v157, &v244, v163 + 2 * v65, v165, v158, v159, v160);
      v163 += v165;
      if (v163 >= v65)
      {
        goto LABEL_109;
      }
    }
  }

  objc_msgSend_setTexture_atIndex_(a2, v149, *(v108 + 120), 2 * v65, v152, v153, v154, v155);
LABEL_109:
  objc_msgSend_setBytes_length_atIndex_(a2, v157, v108 + 144, 32, 2, v158, v159, v160);
  objc_msgSend_setBytes_length_atIndex_(a2, v167, v231, 96, 30, v168, v169, v170);
  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v172, Sampler, 0, v173, v174, v175, v176);
  v177 = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a2, v178, v177, 1, v179, v180, v181, v182);
  *&v244 = (v228 + v221 - 1) / v228;
  *(&v244 + 1) = v225;
  *&v245 = v219 * v223;
  v230[0] = v228;
  v230[1] = v226;
  v230[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v183, &v244, v230, v184, v185, v186, v187);
  return MPSLibrary::ReleaseMPSKey();
}

void *sub_239BBB488(void *a1, void *a2)
{
  v4 = malloc_type_malloc(0x98uLL, 0x10A0040D60EB3F0uLL);
  objc_msgSend_useFloat32Weights(a2, v5, v6, v7, v8, v9, v10, v11);
  objc_msgSend_useFloat32Weights(a2, v12, v13, v14, v15, v16, v17, v18);
  v4[17] = 0;
  v4[12] = 0;
  v4[13] = 0;
  sub_239BD9D6C(a1, a2, v4, v19, v20, v21, v22, v23);
  *(v4 + 144) = 0;
  v4[14] = 0;
  v4[15] = 0;
  if (objc_msgSend_inputWeights(a2, v24, v25, v26, v27, v28, v29, v30))
  {
    v38 = objc_msgSend_inputWeights(a2, v31, v32, v33, v34, v35, v36, v37);
    if ((objc_msgSend_load(v38, v39, v40, v41, v42, v43, v44, v45) & 1) == 0)
    {
      goto LABEL_22;
    }

    v53 = objc_msgSend_inputWeights(a2, v46, v47, v48, v49, v50, v51, v52);
    v61 = objc_msgSend_descriptor(v53, v54, v55, v56, v57, v58, v59, v60);
    v69 = v61;
    if (v61)
    {
      objc_msgSend_neuronInfo(v61, v62, v63, v64, v65, v66, v67, v68);
    }

    else
    {
      v232 = 0uLL;
      v233 = 0;
    }

    *(v4 + 7) = v232;
    v4[16] = v233;
    v70 = objc_msgSend_useLayerInputUnitTransformMode(a2, v62, v63, v64, v65, v66, v67, v68);
    v78 = objc_msgSend_inputWeights(a2, v71, v72, v73, v74, v75, v76, v77);
    if (v70)
    {
      v86 = objc_msgSend_biasTerms(v78, v79, v80, v81, v82, v83, v84, v85);
      v94 = objc_msgSend_outputFeatureChannels(v69, v87, v88, v89, v90, v91, v92, v93);
      MPSDevice = MPSDevice::GetMPSDevice();
      v103 = 0;
      if (v86)
      {
        if (MPSDevice)
        {
          v104 = 4 * v94;
          v105 = (*(*MPSDevice + 24))(MPSDevice);
          v111 = objc_msgSend_newBufferWithLength_options_(a1, v106, (v104 + 12) & 0x3FFFFFFF0, 16 * v105, v107, v108, v109, v110);
          v103 = v111;
          if (v111)
          {
            v112 = objc_msgSend_contents(v111, v96, v97, v98, v99, v100, v101, v102);
            memcpy(v112, v86, v104);
          }
        }
      }

      v4[17] = v103;
    }

    else
    {
      if (objc_msgSend_dataType(v78, v79, v80, v81, v82, v83, v84, v85) != 268435472)
      {
        v120 = objc_msgSend_inputWeights(a2, v113, v114, v115, v116, v117, v118, v119);
        if (objc_msgSend_dataType(v120, v121, v122, v123, v124, v125, v126, v127) != 536870920)
        {
          v128 = objc_msgSend_inputWeights(a2, v113, v114, v115, v116, v117, v118, v119);
          if (objc_msgSend_dataType(v128, v129, v130, v131, v132, v133, v134, v135) != 8)
          {
            v136 = objc_msgSend_inputWeights(a2, v113, v114, v115, v116, v117, v118, v119);
            objc_msgSend_dataType(v136, v137, v138, v139, v140, v141, v142, v143);
          }
        }
      }

      v144 = objc_msgSend_inputWeights(a2, v113, v114, v115, v116, v117, v118, v119);
      v4[12] = sub_239BD9EEC(a1, v144, 1, v145, v146, v147, v148, v149);
      v157 = objc_msgSend_inputWeights(a2, v150, v151, v152, v153, v154, v155, v156);
      if (!objc_msgSend_biasTerms(v157, v158, v159, v160, v161, v162, v163, v164))
      {
        goto LABEL_18;
      }
    }

    *(v4 + 144) = 1;
LABEL_18:
    v165 = objc_msgSend_inputWeights(a2, v96, v97, v98, v99, v100, v101, v102);
    objc_msgSend_purge(v165, v166, v167, v168, v169, v170, v171, v172);
  }

  if (objc_msgSend_recurrentWeights(a2, v31, v32, v33, v34, v35, v36, v37))
  {
    v180 = objc_msgSend_recurrentWeights(a2, v173, v174, v175, v176, v177, v178, v179);
    if (objc_msgSend_load(v180, v181, v182, v183, v184, v185, v186, v187))
    {
      v195 = objc_msgSend_recurrentWeights(a2, v188, v189, v190, v191, v192, v193, v194);
      objc_msgSend_descriptor(v195, v196, v197, v198, v199, v200, v201, v202);
      v210 = objc_msgSend_recurrentWeights(a2, v203, v204, v205, v206, v207, v208, v209);
      v4[13] = sub_239BD9EEC(a1, v210, 0, v211, v212, v213, v214, v215);
      v223 = objc_msgSend_recurrentWeights(a2, v216, v217, v218, v219, v220, v221, v222);
      objc_msgSend_purge(v223, v224, v225, v226, v227, v228, v229, v230);
      return v4;
    }

LABEL_22:
    free(v4);
    return 0;
  }

  return v4;
}

void *sub_239BBB70C(char *a1, void *a2)
{
  v4 = malloc_type_malloc(0x1A8uLL, 0x10A0040C2E34A0CuLL);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  objc_msgSend_cellClipThreshold(a2, v5, v6, v7, v8, v9, v10, v11);
  *(v4 + 105) = v12;
  *(v4 + 419) = objc_msgSend_coupleForgetGateToInputGate(a2, v13, v14, v15, v16, v17, v18, v19);
  *(v4 + 418) = objc_msgSend_memoryWeightsAreDiagonal(a2, v20, v21, v22, v23, v24, v25, v26);
  sub_239BD9D6C(a1, a2, v4, v27, v28, v29, v30, v31);
  *(v4 + 208) = 0;
  v4[48] = 0;
  v39 = objc_msgSend_inputGateInputWeights(a2, v32, v33, v34, v35, v36, v37, v38);
  v47 = objc_msgSend_inputGateRecurrentWeights(a2, v40, v41, v42, v43, v44, v45, v46);
  v55 = objc_msgSend_inputGateMemoryWeights(a2, v48, v49, v50, v51, v52, v53, v54);
  sub_239BD9FCC(v4 + 96, a1, a2, v39, v47, v55, v56, v57);
  v65 = objc_msgSend_forgetGateInputWeights(a2, v58, v59, v60, v61, v62, v63, v64);
  v73 = objc_msgSend_forgetGateRecurrentWeights(a2, v66, v67, v68, v69, v70, v71, v72);
  v81 = objc_msgSend_forgetGateMemoryWeights(a2, v74, v75, v76, v77, v78, v79, v80);
  sub_239BD9FCC(v4 + 168, a1, a2, v65, v73, v81, v82, v83);
  v91 = objc_msgSend_cellGateInputWeights(a2, v84, v85, v86, v87, v88, v89, v90);
  v99 = objc_msgSend_cellGateRecurrentWeights(a2, v92, v93, v94, v95, v96, v97, v98);
  v107 = objc_msgSend_cellGateMemoryWeights(a2, v100, v101, v102, v103, v104, v105, v106);
  sub_239BD9FCC(v4 + 240, a1, a2, v91, v99, v107, v108, v109);
  v117 = objc_msgSend_outputGateInputWeights(a2, v110, v111, v112, v113, v114, v115, v116);
  v125 = objc_msgSend_outputGateRecurrentWeights(a2, v118, v119, v120, v121, v122, v123, v124);
  v133 = objc_msgSend_outputGateMemoryWeights(a2, v126, v127, v128, v129, v130, v131, v132);
  sub_239BD9FCC(v4 + 312, a1, a2, v117, v125, v133, v134, v135);
  *(v4 + 98) = objc_msgSend_cellToOutputNeuronType(a2, v136, v137, v138, v139, v140, v141, v142);
  objc_msgSend_cellToOutputNeuronParamA(a2, v143, v144, v145, v146, v147, v148, v149);
  *(v4 + 99) = v150;
  objc_msgSend_cellToOutputNeuronParamB(a2, v151, v152, v153, v154, v155, v156, v157);
  *(v4 + 100) = v158;
  objc_msgSend_cellToOutputNeuronParamC(a2, v159, v160, v161, v162, v163, v164, v165);
  *(v4 + 101) = v166;
  return v4;
}

unsigned __int8 *sub_239BBB8C4(void *a1, void *a2)
{
  v4 = malloc_type_malloc(0x108uLL, 0x10A0040E57BB8CDuLL);
  objc_msgSend_useFloat32Weights(a2, v5, v6, v7, v8, v9, v10, v11);
  objc_msgSend_useFloat32Weights(a2, v12, v13, v14, v15, v16, v17, v18);
  sub_239BD9D6C(a1, a2, v4, v19, v20, v21, v22, v23);
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 10) = 0u;
  *(v4 + 124) = 0;
  v4[250] = 0;
  *(v4 + 9) = 0u;
  objc_msgSend_gatePnormValue(a2, v24, v25, v26, v27, v28, v29, v30);
  *(v4 + 63) = v31;
  v39 = objc_msgSend_flipOutputGates(a2, v32, v33, v34, v35, v36, v37, v38);
  *(v4 + 22) = 0;
  *(v4 + 25) = 0;
  *(v4 + 28) = 0;
  v4[256] = v39;
  *(v4 + 23) = 0;
  *(v4 + 26) = 0;
  *(v4 + 29) = 0;
  v236 = *(v4 + 7);
  if (objc_msgSend_inputGateInputWeights(a2, v40, v41, v42, v43, v44, v45, v46))
  {
    v54 = objc_msgSend_inputGateInputWeights(a2, v47, v48, v49, v50, v51, v52, v53);
    if ((sub_239BDA44C(a1, v54, v4 + 12, v4 + 19, v4 + 248, (v4 + 176), &v236, v4[72]) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if (objc_msgSend_inputGateRecurrentWeights(a2, v47, v48, v49, v50, v51, v52, v53))
  {
    v62 = objc_msgSend_inputGateRecurrentWeights(a2, v55, v56, v57, v58, v59, v60, v61);
    if (!objc_msgSend_load(v62, v63, v64, v65, v66, v67, v68, v69))
    {
      goto LABEL_19;
    }

    objc_msgSend_descriptor(v62, v70, v71, v72, v73, v74, v75, v76);
    *(v4 + 13) = sub_239BD9EEC(a1, v62, 0, v77, v78, v79, v80, v81);
    objc_msgSend_biasTerms(v62, v82, v83, v84, v85, v86, v87, v88);
    objc_msgSend_purge(v62, v89, v90, v91, v92, v93, v94, v95);
  }

  if (objc_msgSend_recurrentGateInputWeights(a2, v55, v56, v57, v58, v59, v60, v61))
  {
    v103 = objc_msgSend_recurrentGateInputWeights(a2, v96, v97, v98, v99, v100, v101, v102);
    if ((sub_239BDA44C(a1, v103, v4 + 14, v4 + 20, v4 + 249, (v4 + 200), &v236, v4[72]) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if (objc_msgSend_recurrentGateRecurrentWeights(a2, v96, v97, v98, v99, v100, v101, v102))
  {
    v111 = objc_msgSend_recurrentGateRecurrentWeights(a2, v104, v105, v106, v107, v108, v109, v110);
    if (!objc_msgSend_load(v111, v112, v113, v114, v115, v116, v117, v118))
    {
      goto LABEL_19;
    }

    objc_msgSend_descriptor(v111, v119, v120, v121, v122, v123, v124, v125);
    *(v4 + 15) = sub_239BD9EEC(a1, v111, 0, v126, v127, v128, v129, v130);
    objc_msgSend_biasTerms(v111, v131, v132, v133, v134, v135, v136, v137);
    objc_msgSend_purge(v111, v138, v139, v140, v141, v142, v143, v144);
  }

  if (objc_msgSend_outputGateInputWeights(a2, v104, v105, v106, v107, v108, v109, v110))
  {
    v152 = objc_msgSend_outputGateInputWeights(a2, v145, v146, v147, v148, v149, v150, v151);
    if ((sub_239BDA44C(a1, v152, v4 + 16, v4 + 21, v4 + 250, (v4 + 224), &v236, v4[72]) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if (objc_msgSend_outputGateRecurrentWeights(a2, v145, v146, v147, v148, v149, v150, v151))
  {
    v160 = objc_msgSend_outputGateRecurrentWeights(a2, v153, v154, v155, v156, v157, v158, v159);
    if (!objc_msgSend_load(v160, v161, v162, v163, v164, v165, v166, v167))
    {
      goto LABEL_19;
    }

    objc_msgSend_descriptor(v160, v168, v169, v170, v171, v172, v173, v174);
    *(v4 + 18) = sub_239BD9EEC(a1, v160, 0, v175, v176, v177, v178, v179);
    objc_msgSend_biasTerms(v160, v180, v181, v182, v183, v184, v185, v186);
    objc_msgSend_purge(v160, v187, v188, v189, v190, v191, v192, v193);
  }

  if (objc_msgSend_outputGateInputGateWeights(a2, v153, v154, v155, v156, v157, v158, v159))
  {
    v201 = objc_msgSend_outputGateInputGateWeights(a2, v194, v195, v196, v197, v198, v199, v200);
    if (objc_msgSend_load(v201, v202, v203, v204, v205, v206, v207, v208))
    {
      objc_msgSend_descriptor(v201, v209, v210, v211, v212, v213, v214, v215);
      *(v4 + 17) = sub_239BD9EEC(a1, v201, 0, v216, v217, v218, v219, v220);
      objc_msgSend_biasTerms(v201, v221, v222, v223, v224, v225, v226, v227);
      objc_msgSend_purge(v201, v228, v229, v230, v231, v232, v233, v234);
      return v4;
    }

LABEL_19:
    free(v4);
    return 0;
  }

  return v4;
}

void sub_239BBF664(uint64_t a1, void *a2, void *a3, MPSImage *a4, uint64_t a5, uint64_t a6, MPSRNNRecurrentImageState **a7, __int128 *a8, _OWORD *a9, unsigned __int8 a10, uint64_t a11, char a12, unsigned __int8 a13, unsigned __int8 a14)
{
  v604 = *MEMORY[0x277D85DE8];
  v15 = MEMORY[0x277CD7378];
  v16 = *(a1 + *MEMORY[0x277CD7378]);
  if ((v16 & 1) == 0)
  {
    v17 = *(a1 + *MEMORY[0x277CD7348]);
    if (!a2)
    {
      v465 = a8;
      v466 = a4;
      v467 = a7;
      v468 = MTLReportFailureTypeEnabled();
      a7 = v467;
      a4 = v466;
      a8 = v465;
      if (v468)
      {
        v469 = objc_opt_class();
        v500 = NSStringFromClass(v469);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x2100, @"[%@ encode...] commandBuffer may not be nil]", v470, v471, v472, v473);
        a7 = v467;
        a4 = v466;
        a8 = v465;
      }
    }

    if (!a4)
    {
      v474 = a8;
      v475 = a7;
      v476 = MTLReportFailureTypeEnabled();
      a7 = v475;
      a4 = 0;
      a8 = v474;
      if (v476)
      {
        v477 = objc_opt_class();
        v500 = NSStringFromClass(v477);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x2101, @"[%@ encode...] source may not be nil", v478, v479, v480, v481);
        a7 = v475;
        a4 = 0;
        a8 = v474;
      }
    }

    if (!a5)
    {
      v482 = a8;
      v483 = a4;
      v484 = a7;
      v485 = MTLReportFailureTypeEnabled();
      a7 = v484;
      a4 = v483;
      a8 = v482;
      if (v485)
      {
        v486 = objc_opt_class();
        v500 = NSStringFromClass(v486);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x2102, @"[%@ encode...] destination may not be nil", v487, v488, v489, v490);
        a7 = v484;
        a4 = v483;
        a8 = v482;
      }
    }

    v18 = v16 & ~v17;
    if (v18)
    {
      v491 = a8;
      v492 = a4;
      v493 = a7;
      v494 = MTLReportFailureTypeEnabled();
      a7 = v493;
      a4 = v492;
      a8 = v491;
      if (v494)
      {
        v495 = objc_opt_class();
        v500 = NSStringFromClass(v495);
        v501 = v18;
        MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x2103, @"[%@ encode...] options flag(s) 0x%16.16lx is unknown or invalid for use with this filter", v496, v497, v498, v499);
        a7 = v493;
        a4 = v492;
        a8 = v491;
      }
    }
  }

  if (a4)
  {
    if (a5)
    {
      v19 = a7;
      v20 = a9[1];
      *&v559.origin.x = *a9;
      *&v559.origin.z = v20;
      *&v559.size.height = a9[2];
      v581 = *a8;
      v21 = *(a8 + 2);
      v22 = *MEMORY[0x277CD7318];
      v511 = a4;
      v23 = *(&a4->super.isa + v22);
      v24 = *(a5 + v22);
      v580 = v23;
      v579 = v24;
      v578 = 0u;
      v25 = *(a5 + *MEMORY[0x277CD7330]);
      v576 = 0u;
      v577 = 0u;
      v26 = *(a5 + *MEMORY[0x277CD7308]);
      v27 = *(a5 + *MEMORY[0x277CD7310]);
      v583.width = v25;
      v583.height = v26;
      v583.depth = v27;
      MPSGetEffectiveClipRegion(&v576, &v583, &v559);
      if (v578)
      {
        if (*(&v577 + 1) && *(&v578 + 1))
        {
          v35 = *MEMORY[0x277CD7300];
          v36 = *(&v511->super.isa + v35);
          v37 = *(a5 + v35);
          memset(&v559.origin.z, 0, 32);
          v560 = 0u;
          v561 = 0u;
          v559.origin.x = v511;
          v559.origin.y = &v580;
          v38 = *MEMORY[0x277CD72F8];
          v39 = *MEMORY[0x277CD7328];
          v40 = *(&v511->super.isa + v39);
          v559.size.width = *(v511 + v38);
          v559.size.height = v40;
          *&v560 = v36;
          *&v561 = a5;
          v41 = *(a5 + v38);
          v42 = *(a5 + v39);
          v562 = 0;
          *(&v561 + 1) = &v579;
          v563 = v41;
          v564 = v42;
          v565 = 0;
          v566 = v37;
          v569 = v578;
          v568 = v577;
          v567 = v576;
          v570 = v581;
          v571 = v21;
          v572 = a11;
          v574 = 0;
          v573 = 0;
          v43 = MEMORY[0x277CD7320];
          v44 = (v511 + *MEMORY[0x277CD7320]);
          v575 = 1;
          explicit = atomic_load_explicit(v44, memory_order_acquire);
          if (explicit)
          {
            v559.size.depth = explicit;
            v46 = (a5 + *v43);
            v47 = atomic_load_explicit(v46, memory_order_acquire);
            if (v47)
            {
              goto LABEL_13;
            }
          }

          else
          {
            MPSAutoTexture::AllocateTexture(v44, 0);
            v559.size.depth = atomic_load_explicit(v44, memory_order_acquire);
            v46 = (a5 + *v43);
            v47 = atomic_load_explicit(v46, memory_order_acquire);
            if (v47)
            {
LABEL_13:
              v565 = v47;
              if (*(&v578 + 1) == 1)
              {
LABEL_14:
                if (!(v36 | v37) || (v507 = 0, v559.size.width <= 4) && v563 <= 4)
                {
                  v48 = v511 + *v43;
                  v49 = atomic_load_explicit(v48, memory_order_acquire);
                  if ((v48[56] & 2) != 0)
                  {
                    if (*(v48 + 13) < 2u)
                    {
                      goto LABEL_281;
                    }
                  }

                  else
                  {
                    if (v49)
                    {
                      v50 = objc_msgSend_textureType(v49, v28, v29, v30, v31, v32, v33, v34);
                    }

                    else
                    {
                      v50 = objc_msgSend_textureType(*(v48 + 5), v28, v29, v30, v31, v32, v33, v34);
                    }

                    if (v50 != 3)
                    {
                      goto LABEL_281;
                    }
                  }

                  v444 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v559.size.depth, v28, *(&v511[4].super.isa + *v43) & 0x3FF, 2, 0, 1, v21 & ~(v21 >> 63), 1, v500, v501);
                  v559.size.depth = v444;
                  v559.size.height = 2;
                  if (objc_msgSend_retainedReferences(a2, v445, v446, v447, v448, v449, v450, v451))
                  {
                    goto LABEL_282;
                  }

                  v558[0] = MEMORY[0x277D85DD0];
                  v558[1] = 3221225472;
                  v558[2] = sub_239BCDB14;
                  v558[3] = &unk_278B28F28;
                  v558[4] = v444;
                  objc_msgSend_addCompletedHandler_(a2, v28, v558, v30, v31, v32, v33, v34);
LABEL_281:
                  v444 = 0;
LABEL_282:
                  v452 = a5 + *v43;
                  v453 = atomic_load_explicit(v452, memory_order_acquire);
                  if ((*(v452 + 56) & 2) != 0)
                  {
                    if (*(v452 + 52) < 2u)
                    {
                      goto LABEL_292;
                    }
                  }

                  else
                  {
                    if (v453)
                    {
                      v454 = objc_msgSend_textureType(v453, v28, v29, v30, v31, v32, v33, v34);
                    }

                    else
                    {
                      v454 = objc_msgSend_textureType(*(v452 + 40), v28, v29, v30, v31, v32, v33, v34);
                    }

                    if (v454 != 3)
                    {
                      goto LABEL_292;
                    }
                  }

                  v455 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v565, v28, *(a5 + *v43 + 32) & 0x3FFLL, 2, 0, 1, v577, 1, v500);
                  v565 = v455;
                  v564 = 2;
                  if (objc_msgSend_retainedReferences(a2, v456, v457, v458, v459, v460, v461, v462))
                  {
                    v507 = v455;
                    goto LABEL_293;
                  }

                  v557[0] = MEMORY[0x277D85DD0];
                  v557[1] = 3221225472;
                  v557[2] = sub_239BCDB1C;
                  v557[3] = &unk_278B28F28;
                  v557[4] = v455;
                  objc_msgSend_addCompletedHandler_(a2, v28, v557, v30, v31, v32, v33, v34);
LABEL_292:
                  v507 = 0;
LABEL_293:
                  v571 = 0;
                  *&v568 = 0;
                  v506 = v444;
                  if ((*(a1 + *v15) & 8) != 0)
                  {
LABEL_294:
                    v463 = *(a1 + *MEMORY[0x277CD7360]);
                    if (!v463)
                    {
                      v464 = objc_opt_class();
                      v463 = NSStringFromClass(v464);
                    }

                    objc_msgSend_pushDebugGroup_(a3, v28, v463, v30, v31, v32, v33, v34, v500);
                    v51 = a3;
                    v52 = a14;
                    v53 = a13;
                    if (a13)
                    {
                      goto LABEL_26;
                    }

LABEL_25:
                    if (!v52)
                    {
LABEL_268:
                      if (v51)
                      {
                        objc_msgSend_popDebugGroup(v51, v28, v29, v30, v31, v32, v33, v34);
                      }

                      if (v506)
                      {
                      }

                      if (v507)
                      {
                      }

                      if (a12)
                      {
                        MPSDecrementReadCount(v511);
                      }

                      return;
                    }

LABEL_26:
                    v502 = v51;
                    MEMORY[0x23EE7D040](v582, a2, v565);
                    v57 = 50;
                    if (v52)
                    {
                      v57 = 42;
                    }

                    v58 = 49;
                    if (v52)
                    {
                      v58 = 41;
                    }

                    v59 = 40;
                    if (!v52)
                    {
                      v59 = 45;
                    }

                    if (!v53)
                    {
                      v57 = 48;
                      v58 = 47;
                      v59 = 46;
                    }

                    v60 = *(a1 + OBJC_IVAR___MPSRNNRecurrentImageState_nLayers[v59]);
                    if (v60 >= 1)
                    {
                      v541 = *(a1 + OBJC_IVAR___MPSRNNRecurrentImageState_nLayers[v58]);
                      v527 = *(a1 + OBJC_IVAR___MPSRNNRecurrentImageState_nLayers[v57]);
                      if (v19)
                      {
                        isTemporary_layerCount = *v19;
                        if (!*v19)
                        {
                          v62 = malloc_type_malloc(8 * (*(a1 + OBJC_IVAR___MPSRNNRecurrentImageState_nLayers[v59]) & 0x7FFFFFFFLL), 0x80040B8603338uLL);
                          v555 = v19;
                          v66 = malloc_type_malloc(8 * (v60 & 0x7FFFFFFF), 0x80040B8603338uLL);
                          v67 = 0;
                          v68 = *(&v568 + 1);
                          v69 = v569;
                          do
                          {
                            v70 = objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_(MEMORY[0x277CD7220], v63, 3, 1, 1, 1, v64, v65, v500);
                            v62[v67] = v70;
                            v71 = *(v541 + 8 * v67);
                            objc_msgSend_setWidth_(v70, v72, v68, v73, v74, v75, v76, v77);
                            objc_msgSend_setHeight_(v70, v78, v69, v79, v80, v81, v82, v83);
                            objc_msgSend_setNumberOfImages_(v70, v84, *(&v69 + 1), v85, v86, v87, v88, v89);
                            objc_msgSend_setChannelFormat_(v70, v90, 3, v91, v92, v93, v94, v95);
                            objc_msgSend_setFeatureChannels_(v70, v96, *(v71 + 48), v97, v98, v99, v100, v101);
                            if (*(v527 + 4 * v67) == 2)
                            {
                              v102 = objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_(MEMORY[0x277CD7220], v63, 3, 1, 1, 1, v64, v65);
                              v66[v67] = v102;
                              v103 = *(v541 + 8 * v67);
                              objc_msgSend_setWidth_(v102, v104, v68, v105, v106, v107, v108, v109);
                              objc_msgSend_setHeight_(v102, v110, v69, v111, v112, v113, v114, v115);
                              objc_msgSend_setNumberOfImages_(v102, v116, *(&v69 + 1), v117, v118, v119, v120, v121);
                              objc_msgSend_setChannelFormat_(v102, v122, 3, v123, v124, v125, v126, v127);
                              objc_msgSend_setFeatureChannels_(v102, v128, *(v103 + 56), v129, v130, v131, v132, v133);
                            }

                            else
                            {
                              v66[v67] = 0;
                            }

                            ++v67;
                          }

                          while ((v60 & 0x7FFFFFFF) != v67);
                          v134 = [MPSRNNRecurrentImageState alloc];
                          isTemporary_layerCount = objc_msgSend_initWithCommandBuffer_recurrentImageDescriptors_cellImageDescriptors_isTemporary_layerCount_(v134, v135, a2, v62, v66, a10, v60, v136);
                          *v555 = isTemporary_layerCount;
                          free(v62);
                          free(v66);
                        }
                      }

                      else
                      {
                        isTemporary_layerCount = 0;
                      }

                      v544 = *(&v570 + 1);
                      v545 = v570;
                      x = v559.origin.x;
                      v543 = v571;
                      v549 = isTemporary_layerCount;
                      v550 = *(&v569 + 1);
                      v137 = *(&v568 + 1);
                      v138 = v569;
                      v516 = objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_(MEMORY[0x277CD7220], v54, 3, *(&v568 + 1), v569, 1, v55, v56, v500);
                      v143 = 0;
                      v540 = 0;
                      v535 = 0;
                      v546 = 0;
                      v547 = 0;
                      v548 = 0;
                      v520 = (v60 - 1);
                      v144 = v137;
                      v145 = v138;
                      v505 = __PAIR64__(v138, v137);
                      v503 = v138 - 1;
                      v504 = v137 - 1;
                      v519 = v60 & 0x7FFFFFFF;
                      v554 = v138;
                      v556 = v137;
                      while (1)
                      {
                        v146 = *(v541 + 8 * v143);
                        if (!v549 || v146[1] || v146[2])
                        {
                          break;
                        }

                        v553 = *(*(v549 + 48) + 8 * v143);
                        if (v143 == v520)
                        {
                          goto LABEL_52;
                        }

LABEL_53:
                        v147 = v544;
                        if (v143)
                        {
                          v148 = 0;
                        }

                        else
                        {
                          v148 = v543;
                        }

                        if (v143)
                        {
                          v147 = 0;
                        }

                        v543 = v148;
                        v544 = v147;
                        v149 = v545;
                        if (v143)
                        {
                          v149 = 0;
                        }

                        v545 = v149;
                        v539 = v553 == 0;
                        if (v553)
                        {
                          v150 = *(v527 + 4 * v143);
                          if (v150 == 2)
                          {
                            goto LABEL_70;
                          }
                        }

                        else
                        {
                          objc_msgSend_setFeatureChannels_(v516, v139, v146[5], v144, v145, v140, v141, v142);
                          v553 = sub_239BCDB24(v582, v516, *(a1 + *MEMORY[0x277CD7350]), v180, v181, v182, v183, v184);
                          v535 = 0;
                          v145 = v554;
                          v144 = v556;
                          v150 = *(v527 + 4 * v143);
                          if (v150 == 2)
                          {
LABEL_70:
                            v185 = *(a1 + *MEMORY[0x277CD7350]);
                            v186 = *(a1 + *MEMORY[0x277CD7370]);
                            v187 = *(v541 + 8 * v143);
                            v188 = objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_(MEMORY[0x277CD7220], v139, 3, v144, v145, 1, v141, v142);
                            v197 = v544;
                            v196 = v545;
                            v198 = v543;
                            v536 = x;
                            v522 = *v187;
                            if (*v187)
                            {
                              v199 = v188;
                              v200 = objc_msgSend_outputFeatureChannels(v522, v189, v190, v191, v192, v193, v194, v195);
                              objc_msgSend_setFeatureChannels_(v199, v201, v200, v202, v203, v204, v205, v206);
                              v536 = sub_239BCDB24(v582, v199, v185, v207, v208, v209, v210, v211);
                              v212 = *v187;
                              *&v592 = v545;
                              *(&v592 + 1) = v544;
                              v593 = v543;
                              memset(&v583, 0, sizeof(v583));
                              v584 = v556;
                              v585 = v554;
                              *&v586 = v550;
                              sub_239BCDCC0(v212, a2, a3, x, v536, &v559, &v592, &v583, 0);
                              v196 = 0;
                              v197 = 0;
                              v198 = 0;
                            }

                            if (!a6)
                            {
                              v214 = 0;
                              goto LABEL_88;
                            }

                            v213 = *(a6 + 56);
                            if (v213)
                            {
                              v214 = *(v213 + 8 * v143);
                              v215 = *(a6 + 48);
                              if (!v215)
                              {
LABEL_88:
                                v265 = 0;
                                goto LABEL_93;
                              }
                            }

                            else
                            {
                              v214 = 0;
                              v215 = *(a6 + 48);
                              if (!v215)
                              {
                                goto LABEL_88;
                              }
                            }

                            v265 = *(v215 + 8 * v143);
LABEL_93:
                            v266 = *(v187 + 72);
                            *&v592 = v196;
                            *(&v592 + 1) = v197;
                            v593 = v198;
                            v583.width = v548;
                            v583.height = v547;
                            v583.depth = v546;
                            v584 = v556;
                            v585 = v554;
                            *&v586 = v550;
                            v534 = sub_239BCE08C(v185, v582, v186, a2, a3, v266, v187 + 96, v536, v214, v265, &v559, &v592, &v583);
                            v267 = *(v187 + 72);
                            *&v592 = v196;
                            *(&v592 + 1) = v197;
                            v593 = v198;
                            v583.width = v548;
                            v583.height = v547;
                            v583.depth = v546;
                            v584 = v556;
                            v585 = v554;
                            *&v586 = v550;
                            v530 = sub_239BCE08C(v185, v582, v186, a2, a3, v267, v187 + 168, v536, v214, v265, &v559, &v592, &v583);
                            v268 = *(v187 + 72);
                            *&v592 = v196;
                            *(&v592 + 1) = v197;
                            v593 = v198;
                            v583.width = v548;
                            v583.height = v547;
                            v583.depth = v546;
                            v584 = v556;
                            v585 = v554;
                            *&v586 = v550;
                            v525 = sub_239BCE08C(v185, v582, v186, a2, a3, v268, v187 + 240, v536, v214, v265, &v559, &v592, &v583);
                            if (v549)
                            {
                              v269 = *(v549 + 56);
                              if (v269)
                              {
                                v269 = *&v269[8 * v143];
                              }
                            }

                            else
                            {
                              v269 = 0;
                            }

                            v270 = v530;
                            if (!v530)
                            {
                              v270 = v525;
                            }

                            if (v534)
                            {
                              v270 = v534;
                            }

                            if (v269)
                            {
                              v271 = v269;
                            }

                            else
                            {
                              v271 = v270;
                            }

                            if (v271)
                            {
                              *&v592 = v196;
                              *(&v592 + 1) = v197;
                              v593 = v198;
                              v583.width = v548;
                              v583.height = v547;
                              v583.depth = v546;
                              v584 = v556;
                              v585 = v554;
                              *&v586 = v550;
                              sub_239BCE434(v271, 0, a2, a3, v214, v530, v534, v525, &v592, &v583, 0, 0, v186, v185);
                            }

                            v272 = *(v187 + 72);
                            *&v592 = v196;
                            *(&v592 + 1) = v197;
                            v593 = v198;
                            v583.width = v548;
                            v583.height = v547;
                            v583.depth = v546;
                            v584 = v556;
                            v585 = v554;
                            *&v586 = v550;
                            v273 = sub_239BCE08C(v185, v582, v186, a2, a3, v272, v187 + 312, v536, v271, v265, &v559, &v592, &v583);
                            v274 = v273;
                            if (*(v187 + 8))
                            {
                              v275 = 0;
                              v276 = 0;
                              v277 = 0;
                              v278 = 0;
                              if (v273)
                              {
                                v279 = v273;
                              }

                              else
                              {
                                v279 = v271;
                              }

                              goto LABEL_111;
                            }

                            v276 = v547;
                            v275 = v548;
                            v277 = v546;
                            v279 = v553;
                            v278 = v535;
                            if (v553)
                            {
                              goto LABEL_111;
                            }

                            if (v549)
                            {
                              v276 = v547;
                              v275 = v548;
                              v277 = v546;
                              v278 = v535;
                              if (!*(v187 + 16) || (v276 = v547, v275 = v548, v277 = v546, v279 = v273, v278 = v535, v273) || (v276 = v547, v275 = v548, v277 = v546, v278 = v535, (v279 = v534) != 0) || (v276 = v547, v275 = v548, v277 = v546, v279 = v530, v278 = v535, v530))
                              {
LABEL_111:
                                v280 = v186;
                                v281 = 0;
                                if (v549 && !*(v187 + 16))
                                {
                                  v281 = *(*(v549 + 48) + 8 * v143);
                                }

                                *&v592 = v196;
                                *(&v592 + 1) = v197;
                                v593 = v198;
                                v282 = v275;
                                v583.width = v275;
                                v283 = v276;
                                v583.height = v276;
                                v284 = v277;
                                v583.depth = v277;
                                v584 = v556;
                                v585 = v554;
                                *&v586 = v550;
                                sub_239BCE434(v279, v281, a2, a3, 0, 0, v273, v271, &v592, &v583, v278, v187 + 392, v280, v185);
                                if (v279)
                                {
                                  if (v553)
                                  {
                                    v285 = *(v187 + 8);
                                    if (v285)
                                    {
                                      v592 = 0uLL;
                                      v593 = 0;
                                      v583.width = v548;
                                      v583.height = v547;
                                      v583.depth = v546;
                                      v584 = v556;
                                      v585 = v554;
                                      *&v586 = v550;
                                      sub_239BCDCC0(v285, a2, a3, v279, v553, &v559, &v592, &v583, v535);
                                    }
                                  }
                                }

                                if (v549)
                                {
                                  if (v279)
                                  {
                                    if (!v281)
                                    {
                                      v286 = *(v187 + 16);
                                      if (v286)
                                      {
                                        v287 = *(*(v549 + 48) + 8 * v143);
                                        v592 = 0uLL;
                                        v593 = 0;
                                        v583.width = v282;
                                        v583.height = v283;
                                        v583.depth = v284;
                                        v584 = v556;
                                        v585 = v554;
                                        *&v586 = v550;
                                        sub_239BCDCC0(v286, a2, a3, v279, v287, &v559, &v592, &v583, 0);
                                      }
                                    }
                                  }
                                }

                                if (!v522)
                                {
                                  goto LABEL_265;
                                }

                                goto LABEL_124;
                              }

                              if (v525)
                              {
                                v279 = v525;
                              }

                              else
                              {
                                v279 = v271;
                              }
                            }

                            v276 = v547;
                            v275 = v548;
                            v277 = v546;
                            v278 = v535;
                            goto LABEL_111;
                          }
                        }

                        if (v150 == 1)
                        {
                          v537 = *(a1 + *MEMORY[0x277CD7350]);
                          v533 = *(a1 + *MEMORY[0x277CD7370]);
                          v216 = *(v541 + 8 * v143);
                          v224 = objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_(MEMORY[0x277CD7220], v139, 3, v144, v145, 1, v141, v142);
                          v225 = v544;
                          v226 = v545;
                          v227 = v543;
                          v529 = x;
                          v515 = *v216;
                          if (*v216)
                          {
                            v228 = objc_msgSend_outputFeatureChannels(v515, v217, v218, v219, v220, v221, v222, v223);
                            objc_msgSend_setFeatureChannels_(v224, v229, v228, v230, v231, v232, v233, v234);
                            v529 = sub_239BCDB24(v582, v224, v537, v235, v236, v237, v238, v239);
                            v240 = *v216;
                            *&v592 = v545;
                            *(&v592 + 1) = v544;
                            v593 = v543;
                            memset(&v583, 0, sizeof(v583));
                            v584 = v556;
                            v585 = v554;
                            *&v586 = v550;
                            sub_239BCDCC0(v240, a2, a3, x, v529, &v559, &v592, &v583, 0);
                            v226 = 0;
                            v225 = 0;
                            v227 = 0;
                          }

                          v241 = *(v216 + 144);
                          if (!a6 || (v242 = *(a6 + 48)) == 0)
                          {
                            v518 = 0;
                            v243 = 0;
                            v244 = 0;
                            v245 = 0;
                            v521 = 0;
                            goto LABEL_128;
                          }

                          v243 = *(v242 + 8 * v143);
                          v244 = v243 != 0;
                          v245 = v241 != 0 && v244;
                          if (v245 == 1)
                          {
                            objc_msgSend_setFeatureChannels_(v224, v217, *(v216 + 56), v219, v220, v221, v222, v223);
                            v518 = sub_239BCDB24(v582, v224, v537, v246, v247, v248, v249, v250);
                            v521 = 0;
                            if (!*(v216 + 136))
                            {
                              goto LABEL_128;
                            }
                          }

                          else
                          {
                            v518 = 0;
                            v521 = 0;
                            if (!*(v216 + 136))
                            {
                              goto LABEL_128;
                            }
                          }

                          if (v243)
                          {
                            objc_msgSend_setFeatureChannels_(v224, v217, *(v216 + 56), v219, v220, v221, v222, v223);
                            v521 = sub_239BCDB24(v582, v224, v537, v288, v289, v290, v291, v292);
                            v244 = 1;
                          }

LABEL_128:
                          *&v583.width = *(v216 + 96);
                          v583.depth = 0;
                          v584 = 0;
                          v585 = *(v216 + 152);
                          v588 = *(v216 + 248);
                          v586 = *(v216 + 176);
                          v587 = *(v216 + 192);
                          v293 = *(v216 + 72);
                          *&v602 = v226;
                          *(&v602 + 1) = v225;
                          v603 = v227;
                          *&v592 = v548;
                          *(&v592 + 1) = v547;
                          v593 = v546;
                          v594 = v556;
                          v595 = v554;
                          v596 = v550;
                          v294 = v243;
                          v523 = sub_239BCE08C(v537, v582, v533, a2, a3, v293, &v583, v529, 0, v243, &v559, &v602, &v592);
                          *&v583.width = *(v216 + 112);
                          v585 = *(v216 + 160);
                          v588 = *(v216 + 249);
                          v586 = *(v216 + 200);
                          v587 = *(v216 + 216);
                          if (v241)
                          {
                            v295 = *(v216 + 72);
                            *&v602 = v226;
                            *(&v602 + 1) = v225;
                            v603 = v227;
                            *&v592 = v548;
                            *(&v592 + 1) = v547;
                            v593 = v546;
                            v594 = v556;
                            v595 = v554;
                            v596 = v550;
                            v514 = sub_239BCE08C(v537, v582, v533, a2, a3, v295, &v583, v529, 0, v243, &v559, &v602, &v592);
                            v297 = v554;
                            v296 = v556;
                            if (v245)
                            {
                              goto LABEL_130;
                            }

LABEL_133:
                            if (v244)
                            {
                              goto LABEL_134;
                            }
                          }

                          else
                          {
                            v514 = 0;
                            v297 = v554;
                            v296 = v556;
                            if (!v245)
                            {
                              goto LABEL_133;
                            }

LABEL_130:
                            *&v602 = v226;
                            *(&v602 + 1) = v225;
                            v603 = v227;
                            *&v592 = v548;
                            *(&v592 + 1) = v547;
                            v593 = v546;
                            v594 = v296;
                            v595 = v297;
                            v596 = v550;
                            sub_239BCE434(v518, 0, a2, a3, v514, v243, 0, 0, &v602, &v592, 0, 0, v533, v537);
                            v297 = v554;
                            v296 = v556;
                            if (v244)
                            {
LABEL_134:
                              *&v602 = v226;
                              *(&v602 + 1) = v225;
                              v603 = v227;
                              *&v592 = v548;
                              *(&v592 + 1) = v547;
                              v593 = v546;
                              v594 = v296;
                              v595 = v297;
                              v596 = v550;
                              sub_239BCE434(v521, 0, a2, a3, v523, v243, 0, 0, &v602, &v592, 0, 0, v533, v537);
                              v297 = v554;
                              v296 = v556;
                            }
                          }

                          v299 = *(v216 + 136);
                          v298 = *(v216 + 144);
                          v583.width = *(v216 + 128);
                          v583.height = v298;
                          v300 = *(v216 + 168);
                          v583.depth = v299;
                          v585 = v300;
                          v588 = *(v216 + 250);
                          v586 = *(v216 + 224);
                          v587 = *(v216 + 240);
                          v301 = *(v216 + 72);
                          *&v602 = v226;
                          *(&v602 + 1) = v225;
                          v603 = v227;
                          *&v592 = v548;
                          *(&v592 + 1) = v547;
                          v593 = v546;
                          v594 = v296;
                          v595 = v297;
                          v596 = v550;
                          v309 = sub_239BCE08C(v537, v582, v533, a2, a3, v301, &v583, v529, v521, v518, &v559, &v602, &v592);
                          v310 = *(v216 + 8);
                          if (v310)
                          {
                            v512 = 0;
                            v513 = 0;
                            v311 = 0;
                            v312 = 0;
                            v313 = v518;
                            if (v521)
                            {
                              v313 = v521;
                            }

                            if (v309)
                            {
                              v313 = v309;
                            }

                            v526 = v313;
                          }

                          else
                          {
                            v512 = v547;
                            v513 = v548;
                            v311 = v546;
                            v526 = v553;
                            v312 = v535;
                            if (!v553)
                            {
                              v526 = 0;
                              if (v549)
                              {
                                v512 = v547;
                                v513 = v548;
                                v311 = v546;
                                v312 = v535;
                                if (!*(v216 + 16))
                                {
                                  goto LABEL_150;
                                }

                                v314 = v523;
                                if (!v523)
                                {
                                  v314 = v514;
                                }

                                if (v309)
                                {
                                  v314 = v309;
                                }

                                v526 = v314;
                              }

                              v512 = v547;
                              v513 = v548;
                              v311 = v546;
                              v312 = v535;
                            }
                          }

LABEL_150:
                          v517 = 0;
                          if (v549 && !*(v216 + 16))
                          {
                            v517 = *(*(v549 + 48) + 8 * v143);
                          }

                          v315 = v523;
                          if (v526)
                          {
                            v316 = v526;
                          }

                          else
                          {
                            v316 = v517;
                          }

                          if (!v523)
                          {
                            v315 = v243;
                          }

                          if (v309)
                          {
                            v317 = v309;
                          }

                          else
                          {
                            v317 = v315;
                          }

                          if (v317 && v316)
                          {
                            v318 = *(v216 + 252);
                            v319 = *(v216 + 256);
                            if (v526)
                            {
                              v320 = v517;
                            }

                            else
                            {
                              v320 = 0;
                            }

                            WORD1(v593) = v225;
                            LOWORD(v593) = v226;
                            WORD1(v594) = WORD2(v505);
                            LOWORD(v594) = v505;
                            HIWORD(v593) = v512;
                            WORD2(v593) = v513;
                            v321 = *MEMORY[0x277CD72F8];
                            v510 = v320;
                            if (v320)
                            {
                              v322 = ((*&v320[v321] + 3) >> 2);
                            }

                            else
                            {
                              v322 = 0;
                            }

                            v352 = *&v317[v321] + 3;
                            v353 = *&v316[v321] + 3;
                            LOWORD(v596) = (v352 >> 2) * (v227 & ~(v227 >> 63));
                            v508 = v311;
                            v509 = v353 >> 2;
                            WORD1(v596) = (v353 >> 2) * (v311 & ~(v311 >> 31)) + ((v312 + 3) >> 2);
                            WORD2(v596) = (v353 >> 2) * (v311 & ~(v311 >> 31));
                            v354 = 1.0 / (v352 >> 2);
                            *&v592 = v354;
                            HIDWORD(v594) = (v352 >> 2);
                            LODWORD(v595) = (v353 >> 2);
                            HIDWORD(v595) = v322;
                            v597 = objc_msgSend_numberOfImages(v317, v302, v303, v304, v305, v306, v307, v308) * (v352 >> 2);
                            HIWORD(v596) = objc_msgSend_numberOfImages(v316, v355, v356, v357, v358, v359, v360, v361) * v509;
                            v598 = v318;
                            v599 = 1.0 / v318;
                            v600 = v319;
                            MPSLibrary::CreateUberShaderKey();
                            PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
                            objc_msgSend_setComputePipelineState_(a3, v363, PipelineStateForMPSKey, v364, v365, v366, v367, v368, 0, 0, 0, 0, 0);
                            v376 = objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v369, v370, v371, v372, v373, v374, v375);
                            v384 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v377, v378, v379, v380, v381, v382, v383);
                            v385 = v384;
                            if (v384 >= 0x100)
                            {
                              v386 = 256;
                            }

                            else
                            {
                              v386 = v384;
                            }

                            MPSLibrary::ReleaseMPSKey();
                            objc_msgSend_texture(v316, v387, v388, v389, v390, v391, v392, v393);
                            v394 = MPSIsTextureTwiddled();
                            v395 = v376 >> 2;
                            v396 = 4;
                            if (v394)
                            {
                              v397 = 4;
                            }

                            else
                            {
                              v397 = 1;
                            }

                            if (!v394)
                            {
                              v395 = v376;
                              v396 = 2;
                            }

                            if (v395 <= 1)
                            {
                              v395 = 1;
                            }

                            if (v385 < 2)
                            {
                              v399 = 4;
                            }

                            else
                            {
                              v398 = v395 << v396 > v386;
                              v399 = 4;
                              if (v398)
                              {
                                do
                                {
                                  v400 = v399 >> 1;
                                  if (v399 <= 1)
                                  {
                                    v400 = 1;
                                  }

                                  v401 = v395 >> 1;
                                  if (v395 < 2)
                                  {
                                    v401 = 1;
                                  }

                                  else
                                  {
                                    v400 = v399;
                                  }

                                  v402 = v397 >= 2;
                                  if (v397 >= 2)
                                  {
                                    v397 >>= 1;
                                  }

                                  else
                                  {
                                    v399 = v400;
                                    v397 = 1;
                                  }

                                  if (!v402)
                                  {
                                    v395 = v401;
                                  }
                                }

                                while (v397 * v399 * v395 > v386);
                              }
                            }

                            if (v395 <= 1)
                            {
                              v403 = 1;
                            }

                            else
                            {
                              v403 = v395;
                            }

                            if (v399 <= 1)
                            {
                              v404 = 1;
                            }

                            else
                            {
                              v404 = v399;
                            }

                            Sampler = MPSDevice::GetSampler();
                            objc_msgSend_setSamplerState_atIndex_(a3, v406, Sampler, 0, v407, v408, v409, v410);
                            if (v309)
                            {
                              *&v602 = objc_msgSend_texture(v309, v411, v412, v413, v414, v415, v416, v417);
                              v418 = v523;
                              if (!v523)
                              {
LABEL_248:
                                *(&v602 + 1) = v418;
                                if (v294)
                                {
                                  v419 = objc_msgSend_texture(v294, v411, v412, v413, v414, v415, v416, v417);
                                }

                                else
                                {
                                  v419 = 0;
                                }

                                v603 = v419;
                                v601[0] = objc_msgSend_texture(v316, v411, v412, v413, v414, v415, v416, v417);
                                v427 = v510;
                                if (v510)
                                {
                                  v427 = objc_msgSend_texture(v510, v420, v421, v422, v423, v424, v425, v426);
                                }

                                v601[1] = v427;
                                objc_msgSend_setTextures_withRange_(a3, v420, &v602, 0, 3, v424, v425, v426);
                                objc_msgSend_setTextures_withRange_(a3, v428, v601, 3, 2, v429, v430, v431);
                                objc_msgSend_setBytes_length_atIndex_(a3, v432, &v592, 64, 0, v433, v434, v435);
                                *&v590 = (v504 + v403) / v403;
                                *(&v590 + 1) = (v503 + v397) / v397;
                                v591 = (v509 * v550 + v404 - 1) / v404;
                                v589[0] = v403;
                                v589[1] = v397;
                                v589[2] = v404;
                                objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a3, v436, &v590, v589, v437, v438, v439, v440);
                                v310 = *(v216 + 8);
                                v311 = v508;
                                goto LABEL_254;
                              }
                            }

                            else
                            {
                              *&v602 = 0;
                              v418 = v523;
                              if (!v523)
                              {
                                goto LABEL_248;
                              }
                            }

                            v418 = objc_msgSend_texture(v418, v411, v412, v413, v414, v415, v416, v417);
                            goto LABEL_248;
                          }

LABEL_254:
                          v602 = 0uLL;
                          v603 = 0;
                          if (v553 && v310 && v526)
                          {
                            v441 = v311;
                            v590 = 0uLL;
                            v591 = 0;
                            *&v592 = v548;
                            *(&v592 + 1) = v547;
                            v593 = v546;
                            v594 = v556;
                            v595 = v554;
                            v596 = v550;
                            sub_239BCDCC0(v310, a2, a3, v526, v553, &v559, &v590, &v592, v535);
                            v311 = v441;
                          }

                          if (v549)
                          {
                            if (!v517)
                            {
                              v442 = *(v216 + 16);
                              if (v442)
                              {
                                if (v526)
                                {
                                  v443 = *(*(v549 + 48) + 8 * v143);
                                  v590 = v602;
                                  v591 = v603;
                                  *&v592 = v513;
                                  *(&v592 + 1) = v512;
                                  v593 = v311;
                                  v594 = v556;
                                  v595 = v554;
                                  v596 = v550;
                                  sub_239BCDCC0(v442, a2, a3, v526, v443, &v559, &v590, &v592, 0);
                                }
                              }
                            }
                          }

                          if (v515)
                          {
                          }

                          goto LABEL_265;
                        }

                        if (!v150)
                        {
                          v151 = *(a1 + *MEMORY[0x277CD7350]);
                          v152 = *(a1 + *MEMORY[0x277CD7370]);
                          v153 = *(v541 + 8 * v143);
                          v161 = objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_(MEMORY[0x277CD7220], v139, 3, v556, v554, 1, v141, v142);
                          v162 = v543;
                          v163 = v544;
                          v164 = v545;
                          v536 = x;
                          v532 = *v153;
                          if (*v153)
                          {
                            v165 = objc_msgSend_outputFeatureChannels(v532, v154, v155, v156, v157, v158, v159, v160);
                            objc_msgSend_setFeatureChannels_(v161, v166, v165, v167, v168, v169, v170, v171);
                            v536 = sub_239BCDB24(v582, v161, v151, v172, v173, v174, v175, v176);
                            v177 = *v153;
                            *&v592 = v545;
                            *(&v592 + 1) = v544;
                            v593 = v543;
                            memset(&v583, 0, sizeof(v583));
                            v584 = v556;
                            v585 = v554;
                            *&v586 = v550;
                            sub_239BCDCC0(v177, a2, a3, x, v536, &v559, &v592, &v583, 0);
                            v162 = 0;
                            v163 = 0;
                            v164 = 0;
                          }

                          if (*(v153 + 72) == 1)
                          {
                            objc_msgSend_setFeatureChannels_(v161, v154, *&v536[*MEMORY[0x277CD72F8]], v156, v157, v158, v159, v160);
                            v524 = 0;
                            v178 = v536;
                            v179 = 0;
                            v528 = 0;
                            if (!a6)
                            {
                              goto LABEL_173;
                            }

LABEL_169:
                            v323 = *(v153 + 104);
                            if (!v323)
                            {
                              goto LABEL_173;
                            }

                            v324 = *(a6 + 48);
                            if (v324 && *(v324 + 8 * v143))
                            {
                              v325 = objc_msgSend_outputFeatureChannels(v323, v154, v155, v156, v157, v158, v159, v160);
                              objc_msgSend_setFeatureChannels_(v161, v326, v325, v327, v328, v329, v330, v331);
                              v179 = sub_239BCDB24(v582, v161, v151, v332, v333, v334, v335, v336);
                              v337 = *(*(a6 + 48) + 8 * v143);
                              v592 = 0uLL;
                              v593 = 0;
                              v338 = *(v153 + 104);
                              memset(&v583, 0, sizeof(v583));
                              v584 = v556;
                              v585 = v554;
                              *&v586 = v550;
                              sub_239BCDCC0(v338, a2, a3, v337, v179, &v559, &v592, &v583, 0);
                              v528 = 1;
                              goto LABEL_173;
                            }

                            v528 = 0;
                            v179 = 0;
                            v339 = v164;
                            v340 = v163;
                            v341 = v162;
                            v342 = v152;
                            if (!*(v153 + 8))
                            {
                              goto LABEL_178;
                            }

LABEL_174:
                            v343 = 0;
                            v344 = 0;
                            v345 = 0;
                            v346 = 0;
                            if (v178)
                            {
                              v347 = v178;
                            }

                            else
                            {
                              v347 = v179;
                            }
                          }

                          else
                          {
                            v251 = *(v153 + 96);
                            if (!v251)
                            {
                              v524 = 0;
                              v178 = 0;
                              v179 = 0;
                              v528 = 0;
                              if (!a6)
                              {
                                goto LABEL_173;
                              }

                              goto LABEL_169;
                            }

                            v252 = objc_msgSend_outputFeatureChannels(v251, v154, v155, v156, v157, v158, v159, v160);
                            objc_msgSend_setFeatureChannels_(v161, v253, v252, v254, v255, v256, v257, v258);
                            v178 = sub_239BCDB24(v582, v161, v151, v259, v260, v261, v262, v263);
                            v264 = *(v153 + 96);
                            *&v592 = v164;
                            *(&v592 + 1) = v163;
                            v593 = v162;
                            memset(&v583, 0, sizeof(v583));
                            v584 = v556;
                            v585 = v554;
                            *&v586 = v550;
                            sub_239BCDCC0(v264, a2, a3, v536, v178, &v559, &v592, &v583, 0);
                            v524 = 1;
                            v179 = 0;
                            v528 = 0;
                            if (a6)
                            {
                              goto LABEL_169;
                            }

LABEL_173:
                            v339 = v164;
                            v340 = v163;
                            v341 = v162;
                            v342 = v152;
                            if (*(v153 + 8))
                            {
                              goto LABEL_174;
                            }

LABEL_178:
                            v344 = v547;
                            v343 = v548;
                            v345 = v546;
                            v347 = v553;
                            v346 = v535;
                            if (!v553)
                            {
                              if (v178)
                              {
                                v347 = v178;
                              }

                              else
                              {
                                v347 = v179;
                              }

                              v344 = v547;
                              v343 = v548;
                              v345 = v546;
                              v346 = v535;
                            }
                          }

                          v348 = 0;
                          if (v549 && !*(v153 + 16))
                          {
                            v348 = *(*(v549 + 48) + 8 * v143);
                          }

                          *&v592 = v339;
                          *(&v592 + 1) = v340;
                          v593 = v341;
                          v583.width = v343;
                          v583.height = v344;
                          v583.depth = v345;
                          v584 = v556;
                          v585 = v554;
                          *&v586 = v550;
                          sub_239BC1CF8(v347, v348, a2, a3, v178, v179, 0, 0, &v592, &v583, v346, v153 + 112, v342, v151);
                          v592 = 0uLL;
                          v593 = 0;
                          if (v347)
                          {
                            if (v553)
                            {
                              v349 = *(v153 + 8);
                              if (v349)
                              {
                                v602 = 0uLL;
                                v603 = 0;
                                v583.width = v548;
                                v583.height = v547;
                                v583.depth = v546;
                                v584 = v556;
                                v585 = v554;
                                *&v586 = v550;
                                sub_239BCDCC0(v349, a2, a3, v347, v553, &v559, &v602, &v583, v535);
                              }
                            }
                          }

                          if (v549)
                          {
                            if (v347)
                            {
                              if (!v348)
                              {
                                v350 = *(v153 + 16);
                                if (v350)
                                {
                                  v351 = *(*(v549 + 48) + 8 * v143);
                                  v602 = v592;
                                  v603 = v593;
                                  v583.width = v343;
                                  v583.height = v344;
                                  v583.depth = v345;
                                  v584 = v556;
                                  v585 = v554;
                                  *&v586 = v550;
                                  sub_239BCDCC0(v350, a2, a3, v347, v351, &v559, &v602, &v583, 0);
                                }
                              }
                            }
                          }

                          if (v524)
                          {
                          }

                          if (v528)
                          {
                          }

                          if (!v532)
                          {
                            goto LABEL_265;
                          }

LABEL_124:
                        }

LABEL_265:
                        if (v540)
                        {
                        }

                        ++v143;
                        v540 = v539;
                        v145 = v554;
                        x = v553;
                        v144 = v556;
                        if (v143 == v519)
                        {
                          goto LABEL_267;
                        }
                      }

                      v553 = 0;
                      if (v143 != v520)
                      {
                        goto LABEL_53;
                      }

LABEL_52:
                      v553 = v561;
                      v547 = *(&v567 + 1);
                      v548 = v567;
                      v546 = v568;
                      v535 = v572;
                      goto LABEL_53;
                    }

LABEL_267:
                    MPSAutoCache::~MPSAutoCache(v582);
                    v51 = v502;
                    goto LABEL_268;
                  }

LABEL_24:
                  v51 = 0;
                  v52 = a14;
                  v53 = a13;
                  if (a13)
                  {
                    goto LABEL_26;
                  }

                  goto LABEL_25;
                }

LABEL_23:
                v506 = 0;
                if ((*(a1 + *v15) & 8) != 0)
                {
                  goto LABEL_294;
                }

                goto LABEL_24;
              }

LABEL_22:
              v507 = 0;
              goto LABEL_23;
            }
          }

          MPSAutoTexture::AllocateTexture(v46, 0);
          v565 = atomic_load_explicit(v46, memory_order_acquire);
          if (*(&v578 + 1) == 1)
          {
            goto LABEL_14;
          }

          goto LABEL_22;
        }
      }
    }
  }
}

void sub_239BC168C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_239BAD79C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_239BC1C64(_Unwind_Exception *a1)
{
  MPSAutoCache::~MPSAutoCache((v1 - 184));
  sub_239BACD2C((v1 - 112), v3, v4, v5, v6, v7, v8, v9);
  _Unwind_Resume(a1);
}

char *sub_239BC1CF8(char *result, char *a2, uint64_t a3, void *a4, char *a5, char *a6, char *a7, uint64_t a8, int64x2_t *a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v140 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v14 = result;
  }

  else
  {
    v14 = a2;
  }

  if (a6)
  {
    v15 = a6;
  }

  else
  {
    v15 = a7;
  }

  if (a5)
  {
    v16 = a5;
  }

  else
  {
    v16 = v15;
  }

  if (!v14 || !v16)
  {
    return result;
  }

  v20 = result;
  v21 = vmovn_s64(*a9);
  v123 = v21.i16[2];
  v122 = v21.i16[0];
  v22 = vmovn_s64(*(a10 + 24));
  v127 = v22.i16[2];
  v126 = v22.i16[0];
  v23 = vmovn_s64(*a10);
  v125 = v23.i16[2];
  v124 = v23.i16[0];
  v24 = *MEMORY[0x277CD72F8];
  v25 = *&v16[v24] + 3;
  v26 = v25 >> 2;
  v27 = *&v14[v24] + 3;
  v28 = v27 >> 2;
  if (a2)
  {
    v29 = ((*&a2[v24] + 3) >> 2);
  }

  else
  {
    v29 = 0;
  }

  v131 = (a9[1].i64[0] & ~(a9[1].i64[0] >> 63)) * v26;
  v30 = v28 * (*(a10 + 16) & ~(*(a10 + 16) >> 31));
  v132 = v30 + ((a11 + 3) >> 2);
  v133 = v30;
  v31 = 1.0 / v26;
  v119 = v31;
  v128 = (v25 >> 2);
  v129 = (v27 >> 2);
  v130 = v29;
  v135 = objc_msgSend_numberOfImages(v16, a2, a3, a4, a5, a6, a7, a8) * v26;
  v134 = objc_msgSend_numberOfImages(v14, v32, v33, v34, v35, v36, v37, v38) * v28;
  v113 = v28;
  if (a12)
  {
    v39 = *(a12 + 4);
    v40 = *(a12 + 12);
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v120 = v39;
  v121 = v40;
  v41 = 256;
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  objc_msgSend_setComputePipelineState_(a4, v43, PipelineStateForMPSKey, v44, v45, v46, v47, v48, 0, 0, 0, 0, 0);
  v56 = objc_msgSend_threadExecutionWidth(PipelineStateForMPSKey, v49, v50, v51, v52, v53, v54, v55);
  v64 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v57, v58, v59, v60, v61, v62, v63);
  v65 = v64;
  if (v64 < 0x100)
  {
    v41 = v64;
  }

  MPSLibrary::ReleaseMPSKey();
  objc_msgSend_texture(v14, v66, v67, v68, v69, v70, v71, v72);
  v73 = MPSIsTextureTwiddled();
  v74 = 4;
  if (v73)
  {
    v75 = 4;
  }

  else
  {
    v75 = 1;
  }

  if (v73)
  {
    v76 = v56 >> 2;
  }

  else
  {
    v76 = v56;
  }

  v77 = 2;
  if (v73)
  {
    v77 = 4;
  }

  if (v76 <= 1)
  {
    v76 = 1;
  }

  if (v65 >= 2 && v76 << v77 > v41)
  {
    v74 = 4;
    do
    {
      v78 = v74 >> 1;
      if (v74 <= 1)
      {
        v78 = 1;
      }

      v79 = v76 >> 1;
      if (v76 < 2)
      {
        v79 = 1;
      }

      else
      {
        v78 = v74;
      }

      v80 = v75 >= 2;
      if (v75 >= 2)
      {
        v75 >>= 1;
      }

      else
      {
        v74 = v78;
        v75 = 1;
      }

      if (!v80)
      {
        v76 = v79;
      }
    }

    while (v75 * v74 * v76 > v41);
  }

  if (v76 <= 1)
  {
    v81 = 1;
  }

  else
  {
    v81 = v76;
  }

  if (v74 <= 1)
  {
    v82 = 1;
  }

  else
  {
    v82 = v74;
  }

  Sampler = MPSDevice::GetSampler();
  objc_msgSend_setSamplerState_atIndex_(a4, v84, Sampler, 0, v85, v86, v87, v88);
  if (a5)
  {
    v137 = objc_msgSend_texture(a5, v89, v90, v91, v92, v93, v94, v95);
    if (a6)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v137 = 0;
    if (a6)
    {
LABEL_52:
      v138 = objc_msgSend_texture(a6, v89, v90, v91, v92, v93, v94, v95);
      v96 = a7;
      if (!a7)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }
  }

  v138 = 0;
  v96 = a7;
  if (a7)
  {
LABEL_53:
    v96 = objc_msgSend_texture(v96, v89, v90, v91, v92, v93, v94, v95);
  }

LABEL_54:
  v139 = v96;
  if (!v20)
  {
    v136[0] = 0;
    if (a2)
    {
      goto LABEL_56;
    }

LABEL_61:
    v97 = 0;
    goto LABEL_62;
  }

  v136[0] = objc_msgSend_texture(v20, v89, v90, v91, v92, v93, v94, v95);
  if (!a2)
  {
    goto LABEL_61;
  }

LABEL_56:
  v97 = objc_msgSend_texture(a2, v89, v90, v91, v92, v93, v94, v95);
LABEL_62:
  v136[1] = v97;
  objc_msgSend_setTextures_withRange_(a4, v89, &v137, 0, 3, v93, v94, v95);
  objc_msgSend_setTextures_withRange_(a4, v98, v136, 3, 2, v99, v100, v101);
  objc_msgSend_setBytes_length_atIndex_(a4, v102, &v119, 52, 0, v103, v104, v105);
  if (a7 != 0 && a8 != 0)
  {
    objc_msgSend_setBuffer_offset_atIndex_(a4, v106, a8, 0, 1, v108, v109, v110);
  }

  v111 = (v75 + *(a10 + 32) - 1) / v75;
  v112 = v82 + *(a10 + 40) * v113 - 1;
  v118[0] = (v81 + *(a10 + 24) - 1) / v81;
  v118[1] = v111;
  v118[2] = v112 / v82;
  v117[0] = v81;
  v117[1] = v75;
  v117[2] = v82;
  return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a4, v106, v118, v117, v107, v108, v109, v110);
}

void *sub_239BC268C(void *a1, void *a2, void *a3, void *a4)
{
  v8 = malloc_type_malloc(0x98uLL, 0x10A0040D60EB3F0uLL);
  v16 = objc_msgSend_useFloat32Weights(a2, v9, v10, v11, v12, v13, v14, v15);
  v24 = objc_msgSend_useFloat32Weights(a2, v17, v18, v19, v20, v21, v22, v23);
  *(v8 + 17) = 0;
  *(v8 + 12) = 0;
  *(v8 + 13) = 0;
  sub_239BDBA40(a1, a2, v8, v25, v26, v27, v28, v29);
  if (a3)
  {
    *(v8 + 11) = malloc_type_calloc(0x1DuLL, 0x10uLL, 0x1000040F7F8B94BuLL);
  }

  *(v8 + 14) = 0;
  *(v8 + 144) = 0;
  *(v8 + 15) = 0;
  if (objc_msgSend_inputWeights(a2, v30, v31, v32, v33, v34, v35, v36))
  {
    v44 = objc_msgSend_inputWeights(a2, v37, v38, v39, v40, v41, v42, v43);
    if ((objc_msgSend_load(v44, v45, v46, v47, v48, v49, v50, v51) & 1) == 0)
    {
      goto LABEL_44;
    }

    v59 = objc_msgSend_inputWeights(a2, v52, v53, v54, v55, v56, v57, v58);
    v67 = objc_msgSend_descriptor(v59, v60, v61, v62, v63, v64, v65, v66);
    v75 = v67;
    if (v67)
    {
      objc_msgSend_neuronInfo(v67, v68, v69, v70, v71, v72, v73, v74);
    }

    else
    {
      v314 = 0uLL;
      v315 = 0;
    }

    *(v8 + 7) = v314;
    *(v8 + 16) = v315;
    v76 = objc_msgSend_useLayerInputUnitTransformMode(a2, v68, v69, v70, v71, v72, v73, v74);
    v84 = objc_msgSend_inputWeights(a2, v77, v78, v79, v80, v81, v82, v83);
    if (v76)
    {
      v92 = objc_msgSend_biasTerms(v84, v85, v86, v87, v88, v89, v90, v91);
      v100 = objc_msgSend_outputFeatureChannels(v75, v93, v94, v95, v96, v97, v98, v99);
      MPSDevice = MPSDevice::GetMPSDevice();
      v109 = 0;
      if (v92)
      {
        if (MPSDevice)
        {
          v110 = 4 * v100;
          v111 = (*(*MPSDevice + 24))(MPSDevice);
          v117 = objc_msgSend_newBufferWithLength_options_(a1, v112, (v110 + 12) & 0x3FFFFFFF0, 16 * v111, v113, v114, v115, v116);
          v109 = v117;
          if (v117)
          {
            v118 = objc_msgSend_contents(v117, v102, v103, v104, v105, v106, v107, v108);
            memcpy(v118, v92, v110);
          }
        }
      }

      *(v8 + 17) = v109;
      *(v8 + 144) = 1;
      if (!a3)
      {
        goto LABEL_37;
      }

      if (!a4)
      {
        goto LABEL_37;
      }

      v119 = MEMORY[0x277CD7258];
      v120 = objc_msgSend_outputFeatureChannels(v75, v102, v103, v104, v105, v106, v107, v108);
      v128 = objc_msgSend_length(*(v8 + 17), v121, v122, v123, v124, v125, v126, v127);
      v132 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(v119, v129, 1, v120, v128, 268435488, v130, v131);
      v133 = objc_alloc(MEMORY[0x277CD7250]);
      v139 = objc_msgSend_initWithBuffer_descriptor_(v133, v134, *(v8 + 17), v132, v135, v136, v137, v138);

      *(v8 + 17) = 0;
      objc_msgSend_addObject_(a3, v140, v139, v141, v142, v143, v144, v145);

      objc_msgSend_addObject_(a4, v146, v132, v147, v148, v149, v150, v151);
      v152 = *(v8 + 11);
      if (!v152)
      {
        goto LABEL_37;
      }

      *v152 = 268435488;
      v153 = objc_msgSend_count(a3, v102, v103, v104, v105, v106, v107, v108) - 1;
      v154 = *(v8 + 11);
      goto LABEL_36;
    }

    v186 = 1;
    if (objc_msgSend_dataType(v84, v85, v86, v87, v88, v89, v90, v91) != 268435472)
    {
      v162 = objc_msgSend_inputWeights(a2, v155, v156, v157, v158, v159, v160, v161);
      if (objc_msgSend_dataType(v162, v163, v164, v165, v166, v167, v168, v169) != 536870920)
      {
        v170 = objc_msgSend_inputWeights(a2, v155, v156, v157, v158, v159, v160, v161);
        if (objc_msgSend_dataType(v170, v171, v172, v173, v174, v175, v176, v177) != 8)
        {
          v178 = objc_msgSend_inputWeights(a2, v155, v156, v157, v158, v159, v160, v161);
          if ((objc_msgSend_dataType(v178, v179, v180, v181, v182, v183, v184, v185) != 268435488) | v16 & 1)
          {
            v186 = 0;
          }
        }
      }
    }

    v187 = objc_msgSend_inputWeights(a2, v155, v156, v157, v158, v159, v160, v161);
    *(v8 + 12) = sub_239BDBD50(a1, v187, 1, v16 ^ 1u, v186, a3, a4);
    if (a3 && objc_msgSend_count(a3, v188, v189, v190, v191, v192, v193, v194))
    {
      v153 = objc_msgSend_count(a3, v188, v189, v190, v191, v192, v193, v194) - 1;
      v202 = objc_msgSend_inputWeights(a2, v195, v196, v197, v198, v199, v200, v201);
      if (!objc_msgSend_biasTerms(v202, v203, v204, v205, v206, v207, v208, v209))
      {
LABEL_26:
        v210 = *(v8 + 11);
LABEL_33:
        if (!a3 || !v210)
        {
          goto LABEL_37;
        }

        v228 = objc_msgSend_objectAtIndexedSubscript_(a3, v102, v153, v104, v105, v106, v107, v108);
        v236 = objc_msgSend_dataType(v228, v229, v230, v231, v232, v233, v234, v235);
        v154 = *(v8 + 11);
        *v154 = v236;
LABEL_36:
        *(v154 + 8) = v153;
LABEL_37:
        v237 = objc_msgSend_inputWeights(a2, v102, v103, v104, v105, v106, v107, v108);
        objc_msgSend_purge(v237, v238, v239, v240, v241, v242, v243, v244);
        goto LABEL_38;
      }
    }

    else
    {
      v153 = 0;
      v211 = objc_msgSend_inputWeights(a2, v188, v189, v190, v191, v192, v193, v194);
      if (!objc_msgSend_biasTerms(v211, v212, v213, v214, v215, v216, v217, v218))
      {
        goto LABEL_26;
      }
    }

    *(v8 + 144) = 1;
    v210 = *(v8 + 11);
    if (a3 && v210)
    {
      v219 = objc_msgSend_objectAtIndexedSubscript_(a3, v102, v153, v104, v105, v106, v107, v108);
      v227 = objc_msgSend_dataType(v219, v220, v221, v222, v223, v224, v225, v226);
      v210 = *(v8 + 11);
      *(v210 + 32) = v227;
      *(v210 + 40) = v153;
      if (v153)
      {
        --v153;
      }

      else
      {
        v153 = 0;
      }
    }

    goto LABEL_33;
  }

LABEL_38:
  if (!objc_msgSend_recurrentWeights(a2, v37, v38, v39, v40, v41, v42, v43))
  {
    return v8;
  }

  v252 = objc_msgSend_recurrentWeights(a2, v245, v246, v247, v248, v249, v250, v251);
  if ((objc_msgSend_load(v252, v253, v254, v255, v256, v257, v258, v259) & 1) == 0)
  {
LABEL_44:
    free(v8);
    return 0;
  }

  v267 = objc_msgSend_recurrentWeights(a2, v260, v261, v262, v263, v264, v265, v266);
  objc_msgSend_descriptor(v267, v268, v269, v270, v271, v272, v273, v274);
  v282 = objc_msgSend_recurrentWeights(a2, v275, v276, v277, v278, v279, v280, v281);
  *(v8 + 13) = sub_239BDBD50(a1, v282, 0, v24 ^ 1u, 0, a3, a4);
  if (a3 && *(v8 + 11))
  {
    Object = objc_msgSend_lastObject(a3, v283, v284, v285, v286, v287, v288, v289);
    *(*(v8 + 11) + 16) = objc_msgSend_dataType(Object, v291, v292, v293, v294, v295, v296, v297);
    *(*(v8 + 11) + 24) = objc_msgSend_count(a3, v298, v299, v300, v301, v302, v303, v304) - 1;
  }

  v305 = objc_msgSend_recurrentWeights(a2, v283, v284, v285, v286, v287, v288, v289);
  objc_msgSend_purge(v305, v306, v307, v308, v309, v310, v311, v312);
  return v8;
}

char *sub_239BC2B08(void *a1, void *a2, void *a3, void *a4)
{
  v7 = malloc_type_malloc(0x1A8uLL, 0x10A0040C2E34A0CuLL);
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *v7 = 0;
  objc_msgSend_cellClipThreshold(a2, v8, v9, v10, v11, v12, v13, v14);
  *(v7 + 105) = v15;
  v7[419] = objc_msgSend_coupleForgetGateToInputGate(a2, v16, v17, v18, v19, v20, v21, v22);
  v7[418] = objc_msgSend_memoryWeightsAreDiagonal(a2, v23, v24, v25, v26, v27, v28, v29);
  v1176 = a1;
  sub_239BDBA40(a1, a2, v7, v30, v31, v32, v33, v34);
  if (a3)
  {
    *(v7 + 11) = malloc_type_calloc(0x1DuLL, 0x10uLL, 0x1000040F7F8B94BuLL);
  }

  MPSDevice = MPSDevice::GetMPSDevice();
  if (!MPSDevice)
  {
    goto LABEL_126;
  }

  __src = MPSDevice;
  v43 = objc_msgSend_useFloat32Weights(a2, v36, v37, v38, v39, v40, v41, v42);
  v1172 = objc_msgSend_useFloat32Weights(a2, v44, v45, v46, v47, v48, v49, v50);
  *(v7 + 208) = 0;
  *(v7 + 48) = 0;
  if ((objc_msgSend_useLayerInputUnitTransformMode(a2, v51, v52, v53, v54, v55, v56, v57) & 1) != 0 || !objc_msgSend_inputGateInputWeights(a2, v58, v59, v60, v61, v62, v63, v64) || !objc_msgSend_forgetGateInputWeights(a2, v58, v59, v60, v61, v62, v63, v64) || !objc_msgSend_cellGateInputWeights(a2, v58, v59, v60, v61, v62, v63, v64) || !objc_msgSend_outputGateInputWeights(a2, v58, v59, v60, v61, v62, v63, v64) || (v65 = objc_msgSend_inputGateInputWeights(a2, v58, v59, v60, v61, v62, v63, v64), v73 = objc_msgSend_dataType(v65, v66, v67, v68, v69, v70, v71, v72), v81 = objc_msgSend_forgetGateInputWeights(a2, v74, v75, v76, v77, v78, v79, v80), v73 != objc_msgSend_dataType(v81, v82, v83, v84, v85, v86, v87, v88)) || (v89 = objc_msgSend_cellGateInputWeights(a2, v58, v59, v60, v61, v62, v63, v64), v97 = objc_msgSend_dataType(v89, v90, v91, v92, v93, v94, v95, v96), v105 = objc_msgSend_outputGateInputWeights(a2, v98, v99, v100, v101, v102, v103, v104), v97 != objc_msgSend_dataType(v105, v106, v107, v108, v109, v110, v111, v112)) || (v113 = objc_msgSend_inputGateInputWeights(a2, v58, v59, v60, v61, v62, v63, v64), v121 = objc_msgSend_dataType(v113, v114, v115, v116, v117, v118, v119, v120), v129 = objc_msgSend_outputGateInputWeights(a2, v122, v123, v124, v125, v126, v127, v128), v121 != objc_msgSend_dataType(v129, v130, v131, v132, v133, v134, v135, v136)))
  {
    v1174 = 0;
    if (objc_msgSend_memoryWeightsAreDiagonal(a2, v58, v59, v60, v61, v62, v63, v64))
    {
      goto LABEL_25;
    }

    goto LABEL_86;
  }

  v137 = objc_msgSend_inputGateInputWeights(a2, v58, v59, v60, v61, v62, v63, v64);
  v145 = objc_msgSend_dataType(v137, v138, v139, v140, v141, v142, v143, v144);
  v153 = v145;
  v1164 = v43;
  v154 = v43 | (v145 != 268435488);
  if (v43 & 1 | (v145 != 268435488))
  {
    v155 = v145;
  }

  else
  {
    v155 = 268435472;
  }

  v156 = (v155 & 0xDFFFFFFF) == 8;
  if ((v155 & 0xDFFFFFFF) == 8)
  {
    v157 = 268435472;
  }

  else
  {
    v157 = v155;
  }

  v158 = objc_msgSend_inputGateInputWeights(a2, v146, v147, v148, v149, v150, v151, v152);
  if (!objc_msgSend_load(v158, v159, v160, v161, v162, v163, v164, v165))
  {
    goto LABEL_126;
  }

  v166 = objc_msgSend_forgetGateInputWeights(a2, v36, v37, v38, v39, v40, v41, v42);
  if (!objc_msgSend_load(v166, v167, v168, v169, v170, v171, v172, v173))
  {
    goto LABEL_126;
  }

  v174 = objc_msgSend_cellGateInputWeights(a2, v36, v37, v38, v39, v40, v41, v42);
  if (!objc_msgSend_load(v174, v175, v176, v177, v178, v179, v180, v181))
  {
    goto LABEL_126;
  }

  v182 = objc_msgSend_outputGateInputWeights(a2, v36, v37, v38, v39, v40, v41, v42);
  if (!objc_msgSend_load(v182, v183, v184, v185, v186, v187, v188, v189))
  {
    goto LABEL_126;
  }

  v190 = objc_msgSend_inputGateInputWeights(a2, v36, v37, v38, v39, v40, v41, v42);
  v198 = objc_msgSend_descriptor(v190, v191, v192, v193, v194, v195, v196, v197);
  v206 = v198;
  if (v198)
  {
    objc_msgSend_neuronInfo(v198, v199, v200, v201, v202, v203, v204, v205);
  }

  else
  {
    v1177 = 0uLL;
    v1178 = 0;
  }

  *(v7 + 136) = v1177;
  *(v7 + 19) = v1178;
  v216 = objc_msgSend_forgetGateInputWeights(a2, v199, v200, v201, v202, v203, v204, v205);
  v224 = objc_msgSend_descriptor(v216, v217, v218, v219, v220, v221, v222, v223);
  if (v224)
  {
    objc_msgSend_neuronInfo(v224, v225, v226, v227, v228, v229, v230, v231);
  }

  else
  {
    v1177 = 0uLL;
    v1178 = 0;
  }

  *(v7 + 13) = v1177;
  *(v7 + 28) = v1178;
  v232 = objc_msgSend_cellGateInputWeights(a2, v225, v226, v227, v228, v229, v230, v231);
  v240 = objc_msgSend_descriptor(v232, v233, v234, v235, v236, v237, v238, v239);
  if (v240)
  {
    objc_msgSend_neuronInfo(v240, v241, v242, v243, v244, v245, v246, v247);
  }

  else
  {
    v1177 = 0uLL;
    v1178 = 0;
  }

  *(v7 + 37) = v1178;
  *(v7 + 280) = v1177;
  v248 = objc_msgSend_outputGateInputWeights(a2, v241, v242, v243, v244, v245, v246, v247);
  v256 = objc_msgSend_descriptor(v248, v249, v250, v251, v252, v253, v254, v255);
  if (v256)
  {
    objc_msgSend_neuronInfo(v256, v257, v258, v259, v260, v261, v262, v263);
  }

  else
  {
    v1177 = 0uLL;
    v1178 = 0;
  }

  v264 = v154 ^ 1;
  *(v7 + 22) = v1177;
  *(v7 + 46) = v1178;
  v265 = objc_msgSend_inputFeatureChannels(v206, v257, v258, v259, v260, v261, v262, v263);
  v273 = objc_msgSend_outputFeatureChannels(v206, v266, v267, v268, v269, v270, v271, v272);
  v1175 = v273;
  __dst = (4 * v273);
  if (v157 == 268435472)
  {
    v281 = v265;
  }

  else
  {
    v281 = 4 * v273;
  }

  if (v157 == 268435472)
  {
    v282 = 4 * v273;
  }

  else
  {
    v282 = v265;
  }

  v283 = 2 * v282 + 14;
  v1145 = v282;
  v1147 = v281;
  v284 = 4 * v282 + 12;
  if (v157 != 268435472)
  {
    v283 = v284;
  }

  context = v265;
  v1162 = v283 & 0xFFFFFFFFFFFFFFF0;
  v285 = (v283 & 0xFFFFFFFFFFFFFFF0) * v281;
  v286 = 16 * objc_msgSend_outputFeatureChannels(v206, v274, v275, v276, v277, v278, v279, v280);
  v1143 = v285;
  if (a3)
  {
    v287 = (*(*__src + 24))(__src);
    v1149 = objc_msgSend_newBufferWithLength_options_(v1176, v288, v286, 16 * v287, v289, v290, v291, v292);
    v293 = __src;
    v294 = v285;
  }

  else
  {
    v1149 = 0;
    v294 = v285 + v286;
    v293 = __src;
  }

  v295 = v156 | v264;
  v296 = (*(*v293 + 24))(v293);
  v309 = objc_msgSend_newBufferWithLength_options_(v1176, v297, v294, 16 * v296, v298, v299, v300, v301);
  v1157 = context * (v153 >> 3);
  v310 = 2;
  if (v157 != 268435472)
  {
    v310 = v1162;
  }

  __n = v310 * v1175;
  v311 = objc_msgSend_inputGateInputWeights(a2, v302, v303, v304, v305, v306, v307, v308);
  v319 = objc_msgSend_weights(v311, v312, v313, v314, v315, v316, v317, v318);
  v1151 = v309;
  v334 = objc_msgSend_contents(v309, v320, v321, v322, v323, v324, v325, v326);
  v343 = v153 & 0xDFFFFFFF;
  if ((v153 & 0xDFFFFFFF) == 8)
  {
    v344 = objc_msgSend_inputGateInputWeights(a2, v327, v328, v329, v330, v331, v332, v333);
    v352 = objc_msgSend_rangesForUInt8Kernel(v344, v345, v346, v347, v348, v349, v350, v351);
  }

  else
  {
    v352 = 0;
  }

  v1142 = v295;
  v353 = v295 & 1;
  sub_239BDC270(v319, v1157, v153, v334, v1162, v157, context, v1175, v335, v336, v337, v338, v339, v340, v341, v342, v157 == 268435472, v353, v352);
  v361 = objc_msgSend_forgetGateInputWeights(a2, v354, v355, v356, v357, v358, v359, v360);
  v369 = objc_msgSend_weights(v361, v362, v363, v364, v365, v366, v367, v368);
  v385 = &v334[__n];
  v386 = a3;
  if (v343 == 8)
  {
    v387 = v369;
    v388 = objc_msgSend_forgetGateInputWeights(a2, v370, v371, v372, v373, v374, v375, v376);
    v396 = objc_msgSend_rangesForUInt8Kernel(v388, v389, v390, v391, v392, v393, v394, v395);
    v369 = v387;
  }

  else
  {
    v396 = 0;
  }

  sub_239BDC270(v369, v1157, v153, v385, v1162, v157, context, v1175, v377, v378, v379, v380, v381, v382, v383, v384, v157 == 268435472, v353, v396);
  v404 = objc_msgSend_cellGateInputWeights(a2, v397, v398, v399, v400, v401, v402, v403);
  v412 = objc_msgSend_weights(v404, v405, v406, v407, v408, v409, v410, v411);
  v428 = &v385[__n];
  if (v343 == 8)
  {
    v429 = v412;
    v430 = objc_msgSend_cellGateInputWeights(a2, v413, v414, v415, v416, v417, v418, v419);
    v438 = objc_msgSend_rangesForUInt8Kernel(v430, v431, v432, v433, v434, v435, v436, v437);
    v412 = v429;
  }

  else
  {
    v438 = 0;
  }

  sub_239BDC270(v412, v1157, v153, v428, v1162, v157, context, v1175, v420, v421, v422, v423, v424, v425, v426, v427, v157 == 268435472, v1142 & 1, v438);
  v446 = objc_msgSend_outputGateInputWeights(a2, v439, v440, v441, v442, v443, v444, v445);
  v454 = objc_msgSend_weights(v446, v447, v448, v449, v450, v451, v452, v453);
  if (v343 == 8)
  {
    v470 = v454;
    v471 = objc_msgSend_outputGateInputWeights(a2, v455, v456, v457, v458, v459, v460, v461);
    v479 = objc_msgSend_rangesForUInt8Kernel(v471, v472, v473, v474, v475, v476, v477, v478);
    v454 = v470;
  }

  else
  {
    v479 = 0;
  }

  a3 = v386;
  sub_239BDC270(v454, v1157, v153, &v428[__n], v1162, v157, context, v1175, v462, v463, v464, v465, v466, v467, v468, v469, v157 == 268435472, v1142 & 1, v479);
  if (v1149)
  {
    v494 = objc_msgSend_contents(v1149, v480, v481, v482, v483, v484, v485, v486);
  }

  else
  {
    v494 = objc_msgSend_contents(v1151, v480, v481, v482, v483, v484, v485, v486) + v1143;
  }

  v7[160] = 0;
  v495 = objc_msgSend_inputGateInputWeights(a2, v487, v488, v489, v490, v491, v492, v493);
  if (objc_msgSend_biasTerms(v495, v496, v497, v498, v499, v500, v501, v502))
  {
    v7[160] = 1;
    v510 = objc_msgSend_inputGateInputWeights(a2, v503, v504, v505, v506, v507, v508, v509);
    v518 = objc_msgSend_biasTerms(v510, v511, v512, v513, v514, v515, v516, v517);
    memcpy(v494, v518, __dst);
  }

  v7[232] = 0;
  v519 = objc_msgSend_forgetGateInputWeights(a2, v503, v504, v505, v506, v507, v508, v509);
  if (objc_msgSend_biasTerms(v519, v520, v521, v522, v523, v524, v525, v526))
  {
    v7[232] = 1;
    v534 = objc_msgSend_forgetGateInputWeights(a2, v527, v528, v529, v530, v531, v532, v533);
    v542 = objc_msgSend_biasTerms(v534, v535, v536, v537, v538, v539, v540, v541);
    memcpy(&__dst[v494], v542, __dst);
  }

  v7[304] = 0;
  v543 = objc_msgSend_cellGateInputWeights(a2, v527, v528, v529, v530, v531, v532, v533);
  if (objc_msgSend_biasTerms(v543, v544, v545, v546, v547, v548, v549, v550))
  {
    v7[304] = 1;
    v558 = objc_msgSend_cellGateInputWeights(a2, v551, v552, v553, v554, v555, v556, v557);
    v566 = objc_msgSend_biasTerms(v558, v559, v560, v561, v562, v563, v564, v565);
    memcpy((v494 + 8 * v1175), v566, __dst);
  }

  v7[376] = 0;
  v567 = objc_msgSend_outputGateInputWeights(a2, v551, v552, v553, v554, v555, v556, v557);
  if (objc_msgSend_biasTerms(v567, v568, v569, v570, v571, v572, v573, v574))
  {
    v7[376] = 1;
    v582 = objc_msgSend_outputGateInputWeights(a2, v575, v576, v577, v578, v579, v580, v581);
    v590 = objc_msgSend_biasTerms(v582, v583, v584, v585, v586, v587, v588, v589);
    memcpy((v494 + 12 * v1175), v590, __dst);
  }

  v591 = objc_msgSend_inputGateInputWeights(a2, v575, v576, v577, v578, v579, v580, v581);
  objc_msgSend_purge(v591, v592, v593, v594, v595, v596, v597, v598);
  v606 = objc_msgSend_forgetGateInputWeights(a2, v599, v600, v601, v602, v603, v604, v605);
  objc_msgSend_purge(v606, v607, v608, v609, v610, v611, v612, v613);
  v621 = objc_msgSend_cellGateInputWeights(a2, v614, v615, v616, v617, v618, v619, v620);
  objc_msgSend_purge(v621, v622, v623, v624, v625, v626, v627, v628);
  v636 = objc_msgSend_outputGateInputWeights(a2, v629, v630, v631, v632, v633, v634, v635);
  objc_msgSend_purge(v636, v637, v638, v639, v640, v641, v642, v643);
  contexta = objc_autoreleasePoolPush();
  v647 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v644, v1147, v1145, v1162, v157, v645, v646);
  v648 = objc_alloc(MEMORY[0x277CD7250]);
  v654 = objc_msgSend_initWithBuffer_descriptor_(v648, v649, v1151, v647, v650, v651, v652, v653);
  *(v7 + 12) = v654;
  *(v7 + 21) = 0;
  *(v7 + 30) = 0;
  *(v7 + 39) = 0;
  v7[416] = 1;

  if (v386)
  {
    objc_msgSend_addObject_(v386, v655, v654, v656, v657, v658, v659, v660);
    objc_msgSend_addObject_(a4, v661, v647, v662, v663, v664, v665, v666);
    v674 = objc_msgSend_count(v386, v667, v668, v669, v670, v671, v672, v673) - 1;
    *(v7 + 12) = 0;

    if (v1149)
    {
      v682 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v675, 1, __dst, 16 * v1175, 268435488, v680, v681);
      v683 = objc_alloc(MEMORY[0x277CD7250]);
      v689 = objc_msgSend_initWithBuffer_descriptor_(v683, v684, v1149, v682, v685, v686, v687, v688);
      objc_msgSend_addObject_(a3, v690, v689, v691, v692, v693, v694, v695);
      objc_msgSend_addObject_(a4, v696, v682, v697, v698, v699, v700, v701);
    }

    v702 = objc_msgSend_count(a3, v675, v676, v677, v678, v679, v680, v681);
    v710 = objc_msgSend_dataType(v654, v703, v704, v705, v706, v707, v708, v709);
    v711 = *(v7 + 11);
    *(v711 + 48) = v710;
    *(v711 + 56) = v674;
    *(v711 + 112) = v710;
    *(v711 + 120) = v674;
    *(v711 + 176) = v710;
    *(v711 + 184) = v674;
    *(v711 + 240) = v710;
    *(v711 + 248) = v674;
    if (v1149)
    {
      v712 = v702 - 1;
      if (v7[160] == 1)
      {
        *(v711 + 96) = 268435488;
        *(v711 + 104) = v712;
        if (v7[232] != 1)
        {
          goto LABEL_78;
        }
      }

      else if (v7[232] != 1)
      {
LABEL_78:
        if (v7[304] == 1)
        {
          goto LABEL_79;
        }

        goto LABEL_83;
      }

      *(v711 + 160) = 268435488;
      *(v711 + 168) = v712;
      if (v7[304] == 1)
      {
LABEL_79:
        *(v711 + 224) = 268435488;
        *(v711 + 232) = v712;
        if (v7[376] != 1)
        {
          goto LABEL_85;
        }

LABEL_84:
        *(v711 + 288) = 268435488;
        *(v711 + 296) = v712;
        goto LABEL_85;
      }

LABEL_83:
      if (v7[376] != 1)
      {
        goto LABEL_85;
      }

      goto LABEL_84;
    }
  }

LABEL_85:
  objc_autoreleasePoolPop(contexta);
  v1174 = 1;
  v43 = v1164;
  if (objc_msgSend_memoryWeightsAreDiagonal(a2, v713, v714, v715, v716, v717, v718, v719))
  {
    goto LABEL_25;
  }

LABEL_86:
  if (objc_msgSend_inputGateMemoryWeights(a2, v207, v208, v209, v210, v211, v212, v213) || objc_msgSend_forgetGateMemoryWeights(a2, v207, v208, v209, v210, v211, v212, v213) || objc_msgSend_cellGateMemoryWeights(a2, v207, v208, v209, v210, v211, v212, v213) || objc_msgSend_outputGateMemoryWeights(a2, v207, v208, v209, v210, v211, v212, v213))
  {
    v214 = a3;
    v215 = 1;
    goto LABEL_91;
  }

LABEL_25:
  v214 = a3;
  v215 = 0;
LABEL_91:
  v720 = *(v7 + 7);
  v721 = objc_msgSend_inputGateRecurrentWeights(a2, v207, v208, v209, v210, v211, v212, v213);
  v729 = objc_msgSend_forgetGateRecurrentWeights(a2, v722, v723, v724, v725, v726, v727, v728);
  v737 = objc_msgSend_cellGateRecurrentWeights(a2, v730, v731, v732, v733, v734, v735, v736);
  v745 = objc_msgSend_outputGateRecurrentWeights(a2, v738, v739, v740, v741, v742, v743, v744);
  v753 = 0;
  if ((v215 & 1) != 0 || !v721)
  {
    v756 = v214;
    v754 = v43;
    goto LABEL_125;
  }

  v754 = v43;
  if (!v729 || !v737 || !v745)
  {
    v756 = v214;
    goto LABEL_125;
  }

  v755 = v720 & 3;
  v756 = v214;
  if (v755)
  {
LABEL_125:
    v889 = v754 ^ 1;
    v890 = v753;
    __srcd = v753;
    v891 = objc_msgSend_inputGateInputWeights(a2, v746, v747, v748, v749, v750, v751, v752);
    v899 = objc_msgSend_inputGateRecurrentWeights(a2, v892, v893, v894, v895, v896, v897, v898);
    v907 = objc_msgSend_inputGateMemoryWeights(a2, v900, v901, v902, v903, v904, v905, v906);
    sub_239BDD0FC(v7 + 12, v1176, a2, v891, v899, v907, v1174, v890, v1172 ^ 1, v889, v756, a4, *(v7 + 11) + 48);
    v915 = objc_msgSend_forgetGateInputWeights(a2, v908, v909, v910, v911, v912, v913, v914);
    v923 = objc_msgSend_forgetGateRecurrentWeights(a2, v916, v917, v918, v919, v920, v921, v922);
    v931 = objc_msgSend_forgetGateMemoryWeights(a2, v924, v925, v926, v927, v928, v929, v930);
    sub_239BDD0FC(v7 + 21, v1176, a2, v915, v923, v931, v1174, __srcd, v1172 ^ 1, v889, v756, a4, *(v7 + 11) + 112);
    v1166 = objc_msgSend_cellGateInputWeights(a2, v932, v933, v934, v935, v936, v937, v938);
    v946 = objc_msgSend_cellGateRecurrentWeights(a2, v939, v940, v941, v942, v943, v944, v945);
    v954 = objc_msgSend_cellGateMemoryWeights(a2, v947, v948, v949, v950, v951, v952, v953);
    sub_239BDD0FC(v7 + 30, v1176, a2, v1166, v946, v954, v1174, __srcd, v1172 ^ 1, v889, v756, a4, *(v7 + 11) + 176);
    v962 = objc_msgSend_outputGateInputWeights(a2, v955, v956, v957, v958, v959, v960, v961);
    v970 = objc_msgSend_outputGateRecurrentWeights(a2, v963, v964, v965, v966, v967, v968, v969);
    v978 = objc_msgSend_outputGateMemoryWeights(a2, v971, v972, v973, v974, v975, v976, v977);
    sub_239BDD0FC(v7 + 39, v1176, a2, v962, v970, v978, v1174, __srcd, v1172 ^ 1, v889, v756, a4, *(v7 + 11) + 240);
    goto LABEL_126;
  }

  v757 = v745;
  v758 = objc_msgSend_dataType(v721, v746, v747, v748, v749, v750, v751, v752);
  if (v758 != objc_msgSend_dataType(v729, v759, v760, v761, v762, v763, v764, v765))
  {
    v753 = 0;
    goto LABEL_125;
  }

  v766 = objc_msgSend_dataType(v737, v746, v747, v748, v749, v750, v751, v752);
  if (v766 != objc_msgSend_dataType(v757, v767, v768, v769, v770, v771, v772, v773) || (v774 = objc_msgSend_dataType(v721, v746, v747, v748, v749, v750, v751, v752), v774 != objc_msgSend_dataType(v757, v775, v776, v777, v778, v779, v780, v781)))
  {
    v753 = 0;
    goto LABEL_125;
  }

  if (objc_msgSend_dataType(v721, v746, v747, v748, v749, v750, v751, v752) != 268435472 && objc_msgSend_dataType(v721, v746, v747, v748, v749, v750, v751, v752) != 268435488)
  {
    v753 = 0;
    goto LABEL_125;
  }

  if (objc_msgSend_load(v721, v746, v747, v748, v749, v750, v751, v752) && objc_msgSend_load(v729, v36, v37, v38, v39, v40, v41, v42) && objc_msgSend_load(v737, v36, v37, v38, v39, v40, v41, v42) && objc_msgSend_load(v757, v36, v37, v38, v39, v40, v41, v42))
  {
    v1148 = v214;
    v782 = objc_msgSend_descriptor(v721, v36, v37, v38, v39, v40, v41, v42);
    v790 = objc_msgSend_dataType(v721, v783, v784, v785, v786, v787, v788, v789);
    v1163 = objc_msgSend_inputFeatureChannels(v782, v791, v792, v793, v794, v795, v796, v797);
    v805 = objc_msgSend_outputFeatureChannels(v782, v798, v799, v800, v801, v802, v803, v804);
    if (v1172)
    {
      v806 = 268435488;
    }

    else
    {
      v806 = 268435472;
    }

    v1158 = v790;
    if (v790 != 268435488)
    {
      v806 = v790;
    }

    v1146 = v806;
    v807 = v806 >> 3;
    if (v790 == 268435488)
    {
      v808 = v1172;
    }

    else
    {
      v808 = 1;
    }

    v1150 = v808;
    v809 = 16;
    if (v807 == 2)
    {
      v809 = 8;
    }

    if (v807 == 4)
    {
      v809 = 4;
    }

    v810 = (v1163 + v809 - 1) & -v809;
    v1144 = v807;
    contextb = v805;
    v1165 = v810 * v807;
    __na = v810 * v807 * v805;
    v811 = (*(*__src + 24))(__src);
    v1152 = objc_msgSend_newBufferWithLength_options_(v1176, v812, 4 * __na, 16 * v811, v813, v814, v815, v816);
    v831 = objc_msgSend_weights(v721, v817, v818, v819, v820, v821, v822, v823);
    if (v1163 == v810 && (v1150 & 1) != 0)
    {
      v832 = objc_msgSend_contents(v1152, v824, v825, v826, v827, v828, v829, v830);
      v833 = v831;
      v834 = __na;
      memcpy(v832, v833, __na);
      v842 = objc_msgSend_weights(v729, v835, v836, v837, v838, v839, v840, v841);
      v850 = objc_msgSend_contents(v1152, v843, v844, v845, v846, v847, v848, v849);
      memcpy((v850 + v834), v842, v834);
      __srcb = objc_msgSend_weights(v737, v851, v852, v853, v854, v855, v856, v857);
      v865 = objc_msgSend_contents(v1152, v858, v859, v860, v861, v862, v863, v864);
      memcpy((v865 + 2 * v834), __srcb, v834);
      __srcc = objc_msgSend_weights(v757, v866, v867, v868, v869, v870, v871, v872);
      v880 = objc_msgSend_contents(v1152, v873, v874, v875, v876, v877, v878, v879);
      v881 = v1152;
      memcpy((v880 + 3 * v834), __srcc, v834);
    }

    else
    {
      __srca = v1163 * (v1158 >> 3);
      __dsta = malloc_type_malloc(__na, 0x100004077774924uLL);
      bzero(__dsta, __na);
      if (contextb)
      {
        v1011 = v831;
        if (v1150)
        {
          v1012 = contextb;
          v1013 = __dsta;
          do
          {
            memcpy(v1013, v1011, v1163 * v1144);
            v1011 += __srca;
            v1013 += v1165;
            --v1012;
          }

          while (v1012);
        }

        else
        {
          v1014 = __dsta;
          v1015 = contextb;
          do
          {
            MPSConvertFloatToHalf();
            v1014 += v1165;
            v1011 += __srca;
            --v1015;
          }

          while (v1015);
        }
      }

      v1016 = objc_msgSend_contents(v1152, v1004, v1005, v1006, v1007, v1008, v1009, v1010);
      memcpy(v1016, __dsta, __na);
      v1024 = objc_msgSend_weights(v729, v1017, v1018, v1019, v1020, v1021, v1022, v1023);
      if (contextb)
      {
        v1032 = v1024;
        if (v1150)
        {
          v1033 = contextb;
          v1034 = __dsta;
          do
          {
            memcpy(v1034, v1032, v1163 * v1144);
            v1032 += __srca;
            v1034 += v1165;
            --v1033;
          }

          while (v1033);
        }

        else
        {
          v1035 = __dsta;
          v1036 = contextb;
          do
          {
            MPSConvertFloatToHalf();
            v1035 += v1165;
            v1032 += __srca;
            --v1036;
          }

          while (v1036);
        }
      }

      v1037 = objc_msgSend_contents(v1152, v1025, v1026, v1027, v1028, v1029, v1030, v1031);
      memcpy((v1037 + __na), __dsta, __na);
      v1045 = objc_msgSend_weights(v737, v1038, v1039, v1040, v1041, v1042, v1043, v1044);
      if (contextb)
      {
        v1053 = v1045;
        if (v1150)
        {
          v1054 = contextb;
          v1055 = __dsta;
          do
          {
            memcpy(v1055, v1053, v1163 * v1144);
            v1053 += __srca;
            v1055 += v1165;
            --v1054;
          }

          while (v1054);
        }

        else
        {
          v1056 = __dsta;
          v1057 = contextb;
          do
          {
            MPSConvertFloatToHalf();
            v1056 += v1165;
            v1053 += __srca;
            --v1057;
          }

          while (v1057);
        }
      }

      v1058 = objc_msgSend_contents(v1152, v1046, v1047, v1048, v1049, v1050, v1051, v1052);
      memcpy((v1058 + 2 * __na), __dsta, __na);
      v1066 = objc_msgSend_weights(v757, v1059, v1060, v1061, v1062, v1063, v1064, v1065);
      if (contextb)
      {
        v1074 = v1066;
        if (v1150)
        {
          v1075 = contextb;
          v1076 = __dsta;
          do
          {
            memcpy(v1076, v1074, v1163 * v1144);
            v1074 += __srca;
            v1076 += v1165;
            --v1075;
          }

          while (v1075);
        }

        else
        {
          v1077 = __dsta;
          v1078 = contextb;
          do
          {
            MPSConvertFloatToHalf();
            v1077 += v1165;
            v1074 += __srca;
            --v1078;
          }

          while (v1078);
        }
      }

      v881 = v1152;
      v1079 = objc_msgSend_contents(v1152, v1067, v1068, v1069, v1070, v1071, v1072, v1073);
      memcpy((v1079 + 3 * __na), __dsta, __na);
      free(__dsta);
    }

    objc_msgSend_purge(v721, v882, v883, v884, v885, v886, v887, v888);
    objc_msgSend_purge(v729, v1080, v1081, v1082, v1083, v1084, v1085, v1086);
    objc_msgSend_purge(v737, v1087, v1088, v1089, v1090, v1091, v1092, v1093);
    objc_msgSend_purge(v757, v1094, v1095, v1096, v1097, v1098, v1099, v1100);
    v7[417] = 1;
    *(v7 + 48) = 0;
    *(v7 + 13) = 0;
    *(v7 + 22) = 0;
    *(v7 + 31) = 0;
    *(v7 + 40) = 0;
    v1101 = objc_autoreleasePoolPush();
    v1105 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v1102, 4 * contextb, (v1163 + 3) & 0xFFFFFFFFFFFFFFFCLL, v1165, v1146, v1103, v1104);
    v1106 = objc_alloc(MEMORY[0x277CD7250]);
    v1112 = objc_msgSend_initWithBuffer_descriptor_(v1106, v1107, v881, v1105, v1108, v1109, v1110, v1111);

    v756 = v1148;
    if (v1148)
    {
      v1120 = objc_msgSend_dataType(v1112, v1113, v1114, v1115, v1116, v1117, v1118, v1119);
      v1128 = objc_msgSend_count(v1148, v1121, v1122, v1123, v1124, v1125, v1126, v1127);
      v1129 = *(v7 + 11);
      *(v1129 + 64) = v1120;
      *(v1129 + 72) = v1128;
      *(v1129 + 128) = v1120;
      *(v1129 + 136) = v1128;
      *(v1129 + 192) = v1120;
      *(v1129 + 200) = v1128;
      *(v1129 + 256) = v1120;
      *(v1129 + 264) = v1128;
      objc_msgSend_addObject_(v1148, v1130, v1112, v1131, v1132, v1133, v1134, v1135);
      objc_msgSend_addObject_(a4, v1136, v1105, v1137, v1138, v1139, v1140, v1141);
    }

    else
    {
      *(v7 + 13) = v1112;
      *(v7 + 22) = v1112;
      *(v7 + 31) = v1112;
      *(v7 + 40) = v1112;
    }

    objc_autoreleasePoolPop(v1101);
    v753 = 1;
    goto LABEL_125;
  }

LABEL_126:
  *(v7 + 98) = objc_msgSend_cellToOutputNeuronType(a2, v36, v37, v38, v39, v40, v41, v42);
  objc_msgSend_cellToOutputNeuronParamA(a2, v979, v980, v981, v982, v983, v984, v985);
  *(v7 + 99) = v986;
  objc_msgSend_cellToOutputNeuronParamB(a2, v987, v988, v989, v990, v991, v992, v993);
  *(v7 + 100) = v994;
  objc_msgSend_cellToOutputNeuronParamC(a2, v995, v996, v997, v998, v999, v1000, v1001);
  *(v7 + 101) = v1002;
  return v7;
}

unsigned __int8 *sub_239BC3D2C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = malloc_type_malloc(0x108uLL, 0x10A0040E57BB8CDuLL);
  v314 = objc_msgSend_useFloat32Weights(a2, v8, v9, v10, v11, v12, v13, v14) ^ 1;
  v313 = objc_msgSend_useFloat32Weights(a2, v15, v16, v17, v18, v19, v20, v21);
  v315 = a1;
  sub_239BDBA40(a1, a2, v7, v22, v23, v24, v25, v26);
  v34 = a3;
  if (a3)
  {
    *(v7 + 11) = malloc_type_calloc(0x1DuLL, 0x10uLL, 0x1000040F7F8B94BuLL);
  }

  *(v7 + 6) = 0u;
  *(v7 + 7) = 0u;
  *(v7 + 8) = 0u;
  *(v7 + 10) = 0u;
  *(v7 + 124) = 0;
  v7[250] = 0;
  *(v7 + 9) = 0u;
  objc_msgSend_gatePnormValue(a2, v27, v28, v29, v30, v31, v32, v33);
  *(v7 + 63) = v35;
  v43 = objc_msgSend_flipOutputGates(a2, v36, v37, v38, v39, v40, v41, v42);
  *(v7 + 28) = 0;
  *(v7 + 22) = 0;
  *(v7 + 25) = 0;
  v7[256] = v43;
  *(v7 + 23) = 0;
  *(v7 + 26) = 0;
  *(v7 + 29) = 0;
  v317 = *(v7 + 7);
  if (objc_msgSend_inputGateInputWeights(a2, v44, v45, v46, v47, v48, v49, v50))
  {
    v58 = objc_msgSend_inputGateInputWeights(a2, v51, v52, v53, v54, v55, v56, v57);
    if ((sub_239BDD86C(a1, v58, v7 + 12, v7 + 19, v7 + 248, (v7 + 176), &v317, v7[72], v314, a3, a4, *(v7 + 11) + 304, 2) & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  if (objc_msgSend_inputGateRecurrentWeights(a2, v51, v52, v53, v54, v55, v56, v57))
  {
    v66 = objc_msgSend_inputGateRecurrentWeights(a2, v59, v60, v61, v62, v63, v64, v65);
    v67 = *(v7 + 11);
    if (!objc_msgSend_load(v66, v68, v69, v70, v71, v72, v73, v74))
    {
      goto LABEL_41;
    }

    objc_msgSend_descriptor(v66, v75, v76, v77, v78, v79, v80, v81);
    *(v7 + 13) = sub_239BDBD50(a1, v66, 0, v313 ^ 1u, 0, v34, a4);
    if (v34)
    {
      v312 = v67;
      if (objc_msgSend_count(v34, v82, v83, v84, v85, v86, v87, v88))
      {
        v96 = objc_msgSend_count(v34, v89, v90, v91, v92, v93, v94, v95) - 1;
      }

      else
      {
        v96 = 0;
      }

      objc_msgSend_biasTerms(v66, v89, v90, v91, v92, v93, v94, v95);
      v110 = objc_msgSend_objectAtIndexedSubscript_(v34, v104, v96, v105, v106, v107, v108, v109);
      *(v312 + 320) = objc_msgSend_dataType(v110, v111, v112, v113, v114, v115, v116, v117);
      *(v312 + 328) = v96;
    }

    else
    {
      objc_msgSend_biasTerms(v66, v82, v83, v84, v85, v86, v87, v88);
    }

    objc_msgSend_purge(v66, v97, v98, v99, v100, v101, v102, v103);
  }

  if (objc_msgSend_recurrentGateInputWeights(a2, v59, v60, v61, v62, v63, v64, v65))
  {
    v125 = objc_msgSend_recurrentGateInputWeights(a2, v118, v119, v120, v121, v122, v123, v124);
    if ((sub_239BDD86C(a1, v125, v7 + 14, v7 + 20, v7 + 249, (v7 + 200), &v317, v7[72], v314, v34, a4, *(v7 + 11) + 352, 2) & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  if (objc_msgSend_recurrentGateRecurrentWeights(a2, v118, v119, v120, v121, v122, v123, v124))
  {
    v133 = objc_msgSend_recurrentGateRecurrentWeights(a2, v126, v127, v128, v129, v130, v131, v132);
    v134 = *(v7 + 11);
    if (!objc_msgSend_load(v133, v135, v136, v137, v138, v139, v140, v141))
    {
      goto LABEL_41;
    }

    objc_msgSend_descriptor(v133, v142, v143, v144, v145, v146, v147, v148);
    *(v7 + 15) = sub_239BDBD50(a1, v133, 0, v313 ^ 1u, 0, v34, a4);
    if (v34)
    {
      if (objc_msgSend_count(v34, v149, v150, v151, v152, v153, v154, v155))
      {
        v163 = objc_msgSend_count(v34, v156, v157, v158, v159, v160, v161, v162) - 1;
      }

      else
      {
        v163 = 0;
      }

      objc_msgSend_biasTerms(v133, v156, v157, v158, v159, v160, v161, v162);
      v177 = objc_msgSend_objectAtIndexedSubscript_(v34, v171, v163, v172, v173, v174, v175, v176);
      *(v134 + 368) = objc_msgSend_dataType(v177, v178, v179, v180, v181, v182, v183, v184);
      *(v134 + 376) = v163;
    }

    else
    {
      objc_msgSend_biasTerms(v133, v149, v150, v151, v152, v153, v154, v155);
    }

    objc_msgSend_purge(v133, v164, v165, v166, v167, v168, v169, v170);
  }

  if (objc_msgSend_outputGateInputWeights(a2, v126, v127, v128, v129, v130, v131, v132))
  {
    v192 = objc_msgSend_outputGateInputWeights(a2, v185, v186, v187, v188, v189, v190, v191);
    if ((sub_239BDD86C(v315, v192, v7 + 16, v7 + 21, v7 + 250, (v7 + 224), &v317, v7[72], v314, v34, a4, *(v7 + 11) + 400, 3) & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  if (objc_msgSend_outputGateRecurrentWeights(a2, v185, v186, v187, v188, v189, v190, v191))
  {
    v200 = objc_msgSend_outputGateRecurrentWeights(a2, v193, v194, v195, v196, v197, v198, v199);
    v201 = *(v7 + 11);
    if (!objc_msgSend_load(v200, v202, v203, v204, v205, v206, v207, v208))
    {
      goto LABEL_41;
    }

    objc_msgSend_descriptor(v200, v209, v210, v211, v212, v213, v214, v215);
    *(v7 + 18) = sub_239BDBD50(v315, v200, 0, v313 ^ 1u, 0, v34, a4);
    if (v34)
    {
      if (objc_msgSend_count(v34, v216, v217, v218, v219, v220, v221, v222))
      {
        v230 = objc_msgSend_count(v34, v223, v224, v225, v226, v227, v228, v229) - 1;
      }

      else
      {
        v230 = 0;
      }

      objc_msgSend_biasTerms(v200, v223, v224, v225, v226, v227, v228, v229);
      v244 = objc_msgSend_objectAtIndexedSubscript_(v34, v238, v230, v239, v240, v241, v242, v243);
      *(v201 + 416) = objc_msgSend_dataType(v244, v245, v246, v247, v248, v249, v250, v251);
      *(v201 + 424) = v230;
    }

    else
    {
      objc_msgSend_biasTerms(v200, v216, v217, v218, v219, v220, v221, v222);
    }

    objc_msgSend_purge(v200, v231, v232, v233, v234, v235, v236, v237);
  }

  if (!objc_msgSend_outputGateInputGateWeights(a2, v193, v194, v195, v196, v197, v198, v199))
  {
    return v7;
  }

  v259 = objc_msgSend_outputGateInputGateWeights(a2, v252, v253, v254, v255, v256, v257, v258);
  v260 = *(v7 + 11);
  if (!objc_msgSend_load(v259, v261, v262, v263, v264, v265, v266, v267))
  {
LABEL_41:
    free(v7);
    return 0;
  }

  objc_msgSend_descriptor(v259, v268, v269, v270, v271, v272, v273, v274);
  *(v7 + 17) = sub_239BDBD50(v315, v259, 0, v313 ^ 1u, 0, v34, a4);
  if (v34)
  {
    if (objc_msgSend_count(v34, v275, v276, v277, v278, v279, v280, v281))
    {
      v289 = objc_msgSend_count(v34, v282, v283, v284, v285, v286, v287, v288) - 1;
    }

    else
    {
      v289 = 0;
    }

    objc_msgSend_biasTerms(v259, v282, v283, v284, v285, v286, v287, v288);
    v304 = objc_msgSend_objectAtIndexedSubscript_(v34, v298, v289, v299, v300, v301, v302, v303);
    *(v260 + 432) = objc_msgSend_dataType(v304, v305, v306, v307, v308, v309, v310, v311);
    *(v260 + 440) = v289;
  }

  else
  {
    objc_msgSend_biasTerms(v259, v275, v276, v277, v278, v279, v280, v281);
  }

  objc_msgSend_purge(v259, v291, v292, v293, v294, v295, v296, v297);
  return v7;
}

void sub_239BC4B70(uint64_t a1)
{
  if (a1)
  {

    v2 = *(a1 + 88);
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

_OWORD *sub_239BC5130(void *a1, uint64_t a2, void *a3)
{
  v6 = malloc_type_malloc(0x98uLL, 0x10A0040D60EB3F0uLL);
  v12 = v6;
  if (v6)
  {
    v13 = *(a2 + 16);
    *v6 = *a2;
    v6[1] = v13;
    v14 = *(a2 + 32);
    v15 = *(a2 + 48);
    v16 = *(a2 + 80);
    v6[4] = *(a2 + 64);
    v6[5] = v16;
    v6[2] = v14;
    v6[3] = v15;
    *v6 = sub_239BDDBF4(a1, *a2, a3, v7, v8, v9, v10, v11);
    *(v12 + 1) = sub_239BDDBF4(a1, *(a2 + 8), a3, v17, v18, v19, v20, v21);
    *(v12 + 2) = sub_239BDDBF4(a1, *(a2 + 16), a3, v22, v23, v24, v25, v26);
    *(v12 + 12) = sub_239BDDBF4(a1, *(a2 + 96), a3, v27, v28, v29, v30, v31);
    *(v12 + 13) = sub_239BDDBF4(a1, *(a2 + 104), a3, v32, v33, v34, v35, v36);
    v37 = *(a2 + 112);
    *(v12 + 16) = *(a2 + 128);
    v12[7] = v37;
    *(v12 + 144) = *(a2 + 144);
    *(v12 + 17) = sub_239BDA634(*(a2 + 136), a1, a3);
    return v12;
  }

  if (!MTLReportFailureTypeEnabled())
  {
    return v12;
  }

  MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x1A6E, @"[copySingleGateLayer copyWithZone:device] out of memory: could not allocate internal data", v39, v40, v41, v42);
  return 0;
}

_OWORD *sub_239BC5264(void *a1, uint64_t a2, void *a3)
{
  v6 = malloc_type_malloc(0x1A8uLL, 0x10A0040C2E34A0CuLL);
  v12 = v6;
  if (v6)
  {
    v13 = *(a2 + 16);
    *v6 = *a2;
    v6[1] = v13;
    v14 = *(a2 + 32);
    v15 = *(a2 + 48);
    v16 = *(a2 + 80);
    v6[4] = *(a2 + 64);
    v6[5] = v16;
    v6[2] = v14;
    v6[3] = v15;
    *v6 = sub_239BDDBF4(a1, *a2, a3, v7, v8, v9, v10, v11);
    *(v12 + 1) = sub_239BDDBF4(a1, *(a2 + 8), a3, v17, v18, v19, v20, v21);
    *(v12 + 2) = sub_239BDDBF4(a1, *(a2 + 16), a3, v22, v23, v24, v25, v26);
    v27 = *(a2 + 136);
    *(v12 + 19) = *(a2 + 152);
    *(v12 + 136) = v27;
    *(v12 + 160) = *(a2 + 160);
    *(v12 + 12) = sub_239BDDBF4(a1, *(a2 + 96), a3, v28, v29, v30, v31, v32);
    *(v12 + 13) = sub_239BDDBF4(a1, *(a2 + 104), a3, v33, v34, v35, v36, v37);
    *(v12 + 14) = sub_239BDDBF4(a1, *(a2 + 112), a3, v38, v39, v40, v41, v42);
    *(v12 + 16) = sub_239BDA634(*(a2 + 128), a1, a3);
    *(v12 + 15) = sub_239BDA634(*(a2 + 120), a1, a3);
    if (*(a2 + 417) == 1)
    {
      v46 = *(v12 + 13);
    }

    else
    {
      v46 = 0;
    }

    sub_239BDDCF8(a1, a2 + 168, v12 + 168, a3, v46, v43, v44, v45);
    sub_239BDDCF8(a1, a2 + 240, (v12 + 15), a3, v46, v47, v48, v49);
    sub_239BDDCF8(a1, a2 + 312, v12 + 312, a3, v46, v50, v51, v52);
    v53 = *(a2 + 392);
    *(v12 + 51) = *(a2 + 408);
    *(v12 + 392) = v53;
    *(v12 + 416) = *(a2 + 416);
    *(v12 + 417) = *(a2 + 417);
    *(v12 + 419) = *(a2 + 419);
    *(v12 + 105) = *(a2 + 420);
    *(v12 + 48) = 0;
    if (*(a2 + 384))
    {
      MPSDevice::GetMPSDevice();
      *(v12 + 48) = 0;
    }

    return v12;
  }

  if (!MTLReportFailureTypeEnabled())
  {
    return v12;
  }

  MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x1AC6, @"[copyLSTMLayer copyWithZone:device] out of memory: could not allocate internal data", v55, v56, v57, v58);
  return 0;
}

_OWORD *sub_239BC547C(void *a1, uint64_t a2, void *a3)
{
  v6 = malloc_type_malloc(0x108uLL, 0x10A0040E57BB8CDuLL);
  v12 = v6;
  if (v6)
  {
    v13 = *(a2 + 16);
    *v6 = *a2;
    v6[1] = v13;
    v14 = *(a2 + 32);
    v15 = *(a2 + 48);
    v16 = *(a2 + 80);
    v6[4] = *(a2 + 64);
    v6[5] = v16;
    v6[2] = v14;
    v6[3] = v15;
    *v6 = sub_239BDDBF4(a1, *a2, a3, v7, v8, v9, v10, v11);
    *(v12 + 1) = sub_239BDDBF4(a1, *(a2 + 8), a3, v17, v18, v19, v20, v21);
    *(v12 + 2) = sub_239BDDBF4(a1, *(a2 + 16), a3, v22, v23, v24, v25, v26);
    *(v12 + 12) = sub_239BDDBF4(a1, *(a2 + 96), a3, v27, v28, v29, v30, v31);
    *(v12 + 13) = sub_239BDDBF4(a1, *(a2 + 104), a3, v32, v33, v34, v35, v36);
    *(v12 + 14) = sub_239BDDBF4(a1, *(a2 + 112), a3, v37, v38, v39, v40, v41);
    *(v12 + 15) = sub_239BDDBF4(a1, *(a2 + 120), a3, v42, v43, v44, v45, v46);
    *(v12 + 16) = sub_239BDDBF4(a1, *(a2 + 128), a3, v47, v48, v49, v50, v51);
    *(v12 + 17) = sub_239BDDBF4(a1, *(a2 + 136), a3, v52, v53, v54, v55, v56);
    *(v12 + 18) = sub_239BDDBF4(a1, *(a2 + 144), a3, v57, v58, v59, v60, v61);
    *(v12 + 19) = sub_239BDA634(*(a2 + 152), a1, a3);
    *(v12 + 20) = sub_239BDA634(*(a2 + 160), a1, a3);
    *(v12 + 21) = sub_239BDA634(*(a2 + 168), a1, a3);
    *(v12 + 248) = *(a2 + 248);
    *(v12 + 249) = *(a2 + 249);
    *(v12 + 63) = *(a2 + 252);
    *(v12 + 256) = *(a2 + 256);
    v62 = *(a2 + 176);
    *(v12 + 24) = *(a2 + 192);
    v12[11] = v62;
    v63 = *(a2 + 216);
    *(v12 + 200) = *(a2 + 200);
    *(v12 + 27) = v63;
    v64 = *(a2 + 240);
    v12[14] = *(a2 + 224);
    *(v12 + 30) = v64;
    return v12;
  }

  if (!MTLReportFailureTypeEnabled())
  {
    return v12;
  }

  MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x1AEE, @"[copyLSTMLayer copyWithZone:device] out of memory: could not allocate internal data", v66, v67, v68, v69);
  return 0;
}

void *sub_239BC5CBC(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (!*a4)
  {
    return 0;
  }

  v8 = malloc_type_malloc(0x98uLL, 0x10A0040D60EB3F0uLL);
  if (!v8)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x1E2B, @"[initWithCoder:] out of memory: could not allocate internal data", v72, v73, v74, v75);
    }

    return 0;
  }

  v9 = v8;
  sub_239BDDDBC(a1, a2, v8, a3, a4);
  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v17 = objc_msgSend_initWithFormat_(v10, v11, @"%@%d", v12, v13, v14, v15, v16, @"MPSRNNLayer.SingleGate.inputXForm", a3);
  v18 = objc_alloc(MEMORY[0x277CCACA8]);
  v25 = objc_msgSend_initWithFormat_(v18, v19, @"%@%d", v20, v21, v22, v23, v24, @"MPSRNNLayer.SingleGate.recurrentXForm", a3);
  v26 = objc_alloc(MEMORY[0x277CCACA8]);
  v33 = objc_msgSend_initWithFormat_(v26, v27, @"%@%d", v28, v29, v30, v31, v32, @"MPSRNNLayer.SingleGate.hasBias", a3);
  v34 = objc_alloc(MEMORY[0x277CCACA8]);
  v41 = objc_msgSend_initWithFormat_(v34, v35, @"%@%d", v36, v37, v38, v39, v40, @"MPSRNNLayer.SingleGate.biasData", a3);
  v9[12] = sub_239BDE0B4(a1, a2, v17, a4);
  v9[13] = sub_239BDE0B4(a1, a2, v25, a4);
  sub_239BDABDC(a1, v17, v9 + 28);
  *(v9 + 144) = objc_msgSend_decodeBoolForKey_(a1, v42, v33, v43, v44, v45, v46, v47);
  v48 = v9[7];
  MPSDevice = MPSDevice::GetMPSDevice();
  if (!MPSDevice)
  {
    *a4 = 0;
    goto LABEL_14;
  }

  v56 = MPSDevice;
  if ((objc_msgSend_decodeBoolForKey_(a1, v50, v41, v51, v52, v53, v54, v55) & 1) == 0)
  {
    *a4 = 1;
    v9[17] = 0;
    return v9;
  }

  v76 = 0;
  v61 = sub_239BCD898(a1, v41, &v76, a4, v57, v58, v59, v60);
  if (!v61)
  {
    v69 = *a4;
    v9[17] = 0;
    if (v69)
    {
      return v9;
    }

LABEL_14:
    free(v9);
    return 0;
  }

  v62 = v61;
  if (v76 == v48)
  {
    v63 = (*(*v56 + 24))(v56);
    v68 = objc_msgSend_newBufferWithBytes_length_options_(a2, v64, v62, 4 * v48, 16 * v63, v65, v66, v67);
  }

  else
  {
    v68 = 0;
    *a4 = 0;
  }

  free(v62);
  v70 = *a4;
  v9[17] = v68;
  if (!v70)
  {
    goto LABEL_14;
  }

  return v9;
}

_BYTE *sub_239BC5F54(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (!*a4)
  {
    return 0;
  }

  v8 = malloc_type_calloc(1uLL, 0x1A8uLL, 0x10A0040C2E34A0CuLL);
  if (!v8)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x1EBC, @"[initWithCoder:](decodeLSTMLayer) out of memory: could not allocate internal data", v104, v105, v106, v107);
    }

    return 0;
  }

  v9 = v8;
  sub_239BDDDBC(a1, a2, v8, a3, a4);
  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v110 = objc_msgSend_initWithFormat_(v10, v11, @"%@%d", v12, v13, v14, v15, v16, @"MPSRNNLayer.LSTM.inputGate", a3);
  v17 = objc_alloc(MEMORY[0x277CCACA8]);
  v112 = objc_msgSend_initWithFormat_(v17, v18, @"%@%d", v19, v20, v21, v22, v23, @"MPSRNNLayer.LSTM.forgetGate", a3);
  v24 = objc_alloc(MEMORY[0x277CCACA8]);
  v111 = objc_msgSend_initWithFormat_(v24, v25, @"%@%d", v26, v27, v28, v29, v30, @"MPSRNNLayer.LSTM.cellGate", a3);
  v31 = objc_alloc(MEMORY[0x277CCACA8]);
  v109 = objc_msgSend_initWithFormat_(v31, v32, @"%@%d", v33, v34, v35, v36, v37, @"MPSRNNLayer.LSTM.outputGate", a3);
  v38 = objc_alloc(MEMORY[0x277CCACA8]);
  v45 = objc_msgSend_initWithFormat_(v38, v39, @"%@%d", v40, v41, v42, v43, v44, @"MPSRNNLayer.LSTM.recursionXFormsCombined", a3);
  v46 = objc_alloc(MEMORY[0x277CCACA8]);
  v108 = objc_msgSend_initWithFormat_(v46, v47, @"%@%d", v48, v49, v50, v51, v52, @"MPSRNNLayer.LSTM.finalNeuron", a3);
  v53 = objc_alloc(MEMORY[0x277CCACA8]);
  v60 = objc_msgSend_initWithFormat_(v53, v54, @"%@%d", v55, v56, v57, v58, v59, @"MPSRNNLayer.LSTM.inputXFormsCombined", a3);
  v61 = objc_alloc(MEMORY[0x277CCACA8]);
  v68 = objc_msgSend_initWithFormat_(v61, v62, @"%@%d", v63, v64, v65, v66, v67, @"MPSRNNLayer.LSTM.coupleForgetGateToInputGate", a3);
  v69 = objc_alloc(MEMORY[0x277CCACA8]);
  v76 = objc_msgSend_initWithFormat_(v69, v70, @"%@%d", v71, v72, v73, v74, v75, @"MPSRNNLayer.LSTM.cellClipThreshold", a3);
  sub_239BDE800(a1, a2, v110, (v9 + 96), 0, a4);
  v9[417] = objc_msgSend_decodeBoolForKey_(a1, v77, v45, v78, v79, v80, v81, v82);
  v89 = 0;
  v9[416] = objc_msgSend_decodeBoolForKey_(a1, v83, v60, v84, v85, v86, v87, v88);
  if (v9[417] == 1)
  {
    v89 = *(v9 + 13);
  }

  sub_239BDE800(a1, a2, v112, (v9 + 168), v89, a4);
  sub_239BDE800(a1, a2, v111, (v9 + 240), v89, a4);
  sub_239BDE800(a1, a2, v109, (v9 + 312), v89, a4);
  sub_239BDABDC(a1, v108, v9 + 98);
  v9[419] = objc_msgSend_decodeBoolForKey_(a1, v90, v68, v91, v92, v93, v94, v95);
  objc_msgSend_decodeFloatForKey_(a1, v96, v76, v97, v98, v99, v100, v101);
  *(v9 + 105) = v102;
  *(v9 + 48) = 0;
  if ((*a4 & 1) == 0)
  {
    free(v9);
    return 0;
  }

  return v9;
}

void *sub_239BC6254(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (!*a4)
  {
    return 0;
  }

  v8 = malloc_type_malloc(0x108uLL, 0x10A0040E57BB8CDuLL);
  if (!v8)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x1F2D, @"[initWithCoder:](decodeGRULayer) out of memory: could not allocate internal data", v236, v237, v238, v239);
    }

    return 0;
  }

  v9 = v8;
  sub_239BDDDBC(a1, a2, v8, a3, a4);
  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v243 = objc_msgSend_initWithFormat_(v10, v11, @"%@%d", v12, v13, v14, v15, v16, @"MPSRNNLayer.GRU.inputGateInputXform", a3);
  v17 = objc_alloc(MEMORY[0x277CCACA8]);
  v24 = objc_msgSend_initWithFormat_(v17, v18, @"%@%d", v19, v20, v21, v22, v23, @"MPSRNNLayer.GRU.inputGateRecXform", a3);
  v25 = objc_alloc(MEMORY[0x277CCACA8]);
  v240 = objc_msgSend_initWithFormat_(v25, v26, @"%@%d", v27, v28, v29, v30, v31, @"MPSRNNLayer.GRU.inputGateBias", a3);
  v32 = objc_alloc(MEMORY[0x277CCACA8]);
  v39 = objc_msgSend_initWithFormat_(v32, v33, @"%@%d", v34, v35, v36, v37, v38, @"MPSRNNLayer.GRU.inputGateHasBias", a3);
  v40 = objc_alloc(MEMORY[0x277CCACA8]);
  v249 = objc_msgSend_initWithFormat_(v40, v41, @"%@%d", v42, v43, v44, v45, v46, @"MPSRNNLayer.GRU.inputNeuron", a3);
  v47 = objc_alloc(MEMORY[0x277CCACA8]);
  v245 = objc_msgSend_initWithFormat_(v47, v48, @"%@%d", v49, v50, v51, v52, v53, @"MPSRNNLayer.GRU.recGateInputXform", a3);
  v54 = objc_alloc(MEMORY[0x277CCACA8]);
  v244 = objc_msgSend_initWithFormat_(v54, v55, @"%@%d", v56, v57, v58, v59, v60, @"MPSRNNLayer.GRU.recGateRecXform", a3);
  v61 = objc_alloc(MEMORY[0x277CCACA8]);
  v247 = objc_msgSend_initWithFormat_(v61, v62, @"%@%d", v63, v64, v65, v66, v67, @"MPSRNNLayer.GRU.recGateBias", a3);
  v68 = objc_alloc(MEMORY[0x277CCACA8]);
  v241 = objc_msgSend_initWithFormat_(v68, v69, @"%@%d", v70, v71, v72, v73, v74, @"MPSRNNLayer.GRU.recGateHasBias", a3);
  v75 = objc_alloc(MEMORY[0x277CCACA8]);
  v252 = objc_msgSend_initWithFormat_(v75, v76, @"%@%d", v77, v78, v79, v80, v81, @"MPSRNNLayer.GRU.recurrentNeuron", a3);
  v82 = objc_alloc(MEMORY[0x277CCACA8]);
  v250 = objc_msgSend_initWithFormat_(v82, v83, @"%@%d", v84, v85, v86, v87, v88, @"MPSRNNLayer.GRU.outputGateInputXform", a3);
  v89 = objc_alloc(MEMORY[0x277CCACA8]);
  v248 = objc_msgSend_initWithFormat_(v89, v90, @"%@%d", v91, v92, v93, v94, v95, @"MPSRNNLayer.GRU.outputGateRecXform", a3);
  v96 = objc_alloc(MEMORY[0x277CCACA8]);
  v246 = objc_msgSend_initWithFormat_(v96, v97, @"%@%d", v98, v99, v100, v101, v102, @"MPSRNNLayer.GRU.outputGateMemoryform", a3);
  v103 = objc_alloc(MEMORY[0x277CCACA8]);
  v110 = objc_msgSend_initWithFormat_(v103, v104, @"%@%d", v105, v106, v107, v108, v109, @"MPSRNNLayer.GRU.outputGateBias", a3);
  v111 = objc_alloc(MEMORY[0x277CCACA8]);
  v242 = objc_msgSend_initWithFormat_(v111, v112, @"%@%d", v113, v114, v115, v116, v117, @"MPSRNNLayer.GRU.outputGateHasBias", a3);
  v118 = objc_alloc(MEMORY[0x277CCACA8]);
  v253 = objc_msgSend_initWithFormat_(v118, v119, @"%@%d", v120, v121, v122, v123, v124, @"MPSRNNLayer.GRU.outputNeuron", a3);
  v125 = objc_alloc(MEMORY[0x277CCACA8]);
  v251 = objc_msgSend_initWithFormat_(v125, v126, @"%@%d", v127, v128, v129, v130, v131, @"MPSRNNLayer.GRU.pNormGateValue", a3);
  v132 = objc_alloc(MEMORY[0x277CCACA8]);
  v139 = objc_msgSend_initWithFormat_(v132, v133, @"%@%d", v134, v135, v136, v137, v138, @"MPSRNNLayer.GRU.flipOutputGates", a3);
  v9[12] = sub_239BDE0B4(a1, a2, v243, a4);
  v9[13] = sub_239BDE0B4(a1, a2, v24, a4);
  *(v9 + 248) = objc_msgSend_decodeBoolForKey_(a1, v140, v39, v141, v142, v143, v144, v145);
  v146 = v9[7];
  MPSDevice = MPSDevice::GetMPSDevice();
  if (MPSDevice)
  {
    v154 = MPSDevice;
    if (objc_msgSend_decodeBoolForKey_(a1, v148, v240, v149, v150, v151, v152, v153))
    {
      v254 = 0;
      v159 = sub_239BCD898(a1, v240, &v254, a4, v155, v156, v157, v158);
      if (v159)
      {
        v160 = v159;
        if (v254 == v146)
        {
          v161 = (*(*v154 + 24))(v154);
          v166 = objc_msgSend_newBufferWithBytes_length_options_(a2, v162, v160, 4 * v146, 16 * v161, v163, v164, v165);
        }

        else
        {
          v166 = 0;
          *a4 = 0;
        }

        v167 = v110;
        free(v160);
      }

      else
      {
        v166 = 0;
        v167 = v110;
      }
    }

    else
    {
      v166 = 0;
      *a4 = 1;
      v167 = v110;
    }
  }

  else
  {
    v166 = 0;
    *a4 = 0;
    v167 = v110;
  }

  v9[19] = v166;
  sub_239BDABDC(a1, v249, v9 + 44);
  v9[14] = sub_239BDE0B4(a1, a2, v245, a4);
  v9[15] = sub_239BDE0B4(a1, a2, v244, a4);
  *(v9 + 249) = objc_msgSend_decodeBoolForKey_(a1, v168, v241, v169, v170, v171, v172, v173);
  v174 = v9[7];
  v175 = MPSDevice::GetMPSDevice();
  if (v175)
  {
    v182 = v175;
    if (objc_msgSend_decodeBoolForKey_(a1, v176, v247, v177, v178, v179, v180, v181))
    {
      v254 = 0;
      v187 = sub_239BCD898(a1, v247, &v254, a4, v183, v184, v185, v186);
      if (v187)
      {
        v188 = v187;
        if (v254 == v174)
        {
          v189 = (*(*v182 + 24))(v182);
          v194 = objc_msgSend_newBufferWithBytes_length_options_(a2, v190, v188, 4 * v174, 16 * v189, v191, v192, v193);
        }

        else
        {
          v194 = 0;
          *a4 = 0;
        }

        free(v188);
      }

      else
      {
        v194 = 0;
      }
    }

    else
    {
      v194 = 0;
      *a4 = 1;
    }
  }

  else
  {
    v194 = 0;
    *a4 = 0;
  }

  v9[20] = v194;
  sub_239BDABDC(a1, v252, v9 + 50);
  v9[16] = sub_239BDE0B4(a1, a2, v250, a4);
  v9[18] = sub_239BDE0B4(a1, a2, v248, a4);
  v9[17] = sub_239BDE0B4(a1, a2, v246, a4);
  *(v9 + 250) = objc_msgSend_decodeBoolForKey_(a1, v195, v242, v196, v197, v198, v199, v200);
  v201 = v9[7];
  v202 = MPSDevice::GetMPSDevice();
  if (v202)
  {
    v209 = v202;
    if (objc_msgSend_decodeBoolForKey_(a1, v203, v167, v204, v205, v206, v207, v208))
    {
      v254 = 0;
      v214 = sub_239BCD898(a1, v167, &v254, a4, v210, v211, v212, v213);
      if (v214)
      {
        v215 = v214;
        if (v254 == v201)
        {
          v216 = (*(*v209 + 24))(v209);
          v221 = objc_msgSend_newBufferWithBytes_length_options_(a2, v217, v215, 4 * v201, 16 * v216, v218, v219, v220);
        }

        else
        {
          v221 = 0;
          *a4 = 0;
        }

        free(v215);
      }

      else
      {
        v221 = 0;
      }
    }

    else
    {
      v221 = 0;
      *a4 = 1;
    }
  }

  else
  {
    v221 = 0;
    *a4 = 0;
  }

  v9[21] = v221;
  sub_239BDABDC(a1, v253, v9 + 56);
  objc_msgSend_decodeFloatForKey_(a1, v222, v251, v223, v224, v225, v226, v227);
  *(v9 + 63) = v228;
  *(v9 + 256) = objc_msgSend_decodeBoolForKey_(a1, v229, v139, v230, v231, v232, v233, v234);
  if ((*a4 & 1) == 0)
  {
    free(v9);
    return 0;
  }

  return v9;
}

void sub_239BC6BE0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_239BDEBB8(a1, a2, a3);
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v13 = objc_msgSend_initWithFormat_(v6, v7, @"%@%d", v8, v9, v10, v11, v12, @"MPSRNNLayer.SingleGate.inputXForm", a3);
  v14 = objc_alloc(MEMORY[0x277CCACA8]);
  v21 = objc_msgSend_initWithFormat_(v14, v15, @"%@%d", v16, v17, v18, v19, v20, @"MPSRNNLayer.SingleGate.recurrentXForm", a3);
  v22 = objc_alloc(MEMORY[0x277CCACA8]);
  v29 = objc_msgSend_initWithFormat_(v22, v23, @"%@%d", v24, v25, v26, v27, v28, @"MPSRNNLayer.SingleGate.hasBias", a3);
  v30 = objc_alloc(MEMORY[0x277CCACA8]);
  v37 = objc_msgSend_initWithFormat_(v30, v31, @"%@%d", v32, v33, v34, v35, v36, @"MPSRNNLayer.SingleGate.biasData", a3);
  sub_239BDEE90(a1, v13, *(a2 + 96), v38, v39, v40, v41, v42);
  sub_239BDEE90(a1, v21, *(a2 + 104), v43, v44, v45, v46, v47);
  sub_239BDB5F8(a1, v13, (a2 + 112));
  objc_msgSend_encodeBool_forKey_(a1, v48, *(a2 + 144), v29, v49, v50, v51, v52);
  v60 = *(a2 + 136);
  v61 = *(a2 + 56);
  if (v60)
  {
    v62 = objc_msgSend_contents(v60, v53, v54, v55, v56, v57, v58, v59);
  }

  else
  {
    v62 = 0;
  }

  sub_239BCD9D8(a1, v62, v37, v61, v56, v57, v58, v59);
}

uint64_t sub_239BC6D40(void *a1, uint64_t a2, uint64_t a3)
{
  sub_239BDEBB8(a1, a2, a3);
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v100 = objc_msgSend_initWithFormat_(v6, v7, @"%@%d", v8, v9, v10, v11, v12, @"MPSRNNLayer.LSTM.inputGate", a3);
  v13 = objc_alloc(MEMORY[0x277CCACA8]);
  v101 = objc_msgSend_initWithFormat_(v13, v14, @"%@%d", v15, v16, v17, v18, v19, @"MPSRNNLayer.LSTM.forgetGate", a3);
  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  v99 = objc_msgSend_initWithFormat_(v20, v21, @"%@%d", v22, v23, v24, v25, v26, @"MPSRNNLayer.LSTM.cellGate", a3);
  v27 = objc_alloc(MEMORY[0x277CCACA8]);
  v34 = objc_msgSend_initWithFormat_(v27, v28, @"%@%d", v29, v30, v31, v32, v33, @"MPSRNNLayer.LSTM.outputGate", a3);
  v35 = objc_alloc(MEMORY[0x277CCACA8]);
  v42 = objc_msgSend_initWithFormat_(v35, v36, @"%@%d", v37, v38, v39, v40, v41, @"MPSRNNLayer.LSTM.recursionXFormsCombined", a3);
  v43 = objc_alloc(MEMORY[0x277CCACA8]);
  v50 = objc_msgSend_initWithFormat_(v43, v44, @"%@%d", v45, v46, v47, v48, v49, @"MPSRNNLayer.LSTM.finalNeuron", a3);
  v51 = objc_alloc(MEMORY[0x277CCACA8]);
  v58 = objc_msgSend_initWithFormat_(v51, v52, @"%@%d", v53, v54, v55, v56, v57, @"MPSRNNLayer.LSTM.inputXFormsCombined", a3);
  v59 = objc_alloc(MEMORY[0x277CCACA8]);
  v66 = objc_msgSend_initWithFormat_(v59, v60, @"%@%d", v61, v62, v63, v64, v65, @"MPSRNNLayer.LSTM.coupleForgetGateToInputGate", a3);
  v67 = objc_alloc(MEMORY[0x277CCACA8]);
  v74 = objc_msgSend_initWithFormat_(v67, v68, @"%@%d", v69, v70, v71, v72, v73, @"MPSRNNLayer.LSTM.cellClipThreshold", a3);
  v75 = *(a2 + 56);
  sub_239BDF37C(a1, a2 + 96, v100, v75, 0);
  objc_msgSend_encodeBool_forKey_(a1, v76, *(a2 + 417), v42, v77, v78, v79, v80);
  objc_msgSend_encodeBool_forKey_(a1, v81, *(a2 + 416), v58, v82, v83, v84, v85);
  sub_239BDF37C(a1, a2 + 168, v101, v75, *(a2 + 417));
  sub_239BDF37C(a1, a2 + 240, v99, v75, *(a2 + 417));
  sub_239BDF37C(a1, a2 + 312, v34, v75, *(a2 + 417));
  sub_239BDB5F8(a1, v50, (a2 + 392));
  objc_msgSend_encodeBool_forKey_(a1, v86, *(a2 + 419), v66, v87, v88, v89, v90);
  LODWORD(v97) = *(a2 + 420);

  return objc_msgSend_encodeFloat_forKey_(a1, v91, v74, v92, v93, v94, v95, v96, v97);
}

uint64_t sub_239BC6FA4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_239BDEBB8(a1, a2, a3);
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v242 = objc_msgSend_initWithFormat_(v6, v7, @"%@%d", v8, v9, v10, v11, v12, @"MPSRNNLayer.GRU.inputGateInputXform", a3);
  v13 = objc_alloc(MEMORY[0x277CCACA8]);
  v241 = objc_msgSend_initWithFormat_(v13, v14, @"%@%d", v15, v16, v17, v18, v19, @"MPSRNNLayer.GRU.inputGateRecXform", a3);
  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  v243 = objc_msgSend_initWithFormat_(v20, v21, @"%@%d", v22, v23, v24, v25, v26, @"MPSRNNLayer.GRU.inputGateBias", a3);
  v27 = objc_alloc(MEMORY[0x277CCACA8]);
  v237 = objc_msgSend_initWithFormat_(v27, v28, @"%@%d", v29, v30, v31, v32, v33, @"MPSRNNLayer.GRU.inputGateHasBias", a3);
  v34 = objc_alloc(MEMORY[0x277CCACA8]);
  v240 = objc_msgSend_initWithFormat_(v34, v35, @"%@%d", v36, v37, v38, v39, v40, @"MPSRNNLayer.GRU.inputNeuron", a3);
  v41 = objc_alloc(MEMORY[0x277CCACA8]);
  v239 = objc_msgSend_initWithFormat_(v41, v42, @"%@%d", v43, v44, v45, v46, v47, @"MPSRNNLayer.GRU.recGateInputXform", a3);
  v48 = objc_alloc(MEMORY[0x277CCACA8]);
  v236 = objc_msgSend_initWithFormat_(v48, v49, @"%@%d", v50, v51, v52, v53, v54, @"MPSRNNLayer.GRU.recGateRecXform", a3);
  v55 = objc_alloc(MEMORY[0x277CCACA8]);
  v238 = objc_msgSend_initWithFormat_(v55, v56, @"%@%d", v57, v58, v59, v60, v61, @"MPSRNNLayer.GRU.recGateBias", a3);
  v62 = objc_alloc(MEMORY[0x277CCACA8]);
  v234 = objc_msgSend_initWithFormat_(v62, v63, @"%@%d", v64, v65, v66, v67, v68, @"MPSRNNLayer.GRU.recGateHasBias", a3);
  v69 = objc_alloc(MEMORY[0x277CCACA8]);
  v235 = objc_msgSend_initWithFormat_(v69, v70, @"%@%d", v71, v72, v73, v74, v75, @"MPSRNNLayer.GRU.recurrentNeuron", a3);
  v76 = objc_alloc(MEMORY[0x277CCACA8]);
  v233 = objc_msgSend_initWithFormat_(v76, v77, @"%@%d", v78, v79, v80, v81, v82, @"MPSRNNLayer.GRU.outputGateInputXform", a3);
  v83 = objc_alloc(MEMORY[0x277CCACA8]);
  v232 = objc_msgSend_initWithFormat_(v83, v84, @"%@%d", v85, v86, v87, v88, v89, @"MPSRNNLayer.GRU.outputGateRecXform", a3);
  v90 = objc_alloc(MEMORY[0x277CCACA8]);
  v97 = objc_msgSend_initWithFormat_(v90, v91, @"%@%d", v92, v93, v94, v95, v96, @"MPSRNNLayer.GRU.outputGateMemoryform", a3);
  v98 = objc_alloc(MEMORY[0x277CCACA8]);
  v105 = objc_msgSend_initWithFormat_(v98, v99, @"%@%d", v100, v101, v102, v103, v104, @"MPSRNNLayer.GRU.outputGateBias", a3);
  v106 = objc_alloc(MEMORY[0x277CCACA8]);
  v113 = objc_msgSend_initWithFormat_(v106, v107, @"%@%d", v108, v109, v110, v111, v112, @"MPSRNNLayer.GRU.outputGateHasBias", a3);
  v114 = objc_alloc(MEMORY[0x277CCACA8]);
  v121 = objc_msgSend_initWithFormat_(v114, v115, @"%@%d", v116, v117, v118, v119, v120, @"MPSRNNLayer.GRU.outputNeuron", a3);
  v122 = objc_alloc(MEMORY[0x277CCACA8]);
  v129 = objc_msgSend_initWithFormat_(v122, v123, @"%@%d", v124, v125, v126, v127, v128, @"MPSRNNLayer.GRU.pNormGateValue", a3);
  v130 = objc_alloc(MEMORY[0x277CCACA8]);
  v137 = objc_msgSend_initWithFormat_(v130, v131, @"%@%d", v132, v133, v134, v135, v136, @"MPSRNNLayer.GRU.flipOutputGates", a3);
  sub_239BDEE90(a1, v242, *(a2 + 96), v138, v139, v140, v141, v142);
  sub_239BDEE90(a1, v241, *(a2 + 104), v143, v144, v145, v146, v147);
  objc_msgSend_encodeBool_forKey_(a1, v148, *(a2 + 248), v237, v149, v150, v151, v152);
  v160 = *(a2 + 152);
  v161 = *(a2 + 56);
  if (v160)
  {
    v162 = objc_msgSend_contents(v160, v153, v154, v155, v156, v157, v158, v159);
  }

  else
  {
    v162 = 0;
  }

  sub_239BCD9D8(a1, v162, v243, v161, v156, v157, v158, v159);
  sub_239BDB5F8(a1, v240, (a2 + 176));
  sub_239BDEE90(a1, v239, *(a2 + 112), v163, v164, v165, v166, v167);
  sub_239BDEE90(a1, v236, *(a2 + 120), v168, v169, v170, v171, v172);
  objc_msgSend_encodeBool_forKey_(a1, v173, *(a2 + 249), v234, v174, v175, v176, v177);
  v185 = *(a2 + 160);
  v186 = *(a2 + 56);
  if (v185)
  {
    v187 = objc_msgSend_contents(v185, v178, v179, v180, v181, v182, v183, v184);
  }

  else
  {
    v187 = 0;
  }

  sub_239BCD9D8(a1, v187, v238, v186, v181, v182, v183, v184);
  sub_239BDB5F8(a1, v235, (a2 + 200));
  sub_239BDEE90(a1, v233, *(a2 + 128), v188, v189, v190, v191, v192);
  sub_239BDEE90(a1, v232, *(a2 + 144), v193, v194, v195, v196, v197);
  sub_239BDEE90(a1, v97, *(a2 + 136), v198, v199, v200, v201, v202);
  objc_msgSend_encodeBool_forKey_(a1, v203, *(a2 + 250), v113, v204, v205, v206, v207);
  v215 = *(a2 + 168);
  v216 = *(a2 + 56);
  if (v215)
  {
    v217 = objc_msgSend_contents(v215, v208, v209, v210, v211, v212, v213, v214);
  }

  else
  {
    v217 = 0;
  }

  sub_239BCD9D8(a1, v217, v105, v216, v211, v212, v213, v214);
  sub_239BDB5F8(a1, v121, (a2 + 224));
  LODWORD(v218) = *(a2 + 252);
  objc_msgSend_encodeFloat_forKey_(a1, v219, v129, v220, v221, v222, v223, v224, v218);
  v230 = *(a2 + 256);

  return objc_msgSend_encodeBool_forKey_(a1, v225, v230, v137, v226, v227, v228, v229);
}

void sub_239BC7714(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_239BACD2C(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_239BC7728(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_239BACD2C(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_239BC7740(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_239BACD2C(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_239BC7754(uint64_t a1, void *a2, uint64_t a3, id *a4, unint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  MEMORY[0x23EE7D040](v49, a3, 0);
  v26 = *(a1 + 176);
  v27 = *(a1 + 96);
  v28 = *(a1 + 88);
  v29 = *(a1 + *MEMORY[0x277CD7360]);
  if (v29)
  {
    objc_msgSend_setLabel_(a2, v20, v29, v21, v22, v23, v24, v25);
  }

  if ((a9 & 1) != 0 || a10)
  {
    v30 = 66;
    if (a9)
    {
      v30 = 64;
    }

    v31 = 65;
    if (a9)
    {
      v31 = 63;
    }

    v32 = 61;
    if (a9)
    {
      v32 = 62;
    }

    v26 = *(a1 + OBJC_IVAR___MPSRNNRecurrentImageState_nLayers[v32]);
    v27 = *(a1 + OBJC_IVAR___MPSRNNRecurrentImageState_nLayers[v31]);
    v28 = *(a1 + OBJC_IVAR___MPSRNNRecurrentImageState_nLayers[v30]);
  }

  v38 = v49;
  v33 = *(a1 + 152);
  v35[2] = a2;
  v35[3] = v33;
  v35[4] = *(a1 + 160);
  v36 = 0u;
  v37 = 0u;
  v35[0] = *(a1 + *MEMORY[0x277CD7370]);
  v35[1] = a3;
  v39 = *(a1 + 169);
  v40 = *(a1 + 170);
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = a12;
  v46 = a13;
  v47 = 0;
  v48 = 0;
  sub_239BCAD44(v35, v26, v27, v28, a4, a5, a6, a7, a8, *(a1 + 168), a11);
  MPSAutoCache::~MPSAutoCache(v49);
}

void sub_239BC81CC(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_239BACD2C(va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

MPSRNNRecurrentMatrixState *sub_239BC82A0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, unsigned int a5, uint64_t a6, uint64_t a7, char a8)
{
  v36 = a6;
  v37 = a7;
  v13 = 8 * a1;
  v39 = malloc_type_malloc(8 * a1, 0x80040B8603338uLL);
  v14 = malloc_type_malloc(v13, 0x80040B8603338uLL);
  v18 = v14;
  if (a1)
  {
    if (a8)
    {
      v19 = v39;
      v20 = v14;
      v21 = a1;
      do
      {
        while (1)
        {
          v22 = *(*a3 + 48);
          v23 = *a4;
          v24 = 4 * v22;
          if (*a4 == 1)
          {
            v22 *= 8;
          }

          v25 = v23 == 2 ? v24 : v22;
          v26 = v23 == 2 ? 2 * *(*a3 + 56) : *(*a3 + 56);
          *v19 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v15, a2, v25, 4 * v25, 268435488, v16, v17, v36, v37);
          if (*a4 != 2)
          {
            break;
          }

          *v20++ = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v15, a2, v26, 4 * v26, 268435488, v16, v17);
          ++v19;
          ++a4;
          a3 += 8;
          if (!--v21)
          {
            goto LABEL_20;
          }
        }

        *v20++ = 0;
        ++v19;
        ++a4;
        a3 += 8;
        --v21;
      }

      while (v21);
    }

    else
    {
      v27 = v39;
      v28 = v14;
      v29 = a1;
      do
      {
        while (1)
        {
          v30 = *(*a3 + 56);
          *v27 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v15, a2, *(*a3 + 48), 4 * *(*a3 + 48), 268435488, v16, v17, v36, v37);
          v31 = *a4++;
          if (v31 != 2)
          {
            break;
          }

          *v28++ = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v15, a2, v30, 4 * v30, 268435488, v16, v17);
          ++v27;
          a3 += 8;
          if (!--v29)
          {
            goto LABEL_20;
          }
        }

        *v28++ = 0;
        ++v27;
        a3 += 8;
        --v29;
      }

      while (v29);
    }
  }

LABEL_20:
  v32 = [MPSRNNRecurrentMatrixState alloc];
  isTemporary_layerCount = objc_msgSend_initWithDevice_commandBuffer_recurrentMatrixDescriptors_cellMatrixDescriptors_isTemporary_layerCount_(v32, v33, v36, v37, v39, v18, a5, a1);
  free(v39);
  free(v18);
  return isTemporary_layerCount;
}

void sub_239BC9578(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v10 = a3;
  v11 = a2;
  v12 = a1;
  v13 = objc_msgSend_count(a1, a2, a3, a4, a5, a6, a7, a8);
  context = objc_autoreleasePoolPush();
  if (v13)
  {
    v20 = 0;
    v130 = v8;
    for (i = objc_msgSend_objectAtIndexedSubscript_(v12, v14, 0, v15, v16, v17, v18, v19); ; i = objc_msgSend_objectAtIndexedSubscript_(v12, v36, v20, v37, v38, v39, v40, v41))
    {
      v42 = i;
      if (objc_msgSend_dataType(i, v22, v23, v24, v25, v26, v27, v28) != a4)
      {
        v50 = v13;
        v51 = v12;
        v52 = v10;
        v53 = v11;
        if ((a4 & 0x10000000) == 0 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x358A, @"Only MPSDataTypeFloat32 and MPSDataTypeFloat16 supported", v46, v47, v48, v49);
        }

        v54 = objc_msgSend_rowBytes(v42, v43, v44, v45, v46, v47, v48, v49);
        v62 = v54 / (objc_msgSend_dataType(v42, v55, v56, v57, v58, v59, v60, v61) >> 3) * (a4 >> 3);
        v63 = MEMORY[0x277CD7258];
        v71 = objc_msgSend_rows(v42, v64, v65, v66, v67, v68, v69, v70);
        v79 = objc_msgSend_columns(v42, v72, v73, v74, v75, v76, v77, v78);
        v42 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(v63, v80, v71, v79, v62, a4, v81, v82);
        v11 = v53;
        v10 = v52;
        v12 = v51;
        v13 = v50;
        v8 = v130;
      }

      if (v8)
      {
        v35 = objc_msgSend_temporaryMatrixWithCommandBuffer_matrixDescriptor_(MEMORY[0x277CD72B0], v43, v8, v42, v46, v47, v48, v49);
      }

      else
      {
        MPSDevice = MPSDevice::GetMPSDevice();
        if (!MPSDevice && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x359E, @"Unsupported Metal device", v86, v87, v88, v89);
        }

        v91 = objc_msgSend_rowBytes(v42, v83, v84, v85, v86, v87, v88, v89);
        v99 = objc_msgSend_rows(v42, v92, v93, v94, v95, v96, v97, v98) * v91;
        v100 = (*(*MPSDevice + 24))(MPSDevice);
        v113 = objc_msgSend_newBufferWithLength_options_(v11, v101, v99, 16 * v100, v102, v103, v104, v105);
        if (!v113 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x35A0, @"Out of memory in MPSRNNMatrixTrainingLayer:createWeightMatrices", v109, v110, v111, v112);
        }

        v114 = objc_msgSend_contents(v113, v106, v107, v108, v109, v110, v111, v112);
        v122 = objc_msgSend_length(v113, v115, v116, v117, v118, v119, v120, v121);
        bzero(v114, v122);
        v123 = objc_alloc(MEMORY[0x277CD7250]);
        v35 = objc_msgSend_initWithBuffer_descriptor_(v123, v124, v113, v42, v125, v126, v127, v128);
      }

      objc_msgSend_addObject_(v10, v29, v35, v30, v31, v32, v33, v34);

      if (v13 == ++v20)
      {
        break;
      }
    }
  }

  objc_autoreleasePoolPop(context);
}

void *sub_239BCA7FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = MPSLibrary::GetComputeState();
  if (result)
  {
    v20 = result;
    objc_msgSend_setComputePipelineState_(a4, v14, result, v15, v16, v17, v18, v19);
    v28 = objc_msgSend_threadExecutionWidth(v20, v21, v22, v23, v24, v25, v26, v27);
    if (v28 <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = v28;
    }

    MPSLibrary::ReleaseComputeState();
    objc_msgSend_setBuffer_offset_atIndex_(a4, v30, a2, a7, 1, v31, v32, v33);
    objc_msgSend_setBuffer_offset_atIndex_(a4, v34, a1, a6, 2, v35, v36, v37);
    v52 = (a3 + 3) >> 2;
    if ((v29 + v52 - 1) / v29 >= 0x80)
    {
      v42 = 128;
    }

    else
    {
      v42 = (v29 + v52 - 1) / v29;
    }

    objc_msgSend_setBytes_length_atIndex_(a4, v38, &v52, 4, 0, v39, v40, v41);
    v50 = v42;
    v51 = vdupq_n_s64(1uLL);
    v48 = v29;
    v49 = v51;
    return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a4, v43, &v50, &v48, v44, v45, v46, v47);
  }

  return result;
}

void sub_239BCACD4(_Unwind_Exception *a1)
{
  MPSAutoCache::~MPSAutoCache((v1 - 128));
  sub_239BACD2C((v1 - 104), v3, v4, v5, v6, v7, v8, v9);
  _Unwind_Resume(a1);
}

void sub_239BCAD44(uint64_t a1, unint64_t a2, uint64_t *a3, int *a4, id *a5, unint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  if (!a2)
  {
    return;
  }

  v11 = a7;
  if (!a7)
  {
    return;
  }

  v12 = a9;
  if (!(a6 | a9))
  {
    return;
  }

  v15 = a11;
  size = a7;
  v16 = malloc_type_malloc(24 * a7, 0x80040B8603338uLL);
  v209 = a8;
  v199 = v16;
  if (a9)
  {
    if (*(a1 + 80) == 1)
    {
      v24 = malloc_type_malloc(size * 8, 0x80040B8603338uLL);
      v213 = 0;
    }

    else
    {
      v24 = 0;
      v213 = v11 - 1;
    }

    v26 = malloc_type_malloc(8 * a2, 0x80040B8603338uLL);
    v34 = malloc_type_malloc(8 * a2, 0x80040B8603338uLL);
    v35 = 0;
    v36 = 0;
    do
    {
      v37 = objc_msgSend_rows(a5[v36], v27, v28, v29, v30, v31, v32, v33);
      if (v37 > v35)
      {
        v35 = v37;
      }

      ++v36;
    }

    while (v11 != v36);
    v38 = v213;
    if (v213 >= v11)
    {
      v12 = 0;
    }

    else
    {
      v39 = 0;
      v40 = a1;
      do
      {
        v211 = v39;
        v214 = v38;
        v41 = objc_msgSend_rows(a5[v38], v27, v28, v29, v30, v31, v32, v33);
        v45 = 0;
        if (*(v40 + 81))
        {
          v46 = v35;
        }

        else
        {
          v46 = v41;
        }

        do
        {
          while (1)
          {
            v47 = a3[v45];
            v26[v45] = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v42, v46, *(v47 + 48), 4 * *(v47 + 48), 268435488, v43, v44);
            if (a4[v45] != 2)
            {
              break;
            }

            v34[v45++] = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v42, v46, *(v47 + 56), 4 * *(v47 + 56), 268435488, v43, v44);
            if (a2 == v45)
            {
              goto LABEL_22;
            }
          }

          v34[v45++] = 0;
        }

        while (a2 != v45);
LABEL_22:
        v48 = [MPSRNNRecurrentMatrixState alloc];
        isTemporary_layerCount = objc_msgSend_initWithCommandBuffer_recurrentMatrixDescriptors_cellMatrixDescriptors_isTemporary_layerCount_(v48, v49, *(a1 + 8), v26, v34, a10, a2, v50);
        v58 = isTemporary_layerCount;
        v12 = isTemporary_layerCount;
        if (v24)
        {
          *(v24 + 8 * v38) = isTemporary_layerCount;
          v12 = v211;
        }

        objc_msgSend_addObject_(a9, v52, isTemporary_layerCount, v53, v54, v55, v56, v57);

        ++v38;
        v39 = v12;
        v40 = a1;
      }

      while (v214 + 1 != v11);
    }

    free(v26);
    free(v34);
    v15 = a11;
    v25 = v199;
    a8 = v209;
  }

  else
  {
    v25 = v16;
    v24 = 0;
  }

  v200 = v12;
  v208 = &v25[size];
  if (*(a1 + 96))
  {
    v59 = a5;
    v60 = v11;
    while (1)
    {
      v66 = objc_msgSend_rows(*v59, v17, v18, v19, v20, v21, v22, v23);
      v67 = *a3;
      v68 = *a4;
      v69 = *(*a3 + 56);
      if (*a4 == 2)
      {
        break;
      }

      if (v68 == 1)
      {
        v75 = 4 * v69;
        v76 = objc_msgSend_rowBytesForColumns_dataType_(MEMORY[0x277CD7258], v61, (4 * v69 + 12) & 0xFFFFFFFFFFFFFFF0, 268435488, v62, v63, v64, v65);
LABEL_35:
        v74 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v77, v66, v75, v76, 268435488, v78, v79);
        goto LABEL_36;
      }

      if (v68)
      {

        ++v59;
        if (!--v60)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v70 = objc_msgSend_rowBytesForColumns_dataType_(MEMORY[0x277CD7258], v61, v69, 268435488, v62, v63, v64, v65);
        v74 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v71, v66, *(v67 + 56), v70, 268435488, v72, v73);
LABEL_36:
        v80 = v74;
        v81 = [MPSRNNMatrixTrainingState alloc];
        isTemporary = objc_msgSend_initForSingleGateWithCommandBuffer_matrixDescriptor_isTemporary_(v81, v82, *(a1 + 8), v80, *(a1 + 82), v83, v84, v85);
        if (isTemporary)
        {
          objc_msgSend_addObject_(*(a1 + 96), v86, isTemporary, v87, v88, v89, v90, v91);
        }

        a8 = v209;

        ++v59;
        if (!--v60)
        {
          goto LABEL_39;
        }
      }
    }

    v75 = 6 * v69;
    v76 = objc_msgSend_rowBytesForColumns_dataType_(MEMORY[0x277CD7258], v61, 6 * v69, 268435488, v62, v63, v64, v65);
    goto LABEL_35;
  }

LABEL_39:
  v93 = (a1 + 112);
  v197 = *(a1 + 112);
  v202 = *(a1 + 120);
  context = objc_autoreleasePoolPush();
  v101 = 0;
  v102 = 0;
  v195 = 0;
  v103 = 0;
  v215 = a2 - 1;
  v204 = &v25[2 * v11];
  if (v24 | v200)
  {
    v104 = v25;
  }

  else
  {
    v104 = 0;
  }

  v206 = v104;
  v105 = &v25[size];
  if (v24 | v200)
  {
    v106 = &v25[size];
  }

  else
  {
    v106 = 0;
  }

  v205 = v106;
  v194 = a5 + 2;
  v107 = MEMORY[0x277CD73A8];
  v108 = 0x277CD7000;
  v210 = (a1 + 112);
  v198 = a5;
  v196 = v24;
  do
  {
    *v93 = 0;
    v93[1] = 0;
    if (v101)
    {
      v109 = a6;
    }

    else
    {
      *v93 = v197;
      v110 = a5;
      v111 = 1;
      v109 = a6;
      do
      {
        v112 = *v110++;
        v113 = *(v112 + *v107);
        if (v111 >= v11)
        {
          break;
        }

        ++v111;
      }

      while (!v113);
      if (v113)
      {
        v114 = v15;
        v115 = v102;
        v116 = malloc_type_malloc(size * 8, 0x100004000313F17uLL);
        v107 = MEMORY[0x277CD73A8];
        v117 = 0;
        v118 = *v210;
        do
        {
          if (v118)
          {
            v119 = *(v118 + 8 * v117);
          }

          else
          {
            v119 = 0;
          }

          v116[v117] = *(a5[v117] + *v107) + v119;
          ++v117;
        }

        while (v11 != v117);
        v195 = v116;
        *v210 = v116;
        v102 = v115;
        v15 = v114;
        a8 = v209;
        v108 = 0x277CD7000;
      }
    }

    if (v215 == v101)
    {
      *(a1 + 120) = v202;
      if (v109)
      {
        v120 = v109;
        v121 = 1;
        do
        {
          v122 = *v120++;
          v123 = *(v122 + *v107);
          if (v121 >= v11)
          {
            break;
          }

          ++v121;
        }

        while (!v123);
        if (v123)
        {
          v102 = malloc_type_malloc(size * 8, 0x100004000313F17uLL);
          v124 = MEMORY[0x277CD73A8];
          v125 = 0;
          v126 = *(a1 + 120);
          do
          {
            if (v126)
            {
              v127 = *(v126 + 8 * v125);
            }

            else
            {
              v127 = 0;
            }

            v102[v125] = *(*(v109 + 8 * v125) + *v124) + v127;
            ++v125;
          }

          while (v11 != v125);
          *(a1 + 120) = v102;
          v108 = 0x277CD7000uLL;
        }
      }
    }

    if (v24)
    {
      v128 = a3[v101];
      if (*(v128 + 8))
      {
        v129 = 0;
      }

      else
      {
        v129 = *(v128 + 16) == 0;
      }

      v131 = 0;
      do
      {
        v25[v131] = *(*(*(v24 + 8 * v131) + 48) + 8 * v101);
        v105[v131] = *(*(*(v24 + 8 * v131) + 56) + 8 * v101);
        ++v131;
      }

      while (v11 != v131);
      if (v129)
      {
        v130 = v25;
      }

      else
      {
        v130 = 0;
      }
    }

    else
    {
      v129 = 0;
      v130 = 0;
      if (v200)
      {
        *v25 = *(*(v200 + 48) + 8 * v101);
        *v105 = *(*(v200 + 56) + 8 * v101);
      }
    }

    if (v109)
    {
      v132 = v215 == v101;
    }

    else
    {
      v132 = 0;
    }

    v133 = !v132 && v129;
    if (v132)
    {
      v134 = v109;
    }

    else
    {
      v134 = v130;
    }

    if (v132)
    {
      v103 = v15;
    }

    v212 = v102;
    if (v134)
    {
      v93 = (a1 + 112);
      if (!a8)
      {
        goto LABEL_101;
      }
    }

    else
    {
      v203 = v133;
      v138 = a3[v101];
      v139 = MEMORY[0x277CD7258];
      v140 = v108;
      v141 = objc_msgSend_rows(*a5, v94, v95, v96, v97, v98, v99, v100);
      v152 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(v139, v142, v141, *(v138 + 40), 4 * *(v138 + 40), 268435488, v143, v144);
      v153 = a5;
      v154 = v204;
      v155 = v11;
      do
      {
        v156 = *(a1 + 72);
        v157 = objc_msgSend_rows(*v153, v145, v146, v147, v148, v149, v150, v151);
        TempBuffer = MPSAutoCache::GetTempBuffer(v156, 4 * v157 * *(v138 + 40), 0);
        v159 = *v153++;
        v167 = objc_msgSend_rows(v159, v160, v161, v162, v163, v164, v165, v166);
        objc_msgSend_setRows_(v152, v168, v167, v169, v170, v171, v172, v173);
        v174 = objc_alloc(*(v140 + 592));
        *v154++ = objc_msgSend_initWithBuffer_descriptor_(v174, v175, TempBuffer, v152, v176, v177, v178, v179);
        --v155;
      }

      while (v155);
      v103 = 0;
      v134 = v204;
      a5 = v198;
      v15 = a11;
      v25 = v199;
      a8 = v209;
      v93 = (a1 + 112);
      v24 = v196;
      v133 = v203;
      if (!v209)
      {
LABEL_101:
        v135 = 0;
        goto LABEL_102;
      }
    }

    v135 = *(*(a8 + 48) + 8 * v101);
    v136 = *(a8 + 56);
    if (v136)
    {
      v137 = *(v136 + 8 * v101);
      goto LABEL_103;
    }

LABEL_102:
    v137 = 0;
LABEL_103:
    if (v133)
    {
      v180 = 0;
    }

    else
    {
      v180 = v206;
    }

    sub_239BCEA78(a1, v11, a5, v134, v135, v137, v180, v205, v101, a2, a3, a4, v103);
    v102 = v212;
    v107 = MEMORY[0x277CD73A8];
    v108 = 0x277CD7000;
    if (v101 < v215)
    {
      v181 = 0;
      if (v11 < 4)
      {
        goto LABEL_112;
      }

      if ((a5 - v134) < 0x20)
      {
        goto LABEL_112;
      }

      v182 = (v134 + 2);
      v183 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      v184 = v194;
      do
      {
        v185 = *v182;
        *(v184 - 1) = *(v182 - 1);
        *v184 = v185;
        v182 += 2;
        v184 += 4;
        v183 -= 4;
      }

      while (v183);
      v181 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      if ((v11 & 0xFFFFFFFFFFFFFFFCLL) != v11)
      {
LABEL_112:
        v186 = v11 - v181;
        v187 = v181;
        v188 = &a5[v181];
        v189 = &v134[v187];
        do
        {
          v190 = *v189++;
          *v188++ = v190;
          --v186;
        }

        while (v186);
      }
    }

    ++v101;
    v105 = v208;
  }

  while (v101 != a2);
  if (v195)
  {
    free(v195);
    v102 = v212;
  }

  if (v102)
  {
    free(v102);
  }

  objc_autoreleasePoolPop(context);
  v191 = MEMORY[0x277CD7388];
  v192 = *MEMORY[0x277CD7388];
  do
  {
    if (*(*a5 + v192 + 24))
    {
      MPSDecrementReadCount(*a5);
      v192 = *v191;
    }

    ++a5;
    --v11;
  }

  while (v11);
  free(v25);
  if (v24)
  {

    free(v24);
  }
}
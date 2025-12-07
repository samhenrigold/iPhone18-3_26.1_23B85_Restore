char *rawAlias(uint64_t a1, void *a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v8 = [a2 safeArrayViewWithCommandBuffer:a1 descriptor:objc_msgSend(a2 aliasing:{"descriptor"), 1}];
  v9 = MEMORY[0x277CD73D0];
  v10 = *&v8[*MEMORY[0x277CD73D0]];
  *&v8[*MEMORY[0x277CD73F0]] = a3;
  v11 = &v8[*v9];
  v11[2] = a6;
  v11[3] = a7;
  *v11 = a4;
  v11[1] = a5;
  v12 = &v8[*MEMORY[0x277CD7410]];
  *v12 = a4;
  v12[1] = a5;
  v12[2] = a6;
  v12[3] = a7;
  if (v10 != a4.n128_u32[0])
  {
    *&v8[*MEMORY[0x277CD7400]] = (*&v8[*MEMORY[0x277CD73C8]] >> 3) * a4.n128_u32[0];
    *&v8[*MEMORY[0x277CD7408]] = a4.n128_u32[0];
  }

  v13 = v8;
  [v8 updateStrides];
  return v13;
}

uint64_t EncodeArrayIdentityOffset(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 144);
  v7 = [*(a4 + 232) graph];
  v8 = **(v7 + 56);
  if (*(*(v7 + 56) + 8) == v8)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v9 = *v8;
  v11 = *(*v8 + 8);
  v10 = *v11;
  if (*(v11 + 8) == *v11 || (v13 = *(v9 + 24), v12 = *v13, *(v13 + 8) == *v13))
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v14 = *v10;
  v15 = *v12;
  DimensionSize = BaseTensor::GetDimensionSize(*v12);
  v17 = BaseTensor::GetDimensionSize(v15);
  v18 = BaseTensor::GetDimensionSize(v15);
  v19 = BaseTensor::GetDimensionSize(v15);
  v20.i64[0] = __PAIR64__(v17, DimensionSize);
  v20.i64[1] = __PAIR64__(v19, v18);
  v188 = v20;
  v21 = BaseTensor::GetDimensionSize(v14);
  v22 = BaseTensor::GetDimensionSize(v14);
  v23 = BaseTensor::GetDimensionSize(v14);
  v24 = BaseTensor::GetDimensionSize(v14);
  v27.i64[0] = __PAIR64__(v22, v21);
  v27.i64[1] = __PAIR64__(v24, v23);
  v28 = *v15;
  if (*v15 <= 1uLL)
  {
    v29 = 1;
  }

  else
  {
    v29 = *v15;
  }

  if (v29 >= 8)
  {
    v29 = 8;
  }

  v181 = v29;
  if (v28 < 5)
  {
    v25.i32[0] = 0;
    v40 = v6;
    v26.i32[0] = v6;
    v42 = vdupq_lane_s32(*&vceqq_s32(v26, v25), 0);
    v185 = vbslq_s8(v42, v27, v188);
    v41 = vbslq_s8(v42, v188, v27);
    v180 = 0u;
    v183 = 0u;
  }

  else
  {
    v190 = v27;
    v30 = BaseTensor::GetDimensionSize(v15);
    v31 = BaseTensor::GetDimensionSize(v15);
    v32 = BaseTensor::GetDimensionSize(v15);
    v33 = BaseTensor::GetDimensionSize(v15);
    v34.i64[0] = __PAIR64__(v31, v30);
    v34.i64[1] = __PAIR64__(v33, v32);
    v184 = v34;
    v35 = BaseTensor::GetDimensionSize(v14);
    v36 = BaseTensor::GetDimensionSize(v14);
    v37 = BaseTensor::GetDimensionSize(v14);
    v38 = BaseTensor::GetDimensionSize(v14);
    v39.i64[0] = __PAIR64__(v36, v35);
    v39.i64[1] = __PAIR64__(v38, v37);
    if (v6)
    {
      v183 = v39;
      v40 = v6;
      v180 = v184;
      v185 = v188;
      v41 = v190;
    }

    else
    {
      v40 = 0;
      v180 = v39;
      v41 = v188;
      v183 = v184;
      v185 = v190;
    }
  }

  v189 = *(a4 + 208);
  memset(v252, 0, sizeof(v252));
  v251 = 0u;
  v250 = 0u;
  memset(v248, 0, 32);
  v247 = 0u;
  v246 = 0u;
  v245 = 0u;
  v244 = 0u;
  v243 = 0u;
  v242 = 0u;
  v249 = 0u;
  v191 = v41;
  v248[2] = v41;
  v43 = [*(a4 + 232) graph];
  v44 = *(v43 + 64);
  v46 = *v44;
  v45 = v44[1];
  if (*v44 == v45)
  {
    goto LABEL_18;
  }

  v47 = v43;
  v48 = 0;
  v49 = 64;
  while (1)
  {
    v50 = *v46;
    if (v50 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v47) + 32))
    {
      break;
    }

    ++v48;
    ++v46;
    v49 += 80;
    if (v46 == v45)
    {
      goto LABEL_18;
    }
  }

  [*(a4 + 16) count];
  if (v48 >= [*(a4 + 16) count])
  {
LABEL_18:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    return -2;
  }

  v52 = [*(a4 + 16) objectAtIndexedSubscript:v48];
  v53 = *(*(a4 + 8) + v49);
  v249 = v185;
  v54 = 0uLL;
  if (v28 >= 5)
  {
    v250 = v183;
    v54 = v180;
    v251 = v180;
  }

  v179 = v54;
  makeStrideElements();
  makeStrideElements();
  v56 = v234;
  v55 = v235;
  v57 = v236;
  v58 = v237;
  v60 = v238;
  v59 = v239;
  v61 = v240;
  v62 = v241;
  v63 = v233;
  v64 = v232;
  v65 = v231;
  v66 = v230;
  v67 = v229;
  v68 = v228;
  v69 = v227;
  v70 = v226;
  v71 = *MEMORY[0x277CD73D8];
  v72 = *MEMORY[0x277CD7410];
  v73 = (v52 + v72);
  v74 = *(v52 + v71);
  v75 = &v189[v72];
  v76 = *&v189[v71];
  v77 = *v73;
  v78 = v73[1];
  v79 = v73[2];
  v80 = v73[3];
  v81 = *v75;
  v82 = *(v75 + 1);
  v83 = *(v75 + 2);
  v84 = *(v75 + 3);
  v217[3] = v84;
  v217[2] = v83;
  v217[1] = v82;
  v217[0] = v81;
  v85 = v76 & 0xF;
  LODWORD(v75) = *(v217 + v85);
  v218[7] = v233;
  v218[6] = v232;
  v218[5] = v231;
  v218[4] = v230;
  v218[3] = v229;
  v218[2] = v228;
  v218[1] = v227;
  v218[0] = v226;
  v86 = *(v218 + v85);
  v215[3] = v80;
  v215[2] = v79;
  v215[1] = v78;
  v215[0] = v77;
  v87 = v74 & 0xF;
  v88 = *(v215 + v87);
  v133 = v75 >= 2;
  v216[7] = v241;
  v216[6] = v240;
  v216[5] = v239;
  v216[4] = v238;
  v216[3] = v237;
  v216[2] = v236;
  v216[1] = v235;
  v216[0] = v234;
  v89 = *(v216 + v87);
  if (!v133)
  {
    v86 = 0;
  }

  if (v88 < 2)
  {
    v89 = 0;
  }

  *&v242 = v89;
  *&v246 = v86;
  if (v28 > 1)
  {
    v214[0] = v81;
    v214[1] = v82;
    v214[2] = v83;
    v214[3] = v84;
    v96 = BYTE1(v76) & 0xF;
    v97 = *(v214 + v96);
    v213[0] = v226;
    v213[1] = v227;
    v213[2] = v228;
    v213[3] = v229;
    v213[4] = v230;
    v213[5] = v231;
    v213[6] = v232;
    v213[7] = v233;
    v98 = *(v213 + v96);
    v212[0] = v77;
    v212[1] = v78;
    v212[2] = v79;
    v212[3] = v80;
    v99 = BYTE1(v74) & 0xF;
    v100 = *(v212 + v99);
    v133 = v97 >= 2;
    v211[0] = v234;
    v211[1] = v235;
    v211[2] = v236;
    v211[3] = v237;
    v211[4] = v238;
    v211[5] = v239;
    v211[6] = v240;
    v211[7] = v241;
    v101 = *(v211 + v99);
    if (!v133)
    {
      v98 = 0;
    }

    if (v100 < 2)
    {
      v101 = 0;
    }

    *(&v242 + 1) = v101;
    *(&v246 + 1) = v98;
    v95 = v191.i32[1];
    v102 = v185;
    if (v28 == 2)
    {
      v103 = v181;
    }

    else
    {
      v210[0] = v81;
      v210[1] = v82;
      v210[2] = v83;
      v210[3] = v84;
      v104 = BYTE2(v76) & 0xF;
      v105 = *(v210 + v104);
      v209[0] = v226;
      v209[1] = v227;
      v209[2] = v228;
      v209[3] = v229;
      v209[4] = v230;
      v209[5] = v231;
      v209[6] = v232;
      v209[7] = v233;
      v106 = *(v209 + v104);
      v208[0] = v77;
      v208[1] = v78;
      v208[2] = v79;
      v208[3] = v80;
      v107 = BYTE2(v74) & 0xF;
      v108 = *(v208 + v107);
      v133 = v105 >= 2;
      v207[0] = v234;
      v207[1] = v235;
      v207[2] = v236;
      v207[3] = v237;
      v207[4] = v238;
      v207[5] = v239;
      v207[6] = v240;
      v207[7] = v241;
      v109 = *(v207 + v107);
      if (!v133)
      {
        v106 = 0;
      }

      if (v108 < 2)
      {
        v109 = 0;
      }

      *&v243 = v109;
      *&v247 = v106;
      v103 = v181;
      if (v28 != 3)
      {
        v206[0] = v81;
        v206[1] = v82;
        v206[2] = v83;
        v206[3] = v84;
        v110 = BYTE3(v76) & 0xF;
        v111 = *(v206 + v110);
        v205[0] = v226;
        v205[1] = v227;
        v205[2] = v228;
        v205[3] = v229;
        v205[4] = v230;
        v205[5] = v231;
        v205[6] = v232;
        v205[7] = v233;
        v112 = *(v205 + v110);
        v204[0] = v77;
        v204[1] = v78;
        v204[2] = v79;
        v204[3] = v80;
        v113 = BYTE3(v74) & 0xF;
        v114 = *(v204 + v113);
        v133 = v111 >= 2;
        v203[0] = v234;
        v203[1] = v235;
        v203[2] = v236;
        v203[3] = v237;
        v203[4] = v238;
        v203[5] = v239;
        v203[6] = v240;
        v203[7] = v241;
        v115 = *(v203 + v113);
        if (!v133)
        {
          v112 = 0;
        }

        if (v114 < 2)
        {
          v115 = 0;
        }

        *(&v243 + 1) = v115;
        *(&v247 + 1) = v112;
        if (v28 != 4)
        {
          v116 = v248;
          v117 = 4;
          do
          {
            v197 = v76;
            v202[0] = v81;
            v202[1] = v82;
            v202[2] = v83;
            v202[3] = v84;
            v118 = *(&v197 | v117 & 0xF) & 0xF;
            v119 = *(v202 + v118);
            v201[0] = v70;
            v201[1] = v69;
            v201[2] = v68;
            v201[3] = v67;
            v201[4] = v66;
            v201[5] = v65;
            v201[6] = v64;
            v201[7] = v63;
            v120 = *(v201 + v118);
            v133 = v119 >= 2;
            v198 = v74;
            v200[0] = v77;
            v200[1] = v78;
            v200[2] = v79;
            v200[3] = v80;
            v121 = *(&v198 | v117 & 0xF) & 0xF;
            v122 = *(v200 + v121);
            if (!v133)
            {
              v120 = 0;
            }

            v199[0] = v56;
            v199[1] = v55;
            v199[2] = v57;
            v199[3] = v58;
            v199[4] = v60;
            v199[5] = v59;
            v199[6] = v61;
            v199[7] = v62;
            v123 = *(v199 + v121);
            if (v122 < 2)
            {
              v123 = 0;
            }

            *(v116 - 8) = v123;
            *v116++ = v120;
            ++v117;
          }

          while (v181 != v117);
          v179 = v251;
          v102 = v249;
        }
      }
    }

    v90 = v191;
    v124 = vcgt_u32(*v102.i8, 0x100000001);
    if ((v191.i32[1] > 1) | v124.i8[4] & 1)
    {
      v93 = 2;
    }

    else
    {
      v93 = 1;
    }

    if ((v191.i32[1] > 1) | v124.i8[4] & 1)
    {
      v92 = (v191.i32[0] > 1) | v124.i8[0] & 1 | 2;
    }

    else
    {
      v92 = (v191.i32[0] > 1) | v124.i8[0] & 1;
    }

    if (v28 == 2)
    {
      v94 = v183;
    }

    else
    {
      if (v191.i32[2] > 1 || v102.i32[2] > 1u)
      {
        v93 = 3;
        v92 |= 4u;
      }

      v94 = v183;
      if (v28 != 3)
      {
        if (v191.i32[3] > 1 || v102.i32[3] > 1u)
        {
          v93 = 4;
          v92 |= 8u;
        }

        if (v28 != 4)
        {
          v129 = v103 - 4;
          v130 = 5;
          do
          {
            v196 = v183;
            v131 = *(&v196 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v130 - 1) & 3)));
            v195 = v179;
            if (v130 <= v93)
            {
              v132 = v93;
            }

            else
            {
              v132 = v130;
            }

            v133 = v131 > 1 || *(&v195 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v130 - 1) & 3))) >= 2u;
            if (v133)
            {
              v93 = v132;
            }

            if (v133)
            {
              v92 |= 1 << (v130 - 1);
            }

            ++v130;
            --v129;
          }

          while (v129);
        }
      }
    }
  }

  else
  {
    v90 = v191;
    LOBYTE(v92) = v191.i32[0] > 1 || v185.i32[0] > 1u;
    v93 = 1;
    v94 = v183;
    v95 = v191.i32[1];
  }

  if (v95 <= 3)
  {
    v95 = v191.i32[2];
    if (v191.i32[2] < 4)
    {
      v138 = 0;
      v137 = 0;
      goto LABEL_111;
    }

    v134 = 2;
  }

  else
  {
    v134 = 1;
  }

  if (v95 == 8 || v95 > 0xF)
  {
    v136 = 8;
  }

  else
  {
    v136 = 4;
  }

  v194 = v90;
  *(&v194 & 0xFFFFFFFFFFFFFFF3 | (4 * (v134 & 3))) = (*(&v194 | (4 * v134)) + v136 - 1) / v136;
  v90 = v194;
  v137 = ~(v134 << 17) & 0x20000;
  v138 = v136 << 16;
LABEL_111:
  v139 = vextq_s8(v90, v90, 4uLL).u64[0];
  v140.i64[0] = v139;
  v140.i64[1] = SHIDWORD(v139);
  v141 = v140;
  v140.i64[0] = v90.i32[0];
  v140.i64[1] = vextq_s8(*&v90, *&v90, 8uLL).i32[1];
  v142 = v140;
  if (v93 < 5)
  {
    v186 = vzip1q_s64(v142, v141);
    v143 = v141.u64[1];
    v193 = v142.i64[1];
    *&v252[0] = v141.i64[1];
    if (!v141.i64[1])
    {
      goto LABEL_116;
    }

    goto LABEL_115;
  }

  v141.i64[0] = v142.i32[0] * v141.i32[0];
  v141.i64[1] = v142.i32[2] * v141.i32[2];
  v186 = v141;
  v144 = vmull_s32(vzip1_s32(*v94.i8, *&vextq_s8(v94, v94, 8uLL)), vzip2_s32(*v94.i8, *&vdupq_laneq_s32(v94, 3)));
  v193 = v144.i64[1];
  v143 = v144.i64[0];
  *&v252[0] = v144.i64[0];
  if (v144.i64[0])
  {
LABEL_115:
    DWORD2(v252[0]) = __clz(v143) ^ 0x3F;
  }

LABEL_116:
  v145 = vuzp1q_s32(v90, v94);
  v145.i32[1] = HIDWORD(v139);
  v146.i64[0] = -1;
  v146.i64[1] = -1;
  v147 = vceqzq_s32(vandq_s8(v145, vaddq_s32(v145, v146)));
  v148 = vmovn_s32(v147);
  v149.i64[0] = 0x1F0000001FLL;
  v149.i64[1] = 0x1F0000001FLL;
  v150 = vbicq_s8(vsubq_s32(v149, vclzq_s32(v145)), vceqzq_s32(v145));
  if (v148.i8[6])
  {
    v151 = 0x10000;
  }

  else
  {
    v151 = 0;
  }

  *(v252 + 12) = vandq_s8(v150, v147);
  HIDWORD(v252[1]) = HIDWORD(v139);
  v152 = ((v93 << 8) + 1792) & 0x700;
  if (v148.i8[0])
  {
    v153 = 0x2000;
  }

  else
  {
    v153 = 0;
  }

  if (v148.i8[2])
  {
    v154 = 0x4000;
  }

  else
  {
    v154 = 0;
  }

  if (v148.i8[4])
  {
    v155 = 0x8000;
  }

  else
  {
    v155 = 0;
  }

  v220[4] = -1;
  v220[3] = -1;
  v221 = 0u;
  v222 = 0u;
  v220[5] = v138 | v152 | v137 | v154 | v153 | v155 & 0xFFFFFF00 | (v40 << 11) | v151 & 0xFFFFFF00 | v92 | (((v143 & (v143 - 1)) == 0) << 12);
  v223 = 0;
  v224 = [*(a4 + 16) count] | ((*(a4 + 112) != 0) << 8) | 0x10000;
  v225 = 0;
  v177 = *(a1 + *MEMORY[0x277CD7360]);
  v178 = *(a1 + *MEMORY[0x277CD7368]);
  v176 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  v157 = PipelineStateForMPSKey;
  v158 = v52;
  [a2 setComputePipelineState:{PipelineStateForMPSKey, v176, v177, v178, 0, 0}];
  MPSLibrary::ReleaseMPSKey();
  v159 = [v157 threadExecutionWidth];
  if (v159 <= 1)
  {
    v160 = 1;
  }

  else
  {
    v160 = v159;
  }

  v161 = [v157 maxTotalThreadsPerThreadgroup];
  v162 = 256;
  if (v161 < 0x100)
  {
    v162 = v161;
  }

  if ((*(*(a1 + *MEMORY[0x277CD7350]) + 1477) & 4) != 0)
  {
    v163 = v161;
  }

  else
  {
    v163 = v162;
  }

  if (v163 <= 2 * v160)
  {
    v164 = 1;
  }

  else
  {
    v164 = v163 / v160;
  }

  if (((v186.i64[0] + 1) & 0xFFFFFFFFFFFFFFFELL) >= v160)
  {
    v165 = v160;
  }

  else
  {
    v165 = (v186.i64[0] + 1) & 0xFFFFFFFFFFFFFFFELL;
  }

  v166 = v186.i64[1];
  v167 = (v186.i64[1] + 1) & 0xFFFFFFFFFFFFFFFELL;
  if (v167 >= v164)
  {
    v167 = v164;
  }

  do
  {
    v168 = v167;
    v169 = v167 * v165;
    v167 *= 2;
  }

  while (v169 < v160);
  v170 = v143 * v193;
  v171 = v186.i64[0] - 1;
  if (v186.i64[0] == 1 && v186.i64[1] >= 2uLL)
  {
    v172 = v53;
    if (v186.i64[1] <= 8 * v160)
    {
      v164 = 1;
    }

    v168 = v164 * v160;
    v173 = 1;
    v166 = 1;
    v165 = 1;
    v174 = (v186.i64[1] + v164 * v160 - 1) / (v164 * v160);
  }

  else if (v186.i64[0] >= 2uLL && v186.i64[1] == 1)
  {
    v172 = v53;
    if (v186.i64[0] <= 8 * v160)
    {
      v164 = 1;
    }

    v165 = v164 * v160;
    v174 = 1;
    v168 = 1;
    v173 = (v164 * v160 + v171) / (v164 * v160);
  }

  else
  {
    v173 = (v165 + v171) / v165;
    v172 = v53;
    if (v186.i64[0] == 1)
    {
      v166 = 1;
      v174 = (v186.i64[1] + v168 - 1) / v168;
      if (v186.i64[1] == 1)
      {
        if (v170 <= 8 * v160)
        {
          v164 = 1;
        }

        v166 = v164 * v160;
        v174 = 1;
        v173 = 1;
        v168 = 1;
        v165 = 1;
        v170 = (v170 + v164 * v160 - 1) / (v164 * v160);
      }
    }

    else
    {
      v166 = 1;
      v174 = (v186.i64[1] + v168 - 1) / v168;
    }
  }

  v187 = v170;
  v192 = v166;
  MPSSetNDArraysOnComputeEncoder(a2, a4, 4, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(a2);
  v175 = *(a4 + 192);
  [a2 setBuffer:objc_msgSend(v158 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v158, 0, 8, 0, 0) + v172, 28}];
  [a2 setBuffer:objc_msgSend(v189 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v189, 0, 8, 0, 0) + v175, 27}];
  v220[0] = v173;
  v220[1] = v174;
  v220[2] = v187;
  v219[0] = v165;
  v219[1] = v168;
  v219[2] = v192;
  [a2 dispatchThreadgroups:v220 threadsPerThreadgroup:v219];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

double getFlattenedDimensionsVector(uint64_t a1, unint64_t a2, _OWORD *a3, _OWORD *a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  v18 = *(a1 + *MEMORY[0x277CD73F0]);
  v19 = 0.0;
  if (v18 < a2)
  {
    return v19;
  }

  v167 = v17;
  v168 = v16;
  v169 = v15;
  v170 = v14;
  v171 = v13;
  v172 = v12;
  v173 = v11;
  v174 = v10;
  v175 = v8;
  v176 = v9;
  v20 = MEMORY[0x277CD73D8];
  v21 = MEMORY[0x277CD7410];
  if (v18)
  {
    v22 = (a1 + *MEMORY[0x277CD7410]);
    v24 = v22[2];
    v23 = v22[3];
    v26 = *v22;
    v25 = v22[1];
    v27 = *(a1 + *MEMORY[0x277CD73D8]);
    *&v28 = 0x100000001;
    *(&v28 + 1) = 0x100000001;
    v29 = 1;
    *&v30 = 0x100000001;
    *(&v30 + 1) = 0x100000001;
    *&v31 = 0x100000001;
    *(&v31 + 1) = 0x100000001;
    *&v32 = 0x100000001;
    *(&v32 + 1) = 0x100000001;
    do
    {
      v161 = v27;
      v33 = (v29 - 1) & 0xF;
      v166[0] = v26;
      v166[1] = v25;
      v166[2] = v24;
      v166[3] = v23;
      v34 = *(v166 + (*(&v161 | v33) & 0xF));
      v162 = v28;
      v163 = v30;
      v164 = v31;
      v165 = v32;
      *(&v162 + v33) = v34;
      v32 = v165;
      v31 = v164;
      v30 = v163;
      v28 = v162;
    }

    while (v18 > v29++);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *&v28 = 0x100000001;
    *(&v28 + 1) = 0x100000001;
    *&v30 = 0x100000001;
    *(&v30 + 1) = 0x100000001;
    *&v31 = 0x100000001;
    *(&v31 + 1) = 0x100000001;
    *&v32 = 0x100000001;
    *(&v32 + 1) = 0x100000001;
    if (a2)
    {
LABEL_6:
      v36 = 1;
      v37 = a2;
      do
      {
        v160[0] = a5;
        v160[1] = a6;
        v160[2] = a7;
        v160[3] = a8;
        v37 -= *(v160 + ((v36 - 1) & 0xF)) == 1;
        v38 = v36++;
      }

      while (v38 < a2);
      v39 = 0;
      v40 = 0;
      v41 = v18 - v37 + 1;
      v42 = 0uLL;
      v43 = 0uLL;
      v44 = 0uLL;
      v45 = 0uLL;
      v46 = MEMORY[0x277CD7418];
      v47 = 0uLL;
      v48 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
      v51 = 0uLL;
      while (1)
      {
        v159[0] = a5;
        v159[1] = a6;
        v159[2] = a7;
        v159[3] = a8;
        v52 = *(v159 + (v39 & 0xF));
        v158[0] = v28;
        v158[1] = v30;
        v158[2] = v31;
        v158[3] = v32;
        if (v52 != *(v158 + (v40 & 0xF)))
        {
          break;
        }

        v53 = *v20;
        v134 = *(a1 + v53);
        v54 = *(&v134 | v40 & 0xF);
        v135 = v43;
        v136 = v44;
        v137 = v45;
        v138 = v47;
        *(&v135 + (v39 & 0xF)) = v54;
        v55 = 1;
        v45 = v137;
        v47 = v138;
        v43 = v135;
        v44 = v136;
        v56 = v40;
LABEL_36:
        v130 = v48;
        v131 = v49;
        v132 = v50;
        v133 = v51;
        *(&v130 + (v39 & 0xF)) = v55;
        v50 = v132;
        v51 = v133;
        ++v39;
        v40 = v56 + 1;
        v48 = v130;
        v49 = v131;
        if (v39 >= a2)
        {
          if (v40 <= 0xF)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        }
      }

      v57 = 1;
      if (v41)
      {
        v56 = v40;
        if (v18 > v40)
        {
          v58 = 1;
          while (1)
          {
            v59 = v40 + v58;
            v56 = v59 - 1;
            v157[0] = v28;
            v157[1] = v30;
            v157[2] = v31;
            v157[3] = v32;
            v57 *= *(v157 + ((v59 - 1) & 0xFLL));
            if (v57 == v52)
            {
              break;
            }

            v60 = v58 + 1;
            if (v58 < v41)
            {
              ++v58;
              if (v18 > v59)
              {
                continue;
              }
            }

            v56 = v40 + v60 - 1;
            goto LABEL_19;
          }

LABEL_20:
          v53 = *v20;
          v61 = *(a1 + v53);
          v156 = v61;
          v62 = *(&v156 | v40 & 0xF);
          v63 = v40 + 1;
          v64 = *(&v156 | v40 & 0xF);
          while (v63 <= v56)
          {
            v155 = v61;
            v65 = v64 + 1;
            v66 = *(&v155 | v63++ & 0xF);
            v64 = v66;
            if (v65 != v66)
            {
              return 0.0;
            }
          }

          v67 = v56 - v40;
          if (v56 >= v40)
          {
            v109 = v42;
            v68 = (a1 + *MEMORY[0x277CD73D0]);
            v70 = v68[2];
            v69 = v68[3];
            v72 = *v68;
            v71 = v68[1];
            v73 = (a1 + *v21);
            v74 = v73[2];
            v75 = v73[3];
            v77 = *v73;
            v76 = v73[1];
            v78 = v40;
            v110 = a6;
            v111 = a5;
            while (1)
            {
              v152 = v61;
              v79 = *(&v152 | v78 & 0xF);
              v154[0] = v72;
              v154[1] = v71;
              v154[2] = v70;
              v154[3] = v69;
              v80 = *(v154 + (v79 & 0xF));
              v153[0] = v77;
              v153[1] = v76;
              v153[2] = v74;
              v153[3] = v75;
              v19 = 0.0;
              if (v80 != *(v153 + (v79 & 0xF)))
              {
                return v19;
              }

              if (*(a1 + *v46 + 4 * (v79 & 0xF)))
              {
                return v19;
              }

              if (v18 - 1 > v79)
              {
                v81 = (a1 + *MEMORY[0x277CD7428]);
                v82 = *v81;
                v83 = v81[1];
                v84 = v81[2];
                v85 = v81[3];
                v86 = a7;
                v87 = a8;
                v88 = v76;
                v89 = v72;
                v90 = v69;
                v92 = v81[4];
                v91 = v81[5];
                v93 = v75;
                v94 = v70;
                v95 = v81[6];
                v151 = v81[7];
                v150[5] = v91;
                v150[6] = v95;
                v150[3] = v85;
                v150[4] = v92;
                v150[1] = v83;
                v150[2] = v84;
                v150[0] = v82;
                v96 = *(v150 + ((v79 + 1) & 0xF));
                v149[6] = v95;
                v149[7] = v151;
                v70 = v94;
                v75 = v93;
                v149[4] = v92;
                v149[5] = v91;
                v69 = v90;
                v72 = v89;
                v76 = v88;
                a8 = v87;
                a7 = v86;
                a6 = v110;
                a5 = v111;
                v149[2] = v84;
                v149[3] = v85;
                v149[0] = v82;
                v149[1] = v83;
                if (v96 != *(v149 + (v79 & 0xF)) * v80)
                {
                  return v19;
                }
              }

              if (++v78 > v56)
              {
                v55 = v67 + 1;
                v42 = v109;
                do
                {
                  v147 = v61;
                  v148 = v42;
                  *(&v148 | *(&v147 | v40 & 0xF) & 0xF) = 1;
                  v42 = v148;
                  ++v40;
                }

                while (v40 <= v56);
                v143 = v43;
                v144 = v44;
                v145 = v45;
                v146 = v47;
                *(&v143 + (v39 & 0xF)) = v62;
                v45 = v145;
                v47 = v146;
                v43 = v143;
                v44 = v144;
                v21 = MEMORY[0x277CD7410];
                goto LABEL_36;
              }
            }
          }

          v139 = v43;
          v140 = v44;
          v141 = v45;
          v142 = v47;
          *(&v139 + (v39 & 0xF)) = v62;
          v45 = v141;
          v47 = v142;
          v55 = v67 + 1;
          v43 = v139;
          v44 = v140;
          goto LABEL_36;
        }
      }

      else
      {
        v56 = v40;
      }

LABEL_19:
      if (v57 != v52)
      {
        return 0.0;
      }

      goto LABEL_20;
    }
  }

  v39 = 0;
  v40 = 0;
  *&v42 = 0;
  v43 = 0uLL;
  v44 = 0uLL;
  LODWORD(v53) = *v20;
  v45 = 0uLL;
  v47 = 0uLL;
  v48 = 0uLL;
  v49 = 0uLL;
  v50 = 0uLL;
  v51 = 0uLL;
LABEL_42:
  v97 = v39;
  v98 = *(a1 + v53);
  v39 = v39 - v40 + 16;
  do
  {
    v121 = v98;
    v99 = *(&v121 | v40 & 0xF);
    v126 = v43;
    v127 = v44;
    v128 = v45;
    v129 = v47;
    *(&v126 + (v97 & 0xF)) = v99;
    v45 = v128;
    v47 = v129;
    v43 = v126;
    v44 = v127;
    v122 = v48;
    v123 = v49;
    v124 = v50;
    v125 = v51;
    *(&v122 + (v97 & 0xF)) = 1;
    v50 = v124;
    v51 = v125;
    ++v40;
    ++v97;
    v48 = v122;
    v49 = v123;
  }

  while (v40 != 16);
LABEL_44:
  if (v39)
  {
    v100 = 0;
    v101 = 0uLL;
    v102 = 255;
    do
    {
      v103 = 0;
      v120[0] = v43;
      v120[1] = v44;
      v120[2] = v45;
      v120[3] = v47;
      v104 = *(v120 + (v100 & 0xF));
      v105 = v104;
      do
      {
        v119[0] = v43;
        v119[1] = v44;
        v119[2] = v45;
        v119[3] = v47;
        v106 = *(v119 + (v103 & 0xF));
        v118[0] = v48;
        v118[1] = v49;
        v118[2] = v50;
        v118[3] = v51;
        if (v106 < v104 && v100 != v103)
        {
          v105 = v105 - *(v118 + (v103 & 0xF)) + 1;
        }

        ++v103;
      }

      while (v39 != v103);
      v117 = v101;
      *(&v117 | v100 & 0xF) = v105;
      v101 = v117;
      if (v105 > v102)
      {
        v102 = v105;
      }

      ++v100;
    }

    while (v100 != v39);
    if (v39 >= 0x10)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v101 = 0uLL;
    v102 = 255;
  }

  do
  {
    ++v102;
    v112 = v101;
    *(&v112 | v39 & 0xF) = v102;
    v101 = v112;
    v113 = v48;
    v114 = v49;
    v115 = v50;
    v116 = v51;
    *(&v113 + (v39 & 0xF)) = 1;
    v50 = v115;
    v51 = v116;
    ++v39;
    v48 = v113;
    v49 = v114;
  }

  while (v39 != 16);
LABEL_60:
  if (a3)
  {
    *a3 = v101;
  }

  if (!a4)
  {
    return *&v42;
  }

  *a4 = v48;
  a4[1] = v49;
  v19 = *&v42;
  a4[2] = v50;
  a4[3] = v51;
  return v19;
}

uint64_t MPSNDArrayIdentityFunctionConstructor(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = MPSCreateFunctionConstantValues();
  v7 = v6;
  v8 = *a3;
  v9 = *(a3 + 1);
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  v11 = vceqq_s64(v9, v10);
  v12 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a3 + 3), v10), vceqq_s64(*(a3 + 4), v10))));
  v13 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(v11, vceqq_s64(*(a3 + 3), v10)), xmmword_239B06050)) & 0xF;
  if (*a3 != -1 || v13 != 0 || (v12 & 0xF) != 0 || a3[5] != -1)
  {
    if ((vuzp1_s16(vmovn_s64(v11), *v9.i8).u8[0] & 1) == 0)
    {
      v19 = *(a3 + 1);
      [v6 setConstantValue:&v19 type:33 atIndex:126];
      v8 = *a3;
    }

    if (v8 != -1)
    {
      v19 = v8;
      [v7 setConstantValue:&v19 type:33 atIndex:125];
    }

    if (a3[2] != -1)
    {
      v19 = a3[2];
      [v7 setConstantValue:&v19 type:33 atIndex:124];
    }

    if (a3[3] != -1)
    {
      v19 = a3[3];
      [v7 setConstantValue:&v19 type:33 atIndex:123];
    }

    if (a3[4] != -1)
    {
      v19 = a3[4];
      [v7 setConstantValue:&v19 type:33 atIndex:119];
    }

    if (a3[5] != -1)
    {
      v19 = a3[5];
      [v7 setConstantValue:&v19 type:33 atIndex:118];
    }

    if (a3[8] != -1)
    {
      v19 = a3[8];
      [v7 setConstantValue:&v19 type:33 atIndex:122];
    }

    if (a3[9] != -1)
    {
      v19 = a3[9];
      [v7 setConstantValue:&v19 type:33 atIndex:121];
    }

    if (a3[6] != -1)
    {
      v19 = a3[6];
      [v7 setConstantValue:&v19 type:33 atIndex:117];
    }

    if (a3[7] != -1)
    {
      v19 = a3[7];
      [v7 setConstantValue:&v19 type:33 atIndex:116];
    }
  }

  v17 = _MPSNewSpecializedFunction();

  return v17;
}

uint64_t GetKernelParametersNCHWCommon(_DWORD *a1)
{
  if (a1[20] == 1)
  {
    v2 = a1[6];
    v1 = a1[7];
    v3 = 64 - __clz(v2 - 1);
    if (v2 <= 1)
    {
      v4 = (v2 == 0) << 63;
    }

    else
    {
      v4 = v3;
    }

    if (v4 >= 4)
    {
      v4 = 4;
    }

    if (v4 <= 2)
    {
      v4 = 2;
    }

    v5 = 0x324000000;
    if (v1 < 9)
    {
      v5 = 0x340000000;
    }

    v6 = 0x2A2000000;
    if (v1 < 9)
    {
      v6 = 0x2B0000000;
    }

    if (*(*a1 + 1472) >= 33)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    v130 = v4 | v7 | (8 * v4) | 0x14000200180;
    return AdjustKernelParameters(v1, a1[19], &v130);
  }

  if ((a1[21] | 0x80000000) == 0x90000010)
  {
    v9 = a1[22] == 268435472;
    v10 = a1[9];
    if (a1[22] == 268435472)
    {
      v10 = 1;
    }
  }

  else
  {
    v9 = 1;
    v10 = 1;
  }

  v11 = *(*a1 + 1472);
  v12 = a1[5] * a1[4];
  v13 = v12 * v10;
  v15 = a1[6];
  v14 = a1[7];
  v16.i64[0] = 0x100000001;
  v16.i64[1] = 0x100000001;
  v17 = vmovn_s32(vmvnq_s8(vceqq_s32(*(a1 + 10), v16)));
  v17.i16[0] = vmaxv_u16(v17);
  v18 = (a1[14] == 3) & ~v17.i32[0];
  if (v18 == 1 && (a1[23] & 1) == 0 && a1[15] == 3)
  {
    v19 = 0;
    v20 = 0;
    v21 = -1;
    v22 = &dword_239B19BF8;
    do
    {
      v23 = v13 - *(v22 - 2);
      if (v23 < 0)
      {
        LODWORD(v23) = *(v22 - 2) - v13;
      }

      v24 = v14 - *(v22 - 1);
      if (v24 < 0)
      {
        LODWORD(v24) = *(v22 - 1) - v14;
      }

      v25 = v24 + v23;
      v26 = v15 - *v22;
      if (v26 < 0)
      {
        LODWORD(v26) = *v22 - v15;
      }

      v27 = (v25 + v26);
      if (v21 > v27)
      {
        v21 = v27;
        v19 = v20;
        if (!v27)
        {
          v19 = v20;
          goto LABEL_57;
        }
      }

      v22 += 9;
      ++v20;
    }

    while (v20 != 354);
    if (v21)
    {
      goto LABEL_48;
    }

LABEL_57:
    v36 = &nchwWinogradTable;
LABEL_58:
    v38 = &v36[9 * v19 + 3 + v9];
    v39 = &v36[9 * v19 + 5 + v9];
    v40 = &v36[9 * v19 + 7 + v9];
    if (v11 != 36)
    {
      v40 = v39;
    }

    if (v11 >= 33)
    {
      v38 = v40;
    }

    if (v15 > 1)
    {
      v41 = 64 - __clz(v15 - 1);
    }

    else
    {
      v41 = (v15 == 0) << 63;
    }

    v42 = *v38;
    if (v41 >= ((v42 >> 3) & 7))
    {
      v41 = (v42 >> 3) & 7;
    }

    v43 = (8 * v42) & 0x18000;
    if ((v41 & 0x7F) == 0)
    {
      v43 = 0;
    }

    v86 = v11 <= 32;
    v44 = 0x300000000;
    if (!v86)
    {
      v44 = 0x280000000;
    }

    if ((v42 & 0x10000000) != 0)
    {
      v44 = 0x280000000;
    }

    v45 = vshlq_u32(vdupq_n_s32(v42), xmmword_239B19BC0);
    v46.i64[0] = v45.i32[0] & 0xFFFFFF01;
    v46.i64[1] = v45.i32[1] & 0xFFFFFF01;
    v47 = v46;
    v46.i64[0] = v45.i32[2] & 0xFFFFFF01;
    v46.i64[1] = v45.i32[3] & 0xFFFFFF01;
    v48 = vorrq_s8(vshlq_u64(v47, xmmword_239B19BE0), vshlq_u64(v46, xmmword_239B19BD0));
    return v42 & 0xFC7 | (v42 >> 14 << 18) & 0x819FFFC7 | ((WORD1(v42) & 3) << 21) & 0x81FFFFC7 | (((v42 >> 18) & 0x3F) << 25) | (8 * (v41 & 7)) | v43 | v44 | *&vorr_s8(*v48.i8, *&vextq_s8(v48, v48, 8uLL)) | (((v42 >> 27) & 1) << 42) | 0x100000000000;
  }

  v28 = 0;
  v19 = 0;
  v29 = -1;
  v30 = &dword_239B1CDC0;
  do
  {
    v31 = v13 - *(v30 - 2);
    if (v31 < 0)
    {
      LODWORD(v31) = *(v30 - 2) - v13;
    }

    v32 = v14 - *(v30 - 1);
    if (v32 < 0)
    {
      LODWORD(v32) = *(v30 - 1) - v14;
    }

    v33 = v32 + v31;
    v34 = v15 - *v30;
    if (v34 < 0)
    {
      LODWORD(v34) = *v30 - v15;
    }

    v35 = (v33 + v34);
    if (v29 > v35)
    {
      v19 = v28;
      v29 = v35;
      if (!v35)
      {
        v19 = v28;
LABEL_51:
        v36 = &nchwDirectTable;
        goto LABEL_58;
      }
    }

    v30 += 9;
    ++v28;
  }

  while (v28 != 240);
  if (!v29)
  {
    goto LABEL_51;
  }

  if ((v18 & (a1[15] == 3)) != 1)
  {
    if (v14 > 1)
    {
      if (v12 > 0x1E847F)
      {
        v37 = 64 - __clz(v14 - 1);
        goto LABEL_84;
      }

      if (v12 > 0x7A11F)
      {
        v63 = 64 - __clz(v14 - 1);
        goto LABEL_106;
      }
    }

    else
    {
      if (v12 > 0x1E847F)
      {
        v37 = (v14 == 0) << 63;
LABEL_84:
        v59 = 6;
        if (v37 < 6)
        {
          v59 = v37;
        }

        v60 = 2;
        if (v59 > 2)
        {
          v60 = v59;
        }

        if (v15 > 1)
        {
          v61 = 64 - __clz(v15 - 1);
        }

        else
        {
          v61 = (v15 == 0) << 63;
        }

        if (v61 >= 4)
        {
          v61 = 4;
        }

        LOBYTE(v68) = 2;
        if (v61 > 2)
        {
          LOBYTE(v68) = v61;
        }

        if (v11 > 32)
        {
          v69 = 0;
          v70 = 0;
          v76 = v37 > 3;
          v86 = v37 < 4;
          v71 = v37 < 4;
          if (v86)
          {
            v72 = 805306368;
          }

          else
          {
            v72 = 0x20000000;
          }

          v73 = v76 << 25;
          v74 = 6;
        }

        else
        {
          v69 = 0;
          v70 = 0;
          v86 = v37 <= 2;
          v71 = v37 > 2;
          if (v86)
          {
            v72 = 0x40000000;
          }

          else
          {
            v72 = 0x20000000;
          }

          v73 = v71 << 26;
          v74 = 6;
        }

        goto LABEL_261;
      }

      if (v12 > 0x7A11F)
      {
        v63 = (v14 == 0) << 63;
LABEL_106:
        v66 = 6;
        if (v63 < 6)
        {
          v66 = v63;
        }

        v60 = 2;
        if (v66 > 2)
        {
          v60 = v66;
        }

        if (v11 > 32)
        {
          if (v15 > 1)
          {
            v77 = 64 - __clz(v15 - 1);
          }

          else
          {
            v77 = (v15 == 0) << 63;
          }

          if (v77 >= 4)
          {
            v77 = 4;
          }

          LOBYTE(v68) = 2;
          if (v77 > 2)
          {
            LOBYTE(v68) = v77;
          }

          v70 = v63 > 3;
          v69 = v63 < 4;
          if (v63 >= 4)
          {
            v72 = 0x20000000;
          }

          else
          {
            v72 = 805306368;
          }

          v73 = v70 << 25;
          if (v63 >= 4)
          {
            v74 = 5;
          }

          else
          {
            v74 = 6;
          }

          v71 = v63 < 4;
          goto LABEL_261;
        }

        if (v15 > 1)
        {
          v67 = 64 - __clz(v15 - 1);
        }

        else
        {
          v67 = (v15 == 0) << 63;
        }

        v70 = 0;
        v69 = v63 < 3;
        v79 = 3;
        if (v63 >= 3)
        {
          v79 = 4;
        }

        if (v67 >= v79)
        {
          v67 = v79;
        }

        LOBYTE(v68) = 2;
        if (v67 > 2)
        {
          LOBYTE(v68) = v67;
        }

        v74 = 6;
        v71 = 1;
LABEL_145:
        v73 = 0x4000000;
        v72 = 0x20000000;
LABEL_261:
        v95 = v11 < 33;
        v96 = 805306368;
        v97 = 0x40000000;
        if (!v95)
        {
          v97 = 805306368;
          v96 = 0x20000000;
        }

        v98 = 100663296;
        v99 = 0x8000000;
        if (!v95)
        {
          v99 = 100663296;
          v98 = 0x4000000;
        }

        v100 = 0x14280000000;
        if (v95)
        {
          v100 = 0x14300000000;
        }

        if (v60 == 2)
        {
          v72 = v97;
          v73 = 0;
        }

        if (v70 == 1)
        {
          v96 = v97;
        }

        if (v60 == 3)
        {
          v101 = (v70 == 0) << 25;
        }

        else
        {
          v96 = v72;
          v101 = v73;
        }

        if (v74 == 2)
        {
          v96 = 0;
          v101 = v99;
        }

        LODWORD(v102) = v71 << 21;
        if (v74 == 2)
        {
          v102 = 0;
        }

        else
        {
          v102 = v102;
        }

        LODWORD(v103) = v70 << 18;
        if (v60 == 2)
        {
          v103 = 0;
        }

        else
        {
          v103 = v103;
        }

        v104 = (v71 == 0) << 28;
        if (v71 == 1)
        {
          v105 = v99;
        }

        else
        {
          v105 = v98;
        }

        v106 = v74 == 3;
        if (v74 == 3)
        {
          v96 = v104;
        }

        v107 = 8 * (v68 & 7);
        v108 = (v74 & 7) << 6;
        v109 = (v69 << 15);
        if (v106)
        {
          v101 = v105;
        }

        v130 = v100 | v109 | v60 | v107 | v108 | v102 | v103 | v101 & 0xE000000 | v96 & 0x70000000;
        return AdjustKernelParameters(v14, a1[19], &v130);
      }
    }

    if (v12 >> 5 >= 0x177)
    {
      if (v15 > 1)
      {
        v75 = 64 - __clz(v15 - 1);
      }

      else
      {
        v75 = (v15 == 0) << 63;
      }

      v68 = 4;
      if (v11 < 33)
      {
        v68 = 5;
      }

      if (v75 < v68)
      {
        v68 = v75;
      }

      if (v68 <= 2)
      {
        LOBYTE(v68) = 2;
      }

      if (v14 > 1)
      {
        v80 = 64 - __clz(v14 - 1);
      }

      else
      {
        v80 = (v14 == 0) << 63;
      }

      if (v75 < 3)
      {
        v85 = 5;
      }

      else
      {
        v85 = 6;
      }

      if (v80 < v85)
      {
        v85 = v80;
      }

      v60 = 2;
      if (v85 > 2)
      {
        v60 = v85;
      }

      if (v85 == 5)
      {
        v74 = 6;
      }

      else
      {
        v74 = 5;
      }

      if (v11 <= 32)
      {
        v70 = 0;
        v69 = v75 > 2;
        v73 = 0x4000000;
        v72 = 0x20000000;
        v71 = v69;
        goto LABEL_261;
      }

      v69 = 0;
      v71 = 0;
LABEL_201:
      v70 = 1;
      v73 = 0x2000000;
      v72 = 0x20000000;
      goto LABEL_261;
    }

    if (v12 >> 6 >= 0x7D)
    {
      if (v14 > 1)
      {
        v78 = 64 - __clz(v14 - 1);
      }

      else
      {
        v78 = (v14 == 0) << 63;
      }

      v88 = 6;
      if (v78 < 6)
      {
        v88 = v78;
      }

      v60 = 2;
      if (v88 > 2)
      {
        v60 = v88;
      }

      if (v15 > 1)
      {
        v89 = 64 - __clz(v15 - 1);
      }

      else
      {
        v89 = (v15 == 0) << 63;
      }

      v90 = 3;
      if (v11 < 33)
      {
        v90 = 4;
      }

      if (v89 >= v90)
      {
        v89 = v90;
      }

      LOBYTE(v68) = 2;
      if (v89 > 2)
      {
        LOBYTE(v68) = v89;
      }

      v74 = 5;
      if (v11 < 33)
      {
        v69 = 0;
        v70 = 0;
        v71 = 1;
LABEL_256:
        v73 = 0x4000000;
LABEL_260:
        v72 = 0x20000000;
        goto LABEL_261;
      }

      v69 = 0;
      v71 = 0;
      if (v78 == 5)
      {
        v74 = 6;
      }

      else
      {
        v74 = 5;
      }

      goto LABEL_259;
    }

    if (v12 >= 0xBB8)
    {
      if (v14 > 1)
      {
        v84 = 64 - __clz(v14 - 1);
      }

      else
      {
        v84 = (v14 == 0) << 63;
      }

      v91 = 5;
      if ((v14 & 0x3F) == 0)
      {
        v91 = 6;
      }

      if (v84 >= v91)
      {
        v92 = v91;
      }

      else
      {
        v92 = v84;
      }

      if (v92 <= 2)
      {
        v60 = 2;
      }

      else
      {
        v60 = v92;
      }

      if (v15 > 1)
      {
        v93 = 64 - __clz(v15 - 1);
      }

      else
      {
        v93 = (v15 == 0) << 63;
      }

      if (v93 >= 4)
      {
        v93 = 4;
      }

      LOBYTE(v68) = 2;
      if (v93 > 2)
      {
        LOBYTE(v68) = v93;
      }

      v69 = v14 < 0x81;
      if (v14 < 0x81)
      {
        v74 = 4;
      }

      else
      {
        v74 = 5;
      }

      if (v11 < 33)
      {
        v71 = 0;
        v70 = 1;
        goto LABEL_256;
      }

      v71 = 0;
      if (v92 == 5)
      {
        v74 = 5;
      }

LABEL_259:
      v70 = 1;
      v73 = 0x2000000;
      goto LABEL_260;
    }

    if (v12 >= 0x3E8)
    {
      if (v11 > 32)
      {
        if (v14 > 1)
        {
          v110 = 64 - __clz(v14 - 1);
        }

        else
        {
          v110 = (v14 == 0) << 63;
        }

        v74 = 5;
        if ((v14 & 0x3F) != 0)
        {
          v115 = 5;
        }

        else
        {
          v115 = 6;
        }

        if (v110 >= v115)
        {
          v110 = v115;
        }

        v60 = 2;
        if (v110 > 2)
        {
          v60 = v110;
        }

        if (v14 <= 0x1FF)
        {
          if (v14 <= 0x5F)
          {
            if (v14 < 0x40)
            {
              v71 = 0;
              v116 = 4;
              if (v14 <= 0x2F)
              {
                v74 = 3;
              }

              else
              {
                v116 = 5;
                v74 = 4;
              }

              v69 = 1;
              v73 = 0x2000000;
              v72 = 0x20000000;
              v70 = 1;
            }

            else
            {
              v71 = 0;
              v69 = v15 > 0x30;
              v74 = 3;
              v70 = 1;
              v73 = 0x4000000;
              v72 = 0x10000000;
              v116 = 4;
            }
          }

          else
          {
            v69 = 0;
            v70 = 0;
            v116 = 5;
            v71 = 1;
            v73 = 0x2000000;
            v72 = 0x20000000;
            v74 = 5;
          }
        }

        else
        {
          v69 = 0;
          v71 = 0;
          v70 = 1;
          v73 = 0x2000000;
          v72 = 0x20000000;
          v116 = 3;
        }

        if (v15 > 1)
        {
          v129 = 64 - __clz(v15 - 1);
        }

        else
        {
          v129 = (v15 == 0) << 63;
        }

        if (v129 >= v116)
        {
          v129 = v116;
        }

        LOBYTE(v68) = 2;
        if (v129 > 2)
        {
          LOBYTE(v68) = v129;
        }

        goto LABEL_261;
      }

      if (v14 <= 0x1FF)
      {
        if (v14 > 1)
        {
          v112 = 64 - __clz(v14 - 1);
        }

        else
        {
          v112 = (v14 == 0) << 63;
        }

        if (v112 >= 5)
        {
          v112 = 5;
        }

        v60 = 2;
        if (v112 > 2)
        {
          v60 = v112;
        }
      }

      else
      {
        v60 = 6;
      }

      if (v15 > 1)
      {
        v119 = 64 - __clz(v15 - 1);
      }

      else
      {
        v119 = (v15 == 0) << 63;
      }

      v74 = 5;
      if (v119 >= 5)
      {
        v119 = 5;
      }

      LOBYTE(v68) = 2;
      if (v119 > 2)
      {
        LOBYTE(v68) = v119;
      }

      if (v14 > 0x1FF)
      {
        v69 = 0;
        v71 = 0;
        v70 = 1;
        v73 = 0x4000000;
        v72 = 0x20000000;
        goto LABEL_261;
      }

      v71 = 0;
      v70 = v14 > 0x20;
      if (v14 <= 0x20)
      {
        v74 = 3;
      }

      else
      {
        v74 = 4;
      }

      v69 = 1;
      goto LABEL_145;
    }

    if (v12 >= 0x2BC)
    {
      if (v14 > 1)
      {
        v94 = 64 - __clz(v14 - 1);
      }

      else
      {
        v94 = (v14 == 0) << 63;
      }

      v113 = 5;
      if ((v14 & 0x3F) == 0)
      {
        v113 = 6;
      }

      if (v94 >= v113)
      {
        v94 = v113;
      }

      v60 = 2;
      if (v94 > 2)
      {
        v60 = v94;
      }

      if (v11 <= 32)
      {
        if (v15 > 1)
        {
          v114 = 64 - __clz(v15 - 1);
        }

        else
        {
          v114 = (v15 == 0) << 63;
        }

        v71 = 0;
        if (v114 >= 5)
        {
          v114 = 5;
        }

        LOBYTE(v68) = 2;
        if (v114 > 2)
        {
          LOBYTE(v68) = v114;
        }

        if (v14 <= 0xFF)
        {
          v74 = 4;
        }

        else
        {
          v74 = 5;
        }

        v69 = 1;
        v73 = 0x4000000;
        v72 = 0x20000000;
        v70 = 1;
        goto LABEL_261;
      }

      if (v14 >= 0x200)
      {
        if (v15 > 1)
        {
          v68 = 64 - __clz(v15 - 1);
        }

        else
        {
          v68 = (v15 == 0) << 63;
        }

        if (v68 >= 4)
        {
          v68 = 4;
        }

        if (v68 <= 2)
        {
          LOBYTE(v68) = 2;
        }
      }

      else
      {
        if (v15 > 1)
        {
          v68 = 64 - __clz(v15 - 1);
        }

        else
        {
          v68 = (v15 == 0) << 63;
        }

        if (v68 >= 5)
        {
          v68 = 5;
        }

        if (v68 <= 2)
        {
          LOBYTE(v68) = 2;
        }

        if (v14 < 0x100)
        {
          v74 = 4;
LABEL_415:
          v71 = 0;
          v69 = v14 < 0x200 || v15 < 0x100;
          goto LABEL_201;
        }
      }

      if (v15 > 1)
      {
        v127 = 64 - __clz(v15 - 1);
      }

      else
      {
        v127 = (v15 == 0) << 63;
      }

      if (v127 >= 5)
      {
        v127 = 5;
      }

      if (v127 <= 2)
      {
        v74 = 2;
      }

      else
      {
        v74 = v127;
      }

      goto LABEL_415;
    }

    if (v12 >= 0x1F4)
    {
      if (v11 > 32)
      {
        if (v14 > 1)
        {
          v118 = 64 - __clz(v14 - 1);
        }

        else
        {
          v118 = (v14 == 0) << 63;
        }

        if (v118 >= 5)
        {
          v118 = 5;
        }

        v60 = 2;
        if (v118 > 2)
        {
          v60 = v118;
        }

        if (v15 > 1)
        {
          v125 = 64 - __clz(v15 - 1);
        }

        else
        {
          v125 = (v15 == 0) << 63;
        }

        v71 = 0;
        v74 = 5;
        if (v125 >= 5)
        {
          v125 = 5;
        }

        LOBYTE(v68) = 2;
        if (v125 > 2)
        {
          LOBYTE(v68) = v125;
        }

        v69 = 1;
        v73 = 0x2000000;
      }

      else
      {
        if (v14 > 1)
        {
          v111 = 64 - __clz(v14 - 1);
        }

        else
        {
          v111 = (v14 == 0) << 63;
        }

        if (v111 >= 6)
        {
          v111 = 6;
        }

        v60 = 2;
        if (v111 > 2)
        {
          v60 = v111;
        }

        if (v15 > 1)
        {
          v121 = 64 - __clz(v15 - 1);
        }

        else
        {
          v121 = (v15 == 0) << 63;
        }

        v71 = 0;
        v74 = 5;
        if (v121 >= 5)
        {
          v121 = 5;
        }

        LOBYTE(v68) = 2;
        if (v121 > 2)
        {
          LOBYTE(v68) = v121;
        }

        v69 = 1;
        v73 = 0x4000000;
      }

      v72 = 0x20000000;
      v70 = 1;
      goto LABEL_261;
    }

    if (v12 < 0x64)
    {
      if (v14 > 1)
      {
        v120 = 64 - __clz(v14 - 1);
      }

      else
      {
        v120 = (v14 == 0) << 63;
      }

      if (v120 >= 6)
      {
        v120 = 6;
      }

      v60 = 2;
      if (v120 > 2)
      {
        v60 = v120;
      }

      if (v15 > 1)
      {
        v126 = 64 - __clz(v15 - 1);
      }

      else
      {
        v126 = (v15 == 0) << 63;
      }

      if (v126 >= 6)
      {
        v126 = 6;
      }

      LOBYTE(v68) = 2;
      if (v126 > 2)
      {
        LOBYTE(v68) = v126;
      }

      v74 = 3;
      if (v11 <= 32)
      {
        v71 = 0;
        if (v14 <= 0x1FF)
        {
          v74 = 3;
        }

        else
        {
          v74 = 4;
        }

        v69 = 1;
        v73 = 100663296;
        goto LABEL_467;
      }

      v71 = 0;
    }

    else
    {
      if (v14 > 1)
      {
        v117 = 64 - __clz(v14 - 1);
      }

      else
      {
        v117 = (v14 == 0) << 63;
      }

      if ((v14 & 0x3F) != 0)
      {
        v122 = 5;
      }

      else
      {
        v122 = 6;
      }

      if ((v14 - 513) >= 0xFFFFFEFF)
      {
        v123 = v122;
      }

      else
      {
        v123 = 5;
      }

      if (v117 >= v123)
      {
        v117 = v123;
      }

      v60 = 2;
      if (v117 > 2)
      {
        v60 = v117;
      }

      if (v15 > 1)
      {
        v124 = 64 - __clz(v15 - 1);
      }

      else
      {
        v124 = (v15 == 0) << 63;
      }

      if (v124 >= 5)
      {
        v124 = 5;
      }

      LOBYTE(v68) = 2;
      if (v124 > 2)
      {
        LOBYTE(v68) = v124;
      }

      if (v11 <= 32)
      {
        if (v14 <= 0x200)
        {
          v71 = 0;
          v70 = 0;
          if (v14 == 256)
          {
            v74 = 3;
          }

          else
          {
            v74 = 4;
          }
        }

        else
        {
          v71 = 0;
          v70 = 0;
          v74 = 5;
        }

        v69 = 1;
        goto LABEL_256;
      }

      v71 = 0;
      v74 = 4;
    }

    v69 = 1;
    v73 = 0x4000000;
LABEL_467:
    v72 = 0x10000000;
    v70 = 1;
    goto LABEL_261;
  }

LABEL_48:
  if (a1[9] >= 2u)
  {
    if (v12 < 0x65)
    {
      return 0x80294240115;
    }

    if (v14 <= 0x40)
    {
      v62 = 0x802A2240194;
    }

    else
    {
      v62 = 0x802A2240155;
    }

    if (v15 >= 9)
    {
      return 0x802A228015DLL;
    }

    else
    {
      return v62;
    }
  }

  v50 = v14 < 0x11 || v15 < 9;
  v51 = v12 - 784;
  if (v14 < 2)
  {
    v52 = 0;
    v53 = 805306368;
    v54 = 1024;
    v55 = 3;
    v56 = 0x40000;
    v57 = 0x200000;
    v58 = 256;
    goto LABEL_163;
  }

  v64 = __clz(v14 - 1);
  v65 = 64 - v64;
  v55 = 3;
  if (64 - v64 > 3)
  {
    v55 = 64 - v64;
  }

  if (v55 >= 5)
  {
    v55 = 5;
  }

  if (v14 < 9)
  {
    v52 = 0;
    v53 = 805306368;
    v54 = 1024;
    goto LABEL_162;
  }

  if (v64 == 60)
  {
    v54 = 512;
    v65 = 4;
LABEL_158:
    v81 = v65 == 4;
    v52 = 0x4000000;
    if (v65 == 4)
    {
      v52 = 0x2000000;
    }

    v53 = 0x10000000;
    if (v81)
    {
      v53 = 0x20000000;
    }

LABEL_162:
    v58 = 256;
    v56 = 0x40000;
    v57 = 0x200000;
  }

  else
  {
    if (v12 <= 0xFFF && v15 < 0x80)
    {
      v54 = 0;
      goto LABEL_158;
    }

    if (v15 >= 0x100)
    {
      v54 = 0;
      v53 = 0x10000000;
      v52 = 0x4000000;
      v58 = 320;
      v56 = 0x40000;
      v57 = 0x400000;
    }

    else
    {
      v54 = 0;
      v86 = v14 > 0x7F;
      v87 = v14 > 0x7F;
      v56 = 0x80000;
      if (!v86)
      {
        v56 = 786432;
      }

      v57 = v87 << 21;
      v52 = v87 << 25;
      v53 = 805306368;
      if (v86)
      {
        v53 = 0x20000000;
      }

      v58 = 320;
    }
  }

LABEL_163:
  if (v51 < 0xCF1 && v15 < 0x100)
  {
    v50 = 1;
  }

  if (v50)
  {
    v83 = 0x80280000010;
  }

  else
  {
    v83 = 0x80280000018;
  }

  return v57 | v56 | v55 | v58 | v54 | v52 | v83 | v53;
}

unint64_t GetVegaKernelParametersNHWCCommon(unsigned int *a1)
{
  v3 = a1[4];
  v5 = a1[6];
  v4 = a1[7];
  v6 = a1[9];
  v7 = 64 - __clz(v5 - 1);
  if (v5 <= 1)
  {
    v7 = (v5 == 0) << 63;
  }

  if (v4 > 1)
  {
    v9 = 64 - __clz(v4 - 1);
    v8 = 6;
    if (v9 < 6)
    {
      v8 = v9;
    }

    if (v6 == 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v6 == 1)
    {
      v8 = 0;
LABEL_9:
      if (v3 > 0xA)
      {
        if (v3 > 0x32)
        {
          v10 = 0;
          v11 = 0;
          if (v8 == 5)
          {
            LOBYTE(v13) = 6;
          }

          else
          {
            LOBYTE(v13) = 5;
          }

          v12 = v13 - 4;
          if (v5 < 5)
          {
            LOBYTE(v13) = 4;
          }

          else
          {
            v12 = 0;
          }

          v14 = 0x10000000000;
        }

        else
        {
          v10 = 0;
          v11 = 0;
          if (v8 >= 5)
          {
            v8 = 5;
          }

          if (v4 > 0x1FF)
          {
            v8 = 6;
          }

          v20 = a1[14] == 1;
          v21 = a1[15] == 1;
          v22 = !v20 || !v21;
          if (v20 && v21)
          {
            v12 = 2;
          }

          else
          {
            v12 = 0;
          }

          if (v22)
          {
            LOBYTE(v13) = 5;
          }

          else
          {
            LOBYTE(v13) = 3;
          }

          v14 = 0x10000000000;
        }
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        if (v8 >= 5)
        {
          v8 = 5;
        }

        if (v4 > 0x4B3)
        {
          v8 = 6;
        }

        LOBYTE(v13) = 4;
        v14 = 0x10000000000;
      }

      goto LABEL_66;
    }

    v9 = (v4 == 0) << 63;
  }

  v15 = 6;
  if (v9 < 6)
  {
    v15 = v9;
  }

  do
  {
    v16 = v15 - 1;
    if (v15 < 5)
    {
      break;
    }
  }

  while (v4 & ~(-1 << v15--));
  v18 = a1[5] * v3;
  v8 = v16 + 1;
  if (v18 > 0x64)
  {
    if (v18 > 0x1C2)
    {
      v13 = 5;
      if (v16 == 4)
      {
        v13 = 6;
      }

      if (v3 > 1)
      {
        v24 = 64 - __clz(v3 - 1);
      }

      else
      {
        v24 = (v3 == 0) << 63;
      }

      v19 = 0;
      v12 = 0;
      if (v13 >= v24)
      {
        LOBYTE(v13) = v24;
      }

      goto LABEL_56;
    }

    goto LABEL_36;
  }

  if (v3)
  {
LABEL_36:
    if (v6 > 1)
    {
      v23 = 64 - __clz(v6 - 1);
    }

    else
    {
      v23 = 0;
    }

    v12 = 0;
    LOBYTE(v13) = 0;
    if (v23 >= 5)
    {
      v19 = 5;
    }

    else
    {
      v19 = v23;
    }

    goto LABEL_56;
  }

  v12 = 2;
  v19 = 1;
  LOBYTE(v13) = 2;
LABEL_56:
  v25 = a1[10] == 1 && a1[11] == 1;
  v10 = 0x8000000000;
  if (v25)
  {
    v10 = 0;
  }

  if (v25)
  {
    v14 = 0x10000000000;
  }

  else
  {
    v14 = 0;
  }

  v11 = (v19 << 12);
LABEL_66:
  v38[1] = v1;
  v38[2] = v2;
  v26 = v7 < 4;
  if (v8 == 6)
  {
    v26 = 1;
  }

  v27 = 0x2000000;
  if (v8 == 6)
  {
    v27 = 100663296;
  }

  v28 = 805306368;
  if (v8 == 6)
  {
    v28 = 0x10000000;
  }

  v29 = (v8 == 6) << 21;
  if (v7 < 4)
  {
    v29 = 0;
  }

  v22 = !v26;
  v30 = 0x40000;
  if (!v22)
  {
    v30 = 0;
  }

  v31 = 5;
  if (v7 < 5)
  {
    v31 = v7;
  }

  if (v31 <= 2)
  {
    v31 = 2;
  }

  v32 = v8 & 7;
  v33 = (v13 & 7) << 6;
  v34 = (v12 & 7) << 9;
  v35 = v7 <= 3;
  v36 = 0x1700000000;
  if (!v35)
  {
    v36 = 0x1700008000;
  }

  v38[0] = v36 | (8 * v31) | v10 | v14 | v11 | v34 | v32 | v33 | v27 | v28 | v30 | v29;
  return AdjustKernelParameters(v4, a1[19], v38);
}

unint64_t GetNaviKernelParametersNHWCCommon(unsigned int *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[9];
  v7 = a1[6];
  v6 = a1[7];
  v8 = 64 - __clz(v7 - 1);
  if (v7 <= 1)
  {
    v9 = (v7 == 0) << 63;
  }

  else
  {
    v9 = v8;
  }

  v10 = 64 - __clz(v6 - 1);
  if (v6 <= 1)
  {
    v10 = (v6 == 0) << 63;
  }

  v11 = 5;
  if ((v5 & (v5 - 1)) != 0)
  {
    v14 = 0;
  }

  else
  {
    v12 = 64 - __clz(v5 - 1);
    v13 = 0;
    if (v5 > 1)
    {
      v13 = v12;
    }

    if (v13 >= 5)
    {
      v14 = 5;
    }

    else
    {
      v14 = v13;
    }

    v11 = 5 - v14;
    if (v13)
    {
      v15 = v11 >> 1;
      goto LABEL_16;
    }
  }

  v15 = 0;
LABEL_16:
  v31[1] = v1;
  v31[2] = v2;
  v16 = 64 - __clz(v4 - 1);
  if (v4 <= 1)
  {
    v17 = (v4 == 0) << 63;
  }

  else
  {
    v17 = v16;
  }

  v18 = 64 - __clz(v3 - 1);
  if (v3 <= 1)
  {
    v19 = (v3 == 0) << 63;
  }

  else
  {
    v19 = v18;
  }

  if (v17 >= v15)
  {
    v17 = v15;
  }

  v20 = v11 - v15;
  if (v10 >= 6)
  {
    LODWORD(v10) = 6;
  }

  if (v19 >= v20)
  {
    LOBYTE(v19) = v20;
  }

  v21 = v10 < 6;
  if (v14 >= 2)
  {
    v22 = 2;
  }

  else
  {
    v22 = v14;
  }

  v23 = v9 < 5;
  if (v9 >= 5)
  {
    v9 = 5;
  }

  if (v9 <= 2)
  {
    v9 = 2;
  }

  v24 = !v21 || !v23;
  if (v21 && v23)
  {
    v25 = v22;
  }

  else
  {
    v25 = v14;
  }

  v26 = v17 << 9;
  v27 = (v19 & 7) << 6;
  if (!v24)
  {
    v27 = 128;
    v26 = 1024;
  }

  v28 = (v25 & 7) << 12;
  if (v5 == 1)
  {
    v29 = 0x16A2008000;
  }

  else
  {
    v29 = 0x16A2040000;
  }

  v31[0] = v29 & 0xFFFFFFFFFFFFFFF8 | (8 * v9) | v10 & 7 | v26 | v27 | v28;
  return AdjustKernelParameters(v6, a1[19], v31);
}

unint64_t AdjustKernelParameters(unsigned int a1, int a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = (*a3 >> 12) & 7;
  v5 = (*a3 >> 6) & 7;
  v6 = (*a3 >> 9) & 7;
  v7 = *a3 & 7;
  v8 = (*a3 >> 28) & 7;
  v9 = (*a3 >> 25) & 7;
  v10 = (*a3 >> 36) & 3;
  v11 = (*a3 >> 34) & 3;
  v12 = (*a3 >> 31) & 7;
  v13 = v4 + v5 + v6;
  if (v7 >= ((*a3 >> 18) & 7) + v9 + v10 + 2)
  {
    v14 = (*a3 >> 18) & 7;
  }

  else
  {
    v14 = 0;
  }

  if (v7 >= v14 + v9 + v10 + 2)
  {
    v15 = (*a3 >> 36) & 3;
  }

  else
  {
    v15 = 0;
  }

  if (v7 >= v15 + 2 + v14 + v9)
  {
    v16 = (*a3 >> 25) & 7;
  }

  else
  {
    v16 = 0;
  }

  if (v13 >= ((*a3 >> 21) & 7) + v8 + v11 + 2)
  {
    v17 = (*a3 >> 21) & 7;
  }

  else
  {
    v17 = 0;
  }

  if (v13 >= v17 + v8 + v11 + 2)
  {
    v18 = (*a3 >> 34) & 3;
  }

  else
  {
    v18 = 0;
  }

  if (v13 < v17 + v8 + v18 + 2)
  {
    v8 = 0;
  }

  if (v8 + v16 + 2 == v12)
  {
    v19 = (v3 >> 15) & 7;
  }

  else
  {
    v4 = 0;
    v20 = v12 - 2;
    v21 = 64 - __clz(a1 - 1);
    if (a1 <= 1)
    {
      LODWORD(v21) = 0;
    }

    v22 = (v21 - v14 - v15 - 2) & ~((v21 - v14 - v15 - 2) >> 31);
    if (v22 >= v20)
    {
      v23 = v12 - 2;
    }

    else
    {
      v23 = v22;
    }

    v24 = v15 + 2 + v14 + v23;
    if (v24 <= 6)
    {
      v15 = v15;
    }

    else
    {
      v15 = 0;
    }

    if (v24 > 6)
    {
      v14 = 0;
      v24 = v23 + 2;
    }

    v25 = v20 - v23;
    v26 = v24 < 4;
    if (v24 < 4)
    {
      LODWORD(v18) = 0;
      v17 = 1;
    }

    v27 = v25 + 2;
    v28 = v17 + v25 + 2 + v18;
    if (v28 <= 6)
    {
      v18 = v18;
    }

    else
    {
      v18 = 0;
    }

    if (v28 > 6)
    {
      v17 = 0;
    }

    else
    {
      v27 = v28;
    }

    v29 = v27 >> 1;
    v30 = v27 - (v27 >> 1);
    if (v30 != v29)
    {
      v26 = 0;
    }

    v31 = v29 - v26;
    v32 = v30 + v26;
    v19 = a2 == 1;
    LODWORD(v7) = v24 & 7;
    v5 = v32 & 7;
    v6 = v31 & 7;
    v16 = v23 & 7;
    v8 = v25 & 7;
  }

  result = (v18 << 34) | (v15 << 36) | v3 & 0xFFFFFFC381000038 | (v19 << 15) | (v16 << 25) | (v8 << 28) | (v14 << 18) | v7 | (v17 << 21) | (v6 << 9) | (v5 << 6) | (v4 << 12);
  *a3 = result;
  return result;
}

uint64_t EncodeQRDecomposition(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v9 = (v8 + *MEMORY[0x277CD7410]);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[3];
  v53 = v8;
  v13 = *(v8 + *MEMORY[0x277CD73D8]);
  v55 = v9[2];
  v56 = v12;
  v54[0] = v10;
  v54[1] = v11;
  v48 = *(v54 + (v13 & 0xF));
  v57[2] = v55;
  v57[3] = v12;
  v57[0] = v10;
  v57[1] = v11;
  v47 = *(v57 + (BYTE1(v13) & 0xF));
  v14 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v52 = *(v14 + *MEMORY[0x277CD7400]) >> 2;
  [a1 computeR];
  [a1 computeQ];
  v15 = MEMORY[0x277CD7360];
  v16 = MEMORY[0x277CD7368];
  *&v17 = -1;
  *(&v17 + 1) = -1;
  v65 = v17;
  v66 = v17;
  *&v63[16] = 0xFFFFFFFFFFFFFFFFLL;
  v64 = v17;
  *v63 = v17;
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  *&v18 = -1;
  *(&v18 + 1) = -1;
  v65 = v18;
  v66 = v18;
  *&v63[16] = -1;
  v64 = v18;
  *v63 = v18;
  *&v63[24] = 1;
  MPSLibrary::CreateUberShaderKey();
  v49 = MPSLibrary::GetPipelineStateForMPSKey();
  *&v19 = -1;
  *(&v19 + 1) = -1;
  v65 = v19;
  v66 = v19;
  *&v63[16] = -1;
  v64 = v19;
  *v63 = v19;
  *&v63[24] = 2;
  MPSLibrary::CreateUberShaderKey();
  v46 = MPSLibrary::GetPipelineStateForMPSKey();
  *&v20 = -1;
  *(&v20 + 1) = -1;
  v65 = v20;
  v66 = v20;
  *&v63[16] = -1;
  v64 = v20;
  *v63 = v20;
  *&v63[24] = 3;
  MPSLibrary::CreateUberShaderKey();
  v21 = MPSLibrary::GetPipelineStateForMPSKey();
  v22 = *&a1[*v15];
  v23 = *&a1[*v16];
  *&v24 = -1;
  *(&v24 + 1) = -1;
  v65 = v24;
  v66 = v24;
  *&v63[16] = -1;
  v64 = v24;
  *v63 = v24;
  *&v63[24] = 4;
  v44 = v22;
  v45 = v23;
  MPSLibrary::CreateUberShaderKey();
  v25 = MPSLibrary::GetPipelineStateForMPSKey();
  MEMORY[0x23EE7C450](v58, a3, 0);
  v26 = *(a4 + 208);
  if (v48 > v47)
  {
    v51 = MPSGetTemporaryBufferFromCommandBufferCache();
    v27 = [v26 buffer];
    [a2 setComputePipelineState:v21];
    [a2 setBuffer:v27 offset:0 atIndex:0];
    objc_msgSend_setBytes_length_atIndex_(a2);
    DWORD1(v64) = [v27 length];
    *v68 = (DWORD1(v64) + 63) >> 6;
    *&v68[8] = vdupq_n_s64(1uLL);
    *v67 = xmmword_239B1EF80;
    *&v67[16] = 1;
    [a2 dispatchThreadgroups:v68 threadsPerThreadgroup:v67];
  }

  else
  {
    v51 = [*(a4 + 208) buffer];
  }

  *&v63[8] = v52;
  *&v63[16] = v48;
  [a2 setComputePipelineState:v25];
  [a2 setBuffer:v51 offset:0 atIndex:0];
  objc_msgSend_setBytes_length_atIndex_(a2);
  v28 = vshrq_n_u64(vaddq_s64(*&v63[8], vdupq_n_s64(0x1FuLL)), 5uLL);
  *v68 = vextq_s8(v28, v28, 8uLL);
  *&v68[16] = 1;
  *v67 = vdupq_n_s64(0x20uLL);
  *&v67[16] = 1;
  [a2 dispatchThreadgroups:v68 threadsPerThreadgroup:v67];
  v29 = MPSGetTemporaryBufferFromCommandBufferCache();
  [a2 setComputePipelineState:v21];
  [a2 setBuffer:v29 offset:0 atIndex:0];
  objc_msgSend_setBytes_length_atIndex_(a2);
  DWORD1(v64) = [v29 length];
  *v68 = (DWORD1(v64) + 63) >> 6;
  *&v68[8] = vdupq_n_s64(1uLL);
  *v67 = xmmword_239B1EF80;
  *&v67[16] = 1;
  [a2 dispatchThreadgroups:v68 threadsPerThreadgroup:v67];
  v30 = MPSGetTemporaryBufferFromCommandBufferCache();
  [a2 setComputePipelineState:v21];
  [a2 setBuffer:v30 offset:0 atIndex:0];
  objc_msgSend_setBytes_length_atIndex_(a2);
  DWORD1(v64) = [v30 length];
  *v68 = (DWORD1(v64) + 63) >> 6;
  *&v68[8] = vdupq_n_s64(1uLL);
  *v67 = 64;
  *&v67[8] = *&v68[8];
  [a2 dispatchThreadgroups:v68 threadsPerThreadgroup:v67];
  v31 = [*(*&a1[*MEMORY[0x277CD7350]] + 16) newBufferWithLength:16 options:0];
  v32 = v48 <= v47;
  bzero([v31 contents], objc_msgSend(v31, "length"));
  v61 = v47;
  v59 = v52;
  v60 = v48;
  if (v47 != v32)
  {
    v33 = 0;
    do
    {
      v34 = (((v48 + 1 - v33) >> 1) - 1) | ((((v48 + 1 - v33) >> 1) - 1) >> 1);
      v35 = v34 | (v34 >> 2) | ((v34 | (v34 >> 2)) >> 4);
      v36 = v35 | (v35 >> 8) | ((v35 | (v35 >> 8)) >> 16);
      v37 = v36 + 1;
      if ((v36 + 1) > 0x20)
      {
        v38 = v36 + 1;
      }

      else
      {
        v38 = 32;
      }

      v39 = v38;
      v40 = 1;
      if (v37 >= 0x401)
      {
        v41 = v39;
        do
        {
          v39 = v41 >> 1;
          v40 *= 2;
          v42 = v41 > 0x801;
          v41 >>= 1;
        }

        while (v42);
      }

      v62 = v40;
      [a2 setComputePipelineState:PipelineStateForMPSKey];
      [a2 setBuffer:objc_msgSend(v53 offset:"buffer") atIndex:{4 * v33 * v52, 0}];
      [a2 setBuffer:v29 offset:0 atIndex:1];
      [a2 setBuffer:v30 offset:0 atIndex:2];
      [a2 setBuffer:v31 offset:0 atIndex:3];
      objc_msgSend_setBytes_length_atIndex_(a2);
      [a2 setThreadgroupMemoryLength:16 atIndex:0];
      *v63 = vdupq_n_s64(1uLL);
      *&v63[16] = 1;
      *v68 = v39;
      *&v68[8] = *v63;
      [a2 dispatchThreadgroups:v63 threadsPerThreadgroup:v68];
      [a2 setComputePipelineState:v49];
      [a2 setBuffer:v29 offset:4 * v33 atIndex:0];
      [a2 setBuffer:objc_msgSend(v53 offset:"buffer") atIndex:{4 * (v33 * v52 + v33), 1}];
      [a2 setBuffer:v51 offset:4 * v33 * v52 atIndex:2];
      [a2 setBuffer:v30 offset:0 atIndex:3];
      [a2 setBuffer:v31 offset:0 atIndex:4];
      objc_msgSend_setBytes_length_atIndex_(a2);
      *v63 = (((v48 + 1) >> 1) + 63) >> 6;
      *&v63[8] = vdupq_n_s64(1uLL);
      *v68 = 64;
      *&v68[8] = *&v63[8];
      [a2 dispatchThreadgroups:v63 threadsPerThreadgroup:v68];
      ++v33;
    }

    while (v33 != v47 - v32);
  }

  if (v48 > v47)
  {
    [a2 setComputePipelineState:v46];
    [a2 setBuffer:v51 offset:0 atIndex:0];
    [a2 setBuffer:objc_msgSend(v26 offset:"buffer") atIndex:{0, 1}];
    objc_msgSend_setBytes_length_atIndex_(a2);
    *v63 = (v52 * v47 + 1023) >> 10;
    *&v63[8] = vdupq_n_s64(1uLL);
    *v68 = 1024;
    *&v68[8] = *&v63[8];
    [a2 dispatchThreadgroups:v63 threadsPerThreadgroup:v68];
  }

  MPSAutoCache::~MPSAutoCache(v58);
  return 0;
}

void sub_239AB4D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239AB4D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239AB4D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239AB4D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239AB4D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239AB4DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239AB4DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239AB4DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239AB4DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

void sub_239AB4DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  MPSAutoCache::~MPSAutoCache(va);
  _Unwind_Resume(a1);
}

uint64_t MPSNDArrayFunctionConstructorQRDecomposition(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 64);
  v7 = MPSCreateFunctionConstantValues();
  v12 = v6 & 1;
  v11 = (v6 & 2) != 0;
  [v7 setConstantValue:&v12 type:53 atIndex:115];
  [v7 setConstantValue:&v11 type:53 atIndex:114];
  v8 = *a3;
  if (a3[1] != -1)
  {
    v13 = a3[1];
    [v7 setConstantValue:&v13 type:33 atIndex:126];
  }

  if (v8 != -1)
  {
    v13 = v8;
    [v7 setConstantValue:&v13 type:33 atIndex:125];
  }

  v13 = 0;
  [v7 setConstantValue:&v13 type:33 atIndex:123];
  v13 = 0;
  [v7 setConstantValue:&v13 type:33 atIndex:119];
  v13 = 0;
  [v7 setConstantValue:&v13 type:33 atIndex:118];
  v13 = 0;
  [v7 setConstantValue:&v13 type:33 atIndex:122];
  v13 = 0;
  [v7 setConstantValue:&v13 type:33 atIndex:121];
  v13 = 0;
  [v7 setConstantValue:&v13 type:33 atIndex:117];
  v13 = 0;
  [v7 setConstantValue:&v13 type:33 atIndex:116];
  v9 = _MPSNewSpecializedFunction();

  return v9;
}

BOOL MPSNDArrayConvolutionDeviceBehavior::DoWeightsNeedPhysicalTranspose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + *MEMORY[0x277CD73D8]);
  if (v4.u8[0] > 3u || v4.u8[1] > 3u || BYTE2(*(a3 + *MEMORY[0x277CD73D8])) > 3u || BYTE3(*(a3 + *MEMORY[0x277CD73D8])) > 3u)
  {
    return 1;
  }

  return vmovn_s16(vzip1q_s8(v4, v4)).u32[0] != 50462976 || *(a4 + 12) == 1;
}

uint64_t MPSNDArrayConvolutionDeviceBehavior::transposedWeights(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t **a6, int a7, int a8)
{
  v41[4] = *MEMORY[0x277D85DE8];
  v15 = objc_autoreleasePoolPush();
  v16 = *a6;
  v18 = (*a6)[2];
  v17 = (*a6)[3];
  v19 = **a6;
  v20 = v16[1];
  if (a7 == 1)
  {
    if (a8)
    {
      v36 = a2;
      v37 = a4;
      v21 = v19;
      v22 = v16[1];
      if (a5)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    context = v15;
    v31 = [a5 descriptor];
    [v31 transposeDimension:0 withDimension:3];
    [v31 transposeDimension:1 withDimension:2];
    [v31 transposeDimension:2 withDimension:3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      ++*&a5[*MEMORY[0x277CD7498]];
    }

    v32 = [a5 safeArrayViewWithCommandBuffer:a3 computeEncoder:a4 descriptor:v31 aliasing:1];
    if (v32)
    {
      v23 = v32;
      v36 = a2;
      v37 = a4;
      v35 = 0;
      v21 = v19;
      v22 = v20;
LABEL_18:
      v26 = MEMORY[0x277CD7268];
      v27 = [a5 dataType];
      v41[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
      v41[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
      v41[2] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
      v41[3] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
      v28 = MEMORY[0x277CBEA60];
      v29 = v41;
LABEL_19:
      v33 = [v26 descriptorWithDataType:v27 shape:{objc_msgSend(v28, "arrayWithObjects:count:", v29, 4)}];
      [v33 setPreferPackedRows:1];
      v30 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v33];
      if (v35)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          ++*&v23[*MEMORY[0x277CD7498]];
        }
      }

      v39 = v23;
      [v36 encodeToMPSCommandEncoder:v37 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:&v39 kernelDAGObject:{1), 0, v30, 0}];
      goto LABEL_24;
    }

LABEL_23:
    v30 = 0;
LABEL_24:
    v15 = context;
    goto LABEL_25;
  }

  if (a8 == 1)
  {
    context = v15;
    v24 = [a5 descriptor];
    [v24 transposeDimension:0 withDimension:3];
    [v24 transposeDimension:1 withDimension:2];
    [v24 transposeDimension:0 withDimension:1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      ++*&a5[*MEMORY[0x277CD7498]];
    }

    v25 = [a5 safeArrayViewWithCommandBuffer:a3 computeEncoder:a4 descriptor:v24 aliasing:1];
    if (v25)
    {
      v23 = v25;
      v36 = a2;
      v37 = a4;
      v35 = 0;
      v21 = v18;
      v22 = v17;
      v18 = v20;
      v17 = v19;
      goto LABEL_11;
    }

    goto LABEL_23;
  }

  v36 = a2;
  v37 = a4;
  v21 = v18;
  v22 = v17;
  v18 = v16[1];
  v17 = v19;
  if (a5)
  {
LABEL_4:
    context = v15;
    v35 = 1;
    v23 = a5;
    if (!a8)
    {
      goto LABEL_18;
    }

LABEL_11:
    v26 = MEMORY[0x277CD7268];
    v27 = [a5 dataType];
    v40[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
    v40[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
    v40[2] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
    v40[3] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
    v28 = MEMORY[0x277CBEA60];
    v29 = v40;
    goto LABEL_19;
  }

LABEL_13:
  v30 = 0;
LABEL_25:
  objc_autoreleasePoolPop(v15);
  return v30;
}

uint64_t MPSNDArrayConvolutionDeviceBehavior::IsConvolutionGradientWithWeightsSupported(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 224);
  if (v4)
  {
    if (v4 != 1)
    {
      MPSKernel_LogInfo(a2, 2uLL, "Only NCHW and NHWC data formats supported. Falling back to generic implementation\n", v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
      return 0;
    }

    if (*(a2 + 228))
    {
      MPSKernel_LogInfo(a2, 2uLL, "NHWC data supported only with HWIO weights format. Falling back to generic implementation\n", v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
      return 0;
    }
  }

  else
  {
    if (*(a2 + 228) != 1)
    {
      MPSKernel_LogInfo(a2, 2uLL, "NCHW data supported only with OHIW weights format. Falling back to generic implementation\n", v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
      return 0;
    }

    if (*(*(a2 + *MEMORY[0x277CD7350]) + 1472) >= 26)
    {
      MPSKernel_LogInfo(a2, 2uLL, "NCHW + OIHW not optimized for AMD. Falling back to generic implementation\n", v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
      return 0;
    }
  }

  v6 = [*(a3 + 232) inputTensorAtIndex:0];
  v7 = [*(a3 + 232) inputTensorAtIndex:2];
  LODWORD(v6) = (*(**(v6 + 32) + 24))(*(v6 + 32));
  v8 = (*(**(v7 + 32) + 24))(*(v7 + 32));
  if (!v6 || (v8 & 1) == 0)
  {
    v16 = "Linking not supported by G13 gradient with weights kernels. Falling back to generic implementation\n";
    v17 = a2;
LABEL_18:
    MPSKernel_LogInfo(v17, 2uLL, v16, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
    return 0;
  }

  v9 = [*(a3 + 232) graph];
  v10 = *(v9 + 64);
  v11 = *v10;
  v12 = v10[1];
  if (*v10 == v12)
  {
    goto LABEL_21;
  }

  v13 = v9;
  v14 = -1;
  do
  {
    v15 = *v11;
    if (v15 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v13) + 32))
    {
      v14 = *(*v11 + 76);
    }

    MPSKernelDAG::GetCoreOpInputAtIndex(v13);
    ++v11;
  }

  while (v11 != v12);
  if (v14 == -1)
  {
LABEL_21:
    v14 = 0;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
      v14 = 0;
    }
  }

  v19 = [*(a3 + 16) objectAtIndexedSubscript:v14];
  v20 = *(a3 + 112);
  v21 = *MEMORY[0x277CD7408];
  v22 = *(v19 + v21);
  v23 = *MEMORY[0x277CD73F0];
  v24 = *(v19 + v23);
  if (v24 >= 0x10)
  {
    v25 = 16;
  }

  else
  {
    v25 = *(v19 + v23);
  }

  if (v24 >= 2)
  {
    v26 = (v19 + *MEMORY[0x277CD7428]);
    v28 = v26[6];
    v27 = v26[7];
    v30 = v26[4];
    v29 = v26[5];
    v32 = v26[2];
    v31 = v26[3];
    v34 = *v26;
    v33 = v26[1];
    v35 = 1;
    v36 = 1;
    v37 = a2;
    while (1)
    {
      v145[0] = v34;
      v145[1] = v33;
      v145[2] = v32;
      v145[3] = v31;
      v145[4] = v30;
      v145[5] = v29;
      v145[6] = v28;
      v145[7] = v27;
      if (v22 != *(v145 + (v35 & 0xF)))
      {
        return 0;
      }

      v22 *= *(v19 + *MEMORY[0x277CD73D0] + 4 * (v35 & 0xF));
      v144 = *(v19 + *MEMORY[0x277CD73D8]);
      v36 |= 1 << *(&v144 | v35++ & 0xF);
      if (v25 == v35)
      {
        goto LABEL_32;
      }
    }
  }

  v36 = 1;
  v37 = a2;
LABEL_32:
  if (v24 <= 0xF && (v36 ^ (-1 << v25)) != 0xFFFFFFFF)
  {
    v38 = (v19 + *MEMORY[0x277CD7428]);
    v40 = v38[6];
    v39 = v38[7];
    v42 = v38[4];
    v41 = v38[5];
    v44 = v38[2];
    v43 = v38[3];
    v46 = *v38;
    v45 = v38[1];
    do
    {
      v143[0] = v46;
      v143[1] = v45;
      v143[2] = v44;
      v143[3] = v43;
      v143[4] = v42;
      v143[5] = v41;
      v143[6] = v40;
      v143[7] = v39;
      v47 = *(v143 + (v25 & 0xF));
      if (v22 != v47 && v47 != 0)
      {
        return 0;
      }

      v22 *= *(v19 + *MEMORY[0x277CD73D0] + 4 * (v25++ & 0xF));
    }

    while (v25 != 16);
  }

  v49 = *(v20 + v21);
  v50 = *(v20 + v23);
  v51 = 16;
  if (v50 < 0x10)
  {
    v51 = *(v20 + v23);
  }

  if (v50 >= 2)
  {
    v52 = (v20 + *MEMORY[0x277CD7428]);
    v54 = v52[6];
    v53 = v52[7];
    v56 = v52[4];
    v55 = v52[5];
    v58 = v52[2];
    v57 = v52[3];
    v60 = *v52;
    v59 = v52[1];
    v61 = 1;
    v62 = 1;
    while (1)
    {
      v135 = v60;
      v136 = v59;
      v137 = v58;
      v138 = v57;
      v139 = v56;
      v140 = v55;
      v141 = v54;
      v142 = v53;
      if (v49 != *(&v135 + (v61 & 0xF)))
      {
        return 0;
      }

      v49 *= *(v20 + *MEMORY[0x277CD73D0] + 4 * (v61 & 0xF));
      v134 = *(v20 + *MEMORY[0x277CD73D8]);
      v62 |= 1 << *(&v134 | v61++ & 0xF);
      if (v51 == v61)
      {
        goto LABEL_49;
      }
    }
  }

  v62 = 1;
LABEL_49:
  if (v50 <= 0xF && (v62 ^ (-1 << v51)) != 0xFFFFFFFF)
  {
    v63 = (v20 + *MEMORY[0x277CD7428]);
    v65 = v63[6];
    v64 = v63[7];
    v67 = v63[4];
    v66 = v63[5];
    v69 = v63[2];
    v68 = v63[3];
    v71 = *v63;
    v70 = v63[1];
    do
    {
      v126 = v71;
      v127 = v70;
      v128 = v69;
      v129 = v68;
      v130 = v67;
      v131 = v66;
      v132 = v65;
      v133 = v64;
      v72 = *(&v126 + (v51 & 0xF));
      if (v49 != v72 && v72 != 0)
      {
        return 0;
      }

      v49 *= *(v20 + *MEMORY[0x277CD73D0] + 4 * (v51++ & 0xF));
    }

    while (v51 != 16);
  }

  v74 = *(a3 + 208);
  if (v74)
  {
    v75 = *(v74 + v21);
    v76 = *(v74 + v23);
    v77 = 16;
    if (v76 < 0x10)
    {
      v77 = v76;
    }

    if (v76 >= 2)
    {
      v78 = (v74 + *MEMORY[0x277CD7428]);
      v80 = v78[6];
      v79 = v78[7];
      v82 = v78[4];
      v81 = v78[5];
      v84 = v78[2];
      v83 = v78[3];
      v86 = *v78;
      v85 = v78[1];
      v87 = 1;
      v88 = 1;
      while (1)
      {
        v118 = v86;
        v119 = v85;
        v120 = v84;
        v121 = v83;
        v122 = v82;
        v123 = v81;
        v124 = v80;
        v125 = v79;
        if (v75 != *(&v118 + (v87 & 0xF)))
        {
          return 0;
        }

        v75 *= *(v74 + *MEMORY[0x277CD73D0] + 4 * (v87 & 0xF));
        v117 = *(v74 + *MEMORY[0x277CD73D8]);
        v88 |= 1 << *(&v117 | v87++ & 0xF);
        if (v77 == v87)
        {
          goto LABEL_67;
        }
      }
    }

    v88 = 1;
LABEL_67:
    if (v76 <= 0xF && (v88 ^ (-1 << v77)) != 0xFFFFFFFF)
    {
      v89 = (v74 + *MEMORY[0x277CD7428]);
      v91 = v89[6];
      v90 = v89[7];
      v93 = v89[4];
      v92 = v89[5];
      v95 = v89[2];
      v94 = v89[3];
      v97 = *v89;
      v96 = v89[1];
      do
      {
        v109 = v97;
        v110 = v96;
        v111 = v95;
        v112 = v94;
        v113 = v93;
        v114 = v92;
        v115 = v91;
        v116 = v90;
        v98 = *(&v109 + (v77 & 0xF));
        if (v75 != v98 && v98 != 0)
        {
          return 0;
        }

        v75 *= *(v74 + *MEMORY[0x277CD73D0] + 4 * (v77++ & 0xF));
      }

      while (v77 != 16);
    }
  }

  v100 = *MEMORY[0x277CD73D8];
  v101 = *(v19 + v100);
  if (v101 > 3u || BYTE1(v101) > 3u || BYTE2(*(v19 + v100)) > 3u || BYTE3(*(v19 + v100)) > 3u || v101 != 50462976)
  {
    v16 = "Either source, gradient or destination is transposed. Falling back to generic implementation\n";
LABEL_96:
    v17 = v37;
    goto LABEL_18;
  }

  v106 = v19;
  if (IsNDArrayTransposed(*(v37 + 224), &v146, *(v20 + v100)))
  {
    v16 = "Either source, gradient or destination is transposed. Falling back to generic implementation\n";
    v37 = a2;
    goto LABEL_96;
  }

  v107 = *MEMORY[0x277CD73D0];
  v108 = *MEMORY[0x277CD7410];
  v37 = a2;
  if ((vminv_u16(vmovn_s32(vceqq_s32(*(v106 + v107), *(v106 + v108)))) & 1) == 0)
  {
    v16 = "Slicing on source not supported. Falling back to generic implementation\n";
    goto LABEL_96;
  }

  if ((vminv_u16(vmovn_s32(vceqq_s32(*(v20 + v107), *(v20 + v108)))) & 1) == 0)
  {
    v16 = "Slicing on gradient or gradient not supported. Falling back to generic implementation\n";
    goto LABEL_96;
  }

  return 1;
}

uint64_t GetPlaceHolderIndexInSourceArray(MPSKernelDAG *this, unint64_t *a2, unint64_t *a3)
{
  v5 = *(this + 8);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 == v7)
  {
    if (a2)
    {
      v16 = -1;
    }

    else
    {
      v16 = 0;
    }

    if (a3)
    {
      return -1;
    }

    else
    {
      return v16;
    }
  }

  v9 = -1;
  v10 = -1;
  do
  {
    while (1)
    {
      v11 = *v6;
      CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(this);
      v13 = *v6;
      if (v11 != *(CoreOpInputAtIndex + 32))
      {
        break;
      }

      v9 = *(v13 + 76);
      if (v13 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
      {
        goto LABEL_7;
      }

LABEL_4:
      if (++v6 == v7)
      {
        goto LABEL_8;
      }
    }

    if (v13 != *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = *v6++;
    v10 = *(v14 + 76);
  }

  while (v6 != v7);
LABEL_8:
  if (!a3)
  {
    goto LABEL_11;
  }

  if (v10 == -1)
  {
    return -1;
  }

  *a3 = v10;
LABEL_11:
  if (!a2)
  {
    return 0;
  }

  if (v9 != -1)
  {
    result = 0;
    *a2 = v9;
    return result;
  }

  return -1;
}

uint64_t MPSNDArrayConvolutionDeviceBehavior::EncodeNDArrayConvolution(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v92 = *(a4 + 2);
  v90 = *(a4 + 3);
  v4 = a4[2];
  v5 = a4[3];
  v6 = a4[4];
  v97 = a4[5];
  v8 = a4[6];
  v7 = a4[7];
  v81 = a4[8];
  v82 = a4[9];
  v105 = a4[10];
  v98 = a4[11];
  v100 = a4[12];
  v9 = *(a4 + 120);
  v10 = a4[16];
  v86 = a4[17];
  v11 = [*(v10 + 232) inputTensorAtIndex:0];
  v12 = [*(v10 + 232) inputTensorAtIndex:1];
  v13 = [*(v10 + 232) inputTensorAtIndex:2];
  v103 = [*(v10 + 232) outputTensorAtIndex:0];
  v84 = v10;
  v83 = [*(v10 + 16) count];
  v15.i32[1] = HIDWORD(v98);
  v14.i32[1] = HIDWORD(v100);
  v16 = v98;
  v17 = v9;
  v95 = v7;
  v96 = v8;
  if (v9 == 1)
  {
    v18 = HIDWORD(v100) + v7 * HIDWORD(v98);
  }

  else
  {
    v18 = HIDWORD(v98);
  }

  if (v9 == 1)
  {
    v16 = v100 + v8 * v98;
  }

  v80 = v16;
  v76 = v13;
  if (v9 == 1)
  {
    v19 = v4;
  }

  else
  {
    v13 = v11;
    v19 = v5;
  }

  v101 = v19;
  if (v9 == 1)
  {
    v20 = v5;
  }

  else
  {
    v20 = v4;
  }

  v99 = v20;
  if (*v13 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v12 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v103 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v21 = *(v13 + 16);
  v23 = *v21;
  v22 = v21[1];
  if (v22 != v23)
  {
    if (((v22 - v23) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v24 = *(v12 + 16);
  v26 = *v24;
  v25 = v24[1];
  if (v25 != v26)
  {
    if (((v25 - v26) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v27 = *(v103 + 16);
  v29 = *v27;
  v28 = v27[1];
  v79 = v18;
  if (v28 != v29)
  {
    if (((v28 - v29) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v14.i32[0] = GetAxisIndexForDataFormat(MPSNDArrayConvolution2DDataFormat)::axis[v92];
  v30 = vmovl_u8(v14).u64[0];
  v15.i32[0] = GetAxisIndexForWeightsFormat(MPSNDArrayConvolution2DWeightsFormat)::axis[v90];
  v31 = (8 * v30);
  v32 = *v31;
  v33 = *(8 * WORD1(v30));
  v34 = (8 * WORD2(v30));
  HIDWORD(v77) = *v34;
  v35 = (8 * HIWORD(v30));
  LODWORD(v77) = *v35;
  v94 = *v31;
  v78 = *v34;
  v89 = *v35;
  v36 = vmovl_u8(v15).u64[0];
  v37 = *(8 * v36);
  v38 = *(8 * WORD2(v36));
  v39 = *(8 * HIWORD(v36));
  v40 = *(8 * WORD1(v36)) * v105;
  if (v17)
  {
    if (v40 != v101 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v37 != v99 && (MTLReportFailureTypeEnabled() & 1) != 0)
    {
LABEL_274:
      MTLReportFailure();
    }
  }

  else
  {
    if (v40 != v99 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v37 != v101 && MTLReportFailureTypeEnabled())
    {
      goto LABEL_274;
    }
  }

  if (v38 != v97 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v39 != v6 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v32 != v94 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v33 != v99 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v33 != v101 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v41 = *(v13 + 8);
  if (v41 > 285212703)
  {
    v42 = v6;
    if (v41 <= 536870915)
    {
      v43 = v17;
      v44 = v83;
      if (v41 > 301989895)
      {
        v45 = v84;
        if (v41 == 301989896)
        {
          v46 = 512;
          v47 = *(v12 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (v41 != 335544328)
          {
            goto LABEL_126;
          }

          v46 = 544;
          v47 = *(v12 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_96;
          }
        }
      }

      else
      {
        v45 = v84;
        if (v41 == 285212704)
        {
          v46 = 416;
          v47 = *(v12 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (v41 != 285212736)
          {
            goto LABEL_126;
          }

          v46 = 448;
          v47 = *(v12 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_96;
          }
        }
      }
    }

    else
    {
      v43 = v17;
      v44 = v83;
      if (v41 <= 536870927)
      {
        v45 = v84;
        if (v41 == 536870916)
        {
          v46 = 0;
          v47 = *(v12 + 8);
          if (v47 > 285212703)
          {
            goto LABEL_127;
          }

          goto LABEL_96;
        }

        if (v41 != 536870920)
        {
          goto LABEL_126;
        }

        v46 = 32;
        v47 = *(v12 + 8);
        if (v47 <= 285212703)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v45 = v84;
        switch(v41)
        {
          case 536870928:
            v46 = 64;
            v47 = *(v12 + 8);
            if (v47 <= 285212703)
            {
              goto LABEL_96;
            }

            break;
          case 536870944:
            v46 = 96;
            v47 = *(v12 + 8);
            if (v47 <= 285212703)
            {
              goto LABEL_96;
            }

            break;
          case 536870976:
            v46 = 128;
            v47 = *(v12 + 8);
            if (v47 <= 285212703)
            {
              goto LABEL_96;
            }

            break;
          default:
            goto LABEL_126;
        }
      }
    }
  }

  else
  {
    v42 = v6;
    if (v41 <= 31)
    {
      v43 = v17;
      v44 = v83;
      if (v41 > 7)
      {
        v45 = v84;
        if (v41 == 8)
        {
          v46 = 192;
          v47 = *(v12 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (v41 != 16)
          {
            goto LABEL_126;
          }

          v46 = 224;
          v47 = *(v12 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_96;
          }
        }
      }

      else
      {
        v45 = v84;
        if (v41 == -1879048176)
        {
          v46 = 384;
          v47 = *(v12 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (v41 != 4)
          {
            goto LABEL_126;
          }

          v46 = 160;
          v47 = *(v12 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_96;
          }
        }
      }
    }

    else
    {
      v43 = v17;
      v44 = v83;
      if (v41 <= 268435463)
      {
        v45 = v84;
        if (v41 == 32)
        {
          v46 = 256;
          v47 = *(v12 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (v41 != 64)
          {
            goto LABEL_126;
          }

          v46 = 288;
          v47 = *(v12 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_96;
          }
        }
      }

      else
      {
        v45 = v84;
        switch(v41)
        {
          case 268435464:
            v46 = 480;
            v47 = *(v12 + 8);
            if (v47 <= 285212703)
            {
              goto LABEL_96;
            }

            break;
          case 268435472:
            v46 = 320;
            v47 = *(v12 + 8);
            if (v47 <= 285212703)
            {
              goto LABEL_96;
            }

            break;
          case 268435488:
            v46 = 352;
            v47 = *(v12 + 8);
            if (v47 > 285212703)
            {
              break;
            }

LABEL_96:
            v48 = v86;
            if (v47 <= 31)
            {
              if (v47 > 7)
              {
                if (v47 == 8)
                {
                  v46 |= 0x1800u;
                  if (v43)
                  {
                    goto LABEL_179;
                  }

                  goto LABEL_156;
                }

                if (v47 == 16)
                {
                  v46 |= 0x1C00u;
                  if (v43)
                  {
                    goto LABEL_179;
                  }

                  goto LABEL_156;
                }
              }

              else
              {
                if (v47 == -1879048176)
                {
                  v46 |= 0x3000u;
                  if (v43)
                  {
                    goto LABEL_179;
                  }

                  goto LABEL_156;
                }

                if (v47 == 4)
                {
                  v46 |= 0x1400u;
                  if (v43)
                  {
                    goto LABEL_179;
                  }

                  goto LABEL_156;
                }
              }
            }

            else if (v47 <= 268435463)
            {
              if (v47 == 32)
              {
                v46 |= 0x2000u;
                if (v43)
                {
                  goto LABEL_179;
                }

                goto LABEL_156;
              }

              if (v47 == 64)
              {
                v46 |= 0x2400u;
                if (v43)
                {
                  goto LABEL_179;
                }

                goto LABEL_156;
              }
            }

            else
            {
              switch(v47)
              {
                case 268435464:
                  v46 |= 0x3C00u;
                  if (v43)
                  {
                    goto LABEL_179;
                  }

                  goto LABEL_156;
                case 268435472:
                  v46 |= 0x2800u;
                  if (v43)
                  {
                    goto LABEL_179;
                  }

                  goto LABEL_156;
                case 268435488:
                  v46 |= 0x2C00u;
                  if (v43)
                  {
                    goto LABEL_179;
                  }

                  goto LABEL_156;
              }
            }

LABEL_178:
            v46 |= 0x4800u;
            if (v43)
            {
              goto LABEL_179;
            }

            goto LABEL_156;
          default:
LABEL_126:
            v46 = 576;
            v47 = *(v12 + 8);
            if (v47 > 285212703)
            {
              break;
            }

            goto LABEL_96;
        }
      }
    }
  }

LABEL_127:
  v48 = v86;
  if (v47 <= 536870915)
  {
    if (v47 > 301989895)
    {
      if (v47 == 301989896)
      {
        v46 |= 0x4000u;
        if (!v43)
        {
          goto LABEL_156;
        }
      }

      else
      {
        if (v47 != 335544328)
        {
          goto LABEL_178;
        }

        v46 |= 0x4400u;
        if (!v43)
        {
          goto LABEL_156;
        }
      }
    }

    else if (v47 == 285212704)
    {
      v46 |= 0x3400u;
      if (!v43)
      {
        goto LABEL_156;
      }
    }

    else
    {
      if (v47 != 285212736)
      {
        goto LABEL_178;
      }

      v46 |= 0x3800u;
      if (!v43)
      {
        goto LABEL_156;
      }
    }
  }

  else if (v47 <= 536870927)
  {
    if (v47 == 536870916)
    {
      if (v43)
      {
        goto LABEL_179;
      }

      goto LABEL_156;
    }

    if (v47 != 536870920)
    {
      goto LABEL_178;
    }

    v46 |= 0x400u;
    if (!v43)
    {
      goto LABEL_156;
    }
  }

  else
  {
    switch(v47)
    {
      case 536870928:
        v46 |= 0x800u;
        if (!v43)
        {
          goto LABEL_156;
        }

        break;
      case 536870944:
        v46 |= 0xC00u;
        if (!v43)
        {
          goto LABEL_156;
        }

        break;
      case 536870976:
        v46 |= 0x1000u;
        if (v43)
        {
          break;
        }

LABEL_156:
        v49 = *(v103 + 8);
        if (v49 > 285212703)
        {
          goto LABEL_224;
        }

LABEL_157:
        if (v49 <= 31)
        {
          if (v49 > 7)
          {
            if (v49 == 8)
            {
              v50 = 6;
              goto LABEL_246;
            }

            if (v49 == 16)
            {
              v50 = 7;
              goto LABEL_246;
            }
          }

          else
          {
            if (v49 == -1879048176)
            {
              v50 = 12;
              goto LABEL_246;
            }

            if (v49 == 4)
            {
              v50 = 5;
              goto LABEL_246;
            }
          }
        }

        else if (v49 <= 268435463)
        {
          if (v49 == 32)
          {
            v50 = 8;
            goto LABEL_246;
          }

          if (v49 == 64)
          {
            v50 = 9;
            goto LABEL_246;
          }
        }

        else
        {
          switch(v49)
          {
            case 268435464:
              v50 = 15;
              goto LABEL_246;
            case 268435472:
              v50 = 10;
              goto LABEL_246;
            case 268435488:
              v50 = 11;
              goto LABEL_246;
          }
        }

        goto LABEL_245;
      default:
        goto LABEL_178;
    }
  }

LABEL_179:
  v51 = *(v76 + 8);
  if (v51 > 285212703)
  {
    if (v51 <= 536870915)
    {
      if (v51 > 301989895)
      {
        if (v51 == 301989896)
        {
          v52 = 0x80000;
          goto LABEL_223;
        }

        if (v51 == 335544328)
        {
          v52 = 557056;
          goto LABEL_223;
        }
      }

      else
      {
        if (v51 == 285212704)
        {
          v52 = 425984;
          goto LABEL_223;
        }

        if (v51 == 285212736)
        {
          v52 = 458752;
          goto LABEL_223;
        }
      }
    }

    else if (v51 <= 536870927)
    {
      if (v51 == 536870916)
      {
        v52 = 0;
        goto LABEL_223;
      }

      if (v51 == 536870920)
      {
        v52 = 0x8000;
        goto LABEL_223;
      }
    }

    else
    {
      switch(v51)
      {
        case 536870928:
          v52 = 0x10000;
          goto LABEL_223;
        case 536870944:
          v52 = 98304;
          goto LABEL_223;
        case 536870976:
          v52 = 0x20000;
          goto LABEL_223;
      }
    }
  }

  else if (v51 <= 31)
  {
    if (v51 > 7)
    {
      if (v51 == 8)
      {
        v52 = 196608;
        goto LABEL_223;
      }

      if (v51 == 16)
      {
        v52 = 229376;
        goto LABEL_223;
      }
    }

    else
    {
      if (v51 == -1879048176)
      {
        v52 = 393216;
        goto LABEL_223;
      }

      if (v51 == 4)
      {
        v52 = 163840;
        goto LABEL_223;
      }
    }
  }

  else if (v51 <= 268435463)
  {
    if (v51 == 32)
    {
      v52 = 0x40000;
      goto LABEL_223;
    }

    if (v51 == 64)
    {
      v52 = 294912;
      goto LABEL_223;
    }
  }

  else
  {
    switch(v51)
    {
      case 268435464:
        v52 = 491520;
        goto LABEL_223;
      case 268435472:
        v52 = 327680;
        goto LABEL_223;
      case 268435488:
        v52 = 360448;
        goto LABEL_223;
    }
  }

  v52 = 589824;
LABEL_223:
  v46 |= v52;
  v49 = *(v103 + 8);
  if (v49 <= 285212703)
  {
    goto LABEL_157;
  }

LABEL_224:
  if (v49 <= 536870915)
  {
    if (v49 > 301989895)
    {
      if (v49 == 301989896)
      {
        v50 = 16;
        goto LABEL_246;
      }

      if (v49 == 335544328)
      {
        v50 = 17;
        goto LABEL_246;
      }
    }

    else
    {
      if (v49 == 285212704)
      {
        v50 = 13;
        goto LABEL_246;
      }

      if (v49 == 285212736)
      {
        v50 = 14;
        goto LABEL_246;
      }
    }
  }

  else if (v49 <= 536870927)
  {
    if (v49 == 536870916)
    {
      v50 = 0;
      goto LABEL_246;
    }

    if (v49 == 536870920)
    {
      v50 = 1;
      goto LABEL_246;
    }
  }

  else
  {
    switch(v49)
    {
      case 536870928:
        v50 = 2;
        goto LABEL_246;
      case 536870944:
        v50 = 3;
        goto LABEL_246;
      case 536870976:
        v50 = 4;
        goto LABEL_246;
    }
  }

LABEL_245:
  v50 = 18;
LABEL_246:
  v53 = v50 | v46;
  v54 = v95 == 1 && v96 == 1;
  v55 = 0x100000;
  if (!v54)
  {
    v55 = 0;
  }

  v134 = -1;
  v135 = -1;
  v136 = v55 | (v43 << 19) | ((v105 == 1) << 21) | (v92 << 22) | (v90 << 24) | 0x1B4E8;
  v137 = v53;
  v138 = 0u;
  v139 = 0u;
  v140 = v44 | (v43 << 8) | 0x10000;
  v141 = 0;
  if ((atomic_load_explicit(&qword_281475280, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_281475280))
  {
    v72 = &CommonKernelsConvolution2DForward;
    if (v43)
    {
      v72 = &CommonKernelsConvolution2DGradientWithInput;
    }

    _MergedGlobals_11_0 = v72;
    __cxa_guard_release(&qword_281475280);
  }

  v74 = *(v48 + *MEMORY[0x277CD7360]);
  v75 = *(v48 + *MEMORY[0x277CD7368]);
  v73 = *(v45 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSGetUIntDivisorMagicNumber();
  v104 = v57;
  v58 = v101 / v105;
  v59 = (v101 / v105 + 31) >> 5;
  MPSGetUIntDivisorMagicNumber();
  v102 = v60;
  MPSGetUIntDivisorMagicNumber();
  v93 = v61;
  MPSGetUIntDivisorMagicNumber();
  v91 = v62;
  MPSGetUIntDivisorMagicNumber();
  v87 = v63;
  MPSGetUIntDivisorMagicNumber();
  v85 = v64;
  [a2 setComputePipelineState:{PipelineStateForMPSKey, v73, v74, v75, 0, 0}];
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  v66 = v102;
  v65 = v104;
  HIDWORD(v65) = 0;
  HIDWORD(v66) = 0;
  v68 = v91;
  v67 = v93;
  HIDWORD(v67) = 0;
  HIDWORD(v68) = 0;
  v70 = v85;
  v69 = v87;
  HIDWORD(v69) = 0;
  HIDWORD(v70) = 0;
  v109 = v65;
  v110 = v66;
  v111 = v67;
  v112 = v68;
  v113 = v69;
  v114 = v70;
  v115 = 0u;
  v116 = 0u;
  v117 = v99 / v105;
  v118 = v58;
  v119 = v42;
  v120 = v97;
  v121 = v105;
  v122 = v94;
  v123 = v77;
  v124 = __PAIR64__(v78, v89);
  LODWORD(v65) = v80 - (v81 * (v42 - 1) + 1) / 2;
  DWORD1(v65) = v79 - (v82 * (v97 - 1) + 1) / 2;
  v125 = 0;
  v126 = v65;
  v127 = __PAIR64__(v95, v96);
  v128 = __PAIR64__(v82, v81);
  v129 = ((v99 / v105 + 7) >> 3) * v97 * v42;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  MPSSetNDArraysOnComputeEncoder(a2, v45, 4, 0, 0);
  [a2 setThreadgroupMemoryLength:2304 atIndex:0];
  objc_msgSend_setBytes_length_atIndex_(a2);
  v108[0] = ((v89 + 7) >> 3) * ((v78 + 3) >> 2);
  v108[1] = v59 * v105;
  v108[2] = v94;
  v106 = xmmword_239B0A150;
  v107 = 1;
  [a2 dispatchThreadgroups:v108 threadsPerThreadgroup:&v106];
  operator delete(0);
  operator delete(0);
  operator delete(0);
  return 0;
}

void sub_239AB722C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  operator delete(__p);
  operator delete(a22);
  if (a38)
  {
    operator delete(a38);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t MPSNDArrayConvolutionDeviceBehavior::EncodeNDArrayConvolutionGradientWithWeights(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v83 = [*(a5 + 16) count];
  v89 = *(a2 + 224);
  v87 = *(a2 + 228);
  v98 = *(a2 + 144);
  v95 = *(a2 + 152);
  v8 = *(a2 + 200);
  v9 = *(a2 + 208);
  v86 = *(a2 + 160);
  v10 = *(a2 + 168);
  v99 = *(a2 + 192);
  v11 = *(a2 + 240);
  v77 = *(a2 + 232);
  v93 = *(a2 + 184);
  v94 = *(a2 + 176);
  v12 = [*(a5 + 232) inputTensorAtIndex:0];
  v80 = [*(a5 + 232) inputTensorAtIndex:1];
  v13 = [*(a5 + 232) inputTensorAtIndex:2];
  v96 = [*(a5 + 232) outputTensorAtIndex:0];
  if (*v12 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v13 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v91 = v13;
  if (*v96 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v16 = *(v12 + 16);
  v18 = *v16;
  v17 = v16[1];
  if (v17 != v18)
  {
    if (((v17 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v19 = *(v96 + 16);
  v21 = *v19;
  v20 = v19[1];
  if (v20 != v21)
  {
    if (((v20 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v22 = v91[2];
  v24 = *v22;
  v23 = v22[1];
  v75 = v9;
  v76 = v8;
  v78 = a3;
  v74 = v11;
  if (v23 != v24)
  {
    if (((v23 - v24) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v25 = a5;
  v14.i32[0] = GetAxisIndexForDataFormat(MPSNDArrayConvolution2DDataFormat)::axis[v89];
  v15.i32[0] = GetAxisIndexForWeightsFormat(MPSNDArrayConvolution2DWeightsFormat)::axis[v87];
  v26 = vmovl_u8(v14).u64[0];
  v85 = *(8 * v26);
  v27 = (8 * WORD1(v26));
  v28 = *v27;
  HIDWORD(v73) = *(8 * WORD2(v26));
  v29 = vmovl_u8(v15).u64[0];
  LODWORD(v73) = *(8 * HIWORD(v26));
  v30 = *v27;
  v31 = *(8 * v29);
  v32 = *(8 * WORD1(v29));
  v33 = *(8 * WORD2(v29));
  v34 = *(8 * HIWORD(v29));
  if (v28 != v86 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v30 != v10 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v30 != v31 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v28 / v99 != v32 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v33 != v95 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v34 != v98 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v35 = *(v12 + 8);
  if (v35 > 285212703)
  {
    v36 = v78;
    v37 = v25;
    if (v35 <= 536870915)
    {
      v38 = v83;
      if (v35 > 301989895)
      {
        if (v35 == 301989896)
        {
          v40 = 512;
          v41 = *(v80 + 8);
          if (v41 <= 285212703)
          {
            goto LABEL_79;
          }
        }

        else
        {
          v39 = v80;
          if (v35 != 335544328)
          {
            goto LABEL_100;
          }

          v40 = 544;
          v41 = *(v80 + 8);
          if (v41 <= 285212703)
          {
            goto LABEL_79;
          }
        }
      }

      else if (v35 == 285212704)
      {
        v40 = 416;
        v41 = *(v80 + 8);
        if (v41 <= 285212703)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v39 = v80;
        if (v35 != 285212736)
        {
          goto LABEL_100;
        }

        v40 = 448;
        v41 = *(v80 + 8);
        if (v41 <= 285212703)
        {
          goto LABEL_79;
        }
      }
    }

    else
    {
      v38 = v83;
      if (v35 <= 536870927)
      {
        if (v35 == 536870916)
        {
          v40 = 0;
          v41 = *(v80 + 8);
          if (v41 > 285212703)
          {
            goto LABEL_101;
          }

          goto LABEL_79;
        }

        v39 = v80;
        if (v35 != 536870920)
        {
          goto LABEL_100;
        }

        v40 = 32;
        v41 = *(v80 + 8);
        if (v41 <= 285212703)
        {
          goto LABEL_79;
        }
      }

      else if (v35 == 536870928)
      {
        v40 = 64;
        v41 = *(v80 + 8);
        if (v41 <= 285212703)
        {
          goto LABEL_79;
        }
      }

      else if (v35 == 536870944)
      {
        v40 = 96;
        v41 = *(v80 + 8);
        if (v41 <= 285212703)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v39 = v80;
        if (v35 != 536870976)
        {
          goto LABEL_100;
        }

        v40 = 128;
        v41 = *(v80 + 8);
        if (v41 <= 285212703)
        {
          goto LABEL_79;
        }
      }
    }
  }

  else
  {
    v36 = v78;
    v37 = v25;
    if (v35 <= 31)
    {
      v38 = v83;
      if (v35 > 7)
      {
        v39 = v80;
        if (v35 == 8)
        {
          v40 = 192;
          v41 = *(v80 + 8);
          if (v41 <= 285212703)
          {
            goto LABEL_79;
          }
        }

        else
        {
          if (v35 != 16)
          {
            goto LABEL_100;
          }

          v40 = 224;
          v41 = *(v80 + 8);
          if (v41 <= 285212703)
          {
            goto LABEL_79;
          }
        }
      }

      else if (v35 == -1879048176)
      {
        v40 = 384;
        v41 = *(v80 + 8);
        if (v41 <= 285212703)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v39 = v80;
        if (v35 != 4)
        {
          goto LABEL_100;
        }

        v40 = 160;
        v41 = *(v80 + 8);
        if (v41 <= 285212703)
        {
          goto LABEL_79;
        }
      }
    }

    else
    {
      v38 = v83;
      if (v35 <= 268435463)
      {
        v39 = v80;
        if (v35 == 32)
        {
          v40 = 256;
          v41 = *(v80 + 8);
          if (v41 <= 285212703)
          {
            goto LABEL_79;
          }
        }

        else
        {
          if (v35 != 64)
          {
            goto LABEL_100;
          }

          v40 = 288;
          v41 = *(v80 + 8);
          if (v41 <= 285212703)
          {
            goto LABEL_79;
          }
        }
      }

      else if (v35 == 268435464)
      {
        v40 = 480;
        v41 = *(v80 + 8);
        if (v41 <= 285212703)
        {
          goto LABEL_79;
        }
      }

      else
      {
        if (v35 != 268435472)
        {
          v39 = v80;
          if (v35 == 268435488)
          {
            v40 = 352;
            v41 = *(v80 + 8);
            if (v41 > 285212703)
            {
              goto LABEL_101;
            }

LABEL_79:
            if (v41 <= 31)
            {
              if (v41 > 7)
              {
                if (v41 == 8)
                {
                  v42 = 6144;
                  goto LABEL_123;
                }

                if (v41 == 16)
                {
                  v42 = 7168;
                  goto LABEL_123;
                }
              }

              else
              {
                if (v41 == -1879048176)
                {
                  v42 = 12288;
                  goto LABEL_123;
                }

                if (v41 == 4)
                {
                  v42 = 5120;
                  goto LABEL_123;
                }
              }
            }

            else if (v41 <= 268435463)
            {
              if (v41 == 32)
              {
                v42 = 0x2000;
                goto LABEL_123;
              }

              if (v41 == 64)
              {
                v42 = 9216;
                goto LABEL_123;
              }
            }

            else
            {
              switch(v41)
              {
                case 268435464:
                  v42 = 15360;
                  goto LABEL_123;
                case 268435472:
                  v42 = 10240;
                  goto LABEL_123;
                case 268435488:
                  v42 = 11264;
                  goto LABEL_123;
              }
            }

            goto LABEL_122;
          }

LABEL_100:
          v40 = 576;
          v41 = *(v39 + 8);
          if (v41 > 285212703)
          {
            goto LABEL_101;
          }

          goto LABEL_79;
        }

        v40 = 320;
        v41 = *(v80 + 8);
        if (v41 <= 285212703)
        {
          goto LABEL_79;
        }
      }
    }
  }

LABEL_101:
  if (v41 <= 536870915)
  {
    if (v41 > 301989895)
    {
      if (v41 == 301989896)
      {
        v42 = 0x4000;
        goto LABEL_123;
      }

      if (v41 == 335544328)
      {
        v42 = 17408;
        goto LABEL_123;
      }
    }

    else
    {
      if (v41 == 285212704)
      {
        v42 = 13312;
        goto LABEL_123;
      }

      if (v41 == 285212736)
      {
        v42 = 14336;
        goto LABEL_123;
      }
    }
  }

  else if (v41 <= 536870927)
  {
    if (v41 == 536870916)
    {
      v42 = 0;
      goto LABEL_123;
    }

    if (v41 == 536870920)
    {
      v42 = 1024;
      goto LABEL_123;
    }
  }

  else
  {
    switch(v41)
    {
      case 536870928:
        v42 = 2048;
        goto LABEL_123;
      case 536870944:
        v42 = 3072;
        goto LABEL_123;
      case 536870976:
        v42 = 4096;
        goto LABEL_123;
    }
  }

LABEL_122:
  v42 = 18432;
LABEL_123:
  v43 = v42 | v40;
  v44 = *(v91 + 2);
  if (v44 > 285212703)
  {
    if (v44 <= 536870915)
    {
      if (v44 > 301989895)
      {
        if (v44 == 301989896)
        {
          v45 = 0x80000;
          goto LABEL_167;
        }

        if (v44 == 335544328)
        {
          v45 = 557056;
          goto LABEL_167;
        }
      }

      else
      {
        if (v44 == 285212704)
        {
          v45 = 425984;
          goto LABEL_167;
        }

        if (v44 == 285212736)
        {
          v45 = 458752;
          goto LABEL_167;
        }
      }
    }

    else if (v44 <= 536870927)
    {
      if (v44 == 536870916)
      {
        v45 = 0;
        goto LABEL_167;
      }

      if (v44 == 536870920)
      {
        v45 = 0x8000;
        goto LABEL_167;
      }
    }

    else
    {
      switch(v44)
      {
        case 536870928:
          v45 = 0x10000;
          goto LABEL_167;
        case 536870944:
          v45 = 98304;
          goto LABEL_167;
        case 536870976:
          v45 = 0x20000;
          goto LABEL_167;
      }
    }
  }

  else if (v44 <= 31)
  {
    if (v44 > 7)
    {
      if (v44 == 8)
      {
        v45 = 196608;
        goto LABEL_167;
      }

      if (v44 == 16)
      {
        v45 = 229376;
        goto LABEL_167;
      }
    }

    else
    {
      if (v44 == -1879048176)
      {
        v45 = 393216;
        goto LABEL_167;
      }

      if (v44 == 4)
      {
        v45 = 163840;
        goto LABEL_167;
      }
    }
  }

  else if (v44 <= 268435463)
  {
    if (v44 == 32)
    {
      v45 = 0x40000;
      goto LABEL_167;
    }

    if (v44 == 64)
    {
      v45 = 294912;
      goto LABEL_167;
    }
  }

  else
  {
    switch(v44)
    {
      case 268435464:
        v45 = 491520;
        goto LABEL_167;
      case 268435472:
        v45 = 327680;
        goto LABEL_167;
      case 268435488:
        v45 = 360448;
        goto LABEL_167;
    }
  }

  v45 = 589824;
LABEL_167:
  v46 = v43 | v45;
  v47 = *(v96 + 8);
  if (v47 > 285212703)
  {
    if (v47 <= 536870915)
    {
      if (v47 > 301989895)
      {
        if (v47 == 301989896)
        {
          v48 = 16;
          goto LABEL_211;
        }

        if (v47 == 335544328)
        {
          v48 = 17;
          goto LABEL_211;
        }
      }

      else
      {
        if (v47 == 285212704)
        {
          v48 = 13;
          goto LABEL_211;
        }

        if (v47 == 285212736)
        {
          v48 = 14;
          goto LABEL_211;
        }
      }
    }

    else if (v47 <= 536870927)
    {
      if (v47 == 536870916)
      {
        v48 = 0;
        goto LABEL_211;
      }

      if (v47 == 536870920)
      {
        v48 = 1;
        goto LABEL_211;
      }
    }

    else
    {
      switch(v47)
      {
        case 536870928:
          v48 = 2;
          goto LABEL_211;
        case 536870944:
          v48 = 3;
          goto LABEL_211;
        case 536870976:
          v48 = 4;
          goto LABEL_211;
      }
    }
  }

  else if (v47 <= 31)
  {
    if (v47 > 7)
    {
      if (v47 == 8)
      {
        v48 = 6;
        goto LABEL_211;
      }

      if (v47 == 16)
      {
        v48 = 7;
        goto LABEL_211;
      }
    }

    else
    {
      if (v47 == -1879048176)
      {
        v48 = 12;
        goto LABEL_211;
      }

      if (v47 == 4)
      {
        v48 = 5;
        goto LABEL_211;
      }
    }
  }

  else if (v47 <= 268435463)
  {
    if (v47 == 32)
    {
      v48 = 8;
      goto LABEL_211;
    }

    if (v47 == 64)
    {
      v48 = 9;
      goto LABEL_211;
    }
  }

  else
  {
    switch(v47)
    {
      case 268435464:
        v48 = 15;
        goto LABEL_211;
      case 268435472:
        v48 = 10;
        goto LABEL_211;
      case 268435488:
        v48 = 11;
        goto LABEL_211;
    }
  }

  v48 = 18;
LABEL_211:
  v49 = v46 | v48;
  v50 = v93 == 1 && v94 == 1;
  v51 = 905256;
  if (v50)
  {
    v51 = 1953832;
  }

  v128 = -1;
  v129 = -1;
  v130 = v51 | ((v99 == 1) << 21) | (v89 << 22) | (v87 << 24);
  v131 = v49;
  v132 = 0u;
  v133 = 0u;
  v134 = v38 | 0x10100;
  v135 = 0;
  v71 = *(a2 + *MEMORY[0x277CD7360]);
  v72 = *(a2 + *MEMORY[0x277CD7368]);
  v70 = *(v37 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSGetUIntDivisorMagicNumber();
  v97 = v53;
  MPSGetUIntDivisorMagicNumber();
  v92 = v54;
  MPSGetUIntDivisorMagicNumber();
  v90 = v55;
  MPSGetUIntDivisorMagicNumber();
  v88 = v56;
  MPSGetUIntDivisorMagicNumber();
  v84 = v57;
  MPSGetUIntDivisorMagicNumber();
  v82 = v58;
  MPSGetUIntDivisorMagicNumber();
  v81 = v59;
  MPSGetUIntDivisorMagicNumber();
  v79 = v60;
  [v36 setComputePipelineState:{PipelineStateForMPSKey, v70, v71, v72, 0, 0}];
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  v61 = v97;
  HIDWORD(v61) = 0;
  v63 = v90;
  v62 = v92;
  HIDWORD(v62) = 0;
  HIDWORD(v63) = 0;
  v64 = v88;
  HIDWORD(v64) = 0;
  v66 = v82;
  v65 = v84;
  HIDWORD(v65) = 0;
  HIDWORD(v66) = 0;
  v68 = v79;
  v67 = v81;
  HIDWORD(v67) = 0;
  HIDWORD(v68) = 0;
  v103 = v61;
  v104 = v62;
  v105 = v63;
  v106 = v64;
  v107 = v65;
  v108 = v66;
  v109 = v67;
  v110 = v68;
  v111 = v86 / v99;
  v112 = v10 / v99;
  v113 = v98;
  v114 = v95;
  v115 = v99;
  v116 = v85;
  v117 = v73;
  v118 = 0;
  v119 = v73;
  v120 = __PAIR64__(v74, v77);
  v121 = __PAIR64__(v93, v94);
  v122 = __PAIR64__(v75, v76);
  v123 = (((v73 * HIDWORD(v73) * v85) + 7) >> 3);
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  MPSSetNDArraysOnComputeEncoder(v36, v37, 4, 0, 0);
  [v36 setThreadgroupMemoryLength:2048 atIndex:0];
  objc_msgSend_setBytes_length_atIndex_(v36);
  v102[0] = v95 * v98;
  v102[1] = (v86 / v99 + 31) >> 5;
  v102[2] = ((v10 / v99 + 31) >> 5) * v99;
  v100 = xmmword_239B0A150;
  v101 = 1;
  [v36 dispatchThreadgroups:v102 threadsPerThreadgroup:&v100];
  operator delete(0);
  operator delete(0);
  operator delete(0);
  return 0;
}

void sub_239AB84C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42)
{
  operator delete(__p);
  operator delete(a22);
  if (a42)
  {
    operator delete(a42);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t EncodeNDArrayConvolution2D(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a1 + *MEMORY[0x277CD7370]) + 32);
  v7 = *(a1 + 224);
  v8 = *(a1 + 228);
  v9 = *(a1 + 160);
  v10 = *(a1 + 168);
  v11 = *(a1 + 144);
  v21 = *(a1 + *MEMORY[0x277CD7370]);
  v12 = *(a1 + 152);
  v22 = v7;
  v23 = v8;
  v13 = *(a1 + 176);
  v24 = v9;
  v25 = v10;
  v14 = *(a1 + 184);
  v26 = v11;
  v27 = v12;
  v15 = *(a1 + 200);
  v28 = v13;
  v29 = v14;
  v16 = *(a1 + 208);
  v30 = v15;
  v31 = v16;
  v32 = *(a1 + 192);
  v33 = vmovn_s64(*(a1 + 232));
  v17 = *(a1 + 264);
  v18 = *(a1 + 272);
  v34 = 0;
  v35 = v17;
  v36 = v18;
  v37 = 0;
  v38 = a4;
  v39 = a1;
  v20[23] = 20;
  strcpy(v20, "MPSNDArrayConv2DTest");
  MPSNDArrayConvolutionLogCommandLine(a1, &v21, a4, v20, 0);
  return (*(*v6 + 16))(v6, a2, a3, &v21);
}

void EncodeNDArrayConvolution2DGradientWithIntput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(a1 + *MEMORY[0x277CD7370]);
  v4 = *(a1 + 228);
  v12 = *(a1 + 224);
  v13 = v4;
  v5 = *(a1 + 168);
  v14 = *(a1 + 160);
  v15 = v5;
  v6 = *(a1 + 152);
  v16 = *(a1 + 144);
  v17 = v6;
  v7 = *(a1 + 184);
  v18 = *(a1 + 176);
  v19 = v7;
  v8 = *(a1 + 208);
  v9 = *(a1 + 192);
  v20 = *(a1 + 200);
  v21 = v8;
  v22 = v9;
  v10 = vmovn_s64(*(a1 + 248));
  v23 = vmovn_s64(*(a1 + 232));
  v24 = v10;
  v25 = 0;
  v26 = 0;
  v27 = 1;
  v28 = a4;
  v29 = a1;
  operator new();
}

void EncodeNDArrayConvolution2DGradientWithWeights(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 224);
  v6 = *(a1 + 228);
  v7 = *(a1 + 160);
  v8 = *(a1 + 168);
  v9 = *(a1 + 144);
  v15 = *(a1 + *MEMORY[0x277CD7370]);
  v10 = *(a1 + 152);
  v16 = v5;
  v17 = v6;
  v11 = *(a1 + 176);
  v18 = v7;
  v19 = v8;
  v12 = *(a1 + 184);
  v20 = v9;
  v21 = v10;
  v13 = *(a1 + 200);
  v22 = v11;
  v23 = v12;
  v14 = *(a1 + 208);
  v24 = v13;
  v25 = v14;
  v26 = *(a1 + 192);
  v27 = vmovn_s64(*(a1 + 232));
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 1;
  v32 = a4;
  v33 = a1;
  operator new();
}

void MPSNDArrayConvolutionLogCommandLine(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a1 + *MEMORY[0x277CD7380]) >= 4)
  {
    v7 = *(a2 + 128);
    v8 = *(v7 + 232);
    if (*(a2 + 120) == 1)
    {
      if (a5)
      {
        [v8 inputTensorAtIndex:{0, a4, a3}];
      }

      else
      {
        [v8 outputTensorAtIndex:{0, a4, a3}];
      }

      [*(v7 + 232) inputTensorAtIndex:2];
      v9 = *(a2 + 8);
    }

    else
    {
      [v8 inputTensorAtIndex:{0, a4, a3}];
      [*(v7 + 232) outputTensorAtIndex:0];
      v9 = *(a2 + 8);
    }

    *(&v149.__r_.__value_.__s + 23) = 0;
    v149.__r_.__value_.__s.__data_[0] = 0;
    *(&v145.__r_.__value_.__s + 23) = 12;
    strcpy(&v145, "-dataFormat ");
    if (v9)
    {
      v10 = "NHWC";
    }

    else
    {
      v10 = "NCHW";
    }

    v11 = std::string::append(&v145, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v146.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v146.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v146, " ");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v148 = v13->__r_.__value_.__r.__words[2];
    v147 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (v148 >= 0)
    {
      v15 = &v147;
    }

    else
    {
      v15 = v147;
    }

    if (v148 >= 0)
    {
      v16 = HIBYTE(v148);
    }

    else
    {
      v16 = *(&v147 + 1);
    }

    std::string::append(&v149, v15, v16);
    if (SHIBYTE(v148) < 0)
    {
      operator delete(v147);
      if ((SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_19:
        if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

LABEL_59:
        operator delete(v145.__r_.__value_.__l.__data_);
LABEL_20:
        *(&v145.__r_.__value_.__s + 23) = 15;
        strcpy(&v145, "-weightsFormat ");
        if (*(a2 + 12) == 1)
        {
          v17 = "OIHW";
        }

        else
        {
          v17 = "HWIO";
        }

        v18 = std::string::append(&v145, v17);
        v19 = *&v18->__r_.__value_.__l.__data_;
        v146.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
        *&v146.__r_.__value_.__l.__data_ = v19;
        v18->__r_.__value_.__l.__size_ = 0;
        v18->__r_.__value_.__r.__words[2] = 0;
        v18->__r_.__value_.__r.__words[0] = 0;
        v20 = std::string::append(&v146, " ");
        v21 = *&v20->__r_.__value_.__l.__data_;
        v148 = v20->__r_.__value_.__r.__words[2];
        v147 = v21;
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        if (v148 >= 0)
        {
          v22 = &v147;
        }

        else
        {
          v22 = v147;
        }

        if (v148 >= 0)
        {
          v23 = HIBYTE(v148);
        }

        else
        {
          v23 = *(&v147 + 1);
        }

        std::string::append(&v149, v22, v23);
        if (SHIBYTE(v148) < 0)
        {
          operator delete(v147);
          if ((SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_31:
            if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_32;
            }

            goto LABEL_62;
          }
        }

        else if ((SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

        operator delete(v146.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_32:
          if (*(a2 + 12) == 1)
          {
LABEL_33:
            *(&v141.__r_.__value_.__s + 23) = 15;
            strcpy(&v141, "-kernelSizes \\[");
            std::to_string(&v140, *(a2 + 40));
            if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v24 = &v140;
            }

            else
            {
              v24 = v140.__r_.__value_.__r.__words[0];
            }

            if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v140.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v140.__r_.__value_.__l.__size_;
            }

            v26 = std::string::append(&v141, v24, size);
            v27 = *&v26->__r_.__value_.__l.__data_;
            v142.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
            *&v142.__r_.__value_.__l.__data_ = v27;
            v26->__r_.__value_.__l.__size_ = 0;
            v26->__r_.__value_.__r.__words[2] = 0;
            v26->__r_.__value_.__r.__words[0] = 0;
            v28 = std::string::append(&v142, ",");
            v29 = *&v28->__r_.__value_.__l.__data_;
            v143.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
            *&v143.__r_.__value_.__l.__data_ = v29;
            v28->__r_.__value_.__l.__size_ = 0;
            v28->__r_.__value_.__r.__words[2] = 0;
            v28->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v139, *(a2 + 32));
            if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v30 = &v139;
            }

            else
            {
              v30 = v139.__r_.__value_.__r.__words[0];
            }

            if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v31 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v31 = v139.__r_.__value_.__l.__size_;
            }

            v32 = std::string::append(&v143, v30, v31);
            v33 = *&v32->__r_.__value_.__l.__data_;
            v144.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
            *&v144.__r_.__value_.__l.__data_ = v33;
            v32->__r_.__value_.__l.__size_ = 0;
            v32->__r_.__value_.__r.__words[2] = 0;
            v32->__r_.__value_.__r.__words[0] = 0;
            v34 = std::string::append(&v144, ",");
            v35 = *&v34->__r_.__value_.__l.__data_;
            v145.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
            *&v145.__r_.__value_.__l.__data_ = v35;
            v34->__r_.__value_.__l.__size_ = 0;
            v34->__r_.__value_.__r.__words[2] = 0;
            v34->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v138, *(a2 + 16));
            if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v36 = &v138;
            }

            else
            {
              v36 = v138.__r_.__value_.__r.__words[0];
            }

            if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v37 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v37 = v138.__r_.__value_.__l.__size_;
            }

            v38 = std::string::append(&v145, v36, v37);
            v39 = *&v38->__r_.__value_.__l.__data_;
            v146.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
            *&v146.__r_.__value_.__l.__data_ = v39;
            v38->__r_.__value_.__l.__size_ = 0;
            v38->__r_.__value_.__r.__words[2] = 0;
            v38->__r_.__value_.__r.__words[0] = 0;
            v40 = std::string::append(&v146, "\\] ");
            v41 = *&v40->__r_.__value_.__l.__data_;
            v148 = v40->__r_.__value_.__r.__words[2];
            v147 = v41;
            v40->__r_.__value_.__l.__size_ = 0;
            v40->__r_.__value_.__r.__words[2] = 0;
            v40->__r_.__value_.__r.__words[0] = 0;
            if (v148 >= 0)
            {
              v42 = &v147;
            }

            else
            {
              v42 = v147;
            }

            if (v148 >= 0)
            {
              v43 = HIBYTE(v148);
            }

            else
            {
              v43 = *(&v147 + 1);
            }

            goto LABEL_87;
          }

LABEL_63:
          *(&v141.__r_.__value_.__s + 23) = 15;
          strcpy(&v141, "-kernelSizes \\[");
          std::to_string(&v140, *(a2 + 16));
          if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v44 = &v140;
          }

          else
          {
            v44 = v140.__r_.__value_.__r.__words[0];
          }

          if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v45 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v45 = v140.__r_.__value_.__l.__size_;
          }

          v46 = std::string::append(&v141, v44, v45);
          v47 = *&v46->__r_.__value_.__l.__data_;
          v142.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
          *&v142.__r_.__value_.__l.__data_ = v47;
          v46->__r_.__value_.__l.__size_ = 0;
          v46->__r_.__value_.__r.__words[2] = 0;
          v46->__r_.__value_.__r.__words[0] = 0;
          v48 = std::string::append(&v142, ",");
          v49 = *&v48->__r_.__value_.__l.__data_;
          v143.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
          *&v143.__r_.__value_.__l.__data_ = v49;
          v48->__r_.__value_.__l.__size_ = 0;
          v48->__r_.__value_.__r.__words[2] = 0;
          v48->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v139, *(a2 + 40));
          if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v50 = &v139;
          }

          else
          {
            v50 = v139.__r_.__value_.__r.__words[0];
          }

          if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v51 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v51 = v139.__r_.__value_.__l.__size_;
          }

          v52 = std::string::append(&v143, v50, v51);
          v53 = *&v52->__r_.__value_.__l.__data_;
          v144.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
          *&v144.__r_.__value_.__l.__data_ = v53;
          v52->__r_.__value_.__l.__size_ = 0;
          v52->__r_.__value_.__r.__words[2] = 0;
          v52->__r_.__value_.__r.__words[0] = 0;
          v54 = std::string::append(&v144, ",");
          v55 = *&v54->__r_.__value_.__l.__data_;
          v145.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
          *&v145.__r_.__value_.__l.__data_ = v55;
          v54->__r_.__value_.__l.__size_ = 0;
          v54->__r_.__value_.__r.__words[2] = 0;
          v54->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v138, *(a2 + 32));
          if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v56 = &v138;
          }

          else
          {
            v56 = v138.__r_.__value_.__r.__words[0];
          }

          if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v57 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v57 = v138.__r_.__value_.__l.__size_;
          }

          v58 = std::string::append(&v145, v56, v57);
          v59 = *&v58->__r_.__value_.__l.__data_;
          v146.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
          *&v146.__r_.__value_.__l.__data_ = v59;
          v58->__r_.__value_.__l.__size_ = 0;
          v58->__r_.__value_.__r.__words[2] = 0;
          v58->__r_.__value_.__r.__words[0] = 0;
          v60 = std::string::append(&v146, "\\] ");
          v61 = *&v60->__r_.__value_.__l.__data_;
          v148 = v60->__r_.__value_.__r.__words[2];
          v147 = v61;
          v60->__r_.__value_.__l.__size_ = 0;
          v60->__r_.__value_.__r.__words[2] = 0;
          v60->__r_.__value_.__r.__words[0] = 0;
          if (v148 >= 0)
          {
            v42 = &v147;
          }

          else
          {
            v42 = v147;
          }

          if (v148 >= 0)
          {
            v43 = HIBYTE(v148);
          }

          else
          {
            v43 = *(&v147 + 1);
          }

LABEL_87:
          std::string::append(&v149, v42, v43);
          if (SHIBYTE(v148) < 0)
          {
            operator delete(v147);
            if ((SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_89:
              if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_90;
              }

              goto LABEL_124;
            }
          }

          else if ((SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_89;
          }

          operator delete(v146.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_90:
            if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_91;
            }

            goto LABEL_125;
          }

LABEL_124:
          operator delete(v138.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_91:
            if ((SHIBYTE(v144.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_92;
            }

            goto LABEL_126;
          }

LABEL_125:
          operator delete(v145.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v144.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_92:
            if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_93;
            }

            goto LABEL_127;
          }

LABEL_126:
          operator delete(v144.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_93:
            if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_94;
            }

            goto LABEL_128;
          }

LABEL_127:
          operator delete(v139.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_94:
            if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_95;
            }

            goto LABEL_129;
          }

LABEL_128:
          operator delete(v143.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_95:
            if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_96;
            }

            goto LABEL_130;
          }

LABEL_129:
          operator delete(v142.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_96:
            if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_97;
            }

            goto LABEL_131;
          }

LABEL_130:
          operator delete(v140.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_97:
            if (*(a2 + 8))
            {
LABEL_98:
              *(&v141.__r_.__value_.__s + 23) = 13;
              strcpy(&v141, "-strides \\[1,");
              std::to_string(&v140, a1[23]);
              if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v62 = &v140;
              }

              else
              {
                v62 = v140.__r_.__value_.__r.__words[0];
              }

              if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v63 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v63 = v140.__r_.__value_.__l.__size_;
              }

              v64 = std::string::append(&v141, v62, v63);
              v65 = *&v64->__r_.__value_.__l.__data_;
              v142.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
              *&v142.__r_.__value_.__l.__data_ = v65;
              v64->__r_.__value_.__l.__size_ = 0;
              v64->__r_.__value_.__r.__words[2] = 0;
              v64->__r_.__value_.__r.__words[0] = 0;
              v66 = std::string::append(&v142, ",");
              v67 = *&v66->__r_.__value_.__l.__data_;
              v143.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
              *&v143.__r_.__value_.__l.__data_ = v67;
              v66->__r_.__value_.__l.__size_ = 0;
              v66->__r_.__value_.__r.__words[2] = 0;
              v66->__r_.__value_.__r.__words[0] = 0;
              std::to_string(&v139, a1[22]);
              if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v68 = &v139;
              }

              else
              {
                v68 = v139.__r_.__value_.__r.__words[0];
              }

              if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v69 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v69 = v139.__r_.__value_.__l.__size_;
              }

              v70 = std::string::append(&v143, v68, v69);
              v71 = *&v70->__r_.__value_.__l.__data_;
              v144.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
              *&v144.__r_.__value_.__l.__data_ = v71;
              v70->__r_.__value_.__l.__size_ = 0;
              v70->__r_.__value_.__r.__words[2] = 0;
              v70->__r_.__value_.__r.__words[0] = 0;
              v72 = std::string::append(&v144, ",");
              v73 = *&v72->__r_.__value_.__l.__data_;
              v145.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
              *&v145.__r_.__value_.__l.__data_ = v73;
              v72->__r_.__value_.__l.__size_ = 0;
              v72->__r_.__value_.__r.__words[2] = 0;
              v72->__r_.__value_.__r.__words[0] = 0;
              std::to_string(&v138, 1);
              if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v74 = &v138;
              }

              else
              {
                v74 = v138.__r_.__value_.__r.__words[0];
              }

              if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v75 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v75 = v138.__r_.__value_.__l.__size_;
              }

              v76 = std::string::append(&v145, v74, v75);
              v77 = *&v76->__r_.__value_.__l.__data_;
              v146.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
              *&v146.__r_.__value_.__l.__data_ = v77;
              v76->__r_.__value_.__l.__size_ = 0;
              v76->__r_.__value_.__r.__words[2] = 0;
              v76->__r_.__value_.__r.__words[0] = 0;
              v78 = std::string::append(&v146, "\\] ");
              v79 = *&v78->__r_.__value_.__l.__data_;
              v148 = v78->__r_.__value_.__r.__words[2];
              v147 = v79;
              v78->__r_.__value_.__l.__size_ = 0;
              v78->__r_.__value_.__r.__words[2] = 0;
              v78->__r_.__value_.__r.__words[0] = 0;
              if (v148 >= 0)
              {
                v80 = &v147;
              }

              else
              {
                v80 = v147;
              }

              if (v148 >= 0)
              {
                v81 = HIBYTE(v148);
              }

              else
              {
                v81 = *(&v147 + 1);
              }

              goto LABEL_156;
            }

LABEL_132:
            *(&v141.__r_.__value_.__s + 23) = 13;
            strcpy(&v141, "-strides \\[1,");
            std::to_string(&v140, 1);
            if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v82 = &v140;
            }

            else
            {
              v82 = v140.__r_.__value_.__r.__words[0];
            }

            if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v83 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v83 = v140.__r_.__value_.__l.__size_;
            }

            v84 = std::string::append(&v141, v82, v83);
            v85 = *&v84->__r_.__value_.__l.__data_;
            v142.__r_.__value_.__r.__words[2] = v84->__r_.__value_.__r.__words[2];
            *&v142.__r_.__value_.__l.__data_ = v85;
            v84->__r_.__value_.__l.__size_ = 0;
            v84->__r_.__value_.__r.__words[2] = 0;
            v84->__r_.__value_.__r.__words[0] = 0;
            v86 = std::string::append(&v142, ",");
            v87 = *&v86->__r_.__value_.__l.__data_;
            v143.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
            *&v143.__r_.__value_.__l.__data_ = v87;
            v86->__r_.__value_.__l.__size_ = 0;
            v86->__r_.__value_.__r.__words[2] = 0;
            v86->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v139, a1[23]);
            if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v88 = &v139;
            }

            else
            {
              v88 = v139.__r_.__value_.__r.__words[0];
            }

            if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v89 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v89 = v139.__r_.__value_.__l.__size_;
            }

            v90 = std::string::append(&v143, v88, v89);
            v91 = *&v90->__r_.__value_.__l.__data_;
            v144.__r_.__value_.__r.__words[2] = v90->__r_.__value_.__r.__words[2];
            *&v144.__r_.__value_.__l.__data_ = v91;
            v90->__r_.__value_.__l.__size_ = 0;
            v90->__r_.__value_.__r.__words[2] = 0;
            v90->__r_.__value_.__r.__words[0] = 0;
            v92 = std::string::append(&v144, ",");
            v93 = *&v92->__r_.__value_.__l.__data_;
            v145.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
            *&v145.__r_.__value_.__l.__data_ = v93;
            v92->__r_.__value_.__l.__size_ = 0;
            v92->__r_.__value_.__r.__words[2] = 0;
            v92->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v138, a1[22]);
            if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v94 = &v138;
            }

            else
            {
              v94 = v138.__r_.__value_.__r.__words[0];
            }

            if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v95 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v95 = v138.__r_.__value_.__l.__size_;
            }

            v96 = std::string::append(&v145, v94, v95);
            v97 = *&v96->__r_.__value_.__l.__data_;
            v146.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
            *&v146.__r_.__value_.__l.__data_ = v97;
            v96->__r_.__value_.__l.__size_ = 0;
            v96->__r_.__value_.__r.__words[2] = 0;
            v96->__r_.__value_.__r.__words[0] = 0;
            v98 = std::string::append(&v146, "\\] ");
            v99 = *&v98->__r_.__value_.__l.__data_;
            v148 = v98->__r_.__value_.__r.__words[2];
            v147 = v99;
            v98->__r_.__value_.__l.__size_ = 0;
            v98->__r_.__value_.__r.__words[2] = 0;
            v98->__r_.__value_.__r.__words[0] = 0;
            if (v148 >= 0)
            {
              v80 = &v147;
            }

            else
            {
              v80 = v147;
            }

            if (v148 >= 0)
            {
              v81 = HIBYTE(v148);
            }

            else
            {
              v81 = *(&v147 + 1);
            }

LABEL_156:
            std::string::append(&v149, v80, v81);
            if (SHIBYTE(v148) < 0)
            {
              operator delete(v147);
              if ((SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_158:
                if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_159;
                }

                goto LABEL_193;
              }
            }

            else if ((SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_158;
            }

            operator delete(v146.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_159:
              if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_160;
              }

              goto LABEL_194;
            }

LABEL_193:
            operator delete(v138.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_160:
              if ((SHIBYTE(v144.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_161;
              }

              goto LABEL_195;
            }

LABEL_194:
            operator delete(v145.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v144.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_161:
              if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_162;
              }

              goto LABEL_196;
            }

LABEL_195:
            operator delete(v144.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_162:
              if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_163;
              }

              goto LABEL_197;
            }

LABEL_196:
            operator delete(v139.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_163:
              if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_164;
              }

              goto LABEL_198;
            }

LABEL_197:
            operator delete(v143.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_164:
              if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_165;
              }

              goto LABEL_199;
            }

LABEL_198:
            operator delete(v142.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_165:
              if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_166;
              }

              goto LABEL_200;
            }

LABEL_199:
            operator delete(v140.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_166:
              if (*(a2 + 8))
              {
LABEL_167:
                *(&v141.__r_.__value_.__s + 23) = 19;
                strcpy(&v141, "-dilationRates \\[1,");
                std::to_string(&v140, a1[26]);
                if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v100 = &v140;
                }

                else
                {
                  v100 = v140.__r_.__value_.__r.__words[0];
                }

                if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v101 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v101 = v140.__r_.__value_.__l.__size_;
                }

                v102 = std::string::append(&v141, v100, v101);
                v103 = *&v102->__r_.__value_.__l.__data_;
                v142.__r_.__value_.__r.__words[2] = v102->__r_.__value_.__r.__words[2];
                *&v142.__r_.__value_.__l.__data_ = v103;
                v102->__r_.__value_.__l.__size_ = 0;
                v102->__r_.__value_.__r.__words[2] = 0;
                v102->__r_.__value_.__r.__words[0] = 0;
                v104 = std::string::append(&v142, ",");
                v105 = *&v104->__r_.__value_.__l.__data_;
                v143.__r_.__value_.__r.__words[2] = v104->__r_.__value_.__r.__words[2];
                *&v143.__r_.__value_.__l.__data_ = v105;
                v104->__r_.__value_.__l.__size_ = 0;
                v104->__r_.__value_.__r.__words[2] = 0;
                v104->__r_.__value_.__r.__words[0] = 0;
                std::to_string(&v139, a1[25]);
                if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v106 = &v139;
                }

                else
                {
                  v106 = v139.__r_.__value_.__r.__words[0];
                }

                if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v107 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v107 = v139.__r_.__value_.__l.__size_;
                }

                v108 = std::string::append(&v143, v106, v107);
                v109 = *&v108->__r_.__value_.__l.__data_;
                v144.__r_.__value_.__r.__words[2] = v108->__r_.__value_.__r.__words[2];
                *&v144.__r_.__value_.__l.__data_ = v109;
                v108->__r_.__value_.__l.__size_ = 0;
                v108->__r_.__value_.__r.__words[2] = 0;
                v108->__r_.__value_.__r.__words[0] = 0;
                v110 = std::string::append(&v144, ",");
                v111 = *&v110->__r_.__value_.__l.__data_;
                v145.__r_.__value_.__r.__words[2] = v110->__r_.__value_.__r.__words[2];
                *&v145.__r_.__value_.__l.__data_ = v111;
                v110->__r_.__value_.__l.__size_ = 0;
                v110->__r_.__value_.__r.__words[2] = 0;
                v110->__r_.__value_.__r.__words[0] = 0;
                std::to_string(&v138, 1);
                if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v112 = &v138;
                }

                else
                {
                  v112 = v138.__r_.__value_.__r.__words[0];
                }

                if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v113 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v113 = v138.__r_.__value_.__l.__size_;
                }

                v114 = std::string::append(&v145, v112, v113);
                v115 = *&v114->__r_.__value_.__l.__data_;
                v146.__r_.__value_.__r.__words[2] = v114->__r_.__value_.__r.__words[2];
                *&v146.__r_.__value_.__l.__data_ = v115;
                v114->__r_.__value_.__l.__size_ = 0;
                v114->__r_.__value_.__r.__words[2] = 0;
                v114->__r_.__value_.__r.__words[0] = 0;
                v116 = std::string::append(&v146, "\\] ");
                v117 = *&v116->__r_.__value_.__l.__data_;
                v148 = v116->__r_.__value_.__r.__words[2];
                v147 = v117;
                v116->__r_.__value_.__l.__size_ = 0;
                v116->__r_.__value_.__r.__words[2] = 0;
                v116->__r_.__value_.__r.__words[0] = 0;
                if (v148 >= 0)
                {
                  v118 = &v147;
                }

                else
                {
                  v118 = v147;
                }

                if (v148 >= 0)
                {
                  v119 = HIBYTE(v148);
                }

                else
                {
                  v119 = *(&v147 + 1);
                }

                goto LABEL_225;
              }

LABEL_201:
              *(&v141.__r_.__value_.__s + 23) = 19;
              strcpy(&v141, "-dilationRates \\[1,");
              std::to_string(&v140, 1);
              if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v120 = &v140;
              }

              else
              {
                v120 = v140.__r_.__value_.__r.__words[0];
              }

              if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v121 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v121 = v140.__r_.__value_.__l.__size_;
              }

              v122 = std::string::append(&v141, v120, v121);
              v123 = *&v122->__r_.__value_.__l.__data_;
              v142.__r_.__value_.__r.__words[2] = v122->__r_.__value_.__r.__words[2];
              *&v142.__r_.__value_.__l.__data_ = v123;
              v122->__r_.__value_.__l.__size_ = 0;
              v122->__r_.__value_.__r.__words[2] = 0;
              v122->__r_.__value_.__r.__words[0] = 0;
              v124 = std::string::append(&v142, ",");
              v125 = *&v124->__r_.__value_.__l.__data_;
              v143.__r_.__value_.__r.__words[2] = v124->__r_.__value_.__r.__words[2];
              *&v143.__r_.__value_.__l.__data_ = v125;
              v124->__r_.__value_.__l.__size_ = 0;
              v124->__r_.__value_.__r.__words[2] = 0;
              v124->__r_.__value_.__r.__words[0] = 0;
              std::to_string(&v139, a1[26]);
              if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v126 = &v139;
              }

              else
              {
                v126 = v139.__r_.__value_.__r.__words[0];
              }

              if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v127 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v127 = v139.__r_.__value_.__l.__size_;
              }

              v128 = std::string::append(&v143, v126, v127);
              v129 = *&v128->__r_.__value_.__l.__data_;
              v144.__r_.__value_.__r.__words[2] = v128->__r_.__value_.__r.__words[2];
              *&v144.__r_.__value_.__l.__data_ = v129;
              v128->__r_.__value_.__l.__size_ = 0;
              v128->__r_.__value_.__r.__words[2] = 0;
              v128->__r_.__value_.__r.__words[0] = 0;
              v130 = std::string::append(&v144, ",");
              v131 = *&v130->__r_.__value_.__l.__data_;
              v145.__r_.__value_.__r.__words[2] = v130->__r_.__value_.__r.__words[2];
              *&v145.__r_.__value_.__l.__data_ = v131;
              v130->__r_.__value_.__l.__size_ = 0;
              v130->__r_.__value_.__r.__words[2] = 0;
              v130->__r_.__value_.__r.__words[0] = 0;
              std::to_string(&v138, a1[25]);
              if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v132 = &v138;
              }

              else
              {
                v132 = v138.__r_.__value_.__r.__words[0];
              }

              if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v133 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v133 = v138.__r_.__value_.__l.__size_;
              }

              v134 = std::string::append(&v145, v132, v133);
              v135 = *&v134->__r_.__value_.__l.__data_;
              v146.__r_.__value_.__r.__words[2] = v134->__r_.__value_.__r.__words[2];
              *&v146.__r_.__value_.__l.__data_ = v135;
              v134->__r_.__value_.__l.__size_ = 0;
              v134->__r_.__value_.__r.__words[2] = 0;
              v134->__r_.__value_.__r.__words[0] = 0;
              v136 = std::string::append(&v146, "\\] ");
              v137 = *&v136->__r_.__value_.__l.__data_;
              v148 = v136->__r_.__value_.__r.__words[2];
              v147 = v137;
              v136->__r_.__value_.__l.__size_ = 0;
              v136->__r_.__value_.__r.__words[2] = 0;
              v136->__r_.__value_.__r.__words[0] = 0;
              if (v148 >= 0)
              {
                v118 = &v147;
              }

              else
              {
                v118 = v147;
              }

              if (v148 >= 0)
              {
                v119 = HIBYTE(v148);
              }

              else
              {
                v119 = *(&v147 + 1);
              }

LABEL_225:
              std::string::append(&v149, v118, v119);
              if (SHIBYTE(v148) < 0)
              {
                operator delete(v147);
                if ((SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_227:
                  if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_228;
                  }

                  goto LABEL_239;
                }
              }

              else if ((SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_227;
              }

              operator delete(v146.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_228:
                if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_229;
                }

                goto LABEL_240;
              }

LABEL_239:
              operator delete(v138.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_229:
                if ((SHIBYTE(v144.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_230;
                }

                goto LABEL_241;
              }

LABEL_240:
              operator delete(v145.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v144.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_230:
                if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_231;
                }

                goto LABEL_242;
              }

LABEL_241:
              operator delete(v144.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_231:
                if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_232;
                }

                goto LABEL_243;
              }

LABEL_242:
              operator delete(v139.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_232:
                if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_233;
                }

                goto LABEL_244;
              }

LABEL_243:
              operator delete(v143.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_233:
                if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_234;
                }

                goto LABEL_245;
              }

LABEL_244:
              operator delete(v142.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_234:
                if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_235;
                }

LABEL_246:
                operator delete(v141.__r_.__value_.__l.__data_);
LABEL_235:
                std::string::append(&v149, "-packed 3 ");
                if (*(a2 + 8))
                {
                  operator new();
                }

                operator new();
              }

LABEL_245:
              operator delete(v140.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_235;
              }

              goto LABEL_246;
            }

LABEL_200:
            operator delete(v141.__r_.__value_.__l.__data_);
            if (*(a2 + 8))
            {
              goto LABEL_167;
            }

            goto LABEL_201;
          }

LABEL_131:
          operator delete(v141.__r_.__value_.__l.__data_);
          if (*(a2 + 8))
          {
            goto LABEL_98;
          }

          goto LABEL_132;
        }

LABEL_62:
        operator delete(v145.__r_.__value_.__l.__data_);
        if (*(a2 + 12) == 1)
        {
          goto LABEL_33;
        }

        goto LABEL_63;
      }
    }

    else if ((SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    operator delete(v146.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_59;
  }
}

void sub_239ABE7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 97) < 0)
  {
    operator delete(*(v26 - 120));
  }

  _Unwind_Resume(a1);
}

void sub_239ABF0A8()
{
  if (*(v0 - 121) < 0)
  {
    operator delete(*(v0 - 144));
    if ((*(v0 - 153) & 0x80000000) == 0)
    {
LABEL_3:
      if (*(v0 - 185) < 0)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }
  }

  else if ((*(v0 - 153) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v0 - 176));
  if (*(v0 - 185) < 0)
  {
LABEL_10:
    JUMPOUT(0x239ABEFE8);
  }

LABEL_11:
  JUMPOUT(0x239ABEFECLL);
}

uint64_t MPSNDArraySDPAA18Behavior::EncodeSDPA(uint64_t a1, MPSKernel *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = [*(a5 + 232) inputTensorAtIndex:0];
  v10 = [*(a5 + 232) inputTensorAtIndex:1];
  v11 = [*(a5 + 232) inputTensorAtIndex:2];
  DimensionSize = [*(a5 + 232) outputTensorAtIndex:0];
  if (*(v9 + 2) != *(DimensionSize + 8))
  {
    DimensionSize = MTLReportFailureTypeEnabled();
    if (DimensionSize)
    {
      DimensionSize = MTLReportFailure();
    }
  }

  v13 = *(&a2->super.isa + *MEMORY[0x277CD7370]);
  v14 = *(&a2->super.isa + *MEMORY[0x277CD7350]);
  v15 = *(v9 + 2);
  v16 = -1879048176;
  if (v15 != -1879048176 && (v16 = 268435472, v15 != 268435472) || *(v10 + 8) != v16 || *(v11 + 8) != v16)
  {
    if (qword_27DF869A8 == -1)
    {
      if (_MergedGlobals_5 != 1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      dispatch_once(&qword_27DF869A8, &__block_literal_global_4);
      if (_MergedGlobals_5 != 1)
      {
        goto LABEL_9;
      }
    }
  }

  [(MPSKernel *)a2 layout];
  DimensionSize = BaseTensor::GetDimensionSize(v9);
  if (DimensionSize >= 8)
  {
    MPSKernel_LogInfo(a2, v17, "A18 Encoder: Encoding 16x16 MXU based SDPA kernel\n");
    EncodeSDPATileBasedCommon(a3, a4, a5, v14, v13, a2, qword_239B1F3E8);
    return 0;
  }

LABEL_9:

  return MPSNDArraySDPAA14Behavior::EncodeSDPA(DimensionSize, a2, a3, a4, a5);
}

void EncodeSDPATileBasedCommon(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, MPSKernel *a6, uint64_t *a7)
{
  v191 = *(&a6->super.isa + *MEMORY[0x277CD7378]);
  v11 = *(&a6->super.isa + *MEMORY[0x277CD7360]);
  v12 = *(&a6->super.isa + *MEMORY[0x277CD7368]);
  [(MPSKernel *)a6 alpha];
  v14 = v13;
  v190 = a6;
  v196 = [(MPSKernel *)a6 layout];
  MEMORY[0x23EE7C450](v287, a2, 0);
  [*(a3 + 232) graph];
  v204 = a7;
  v179 = v12;
  v180 = v11;
  v201 = a3;
  if ([*(a3 + 16) count])
  {
    operator new();
  }

  v284 = 0u;
  v285 = 0u;
  v286 = 1065353216;
  v15 = *(a3 + 16);
  LODWORD(v251) = 0;
  v256 = &v251;
  v16 = [v15 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v284, 0, &v256) + 5)}];
  v17 = *(a3 + 16);
  LODWORD(v251) = 1;
  v256 = &v251;
  v18 = [v17 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v284, 1u, &v256) + 5)}];
  v19 = *(a3 + 16);
  LODWORD(v251) = 2;
  v256 = &v251;
  v189 = [v19 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v284, 2u, &v256) + 5)}];
  v20 = *(a3 + 16);
  LODWORD(v251) = 3;
  v256 = &v251;
  v21 = [v20 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v284, 3u, &v256) + 5)}];
  v22 = *(a3 + 208);
  v23 = [*(a3 + 232) outputTensorAtIndex:{0, v168}];
  if (v196 == 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  v25 = *MEMORY[0x277CD7410];
  v26 = *(v16 + v25);
  v27 = *(v16 + v25 + 16);
  v28 = *(v16 + v25 + 32);
  v29 = *(v16 + v25 + 48);
  v30 = *MEMORY[0x277CD73D8];
  v31 = *(v16 + v30);
  v246[3] = v29;
  v246[2] = v28;
  v246[1] = v27;
  v246[0] = v26;
  v32 = *(v246 + (v31 & 0xF));
  if (v196 == 1)
  {
    v33 = 2;
  }

  else
  {
    v33 = 1;
  }

  v241 = v31;
  v182 = v33;
  v245[3] = v29;
  v245[2] = v28;
  v245[1] = v27;
  v245[0] = v26;
  v207 = *(v245 + (*(&v241 | v33 & 0xF) & 0xF));
  v34 = (v18 + v25);
  v35 = *v34;
  v36 = v34[1];
  v37 = v34[2];
  v38 = v34[3];
  v188 = v18;
  v242 = *(v18 + v30);
  v248[3] = v38;
  v248[2] = v37;
  v248[1] = v36;
  v248[0] = v35;
  v39 = *(v248 + (*(&v242 | v33 & 0xF) & 0xF));
  v187 = v24;
  v244[3] = v29;
  v244[2] = v28;
  v244[1] = v27;
  v244[0] = v26;
  v186 = *(v244 + (*(&v241 | v24 & 0xF) & 0xF));
  v247[3] = v38;
  v247[2] = v37;
  v247[1] = v36;
  v247[0] = v35;
  v177 = *(v247 + (*(&v242 | v24 & 0xF) & 0xF));
  v243[3] = v29;
  v243[2] = v28;
  v243[1] = v27;
  v243[0] = v26;
  v185 = *(v243 + (BYTE3(v31) & 0xF));
  v183 = *(a4 + 1482);
  v184 = v22;
  v40 = *(v204 + 2);
  v41 = *v204;
  v42 = *(v204 + 4);
  if (qword_27DF869B0 != -1)
  {
    v64 = v23;
    dispatch_once(&qword_27DF869B0, &__block_literal_global_170);
    v23 = v64;
  }

  v43 = dword_27DF8699C;
  v181 = v40;
  v176 = v23;
  v178 = v21;
  if (qword_27DF869B8 != -1)
  {
    dispatch_once(&qword_27DF869B8, &__block_literal_global_173);
  }

  v44 = v32 + v42 - 1;
  v45 = -v42;
  v46 = dword_27DF869A0;
  if (qword_27DF869C0 == -1)
  {
    v47 = v44 & v45;
    v48 = dword_27DF869A4;
    if (v32 > 0x80)
    {
      goto LABEL_15;
    }
  }

  else
  {
    dispatch_once(&qword_27DF869C0, &__block_literal_global_176);
    v47 = v44 & v45;
    v48 = dword_27DF869A4;
    if (v32 > 0x80)
    {
LABEL_15:
      if (!v43 || (v49 = v43, v43 % v181))
      {
        if (((v207 + v181 - 1) & -v181) >= v181)
        {
          v49 = v181;
        }

        else
        {
          v49 = (v207 + v181 - 1) & -v181;
        }
      }

      if (!v46 || (v50 = v46, v46 % v41))
      {
        v50 = (v41 + v39 - 1) & -v41;
        if (2 * v41 < v50)
        {
          v50 = 2 * v41;
        }
      }

      if (v50 >= v47)
      {
        v51 = v47;
      }

      else
      {
        v51 = v50;
      }

      v52 = (v51 + v39 - 1) & -v51;
      if (v52 >= v47)
      {
        v52 = v47;
      }

      if (v52 >= 0x40)
      {
        v52 = 64;
      }

      v205 = v52;
      if (v47 >= v52)
      {
        v53 = v52;
      }

      else
      {
        v53 = v47;
      }

      if (!v48 || (v203 = v48, v48 % v49))
      {
        v54 = (v207 + v49 - 1) & -v49;
        if (v49 < v54)
        {
          v54 = v49;
        }

        v203 = v54;
      }

      v194 = v51;
      v199 = v49;
      if (v181 == 8)
      {
        v193 = v41;
        v58 = v41 == 8;
        v55 = v188;
        v56 = v39;
        if (v58)
        {
          v57 = (v207 + 7) & 0xFFFFFFF8;
          if (((v207 + 7) & 0xFFFFFFF0) != 0)
          {
            v57 = 16;
          }

          v58 = (v43 & 7) != 0 || v43 == 0;
          if (v58)
          {
            v59 = v57;
          }

          else
          {
            v59 = v43;
          }

          if (((v39 + 7) & 0xFFFFFFF0) != 0)
          {
            v60 = 16;
          }

          else
          {
            v60 = (v39 + 7) & 0xFFFFFFF8;
          }

          if ((v46 & 7) == 0 && v46 != 0)
          {
            v60 = v46;
          }

          if (v60 >= v47)
          {
            v60 = v47;
          }

          v194 = v60;
          v62 = (v60 + v39 - 1) & -v60;
          if (v62 >= v47)
          {
            v62 = v47;
          }

          if (v62 >= 0x80)
          {
            v62 = 128;
          }

          v205 = v62;
          if (v47 < v62)
          {
            v62 = v47;
          }

          if (v62 >= 0x20)
          {
            v53 = 32;
          }

          else
          {
            v53 = v62;
          }

          v199 = v59;
          if (v48 && !(v48 % v59))
          {
            v193 = 8;
            v203 = v48;
          }

          else
          {
            v63 = (v207 + v59 - 1) & -v59;
            if (v59 < v63)
            {
              v63 = v59;
            }

            v203 = v63;
            v193 = 8;
          }
        }
      }

      else
      {
        v193 = v41;
        v55 = v188;
        v56 = v39;
      }

      goto LABEL_127;
    }
  }

  if (!v43 || (v65 = v43, v43 % v181))
  {
    if (((v207 + v181 - 1) & -v181) >= v181)
    {
      v65 = v181;
    }

    else
    {
      v65 = (v207 + v181 - 1) & -v181;
    }
  }

  if (v46 && !(v46 % v41))
  {
    v66 = v46;
  }

  else if (2 * v41 >= ((v41 + v39 - 1) & -v41))
  {
    v66 = (v41 + v39 - 1) & -v41;
  }

  else
  {
    v66 = 2 * v41;
  }

  v67 = (v66 + v39 - 1) & -v66;
  if (v66 < v67)
  {
    v67 = v66;
  }

  v205 = v67;
  if (v32 == 128)
  {
    v53 = 64;
  }

  else
  {
    v53 = v47;
  }

  if (!v48 || (v203 = v48, v48 % v65))
  {
    v68 = (v207 + v65 - 1) & -v65;
    if (4 * v65 < v68)
    {
      v68 = 4 * v65;
    }

    v203 = v68;
  }

  if (v47 >= 0x80)
  {
    v69 = 128;
  }

  else
  {
    v69 = v47;
  }

  v193 = v69;
  if (v181 == 8)
  {
    if (((v207 + 7) & 0xFFFFFFF0) != 0)
    {
      v70 = 16;
    }

    else
    {
      v70 = (v207 + 7) & 0xFFFFFFF8;
    }

    if ((v43 & 7) == 0 && v43 != 0)
    {
      v70 = v43;
    }

    v199 = v70;
    if (!v46 || v46 % v41)
    {
      if (4 * v41 >= ((v41 + v39 - 1) & -v41))
      {
        v46 = (v41 + v39 - 1) & -v41;
      }

      else
      {
        v46 = 4 * v41;
      }
    }

    v72 = (v46 + v39 - 1) & -v46;
    if (v46 < v72)
    {
      v72 = v46;
    }

    v205 = v72;
    if (v47 >= 0x20)
    {
      v53 = 32;
    }

    else
    {
      v53 = v47;
    }

    v55 = v188;
    if (v48 && !(v48 % v70))
    {
      v194 = v46;
      v203 = v48;
    }

    else
    {
      v73 = (v207 + v70 - 1) & -v70;
      if (2 * v70 < v73)
      {
        v73 = 2 * v70;
      }

      v203 = v73;
      v194 = v46;
    }
  }

  else
  {
    v194 = v66;
    v199 = v65;
    v55 = v188;
  }

  v56 = v39;
LABEL_127:
  v192 = v53;
  v174 = v32 / v53;
  if (v207 % v203)
  {
    v74 = v178;
    v172 = 0;
    v175 = v56 / v205;
    v75 = MEMORY[0x277CD7428];
    if (v191)
    {
      goto LABEL_141;
    }

    goto LABEL_136;
  }

  v74 = v178;
  if (v32 % v53 || v56 % v205)
  {
    v76 = 0;
    if (v32 <= 0x80)
    {
LABEL_133:
      if (!(v32 % v42))
      {
        v172 = v56 == v56 / v205 * v205;
        v175 = v56 / v205;
        v75 = MEMORY[0x277CD7428];
        if (v191)
        {
          goto LABEL_141;
        }

        goto LABEL_136;
      }

      v76 = 0;
    }
  }

  else
  {
    v76 = v56 % v53 == 0;
    if (v32 <= 0x80)
    {
      goto LABEL_133;
    }
  }

  v172 = v76;
  v175 = v56 / v205;
  v75 = MEMORY[0x277CD7428];
  if (v191)
  {
    goto LABEL_141;
  }

LABEL_136:
  validateSDPA(v16, v55, v189, v74, v196);
  if (*(v16 + *v75 + 8 * (*(v16 + *MEMORY[0x277CD73D8]) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v55 + *v75 + 8 * (*(v55 + *MEMORY[0x277CD73D8]) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v189 + *v75 + 8 * (*(v189 + *MEMORY[0x277CD73D8]) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v74 && *(v74 + *v75 + 8 * (*(v74 + *MEMORY[0x277CD73D8]) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_141:
  v256 = __PAIR64__(v32, v14);
  v262 = v185;
  v261 = v186 / v177;
  v260 = v186;
  v259 = v56;
  v258 = v207;
  LODWORD(v250[0]) = 0;
  *&v251 = v250;
  v264 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v284, 0, &v251) + 20);
  LODWORD(v250[0]) = 1;
  *&v251 = v250;
  v265 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v284, 1u, &v251) + 20);
  LODWORD(v250[0]) = 2;
  *&v251 = v250;
  v266 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v284, 2u, &v251) + 20);
  LODWORD(v250[0]) = 3;
  *&v251 = v250;
  v267 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v284, 3u, &v251) + 20);
  v268 = -1;
  v77 = *v75;
  v78 = *(v16 + v77);
  v79 = *(v16 + v77 + 16);
  v80 = *(v16 + v77 + 32);
  v81 = *(v16 + v77 + 48);
  v82 = *(v16 + v77 + 64);
  v83 = *(v16 + v77 + 80);
  v84 = *(v16 + v77 + 96);
  v85 = *(v16 + v77 + 112);
  v86 = *MEMORY[0x277CD73D8];
  v216 = *(v16 + v86);
  v240[7] = v85;
  v240[6] = v84;
  v240[5] = v83;
  v240[4] = v82;
  v240[3] = v81;
  v240[2] = v80;
  v240[1] = v79;
  v240[0] = v78;
  v269 = *(v240 + (*(&v216 | v182 & 0xF) & 0xF));
  v239[7] = v85;
  v239[6] = v84;
  v239[5] = v83;
  v239[4] = v82;
  v239[3] = v81;
  v239[2] = v80;
  v239[1] = v79;
  v239[0] = v78;
  v270 = *(v239 + (*(&v216 | v187 & 0xF) & 0xF));
  v238[7] = v85;
  v238[6] = v84;
  v238[5] = v83;
  v238[4] = v82;
  v238[3] = v81;
  v238[2] = v80;
  v238[1] = v79;
  v238[0] = v78;
  v271 = *(v238 + (BYTE3(v216) & 0xF));
  v87 = *(v55 + v77);
  v88 = *(v55 + v77 + 16);
  v89 = *(v55 + v77 + 32);
  v90 = *(v55 + v77 + 48);
  v91 = *(v55 + v77 + 64);
  v92 = *(v55 + v77 + 80);
  v93 = *(v55 + v77 + 96);
  v94 = *(v55 + v86);
  v235 = *(v55 + v77 + 112);
  v234[6] = v93;
  v234[5] = v92;
  v234[4] = v91;
  v234[3] = v90;
  v234[2] = v89;
  v234[1] = v88;
  v234[0] = v87;
  v217 = v94;
  v272 = *(v234 + (*(&v217 | v182 & 0xF) & 0xF));
  v236[7] = v235;
  v236[6] = v93;
  v236[5] = v92;
  v236[4] = v91;
  v236[3] = v90;
  v236[2] = v89;
  v236[1] = v88;
  v236[0] = v87;
  v273 = *(v236 + (*(&v217 | v187 & 0xF) & 0xF));
  v237[7] = v235;
  v237[6] = v93;
  v237[5] = v92;
  v237[4] = v91;
  v237[3] = v90;
  v237[2] = v89;
  v237[1] = v88;
  v237[0] = v87;
  v274 = *(v237 + (BYTE3(v94) & 0xF));
  v95 = *(v74 + v77);
  v96 = *(v74 + v77 + 16);
  v97 = *(v74 + v77 + 32);
  v98 = *(v74 + v77 + 48);
  v99 = *(v74 + v77 + 64);
  v100 = *(v74 + v77 + 80);
  v101 = *(v74 + v86);
  v102 = *(v74 + v77 + 96);
  v231 = *(v74 + v77 + 112);
  v230[6] = v102;
  v230[5] = v100;
  v230[4] = v99;
  v230[3] = v98;
  v230[2] = v97;
  v230[1] = v96;
  v230[0] = v95;
  v218 = v101;
  v275 = *(v230 + (*(&v218 | v182 & 0xF) & 0xF));
  v232[7] = v231;
  v232[6] = v102;
  v232[5] = v100;
  v232[4] = v99;
  v232[3] = v98;
  v232[2] = v97;
  v232[1] = v96;
  v232[0] = v95;
  v276 = *(v232 + (*(&v218 | v187 & 0xF) & 0xF));
  v233[7] = v231;
  v233[6] = v102;
  v233[5] = v100;
  v233[4] = v99;
  v233[3] = v98;
  v233[2] = v97;
  v233[1] = v96;
  v233[0] = v95;
  v277 = *(v233 + (BYTE3(v101) & 0xF));
  v103 = *(v189 + v77);
  v104 = *(v189 + v77 + 16);
  v105 = *(v189 + v77 + 32);
  v106 = *(v189 + v77 + 48);
  v107 = *(v189 + v77 + 64);
  v108 = *(v189 + v77 + 80);
  v109 = *(v189 + v77 + 96);
  v110 = *(v189 + v86);
  v227 = *(v189 + v77 + 112);
  v226[6] = v109;
  v226[5] = v108;
  v226[4] = v107;
  v226[3] = v106;
  v226[2] = v105;
  v226[1] = v104;
  v226[0] = v103;
  v219 = v110;
  v278 = *(v226 + (*(&v219 | v182 & 0xF) & 0xF));
  v228[7] = v227;
  v228[6] = v109;
  v228[5] = v108;
  v228[4] = v107;
  v228[3] = v106;
  v228[2] = v105;
  v228[1] = v104;
  v228[0] = v103;
  v279 = *(v228 + (*(&v219 | v187 & 0xF) & 0xF));
  v229[7] = v227;
  v229[6] = v109;
  v229[5] = v108;
  v229[4] = v107;
  v229[3] = v106;
  v229[2] = v105;
  v229[1] = v104;
  v229[0] = v103;
  v280 = *(v229 + (BYTE3(v110) & 0xF));
  v111 = &v184[v77];
  v112 = *v111;
  v113 = *(v111 + 1);
  v114 = *(v111 + 2);
  v115 = *(v111 + 3);
  v116 = *(v111 + 4);
  v117 = *(v111 + 5);
  v118 = *(v111 + 7);
  v119 = *&v184[v86];
  v222 = *(v111 + 6);
  v223 = v118;
  v221[4] = v116;
  v221[5] = v117;
  v221[2] = v114;
  v221[3] = v115;
  v221[0] = v112;
  v221[1] = v113;
  v220 = v119;
  v281 = *(v221 + (*(&v220 | v182 & 0xF) & 0xF));
  v224[6] = v222;
  v224[7] = v118;
  v224[4] = v116;
  v224[5] = v117;
  v224[2] = v114;
  v224[3] = v115;
  v224[0] = v112;
  v224[1] = v113;
  v282 = *(v224 + (*(&v220 | v187 & 0xF) & 0xF));
  v225[7] = v118;
  v225[6] = v222;
  v225[4] = v116;
  v225[5] = v117;
  v225[2] = v114;
  v225[3] = v115;
  v225[0] = v112;
  v225[1] = v113;
  v283 = *(v225 + (BYTE3(v119) & 0xF));
  v257 = v47;
  v209 = v203 * v205 / v199 / v194;
  v263 = v203 * v205 / v199 / v194;
  v120 = *(a4 + 1472) < 18;
  v121 = (v196 == 1) << 8;
  if (qword_27DF869C8 == -1)
  {
    v122 = v176;
    v123 = v121 | (v120 << 7);
    if (MPSSDPAElasticBarrier(void)::result != -1)
    {
      goto LABEL_143;
    }

LABEL_152:
    v123 |= (v56 > 0x400) << 48;
    goto LABEL_153;
  }

  dispatch_once(&qword_27DF869C8, &__block_literal_global_215);
  v122 = v176;
  v123 = v121 | (v120 << 7);
  if (MPSSDPAElasticBarrier(void)::result == -1)
  {
    goto LABEL_152;
  }

LABEL_143:
  if (MPSSDPAElasticBarrier(void)::result == 1)
  {
    v123 |= 0x1000000000000uLL;
  }

LABEL_153:
  v124 = (v74 + *MEMORY[0x277CD7410]);
  v125 = *v124;
  v126 = v124[1];
  v127 = v124[2];
  v128 = v124[3];
  v129 = *(v74 + *MEMORY[0x277CD73D8]);
  v212 = v129;
  v215[2] = v127;
  v215[3] = v128;
  v215[0] = v125;
  v215[1] = v126;
  LODWORD(v124) = *(v215 + (*(&v212 | v187 & 0xF) & 0xF));
  v214[2] = v127;
  v214[3] = v128;
  v214[0] = v125;
  v214[1] = v126;
  if (v124 * *(v214 + (BYTE3(v129) & 0xF)) != 1)
  {
    ++v123;
  }

  v213[2] = v127;
  v213[3] = v128;
  v213[0] = v125;
  v213[1] = v126;
  if (*(v213 + (v129 & 0xF)) == 1)
  {
    v130 = 0;
    v131 = v123 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    v210 = v129;
    v211[0] = v125;
    v211[1] = v126;
    v211[2] = v127;
    v211[3] = v128;
    v132 = *(v211 + (*(&v210 | v182 & 0xF) & 0xF));
    v58 = v132 == 1;
    v133 = v132 != 1;
    v134 = v58;
    v131 = v123 & 0xFFFFFFFFFFFFFFFBLL | (4 * v133);
    v130 = 2 * v134;
  }

  v135 = MEMORY[0x277CD73C8];
  v136 = *(v16 + *MEMORY[0x277CD73C8]);
  v173 = v56;
  v137 = v32;
  if (v136 > 268435487)
  {
    if (v136 == 536870920)
    {
      v138 = 24;
      v139 = *(v122 + 8);
      v197 = v203 * v205;
      if (v139 > 268435487)
      {
        goto LABEL_168;
      }

      goto LABEL_171;
    }

    goto LABEL_170;
  }

  if (v136 != -1879048176)
  {
    if (v136 == 268435472)
    {
      v138 = 8;
      v139 = *(v122 + 8);
      v197 = v203 * v205;
      if (v139 > 268435487)
      {
        goto LABEL_168;
      }

      goto LABEL_171;
    }

LABEL_170:
    v138 = 0;
    v139 = *(v122 + 8);
    v197 = v203 * v205;
    if (v139 > 268435487)
    {
      goto LABEL_168;
    }

    goto LABEL_171;
  }

  v138 = 16;
  v139 = *(v122 + 8);
  v197 = v203 * v205;
  if (v139 > 268435487)
  {
LABEL_168:
    v140 = v131;
    if (v139 == 536870920)
    {
      v141 = v16;
      v142 = 96;
      goto LABEL_178;
    }

LABEL_174:
    v141 = v16;
    v142 = 0;
    goto LABEL_178;
  }

LABEL_171:
  v140 = v131;
  if (v139 != -1879048176)
  {
    if (v139 == 268435472)
    {
      v141 = v16;
      v142 = 32;
      goto LABEL_178;
    }

    goto LABEL_174;
  }

  v141 = v16;
  v142 = 64;
LABEL_178:
  v143 = v137;
  v144 = v137 % v193;
  if (v137 % v193)
  {
    v145 = 0;
  }

  else
  {
    v145 = ((v137 / v193) & 7) << 49;
  }

  if ([(MPSKernel *)v190 kernelType])
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v146 = v135;
    v147 = 0;
  }

  else
  {
    v146 = v135;
    v148 = 5;
    if (v181 == 16)
    {
      v148 = 7;
    }

    v147 = v148 + v172;
  }

  v149 = v130 & 0xFF8F07FFFFFFFBFFLL | (v203 << 12) & 0xF8000 | v140 & 0xFF81000000004185 | v138 & 0xFF8F07FFFFFFFBFFLL | (v205 << 17) & 0x1F00000 | (((v194 >> 3) & 0xF) << 39) & 0xFF8F07FFFFFFFBFFLL | ((v192 >> 3) << 30) & 0xFF8F07FFFFFFFBFFLL | (v193 << 22) & 0x3E000000 | (((v199 >> 3) & 0xF) << 35) & 0xFF8F07FFFFFFFBFFLL | v142 & 0xFF8F07FFFFFFFBFFLL | v145 & 0xFF8F07FFFFFFFBFFLL;
  v150 = v143;
  v151 = ((v143 < 0x81) << 10) | ((v207 % v203 != 0) << 52) | v149 | (v147 << 43) | ((((v143 - v174 * v192) | v144) != 0) << 54) | ((v173 != v175 * v205) << 53);
  if (v143 <= 0x80)
  {
    v155 = 0;
    v153 = v203;
    v154 = 0;
    if (v143 >= 0x41)
    {
      v152 = v151;
    }

    else
    {
      v152 = v151 | 0x800;
    }
  }

  else
  {
    v152 = v151 | 0x2000;
    v153 = v203;
    v154 = 16 * v203;
    v155 = (4 * v197 + 15) & 0x7FFFFFFF0;
  }

  v156 = *v146;
  v157 = v205 * v192;
  v206 = v153 * v192;
  v200 = *(v141 + v156) >> 3;
  v198 = v157;
  v195 = *(v188 + v156) >> 3;
  if ((v152 & 0x200) != 0)
  {
    v158 = 2 * (v154 + v155) + (*(v141 + v156) >> 3) * (v153 * v192) + (*(v188 + v156) >> 3) * v157;
  }

  else
  {
    v158 = 2 * (v154 + v155);
  }

  v159 = [*(a4 + 16) maxThreadgroupMemoryLength];
  v160 = (4 * v153 * v150 + 15) & 0x7FFFFFFF0;
  if (v158 + (v160 & (v152 << 51 >> 63)) > v159 && MTLReportFailureTypeEnabled())
  {
    v169 = v158 + (v160 & (v152 << 51 >> 63));
    v171 = v159;
    MTLReportFailure();
  }

  *&v161 = -1;
  *(&v161 + 1) = -1;
  v255 = v161;
  v254 = v161;
  v253 = v161;
  v252 = 0xFFFFFFFFFFFFFFFFLL;
  v251 = v161;
  *&v255 = [*(v201 + 16) count] | ((*(v201 + 112) != 0) << 8) | 0x10000;
  *&v252 = 0;
  v162 = [(__CFString *)(&CommonKernels)[16 * v147] UTF8String];
  MPSKernel_LogInfo(v190, v163, "SDPA: kernel %s is encoded, threadsPerGroup: (%lu, %lu, %lu), threadGroups: (%lu, %lu, %lu)\n", v162, v183, v209, 1, (v207 + v203 - 1) / v203, 1, v186 * v185);
  v170 = *(v201 + 232);
  MPSLibrary::CreateUberShaderKey();
  [a1 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v170, v180, v179, 0, 0}];
  MPSSetNDArraysOnComputeEncoder(a1, v201, 4, 0, 0);
  v164 = objc_autoreleasePoolPush();
  if ((v152 & 0x400) == 0)
  {
    [a1 setThreadgroupMemoryLength:v155 atIndex:0];
    [a1 setThreadgroupMemoryLength:v155 atIndex:1];
    [a1 setThreadgroupMemoryLength:v154 atIndex:3];
    [a1 setThreadgroupMemoryLength:v154 atIndex:4];
  }

  [a1 setThreadgroupMemoryLength:v155 atIndex:1];
  if ((v152 & 0x1000) != 0)
  {
    [a1 setThreadgroupMemoryLength:v160 atIndex:2];
  }

  if ((v152 & 0x200) != 0)
  {
    [a1 setThreadgroupMemoryLength:v200 * v206 atIndex:5];
    [a1 setThreadgroupMemoryLength:v195 * v198 atIndex:6];
  }

  objc_msgSend_setBytes_length_atIndex_(a1);
  [a1 setBuffer:objc_msgSend(v184 offset:"buffer") atIndex:{0, 28}];
  if ((v152 & 0x2000) != 0)
  {
    [a1 setBuffer:MPSAutoCache::GetTempBuffer(v287 offset:v160 * v186 * v185 * ((v207 + v203 - 1) / v203) atIndex:{0), 0, 27}];
  }

  v250[0] = (v207 + v203 - 1) / v203;
  v250[1] = 1;
  v250[2] = v186 * v185;
  v249[0] = v183;
  v249[1] = v209;
  v249[2] = 1;
  [a1 dispatchThreadgroups:v250 threadsPerThreadgroup:v249];
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseComputeState();
  objc_autoreleasePoolPop(v164);
  v165 = v285;
  if (v285)
  {
    do
    {
      v166 = *v165;
      operator delete(v165);
      v165 = v166;
    }

    while (v166);
  }

  v167 = v284;
  *&v284 = 0;
  if (v167)
  {
    operator delete(v167);
  }

  MPSAutoCache::~MPSAutoCache(v287);
}

void sub_239AC0DB0(_Unwind_Exception *a1)
{
  std::unordered_map<unsigned int,unsigned int>::~unordered_map[abi:ne200100](v2 - 176);
  if (v1)
  {
    operator delete(v1);
  }

  MPSAutoCache::~MPSAutoCache((v2 - 128));
  _Unwind_Resume(a1);
}

uint64_t MPSNDArraySDPAA14Behavior::EncodeSDPA(uint64_t a1, MPSKernel *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = [*(a5 + 232) inputTensorAtIndex:0];
  if (*(v9 + 2) != *([*(a5 + 232) outputTensorAtIndex:0] + 8) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v10 = *(&a2->super.isa + *MEMORY[0x277CD7370]);
  v11 = *(&a2->super.isa + *MEMORY[0x277CD7350]);
  if ([(MPSKernel *)a2 kernelType])
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v12 = 0;
  }

  else
  {
    v12 = 2;
  }

  [(MPSKernel *)a2 layout];
  if (BaseTensor::GetDimensionSize(v9) < 8)
  {
    MPSKernel_LogInfo(a2, v13, "Default Encoder: Encoding vector based SDPA\n");

    EncodeSDPACommonNew(a3, a4, a5, v11, v10, a2, v12);
  }

  MPSKernel_LogInfo(a2, v13, "A14 Encoder: Encoding 8x8 TEC based SDPA kernel\n");
  EncodeSDPATileBasedCommon(a3, a4, a5, v11, v10, a2, qword_239B1F400);
  return 0;
}

uint64_t MPSNDArraySDPAA18Behavior::EncodeQuantizedSDPA(uint64_t a1, MPSKernel *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = [*(a5 + 232) inputTensorAtIndex:0];
  [*(a5 + 232) inputTensorAtIndex:1];
  [*(a5 + 232) inputTensorAtIndex:2];
  [*(a5 + 232) inputTensorAtIndex:3];
  if (*a5 == 7)
  {
    v10 = [*(a5 + 232) inputTensorAtIndex:4];
    v11 = 5;
  }

  else
  {
    v10 = 0;
    v11 = 4;
  }

  v12 = [*(a5 + 232) inputTensorAtIndex:v11];
  v13 = [*(a5 + 232) inputTensorAtIndex:v11 + 1];
  DimensionSize = [*(a5 + 232) outputTensorAtIndex:0];
  v15 = *(DimensionSize + 8);
  if (v15 != 268435472 && v15 != 268435488)
  {
    DimensionSize = MTLReportFailureTypeEnabled();
    if (DimensionSize)
    {
      DimensionSize = MTLReportFailure();
    }
  }

  if ((*(v9 + 2) == 268435472 || v10 && *(v10 + 8) == 268435472) && *(v12 + 8) == 268435472)
  {
    v17 = *(&a2->super.isa + *MEMORY[0x277CD7370]);
    v18 = *(&a2->super.isa + *MEMORY[0x277CD7350]);
    if (*(v13 + 8) == 268435472)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v17 = *(&a2->super.isa + *MEMORY[0x277CD7370]);
    v18 = *(&a2->super.isa + *MEMORY[0x277CD7350]);
  }

  if (qword_27DF869A8 == -1)
  {
    if (_MergedGlobals_5 != 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    dispatch_once(&qword_27DF869A8, &__block_literal_global_4);
    if (_MergedGlobals_5 != 1)
    {
      goto LABEL_21;
    }
  }

LABEL_18:
  [(MPSKernel *)a2 layout];
  DimensionSize = BaseTensor::GetDimensionSize(v9);
  if (DimensionSize >= 8)
  {
    MPSKernel_LogInfo(a2, v19, "A18 Encoder:Encoding 16x16 MXU based QuantizedSDPA kernel\n");
    result = EncodeQuantizedSDPATileBasedCommon(a3, a4, a5, v18, v17, a2, qword_239B1F3E8);
    if (!result)
    {
      return result;
    }

    DimensionSize = MPSKernel_LogInfo(a2, v21, "A18 Encoder: failed, fall back A14 encoder\n");
  }

LABEL_21:

  return MPSNDArraySDPAA14Behavior::EncodeQuantizedSDPA(DimensionSize, a2, a3, a4, a5);
}

uint64_t EncodeQuantizedSDPATileBasedCommon(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, MPSKernel *a6, unsigned int *a7)
{
  v166 = *(&a6->super.isa + *MEMORY[0x277CD7378]);
  v151 = *(&a6->super.isa + *MEMORY[0x277CD7360]);
  v150 = *(&a6->super.isa + *MEMORY[0x277CD7368]);
  [(MPSKernel *)a6 alpha];
  v11 = v10;
  v159 = a6;
  v170 = [(MPSKernel *)a6 layout];
  MEMORY[0x23EE7C450](v279, a2, 0);
  [*(a3 + 232) graph];
  v182 = a3;
  if ([*(a3 + 16) count])
  {
    operator new();
  }

  v276 = 0u;
  v277 = 0u;
  v278 = 1065353216;
  if ((v166 & 1) == 0 && *(&v277 + 1))
  {
    v12 = 0;
    do
    {
      if (*(&v276 + 1))
      {
        v13 = vcnt_s8(*(&v276 + 8));
        v13.i16[0] = vaddlv_u8(v13);
        if (v13.u32[0] > 1uLL)
        {
          v14 = v12;
          if (*(&v276 + 1) <= v12)
          {
            v14 = v12 % DWORD2(v276);
          }
        }

        else
        {
          v14 = (DWORD2(v276) - 1) & v12;
        }

        v15 = *(v276 + 8 * v14);
        if (v15)
        {
          v16 = *v15;
          if (v16)
          {
            if (v13.u32[0] < 2uLL)
            {
              while (1)
              {
                v18 = v16[1];
                if (v18 == v12)
                {
                  if (*(v16 + 4) == v12)
                  {
                    goto LABEL_6;
                  }
                }

                else if ((v18 & (*(&v276 + 1) - 1)) != v14)
                {
                  goto LABEL_27;
                }

                v16 = *v16;
                if (!v16)
                {
                  goto LABEL_27;
                }
              }
            }

            do
            {
              v17 = v16[1];
              if (v17 == v12)
              {
                if (*(v16 + 4) == v12)
                {
                  goto LABEL_6;
                }
              }

              else
              {
                if (v17 >= *(&v276 + 1))
                {
                  v17 %= *(&v276 + 1);
                }

                if (v17 != v14)
                {
                  break;
                }
              }

              v16 = *v16;
            }

            while (v16);
          }
        }
      }

LABEL_27:
      if (MTLReportFailureTypeEnabled())
      {
        v147 = v12;
        MTLReportFailure();
      }

LABEL_6:
      ++v12;
    }

    while (v12 < *(&v277 + 1));
  }

  v19 = [*(v182 + 16) count];
  v20 = *(v182 + 16);
  LODWORD(v227) = 0;
  v233 = &v227;
  v181 = [v20 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v276, 0, &v233) + 5)}];
  v21 = *(v182 + 16);
  LODWORD(v227) = 1;
  v233 = &v227;
  v180 = [v21 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v276, 1u, &v233) + 5)}];
  v22 = *(v182 + 16);
  LODWORD(v227) = 2;
  v233 = &v227;
  v161 = [v22 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v276, 2u, &v233) + 5)}];
  v23 = *(v182 + 16);
  LODWORD(v227) = 3;
  v233 = &v227;
  v168 = [v23 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v276, 3u, &v233) + 5)}];
  v24 = 4;
  if (v19 == 7)
  {
    v26 = *(v182 + 16);
    LODWORD(v227) = 4;
    v233 = &v227;
    v25 = [v26 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v276, 4u, &v233) + 5)}];
    v24 = 5;
  }

  else
  {
    v25 = 0;
  }

  v27 = *(v182 + 16);
  LODWORD(v227) = v24;
  v233 = &v227;
  v176 = [v27 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v276, v24, &v233) + 5)}];
  v28 = v24 + 1;
  v29 = *(v182 + 16);
  LODWORD(v227) = v28;
  v233 = &v227;
  v30 = [v29 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v276, v28, &v233) + 5)}];
  v158 = v19;
  v163 = *(v182 + 208);
  v153 = [*(v182 + 232) outputTensorAtIndex:0];
  if (v170 == 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = 2;
  }

  if (v170 == 1)
  {
    v32 = 2;
  }

  else
  {
    v32 = 1;
  }

  v33 = *MEMORY[0x277CD7410];
  v34 = *(v181 + v33);
  v35 = *(v181 + v33 + 16);
  v36 = *MEMORY[0x277CD73D8];
  v37 = *(v181 + v36);
  v38 = *(v181 + v33 + 32);
  v222 = *(v181 + v33 + 48);
  v221[2] = v38;
  v221[1] = v35;
  v221[0] = v34;
  v39 = *(v221 + (v37 & 0xF));
  v216 = v37;
  v220[3] = v222;
  v220[2] = v38;
  v220[1] = v35;
  v220[0] = v34;
  v40 = *(v220 + (*(&v216 | v32 & 0xF) & 0xF));
  v41 = *(v180 + v33);
  v42 = *(v180 + v33 + 16);
  v43 = *(v180 + v33 + 32);
  v44 = *(v180 + v33 + 48);
  v217 = *(v180 + v36);
  v224[3] = v44;
  v224[2] = v43;
  v224[1] = v42;
  v224[0] = v41;
  v45 = *(v224 + (*(&v217 | v32 & 0xF) & 0xF));
  v219[3] = v222;
  v219[2] = v38;
  v219[1] = v35;
  v219[0] = v34;
  v157 = *(v219 + (*(&v216 | v31 & 0xF) & 0xF));
  v223[3] = v44;
  v223[2] = v43;
  v223[1] = v42;
  v223[0] = v41;
  v154 = *(v223 + (*(&v217 | v31 & 0xF) & 0xF));
  v218[3] = v222;
  v218[2] = v38;
  v218[1] = v35;
  v218[0] = v34;
  v156 = *(v218 + (BYTE3(v37) & 0xF));
  v155 = *(a4 + 1482);
  v46 = a7[2];
  v47 = *a7;
  v164 = v39;
  v48 = (v39 + a7[4] - 1) & -a7[4];
  v49 = v45 - 1;
  v50 = (v45 - 1 + v47) & -v47;
  if (v50 >= *a7)
  {
    v51 = *a7;
  }

  else
  {
    v51 = (v45 - 1 + v47) & -v47;
  }

  if (v51 >= v48)
  {
    v52 = (v39 + a7[4] - 1) & -a7[4];
  }

  else
  {
    v52 = v51;
  }

  v53 = (v52 + v49) & -v52;
  if (v53 >= v48)
  {
    v53 = (v39 + a7[4] - 1) & -a7[4];
  }

  if (v53 >= 0x40)
  {
    v53 = 64;
  }

  v172 = v53;
  if (v48 >= v53)
  {
    v54 = v53;
  }

  else
  {
    v54 = (v39 + a7[4] - 1) & -a7[4];
  }

  v175 = v40;
  v55 = (v40 + v46 - 1) & -v46;
  if (v55 >= 0x10)
  {
    v55 = 16;
  }

  v179 = v55;
  if (v46 == 8)
  {
    v165 = 8;
    if (v47 == 8)
    {
      if (v50 >= v48)
      {
        v56 = v48;
      }

      else
      {
        v56 = (v45 - 1 + v47) & -v47;
      }

      if (v56 >= 0x10)
      {
        v52 = 16;
      }

      else
      {
        v52 = v56;
      }

      v57 = (v52 + v49) & -v52;
      if (v57 >= v48)
      {
        v57 = v48;
      }

      if (v57 >= 0x80)
      {
        v57 = 128;
      }

      v172 = v57;
      if (v48 < v57)
      {
        v57 = v48;
      }

      if (v57 >= 0x20)
      {
        v54 = 32;
      }

      else
      {
        v54 = v57;
      }

      v58 = (v40 + 15) & 0xFFFFFFF0;
      v165 = 16;
      if (v58)
      {
        v58 = 16;
      }

      v179 = v58;
    }

    if (v40 % v179)
    {
      goto LABEL_79;
    }
  }

  else
  {
    v165 = v46;
    if (v40 % v55)
    {
      goto LABEL_79;
    }
  }

  if (!(v39 % v54) && !(v45 % v172))
  {
    v149 = v45 % v54 == 0;
    v59 = *MEMORY[0x277CD73F0];
    v60 = *(v176 + v59);
    if (!v60)
    {
      goto LABEL_83;
    }

    goto LABEL_80;
  }

LABEL_79:
  v149 = 0;
  v59 = *MEMORY[0x277CD73F0];
  v60 = *(v176 + v59);
  if (!v60)
  {
    goto LABEL_83;
  }

LABEL_80:
  v61 = 0;
  v63 = *(v176 + v33 + 32);
  v62 = *(v176 + v33 + 48);
  v65 = *(v176 + v33);
  v64 = *(v176 + v33 + 16);
  v66 = 1;
  v67 = *(v176 + v36);
  do
  {
    v214 = v67;
    v215[0] = v65;
    v215[1] = v64;
    v215[2] = v63;
    v215[3] = v62;
    v66 *= *(v215 + (*(&v214 | v61++ & 0xF) & 0xF));
  }

  while (v60 != v61);
  if (v66 != 1)
  {
    v160 = 0;
    goto LABEL_95;
  }

LABEL_83:
  v68 = *(v30 + v59);
  if (v68)
  {
    v69 = 0;
    v71 = *(v30 + v33 + 32);
    v70 = *(v30 + v33 + 48);
    v73 = *(v30 + v33);
    v72 = *(v30 + v33 + 16);
    v74 = 1;
    v75 = *(v30 + v36);
    do
    {
      v212 = v75;
      v213[0] = v73;
      v213[1] = v72;
      v213[2] = v71;
      v213[3] = v70;
      v74 *= *(v213 + (*(&v212 | v69++ & 0xF) & 0xF));
    }

    while (v68 != v69);
    LODWORD(v68) = v74 != 1;
  }

  v160 = v68 ^ 1;
  if ((v68 & 1) != 0 || v158 != 7)
  {
LABEL_95:
    if (v166)
    {
      goto LABEL_105;
    }

    goto LABEL_96;
  }

  v76 = *(v25 + v59);
  if (v76)
  {
    v77 = 0;
    v78 = (v25 + v33);
    v80 = v78[2];
    v79 = v78[3];
    v82 = *v78;
    v81 = v78[1];
    v83 = 1;
    v84 = *(v25 + v36);
    do
    {
      v210 = v84;
      v211[0] = v82;
      v211[1] = v81;
      v211[2] = v80;
      v211[3] = v79;
      v83 *= *(v211 + (*(&v210 | v77++ & 0xF) & 0xF));
    }

    while (v76 != v77);
    v160 = v83 == 1;
    if (v166)
    {
      goto LABEL_105;
    }
  }

  else
  {
    v160 = 1;
    if (v166)
    {
      goto LABEL_105;
    }
  }

LABEL_96:
  if (validateQuantizedSDPA(v181, v180, v161, v168, v25, v176, v30, v170))
  {
    goto LABEL_156;
  }

  if (*(v181 + *MEMORY[0x277CD7428] + 8 * (*(v181 + *MEMORY[0x277CD73D8]) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v180 + *MEMORY[0x277CD7428] + 8 * (*(v180 + *MEMORY[0x277CD73D8]) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v161 + *MEMORY[0x277CD7428] + 8 * (*(v161 + *MEMORY[0x277CD73D8]) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v168 && *(v168 + *MEMORY[0x277CD7428] + 8 * (*(v168 + *MEMORY[0x277CD73D8]) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_105:
  v167 = v54;
  v233 = __PAIR64__(v164, v11);
  v239 = v156;
  v238 = v157 / v154;
  v237 = v157;
  v236 = v45;
  v235 = v175;
  LODWORD(v226[0]) = 0;
  *&v227 = v226;
  v245 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v276, 0, &v227) + 20);
  LODWORD(v226[0]) = 1;
  *&v227 = v226;
  v246 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v276, 1u, &v227) + 20);
  LODWORD(v226[0]) = 2;
  *&v227 = v226;
  v247 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v276, 2u, &v227) + 20);
  LODWORD(v226[0]) = 3;
  *&v227 = v226;
  v248 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v276, 3u, &v227) + 20);
  LODWORD(v226[0]) = 4;
  *&v227 = v226;
  if (v158 == 7)
  {
    v249 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v276, 4u, &v227) + 20);
    LODWORD(v226[0]) = 5;
    *&v227 = v226;
    v250 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v276, 5u, &v227) + 20);
    LODWORD(v226[0]) = 6;
    *&v227 = v226;
    v85 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v276, 6u, &v227);
  }

  else
  {
    v250 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v276, 4u, &v227) + 20);
    LODWORD(v226[0]) = 5;
    *&v227 = v226;
    v85 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v276, 5u, &v227);
  }

  v251 = *(v85 + 20);
  v86 = *MEMORY[0x277CD7428];
  v87 = *MEMORY[0x277CD73D8];
  v200 = *(v181 + v87);
  v252 = *(v181 + v86 + 8 * (*(&v200 | v32 & 0xF) & 0xF));
  v201 = *(v181 + v87);
  v253 = *(v181 + v86 + 8 * (*(&v201 | v31 & 0xF) & 0xF));
  v254 = *(v181 + v86 + 8 * (*(v181 + v87 + 3) & 0xF));
  v202 = *(v180 + v87);
  v255 = *(v180 + v86 + 8 * (*(&v202 | v32 & 0xF) & 0xF));
  v203 = *(v180 + v87);
  v256 = *(v180 + v86 + 8 * (*(&v203 | v31 & 0xF) & 0xF));
  v257 = *(v180 + v86 + 8 * (*(v180 + v87 + 3) & 0xF));
  v204 = *(v168 + v87);
  v258 = *(v168 + v86 + 8 * (*(&v204 | v32 & 0xF) & 0xF));
  v205 = *(v168 + v87);
  v259 = *(v168 + v86 + 8 * (*(&v205 | v31 & 0xF) & 0xF));
  v260 = *(v168 + v86 + 8 * (*(v168 + v87 + 3) & 0xF));
  v206 = *(v161 + v87);
  v261 = *(v161 + v86 + 8 * (*(&v206 | v32 & 0xF) & 0xF));
  v207 = *(v161 + v87);
  v262 = *(v161 + v86 + 8 * (*(&v207 | v31 & 0xF) & 0xF));
  v263 = *(v161 + v86 + 8 * (*(v161 + v87 + 3) & 0xF));
  v208 = *&v163[v87];
  v273 = *&v163[8 * (*(&v208 | v32 & 0xF) & 0xF) + v86];
  v209 = *&v163[v87];
  v274 = *&v163[8 * (*(&v209 | v31 & 0xF) & 0xF) + v86];
  v275 = *&v163[8 * (v163[v87 + 3] & 0xF) + v86];
  v88 = *MEMORY[0x277CD7410];
  v89 = v176 + v87;
  if (v25)
  {
    v195 = *(v25 + v87);
    v241 = *(v25 + v88 + 4 * (*(&v195 | v31 & 0xF) & 0xF));
    v244 = *(v176 + v88 + 4 * (*(v89 + 3) & 0xF));
    v196 = *(v25 + v87);
    v242 = *(v25 + v88 + 4 * (*(&v196 | v32 & 0xF) & 0xF));
    v197 = *(v30 + v87);
    v243 = *(v30 + v88 + 4 * (*(&v197 | v32 & 0xF) & 0xF));
    v198 = *(v25 + v87);
    v264 = *(v25 + v86 + 8 * (*(&v198 | v32 & 0xF) & 0xF));
    v199 = *(v25 + v87);
    v265 = *(v25 + v86 + 8 * (*(&v199 | v31 & 0xF) & 0xF));
    v90 = *(v25 + v86 + 8 * (*(v25 + v87 + 3) & 0xF));
  }

  else
  {
    LODWORD(v90) = 0;
    v193 = *(v176 + v87);
    v241 = *(v176 + v88 + 4 * (*(&v193 | v31 & 0xF) & 0xF));
    v244 = *(v176 + v88 + 4 * (*(v89 + 3) & 0xF));
    v242 = 0;
    v194 = *(v30 + v87);
    v91 = *(v30 + v88 + 4 * (*(&v194 | v32 & 0xF) & 0xF));
    v265 = 0;
    v243 = v91;
    v264 = 0;
  }

  v92 = v170 == 1;
  v266 = v90;
  v185 = *(v176 + v87);
  v267 = *(v176 + v86 + 8 * (*(&v185 | v32 & 0xF) & 0xF));
  v186 = *(v176 + v87);
  v268 = *(v176 + v86 + 8 * (*(&v186 | v31 & 0xF) & 0xF));
  v269 = *(v176 + v86 + 8 * (*(v89 + 3) & 0xF));
  v93 = v30 + v86;
  v187 = *(v30 + v87);
  v270 = *(v93 + 8 * (*(&v187 | v32 & 0xF) & 0xF));
  v188 = *(v30 + v87);
  v271 = *(v93 + 8 * (*(&v188 | v31 & 0xF) & 0xF));
  v272 = *(v93 + 8 * (*(v30 + v87 + 3) & 0xF));
  v234 = v48;
  v171 = v179 * v172 / v165 / v52;
  v240 = v179 * v172 / v165 / v52;
  v94 = (v92 << 8) | ((*(a4 + 1472) < 18) << 7);
  v95 = (v168 + v88);
  v96 = *v95;
  v97 = v95[1];
  v98 = v95[2];
  v99 = v95[3];
  v100 = *(v168 + v87);
  v189 = v100;
  v192[2] = v98;
  v192[3] = v99;
  v192[0] = v96;
  v192[1] = v97;
  v101 = *(v192 + (*(&v189 | v31 & 0xF) & 0xF));
  v191[2] = v98;
  v191[3] = v99;
  v191[0] = v96;
  v191[1] = v97;
  if (v101 * *(v191 + (BYTE3(v100) & 0xF)) == 1)
  {
    v102 = v94;
  }

  else
  {
    v102 = v94 + 1;
  }

  v190[2] = v98;
  v190[3] = v99;
  v190[0] = v96;
  v190[1] = v97;
  if (*(v190 + (v100 & 0xF)) == 1)
  {
    v103 = 0;
  }

  else
  {
    v183 = v100;
    v184[0] = v96;
    v184[1] = v97;
    v184[2] = v98;
    v184[3] = v99;
    v104 = *(v184 + (*(&v183 | v32 & 0xF) & 0xF));
    v105 = v104 == 1;
    v106 = v104 != 1;
    v107 = v105;
    v102 |= 4 * v106;
    v103 = 2 * v107;
  }

  v108 = MEMORY[0x277CD73C8];
  v109 = *(v181 + *MEMORY[0x277CD73C8]);
  if (v109 > 268435487)
  {
    if (v109 == 536870920)
    {
      v110 = 24;
      v111 = *(v153 + 8);
      if (v111 > 268435487)
      {
        goto LABEL_127;
      }

      goto LABEL_130;
    }

    goto LABEL_129;
  }

  if (v109 != -1879048176)
  {
    if (v109 == 268435472)
    {
      v110 = 8;
      v111 = *(v153 + 8);
      if (v111 > 268435487)
      {
        goto LABEL_127;
      }

      goto LABEL_130;
    }

LABEL_129:
    v110 = 0;
    v111 = *(v153 + 8);
    if (v111 > 268435487)
    {
      goto LABEL_127;
    }

    goto LABEL_130;
  }

  v110 = 16;
  v111 = *(v153 + 8);
  if (v111 > 268435487)
  {
LABEL_127:
    if (v111 == 536870920)
    {
      v112 = 96;
      goto LABEL_137;
    }

LABEL_133:
    v112 = 0;
    goto LABEL_137;
  }

LABEL_130:
  if (v111 != -1879048176)
  {
    if (v111 == 268435472)
    {
      v112 = 32;
      goto LABEL_137;
    }

    goto LABEL_133;
  }

  v112 = 64;
LABEL_137:
  if ([(MPSKernel *)v159 kernelType])
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v113 = 0;
  }

  else
  {
    if (v46 == 16)
    {
      v114 = 7;
    }

    else
    {
      v114 = 5;
    }

    v115 = v149 + v114;
    if (v160)
    {
      v113 = v115 + 8;
    }

    else
    {
      v113 = v115 + 4;
    }
  }

  v116 = *v108;
  v169 = *(v181 + v116);
  if (v169 != 536870920 || *(a4 + 1472) <= 21)
  {
    v118 = 0x4000;
  }

  else
  {
    v118 = 0;
  }

  v162 = *(v180 + v116);
  v119 = [*(a4 + 16) maxThreadgroupMemoryLength];
  v120 = (v167 >> 3 << 30) | (v172 << 17) & 0x1F00000 | (v179 << 12) & 0x18000 | v103 | v110 | v112 | v102 & 0x185 | v118;
  v121 = (4 * v179 * v172 + 15) & 0xFFF0;
  v122 = (4 * v179 * v164 + 15) & 0x7FFFFFFF0;
  v174 = (8 * v179 + 15) & 0x1F0;
  v123 = 2 * (v121 + v174);
  if ((v123 + v122 > v119) | v160 & 1)
  {
    if (v123 > v119)
    {
      puts("too much threadgroup memory usage. Fallback");
LABEL_156:
      v124 = -19;
      v125 = v277;
      if (!v277)
      {
        goto LABEL_379;
      }

      goto LABEL_378;
    }

    LOWORD(v120) = v120 & 0xEFFF;
  }

  v126 = (v175 + v179 - 1) / v179;
  if ((v120 & 0x1000) != 0)
  {
    TempBuffer = 0;
  }

  else
  {
    TempBuffer = MPSAutoCache::GetTempBuffer(v279, v122 * v157 * v156 * v126, 0);
  }

  v128 = *v108;
  v129 = *(v181 + v128);
  if (v129 > 285212703)
  {
    if (v129 <= 536870915)
    {
      if (v129 > 301989895)
      {
        if (v129 == 301989896)
        {
          v130 = 512;
          v131 = *(v180 + v128);
          if (v131 > 285212703)
          {
            goto LABEL_206;
          }

          goto LABEL_229;
        }

        if (v129 == 335544328)
        {
          v130 = 544;
          v131 = *(v180 + v128);
          if (v131 <= 285212703)
          {
            goto LABEL_229;
          }

          goto LABEL_206;
        }
      }

      else
      {
        if (v129 == 285212704)
        {
          v130 = 416;
          v131 = *(v180 + v128);
          if (v131 > 285212703)
          {
            goto LABEL_206;
          }

          goto LABEL_229;
        }

        if (v129 == 285212736)
        {
          v130 = 448;
          v131 = *(v180 + v128);
          if (v131 <= 285212703)
          {
            goto LABEL_229;
          }

          goto LABEL_206;
        }
      }
    }

    else if (v129 <= 536870927)
    {
      if (v129 == 536870916)
      {
        v130 = 0;
        v131 = *(v180 + v128);
        if (v131 > 285212703)
        {
          goto LABEL_206;
        }

        goto LABEL_229;
      }

      if (v129 == 536870920)
      {
        v130 = 32;
        v131 = *(v180 + v128);
        if (v131 <= 285212703)
        {
          goto LABEL_229;
        }

        goto LABEL_206;
      }
    }

    else
    {
      switch(v129)
      {
        case 536870928:
          v130 = 64;
          v131 = *(v180 + v128);
          if (v131 <= 285212703)
          {
            goto LABEL_229;
          }

          goto LABEL_206;
        case 536870944:
          v130 = 96;
          v131 = *(v180 + v128);
          if (v131 <= 285212703)
          {
            goto LABEL_229;
          }

          goto LABEL_206;
        case 536870976:
          v130 = 128;
          v131 = *(v180 + v128);
          if (v131 <= 285212703)
          {
            goto LABEL_229;
          }

          goto LABEL_206;
      }
    }
  }

  else if (v129 <= 31)
  {
    if (v129 > 7)
    {
      if (v129 == 8)
      {
        v130 = 192;
        v131 = *(v180 + v128);
        if (v131 <= 285212703)
        {
          goto LABEL_229;
        }

        goto LABEL_206;
      }

      if (v129 == 16)
      {
        v130 = 224;
        v131 = *(v180 + v128);
        if (v131 <= 285212703)
        {
          goto LABEL_229;
        }

        goto LABEL_206;
      }
    }

    else
    {
      if (v129 == -1879048176)
      {
        v130 = 384;
        v131 = *(v180 + v128);
        if (v131 <= 285212703)
        {
          goto LABEL_229;
        }

        goto LABEL_206;
      }

      if (v129 == 4)
      {
        v130 = 160;
        v131 = *(v180 + v128);
        if (v131 <= 285212703)
        {
          goto LABEL_229;
        }

        goto LABEL_206;
      }
    }
  }

  else if (v129 <= 268435463)
  {
    if (v129 == 32)
    {
      v130 = 256;
      v131 = *(v180 + v128);
      if (v131 <= 285212703)
      {
        goto LABEL_229;
      }

      goto LABEL_206;
    }

    if (v129 == 64)
    {
      v130 = 288;
      v131 = *(v180 + v128);
      if (v131 <= 285212703)
      {
        goto LABEL_229;
      }

      goto LABEL_206;
    }
  }

  else
  {
    switch(v129)
    {
      case 268435464:
        v130 = 480;
        v131 = *(v180 + v128);
        if (v131 <= 285212703)
        {
          goto LABEL_229;
        }

        goto LABEL_206;
      case 268435472:
        v130 = 320;
        v131 = *(v180 + v128);
        if (v131 <= 285212703)
        {
          goto LABEL_229;
        }

        goto LABEL_206;
      case 268435488:
        v130 = 352;
        v131 = *(v180 + v128);
        if (v131 > 285212703)
        {
          goto LABEL_206;
        }

LABEL_229:
        if (v131 <= 31)
        {
          if (v131 > 7)
          {
            if (v131 == 8)
            {
              v130 |= 0x1800uLL;
              v132 = *(v176 + v128);
              if (v132 <= 285212703)
              {
                goto LABEL_267;
              }

              goto LABEL_250;
            }

            if (v131 == 16)
            {
              v130 |= 0x1C00uLL;
              v132 = *(v176 + v128);
              if (v132 <= 285212703)
              {
                goto LABEL_267;
              }

              goto LABEL_250;
            }
          }

          else
          {
            if (v131 == -1879048176)
            {
              v130 |= 0x3000uLL;
              v132 = *(v176 + v128);
              if (v132 <= 285212703)
              {
                goto LABEL_267;
              }

              goto LABEL_250;
            }

            if (v131 == 4)
            {
              v130 |= 0x1400uLL;
              v132 = *(v176 + v128);
              if (v132 <= 285212703)
              {
                goto LABEL_267;
              }

              goto LABEL_250;
            }
          }
        }

        else if (v131 <= 268435463)
        {
          if (v131 == 32)
          {
            v130 |= 0x2000uLL;
            v132 = *(v176 + v128);
            if (v132 <= 285212703)
            {
              goto LABEL_267;
            }

            goto LABEL_250;
          }

          if (v131 == 64)
          {
            v130 |= 0x2400uLL;
            v132 = *(v176 + v128);
            if (v132 <= 285212703)
            {
              goto LABEL_267;
            }

            goto LABEL_250;
          }
        }

        else
        {
          switch(v131)
          {
            case 268435464:
              v130 |= 0x3C00uLL;
              v132 = *(v176 + v128);
              if (v132 <= 285212703)
              {
                goto LABEL_267;
              }

              goto LABEL_250;
            case 268435472:
              v130 |= 0x2800uLL;
              v132 = *(v176 + v128);
              if (v132 <= 285212703)
              {
                goto LABEL_267;
              }

              goto LABEL_250;
            case 268435488:
              v130 |= 0x2C00uLL;
              v132 = *(v176 + v128);
              if (v132 <= 285212703)
              {
                goto LABEL_267;
              }

              goto LABEL_250;
          }
        }

LABEL_323:
        v130 |= 0x4800uLL;
        v132 = *(v176 + v128);
        if (v132 <= 285212703)
        {
          goto LABEL_267;
        }

LABEL_250:
        if (v132 <= 536870915)
        {
          if (v132 > 301989895)
          {
            if (v132 == 301989896)
            {
              v133 = 0x80000;
              goto LABEL_326;
            }

            if (v132 == 335544328)
            {
              v133 = 557056;
              goto LABEL_326;
            }
          }

          else
          {
            if (v132 == 285212704)
            {
              v133 = 425984;
              goto LABEL_326;
            }

            if (v132 == 285212736)
            {
              v133 = 458752;
              goto LABEL_326;
            }
          }
        }

        else if (v132 <= 536870927)
        {
          if (v132 == 536870916)
          {
            v133 = 0;
            goto LABEL_326;
          }

          if (v132 == 536870920)
          {
            v133 = 0x8000;
            goto LABEL_326;
          }
        }

        else
        {
          switch(v132)
          {
            case 536870928:
              v133 = 0x10000;
              goto LABEL_326;
            case 536870944:
              v133 = 98304;
              goto LABEL_326;
            case 536870976:
              v133 = 0x20000;
              goto LABEL_326;
          }
        }

        goto LABEL_325;
    }
  }

  v130 = 576;
  v131 = *(v180 + v128);
  if (v131 <= 285212703)
  {
    goto LABEL_229;
  }

LABEL_206:
  if (v131 <= 536870915)
  {
    if (v131 > 301989895)
    {
      if (v131 == 301989896)
      {
        v130 |= 0x4000uLL;
        v132 = *(v176 + v128);
        if (v132 > 285212703)
        {
          goto LABEL_250;
        }

        goto LABEL_267;
      }

      if (v131 == 335544328)
      {
        v130 |= 0x4400uLL;
        v132 = *(v176 + v128);
        if (v132 <= 285212703)
        {
          goto LABEL_267;
        }

        goto LABEL_250;
      }
    }

    else
    {
      if (v131 == 285212704)
      {
        v130 |= 0x3400uLL;
        v132 = *(v176 + v128);
        if (v132 > 285212703)
        {
          goto LABEL_250;
        }

        goto LABEL_267;
      }

      if (v131 == 285212736)
      {
        v130 |= 0x3800uLL;
        v132 = *(v176 + v128);
        if (v132 <= 285212703)
        {
          goto LABEL_267;
        }

        goto LABEL_250;
      }
    }

    goto LABEL_323;
  }

  if (v131 <= 536870927)
  {
    if (v131 == 536870916)
    {
      v132 = *(v176 + v128);
      if (v132 > 285212703)
      {
        goto LABEL_250;
      }

      goto LABEL_267;
    }

    if (v131 == 536870920)
    {
      v130 |= 0x400uLL;
      v132 = *(v176 + v128);
      if (v132 <= 285212703)
      {
        goto LABEL_267;
      }

      goto LABEL_250;
    }

    goto LABEL_323;
  }

  if (v131 == 536870928)
  {
    v130 |= 0x800uLL;
    v132 = *(v176 + v128);
    if (v132 <= 285212703)
    {
      goto LABEL_267;
    }

    goto LABEL_250;
  }

  if (v131 == 536870944)
  {
    v130 |= 0xC00uLL;
    v132 = *(v176 + v128);
    if (v132 <= 285212703)
    {
      goto LABEL_267;
    }

    goto LABEL_250;
  }

  if (v131 != 536870976)
  {
    goto LABEL_323;
  }

  v130 |= 0x1000uLL;
  v132 = *(v176 + v128);
  if (v132 > 285212703)
  {
    goto LABEL_250;
  }

LABEL_267:
  if (v132 <= 31)
  {
    if (v132 > 7)
    {
      if (v132 == 8)
      {
        v133 = 196608;
        goto LABEL_326;
      }

      if (v132 == 16)
      {
        v133 = 229376;
        goto LABEL_326;
      }
    }

    else
    {
      if (v132 == -1879048176)
      {
        v133 = 393216;
        goto LABEL_326;
      }

      if (v132 == 4)
      {
        v133 = 163840;
        goto LABEL_326;
      }
    }
  }

  else if (v132 <= 268435463)
  {
    if (v132 == 32)
    {
      v133 = 0x40000;
      goto LABEL_326;
    }

    if (v132 == 64)
    {
      v133 = 294912;
      goto LABEL_326;
    }
  }

  else
  {
    switch(v132)
    {
      case 268435464:
        v133 = 491520;
        goto LABEL_326;
      case 268435472:
        v133 = 327680;
        goto LABEL_326;
      case 268435488:
        v133 = 360448;
        goto LABEL_326;
    }
  }

LABEL_325:
  v133 = 589824;
LABEL_326:
  v134 = v130 | v133;
  v135 = *&v163[v128];
  v177 = TempBuffer;
  if (v135 > 285212703)
  {
    if (v135 <= 536870915)
    {
      if (v135 > 301989895)
      {
        if (v135 == 301989896)
        {
          v136 = (4 * v179 * v164 + 15) & 0x7FFFFFFF0;
          v137 = v157 * v156;
          v138 = 16;
          goto LABEL_370;
        }

        if (v135 == 335544328)
        {
          v136 = (4 * v179 * v164 + 15) & 0x7FFFFFFF0;
          v137 = v157 * v156;
          v138 = 17;
          goto LABEL_370;
        }
      }

      else
      {
        if (v135 == 285212704)
        {
          v136 = (4 * v179 * v164 + 15) & 0x7FFFFFFF0;
          v137 = v157 * v156;
          v138 = 13;
          goto LABEL_370;
        }

        if (v135 == 285212736)
        {
          v136 = (4 * v179 * v164 + 15) & 0x7FFFFFFF0;
          v137 = v157 * v156;
          v138 = 14;
          goto LABEL_370;
        }
      }
    }

    else if (v135 <= 536870927)
    {
      if (v135 == 536870916)
      {
        v136 = (4 * v179 * v164 + 15) & 0x7FFFFFFF0;
        v137 = v157 * v156;
        v138 = 0;
        goto LABEL_370;
      }

      if (v135 == 536870920)
      {
        v136 = (4 * v179 * v164 + 15) & 0x7FFFFFFF0;
        v137 = v157 * v156;
        v138 = 1;
        goto LABEL_370;
      }
    }

    else
    {
      switch(v135)
      {
        case 536870928:
          v136 = (4 * v179 * v164 + 15) & 0x7FFFFFFF0;
          v137 = v157 * v156;
          v138 = 2;
          goto LABEL_370;
        case 536870944:
          v136 = (4 * v179 * v164 + 15) & 0x7FFFFFFF0;
          v137 = v157 * v156;
          v138 = 3;
          goto LABEL_370;
        case 536870976:
          v136 = (4 * v179 * v164 + 15) & 0x7FFFFFFF0;
          v137 = v157 * v156;
          v138 = 4;
          goto LABEL_370;
      }
    }
  }

  else if (v135 <= 31)
  {
    if (v135 > 7)
    {
      if (v135 == 8)
      {
        v136 = (4 * v179 * v164 + 15) & 0x7FFFFFFF0;
        v137 = v157 * v156;
        v138 = 6;
        goto LABEL_370;
      }

      if (v135 == 16)
      {
        v136 = (4 * v179 * v164 + 15) & 0x7FFFFFFF0;
        v137 = v157 * v156;
        v138 = 7;
        goto LABEL_370;
      }
    }

    else
    {
      if (v135 == -1879048176)
      {
        v136 = (4 * v179 * v164 + 15) & 0x7FFFFFFF0;
        v137 = v157 * v156;
        v138 = 12;
        goto LABEL_370;
      }

      if (v135 == 4)
      {
        v136 = (4 * v179 * v164 + 15) & 0x7FFFFFFF0;
        v137 = v157 * v156;
        v138 = 5;
        goto LABEL_370;
      }
    }
  }

  else if (v135 <= 268435463)
  {
    if (v135 == 32)
    {
      v136 = (4 * v179 * v164 + 15) & 0x7FFFFFFF0;
      v137 = v157 * v156;
      v138 = 8;
      goto LABEL_370;
    }

    if (v135 == 64)
    {
      v136 = (4 * v179 * v164 + 15) & 0x7FFFFFFF0;
      v137 = v157 * v156;
      v138 = 9;
      goto LABEL_370;
    }
  }

  else
  {
    switch(v135)
    {
      case 268435464:
        v136 = (4 * v179 * v164 + 15) & 0x7FFFFFFF0;
        v137 = v157 * v156;
        v138 = 15;
        goto LABEL_370;
      case 268435472:
        v136 = (4 * v179 * v164 + 15) & 0x7FFFFFFF0;
        v137 = v157 * v156;
        v138 = 10;
        goto LABEL_370;
      case 268435488:
        v136 = (4 * v179 * v164 + 15) & 0x7FFFFFFF0;
        v137 = v157 * v156;
        v138 = 11;
        goto LABEL_370;
    }
  }

  v136 = (4 * v179 * v164 + 15) & 0x7FFFFFFF0;
  v137 = v157 * v156;
  v138 = 18;
LABEL_370:
  *&v139 = -1;
  *(&v139 + 1) = -1;
  v232 = v139;
  v231 = v139;
  v230 = v139;
  v228 = -1;
  v227 = v139;
  v229 = v134 | v138;
  *&v232 = [*(v182 + 16) count] | ((*(v182 + 112) != 0) << 8) | 0x10000;
  v228 = 0;
  v140 = [(__CFString *)(&CommonKernels)[16 * v113] UTF8String];
  MPSKernel_LogInfo(v159, v141, "QuantizedSDPA: kernel %s is encoded, threadsPerGroup: (%lu, %lu, %lu), threadGroups: (%lu, %lu, %lu)\n", v140, v155, v171, 1, v126, 1, v137);
  v148 = *(v182 + 232);
  MPSLibrary::CreateUberShaderKey();
  [a1 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v148, v151, v150, 0, 0}];
  MPSSetNDArraysOnComputeEncoder(a1, v182, 4, 0, 0);
  v142 = objc_autoreleasePoolPush();
  [a1 setThreadgroupMemoryLength:v121 atIndex:0];
  [a1 setThreadgroupMemoryLength:v121 atIndex:1];
  if ((v120 & 0x1000) != 0)
  {
    v143 = v136;
  }

  else
  {
    v143 = 16;
  }

  [a1 setThreadgroupMemoryLength:v143 atIndex:2];
  [a1 setThreadgroupMemoryLength:v174 atIndex:3];
  [a1 setThreadgroupMemoryLength:v174 atIndex:4];
  if ((v120 & 0x200) != 0)
  {
    [a1 setThreadgroupMemoryLength:v179 * v167 * (v169 >> 3) atIndex:5];
    [a1 setThreadgroupMemoryLength:v172 * v167 * (v162 >> 3) atIndex:6];
  }

  objc_msgSend_setBytes_length_atIndex_(a1);
  [a1 setBuffer:objc_msgSend(v163 offset:"buffer") atIndex:{0, 28}];
  if ((v120 & 0x1000) == 0)
  {
    [a1 setBuffer:v177 offset:0 atIndex:27];
  }

  v226[0] = (v175 + v179 - 1) / v179;
  v226[1] = 1;
  v226[2] = v137;
  v225[0] = v155;
  v225[1] = v171;
  v225[2] = 1;
  [a1 dispatchThreadgroups:v226 threadsPerThreadgroup:v225];
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseComputeState();
  objc_autoreleasePoolPop(v142);
  v124 = 0;
  v125 = v277;
  if (v277)
  {
    do
    {
LABEL_378:
      v144 = *v125;
      operator delete(v125);
      v125 = v144;
    }

    while (v144);
  }

LABEL_379:
  v145 = v276;
  *&v276 = 0;
  if (v145)
  {
    operator delete(v145);
  }

  MPSAutoCache::~MPSAutoCache(v279);
  return v124;
}
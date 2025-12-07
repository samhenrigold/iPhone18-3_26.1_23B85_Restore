uint64_t MPSNDArraySortCreateUserConstant(uint64_t a1)
{
  v1 = *a1;
  v2 = 3;
  if (*a1 <= 268435471)
  {
    if (v1 <= 15)
    {
      if (v1 != -1879048176)
      {
        if (v1 != 8)
        {
          goto LABEL_48;
        }

        goto LABEL_19;
      }

      v2 = 2;
      HIDWORD(v7) = *(a1 + 4) - 8;
      LODWORD(v7) = HIDWORD(v7);
      v3 = v7 >> 3;
      if (v3 < 8)
      {
        goto LABEL_27;
      }

LABEL_45:
      if (!MTLReportFailureTypeEnabled())
      {
        return 4294967277;
      }

LABEL_46:
      MTLReportFailure();
      return 4294967277;
    }

    if (v1 != 16)
    {
      if (v1 != 32)
      {
        if (v1 != 64)
        {
LABEL_48:
          if (!MTLReportFailureTypeEnabled())
          {
            return 4294967277;
          }

          goto LABEL_46;
        }

LABEL_26:
        HIDWORD(v8) = *(a1 + 4) - 8;
        LODWORD(v8) = HIDWORD(v8);
        v3 = v8 >> 3;
        if (v3 >= 8)
        {
          goto LABEL_45;
        }

        goto LABEL_27;
      }

LABEL_15:
      v2 = 4;
      HIDWORD(v4) = *(a1 + 4) - 8;
      LODWORD(v4) = HIDWORD(v4);
      v3 = v4 >> 3;
      if (v3 >= 8)
      {
        goto LABEL_45;
      }

      goto LABEL_27;
    }

LABEL_21:
    v2 = 5;
    HIDWORD(v6) = *(a1 + 4) - 8;
    LODWORD(v6) = HIDWORD(v6);
    v3 = v6 >> 3;
    if (v3 < 8)
    {
      goto LABEL_27;
    }

    goto LABEL_45;
  }

  if (v1 > 536870927)
  {
    if (v1 != 536870928)
    {
      if (v1 == 536870976)
      {
        goto LABEL_26;
      }

      if (v1 != 536870944)
      {
        goto LABEL_48;
      }

      goto LABEL_15;
    }

    goto LABEL_21;
  }

  if (v1 == 268435472)
  {
    v2 = 1;
    HIDWORD(v30) = *(a1 + 4) - 8;
    LODWORD(v30) = HIDWORD(v30);
    v3 = v30 >> 3;
    if (v3 >= 8)
    {
      goto LABEL_45;
    }

    goto LABEL_27;
  }

  if (v1 == 268435488)
  {
    v2 = 0;
    goto LABEL_26;
  }

  if (v1 != 536870920)
  {
    goto LABEL_48;
  }

LABEL_19:
  v2 = 6;
  HIDWORD(v5) = *(a1 + 4) - 8;
  LODWORD(v5) = HIDWORD(v5);
  v3 = v5 >> 3;
  if (v3 >= 8)
  {
    goto LABEL_45;
  }

LABEL_27:
  if (((0x8Bu >> v3) & 1) == 0)
  {
    goto LABEL_45;
  }

  v9 = dword_239B05FC8[v3] | v2 | (32 * *(a1 + 16)) | (*(a1 + 17) << 6);
  v10 = *(a1 + 32);
  if (v10 >= 2)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      ++v13;
      v12 += 0x4000;
    }

    while (v10 >> v13);
    v11 = v12 & 0x1C000;
  }

  else
  {
    v11 = 0;
  }

  v14 = v9 | (*(a1 + 18) << 7);
  v15 = *(a1 + 40);
  if (v15 >= 2)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      ++v18;
      v17 += 0x20000;
    }

    while (v15 >> v18);
    v16 = v17 & 0xE0000;
  }

  else
  {
    v16 = 0;
  }

  v19 = v14 | (*(a1 + 8) << 8);
  v20 = *(a1 + 19) << 10;
  v21 = *(a1 + 20) << 11;
  v22 = *(a1 + 21) << 12;
  v23 = *(a1 + 22) << 13;
  v24 = *(a1 + 48) << 24;
  v25 = *(a1 + 24);
  if (v25 >= 2)
  {
    v27 = 0;
    v28 = 1;
    do
    {
      ++v28;
      v27 += 0x100000;
    }

    while (v25 >> v28);
    v26 = v27 & 0x700000;
  }

  else
  {
    v26 = 0;
  }

  return v20 | v19 | v21 | (v1 >> 6) & 0x800000 | v22 | v23 | v24 | v11 | v16 | v26;
}

uint64_t MPSNDArraySortDeviceBehaviors::EncodeNDArraySort(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, unint64_t a12, char a13, char a14)
{
  v282 = *MEMORY[0x277D85DE8];
  MEMORY[0x23EE7C450](v245, a5, 0);
  v17 = [*(a6 + 232) inputTensorAtIndex:0];
  v229 = a6;
  [*(a6 + 232) outputTensorAtIndex:0];
  v18 = *(v17 + 2);
  if (v18 == -1879048176)
  {
    v19 = 4;
  }

  else
  {
    v19 = v18 >> 3;
  }

  v192 = v19;
  if (a12 >= 4 && MTLReportFailureTypeEnabled())
  {
    v185 = a9;
    v189 = a12;
    MTLReportFailure();
  }

  DimensionSize = BaseTensor::GetDimensionSize(v17);
  v21 = BaseTensor::GetDimensionSize(v17);
  v22 = BaseTensor::GetDimensionSize(v17);
  v23 = BaseTensor::GetDimensionSize(v17);
  v204 = v22;
  v203 = v23;
  if (a12 == 2)
  {
    v24 = v22;
  }

  else
  {
    v24 = v23;
  }

  if (a12 == 1)
  {
    v24 = v21;
  }

  if (a12)
  {
    v25 = v24;
  }

  else
  {
    v25 = DimensionSize;
  }

  v243 = 0;
  v242 = 0;
  v244 = 0;
  (*(*a1 + 40))(&v242, a1);
  if (v243 * v242 * v244 != 1 || (*(a7 + 1476) & 0x20) == 0)
  {
    v213 = a9;
    v26 = 0;
    v27 = 0;
    goto LABEL_18;
  }

  if (*(a7 + 1482) << 16 == 0x200000)
  {
    if ((*(*a1 + 48))(a1) < v25)
    {
      [a11 setAxis:0];
      MEMORY[0x23EE7C450](&v252, a5, 0);
      v32 = [*(v229 + 232) inputTensorAtIndex:0];
      [*(v229 + 232) outputTensorAtIndex:0];
      v33 = *(v32 + 2);
      if (v33 == -1879048176)
      {
        v34 = 4;
      }

      else
      {
        v34 = v33 >> 3;
      }

      v222 = v34;
      if (a12 >= 4 && MTLReportFailureTypeEnabled())
      {
        v185 = a9;
        v189 = a12;
        MTLReportFailure();
      }

      *&v35 = -1;
      *(&v35 + 1) = -1;
      UserConstant = -1;
      v265 = v35;
      v264 = v35;
      v263 = v35;
      v260 = v35;
      v262 = 0;
      *&v265 = [*(v229 + 16) count] | ((*(v229 + 112) != 0) << 8) | 0x10000;
      v36 = BaseTensor::GetDimensionSize(v32);
      v37 = BaseTensor::GetDimensionSize(v32);
      v38 = BaseTensor::GetDimensionSize(v32);
      v39 = BaseTensor::GetDimensionSize(v32);
      if (BaseTensor::GetDimensionSize(v32) > 0xFE)
      {
        if (BaseTensor::GetDimensionSize(v32) >= 0xFFFF)
        {
          if (BaseTensor::GetDimensionSize(v32) == -1)
          {
            if (MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }

            v71 = -19;
            goto LABEL_218;
          }

          v40 = 32;
        }

        else
        {
          v40 = 16;
        }
      }

      else if (*(a7 + 1472) >= 7)
      {
        v40 = 8;
      }

      else
      {
        v40 = 16;
      }

      memset(v251, 0, sizeof(v251));
      (*(*a1 + 40))(v251, a1);
      if (a12)
      {
        if (a12 == 1)
        {
          v231 = v37;
          v126 = v38 * v36 * v39;
        }

        else if (a12 == 2)
        {
          v231 = v38;
          v126 = v37 * v36 * v39;
        }

        else
        {
          v231 = v39;
          v126 = v37 * v36 * v38;
        }
      }

      else
      {
        v231 = v36;
        v126 = v38 * v37 * v39;
      }

      v257 = 0u;
      v258 = 0u;
      v259 = 0;
      v254 = *(v32 + 2);
      v255 = v40;
      v256 = a12;
      BYTE3(v257) = a13;
      BYTE6(v257) = a14;
      *(&v257 + 1) = 0;
      v258 = 0uLL;
      UserConstant = MPSNDArraySortCreateUserConstant(&v254);
      MPSLibrary::CreateUberShaderKey();
      *(&v257 + 1) = 256;
      UserConstant = MPSNDArraySortCreateUserConstant(&v254);
      MPSLibrary::CreateUberShaderKey();
      *(&v257 + 1) = 1;
      UserConstant = MPSNDArraySortCreateUserConstant(&v254);
      MPSLibrary::CreateUberShaderKey();
      *(&v257 + 1) = 257;
      UserConstant = MPSNDArraySortCreateUserConstant(&v254);
      MPSLibrary::CreateUberShaderKey();
      *(&v257 + 1) = 256;
      UserConstant = MPSNDArraySortCreateUserConstant(&v254);
      MPSLibrary::CreateUberShaderKey();
      UserConstant = MPSNDArraySortCreateUserConstant(&v254);
      v188 = *(v229 + 232);
      MPSLibrary::CreateUberShaderKey();
      PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
      if (PipelineStateForMPSKey && (v216 = MPSLibrary::GetPipelineStateForMPSKey()) != 0 && (v212 = MPSLibrary::GetPipelineStateForMPSKey()) != 0 && (v209 = MPSLibrary::GetPipelineStateForMPSKey()) != 0 && (v207 = MPSLibrary::GetPipelineStateForMPSKey()) != 0 && (v194 = MPSLibrary::GetPipelineStateForMPSKey()) != 0)
      {
        v142 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
        v143 = [v216 maxTotalThreadsPerThreadgroup];
        v144 = [v212 maxTotalThreadsPerThreadgroup];
        v145 = [v209 maxTotalThreadsPerThreadgroup];
        v146 = [v207 maxTotalThreadsPerThreadgroup];
        if (v142 >= v143)
        {
          v147 = v143;
        }

        else
        {
          v147 = v142;
        }

        if (v147 >= v144)
        {
          v147 = v144;
        }

        if (v147 >= v145)
        {
          v147 = v145;
        }

        if (v147 >= v146)
        {
          v147 = v146;
        }

        v148 = 1024;
        do
        {
          v149 = v148;
          v148 >>= 2;
        }

        while (v149 > v147);
        v150 = [v209 threadExecutionWidth];
        v193 = objc_autoreleasePoolPush();
        v151 = *(v32 + 2);
        HIDWORD(v153) = v151 - 536870920;
        LODWORD(v153) = v151 - 536870920;
        v152 = v153 >> 3;
        if (v152 <= 7 && ((0x8Bu >> v152) & 1) != 0)
        {
          v151 = dword_239B05FE8[v152];
        }

        v269 = v231;
        v270 = v126;
        v271 = vdupq_n_s64(1uLL);
        v279 = v231;
        v280 = v126;
        v281 = v271;
        v276 = (16 * v149 + v231 - 1) / (16 * v149) + 1;
        v277.i64[0] = 256;
        v277.i64[1] = v126;
        v278 = 1;
        v154 = [MEMORY[0x277CD7268] descriptorWithDataType:v151 dimensionCount:4 dimensionSizes:&v269];
        [v154 setPreferPackedRows:1];
        v200 = v150;
        v155 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a5 descriptor:v154];
        v156 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a5 descriptor:v154];
        if (v222 <= 2)
        {
          v157 = 2;
        }

        else
        {
          v157 = v222;
        }

        v158 = (2 * v157);
        [v155 setReadCount:v158];
        [v156 setReadCount:v158];
        if (a14)
        {
          v159 = [MEMORY[0x277CD7268] descriptorWithDataType:v40 dimensionCount:4 dimensionSizes:&v279];
          [v159 setPreferPackedRows:1];
          v160 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a5 descriptor:v159];
          v161 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a5 descriptor:v159];
          [v160 setReadCount:v158];
          [v161 setReadCount:v158];
        }

        else
        {
          v160 = 0;
          v161 = 0;
        }

        v162 = [MEMORY[0x277CD7268] descriptorWithDataType:32 dimensionCount:4 dimensionSizes:&v276];
        [v162 setPreferPackedRows:1];
        v163 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a5 descriptor:v162];
        [v163 setReadCount:2 * v222];
        v275[0] = v155;
        v275[1] = v156;
        v164 = [MEMORY[0x277CBEA60] arrayWithObjects:v275 count:2];
        if (a14)
        {
          v274[0] = v160;
          v274[1] = v161;
          v220 = [MEMORY[0x277CBEA60] arrayWithObjects:v274 count:2];
        }

        else
        {
          v220 = 0;
        }

        if (v222)
        {
          v165 = 0;
          v166 = 0;
          v167 = 0;
          v201 = (v149 / v200) << 9;
          v168 = 1;
          do
          {
            v169 = v167;
            v167 = v168;
            if (v165)
            {
              v170 = v216;
            }

            else
            {
              v170 = PipelineStateForMPSKey;
            }

            [a4 setComputePipelineState:v170];
            MPSSetNDArraysOnComputeEncoder(a4, v229, 4, 0, 0);
            [a4 setBuffer:objc_msgSend(v163 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v163, 0, 4, &i, 0), 24}];
            v171 = [v164 objectAtIndexedSubscript:v169];
            [a4 setBuffer:objc_msgSend(v171 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v171, 0, 4, v238, 0), 28}];
            v172 = [v164 objectAtIndexedSubscript:v167];
            [a4 setBuffer:objc_msgSend(v172 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v172, 0, 4, v238, 0), 27}];
            if (a14)
            {
              v173 = [v220 objectAtIndexedSubscript:v169];
              [a4 setBuffer:objc_msgSend(v173 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v173, 0, 4, v240, 0), 26}];
              v174 = [v220 objectAtIndexedSubscript:v167];
              [a4 setBuffer:objc_msgSend(v174 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v174, 0, 4, v240, 0), 25}];
            }

            objc_msgSend_setBytes_length_atIndex_(a4);
            [a4 setThreadgroupMemoryLength:1024 atIndex:0];
            v248 = (16 * v149 + v231 - 1) / (16 * v149);
            v249 = v126;
            v250 = 1;
            v246 = v149;
            v247 = vdupq_n_s64(1uLL);
            [a4 dispatchThreadgroups:&v248 threadsPerThreadgroup:&v246];
            v273 = v163;
            [a11 encodeToMPSCommandEncoder:a4 commandBuffer:a5 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] destinationArray:{"arrayWithObjects:count:", &v273, 1), v163}];
            v175 = v209;
            if (v222 + v165 == 1)
            {
              v175 = v207;
            }

            if (v165)
            {
              v176 = v175;
            }

            else
            {
              v176 = v212;
            }

            [a4 setComputePipelineState:v176];
            MPSSetNDArraysOnComputeEncoder(a4, v229, 4, 0, 0);
            [a4 setBuffer:objc_msgSend(v163 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v163, 0, 4, &i, 0), 24}];
            v177 = [v164 objectAtIndexedSubscript:v169];
            [a4 setBuffer:objc_msgSend(v177 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v177, 0, 4, v238, 0), 28}];
            v178 = [v164 objectAtIndexedSubscript:v167];
            [a4 setBuffer:objc_msgSend(v178 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v178, 0, 4, v238, 0), 27}];
            if (a14)
            {
              v179 = [v220 objectAtIndexedSubscript:v169];
              [a4 setBuffer:objc_msgSend(v179 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v179, 0, 4, v240, 0), 26}];
              v180 = [v220 objectAtIndexedSubscript:v167];
              [a4 setBuffer:objc_msgSend(v180 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v180, 0, 4, v240, 0), 25}];
            }

            [a4 setThreadgroupMemoryLength:v201 atIndex:0];
            [a4 setThreadgroupMemoryLength:1024 atIndex:1];
            objc_msgSend_setBytes_length_atIndex_(a4);
            v248 = (16 * v149 + v231 - 1) / (16 * v149);
            v249 = v126;
            v250 = 1;
            v246 = v149;
            v247 = vdupq_n_s64(1uLL);
            [a4 dispatchThreadgroups:&v248 threadsPerThreadgroup:&v246];
            v166 += 8;
            --v165;
            v168 = v169;
          }

          while (v222 + v165);
          if (v222 == 1)
          {
            [a4 setComputePipelineState:v194];
            MPSSetNDArraysOnComputeEncoder(a4, v229, 4, 0, 0);
            v181 = [v164 objectAtIndexedSubscript:v167];
            [a4 setBuffer:objc_msgSend(v181 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v181, 0, 4, v238, 0), 28}];
            v182 = [v164 objectAtIndexedSubscript:v169];
            [a4 setBuffer:objc_msgSend(v182 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v182, 0, 4, v238, 0), 27}];
            if (a14)
            {
              v183 = [v220 objectAtIndexedSubscript:v167];
              [a4 setBuffer:objc_msgSend(v183 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v183, 0, 4, v240, 0), 26}];
              v184 = [v220 objectAtIndexedSubscript:v169];
              [a4 setBuffer:objc_msgSend(v184 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v184, 0, 4, v240, 0), 25}];
            }

            objc_msgSend_setBytes_length_atIndex_(a4);
            v248 = (16 * v149 + v231 - 1) / (16 * v149);
            v249 = v126;
            v250 = 1;
            v246 = v149;
            v247 = vdupq_n_s64(1uLL);
            [a4 dispatchThreadgroups:&v248 threadsPerThreadgroup:&v246];
          }
        }

        [a5 addCompletedHandler:&__block_literal_global_19];
        objc_autoreleasePoolPop(v193);
        MPSLibrary::ReleaseMPSKey();
        MPSLibrary::ReleaseMPSKey();
        MPSLibrary::ReleaseMPSKey();
        MPSLibrary::ReleaseMPSKey();
        MPSLibrary::ReleaseMPSKey();
        MPSLibrary::ReleaseMPSKey();
        MPSLibrary::ReleaseComputeState();
        MPSLibrary::ReleaseComputeState();
        MPSLibrary::ReleaseComputeState();
        MPSLibrary::ReleaseComputeState();
        MPSLibrary::ReleaseComputeState();
        MPSLibrary::ReleaseComputeState();
        v71 = 0;
      }

      else
      {
        v71 = -1;
      }

LABEL_218:
      v141 = &v252;
      goto LABEL_219;
    }

    MEMORY[0x23EE7C450](&v279, a5, 0);
    v73 = [*(v229 + 232) inputTensorAtIndex:0];
    [*(v229 + 232) outputTensorAtIndex:0];
    if (a12 >= 4 && MTLReportFailureTypeEnabled())
    {
      v185 = a9;
      v189 = a12;
      MTLReportFailure();
    }

    *&v74 = -1;
    *(&v74 + 1) = -1;
    UserConstant = -1;
    v265 = v74;
    v264 = v74;
    v263 = v74;
    v260 = v74;
    v262 = 0;
    *&v265 = [*(v229 + 16) count] | ((*(v229 + 112) != 0) << 8) | 0x10000;
    v75 = BaseTensor::GetDimensionSize(v73);
    v76 = BaseTensor::GetDimensionSize(v73);
    v77 = BaseTensor::GetDimensionSize(v73);
    v78 = BaseTensor::GetDimensionSize(v73);
    if (BaseTensor::GetDimensionSize(v73) > 0xFE)
    {
      if (BaseTensor::GetDimensionSize(v73) >= 0xFFFF)
      {
        if (BaseTensor::GetDimensionSize(v73) == -1)
        {
          if (MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v71 = -19;
          goto LABEL_188;
        }

        v79 = 32;
      }

      else
      {
        v79 = 16;
      }
    }

    else if (*(a7 + 1472) >= 7)
    {
      v79 = 8;
    }

    else
    {
      v79 = 16;
    }

    if (a12 == 2)
    {
      v125 = v76 * v75 * v78;
      v75 = v77;
    }

    else if (a12 == 1)
    {
      v125 = v77 * v75 * v78;
      v75 = v76;
    }

    else if (a12)
    {
      v125 = v76 * v75 * v77;
      v75 = v78;
    }

    else
    {
      v125 = v77 * v76 * v78;
    }

    if (v75 >= 0x10000 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v257 = 0u;
    v258 = 0u;
    v259 = 0;
    v254 = *(v73 + 2);
    v255 = v79;
    v256 = a12;
    BYTE3(v257) = a13;
    BYTE6(v257) = a14;
    *(&v257 + 1) = 0;
    v258 = 0uLL;
    UserConstant = MPSNDArraySortCreateUserConstant(&v254);
    v187 = *(v229 + 232);
    MPSLibrary::CreateUberShaderKey();
    v127 = MPSLibrary::GetPipelineStateForMPSKey();
    v128 = v127;
    if (v127)
    {
      v129 = [v127 maxTotalThreadsPerThreadgroup];
      v130 = 1024;
      do
      {
        v131 = v130;
        v130 >>= 2;
      }

      while (v131 > v129);
      v228 = objc_autoreleasePoolPush();
      v132 = *(v73 + 2);
      HIDWORD(v134) = v132 - 536870920;
      LODWORD(v134) = v132 - 536870920;
      v133 = v134 >> 3;
      if (v133 <= 7 && ((0x8Bu >> v133) & 1) != 0)
      {
        v132 = dword_239B05FE8[v133];
      }

      v269 = v75;
      v270 = v125;
      v271 = vdupq_n_s64(1uLL);
      v135 = [MEMORY[0x277CD7268] descriptorWithDataType:v132 dimensionCount:4 dimensionSizes:&v269];
      [v135 setPreferPackedRows:1];
      v136 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a5 descriptor:v135];
      v137 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a5 descriptor:v135];
      if (a14)
      {
        v138 = [MEMORY[0x277CD7268] descriptorWithDataType:v79 dimensionCount:4 dimensionSizes:&v269];
        [v138 setPreferPackedRows:1];
        v139 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a5 descriptor:v138];
        v140 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a5 descriptor:v138];
      }

      else
      {
        v139 = 0;
        v140 = 0;
      }

      [a4 setComputePipelineState:v128];
      MPSSetNDArraysOnComputeEncoder(a4, v229, 4, 0, 0);
      [a4 setBuffer:objc_msgSend(v136 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v136, 0, 4, v238, 0), 28}];
      [a4 setBuffer:objc_msgSend(v137 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v137, 0, 4, v238, 0), 27}];
      if (a14)
      {
        [a4 setBuffer:objc_msgSend(v139 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v139, 0, 4, v240, 0), 26}];
        [a4 setBuffer:objc_msgSend(v140 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v140, 0, 4, v240, 0), 25}];
      }

      objc_msgSend_setBytes_length_atIndex_(a4);
      [a4 setThreadgroupMemoryLength:0x4000 atIndex:0];
      [a4 setThreadgroupMemoryLength:0x4000 atIndex:1];
      v276 = v125;
      v277 = vdupq_n_s64(1uLL);
      v252 = v131;
      v253 = v277;
      [a4 dispatchThreadgroups:&v276 threadsPerThreadgroup:&v252];
      [a5 addCompletedHandler:&__block_literal_global];
      objc_autoreleasePoolPop(v228);
      MPSLibrary::ReleaseMPSKey();
      MPSLibrary::ReleaseComputeState();
      v71 = 0;
    }

    else
    {
      v71 = -1;
    }

LABEL_188:
    v141 = &v279;
LABEL_219:
    MPSAutoCache::~MPSAutoCache(v141);
    goto LABEL_97;
  }

  v213 = a9;
  v26 = 1;
  v27 = 1;
LABEL_18:
  *&v28 = -1;
  *(&v28 + 1) = -1;
  UserConstant = -1;
  v265 = v28;
  v264 = v28;
  v263 = v28;
  v260 = v28;
  v262 = 0;
  *&v265 = [*(v229 + 16) count] | ((*(v229 + 112) != 0) << 8) | 0x10000;
  if (BaseTensor::GetDimensionSize(v17) <= 0xFE)
  {
    if (*(a7 + 1472) >= 7)
    {
      v29 = 8;
    }

    else
    {
      v29 = 16;
    }

    if (a12 != 2)
    {
      goto LABEL_23;
    }

LABEL_28:
    v197 = v203 * v21;
    v234 = v21;
    v30 = v204;
LABEL_46:
    v31 = DimensionSize;
    goto LABEL_47;
  }

  if (BaseTensor::GetDimensionSize(v17) < 0xFFFF)
  {
    v29 = 16;
    if (a12 != 2)
    {
      goto LABEL_23;
    }

    goto LABEL_28;
  }

  if (BaseTensor::GetDimensionSize(v17) == -1)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v71 = -19;
    goto LABEL_97;
  }

  v29 = 32;
  if (a12 == 2)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (a12 == 1)
  {
    v197 = v203 * v204;
    v234 = v204;
    v30 = v21;
    goto LABEL_46;
  }

  if (a12)
  {
    v197 = v204 * v21;
    v234 = v21;
    v30 = v203;
    goto LABEL_46;
  }

  v197 = v203 * v204;
  v234 = v204;
  v30 = DimensionSize;
  v31 = v21;
LABEL_47:
  v41 = *(a7 + 1480);
  v42 = v243;
  v43 = BYTE2(v41) * v242;
  v223 = v244;
  if (a12)
  {
    LODWORD(v44) = v31 != 0;
    v236 = v44;
    for (i = v44; v43 > DimensionSize; v43 >>= 1)
    {
      if (BYTE2(v41) > (v244 * v243 * v43) >> 1)
      {
        break;
      }
    }

    if (v31 && v43 >= 2 && ~(DimensionSize / v43 * v43) + DimensionSize < v43 >> 1)
    {
      do
      {
        v45 = v43 >> 1;
        v42 *= 2;
        if (v43 < 4)
        {
          break;
        }

        v46 = v43 >> 2;
        v43 >>= 1;
      }

      while (~(DimensionSize / v45 * v45) + DimensionSize < v46);
    }

    else
    {
      v45 = v43;
    }

    v50 = v31 != 0;
    v52 = v30 - 1;
    v53 = (v52 + v42) / v42;
    if (v53 >= 0x10)
    {
      LODWORD(v53) = 16;
    }

    v54 = (v53 - 1) | ((v53 - 1) >> 1) | (((v53 - 1) | ((v53 - 1) >> 1)) >> 2);
    v55 = v54 | (v54 >> 4) | ((v54 | (v54 >> 4)) >> 8);
    v51 = (v55 | HIWORD(v55)) + 1;
    v233 = v51;
    v219 = (v52 + v42 * v51) / (v42 * v51);
    v221 = (DimensionSize + v45 - 1) / v45;
    v195 = v219;
  }

  else
  {
    for (; v43 > DimensionSize; v43 >>= 1)
    {
      if (BYTE2(v41) > (v244 * v243 * v43) >> 1)
      {
        break;
      }
    }

    v47 = (v43 + v30 - 1) / v43;
    if (v47 >= 0x10)
    {
      LODWORD(v47) = 16;
    }

    v48 = (v47 - 1) | ((v47 - 1) >> 1) | (((v47 - 1) | ((v47 - 1) >> 1)) >> 2);
    v49 = v48 | (v48 >> 4) | ((v48 | (v48 >> 4)) >> 8);
    v44 = (v49 | HIWORD(v49)) + 1;
    v50 = 1;
    v236 = 1;
    i = v44;
    v233 = 1;
    v219 = (v243 + v21 - 1) / v243;
    v221 = (DimensionSize + v43 * v44 - 1) / (v43 * v44);
    LODWORD(v51) = 1;
    v45 = v43;
    v195 = v221;
  }

  v257 = 0u;
  v258 = 0u;
  v259 = 0;
  v254 = *(v17 + 2);
  v191 = v29;
  v255 = v29;
  v256 = a12;
  BYTE3(v257) = a13;
  BYTE4(v257) = v26;
  BYTE5(v257) = (v41 & 0xFF0000) == 0x400000;
  BYTE6(v257) = a14;
  if (v27)
  {
    v56 = v45;
  }

  else
  {
    v56 = 1;
  }

  if (v44 >= 0x10)
  {
    v44 = 16;
  }

  else
  {
    v44 = v44;
  }

  if (v51 >= 0x10)
  {
    v51 = 16;
  }

  else
  {
    v51 = v51;
  }

  if (a12)
  {
    v44 = v50;
  }

  else
  {
    v56 = 1;
    v51 = v50;
  }

  *(&v257 + 1) = v56;
  *&v258 = v44;
  *(&v258 + 1) = v51;
  BYTE1(v257) = 1;
  UserConstant = MPSNDArraySortCreateUserConstant(&v254);
  MPSLibrary::CreateUberShaderKey();
  *(&v257 + 1) = 257;
  UserConstant = MPSNDArraySortCreateUserConstant(&v254);
  MPSLibrary::CreateUberShaderKey();
  *(&v257 + 1) = 1;
  UserConstant = MPSNDArraySortCreateUserConstant(&v254);
  MPSLibrary::CreateUberShaderKey();
  *(&v257 + 1) = 257;
  UserConstant = MPSNDArraySortCreateUserConstant(&v254);
  MPSLibrary::CreateUberShaderKey();
  *(&v257 + 1) = 256;
  UserConstant = MPSNDArraySortCreateUserConstant(&v254);
  v186 = *(v229 + 232);
  MPSLibrary::CreateUberShaderKey();
  v211 = MPSLibrary::GetPipelineStateForMPSKey();
  if (v211)
  {
    v210 = MPSLibrary::GetPipelineStateForMPSKey();
    if (v210)
    {
      v208 = MPSLibrary::GetPipelineStateForMPSKey();
      if (v208)
      {
        v57 = MPSLibrary::GetPipelineStateForMPSKey();
        if (v57)
        {
          v202 = MPSLibrary::GetPipelineStateForMPSKey();
          if (v202)
          {
            v225 = [v211 maxTotalThreadsPerThreadgroup];
            v214 = [v210 maxTotalThreadsPerThreadgroup];
            v58 = [v208 maxTotalThreadsPerThreadgroup];
            v199 = v57;
            v59 = [v57 maxTotalThreadsPerThreadgroup];
            v60 = [v202 maxTotalThreadsPerThreadgroup];
            v217 = v197;
            v61 = 16 * v195;
            v62 = v50 * v42 * v45;
            v63 = v191 >> 3;
            v196 = 16 * v62 * v63;
            v198 = 32 * v62;
            v64 = v225;
            if (v225 >= v214)
            {
              v64 = v214;
            }

            if (v64 >= v58)
            {
              v64 = v58;
            }

            if (v64 >= v59)
            {
              v64 = v59;
            }

            if (v64 >= v60)
            {
              v64 = v60;
            }

            do
            {
              v65 = v45;
              v45 >>= 2;
            }

            while (v65 > v64);
            v215 = v65;
            v66 = objc_autoreleasePoolPush();
            v67 = *(v17 + 2);
            HIDWORD(v69) = v67 - 536870920;
            LODWORD(v69) = v67 - 536870920;
            v68 = v69 >> 3;
            context = v66;
            if (v68 > 7)
            {
              v70 = v203;
            }

            else
            {
              v70 = v203;
              if ((0x8Bu >> v68))
              {
                v67 = dword_239B05FE8[v68];
              }
            }

            v279 = DimensionSize;
            v280 = v21;
            v80 = v70;
            v281.i64[0] = v204;
            v281.i64[1] = v70;
            *(&v279 + a12) = v61;
            v276 = DimensionSize;
            v277.i64[0] = v21;
            v277.i64[1] = v204;
            v278 = v70;
            TempBuffer = MPSAutoCache::GetTempBuffer(v245, v279 * v63 * v280 * v281.i64[0] * v281.i64[1], 0);
            if (v192)
            {
              v82 = v21 * DimensionSize * v204 * v80;
              v83 = MPSAutoCache::GetTempBuffer(v245, v82 * (v67 >> 3), 0);
              v84 = MPSAutoCache::GetTempBuffer(v245, v82 * (v67 >> 3), 0);
              if (a14)
              {
                v226 = MPSAutoCache::GetTempBuffer(v245, v82 * v63, 0);
                v205 = MPSAutoCache::GetTempBuffer(v245, v82 * v63, 0);
                goto LABEL_119;
              }
            }

            else
            {
              v83 = 0;
              v84 = 0;
            }

            v226 = 0;
            v205 = 0;
LABEL_119:
            v85 = [MEMORY[0x277CD7268] descriptorWithDataType:v191 dimensionCount:4 dimensionSizes:&v279];
            [v85 setPreferPackedRows:1];
            v86 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:TempBuffer descriptor:v85];
            if (v86)
            {
              v87 = [a5 userDictionary];
              v88 = [v87 objectForKey:@"_MPSCommandBufferRetainListKey"];
              if (!v88)
              {
                v88 = objc_alloc_init(MEMORY[0x277CBEB18]);
                [v87 setObject:v88 forKey:@"_MPSCommandBufferRetainListKey"];

                v269 = MEMORY[0x277D85DD0];
                v270 = 3221225472;
                v271.i64[0] = ___ZL27GetValueForCommandBufferKeyPU27objcproto16MTLCommandBuffer11objc_objectPK8NSString_block_invoke;
                v271.i64[1] = &unk_278AFFDB8;
                v272 = @"_MPSCommandBufferRetainListKey";
                [a5 addCompletedHandler:&v269];
              }

              [v88 addObject:v86];
            }

            v89 = [MEMORY[0x277CD7268] descriptorWithDataType:v67 dimensionCount:4 dimensionSizes:&v276];
            [v89 setPreferPackedRows:1];
            v90 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:v83 descriptor:v89];
            if (v90)
            {
              v91 = [a5 userDictionary];
              v92 = [v91 objectForKey:@"_MPSCommandBufferRetainListKey"];
              if (!v92)
              {
                v93 = objc_alloc_init(MEMORY[0x277CBEB18]);
                [v91 setObject:v93 forKey:@"_MPSCommandBufferRetainListKey"];

                v269 = MEMORY[0x277D85DD0];
                v270 = 3221225472;
                v271.i64[0] = ___ZL27GetValueForCommandBufferKeyPU27objcproto16MTLCommandBuffer11objc_objectPK8NSString_block_invoke;
                v271.i64[1] = &unk_278AFFDB8;
                v272 = @"_MPSCommandBufferRetainListKey";
                [a5 addCompletedHandler:&v269];
                v92 = v93;
              }

              [v92 addObject:v90];
            }

            v94 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:v84 descriptor:v89];
            if (v94)
            {
              v95 = [a5 userDictionary];
              v96 = [v95 objectForKey:@"_MPSCommandBufferRetainListKey"];
              if (!v96)
              {
                v97 = objc_alloc_init(MEMORY[0x277CBEB18]);
                [v95 setObject:v97 forKey:@"_MPSCommandBufferRetainListKey"];

                v269 = MEMORY[0x277D85DD0];
                v270 = 3221225472;
                v271.i64[0] = ___ZL27GetValueForCommandBufferKeyPU27objcproto16MTLCommandBuffer11objc_objectPK8NSString_block_invoke;
                v271.i64[1] = &unk_278AFFDB8;
                v272 = @"_MPSCommandBufferRetainListKey";
                [a5 addCompletedHandler:&v269];
                v96 = v97;
              }

              [v96 addObject:v94];
            }

            if (a14)
            {
              v98 = [MEMORY[0x277CD7268] descriptorWithDataType:v191 dimensionCount:4 dimensionSizes:&v276];
              [v98 setPreferPackedRows:1];
              v99 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:v226 descriptor:v98];
              if (v99)
              {
                v100 = [a5 userDictionary];
                v101 = [v100 objectForKey:@"_MPSCommandBufferRetainListKey"];
                if (!v101)
                {
                  v102 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  [v100 setObject:v102 forKey:@"_MPSCommandBufferRetainListKey"];

                  v269 = MEMORY[0x277D85DD0];
                  v270 = 3221225472;
                  v271.i64[0] = ___ZL27GetValueForCommandBufferKeyPU27objcproto16MTLCommandBuffer11objc_objectPK8NSString_block_invoke;
                  v271.i64[1] = &unk_278AFFDB8;
                  v272 = @"_MPSCommandBufferRetainListKey";
                  [a5 addCompletedHandler:&v269];
                  v101 = v102;
                }

                [v101 addObject:v99];
              }

              v103 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:v205 descriptor:v98];
              if (v103)
              {
                v104 = [a5 userDictionary];
                v105 = [v104 objectForKey:@"_MPSCommandBufferRetainListKey"];
                if (!v105)
                {
                  v106 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  [v104 setObject:v106 forKey:@"_MPSCommandBufferRetainListKey"];

                  v269 = MEMORY[0x277D85DD0];
                  v270 = 3221225472;
                  v271.i64[0] = ___ZL27GetValueForCommandBufferKeyPU27objcproto16MTLCommandBuffer11objc_objectPK8NSString_block_invoke;
                  v271.i64[1] = &unk_278AFFDB8;
                  v272 = @"_MPSCommandBufferRetainListKey";
                  [a5 addCompletedHandler:&v269];
                  v105 = v106;
                }

                [v105 addObject:v103];
              }
            }

            else
            {
              v99 = 0;
              v103 = 0;
            }

            v268[0] = v90;
            v268[1] = v94;
            v227 = [MEMORY[0x277CBEA60] arrayWithObjects:v268 count:2];
            if (a14)
            {
              v267[0] = v99;
              v267[1] = v103;
              v206 = [MEMORY[0x277CBEA60] arrayWithObjects:v267 count:2];
              v107 = v86;
              v108 = v192;
              if (!v192)
              {
                goto LABEL_158;
              }
            }

            else
            {
              v107 = v86;
              v206 = 0;
              v108 = v192;
              if (!v192)
              {
LABEL_158:
                objc_autoreleasePoolPop(context);
                MPSLibrary::ReleaseMPSKey();
                MPSLibrary::ReleaseMPSKey();
                MPSLibrary::ReleaseMPSKey();
                MPSLibrary::ReleaseMPSKey();
                MPSLibrary::ReleaseMPSKey();
                MPSLibrary::ReleaseComputeState();
                MPSLibrary::ReleaseComputeState();
                MPSLibrary::ReleaseComputeState();
                MPSLibrary::ReleaseComputeState();
                MPSLibrary::ReleaseComputeState();
                v71 = 0;
                goto LABEL_97;
              }
            }

            v109 = 0;
            v110 = 0;
            v111 = 0;
            v112 = 2 * v108;
            v113 = 1;
            v114 = 1;
            do
            {
              v115 = v114;
              v116 = v113;
              if (v109)
              {
                v117 = v210;
              }

              else
              {
                v117 = v211;
              }

              [a4 setComputePipelineState:v117];
              MPSSetNDArraysOnComputeEncoder(a4, v229, 4, 0, 0);
              [a4 setBuffer:objc_msgSend(v107 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v107, 0, 4, v237, 0), 28}];
              v118 = [v227 objectAtIndexedSubscript:v111];
              [a4 setBuffer:objc_msgSend(v118 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v118, 0, 4, v239, 0), 27}];
              v235 = v109;
              objc_msgSend_setBytes_length_atIndex_(a4);
              [a4 setThreadgroupMemoryLength:v198 atIndex:0];
              v269 = v221;
              v270 = v219;
              v271.i64[0] = v217;
              v252 = v215;
              v253.i64[0] = v42;
              v253.i64[1] = v223;
              [a4 dispatchThreadgroups:&v269 threadsPerThreadgroup:&v252];
              v266 = v107;
              [a11 encodeToMPSCommandEncoder:a4 commandBuffer:a5 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] destinationArray:{"arrayWithObjects:count:", &v266, 1), v107}];
              v119 = v202;
              if (v112 != 1)
              {
                v119 = v199;
              }

              if (v109)
              {
                v120 = v119;
              }

              else
              {
                v120 = v208;
              }

              [a4 setComputePipelineState:v120];
              MPSSetNDArraysOnComputeEncoder(a4, v229, 4, 0, 0);
              [a4 setBuffer:objc_msgSend(v107 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v107, 0, 4, v237, 0), 28}];
              v121 = [v227 objectAtIndexedSubscript:v111];
              [a4 setBuffer:objc_msgSend(v121 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v121, 0, 4, v239, 0), 27}];
              v122 = [v227 objectAtIndexedSubscript:v115];
              [a4 setBuffer:objc_msgSend(v122 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v122, 0, 4, v239, 0), 26}];
              if (a14)
              {
                v123 = [v206 objectAtIndexedSubscript:v110];
                [a4 setBuffer:objc_msgSend(v123 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v123, 0, 4, &v241, 0), 25}];
                v124 = [v206 objectAtIndexedSubscript:v116];
                [a4 setBuffer:objc_msgSend(v124 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v124, 0, 4, &v241, 0), 24}];
              }

              objc_msgSend_setBytes_length_atIndex_(a4);
              [a4 setThreadgroupMemoryLength:v196 atIndex:0];
              v269 = v221;
              v270 = v219;
              v271.i64[0] = v217;
              v252 = v215;
              v253.i64[0] = v42;
              v253.i64[1] = v223;
              [a4 dispatchThreadgroups:&v269 threadsPerThreadgroup:&v252];
              v109 += 4;
              v113 = v110;
              v110 = v116;
              v114 = v111;
              v111 = v115;
              --v112;
            }

            while (v112);
            goto LABEL_158;
          }
        }
      }
    }
  }

  v71 = -1;
LABEL_97:
  MPSAutoCache::~MPSAutoCache(v245);
  return v71;
}

void sub_2399FABB8(_Unwind_Exception *a1)
{
  MPSAutoCache::~MPSAutoCache((v1 - 136));
  MPSAutoCache::~MPSAutoCache(&STACK[0x250]);
  _Unwind_Resume(a1);
}

uint64_t EncodeSort(MPSKernel *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *(&a1->super.isa + *MEMORY[0x277CD7370]);
  v30 = *(&a1->super.isa + *MEMORY[0x277CD7350]);
  v6 = [*(a4 + 232) inputTensorAtIndex:0];
  v34 = a4;
  v7 = [*(a4 + 232) outputTensorAtIndex:0];
  if (*(v6 + 2) != *(v7 + 2) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  DimensionSize = BaseTensor::GetDimensionSize(v6);
  v28 = BaseTensor::GetDimensionSize(v6);
  v8 = BaseTensor::GetDimensionSize(v6);
  v9 = BaseTensor::GetDimensionSize(v6);
  v10 = BaseTensor::GetDimensionSize(v7);
  v11 = BaseTensor::GetDimensionSize(v7);
  v12 = BaseTensor::GetDimensionSize(v7);
  v13 = BaseTensor::GetDimensionSize(v7);
  v14 = dataTypeToString(*(v6 + 2));
  v15 = dataTypeToString(*(v7 + 2));
  v16 = [(MPSKernel *)a1 axis];
  v17 = [(MPSKernel *)a1 descending];
  v19 = "";
  if (v17)
  {
    v19 = "-descending";
  }

  MPSKernel_LogInfo(a1, v18, "-test MPSNDArraySortTest -srcShapes [%u,%u,%u,%u] -dstShapes [%u,%u,%u,%u] -srcDataTypes %s -dstDataTypes %s -axis %d %s\n", DimensionSize, v28, v8, v9, v10, v11, v12, v13, v14, v15, v16, v19);
  v20 = *(v32 + 32);
  v21 = *(&a1->super.isa + *MEMORY[0x277CD7360]);
  v22 = (*(&a1->super.isa + *MEMORY[0x277CD7350]))[2];
  v23 = *(&a1->super.isa + *MEMORY[0x277CD7368]);
  labelHash = a1[7]._labelHash;
  v25 = [(MPSKernel *)a1 axis];
  LOWORD(v27) = [(MPSKernel *)a1 descending];
  return (*(*v20 + 16))(v20, a1, v22, a2, a3, v34, v30, v32, v21, v23, labelHash, v25, v27);
}

uint64_t EncodeArgSort(MPSKernel *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *(&a1->super.isa + *MEMORY[0x277CD7370]);
  v31 = *(&a1->super.isa + *MEMORY[0x277CD7350]);
  v6 = [*(a4 + 232) inputTensorAtIndex:0];
  v7 = [*(a4 + 232) outputTensorAtIndex:0];
  DimensionSize = BaseTensor::GetDimensionSize(v6);
  v28 = BaseTensor::GetDimensionSize(v6);
  v27 = BaseTensor::GetDimensionSize(v6);
  v8 = BaseTensor::GetDimensionSize(v6);
  v9 = BaseTensor::GetDimensionSize(v7);
  v10 = BaseTensor::GetDimensionSize(v7);
  v11 = BaseTensor::GetDimensionSize(v7);
  v12 = BaseTensor::GetDimensionSize(v7);
  v13 = dataTypeToString(v6[2]);
  v14 = dataTypeToString(v7[2]);
  v15 = [(MPSKernel *)a1 axis];
  v16 = [(MPSKernel *)a1 descending];
  v18 = "";
  if (v16)
  {
    v18 = "-descending";
  }

  MPSKernel_LogInfo(a1, v17, "-test MPSNDArrayArgSortTest -srcShapes [%u,%u,%u,%u] -dstShapes [%u,%u,%u,%u] -srcDataTypes %s -dstDataTypes %s -axis %d %s\n", DimensionSize, v28, v27, v8, v9, v10, v11, v12, v13, v14, v15, v18);
  v19 = *(v30 + 32);
  v20 = *(&a1->super.isa + *MEMORY[0x277CD7360]);
  v21 = (*(&a1->super.isa + *MEMORY[0x277CD7350]))[2];
  v22 = *(&a1->super.isa + *MEMORY[0x277CD7368]);
  labelHash = a1[7]._labelHash;
  v24 = [(MPSKernel *)a1 axis];
  BYTE1(v26) = 1;
  LOBYTE(v26) = [(MPSKernel *)a1 descending];
  return (*(*v19 + 16))(v19, a1, v21, a2, a3, a4, v31, v30, v20, v22, labelHash, v24, v26);
}

__n128 MPSNDArraySortDeviceBehaviors::getThreads@<Q0>(MPSNDArraySortDeviceBehaviors *this@<X0>, __n128 *a2@<X8>)
{
  result = *(this + 8);
  *a2 = result;
  a2[1].n128_u64[0] = *(this + 3);
  return result;
}

uint64_t ___ZL27GetValueForCommandBufferKeyPU27objcproto16MTLCommandBuffer11objc_objectPK8NSString_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userDictionary];
  v4 = *(a1 + 32);

  return [v3 removeObjectForKey:v4];
}

uint64_t MPSKernel_LogInfo(uint64_t result, uint64_t a2, const char *a3, ...)
{
  va_start(va, a3);
  if ((*(result + *MEMORY[0x277CD7378]) & 0x10) != 0 && *(result + *MEMORY[0x277CD7380]) >= 3uLL)
  {
    return vfprintf(*MEMORY[0x277D85DF8], a3, va);
  }

  return result;
}

{
  va_start(va, a3);
  if ((*(result + *MEMORY[0x277CD7378]) & 0x10) != 0 && *(result + *MEMORY[0x277CD7380]) >= 4uLL)
  {
    return vfprintf(*MEMORY[0x277D85DF8], "Reduction: f16Ops=%f, f32Ops=%f, BytesRead=%f, BytesWritten=%f, OpsPerByte=%f\n", va);
  }

  return result;
}

{
  va_start(va, a3);
  if ((*(result + *MEMORY[0x277CD7378]) & 0x10) != 0 && *(result + *MEMORY[0x277CD7380]) >= 4uLL)
  {
    return vfprintf(*MEMORY[0x277D85DF8], a3, va);
  }

  return result;
}

{
  va_start(va, a3);
  if ((*(result + *MEMORY[0x277CD7378]) & 0x10) != 0 && *(result + *MEMORY[0x277CD7380]) >= 4uLL)
  {
    return vfprintf(*MEMORY[0x277D85DF8], "Identity: f16Ops=%f, f32Ops=%f, BytesRead=%f, BytesWritten=%f, OpsPerByte=%f\n", va);
  }

  return result;
}

{
  va_start(va, a3);
  if ((*(result + *MEMORY[0x277CD7378]) & 0x10) != 0 && *(result + *MEMORY[0x277CD7380]) >= 3uLL)
  {
    return vfprintf(*MEMORY[0x277D85DF8], "-test MPSNDArrayScatterNDTest -srcShapes [%u,%u,%u,%u] [%u,%u,%u,%u] [%u,%u,%u,%u] -dstShapes [%u,%u,%u,%u] -srcDataTypes %s %s %s -dstDataTypes %s -scatterMode %s\n", va);
  }

  return result;
}

{
  va_start(va, a3);
  if ((*(result + *MEMORY[0x277CD7378]) & 0x10) != 0 && *(result + *MEMORY[0x277CD7380]) >= 2uLL)
  {
    return vfprintf(*MEMORY[0x277D85DF8], a3, va);
  }

  return result;
}

void EncodeNDArrayQuantizationConvolution2D(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 224);
  v16 = *(a1 + *MEMORY[0x277CD7370]);
  v5 = *(a1 + 228);
  v6 = *(a1 + 160);
  v17 = v4;
  v18 = v5;
  v7 = *(a1 + 168);
  v8 = *(a1 + 144);
  v19 = v6;
  v20 = v7;
  v9 = *(a1 + 152);
  v10 = *(a1 + 176);
  v21 = v8;
  v22 = v9;
  v11 = *(a1 + 184);
  v12 = *(a1 + 200);
  v23 = v10;
  v24 = v11;
  v13 = *(a1 + 208);
  v25 = v12;
  v26 = v13;
  v27 = *(a1 + 192);
  v28 = vmovn_s64(*(a1 + 232));
  v14 = *(a1 + 264);
  v15 = *(a1 + 272);
  v29 = 0;
  v30 = v14;
  v31 = v15;
  v32 = 0;
  v33 = a4;
  v34 = a1;
  operator new();
}

void MPSNDArrayQuantizedConvolutionLogCommandLine(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + *MEMORY[0x277CD7380]) >= 4)
  {
    v6 = *(a2 + 128);
    v7 = *(v6 + 232);
    if (*(a2 + 120) == 1)
    {
      [v7 outputTensorAtIndex:{0, a4, a3}];
      [*(v6 + 232) inputTensorAtIndex:2];
    }

    else
    {
      [v7 inputTensorAtIndex:{0, a4, a3}];
      [*(v6 + 232) outputTensorAtIndex:0];
    }

    v8 = *(a2 + 8);
    *(&v148.__r_.__value_.__s + 23) = 0;
    v148.__r_.__value_.__s.__data_[0] = 0;
    *(&v144.__r_.__value_.__s + 23) = 12;
    strcpy(&v144, "-dataFormat ");
    if (v8)
    {
      v9 = "NHWC";
    }

    else
    {
      v9 = "NCHW";
    }

    v10 = std::string::append(&v144, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v145.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v145.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v145, " ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v147 = v12->__r_.__value_.__r.__words[2];
    v146 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (v147 >= 0)
    {
      v14 = &v146;
    }

    else
    {
      v14 = v146;
    }

    if (v147 >= 0)
    {
      v15 = HIBYTE(v147);
    }

    else
    {
      v15 = *(&v146 + 1);
    }

    std::string::append(&v148, v14, v15);
    if (SHIBYTE(v147) < 0)
    {
      operator delete(v146);
      if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_16:
        if ((SHIBYTE(v144.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

LABEL_56:
        operator delete(v144.__r_.__value_.__l.__data_);
LABEL_17:
        *(&v144.__r_.__value_.__s + 23) = 15;
        strcpy(&v144, "-weightsFormat ");
        if (*(a2 + 12) == 1)
        {
          v16 = "OIHW";
        }

        else
        {
          v16 = "HWIO";
        }

        v17 = std::string::append(&v144, v16);
        v18 = *&v17->__r_.__value_.__l.__data_;
        v145.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v145.__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        v19 = std::string::append(&v145, " ");
        v20 = *&v19->__r_.__value_.__l.__data_;
        v147 = v19->__r_.__value_.__r.__words[2];
        v146 = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        if (v147 >= 0)
        {
          v21 = &v146;
        }

        else
        {
          v21 = v146;
        }

        if (v147 >= 0)
        {
          v22 = HIBYTE(v147);
        }

        else
        {
          v22 = *(&v146 + 1);
        }

        std::string::append(&v148, v21, v22);
        if (SHIBYTE(v147) < 0)
        {
          operator delete(v146);
          if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_28:
            if ((SHIBYTE(v144.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_29;
            }

            goto LABEL_59;
          }
        }

        else if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        operator delete(v145.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v144.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_29:
          if (*(a2 + 12) == 1)
          {
LABEL_30:
            *(&v140.__r_.__value_.__s + 23) = 15;
            strcpy(&v140, "-kernelSizes \\[");
            std::to_string(&v139, *(a2 + 40));
            if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v23 = &v139;
            }

            else
            {
              v23 = v139.__r_.__value_.__r.__words[0];
            }

            if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v139.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v139.__r_.__value_.__l.__size_;
            }

            v25 = std::string::append(&v140, v23, size);
            v26 = *&v25->__r_.__value_.__l.__data_;
            v141.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
            *&v141.__r_.__value_.__l.__data_ = v26;
            v25->__r_.__value_.__l.__size_ = 0;
            v25->__r_.__value_.__r.__words[2] = 0;
            v25->__r_.__value_.__r.__words[0] = 0;
            v27 = std::string::append(&v141, ",");
            v28 = *&v27->__r_.__value_.__l.__data_;
            v142.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
            *&v142.__r_.__value_.__l.__data_ = v28;
            v27->__r_.__value_.__l.__size_ = 0;
            v27->__r_.__value_.__r.__words[2] = 0;
            v27->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v138, *(a2 + 32));
            if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v29 = &v138;
            }

            else
            {
              v29 = v138.__r_.__value_.__r.__words[0];
            }

            if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v30 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v30 = v138.__r_.__value_.__l.__size_;
            }

            v31 = std::string::append(&v142, v29, v30);
            v32 = *&v31->__r_.__value_.__l.__data_;
            v143.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
            *&v143.__r_.__value_.__l.__data_ = v32;
            v31->__r_.__value_.__l.__size_ = 0;
            v31->__r_.__value_.__r.__words[2] = 0;
            v31->__r_.__value_.__r.__words[0] = 0;
            v33 = std::string::append(&v143, ",");
            v34 = *&v33->__r_.__value_.__l.__data_;
            v144.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
            *&v144.__r_.__value_.__l.__data_ = v34;
            v33->__r_.__value_.__l.__size_ = 0;
            v33->__r_.__value_.__r.__words[2] = 0;
            v33->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v137, *(a2 + 16));
            if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v35 = &v137;
            }

            else
            {
              v35 = v137.__r_.__value_.__r.__words[0];
            }

            if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v36 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v36 = v137.__r_.__value_.__l.__size_;
            }

            v37 = std::string::append(&v144, v35, v36);
            v38 = *&v37->__r_.__value_.__l.__data_;
            v145.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
            *&v145.__r_.__value_.__l.__data_ = v38;
            v37->__r_.__value_.__l.__size_ = 0;
            v37->__r_.__value_.__r.__words[2] = 0;
            v37->__r_.__value_.__r.__words[0] = 0;
            v39 = std::string::append(&v145, "\\] ");
            v40 = *&v39->__r_.__value_.__l.__data_;
            v147 = v39->__r_.__value_.__r.__words[2];
            v146 = v40;
            v39->__r_.__value_.__l.__size_ = 0;
            v39->__r_.__value_.__r.__words[2] = 0;
            v39->__r_.__value_.__r.__words[0] = 0;
            if (v147 >= 0)
            {
              v41 = &v146;
            }

            else
            {
              v41 = v146;
            }

            if (v147 >= 0)
            {
              v42 = HIBYTE(v147);
            }

            else
            {
              v42 = *(&v146 + 1);
            }

            goto LABEL_84;
          }

LABEL_60:
          *(&v140.__r_.__value_.__s + 23) = 15;
          strcpy(&v140, "-kernelSizes \\[");
          std::to_string(&v139, *(a2 + 16));
          if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v43 = &v139;
          }

          else
          {
            v43 = v139.__r_.__value_.__r.__words[0];
          }

          if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v44 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v44 = v139.__r_.__value_.__l.__size_;
          }

          v45 = std::string::append(&v140, v43, v44);
          v46 = *&v45->__r_.__value_.__l.__data_;
          v141.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
          *&v141.__r_.__value_.__l.__data_ = v46;
          v45->__r_.__value_.__l.__size_ = 0;
          v45->__r_.__value_.__r.__words[2] = 0;
          v45->__r_.__value_.__r.__words[0] = 0;
          v47 = std::string::append(&v141, ",");
          v48 = *&v47->__r_.__value_.__l.__data_;
          v142.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
          *&v142.__r_.__value_.__l.__data_ = v48;
          v47->__r_.__value_.__l.__size_ = 0;
          v47->__r_.__value_.__r.__words[2] = 0;
          v47->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v138, *(a2 + 40));
          if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v49 = &v138;
          }

          else
          {
            v49 = v138.__r_.__value_.__r.__words[0];
          }

          if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v50 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v50 = v138.__r_.__value_.__l.__size_;
          }

          v51 = std::string::append(&v142, v49, v50);
          v52 = *&v51->__r_.__value_.__l.__data_;
          v143.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
          *&v143.__r_.__value_.__l.__data_ = v52;
          v51->__r_.__value_.__l.__size_ = 0;
          v51->__r_.__value_.__r.__words[2] = 0;
          v51->__r_.__value_.__r.__words[0] = 0;
          v53 = std::string::append(&v143, ",");
          v54 = *&v53->__r_.__value_.__l.__data_;
          v144.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
          *&v144.__r_.__value_.__l.__data_ = v54;
          v53->__r_.__value_.__l.__size_ = 0;
          v53->__r_.__value_.__r.__words[2] = 0;
          v53->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v137, *(a2 + 32));
          if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v55 = &v137;
          }

          else
          {
            v55 = v137.__r_.__value_.__r.__words[0];
          }

          if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v56 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v56 = v137.__r_.__value_.__l.__size_;
          }

          v57 = std::string::append(&v144, v55, v56);
          v58 = *&v57->__r_.__value_.__l.__data_;
          v145.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
          *&v145.__r_.__value_.__l.__data_ = v58;
          v57->__r_.__value_.__l.__size_ = 0;
          v57->__r_.__value_.__r.__words[2] = 0;
          v57->__r_.__value_.__r.__words[0] = 0;
          v59 = std::string::append(&v145, "\\] ");
          v60 = *&v59->__r_.__value_.__l.__data_;
          v147 = v59->__r_.__value_.__r.__words[2];
          v146 = v60;
          v59->__r_.__value_.__l.__size_ = 0;
          v59->__r_.__value_.__r.__words[2] = 0;
          v59->__r_.__value_.__r.__words[0] = 0;
          if (v147 >= 0)
          {
            v41 = &v146;
          }

          else
          {
            v41 = v146;
          }

          if (v147 >= 0)
          {
            v42 = HIBYTE(v147);
          }

          else
          {
            v42 = *(&v146 + 1);
          }

LABEL_84:
          std::string::append(&v148, v41, v42);
          if (SHIBYTE(v147) < 0)
          {
            operator delete(v146);
            if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_86:
              if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_87;
              }

              goto LABEL_121;
            }
          }

          else if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_86;
          }

          operator delete(v145.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_87:
            if ((SHIBYTE(v144.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_88;
            }

            goto LABEL_122;
          }

LABEL_121:
          operator delete(v137.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v144.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_88:
            if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_89;
            }

            goto LABEL_123;
          }

LABEL_122:
          operator delete(v144.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_89:
            if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_90;
            }

            goto LABEL_124;
          }

LABEL_123:
          operator delete(v143.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_90:
            if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_91;
            }

            goto LABEL_125;
          }

LABEL_124:
          operator delete(v138.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_91:
            if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_92;
            }

            goto LABEL_126;
          }

LABEL_125:
          operator delete(v142.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_92:
            if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_93;
            }

            goto LABEL_127;
          }

LABEL_126:
          operator delete(v141.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_93:
            if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_94;
            }

            goto LABEL_128;
          }

LABEL_127:
          operator delete(v139.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_94:
            if (*(a2 + 8))
            {
LABEL_95:
              *(&v140.__r_.__value_.__s + 23) = 13;
              strcpy(&v140, "-strides \\[1,");
              std::to_string(&v139, a1[23]);
              if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v61 = &v139;
              }

              else
              {
                v61 = v139.__r_.__value_.__r.__words[0];
              }

              if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v62 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v62 = v139.__r_.__value_.__l.__size_;
              }

              v63 = std::string::append(&v140, v61, v62);
              v64 = *&v63->__r_.__value_.__l.__data_;
              v141.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
              *&v141.__r_.__value_.__l.__data_ = v64;
              v63->__r_.__value_.__l.__size_ = 0;
              v63->__r_.__value_.__r.__words[2] = 0;
              v63->__r_.__value_.__r.__words[0] = 0;
              v65 = std::string::append(&v141, ",");
              v66 = *&v65->__r_.__value_.__l.__data_;
              v142.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
              *&v142.__r_.__value_.__l.__data_ = v66;
              v65->__r_.__value_.__l.__size_ = 0;
              v65->__r_.__value_.__r.__words[2] = 0;
              v65->__r_.__value_.__r.__words[0] = 0;
              std::to_string(&v138, a1[22]);
              if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v67 = &v138;
              }

              else
              {
                v67 = v138.__r_.__value_.__r.__words[0];
              }

              if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v68 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v68 = v138.__r_.__value_.__l.__size_;
              }

              v69 = std::string::append(&v142, v67, v68);
              v70 = *&v69->__r_.__value_.__l.__data_;
              v143.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
              *&v143.__r_.__value_.__l.__data_ = v70;
              v69->__r_.__value_.__l.__size_ = 0;
              v69->__r_.__value_.__r.__words[2] = 0;
              v69->__r_.__value_.__r.__words[0] = 0;
              v71 = std::string::append(&v143, ",");
              v72 = *&v71->__r_.__value_.__l.__data_;
              v144.__r_.__value_.__r.__words[2] = v71->__r_.__value_.__r.__words[2];
              *&v144.__r_.__value_.__l.__data_ = v72;
              v71->__r_.__value_.__l.__size_ = 0;
              v71->__r_.__value_.__r.__words[2] = 0;
              v71->__r_.__value_.__r.__words[0] = 0;
              std::to_string(&v137, 1);
              if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v73 = &v137;
              }

              else
              {
                v73 = v137.__r_.__value_.__r.__words[0];
              }

              if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v74 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v74 = v137.__r_.__value_.__l.__size_;
              }

              v75 = std::string::append(&v144, v73, v74);
              v76 = *&v75->__r_.__value_.__l.__data_;
              v145.__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
              *&v145.__r_.__value_.__l.__data_ = v76;
              v75->__r_.__value_.__l.__size_ = 0;
              v75->__r_.__value_.__r.__words[2] = 0;
              v75->__r_.__value_.__r.__words[0] = 0;
              v77 = std::string::append(&v145, "\\] ");
              v78 = *&v77->__r_.__value_.__l.__data_;
              v147 = v77->__r_.__value_.__r.__words[2];
              v146 = v78;
              v77->__r_.__value_.__l.__size_ = 0;
              v77->__r_.__value_.__r.__words[2] = 0;
              v77->__r_.__value_.__r.__words[0] = 0;
              if (v147 >= 0)
              {
                v79 = &v146;
              }

              else
              {
                v79 = v146;
              }

              if (v147 >= 0)
              {
                v80 = HIBYTE(v147);
              }

              else
              {
                v80 = *(&v146 + 1);
              }

              goto LABEL_153;
            }

LABEL_129:
            *(&v140.__r_.__value_.__s + 23) = 13;
            strcpy(&v140, "-strides \\[1,");
            std::to_string(&v139, 1);
            if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v81 = &v139;
            }

            else
            {
              v81 = v139.__r_.__value_.__r.__words[0];
            }

            if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v82 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v82 = v139.__r_.__value_.__l.__size_;
            }

            v83 = std::string::append(&v140, v81, v82);
            v84 = *&v83->__r_.__value_.__l.__data_;
            v141.__r_.__value_.__r.__words[2] = v83->__r_.__value_.__r.__words[2];
            *&v141.__r_.__value_.__l.__data_ = v84;
            v83->__r_.__value_.__l.__size_ = 0;
            v83->__r_.__value_.__r.__words[2] = 0;
            v83->__r_.__value_.__r.__words[0] = 0;
            v85 = std::string::append(&v141, ",");
            v86 = *&v85->__r_.__value_.__l.__data_;
            v142.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
            *&v142.__r_.__value_.__l.__data_ = v86;
            v85->__r_.__value_.__l.__size_ = 0;
            v85->__r_.__value_.__r.__words[2] = 0;
            v85->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v138, a1[23]);
            if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v87 = &v138;
            }

            else
            {
              v87 = v138.__r_.__value_.__r.__words[0];
            }

            if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v88 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v88 = v138.__r_.__value_.__l.__size_;
            }

            v89 = std::string::append(&v142, v87, v88);
            v90 = *&v89->__r_.__value_.__l.__data_;
            v143.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
            *&v143.__r_.__value_.__l.__data_ = v90;
            v89->__r_.__value_.__l.__size_ = 0;
            v89->__r_.__value_.__r.__words[2] = 0;
            v89->__r_.__value_.__r.__words[0] = 0;
            v91 = std::string::append(&v143, ",");
            v92 = *&v91->__r_.__value_.__l.__data_;
            v144.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
            *&v144.__r_.__value_.__l.__data_ = v92;
            v91->__r_.__value_.__l.__size_ = 0;
            v91->__r_.__value_.__r.__words[2] = 0;
            v91->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v137, a1[22]);
            if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v93 = &v137;
            }

            else
            {
              v93 = v137.__r_.__value_.__r.__words[0];
            }

            if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v94 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v94 = v137.__r_.__value_.__l.__size_;
            }

            v95 = std::string::append(&v144, v93, v94);
            v96 = *&v95->__r_.__value_.__l.__data_;
            v145.__r_.__value_.__r.__words[2] = v95->__r_.__value_.__r.__words[2];
            *&v145.__r_.__value_.__l.__data_ = v96;
            v95->__r_.__value_.__l.__size_ = 0;
            v95->__r_.__value_.__r.__words[2] = 0;
            v95->__r_.__value_.__r.__words[0] = 0;
            v97 = std::string::append(&v145, "\\] ");
            v98 = *&v97->__r_.__value_.__l.__data_;
            v147 = v97->__r_.__value_.__r.__words[2];
            v146 = v98;
            v97->__r_.__value_.__l.__size_ = 0;
            v97->__r_.__value_.__r.__words[2] = 0;
            v97->__r_.__value_.__r.__words[0] = 0;
            if (v147 >= 0)
            {
              v79 = &v146;
            }

            else
            {
              v79 = v146;
            }

            if (v147 >= 0)
            {
              v80 = HIBYTE(v147);
            }

            else
            {
              v80 = *(&v146 + 1);
            }

LABEL_153:
            std::string::append(&v148, v79, v80);
            if (SHIBYTE(v147) < 0)
            {
              operator delete(v146);
              if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_155:
                if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_156;
                }

                goto LABEL_190;
              }
            }

            else if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_155;
            }

            operator delete(v145.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_156:
              if ((SHIBYTE(v144.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_157;
              }

              goto LABEL_191;
            }

LABEL_190:
            operator delete(v137.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v144.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_157:
              if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_158;
              }

              goto LABEL_192;
            }

LABEL_191:
            operator delete(v144.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_158:
              if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_159;
              }

              goto LABEL_193;
            }

LABEL_192:
            operator delete(v143.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_159:
              if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_160;
              }

              goto LABEL_194;
            }

LABEL_193:
            operator delete(v138.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_160:
              if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_161;
              }

              goto LABEL_195;
            }

LABEL_194:
            operator delete(v142.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_161:
              if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_162;
              }

              goto LABEL_196;
            }

LABEL_195:
            operator delete(v141.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_162:
              if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_163;
              }

              goto LABEL_197;
            }

LABEL_196:
            operator delete(v139.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_163:
              if (*(a2 + 8))
              {
LABEL_164:
                *(&v140.__r_.__value_.__s + 23) = 19;
                strcpy(&v140, "-dilationRates \\[1,");
                std::to_string(&v139, a1[26]);
                if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v99 = &v139;
                }

                else
                {
                  v99 = v139.__r_.__value_.__r.__words[0];
                }

                if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v100 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v100 = v139.__r_.__value_.__l.__size_;
                }

                v101 = std::string::append(&v140, v99, v100);
                v102 = *&v101->__r_.__value_.__l.__data_;
                v141.__r_.__value_.__r.__words[2] = v101->__r_.__value_.__r.__words[2];
                *&v141.__r_.__value_.__l.__data_ = v102;
                v101->__r_.__value_.__l.__size_ = 0;
                v101->__r_.__value_.__r.__words[2] = 0;
                v101->__r_.__value_.__r.__words[0] = 0;
                v103 = std::string::append(&v141, ",");
                v104 = *&v103->__r_.__value_.__l.__data_;
                v142.__r_.__value_.__r.__words[2] = v103->__r_.__value_.__r.__words[2];
                *&v142.__r_.__value_.__l.__data_ = v104;
                v103->__r_.__value_.__l.__size_ = 0;
                v103->__r_.__value_.__r.__words[2] = 0;
                v103->__r_.__value_.__r.__words[0] = 0;
                std::to_string(&v138, a1[25]);
                if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v105 = &v138;
                }

                else
                {
                  v105 = v138.__r_.__value_.__r.__words[0];
                }

                if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v106 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v106 = v138.__r_.__value_.__l.__size_;
                }

                v107 = std::string::append(&v142, v105, v106);
                v108 = *&v107->__r_.__value_.__l.__data_;
                v143.__r_.__value_.__r.__words[2] = v107->__r_.__value_.__r.__words[2];
                *&v143.__r_.__value_.__l.__data_ = v108;
                v107->__r_.__value_.__l.__size_ = 0;
                v107->__r_.__value_.__r.__words[2] = 0;
                v107->__r_.__value_.__r.__words[0] = 0;
                v109 = std::string::append(&v143, ",");
                v110 = *&v109->__r_.__value_.__l.__data_;
                v144.__r_.__value_.__r.__words[2] = v109->__r_.__value_.__r.__words[2];
                *&v144.__r_.__value_.__l.__data_ = v110;
                v109->__r_.__value_.__l.__size_ = 0;
                v109->__r_.__value_.__r.__words[2] = 0;
                v109->__r_.__value_.__r.__words[0] = 0;
                std::to_string(&v137, 1);
                if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v111 = &v137;
                }

                else
                {
                  v111 = v137.__r_.__value_.__r.__words[0];
                }

                if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v112 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v112 = v137.__r_.__value_.__l.__size_;
                }

                v113 = std::string::append(&v144, v111, v112);
                v114 = *&v113->__r_.__value_.__l.__data_;
                v145.__r_.__value_.__r.__words[2] = v113->__r_.__value_.__r.__words[2];
                *&v145.__r_.__value_.__l.__data_ = v114;
                v113->__r_.__value_.__l.__size_ = 0;
                v113->__r_.__value_.__r.__words[2] = 0;
                v113->__r_.__value_.__r.__words[0] = 0;
                v115 = std::string::append(&v145, "\\] ");
                v116 = *&v115->__r_.__value_.__l.__data_;
                v147 = v115->__r_.__value_.__r.__words[2];
                v146 = v116;
                v115->__r_.__value_.__l.__size_ = 0;
                v115->__r_.__value_.__r.__words[2] = 0;
                v115->__r_.__value_.__r.__words[0] = 0;
                if (v147 >= 0)
                {
                  v117 = &v146;
                }

                else
                {
                  v117 = v146;
                }

                if (v147 >= 0)
                {
                  v118 = HIBYTE(v147);
                }

                else
                {
                  v118 = *(&v146 + 1);
                }

                goto LABEL_222;
              }

LABEL_198:
              *(&v140.__r_.__value_.__s + 23) = 19;
              strcpy(&v140, "-dilationRates \\[1,");
              std::to_string(&v139, 1);
              if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v119 = &v139;
              }

              else
              {
                v119 = v139.__r_.__value_.__r.__words[0];
              }

              if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v120 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v120 = v139.__r_.__value_.__l.__size_;
              }

              v121 = std::string::append(&v140, v119, v120);
              v122 = *&v121->__r_.__value_.__l.__data_;
              v141.__r_.__value_.__r.__words[2] = v121->__r_.__value_.__r.__words[2];
              *&v141.__r_.__value_.__l.__data_ = v122;
              v121->__r_.__value_.__l.__size_ = 0;
              v121->__r_.__value_.__r.__words[2] = 0;
              v121->__r_.__value_.__r.__words[0] = 0;
              v123 = std::string::append(&v141, ",");
              v124 = *&v123->__r_.__value_.__l.__data_;
              v142.__r_.__value_.__r.__words[2] = v123->__r_.__value_.__r.__words[2];
              *&v142.__r_.__value_.__l.__data_ = v124;
              v123->__r_.__value_.__l.__size_ = 0;
              v123->__r_.__value_.__r.__words[2] = 0;
              v123->__r_.__value_.__r.__words[0] = 0;
              std::to_string(&v138, a1[26]);
              if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v125 = &v138;
              }

              else
              {
                v125 = v138.__r_.__value_.__r.__words[0];
              }

              if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v126 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v126 = v138.__r_.__value_.__l.__size_;
              }

              v127 = std::string::append(&v142, v125, v126);
              v128 = *&v127->__r_.__value_.__l.__data_;
              v143.__r_.__value_.__r.__words[2] = v127->__r_.__value_.__r.__words[2];
              *&v143.__r_.__value_.__l.__data_ = v128;
              v127->__r_.__value_.__l.__size_ = 0;
              v127->__r_.__value_.__r.__words[2] = 0;
              v127->__r_.__value_.__r.__words[0] = 0;
              v129 = std::string::append(&v143, ",");
              v130 = *&v129->__r_.__value_.__l.__data_;
              v144.__r_.__value_.__r.__words[2] = v129->__r_.__value_.__r.__words[2];
              *&v144.__r_.__value_.__l.__data_ = v130;
              v129->__r_.__value_.__l.__size_ = 0;
              v129->__r_.__value_.__r.__words[2] = 0;
              v129->__r_.__value_.__r.__words[0] = 0;
              std::to_string(&v137, a1[25]);
              if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v131 = &v137;
              }

              else
              {
                v131 = v137.__r_.__value_.__r.__words[0];
              }

              if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v132 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v132 = v137.__r_.__value_.__l.__size_;
              }

              v133 = std::string::append(&v144, v131, v132);
              v134 = *&v133->__r_.__value_.__l.__data_;
              v145.__r_.__value_.__r.__words[2] = v133->__r_.__value_.__r.__words[2];
              *&v145.__r_.__value_.__l.__data_ = v134;
              v133->__r_.__value_.__l.__size_ = 0;
              v133->__r_.__value_.__r.__words[2] = 0;
              v133->__r_.__value_.__r.__words[0] = 0;
              v135 = std::string::append(&v145, "\\] ");
              v136 = *&v135->__r_.__value_.__l.__data_;
              v147 = v135->__r_.__value_.__r.__words[2];
              v146 = v136;
              v135->__r_.__value_.__l.__size_ = 0;
              v135->__r_.__value_.__r.__words[2] = 0;
              v135->__r_.__value_.__r.__words[0] = 0;
              if (v147 >= 0)
              {
                v117 = &v146;
              }

              else
              {
                v117 = v146;
              }

              if (v147 >= 0)
              {
                v118 = HIBYTE(v147);
              }

              else
              {
                v118 = *(&v146 + 1);
              }

LABEL_222:
              std::string::append(&v148, v117, v118);
              if (SHIBYTE(v147) < 0)
              {
                operator delete(v146);
                if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_224:
                  if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_225;
                  }

                  goto LABEL_236;
                }
              }

              else if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_224;
              }

              operator delete(v145.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_225:
                if ((SHIBYTE(v144.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_226;
                }

                goto LABEL_237;
              }

LABEL_236:
              operator delete(v137.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v144.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_226:
                if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_227;
                }

                goto LABEL_238;
              }

LABEL_237:
              operator delete(v144.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_227:
                if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_228;
                }

                goto LABEL_239;
              }

LABEL_238:
              operator delete(v143.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_228:
                if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_229;
                }

                goto LABEL_240;
              }

LABEL_239:
              operator delete(v138.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_229:
                if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_230;
                }

                goto LABEL_241;
              }

LABEL_240:
              operator delete(v142.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_230:
                if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_231;
                }

                goto LABEL_242;
              }

LABEL_241:
              operator delete(v141.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_231:
                if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_232;
                }

LABEL_243:
                operator delete(v140.__r_.__value_.__l.__data_);
LABEL_232:
                std::string::append(&v148, "-packed 3 ");
                if (*(a2 + 8))
                {
                  operator new();
                }

                operator new();
              }

LABEL_242:
              operator delete(v139.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_232;
              }

              goto LABEL_243;
            }

LABEL_197:
            operator delete(v140.__r_.__value_.__l.__data_);
            if (*(a2 + 8))
            {
              goto LABEL_164;
            }

            goto LABEL_198;
          }

LABEL_128:
          operator delete(v140.__r_.__value_.__l.__data_);
          if (*(a2 + 8))
          {
            goto LABEL_95;
          }

          goto LABEL_129;
        }

LABEL_59:
        operator delete(v144.__r_.__value_.__l.__data_);
        if (*(a2 + 12) == 1)
        {
          goto LABEL_30;
        }

        goto LABEL_60;
      }
    }

    else if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    operator delete(v145.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v144.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_56;
  }
}

void sub_2399FE188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v24 - 97) < 0)
  {
    operator delete(*(v24 - 120));
  }

  _Unwind_Resume(a1);
}

void sub_2399FEB50()
{
  if ((*(v0 - 97) & 0x80000000) == 0)
  {
    JUMPOUT(0x2399FEB48);
  }

  JUMPOUT(0x2399FEB40);
}

void EncodeQuantizedConvolutionFallback(void *a1, uint64_t a2, int64x2_t *a3)
{
  v124 = *MEMORY[0x277D85DE8];
  v4 = a3[8].i64[1];
  v5 = *(v4 + 256);
  v6 = a3->u32[2];
  v98 = a3->i32[3];
  v95 = a3[5].u64[0];
  v96 = a3[1].u64[1];
  v93 = a3[1].u64[0];
  v94 = a3[2];
  v88 = a3[4].i64[1];
  v89 = a3[4].i64[0];
  v86 = a3[5].i64[1];
  v87 = a3[3];
  if (unpackSources(a3, v109) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v99 = [*(a3[8].i64[0] + 232) inputTensorAtIndex:0];
  v7 = [*(a3[8].i64[0] + 232) inputTensorAtIndex:1];
  v97 = [*(a3[8].i64[0] + 232) outputTensorAtIndex:0];
  v8 = *(*(v4 + *MEMORY[0x277CD7370]) + 32);
  v9 = v109[1];
  v101 = v109[0];
  v10 = (*(*v8 + 48))(v8);
  v11 = MEMORY[0x277CD73D8];
  v85 = v10;
  if (v10)
  {
    v12 = v7[2];
    v113 = 0;
    v114 = 0;
    v112 = 0;
    v14 = *v12;
    v13 = v12[1];
    if (v13 != v14)
    {
      if (((v13 - v14) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v9 = MPSNDArrayConvolutionDeviceBehavior::transposedWeights(v8, v5, a2, a1, v9, &v112, v98, 0);
    if (!v9 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v112)
    {
      v113 = v112;
      operator delete(v112);
    }
  }

  v15 = *&v101[*v11];
  v16 = v15.u8[0];
  v17 = v15.u8[1];
  v18 = v15.u8[2];
  v19 = v15.u8[3];
  if (v15.u8[0] > 3u || v15.u8[1] > 3u || v15.u8[2] > 3u || v15.u8[3] > 3u)
  {
    goto LABEL_22;
  }

  v48 = vceq_s16((*&vzip1_s8(*v15.i8, *v15.i8) & 0xFF00FF00FF00FFLL), 0x3000200010000);
  if ((vminv_u16(v48) & 1) == 0)
  {
    if (v6 == 1)
    {
      if ((v48.i8[6] & 1) == 0 || (v18 == 1 ? (v73 = v16 == 2) : (v73 = 0), v73 ? (v74 = v17 == 0) : (v74 = 0), !v74))
      {
LABEL_22:
        v15.i16[0] = v16;
        v15.i16[1] = v17;
        v15.i16[2] = v18;
        v15.i16[3] = v19;
        if (vmovn_s16(v15).u32[0] != 50462976)
        {
          v23 = [objc_msgSend(v101 "descriptor")];
          v24 = [MEMORY[0x277CD7268] descriptorWithDataType:*&v101[*MEMORY[0x277CD73C8]] shape:v23];
          v25 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a2 descriptor:v24];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v101 setReadCount:{objc_msgSend(v101, "readCount") + 1}];
          }

          v112 = v101;
          [v5 encodeToMPSCommandEncoder:a1 commandBuffer:a2 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:&v112 kernelDAGObject:{1), 0, v25, 0}];
          v101 = v25;
        }

        goto LABEL_26;
      }

      v92 = 0;
    }

    else
    {
      if (v6 || (v48.i8[6] & 1) == 0 || v18)
      {
        goto LABEL_22;
      }

      if (v16 != 1 || v17 != 2)
      {
        goto LABEL_22;
      }

      v92 = 1;
    }

    v26 = v110;
    goto LABEL_28;
  }

  if (v6 == -1)
  {
    v17 = 1;
    goto LABEL_22;
  }

LABEL_26:
  v26 = v110;
  if (v6 >= 2)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v92 = v6;
  }

  else
  {
    v92 = v6;
  }

LABEL_28:
  if (*v99 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v7 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v97 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v27 = v99[2];
  v29 = *v27;
  v28 = v27[1];
  if (v28 != v29)
  {
    if (((v28 - v29) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v35 = v7[2];
  v37 = *v35;
  v36 = v35[1];
  if (v36 != v37)
  {
    if (((v36 - v37) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v38 = v97[2];
  v40 = *v38;
  v39 = v38[1];
  if (v39 != v40)
  {
    if (((v39 - v40) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (v6)
  {
    v30 = 8;
    v31 = 8;
    v32 = 16;
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v34 = 16;
    v33 = 16;
    v32 = 8;
    v31 = 0;
    v30 = 0;
  }

  v82 = v4;
  v41 = *v34;
  LODWORD(v83) = *v30;
  HIDWORD(v83) = *v32;
  v42 = MEMORY[0x18];
  v43 = *v33;
  v91 = *v31;
  v44 = *v32;
  v45 = MEMORY[0x18];
  v46 = 8;
  if (!v98)
  {
    v46 = 24;
  }

  v47 = *(16 * (v98 == 0));
  if (*v46 != v94.i64[1] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v47 != v94.i64[0] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v42 != v45 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v41 != v93 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v43 != v96 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v84 = v9;
  if (!v26)
  {
    goto LABEL_71;
  }

  v50 = *(v26 + *MEMORY[0x277CD73C8]);
  if (v50 <= 268435471)
  {
    if (v50 != -1879048176 && v50 != 4)
    {
      if (v50 == 8)
      {
LABEL_74:
        v51 = v96 / v95;
        goto LABEL_79;
      }

LABEL_71:
      v51 = v96 / v95;
      goto LABEL_79;
    }

LABEL_77:
    v51 = v96 / v95;
    goto LABEL_79;
  }

  if (v50 > 536870915)
  {
    if (v50 != 536870916)
    {
      if (v50 == 536870920)
      {
        goto LABEL_74;
      }

      goto LABEL_71;
    }

    goto LABEL_77;
  }

  if (v50 != 268435472)
  {
    if (v50 == 268435488)
    {
      v51 = v96 / v95;
      goto LABEL_79;
    }

    goto LABEL_71;
  }

  v51 = v96 / v95;
LABEL_79:
  v52 = a3[7].i64[0];
  if (v92)
  {
    v53 = v45 * v44 * ((v91 + 63) >> 6);
  }

  else
  {
    v53 = (v51 + 3) >> 2;
  }

  if (v92)
  {
    v54 = (v51 + 3) >> 2;
  }

  else
  {
    v54 = v45 * v44 * ((v91 + 63) >> 6);
  }

  v55 = 32;
  if (v92)
  {
    v56 = 1;
  }

  else
  {
    v56 = 32;
  }

  v80 = v56;
  v81 = v53;
  if (!v92)
  {
    v55 = 1;
  }

  v78 = v54;
  v79 = v55;
  [a3[6].i64[1] implicitZeroPoint];
  [v52 implicitZeroPoint];
  v57 = v111;
  LODWORD(v112) = v93 / v95;
  HIDWORD(v112) = v51;
  LOWORD(v113) = v94.i16[0];
  WORD1(v113) = v94.i16[4];
  WORD2(v113) = v95;
  LODWORD(v114) = v45;
  v115 = v83;
  v116 = __PAIR64__(v44, v91);
  LODWORD(v58) = v86 - (v89 * (v94.i64[0] - 1) + 1) / 2;
  HIDWORD(v58) = HIDWORD(v86) - (v88 * (v94.i64[1] - 1) + 1) / 2;
  v117 = v58;
  *&v59 = vmovn_s64(v87);
  v119 = WORD2(v59);
  v118 = v59;
  v121 = v88;
  v120 = v89;
  v60 = *MEMORY[0x277CD73C8];
  v61 = *MEMORY[0x277CD7400];
  v62 = *&v101[v61];
  v63 = *&v101[v60] >> 3;
  v64 = *MEMORY[0x277CD73D0];
  v65 = v62 * *&v101[v64 + 4];
  LODWORD(v59) = 1;
  DWORD1(v59) = v62 / v63;
  DWORD2(v59) = v65 / v63;
  HIDWORD(v59) = v65 * *&v101[v64 + 8] / v63;
  LODWORD(v66) = 1;
  v122 = v59;
  v67 = *&v84[v61];
  v68 = *&v84[v60] >> 3;
  v69 = v67 * *&v84[v64 + 4];
  DWORD1(v66) = v67 / v68;
  DWORD2(v66) = v69 / v68;
  HIDWORD(v66) = v69 * *&v84[v64 + 8] / v68;
  v123 = v66;
  *&v59 = -1;
  *(&v59 + 1) = -1;
  v107 = v59;
  v108 = v59;
  v105 = v59;
  v106 = v59;
  v104 = v59;
  *&v108 = [*(a3[8].i64[0] + 16) count] | 0x10000;
  v76 = *(v82 + *MEMORY[0x277CD7360]);
  v77 = *(v82 + *MEMORY[0x277CD7368]);
  v75 = *(a3[8].i64[0] + 232);
  MPSLibrary::CreateUberShaderKey();
  v70 = v57;
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSSetNDArraysOnComputeEncoder(a1, a3[8].i64[0], 4, 0, 1);
  if (v85)
  {
    v72 = 0;
  }

  else
  {
    v72 = *(*(a3[8].i64[0] + 8) + 80 * v70 + 64);
  }

  [a1 setBuffer:objc_msgSend(v84 offset:"buffer" atIndex:{v75, v76, v77, 0, 0), MPSGetLinearOffsetBytes(v84, 0, 4, 0, 0) + v72, 28}];
  [a1 setComputePipelineState:PipelineStateForMPSKey];
  objc_msgSend_setBytes_length_atIndex_(a1);
  v103[0] = v78;
  v103[1] = v81;
  v103[2] = 1;
  v102[0] = v80;
  v102[1] = v79;
  v102[2] = 1;
  [a1 dispatchThreadgroups:v103 threadsPerThreadgroup:v102];
  MPSLibrary::ReleaseComputeState();
  operator delete(0);
  operator delete(0);
  operator delete(0);
}

void sub_2399FFB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, void *a45)
{
  operator delete(__p);
  operator delete(a37);
  if (!a45)
  {
    _Unwind_Resume(a1);
  }

  operator delete(a45);
  _Unwind_Resume(a1);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t unpackSources(void *a1, uint64_t a2)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *(a2 + 32) = v4;
  *(a2 + 48) = v4;
  v6 = a1[13];
  v5 = a1[14];
  v7 = [*(a1[16] + 232) graph];
  v8 = *(v7 + 64);
  v9 = *v8;
  v10 = v8[1];
  if (*v8 != v10)
  {
    v11 = v7;
    v12 = 0;
    do
    {
      v13 = *v9;
      if (v13 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v11) + 32))
      {
        *a2 = [*(a1[16] + 16) objectAtIndexedSubscript:v12];
        *(a2 + 32) = v12;
      }

      v14 = *v9;
      if (v14 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v11) + 32))
      {
        *(a2 + 8) = [*(a1[16] + 16) objectAtIndexedSubscript:v12];
        *(a2 + 40) = v12;
        if (!v6)
        {
          goto LABEL_11;
        }
      }

      else if (!v6)
      {
        goto LABEL_11;
      }

      v15 = *v9;
      if (v15 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v11) + 32))
      {
LABEL_11:
        if (v5)
        {
          goto LABEL_12;
        }

        goto LABEL_3;
      }

      *(a2 + 16) = [*(a1[16] + 16) objectAtIndexedSubscript:v12];
      *(a2 + 48) = v12;
      if (v5)
      {
LABEL_12:
        v16 = *v9;
        if (v16 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v11) + 32))
        {
          *(a2 + 24) = [*(a1[16] + 16) objectAtIndexedSubscript:v12];
          *(a2 + 56) = v12;
        }
      }

LABEL_3:
      ++v12;
      ++v9;
    }

    while (v9 != v10);
  }

  if (*a2 && *(a2 + 8) && (v6 != 0) != (*(a2 + 16) == 0))
  {
    return (v5 != 0) ^ (*(a2 + 24) != 0);
  }

  else
  {
    return 1;
  }
}

uint64_t MPSNDArrayQuantizedConvolutionConstructor(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = MPSCreateFunctionConstantValues();
  v8 = v7;
  v9 = *a3;
  v10 = *(a3 + 1);
  v11.i64[0] = -1;
  v11.i64[1] = -1;
  v12 = vceqq_s64(v10, v11);
  v13 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a3 + 3), v11), vceqq_s64(*(a3 + 4), v11))));
  v14 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(v12, vceqq_s64(*(a3 + 3), v11)), xmmword_239B06050)) & 0xF;
  if (*a3 != -1 || v14 != 0 || (v13 & 0xF) != 0 || a3[5] != -1)
  {
    if ((vuzp1_s16(vmovn_s64(v12), *v10.i8).u8[0] & 1) == 0)
    {
      LODWORD(v20) = *(a3 + 1);
      [v7 setConstantValue:&v20 type:33 atIndex:126];
      v9 = *a3;
    }

    if (v9 != -1)
    {
      LODWORD(v20) = v9;
      [v8 setConstantValue:&v20 type:33 atIndex:125];
    }

    if (a3[2] != -1)
    {
      LODWORD(v20) = a3[2];
      [v8 setConstantValue:&v20 type:33 atIndex:124];
    }

    if (a3[3] != -1)
    {
      LODWORD(v20) = a3[3];
      [v8 setConstantValue:&v20 type:33 atIndex:123];
    }

    if (a3[4] != -1)
    {
      LODWORD(v20) = a3[4];
      [v8 setConstantValue:&v20 type:33 atIndex:119];
    }

    if (a3[5] != -1)
    {
      LODWORD(v20) = a3[5];
      [v8 setConstantValue:&v20 type:33 atIndex:118];
    }

    if (a3[8] != -1)
    {
      LODWORD(v20) = a3[8];
      [v8 setConstantValue:&v20 type:33 atIndex:122];
    }

    if (a3[9] != -1)
    {
      LODWORD(v20) = a3[9];
      [v8 setConstantValue:&v20 type:33 atIndex:121];
    }

    if (a3[6] != -1)
    {
      LODWORD(v20) = a3[6];
      [v8 setConstantValue:&v20 type:33 atIndex:117];
    }

    if (a3[7] != -1)
    {
      LODWORD(v20) = a3[7];
      [v8 setConstantValue:&v20 type:33 atIndex:116];
    }
  }

  v20 = a2[8];
  [v8 setConstantValue:&v20 type:85 atIndex:115];
  v18 = _MPSNewSpecializedFunction();

  return v18;
}

BOOL MPSNDArrayFFTBehaviors::allowCombinedKernel(uint64_t a1, int a2, int a3, uint64_t a4, __n128 a5)
{
  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  v5 = a3 >> 3;
  v6 = 8 * v5;
  if (a2 > 0)
  {
    v5 = (a3 >> 3) * a5.n128_i32[0];
  }

  if (a2 > 1)
  {
    v5 = (a3 >> 3) * a5.n128_i32[0] * a5.n128_i32[1];
  }

  if (a2 > 2)
  {
    v5 = (a3 >> 3) * a5.n128_i32[0] * a5.n128_i32[1] * a5.n128_i32[2];
  }

  if (a2 > 3)
  {
    v5 = (a3 >> 3) * a5.n128_i32[0] * a5.n128_i32[1] * a5.n128_i32[2] * a5.n128_i32[3];
  }

  if ((a3 & 0x1000000) != 0)
  {
    v6 = *(a1 + 8);
  }

  if ((a3 >> 3) * a5.n128_i32[0] * a5.n128_i32[1] * a5.n128_i32[2] * a5.n128_i32[3] < 1000 * a4 * *(a1 + 16))
  {
    v6 = 1024;
  }

  return v5 <= v6;
}

BOOL MPSNDArrayFFTBehaviors::isMediumCombinedOk(uint64_t a1, int a2, unsigned __int16 a3, __n128 a4)
{
  if (a2 < 1)
  {
    return 1;
  }

  if (*(a1 + 8) >> 16)
  {
    return 1;
  }

  v4 = 0;
  v5 = a3 >> 3;
  do
  {
    v7 = a4;
    v5 *= *(&v7 & 0xFFFFFFFFFFFFFFF3 | (4 * (v4++ & 3)));
  }

  while (a2 != v4);
  return v5 != 0x8000;
}

uint64_t MPSNDArrayFFTBehaviors::getNZStepsLog2PerThread(__n128 a1)
{
  if (a1.n128_u32[2] == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (a1.n128_u32[2] > 2);
  }
}

uint64_t MPSNDArrayFFTBehaviors::getLaunchOrder(uint64_t a1, int *a2, __n128 a3, __n128 a4, int32x4_t a5)
{
  result = (*(*a1 + 16))(a1);
  if ((vminvq_u32(vcgtq_s32(vdupq_n_s32(result), a5)) & 0x80000000) != 0)
  {
    return result;
  }

  v7 = a3.n128_i32[0] > 15 || a5.i32[0] < result;
  v8 = v7;
  v9 = 16;
  if (!v7)
  {
    v10.i64[0] = -1;
    v10.i64[1] = -1;
    if ((vminvq_u32(v10) & 0x80000000) == 0)
    {
      v9 = 16;
    }

    else
    {
      v9 = a3.n128_u32[0];
    }
  }

  if (a5.i32[1] < result || a3.n128_u32[1] >= v9)
  {
    v12 = 0;
    v13 = a3.n128_i32[2];
    v14 = a5.i32[2];
    if (a5.i32[2] < result || a3.n128_u32[2] >= v9)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v16.i64[0] = -1;
  v16.i64[1] = -1;
  v17 = vminvq_u32(v16);
  if (v17 < 0)
  {
    v9 = a3.n128_i32[1];
  }

  v12 = v17 >> 31;
  v13 = a3.n128_i32[2];
  v14 = a5.i32[2];
  if (a5.i32[2] >= result && a3.n128_u32[2] < v9)
  {
LABEL_29:
    v19.i64[0] = -1;
    v19.i64[1] = -1;
    if ((vminvq_u32(v19) & 0x80000000) != 0)
    {
      v9 = v13;
      v12 = 2;
    }
  }

LABEL_31:
  if (a5.i32[3] >= result && a3.n128_u32[3] < v9)
  {
    v21.i64[0] = -1;
    v21.i64[1] = -1;
    if ((vminvq_u32(v21) & 0x80000000) != 0)
    {
      v12 = 3;
      v31 = a4.n128_u32[0];
      v32 = 16;
      if (a4.n128_i32[0] > 15)
      {
        goto LABEL_72;
      }

      goto LABEL_68;
    }
  }

  if (v9 == 16)
  {
    v22.i64[0] = -1;
    v22.i64[1] = -1;
    v23 = vminvq_u32(v22);
    if (v23 >= 0)
    {
      v24 = 16;
    }

    else
    {
      v24 = a3.n128_u32[0];
    }

    if (v23 >= 0)
    {
      v25 = v12;
    }

    else
    {
      v25 = 0;
    }

    if (a3.n128_i32[0] < 16)
    {
      v9 = v24;
      v12 = v25;
    }

    if (v23 >= 0)
    {
      v26 = v9;
    }

    else
    {
      v26 = a3.n128_u32[1];
    }

    if (v23 < 0)
    {
      v27 = 1;
    }

    else
    {
      v27 = v12;
    }

    if (a3.n128_i32[1] < v9)
    {
      v9 = v26;
      v12 = v27;
    }

    if (v23 >= 0)
    {
      v28 = v9;
    }

    else
    {
      v28 = v13;
    }

    if (v23 >= 0)
    {
      v29 = v12;
    }

    else
    {
      v29 = 2;
    }

    if (v13 < v9)
    {
      v9 = v28;
      v12 = v29;
    }

    if (v23 >= 0)
    {
      v30 = v12;
    }

    else
    {
      v30 = 3;
    }

    if (a3.n128_i32[3] < v9)
    {
      v12 = v30;
    }
  }

  v31 = a4.n128_u32[0];
  v32 = 16;
  if (a4.n128_i32[0] <= 15)
  {
LABEL_68:
    if (a5.i32[0] >= result)
    {
      v33.i64[0] = -1;
      v33.i64[1] = -1;
      if ((vminvq_u32(v33) & 0x80000000) == 0)
      {
        v32 = 16;
      }

      else
      {
        v32 = v31;
      }
    }
  }

LABEL_72:
  v34 = 0;
  if (a5.i32[1] >= result && a4.n128_i32[1] < v32)
  {
    v35.i64[0] = -1;
    v35.i64[1] = -1;
    v36 = vminvq_u32(v35);
    if (v36 < 0)
    {
      v32 = a4.n128_i32[1];
    }

    v34 = v36 >> 31;
  }

  if (v14 >= result && a4.n128_i32[2] < v32)
  {
    v37.i64[0] = -1;
    v37.i64[1] = -1;
    if ((vminvq_u32(v37) & 0x80000000) != 0)
    {
      v32 = a4.n128_i32[2];
      v34 = 2;
    }
  }

  if (a5.i32[3] >= result && a4.n128_i32[3] < v32)
  {
    v38.i64[0] = -1;
    v38.i64[1] = -1;
    if ((vminvq_u32(v38) & 0x80000000) != 0)
    {
      v34 = 3;
      v39.i64[1] = -1;
      v39.i32[0] = v12;
      v40 = 3;
      if (v12 == 3)
      {
        goto LABEL_126;
      }

      goto LABEL_86;
    }
  }

  if (v32 == 16)
  {
    v43.i64[0] = -1;
    v43.i64[1] = -1;
    v44 = vminvq_u32(v43);
    if (v44 >= 0)
    {
      v45 = 16;
    }

    else
    {
      v45 = v31;
    }

    if (v44 >= 0)
    {
      v46 = v34;
    }

    else
    {
      v46 = 0;
    }

    v47 = v31 < 16;
    if (v31 >= 16)
    {
      v48 = 16;
    }

    else
    {
      v48 = v45;
    }

    if (v47)
    {
      v34 = v46;
    }

    if (v44 >= 0)
    {
      v49 = v48;
    }

    else
    {
      v49 = a4.n128_u32[1];
    }

    if (v44 < 0)
    {
      v50 = 1;
    }

    else
    {
      v50 = v34;
    }

    if (a4.n128_i32[1] < v48)
    {
      v48 = v49;
      v34 = v50;
    }

    if (v44 >= 0)
    {
      v51 = v48;
    }

    else
    {
      v51 = a4.n128_u32[2];
    }

    if (v44 >= 0)
    {
      v52 = v34;
    }

    else
    {
      v52 = 2;
    }

    if (a4.n128_i32[2] < v48)
    {
      v48 = v51;
      v34 = v52;
    }

    if (v44 >= 0)
    {
      v53 = v34;
    }

    else
    {
      v53 = 3;
    }

    if (a4.n128_i32[3] < v48)
    {
      v34 = v53;
    }

    v39.i64[1] = -1;
    v39.i32[0] = v12;
    v40 = v34;
    if (v34 == v12)
    {
      goto LABEL_126;
    }

LABEL_86:
    v39.i32[1] = v40;
    v41 = 16;
    if (v8)
    {
      goto LABEL_87;
    }

LABEL_160:
    if ((vminvq_u32(vtstq_s32(v39, v39)) & 0x80000000) == 0)
    {
      v41 = 16;
    }

    else
    {
      v41 = a3.n128_u32[0];
    }

    v42 = 0;
    if (a5.i32[1] < result)
    {
      goto LABEL_168;
    }

    goto LABEL_164;
  }

  v39.i64[1] = -1;
  v39.i32[0] = v12;
  v40 = v34;
  if (v34 != v12)
  {
    goto LABEL_86;
  }

LABEL_126:
  v54 = 16;
  if ((v8 & 1) == 0)
  {
    v55 = -1;
    v55.i16[0] = v12 != 0;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v55), 0x1FuLL))) & 0x80000000) == 0)
    {
      v54 = 16;
    }

    else
    {
      v54 = a3.n128_u32[0];
    }
  }

  v56 = 0;
  if (a5.i32[1] >= result && a3.n128_i32[1] < v54)
  {
    v57 = -1;
    v57.i16[0] = v12 != 1;
    v58 = vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v57), 0x1FuLL)));
    if (v58 < 0)
    {
      v54 = a3.n128_i32[1];
    }

    v56 = v58 >> 31;
  }

  if (v14 >= result && v13 < v54)
  {
    v59 = -1;
    v59.i16[0] = v12 != 2;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v59), 0x1FuLL))) & 0x80000000) != 0)
    {
      v54 = v13;
      v56 = 2;
    }
  }

  if (a5.i32[3] < result || a3.n128_i32[3] >= v54 || (v60 = -1, v60.i16[0] = v12 != 3, (vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v60), 0x1FuLL))) & 0x80000000) == 0))
  {
    if (v54 != 16)
    {
      goto LABEL_159;
    }

    if (a3.n128_i32[0] < 16)
    {
      v61 = -1;
      v61.i16[0] = v12 != 0;
      if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v61), 0x1FuLL))) & 0x80000000) != 0)
      {
        v54 = a3.n128_u32[0];
        v56 = 0;
      }

      if (a3.n128_i32[1] >= v54)
      {
LABEL_145:
        if (v13 >= v54)
        {
          goto LABEL_146;
        }

        goto LABEL_154;
      }
    }

    else if (a3.n128_i32[1] >= 16)
    {
      goto LABEL_145;
    }

    v62 = -1;
    v62.i16[0] = v12 != 1;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v62), 0x1FuLL))) & 0x80000000) != 0)
    {
      v54 = a3.n128_i32[1];
      v56 = 1;
    }

    if (v13 >= v54)
    {
LABEL_146:
      if (a3.n128_i32[3] >= v54)
      {
        goto LABEL_159;
      }

      goto LABEL_157;
    }

LABEL_154:
    v63 = -1;
    v63.i16[0] = v12 != 2;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v63), 0x1FuLL))) & 0x80000000) != 0)
    {
      v54 = v13;
      v56 = 2;
    }

    if (a3.n128_i32[3] >= v54)
    {
LABEL_159:
      v34 = v12;
      v39.i32[1] = v56;
      v41 = 16;
      if ((v8 & 1) == 0)
      {
        goto LABEL_160;
      }

      goto LABEL_87;
    }

LABEL_157:
    v64 = -1;
    v64.i16[0] = v12 != 3;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v64), 0x1FuLL))) & 0x80000000) != 0)
    {
      v56 = 3;
    }

    goto LABEL_159;
  }

  v34 = v12;
  v39.i32[1] = 3;
  v41 = 16;
  if ((v8 & 1) == 0)
  {
    goto LABEL_160;
  }

LABEL_87:
  v42 = 0;
  if (a5.i32[1] < result)
  {
    goto LABEL_168;
  }

LABEL_164:
  if (a3.n128_i32[1] < v41)
  {
    v65.i64[0] = 0x100000001;
    v65.i64[1] = 0x100000001;
    v66 = vminvq_u32(vmvnq_s8(vceqq_s32(v39, v65)));
    if (v66 < 0)
    {
      v41 = a3.n128_i32[1];
    }

    v42 = v66 >> 31;
  }

LABEL_168:
  if (v14 >= result && v13 < v41)
  {
    v67.i64[0] = 0x200000002;
    v67.i64[1] = 0x200000002;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v67))) & 0x80000000) != 0)
    {
      v41 = v13;
      v42 = 2;
    }
  }

  if (a5.i32[3] >= result && a3.n128_i32[3] < v41 && (v68.i64[0] = 0x300000003, v68.i64[1] = 0x300000003, (vminvq_u32(vmvnq_s8(vceqq_s32(v39, v68))) & 0x80000000) != 0))
  {
    v42 = 3;
  }

  else if (v41 == 16)
  {
    if (a3.n128_i32[0] < 16)
    {
      if ((vminvq_u32(vtstq_s32(v39, v39)) & 0x80000000) != 0)
      {
        v41 = a3.n128_u32[0];
        v42 = 0;
      }

      if (a3.n128_i32[1] >= v41)
      {
LABEL_178:
        if (v13 >= v41)
        {
          goto LABEL_179;
        }

        goto LABEL_187;
      }
    }

    else if (a3.n128_i32[1] >= 16)
    {
      goto LABEL_178;
    }

    v69.i64[0] = 0x100000001;
    v69.i64[1] = 0x100000001;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v69))) & 0x80000000) != 0)
    {
      v41 = a3.n128_i32[1];
      v42 = 1;
    }

    if (v13 >= v41)
    {
LABEL_179:
      if (a3.n128_i32[3] >= v41)
      {
        goto LABEL_194;
      }

LABEL_190:
      v71.i64[0] = 0x300000003;
      v71.i64[1] = 0x300000003;
      if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v71))) & 0x80000000) != 0)
      {
        v42 = 3;
      }

      goto LABEL_194;
    }

LABEL_187:
    v70.i64[0] = 0x200000002;
    v70.i64[1] = 0x200000002;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v70))) & 0x80000000) != 0)
    {
      v41 = v13;
      v42 = 2;
    }

    if (a3.n128_i32[3] >= v41)
    {
      goto LABEL_194;
    }

    goto LABEL_190;
  }

LABEL_194:
  v39.i32[2] = v42;
  v72 = vminvq_u32(vtstq_s32(v39, v39));
  if (v72 >= 0)
  {
    v73 = 16;
  }

  else
  {
    v73 = a3.n128_u32[0];
  }

  if (v8)
  {
    v74 = 16;
  }

  else
  {
    v74 = v73;
  }

  if (a5.i32[1] >= result && a3.n128_i32[1] < v74)
  {
    v75.i64[0] = 0x100000001;
    v75.i64[1] = 0x100000001;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v75))) & 0x80000000) != 0)
    {
      v74 = a3.n128_i32[1];
    }
  }

  if (v14 >= result && v13 < v74)
  {
    v76.i64[0] = 0x200000002;
    v76.i64[1] = 0x200000002;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v76))) & 0x80000000) != 0)
    {
      v74 = v13;
    }
  }

  if (a5.i32[3] < result || a3.n128_i32[3] >= v74 || (v77.i64[0] = 0x300000003, v77.i64[1] = 0x300000003, (vminvq_u32(vmvnq_s8(vceqq_s32(v39, v77))) & 0x80000000) == 0))
  {
    if (v74 != 16)
    {
LABEL_216:
      *a2 = v34;
      return result;
    }

    v78 = 16;
    if (a3.n128_i32[0] < 16)
    {
      if (v72 >= 0)
      {
        v78 = 16;
      }

      else
      {
        v78 = a3.n128_u32[0];
      }

      if (a3.n128_i32[1] >= v78)
      {
LABEL_214:
        if (v13 >= v78)
        {
          goto LABEL_215;
        }

        goto LABEL_224;
      }
    }

    else if (a3.n128_i32[1] >= 16)
    {
      goto LABEL_214;
    }

    v79.i64[0] = 0x100000001;
    v79.i64[1] = 0x100000001;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v79))) & 0x80000000) != 0)
    {
      v78 = a3.n128_i32[1];
    }

    if (v13 >= v78)
    {
LABEL_215:
      if (a3.n128_i32[3] >= v78)
      {
        goto LABEL_216;
      }

      goto LABEL_227;
    }

LABEL_224:
    v80.i64[0] = 0x200000002;
    v80.i64[1] = 0x200000002;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v80))) & 0x80000000) != 0)
    {
      v78 = v13;
    }

    if (a3.n128_i32[3] >= v78)
    {
      goto LABEL_216;
    }

LABEL_227:
    *a2 = v34;
    return result;
  }

  *a2 = v34;
  return result;
}

uint64_t EncodeArrayFFT(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v136 = *MEMORY[0x277D85DE8];
  MEMORY[0x23EE7C450](v115, a3, 0);
  v87 = *(a1 + 672);
  v6 = *(a1 + 680);
  v7 = *(a1 + 692);
  v90 = *(a1 + 688);
  v8 = [*(a4 + 232) graph];
  v9 = **(v8 + 56);
  if (*(*(v8 + 56) + 8) == v9)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v10 = *v9;
  v12 = *(*v9 + 24);
  v11 = *v12;
  if (*(v12 + 8) == *v12)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v89 = v7;
  v91 = a4;
  v13 = **(v10 + 8);
  if (*(*(v10 + 8) + 8) == v13)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v14 = *v11;
  v15 = *v13;
  DimensionSize = BaseTensor::GetDimensionSize(*v11);
  v17 = BaseTensor::GetDimensionSize(v14);
  v18 = BaseTensor::GetDimensionSize(v14);
  v19 = BaseTensor::GetDimensionSize(v14);
  v20 = BaseTensor::GetDimensionSize(v15);
  v21 = BaseTensor::GetDimensionSize(v15);
  v109 = BaseTensor::GetDimensionSize(v15);
  v22 = BaseTensor::GetDimensionSize(v15);
  v25 = **(v10 + 8);
  if (*(*(v10 + 8) + 8) == v25)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v26 = **(v10 + 24);
  if (*(*(v10 + 24) + 8) == v26)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v22;
  v23.i32[0] = 0;
  v107 = DimensionSize;
  v28.i64[0] = __PAIR64__(v17, DimensionSize);
  v104 = v18;
  v28.i64[1] = __PAIR64__(v19, v18);
  v102 = v19;
  v29.n128_u64[0] = __PAIR64__(v21, v20);
  v99 = v21;
  v29.n128_u64[1] = __PAIR64__(v22, v109);
  v30 = *(*v25 + 8);
  v24.i32[0] = v30 & 0x1000000;
  v98 = *(*v26 + 8);
  v94 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v24, v23), 0), v29, v28);
  v31 = v94.n128_u32[0];
  v32 = v94.n128_u32[0] < 2 || (v87 & 1) == 0;
  v95 = a3;
  v86 = v28;
  v111 = v29;
  if (v32)
  {
    v33 = 10;
LABEL_14:
    v92 = 0;
    v35 = v33;
    v36 = 1;
    v33 = 10;
    goto LABEL_16;
  }

  v127.i64[0] = 0;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v116[0] = 0;
  v34 = resolvePasses(&v117, v116, v94.n128_i32[0], 0, v30, 0, 0, v29);
  v33 = 0;
  if (v34)
  {
    v28 = v86;
    v29 = v111;
    goto LABEL_14;
  }

  v35 = 10;
  v92 = 1;
  v36 = 0;
  v28 = v86;
  v29 = v111;
LABEL_16:
  if (v94.n128_u32[1] < 2 || (v87 & 2) == 0)
  {
    goto LABEL_25;
  }

  v38 = v36;
  v127.i64[0] = 0;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v116[0] = 0;
  v39 = resolvePasses(&v117, v116, v94.n128_i32[1], 1, v30, 0, 0, v29);
  if (v39 && v35 == 10)
  {
    v40 = 1;
  }

  else
  {
    v40 = v35;
  }

  if (v39)
  {
    v35 = v40;
    v28 = v86;
    v36 = v38;
    v29 = v111;
LABEL_25:
    v41 = v36 | 2;
    goto LABEL_27;
  }

  v92 |= 2u;
  v41 = v38;
  v33 = v38;
  v28 = v86;
  v29 = v111;
LABEL_27:
  v42 = v94.n128_i32[2];
  if (v94.n128_u32[2] < 2 || (v87 & 4) == 0)
  {
    goto LABEL_35;
  }

  v85 = v41;
  v127.i64[0] = 0;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v116[0] = 0;
  v44 = resolvePasses(&v117, v116, v94.n128_i32[2], 2, v30, 0, 0, v29);
  if (v44 && v35 == 10)
  {
    v35 = 2;
  }

  if (v44)
  {
    v28 = v86;
    v41 = v85;
    v29 = v111;
LABEL_35:
    v85 = v41 | 4;
    goto LABEL_39;
  }

  if (v33 == 10)
  {
    v33 = 2;
  }

  v92 |= 4u;
  v28 = v86;
  v29 = v111;
LABEL_39:
  v45 = v94.n128_i32[3];
  if (v94.n128_u32[3] >= 2 && (v87 & 8) != 0)
  {
    v127.i64[0] = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v116[0] = 0;
    v47 = resolvePasses(&v117, v116, v94.n128_i32[3], 3, v30, 0, 0, v29);
    if (v47 && v35 == 10)
    {
      v35 = 3;
    }

    if (!v47)
    {
      if (v33 == 10)
      {
        v33 = 3;
      }

      v92 |= 8u;
      goto LABEL_53;
    }

    v28 = v86;
    v29 = v111;
  }

  if (!v92)
  {
    v48 = EncodeArrayFFTKernel(a1, a2, v95, v91, v115, v87, v89, v90, v6, v29, v28, v30, v98, 0, 0, 0, 0);
    goto LABEL_84;
  }

  v85 |= 8u;
LABEL_53:
  v49 = v107 * v17 * v104 * v102;
  if (v49 >= v20 * v99 * v109 * v27 || v35 >= v33)
  {
    TempBuffer = 0;
    v17 = v94.n128_i32[1];
  }

  else
  {
    TempBuffer = MPSAutoCache::GetTempBuffer(v115, 8 * v49, 0);
    EncodeArrayFFTKernel(a1, a2, v95, v91, v115, 1 << v35, v89, v90, v6, v111, v86, v30, 285212736, 0, 0, TempBuffer, 0);
    v85 &= ~(1 << v35);
    v45 = v102;
    v42 = v104;
    v31 = v107;
    v94 = v86;
  }

  v52 = 0;
  if ((v30 & 0x1000000) != 0)
  {
    v53 = 285212736;
  }

  else
  {
    v53 = 268435488;
  }

  v88 = v53;
  do
  {
    v108 = 1 << v52;
    if (((1 << v52) & v92) != 0)
    {
      v114 = v94;
      v54 = *(&v114 & 0xFFFFFFFFFFFFFFF3 | (4 * (v52 & 3)));
      v55 = (2 * v54 - 1);
      v56 = (1 << -__clz(v54 - 1));
      v57 = 2 * v54 - 2;
      v32 = 2 * v54 == 2;
      v58 = (1 << -__clz(v57));
      v59 = v58 >> 3;
      v60 = 3 * (v58 >> 2);
      if (v32)
      {
        v60 = 1;
      }

      v61 = 7 * v59;
      if (v57 <= 3)
      {
        v61 = 1;
      }

      if (v56 < v55)
      {
        v62 = 5 * v59;
        v56 = v57 <= 3 ? 1 : v62;
        if (v56 < v55)
        {
          if (v61 >= v55)
          {
            v58 = v61;
          }

          if (v60 < v55)
          {
            v56 = v58;
          }

          else
          {
            v56 = v60;
          }
        }
      }

      v110 = MPSAutoCache::GetTempBuffer(v115, 8 * v56, 0);
      v100 = MPSAutoCache::GetTempBuffer(v115, 8 * v56, 0);
      v63.n128_u64[1] = 0x100000001;
      v63.n128_u64[0] = v56 | 0x100000000;
      context = v63;
      EncodeArrayFFTKernel(a1, a2, v95, v91, v115, v108, 0, v90, 1.0, v63, v63, 0x11000040u, 285212736, 1, 0, v110, 0);
      v113 = v94;
      *(&v113 & 0xFFFFFFFFFFFFFFF3 | (4 * (v52 & 3))) = v56;
      v64.i64[0] = v113.n128_i32[0];
      v64.i64[1] = v113.n128_i32[1];
      v65 = v64;
      v97 = v113;
      v64.i64[0] = v113.n128_i32[2];
      v64.i64[1] = v113.n128_i32[3];
      v103 = v64;
      v105 = v65;
      v66 = 8 * v65.i32[2] * v65.i32[0] * v113.n128_i32[2] * v113.n128_i32[3];
      v112 = MPSAutoCache::GetTempBuffer(v115, v66, 0);
      v101 = MPSAutoCache::GetTempBuffer(v115, v66, 0);
      if (TempBuffer)
      {
        v67 = objc_autoreleasePoolPush();
        v117 = v105;
        v118 = v103;
        v116[0] = v31;
        v116[1] = v17;
        v116[2] = v42;
        v116[3] = v45;
        v134 = xmmword_239B060B0;
        v135 = unk_239B060C0;
        *(&v134 + v52) = v56;
        v68 = [MEMORY[0x277CD7268] descriptorWithDataType:285212736 dimensionCount:4 dimensionSizes:v116];
        [v68 setPreferPackedRows:1];
        v69 = [MEMORY[0x277CD7268] descriptorWithDataType:285212736 dimensionCount:4 dimensionSizes:&v134];
        [v69 setPreferPackedRows:1];
        v70 = [MEMORY[0x277CD7268] descriptorWithDataType:285212736 dimensionCount:4 dimensionSizes:&v117];
        [v70 setPreferPackedRows:1];
        v71 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:TempBuffer descriptor:v68];
        v72 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:v110 descriptor:v69];
        v73 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:v112 descriptor:v70];
        operator new();
      }

      EncodeArrayFFTKernel(a1, a2, v95, v91, v115, v108, 0, 0, 1.0, v97, v97, v88, 285212736, 2, 0, v112, v110);
      EncodeArrayFFTKernel(a1, a2, v95, v91, v115, 1u, 0, 0, 1.0, context, context, 0x11000040u, 285212736, 0, v110, v100, 0);
      EncodeArrayFFTKernel(a1, a2, v95, v91, v115, v108, 2, 0, 1.0, v97, v97, 0x11000040u, 285212736, 0, v112, v101, 0);
      v74 = objc_autoreleasePoolPush();
      v134 = v105;
      v135 = v103;
      v133[0] = v31;
      v133[1] = v17;
      v133[2] = v42;
      v133[3] = v45;
      v132[0] = xmmword_239B060B0;
      v132[1] = unk_239B060C0;
      *(v132 + v52) = v56;
      v75 = [MEMORY[0x277CD7268] descriptorWithDataType:285212736 dimensionCount:4 dimensionSizes:&v134];
      [v75 setPreferPackedRows:1];
      v76 = [MEMORY[0x277CD7268] descriptorWithDataType:285212736 dimensionCount:4 dimensionSizes:v132];
      [v76 setPreferPackedRows:1];
      v77 = [MEMORY[0x277CD7268] descriptorWithDataType:285212736 dimensionCount:4 dimensionSizes:v133];
      [v77 setPreferPackedRows:1];
      v78 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:v101 descriptor:v75];
      v79 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:v112 descriptor:v77];
      v80 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:v100 descriptor:v76];
      v81 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:v110 descriptor:v76];
      v82.i64[0] = 0x100000001;
      v82.i64[1] = 0x100000001;
      v119 = v82;
      v120 = v82;
      v117 = v82;
      v118 = v82;
      *&v121 = 0;
      v124 = v82;
      v125 = v82;
      v122 = v82;
      v123 = v82;
      *&v126 = 0;
      v129 = v82;
      v130 = v82;
      v127 = v82;
      v128 = v82;
      v131 = 0;
      operator new();
    }

    ++v52;
  }

  while (v52 != 4);
  v48 = EncodeArrayFFTKernel(a1, a2, v95, v91, v115, v85 & v87, v89, v90, v6, v94, v86, 0x11000040u, 285212736, 0, TempBuffer, 0, 0);
LABEL_84:
  v83 = v48;
  MPSAutoCache::~MPSAutoCache(v115);
  return v83;
}

BOOL resolvePasses(int64x2_t *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  if (!a3)
  {
    return 1;
  }

  v8 = a3;
  if (a6)
  {
    if ((*(*a6 + 40))(a6, a4, a5, a7))
    {
      if (v8 == 0x2000 || (v14 = v8, v8 == 4096))
      {
        ++*a2;
        ++a1->i64[0];
        v14 = v8 >> 12;
      }

      if (v8 == 2048)
      {
        ++*a2;
        ++a1[1].i64[0];
        v8 = v14 >> 11;
        if (((v14 >> 11) & 0x1FF) == 0)
        {
          do
          {
LABEL_22:
            ++*a2;
            ++a1[2].i64[0];
            v16 = v8 >> 9;
            v17 = (v8 & 0x3FE00) == 0;
            v8 >>= 9;
          }

          while (v17);
LABEL_23:
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            do
            {
              ++*a2;
              ++a1[2].i64[1];
              v18 = v16 >> 8;
              v17 = (v16 & 0xFF00) == 0;
              v16 >>= 8;
            }

            while (v17);
          }

          if (0x1A8C536FE1A8C537 * v18 <= 0x1E573AC901E573ALL)
          {
            do
            {
              ++*a2;
              ++a1[3].i64[0];
              v18 /= 0x87uLL;
            }

            while (0x1A8C536FE1A8C537 * v18 < 0x1E573AC901E573BLL);
          }

          if ((v18 & 0x7F) != 0)
          {
            v19 = v18;
          }

          else
          {
            do
            {
              ++*a2;
              ++a1[3].i64[1];
              v19 = v18 >> 7;
              v17 = (v18 & 0x3F80) == 0;
              v18 >>= 7;
            }

            while (v17);
          }

          if ((v19 & 0x3F) != 0)
          {
            v20 = v19;
          }

          else
          {
            do
            {
              ++*a2;
              ++a1[4].i64[0];
              v20 = v19 >> 6;
              v17 = (v19 & 0xFC0) == 0;
              v19 >>= 6;
            }

            while (v17);
          }

          if ((v20 & 0x1F) != 0)
          {
            v8 = v20;
          }

          else
          {
            do
            {
              ++*a2;
              ++a1[4].i64[1];
              v8 = v20 >> 5;
              v17 = (v20 & 0x3E0) == 0;
              v20 >>= 5;
            }

            while (v17);
          }

          goto LABEL_37;
        }
      }

      else
      {
        if (v8 == 7680 || v8 == 3840)
        {
          ++*a2;
          ++a1->i64[1];
          v14 /= 0xF00uLL;
        }

        if (v8 == 0x80000 || v8 == 1024)
        {
          ++*a2;
          ++a1[1].i64[1];
          v8 = v14 >> 10;
          if (((v14 >> 10) & 0x1FF) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v8 = v14;
          if ((v14 & 0x1FF) == 0)
          {
            goto LABEL_22;
          }
        }
      }
    }

    else
    {
      if (!(*(*a6 + 48))(a6, a4, a5, a8))
      {
        goto LABEL_37;
      }

      if ((v8 & 0x1FF) == 0)
      {
        goto LABEL_22;
      }
    }

    v16 = v8;
    goto LABEL_23;
  }

LABEL_37:
  if ((v8 & 0xF) != 0)
  {
    v21 = v8;
  }

  else
  {
    do
    {
      ++*a2;
      ++a1[5].i64[1];
      v21 = v8 >> 4;
      v17 = (v8 & 0xF0) == 0;
      v8 >>= 4;
    }

    while (v17);
  }

  if ((v21 & 7) != 0)
  {
    v22 = v21;
  }

  else
  {
    do
    {
      ++*a2;
      ++a1[8].i64[0];
      v22 = v21 >> 3;
      v17 = (v21 & 0x38) == 0;
      v21 >>= 3;
    }

    while (v17);
  }

  if ((v22 & 3) != 0)
  {
    v23 = v22;
  }

  else
  {
    do
    {
      ++*a2;
      ++a1[9].i64[1];
      v23 = v22 >> 2;
      v17 = (v22 & 0xC) == 0;
      v22 >>= 2;
    }

    while (v17);
  }

  if (v23)
  {
    v24 = v23;
    if (0xEEEEEEEEEEEEEEEFLL * v23 > 0x1111111111111111)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  do
  {
    ++*a2;
    ++a1[10].i64[0];
    v24 = v23 >> 1;
    v25 = v23;
    v23 >>= 1;
  }

  while ((v25 & 2) == 0);
  if (0xEEEEEEEEEEEEEEEFLL * v24 <= 0x1111111111111111)
  {
    do
    {
LABEL_51:
      ++*a2;
      ++a1[5].i64[0];
      v24 /= 0xFuLL;
    }

    while (0xEEEEEEEEEEEEEEEFLL * v24 < 0x1111111111111112);
  }

LABEL_52:
  if (0x8E38E38E38E38E39 * v24 <= 0x1C71C71C71C71C71)
  {
    do
    {
      ++*a2;
      ++a1[7].i64[0];
      v24 /= 9uLL;
    }

    while (0x8E38E38E38E38E39 * v24 < 0x1C71C71C71C71C72);
  }

  if (0xCCCCCCCCCCCCCCCDLL * v24 <= 0x3333333333333333)
  {
    do
    {
      ++*a2;
      ++a1[8].i64[1];
      v24 /= 5uLL;
    }

    while (0xCCCCCCCCCCCCCCCDLL * v24 < 0x3333333333333334);
  }

  if (0xAAAAAAAAAAAAAAABLL * v24 <= 0x5555555555555555)
  {
    do
    {
      ++*a2;
      ++a1[9].i64[0];
      v24 /= 3uLL;
    }

    while (0xAAAAAAAAAAAAAAABLL * v24 < 0x5555555555555556);
  }

  if (0x6DB6DB6DB6DB6DB7 * v24 <= 0x2492492492492492)
  {
    do
    {
      ++*a2;
      ++a1[7].i64[1];
      v24 /= 7uLL;
    }

    while (0x6DB6DB6DB6DB6DB7 * v24 < 0x2492492492492493);
  }

  if (0x2E8BA2E8BA2E8BA3 * v24 <= 0x1745D1745D1745D1)
  {
    do
    {
      ++*a2;
      ++a1[6].i64[1];
      v24 /= 0xBuLL;
    }

    while (0x2E8BA2E8BA2E8BA3 * v24 < 0x1745D1745D1745D2);
  }

  if (0x4EC4EC4EC4EC4EC5 * v24 <= 0x13B13B13B13B13B1)
  {
    do
    {
      ++*a2;
      ++a1[6].i64[0];
      v24 /= 0xDuLL;
    }

    while (0x4EC4EC4EC4EC4EC5 * v24 < 0x13B13B13B13B13B2);
  }

  v26 = a1[2].u64[0];
  if (v26)
  {
    v27 = a1[8].i64[0] - 1;
    while (v27 != -1)
    {
      a1[8].i64[0] = v27;
      a1[4].i64[0] += 2;
      --v27;
      a1[2].i64[0] = --v26;
      if (!v26)
      {
        goto LABEL_68;
      }
    }

    v28 = a1 + 10;
    v29 = &a1[9].i64[1];
    v38 = a1[10].i64[0] - 1;
    while (v38 != -1)
    {
      ++a1[9].i64[1];
      a1[10].i64[0] = v38--;
      --v26;
      v39 = a1[2].i64[1] + 1;
      a1[2].i64[0] = v26;
      a1[2].i64[1] = v39;
      if (!v26)
      {
        goto LABEL_69;
      }
    }

    if (v26 >= 2)
    {
      v30 = &a1[5].i64[1];
      v40 = a1[9].i64[1] - 1;
      while (v40 != -1)
      {
        v26 -= 2;
        a1[9].i64[1] = v40;
        v41 = a1[2].i64[1] + 2;
        a1[2].i64[0] = v26;
        a1[2].i64[1] = v41;
        ++a1[5].i64[1];
        --v40;
        if (v26 <= 1)
        {
          goto LABEL_70;
        }
      }

      v42 = a1[5].i64[1] - 1;
      while (v42 != -1)
      {
        v26 -= 2;
        a1[5].i64[1] = v42;
        v43 = a1[2].i64[1] + 1;
        a1[2].i64[0] = v26;
        a1[2].i64[1] = v43;
        a1[3].i64[1] += 2;
        --v42;
        if (v26 <= 1)
        {
          goto LABEL_71;
        }
      }

      v31 = 0;
      goto LABEL_73;
    }

    v26 = 1;
  }

  else
  {
LABEL_68:
    v28 = a1 + 10;
LABEL_69:
    v26 = 0;
    v29 = &a1[9].i64[1];
  }

LABEL_70:
  v30 = &a1[5].i64[1];
LABEL_71:
  if (!v26)
  {
    goto LABEL_76;
  }

  v31 = *v29;
  v26 = 1;
LABEL_73:
  v32 = v31 - 1;
  v33 = v26 - 1;
  v34 = vdupq_n_s64(1uLL);
  do
  {
    if (v32 == -1)
    {
      break;
    }

    a1[2].i64[0] = v33;
    a1[9].i64[1] = v32;
    a1[4] = vaddq_s64(a1[4], v34);
    --v32;
    --v33;
  }

  while (v33 != -1);
LABEL_76:
  v35 = a1[2].u64[1];
  if (v35 >= 2)
  {
    do
    {
      v36 = *v30;
      if (!*v30)
      {
        break;
      }

      v37 = v28->i64[0];
      if (!v28->i64[0])
      {
        break;
      }

      a1[2].i64[1] = v35 - 2;
      a1[5].i64[1] = v36 - 1;
      a1[10].i64[0] = v37 - 1;
      a1[3].i64[1] += 3;
      --*a2;
      v35 = a1[2].u64[1];
    }

    while (v35 > 1);
  }

  return v24 == 1;
}

uint64_t EncodeArrayFFTKernel(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, MPSAutoCache *a5, unsigned int a6, int a7, int a8, double a9, __n128 a10, int32x4_t a11, unsigned int a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v223 = a15;
  v227 = a13;
  v311[84] = *MEMORY[0x277D85DE8];
  v255 = *(a1 + *MEMORY[0x277CD7350]);
  v21 = MEMORY[0x277CD7370];
  v22 = *(a1 + 664);
  v209 = a10;
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if ((a12 & 0x10000000) == 0)
    {
      v197 = a2;
      v198 = MTLReportFailureTypeEnabled();
      a10 = v209;
      a2 = v197;
      if (v198)
      {
        MTLReportFailure();
        a10 = v209;
        a2 = v197;
      }
    }

    if ((a13 & 0x1000000) == 0)
    {
      v199 = a2;
      v200 = MTLReportFailureTypeEnabled();
      a10 = v209;
      a2 = v199;
      if (v200)
      {
        MTLReportFailure();
        a10 = v209;
        a2 = v199;
      }
    }

    if (a6 >= 0x10)
    {
      v201 = a2;
      v202 = MTLReportFailureTypeEnabled();
      a10 = v209;
      a2 = v201;
      if (v202)
      {
        MTLReportFailure();
        a10 = v209;
        a2 = v201;
      }
    }
  }

  v238 = a2;
  v23 = (a12 & 0x1000000) == 0;
  v221 = a1;
  v228 = *(*(a1 + *v21) + 32);
  v24 = a10.n128_u32[0];
  v25 = a6 & (a10.n128_u32[0] > 1);
  if ((v23 & v25) != 0)
  {
    v26 = 0;
  }

  else
  {
    v26 = 4;
  }

  if (((a10.n128_u32[1] > 1) & (a6 >> 1)) != 0)
  {
    v27 = 1;
  }

  else
  {
    v27 = 4;
  }

  if (v23 != (v23 & v25))
  {
    v28 = v27;
  }

  else
  {
    v28 = v26;
  }

  v251 = a10.n128_i32[1];
  v30 = (a6 & 2) == 0 || a10.n128_u32[1] < 2;
  v247 = v30;
  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = 2;
  }

  v253 = a6 & (a10.n128_u32[0] > 1);
  v32 = v31 | v25;
  if (((a10.n128_u32[2] > 1) & (a6 >> 2)) != 0)
  {
    v33 = 2;
  }

  else
  {
    v33 = 4;
  }

  if ((v23 & (v28 == 4)) != 0)
  {
    v28 = v33;
  }

  v249 = a10.n128_i32[2];
  v35 = (a6 & 4) == 0 || a10.n128_u32[2] < 2;
  v243 = v35;
  if (v35)
  {
    v36 = 0;
  }

  else
  {
    v36 = 4;
  }

  if (((a10.n128_u32[3] > 1) & (a6 >> 3)) != 0)
  {
    v37 = 3;
  }

  else
  {
    v37 = 4;
  }

  if ((v23 & (v28 == 4)) != 0)
  {
    v38 = v37;
  }

  else
  {
    v38 = v28;
  }

  v245 = a10.n128_i32[3];
  v40 = (a6 & 8) == 0 || a10.n128_u32[3] < 2;
  v241 = v40;
  if (v40)
  {
    v41 = 0;
  }

  else
  {
    v41 = 8;
  }

  v212 = v32 | v36 | v41;
  v42 = v311;
  bzero(v311, 0x2A0uLL);
  memset(v310, 0, sizeof(v310));
  v206 = a5;
  v229 = v38;
  if (a14)
  {
    v44 = 0;
    v45 = (a6 & 1) == 0 && a14 == 2;
    v46 = v45;
    v47 = 3;
    if ((a6 & 8) == 0)
    {
      v47 = 4;
    }

    if ((a6 & 4) != 0)
    {
      v47 = 2;
    }

    if ((((a6 & 2) == 0) & v46) != 0)
    {
      v48 = v47;
    }

    else
    {
      v48 = v46;
    }

    v49 = 1;
    *(v310 + v48) = 1;
    v50 = a16 == 0;
    v51 = 1;
    LODWORD(v52) = 1;
    LODWORD(v210) = 1;
    v263 = 1;
    v53 = a11;
    v54 = v209;
    v55 = v255;
    goto LABEL_67;
  }

  v260 = a12 & 0x1000000;
  v239 = v22;
  v62 = 0;
  v49 = 0;
  v257 = &v311[21 * v38];
  v51 = 1;
  LODWORD(v52) = 1;
  LODWORD(v210) = 1;
  v263 = 1;
  v53 = a11;
  v54 = v209;
  v55 = v255;
  do
  {
    v272 = v54;
    v64 = *(&v272 & 0xFFFFFFFFFFFFFFF3 | (4 * (v62 & 3)));
    v273 = v53;
    v63 = *(&v273 & 0xFFFFFFFFFFFFFFF3 | (4 * (v62 & 3)));
    if (v64 >= 2 && ((v212 >> v62) & 1) != 0)
    {
      v65 = v49;
      v66 = v51;
      v281.i64[0] = 0;
      v67 = resolvePasses(v42, &v281, v64, v62, a12, v228, *(v55 + 1480), v54);
      v68 = v281.i64[0];
      *(v310 + v62) += v281.i64[0];
      if (!v67 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v69 = v65;
      if (v229 != v62)
      {
        v53 = a11;
        v54 = v209;
        v51 = v66;
LABEL_93:
        v49 = v68 + v69;
        v63 = v64;
        goto LABEL_94;
      }

      v53 = a11;
      v54 = v209;
      v51 = v66;
      if (*v257)
      {
        v52 = 4096;
        if (v260)
        {
LABEL_102:
          v263 = v64;
          goto LABEL_93;
        }

LABEL_101:
        v210 = (v52 >> 1) + 1;
        v64 = v64 / v52 * v210;
        goto LABEL_102;
      }

      if (v257[1])
      {
        v52 = 3840;
        if (v260)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (v257[2])
      {
        v52 = 2048;
        if (v260)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (v257[3])
      {
        v52 = 1024;
        if (v260)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (v257[4])
      {
        v52 = 512;
        if (v260)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (v257[5])
      {
        v52 = 256;
        if (v260)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (v257[6])
      {
        v52 = 135;
        if (v260)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (v257[7])
      {
        v52 = 128;
        if (v260)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (v257[8])
      {
        v52 = 64;
        if (v260)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (v257[9])
      {
        v52 = 32;
        if (v260)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (v257[10])
      {
        v52 = 15;
        if (v260)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (v257[11])
      {
        v70 = 11;
      }

      else if (v257[12])
      {
        v70 = 12;
      }

      else if (v257[13])
      {
        v70 = 13;
      }

      else if (v257[14])
      {
        v70 = 14;
      }

      else if (v257[15])
      {
        v70 = 15;
      }

      else if (v257[16])
      {
        v70 = 16;
      }

      else if (v257[17])
      {
        v70 = 17;
      }

      else if (v257[18])
      {
        v70 = 18;
      }

      else if (v257[19])
      {
        v70 = 19;
      }

      else
      {
        if (!v257[20])
        {
          v52 = 1;
          v53 = a11;
          v54 = v209;
          v51 = v66;
          v69 = v65;
          v55 = v255;
          if (v260)
          {
            goto LABEL_102;
          }

          goto LABEL_101;
        }

        v70 = 20;
      }

      v53 = a11;
      v54 = v209;
      v51 = v66;
      v69 = v65;
      v55 = v255;
      v52 = c_passRadixes[v70];
      if (v260)
      {
        goto LABEL_102;
      }

      goto LABEL_101;
    }

LABEL_94:
    v51 *= v63;
    ++v62;
    v42 = (v42 + 168);
  }

  while (v62 != 4);
  v44 = v49 == 0;
  v50 = a16 == 0;
  if (a16)
  {
    a5 = v206;
  }

  else
  {
    a5 = v206;
    if (!a15 && !v49)
    {
      v43.i64[0] = 1.0;
      v71 = a9 == 1.0 && a7 == 0;
      v50 = 1;
      v44 = 1;
      if (!v71)
      {
        if (v260)
        {
          v307 = 0u;
          v308 = 0u;
          v305 = 0u;
          v306 = 0u;
          v72 = *(a4 + 16);
          v73 = [v72 countByEnumeratingWithState:&v305 objects:v309 count:16];
          if (v73)
          {
            v74 = v73;
            v75 = *v306;
            do
            {
              for (i = 0; i != v74; ++i)
              {
                if (*v306 != v75)
                {
                  objc_enumerationMutation(v72);
                }

                v77 = *(*(&v305 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v77 setReadCount:{objc_msgSend(v77, "readCount") + 1}];
                }
              }

              v74 = [v72 countByEnumeratingWithState:&v305 objects:v309 count:16];
            }

            while (v74);
          }

          [v239 encodeToMPSCommandEncoder:v238 commandBuffer:a3 sourceArrays:*(a4 + 16) resultState:0 destinationArray:*(a4 + 208) kernelDAGObject:*(a4 + 232)];
          return 0;
        }
      }
    }
  }

LABEL_67:
  v216 = v53.i32[0];
  v56 = v53.i32[1];
  if (a13 == 285212704)
  {
    if (*(v55 + 1472) > 9)
    {
      v61 = 32;
      goto LABEL_177;
    }

    v227 = 32;
    if ((*(v55 + 1477) & 4) != 0)
    {
      if (v253)
      {
        v57 = v24;
      }

      else
      {
        v57 = 0;
      }

      if (v247)
      {
        v58 = v57;
      }

      else
      {
        v58 = v251;
      }

      if (v57 < v251)
      {
        v57 = v58;
      }

      if (v243)
      {
        v59 = v57;
      }

      else
      {
        v59 = v249;
      }

      if (v57 < v249)
      {
        v57 = v59;
      }

      if (v241)
      {
        v60 = v57;
      }

      else
      {
        v60 = v245;
      }

      if (v57 < v245)
      {
        v57 = v60;
      }

      if (v57 >> 14)
      {
        v61 = 64;
      }

      else
      {
        v61 = 32;
      }

LABEL_177:
      v227 = v61;
    }
  }

  if (v49 < 2)
  {
    v84 = 0;
    result = 0;
  }

  else
  {
    v261 = v53.i32[1];
    v78 = v44;
    v79 = v24;
    v80 = v51 * (v227 >> 3) + 15;
    v81 = v49;
    TempBuffer = MPSAutoCache::GetTempBuffer(a5, v80 & 0xFFFFFFFFFFFFFFF0, 0);
    v83 = a5;
    v84 = TempBuffer;
    if (v81 == 2)
    {
      v49 = 2;
      result = 0;
    }

    else
    {
      result = MPSAutoCache::GetTempBuffer(v83, v80 & 0xFFFFFFFFFFFFFFF0, 0);
      v49 = v81;
    }

    v53 = a11;
    v54 = v209;
    LODWORD(v24) = v79;
    v44 = v78;
    v56 = v261;
  }

  v235 = !(a12 & 0x1000000);
  v256 = a15 != 0;
  if (a16)
  {
    v86 = 1;
  }

  else
  {
    v86 = v49 > 1;
  }

  v87 = v86;
  v254 = v87;
  v88 = a14;
  v281 = v53;
  v282 = v54;
  v89 = v229;
  v54.n128_u32[0] = v229;
  v43.i32[0] = 4;
  v271 = v53;
  *(&v271 & 0xFFFFFFFFFFFFFFF3 | (4 * (v229 & 3))) = v263;
  v90 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v43, v54), 0), v271, v53);
  LODWORD(v301) = v24;
  HIDWORD(v301) = v251 * v24;
  v302 = v251 * v24 * v249;
  LODWORD(v303) = v90.i32[0];
  HIDWORD(v303) = v90.i32[1] * v90.i32[0];
  v304 = v90.i32[1] * v90.i32[0] * v90.i32[2];
  v289 = v52;
  v290 = v210;
  v91 = !v44;
  if (a14)
  {
    v91 = 1;
  }

  if ((v91 & 1) == 0)
  {
    v49 = 1;
    *&v310[0] = 1;
    v88 = 3;
  }

  v213 = v56 * v216 * v53.i32[2];
  v214 = v56 * v216;
  v92 = 0;
  v220 = !v50;
  if (a8)
  {
    v93 = 16;
  }

  else
  {
    v93 = 0;
  }

  v219 = v93;
  v226 = v88;
  while (2)
  {
    v94 = *(v310 + v92);
    if (v94)
    {
      v270 = v209;
      v95 = *(&v270 & 0xFFFFFFFFFFFFFFF3 | (4 * (v92 & 3)));
      if (v256)
      {
        a9 = 1.0;
      }

      if (!v88)
      {
        if (a7 == 2)
        {
          v96 = sqrt(v95);
LABEL_208:
          a9 = 1.0 / v96;
        }

        else if (a7 == 1)
        {
          v96 = v95;
          goto LABEL_208;
        }
      }

      v97 = 0;
      v98 = v235 && v88 == 0;
      v211 = (v95 >> 1) + 1;
      v269[1] = a11;
      v99 = &v311[21 * v92];
      v225 = !v98;
      v208 = (&v267 & 0xFFFFFFFFFFFFFFF3 | (4 * (v92 & 3)));
      v224 = (&v283 & 0xFFFFFFFFFFFFFFF3 | (4 * (v92 & 3)));
      v100 = 1;
      v240 = 1;
      v101 = 1;
      v218 = v99;
      v246 = v92;
      while (2)
      {
        v102 = v100;
        v266 = v49;
        v262 = v94 - 1;
        v45 = v97 == v94 - 1;
        v103 = v225;
        if (!v45)
        {
          v103 = 1;
        }

        v242 = result;
        v244 = v84;
        if ((v103 & 1) != 0 || v92 != v89)
        {
          if (!v88)
          {
            if (*v99)
            {
              goto LABEL_221;
            }

            goto LABEL_228;
          }

          v248 = 0;
          v108 = 0;
          if (v97 <= 1)
          {
            v109 = 1;
          }

          else
          {
            v109 = v100;
          }

          v110 = 4096;
          goto LABEL_238;
        }

        v104 = v216;
        v106 = v213;
        v105 = v214;
        if (v49 >= 2)
        {
          v269[0] = v281;
          *(v269 & 0xFFFFFFFFFFFFFFF3 | (4 * (v229 & 3))) = v211;
          v281 = v269[0];
          v104 = v269[0];
          v105 = DWORD1(v269[0]) * LODWORD(v269[0]);
          v106 = DWORD1(v269[0]) * LODWORD(v269[0]) * DWORD2(v269[0]);
        }

        v303 = __PAIR64__(v105, v104);
        v304 = v106;
        if (*v99)
        {
LABEL_221:
          v107 = 0;
          goto LABEL_234;
        }

LABEL_228:
        if (v99[1])
        {
          v107 = 1;
          goto LABEL_234;
        }

        if (v99[2])
        {
          v107 = 2;
          goto LABEL_234;
        }

        if (v99[3])
        {
          v107 = 3;
          goto LABEL_234;
        }

        if (v99[4])
        {
          v194 = 4;
          goto LABEL_451;
        }

        if (v99[5])
        {
          v107 = 5;
LABEL_234:
          if (v97 <= 1)
          {
            v109 = 1;
          }

          else
          {
            v109 = v102;
          }

          v248 = v107;
          v110 = c_passRadixes[v107];
          v108 = 1;
LABEL_238:
          v111 = 16;
        }

        else if (v99[6])
        {
          if (v97 <= 1)
          {
            v109 = 1;
          }

          else
          {
            v109 = v102;
          }

          v108 = 1;
          v110 = 135;
          v248 = 6;
          v111 = 15;
        }

        else
        {
          if (v99[7])
          {
            v194 = 7;
          }

          else if (v99[8])
          {
            v194 = 8;
          }

          else
          {
            if (!v99[9])
            {
              if (v99[10])
              {
                v195 = 10;
              }

              else if (v99[11])
              {
                v195 = 11;
              }

              else if (v99[12])
              {
                v195 = 12;
              }

              else
              {
                if (v99[13])
                {
                  v195 = 13;
                }

                else if (v218[14])
                {
                  v195 = 14;
                }

                else if (v218[15])
                {
                  v195 = 15;
                }

                else if (v218[16])
                {
                  v195 = 16;
                }

                else if (v218[17])
                {
                  v195 = 17;
                }

                else if (v218[18])
                {
                  v195 = 18;
                }

                else if (v218[19])
                {
                  v195 = 19;
                }

                else if (v218[20])
                {
                  v195 = 20;
                }

                else
                {
                  v195 = 21;
                }

                v89 = v229;
              }

              v108 = 0;
              if (v97 <= 1)
              {
                v109 = 1;
              }

              else
              {
                v109 = v102;
              }

              v248 = v195;
              v110 = c_passRadixes[v195];
              goto LABEL_238;
            }

            v194 = 9;
          }

LABEL_451:
          if (v97 <= 1)
          {
            v109 = 1;
          }

          else
          {
            v109 = v102;
          }

          v248 = v194;
          v110 = c_passRadixes[v194];
          v108 = 1;
          v111 = 8;
        }

        v230 = v111;
        v112 = v240 * v102;
        v113 = v109 * v101;
        v114 = v95 / v110;
        v115 = a9;
        v297 = v115;
        v286 = v114;
        v287 = v240 * v102;
        v288 = v113;
        v116 = v281;
        if (v88)
        {
          if (v88 != 3)
          {
            v264 = v281;
            v117 = [*(a4 + 232) graph];
            v118 = **(v117 + 56);
            if (*(*(v117 + 56) + 8) == v118)
            {
              std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
            }

            v120 = *(*v118 + 8);
            v119 = *v120;
            if (*(v120 + 8) == *v120)
            {
              std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
            }

            DimensionSize = BaseTensor::GetDimensionSize(*v119);
            v286 = DimensionSize;
            v116 = v264;
LABEL_254:
            v236 = v113;
            v124 = 31 - __clz(DimensionSize);
            if (!DimensionSize)
            {
              v124 = 0;
            }

            v125 = !v235 || v97 == v262;
            v283 = v116;
            v126 = 1.0 / v112;
            *&v126 = v126;
            v298 = LODWORD(v126);
            v296 = v124;
            v294 = v114;
            v291 = 0x100000001;
            v292 = v114 * v110;
            v293 = v114;
            v127 = v114 * v112;
            if (!v125)
            {
              v127 = *v224;
            }

            v295 = v127;
            v300 = 1.0;
            if (v108)
            {
              v126 = 2.0 / (v110 * v112);
              *&v126 = v126;
              v128 = 2.0 / v110;
              v300 = *&v126;
              v299 = v128;
              if ((a8 & 1) == 0)
              {
                v300 = -*&v126;
                v299 = -v128;
              }
            }

            v258 = v110;
            v129 = v116.n128_u32[2];
            v130 = v116.n128_u32[3];
            LODWORD(v126) = DimensionSize;
            v131 = vcnt_s8(*&v126);
            v131.i16[0] = vaddlv_u8(v131);
            v132 = v131.i32[0];
            v265 = v116.n128_u64[0];
            v133 = (*(*v228 + 32))(v228, 0, v116);
            v134 = v129 + (1 << v133) - 1;
            v234 = 1 << v133;
            v135 = -(1 << v133);
            v136 = 31 - __clz(v134 & v135);
            v137 = v134 & v135;
            if (v137)
            {
              v138 = v136;
            }

            else
            {
              v138 = 0;
            }

            v250 = v130;
            if (v130 >= 9)
            {
              v139 = 0;
            }

            else
            {
              v139 = v130;
            }

            v284 = v137;
            v285 = v138;
            v140 = v254;
            if (v266 == 1)
            {
              v140 = v220 & v254;
            }

            if (v256)
            {
              v141 = 32;
            }

            else
            {
              v141 = 0;
            }

            v254 = v140;
            if (v140)
            {
              v142 = 64;
            }

            else
            {
              v142 = 0;
            }

            v232 = v133;
            v233 = v139;
            v143 = (((v133 & 3) << 14) + (v139 << 10) + (((v137 & (v137 - 1)) == 0) << 16)) | v219 | v141 | v142 | ((v112 == 1) << 9) | ((v114 == 1) << 8) | ((v132 < 2) << 7) | v92;
            if (v108)
            {
              v143 = v219 | v141 | v142 | ((v112 == 1) << 9) | ((v114 == 1) << 8) | ((v132 < 2) << 7) | v92;
            }

            v144 = ((a9 == 1.0) << 20) | ((v282.i32[1] > 1u) << 17) | ((v282.i32[2] > 1u) << 18) | ((v282.i32[3] > 1u) << 19) | v143;
            if (v108)
            {
              if (v248 > 9)
              {
                v145 = 0;
              }

              else
              {
                v145 = dword_239B0618C[v248];
              }

              v144 |= v145;
            }

            v237 = v114;
            v240 = v112;
            v252 = v129;
            if (v266 == 1 && (vmaxvq_u32(vcgtq_s32(a11, v281)) & 0x80000000) != 0)
            {
              v281 = a11;
            }

            v147 = (v265 & 0xF) != 0 && v92 != 0 && v265 > 0x10;
            v279 = 0;
            v280 = 0;
            v148 = v147;
            v231 = v108 & v148;
            v275[3] = -1;
            v275[4] = -1;
            v275[5] = v144;
            v276 = 0u;
            v277 = 0u;
            v278 = 0;
            v279 = [*(a4 + 16) count] | ((*(a4 + 112) != 0) << 8) | 0x10000;
            v280 = 0;
            v204 = *(v221 + *MEMORY[0x277CD7360]);
            v205 = *(v221 + *MEMORY[0x277CD7368]);
            v203 = *(a4 + 232);
            MPSLibrary::CreateUberShaderKey();
            PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
            if (!PipelineStateForMPSKey)
            {
              return -1;
            }

            v150 = PipelineStateForMPSKey;
            [v238 setComputePipelineState:{PipelineStateForMPSKey, v203, v204, v205, 0, 0}];
            MPSLibrary::ReleaseMPSKey();
            v151 = [v150 threadExecutionWidth];
            v152 = v151;
            if (v151 <= 1)
            {
              v153 = 1;
            }

            else
            {
              v153 = v151;
            }

            v154 = [v150 maxTotalThreadsPerThreadgroup];
            v155 = *(v221 + *MEMORY[0x277CD7350]);
            v156 = 256;
            if (v154 < 0x100)
            {
              v156 = v154;
            }

            if ((*(v155 + 1477) & 4) != 0)
            {
              v157 = v154;
            }

            else
            {
              v157 = v156;
            }

            if (v108)
            {
              v158 = [*(v155 + 16) maxComputeThreadgroupMemory];
              v159 = 64;
              if (v157 < 0x40)
              {
                v159 = v157;
              }

              if (v158 < 0x7FA6)
              {
                v157 = v159;
              }
            }

            v160 = 2 * v153;
            if (v157 > 2 * v153)
            {
              v161 = v157 / v153;
              v162 = HIDWORD(v265);
              if ((v108 & 1) == 0)
              {
                goto LABEL_313;
              }

LABEL_320:
              if (v246)
              {
                v88 = v226;
                if (v248 - 2 >= 3)
                {
                  if (v248 >= 8)
                  {
                    v166 = 32;
                  }

                  else
                  {
                    v166 = 16;
                  }

                  if (v166 >= v265)
                  {
                    v167 = v265;
                  }

                  else
                  {
                    v167 = v166;
                  }

                  v168 = v246;
                  if (v246 != 1)
                  {
                    goto LABEL_339;
                  }
                }

                else
                {
                  v166 = qword_239B061F0[v248 - 2];
                  if (v166 >= v265)
                  {
                    v167 = v265;
                  }

                  else
                  {
                    v167 = qword_239B061F0[v248 - 2];
                  }

                  v168 = v246;
                  if (v246 == 1)
                  {
                    goto LABEL_344;
                  }

LABEL_339:
                  v168 = 1;
                  if (v166 > v265)
                  {
                    if (v166 >= v162)
                    {
                      v170 = v162;
                    }

                    else
                    {
                      v170 = v166;
                    }

                    do
                    {
                      v168 = v170;
                      v171 = v170 * v167;
                      v170 >>= 1;
                    }

                    while (v171 > v166);
                  }
                }

LABEL_344:
                if (v248 == 1)
                {
                  v173 = 256;
                  v172 = v231;
                }

                else
                {
                  v172 = v231;
                  if (v248 == 6)
                  {
                    v173 = 15;
                    do
                    {
LABEL_379:
                      v164 = v167;
                      if (v167 < 2)
                      {
                        break;
                      }

                      v167 >>= 1;
                    }

                    while (v168 * v173 * v164 > v157);
                    do
                    {
                      v169 = v168;
                      if (v168 < 2)
                      {
                        break;
                      }

                      v168 >>= 1;
                    }

                    while (v164 * v173 * v169 > v157);
                    if ((v172 & 1) == 0)
                    {
                        ;
                      }

                      ++v164;
                    }

                    if (v164)
                    {
                      v175 = (v265 + v164 - 1) / v164;
                      v180 = v238;
                      if (!v169)
                      {
LABEL_417:
                        v176 = 0;
                        goto LABEL_418;
                      }
                    }

                    else
                    {
                      v175 = 0;
                      v180 = v238;
                      if (!v169)
                      {
                        goto LABEL_417;
                      }
                    }

                    v176 = (v169 + v162 - 1) / v169;
                    goto LABEL_418;
                  }

                  v173 = (v258 + v230 - 1) / v230;
                  if (v248 > 1)
                  {
                    goto LABEL_379;
                  }
                }

                v168 = 1;
                v167 = 1;
                goto LABEL_379;
              }

              v169 = (v258 + v230 - 1) / v230;
              v88 = v226;
              if (v248 <= 2)
              {
                if (v248 == 1)
                {
                  v169 = 256;
                  goto LABEL_397;
                }

                if (v248 != 2)
                {
                  goto LABEL_397;
                }

                v182 = 2;
              }

              else if (v248 == 3)
              {
                v182 = 4;
              }

              else if (v248 == 4)
              {
                v182 = 8;
              }

              else
              {
                if (v248 == 6)
                {
                  v169 = 15;
                }

LABEL_397:
                v182 = 16;
              }

              if (v182 >= v265)
              {
                v182 = v265;
              }

              if (v248 <= 1)
              {
                v182 = 1;
              }

              do
              {
                v183 = v182;
                if (v182 < 2)
                {
                  break;
                }

                v182 >>= 1;
              }

              while (v183 * v169 > v157);
              v184 = v265 + v183;
              v164 = v183 + 1;
              v185 = v169 * (v183 + 1);
              do
              {
                --v164;
                --v184;
                v185 -= v169;
              }

              while (v265 % v164);
              if (v185 > 0x1F)
              {
                v173 = 1;
                v180 = v238;
                if (!v164)
                {
                  goto LABEL_416;
                }

LABEL_413:
                v175 = v184 / v164;
                if (!v173)
                {
                  goto LABEL_417;
                }
              }

              else
              {
                if (v162 >= 0x20)
                {
                  v186 = 32;
                }

                else
                {
                  v186 = v162;
                }

                v180 = v238;
                do
                {
                  v173 = v186;
                  v187 = v186 * v185;
                  v186 >>= 1;
                }

                while (v187 > 0x20);
                if (v164)
                {
                  goto LABEL_413;
                }

LABEL_416:
                v175 = 0;
                if (!v173)
                {
                  goto LABEL_417;
                }
              }

              v176 = (v173 + v162 - 1) / v173;
              goto LABEL_418;
            }

            v161 = 1;
            v162 = HIDWORD(v265);
            if (v108)
            {
              goto LABEL_320;
            }

LABEL_313:
            v163 = v161;
            if (v152 < 2)
            {
              v164 = v153;
            }

            else
            {
              v164 = v153;
              if (v265 < v153)
              {
                do
                {
                  v165 = v164;
                  v164 >>= 1;
                  v163 <<= v164 * v163 < v153;
                }

                while (v165 >= 4 && v265 < v164);
                v160 = v165 & 0xFFFFFFFFFFFFFFFELL;
                if (v162 >= v163)
                {
                  goto LABEL_351;
                }

                do
                {
LABEL_349:
                  if (v163 * v160 < v153)
                  {
                    break;
                  }

                  v163 >>= 1;
                }

                while (v162 < v163);
LABEL_351:
                if (v265 == 1 && v162 >= 2)
                {
                  v174 = v161 * v153;
                  if (v174 >= v162)
                  {
                    v174 = v162;
                  }

                  if (v174 <= 1)
                  {
                    v169 = 1;
                  }

                  else
                  {
                    v169 = v174;
                  }

                  v164 = 1;
                  v175 = 1;
                  v176 = (v162 + v169 - 1) / v169;
                }

                else
                {
                  if (v164 >= v153 && v163 > v162)
                  {
                    v169 = 1;
                  }

                  else
                  {
                    v169 = v163;
                  }

                  v176 = (v162 + v169 - 1) / v169;
                  v175 = (v164 + v265 - 1) / v164;
                  if (v265 >= 2 && v162 == 1)
                  {
                    v178 = v161 * v153;
                    if (v161 * v153 >= v265)
                    {
                      v178 = v265;
                    }

                    if (v178 <= 1)
                    {
                      v164 = 1;
                    }

                    else
                    {
                      v164 = v178;
                    }

                    v169 = 1;
                    v176 = 1;
                    v175 = (v164 + v265 - 1) / v164;
                  }
                }

                v252 = (v129 + v234 - 1) >> v232;
                v179 = v250;
                if (v233 - 5 >= 0xFFFFFFFC)
                {
                  v179 = 1;
                }

                v250 = v179;
                v173 = 1;
                v180 = v238;
                v88 = v226;
LABEL_418:
                MPSSetNDArraysOnComputeEncoder(v180, a4, 4, 0, 0);
                objc_msgSend_setBytes_length_atIndex_(v180);
                if (v256)
                {
                  if (v223)
                  {
                    v188 = v223;
                  }

                  else
                  {
                    v188 = v242;
                  }

                  [v180 setBuffer:v188 offset:0 atIndex:28];
                  v223 = 0;
                  if ((v254 & 1) == 0)
                  {
LABEL_423:
                    if (v88 == 2)
                    {
                      goto LABEL_424;
                    }

LABEL_434:
                    if (v108)
                    {
                      goto LABEL_435;
                    }

LABEL_425:
                    if (v88)
                    {
                      goto LABEL_426;
                    }

                    goto LABEL_448;
                  }
                }

                else if ((v254 & 1) == 0)
                {
                  goto LABEL_423;
                }

                if (v266 == 1)
                {
                  v189 = a16;
                }

                else
                {
                  v189 = v244;
                }

                [v180 setBuffer:v189 offset:0 atIndex:27];
                if (v88 != 2)
                {
                  goto LABEL_434;
                }

LABEL_424:
                [v180 setBuffer:a17 offset:0 atIndex:26];
                if (!v108)
                {
                  goto LABEL_425;
                }

LABEL_435:
                v190 = v258;
                if (v248 == 1)
                {
                  v190 = 4096;
                }

                if (v246)
                {
                  v191 = v169;
                }

                else
                {
                  v191 = v173;
                }

                v192 = v235 && v248 == 1;
                v193 = v191 * v190 * v164;
                if (v192)
                {
                  v193 = (9 * v193) >> 4;
                }

                if (v193 >= 0x1000)
                {
                  LODWORD(v193) = 4096;
                }

                [v180 setThreadgroupMemoryLength:(8 * v193 + 15) & 0x1FFF0 atIndex:0];
                if (v88)
                {
LABEL_426:
                  v275[0] = v175;
                  v275[1] = v176;
                  v275[2] = v252 * v250;
                  v274[0] = v164;
                  v274[1] = v169;
                  v274[2] = v173;
                  [v180 dispatchThreadgroups:v275 threadsPerThreadgroup:v274];
                  MPSLibrary::ReleaseComputeState();
                  result = v244;
                  v99 = v218;
                  if (!v88)
                  {
                    v301 = v303;
                    v302 = v304;
                    if (v97 == v262)
                    {
                      v282 = v281;
                    }
                  }

                  ++v97;
                  v92 = v246;
                  v94 = *(v310 + v246);
                  a9 = 1.0;
                  v256 = 1;
                  v84 = v242;
                  v89 = v229;
                  v49 = v266 - 1;
                  v101 = v236;
                  v95 = v237;
                  v100 = v258;
                  if (v97 >= v94)
                  {
                    v235 = 0;
                    v84 = v242;
                    goto LABEL_199;
                  }

                  continue;
                }

LABEL_448:
                --v311[21 * v246 + v248];
                goto LABEL_426;
              }
            }

            if (v162 < v161)
            {
              goto LABEL_349;
            }

            goto LABEL_351;
          }
        }

        else
        {
          v122 = v92 != v89 || v97 == 0;
          v123 = !v235;
          if (v122)
          {
            v123 = 1;
          }

          if (v123)
          {
            v267 = v281;
            *v208 = v114 * v112;
            v116 = v267;
          }

          else
          {
            v268 = v281;
            *(&v268 & 0xFFFFFFFFFFFFFFF3 | (4 * (v229 & 3))) = v113 * v210 * v114;
            v116 = v268;
          }
        }

        break;
      }

      DimensionSize = v114;
      goto LABEL_254;
    }

LABEL_199:
    if (++v92 != 4)
    {
      continue;
    }

    break;
  }

  if (v84)
  {
    v196 = result;
    MPSAutoCache::ReleaseTempResource();
    result = v196;
  }

  if (result)
  {
    MPSAutoCache::ReleaseTempResource();
    return 0;
  }

  return result;
}

uint64_t std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t MPSNDArrayFFTFunctionConstructor(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 68);
  v7 = MPSCreateFunctionConstantValues();
  v17 = v6 & 0xFFFFFF;
  [v7 setConstantValue:&v17 type:33 atIndex:115];
  v8 = *a3;
  v9 = *(a3 + 1);
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  v11 = vceqq_s64(v9, v10);
  if (*a3 != -1 || ((v12 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a3 + 3), v10), vceqq_s64(*(a3 + 4), v10)))) & 0xF, (~vaddvq_s32(vandq_s8(vuzp1q_s32(v11, vceqq_s64(*(a3 + 3), v10)), xmmword_239B06050)) & 0xF) == 0) ? (v13 = v12 == 0) : (v13 = 0), v13 ? (v14 = a3[5] == -1) : (v14 = 0), !v14))
  {
    if ((vuzp1_s16(vmovn_s64(v11), *v9.i8).u8[0] & 1) == 0)
    {
      v18 = *(a3 + 1);
      [v7 setConstantValue:&v18 type:33 atIndex:126];
      v8 = *a3;
    }

    if (v8 != -1)
    {
      v18 = v8;
      [v7 setConstantValue:&v18 type:33 atIndex:125];
    }

    if (a3[2] != -1)
    {
      v18 = a3[2];
      [v7 setConstantValue:&v18 type:33 atIndex:124];
    }

    if (a3[3] != -1)
    {
      v18 = a3[3];
      [v7 setConstantValue:&v18 type:33 atIndex:123];
    }

    if (a3[4] != -1)
    {
      v18 = a3[4];
      [v7 setConstantValue:&v18 type:33 atIndex:119];
    }

    if (a3[5] != -1)
    {
      v18 = a3[5];
      [v7 setConstantValue:&v18 type:33 atIndex:118];
    }

    if (a3[8] != -1)
    {
      v18 = a3[8];
      [v7 setConstantValue:&v18 type:33 atIndex:122];
    }

    if (a3[9] != -1)
    {
      v18 = a3[9];
      [v7 setConstantValue:&v18 type:33 atIndex:121];
    }

    if (a3[6] != -1)
    {
      v18 = a3[6];
      [v7 setConstantValue:&v18 type:33 atIndex:117];
    }

    if (a3[7] != -1)
    {
      v18 = a3[7];
      [v7 setConstantValue:&v18 type:33 atIndex:116];
    }
  }

  v15 = _MPSNewSpecializedFunction();

  return v15;
}

void std::__shared_ptr_pointer<MPSKernelDAG *,std::shared_ptr<MPSKernelDAG>::__shared_ptr_default_delete<MPSKernelDAG,MPSKernelDAG>,std::allocator<MPSKernelDAG>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE7C8C0);
}

uint64_t std::__shared_ptr_pointer<MPSKernelDAG *,std::shared_ptr<MPSKernelDAG>::__shared_ptr_default_delete<MPSKernelDAG,MPSKernelDAG>,std::allocator<MPSKernelDAG>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t mpsMatrixFromNDArray(MPSNDArray *a1, uint64_t a2)
{
  makeStrideBytes();
  v4 = *(&a1->super.isa + *MEMORY[0x277CD73D8]);
  v27[6] = v34;
  v27[7] = v35;
  v27[4] = v32;
  v27[5] = v33;
  v27[2] = v30;
  v27[3] = v31;
  v27[0] = v28;
  v27[1] = v29;
  v5 = v4 & 0xF;
  v6 = *(v27 + v5);
  v26[6] = v34;
  v26[7] = v35;
  v26[4] = v32;
  v26[5] = v33;
  v26[2] = v30;
  v26[3] = v31;
  v26[0] = v28;
  v26[1] = v29;
  v7 = BYTE1(v4) & 0xF;
  v8 = *(v26 + v7);
  v25[6] = v34;
  v25[7] = v35;
  v25[4] = v32;
  v25[5] = v33;
  v25[2] = v30;
  v25[3] = v31;
  v25[0] = v28;
  v25[1] = v29;
  v9 = BYTE2(v4) & 0xF;
  v10 = *(v25 + v9);
  v11 = (a1 + *MEMORY[0x277CD7418]);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[3];
  v23 = v11[2];
  v24 = v14;
  v22[0] = v12;
  v22[1] = v13;
  v15 = *(v22 + v5);
  v21[2] = v23;
  v21[3] = v14;
  v21[0] = v12;
  v21[1] = v13;
  v16 = *(v21 + v7);
  v20[2] = v23;
  v20[3] = v14;
  v20[0] = v12;
  v20[1] = v13;
  v17 = a2 + v8 * v16 + v6 * v15 + v10 * *(v20 + v9);
  v18 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:*(&a1->super.isa + *MEMORY[0x277CD7410] + 4) columns:*(&a1->super.isa + *MEMORY[0x277CD7410]) matrices:1 rowBytes:*(&a1->super.isa + *MEMORY[0x277CD7400]) matrixBytes:*(&a1->super.isa + *MEMORY[0x277CD7400]) * *(&a1->super.isa + *MEMORY[0x277CD73D0] + 4) dataType:{*(&a1->super.isa + *MEMORY[0x277CD73C8]), v12, v13, v23, v14, v12, v13, v23, v14, v12, v13, v23, v14, v28, v29, v30, v31, v32, v33, v34, v35, v28, v29, v30, v31, v32, v33, v34, v35}];
  return [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:-[MPSNDArray buffer](a1 offset:"buffer") descriptor:{v17, v18}];
}

uint64_t EncodeSolverLU(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v100 = *(a1 + 144);
  v5 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v6 = [*(a4 + 16) objectAtIndexedSubscript:1];
  v7 = [*(a4 + 16) objectAtIndexedSubscript:2];
  v8 = *(a4 + 208);
  v9 = *(*(a4 + 8) + 64);
  makeStrideBytes();
  v10 = *&v5[*MEMORY[0x277CD73D8]];
  v136[7] = v144;
  v136[6] = v143;
  v136[5] = v142;
  v136[4] = v141;
  v136[3] = v140;
  v136[2] = v139;
  v136[1] = v138;
  v136[0] = v137;
  v11 = v10 & 0xF;
  v12 = *(v136 + v11);
  v135[7] = v144;
  v135[6] = v143;
  v135[5] = v142;
  v135[4] = v141;
  v135[3] = v140;
  v135[2] = v139;
  v135[1] = v138;
  v135[0] = v137;
  v13 = BYTE1(v10) & 0xF;
  v14 = *(v135 + v13);
  v134[7] = v144;
  v134[6] = v143;
  v134[5] = v142;
  v134[4] = v141;
  v134[3] = v140;
  v134[2] = v139;
  v134[1] = v138;
  v134[0] = v137;
  v15 = BYTE2(v10) & 0xF;
  v16 = *(v134 + v15);
  v17 = &v5[*MEMORY[0x277CD7418]];
  v18 = *v17;
  v19 = *(v17 + 1);
  v20 = *(v17 + 2);
  v133 = *(v17 + 3);
  v132[2] = v20;
  v132[1] = v19;
  v132[0] = v18;
  v21 = *(v132 + v11);
  v131[3] = v133;
  v131[2] = v20;
  v131[1] = v19;
  v131[0] = v18;
  v22 = *(v131 + v13);
  v130[3] = v133;
  v130[2] = v20;
  v130[1] = v19;
  v130[0] = v18;
  v23 = v9 + v14 * v22 + v12 * v21 + v16 * *(v130 + v15);
  v24 = MEMORY[0x277CD7410];
  v25 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:*&v5[*MEMORY[0x277CD7410] + 4] columns:*&v5[*MEMORY[0x277CD7410]] matrices:1 rowBytes:*&v5[*MEMORY[0x277CD7400]] matrixBytes:*&v5[*MEMORY[0x277CD7400]] * *&v5[*MEMORY[0x277CD73D0] + 4] dataType:*&v5[*MEMORY[0x277CD73C8]]];
  v104 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:objc_msgSend(v5 offset:"buffer") descriptor:{v23, v25}];
  v26 = *(*(a4 + 8) + 144);
  makeStrideBytes();
  v27 = MEMORY[0x277CD73D8];
  v28 = *&v6[*MEMORY[0x277CD73D8]];
  v129[7] = v144;
  v129[6] = v143;
  v129[5] = v142;
  v129[4] = v141;
  v129[3] = v140;
  v129[2] = v139;
  v129[1] = v138;
  v129[0] = v137;
  v29 = v28 & 0xF;
  v30 = *(v129 + v29);
  v128[7] = v144;
  v128[6] = v143;
  v128[5] = v142;
  v128[4] = v141;
  v128[3] = v140;
  v128[2] = v139;
  v128[1] = v138;
  v128[0] = v137;
  v31 = BYTE1(v28) & 0xF;
  v32 = *(v128 + v31);
  v127[7] = v144;
  v127[6] = v143;
  v127[5] = v142;
  v127[4] = v141;
  v127[3] = v140;
  v127[2] = v139;
  v127[1] = v138;
  v127[0] = v137;
  v33 = BYTE2(v28) & 0xF;
  v34 = *(v127 + v33);
  v35 = &v6[*MEMORY[0x277CD7418]];
  v36 = *v35;
  v37 = *(v35 + 1);
  v38 = *(v35 + 2);
  v126 = *(v35 + 3);
  v125[2] = v38;
  v125[1] = v37;
  v125[0] = v36;
  v39 = *(v125 + v29);
  v124[3] = v126;
  v124[2] = v38;
  v124[1] = v37;
  v124[0] = v36;
  v40 = *(v124 + v31);
  v123[3] = v126;
  v123[2] = v38;
  v123[1] = v37;
  v123[0] = v36;
  v41 = v26 + v32 * v40 + v30 * v39 + v34 * *(v123 + v33);
  v42 = &v6[*v24];
  v43 = MEMORY[0x277CD7400];
  v44 = MEMORY[0x277CD73D0];
  v45 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v42[1] columns:*v42 matrices:1 rowBytes:*&v6[*MEMORY[0x277CD7400]] matrixBytes:*&v6[*MEMORY[0x277CD7400]] * *&v6[*MEMORY[0x277CD73D0] + 4] dataType:*&v6[*MEMORY[0x277CD73C8]]];
  v103 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:objc_msgSend(v6 offset:"buffer") descriptor:{v41, v45}];
  v46 = *(*(a4 + 8) + 224);
  makeStrideBytes();
  v47 = *&v7[*v27];
  v122[7] = v144;
  v122[6] = v143;
  v122[5] = v142;
  v122[4] = v141;
  v122[3] = v140;
  v122[2] = v139;
  v122[1] = v138;
  v122[0] = v137;
  v48 = v47 & 0xF;
  v49 = *(v122 + v48);
  v121[7] = v144;
  v121[6] = v143;
  v121[5] = v142;
  v121[4] = v141;
  v121[3] = v140;
  v121[2] = v139;
  v121[1] = v138;
  v121[0] = v137;
  v50 = BYTE1(v47) & 0xF;
  v51 = *(v121 + v50);
  v120[7] = v144;
  v120[6] = v143;
  v120[4] = v141;
  v120[5] = v142;
  v120[2] = v139;
  v120[3] = v140;
  v120[0] = v137;
  v120[1] = v138;
  v52 = BYTE2(v47) & 0xF;
  v53 = *(v120 + v52);
  v54 = MEMORY[0x277CD7418];
  v55 = &v7[*MEMORY[0x277CD7418]];
  v56 = *v55;
  v57 = *(v55 + 1);
  v58 = *(v55 + 3);
  v118 = *(v55 + 2);
  v119 = v58;
  v117[0] = v56;
  v117[1] = v57;
  v59 = *(v117 + v48);
  v116[2] = v118;
  v116[3] = v58;
  v116[0] = v56;
  v116[1] = v57;
  v60 = *(v116 + v50);
  v115[2] = v118;
  v115[3] = v58;
  v115[0] = v56;
  v115[1] = v57;
  v61 = v46 + v51 * v60 + v49 * v59 + v53 * *(v115 + v52);
  v62 = MEMORY[0x277CD7410];
  v63 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:*&v7[*MEMORY[0x277CD7410] + 4] columns:*&v7[*MEMORY[0x277CD7410]] matrices:1 rowBytes:*&v7[*v43] matrixBytes:*&v7[*v43] * *&v7[*v44 + 4] dataType:*&v7[*MEMORY[0x277CD73C8]]];
  v102 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:objc_msgSend(v7 offset:"buffer") descriptor:{v61, v63}];
  v64 = *(a4 + 192);
  makeStrideBytes();
  v65 = MEMORY[0x277CD73D8];
  v66 = *&v8[*MEMORY[0x277CD73D8]];
  v114[6] = v143;
  v114[7] = v144;
  v114[4] = v141;
  v114[5] = v142;
  v114[2] = v139;
  v114[3] = v140;
  v114[0] = v137;
  v114[1] = v138;
  v67 = v66 & 0xF;
  v68 = *(v114 + v67);
  v113[6] = v143;
  v113[7] = v144;
  v113[4] = v141;
  v113[5] = v142;
  v113[2] = v139;
  v113[3] = v140;
  v113[0] = v137;
  v113[1] = v138;
  v69 = BYTE1(v66) & 0xF;
  v70 = *(v113 + v69);
  v112[6] = v143;
  v112[7] = v144;
  v112[4] = v141;
  v112[5] = v142;
  v112[2] = v139;
  v112[3] = v140;
  v112[0] = v137;
  v112[1] = v138;
  v71 = BYTE2(v66) & 0xF;
  v72 = *(v112 + v71);
  v73 = &v8[*v54];
  v74 = *v73;
  v75 = *(v73 + 1);
  v76 = *(v73 + 3);
  v110 = *(v73 + 2);
  v111 = v76;
  v109[0] = v74;
  v109[1] = v75;
  v77 = *(v109 + v67);
  v108[2] = v110;
  v108[3] = v76;
  v108[0] = v74;
  v108[1] = v75;
  v78 = *(v108 + v69);
  v107[2] = v110;
  v107[3] = v76;
  v107[0] = v74;
  v107[1] = v75;
  v79 = v64 + v70 * v78 + v68 * v77 + v72 * *(v107 + v71);
  v80 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:*&v8[*v62 + 4] columns:*&v8[*v62] matrices:1 rowBytes:*&v8[*MEMORY[0x277CD7400]] matrixBytes:*&v8[*MEMORY[0x277CD7400]] * *&v8[*v44 + 4] dataType:*&v8[*MEMORY[0x277CD73C8]]];
  v81 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:objc_msgSend(v8 offset:"buffer") descriptor:{v79, v80}];
  v82 = &v8[*v62];
  v83 = *v82;
  v84 = *(v82 + 1);
  v85 = *(v82 + 2);
  v86 = *(v82 + 3);
  v87 = *v65;
  v88 = v81;
  v89 = *&v8[v87];
  v105[2] = v85;
  v105[3] = v86;
  v105[0] = v83;
  v105[1] = v84;
  v90 = *(v105 + (BYTE1(v89) & 0xF));
  v106[2] = v85;
  v106[3] = v86;
  v106[0] = v83;
  v106[1] = v84;
  v91 = *(v106 + (v89 & 0xF));
  v92 = [v100 trsmL];
  v93 = [v100 trsmU];
  [v100 setOrder:v90];
  [v100 setNumberOfRightHandSides:v91];
  MEMORY[0x23EE7C450](&v137);
  [v92 setOrder:v90];
  [v92 setNumberOfRightHandSides:v91];
  v94 = [v92 workspace];
  v95 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v91 + v90 columns:objc_msgSend(v94 rowBytes:"columns") dataType:{objc_msgSend(v94, "rowBytes"), 268435488}];
  [v92 setWorkspace:{objc_msgSend(objc_alloc(MEMORY[0x277CD7250]), "initWithBuffer:descriptor:", MPSAutoCache::GetTempBuffer(&v137, objc_msgSend(v95, "rowBytes") * objc_msgSend(v95, "rows"), 0), v95)}];

  [v93 setOrder:v90];
  [v93 setNumberOfRightHandSides:v91];
  v96 = [v93 workspace];
  v97 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v91 + v90 columns:objc_msgSend(v96 rowBytes:"columns") dataType:{objc_msgSend(v96, "rowBytes"), 268435488}];
  [v93 setWorkspace:{objc_msgSend(objc_alloc(MEMORY[0x277CD7250]), "initWithBuffer:descriptor:", MPSAutoCache::GetTempBuffer(&v137, objc_msgSend(v97, "rowBytes") * objc_msgSend(v97, "rows"), 0), v97)}];

  [v100 encodeToCommandEncoder:a2 commandBuffer:a3 sourceMatrix:v104 rightHandSideMatrix:v102 pivotIndices:v103 solutionMatrix:v88];
  MPSAutoCache::~MPSAutoCache(&v137);
  return 0;
}

uint64_t EncodeNMS(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v84[3] = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 144);
  v9 = *(a1 + 148);
  v10 = *(a1 + 152);
  v51 = *(a1 + 168);
  v53 = *(a1 + 176);
  v55 = *(a1 + 160);
  v49 = *(a1 + 184);
  v11 = [*(a4 + 232) inputTensorAtIndex:0];
  v12 = [*(v4 + 232) inputTensorAtIndex:1];
  [*(v4 + 232) outputTensorAtIndex:0];
  v13 = [*(v4 + 16) objectAtIndexedSubscript:0];
  v14 = [*(v4 + 16) objectAtIndexedSubscript:1];
  v15 = *(v4 + 208);
  LODWORD(v4) = BaseTensor::GetDimensionSize(v12);
  DimensionSize = BaseTensor::GetDimensionSize(v11);
  v17 = BaseTensor::GetDimensionSize(v11);
  v18 = DimensionSize + 31;
  v70 = v8;
  v71 = v9;
  v72 = v4;
  v73 = DimensionSize;
  if (v10 == -1)
  {
    v19 = DimensionSize;
  }

  else
  {
    v19 = v10;
  }

  v74 = v17;
  v75 = v19;
  v57 = v15;
  v58 = v18 >> 5;
  v76 = *&v15[*MEMORY[0x277CD7400]] >> 2;
  v77 = v18 & 0xFFFFFFE0;
  v78 = v18 >> 5;
  v84[0] = 1;
  v84[1] = DimensionSize;
  v52 = DimensionSize;
  v59 = v17;
  v84[2] = v17;
  v20 = [MEMORY[0x277CD7268] descriptorWithDataType:268435488 dimensionCount:3 dimensionSizes:v84];
  [v20 setPreferPackedRows:1];
  v21 = [MEMORY[0x277CD7268] descriptorWithDataType:536870944 dimensionCount:3 dimensionSizes:v84];
  [v21 setPreferPackedRows:1];
  v22 = [v13 descriptor];
  v23 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v20];
  [v23 setReadCount:{objc_msgSend(v23, "readCount") + 1}];
  v24 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v21];
  [v24 setReadCount:{objc_msgSend(v24, "readCount") + 1}];
  v25 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v21];
  v26 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v22];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ++*(v14 + *MEMORY[0x277CD7498]);
  }

  v83 = v14;
  [v51 encodeToMPSCommandEncoder:a2 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] destinationArray:{"arrayWithObjects:count:", &v83, 1), v23}];
  v82 = v14;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
  v28 = v55;
  v56 = v25;
  [v28 encodeToMPSCommandEncoder:a2 commandBuffer:a3 sourceArrays:v27 destinationArray:v25];
  v81 = v23;
  [v53 encodeToMPSCommandEncoder:a2 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] destinationArray:{"arrayWithObjects:count:", &v81, 1), v24}];
  v80[0] = v13;
  v80[1] = v24;
  v54 = v24;
  [v49 encodeToMPSCommandEncoder:a2 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] destinationArray:{"arrayWithObjects:count:", v80, 2), v26}];
  v79[0] = v58;
  v79[1] = v52;
  v79[2] = v59;
  v29 = [MEMORY[0x277CD7268] descriptorWithDataType:32 dimensionCount:3 dimensionSizes:v79];
  [v29 setPreferPackedRows:1];
  v30 = v26;
  v31 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v29];
  *&v32 = -1;
  *(&v32 + 1) = -1;
  v68 = v32;
  v69 = v32;
  v67 = v32;
  v33 = *(a1 + *MEMORY[0x277CD7360]);
  v65 = v32;
  v66 = v32;
  v45 = v33;
  v47 = *(a1 + *MEMORY[0x277CD7368]);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  v35 = [PipelineStateForMPSKey threadExecutionWidth];
  if (v35 <= 1)
  {
    v36 = 1;
  }

  else
  {
    v36 = v35;
  }

  [a2 setComputePipelineState:PipelineStateForMPSKey];
  objc_msgSend_setBytes_length_atIndex_(a2);
  [a2 setBuffer:objc_msgSend(v30 offset:"buffer") atIndex:{0, 28}];
  v50 = v31;
  [a2 setBuffer:objc_msgSend(v31 offset:"buffer") atIndex:{0, 27}];
  v62 = v58;
  v63 = v52;
  v64 = v59;
  v60 = v36;
  v61 = vdupq_n_s64(1uLL);
  [a2 dispatchThreadgroups:&v62 threadsPerThreadgroup:&v60];
  MPSLibrary::ReleaseComputeState();
  [v30 readCount];
  if ([v30 readCount] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [v30 setReadCount:0];
  *&v37 = -1;
  *(&v37 + 1) = -1;
  v68 = v37;
  v69 = v37;
  v66 = v37;
  v67 = v37;
  v65 = v37;
  v46 = *(a1 + *MEMORY[0x277CD7360]);
  v48 = *(a1 + *MEMORY[0x277CD7368]);
  v38 = 1;
  MPSLibrary::CreateUberShaderKey();
  v39 = MPSLibrary::GetPipelineStateForMPSKey();
  MPSLibrary::ReleaseMPSKey();
  v40 = [v39 threadExecutionWidth];
  if (v40 <= 1)
  {
    v41 = 1;
  }

  else
  {
    v41 = v40;
  }

  do
  {
    v42 = v38;
    v43 = v41;
    if (v41 < 2)
    {
      break;
    }

    v41 >>= 1;
    v38 *= 2;
  }

  while (v43 >> 1 >= v78);
  [a2 setComputePipelineState:v39];
  MPSLibrary::ReleaseComputeState();
  [a2 setThreadgroupMemoryLength:(v42 * (4 * v58 + 4) + 12) & 0xFFFFFFFFFFFFFFF0 atIndex:0];
  objc_msgSend_setBytes_length_atIndex_(a2);
  [a2 setBuffer:objc_msgSend(v23 offset:"buffer") atIndex:{0, 28}];
  [a2 setBuffer:objc_msgSend(v50 offset:"buffer") atIndex:{0, 27}];
  [a2 setBuffer:objc_msgSend(v54 offset:"buffer") atIndex:{0, 26}];
  [a2 setBuffer:objc_msgSend(v56 offset:"buffer") atIndex:{0, 25}];
  [a2 setBuffer:objc_msgSend(v57 offset:"buffer") atIndex:{0, 24}];
  v62 = 1;
  v63 = (v59 + v42 - 1) / v42;
  v64 = 1;
  v60 = v43;
  v61.i64[0] = v42;
  v61.i64[1] = 1;
  [a2 dispatchThreadgroups:&v62 threadsPerThreadgroup:&v60];
  [v23 readCount];
  if ([v23 readCount] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [v23 setReadCount:0];
  [v54 readCount];
  if ([v54 readCount] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [v54 setReadCount:0];
  [v56 readCount];
  if ([v56 readCount] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [v56 setReadCount:0];
  return 0;
}

uint64_t EncodeDWConv(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 144) == 1)
  {

    return EncodeDWConvGradientBackPropImpl(a1, a2, a3, a4, 0, 1u);
  }

  v7 = *(a1 + *MEMORY[0x277CD7350]);
  v8 = *(a1 + 192);
  v268 = *(a1 + 200);
  v9 = *(a1 + 208);
  v10 = *(a1 + 176);
  v249 = *(a1 + 168);
  v11 = *(a1 + 184);
  v261 = *(a1 + 216);
  v262 = *(a1 + 148);
  v264 = *(a1 + 232);
  if (*(a1 + 160) >= 3)
  {
    v12 = 3;
  }

  else
  {
    v12 = *(a1 + 160);
  }

  v272 = v12;
  v255 = *(a1 + 160);
  v13 = [*(a4 + 232) graph];
  v14 = **(v13 + 56);
  if (*(*(v13 + 56) + 8) == v14)
  {
    goto LABEL_552;
  }

  v16 = *(*v14 + 8);
  v15 = *v16;
  if (*(v16 + 8) - *v16 <= 8uLL)
  {
    goto LABEL_551;
  }

  v260 = v15[1];
  v254 = *v15;
  v258 = (*v15)[2];
  v17 = [*(a4 + 232) graph];
  v18 = **(v17 + 56);
  if (*(*(v17 + 56) + 8) == v18)
  {
LABEL_552:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v20 = *(*v18 + 24);
  v19 = *v20;
  if (*(v20 + 8) == *v20)
  {
    goto LABEL_551;
  }

  v270 = *v19;
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (v255 >= 4 && MTLReportFailureTypeEnabled())
    {
      v211 = a1;
      v213 = v255;
      MTLReportFailure();
    }

    BaseTensor::GetDimensionSize(v270);
    BaseTensor::GetDimensionSize(v260);
    DimensionSize = BaseTensor::GetDimensionSize(v270);
    if (DimensionSize != BaseTensor::GetDimensionSize(v260) && MTLReportFailureTypeEnabled())
    {
      v213 = BaseTensor::GetDimensionSize(v254);
      v215 = BaseTensor::GetDimensionSize(v270);
      v211 = a1;
      MTLReportFailure();
    }
  }

  v247 = v10;
  v248 = v11;
  v267 = v9;
  v259 = v7;
  v275 = v8;
  v257 = a2;
  v22 = 0;
  if ([*(a4 + 16) count])
  {
    v23 = 0;
    v24 = 5;
    do
    {
      v26 = [objc_msgSend(*(a4 + 16) objectAtIndexedSubscript:{v23), "dataType"}];
      if (v26 > 285212703)
      {
        if (v26 <= 536870915)
        {
          if (v26 > 301989895)
          {
            if (v26 == 301989896)
            {
              v25 = 16;
            }

            else
            {
              if (v26 != 335544328)
              {
                goto LABEL_61;
              }

              v25 = 17;
            }
          }

          else if (v26 == 285212704)
          {
            v25 = 13;
          }

          else
          {
            if (v26 != 285212736)
            {
              goto LABEL_61;
            }

            v25 = 14;
          }
        }

        else if (v26 <= 536870927)
        {
          if (v26 == 536870916)
          {
            v25 = 0;
          }

          else
          {
            if (v26 != 536870920)
            {
LABEL_61:
              v25 = 18;
              goto LABEL_18;
            }

            v25 = 1;
          }
        }

        else
        {
          switch(v26)
          {
            case 536870928:
              v25 = 2;
              break;
            case 536870944:
              v25 = 3;
              break;
            case 536870976:
              v25 = 4;
              break;
            default:
              goto LABEL_61;
          }
        }
      }

      else if (v26 <= 31)
      {
        if (v26 > 7)
        {
          if (v26 == 8)
          {
            v25 = 6;
          }

          else
          {
            if (v26 != 16)
            {
              goto LABEL_61;
            }

            v25 = 7;
          }
        }

        else if (v26 == -1879048176)
        {
          v25 = 12;
        }

        else
        {
          if (v26 != 4)
          {
            goto LABEL_61;
          }

          v25 = 5;
        }
      }

      else if (v26 <= 268435463)
      {
        if (v26 == 32)
        {
          v25 = 8;
        }

        else
        {
          if (v26 != 64)
          {
            goto LABEL_61;
          }

          v25 = 9;
        }
      }

      else
      {
        switch(v26)
        {
          case 268435464:
            v25 = 15;
            break;
          case 268435472:
            v25 = 10;
            break;
          case 268435488:
            v25 = 11;
            break;
          default:
            goto LABEL_61;
        }
      }

LABEL_18:
      ++v23;
      v22 |= (v25 << v24);
      v24 += 5;
    }

    while (v23 < [*(a4 + 16) count]);
  }

  v27 = *(v270 + 2);
  if (v27 > 285212703)
  {
    if (v27 <= 536870915)
    {
      if (v27 > 301989895)
      {
        if (v27 == 301989896)
        {
          v28 = 16;
          goto LABEL_106;
        }

        if (v27 == 335544328)
        {
          v28 = 17;
          goto LABEL_106;
        }
      }

      else
      {
        if (v27 == 285212704)
        {
          v28 = 13;
          goto LABEL_106;
        }

        if (v27 == 285212736)
        {
          v28 = 14;
          goto LABEL_106;
        }
      }
    }

    else if (v27 <= 536870927)
    {
      if (v27 == 536870916)
      {
        v28 = 0;
        goto LABEL_106;
      }

      if (v27 == 536870920)
      {
        v28 = 1;
        goto LABEL_106;
      }
    }

    else
    {
      switch(v27)
      {
        case 536870928:
          v28 = 2;
          goto LABEL_106;
        case 536870944:
          v28 = 3;
          goto LABEL_106;
        case 536870976:
          v28 = 4;
          goto LABEL_106;
      }
    }
  }

  else if (v27 <= 31)
  {
    if (v27 > 7)
    {
      if (v27 == 8)
      {
        v28 = 6;
        goto LABEL_106;
      }

      if (v27 == 16)
      {
        v28 = 7;
        goto LABEL_106;
      }
    }

    else
    {
      if (v27 == -1879048176)
      {
        v28 = 12;
        goto LABEL_106;
      }

      if (v27 == 4)
      {
        v28 = 5;
        goto LABEL_106;
      }
    }
  }

  else if (v27 <= 268435463)
  {
    if (v27 == 32)
    {
      v28 = 8;
      goto LABEL_106;
    }

    if (v27 == 64)
    {
      v28 = 9;
      goto LABEL_106;
    }
  }

  else
  {
    switch(v27)
    {
      case 268435464:
        v28 = 15;
        goto LABEL_106;
      case 268435472:
        v28 = 10;
        goto LABEL_106;
      case 268435488:
        v28 = 11;
        goto LABEL_106;
    }
  }

  v28 = 18;
LABEL_106:
  *&v29 = -1;
  *(&v29 + 1) = -1;
  v295 = v29;
  v296 = v29;
  v292 = -1;
  v294 = v29;
  v291 = v29;
  v293 = v28 | v22;
  *&v296 = [*(a4 + 16) count] | 0x10000;
  v263 = BaseTensor::GetDimensionSize(v260);
  v251 = BaseTensor::GetDimensionSize(v260);
  v30 = BaseTensor::GetDimensionSize(v260);
  v269 = BaseTensor::GetDimensionSize(v270);
  v266 = BaseTensor::GetDimensionSize(v270);
  v31 = BaseTensor::GetDimensionSize(v270);
  v32 = BaseTensor::GetDimensionSize(v270);
  v253 = BaseTensor::GetDimensionSize(v254);
  v33 = BaseTensor::GetDimensionSize(v254);
  v246 = BaseTensor::GetDimensionSize(v254);
  v34 = BaseTensor::GetDimensionSize(v254);
  v274 = v32;
  v35 = v32 / v34;
  v277 = v32 / v34 < 2;
  v278 = v31;
  v37 = v31 == 1 && v30 == 1;
  v38 = [*(a4 + 232) graph];
  v39 = **(v38 + 56);
  if (*(*(v38 + 56) + 8) == v39)
  {
    goto LABEL_552;
  }

  v245 = v34;
  v40 = v258;
  if (*(*(*v39 + 8) + 8) == **(*v39 + 8))
  {
LABEL_551:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v242 = v33;
  v41 = v251;
  v42 = v30;
  BaseTensor::GetAccessPattern();
  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v255 > 2;
  }

  v46 = v266;
  if (v45)
  {
    v47 = v275;
    v48 = v267;
    v49 = v268;
    v50 = v269;
    v51 = v263;
    v52 = v253;
    v53 = v7;
    if (v274 >= 4)
    {
      goto LABEL_127;
    }

    goto LABEL_126;
  }

  v47 = v275;
  v48 = v267;
  v49 = v268;
  v50 = v269;
  v51 = v263;
  v52 = v253;
  v53 = v7;
  if (v255 || (!v43 ? (v54 = v274 > 3) : (v54 = 0), !v54))
  {
LABEL_126:
    v277 = 0;
  }

LABEL_127:
  v55 = 0;
  v56 = *(v53 + 1476);
  HIDWORD(v57) = v261.i32[3];
  v244 = v35;
  if (v50 >= 3 && v51 == 3 && v251 == 3 && v42 == 1 && v261.i64[0] == 1 && v261.i64[1] && v266 >= 3 && (v277 & 1) == 0)
  {
    if (v47 == 2 && v49 == 2 || (v55 = 0, v47 == 1) && v49 == 1)
    {
      v55 = 1;
    }
  }

  LODWORD(v58) = v50;
  LODWORD(v59) = v52;
  if (v262)
  {
    v60 = 0;
  }

  else
  {
    v60 = v55;
  }

  v63 = v261.i64[0] == 1 && v261.i64[1] == 1 && v264 == 1;
  if (v47 >= 2 && v51 <= 4 && (v258 != 268435472 || v50 < 0x10 || (v56 & 0x400) == 0) || v49 >= 2 && v251 <= 4 && (v258 != 268435472 || v266 < 0x10 || (v56 & 0x400) == 0) || (v64 = v63 & ((v277 | v60) ^ 1), v48 >= 2) && v42 <= 4 && (v258 != 268435472 || v278 < 0x10 || (v56 & 0x400) == 0))
  {
    v64 = 0;
  }

  DWORD1(v58) = v266;
  DWORD1(v59) = v242;
  v65 = *(v53 + 1476) & 0x420;
  v239 = v42 * v251;
  _CF = v47 >= 3 || v49 * v47 * v48 * v51 * v42 * v251 >= 0xD9;
  v238 = v266 * v50;
  v237 = v238 * v278;
  v70 = !_CF && v238 * v278 > 0x1F && v49 < 3 && v48 < 3;
  v76 = v49 > 1 && v266 < 0x19 && v251 < 4 && v258 == 268435472 && v50 < 0x19 && v51 < 4 && v47 > 1;
  v77 = v70 & v64;
  if (v76)
  {
    v78 = ((*(v53 + 1476) & 0x400) == 0) & v77;
  }

  else
  {
    v78 = v77;
  }

  v240 = *(v53 + 1476);
  LOWORD(v79) = v240;
  v250 = v251;
  v252 = v42;
  v243 = v240 & 0x420;
  v241 = v60;
  v256 = v78;
  if ((*(a1 + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    v235 = v59;
    v236 = v58;
    BaseTensor::GetAccessPattern();
    v230 = v80;
    v284[0] = v80;
    BaseTensor::GetAccessPattern();
    v231 = v81;
    v282 = v81;
    BaseTensor::GetAccessPattern();
    v233 = v82;
    v280 = v82;
    v83 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
    v83[v230] = 0;
    v83[BYTE1(v230)] = 1;
    v83[BYTE2(v230)] = 2;
    v83[BYTE3(v230)] = 3;
    v83[BYTE4(v230)] = 4;
    v83[BYTE5(v230)] = 5;
    v83[BYTE6(v230)] = 6;
    v83[BYTE7(v230)] = 7;
    v83[BYTE8(v230)] = 8;
    v83[BYTE9(v230)] = 9;
    v83[BYTE10(v230)] = 10;
    v83[BYTE11(v230)] = 11;
    v83[BYTE12(v230)] = 12;
    v83[BYTE13(v230)] = 13;
    v83[BYTE14(v230)] = 14;
    v83[HIBYTE(v230)] = 15;
    v84 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
    v84[v231] = 0;
    v84[BYTE1(v231)] = 1;
    v84[BYTE2(v231)] = 2;
    v84[HIBYTE(v231)] = 3;
    v84[BYTE4(v282)] = 4;
    v84[BYTE5(v282)] = 5;
    v84[BYTE6(v282)] = 6;
    v84[BYTE7(v282)] = 7;
    v84[BYTE8(v282)] = 8;
    v84[BYTE9(v282)] = 9;
    v84[BYTE10(v282)] = 10;
    v84[BYTE11(v282)] = 11;
    v84[BYTE12(v282)] = 12;
    v84[BYTE13(v282)] = 13;
    v84[BYTE14(v282)] = 14;
    v84[HIBYTE(v282)] = 15;
    v85 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
    v85[v233] = 0;
    v85[BYTE1(v280)] = 1;
    v85[BYTE2(v280)] = 2;
    v85[BYTE3(v280)] = 3;
    v85[BYTE4(v280)] = 4;
    v85[BYTE5(v280)] = 5;
    v85[BYTE6(v280)] = 6;
    v85[BYTE7(v280)] = 7;
    v85[BYTE8(v280)] = 8;
    v85[BYTE9(v280)] = 9;
    v85[BYTE10(v280)] = 10;
    v85[BYTE11(v280)] = 11;
    v85[BYTE12(v280)] = 12;
    v85[BYTE13(v280)] = 13;
    v85[BYTE14(v280)] = 14;
    v85[HIBYTE(v280)] = 15;
    v234 = BaseTensor::GetDimensionSize(v254);
    v232 = BaseTensor::GetDimensionSize(v254);
    LODWORD(v230) = BaseTensor::GetDimensionSize(v254);
    v229 = BaseTensor::GetDimensionSize(v254);
    v228 = BaseTensor::GetDimensionSize(v254);
    v227 = BaseTensor::GetDimensionSize(v260);
    v226 = BaseTensor::GetDimensionSize(v260);
    v225 = BaseTensor::GetDimensionSize(v260);
    v224 = BaseTensor::GetDimensionSize(v260);
    v86 = BaseTensor::GetDimensionSize(v270);
    v87 = BaseTensor::GetDimensionSize(v270);
    v88 = BaseTensor::GetDimensionSize(v270);
    v89 = BaseTensor::GetDimensionSize(v270);
    v90 = BaseTensor::GetDimensionSize(v270);
    v91 = dataTypeToString(v254[2]);
    v92 = dataTypeToString(v260[2]);
    v93 = dataTypeToString(*(v270 + 2));
    v222 = v91;
    v223 = v92;
    v47 = v275;
    v220 = v89;
    v221 = v90;
    v48 = v267;
    v218 = v87;
    v219 = v88;
    v40 = v258;
    v41 = v250;
    LODWORD(v42) = v252;
    v65 = v240 & 0x420;
    v217 = v86;
    v46 = v266;
    MPSKernel_LogInfo(a1, v94, "-test MPSNDArrayDepthwiseConv3DTest -srcShapes [%u,%u,%u,%u,%u] [%u,%u,%u,%u] -dstShapes [%u,%u,%u,%u,%u] -srcDataTypes %s %s -dstDataTypes %s -cAxis %u -strides [1,%lu,%lu,%lu] -dilationRates [1,%lu,%lu,%lu] ", v234, v232, v230, v229, v228, v227, v226, v225, v224, v217, v218, v219, v220, v221, v222, v223, v93, v272, v267, v268, v275, v264, v261.i64[1], v261.i64[0]);
    printDWTranspose(a1, v284, 0, 1);
    printDWTranspose(a1, &v282, 1, 1);
    printDWTranspose(a1, &v280, 0, 0);
    MPSKernel_LogInfo(a1, v95, "-runMode forward ");
    MPSKernel_LogInfo(a1, v96, ",\n");
    *&v59 = v235;
    *&v58 = v236;
    v53 = v259;
    v52 = v253;
    LODWORD(v51) = v263;
    v50 = v269;
    v49 = v268;
    v79 = *(v259 + 1476);
  }

  DWORD2(v58) = v278;
  v97 = v42 >= 0x11 || v48 >= 0x11;
  DWORD2(v59) = v246;
  v100 = !v97 && v41 < 0x11 && v49 < 0x11;
  if (v47 >= 0x11 || v51 >= 0x11)
  {
    v102 = 0;
  }

  else
  {
    v102 = v100;
  }

  if (v60)
  {
    v103 = v65 == 1056;
  }

  else
  {
    v103 = v102;
  }

  v104 = v37;
  if (v60)
  {
    v104 = v278 == 1;
  }

  if ((v79 & 0x400) != 0 || *(v53 + 1472) >= 26)
  {
    v105 = *(v53 + 1482);
  }

  else
  {
    v105 = 8;
  }

  HIDWORD(v58) = v274;
  HIDWORD(v59) = v245;
  if (v50 > v105 || v47 * v105 < v52)
  {
    v109 = 0;
    v107 = v249;
  }

  else
  {
    do
    {
      v106 = v105;
      if (v105 < 2 * v50)
      {
        break;
      }

      v105 >>= 1;
    }

    while (v106 > 1);
    v107 = v249;
    v109 = v249 < 1 && (v249 + v106 * v47) >= v52;
  }

  if (v103)
  {
    v110 = 0x1000000;
  }

  else
  {
    v110 = 0;
  }

  v111 = v110 | ((v244 > 1) << 26) | (v272 << 28) | ((v40 == 268435472) << 30);
  if (v104)
  {
    v112 = 0x80000000;
  }

  else
  {
    v112 = 0;
  }

  v271 = v109;
  *&v57 = __PAIR64__(v247, v107);
  DWORD2(v57) = v248;
  v284[0] = v59;
  v284[1] = v58;
  *&v58 = __PAIR64__(v41, v51);
  DWORD2(v58) = v42;
  v292 = v111 | v112 | (v109 << 25) | ((v49 << 16) + 983040) & 0xF0000 | ((v47 << 12) - 4096) & 0xF000 | ((v48 << 20) + 15728640) & 0xF00000 | (v51 - 1) & 0xF | (16 * v41 - 16) & 0xF0 | ((v42 << 8) + 3840) & 0xF00;
  v284[2] = v57;
  v284[3] = v58;
  *&v57 = __PAIR64__(v49, v47);
  DWORD2(v57) = v48;
  *&v113 = vmovn_s64(v261);
  *(&v113 + 1) = __PAIR64__(v261.u32[3], v264);
  v284[4] = v57;
  v284[5] = v113;
  v286 = 0;
  v285 = 0;
  v287 = 0;
  v288 = v244;
  v289 = 0;
  v290 = 0uLL;
  v214 = *(a1 + *MEMORY[0x277CD7360]);
  v216 = *(a1 + *MEMORY[0x277CD7368]);
  v212 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  v115 = PipelineStateForMPSKey;
  [v257 setComputePipelineState:{PipelineStateForMPSKey, v212, v214, v216, 0, 0}];
  MPSLibrary::ReleaseMPSKey();
  v116 = [v115 threadExecutionWidth];
  if (v116 <= 1)
  {
    v117 = 1;
  }

  else
  {
    v117 = v116;
  }

  if (v117 <= v269 && (v269 > 3 || v117 <= v46))
  {
    v118 = v117 >> 1;
    v119 = v117;
  }

  else
  {
    v118 = v117 >> 1;
    if (v116 <= 1)
    {
      v119 = 1;
    }

    else
    {
      v119 = v117 >> 1;
    }
  }

  v265 = v116;
  if (v116 <= 1)
  {
    v118 = 1;
  }

  v276 = v47;
  if (v269 > 0x3F || v47 == 1)
  {
    v121 = v118;
  }

  else
  {
    v121 = v119;
  }

  v122 = [v115 maxTotalThreadsPerThreadgroup];
  if (v122 >= 0x100)
  {
    v123 = 256;
  }

  else
  {
    v123 = v122;
  }

  v273 = v115;
  if (v123 <= 2 * v121)
  {
    v124 = 1;
  }

  else
  {
    v124 = v123 / v121;
  }

  v125 = v268;
  v126 = v256;
  v127 = v46;
  v128 = v269;
  if (v121 <= v269 || (v129 = 1, v130 = v124, v131 = v121, v121 > v127) && v121 > v278)
  {
    v133 = v121 > v269 && v124 > v278;
    if (v124 <= v127 || v133)
    {
      v134 = (v276 != 1) & v256;
      if (v269 > 0x3F)
      {
        v134 = 1;
      }

      if (v134)
      {
        v129 = v121;
      }

      else
      {
        v129 = 8;
      }

      v135 = 8;
      if ((v256 & (v268 != 1)) != 0)
      {
        v135 = v124;
      }

      v130 = 1;
      if (v266 <= 0x3F)
      {
        v131 = v135;
      }

      else
      {
        v131 = v124;
      }
    }

    else
    {
      v131 = 1;
      v130 = v124;
      v129 = v121;
    }
  }

  if (!(v277 & 1 | v256 & (v278 < 4)))
  {
    if (v252 >= 2 && v263 >= 2 && v250 >= 2 && v122 >= 0x100)
    {
      if ([v273 threadExecutionWidth] == 64)
      {
        v136 = v278 > 0xF && v266 > 0xF;
        v128 = v269;
        v137 = v136 && v269 > 0xF;
        v130 = 4;
        if (v137)
        {
          v131 = 8;
        }

        else
        {
          v131 = 4;
        }

        v129 = v131;
        v125 = v268;
      }

      else
      {
        v131 = 4;
        if (v278 <= 0xF)
        {
          v130 = 4;
        }

        else
        {
          v130 = 16;
        }

        v129 = 4;
        v125 = v268;
        v128 = v269;
      }

      v126 = v256;
    }

    v138 = v127 * v269 < v123 && v274 * v278 > 3;
    v139 = 4;
    if (!v138)
    {
      v139 = v130;
    }

    if (v131 > v127)
    {
      v140 = v127;
    }

    else
    {
      v139 = v130;
      v140 = v131;
    }

    if (v131 > v127)
    {
      v141 = v269;
    }

    else
    {
      v141 = v129;
    }

    if (v129 > v269)
    {
      v130 = v139;
      v131 = v140;
      v129 = v141;
    }
  }

  if (v126)
  {
    v142 = 2 * v117;
    if (v239 == 1)
    {
      v130 = 1;
      v143 = 1;
    }

    else
    {
      v143 = v131;
    }

    if (v239 == 1)
    {
      v144 = 2 * v117;
    }

    else
    {
      v144 = v129;
    }

    v146 = v276 > 1 && v144 > 0x1F;
    v147 = v144 >> v146;
    v149 = v125 > 1 && v143 > 0x1F;
    v150 = v143 >> v149;
    if (v150 >= v127 && v150 >= 2)
    {
      while (v150 * v147 >= v142)
      {
        v131 = v150 >> 1;
        if (v150 >= 4)
        {
          v150 >>= 1;
          if (v131 >= v127)
          {
            continue;
          }
        }

        goto LABEL_379;
      }
    }

    v131 = v150;
LABEL_379:
    if (v147 >= v269 && v147 >= 2)
    {
      while (v147 * v131 >= v142)
      {
        v129 = v147 >> 1;
        if (v147 >= 4)
        {
          v147 >>= 1;
          if (v129 >= v269)
          {
            continue;
          }
        }

        goto LABEL_386;
      }
    }

    v129 = v147;
LABEL_386:
    if (v128 > 0x10)
    {
      v169 = v263;
      v171 = v130 > 1;
      if (v130 < 2)
      {
LABEL_401:
        if (*(v259 + 1472) >= 7)
        {
          v173 = 32000;
        }

        else
        {
          v173 = 16000;
        }

        v174 = 1;
        if (v258 != 268435472)
        {
          v174 = 2;
        }

        if (((((((v250 - 1 + 2 * v125 * v131) * (v169 - 1 + 2 * v276 * v129)) * (v252 - 1 + v130 * v267)) << v174) + 15) & 0xFFFFFFFFFFFFFFF0) > v173)
        {
          if (v130 * v129 * v131 < v142)
          {
            v171 = 0;
          }

          v130 >>= v171;
          v176 = v131 > 1 && v130 * v129 * v131 >= v142;
          v131 >>= v176;
          if (v129 >= 2)
          {
            v129 >>= v130 * v129 * v131 >= v142;
          }
        }

        v177 = (v269 + 2 * v129 - 1) / (2 * v129);
        v178 = (v278 + v130 - 1) / v130 * v274;
        v179.f32[0] = (v169 - 1 + 2 * v129 * v276);
        LODWORD(v289) = v179.i32[0];
        *(&v289 + 1) = (v250 - 1 + 2 * v131 * v125);
        *&v290 = (v252 - 1 + v130 * v267);
        v179.f32[1] = *(&v289 + 1) * v179.f32[0];
        __asm { FMOV            V3.2S, #1.0 }

        *(&v290 + 4) = vdiv_f32(_D3, v179);
        HIDWORD(v290) = (v278 + v130 - 1) / v130;
        v183 = ((*(&v289 + 1) * v179.f32[0]) * *&v290) << v174;
        v184 = (v127 + 2 * v131 - 1) / (2 * v131);
        goto LABEL_543;
      }
    }

    else
    {
      v169 = v263;
      if (v266 <= 0x10)
      {
        v129 = (v269 + 1) >> 1;
        v131 = (v127 + 1) >> 1;
        do
        {
          v170 = v130;
          if (v130 < 2)
          {
            break;
          }

          v130 >>= 1;
        }

        while (v131 * v129 * v170 > v123);
        v130 = v170;
      }

      v171 = v130 > 1;
      if (v130 < 2)
      {
        goto LABEL_401;
      }
    }

    if (v278 % v130)
    {
      do
      {
        if (v130 <= v278)
        {
          v130 >>= 1;
        }

        else
        {
          v130 = v278;
        }

        v171 = v130 > 1;
        if (v278 % v130)
        {
          v172 = v130 > 1;
        }

        else
        {
          v172 = 0;
        }
      }

      while (v172);
    }

    goto LABEL_401;
  }

  v151 = v274 * v278;
  v152 = v151 - 1;
  v153 = v127 - 1;
  v154 = v269 - 1;
  if (!v241)
  {
    v178 = (v130 + v152) / v130;
    v184 = (v131 + v153) / v131;
    v177 = (v129 + v154) / v129;
    if (v277)
    {
      goto LABEL_544;
    }

    goto LABEL_546;
  }

  if (v128 > 0x20)
  {
    v158 = v276;
    v159 = v259;
    v160 = v266;
    v161 = v238;
    v156 = v117;
    if (v128 > 0x3F || v265 < 0x20)
    {
      if (v128 > 0x5F)
      {
        v129 = v117;
        goto LABEL_367;
      }
    }

    else
    {
      v162 = v276 == 2;
      v185 = v243 == 1056 || v276 == 2;
      if (v185 && (v240 & 0x400) != 0 && !v271)
      {
        v124 = v117 >> 3;
        if (v276 == 2)
        {
          v163 = 16;
        }

        else
        {
          v163 = 32;
        }

        v164 = *(v259 + 1480);
        v165 = v164 * v117;
        v166 = v237 * v274;
        v129 = 8;
        goto LABEL_432;
      }
    }

    v129 = v117;
    v186 = v128 % 0x1Eu;
    if (v186 && v186 <= 0x17 && !v271)
    {
      if (((v117 >> 3) & 0xFFFFFFFFFFFFFFELL) != 0)
      {
        v124 = (v117 >> 3) & 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v124 = 1;
      }

      v129 = 16;
    }
  }

  else
  {
    LODWORD(v155) = 2 * v128;
    if (2 * v128 <= 2)
    {
      v155 = 2;
    }

    else
    {
      v155 = v155;
    }

    v156 = v117;
    v157 = v117;
    v158 = v276;
    v159 = v259;
    v160 = v266;
    v161 = v238;
    do
    {
      v129 = v157;
      v157 >>= 1;
    }

    while (v129 >= v155);
    if (2 * v117 / v129 <= 1)
    {
      v124 = 1;
    }

    else
    {
      v124 = 2 * v117 / v129;
    }
  }

LABEL_367:
  v162 = v158 == 2;
  if (v158 == 2)
  {
    v163 = 16;
  }

  else
  {
    v163 = 32;
  }

  v164 = *(v159 + 1480);
  v165 = v164 * v156;
  v166 = v237 * v274;
  if ((v240 & 0x400) != 0)
  {
LABEL_432:
    if (v166 >= v165 << 15 && v160 >= 0x41)
    {
      v168 = 4;
      if (*(v159 + 1472) != 11)
      {
        v168 = v163;
      }

      goto LABEL_498;
    }

    v168 = v163;
    goto LABEL_456;
  }

  if (v160 <= 0xF)
  {
    v167 = v160 < 8 && v158 == 2;
    v168 = 1;
    if (!v167)
    {
      v168 = 2;
    }

    goto LABEL_457;
  }

  if (v160 < 0x20)
  {
    v168 = 4;
LABEL_457:
    if ((v240 & 0x400) != 0)
    {
      v187 = v127;
    }

    else
    {
      v187 = v168;
    }

    if (v164 << 11 > v166 || v160 > 0x1F)
    {
      v187 = v168;
    }

    do
    {
      v189 = v187;
      if (v187 < 3)
      {
        break;
      }

      v187 >>= 1;
    }

    while (16 * v165 * v189 >= v166);
    if (v162)
    {
      v190 = 8 * v165;
      do
      {
        v191 = v189;
        if (v189 < 2)
        {
          break;
        }

        v189 >>= 1;
      }

      while (v190 * v191 >= v166);
    }

    else
    {
      v191 = v189;
    }

    v192 = v160 > 0x1F && v191 == 1;
    v168 = 2;
    if (!v192)
    {
      v168 = v191;
    }

    if ((v240 & 0x400) != 0 || v160 >= 0x20)
    {
      v194 = v160 > 0xF || v164 < 9;
      v195 = 16;
      if ((v194 & (v240 >> 10)) == 0)
      {
        v195 = 8;
      }

      do
      {
        v196 = v168;
        v168 >>= 1;
      }

      while (v196 > v195);
      v197 = (v269 + 3) >> 2;
      if (v158 == 1)
      {
        v197 = v269 >> 1;
      }

      if (v243 == 1056)
      {
        v197 = v196;
      }

      if (v166 >> 15)
      {
        v168 = v196;
      }

      else
      {
        v168 = v197;
      }

      if (v128)
      {
        v168 = v196;
      }
    }

    goto LABEL_498;
  }

  if (v160 > 0x7F || (v168 = 6, v265 <= 0x20) && v160 <= 0x30)
  {
    v168 = 8;
    if (v160 >= 0x100)
    {
      v168 = v163;
    }
  }

LABEL_456:
  if (v160 <= 0x40)
  {
    goto LABEL_457;
  }

LABEL_498:
  v131 = v124;
  while (v168 * v131 > v127 || v127 % (v168 * v131) >= v168)
  {
    v198 = v131 > 1;
    if (v131 <= 1)
    {
      v131 = 1;
    }

    else
    {
      v131 >>= 1;
    }

    if (!v198)
    {
      v168 = v127;
    }
  }

  if (4 * v156 >= v123)
  {
    v199 = v123;
  }

  else
  {
    v199 = 4 * v156;
  }

  v200 = v199 / (v131 * v129);
  if (v200 <= 1)
  {
    v130 = 1;
  }

  else
  {
    v130 = v200;
  }

  if (v151 <= 1)
  {
    v151 = 1;
  }

  while (v130 * v131 * v129 > v123)
  {
    if (v130 < 2)
    {
      goto LABEL_519;
    }

LABEL_516:
    v130 >>= 1;
  }

  if (v130 > v151)
  {
    goto LABEL_516;
  }

LABEL_519:
  v201 = v130 * v129;
  v202 = 12;
  if ((v240 & 0x400) != 0)
  {
    v202 = 6;
  }

  v203 = 16 * v164 * v168;
  v204 = v129 * v168 * v202;
  while (2)
  {
    v205 = v201 * v131;
    if (v201 * v131 > v123)
    {
      if (v131 < 2)
      {
        break;
      }

      goto LABEL_523;
    }

    if (v205 > v156 && v203 * v205 > v166 && v131 >= 2 && v204 * v131 > v161)
    {
LABEL_523:
      v131 >>= 1;
      continue;
    }

    break;
  }

  if (v158 == 1 && !v271)
  {
    v209 = -2;
    goto LABEL_541;
  }

  v177 = (v129 + v154) / v129;
  if (v158 == 2 && !v271)
  {
    v209 = -1;
LABEL_541:
    v177 = (v209 + v129 + v154) / (v209 + v129);
  }

  v184 = (v131 * v168 + v153) / (v131 * v168);
  v210 = v130 + v152;
  HIDWORD(v290) = v168;
  v183 = v130 * (4 * v129 + 8) * v131;
  v124 = v131;
  v121 = v129;
  v178 = v210 / v130;
LABEL_543:
  [v257 setThreadgroupMemoryLength:(v183 + 15) & 0xFFFFFFFFFFFFFFF0 atIndex:0];
  if (v277)
  {
    do
    {
LABEL_544:
      v131 = v124;
      v124 >>= 1;
    }

    while (v131 > v269);
    v177 = (v121 + v274 - 1) / v121;
    v178 = v278 * v266;
    v130 = 1;
    v129 = v121;
    v184 = (v269 + v131 - 1) / v131;
  }

LABEL_546:
  [v257 setComputePipelineState:v273];
  MPSSetNDArraysOnComputeEncoder(v257, a4, 4, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(v257);
  *&v282 = v177;
  *(&v282 + 1) = v184;
  v283 = v178;
  *&v280 = v129;
  *(&v280 + 1) = v131;
  v281 = v130;
  [v257 dispatchThreadgroups:&v282 threadsPerThreadgroup:&v280];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeDWConvGradient(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v290[1] = *MEMORY[0x277D85DE8];
  [*(a4 + 224) objectAtIndexedSubscript:0];
  objc_opt_class();
  v10 = 0;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = EncodeDWConvGradientBackPropImpl(a1, a2, a3, v6, v5, 0);
  }

  [*(v6 + 224) objectAtIndexedSubscript:1];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || v10)
  {
    return v10;
  }

  v11 = *(a1 + *MEMORY[0x277CD7350]);
  v235 = *(a1 + 192);
  v233 = *(a1 + 208);
  v234 = *(a1 + 200);
  v226 = *(a1 + 168);
  v228 = *(a1 + 184);
  v232 = *(a1 + 216);
  v230 = *(a1 + 232);
  v231 = *(a1 + 224);
  if (*(a1 + 160) >= 3u)
  {
    v12 = 3;
  }

  else
  {
    v12 = *(a1 + 160);
  }

  v251 = v12;
  v227 = *(a1 + 160);
  v13 = [*(v6 + 232) graph];
  v14 = **(v13 + 56);
  if (*(*(v13 + 56) + 8) == v14)
  {
    goto LABEL_476;
  }

  v16 = *(*v14 + 8);
  v15 = *v16;
  v17 = v16[1] - *v16;
  if (v17 <= 8 || v17 == 16)
  {
LABEL_475:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v18 = v15[1];
  v245 = *v15;
  v253 = v15[2];
  v19 = [*(v6 + 232) graph];
  v20 = **(v19 + 56);
  if (*(*(v19 + 56) + 8) == v20)
  {
LABEL_476:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v224 = v5;
  v219 = v11;
  v22 = *(*v20 + 24);
  v21 = *v22;
  if (*(v22 + 8) == *v22)
  {
    goto LABEL_475;
  }

  v23 = *v21;
  v236 = a1;
  v218 = a2;
  v248 = a3;
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    BaseTensor::GetDimensionSize(v253);
    BaseTensor::GetDimensionSize(v18);
    DimensionSize = BaseTensor::GetDimensionSize(v253);
    if (DimensionSize != BaseTensor::GetDimensionSize(v18) && MTLReportFailureTypeEnabled())
    {
      v190 = BaseTensor::GetDimensionSize(v245);
      v193 = BaseTensor::GetDimensionSize(v253);
      v187 = a1;
      MTLReportFailure();
    }

    v25 = BaseTensor::GetDimensionSize(v23);
    if (v25 == BaseTensor::GetDimensionSize(v18))
    {
      v26 = BaseTensor::GetDimensionSize(v23);
      if (v26 == BaseTensor::GetDimensionSize(v18))
      {
        v27 = BaseTensor::GetDimensionSize(v23);
        if (v27 == BaseTensor::GetDimensionSize(v18))
        {
          BaseTensor::GetDimensionSize(v23);
          BaseTensor::GetDimensionSize(v18);
        }
      }
    }

    v28 = BaseTensor::GetDimensionSize(v23);
    if (v28 != BaseTensor::GetDimensionSize(v18) || (v29 = BaseTensor::GetDimensionSize(v23), v29 != BaseTensor::GetDimensionSize(v18)) || (v30 = BaseTensor::GetDimensionSize(v23), v30 != BaseTensor::GetDimensionSize(v18)) || (v31 = BaseTensor::GetDimensionSize(v23), v31 != BaseTensor::GetDimensionSize(v18)))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v250 = BaseTensor::GetDimensionSize(v18);
        v247 = BaseTensor::GetDimensionSize(v18);
        v182 = BaseTensor::GetDimensionSize(v18);
        v183 = BaseTensor::GetDimensionSize(v18);
        v184 = BaseTensor::GetDimensionSize(v23);
        v185 = v6;
        v186 = BaseTensor::GetDimensionSize(v23);
        v200 = BaseTensor::GetDimensionSize(v23);
        v201 = BaseTensor::GetDimensionSize(v23);
        v198 = v184;
        v199 = v186;
        v6 = v185;
        v196 = v182;
        v197 = v183;
        v190 = v250;
        v193 = v247;
        v187 = v236;
        MTLReportFailure();
      }
    }
  }

  v32 = *(v245 + 2);
  if (v32 > 285212703)
  {
    if (v32 <= 536870915)
    {
      if (v32 > 301989895)
      {
        if (v32 == 301989896)
        {
          v33 = 512;
          v34 = *(v18 + 2);
          if (v34 > 285212703)
          {
            goto LABEL_67;
          }

          goto LABEL_86;
        }

        if (v32 == 335544328)
        {
          v33 = 544;
          v34 = *(v18 + 2);
          if (v34 <= 285212703)
          {
            goto LABEL_86;
          }

          goto LABEL_67;
        }
      }

      else
      {
        if (v32 == 285212704)
        {
          v33 = 416;
          v34 = *(v18 + 2);
          if (v34 > 285212703)
          {
            goto LABEL_67;
          }

          goto LABEL_86;
        }

        if (v32 == 285212736)
        {
          v33 = 448;
          v34 = *(v18 + 2);
          if (v34 <= 285212703)
          {
            goto LABEL_86;
          }

          goto LABEL_67;
        }
      }
    }

    else if (v32 <= 536870927)
    {
      if (v32 == 536870916)
      {
        v33 = 0;
        v34 = *(v18 + 2);
        if (v34 > 285212703)
        {
          goto LABEL_67;
        }

        goto LABEL_86;
      }

      if (v32 == 536870920)
      {
        v33 = 32;
        v34 = *(v18 + 2);
        if (v34 <= 285212703)
        {
          goto LABEL_86;
        }

        goto LABEL_67;
      }
    }

    else
    {
      switch(v32)
      {
        case 536870928:
          v33 = 64;
          v34 = *(v18 + 2);
          if (v34 <= 285212703)
          {
            goto LABEL_86;
          }

          goto LABEL_67;
        case 536870944:
          v33 = 96;
          v34 = *(v18 + 2);
          if (v34 <= 285212703)
          {
            goto LABEL_86;
          }

          goto LABEL_67;
        case 536870976:
          v33 = 128;
          v34 = *(v18 + 2);
          if (v34 <= 285212703)
          {
            goto LABEL_86;
          }

          goto LABEL_67;
      }
    }

    goto LABEL_124;
  }

  if (v32 <= 31)
  {
    if (v32 > 7)
    {
      if (v32 == 8)
      {
        v33 = 192;
        v34 = *(v18 + 2);
        if (v34 <= 285212703)
        {
          goto LABEL_86;
        }

        goto LABEL_67;
      }

      if (v32 == 16)
      {
        v33 = 224;
        v34 = *(v18 + 2);
        if (v34 <= 285212703)
        {
          goto LABEL_86;
        }

        goto LABEL_67;
      }
    }

    else
    {
      if (v32 == -1879048176)
      {
        v33 = 384;
        v34 = *(v18 + 2);
        if (v34 <= 285212703)
        {
          goto LABEL_86;
        }

        goto LABEL_67;
      }

      if (v32 == 4)
      {
        v33 = 160;
        v34 = *(v18 + 2);
        if (v34 <= 285212703)
        {
          goto LABEL_86;
        }

        goto LABEL_67;
      }
    }

    goto LABEL_124;
  }

  if (v32 <= 268435463)
  {
    if (v32 == 32)
    {
      v33 = 256;
      v34 = *(v18 + 2);
      if (v34 <= 285212703)
      {
        goto LABEL_86;
      }

      goto LABEL_67;
    }

    if (v32 == 64)
    {
      v33 = 288;
      v34 = *(v18 + 2);
      if (v34 <= 285212703)
      {
        goto LABEL_86;
      }

      goto LABEL_67;
    }

LABEL_124:
    v33 = 576;
    v34 = *(v18 + 2);
    if (v34 <= 285212703)
    {
      goto LABEL_86;
    }

LABEL_67:
    if (v34 <= 536870915)
    {
      if (v34 > 301989895)
      {
        if (v34 == 301989896)
        {
          v35 = 0x4000;
          goto LABEL_127;
        }

        if (v34 == 335544328)
        {
          v35 = 17408;
          goto LABEL_127;
        }
      }

      else
      {
        if (v34 == 285212704)
        {
          v35 = 13312;
          goto LABEL_127;
        }

        if (v34 == 285212736)
        {
          v35 = 14336;
          goto LABEL_127;
        }
      }
    }

    else if (v34 <= 536870927)
    {
      if (v34 == 536870916)
      {
        v35 = 0;
        goto LABEL_127;
      }

      if (v34 == 536870920)
      {
        v35 = 1024;
        goto LABEL_127;
      }
    }

    else
    {
      switch(v34)
      {
        case 536870928:
          v35 = 2048;
          goto LABEL_127;
        case 536870944:
          v35 = 3072;
          goto LABEL_127;
        case 536870976:
          v35 = 4096;
          goto LABEL_127;
      }
    }

    goto LABEL_126;
  }

  if (v32 == 268435464)
  {
    v33 = 480;
    v34 = *(v18 + 2);
    if (v34 <= 285212703)
    {
      goto LABEL_86;
    }

    goto LABEL_67;
  }

  if (v32 == 268435472)
  {
    v33 = 320;
    v34 = *(v18 + 2);
    if (v34 <= 285212703)
    {
      goto LABEL_86;
    }

    goto LABEL_67;
  }

  if (v32 != 268435488)
  {
    goto LABEL_124;
  }

  v33 = 352;
  v34 = *(v18 + 2);
  if (v34 > 285212703)
  {
    goto LABEL_67;
  }

LABEL_86:
  if (v34 <= 31)
  {
    if (v34 > 7)
    {
      if (v34 == 8)
      {
        v35 = 6144;
        goto LABEL_127;
      }

      if (v34 == 16)
      {
        v35 = 7168;
        goto LABEL_127;
      }
    }

    else
    {
      if (v34 == -1879048176)
      {
        v35 = 12288;
        goto LABEL_127;
      }

      if (v34 == 4)
      {
        v35 = 5120;
        goto LABEL_127;
      }
    }
  }

  else if (v34 <= 268435463)
  {
    if (v34 == 32)
    {
      v35 = 0x2000;
      goto LABEL_127;
    }

    if (v34 == 64)
    {
      v35 = 9216;
      goto LABEL_127;
    }
  }

  else
  {
    switch(v34)
    {
      case 268435464:
        v35 = 15360;
        goto LABEL_127;
      case 268435472:
        v35 = 10240;
        goto LABEL_127;
      case 268435488:
        v35 = 11264;
        goto LABEL_127;
    }
  }

LABEL_126:
  v35 = 18432;
LABEL_127:
  v36 = v35 | v33;
  v37 = *(v253 + 2);
  if (v37 > 285212703)
  {
    if (v37 <= 536870915)
    {
      if (v37 > 301989895)
      {
        if (v37 == 301989896)
        {
          v36 |= 0x80000uLL;
          v38 = *(v23 + 2);
          if (v38 > 285212703)
          {
            goto LABEL_171;
          }

          goto LABEL_190;
        }

        if (v37 == 335544328)
        {
          v36 |= 0x88000uLL;
          v38 = *(v23 + 2);
          if (v38 <= 285212703)
          {
            goto LABEL_190;
          }

          goto LABEL_171;
        }
      }

      else
      {
        if (v37 == 285212704)
        {
          v36 |= 0x68000uLL;
          v38 = *(v23 + 2);
          if (v38 > 285212703)
          {
            goto LABEL_171;
          }

          goto LABEL_190;
        }

        if (v37 == 285212736)
        {
          v36 |= 0x70000uLL;
          v38 = *(v23 + 2);
          if (v38 <= 285212703)
          {
            goto LABEL_190;
          }

          goto LABEL_171;
        }
      }
    }

    else if (v37 <= 536870927)
    {
      if (v37 == 536870916)
      {
        v38 = *(v23 + 2);
        if (v38 > 285212703)
        {
          goto LABEL_171;
        }

        goto LABEL_190;
      }

      if (v37 == 536870920)
      {
        v36 |= 0x8000uLL;
        v38 = *(v23 + 2);
        if (v38 <= 285212703)
        {
          goto LABEL_190;
        }

        goto LABEL_171;
      }
    }

    else
    {
      switch(v37)
      {
        case 536870928:
          v36 |= 0x10000uLL;
          v38 = *(v23 + 2);
          if (v38 <= 285212703)
          {
            goto LABEL_190;
          }

          goto LABEL_171;
        case 536870944:
          v36 |= 0x18000uLL;
          v38 = *(v23 + 2);
          if (v38 <= 285212703)
          {
            goto LABEL_190;
          }

          goto LABEL_171;
        case 536870976:
          v36 |= 0x20000uLL;
          v38 = *(v23 + 2);
          if (v38 <= 285212703)
          {
            goto LABEL_190;
          }

          goto LABEL_171;
      }
    }

    goto LABEL_228;
  }

  if (v37 <= 31)
  {
    if (v37 > 7)
    {
      if (v37 == 8)
      {
        v36 |= 0x30000uLL;
        v38 = *(v23 + 2);
        if (v38 <= 285212703)
        {
          goto LABEL_190;
        }

        goto LABEL_171;
      }

      if (v37 == 16)
      {
        v36 |= 0x38000uLL;
        v38 = *(v23 + 2);
        if (v38 <= 285212703)
        {
          goto LABEL_190;
        }

        goto LABEL_171;
      }
    }

    else
    {
      if (v37 == -1879048176)
      {
        v36 |= 0x60000uLL;
        v38 = *(v23 + 2);
        if (v38 <= 285212703)
        {
          goto LABEL_190;
        }

        goto LABEL_171;
      }

      if (v37 == 4)
      {
        v36 |= 0x28000uLL;
        v38 = *(v23 + 2);
        if (v38 <= 285212703)
        {
          goto LABEL_190;
        }

        goto LABEL_171;
      }
    }

    goto LABEL_228;
  }

  if (v37 <= 268435463)
  {
    if (v37 == 32)
    {
      v36 |= 0x40000uLL;
      v38 = *(v23 + 2);
      if (v38 <= 285212703)
      {
        goto LABEL_190;
      }

      goto LABEL_171;
    }

    if (v37 == 64)
    {
      v36 |= 0x48000uLL;
      v38 = *(v23 + 2);
      if (v38 <= 285212703)
      {
        goto LABEL_190;
      }

      goto LABEL_171;
    }

LABEL_228:
    v36 |= 0x90000uLL;
    v38 = *(v23 + 2);
    if (v38 <= 285212703)
    {
      goto LABEL_190;
    }

LABEL_171:
    if (v38 <= 536870915)
    {
      if (v38 > 301989895)
      {
        if (v38 == 301989896)
        {
          v39 = 16;
          goto LABEL_231;
        }

        if (v38 == 335544328)
        {
          v39 = 17;
          goto LABEL_231;
        }
      }

      else
      {
        if (v38 == 285212704)
        {
          v39 = 13;
          goto LABEL_231;
        }

        if (v38 == 285212736)
        {
          v39 = 14;
          goto LABEL_231;
        }
      }
    }

    else if (v38 <= 536870927)
    {
      if (v38 == 536870916)
      {
        v39 = 0;
        goto LABEL_231;
      }

      if (v38 == 536870920)
      {
        v39 = 1;
        goto LABEL_231;
      }
    }

    else
    {
      switch(v38)
      {
        case 536870928:
          v39 = 2;
          goto LABEL_231;
        case 536870944:
          v39 = 3;
          goto LABEL_231;
        case 536870976:
          v39 = 4;
          goto LABEL_231;
      }
    }

    goto LABEL_230;
  }

  if (v37 == 268435464)
  {
    v36 |= 0x78000uLL;
    v38 = *(v23 + 2);
    if (v38 <= 285212703)
    {
      goto LABEL_190;
    }

    goto LABEL_171;
  }

  if (v37 == 268435472)
  {
    v36 |= 0x50000uLL;
    v38 = *(v23 + 2);
    if (v38 <= 285212703)
    {
      goto LABEL_190;
    }

    goto LABEL_171;
  }

  if (v37 != 268435488)
  {
    goto LABEL_228;
  }

  v36 |= 0x58000uLL;
  v38 = *(v23 + 2);
  if (v38 > 285212703)
  {
    goto LABEL_171;
  }

LABEL_190:
  if (v38 <= 31)
  {
    if (v38 > 7)
    {
      if (v38 == 8)
      {
        v39 = 6;
        goto LABEL_231;
      }

      if (v38 == 16)
      {
        v39 = 7;
        goto LABEL_231;
      }
    }

    else
    {
      if (v38 == -1879048176)
      {
        v39 = 12;
        goto LABEL_231;
      }

      if (v38 == 4)
      {
        v39 = 5;
        goto LABEL_231;
      }
    }
  }

  else if (v38 <= 268435463)
  {
    if (v38 == 32)
    {
      v39 = 8;
      goto LABEL_231;
    }

    if (v38 == 64)
    {
      v39 = 9;
      goto LABEL_231;
    }
  }

  else
  {
    switch(v38)
    {
      case 268435464:
        v39 = 15;
        goto LABEL_231;
      case 268435472:
        v39 = 10;
        goto LABEL_231;
      case 268435488:
        v39 = 11;
        goto LABEL_231;
    }
  }

LABEL_230:
  v39 = 18;
LABEL_231:
  *&v40 = -1;
  *(&v40 + 1) = -1;
  v288 = v40;
  v289 = v40;
  v285 = -1;
  v287 = v40;
  v284 = v40;
  v286 = v36 | v39;
  *&v289 = [*(v6 + 16) count] | 0x10100;
  v222 = BaseTensor::GetDimensionSize(v18);
  v242 = BaseTensor::GetDimensionSize(v18);
  v237 = BaseTensor::GetDimensionSize(v18);
  v220 = BaseTensor::GetDimensionSize(v245);
  v41 = BaseTensor::GetDimensionSize(v245);
  v42 = BaseTensor::GetDimensionSize(v245);
  v43 = BaseTensor::GetDimensionSize(v245);
  v240 = BaseTensor::GetDimensionSize(v253);
  v44 = BaseTensor::GetDimensionSize(v253);
  v45 = BaseTensor::GetDimensionSize(v253);
  v246 = BaseTensor::GetDimensionSize(v253);
  v244 = v18;
  v46 = BaseTensor::GetDimensionSize(v18);
  v47 = [*(v6 + 232) graph];
  v48 = **(v47 + 56);
  if (*(*(v47 + 56) + 8) == v48)
  {
    goto LABEL_476;
  }

  v49 = *v48;
  v249 = v6;
  [*(v6 + 16) arrayByAddingObject:*(v6 + 112)];
  if (*(*(v49 + 8) + 8) - **(v49 + 8) <= 0x10uLL)
  {
    goto LABEL_475;
  }

  *v252 = v222;
  v50.i64[0] = __PAIR64__(v41, v220);
  v50.i64[1] = __PAIR64__(v43, v42);
  v223 = v50;
  v51 = v242;
  v50.i64[0] = __PAIR64__(v44, v240);
  v52 = v45;
  v50.i64[1] = __PAIR64__(v246, v45);
  v243 = v237;
  v238 = v50;
  v53 = v246 / v43;
  BaseTensor::GetAccessPattern();
  if (!v55 && v227 > 2)
  {
    v56 = 0;
    v57 = v236;
    v58 = v226;
    if (v43 >= 4)
    {
      v59 = v228;
      v60 = v238;
      v61 = v223;
      if (v53 > 1)
      {
        goto LABEL_247;
      }

LABEL_243:
      if (v46 != 1)
      {
        v56 = 1;
      }

      goto LABEL_247;
    }

    v59 = v228;
    goto LABEL_246;
  }

  v57 = v236;
  v56 = 0;
  if (v227)
  {
    v59 = v228;
    v58 = v226;
LABEL_246:
    v60 = v238;
    v61 = v223;
    goto LABEL_247;
  }

  v60 = v238;
  v61 = v223;
  if (v43 < 4)
  {
    v59 = v228;
    goto LABEL_470;
  }

  v59 = v228;
  if (v54)
  {
LABEL_470:
    v58 = v226;
    goto LABEL_247;
  }

  v58 = v226;
  if (v53 <= 1)
  {
    goto LABEL_243;
  }

LABEL_247:
  if (v235 > 0x10 || v252[0] > 0x10 || v234 > 0x10 || v51 > 0x10 || v233 > 0x10 || v243 > 0x10)
  {
    v67 = 0;
  }

  else
  {
    v67 = 0x1000000;
  }

  if (v224)
  {
    v68 = 0x8000000;
  }

  else
  {
    v68 = 0;
  }

  v229 = ((v51 * *v252 * v243) < 0x7E) & v56;
  v285 = (v68 | (v251 << 28) | ((v243 << 8) + 3840) & 0xF00 | ((v234 << 16) + 983040) & 0xF0000 | ((v235 << 12) - 4096) & 0xF000 | ((v233 << 20) + 15728640) & 0xF00000 | (LOBYTE(v252[0]) - 1) & 0xF | (16 * v51 - 16) & 0xF0) + v67 + ((v53 > 1) << 26) + ((v46 == 1) << 25);
  v272 = v61;
  v273 = v60;
  *v58.i8 = vmovn_s64(v58);
  v58.i32[2] = v59;
  v60.i64[0] = __PAIR64__(v51, v252[0]);
  v60.i32[2] = v243;
  v274 = v58;
  v275 = v60;
  v58.i64[0] = __PAIR64__(v234, v235);
  v58.i32[2] = v233;
  v60.i64[0] = __PAIR64__(v231, v232);
  v60.i32[2] = v230;
  v276 = v58;
  v277 = v60;
  memset(v279, 0, sizeof(v279));
  v278 = 0;
  v280 = v246 / v43;
  v283 = 0;
  v281 = 0;
  v282 = 0;
  v191 = *(&v57->super.isa + *MEMORY[0x277CD7360]);
  v194 = *(&v57->super.isa + *MEMORY[0x277CD7368]);
  v188 = *(v6 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (PipelineStateForMPSKey)
  {
    MEMORY[0x23EE7C450](v271, v248, 0);
    v217 = v51 * *v252 * v243;
    v70 = [PipelineStateForMPSKey threadExecutionWidth];
    if (v70 <= 1)
    {
      v71 = 1;
    }

    else
    {
      v71 = v70;
    }

    v72 = *(v219 + 1476);
    v73 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
    v221 = PipelineStateForMPSKey;
    v74 = 512;
    if ((v72 & 0x400) == 0)
    {
      v74 = 256;
    }

    if (v73 < v74)
    {
      v74 = v73;
    }

    v75 = 1;
    v261 = vdupq_n_s64(1uLL);
    *v262 = v261;
    *&v262[16] = v261;
    *v263 = xmmword_239B06648;
    *&v263[16] = unk_239B06658;
    v267 = xmmword_239B06648;
    *v268 = unk_239B06658;
    v76 = v44 * v240 * v52 * v246;
    if (v76 <= 0x10000)
    {
      v77 = 32;
    }

    else
    {
      v77 = 8;
    }

    *&v268[16] = 0;
    v269 = v77;
    v270 = 4;
    LODWORD(v78) = v243 * v51;
    v79 = *(&v57->super.isa + *MEMORY[0x277CD7350]);
    if ((v243 * v51 * v252[0]) <= 27)
    {
      v75 = (*(v79 + 1477) & 4) == 0;
    }

    v80 = *(v79 + 1480);
    v81 = v240;
    v82 = 4;
    if (v240 < 4)
    {
      v83 = 1;
    }

    else
    {
      v83 = 4;
    }

    if (v77 <= v240)
    {
      v84 = v77;
    }

    else
    {
      v84 = v83;
    }

    if (v44 < 4)
    {
      v85 = 1;
    }

    else
    {
      v85 = 4;
    }

    if (v77 <= v44)
    {
      v86 = v77;
    }

    else
    {
      v86 = v85;
    }

    v264 = v84;
    v265 = v86;
    if (v52 < 4)
    {
      v82 = 1;
    }

    if (v77 <= v52)
    {
      v82 = v77;
    }

    v266 = v82;
    v87 = 1;
    if (v229)
    {
      v88 = __clz((v246 - 1) ^ v246) ^ 0x3F;
      if (!v246)
      {
        v88 = 64;
      }

      LODWORD(v87) = 1 << v88;
      if ((1 << v88) >= 0x100)
      {
        v87 = 256;
      }

      else
      {
        v87 = v87;
      }

      if (v88 >= 8)
      {
        v89 = 8;
      }

      else
      {
        v89 = v88;
      }

      v90 = v88 >= 3;
      if (v88 < 3)
      {
        v87 = 8;
      }

      *&v263[24] = v87;
      v91 = 3;
      if (v90)
      {
        v91 = v89;
      }

      v92 = v71 >> v91;
      if (v87 > v71)
      {
        v92 = 1;
      }

      v93 = 2 * v87;
      if (((2 * v87 - 1) & (v246 - 1)) > ((v87 - 1) & (v246 - 1)))
      {
        do
        {
          v87 = v93;
          v92 >>= v92 > 1;
          v93 *= 2;
        }

        while (((2 * v87 - 1) & (v246 - 1)) > ((v87 - 1) & (v246 - 1)));
        *&v263[24] = v87;
      }
    }

    else
    {
      v92 = v71;
    }

    *v263 = v92;
    v94 = 3;
    if (v76 <= 0x10000)
    {
      v94 = 5;
    }

    if (v77 <= v240)
    {
      v95 = v94;
    }

    else
    {
      v95 = 2 * (v240 > 3);
    }

    if (v240 <= v92 << v95 >> 1)
    {
      v96 = 1;
      do
      {
        while (v92 < 2)
        {
          v84 >>= 1;
          v264 = v84;
          if (v240 > (v84 * v92) >> 1)
          {
            goto LABEL_329;
          }
        }

        v92 >>= 1;
        *v263 = v92;
        v96 *= 2;
      }

      while (v240 <= (v84 * v92) >> 1);
    }

    else
    {
      v96 = 1;
    }

LABEL_329:
    *&v263[8] = v96;
    if (v77 <= v44)
    {
      v97 = v94;
    }

    else
    {
      v97 = 2 * (v44 > 3);
    }

    if (v44 > v96 << v97 >> 1)
    {
      goto LABEL_341;
    }

    v98 = 1;
    do
    {
      while (v96 > 1)
      {
        v96 >>= 1;
        *&v263[8] = v96;
        v98 *= 2;
        if (v44 > (v86 * v96) >> 1)
        {
          goto LABEL_337;
        }
      }

      v86 >>= 1;
      v265 = v86;
    }

    while (v44 <= (v86 * v96) >> 1);
LABEL_337:
    if (v98 == 1)
    {
      goto LABEL_341;
    }

    v92 *= v98;
    *v263 = v92;
    if (v240 <= (v92 * v84) >> 1)
    {
      v99 = 1;
      if (v240 < 8)
      {
        do
        {
          while (v84 > 2)
          {
            v84 >>= 1;
            v264 = v84;
            if (v240 > (v92 * v84) >> 1)
            {
              goto LABEL_340;
            }
          }

          v92 >>= 1;
          *v263 = v92;
          v99 *= 2;
        }

        while (v240 <= (v92 * v84) >> 1);
      }

      else
      {
        do
        {
          while (v84 < 5)
          {
            v92 >>= 1;
            *v263 = v92;
            v99 *= 2;
            if (v240 > (v92 * v84) >> 1)
            {
              goto LABEL_340;
            }
          }

          v84 >>= 1;
          v264 = v84;
        }

        while (v240 <= (v92 * v84) >> 1);
      }
    }

    else
    {
      v99 = 1;
    }

LABEL_340:
    v100 = v99 * v96;
    *&v263[8] = v100;
    if (v44 > (v100 * v86) >> 1)
    {
LABEL_341:
      v101 = 1;
    }

    else
    {
      v101 = 1;
      do
      {
        while (v86 > 4)
        {
          v86 >>= 1;
          v265 = v86;
          if (v44 > (v100 * v86) >> 1)
          {
            goto LABEL_342;
          }
        }

        v100 >>= 1;
        *&v263[8] = v100;
        v101 *= 2;
      }

      while (v44 <= (v100 * v86) >> 1);
    }

LABEL_342:
    if (v229)
    {
      v102 = 1;
    }

    else
    {
      v102 = 2;
    }

    v103 = 7;
    if ((v229 & 1) == 0)
    {
      v103 = 8;
    }

    v104 = v261.i64[v103] * v101;
    v261.i64[v103] = v104;
    v105 = 12;
    if (v229)
    {
      v105 = 11;
    }

    v255 = v238;
    v106 = v261.u64[v105];
    if (v106 >= 2)
    {
      v107 = *(&v255 & 0xFFFFFFFFFFFFFFF3 | (4 * (v102 & 3)));
      if ((v106 * v104) >> 1 >= v107)
      {
        do
        {
          v108 = v106;
          v106 >>= 1;
        }

        while (v108 >= 4 && (v106 * v104) >> 1 >= v107);
        v261.i64[v105] = v106;
      }
    }

    if (v229)
    {
      v109 = 1;
      *&v263[16] = 1;
    }

    else
    {
      v109 = *&v263[16];
    }

    v110 = *&v263[8];
    v111 = v92 * v87 * v109 * *&v263[8];
    v112 = v111 <= v74 && v111 >= v71;
    v225 = v46;
    v241 = v51;
    if (!v112 || (v111 & (v71 - 1)) != 0)
    {
      if (v229)
      {
        v92 = 1;
      }

      else
      {
        v92 = v71;
      }

      v109 = 1;
      *&v263[8] = vdupq_n_s64(1uLL);
      if (v229)
      {
        v87 = v71;
      }

      else
      {
        v87 = 1;
      }

      *v263 = v92;
      *&v263[24] = v87;
      v110 = 1;
      v111 = v71;
    }

    v113 = (v92 * v84 + v81 - 1) / (v92 * v84);
    v114 = (v44 + v265 * v110 - 1) / (v265 * v110);
    v115 = &v267.u64[1];
    v267.i64[0] = v113;
    v267.i64[1] = v114;
    v116 = (v52 + v266 * v109 - 1) / (v266 * v109);
    v117 = (v246 + v87 - 1) / v87;
    *v268 = v116;
    *&v268[8] = v117;
    v78 = v78;
    if (!v75)
    {
      v78 = 1;
    }

    *&v268[16] = v78;
    v118 = 4;
    if (v252[0] <= 5)
    {
      v119 = 4;
    }

    else
    {
      v119 = 8;
    }

    if (v51 > 5)
    {
      v118 = 8;
    }

    v120 = (v113 - 1) | ((v113 - 1) >> 1) | (((v113 - 1) | ((v113 - 1) >> 1)) >> 2);
    v121 = v120 | (v120 >> 4) | ((v120 | (v120 >> 4)) >> 8);
    v122 = (v121 | (v121 >> 16) | ((v121 | (v121 >> 16)) >> 32)) + 1;
    v123 = (v114 - 1) | ((v114 - 1) >> 1) | (((v114 - 1) | ((v114 - 1) >> 1)) >> 2);
    v124 = v123 | (v123 >> 4) | ((v123 | (v123 >> 4)) >> 8);
    v125 = (v124 | (v124 >> 16) | ((v124 | (v124 >> 16)) >> 32)) + 1;
    if (v125 * v122 * v111 <= v74)
    {
      v92 *= v122;
      v110 *= v125;
      *v263 = v92;
      *&v263[8] = v110;
      v114 = 1;
      v267.i64[0] = 1;
      v126 = &v267.u64[1];
      v113 = 1;
    }

    else if (v113 < 2 || v113 > v119 || v122 * v111 > v74)
    {
      if (v114 > v118 || v125 * v111 > v74)
      {
LABEL_384:
        v127 = v109 * v87 * v110 * v92;
        v128 = v116 * v78 * v117 * v114 * v113;
        v129 = v127 / v71;
        v130 = 16 * v80;
        if (v127 / v71 * v128 < v130)
        {
          v270 = 1;
          v131 = 2;
          while (1)
          {
            while (1)
            {
              v134 = *(&v264 + v131);
              if (v134 <= v270)
              {
                break;
              }

              *(&v264 + v131) = v134 >> 1;
              v254 = v238;
              v132 = *&v263[8 * v131] * (v134 >> 1);
              v267.i64[v131] = (*(&v254 & 0xFFFFFFFFFFFFFFF3 | (4 * (v131 & 3))) + v132 - 1) / v132;
              v114 = v267.u64[1];
              v113 = v267.i64[0];
              v116 = *v268;
              v78 = *&v268[16];
              v117 = *&v268[8];
              v128 = v267.i64[1] * v267.i64[0] * *v268 * *&v268[8] * *&v268[16];
              v133 = v128 * v129;
              if (v128 * v129 >= v130)
              {
                goto LABEL_390;
              }
            }

            if (v131 == ((v229 & 1) == 0))
            {
              break;
            }

            --v131;
            v133 = v128 * v129;
            if (v128 * v129 >= v130)
            {
LABEL_390:
              if (v229 & 1 | (v133 >= v130))
              {
                goto LABEL_391;
              }

              goto LABEL_440;
            }
          }

          if (v229 & 1 | (v128 * v129 >= v130))
          {
            goto LABEL_391;
          }

LABEL_440:
          v179 = v264;
          if (v264 > v270)
          {
            v180 = v78 * v129 * v117 * v116 * v114;
            do
            {
              v179 >>= 1;
              v113 = (v179 * *v263 + v81 - 1) / (v179 * *v263);
            }

            while (v179 > v270 && v180 * v113 < v130);
            v264 = v179;
            v267.i64[0] = (v179 * *v263 + v81 - 1) / (v179 * *v263);
          }
        }

LABEL_391:
        v135 = (v113 - 1) | ((v113 - 1) >> 1) | (((v113 - 1) | ((v113 - 1) >> 1)) >> 2);
        v136 = v135 | (v135 >> 4) | ((v135 | (v135 >> 4)) >> 8);
        v137 = (v136 | (v136 >> 16) | ((v136 | (v136 >> 16)) >> 32)) + 1;
        v138 = (v114 - 1) | ((v114 - 1) >> 1) | (((v114 - 1) | ((v114 - 1) >> 1)) >> 2);
        v139 = v138 | (v138 >> 4) | ((v138 | (v138 >> 4)) >> 8);
        v140 = (v139 | (v139 >> 16) | ((v139 | (v139 >> 16)) >> 32)) + 1;
        if (v137 * v127 * v140 <= v74)
        {
          v142 = *&v263[8] * v140;
          *v263 *= v137;
          *&v263[8] *= v140;
          v114 = 1;
          v267.i64[0] = 1;
          v113 = 1;
        }

        else
        {
          v141 = v113 < 2 || v113 > v119;
          if (v141 || v137 * v127 > v74)
          {
            v142 = *&v263[8];
            if (v114 > v118 || v140 * v127 > v74)
            {
              goto LABEL_400;
            }

            v142 = *&v263[8] * v140;
            *&v263[8] *= v140;
            v114 = 1;
          }

          else
          {
            v142 = *&v263[8];
            *v263 *= v137;
            v113 = 1;
            v115 = &v267;
          }
        }

        v115->i64[0] = 1;
LABEL_400:
        v143 = *v263;
        v215 = *v263;
        v216 = *&v263[16];
        if (v229)
        {
          v144 = v142;
        }

        else
        {
          v144 = *&v263[16];
        }

        if (v229)
        {
          v145 = *v263;
        }

        else
        {
          v145 = v142;
        }

        v146 = *&v263[24];
        if (v229)
        {
          v143 = *&v263[24];
        }

        v261.i64[0] = v143;
        v261.i64[1] = v145;
        *v262 = v144;
        *&v262[8] = v113;
        *&v262[16] = v114;
        *&v262[24] = v116 * v78 * v117;
        if (v229)
        {
          *&v262[8] = v117;
          *&v262[16] = v113;
          *&v262[24] = v114 * v116 * v78;
        }

        else
        {
          v146 = 1;
        }

        v239 = v142;
        v147 = 4 * (v252[0] - 27) * v146;
        if (v252[0] <= 27)
        {
          v147 = 0;
        }

        v213 = v147;
        v214 = v146;
        LODWORD(v278) = 0;
        if ((*(&v57->super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
        {
          BaseTensor::GetAccessPattern();
          v212 = v148;
          v258 = v148;
          BaseTensor::GetAccessPattern();
          v211 = v149;
          v256 = v149;
          v290[0] = *(v6 + 112);
          [MEMORY[0x277CBEA60] arrayWithObjects:v290 count:1];
          BaseTensor::GetAccessPattern();
          v210 = v150;
          v260 = v150;
          v151 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
          v151[v212.n128_u8[0]] = 0;
          v151[v212.n128_u8[1]] = 1;
          v151[v212.n128_u8[2]] = 2;
          v151[v212.n128_u8[3]] = 3;
          v151[v212.n128_u8[4]] = 4;
          v151[v212.n128_u8[5]] = 5;
          v151[v212.n128_u8[6]] = 6;
          v151[v212.n128_u8[7]] = 7;
          v151[v212.n128_u8[8]] = 8;
          v151[v212.n128_u8[9]] = 9;
          v151[v212.n128_u8[10]] = 10;
          v151[v212.n128_u8[11]] = 11;
          v151[v212.n128_u8[12]] = 12;
          v151[v212.n128_u8[13]] = 13;
          v151[v212.n128_u8[14]] = 14;
          v151[v212.n128_u8[15]] = 15;
          v152 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
          v152[v211.u8[0]] = 0;
          v152[v211.u8[1]] = 1;
          v152[v211.u8[2]] = 2;
          v152[v211.u8[3]] = 3;
          v152[v211.u8[4]] = 4;
          v152[v211.u8[5]] = 5;
          v152[v211.u8[6]] = 6;
          v152[v211.u8[7]] = 7;
          v152[v211.u8[8]] = 8;
          v152[v211.u8[9]] = 9;
          v152[v211.u8[10]] = 10;
          v152[v211.u8[11]] = 11;
          v152[v211.u8[12]] = 12;
          v152[v211.u8[13]] = 13;
          v152[v211.u8[14]] = 14;
          v152[v211.u8[15]] = 15;
          v153 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
          v153[v210] = 0;
          v153[BYTE1(v210)] = 1;
          v153[BYTE2(v210)] = 2;
          v153[BYTE3(v210)] = 3;
          v153[BYTE4(v210)] = 4;
          v153[BYTE5(v210)] = 5;
          v153[BYTE6(v210)] = 6;
          v153[BYTE7(v210)] = 7;
          v153[BYTE8(v210)] = 8;
          v153[BYTE9(v210)] = 9;
          v153[BYTE10(v210)] = 10;
          v153[BYTE11(v210)] = 11;
          v153[BYTE12(v210)] = 12;
          v153[BYTE13(v210)] = 13;
          v153[BYTE14(v210)] = 14;
          v153[HIBYTE(v210)] = 15;
          v212.n128_u32[0] = BaseTensor::GetDimensionSize(v245);
          v211.i32[0] = BaseTensor::GetDimensionSize(v245);
          LODWORD(v210) = BaseTensor::GetDimensionSize(v245);
          v209 = BaseTensor::GetDimensionSize(v245);
          v208 = BaseTensor::GetDimensionSize(v245);
          v207 = BaseTensor::GetDimensionSize(v244);
          v206 = BaseTensor::GetDimensionSize(v244);
          v205 = BaseTensor::GetDimensionSize(v244);
          v204 = BaseTensor::GetDimensionSize(v244);
          v203 = BaseTensor::GetDimensionSize(v253);
          v154 = BaseTensor::GetDimensionSize(v253);
          v155 = BaseTensor::GetDimensionSize(v253);
          v156 = BaseTensor::GetDimensionSize(v253);
          v157 = BaseTensor::GetDimensionSize(v253);
          v158 = dataTypeToString(*(v245 + 2));
          v159 = dataTypeToString(v244[2]);
          v160 = dataTypeToString(*(v253 + 2));
          v202 = v154;
          v57 = v236;
          MPSKernel_LogInfo(v236, v161, "-test MPSNDArrayDepthwiseConv3DTest -srcShapes [%u,%u,%u,%u,%u] [%u,%u,%u,%u] -dstShapes [%u,%u,%u,%u,%u] -srcDataTypes %s %s -dstDataTypes %s -cAxis %u -strides [1,%lu,%lu,%lu] -dilationRates [1,%lu,%lu,%lu] ", v212.n128_u32[0], v211.i32[0], v210, v209, v208, v207, v206, v205, v204, v203, v202, v155, v156, v157, v158, v159, v160, v251, v233, v234, v235, v230, v231, v232);
          free(v151);
          free(v152);
          free(v153);
          printDWTranspose(v236, &v258, 0, 1);
          printDWTranspose(v236, &v256, 1, 1);
          printDWTranspose(v236, &v260, 0, 0);
          MPSKernel_LogInfo(v236, v162, "-runMode weightGrad ");
          MPSKernel_LogInfo(v236, v163, ",\n");
          v46 = v225;
          v51 = v241;
        }

        v192 = *(&v57->super.isa + *MEMORY[0x277CD7360]);
        v195 = *(&v57->super.isa + *MEMORY[0x277CD7368]);
        v189 = *(v249 + 232);
        MPSLibrary::CreateUberShaderKey();
        v164 = v218;
        v165 = v221;
        v166 = MPSLibrary::GetPipelineStateForMPSKey();
        if (!v166)
        {
          v10 = -1;
LABEL_467:
          MPSAutoCache::~MPSAutoCache(v271);
          return v10;
        }

        MPSLibrary::ReleaseMPSKey();
        v167 = 1.0 / *v268;
        *(&v278 + 1) = v167;
        *v279 = *v268;
        *&v279[4] = vmovn_s64(*&v268[8]);
        if (v229)
        {
          v168 = 1.0 / v267.u64[1];
          *(&v278 + 1) = v168;
          *v279 = v267.i32[2];
          *&v279[4] = *v268;
        }

        v169 = *&v268[8];
        if (v46 != 1)
        {
          v169 = v246;
        }

        if ((4 * v217 * *v268 * v169 * v267.i64[1] * v267.i64[0]) <= 0x10)
        {
          v170 = 16;
        }

        else
        {
          v170 = 4 * v217 * *v268 * v169 * v267.i64[1] * v267.i64[0];
        }

        TempBuffer = MPSAutoCache::GetTempBuffer(v271, v170, 0);
        [v218 setComputePipelineState:{v166, v189, v192, v195, 0, 0}];
        MPSSetNDArraysOnComputeEncoder(v218, v249, 4, 0, 0);
        objc_msgSend_setBytes_length_atIndex_(v218);
        [v218 setBuffer:TempBuffer offset:0 atIndex:28];
        [v218 setThreadgroupMemoryLength:(v214 * 4 * v239 * v216 * v215 + v213 + 15) & 0xFFFFFFFFFFFFFFF0 atIndex:0];
        if ((atomic_load_explicit(&qword_27DF867E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF867E8))
        {
          _MergedGlobals_7 = [objc_msgSend(objc_msgSend(v248 "commandQueue")];
          __cxa_guard_release(&qword_27DF867E8);
          v164 = v218;
          v46 = v225;
          v51 = v241;
          v165 = v221;
        }

        *[_MergedGlobals_7 contents] = 0;
        [v164 setBuffer:_MergedGlobals_7 offset:0 atIndex:27];
        v258 = *&v262[8];
        v259 = *&v262[24];
        v256 = v261;
        v257 = *v262;
        [v164 dispatchThreadgroups:&v258 threadsPerThreadgroup:&v256];
        [v164 setComputePipelineState:v165];
        *v172.i8 = vmovn_s64(v267);
        v172.i64[1] = __PAIR64__(v246, *v268);
        v173 = v172;
        v173.i32[3] = 1;
        v174.i32[0] = 1;
        v175.i32[0] = v46;
        v272 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v175, v174), 0), v173, v172);
        v276.i32[0] = *&v268[8];
        objc_msgSend_setBytes_length_atIndex_(v164);
        if (v46 == 1)
        {
          if (v261.i64[0])
          {
            v176 = (*v252 + v261.i64[0] - 1) / v261.i64[0];
            if (v261.i64[1])
            {
              goto LABEL_427;
            }
          }

          else
          {
            v176 = 0;
            if (v261.i64[1])
            {
LABEL_427:
              v177 = (v51 + v261.i64[1] - 1) / v261.i64[1];
              if (*v262)
              {
LABEL_428:
                v178 = (v243 + *v262 - 1) / *v262;
LABEL_466:
                v258.n128_u64[0] = v176;
                v258.n128_u64[1] = v177;
                v259 = v178;
                v256 = v261;
                v257 = *v262;
                [v164 dispatchThreadgroups:&v258 threadsPerThreadgroup:&v256];
                MPSLibrary::ReleaseMPSKey();
                MPSLibrary::ReleaseComputeState();
                MPSLibrary::ReleaseComputeState();
                v10 = 0;
                goto LABEL_467;
              }

LABEL_462:
              v178 = 0;
              goto LABEL_466;
            }
          }

          v177 = 0;
          if (*v262)
          {
            goto LABEL_428;
          }

          goto LABEL_462;
        }

        if (v261.i64[0])
        {
          v176 = (*v252 + v261.i64[0] - 1) / v261.i64[0];
          if (v261.i64[1])
          {
LABEL_432:
            v177 = (v51 + v261.i64[1] - 1) / v261.i64[1];
LABEL_465:
            v178 = v246;
            goto LABEL_466;
          }
        }

        else
        {
          v176 = 0;
          if (v261.i64[1])
          {
            goto LABEL_432;
          }
        }

        v177 = 0;
        goto LABEL_465;
      }

      v110 *= v125;
      *&v263[8] = v110;
      v114 = 1;
      v126 = &v267.u64[1];
    }

    else
    {
      v92 *= v122;
      *v263 = v92;
      v113 = 1;
      v126 = &v267;
    }

    v126->i64[0] = 1;
    goto LABEL_384;
  }

  return -1;
}
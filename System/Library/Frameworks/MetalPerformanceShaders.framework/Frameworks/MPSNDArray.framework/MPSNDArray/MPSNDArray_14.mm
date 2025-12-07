void sub_239AF4AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, void *a54)
{
  operator delete(__p);
  if (a54)
  {
    operator delete(a54);
    if (a39)
    {
LABEL_6:
      operator delete(a39);
      _Unwind_Resume(a1);
    }
  }

  else if (a39)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

uint64_t MPSNDArrayConvolutionA18FunctionConstructor(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2[8];
  v6 = MPSCreateFunctionConstantValues();
  [v6 setConstantValue:&v9 + 4 type:33 atIndex:0];
  AddFunctionConstantList(v6, a3);
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA18::EncodeNDArrayConvolutionWinograd(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v290 = *MEMORY[0x277D85DE8];
  v251 = a4[3];
  v236 = a4[4];
  v237 = a4[5];
  v238 = *(a4 + 3);
  v260 = a4[10];
  v5 = a4[12];
  v218 = a4[11];
  v6 = a4[16];
  v7 = a4[17];
  v216 = *(v7 + *MEMORY[0x277CD7368]);
  v217 = *(v7 + *MEMORY[0x277CD7360]);
  v261 = *(a4 + 120);
  v253 = a4[2];
  v257 = *(a4 + 2);
  if (v261 == 1)
  {
    v234 = v7[34];
    [v234 setLabel:?];
    v212 = 0;
    v8 = -1;
  }

  else
  {
    v234 = v7[32];
    [v234 setLabel:?];
    v8 = v7[39];
    v212 = v8 != -1;
  }

  v9 = [*(v6 + 232) inputTensorAtIndex:0];
  v10 = [*(v6 + 232) inputTensorAtIndex:2];
  v11 = [*(v6 + 232) outputTensorAtIndex:0];
  v12 = [*(v6 + 232) inputTensorAtIndex:1];
  v13 = a4[17];
  v246 = v10;
  if (*(a4 + 120))
  {
    v14 = v10;
  }

  else
  {
    v14 = v9;
  }

  v252 = v11;
  v249 = v6;
  v213 = v8;
  if ((*(v13 + 329) & 1) == 0 && (*(v13 + *MEMORY[0x277CD7378]) & 2) == 0 || *(v14 + 8) != 268435472 || *(v12 + 8) != 268435472 || *(v11 + 8) != 268435472)
  {
    if (qword_27DF86CA8 == -1)
    {
      if (byte_27DF86C81)
      {
LABEL_15:
        v248 = 1;
        MPSKernel_LogInfo(v13, 1uLL, "MPSNDARRAY_WINOGRAD_FP16_INTERMEDIATE is set. Running A18 MXU Winograd using fp16 precision.\n");
        goto LABEL_23;
      }
    }

    else
    {
      v15 = a4[17];
      dispatch_once(&qword_27DF86CA8, &__block_literal_global_298);
      v13 = v15;
      if (byte_27DF86C81)
      {
        goto LABEL_15;
      }
    }

    if (qword_27DF86CB0 == -1)
    {
      if (byte_27DF86C82)
      {
LABEL_19:
        v248 = 0;
        MPSKernel_LogInfo(v13, 1uLL, "MPSNDARRAY_WINOGRAD_FP19_INTERMEDIATE is set. Running A18 MXU Winograd using fp19 precision.\n");
        goto LABEL_23;
      }
    }

    else
    {
      v16 = v13;
      dispatch_once(&qword_27DF86CB0, &__block_literal_global_301);
      v13 = v16;
      if (byte_27DF86C82)
      {
        goto LABEL_19;
      }
    }

    v17 = v13;
    if (MPSForceMatrixUnit())
    {
      v248 = 0;
      MPSKernel_LogInfo(v17, 1uLL, "MPSNDARRAY_CONV_FORCE_MXU is set to 1. Forcing A18 MXU Winograd using fp19 precision.\n");
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v248 = 0;
    }

    goto LABEL_23;
  }

  v248 = 1;
  MPSKernel_LogInfo(v13, 1uLL, "allowReducedPrecision flag is set. Running A18 MXU Winograd using fp16 precision.\n");
LABEL_23:
  v18 = [*(a4[16] + 232) graph];
  v19 = *(v18 + 64);
  v20 = *v19;
  v21 = v19[1];
  if (*v19 == v21)
  {
    v24 = 0;
    v28 = v6;
    goto LABEL_36;
  }

  v22 = v18;
  v23 = -1;
  v24 = -1;
  do
  {
    v25 = *v20;
    CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(v22);
    v27 = *v20;
    if (v25 == *(CoreOpInputAtIndex + 32))
    {
      v23 = *(v27 + 76);
      if (v27 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v22) + 32))
      {
        goto LABEL_25;
      }
    }

    else if (v27 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v22) + 32))
    {
      goto LABEL_25;
    }

    v24 = *(*v20 + 76);
LABEL_25:
    ++v20;
  }

  while (v20 != v21);
  v28 = v249;
  if (v24 == -1)
  {
    v24 = 0;
    if (!MTLReportFailureTypeEnabled())
    {
LABEL_38:
      v23 = 0;
      v33 = *(v12 + 16);
      v269 = 0;
      v270 = 0;
      v268 = 0;
      v35 = *v33;
      v34 = v33[1];
      v32 = v34 - v35;
      if (v34 == v35)
      {
        goto LABEL_41;
      }

LABEL_39:
      if ((v32 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

LABEL_37:
    MTLReportFailure();
    goto LABEL_38;
  }

  if (v23 == -1)
  {
LABEL_36:
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v29 = *(v12 + 16);
  v269 = 0;
  v270 = 0;
  v268 = 0;
  v31 = *v29;
  v30 = v29[1];
  v32 = v30 - v31;
  if (v30 != v31)
  {
    goto LABEL_39;
  }

LABEL_41:
  v36 = [*(v28 + 16) objectAtIndexedSubscript:v24];
  v37 = *(*(v28 + 8) + 80 * v24 + 64);
  v259 = [*(v28 + 16) objectAtIndexedSubscript:v23];
  if (v261)
  {
    v38 = (v28 + 96);
    v259 = *(v28 + 112);
  }

  else
  {
    v38 = (*(v28 + 8) + 80 * v23 + 64);
  }

  v39 = *v38;
  v231 = *(v28 + 208);
  v40 = *(&v36->super.super.isa + *MEMORY[0x277CD73D8]);
  v41 = *(v28 + 192);
  if (v40 > 3u || BYTE1(v40) > 3u || BYTE2(*(&v36->super.super.isa + *MEMORY[0x277CD73D8])) > 3u || BYTE3(*(&v36->super.super.isa + *MEMORY[0x277CD73D8])) > 3u)
  {
    goto LABEL_55;
  }

  if (v40 != 50462976)
  {
    if (v238 == 1)
    {
      if (v40 != 16777731)
      {
        goto LABEL_55;
      }

      v240 = 0;
      v244 = 0;
    }

    else
    {
      if (v238 || v40 != 16777731)
      {
        goto LABEL_55;
      }

      v240 = 0;
      v45 = 1;
LABEL_65:
      v244 = v45;
    }

    [*(v28 + 16) count];
    v225 = v37;
    if (v261)
    {
      v218 = vadd_s32(v5, v218);
      v9 = v246;
      v250 = v253;
    }

    else
    {
      v250 = v251;
      v251 = v253;
    }

    v47 = *(v9 + 8);
    v254 = *(v12 + 8);
    v48 = *(v252 + 8);
    if (v47 > 301989895)
    {
      if (v47 == 301989896 || v47 == 335544328)
      {
        goto LABEL_78;
      }
    }

    else if ((v47 - 268435464) <= 0x18 && ((1 << (v47 - 8)) & 0x1000101) != 0 || v47 == -1879048176)
    {
      goto LABEL_78;
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

LABEL_78:
    if (v254 > 301989895)
    {
      if (v254 == 301989896 || v254 == 335544328)
      {
        goto LABEL_87;
      }
    }

    else if ((v254 - 268435464) <= 0x18 && ((1 << (v254 - 8)) & 0x1000101) != 0 || v254 == -1879048176)
    {
      goto LABEL_87;
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

LABEL_87:
    if (v48 > 301989895)
    {
      if (v48 == 301989896 || v48 == 335544328)
      {
        goto LABEL_96;
      }
    }

    else if ((v48 - 268435464) <= 0x18 && ((1 << (v48 - 8)) & 0x1000101) != 0 || v48 == -1879048176)
    {
      goto LABEL_96;
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

LABEL_96:
    if (v257 == 2 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v208 = v41;
    v209 = v39;
    v49 = *(v9 + 16);
    v51 = *v49;
    v50 = v49[1];
    if (v50 != v51)
    {
      if (((v50 - v51) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v57 = *(v252 + 16);
    v59 = *v57;
    v58 = v57[1];
    if (v58 != v59)
    {
      if (((v58 - v59) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    if (v257)
    {
      v52 = 8;
      v53 = 8;
      v54 = 16;
      v55 = 0;
      v56 = 0;
    }

    else
    {
      v56 = 16;
      v55 = 16;
      v54 = 8;
      v53 = 0;
      v52 = 0;
    }

    v60 = *v56;
    v210 = *v52;
    v211 = *v54;
    v61 = MEMORY[0x18];
    v62 = *v55;
    v220 = *v53;
    v232 = MEMORY[0x18];
    v233 = *v54;
    v63 = v268 + 2;
    if (v238)
    {
      v64 = v268 + 3;
      v65 = 1;
      v66 = v268;
    }

    else
    {
      v66 = v268 + 2;
      v63 = v268 + 1;
      v65 = 3;
      v64 = v268;
    }

    v67 = *v64;
    v227 = *v66;
    v229 = v268[v65];
    v68 = *v63 * v260;
    if (v261)
    {
      if (v68 != v250 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v67 != v251 && (MTLReportFailureTypeEnabled() & 1) != 0)
      {
LABEL_426:
        MTLReportFailure();
      }
    }

    else
    {
      if (v68 != v251 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v67 != v250 && MTLReportFailureTypeEnabled())
      {
        goto LABEL_426;
      }
    }

    if (v229 != v237 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v227 != v236 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v61 != v232 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v60 != v251 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v62 != v250 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v69 = *(v9 + 8);
    if (v69 > 285212703)
    {
      if (v69 <= 536870915)
      {
        if (v69 > 301989895)
        {
          if (v69 == 301989896)
          {
            v81 = *(v12 + 8);
            if (v81 > 285212703)
            {
              goto LABEL_190;
            }

            goto LABEL_188;
          }

          if (v69 == 335544328)
          {
            v75 = *(v12 + 8);
            if (v75 > 285212703)
            {
              goto LABEL_190;
            }

            goto LABEL_188;
          }
        }

        else
        {
          if (v69 == 285212704)
          {
            v79 = *(v12 + 8);
            if (v79 > 285212703)
            {
              goto LABEL_190;
            }

            goto LABEL_188;
          }

          if (v69 == 285212736)
          {
            v73 = *(v12 + 8);
            if (v73 > 285212703)
            {
              goto LABEL_190;
            }

            goto LABEL_188;
          }
        }
      }

      else if (v69 <= 536870927)
      {
        if (v69 == 536870916)
        {
          v87 = *(v12 + 8);
          if (v87 <= 285212703)
          {
            goto LABEL_188;
          }

LABEL_190:
          v88 = v254;
LABEL_191:
          v90 = v250 / v260;
          v91 = v251 / v260;
          v206 = v61;
          if (v88 <= 268435471)
          {
            if (v88 == -1879048176)
            {
              v92 = 2;
              goto LABEL_203;
            }

            if (v88 == 268435464)
            {
              v92 = 3;
              goto LABEL_203;
            }
          }

          else
          {
            switch(v88)
            {
              case 268435472:
                v92 = 1;
                goto LABEL_203;
              case 301989896:
                v92 = 4;
                goto LABEL_203;
              case 335544328:
                v92 = 5;
                goto LABEL_203;
            }
          }

          v92 = 0;
LABEL_203:
          if (v248)
          {
            v93 = 268435472;
          }

          else
          {
            v93 = 268435488;
          }

          v94 = v91 + 15;
          v247 = v250 / v260;
          v95 = v90 + 15;
          __s2 = vdupq_n_s64(0x10uLL);
          v215 = (v90 + 15) >> 4;
          v281 = 16;
          v282 = (v91 + 15) >> 4;
          v219 = v282;
          *&v283 = v215 * v260;
          if (v261)
          {
            v282 = v215 * v260;
            *&v283 = (v91 + 15) >> 4;
          }

          v207 = v93;
          v96 = [MEMORY[0x277CD7268] descriptorWithDataType:? dimensionCount:? dimensionSizes:?];
          v222 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v96];
          if (v248)
          {
            v97 = 4096;
          }

          else
          {
            v97 = 0;
          }

          if (v260 == 1)
          {
            v98 = 9056;
          }

          else
          {
            v98 = 864;
          }

          *&v99 = -1;
          *(&v99 + 1) = -1;
          *&v274[16] = v99;
          *&v274[32] = v99;
          v273 = -1;
          *v274 = v99;
          v271 = v99;
          v272 = (v92 | v97) & 0xFFFFFFE7 | v98 & 0xFFFFFFE7 | (v261 << 14) | (8 * (v244 & 3));
          v204 = *(v249 + 232);
          MPSLibrary::CreateUberShaderKey();
          [a2 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v204, v217, v216, 0, 0}];
          MPSLibrary::ReleaseComputeState();
          MPSLibrary::ReleaseMPSKey();
          v100 = ((v95 & 0xFFFFFFFFFFFFFFF0) >> 3) * v260;
          MPSGetUShortDivisorMagicNumber();
          if (v240)
          {
            v101 = 0;
          }

          else
          {
            v101 = v225;
          }

          [a2 setBuffer:-[MPSTemporaryNDArray buffer](v36 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v36, 0, 4, 0, 0) + v101, 28}];
          [a2 setBuffer:-[MPSTemporaryNDArray buffer](v222 offset:"buffer") atIndex:{0, 27}];
          if ((atomic_load_explicit(&qword_27DF86C90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF86C90))
          {
            qword_27DF86C88 = [objc_msgSend(objc_msgSend(a3 "commandQueue")];
            __cxa_guard_release(&qword_27DF86C90);
          }

          v102 = [qword_27DF86C88 contents];
          *v102 = 0;
          v102[1] = 0;
          [a2 setBuffer:qword_27DF86C88 offset:0 atIndex:24];
          objc_msgSend_setBytes_length_atIndex_(a2);
          v103 = (v94 >> 3) & 0x1FFFFFFFFFFFFFFELL;
          if (v244)
          {
            v104 = (v94 >> 3) & 0x1FFFFFFFFFFFFFFELL;
          }

          else
          {
            v104 = v100;
          }

          if (v244)
          {
            v103 = v100;
          }

          v265 = v104;
          v266 = v103;
          v267 = 1;
          v263 = vdupq_n_s64(8uLL);
          v264 = 1;
          [a2 dispatchThreadgroups:&v265 threadsPerThreadgroup:&v263];
          if (v240)
          {
            MPSDecrementReadCount(v36);
          }

          v105 = *&v259[*MEMORY[0x277CD73D8]];
          v106 = v105.u8[0];
          v107 = v105.u8[1];
          v108 = v105.u8[3];
          v109 = v105.u8[2];
          if (v105.u8[0] <= 3u && v105.u8[1] <= 3u && v105.u8[2] <= 3u && v105.u8[3] <= 3u)
          {
            v110 = vceq_s16((*&vzip1_s8(*v105.i8, *v105.i8) & 0xFF00FF00FF00FFLL), 0x3000200010000);
            if (vminv_u16(v110))
            {
              if (v257 != -1)
              {
LABEL_248:
                v111 = v257;
LABEL_249:
                if (*(a1 + 160) == 3)
                {
                  v115 = *(a1 + 152);
                  v116 = a4[17];
                  if ((v261 & 1) == 0)
                  {
                    goto LABEL_251;
                  }
                }

                else
                {
                  v115 = 0;
                  v116 = a4[17];
                  if ((v261 & 1) == 0)
                  {
LABEL_251:
                    v117 = v220;
                    if (*(v116 + 304) == 3)
                    {
                      v115 = *(v116 + 296);
                    }

LABEL_255:
                    v221 = v116;
                    v118 = v47 == 268435488;
                    __s2.i64[0] = __PAIR64__(v233, v117);
                    v119 = v254 == 268435488;
                    v120 = v251 / v260;
                    __s2.i32[2] = v251 / v260;
                    v121 = v250 / v260;
                    if (v248)
                    {
                      v122 = 1;
                    }

                    else
                    {
                      v122 = 2;
                    }

                    __s2.i32[3] = v250 / v260;
                    v281 = __PAIR64__(v237, v236);
                    v282 = __PAIR64__(v232, v260);
                    *&v123 = 0x100000001;
                    *(&v123 + 1) = 0x100000001;
                    v283 = v123;
                    v284 = v111;
                    v285 = v257;
                    v286 = v238;
                    v287 = v118;
                    v288 = v254 == 268435488;
                    v289 = v122;
                    if (v261)
                    {
                      v120 = v250 / v260;
                      v121 = v251 / v260;
                      __s2.i32[2] = v250 / v260;
                      __s2.i32[3] = v251 / v260;
                    }

                    if (v115)
                    {
                      v243 = *v115;
                      v241 = v115[1];
                      v223 = v115[2];
                      v224 = v115[3];
                      v235 = v115[4];
                      v230 = v115[5];
                      v226 = v115[6];
                      v228 = v115[7];
                      v245 = v115[8];
                      v255 = v115[9];
                      goto LABEL_280;
                    }

                    v124 = *(a1 + 296);
                    if (v124)
                    {
                      v125 = *(a1 + 304);
                      if (v125)
                      {
                        while (memcmp(v124, &__s2, 0x48uLL))
                        {
                          v124 += 28;
                          if (!--v125)
                          {
                            goto LABEL_266;
                          }
                        }

                        goto LABEL_273;
                      }
                    }

LABEL_266:
                    v126 = *(a1 + 288);
                    if (v126)
                    {
                      v124 = *(a1 + 280);
                      while (memcmp(v124, &__s2, 0x48uLL))
                      {
                        v124 += 28;
                        if (!--v126)
                        {
                          goto LABEL_270;
                        }
                      }

LABEL_273:
                      v243 = v124[18];
                      v241 = v124[19];
                      v223 = v124[20];
                      v224 = v124[21];
                      v235 = v124[22];
                      v230 = v124[23];
                      v226 = v124[24];
                      v228 = v124[25];
                      v245 = v124[26];
                      v255 = v124[27];
                      goto LABEL_280;
                    }

LABEL_270:
                    if (!v248)
                    {
                      v255 = 0;
                      v235 = 0;
                      v230 = 5;
                      v223 = 0;
                      v224 = 2;
                      v228 = 2;
                      v241 = 2;
                      v226 = 1;
                      v243 = 1;
                      v245 = 0;
                      goto LABEL_280;
                    }

                    if (v121 <= 0x3F)
                    {
                      v255 = 0;
                      v226 = 0;
                      v228 = 0;
                      v235 = 0;
                      v223 = 0;
                      v224 = 0;
                      v241 = v121 > 0x10;
                      v243 = 0;
                      v230 = 4;
                      v245 = 2;
                      goto LABEL_280;
                    }

                    v127 = ((v233 + 1) >> 1) * ((v220 + 1) >> 1);
                    if (v127 > 0x7FF)
                    {
                      goto LABEL_276;
                    }

                    if (v121 == 64)
                    {
                      v255 = 0;
                      v224 = 0;
                      v226 = 0;
                      v235 = 0;
                      v230 = 4;
                      v228 = 1;
                      v223 = 1;
                      v243 = 0;
                      v245 = 1;
                      v241 = 1;
                    }

                    else
                    {
                      v128 = 0;
                      v241 = 2;
                      v230 = 4;
                      v245 = 3;
                      v255 = 0;
                      if (v121 < 0x100)
                      {
                        v226 = 0;
                        v228 = 0;
                        v235 = 0;
                        v223 = 0;
                        v224 = 0;
                        goto LABEL_277;
                      }

                      v226 = 0;
                      v228 = 0;
                      v235 = 0;
                      v223 = 0;
                      v224 = 0;
                      v243 = 0;
                      if (v127 >= 0x20)
                      {
LABEL_276:
                        v235 = 0;
                        v223 = 0;
                        v224 = 0;
                        v228 = 0;
                        v230 = 5;
                        v128 = 1;
                        v245 = 1;
                        v226 = 1;
                        v241 = 1;
                        v255 = 1;
LABEL_277:
                        v243 = v128;
                      }
                    }

LABEL_280:
                    if ((*(&v221->super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
                    {
                      v129 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d}", v220, v233, v120, v121, v236, v237, v260, v232, 1, 1, 1, 1, v111, v257, v238, v118, v119, v122];
                      MPSKernel_LogInfo(v221, 1uLL, "Winograd A18 kernel running key with params:    {%s, %s}\n", [v129 UTF8String], objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"{%d,%d,%d,%d,%d,%d,%d,%d,%d,%d}", v243, v241, v223, v224, v235, v230, v226, v228, v245, v255), "UTF8String"));
                    }

                    if (qword_27DF86CC0 == -1)
                    {
                      v130 = v213;
                      v131 = v221;
                      if (byte_27DF86C83 == 1)
                      {
                        goto LABEL_284;
                      }
                    }

                    else
                    {
                      dispatch_once(&qword_27DF86CC0, &__block_literal_global_326);
                      v130 = v213;
                      v131 = v221;
                      if (byte_27DF86C83 == 1)
                      {
LABEL_284:
                        if ([v131 conformsToProtocol:&unk_284CCB9C0])
                        {
                          if (!qword_27DF86CB8)
                          {
                            qword_27DF86CB8 = objc_alloc_init(MPSNDArrayAutoTuneRecorderObj);
                          }

                          v132 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&__s2 length:72];
                          [qword_27DF86CB8 recordNode:v132 kernelID:0];
                        }
                      }
                    }

                    v214 = v111;
                    if (v212)
                    {
                      if ((v130 & 0x8000000000000000) != 0)
                      {
                        v148 = -1;
                        v167 = v255;
                      }

                      else
                      {
                        v235 = v130 / 0x51 - 7 * ((v130 / 0x51 * 0x2492492492492493uLL) >> 64);
                        v230 = (((v130 % 3) | 4) - v235) & ~((((v130 % 3) | 4) - v235) >> 63);
                        v133 = v130 / 0x237 - 7 * ((v130 / 0x237 * 0x2492492492492493uLL) >> 64);
                        v243 = v130 % 3;
                        v134 = 1 << (v130 % 3);
                        v135 = v130 / 0x3E04 - 5 * ((v130 / 0x3E04 * 0x3333333333333334uLL) >> 64);
                        v136 = v130 / 3 - 3 * ((v130 / 3 * 0x5555555555555556uLL) >> 64);
                        v137 = v130 / 9 - 3 * ((v130 / 9 * 0x5555555555555556uLL) >> 64);
                        v138 = v130 / 0x1B - 3 * ((v130 / 0x1B * 0x5555555555555556uLL) >> 64);
                        v226 = v133;
                        v228 = (((v130 * 0x420C41461C824A2DuLL) >> 64) >> 10) & 3;
                        v139 = (((1 << v136) >> ((((v130 * 0x420C41461C824A2DuLL) >> 64) >> 10) & 3)) * (v134 / (1 << v133))) * (0x10u / (1 << v135));
                        v245 = v135;
                        v141 = v139 < 0x20 || (1 << ((((v130 * 0x420C41461C824A2DuLL) >> 64) >> 10) & 3) << v133 << v135) < 8;
                        v241 = v130 / 3 - 3 * ((v130 / 3 * 0x5555555555555556uLL) >> 64);
                        v142 = (v134 << v136);
                        v223 = v130 / 9 - 3 * ((v130 / 9 * 0x5555555555555556uLL) >> 64);
                        v224 = v130 / 0x1B - 3 * ((v130 / 0x1B * 0x5555555555555556uLL) >> 64);
                        v143 = (0x10u / (1 << v137)) << ((v130 % 3) | 8);
                        v144 = (1 << v138);
                        if (v143 <= ((v134 << v136) / v144) << 12)
                        {
                          v143 = ((v134 << v136) / v144) << 12;
                        }

                        if (v289 == 1)
                        {
                          v145 = 1;
                        }

                        else
                        {
                          v145 = 2;
                        }

                        if ((v143 << v145 > 0x8000 || !(HIDWORD(v282) >> v235) || 1 << v137 > (1 << v135) || v142 < 1 << v138 || v139 < v142 || v135 > 3 || (1 << v230) << v235 != 16 << v243 || v139 > 0x20 || !v141) && MTLReportFailureTypeEnabled())
                        {
                          MTLReportFailure();
                        }

                        v256 = (v130 / 0x13614) - 3 * ((v130 / 0x13614 * 0x5555555555555556uLL) >> 64);
                        if (v289 == 1)
                        {
                          v146 = 1;
                        }

                        else
                        {
                          v146 = 2;
                        }

                        if (v130 <= 0x3A23B)
                        {
                          v147 = 238139;
                        }

                        else
                        {
                          v147 = v130;
                        }

                        v148 = v130;
                        while (v147 != v148)
                        {
                          v149 = ++v148 % 3;
                          v150 = (9363 * (v148 / 0x237)) >> 16;
                          v151 = v148 / 0x237 - 7 * ((v150 + (((v148 / 0x237 - v150) & 0xFFFE) >> 1)) >> 2);
                          v152 = (v148 / 0xF81) & 3;
                          v153 = 1 << v152;
                          v154 = (((1 << (v148 / 3 - 3 * ((1431655766 * (v148 / 3)) >> 32))) >> v152) * ((1 << (v148 % 3)) / (1 << v151))) * (0x10u / (1 << (v148 / 0x3E04 - 5 * ((858993460 * (v148 / 0x3E04)) >> 32))));
                          v155 = v153 << v151 << (v148 / 0x3E04 - 5 * ((858993460 * (v148 / 0x3E04)) >> 32));
                          v157 = v154 < 0x20 || v155 < 8;
                          v158 = (1 << (v148 % 3) << (v148 / 3 - 3 * ((1431655766 * (v148 / 3)) >> 32)));
                          v159 = 1 << ((v148 / 0x1B) % 3u);
                          v160 = (0x10u / (1 << ((v148 / 9) % 3u))) << (v149 | 8);
                          if (v160 <= ((1 << (v148 % 3) << (v148 / 3 - 3 * ((1431655766 * (v148 / 3)) >> 32))) / v159) << 12)
                          {
                            v160 = ((1 << (v148 % 3) << (v148 / 3 - 3 * ((1431655766 * (v148 / 3)) >> 32))) / v159) << 12;
                          }

                          if (v160 << v146 <= 0x8000)
                          {
                            v161 = v148 / 0x51;
                            v162 = (9363 * (v148 / 0x51)) >> 16;
                            if (HIDWORD(v282) >> (v161 - 7 * ((v162 + (((v161 - v162) & 0xFFFE) >> 1)) >> 2)))
                            {
                              if (1 << ((v148 / 9) % 3u) <= (1 << (v148 / 0x3E04 - 5 * ((858993460 * (v148 / 0x3E04)) >> 32))) && v158 >= v159)
                              {
                                if (v154 < v158 || ((v148 / 0x3E04) - 5 * ((858993460 * (v148 / 0x3E04)) >> 32)) > 3)
                                {
                                  v165 = 0;
                                }

                                else
                                {
                                  v163 = v161 - 7 * ((v162 + (((v161 - v162) & 0xFFFE) >> 1)) >> 2);
                                  v165 = (1 << (((v149 | 4) - v163) & ~(((v149 | 4) - v163) >> 63))) << v163 == 16 << v149;
                                }

                                if (v165 && v154 <= 0x20 && v157)
                                {
                                  goto LABEL_345;
                                }
                              }
                            }
                          }
                        }

                        v148 = -1;
LABEL_345:
                        v130 = v213;
                        if (v148 == v213)
                        {
                          v167 = v256;
                          v131 = v221;
                          if (MTLReportFailureTypeEnabled())
                          {
                            MTLReportFailure();
                          }

                          v148 = v213;
                        }

                        else
                        {
                          v167 = v256;
                          v131 = v221;
                        }
                      }

                      *(v131 + 320) = v148;
                      LODWORD(v255) = v167;
                      if (*(v131 + 328) == 1)
                      {
                        *(v131 + 328) = 0;
                        v168 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d}", __s2.u32[0], __s2.u32[1], __s2.u32[2], __s2.u32[3], v281, HIDWORD(v281), v282, HIDWORD(v282), v283, DWORD1(v283), DWORD2(v283), HIDWORD(v283), v284, v285, v286, v287, v288, v289];
                        MPSKernel_LogInfo(v131, 0, "Winograd A18 kernel running auto tune iteration %7ld key with params:    {%s, %s}\n", v130, [v168 UTF8String], objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"{%d,%d,%d,%d,%d,%d,%d,%d,%d,%d}", v243, v241, v223, v224, v235, v230, v226, v228, v245, v167), "UTF8String"));
                      }
                    }

                    v169 = 1 << v241;
                    v170 = (1 << v243) * (1 << v241);
                    if (v170 >= 0x11 && MTLReportFailureTypeEnabled())
                    {
                      MTLReportFailure();
                    }

                    if (v241 >= 3 && MTLReportFailureTypeEnabled())
                    {
                      MTLReportFailure();
                    }

                    if (v243 >= 3 && MTLReportFailureTypeEnabled())
                    {
                      MTLReportFailure();
                    }

                    v171 = 1 << v243;
                    v172 = 1 << v230;
                    if ((1 << v235) * v172 != 16 * v171 && MTLReportFailureTypeEnabled())
                    {
                      MTLReportFailure();
                    }

                    if (v245 >= 4 && MTLReportFailureTypeEnabled())
                    {
                      MTLReportFailure();
                    }

                    v173 = 1 << v245;
                    v174 = v169 / (1 << v228) * (v171 / (1 << v226)) * (0x10 / v173);
                    if (v174 >= 0x21 && MTLReportFailureTypeEnabled())
                    {
                      MTLReportFailure();
                    }

                    if (v170 > v174 && MTLReportFailureTypeEnabled())
                    {
                      MTLReportFailure();
                    }

                    v239 = 1 << v224;
                    if (v170 < v239 && MTLReportFailureTypeEnabled())
                    {
                      MTLReportFailure();
                    }

                    if (1 << v223 > v173 && MTLReportFailureTypeEnabled())
                    {
                      MTLReportFailure();
                    }

                    if (v255 >= 3 && MTLReportFailureTypeEnabled())
                    {
                      MTLReportFailure();
                    }

                    if (16 * (v173 & 0x7FFFFFFFFFFFFFLL) >= 0x81 && MTLReportFailureTypeEnabled())
                    {
                      MTLReportFailure();
                    }

                    v205 = *(v249 + 232);
                    MPSLibrary::CreateUberShaderKey();
                    [a2 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v205, v217, v216, 0, 0}];
                    MPSLibrary::ReleaseComputeState();
                    MPSLibrary::ReleaseMPSKey();
                    v175 = (v247 + 16 * v169 - 1) / (16 * v169) * v260;
                    v271 = 0u;
                    v278 = 0u;
                    v279 = 0u;
                    v276 = 0u;
                    v277 = 0u;
                    v275 = 0u;
                    LOWORD(v271) = v210;
                    WORD1(v271) = v211;
                    WORD2(v271) = v220;
                    WORD3(v271) = v233;
                    DWORD2(v271) = v232;
                    WORD6(v271) = v260;
                    v272 = __PAIR64__(v250, v251);
                    v273 = __PAIR64__(v215, v219);
                    *v274 = v250 / v260;
                    *&v274[4] = v251 / v260;
                    memset(&v274[8], 0, 40);
                    LOWORD(v275) = v218.i16[0] - v236 / 2;
                    WORD1(v275) = v218.i16[2] - v237 / 2;
                    WORD2(v275) = v175 / v260;
                    MPSGetUShortDivisorMagicNumber();
                    *(&v275 + 1) = v176;
                    LOWORD(v276) = (v220 + 1) >> 1;
                    MPSGetUIntDivisorMagicNumber();
                    v177 = 1 << v255;
                    v277 = v178;
                    v278 = 0u;
                    v179 = (v172 + ((v233 + 1) >> 1) * ((v220 + 1) >> 1) - 1) / v172;
                    *&v279 = __PAIR64__(v175, v179);
                    if (v255)
                    {
                      v179 = (v179 + v177 - 1) / v177;
                      MPSGetUIntDivisorMagicNumber();
                      v180 = (v175 + v177 - 1) / v177;
                      v278 = v181;
                      v175 = v180;
                    }

                    else
                    {
                      v180 = 1;
                    }

                    v182 = *MEMORY[0x277CD7400];
                    v183 = *MEMORY[0x277CD73C8];
                    v184 = *&v259[v182] / (*&v259[v183] >> 3);
                    v185 = *MEMORY[0x277CD73D0];
                    v186 = *&v259[v185 + 4];
                    v187 = v186 * v184;
                    v188 = v186 * v184 * *&v259[v185 + 8];
                    v189 = v250 / v260;
                    v190 = v251 / v260;
                    if (v214)
                    {
                      v191 = *&v259[v182] / (*&v259[v183] >> 3);
                      LODWORD(v184) = v187;
                      v187 = 1;
                    }

                    else
                    {
                      v190 = v186 * v184 * (v251 / v260);
                      LODWORD(v191) = 1;
                    }

                    *&v274[8] = v191;
                    *&v274[16] = v184;
                    *&v274[24] = v187;
                    *&v274[32] = v188;
                    *&v274[40] = v190;
                    v192 = *&v231[v182] / (*&v231[v183] >> 3);
                    v194 = *&v231[v185 + 4];
                    v193 = *&v231[v185 + 8];
                    v195 = v194 * v192;
                    v196 = v194 * v192 * v193;
                    if (v257)
                    {
                      v197 = v192;
                      LODWORD(v192) = v195;
                      v195 = 1;
                    }

                    else
                    {
                      v189 = v194 * v192 * v247;
                      v197 = 1;
                    }

                    *&v274[12] = v197;
                    *&v274[20] = v192;
                    *&v274[28] = v195;
                    *&v274[36] = v196;
                    *&v274[44] = v189;
                    MPSSetNDArraysOnComputeEncoder(a2, v249, 4, 0, 0);
                    [a2 setBuffer:objc_msgSend(v259 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v259, 0, 4, 0, 0) + v209, 29}];
                    [a2 setBuffer:objc_msgSend(v231 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v231, 0, 4, 0, 0) + v208, 27}];
                    [a2 setBuffer:-[MPSTemporaryNDArray buffer](v222 offset:"buffer") atIndex:{0, 28}];
                    if ((atomic_load_explicit(&qword_27DF86C98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF86C98))
                    {
                      xmmword_27DF86CD8 = 0u;
                      xmmword_27DF86CC8 = 0u;
                      dword_27DF86CE8 = 1065353216;
                      qword_27DF86CF0 = 850045863;
                      xmmword_27DF86CF8 = 0u;
                      unk_27DF86D08 = 0u;
                      xmmword_27DF86D18 = 0u;
                      qword_27DF86D28 = 0;
                      __cxa_atexit(MPSBufferCache::~MPSBufferCache, &xmmword_27DF86CC8, &dword_2399F7000);
                      __cxa_guard_release(&qword_27DF86C98);
                    }

                    Buffer = MPSBufferCache::getBuffer(&xmmword_27DF86CC8, [objc_msgSend(a3 "commandQueue")], 0x10uLL, 0);
                    v199 = [Buffer contents];
                    *v199 = 0;
                    v199[1] = 0;
                    [a2 setBuffer:Buffer offset:0 atIndex:24];
                    objc_msgSend_setBytes_length_atIndex_(a2);
                    v200 = (v171 * (0x10uLL / (1 << v223))) << 8;
                    if (v200 <= (v170 / v239) << 12)
                    {
                      v200 = (v170 / v239) << 12;
                    }

                    v201 = v200 * ((v207 >> 3) & 6);
                    if (v201 > 0x8000 && MTLReportFailureTypeEnabled())
                    {
                      MTLReportFailure();
                    }

                    [a2 setThreadgroupMemoryLength:v201 atIndex:0];
                    v202 = v177 * v177;
                    if (!v255)
                    {
                      v202 = v175;
                    }

                    v265 = v202;
                    v266 = v179 * v180;
                    v267 = (v206 + (1 << v235) - 1) / (1 << v235);
                    v263.i64[0] = 32;
                    v263.i64[1] = v174;
                    v264 = 1;
                    [a2 dispatchThreadgroups:&v265 threadsPerThreadgroup:&v263];
                    v46 = 0;
                    MPSDecrementReadCount(v222);
                    goto LABEL_376;
                  }
                }

                v117 = v220;
                goto LABEL_255;
              }

              v107 = 1;
            }

            else if (v257 == 1)
            {
              if ((v110.i8[6] & 1) != 0 && v109 == 1 && v106 == 2 && !v107)
              {
                v111 = 0;
                goto LABEL_249;
              }
            }

            else if (!v257 && (v110.i8[6] & 1) != 0 && !v109 && v106 == 1 && v107 == 2)
            {
              v111 = 1;
              goto LABEL_249;
            }
          }

          v105.i16[0] = v106;
          v105.i16[1] = v107;
          v105.i16[2] = v109;
          v105.i16[3] = v108;
          if (vmovn_s16(v105).u32[0] != 50462976)
          {
            v112 = [objc_msgSend(v259 "descriptor")];
            v113 = [MEMORY[0x277CD7268] descriptorWithDataType:*&v259[*MEMORY[0x277CD73C8]] shape:v112];
            v114 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v113];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v259 setReadCount:{objc_msgSend(v259, "readCount") + 1}];
            }

            *&v271 = v259;
            [v234 encodeToMPSCommandEncoder:a2 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:&v271 kernelDAGObject:{1), 0, v114, 0}];
            v259 = v114;
          }

          goto LABEL_248;
        }

        if (v69 == 536870920)
        {
          v77 = *(v12 + 8);
          if (v77 > 285212703)
          {
            goto LABEL_190;
          }

          goto LABEL_188;
        }
      }

      else
      {
        switch(v69)
        {
          case 536870928:
            v85 = *(v12 + 8);
            if (v85 > 285212703)
            {
              goto LABEL_190;
            }

            goto LABEL_188;
          case 536870944:
            v83 = *(v12 + 8);
            if (v83 > 285212703)
            {
              goto LABEL_190;
            }

            goto LABEL_188;
          case 536870976:
            v71 = *(v12 + 8);
            if (v71 > 285212703)
            {
              goto LABEL_190;
            }

            goto LABEL_188;
        }
      }
    }

    else if (v69 <= 31)
    {
      if (v69 > 7)
      {
        if (v69 == 8)
        {
          v80 = *(v12 + 8);
          if (v80 > 285212703)
          {
            goto LABEL_190;
          }

          goto LABEL_188;
        }

        if (v69 == 16)
        {
          v74 = *(v12 + 8);
          if (v74 > 285212703)
          {
            goto LABEL_190;
          }

          goto LABEL_188;
        }
      }

      else
      {
        if (v69 == -1879048176)
        {
          v78 = *(v12 + 8);
          if (v78 > 285212703)
          {
            goto LABEL_190;
          }

          goto LABEL_188;
        }

        if (v69 == 4)
        {
          v72 = *(v12 + 8);
          if (v72 > 285212703)
          {
            goto LABEL_190;
          }

          goto LABEL_188;
        }
      }
    }

    else if (v69 <= 268435463)
    {
      if (v69 == 32)
      {
        v86 = *(v12 + 8);
        if (v86 > 285212703)
        {
          goto LABEL_190;
        }

        goto LABEL_188;
      }

      if (v69 == 64)
      {
        v76 = *(v12 + 8);
        if (v76 > 285212703)
        {
          goto LABEL_190;
        }

        goto LABEL_188;
      }
    }

    else
    {
      switch(v69)
      {
        case 268435464:
          v84 = *(v12 + 8);
          if (v84 > 285212703)
          {
            goto LABEL_190;
          }

          goto LABEL_188;
        case 268435472:
          v82 = *(v12 + 8);
          if (v82 > 285212703)
          {
            goto LABEL_190;
          }

          goto LABEL_188;
        case 268435488:
          v70 = *(v12 + 8);
          if (v70 > 285212703)
          {
            goto LABEL_190;
          }

LABEL_188:
          v88 = v254;
          goto LABEL_191;
      }
    }

    v89 = *(v12 + 8);
    if (v89 <= 285212703)
    {
      goto LABEL_188;
    }

    goto LABEL_190;
  }

  if (v238 != -1)
  {
    v240 = 0;
    v45 = v238;
    goto LABEL_65;
  }

LABEL_55:
  v36 = MPSNDArrayConvolutionDeviceBehavior::transposedWeights(a1, v234, a3, a2, v36, &v268, -1, 0);
  if (v36)
  {
    v240 = 1;
    v45 = v238;
    goto LABEL_65;
  }

  v46 = (*(*a1 + 112))(a1, a2, a3, a4);
LABEL_376:
  if (v268)
  {
    v269 = v268;
    operator delete(v268);
  }

  return v46;
}

void sub_239AF7D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, void *a42)
{
  __cxa_guard_abort(&qword_27DF86C90);
  operator delete(__p);
  if (a42)
  {
    operator delete(a42);
    v43 = STACK[0x2C8];
    if (STACK[0x2C8])
    {
LABEL_6:
      STACK[0x2D0] = v43;
      operator delete(v43);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v43 = STACK[0x2C8];
    if (STACK[0x2C8])
    {
      goto LABEL_6;
    }
  }

  _Unwind_Resume(a1);
}

uint64_t MPSNDArrayConvolutionWinogradA18FunctionConstructor(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2[8];
  v6 = MPSCreateFunctionConstantValues();
  [v6 setConstantValue:&v9 type:33 atIndex:115];
  AddFunctionConstantList(v6, a3);
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

void sub_239AF9180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  MPSNDArrayConvolutionDeviceBehaviorA16::~MPSNDArrayConvolutionDeviceBehaviorA16(v37);
  MEMORY[0x23EE7C8C0]();
  _Unwind_Resume(a1);
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA18::EncodeNDArrayConvolution(uint64_t a1, void *a2, void *a3, int32x4_t *a4)
{
  v8 = a4[8].i64[1];
  if ((a4[7].i8[8] & 1) == 0 && *(v8 + 304) == 4)
  {
    MPSKernel_LogInfo(v8, 1uLL, "A18 Autotuning: Using MXU direct conv\n");
    goto LABEL_10;
  }

  if ((*(*a1 + 104))(a1, a4))
  {
    MPSKernel_LogInfo(v8, 1uLL, "Using MXU Winograd\n");
    v9 = *(*a1 + 120);
    v10 = a1;
    v11 = a2;
    v12 = a3;
    v13 = a4;

    return v9(v10, v11, v12, v13);
  }

  if ((*(*a1 + 96))(a1, a4))
  {
    MPSKernel_LogInfo(v8, 1uLL, "Using MXU direct conv\n");
LABEL_10:
    v9 = *(*a1 + 112);
    v10 = a1;
    v11 = a2;
    v12 = a3;
    v13 = a4;

    return v9(v10, v11, v12, v13);
  }

  if (MPSNDArrayConvolutionDeviceBehaviorA14::IsWinogradSupported(a1, a4))
  {
    MPSKernel_LogInfo(v8, 1uLL, "Using TEC Winograd\n");

    return MPSNDArrayConvolutionDeviceBehaviorA14::EncodeNDArrayConvolutionWinograd(a1, a2, a3, a4);
  }

  else
  {
    MPSKernel_LogInfo(v8, 1uLL, "Using TEC direct conv\n");

    return MPSNDArrayConvolutionDeviceBehaviorA14::EncodeNDArrayConvolution(a1, a2, a3, a4);
  }
}

int64x2_t MPSNDArrayConvolutionDeviceBehaviorA18::GetKernelParameters@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int32x4_t *a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  if (a4)
  {
    if (ParseAutoTuningKernelParameters(a4, a3->i64, a6))
    {
      return result;
    }
  }

  else if (ParseAutoTuningKernelParameters(*(a1 + 152), a3->i64, a6))
  {
    return result;
  }

  v11 = a3[5].u64[1];
  *v77 = v11;
  v12 = a3[2];
  result = *a3;
  *&v77[4] = vuzp1q_s32(v12, *a3);
  v13 = a3[4].i64[0];
  *&v77[20] = a3[3].i64[1];
  v78 = a3[8].u32[0];
  if (*v77 ^ 0x1C000000010 | (*&v77[4] >> 32) ^ 0x1100000180 | *&v77[16] ^ 0x300000011 | __PAIR64__(a5, v13) ^ 0x1000001000000003 | v78)
  {
    if (*v77 ^ 0x1C000000010 | *&v77[8] ^ 0x1100000180 | *&v77[16] ^ 0x300000011 | __PAIR64__(a5, v13) ^ 0x1000002000000003 | v78)
    {
      if (*v77 ^ 0x1C000000010 | *&v77[8] ^ 0x1100000180 | *&v77[16] ^ 0x300000011 | __PAIR64__(a5, v13) ^ 0x1200000800000003 | v78)
      {
        if (*v77 ^ 0x40000000040 | *&v77[8] ^ 0x700000800 | *&v77[16] ^ 0x100000007 | __PAIR64__(a5, v13) ^ 0x1000001000000001 | v78)
        {
          if (*v77 ^ 0x40000000040 | *&v77[8] ^ 0x700000800 | *&v77[16] ^ 0x100000007 | __PAIR64__(a5, v13) ^ 0x1000002000000001 | v78)
          {
            if (*v77 ^ 0x40000000040 | *&v77[8] ^ 0x700000800 | *&v77[16] ^ 0x100000007 | __PAIR64__(a5, v13) ^ 0x1200000800000001 | v78)
            {
              if (*v77 == 0x1C000000010 && *&v77[8] == 0x1100000180 && *&v77[16] == 0x300000011 && __PAIR64__(a5, v13) == 0x1000001000000003 && v78 == 1)
              {
                v39 = &unk_239B89680;
              }

              else if (*v77 == 0x1C000000010 && *&v77[8] == 0x1100000180 && *&v77[16] == 0x300000011 && __PAIR64__(a5, v13) == 0x1000002000000003 && v78 == 1)
              {
                v39 = &unk_239B896A8;
              }

              else if (*v77 == 0x1C000000010 && *&v77[8] == 0x1100000180 && *&v77[16] == 0x300000011 && __PAIR64__(a5, v13) == 0x1200000800000003 && v78 == 1)
              {
                v39 = &unk_239B896D0;
              }

              else if (*v77 == 0x40000000040 && *&v77[8] == 0x700000800 && *&v77[16] == 0x100000007 && __PAIR64__(a5, v13) == 0x1000001000000001 && v78 == 1)
              {
                v39 = &unk_239B896F8;
              }

              else if (*v77 == 0x40000000040 && *&v77[8] == 0x700000800 && *&v77[16] == 0x100000007 && __PAIR64__(a5, v13) == 0x1000002000000001 && v78 == 1)
              {
                v39 = &unk_239B89720;
              }

              else
              {
                if (*v77 != 0x40000000040 || *&v77[8] != 0x700000800 || *&v77[16] != 0x100000007 || __PAIR64__(a5, v13) != 0x1200000800000001 || v78 != 1)
                {
                  if (v12.i64[0] > 1uLL)
                  {
                    v38 = 64 - __clz(v12.i64[0] - 1);
                  }

                  else
                  {
                    v38 = (v12.i64[0] == 0) << 63;
                  }

                  v51 = v12.i64[1] - 1;
                  if (v12.i64[1] > 1uLL)
                  {
                    v52 = 64 - __clz(v51);
                  }

                  else
                  {
                    v52 = (v12.i64[1] == 0) << 63;
                  }

                  v53 = 6;
                  if (v38 < v52)
                  {
                    v54 = 6;
                  }

                  else
                  {
                    v54 = 7;
                  }

                  if (v54 >= v38)
                  {
                    v54 = v38;
                  }

                  if (v54 != 7)
                  {
                    v53 = 7;
                  }

                  if (v53 >= v52)
                  {
                    v55 = v52;
                  }

                  else
                  {
                    v55 = v53;
                  }

                  if (v54 <= 4)
                  {
                    v56 = 4;
                  }

                  else
                  {
                    v56 = v54;
                  }

                  if (v55 <= 4)
                  {
                    v57 = 4;
                  }

                  else
                  {
                    v57 = v55;
                  }

                  v58 = v13 * a3[3].i64[1] * ((v12.i64[0] + (1 << v56) - 1) >> v56) * ((v51 + (1 << v57)) >> v57);
                  v59 = *(*(a2 + *MEMORY[0x277CD7350]) + 1480);
                  v60 = result.i64[1] * result.i64[0];
                  if (v78)
                  {
                    if (v11 < 0x10)
                    {
                      if (v60 > 1)
                      {
                        v61 = 64 - __clz(v60 - 1);
                      }

                      else
                      {
                        v61 = (v60 == 0) << 63;
                      }

                      if (v61 >= 5)
                      {
                        v61 = 5;
                      }

                      v67 = 4;
                      if (v61 > 4)
                      {
                        v67 = v61;
                      }

                      v72 = v11 - 1;
                      if (v11 > 1)
                      {
                        v73 = 64 - __clz(v72);
                      }

                      else
                      {
                        LODWORD(v73) = 0;
                      }

                      v74 = 1 << v73;
                      v75 = 4 * v59;
                      if (v58 < v75 && v73)
                      {
                        do
                        {
                          v76 = v74;
                          v74 >>= 1;
                        }

                        while (v76 >= 4 && (v72 + v74) / v74 * v58 < v75);
                      }

                      v64 = 0;
                      if (v74 < v11)
                      {
                        v11 = v74;
                      }

                      v63 = 1;
                    }

                    else
                    {
                      v61 = 64 - __clz(v11 - 1);
                      if (v61 >= 5)
                      {
                        v61 = 5;
                      }

                      v62 = 4 * v59;
                      v63 = 1;
                      v64 = 1;
                      if (v58 < 4 * v59 && v60 >= 2)
                      {
                        v65 = v60 - 1;
                        do
                        {
                          v66 = v60;
                          v60 >>= 1;
                          v63 = (v65 + v60) / v60;
                        }

                        while (v66 >= 4 && v63 * v58 < v62);
                      }

                      v67 = v61;
                    }
                  }

                  else
                  {
                    v68 = v60 * v11;
                    v69 = v68 - 1;
                    if (v68 > 1)
                    {
                      v61 = 64 - __clz(v69);
                    }

                    else
                    {
                      v61 = (v68 == 0) << 63;
                    }

                    v11 = 0;
                    v64 = 0;
                    if (v61 >= 5)
                    {
                      v61 = 5;
                    }

                    v67 = 4;
                    if (v61 > 4)
                    {
                      v67 = v61;
                    }

                    v63 = (v69 + (1 << v67)) >> v67;
                    v70 = 4 * v59;
                    if (((v63 << v67) + v69) / (v63 << v67) * v58 < v70 && v63 >= 2)
                    {
                      do
                      {
                        v71 = v63;
                        v63 >>= 1;
                      }

                      while (v71 >= 4 && ((v63 << (v67 & 0x7F)) + v69) / (v63 << (v67 & 0x7F)) * v58 < v70);
                      v64 = 0;
                      v11 = 0;
                    }
                  }

                  *a6 = v56;
                  *(a6 + 8) = v57;
                  *(a6 + 16) = v67;
                  *(a6 + 24) = v61 > 4;
                  *(a6 + 32) = v52 > 4;
                  *(a6 + 40) = v38 > 4;
                  result = vdupq_n_s64(1uLL);
                  *(a6 + 48) = result;
                  *(a6 + 64) = v11;
                  *(a6 + 72) = v63;
                  *(a6 + 80) = 0;
                  *(a6 + 81) = v78 != 1;
                  *(a6 + 82) = v78 != 1;
                  *(a6 + 83) = 0;
                  *(a6 + 87) = 0;
                  *(a6 + 88) = v60;
                  *(a6 + 96) = v64;
                  return result;
                }

                v39 = &unk_239B89748;
              }
            }

            else
            {
              v39 = &unk_239B89658;
            }
          }

          else
          {
            v39 = &unk_239B89630;
          }
        }

        else
        {
          v39 = &unk_239B89608;
        }
      }

      else
      {
        v39 = &unk_239B895E0;
      }
    }

    else
    {
      v39 = &unk_239B895B8;
    }
  }

  else
  {
    v39 = &a18KernelParams;
  }

  v40 = v39[9];
  v41 = (v40 >> 15) & 0x3F;
  v42 = (v40 >> 21) & 0x3F;
  v43 = vdup_n_s32(v40);
  *a6 = v40 & 7;
  *(a6 + 8) = (v40 >> 3) & 7;
  v44 = vand_s8(vshl_u32(v43, 0xFFFFFFF7FFFFFFFALL), 0x300000007);
  v45 = vand_s8(vshl_u32(v43, 0xFFFFFFF5FFFFFFF3), 0x300000003);
  *&v46 = v44.u32[0];
  *(&v46 + 1) = v44.u32[1];
  v47 = v46;
  *&v46 = v45.u32[0];
  *(&v46 + 1) = v45.u32[1];
  *(a6 + 16) = v47;
  *(a6 + 32) = v46;
  *(a6 + 48) = vdupq_n_s64(1uLL);
  *(a6 + 80) = 0;
  *(a6 + 81) = (v40 & 0x8000000) != 0;
  *(a6 + 82) = (v40 & 0x10000000) != 0;
  *(a6 + 83) = 0;
  *(a6 + 85) = 0;
  *(a6 + 86) = (v40 & 0x20000000) != 0;
  *(a6 + 87) = (v40 & 0x40000000) != 0;
  *(a6 + 96) = 0;
  if (v78)
  {
    v48 = result.i64[1] * result.i64[0];
    if (v41)
    {
      v11 = (v11 + v41 - 1) / v41;
    }

    else
    {
      *(a6 + 96) = 1;
      v48 = (v48 + v42 - 1) / v42;
    }

    *(a6 + 88) = v48;
    *(a6 + 64) = v11;
    *(a6 + 72) = 1;
  }

  else
  {
    v49 = (v11 + v41 - 1) / v41;
    if ((v40 & 0x1F8000) != 0)
    {
      v11 = 1;
    }

    v50 = result.i64[1] * result.i64[0] * v11;
    *(a6 + 64) = v49;
    *(a6 + 72) = ((v42 << v44.i8[0]) + v50 - 1) / (v42 << v44.i8[0]);
    *(a6 + 88) = v50;
  }

  return result;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA18::IsConvolutionGradientWithWeightsSupported(int a1, MPSKernel *a2, uint64_t a3)
{
  labelHash = a2[2]._labelHash;
  if (labelHash)
  {
    if (labelHash != 1)
    {
      MPSKernel_LogInfo(a2, 2uLL, "Only NCHW and NHWC data formats supported. Falling back to generic implementation\n");
      return 0;
    }

    if (HIDWORD(a2[2]._labelHash))
    {
      MPSKernel_LogInfo(a2, 2uLL, "NHWC data supported only with HWIO weights format. Falling back to generic implementation\n");
      return 0;
    }
  }

  else if ((*(&a2->super.isa + *MEMORY[0x277CD7350]))[368] > 25)
  {
    MPSKernel_LogInfo(a2, 2uLL, "NCHW + OIHW not optimized for AMD. Falling back to generic implementation\n");
    return 0;
  }

  v6 = [*(a3 + 232) inputTensorAtIndex:0];
  v7 = [*(a3 + 232) inputTensorAtIndex:2];
  LODWORD(v6) = (*(**(v6 + 32) + 24))(*(v6 + 32));
  v8 = (*(**(v7 + 32) + 24))(*(v7 + 32));
  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    MPSKernel_LogInfo(a2, 2uLL, "Linking not supported by G13 gradient with weights kernels. Falling back to generic implementation\n");
    return 0;
  }

  v10 = [*(a3 + 232) graph];
  v11 = *(v10 + 64);
  v12 = *v11;
  v13 = v11[1];
  if (*v11 == v13)
  {
    goto LABEL_20;
  }

  v14 = v10;
  v15 = -1;
  do
  {
    v16 = *v12;
    if (v16 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v14) + 32))
    {
      v15 = *(*v12 + 76);
    }

    MPSKernelDAG::GetCoreOpInputAtIndex(v14);
    ++v12;
  }

  while (v12 != v13);
  if (v15 == -1)
  {
LABEL_20:
    v15 = 0;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
      v15 = 0;
    }
  }

  v17 = [*(a3 + 16) objectAtIndexedSubscript:v15];
  v18 = *MEMORY[0x277CD73D8];
  v19 = *(v17 + v18);
  v23 = v19 <= 3u && BYTE1(v19) <= 3u && BYTE2(*(v17 + v18)) <= 3u && BYTE3(*(v17 + v18)) <= 3u && v19 == 50462976;
  if (!v23 || ((v24 = *(a3 + 112), v25 = *(v24 + v18), v25 <= 3u) ? (v26 = BYTE1(v25) > 3u) : (v26 = 1), !v26 ? (v27 = BYTE2(*(v24 + v18)) > 3u) : (v27 = 1), !v27 ? (v28 = BYTE3(*(v24 + v18)) > 3u) : (v28 = 1), !v28 ? (v29 = v25 == 50462976) : (v29 = 0), !v29))
  {
    MPSKernel_LogInfo(a2, 2uLL, "Either source, gradient or destination is transposed. Falling back to generic implementation\n");
    return 0;
  }

  v30 = *MEMORY[0x277CD73D0];
  v31 = *MEMORY[0x277CD7410];
  if ((vminv_u16(vmovn_s32(vceqq_s32(*(v17 + v30), *(v17 + v31)))) & 1) == 0)
  {
    MPSKernel_LogInfo(a2, 2uLL, "Slicing on source not supported. Falling back to generic implementation\n");
    return 0;
  }

  if ((vminv_u16(vmovn_s32(vceqq_s32(*(v24 + v30), *(v24 + v31)))) & 1) == 0)
  {
    MPSKernel_LogInfo(a2, 2uLL, "Slicing on gradient or gradient not supported. Falling back to generic implementation\n");
    return 0;
  }

  return 1;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA18::EncodeNDArrayConvolutionGradientWithWeights(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  if ((*(*a1 + 72))(a1, a2, a5))
  {
    v264 = a4;
    v292 = a2;
    v10 = [*(a5 + 232) inputTensorAtIndex:0];
    v270 = [*(a5 + 232) inputTensorAtIndex:1];
    v11 = [*(a5 + 232) inputTensorAtIndex:2];
    v295 = a5;
    v284 = [*(a5 + 232) outputTensorAtIndex:0];
    v12 = *(v10 + 8);
    v13 = 268435472;
    if (v12 == 268435472 || (v13 = -1879048176, v12 == -1879048176)) && *(v11 + 8) == v13 || (MPSForceMatrixUnit())
    {
      v233 = [*(a5 + 16) count];
      v15 = *(v292 + 232);
      v269 = v15;
      v296 = *(v292 + 224);
      v283 = *(v292 + 228);
      v289 = *(v292 + 144);
      v299 = *(v292 + 152);
      v277 = *(v292 + 200);
      v276 = *(v292 + 208);
      v16 = *(v292 + 160);
      v290 = *(v292 + 168);
      v17 = *(v292 + 192);
      v275 = *(v292 + 176);
      v274 = *(v292 + 184);
      if (*v10 != 4 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*v11 != 4 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*v284 != 4 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v18 = *(v10 + 16);
      v20 = *v18;
      v19 = v18[1];
      if (v19 != v20)
      {
        if (((v19 - v20) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      v22 = *(v284 + 16);
      v24 = *v22;
      v23 = v22[1];
      if (v23 != v24)
      {
        if (((v23 - v24) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      v25 = *(v11 + 16);
      v27 = *v25;
      v26 = v25[1];
      if (v26 != v27)
      {
        if (((v26 - v27) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      v15.i32[0] = GetAxisIndexForDataFormat(MPSNDArrayConvolution2DDataFormat)::axis[v296];
      v28 = vmovl_u8(*v15.i8).u64[0];
      v14.i32[0] = GetAxisIndexForWeightsFormat(MPSNDArrayConvolution2DWeightsFormat)::axis[v283];
      v29 = vmovl_u8(v14).u64[0];
      v30 = (8 * v28);
      v267 = *v30;
      v272 = *(8 * WORD2(v28));
      v282 = *(8 * HIWORD(v28));
      v288 = *v30;
      v278 = *(8 * WORD1(v28));
      v280 = *(8 * v29);
      v286 = *(8 * WORD1(v29));
      v31 = *(8 * WORD2(v29));
      v32 = *(8 * HIWORD(v29));
      if (v278 != v16 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v278 != v290 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v267 != v288 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v278 != v280 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v278 / v17 != v286 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v31 != v299 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v32 != v289 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v280 != v290 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v273 = v16 / v17;
      if (v286 != v16 / v17 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*(v10 + 8) != *(v11 + 8) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if ((*(v11 + 8) & 0x1000FFFF) == 0x10000008 && (*(*(v292 + *MEMORY[0x277CD7350]) + 1478) & 4) == 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v231 = a3;
      v33 = [*(v295 + 232) graph];
      v34 = *(v33 + 8);
      v35 = *v34;
      v36 = v34[1];
      if (*v34 == v36)
      {
        goto LABEL_554;
      }

      v293 = v9;
      v37 = v11;
      v38 = v31;
      v31 = v17;
      v39 = -1;
      do
      {
        v40 = *v35;
        if (v40 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v33) + 32))
        {
          v39 = *(*v35 + 76);
        }

        MPSKernelDAG::GetCoreOpInputAtIndex(v33);
        ++v35;
      }

      while (v35 != v36);
      v17 = v31;
      LODWORD(v31) = v38;
      v11 = v37;
      v9 = v293;
      if (v39 == -1)
      {
LABEL_554:
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v39 = 0;
      }

      v41 = [*(v295 + 16) objectAtIndexedSubscript:v39];
      v294 = *(v295 + 112);
      v199 = *(*(v295 + 8) + 80 * v39 + 64);
      v200 = *(v295 + 96);
      v42 = *(v295 + 208);
      v198 = *(v295 + 192);
      v43 = MEMORY[0x277CD7410];
      v291 = v41;
      v44 = (v41 + *MEMORY[0x277CD7410]);
      if (v296 == 1)
      {
        if (*v44 != v278 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v291[*v43 + 4] != v282 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v291[*v43 + 8] != v272 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v291[*v43 + 12] != v267 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v294[*v43] != v278 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v294[*v43 + 4] != v282 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v294[*v43 + 8] != v272 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v294[*v43 + 12] != v288 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v42[*v43] != v280 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v42[*v43 + 4] != v286 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v42[*v43 + 8] != v32 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v42[*v43 + 12] != v31 && (MTLReportFailureTypeEnabled() & 1) != 0)
        {
LABEL_548:
          MTLReportFailure();
        }
      }

      else
      {
        if (v44[2] != v278 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v291[*v43] != v282 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v291[*v43 + 4] != v272 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v291[*v43 + 12] != v267 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v294[*v43 + 8] != v278 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v294[*v43] != v282 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v294[*v43 + 4] != v272 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v294[*v43 + 12] != v288 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v45 = &v42[*v43];
        if (v283 == 1)
        {
          if (*(v45 + 3) != v280 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          if (*&v42[*v43 + 8] != v286 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          if (*&v42[*v43] != v32 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          if (*&v42[*v43 + 4] != v31 && (MTLReportFailureTypeEnabled() & 1) != 0)
          {
            goto LABEL_548;
          }
        }

        else
        {
          if (*v45 != v280 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          if (*&v42[*v43 + 4] != v286 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          if (*&v42[*v43 + 8] != v32 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          if (*&v42[*v43 + 12] != v31 && MTLReportFailureTypeEnabled())
          {
            goto LABEL_548;
          }
        }
      }

      v46 = *(v10 + 8);
      if (v46 > 285212703)
      {
        if (v46 <= 536870915)
        {
          if (v46 > 301989895)
          {
            if (v46 == 301989896)
            {
              v47 = 512;
              goto LABEL_123;
            }

            if (v46 == 335544328)
            {
              v47 = 544;
              goto LABEL_123;
            }
          }

          else
          {
            if (v46 == 285212704)
            {
              v47 = 416;
              goto LABEL_123;
            }

            if (v46 == 285212736)
            {
              v47 = 448;
              goto LABEL_123;
            }
          }
        }

        else if (v46 <= 536870927)
        {
          if (v46 == 536870916)
          {
            v229 = 0;
            goto LABEL_124;
          }

          if (v46 == 536870920)
          {
            v47 = 32;
            goto LABEL_123;
          }
        }

        else
        {
          switch(v46)
          {
            case 536870928:
              v47 = 64;
              goto LABEL_123;
            case 536870944:
              v47 = 96;
              goto LABEL_123;
            case 536870976:
              v47 = 128;
              goto LABEL_123;
          }
        }
      }

      else if (v46 <= 31)
      {
        if (v46 > 7)
        {
          if (v46 == 8)
          {
            v47 = 192;
            goto LABEL_123;
          }

          if (v46 == 16)
          {
            v47 = 224;
            goto LABEL_123;
          }
        }

        else
        {
          if (v46 == -1879048176)
          {
            v47 = 384;
            goto LABEL_123;
          }

          if (v46 == 4)
          {
            v47 = 160;
            goto LABEL_123;
          }
        }
      }

      else if (v46 <= 268435463)
      {
        if (v46 == 32)
        {
          v47 = 256;
          goto LABEL_123;
        }

        if (v46 == 64)
        {
          v47 = 288;
          goto LABEL_123;
        }
      }

      else
      {
        switch(v46)
        {
          case 268435464:
            v47 = 480;
            goto LABEL_123;
          case 268435472:
            v47 = 320;
            goto LABEL_123;
          case 268435488:
            v47 = 352;
LABEL_123:
            v229 = v47;
LABEL_124:
            v48 = *(v270 + 8);
            if (v48 > 285212703)
            {
              if (v48 <= 536870915)
              {
                if (v48 > 301989895)
                {
                  if (v48 == 301989896)
                  {
                    v49 = 0x4000;
                    goto LABEL_168;
                  }

                  if (v48 == 335544328)
                  {
                    v49 = 17408;
                    goto LABEL_168;
                  }
                }

                else
                {
                  if (v48 == 285212704)
                  {
                    v49 = 13312;
                    goto LABEL_168;
                  }

                  if (v48 == 285212736)
                  {
                    v49 = 14336;
                    goto LABEL_168;
                  }
                }
              }

              else if (v48 <= 536870927)
              {
                if (v48 == 536870916)
                {
                  v227 = 0;
                  goto LABEL_169;
                }

                if (v48 == 536870920)
                {
                  v49 = 1024;
                  goto LABEL_168;
                }
              }

              else
              {
                switch(v48)
                {
                  case 536870928:
                    v49 = 2048;
                    goto LABEL_168;
                  case 536870944:
                    v49 = 3072;
                    goto LABEL_168;
                  case 536870976:
                    v49 = 4096;
                    goto LABEL_168;
                }
              }
            }

            else if (v48 <= 31)
            {
              if (v48 > 7)
              {
                if (v48 == 8)
                {
                  v49 = 6144;
                  goto LABEL_168;
                }

                if (v48 == 16)
                {
                  v49 = 7168;
                  goto LABEL_168;
                }
              }

              else
              {
                if (v48 == -1879048176)
                {
                  v49 = 12288;
                  goto LABEL_168;
                }

                if (v48 == 4)
                {
                  v49 = 5120;
                  goto LABEL_168;
                }
              }
            }

            else if (v48 <= 268435463)
            {
              if (v48 == 32)
              {
                v49 = 0x2000;
                goto LABEL_168;
              }

              if (v48 == 64)
              {
                v49 = 9216;
                goto LABEL_168;
              }
            }

            else
            {
              switch(v48)
              {
                case 268435464:
                  v49 = 15360;
                  goto LABEL_168;
                case 268435472:
                  v49 = 10240;
                  goto LABEL_168;
                case 268435488:
                  v49 = 11264;
LABEL_168:
                  v227 = v49;
LABEL_169:
                  v50 = *(v11 + 8);
                  v287 = v290 / v17;
                  if (v50 > 285212703)
                  {
                    if (v50 <= 536870915)
                    {
                      if (v50 > 301989895)
                      {
                        if (v50 == 301989896)
                        {
                          v51 = 0x80000;
                          goto LABEL_213;
                        }

                        if (v50 == 335544328)
                        {
                          v51 = 557056;
                          goto LABEL_213;
                        }
                      }

                      else
                      {
                        if (v50 == 285212704)
                        {
                          v51 = 425984;
                          goto LABEL_213;
                        }

                        if (v50 == 285212736)
                        {
                          v51 = 458752;
                          goto LABEL_213;
                        }
                      }
                    }

                    else if (v50 <= 536870927)
                    {
                      if (v50 == 536870916)
                      {
                        v225 = 0;
                        goto LABEL_214;
                      }

                      if (v50 == 536870920)
                      {
                        v51 = 0x8000;
                        goto LABEL_213;
                      }
                    }

                    else
                    {
                      switch(v50)
                      {
                        case 536870928:
                          v51 = 0x10000;
                          goto LABEL_213;
                        case 536870944:
                          v51 = 98304;
                          goto LABEL_213;
                        case 536870976:
                          v51 = 0x20000;
                          goto LABEL_213;
                      }
                    }
                  }

                  else if (v50 <= 31)
                  {
                    if (v50 > 7)
                    {
                      if (v50 == 8)
                      {
                        v51 = 196608;
                        goto LABEL_213;
                      }

                      if (v50 == 16)
                      {
                        v51 = 229376;
                        goto LABEL_213;
                      }
                    }

                    else
                    {
                      if (v50 == -1879048176)
                      {
                        v51 = 393216;
                        goto LABEL_213;
                      }

                      if (v50 == 4)
                      {
                        v51 = 163840;
                        goto LABEL_213;
                      }
                    }
                  }

                  else if (v50 <= 268435463)
                  {
                    if (v50 == 32)
                    {
                      v51 = 0x40000;
                      goto LABEL_213;
                    }

                    if (v50 == 64)
                    {
                      v51 = 294912;
                      goto LABEL_213;
                    }
                  }

                  else
                  {
                    switch(v50)
                    {
                      case 268435464:
                        v51 = 491520;
                        goto LABEL_213;
                      case 268435472:
                        v51 = 327680;
                        goto LABEL_213;
                      case 268435488:
                        v51 = 360448;
LABEL_213:
                        v225 = v51;
LABEL_214:
                        v52 = *(v284 + 8);
                        if (v52 > 285212703)
                        {
                          if (v52 <= 536870915)
                          {
                            if (v52 > 301989895)
                            {
                              if (v52 == 301989896)
                              {
                                v53 = 16;
                                goto LABEL_258;
                              }

                              if (v52 == 335544328)
                              {
                                v53 = 17;
                                goto LABEL_258;
                              }
                            }

                            else
                            {
                              if (v52 == 285212704)
                              {
                                v53 = 13;
                                goto LABEL_258;
                              }

                              if (v52 == 285212736)
                              {
                                v53 = 14;
                                goto LABEL_258;
                              }
                            }
                          }

                          else if (v52 <= 536870927)
                          {
                            if (v52 == 536870916)
                            {
                              v223 = 0;
                              goto LABEL_259;
                            }

                            if (v52 == 536870920)
                            {
                              v53 = 1;
                              goto LABEL_258;
                            }
                          }

                          else
                          {
                            switch(v52)
                            {
                              case 536870928:
                                v53 = 2;
                                goto LABEL_258;
                              case 536870944:
                                v53 = 3;
                                goto LABEL_258;
                              case 536870976:
                                v53 = 4;
                                goto LABEL_258;
                            }
                          }
                        }

                        else if (v52 <= 31)
                        {
                          if (v52 > 7)
                          {
                            if (v52 == 8)
                            {
                              v53 = 6;
                              goto LABEL_258;
                            }

                            if (v52 == 16)
                            {
                              v53 = 7;
                              goto LABEL_258;
                            }
                          }

                          else
                          {
                            if (v52 == -1879048176)
                            {
                              v53 = 12;
                              goto LABEL_258;
                            }

                            if (v52 == 4)
                            {
                              v53 = 5;
                              goto LABEL_258;
                            }
                          }
                        }

                        else if (v52 <= 268435463)
                        {
                          if (v52 == 32)
                          {
                            v53 = 8;
                            goto LABEL_258;
                          }

                          if (v52 == 64)
                          {
                            v53 = 9;
                            goto LABEL_258;
                          }
                        }

                        else
                        {
                          switch(v52)
                          {
                            case 268435464:
                              v53 = 15;
                              goto LABEL_258;
                            case 268435472:
                              v53 = 10;
                              goto LABEL_258;
                            case 268435488:
                              v53 = 11;
LABEL_258:
                              v223 = v53;
LABEL_259:
                              v54 = 0;
                              v391[0] = v282;
                              v391[1] = v272;
                              v391[2] = v282;
                              v391[3] = v272;
                              v391[4] = v273;
                              v391[5] = v290 / v17;
                              v391[6] = v17;
                              v391[7] = v289;
                              v391[8] = v299;
                              v391[9] = v277;
                              v391[10] = v276;
                              v391[11] = v288;
                              v391[12] = v275;
                              v391[13] = v274;
                              v392 = v269;
                              v393 = v296;
                              v394 = v283;
                              v390 = 0;
                              v389 = 0u;
                              v388 = 0u;
                              v387 = 0u;
                              v386 = 0u;
                              v385 = 0u;
                              v384 = 0u;
                              if (*(v292 + 272) == 1)
                              {
                                v54 = *(v292 + 264);
                              }

                              (*(*v9 + 136))(&v384, v9, v292, v391, v54, *(v10 + 8), *(v270 + 8), *(v11 + 8));
                              v268 = v17;
                              v254 = v384;
                              v221 = BYTE8(v384);
                              v55 = 1 << SBYTE8(v384);
                              v252 = v385;
                              v56 = DWORD2(v385);
                              v257 = v386;
                              v255 = BYTE8(v386);
                              v246 = v390;
                              if ((v55 & 0xF) != 0 && MTLReportFailureTypeEnabled())
                              {
                                MTLReportFailure();
                              }

                              v57 = 1 << v254;
                              if (((1 << v254) & 0xFLL) != 0 && MTLReportFailureTypeEnabled())
                              {
                                MTLReportFailure();
                              }

                              v271 = 1 << v252;
                              if ((v271 & 0xF) != 0 && MTLReportFailureTypeEnabled())
                              {
                                MTLReportFailure();
                              }

                              v266 = 1 << v257;
                              if (v55 < 16 * v266 && MTLReportFailureTypeEnabled())
                              {
                                MTLReportFailure();
                              }

                              v265 = 1 << v255;
                              if (v57 < 16 * v265 && MTLReportFailureTypeEnabled())
                              {
                                MTLReportFailure();
                              }

                              if ((v271 & 0xF) != 0 && MTLReportFailureTypeEnabled())
                              {
                                MTLReportFailure();
                              }

                              v58 = 1 << v56;
                              v59 = v271 / v58;
                              v245 = v58;
                              if (v271 % v58 && MTLReportFailureTypeEnabled())
                              {
                                MTLReportFailure();
                              }

                              if ((v59 & 0xF) != 0 && MTLReportFailureTypeEnabled())
                              {
                                MTLReportFailure();
                              }

                              v60 = v57 >> 4;
                              v207 = v265 * v266;
                              if (v207 > (v55 >> 4) * (v57 >> 4) && MTLReportFailureTypeEnabled())
                              {
                                MTLReportFailure();
                              }

                              v263 = 1 << v254;
                              v61 = *MEMORY[0x277CD7400];
                              v62 = *MEMORY[0x277CD73C8];
                              v63 = *&v291[v61] / (*&v291[v62] >> 3);
                              v64 = *&v294[v61] / (*&v294[v62] >> 3);
                              if (v296 == 1)
                              {
                                v65 = v278;
                              }

                              else
                              {
                                v65 = v282;
                              }

                              if (v296 == 1)
                              {
                                v66 = v278;
                              }

                              else
                              {
                                v66 = v282;
                              }

                              if (v296 == 1)
                              {
                                v67 = v282;
                              }

                              else
                              {
                                v67 = *&v294[v61] / (*&v294[v62] >> 3);
                              }

                              v203 = v67;
                              if (v296 == 1)
                              {
                                v68 = v282;
                              }

                              else
                              {
                                v68 = *&v291[v61] / (*&v291[v62] >> 3);
                              }

                              v202 = v68;
                              if (v296 == 1)
                              {
                                v69 = *&v294[v61] / (*&v294[v62] >> 3);
                              }

                              else
                              {
                                v69 = v278;
                              }

                              v204 = v69;
                              if (v296 == 1)
                              {
                                v70 = *&v291[v61] / (*&v291[v62] >> 3);
                              }

                              else
                              {
                                v70 = v278;
                              }

                              v205 = v70;
                              v71 = *&v42[v61];
                              v72 = *&v42[v62] >> 3;
                              v73 = v71 / v72;
                              if (v283)
                              {
                                v74 = v71 / v72;
                              }

                              else
                              {
                                LODWORD(v74) = v289;
                              }

                              if (v283)
                              {
                                v75 = v280;
                              }

                              else
                              {
                                v75 = v73;
                              }

                              v241 = v75;
                              v242 = v74;
                              v76 = *&v269 == 0;
                              v77 = v275 == 1 && v274 == 1;
                              v78 = v77;
                              v237 = v78;
                              if (!v77)
                              {
                                v76 = 0;
                              }

                              v79 = v277 == 1 && v276 == 1;
                              v80 = v79;
                              if (!v79)
                              {
                                v76 = 0;
                              }

                              v81 = v289 == 1 && v299 == 1;
                              v82 = v81;
                              v243 = v82;
                              if (!v81)
                              {
                                v76 = 0;
                              }

                              v239 = v76;
                              v279 = v55;
                              if (v296)
                              {
                                v259 = BYTE7(v389);
                              }

                              else if (BYTE7(v389) && (*(*(v292 + *MEMORY[0x277CD7350]) + 1478) & v237 & 1) != 0)
                              {
                                v259 = 1;
                              }

                              else
                              {
                                v259 = 0;
                                v84 = v66 == v64 && v65 == v63;
                                v239 = v76 && v84;
                              }

                              v258 = v388;
                              v244 = *(&v389 + 1);
                              v85 = *(v11 + 8);
                              v249 = v56;
                              if (v85 == 268435472)
                              {
                                v86 = v388;
                              }

                              else
                              {
                                if (v85 <= 268435487)
                                {
                                  v86 = v388;
                                  if (v85 == -1879048176 || v85 == 268435464)
                                  {
                                    goto LABEL_344;
                                  }
                                }

                                else
                                {
                                  v86 = v388;
                                  if (v85 == 268435488 || v85 == 335544328 || v85 == 301989896)
                                  {
                                    goto LABEL_344;
                                  }
                                }

                                if (MTLReportFailureTypeEnabled())
                                {
                                  MTLReportFailure();
                                }
                              }

LABEL_344:
                              if (v80)
                              {
                                v88 = 2;
                              }

                              else
                              {
                                v88 = 0;
                              }

                              v209 = v283 == 1;
                              v281 = (v282 * v272);
                              v247 = (v281 * v288);
                              v213 = v88;
                              if (v296 == 1)
                              {
                                v90 = v245 * v271;
                                if (v246)
                                {
                                  v215 = v288 % v90;
                                  v250 = 1;
                                  v201 = v244;
                                  v91 = (v281 + v244 - 1) / v244;
                                  v262 = v42;
                                  v195 = v60;
                                  if (v283 == 1)
                                  {
                                    goto LABEL_350;
                                  }
                                }

                                else
                                {
                                  v215 = v281 % v90;
                                  v91 = 1;
                                  v201 = v244;
                                  v250 = (v288 + v86 - 1) / v86;
                                  v262 = v42;
                                  v195 = v60;
                                  if (v283 == 1)
                                  {
LABEL_350:
                                    if (v289 == v73)
                                    {
                                      v92 = v243 ^ 1;
                                    }

                                    else
                                    {
                                      v92 = 1;
                                    }

LABEL_364:
                                    v94 = v389;
                                    v95 = BYTE1(v389);
                                    v96 = BYTE2(v389);
                                    v97 = BYTE3(v389);
                                    v248 = v250 * v91;
                                    v98 = v250 * v91 > 1;
                                    v99 = [*(v295 + 232) finalOp];
                                    LODWORD(v105) = (*(*v99 + 16))(v99);
                                    v100 = 8 * v94;
                                    v101 = 16 * v95;
                                    v103 = v269.i64[0] + v277 * (v289 - 1) + (v282 - 1) * v275;
                                    v104 = v269.i64[1] + v276 * (v299 - 1) + (v272 - 1) * v274;
                                    LODWORD(v105) = v105 ^ 1;
                                    if (*(v284 + 8) != 268435488)
                                    {
                                      LODWORD(v105) = 1;
                                    }

                                    if (v296)
                                    {
                                      v106 = 1;
                                    }

                                    else
                                    {
                                      v106 = v283 == 1;
                                    }

                                    if (v106)
                                    {
                                      v105 = v105;
                                    }

                                    else
                                    {
                                      v105 = 1;
                                    }

                                    v285 = v105;
                                    if (v259)
                                    {
                                      v107 = 0;
                                    }

                                    else if ((v269.i64[0] | v269.i64[1]) > -1 && v104 < v272 && v103 < v282)
                                    {
                                      v107 = 0;
                                    }

                                    else
                                    {
                                      v107 = 0x1000000;
                                    }

                                    v110 = v231;
                                    v111 = v98 | v92;
                                    v102 = (v287 % v279 == 0) << 8;
                                    v87 = v268 == 1;
                                    v89 = v273 % v263 == 0;
                                    v211 = v296 == 0;
                                    if (v296)
                                    {
                                      v112 = (v209 << 31) | (v211 << 26) & 0xC5FFFFFF | (4 * v87) & 0xC5FFFFFF | v213 & 0xC5FFFFFF | (v237 | ((v254 & 7) << 12)) & 0xC5FFFFFF | (((v221 & 7) << 9) | ((v252 & 7) << 15) | ((v249 & 3) << 18)) & 0xC5FFFFFF | (((v257 & 3) << 20) | ((v255 & 3) << 22) | v100 | v101) & 0xC5FFFFFF | ((32 * v96) | (v97 << 6)) & 0xC5FFFFFF | (v89 << 7) & 0xC5FFFFFF | (v102 | v107) & 0xC5FFFFFF;
                                      v113 = v233;
                                      v114 = 1 << v254;
                                      v115 = v215;
                                    }

                                    else
                                    {
                                      v113 = v233;
                                      v114 = 1 << v254;
                                      v115 = v215;
                                      if (v239)
                                      {
                                        v116 = ((((v247 + v271 - 1) & -v271) < 0x10000) << 25) & 0x1FFFFFFF;
                                        if (v258)
                                        {
                                          v116 = ((((v281 + v271 - 1) & -v271) < 0x10000) << 25) & 0xFFFFFFF;
                                        }
                                      }

                                      else if (v272 < 0x8000 && v282 < 0x8000 && v104 == v104 && v103 == v103)
                                      {
                                        v116 = 0x2000000;
                                      }

                                      else
                                      {
                                        v116 = 0;
                                      }

                                      v112 = (v209 << 31) | (v211 << 26) & 0xC5FFFFFF | (4 * v87) & 0xC5FFFFFF | v213 & 0xC5FFFFFF | (v237 | ((v254 & 7) << 12)) & 0xC5FFFFFF | (((v221 & 7) << 9) | ((v252 & 7) << 15) | ((v249 & 3) << 18)) & 0xC5FFFFFF | (((v257 & 3) << 20) | ((v255 & 3) << 22) | v100 | v101) & 0xC5FFFFFF | ((32 * v96) | (v97 << 6)) & 0xC5FFFFFF | (v89 << 7) & 0xC5FFFFFF | (v102 | v107) & 0xC5FFFFFF | ((v258 != 0) << 27) & 0xCDFFFFFF | ((((v281 + v271 - 1) & -v271) < 0x10000) << 29) | ((((v247 + v271 - 1) & -v271) < 0x10000) << 28) | v116;
                                    }

                                    v377 = -1;
                                    v376 = -1;
                                    v378 = v112 & 0xBFFFFFFF | ((v115 != 0) << 30);
                                    v379 = v227 | v229 | v225 | v223;
                                    v380 = 0u;
                                    v381 = 0u;
                                    v194 = v113 | 0x10100;
                                    v382 = v194;
                                    v383 = 0;
                                    if (v111 & 1 | ((v285 & 1) == 0))
                                    {
                                      v120 = 0;
                                    }

                                    else
                                    {
                                      v120 = *(v295 + 232);
                                    }

                                    v190 = *(v292 + *MEMORY[0x277CD7360]);
                                    v192 = *(v292 + *MEMORY[0x277CD7368]);
                                    v188 = v120;
                                    MPSLibrary::CreateUberShaderKey();
                                    PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
                                    [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
                                    if (32 * v245 * v207 > [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup] && MTLReportFailureTypeEnabled())
                                    {
                                      MTLReportFailure();
                                    }

                                    v122 = 1 << v255;
                                    if (v296)
                                    {
                                      v123 = v245;
                                    }

                                    else
                                    {
                                      v123 = 1 << v255;
                                    }

                                    if (v296)
                                    {
                                      v124 = 1 << v257;
                                    }

                                    else
                                    {
                                      v122 = 1 << v257;
                                      v124 = v245;
                                    }

                                    v217 = v122;
                                    v218 = v123;
                                    v216 = v124;
                                    v125 = v299 * v289;
                                    if (v389 == 1)
                                    {
                                      v126 = (v114 + ((v273 & 0xFFFFFFFFFFFFFFF0) + 16) * v299 * v289 - 1) / v114;
                                    }

                                    else
                                    {
                                      v126 = (v273 + v114 - 1) / v114 * v299 * v289;
                                    }

                                    v214 = v126;
                                    v127 = v387;
                                    MEMORY[0x23EE7C450](v375, v264, 0);
                                    TempBuffer = [v262 buffer];
                                    v253 = v299 * v289;
                                    if (v111)
                                    {
                                      TempBuffer = MPSAutoCache::GetTempBuffer(v375, 4 * v248 * ((v125 * v273 * v290 + 3) & 0xFFFFFFFFFFFFFFFCLL), 0);
                                    }

                                    MPSGetUShortDivisorMagicNumber();
                                    v240 = v128;
                                    MPSGetUIntDivisorMagicNumber();
                                    v238 = v129;
                                    MPSGetUShortDivisorMagicNumber();
                                    v236 = v130;
                                    MPSGetUIntDivisorMagicNumber();
                                    v235 = v131;
                                    MPSGetUShortDivisorMagicNumber();
                                    v234 = v132;
                                    MPSGetUIntDivisorMagicNumber();
                                    v232 = v133;
                                    MPSGetUShortDivisorMagicNumber();
                                    v230 = v134;
                                    MPSGetUShortDivisorMagicNumber();
                                    v228 = v135;
                                    MPSGetUIntDivisorMagicNumber();
                                    v226 = v136;
                                    MPSGetUIntDivisorMagicNumber();
                                    v224 = v137;
                                    MPSGetUShortDivisorMagicNumber();
                                    v222 = v138;
                                    MPSGetUShortDivisorMagicNumber();
                                    v220 = v139;
                                    MPSGetUIntDivisorMagicNumber();
                                    v219 = v140;
                                    MPSGetUShortDivisorMagicNumber();
                                    v212 = v141;
                                    MPSGetUShortDivisorMagicNumber();
                                    v210 = v142;
                                    MPSGetUShortDivisorMagicNumber();
                                    v208 = v143;
                                    MPSGetUIntDivisorMagicNumber();
                                    v206 = v144;
                                    MPSGetUIntDivisorMagicNumber();
                                    v197 = v145;
                                    MPSGetUIntDivisorMagicNumber();
                                    v297 = v146;
                                    MPSGetUIntDivisorMagicNumber();
                                    v260 = v147;
                                    MPSGetUShortDivisorMagicNumber();
                                    v196 = v148;
                                    MPSGetUIntDivisorMagicNumber();
                                    v251 = v149;
                                    v150 = 0;
                                    v328 = 0u;
                                    v323 = 0u;
                                    v151 = v241;
                                    if (v111)
                                    {
                                      v151 = v290;
                                    }

                                    LODWORD(v328) = v253 * ((v273 + 15) >> 4);
                                    DWORD1(v328) = v203 * v272 * v204;
                                    DWORD2(v328) = v202 * v272 * v205;
                                    HIDWORD(v328) = v203 * v272;
                                    v153 = v238;
                                    v152 = v240;
                                    HIWORD(v152) = 0;
                                    HIDWORD(v153) = 0;
                                    v155 = v235;
                                    v154 = v236;
                                    HIWORD(v154) = 0;
                                    HIDWORD(v155) = 0;
                                    v157 = v232;
                                    v156 = v234;
                                    HIWORD(v156) = 0;
                                    HIDWORD(v157) = 0;
                                    v159 = v228;
                                    v158 = v230;
                                    HIWORD(v158) = 0;
                                    HIWORD(v159) = 0;
                                    v161 = v224;
                                    v160 = v226;
                                    HIDWORD(v160) = 0;
                                    HIDWORD(v161) = 0;
                                    v163 = v220;
                                    v162 = v222;
                                    HIWORD(v162) = 0;
                                    HIWORD(v163) = 0;
                                    v164 = v219;
                                    HIDWORD(v164) = 0;
                                    v166 = v210;
                                    v165 = v212;
                                    HIWORD(v165) = 0;
                                    HIWORD(v166) = 0;
                                    v168 = v206;
                                    v167 = v208;
                                    HIWORD(v167) = 0;
                                    HIDWORD(v168) = 0;
                                    v170 = v196;
                                    v169 = v197;
                                    HIDWORD(v169) = 0;
                                    v171 = v297;
                                    HIDWORD(v171) = 0;
                                    v172 = v260;
                                    HIDWORD(v172) = 0;
                                    HIWORD(v170) = 0;
                                    *&v323 = __PAIR64__(v151, (v125 * v273 * v290 + 3) & 0xFFFFFFFC);
                                    v326 = 0uLL;
                                    WORD4(v323) = v127;
                                    WORD5(v323) = WORD4(v127);
                                    v324 = v152;
                                    v325 = 0uLL;
                                    LODWORD(v326) = 0;
                                    v327 = v153;
                                    v329 = v202 * v272;
                                    v330 = v203;
                                    v331 = v202;
                                    v332 = v258;
                                    v333 = v244;
                                    v334 = v201;
                                    v335 = v247;
                                    v336 = v154;
                                    v337 = v156;
                                    v338 = v155;
                                    v339 = v157;
                                    v340 = v170;
                                    v341 = v158;
                                    v342 = v159;
                                    v261 = v172;
                                    v343 = v172;
                                    v298 = v171;
                                    v344 = v171;
                                    v345 = v160;
                                    v346 = v161;
                                    v347 = v162;
                                    v348 = v163;
                                    v349 = v164;
                                    v350 = v165;
                                    v351 = v166;
                                    v352 = v167;
                                    v353 = v168;
                                    v354 = v169;
                                    v355 = v273;
                                    v356 = v287;
                                    v357 = v290;
                                    v358 = v289;
                                    v359 = v242;
                                    v360 = v299;
                                    v361 = v268;
                                    v362 = v288;
                                    v363 = __PAIR64__(v272, v282);
                                    v364 = __PAIR64__(v272, v282);
                                    v365 = vmovn_s64(v269);
                                    v367 = v274;
                                    v366 = v275;
                                    v369 = v276;
                                    v368 = v277;
                                    v370 = v282 * v272;
                                    v371 = v205;
                                    v372 = v204;
                                    v373 = v204 * v272;
                                    v374 = (v205 * v272);
                                    if (BYTE1(v389) == 1)
                                    {
                                      v150 = v271 * v263 * (*&v291[*MEMORY[0x277CD73C8]] >> 3);
                                      if (BYTE2(v389) != 1)
                                      {
                                        goto LABEL_420;
                                      }
                                    }

                                    else if (BYTE2(v389) != 1)
                                    {
LABEL_420:
                                      if (v249)
                                      {
                                        goto LABEL_421;
                                      }

                                      goto LABEL_423;
                                    }

                                    v150 += v271 * v279 * (*&v294[*MEMORY[0x277CD73C8]] >> 3);
                                    if (v249)
                                    {
LABEL_421:
                                      if (v150 <= (v266 * (v245 >> 1) * v265 * (v195 / v265)) << 10)
                                      {
                                        v150 = (v266 * (v245 >> 1) * v265 * (v195 / v265)) << 10;
                                      }
                                    }

LABEL_423:
                                    [v110 setComputePipelineState:PipelineStateForMPSKey];
                                    MPSLibrary::ReleaseComputeState();
                                    MPSLibrary::ReleaseMPSKey();
                                    MPSSetNDArraysOnComputeEncoder(v110, v295, 4, 0, 0);
                                    [v110 setBuffer:objc_msgSend(v294 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v294, 0, 4, 0, 0) + v200, 29}];
                                    [v110 setBuffer:objc_msgSend(v291 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v291, 0, 4, 0, 0) + v199, 28}];
                                    if (v111)
                                    {
                                      v173 = 0;
                                      v174 = TempBuffer;
                                    }

                                    else
                                    {
                                      v175 = MPSGetLinearOffsetBytes(v262, 0, 4, 0, 0);
                                      v174 = [v262 buffer];
                                      v173 = v175 + v198;
                                    }

                                    [v110 setBuffer:v174 offset:v173 atIndex:27];
                                    objc_msgSend_setBytes_length_atIndex_(v110);
                                    [v110 setThreadgroupMemoryLength:v150 atIndex:0];
                                    [v110 setBuffer:0 offset:0 atIndex:25];
                                    v302 = *(&v127 + 1) * v127;
                                    v303 = (*(&v127 + 1) + (v287 + v279 - 1) / v279 * v268 - 1) / *(&v127 + 1) * ((v127 + v214 - 1) / v127);
                                    v304 = v248;
                                    v315 = 32 * v216;
                                    v316 = v217;
                                    v317 = v218;
                                    [v110 dispatchThreadgroups:&v302 threadsPerThreadgroup:&v315];
                                    if (v111)
                                    {
                                      v176 = 0;
                                      v177 = 8;
                                      if (!v243)
                                      {
                                        v177 = 0;
                                      }

                                      v316 = -1;
                                      v315 = -1;
                                      v317 = -1;
                                      v318 = (4 * (v283 == 1)) | (2 * (v283 != 0)) | v177 | v285;
                                      v319 = 0u;
                                      v320 = 0u;
                                      v321 = v194;
                                      v322 = 0;
                                      if (v285)
                                      {
                                        v176 = *(v295 + 232);
                                      }

                                      v191 = *(v292 + *MEMORY[0x277CD7360]);
                                      v193 = *(v292 + *MEMORY[0x277CD7368]);
                                      v189 = v176;
                                      MPSLibrary::CreateUberShaderKey();
                                      [v110 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v189, v191, v193, 0, 0}];
                                      MPSLibrary::ReleaseComputeState();
                                      MPSLibrary::ReleaseMPSKey();
                                      MPSSetNDArraysOnComputeEncoder(v110, v295, 4, 0, 0);
                                      [v110 setBuffer:TempBuffer offset:0 atIndex:28];
                                      [v110 setBuffer:objc_msgSend(v262 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v262, 0, 4, 0, 0) + v198, 27}];
                                      if (v283)
                                      {
                                        v178 = v290;
                                      }

                                      else
                                      {
                                        v178 = (v290 + 3) >> 2;
                                      }

                                      MPSGetUIntDivisorMagicNumber();
                                      v179 = v251;
                                      HIDWORD(v179) = 0;
                                      v180 = v273 * v178 * v253;
                                      HIDWORD(v181) = 0;
                                      if (v283)
                                      {
                                        v182 = v253 - 1;
                                        if (v253 > 1)
                                        {
                                          v183 = 64 - __clz(v182);
                                        }

                                        else
                                        {
                                          v183 = (v253 == 0) << 63;
                                        }

                                        if (v183 >= 4)
                                        {
                                          LOWORD(v183) = 4;
                                        }

                                        v185 = (1 << v183);
                                        v186 = 0x100uLL >> v183;
                                        v187 = (v182 + v185) >> v183;
                                        v184 = (v273 * v290 + (0x100uLL >> v183) - 1) / (0x100uLL >> v183);
                                      }

                                      else
                                      {
                                        LOWORD(v183) = 0;
                                        v184 = (v180 + 255) >> 8;
                                        v185 = 1;
                                        v186 = 256;
                                        v187 = 1;
                                      }

                                      v302 = __PAIR64__(v178, v180);
                                      LODWORD(v303) = v248;
                                      HIDWORD(v303) = v290 & 3;
                                      v304 = __PAIR64__(v241, v290);
                                      v305 = (v125 * v273 * v290 + 3) & 0xFFFFFFFC;
                                      v306 = v273;
                                      v307 = v289;
                                      v308 = v299;
                                      v309 = v242;
                                      v310 = v298;
                                      v311 = v261;
                                      v312 = v179;
                                      v314 = 0u;
                                      v313 = v181;
                                      LOWORD(v314) = v183;
                                      WORD1(v314) = v185;
                                      objc_msgSend_setBytes_length_atIndex_(v110);
                                      [v110 setBuffer:0 offset:0 atIndex:25];
                                      if (!((v283 != 1) | v243 & 1))
                                      {
                                        [v110 setThreadgroupMemoryLength:(4 * v186 + 4) * v185 atIndex:0];
                                      }

                                      v301[0] = v184;
                                      v301[1] = v187;
                                      v301[2] = 1;
                                      v300[0] = v186;
                                      v300[1] = v185;
                                      v300[2] = 1;
                                      [v110 dispatchThreadgroups:v301 threadsPerThreadgroup:v300];
                                    }

                                    MPSAutoCache::~MPSAutoCache(v375);
                                    operator delete(0);
                                    operator delete(0);
                                    operator delete(0);
                                    return 0;
                                  }
                                }
                              }

                              else
                              {
                                v93 = *(&v388 + 1);
                                if (v86)
                                {
                                  v250 = (v288 + v86 - 1) / v86;
                                  if (*(&v388 + 1) >= (v281 - 1 + v271) / v271)
                                  {
                                    v93 = (v281 - 1 + v271) / v271;
                                  }

                                  v215 = v281 % (v93 * v271);
                                  v201 = v93 * v271;
                                  v91 = (v93 * v271 + v281 - 1) / (v93 * v271);
                                  v262 = v42;
                                  v195 = v60;
                                  if (v283 == 1)
                                  {
                                    goto LABEL_350;
                                  }
                                }

                                else
                                {
                                  if (*(&v388 + 1) >= (v247 - 1 + v271) / v271)
                                  {
                                    v93 = (v247 - 1 + v271) / v271;
                                  }

                                  v215 = v247 % (v93 * v271);
                                  v250 = 1;
                                  v201 = v93 * v271;
                                  v91 = (v93 * v271 + v247 - 1) / (v93 * v271);
                                  v262 = v42;
                                  v195 = v60;
                                  if (v283 == 1)
                                  {
                                    goto LABEL_350;
                                  }
                                }
                              }

                              v92 = 0;
                              goto LABEL_364;
                          }
                        }

                        v53 = 18;
                        goto LABEL_258;
                    }
                  }

                  v51 = 589824;
                  goto LABEL_213;
              }
            }

            v49 = 18432;
            goto LABEL_168;
        }
      }

      v47 = 576;
      goto LABEL_123;
    }

    return MPSNDArrayConvolutionDeviceBehaviorA14::EncodeNDArrayConvolutionGradientWithWeights(v9, v292, a3, v264, a5);
  }

  else
  {

    return MPSNDArrayConvolutionDeviceBehavior::EncodeNDArrayConvolutionGradientWithWeights(v9, a2, a3, a4, a5);
  }
}

void sub_239AFCF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, void *a58)
{
  operator delete(__p);
  if (a58)
  {
    operator delete(a58);
    if (!STACK[0x250])
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!STACK[0x250])
  {
    goto LABEL_3;
  }

  operator delete(STACK[0x250]);
  _Unwind_Resume(a1);
}

void MPSNDArrayConvolutionDeviceBehaviorA18::~MPSNDArrayConvolutionDeviceBehaviorA18(MPSNDArrayConvolutionDeviceBehaviorA18 *this)
{
  *this = &unk_284CAFBF8;
  v2 = *(this + 33);
  if (v2)
  {
    free(v2);
    *(this + 33) = 0;
  }

  *this = &unk_284CAFC98;
  free(*(this + 19));
  *this = &unk_284CAFAF0;
  free(*(this + 19));
  *this = &unk_284CAFD38;
  free(*(this + 19));
  *this = &unk_284CAF9A0;
  free(*(this + 9));
}

{
  *this = &unk_284CAFBF8;
  v2 = *(this + 33);
  if (v2)
  {
    free(v2);
    *(this + 33) = 0;
  }

  *this = &unk_284CAFC98;
  free(*(this + 19));
  *this = &unk_284CAFAF0;
  free(*(this + 19));
  *this = &unk_284CAFD38;
  free(*(this + 19));
  *this = &unk_284CAF9A0;
  free(*(this + 9));

  JUMPOUT(0x23EE7C8C0);
}

char *___ZL24MPSDisableAutoTuneTablesv_block_invoke()
{
  result = getenv("MPS_DISABLE_AUTO_TUNE_TABLES");
  if (result)
  {
    __endptr = result;
    v1 = result;
    result = strtol(result, &__endptr, 0);
    if (__endptr != v1)
    {
      _MergedGlobals_35 = result != 0;
    }
  }

  return result;
}

char *___ZL19MPSWinogradForceF16v_block_invoke()
{
  result = getenv("MPSNDARRAY_WINOGRAD_FP16_INTERMEDIATE");
  if (result)
  {
    byte_27DF86C81 = 1;
  }

  return result;
}

char *___ZL20MPSWinogradForceFP19v_block_invoke()
{
  result = getenv("MPSNDARRAY_WINOGRAD_FP19_INTERMEDIATE");
  if (result)
  {
    byte_27DF86C82 = 1;
  }

  return result;
}

char *___ZL20MPSEnableAutoTuneLogv_block_invoke_0()
{
  result = getenv("MPS_LOG_AUTO_TUNE");
  if (result)
  {
    __endptr = result;
    v1 = result;
    result = strtol(result, &__endptr, 0);
    if (__endptr != v1)
    {
      byte_27DF86C83 = result != 0;
    }
  }

  return result;
}

uint64_t EncodeArrayPrune(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v8 = *MEMORY[0x277CD73C8];
  v9 = *&v7[v8];
  v10 = *&v7[*MEMORY[0x277CD7400]] / (v9 >> 3);
  v11 = *(a4 + 208);
  v33 = 0;
  v34 = v10;
  v12 = MEMORY[0x277CD73D0];
  v35 = *&v7[*MEMORY[0x277CD73D0]];
  if (v9 > 285212703)
  {
    if (v9 <= 536870915)
    {
      if (v9 > 301989895)
      {
        if (v9 == 301989896)
        {
          v13 = 512;
          v14 = *&v11[v8];
          if (v14 <= 285212703)
          {
            goto LABEL_60;
          }

          goto LABEL_82;
        }

        if (v9 == 335544328)
        {
          v13 = 544;
          v14 = *&v11[v8];
          if (v14 <= 285212703)
          {
            goto LABEL_60;
          }

          goto LABEL_82;
        }
      }

      else
      {
        if (v9 == 285212704)
        {
          v13 = 416;
          v14 = *&v11[v8];
          if (v14 <= 285212703)
          {
            goto LABEL_60;
          }

          goto LABEL_82;
        }

        if (v9 == 285212736)
        {
          v13 = 448;
          v14 = *&v11[v8];
          if (v14 <= 285212703)
          {
            goto LABEL_60;
          }

          goto LABEL_82;
        }
      }
    }

    else if (v9 <= 536870927)
    {
      v13 = 0;
      if (v9 == 536870916)
      {
        goto LABEL_59;
      }

      if (v9 == 536870920)
      {
        v13 = 32;
        v14 = *&v11[v8];
        if (v14 <= 285212703)
        {
          goto LABEL_60;
        }

        goto LABEL_82;
      }
    }

    else
    {
      switch(v9)
      {
        case 536870928:
          v13 = 64;
          v14 = *&v11[v8];
          if (v14 <= 285212703)
          {
            goto LABEL_60;
          }

LABEL_82:
          if (v14 <= 536870915)
          {
            if (v14 > 301989895)
            {
              if (v14 == 301989896)
              {
                v15 = 16;
                goto LABEL_104;
              }

              if (v14 == 335544328)
              {
                v15 = 17;
                goto LABEL_104;
              }
            }

            else
            {
              if (v14 == 285212704)
              {
                v15 = 13;
                goto LABEL_104;
              }

              if (v14 == 285212736)
              {
                v15 = 14;
                goto LABEL_104;
              }
            }
          }

          else if (v14 <= 536870927)
          {
            if (v14 == 536870916)
            {
              v15 = 0;
              goto LABEL_104;
            }

            if (v14 == 536870920)
            {
              v15 = 1;
              goto LABEL_104;
            }
          }

          else
          {
            switch(v14)
            {
              case 536870928:
                v15 = 2;
                goto LABEL_104;
              case 536870944:
                v15 = 3;
                goto LABEL_104;
              case 536870976:
                v15 = 4;
                goto LABEL_104;
            }
          }

LABEL_103:
          v15 = 18;
          goto LABEL_104;
        case 536870944:
          v13 = 96;
          v14 = *&v11[v8];
          if (v14 <= 285212703)
          {
            goto LABEL_60;
          }

          goto LABEL_82;
        case 536870976:
          v13 = 128;
          v14 = *&v11[v8];
          if (v14 <= 285212703)
          {
            goto LABEL_60;
          }

          goto LABEL_82;
      }
    }

LABEL_81:
    v13 = 576;
    v14 = *&v11[v8];
    if (v14 > 285212703)
    {
      goto LABEL_82;
    }

    goto LABEL_60;
  }

  if (v9 <= 31)
  {
    if (v9 > 7)
    {
      if (v9 == 8)
      {
        v13 = 192;
        v14 = *&v11[v8];
        if (v14 <= 285212703)
        {
          goto LABEL_60;
        }

        goto LABEL_82;
      }

      if (v9 == 16)
      {
        v13 = 224;
        v14 = *&v11[v8];
        if (v14 <= 285212703)
        {
          goto LABEL_60;
        }

        goto LABEL_82;
      }
    }

    else
    {
      if (v9 == -1879048176)
      {
        v13 = 384;
        v14 = *&v11[v8];
        if (v14 <= 285212703)
        {
          goto LABEL_60;
        }

        goto LABEL_82;
      }

      if (v9 == 4)
      {
        v13 = 160;
        v14 = *&v11[v8];
        if (v14 <= 285212703)
        {
          goto LABEL_60;
        }

        goto LABEL_82;
      }
    }

    goto LABEL_81;
  }

  if (v9 <= 268435463)
  {
    if (v9 != 32)
    {
      if (v9 == 64)
      {
        v13 = 288;
        v14 = *&v11[v8];
        if (v14 <= 285212703)
        {
          goto LABEL_60;
        }

        goto LABEL_82;
      }

      goto LABEL_81;
    }

    v13 = 256;
LABEL_59:
    v14 = *&v11[v8];
    if (v14 > 285212703)
    {
      goto LABEL_82;
    }

    goto LABEL_60;
  }

  if (v9 == 268435464)
  {
    v13 = 480;
    v14 = *&v11[v8];
    if (v14 <= 285212703)
    {
      goto LABEL_60;
    }

    goto LABEL_82;
  }

  if (v9 == 268435472)
  {
    v13 = 320;
    v14 = *&v11[v8];
    if (v14 <= 285212703)
    {
      goto LABEL_60;
    }

    goto LABEL_82;
  }

  if (v9 != 268435488)
  {
    goto LABEL_81;
  }

  v13 = 352;
  v14 = *&v11[v8];
  if (v14 > 285212703)
  {
    goto LABEL_82;
  }

LABEL_60:
  if (v14 <= 31)
  {
    if (v14 > 7)
    {
      if (v14 == 8)
      {
        v15 = 6;
      }

      else
      {
        if (v14 != 16)
        {
          goto LABEL_103;
        }

        v15 = 7;
      }
    }

    else if (v14 == -1879048176)
    {
      v15 = 12;
    }

    else
    {
      if (v14 != 4)
      {
        goto LABEL_103;
      }

      v15 = 5;
    }
  }

  else if (v14 <= 268435463)
  {
    if (v14 == 32)
    {
      v15 = 8;
    }

    else
    {
      if (v14 != 64)
      {
        goto LABEL_103;
      }

      v15 = 9;
    }
  }

  else
  {
    switch(v14)
    {
      case 268435464:
        v15 = 15;
        break;
      case 268435472:
        v15 = 10;
        break;
      case 268435488:
        v15 = 11;
        break;
      default:
        goto LABEL_103;
    }
  }

LABEL_104:
  *&v16 = -1;
  *(&v16 + 1) = -1;
  v31 = v16;
  v32 = v16;
  v28 = -1;
  v30 = v16;
  v27 = v16;
  v29 = v15 | v13;
  *&v32 = [*(a4 + 16) count] | ((*(a4 + 112) != 0) << 8) | 0x10000;
  v21 = *(a1 + *MEMORY[0x277CD7360]);
  v22 = *(a1 + *MEMORY[0x277CD7368]);
  v20 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSSetNDArraysOnComputeEncoder(a2, a4, 3, 0, 0);
  [a2 setComputePipelineState:{PipelineStateForMPSKey, v20, v21, v22, 0, 0}];
  [a2 setBuffer:objc_msgSend(v7 offset:"buffer") atIndex:{0, 29}];
  [a2 setBuffer:objc_msgSend(v11 offset:"buffer") atIndex:{0, 28}];
  objc_msgSend_setBytes_length_atIndex_(a2);
  v18 = (*&v7[*v12 + 4] * *&v7[*v12] * *&v7[*v12 + 8] * *&v7[*v12 + 12]) >> 7;
  v24 = 1;
  v25 = v18;
  v26 = vdupq_n_s64(1uLL);
  v23 = xmmword_239B1F440;
  [a2 dispatchThreadgroups:&v25 threadsPerThreadgroup:&v23];
  return 0;
}

uint64_t EncodeArrayPruneGradient(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v8 = *(a4 + 112);
  v9 = *MEMORY[0x277CD73C8];
  v10 = *&v7[v9];
  v11 = *&v7[*MEMORY[0x277CD7400]] / (v10 >> 3);
  v12 = *(a4 + 208);
  v36 = 0;
  v37 = v11;
  v13 = MEMORY[0x277CD73D0];
  v38 = *&v7[*MEMORY[0x277CD73D0]];
  if (v10 > 285212703)
  {
    if (v10 <= 536870915)
    {
      if (v10 > 301989895)
      {
        if (v10 == 301989896)
        {
          v14 = 512;
          v15 = *&v8[v9];
          if (v15 <= 285212703)
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v10 != 335544328)
          {
            goto LABEL_90;
          }

          v14 = 544;
          v15 = *&v8[v9];
          if (v15 <= 285212703)
          {
            goto LABEL_60;
          }
        }
      }

      else if (v10 == 285212704)
      {
        v14 = 416;
        v15 = *&v8[v9];
        if (v15 <= 285212703)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v10 != 285212736)
        {
          goto LABEL_90;
        }

        v14 = 448;
        v15 = *&v8[v9];
        if (v15 <= 285212703)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_91;
    }

    if (v10 > 536870927)
    {
      switch(v10)
      {
        case 536870928:
          v14 = 64;
          v15 = *&v8[v9];
          if (v15 <= 285212703)
          {
            goto LABEL_60;
          }

          break;
        case 536870944:
          v14 = 96;
          v15 = *&v8[v9];
          if (v15 <= 285212703)
          {
            goto LABEL_60;
          }

          break;
        case 536870976:
          v14 = 128;
          v15 = *&v8[v9];
          if (v15 <= 285212703)
          {
            goto LABEL_60;
          }

          break;
        default:
          goto LABEL_90;
      }

      goto LABEL_91;
    }

    v14 = 0;
    if (v10 != 536870916)
    {
      if (v10 != 536870920)
      {
        goto LABEL_90;
      }

      v14 = 32;
      v15 = *&v8[v9];
      if (v15 <= 285212703)
      {
        goto LABEL_60;
      }

      goto LABEL_91;
    }

LABEL_59:
    v15 = *&v8[v9];
    if (v15 > 285212703)
    {
      goto LABEL_91;
    }

    goto LABEL_60;
  }

  if (v10 <= 31)
  {
    if (v10 > 7)
    {
      if (v10 == 8)
      {
        v14 = 192;
        v15 = *&v8[v9];
        if (v15 <= 285212703)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v10 != 16)
        {
          goto LABEL_90;
        }

        v14 = 224;
        v15 = *&v8[v9];
        if (v15 <= 285212703)
        {
          goto LABEL_60;
        }
      }
    }

    else if (v10 == -1879048176)
    {
      v14 = 384;
      v15 = *&v8[v9];
      if (v15 <= 285212703)
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (v10 != 4)
      {
        goto LABEL_90;
      }

      v14 = 160;
      v15 = *&v8[v9];
      if (v15 <= 285212703)
      {
        goto LABEL_60;
      }
    }

    goto LABEL_91;
  }

  if (v10 <= 268435463)
  {
    if (v10 != 32)
    {
      if (v10 != 64)
      {
        goto LABEL_90;
      }

      v14 = 288;
      v15 = *&v8[v9];
      if (v15 <= 285212703)
      {
        goto LABEL_60;
      }

      goto LABEL_91;
    }

    v14 = 256;
    goto LABEL_59;
  }

  switch(v10)
  {
    case 268435464:
      v14 = 480;
      v15 = *&v8[v9];
      if (v15 <= 285212703)
      {
        goto LABEL_60;
      }

      break;
    case 268435472:
      v14 = 320;
      v15 = *&v8[v9];
      if (v15 <= 285212703)
      {
        goto LABEL_60;
      }

      break;
    case 268435488:
      v14 = 352;
      v15 = *&v8[v9];
      if (v15 > 285212703)
      {
        break;
      }

LABEL_60:
      if (v15 <= 31)
      {
        if (v15 > 7)
        {
          if (v15 == 8)
          {
            v16 = 192;
            v17 = *&v12[v9];
            if (v17 > 285212703)
            {
              goto LABEL_142;
            }

            goto LABEL_120;
          }

          if (v15 == 16)
          {
            v16 = 224;
            v17 = *&v12[v9];
            if (v17 > 285212703)
            {
              goto LABEL_142;
            }

            goto LABEL_120;
          }
        }

        else
        {
          if (v15 == -1879048176)
          {
            v16 = 384;
            v17 = *&v12[v9];
            if (v17 > 285212703)
            {
              goto LABEL_142;
            }

            goto LABEL_120;
          }

          if (v15 == 4)
          {
            v16 = 160;
            v17 = *&v12[v9];
            if (v17 > 285212703)
            {
              goto LABEL_142;
            }

            goto LABEL_120;
          }
        }
      }

      else if (v15 <= 268435463)
      {
        if (v15 == 32)
        {
          v16 = 256;
          v17 = *&v12[v9];
          if (v17 > 285212703)
          {
            goto LABEL_142;
          }

          goto LABEL_120;
        }

        if (v15 == 64)
        {
          v16 = 288;
          v17 = *&v12[v9];
          if (v17 > 285212703)
          {
            goto LABEL_142;
          }

          goto LABEL_120;
        }
      }

      else
      {
        switch(v15)
        {
          case 268435464:
            v16 = 480;
            v17 = *&v12[v9];
            if (v17 > 285212703)
            {
              goto LABEL_142;
            }

            goto LABEL_120;
          case 268435472:
            v16 = 320;
            v17 = *&v12[v9];
            if (v17 > 285212703)
            {
              goto LABEL_142;
            }

            goto LABEL_120;
          case 268435488:
            v16 = 352;
            v17 = *&v12[v9];
            if (v17 > 285212703)
            {
              goto LABEL_142;
            }

            goto LABEL_120;
        }
      }

      goto LABEL_141;
    default:
LABEL_90:
      v14 = 576;
      v15 = *&v8[v9];
      if (v15 > 285212703)
      {
        break;
      }

      goto LABEL_60;
  }

LABEL_91:
  if (v15 <= 536870915)
  {
    if (v15 > 301989895)
    {
      if (v15 == 301989896)
      {
        v16 = 512;
        v17 = *&v12[v9];
        if (v17 <= 285212703)
        {
          goto LABEL_120;
        }

        goto LABEL_142;
      }

      if (v15 == 335544328)
      {
        v16 = 544;
        v17 = *&v12[v9];
        if (v17 <= 285212703)
        {
          goto LABEL_120;
        }

        goto LABEL_142;
      }
    }

    else
    {
      if (v15 == 285212704)
      {
        v16 = 416;
        v17 = *&v12[v9];
        if (v17 <= 285212703)
        {
          goto LABEL_120;
        }

        goto LABEL_142;
      }

      if (v15 == 285212736)
      {
        v16 = 448;
        v17 = *&v12[v9];
        if (v17 <= 285212703)
        {
          goto LABEL_120;
        }

        goto LABEL_142;
      }
    }

LABEL_141:
    v16 = 576;
    v17 = *&v12[v9];
    if (v17 > 285212703)
    {
      goto LABEL_142;
    }

    goto LABEL_120;
  }

  if (v15 <= 536870927)
  {
    if (v15 == 536870916)
    {
      v16 = 0;
      v17 = *&v12[v9];
      if (v17 > 285212703)
      {
        goto LABEL_142;
      }

      goto LABEL_120;
    }

    if (v15 != 536870920)
    {
      goto LABEL_141;
    }

    v16 = 32;
    v17 = *&v12[v9];
    if (v17 <= 285212703)
    {
      goto LABEL_120;
    }

LABEL_142:
    if (v17 <= 536870915)
    {
      if (v17 > 301989895)
      {
        if (v17 == 301989896)
        {
          v18 = 16;
          goto LABEL_164;
        }

        if (v17 == 335544328)
        {
          v18 = 17;
          goto LABEL_164;
        }
      }

      else
      {
        if (v17 == 285212704)
        {
          v18 = 13;
          goto LABEL_164;
        }

        if (v17 == 285212736)
        {
          v18 = 14;
          goto LABEL_164;
        }
      }
    }

    else if (v17 <= 536870927)
    {
      if (v17 == 536870916)
      {
        v18 = 0;
        goto LABEL_164;
      }

      if (v17 == 536870920)
      {
        v18 = 1;
        goto LABEL_164;
      }
    }

    else
    {
      switch(v17)
      {
        case 536870928:
          v18 = 2;
          goto LABEL_164;
        case 536870944:
          v18 = 3;
          goto LABEL_164;
        case 536870976:
          v18 = 4;
          goto LABEL_164;
      }
    }

LABEL_163:
    v18 = 18;
    goto LABEL_164;
  }

  if (v15 == 536870928)
  {
    v16 = 64;
    v17 = *&v12[v9];
    if (v17 <= 285212703)
    {
      goto LABEL_120;
    }

    goto LABEL_142;
  }

  if (v15 == 536870944)
  {
    v16 = 96;
    v17 = *&v12[v9];
    if (v17 <= 285212703)
    {
      goto LABEL_120;
    }

    goto LABEL_142;
  }

  if (v15 != 536870976)
  {
    goto LABEL_141;
  }

  v16 = 128;
  v17 = *&v12[v9];
  if (v17 > 285212703)
  {
    goto LABEL_142;
  }

LABEL_120:
  if (v17 <= 31)
  {
    if (v17 > 7)
    {
      if (v17 == 8)
      {
        v18 = 6;
      }

      else
      {
        if (v17 != 16)
        {
          goto LABEL_163;
        }

        v18 = 7;
      }
    }

    else if (v17 == -1879048176)
    {
      v18 = 12;
    }

    else
    {
      if (v17 != 4)
      {
        goto LABEL_163;
      }

      v18 = 5;
    }
  }

  else if (v17 <= 268435463)
  {
    if (v17 == 32)
    {
      v18 = 8;
    }

    else
    {
      if (v17 != 64)
      {
        goto LABEL_163;
      }

      v18 = 9;
    }
  }

  else
  {
    switch(v17)
    {
      case 268435464:
        v18 = 15;
        break;
      case 268435472:
        v18 = 10;
        break;
      case 268435488:
        v18 = 11;
        break;
      default:
        goto LABEL_163;
    }
  }

LABEL_164:
  *&v19 = -1;
  *(&v19 + 1) = -1;
  v34 = v19;
  v35 = v19;
  v31 = -1;
  v33 = v19;
  v30 = v19;
  v32 = v16 | v14 | v18;
  *&v35 = [*(a4 + 16) count] | ((*(a4 + 112) != 0) << 8) | 0x10000;
  v24 = *(a1 + *MEMORY[0x277CD7360]);
  v25 = *(a1 + *MEMORY[0x277CD7368]);
  v23 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSSetNDArraysOnComputeEncoder(a2, a4, 3, 0, 0);
  [a2 setComputePipelineState:{PipelineStateForMPSKey, v23, v24, v25, 0, 0}];
  [a2 setBuffer:objc_msgSend(v7 offset:"buffer") atIndex:{0, 29}];
  [a2 setBuffer:objc_msgSend(v8 offset:"buffer") atIndex:{0, 28}];
  [a2 setBuffer:objc_msgSend(v12 offset:"buffer") atIndex:{0, 27}];
  objc_msgSend_setBytes_length_atIndex_(a2);
  v21 = (*&v7[*v13 + 4] * *&v7[*v13] * *&v7[*v13 + 8] * *&v7[*v13 + 12]) >> 7;
  v27 = 1;
  v28 = v21;
  v29 = vdupq_n_s64(1uLL);
  v26 = xmmword_239B1F440;
  [a2 dispatchThreadgroups:&v28 threadsPerThreadgroup:&v26];
  return 0;
}

uint64_t MPSNDArrayPruneFunctionConstructor(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 64);
  v7 = MPSCreateFunctionConstantValues();
  v17 = v6 & 1;
  [v7 setConstantValue:&v17 type:53 atIndex:115];
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

uint64_t MPSDecrementReadCount(MPSTemporaryNDArray *a1)
{
  return MEMORY[0x282123FA0](a1);
}

{
  return MEMORY[0x282123FA8](a1);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}
void sub_239A0AE70(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27DF867E8);
  MPSAutoCache::~MPSAutoCache(&STACK[0x388]);
  _Unwind_Resume(a1);
}

uint64_t EncodeDWConvGradientBackPropImpl(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  v7 = a4;
  v224[1] = *MEMORY[0x277D85DE8];
  v187 = *(a1 + 192);
  v184 = *(a1 + 200);
  v180 = *(a1 + 168);
  v9 = *(a1 + 184);
  v186 = *(a1 + 216);
  v185 = *(a1 + 232);
  if (*(a1 + 160) >= 3)
  {
    v10 = 3;
  }

  else
  {
    v10 = *(a1 + 160);
  }

  v202 = v10;
  v191 = *(a1 + 160);
  v11 = [*(a4 + 232) graph];
  v12 = **(v11 + 56);
  if (*(*(v11 + 56) + 8) == v12 || (v13 = *(*v12 + 8), v14 = [*(v7 + 232) graph], v15 = **(v14 + 56), *(*(v14 + 56) + 8) == v15))
  {
LABEL_386:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v17 = *(*v15 + 24);
  v16 = *v17;
  if (*(v17 + 8) == *v17)
  {
    goto LABEL_385;
  }

  v18 = *v16;
  v19 = *v13;
  v20 = v13[1];
  v179 = v9;
  v178 = a5;
  if (a6)
  {
    v21 = v20 - v19;
    if (v20 == v19)
    {
      goto LABEL_385;
    }

    v22 = *v13;
    v23 = v18;
    if (v21 <= 8)
    {
      goto LABEL_385;
    }
  }

  else
  {
    v24 = v20 - v19;
    if (v24 <= 8 || v24 == 16)
    {
      goto LABEL_385;
    }

    v23 = *v19;
    v22 = v19 + 2;
  }

  v25 = v19[1];
  v26 = *v22;
  v27 = MEMORY[0x277CD7378];
  v195 = v7;
  v188 = v18;
  v204 = *v22;
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (v191 >= 4 && MTLReportFailureTypeEnabled())
    {
      v141 = a1;
      v143 = v191;
      MTLReportFailure();
    }

    BaseTensor::GetDimensionSize(v26);
    BaseTensor::GetDimensionSize(v25);
    DimensionSize = BaseTensor::GetDimensionSize(v26);
    if (DimensionSize != BaseTensor::GetDimensionSize(v25) && MTLReportFailureTypeEnabled())
    {
      v143 = BaseTensor::GetDimensionSize(v23);
      v145 = BaseTensor::GetDimensionSize(v26);
      v141 = a1;
      MTLReportFailure();
    }

    v29 = BaseTensor::GetDimensionSize(v18);
    if (v29 == BaseTensor::GetDimensionSize(v23))
    {
      v30 = BaseTensor::GetDimensionSize(v18);
      if (v30 == BaseTensor::GetDimensionSize(v23))
      {
        v31 = BaseTensor::GetDimensionSize(v18);
        if (v31 == BaseTensor::GetDimensionSize(v23))
        {
          BaseTensor::GetDimensionSize(v18);
          BaseTensor::GetDimensionSize(v23);
        }
      }
    }

    v32 = BaseTensor::GetDimensionSize(v18);
    if (v32 != BaseTensor::GetDimensionSize(v23) || (v33 = BaseTensor::GetDimensionSize(v18), v33 != BaseTensor::GetDimensionSize(v23)) || (v34 = BaseTensor::GetDimensionSize(v18), v34 != BaseTensor::GetDimensionSize(v23)) || (v35 = BaseTensor::GetDimensionSize(v18), v35 != BaseTensor::GetDimensionSize(v23)))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v201 = BaseTensor::GetDimensionSize(v23);
        v197 = BaseTensor::GetDimensionSize(v23);
        v136 = v25;
        v137 = BaseTensor::GetDimensionSize(v23);
        v138 = BaseTensor::GetDimensionSize(v23);
        v139 = BaseTensor::GetDimensionSize(v18);
        v140 = BaseTensor::GetDimensionSize(v18);
        v151 = BaseTensor::GetDimensionSize(v188);
        v152 = BaseTensor::GetDimensionSize(v188);
        v149 = v139;
        v150 = v140;
        v18 = v188;
        v147 = v137;
        v148 = v138;
        v26 = v204;
        v25 = v136;
        v143 = v201;
        v145 = v197;
        v141 = a1;
        MTLReportFailure();
      }
    }
  }

  v183 = a1;
  if ((*(a1 + *v27) & 0x10) != 0)
  {
    BaseTensor::GetAccessPattern();
    v198 = v36;
    v209[0] = v36;
    v193 = v25;
    BaseTensor::GetAccessPattern();
    v218 = v37;
    v157 = BYTE1(v37);
    v158 = BYTE2(v37);
    v159 = BYTE3(v37);
    v161 = BYTE4(v37);
    v162 = BYTE5(v37);
    v163 = BYTE6(v37);
    v164 = BYTE7(v37);
    v166 = BYTE8(v37);
    v168 = BYTE9(v37);
    v172 = BYTE10(v37);
    v174 = BYTE11(v37);
    v170 = v37;
    v176 = BYTE12(v37);
    if (*(v7 + 112))
    {
      v224[0] = *(v7 + 112);
      [MEMORY[0x277CBEA60] arrayWithObjects:v224 count:1];
    }

    BaseTensor::GetAccessPattern();
    v160 = v38;
    v207 = v38;
    v39 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
    v39[v198] = 0;
    v39[BYTE1(v198)] = 1;
    v39[BYTE2(v198)] = 2;
    v39[BYTE3(v198)] = 3;
    v39[BYTE4(v198)] = 4;
    v39[BYTE5(v198)] = 5;
    v39[BYTE6(v198)] = 6;
    v39[BYTE7(v198)] = 7;
    v39[BYTE8(v198)] = 8;
    v39[BYTE9(v198)] = 9;
    v39[BYTE10(v198)] = 10;
    v39[BYTE11(v198)] = 11;
    v39[BYTE12(v198)] = 12;
    v39[BYTE13(v198)] = 13;
    v39[BYTE14(v198)] = 14;
    v39[HIBYTE(v198)] = 15;
    v40 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
    v40[v170] = 0;
    v40[v157] = 1;
    v40[v158] = 2;
    v40[v159] = 3;
    v40[v161] = 4;
    v40[v162] = 5;
    v40[v163] = 6;
    v40[v164] = 7;
    v40[v166] = 8;
    v40[v168] = 9;
    v40[v172] = 10;
    v40[v174] = 11;
    v40[v176] = 12;
    v40[BYTE13(v218)] = 13;
    v40[BYTE14(v218)] = 14;
    v40[HIBYTE(v218)] = 15;
    v41 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
    v41[v160] = 0;
    v41[BYTE1(v207)] = 1;
    v41[BYTE2(v207)] = 2;
    v41[BYTE3(v207)] = 3;
    v41[BYTE4(v207)] = 4;
    v41[BYTE5(v207)] = 5;
    v41[BYTE6(v207)] = 6;
    v41[BYTE7(v207)] = 7;
    v41[BYTE8(v207)] = 8;
    v41[BYTE9(v207)] = 9;
    v41[BYTE10(v207)] = 10;
    v41[BYTE11(v207)] = 11;
    v41[BYTE12(v207)] = 12;
    v41[BYTE13(v207)] = 13;
    v41[BYTE14(v207)] = 14;
    v41[HIBYTE(v207)] = 15;
    v199 = BaseTensor::GetDimensionSize(v23);
    v177 = BaseTensor::GetDimensionSize(v23);
    v175 = BaseTensor::GetDimensionSize(v23);
    v173 = BaseTensor::GetDimensionSize(v23);
    v171 = BaseTensor::GetDimensionSize(v23);
    v169 = BaseTensor::GetDimensionSize(v25);
    v167 = BaseTensor::GetDimensionSize(v25);
    v165 = BaseTensor::GetDimensionSize(v25);
    v42 = BaseTensor::GetDimensionSize(v25);
    v43 = BaseTensor::GetDimensionSize(v204);
    v44 = BaseTensor::GetDimensionSize(v204);
    v45 = BaseTensor::GetDimensionSize(v204);
    v46 = BaseTensor::GetDimensionSize(v204);
    v47 = BaseTensor::GetDimensionSize(v204);
    v48 = dataTypeToString(v23[2]);
    v49 = dataTypeToString(*(v193 + 2));
    v50 = dataTypeToString(v204[2]);
    v156 = vextq_s8(v186, v186, 8uLL);
    v155 = vextq_s8(v184, v184, 8uLL);
    v153 = v46;
    v154 = v47;
    v25 = v193;
    v26 = v204;
    MPSKernel_LogInfo(v183, v51, "-test MPSNDArrayDepthwiseConv3DTest -srcShapes [%u,%u,%u,%u,%u] [%u,%u,%u,%u] -dstShapes [%u,%u,%u,%u,%u] -srcDataTypes %s %s -dstDataTypes %s -cAxis %u -strides [1,%lu,%lu,%lu] -dilationRates [1,%lu,%lu,%lu] ", v199, v177, v175, v173, v171, v169, v167, v165, v42, v43, v44, v45, v153, v154, v48, v49, v50, v202, v155.i64[0], v155.i64[1], v187, v185, v156.i64[0], v156.i64[1]);
    printDWTranspose(v183, v209, 0, 1);
    printDWTranspose(v183, &v218, 1, 1);
    printDWTranspose(v183, &v207, 0, 0);
    if (a6)
    {
      MPSKernel_LogInfo(v183, v52, "-runMode dataGradNew ");
    }

    else
    {
      MPSKernel_LogInfo(v183, v52, "-runMode dataGrad ");
    }

    MPSKernel_LogInfo(v183, v53, ",\n");
    v7 = v195;
    v18 = v188;
  }

  v54 = v23[2];
  if (v54 > 285212703)
  {
    if (v54 <= 536870915)
    {
      if (v54 > 301989895)
      {
        if (v54 == 301989896)
        {
          v55 = 512;
          v56 = *(v25 + 2);
          if (v56 <= 285212703)
          {
            goto LABEL_92;
          }
        }

        else
        {
          if (v54 != 335544328)
          {
            goto LABEL_122;
          }

          v55 = 544;
          v56 = *(v25 + 2);
          if (v56 <= 285212703)
          {
            goto LABEL_92;
          }
        }
      }

      else if (v54 == 285212704)
      {
        v55 = 416;
        v56 = *(v25 + 2);
        if (v56 <= 285212703)
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (v54 != 285212736)
        {
          goto LABEL_122;
        }

        v55 = 448;
        v56 = *(v25 + 2);
        if (v56 <= 285212703)
        {
          goto LABEL_92;
        }
      }
    }

    else if (v54 <= 536870927)
    {
      if (v54 == 536870916)
      {
        v55 = 0;
        v56 = *(v25 + 2);
        if (v56 > 285212703)
        {
          goto LABEL_123;
        }

        goto LABEL_92;
      }

      if (v54 != 536870920)
      {
        goto LABEL_122;
      }

      v55 = 32;
      v56 = *(v25 + 2);
      if (v56 <= 285212703)
      {
        goto LABEL_92;
      }
    }

    else
    {
      switch(v54)
      {
        case 536870928:
          v55 = 64;
          v56 = *(v25 + 2);
          if (v56 <= 285212703)
          {
            goto LABEL_92;
          }

          break;
        case 536870944:
          v55 = 96;
          v56 = *(v25 + 2);
          if (v56 <= 285212703)
          {
            goto LABEL_92;
          }

          break;
        case 536870976:
          v55 = 128;
          v56 = *(v25 + 2);
          if (v56 <= 285212703)
          {
            goto LABEL_92;
          }

          break;
        default:
          goto LABEL_122;
      }
    }
  }

  else if (v54 <= 31)
  {
    if (v54 > 7)
    {
      if (v54 == 8)
      {
        v55 = 192;
        v56 = *(v25 + 2);
        if (v56 <= 285212703)
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (v54 != 16)
        {
          goto LABEL_122;
        }

        v55 = 224;
        v56 = *(v25 + 2);
        if (v56 <= 285212703)
        {
          goto LABEL_92;
        }
      }
    }

    else if (v54 == -1879048176)
    {
      v55 = 384;
      v56 = *(v25 + 2);
      if (v56 <= 285212703)
      {
        goto LABEL_92;
      }
    }

    else
    {
      if (v54 != 4)
      {
        goto LABEL_122;
      }

      v55 = 160;
      v56 = *(v25 + 2);
      if (v56 <= 285212703)
      {
        goto LABEL_92;
      }
    }
  }

  else if (v54 <= 268435463)
  {
    if (v54 == 32)
    {
      v55 = 256;
      v56 = *(v25 + 2);
      if (v56 <= 285212703)
      {
        goto LABEL_92;
      }
    }

    else
    {
      if (v54 != 64)
      {
        goto LABEL_122;
      }

      v55 = 288;
      v56 = *(v25 + 2);
      if (v56 <= 285212703)
      {
        goto LABEL_92;
      }
    }
  }

  else
  {
    switch(v54)
    {
      case 268435464:
        v55 = 480;
        v56 = *(v25 + 2);
        if (v56 <= 285212703)
        {
          goto LABEL_92;
        }

        break;
      case 268435472:
        v55 = 320;
        v56 = *(v25 + 2);
        if (v56 <= 285212703)
        {
          goto LABEL_92;
        }

        break;
      case 268435488:
        v55 = 352;
        v56 = *(v25 + 2);
        if (v56 > 285212703)
        {
          break;
        }

LABEL_92:
        if (v56 <= 31)
        {
          if (v56 > 7)
          {
            if (v56 == 8)
            {
              v55 |= 0x1800uLL;
              v57 = v26[2];
              if (v57 > 285212703)
              {
                goto LABEL_183;
              }

              goto LABEL_152;
            }

            if (v56 == 16)
            {
              v55 |= 0x1C00uLL;
              v57 = v26[2];
              if (v57 > 285212703)
              {
                goto LABEL_183;
              }

              goto LABEL_152;
            }
          }

          else
          {
            if (v56 == -1879048176)
            {
              v55 |= 0x3000uLL;
              v57 = v26[2];
              if (v57 > 285212703)
              {
                goto LABEL_183;
              }

              goto LABEL_152;
            }

            if (v56 == 4)
            {
              v55 |= 0x1400uLL;
              v57 = v26[2];
              if (v57 > 285212703)
              {
                goto LABEL_183;
              }

              goto LABEL_152;
            }
          }
        }

        else if (v56 <= 268435463)
        {
          if (v56 == 32)
          {
            v55 |= 0x2000uLL;
            v57 = v26[2];
            if (v57 > 285212703)
            {
              goto LABEL_183;
            }

            goto LABEL_152;
          }

          if (v56 == 64)
          {
            v55 |= 0x2400uLL;
            v57 = v26[2];
            if (v57 > 285212703)
            {
              goto LABEL_183;
            }

            goto LABEL_152;
          }
        }

        else
        {
          switch(v56)
          {
            case 268435464:
              v55 |= 0x3C00uLL;
              v57 = v26[2];
              if (v57 > 285212703)
              {
                goto LABEL_183;
              }

              goto LABEL_152;
            case 268435472:
              v55 |= 0x2800uLL;
              v57 = v26[2];
              if (v57 > 285212703)
              {
                goto LABEL_183;
              }

              goto LABEL_152;
            case 268435488:
              v55 |= 0x2C00uLL;
              v57 = v26[2];
              if (v57 > 285212703)
              {
                goto LABEL_183;
              }

              goto LABEL_152;
          }
        }

LABEL_182:
        v55 |= 0x4800uLL;
        v57 = v26[2];
        if (v57 > 285212703)
        {
          goto LABEL_183;
        }

        goto LABEL_152;
      default:
LABEL_122:
        v55 = 576;
        v56 = *(v25 + 2);
        if (v56 > 285212703)
        {
          break;
        }

        goto LABEL_92;
    }
  }

LABEL_123:
  if (v56 <= 536870915)
  {
    if (v56 > 301989895)
    {
      if (v56 == 301989896)
      {
        v55 |= 0x4000uLL;
        v57 = v26[2];
        if (v57 <= 285212703)
        {
          goto LABEL_152;
        }
      }

      else
      {
        if (v56 != 335544328)
        {
          goto LABEL_182;
        }

        v55 |= 0x4400uLL;
        v57 = v26[2];
        if (v57 <= 285212703)
        {
          goto LABEL_152;
        }
      }
    }

    else if (v56 == 285212704)
    {
      v55 |= 0x3400uLL;
      v57 = v26[2];
      if (v57 <= 285212703)
      {
        goto LABEL_152;
      }
    }

    else
    {
      if (v56 != 285212736)
      {
        goto LABEL_182;
      }

      v55 |= 0x3800uLL;
      v57 = v26[2];
      if (v57 <= 285212703)
      {
        goto LABEL_152;
      }
    }
  }

  else if (v56 <= 536870927)
  {
    if (v56 == 536870916)
    {
      v57 = v26[2];
      if (v57 > 285212703)
      {
        goto LABEL_183;
      }

      goto LABEL_152;
    }

    if (v56 != 536870920)
    {
      goto LABEL_182;
    }

    v55 |= 0x400uLL;
    v57 = v26[2];
    if (v57 <= 285212703)
    {
      goto LABEL_152;
    }
  }

  else
  {
    switch(v56)
    {
      case 536870928:
        v55 |= 0x800uLL;
        v57 = v26[2];
        if (v57 <= 285212703)
        {
          goto LABEL_152;
        }

        break;
      case 536870944:
        v55 |= 0xC00uLL;
        v57 = v26[2];
        if (v57 <= 285212703)
        {
          goto LABEL_152;
        }

        break;
      case 536870976:
        v55 |= 0x1000uLL;
        v57 = v26[2];
        if (v57 > 285212703)
        {
          break;
        }

LABEL_152:
        if (v57 <= 31)
        {
          if (v57 > 7)
          {
            if (v57 == 8)
            {
              v55 |= 0x30000uLL;
              v58 = v18[2];
              if (v58 > 285212703)
              {
                goto LABEL_234;
              }

              goto LABEL_212;
            }

            if (v57 == 16)
            {
              v55 |= 0x38000uLL;
              v58 = v18[2];
              if (v58 > 285212703)
              {
                goto LABEL_234;
              }

              goto LABEL_212;
            }
          }

          else
          {
            if (v57 == -1879048176)
            {
              v55 |= 0x60000uLL;
              v58 = v18[2];
              if (v58 > 285212703)
              {
                goto LABEL_234;
              }

              goto LABEL_212;
            }

            if (v57 == 4)
            {
              v55 |= 0x28000uLL;
              v58 = v18[2];
              if (v58 > 285212703)
              {
                goto LABEL_234;
              }

              goto LABEL_212;
            }
          }
        }

        else if (v57 <= 268435463)
        {
          if (v57 == 32)
          {
            v55 |= 0x40000uLL;
            v58 = v18[2];
            if (v58 > 285212703)
            {
              goto LABEL_234;
            }

            goto LABEL_212;
          }

          if (v57 == 64)
          {
            v55 |= 0x48000uLL;
            v58 = v18[2];
            if (v58 > 285212703)
            {
              goto LABEL_234;
            }

            goto LABEL_212;
          }
        }

        else
        {
          switch(v57)
          {
            case 268435464:
              v55 |= 0x78000uLL;
              v58 = v18[2];
              if (v58 > 285212703)
              {
                goto LABEL_234;
              }

              goto LABEL_212;
            case 268435472:
              v55 |= 0x50000uLL;
              v58 = v18[2];
              if (v58 > 285212703)
              {
                goto LABEL_234;
              }

              goto LABEL_212;
            case 268435488:
              v55 |= 0x58000uLL;
              v58 = v18[2];
              if (v58 > 285212703)
              {
                goto LABEL_234;
              }

              goto LABEL_212;
          }
        }

LABEL_233:
        v55 |= 0x90000uLL;
        v58 = v18[2];
        if (v58 > 285212703)
        {
          goto LABEL_234;
        }

        goto LABEL_212;
      default:
        goto LABEL_182;
    }
  }

LABEL_183:
  if (v57 <= 536870915)
  {
    if (v57 > 301989895)
    {
      if (v57 == 301989896)
      {
        v55 |= 0x80000uLL;
        v58 = v18[2];
        if (v58 <= 285212703)
        {
          goto LABEL_212;
        }
      }

      else
      {
        if (v57 != 335544328)
        {
          goto LABEL_233;
        }

        v55 |= 0x88000uLL;
        v58 = v18[2];
        if (v58 <= 285212703)
        {
          goto LABEL_212;
        }
      }
    }

    else if (v57 == 285212704)
    {
      v55 |= 0x68000uLL;
      v58 = v18[2];
      if (v58 <= 285212703)
      {
        goto LABEL_212;
      }
    }

    else
    {
      if (v57 != 285212736)
      {
        goto LABEL_233;
      }

      v55 |= 0x70000uLL;
      v58 = v18[2];
      if (v58 <= 285212703)
      {
        goto LABEL_212;
      }
    }
  }

  else if (v57 <= 536870927)
  {
    if (v57 == 536870916)
    {
      v58 = v18[2];
      if (v58 > 285212703)
      {
        goto LABEL_234;
      }

      goto LABEL_212;
    }

    if (v57 != 536870920)
    {
      goto LABEL_233;
    }

    v55 |= 0x8000uLL;
    v58 = v18[2];
    if (v58 <= 285212703)
    {
      goto LABEL_212;
    }
  }

  else
  {
    switch(v57)
    {
      case 536870928:
        v55 |= 0x10000uLL;
        v58 = v18[2];
        if (v58 <= 285212703)
        {
          goto LABEL_212;
        }

        break;
      case 536870944:
        v55 |= 0x18000uLL;
        v58 = v18[2];
        if (v58 <= 285212703)
        {
          goto LABEL_212;
        }

        break;
      case 536870976:
        v55 |= 0x20000uLL;
        v58 = v18[2];
        if (v58 > 285212703)
        {
          break;
        }

LABEL_212:
        if (v58 <= 31)
        {
          if (v58 > 7)
          {
            if (v58 == 8)
            {
              v59 = 6;
              goto LABEL_256;
            }

            if (v58 == 16)
            {
              v59 = 7;
              goto LABEL_256;
            }
          }

          else
          {
            if (v58 == -1879048176)
            {
              v59 = 12;
              goto LABEL_256;
            }

            if (v58 == 4)
            {
              v59 = 5;
              goto LABEL_256;
            }
          }
        }

        else if (v58 <= 268435463)
        {
          if (v58 == 32)
          {
            v59 = 8;
            goto LABEL_256;
          }

          if (v58 == 64)
          {
            v59 = 9;
            goto LABEL_256;
          }
        }

        else
        {
          switch(v58)
          {
            case 268435464:
              v59 = 15;
              goto LABEL_256;
            case 268435472:
              v59 = 10;
              goto LABEL_256;
            case 268435488:
              v59 = 11;
              goto LABEL_256;
          }
        }

        goto LABEL_255;
      default:
        goto LABEL_233;
    }
  }

LABEL_234:
  if (v58 <= 536870915)
  {
    if (v58 > 301989895)
    {
      if (v58 == 301989896)
      {
        v59 = 16;
        goto LABEL_256;
      }

      if (v58 == 335544328)
      {
        v59 = 17;
        goto LABEL_256;
      }
    }

    else
    {
      if (v58 == 285212704)
      {
        v59 = 13;
        goto LABEL_256;
      }

      if (v58 == 285212736)
      {
        v59 = 14;
        goto LABEL_256;
      }
    }
  }

  else if (v58 <= 536870927)
  {
    if (v58 == 536870916)
    {
      v59 = 0;
      goto LABEL_256;
    }

    if (v58 == 536870920)
    {
      v59 = 1;
      goto LABEL_256;
    }
  }

  else
  {
    switch(v58)
    {
      case 536870928:
        v59 = 2;
        goto LABEL_256;
      case 536870944:
        v59 = 3;
        goto LABEL_256;
      case 536870976:
        v59 = 4;
        goto LABEL_256;
    }
  }

LABEL_255:
  v59 = 18;
LABEL_256:
  *&v60 = -1;
  *(&v60 + 1) = -1;
  v222 = v60;
  v223 = v60;
  v219 = -1;
  v221 = v60;
  v218 = v60;
  v220 = v55 | v59;
  *&v223 = [*(v7 + 16) count] | 0x10100;
  v61 = BaseTensor::GetDimensionSize(v25);
  v62 = BaseTensor::GetDimensionSize(v25);
  v63 = BaseTensor::GetDimensionSize(v25);
  v196 = BaseTensor::GetDimensionSize(v188);
  v200 = BaseTensor::GetDimensionSize(v188);
  v194 = BaseTensor::GetDimensionSize(v188);
  v64 = BaseTensor::GetDimensionSize(v188);
  v65 = BaseTensor::GetDimensionSize(v204);
  v66 = BaseTensor::GetDimensionSize(v204);
  v67 = BaseTensor::GetDimensionSize(v204);
  v68 = BaseTensor::GetDimensionSize(v204);
  v205 = v64;
  v69 = v68 / v64;
  v70 = [*(v7 + 232) graph];
  v73 = **(v70 + 56);
  if (*(*(v70 + 56) + 8) == v73)
  {
    goto LABEL_386;
  }

  v74 = v7;
  v75 = *v73;
  if (a6)
  {
    v76 = 0;
  }

  else
  {
    [*(v74 + 16) arrayByAddingObject:*(v74 + 112)];
    v76 = 2;
  }

  if (v76 >= (*(*(v75 + 8) + 8) - **(v75 + 8)) >> 3)
  {
LABEL_385:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  *&v71 = __PAIR64__(v200, v196);
  *&v72 = __PAIR64__(v66, v65);
  DWORD2(v71) = v194;
  *v189 = v71;
  DWORD2(v72) = v67;
  *v181 = v72;
  BaseTensor::GetAccessPattern();
  if (!v78 && v191 > 2)
  {
    v79 = v205;
    v80 = v187;
    v81 = v186;
    v82 = v185;
    v83 = v184;
    v84 = *v189;
    v85 = *v181;
    if (v205 < 4)
    {
      v86 = 0;
      goto LABEL_269;
    }

    goto LABEL_268;
  }

  v80 = v187;
  v81 = v186;
  v82 = v185;
  v83 = v184;
  v79 = v205;
  v84 = *v189;
  v85 = *v181;
  v86 = 0;
  if (!v191 && v205 >= 4 && !v77)
  {
LABEL_268:
    v86 = v69 < 2;
  }

LABEL_269:
  HIDWORD(v84) = v79;
  HIDWORD(v85) = v68;
  v87 = vceqq_s64(v83, xmmword_239B06620);
  v88 = vmovn_s32(vmvnq_s8(vuzp1q_s32(v87, vceqq_s64(v81, vdupq_n_s64(1uLL)))));
  v88.i16[0] = vmaxv_u16(v88);
  v89 = (v80 == 2) & ~v88.i32[0];
  if (v82 != 1)
  {
    v89 = 0;
  }

  if (v62 != 4)
  {
    v89 = 0;
  }

  if (v69 >= 2)
  {
    v89 = 0;
  }

  if (v61 != 4)
  {
    v89 = 0;
  }

  if (v63 == 1)
  {
    v90 = v89;
  }

  else
  {
    v90 = 0;
  }

  if (v90 == 1)
  {
    v91 = 69632;
    v92 = 0x1000000;
    v93 = 2;
    v94 = 1;
  }

  else
  {
    v95 = v80 > 0x10 || v61 > 0x10;
    v93 = v83.i32[0];
    v97 = v95 || v83.i64[0] > 0x10uLL || v62 > 0x10;
    v94 = v83.u32[2];
    if (v97 || v83.i64[1] > 0x10uLL || v63 > 0x10)
    {
      v92 = 0;
    }

    else
    {
      v92 = 0x1000000;
    }

    v91 = ((v83.i32[0] << 16) + 983040) & 0xF0000 | ((v80 << 12) - 4096) & 0xF000 | ((v83.i32[2] << 20) + 15728640) & 0xF00000 | (v61 - 1) & 0xF | (16 * v62 - 16) & 0xF0 | ((v63 << 8) + 3840) & 0xF00;
  }

  if (v178)
  {
    v100 = 0x8000000;
  }

  else
  {
    v100 = 0;
  }

  v101.i32[3] = v180.i32[3];
  *v101.f32 = vmovn_s64(v180);
  v102 = vand_s8(*v101.f32, 0x100000001);
  v192 = v102.i32[1];
  v190 = v102.i32[0];
  v103 = v102.i32[0] | (2 * v102.i32[1]);
  v104 = v86;
  if (!v90)
  {
    v103 = 0;
  }

  v101.i32[2] = v179;
  v87.i64[0] = __PAIR64__(v62, v61);
  v87.i32[2] = v63;
  v83.i64[0] = __PAIR64__(v93, v80);
  v83.i32[2] = v94;
  v81.i32[1] = v81.i32[2];
  v81.i32[2] = v82;
  v219 = v92 | v100 | (v202 << 28) | ((v69 > 1) << 26) | v91 | v103;
  v209[0] = v84;
  v209[1] = v85;
  v209[2] = v101;
  v209[3] = v87;
  v209[4] = v83;
  v209[5] = v81;
  v101.f32[0] = v80;
  v211 = 0;
  v210 = 0;
  v101.f32[1] = v93;
  v212 = 0;
  v213 = v69;
  v101.f32[2] = v94;
  __asm { FMOV            V1.4S, #1.0 }

  v216 = 0;
  v214 = 0;
  v215 = 0;
  v217 = vdivq_f32(_Q1, v101);
  v144 = *(&v183->super.isa + *MEMORY[0x277CD7360]);
  v146 = *(&v183->super.isa + *MEMORY[0x277CD7368]);
  v142 = *(v195 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  v111 = PipelineStateForMPSKey;
  [a2 setComputePipelineState:{PipelineStateForMPSKey, v142, v144, v146, 0, 0}];
  MPSLibrary::ReleaseMPSKey();
  v112 = [v111 threadExecutionWidth];
  if (v112 <= 1)
  {
    v113 = 1;
  }

  else
  {
    v113 = v112;
  }

  if (v113 > v196 || (v114 = v113, v196 <= 3) && (v114 = v113, v113 > v200))
  {
    if (v112 <= 1)
    {
      v114 = 1;
    }

    else
    {
      v114 = v113 >> 1;
    }
  }

  v115 = [v111 maxTotalThreadsPerThreadgroup];
  v116 = 256;
  if (v115 < 0x100)
  {
    v116 = v115;
  }

  if (v116 <= 2 * v114)
  {
    v117 = 1;
  }

  else
  {
    v117 = v116 / v114;
  }

  v119 = v205;
  v120 = v104;
  if (v114 > v196)
  {
    v121 = v194;
    if (v114 <= v200 || v114 <= v194)
    {
      v124 = 1;
      v122 = v117;
      v123 = v114;
      v125 = v196 - 1;
      if ((v90 | !v104))
      {
        goto LABEL_330;
      }
    }

    else
    {
      v122 = 1;
      v123 = v117;
      v124 = v114;
      v125 = v196 - 1;
      if ((v90 | !v104))
      {
        goto LABEL_330;
      }
    }

    do
    {
LABEL_332:
      v123 = v117;
      v117 >>= 1;
    }

    while (v123 > v196);
    v126 = (v114 + v205 - 1) / v114;
    v128 = v194 * v200;
    v122 = 1;
    v124 = v114;
    v127 = (v123 + v125) / v123;
    if (!v90)
    {
      goto LABEL_378;
    }

    goto LABEL_334;
  }

  v122 = 1;
  v123 = v117;
  v124 = v114;
  v121 = v194;
  v125 = v196 - 1;
  if (((v90 | !v104) & 1) == 0)
  {
    goto LABEL_332;
  }

LABEL_330:
  v126 = (v124 + v125) / v124;
  v127 = (v200 + v123 - 1) / v123;
  v128 = (v121 + v122 - 1) / v122;
  if (!v90)
  {
    goto LABEL_378;
  }

LABEL_334:
  v129 = v196 + v190;
  v130 = v200 + v192;
  if (v120)
  {
    if (v205 >= 0x10uLL)
    {
      v124 = 16;
    }

    else
    {
      v124 = v205;
    }

    if (v129 >= 8)
    {
      v123 = 4;
    }

    else
    {
      v123 = (v129 + 1) >> 1;
    }

    v131 = v124 * v123;
    v132 = v194;
    if (v131 >= v113)
    {
      v122 = 2;
      v126 = (v205 + v124 - 1) / v124;
      if (!v123)
      {
        goto LABEL_367;
      }
    }

    else
    {
      while (v113 * v131 > v116)
      {
        v133 = v113 >> 1;
        v95 = v113 > 1;
        v113 >>= 1;
        if (!v95)
        {
          goto LABEL_363;
        }
      }

      v133 = v113;
LABEL_363:
      if (v133 >= v205 * v194)
      {
        v122 = v205 * v194;
      }

      else
      {
        v122 = v133;
      }

      v126 = (v205 + v124 - 1) / v124;
      if (!v123)
      {
LABEL_367:
        v127 = 0;
        if (v122)
        {
          goto LABEL_368;
        }

        goto LABEL_377;
      }
    }

    v127 = (v129 + 2 * v123 - 1) / (2 * v123);
    if (v122)
    {
LABEL_368:
      v119 = v200 + v192;
      goto LABEL_376;
    }

LABEL_377:
    v128 = 0;
    goto LABEL_378;
  }

  if (v129 >= 0x20)
  {
    v124 = 16;
  }

  else
  {
    v124 = (v129 + 1) >> 1;
  }

  if (v130 >= 0x20)
  {
    v123 = 16;
  }

  else
  {
    v123 = (v130 + 1) >> 1;
  }

  v134 = v123 * v124;
  v132 = v194;
  if (v134 >= v113)
  {
    v122 = 1;
    if (!v124)
    {
      goto LABEL_374;
    }

LABEL_359:
    v126 = (v129 + 2 * v124 - 1) / (2 * v124);
    if (!v123)
    {
      goto LABEL_375;
    }

    goto LABEL_360;
  }

  while (v113 * v134 > v116)
  {
    v135 = v113 >> 1;
    v95 = v113 > 1;
    v113 >>= 1;
    if (!v95)
    {
      goto LABEL_370;
    }
  }

  v135 = v113;
LABEL_370:
  if (v135 >= v205 * v194)
  {
    v122 = v205 * v194;
  }

  else
  {
    v122 = v135;
  }

  if (v124)
  {
    goto LABEL_359;
  }

LABEL_374:
  v126 = 0;
  if (!v123)
  {
LABEL_375:
    v127 = 0;
    if (v122)
    {
      goto LABEL_376;
    }

    goto LABEL_377;
  }

LABEL_360:
  v127 = (v130 + 2 * v123 - 1) / (2 * v123);
  if (!v122)
  {
    goto LABEL_377;
  }

LABEL_376:
  v128 = (v122 + v119 * v132 - 1) / v122;
LABEL_378:
  [a2 setComputePipelineState:v111];
  MPSSetNDArraysOnComputeEncoder(a2, v195, 4, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(a2);
  *&v207 = v126;
  *(&v207 + 1) = v127;
  v208 = v128;
  v206[0] = v124;
  v206[1] = v123;
  v206[2] = v122;
  [a2 dispatchThreadgroups:&v207 threadsPerThreadgroup:v206];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t printDWTranspose(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v6 = result;
  v39 = *MEMORY[0x277D85DE8];
  v37 = xmmword_239B06630;
  v38 = 4;
  v7 = *a2;
  v8 = v7 == 0;
  if ((a4 & 1) == 0)
  {
    if (*a2)
    {
      if (*a2 >= 5u)
      {
        v19 = 0;
      }

      else
      {
        v19 = *a2;
      }

      MPSKernel_LogInfo(result, a2, " -dstTranspose ");
      MPSKernel_LogInfo(v6, v20, "%lu ", a3);
      result = MPSKernel_LogInfo(v6, v21, "[%u,%u] ", 0, v19);
      *(&v37 + v19) = 0;
      v22 = DWORD1(v37);
      v23 = *(a2 + 1);
      if (DWORD1(v37) == v23)
      {
LABEL_17:
        v24 = *(a2 + 2);
        v15 = DWORD2(v37);
        if (DWORD2(v37) == v24)
        {
LABEL_18:
          v25 = *(a2 + 3);
          v17 = HIDWORD(v37);
          if (HIDWORD(v37) == v25)
          {
            if (v38 == *(a2 + 4))
            {
              return result;
            }

            if (!v8)
            {
              return MPSKernel_LogInfo(v6, a2, "[%u,%u] ", 4, 4);
            }

            MPSKernel_LogInfo(v6, a2, " -dstTranspose ");
            goto LABEL_22;
          }

          if (v38 == v25)
          {
            v28 = 4;
          }

          else
          {
            v28 = 3;
          }

          if (!v8)
          {
            goto LABEL_81;
          }

          MPSKernel_LogInfo(v6, a2, " -dstTranspose ");
LABEL_41:
          MPSKernel_LogInfo(v6, v29, "%lu ", a3);
          goto LABEL_81;
        }

LABEL_68:
        if (v38 == v24)
        {
          v35 = 4;
        }

        else
        {
          v35 = 2;
        }

        if (HIDWORD(v37) == v24)
        {
          v32 = 3;
        }

        else
        {
          v32 = v35;
        }

        if (!v8)
        {
          goto LABEL_77;
        }

        MPSKernel_LogInfo(v6, a2, " -dstTranspose ");
        goto LABEL_76;
      }
    }

    else
    {
      v22 = 1;
      v23 = BYTE1(*a2);
      if (v23 == 1)
      {
        goto LABEL_17;
      }
    }

    if (DWORD2(v37) == v23)
    {
      v27 = 2;
      if (v7)
      {
        goto LABEL_67;
      }
    }

    else if (HIDWORD(v37) == v23)
    {
      v27 = 3;
      if (v7)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v38 == v23)
      {
        v27 = 4;
      }

      else
      {
        v27 = 1;
      }

      if (v7)
      {
LABEL_67:
        result = MPSKernel_LogInfo(v6, a2, "[%u,%u] ", 1, v27);
        v8 = 0;
        *(&v37 + v27) = v22;
        v24 = *(a2 + 2);
        v15 = DWORD2(v37);
        if (DWORD2(v37) == v24)
        {
          goto LABEL_18;
        }

        goto LABEL_68;
      }
    }

    MPSKernel_LogInfo(v6, a2, " -dstTranspose ");
    MPSKernel_LogInfo(v6, v34, "%lu ", a3);
    goto LABEL_67;
  }

  if (*a2)
  {
    if (*a2 >= 5u)
    {
      v9 = 0;
    }

    else
    {
      v9 = *a2;
    }

    MPSKernel_LogInfo(result, a2, " -srcTranspose ");
    MPSKernel_LogInfo(v6, v10, "%lu ", a3);
    result = MPSKernel_LogInfo(v6, v11, "[%u,%u] ", 0, v9);
    *(&v37 + v9) = 0;
    v12 = DWORD1(v37);
    v13 = *(a2 + 1);
    if (DWORD1(v37) == v13)
    {
LABEL_7:
      v14 = *(a2 + 2);
      v15 = DWORD2(v37);
      if (DWORD2(v37) == v14)
      {
        goto LABEL_8;
      }

      goto LABEL_54;
    }
  }

  else
  {
    v12 = 1;
    v13 = BYTE1(*a2);
    if (v13 == 1)
    {
      goto LABEL_7;
    }
  }

  if (DWORD2(v37) == v13)
  {
    v26 = 2;
    if (v7)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (HIDWORD(v37) == v13)
  {
    v26 = 3;
    if (v7)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (v38 == v13)
  {
    v26 = 4;
  }

  else
  {
    v26 = 1;
  }

  if (!v7)
  {
LABEL_52:
    MPSKernel_LogInfo(v6, a2, " -srcTranspose ");
    MPSKernel_LogInfo(v6, v30, "%lu ", a3);
  }

LABEL_53:
  result = MPSKernel_LogInfo(v6, a2, "[%u,%u] ", 1, v26);
  v8 = 0;
  *(&v37 + v26) = v12;
  v14 = *(a2 + 2);
  v15 = DWORD2(v37);
  if (DWORD2(v37) != v14)
  {
LABEL_54:
    if (v38 == v14)
    {
      v31 = 4;
    }

    else
    {
      v31 = 2;
    }

    if (HIDWORD(v37) == v14)
    {
      v32 = 3;
    }

    else
    {
      v32 = v31;
    }

    if (!v8)
    {
      goto LABEL_77;
    }

    MPSKernel_LogInfo(v6, a2, " -srcTranspose ");
LABEL_76:
    MPSKernel_LogInfo(v6, v33, "%lu ", a3);
LABEL_77:
    result = MPSKernel_LogInfo(v6, a2, "[%u,%u] ", 2, v32);
    *(&v37 + v32) = v15;
    v36 = *(a2 + 3);
    v17 = HIDWORD(v37);
    if (HIDWORD(v37) == v36)
    {
      goto LABEL_82;
    }

    if (v38 == v36)
    {
      v28 = 4;
    }

    else
    {
      v28 = 3;
    }

LABEL_81:
    result = MPSKernel_LogInfo(v6, a2, "[%u,%u] ", 3, v28);
    *(&v37 + v28) = v17;
LABEL_82:
    if (v38 == *(a2 + 4))
    {
      return result;
    }

    return MPSKernel_LogInfo(v6, a2, "[%u,%u] ", 4, 4);
  }

LABEL_8:
  v16 = *(a2 + 3);
  v17 = HIDWORD(v37);
  if (HIDWORD(v37) != v16)
  {
    if (v38 == v16)
    {
      v28 = 4;
    }

    else
    {
      v28 = 3;
    }

    if (!v8)
    {
      goto LABEL_81;
    }

    MPSKernel_LogInfo(v6, a2, " -srcTranspose ");
    goto LABEL_41;
  }

  if (v38 == *(a2 + 4))
  {
    return result;
  }

  if (!v8)
  {
    return MPSKernel_LogInfo(v6, a2, "[%u,%u] ", 4, 4);
  }

  MPSKernel_LogInfo(v6, a2, " -srcTranspose ");
LABEL_22:
  MPSKernel_LogInfo(v6, v18, "%lu ", a3);
  return MPSKernel_LogInfo(v6, a2, "[%u,%u] ", 4, 4);
}

uint64_t MPSNDArrayDepthwiseConvWeightGradFunctionConstructor(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a2[8];
  v7 = MPSCreateFunctionConstantValues();
  v20 = BYTE4(v6) & 1;
  v19 = (v6 & 0x200000000) != 0;
  v18 = (v6 & 0x400000000) != 0;
  v17 = (v6 >> 35) & 7;
  [v7 setConstantValue:&v20 type:53 atIndex:115];
  [v7 setConstantValue:&v19 type:53 atIndex:114];
  [v7 setConstantValue:&v18 type:53 atIndex:113];
  [v7 setConstantValue:&v17 type:33 atIndex:112];
  v8 = *a3;
  v9 = *(a3 + 1);
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  v11 = vceqq_s64(v9, v10);
  if (*a3 != -1 || ((v12 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a3 + 3), v10), vceqq_s64(*(a3 + 4), v10)))) & 0xF, (~vaddvq_s32(vandq_s8(vuzp1q_s32(v11, vceqq_s64(*(a3 + 3), v10)), xmmword_239B06050)) & 0xF) == 0) ? (v13 = v12 == 0) : (v13 = 0), v13 ? (v14 = a3[5] == -1) : (v14 = 0), !v14))
  {
    if ((vuzp1_s16(vmovn_s64(v11), *v9.i8).u8[0] & 1) == 0)
    {
      v21 = *(a3 + 1);
      [v7 setConstantValue:&v21 type:33 atIndex:126];
      v8 = *a3;
    }

    if (v8 != -1)
    {
      v21 = v8;
      [v7 setConstantValue:&v21 type:33 atIndex:125];
    }

    if (a3[2] != -1)
    {
      v21 = a3[2];
      [v7 setConstantValue:&v21 type:33 atIndex:124];
    }

    if (a3[3] != -1)
    {
      v21 = a3[3];
      [v7 setConstantValue:&v21 type:33 atIndex:123];
    }

    if (a3[4] != -1)
    {
      v21 = a3[4];
      [v7 setConstantValue:&v21 type:33 atIndex:119];
    }

    if (a3[5] != -1)
    {
      v21 = a3[5];
      [v7 setConstantValue:&v21 type:33 atIndex:118];
    }

    if (a3[8] != -1)
    {
      v21 = a3[8];
      [v7 setConstantValue:&v21 type:33 atIndex:122];
    }

    if (a3[9] != -1)
    {
      v21 = a3[9];
      [v7 setConstantValue:&v21 type:33 atIndex:121];
    }

    if (a3[6] != -1)
    {
      v21 = a3[6];
      [v7 setConstantValue:&v21 type:33 atIndex:117];
    }

    if (a3[7] != -1)
    {
      v21 = a3[7];
      [v7 setConstantValue:&v21 type:33 atIndex:116];
    }
  }

  v15 = _MPSNewSpecializedFunction();

  return v15;
}

void sub_239A0E850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  *a42 = &unk_284CB2AC0;
  free(*(a42 + 8));
  MEMORY[0x23EE7C8C0](a42, 0x10E1C4006515DB2);
  _Unwind_Resume(a1);
}

void *getStrides(MPSNDArray *a1, unint64_t *a2, uint64_t a3)
{
  result = makeStrideBytes();
  if (a3)
  {
    v7 = 0;
    v9 = v18[14];
    v8 = v18[15];
    v11 = v18[12];
    v10 = v18[13];
    v13 = v18[10];
    v12 = v18[11];
    v15 = v18[8];
    v14 = v18[9];
    v16 = MEMORY[0x277CD73D8];
    do
    {
      v17 = *(&a1->super.isa + *v16);
      v18[0] = v15;
      v18[1] = v14;
      v18[2] = v13;
      v18[3] = v12;
      v18[4] = v11;
      v18[5] = v10;
      v18[6] = v9;
      v18[7] = v8;
      a2[v7] = *(v18 + (*(&v17 | v7 & 0xF) & 0xF));
      ++v7;
    }

    while (a3 != v7);
  }

  return result;
}

unint64_t getOffset(MPSNDArray *a1, unint64_t *a2)
{
  v2 = (a1 + *MEMORY[0x277CD7418]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(&a1->super.isa + *MEMORY[0x277CD73D8]);
  v6 = v2[3];
  v16 = v2[2];
  v17 = v6;
  v15[0] = v3;
  v15[1] = v4;
  v7 = *(v15 + (v5 & 0xF));
  v8 = *a2;
  v14[2] = v16;
  v14[3] = v6;
  v14[0] = v3;
  v14[1] = v4;
  v9 = a2[1] * *(v14 + (BYTE1(v5) & 0xF)) + v8 * v7;
  v13[2] = v16;
  v13[3] = v6;
  v13[0] = v3;
  v13[1] = v4;
  v10 = v9 + a2[2] * *(v13 + (BYTE2(v5) & 0xF));
  v12[2] = v16;
  v12[3] = v6;
  v12[0] = v3;
  v12[1] = v4;
  return v10 + a2[3] * *(v12 + (BYTE3(v5) & 0xF));
}

uint64_t MPSNDArrayVectorMultiplyFunctionConstructor(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2[8];
  v6 = MPSCreateFunctionConstantValues();
  [v6 setConstantValue:&v9 type:85 atIndex:115];
  AddFunctionConstantList(v6, a3);
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

void *AddFunctionConstantList(void *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 1);
  v4.i64[0] = -1;
  v4.i64[1] = -1;
  v5 = vceqq_s64(v3, v4);
  v6 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a2 + 3), v4), vceqq_s64(*(a2 + 4), v4))));
  v7 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(v5, vceqq_s64(*(a2 + 3), v4)), xmmword_239B06050)) & 0xF;
  if (*a2 != -1 || v7 != 0 || (v6 & 0xF) != 0 || a2[5] != -1)
  {
    v12 = result;
    if ((vuzp1_s16(vmovn_s64(v5), *v3.i8).u8[0] & 1) == 0)
    {
      v13 = *(a2 + 1);
      result = [result setConstantValue:&v13 type:33 atIndex:126];
      v2 = *a2;
    }

    if (v2 != -1)
    {
      v13 = v2;
      result = [v12 setConstantValue:&v13 type:33 atIndex:125];
    }

    if (a2[2] != -1)
    {
      v13 = a2[2];
      result = [v12 setConstantValue:&v13 type:33 atIndex:124];
    }

    if (a2[3] != -1)
    {
      v13 = a2[3];
      result = [v12 setConstantValue:&v13 type:33 atIndex:123];
    }

    if (a2[4] != -1)
    {
      v13 = a2[4];
      result = [v12 setConstantValue:&v13 type:33 atIndex:119];
    }

    if (a2[5] != -1)
    {
      v13 = a2[5];
      result = [v12 setConstantValue:&v13 type:33 atIndex:118];
    }

    if (a2[8] != -1)
    {
      v13 = a2[8];
      result = [v12 setConstantValue:&v13 type:33 atIndex:122];
    }

    if (a2[9] != -1)
    {
      v13 = a2[9];
      result = [v12 setConstantValue:&v13 type:33 atIndex:121];
    }

    if (a2[6] != -1)
    {
      v13 = a2[6];
      result = [v12 setConstantValue:&v13 type:33 atIndex:117];
    }

    if (a2[7] != -1)
    {
      v13 = a2[7];
      return [v12 setConstantValue:&v13 type:33 atIndex:116];
    }
  }

  return result;
}

BOOL MPSNDArrayVectorCompatibleWithDims(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a3 >> 10 > 6 || a4 >> 10 >= 7)
  {
    v6 = *(a1 + *MEMORY[0x277CD7410] + 4 * (*(a1 + *MEMORY[0x277CD73D8]) & 0xF));
    v7 = v6 == 18816 || v6 == 7168;
    if (v7)
    {
      v8 = a3 >= 8;
      return !v8;
    }
  }

  v9 = *MEMORY[0x277CD73C8];
  v10 = *(a1 + v9);
  if (v10 == 268435488)
  {
    v7 = *(a2 + v9) == 268435488;
    v11 = 3;
    if (v7)
    {
      v11 = 4;
    }
  }

  else
  {
    v11 = 3;
  }

  v12 = 9;
  if (a4 * a3 * v11 < *(a5 + 1480) << 12)
  {
    v12 = 15;
  }

  if (*(a5 + 1472) > 10)
  {
    v16 = *MEMORY[0x277CD73D8];
    v17 = *(a1 + v16);
    v18 = *(a2 + v16);
    v19 = *MEMORY[0x277CD7410];
    v20 = *(a1 + v19 + 4 * (BYTE2(v17) & 0xF));
    v21 = *(a2 + v19 + 4 * (BYTE2(v18) & 0xF));
    if (v17 <= BYTE1(v17) && v21 == 1)
    {
      v23 = v20;
    }

    else
    {
      v23 = 1;
    }

    a3 *= v23;
    v24 = v21 * a4;
    if (v18 <= BYTE1(v18))
    {
      v24 = a4;
    }

    if (v20 == 1)
    {
      a4 = v24;
    }

    v15 = v12;
  }

  else
  {
    v13 = 15;
    if ((a4 & 3) == 0)
    {
      v13 = v12;
    }

    if (a3)
    {
      v14 = 15;
    }

    else
    {
      v14 = v12;
    }

    if (v10 == 268435472)
    {
      v12 = v14;
      v15 = 15;
    }

    else
    {
      v15 = v13;
    }
  }

  v25 = a3 > v12 && a4 > v15;
  v26 = *MEMORY[0x277CD7410];
  v27 = *MEMORY[0x277CD73D8];
  v28 = *(a1 + v27 + 3) & 0xF;
  v29 = *(a1 + v26 + 4 * v28);
  v34 = a2 + v26;
  v30 = *v34;
  v31 = *(v34 + 16);
  v32 = *(v34 + 32);
  v33 = *(v34 + 48);
  v40[2] = v32;
  v40[3] = v33;
  v40[0] = v30;
  v40[1] = v31;
  LODWORD(v34) = *(v40 + v28);
  result = !v25;
  if (v29 <= v34)
  {
    v34 = v34;
  }

  else
  {
    v34 = v29;
  }

  v36 = a3 * v34;
  if (result && v36 > v12)
  {
    v38 = *(a2 + v27);
    v39[0] = v30;
    v39[1] = v31;
    v39[2] = v32;
    v39[3] = v33;
    v8 = *(v39 + (v38 & 0xF)) >= 0x81u;
    return !v8;
  }

  return result;
}

uint64_t MPSNDArrayMatMulA18DeviceBehavior::IsMatMulSupported(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a3 + 232) graph];
  v7 = *(v6 + 64);
  v8 = *v7;
  v9 = v7[1];
  if (*v7 == v9)
  {
    v12 = 0;
  }

  else
  {
    v10 = v6;
    v11 = 0;
    v12 = -1;
    v13 = -1;
    do
    {
      v14 = *v8;
      if (v14 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v10) + 32))
      {
        v12 = v11;
      }

      v15 = *v8;
      if (v15 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v10) + 32))
      {
        v13 = v11;
      }

      if (MPSKernelDAG::GetCoreOpNumberOfInputs(v10) == 3)
      {
        MPSKernelDAG::GetCoreOpInputAtIndex(v10);
      }

      ++v11;
      ++v8;
    }

    while (v8 != v9);
    if (v12 == -1)
    {
      v12 = 0;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (v13 != -1)
    {
      goto LABEL_17;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
LABEL_15:
    MTLReportFailure();
  }

LABEL_16:
  v13 = 0;
LABEL_17:
  v16 = [*(a3 + 16) objectAtIndexedSubscript:v12];
  v17 = [*(a3 + 16) objectAtIndexedSubscript:v13];
  v18 = v17;
  v19 = *(a3 + 208);
  v20 = (v19 + *MEMORY[0x277CD7410]);
  v21 = *v20;
  v22 = v20[1];
  v23 = MEMORY[0x277CD73D8];
  v24 = *(v19 + *MEMORY[0x277CD73D8]);
  v25 = v20[3];
  v72 = v20[2];
  v73 = v25;
  v71[0] = v21;
  v71[1] = v22;
  v26 = *(v71 + (v24 & 0xF));
  v74[2] = v72;
  v74[3] = v25;
  v74[0] = v21;
  v74[1] = v22;
  if (*(a1 + 8))
  {
    v27 = 0;
  }

  else
  {
    v27 = *(a2 + 200) == 0;
  }

  v28 = *(v74 + (BYTE1(v24) & 0xF));
  v29 = MEMORY[0x277CD73C8];
  v30 = *MEMORY[0x277CD73C8];
  v31 = *(v16 + v30);
  if (v31 == 268435488 || *(v17 + v30) == 268435488)
  {
    result = MPSForceMatrixUnit();
    if ((result & v27) != 1)
    {
      return result;
    }

    v30 = *v29;
    v31 = *(v16 + v30);
LABEL_25:
    if ((v31 & 0x1000FFFF) == 0x10000008)
    {
      return 1;
    }

    v33 = *(v18 + v30);
    if ((v33 & 0x1000FFFF) == 0x10000008 || (*(v19 + v30) & 0x1000FFFF) == 0x10000008)
    {
      return 1;
    }

    v34 = *(a2 + *MEMORY[0x277CD7350]);
    v35 = v28 >> 10 > 6 || v26 >> 10 >= 7;
    if (v35 && ((v36 = *(v16 + *MEMORY[0x277CD7410] + 4 * (*(v16 + *v23) & 0xF)), v36 != 18816) ? (v37 = v36 == 7168) : (v37 = 1), v37))
    {
      v38 = v28 >= 8;
    }

    else
    {
      v39 = v33 == 268435488 && v31 == 268435488;
      v40 = 3;
      if (v39)
      {
        v40 = 4;
      }

      v35 = v26 * v28 * v40 >= *(v34 + 1480) << 12;
      v41 = 9;
      if (!v35)
      {
        v41 = 15;
      }

      if (*(v34 + 1472) > 10)
      {
        v45 = *v23;
        v46 = *(v16 + v45);
        v47 = *(v18 + v45);
        v48 = *MEMORY[0x277CD7410];
        v49 = *(v16 + v48 + 4 * (BYTE2(v46) & 0xF));
        v50 = *(v18 + v48 + 4 * (BYTE2(v47) & 0xF));
        if (v46 <= BYTE1(v46) && v50 == 1)
        {
          v52 = v49;
        }

        else
        {
          v52 = 1;
        }

        v28 = v52 * v28;
        v53 = v26 * v50;
        if (v47 <= BYTE1(v47))
        {
          v53 = v26;
        }

        if (v49 == 1)
        {
          v26 = v53;
        }

        v44 = v41;
      }

      else
      {
        v42 = 15;
        if ((v26 & 3) == 0)
        {
          v42 = v41;
        }

        if (v28)
        {
          v43 = 15;
        }

        else
        {
          v43 = v41;
        }

        if (v31 == 268435472)
        {
          v41 = v43;
          v44 = 15;
        }

        else
        {
          v44 = v42;
        }
      }

      v54 = v28 > v41 && v26 > v44;
      v55 = *MEMORY[0x277CD7410];
      v56 = *v23;
      v57 = *(v16 + v56 + 3) & 0xF;
      LODWORD(v58) = *(v16 + v55 + 4 * v57);
      v59 = (v18 + v55);
      v60 = *v59;
      v61 = v59[1];
      v62 = v59[2];
      v63 = v59[3];
      v70[2] = v62;
      v70[3] = v63;
      v70[0] = v60;
      v70[1] = v61;
      v64 = *(v70 + v57);
      v65 = !v54;
      if (v58 <= v64)
      {
        v58 = v64;
      }

      else
      {
        v58 = v58;
      }

      v66 = v28 * v58;
      if (v65 != 1 || v66 <= v41)
      {
        return v65 ^ 1u;
      }

      v68 = *(v18 + v56);
      v69[0] = v60;
      v69[1] = v61;
      v69[2] = v62;
      v69[3] = v63;
      v38 = *(v69 + (v68 & 0xF)) >= 0x81u;
    }

    v65 = !v38;
    return v65 ^ 1u;
  }

  if (v27)
  {
    goto LABEL_25;
  }

  return 1;
}

void *MPSNDArrayMatMulA18DeviceBehavior::IsInt8AffineSupportedQuantization(uint64_t a1, uint64_t a2)
{
  v86 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 40);
  v3 = *(a2 + 48);
  if (*(a2 + 40) == 0)
  {
    return 0;
  }

  if ([*(a2 + 40) quantizationScheme] || (result = -[MPSNDArrayQuantizationDescriptor quantizationScheme](v3, "quantizationScheme")) != 0)
  {
    if (v2)
    {
      if ([(MPSNDArrayQuantizationDescriptor *)v2 quantizationScheme])
      {
        if ([(MPSNDArrayQuantizationDescriptor *)v2 quantizationScheme]!= 1 || [(MPSNDArrayQuantizationDescriptor *)v2 quantizationDataType]!= 536870920 || [(MPSNDArrayAffineQuantizationDescriptor *)v2 hasDoubleQuantScale]|| [(MPSNDArrayAffineQuantizationDescriptor *)v2 hasDoubleQuantMinVal])
        {
          return 0;
        }
      }

      else
      {
        v2 = 0;
      }
    }

    if (!v3)
    {
      goto LABEL_22;
    }

    if (![(MPSNDArrayQuantizationDescriptor *)v3 quantizationScheme])
    {
      v3 = 0;
      goto LABEL_22;
    }

    if ([(MPSNDArrayQuantizationDescriptor *)v3 quantizationScheme]== 1 && [(MPSNDArrayQuantizationDescriptor *)v3 quantizationDataType]== 536870920 && ![(MPSNDArrayAffineQuantizationDescriptor *)v3 hasDoubleQuantScale]&& ![(MPSNDArrayAffineQuantizationDescriptor *)v3 hasDoubleQuantMinVal])
    {
LABEL_22:
      GetPlaceHolderIndexInSourceArrayAffineGEMM([*(*(a2 + 56) + 232) graph], v2, v83, v3, &v79, 0, 0, 0);
      v6 = [*(*(a2 + 56) + 16) objectAtIndexedSubscript:v83[0]];
      v7 = [*(*(a2 + 56) + 16) objectAtIndexedSubscript:v79];
      if (v83[1] == -1)
      {
        v8 = 0;
        if (v84 != -1)
        {
LABEL_24:
          v9 = [*(*(a2 + 56) + 16) objectAtIndexedSubscript:?];
          if (v85 != -1)
          {
            goto LABEL_25;
          }

          goto LABEL_31;
        }
      }

      else
      {
        v8 = [*(*(a2 + 56) + 16) objectAtIndexedSubscript:?];
        if (v84 != -1)
        {
          goto LABEL_24;
        }
      }

      v9 = 0;
      if (v85 != -1)
      {
LABEL_25:
        v10 = [*(*(a2 + 56) + 16) objectAtIndexedSubscript:?];
        if (v80 != -1)
        {
          goto LABEL_26;
        }

        goto LABEL_32;
      }

LABEL_31:
      v10 = 0;
      if (v80 != -1)
      {
LABEL_26:
        v11 = [*(*(a2 + 56) + 16) objectAtIndexedSubscript:?];
        if (v81 != -1)
        {
          goto LABEL_27;
        }

        goto LABEL_33;
      }

LABEL_32:
      v11 = 0;
      if (v81 != -1)
      {
LABEL_27:
        v12 = [*(*(a2 + 56) + 16) objectAtIndexedSubscript:?];
        if (v82 != -1)
        {
LABEL_28:
          v13 = [*(*(a2 + 56) + 16) objectAtIndexedSubscript:?];
          goto LABEL_35;
        }

LABEL_34:
        v13 = 0;
LABEL_35:
        v14 = *MEMORY[0x277CD7410];
        v15 = *MEMORY[0x277CD73D8];
        v16 = *(v6 + v15);
        v17 = *(v6 + v14 + 4 * (BYTE1(v16) & 0xF));
        v18 = *(v7 + v15);
        v19 = *(v7 + v14 + 4 * (v18 & 0xF));
        if (!v2 || (v20 = *MEMORY[0x277CD73C8], v21 = *(v6 + v20), (v21 | 0x20000000) == 0x20000008) && v8 && (v22 = *(v8 + v20), (v22 | 0x80000000) == 0x90000010) && (v23 = *(v8 + v14), v24 = *(v8 + v14 + 16), v25 = *(v8 + v15), v26 = *(v8 + v14 + 32), v27 = *(v8 + v14 + 48), v78[2] = v26, v78[3] = v27, v78[0] = v23, v78[1] = v24, *(v78 + (v25 & 0xF)) == 1) && ((v77[0] = v23, v77[1] = v24, v77[2] = v26, v77[3] = v27, v28 = *(v77 + (BYTE1(v25) & 0xF)), v28 != 1) ? (v29 = v28 == v17) : (v29 = 1), v29 && (!v9 || *(v9 + v20) == v21 && (v30 = *(v9 + v14), v31 = *(v9 + v14 + 16), v32 = *(v9 + v15), v33 = *(v9 + v14 + 32), v34 = *(v9 + v14 + 48), v76[2] = v33, v76[3] = v34, v76[0] = v30, v76[1] = v31, *(v76 + (v32 & 0xF)) == 1) && ((v75[0] = v30, v75[1] = v31, v75[2] = v33, v75[3] = v34, v35 = *(v75 + (BYTE1(v32) & 0xF)), v35 == 1) || v35 == v17)) && (!v10 || *(v10 + v20) == v22 && (v36 = *(v10 + v14), v37 = *(v10 + v14 + 16), v38 = *(v10 + v15), v39 = *(v10 + v14 + 32), v40 = *(v10 + v14 + 48), v74[2] = v39, v74[3] = v40, v74[0] = v36, v74[1] = v37, *(v74 + (v38 & 0xF)) == 1) && ((v73[0] = v36, v73[1] = v37, v73[2] = v39, v73[3] = v40, v41 = *(v73 + (BYTE1(v38) & 0xF)), v41 == 1) || v41 == v17))))
        {
          if (!v3 || (v42 = *MEMORY[0x277CD73C8], v43 = *(v7 + v42), (v43 | 0x20000000) == 0x20000008) && v11 && (v44 = *(v11 + v42), (v44 | 0x80000000) == 0x90000010) && (v45 = *(v11 + v14), v46 = *(v11 + v14 + 16), v47 = *(v11 + v15), v48 = *(v11 + v14 + 32), v49 = *(v11 + v14 + 48), v72[2] = v48, v72[3] = v49, v72[0] = v45, v72[1] = v46, *(v72 + (BYTE1(v47) & 0xF)) == 1) && ((v71[0] = v45, v71[1] = v46, v71[2] = v48, v71[3] = v49, v50 = *(v71 + (v47 & 0xF)), v50 != 1) ? (v51 = v50 == v19) : (v51 = 1), v51 && (!v12 || *(v12 + v42) == v43 && (v52 = *(v12 + v14), v53 = *(v12 + v14 + 16), v54 = *(v12 + v15), v55 = *(v12 + v14 + 32), v56 = *(v12 + v14 + 48), v70[2] = v55, v70[3] = v56, v70[0] = v52, v70[1] = v53, *(v70 + (BYTE1(v54) & 0xF)) == 1) && ((v69[0] = v52, v69[1] = v53, v69[2] = v55, v69[3] = v56, v57 = *(v69 + (v54 & 0xF)), v57 == 1) || v57 == v19)) && (!v13 || *(v13 + v42) == v44 && (v58 = (v13 + v14), v59 = *v58, v60 = v58[1], v61 = *(v13 + v15), v62 = v58[2], v63 = v58[3], v68[2] = v62, v68[3] = v63, v68[0] = v59, v68[1] = v60, *(v68 + (BYTE1(v61) & 0xF)) == 1) && ((v67[0] = v59, v67[1] = v60, v67[2] = v62, v67[3] = v63, v64 = *(v67 + (v61 & 0xF)), v64 == 1) || v64 == v19)) && (!v2 || *(v8 + v42) == v44)))
          {
            if (BYTE2(v16) && BYTE3(v16) != 0 && BYTE2(v18) && BYTE3(v18) != 0)
            {
              return !MPSNDArrayVectorCompatibleWithDims(v6, v7, v17, v19, *(*(a2 + 64) + *MEMORY[0x277CD7350]));
            }
          }
        }

        return 0;
      }

LABEL_33:
      v12 = 0;
      if (v82 != -1)
      {
        goto LABEL_28;
      }

      goto LABEL_34;
    }

    return 0;
  }

  return result;
}

uint64_t MPSNDArrayMatMulA18DeviceBehavior::EncodeArrayMultiply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7);
  v10 = v9;
  v12 = v11;
  v411 = v13;
  v14 = v8;
  v15 = v7;
  v549 = *MEMORY[0x277D85DE8];
  v16 = *(v8 + 216);
  v17 = *(v7 + 8);
  if (v17)
  {
    if (MPSDisableMatrixUnit())
    {
LABEL_16:
      MPSNDArrayMatMulA14DeviceBehavior::EncodeArrayMultiply(v15, v14, v411, v12, v10);
      return 0;
    }
  }

  else if (*(v8 + 208) == 6)
  {
    v17 = *(v8 + 200);
    if (MPSDisableMatrixUnit())
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = 0;
    if (MPSDisableMatrixUnit())
    {
      goto LABEL_16;
    }
  }

  if ((MPSNDArrayMatMulA18DeviceBehavior::IsMatMulSupported(v15, v14, v10) & 1) == 0)
  {
    goto LABEL_16;
  }

  v366 = v16;
  v361 = v12;
  v18 = *(v14 + 168);
  v19 = *(v14 + 176);
  v402 = *(v14 + 168) != 0;
  v541 = 0u;
  v542 = 0u;
  *v540 = 0u;
  memset(v539, 0, sizeof(v539));
  v398 = v10;
  v406 = v18;
  v404 = v19;
  if (GetPlaceHolderIndexInSourceArrayAffineGEMM([v10[29] graph], v18, &v546, v19, &v543, 0, v540, v539) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v20 = v540[0];
  v21 = *&v539[0];
  v22 = [v10[29] outputTensorAtIndex:0];
  v23 = *(v20 + 2);
  v25 = *v23;
  v24 = v23[1];
  if (v24 != v25)
  {
    if (((v24 - v25) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v27 = *(v21 + 16);
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

  v30 = *(v22 + 16);
  v32 = *v30;
  v31 = v30[1];
  if (v31 != v32)
  {
    if (((v31 - v32) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v33 = v398;
  v34 = [*(v398 + 16) objectAtIndexedSubscript:v546];
  if (v547 != -1)
  {
    v400 = [*(v398 + 16) objectAtIndexedSubscript:?];
    if (v548.i64[0] != -1)
    {
      goto LABEL_22;
    }

LABEL_25:
    v396 = 0;
    if (v548.i64[1] != -1)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  v400 = 0;
  if (v548.i64[0] == -1)
  {
    goto LABEL_25;
  }

LABEL_22:
  v396 = [*(v398 + 16) objectAtIndexedSubscript:?];
  if (v548.i64[1] != -1)
  {
LABEL_23:
    v381 = [*(v398 + 16) objectAtIndexedSubscript:?];
    goto LABEL_27;
  }

LABEL_26:
  v381 = 0;
LABEL_27:
  v38 = [*(v398 + 16) objectAtIndexedSubscript:v543];
  if (v544.i64[0] != -1)
  {
    v391 = [*(v398 + 16) objectAtIndexedSubscript:?];
    if (v544.i64[1] != -1)
    {
      goto LABEL_29;
    }

LABEL_32:
    v394 = 0;
    if (v545 != -1)
    {
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  v391 = 0;
  if (v544.i64[1] == -1)
  {
    goto LABEL_32;
  }

LABEL_29:
  v394 = [*(v398 + 16) objectAtIndexedSubscript:?];
  if (v545 != -1)
  {
LABEL_30:
    v380 = [*(v398 + 16) objectAtIndexedSubscript:?];
    goto LABEL_34;
  }

LABEL_33:
  v380 = 0;
LABEL_34:
  v39 = *(v398 + 208);
  v40 = *MEMORY[0x277CD7410];
  v41 = *&v39[v40];
  v42 = *&v39[v40 + 16];
  v43 = *&v39[v40 + 32];
  v44 = MEMORY[0x277CD73D8];
  v45 = *MEMORY[0x277CD73D8];
  v412 = v39;
  v46 = *&v39[v45];
  v474 = *&v39[v40 + 48];
  v473[2] = v43;
  v473[1] = v42;
  v473[0] = v41;
  v410 = *(v473 + (BYTE1(v46) & 0xF));
  v472[3] = v474;
  v472[2] = v43;
  v472[1] = v42;
  v472[0] = v41;
  v409 = *(v472 + (v46 & 0xF));
  v47 = *(v34 + v40);
  v48 = *(v34 + v40 + 16);
  v49 = *(v34 + v40 + 32);
  v50 = *(v34 + v45);
  v478 = *(v34 + v40 + 48);
  v477[2] = v49;
  v477[1] = v48;
  v477[0] = v47;
  v408 = *(v477 + (v50 & 0xF));
  v471[3] = v474;
  v471[2] = v43;
  v471[1] = v42;
  v471[0] = v41;
  v389 = *(v471 + (BYTE2(v46) & 0xF));
  v470[3] = v474;
  v470[2] = v43;
  v470[1] = v42;
  v470[0] = v41;
  v377 = *(v470 + (BYTE3(v46) & 0xF));
  v476[3] = v478;
  v476[2] = v49;
  v476[1] = v48;
  v476[0] = v47;
  v382 = *(v476 + (BYTE2(v50) & 0xF));
  v475[3] = v478;
  v475[2] = v49;
  v475[1] = v48;
  v475[0] = v47;
  v372 = *(v475 + (BYTE3(v50) & 0xF));
  v51 = (v38 + v40);
  v52 = *v51;
  v53 = v51[1];
  v54 = v51[2];
  v55 = v51[3];
  v56 = v38 + v45;
  v57 = *(v38 + v45 + 2) & 0xF;
  v480[3] = v55;
  v480[2] = v54;
  v480[1] = v53;
  v480[0] = v52;
  v385 = *(v480 + v57);
  v58 = *(v56 + 3) & 0xF;
  v479[3] = v55;
  v479[2] = v54;
  v479[1] = v53;
  v479[0] = v52;
  v374 = *(v479 + v58);
  v376 = v34;
  v413 = v38;
  if (!v402)
  {
    v378 = 0;
    v368 = 0;
    v364 = 0;
    v362 = 0;
    goto LABEL_110;
  }

  if (!v406)
  {
    v364 = 0;
    v362 = 0;
    goto LABEL_66;
  }

  v59 = *(v34 + *MEMORY[0x277CD73C8]);
  if (v59 <= 301989895)
  {
    if (v59 == 8)
    {
      goto LABEL_45;
    }

    v60 = 268435464;
  }

  else
  {
    if (v59 == 301989896 || v59 == 335544328)
    {
      goto LABEL_45;
    }

    v60 = 536870920;
  }

  if (v59 != v60 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_45:
  if (!v400 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v61 = *MEMORY[0x277CD73C8];
  v62 = *(v34 + v61) & 0x1000FFFF;
  v63 = *(v400 + v61);
  if (v62 == 268435464)
  {
    if (v63 == 268435488 || (MTLReportFailureTypeEnabled() & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if ((v63 & 0x7FFFFFFF) == 0x10000010 || !MTLReportFailureTypeEnabled())
  {
    goto LABEL_51;
  }

  MTLReportFailure();
LABEL_51:
  if (*(v400 + *MEMORY[0x277CD7410] + 4 * (*(v400 + *v44) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v64 = *(v400 + *MEMORY[0x277CD7410] + 4 * (*(v400 + *v44 + 1) & 0xF));
  if (v64 != 1 && v64 != v410 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v65 = *MEMORY[0x277CD7410];
  v66 = *(v34 + v65);
  v67 = *(v34 + v65 + 16);
  v68 = *(v34 + v65 + 32);
  v69 = *v44;
  v70 = *(v34 + v69);
  v466 = *(v34 + v65 + 48);
  v465[2] = v68;
  v465[1] = v67;
  v465[0] = v66;
  v71 = *(v465 + (v70 & 0xF));
  v464[3] = v466;
  v464[2] = v68;
  v464[1] = v67;
  v464[0] = v66;
  v72 = *(v464 + (BYTE1(v70) & 0xF));
  v73 = (v400 + v65);
  v74 = *v73;
  v75 = v73[1];
  v76 = v73[2];
  v77 = *(v400 + v69);
  v469 = v73[3];
  v468[2] = v76;
  v468[1] = v75;
  v468[0] = v74;
  v78 = *(v468 + (v77 & 0xF));
  v467[3] = v469;
  v467[2] = v76;
  v467[1] = v75;
  v467[0] = v74;
  v79 = *(v467 + (BYTE1(v77) & 0xF));
  if (v396)
  {
    if ((*(v34 + *MEMORY[0x277CD73C8]) & 0x1000FFFF) == 0x10000008 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v396 + *MEMORY[0x277CD73C8]) != *(v34 + *MEMORY[0x277CD73C8]) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v396 + *MEMORY[0x277CD7410] + 4 * (*(v396 + *v44) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v80 = *(v396 + *MEMORY[0x277CD7410] + 4 * (*(v396 + *v44 + 1) & 0xF));
    if (v80 != 1 && v80 != v410 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v362 = v71 / v78;
  v364 = v72 / v79;
  if (v381)
  {
    if ((*(v34 + *MEMORY[0x277CD73C8]) & 0x1000FFFF) == 0x10000008 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v381 + *MEMORY[0x277CD73C8]) != *(v400 + *MEMORY[0x277CD73C8]) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v381 + *MEMORY[0x277CD7410] + 4 * (*(v381 + *v44) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v81 = *(v381 + *MEMORY[0x277CD7410] + 4 * (*(v381 + *v44 + 1) & 0xF));
    if (v81 != 1 && v81 != v410 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

LABEL_66:
  v82 = *MEMORY[0x277CD73C8];
  if (!v404)
  {
    v378 = 0;
    v368 = 0;
    v33 = v398;
    v38 = v413;
    goto LABEL_91;
  }

  v38 = v413;
  v33 = v398;
  if ((*&v413[v82] | 0x20000000) != 0x20000008)
  {
    v214 = *(v34 + v82);
    if (v214 != 268435464 && v214 != 301989896 && v214 != 335544328 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (!v391 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v83 = *MEMORY[0x277CD73C8];
  v84 = *&v413[v83] & 0x1000FFFF;
  v85 = *(v391 + v83);
  if (v84 == 268435464)
  {
    if (v85 == 268435488 || (MTLReportFailureTypeEnabled() & 1) == 0)
    {
      goto LABEL_75;
    }
  }

  else if ((v85 & 0x7FFFFFFF) == 0x10000010 || !MTLReportFailureTypeEnabled())
  {
    goto LABEL_75;
  }

  MTLReportFailure();
  v33 = v398;
  v38 = v413;
LABEL_75:
  if (*(v391 + *MEMORY[0x277CD7410] + 4 * (*(v391 + *v44 + 1) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v86 = *(v391 + *MEMORY[0x277CD7410] + 4 * (*(v391 + *v44) & 0xF));
  if (v86 != 1 && v86 != v409 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v394)
  {
    if ((*(v38 + *MEMORY[0x277CD73C8]) & 0x1000FFFF) == 0x10000008 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v394 + *MEMORY[0x277CD73C8]) != *(v38 + *MEMORY[0x277CD73C8]) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v394 + *MEMORY[0x277CD7410] + 4 * (*(v394 + *v44 + 1) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v87 = *(v394 + *MEMORY[0x277CD7410] + 4 * (*(v394 + *v44) & 0xF));
    if (v87 != 1 && v87 != v409 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (v380)
  {
    if ((*(v38 + *MEMORY[0x277CD73C8]) & 0x1000FFFF) == 0x10000008 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v380 + *MEMORY[0x277CD73C8]) != *(v391 + *MEMORY[0x277CD73C8]) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v380 + *MEMORY[0x277CD7410] + 4 * (*(v380 + *v44 + 1) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v88 = *(v380 + *MEMORY[0x277CD7410] + 4 * (*(v380 + *v44) & 0xF));
    if (v88 != 1 && v88 != v409 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v89 = *MEMORY[0x277CD7410];
  v90 = *(v38 + v89);
  v91 = *(v38 + v89 + 16);
  v92 = *(v38 + v89 + 32);
  v93 = *v44;
  v94 = *(v38 + v93);
  v460 = *(v38 + v89 + 48);
  v459[2] = v92;
  v459[1] = v91;
  v459[0] = v90;
  v95 = *(v459 + (v94 & 0xF));
  v458[3] = v460;
  v458[2] = v92;
  v458[1] = v91;
  v458[0] = v90;
  v96 = *(v458 + (BYTE1(v94) & 0xF));
  v97 = (v391 + v89);
  v98 = *v97;
  v99 = v97[1];
  v100 = v97[2];
  v101 = *(v391 + v93);
  v463 = v97[3];
  v462[2] = v100;
  v462[1] = v99;
  v462[0] = v98;
  LODWORD(v97) = *(v462 + (v101 & 0xF));
  v461[3] = v463;
  v461[2] = v100;
  v461[1] = v99;
  v461[0] = v98;
  v368 = v95 / v97;
  v378 = v96 / *(v461 + (BYTE1(v101) & 0xF));
  v82 = *MEMORY[0x277CD73C8];
LABEL_91:
  v102 = *(v34 + v82);
  v103 = *(v38 + v82);
  v104 = (v103 & 0x1000FFFF) == 0x10000008 || (v102 & 0x1000FFFF) == 268435464;
  if (v104 && v102 != v103 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v406 && v404)
  {
    if (*(v400 + *MEMORY[0x277CD73C8]) == *(v391 + *MEMORY[0x277CD73C8]))
    {
      goto LABEL_110;
    }

    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_106;
    }
  }

  else if (!v406 || v404)
  {
    if (v406 || !v404 || *(v34 + *MEMORY[0x277CD73C8]) == *(v391 + *MEMORY[0x277CD73C8]))
    {
      goto LABEL_110;
    }

    if (MTLReportFailureTypeEnabled())
    {
LABEL_106:
      MTLReportFailure();
      v33 = v398;
      v38 = v413;
      goto LABEL_110;
    }
  }

  else
  {
    if (*(v400 + *MEMORY[0x277CD73C8]) == *(v38 + *MEMORY[0x277CD73C8]))
    {
      goto LABEL_110;
    }

    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_106;
    }
  }

  v33 = v398;
  v38 = v413;
LABEL_110:
  v105 = *MEMORY[0x277CD73C8];
  v390 = *(v38 + v105);
  v388 = *(v34 + v105);
  if (v388 == 536870920 && v390 == 536870920 || v388 == 8 && v390 == 8 || v388 == 268435472 && v390 == 268435472 || v388 == -1879048176 && v390 == -1879048176 || v388 == 268435464 && v390 == 268435464 || v388 == 301989896 && v390 == 301989896 || v388 == 335544328 && v390 == 335544328 || v388 == 268435488 && v390 == 268435488 && (MPSForceMatrixUnit() & 1) != 0)
  {
    goto LABEL_124;
  }

  if (!v402)
  {
    goto LABEL_629;
  }

  if ((v388 | 0x20000000) == 0x20000008)
  {
    if (v390 <= 268435471)
    {
      if (v390 == -1879048176)
      {
        goto LABEL_124;
      }

      if (v390 != 8)
      {
        goto LABEL_616;
      }

      goto LABEL_622;
    }

    if (v390 == 268435472)
    {
      goto LABEL_124;
    }

    v348 = v390;
  }

  else
  {
    v348 = v390 | 0x20000000;
  }

  if (v348 != 536870920)
  {
LABEL_616:
    if ((v388 | 0x20000000) != 0x20000008)
    {
      goto LABEL_629;
    }

    goto LABEL_628;
  }

LABEL_622:
  if (v388 <= 268435471)
  {
    if (v388 == -1879048176)
    {
      goto LABEL_124;
    }

    if (v388 != 8)
    {
      goto LABEL_629;
    }

    goto LABEL_628;
  }

  if (v388 == 268435472)
  {
    goto LABEL_124;
  }

  if (v388 != 536870920)
  {
LABEL_629:
    EncodeMatrixMultiplyLinkingA14(v14, v411, v361, v33, v35, v36, v37);
    return 0;
  }

LABEL_628:
  if (((v390 - 8) & 0xDFFFFFFF) != 0)
  {
    goto LABEL_629;
  }

LABEL_124:
  if (MEMORY[0] != *(v34 + *MEMORY[0x277CD7410] + 4 * (*(v34 + *v44) & 0xF)) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (MEMORY[8] != *(v34 + *MEMORY[0x277CD7410] + 4 * (*(v34 + *v44 + 1) & 0xF)) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (MEMORY[0] != *&v413[4 * (*&v413[*v44] & 0xF) + *MEMORY[0x277CD7410]] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (MEMORY[8] != *&v413[4 * (v413[*v44 + 1] & 0xF) + *MEMORY[0x277CD7410]] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (MEMORY[0] != *&v412[4 * (*&v412[*v44] & 0xF) + *MEMORY[0x277CD7410]] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (MEMORY[8] != *&v412[4 * (v412[*v44 + 1] & 0xF) + *MEMORY[0x277CD7410]] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v34 + *MEMORY[0x277CD7410] + 4 * (*(v34 + *v44) & 0xF)) != *&v413[4 * (v413[*v44 + 1] & 0xF) + *MEMORY[0x277CD7410]] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v34 + *MEMORY[0x277CD7410] + 4 * (*(v34 + *v44 + 1) & 0xF)) != *&v412[4 * (v412[*v44 + 1] & 0xF) + *MEMORY[0x277CD7410]] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*&v413[4 * (*&v413[*v44] & 0xF) + *MEMORY[0x277CD7410]] != *&v412[4 * (*&v412[*v44] & 0xF) + *MEMORY[0x277CD7410]] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v106 = v388;
  if (v388 <= 268435487)
  {
    if (v388 <= 268435463)
    {
      if (v388 == -1879048176 || v388 == 8)
      {
        goto LABEL_147;
      }

      goto LABEL_310;
    }

    if (v388 == 268435464)
    {
      goto LABEL_147;
    }

    v107 = 268435472;
    goto LABEL_145;
  }

  if (v388 > 335544327)
  {
    if (v388 == 335544328)
    {
      goto LABEL_147;
    }

    v107 = 536870920;
LABEL_145:
    v106 = v388;
    goto LABEL_146;
  }

  if (v388 == 268435488)
  {
    MPSForceMatrixUnit();
    if (MPSForceMatrixUnit())
    {
      goto LABEL_147;
    }

    goto LABEL_310;
  }

  v107 = 301989896;
LABEL_146:
  if (v106 == v107)
  {
    goto LABEL_147;
  }

LABEL_310:
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_147:
  v108 = v390;
  if (v390 > 268435487)
  {
    if (v390 <= 335544327)
    {
      if (v390 == 268435488)
      {
        MPSForceMatrixUnit();
        if (MPSForceMatrixUnit())
        {
          goto LABEL_161;
        }

        goto LABEL_313;
      }

      v109 = 301989896;
      goto LABEL_160;
    }

    if (v390 == 335544328)
    {
      goto LABEL_161;
    }

    v109 = 536870920;
LABEL_159:
    v108 = v390;
LABEL_160:
    if (v108 == v109)
    {
      goto LABEL_161;
    }

    goto LABEL_313;
  }

  if (v390 > 268435463)
  {
    if (v390 == 268435464)
    {
      goto LABEL_161;
    }

    v109 = 268435472;
    goto LABEL_159;
  }

  if (v390 == -1879048176 || v390 == 8)
  {
    goto LABEL_161;
  }

LABEL_313:
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_161:
  v110 = v34 + *v44;
  if ((!*(v110 + 2) || !*(v110 + 3)) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v111 = &v413[*v44];
  if ((!v111[2] || !v111[3]) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v112 = MEMORY[0x277CD7428];
  if (*(v34 + *MEMORY[0x277CD7428]) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*&v413[*v112] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v113 = *v44;
  v114 = v34 + v113;
  v115 = *(v34 + v113);
  v116 = &v413[v113];
  v117 = *&v413[v113];
  v118 = *v112;
  v119 = *(v34 + v118);
  v120 = *(v34 + v118 + 16);
  v121 = *(v34 + v118 + 32);
  v122 = *(v34 + v118 + 48);
  v123 = *(v34 + v118 + 64);
  v124 = *(v34 + v118 + 80);
  v125 = *(v34 + v118 + 96);
  v126 = *(v34 + v118 + 112);
  if (v115)
  {
    v127 = *(v34 + v113);
  }

  else
  {
    v127 = BYTE1(*(v34 + v113));
  }

  v456[7] = *(v34 + v118 + 112);
  v456[6] = v125;
  v456[5] = v124;
  v456[4] = v123;
  v456[3] = v122;
  v456[2] = v121;
  v456[1] = v120;
  v456[0] = v119;
  v359 = *(v456 + (v127 & 0xF));
  v128 = *&v413[v118];
  v129 = *&v413[v118 + 16];
  v130 = *&v413[v118 + 32];
  v131 = *&v413[v118 + 48];
  v132 = *&v413[v118 + 64];
  v133 = *&v413[v118 + 80];
  v134 = *&v413[v118 + 96];
  v135 = *&v413[v118 + 112];
  if (v117)
  {
    v136 = v117;
  }

  else
  {
    v136 = BYTE1(v117);
  }

  v457[7] = *&v413[v118 + 112];
  v457[6] = v134;
  v457[5] = v133;
  v457[4] = v132;
  v457[3] = v131;
  v457[2] = v130;
  v457[1] = v129;
  v457[0] = v128;
  v358 = *(v457 + (v136 & 0xF));
  if (v382 == 1 || v385 != 1 || v115)
  {
    if (v385 == 1 || v382 != 1 || !v117)
    {
      goto LABEL_196;
    }

    LODWORD(v360) = 0;
    if (v117 > 1u || BYTE1(v117) > 1u || BYTE2(v117) != 2 || BYTE1(v117) >= BYTE2(v117))
    {
      goto LABEL_199;
    }

    v138 = BYTE1(v117) & 0xF;
    v139 = *&v413[4 * v138 + *MEMORY[0x277CD7410]];
    v454[0] = v128;
    v454[1] = v129;
    v454[2] = v130;
    v454[3] = v131;
    v454[4] = v132;
    v454[5] = v133;
    v454[6] = v134;
    v454[7] = v135;
    if (*(v454 + v138) * v139 != v129)
    {
      goto LABEL_197;
    }
  }

  else
  {
    if (BYTE1(v115) > 1u)
    {
      goto LABEL_198;
    }

    if (BYTE2(v115) != 2)
    {
      goto LABEL_198;
    }

    if (BYTE1(v115) >= BYTE2(v115))
    {
      goto LABEL_198;
    }

    v137 = *(v34 + *MEMORY[0x277CD7410] + 4 * (BYTE1(v115) & 0xF));
    v455[0] = v119;
    v455[1] = v120;
    v455[2] = v121;
    v455[3] = v122;
    v455[4] = v123;
    v455[5] = v124;
    v455[6] = v125;
    v455[7] = v126;
    if (*(v455 + (BYTE1(v115) & 0xF)) * v137 != v120)
    {
      goto LABEL_198;
    }
  }

  v141 = v410 > 7 && v409 > 7;
  if (!v141 && !v402)
  {
    EncodeMatrixMultiplyLinkingA14(v14, v411, v361, v33, v35, v36, v37);
    operator delete(0);
    return 0;
  }

LABEL_196:
  if (v382 == 1)
  {
LABEL_197:
    LODWORD(v360) = 0;
    goto LABEL_199;
  }

LABEL_198:
  v453[0] = v119;
  v453[1] = v120;
  v453[2] = v121;
  v453[3] = v122;
  v453[4] = v123;
  v453[5] = v124;
  v453[6] = v125;
  v453[7] = v126;
  v360 = *(v453 + (BYTE2(v115) & 0xF));
LABEL_199:
  v452[0] = v119;
  v452[1] = v120;
  v452[2] = v121;
  v452[3] = v122;
  v452[4] = v123;
  v452[5] = v124;
  v452[6] = v125;
  v452[7] = v126;
  if (v372 == 1)
  {
    v142 = 0;
  }

  else
  {
    v142 = *(v452 + (BYTE3(v115) & 0xF));
  }

  v451[0] = v128;
  v451[1] = v129;
  v451[2] = v130;
  v451[3] = v131;
  v451[4] = v132;
  v451[5] = v133;
  v451[6] = v134;
  v451[7] = v135;
  if (v385 == 1)
  {
    v143 = 0;
  }

  else
  {
    v143 = *(v451 + (BYTE2(v117) & 0xF));
  }

  v450[0] = v128;
  v450[1] = v129;
  v450[2] = v130;
  v450[3] = v131;
  v450[4] = v132;
  v450[5] = v133;
  v450[6] = v134;
  v450[7] = v135;
  if (v374 == 1)
  {
    v144 = 0;
  }

  else
  {
    v144 = *(v450 + (BYTE3(v117) & 0xF));
  }

  v373 = 0u;
  v375 = 0u;
  v371 = 0u;
  v386 = 0u;
  v145 = v380;
  v146 = v381;
  v147 = v391;
  if (v406)
  {
    v148 = *(v400 + v113);
    v149 = *MEMORY[0x277CD7410];
    v150 = *(v400 + v149);
    v151 = *(v400 + v149 + 16);
    v152 = *(v400 + v149 + 32);
    v153 = *(v400 + v149 + 48);
    v449[3] = v153;
    v449[2] = v152;
    v449[1] = v151;
    v449[0] = v150;
    if (*(v449 + (v148 & 0xF)) == 1)
    {
      LODWORD(v154) = 0;
    }

    else
    {
      v154 = *(v400 + v118 + 8 * (v148 & 0xF));
    }

    v448[0] = v150;
    v448[1] = v151;
    v448[2] = v152;
    v448[3] = v153;
    if (*(v448 + (BYTE1(v148) & 0xF)) == 1)
    {
      LODWORD(v155) = 0;
    }

    else
    {
      v155 = *(v400 + v118 + 8 * (BYTE1(v148) & 0xF));
    }

    v447[0] = v150;
    v447[1] = v151;
    v447[2] = v152;
    v447[3] = v153;
    if (*(v447 + (BYTE2(v148) & 0xF)) == 1)
    {
      LODWORD(v156) = 0;
    }

    else
    {
      v156 = *(v400 + v118 + 8 * (BYTE2(v148) & 0xF));
    }

    v446[0] = v150;
    v446[1] = v151;
    v446[2] = v152;
    v446[3] = v153;
    if (*(v446 + (BYTE3(v148) & 0xF)) == 1)
    {
      LODWORD(v157) = 0;
    }

    else
    {
      v157 = *(v400 + v118 + 8 * (BYTE3(v148) & 0xF));
    }

    *&v148 = __PAIR64__(v155, v154);
    DWORD2(v148) = v156;
    v387 = v148;
    v371 = 0u;
    v373 = 0u;
    if (v396)
    {
      v158 = *(v396 + v113);
      v159 = *(v396 + v149);
      v160 = *(v396 + v149 + 16);
      v161 = *(v396 + v149 + 32);
      v162 = *(v396 + v149 + 48);
      v445[3] = v162;
      v445[2] = v161;
      v445[1] = v160;
      v445[0] = v159;
      if (*(v445 + (v158 & 0xF)) == 1)
      {
        LODWORD(v163) = 0;
      }

      else
      {
        v163 = *(v396 + v118 + 8 * (v158 & 0xF));
      }

      v444[0] = v159;
      v444[1] = v160;
      v444[2] = v161;
      v444[3] = v162;
      if (*(v444 + (BYTE1(v158) & 0xF)) == 1)
      {
        LODWORD(v164) = 0;
      }

      else
      {
        v164 = *(v396 + v118 + 8 * (BYTE1(v158) & 0xF));
      }

      v443[0] = v159;
      v443[1] = v160;
      v443[2] = v161;
      v443[3] = v162;
      if (*(v443 + (BYTE2(v158) & 0xF)) == 1)
      {
        LODWORD(v165) = 0;
      }

      else
      {
        v165 = *(v396 + v118 + 8 * (BYTE2(v158) & 0xF));
      }

      v442[0] = v159;
      v442[1] = v160;
      v442[2] = v161;
      v442[3] = v162;
      if (*(v442 + (BYTE3(v158) & 0xF)) == 1)
      {
        LODWORD(v166) = 0;
      }

      else
      {
        v166 = *(v396 + v118 + 8 * (BYTE3(v158) & 0xF));
      }

      *&v167 = __PAIR64__(v164, v163);
      *(&v167 + 1) = __PAIR64__(v166, v165);
      v371 = v167;
    }

    v168 = v387;
    HIDWORD(v168) = v157;
    v386 = v168;
    if (v381)
    {
      v169 = *(v381 + v113);
      v170 = (v381 + v149);
      v171 = *v170;
      v172 = v170[1];
      v173 = v170[2];
      v174 = v170[3];
      v441[3] = v174;
      v441[2] = v173;
      v441[1] = v172;
      v441[0] = v171;
      if (*(v441 + (v169 & 0xF)) == 1)
      {
        LODWORD(v175) = 0;
      }

      else
      {
        v175 = *(v381 + v118 + 8 * (v169 & 0xF));
      }

      v440[0] = v171;
      v440[1] = v172;
      v440[2] = v173;
      v440[3] = v174;
      if (*(v440 + (BYTE1(v169) & 0xF)) == 1)
      {
        LODWORD(v176) = 0;
      }

      else
      {
        v176 = *(v381 + v118 + 8 * (BYTE1(v169) & 0xF));
      }

      v439[0] = v171;
      v439[1] = v172;
      v439[2] = v173;
      v439[3] = v174;
      if (*(v439 + (BYTE2(v169) & 0xF)) == 1)
      {
        LODWORD(v177) = 0;
      }

      else
      {
        v177 = *(v381 + v118 + 8 * (BYTE2(v169) & 0xF));
      }

      v438[0] = v171;
      v438[1] = v172;
      v438[2] = v173;
      v438[3] = v174;
      if (*(v438 + (BYTE3(v169) & 0xF)) == 1)
      {
        LODWORD(v178) = 0;
      }

      else
      {
        v178 = *(v381 + v118 + 8 * (BYTE3(v169) & 0xF));
      }

      *&v179 = __PAIR64__(v176, v175);
      *(&v179 + 1) = __PAIR64__(v178, v177);
      v373 = v179;
    }
  }

  v370 = 0u;
  v383 = 0u;
  if (v404)
  {
    v180 = *(v391 + v113);
    v181 = *MEMORY[0x277CD7410];
    v182 = *(v391 + v181);
    v183 = *(v391 + v181 + 16);
    v184 = *(v391 + v181 + 32);
    v185 = *(v391 + v181 + 48);
    v437[3] = v185;
    v437[2] = v184;
    v437[1] = v183;
    v437[0] = v182;
    if (*(v437 + (v180 & 0xF)) == 1)
    {
      LODWORD(v186) = 0;
    }

    else
    {
      v186 = *(v391 + v118 + 8 * (v180 & 0xF));
    }

    v436[0] = v182;
    v436[1] = v183;
    v436[2] = v184;
    v436[3] = v185;
    if (*(v436 + (BYTE1(v180) & 0xF)) == 1)
    {
      LODWORD(v187) = 0;
    }

    else
    {
      v187 = *(v391 + v118 + 8 * (BYTE1(v180) & 0xF));
    }

    v435[0] = v182;
    v435[1] = v183;
    v435[2] = v184;
    v435[3] = v185;
    if (*(v435 + (BYTE2(v180) & 0xF)) == 1)
    {
      LODWORD(v188) = 0;
    }

    else
    {
      v188 = *(v391 + v118 + 8 * (BYTE2(v180) & 0xF));
    }

    v434[0] = v182;
    v434[1] = v183;
    v434[2] = v184;
    v434[3] = v185;
    if (*(v434 + (BYTE3(v180) & 0xF)) == 1)
    {
      LODWORD(v189) = 0;
    }

    else
    {
      v189 = *(v391 + v118 + 8 * (BYTE3(v180) & 0xF));
    }

    *&v180 = __PAIR64__(v187, v186);
    DWORD2(v180) = v188;
    v384 = v180;
    v375 = 0u;
    v370 = 0u;
    if (v394)
    {
      v190 = *(v394 + v113);
      v191 = *(v394 + v181);
      v192 = *(v394 + v181 + 16);
      v193 = *(v394 + v181 + 32);
      v194 = *(v394 + v181 + 48);
      v433[3] = v194;
      v433[2] = v193;
      v433[1] = v192;
      v433[0] = v191;
      if (*(v433 + (v190 & 0xF)) == 1)
      {
        LODWORD(v195) = 0;
      }

      else
      {
        v195 = *(v394 + v118 + 8 * (v190 & 0xF));
      }

      v432[0] = v191;
      v432[1] = v192;
      v432[2] = v193;
      v432[3] = v194;
      if (*(v432 + (BYTE1(v190) & 0xF)) == 1)
      {
        LODWORD(v196) = 0;
      }

      else
      {
        v196 = *(v394 + v118 + 8 * (BYTE1(v190) & 0xF));
      }

      v431[0] = v191;
      v431[1] = v192;
      v431[2] = v193;
      v431[3] = v194;
      if (*(v431 + (BYTE2(v190) & 0xF)) == 1)
      {
        LODWORD(v197) = 0;
      }

      else
      {
        v197 = *(v394 + v118 + 8 * (BYTE2(v190) & 0xF));
      }

      v430[0] = v191;
      v430[1] = v192;
      v430[2] = v193;
      v430[3] = v194;
      if (*(v430 + (BYTE3(v190) & 0xF)) == 1)
      {
        LODWORD(v198) = 0;
      }

      else
      {
        v198 = *(v394 + v118 + 8 * (BYTE3(v190) & 0xF));
      }

      *&v199 = __PAIR64__(v196, v195);
      *(&v199 + 1) = __PAIR64__(v198, v197);
      v370 = v199;
    }

    v200 = v384;
    HIDWORD(v200) = v189;
    v383 = v200;
    if (v380)
    {
      v201 = *(v380 + v113);
      v202 = *(v380 + v181);
      v203 = *(v380 + v181 + 16);
      v204 = *(v380 + v181 + 32);
      v205 = *(v380 + v181 + 48);
      v429[3] = v205;
      v429[2] = v204;
      v429[1] = v203;
      v429[0] = v202;
      if (*(v429 + (v201 & 0xF)) == 1)
      {
        LODWORD(v206) = 0;
      }

      else
      {
        v206 = *(v380 + v118 + 8 * (v201 & 0xF));
      }

      v428[0] = v202;
      v428[1] = v203;
      v428[2] = v204;
      v428[3] = v205;
      if (*(v428 + (BYTE1(v201) & 0xF)) == 1)
      {
        LODWORD(v207) = 0;
      }

      else
      {
        v207 = *(v380 + v118 + 8 * (BYTE1(v201) & 0xF));
      }

      v427[0] = v202;
      v427[1] = v203;
      v427[2] = v204;
      v427[3] = v205;
      if (*(v427 + (BYTE2(v201) & 0xF)) == 1)
      {
        LODWORD(v208) = 0;
      }

      else
      {
        v208 = *(v380 + v118 + 8 * (BYTE2(v201) & 0xF));
      }

      v426[0] = v202;
      v426[1] = v203;
      v426[2] = v204;
      v426[3] = v205;
      if (*(v426 + (BYTE3(v201) & 0xF)) == 1)
      {
        LODWORD(v209) = 0;
      }

      else
      {
        v209 = *(v380 + v118 + 8 * (BYTE3(v201) & 0xF));
      }

      *&v210 = __PAIR64__(v207, v206);
      *(&v210 + 1) = __PAIR64__(v209, v208);
      v375 = v210;
    }
  }

  v518 = v410;
  v519 = v409;
  v520 = v408;
  v521 = v389;
  v522 = v377;
  v523 = *v114;
  v524 = *(v114 + 1);
  v525 = *(v114 + 2);
  v526 = *(v114 + 3);
  v527 = *v116;
  v528 = v116[1];
  v529 = v116[2];
  v530 = v116[3];
  v211 = *MEMORY[0x277CD73C8];
  v212 = *(v34 + v211);
  v356 = v143;
  v357 = v142;
  v355 = v144;
  if (v212 > 268435487)
  {
    if (v212 > 536870913)
    {
      switch(v212)
      {
        case 536870914:
          v213 = 9;
          goto LABEL_329;
        case 536870916:
          v213 = 7;
          goto LABEL_329;
        case 536870920:
          v213 = 0;
          goto LABEL_329;
      }
    }

    else
    {
      if (v212 == 268435488)
      {
        v213 = 6;
        goto LABEL_329;
      }

      if (v212 == 301989896 || v212 == 335544328)
      {
        v213 = 2;
        goto LABEL_329;
      }
    }
  }

  else if (v212 > 7)
  {
    switch(v212)
    {
      case 8:
        v213 = 1;
        goto LABEL_329;
      case 268435464:
        v213 = 3;
        goto LABEL_329;
      case 268435472:
        v213 = 4;
        goto LABEL_329;
    }
  }

  else
  {
    switch(v212)
    {
      case -1879048176:
        v213 = 5;
        goto LABEL_329;
      case 2:
        v213 = 10;
        goto LABEL_329;
      case 4:
        v213 = 8;
        goto LABEL_329;
    }
  }

  v213 = 11;
LABEL_329:
  v531 = v213;
  v215 = *&v413[v211];
  if (v215 > 268435487)
  {
    if (v215 > 536870913)
    {
      switch(v215)
      {
        case 536870914:
          v216 = 9;
          goto LABEL_356;
        case 536870916:
          v216 = 7;
          goto LABEL_356;
        case 536870920:
          v216 = 0;
          goto LABEL_356;
      }
    }

    else
    {
      if (v215 == 268435488)
      {
        v216 = 6;
        goto LABEL_356;
      }

      if (v215 == 301989896 || v215 == 335544328)
      {
        v216 = 2;
        goto LABEL_356;
      }
    }
  }

  else if (v215 > 7)
  {
    switch(v215)
    {
      case 8:
        v216 = 1;
        goto LABEL_356;
      case 268435464:
        v216 = 3;
        goto LABEL_356;
      case 268435472:
        v216 = 4;
        goto LABEL_356;
    }
  }

  else
  {
    switch(v215)
    {
      case -1879048176:
        v216 = 5;
        goto LABEL_356;
      case 2:
        v216 = 10;
        goto LABEL_356;
      case 4:
        v216 = 8;
        goto LABEL_356;
    }
  }

  v216 = 11;
LABEL_356:
  v532 = v216;
  v533 = v362;
  v534 = v364;
  v535 = v368;
  v536 = v378;
  if (v396 | v381)
  {
    v217 = 1;
  }

  else
  {
    v217 = v406 == 0;
  }

  v218 = !v217;
  v537 = v218;
  if (v394 | v380)
  {
    v219 = 1;
  }

  else
  {
    v219 = v404 == 0;
  }

  v220 = !v219;
  v538 = v220;
  if (v17)
  {
    v222 = *v17;
    v221 = v17[1];
    v379 = v17[2];
    v393 = v17[3];
    v392 = v17[4];
    v399 = v17[5];
    v369 = v17[6];
    v403 = v17[7];
    v365 = v17[8];
    v223 = v17[9];
    v224 = v17[10];
    goto LABEL_381;
  }

  v225 = v15[4];
  if (v225)
  {
    v226 = v15[5];
    if (v226)
    {
      while (memcmp(v225, &v518, 0x50uLL))
      {
        v225 += 31;
        if (!--v226)
        {
          goto LABEL_374;
        }
      }

      goto LABEL_380;
    }
  }

LABEL_374:
  v227 = v15[3];
  if (v227)
  {
    v225 = v15[2];
    while (memcmp(v225, &v518, 0x50uLL))
    {
      v225 += 31;
      if (!--v227)
      {
        goto LABEL_378;
      }
    }

LABEL_380:
    v222 = v225[20];
    v221 = v225[21];
    v379 = v225[22];
    v393 = v225[23];
    v392 = v225[24];
    v399 = v225[25];
    v369 = v225[26];
    v403 = v225[27];
    v365 = v225[28];
    v223 = v225[29];
    v224 = v225[30];
LABEL_381:
    v363 = v223;
    v230 = v408;
    v231 = v409;
    v229 = v410;
    if ((*(v14 + *MEMORY[0x277CD7378]) & 0x10) == 0)
    {
      goto LABEL_420;
    }

LABEL_419:
    v238 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d}", v229, v231, v230, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v534, v535, v536, v537, v538];
    MPSKernel_LogInfo(v14, 1uLL, "MatMul A18 kernel running key with params:    {%s, %s}\n", [v238 UTF8String], objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"{%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d}", v222, v221, v379, v393, v392, v399, v369, v403, v365, v363, v224), "UTF8String"));
    goto LABEL_420;
  }

LABEL_378:
  if (v213 >= 4)
  {
    if (v213 - 4 >= 2)
    {
      if (v213 != 6 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v228 = 0;
      v369 = 4;
      v230 = v520;
      v229 = v518;
    }

    else
    {
      v230 = v408;
      v369 = 2;
      if (v408 <= 0x1000)
      {
        v228 = 2;
      }

      else
      {
        v228 = 3;
      }

      v229 = v410;
    }
  }

  else
  {
    v228 = 4;
    v369 = 2;
    v229 = v410;
    v230 = v408;
  }

  if ((v230 + 15) >> 4 < v228)
  {
    v228 = (v230 + 15) >> 4;
  }

  if (v228 <= 1)
  {
    v222 = 1;
  }

  else
  {
    v222 = v228;
  }

  if (v229 > 1)
  {
    v232 = 64 - __clz(v229 - 1);
  }

  else
  {
    v232 = (v229 == 0) << 63;
  }

  if (v232 >= 7)
  {
    v232 = 7;
  }

  v233 = 4;
  if (v232 > 4)
  {
    v233 = v232;
  }

  v231 = v519;
  if (v519 > 1)
  {
    v234 = 64 - __clz(v519 - 1);
  }

  else
  {
    v234 = (v519 == 0) << 63;
  }

  v363 = 0;
  v224 = 0;
  if (v234 >= 6)
  {
    v234 = 6;
  }

  if (v234 <= 4)
  {
    LOBYTE(v234) = 4;
  }

  v235 = v233 - 4;
  if ((v233 - 4) >= 2)
  {
    v235 = 2;
  }

  LODWORD(v236) = 8 * (v230 > 0x400);
  v393 = (1 << v235);
  v237 = 1 << v233;
  if (v230 <= 0x1000)
  {
    v236 = v236;
  }

  else
  {
    v236 = 12;
  }

  v365 = v236;
  v221 = v237 >> v235 >> 4;
  v392 = 1;
  v379 = (1 << v234) >> 4;
  v399 = 1;
  v403 = 1;
  if ((*(v14 + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    goto LABEL_419;
  }

LABEL_420:
  if (qword_27DF86800 == -1)
  {
    if (_MergedGlobals_18 != 1)
    {
      goto LABEL_426;
    }
  }

  else
  {
    dispatch_once(&qword_27DF86800, &__block_literal_global_0);
    if (_MergedGlobals_18 != 1)
    {
      goto LABEL_426;
    }
  }

  if ([v14 conformsToProtocol:{&unk_284CCB9C0, v145, v147, v146}])
  {
    if (!qword_27DF867F8)
    {
      qword_27DF867F8 = objc_alloc_init(MPSNDArrayAutoTuneRecorderObj);
    }

    v239 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v518 length:80];
    [qword_27DF867F8 recordNode:v239 kernelID:2];
  }

LABEL_426:
  if (v366 != -1)
  {
    if ((v366 & 0x8000000000000000) != 0)
    {
      v251 = -1;
    }

    else
    {
      if (v366 >> 16 <= 2)
      {
        v240 = v366;
        while (1)
        {
          v241 = vdup_n_s32(v240);
          v242 = vadd_s32(vand_s8(vshl_u32(v241, 0xFFFFFFFEFFFFFFFCLL), 0x300000003), 0x100000001);
          v243 = vadd_s32(vand_s8(vshl_u32(v241, 0xFFFFFFFAFFFFFFF7), 0x700000007), 0x100000001);
          v244 = vshl_n_s32(vmul_s32(v242, v243), 4uLL);
          v245 = vcgt_u32(0x400100000009, vmul_s32(vzip1_s32(v243, v244), vzip2_s32(v243, v244)));
          if (v245.i8[0] & 1) != 0 && (v245.i8[4])
          {
            v246 = v244.i32[0] < 0x40u || ((v240 >> 14) + 1) * (((v240 >> 12) & 3) + 1) > 8;
            if (!v246 && v244.i32[1] >= 0x40u)
            {
              break;
            }
          }

          if (++v240 == 196608)
          {
            goto LABEL_439;
          }
        }

        v224 = 0;
        v222 = (v240 & 3) + 1;
        v363 = 0;
        v365 = (v240 >> 14) & 0xC;
        v379 = v242.u32[0];
        v221 = v242.u32[1];
        v392 = v243.u32[0];
        v393 = v243.u32[1];
        v399 = 1;
        v369 = ((v240 >> 12) & 3) + 1;
        v403 = (v240 >> 14) + 1;
      }

LABEL_439:
      if (v392 * v393 > 8 || (v247 = 16 * v221 * v393, v248 = 16 * v379 * v392, v248 * v247 > 0x4000) || v248 < 0x40 || v247 < 0x40 || v403 * v369 >= 9)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

      if (v366 < 0x30000)
      {
        v249 = 196607;
      }

      else
      {
        v249 = v366;
      }

      v250 = 4 * v366 + 4;
      v251 = v366;
      while (v249 != v251)
      {
        v252 = v250;
        v253 = ((++v251 >> 6) & 7) + 1;
        v254 = ((v251 >> 9) & 7) + 1;
        v250 += 4;
        if (v254 * v253 <= 8)
        {
          v255 = ((v252 & 0x30u) + 16) * v253;
          v256 = v254 * ((v251 & 0x30) + 16);
          if (v256 * v255 <= 0x4000 && v256 >= 0x40 && ((v251 >> 12) & 3) + 1 + (((v251 >> 12) & 3) + 1) * (v251 >> 14) <= 8 && v255 >= 0x40)
          {
            goto LABEL_457;
          }
        }
      }

      v251 = -1;
LABEL_457:
      if (v251 == v366)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v251 = v366;
      }
    }

    *(v14 + 224) = v251;
    if (*(v14 + 232) == 1)
    {
      *(v14 + 232) = 0;
      v257 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d}", v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v534, v535, v536, v537, v538];
      MPSKernel_LogInfo(v14, 0, "MatMul A18 kernel running auto tune iteration %7ld key with params:    {%s, %s}\n", v366, [v257 UTF8String], objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"{%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d}", v222, v221, v379, v393, v392, v399, v369, v403, v365, v363, v224), "UTF8String"));
    }
  }

  v258 = (16 * v222 * v399);
  if (v224)
  {
    if (v224 >= 0x10 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v258 + v258 * v224 >= v408 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v367 = v224;
  v259 = (v393 * 16 * v221);
  v260 = v389 * v377;
  v352 = (*(*(v14 + *MEMORY[0x277CD7350]) + 1488) & 0xE) != 0 && v260 > 1;
  v353 = (v260 + 1) >> 1;
  if (v352)
  {
    v261 = (v260 + 1) >> 1;
  }

  else
  {
    v261 = v389 * v377;
  }

  v262 = *MEMORY[0x277CD73C8];
  v263 = *(v34 + v262);
  v354 = v261;
  if (v263 > 268435487)
  {
    if (v263 > 335544327)
    {
      if (v263 != 335544328)
      {
        if (v263 == 536870920)
        {
          v264 = 0;
          v265 = *&v413[v262];
          if (v265 > 268435487)
          {
            goto LABEL_497;
          }

          goto LABEL_485;
        }

        goto LABEL_551;
      }
    }

    else
    {
      if (v263 == 268435488)
      {
        v264 = 6;
        v265 = *&v413[v262];
        if (v265 <= 268435487)
        {
          goto LABEL_485;
        }

        goto LABEL_497;
      }

      if (v263 != 301989896)
      {
        goto LABEL_551;
      }
    }

    v264 = 2;
    v265 = *&v413[v262];
    if (v265 <= 268435487)
    {
      goto LABEL_485;
    }

    goto LABEL_497;
  }

  if (v263 <= 268435463)
  {
    if (v263 == -1879048176)
    {
      v264 = 5;
      v265 = *&v413[v262];
      if (v265 > 268435487)
      {
        goto LABEL_497;
      }

      goto LABEL_485;
    }

    if (v263 == 8)
    {
      v264 = 1;
      v265 = *&v413[v262];
      if (v265 > 268435487)
      {
        goto LABEL_497;
      }

LABEL_485:
      if (v265 > 268435463)
      {
        if (v265 == 268435464)
        {
          v264 |= 0x18u;
          if ((*(v34 + v262) & 0xFFF8) == 8)
          {
            goto LABEL_506;
          }
        }

        else
        {
          if (v265 != 268435472)
          {
            goto LABEL_553;
          }

          v264 |= 0x20u;
          if ((*(v34 + v262) & 0xFFF8) == 8)
          {
            goto LABEL_506;
          }
        }
      }

      else if (v265 == -1879048176)
      {
        v264 |= 0x28u;
        if ((*(v34 + v262) & 0xFFF8) == 8)
        {
          goto LABEL_506;
        }
      }

      else
      {
        if (v265 != 8)
        {
          goto LABEL_553;
        }

        v264 |= 8u;
        if ((*(v34 + v262) & 0xFFF8) == 8)
        {
          goto LABEL_506;
        }
      }

      goto LABEL_510;
    }

    goto LABEL_551;
  }

  if (v263 != 268435464)
  {
    if (v263 == 268435472)
    {
      v264 = 4;
      v265 = *&v413[v262];
      if (v265 > 268435487)
      {
        goto LABEL_497;
      }

      goto LABEL_485;
    }

LABEL_551:
    v264 = 7;
    v265 = *&v413[v262];
    if (v265 > 268435487)
    {
      goto LABEL_497;
    }

    goto LABEL_485;
  }

  v264 = 3;
  v265 = *&v413[v262];
  if (v265 <= 268435487)
  {
    goto LABEL_485;
  }

LABEL_497:
  if (v265 <= 335544327)
  {
    if (v265 == 268435488)
    {
      v264 |= 0x30u;
      if ((*(v34 + v262) & 0xFFF8) == 8)
      {
        goto LABEL_506;
      }

      goto LABEL_510;
    }

    if (v265 != 301989896)
    {
LABEL_553:
      v264 |= 0x38u;
      if ((*(v34 + v262) & 0xFFF8) != 8)
      {
        goto LABEL_510;
      }

LABEL_506:
      v266 = ((*(v34 + *MEMORY[0x277CD7408]) & 3) == 0) << 28;
      goto LABEL_511;
    }

    goto LABEL_505;
  }

  if (v265 == 335544328)
  {
LABEL_505:
    v264 |= 0x10u;
    if ((*(v34 + v262) & 0xFFF8) == 8)
    {
      goto LABEL_506;
    }

    goto LABEL_510;
  }

  if (v265 != 536870920)
  {
    goto LABEL_553;
  }

  if ((*(v34 + v262) & 0xFFF8) == 8)
  {
    goto LABEL_506;
  }

LABEL_510:
  v266 = 0x10000000;
LABEL_511:
  v267 = v264 | v266;
  if ((v265 & 0xFFF8) == 8)
  {
    v268 = v267 | (((v413[*MEMORY[0x277CD7408]] & 3) == 0) << 29);
    if (!v406)
    {
      goto LABEL_513;
    }
  }

  else
  {
    v268 = v267 | 0x20000000;
    if (!v406)
    {
LABEL_513:
      if (v404)
      {
        goto LABEL_514;
      }

      goto LABEL_593;
    }
  }

  v271 = *(v400 + v262);
  if (v271 > 268435487)
  {
    if (v271 > 335544327)
    {
      if (v271 != 335544328)
      {
        if (v271 == 536870920)
        {
          v272 = 0;
          goto LABEL_578;
        }

        goto LABEL_577;
      }
    }

    else
    {
      if (v271 == 268435488)
      {
        v272 = 384;
        goto LABEL_578;
      }

      if (v271 != 301989896)
      {
        goto LABEL_577;
      }
    }

    v272 = 128;
    goto LABEL_578;
  }

  if (v271 > 268435463)
  {
    if (v271 == 268435464)
    {
      v272 = 192;
      goto LABEL_578;
    }

    if (v271 == 268435472)
    {
      v272 = 256;
      goto LABEL_578;
    }
  }

  else
  {
    if (v271 == -1879048176)
    {
      v272 = 320;
      goto LABEL_578;
    }

    if (v271 == 8)
    {
      v272 = 64;
      goto LABEL_578;
    }
  }

LABEL_577:
  v272 = 448;
LABEL_578:
  v297 = *MEMORY[0x277CD7410];
  v298 = *(v400 + v297);
  v299 = *(v400 + v297 + 16);
  v300 = *v44;
  v301 = *(v400 + v300);
  v302 = *(v400 + v297 + 32);
  v303 = *(v400 + v297 + 48);
  v425[3] = v303;
  v425[2] = v302;
  v425[1] = v299;
  v425[0] = v298;
  if (*(v425 + (v301 & 0xF)) == 1)
  {
    v424[0] = v298;
    v424[1] = v299;
    v424[2] = v302;
    v424[3] = v303;
    v304 = (*(v424 + (BYTE1(v301) & 0xF)) == 1) << 16;
    if (!v396)
    {
LABEL_585:
      v310 = 0;
      v311 = v381;
      if (!v381)
      {
        goto LABEL_588;
      }

      goto LABEL_586;
    }
  }

  else
  {
    v304 = 0;
    if (!v396)
    {
      goto LABEL_585;
    }
  }

  v305 = *(v396 + v297);
  v306 = *(v396 + v297 + 16);
  v307 = *(v396 + v300);
  v308 = *(v396 + v297 + 32);
  v309 = *(v396 + v297 + 48);
  v423[3] = v309;
  v423[2] = v308;
  v423[1] = v306;
  v423[0] = v305;
  if (*(v423 + (v307 & 0xF)) != 1)
  {
    goto LABEL_585;
  }

  v422[0] = v305;
  v422[1] = v306;
  v422[2] = v308;
  v422[3] = v309;
  v310 = (*(v422 + (BYTE1(v307) & 0xF)) == 1) << 18;
  v311 = v381;
  if (!v381)
  {
    goto LABEL_588;
  }

LABEL_586:
  v312 = (v311 + v297);
  v313 = *v312;
  v314 = v312[1];
  v315 = *(v311 + v300);
  v316 = v312[2];
  v317 = v312[3];
  v421[3] = v317;
  v421[2] = v316;
  v421[1] = v314;
  v421[0] = v313;
  if (*(v421 + (v315 & 0xF)) == 1)
  {
    v420[0] = v313;
    v420[1] = v314;
    v420[2] = v316;
    v420[3] = v317;
    v318 = (*(v420 + (BYTE1(v315) & 0xF)) == 1) << 20;
    goto LABEL_589;
  }

LABEL_588:
  v318 = 0;
LABEL_589:
  if (v396)
  {
    v319 = ((*(v396 + *MEMORY[0x277CD7408]) & 3) == 0) << 30;
  }

  else
  {
    v319 = 0;
  }

  v268 |= ((v381 != 0) << 14) | ((v396 != 0) << 12) | ((BYTE4(v373) & 1) << 24) | ((BYTE4(v371) & 1) << 23) | ((BYTE4(v386) & 1) << 22) | v272 | v304 | v310 | v318 | v319;
  if (v404)
  {
LABEL_514:
    v269 = *(v391 + v262);
    if (v269 <= 268435487)
    {
      if (v269 > 268435463)
      {
        if (v269 == 268435464)
        {
          v270 = 1536;
          goto LABEL_562;
        }

        if (v269 == 268435472)
        {
          v270 = 2048;
          goto LABEL_562;
        }
      }

      else
      {
        if (v269 == -1879048176)
        {
          v270 = 2560;
          goto LABEL_562;
        }

        if (v269 == 8)
        {
          v270 = 512;
          goto LABEL_562;
        }
      }

LABEL_561:
      v270 = 3584;
LABEL_562:
      v273 = *MEMORY[0x277CD7410];
      v274 = *(v391 + v273);
      v275 = *(v391 + v273 + 16);
      v276 = *v44;
      v277 = *(v391 + v276);
      v278 = *(v391 + v273 + 32);
      v279 = *(v391 + v273 + 48);
      v419[3] = v279;
      v419[2] = v278;
      v419[1] = v275;
      v419[0] = v274;
      if (*(v419 + (v277 & 0xF)) == 1)
      {
        v418[0] = v274;
        v418[1] = v275;
        v418[2] = v278;
        v418[3] = v279;
        v280 = (*(v418 + (BYTE1(v277) & 0xF)) == 1) << 17;
        v281 = v390;
        if (!v394)
        {
          goto LABEL_569;
        }
      }

      else
      {
        v280 = 0;
        v281 = v390;
        if (!v394)
        {
          goto LABEL_569;
        }
      }

      v282 = *(v394 + v273);
      v283 = *(v394 + v273 + 16);
      v284 = *(v394 + v276);
      v285 = *(v394 + v273 + 32);
      v286 = *(v394 + v273 + 48);
      v417[2] = v285;
      v417[3] = v286;
      v417[0] = v282;
      v417[1] = v283;
      if (*(v417 + (v284 & 0xF)) == 1)
      {
        v416[0] = v282;
        v416[1] = v283;
        v416[2] = v285;
        v416[3] = v286;
        v287 = (*(v416 + (BYTE1(v284) & 0xF)) == 1) << 19;
        v288 = v380;
        if (!v380)
        {
          goto LABEL_572;
        }

LABEL_570:
        v289 = (v288 + v273);
        v290 = *v289;
        v291 = v289[1];
        v292 = *(v288 + v276);
        v293 = v289[2];
        v294 = v289[3];
        v415[2] = v293;
        v415[3] = v294;
        v415[0] = v290;
        v415[1] = v291;
        if (*(v415 + (v292 & 0xF)) == 1)
        {
          v414[0] = v290;
          v414[1] = v291;
          v414[2] = v293;
          v414[3] = v294;
          v295 = (*(v414 + (BYTE1(v292) & 0xF)) == 1) << 21;
LABEL_573:
          if (v394)
          {
            v296 = ((*(v394 + *MEMORY[0x277CD7408]) & 3) == 0) << 31;
          }

          else
          {
            v296 = 0;
          }

          v268 = ((v380 != 0) << 15) | ((v394 != 0) << 13) | ((v375 & 1) << 27) | ((v370 & 1) << 26) | ((v383 & 1) << 25) | v268 & 0xF1D551FF | v270 | v280 | v287 | v295 | v296;
          goto LABEL_594;
        }

LABEL_572:
        v295 = 0;
        goto LABEL_573;
      }

LABEL_569:
      v287 = 0;
      v288 = v380;
      if (!v380)
      {
        goto LABEL_572;
      }

      goto LABEL_570;
    }

    if (v269 > 335544327)
    {
      if (v269 != 335544328)
      {
        if (v269 == 536870920)
        {
          v270 = 0;
          goto LABEL_562;
        }

        goto LABEL_561;
      }
    }

    else
    {
      if (v269 == 268435488)
      {
        v270 = 3072;
        goto LABEL_562;
      }

      if (v269 != 301989896)
      {
        goto LABEL_561;
      }
    }

    v270 = 1024;
    goto LABEL_562;
  }

LABEL_593:
  v281 = v390;
LABEL_594:
  v320 = [v412 dataType];
  v517 = 0;
  v516 = 0;
  v510 = -1;
  v511 = -1;
  v512 = v268;
  v513 = (v281 << 10) | (32 * v388) | v320;
  v514 = 0u;
  v515 = 0u;
  v516 = [*(v398 + 16) count] | ((*(v398 + 112) != 0) << 8) | 0x10000;
  v517 = 0;
  v350 = *(v14 + *MEMORY[0x277CD7360]);
  v351 = *(v14 + *MEMORY[0x277CD7368]);
  v349 = *(v398 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSGetUShortDivisorMagicNumber();
  v407 = v322;
  v323 = (v403 + ((v409 + (16 * v379 * v392) - 1) / (16 * v379 * v392)) - 1) / v403;
  MPSGetUIntDivisorMagicNumber();
  v405 = v324;
  v325 = (v369 + ((v410 + v259 - 1) / v259) - 1) / v369;
  MPSGetUIntDivisorMagicNumber();
  v401 = v326;
  MPSGetUIntDivisorMagicNumber();
  v397 = v327;
  LODWORD(v328) = v403 * v369;
  MPSGetUIntDivisorMagicNumber();
  v395 = v329;
  MPSGetUIntDivisorMagicNumber();
  LODWORD(v330) = 1;
  DWORD1(v330) = v359;
  LODWORD(v331) = 1;
  DWORD1(v331) = v358;
  *(&v330 + 1) = __PAIR64__(v357, v360);
  *(&v331 + 1) = __PAIR64__(v355, v356);
  v332 = v407;
  HIWORD(v332) = 0;
  v333 = v405;
  HIDWORD(v333) = 0;
  v334 = v401;
  HIDWORD(v334) = 0;
  v336 = v395;
  v335 = v397;
  HIDWORD(v335) = 0;
  HIDWORD(v336) = 0;
  HIDWORD(v337) = 0;
  v509 = 0u;
  v506 = 0u;
  v504 = 0u;
  v502 = 0u;
  v500 = 0u;
  v484 = v410;
  v485 = v409;
  v338 = (v408 + v258 - 1) / v258;
  v486 = v408;
  v487 = v330;
  v488 = v386;
  v489 = v371;
  v490 = v373;
  v491 = v331;
  v492 = v383;
  v493 = v370;
  v494 = v375;
  v495 = v547;
  v496 = vmovn_s32(vuzp1q_s32(v548, v544));
  v497 = v545;
  v498 = v403;
  v499 = v369;
  *&v500 = v332;
  v501 = v334;
  *&v502 = __PAIR64__(v325, v323);
  v503 = v333;
  *&v504 = __PAIR64__(v377, v389);
  v505 = v335;
  LODWORD(v506) = v338;
  v507 = v336;
  v508 = v337;
  if (v352)
  {
    v260 = v323 * v325 * v328;
    v339 = 2;
  }

  else
  {
    v339 = v323 * v325;
  }

  if (v352)
  {
    v328 = v353;
  }

  else
  {
    v328 = v328;
  }

  LODWORD(v509) = v354;
  v340 = *(v398 + 8);
  v341 = *(v340 + 80 * v546 + 64);
  v342 = *(v340 + 80 * v543 + 64);
  v343 = *(v398 + 192);
  [v411 setComputePipelineState:{PipelineStateForMPSKey, v349, v350, v351, 0, 0}];
  MPSSetNDArraysOnComputeEncoder(v411, v398, 4, 0, 0);
  [v411 setBuffer:objc_msgSend(v376 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v376, 0, 4, 0, 0) + v341, 29}];
  [v411 setBuffer:objc_msgSend(v413 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v413, 0, 4, 0, 0) + v342, 28}];
  [v411 setBuffer:objc_msgSend(v412 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v412, 0, 4, 0, 0) + v343, 27}];
  objc_msgSend_setBytes_length_atIndex_(v411);
  v344 = (v392 * v393 * (v399 - 1)) << 10;
  if (v399 <= 1)
  {
    v344 = 0;
  }

  v345 = 4 * v399 * v338;
  if (!v367)
  {
    v345 = 0;
  }

  v346 = v345 + v344;
  if (v346 <= v363)
  {
    v347 = v363;
  }

  else
  {
    v347 = v346;
  }

  [v411 setThreadgroupMemoryLength:v347 atIndex:0];
  [v411 setBuffer:0 offset:0 atIndex:25];
  v483[0] = v328;
  v483[1] = v339;
  v483[2] = v260;
  v481 = (32 * v392 * v393 * v399);
  v482 = vdupq_n_s64(1uLL);
  [v411 dispatchThreadgroups:v483 threadsPerThreadgroup:&v481];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

void sub_239A13F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, void *a61)
{
  if (STACK[0x288])
  {
    operator delete(STACK[0x288]);
    if (!a60)
    {
LABEL_3:
      if (!a61)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!a60)
  {
    goto LABEL_3;
  }

  operator delete(a60);
  if (!a61)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(a61);
  _Unwind_Resume(a1);
}

uint64_t MPSKernel_LogInfo(uint64_t result, unint64_t a2, const char *a3, ...)
{
  va_start(va, a3);
  if ((*(result + *MEMORY[0x277CD7378]) & 0x10) != 0 && *(result + *MEMORY[0x277CD7380]) >= a2)
  {
    return vfprintf(*MEMORY[0x277D85DF8], a3, va);
  }

  return result;
}

uint64_t MPSNDArrayMatMulA14DeviceBehavior::EncodeArrayMultiply(uint64_t a1, void *a2, void *a3, uint64_t a4, id *a5)
{
  v212[1] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v8 = MEMORY[0x277CD7350];
  if (*(a1 + 8))
  {
    if ((*(*(a2 + *MEMORY[0x277CD7350]) + 1472) - 11) < 7)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    [a2 setAutoTuningTarget:v9];
    [a2 setAutoTuningParameters:*(a1 + 8)];
  }

  v10 = *(a5 + 13);
  v209 = *(a5 + 12);
  v210 = v10;
  v211 = *(a5 + 14);
  v11 = *(a5 + 9);
  v205 = *(a5 + 8);
  v206 = v11;
  v12 = *(a5 + 10);
  v208 = *(a5 + 11);
  v207 = v12;
  v13 = *(a5 + 5);
  v201 = *(a5 + 4);
  v202 = v13;
  v14 = *(a5 + 6);
  v204 = *(a5 + 7);
  v203 = v14;
  v15 = *(a5 + 1);
  v197 = *a5;
  v198 = v15;
  v16 = *(a5 + 2);
  v200 = *(a5 + 3);
  v199 = v16;
  v17 = [*(&v211 + 1) graph];
  v18 = *(v17 + 64);
  v19 = *v18;
  v20 = v18[1];
  v160 = a2;
  if (*v18 == v20)
  {
    v169 = 0;
    goto LABEL_19;
  }

  v21 = v17;
  v22 = 0;
  v169 = -1;
  v23 = -1;
  do
  {
    v24 = *v19;
    CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(v21);
    v26 = v169;
    if (v24 == *(CoreOpInputAtIndex + 32))
    {
      v26 = v22;
    }

    v169 = v26;
    v27 = *v19;
    if (v27 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v21) + 32))
    {
      v23 = v22;
    }

    if (MPSKernelDAG::GetCoreOpNumberOfInputs(v21) == 3)
    {
      MPSKernelDAG::GetCoreOpInputAtIndex(v21);
    }

    ++v22;
    ++v19;
  }

  while (v19 != v20);
  a2 = v160;
  if (v169 == -1)
  {
    v169 = 0;
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v23 == -1)
  {
LABEL_19:
    if (!MTLReportFailureTypeEnabled())
    {
LABEL_21:
      v23 = 0;
      goto LABEL_22;
    }

LABEL_20:
    MTLReportFailure();
    goto LABEL_21;
  }

LABEL_22:
  v155 = a5;
  v28 = v198;
  v29 = [v198 objectAtIndexedSubscript:v169];
  v168 = v23;
  v30 = [v198 objectAtIndexedSubscript:v23];
  if (!a2[21] && a2[11] == 3 && a2[22] == 0)
  {
    v32 = [v198 objectAtIndexedSubscript:2];
    if (*(v32 + *MEMORY[0x277CD73C8]) != *(v210 + *MEMORY[0x277CD73C8]))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  v33 = *([*(&v211 + 1) graph] + 84);
  [a2 alpha];
  v35 = v34;
  [a2 beta];
  v37 = v36;
  [a2 setAlpha:1.0];
  [a2 setBeta:0.0];
  v41 = MEMORY[0x277CD73D8];
  v42 = *MEMORY[0x277CD73D8];
  v43 = *(v29 + v42);
  v44 = *(v30 + v42);
  v45 = MEMORY[0x277CD7410];
  v46 = *MEMORY[0x277CD7410];
  v47 = (v30 + v46);
  v48 = *(v30 + v46);
  if (DWORD2(v48) == 1)
  {
    v50 = *(v29 + v46 + 8) == 1 && HIDWORD(v48) == 1 && HIDWORD(*(v29 + v46)) == 1;
  }

  else
  {
    v50 = 0;
  }

  v52 = v47[2];
  v51 = v47[3];
  v53 = v47[1];
  v54 = v44 > BYTE1(v44);
  v55 = v43 <= BYTE1(v43);
  v56 = *(v160 + *v8);
  v57 = *(v56 + 1480);
  v58 = v57;
  v59 = 1024;
  if (v57 > 8uLL)
  {
    v59 = 0x2000;
  }

  v165 = v59;
  v60 = *(v210 + v46);
  LODWORD(v59) = *(v210 + v46 + 4);
  if (v60 >= v59)
  {
    v59 = v59;
  }

  else
  {
    v59 = v60;
  }

  v61 = v160[25];
  if (v61 && *(v61 + 30) == 1)
  {
    v62 = *(v29 + v46 + 32);
    v63 = *(v29 + v46 + 48);
    v64 = *(v29 + v46);
    v65 = *(v29 + v46 + 16);
    v66 = 1;
    goto LABEL_104;
  }

  if (v57 > 8uLL || v59 >> 10 >= 7)
  {
    v64 = *(v29 + v46);
    v65 = *(v29 + v46 + 16);
    v62 = *(v29 + v46 + 32);
    v63 = *(v29 + v46 + 48);
    v181[2] = v62;
    v181[3] = v63;
    v181[0] = v64;
    v181[1] = v65;
    v67 = *(v181 + (v43 & 0xF));
    if (v67 == 18816 || v67 == 7168)
    {
      v69 = v59 >= 8;
      goto LABEL_101;
    }
  }

  v70 = *MEMORY[0x277CD73C8];
  v71 = *(v29 + v70);
  if (v71 == 268435488)
  {
    if (*(v30 + v70) == 268435488)
    {
      v72 = 4;
    }

    else
    {
      v72 = 3;
    }
  }

  else
  {
    v72 = 3;
  }

  v73 = 10;
  if (v57 > 8uLL)
  {
    v73 = 13;
  }

  v38 = v59 << v73;
  v69 = v72 * (v59 << v73) >= v57 << 12;
  v74 = 9;
  if (!v69)
  {
    v74 = 15;
  }

  if (*(v56 + 1472) > 10)
  {
    v78 = *(v29 + v46 + 4 * (BYTE2(v43) & 0xF));
    v180[0] = v48;
    v180[1] = v53;
    v180[2] = v52;
    v180[3] = v51;
    v79 = *(v180 + (BYTE2(v44) & 0xF));
    if (v43 <= BYTE1(v43) && v79 == 1)
    {
      v81 = v78;
    }

    else
    {
      v81 = 1;
    }

    v59 = v81 * v59;
    v82 = v79 << v73;
    if (v44 <= BYTE1(v44))
    {
      v82 = v165;
    }

    if (v78 == 1)
    {
      v77 = v82;
    }

    else
    {
      v77 = v165;
    }

    v76 = v74;
  }

  else
  {
    if (v59)
    {
      v75 = 15;
    }

    else
    {
      v75 = v74;
    }

    if (v71 == 268435472)
    {
      v76 = v75;
    }

    else
    {
      v76 = v74;
    }

    if (v71 == 268435472)
    {
      v74 = 15;
    }

    v77 = v165;
  }

  v83 = v59 > v76 && v77 > v74;
  v84 = (v29 + v46);
  v64 = *v84;
  v65 = v84[1];
  v62 = v84[2];
  v63 = v84[3];
  v179[2] = v62;
  v179[3] = v63;
  v179[0] = v64;
  v179[1] = v65;
  LODWORD(v85) = *(v179 + (BYTE3(v43) & 0xF));
  v178[0] = v48;
  v178[1] = v53;
  v178[2] = v52;
  v178[3] = v51;
  v86 = *(v178 + (BYTE3(v43) & 0xF));
  v66 = !v83;
  if (v85 <= v86)
  {
    v85 = v86;
  }

  else
  {
    v85 = v85;
  }

  v87 = v59 * v85;
  if (v66 == 1 && v87 > v76)
  {
    v177[0] = v48;
    v177[1] = v53;
    v177[2] = v52;
    v177[3] = v51;
    v69 = *(v177 + (v44 & 0xF)) >= 0x81u;
LABEL_101:
    v66 = !v69;
  }

LABEL_104:
  v176[0] = v64;
  v176[1] = v65;
  v176[2] = v62;
  v176[3] = v63;
  if (*(v176 | (4 * v55)) <= 0x8000u)
  {
    v175[0] = v48;
    v175[1] = v53;
    v175[2] = v52;
    v175[3] = v51;
    if (*(v175 | (4 * v54)) <= 0x8000u || !v50)
    {
LABEL_112:
      v90 = v160;
      if (*(v56 + 1472) < 11)
      {
        EncodeMatrixMultiplyLinking(v160, a3, a4, &v197);
      }

      else
      {
        EncodeMatrixMultiplyLinkingA14(v160, a3, a4, &v197, v38, v39, v40);
      }

      v91 = v155;
      goto LABEL_186;
    }
  }

  else if (!v50)
  {
    goto LABEL_112;
  }

  if (*(v56 + 1472) < 11)
  {
    v89 = 1;
  }

  else
  {
    v89 = v33;
  }

  if ((v89 | v66))
  {
    goto LABEL_112;
  }

  v92 = [v198 count];
  if (v92)
  {
    if (!(v92 >> 61))
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v93 = 0;
  v94 = 64;
  while (v93 < [v28 count])
  {
    *(8 * v93++) = *(*(&v197 + 1) + v94);
    v94 += 80;
  }

  v158 = v209;
  v95 = *v45;
  v96 = v165 - 1 + *(v29 + v95 + 4 * v55);
  v97 = *(v30 + v95 + 4 * v54);
  v98 = 10;
  if (v58 > 8)
  {
    v98 = 13;
  }

  v159 = v98;
  v99 = v96 >> v98;
  v194 = v209;
  v195 = v210;
  v196 = v211;
  v190 = v205;
  v191 = v206;
  v193 = v208;
  v192 = v207;
  v186 = v201;
  v187 = v202;
  v188 = v203;
  v189 = v204;
  v182 = v197;
  v183 = v198;
  v184 = v199;
  v185 = v200;
  v90 = v160;
  if (v96 >> v98)
  {
    v100 = 0;
    v161 = (v165 - 1 + v97) >> v98;
    v101 = MEMORY[0x277CD73F0];
    v156 = v96 >> v98;
    do
    {
      *(*(&v182 + 1) + 80 * v169 + 64) = *(8 * v169);
      v157 = v100;
      readSrcTempNDArray(&v197, &v182, a4, a3, v90[19], v100, v99, v165, v169, v168, 1u);
      v102 = v161;
      if (v161)
      {
        v103 = 0;
        v164 = v157 << v159;
        do
        {
          *(*(&v182 + 1) + 80 * v168 + 64) = *(8 * v168);
          v162 = v103;
          readSrcTempNDArray(&v197, &v182, a4, a3, v90[19], v103, v102, v165, v169, v168, 0);
          v104 = 0;
          v105 = 64;
          while (v104 < [v28 count])
          {
            if (v169 != v104 && v168 != v104)
            {
              *(*(&v182 + 1) + v105) = *(8 * v104);
            }

            ++v104;
            v105 += 80;
          }

          v163 = v90[19];
          v106 = [MEMORY[0x277CBEB18] arrayWithArray:v183];
          if ([v28 count])
          {
            v107 = 0;
            do
            {
              if (v107 != v169 && v107 != v168)
              {
                v108 = [v28 objectAtIndexedSubscript:v107];
                v109 = [v108 descriptor];
                v110 = v109;
                v111 = &v108[*v45];
                v112 = *v111;
                v113 = *(v111 + 1);
                v114 = *(v111 + 2);
                v115 = *(v111 + 3);
                v116 = *&v109[*MEMORY[0x277CD7438]];
                v173[2] = v114;
                v173[3] = v115;
                v173[0] = v112;
                v173[1] = v113;
                if (*(v173 + (BYTE1(v116) & 0xF)) - v164 >= v165)
                {
                  v117 = v165;
                }

                else
                {
                  v117 = *(v173 + (BYTE1(v116) & 0xF)) - v164;
                }

                if (v116)
                {
                  v118 = 0;
                }

                else
                {
                  v118 = BYTE1(v116) == 1;
                }

                v119 = !v118;
                v120 = &v109[*MEMORY[0x277CD7458]];
                v122 = *v120;
                v121 = *(v120 + 1);
                v124 = *(v120 + 2);
                v123 = *(v120 + 3);
                v174[2] = v124;
                v174[3] = v123;
                v174[0] = v122;
                v174[1] = v121;
                if (*(v174 | (4 * v119)) != 1)
                {
                  v172[4] = v112;
                  v172[5] = v113;
                  v172[6] = v114;
                  v172[7] = v115;
                  [v109 sliceDimension:0 withSubrange:?];
                  v125 = &v110[*MEMORY[0x277CD7458]];
                  v124 = *(v125 + 2);
                  v123 = *(v125 + 3);
                  v122 = *v125;
                  v121 = *(v125 + 1);
                }

                v172[0] = v122;
                v172[1] = v121;
                v172[2] = v124;
                v172[3] = v123;
                if (*(v172 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v119 & 1) == 0))) != 1)
                {
                  [v110 sliceDimension:1 withSubrange:{v164, v117}];
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v108 setReadCount:{objc_msgSend(v108, "readCount") + 1}];
                }

                v126 = [v108 safeArrayViewWithCommandBuffer:a4 computeEncoder:a3 descriptor:v110 aliasing:1];
                v127 = [v110 getShape];
                if ([v127 count] >= 5)
                {
                  v127 = [v127 subarrayWithRange:{objc_msgSend(v127, "count") - 4, 4}];
                }

                v128 = [MEMORY[0x277CD7268] descriptorWithDataType:*(v126 + *MEMORY[0x277CD73C8]) shape:v127];
                v129 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a4 descriptor:v128];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v108 setReadCount:{objc_msgSend(v108, "readCount") + 1}];
                }

                if (*(v126 + *v101) >= 5uLL)
                {
                  v130 = 4;
                  do
                  {
                    v131 = v126 + *v45;
                    v171 = *(v126 + *v41);
                    *(v131 + 4 * (*(&v171 | v130++ & 0xF) & 0xF)) = 1;
                  }

                  while (v130 < *(v126 + *v101));
                }

                *(v126 + *MEMORY[0x277CD73F8]) = *(*(&v182 + 1) + 80 * v107 + 64);
                v212[0] = v126;
                [v163 encodeToMPSCommandEncoder:a3 commandBuffer:a4 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:v212 kernelDAGObject:{1), 0, v129, 0}];
                [v106 setObject:v129 atIndexedSubscript:v107];
                v132 = [objc_msgSend(v106 objectAtIndexedSubscript:{v107), "offset"}];
                *(*(&v182 + 1) + 80 * v107 + 64) = v132;
                v28 = v198;
              }

              ++v107;
            }

            while (v107 < [v28 count]);
          }

          *&v183 = v106;
          *&v194 = v158;
          v133 = v210;
          v90 = v160;
          v134 = [v210 descriptor];
          [v134 sliceDimension:0 withSubrange:?];
          [v134 sliceDimension:1 withSubrange:?];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v133 setReadCount:{objc_msgSend(v133, "readCount") + 1}];
          }

          v135 = [v133 safeArrayViewWithCommandBuffer:a4 computeEncoder:a3 descriptor:v134 aliasing:1];
          v136 = [v134 getShape];
          if ([v136 count] >= 5)
          {
            v136 = [v136 subarrayWithRange:{objc_msgSend(v136, "count") - 4, 4}];
          }

          v137 = [MEMORY[0x277CD7268] descriptorWithDataType:*(v135 + *MEMORY[0x277CD73C8]) shape:v136];
          v138 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a4 descriptor:v137];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v133 setReadCount:{objc_msgSend(v133, "readCount") + 1}];
          }

          *&v195 = v138;
          *&v194 = [v138 offset];
          EncodeMatrixMultiplyLinkingA14(v160, a3, a4, &v182, v139, v140, v141);
          v142 = v160[19];
          v143 = [v133 descriptor];
          [v143 sliceDimension:0 withSubrange:?];
          [v143 sliceDimension:1 withSubrange:?];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v133 setReadCount:{objc_msgSend(v133, "readCount") + 1}];
          }

          v144 = [v133 safeArrayViewWithCommandBuffer:a4 computeEncoder:a3 descriptor:v143 aliasing:1];
          v145 = v195;
          *(v144 + *MEMORY[0x277CD73F8]) = v209;
          if (*(v144 + *v101) >= 5uLL)
          {
            v146 = 4;
            do
            {
              v147 = v144 + *v45;
              v170 = *(v144 + *v41);
              *(v147 + 4 * (*(&v170 | v146++ & 0xF) & 0xF)) = 1;
            }

            while (v146 < *(v144 + *v101));
          }

          v212[0] = v145;
          [v142 encodeToMPSCommandEncoder:a3 commandBuffer:a4 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:v212 kernelDAGObject:{1), 0, v144, 0}];
          if ([v183 count] >= 2)
          {
            v148 = 1;
            do
            {
              v149 = [v183 objectAtIndexedSubscript:v148];
              v28 = v198;
              if (v149 != [v198 objectAtIndexedSubscript:v148])
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  MPSDecrementReadCount(v149);
                }
              }

              ++v148;
            }

            while (v148 < [v183 count]);
          }

          v102 = v161;
          v103 = v162 + 1;
        }

        while (v162 + 1 != v161);
      }

      v150 = [v183 objectAtIndexedSubscript:0];
      v28 = v198;
      if (v150 != [v198 objectAtIndexedSubscript:0] && *(&v150->super.super.isa + *MEMORY[0x277CD73E0]) == 1)
      {
        MPSDecrementReadCount(v150);
      }

      v99 = v156;
      v100 = v157 + 1;
    }

    while (v157 + 1 != v156);
  }

  v91 = v155;
LABEL_186:
  if ([v198 count])
  {
    v151 = 0;
    do
    {
      v152 = [v198 objectAtIndexedSubscript:v151];
      if (v152 != [v91[2] objectAtIndexedSubscript:v151])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          MPSDecrementReadCount(v152);
        }
      }

      ++v151;
    }

    while (v151 < [v198 count]);
  }

  [v90 setAlpha:v35];
  [v90 setBeta:v37];
  objc_autoreleasePoolPop(context);
  return 0;
}

void sub_239A150D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p)
{
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void EncodeMatrixMultiplyLinkingA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7);
  v9 = v8;
  v11 = v10;
  v363 = v12;
  v13 = MEMORY[0x277CD7350];
  v364 = v7;
  v358 = *(v7 + *MEMORY[0x277CD7350]);
  v14 = [*(v8 + 232) graph];
  v15 = *(v14 + 64);
  v16 = *v15;
  v17 = v15[1];
  if (*v15 == v17)
  {
    v22 = 0;
    v26 = v364;
    goto LABEL_14;
  }

  v18 = v14;
  v19 = v11;
  v20 = v9;
  v21 = 0;
  v22 = -1;
  v23 = -1;
  do
  {
    v24 = *v16;
    if (v24 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v18) + 32))
    {
      v22 = v21;
    }

    v25 = *v16;
    if (v25 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v18) + 32))
    {
      v23 = v21;
    }

    if (MPSKernelDAG::GetCoreOpNumberOfInputs(v18) == 3)
    {
      MPSKernelDAG::GetCoreOpInputAtIndex(v18);
    }

    ++v21;
    ++v16;
  }

  while (v16 != v17);
  if (v22 == -1)
  {
    v22 = 0;
    v9 = v20;
    v11 = v19;
    v26 = v364;
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v9 = v20;
  v11 = v19;
  v26 = v364;
  if (v23 == -1)
  {
LABEL_14:
    if (!MTLReportFailureTypeEnabled())
    {
LABEL_16:
      v23 = 0;
      goto LABEL_17;
    }

LABEL_15:
    MTLReportFailure();
    goto LABEL_16;
  }

LABEL_17:
  v27 = [*(v9 + 16) objectAtIndexedSubscript:v22];
  v28 = [*(v9 + 16) objectAtIndexedSubscript:v23];
  v29 = v28;
  v30 = *(v9 + 208);
  v31 = *(v26 + *v13);
  v32 = *(v26 + 200);
  v33 = MEMORY[0x277CD7410];
  v34 = *MEMORY[0x277CD7410];
  v35 = *&v30[v34];
  v36 = *&v30[v34 + 16];
  v37 = MEMORY[0x277CD73D8];
  v38 = *&v30[v34 + 32];
  v39 = *MEMORY[0x277CD73D8];
  v40 = *&v30[v39];
  v413 = *&v30[v34 + 48];
  v412[2] = v38;
  v412[1] = v36;
  v412[0] = v35;
  v41 = *(v412 + (BYTE1(v40) & 0xF));
  v414[3] = v413;
  v414[2] = v38;
  v414[1] = v36;
  v414[0] = v35;
  v42 = *(v414 + (v40 & 0xF));
  if (!v32 || (*(v32 + 30) & 1) == 0)
  {
    v43 = v41 >> 10 > 6 || v42 >> 10 >= 7;
    if (v43 && ((v44 = *&v27[4 * (*&v27[v39] & 0xF) + v34], v44 != 18816) ? (v45 = v44 == 7168) : (v45 = 1), v45))
    {
      if (v41 >= 8)
      {
LABEL_75:
        v307 = [v27 dataType];
        v305 = [v29 dataType];
        v303 = [v30 dataType];
        makeStrideBytes();
        v68 = *&v27[*v37];
        v409[7] = v436;
        v409[6] = v435;
        v409[5] = v434;
        v409[4] = v433;
        v409[3] = v432;
        v409[2] = v431;
        v409[1] = v430;
        v409[0] = v429;
        v333 = *(v409 + (v68 & 0xF));
        v408[7] = v436;
        v408[6] = v435;
        v408[5] = v434;
        v408[4] = v433;
        v408[3] = v432;
        v408[2] = v431;
        v408[1] = v430;
        v408[0] = v429;
        v332 = *(v408 + (BYTE1(v68) & 0xF));
        v407[7] = v436;
        v407[6] = v435;
        v407[5] = v434;
        v407[4] = v433;
        v407[3] = v432;
        v407[2] = v431;
        v407[1] = v430;
        v407[0] = v429;
        v331 = *(v407 + (BYTE2(v68) & 0xF));
        v406[7] = v436;
        v406[6] = v435;
        v406[5] = v434;
        v406[4] = v433;
        v406[3] = v432;
        v406[2] = v431;
        v406[1] = v430;
        v406[0] = v429;
        v327 = *(v406 + (BYTE3(v68) & 0xF));
        makeStrideBytes();
        v69 = *&v29[*v37];
        v405[7] = v436;
        v405[6] = v435;
        v405[5] = v434;
        v405[4] = v433;
        v405[3] = v432;
        v405[2] = v431;
        v405[1] = v430;
        v405[0] = v429;
        v336 = *(v405 + (v69 & 0xF));
        v404[7] = v436;
        v404[6] = v435;
        v404[5] = v434;
        v404[4] = v433;
        v404[3] = v432;
        v404[2] = v431;
        v404[1] = v430;
        v404[0] = v429;
        v335 = *(v404 + (BYTE1(v69) & 0xF));
        v403[7] = v436;
        v403[6] = v435;
        v403[5] = v434;
        v403[4] = v433;
        v403[3] = v432;
        v403[2] = v431;
        v403[1] = v430;
        v403[0] = v429;
        v334 = *(v403 + (BYTE2(v69) & 0xF));
        v402[7] = v436;
        v402[6] = v435;
        v402[5] = v434;
        v402[4] = v433;
        v402[3] = v432;
        v402[2] = v431;
        v402[1] = v430;
        v402[0] = v429;
        v330 = *(v402 + (BYTE3(v69) & 0xF));
        makeStrideBytes();
        v70 = *v37;
        v71 = *&v30[v70];
        v401[7] = v436;
        v401[6] = v435;
        v401[5] = v434;
        v401[4] = v433;
        v401[3] = v432;
        v401[2] = v431;
        v401[1] = v430;
        v401[0] = v429;
        v299 = *(v401 + (v71 & 0xF));
        v400[7] = v436;
        v400[6] = v435;
        v400[5] = v434;
        v400[4] = v433;
        v400[3] = v432;
        v400[2] = v431;
        v400[1] = v430;
        v400[0] = v429;
        v311 = *(v400 + (BYTE1(v71) & 0xF));
        v399[7] = v436;
        v399[6] = v435;
        v399[5] = v434;
        v399[4] = v433;
        v399[3] = v432;
        v399[2] = v431;
        v399[1] = v430;
        v399[0] = v429;
        v341 = *(v399 + (BYTE2(v71) & 0xF));
        v398[7] = v436;
        v398[6] = v435;
        v398[5] = v434;
        v398[4] = v433;
        v398[3] = v432;
        v398[2] = v431;
        v398[1] = v430;
        v398[0] = v429;
        v340 = *(v398 + (BYTE3(v71) & 0xF));
        v72 = *&v27[v70];
        v73 = v27;
        v74 = v33;
        v75 = v72;
        v76 = *&v29[v70];
        v77 = *v74;
        v78 = *&v30[v77];
        v79 = *&v30[v77 + 16];
        v80 = *&v30[v77 + 32];
        v81 = *&v30[v70];
        v397 = *&v30[v77 + 48];
        v396[2] = v80;
        v396[1] = v79;
        v396[0] = v78;
        v82 = v29;
        v83 = *(v396 + (BYTE1(v81) & 0xF));
        v395[3] = v397;
        v395[2] = v80;
        v395[1] = v79;
        v395[0] = v78;
        v84 = *(v395 + (v81 & 0xF));
        v350 = v73;
        v85 = *&v73[v77];
        v86 = *&v73[v77 + 16];
        v87 = *&v73[v77 + 32];
        v392 = *&v73[v77 + 48];
        v391[2] = v87;
        v391[1] = v86;
        v391[0] = v85;
        v342 = *(v391 + (v72 & 0xF));
        v394[3] = v397;
        v394[2] = v80;
        v394[1] = v79;
        v394[0] = v78;
        v324 = *(v394 + (BYTE2(v81) & 0xF));
        v393[3] = v397;
        v393[2] = v80;
        v393[1] = v79;
        v393[0] = v78;
        v352 = *(v393 + (BYTE3(v81) & 0xF));
        v390[3] = v392;
        v390[2] = v87;
        v390[1] = v86;
        v390[0] = v85;
        v88 = *(v390 + (BYTE2(v72) & 0xF));
        v351 = v82;
        v89 = &v82[v77];
        v90 = *v89;
        v91 = *(v89 + 1);
        v92 = *(v89 + 2);
        v388 = *(v89 + 3);
        v387[2] = v92;
        v387[1] = v91;
        v387[0] = v90;
        v93 = *(v387 + (BYTE2(v76) & 0xF));
        v362 = BYTE1(v72);
        v389[3] = v392;
        v389[2] = v87;
        v389[1] = v86;
        v389[0] = v85;
        v94 = *(v389 + (BYTE3(v72) & 0xF));
        v355 = v76;
        v386[3] = v388;
        v386[2] = v92;
        v386[1] = v91;
        v386[0] = v90;
        v95 = *(v386 + (BYTE3(v76) & 0xF));
        v347 = v94;
        v321 = v95;
        if (v88 != 1 && v88 != v93 && v93 != 1)
        {
          v290 = MTLReportFailureTypeEnabled();
          v95 = v321;
          v94 = v347;
          if (v290)
          {
            MTLReportFailure();
            v95 = v321;
            v94 = v347;
          }
        }

        if (v94 != 1 && v94 != v95 && v95 != 1 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v354 = v30;
        v96 = [*(v9 + 232) graph];
        v97 = **(v96 + 56);
        if (*(*(v96 + 56) + 8) != v97)
        {
          v98 = *v97;
          if (*(*(*v97 + 8) + 8) - **(*v97 + 8) <= 8uLL)
          {
            goto LABEL_402;
          }

          BaseTensor::GetAccessPattern();
          v301 = v99;
          if (*(*(v98 + 8) + 8) == **(v98 + 8))
          {
            goto LABEL_402;
          }

          BaseTensor::GetAccessPattern();
          v300 = v100;
          v101 = [*(v9 + 232) graph];
          v102 = **(v101 + 56);
          if (*(*(v101 + 56) + 8) != v102)
          {
            v104 = *(*v102 + 24);
            v103 = *v104;
            if (*(v104 + 8) == *v104)
            {
              goto LABEL_402;
            }

            v309 = *v103;
            v105 = [*(v9 + 232) graph];
            v106 = **(v105 + 56);
            if (*(*(v105 + 56) + 8) != v106)
            {
              v108 = *(*v106 + 8);
              v107 = *v108;
              if ((v108[1] - *v108) <= 8)
              {
                goto LABEL_402;
              }

              v328 = *(v107 + 8);
              v109 = [*(v9 + 232) graph];
              v110 = **(v109 + 56);
              if (*(*(v109 + 56) + 8) != v110)
              {
                v337 = v84;
                v349 = v9;
                v112 = *(*v110 + 8);
                v111 = *v112;
                if (*(v112 + 8) != *v112)
                {
                  v113 = v355;
                  v114 = HIBYTE(v355);
                  v316 = *v111;
                  v115 = v333;
                  if (v75 <= v362)
                  {
                    v115 = v332;
                  }

                  v318 = v115;
                  v56 = v355 > HIBYTE(v355);
                  v116 = *&v354[*MEMORY[0x277CD7400]];
                  v117 = *MEMORY[0x277CD7410];
                  v118 = *&v354[v117];
                  v119 = *&v354[v117 + 16];
                  v120 = *&v354[v117 + 32];
                  v121 = *&v354[v117 + 48];
                  v122 = *MEMORY[0x277CD73D8];
                  v123 = *&v354[v122];
                  v385[3] = v121;
                  v385[2] = v120;
                  v385[1] = v119;
                  v385[0] = v118;
                  v356 = *(v385 + (v123 & 0xF));
                  v124 = v336;
                  if (!v56)
                  {
                    v124 = v335;
                  }

                  v310 = v124;
                  v384[3] = v121;
                  v384[2] = v120;
                  v384[1] = v119;
                  v384[0] = v118;
                  v125 = *(v384 + (BYTE1(v123) & 0xF));
                  if (v88 == 1 || v93 != 1 || v75 > v362)
                  {
                    v126 = 0;
                    if (v93 != 1 && v88 == 1)
                    {
                      v360 = 0;
                      if (v113 <= v114)
                      {
                        goto LABEL_113;
                      }

                      v126 = 0;
                      v139 = *&v351[v122];
                      if (v139 <= 1u && BYTE1(v139) <= 1u && BYTE2(v139) == 2)
                      {
                        v360 = 0;
                        if (BYTE1(v139) < BYTE2(v139))
                        {
                          v126 = 0;
                          v140 = BYTE1(v139) & 0xF;
                          v141 = *&v351[4 * v140 + v117];
                          v142 = &v351[*MEMORY[0x277CD7428]];
                          v143 = *v142;
                          v144 = *(v142 + 1);
                          v145 = *(v142 + 2);
                          v146 = *(v142 + 3);
                          v147 = *(v142 + 4);
                          v148 = *(v142 + 5);
                          v149 = *(v142 + 6);
                          v382[7] = *(v142 + 7);
                          v382[6] = v149;
                          v382[5] = v148;
                          v382[4] = v147;
                          v382[3] = v146;
                          v382[2] = v145;
                          v382[1] = v144;
                          v382[0] = v143;
                          v360 = *(v382 + v140) * v141 == v144;
                        }

LABEL_113:
                        MEMORY[0x23EE7C450](v428, v11, 0);
                        TempBuffer = [v354 buffer];
                        v150 = v342;
                        v345 = v126;
                        v151 = (v83 * v337);
                        v153 = (v342 / v151) <= 0.1 || v342 < 0x801;
                        v314 = v126 || v360;
                        if (v153 || v126 || v360 || *&v354[*MEMORY[0x277CD73F0]] > 3uLL)
                        {
                          v357 = 0;
                          v159 = 1;
                          v158 = v342;
                          v161 = v340;
                          v160 = v341;
                        }

                        else
                        {
                          v154 = v342;
                          do
                          {
                            v154 >>= 1;
                          }

                          while ((v154 / v151) > 0.1);
                          v155 = (v154 + 31) & 0xFFFFFFE0;
                          v156 = (v154 + 15) & 0xFFFFFFF0;
                          if (*(v358 + 1472) <= 17)
                          {
                            v157 = v156;
                          }

                          else
                          {
                            v157 = v155;
                          }

                          v158 = v157;
                          v159 = (v342 + v157 - 1) / v157;
                          TempBuffer = MPSAutoCache::GetTempBuffer(v428, 4 * v352 * v324 * v356 * v125 * v159, 0);
                          LODWORD(v116) = 4 * v356;
                          v160 = 4 * v356 * v125;
                          v161 = v160 * v324;
                          v357 = 1;
                          v150 = v342;
                        }

                        LODWORD(v435) = 0;
                        *&v429 = __PAIR64__(v83, v337);
                        *(&v429 + 1) = __PAIR64__(v324, v150);
                        *&v430 = __PAIR64__(v318, v310);
                        DWORD2(v430) = v116;
                        HIDWORD(v430) = v116;
                        if (v93 == 1)
                        {
                          v162 = 0;
                        }

                        else
                        {
                          v162 = v334;
                        }

                        if (v88 == 1)
                        {
                          v163 = 0;
                        }

                        else
                        {
                          v163 = v331;
                        }

                        *&v431 = __PAIR64__(v163, v162);
                        DWORD2(v431) = v160;
                        HIDWORD(v431) = v160;
                        [v364 alpha];
                        *&v164 = v164;
                        LODWORD(v432) = LODWORD(v164);
                        [v364 beta];
                        *&v165 = v165;
                        DWORD1(v432) = LODWORD(v165);
                        if (v321 == 1)
                        {
                          v166 = 0;
                        }

                        else
                        {
                          v166 = v330;
                        }

                        *(&v432 + 1) = __PAIR64__(v166, v352);
                        if (v347 == 1)
                        {
                          v167 = 0;
                        }

                        else
                        {
                          v167 = v327;
                        }

                        *&v433 = __PAIR64__(v161, v167);
                        *(&v433 + 1) = __PAIR64__(v93, v161);
                        *(&v434 + 4) = 0;
                        LODWORD(v434) = v88;
                        HIDWORD(v434) = v159;
                        LODWORD(v435) = v158;
                        if (v345)
                        {
                          v168 = v88;
                        }

                        else
                        {
                          v168 = 1;
                        }

                        v169 = v168 * v83;
                        if (v360)
                        {
                          v170 = v93;
                        }

                        else
                        {
                          v170 = 1;
                        }

                        v171 = v170 * v337;
                        v348 = v169;
                        v353 = v171;
                        v172 = v358;
                        if (v169 > 0x20)
                        {
                          v173 = 64;
                          v174 = v342;
                        }

                        else
                        {
                          v173 = 32;
                          v174 = v342;
                          if (v171 > 0x1FF)
                          {
                            v175 = 128;
                            LOWORD(v176) = 256;
                            v177 = 4;
                            v178 = 2;
                            goto LABEL_155;
                          }
                        }

                        if (v171 > 0x20)
                        {
                          v175 = 64;
                        }

                        else
                        {
                          v175 = 32;
                          if (v348 >= 0x200)
                          {
                            v173 = 128;
                            LOWORD(v176) = 256;
                            v177 = 2;
                            v178 = 4;
                            goto LABEL_155;
                          }
                        }

                        LOWORD(v176) = 128;
                        v178 = 2;
                        v177 = 2;
LABEL_155:
                        v179 = *(v358 + 1480);
                        v181 = v83 == v337 && v83 == v174 && v337 == v174;
                        v182 = v181;
                        if (!v181)
                        {
                          v196 = v83 * v337 * v324 * v159 * v159;
                          v197 = 4 * v179;
                          if (v196 > v197 * v175 * v173)
                          {
                            LOWORD(v190) = 16;
                            v192 = v364;
                            v184 = v350;
                            v193 = v351;
                            v186 = v353;
                            goto LABEL_249;
                          }

                          v173 >>= 1;
                          v192 = v364;
                          v184 = v350;
                          v193 = v351;
                          v186 = v353;
                          if (v196 <= v175 * v173 * v197)
                          {
                            v204 = 1;
                            do
                            {
                              v207 = v175;
                              if (v175 <= 0x10u && v173 < 0x11u)
                              {
                                break;
                              }

                              v205 = (v175 > 0x10u) & v204;
                              v204 ^= 1u;
                              v206 = v205 ^ 1;
                              if (v173 <= 0x10u)
                              {
                                v206 = 0;
                              }

                              v173 = v173 >> v206;
                              v175 = v175 >> v205;
                            }

                            while (v196 <= v197 * (v207 >> v205) * v173);
                          }

                          LOWORD(v190) = 16;
                          LOWORD(v176) = 128;
                          v191 = 2;
                          v177 = 2;
                          v194 = *(v358 + 1472);
                          v195 = v194 < 18;
                          if (v194 >= 18)
                          {
                            goto LABEL_200;
                          }

LABEL_250:
                          v209 = 1;
                          if (!*(v192 + 52))
                          {
                            goto LABEL_253;
                          }

                          goto LABEL_251;
                        }

                        v183 = *MEMORY[0x277CD73C8];
                        v184 = v350;
                        v185 = *&v350[v183];
                        if (v179 >= 0x41)
                        {
                          v186 = v353;
                          if (v185 == 268435472 && *&v351[v183] == 268435472)
                          {
                            v187 = (32 - (v83 & 0x1F)) * v337;
                            if ((v83 & 0x1F) == 0)
                            {
                              v187 = 0;
                            }

                            v188 = v83 % 0x30 != 0;
                            v189 = (48 - (v83 % 0x30)) * v337 > v187;
                            if (v188 && v189)
                            {
                              LOWORD(v190) = 32;
                            }

                            else
                            {
                              LOWORD(v190) = 24;
                            }

                            if (v188 && v189)
                            {
                              LOWORD(v175) = 32;
                            }

                            else
                            {
                              LOWORD(v175) = 48;
                            }

                            v191 = 2;
                            v177 = 2;
                            LOWORD(v173) = 48;
                            v192 = v364;
                            v193 = v351;
                            v194 = *(v358 + 1472);
                            v195 = v194 < 18;
                            if (v194 >= 18)
                            {
                              goto LABEL_200;
                            }
                          }

                          else
                          {
                            v210 = (64 - (v337 & 0x3F)) * v83;
                            if ((v337 & 0x3F) == 0)
                            {
                              v210 = 0;
                            }

                            v211 = (32 - (v83 & 0x1F)) * v337;
                            if ((v83 & 0x1F) == 0)
                            {
                              v211 = 0;
                            }

                            v212 = v211 + v210;
                            if (v83 == 48 * ((v83 * 0x555555555555556uLL) >> 64))
                            {
                              v213 = 0;
                            }

                            else
                            {
                              v213 = (48 - (v83 - 48 * ((v83 * 0x555555555555556uLL) >> 64))) * v337;
                            }

                            v214 = v337 - 48 * ((v337 * 0x555555555555556uLL) >> 64);
                            if (v214)
                            {
                              v215 = (48 - v214) * v83;
                            }

                            else
                            {
                              v215 = 0;
                            }

                            v216 = v213 + v215;
                            v217 = v212 > v216;
                            if (v212 <= v216)
                            {
                              LOWORD(v173) = 64;
                            }

                            else
                            {
                              LOWORD(v173) = 48;
                            }

                            if (v217)
                            {
                              LOWORD(v175) = 48;
                            }

                            else
                            {
                              LOWORD(v175) = 32;
                            }

                            LOWORD(v190) = 16;
                            v191 = 2;
                            v177 = 2;
                            v192 = v364;
                            v193 = v351;
                            v194 = *(v358 + 1472);
                            v195 = v194 < 18;
                            if (v194 >= 18)
                            {
                              goto LABEL_200;
                            }
                          }

                          goto LABEL_250;
                        }

                        v186 = v353;
                        if (v185 == 268435472 && *&v351[v183] == 268435472)
                        {
                          v198 = ((64 - (v337 & 0x3F)) * (v83 + 31)) >> 5;
                          if ((v337 & 0x3F) == 0)
                          {
                            v198 = 0;
                          }

                          if ((v83 & 0x1F) != 0)
                          {
                            v199 = ((32 - (v83 & 0x1F)) * (v337 + 63)) >> 6;
                          }

                          else
                          {
                            v199 = 0;
                          }

                          v200 = v83 - 48 * ((v83 * 0x555555555555556uLL) >> 64);
                          if (v200)
                          {
                            v200 = ((48 - v200) * (v337 + 47) * 0x555555555555556uLL) >> 64;
                          }

                          v201 = v199 + v198;
                          v202 = v337 - 48 * ((v337 * 0x555555555555556uLL) >> 64);
                          if (v202)
                          {
                            v203 = ((48 - v202) * (v83 + 47) * 0x555555555555556uLL) >> 64;
                          }

                          else
                          {
                            v203 = 0;
                          }

                          v192 = v364;
                          v193 = v351;
                          v191 = v178;
                          v289 = v201 > v203 + v200;
                          if (v201 <= v203 + v200)
                          {
                            LOWORD(v190) = 32;
                          }

                          else
                          {
                            LOWORD(v190) = 24;
                          }

                          if (v201 <= v203 + v200)
                          {
                            LOWORD(v173) = 64;
                          }

                          else
                          {
                            LOWORD(v173) = 48;
                          }

                          if (v289)
                          {
                            LOWORD(v175) = 48;
                          }

                          else
                          {
                            LOWORD(v175) = 32;
                          }

                          v194 = *(v358 + 1472);
                          v195 = v194 < 18;
                          if (v194 >= 18)
                          {
                            goto LABEL_200;
                          }

                          goto LABEL_250;
                        }

                        v218 = 64 - (v83 & 0x3F);
                        if ((v83 & 0x3F) == 0)
                        {
                          v218 = 0;
                        }

                        v219 = 32 - (v83 & 0x1F);
                        LOWORD(v175) = 48;
                        v220 = v83 - 48 * ((v83 * 0x555555555555556uLL) >> 64);
                        if ((v83 & 0x1F) == 0)
                        {
                          v219 = 0;
                        }

                        LOWORD(v173) = 64;
                        LOWORD(v190) = 24;
                        if (v220)
                        {
                          v192 = v364;
                          if (48 - v220 <= v219)
                          {
LABEL_238:
                            v193 = v351;
                            goto LABEL_249;
                          }

                          if (((((v83 + 63) >> 6) * ((v83 + 63) >> 6)) / v179) > 12.0)
                          {
                            if (v218 <= v219)
                            {
                              LOWORD(v190) = 16;
                            }

                            else
                            {
                              LOWORD(v190) = 32;
                            }

                            LOWORD(v173) = 64;
                            if (v218 <= v219)
                            {
                              LOWORD(v175) = 64;
                            }

                            else
                            {
                              LOWORD(v175) = 32;
                            }

                            goto LABEL_238;
                          }

                          if (v219 <= v218)
                          {
                            LOWORD(v190) = 32;
                          }

                          else
                          {
                            LOWORD(v190) = 16;
                          }

                          LOWORD(v173) = 64;
                          if (v219 <= v218)
                          {
                            LOWORD(v175) = 32;
                          }

                          else
                          {
                            LOWORD(v175) = 64;
                          }

                          v193 = v351;
                        }

                        else
                        {
                          v192 = v364;
                          v193 = v351;
                        }

LABEL_249:
                        v191 = v178;
                        v194 = *(v358 + 1472);
                        v195 = v194 < 18;
                        if (v194 < 18)
                        {
                          goto LABEL_250;
                        }

LABEL_200:
                        if (v182)
                        {
                          v208 = *MEMORY[0x277CD73C8];
                          if ((*&v184[v208] | 0x80000000) == 0x90000010 && (*&v193[v208] | 0x80000000) == 0x90000010)
                          {
                            v209 = 0;
                            LOWORD(v173) = 32;
                            LOWORD(v190) = 16;
                            LOWORD(v176) = 128;
                            v191 = 2;
                            v177 = 2;
                            LOWORD(v175) = 32;
                            if (!*(v192 + 52))
                            {
                              goto LABEL_253;
                            }
                          }

                          else
                          {
                            LOWORD(v175) = 64;
                            LOWORD(v190) = 32;
                            LOWORD(v176) = 128;
                            v191 = 2;
                            v209 = 1;
                            v177 = 2;
                            LOWORD(v173) = 32;
                            if (!*(v192 + 52))
                            {
                              goto LABEL_253;
                            }
                          }
                        }

                        else
                        {
                          LOWORD(v190) = 32;
                          LOWORD(v176) = 128;
                          v191 = 2;
                          v209 = 1;
                          v177 = 2;
                          if (!*(v192 + 52))
                          {
                            goto LABEL_253;
                          }
                        }

LABEL_251:
                        v221 = *(v192 + 25);
                        if (v221)
                        {
                          v175 = *v221;
                          v173 = *(v221 + 4);
                          v177 = *(v221 + 16);
                          v191 = *(v221 + 20);
                          v190 = *(v221 + 8);
                          v176 = *(v221 + 12);
                          v195 = *(v221 + 28);
                          v209 = *(v221 + 29);
                        }

LABEL_253:
                        v359 = v173;
                        v338 = v348 % v173;
                        if (v338)
                        {
                          v222 = 1;
                          v223 = v190;
                          v224 = v174 / v223 * v223;
                          v343 = v190;
                          if (v195)
                          {
                            goto LABEL_255;
                          }
                        }

                        else
                        {
                          v222 = v186 % v175 != 0;
                          v223 = v190;
                          v224 = v174 / v223 * v223;
                          v343 = v190;
                          if (v195)
                          {
LABEL_255:
                            v225 = (v175 * v223) >> 2 < v176;
                            v226 = v174 - v224;
                            v312 = v190;
                            v297 = v176;
                            if ((v209 & 1) == 0)
                            {
LABEL_256:
                              v227 = 0;
                              goto LABEL_260;
                            }

LABEL_259:
                            v227 = ((v359 * v343) >> 2 < v176) << 31;
LABEL_260:
                            if (v226)
                            {
                              v228 = 1;
                            }

                            else
                            {
                              v228 = v222;
                            }

                            if ((v228 | v225))
                            {
                              v229 = 0x80000000;
                            }

                            else
                            {
                              v229 = v227;
                            }

                            v298 = v229;
                            v232 = v348 < 0x7FFF && v186 < 0x7FFF && v174 < 0x7FFF;
                            if (v194 < 18)
                            {
LABEL_279:
                              if (v338)
                              {
                                goto LABEL_297;
                              }

LABEL_280:
                              if (v226)
                              {
                                v235 = 0;
                              }

                              else
                              {
                                v235 = v186 % v175 == 0;
                              }

                              v236 = !v235;
                              if (((v314 | v236) & 1) == 0)
                              {
                                if (v194 < 18)
                                {
                                  goto LABEL_306;
                                }

                                goto LABEL_288;
                              }

LABEL_297:
                              if (v194 < 18)
                              {
                                goto LABEL_306;
                              }

LABEL_288:
                              v237 = *(v328 + 8);
                              switch(v237)
                              {
                                case -1879048176:
                                  v240 = *(v316 + 8);
                                  if (v240 == -1879048176 || v240 == 268435488)
                                  {
                                    goto LABEL_306;
                                  }

                                  break;
                                case 268435472:
                                  v239 = *(v316 + 8);
                                  if (v239 == 268435472 || v239 == 268435488)
                                  {
                                    goto LABEL_306;
                                  }

                                  break;
                                case 268435488:
                                  v238 = *(v316 + 8);
                                  if (v238 == -1879048176 || v238 == 268435472 || v238 == 268435488)
                                  {
                                    goto LABEL_306;
                                  }

                                  break;
                              }

                              if (MTLReportFailureTypeEnabled())
                              {
                                MTLReportFailure();
                              }

LABEL_306:
                              v241 = *(v328 + 8);
                              if (v241 <= 268435487)
                              {
                                if (v241 == -1879048176)
                                {
                                  v242 = 8;
                                  goto LABEL_323;
                                }

                                if (v241 != 268435464)
                                {
                                  if (v241 == 268435472)
                                  {
                                    v242 = 4;
                                    goto LABEL_323;
                                  }

                                  goto LABEL_319;
                                }

                                v242 = 16;
                              }

                              else if (v241 > 335544327)
                              {
                                if (v241 != 335544328)
                                {
                                  if (v241 == 536870920)
                                  {
                                    v242 = 0;
                                    goto LABEL_323;
                                  }

                                  goto LABEL_319;
                                }

                                v242 = 24;
                              }

                              else
                              {
                                if (v241 != 268435488)
                                {
                                  if (v241 == 301989896)
                                  {
                                    v242 = 20;
                                    goto LABEL_323;
                                  }

LABEL_319:
                                  v242 = 28;
                                  goto LABEL_323;
                                }

                                v242 = 12;
                              }

LABEL_323:
                              v243 = *(v316 + 8);
                              v322 = v195;
                              if (v243 <= 268435487)
                              {
                                switch(v243)
                                {
                                  case -1879048176:
                                    v244 = 64;
                                    v325 = v177;
                                    if ((v357 & 1) == 0)
                                    {
                                      break;
                                    }

                                    goto LABEL_339;
                                  case 268435464:
                                    v244 = 128;
                                    v325 = v177;
                                    if (v357)
                                    {
                                      goto LABEL_339;
                                    }

                                    break;
                                  case 268435472:
                                    v244 = 32;
                                    v325 = v177;
                                    if (v357)
                                    {
                                      goto LABEL_339;
                                    }

                                    break;
                                  default:
                                    goto LABEL_362;
                                }
                              }

                              else if (v243 > 335544327)
                              {
                                if (v243 == 335544328)
                                {
                                  v244 = 192;
                                  v325 = v177;
                                  if ((v357 & 1) == 0)
                                  {
                                    goto LABEL_363;
                                  }

                                  goto LABEL_339;
                                }

                                if (v243 != 536870920)
                                {
LABEL_362:
                                  v244 = 224;
                                  v325 = v177;
                                  if ((v357 & 1) == 0)
                                  {
                                    goto LABEL_363;
                                  }

                                  goto LABEL_339;
                                }

                                v244 = 0;
                                v325 = v177;
                                if (v357)
                                {
                                  goto LABEL_339;
                                }
                              }

                              else
                              {
                                if (v243 != 268435488)
                                {
                                  if (v243 == 301989896)
                                  {
                                    v244 = 160;
                                    v325 = v177;
                                    if ((v357 & 1) == 0)
                                    {
                                      goto LABEL_363;
                                    }

LABEL_339:
                                    v245 = v242;
                                    v246 = v209;
                                    v247 = v301 > HIBYTE(v301);
                                    v248 = v300 > HIBYTE(v300);
                                    v249 = 768;
                                    goto LABEL_340;
                                  }

                                  goto LABEL_362;
                                }

                                v244 = 96;
                                v325 = v177;
                                if (v357)
                                {
                                  goto LABEL_339;
                                }
                              }

LABEL_363:
                              v288 = *(v309 + 8);
                              if (v288 <= 268435487)
                              {
                                if (v288 == -1879048176)
                                {
                                  v245 = v242;
                                  v246 = v209;
                                  v247 = v301 > HIBYTE(v301);
                                  v248 = v300 > HIBYTE(v300);
                                  v249 = 512;
                                  goto LABEL_340;
                                }

                                if (v288 != 268435464)
                                {
                                  v246 = v209;
                                  if (v288 == 268435472)
                                  {
                                    v245 = v242;
                                    v247 = v301 > HIBYTE(v301);
                                    v248 = v300 > HIBYTE(v300);
                                    v249 = 256;
                                    goto LABEL_340;
                                  }

                                  goto LABEL_382;
                                }

                                v245 = v242;
                                v246 = v209;
                                v247 = v301 > HIBYTE(v301);
                                v248 = v300 > HIBYTE(v300);
                                v249 = 1024;
                              }

                              else if (v288 > 335544327)
                              {
                                if (v288 != 335544328)
                                {
                                  v246 = v209;
                                  if (v288 == 536870920)
                                  {
                                    v245 = v242;
                                    v247 = v301 > HIBYTE(v301);
                                    v248 = v300 > HIBYTE(v300);
                                    v249 = 0;
                                    goto LABEL_340;
                                  }

                                  goto LABEL_382;
                                }

                                v245 = v242;
                                v246 = v209;
                                v247 = v301 > HIBYTE(v301);
                                v248 = v300 > HIBYTE(v300);
                                v249 = 1536;
                              }

                              else
                              {
                                if (v288 != 268435488)
                                {
                                  v246 = v209;
                                  if (v288 == 301989896)
                                  {
                                    v245 = v242;
                                    v247 = v301 > HIBYTE(v301);
                                    v248 = v300 > HIBYTE(v300);
                                    v249 = 1280;
                                    goto LABEL_340;
                                  }

LABEL_382:
                                  v245 = v242;
                                  v247 = v301 > HIBYTE(v301);
                                  v248 = v300 > HIBYTE(v300);
                                  v249 = 1792;
                                  goto LABEL_340;
                                }

                                v245 = v242;
                                v246 = v209;
                                v247 = v301 > HIBYTE(v301);
                                v248 = v300 > HIBYTE(v300);
                                v249 = 768;
                              }

LABEL_340:
                              v319 = v246;
                              if (v232)
                              {
                                v250 = 2048;
                              }

                              else
                              {
                                v250 = 0;
                              }

                              v251 = [*(v349 + 232) finalOp];
                              (*(*v251 + 16))(v251);
                              v427 = 0;
                              v426 = 0;
                              v420 = -1;
                              v421 = -1;
                              v422 = (v247 | (2 * v248)) & 0xFE000FFF | ((v191 << 28) + 1879048192) & 0x70000000 | ((v325 << 25) + 234881024) & 0xE000000 | (((v343 >> 3) & 7) << 22) | (v359 >> 3 << 17) | (((v175 >> 3) & 0x1F) << 12) | v250 | v245 | v244 | v249 | v298;
                              v423 = (v305 << 10) | (32 * v307) | v303;
                              v424 = 0u;
                              v425 = 0u;
                              v308 = v175;
                              v426 = [*(v349 + 16) count] | ((*(v349 + 112) != 0) << 8) | 0x10000;
                              v427 = 0;
                              v293 = *&v364[*MEMORY[0x277CD7360]];
                              v295 = *&v364[*MEMORY[0x277CD7368]];
                              v291 = *(v349 + 232);
                              MPSLibrary::CreateUberShaderKey();
                              PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
                              MPSLibrary::ReleaseMPSKey();
                              v306 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup] >= v297;
                              v253 = HIDWORD(v429);
                              if (v360 || v345)
                              {
                                v253 = 1;
                              }

                              v304 = v253;
                              if (v322)
                              {
                                v254 = v343;
                                v313 = (*(v328 + 8) >> 3) * (v175 * v343);
                                v339 = PipelineStateForMPSKey;
                                if ((v319 & 1) == 0)
                                {
LABEL_347:
                                  v320 = 0;
LABEL_350:
                                  v317 = DWORD2(v432);
                                  v302 = HIDWORD(v434);
                                  v255 = *MEMORY[0x277CD7418];
                                  v256 = *&v350[v255];
                                  v257 = *&v350[v255 + 16];
                                  v258 = *&v350[v255 + 48];
                                  v259 = *MEMORY[0x277CD73D8];
                                  v260 = *&v350[v259];
                                  v369 = *&v350[v255 + 32];
                                  v370 = v258;
                                  v368[0] = v256;
                                  v368[1] = v257;
                                  v361 = *(v368 + (v260 & 0xF));
                                  v367[2] = v369;
                                  v367[3] = v258;
                                  v367[0] = v256;
                                  v367[1] = v257;
                                  v346 = *(v367 + (BYTE1(v260) & 0xF));
                                  v366[2] = v369;
                                  v366[3] = v258;
                                  v366[0] = v256;
                                  v366[1] = v257;
                                  v344 = *(v366 + (BYTE2(v260) & 0xF));
                                  v365[2] = v369;
                                  v365[3] = v258;
                                  v365[0] = v256;
                                  v365[1] = v257;
                                  v329 = *(v365 + (BYTE3(v260) & 0xF));
                                  v261 = *(v349 + 8);
                                  v326 = *(v261 + 80 * v22 + 64);
                                  v262 = *&v351[v255];
                                  v263 = *&v351[v255 + 16];
                                  v264 = *&v351[v255 + 48];
                                  v265 = *&v351[v259];
                                  v375 = *&v351[v255 + 32];
                                  v376 = v264;
                                  v374[0] = v262;
                                  v374[1] = v263;
                                  v266 = *(v374 + (v265 & 0xF));
                                  v373[2] = v375;
                                  v373[3] = v264;
                                  v373[0] = v262;
                                  v373[1] = v263;
                                  v267 = *(v373 + (BYTE1(v265) & 0xF));
                                  v372[2] = v375;
                                  v372[3] = v264;
                                  v372[0] = v262;
                                  v372[1] = v263;
                                  v268 = *(v372 + (BYTE2(v265) & 0xF));
                                  v371[2] = v375;
                                  v371[3] = v264;
                                  v371[0] = v262;
                                  v371[1] = v263;
                                  v269 = *(v371 + (BYTE3(v265) & 0xF));
                                  v270 = *(v261 + 80 * v23 + 64);
                                  v271 = &v354[v255];
                                  v272 = *v271;
                                  v273 = *(v271 + 1);
                                  v274 = *(v271 + 2);
                                  v275 = *&v354[v259];
                                  v381 = *(v271 + 3);
                                  v380[2] = v274;
                                  v380[1] = v273;
                                  v380[0] = v272;
                                  v323 = *(v380 + (v275 & 0xF));
                                  v379[3] = v381;
                                  v379[2] = v274;
                                  v379[1] = v273;
                                  v379[0] = v272;
                                  v276 = *(v379 + (BYTE1(v275) & 0xF));
                                  v378[3] = v381;
                                  v378[2] = v274;
                                  v378[1] = v273;
                                  v378[0] = v272;
                                  v277 = *(v378 + (BYTE2(v275) & 0xF));
                                  v377[2] = v274;
                                  v377[3] = v381;
                                  v377[0] = v272;
                                  v377[1] = v273;
                                  v278 = *(v377 + (BYTE3(v275) & 0xF));
                                  v279 = *(v349 + 192);
                                  [v363 setComputePipelineState:v339];
                                  MPSSetNDArraysOnComputeEncoder(v363, v349, 4, 0, 0);
                                  [v363 setBuffer:objc_msgSend(v351 offset:"buffer") atIndex:{v270 + v335 * v267 + v336 * v266 + v334 * v268 + v330 * v269, 29}];
                                  [v363 setBuffer:objc_msgSend(v350 offset:"buffer") atIndex:{v326 + v332 * v346 + v333 * v361 + v331 * v344 + v327 * v329, 28}];
                                  if (v357)
                                  {
                                    v280 = 0;
                                  }

                                  else
                                  {
                                    v280 = v279 + v311 * v276 + v299 * v323 + v341 * v277 + v340 * v278;
                                  }

                                  [v363 setBuffer:TempBuffer offset:v280 atIndex:27];
                                  objc_msgSend_setBytes_length_atIndex_(v363);
                                  [v363 setThreadgroupMemoryLength:v313 atIndex:0];
                                  [v363 setThreadgroupMemoryLength:v320 atIndex:1];
                                  v417 = (v353 + v308 - 1) / v308;
                                  v418 = (v348 + v359 - 1) / v359;
                                  v419 = v317 * (v304 * v302);
                                  v415.i64[0] = v297;
                                  v415.i64[1] = v306;
                                  v416 = 1;
                                  [v363 dispatchThreadgroups:&v417 threadsPerThreadgroup:&v415];
                                  if (v357)
                                  {
                                    v281 = [*(v349 + 232) finalOp];
                                    (*(*v281 + 16))(v281);
                                    v294 = *&v364[*MEMORY[0x277CD7360]];
                                    v296 = *&v364[*MEMORY[0x277CD7368]];
                                    v292 = *(v349 + 232);
                                    MPSLibrary::CreateUberShaderKey();
                                    v282 = MPSLibrary::GetPipelineStateForMPSKey();
                                    MPSLibrary::ReleaseMPSKey();
                                    [v363 setComputePipelineState:{v282, v292, v294, v296, 0, 0}];
                                    MPSSetNDArraysOnComputeEncoder(v363, v349, 3, 0, 0);
                                    [v363 setBuffer:TempBuffer offset:0 atIndex:29];
                                    [v363 setBuffer:objc_msgSend(v354 offset:"buffer") atIndex:{v279 + v311 * v276 + v299 * v323 + v341 * v277 + v340 * v278, 28}];
                                    HIDWORD(v430) = v311;
                                    HIDWORD(v431) = v341;
                                    DWORD2(v433) = v340;
                                    objc_msgSend_setBytes_length_atIndex_(v363);
                                    v283 = 128;
                                    if ((v429 & 3) != 0)
                                    {
                                      v283 = 32;
                                    }

                                    v284 = v429 + v283;
                                    v285 = 5;
                                    if ((v429 & 3) == 0)
                                    {
                                      v285 = 7;
                                    }

                                    v286 = (v284 - 1) >> v285;
                                    v287 = HIDWORD(v429);
                                    if (v314)
                                    {
                                      v287 = 1;
                                    }

                                    v417 = v286;
                                    v418 = (DWORD1(v429) + 31) >> 5;
                                    v419 = v287;
                                    v415 = vdupq_n_s64(0x20uLL);
                                    v416 = 1;
                                    [v363 dispatchThreadgroups:&v417 threadsPerThreadgroup:&v415];
                                  }

                                  MPSLibrary::ReleaseComputeState();
                                  MPSAutoCache::~MPSAutoCache(v428);
                                  return;
                                }
                              }

                              else
                              {
                                v313 = 0;
                                v254 = v343;
                                v339 = PipelineStateForMPSKey;
                                if ((v319 & 1) == 0)
                                {
                                  goto LABEL_347;
                                }
                              }

                              v320 = (*(v316 + 8) >> 3) * (v359 * v254);
                              goto LABEL_350;
                            }

                            if (v195 & v232)
                            {
                              v233 = v312;
                              LOBYTE(v234) = v312 * (v310 / (*&v184[*MEMORY[0x277CD73C8]] >> 3)) < 0x7FFF;
                              if ((v209 & v234) == 0)
                              {
LABEL_278:
                                LOBYTE(v232) = (v209 ^ 1) & v234;
                                goto LABEL_279;
                              }
                            }

                            else
                            {
                              v234 = (v195 ^ 1) & v232;
                              v233 = v312;
                              if ((v209 & v234 & 1) == 0)
                              {
                                goto LABEL_278;
                              }
                            }

                            LOBYTE(v232) = v233 * (v318 / (*&v193[*MEMORY[0x277CD73C8]] >> 3)) < 0x7FFF;
                            if (v338)
                            {
                              goto LABEL_297;
                            }

                            goto LABEL_280;
                          }
                        }

                        v225 = 0;
                        v226 = v174 - v224;
                        v312 = v190;
                        v297 = v176;
                        if ((v209 & 1) == 0)
                        {
                          goto LABEL_256;
                        }

                        goto LABEL_259;
                      }
                    }
                  }

                  else
                  {
                    v126 = 0;
                    v127 = *&v350[v122];
                    if (v127 <= 1u && BYTE1(v127) <= 1u && BYTE2(v127) == 2)
                    {
                      v360 = 0;
                      if (BYTE1(v127) < BYTE2(v127))
                      {
                        v360 = 0;
                        v128 = BYTE1(v127) & 0xF;
                        v129 = *&v350[4 * v128 + v117];
                        v130 = &v350[*MEMORY[0x277CD7428]];
                        v131 = *v130;
                        v132 = *(v130 + 1);
                        v133 = *(v130 + 2);
                        v134 = *(v130 + 3);
                        v135 = *(v130 + 4);
                        v136 = *(v130 + 5);
                        v137 = *(v130 + 6);
                        v383[7] = *(v130 + 7);
                        v383[6] = v137;
                        v383[5] = v136;
                        v383[4] = v135;
                        v383[3] = v134;
                        v383[2] = v133;
                        v383[1] = v132;
                        v383[0] = v131;
                        v126 = *(v383 + v128) * v129 == v132;
                      }

                      goto LABEL_113;
                    }
                  }

                  v360 = 0;
                  goto LABEL_113;
                }

LABEL_402:
                std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
              }
            }
          }
        }

        std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
      }
    }

    else
    {
      v46 = *MEMORY[0x277CD73C8];
      v47 = *&v27[v46];
      if (v47 == 268435488)
      {
        v45 = *(v28 + v46) == 268435488;
        v48 = 3;
        if (v45)
        {
          v48 = 4;
        }
      }

      else
      {
        v48 = 3;
      }

      v49 = 9;
      if (v42 * v41 * v48 < *(v31 + 1480) << 12)
      {
        v49 = 15;
      }

      if (*(v31 + 1472) > 10)
      {
        v52 = *(v28 + v34 + 4 * (WORD1(*(v28 + v39)) & 0xF));
        if (*&v27[v39] <= BYTE1(*&v27[v39]) && v52 == 1)
        {
          v54 = *&v27[4 * (WORD1(*&v27[v39]) & 0xF) + v34];
        }

        else
        {
          v54 = 1;
        }

        v41 = v54 * v41;
        v55 = v42 * v52;
        if (*(v28 + v39) <= BYTE1(*(v28 + v39)))
        {
          v55 = *(v414 + (v40 & 0xF));
        }

        if (*&v27[4 * (WORD1(*&v27[v39]) & 0xF) + v34] == 1)
        {
          v42 = v55;
        }

        v50 = v49;
      }

      else
      {
        v50 = 15;
        if ((v42 & 3) == 0)
        {
          v50 = v49;
        }

        if (v41)
        {
          v51 = 15;
        }

        else
        {
          v51 = v49;
        }

        if (v47 == 268435472)
        {
          v49 = v51;
          v50 = 15;
        }
      }

      v56 = v41 > v49 && v42 > v50;
      v57 = v27[v39 + 3] & 0xF;
      LODWORD(v58) = *&v27[4 * v57 + v34];
      v59 = (v28 + v34);
      v60 = *v59;
      v61 = v59[1];
      v62 = v59[2];
      v63 = v59[3];
      v411[3] = v63;
      v411[2] = v62;
      v411[1] = v61;
      v411[0] = v60;
      v64 = *(v411 + v57);
      v65 = !v56;
      if (v58 <= v64)
      {
        v58 = v64;
      }

      else
      {
        v58 = v58;
      }

      v66 = v41 * v58;
      if (v65 == 1 && v66 > v49)
      {
        v138 = *(v28 + v39);
        v410[0] = v60;
        v410[1] = v61;
        v410[2] = v62;
        v410[3] = v63;
        if (*(v410 + (v138 & 0xF)) >= 0x81u)
        {
          goto LABEL_75;
        }
      }

      else if (!v65)
      {
        goto LABEL_75;
      }
    }
  }

  EncodeMatrixVectorMultiply(v26, v363, v11, v27, v28, v30, v9);
}

uint64_t MPSNDArrayMatrixMultiplyA18FunctionConstructor(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = MPSCreateFunctionConstantValues();
  [v7 setConstantValue:a2 + 8 type:85 atIndex:115];
  AddFunctionConstantList(v7, a3);
  v8 = _MPSNewSpecializedFunction();

  return v8;
}

uint64_t MPSNDArrayMatMulDeviceBehavior::EncodeArrayMultiply(uint64_t a1, char *a2, void *a3, uint64_t a4, id *a5)
{
  v131 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    if ((*(*&a2[*MEMORY[0x277CD7350]] + 1472) - 11) < 7)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    [a2 setAutoTuningTarget:v10];
    [a2 setAutoTuningParameters:*(a1 + 8)];
  }

  v104 = a2;
  v11 = *(a5 + 13);
  v128 = *(a5 + 12);
  v129 = v11;
  v130 = *(a5 + 14);
  v12 = *(a5 + 9);
  v124 = *(a5 + 8);
  v125 = v12;
  v13 = *(a5 + 11);
  v126 = *(a5 + 10);
  v127 = v13;
  v14 = *(a5 + 5);
  v120 = *(a5 + 4);
  v121 = v14;
  v15 = *(a5 + 7);
  v122 = *(a5 + 6);
  v123 = v15;
  v16 = *(a5 + 1);
  v116 = *a5;
  v117 = v16;
  v17 = *(a5 + 3);
  v118 = *(a5 + 2);
  v119 = v17;
  v18 = [*(&v130 + 1) graph];
  v19 = *(v18 + 64);
  v20 = *v19;
  v21 = v19[1];
  if (*v19 == v21)
  {
    v25 = 0;
  }

  else
  {
    v22 = v18;
    context = a3;
    v23 = a4;
    v24 = 0;
    v25 = -1;
    v26 = -1;
    do
    {
      v27 = *v20;
      if (v27 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v22) + 32))
      {
        v25 = v24;
      }

      v28 = *v20;
      if (v28 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v22) + 32))
      {
        v26 = v24;
      }

      if (MPSKernelDAG::GetCoreOpNumberOfInputs(v22) == 3)
      {
        MPSKernelDAG::GetCoreOpInputAtIndex(v22);
      }

      ++v24;
      ++v20;
    }

    while (v20 != v21);
    if (v25 == -1)
    {
      v25 = 0;
      a4 = v23;
      a3 = context;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    a4 = v23;
    a3 = context;
    if (v26 != -1)
    {
      goto LABEL_22;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
LABEL_20:
    MTLReportFailure();
  }

LABEL_21:
  v26 = 0;
LABEL_22:
  v29 = [v117 objectAtIndexedSubscript:v25];
  v30 = [v117 objectAtIndexedSubscript:v26];
  v31 = v129;
  contexta = objc_autoreleasePoolPush();
  v32 = *([*(&v130 + 1) graph] + 84);
  v114 = 0;
  v33 = [*(&v130 + 1) finalOp];
  v34 = (*(*v33 + 16))(v33);
  v35 = 0;
  v36 = *&v104[*MEMORY[0x277CD7350]];
  v37 = *(v36 + 1472);
  v38 = *MEMORY[0x277CD7410];
  v40 = *(v129 + v38 + 32);
  v39 = *(v129 + v38 + 48);
  v42 = *(v129 + v38);
  v41 = *(v129 + v38 + 16);
  v43 = *MEMORY[0x277CD73D8];
  if (v37 <= 10)
  {
    v44 = *(v129 + v43 + 2) & 0xF;
    v109[0] = *(v129 + v38);
    v109[1] = v41;
    v109[2] = v40;
    v109[3] = v39;
    v35 = *(v109 + v44) != 1;
  }

  v45 = *(v129 + v43);
  v108[0] = v42;
  v108[1] = v41;
  v108[2] = v40;
  v108[3] = v39;
  v46 = *(v108 + (BYTE1(v45) & 0xF));
  v107[0] = v42;
  v107[1] = v41;
  v107[2] = v40;
  v107[3] = v39;
  v47 = *(v107 + (v45 & 0xF));
  v48 = v46 >> 10 > 6 || v47 >> 10 >= 7;
  if (v48 && ((v49 = *&v29[4 * (*&v29[v43] & 0xF) + v38], v49 != 18816) ? (v50 = v49 == 7168) : (v50 = 1), v50))
  {
    v51 = v46 < 8;
    v52 = *MEMORY[0x277CD73C8];
    v53 = *&v29[v52];
  }

  else
  {
    v54 = *(v36 + 1480);
    v52 = *MEMORY[0x277CD73C8];
    v53 = *&v29[v52];
    if (v53 == 268435488)
    {
      v55 = 3;
      if (*&v30[v52] == 268435488)
      {
        v55 = 4;
      }
    }

    else
    {
      v55 = 3;
    }

    v48 = v47 * v46 * v55 >= v54 << 12;
    v56 = 9;
    if (!v48)
    {
      v56 = 15;
    }

    if (v37 > 10)
    {
      v60 = *&v30[4 * (WORD1(*&v30[v43]) & 0xF) + v38];
      if (*&v29[v43] <= BYTE1(*&v29[v43]) && v60 == 1)
      {
        v62 = *&v29[4 * (WORD1(*&v29[v43]) & 0xF) + v38];
      }

      else
      {
        v62 = 1;
      }

      v46 = v62 * v46;
      v63 = v47 * v60;
      if (*&v30[v43] <= BYTE1(*&v30[v43]))
      {
        v63 = *(v107 + (v45 & 0xF));
      }

      if (*&v29[4 * (WORD1(*&v29[v43]) & 0xF) + v38] == 1)
      {
        v47 = v63;
      }

      v59 = v56;
    }

    else
    {
      v57 = 15;
      if ((v47 & 3) == 0)
      {
        v57 = v56;
      }

      if (v46)
      {
        v58 = 15;
      }

      else
      {
        v58 = v56;
      }

      if (v53 == 268435472)
      {
        v56 = v58;
        v59 = 15;
      }

      else
      {
        v59 = v57;
      }
    }

    v64 = v46 > v56 && v47 > v59;
    v65 = v29[v43 + 3] & 0xF;
    LODWORD(v66) = *&v29[4 * v65 + v38];
    v67 = &v30[v38];
    v68 = *v67;
    v69 = *(v67 + 1);
    v70 = *(v67 + 2);
    v71 = *(v67 + 3);
    v106[2] = v70;
    v106[3] = v71;
    v106[0] = v68;
    v106[1] = v69;
    v72 = *(v106 + v65);
    v51 = !v64;
    if (v66 <= v72)
    {
      v66 = v72;
    }

    else
    {
      v66 = v66;
    }

    v73 = v46 * v66;
    if (v51 && v73 > v56)
    {
      v75 = *&v30[v43];
      v105[0] = v68;
      v105[1] = v69;
      v105[2] = v70;
      v105[3] = v71;
      v51 = *(v105 + (v75 & 0xF)) < 0x81u;
    }
  }

  v76 = v53 == -1879048176 || *&v30[v52] == -1879048176 || *(v129 + v52) == -1879048176;
  v77 = *&v29[v43];
  v78.i32[0] = v77;
  v78.i32[1] = BYTE1(v77);
  v79 = vcgt_u32(0x200000002, vand_s8(v78, 0xFF000000FFLL));
  if (v79.i8[0] & 1) == 0 || (v79.i8[4] & 1) == 0 || BYTE2(v77) != 2 || (v80 = *&v30[v43], v81.i32[0] = v80, v81.i32[1] = BYTE1(v80), v82 = vcgt_u32(0x200000002, vand_s8(v81, 0xFF000000FFLL)), (v82.i8[0] & 1) == 0) || (v82.i8[4] & 1) == 0 || BYTE2(v80) != 2 || (!v45 ? (v83 = BYTE1(v45) == 1) : (v83 = 0), v83 ? (v84 = BYTE2(v45) == 2) : (v84 = 0), v84 ? (v85 = 0) : (v85 = 1), ((v85 | v35 | v76 | v51)))
  {
LABEL_97:
    if (*(v104 + 11) == 3)
    {
      goto LABEL_98;
    }

    if (!v32)
    {
      EncodeMatrixMultiply(v104, a3, a4, v29, v30, 0, v129, &v116, &v114);
      if (v34)
      {
        goto LABEL_118;
      }

      goto LABEL_106;
    }

LABEL_101:
    EncodeMatrixMultiplyLinking(v104, a3, a4, &v116);
    v114 = 1;
    if (v34)
    {
      goto LABEL_118;
    }

LABEL_106:
    if (v114)
    {
      goto LABEL_118;
    }

    v86 = a4;
    v87 = [v117 mutableCopy];
    [v87 setObject:v31 atIndexedSubscript:v25];
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v88 = [v87 countByEnumeratingWithState:&v110 objects:v115 count:16];
    if (!v88)
    {
LABEL_117:
      *(*(v104 + 19) + *MEMORY[0x277CD7378]) |= 1uLL;
      [*(v104 + 19) encodeToMPSCommandEncoder:a3 commandBuffer:v86 sourceArrays:v87 resultState:0 destinationArray:v31 kernelDAGObject:*(&v130 + 1)];
      goto LABEL_118;
    }

    v89 = v88;
    v90 = *v111;
    v91 = MEMORY[0x277CD73E0];
    v92 = MEMORY[0x277CD7498];
LABEL_110:
    v93 = 0;
    while (1)
    {
      if (*v111 == v90)
      {
        v94 = *(*(&v110 + 1) + 8 * v93);
        if (*(v94 + *v91) == 1)
        {
          goto LABEL_116;
        }
      }

      else
      {
        objc_enumerationMutation(v87);
        v94 = *(*(&v110 + 1) + 8 * v93);
        if (*(v94 + *v91) == 1)
        {
LABEL_116:
          ++*(v94 + *v92);
        }
      }

      if (v89 == ++v93)
      {
        v89 = [v87 countByEnumeratingWithState:&v110 objects:v115 count:16];
        if (!v89)
        {
          goto LABEL_117;
        }

        goto LABEL_110;
      }
    }
  }

  v98 = *&v30[v52];
  if (v53 == v98)
  {
    v99 = *(v129 + v52);
    if (v99 > 301989895)
    {
      if (v99 != 301989896 && v99 != 335544328)
      {
        goto LABEL_97;
      }
    }

    else if (((v99 - 268435464) > 0x18 || ((1 << (v99 - 8)) & 0x1000101) == 0) && v99 != -1879048176)
    {
      goto LABEL_97;
    }
  }

  else if (v53 != 268435488 || v98 != 268435472 || *(v129 + v52) != 268435488)
  {
    goto LABEL_97;
  }

  v100 = *(v104 + 11);
  if (v32)
  {
    if (v100 == 3)
    {
LABEL_98:
      EncodeMatrixMultiply(v104, a3, a4, v29, v30, [v117 objectAtIndexedSubscript:2], v129, &v116, &v114);
      if (v34)
      {
        goto LABEL_118;
      }

      goto LABEL_106;
    }

    goto LABEL_101;
  }

  v101 = *(v104 + 19);
  if (v100 == 3)
  {
    EncodeMatrixMultiplyMPSMatrix(v104, a3, a4, v101, v29, v30, [v117 objectAtIndexedSubscript:2], v129, &v116);
  }

  else
  {
    EncodeMatrixMultiplyMPSMatrix(v104, a3, a4, v101, v29, v30, 0, v129, &v116);
  }

  if ((v34 & 1) == 0)
  {
    goto LABEL_106;
  }

LABEL_118:
  if ([v117 count])
  {
    v95 = 0;
    do
    {
      v96 = [v117 objectAtIndexedSubscript:v95];
      if (v96 != [a5[2] objectAtIndexedSubscript:v95])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          MPSDecrementReadCount(v96);
        }
      }

      ++v95;
    }

    while (v95 < [v117 count]);
  }

  objc_autoreleasePoolPop(contexta);
  return 0;
}

void EncodeMatrixMultiplyMPSMatrix(void *a1, uint64_t a2, uint64_t a3, void *a4, char *a5, char *a6, char *a7, char *a8, void *a9)
{
  v13 = a2;
  v238 = *MEMORY[0x277D85DE8];
  v189 = a1[18];
  v14 = MEMORY[0x277CD73C8];
  v15 = MEMORY[0x277CD73D8];
  if (a5)
  {
    if (*&a5[*MEMORY[0x277CD73C8]] == -1879048176)
    {
      v17 = [a5 descriptor];
      v18 = objc_alloc(MEMORY[0x277CD7268]);
      v19 = *(v17 + *MEMORY[0x277CD7440]);
      v20 = (v17 + *MEMORY[0x277CD7458]);
      v21 = *v20;
      v22 = v20[1];
      v23 = v20[3];
      v232 = v20[2];
      v233 = v23;
      v230 = v21;
      v231 = v22;
      v24 = [v18 initWithDataType:268435488 dimensions:v19 sizes:&v230];
      v25 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v24];
      *(v25 + *v15) = *&a5[*v15];
      *(v25 + *v15 + 1) = a5[*v15 + 1];
      *(v25 + *v15 + 2) = a5[*v15 + 2];
      *(v25 + *v15 + 3) = a5[*v15 + 3];
      *(v25 + *v15 + 4) = a5[*v15 + 4];
      *(v25 + *v15 + 5) = a5[*v15 + 5];
      *(v25 + *v15 + 6) = a5[*v15 + 6];
      *(v25 + *v15 + 7) = a5[*v15 + 7];
      *(v25 + *v15 + 8) = a5[*v15 + 8];
      *(v25 + *v15 + 9) = a5[*v15 + 9];
      *(v25 + *v15 + 10) = a5[*v15 + 10];
      *(v25 + *v15 + 11) = a5[*v15 + 11];
      *(v25 + *v15 + 12) = a5[*v15 + 12];
      *(v25 + *v15 + 13) = a5[*v15 + 13];
      *(v25 + *v15 + 14) = a5[*v15 + 14];
      v26 = v25;
      *(v25 + *v15 + 15) = a5[*v15 + 15];
      v27 = a1[19];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a5 setReadCount:{objc_msgSend(a5, "readCount") + 1}];
      }

      *&v230 = a5;
      v13 = a2;
      [v27 encodeToMPSCommandEncoder:a2 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:&v230 kernelDAGObject:{1), 0, v26, 0}];
      v14 = MEMORY[0x277CD73C8];
      v28 = a1;
      if (!a6)
      {
LABEL_14:
        v193 = 0;
        if (a7)
        {
          goto LABEL_15;
        }

LABEL_21:
        v47 = 0;
        v49 = v189;
        v50 = v26;
        if (a8)
        {
          goto LABEL_22;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v26 = a5;
      v28 = a1;
      if (!a6)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v26 = 0;
    v28 = a1;
    if (!a6)
    {
      goto LABEL_14;
    }
  }

  if (*&a6[*v14] == -1879048176)
  {
    v29 = [a6 descriptor];
    v30 = objc_alloc(MEMORY[0x277CD7268]);
    v31 = *(v29 + *MEMORY[0x277CD7440]);
    v32 = (v29 + *MEMORY[0x277CD7458]);
    v33 = *v32;
    v34 = v32[1];
    v35 = v32[3];
    v232 = v32[2];
    v233 = v35;
    v230 = v33;
    v231 = v34;
    v36 = [v30 initWithDataType:268435488 dimensions:v31 sizes:&v230];
    v37 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v36];
    *(v37 + *v15) = *&a6[*v15];
    *(v37 + *v15 + 1) = a6[*v15 + 1];
    *(v37 + *v15 + 2) = a6[*v15 + 2];
    *(v37 + *v15 + 3) = a6[*v15 + 3];
    *(v37 + *v15 + 4) = a6[*v15 + 4];
    *(v37 + *v15 + 5) = a6[*v15 + 5];
    *(v37 + *v15 + 6) = a6[*v15 + 6];
    *(v37 + *v15 + 7) = a6[*v15 + 7];
    *(v37 + *v15 + 8) = a6[*v15 + 8];
    *(v37 + *v15 + 9) = a6[*v15 + 9];
    *(v37 + *v15 + 10) = a6[*v15 + 10];
    *(v37 + *v15 + 11) = a6[*v15 + 11];
    *(v37 + *v15 + 12) = a6[*v15 + 12];
    *(v37 + *v15 + 13) = a6[*v15 + 13];
    *(v37 + *v15 + 14) = a6[*v15 + 14];
    v193 = v37;
    *(v37 + *v15 + 15) = a6[*v15 + 15];
    v38 = v28[19];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a6 setReadCount:{objc_msgSend(a6, "readCount") + 1}];
    }

    *&v230 = a6;
    [v38 encodeToMPSCommandEncoder:v13 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:&v230 kernelDAGObject:{1), 0, v193, 0}];
    v14 = MEMORY[0x277CD73C8];
    if (!a7)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v193 = a6;
    if (!a7)
    {
      goto LABEL_21;
    }
  }

LABEL_15:
  if (*&a7[*v14] != -1879048176)
  {
    v47 = a7;
    v49 = v189;
    v50 = v26;
    if (a8)
    {
      goto LABEL_22;
    }

LABEL_27:
    v192 = 0;
    goto LABEL_29;
  }

  v39 = [a7 descriptor];
  v40 = objc_alloc(MEMORY[0x277CD7268]);
  v41 = *(v39 + *MEMORY[0x277CD7440]);
  v42 = (v39 + *MEMORY[0x277CD7458]);
  v43 = *v42;
  v44 = v42[1];
  v45 = v42[3];
  v232 = v42[2];
  v233 = v45;
  v230 = v43;
  v231 = v44;
  v46 = [v40 initWithDataType:268435488 dimensions:v41 sizes:&v230];
  v47 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v46];
  v47[*v15] = *&a7[*v15];
  v47[*v15 + 1] = a7[*v15 + 1];
  v47[*v15 + 2] = a7[*v15 + 2];
  v47[*v15 + 3] = a7[*v15 + 3];
  v47[*v15 + 4] = a7[*v15 + 4];
  v47[*v15 + 5] = a7[*v15 + 5];
  v47[*v15 + 6] = a7[*v15 + 6];
  v47[*v15 + 7] = a7[*v15 + 7];
  v47[*v15 + 8] = a7[*v15 + 8];
  v47[*v15 + 9] = a7[*v15 + 9];
  v47[*v15 + 10] = a7[*v15 + 10];
  v47[*v15 + 11] = a7[*v15 + 11];
  v47[*v15 + 12] = a7[*v15 + 12];
  v47[*v15 + 13] = a7[*v15 + 13];
  v47[*v15 + 14] = a7[*v15 + 14];
  v47[*v15 + 15] = a7[*v15 + 15];
  v48 = v28[19];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a7 setReadCount:{objc_msgSend(a7, "readCount") + 1}];
  }

  *&v230 = a7;
  [v48 encodeToMPSCommandEncoder:v13 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:&v230 kernelDAGObject:{1), 0, v47, 0}];
  v14 = MEMORY[0x277CD73C8];
  v49 = v189;
  v50 = v26;
  if (!a8)
  {
    goto LABEL_27;
  }

LABEL_22:
  if (*&a8[*v14] == -1879048176)
  {
    v51 = [a8 descriptor];
    v52 = objc_alloc(MEMORY[0x277CD7268]);
    v53 = *(v51 + *MEMORY[0x277CD7440]);
    v54 = (v51 + *MEMORY[0x277CD7458]);
    v55 = *v54;
    v56 = v54[1];
    v57 = v54[3];
    v232 = v54[2];
    v233 = v57;
    v230 = v55;
    v231 = v56;
    v58 = [v52 initWithDataType:268435488 dimensions:v53 sizes:&v230];
    v59 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v58];
    *(v59 + *v15) = *&a8[*v15];
    *(v59 + *v15 + 1) = a8[*v15 + 1];
    *(v59 + *v15 + 2) = a8[*v15 + 2];
    *(v59 + *v15 + 3) = a8[*v15 + 3];
    *(v59 + *v15 + 4) = a8[*v15 + 4];
    *(v59 + *v15 + 5) = a8[*v15 + 5];
    *(v59 + *v15 + 6) = a8[*v15 + 6];
    *(v59 + *v15 + 7) = a8[*v15 + 7];
    *(v59 + *v15 + 8) = a8[*v15 + 8];
    *(v59 + *v15 + 9) = a8[*v15 + 9];
    *(v59 + *v15 + 10) = a8[*v15 + 10];
    *(v59 + *v15 + 11) = a8[*v15 + 11];
    *(v59 + *v15 + 12) = a8[*v15 + 12];
    *(v59 + *v15 + 13) = a8[*v15 + 13];
    *(v59 + *v15 + 14) = a8[*v15 + 14];
    v192 = v59;
    *(v59 + *v15 + 15) = a8[*v15 + 15];
    v60 = v28[19];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a8 setReadCount:{objc_msgSend(a8, "readCount") + 1}];
    }

    *&v230 = a8;
    [v60 encodeToMPSCommandEncoder:v13 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:&v230 kernelDAGObject:{1), 0, v192, 0}];
  }

  else
  {
    v192 = a8;
  }

LABEL_29:
  v61 = *v15;
  v62 = *&v50[v61];
  v63 = BYTE1(*&v50[v61]);
  v64 = *&v193[v61];
  v65 = BYTE1(*&v193[v61]);
  v66 = *MEMORY[0x277CD7410];
  if (v62 <= v63)
  {
    v77 = *&v50[v66];
    v78 = *&v50[v66 + 16];
    v79 = *&v50[v66 + 32];
    v228 = *&v50[v66 + 48];
    v227[2] = v79;
    v227[1] = v78;
    v227[0] = v77;
    v80 = *(v227 + (v63 & 0xF)) == *&v193[4 * (v65 & 0xF) + v66];
    v226[3] = v228;
    v226[2] = v79;
    v226[1] = v78;
    v226[0] = v77;
    v80 = v80 && *(v226 + (v62 & 0xF)) == 1;
    v67 = v80;
    v190 = a9;
    v191 = a3;
    if (v64 <= v65)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v67 = 1;
    v190 = a9;
    v191 = a3;
    if (*&v193[v61] <= v65)
    {
LABEL_31:
      v68 = v47;
      v69 = *&v193[v66];
      v70 = *&v193[v66 + 16];
      v71 = *&v193[v66 + 32];
      v72 = *&v193[v66 + 48];
      v225[3] = v72;
      v225[2] = v71;
      v225[1] = v70;
      v225[0] = v69;
      v73 = v50;
      v74 = v28;
      v75 = v13;
      if (*(v225 + (v64 & 0xF)) == *&v50[4 * (v62 & 0xF) + v66])
      {
        v224[0] = v69;
        v224[1] = v70;
        v224[2] = v71;
        v224[3] = v72;
        v76 = *(v224 + (v65 & 0xF)) == 1;
      }

      else
      {
        v76 = 0;
      }

      goto LABEL_42;
    }
  }

  v73 = v50;
  v68 = v47;
  v74 = v28;
  v75 = v13;
  v76 = 1;
LABEL_42:
  [v49 setM:*&v192[4 * (v192[v61 + 1] & 0xF) + v66]];
  v81 = MEMORY[0x277CD7410];
  v82 = MEMORY[0x277CD73D8];
  [v49 setN:*&v192[4 * (*&v192[*MEMORY[0x277CD73D8]] & 0xF) + *MEMORY[0x277CD7410]]];
  v83 = *v82;
  v84 = v73;
  [v49 setK:*&v73[4 * (*&v73[v83] & 0xF) + *v81]];
  [v49 setTransA:v67];
  [v49 setTransB:v76];
  [v74 alpha];
  *&v85 = v85;
  [v49 setAlpha:*&v85];
  v86 = v68;
  if (v68)
  {
    [v74 beta];
  }

  else
  {
    v87 = 0.0;
  }

  v88 = v193;
  [v49 setBeta:v87];
  makeStrideBytes();
  v89 = MEMORY[0x277CD73D8];
  v90 = *&v84[*MEMORY[0x277CD73D8]];
  v223[7] = v237;
  v223[6] = v236;
  v223[5] = v235;
  v223[4] = v234;
  v223[3] = v233;
  v223[2] = v232;
  v223[1] = v231;
  v223[0] = v230;
  v91 = *(v223 + (v90 & 0xF));
  v222[7] = v237;
  v222[6] = v236;
  v222[5] = v235;
  v222[4] = v234;
  v222[3] = v233;
  v222[2] = v232;
  v222[1] = v231;
  v222[0] = v230;
  v92 = *(v222 + (BYTE1(v90) & 0xF));
  v221[7] = v237;
  v221[6] = v236;
  v221[5] = v235;
  v221[4] = v234;
  v221[3] = v233;
  v221[2] = v232;
  v221[1] = v231;
  v221[0] = v230;
  v186 = *(v221 + (BYTE2(v90) & 0xF));
  v220[7] = v237;
  v220[6] = v236;
  v220[5] = v235;
  v220[4] = v234;
  v220[3] = v233;
  v220[2] = v232;
  v220[1] = v231;
  v220[0] = v230;
  v185 = *(v220 + (BYTE3(v90) & 0xF));
  makeStrideBytes();
  v93 = *&v193[*v89];
  v219[7] = v237;
  v219[6] = v236;
  v219[5] = v235;
  v219[4] = v234;
  v219[3] = v233;
  v219[2] = v232;
  v219[1] = v231;
  v219[0] = v230;
  v183 = *(v219 + (v93 & 0xF));
  v218[7] = v237;
  v218[6] = v236;
  v218[5] = v235;
  v218[4] = v234;
  v218[3] = v233;
  v218[2] = v232;
  v218[1] = v231;
  v218[0] = v230;
  v181 = *(v218 + (BYTE1(v93) & 0xF));
  v217[7] = v237;
  v217[6] = v236;
  v217[5] = v235;
  v217[4] = v234;
  v217[3] = v233;
  v217[2] = v232;
  v217[1] = v231;
  v217[0] = v230;
  v180 = *(v217 + (BYTE2(v93) & 0xF));
  v216[7] = v237;
  v216[6] = v236;
  v216[5] = v235;
  v216[4] = v234;
  v216[3] = v233;
  v216[2] = v232;
  v216[1] = v231;
  v216[0] = v230;
  v179 = *(v216 + (BYTE3(v93) & 0xF));
  makeStrideBytes();
  v94 = *v89;
  v95 = *&v192[v94];
  v215[7] = v237;
  v215[6] = v236;
  v215[5] = v235;
  v215[4] = v234;
  v215[3] = v233;
  v215[2] = v232;
  v215[1] = v231;
  v215[0] = v230;
  v96 = v95 & 0xF;
  v97 = *(v215 + v96);
  v214[7] = v237;
  v214[6] = v236;
  v214[5] = v235;
  v214[4] = v234;
  v214[3] = v233;
  v214[2] = v232;
  v214[1] = v231;
  v214[0] = v230;
  v98 = BYTE1(v95) & 0xF;
  v178 = *(v214 + v98);
  v213[7] = v237;
  v213[6] = v236;
  v213[5] = v235;
  v213[4] = v234;
  v213[3] = v233;
  v213[2] = v232;
  v213[1] = v231;
  v213[0] = v230;
  v99 = BYTE2(v95) & 0xF;
  v176 = *(v213 + v99);
  v212[7] = v237;
  v212[6] = v236;
  v212[5] = v235;
  v212[4] = v234;
  v212[3] = v233;
  v212[2] = v232;
  v212[1] = v231;
  v212[0] = v230;
  v100 = BYTE3(v95) & 0xF;
  v175 = *(v212 + v100);
  v101 = *MEMORY[0x277CD7418];
  v102 = *&v84[v101];
  v103 = *&v84[v101 + 16];
  v104 = *&v84[v101 + 48];
  v105 = *&v84[v94];
  v210 = *&v84[v101 + 32];
  v211 = v104;
  v209[0] = v102;
  v209[1] = v103;
  v172 = *(v209 + (v105 & 0xF));
  v208[2] = v210;
  v208[3] = v104;
  v208[0] = v102;
  v208[1] = v103;
  v170 = *(v208 + (BYTE1(v105) & 0xF));
  v207[2] = v210;
  v207[3] = v104;
  v207[0] = v102;
  v207[1] = v103;
  v168 = *(v207 + (BYTE2(v105) & 0xF));
  v206[2] = v210;
  v206[3] = v104;
  v206[0] = v102;
  v206[1] = v103;
  v166 = *(v206 + (BYTE3(v105) & 0xF));
  v106 = v190[1];
  v177 = *(v106 + 64);
  v107 = *&v193[v101];
  v108 = *&v193[v101 + 16];
  v109 = *&v193[v101 + 48];
  v110 = *&v193[v94];
  v204 = *&v193[v101 + 32];
  v205 = v109;
  v203[0] = v107;
  v203[1] = v108;
  v164 = *(v203 + (v110 & 0xF));
  v202[2] = v204;
  v202[3] = v109;
  v202[0] = v107;
  v202[1] = v108;
  v163 = *(v202 + (BYTE1(v110) & 0xF));
  v201[2] = v204;
  v201[3] = v109;
  v201[0] = v107;
  v201[1] = v108;
  v162 = *(v201 + (BYTE2(v110) & 0xF));
  v200[2] = v204;
  v200[3] = v109;
  v200[0] = v107;
  v200[1] = v108;
  v161 = *(v200 + (BYTE3(v110) & 0xF));
  v174 = *(v106 + 144);
  v111 = *&v192[v101];
  v112 = *&v192[v101 + 16];
  v113 = *&v192[v101 + 48];
  v198 = *&v192[v101 + 32];
  v199 = v113;
  v197[0] = v111;
  v197[1] = v112;
  v114 = *(v197 + v96);
  v196[2] = v198;
  v196[3] = v113;
  v196[0] = v111;
  v196[1] = v112;
  v160 = *(v196 + v98);
  v195[2] = v198;
  v195[3] = v113;
  v195[0] = v111;
  v195[1] = v112;
  v159 = *(v195 + v99);
  v194[2] = v198;
  v194[3] = v113;
  v194[0] = v111;
  v194[1] = v112;
  v158 = *(v194 + v100);
  v165 = v190[24];
  if (v86)
  {
    [v49 beta];
    if (v115 != 0.0)
    {
      v154 = v114;
      v155 = v97;
      v116 = *(v190[1] + 224);
      v117 = [v86 descriptor];
      v118 = [v117 numberOfDimensions];
      v119 = MEMORY[0x277CD73F8];
      v120 = MEMORY[0x277CD73F0];
      v121 = v92;
      if (v118 >= 4)
      {
        v86 = [v86 safeArrayViewWithCommandBuffer:v191 descriptor:v117 aliasing:1];
        *&v86[*v119] = v116;
        *&v86[*v120] = 3;
      }

      v122 = v190[24];
      v123 = v192;
      v124 = [v192 descriptor];
      if ([v124 numberOfDimensions] >= 4)
      {
        v123 = [v192 safeArrayViewWithCommandBuffer:v191 descriptor:v124 aliasing:1];
        *(v123 + *v119) = v122;
        *(v123 + *v120) = 3;
      }

      v229 = v86;
      [a4 encodeToCommandEncoder:v75 commandBuffer:v191 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] destinationArray:{"arrayWithObjects:count:", &v229, 1), v123}];
      v88 = v193;
      v92 = v121;
      v114 = v154;
      v97 = v155;
    }
  }

  v125 = *MEMORY[0x277CD7410];
  v126 = &v84[v125];
  v127 = *&v84[v125 + 4];
  v128 = *&v84[v125 + 8];
  v129 = *&v88[v125 + 8];
  if (v128 == 1)
  {
    v130 = 0;
    v131 = v92;
    if (v129 > 1)
    {
      v132 = MEMORY[0x277CD7420];
      v133 = 0;
      v128 = v129;
      goto LABEL_62;
    }
  }

  else
  {
    v131 = v92;
    if (v128)
    {
      v134 = v129 == 1;
    }

    else
    {
      v134 = 0;
    }

    v130 = v134;
  }

  v132 = MEMORY[0x277CD7420];
  v133 = *&v84[*MEMORY[0x277CD7420] + 16];
LABEL_62:
  v135 = v84;
  v157 = v91 * v172;
  v171 = v131 * v170;
  v173 = v185 * v166;
  v167 = v183 * v164;
  v169 = v186 * v168;
  v136 = v181 * v163;
  v137 = v97 * v114;
  v184 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v127 columns:*v126 matrices:v128 rowBytes:*&v135[*MEMORY[0x277CD7400]] matrixBytes:v133 dataType:*&v135[*MEMORY[0x277CD73C8]]];
  v138 = *MEMORY[0x277CD7410];
  v139 = *&v193[v138];
  if (v130)
  {
    v140 = 0;
    v141 = *&v84[v138 + 8];
  }

  else
  {
    v141 = *&v193[v138 + 8];
    v140 = *&v193[*v132 + 16];
  }

  v142 = MEMORY[0x277CD7400];
  v182 = v178 * v160 + v165 + v137 + v176 * v159;
  v143 = v136 + v174 + v167 + v180 * v162;
  v144 = MEMORY[0x277CD73C8];
  v145 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:DWORD1(v139) columns:v139 matrices:v141 rowBytes:*&v193[*MEMORY[0x277CD7400]] matrixBytes:v140 dataType:*&v193[*MEMORY[0x277CD73C8]]];
  v146 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:*&v192[*MEMORY[0x277CD7410] + 4] columns:*&v192[*MEMORY[0x277CD7410]] matrices:*&v192[*MEMORY[0x277CD7410] + 8] rowBytes:*&v192[*v142] matrixBytes:*&v192[*v132 + 16] dataType:*&v192[*v144]];
  v147 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:objc_msgSend(v135 offset:"buffer") descriptor:{v171 + v177 + v157 + v169 + v173, v184}];
  v148 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:objc_msgSend(v193 offset:"buffer") descriptor:{v143 + v179 * v161, v145}];
  v149 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:objc_msgSend(v192 offset:"buffer") descriptor:{v182 + v175 * v158, v146}];
  [v189 encodeToCommandBuffer:v191 encoder:a2 leftMatrix:v147 rightMatrix:v148 resultMatrix:v149];
  v150 = *v144;
  if (*&v192[v150] == 268435488)
  {
    v151 = v190[26];
    v152 = *(v151 + v150);
    if (v152 > 301989895)
    {
      if (v152 != 335544328 && v152 != 301989896)
      {
        goto LABEL_75;
      }
    }

    else if (v152 != -1879048176 && v152 != 268435464)
    {
      goto LABEL_75;
    }

    v153 = a1[19];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v192 setReadCount:{objc_msgSend(v192, "readCount") + 1}];
    }

    *&v230 = v192;
    [v153 encodeToMPSCommandEncoder:a2 commandBuffer:v191 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:&v230 kernelDAGObject:{1), 0, v151, 0}];
  }

LABEL_75:
}

uint64_t EncodeMatrixMultiply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7);
  v17 = v16;
  v18 = v15;
  v19 = v14;
  v20 = v9;
  v303 = *MEMORY[0x277D85DE8];
  v21 = *(v9 + *MEMORY[0x277CD7350]);
  v22 = *(v9 + 200);
  v23 = *MEMORY[0x277CD7410];
  v24 = *(v15 + v23);
  v25 = *(v15 + v23 + 16);
  v26 = MEMORY[0x277CD73D8];
  v27 = *(v15 + v23 + 32);
  v28 = *MEMORY[0x277CD73D8];
  v29 = *(v15 + v28);
  v286 = *(v15 + v23 + 48);
  v285[2] = v27;
  v285[1] = v25;
  v285[0] = v24;
  v30 = *(v285 + (BYTE1(v29) & 0xF));
  v284[3] = v286;
  v284[2] = v27;
  v284[1] = v25;
  v284[0] = v24;
  v31 = *(v284 + (v29 & 0xF));
  if (v22 && (*(v22 + 30) & 1) != 0)
  {
    v32 = 1;
    goto LABEL_60;
  }

  if (v30 >> 10 > 6 || v31 >> 10 >= 7)
  {
    v34 = *(v12 + v23 + 4 * (*(v12 + v28) & 0xF));
    v35 = v34 == 18816 || v34 == 7168;
    if (v35)
    {
      v36 = v30 >= 8;
      goto LABEL_57;
    }
  }

  v37 = *MEMORY[0x277CD73C8];
  v38 = *(v12 + v37);
  if (v38 == 268435488)
  {
    v35 = *(v13 + v37) == 268435488;
    v39 = 3;
    if (v35)
    {
      v39 = 4;
    }
  }

  else
  {
    v39 = 3;
  }

  v40 = 9;
  if (v31 * v30 * v39 < *(v21 + 1480) << 12)
  {
    v40 = 15;
  }

  if (*(v21 + 1472) > 10)
  {
    v44 = *(v13 + v23 + 4 * (WORD1(*(v13 + v28)) & 0xF));
    if (*(v12 + v28) <= BYTE1(*(v12 + v28)) && v44 == 1)
    {
      v46 = *(v12 + v23 + 4 * (WORD1(*(v12 + v28)) & 0xF));
    }

    else
    {
      v46 = 1;
    }

    v30 = v46 * v30;
    v47 = v31 * v44;
    if (*(v13 + v28) <= BYTE1(*(v13 + v28)))
    {
      v47 = *(v284 + (v29 & 0xF));
    }

    if (*(v12 + v23 + 4 * (WORD1(*(v12 + v28)) & 0xF)) == 1)
    {
      v31 = v47;
    }

    v43 = v40;
  }

  else
  {
    v41 = 15;
    if ((v31 & 3) == 0)
    {
      v41 = v40;
    }

    if (v30)
    {
      v42 = 15;
    }

    else
    {
      v42 = v40;
    }

    if (v38 == 268435472)
    {
      v40 = v42;
      v43 = 15;
    }

    else
    {
      v43 = v41;
    }
  }

  v48 = v30 > v40 && v31 > v43;
  v49 = *(v12 + v28 + 3) & 0xF;
  LODWORD(v50) = *(v12 + v23 + 4 * v49);
  v51 = (v13 + v23);
  v52 = *v51;
  v53 = v51[1];
  v54 = v51[2];
  v55 = v51[3];
  v283[3] = v55;
  v283[2] = v54;
  v283[1] = v53;
  v283[0] = v52;
  v56 = *(v283 + v49);
  v32 = !v48;
  if (v50 <= v56)
  {
    v50 = v56;
  }

  else
  {
    v50 = v50;
  }

  v57 = v30 * v50;
  if (v32 == 1 && v57 > v40)
  {
    v59 = *(v13 + v28);
    v282[0] = v52;
    v282[1] = v53;
    v282[2] = v54;
    v282[3] = v55;
    v36 = *(v282 + (v59 & 0xF)) >= 0x81u;
LABEL_57:
    v32 = !v36;
  }

LABEL_60:
  if (!v14 && v32)
  {
    *a9 = 1;

    return EncodeMatrixVectorMultiply(v20, v10, v11, v12, v13, v15, v16);
  }

  v61 = v10;
  v62 = v13;
  *a9 = 0;
  v63 = v12;
  makeStrideBytes();
  v64 = *&v63[*v26];
  v281[7] = v300;
  v281[6] = v299;
  v281[5] = v298;
  v281[4] = v297;
  v281[3] = v296;
  v281[2] = v295;
  v281[1] = v294;
  v281[0] = v293;
  v65 = *(v281 + (v64 & 0xF));
  v280[7] = v300;
  v280[6] = v299;
  v280[5] = v298;
  v280[4] = v297;
  v280[3] = v296;
  v280[2] = v295;
  v280[1] = v294;
  v280[0] = v293;
  v224 = v65;
  *&v66 = v65;
  v210 = *(v280 + (BYTE1(v64) & 0xF));
  *(&v66 + 1) = v210;
  v302[0] = v66;
  v279[7] = v300;
  v279[6] = v299;
  v279[5] = v298;
  v279[4] = v297;
  v279[3] = v296;
  v279[2] = v295;
  v279[1] = v294;
  v279[0] = v293;
  v231 = *(v279 + (BYTE2(v64) & 0xF));
  *&v66 = v231;
  v278[7] = v300;
  v278[6] = v299;
  v278[5] = v298;
  v278[4] = v297;
  v278[3] = v296;
  v278[2] = v295;
  v278[1] = v294;
  v278[0] = v293;
  v219 = *(v278 + (BYTE3(v64) & 0xF));
  *(&v66 + 1) = v219;
  v302[1] = v66;
  makeStrideBytes();
  v233 = v62;
  v67 = *&v62[*v26];
  v277[7] = v300;
  v277[6] = v299;
  v277[5] = v298;
  v277[4] = v297;
  v277[3] = v296;
  v277[2] = v295;
  v277[1] = v294;
  v277[0] = v293;
  v68 = *(v277 + (v67 & 0xF));
  v276[7] = v300;
  v276[6] = v299;
  v276[5] = v298;
  v276[4] = v297;
  v276[3] = v296;
  v276[2] = v295;
  v276[1] = v294;
  v276[0] = v293;
  v69 = *(v276 + (BYTE1(v67) & 0xF));
  v214 = v68;
  *&v70 = v68;
  *(&v70 + 1) = v69;
  v301[0] = v70;
  v275[7] = v300;
  v275[6] = v299;
  v275[5] = v298;
  v275[4] = v297;
  v275[3] = v296;
  v275[2] = v295;
  v275[1] = v294;
  v275[0] = v293;
  v230 = *(v275 + (BYTE2(v67) & 0xF));
  *&v70 = v230;
  v274[7] = v300;
  v274[6] = v299;
  v274[5] = v298;
  v274[4] = v297;
  v274[3] = v296;
  v274[2] = v295;
  v274[1] = v294;
  v274[0] = v293;
  v216 = *(v274 + (BYTE3(v67) & 0xF));
  *(&v70 + 1) = v216;
  v301[1] = v70;
  v232 = v19;
  v234 = v63;
  v221 = v61;
  if (v19)
  {
    makeStrideBytes();
    v71 = *&v19[*v26];
    v273[7] = v300;
    v273[6] = v299;
    v273[5] = v298;
    v273[4] = v297;
    v273[3] = v296;
    v273[2] = v295;
    v273[1] = v294;
    v273[0] = v293;
    v212 = *(v273 + (v71 & 0xF));
    v272[7] = v300;
    v272[6] = v299;
    v272[5] = v298;
    v272[4] = v297;
    v272[3] = v296;
    v272[2] = v295;
    v272[1] = v294;
    v272[0] = v293;
    v206 = *(v272 + (BYTE1(v71) & 0xF));
    v271[7] = v300;
    v271[6] = v299;
    v271[5] = v298;
    v271[4] = v297;
    v271[3] = v296;
    v271[2] = v295;
    v271[1] = v294;
    v271[0] = v293;
    v226 = *(v271 + (BYTE2(v71) & 0xF));
    v270[7] = v300;
    v270[6] = v299;
    v270[5] = v298;
    v270[4] = v297;
    v270[3] = v296;
    v270[2] = v295;
    v270[1] = v294;
    v270[0] = v293;
    v204 = *(v270 + (BYTE3(v71) & 0xF));
  }

  makeStrideBytes();
  v72 = *&v18[*v26];
  v269[7] = v300;
  v269[6] = v299;
  v269[5] = v298;
  v269[4] = v297;
  v269[3] = v296;
  v269[2] = v295;
  v269[1] = v294;
  v269[0] = v293;
  v222 = *(v269 + (v72 & 0xF));
  v268[7] = v300;
  v268[6] = v299;
  v268[5] = v298;
  v268[4] = v297;
  v268[3] = v296;
  v268[2] = v295;
  v268[1] = v294;
  v268[0] = v293;
  v228 = *(v268 + (BYTE1(v72) & 0xF));
  v267[7] = v300;
  v267[6] = v299;
  v267[5] = v298;
  v267[4] = v297;
  v267[3] = v296;
  v267[2] = v295;
  v267[1] = v294;
  v267[0] = v293;
  v229 = *(v267 + (BYTE2(v72) & 0xF));
  v266[7] = v300;
  v266[6] = v299;
  v266[5] = v298;
  v266[4] = v297;
  v266[3] = v296;
  v266[2] = v295;
  v266[1] = v294;
  v266[0] = v293;
  v218 = *(v266 + (BYTE3(v72) & 0xF));
  v73 = [*(v17 + 232) graph];
  v74 = *(v73 + 64);
  v75 = *v74;
  v76 = v74[1];
  v227 = v20;
  if (*v74 == v76)
  {
    v80 = 0;
    v85 = v19;
    v86 = v233;
    v84 = v234;
  }

  else
  {
    v77 = v73;
    v78 = v18;
    v79 = 0;
    v80 = -1;
    v81 = -1;
    do
    {
      v82 = *v75;
      if (v82 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v77) + 32))
      {
        v80 = v79;
      }

      v83 = *v75;
      if (v83 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v77) + 32))
      {
        v81 = v79;
      }

      if (MPSKernelDAG::GetCoreOpNumberOfInputs(v77) == 3)
      {
        MPSKernelDAG::GetCoreOpInputAtIndex(v77);
      }

      ++v79;
      ++v75;
    }

    while (v75 != v76);
    v84 = v234;
    if (v80 == -1)
    {
      v80 = 0;
      v18 = v78;
      v85 = v232;
      v20 = v227;
      v86 = v233;
      v26 = MEMORY[0x277CD73D8];
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_82;
      }

      goto LABEL_81;
    }

    v18 = v78;
    v85 = v232;
    v20 = v227;
    v86 = v233;
    v26 = MEMORY[0x277CD73D8];
    if (v81 != -1)
    {
      goto LABEL_83;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
LABEL_81:
    MTLReportFailure();
  }

LABEL_82:
  v81 = 0;
LABEL_83:
  v87 = *MEMORY[0x277CD7418];
  v88 = *&v84[v87];
  v89 = *&v84[v87 + 16];
  v90 = *&v84[v87 + 32];
  v91 = *v26;
  v92 = *&v84[v91];
  v93 = v92;
  v260 = *&v84[v87 + 48];
  v259[2] = v90;
  v259[1] = v89;
  v259[0] = v88;
  v94 = *(v259 + (v92 & 0xF));
  v95 = BYTE1(v92);
  v258[3] = v260;
  v258[2] = v90;
  v258[1] = v89;
  v258[0] = v88;
  v96 = *(v258 + (BYTE1(v92) & 0xF));
  v257[3] = v260;
  v257[2] = v90;
  v257[1] = v89;
  v257[0] = v88;
  v97 = *(v257 + (BYTE2(v92) & 0xF));
  v256[3] = v260;
  v256[2] = v90;
  v256[1] = v89;
  v256[0] = v88;
  v98 = *(v256 + (BYTE3(v92) & 0xF));
  v99 = *(v17 + 8);
  v100 = *(v99 + 80 * v80 + 64);
  v101 = *&v86[v87];
  v102 = *&v86[v87 + 16];
  v103 = *&v86[v87 + 32];
  v104 = *&v86[v91];
  v105 = v104;
  v265 = *&v86[v87 + 48];
  v264[2] = v103;
  v264[1] = v102;
  v264[0] = v101;
  v106 = *(v264 + (v104 & 0xF));
  v107 = BYTE1(v104);
  v263[3] = v265;
  v263[2] = v103;
  v263[1] = v102;
  v263[0] = v101;
  v108 = *(v263 + (BYTE1(v104) & 0xF));
  v262[3] = v265;
  v262[2] = v103;
  v262[1] = v102;
  v262[0] = v101;
  v109 = *(v262 + (BYTE2(v104) & 0xF));
  v261[3] = v265;
  v261[2] = v103;
  v261[1] = v102;
  v261[0] = v101;
  v208 = *(v261 + (BYTE3(v104) & 0xF));
  v110 = *(v99 + 80 * v81 + 64);
  if (v85)
  {
    v111 = *&v85[v87];
    v112 = *&v85[v87 + 16];
    v113 = *&v85[v87 + 32];
    v114 = *&v85[v91];
    v255 = *&v85[v87 + 48];
    v254[2] = v113;
    v254[1] = v112;
    v254[0] = v111;
    v115 = *(v254 + (v114 & 0xF));
    v253[3] = v255;
    v253[2] = v113;
    v253[0] = v111;
    v253[1] = v112;
    v116 = *(v253 + (BYTE1(v114) & 0xF));
    v252[2] = v113;
    v252[3] = v255;
    v252[0] = v111;
    v252[1] = v112;
    v117 = *(v252 + (BYTE2(v114) & 0xF));
    v251[2] = v113;
    v251[3] = v255;
    v251[0] = v111;
    v251[1] = v112;
    v118 = *(v99 + 224) + v206 * v116 + v212 * v115 + v226 * v117 + v204 * *(v251 + (BYTE3(v114) & 0xF));
  }

  else
  {
    v118 = 0;
  }

  v119 = &v18[v87];
  v120 = *v119;
  v121 = v119[1];
  v122 = v119[3];
  v123 = *&v18[v91];
  v249 = v119[2];
  v250 = v122;
  v248[0] = v120;
  v248[1] = v121;
  v124 = *(v248 + (v123 & 0xF));
  v247[2] = v249;
  v247[3] = v122;
  v247[0] = v120;
  v247[1] = v121;
  v125 = *(v247 + (BYTE1(v123) & 0xF));
  v246[2] = v249;
  v246[3] = v122;
  v246[0] = v120;
  v246[1] = v121;
  v126 = *(v246 + (BYTE2(v123) & 0xF));
  v245[2] = v249;
  v245[3] = v122;
  v245[0] = v120;
  v245[1] = v121;
  v127 = *(v245 + (BYTE3(v123) & 0xF));
  v128 = *(v17 + 192);
  if (v93 <= v95)
  {
    v137 = *MEMORY[0x277CD7410];
    v138 = *&v84[v137];
    v139 = *&v84[v137 + 16];
    v140 = *&v84[v137 + 48];
    v243 = *&v84[v137 + 32];
    v244 = v140;
    v242[0] = v138;
    v242[1] = v139;
    v35 = *(v242 + (v95 & 0xF)) == *&v86[4 * (v107 & 0xF) + v137];
    v241[2] = v243;
    v241[3] = v140;
    v241[0] = v138;
    v241[1] = v139;
    v129 = v35 && *(v241 + (v93 & 0xF)) == 1;
    v130 = v210;
    if (v105 <= v107)
    {
      goto LABEL_88;
    }

LABEL_97:
    v136 = 1;
    goto LABEL_99;
  }

  v129 = 1;
  v130 = v210;
  if (v105 > v107)
  {
    goto LABEL_97;
  }

LABEL_88:
  v131 = *MEMORY[0x277CD7410];
  v132 = *&v86[v131];
  v133 = *&v86[v131 + 16];
  v134 = *&v86[v131 + 32];
  v135 = *&v86[v131 + 48];
  v240[2] = v134;
  v240[3] = v135;
  v240[0] = v132;
  v240[1] = v133;
  if (*(v240 + (v105 & 0xF)) == *&v84[4 * (v93 & 0xF) + v131])
  {
    v239[0] = v132;
    v239[1] = v133;
    v239[2] = v134;
    v239[3] = v135;
    v136 = *(v239 + (v107 & 0xF)) == 1;
  }

  else
  {
    v136 = 0;
  }

LABEL_99:
  v142 = *MEMORY[0x277CD73C8];
  v143 = *&v86[v142];
  if (v143 > 285212703)
  {
    if (v143 <= 536870915)
    {
      if (v143 > 301989895)
      {
        if (v143 == 301989896)
        {
          v145 = 512;
          v144 = v224;
          goto LABEL_145;
        }

        v144 = v224;
        if (v143 == 335544328)
        {
          v145 = 544;
          goto LABEL_145;
        }
      }

      else
      {
        if (v143 == 285212704)
        {
          v145 = 416;
          v144 = v224;
          goto LABEL_145;
        }

        v144 = v224;
        if (v143 == 285212736)
        {
          v145 = 448;
          goto LABEL_145;
        }
      }
    }

    else if (v143 <= 536870927)
    {
      if (v143 == 536870916)
      {
        v145 = 0;
        v144 = v224;
        goto LABEL_145;
      }

      v144 = v224;
      if (v143 == 536870920)
      {
        v145 = 32;
        goto LABEL_145;
      }
    }

    else
    {
      if (v143 == 536870928)
      {
        v145 = 64;
        v144 = v224;
        goto LABEL_145;
      }

      if (v143 == 536870944)
      {
        v145 = 96;
        v144 = v224;
        goto LABEL_145;
      }

      v144 = v224;
      if (v143 == 536870976)
      {
        v145 = 128;
        goto LABEL_145;
      }
    }
  }

  else if (v143 <= 31)
  {
    if (v143 > 7)
    {
      v144 = v224;
      if (v143 == 8)
      {
        v145 = 192;
        goto LABEL_145;
      }

      if (v143 == 16)
      {
        v145 = 224;
        goto LABEL_145;
      }
    }

    else
    {
      if (v143 == -1879048176)
      {
        v145 = 384;
        v144 = v224;
        goto LABEL_145;
      }

      v144 = v224;
      if (v143 == 4)
      {
        v145 = 160;
        goto LABEL_145;
      }
    }
  }

  else if (v143 <= 268435463)
  {
    v144 = v224;
    if (v143 == 32)
    {
      v145 = 256;
      goto LABEL_145;
    }

    if (v143 == 64)
    {
      v145 = 288;
      goto LABEL_145;
    }
  }

  else
  {
    if (v143 == 268435464)
    {
      v145 = 480;
      v144 = v224;
      goto LABEL_145;
    }

    if (v143 == 268435472)
    {
      v145 = 320;
      v144 = v224;
      goto LABEL_145;
    }

    v144 = v224;
    if (v143 == 268435488)
    {
      v145 = 352;
      goto LABEL_145;
    }
  }

  v145 = 576;
LABEL_145:
  v146 = v100 + v130 * v96;
  v147 = v110 + v69 * v108;
  v148 = *&v84[v142];
  if (v148 > 285212703)
  {
    if (v148 <= 536870915)
    {
      if (v148 > 301989895)
      {
        if (v148 == 301989896)
        {
          v149 = 0x4000;
          goto LABEL_189;
        }

        if (v148 == 335544328)
        {
          v149 = 17408;
          goto LABEL_189;
        }
      }

      else
      {
        if (v148 == 285212704)
        {
          v149 = 13312;
          goto LABEL_189;
        }

        if (v148 == 285212736)
        {
          v149 = 14336;
          goto LABEL_189;
        }
      }
    }

    else if (v148 <= 536870927)
    {
      if (v148 == 536870916)
      {
        v149 = 0;
        goto LABEL_189;
      }

      if (v148 == 536870920)
      {
        v149 = 1024;
        goto LABEL_189;
      }
    }

    else
    {
      switch(v148)
      {
        case 536870928:
          v149 = 2048;
          goto LABEL_189;
        case 536870944:
          v149 = 3072;
          goto LABEL_189;
        case 536870976:
          v149 = 4096;
          goto LABEL_189;
      }
    }
  }

  else if (v148 <= 31)
  {
    if (v148 > 7)
    {
      if (v148 == 8)
      {
        v149 = 6144;
        goto LABEL_189;
      }

      if (v148 == 16)
      {
        v149 = 7168;
        goto LABEL_189;
      }
    }

    else
    {
      if (v148 == -1879048176)
      {
        v149 = 12288;
        goto LABEL_189;
      }

      if (v148 == 4)
      {
        v149 = 5120;
        goto LABEL_189;
      }
    }
  }

  else if (v148 <= 268435463)
  {
    if (v148 == 32)
    {
      v149 = 0x2000;
      goto LABEL_189;
    }

    if (v148 == 64)
    {
      v149 = 9216;
      goto LABEL_189;
    }
  }

  else
  {
    switch(v148)
    {
      case 268435464:
        v149 = 15360;
        goto LABEL_189;
      case 268435472:
        v149 = 10240;
        goto LABEL_189;
      case 268435488:
        v149 = 11264;
        goto LABEL_189;
    }
  }

  v149 = 18432;
LABEL_189:
  v150 = v128 + v228 * v125;
  v151 = v146 + v144 * v94;
  v152 = v147 + v214 * v106;
  v153 = *&v18[v142];
  v205 = v118;
  v213 = v127;
  v207 = v17;
  if (v153 > 285212703)
  {
    if (v153 <= 536870915)
    {
      if (v153 > 301989895)
      {
        v154 = v126;
        v155 = v136;
        if (v153 == 301989896)
        {
          v157 = v129;
          v158 = 16;
          v156 = v222;
          goto LABEL_233;
        }

        v156 = v222;
        if (v153 == 335544328)
        {
          v157 = v129;
          v158 = 17;
          goto LABEL_233;
        }
      }

      else
      {
        v154 = v126;
        v155 = v136;
        if (v153 == 285212704)
        {
          v157 = v129;
          v158 = 13;
          v156 = v222;
          goto LABEL_233;
        }

        v156 = v222;
        if (v153 == 285212736)
        {
          v157 = v129;
          v158 = 14;
          goto LABEL_233;
        }
      }
    }

    else if (v153 <= 536870927)
    {
      v154 = v126;
      v155 = v136;
      if (v153 == 536870916)
      {
        v157 = v129;
        v158 = 0;
        v156 = v222;
        goto LABEL_233;
      }

      v156 = v222;
      if (v153 == 536870920)
      {
        v157 = v129;
        v158 = 1;
        goto LABEL_233;
      }
    }

    else
    {
      if (v153 == 536870928)
      {
        v154 = v126;
        v155 = v136;
        v157 = v129;
        v158 = 2;
        v156 = v222;
        goto LABEL_233;
      }

      v154 = v126;
      v155 = v136;
      if (v153 == 536870944)
      {
        v157 = v129;
        v158 = 3;
        v156 = v222;
        goto LABEL_233;
      }

      v156 = v222;
      if (v153 == 536870976)
      {
        v157 = v129;
        v158 = 4;
        goto LABEL_233;
      }
    }

LABEL_232:
    v157 = v129;
    v158 = 18;
    goto LABEL_233;
  }

  if (v153 <= 31)
  {
    if (v153 > 7)
    {
      v156 = v222;
      v154 = v126;
      v155 = v136;
      if (v153 == 8)
      {
        v157 = v129;
        v158 = 6;
        goto LABEL_233;
      }

      if (v153 == 16)
      {
        v157 = v129;
        v158 = 7;
        goto LABEL_233;
      }
    }

    else
    {
      v154 = v126;
      v155 = v136;
      if (v153 == -1879048176)
      {
        v157 = v129;
        v158 = 12;
        v156 = v222;
        goto LABEL_233;
      }

      v156 = v222;
      if (v153 == 4)
      {
        v157 = v129;
        v158 = 5;
        goto LABEL_233;
      }
    }

    goto LABEL_232;
  }

  if (v153 <= 268435463)
  {
    v156 = v222;
    v154 = v126;
    v155 = v136;
    if (v153 == 32)
    {
      v157 = v129;
      v158 = 8;
      goto LABEL_233;
    }

    if (v153 == 64)
    {
      v157 = v129;
      v158 = 9;
      goto LABEL_233;
    }

    goto LABEL_232;
  }

  if (v153 == 268435464)
  {
    v154 = v126;
    v155 = v136;
    v157 = v129;
    v158 = 15;
    v156 = v222;
    goto LABEL_233;
  }

  v154 = v126;
  v155 = v136;
  if (v153 == 268435472)
  {
    v157 = v129;
    v158 = 10;
    v156 = v222;
    goto LABEL_233;
  }

  v156 = v222;
  if (v153 != 268435488)
  {
    goto LABEL_232;
  }

  v157 = v129;
  v158 = 11;
LABEL_233:
  v159 = v150 + v156 * v124;
  v160 = v151 + v231 * v97;
  v161 = v149 | v145 | v158;
  v162 = v152 + v230 * v109;
  if (v85)
  {
    [v20 beta];
    if (v163 == 0.0)
    {
      v164 = 0;
    }

    else
    {
      v164 = 2;
    }
  }

  else
  {
    v164 = 0;
  }

  v215 = v159 + v229 * v154;
  v225 = v160 + v219 * v98;
  v223 = v162 + v216 * v208;
  v165 = v157;
  v166 = 2;
  if (v157)
  {
    v166 = 3;
  }

  v288[4] = -1;
  v288[3] = -1;
  v288[5] = v164;
  v288[6] = v161;
  v289 = 0uLL;
  v290 = 0uLL;
  if (v155)
  {
    v167 = v166;
  }

  else
  {
    v167 = v157;
  }

  v168 = [*(v207 + 16) count];
  v169 = *&v20[*MEMORY[0x277CD7360]];
  v291 = v168 | ((*(v207 + 112) == 0) << 8) | 0x10000;
  v292 = 0;
  v202 = v169;
  v203 = *&v20[*MEMORY[0x277CD7368]];
  MPSLibrary::CreateUberShaderKey();
  if ((*(*&v20[*MEMORY[0x277CD7350]] + 1477) & 4) != 0)
  {
    v170 = (&threadGroupSizeInfoListApple + 32 * v167);
  }

  else
  {
    v170 = (&threadGroupSizeInfoListNonApple + 32 * v167);
  }

  v220 = *v170;
  v217 = v170[1];
  v209 = v170[2];
  v211 = v170[3];
  v171 = *MEMORY[0x277CD7410];
  v172 = *&v18[v171];
  v173 = *&v18[v171 + 16];
  v174 = *&v18[v171 + 48];
  v175 = *MEMORY[0x277CD73D8];
  v176 = v18;
  v177 = *&v18[v175];
  v236 = *&v18[v171 + 32];
  v237 = v174;
  v235[0] = v172;
  v235[1] = v173;
  v178 = *(v235 + (v177 & 0xF));
  v238[2] = v236;
  v238[3] = v174;
  v238[0] = v172;
  v238[1] = v173;
  v179 = *(v238 + (BYTE1(v177) & 0xF));
  v180 = *&v234[4 * (*&v234[v175] & 0xF) + v171];
  v181 = v20;
  v182 = *(v301 + !v155);
  v183 = *(v302 + (v165 ^ 1));
  if (v232)
  {
    if (*&v232[v171 + 4] == 1)
    {
      v184 = 0;
    }

    else
    {
      v184 = v206;
    }

    [v181 alpha];
    v186 = v185;
    [v181 beta];
    v188 = v187;
  }

  else
  {
    [v181 alpha];
    v186 = v189;
    v184 = 0;
    v188 = 0.0;
  }

  *&v190 = v186;
  DWORD2(v296) = 0;
  *&v293 = __PAIR64__(v179, v178);
  *(&v293 + 1) = __PAIR64__(v182, v180);
  *&v294 = __PAIR64__(v184, v183);
  *(&v294 + 1) = __PAIR64__(v190, v228);
  *&v295 = v188;
  v191 = *MEMORY[0x277CD7410];
  v192 = *MEMORY[0x277CD73D8];
  v193 = *&v176[4 * (v176[v192 + 2] & 0xF) + v191];
  DWORD1(v295) = *&v176[4 * (v176[v192 + 2] & 0xF) + v191];
  if (*&v233[4 * (v233[v192 + 2] & 0xF) + v191] == 1)
  {
    v194 = 0;
  }

  else
  {
    v194 = v230;
  }

  DWORD2(v295) = v194;
  if (*&v234[4 * (v234[v192 + 2] & 0xF) + v191] == 1)
  {
    v195 = 0;
  }

  else
  {
    v195 = v231;
  }

  HIDWORD(v295) = v195;
  if (v232)
  {
    v196 = &v232[v191];
    if (*(v196 + 2) == 1)
    {
      v197 = 0;
    }

    else
    {
      v197 = v226;
    }

    v198 = *v196 != 1;
    v199 = v221;
  }

  else
  {
    v198 = 1;
    v199 = v221;
    v197 = v226;
  }

  *&v296 = __PAIR64__(v229, v197);
  *(&v296 + 1) = v198 | 0x100000000;
  v297 = 0u;
  v298 = 0u;
  *&v299 = 0;
  v200 = (v211 * v217 + v179 - 1) / (v211 * v217);
  [v199 setComputePipelineState:MPSLibrary::GetPipelineStateForMPSKey()];
  [v199 setBuffer:objc_msgSend(v233 offset:"buffer") atIndex:{v223, 0}];
  [v199 setBuffer:objc_msgSend(v234 offset:"buffer") atIndex:{v225, 1}];
  if (v232)
  {
    [v227 beta];
    if (v201 != 0.0)
    {
      [v199 setBuffer:objc_msgSend(v232 offset:"buffer") atIndex:{v205, 2}];
    }
  }

  [v199 setBuffer:objc_msgSend(v176 offset:"buffer") atIndex:{v215 + v218 * v213, 3}];
  objc_msgSend_setBytes_length_atIndex_(v199);
  v288[0] = (v209 * v220 + v178 - 1) / (v209 * v220);
  v288[1] = v200;
  v288[2] = v193;
  v287[0] = v220;
  v287[1] = v217;
  v287[2] = 1;
  [v199 dispatchThreadgroups:v288 threadsPerThreadgroup:v287];
  return MPSLibrary::ReleaseMPSKey();
}
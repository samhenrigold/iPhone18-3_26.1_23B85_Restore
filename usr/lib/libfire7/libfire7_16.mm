uint64_t BlueFin::GlMeSrdEstCNo::GetCNoEstimate(uint64_t a1, float *a2, float *a3, float a4, float a5, float a6, float a7, float a8, float a9, float a10)
{
  v10 = floorf((a6 / a7) + 0.5);
  *a2 = a6;
  a2[1] = v10;
  v11 = floorf((a6 / a4) + 0.5);
  a2[2] = v11;
  a2[3] = v11 * a5;
  v12 = (v10 * a9) - a8;
  v13 = v12 - (v11 * a5);
  if (v13 <= 0.0)
  {
    v13 = 0.000000001;
  }

  a2[4] = v12;
  a2[5] = v13;
  v14 = ((v13 * a4) * a4) / (a6 * a6);
  a2[6] = a5;
  a2[7] = v14;
  v15 = v14 + a5;
  a2[8] = v15;
  v16 = *(a1 + 12);
  if (v16 == 2)
  {
    v17 = (*(a1 + 16) + 1.0) * a5;
    *(a1 + 8) = v17;
  }

  else
  {
    v17 = *(a1 + 8);
  }

  *a3 = a10;
  v18 = ((1.0 - a10) * v15) + (a10 * v17);
  a3[2] = v18;
  if (!v16)
  {
    v18 = a2[8];
  }

  *(a1 + 8) = v18;
  v19 = v18 - a5;
  if (v19 <= 0.0)
  {
    v19 = 0.000000001;
  }

  a3[1] = v19;
  if (v19 <= 0.0)
  {
    DeviceFaultNotify("glmesrd_estcno.cpp", 471, "GetCNoEstimate", "closedLpMsmt.fCaEpochCohSigPwr > 0.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_estcno.cpp", 471, "closedLpMsmt.fCaEpochCohSigPwr > 0.0");
  }

  a3[3] = v19 / a5;
  return 1;
}

float BlueFin::GlMeSrdCNoResults::isGarbage(BlueFin::GlMeSrdCNoResults *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return result;
  }

  result = *(this + 2);
  if (result == 3.4028e38)
  {
    return result;
  }

  result = *(this + 3);
  if (result == 3.4028e38)
  {
    return result;
  }

  if (v1 > 2)
  {
    if (v1 != 3 && v1 != 4)
    {
      return result;
    }

    return *(this + 4);
  }

  if (v1 == 1)
  {
    return *(this + 4);
  }

  if (v1 == 2)
  {
    return *(this + 4);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdAsicConfig::GetMIAdjustmentLimits(uint64_t this, __int16 *a2, __int16 *a3)
{
  *a2 = *(this + 1476);
  *a3 = *(this + 1478);
  return this;
}

uint64_t BlueFin::GlMeSrdEstPkFit::CheckForUsableCorrvec(BlueFin::GlMeSrdEstPkFit *this, const float *a2, int a3, unsigned int a4, int a5, char *a6, signed __int8 *a7, uint64_t a8, const BlueFin::GlMeTrkCvecTapConfig *a9, BOOL a10)
{
  v37[1] = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v10 = a4;
  }

  else
  {
    v10 = a2;
  }

  v11 = (this + 24);
  v12 = (this + 12);
  if (a2 >= 7 && a8)
  {
    v13 = this;
    if (*a8 == 7)
    {
      if (v10 >= 9)
      {
        v33 = "ucVecLenExcludingVeryEarlyDelay <= _DIM(afCorrVecReordered)";
        DeviceFaultNotify("glmesrd_pkfit.cpp", 68, "CheckForUsableCorrvec", "ucVecLenExcludingVeryEarlyDelay <= _DIM(afCorrVecReordered)");
        v34 = 68;
        goto LABEL_71;
      }

      v11 = v37;
      v12 = &v36;
      if (a9)
      {
        v14 = &unk_298A36930;
      }

      else
      {
        v14 = &unk_298A36938;
      }

      if (!v10)
      {
        goto LABEL_25;
      }

      for (i = 0; i != v10; ++i)
      {
        v13 = v35;
        v35[i] = *(this + v14[i]);
      }
    }
  }

  else
  {
    v13 = this;
  }

  if (v10 < 2)
  {
LABEL_25:
    v16 = 0;
    goto LABEL_26;
  }

  v16 = 0;
  v17 = *v13;
  v18 = *v13 == 0.0;
  for (j = 1; j != v10; ++j)
  {
    v20 = v13[j];
    if (v20 == 0.0)
    {
      ++v18;
    }

    if (v20 > v17)
    {
      v17 = v13[j];
      v16 = j;
    }
  }

  if (v18 > 2u)
  {
    return 7;
  }

LABEL_26:
  *a6 = 0;
  if (v16)
  {
    v22 = v16 + 1 >= v10;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    if (v16)
    {
      v23 = 127;
    }

    else
    {
      v23 = -127;
    }

    if ((a7 & 1) == 0)
    {
      return 2;
    }

    goto LABEL_66;
  }

  if (!a8)
  {
    goto LABEL_54;
  }

  if (!a7)
  {
    goto LABEL_54;
  }

  v24 = *(a8 + 5);
  if (v24 < 2)
  {
    goto LABEL_54;
  }

  v25 = (this + 4 * v24);
  v26 = *v25 > *(v25 - 2);
  *a6 = v26;
  if (v25[2] > *v25)
  {
    ++v26;
  }

  *a6 = v26;
  if (v25[2] > v25[1])
  {
    ++v26;
  }

  *a6 = v26;
  v27 = (__PAIR64__(v26, *v25) - COERCE_UNSIGNED_INT(*(v25 - 2))) >> 32;
  *a6 = v27;
  LOBYTE(v27) = v27 - (v25[2] < *v25);
  *a6 = v27;
  v28 = (v24 - 1);
  *a6 = v27 - (*(v25 - 2) > *(this + v28));
  v29 = *v25;
  v30 = *(v25 - 2);
  if (*v25 > v30)
  {
    v31 = v25[2];
    if (v31 > v29 && v31 > v25[1])
    {
      return 2;
    }
  }

  if (v30 <= v29 || v29 <= v25[2])
  {
LABEL_54:
    if (!a5)
    {
      return 1;
    }

    goto LABEL_55;
  }

  v32 = *(this + v28);
  if (v30 <= v32)
  {
    result = 1;
  }

  else
  {
    result = 2;
  }

  if (v30 <= v32 && (a5 & 1) != 0)
  {
LABEL_55:
    if (v10 > 5)
    {
      if (v16 == 5)
      {
        if (!a7)
        {
          return 2;
        }
      }

      else
      {
        if (*v11 < *v12)
        {
          result = 1;
        }

        else
        {
          result = 2;
        }

        if (*v11 < *v12 || (a7 & 1) == 0)
        {
          return result;
        }
      }

      v23 = 64;
LABEL_66:
      *a6 = v23;
      return 2;
    }

    v33 = "ucVecLenExcludingVeryEarlyDelay >= GlMeSrdTrkCvecTapConfig::ucBocPrnPromptIdx";
    DeviceFaultNotify("glmesrd_pkfit.cpp", 162, "CheckForUsableCorrvec", "ucVecLenExcludingVeryEarlyDelay >= GlMeSrdTrkCvecTapConfig::ucBocPrnPromptIdx");
    v34 = 162;
LABEL_71:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_pkfit.cpp", v34, v33);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdEstPkFit::LeastSquaresPeakFit(BlueFin::GlMeSrdEstPkFit *this, const float *a2, const float *a3, unsigned int a4, int a5, unsigned int a6, unsigned int a7, unsigned __int8 a8, double a9, const BlueFin::GlSignalId *a10, float *a11, float *a12, float *a13, float *a14, float *a15, float *a16)
{
  v127 = *MEMORY[0x29EDCA608];
  if (a3 <= 3)
  {
    v119 = "usVecLen >= 4";
    DeviceFaultNotify("glmesrd_pkfit.cpp", 608, "LeastSquaresPeakFit", "usVecLen >= 4");
    v120 = 608;
    goto LABEL_161;
  }

  if (a3 >= 9)
  {
    v119 = "usVecLen <= MAX_CVEC_LEN";
    DeviceFaultNotify("glmesrd_pkfit.cpp", 609, "LeastSquaresPeakFit", "usVecLen <= MAX_CVEC_LEN");
    v120 = 609;
    goto LABEL_161;
  }

  if (!a4)
  {
    v119 = "ucDelaysPerChip > 0";
    DeviceFaultNotify("glmesrd_pkfit.cpp", 610, "LeastSquaresPeakFit", "ucDelaysPerChip > 0");
    v120 = 610;
    goto LABEL_161;
  }

  if (a7 >= 8)
  {
    v119 = "ucPromptIdxInDelays < MAX_CVEC_LEN";
    DeviceFaultNotify("glmesrd_pkfit.cpp", 611, "LeastSquaresPeakFit", "ucPromptIdxInDelays < MAX_CVEC_LEN");
    v120 = 611;
    goto LABEL_161;
  }

  v16 = this;
  if (a5)
  {
    v17 = a6;
  }

  else
  {
    v17 = a3;
  }

  v20 = a8 - 139 < 0x24 && a10 == 0 || a10 == 3;
  v123 = 0u;
  v124 = 0u;
  __dst = 0u;
  v122 = 0u;
  memcpy(&__dst, this, 4 * (v17 & 0x3FFF));
  memcpy(&v123, a2, 4 * (v17 & 0x3FFF));
  LOWORD(v125) = v17;
  BYTE2(v125) = a4;
  BYTE3(v125) = a7;
  BYTE4(v125) = v20;
  BYTE5(v125) = BYTE5(a10);
  BYTE6(v125) = a10 == 2;
  HIBYTE(v125) = BYTE4(a10);
  result = memcmp(&xmmword_2A18BB198, &__dst, 0x48uLL);
  if (!result)
  {
    *a11 = _MergedGlobals_1;
    *a12 = dword_2A18BB18C;
    *a13 = dword_2A18BB190;
    *a15 = dword_2A18BB194;
    *a14 = *a12 / a4;
    return result;
  }

  v25 = 0.0;
  v26 = 0.0;
  if ((BYTE4(a10) & 1) == 0)
  {
    if (v17)
    {
      p_dst = &__dst;
      v28 = v17;
      do
      {
        v29 = *p_dst++;
        v26 = v26 + v29;
        --v28;
      }

      while (v28);
      result = v17;
    }

    else
    {
      result = 0;
    }

    *a12 = 0.0;
    *a13 = 0.0;
    v30 = v17;
    v31 = -0.5;
    v32 = 1000000.0;
    v33 = 1.0;
    while (1)
    {
      if (v20)
      {
        if (v17)
        {
          v34 = 0.0;
          v35 = 1.0;
          v36 = -5;
          v37 = &v123;
          v38 = result;
          v39 = 0.0;
          v40 = 0.0;
          v41 = 0.0;
          v42 = 0.0;
          v43 = 0.0;
          v44 = 0.0;
          while (1)
          {
            v45 = *(v37 - 8);
            v46 = v31 + *v37;
            if (v46 < 0.0)
            {
              break;
            }

            if (v46 < 0.5)
            {
              if (v36 <= 0xFFFFFFFC && (BYTE5(a10) & 1) != 0)
              {
                v48 = 0.0;
                v49 = 1.0;
                v50 = 0.5;
              }

              else
              {
                if (v46 >= 0.33333)
                {
                  v50 = 0.5;
                }

                else
                {
                  v50 = 0.33333;
                }

                if (v46 >= 0.33333)
                {
                  v49 = 3.0;
                }

                else
                {
                  v49 = -3.0;
                }

                if (v46 >= 0.33333)
                {
                  v48 = -1.0;
                }

                else
                {
                  v48 = 1.0;
                }
              }

              goto LABEL_60;
            }

            v49 = -1.0;
            v50 = 1.0;
            v48 = 1.0;
            if (v46 < 1.0)
            {
              goto LABEL_60;
            }

LABEL_63:
            ++v36;
            ++v37;
            if (!--v38)
            {
              goto LABEL_100;
            }
          }

          if (v46 >= -1.0)
          {
            v49 = 1.0;
            v50 = -0.5;
            v48 = 1.0;
            if (v46 >= -0.5)
            {
              if (v36 <= 0xFFFFFFFC && (BYTE5(a10) & 1) != 0)
              {
                v49 = -1.0;
                v50 = 0.0;
                v48 = 0.0;
              }

              else
              {
                if (v46 >= -0.33333)
                {
                  v50 = 0.0;
                }

                else
                {
                  v50 = -0.33333;
                }

                if (v46 >= -0.33333)
                {
                  v49 = 3.0;
                }

                else
                {
                  v49 = -3.0;
                }

                if (v46 >= -0.33333)
                {
                  v48 = 1.0;
                }

                else
                {
                  v48 = -1.0;
                }
              }
            }

LABEL_60:
            v51 = v48 + (*v37 * v49);
            v34 = v34 + (v51 * v51);
            v39 = v39 + v51;
            v40 = v40 + (v51 * v49);
            v41 = v41 + v49;
            v44 = v44 + (v49 * v49);
            v43 = v43 + (v45 * v51);
            v42 = v42 + (v45 * v49);
            v47 = v50 - v46;
          }

          else
          {
            v47 = -1.0 - v46;
          }

          if (v35 >= v47)
          {
            v35 = v47;
          }

          goto LABEL_63;
        }

LABEL_102:
        v43 = 0.0;
        v35 = 1.0;
        v44 = 0.0;
        v42 = 0.0;
        v34 = 0.0;
        v39 = 0.0;
        v41 = 0.0;
        v40 = 0.0;
        goto LABEL_103;
      }

      if (a10 == 2)
      {
        if (!v17)
        {
          goto LABEL_102;
        }

        v34 = 0.0;
        v35 = 1.0;
        v52 = &v123;
        v53 = result;
        v39 = 0.0;
        v42 = 0.0;
        v43 = 0.0;
        v44 = 0.0;
        v41 = 0.0;
        v40 = 0.0;
        while (2)
        {
          v54 = *(v52 - 8);
          v55 = v31 + *v52;
          if (v55 >= 0.0)
          {
            v57 = 0.25;
            if (v55 >= 0.25)
            {
              v59 = -1.0;
              v57 = 1.0;
              v58 = 1.0;
              if (v55 >= 1.0)
              {
                goto LABEL_86;
              }
            }

            else
            {
              v58 = 0.875;
              v59 = -0.5;
            }
          }

          else
          {
            if (v55 < -1.0)
            {
              v56 = -1.0 - v55;
LABEL_84:
              if (v35 >= v56)
              {
                v35 = v56;
              }

LABEL_86:
              ++v52;
              if (!--v53)
              {
                goto LABEL_100;
              }

              continue;
            }

            if (v55 >= -0.25)
            {
              v57 = 0.0;
            }

            else
            {
              v57 = -0.25;
            }

            if (v55 >= -0.25)
            {
              v59 = 0.5;
            }

            else
            {
              v59 = 1.0;
            }

            if (v55 >= -0.25)
            {
              v58 = 0.875;
            }

            else
            {
              v58 = 1.0;
            }
          }

          break;
        }

        v60 = v58 + (*v52 * v59);
        v34 = v34 + (v60 * v60);
        v39 = v39 + v60;
        v40 = v40 + (v60 * v59);
        v41 = v41 + v59;
        v44 = v44 + (v59 * v59);
        v43 = v43 + (v54 * v60);
        v42 = v42 + (v54 * v59);
        v56 = v57 - v55;
        goto LABEL_84;
      }

      if (!v17)
      {
        goto LABEL_102;
      }

      v34 = 0.0;
      v35 = 1.0;
      v61 = &v123;
      v62 = result;
      v39 = 0.0;
      v40 = 0.0;
      v42 = 0.0;
      v43 = 0.0;
      v44 = 0.0;
      v41 = 0.0;
      do
      {
        v63 = *(v61 - 8);
        v64 = v31 + *v61;
        if (v64 >= 0.0)
        {
          v66 = -1.0;
          v67 = 1.0;
          if (v64 >= 1.0)
          {
            goto LABEL_99;
          }
        }

        else
        {
          if (v64 < -1.0)
          {
            v65 = -1.0 - v64;
            goto LABEL_97;
          }

          v66 = 1.0;
          v67 = 0.0;
        }

        v68 = (*v61 * v66) + 1.0;
        v34 = v34 + (v68 * v68);
        v39 = v39 + v68;
        v40 = v40 + (v68 * v66);
        v41 = v41 + v66;
        v44 = v44 + (v66 * v66);
        v43 = v43 + (v63 * v68);
        v42 = v42 + (v63 * v66);
        v65 = v67 - v64;
LABEL_97:
        if (v35 >= v65)
        {
          v35 = v65;
        }

LABEL_99:
        ++v61;
        --v62;
      }

      while (v62);
LABEL_100:
      if (v35 < 0.0025)
      {
        v69 = v31 + 0.0025;
        goto LABEL_120;
      }

LABEL_103:
      v69 = fminf(v31 + v35, 0.5);
      v70 = (v30 * v44) - (v41 * v41);
      v71 = (v40 * v41) - (v39 * v44);
      v72 = (v39 * v41) - (v40 * v30);
      v73 = ((v39 * v71) + (v34 * v70)) + (v40 * v72);
      if (fabsf(v73) >= 0.000001)
      {
        v74 = (((v26 * v71) + (v70 * v43)) + (v72 * v42)) / v73;
        if (v74 > 0.0)
        {
          v75 = ((((v26 * ((v39 * v40) - (v34 * v41))) + (v72 * v43)) + (((v39 * -v39) + (v34 * v30)) * v42)) / v73) / v74;
          if (v31 < v75)
          {
            v31 = v75;
          }

          if (v31 >= v69)
          {
            v76 = v69;
          }

          else
          {
            v76 = v31;
          }

          v77 = v76 / 0.0025;
          if (v77 > 0.0)
          {
            v78 = v77 + 0.5;
            goto LABEL_115;
          }

          if (v77 < 0.0)
          {
            v78 = v77 + -0.5;
LABEL_115:
            v79 = v78;
          }

          else
          {
            v79 = 0;
          }

          v80 = v79 * 0.0025;
          if (v80 != v33)
          {
            v81 = v34 + (v80 * ((v40 + v40) + (v80 * v44)));
            v82 = v39 + (v80 * v41);
            v83 = (v81 * v30) - (v82 * v82);
            if (fabsf(v83) >= 0.000001)
            {
              v84 = -(v39 + (v80 * v41));
              v85 = v43 + (v80 * v42);
              v86 = ((v26 * v84) + (v30 * v85)) / v83;
              v87 = ((v26 * v81) + (v84 * v85)) / v83;
              v88 = (v87 * ((v26 * -2.0) + (v30 * v87))) + (v86 * ((-(v85 - (v87 * v82)) - (v85 - (v87 * v82))) + (v86 * v81)));
              if (v88 < v32)
              {
                *a12 = v86;
                *a13 = v87;
                v32 = v88;
                v33 = v79 * 0.0025;
              }
            }
          }
        }
      }

LABEL_120:
      v31 = v69;
      if (v69 >= 0.5)
      {
        v26 = 0.0;
        if (v33 < 1.0)
        {
          v26 = -v33;
        }

        break;
      }
    }
  }

  *a11 = v26;
  v89 = 1.0e-10;
  if (!v17)
  {
    v99 = NAN;
    v104 = NAN;
    v101 = 1.0e-10;
    goto LABEL_143;
  }

  v90 = 0;
  v91 = 0.0;
  do
  {
    v92 = vabds_f32(*(&v123 + v90), v26);
    if (v92 >= 0.5)
    {
      v93 = 0.0;
      if (v92 >= 1.0)
      {
        goto LABEL_136;
      }

LABEL_131:
      v93 = 1.0 - v92;
      goto LABEL_136;
    }

    if (v20)
    {
      if (v90 - 5 <= 0xFFFFFFFC && (BYTE5(a10) & 1) != 0)
      {
        v93 = v92;
      }

      else
      {
        v93 = fabsf((v92 * -3.0) + 1.0);
      }
    }

    else
    {
      if (a10 != 2 || v92 >= 0.25)
      {
        goto LABEL_131;
      }

      v93 = (v92 * -0.5) + 0.875;
    }

LABEL_136:
    v126[v90] = v93;
    v91 = v91 + v93;
    ++v90;
  }

  while (v17 != v90);
  v94 = v17;
  v95 = 0.0;
  v96 = v16;
  v97 = v17;
  do
  {
    v98 = *v96++;
    v95 = v95 + v98;
    --v97;
  }

  while (v97);
  v99 = v91 / v94;
  v25 = 0.0;
  v100 = v126;
  v101 = 1.0e-10;
  v102 = v16;
  v103 = v17;
  v104 = v95 / v94;
  do
  {
    v105 = *v100++;
    v106 = v105 - v99;
    v101 = v101 + (v106 * v106);
    v107 = *v102++;
    v25 = v25 + (v106 * (v107 - v104));
    --v103;
  }

  while (v103);
LABEL_143:
  v108 = v25 / v101;
  v109 = v25 <= 0.0;
  v110 = 0.0;
  if (v109)
  {
    v108 = 0.0;
  }

  *a12 = v108;
  *a13 = v104 - (v108 * v99);
  *a14 = *a12 / a4;
  if (v17)
  {
    v111 = a7;
    v112 = v126;
    v89 = 1.0e-10;
    do
    {
      if (v111)
      {
        v113 = 1.0;
      }

      else
      {
        v113 = 3.0;
      }

      v114 = *v112++;
      v115 = v114 - v99;
      v116 = *a12 * (v114 - v99);
      v117 = *v16++;
      v110 = v110 + ((((v117 - v104) + (-*a12 * v115)) * ((v117 - v104) + (-*a12 * v115))) * v113);
      v89 = v89 + ((v116 * v116) * v113);
      --v111;
      --v17;
    }

    while (v17);
    if (v89 == 0.0)
    {
      v119 = "fXX != 0";
      DeviceFaultNotify("glmesrd_pkfit.cpp", 716, "LeastSquaresPeakFit", "fXX != 0");
      v120 = 716;
LABEL_161:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_pkfit.cpp", v120, v119);
    }
  }

  v118 = v110 / v89;
  if (v118 > 1.0)
  {
    v118 = 1.0;
  }

  *a15 = v118;
  _MergedGlobals_1 = *a11;
  dword_2A18BB18C = *a12;
  dword_2A18BB190 = *a13;
  dword_2A18BB194 = LODWORD(v118);
  xmmword_2A18BB1B8 = v123;
  unk_2A18BB1C8 = v124;
  qword_2A18BB1D8 = v125;
  xmmword_2A18BB198 = __dst;
  unk_2A18BB1A8 = v122;
  return result;
}

BlueFin::GlMeSrdMPFResults *BlueFin::GlMeSrdMPFResults::GlMeSrdMPFResults(BlueFin::GlMeSrdMPFResults *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 16) = -1;
  *(this + 5) = 0;
  memset_pattern16(this + 24, &memset_pattern, 0x14uLL);
  v2 = 0;
  *(this + 52) = 0;
  *(this + 44) = 0;
  *(this + 15) = 0;
  v3 = xmmword_298A319D0;
  v4 = vdupq_n_s64(5uLL);
  v5 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v4, v3)).u8[0])
    {
      *(this + v2 + 64) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(5uLL), *&v3)).i32[1])
    {
      *(this + v2 + 68) = 0;
    }

    v3 = vaddq_s64(v3, v5);
    v2 += 8;
  }

  while (v2 != 24);
  return this;
}

void BlueFin::GlMeSrdEstCarrPrm::EstTrkCarrPrmViaOpenLpLagOne(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6, float *a7, uint64_t a8, float a9, float a10, unsigned __int8 a11, unsigned __int16 a12, char a13, unsigned __int8 a14, char a15, char a16, unsigned __int8 a17, char a18)
{
  v27 = a17;
  *(a8 + 72) = 0;
  *(a8 + 56) = 0u;
  *(a8 + 40) = 0u;
  v28 = *(a3 + 24);
  if (*(v28 + 48) <= a9)
  {
    v27 = 1;
  }

  if (v27)
  {
    v29 = *(v28 + 48);
  }

  else
  {
    v29 = a9;
  }

  v87 = *(a5 + 12);
  v86 = *(a5 + 52);
  HIWORD(v30) = WORD1(v86);
  LOWORD(v30) = *(a5 + 60);
  v31 = v29 * v30;
  if (!a13 || *(a1 + 376) - 81 > 0x34)
  {
    v34 = *(v28 + 52);
    if ((v34 - 1) < 2)
    {
      v33 = v31 / v29;
      goto LABEL_15;
    }

    if (!v34)
    {
      v33 = v31 * ((1.0 / v29) - (1.0 / *(v28 + 44)));
      goto LABEL_15;
    }

    v75 = "0";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 2673, "CalcNumberOfLagOneProd", "0");
    v76 = "glmesrd_carrprm.cpp";
    v77 = 2673;
LABEL_97:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v76, v77, v75);
  }

  EpochPerBit = BlueFin::GlSignalId::GetEpochPerBit((a1 + 376));
  if (*(a1 + 384) >= 0x23Fu)
  {
    v75 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v76 = "glsignalid.h";
    v77 = 679;
    goto LABEL_97;
  }

  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a1 + 380) - *(a1 + 380) + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 376)]])
  {
    goto LABEL_94;
  }

  v33 = ((1.0 / v29) + -1.0 / ((BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a1 + 380) - *(a1 + 380) + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 376)]] * EpochPerBit) * 0.001)) * v31;
LABEL_15:
  __src = v33;
  memcpy((*(a1 + 344) + *(a1 + 355) * *(a1 + 354)), &__src, *(a1 + 355));
  v35 = *(a1 + 354) + 1;
  *(a1 + 354) = v35;
  if (*(a1 + 353) <= v35)
  {
    *(a1 + 352) = 1;
    *(a1 + 354) = 0;
  }

  v36 = (a1 + 344);
  v37 = a7[2];
  v38 = (*(a3 + 16) + 68);
  v39 = 12;
  while (*(v38 - 1) > v37)
  {
    v38 += 2;
    if (!--v39)
    {
      v40 = -1;
      goto LABEL_22;
    }
  }

  v40 = *v38;
LABEL_22:
  if (v37 <= 16.0)
  {
    v41 = -1;
  }

  else
  {
    v41 = 20;
  }

  if (v37 <= 30.0)
  {
    v42 = v41;
  }

  else
  {
    v42 = 10;
  }

  if (v29 > a9)
  {
    v43 = v42;
  }

  else
  {
    v43 = v40;
  }

  v82 = 0.0;
  v83 = 0.0;
  v84 = 0.0;
  v44 = 9;
  if (!*(a1 + 352))
  {
    v44 = 10;
  }

  if (v36[v44])
  {
    v81 = v43;
    v80 = v29;
    v79 = *(a5 + 12);
    BlueFin::GlMeSrdObsBuf::SumVecFcnWithExit(v36, &v79, &v82, BlueFin::GlMeSrdEstCarrPrm::AccumulateMultiSecondCplxSummand);
    v45 = v82;
    if (v82 >= v43)
    {
      v46 = 0;
      v47 = v83;
      v48 = v84;
      v49 = 0.0;
      if (v48 == 0.0 || v47 == 0.0)
      {
        goto LABEL_57;
      }

      v50 = v84;
      v51 = v83;
      v49 = atan2f(v50, v51);
      if (*(a1 + 384) >= 0x23Fu)
      {
LABEL_95:
        v75 = "IsValid()";
        DeviceFaultNotify("glsignalid.h", 693, "GetSecPerEpochWithTrkException", "IsValid()");
        v76 = "glsignalid.h";
        v77 = 693;
        goto LABEL_97;
      }

      v52 = *(a1 + 380);
      v53 = *(a1 + 376);
      if (v52 == 1)
      {
        v54 = 1.5;
        if ((v53 - 1) < 0x20 || (v53 - 66) < 0xA)
        {
LABEL_43:
          v55 = a7[7];
          if (v55 == 0.0)
          {
            v57 = 1.0;
          }

          else
          {
            v56 = *a2;
            v57 = ((((sqrtf((v47 * v47) + (v48 * v48)) / v45) * a11) / a12) + (v56 + ((v29 / v54) * *a6))) / v55;
            if (v52 == 3)
            {
              v57 = v57 * 4.0;
            }
          }

          v46 = 0;
          if ((a14 & 1) == 0 && (a16 & 1) == 0 && v29 <= a9 && (a15 & 1) == 0)
          {
            v58 = a7[2];
            v59 = v57;
            if (v58 > 30.0 && v59 < 0.86)
            {
              goto LABEL_56;
            }

            if (v58 > 23.0 && v59 < 0.7)
            {
              goto LABEL_56;
            }

            v73 = v59 >= 0.6 || v58 <= 20.0;
            v74 = !v73;
            if (v74 || v57 > 1.5)
            {
              goto LABEL_56;
            }

            v46 = a18;
            if (!a18)
            {
              goto LABEL_61;
            }

            if ((*(a5 + 136) / a10) < 1.2)
            {
LABEL_56:
              v46 = 1;
            }

            else
            {
              v46 = 0;
            }
          }

LABEL_57:
          if (v29 > a9 && a18 && (a16 & 1) == 0)
          {
            v46 = fminf(*(a5 + 64) / a10, *(a5 + 136) / a10) < 1.2;
          }

LABEL_61:
          v60 = (v49 / (v29 * 6.2832));
          v61 = *(a5 + 12);
          v62 = v60 - (*(a5 + 16) - v61);
          v63 = *(a5 + 24) + 0.0;
          *(a8 + 48) = v62;
          *(a8 + 56) = v60 + v61;
          *(a8 + 40) = v63;
          if (*(a1 + 384) < 0x23Fu)
          {
            v64 = *(a1 + 380);
            v65 = *(a1 + 376);
            if (v64 == 1)
            {
              v66 = 1.5;
              if ((v65 - 1) < 0x20 || (v65 - 66) < 0xA)
              {
                goto LABEL_67;
              }
            }

            v67 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v64 - v64 + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 376)]];
            if (v67)
            {
              v66 = v67 * 0.001;
LABEL_67:
              v68 = v29 / v66 * a7[3];
              *(a8 + 64) = *(a4 + 24) / sqrtf(v45 * v68);
              *(a8 + 68) = 0;
              if (a13)
              {
                v69 = v29 >= 0.01 || (v65 - 139) >= 0x24;
                v70 = 0.1;
                if (!v69)
                {
                  v70 = 0.3;
                }
              }

              else
              {
                v70 = 0.1;
              }

              if (v29 > a9)
              {
                *(a8 + 75) = 1;
                v70 = 0.3;
              }

              if ((a14 & ((v65 - 52) < 0xE)) != 0)
              {
                v70 = 0.5;
              }

              v71 = v62;
              v72 = (v70 > fabsf(v29 * v71)) & ~v46;
              *(a8 + 72) = 0;
              if (v47 == 0.0)
              {
                v72 = 0;
              }

              *(a8 + 73) = v72;
              *(a8 + 74) = v72;
              return;
            }

            goto LABEL_94;
          }

          goto LABEL_95;
        }
      }

      if (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v52 - v52 + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 376)]])
      {
        v54 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v52 - v52 + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 376)]] * 0.001;
        goto LABEL_43;
      }

LABEL_94:
      v75 = "ucMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
      v76 = "glsignalid.h";
      v77 = 686;
      goto LABEL_97;
    }
  }
}

void BlueFin::GlMeSrdEstCarrPrm::Run(uint64_t a1, double *a2, uint64_t a3, float *a4, float32x2_t *a5, uint64_t a6, double a7, uint64_t a8, float *a9, uint64_t a10, char a11, unsigned __int8 a12, unsigned __int8 a13, unsigned __int8 a14, char a15, unsigned __int8 a16, unsigned __int16 a17, unsigned __int8 a18, unsigned __int8 a19, char a20, char a21, uint64_t a22, uint64_t a23, unsigned __int8 *a24, char a25, unsigned int a26, uint64_t a27, _BYTE *a28, unsigned __int8 a29, float *a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if ((*a22 & 1) == 0)
  {
    v69 = "stAsicCarrPrmTrkMsmt.bValid";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 1711, "Run", "stAsicCarrPrmTrkMsmt.bValid");
    v70 = 1711;
    goto LABEL_57;
  }

  v33 = *a24;
  if ((v33 - 1) >= 0xBC)
  {
    v69 = "otSignalId.GetSvId().isValid()";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 1712, "Run", "otSignalId.GetSvId().isValid()");
    v70 = 1712;
    goto LABEL_57;
  }

  v34 = a9;
  v35 = a4;
  v37 = a26;
  v74 = (a1 + 376);
  if ((a1 + 376) != a24)
  {
    *(a1 + 376) = v33;
    *(a1 + 380) = *(a24 + 1);
    *(a1 + 384) = *(a24 + 4);
  }

  *(a1 + 388) = a25;
  *(a1 + 392) = a7;
  v39 = a13 < 5u && a26 > 0x3E8;
  v40 = *(a22 + 122);
  if ((a15 & 1) == 0)
  {
    v40 &= ~v39;
  }

  v41 = a30;
  v42 = a21 & ~a12;
  if (*(a27 + 176) <= 0.002)
  {
    v42 = 0;
  }

  *&v43 = *(a27 + 20 + 4 * *(a27 + 149)) * a17;
  v44 = *(a22 + 8);
  if (v44 == 1)
  {
    v45 = *(a22 + 24);
    v46 = *(a22 + 12);
    v47 = 1.0 / (*a4 + *a4);
  }

  else
  {
    LOBYTE(v44) = 0;
    v47 = 0.0;
    v45 = 0;
    v46 = 0.0;
  }

  v48 = v42 & (a14 ^ 1);
  *a33 = v44;
  *(a33 + 8) = v45;
  *(a33 + 16) = 0;
  *(a33 + 20) = v44;
  *(a33 + 24) = v46;
  *(a33 + 32) = v47;
  v49 = *&v43 / a16;
  if (*(a22 + 48) == 1)
  {
    v73 = v40;
    v50 = a2;
    v51 = a3;
    BlueFin::GlMeSrdEstCarrPrm::EstTrkCarrPrmViaOpenLpLagOne(a1, a2, a3, a6, a22, a9, a30, a33, *a4, v49, a16, a17, a11, a12, v39, v39 | a11 | a14, a18, v48);
    v40 = v73;
    v37 = a26;
    v34 = a9;
    v41 = a30;
    a2 = v50;
    a3 = v51;
    v35 = a4;
  }

  if (*(a22 + 72) == 1)
  {
    *(a33 + 111) = 0;
    *(a33 + 80) = 0u;
    *(a33 + 96) = 0u;
    v43 = *(a22 + 80);
    v54 = *(a22 + 24) + 0.0;
    v55 = v43 + *(a22 + 16);
    *(a33 + 88) = v43;
    *(a33 + 96) = v55;
    *(a33 + 80) = v54;
    *(a33 + 104) = 1102053376;
    *(a33 + 113) = 257;
  }

  if (*(a22 + 88) == 1)
  {
    v72 = v37;
    v71 = v48;
    v56 = a1;
    v57 = a2;
    v58 = a3;
    v59 = a1;
    v60 = v35;
    BlueFin::GlMeSrdEstCarrPrm::EstTrkCarrPrmViaClosedLpFll(v56, v34, a3, a5, a6, a22, v40, a19, *v35, v49, v39, a20, v71, v72, a29, v41, a33);
    a2 = v57;
    a3 = v58;
    v35 = v60;
    a1 = v59;
  }

  if (*(a22 + 144) == 1)
  {
    BlueFin::GlMeSrdEstCarrPrm::EstTrkCarrPrmViaClosedLpPll(a1, *(a3 + 24), a22, a23, (v39 ^ 1) & *(a22 + 170), a29, *v41, a33, a2[1], *v35, a5[4].f32[0], v41[2]);
  }

  if ((a20 & 1) == 0)
  {
    BlueFin::GlMeSrdEstCarrPrm::CrossCheckTrkCarrPrmEst(a6, a33, *&v43);
  }

  BlueFin::GlMeSrdEstCarrPrm::SelectPublishedTrkCarrPrmEst(a6, a33, a14, a29, a32);
  if ((*(a22 + 8) & 1) == 0)
  {
    v69 = "stAsicCarrPrmTrkMsmt.stAcqPrm.bValid";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 1834, "Run", "stAsicCarrPrmTrkMsmt.stAcqPrm.bValid");
    v70 = 1834;
LABEL_57:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_carrprm.cpp", v70, v69);
  }

  v61 = *(a31 + 20);
  *(a32 + 92) = v61;
  *(a32 + 96) = *(a31 + 8);
  if (v61 == 3)
  {
    if (*(a32 + 1) != 1)
    {
      goto LABEL_36;
    }

    v62 = *(a31 + 16);
    if (v62 == -1)
    {
      goto LABEL_36;
    }

    v63 = a31 + 4 * v62;
    if (*(v63 + 24) >= 0.2)
    {
      goto LABEL_36;
    }

    v64 = *(a32 + 8);
    v65 = *(v63 + 44) - v64;
    if (v65 < 0.0)
    {
      v65 = -v65;
    }

    if (v65 >= 3.0)
    {
LABEL_36:
      *(a32 + 1) = 0;
      *(a32 + 34) = 0;
      *(a32 + 36) = 0;
      *(a32 + 20) = 0;
      *(a32 + 68) = 0;
    }
  }

  if (*(a22 + 88) == 1)
  {
    *(a32 + 28) = 1;
    *(a32 + 29) = *(a33 + 121) ^ 1;
    *(a32 + 31) = 1;
    *(a32 + 32) = *(a33 + 160) ^ 1;
    *(a32 + 33) = *(a33 + 196) ^ 1;
  }

  BlueFin::GlMeSrdEstCarrPrm::OverrideTrkCarrPrmRmse(a1, *v41, a32, v41[2]);
  v66 = vcgt_f32(0x3400000034000000, vabs_f32(vadd_f32(a5[2], 0xBCA3D70ABBA3D70ALL)));
  if ((v66.i32[1] & v66.i32[0] & 1) != 0 && *v74 - 175 <= 0xFFFFFFDB && (*a28 & 1) != 0 && (*a27 & 1) != 0 && (*v41 & 1) != 0 && v41[2] >= 20.0 && (*&a28[4 * a28[149] + 20] / *(a27 + 20 + 4 * *(a27 + 149))) <= 1.122)
  {
    *(a32 + 1) = 0;
    v67 = *(a32 + 16);
    if (v67 < 1000.0)
    {
      v67 = 1000.0;
    }

    *(a32 + 16) = v67;
    *(a32 + 20) = 0;
  }

  if (*(a31 + 20) == 2 && *(a32 + 1) == 1)
  {
    v68 = *(a31 + 8);
    if (*(a32 + 16) < v68)
    {
      *(a32 + 34) = 0;
      *(a32 + 36) = 0;
      *(a32 + 68) = 0;
      *(a32 + 16) = v68;
    }
  }
}

_BYTE *BlueFin::GlMeSrdObsBuf::SumVecFcnWithExit(_BYTE *this, void *a2, void *a3, uint64_t (*a4)(void *, void *, unint64_t))
{
  v4 = 9;
  if (!this[8])
  {
    v4 = 10;
  }

  v5 = this[v4];
  if (this[v4])
  {
    v9 = this;
    v10 = this[9];
    if (v10 > (this[10] - 1))
    {
      LOBYTE(v10) = 0;
    }

    v11 = v10 + this[10] - 1;
    do
    {
      this = a4(a2, a3, *v9 + v9[11] * v11);
      if (!this)
      {
        break;
      }

      v12 = v9[9];
      if (v12 > (v11 - 1))
      {
        LOBYTE(v12) = 0;
      }

      v11 = v12 + v11 - 1;
      --v5;
    }

    while (v5);
  }

  return this;
}

BOOL BlueFin::GlMeSrdEstCarrPrm::AccumulateMultiSecondCplxSummand(BlueFin::GlMeSrdEstCarrPrm *this, char *a2, char *a3, void *a4)
{
  if (!this)
  {
    v13 = "potBufParam != nullptr";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 2621, "AccumulateMultiSecondCplxSummand", "potBufParam != nullptr");
    v14 = 2621;
    goto LABEL_8;
  }

  if (!a2)
  {
    v13 = "potAccBufElem != nullptr";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 2625, "AccumulateMultiSecondCplxSummand", "potAccBufElem != nullptr");
    v14 = 2625;
    goto LABEL_8;
  }

  if (!a3)
  {
    v13 = "potBufElem != nullptr";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 2629, "AccumulateMultiSecondCplxSummand", "potBufElem != nullptr");
    v14 = 2629;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_carrprm.cpp", v14, v13);
  }

  v7 = (*(a3 + 3) - *this) * 6.28318531 * *(this + 2);
  v8 = __sincosf_stret(v7);
  v9.f64[0] = v8.__sinval;
  v10 = vcvtq_f64_f32(*(a3 + 4));
  v9.f64[1] = -v8.__sinval;
  v11 = vmulq_f64(v9, v10);
  *(a2 + 8) = vaddq_f64(*(a2 + 8), vmlaq_n_f64(vextq_s8(v11, v11, 8uLL), v10, v8.__cosval));
  *v11.i32 = *a3 + *a2;
  *a2 = v11.i32[0];
  return *v11.i32 < *(this + 3);
}

void BlueFin::GlMeSrdEstCarrPrm::EstTrkCarrPrmViaClosedLpFll(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, uint64_t a5, uint64_t a6, int a7, int a8, float a9, float a10, char a11, char a12, char a13, unsigned int a14, char a15, uint64_t a16, uint64_t a17)
{
  if (*a6 != 1 || *(a6 + 88) != 1)
  {
    *(a17 + 120) = 0;
    *(a17 + 128) = 0;
    *(a17 + 136) = 0;
    *(a17 + 144) = 0;
    *(a17 + 152) = 0;
    return;
  }

  v26 = *(a1 + 96);
  v27 = *(a6 + 104);
  if (v26 - v27 <= 63.5)
  {
    v28 = *(a1 + 104);
    if (v27 - v26 <= 63.5)
    {
      goto LABEL_10;
    }

    --v28;
  }

  else
  {
    v28 = *(a1 + 104) + 1;
  }

  *(a1 + 104) = v28;
LABEL_10:
  *(a1 + 96) = v27;
  v94 = v27 + v28 * 128.0;
  v92 = a4[15];
  v90 = a4[13];
  v29 = a4[18];
  v30 = v90 / a9;
  v31 = __exp10f(*(a16 + 8) / 10.0) * a9;
  v32 = ((v29 * 0.5) * 6.2832) * a9;
  v33 = __sincosf_stret(v32 * 0.5);
  v34 = sinf(((v90 / a9) * v32) * 0.5) / v33.__sinval;
  v35 = sinf((v90 / a9) * v32);
  v36 = v35 / sinf(v32);
  v37 = ((a9 + a9) * (v33.__cosval / v33.__sinval)) * ((v34 * v34) - ((v90 / a9) * v36));
  v38 = ((v90 * (v92 + v92)) * (((((v30 * v30) - (v36 * v36)) + ((v30 * v30) - (v36 * v36))) + ((v34 * ((v31 * 4.0) * v34)) * (v30 - v36))) / (v37 * ((v31 * v31) * v37)))) / 39.4784176;
  *(a17 + 128) = v94 + *(a6 + 24);
  *(a17 + 136) = 1092616192;
  *(a17 + 144) = *(a6 + 96) + *(a6 + 16);
  *(a17 + 152) = sqrtf(v38);
  v39 = a4[17];
  if (((v39 > 0.0) & a7) != 0)
  {
    v40 = 2;
  }

  else
  {
    v40 = 0;
  }

  v95 = v40;
  v41 = *(a5 + 36);
  if (*(a5 + 36))
  {
    v93 = a8;
    v91 = a3;
    v42 = *(a3 + 24);
    v43 = *(a2 + 4);
    if (v39 <= 0.0)
    {
      v44 = 1;
    }

    else
    {
      v44 = 3;
    }

    v45 = (a6 + 40);
    v46 = 4;
    v88 = v44;
    while (1)
    {
      v47 = v46;
      v48 = v45[v46];
      if (v48 != 255)
      {
        break;
      }

      v46 = v47 - 1;
      if (v47 == 1)
      {
        v47 = 0;
        v48 = *v45;
        break;
      }
    }

    if (v48 <= 3)
    {
      v49 = a4[13] / *v42;
    }

    else
    {
      v49 = (a4[13] / *v42) * (a4[13] / *v42);
    }

    v50 = (v43 * *(a5 + 48)) * v49;
    v51 = *(a1 + 112);
    v52 = v51 - v50;
    if ((v51 - v50) < 0.0)
    {
      v52 = -(v51 - v50);
    }

    if (v52 >= 1.0 || v51 == 0.0 && v50 != 0.0)
    {
      *(a1 + 112) = v50;
      __src = v50;
      *(a1 + 130) = 0;
      *(a1 + 128) = 1;
      if (*(a1 + 129))
      {
        v53 = 0;
        do
        {
          memcpy((*(a1 + 120) + v53 * *(a1 + 131)), &__src, *(a1 + 131));
          ++v53;
        }

        while (v53 < *(a1 + 129));
      }
    }

    v54 = *(a6 + 124);
    __src = v54;
    if (!v93)
    {
      goto LABEL_40;
    }

    v55 = v45[v47];
    if (v55 == 3)
    {
      v56 = 1.2;
    }

    else
    {
      if (v55 > 2)
      {
LABEL_40:
        memcpy((*(a1 + 120) + *(a1 + 131) * *(a1 + 130)), &__src, *(a1 + 131));
        v60 = *(a1 + 130) + 1;
        *(a1 + 130) = v60;
        if (*(a1 + 129) <= v60)
        {
          *(a1 + 128) = 1;
          *(a1 + 130) = 0;
        }

        v61 = v49 * (v43 * *(a5 + 52));
        v62 = BlueFin::GlMeSrdObsBuf::SumFcn((a1 + 120), v41, 0, BlueFin::GlMeSrdEstCarrPrm::CalcMagSqrdFllValidityTestStatSummand) / v41;
        if (a13)
        {
          v63 = v45[v47];
          v64 = flt_298A358F8[v63 == 2];
          if (v63 > 2)
          {
            v64 = 1.4;
          }

          if (v61 <= v62)
          {
            v65 = a7;
          }

          else
          {
            v65 = 0;
          }

          v58 = a16;
          v59 = v95;
          v57 = v88;
          if ((*(a6 + 136) / a10) > v64)
          {
            v59 = v95 | v65;
          }

          a8 = v93;
          a3 = v91;
        }

        else
        {
          if (v61 <= v62)
          {
            v66 = a7;
          }

          else
          {
            v66 = 0;
          }

          a8 = v93;
          v59 = v95 | v66;
          v58 = a16;
          a3 = v91;
          v57 = v88;
        }

        goto LABEL_55;
      }

      v56 = 1.5;
    }

    __src = v54 * v56;
    goto LABEL_40;
  }

  if (v39 <= 0.0)
  {
    v85 = "!otEstValidityChkBitMsk32.IsEmpty()";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 2164, "DetermineFllValidity", "!otEstValidityChkBitMsk32.IsEmpty()");
    v86 = "glmesrd_carrprm.cpp";
    v87 = 2164;
    goto LABEL_97;
  }

  v57 = 2;
  v58 = a16;
  v59 = v40;
LABEL_55:
  if ((v59 & ~v57) != 0)
  {
    v85 = "otValRslt.IsEmpty()";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 2170, "DetermineFllValidity", "otValRslt.IsEmpty()");
    v86 = "glmesrd_carrprm.cpp";
    v87 = 2170;
    goto LABEL_97;
  }

  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x3F);
  }

  *(a17 + 121) = v57 == v59;
  *(a17 + 120) = 0;
  v67 = *(a3 + 24);
  if ((a15 & 2) == 0)
  {
    goto LABEL_67;
  }

  v68 = v67[17] + -5.0;
  if (v68 <= 21.0)
  {
    v68 = 21.0;
  }

  *(a17 + 120) = v68 < *(v58 + 8);
  if (*(a1 + 384) >= 0x23Fu)
  {
    v85 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
    v86 = "glsignalid.h";
    v87 = 651;
LABEL_97:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v86, v87, v85);
  }

  v69 = *(a1 + 376);
  v70 = BlueFin::GlSvId::s_aucSvId2gnss[v69];
  v71 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a1 + 380) - *(a1 + 380) + v70]];
  if (v70 == 2)
  {
    v72 = (v69 - 59);
    if ((v69 - 52) >= 0xE)
    {
      v72 = -8.0;
    }

    v71 = v71 + v72 * 562500.0;
  }

  v73 = 0.5 / (299792458.0 / v71);
  *(a17 + 136) = v73;
LABEL_67:
  *(a17 + 156) = 1;
  v74 = 0.04;
  if (!a8)
  {
    v74 = a4[13];
  }

  v75 = 1.0;
  if (a12)
  {
    v75 = 3.0;
    if (*(a6 + 44) >= 3u)
    {
      if (*v67 == 0.004)
      {
        v74 = 0.008;
      }

      if (*v67 == 0.005)
      {
        v74 = 0.01;
      }
    }
  }

  v76 = *(a6 + 96);
  v77 = v74;
  if (v75 * 0.3 <= fabsf(v77 * v76))
  {
    *(a17 + 120) = 0;
    *(a17 + 157) = 1;
  }

  v78 = *(a6 + 112);
  if (v75 * 51.5 < fabsf(v78))
  {
    *(a17 + 120) = 0;
    *(a17 + 158) = 1;
  }

  if (a14 >= 0x1389 && (a11 & 1) == 0)
  {
    v79 = *(a1 + 392);
    v80 = *(a1 + 372);
    v81 = 0.0;
    if (v80 == -1)
    {
      v82 = 0;
    }

    else
    {
      v82 = 0;
      v83 = v79 - v80;
      if (v83 > 0.0 && v83 <= 2000.0)
      {
        v81 = (v78 - *(a1 + 368)) / (v83 / 1000.0);
        v82 = 1;
      }
    }

    *(a1 + 368) = v78;
    v84 = (v79 + 0.5);
    if (v79 <= 0.0)
    {
      v84 = 0;
    }

    if (v79 < 0.0)
    {
      v84 = -1;
    }

    *(a1 + 372) = v84;
    if (v79 >= 0.0 && v82 && v75 * 50.0 < fabsf(v81))
    {
      *(a17 + 120) = 0;
      *(a17 + 157) = 257;
      *(a17 + 159) = 1;
    }
  }
}

void BlueFin::GlMeSrdEstCarrPrm::EstTrkCarrPrmViaClosedLpPll(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7, uint64_t a8, double a9, float a10, float a11, float a12)
{
  if (*a3 != 1 || *(a3 + 144) != 1)
  {
    *(a8 + 200) |= 0x40u;
    *(a8 + 160) = 0;
    *(a8 + 204) = 0;
    *(a8 + 176) = 0;
    *(a8 + 184) = 0;
    *(a8 + 168) = 0;
    *(a8 + 189) = 0;
    return;
  }

  v23 = *(a1 + 8);
  v24 = *(a3 + 160);
  if (v23 - v24 <= 63.5)
  {
    v25 = *(a1 + 108);
    if (v24 - v23 <= 63.5)
    {
      goto LABEL_10;
    }

    --v25;
  }

  else
  {
    v25 = *(a1 + 108) + 1;
  }

  *(a1 + 108) = v25;
LABEL_10:
  *(a1 + 8) = v24;
  if (*(a1 + 384) >= 0x23Fu)
  {
    DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 651, "IsValid()");
  }

  v26 = v24 + v25 * 128.0;
  v27 = *(a1 + 376);
  v28 = BlueFin::GlSvId::s_aucSvId2gnss[v27];
  v29 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a1 + 380) - *(a1 + 380) + v28]];
  v30 = v29;
  if (v28 == 2)
  {
    v31 = (v27 - 59);
    if ((v27 - 52) >= 0xE)
    {
      v31 = -8.0;
    }

    v30 = v29 + v31 * 562500.0;
  }

  v32 = v30;
  v33 = a9;
  v34 = (sqrtf(((1.0 / (__exp10f(a12 / 10.0) * a10)) * a11) * a10) * (v33 / v32)) / 6.2832;
  v35 = v26 + *(a3 + 24);
  *(a8 + 168) = v35;
  v36 = v34;
  v37 = v29;
  if (v28 == 2)
  {
    v38 = (v27 - 59);
    if ((v27 - 52) >= 0xE)
    {
      v38 = -8.0;
    }

    v37 = v29 + v38 * 562500.0;
  }

  v39 = v36 / (299792458.0 / v37);
  *(a8 + 176) = v39;
  *(a8 + 180) = *(a3 + 172);
  *(a8 + 184) = *(a3 + 152) + *(a3 + 16);
  v40 = v29;
  if (v28 == 2)
  {
    v41 = (v27 - 59);
    if ((v27 - 52) >= 0xE)
    {
      v41 = -8.0;
    }

    v40 = v29 + v41 * 562500.0;
  }

  v42 = -100.0 / (299792458.0 / v40);
  *(a8 + 192) = v42;
  if ((a7 & 1) != 0 && *(a2 + 68) <= a12)
  {
    v44 = *(a8 + 200);
    v43 = 1;
  }

  else
  {
    v43 = 0;
    v44 = *(a8 + 200) | 4;
    *(a8 + 200) = v44;
  }

  if (*(a3 + 184) & *(a3 + 185))
  {
    v44 |= 0x10u;
  }

  if (a5)
  {
    v45 = 4096;
  }

  else
  {
    v45 = 4097;
  }

  v46 = v44 | v45;
  *(a8 + 200) = v46;
  if (a6)
  {
    *(a8 + 204) = 0;
  }

  if (v43 & a5)
  {
    v47 = 1;
  }

  else
  {
    v47 = 0;
    *(a8 + 192) = 0;
  }

  *(a8 + 160) = v47;
  *(a8 + 196) = v47;
  if (v28 == 2)
  {
    v48 = (v27 - 59);
    if ((v27 - 52) >= 0xE)
    {
      v48 = -8.0;
    }

    v29 = v29 + v48 * 562500.0;
  }

  v49 = a1 + 56;
  v50 = *(a1 + 390);
  v51 = v50 % 5u;
  *(a1 + 56 + 8 * v51) = *(a1 + 392) * 0.001;
  v52 = (a1 + 16);
  v53 = v50 + 1;
  *(a1 + 390) = v53;
  *(a1 + 16 + 8 * v51) = v35 * (299792458.0 / v29);
  if (v53 >= 0x15u && !(v53 % 5u))
  {
    v53 = 5;
    *(a1 + 390) = 5;
LABEL_45:
    v54 = v53 - 3;
    v55 = 0.0;
    if (v54 > (v53 - 5))
    {
      v56 = (v53 - 5);
      do
      {
        v57 = v56 % 5u;
        v58 = v56 + 2;
        v59 = v56 + 1;
        v60 = (v56 + 1) % 5u;
        v61 = v52[v60];
        v62 = *(v49 + 8 * v60);
        v63 = *(v49 + 8 * v57);
        v64 = v62 - v63;
        v65 = v58 % 5u;
        v66 = *(v49 + 8 * v65) - v62;
        v67 = v62 + v66 * 0.5 - (v63 + (v62 - v63) * 0.5);
        v55 = v55 + (v52[v65] - v61) / (v66 * v67) - (v61 - v52[v57]) / (v64 * v67);
        v56 = v59;
      }

      while (v54 != v59);
      v55 = v55 * 0.333333333;
    }

    v68 = (v53 - 2) % 5;
    v69 = v54 % 5u;
    v70 = *(v49 + 8 * v68);
    v71 = *(v49 + 8 * v69);
    v72 = v70 - v71;
    v73 = (v53 - 1) % 5;
    v74 = *(v49 + 8 * v73) - v70;
    v75 = v70 + v74 * 0.5 - (v71 + (v70 - v71) * 0.5);
    if (vabdd_f64(v55, (v52[v73] - v52[v68]) / (v74 * v75) - (v52[v68] - v52[v69]) / (v72 * v75)) > 100.0)
    {
      *(a1 + 390) = 0;
      *v52 = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      v46 = *(a8 + 200) | 8;
      *(a8 + 200) = v46;
    }

    goto LABEL_51;
  }

  if (v53 >= 5u)
  {
    goto LABEL_45;
  }

LABEL_51:
  if (*(a4 + 663) == 1 && *(a4 + 660) > 2 * (*(a4 + 2) / 5u))
  {
    *(a8 + 200) = v46 | 0x800;
    *(a8 + 160) = 0;
  }
}

uint64_t BlueFin::GlMeSrdEstCarrPrm::SelectPublishedTrkCarrPrmEst(uint64_t result, char *a2, int a3, int a4, uint64_t a5)
{
  *a5 = 1;
  *(a5 + 34) = 0;
  *(a5 + 36) = 0;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0;
  if (*result == 4)
  {
    if ((a2[113] & 1) == 0)
    {
      goto LABEL_8;
    }

    v5 = 7;
    v6 = 88;
  }

  else
  {
    if (*result != 3)
    {
      DeviceFaultNotify("glmesrd_carrprm.cpp", 1346, "SelectPublishedTrkCarrPrmEst", "0");
      v42 = 1346;
LABEL_73:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_carrprm.cpp", v42, "0");
    }

    if ((a2[73] & 1) == 0)
    {
      goto LABEL_8;
    }

    v5 = 3;
    v6 = 48;
  }

  *(a5 + 72) = 1;
  *(a5 + 80) = *&a2[v6];
  *(a5 + 88) = v5;
LABEL_8:
  *(a5 + 1) = 0;
  v7 = *(a2 + 3);
  *(a5 + 8) = v7;
  v8 = *(a2 + 21);
  v9 = *(a2 + 16);
  *(a5 + 40) = v8;
  *(a5 + 48) = v9;
  *(a5 + 20) = 0;
  v10 = *(a2 + 50);
  *(a5 + 100) = v10;
  v11 = *(result + 4);
  v12 = v11 != 0;
  if (!v11 && !a3)
  {
    v13 = 0;
LABEL_62:
    if (v13 != 2)
    {
      *(a5 + 100) = v10 | 0x80;
    }

    goto LABEL_64;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v48 = *a2;
  v17 = *(a2 + 1);
  v18 = *(a2 + 4);
  v47 = a2[20];
  v19 = *(result + 32);
  v20 = *(result + 84);
  v43 = a2[160];
  v44 = a2[204];
  v21 = *(a2 + 44);
  v46 = a2[121];
  v22 = *(a2 + 34);
  v23 = *(result + 64);
  v45 = a2[196];
  v24 = a2[72];
  v25 = *(a2 + 5);
  v26 = *(a2 + 17);
  v27 = a2[74];
  v28 = a2[112];
  v29 = *(a2 + 10);
  v30 = a2[120] & *&v46 & ((a4 & 2) >> 1);
  v31 = *(a2 + 27);
  v32 = v10;
  v33 = a2[114];
  while (1)
  {
    if (a3)
    {
      v34 = 3;
    }

    else
    {
      v34 = 0;
    }

    if (v12)
    {
      v34 = v11;
    }

    v35 = v34 != 3;
    if (v34 > 2)
    {
      switch(v34)
      {
        case 3:
          if (v24)
          {
            v15 = 1;
            *(a5 + 34) = 1;
            *(a5 + 40) = v25;
            *(a5 + 56) = v26;
            v13 = 3;
            *(a5 + 68) = 3;
            v16 = 3;
          }

          if (v27)
          {
            *(a5 + 1) = 1;
            *(a5 + 8) = *(a2 + 7);
            *(a5 + 16) = *(a2 + 16);
            v41 = 3;
            goto LABEL_69;
          }

          break;
        case 5:
          if (v48)
          {
            v15 = 1;
            *(a5 + 34) = 1;
            *(a5 + 40) = v17;
            *(a5 + 56) = v18;
            v13 = 4;
            *(a5 + 68) = 4;
            v16 = 4;
          }

          if (v47)
          {
            *(a5 + 1) = 1;
            *(a5 + 8) = v7;
            *(a5 + 16) = *(a2 + 8);
            v41 = 4;
            goto LABEL_69;
          }

          break;
        case 4:
          if (v28)
          {
            v15 = 1;
            *(a5 + 34) = 1;
            *(a5 + 40) = v29;
            *(a5 + 56) = v31;
            v13 = 7;
            *(a5 + 68) = 7;
            v16 = 7;
          }

          if (v33)
          {
            *(a5 + 1) = 1;
            *(a5 + 8) = *(a2 + 12);
            *(a5 + 16) = *(a2 + 26);
            v41 = 7;
            goto LABEL_69;
          }

          break;
        default:
          goto LABEL_71;
      }

      goto LABEL_60;
    }

    if (v34 == 1)
    {
      if (v19 <= 1 && (v46 & 1) != 0)
      {
        v41 = 1;
        *(a5 + 1) = 1;
        *(a5 + 8) = *(a2 + 18);
        *(a5 + 16) = *(a2 + 38);
        goto LABEL_69;
      }

      goto LABEL_60;
    }

    if (v34 != 2)
    {
LABEL_71:
      DeviceFaultNotify("glmesrd_carrprm.cpp", 1558, "SelectPublishedTrkCarrPrmEst", "0");
      v42 = 1558;
      goto LABEL_73;
    }

    v36 = *(a2 + 45);
    if ((v20 & 1) == 0)
    {
      v32 |= 0x100u;
    }

    if ((v20 & (v36 >= *(result + 88))) != 0)
    {
      v32 |= 2u;
    }

    if (v20 & (v36 >= *(result + 88)) | (v20 ^ 1) & 1)
    {
      *(a5 + 100) = v32;
      v10 = v32;
      if (((v43 | v44) & 1) == 0)
      {
        goto LABEL_48;
      }

      v15 = 0;
      *(a5 + 40) = v8;
      *(a5 + 56) = v21;
      v10 = v32;
      *(a5 + 34) = 0;
    }

    else
    {
      if (((v43 | v44) & 1) == 0)
      {
        goto LABEL_48;
      }

      v15 = v43;
      *(a5 + 34) = v43;
      *(a5 + 40) = v8;
      *(a5 + 56) = v21;
    }

    *(a5 + 64) = v36;
LABEL_48:
    if (a4)
    {
      if (v44)
      {
        *(a5 + 35) = 1;
LABEL_52:
        v13 = 2;
        *(a5 + 68) = 2;
        v16 = 2;
        if (v30)
        {
          *(a5 + 36) = 1;
          *(a5 + 48) = v9;
          v13 = 2;
          *(a5 + 60) = v22;
        }

        goto LABEL_58;
      }

      *(a5 + 35) = 0;
      if (v15)
      {
        goto LABEL_52;
      }
    }

    else
    {
      *(a5 + 35) = v15;
      if (v15)
      {
        goto LABEL_52;
      }
    }

    if (v30)
    {
      *(a5 + 36) = 1;
      *(a5 + 48) = v9;
      *(a5 + 60) = v22;
      if (v16 != 2)
      {
        v13 = 1;
        *(a5 + 68) = 1;
        v16 = 1;
      }
    }

LABEL_58:
    if (v23 <= 1 && (v45 & 1) != 0)
    {
      break;
    }

LABEL_60:
    v14 += v12;
    LOBYTE(a3) = v12 & a3 & v35;
    v11 = *(result + 4 + 4 * v14);
    v12 = v11 != 0;
    if (!(v12 | a3 & 1))
    {
      if (v15)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }
  }

  *(a5 + 1) = 1;
  *(a5 + 8) = *(a2 + 23);
  *(a5 + 16) = *(a2 + 48);
  v41 = 2;
LABEL_69:
  *(a5 + 20) = v41;
  if ((v15 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_64:
  if (a2[156] == 1)
  {
    v37 = a2[157];
    v38 = a2[158];
    v39 = 1;
    v40 = a2[159];
  }

  else
  {
    v39 = 0;
    v37 = 0;
    v38 = 0;
    v40 = 0;
  }

  *(a5 + 24) = v39;
  *(a5 + 25) = v37;
  *(a5 + 26) = v38;
  *(a5 + 27) = v40;
  *(a5 + 30) = a2[122];
  return result;
}

float BlueFin::GlMeSrdEstCarrPrm::CrossCheckTrkCarrPrmEst(uint64_t a1, uint64_t a2, float result)
{
  *(a2 + 122) = 0;
  if (*(a1 + 28))
  {
    if (*(a1 + 56) == 1 && *(a2 + 74) == 1 && *(a2 + 121) == 1)
    {
      v3 = *(a2 + 56);
      v4 = *(a2 + 144);
      result = vabds_f32(v3, v4);
      if (result > *(a1 + 60))
      {
        *(a2 + 120) = 0;
        *(a2 + 122) = 1;
      }
    }
  }

  if (*(a1 + 68) == 1)
  {
    v5 = *(a2 + 184) - *(a2 + 56);
    if (!*(a2 + 74))
    {
      v5 = 0.0;
    }

    v6 = -v5;
    if (v5 >= 0.0)
    {
      v6 = v5;
    }

    result = *(a1 + 72);
    if (v6 > result)
    {
      *(a2 + 196) = 0;
      *(a2 + 160) = 0;
      *(a2 + 204) = 0;
      result = result + result;
      *(a2 + 192) = result;
    }
  }

  if (*(a1 + 76) == 1)
  {
    v7 = *(a2 + 184) - *(a2 + 144);
    if (!*(a2 + 121))
    {
      v7 = 0.0;
    }

    v8 = -v7;
    if (v7 >= 0.0)
    {
      v8 = v7;
    }

    result = *(a1 + 80);
    if (v8 > result)
    {
      *(a2 + 196) = 0;
      *(a2 + 160) = 0;
      *(a2 + 204) = 0;
      result = result + result;
      *(a2 + 192) = result;
    }
  }

  return result;
}

uint64_t BlueFin::GlMeSrdCarrPrmResults::isGarbage(BlueFin::GlMeSrdCarrPrmResults *this)
{
  if (*this != 1)
  {
    v1 = 0;
    return v1 & 1;
  }

  if (*(this + 1) == 1)
  {
    v1 = *(this + 1) == 1.79769313e308 || *(this + 4) == 3.4028e38 || !*(this + 5);
  }

  else
  {
    v1 = *(this + 5) != 0;
  }

  if ((*(this + 34) & 1) != 0 || *(this + 35) == 1)
  {
    if (*(this + 5) == 1.79769313e308 || *(this + 14) == 3.4028e38 || *(this + 16) == -1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (*(this + 36) != 1)
    {
      v1 |= *(this + 17) != 0;
      goto LABEL_20;
    }

    if (*(this + 6) == 1.79769313e308 || *(this + 15) == 3.4028e38)
    {
      goto LABEL_19;
    }
  }

  v2 = *(this + 17);
  if (v2 <= 6 && ((1 << v2) & 0x61) != 0)
  {
LABEL_19:
    v1 = 1;
  }

LABEL_20:
  if (*(this + 72) == 1)
  {
    if (*(this + 10) == 3.40282347e38 || !*(this + 22))
    {
      v1 = 1;
    }
  }

  else
  {
    v1 |= *(this + 22) != 0;
  }

  return v1 & 1;
}

void BlueFin::GlMeSrdEstMultipath::Run(uint64_t a1, int a2, uint64_t a3, int a4, unsigned __int8 *a5, BlueFin::GlMeSrdCNoResults *this, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15, char a16, char a17, unsigned __int8 a18, uint64_t a19)
{
  v19 = this;
  BlueFin::GlMeSrdCNoResults::isGarbage(this);
  if (v23)
  {
    v78 = "!stCNoResults.isGarbage()";
    DeviceFaultNotify("glmesrd_multipath.cpp", 75, "Run", "!stCNoResults.isGarbage()");
    v79 = "glmesrd_multipath.cpp";
    v80 = 75;
    goto LABEL_98;
  }

  v24 = *(a5 + 4);
  if (v24 >= 0x23F)
  {
    v78 = "otSignalId.IsValid()";
    DeviceFaultNotify("glmesrd_multipath.cpp", 76, "Run", "otSignalId.IsValid()");
    v79 = "glmesrd_multipath.cpp";
    v80 = 76;
    goto LABEL_98;
  }

  if ((a1 + 12) != a5)
  {
    *(a1 + 12) = *a5;
    *(a1 + 16) = *(a5 + 1);
    *(a1 + 20) = v24;
  }

  if ((*v19 & 1) == 0)
  {
    *(a19 + 4) = 0;
    return;
  }

  v25 = a13;
  v26 = *(*(a3 + 24) + 4);
  v27 = BlueFin::GlMeSrdEstMultipath::Run(BlueFin::GlMeSrdPhysConst const&,BlueFin::GlMeSrdGlbTrkParams const&,BlueFin::GlMeGearTrkParams const&,BlueFin::GlSignalId const&,BlueFin::GlMeSrdCNoResults const&,BlueFin::GlMeSrdTrkAidStatus const&,BOOL,unsigned int,BlueFin::GlMeSrdAsicCorrVecTrkMsmt const&,BlueFin::GlMeSrdAsicCorrVecTrkMsmt const&,BlueFin::GlMeSrdPkFitResults const&,BlueFin::GlMeSrdPkFitResults const&,unsigned char,unsigned char,BOOL,BOOL,BOOL,BlueFin::GlMeSrdMultipathResults &)::fVeryLowThreshholds[4 * BlueFin::GlSvId::s_aucSvId2gnss[*a5] + *(a5 + 1)];
  if (*a12 == 1)
  {
    PkFitMultipathIndicator = BlueFin::GlMeSrdEstMultipath::GetPkFitMultipathIndicator(*(a12 + 44), *(v19 + 2), *(a12 + 8), *(a12 + 28), *(a12 + 45), a14, a15, a18, *(*(a3 + 24) + 4), BlueFin::GlMeSrdEstMultipath::Run(BlueFin::GlMeSrdPhysConst const&,BlueFin::GlMeSrdGlbTrkParams const&,BlueFin::GlMeGearTrkParams const&,BlueFin::GlSignalId const&,BlueFin::GlMeSrdCNoResults const&,BlueFin::GlMeSrdTrkAidStatus const&,BOOL,unsigned int,BlueFin::GlMeSrdAsicCorrVecTrkMsmt const&,BlueFin::GlMeSrdAsicCorrVecTrkMsmt const&,BlueFin::GlMeSrdPkFitResults const&,BlueFin::GlMeSrdPkFitResults const&,unsigned char,unsigned char,BOOL,BOOL,BOOL,BlueFin::GlMeSrdMultipathResults &)::fVeryLowThreshholds[4 * BlueFin::GlSvId::s_aucSvId2gnss[*a5] + *(a5 + 1)]);
  }

  else
  {
    PkFitMultipathIndicator = 0;
  }

  *(a19 + 8) = *(a12 + 8);
  *(a19 + 16) = *(a12 + 40) / *(a12 + 36);
  if (*a13 == 1)
  {
    v29 = BlueFin::GlMeSrdEstMultipath::GetPkFitMultipathIndicator(*(a13 + 44), *(v19 + 2), *(a13 + 8), *(a13 + 28), *(a13 + 45), a14, a15, a18, v26, v27);
  }

  else
  {
    v29 = 0;
  }

  v30 = *(a13 + 8);
  *(a19 + 12) = v30;
  *(a19 + 20) = *(a13 + 40) / *(a13 + 36);
  if (v29)
  {
    *(a19 + 4) = v29;
LABEL_18:
    v31 = v30 > 0.5;
    goto LABEL_19;
  }

  if (PkFitMultipathIndicator)
  {
    *(a19 + 4) = PkFitMultipathIndicator;
    v30 = *(a12 + 8);
    goto LABEL_18;
  }

  v31 = 0;
  *(a19 + 4) = 0;
LABEL_19:
  v32 = 0;
  *a19 = v31;
  v33 = *(a1 + 8);
  if (a16 && (*(a1 + 8) & 1) == 0)
  {
    v32 = 0;
    *(a19 + 44) = 1135869952;
    if (*v19 != 1)
    {
      v33 = 0;
      goto LABEL_71;
    }

    v33 = 0;
    if (*(v19 + 2) >= 30.0)
    {
      v34 = *(a10 + 156);
      v35 = *(a10 + 176) * 1000.0;
      v36 = 0.5;
      if (v35 <= 0.0 && (v36 = -0.5, v35 >= 0.0) || (v36 + v35) <= 4 && (v34 != 2 || (v58 = 0.5, v35 <= 0.0) && (v58 = -0.5, v35 >= 0.0) || (v58 + v35) < 4))
      {
        v32 = 0;
        v33 = 0;
        goto LABEL_71;
      }

      v37 = *(a10 + 52);
      if (*(a10 + 52))
      {
        v81 = v29;
        v82 = v19;
        v38 = 0;
        v39 = *(a10 + 53);
        v40 = *(a10 + 54);
        v43 = *(a10 + 152) - 139 < 0x24 && v34 == 0 || v34 == 3;
        v44 = (a10 + 116);
        v45 = 1000000.0;
        v46 = -1000000.0;
        do
        {
          if (v38 >= v40)
          {
            v47 = v39;
          }

          else
          {
            v47 = 0;
          }

          v49 = v34 == 2 && v38 > 4;
          if ((v47 & 1) == 0 && !v49 && (v38 - 5 >= 0xFFFFFFFD || !v43))
          {
            v51 = *(v44 - 12);
            v52 = *v44;
            if (v51 != 0.0 || (v53 = 0.0, v52 != 0.0))
            {
              v54 = a1;
              v55 = v40;
              v56 = atan2f(v52, v51);
              v40 = v55;
              a1 = v54;
              v25 = a13;
              v53 = (v56 * 360.0) / 6.28318531;
            }

            if (v53 < v45)
            {
              v45 = v53;
            }

            if (v53 > v46)
            {
              v46 = v53;
            }
          }

          ++v38;
          ++v44;
          --v37;
        }

        while (v37);
        v57 = v46 - v45;
        *(a19 + 44) = v57;
        v19 = v82;
        v29 = v81;
        v33 = 0;
        if (v46 - v45 > 50.0)
        {
          v32 = 4;
          *(a19 + 4) = 4;
          goto LABEL_71;
        }
      }

      else
      {
        v33 = 0;
        *(a19 + 44) = -906746880;
      }

      v32 = 2;
    }
  }

LABEL_71:
  *(a19 + 48) = v32;
  *(a19 + 52) = 0;
  v59 = *(v25 + 16);
  v60 = *(v25 + 20);
  *(a19 + 56) = v59;
  *(a19 + 60) = 0;
  *(a19 + 64) = v60;
  if ((v33 & 1) == 0 && a17 && v29 && !*(a5 + 1))
  {
    if (*(a1 + 20) >= 0x23Fu)
    {
      v78 = "IsValid()";
      DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
      v79 = "glsignalid.h";
      v80 = 679;
    }

    else if (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a1 + 16) - *(a1 + 16) + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 12)]])
    {
      v61 = *(a11 + 176);
      v62 = 0.5;
      if ((v61 * 1000.0) <= 0.0 && (v62 = -0.5, (v61 * 1000.0) >= 0.0) || (v62 + (v61 * 1000.0)) < 5 || *v19 != 1 || *(v19 + 2) < 20.0)
      {
LABEL_95:
        *(a19 + 56) = v59;
        return;
      }

      v63 = (*(v25 + 45) * 0.2) / v61;
      v64 = 0.5;
      if (v63 > 0.0 || (v64 = -0.5, v63 < 0.0))
      {
        v65 = (v64 + v63);
        if (v65)
        {
          v66 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a1 + 16) - *(a1 + 16) + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 12)]] * 0.001;
          v67 = (v61 / v66) * *(v19 + 3);
          v68 = v67 + 1.0;
          v69 = ((((v67 * 2.0) + 1.0) * 13.831) / v65) - (v68 * v68);
          v70 = v68 + v68;
          v71 = (((13.831 / v65) + -1.0) * (v69 * -4.0)) + (v70 * v70);
          if (v71 >= 0.0)
          {
            v72 = -v70;
            v73 = sqrtf(v71);
            v74 = v69 + v69;
            v75 = (v73 - v70) / v74;
            v76 = (v72 - v73) / v74;
            if (v76 < v75)
            {
              v76 = v75;
            }

            if (v76 < 0.1)
            {
              v76 = 0.1;
            }

            if (v76 < 0.8)
            {
              if (v59 <= v76)
              {
                v77 = 2;
              }

              else
              {
                v77 = 4;
                *(a19 + 4) = 4;
              }

              *(a19 + 52) = v77;
              *(a19 + 60) = v76;
              *(a19 + 64) = v60;
            }
          }

          goto LABEL_95;
        }
      }

      v78 = "ulNumCohIntervals > 0";
      DeviceFaultNotify("glmesrd_multipath.cpp", 606, "GetVeryEarlyThreshold", "ulNumCohIntervals > 0");
      v79 = "glmesrd_multipath.cpp";
      v80 = 606;
    }

    else
    {
      v78 = "ucMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
      v79 = "glsignalid.h";
      v80 = 686;
    }

LABEL_98:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v79, v80, v78);
  }
}

uint64_t BlueFin::GlMeSrdEstMultipath::GetPkFitMultipathIndicator(BlueFin::GlMeSrdEstMultipath *this, float a2, float a3, float a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned __int8 a8, float a9, float a10)
{
  if (!this)
  {
    DeviceFaultNotify("glmesrd_multipath.cpp", 440, "GetPkFitMultipathIndicator", "ucNumCvecsAveraged > 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_multipath.cpp", 440, "ucNumCvecsAveraged > 0");
  }

  v10 = this;
  result = 0;
  if (v10 >= a6 && a5 >= a7)
  {
    if (a2 >= 42.5)
    {
      goto LABEL_10;
    }

    if (fabsf(a4) > 0.4)
    {
      return 4;
    }

    v12 = 1.0;
    if (((a6 == 10) & a8) != 0)
    {
      v12 = 4.0;
    }

    if ((v12 * a9) >= a3)
    {
LABEL_10:
      if (a3 < a10)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 4;
    }
  }

  return result;
}

double BlueFin::GlMeSrdEstCodePrm::CalcPromptMagSqrdDllValidityTestStatSummand(BlueFin::GlMeSrdEstCodePrm *this, void *a2, void *a3)
{
  if (!a2)
  {
    v4 = "potBufElem != nullptr";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1695, "CalcPromptMagSqrdDllValidityTestStatSummand", "potBufElem != nullptr");
    v5 = 1695;
    goto LABEL_6;
  }

  if (this)
  {
    v4 = "potTestStatParam == nullptr";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1696, "CalcPromptMagSqrdDllValidityTestStatSummand", "potTestStatParam == nullptr");
    v5 = 1696;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_codeprm.cpp", v5, v4);
  }

  return *a2;
}

void BlueFin::GlMeSrdEstCodePrm::OverrideTrkCodePrmRmse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a6 != 1)
  {
    return;
  }

  if (*(a1 + 16) >= 0x23Fu)
  {
    v19 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v20 = 807;
    goto LABEL_20;
  }

  v6 = *(a1 + 8);
  v7 = BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 8)];
  v8 = *(a1 + 12);
  v9 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v8 + v7];
  v10 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v8 - v8 + v7];
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v19 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
    v20 = 815;
LABEL_20:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v20, v19);
  }

  v14 = (1000 * v9 / v10);
  v15 = __exp10f((*(a4 + 8) * 0.7) / 10.0);
  v16 = sqrtf((fmaxf(*(a5 + 88), 0.4) * fmaxf(*(a5 + 92), 0.5)) / (v15 + v15));
  *(a6 + 16) = v16;
  v17 = flt_298A359B0[(v6 - 52) < 0xE] * v14;
  v18 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v8 - v8 + v7];
  if (v18 <= 8 && ((1 << v18) & 0x134) != 0)
  {
    v17 = v17 * 0.5;
  }

  else if ((v6 - 76) <= 0x3E && ((1 << (v6 - 76)) & 0x7C0000000000001FLL) != 0 || (v6 - 33) <= 0x12)
  {
    v16 = v16 + v16;
    *(a6 + 16) = v16;
  }

  if (v16 < v17)
  {
    *(a6 + 16) = v17;
  }
}

uint64_t BlueFin::GlMeSrdAsicNavBitTrkMsmt::isGarbage(BlueFin::GlMeSrdAsicNavBitTrkMsmt *this)
{
  if (*this != 1)
  {
    return 0;
  }

  v1 = *(this + 394) == 1 && (*(this + 396) == 255 || *(this + 395) == 255);
  if (*(this + 2) == -1 || *(this + 100) == -1 || *(this + 330) == -1 || *(this + 166) == -1 || *(this + 336) == -1 || *(this + 167) == -1)
  {
    return 1;
  }

  return v1;
}

uint64_t BlueFin::GlMeSrdSatRptTrkMsmtMI::IsGridRunning(BlueFin::GlMeSrdSatRptTrkMsmtMI *this)
{
  if ((*(*this + 104) & 8) == 0)
  {
    return 0;
  }

  v2 = *(this + 2163);
  v3 = *(this + 433);
  v4 = v2 ^ 1;
  if (!v3)
  {
    v4 = 1;
  }

  if ((v2 & 1) == 0 && v3)
  {
    v4 = (*(this + 2161) & 1) == 0 && !*(this + 2162);
  }

  return v4 ^ 1u;
}

double BlueFin::GlMeSrdAsicConfig::GetCarrierNcoDrift(BlueFin::GlMeSrdAsicConfig *this, const BlueFin::GlSignalId *a2)
{
  BlueFin::GlMeSrdAsicConfig::VERIFY(this, 1);
  v4 = *(this + 3);
  if ((v4 & 0xF000FFFE) == 0x30000014)
  {
    goto LABEL_10;
  }

  if ((v4 & 0xF000FFFE) != 0x30000012)
  {
    result = 0.0;
    if ((v4 & 0xF100FFFE) != 0x31000014)
    {
      return result;
    }

LABEL_10:
    v5 = *a2;
    result = 0.0;
    if (!*a2)
    {
      return result;
    }

    if (v5 >= 0x21)
    {
      if (v5 < 0x42)
      {
        if (v5 >= 0x34)
        {
          v11 = &BlueFin::GlMeSrdAsicConfig::GetCarrierNcoDrift(BlueFin::GlSignalId const&)const::dGlnCphDriftRateMinnowLp;
          v12 = &BlueFin::GlMeSrdAsicConfig::GetCarrierNcoDrift(BlueFin::GlSignalId const&)const::dGlnCphDriftRateMinnowVlp;
          goto LABEL_32;
        }
      }

      else if (v5 >= 0x4C)
      {
        if (v5 < 0x8B)
        {
          v13 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[v5]];
          if (v13 == 13)
          {
            goto LABEL_39;
          }

          if (v13 == 8)
          {
            goto LABEL_15;
          }

          if (v13 != 7)
          {
            v8 = *(this + 546) == 4;
            v9 = &unk_298A33CF0;
            return v9[v8];
          }

          goto LABEL_38;
        }

        if (v5 > 0xAE)
        {
          if (v5 > 0xBC)
          {
            return result;
          }

          v8 = *(this + 547) == 4;
          v9 = &unk_298A33D00;
          return v9[v8];
        }
      }
    }

    v10 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[v5]];
    if (v10 == 5)
    {
LABEL_15:
      v8 = *(this + 547) == 4;
      v9 = &unk_298A33CD0;
      return v9[v8];
    }

    if (v10 != 4)
    {
      if (v10 == 2)
      {
        goto LABEL_15;
      }

LABEL_39:
      v8 = *(this + 546) == 4;
      v9 = &unk_298A33CC0;
      return v9[v8];
    }

LABEL_38:
    v8 = *(this + 547) == 4;
    v9 = &unk_298A33CE0;
    return v9[v8];
  }

  v5 = *a2;
  result = 0.0;
  if (!*a2)
  {
    return result;
  }

  if (v5 < 0x21)
  {
    goto LABEL_5;
  }

  if (v5 >= 0x42)
  {
    if (v5 >= 0x4C)
    {
      if (v5 < 0x8B)
      {
        v14 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[v5]];
        if (v14 == 13)
        {
          goto LABEL_44;
        }

        if (v14 == 8)
        {
          goto LABEL_8;
        }

        if (v14 != 7)
        {
          v8 = *(this + 546) == 4;
          v9 = &unk_298A33CA0;
          return v9[v8];
        }

        goto LABEL_43;
      }

      if (v5 > 0xAE)
      {
        if (v5 > 0xBC)
        {
          return result;
        }

        v8 = *(this + 547) == 4;
        v9 = &unk_298A33CB0;
        return v9[v8];
      }
    }

LABEL_5:
    v7 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[v5]];
    if (v7 == 5)
    {
LABEL_8:
      v8 = *(this + 547) == 4;
      v9 = &unk_298A33C80;
      return v9[v8];
    }

    if (v7 != 4)
    {
      if (v7 == 2)
      {
        goto LABEL_8;
      }

LABEL_44:
      v8 = *(this + 546) == 4;
      v9 = &unk_298A33C70;
      return v9[v8];
    }

LABEL_43:
    v8 = *(this + 547) == 4;
    v9 = &unk_298A33C90;
    return v9[v8];
  }

  if (v5 < 0x34)
  {
    goto LABEL_5;
  }

  v11 = &BlueFin::GlMeSrdAsicConfig::GetCarrierNcoDrift(BlueFin::GlSignalId const&)const::dGlnCphDriftRateMinnowLp;
  v12 = &BlueFin::GlMeSrdAsicConfig::GetCarrierNcoDrift(BlueFin::GlSignalId const&)const::dGlnCphDriftRateMinnowVlp;
LABEL_32:
  if (*(this + 546) == 4)
  {
    v11 = v12;
  }

  return v11[v5 - 52];
}

void BlueFin::GlMeSrdRptCtrl::Run(uint64_t a1, double a2, double a3, double a4, double a5, float a6, float a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, unsigned __int8 *a22, char a23, int a24, char a25, char a26, char a27, char a28, unsigned __int8 a29, char a30, char a31, char a32, char a33, char a34, char a35, char a36, unsigned __int8 a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  BlueFin::GlMeDSPMeas::init(a39, a22);
  if (a38)
  {
    *(a39 + 84) |= 0x2000000u;
  }

  if ((a39 + 100) != a22)
  {
    *(a39 + 100) = *a22;
    *(a39 + 104) = *(a22 + 1);
    *(a39 + 108) = *(a22 + 4);
  }

  *(a39 + 112) = a23;
  if (a21)
  {
    if (a21 != 1)
    {
      v132 = "0";
      DeviceFaultNotify("glmesrd_rptctrl.cpp", 175, "Run", "0");
      v133 = "glmesrd_rptctrl.cpp";
      v134 = 175;
      goto LABEL_296;
    }

    if (a24 <= 2)
    {
      switch(a24)
      {
        case 0:
          v51 = 10;
          goto LABEL_27;
        case 1:
          v51 = 11;
          goto LABEL_27;
        case 2:
          v51 = 12;
LABEL_27:
          *(a39 + 140) = v51;
          *(a39 + 144) = a32;
          *(a39 + 84) |= 0x100u;
          *(a39 + 48) = a20;
          *(a39 + 52) = a20;
          goto LABEL_28;
      }

      goto LABEL_298;
    }

    if (a24 == 3)
    {
      v51 = 13;
      goto LABEL_27;
    }

    if (a24 != 5)
    {
      if (a24 == 6)
      {
        v51 = 17;
        goto LABEL_27;
      }

LABEL_298:
      v132 = "0";
      DeviceFaultNotify("glmesrd_rptctrl.cpp", 167, "Run", "0");
      v133 = "glmesrd_rptctrl.cpp";
      v134 = 167;
      goto LABEL_296;
    }

    v53 = a25 == 0;
    v52 = 14;
    v54 = 16;
  }

  else
  {
    if (a27)
    {
      v52 = 9;
    }

    else
    {
      v52 = 8;
    }

    v53 = a28 == 0;
    v54 = 15;
  }

  if (!v53)
  {
    v52 = v54;
  }

  *(a39 + 140) = v52;
  *(a39 + 144) = a32;
  *(a39 + 48) = 0;
LABEL_28:
  if (*a11 == 1)
  {
    *(a39 + 40) = *(a11 + 8);
    *(a39 + 84) |= 0x40000u;
  }

  if (*(a22 + 4) >= 0x23Fu)
  {
    v132 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v133 = "glsignalid.h";
    v134 = 807;
    goto LABEL_296;
  }

  v55 = BlueFin::GlSvId::s_aucSvId2gnss[*a22];
  v56 = *(a22 + 1);
  v57 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v56 + v55];
  v58 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v56 - v56 + v55];
  if (v57)
  {
    v59 = v58 == 0;
  }

  else
  {
    v59 = 1;
  }

  if (v59)
  {
    v132 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
    v133 = "glsignalid.h";
    v134 = 815;
    goto LABEL_296;
  }

  EpochPerSymbol = BlueFin::GlSignalId::GetEpochPerSymbol(a22);
  if (*(a22 + 4) >= 0x23Fu)
  {
    goto LABEL_286;
  }

  v62 = BlueFin::GlSvId::s_aucSvId2gnss[*a22];
  v63 = &BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a22 + 1) - *(a22 + 1)];
  v64 = v63[v62];
  if (!v63[v62])
  {
    goto LABEL_99;
  }

  v65 = (a39 + 100);
  v197 = EpochPerSymbol;
  if (*(a13 + 1) == 1)
  {
    *(a39 + 84) |= 0x40u;
    v66 = *(a13 + 8);
    *(a39 + 32) = BlueFin::GlMeSrdAsicUnitConverter::HzToPpu((a39 + 100), v66, v61);
    v68 = BlueFin::GlMeSrdAsicUnitConverter::HzToPpu((a39 + 100), *(a13 + 16), v67);
    *(a39 + 56) = v68;
    v71.i32[0] = *(a39 + 32);
    *(a39 + 152) = 897988541;
    if (a28 && v68 >= 0.000000016)
    {
      *(a39 + 56) = 846234791;
    }
  }

  else
  {
    v72 = *(a13 + 8);
    *v71.i32 = BlueFin::GlMeSrdAsicUnitConverter::HzToPpu((a39 + 100), v72, v61);
    *(a39 + 56) = 897988541;
    *(a39 + 152) = 897988541;
  }

  v73 = (a8 + a9) / -299792458.0;
  v74 = *v71.i32 + v73;
  *(a39 + 32) = v74;
  *(a39 + 148) = v74;
  if (*(a13 + 34))
  {
    v75 = *(a39 + 84) | 0x80;
    *(a39 + 84) = v75;
    if ((*(a13 + 35) & 1) == 0)
    {
LABEL_48:
      if (*(a22 + 4) < 0x23Fu)
      {
        v76 = *a22;
        v77 = BlueFin::GlSvId::s_aucSvId2gnss[v76];
        v78 = *(a22 + 1);
        v79 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v78 - v78 + v77]];
        if (v77 == 2)
        {
          v80 = (v76 - 59);
          if ((v76 - 52) >= 0xE)
          {
            v80 = -8.0;
          }

          v79 = v79 + v80 * 562500.0;
        }

        v81 = 299792458.0 / v79;
        v82 = v81 * -*(a13 + 40);
        *(a39 + 8) = v82;
        *&v81 = v81 * *(a13 + 56);
        *(a39 + 60) = LODWORD(v81);
        if (*(a39 + 48) <= 0x3E8u)
        {
          *(a39 + 60) = 2139095039;
          *(a39 + 84) = v75 & 0xFF7DFF7F | 0x20000;
          *(a42 + 100) |= 0x20u;
        }

        goto LABEL_61;
      }

LABEL_289:
      v132 = "IsValid()";
      DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
      v133 = "glsignalid.h";
      v134 = 651;
      goto LABEL_296;
    }

LABEL_47:
    v75 |= 0x800000u;
    *(a39 + 84) = v75;
    goto LABEL_48;
  }

  if (*(a13 + 35) == 1)
  {
    v75 = *(a39 + 84);
    goto LABEL_47;
  }

  if (*(a22 + 4) >= 0x23Fu)
  {
    goto LABEL_289;
  }

  v83 = *a22;
  v84 = BlueFin::GlSvId::s_aucSvId2gnss[v83];
  v78 = *(a22 + 1);
  v85 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v78 - v78 + v84]];
  if (v84 == 2)
  {
    v86 = (v83 - 59);
    if ((v83 - 52) >= 0xE)
    {
      v86 = -8.0;
    }

    v85 = v85 + v86 * 562500.0;
  }

  v82 = 299792458.0 / v85 * -*(a13 + 40);
  *(a39 + 8) = v82;
  *(a39 + 60) = 2139095039;
  *(a39 + 84) = *(a39 + 84) & 0xFF7DFF7F | 0x20000;
LABEL_61:
  v87 = v74 + 1.0;
  v88 = v64 * 0.001 / v87;
  if (*(a13 + 36) != 1)
  {
    v99 = *a22;
    v100 = BlueFin::GlSvId::s_aucSvId2gnss[v99];
    v101 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v78 - v78 + v100]];
    if (v100 == 2)
    {
      v102 = (v99 - 59);
      if ((v99 - 52) >= 0xE)
      {
        v102 = -8.0;
      }

      v101 = v101 + v102 * 562500.0;
    }

    v96 = a1;
    v98 = 299792458.0 / v101 * -*(a13 + 48);
    v89 = (a39 + 84);
    v90 = *(a39 + 84);
    *(a39 + 120) = v98;
    *(a39 + 128) = 2139095039;
    goto LABEL_73;
  }

  v89 = (a39 + 84);
  v90 = *(a39 + 84);
  v91 = v90 | 0x1000000;
  *(a39 + 84) = v90 | 0x1000000;
  v92 = *a22;
  v93 = BlueFin::GlSvId::s_aucSvId2gnss[v92];
  v94 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v78 - v78 + v93]];
  if (v93 == 2)
  {
    v95 = (v92 - 59);
    if ((v92 - 52) >= 0xE)
    {
      v95 = -8.0;
    }

    v94 = v94 + v95 * 562500.0;
  }

  v96 = a1;
  v97 = 299792458.0 / v94;
  *(a39 + 120) = v97 * -*(a13 + 48);
  v98 = v97 * *(a13 + 60);
  *&v98 = v98;
  *(a39 + 128) = LODWORD(v98);
  if (*(a39 + 48) <= 0x3E8u)
  {
    *(a39 + 128) = 2139095039;
LABEL_73:
    v91 = v90 & 0xFEFFFFFF;
    *v89 = v90 & 0xFEFFFFFF;
  }

  v103 = 1.0 / (1000 * v57 / v58) / v87;
  LOBYTE(v98) = *(a12 + 1);
  v104 = a2 - v88 * *&v98 + v88 * *(a12 + 2);
  if (*a12 == 1)
  {
    v105 = (v64 * v197) * 0.001 / v87;
    v106 = v103 * *(a12 + 8);
    v107 = v103 * *(a12 + 16);
    v108 = v106 > -v105 && v106 < v105;
    v109 = v105 + v104;
    if (v108)
    {
      v109 = v104;
    }

    v110 = v109 - v106;
    *(a39 + 24) = v109 - v106;
    v111 = v107;
    *(a39 + 68) = v111;
    v91 |= 0x20u;
  }

  else
  {
    v110 = v104 - a3;
    *(a39 + 24) = v104 - a3;
    v112 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v78 - v78 + BlueFin::GlSvId::s_aucSvId2gnss[*a22]];
    if (!v112)
    {
      goto LABEL_99;
    }

    v113 = v112 * 0.001;
    *(a39 + 68) = v113;
  }

  *(a39 + 8) = v82 + (a8 + a9) * v110;
  *(a39 + 64) = 0;
  v114 = v91 & 0xFBFFFFEF | 0x10;
  v115 = v91 | 0x4000010;
  if (*(a19 + 2))
  {
    v116 = v115;
  }

  else
  {
    v116 = v114;
  }

  *(a39 + 84) = v116;
  v117 = *(a19 + 1);
  if (*(a19 + 1))
  {
    v119 = (a19 + 16);
    do
    {
      v118 = (v104 - a3 - v110) / v103;
      *v119 = *v119 + v118;
      v119 += 5;
      --v117;
    }

    while (v117);
  }

  if (*a22 - 139 < 0x24)
  {
    v120 = v116 | 0x608;
    v122 = a24;
    v121 = a21;
    v123 = a16;
    v124 = a15;
    goto LABEL_198;
  }

  v198 = a12;
  v125 = *a14;
  v126 = a14[8];
  v127 = a14[9];
  EpochPerBit = BlueFin::GlSignalId::GetEpochPerSymbol((a39 + 100));
  if (*(a39 + 108) >= 0x23Fu)
  {
    goto LABEL_286;
  }

  v129 = *(a39 + 100);
  v130 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a39 + 104) - *(a39 + 104) + BlueFin::GlSvId::s_aucSvId2gnss[*(a39 + 100)]];
  if (!v130)
  {
LABEL_99:
    v132 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v133 = "glsignalid.h";
    v134 = 686;
    goto LABEL_296;
  }

  if ((v129 - 175) < 0xFFFFFFDC)
  {
    v131 = (v126 & a28);
  }

  else
  {
    v131 = 0;
  }

  v200 = v131;
  v195 = v126 & a28;
  if ((v129 - 76) > 0x3E)
  {
    v124 = a15;
    v96 = a1;
    goto LABEL_101;
  }

  EpochPerBit = BlueFin::GlSignalId::GetEpochPerBit((a39 + 100));
  v124 = a15;
  if (*(a39 + 108) >= 0x23Fu)
  {
LABEL_286:
    v132 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v133 = "glsignalid.h";
    v134 = 679;
    goto LABEL_296;
  }

  v129 = *(a39 + 100);
  v130 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a39 + 104) - *(a39 + 104) + BlueFin::GlSvId::s_aucSvId2gnss[*(a39 + 100)]];
  v96 = a1;
  if (!v130)
  {
    goto LABEL_99;
  }

LABEL_101:
  v135 = v130 * EpochPerBit;
  v136 = *(v96 + 20);
  v110 = *(a39 + 24);
  if (v136 >= 2)
  {
    v194 = v125;
    v202 = v129;
    v137 = v127;
    v138 = (v110 - *(v96 + 8)) * 1000.0;
    v139 = (v138 + -0.5);
    if (v138 >= 0.0)
    {
      v139 = 0;
    }

    if (v138 > 0.0)
    {
      v139 = (v138 + 0.5);
    }

    v140 = v135;
    v141 = v135;
    v142 = v135;
    *v71.i64 = fmod(v139, v141);
    if (*v71.i64 < 0.0)
    {
      *v71.i64 = *v71.i64 + v141;
    }

    if (*v71.i64 < 0.0)
    {
      v132 = "dMsDelta >= 0";
      DeviceFaultNotify("glmesrd_rptctrl.cpp", 861, "UpdatePromptBitState", "dMsDelta >= 0");
      v133 = "glmesrd_rptctrl.cpp";
      v134 = 861;
      goto LABEL_296;
    }

    v143 = 0.0;
    if (*v71.i64 > (v142 >> 1))
    {
      v143 = v140;
    }

    v144 = *v71.i64 - v143;
    if (v144 >= v141)
    {
      v132 = "dMsDelta < ucObservableBitIntInMs";
      DeviceFaultNotify("glmesrd_rptctrl.cpp", 865, "UpdatePromptBitState", "dMsDelta < ucObservableBitIntInMs");
      v133 = "glmesrd_rptctrl.cpp";
      v134 = 865;
      goto LABEL_296;
    }

    v135 = v142;
    v145 = 0.5;
    v96 = a1;
    v127 = v137;
    v129 = v202;
    v125 = v194;
    if (fabs(v144) >= 0.5)
    {
      if (v144 <= 0.0)
      {
        v145 = -0.5;
      }

      v146 = v144 + v145;
      v147 = *(a1 + 24);
      v148 = v147 - v146;
      if (v140 <= (v147 - v146))
      {
        v149 = v135;
      }

      else
      {
        v149 = 0;
      }

      v150 = v148 - v149;
      *(a1 + 24) = v150;
      if (((v140 + v150) < 0) ^ __OFADD__(v140, v150) | (v140 + v150 == 0))
      {
        *(a1 + 24) = v150 + v135;
      }
    }
  }

  v151 = v126 & v125;
  *(v96 + 8) = v110;
  v122 = a24;
  if (v136 <= 2)
  {
    v65 = (a39 + 100);
    a12 = v198;
    if (v136 < 2)
    {
      if (v151)
      {
        LOBYTE(v152) = a14[10];
        *(v96 + 24) = v152;
        *(v96 + 16) = 0;
        v121 = a21;
        v123 = a16;
        if (v127)
        {
          v153 = 3;
        }

        else
        {
          v153 = 2;
        }

        goto LABEL_148;
      }

      if (v200)
      {
        LOBYTE(v152) = 0;
        *(v96 + 24) = 0;
        *(v96 + 16) = 0;
        v153 = 2;
LABEL_153:
        *(v96 + 20) = v153;
        v121 = a21;
        v123 = a16;
        goto LABEL_182;
      }

      v161 = v195 ^ 1;
      if ((a24 - 1) <= 2)
      {
        v161 = 0;
      }

      if ((v161 & 1) == 0)
      {
        LOBYTE(v152) = 0;
        *(v96 + 24) = 0;
        v153 = 1;
        goto LABEL_153;
      }

      if (!v136)
      {
        v153 = 0;
        v121 = a21;
        v123 = a16;
        goto LABEL_185;
      }

      v153 = 1;
      goto LABEL_166;
    }

    if (v136 == 2)
    {
      v121 = a21;
      v123 = a16;
      if (v151)
      {
        if (v127)
        {
          *(v96 + 20) = 3;
          v156 = a14[10];
          v157 = *(v96 + 24) - v156;
          if (v157 < 0)
          {
            v157 = a14[10] - *(v96 + 24);
          }

          if (v157 > 1)
          {
            v158 = -1;
          }

          else
          {
            v158 = 1;
          }

          *(v96 + 16) = v158;
          v153 = 3;
        }

        else
        {
          v156 = a14[10];
          if (*(v96 + 24) - v156 >= 0)
          {
            v164 = *(v96 + 24) - a14[10];
          }

          else
          {
            v164 = a14[10] - *(v96 + 24);
          }

          v165 = *(v96 + 16);
          if (v164 > 2)
          {
            v166 = v165 - 1;
          }

          else
          {
            v166 = v165 + 1;
          }

          *(v96 + 16) = v166;
          v153 = 2;
        }

        *(v96 + 24) = v156;
      }

      else
      {
        v163 = (v129 - 76) < 5 || (v129 - 134) < 5;
        v153 = 2;
        if (!a24 && v163)
        {
          v153 = 0;
          *(v96 + 20) = 0;
LABEL_189:
          v170 = *(a39 + 84) & 0xFFF7FFFF;
          goto LABEL_190;
        }
      }

      goto LABEL_181;
    }

    goto LABEL_299;
  }

  v65 = (a39 + 100);
  a12 = v198;
  if (v136 != 3)
  {
    if (v136 == 4)
    {
      v121 = a21;
      v123 = a16;
      if (v151 & v127)
      {
        v152 = a14[10];
        v154 = *(v96 + 16);
        if (*(v96 + 24) == v152)
        {
          v155 = v154 + 1;
        }

        else
        {
          v155 = v154 - 1;
        }

        *(v96 + 16) = v155;
        if (v155 < 6)
        {
          if (v155 < 0)
          {
            v153 = 3;
            *(v96 + 20) = 3;
            *(v96 + 24) = v152;
            goto LABEL_182;
          }
        }

        else
        {
          *(v96 + 16) = 5;
        }
      }

      v153 = 4;
      goto LABEL_181;
    }

LABEL_299:
    v132 = "0";
    DeviceFaultNotify("glmesrd_rptctrl.cpp", 1065, "UpdatePromptBitState", "0");
    v133 = "glmesrd_rptctrl.cpp";
    v134 = 1065;
LABEL_296:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v133, v134, v132);
  }

  if ((v151 & v127 & 1) == 0)
  {
    v153 = 3;
LABEL_166:
    v121 = a21;
    v123 = a16;
LABEL_181:
    LOBYTE(v152) = *(v96 + 24);
    goto LABEL_182;
  }

  v152 = *(v96 + 24);
  v159 = a14[10];
  v121 = a21;
  v123 = a16;
  if (v152 != v159)
  {
    *(v96 + 16) = 0;
    goto LABEL_168;
  }

  v160 = ++*(v96 + 16);
  if (v160 < 2)
  {
LABEL_168:
    *(v96 + 24) = v159;
    v153 = 3;
    goto LABEL_181;
  }

  v153 = 4;
LABEL_148:
  *(v96 + 20) = v153;
LABEL_182:
  v167 = v88 * v152;
  if (v167 >= vcvtd_n_f64_u32(v135, 1uLL) * 0.001)
  {
    v167 = v167 + (1.0 - *(a39 + 32)) * (v135 * -0.001);
  }

  v110 = v110 + v167;
  *(a39 + 16) = v167 + *(a39 + 16);
  *(a39 + 24) = v110;
LABEL_185:
  if ((v129 - 52) > 0xD)
  {
    goto LABEL_189;
  }

  v168 = *(a39 + 84);
  v169 = v168 & 0xFFF7FFFF;
  v170 = v168 | 0x80000;
  if (a24 != 2)
  {
    v170 = v169;
  }

LABEL_190:
  if (v153 <= 1)
  {
    v171 = v170 & 0xFFFFF9F7;
    if (v153)
    {
      v120 = v171 | 0x400;
    }

    else
    {
      v120 = v171;
    }
  }

  else if ((v153 - 2) >= 2)
  {
    *(a39 + 84) = v170 | 0x408;
    if (!a24)
    {
      v120 = v170 & 0xFFFFF9F7 | 0x408;
      *(a39 + 84) = v120;
      if (*a22 - 76 > 0x3E)
      {
        goto LABEL_206;
      }

      goto LABEL_203;
    }

    v120 = v170 | 0x608;
  }

  else
  {
    v120 = v170 & 0xFFFFF9F7 | 0x408;
  }

LABEL_198:
  *(a39 + 84) = v120;
  if (*a22 - 76 >= 0x3F)
  {
    goto LABEL_206;
  }

  if (v122)
  {
    if (!v121)
    {
      goto LABEL_206;
    }

LABEL_205:
    v120 |= 0x608u;
    *(a39 + 84) = v120;
    goto LABEL_206;
  }

LABEL_203:
  if (v121 && (a14[8] & 1) != 0)
  {
    goto LABEL_205;
  }

LABEL_206:
  *(a39 + 8) = *(a39 + 8) + *(a39 + 32) * -299792458.0 * (v110 - a2);
  *(a39 + 24) = v110 + v110 * a9 / 299792458.0;
  v172 = *(v123 + 4);
  v173 = *(a17 + 4);
  *(a39 + 88) = v172;
  *(a39 + 92) = v173;
  *(v96 + 28) = v172;
  *(v96 + 32) = v173;
  *(a39 + 136) = *(a13 + 96);
  *(a39 + 132) = *(a13 + 92);
  if (*(a18 + 1) == 1)
  {
    *(a39 + 72) = *(a18 + 16);
    *v71.i64 = *(a18 + 8) * 1000.0;
    *v70.i64 = *v71.i64 + trunc(*v71.i64 * 2.32830644e-10) * -4294967300.0;
    v174.f64[0] = NAN;
    v174.f64[1] = NAN;
    v175 = vnegq_f64(v174);
    v70.i64[0] = vbslq_s8(v175, v70, v71).u64[0];
    if (*v71.i64 > 4294967300.0)
    {
      v71.i64[0] = v70.i64[0];
    }

    if (*v71.i64 < -4294967300.0)
    {
      *v69.i64 = -*v71.i64;
      *v71.i64 = -(*v71.i64 - trunc(*v71.i64 * -2.32830644e-10) * -4294967300.0);
      *v71.i64 = -*vbslq_s8(v175, v71, v69).i64;
    }

    if (*v71.i64 < 0.0)
    {
      v176 = --*v71.i64;
    }

    else
    {
      v176 = *v71.i64;
    }

    *(a39 + 76) = v176;
    *(a39 + 80) = *(a18 + 20);
    *(a39 + 84) = v120 | 0x100000;
  }

  if (v121)
  {
    if (a29)
    {
      v132 = "!bCorrvecIsSaturated";
      DeviceFaultNotify("glmesrd_rptctrl.cpp", 496, "Run", "!bCorrvecIsSaturated");
      v133 = "glmesrd_rptctrl.cpp";
      v134 = 496;
      goto LABEL_296;
    }

    if (a30)
    {
      v132 = "!bIsCcmIntermediateReport";
      DeviceFaultNotify("glmesrd_rptctrl.cpp", 497, "Run", "!bIsCcmIntermediateReport");
      v133 = "glmesrd_rptctrl.cpp";
      v134 = 497;
      goto LABEL_296;
    }

    if (a31)
    {
      v132 = "!bXcorrDetected";
      DeviceFaultNotify("glmesrd_rptctrl.cpp", 498, "Run", "!bXcorrDetected");
      v133 = "glmesrd_rptctrl.cpp";
      v134 = 498;
      goto LABEL_296;
    }

    v177 = a37;
    if (a37)
    {
      *(a39 + 84) |= 0x800u;
    }

    if ((a35 & 1) == 0)
    {
      v178 = *v65;
      if (v178 >= 0x21 && v178 <= 0x33 && *(a39 + 140) == 10)
      {
        *(a42 + 100) |= 0x200u;
        v177 = 1;
      }
    }

    if ((*(a39 + 86) & 4) != 0 && *(a39 + 40) < a6)
    {
      *(a42 + 100) |= 4u;
      v177 = 1;
    }

    if (a33 && *a12 == 1 && *(a12 + 26) == 1 && ((*(a12 + 27) & 1) != 0 || *(a12 + 32) > a7))
    {
      *(a42 + 100) |= 0x400u;
      v179 = *(a39 + 84);
    }

    else
    {
      v179 = *(a39 + 84);
      if (!v177)
      {
LABEL_236:
        if ((v179 & 0x40) != 0 && *(a13 + 28) == 1 && (*(a13 + 29) & 1) == 0)
        {
          *(a39 + 84) = v179 | 0x1000;
        }

        goto LABEL_253;
      }
    }

    v179 &= 0xFE7FFF1F;
    *(a39 + 84) = v179;
    *(a39 + 56) = 897988541;
    goto LABEL_236;
  }

  v180 = *(a39 + 84);
  v182 = (v180 & 8) == 0 && *(a39 + 140) == 15;
  if ((a29 & ~a36 & 1) != 0 || (a30 & 1) != 0 || (a31 & 1) != 0 || v182)
  {
    v183 = v180 & 0xFE7FFF1F;
    v184 = v180 & 0xFE7F7F1F | 0x8000;
    if (a31)
    {
      v183 = v184;
    }

    *(a39 + 84) = v183;
    *(a39 + 56) = 897988541;
  }

LABEL_253:
  *(a40 + 44) = 0u;
  *(a40 + 8) = 0;
  *(a40 + 12) = 0;
  *(a40 + 16) = 0;
  *(a40 + 20) = 0;
  *(a40 + 32) = 0;
  *(a40 + 40) = 0;
  *(a40 + 60) = 0u;
  *(a40 + 76) = 0u;
  *(a40 + 92) = 0u;
  *(a40 + 108) = 0u;
  *(a40 + 124) = 0u;
  *(a40 + 140) = 0u;
  *(a40 + 156) = 0u;
  *(a40 + 172) = 0u;
  *(a40 + 188) = 0u;
  *(a40 + 204) = 0u;
  *(a40 + 220) = 0u;
  *(a40 + 236) = 0u;
  *(a40 + 252) = 0u;
  *(a40 + 268) = 0u;
  *(a40 + 284) = 0u;
  *(a41 + 44) = 0u;
  *(a41 + 8) = 0;
  *(a41 + 12) = 0;
  *(a41 + 16) = 0;
  *(a41 + 20) = 0;
  *(a41 + 32) = 0;
  *(a41 + 40) = 0;
  *(a41 + 60) = 0u;
  *(a41 + 76) = 0u;
  *(a41 + 92) = 0u;
  *(a41 + 108) = 0u;
  *(a41 + 124) = 0u;
  *(a41 + 140) = 0u;
  *(a41 + 156) = 0u;
  *(a41 + 172) = 0u;
  *(a41 + 188) = 0u;
  *(a41 + 204) = 0u;
  *(a41 + 220) = 0u;
  *(a41 + 236) = 0u;
  *(a41 + 252) = 0u;
  *(a41 + 268) = 0u;
  *(a41 + 284) = 0u;
  if (!v124 || *v65 - 33 <= 0x12 && *(v124 + 930) != 1 || (*(a39 + 84) & 0x10) == 0)
  {
    return;
  }

  if (*(v124 + 2) >= 0x3E9u)
  {
    v132 = "rNavBitResults.usNumSymInMsmtInt <= 1000";
    DeviceFaultNotify("glmesrd_rptctrl.cpp", 660, "Run", "rNavBitResults.usNumSymInMsmtInt <= 1000");
    v133 = "glmesrd_rptctrl.cpp";
    v134 = 660;
    goto LABEL_296;
  }

  if (*v124 == 1)
  {
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x3F);
    }

    v185 = *(a39 + 112);
    v186 = *(a39 + 140);
    if (*(v124 + 918) == 1)
    {
      BlueFin::GlMeDSPDataBits::Set(a40, v185, v65, v186, *(v124 + 2), *(v124 + 924), *(v124 + 924), *(v124 + 928), *(a39 + 24), (v124 + 660), *(v124 + 919), v124 + 788, 1);
      v185 = *(a39 + 112);
      v186 = *(a39 + 140);
    }

    else
    {
      v187 = *(v124 + 924);
      v188 = *(a39 + 24);
      *(a40 + 8) = v185;
      *(a40 + 9) = *(a39 + 100);
      *(a40 + 16) = 0;
      *(a40 + 20) = v187;
      *(a40 + 24) = v187;
      *(a40 + 32) = v188;
      if (v186 - 12 > 5)
      {
        v189 = 16;
      }

      else
      {
        v189 = *&aP_1[4 * v186 - 48];
      }

      *(a40 + 12) = v189;
    }

    if (*(v124 + 648) == 1)
    {
      BlueFin::GlMeDSPDataBits::Set(a41, v185, v65, v186, *(v124 + 2), *(v124 + 924), *(v124 + 924), *(v124 + 928), *(a39 + 24), (v124 + 264), *(v124 + 649), v124 + 136, 0);
    }

    else
    {
      v190 = *(v124 + 924);
      v191 = *(a39 + 24);
      *(a41 + 8) = v185;
      *(a41 + 9) = *(a39 + 100);
      *(a41 + 16) = 0;
      *(a41 + 20) = v190;
      *(a41 + 24) = v190;
      *(a41 + 32) = v191;
      if (v186 - 12 > 5)
      {
        v192 = 18;
      }

      else
      {
        v192 = dword_298A369A4[v186 - 12];
      }

      *(a41 + 12) = v192;
    }

    if ((*(a39 + 86) & 4) != 0)
    {
      v193 = *(a39 + 40);
      if (v193 > 32.0)
      {
        *(a40 + 12) |= 0x80u;
      }

      if (v193 > 30.0)
      {
        *(a41 + 12) |= 0x80u;
      }
    }

    if ((*(a39 + 86) & 2) != 0)
    {
      *(a40 + 12) |= 0x200u;
    }

    if (*(v124 + 4))
    {
      *(a41 + 12) |= 0x200u;
    }
  }
}

uint64_t BlueFin::GlMeSrdSatReport::PerformFinalValidityChecks(uint64_t this, BlueFin::GlMeDSPMeas *a2, BlueFin::GlMeSrdDspMeasAux *a3)
{
  if (*(a2 + 100) - 189 <= 0xFFFFFF43)
  {
    v8 = "IS_SVID(*otDspMeas.otSignalId.GetSvId())";
    DeviceFaultNotify("glmesrd_sat_report_validity_chk.cpp", 41, "PerformFinalValidityChecks", "IS_SVID(*otDspMeas.otSignalId.GetSvId())");
    v9 = 41;
    goto LABEL_20;
  }

  if (*(a2 + 14) < 0.0)
  {
    v8 = "otDspMeas.fDopplerUncPpu >= 0.0";
    DeviceFaultNotify("glmesrd_sat_report_validity_chk.cpp", 44, "PerformFinalValidityChecks", "otDspMeas.fDopplerUncPpu >= 0.0");
    v9 = 44;
    goto LABEL_20;
  }

  if (*(a2 + 15) < 0.0)
  {
    v8 = "otDspMeas.fCarPhaseUncM >= 0.0";
    DeviceFaultNotify("glmesrd_sat_report_validity_chk.cpp", 45, "PerformFinalValidityChecks", "otDspMeas.fCarPhaseUncM >= 0.0");
    v9 = 45;
    goto LABEL_20;
  }

  if (*(a2 + 17) < 0.0)
  {
    v8 = "otDspMeas.fPeakOffUncS >= 0.0";
    DeviceFaultNotify("glmesrd_sat_report_validity_chk.cpp", 46, "PerformFinalValidityChecks", "otDspMeas.fPeakOffUncS >= 0.0");
    v9 = 46;
LABEL_20:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_validity_chk.cpp", v9, v8);
  }

  v5 = *(a3 + 9);
  if (v5 == 4)
  {
    return this;
  }

  v6 = this;
  if (v5 != 2)
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 26);
  if (v7 != 3)
  {
    if (v7 == 2)
    {
      if ((*(a2 + 87) & 4) == 0)
      {
        return this;
      }
    }

    else if (v7)
    {
LABEL_10:
      *(this + 3196) = 0;
      *(this + 3192) = 0;
      return this;
    }
  }

  BlueFin::GlMeSrdSatReport::UpdateInvalidCounts(this, a2, a3);
  BlueFin::GlMeSrdSatReport::GenerateAcqMgrRequests(v6, a2, a3);

  return BlueFin::GlMeSrdSatReport::UpdateMsmtCensorshipStatus(v6, a2, a3);
}

uint64_t BlueFin::GlMeSrdSatReport::UpdateInvalidCounts(BlueFin::GlMeSrdSatReport *this, BlueFin::GlMeDSPMeas *a2, BlueFin::GlMeSrdDspMeasAux *a3)
{
  result = BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3);
  v6.i32[0] = *(result + 25);
  v7 = vminv_u16(vmin_u16((*&vdup_n_s16(*(result + 24)) & 0xFF00FF00FF00FFLL), *&vmovl_u8(v6)));
  v8 = v7;
  v9 = *(result + 28) + 10 * *(result + 27);
  if (v9 <= 0x20)
  {
    v10 = v7;
  }

  else
  {
    v10 = 3;
  }

  if (v9 > 0x2B)
  {
    v10 = 4;
  }

  if (v9 < 0x38)
  {
    v8 = v10;
  }

  if ((*result & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_report_validity_chk.cpp", 104, "UpdateInvalidCounts", "rTrkRslts.m_bValid");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_validity_chk.cpp", 104, "rTrkRslts.m_bValid");
  }

  v11 = *(a2 + 21);
  v12 = *(result + 8);
  v13 = *(result + 128);
  v14 = *(this + 3192);
  if (v11 & 0x20) != 0 || (*(result + 32))
  {
    if (!*(this + 3192))
    {
      goto LABEL_20;
    }

    v16 = v14 - 1;
    if (v8 > 2u)
    {
      v16 = 0;
    }

    goto LABEL_19;
  }

  if ((v11 & 0x4000000) != 0)
  {
    v15 = 100;
  }

  else
  {
    v15 = 10;
  }

  if (v14 <= v15)
  {
    v16 = v14 + 1;
LABEL_19:
    *(this + 3192) = v16;
  }

LABEL_20:
  v17 = *&v12 & ((v13 & 4) >> 2);
  v18 = *(this + 3194);
  if ((v11 & 0x40) != 0)
  {
    if (!*(this + 3194))
    {
      goto LABEL_30;
    }

    v20 = v18 - 1;
    if (v8 > 2u)
    {
      v20 = 0;
    }

    goto LABEL_29;
  }

  if ((*(a2 + 87) & 4) != 0)
  {
    v19 = 100;
  }

  else
  {
    v19 = 10;
  }

  if (v18 <= v19)
  {
    v20 = v18 + 1;
LABEL_29:
    *(this + 3194) = v20;
  }

LABEL_30:
  v21 = *&v12 & ((v13 & 8) >> 3);
  v22 = *(this + 3195);
  if ((v17 & 1) == 0)
  {
    if (!*(this + 3195))
    {
      goto LABEL_41;
    }

    v25 = v22 - 1;
    if (v8 <= 2u)
    {
      v24 = v25;
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_40;
  }

  if ((*(a2 + 87) & 4) != 0)
  {
    v23 = 100;
  }

  else
  {
    v23 = 10;
  }

  if (v22 <= v23)
  {
    v24 = v22 + 1;
LABEL_40:
    *(this + 3195) = v24;
  }

LABEL_41:
  v26 = *(this + 3196);
  if ((v21 & 1) == 0)
  {
    if (!*(this + 3196))
    {
      goto LABEL_52;
    }

    v29 = v26 - 1;
    if (v8 <= 2u)
    {
      v28 = v29;
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_51;
  }

  if ((*(a2 + 87) & 4) != 0)
  {
    v27 = 100;
  }

  else
  {
    v27 = 10;
  }

  if (v26 <= v27)
  {
    v28 = v26 + 1;
LABEL_51:
    *(this + 3196) = v28;
  }

LABEL_52:
  v30 = *(this + 3197);
  if ((v13 & 0x1000) != 0)
  {
    if ((*(a2 + 87) & 4) != 0)
    {
      v33 = 100;
    }

    else
    {
      v33 = 10;
    }

    if (v30 <= v33)
    {
      v32 = v30 + 1;
LABEL_62:
      *(this + 3197) = v32;
    }
  }

  else if (*(this + 3197))
  {
    v31 = v30 - 1;
    if (v8 <= 2u)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    goto LABEL_62;
  }

  if ((v11 & 8) != 0 || (v34 = *(a2 + 35), v34 <= 0x11) && ((1 << v34) & 0x21800) != 0)
  {
    if (!*(this + 3193))
    {
      return result;
    }

    v35 = this + 3193;
    if (v8 <= 2u)
    {
      v36 = *(this + 3193) - 1;
    }

    else
    {
      v36 = 0;
    }

    goto LABEL_70;
  }

  v37 = *(this + 3193);
  if (v37 <= 8)
  {
    v35 = this + 3193;
    v36 = v37 + 1;
LABEL_70:
    *v35 = v36;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSatReport::UpdateMsmtCensorshipStatus(BlueFin::GlMeSrdSatReport *this, BlueFin::GlMeDSPMeas *a2, BlueFin::GlMeSrdDspMeasAux *a3)
{
  v6 = *(a2 + 21);
  result = (*(**(*(this + 1) + 24) + 40))(*(*(this + 1) + 24));
  v8 = result;
  if (result)
  {
    v9 = 0;
    while (*(a3 + v9 + 88) != 255)
    {
      if (++v9 == 5)
      {
        goto LABEL_7;
      }
    }

    *(a2 + 21) &= ~0x20u;
  }

LABEL_7:
  if (*(this + 3198))
  {
    result = BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3);
    v10.i32[0] = *(result + 25);
    v11 = vminv_u16(vmin_u16((*&vdup_n_s16(*(result + 24)) & 0xFF00FF00FF00FFLL), *&vmovl_u8(v10)));
    v12 = v11;
    v13 = *(result + 28) + 10 * *(result + 27);
    if (v13 <= 0x20)
    {
      v14 = v11;
    }

    else
    {
      v14 = 3;
    }

    if (v13 > 0x2B)
    {
      v14 = 4;
    }

    if (v13 < 0x38)
    {
      v12 = v14;
    }

    if (~v6 & 0x40060) != 0 || (*(a3 + 180))
    {
      goto LABEL_22;
    }

    v15 = *(this + 3199);
    if (v15 >= 1)
    {
      *(this + 3199) = v15 - 1;
      LOBYTE(v15) = v15 - 1;
    }

    if ((v12 - 1) > 1u)
    {
      if (v12 != 3)
      {
        if ((v12 & 0xFE) != 4)
        {
          DeviceFaultNotify("glmesrd_sat_report_validity_chk.cpp", 399, "UpdateMsmtCensorshipStatus", "0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_validity_chk.cpp", 399, "0");
        }

        if ((*(a2 + 22) - 1) < 3)
        {
          goto LABEL_62;
        }

LABEL_60:
        if (*(this + 3198) == 1 && v15 < 1)
        {
LABEL_62:
          *(this + 1599) = 0;
          goto LABEL_63;
        }

        goto LABEL_63;
      }

      v16 = *(a2 + 22);
      if ((v16 - 1) <= 2)
      {
        LOBYTE(v15) = 0;
        *(this + 1599) = 0;
      }
    }

    else
    {
      v16 = *(a2 + 22);
    }

    if ((v16 | 4) == 4)
    {
LABEL_22:
      *(this + 3199) = 3;
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  if (*(a3 + 200))
  {
    goto LABEL_49;
  }

  if ((*(a3 + 201) & 1) == 0 && (*(a3 + 202) & 1) == 0 && (*(a3 + 203) & 1) == 0 && (*(a3 + 204) & 1) == 0 && (*(a3 + 205) & 1) == 0 && (*(a3 + 206) & 1) == 0 && (*(a3 + 207) & 1) == 0 && (*(a3 + 208) & 1) == 0 && (*(a3 + 209) & 1) == 0 && (*(a3 + 210) & 1) == 0 && (*(a3 + 211) & 1) == 0 && (*(a3 + 212) & 1) == 0 && (*(a3 + 213) & 1) == 0 && (*(a3 + 214) & 1) == 0 && *(a3 + 215) != 1)
  {
    goto LABEL_63;
  }

  if (*(a3 + 203) & 1) != 0 || (*(a3 + 204) & 1) != 0 || (*(a3 + 205) & 1) != 0 || (*(a3 + 206) & 1) != 0 || (*(a3 + 207) & 1) != 0 || (*(a3 + 208) & 1) != 0 || (*(a3 + 211) & 1) != 0 || (*(a3 + 212) & 1) != 0 || (*(a3 + 213) & 1) != 0 || (*(a3 + 214))
  {
LABEL_49:
    v17 = 1;
  }

  else
  {
    v17 = *(a3 + 215);
  }

  result = (*(**(*(this + 1) + 24) + 48))(*(*(this + 1) + 24));
  if ((result & 1) == 0)
  {
    result = (*(**(*(this + 1) + 24) + 32))(*(*(this + 1) + 24));
    if ((result & 1) == 0)
    {
      v18 = (*&v6 & 0x40060) != 262240;
      result = (*(**(*(this + 1) + 24) + 16))(*(*(this + 1) + 24));
      if ((v8 | result) & 1) == 0 && ((v18 | v17))
      {
        *(this + 1599) = 769;
      }
    }
  }

LABEL_63:
  v19 = *(this + 3198);
  if (v19 == 1)
  {
    *(a2 + 21) &= 0xFFFFFF1F;
    *(a3 + 49) |= 0x1000u;
    *(a2 + 21) &= 0xFFFFFDF7;
    *(a2 + 14) = 897988541;
  }

  *(a3 + 184) = v19;
  *(a3 + 185) = *(this + 3199);
  return result;
}

uint64_t BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(BlueFin::GlMeSrdDspMeasAux *this)
{
  v1 = *(this + 9);
  if (v1 != 2 && v1 != 4)
  {
    DeviceFaultNotify("glmesrd_dsp_meas_aux.h", 411, "GetTrkRslts", "m_otMsmtSource.GetEnum() == GLMESRD_MSMT_SRC_TRACK || m_otMsmtSource.GetEnum() == GLMESRD_MSMT_SRC_SUB_TRACK");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_dsp_meas_aux.h", 411, "m_otMsmtSource.GetEnum() == GLMESRD_MSMT_SRC_TRACK || m_otMsmtSource.GetEnum() == GLMESRD_MSMT_SRC_SUB_TRACK");
  }

  return this + 64;
}

BOOL BlueFin::GlMeSrdSatReport::GenerateAcqMgrRequests(BlueFin::GlMeSrdSatReport *this, BlueFin::GlMeDSPMeas *a2, BlueFin::GlMeSrdDspMeasAux *a3)
{
  v3 = *(a3 + 97);
  if ((*(a2 + 87) & 4) != 0)
  {
    v4 = 100;
  }

  else
  {
    v4 = 10;
  }

  if (v4 < v3)
  {
    DeviceFaultNotify("glmesrd_sat_report_validity_chk.cpp", 190, "GenerateAcqMgrRequests", "ucMaxInvalidCountBeforeStartingSearch <= ucMaxInvalidCountBeforeKillingTrack");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_validity_chk.cpp", 190, "ucMaxInvalidCountBeforeStartingSearch <= ucMaxInvalidCountBeforeKillingTrack");
  }

  if (*(a3 + 8) - 81 >= 0x35)
  {
    v5 = 8;
  }

  else
  {
    v5 = 2;
  }

  v6 = *(this + 3193);
  v7 = *(a3 + 48) & 0x800;
  v8 = *(this + 3192);
  v9 = *(this + 3194);
  v10 = *(this + 3195);
  v11 = v10 > 1;
  v12 = *(this + 3196);
  v13 = *(this + 3197);
  v14 = v13 > 1;
  v15 = (*(a3 + 48) >> 11) & 1;
  v16 = v8 > v3;
  v17 = v9 > v3;
  v18 = v12 > v3;
  if (v5 < v6 || v4 < v8 || v4 < v9 || v4 < v10 || v4 < v12 || v7 != 0 || v4 < v13)
  {
    v14 = 0;
    LOBYTE(v15) = 0;
    v18 = 0;
    v11 = 0;
    v17 = 0;
    v16 = 0;
  }

  result = v4 < v13;
  *(a3 + 200) = v5 < v6;
  *(a3 + 201) = v4 < v8;
  *(a3 + 202) = v4 < v9;
  *(a3 + 203) = v4 < v10;
  *(a3 + 204) = v4 < v12;
  *(a3 + 205) = v7 >> 11;
  *(a3 + 206) = result;
  *(a3 + 207) = 0;
  *(a3 + 209) = v16;
  *(a3 + 210) = v17;
  *(a3 + 211) = v11;
  *(a3 + 212) = v18;
  *(a3 + 213) = v15;
  *(a3 + 214) = v14;
  *(a3 + 215) = 0;
  return result;
}

uint64_t BlueFin::GlMeSrdDspMeasAux::isGarbage(BlueFin::GlMeSrdDspMeasAux *this)
{
  v1 = *(this + 9);
  v2 = 1;
  if (v1 > 2)
  {
    if (v1 != 3)
    {
      if (v1 != 4)
      {
        return v2 & 1;
      }

      goto LABEL_7;
    }

    if ((*(this + 64) & 1) == 0)
    {
      v2 = *(this + 40);
      return v2 & 1;
    }

LABEL_21:
    v2 = 1;
    return v2 & 1;
  }

  if (v1 == 1)
  {
    if ((*(this + 64) & 1) == 0 && (*(this + 40) != 1 || *(this + 11) != 3.4028e38 && *(this + 12) != 3.4028e38))
    {
      v2 = 0;
      return v2 & 1;
    }

    goto LABEL_21;
  }

  if (v1 != 2)
  {
    return v2 & 1;
  }

LABEL_7:
  if (*(this + 40))
  {
    goto LABEL_21;
  }

  v3 = *(this + 19);
  if (v3 >= 5 && v3 != 7)
  {
    goto LABEL_21;
  }

  v4 = *(this + 20);
  if (v4 >= 5 && v4 != 7)
  {
    goto LABEL_21;
  }

  v2 = *(this + 21) > 2u;
  return v2 & 1;
}

_BYTE *BlueFin::GlMeSrdAsicBitPhsTrkMsmt::Print(_BYTE *this)
{
  if (this[4] == 1 && this[12] >= 0x1Au)
  {
    v1 = "stHistogram.ucEffBitIntvlInCaEpochs <= _DIM(stHistogram.afTotAccumHist)";
    DeviceFaultNotify("glmesrd_estimators_input_trk.cpp", 494, "Print", "stHistogram.ucEffBitIntvlInCaEpochs <= _DIM(stHistogram.afTotAccumHist)");
    v2 = 494;
    goto LABEL_8;
  }

  if (this[116] == 1 && this[124] >= 0x1Au)
  {
    v1 = "stDeltaHistogram.ucEffBitIntvlInCaEpochs <= _DIM(stDeltaHistogram.afTotAccumHist)";
    DeviceFaultNotify("glmesrd_estimators_input_trk.cpp", 511, "Print", "stDeltaHistogram.ucEffBitIntvlInCaEpochs <= _DIM(stDeltaHistogram.afTotAccumHist)");
    v2 = 511;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_estimators_input_trk.cpp", v2, v1);
  }

  return this;
}

void BlueFin::GlMeSrdEstBitPhs::Run(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, float *a7, uint64_t a8, unsigned int *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 __src, char a16, unsigned int a17, int a18, __int16 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t *a63)
{
  STACK[0xA48] = *MEMORY[0x29EDCA608];
  *a12 = 0;
  *(a12 + 4) = -1082130432;
  *(a12 + 8) = 0;
  *(a12 + 10) = 127;
  if ((a9[1] & 1) == 0)
  {
    v152 = "stAsicBitPhsTrkMsmt.stHistogram.bValid";
    DeviceFaultNotify("glmesrd_bitphase.cpp", 494, "Run", "stAsicBitPhsTrkMsmt.stHistogram.bValid");
    v153 = 494;
    goto LABEL_153;
  }

  if ((a9[29] & 1) == 0)
  {
    v152 = "stAsicBitPhsTrkMsmt.stDeltaHistogram.bValid";
    DeviceFaultNotify("glmesrd_bitphase.cpp", 495, "Run", "stAsicBitPhsTrkMsmt.stDeltaHistogram.bValid");
    v153 = 495;
LABEL_153:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", v153, v152);
  }

  if (*a5 != 1 || !a9[30])
  {
    return;
  }

  v78 = *(a9 + 124);
  a65 = &unk_2A1F0BF90;
  a66 = 1;
  a67 = 0;
  a68 = v78;
  a69 = 1;
  a70 = *(a5 + 4);
  a71 = 0;
  v79 = *(a8 + 4);
  v80 = *(a8 + 8);
  a72 = *a8;
  a73 = v79;
  a74 = v80;
  a76 = 0;
  a75 = 0;
  LODWORD(STACK[0x808]) = 0;
  *&STACK[0x7F8] = 0u;
  *&STACK[0x7E8] = 0u;
  *&STACK[0x7D8] = 0u;
  *&STACK[0x7C8] = 0u;
  a78 = 0u;
  a77 = 0u;
  STACK[0x958] = &STACK[0x810];
  STACK[0x998] = &STACK[0x970];
  if (!v78)
  {
    DeviceFaultNotify("glmesrd_bitphase.cpp", 1264, "GlMeSrdEstBitPhsSerializeContainer", "stAsicBitPhsTrkMsmt.stDeltaHistogram.ucEffBitIntvlInCaEpochs > 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", 1264, "stAsicBitPhsTrkMsmt.stDeltaHistogram.ucEffBitIntvlInCaEpochs > 0");
  }

  for (i = 0; i != 324; i += 108)
  {
    v83 = &a65 + i;
    v83[164] = 0;
    *(v83 + 40) = 0;
    *(v83 + 168) = 0uLL;
    *(v83 + 184) = 0uLL;
    *(v83 + 200) = 0uLL;
    *(v83 + 216) = 0uLL;
    *(v83 + 232) = 0uLL;
    *(v83 + 248) = 0uLL;
    *(v83 + 66) = 0;
  }

  for (j = 0; j != 36; j += 12)
  {
    v85 = &a65 + j;
    v85[512] = 0;
    *(v85 + 129) = -1082130432;
    *(v85 + 260) = 0;
    v85[522] = 127;
  }

  if (*(a9 + 117) == 1)
  {
    *(result + 42) = 0;
    *(result + 40) = 0;
    bzero(*(result + 32), *(result + 41) * *(result + 43));
  }

  v86 = *(a11 + 29) | ~*(a11 + 28);
  v87 = *(result + 56);
  *(result + 56) = *(a11 + 29) & 1 | ((*(a11 + 28) & 1) == 0);
  if (v86 & 1) != 0 || (v87)
  {
    if (*(a11 + 72) == 1)
    {
      v89 = *(a11 + 80);
      if (v89 < 0.0)
      {
        v89 = -v89;
      }

      v88 = v89 > *(a5 + 12);
    }

    else
    {
      v88 = 1;
    }
  }

  else
  {
    v88 = 0;
  }

  if (*a9 & 1) != 0 || (*(a9 + 1))
  {
    v88 = (*(a9 + 117) & 1) != 0 || (*(a11 + 1) & 1) == 0;
  }

  BlueFin::GlMeSrdBitHistBuf::GlMeSrdBitHistBuf(&v161, a9 + 32, a9 + 124, a9 + 30);
  v90 = *(a9 + 117);
  BlueFin::GlMeSrdBitHistBuf::operator=(&a75, &v161);
  HIBYTE(a66) = v90;
  a67 = v88;
  if (v88)
  {
    __src = 0;
    a17 = -1082130432;
    LOWORD(a18) = 0;
    BYTE2(a18) = 127;
    v91 = BlueFin::GlMeSrdEstBitPhsSerializeContainer::AddAccBitHistObsAndResults(&a65, 1, &v161, &__src);
    if (BlueFin::GlUtils::m_pInstance)
    {
      if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
      {
        (*(a65 + 24))(&a65, 0, 0, v91);
      }
    }

    return;
  }

  BlueFin::GlMeSrdBitHistBuf::GlMeSrdBitHistBuf(&__src, a9 + 32, a9 + 124, a9 + 30);
  memcpy((*(result + 32) + *(result + 43) * *(result + 42)), &__src, *(result + 43));
  v92 = *(result + 42) + 1;
  *(result + 42) = v92;
  if (*(result + 41) <= v92)
  {
    *(result + 40) = 1;
    *(result + 42) = 0;
  }

  v93 = 0;
  __src = 0;
  a17 = 0;
  a63 = &a22;
  do
  {
    v94 = (&__src + v93);
    v94[36] = 0;
    *(v94 + 8) = 0;
    *(v94 + 40) = 0uLL;
    *(v94 + 56) = 0uLL;
    *(v94 + 72) = 0uLL;
    *(v94 + 88) = 0uLL;
    *(v94 + 104) = 0uLL;
    *(v94 + 120) = 0uLL;
    v93 += 108;
    *(v94 + 34) = 0;
  }

  while (v93 != 324);
  v95 = *(a5 + 16);
  a16 = v78;
  a18 = v95;
  a19 = *(a5 + 20);
  BlueFin::GlMeSrdObsBuf::ItFcn(result + 32, 0, &__src, BlueFin::GlMeSrdEstBitPhs::AccumulateBitHistogram);
  v96 = __src;
  if (__src)
  {
    v97 = 0;
    while (((a17 >> v97) & 1) == 0)
    {
LABEL_90:
      if (++v97 >= v96)
      {
        goto LABEL_146;
      }
    }

    v98 = a63 + 108 * v97;
    v99 = *(a3 + 16);
    v100 = *a7;
    LOBYTE(v159) = 0;
    HIDWORD(v159) = -1082130432;
    LOWORD(v160) = 0;
    BYTE2(v160) = 127;
    v101 = *v98;
    if (!*v98)
    {
      goto LABEL_88;
    }

    LOBYTE(v159) = 1;
    v102 = *a9;
    v103 = *(a9 + 1);
    STACK[0xA30] = 0;
    STACK[0xA28] = 0;
    LOBYTE(STACK[0xA40]) = 0;
    STACK[0xA38] = 0;
    v104 = *(v99 + 8);
    if (v104 >= 0x1A)
    {
      DeviceFaultNotify("glmesrd_bitphase.cpp", 92, "EstTrkBitPhs", "ucEffBitIntInMs <= GlMeSrdAsicBitPhsTrkMsmt::MAX_HIST_VEC_LEN");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", 92, "ucEffBitIntInMs <= GlMeSrdAsicBitPhsTrkMsmt::MAX_HIST_VEC_LEN");
    }

    v105 = v102 | v103;
    LODWORD(STACK[0xA20]) = 0;
    *&STACK[0xA00] = 0u;
    *&STACK[0xA10] = 0u;
    *&STACK[0x9E0] = 0u;
    *&STACK[0x9F0] = 0u;
    *&STACK[0x9C0] = 0u;
    *&STACK[0x9D0] = 0u;
    v106 = *(v98 + 4);
    if (*(v98 + 4))
    {
      v107 = 0;
      v108 = v100 * v104;
      do
      {
        v109 = BlueFin::GlMeSrdBitHistBuf::operator[](v98, v107);
        v101 = *v98;
        v110 = v109 / *v98;
        v111 = v110 * v110;
        v112 = v110 - v108;
        if (v105)
        {
          v112 = v111;
        }

        if (v112 < 0.0)
        {
          v112 = 0.0;
        }

        v113 = v112 / v108;
        *(&STACK[0x9C0] + v107) = v113;
        *(&STACK[0xA28] + v107) = v107;
        if (v107)
        {
          v114 = 0;
          while (v113 <= *(&STACK[0x9C0] + *(&STACK[0xA28] + v114)))
          {
            if (v107 == ++v114)
            {
              goto LABEL_53;
            }
          }

          v115 = v107;
          v116 = v107;
          do
          {
            *(&STACK[0xA28] + v116--) = *(&STACK[0xA28] + (v115 - 1));
            v115 = v116;
          }

          while (v114 < v116);
          *(&STACK[0xA28] + v114) = v107;
        }

LABEL_53:
        ++v107;
      }

      while (v107 != v106);
      v117 = LOBYTE(STACK[0xA28]);
      v118 = *(&STACK[0x9C0] + v117);
      v119 = LOBYTE(STACK[0xA29]);
      v120 = *(&STACK[0x9C0] + v119);
      if (v105)
      {
        v121 = *(&STACK[0x9C0] + v119);
        if (v119 >= 0x19)
        {
          DeviceFaultNotify("glmesrd_bitphase.cpp", 166, "EstTrkBitPhs", "ucIndexHistHalfBitOff < 25");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", 166, "ucIndexHistHalfBitOff < 25");
        }

LABEL_59:
        v122 = 0.0;
        if (v120 >= 0.0000001)
        {
          v122 = 1.0 - (1.0 / (v118 / v120));
        }

        *(&v159 + 1) = v122;
        v123 = *(a5 + 16);
        if (v101 >= v123)
        {
          v126 = *(a5 + 4);
          if (v122 >= v126)
          {
            LOBYTE(v160) = 1;
          }

          if (v122 >= *(a5 + 8))
          {
            BYTE1(v160) = 1;
          }

          v125 = 1;
          if (v122 < v126)
          {
            v124 = 0;
          }

          else
          {
            BYTE2(v160) = v117 - ((v105 & 1) == 0);
            v125 = BYTE2(v160) == 127;
            v124 = 1;
          }
        }

        else
        {
          v124 = 0;
          v125 = 1;
        }

        v128 = fabsf(*(a4 + 16) + -0.001) < 0.00000011921 && *a6 - 81 < 0x35;
        if ((v128 | v105))
        {
          if (v124)
          {
            v122 = 0.0;
            if (v121 >= 0.0000001)
            {
              v122 = 1.0 - (1.0 / (v118 / v121));
            }

            *(&v159 + 1) = v122;
            if (v101 >= v123)
            {
              if (v122 < *(a5 + 4))
              {
                BYTE2(v160) = 0;
                LOBYTE(v160) = 0;
                if (v122 < *(a5 + 8))
                {
                  v129 = 0;
                  BYTE1(v160) = 0;
LABEL_89:
                  BlueFin::GlMeSrdEstBitPhsSerializeContainer::AddAccBitHistObsAndResults(&a65, v129, a63 + 27 * v97, &v159);
                  v96 = __src;
                  goto LABEL_90;
                }

LABEL_88:
                v129 = 0;
                goto LABEL_89;
              }

              if (v122 < *(a5 + 8))
              {
                BYTE1(v160) = 0;
                goto LABEL_87;
              }
            }
          }

LABEL_86:
          if (!v124)
          {
            goto LABEL_88;
          }

LABEL_87:
          if (v122 < 0.0 || v125)
          {
            goto LABEL_88;
          }

          if (*a12 == 1)
          {
            if ((*(a12 + 8) & 1) == 0 || *(a12 + 4) < 0.0 || *(a12 + 10) == 127)
            {
              goto LABEL_134;
            }
          }

          else if ((*(a12 + 8) & 1) == 0)
          {
            goto LABEL_134;
          }

          if (*(a12 + 4) >= v122)
          {
            goto LABEL_88;
          }

LABEL_134:
          *a12 = v159;
          *(a12 + 8) = v160;
          v129 = 1;
          goto LABEL_89;
        }

        if (!v124 || v104 < 3)
        {
          goto LABEL_86;
        }

        v130 = *(&STACK[0x9C0] + v117);
        v131 = *(&STACK[0x9C0] + v119);
        if (v130 < v131)
        {
          DeviceFaultNotify("glmesrd_bitphase.cpp", 285, "TrkShapeCheck", "afPkHistVals[aucPkHistIdx[0]] >= afPkHistVals[aucPkHistIdx[1]]");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", 285, "afPkHistVals[aucPkHistIdx[0]] >= afPkHistVals[aucPkHistIdx[1]]");
        }

        v132 = LOBYTE(STACK[0xA2A]);
        v133 = *(&STACK[0x9C0] + v132);
        if (v131 < v133)
        {
          DeviceFaultNotify("glmesrd_bitphase.cpp", 286, "TrkShapeCheck", "afPkHistVals[aucPkHistIdx[1]] >= afPkHistVals[aucPkHistIdx[2]]");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", 286, "afPkHistVals[aucPkHistIdx[1]] >= afPkHistVals[aucPkHistIdx[2]]");
        }

        if (v117 - v119 >= 0)
        {
          v134 = v117 - v119;
        }

        else
        {
          v134 = v119 - v117;
        }

        v135 = v117 - v132;
        if (v135 < 0)
        {
          v135 = -v135;
        }

        v136 = v119 - v132;
        if (v136 >= 0)
        {
          v137 = v136;
        }

        else
        {
          v137 = -v136;
        }

        v138 = v104 - 1;
        v140 = v134 == 1 || v134 == v138;
        if (v135 != 1 && v137 != 1)
        {
          v142 = v135 == v138 || v137 == v138;
          v140 &= v142;
        }

        v143 = v130 - v131;
        v144 = vabds_f32(v130, v131);
        v145 = vabds_f32(v130, v133);
        v146 = vabds_f32(v131, v133);
        if (v144 == v145)
        {
          v147 = v131 - v133;
          v149 = v145 == v146 && v147 == 0.0;
          if (v143 == 0.0 || v149)
          {
            goto LABEL_145;
          }
        }

        else if (v143 == 0.0)
        {
          goto LABEL_145;
        }

        v151 = (v144 + v145) != 0.0 && (v145 + v146) != 0.0;
        if (v151 & v140)
        {
          goto LABEL_86;
        }

LABEL_145:
        v129 = 0;
        LOWORD(v160) = 0;
        goto LABEL_89;
      }
    }

    else
    {
      LODWORD(v119) = 0;
      LODWORD(v117) = 0;
      v118 = 0.0;
      v120 = 0.0;
      v121 = 0.0;
      if (v105)
      {
        goto LABEL_59;
      }
    }

    v121 = v120;
    v120 = *(&STACK[0x9C0] + (v117 + (v104 >> 1)) % v104);
    goto LABEL_59;
  }

LABEL_146:
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    (*(a65 + 24))(&a65, 0, 0);
  }
}

float BlueFin::GlMeSrdBitHistBuf::GlMeSrdBitHistBuf(BlueFin::GlMeSrdBitHistBuf *this, float *a2, const unsigned __int8 *a3, const unsigned int *a4)
{
  *(this + 4) = 0;
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  v5 = (this + 8);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  v6 = *a3;
  if (v6 >= 0x1A)
  {
    DeviceFaultNotify("glmesrd_bithistbuf.cpp", 57, "GlMeSrdBitHistBuf", "rucNbHistBins <= MAX_NB_OF_HIST_BINS");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bithistbuf.cpp", 57, "rucNbHistBins <= MAX_NB_OF_HIST_BINS");
  }

  *(this + 4) = v6;
  *this = *a4;
  if (v6)
  {
    do
    {
      v7 = *a2++;
      result = v7;
      *v5++ = v7;
      --v6;
    }

    while (v6);
  }

  return result;
}

float BlueFin::GlMeSrdBitHistBuf::operator=(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (v2 >= 0x1A)
  {
    DeviceFaultNotify("glmesrd_bithistbuf.cpp", 79, "operator=", "rhs.m_ucNbHistBins <= MAX_NB_OF_HIST_BINS");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bithistbuf.cpp", 79, "rhs.m_ucNbHistBins <= MAX_NB_OF_HIST_BINS");
  }

  *(a1 + 4) = v2;
  *a1 = *a2;
  for (i = 8; i != 108; i += 4)
  {
    result = *(a2 + i);
    *(a1 + i) = result;
  }

  return result;
}

float BlueFin::GlMeSrdEstBitPhsSerializeContainer::AddAccBitHistObsAndResults(uint64_t a1, int a2, _DWORD *a3, uint64_t a4)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    v10 = "m_bIsMiBitHist1DBit";
    DeviceFaultNotify("glmesrd_bitphase.cpp", 1316, "AddAccBitHistObsAndResults", "m_bIsMiBitHist1DBit");
    v11 = 1316;
    goto LABEL_8;
  }

  if (!*a3)
  {
    v10 = "stEstBitHistBuf.GetTotalObsLenInEffSym() > 0";
    DeviceFaultNotify("glmesrd_bitphase.cpp", 1317, "AddAccBitHistObsAndResults", "stEstBitHistBuf.GetTotalObsLenInEffSym() > 0");
    v11 = 1317;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", v11, v10);
  }

  BlueFin::GlMeSrdBitHistBuf::operator=(*(a1 + 488) + 108 * *(a1 + 24), a3);
  v7 = *(a1 + 24);
  if (a2)
  {
    *(a1 + 25) = v7;
  }

  v8 = *(a1 + 552) + 12 * v7;
  *v8 = *a4;
  result = *(a4 + 4);
  *(v8 + 4) = result;
  *(v8 + 8) = *(a4 + 8);
  *(v8 + 9) = *(a4 + 9);
  *(a1 + 24) = v7 + 1;
  return result;
}

uint64_t BlueFin::GlMeSlots::GalileoPilotSecCodeDecoder(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*(a1 + 1504) != v2 || (v2 - 175) <= 0xFFFFFFDB)
  {
    DeviceFaultNotify("glme_msmtmgr.cpp", 113, "GalileoPilotSecCodeDecoder", "(m_otSignalId.GetSvId() == rotSvId) && (IS_GALILEO_SVID(*rotSvId))");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_msmtmgr.cpp", 113, "(m_otSignalId.GetSvId() == rotSvId) && (IS_GALILEO_SVID(*rotSvId))");
  }

  return a1 + 992;
}

uint64_t BlueFin::GlMeSlots::GalileoINavDecoder(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*(a1 + 1504) != v2 || (v2 - 175) <= 0xFFFFFFDB)
  {
    DeviceFaultNotify("glme_msmtmgr.cpp", 106, "GalileoINavDecoder", "(m_otSignalId.GetSvId() == rotSvId) && (IS_GALILEO_SVID(*rotSvId))");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_msmtmgr.cpp", 106, "(m_otSignalId.GetSvId() == rotSvId) && (IS_GALILEO_SVID(*rotSvId))");
  }

  return a1 + 192;
}

uint64_t BlueFin::GlMeGalileoPilotSecCodeDecoder::GetSecCodePhsInSym(uint64_t a1, unsigned int a2, _BYTE *a3, int a4)
{
  *a3 = -1;
  result = *(a1 + 8);
  if (result == 1)
  {
    v6 = *(a1 + 4);
    v7 = 25 * ((v6 - a2 + 2) / 0x64) - ((v6 - a2 + 2) >> 2) + 25;
    if (a4)
    {
      v7 = a2 - v6 + 100 * ((v6 - a2) / 0x64) + 100;
    }

    v8 = (a2 - v6) % 0x64;
    if (!a4)
    {
      v8 = ((a2 - v6 + 2) >> 2) - 25 * ((a2 - v6 + 2) / 0x64);
    }

    if (v6 <= a2)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    *a3 = v9;
  }

  return result;
}

BOOL BlueFin::GlMeSatIdProbationMgr::Ignoring(uint64_t a1, unsigned int a2, unsigned __int8 *a3)
{
  if (a2 >= 0x64)
  {
    DeviceFaultNotify("glmesrd_sat_probation_mgr.cpp", 53, "Ignoring", "ucSatId < _DIM(m_astIgnore)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_probation_mgr.cpp", 53, "ucSatId < _DIM(m_astIgnore)");
  }

  v3 = *(a1 + 200);
  return *(v3 + 2 * a2 + 1) == *a3 && *(v3 + 2 * a2);
}

uint64_t BlueFin::GlMeSrdSatStatusListener::RequestBitAlignment(BlueFin::GlMeSrdSatStatusListener *this, const BlueFin::GlSatCarrId *a2)
{
  v4 = *a2;
  result = BlueFin::GlMeSrdSatMgr::IsSatInKillProcess((*(this + 1) + 3520), *a2);
  if ((result & 1) == 0)
  {
    v6 = *(this + 1);
    v7 = 1 << (v4 & 0x1F);
    if ((v7 & *(v6[455] + 4 * (v4 >> 5))) == 0 && (v7 & *(v6[451] + 4 * (v4 >> 5))) == 0 || !BlueFin::GlMeSrdSatTrackMgr::HasSat((v6 + 1794), v4))
    {
      DeviceFaultNotify("glmesrd_acq_mgr.cpp", 857, "RequestBitAlignment", "GlMeSrdSatStatusListener::RequestBitAlignment WARNING: Satid %u not in trackmgr\n");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr.cpp", 857, "GlMeSrdSatStatusListener::RequestBitAlignment WARNING: Satid %u not in trackmgr\n");
    }

    v8 = *(this + 1) + 14352;

    return BlueFin::GlMeSrdSatTrackMgr::RequestBitAlignment(v8, a2);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSatTrackMgr::RequestBitAlignment(uint64_t result, unsigned __int8 *a2)
{
  v2 = *a2 + 100 * a2[4];
  v3 = v2 >> 5;
  v4 = v2 & 0x1F;
  if (((*(*(result + 4000) + 4 * v3) >> v4) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_track_mgr.cpp", 483, "RequestBitAlignment", "m_otSetSatCarrIdInUse.Has(otSatCarrId)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_track_mgr.cpp", 483, "m_otSetSatCarrIdInUse.Has(otSatCarrId)");
  }

  *(*(result + 4880) + 4 * v3) |= 1 << v4;
  return result;
}

void BlueFin::GlMeSrdSvIdReportMsmtSlot::Save(BlueFin::GlMeSrdSvIdReportMsmtSlot *this, const BlueFin::GlMeDSPMeas *a2, const BlueFin::GlMeSrdDspMeasAux *a3)
{
  BlueFin::GlMeDSPMeas::operator=(this, a2);
  *(this + 160) = *(a3 + 32);
  v5 = *(a3 + 9);
  *(this + 41) = v5;
  if (v5 == 2)
  {
    *(this + 161) = *(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3) + 120);
    v6 = *(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3) + 122);
  }

  else
  {
    v6 = 0;
    *(this + 161) = 0;
  }

  *(this + 162) = v6;
  *(this + 168) = 1;
}

void BlueFin::CT_GRID_XWCV::runPeakCarrFrqEst(_BYTE *a1, BlueFin::CT_GRID_XWCV *a2, uint64_t a3, BlueFin::GlMeSrdCarrPrmResults *this, float a5, float a6, float a7)
{
  if (*a3 == 1)
  {
    if ((BlueFin::GlMeSrdCarrPrmResults::isGarbage(this) & 1) != 0 || (*this == 1 ? (v15 = *(this + 5) == 0) : (v15 = 1), v15))
    {
      LODWORD(v14) = *(a3 + 16);
      if (vabds_f32(*&v14, *(a3 + 12)) <= 10.0)
      {
        *&v14 = *&v14 + a7;
      }
    }

    else
    {
      v14 = *(this + 1);
      *&v14 = v14;
    }

    v16 = *a1;
    if (*a1)
    {
      v17 = (v16 + 3) & 0x1FC;
      v18 = vdupq_n_s64(v16 - 1);
      v19 = xmmword_298A319C0;
      v20 = xmmword_298A319D0;
      v21 = a1 + 264;
      v22 = vdupq_n_s64(4uLL);
      do
      {
        v23 = vmovn_s64(vcgeq_u64(v18, v20));
        if (vuzp1_s16(v23, *&v14).u8[0])
        {
          *(v21 - 24) = LODWORD(v14);
        }

        if (vuzp1_s16(v23, *&v14).i8[2])
        {
          *(v21 - 16) = LODWORD(v14);
        }

        if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v18, *&v19))).i32[1])
        {
          *(v21 - 8) = LODWORD(v14);
          *v21 = LODWORD(v14);
        }

        v19 = vaddq_s64(v19, v22);
        v20 = vaddq_s64(v20, v22);
        v21 += 32;
        v17 -= 4;
      }

      while (v17);
    }
  }

  if (a7 != 0.0 && *a1)
  {
    v24 = (3.1416 / (1.0 / a5)) * fabsf(a7);
    v25 = sinf(v24);
    v26 = 0;
    v28 = log10f(v25 / v24) * 20.0;
    v29 = (a1 + 180);
    do
    {
      *v29 = *v29 - BlueFin::CT_GRID_XWCV::GetDriftChips(a2, v27, a7, a6);
      v30 = *(v29 - 4);
      v32 = fabsf(BlueFin::CT_GRID_XWCV::GetDriftChips(a2, v31, a7, a6));
      if (v32 > v30)
      {
        v32 = v30;
      }

      *(v29 - 1) = *(v29 - 1) - (v28 + (log10f((v32 * -0.5) + 1.0) * 20.0));
      ++v26;
      v29 += 8;
    }

    while (v26 < *a1);
  }
}

uint64_t BlueFin::GlMeSrdEstGrid::Run(uint64_t a1, uint64_t a2, float *a3, int *a4, uint64_t a5, double *a6, uint64_t a7, BlueFin::CT_GRID_XWCV *a8, float s0_0, unsigned __int8 *a9, BlueFin::GlMeSrdCarrPrmResults *a10, uint64_t a11, _BYTE *a12, uint64_t a14)
{
  v52 = *MEMORY[0x29EDCA608];
  if (a9[1] == 1)
  {
    v17 = a7 + 136;
    result = BlueFin::ST_GRID_CONTEXT::ST_GRID_CONTEXT(v24, a3, a4, a5, a6, a8, a9, s0_0);
    v19 = a9[4];
    if (v19 <= 2)
    {
      if (v19 != 1)
      {
        if (v19 == 2)
        {
          v28[0] = 0;
          v39 = 0;
          v41[0] = 0;
          v40 = 0;
          *(v41 + 6) = 0;
          v42 = 0;
          v44[0] = 0;
          v43 = 0;
          *(v44 + 6) = 0;
          v45 = 0;
          v47[0] = 0;
          v46 = 0;
          *(v47 + 6) = 0;
          v49 = 0;
          v50[0] = 0;
          v48 = 0;
          *(v50 + 6) = 0;
          v51 = v17;
          v38 = 0u;
          v37 = 0u;
          v36 = 0u;
          v35 = 0u;
          v34 = 0u;
          v33 = 0u;
          v32 = 0u;
          v31 = 0u;
          v30 = 0u;
          v29 = 0u;
          v22 = 0.0;
          v23 = v17;
          BlueFin::CT_GRID_FULL::loadGrid(&v22, (a9 + 48), v24, v28);
          v20 = v22;
          BlueFin::CT_GRID_XWCV::runPeakCarrFrqEst(v28, a8, a11, a10, v27, v25 * v26, v22);
          BlueFin::CT_GRID_XWCV::getResults(v28, v24, a12);
          if ((*(*(a7 + 464) + 4) >> 5))
          {
            a12[3] = (v20 / (*(*(a7 + 464) + 4) >> 5));
          }

          return BlueFin::CT_GRID_XWCV::getGridResults(v28, v21, a9, a5, v24, a14);
        }

LABEL_13:
        DeviceFaultNotify("glmesrd_grid.cpp", 365, "Run", "0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_grid.cpp", 365, "0");
      }

LABEL_9:
      v28[0] = 0;
      v39 = 0;
      v41[0] = 0;
      v40 = 0;
      *(v41 + 6) = 0;
      v42 = 0;
      v44[0] = 0;
      v43 = 0;
      *(v44 + 6) = 0;
      v45 = 0;
      v47[0] = 0;
      v46 = 0;
      *(v47 + 6) = 0;
      v49 = 0;
      v50[0] = 0;
      v48 = 0;
      *(v50 + 6) = 0;
      v51 = v17;
      v38 = 0u;
      v37 = 0u;
      v36 = 0u;
      v35 = 0u;
      v34 = 0u;
      v33 = 0u;
      v32 = 0u;
      v31 = 0u;
      v30 = 0u;
      v29 = 0u;
      BlueFin::CT_GRID_XWCV::loadXwcv(v28, (a9 + 48), v24);
      BlueFin::CT_GRID_XWCV::runPeakCarrFrqEst(v28, a8, a11, a10, v27, v25 * v26, 0.0);
      BlueFin::CT_GRID_XWCV::getResults(v28, v24, a12);
      return BlueFin::CT_GRID_XWCV::getGridResults(v28, v21, a9, a5, v24, a14);
    }

    if (v19 != 3)
    {
      if (v19 != 4)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }

    *a12 = 1;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSatRptRpcBuffer::gll_satrpt_rpc_trk_grid_data(uint64_t a1, int a2, const void *a3)
{
  BlueFin::GlMeSrdSatRptRpcBuffer::CheckInstanceId(a1, a2);
  v5 = *(a1 + 8);
  if ((v5 & 0x40000) != 0)
  {
    DeviceFaultNotify("glmesrd_sat_report_rpc_buffer.cpp", 231, "gll_satrpt_rpc_trk_grid_data", "m_otFlags.Missing(FLGS_RECEIVED_GRID_DATA)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_rpc_buffer.cpp", 231, "m_otFlags.Missing(FLGS_RECEIVED_GRID_DATA)");
  }

  *(a1 + 8) = v5 | 0x40000;
  memcpy((a1 + 1844), a3, 0x42CuLL);
  v6 = *(**(a1 + 3152) + 80);

  return v6();
}

void BlueFin::GlMeSrdEstCodePrm::OverrideTrkCodePrmRmsev2022(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, uint64_t a6)
{
  if (*a6 != 1)
  {
    return;
  }

  v10 = __exp10f(*(a4 + 8) / 10.0);
  v11 = *(a1 + 12);
  v12 = sqrtf(((a5[22] * a5[23]) * ((2.0 / (v10 * (a5[5] * (2.0 - a5[23])))) + 1.0)) / (v10 + v10));
  v13 = v12 * 2.5;
  if (v11 != 2)
  {
    v13 = v12;
  }

  *(a6 + 16) = v13;
  if (!v11 && *(a4 + 8) < 22.0)
  {
    v13 = v12 * 1.5;
    *(a6 + 16) = v12 * 1.5;
  }

  v14 = *(a1 + 8);
  if (*(a1 + 16) >= 0x23Fu)
  {
    v19 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v20 = 807;
    goto LABEL_22;
  }

  v15 = BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 8)];
  v16 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v11 + v15];
  if (!v16 || !BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v11 - v11 + v15])
  {
    v19 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
    v20 = 815;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v20, v19);
  }

  v17 = flt_298A359B0[(v14 - 52) < 0xE] * (1000 * v16 / BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v11 - v11 + v15]);
  v18 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v11 - v11 + v15];
  if ((v18 > 8 || ((1 << v18) & 0x134) == 0) && ((v14 - 76) <= 0x3E && ((1 << (v14 - 76)) & 0x7C0000000000001FLL) != 0 || (v14 - 33) <= 0x12))
  {
    v13 = v13 + v13;
    *(a6 + 16) = v13;
  }

  if (v13 < v17)
  {
    *(a6 + 16) = v17;
  }
}

void BlueFin::CT_GRID_XWCV::runPeakFit(unsigned __int8 *a1, uint64_t a2)
{
  LODWORD(v2) = **(a1 + 37);
  if (v2 < 2)
  {
    return;
  }

  v5 = 0;
  v6 = 0;
  v7 = a1 + 132;
  v8 = a1 + 164;
  v48 = a1 + 4;
  v49 = a1 + 133;
  v9 = 1;
  v10 = 1.0;
  do
  {
    if (v7[v9] != 2)
    {
      goto LABEL_52;
    }

    v11 = *a1;
    if (v11 > 3)
    {
      break;
    }

    v12 = v9 - 3;
    v13 = 4;
    v14 = v5;
    v15 = &v8[32 * v11];
    while (1)
    {
      v16 = a1[v14 + 133];
      if (v16 == 2)
      {
        break;
      }

      if (v16 == 1 && (!v7[v14] || v7[v14] == 255))
      {
        v12 = v14 + 1;
        goto LABEL_20;
      }

LABEL_15:
      if (!--v13)
      {
        goto LABEL_20;
      }

      if (!v14--)
      {
        v12 = 0;
        goto LABEL_20;
      }
    }

    v17 = v7[v14];
    if (v17 != 255 && v17 != 0)
    {
      goto LABEL_15;
    }

    v12 = v14;
LABEL_20:
    v15[20] = v9 - v12;
    if (v2 - 1 <= v12)
    {
      v21 = v15[21];
    }

    else
    {
      v20 = 0;
      v21 = v15[21];
      v22 = v12;
      v23 = 7;
      v24 = &v49[v12];
      do
      {
        v25 = v21++;
        v15[21] = v21;
        v15[v25 + 22] = v22;
        v26 = *(v24 - 1);
        if (v26 == 2)
        {
          if (!*v24)
          {
            goto LABEL_34;
          }
        }

        else if (v26 == 255)
        {
          v27 = *v24;
          if (v27 < 2 || v20 && v27 == 2)
          {
            goto LABEL_34;
          }
        }

        if (!--v23)
        {
          goto LABEL_34;
        }

        ++v22;
        LODWORD(v2) = **(a1 + 37);
        --v20;
        ++v24;
      }

      while (v2 - 1 > v22);
    }

    v28 = &v15[v21++];
    v15[21] = v21;
    v28[22] = v2 - 1;
LABEL_34:
    if (v21 < 3u)
    {
      *v15 = 0;
      *(v15 + 1) = 0;
      *(v15 + 22) = 0;
LABEL_45:
      *(v15 + 2) = 0;
    }

    else
    {
      if (v9 != v12 && v21 - 1 > (v9 - v12))
      {
        v29 = v15[(v9 - v12) + 21];
        v30 = *&v48[4 * v29];
        v31 = v15[(v9 - v12) + 23];
        v32 = *&v48[4 * v31];
        if ((v30 + v32) > 0.0)
        {
          v33 = *(a1 + 37) + 68;
          v34 = *(v33 + 4 * v29) - *(v33 + 4 * v31);
          v35 = v15[(v9 - v12) + 22];
          v36 = *&v48[4 * v35];
          v37 = *(v33 + 4 * v35);
          v38 = ((v30 - v32) * v34) / (v30 + v32);
          v39 = -v38;
          if (v38 >= 0.0)
          {
            v39 = v38;
          }

          v40 = __exp10f((v39 * 6.0) / 20.0);
          *(v15 + 4) = v37 + v38;
          v41 = v36 * v40;
          v10 = 1.0;
          *(v15 + 2) = v41;
          *v15 = fabsf(v34 * 0.5);
        }
      }

      v42 = *(a2 + 88);
      if (v6)
      {
        v43 = *(v15 + 2);
        if (v43 < v42[5])
        {
          *v15 = 0;
          *(v15 + 1) = 0;
          *(v15 + 22) = 0;
          v6 = 1;
          goto LABEL_45;
        }
      }

      else
      {
        v43 = *(v15 + 2);
      }

      v44 = *(a2 + 28);
      v45 = *(a2 + 32);
      v46 = (((v42[1] + (v43 * v42[1])) * (v10 / ((((*(a2 + 12) * *(a2 + 40)) * *(a2 + 44)) * *(a2 + 48)) * *(a2 + 56)))) / floorf(((*(a2 + 16) * *(a2 + 4)) / v44) + 0.5)) - (*(a2 + 36) * v45);
      if (v46 <= 0.0)
      {
        v46 = 0.000000001;
      }

      v47 = -(*(a2 + 8) - (log10f((((*(a2 + 20) * *(a2 + 20)) * v46) / (v44 * v44)) / v45) * 10.0));
      if (v47 < 7.0)
      {
        v47 = 7.0;
      }

      *(v15 + 3) = v47;
      v6 |= v47 >= v42[4];
      *a1 = v11 + 1;
    }

LABEL_52:
    ++v9;
    v2 = **(a1 + 37);
    ++v5;
  }

  while (v9 < v2);
}

uint64_t BlueFin::CT_GRID_XWCV::getGridResults(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 0;
  v7 = *(result + 296);
  *a6 = *v7;
  *(a6 + 1) = *(a3 + 11);
  *(a6 + 2) = -56;
  v8 = *(v7 + 41);
  *(a6 + 3) = *(*(a4 + 64) + (*(v8 + 6) & 7));
  v9 = (*(v8 + 4) & 0x1Fu) + 1;
  *(a6 + 4) = (*(v8 + 4) & 0x1F) + 1;
  v10 = *(v8 + 4) >> 5;
  *(a6 + 5) = v10;
  *(a6 + 8) = *(*(a5 + 88) + 4);
  v11 = v10;
  v12 = a3 + 48;
  while (1)
  {
LABEL_2:
    v13 = *&v7[4 * v6 + 196] / v11;
    v14 = v13;
    if (v13 <= 0.0)
    {
      if (v13 >= 0.0)
      {
        LOBYTE(v16) = 0;
        goto LABEL_8;
      }

      v15 = v14 + -0.5;
    }

    else
    {
      v15 = v14 + 0.5;
    }

    v16 = v15;
LABEL_8:
    *(a6 + 4140 + v6) = v16;
    v7 = *(result + 296);
    v17 = *v7;
    if (!*v7)
    {
      break;
    }

    v18 = (((*(a5 + 12) + *(a5 + 12)) * *(a5 + 40)) * *(a5 + 44)) * *(a5 + 48);
    v19 = (a6 + 12 + (v6 << 7));
    v20 = 2;
    v21 = *v7;
    do
    {
      v22 = *(v12 + 4 * (v7[v20] + v7[v6 + 34] * v17)) / v18;
      v23 = v22;
      if (v22 <= 0.0)
      {
        if (v22 >= 0.0)
        {
          v25 = 0;
          goto LABEL_16;
        }

        v24 = v23 + -0.5;
      }

      else
      {
        v24 = v23 + 0.5;
      }

      v25 = v24;
LABEL_16:
      *v19++ = v25;
      ++v20;
      --v21;
    }

    while (v21);
    if (++v6 == v9)
    {
      v26 = 0;
      while (1)
      {
        v27 = *&v7[4 * v26 + 68] * 4.0;
        v28 = v27;
        if (v27 > 0.0)
        {
          break;
        }

        if (v27 < 0.0)
        {
          v29 = v28 + -0.5;
          goto LABEL_26;
        }

        LOBYTE(v30) = 0;
LABEL_27:
        *(a6 + 4108 + v26++) = v30;
        v7 = *(result + 296);
        if (v26 >= *v7)
        {
          return result;
        }
      }

      v29 = v28 + 0.5;
LABEL_26:
      v30 = v29;
      goto LABEL_27;
    }
  }

  if (++v6 != v9)
  {
    goto LABEL_2;
  }

  return result;
}

void (**BlueFin::GlMeSrdSatRptNonL1VetSm::SetDspMeasurementReport(uint64_t a1, uint64_t a2, BlueFin::GlMeSrdDspMeasAux *this, _BYTE *a4, char a5, char a6, uint64_t a7))(BlueFin::GlMeAcqWin *__hidden this)
{
  if (a7)
  {
    v14 = (*(*a7 + 88))(a7, a2 + 100, 0.0);
    if (v14)
    {
      v43 = &off_2A1F0E398;
      v44 = 0;
      v45 = -1;
      v46 = 575;
      v47 = 0;
      v48 = 0;
      v49 = xmmword_298A339D0;
      v50 = 2139095039;
      v51 = 0;
      v52 = 3.4028e38;
      v53 = 0;
      v54 = 0x7FEFFFFFFFFFFFFFLL;
      v55 = -1;
      v56 = -1;
      v58 = 0;
      v59 = 0;
      v57 = 0;
      v60 = 0;
      *(a1 + 92) = *(v14 + 92);
      if ((*(*a7 + 40))(a7, a2 + 100, 0, *(a2 + 24) * 1000.0))
      {
        v15 = *(a2 + 24);
        v42 = 1;
        if ((*(*a7 + 24))(a7, a2 + 100, &v43, &v42, 0, 0, v15 * 1000.0, 0.0, 0.0))
        {
          if (v52 <= 0.0)
          {
            v16 = 0.0;
          }

          else
          {
            v16 = v52 * 299792458.0;
          }

          *(a1 + 96) = v51;
          *(a1 + 104) = v16;
        }
      }
    }
  }

  *(a1 + 112) = a2;
  *(a1 + 120) = this;
  *(a1 + 89) |= *a4;
  *(a1 + 90) |= a4[1];
  *(a1 + 91) |= a4[2];
  *(a1 + 43) = a5;
  *(a1 + 128) = *(a2 + 24);
  *(a1 + 44) = 0;
  *(a1 + 48) = 1065353216;
  for (i = 24; i != 29; ++i)
  {
    if (*(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(this) + i) == 255)
    {
      *(a1 + 48) = *(a1 + 48) + -0.2;
    }

    else
    {
      v18 = *(a1 + 44);
      if (v18 < *(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(this) + i))
      {
        *(a1 + 44) = *(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(this) + i);
      }
    }
  }

  v19 = *(a1 + 48);
  if (v19 < 0.15)
  {
    v33 = "m_fDutyCycleScale >= 0.15f";
    DeviceFaultNotify("glmesrd_sat_report_vetting.cpp", 957, "SetDspMeasurementReport", "m_fDutyCycleScale >= 0.15f");
    v34 = 957;
    goto LABEL_51;
  }

  *(a1 + 64) = 0;
  v20 = (a1 + 64);
  *(a1 + 48) = sqrtf(v19);
  v21 = *(a1 + 56);
  v22 = *(a2 + 24);
  if (v21 > 0.0)
  {
    v23 = v22 - v21;
    if (v23 > 0.0 && *(a2 + 56) <= 0.000000003 && (*(a2 + 84) & 0x40) != 0)
    {
      v35 = *(a2 + 32);
      v36 = *(a1 + 68);
      *(a1 + 72) = v36;
      v37 = vrev64q_s32(v36);
      v38 = vextq_s8(v37, v37, 8uLL);
      v39 = (((*v38.i32 + 0.0) + *&v38.i32[1]) + *&v38.i32[2]) + *&v38.i32[3];
      v40 = floor(v23 * 1000.0 + 0.5) / 1000.0;
      if (v23 * 1000.0 <= 0.0)
      {
        v40 = 0.0;
      }

      v41 = (v40 - v23 - v40 * v35) * 299792458.0;
      *(a1 + 68) = v41;
      v25 = v39 + v41;
    }

    else
    {
      v24 = 0;
      v25 = 0.0;
      do
      {
        v25 = v25 + *(a1 + 68 + v24);
        v24 += 4;
      }

      while (v24 != 20);
    }

    *v20 = v25;
  }

  *(a1 + 56) = v22;
  if ((*(a1 + 91) & 0x18) != 0)
  {
    *v20 = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
  }

  if ((*(this + 156) & 1) != 0 || *(a1 + 104) >= 3.40282306e38)
  {
    LOWORD(v42) = 7;
    v26 = *(a1 + 32);
    v27 = *(a1 + 8);
    *(a1 + 32) = v27;
    do
    {
      v43 = 0;
      if (BlueFin::patch_dispatch(v27, a1, &v42, &v43))
      {
        v27 = v43;
      }

      else
      {
        v27 = (*(a1 + 32))(a1, &v42);
      }

      *(a1 + 32) = v27;
    }

    while (v27);
  }

  else
  {
    v26 = *(a1 + 32);
  }

  LOBYTE(v42) = 6;
  BYTE1(v42) = a6;
  result = *(a1 + 8);
  *(a1 + 32) = result;
  do
  {
    v43 = 0;
    if (BlueFin::patch_dispatch(result, a1, &v42, &v43))
    {
      result = v43;
    }

    else
    {
      result = (*(a1 + 32))(a1, &v42);
    }

    *(a1 + 32) = result;
  }

  while (result);
  *(a1 + 32) = v26;
  v29 = *(a1 + 40);
  if (v29 == 1)
  {
    *(this + 49) |= 0x2000u;
    *(a2 + 84) |= 0x400000u;
  }

  *(a1 + 92) = -1082130432;
  *(a1 + 96) = 0xBFF0000000000000;
  *(this + 184) = v29;
  *(this + 186) = *(a1 + 41);
  v30 = *(a1 + 42);
  *(this + 187) = v30;
  v31 = *(a1 + 45);
  *(this + 188) = v31;
  v32 = *(a1 + 46);
  *(this + 189) = v32;
  if (v30 != 1)
  {
    if (!v31 || !v32)
    {
      return result;
    }

    v33 = "0";
    DeviceFaultNotify("glmesrd_sat_report_vetting.cpp", 1016, "SetDspMeasurementReport", "0");
    v34 = 1016;
LABEL_51:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_vetting.cpp", v34, v33);
  }

  if (v31)
  {
    v33 = "0";
    DeviceFaultNotify("glmesrd_sat_report_vetting.cpp", 1006, "SetDspMeasurementReport", "0");
    v34 = 1006;
    goto LABEL_51;
  }

  if (v32)
  {
    v33 = "0";
    DeviceFaultNotify("glmesrd_sat_report_vetting.cpp", 1011, "SetDspMeasurementReport", "0");
    v34 = 1011;
    goto LABEL_51;
  }

  return result;
}

uint64_t *BlueFin::GlMeSrdSvIdReportMsmtSlot::GetSignalIndex@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v2 = *(this + 100);
  if ((v2 - 189) <= 0xFFFFFF43)
  {
    DeviceFaultNotify("glmesrd_svid_report_mgr_slot_types.cpp", 111, "GetSignalIndex", "IS_SVID(*m_otDspMeas.otSignalId.GetSvId())");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_svid_report_mgr_slot_types.cpp", 111, "IS_SVID(*m_otDspMeas.otSignalId.GetSvId())");
  }

  *a1 = v2;
  *(a1 + 1) = *(this + 26);
  *(a1 + 4) = *(this + 54);
  return this;
}

uint64_t *BlueFin::GlMeSrdSvIdReportMgr::GetMsmtStats(uint64_t *result, unsigned __int8 *a2, uint64_t a3)
{
  *(a3 + 224) = 0;
  v3 = result[1];
  if (*(v3 + 832) > (*(v3 + 834) + 1))
  {
    v6 = result;
    v7 = 0;
    v35 = (a3 + 176);
    v36 = (a3 + 192);
    v33 = (a3 + 184);
    v34 = (a3 + 200);
    for (i = (*(v3 + 834) + 1); i < *(v3 + 832); ++i)
    {
      v9 = v6[1];
      v10 = (*(v3 + 828) + *(*(v3 + 816) + 2 * i));
      if (!BlueFin::GlBigArray::Has((v3 + 800), v10))
      {
        v30 = "m_potArray->Has(handle)";
        DeviceFaultNotify("glinc_array.h", 362, "Next", "m_potArray->Has(handle)");
        v31 = "glinc_array.h";
        v32 = 362;
        goto LABEL_55;
      }

      if (v10 - *(v9 + 828) >= *(v9 + 830))
      {
        v30 = "handle - m_usMinHandle < m_usNumHandles";
        DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
        v31 = "glinc_array.h";
        v32 = 313;
        goto LABEL_55;
      }

      v11 = *(*(v9 + 808) + 2 * (v10 - *(v9 + 828)));
      if (v11 == 0xFFFF)
      {
        v12 = 0;
      }

      else
      {
        if (*(v9 + 832) <= v11)
        {
          v30 = "slot < m_usNumSlots";
          DeviceFaultNotify("glinc_array.h", 319, "EnsureValidSlot", "slot < m_usNumSlots");
          v31 = "glinc_array.h";
          v32 = 319;
          goto LABEL_55;
        }

        v12 = *(v9 + 800) + *(v9 + 824) * v11;
      }

      result = BlueFin::GlMeSrdSvIdReportMsmtSlot::GetSvId(&v39, v12);
      if (v39 == *a2)
      {
        result = BlueFin::GlSatCarrId::GlSatCarrId(v37, *(v12 + 112), *(v12 + 104));
        v13 = *(v12 + 164);
        if (v13 <= 2)
        {
          if (v13 != 1)
          {
            if (v13 != 2)
            {
              goto LABEL_57;
            }

            v14 = v38;
            v7 |= v38 == 0;
            v15 = *(v12 + 84);
            if ((v15 & 0x20) != 0 && (v15 & 0x40) != 0)
            {
              goto LABEL_22;
            }

LABEL_15:
            v16 = v37[0];
            *(*(a3 + 32) + ((v37[0] >> 3) & 0x1C)) |= 1 << v37[0];
            v17 = *(v12 + 40);
            v18 = *(a3 + 216);
            if (v17 >= v18)
            {
              *(a3 + 220) = v18;
              *(a3 + 200) = *(a3 + 192);
              *(a3 + 204) = *(a3 + 196);
              if (v36 != v37)
              {
                *(a3 + 192) = v16;
                *(a3 + 196) = v14;
              }

              *(a3 + 216) = *(v12 + 40);
            }

            else if (v17 >= *(a3 + 220))
            {
              *(a3 + 220) = v17;
              if (v34 != v37)
              {
                *(a3 + 200) = v16;
                *(a3 + 204) = v14;
              }
            }

            continue;
          }

          v25 = v37[0];
          *(*a3 + ((v37[0] >> 3) & 0x1C)) |= 1 << v37[0];
          if ((*(v12 + 86) & 4) == 0)
          {
            v26 = *(v12 + 140);
            goto LABEL_31;
          }

          v29 = *(v12 + 40);
          if (*(a3 + 164) < v29)
          {
            *(a3 + 164) = v29;
            *(a3 + 161) = v25;
          }

          v26 = *(v12 + 140);
          if (v26 == 9 && *(a3 + 168) < v29)
          {
            *(a3 + 168) = v29;
            *(a3 + 162) = v25;
          }

          else
          {
LABEL_31:
            if (v26 == 15)
            {
              *(a3 + 160) = v25;
            }
          }

          v7 = 1;
          continue;
        }

        if (v13 != 3)
        {
          if (v13 != 4)
          {
LABEL_57:
            v30 = "0";
            DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 682, "GetMsmtStats", "0");
            v31 = "glmesrd_svid_report_mgr.cpp";
            v32 = 682;
LABEL_55:
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v31, v32, v30);
          }

          *(a3 + 224) = 1;
          v14 = v38;
          v7 |= v38 == 0;
          if ((*(v12 + 84) & 0x40) != 0)
          {
LABEL_22:
            v19 = v37[0];
            v20 = v37[0] >> 5;
            v21 = 1 << v37[0];
            *(*(a3 + 64) + 4 * v20) |= 1 << v37[0];
            v22 = *(v12 + 140);
            if (v22 <= 0x11 && ((1 << v22) & 0x21800) != 0)
            {
              *(*(a3 + 96) + 4 * v20) |= v21;
            }

            v23 = *(v12 + 40);
            v24 = *(a3 + 208);
            if (v23 >= v24)
            {
              *(a3 + 212) = v24;
              *(a3 + 184) = *(a3 + 176);
              *(a3 + 188) = *(a3 + 180);
              if (v35 != v37)
              {
                *(a3 + 176) = v19;
                *(a3 + 180) = v14;
              }

              *(a3 + 208) = *(v12 + 40);
            }

            else if (v23 >= *(a3 + 212))
            {
              *(a3 + 212) = v23;
              if (v33 != v37)
              {
                *(a3 + 184) = v19;
                *(a3 + 188) = v14;
              }
            }

            continue;
          }

          goto LABEL_15;
        }

        if (v38 && v38 != 3)
        {
          v30 = "otSatCarrId.GetSignalIndex() == SIGNAL_INDEX_0 || otSatCarrId.GetSignalIndex() == SIGNAL_INDEX_3";
          DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 615, "GetMsmtStats", "otSatCarrId.GetSignalIndex() == SIGNAL_INDEX_0 || otSatCarrId.GetSignalIndex() == SIGNAL_INDEX_3");
          v31 = "glmesrd_svid_report_mgr.cpp";
          v32 = 615;
          goto LABEL_55;
        }

        v27 = v37[0];
        v7 = 1;
        *(*(a3 + 128) + ((v37[0] >> 3) & 0x1C)) |= 1 << v37[0];
        if ((*(v12 + 86) & 4) != 0)
        {
          v28 = *(v12 + 40);
          if (*(a3 + 172) < v28)
          {
            *(a3 + 172) = v28;
            *(a3 + 163) = v27;
          }
        }
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSvIdReportMgr::DecideWhichSatToPublish(uint64_t a1, float *a2, _BYTE *a3)
{
  *a3 = 0;
  v6 = *(a2 + 160);
  if (v6 != 255)
  {
    v7 = *(a2 + 12);
    if (!*v7)
    {
      v21 = *(a2 + 104);
      if (v21 < 2)
      {
        return v6;
      }

      v22 = v21 - 1;
      v23 = v7 + 1;
      while (!*v23++)
      {
        if (!--v22)
        {
          goto LABEL_60;
        }
      }
    }
  }

  v8 = *(a2 + 8);
  if (*v8)
  {
LABEL_4:
    v6 = *(a2 + 176);
    if (BlueFin::GlSetBase::Cnt((a2 + 16)) < 2)
    {
      goto LABEL_60;
    }

    v9 = *(a1 + 8);
    v10 = *(v9 + 828);
    v11 = *(v9 + 830);
    if (v6 + 100 * *(a2 + 180) - v10 >= v11)
    {
      goto LABEL_95;
    }

    v12 = *(v9 + 808);
    v13 = *(v12 + 2 * (v6 + 100 * *(a2 + 180) - v10));
    if (v13 == 0xFFFF)
    {
      v14 = 0;
      goto LABEL_22;
    }

    if (*(v9 + 832) > v13)
    {
      v14 = *(v9 + 800) + *(v9 + 824) * v13;
LABEL_22:
      v25 = *(a2 + 184) + 100 * *(a2 + 188) - v10;
      if (v25 < v11)
      {
        v26 = *(v12 + 2 * v25);
        if (v26 == 0xFFFF)
        {
          v27 = 0;
LABEL_27:
          BlueFin::GlMeSrdSvIdReportMsmtSlot::GetSvId(&v68, v14);
          if (v68 < 0x8Bu || (BlueFin::GlMeSrdSvIdReportMsmtSlot::GetSvId(&v69, v14), v69 > 0xAEu))
          {
            v30 = *(v14 + 140);
            if (v30 <= 0x11 && ((1 << v30) & 0x21800) != 0 && *(v27 + 140) == 10 || *(v14 + 116) == 1)
            {
              goto LABEL_59;
            }

            v31 = *(v27 + 140);
            if (v31 <= 0x11 && ((1 << v31) & 0x21800) != 0 && v30 == 10)
            {
              goto LABEL_63;
            }
          }

          else if (*(v14 + 160) == 1)
          {
            if ((*(v27 + 160) & 1) == 0)
            {
              v28 = *(v14 + 112);
              v29 = *(v14 + 104);
LABEL_57:
              BlueFin::GlSatCarrId::GlSatCarrId(&v68, v28, v29);
              v6 = v68;
              goto LABEL_60;
            }
          }

          else if (*(v27 + 160))
          {
            v28 = *(v27 + 112);
            v29 = *(v27 + 104);
            goto LABEL_57;
          }

          if (*(v14 + 48) < 0x7D1u && (*(v27 + 48) >= 0x7D1u || (a2[52] - a2[53]) <= 2.0 && *(v14 + 68) > *(v27 + 68)))
          {
LABEL_63:
            v6 = *(a2 + 184);
            goto LABEL_60;
          }

LABEL_59:
          v6 = *(a2 + 176);
          goto LABEL_60;
        }

        if (*(v9 + 832) > v26)
        {
          v27 = *(v9 + 800) + *(v9 + 824) * v26;
          goto LABEL_27;
        }

        goto LABEL_96;
      }

LABEL_95:
      v65 = "handle - m_usMinHandle < m_usNumHandles";
      DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
      v66 = "glinc_array.h";
      v67 = 313;
      goto LABEL_97;
    }

    goto LABEL_96;
  }

  v15 = *(a2 + 72);
  if (v15 >= 2)
  {
    v16 = v15 - 1;
    v17 = v8 + 1;
    do
    {
      if (*v17++)
      {
        goto LABEL_4;
      }
    }

    while (--v16);
  }

  v19 = *a2;
  v20 = **a2;
  if (!v20)
  {
    v32 = *(a2 + 8);
    if (v32 < 2)
    {
      goto LABEL_44;
    }

    v33 = v32 - 1;
    v34 = (v19 + 4);
    while (!*v34++)
    {
      if (!--v33)
      {
        goto LABEL_44;
      }
    }
  }

  v6 = *(a2 + 162);
  if (v6 == 255)
  {
LABEL_44:
    v36 = *(a2 + 4);
    if (!*v36)
    {
      v43 = *(a2 + 40);
      if (v43 < 2)
      {
LABEL_53:
        if (!v20)
        {
          v56 = *(a2 + 8);
          if (v56 < 2)
          {
LABEL_88:
            v60 = *(a2 + 16);
            if (!*v60)
            {
              v61 = *(a2 + 136);
              if (v61 < 2)
              {
LABEL_94:
                v65 = "ucSatToPublish != INVALID_SATID";
                DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 864, "DecideWhichSatToPublish", "ucSatToPublish != INVALID_SATID");
                v66 = "glmesrd_svid_report_mgr.cpp";
                v67 = 864;
                goto LABEL_97;
              }

              v62 = v61 - 1;
              v63 = v60 + 1;
              while (!*v63++)
              {
                if (!--v62)
                {
                  goto LABEL_94;
                }
              }
            }

            v6 = *(a2 + 163);
            goto LABEL_60;
          }

          v57 = v56 - 1;
          v58 = (v19 + 4);
          while (!*v58++)
          {
            if (!--v57)
            {
              goto LABEL_88;
            }
          }
        }

        v6 = *(a2 + 161);
        goto LABEL_60;
      }

      v44 = v43 - 1;
      v45 = v36 + 1;
      while (!*v45++)
      {
        if (!--v44)
        {
          goto LABEL_53;
        }
      }
    }

    v6 = *(a2 + 192);
    if (BlueFin::GlSetBase::Cnt((a2 + 8)) < 2)
    {
      goto LABEL_60;
    }

    v37 = *(a1 + 8);
    v38 = *(v37 + 828);
    v39 = *(v37 + 830);
    if (v6 + 100 * *(a2 + 196) - v38 >= v39)
    {
      goto LABEL_95;
    }

    v40 = *(v37 + 808);
    v41 = *(v40 + 2 * (v6 + 100 * *(a2 + 196) - v38));
    if (v41 == 0xFFFF)
    {
      v42 = 0;
    }

    else
    {
      if (*(v37 + 832) <= v41)
      {
        goto LABEL_96;
      }

      v42 = *(v37 + 800) + *(v37 + 824) * v41;
    }

    v48 = *(a2 + 200) + 100 * *(a2 + 204) - v38;
    if (v48 >= v39)
    {
      goto LABEL_95;
    }

    v49 = *(v40 + 2 * v48);
    if (*(v37 + 832) <= v49)
    {
LABEL_96:
      v65 = "slot < m_usNumSlots";
      DeviceFaultNotify("glinc_array.h", 319, "EnsureValidSlot", "slot < m_usNumSlots");
      v66 = "glinc_array.h";
      v67 = 319;
LABEL_97:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v66, v67, v65);
    }

    v50 = *(v37 + 800) + *(v37 + 824) * v49;
    v51 = *(v42 + 48);
    if (v51 >= *(v50 + 48))
    {
      v51 = *(v50 + 48);
    }

    if (vabdd_f64(*(v42 + 24), *(v50 + 24)) >= 0.000001 || vabds_f32(*(v42 + 32), *(v50 + 32)) >= 0.00000003)
    {
      if (v51 >> 3 <= 0x752)
      {
        *a3 = 1;
      }
    }

    else
    {
      v52 = *(v50 + 140);
      v53 = v52 > 0x11;
      v54 = (1 << v52) & 0x21800;
      if (!v53 && v54 != 0)
      {
        if (*(v42 + 140) == 10)
        {
          v6 = *(a2 + 200);
        }

        else
        {
          v6 = v6;
        }
      }
    }

LABEL_60:
    if (v6 != 255)
    {
      return v6;
    }

    goto LABEL_94;
  }

  return v6;
}

uint64_t *BlueFin::GlMeSrdSvIdReportMgr::DecideWhichSatsToKill(uint64_t a1, int a2, int a3, BlueFin::GlSetBase *a4, uint64_t a5)
{
  if (*(a4 + 160) != 255)
  {
    v10 = *(a4 + 12);
    if (!*v10)
    {
      v28 = *(a4 + 104);
      if (v28 < 2)
      {
LABEL_22:
        *v58 = &v60;
        v59 = 4;
        v60 = 0uLL;
        BlueFin::GlSetBase::OperatorBinaryOr(a4 + 64, v58, a4 + 16);
        result = BlueFin::GlSetBase::operator=(a5, v58);
        *(a5 + 12) = v60;
        return result;
      }

      v29 = v28 - 1;
      v30 = v10 + 1;
      while (!*v30++)
      {
        if (!--v29)
        {
          goto LABEL_22;
        }
      }
    }
  }

  v11 = *(a4 + 8);
  if (*v11)
  {
LABEL_4:
    v55 = v57;
    v56 = 4;
    v57[1] = 0;
    v57[0] = 0;
    BlueFin::GlSetBase::OperatorBinaryOr(a4 + 64, &v55, a4 + 16);
    *v58 = &v60;
    v59 = 4;
    v60 = 0uLL;
    BlueFin::GlSetBase::OperatorBinaryOr(&v55, v58, a4 + 4);
    v12 = BlueFin::GlSetBase::operator=(a5, v58);
    *(a5 + 12) = v60;
    BlueFin::GlSetBase::Remove(v12, a2);
    result = BlueFin::GlSetBase::Cnt((a4 + 64));
    if (result < 2)
    {
      return result;
    }

    v14 = *(a1 + 8);
    v15 = *(v14 + 828);
    v16 = *(v14 + 830);
    if (*(a4 + 176) + 100 * *(a4 + 180) - v15 < v16)
    {
      v17 = *(v14 + 808);
      v18 = *(v17 + 2 * (*(a4 + 176) + 100 * *(a4 + 180) - v15));
      if (v18 == 0xFFFF)
      {
        v19 = 0;
      }

      else
      {
        if (*(v14 + 832) <= v18)
        {
LABEL_64:
          v44 = "slot < m_usNumSlots";
          DeviceFaultNotify("glinc_array.h", 319, "EnsureValidSlot", "slot < m_usNumSlots");
          v45 = "glinc_array.h";
          v46 = 319;
          goto LABEL_68;
        }

        v19 = *(v14 + 800) + *(v14 + 824) * v18;
      }

      v32 = *(a4 + 184) + 100 * *(a4 + 188) - v15;
      if (v32 < v16)
      {
        v33 = *(v17 + 2 * v32);
        if (v33 == 0xFFFF)
        {
          v34 = 0;
          goto LABEL_30;
        }

        if (*(v14 + 832) > v33)
        {
          v34 = *(v14 + 800) + *(v14 + 824) * v33;
LABEL_30:
          result = BlueFin::GlMeSrdSvIdReportMsmtSlot::GetSvId(v58, v19);
          if (LOBYTE(v58[0]) - 139 > 0x23)
          {
            return result;
          }

          if (*(v19 + 160) == *(v34 + 160))
          {
            BlueFin::GlSatCarrId::GlSatCarrId(v58, *(v19 + 112), *(v19 + 104));
            if (LOBYTE(v58[0]) == a2)
            {
              v35 = *(v19 + 112);
              v36 = *(v19 + 104);
LABEL_48:
              BlueFin::GlSatCarrId::GlSatCarrId(v58, v35, v36);
              v27 = LOBYTE(v58[0]);
              return BlueFin::GlSetBase::Remove(a5, v27);
            }

            result = BlueFin::GlSatCarrId::GlSatCarrId(v58, *(v34 + 112), *(v34 + 104));
            if (LOBYTE(v58[0]) != a2)
            {
              return result;
            }
          }

          else
          {
            BlueFin::GlSatCarrId::GlSatCarrId(v58, *(v19 + 112), *(v19 + 104));
            BlueFin::GlSetBase::Remove(a5, LOBYTE(v58[0]));
          }

          v35 = *(v34 + 112);
          v36 = *(v34 + 104);
          goto LABEL_48;
        }

        goto LABEL_64;
      }
    }

    v44 = "handle - m_usMinHandle < m_usNumHandles";
    DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
    v45 = "glinc_array.h";
    v46 = 313;
    goto LABEL_68;
  }

  v20 = *(a4 + 72);
  if (v20 >= 2)
  {
    v21 = v20 - 1;
    v22 = v11 + 1;
    do
    {
      if (*v22++)
      {
        goto LABEL_4;
      }
    }

    while (--v21);
  }

  v24 = *(a4 + 4);
  if (*v24)
  {
LABEL_13:
    *v58 = &v60;
    v59 = 4;
    v60 = 0uLL;
    BlueFin::GlSetBase::OperatorBinaryOr(a4 + 128, v58, a4 + 4);
    v25 = BlueFin::GlSetBase::operator=(a5, v58);
    *(a5 + 12) = v60;
    result = BlueFin::GlSetBase::Remove(v25, a2);
    if (a3)
    {
      if (BlueFin::GlSetBase::Cnt((a4 + 32)) <= 1)
      {
        v44 = "otMsmtStats.m_otInvalidTrkMsmts.Cnt() >= 2";
        DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 933, "DecideWhichSatsToKill", "otMsmtStats.m_otInvalidTrkMsmts.Cnt() >= 2");
        v45 = "glmesrd_svid_report_mgr.cpp";
        v46 = 933;
      }

      else
      {
        v26 = *(a4 + 192);
        if (v26 == 255)
        {
          v44 = "otMsmtStats.m_otTopTwoCnoInvalidTrkSatid[0].GetSatId() != INVALID_SATID";
          DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 934, "DecideWhichSatsToKill", "otMsmtStats.m_otTopTwoCnoInvalidTrkSatid[0].GetSatId() != INVALID_SATID");
          v45 = "glmesrd_svid_report_mgr.cpp";
          v46 = 934;
        }

        else
        {
          if (*(a4 + 200) != 255)
          {
            BlueFin::GlSetBase::Remove(a5, v26);
            v27 = *(a4 + 200);
            return BlueFin::GlSetBase::Remove(a5, v27);
          }

          v44 = "otMsmtStats.m_otTopTwoCnoInvalidTrkSatid[1].GetSatId() != INVALID_SATID";
          DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 935, "DecideWhichSatsToKill", "otMsmtStats.m_otTopTwoCnoInvalidTrkSatid[1].GetSatId() != INVALID_SATID");
          v45 = "glmesrd_svid_report_mgr.cpp";
          v46 = 935;
        }
      }

LABEL_68:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v45, v46, v44);
    }

    if (*(a4 + 162) == a2)
    {
      return result;
    }

    v43 = *(a4 + 16);
    if (!*v43)
    {
      v51 = *(a4 + 136);
      if (v51 < 2)
      {
        return result;
      }

      v52 = v51 - 1;
      v53 = v43 + 1;
      while (!*v53++)
      {
        if (!--v52)
        {
          return result;
        }
      }
    }

    v27 = *(a4 + 163);
    if (v27 == 255)
    {
      v44 = "otMsmtStats.m_ucMaxSniffCnoSatid != INVALID_SATID";
      DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 945, "DecideWhichSatsToKill", "otMsmtStats.m_ucMaxSniffCnoSatid != INVALID_SATID");
      v45 = "glmesrd_svid_report_mgr.cpp";
      v46 = 945;
      goto LABEL_68;
    }

    return BlueFin::GlSetBase::Remove(a5, v27);
  }

  v37 = *(a4 + 40);
  if (v37 >= 2)
  {
    v38 = v37 - 1;
    v39 = v24 + 1;
    do
    {
      if (*v39++)
      {
        goto LABEL_13;
      }
    }

    while (--v38);
  }

  result = BlueFin::GlSetBase::operator=(a5, a4 + 128);
  *(a5 + 12) = *(a4 + 140);
  v41 = *(a4 + 16);
  if (!*v41)
  {
    v47 = *(a4 + 136);
    if (v47 < 2)
    {
      return result;
    }

    v48 = v47 - 1;
    v49 = v41 + 1;
    while (!*v49++)
    {
      if (!--v48)
      {
        return result;
      }
    }
  }

  v42 = *(a4 + 163);

  return BlueFin::GlSetBase::Remove(a5, v42);
}

void BlueFin::GlMeMsmtHolder::SetDSPMeas(uint64_t this, const BlueFin::GlMeDSPMeas *a2)
{
  v56[0] = *(a2 + 100);
  v57 = *(a2 + 26);
  v58 = *(a2 + 54);
  if (v56[0] - 1 > 0xBB)
  {
    return;
  }

  v4 = *(a2 + 35);
  if (v4 == 8)
  {
LABEL_6:
    v5 = 1;
    goto LABEL_8;
  }

  if (v4 == 9 && v56[0] >= 0x8Bu)
  {
    if (v56[0] > 0xAEu)
    {
      v5 = 0;
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v5 = 0;
LABEL_8:
  if (v56[0] - 33 < 0x13)
  {
    goto LABEL_10;
  }

LABEL_9:
  if ((*(a2 + 86) & 1) == 0)
  {
    goto LABEL_10;
  }

  v38 = &off_2A1F0E398;
  LOBYTE(v39) = 0;
  v40 = -1;
  v41 = 575;
  v42 = 0;
  v43 = 0;
  v44 = xmmword_298A339D0;
  v45 = 2139095039;
  v46 = 0.0;
  v47 = 3.4028e38;
  v48 = 0;
  v49 = 0x7FEFFFFFFFFFFFFFLL;
  v50 = -1;
  v51 = -1;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v55 = 0;
  v7 = *(this + 16);
  v8 = *(a2 + 3);
  v37 = 1;
  if (((*(*v7 + 24))(v7, v56, &v38, &v37, 0, 0, v8 * 1000.0, 0.0, 0.0) & 1) == 0)
  {
    return;
  }

  if (v56[0] < 0x34u)
  {
    v9 = v47;
    v10 = 0.00015152;
    goto LABEL_43;
  }

  v9 = v47;
  if (v56[0] < 0x42u || v47 >= 0.00015152)
  {
    if (v56[0] > 0x41u)
    {
      goto LABEL_10;
    }

    v10 = 0.00030333;
LABEL_43:
    if (v9 < v10)
    {
      goto LABEL_44;
    }

LABEL_10:
    if (v5)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_44:
  v30 = *(a2 + 3) * 1000.0 - floor(*(a2 + 3) * 1000.0) - (v46 * 1000.0 - floor(v46 * 1000.0));
  if (v30 < 0.0)
  {
    v30 = -v30;
  }

  if (v30 > 0.0205)
  {
    v31 = 1;
  }

  else
  {
    v31 = v5;
  }

  if (v31)
  {
    return;
  }

LABEL_11:
  if (BlueFin::GlBigArray::Has((*(this + 120) + 1152), v58))
  {
    v6 = BlueFin::GlSignalIdArray::Get(*(this + 120), v56);
    goto LABEL_54;
  }

  v11 = *(this + 120);
  v12 = *(v11 + 1184);
  v13 = *(v11 + 1186);
  if (*(this + 17392) > (v12 + ~v13))
  {
    v14 = BlueFin::GlBigArray::Add((v11 + 1152), v58);
    if (v14)
    {
      goto LABEL_53;
    }

    v15 = "0";
    DeviceFaultNotify("glme_msmtholder.cpp", 416, "SetDSPMeas", "0");
    v16 = "glme_msmtholder.cpp";
    v17 = 416;
    goto LABEL_65;
  }

  v18 = v13 + 1;
  if (v12 <= v18)
  {
    goto LABEL_59;
  }

  v19 = 0;
  v20 = 0;
  v21 = v18;
  v22 = 575;
  v23 = 4294967300.0;
  do
  {
    v24 = *(v11 + 1180) + *(*(v11 + 1168) + 2 * v21);
    if (!BlueFin::GlBigArray::Has((v11 + 1152), v24))
    {
      v15 = "m_potArray->Has(handle)";
      DeviceFaultNotify("glinc_array.h", 362, "Next", "m_potArray->Has(handle)");
      v16 = "glinc_array.h";
      v17 = 362;
      goto LABEL_65;
    }

    if (v24 >= 0x23Fu)
    {
      v15 = "usIndex < NUM_SIGNAL_IDS";
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      v16 = "glsignalid.h";
      v17 = 578;
      goto LABEL_65;
    }

    v25 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v24;
    v26 = *v25;
    LODWORD(v25) = v25[1];
    LOBYTE(v38) = v26;
    HIDWORD(v38) = v25;
    v39 = v24;
    v27 = BlueFin::GlSignalIdArray::Get(*(this + 120), &v38);
    v28 = *(v27 + 140);
    v29 = v28 == 14 || v28 == 16;
    if (v29 || v20 != 14 && v20 != 16 && *(v27 + 140) <= 0x11u && (((1 << v28) & 0x23C00) != 0 || ((1 << v28) & 0x8300) != 0) && *(v27 + 24) < v23)
    {
      v19 = *(v27 + 100);
      v22 = *(v27 + 108);
      v20 = *(v27 + 140);
      v23 = *(v27 + 24);
    }

    ++v21;
  }

  while (v21 < *(v11 + 1184));
  if (!v19)
  {
LABEL_59:
    v36 = *(a2 + 35);
    if ((v36 - 10) >= 4 && v36 != 17 || *(this + 17392) < 100)
    {
      return;
    }

    v15 = "0";
    DeviceFaultNotify("glme_msmtholder.cpp", 439, "SetDSPMeas", "0");
    v16 = "glme_msmtholder.cpp";
    v17 = 439;
LABEL_65:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v16, v17, v15);
  }

  BlueFin::GlBigArray::Remove(*(this + 120) + 1152, v22);
  BlueFin::GlSetBase::Remove(this + 32, v22);
  v14 = BlueFin::GlBigArray::Add((*(this + 120) + 1152), v58);
  if (!v14)
  {
    v15 = "0";
    DeviceFaultNotify("glme_msmtholder.cpp", 427, "SetDSPMeas", "0");
    v16 = "glme_msmtholder.cpp";
    v17 = 427;
    goto LABEL_65;
  }

LABEL_53:
  v6 = v14;
  *v14 = &unk_2A1F0DBF0;
  *(v14 + 84) = 0;
  *(v14 + 100) = 0;
  *(v14 + 104) = -1;
  *(v14 + 108) = 575;
  BlueFin::GlMeDSPMeas::init(v14, v56);
LABEL_54:
  BlueFin::GlMeDSPMeas::operator=(v6, a2);
  *(*(this + 32) + 4 * (v58 >> 5)) |= 1 << v58;
  v32 = *(a2 + 9);
  v33 = BlueFin::GlMeMsmtMgr::CurrentCrossCorrThreshSNR_Get(*(this + 8));
  v34 = *(v6 + 84);
  if (v32 >= v33)
  {
    v35 = v34 & 0xFFFF7FFF;
  }

  else
  {
    v35 = v34 | 0x8000;
  }

  *(v6 + 84) = v35;
}

void BlueFin::GlMeMeasAidFilter::SetDSPMeas(uint64_t this, const BlueFin::GlMeDSPMeas *a2)
{
  *(BlueFin::GlMeMeasSelfAidFilter::m_otSetMsmtSignalIds + (*(a2 + 54) >> 5)) |= 1 << *(a2 + 54);
  if (BlueFin::GlMeMeasSelfAidFilter::m_IsSelfAidOn != 1 || *(a2 + 35) != 14)
  {
    BlueFin::GlMeMsmtHolder::SetDSPMeas(this + 11680, a2);

    BlueFin::GlMeMsmtMgr::SetDSPMeas((this + 10624), a2);
  }
}

uint64_t BlueFin::GlMeFrameMgr::AddBestWord(BlueFin::GlMeFrameMgr *this, unsigned int a2, BlueFin::GPSFrameMgrUtils *a3, unsigned int a4, unsigned __int32 a5, BlueFin::GPSFrameMgrUtils *a6, unsigned int a7, unsigned __int32 a8)
{
  v169 = *MEMORY[0x29EDCA608];
  if (*this != 1)
  {
    v133 = "SYNCED == m_utStateMem.ucState";
    DeviceFaultNotify("glme_framemgr.h", 532, "GetSynced", "SYNCED == m_utStateMem.ucState");
    v134 = "glme_framemgr.h";
    v135 = 532;
    goto LABEL_256;
  }

  v14 = this;
  v15 = this + 340;
  v156[0] = this + 340;
  v156[1] = 0;
  v157 = 0;
  v160 = 0;
  v159 = 0;
  v158 = vdup_n_s32(0x140u);
  v161 = 0;
  BlueFin::GlBitBuffer::Position(v156, 32 * *(this + 3));
  v16 = 0;
  if (a4 == -1)
  {
    v16 = BlueFin::GPSFrameMgrUtils::Parity(a3);
  }

  v151 = a7 == -1 && BlueFin::GPSFrameMgrUtils::Parity(a6);
  v17 = a7 == -1 || a4 == -1;
  if (v17)
  {
    v18 = *(v14 + 50);
    if (v18)
    {
      (*(*v18 + 32))(v18, v16 || v151, 1, v14 + 408);
    }
  }

  v147 = v16;
  v19 = *(v14 + 13);
  v20 = v159;
  if (v19 >= a2)
  {
LABEL_23:
    v149 = a4;
    v150 = a7;
    v25 = a7 | a4;
    v26 = (v19 - a2) / 0x258 + 1;
    if (v26 < (v158.i32[1] - v20) >> 5)
    {
      v27 = (v158.i32[1] - v20) >> 5;
      do
      {
        --v27;
        BlueFin::GlBitBuffer::PutU(v156, 0x4BADC0DEu, 0x20u);
      }

      while (v26 < v27);
      v20 = v159;
    }

    v146 = a8;
    v152 = a6;
    v28 = a2;
    v29 = v15;
    v30 = *(v14 + 12);
    v155 = v20 >> 5;
    v31 = 1269678302;
    if (v20 >= 0x20)
    {
      BlueFin::GlBitBuffer::Position(v156, v20 - 32);
      v31 = BlueFin::GlBitBuffer::GetU(v156, 0x20u);
    }

    v32 = BlueFin::GPSFrameMgrUtils::Parity(v31);
    v145 = BlueFin::GlMeFrameMgr::TestOverlapBits(a3, v155, v31, v32);
    v153 = v32;
    v154 = v31;
    v33 = BlueFin::GlMeFrameMgr::TestOverlapBits(v152, v155, v31, v32);
    if (!v25 || v20 < 0x40 || (v35 = (v30 + 4) % 5u, v35 > 2))
    {
      v40 = v29;
      if ((v150 & a4) == 0xFFFFFFFF)
      {
        v42 = a3;
        if (a3 == v152 || (v152 ^ a3) == 0xFFFFFFFF)
        {
          v112 = !v147;
          v113 = 1269678302;
        }

        else
        {
          if (v147 && v151)
          {
            v34.i32[0] = a5;
            v43 = vcnt_s8(v34);
            v43.i16[0] = vaddlv_u8(v43);
            v44 = v43.i32[0];
            v43.i32[0] = v146;
            v45 = vcnt_s8(v43);
            v45.i16[0] = vaddlv_u8(v45);
            if (v44 == v45.i32[0])
            {
              if (v145 != v33)
              {
                v46 = a3;
              }

              else
              {
                v46 = -1951547170;
              }

              if (v33)
              {
                v47 = v152;
              }

              else
              {
                v47 = 1269678302;
              }

              if (v145 | v33 ^ 1)
              {
                v42 = v46;
              }

              else
              {
                v42 = v47;
              }
            }

            else if (v45.i32[0] >= v44)
            {
              if (v44 >= v45.i32[0])
              {
                v42 = 1269678302;
              }

              else
              {
                v42 = v152;
              }
            }

            goto LABEL_206;
          }

          if (v151)
          {
            v113 = v152;
          }

          else
          {
            v113 = 1269678302;
          }

          v112 = !v147;
        }

        if (v112)
        {
          v42 = v113;
        }

        else
        {
          v42 = a3;
        }
      }

      else
      {
        v41 = v152;
        if (!v151)
        {
          v41 = 1269678302;
        }

        if (v147)
        {
          v42 = a3;
        }

        else
        {
          v42 = v41;
        }
      }

LABEL_206:
      BlueFin::GlBitBuffer::PutU(v156, v42, 0x20u);
      v115 = v159;
      if ((*(v14 + 804) & 1) != 0 || 30 * ((v158.i32[1] - v159) >> 5) == (*(v14 + 13) - v28) / 0x14)
      {
        if (v159 == 320)
        {
          result = BlueFin::GlMeFrameMgr::SendSubFrame(v14, v156);
          if (!result)
          {
            return result;
          }

          v115 = v159;
        }

        *(v14 + 3) = v115 >> 5;
        if ((v115 & 0x1FE0) != 0x40)
        {
          return 1;
        }

        v116 = *(v14 + 86);
        if (!BlueFin::GPSFrameMgrUtils::Parity(v116))
        {
          return 1;
        }

        if ((~v116 & 3) != 0)
        {
          v117 = v116;
        }

        else
        {
          v117 = ~v116;
        }

        if ((v117 & 0x40000000) != 0)
        {
          v117 ^= 0x3FFFFFC0u;
        }

        v118 = (v117 >> 13) & 0x1FFFF;
        v17 = (v117 & 3) == 0;
        v119 = v117 >> 13;
        v120 = (v117 >> 8) & 7;
        v121 = (v119 >> 6) & 0x7FF;
        v124 = v17 && v118 + 4 - 5 * ((858993460 * (v118 + 4)) >> 32) + 1 == v120 && v121 < 0x627;
        v125 = *(v14 + 12);
        if (!*(v14 + 1))
        {
          v126 = *v40;
          if (BlueFin::GPSFrameMgrUtils::Parity(*v40))
          {
            if (v126 >> 22 == 139)
            {
              v128 = v126;
            }

            else
            {
              v128 = ~v126;
            }

            v17 = v128 >> 22 == 139;
            v129 = v124 ^ 1;
            if (!v17)
            {
              v129 = 1;
            }

            if (v129)
            {
              *(v14 + 412) = 0xFFFF0000FFFFLL;
              *(v14 + 87) = 0;
              *(v14 + 424) = 0u;
              *(v14 + 440) = 0u;
              *(v14 + 456) = 0u;
              *(v14 + 472) = 0u;
              *(v14 + 488) = 0u;
              *(v14 + 504) = 0u;
              *(v14 + 520) = 0u;
              *(v14 + 536) = 0u;
              *(v14 + 552) = 0u;
              *(v14 + 568) = 0u;
              *(v14 + 584) = 0u;
              *(v14 + 600) = 0u;
              *(v14 + 616) = 0u;
              *(v14 + 632) = 0u;
              *(v14 + 648) = 0u;
              *(v14 + 664) = 0u;
              *(v14 + 680) = 0u;
              *&v132 = 0xF0F0F0F0F0F0F0F0;
              *(&v132 + 1) = 0xF0F0F0F0F0F0F0F0;
              *(v14 + 48) = v132;
              *(v14 + 49) = v132;
              *(v14 + 46) = v132;
              *(v14 + 47) = v132;
              *(v14 + 44) = v132;
              *(v14 + 45) = v132;
              BlueFin::GlMeFrameMgr::SetState(v14, 0);
              return 0;
            }

            if (v118 != v125)
            {
              *(v14 + 12) = v118;
              return 1;
            }

            v130 = ++*(v14 + 2);
            *(v14 + 16) = v28;
            if (v130 >= 2)
            {
              *(v14 + 1) = 1;
              *(v14 + 3) = 0;
              LODWORD(v127) = *(v14 + 14);
              BlueFin::GlMeWinMgr::SetTMDecodeInfoFromGps(*(v14 + 48), v14 + 408, v127, v118, 1);
            }
          }
        }

        if (v118 == v125)
        {
          v131 = v124;
        }

        else
        {
          v131 = 0;
        }

        if (v131 == 1 && *(v14 + 1) == 1)
        {
          *(v14 + 15) = v28;
          *(v14 + 6) = 0;
        }

        return 1;
      }

      v133 = "(((GlIntU32)(30 * (otBitBuffer.Remaining() >> 5))) == Epochs2Bits(pstSynced->ulTowEpochCnt - ulEpochCnt))";
      DeviceFaultNotify("glme_framemgr.cpp", 1384, "AddBestWord", "(((GlIntU32)(30 * (otBitBuffer.Remaining() >> 5))) == Epochs2Bits(pstSynced->ulTowEpochCnt - ulEpochCnt))");
      v134 = "glme_framemgr.cpp";
      v135 = 1384;
LABEL_256:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v134, v135, v133);
    }

    v36 = *(v14 + 12);
    v37 = *(v14 + 105);
    if (v37 == -1)
    {
LABEL_59:
      v138 = v33;
      v139 = (v30 + 4) % 5u;
      v140 = v25;
      v142 = v29;
      v143 = v28;
      *(v14 + 105) = v36;
      v144 = v14;
      v136 = v14 + 424;
      v162[0] = v14 + 424;
      v162[1] = 0;
      v163 = 0;
      v166 = 0;
      v165 = 0;
      v164 = vdup_n_s32(0x8C0u);
      v167 = 0;
      v137 = v155 + 8 * v35 - 2;
      BlueFin::GlBitBuffer::Position(v162, 93 * v137);
      v49 = 0;
      LODWORD(v50) = 0;
      v141 = a3;
      v51 = a3 ^ (a3 >> 1);
      v52 = v152 ^ (v152 >> 1);
      v53 = a4 & (a4 >> 1);
      v54 = a5;
      v55 = v150 & (v150 >> 1);
      v56 = v146 & (v146 >> 1);
      do
      {
        v57 = BlueFin::GlBitBuffer::GetU(v162, 3u);
        if ((v57 & 0xFFFFFFFC) == 4)
        {
          v58 = -8;
        }

        else
        {
          v58 = 0;
        }

        v59 = v58 + v57;
        if (v53)
        {
          v59 += (2 * (v51 & 1) - 1) << (v54 & 1);
        }

        if (v55)
        {
          v60 = v59 + ((2 * (v52 & 1) - 1) << (v56 & 1));
        }

        else
        {
          v60 = v59;
        }

        if (v60 >= 3)
        {
          v61 = 3;
        }

        else
        {
          v61 = v60;
        }

        if (v61 <= -3)
        {
          v62 = -3;
        }

        else
        {
          v62 = v61;
        }

        BlueFin::GlBitBuffer::Position(v162, v165 - 3);
        BlueFin::GlBitBuffer::PutU(v162, v62 + 8, 3u);
        *(&v168[8] + v49 + 1) = v62;
        v63 = v49 + 1;
        v51 >>= 1;
        v52 >>= 1;
        if (v60 > 0)
        {
          v50 = ~(v50 ^ (-2 << v49));
        }

        else
        {
          v50 = v50;
        }

        v53 >>= 1;
        v55 >>= 1;
        ++v49;
        v54 >>= 1;
        v56 >>= 1;
      }

      while (v63 != 31);
      v64 = 0;
      v65.i32[1] = 0;
      v66 = 1269678302;
      memset(v168, 0, 124);
      do
      {
        v67 = 0;
        v68 = 0;
        v69 = 0;
        do
        {
          v70 = *(&v168[8] + v67 + 1);
          if (v70 >= -v64 && v70 <= v64)
          {
            v72 = (2 << v67) - 1;
            v69 |= *(v168 + v68) != v72;
            *(v168 + v68++) = v72;
          }

          ++v67;
        }

        while (v67 != 31);
        if ((v64 == 0) | v69 & 1)
        {
          if (v68 > 6)
          {
            break;
          }

          v73 = 0;
          v74 = 0;
          do
          {
            v75 = v50;
            if (v68 >= 1)
            {
              v76 = 0;
              v75 = v50;
              do
              {
                if ((v74 >> v76))
                {
                  v75 = (*(v168 + v76) ^ v75);
                }

                ++v76;
              }

              while (v68 != v76);
            }

            if (BlueFin::GlMeFrameMgr::TestOverlapBits(v75, v155, v154, v153))
            {
              v77 = BlueFin::GPSFrameMgrUtils::Parity(v75);
              if (v77)
              {
                v66 = v75;
              }

              if (v77 & v73)
              {
                v66 = 1269678302;
                goto LABEL_105;
              }

              v73 |= v77;
            }

            ++v74;
          }

          while (!(v74 >> v68));
          if (v73)
          {
            break;
          }
        }

        ++v64;
      }

      while (v64 != 3);
LABEL_105:
      v65.i32[0] = a5;
      v78 = vcnt_s8(v65);
      v78.i16[0] = vaddlv_u8(v78);
      v79 = v78.i32[0];
      v78.i32[0] = v146;
      v80 = vcnt_s8(v78);
      v80.i16[0] = vaddlv_u8(v80);
      if (v79 < v80.i32[0])
      {
        v81 = v80.i32[0] - v79;
      }

      else
      {
        v81 = v79 - v80.i32[0];
      }

      v82 = v141;
      v84 = v141 == v152 || (v152 ^ v141) == -1;
      v85 = v147 & v145;
      if (v149 != -1)
      {
        v85 = 0;
      }

      v86 = v151 & v138;
      if (v150 != -1)
      {
        v86 = 0;
      }

      v14 = v144;
      if (!v84 && v85 && v86 && v81 < 16)
      {
        goto LABEL_122;
      }

      if (v79 >= v80.i32[0])
      {
        v94 = v85;
      }

      else
      {
        v94 = 0;
      }

      if (v94)
      {
        v95 = v79;
      }

      else
      {
        v97 = v79 <= v80.i32[0];
        v98 = v85 | v86;
        v99 = v85 == 0;
        if (v85)
        {
          v100 = v141;
        }

        else
        {
          v100 = v152;
        }

        if (v99)
        {
          v101 = v80.i32[0];
        }

        else
        {
          v101 = v79;
        }

        if ((v86 & v97) != 0)
        {
          v82 = v152;
        }

        else
        {
          v82 = v100;
        }

        if ((v86 & v97) != 0)
        {
          v95 = v80.i32[0];
        }

        else
        {
          v95 = v101;
        }

        if ((v98 & 1) == 0)
        {
LABEL_122:
          v87 = (v144 + 704);
          v88 = (v144 + 4 * v137 + 704);
          v89 = *v88;
          v28 = v143;
          v40 = v142;
          v90 = v140;
          goto LABEL_123;
        }
      }

      v87 = (v144 + 704);
      v88 = (v144 + 4 * v137 + 704);
      v89 = *v88;
      v28 = v143;
      v40 = v142;
      v90 = v140;
      if (v82 != -1951547170 && v82 != 1269678302)
      {
        v103 = v66 != 1269678302 && v66 != -1951547170;
        v17 = v89 == v82;
        v104 = v89 ^ v82;
        v106 = v17 || v104 == -1 || v84;
        v108 = (v66 == v82 || (v82 ^ v66) == -1) && v103;
        if ((v106 & 1) != 0 || v95 > 0x18)
        {
          v66 = v82;
          v96 = v139;
        }

        else
        {
          v96 = v139;
          if (!v108)
          {
            *v88 = v82;
            goto LABEL_179;
          }

          v66 = v82;
        }

LABEL_133:
        *v88 = v66;
        v93 = v66;
        goto LABEL_180;
      }

LABEL_123:
      if (v68 >= 3 && (v89 ^ v66) != -1 && v89 != v66)
      {
        v96 = v139;
        if (v66 != -1951547170)
        {
          v93 = 1269678302;
          if (v66 != 1269678302)
          {
            *v88 = v66;
          }

          goto LABEL_180;
        }

        goto LABEL_179;
      }

      v96 = v139;
      if (v66 != -1951547170)
      {
        v93 = 1269678302;
        if (v66 == 1269678302)
        {
          goto LABEL_180;
        }

        goto LABEL_133;
      }

LABEL_179:
      v93 = 1269678302;
LABEL_180:
      if (v90 == -1)
      {
        v109 = v93;
      }

      else
      {
        v109 = 1269678302;
      }

      v42 = v109;
      if (v155 == byte_298A3A3B0[v96])
      {
        v42 = 1269678302;
        if (v109 != 1269678302)
        {
          v110 = ((v109 ^ ((2 * v109) >> 31)) >> 22);
          v111 = *(v144 + 103);
          if (v110 != v111)
          {
            if (v68 || v79 <= 0x1E && v80.i32[0] <= 0x1Eu && *(v144 + 104) != v110)
            {
              if (v111 == 0xFFFF)
              {
                v93 = v109;
              }

              else
              {
                v93 = 1269678302;
              }
            }

            else
            {
              if (v111 != 0xFFFF)
              {
                *(v136 + 34) = 0;
                *(v136 + 15) = 0u;
                *(v136 + 16) = 0u;
                *(v136 + 13) = 0u;
                *(v136 + 14) = 0u;
                *(v136 + 11) = 0u;
                *(v136 + 12) = 0u;
                *(v136 + 9) = 0u;
                *(v136 + 10) = 0u;
                *(v136 + 7) = 0u;
                *(v136 + 8) = 0u;
                *(v136 + 5) = 0u;
                *(v136 + 6) = 0u;
                *(v136 + 3) = 0u;
                *(v136 + 4) = 0u;
                *(v136 + 1) = 0u;
                *(v136 + 2) = 0u;
                *v136 = 0u;
                *&v114 = 0xF0F0F0F0F0F0F0F0;
                *(&v114 + 1) = 0xF0F0F0F0F0F0F0F0;
                v87[4] = v114;
                v87[5] = v114;
                v87[2] = v114;
                v87[3] = v114;
                *v87 = v114;
                v87[1] = v114;
              }

              *(v144 + 103) = v110;
              v110 = 0xFFFF;
            }

            *(v144 + 104) = v110;
          }

          v42 = v93;
        }
      }

      goto LABEL_206;
    }

    if (v36)
    {
      v38 = (v36 + 1199) / 0x4B0u;
      if (v37)
      {
LABEL_35:
        v39 = (v37 + 1199) / 0x4B0u;
        goto LABEL_57;
      }
    }

    else
    {
      v38 = 84;
      if (v37)
      {
        goto LABEL_35;
      }
    }

    v39 = 84;
LABEL_57:
    if (v38 != v39)
    {
      *(v14 + 87) = 0;
      *(v14 + 664) = 0u;
      *(v14 + 680) = 0u;
      *(v14 + 632) = 0u;
      *(v14 + 648) = 0u;
      *(v14 + 600) = 0u;
      *(v14 + 616) = 0u;
      *(v14 + 568) = 0u;
      *(v14 + 584) = 0u;
      *(v14 + 536) = 0u;
      *(v14 + 552) = 0u;
      *(v14 + 504) = 0u;
      *(v14 + 520) = 0u;
      *(v14 + 472) = 0u;
      *(v14 + 488) = 0u;
      *(v14 + 440) = 0u;
      *(v14 + 456) = 0u;
      *(v14 + 424) = 0u;
      *&v48 = 0xF0F0F0F0F0F0F0F0;
      *(&v48 + 1) = 0xF0F0F0F0F0F0F0F0;
      *(v14 + 48) = v48;
      *(v14 + 49) = v48;
      *(v14 + 46) = v48;
      *(v14 + 47) = v48;
      *(v14 + 44) = v48;
      *(v14 + 45) = v48;
      *(v14 + 412) = 0xFFFF0000FFFFLL;
    }

    goto LABEL_59;
  }

  if (!v159)
  {
LABEL_20:
    v22 = (a2 - v19 + 5999) / 0x1770;
    v23 = v22 + *(v14 + 12);
    v24 = 6000 * v22;
    if (v23 >> 6 >= 0x627)
    {
      v23 %= 0x189C0u;
    }

    v19 += v24;
    *(v14 + 12) = v23;
    *(v14 + 13) = v19;
    *(v14 + 14) += v24;
    goto LABEL_23;
  }

  while (v158.i32[1] != v159)
  {
    BlueFin::GlBitBuffer::PutU(v156, 0x4BADC0DEu, 0x20u);
  }

  result = BlueFin::GlMeFrameMgr::SendSubFrame(v14, v156);
  if (result)
  {
    v19 = *(v14 + 13);
    v20 = v159;
    goto LABEL_20;
  }

  return result;
}

BOOL BlueFin::GPSFrameMgrUtils::Parity(BlueFin::GPSFrameMgrUtils *this)
{
  v1 = this & 0xBB1F34A0 ^ ((this & 0xBB1F34A0) >> 16) ^ ((this & 0xBB1F34A0 ^ ((this & 0xBB1F34A0) >> 16)) >> 8);
  v2 = v1 ^ (v1 >> 4) ^ ((v1 ^ (v1 >> 4)) >> 2);
  if ((v2 ^ (v2 >> 1)))
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = v3;
    if (v3 == 5)
    {
      break;
    }

    v5 = __const__ZN7BlueFin16GPSFrameMgrUtils6ParityEj_ulParityMask[v3 + 1] & this;
    v6 = v5 ^ HIWORD(v5) ^ ((v5 ^ HIWORD(v5)) >> 8);
    v7 = v6 ^ (v6 >> 4) ^ ((v6 ^ (v6 >> 4)) >> 2);
    v8 = v7 ^ (v7 >> 1);
    v3 = v4 + 1;
  }

  while ((v8 & 1) == 0);
  return v4 > 4;
}

float BlueFin::GlMeSrdMultiPeakResults::ToPeGridMeas@<S0>(uint64_t *__return_ptr a1@<X8>, BlueFin::GlMeSrdMultiPeakResults *this@<X0>, const BlueFin::GlMeDSPMeas *a3@<X1>, float result@<S0>)
{
  *a1 = 0;
  *(a1 + 1) = -1;
  *(a1 + 4) = 575;
  if ((a3 + 100) == a1)
  {
    v4 = 0u;
    v7 = 0;
    v5 = -1;
  }

  else
  {
    v4 = *(a3 + 100);
    *a1 = v4;
    v5 = *(a3 + 26);
    *(a1 + 1) = v5;
    v6 = *(a3 + 54);
    *(a1 + 4) = v6;
    v7 = v6 < 0x23F;
  }

  v8 = *(this + 1);
  *(a1 + 16) = v8;
  *(a1 + 3) = *(a3 + 12);
  if (v8)
  {
    result = *(a3 + 14);
    v9 = a1 + 7;
    v10 = (this + 20);
    v11 = (v4 - 59);
    if ((v4 - 52) >= 0xE)
    {
      v11 = -8.0;
    }

    while (1)
    {
      v12 = *(v10 - 2);
      *(v9 - 3) = 0;
      *(v9 - 2) = 2139095039;
      *(v9 - 1) = result;
      *v9 = v12;
      if (!v7)
      {
        break;
      }

      v13 = BlueFin::GlSvId::s_aucSvId2gnss[v4];
      v14 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v5 + v13];
      v15 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v5 - v5 + v13];
      if (v14)
      {
        v16 = v15 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        v22 = "ulChipsPerEpoch != 0 && ucMsPerEpoch != 0";
        DeviceFaultNotify("glsignalid.h", 800, "GetSecondsPerChip", "ulChipsPerEpoch != 0 && ucMsPerEpoch != 0");
        v23 = 800;
LABEL_18:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v23, v22);
      }

      v17 = v15 / (1000 * v14);
      v18 = v17 * *v10;
      v19 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v5 - v5 + v13]];
      *(v9 - 4) = v17 * *(v10 - 1);
      v20 = v19 + v11 * 562500.0;
      if (v13 != 2)
      {
        v20 = v19;
      }

      v21 = v20;
      *(v9 - 4) = *(v10 - 4) / v21;
      *(v9 - 3) = v18;
      v9 += 5;
      v10 += 5;
      if (!--v8)
      {
        return result;
      }
    }

    v22 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 792, "GetSecondsPerChip", "IsValid()");
    v23 = 792;
    goto LABEL_18;
  }

  return result;
}

double BlueFin::GlMeDSPMeas::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 100) = *(a2 + 100);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 84) = *(a2 + 84);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 140) = *(a2 + 140);
    *(a1 + 116) = *(a2 + 116);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 132) = *(a2 + 132);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
    result = *(a2 + 148);
    *(a1 + 148) = result;
  }

  return result;
}

__n128 BlueFin::GlMeSrdSatRptTrkMsmtMI::UpdateState(unsigned __int8 **a1, uint64_t a2)
{
  v4 = *a1;
  v5 = vcvtd_n_f64_s32(*(*a1 + 17), 0x18uLL) + *(*a1 + 16);
  v6 = *(a2 + 16);
  if (vabdd_f64(v6, v5) > 4194304.0)
  {
    v7 = *(a2 + 8);
    if (v6 > v5)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 - 1;
    }

    *(a2 + 8) = v8;
  }

  *(a2 + 16) = v5;
  *v9.i64 = BlueFin::GlMeSrdAsicUnitConverter::EswUtStructToFinalUserTimeMs(v4 + 18, a1[4], *(a1 + 6));
  *v11.i64 = *v9.i64 + trunc(*v9.i64 * 2.32830644e-10) * -4294967300.0;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = vnegq_f64(v12);
  *&v14 = vbslq_s8(v13, v11, v9).u64[0];
  if (*v9.i64 > 4294967300.0)
  {
    *v9.i64 = v14;
  }

  if (*v9.i64 < -4294967300.0)
  {
    *v10.i64 = -*v9.i64;
    *v9.i64 = -(*v9.i64 - trunc(*v9.i64 * -2.32830644e-10) * -4294967300.0);
    *v9.i64 = -*vbslq_s8(v13, v9, v10).i64;
  }

  if (*v9.i64 < 0.0)
  {
    v15 = --*v9.i64;
  }

  else
  {
    v15 = *v9.i64;
  }

  *a2 = v15;
  *(a2 + 4) = BlueFin::GlMeSrdSatRptTrkMsmtMIBase::GetEpochCntInBits(a1);
  if (((*a1)[8] & 0x20) != 0)
  {
    *(a2 + 28) = *(a1 + 872);
    v18 = *(a1 + 3556);
    v17 = *(a1 + 3572);
    v19 = *(a1 + 3540);
    *(a2 + 128) = *(a1 + 897);
    *(a2 + 96) = v18;
    *(a2 + 112) = v17;
    *(a2 + 80) = v19;
    result = *(a1 + 3492);
    v20 = *(a1 + 3524);
    *(a2 + 48) = *(a1 + 3508);
    *(a2 + 64) = v20;
    *(a2 + 32) = result;
  }

  else
  {
    *(a2 + 28) = 0;
  }

  return result;
}

uint64_t BlueFin::MinnowGllRpcParserImp::Handle_SatRpt_TrkGridData(BlueFin::MinnowGllRpcParserImp *this, BlueFin::GlStream *a2)
{
  U08 = BlueFin::GlStream::GetU08(a2);
  v5 = BlueFin::GlStream::GetU08(a2);
  v14[0] = v5 & 1;
  v14[1] = (v5 >> 1) & 0xF;
  v6 = v5 >> 5;
  v14[2] = v5 >> 5;
  v7 = BlueFin::GlStream::GetU08(a2);
  v15 = v7 + 1;
  v16 = BlueFin::GlStream::GetU08(a2) + 1;
  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = (v7 + 32) >> 5;
  }

  v18 = v8;
  v9 = BlueFin::GlStream::GetU08(a2);
  v17 = 5 * (v9 & 7);
  v19 = (v9 >> 4) & 0xC | (v9 >> 3) & 3 | (16 * (BlueFin::GlStream::GetU08(a2) & 0x1F));
  v20[0] = 0;
  v10 = 12;
  do
  {
    *&v14[v10] = BlueFin::GlStream::GetU32(a2);
    v10 += 4;
    --v8;
  }

  while (v8);
  do
  {
    if ((v20[v8 >> 5] >> (v8 & 0x1F)))
    {
      U16 = BlueFin::GlStream::GetU16(a2);
      v12 = ((U16 << 16) & 0xFFE00000) >> U16;
    }

    else
    {
      v12 = 0;
    }

    v20[v8++ + 8] = v12;
  }

  while (v7 + 1 != v8);
  if (BlueFin::GlStream::GetAvailableSize(a2))
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1118, "Handle_SatRpt_TrkGridData", "otStream.GetAvailableSize() == 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_decoder_minnow.cpp", 1118, "otStream.GetAvailableSize() == 0");
  }

  return (*(**(*(this + 1) + 17072) + 80))(*(*(this + 1) + 17072), U08, v14);
}

float BlueFin::CT_GRID_XWCV::GetDriftChips(BlueFin::CT_GRID_XWCV *this, const BlueFin::GlSignalId *a2, float a3, float a4)
{
  v6 = BlueFin::GlMeSrdAsicUnitConverter::HzToPpu(this, a3, a2);
  if (*(this + 4) >= 0x23Fu)
  {
    v13 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v14 = 807;
    goto LABEL_9;
  }

  v7 = BlueFin::GlSvId::s_aucSvId2gnss[*this];
  v8 = *(this + 1);
  v9 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v8 + v7];
  v10 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v8 - v8 + v7];
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v13 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
    v14 = 815;
LABEL_9:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v14, v13);
  }

  return (v6 * (1000 * v9 / v10)) * a4;
}

void BlueFin::CT_GRID_XWCV::getResults(unsigned __int8 *a1, uint64_t a2, _BYTE *a3)
{
  *a3 = 1;
  v3 = *a1;
  a3[1] = v3;
  v4 = *(a1 + 37);
  a3[2] = *(*(v4 + 328) + 10) == 1;
  if (v3)
  {
    v5 = *(a2 + 80);
    v6 = *(a2 + 28);
    v7 = (a3 + 20);
    v8 = (a1 + 180);
    do
    {
      *(v7 - 2) = *(v8 - 3);
      v9 = *(v8 - 1);
      v10 = v5 + *v8;
      *(v7 - 2) = v9;
      *(v7 - 1) = v10;
      v11 = __exp10f(v9 / 10.0);
      v12 = *(v4 + 76) - *(v4 + 68);
      *v7 = sqrtf((v12 * ((2.0 / (v11 * (v6 * (2.0 - v12)))) + 1.0)) / (v11 + v11));
      v7 += 5;
      v8 += 8;
      --v3;
    }

    while (v3);
  }
}

uint64_t BlueFin::GlMeSrdEstGrid::Config(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v5 = *(a5 + 163);
  if (!v5)
  {
    GlCustomLog(11, "GlMeSrdEstGrid::Config:Missing Grid Config(sv:%u,%s) Ls:%6.3f\n");
    return 0;
  }

  if (v5 != *(a3 + 464))
  {
    if (a5[3])
    {
      v6 = *a5;
      *(a3 + 138) = xmmword_298A346A0;
      *(a3 + 464) = v5;
      *(a3 + 154) = xmmword_298A346B0;
      v7 = (a3 + 204);
      v8 = a5[1289];
      if (a5[1289])
      {
        v9 = 0;
        v10 = 0;
        v11 = *(a5 + 319);
        v12 = a5[1290];
        v13 = a5[1291];
        v14 = *(a5 + 318);
        v15 = *(a5 + 642);
        v16 = a5[1294];
        v17 = a5[1295];
        v18 = *(a5 + 643);
        v19 = a5[1296];
        v20 = a5[1297];
        do
        {
          if (v9 <= 2)
          {
            v21 = 2;
          }

          else
          {
            v21 = 5;
          }

          if (v9 <= 2)
          {
            v22 = v11;
          }

          else
          {
            v22 = v14;
          }

          v23 = v13 & (v22 >> ((v21 - v9) * v12));
          if (v23 > 0x3E)
          {
            v33 = v10;
          }

          else
          {
            v24 = 0;
            v25 = vcvtd_n_f64_u32(v23, 2uLL);
            v26 = 5 - v9;
            v27 = vcvtd_n_f64_u32(v17 & (v15 >> ((5 - v9) * v16)), 4uLL);
            if (v9)
            {
              v28 = v27;
            }

            else
            {
              v28 = 0.0;
            }

            v29 = vcvtd_n_f64_u32(((v18 >> (v26 * v19)) & v20) + 1, 2uLL);
            v30 = v28 + v25;
            v31 = (a5[1293] & (*(a5 + 320) >> (v26 * a5[1292])));
            do
            {
              v32 = vcvtd_n_f64_u32(*(a5 + 651) >> 11, 2uLL) - (v30 + (v24 * v29)) + ((*(a5 + 651) >> 6) & 0x1F);
              v33 = (v10 + 1);
              v34 = v10;
              ++v24;
              LODWORD(v10) = v10 + 1;
              v7[v34] = v32;
            }

            while (v31 >= v24);
          }

          ++v9;
          v10 = v33;
        }

        while (v9 != v8);
      }

      else
      {
        LOBYTE(v33) = 0;
      }

      if (((v33 > 7) & v6) != 0)
      {
        v35 = v33 - 8;
      }

      else
      {
        v35 = v33;
      }

      if (v35 >= 2u)
      {
        v36 = 0;
        v37 = v35 - 1;
        do
        {
          if (v36 < v35 - 1)
          {
            v38 = *v7;
            v39 = v37;
            v40 = (a3 + 208);
            do
            {
              if (v38 <= *v40)
              {
                v38 = *v40;
              }

              else
              {
                *(v40 - 1) = *v40;
                *v40 = v38;
              }

              ++v40;
              --v39;
            }

            while (v39);
          }

          --v37;
        }

        while (v36++ != v35 - 2);
      }

      *(a3 + 136) = v35;
      if (v6)
      {
        v42 = v35 + 8;
      }

      else
      {
        v42 = v35;
      }

      if (v42 == 8 * (*(*(a5 + 163) + 8) & 3) + 8)
      {
        if (v35 >= 2u)
        {
          v43 = 0;
          v44 = v35 - 1;
          v45 = (a3 + 139);
          v46 = (a3 + 208);
          do
          {
            if (*v46 != v7[v43])
            {
              v7[++v43] = *v46;
              *(a3 + 138 + v43) = *v45;
            }

            ++v45;
            ++v46;
            --v44;
          }

          while (v44);
          v35 = v43 + 1;
        }

        *(a3 + 136) = v35;
        *(a3 + 170) = xmmword_298A346A0;
        *(a3 + 186) = xmmword_298A346B0;
        v47 = *(a5 + 163);
        v48 = *(v47 + 4);
        v49 = (v48 & 0x1F) + 1;
        *(a3 + 332) = -((v48 >> 5) * (v49 >> 1));
        if ((v48 & 0x1F) != 0)
        {
          v50 = *(a3 + 332);
          v51 = v48 & 0x1F;
          v52 = (a3 + 336);
          do
          {
            v50 = v50 + (*(v47 + 4) >> 5);
            *v52++ = v50;
            --v51;
          }

          while (v51);
        }

        else
        {
          LOBYTE(v49) = 1;
        }

        *(a3 + 137) = v49;
        return 1;
      }

      GlCustomLog(11, "GlMeSrdEstGrid::Config:Bad Or Missing Tap Config(sv:%u,%s) Ls:%6.3f\n");
    }

    else
    {
      GlCustomLog(12, "GlMeSrdEstGrid::Config:MissingTapConfig(sv:%u,%s) Ls:%6.3f\n");
    }

    return 0;
  }

  return 1;
}

uint64_t BlueFin::ST_GRID_CONTEXT::ST_GRID_CONTEXT(uint64_t a1, float *a2, int *a3, uint64_t a4, double *a5, unsigned __int8 *a6, unsigned __int8 *a7, float a8)
{
  *(a1 + 64) = a6;
  v8 = *a7;
  *a1 = v8;
  LOBYTE(a8) = a7[11];
  v9 = LODWORD(a8);
  *(a1 + 4) = v9;
  v10 = *a4;
  *(a1 + 16) = *a4;
  if (*(a6 + 4) >= 0x23Fu)
  {
    v43 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 712, "GetSecPerEpochIndB", "IsValid()");
    v44 = "glsignalid.h";
    v45 = 712;
    goto LABEL_33;
  }

  v12 = *(a6 + 1);
  v13 = *a6;
  v14 = BlueFin::GlSvId::s_aucSvId2gnss[*a6];
  if (!BlueFin::GlSignalId::s_assSignalIndexAndGnss2epochIndB[7 * v12 + v14])
  {
    v43 = "ssEpochIndB != 0";
    DeviceFaultNotify("glsignalid.h", 719, "GetSecPerEpochIndB", "ssEpochIndB != 0");
    v44 = "glsignalid.h";
    v45 = 719;
    goto LABEL_33;
  }

  *(a1 + 8) = BlueFin::GlSignalId::s_assSignalIndexAndGnss2epochIndB[7 * v12 + v14];
  if (v12 != 1 || (v17 = 1.5, (v13 - 1) >= 0x20) && (v13 - 66) >= 0xA)
  {
    if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v12 - v12 + v14])
    {
      v43 = "ucMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
      v44 = "glsignalid.h";
      v45 = 686;
      goto LABEL_33;
    }

    v17 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v12 - v12 + v14] * 0.001;
  }

  v18 = *a3;
  *(a1 + 20) = v17;
  *(a1 + 24) = v18;
  LOWORD(v17) = *(a4 + 24);
  v19 = LODWORD(v17);
  if (v8)
  {
    v19 = 1.3488;
  }

  *(a1 + 12) = v19;
  v20 = *a2;
  *(a1 + 32) = *a2;
  v21 = *(a7 + 163);
  v22 = *(*(a4 + 64) + (*(v21 + 6) & 7));
  v23 = v22;
  *(a1 + 36) = v22;
  *(a1 + 28) = v22 / 1000.0;
  v24 = a7[14];
  v25 = 1.0;
  v26 = 1.0;
  v27 = 1.0;
  if ((v8 & 1) == 0)
  {
    LODWORD(v25) = 1065353216 - ((4 - 2 * v24) << 23);
    LODWORD(v26) = 1065353216 - (a7[12] << 24);
    v27 = 1.0 / (1 << a7[13]);
  }

  *(a1 + 40) = v25;
  *(a1 + 44) = v26;
  v28 = (v10 * 1000.0) * v9;
  v29 = floorf(v28 / v23);
  v30 = (v28 / (v29 * v23)) * (v28 / (v29 * v23));
  v31 = 0.0;
  if (!v24)
  {
    v31 = 1.25;
  }

  if (v24 == 1)
  {
    v31 = 0.66667;
  }

  *(a1 + 48) = v27;
  *(a1 + 52) = v31;
  *(a1 + 56) = v30;
  v32 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v12 - v12 + v14];
  if (v32 <= 8 && ((1 << v32) & 0x124) != 0)
  {
    if ((*(v21 + 6) & 7u) < 6)
    {
      v33 = &BlueFin::ST_GRID_CONTEXT::astBand5GridNoiseTbl + 72 * (*(v21 + 6) & 7) + 24 * v24;
      goto LABEL_21;
    }

    v43 = "rstGridRslt.m_potCfg->frq.bits.grid_coh < _DIM(ST_GRID_CONTEXT::astBand5GridNoiseTbl)";
    DeviceFaultNotify("glmesrd_grid.cpp", 226, "ST_GRID_CONTEXT", "rstGridRslt.m_potCfg->frq.bits.grid_coh < _DIM(ST_GRID_CONTEXT::astBand5GridNoiseTbl)");
    v44 = "glmesrd_grid.cpp";
    v45 = 226;
LABEL_33:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v44, v45, v43);
  }

  v33 = &BlueFin::ST_GRID_CONTEXT::astCalculatedGridNoise + 24 * v24;
  *v33 = v22;
  v33[1] = v24;
  *(v33 + 1) = v30 * (v27 * (v26 * ((((v10 * (v19 * (v20 + v31))) * 1000.0) * v9) * v25)));
  *(v33 + 8) = xmmword_298A346C0;
LABEL_21:
  *(a1 + 88) = v33;
  v34 = a5[8] - a5[5];
  if (v34 <= 0.0)
  {
    v43 = "dDeltaTimeStampInRxSec > 0";
    DeviceFaultNotify("glmesrd_grid.cpp", 248, "ST_GRID_CONTEXT", "dDeltaTimeStampInRxSec > 0");
    v44 = "glmesrd_grid.cpp";
    v45 = 248;
    goto LABEL_33;
  }

  v35 = BlueFin::GlMeSrdEstCodePrm::SubMsPart(a1, v34 * (a5[4] + 1.0));
  v37 = BlueFin::GlMeSrdEstCodePrm::SubMsPart(v36, a5[9] - a5[6]);
  if (*(a6 + 4) >= 0x23Fu)
  {
    v43 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v44 = "glsignalid.h";
    v45 = 807;
    goto LABEL_33;
  }

  v38 = BlueFin::GlSvId::s_aucSvId2gnss[*a6];
  v39 = *(a6 + 1);
  v40 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v39 + v38];
  if (!v40 || (v41 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v39 - v39 + v38]) == 0)
  {
    v43 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
    v44 = "glsignalid.h";
    v45 = 815;
    goto LABEL_33;
  }

  *(a1 + 72) = a5[8] - a5[9];
  *(a1 + 80) = (v37 - v35) * (1000 * v40 / v41);
  return a1;
}

float BlueFin::CT_GRID_FULL::loadGrid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v28 = *MEMORY[0x29EDCA608];
  memset(v27, 0, sizeof(v27));
  memset(v26, 0, sizeof(v26));
  v6 = *(*(a1 + 8) + 328);
  v7 = *(v6 + 8);
  v8 = 8 * (v7 & 3) + 8;
  LODWORD(v6) = *(v6 + 4);
  v9 = v6 & 0x1F;
  v10 = 0.5 / (*(a3 + 24) * (v6 >> 5));
  v11 = v9 + 1;
  v12 = ((v11 >> 1) - v10) & ~(((v11 >> 1) - v10) >> 31);
  if (v9 >= (v10 + ((v9 + 1) >> 1)))
  {
    v9 = v10 + (v11 >> 1);
  }

  v13 = v9;
  if (v9 <= v12)
  {
    v13 = ((v11 >> 1) - v10) & ~(((v11 >> 1) - v10) >> 31);
  }

  v14 = v13 + 1;
  v15 = (a2 + 4 * v8 * v12);
  v16 = 32 * (v7 & 3) + 32;
  do
  {
    if (v12 <= v9)
    {
      v17 = *(v26 + v5);
      v18 = v15;
      v19 = v12;
      do
      {
        v20 = *v18;
        if (*v18 > v17)
        {
          *(v27 + v5) = v19;
          v17 = v20;
        }

        v18 = (v18 + v16);
        ++v19;
      }

      while (v14 != v19);
      *(v26 + v5) = v17;
    }

    ++v5;
    ++v15;
  }

  while (v5 != v8);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  do
  {
    if (*(v26 + v21) > v22)
    {
      v23 = v21;
      v22 = *(v26 + v21);
    }

    ++v21;
  }

  while (v8 != v21);
  v24 = *(v27 + v23);
  BlueFin::CT_GRID_XWCV::loadXwcv(a4, a2 + 4 * (v8 * v24), a3);
  result = -*(*(a1 + 8) + 4 * *(*(a1 + 8) + v24 + 34) + 196);
  *a1 = result;
  return result;
}

void BlueFin::CT_GRID_XWCV::loadXwcv(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 296);
  v6 = *v5;
  if (*v5)
  {
    v7 = *(*(a3 + 88) + 4);
    v8 = v5 + 2;
    v9 = (a1 + 4);
    do
    {
      v10 = *v8++;
      *v9++ = (*(a2 + 4 * v10) - v7) / v7;
      --v6;
    }

    while (v6);
  }

  BlueFin::CT_GRID_XWCV::runPeakDetection(a1, a3, 0.0);

  BlueFin::CT_GRID_XWCV::runPeakFit(a1, a3);
}

uint64_t BlueFin::CT_GRID_XWCV::runPeakDetection(uint64_t result, uint64_t a2, float a3)
{
  if (!**(result + 296))
  {
    return result;
  }

  v3 = 0;
  v4 = *(a2 + 88);
  v5 = *(v4 + 8);
  v6 = *(v4 + 12);
  do
  {
    v7 = (result + 4 * v3);
    if (v3)
    {
      v8 = v7[1] - *v7;
    }

    else
    {
      v8 = 0.0;
    }

    if (v8 >= a3)
    {
      v9 = 1;
    }

    else
    {
      if (v8 >= -a3)
      {
        goto LABEL_11;
      }

      v9 = -1;
    }

    *(result + v3 + 132) = v9;
LABEL_11:
    if (v7[1] <= v6)
    {
      *(result + v3 + 132) = 0;
    }

    if (v3 && (*(result + v3 + 132) - *(result + v3 + 131)) == 254)
    {
      *(result + v3 + 131) = 2;
    }

    ++v3;
  }

  while (v3 < **(result + 296));
  if (**(result + 296))
  {
    v10 = 0;
    v11 = **(result + 296);
    do
    {
      if (*(result + v10 + 131) == 2 && *(result + 4 * v10) < v5)
      {
        *(result + v10 + 131) = 0;
        v11 = **(result + 296);
      }

      ++v10;
    }

    while (v10 < v11);
  }

  return result;
}
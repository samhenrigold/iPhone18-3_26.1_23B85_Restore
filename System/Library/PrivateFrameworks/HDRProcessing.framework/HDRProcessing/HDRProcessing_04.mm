float hdr10_applyTonemapCurveS_C_BezierHDR10Plus(float a1, const _HDR10TMParam *a2, DolbyVisionDM4 *a3)
{
  v5 = a3;
  numBezierAnchors = a2->tmCurveParam.param.hdr10Plus.numBezierAnchors;
  sl = a2->tmCurveParam.param.dovi.sl;
  v8 = a2->tmCurveParam.param.spl.XsC[0];
  v9 = a2->tmCurveParam.param.spl.MsC[3];
  v10 = -(a1 + -0.0000014619);
  if (a1 >= 0.00000073096)
  {
    v10 = a1;
  }

  v11 = flt_2508CD850[a1 < 0.00000073096];
  v12 = powf(v10, 0.012683);
  v13 = fmax(((v12 + -0.83594) / ((v12 * -18.688) + 18.852)), 0.0);
  v14 = v11 * powf(v13, 6.2774);
  v15 = v14 / a2->tm_Smax_nits;
  if (v15 <= 1.0)
  {
    if (sl <= 0.0 || v15 >= sl)
    {
      v16 = v8 + ((1.0 - v8) * ebz_norm((numBezierAnchors + 1), &a2->tmCurveParam.param.spl.XsC[2], (v15 - sl) / (1.0 - sl)));
    }

    else
    {
      v16 = (v8 * v15) / sl;
    }
  }

  else
  {
    v16 = (v15 + -1.0) * a2->tmCurveParam.param.spl.MsC[0] + 1.0;
  }

  v17 = v16 * a2->tmCurveParam.param.spl.MsC[1];
  hdr10PlusProfileBMode = a2->tmCurveParam.param.hdr10Plus.hdr10PlusProfileBMode;
  if (hdr10PlusProfileBMode != 1)
  {
    if (hdr10PlusProfileBMode != 2)
    {
      v23 = ((1.0 - v9) * v17) + (v14 * v9);
      goto LABEL_26;
    }

    if (v17 >= 0.0)
    {
      v24 = powf(v17 * 0.0001, 0.1593);
      *&v20 = powf(((v24 * 18.852) + 0.83594) / ((v24 * 18.688) + 1.0), 78.844);
      if (!v5)
      {
LABEL_19:
        v25 = *&v20 < 0.00000073096;
        if (*&v20 < 0.00000073096)
        {
          *&v20 = -(*&v20 + -0.0000014619);
        }

        v26 = flt_2508CD850[v25];
        v27 = powf(*&v20, 0.012683);
        v28 = fmax(((v27 + -0.83594) / ((v27 * -18.688) + 18.852)), 0.0);
        v23 = v26 * powf(v28, 6.2774);
        goto LABEL_26;
      }
    }

    else
    {
      v19 = powf(v17 * -0.0001, 0.1593);
      *&v20 = 0.0000014619 - powf(((v19 * 18.852) + 0.83594) / ((v19 * 18.688) + 1.0), 78.844);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    [(DolbyVisionDM4 *)v5 toneMapI:v20];
    goto LABEL_19;
  }

  if (v17 >= 0.0)
  {
    v29 = powf(v17 * 0.0001, 0.1593);
    v22 = powf(((v29 * 18.852) + 0.83594) / ((v29 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v21 = powf(v17 * -0.0001, 0.1593);
    v22 = 0.0000014619 - powf(((v21 * 18.852) + 0.83594) / ((v21 * 18.688) + 1.0), 78.844);
  }

  v30 = powf(v22, a2->tmCurveParam.param.spl.MsC[4]);
  v31 = fmax(((a2->tmCurveParam.param.spl.MsC[5] + (a2->tmCurveParam.param.spl.splCs[0][0] * v30)) / ((a2->tmCurveParam.param.spl.splCs[0][1] * v30) + 1.0)), 0.0);
  v32 = powf(v31, 0.33333);
  v33 = v32 < 0.00000073096;
  if (v32 < 0.00000073096)
  {
    v32 = -(v32 + -0.0000014619);
  }

  v34 = flt_2508CD850[v33];
  v35 = powf(v32, 0.012683);
  v36 = fmax(((v35 + -0.83594) / ((v35 * -18.688) + 18.852)), 0.0);
  v23 = v34 * powf(v36, 6.2774);
LABEL_26:
  if (v23 >= 0.0)
  {
    v39 = powf(v23 * 0.0001, 0.1593);
    v38 = powf(((v39 * 18.852) + 0.83594) / ((v39 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v37 = powf(v23 * -0.0001, 0.1593);
    v38 = 0.0000014619 - powf(((v37 * 18.852) + 0.83594) / ((v37 * 18.688) + 1.0), 78.844);
  }

  return v38;
}

void hdr10_applyTonemapCurveS_C_Bezier(float a1, const _HDR10TMParam *a2)
{
  v2 = a1 / a2->tm_Send_C;
  if (v2 >= a2->tmCurveParam.param.spl.XsC[0])
  {
    n = a2->tmCurveParam.param.spl.n;
    v4 = n - 1;
    if (*(&a2->tmCurveParam.param.dovi.sl + n) > v2 && n >= 2)
    {
      v5 = &a2->tmCurveParam.param.spl.splCs[0][3];
      v6 = a2->tmCurveParam.param.spl.splCs[0];
      for (i = &a2->tmCurveParam.param.spl.YsC[1]; ; ++i)
      {
        v8 = *(i - 6);
        if (v2 < v8)
        {
          break;
        }

        v5 += 14;
        v6 = (v6 + 2);
        if (!--v4)
        {
          return;
        }
      }

      v9 = *(i - 7);
      if ((v8 - v9) != 0.0)
      {
        ebz_norm(*v6, v5, (v2 - v9) / (v8 - v9));
      }
    }
  }
}

void hdr10_applyTonemapCurveS_C_Bezier_abs(float a1, const _HDR10TMParam *a2)
{
  if (a2->tmCurveParam.param.ebz.XsCA[0] <= a1)
  {
    n = a2->tmCurveParam.param.spl.n;
    v3 = n - 1;
    if (a2->tmCurveParam.param.ebz.arrPsC[4][n + 13] > a1 && n >= 2)
    {
      v4 = &a2->tmCurveParam.param.spl.splCs[0][3];
      v5 = a2->tmCurveParam.param.spl.splCs[0];
      for (i = a2; ; i = (i + 4))
      {
        v7 = i->tmCurveParam.param.ebz.XsCA[1];
        if (v7 > a1)
        {
          break;
        }

        v4 += 14;
        v5 = (v5 + 2);
        if (!--v3)
        {
          return;
        }
      }

      v8 = i->tmCurveParam.param.ebz.XsCA[0];
      v9 = v7 - v8;
      if (v9 != 0.0)
      {
        ebz_norm(*v5, v4, (a1 - v8) / v9);
      }
    }
  }
}

float hdr10_applyTonemapCurveS_C_PolyGeneric(float a1, const _HDR10TMParam *a2)
{
  v3 = a1;
  v21 = *MEMORY[0x277D85DE8];
  if (a2->tmCurveParam.param.ebz.XsCA[0] > a1)
  {
    YsC = a2->tmCurveParam.param.spl.YsC;
LABEL_5:
    v7 = *YsC;
    return v7 * a2->tm_Tend_C;
  }

  n = a2->tmCurveParam.param.spl.n;
  v6 = n - 1;
  if (a2->tmCurveParam.param.ebz.arrPsC[4][n + 13] < a1)
  {
    YsC = &a2->tmCurveParam.param.spl.YsC[v6];
    goto LABEL_5;
  }

  if (n < 2)
  {
    return v3;
  }

  v9 = &a2->tmCurveParam.param.hdr10Plus + 692;
  for (i = &a2->tmCurveParam.param.ebz.XsCA[1]; ; ++i)
  {
    v11 = *i;
    if (*i >= v3)
    {
      break;
    }

    v9 += 60;
    if (!--v6)
    {
      return v3;
    }
  }

  v12 = 0;
  v13 = *(i - 1);
  v20[0] = -v13;
  v20[1] = 1.0;
  v14 = v11 - v13;
  v7 = 0.0;
  do
  {
    v15 = 0;
    v16 = *&v9[4 * v12];
    v17 = 0.0;
    do
    {
      v18 = v20[v15];
      v17 = v17 + (v18 * powf(v3, v15++));
    }

    while (v15 != 2);
    v7 = v7 + (v16 * powf(v17 / v14, v12));
  }

  while (v12++ != n);
  return v7 * a2->tm_Tend_C;
}

float hdr10_applyTonemapCurveS_C_PolyStd(float a1, const _HDR10TMParam *a2)
{
  v3 = a1;
  if (a2->tmCurveParam.param.ebz.XsCA[0] > a1)
  {
    YsC = a2->tmCurveParam.param.spl.YsC;
LABEL_5:
    v7 = *YsC;
    return v7 * a2->tm_Tend_C;
  }

  n = a2->tmCurveParam.param.spl.n;
  v6 = n - 1;
  if (a2->tmCurveParam.param.ebz.arrPsC[4][n + 13] < a1)
  {
    YsC = &a2->tmCurveParam.param.spl.YsC[v6];
    goto LABEL_5;
  }

  if (n < 2)
  {
    return v3;
  }

  v9 = a2->tmCurveParam.param.ebz.stdPolyCoeffs[0];
  for (i = &a2->tmCurveParam.param.ebz.XsCA[1]; *i < a1; ++i)
  {
    v9 += 15;
    if (!--v6)
    {
      return v3;
    }
  }

  v11 = 0;
  v12 = n + 1;
  v7 = 0.0;
  do
  {
    v13 = *v9++;
    v7 = v7 + (v13 * powf(v3, v11++));
  }

  while (v12 != v11);
  return v7 * a2->tm_Tend_C;
}

float hdr10_applyTonemapCurveS_C(const _HDR10TMParam *a1, void *a2, float a3)
{
  v5 = a2;
  v7 = v5;
  if (!a1->on)
  {
    goto LABEL_31;
  }

  curveType = a1->tmCurveParam.curveType;
  if (curveType <= 1)
  {
    if (!curveType)
    {
      a3 = spl_apply(a1->tmCurveParam.param.spl.n, a1->tmCurveParam.param.spl.XsC, a1->tmCurveParam.param.spl.YsC, &a1->tmCurveParam.param.hdr10Plus.slopeAtTmax, a3 / a1->tm_Send_C) * a1->tm_Tend_C;
      goto LABEL_26;
    }

    if (curveType != 1)
    {
      goto LABEL_26;
    }

    v10 = a3 / a1->tm_Send_C;
    if (v10 >= a1->tmCurveParam.param.spl.XsC[0])
    {
      n = a1->tmCurveParam.param.spl.n;
      v15 = n - 1;
      if (*(&a1->tmCurveParam.param.dovi.sl + n) <= v10)
      {
        v11 = a1->tmCurveParam.param.spl.YsC[v15];
      }

      else
      {
        if (n < 2)
        {
          goto LABEL_24;
        }

        v16 = &a1->tmCurveParam.param.spl.splCs[0][3];
        v17 = a1->tmCurveParam.param.spl.splCs[0];
        v18 = &a1->tmCurveParam.param.spl.YsC[1];
        while (1)
        {
          v19 = *(v18 - 6);
          if (v10 < v19)
          {
            break;
          }

          v16 += 14;
          v17 = (v17 + 2);
          ++v18;
          if (!--v15)
          {
            goto LABEL_24;
          }
        }

        v24 = *(v18 - 7);
        v25 = v19 - v24;
        v11 = *(v18 - 1);
        if (v25 != 0.0)
        {
          v26 = *v18 - v11;
          v11 = v11 + (v26 * ebz_norm(*v17, v16, (v10 - v24) / v25));
        }
      }
    }

    else
    {
      v11 = a1->tmCurveParam.param.spl.YsC[0];
    }

    a3 = v11 * a1->tm_Tend_C;
LABEL_24:
    if (GetConfig())
    {
      Config = GetConfig();
      HDRConfig::GetConfigEntryValue(Config, 0x56u, 0);
    }

    goto LABEL_26;
  }

  switch(curveType)
  {
    case 2:
      v12 = powf(a3, a1->tmCurveParam.param.dovi.sl);
      v13 = fmax(((a1->tmCurveParam.param.spl.XsC[0] + (a1->tmCurveParam.param.spl.XsC[1] * v12)) / ((a1->tmCurveParam.param.spl.XsC[2] * v12) + 1.0)), 0.0);
      v9 = powf(v13, 0.33333);
      break;
    case 3:
      if (!v5)
      {
        goto LABEL_26;
      }

      *&v6 = a3;
      [(DolbyVisionDM4 *)v5 toneMapI:v6];
      break;
    case 4:
      v9 = hdr10_applyTonemapCurveS_C_BezierHDR10Plus(a3, a1, v5);
      break;
    default:
      goto LABEL_26;
  }

  a3 = v9;
LABEL_26:
  linearStretchMode = a1->linearStretchMode;
  if (linearStretchMode == 1)
  {
    nonlinearScaler = a1->nonlinearScaler;
    if (nonlinearScaler != 1.0)
    {
      a3 = a1->nonlinearOffset + ((a3 - a1->nonlinearOffset) * nonlinearScaler);
    }
  }

  else if (!linearStretchMode)
  {
    a3 = applyLinearStretchInPQ(a3, a1->linearScaler, a1->linearOffset);
  }

LABEL_31:

  return a3;
}

void hdr10_generateEdrAdaptationDataS(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, const _HDR10TMParam *a5, uint64_t a6)
{
  v99 = a4;
  v10 = *(a1 + 96);
  v98 = *(a1 + 92);
  v11 = *(a1 + 108);
  v12 = *(a2 + 8);
  if (v12 >= 0.0)
  {
    v15 = powf(v12 * 0.0001, 0.1593);
    v14 = powf(((v15 * 18.852) + 0.83594) / ((v15 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v13 = powf(v12 * -0.0001, 0.1593);
    v14 = 0.0000014619 - powf(((v13 * 18.852) + 0.83594) / ((v13 * 18.688) + 1.0), 78.844);
  }

  v16 = *(a1 + 124);
  if (v16 >= 0.0)
  {
    v19 = powf(v16 * 0.0001, 0.1593);
    v18 = powf(((v19 * 18.852) + 0.83594) / ((v19 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v17 = powf(v16 * -0.0001, 0.1593);
    v18 = 0.0000014619 - powf(((v17 * 18.852) + 0.83594) / ((v17 * 18.688) + 1.0), 78.844);
  }

  v20 = *(a2 + 68);
  v21 = *(a2 + 76);
  v22 = *(a2 + 80);
  v23 = v18 < v21 && (*(a2 + 1396) & 0xFFFFFFFE) == 2;
  v24 = *(a2 + 60);
  *a6 = *(a1 + 16);
  *(a6 + 4) = *(a1 + 24);
  *(a6 + 8) = v14;
  *(a6 + 12) = v20;
  *(a6 + 16) = v22;
  v25 = *(a3 + 493);
  if (v25 == 1)
  {
    if (v23)
    {
      v26 = v21;
    }

    else
    {
      v26 = v18;
    }

    *(a6 + 16) = v26;
  }

  if (v10 >= 0.0)
  {
    v29 = powf(v10 * 0.0001, 0.1593);
    v28 = powf(((v29 * 18.852) + 0.83594) / ((v29 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v27 = powf(v10 * -0.0001, 0.1593);
    v28 = 0.0000014619 - powf(((v27 * 18.852) + 0.83594) / ((v27 * 18.688) + 1.0), 78.844);
  }

  *(a6 + 20) = v28;
  if (v11 >= 0.0)
  {
    v32 = powf(v11 * 0.0001, 0.1593);
    v31 = powf(((v32 * 18.852) + 0.83594) / ((v32 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v30 = powf(v11 * -0.0001, 0.1593);
    v31 = 0.0000014619 - powf(((v30 * 18.852) + 0.83594) / ((v30 * 18.688) + 1.0), 78.844);
  }

  *(a6 + 24) = v31;
  *(a6 + 28) = v98;
  if (v25)
  {
    *(a6 + 32) = hdr10_applyTonemapCurveS_C(a2, v99, v28);
    v33 = hdr10_applyTonemapCurveS_C(a2, v99, *(a6 + 24));
  }

  else
  {
    *(a6 + 32) = hdr10_applyTonemapCurveS(a2, v99, v28 / *(a2 + 64)) * *(a2 + 80);
    v33 = hdr10_applyTonemapCurveS(a2, v99, *(a6 + 24) / *(a2 + 64)) * *(a2 + 80);
  }

  *(a6 + 56) = v33;
  v34 = 124;
  if (v23)
  {
    v34 = 60;
  }

  v35 = *(a1 + v34) / *(a1 + 120);
  if (v35 >= 0.0)
  {
    v38 = powf(v35 * 0.0001, 0.1593);
    v37 = powf(((v38 * 18.852) + 0.83594) / ((v38 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v36 = powf(v35 * -0.0001, 0.1593);
    v37 = 0.0000014619 - powf(((v36 * 18.852) + 0.83594) / ((v36 * 18.688) + 1.0), 78.844);
  }

  *(a6 + 52) = v37;
  *(a6 + 192) = xmmword_2508D15C0;
  *(a6 + 208) = 0x3F0000003F800000;
  *(a6 + 216) = 1065353216;
  v39 = ((v24 * v37) / *(a6 + 20)) - v20;
  if (*(a3 + 493))
  {
    v40 = v22;
  }

  else
  {
    v40 = v21;
  }

  *(a6 + 220) = v20;
  *(a6 + 224) = fminf(v39 / (v40 - v20), 1.0);
  v41 = *(a2 + 52);
  *(a6 + 228) = v41;
  *(a6 + 244) = hdr10_applyTonemapCurveS_C(a2, v99, *(&v41 + 1));
  *(a6 + 248) = hdr10_applyTonemapCurveS_C(a2, v99, *(a6 + 236));
  if (a5 && *(a1 + 104) == 1)
  {
    v42 = hdr10_applyTonemapCurveS_C(a5, v99, *(a6 + 20));
    *(a6 + 36) = (v18 * v42) / a5->tm_Tmax_C;
    v43 = v42 < 0.00000073096;
    if (v42 < 0.00000073096)
    {
      v42 = -(v42 + -0.0000014619);
    }

    v44 = 10000.0;
    v45 = -10000.0;
    if (v43)
    {
      v44 = -10000.0;
    }

    v95 = v44;
    v46 = powf(v42, 0.012683);
    v47 = fmax(((v46 + -0.83594) / ((v46 * -18.688) + 18.852)), 0.0);
    v96 = v95 * powf(v47, 6.2774);
    v48 = -(v18 + -0.0000014619);
    if (v18 >= 0.00000073096)
    {
      v48 = v18;
      v45 = 10000.0;
    }

    v49 = powf(v48, 0.012683);
    v50 = fmax(((v49 + -0.83594) / ((v49 * -18.688) + 18.852)), 0.0);
    v51 = v45 * powf(v50, 6.2774);
    *(a6 + 40) = (v51 * v96) / a5->tm_Tmax_nits;
    v52 = hdr10_applyTonemapCurveS_C(a5, v99, *(a6 + 24));
    *(a6 + 44) = (v18 * v52) / a5->tm_Tmax_C;
    v53 = v52 < 0.00000073096;
    if (v52 < 0.00000073096)
    {
      v52 = -(v52 + -0.0000014619);
    }

    v54 = flt_2508CD850[v53];
    v55 = powf(v52, 0.012683);
    v56 = fmax(((v55 + -0.83594) / ((v55 * -18.688) + 18.852)), 0.0);
    v57 = (v51 * (v54 * powf(v56, 6.2774))) / a5->tm_Tmax_nits;
  }

  else
  {
    *(a6 + 36) = 0x412000003E997209;
    *(a6 + 44) = 1050243593;
    v57 = 10.0;
  }

  *(a6 + 48) = v57;
  *(a6 + 256) = *(a1 + 36);
  *(a6 + 260) = *(a1 + 196);
  *(a6 + 264) = xmmword_2508D15D0;
  *(a6 + 280) = 1036831949;
  *(a6 + 284) = 257;
  *(a6 + 286) = *a6 != 17;
  *(a6 + 287) = 1;
  if (*(a1 + 200) == 1)
  {
    if (GetConfig())
    {
      Config = GetConfig();
      if (*HDRConfig::GetConfigEntryValue(Config, 0x9Du, 0) == 1)
      {
        v59 = 0.0;
        v60 = 0.0;
        if (GetConfig())
        {
          v61 = GetConfig();
          v60 = *HDRConfig::GetConfigEntryValue(v61, 0x9Fu, 0);
        }

        if (GetConfig())
        {
          v62 = GetConfig();
          v59 = *HDRConfig::GetConfigEntryValue(v62, 0xA0u, 0);
        }

        v63 = *(a1 + 124) / *(a1 + 120);
        if (v63 >= 0.0)
        {
          v66 = powf(v63 * 0.0001, 0.1593);
          v65 = powf(((v66 * 18.852) + 0.83594) / ((v66 * 18.688) + 1.0), 78.844);
        }

        else
        {
          v64 = powf(v63 * -0.0001, 0.1593);
          v65 = 0.0000014619 - powf(((v64 * 18.852) + 0.83594) / ((v64 * 18.688) + 1.0), 78.844);
        }

        if (v65 < 0.1499)
        {
          v65 = 0.1499;
        }

        v67 = (fminf(v65, 0.4069) + -0.1499) / 0.257;
        *(a6 + 264) = (v60 * (1.0 - v67)) + (v67 * v59);
        *(a6 + 272) = v67 + (1.0 - v67);
      }
    }
  }

  if (GetConfig())
  {
    v68 = GetConfig();
    if (*(v68 + 3481))
    {
      if ((v68[6960] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v69 = GetConfig();
          v70 = *HDRConfig::GetConfigEntryValue(v69, 0x9Eu, 0);
        }

        else
        {
          v70 = 0;
        }

        *(a6 + 264) = v70;
      }
    }
  }

  if (GetConfig())
  {
    v71 = GetConfig();
    if (*(v71 + 3547))
    {
      if ((v71[7092] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v72 = GetConfig();
          v73 = *HDRConfig::GetConfigEntryValue(v72, 0xA1u, 0);
        }

        else
        {
          v73 = 0;
        }

        *(a6 + 268) = v73;
      }
    }
  }

  if (GetConfig())
  {
    v74 = GetConfig();
    if (*(v74 + 3569))
    {
      if ((v74[7136] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v75 = GetConfig();
          v76 = *HDRConfig::GetConfigEntryValue(v75, 0xA2u, 0);
        }

        else
        {
          v76 = 0;
        }

        *(a6 + 272) = v76;
      }
    }
  }

  if (GetConfig())
  {
    v77 = GetConfig();
    if (*(v77 + 3591))
    {
      if ((v77[7180] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v78 = GetConfig();
          v79 = *HDRConfig::GetConfigEntryValue(v78, 0xA3u, 0);
        }

        else
        {
          v79 = 0;
        }

        *(a6 + 276) = v79;
      }
    }
  }

  if (GetConfig())
  {
    v80 = GetConfig();
    if (*(v80 + 3613))
    {
      if ((v80[7224] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v81 = GetConfig();
          v82 = *HDRConfig::GetConfigEntryValue(v81, 0xA4u, 0);
        }

        else
        {
          v82 = 0;
        }

        *(a6 + 280) = v82;
      }
    }
  }

  if (GetConfig())
  {
    v83 = GetConfig();
    if (*(v83 + 3635))
    {
      if ((v83[7268] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v84 = GetConfig();
          v85 = *HDRConfig::GetConfigEntryValue(v84, 0xA5u, 0);
        }

        else
        {
          v85 = 0;
        }

        *(a6 + 284) = v85 & 1;
      }
    }
  }

  if (GetConfig())
  {
    v86 = GetConfig();
    if (*(v86 + 3657))
    {
      if ((v86[7312] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v87 = GetConfig();
          v88 = *HDRConfig::GetConfigEntryValue(v87, 0xA6u, 0);
        }

        else
        {
          v88 = 0;
        }

        *(a6 + 285) = v88 & 1;
      }
    }
  }

  if (GetConfig())
  {
    v89 = GetConfig();
    if (*(v89 + 3679))
    {
      if ((v89[7356] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v90 = GetConfig();
          v91 = *HDRConfig::GetConfigEntryValue(v90, 0xA7u, 0);
        }

        else
        {
          v91 = 0;
        }

        *(a6 + 286) = v91 & 1;
      }
    }
  }

  if (GetConfig())
  {
    v92 = GetConfig();
    if (*(v92 + 3701))
    {
      if ((v92[7400] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v93 = GetConfig();
          v94 = *HDRConfig::GetConfigEntryValue(v93, 0xA8u, 0);
        }

        else
        {
          v94 = 0;
        }

        *(a6 + 287) = v94 & 1;
      }
    }
  }

  *(a6 + 288) = vand_s8(0x3F4000003F800000, vcgez_s32(vshl_n_s32(vdup_n_s32(*(a1 + 116) == 1), 0x1FuLL)));
  *(a6 + 296) = xmmword_2508D15E0;
  *(a6 + 312) = xmmword_2508D15F0;
  *(a6 + 328) = xmmword_2508D1600;
  *(a6 + 344) = xmmword_2508D1610;
  updateAUWDMParamsByDefaultsWrite(a6);
  *(a6 + 360) = *(a1 + 120);
  *(a6 + 364) = *(a1 + 260);
}

void hdr10_generateAmbAdaptationDataS(uint64_t a1, uint64_t a2, uint64_t a3, _EdrAdaptationParam *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v24 = a6;
  *a7 = *(a1 + 32);
  v13 = *(a1 + 36);
  *(a7 + 4) = *(a1 + 24);
  *(a7 + 8) = v13;
  v14 = *(a2 + 48);
  *(a7 + 12) = *(a2 + 36);
  *(a7 + 16) = v14;
  v15 = *(a2 + 80);
  *(a7 + 20) = *(a2 + 68);
  *(a7 + 24) = v15;
  if (*(a5 + 493) == 1)
  {
    v16 = *(a2 + 16);
    *(a7 + 16) = v16;
    if (v16 >= 0.0)
    {
      v19 = powf(v16 * 0.0001, 0.1593);
      v18 = powf(((v19 * 18.852) + 0.83594) / ((v19 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v17 = powf(v16 * -0.0001, 0.1593);
      v18 = 0.0000014619 - powf(((v17 * 18.852) + 0.83594) / ((v17 * 18.688) + 1.0), 78.844);
    }

    *(a7 + 24) = v18;
  }

  *(a7 + 28) = *(a2 + 52);
  *(a7 + 36) = *(a1 + 196);
  v20 = applyEdrAdaptationCurveS(a4, *(a3 + 244));
  if (*(a5 + 493) == 1)
  {
    v21 = *(a2 + 1396);
    if (v21 == 3)
    {
      v22 = *(a2 + 1392);
      if (v22 != 1.0)
      {
        v20 = *(a2 + 1388) + ((v20 - *(a2 + 1388)) * v22);
      }
    }

    else if (v21 == 2)
    {
      v20 = applyLinearStretchInPQ(v20, *(a2 + 1384), *(a2 + 1380));
    }
  }

  *(a7 + 40) = v20;
  v23 = *(a1 + 64);
  if (v23 >= *(a7 + 12))
  {
    v23 = *(a7 + 12);
  }

  *(a7 + 32) = v23;
}

float hdr10_getScalingFactorS_L(const _HDR10TMParam *a1, _EdrAdaptationParam *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, float a7)
{
  v13 = a6;
  if (*(a4 + 493) == 1)
  {
    v14 = hdr10_applyTonemapCurveS_C(a1, v13, a7);
  }

  else
  {
    tm_Tend_C = a1->tm_Tend_C;
    v14 = tm_Tend_C * hdr10_applyTonemapCurveS(a1, v13, fmaxf(fminf(a7 / a1->tm_Send_C, 1.0), 0.0));
  }

  v16 = applyEdrAdaptationCurveS(a2, v14);
  if (*(a4 + 493) == 1 && ((*(a5 + 180) & 1) != 0 || *(a5 + 181) == 1 && !*(a5 + 8)))
  {
    linearStretchMode = a1->linearStretchMode;
    if (linearStretchMode == 3)
    {
      nonlinearScaler = a1->nonlinearScaler;
      if (nonlinearScaler != 1.0)
      {
        v16 = a1->nonlinearOffset + ((v16 - a1->nonlinearOffset) * nonlinearScaler);
      }
    }

    else if (linearStretchMode == 2)
    {
      v16 = applyLinearStretchInPQ(v16, a1->linearScaler, a1->linearOffset);
    }
  }

  v19 = applyAmbAdaptationCurveS(a3, v16);
  v20 = v19;
  if (*(a4 + 465) == 1 && *(a4 + 472) == 1)
  {
    v21 = *(a4 + 476);
    v22 = pow((v19 / v21), 1.0 / *(a4 + 468));
    v20 = v21 * v22;
  }

  v23 = -(a7 + -0.0000014619);
  if (a7 >= 0.00000073096)
  {
    v23 = a7;
  }

  v24 = flt_2508CD850[a7 < 0.00000073096];
  v25 = powf(v23, 0.012683);
  v26 = fmax(((v25 + -0.83594) / ((v25 * -18.688) + 18.852)), 0.0);
  v27 = v24 * powf(v26, 6.2774);
  if (v27 <= 0.0)
  {
    v28 = 1.0;
  }

  else
  {
    v28 = v20 / v27;
  }

  return v28;
}

float hdr10_getScalingFactorS_L_NormIn(const _HDR10TMParam *a1, _EdrAdaptationParam *a2, uint64_t a3, uint64_t a4, void *a5, float a6)
{
  v11 = a5;
  tm_Send_nits = a1->tm_Send_nits;
  tm_Send_C = a1->tm_Send_C;
  tm_Tend_C = a1->tm_Tend_C;
  v15 = tm_Send_nits * a6;
  if (v15 >= 0.0)
  {
    v18 = powf(v15 * 0.0001, 0.1593);
    v17 = powf(((v18 * 18.852) + 0.83594) / ((v18 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v16 = powf(v15 * -0.0001, 0.1593);
    v17 = 0.0000014619 - powf(((v16 * 18.852) + 0.83594) / ((v16 * 18.688) + 1.0), 78.844);
  }

  if (*(a4 + 493))
  {
    v19 = hdr10_applyTonemapCurveS_C(a1, v11, v17);
  }

  else
  {
    v19 = tm_Tend_C * hdr10_applyTonemapCurveS(a1, v11, fmaxf(fminf(v17 / tm_Send_C, 1.0), 0.0));
  }

  v20 = applyEdrAdaptationCurveS(a2, v19);
  if (*(a4 + 493) == 1)
  {
    linearStretchMode = a1->linearStretchMode;
    if (linearStretchMode == 3)
    {
      nonlinearScaler = a1->nonlinearScaler;
      if (nonlinearScaler != 1.0)
      {
        v20 = a1->nonlinearOffset + ((v20 - a1->nonlinearOffset) * nonlinearScaler);
      }
    }

    else if (linearStretchMode == 2)
    {
      v20 = applyLinearStretchInPQ(v20, a1->linearScaler, a1->linearOffset);
    }
  }

  v23 = applyAmbAdaptationCurveS(a3, v20);
  if (*(a4 + 465) == 1 && *(a4 + 472) == 1)
  {
    v24 = *(a4 + 476);
    v25 = pow((v23 / v24), 1.0 / *(a4 + 468));
    v23 = v24 * v25;
  }

  v26 = v23 / v15;
  if (v15 <= 0.0)
  {
    v26 = 1.0;
  }

  v27 = (tm_Send_nits / 10000.0) * v26;

  return v27;
}

void hdr10_setScalingFactorTableS_L_NormIn(uint64_t a1, uint64_t a2, unint64_t a3, const _HDR10TMParam *a4, const _HDR10TMParam *a5, _EdrAdaptationParam *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v21 = a9;
  if (a3)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      *(a1 + 4 * v16) = hdr10_getScalingFactorS_L_NormIn(a4, a6, a7, a8, v21, *(a2 + 4 * v16));
      if (*(a8 + 516) == 1)
      {
        on = a6->on;
        if (GetConfig())
        {
          Config = GetConfig();
          if (*HDRConfig::GetConfigEntryValue(Config, 0x123u, 0) == 1)
          {
            a6->on = 0;
          }
        }

        *(a1 + 4 * v16) = (*(a8 + 520) * ((hdr10_getScalingFactorS_L_NormIn(a5, a6, a7, a8, v21, *(a2 + 4 * v16)) * a4->tm_Tmax_nits) / a5->tm_Tmax_nits)) + (*(a1 + 4 * v16) * (1.0 - *(a8 + 520)));
        a6->on = on;
      }

      v16 = v17++;
    }

    while (v16 < a3);
  }
}

void hdr10_setScalingFactorTableS_C(uint64_t a1, unint64_t a2, const _HDR10TMParam *a3, _EdrAdaptationParam *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v17 = a8;
  if (a2)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      *(a1 + 4 * v15) = hdr10_getScalingFactorS_L(a3, a4, a5, a6, a7, v17, (v16 - 1) / (a2 - 1));
      v15 = v16++;
    }

    while (v15 < a2);
  }
}

float hdr10_setLumaMixFactorTableS_L(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = (((*(a3 + 76) + -0.41928) * 0.3) / 0.1072) + 0.1;
  v4 = 0.4;
  if (v3 <= 0.4)
  {
    v4 = (((*(a3 + 76) + -0.41928) * 0.3) / 0.1072) + 0.1;
  }

  if (v3 >= 0.1)
  {
    result = v4;
  }

  else
  {
    result = 0.1;
  }

  if (a2)
  {
    v6 = 0;
    do
    {
      v7 = fmaxf(fminf(v6 / (a2 - 1), 1.0), 0.0);
      *(a1 + 4 * v6++) = result + ((1.0 - result) * (v7 * v7));
    }

    while (a2 > v6);
  }

  return result;
}

float hdr10_setLumaMixFactorTableS_L_NormIn(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = (((*(a4 + 76) + -0.41928) * 0.3) / 0.1072) + 0.1;
  v5 = 0.4;
  if (v4 <= 0.4)
  {
    v5 = (((*(a4 + 76) + -0.41928) * 0.3) / 0.1072) + 0.1;
  }

  if (v4 >= 0.1)
  {
    result = v5;
  }

  else
  {
    result = 0.1;
  }

  if (a3)
  {
    v7 = 0;
    do
    {
      v8 = fmaxf(fminf(*(a2 + 4 * v7), 1.0), 0.0);
      *(a1 + 4 * v7++) = result + ((1.0 - result) * (v8 * v8));
    }

    while (a3 > v7);
  }

  return result;
}

_BYTE *hdr10_setupTmConfig(int a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        *a3 = 3;
        a3[4] = 1;
        goto LABEL_19;
      }

      *a3 = 4;
      v6 = 2;
LABEL_14:
      a3[4] = v6;
LABEL_19:
      a3[8] = 3;
      goto LABEL_22;
    }

    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_22;
      }

      *a3 = 2;
      v6 = 1;
      goto LABEL_14;
    }

    *a3 = 0;
    goto LABEL_21;
  }

  if (a1 > 5)
  {
    if (a1 != 6)
    {
      if (a1 != 7)
      {
        goto LABEL_22;
      }

      *a3 = 2;
      v6 = 6;
      goto LABEL_14;
    }

    *a3 = 6;
LABEL_21:
    a3[4] = 0;
    a3[8] = 0;
    goto LABEL_22;
  }

  *a3 = 2;
  if (a1 == 4)
  {
    a3[4] = 5;
    a3[8] = 3;
    v7 = 1;
  }

  else
  {
    a3[4] = 11;
    a3[8] = 3;
    v7 = 4;
  }

  *(a4 + 188) = v7;
LABEL_22:
  if (IsVirtualized())
  {
    *a3 = 1;
  }

  if (a3[4])
  {
    if (GetConfig())
    {
      Config = GetConfig();
      if (*HDRConfig::GetConfigEntryValue(Config, 0xE2u, 0) == 1)
      {
        if (GetConfig())
        {
          v9 = GetConfig();
          v10 = *HDRConfig::GetConfigEntryValue(v9, 0xE4u, 0);
        }

        else
        {
          v10 = 0;
        }

        a3[4] = v10;
      }
    }
  }

  if (*(a2 + 185) == 1)
  {
    a3[4] = 0;
    a3[8] = 0;
  }

  if (overrideAmbAdaptationMode <= 6)
  {
    a3[8] = overrideAmbAdaptationMode;
  }

  if (overrideEdrAdaptationMode <= 0x1B)
  {
    a3[4] = overrideEdrAdaptationMode;
  }

  result = GetConfig();
  if (!result || (v12 = GetConfig(), result = HDRConfig::GetConfigEntryValue(v12, 0x66u, 0), (*result & 1) == 0))
  {
    a3[8] = 0;
  }

  return result;
}

uint64_t ___ZL20queryMSRCapabilitiesv_block_invoke()
{
  if (IsVirtualized())
  {
    v0 = "AppleM2ScalerParavirtDriver";
  }

  else
  {
    v0 = "AppleM2ScalerCSCDriver";
  }

  v1 = *MEMORY[0x277CD2898];
  v2 = IOServiceMatching(v0);
  result = IOServiceGetMatchingService(v1, v2);
  if (result)
  {
    v4 = result;
    v5 = IORegistryEntrySearchCFProperty(result, "IOService", @"IOSurfaceAcceleratorCapabilitiesDict", 0, 0);
    if (v5)
    {
      v6 = v5;
      CFGetTypeID(v5);
      CFDictionaryGetTypeID();
      GetBoolFromDict(v6, @"IOSurfaceAcceleratorCapabilitiesHDR");
      byte_280C71972 = GetBoolFromDict(v6, @"IOSurfaceAcceleratorCapabilitiesMMR");
      byte_280C71971 = GetBoolFromDict(v6, @"IOSurfaceAcceleratorCapabilitiesUnequallySpacedLut");
      dword_280C71978 = GetIntFromDict(v6, @"IOSurfaceAcceleratorHCUApiVersion");
      byte_280C71974 = GetBoolFromDict(v6, @"IOSurfaceAcceleratorCapabilitiesFP16Regamma");
      byte_280C71973 = GetBoolFromDict(v6, @"IOSurfaceAcceleratorCapabilitiesOOTF");
      _MergedGlobals_6 = GetBoolFromDict(v6, @"IOSurfaceAcceleratorCapabilitiesAvdHistogram");
      dword_280C7197C = GetIntFromDict(v6, @"IOSurfaceAcceleratorCapabilitiesCurvatureDegammaLUTSize");
      dword_280C71980 = GetIntFromDict(v6, @"IOSurfaceAcceleratorCapabilitiesCurvatureRegammaLUTSize");
      CFRelease(v6);
    }

    return IOObjectRelease(v4);
  }

  return result;
}

const __CFNumber *GetBoolFromDict(const __CFDictionary *a1, const __CFString *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFBooleanGetTypeID())
    {
      v5 = v3 == *MEMORY[0x277CBED10];
    }

    else
    {
      if (v4 != CFNumberGetTypeID())
      {
        return 0;
      }

      valuePtr = 0;
      CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
      v5 = valuePtr == 0;
    }

    return !v5;
  }

  return result;
}

const __CFNumber *GetIntFromDict(const __CFDictionary *a1, const __CFString *a2)
{
  valuePtr = 0;
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFBooleanGetTypeID())
    {
      return (v3 != *MEMORY[0x277CBED10]);
    }

    else if (v4 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void hlg_calculateTonemapCurveParamS(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = *(a1 + 44);
  v9 = *(a1 + 56);
  v10 = *(a1 + 124);
  v11 = *(a1 + 4);
  v12 = *(a1 + 8);
  *a4 = 1065353216;
  if (v11 <= 7)
  {
    if (((1 << v11) & 0xB2) == 0)
    {
      if (((1 << v11) & 0x48) != 0)
      {
        v8 = 1000.0;
      }

      else
      {
        v8 = v9;
        if (v11 != 2)
        {
          goto LABEL_11;
        }
      }
    }

    v13 = (v8 / 1000.0);
    if (v8 <= 400.0 || v8 >= 2000.0)
    {
      v15 = log2(v13);
      v14 = pow(1.11099994, v15) * 1.20000005 + -1.0;
    }

    else
    {
      v14 = log10(v13) * 0.419999987 + 1.20000005 + -1.0;
    }

    v16 = v14;
    *a4 = v16 + 1.0;
  }

LABEL_11:
  hdr10_calculateTonemapCurveParamS(a1, a2, v7, a4 + 4);
  v17 = 1.0;
  if (v12 != 2)
  {
    if (v12 == 1)
    {
      v18 = *(a1 + 96);
      if (v18 >= 0.0)
      {
        v24 = powf(v18 * 0.0001, 0.1593);
        v20 = powf(((v24 * 18.852) + 0.83594) / ((v24 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v19 = powf(v18 * -0.0001, 0.1593);
        v20 = 0.0000014619 - powf(((v19 * 18.852) + 0.83594) / ((v19 * 18.688) + 1.0), 78.844);
      }

      v25 = *(a4 + 68);
      v26 = *(a4 + 84);
      v27 = v9 * *(a1 + 24);
      if (v27 >= 0.0)
      {
        v30 = powf(v27 * 0.0001, 0.1593);
        v29 = powf(((v30 * 18.852) + 0.83594) / ((v30 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v28 = powf(v27 * -0.0001, 0.1593);
        v29 = 0.0000014619 - powf(((v28 * 18.852) + 0.83594) / ((v28 * 18.688) + 1.0), 78.844);
      }

      if (v9 >= 0.0)
      {
        v33 = powf(v9 * 0.0001, 0.1593);
        v32 = powf(((v33 * 18.852) + 0.83594) / ((v33 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v31 = powf(v9 * -0.0001, 0.1593);
        v32 = 0.0000014619 - powf(((v31 * 18.852) + 0.83594) / ((v31 * 18.688) + 1.0), 78.844);
      }

      if (*(a2 + 493))
      {
        v34 = hdr10_applyTonemapCurveS_C((a4 + 4), v7, v20);
      }

      else
      {
        v34 = v26 * hdr10_applyTonemapCurveS((a4 + 4), v7, v20 / v25);
      }

      v35 = (v29 - v32) / (v34 - v32);
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  v21 = *(a1 + 28);
  if (GetConfig())
  {
    Config = GetConfig();
    v23 = *HDRConfig::GetConfigEntryValue(Config, 0x7Du, 0);
    if (v23 >= 100.0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v23 = 0.0;
  }

  if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v36 = logInstanceID;
    }

    else
    {
      v36 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v38 = WORD1(v36);
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: overrideHLGOOTFMixingStartTdivNits >= 100.0f warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/hlg_display_management_host.mm at line 121\n", buf, 0xCu);
    }

    prevLogInstanceID = v36;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: overrideHLGOOTFMixingStartTdivNits >= 100.0f warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/DisplayManagement/hlg_display_management_host.mm at line 121\n", buf, 2u);
  }

LABEL_39:
  if (v9 > v23)
  {
    v35 = (v21 - v9) / (v23 - v9);
LABEL_41:
    v17 = fmaxf(fminf(v35, 1.0), 0.0);
  }

LABEL_42:
  *(a4 + 1428) = v17;
  *(a4 + 1432) = *(a1 + 100);
  *(a4 + 1424) = *a1 != 0;
  *(a4 + 1436) = v9;
  *(a4 + 1440) = v10;
}

float hlg_applyTonemapCurveS(uint64_t a1, uint64_t a2, void *a3, float a4)
{
  v7 = a3;
  v8 = *(a1 + 12);
  v9 = *(a1 + 1436);
  v10 = *(a1 + 1440);
  v11 = *(a1 + 68);
  v12 = *(a1 + 84);
  v13 = *(a1 + 1428);
  v14 = *(a1 + 1432);
  if (*(a1 + 1444) != 1 || (v15 = a4, (*(a1 + 1445) & 1) == 0))
  {
    v15 = powf(a4, *a1);
  }

  v16 = v8 * v15;
  if (v16 >= 0.0)
  {
    v19 = powf(v16 * 0.0001, 0.1593);
    v18 = powf(((v19 * 18.852) + 0.83594) / ((v19 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v17 = powf(v16 * -0.0001, 0.1593);
    v18 = 0.0000014619 - powf(((v17 * 18.852) + 0.83594) / ((v17 * 18.688) + 1.0), 78.844);
  }

  if (*(a1 + 1424) == 1)
  {
    v20 = applySceneLuxAdaptationS_C(a1 + 1448, v18);
    v18 = (*(a2 + 493) & 1) != 0 ? hdr10_applyTonemapCurveS_C((a1 + 4), v7, v20) : v12 * hdr10_applyTonemapCurveS((a1 + 4), v7, v20 / v11);
    if (*(a1 + 4) == 1)
    {
      v21 = (v14 / 1000.0);
      if (v14 <= 400.0 || v14 >= 2000.0)
      {
        v23 = log2(v21);
        v22 = pow(1.11099994, v23) * 1.20000005 + -1.0;
      }

      else
      {
        v22 = log10(v21) * 0.419999987 + 1.20000005 + -1.0;
      }

      v24 = v22;
      v25 = v10 * powf(a4, v24 + 1.0);
      if (v25 >= 0.0)
      {
        v28 = powf(v25 * 0.0001, 0.1593);
        v27 = powf(((v28 * 18.852) + 0.83594) / ((v28 * 18.688) + 1.0), 78.844);
      }

      else
      {
        v26 = powf(v25 * -0.0001, 0.1593);
        v27 = 0.0000014619 - powf(((v26 * 18.852) + 0.83594) / ((v26 * 18.688) + 1.0), 78.844);
      }

      v18 = ((1.0 - v13) * v27) + (v13 * v18);
    }
  }

  if (v9 >= 0.0)
  {
    v31 = powf(v9 * 0.0001, 0.1593);
    v30 = powf(((v31 * 18.852) + 0.83594) / ((v31 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v29 = powf(v9 * -0.0001, 0.1593);
    v30 = 0.0000014619 - powf(((v29 * 18.852) + 0.83594) / ((v29 * 18.688) + 1.0), 78.844);
  }

  v32 = v18 / v30;

  return v32;
}

void hlg_generateEdrAdaptationDataS(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v115 = a4;
  v10 = *(a1 + 92);
  v9 = *(a1 + 96);
  v11 = *(a1 + 108);
  v12 = *(a2 + 12);
  if (v12 >= 0.0)
  {
    v15 = powf(v12 * 0.0001, 0.1593);
    v14 = powf(((v15 * 18.852) + 0.83594) / ((v15 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v13 = powf(v12 * -0.0001, 0.1593);
    v14 = 0.0000014619 - powf(((v13 * 18.852) + 0.83594) / ((v13 * 18.688) + 1.0), 78.844);
  }

  v16 = *(a1 + 124);
  if (v16 >= 0.0)
  {
    v19 = powf(v16 * 0.0001, 0.1593);
    v18 = powf(((v19 * 18.852) + 0.83594) / ((v19 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v17 = powf(v16 * -0.0001, 0.1593);
    v18 = 0.0000014619 - powf(((v17 * 18.852) + 0.83594) / ((v17 * 18.688) + 1.0), 78.844);
  }

  v111 = *(a2 + 64);
  v20 = *(a2 + 72);
  v21 = *(a2 + 80);
  v22 = *(a2 + 20);
  if (v22 >= 0.0)
  {
    v25 = powf(v22 * 0.0001, 0.1593);
    v24 = powf(((v25 * 18.852) + 0.83594) / ((v25 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v23 = powf(v22 * -0.0001, 0.1593);
    v24 = 0.0000014619 - powf(((v23 * 18.852) + 0.83594) / ((v23 * 18.688) + 1.0), 78.844);
  }

  v26 = v18 < v21 && (*(a2 + 1400) & 0xFFFFFFFE) == 2;
  *a6 = *(a1 + 16);
  *(a6 + 4) = *(a1 + 24);
  *(a6 + 8) = v14;
  *(a6 + 12) = v20;
  *(a6 + 16) = v24;
  v27 = *(a3 + 493);
  if (v27 == 1)
  {
    if (v26)
    {
      v28 = v21;
    }

    else
    {
      v28 = v18;
    }

    *(a6 + 16) = v28;
  }

  if (v9 >= 0.0)
  {
    v31 = powf(v9 * 0.0001, 0.1593);
    v30 = powf(((v31 * 18.852) + 0.83594) / ((v31 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v29 = powf(v9 * -0.0001, 0.1593);
    v30 = 0.0000014619 - powf(((v29 * 18.852) + 0.83594) / ((v29 * 18.688) + 1.0), 78.844);
  }

  *(a6 + 20) = v30;
  if (v11 >= 0.0)
  {
    v34 = powf(v11 * 0.0001, 0.1593);
    v33 = powf(((v34 * 18.852) + 0.83594) / ((v34 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v32 = powf(v11 * -0.0001, 0.1593);
    v33 = 0.0000014619 - powf(((v32 * 18.852) + 0.83594) / ((v32 * 18.688) + 1.0), 78.844);
  }

  *(a6 + 24) = v33;
  *(a6 + 28) = v10;
  if (v27)
  {
    *(a6 + 32) = hdr10_applyTonemapCurveS_C((a2 + 4), v115, v30);
    v35 = hdr10_applyTonemapCurveS_C((a2 + 4), v115, *(a6 + 24));
  }

  else
  {
    *(a6 + 32) = hdr10_applyTonemapCurveS((a2 + 4), v115, v30 / *(a2 + 68)) * *(a2 + 84);
    v35 = hdr10_applyTonemapCurveS((a2 + 4), v115, *(a6 + 24) / *(a2 + 68)) * *(a2 + 84);
  }

  *(a6 + 56) = v35;
  v36 = 124;
  if (v26)
  {
    v36 = 60;
  }

  v37 = *(a1 + v36) / *(a1 + 120);
  if (v37 >= 0.0)
  {
    v40 = powf(v37 * 0.0001, 0.1593);
    v39 = powf(((v40 * 18.852) + 0.83594) / ((v40 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v38 = powf(v37 * -0.0001, 0.1593);
    v39 = 0.0000014619 - powf(((v38 * 18.852) + 0.83594) / ((v38 * 18.688) + 1.0), 78.844);
  }

  *(a6 + 52) = v39;
  *(a6 + 192) = xmmword_2508D1A90;
  *(a6 + 208) = 0x3F0000003F800000;
  *(a6 + 216) = 1065353216;
  if (*(a1 + 116) == 1)
  {
    if (GetConfig())
    {
      Config = GetConfig();
      if (*HDRConfig::GetConfigEntryValue(Config, 0x1Eu, 0) == 1)
      {
        *&v42 = v21;
        [v115 applyL8Trim:v42];
        if (*&v43 < v21)
        {
          *&v43 = v21;
        }

        *(a6 + 16) = LODWORD(v43);
        LODWORD(v43) = *(a6 + 12);
        [v115 applyL8Trim:v43];
        *(a6 + 12) = LODWORD(v44);
        if ((*(a3 + 508) & 1) == 0)
        {
          LODWORD(v44) = *(a6 + 52);
          [v115 applyL8Trim:v44];
          if (v45 >= *(a6 + 16))
          {
            v45 = *(a6 + 16);
          }

          *(a6 + 52) = v45;
        }
      }
    }
  }

  v46 = ((v111 * *(a6 + 52)) / *(a6 + 20)) - v20;
  if (*(a3 + 493))
  {
    v47 = v24;
  }

  else
  {
    v47 = v21;
  }

  *(a6 + 220) = v20;
  *(a6 + 224) = fminf(v46 / (v47 - v20), 1.0);
  if (*(a1 + 116) == 1)
  {
    v48 = *(a1 + 68);
    if (v48 >= 0.0)
    {
      v54 = powf(v48 * 0.0001, 0.1593);
      v50 = powf(((v54 * 18.852) + 0.83594) / ((v54 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v49 = powf(v48 * -0.0001, 0.1593);
      v50 = 0.0000014619 - powf(((v49 * 18.852) + 0.83594) / ((v49 * 18.688) + 1.0), 78.844);
    }

    *(a6 + 228) = v50;
    v55 = *(a1 + 80);
    if (v55 >= 0.0)
    {
      v58 = powf(v55 * 0.0001, 0.1593);
      v57 = powf(((v58 * 18.852) + 0.83594) / ((v58 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v56 = powf(v55 * -0.0001, 0.1593);
      v57 = 0.0000014619 - powf(((v56 * 18.852) + 0.83594) / ((v56 * 18.688) + 1.0), 78.844);
    }

    v112 = v57;
    *(a6 + 232) = v57;
    v59 = *(a1 + 72);
    if (v59 >= 0.0)
    {
      v62 = powf(v59 * 0.0001, 0.1593);
      v61 = powf(((v62 * 18.852) + 0.83594) / ((v62 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v60 = powf(v59 * -0.0001, 0.1593);
      v61 = 0.0000014619 - powf(((v60 * 18.852) + 0.83594) / ((v60 * 18.688) + 1.0), 78.844);
    }

    *(a6 + 236) = v61;
    v63 = *(a1 + 76);
    if (v63 >= 0.0)
    {
      v65 = powf(v63 * 0.0001, 0.1593);
      v52 = powf(((v65 * 18.852) + 0.83594) / ((v65 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v64 = powf(v63 * -0.0001, 0.1593);
      v52 = 0.0000014619 - powf(((v64 * 18.852) + 0.83594) / ((v64 * 18.688) + 1.0), 78.844);
    }

    v53 = v115;
    *&v51 = v112;
  }

  else
  {
    v50 = *(a2 + 56);
    *(a6 + 228) = v50;
    v51 = *(a2 + 60);
    *(a6 + 232) = v51;
    v52 = *(a2 + 68);
    v53 = v115;
  }

  *(a6 + 240) = v52;
  if (*(a1 + 196) == 1)
  {
    *(a6 + 12) = hdr10_applyTonemapCurveS_C((a2 + 4), v53, v50);
    LODWORD(v51) = *(a6 + 232);
    v53 = v115;
  }

  *(a6 + 244) = hdr10_applyTonemapCurveS_C((a2 + 4), v53, *&v51);
  *(a6 + 248) = hdr10_applyTonemapCurveS_C((a2 + 4), v115, *(a6 + 236));
  if (a5 && *(a1 + 104) == 1)
  {
    v66 = hdr10_applyTonemapCurveS_C((a5 + 4), v115, *(a6 + 20));
    *(a6 + 36) = (v18 * v66) / *(a5 + 80);
    v67 = v66 < 0.00000073096;
    if (v66 < 0.00000073096)
    {
      v66 = -(v66 + -0.0000014619);
    }

    v68 = 10000.0;
    v69 = -10000.0;
    if (v67)
    {
      v68 = -10000.0;
    }

    v109 = v68;
    v70 = powf(v66, 0.012683);
    v71 = fmax(((v70 + -0.83594) / ((v70 * -18.688) + 18.852)), 0.0);
    v110 = v109 * powf(v71, 6.2774);
    v72 = -(v18 + -0.0000014619);
    if (v18 >= 0.00000073096)
    {
      v72 = v18;
      v69 = 10000.0;
    }

    v73 = powf(v72, 0.012683);
    v74 = fmax(((v73 + -0.83594) / ((v73 * -18.688) + 18.852)), 0.0);
    v75 = v69 * powf(v74, 6.2774);
    *(a6 + 40) = (v75 * v110) / *(a5 + 48);
    v76 = hdr10_applyTonemapCurveS_C((a5 + 4), v115, *(a6 + 24));
    *(a6 + 44) = (v18 * v76) / *(a5 + 80);
    v77 = v76 < 0.00000073096;
    if (v76 < 0.00000073096)
    {
      v76 = -(v76 + -0.0000014619);
    }

    v78 = flt_2508CD850[v77];
    v79 = powf(v76, 0.012683);
    v80 = fmax(((v79 + -0.83594) / ((v79 * -18.688) + 18.852)), 0.0);
    v81 = (v75 * (v78 * powf(v80, 6.2774))) / *(a5 + 48);
  }

  else
  {
    *(a6 + 36) = 0x412000003E997209;
    *(a6 + 44) = 1050243593;
    v81 = 10.0;
  }

  *(a6 + 48) = v81;
  *(a6 + 260) = *(a1 + 196);
  *(a6 + 264) = xmmword_2508D15D0;
  *(a6 + 280) = 1036831949;
  *(a6 + 284) = 257;
  *(a6 + 286) = *a6 != 17;
  *(a6 + 287) = 1;
  if (*(a3 + 508) == 1)
  {
    *(a6 + 284) = 0;
    *(a6 + 264) = 1046898278;
    *(a6 + 286) = 1;
  }

  if (GetConfig())
  {
    v82 = GetConfig();
    if (*(v82 + 3481))
    {
      if ((v82[6960] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v83 = GetConfig();
          v84 = *HDRConfig::GetConfigEntryValue(v83, 0x9Eu, 0);
        }

        else
        {
          v84 = 0;
        }

        *(a6 + 264) = v84;
      }
    }
  }

  if (GetConfig())
  {
    v85 = GetConfig();
    if (*(v85 + 3547))
    {
      if ((v85[7092] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v86 = GetConfig();
          v87 = *HDRConfig::GetConfigEntryValue(v86, 0xA1u, 0);
        }

        else
        {
          v87 = 0;
        }

        *(a6 + 268) = v87;
      }
    }
  }

  if (GetConfig())
  {
    v88 = GetConfig();
    if (*(v88 + 3569))
    {
      if ((v88[7136] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v89 = GetConfig();
          v90 = *HDRConfig::GetConfigEntryValue(v89, 0xA2u, 0);
        }

        else
        {
          v90 = 0;
        }

        *(a6 + 272) = v90;
      }
    }
  }

  if (GetConfig())
  {
    v91 = GetConfig();
    if (*(v91 + 3591))
    {
      if ((v91[7180] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v92 = GetConfig();
          v93 = *HDRConfig::GetConfigEntryValue(v92, 0xA3u, 0);
        }

        else
        {
          v93 = 0;
        }

        *(a6 + 276) = v93;
      }
    }
  }

  if (GetConfig())
  {
    v94 = GetConfig();
    if (*(v94 + 3613))
    {
      if ((v94[7224] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v95 = GetConfig();
          v96 = *HDRConfig::GetConfigEntryValue(v95, 0xA4u, 0);
        }

        else
        {
          v96 = 0;
        }

        *(a6 + 280) = v96;
      }
    }
  }

  if (GetConfig())
  {
    v97 = GetConfig();
    if (*(v97 + 3635))
    {
      if ((v97[7268] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v98 = GetConfig();
          v99 = *HDRConfig::GetConfigEntryValue(v98, 0xA5u, 0);
        }

        else
        {
          v99 = 0;
        }

        *(a6 + 284) = v99 & 1;
      }
    }
  }

  if (GetConfig())
  {
    v100 = GetConfig();
    if (*(v100 + 3657))
    {
      if ((v100[7312] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v101 = GetConfig();
          v102 = *HDRConfig::GetConfigEntryValue(v101, 0xA6u, 0);
        }

        else
        {
          v102 = 0;
        }

        *(a6 + 285) = v102 & 1;
      }
    }
  }

  if (GetConfig())
  {
    v103 = GetConfig();
    if (*(v103 + 3679))
    {
      if ((v103[7356] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v104 = GetConfig();
          v105 = *HDRConfig::GetConfigEntryValue(v104, 0xA7u, 0);
        }

        else
        {
          v105 = 0;
        }

        *(a6 + 286) = v105 & 1;
      }
    }
  }

  if (GetConfig())
  {
    v106 = GetConfig();
    if (*(v106 + 3701))
    {
      if ((v106[7400] & 0x80) != 0)
      {
        if (GetConfig())
        {
          v107 = GetConfig();
          v108 = *HDRConfig::GetConfigEntryValue(v107, 0xA8u, 0);
        }

        else
        {
          v108 = 0;
        }

        *(a6 + 287) = v108 & 1;
      }
    }
  }

  *(a6 + 288) = vand_s8(0x3F4000003F800000, vcgez_s32(vshl_n_s32(vdup_n_s32(*(a1 + 116) == 1), 0x1FuLL)));
  *(a6 + 296) = xmmword_2508D15E0;
  *(a6 + 312) = xmmword_2508D15F0;
  *(a6 + 328) = xmmword_2508D1600;
  *(a6 + 344) = xmmword_2508D1610;
  updateAUWDMParamsByDefaultsWrite(a6);
  *(a6 + 360) = *(a1 + 120);
}

void hlg_generateAmbAdaptationDataS(uint64_t a1, uint64_t a2, uint64_t a3, _EdrAdaptationParam *a4, uint64_t a5, uint64_t a6, float a7)
{
  *a6 = *(a1 + 32);
  v13 = *(a1 + 36) + a7;
  *(a6 + 4) = *(a1 + 24);
  *(a6 + 8) = v13;
  v14 = *(a2 + 20);
  if (*(a1 + 116) == 1)
  {
    if (v14 >= 0.0)
    {
      v17 = powf(v14 * 0.0001, 0.1593);
      v16 = powf(((v17 * 18.852) + 0.83594) / ((v17 * 18.688) + 1.0), 78.844);
    }

    else
    {
      v15 = powf(v14 * -0.0001, 0.1593);
      v16 = 0.0000014619 - powf(((v15 * 18.852) + 0.83594) / ((v15 * 18.688) + 1.0), 78.844);
    }

    v18 = v16 * 0.25;
    v19 = v18 < 0.00000073096;
    if (v18 < 0.00000073096)
    {
      v18 = -(v18 + -0.0000014619);
    }

    v20 = flt_2508CD850[v19];
    v21 = powf(v18, 0.012683);
    v22 = fmax(((v21 + -0.83594) / ((v21 * -18.688) + 18.852)), 0.0);
    v23 = v20 * powf(v22, 6.2774);
    if (v13 < v23)
    {
      v23 = v13;
    }

    *(a6 + 8) = v23;
  }

  v24 = *(a2 + 40);
  *(a6 + 12) = v24;
  *(a6 + 16) = v14;
  if (v24 >= 0.0)
  {
    v27 = powf(v24 * 0.0001, 0.1593);
    v26 = powf(((v27 * 18.852) + 0.83594) / ((v27 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v25 = powf(v24 * -0.0001, 0.1593);
    v26 = 0.0000014619 - powf(((v25 * 18.852) + 0.83594) / ((v25 * 18.688) + 1.0), 78.844);
  }

  *(a6 + 20) = v26;
  if (v14 >= 0.0)
  {
    v31 = powf(v14 * 0.0001, 0.1593);
    v29 = powf(((v31 * 18.852) + 0.83594) / ((v31 * 18.688) + 1.0), 78.844);
    *(a6 + 24) = v29;
    v30 = (a5 + 493);
    if (*(a5 + 493) != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v28 = powf(v14 * -0.0001, 0.1593);
  v29 = 0.0000014619 - powf(((v28 * 18.852) + 0.83594) / ((v28 * 18.688) + 1.0), 78.844);
  *(a6 + 24) = v29;
  v30 = (a5 + 493);
  if (*(a5 + 493))
  {
LABEL_17:
    *(a6 + 16) = v14;
    *(a6 + 24) = v29;
  }

LABEL_18:
  *(a6 + 36) = *(a1 + 196);
  v32 = applyEdrAdaptationCurveS(a4, *(a3 + 244));
  if (*v30 == 1)
  {
    v33 = *(a2 + 1400);
    if (v33 == 3)
    {
      v34 = *(a2 + 1396);
      if (v34 != 1.0)
      {
        v32 = *(a2 + 1392) + ((v32 - *(a2 + 1392)) * v34);
      }
    }

    else if (v33 == 2)
    {
      v32 = applyLinearStretchInPQ(v32, *(a2 + 1388), *(a2 + 1384));
    }
  }

  *(a6 + 40) = v32;
  v35 = *(a1 + 64);
  if (v35 >= *(a6 + 12))
  {
    v35 = *(a6 + 12);
  }

  *(a6 + 32) = v35;
}

void hlg_generateSceneLuxAdaptationDataS(uint64_t a1, float *a2, uint64_t a3)
{
  if (GetConfig())
  {
    Config = GetConfig();
    v7 = *HDRConfig::GetConfigEntryValue(Config, 0xB9u, 0);
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  v8 = a2[17];
  if (v8 >= 0.0)
  {
    v11 = powf(v8 * 0.0001, 0.1593);
    v10 = powf(((v11 * 18.852) + 0.83594) / ((v11 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v9 = powf(v8 * -0.0001, 0.1593);
    v10 = 0.0000014619 - powf(((v9 * 18.852) + 0.83594) / ((v9 * 18.688) + 1.0), 78.844);
  }

  *(a3 + 4) = v10;
  v12 = a2[20];
  if (v12 >= 0.0)
  {
    v15 = powf(v12 * 0.0001, 0.1593);
    v14 = powf(((v15 * 18.852) + 0.83594) / ((v15 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v13 = powf(v12 * -0.0001, 0.1593);
    v14 = 0.0000014619 - powf(((v13 * 18.852) + 0.83594) / ((v13 * 18.688) + 1.0), 78.844);
  }

  *(a3 + 8) = v14;
  v16 = a2[18];
  if (v16 >= 0.0)
  {
    v19 = powf(v16 * 0.0001, 0.1593);
    v18 = powf(((v19 * 18.852) + 0.83594) / ((v19 * 18.688) + 1.0), 78.844);
  }

  else
  {
    v17 = powf(v16 * -0.0001, 0.1593);
    v18 = 0.0000014619 - powf(((v17 * 18.852) + 0.83594) / ((v17 * 18.688) + 1.0), 78.844);
  }

  v20 = *(a1 + 160);
  *(a3 + 12) = v18;
  *(a3 + 16) = v20;
}

_BYTE *hlg_setupTmConfig(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(a1)
  {
    case 0:
    case 6:
      goto LABEL_26;
    case 1:
      a1 = 3;
      goto LABEL_26;
    case 2:
      *a3 = 0x400000000;
      v8 = 5;
      goto LABEL_23;
    case 3:
      *(a3 + 4) = 5;
      if (!GetConfig())
      {
        goto LABEL_21;
      }

      Config = GetConfig();
      if ((*HDRConfig::GetConfigEntryValue(Config, 0x1Eu, 0) & 1) == 0)
      {
        goto LABEL_21;
      }

      v8 = 12;
      goto LABEL_20;
    case 4:
      a1 = 1;
      goto LABEL_26;
    case 5:
      a1 = 2;
      goto LABEL_26;
    case 7:
      v11 = 0x400000000;
      goto LABEL_28;
    case 8:
      v11 = 0x500000005;
LABEL_28:
      *a3 = v11;
      v14 = 5;
      *(a3 + 16) = 5;
      *(a3 + 32) = 3;
      goto LABEL_29;
    case 9:
      *a3 = 0x500000005;
      v10 = 7;
      goto LABEL_13;
    case 10:
      a1 = 7;
LABEL_26:
      *a3 = 0;
      *(a3 + 4) = a1;
      *(a3 + 16) = 0;
      v15 = (a3 + 16);
      *(a3 + 32) = 0;
      goto LABEL_45;
    case 11:
      *a3 = 0x500000005;
      goto LABEL_11;
    case 12:
      if (*a2 <= 1000.0)
      {
        v9 = 5;
      }

      else
      {
        v9 = 2;
      }

      *a3 = 5;
      *(a3 + 4) = v9;
LABEL_11:
      v10 = 6;
LABEL_13:
      *(a3 + 16) = v10;
      *(a3 + 32) = 3;
      goto LABEL_30;
    case 13:
      *(a3 + 4) = 5;
      if (GetConfig() && (v12 = GetConfig(), (*HDRConfig::GetConfigEntryValue(v12, 0x1Eu, 0) & 1) != 0))
      {
        v8 = 16;
LABEL_20:
        v13 = 11;
      }

      else
      {
LABEL_21:
        v8 = 10;
        v13 = 5;
      }

      *a3 = v13;
LABEL_23:
      *(a3 + 16) = v8;
      *(a3 + 32) = 3;
      v14 = 2;
LABEL_29:
      *(a4 + 188) = v14;
LABEL_30:
      v15 = (a3 + 16);
      goto LABEL_31;
    default:
      v15 = (a3 + 16);
      if (!*(a3 + 16))
      {
        goto LABEL_45;
      }

LABEL_31:
      if (!*(a3 + 116) && GetConfig() && (v17 = GetConfig(), *HDRConfig::GetConfigEntryValue(v17, 0xE2u, 0) == 1) || *v15 && *(a3 + 116) == 1 && GetConfig() && (v16 = GetConfig(), *HDRConfig::GetConfigEntryValue(v16, 0xE3u, 0) == 1))
      {
        if (GetConfig())
        {
          v18 = GetConfig();
          v19 = *HDRConfig::GetConfigEntryValue(v18, 0xE4u, 0);
        }

        else
        {
          v19 = 0;
        }

        *v15 = v19;
      }

LABEL_45:
      if (*(a2 + 185) == 1)
      {
        *(a3 + 16) = 0;
        *(a3 + 32) = 0;
      }

      if (overrideAmbAdaptationMode <= 6)
      {
        *(a3 + 32) = overrideAmbAdaptationMode;
      }

      if (overrideEdrAdaptationMode <= 0x1B)
      {
        *v15 = overrideEdrAdaptationMode;
      }

      result = GetConfig();
      if (!result || (v21 = GetConfig(), result = HDRConfig::GetConfigEntryValue(v21, 0x66u, 0), (*result & 1) == 0))
      {
        *(a3 + 32) = 0;
      }

      return result;
  }
}

uint64_t GetChipId(void)
{
  if ((atomic_load_explicit(&qword_280C719A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C719A0))
  {
    qword_280C71998 = MGGetSInt64Answer();
    __cxa_guard_release(&qword_280C719A0);
  }

  return qword_280C71998;
}

BOOL IsGpuOnlySystem(void)
{
  {
    IsGpuOnlySystem(void)::chipID = GetChipId();
  }

  return IsGpuOnlySystem(void)::chipID >> 1 == 16392;
}

uint64_t IsVirtualized(void)
{
  if (qword_280C719A8 != -1)
  {
    dispatch_once(&qword_280C719A8, &__block_literal_global_3);
  }

  return _MergedGlobals_7;
}

uint64_t ___Z13IsVirtualizedv_block_invoke()
{
  result = GetChipId();
  _MergedGlobals_7 = result == 65024;
  return result;
}

uint64_t HDR10PlusMetaData_RBSP::get_next_uint32(HDR10PlusMetaData_RBSP *this, char *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = this->var6 - a2;
  if (v4 <= 0)
  {
    *a4 = 0;
    *a3 = 0;
    *&this->var8 = -1;
    return 0xFFFFFFFFLL;
  }

  v5 = *a2;
  if (v4 == 1)
  {
    v6 = 255;
    v7 = 65280;
    goto LABEL_9;
  }

  v7 = a2[1] << 8;
  if (v4 < 3)
  {
    v6 = 255;
    goto LABEL_9;
  }

  v6 = a2[2];
  if (v4 == 3)
  {
LABEL_9:
    v9 = 255;
    goto LABEL_10;
  }

  v9 = a2[3];
LABEL_10:
  if (v4 >= 4)
  {
    LODWORD(v4) = 4;
  }

  *a4 = v4;
  *a3 = v4;
  return v9 | ((v7 | (v5 << 16) | v6) << 8);
}

uint64_t HDR10PlusMetaData_RBSP::parse_hdr10plus_sei(uint64_t a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a1 + 129) = 0;
  v4 = (a1 + 129);
  *(a1 + 137) = 0;
  *(a1 + 140) = 0u;
  v5 = (a1 + 140);
  *(a1 + 156) = 0u;
  *(a1 + 172) = 0;
  *(a1 + 186) = 0;
  v6 = (a1 + 186);
  *(a1 + 194) = 0;
  *(a1 + 202) = 0;
  v7 = *(a1 + 15);
  commonRBSP::flush_bits(a1, 8);
  if (v7 == 181)
  {
    *(a1 + 94) = -75;
    *(a1 + 92) = 0;
    goto LABEL_18;
  }

  if (v7 != 4)
  {
    if (!enableLogInstance)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return *(a1 + 88);
      }

      v48 = 136315394;
      v49 = "parse_hdr10plus_sei";
      v50 = 1024;
      *v51 = v7;
      v33 = MEMORY[0x277D86220];
      v34 = " [1.450.54] %s: parsing error: first_byte = %u [legal value = 4 or 181], bail!\n";
      goto LABEL_65;
    }

    if (logInstanceID)
    {
      v10 = logInstanceID;
    }

    else
    {
      v10 = prevLogInstanceID;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_48;
    }

    v48 = 134218498;
    v49 = WORD1(v10);
    v50 = 2080;
    *v51 = "parse_hdr10plus_sei";
    *&v51[8] = 1024;
    *v52 = v7;
    v12 = MEMORY[0x277D86220];
    v13 = " [1.450.54] #%04llx %s: parsing error: first_byte = %u [legal value = 4 or 181], bail!\n";
    goto LABEL_46;
  }

  *(a1 + 92) = 4;
  v8 = HIBYTE(*(a1 + 8));
  commonRBSP::flush_bits(a1, 8);
  *(a1 + 93) = v8;
  v9 = *(a1 + 20);
  if (v9 - 2 >= v8)
  {
    v15 = *(a1 + 15);
    commonRBSP::flush_bits(a1, 8);
    *(a1 + 94) = v15;
LABEL_18:
    v16 = *(a1 + 14);
    commonRBSP::flush_bits(a1, 16);
    *(a1 + 96) = v16;
    v17 = *(a1 + 14);
    commonRBSP::flush_bits(a1, 16);
    *(a1 + 98) = v17;
    LOBYTE(v17) = *(a1 + 15);
    commonRBSP::flush_bits(a1, 8);
    *(a1 + 100) = v17;
    LOBYTE(v17) = *(a1 + 15);
    commonRBSP::flush_bits(a1, 8);
    *(a1 + 101) = v17;
    v18 = *(a1 + 8) >> 62;
    commonRBSP::flush_bits(a1, 2);
    *(a1 + 102) = v18;
    if (v18 == 1)
    {
      v19 = *(a1 + 8) >> 37;
      commonRBSP::flush_bits(a1, 27);
      *(a1 + 104) = v19;
      v20 = *(a1 + 8);
      commonRBSP::flush_bits(a1, 1);
      *(a1 + 108) = v20 < 0;
      for (i = 112; i != 124; i += 4)
      {
        v22 = *(a1 + 8) >> 47;
        commonRBSP::flush_bits(a1, 17);
        *(a1 + i) = v22;
      }

      v23 = *(a1 + 8) >> 47;
      commonRBSP::flush_bits(a1, 17);
      *(a1 + 124) = v23;
      v24 = *(a1 + 8) >> 60;
      commonRBSP::flush_bits(a1, 4);
      *(a1 + 128) = v24;
      if (v24 == 9)
      {
        v25 = 0;
        do
        {
          v26 = *(a1 + 8) >> 57;
          commonRBSP::flush_bits(a1, 7);
          *(a1 + v25 + 129) = v26;
          v27 = *(a1 + 8) >> 47;
          commonRBSP::flush_bits(a1, 17);
          *(a1 + 4 * v25++ + 140) = v27;
        }

        while (v25 < *(a1 + 128));
        v28 = *(a1 + 8) >> 54;
        commonRBSP::flush_bits(a1, 10);
        *(a1 + 176) = v28;
        v29 = *(a1 + 8);
        commonRBSP::flush_bits(a1, 1);
        *(a1 + 178) = v29 < 0;
        v30 = *(a1 + 8);
        commonRBSP::flush_bits(a1, 1);
        *(a1 + 179) = v30 < 0;
        if ((v30 & 0x8000000000000000) == 0)
        {
LABEL_25:
          v31 = *(a1 + 8);
          commonRBSP::flush_bits(a1, 1);
          *(a1 + 204) = v31 < 0;
          if (!GetConfig() || (Config = GetConfig(), *HDRConfig::GetConfigEntryValue(Config, 0x4Cu, 0) != 1) || !HDR10PlusMetaData_RBSP::range_check_metadata(a1))
          {
            result = 0;
            *a2 = *(a1 + 104);
            v36 = *(a1 + 112);
            *(a2 + 12) = *(a1 + 120);
            *(a2 + 4) = v36;
            *(a2 + 16) = *(a1 + 124);
            *(a2 + 20) = *(a1 + 128);
            v37 = *v4;
            *(a2 + 29) = *(v4 + 8);
            *(a2 + 21) = v37;
            v38 = *v5;
            v39 = v5[1];
            *(a2 + 64) = *(v5 + 8);
            *(a2 + 32) = v38;
            *(a2 + 48) = v39;
            *(a2 + 68) = *(a1 + 179);
            *(a2 + 70) = *(a1 + 180);
            *(a2 + 74) = *(a1 + 184);
            v40 = *v6;
            *(a2 + 92) = *(v6 + 8);
            *(a2 + 76) = v40;
            return result;
          }

          if (enableLogInstance)
          {
            if (logInstanceID)
            {
              v10 = logInstanceID;
            }

            else
            {
              v10 = prevLogInstanceID;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_48;
            }

            v48 = 134218242;
            v49 = WORD1(v10);
            v50 = 2080;
            *v51 = "parse_hdr10plus_sei";
            v12 = MEMORY[0x277D86220];
            v13 = " [1.450.54] #%04llx %s: parsing error, bail!\n";
            v14 = 22;
            goto LABEL_47;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return *(a1 + 88);
          }

          v48 = 136315138;
          v49 = "parse_hdr10plus_sei";
          v33 = MEMORY[0x277D86220];
          v34 = " [1.450.54] %s: parsing error, bail!\n";
          v42 = 12;
LABEL_66:
          _os_log_impl(&dword_250836000, v33, OS_LOG_TYPE_DEFAULT, v34, &v48, v42);
          return *(a1 + 88);
        }

        v43 = *(a1 + 8) >> 52;
        commonRBSP::flush_bits(a1, 12);
        *(a1 + 180) = v43;
        v44 = *(a1 + 8) >> 52;
        commonRBSP::flush_bits(a1, 12);
        *(a1 + 182) = v44;
        v45 = *(a1 + 8);
        commonRBSP::flush_bits(a1, 4);
        *(a1 + 184) = v45 >> 60;
        if (v45 >> 61 <= 4)
        {
          if (v45 >> 60)
          {
            v46 = 0;
            do
            {
              v47 = *(a1 + 8) >> 54;
              commonRBSP::flush_bits(a1, 10);
              *(a1 + 2 * v46++ + 186) = v47;
            }

            while (v46 < *(a1 + 184));
          }

          goto LABEL_25;
        }

        if (enableLogInstance)
        {
          if (logInstanceID)
          {
            v10 = logInstanceID;
          }

          else
          {
            v10 = prevLogInstanceID;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_48;
          }

          v48 = 134218498;
          v49 = WORD1(v10);
          v50 = 2080;
          *v51 = "parse_hdr10plus_sei";
          *&v51[8] = 1024;
          *v52 = v45 >> 60;
          v12 = MEMORY[0x277D86220];
          v13 = " [1.450.54] #%04llx %s: parsing error: num_bezier_curve_anchors = %d, bail!\n";
          goto LABEL_46;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return *(a1 + 88);
        }

        v48 = 136315394;
        v49 = "parse_hdr10plus_sei";
        v50 = 1024;
        *v51 = v45 >> 60;
        v33 = MEMORY[0x277D86220];
        v34 = " [1.450.54] %s: parsing error: num_bezier_curve_anchors = %d, bail!\n";
LABEL_65:
        v42 = 18;
        goto LABEL_66;
      }

      if (!enableLogInstance)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return *(a1 + 88);
        }

        v48 = 136315394;
        v49 = "parse_hdr10plus_sei";
        v50 = 1024;
        *v51 = v24;
        v33 = MEMORY[0x277D86220];
        v34 = " [1.450.54] %s: parsing error: num_distributions = %d [legal value = 9], bail!\n";
        goto LABEL_65;
      }

      if (logInstanceID)
      {
        v10 = logInstanceID;
      }

      else
      {
        v10 = prevLogInstanceID;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      v48 = 134218498;
      v49 = WORD1(v10);
      v50 = 2080;
      *v51 = "parse_hdr10plus_sei";
      *&v51[8] = 1024;
      *v52 = v24;
      v12 = MEMORY[0x277D86220];
      v13 = " [1.450.54] #%04llx %s: parsing error: num_distributions = %d [legal value = 9], bail!\n";
    }

    else
    {
      if (!enableLogInstance)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return *(a1 + 88);
        }

        v48 = 136315394;
        v49 = "parse_hdr10plus_sei";
        v50 = 1024;
        *v51 = v18;
        v33 = MEMORY[0x277D86220];
        v34 = " [1.450.54] %s: parsing error: num_windows = %d [legal value = 1], bail!\n";
        goto LABEL_65;
      }

      if (logInstanceID)
      {
        v10 = logInstanceID;
      }

      else
      {
        v10 = prevLogInstanceID;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      v48 = 134218498;
      v49 = WORD1(v10);
      v50 = 2080;
      *v51 = "parse_hdr10plus_sei";
      *&v51[8] = 1024;
      *v52 = v18;
      v12 = MEMORY[0x277D86220];
      v13 = " [1.450.54] #%04llx %s: parsing error: num_windows = %d [legal value = 1], bail!\n";
    }

LABEL_46:
    v14 = 28;
    goto LABEL_47;
  }

  if (!enableLogInstance)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return *(a1 + 88);
    }

    v41 = *(a1 + 92);
    v48 = 136315906;
    v49 = "parse_hdr10plus_sei";
    v50 = 1024;
    *v51 = v41;
    *&v51[4] = 1024;
    *&v51[6] = v8;
    *v52 = 1024;
    *&v52[2] = v9;
    v33 = MEMORY[0x277D86220];
    v34 = " [1.450.54] %s: parsing error: sei_payload_type = %u [legal value = 4], sei_payload_length = %u, actual seiLength = %u, bail!\n";
    v42 = 30;
    goto LABEL_66;
  }

  if (logInstanceID)
  {
    v10 = logInstanceID;
  }

  else
  {
    v10 = prevLogInstanceID;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_48;
  }

  v11 = *(a1 + 92);
  v48 = 134219010;
  v49 = WORD1(v10);
  v50 = 2080;
  *v51 = "parse_hdr10plus_sei";
  *&v51[8] = 1024;
  *v52 = v11;
  *&v52[4] = 1024;
  v53 = v8;
  v54 = 1024;
  v55 = v9;
  v12 = MEMORY[0x277D86220];
  v13 = " [1.450.54] #%04llx %s: parsing error: sei_payload_type = %u [legal value = 4], sei_payload_length = %u, actual seiLength = %u, bail!\n";
  v14 = 40;
LABEL_47:
  _os_log_impl(&dword_250836000, v12, OS_LOG_TYPE_DEFAULT, v13, &v48, v14);
LABEL_48:
  prevLogInstanceID = v10;
  return *(a1 + 88);
}

uint64_t HDR10PlusMetaData_RBSP::range_check_metadata(HDR10PlusMetaData_RBSP *this)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = this->var2 + 8 * (LODWORD(this->var6) - LODWORD(this->var5)) + 32;
  if (this->var16)
  {
    v2 += 8 * (this->var16 - this->var3) + 16;
  }

  if ((v2 & 0x80000000) == 0)
  {
    var17 = this->var17;
    v4 = var17 != 181;
    if (var17 != 181)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v5 = logInstanceID;
        }

        else
        {
          v5 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v43 = WORD1(v5);
          v44 = 2080;
          *v45 = "range_check_metadata";
          *&v45[8] = 1024;
          *v46 = var17;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: syntax error: itu_t_t35_country_code = %02x", buf, 0x1Cu);
        }

        prevLogInstanceID = v5;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v43 = "range_check_metadata";
        v44 = 1024;
        *v45 = var17;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s: syntax error: itu_t_t35_country_code = %02x", buf, 0x12u);
      }
    }

    var18 = this->var18;
    if (var18 != 60)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v10 = logInstanceID;
        }

        else
        {
          v10 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v43 = WORD1(v10);
          v44 = 2080;
          *v45 = "range_check_metadata";
          *&v45[8] = 1024;
          *v46 = var18;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: syntax error: itu_t_t35_terminal_provider_code = %04x", buf, 0x1Cu);
        }

        prevLogInstanceID = v10;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v43 = "range_check_metadata";
        v44 = 1024;
        *v45 = var18;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s: syntax error: itu_t_t35_terminal_provider_code = %04x", buf, 0x12u);
      }

      v4 = 1;
    }

    var19 = this->var19;
    if (var19 != 1)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v12 = logInstanceID;
        }

        else
        {
          v12 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v43 = WORD1(v12);
          v44 = 2080;
          *v45 = "range_check_metadata";
          *&v45[8] = 1024;
          *v46 = var19;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: syntax error: itu_t_t35_terminal_provider_oriented_code = %d", buf, 0x1Cu);
        }

        prevLogInstanceID = v12;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v43 = "range_check_metadata";
        v44 = 1024;
        *v45 = var19;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s: syntax error: itu_t_t35_terminal_provider_oriented_code = %d", buf, 0x12u);
      }

      v4 = 1;
    }

    var20 = this->var20;
    if (var20 != 4)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v14 = logInstanceID;
        }

        else
        {
          v14 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v43 = WORD1(v14);
          v44 = 2080;
          *v45 = "range_check_metadata";
          *&v45[8] = 1024;
          *v46 = var20;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: syntax error: application_identifier = %d", buf, 0x1Cu);
        }

        prevLogInstanceID = v14;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v43 = "range_check_metadata";
        v44 = 1024;
        *v45 = var20;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s: syntax error: application_identifier = %d", buf, 0x12u);
      }

      v4 = 1;
    }

    var21 = this->var21;
    if (var21 != 1)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v16 = logInstanceID;
        }

        else
        {
          v16 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v43 = WORD1(v16);
          v44 = 2080;
          *v45 = "range_check_metadata";
          *&v45[8] = 1024;
          *v46 = var21;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: syntax error: application_version = %d", buf, 0x1Cu);
        }

        prevLogInstanceID = v16;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v43 = "range_check_metadata";
        v44 = 1024;
        *v45 = var21;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s: syntax error: application_version = %d", buf, 0x12u);
      }

      v4 = 1;
    }

    if (this->var24)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v17 = logInstanceID;
        }

        else
        {
          v17 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v43 = WORD1(v17);
          v44 = 2080;
          *v45 = "range_check_metadata";
          *&v45[8] = 1024;
          *v46 = 1;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: syntax error: targeted_system_display_actual_peak_luminance_flag = %d", buf, 0x1Cu);
        }

        prevLogInstanceID = v17;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v43 = "range_check_metadata";
        v44 = 1024;
        *v45 = 1;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s: syntax error: targeted_system_display_actual_peak_luminance_flag = %d", buf, 0x12u);
      }

      v4 = 1;
    }

    v18 = 0;
    v19 = MEMORY[0x277D86220];
    do
    {
      v20 = this->var25[v18];
      if (v20 > 0x186A0)
      {
        if (enableLogInstance)
        {
          if (logInstanceID)
          {
            v21 = logInstanceID;
          }

          else
          {
            v21 = prevLogInstanceID;
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218754;
            v43 = WORD1(v21);
            v44 = 2080;
            *v45 = "range_check_metadata";
            *&v45[8] = 1024;
            *v46 = v18;
            *&v46[4] = 1024;
            *v47 = v20;
            _os_log_impl(&dword_250836000, v19, OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: syntax error: maxscl[%d] = %08x", buf, 0x22u);
          }

          prevLogInstanceID = v21;
        }

        else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v43 = "range_check_metadata";
          v44 = 1024;
          *v45 = v18;
          *&v45[4] = 1024;
          *&v45[6] = v20;
          _os_log_impl(&dword_250836000, v19, OS_LOG_TYPE_DEFAULT, " [1.450.54] %s: syntax error: maxscl[%d] = %08x", buf, 0x18u);
        }

        v4 = 1;
      }

      ++v18;
    }

    while (v18 != 3);
    var26 = this->var26;
    if (var26 > 0x186A0)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v23 = logInstanceID;
        }

        else
        {
          v23 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v43 = WORD1(v23);
          v44 = 2080;
          *v45 = "range_check_metadata";
          *&v45[8] = 1024;
          *v46 = var26;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: syntax error: average_maxrgb = %08x", buf, 0x1Cu);
        }

        prevLogInstanceID = v23;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v43 = "range_check_metadata";
        v44 = 1024;
        *v45 = var26;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s: syntax error: average_maxrgb = %08x", buf, 0x12u);
      }

      v4 = 1;
    }

    var38 = this->var38;
    v25 = 129;
    v26 = MEMORY[0x277D86220];
    do
    {
      v27 = *(var38 - 76);
      v28 = *var38;
      if (v27 != v28)
      {
        if (enableLogInstance)
        {
          if (logInstanceID)
          {
            v29 = logInstanceID;
          }

          else
          {
            v29 = prevLogInstanceID;
          }

          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134219266;
            v43 = WORD1(v29);
            v44 = 2080;
            *v45 = "range_check_metadata";
            *&v45[8] = 1024;
            *v46 = v25 - 129;
            *&v46[4] = 1024;
            *v47 = v27;
            *&v47[4] = 1024;
            v48 = v25 - 129;
            v49 = 1024;
            v50 = v28;
            _os_log_impl(&dword_250836000, v26, OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: syntax error: distribution_index[%d]:%d != k_distribution_index[%d]:%d", buf, 0x2Eu);
          }

          prevLogInstanceID = v29;
        }

        else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v43 = "range_check_metadata";
          v44 = 1024;
          *v45 = v25 - 129;
          *&v45[4] = 1024;
          *&v45[6] = v27;
          *v46 = 1024;
          *&v46[2] = v25 - 129;
          *v47 = 1024;
          *&v47[2] = v28;
          _os_log_impl(&dword_250836000, v26, OS_LOG_TYPE_DEFAULT, " [1.450.54] %s: syntax error: distribution_index[%d]:%d != k_distribution_index[%d]:%d", buf, 0x24u);
        }

        v4 = 1;
      }

      ++var38;
      ++v25;
    }

    while (v25 != 138);
    v30 = 0;
    v31 = MEMORY[0x277D86220];
    while (v30 != 2)
    {
      v35 = this->var29[v30];
      if (v35 > 0x186A0)
      {
        if (enableLogInstance)
        {
          if (logInstanceID)
          {
            v33 = logInstanceID;
          }

          else
          {
            v33 = prevLogInstanceID;
          }

          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218754;
            v43 = WORD1(v33);
            v44 = 2080;
            *v45 = "range_check_metadata";
            *&v45[8] = 1024;
            *v46 = v30;
            *&v46[4] = 1024;
            *v47 = v35;
            v34 = v31;
LABEL_132:
            _os_log_impl(&dword_250836000, v34, OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: syntax error: distribution_values[%d] = %08x", buf, 0x22u);
          }

LABEL_133:
          prevLogInstanceID = v33;
          goto LABEL_139;
        }

        if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_139;
        }

        *buf = 136315650;
        v43 = "range_check_metadata";
        v44 = 1024;
        *v45 = v30;
        *&v45[4] = 1024;
        *&v45[6] = v35;
        v36 = v31;
LABEL_138:
        _os_log_impl(&dword_250836000, v36, OS_LOG_TYPE_DEFAULT, " [1.450.54] %s: syntax error: distribution_values[%d] = %08x", buf, 0x18u);
        goto LABEL_139;
      }

LABEL_140:
      if (++v30 == 9)
      {
        var30 = this->var30;
        if (this->var30)
        {
          if (enableLogInstance)
          {
            if (logInstanceID)
            {
              v38 = logInstanceID;
            }

            else
            {
              v38 = prevLogInstanceID;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218498;
              v43 = WORD1(v38);
              v44 = 2080;
              *v45 = "range_check_metadata";
              *&v45[8] = 1024;
              *v46 = var30;
              _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: warning: fraction_bright_pixels = %d", buf, 0x1Cu);
            }

            prevLogInstanceID = v38;
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v43 = "range_check_metadata";
            v44 = 1024;
            *v45 = var30;
            _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s: warning: fraction_bright_pixels = %d", buf, 0x12u);
          }
        }

        if (this->var31)
        {
          if (enableLogInstance)
          {
            if (logInstanceID)
            {
              v39 = logInstanceID;
            }

            else
            {
              v39 = prevLogInstanceID;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218498;
              v43 = WORD1(v39);
              v44 = 2080;
              *v45 = "range_check_metadata";
              *&v45[8] = 1024;
              *v46 = 1;
              _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: syntax error: mastering_display_actual_peak_luminance_flag = %d", buf, 0x1Cu);
            }

            prevLogInstanceID = v39;
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v43 = "range_check_metadata";
            v44 = 1024;
            *v45 = 1;
            _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s: syntax error: mastering_display_actual_peak_luminance_flag = %d", buf, 0x12u);
          }

          v4 = 1;
        }

        if (this->var37)
        {
          if (enableLogInstance)
          {
            if (logInstanceID)
            {
              v40 = logInstanceID;
            }

            else
            {
              v40 = prevLogInstanceID;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218498;
              v43 = WORD1(v40);
              v44 = 2080;
              *v45 = "range_check_metadata";
              *&v45[8] = 1024;
              *v46 = 1;
              _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: syntax error: color_saturation_mapping_flag = %d", buf, 0x1Cu);
            }

            prevLogInstanceID = v40;
            return this->var14;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return this->var14;
          }

          *buf = 136315394;
          v43 = "range_check_metadata";
          v44 = 1024;
          *v45 = 1;
          v7 = MEMORY[0x277D86220];
          v8 = " [1.450.54] %s: syntax error: color_saturation_mapping_flag = %d";
LABEL_174:
          _os_log_impl(&dword_250836000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0x12u);
          return this->var14;
        }

        if (v4)
        {
          return this->var14;
        }

        return 0;
      }
    }

    v32 = this->var29[2];
    if (v32 < 0x65 || v32 == 255)
    {
      goto LABEL_140;
    }

    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v33 = logInstanceID;
      }

      else
      {
        v33 = prevLogInstanceID;
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218754;
        v43 = WORD1(v33);
        v44 = 2080;
        *v45 = "range_check_metadata";
        *&v45[8] = 1024;
        *v46 = 2;
        *&v46[4] = 1024;
        *v47 = v32;
        v34 = v31;
        goto LABEL_132;
      }

      goto LABEL_133;
    }

    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
LABEL_139:
      v4 = 1;
      goto LABEL_140;
    }

    *buf = 136315650;
    v43 = "range_check_metadata";
    v44 = 1024;
    *v45 = 2;
    *&v45[4] = 1024;
    *&v45[6] = v32;
    v36 = v31;
    goto LABEL_138;
  }

  if (!enableLogInstance)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return this->var14;
    }

    *buf = 136315394;
    v43 = "range_check_metadata";
    v44 = 1024;
    *v45 = v2;
    v7 = MEMORY[0x277D86220];
    v8 = " [1.450.54] %s: parsing error remaining_bits = %d, bail!\n";
    goto LABEL_174;
  }

  if (logInstanceID)
  {
    v6 = logInstanceID;
  }

  else
  {
    v6 = prevLogInstanceID;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v43 = WORD1(v6);
    v44 = 2080;
    *v45 = "range_check_metadata";
    *&v45[8] = 1024;
    *v46 = v2;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: parsing error remaining_bits = %d, bail!\n", buf, 0x1Cu);
  }

  prevLogInstanceID = v6;
  return this->var14;
}

__n128 HDR10PlusMetaData_RBSP::copy_metadata(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 104);
  v2 = *(a1 + 112);
  *(a2 + 12) = *(a1 + 120);
  *(a2 + 4) = v2;
  *(a2 + 16) = *(a1 + 124);
  *(a2 + 20) = *(a1 + 128);
  v3 = *(a1 + 129);
  *(a2 + 29) = *(a1 + 137);
  *(a2 + 21) = v3;
  v4 = *(a1 + 140);
  v5 = *(a1 + 156);
  *(a2 + 64) = *(a1 + 172);
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  *(a2 + 68) = *(a1 + 179);
  *(a2 + 70) = *(a1 + 180);
  *(a2 + 74) = *(a1 + 184);
  result = *(a1 + 186);
  *(a2 + 92) = *(a1 + 202);
  *(a2 + 76) = result;
  return result;
}

uint64_t MrParseMds(_BYTE *a1, int a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, double a11)
{
  *a5 = 0;
  *a4 = 0;
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  *(a5 + 4) = *a1;
  if (a2 == 1)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = 0;
  v13 = (a1 + 2);
  *(a5 + 5) = a1[1];
  v14 = a2 - 2;
  v15 = a5;
  do
  {
    for (i = 8; i != 32; i += 8)
    {
      v17 = __OFSUB__(v14, 2);
      v14 -= 2;
      if (v14 < 0 != v17)
      {
        return 0xFFFFFFFFLL;
      }

      v18 = *v13;
      v13 = (v13 + 2);
      *(v15 + i) = vcvtd_n_f64_s32(bswap32(v18) >> 16, 0xDuLL);
    }

    ++v12;
    v15 += 24;
  }

  while (v12 != 3);
  for (j = 80; j != 104; j += 8)
  {
    v17 = __OFSUB__(v14, 4);
    v14 -= 4;
    if (v14 < 0 != v17)
    {
      return 0xFFFFFFFFLL;
    }

    v20 = *v13++;
    *(a5 + j) = vcvtd_n_f64_u32(bswap32(v20), 0x10uLL);
  }

  v21 = 0;
  v22 = 104;
  do
  {
    v23 = 0;
    v24 = v13;
    v25 = v14;
    v26 = v22;
    do
    {
      v17 = __OFSUB__(v14, 2);
      v14 -= 2;
      if (v14 < 0 != v17)
      {
        return 0xFFFFFFFFLL;
      }

      *(a5 + v26) = vcvtd_n_f64_s32(bswap32(*(v24 + v23)) >> 16, 0xEuLL);
      v23 += 2;
      v26 += 8;
    }

    while (v23 != 6);
    ++v21;
    v22 += 24;
    v13 = (v24 + 6);
  }

  while (v21 != 3);
  if ((v25 - 4) < 4)
  {
    return 0xFFFFFFFFLL;
  }

  v27 = bswap32(*(v24 + 3)) >> 16;
  v28 = v27;
  v29 = vcvtd_n_f64_u32(v27, 0xEuLL);
  if (v27 <= 0xFFFD)
  {
    v28 = v29;
  }

  *(a5 + 176) = v28;
  v30 = v14 & 0x7FFFFFFE;
  if (v30 == 2)
  {
    return 0xFFFFFFFFLL;
  }

  *(a5 + 184) = vcvtd_n_f64_u32(bswap32(*(v24 + 4)) >> 16, 2uLL);
  if (v30 == 4)
  {
    return 0xFFFFFFFFLL;
  }

  *(a5 + 192) = vcvtd_n_f64_u32(bswap32(*(v24 + 5)) >> 16, 0x10uLL);
  if ((v25 - 16) > 0xFFFFFFFB)
  {
    return 0xFFFFFFFFLL;
  }

  *(a5 + 200) = vcvtd_n_f64_u32(bswap32(v24[3]), 0x12uLL);
  if (v25 == 16)
  {
    return 0xFFFFFFFFLL;
  }

  *(a5 + 208) = *(v24 + 16);
  if (v25 == 17)
  {
    return 0xFFFFFFFFLL;
  }

  *(a5 + 209) = *(v24 + 17);
  if (v25 == 18)
  {
    return 0xFFFFFFFFLL;
  }

  *(a5 + 210) = *(v24 + 18);
  if (v25 == 19)
  {
    return 0xFFFFFFFFLL;
  }

  *(a5 + 211) = *(v24 + 19);
  if (v30 == 14)
  {
    return 0xFFFFFFFFLL;
  }

  *(a5 + 216) = (bswap32(*(v24 + 10)) >> 16) * 0.000244200244;
  if (v30 == 16)
  {
    return 0xFFFFFFFFLL;
  }

  *(a5 + 224) = (bswap32(*(v24 + 11)) >> 16) * 0.000244200244;
  if (v30 == 18)
  {
    return 0xFFFFFFFFLL;
  }

  *(a5 + 232) = bswap32(*(v24 + 12)) >> 16;
  *a5 |= 1u;
  *(a5 + 384) = 0;
  *(a5 + 904) = 0;
  *(a5 + 2432) = 0;
  if (v25 == 26)
  {
    return 0xFFFFFFFFLL;
  }

  v33 = v24 + 6;
  v34 = v33[20];
  *(a5 + 3033) = v34;
  v35 = v25 - 27;
  if (!v34)
  {
    v37 = 0;
LABEL_159:
    AppenddDefaultL2L8Trim(a6, a5);
    *(a5 + 3033) -= v37;
    return (a2 - v35);
  }

  v36 = 0;
  v37 = 0;
  v38 = v33 + 21;
  v39 = a6 + 9196;
  v94 = a5 + 912;
  v95 = a5 + 2440;
  v40 = a6 + 9176;
  v92 = a5 + 968;
  v93 = a5 + 392;
  v90 = a5 + 1032;
  v91 = a5 + 984;
  while (1)
  {
    if (v35 <= 4)
    {
      return 0xFFFFFFFFLL;
    }

    v41 = bswap32(*v38);
    v42 = v35 - 5;
    if (v41 > v35 - 5)
    {
      return 0xFFFFFFFFLL;
    }

    v43 = v38 + 5;
    v44 = v38[4];
    if (v44 > 7)
    {
      break;
    }

    if (v38[4] > 2u)
    {
      switch(v44)
      {
        case 3u:
          result = 0xFFFFFFFFLL;
          if (v42 < 2)
          {
            return result;
          }

          v17 = __OFSUB__(v41, 6);
          v41 -= 6;
          if (v41 < 0 != v17)
          {
            return result;
          }

          *(a5 + 352) = (bswap32(*(v38 + 5)) >> 16) * 0.00048828125 + -1.0;
          if ((v35 - 9) > 0xFFFFFFFD)
          {
            return result;
          }

          *(a5 + 360) = (bswap32(*(v38 + 7)) >> 16) * 0.00048828125 + -1.0;
          v42 = v35 - 11;
          if ((v35 - 11) > 0xFFFFFFFD)
          {
            return result;
          }

          v43 = v38 + 11;
          a11 = (bswap32(*(v38 + 9)) >> 16) * 0.00048828125 + -1.0;
          *(a5 + 368) = a11;
          v75 = *a5 | 8;
          goto LABEL_132;
        case 4u:
          result = 0xFFFFFFFFLL;
          if (v42 < 2)
          {
            return result;
          }

          v17 = __OFSUB__(v41, 4);
          v41 -= 4;
          if (v41 < 0 != v17)
          {
            return result;
          }

          *(a5 + 3016) = (bswap32(*(v38 + 5)) >> 16) / 4095.0;
          v42 = v35 - 9;
          if ((v35 - 9) > 0xFFFFFFFD)
          {
            return result;
          }

          v43 = v38 + 9;
          a11 = (bswap32(*(v38 + 7)) >> 16) / 4095.0;
          *(a5 + 3024) = a11;
          v75 = *a5 | 0x10;
          goto LABEL_132;
        case 5u:
          result = 0xFFFFFFFFLL;
          if (v42 < 2)
          {
            return result;
          }

          v17 = __OFSUB__(v41, 8);
          v41 -= 8;
          if (v41 < 0 != v17)
          {
            return result;
          }

          *(a5 + 234) = bswap32(*(v38 + 5)) >> 16;
          if ((v35 - 9) > 0xFFFFFFFD)
          {
            return result;
          }

          *(a5 + 236) = bswap32(*(v38 + 7)) >> 16;
          if ((v35 - 11) > 0xFFFFFFFD)
          {
            return result;
          }

          *(a5 + 238) = bswap32(*(v38 + 9)) >> 16;
          v42 = v35 - 13;
          if ((v35 - 13) > 0xFFFFFFFD)
          {
            return result;
          }

          *(a5 + 240) = bswap32(*(v38 + 11)) >> 16;
          v43 = v38 + 13;
          v52 = *a5 | 0x20;
          goto LABEL_126;
      }

      goto LABEL_137;
    }

    if (v44 == 1)
    {
      result = 0xFFFFFFFFLL;
      if (v42 < 2)
      {
        return result;
      }

      v17 = __OFSUB__(v41, 6);
      v41 -= 6;
      if (v41 < 0 != v17)
      {
        return result;
      }

      *(a5 + 328) = (bswap32(*(v38 + 5)) >> 16) * 0.000244200244;
      if ((v35 - 9) > 0xFFFFFFFD)
      {
        return result;
      }

      *(a5 + 336) = (bswap32(*(v38 + 7)) >> 16) * 0.000244200244;
      v42 = v35 - 11;
      if ((v35 - 11) > 0xFFFFFFFD)
      {
        return result;
      }

      v43 = v38 + 11;
      a11 = (bswap32(*(v38 + 9)) >> 16) * 0.000244200244;
      *(a5 + 344) = a11;
      v75 = *a5 | 2;
      goto LABEL_132;
    }

    if (v44 != 2)
    {
      goto LABEL_137;
    }

    v53 = *(a5 + 384);
    if (v53 <= 7)
    {
      result = 0xFFFFFFFFLL;
      if (v42 < 2)
      {
        return result;
      }

      v54 = 2 * *(a5 + 380);
      v17 = __OFSUB__(v41, v54);
      v41 -= v54;
      if (v41 < 0 != v17)
      {
        return result;
      }

      v55 = 0;
      v56 = (v93 + 56 * v53);
      v57 = v35 - 7;
      *v56 = (bswap32(*(v38 + 5)) >> 16) * 0.000244200244;
      v58 = 56 * v53 + 400;
      v59 = (a6 + 64);
      do
      {
        v17 = __OFSUB__(v57, 2);
        v57 -= 2;
        if (v57 < 0 != v17)
        {
          return 0xFFFFFFFFLL;
        }

        v60 = *v59++;
        *(a5 + v58) = v60 + (bswap32(*&v38[v55 + 7]) >> 16) * 0.000244140625;
        v55 += 2;
        v58 += 8;
      }

      while (v55 != 10);
      if ((v35 - 15) < 4)
      {
        return 0xFFFFFFFFLL;
      }

      v43 = v38 + 19;
      v42 = v35 - 19;
      a11 = *(a6 + 104) + vcvtd_n_f64_u32(_byteswap_ushort(*(v38 + 17)), 0xBuLL);
      v56[6] = a11;
      *a5 |= 4u;
      *(a5 + 384) = v53 + 1;
    }

LABEL_133:
    result = 0xFFFFFFFFLL;
    if (v41 < 0)
    {
      return result;
    }

    v35 = v42 - v41;
    if (v42 < v41)
    {
      return result;
    }

    v38 = &v43[v41];
    if (++v36 >= *(a5 + 3033))
    {
      goto LABEL_159;
    }
  }

  if (v38[4] > 0xAu)
  {
    switch(v44)
    {
      case 0xBu:
        result = 0xFFFFFFFFLL;
        if (v35 == 5)
        {
          return result;
        }

        v17 = __OFSUB__(v41, 4);
        v41 -= 4;
        if (v41 < 0 != v17)
        {
          return result;
        }

        v76 = *v43;
        *(a5 + 313) = *v43;
        *(a6 + 9216) = v76;
        *(a5 + 312) = 0;
        *(a5 + 313) &= 0xFu;
        if (v35 == 6)
        {
          return result;
        }

        v77 = 0;
        v43 = v38 + 7;
        v78 = v38[6];
        *(a5 + 314) = v78;
        v42 = v35 - 7;
        *(a6 + 9217) = v78;
        *(a5 + 314) &= 0xFu;
        v79 = 1;
        do
        {
          if (!v42)
          {
            return 0xFFFFFFFFLL;
          }

          v80 = v79;
          v79 = 0;
          v81 = *v43++;
          *(a6 + 9218 + v77) = v81;
          --v42;
          v77 = 1;
        }

        while ((v80 & 1) != 0);
        v75 = *a5 | 0x800;
LABEL_132:
        *a5 = v75;
        goto LABEL_133;
      case 0xFEu:
        result = 0xFFFFFFFFLL;
        if (v35 == 5)
        {
          return result;
        }

        v17 = __OFSUB__(v41, 2);
        v41 -= 2;
        if (v41 < 0 != v17)
        {
          return result;
        }

        *(a5 + 315) = *v43;
        if (v35 == 6)
        {
          return result;
        }

        v43 = v38 + 7;
        *(a5 + 316) = v38[6];
        v42 = v35 - 7;
        v52 = *a5 | 0x40000000;
        goto LABEL_126;
      case 0xFFu:
        result = 0xFFFFFFFFLL;
        if (v35 == 5)
        {
          return result;
        }

        v17 = __OFSUB__(v41, 6);
        v41 -= 6;
        if (v41 < 0 != v17)
        {
          return result;
        }

        *(a5 + 317) = *v43;
        if (v35 == 6)
        {
          return result;
        }

        *(a5 + 318) = v38[6];
        if (v35 == 7)
        {
          return result;
        }

        *(a5 + 319) = v38[7];
        if (v35 == 8)
        {
          return result;
        }

        *(a5 + 320) = v38[8];
        if (v35 == 9)
        {
          return result;
        }

        *(a5 + 321) = v38[9];
        if (v35 == 10)
        {
          return result;
        }

        v43 = v38 + 11;
        *(a5 + 322) = v38[10];
        v42 = v35 - 11;
        v52 = *a5 | 0x80000000;
LABEL_126:
        *a5 = v52;
        goto LABEL_133;
    }

LABEL_137:
    if ((v44 & 0xFE) == 6)
    {
      ++v37;
      *a4 += v41 + 5;
    }

    goto LABEL_133;
  }

  if (v44 == 8)
  {
    v61 = *(a5 + 904);
    if (v61 <= 4)
    {
      *(v40 + 4 * v61) = v41;
      result = 0xFFFFFFFFLL;
      if (v35 == 5)
      {
        return result;
      }

      if (v41 < 1)
      {
        return result;
      }

      v62 = (v94 + 168 * v61);
      LOBYTE(a11) = *v43;
      *v62 = *&a11;
      if (v41 < 0xD)
      {
        return result;
      }

      v63 = 0;
      v64 = v35 - 6;
      v65 = 168 * v61;
      v66 = v65 + 920;
      v67 = 3;
      v68 = (a6 + 288);
      do
      {
        v17 = __OFSUB__(v64, 2);
        v64 -= 2;
        if (v64 < 0 != v17)
        {
          return 0xFFFFFFFFLL;
        }

        v69 = v67;
        v70 = *v68++;
        *(a5 + v66) = v70 + (bswap32(*&v38[v63 + 6]) >> 16) * 0.000244140625;
        v63 += 2;
        v66 += 8;
        v67 += 2;
      }

      while (v63 != 10);
      if ((v35 - 14) < 4)
      {
        return 0xFFFFFFFFLL;
      }

      v71 = 0;
      v62[6] = *(a6 + 328) + vcvtd_n_f64_u32(_byteswap_ushort(*(v38 + 8)), 0xBuLL);
      do
      {
        a11 = *(a6 + 168 + v71);
        *(v92 + v65 + v71) = a11;
        v71 += 8;
      }

      while (v71 != 112);
      if ((v41 - 12) > 2)
      {
        if (v35 - 14 < 6)
        {
          return 0xFFFFFFFFLL;
        }

        a11 = *(a6 + 336) + _byteswap_ushort(*(v38 + 9)) * 0.000244140625;
        v62[7] = a11;
        if (v41 <= 16)
        {
          v43 = v38 + 20;
          v42 = v35 - 20;
          v41 -= 15;
        }

        else
        {
          if ((v35 - 20) < 2)
          {
            return 0xFFFFFFFFLL;
          }

          v43 = v38 + 22;
          v89 = v35 - 12;
          v82 = v35 - 22;
          a11 = *(a6 + 344) + _byteswap_ushort(*(v38 + 10)) * 0.000244140625;
          v62[8] = a11;
          if ((v41 - 15) >= 0x14)
          {
            v83 = 2;
          }

          else
          {
            v83 = (v41 - 17) / 6u;
          }

          if (v83)
          {
            v84 = 0;
            v85 = 22 - v35;
            v42 = v82;
            while (v85 + v84)
            {
              v86 = v69;
              --v42;
              LOBYTE(a11) = v43[v84];
              a11 = *(a6 + 352 + 8 * v84) + *&a11 * 0.0078125;
              *(v91 + v65 + 8 * v84++) = a11;
              ++v69;
              if (v84 == 6)
              {
                v87 = v38 + 12;
                if (v83 == 1)
                {
                  v41 -= 23;
                  v43 = v38 + 28;
                  goto LABEL_153;
                }

                v88 = 0;
                while (v89 != v86)
                {
                  LOBYTE(a11) = v87[v86];
                  a11 = *(a6 + 400 + v88) + *&a11 * 0.00390625;
                  *(v90 + v65 + v88) = a11;
                  v88 += 8;
                  ++v86;
                  if (v88 == 48)
                  {
                    v41 -= 29;
                    *(v40 + 4 * *(a5 + 904)) -= v41;
                    v42 = v89 - v86;
                    v43 = &v87[v86];
                    goto LABEL_153;
                  }
                }

                return 0xFFFFFFFFLL;
              }
            }

            return 0xFFFFFFFFLL;
          }

          v42 = v35 - 22;
          v41 -= 17;
        }
      }

      else
      {
        v43 = v38 + 18;
        v42 = v35 - 18;
        v41 -= 13;
      }

LABEL_153:
      *a5 |= 0x100u;
      ++*(a5 + 904);
      goto LABEL_133;
    }

    goto LABEL_133;
  }

  if (v44 != 9)
  {
    if (v44 != 10)
    {
      goto LABEL_137;
    }

    v45 = *(a5 + 2432);
    if (v45 <= 4)
    {
      *(v39 + 4 * v45) = v41;
      result = 0xFFFFFFFFLL;
      if (v35 == 5)
      {
        return result;
      }

      v46 = v41 - 6;
      if (v41 < 6)
      {
        return result;
      }

      v47 = v95 + 96 * v45;
      *v47 = *v43;
      if ((v35 & 0x7FFFFFFE) == 6)
      {
        return result;
      }

      *(v47 + 8) = (bswap32(*(v38 + 3)) >> 16) * 0.000244200244;
      if ((v35 & 0x7FFFFFFE) == 8)
      {
        return result;
      }

      a11 = (bswap32(*(v38 + 4)) >> 16) * 0.000244200244;
      *(v47 + 16) = a11;
      if (v35 == 10)
      {
        return result;
      }

      v43 = v38 + 11;
      v48 = v38[10];
      *(v47 + 24) = v48;
      v42 = v35 - 11;
      if (v48 >= 0x13)
      {
        v46 = v41 - 22;
        if ((v41 - 22) <= 0xFFFFFFEE)
        {
          v49 = 0;
          v50 = v47 + 32;
          while (1)
          {
            v17 = __OFSUB__(v42, 2);
            v42 -= 2;
            if (v42 < 0 != v17)
            {
              return 0xFFFFFFFFLL;
            }

            v51 = *v43;
            v43 += 2;
            a11 = (bswap32(v51) >> 16) * 0.0000305185095;
            *(v50 + v49) = a11;
            v49 += 8;
            if (v49 == 64)
            {
              goto LABEL_53;
            }
          }
        }

        return result;
      }

LABEL_53:
      *(v39 + 4 * *(a5 + 2432)) -= v46;
      *a5 |= 0x400u;
      ++*(a5 + 2432);
      goto LABEL_105;
    }

    goto LABEL_133;
  }

  result = 0xFFFFFFFFLL;
  if (v35 == 5)
  {
    return result;
  }

  v46 = v41 - 1;
  if (v41 < 1)
  {
    return result;
  }

  v43 = v38 + 6;
  v72 = v38[5];
  *(a5 + 242) = v72;
  v42 = v35 - 6;
  if (v72 < 0x13)
  {
LABEL_104:
    *a5 |= 0x200u;
LABEL_105:
    v41 = v46;
    goto LABEL_133;
  }

  v46 = v41 - 17;
  if (v41 >= 0x11)
  {
    v73 = 0;
    while (1)
    {
      v17 = __OFSUB__(v42, 2);
      v42 -= 2;
      if (v42 < 0 != v17)
      {
        return 0xFFFFFFFFLL;
      }

      v74 = *v43;
      v43 += 2;
      a11 = (bswap32(v74) >> 16) * 0.0000305185095;
      *(a5 + 248 + v73) = a11;
      v73 += 8;
      if (v73 == 64)
      {
        goto LABEL_104;
      }
    }
  }

  return result;
}

double AppenddDefaultL2L8Trim(uint64_t a1, int *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*a2 & 0x100) != 0)
    {
      v3 = 0;
      v4 = &a2[42 * a2[226] + 228];
      do
      {
        result = *(a1 + 112 + v3 * 4);
        *&v4[v3] = result;
        v3 += 2;
      }

      while (v3 != 42);
    }

    if ((v2 & 4) != 0)
    {
      v6 = 0;
      v7 = &a2[14 * a2[96]];
      *(v7 + 49) = *(a2 + 28);
      v8 = v7 + 100;
      do
      {
        result = *(a1 + 8 + v6 * 4);
        *&v8[v6] = result;
        v6 += 2;
      }

      while (v6 != 12);
    }
  }

  return result;
}

uint64_t MrGetMdsExtFxpMr(void *a1, uint64_t a2)
{
  v151 = *MEMORY[0x277D85DE8];
  if (!a2 || (*(a2 + 4176) & 0x80000000) != 0)
  {
    v4 = 0xFFFFFFFFLL;
LABEL_12:
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v6 = logInstanceID;
      }

      else
      {
        v6 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v150 = WORD1(v6);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx MR81: Error: MrGetMdsExtFxpMr mdsLen < 0", buf, 0xCu);
      }

      prevLogInstanceID = v6;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] MR81: Error: MrGetMdsExtFxpMr mdsLen < 0", buf, 2u);
    }

    return v4;
  }

  v4 = *(a2 + 4184);
  if (v4 <= 70)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v5 = logInstanceID;
      }

      else
      {
        v5 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v150 = WORD1(v5);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx MR81: Error: GetMdsExtMr mr->mdsBase.mdsLen < 71", buf, 0xCu);
      }

      prevLogInstanceID = v5;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] MR81: Error: GetMdsExtMr mr->mdsBase.mdsLen < 71", buf, 2u);
    }

    v4 = *(a2 + 4184);
    if ((v4 & 0x80000000) != 0)
    {
      goto LABEL_12;
    }
  }

  *a1 = a2 + 7236;
  if (!*(a2 + 7232))
  {
    v7 = *(a2 + 4192);
    *(a2 + 7236) = v7;
    *(a2 + 7240) = *(a2 + 4196);
    v8 = vdupq_n_s64(0x40F0000000000000uLL);
    __asm
    {
      FMOV            V25.2D, #0.5
      FMOV            V26.2D, #-0.5
    }

    *(a2 + 7264) = vmovn_s64(vcvtq_u64_f64(vbslq_s8(vcgezq_f64(*(a2 + 4272)), vmlaq_f64(_Q25, v8, *(a2 + 4272)), vmlaq_f64(_Q26, v8, *(a2 + 4272)))));
    v13 = *(a2 + 4288);
    if (v13 >= 0.0)
    {
      v14 = v13 * 65536.0 + 0.5;
    }

    else
    {
      v14 = v13 * 65536.0 + -0.5;
    }

    *(a2 + 7272) = v14;
    v15 = (a2 + 4216);
    v16 = (a2 + 7248);
    v17 = 3;
    do
    {
      v18 = *(v15 - 2);
      if (v18 >= 0.0)
      {
        v19 = v18 * 8192.0 + 0.5;
      }

      else
      {
        v19 = v18 * 8192.0 + -0.5;
      }

      *(v16 - 2) = v19;
      v20 = *(v15 - 1);
      if (v20 >= 0.0)
      {
        v21 = v20 * 8192.0 + 0.5;
      }

      else
      {
        v21 = v20 * 8192.0 + -0.5;
      }

      *(v16 - 1) = v21;
      v22 = *v15;
      v15 += 3;
      v23 = v22 * 8192.0 + 0.5;
      v24 = v22 * 8192.0 + -0.5;
      if (v22 >= 0.0)
      {
        v25 = v23;
      }

      else
      {
        v25 = v24;
      }

      *v16 = v25;
      v16 += 3;
      --v17;
    }

    while (v17);
    v26 = (a2 + 4312);
    v27 = (a2 + 7282);
    v28 = 3;
    do
    {
      v29 = *(v26 - 2);
      if (v29 >= 0.0)
      {
        v30 = v29 * 16384.0 + 0.5;
      }

      else
      {
        v30 = v29 * 16384.0 + -0.5;
      }

      *(v27 - 2) = v30;
      v31 = *(v26 - 1);
      if (v31 >= 0.0)
      {
        v32 = v31 * 16384.0 + 0.5;
      }

      else
      {
        v32 = v31 * 16384.0 + -0.5;
      }

      *(v27 - 1) = v32;
      v33 = *v26;
      v26 += 3;
      v34 = v33 * 16384.0 + 0.5;
      v35 = v33 * 16384.0 + -0.5;
      if (v33 >= 0.0)
      {
        v36 = v34;
      }

      else
      {
        v36 = v35;
      }

      *v27 = v36;
      v27 += 3;
      --v28;
    }

    while (v28);
    v37 = *(a2 + 4368);
    v38 = v37 * 16384.0 + -0.5;
    if (v37 >= 0.0)
    {
      v38 = v37 * 16384.0 + 0.5;
    }

    if (v37 != 65534.0 && v37 != 65535.0)
    {
      v37 = v38;
    }

    *(a2 + 7296) = v37;
    v40 = *(a2 + 4376);
    if (v40 >= 0.0)
    {
      v41 = v40 * 4.0 + 0.5;
    }

    else
    {
      v41 = v40 * 4.0 + -0.5;
    }

    *(a2 + 7298) = v41;
    v42 = *(a2 + 4384);
    v43 = v42 * 65536.0 + -0.5;
    _NF = v42 < 0.0;
    if (v42 >= 0.0)
    {
      v43 = v42 * 65536.0 + 0.5;
    }

    *(a2 + 7300) = v43;
    v45 = v42 * 262144.0 + 0.5;
    v46 = v42 * 262144.0 + -0.5;
    if (!_NF)
    {
      v46 = v45;
    }

    *(a2 + 7304) = v46;
    *(a2 + 7308) = *(a2 + 4400);
    v47 = *(a2 + 4408);
    if (v47 >= 0.0)
    {
      v48 = v47 * 4095.0 + 0.5;
    }

    else
    {
      v48 = v47 * 4095.0 + -0.5;
    }

    v49 = v48;
    v50 = *(a2 + 4416);
    if (v50 >= 0.0)
    {
      v51 = v50 * 4095.0 + 0.5;
    }

    else
    {
      v51 = v50 * 4095.0 + -0.5;
    }

    *(a2 + 7312) = v49;
    *(a2 + 7314) = v51;
    *(a2 + 7316) = *(a2 + 4424);
    *(a2 + 7933) = *(a2 + 7225);
    if ((v7 & 2) != 0)
    {
      v52 = *(a2 + 4520);
      if (v52 >= 0.0)
      {
        v53 = v52 * 4095.0 + 0.5;
      }

      else
      {
        v53 = v52 * 4095.0 + -0.5;
      }

      *(a2 + 7356) = v53;
      v54 = *(a2 + 4528);
      if (v54 >= 0.0)
      {
        v55 = v54 * 4095.0 + 0.5;
      }

      else
      {
        v55 = v54 * 4095.0 + -0.5;
      }

      *(a2 + 7358) = v55;
      v56 = *(a2 + 4536);
      v57 = v56 * 4095.0 + 0.5;
      if (v56 < 0.0)
      {
        v57 = v56 * 4095.0 + -0.5;
      }

      *(a2 + 7360) = v57;
    }

    if ((v7 & 4) != 0)
    {
      v58 = *(a2 + 4576);
      *(a2 + 7376) = v58;
      if (v58 >= 1)
      {
        v59 = 0;
        v60 = *(a2 + 104);
        v61 = a2 + 7382;
        v62 = a2 + 4592;
        do
        {
          v63 = 0;
          v64 = (a2 + 4584 + 56 * v59);
          v65 = (a2 + 7380 + 14 * v59);
          if (*v64 >= 0.0)
          {
            v66 = *v64 * 4095.0 + 0.5;
          }

          else
          {
            v66 = *v64 * 4095.0 + -0.5;
          }

          *v65 = v66;
          do
          {
            v67 = (*(v62 + 8 * v63) - *(a2 + 64 + 8 * v63)) * 4096.0;
            v68 = fmin(v67, 4095.0) + 0.5;
            if (v67 < 0.0)
            {
              v69 = 0.5;
            }

            else
            {
              v69 = v68;
            }

            *(v61 + 2 * v63++) = v69;
          }

          while (v63 != 5);
          v70 = (v64[6] - v60) * 2048.0;
          v71 = fmin(v70, 4095.0) + 0.5;
          if (v70 < 0.0)
          {
            v72 = 0.5;
          }

          else
          {
            v72 = v71;
          }

          v65[6] = v72;
          ++v59;
          v61 += 14;
          v62 += 56;
        }

        while (v59 != v58);
      }
    }

    if ((v7 & 8) != 0)
    {
      v73 = *(a2 + 4544) + 1.0;
      if (v73 >= 0.0)
      {
        v74 = v73 * 2048.0 + 0.5;
      }

      else
      {
        v74 = v73 * 2048.0 + -0.5;
      }

      *(a2 + 7362) = v74;
      v75 = *(a2 + 4552) + 1.0;
      if (v75 >= 0.0)
      {
        v76 = v75 * 2048.0 + 0.5;
      }

      else
      {
        v76 = v75 * 2048.0 + -0.5;
      }

      *(a2 + 7364) = v76;
      v77 = *(a2 + 4560) + 1.0;
      if (v77 >= 0.0)
      {
        v78 = v77 * 2048.0 + 0.5;
      }

      else
      {
        v78 = v77 * 2048.0 + -0.5;
      }

      *(a2 + 7366) = v78;
      if ((v7 & 0x10) == 0)
      {
LABEL_97:
        if ((v7 & 0x20) == 0)
        {
          goto LABEL_98;
        }

        goto LABEL_117;
      }
    }

    else if ((v7 & 0x10) == 0)
    {
      goto LABEL_97;
    }

    v79 = *(a2 + 7208);
    if (v79 >= 0.0)
    {
      v80 = v79 * 4095.0 + 0.5;
    }

    else
    {
      v80 = v79 * 4095.0 + -0.5;
    }

    *(a2 + 7928) = v80;
    v81 = *(a2 + 7216);
    if (v81 >= 0.0)
    {
      v82 = v81 * 4095.0 + 0.5;
    }

    else
    {
      v82 = v81 * 4095.0 + -0.5;
    }

    *(a2 + 7930) = v82;
    *(a2 + 7932) = 1;
    if ((v7 & 0x20) == 0)
    {
LABEL_98:
      if ((v7 & 0x100) == 0)
      {
        goto LABEL_166;
      }

LABEL_118:
      v83 = *(a2 + 5096);
      *(a2 + 7516) = v83;
      if (v83 < 1)
      {
        goto LABEL_156;
      }

      v84 = 0;
      v85 = *(a2 + 328);
      v86 = a2 + 7522;
      v87 = a2 + 5112;
      v88 = a2 + 7538;
      v89 = a2 + 5176;
      v90 = a2 + 7550;
      v91 = a2 + 5224;
      do
      {
        v92 = 0;
        v93 = *(a2 + 9176 + 4 * v84);
        v94 = (a2 + 5104 + 168 * v84);
        v95 = a2 + 7520 + 42 * v84;
        *v95 = *v94;
        do
        {
          v96 = (*(v87 + 8 * v92) - *(a2 + 288 + 8 * v92)) * 4096.0;
          v97 = fmin(v96, 4095.0) + 0.5;
          if (v96 < 0.0)
          {
            v98 = 0.5;
          }

          else
          {
            v98 = v97;
          }

          *(v86 + 2 * v92++) = v98;
        }

        while (v92 != 5);
        v99 = (v94[6] - v85) * 2048.0;
        v100 = fmin(v99, 4095.0) + 0.5;
        if (v99 < 0.0)
        {
          v101 = 0.5;
        }

        else
        {
          v101 = v100;
        }

        *(v95 + 12) = v101;
        *(v95 + 14) = 134219776;
        if ((v93 - 12) >= 3)
        {
          v103 = (v94[7] - *(a2 + 336)) * 4096.0;
          v104 = fmin(v103, 4095.0) + 0.5;
          if (v103 < 0.0)
          {
            v105 = 0.5;
          }

          else
          {
            v105 = v104;
          }

          *(v95 + 14) = v105;
          v102 = v93 - 17;
          if (v93 < 17)
          {
            v102 = v93 - 15;
          }

          else
          {
            v106 = (v94[8] - *(a2 + 344)) * 4096.0;
            v107 = fmin(v106, 4095.0) + 0.5;
            if (v106 < 0.0)
            {
              v108 = 0.5;
            }

            else
            {
              v108 = v107;
            }

            *(v95 + 16) = v108;
            v109 = v102 / 6;
            if (v93 >= 0x23)
            {
              v109 = 2;
            }

            if (v109)
            {
              for (i = 0; i != 6; ++i)
              {
                v111 = (*(v89 + 8 * i) - *(a2 + 352 + 8 * i)) * 128.0;
                v112 = fmin(v111, 255.0) + 0.5;
                if (v111 < 0.0)
                {
                  v113 = 0.5;
                }

                else
                {
                  v113 = v112;
                }

                *(v88 + 2 * i) = v113;
              }

              if (v109 == 1)
              {
                v102 = v93 - 23;
              }

              else
              {
                for (j = 0; j != 6; ++j)
                {
                  v115 = (*(v91 + 8 * j) - *(a2 + 400 + 8 * j)) * 256.0;
                  v116 = fmin(v115, 255.0) + 0.5;
                  if (v115 < 0.0)
                  {
                    v117 = 0.5;
                  }

                  else
                  {
                    v117 = v116;
                  }

                  *(v90 + 2 * j) = v117;
                }

                v102 = v93 - 29;
              }
            }
          }
        }

        else
        {
          v102 = v93 - 13;
        }

        ++v84;
        v86 += 42;
        v87 += 168;
        v88 += 42;
        v89 += 168;
        v90 += 42;
        v91 += 168;
      }

      while (v84 != v83);
      if ((v102 & 0x80000000) != 0)
      {
LABEL_156:
        v147 = _Q26;
        v148 = _Q25;
        if (enableLogInstance)
        {
          if (logInstanceID)
          {
            v118 = logInstanceID;
          }

          else
          {
            v118 = prevLogInstanceID;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v150 = WORD1(v118);
            _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx MR81: Error: MrGetMdsExtFxpMr extLen < 0", buf, 0xCu);
          }

          prevLogInstanceID = v118;
          goto LABEL_165;
        }

        v119 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        _Q26 = v147;
        _Q25 = v148;
        if (v119)
        {
          *buf = 0;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] MR81: Error: MrGetMdsExtFxpMr extLen < 0", buf, 2u);
LABEL_165:
          _Q26 = v147;
          _Q25 = v148;
        }
      }

LABEL_166:
      v120 = *(a2 + 4192);
      if ((v120 & 0x200) != 0)
      {
        v121 = *(a2 + 4434);
        *(a2 + 7326) = v121;
        if (v121 >= 0x13)
        {
          v122 = *(a2 + 4456);
          v123 = *(a2 + 4472);
          v124 = *(a2 + 4488);
          v152.val[1] = vcgezq_f64(v124);
          v152.val[2] = vcgezq_f64(v123);
          v152.val[3] = vcgezq_f64(v122);
          v125 = vdupq_n_s64(0x40DFFFC000000000uLL);
          v126 = vbslq_s8(v152.val[3], vmlaq_f64(_Q25, v125, v122), vmlaq_f64(_Q26, v125, v122));
          v152.val[0] = vcvtq_s64_f64(vbslq_s8(v152.val[1], vmlaq_f64(_Q25, v125, v124), vmlaq_f64(_Q26, v125, v124)));
          *v152.val[3].i8 = vmovn_s64(v152.val[0]);
          *v152.val[2].i8 = vmovn_s64(vcvtq_s64_f64(vbslq_s8(v152.val[2], vmlaq_f64(_Q25, v125, v123), vmlaq_f64(_Q26, v125, v123))));
          *v152.val[1].i8 = vmovn_s64(vcvtq_s64_f64(v126));
          *v152.val[0].i8 = vmovn_s64(vcvtq_s64_f64(vbslq_s8(vcgezq_f64(*(a2 + 4440)), vmlaq_f64(_Q25, v125, *(a2 + 4440)), vmlaq_f64(_Q26, v125, *(a2 + 4440)))));
          *(a2 + 7328) = vqtbl4q_s8(v152, xmmword_2508CF100);
        }
      }

      if ((v120 & 0x400) != 0)
      {
        v127 = *(a2 + 6624);
        *(a2 + 7780) = v127;
        if (v127 >= 1)
        {
          v128 = 0;
          v129 = 0;
          v130 = 96 * v127;
          v131 = 6632;
          v132 = 6664;
          v133 = vdupq_n_s64(0x40DFFFC000000000uLL);
          do
          {
            v134 = (a2 + v128);
            *(a2 + v128 + 7784) = *(a2 + v131);
            v135 = *(a2 + v129 + 6640);
            if (v135 >= 0.0)
            {
              v136 = v135 * 4095.0 + 0.5;
            }

            else
            {
              v136 = v135 * 4095.0 + -0.5;
            }

            v134[486].i16[5] = v136;
            v137 = *(a2 + v129 + 6648);
            if (v137 >= 0.0)
            {
              v138 = v137 * 4095.0 + 0.5;
            }

            else
            {
              v138 = v137 * 4095.0 + -0.5;
            }

            v134[486].i16[6] = v138;
            v139 = *(a2 + v131 + 24);
            v134[486].i16[7] = v139;
            if (v139 >= 0x13)
            {
              v140 = *(a2 + v132);
              v141 = *(a2 + v132 + 16);
              v142 = *(a2 + v132 + 32);
              v143 = *(a2 + v132 + 48);
              v153.val[0] = vcgezq_f64(v143);
              v153.val[1] = vcgezq_f64(v142);
              v153.val[2] = vcgezq_f64(v141);
              v153.val[3] = vcgezq_f64(v140);
              v144 = vbslq_s8(v153.val[3], vmlaq_f64(_Q25, v133, v140), vmlaq_f64(_Q26, v133, v140));
              v145 = vbslq_s8(v153.val[2], vmlaq_f64(_Q25, v133, v141), vmlaq_f64(_Q26, v133, v141));
              *v153.val[3].i8 = vmovn_s64(vcvtq_s64_f64(vbslq_s8(v153.val[0], vmlaq_f64(_Q25, v133, v143), vmlaq_f64(_Q26, v133, v143))));
              *v153.val[2].i8 = vmovn_s64(vcvtq_s64_f64(vbslq_s8(v153.val[1], vmlaq_f64(_Q25, v133, v142), vmlaq_f64(_Q26, v133, v142))));
              *v153.val[1].i8 = vmovn_s64(vcvtq_s64_f64(v145));
              *v153.val[0].i8 = vmovn_s64(vcvtq_s64_f64(v144));
              v134[487] = vqtbl4q_s8(v153, xmmword_2508CF100);
            }

            v129 += 96;
            v128 += 24;
            v131 += 96;
            v132 += 96;
          }

          while (v130 != v129);
        }
      }

      if ((v120 & 0x800) != 0)
      {
        *(a2 + 7344) = *(a2 + 4504);
        *(a2 + 7345) = *(a2 + 4505);
        if ((v120 & 0x40000000) == 0)
        {
LABEL_183:
          if ((v120 & 0x80000000) == 0)
          {
LABEL_184:
            *(a2 + 7232) = 1;
            return v4;
          }

LABEL_188:
          *(a2 + 7349) = *(a2 + 4509);
          *(a2 + 7353) = *(a2 + 4513);
          goto LABEL_184;
        }
      }

      else if ((v120 & 0x40000000) == 0)
      {
        goto LABEL_183;
      }

      *(a2 + 7347) = *(a2 + 4507);
      if ((v120 & 0x80000000) == 0)
      {
        goto LABEL_184;
      }

      goto LABEL_188;
    }

LABEL_117:
    *(a2 + 7318) = *(a2 + 4426);
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_118;
  }

  return v4;
}

void PolyMultiply(float *a1, float *a2, int a3, unsigned int a4, float *a5, unsigned int a6)
{
  v6 = a5;
  if (a6 >= 1)
  {
    bzero(a5, 4 * a6);
  }

  if (a3 >= 1)
  {
    v11 = 0;
    do
    {
      v12 = a2;
      v13 = v6;
      v14 = a4;
      if (a4 >= 1)
      {
        do
        {
          v15 = *v12++;
          *v13 = *v13 + (a1[v11] * v15);
          ++v13;
          --v14;
        }

        while (v14);
      }

      ++v11;
      ++v6;
    }

    while (v11 != a3);
  }
}

float calculatePolyStd(float a1, const float *a2, unsigned int a3)
{
  if (a3 < 1)
  {
    return 0.0;
  }

  v5 = 0;
  v6 = a3;
  v7 = 0.0;
  do
  {
    v8 = a2[v5];
    v7 = v7 + (v8 * powf(a1, v5++));
  }

  while (v6 != v5);
  return v7;
}

float calculatePolyGeneric(float a1, float *a2, unsigned int a3, int a4, float a5)
{
  if (a3 < 1)
  {
    v11 = 0.0;
  }

  else
  {
    v9 = 0;
    v10 = a3;
    v11 = 0.0;
    do
    {
      v12 = a2[v9];
      v11 = v11 + (v12 * powf(a1, v9++));
    }

    while (v10 != v9);
  }

  return powf(v11, a4) * a5;
}

float calculatePolyGeneric(float a1, float *a2, unsigned int a3, int a4, float *a5)
{
  if (a4 < 0)
  {
    return 0.0;
  }

  v9 = 0;
  v10 = a3;
  v11 = (a4 + 1);
  v12 = 0.0;
  do
  {
    v13 = a5[v9];
    v14 = 0.0;
    if (a3 >= 1)
    {
      v15 = 0;
      do
      {
        v16 = a2[v15];
        v14 = v14 + (v16 * powf(a1, v15++));
      }

      while (v10 != v15);
    }

    v12 = v12 + (v13 * powf(v14, v9++));
  }

  while (v9 != v11);
  return v12;
}

float calculatePolyGeneric(float a1, float *a2, float a3, unsigned int a4, int a5, float a6)
{
  if (a4 < 1)
  {
    v13 = 0.0;
  }

  else
  {
    v11 = 0;
    v12 = a4;
    v13 = 0.0;
    do
    {
      v14 = a2[v11];
      v13 = v13 + (v14 * powf(a1, v11++));
    }

    while (v12 != v11);
  }

  return powf(v13 / a3, a5) * a6;
}

float calculatePolyGeneric(float a1, float *a2, float a3, unsigned int a4, int a5, const float *a6)
{
  if (a5 < 0)
  {
    return 0.0;
  }

  v11 = 0;
  v12 = a4;
  v13 = (a5 + 1);
  v14 = 0.0;
  do
  {
    v15 = a6[v11];
    v16 = 0.0;
    if (a4 >= 1)
    {
      v17 = 0;
      do
      {
        v18 = a2[v17];
        v16 = v16 + (v18 * powf(a1, v17++));
      }

      while (v12 != v17);
    }

    v14 = v14 + (v15 * powf(v16 / a3, v11++));
  }

  while (v11 != v13);
  return v14;
}

float dp_srgb_eotf(float a1)
{
  v1 = a1;
  if (v1 >= 0.04045)
  {
    return pow((v1 + 0.055) * 0.947867299, 2.4);
  }

  else
  {
    return v1 * 0.0773993808;
  }
}

float dp_srgb_degamma(float a1)
{
  v1 = a1;
  if (v1 >= 0.04045)
  {
    return pow((v1 + 0.055) * 0.947867299, 2.4);
  }

  else
  {
    return v1 * 0.0773993808;
  }
}

float dp_srgb_oetf(float a1)
{
  v1 = a1;
  if (v1 >= 0.0031308)
  {
    return pow(v1, 0.416667) * 1.055 + -0.055;
  }

  else
  {
    return v1 * 12.92;
  }
}

float dp_srgb_engamma(float a1)
{
  v1 = a1;
  if (v1 >= 0.0031308)
  {
    return pow(v1, 0.416667) * 1.055 + -0.055;
  }

  else
  {
    return v1 * 12.92;
  }
}

void applyDPCompensationS(uint64_t a1, float a2)
{
  if (*(a1 + 16) == 1)
  {
    v3 = *a1;
    if (*a1 > 0.0)
    {
      v4 = *(a1 + 8);
      if ((v4 / v3) > a2)
      {
        v5 = a2 / v4;
        v6 = (powf(a2 / v4, 0.45455) * *(a1 + 4));
        if (v6 >= 0.04045)
        {
          v7 = pow((v6 + 0.055) * 0.947867299, 2.4);
        }

        else
        {
          v7 = v6 * 0.0773993808;
        }

        v8 = v7;
        a2 = v4 * (v5 + (((v8 / v3) - v5) * *(a1 + 12)));
      }
    }
  }

  if (*(a1 + 17) == 1 && !*(a1 + 24))
  {
    pow((a2 * (*a1 / *(a1 + 8))), 1.0 / *(a1 + 20));
  }
}

void setDPCompensationTableS_L(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = 0;
    v7 = (a2 - 1);
    v8 = 1;
    do
    {
      applyDPCompensationS(a3, (v8 - 1) / v7);
      *(a1 + 4 * v6) = v9;
      v6 = v8++;
    }

    while (v6 < a2);
  }
}

float applyNonHeadroomDependentDPCompensation(float a1)
{
  v1 = powf(a1, 0.45455);
  if (v1 >= 0.04045)
  {
    return pow((v1 + 0.055) * 0.947867299, 2.4);
  }

  else
  {
    return v1 * 0.0773993808;
  }
}

uint64_t ATFMTLfloat2half_rtz(float a1)
{
  v2 = HIWORD(LODWORD(a1)) & 0x8000;
  v3 = fabsf(a1);
  if (v3 >= 65536.0)
  {
    v6 = v2 | 0x7BFF;
    LOWORD(v2) = v2 | 0x7C00;
    if (v3 != INFINITY)
    {
      LOWORD(v2) = v6;
    }
  }

  else
  {
    v4 = v2 | ((LODWORD(a1) + 0x8000000) >> 13);
    v5 = v2 | vcvts_n_s32_f32(v3, 0x18uLL);
    if (v3 < 0.000061035)
    {
      LOWORD(v4) = v5;
    }

    if (v3 >= 0.000000059605)
    {
      LOWORD(v2) = v4;
    }
  }

  return v2;
}

float ATFMTLhalf2float(unsigned int a1)
{
  v1 = (a1 << 16) & 0x80000000;
  v2 = (a1 >> 10) & 0x1F;
  v3 = a1 << 13;
  v4 = (a1 << 13) & 0x7FE000;
  if (v2 == 31)
  {
    v7 = v3 | v1 | 0x7FC00000;
    v6 = v1 | 0x7F800000;
    if (v4)
    {
      v6 = v7;
    }

    return *&v6;
  }

  if (v2)
  {
LABEL_5:
    v6 = ((v4 | (v2 << 23)) + 939524096) | v1;
    return *&v6;
  }

  if (v4)
  {
    v5 = __clz(v4);
    v2 = 9 - v5;
    v4 = (v3 << (v5 - 8)) & 0x7FE000;
    goto LABEL_5;
  }

  result = -0.0;
  if (!v1)
  {
    return 0.0;
  }

  return result;
}

double setTargitBrightnessInMetaData(uint64_t a1, double result, float a3, float a4, float a5)
{
  if (a1)
  {
    v9 = PQIn12Bit(*&result);
    v10 = PQIn12Bit(a3);
    v11 = PQIn12Bit(a4);
    v12 = PQIn12Bit(a5);
    *(a1 + 64) = HIBYTE(v10);
    *(a1 + 65) = v10;
    *(a1 + 66) = HIBYTE(v9);
    *(a1 + 67) = v9;
    *&result = 0x100000001;
    *(a1 + 70) = 1;
    v13 = (v12 + v11) / 2;
    *(a1 + 74) = 262;
    *(a1 + 76) = BYTE1(v12);
    *(a1 + 77) = v12;
    *(a1 + 78) = BYTE1(v11);
    *(a1 + 79) = v11;
    *(a1 + 80) = BYTE1(v13);
    *(a1 + 81) = v13;
  }

  return result;
}

_WORD *adjustL1Meta(_WORD *result, float a2)
{
  v2 = result[81];
  LOWORD(a2) = result[80];
  *&v3 = fmaxf(LODWORD(a2), 2081.0);
  v4 = *&v3;
  LOWORD(v3) = result[79];
  v5 = fminf(v3, 614.0);
  if (v5 + 700 > v2)
  {
    v2 = v5 + 700;
  }

  if (v2 >= v4)
  {
    LOWORD(v2) = v4 - 1;
  }

  result[80] = v4;
  result[79] = v5;
  result[81] = v2;
  return result;
}

int *adjustSrcStatForDM3(int *result, int *a2, int *a3)
{
  v3 = *a3;
  v4 = fmaxf(*result, 2081.0);
  v5 = fminf(*a2, 614.0);
  if (*a3 <= v5 + 700)
  {
    v3 = v5 + 700;
  }

  *result = v4;
  if (v3 >= v4)
  {
    v3 = v4 - 1;
  }

  *a2 = v5;
  *a3 = v3;
  return result;
}

uint64_t adjustL1MetaData(uint64_t result, int a2)
{
  v2 = fmaxf(__rev16(*(result + 78)), 2081.0);
  v3 = __rev16(*(result + 80));
  v4 = fminf(__rev16(*(result + 76)), 614.0);
  if (v3 <= v4 + 700)
  {
    v3 = v4 + 700;
  }

  if (v3 >= v2)
  {
    v3 = v2 - 1;
  }

  if (v2 < 500)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v3 < 500;
  if ((v5 & v6) != 0)
  {
    LOWORD(v2) = 2372;
  }

  *(result + 76) = BYTE1(v4);
  *(result + 77) = v4;
  if ((v5 & v6) != 0)
  {
    LOWORD(v3) = 1186;
  }

  *(result + 78) = BYTE1(v2);
  *(result + 79) = v2;
  *(result + 80) = BYTE1(v3);
  *(result + 81) = v3;
  return result;
}

uint64_t adjustL2MetaData(unsigned __int8 *a1, int a2)
{
  v2 = a1[70];
  if (a1[75] == 1 && v2 != 0)
  {
    v3 = 82;
  }

  else
  {
    v3 = 71;
  }

  v4 = v2 - (a1[75] == 1 && v2 != 0);
  v5 = a1 + 82;
  v6 = a1[86];
  v7 = v4 > 0;
  if (v6 != 2 || v4 < 1)
  {
    v9 = a1[86];
  }

  else
  {
    do
    {
      v10 = v4;
      v3 += 19;
      v9 = v5[23];
      v5 += 19;
      v11 = v4-- != 0;
      v7 = v4 != 0 && v11;
    }

    while (v9 == 2 && v10 > 1);
  }

  v13 = v9 == 3 && v7;
  v14 = 11;
  if (!v13)
  {
    v14 = 0;
  }

  v15 = &v5[v14];
  if (v13)
  {
    v16 = v3 + 11;
  }

  else
  {
    v16 = v3;
  }

  v17 = v4 - v13;
  v18 = 9;
  if (v15[4] != 4 || v17 <= 0)
  {
    v18 = 0;
  }

  v19 = &v15[v18];
  if (v15[4] == 4 && v17 > 0)
  {
    v20 = v16 + 9;
  }

  else
  {
    v20 = v16;
  }

  v21 = v17 - (v15[4] == 4 && v17 > 0);
  v22 = v19[4];
  v23 = v21 > 0;
  if (v22 == 8 && v21 >= 1)
  {
    do
    {
      v25 = v21;
      v26 = v19[3] + 5;
      v20 += v26;
      v19 += v26;
      v21 = v25 - 1;
      v22 = v19[4];
      v23 = v25 > 1;
    }

    while (v22 == 8 && v25 > 1);
  }

  if (v22 == 9 && v23)
  {
    if (v19[5] <= 0x12u)
    {
      v29 = 6;
    }

    else
    {
      v29 = 22;
    }

    v20 += v29;
    v19 += v29;
    --v21;
  }

  v30 = v19[4];
  v31 = v21 > 0;
  if (v30 == 10 && v21 >= 1)
  {
    do
    {
      v33 = v21;
      if (v19[10] <= 0x12u)
      {
        v34 = 11;
      }

      else
      {
        v34 = 27;
      }

      v20 += v34;
      v19 += v34;
      v21 = v33 - 1;
      v30 = v19[4];
      v31 = v33 > 1;
    }

    while (v30 == 10 && v33 > 1);
  }

  v36 = v30 == 11 && v31;
  v37 = 9;
  if (!v36)
  {
    v37 = 0;
  }

  v38 = &v19[v37];
  if (v36)
  {
    v20 += 9;
  }

  v39 = v21 - v36;
  v40 = v38[4] == 254 && v39 > 0;
  v41 = 7;
  if (v38[4] != 254 || v39 <= 0)
  {
    v41 = 0;
  }

  v42 = &v38[v41];
  if (v38[4] == 254 && v39 > 0)
  {
    LODWORD(v43) = v20 + 7;
  }

  else
  {
    LODWORD(v43) = v20;
  }

  v44 = v39 - v40;
  v45 = v42[4] == 255 && v39 - v40 > 0;
  v46 = 11;
  if (v45)
  {
    v43 = (v43 + 11);
  }

  else
  {
    v46 = 0;
    v43 = v43;
  }

  v47 = v44 - v45;
  v48 = &v42[v46];
  v49 = v42[v46 + 4];
  if (v49 == 253 && v47 >= 1)
  {
    v51 = *(v48 + 1);
    v43 = v43 + (bswap32(v51) >> 16);
    v48 += __rev16(v51);
    --v47;
    v49 = v48[4];
  }

  if (v49 != 5 || v47 < 1)
  {
    v53 = v2;
    if (!a2)
    {
      goto LABEL_87;
    }
  }

  else
  {
    v53 = v2 - 1;
    a1[70] = v2 - 1;
    v48 += 13;
    --v47;
    v2 = (v2 - 1);
  }

  if (v6 == 2 && v53 >= 2u)
  {
    v54 = a1 + 91;
    do
    {
      if (*v54 >= 8u)
      {
        *v54 = 8;
      }

      v55 = v54[14];
      v54 += 19;
    }

    while (v55 == 2 && v2-- > 2);
  }

LABEL_87:
  if (v48[4] == 6 && v47 >= 1)
  {
    a1[70] = v53 - 1;
  }

  return v43;
}

uint64_t PacketizeMetadata(char *a1, unsigned int a2, void **a3, uint64_t a4)
{
  v51 = *MEMORY[0x277D85DE8];
  v45 = *a1;
  modifyDMMetaForIPT(a1);
  if (a2 < 0x25C)
  {
    if (a2 <= 0x77)
    {
      *a4 = 0;
      *(a4 + 1) = v45;
      *(a4 + 2) = 0;
      *(a4 + 4) = a2;
      memcpy((a4 + 5), a1, a2);
      bzero((a4 + 5 + a2), 119 - a2);
      v8 = 0;
      v9 = -1;
      do
      {
        v10 = crc32_lut[*(a4 + v8) ^ HIBYTE(v9)];
        v9 = v10 ^ (v9 << 8);
        ++v8;
      }

      while (v8 != 124);
      *(a4 + 124) = HIBYTE(v9);
      *(a4 + 125) = BYTE2(v9);
      *(a4 + 126) = BYTE1(v9);
      *(a4 + 127) = v10;
      v11 = *a3;
      buf = 0uLL;
      v48 = 0;
      v49 = xmmword_2508D1B30;
      v50 = 1;
      v12 = a4;
      goto LABEL_27;
    }
  }

  else if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v7 = logInstanceID;
    }

    else
    {
      v7 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = WORD1(v7);
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/MetaPacket/DolbyVisionHDMIPacket.mm at line 619\n", &buf, 0xCu);
    }

    prevLogInstanceID = v7;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/MetaPacket/DolbyVisionHDMIPacket.mm at line 619\n", &buf, 2u);
  }

  v13 = 0;
  *a4 = 64;
  *(a4 + 1) = v45;
  *(a4 + 2) = 0;
  *(a4 + 3) = BYTE1(a2);
  *(a4 + 4) = a2;
  v14 = *a1;
  v15 = *(a1 + 1);
  v16 = *(a1 + 2);
  *(a4 + 53) = *(a1 + 3);
  *(a4 + 37) = v16;
  *(a4 + 21) = v15;
  *(a4 + 5) = v14;
  v17 = *(a1 + 4);
  v18 = *(a1 + 5);
  v19 = *(a1 + 6);
  *(a4 + 116) = *(a1 + 111);
  *(a4 + 101) = v19;
  *(a4 + 85) = v18;
  *(a4 + 69) = v17;
  v20 = -1;
  do
  {
    v21 = crc32_lut[*(a4 + v13) ^ HIBYTE(v20)];
    v20 = v21 ^ (v20 << 8);
    ++v13;
  }

  while (v13 != 124);
  *(a4 + 124) = HIBYTE(v20);
  *(a4 + 125) = BYTE2(v20);
  *(a4 + 126) = BYTE1(v20);
  *(a4 + 127) = v21;
  v22 = a1 + 119;
  v23 = *a3;
  buf = 0uLL;
  v48 = 0;
  v49 = xmmword_2508D1B30;
  LODWORD(v24) = 1;
  v50 = 1;
  [v23 replaceRegion:&buf mipmapLevel:0 slice:0 withBytes:a4 bytesPerRow:128 bytesPerImage:0];
  v25 = (a4 + 128);
  if (a2 < 0xF1)
  {
    v30 = 119;
    v29 = a4;
  }

  else
  {
    v26 = 240;
    v24 = 1;
    v27 = a4;
    do
    {
      v28 = 0;
      v29 = v25;
      v30 = v26;
      *(v27 + 128) = 0x80;
      *(v27 + 129) = v45;
      *(v27 + 130) = 0;
      v31 = *v22;
      v32 = *(v22 + 1);
      v33 = *(v22 + 2);
      *(v27 + 179) = *(v22 + 3);
      *(v27 + 163) = v33;
      *(v27 + 147) = v32;
      *(v27 + 131) = v31;
      v34 = *(v22 + 4);
      v35 = *(v22 + 5);
      v36 = *(v22 + 6);
      *(v27 + 236) = *(v22 + 105);
      *(v27 + 227) = v36;
      *(v27 + 211) = v35;
      *(v27 + 195) = v34;
      v37 = -1;
      do
      {
        v38 = crc32_lut[v25[v28] ^ HIBYTE(v37)];
        v37 = v38 ^ (v37 << 8);
        ++v28;
      }

      while (v28 != 124);
      *(v27 + 252) = HIBYTE(v37);
      *(v27 + 253) = BYTE2(v37);
      *(v27 + 254) = BYTE1(v37);
      *(v27 + 255) = v38;
      v39 = a3[v24];
      buf = 0uLL;
      v48 = 0;
      v49 = xmmword_2508D1B30;
      v50 = 1;
      [v39 replaceRegion:&buf mipmapLevel:0 slice:0 withBytes:a4 + (v24++ << 7) bytesPerRow:128 bytesPerImage:0];
      v22 += 121;
      v25 += 128;
      v26 = v30 + 121;
      v27 = v29;
    }

    while (v30 + 121 < a2);
  }

  v29[128] = -64;
  v40 = a2 - v30;
  v29[129] = v45;
  v29[130] = 0;
  memcpy(v29 + 131, v22, v40);
  bzero(&v29[v40 + 131], (121 - v40));
  v41 = 0;
  v42 = -1;
  do
  {
    v43 = crc32_lut[v25[v41] ^ HIBYTE(v42)];
    v42 = v43 ^ (v42 << 8);
    ++v41;
  }

  while (v41 != 124);
  v29[252] = HIBYTE(v42);
  v29[253] = BYTE2(v42);
  v29[254] = BYTE1(v42);
  v29[255] = v43;
  v11 = a3[v24];
  buf = 0uLL;
  v48 = 0;
  v49 = xmmword_2508D1B30;
  v50 = 1;
  v12 = a4 + (v24 << 7);
LABEL_27:
  [v11 replaceRegion:&buf mipmapLevel:0 slice:0 withBytes:v12 bytesPerRow:128 bytesPerImage:0];
  return 0;
}

double modifyDMMetaForIPT(unsigned __int16 *a1)
{
  v1 = __rev16(a1[38]);
  if (bswap32(a1[39]) >> 16 == 65534 || v1 == 65534)
  {
    v3 = *(a1 + 66);
    v4 = *(a1 + 67);
    v5 = *(a1 + 64);
    v6 = *(a1 + 65);
    v7 = (v6 | (v5 << 8)) + (v4 | (v3 << 8));
    *(a1 + 78) = v3;
    *(a1 + 79) = v4;
    *(a1 + 76) = v5;
    *(a1 + 77) = v6;
    *(a1 + 80) = v7 >> 9;
    *(a1 + 81) = v7 >> 1;
  }

  *(a1 + 15) = 16843276;
  *(a1 + 1) = xmmword_2508D1B40;
  a1[9] = 22506;
  *(a1 + 2) = xmmword_2508D1B50;
  *(a1 + 12) = -18110;
  *(a1 + 10) = 0x800000000;
  *&result = 0x800000008;
  *(a1 + 7) = 8;
  *(a1 + 26) = 0;
  return result;
}

uint64_t PacketizeMetadataMSR(char *a1, unsigned int a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  modifyDMMetaForIPT(a1);
  if (a2 < 0x1E3)
  {
    *(a3 + 480) = 0;
    *(a3 + 448) = 0u;
    *(a3 + 464) = 0u;
    *(a3 + 416) = 0u;
    *(a3 + 432) = 0u;
    *(a3 + 384) = 0u;
    *(a3 + 400) = 0u;
    *(a3 + 352) = 0u;
    *(a3 + 368) = 0u;
    *(a3 + 320) = 0u;
    *(a3 + 336) = 0u;
    *(a3 + 288) = 0u;
    *(a3 + 304) = 0u;
    *(a3 + 256) = 0u;
    *(a3 + 272) = 0u;
    *(a3 + 224) = 0u;
    *(a3 + 240) = 0u;
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    if (a2 <= 0x77)
    {
      *(a3 + 1) = v6;
      *(a3 + 4) = a2;
      memcpy((a3 + 5), a1, a2);
      bzero((a3 + 5 + a2), 119 - a2);
      v8 = 0;
      v9 = -1;
      do
      {
        v10 = crc32_lut[*(a3 + v8) ^ HIBYTE(v9)];
        v9 = v10 ^ (v9 << 8);
        ++v8;
      }

      while (v8 != 124);
      *(a3 + 124) = HIBYTE(v9);
      *(a3 + 125) = BYTE2(v9);
      *(a3 + 126) = BYTE1(v9);
      *(a3 + 127) = v10;
      return 1;
    }
  }

  else
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v7 = logInstanceID;
      }

      else
      {
        v7 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v42 = 134217984;
        v43 = WORD1(v7);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/MetaPacket/DolbyVisionHDMIPacket.mm at line 678\n", &v42, 0xCu);
      }

      prevLogInstanceID = v7;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v42) = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/MetaPacket/DolbyVisionHDMIPacket.mm at line 678\n", &v42, 2u);
    }

    *(a3 + 5) = 0u;
    *(a3 + 437) = 0u;
    *(a3 + 453) = 0u;
    *(a3 + 405) = 0u;
    *(a3 + 421) = 0u;
    *(a3 + 373) = 0u;
    *(a3 + 389) = 0u;
    *(a3 + 341) = 0u;
    *(a3 + 357) = 0u;
    *(a3 + 309) = 0u;
    *(a3 + 325) = 0u;
    *(a3 + 277) = 0u;
    *(a3 + 293) = 0u;
    *(a3 + 245) = 0u;
    *(a3 + 261) = 0u;
    *(a3 + 213) = 0u;
    *(a3 + 229) = 0u;
    *(a3 + 181) = 0u;
    *(a3 + 197) = 0u;
    *(a3 + 149) = 0u;
    *(a3 + 165) = 0u;
    *(a3 + 117) = 0u;
    *(a3 + 133) = 0u;
    *(a3 + 85) = 0u;
    *(a3 + 101) = 0u;
    *(a3 + 53) = 0u;
    *(a3 + 69) = 0u;
    *(a3 + 21) = 0u;
    *(a3 + 37) = 0u;
    *(a3 + 466) = 0u;
  }

  v12 = 0;
  *a3 = 64;
  *(a3 + 1) = v6;
  *(a3 + 2) = 0;
  *(a3 + 3) = BYTE1(a2);
  *(a3 + 4) = a2;
  v13 = *a1;
  v14 = *(a1 + 1);
  v15 = *(a1 + 2);
  *(a3 + 53) = *(a1 + 3);
  *(a3 + 37) = v15;
  *(a3 + 21) = v14;
  *(a3 + 5) = v13;
  v16 = *(a1 + 4);
  v17 = *(a1 + 5);
  v18 = *(a1 + 6);
  *(a3 + 116) = *(a1 + 111);
  *(a3 + 101) = v18;
  *(a3 + 85) = v17;
  *(a3 + 69) = v16;
  v19 = -1;
  do
  {
    v20 = crc32_lut[*(a3 + v12) ^ HIBYTE(v19)];
    v19 = v20 ^ (v19 << 8);
    ++v12;
  }

  while (v12 != 124);
  *(a3 + 124) = HIBYTE(v19);
  *(a3 + 125) = BYTE2(v19);
  *(a3 + 126) = BYTE1(v19);
  *(a3 + 127) = v20;
  v21 = a1 + 119;
  v22 = a3 + 128;
  if (a2 < 0xF1)
  {
    v11 = 2;
    v28 = 119;
  }

  else
  {
    v23 = 1;
    v24 = 240;
    do
    {
      v25 = 0;
      v26 = v23;
      v27 = v22;
      v28 = v24;
      *(a3 + 128) = 0x80;
      *(a3 + 129) = v6;
      *(a3 + 130) = 0;
      v29 = *v21;
      v30 = *(v21 + 1);
      v31 = *(v21 + 2);
      *(a3 + 179) = *(v21 + 3);
      *(a3 + 163) = v31;
      *(a3 + 147) = v30;
      *(a3 + 131) = v29;
      v32 = *(v21 + 4);
      v33 = *(v21 + 5);
      v34 = *(v21 + 6);
      *(a3 + 236) = *(v21 + 105);
      *(a3 + 227) = v34;
      *(a3 + 211) = v33;
      *(a3 + 195) = v32;
      v35 = -1;
      do
      {
        v36 = crc32_lut[*(v22 + v25) ^ HIBYTE(v35)];
        v35 = v36 ^ (v35 << 8);
        ++v25;
      }

      while (v25 != 124);
      *(a3 + 252) = HIBYTE(v35);
      *(a3 + 253) = BYTE2(v35);
      *(a3 + 254) = BYTE1(v35);
      *(a3 + 255) = v36;
      v23 = v26 + 1;
      v21 += 121;
      v22 += 128;
      v24 = v28 + 121;
      a3 = v27;
    }

    while (v28 + 121 < a2);
    v11 = (v26 + 2);
    a3 = v27;
  }

  *(a3 + 128) = -64;
  v37 = a2 - v28;
  *(a3 + 129) = v6;
  *(a3 + 130) = 0;
  memcpy((a3 + 131), v21, v37);
  bzero((a3 + 131 + v37), (121 - v37));
  v38 = 0;
  v39 = -1;
  do
  {
    v40 = crc32_lut[*(v22 + v38) ^ HIBYTE(v39)];
    v39 = v40 ^ (v39 << 8);
    ++v38;
  }

  while (v38 != 124);
  *(a3 + 252) = HIBYTE(v39);
  *(a3 + 253) = BYTE2(v39);
  *(a3 + 254) = BYTE1(v39);
  *(a3 + 255) = v40;
  return v11;
}

uint64_t Matrix3x3_invert(uint64_t result, __int128 *a2)
{
  v2 = 0;
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2[1];
  v19 = *a2;
  v20 = v3;
  v21 = *(a2 + 8);
  v4 = 0.0;
  v5 = -1;
  do
  {
    v6 = *(&v19 + v2);
    if (v2 == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = v2 + 1;
    }

    v8 = v2 == 0;
    v9 = v2 + 1;
    v10 = v5;
    if (v8)
    {
      v10 = 2;
    }

    v4 = v4 + (v6 * ((*((&v19 | 0xC) + 4 * v7) * *(&v20 + v10 + 2)) - (*((&v19 | 0xC) + 4 * v10) * *(&v20 + v7 + 2))));
    ++v5;
    v2 = v9;
  }

  while (v9 != 3);
  v11 = 0;
  do
  {
    v12 = 0;
    v13 = v11++;
    if (v11 == 3)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13 + 1;
    }

    v15 = (v13 + 2) % 3u;
    do
    {
      if (v12 == 2)
      {
        v16 = 0;
      }

      else
      {
        v16 = v12 + 1;
      }

      v17 = &v19 + 12 * v16;
      v18 = v12 - 1;
      if (!v12)
      {
        v18 = 2;
      }

      *(result + 4 * v12++) = ((*&v17[4 * v14] * *(&v19 + 3 * v18 + v15)) - (*&v17[4 * v15] * *(&v19 + 3 * v18 + v14))) / v4;
    }

    while (v12 != 3);
    result += 12;
  }

  while (v11 != 3);
  return result;
}

uint64_t Matrix3x3_scale(uint64_t result, float a2)
{
  if (result)
  {
    for (i = 0; i != 36; i += 4)
    {
      *(result + i) = *(result + i) * a2;
    }
  }

  return result;
}

uint64_t Vector3_scale(uint64_t result, float a2)
{
  if (result)
  {
    for (i = 0; i != 12; i += 4)
    {
      *(result + i) = *(result + i) * a2;
    }
  }

  return result;
}

uint64_t Matrix3x3_init(uint64_t result, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  if (result)
  {
    *result = a2;
    *(result + 4) = a3;
    *(result + 8) = a4;
    *(result + 12) = a5;
    *(result + 16) = a6;
    *(result + 20) = a7;
    *(result + 24) = a8;
    *(result + 28) = a9;
    *(result + 32) = a17;
  }

  return result;
}

__n128 Matrix3x3_copy(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      result = *a2;
      v3 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *a1 = result;
      *(a1 + 16) = v3;
    }
  }

  return result;
}

__n128 Matrix3x3_copyDbl(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      result = *a2;
      v3 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *a1 = result;
      *(a1 + 16) = v3;
    }
  }

  return result;
}

__n128 Matrix3x3_copyInt(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      result = *a2;
      v3 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *a1 = result;
      *(a1 + 16) = v3;
    }
  }

  return result;
}

float Matrix3x3_multvector(uint64_t a1, uint64_t a2, float *a3)
{
  if (a1 && a2 && a3)
  {
    v3 = 0;
    v4 = (a2 + 8);
    do
    {
      v5 = (*(v4 - 1) * a3[1]) + (*(v4 - 2) * *a3);
      v6 = *v4;
      v4 += 3;
      result = v5 + (v6 * a3[2]);
      *(a1 + v3) = result;
      v3 += 4;
    }

    while (v3 != 12);
  }

  return result;
}

float Matrix3x3_multvectorDbl(uint64_t a1, uint64_t a2, float *a3)
{
  if (a1 && a2 && a3)
  {
    v3 = 0;
    v4 = (a2 + 8);
    do
    {
      v5 = (*(v4 - 1) * a3[1]) + (*(v4 - 2) * *a3);
      v6 = *v4;
      v4 += 3;
      result = v5 + (v6 * a3[2]);
      *(a1 + v3) = result;
      v3 += 4;
    }

    while (v3 != 12);
  }

  return result;
}

uint64_t Matrix3x3_multmatrix(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *result;
    v3 = *(result + 16);
    dword_280C711DC = *(result + 32);
    Matrix3x3_multmatrix_temp = v2;
    unk_280C711CC = v3;
    if (a2)
    {
      for (i = 0; i != 3; ++i)
      {
        v5 = (a2 + 12);
        v6 = result;
        v7 = 3;
        do
        {
          *v6++ = ((*(&Matrix3x3_multmatrix_temp + 3 * i + 1) * *v5) + (*(&Matrix3x3_multmatrix_temp + 3 * i) * *(v5 - 3))) + (*(&Matrix3x3_multmatrix_temp + 3 * i + 2) * v5[3]);
          ++v5;
          --v7;
        }

        while (v7);
        result += 12;
      }
    }
  }

  return result;
}

uint64_t Matrix3x3_multmatrixWithScale(uint64_t result, uint64_t a2, int a3)
{
  if (result)
  {
    v3 = *result;
    v4 = *(result + 16);
    dword_280C711B8 = *(result + 32);
    Matrix3x3_multmatrixWithScale_temp = v3;
    unk_280C711A8 = v4;
    if (a2)
    {
      for (i = 0; i != 3; ++i)
      {
        v6 = (a2 + 12);
        v7 = result;
        v8 = 3;
        do
        {
          *v7++ = (((*(&Matrix3x3_multmatrixWithScale_temp + 3 * i + 1) * *v6) + (*(&Matrix3x3_multmatrixWithScale_temp + 3 * i) * *(v6 - 3))) + (*(&Matrix3x3_multmatrixWithScale_temp + 3 * i + 2) * v6[3])) / a3;
          ++v6;
          --v8;
        }

        while (v8);
        result += 12;
      }
    }
  }

  return result;
}

int *Matrix3x3_isCrossTalk(int *result)
{
  if (result)
  {
    v1 = *result;
    if (*result == result[4] && v1 == result[8] && (v2 = result[1], v2 == result[2]) && v2 == result[3] && v2 == result[5] && v2 == result[6])
    {
      v3 = v1 + 2 * v2;
      if (v2 == result[7])
      {
        return v3;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t createRGB2RGB3x3Matrix(uint64_t a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9, float a10, float a11, float a12, float a13, float a14, float a15, float a16, float a17)
{
  v34 = *MEMORY[0x277D85DE8];
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  createRGB2XYZ3x3Matrix(v32, a2, a3, a4, a5, a6, a7, a8, a9);
  createRGB2XYZ3x3Matrix(v30, a10, a11, a12, a13, a14, a15, a16, a17);
  Matrix3x3_invert(&v27, v32);
  result = Matrix3x3_multmatrix(&v27, v30);
  if (a1)
  {
    v26 = v28;
    *a1 = v27;
    *(a1 + 16) = v26;
    *(a1 + 32) = v29;
  }

  return result;
}

uint64_t createRGB2XYZ3x3Matrix(uint64_t result, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9)
{
  v26 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v19 = 0;
  v18 = 0;
  if (result)
  {
    v9 = result;
    *&v23 = __PAIR64__(LODWORD(a4), LODWORD(a2));
    *(&v23 + 1) = __PAIR64__(LODWORD(a3), LODWORD(a6));
    *&v24 = __PAIR64__(LODWORD(a7), LODWORD(a5));
    *(&v24 + 2) = (1.0 - a2) - a3;
    *(&v24 + 3) = (1.0 - a4) - a5;
    v25 = (1.0 - a6) - a7;
    v10 = a8 / a9;
    v11 = a9 / a9;
    v12 = ((1.0 - a8) - a9) / a9;
    Matrix3x3_invert(&v20, &v23);
    v13 = 0;
    v14 = &v20 + 2;
    do
    {
      v15 = (v11 * *(v14 - 1)) + (*(v14 - 2) * v10);
      v16 = *v14;
      v14 += 3;
      *(&v18 + v13) = v15 + (v16 * v12);
      v13 += 4;
    }

    while (v13 != 12);
    LODWORD(v20) = v18;
    *(&v20 + 4) = 0;
    HIDWORD(v20) = 0;
    LODWORD(v21) = HIDWORD(v18);
    *(&v21 + 4) = 0;
    HIDWORD(v21) = 0;
    v22 = v19;
    result = Matrix3x3_multmatrix(&v23, &v20);
    v17 = v24;
    *v9 = v23;
    *(v9 + 16) = v17;
    *(v9 + 32) = v25;
  }

  return result;
}

uint64_t createRGB2LMS3x3Matrix(uint64_t a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9)
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  if (a1)
  {
    *(a1 + 32) = 1063980840;
    *a1 = xmmword_2508D1B68;
    *(a1 + 16) = unk_2508D1B78;
  }

  createRGB2XYZ3x3Matrix(v11, a2, a3, a4, a5, a6, a7, a8, a9);
  return Matrix3x3_multmatrix(a1, v11);
}

float32_t Vector3x3_multmatrix(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t _Q0, float32x4_t _Q1, float32x4_t _Q2, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  _S16 = a9.i32[2];
  __asm { FMLA            S6, S16, V0.S[2] }

  v15 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a8, *_Q0.f32, 1), a7, _Q0.f32[0]), a9, _Q0, 2);
  v15.i32[2] = _S6;
  __asm { FMLA            S0, S16, V1.S[2] }

  v17 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a8, *_Q1.f32, 1), a7, _Q1.f32[0]), a9, _Q1, 2);
  v17.i32[2] = _S0;
  __asm { FMLA            S0, S16, V2.S[2] }

  v19 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a8, *_Q2.f32, 1), a7, _Q2.f32[0]), a9, _Q2, 2);
  v19.f32[2] = result;
  *a3 = v19;
  *a2 = v17;
  *a1 = v15;
  return result;
}

void hdrpConstructL4(uint64_t a1, uint64_t a2, _WORD *a3, __n128 a4, __n128 a5)
{
  *(a1 + 9168) = 2;
  if (*(a2 + 896))
  {
    *(a1 + 9168) = *(a2 + 899) + 2;
    v6 = 16;
    v7 = 16;
  }

  else
  {
    v7 = 4;
    v6 = 8;
  }

  *(a1 + 1024) = v7;
  *(a1 + 1120) = v6;
  a4.n128_u16[0] = *(a2 + 302);
  a4.n128_f64[0] = a4.n128_u64[0] / 4095.0;
  v12 = a4.n128_f64[0];
  a4.n128_u16[0] = *(a2 + 304);
  a4.n128_f64[0] = a4.n128_u64[0] / 4095.0;
  a5.n128_f64[0] = *(a1 + 1360) / *(a1 + 8016);
  v8 = a4.n128_f64[0] * 1.41;
  a4.n128_f64[0] = a4.n128_f64[0] * a5.n128_f64[0];
  v9 = a4.n128_f64[0] + v8 * (1.0 - a5.n128_f64[0]);
  hdrpMrToneCurve(0, &v12, 1, 0, &v12, 0, 0, a1, a4, a5);
  v10 = v9 * 4095.0 + 0.5;
  if (v9 < 0.0)
  {
    v10 = v9 * 4095.0 + -0.5;
  }

  a3[2] = v10;
  v11 = v12 * 4095.0 + 0.5;
  if (v12 < 0.0)
  {
    v11 = v12 * 4095.0 + -0.5;
  }

  a3[1] = v11;
  *a3 = 1;
}

uint64_t hdrpMetadataReconstruction(unsigned int *__src, int *a2, uint64_t a3, uint64_t a4)
{
  v273 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a4 + 1370;
  *(a4 + 1132) = 1;
  *(a4 + 640) = 0x100000001;
  memcpy((a4 + 648), __src, 0x1E0uLL);
  *(a4 + 1128) = 1;
  memcpy((a4 + 1136), a2, 0xBE0uLL);
  if (!a2)
  {
    *(a4 + 9160) = __src[70];
LABEL_9:
    *(a4 + 9164) = __src[69];
    v11 = __src[68];
    goto LABEL_11;
  }

  v8 = *a2;
  if (*a2 < 0)
  {
    v9 = *(a2 + 317);
  }

  else
  {
    v9 = __src[70];
  }

  *(a4 + 9160) = v9;
  if ((v8 & 0x40000000) == 0)
  {
    goto LABEL_9;
  }

  *(a4 + 9164) = *(a2 + 315);
  v11 = *(a2 + 316) + 2;
LABEL_11:
  *(a4 + 9168) = v11;
  *(a4 + 4192) |= 1u;
  *(v7 + 2826) = 0;
  if (__src[10])
  {
    v12 = *(__src + 4);
    v13 = *(__src + 5);
    v14 = *(__src + 6);
    *(a4 + 4360) = *(__src + 14);
    v15 = *(__src + 3);
    *(a4 + 4328) = v13;
    *(a4 + 4344) = v14;
    *(a4 + 4296) = v15;
    *(a4 + 4312) = v12;
  }

  else if (__src[77])
  {
    GetRgb2XyzM33ByPrimsMR81(v263, *(__src + 39), *(__src + 40), *(__src + 41), *(__src + 42), *(__src + 43), *(__src + 44), *(__src + 45), *(__src + 46));
    v16 = 0;
    v17 = &unk_2508D1CD0;
    do
    {
      v18 = 0;
      v19 = v263;
      do
      {
        v20 = 0;
        v21 = 0.0;
        v22 = v19;
        do
        {
          v23 = *v22;
          v22 += 3;
          v21 = v21 + *&v17[v20] * v23;
          v20 += 8;
        }

        while (v20 != 24);
        *(a4 + 4296 + 24 * v16 + 8 * v18++) = v21;
        v19 = (v19 + 8);
      }

      while (v18 != 3);
      ++v16;
      v17 += 24;
    }

    while (v16 != 3);
  }

  else
  {
    GetRgb2XyzM33(__src[76], v263);
    v24 = 0;
    v25 = &unk_2508D1CD0;
    do
    {
      v26 = 0;
      v27 = v263;
      do
      {
        v28 = 0;
        v29 = 0.0;
        v30 = v27;
        do
        {
          v31 = *v30;
          v30 += 3;
          v29 = v29 + *&v25[v28] * v31;
          v28 += 8;
        }

        while (v28 != 24);
        *(a4 + 4296 + 24 * v24 + 8 * v26++) = v29;
        v27 = (v27 + 8);
      }

      while (v26 != 3);
      ++v24;
      v25 += 24;
    }

    while (v24 != 3);
  }

  if (__src[1])
  {
    *(a4 + 4200) = 0x3FF0000000000000;
    *(a4 + 4208) = 0;
    *(a4 + 4224) = 0;
    *(a4 + 4216) = 0;
    *(a4 + 4232) = 0x3FF0000000000000;
    *(a4 + 4240) = 0;
    *(a4 + 4256) = 0;
    *(a4 + 4248) = 0;
    *(a4 + 4264) = 0x3FF0000000000000;
    *(a4 + 4272) = 0;
    *(a4 + 4288) = 0;
    *(a4 + 4280) = 0;
    goto LABEL_60;
  }

  if (__src[32])
  {
    v32 = 0;
    v33 = __src + 34;
    v34 = 0.0;
    v35 = -1;
    do
    {
      v36 = *&v33[2 * v32];
      if (v32 == 2)
      {
        v37 = 0;
      }

      else
      {
        v37 = v32 + 1;
      }

      v226 = v32 == 0;
      v38 = v32 + 1;
      v39 = v35;
      if (v226)
      {
        v39 = 2;
      }

      v34 = v34 + v36 * (*&__src[2 * v37 + 40] * *&__src[2 * v39 + 46] - *&__src[2 * v39 + 40] * *&__src[2 * v37 + 46]);
      ++v35;
      v32 = v38;
    }

    while (v38 != 3);
    if (v34 != 0.0)
    {
      v40 = 0;
      v41 = (a4 + 4200);
      do
      {
        v42 = 0;
        v43 = v40++;
        if (v40 == 3)
        {
          v44 = 0;
        }

        else
        {
          v44 = v43 + 1;
        }

        v45 = (v43 + 2) % 3u;
        v46 = &v33[6 * v44];
        v47 = &v33[6 * v45];
        v48 = -1;
        v49 = v41;
        do
        {
          if (v42 == 2)
          {
            v50 = 0;
          }

          else
          {
            v50 = v42 + 1;
          }

          v226 = v42 == 0;
          v51 = v42 + 1;
          v52 = v48;
          if (v226)
          {
            v52 = 2;
          }

          *v49 = (*&v46[2 * v50] * *&v47[2 * v52] - *&v46[2 * v52] * *&v47[2 * v50]) / v34;
          v49 += 3;
          ++v48;
          v42 = v51;
        }

        while (v51 != 3);
        ++v41;
      }

      while (v40 != 3);
    }
  }

  else
  {
    v53 = __src[31];
    if (__src[30])
    {
      GetYuv2RgbM33(v53, a4 + 4200);
    }

    else
    {
      v54 = __src[4];
      GetYuv2RgbM33(v53, v263);
      v55 = vshl_u32(0xE0000000DBLL, vdup_n_s32(v54 - 8));
      v56.i64[0] = v55.i32[0];
      v56.i64[1] = v55.i32[1];
      v57 = vdivq_f64(vdupq_lane_s64(COERCE__INT64(~(-1 << v54)), 0), vcvtq_f64_s64(v56));
      v58 = -72;
      do
      {
        v59 = (a4 + v58);
        v59[267] = vmulq_f64(v57, *(&v263[4] + v58 + 8));
        v59[268].f64[0] = v57.f64[1] * *(&v263[5] + v58 + 8);
        v58 += 24;
      }

      while (v58);
    }
  }

  if (__src[60])
  {
    v60 = (1 << __src[4]);
    *(a4 + 4272) = *(__src + 31) * v60;
    *(a4 + 4280) = *(__src + 32) * v60;
    v61 = *(__src + 33) * v60;
LABEL_59:
    *(a4 + 4288) = v61;
    goto LABEL_60;
  }

  if (__src[52])
  {
    *(a4 + 4272) = *(__src + 27);
    *(a4 + 4280) = *(__src + 28);
    v61 = *(__src + 29);
    goto LABEL_59;
  }

  v228 = __src[4];
  if (__src[30])
  {
    v229 = 0;
  }

  else
  {
    v229 = 1 << (v228 - 4);
  }

  *(a4 + 4272) = v229;
  v230 = (1 << (v228 - 1));
  *(a4 + 4288) = v230;
  *(a4 + 4280) = v230;
LABEL_60:
  v62 = __src[6];
  if (v62 == 1)
  {
    v63 = 0x40EFFFE000000000;
    goto LABEL_64;
  }

  if (v62 == 3)
  {
    v63 = 0x40EFFFC000000000;
LABEL_64:
    *(a4 + 4368) = v63;
    *(a4 + 4376) = 0;
    *(a4 + 4392) = 0;
    *(a4 + 4384) = 0;
    goto LABEL_71;
  }

  v64 = *(__src + 4);
  v65 = v64 * 16384.0 + -0.5;
  if (v64 >= 0.0)
  {
    v65 = v64 * 16384.0 + 0.5;
  }

  *(a4 + 4368) = v65;
  if (v62)
  {
    v66 = *(__src + 36);
    v67 = *(__src + 37) - v66;
  }

  else
  {
    v68 = *(__src + 37);
    v69 = pow(*(__src + 36), 1.0 / v64);
    v70 = pow(v68, 1.0 / v64) - v69;
    v67 = pow(v70, v64);
    v66 = v69 / v70;
  }

  *(a4 + 4376) = v67;
  *(a4 + 4384) = v66;
  *(a4 + 4392) = exp2(*(__src + 4));
LABEL_71:
  *(v7 + 3030) = __src[4];
  v71 = __src[1];
  if (v71)
  {
    if (v71 != 3)
    {
      v223 = __src[2];
      LOBYTE(v73) = 1;
      if (v223 == 1)
      {
        v224 = 1;
      }

      else
      {
        v224 = 2;
      }

      if (v223)
      {
        v225 = v224;
      }

      else
      {
        v225 = 0;
      }

      *(v7 + 3032) = v225;
      v226 = v71 == 4;
      if (v71 == 4)
      {
        v227 = 2;
      }

      else
      {
        v227 = 1;
      }

      *(v7 + 3031) = v227;
      if (!v226)
      {
        v73 = __src[5];
        if (v73)
        {
          if (v73 == 1)
          {
            LOBYTE(v73) = 1;
          }

          else
          {
            LOBYTE(v73) = 2;
          }
        }
      }

      goto LABEL_82;
    }

    *(v7 + 3031) = 2;
  }

  else
  {
    *(v7 + 3031) = 0;
  }

  v72 = __src[2];
  LOBYTE(v73) = 1;
  if (v72 == 1)
  {
    v74 = 1;
  }

  else
  {
    v74 = 2;
  }

  if (v72)
  {
    v75 = v74;
  }

  else
  {
    v75 = 0;
  }

  *(v7 + 3032) = v75;
LABEL_82:
  *(v7 + 3033) = v73;
  v76 = *(__src + 37);
  if (v76 < 0.0)
  {
    v76 = 0.0;
  }

  v77 = pow(v76 / 10000.0, 0.159301758);
  v246 = pow((v77 * 18.8515625 + 0.8359375) / (v77 * 18.6875 + 1.0), 78.84375);
  *(a4 + 4416) = v246;
  v78 = *(__src + 36);
  if (v78 < 0.0)
  {
    v78 = 0.0;
  }

  v79 = pow(v78 / 10000.0, 0.159301758);
  v80 = pow((v79 * 18.8515625 + 0.8359375) / (v79 * 18.6875 + 1.0), 78.84375);
  *(a4 + 4408) = v80;
  *(a4 + 4424) = 42;
  *(v7 + 3064) = -1;
  v81 = *(__src + 78);
  v82 = *(__src + 82);
  v83 = *(__src + 90);
  *(a4 + 4472) = *(__src + 86);
  *(a4 + 4488) = v83;
  *(a4 + 4440) = v81;
  *(a4 + 4456) = v82;
  *(v7 + 2826) = *(a2 + 2);
  *(a4 + 4424) = *(a2 + 116);
  *(a4 + 4192) = 0;
  *(a4 + 7225) = 0;
  *(a4 + 4184) = 71;
  *(a4 + 8008) = v80;
  *(a4 + 8016) = v246;
  v84 = *(a4 + 648);
  if (v84 >= 1)
  {
    v85 = (a4 + 8032);
    v86 = (a4 + 1040);
    v87 = *(a4 + 648);
    do
    {
      v88 = *(v86 - 1);
      if (v88 < 0.0)
      {
        v88 = 0.0;
      }

      v89 = pow(v88 / 10000.0, 0.159301758);
      *(v85 - 1) = pow((v89 * 18.8515625 + 0.8359375) / (v89 * 18.6875 + 1.0), 78.84375);
      v90 = *v86;
      v86 += 12;
      v91 = v90;
      if (v90 < 0.0)
      {
        v91 = 0.0;
      }

      v92 = pow(v91 / 10000.0, 0.159301758);
      *v85 = pow((v92 * 18.8515625 + 0.8359375) / (v92 * 18.6875 + 1.0), 78.84375);
      v85 += 2;
      --v87;
    }

    while (v87);
  }

  *(a4 + 8096) = 0x3FD5555555555555;
  *(a4 + 8680) = a4;
  *(a4 + 8368) = a4 + 112;
  *(a4 + 8672) = 0;
  *(a4 + 8360) = 0;
  v93 = *(a4 + 1136);
  if ((v93 & 0x20) != 0)
  {
    v96 = 84;
    *(a4 + 4184) = 84;
    *(v7 + 3056) = *v7;
    v95 = 1;
    *(a4 + 7225) = 1;
    v94 = 32;
    *(a4 + 4192) = 32;
  }

  else
  {
    v94 = 0;
    v95 = 0;
    v96 = 71;
  }

  if ((v93 & 0x200) != 0)
  {
    v98 = *(a4 + 1378);
    v99 = &V8PrimaryTblMR81[4 * v98];
    if (v98 >= 0x13)
    {
      v99 = (a4 + 1384);
    }

    v97 = v99[3];
    v101 = *v99;
    v100 = v99[1];
    *(a4 + 7976) = v99[2];
    *(a4 + 7992) = v97;
    *(a4 + 7944) = v101;
    *(a4 + 7960) = v100;
  }

  else
  {
    *(a4 + 7944) = V8PrimaryTblMR81[0];
    *(a4 + 7960) = unk_2508D1008;
    v97.n128_u64[1] = unk_2508D1030;
    *(a4 + 7976) = xmmword_2508D1018;
    *(a4 + 7992) = unk_2508D1028;
    LODWORD(v98) = 255;
  }

  *(a4 + 7936) = v98;
  v102 = *(a4 + 7944) - *(a4 + 7992);
  v103 = *(a4 + 7952) - *(a4 + 8000);
  v104 = v103 * v103 + v102 * v102;
  v105 = *(a4 + 4440) - *(a4 + 4488);
  v106 = 22;
  if (v104 < (*(a4 + 4448) - *(a4 + 4496)) * (*(a4 + 4448) - *(a4 + 4496)) + v105 * v105)
  {
    *(v7 + 3064) = v98;
    v107 = *(a4 + 7960);
    *(a4 + 4440) = *(a4 + 7944);
    *(a4 + 4456) = v107;
    v97 = *(a4 + 7992);
    *(a4 + 4472) = *(a4 + 7976);
    *(a4 + 4488) = v97;
    if (v98 <= 0x12)
    {
      v106 = 6;
    }

    else
    {
      v106 = 22;
    }
  }

  v108 = v106 + v96;
  *(a4 + 4184) = v108;
  v109 = v95 + 1;
  *(a4 + 7225) = v95 + 1;
  v110 = v94 | 0x200;
  *(a4 + 4192) = v94 | 0x200;
  if ((v93 & 0x800) != 0)
  {
    v108 += 9;
    *(a4 + 4184) = v108;
    *(v7 + 3134) = *(a4 + 1448);
    *(v7 + 3135) = *(a4 + 1449);
    v109 = v95 | 2;
    *(a4 + 7225) = v95 | 2;
    v110 = v94 | 0xA00;
    *(a4 + 4192) = v94 | 0xA00;
  }

  if ((v93 & 0x40000000) != 0)
  {
    v108 += 7;
    *(a4 + 4184) = v108;
    *(v7 + 3137) = *(a4 + 1451);
    *(a4 + 7225) = ++v109;
    v110 |= 0x40000000u;
    *(a4 + 4192) = v110;
  }

  if (v93 < 0)
  {
    *(a4 + 4184) = v108 + 11;
    *(v7 + 3139) = *(v7 + 83);
    *(v7 + 3143) = *(a4 + 1457);
    *(a4 + 7225) = v109 + 1;
    *(a4 + 4192) = v110 | 0x80000000;
  }

  v112.n128_u64[1] = 0;
  memset(v263, 0, sizeof(v263));
  v262 = 0;
  memset(v261, 0, sizeof(v261));
  v256 = 0;
  v254 = 0u;
  memset(v255, 0, sizeof(v255));
  v253 = 0u;
  v252 = 0;
  memset(v251, 0, sizeof(v251));
  v250 = 0.0;
  v249 = 0u;
  memset(v248, 0, sizeof(v248));
  v111 = *(a4 + 1464);
  v112.n128_u64[0] = *(a4 + 1480);
  v257 = v111;
  v258 = v112.n128_u64[0];
  v113 = *(a4 + 1472);
  v259 = v113;
  if ((v93 & 8) != 0)
  {
    v112.n128_f64[0] = v112.n128_f64[0] + *(a4 + 1504);
    v257 = v111 + *(a4 + 1488);
    v258 = v112.n128_u64[0];
    v259 = v113 + *(a4 + 1496);
  }

  v97.n128_u64[0] = 0x3F30000000000000;
  v112.n128_f64[0] = v112.n128_f64[0] + 0.000244140625;
  v260 = v112.n128_u64[0];
  *(a4 + 8344) = 0xBFF0000000000000;
  v114 = -1.0;
  if ((v93 & 0x10) != 0)
  {
    v114 = *(a4 + 4152);
    v97.n128_u64[0] = *(a4 + 4160);
    v112.n128_f64[0] = *(a4 + 1360) / v246 * v97.n128_f64[0] + v97.n128_f64[0] * 1.41 * (1.0 - *(a4 + 1360) / v246);
    *(a4 + 8352) = v112.n128_u64[0];
  }

  if (v84 < 1)
  {
    LODWORD(v118) = v84;
  }

  else
  {
    v115 = 0;
    v116 = v261;
    v117 = v263;
    do
    {
      v112.n128_f64[0] = hdrpMrToneCurve(0, &v257, 4, ++v115, v117, v116, 0, a4, v112, v97);
      v118 = *(a4 + 648);
      v116 += 3;
      v117 += 7;
    }

    while (v115 < v118);
  }

  v119 = 3 * v118;
  v120 = v119 + 4;
  if (v114 >= 0.0)
  {
    *(&v257 + v120) = v114;
    hdrpMrToneCurve(0, &v257, (v119 + 5), 0, &v253, 0, 0, a4, v112, v97);
    v122 = *(v255 + 3 * *(a4 + 648));
    *(a4 + 8344) = v122;
  }

  else
  {
    hdrpMrToneCurve(0, &v257, v120, 0, &v253, 0, 0, a4, v112, v97);
    v122 = *(a4 + 8344);
  }

  v123 = v253;
  v124 = v254;
  v125 = *(a4 + 4184);
  v126 = 1.0;
  if (*&v253 <= 1.0)
  {
    v127 = *&v253;
  }

  else
  {
    v127 = 1.0;
  }

  if (*&v253 < 0.0)
  {
    v127 = 0.0;
  }

  if (*(&v253 + 1) <= 1.0)
  {
    v128 = *(&v253 + 1);
  }

  else
  {
    v128 = 1.0;
  }

  if (*(&v253 + 1) < 0.0)
  {
    v128 = 0.0;
  }

  if (*&v254 <= 1.0)
  {
    v126 = *&v254;
  }

  if (*&v254 < 0.0)
  {
    v126 = 0.0;
  }

  v129 = fmin(v127, 0.002930403);
  *(a4 + 4520) = v129;
  v130 = fmax(v128, 0.2);
  v131 = fmax(v126, 0.508078422);
  *(a4 + 4528) = v131;
  if (v130 > v131 + -0.000244200244)
  {
    v130 = v131 + -0.000244200244;
  }

  *(a4 + 4536) = v130;
  v132 = *(a4 + 7225);
  v133 = *(a4 + 4192);
  result = (v125 + 22);
  *(a4 + 4184) = result;
  *(a4 + 4544) = v127 - v129;
  *(a4 + 4560) = v128 - v130;
  *(a4 + 4552) = v126 - v131;
  *(a4 + 7225) = v132 + 2;
  v134 = v133 | 0xA;
  *(a4 + 4192) = v133 | 0xA;
  if (v122 >= 0.0)
  {
    result = (v125 + 31);
    *(a4 + 4184) = result;
    *(a4 + 7208) = v122;
    *(a4 + 7216) = *(a4 + 8352);
    *(a4 + 7224) = 1;
    *(a4 + 7225) = v132 + 3;
    v134 = v133 | 0x1A;
    *(a4 + 4192) = v133 | 0x1A;
  }

  *(&v251[1] + 8) = v123;
  v121.n128_u64[0] = *(&v254 + 1);
  *(&v251[2] + 1) = v124;
  v252 = *(&v254 + 1);
  if (*(a4 + 648) >= 1)
  {
    v247 = v255;
    v243 = (a4 + 9152);
    v242 = a4 + 9176;
    v234 = (a4 + 8804);
    v233 = a4 + 9196;
    v232 = (a4 + 4576);
    v231 = a4 + 5176;
    v135 = v263;
    v136 = 1;
    while (1)
    {
      v251[0] = *v247;
      v137.n128_u64[1] = *(&v251[0] + 1);
      *&v251[1] = *(v247 + 2);
      v137.n128_u64[0] = *&v251[1];
      hdrpMrToneCurve(1, v251, 7, v136, v248, 0, 0, a4, v137, v121);
      v138 = *(a4 + 9168);
      v244 = a4 + 936 + 96 * v136;
      v139 = *(v244 + 88);
      v140 = (v139 >> 4) & 1;
      if (v138 <= 3)
      {
        v140 = 0;
      }

      v141 = (a4 + 8008 + 16 * v136);
      v142 = *v141;
      v143 = v141[1];
      v245 = v141;
      v144 = v143 - *v141;
      if ((v139 & 0xC) != 0)
      {
        v145 = v140;
      }

      else
      {
        v145 = 1;
      }

      if (v145 == 1)
      {
        v146 = 0;
        v147 = 1.0 / v144;
        do
        {
          *(v135 + v146) = v147 * (*(v135 + v146) - v142);
          *(v248 + v146) = v147 * (*(v248 + v146) - v142);
          v146 += 8;
        }

        while (v146 != 56);
      }

      v247 = (v247 + 24);
      v148 = &v263[-3] + 7 * v136 - 1;
      v149 = *v248;
      for (i = 8; i != 56; i += 8)
      {
        if (v149 > *(v248 + i))
        {
          v149 = *(v248 + i);
        }
      }

      v151 = 0;
      v152 = 0.000244140625 - v149;
      if (v152 < 0.0)
      {
        v153 = 0.0;
      }

      else
      {
        v153 = v152;
      }

      do
      {
        v268[v151] = v153 + *(v248 + v151 * 8);
        *(&v270 + v151 * 8) = fmax(*(v135 + v151 * 8), 0.000244140625);
        ++v151;
      }

      while (v151 != 7);
      v154 = v268[0];
      if (v269 - v268[0] == 0.0)
      {
        v266 = 1.0;
        v264 = 0x3FF0000000000000;
        v155 = 1.0;
        v156 = 1.0;
        v157 = 1.0;
        v158 = *v148;
        goto LABEL_185;
      }

      v237 = v268[0];
      v238 = v144;
      v239 = v143;
      v159 = (v269 - v268[1]) / (v269 - v268[0]);
      v160 = v272;
      v235 = v272 * (1.0 - v159);
      v236 = v269 - v268[0];
      v161 = log(v272);
      v162 = v270;
      v163 = v159 * v162 * log(v270) + v235 * v161;
      v164 = (v271 - (1.0 - v159) * v160 - v159 * v162) / fmax(v163 - v271 * log(v271), 0.000244140625) + 1.0;
      if (!v145)
      {
        break;
      }

      if (v164 < 0.0)
      {
        v157 = 4095.0;
        goto LABEL_173;
      }

      v157 = 0.5;
      if (v164 != 0.0)
      {
        v165 = fmin(v164, 4095.0);
        v166 = 0.5;
LABEL_170:
        if (v164 < v166)
        {
          v157 = v166;
        }

        else
        {
          v157 = v165;
        }
      }

LABEL_173:
      v155 = 1.0 / v157;
      v266 = 1.0 / v157;
      v167 = *v148;
      if (*v148 <= 0.0)
      {
        v158 = 0.0;
        if (*v148 < 0.0)
        {
          v158 = -pow(-v167, v157);
        }
      }

      else
      {
        v158 = pow(v167, v157);
      }

      v168 = (pow(*(&v263[-2] + 7 * v136 - 1), v157) - v158) / v236;
      if (v145)
      {
        v156 = 0.0;
        v143 = v239;
        v154 = v237;
        v144 = v238;
        if (v168 >= 0.0)
        {
          v156 = 2.0;
          goto LABEL_182;
        }
      }

      else
      {
        v156 = 0.5;
        v143 = v239;
        v154 = v237;
        v144 = v238;
        if (v168 >= 0.5)
        {
          v156 = 1.5;
LABEL_182:
          if (v168 <= v156)
          {
            v156 = v168;
          }
        }
      }

      v264 = *&v156;
LABEL_185:
      v169 = v158 - v156 * v154 + v156 * v153;
      if (!v145)
      {
        v176 = -0.5;
        if (v169 >= -0.5)
        {
          v176 = 0.5;
          if (v169 <= 0.5)
          {
            v176 = v169;
          }
        }

        v265 = v176;
        v171 = 0.0;
        goto LABEL_197;
      }

      v170 = -1.0;
      if (v169 >= -1.0)
      {
        v170 = 1.0;
        if (v169 <= 1.0)
        {
          v170 = v169;
        }
      }

      v265 = v170;
      v267 = 0.0;
      v171 = 0.0;
      if (v156 > 0.0 && v155 > 0.0)
      {
        v172 = v170 + *&v249 * v156;
        v173 = *(v263 + 7 * v136 - 1);
        v174 = *(&v263[-1] + 7 * v136 - 1);
        v240 = v143;
        if (v172 <= 0.0)
        {
          v175 = 0.0;
          if (v172 < 0.0)
          {
            v175 = -pow(-v172, v155);
          }
        }

        else
        {
          v175 = pow(v172, v155);
        }

        v189 = v173 - v174 + v175;
        if (v189 <= 0.0)
        {
          v190 = 0.0;
          if (v189 < 0.0)
          {
            v190 = -pow(-v189, v157);
          }
        }

        else
        {
          v190 = pow(v189, v157);
        }

        v191 = v144 * ((v190 - v170) / v156 - v250) * 4096.0;
        v171 = -0.5;
        v143 = v240;
        if (v191 >= -0.5)
        {
          v171 = 0.5;
          if (v191 <= 0.5)
          {
            v171 = v144 * ((v190 - v170) / v156 - v250) * 4096.0;
          }
        }

LABEL_197:
        v267 = v171;
      }

      if (v138 > 3)
      {
        v177 = -1;
      }

      else
      {
        v177 = 1;
      }

      if (v138 <= 3)
      {
        v178 = 2;
      }

      else
      {
        v178 = 4;
      }

      v179 = *(a4 + 8016) - v143;
      if (v179 > 0.0)
      {
        v180 = a4 + 7224;
        v181 = 0.5;
        goto LABEL_208;
      }

      v180 = a4 + 7224;
      v181 = 0.5;
      if (*(v244 + 92))
      {
        v179 = -v179;
LABEL_208:
        v182 = 3;
        while (1)
        {
          v183 = 1 << v178;
          if (((1 << v178) & *(a4 + 1024)) != 0)
          {
            break;
          }

          v178 += v177;
          if (!--v182)
          {
            v184 = 1.0;
            goto LABEL_219;
          }
        }

        v184 = 1.0;
        v185 = a4 + 5104;
        if ((v183 & v139) == 0)
        {
          v186 = fmin(v179, 0.02);
          if (v179 >= 0.0)
          {
            v187 = v186 / 0.02;
          }

          else
          {
            v187 = 0.0;
          }

          if (v187 <= v181)
          {
            v188 = v187 * (v187 * (v187 * 4.0));
          }

          else
          {
            v188 = (v187 + -1.0) * ((v187 + -1.0) * 4.0) * (v187 + -1.0) + 1.0;
          }

          v184 = v188 + 0.0;
        }

        goto LABEL_231;
      }

      v184 = 0.0;
LABEL_219:
      v185 = a4 + 5104;
LABEL_231:
      if (v138 <= 3 && (*(a4 + 1024) & 4) != 0 && (v139 & 4) == 0)
      {
        *(a4 + 8848) = *(a4 + 8848) * v181;
      }

      if (v243[v136] <= 3)
      {
        *(a4 + 4184) += 2 * *(a4 + 4572) + 5;
        if ((*(a4 + 4192) & 4) != 0)
        {
          v192 = *v232;
        }

        else
        {
          v192 = 0;
          *v232 = 0;
        }

        v195 = (a4 + 4584 + 56 * v192);
        *v195 = *&v245->i64[1];
        SetSopcsm(&v264, v136, a4 + 7936, v195, v184, v184);
        v196 = 4;
        v197 = 1;
        v198 = (a4 + 4576);
        goto LABEL_272;
      }

      if (*(a4 + 4193))
      {
        v193 = *(a4 + 5096);
        v194 = *(v185 + 168 * v193 - 168) + 1;
      }

      else
      {
        v193 = 0;
        *(a4 + 5096) = 0;
        *(a4 + 6624) = 0;
        v194 = 201;
      }

      v199 = v185 + 168 * v193;
      v241 = v194;
      *v199 = v194;
      SetSopcsm(&v264, v136, a4 + 7936, v199, v184 * v181, v184);
      *(v199 + 56) = v171 * v184;
      *(v199 + 64) = 0;
      if (*v243 > 3)
      {
        if (v234[v136])
        {
          v200 = *(a4 + 8368);
        }

        else
        {
          v200 = a4 + 8816 + 168 * v136;
        }

        v204 = a4 + 8816;
        if (*v234)
        {
          v204 = *(a4 + 8368);
        }

        v205 = 0;
        *(v242 + 4 * *(a4 + 5096)) = 29;
        v206 = 1;
        do
        {
          v207 = v184 * (*(v200 + 120 + v205) - *(v204 + 120 + v205));
          *(a4 + 5224 + 168 * v193 + v205) = v207;
          if (v207 >= 0.0)
          {
            v208 = v181 + v207 * 256.0;
          }

          else
          {
            v208 = v207 * 256.0 + -0.5;
          }

          v206 &= v208 == 0;
          v205 += 8;
        }

        while (v205 != 48);
        v209 = 0;
        if ((v206 & 1) == 0)
        {
          v216 = v204 + 72;
          v217 = v200 + 72;
          v202 = v241;
          do
          {
            *(v231 + 168 * v193 + v209) = v184 * (*(v217 + v209) - *(v216 + v209));
            v209 += 8;
          }

          while (v209 != 48);
          goto LABEL_271;
        }

        *(v242 + 4 * *(a4 + 5096)) -= 6;
        v210 = v204 + 72;
        v211 = v200 + 72;
        LOBYTE(v200) = 1;
        do
        {
          v212 = v184 * (*(v211 + v209) - *(v210 + v209));
          *(v231 + 168 * v193 + v209) = v212;
          if (v212 >= 0.0)
          {
            v213 = v181 + v212 * 128.0;
          }

          else
          {
            v213 = v212 * 128.0 + -0.5;
          }

          LODWORD(v200) = v200 & (v213 == 0);
          v209 += 8;
        }

        while (v209 != 48);
        v202 = v241;
        if (!v200)
        {
          goto LABEL_271;
        }

        *(v242 + 4 * *(a4 + 5096)) -= 6;
        *(v242 + 4 * *(a4 + 5096)) -= 2;
        v214 = *(v199 + 56);
        v215 = v214 >= 0.0 ? v181 + v214 * 4096.0 : v214 * 4096.0 + -0.5;
        if (v215)
        {
          goto LABEL_271;
        }

        v203 = -2;
        goto LABEL_248;
      }

      v201 = (a4 + 5176 + 168 * v193);
      v201[4] = 0u;
      v201[5] = 0u;
      v201[2] = 0u;
      v201[3] = 0u;
      *v201 = 0u;
      v201[1] = 0u;
      *(v242 + 4 * *(a4 + 5096)) = 13;
      v202 = v241;
      if (v171 * v184 != 0.0)
      {
        v203 = 2;
LABEL_248:
        *(v242 + 4 * *(a4 + 5096)) += v203;
      }

LABEL_271:
      *(a4 + 4184) += *(v242 + 4 * *(a4 + 5096)) + 5;
      *(v233 + 4 * *(a4 + 6624)) = 22;
      v218 = *(a4 + 6624);
      *(a4 + 4184) += *(v233 + 4 * v218) + 5;
      v219 = a4 + 6632 + 96 * v218;
      *v219 = v202;
      *(v219 + 8) = vextq_s8(*v245, *v245, 8uLL);
      *(v219 + 24) = -1;
      v220 = *(v244 + 56);
      v121 = *(v244 + 72);
      v221 = *(v244 + 40);
      *(v219 + 32) = *(v244 + 24);
      *(v219 + 48) = v221;
      *(v219 + 64) = v220;
      *(v219 + 80) = v121;
      ++*(a4 + 5096);
      v196 = 1280;
      v197 = 2;
      v198 = (a4 + 6624);
LABEL_272:
      ++*v198;
      *(v180 + 1) += v197;
      v134 = *(a4 + 4192) | v196;
      *(a4 + 4192) = v134;
      v135 = (v135 + 56);
      if (v136++ >= *(a4 + 648))
      {
        result = *(a4 + 4184);
        goto LABEL_274;
      }
    }

    v157 = 2.0;
    if (v164 < 0.0)
    {
      goto LABEL_173;
    }

    if (v164 == 0.0)
    {
      v157 = 0.666666667;
      goto LABEL_173;
    }

    v165 = fmin(v164, 2.0);
    v166 = 0.666666667;
    goto LABEL_170;
  }

LABEL_274:
  *(a4 + 4192) = v134 | 1;
  *(a4 + 4176) = 1;
  *(a4 + 7232) = 0;
  return result;
}

void GetYuv2RgbM33(uint64_t result, uint64_t a2)
{
  v13[9] = *MEMORY[0x277D85DE8];
  if (result > 5)
  {
    v12 = xmmword_2508D1C20;
    v11 = xmmword_2508D1C30;
  }

  else
  {
    GetRgb2XyzM33(result, v13);
    *&v3.f64[0] = v13[5];
    *&v3.f64[1] = v13[3];
    __asm { FMOV            V2.2D, #1.0 }

    v9 = vsubq_f64(_Q2, v3);
    __asm { FMOV            V3.2D, #-2.0 }

    v11 = vdivq_f64(vmulq_f64(vmulq_f64(v3, _Q3), v9), vdupq_lane_s64(v13[4], 0));
    v12 = vaddq_f64(v9, v9);
  }

  *a2 = xmmword_2508D1C40;
  *(a2 + 16) = v12.f64[1];
  *(a2 + 24) = 0x3FF0000000000000;
  *(a2 + 32) = v11;
  *(a2 + 48) = 0x3FF0000000000000;
  *(a2 + 56) = v12.f64[0];
  *(a2 + 64) = 0;
}

void GetRgb2XyzM33(int a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        *a2 = xmmword_2508D1C50;
        *(a2 + 16) = xmmword_2508D1C60;
        *(a2 + 32) = xmmword_2508D1C70;
        *(a2 + 48) = xmmword_2508D1C80;
        v11 = 0x3FF1E126D5339924;
      }

      else
      {
        if (a1 != 7)
        {
          goto LABEL_25;
        }

        v11 = 0x3FF0000000000000;
        *a2 = 0x3FF0000000000000;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0x3FF0000000000000;
        *(a2 + 40) = 0;
        *(a2 + 48) = 0;
        *(a2 + 56) = 0;
      }
    }

    else
    {
      if (a1 == 4)
      {
        v3 = 0.7347;
        v4 = 0.2653;
        v7 = 0.0001;
        v8 = -0.077;
        v9 = 0.32168;
        v10 = 0.33767;
        v5 = 0.0;
        v6 = 1.0;
        goto LABEL_19;
      }

      *a2 = xmmword_2508D1C90;
      *(a2 + 16) = xmmword_2508D1CA0;
      *(a2 + 32) = xmmword_2508D1CB0;
      *(a2 + 48) = xmmword_2508D1CC0;
      v11 = 0x3FF273E41A409C3BLL;
    }

    *(a2 + 64) = v11;
    return;
  }

  if (a1 > 1)
  {
    if (a1 != 2)
    {
      v3 = 0.708;
      v4 = 0.292;
      v5 = 0.17;
      v6 = 0.797;
      v7 = 0.131;
      v8 = 0.046;
LABEL_18:
      v9 = 0.3127;
      v10 = 0.329;
      goto LABEL_19;
    }

    v3 = 0.64;
    v4 = 0.33;
    v5 = 0.3;
    v6 = 0.6;
LABEL_17:
    v7 = 0.15;
    v8 = 0.06;
    goto LABEL_18;
  }

  if (!a1)
  {
    v3 = 0.68;
    v4 = 0.32;
    v5 = 0.265;
    v6 = 0.69;
    goto LABEL_17;
  }

  if (a1 == 1)
  {
    v3 = 0.68;
    v4 = 0.32;
    v5 = 0.265;
    v6 = 0.69;
    v7 = 0.15;
    v8 = 0.06;
    v9 = 0.314;
    v10 = 0.351;
LABEL_19:

    GetRgb2XyzM33ByPrimsMR81(a2, v3, v4, v5, v6, v7, v8, v9, v10);
    return;
  }

LABEL_25:
  if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v12 = logInstanceID;
    }

    else
    {
      v12 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218240;
      v14 = WORD1(v12);
      v15 = 1024;
      v16 = a1;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx MR81: Error: GetRgb2XyzM33, unsupported rgbDef:%d", &v13, 0x12u);
    }

    prevLogInstanceID = v12;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 67109120;
    LODWORD(v14) = a1;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] MR81: Error: GetRgb2XyzM33, unsupported rgbDef:%d", &v13, 8u);
  }
}

double SetSopcsm(double *a1, int a2, uint64_t a3, double *a4, double a5, double a6)
{
  a4[1] = (*a1 + -1.0) * a5 + 1.0;
  a4[2] = a1[1] * a5;
  a4[3] = (a1[2] + -1.0) * a5 + 1.0;
  if (*(a3 + 868 + 4 * a2))
  {
    v6 = *(a3 + 744);
  }

  else
  {
    v6 = (a3 + 168 * a2 + 880);
  }

  if (*(a3 + 868))
  {
    v7 = *(a3 + 744);
  }

  else
  {
    v7 = (a3 + 880);
  }

  a4[4] = (v6[4] - v7[4]) * a6;
  a4[5] = (v6[5] - v7[5]) * a6 + 1.0;
  result = (v6[6] - v7[6]) * a6 + 1.0;
  a4[6] = result;
  return result;
}

double updateComposerData(uint64_t a1)
{
  bzero((a1 + 56), 0x65510uLL);
  *a1 = xmmword_2508D1D80;
  *(a1 + 16) = xmmword_2508D1D90;
  *(a1 + 32) = xmmword_2508D1DA0;
  *&result = 0x200000002;
  *(a1 + 48) = 0x200000002;
  *(a1 + 56) = 2;
  *(a1 + 64) = 1023;
  *(a1 + 136) = 1023;
  *(a1 + 208) = 1023;
  *(a1 + 384) = 1;
  *(a1 + 420) = 1;
  *(a1 + 456) = 1;
  *(a1 + 820) = 1;
  *(a1 + 928) = 1;
  *(a1 + 1472) = 0x800000;
  *(a1 + 1904) = 0x800000;
  *(a1 + 2336) = 0x800000;
  *(a1 + 2764) = 1065353216;
  *(a1 + 2980) = 1065353216;
  *(a1 + 3196) = 1065353216;
  *(a1 + 1036) = 1;
  *(a1 + 20152) = 1;
  return result;
}

uint64_t invalidateDMDataL2L4L5L6L8L10(uint64_t result)
{
  v1 = 0;
  v2 = result + 164;
  do
  {
    if (*(v2 + v1))
    {
      *(v2 + v1) = 0;
      --*(result + 144);
    }

    v1 += 16;
  }

  while (v1 != 128);
  if (*(result + 292))
  {
    *(result + 292) = 0;
    --*(result + 144);
  }

  v3 = 0;
  v4 = result + 326;
  do
  {
    if (*(v4 + v3))
    {
      *(v4 + v3) = 0;
      --*(result + 144);
    }

    v3 += 34;
  }

  while (v3 != 170);
  v5 = 0;
  v6 = result + 518;
  do
  {
    if (*(v6 + v5))
    {
      *(v6 + v5) = 0;
      --*(result + 144);
    }

    v5 += 28;
  }

  while (v5 != 112);
  if (*(result + 300))
  {
    *(result + 300) = 0;
    --*(result + 144);
  }

  if (*(result + 306))
  {
    *(result + 306) = 0;
    --*(result + 144);
  }

  if (*(result + 316))
  {
    *(result + 316) = 0;
    --*(result + 144);
  }

  *(result + 148) = 0;
  *(result + 152) = 0;
  return result;
}

uint64_t copyL2L8L10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, int *a6, int *a7)
{
  if (*(result + 280))
  {
    v7 = a3 + 34 * *a6;
    *(v7 + 18) = 134219776;
    *(v7 + 22) = 0x8080808080808080;
    *(v7 + 30) = -2139062144;
    *(v7 + 4) = *(result + 284);
    *(v7 + 6) = *(result + 286);
    *(v7 + 8) = *(result + 288);
    *(v7 + 10) = *(result + 290);
    *(v7 + 12) = *(result + 292);
    *(v7 + 14) = *(result + 294);
    *(v7 + 16) = *(result + 296);
    *(v7 + 2) = 10;
    v8 = *(result + 298);
    if (v8 != 2048)
    {
      *(v7 + 18) = v8;
      *(v7 + 2) = 12;
    }

    *v7 = 1;
    ++*a6;
  }

  if (*(result + 544))
  {
    v9 = *a7;
    v10 = a4 + 28 * *a7;
    *(v10 + 4) = *(result + 548);
    *(v10 + 6) = *(result + 550);
    *(v10 + 8) = *(result + 552);
    v11 = *(result + 554);
    *(v10 + 10) = v11;
    *(v10 + 12) = *(result + 556);
    *(v10 + 14) = *(result + 558);
    *(v10 + 16) = *(result + 560);
    *(v10 + 18) = *(result + 562);
    *(v10 + 20) = *(result + 564);
    *(v10 + 22) = *(result + 566);
    *(v10 + 24) = *(result + 568);
    *(v10 + 26) = *(result + 570);
    if (v11 <= 0x12)
    {
      v12 = 5;
    }

    else
    {
      v12 = 21;
    }

    *(v10 + 2) = v12;
    *v10 = 1;
    *a7 = v9 + 1;
  }

  if (*(result + 140))
  {
    v13 = *a5;
    v14 = (a2 + 16 * v13);
    v14[1] = *(result + 144);
    v14[2] = *(result + 146);
    v14[3] = *(result + 148);
    v14[4] = *(result + 150);
    v14[5] = *(result + 152);
    v14[6] = *(result + 154);
    v14[7] = *(result + 156);
    *v14 = 1;
    *a5 = v13 + 1;
  }

  return result;
}

void __75__sceneLuxB2DItpMLModel_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[sceneLuxB2DItpMLModel alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __66__sceneLuxB2DItpMLModel_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [sceneLuxB2DItpMLModelOutput alloc];
    v7 = [v12 featureValueForName:@"anchor_points"];
    v8 = [v7 multiArrayValue];
    v9 = [(sceneLuxB2DItpMLModelOutput *)v6 initWithAnchor_points:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void __74__sceneLuxB2DItpMLModel_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [sceneLuxB2DItpMLModelOutput alloc];
    v7 = [v12 featureValueForName:@"anchor_points"];
    v8 = [v7 multiArrayValue];
    v9 = [(sceneLuxB2DItpMLModelOutput *)v6 initWithAnchor_points:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void operator delete[]()
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

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x2822043A0](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}
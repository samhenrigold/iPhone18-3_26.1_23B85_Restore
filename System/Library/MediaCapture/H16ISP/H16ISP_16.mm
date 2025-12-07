float quadratic_interpolation(const float (*a1)[3], float *a2, float *a3)
{
  v6 = quadratic_interpolation_dx(a1);
  *a2 = v6;
  result = (*a1)[1] + (v6 * ((*a1)[0] - (*a1)[2])) * -0.25;
  *a3 = result;
  return result;
}

uint64_t find_near_peak(const float *a1, float a2, unsigned int a3)
{
  v3 = ((a3 + a2) + 0.5);
  v4 = (a2 - a3);
  if (v4 >= v3)
  {
    return ((a3 + a2) + 0.5);
  }

  v5 = a1[v3];
  LODWORD(v6) = v3;
  do
  {
    if (a1[v4] <= v5)
    {
      v6 = v6;
    }

    else
    {
      v5 = a1[v4];
      v6 = v4;
    }

    ++v4;
  }

  while (v3 != v4);
  return v6;
}

float quadratic_interpolation_dx(const float (*a1)[3])
{
  v1 = (*a1)[2];
  v2 = ((*a1)[0] + ((*a1)[1] * -2.0)) + v1;
  result = 0.0;
  if (v2 != 0.0)
  {
    v4 = ((*a1)[0] - v1) * 0.5 / v2;
    result = 0.5;
    if (v4 <= 0.5)
    {
      result = ((*a1)[0] - v1) * 0.5 / v2;
      if (v4 < -0.5)
      {
        return -0.5;
      }
    }
  }

  return result;
}

float32x4_t fun_get_calibration_param(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a1)
  {
    if (a3)
    {
      v3 = vdupq_n_s32(0x2F800000u);
      *a3 = vmulq_f32(vcvtq_f32_u32(*(a1 + 16)), v3);
      *(a3 + 24) = *(a1 + 40) * 2.3283e-10;
      *(a3 + 16) = vmul_f32(vcvt_f32_u32(*(a1 + 32)), *v3.f32);
      v4.i64[0] = *(a2 + 12);
      *v3.f32 = vadd_s32(*(a1 + 76), *v4.i8);
      v4.i64[1] = v4.i64[0];
      *(a3 + 28) = vcvtq_f32_s32(vaddq_s32(*(a1 + 44), v4));
      *(a3 + 44) = vcvtq_f32_s32(vaddq_s32(*(a1 + 60), v4));
      *(a3 + 60) = vcvt_f32_s32(*v3.f32);
      v3.i64[0] = 0x3A0000003A000000;
      v3.i64[1] = 0x3A0000003A000000;
      *(a3 + 68) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*(a1 + 86))), v3);
      result = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*(a1 + 94))), v3);
      *(a3 + 84) = result;
    }
  }

  return result;
}

float getGainAndOffset(float *a1, int a2, float *a3, float *a4, _DWORD *a5, float *a6, float result)
{
  if (a1)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        *a4 = a1[18] * a1[20];
        v7 = a1[17] * a1[19];
        v8 = 12;
        v9 = 11;
        goto LABEL_12;
      }

      if (a2 == 7)
      {
        *a4 = (a1[18] * a1[20]) * a1[22];
        v7 = (a1[17] * a1[19]) * a1[21];
        v8 = 14;
        v9 = 13;
        goto LABEL_12;
      }
    }

    else
    {
      if (!a2)
      {
        *a4 = 1.0;
        v7 = 1.0;
        v8 = 8;
        v9 = 7;
        goto LABEL_12;
      }

      if (a2 == 1)
      {
        *a4 = a1[18];
        v7 = a1[17];
        v8 = 10;
        v9 = 9;
LABEL_12:
        *a3 = v7;
        *a5 = LODWORD(a1[v9]);
        result = a1[v8];
        *a6 = result;
        return result;
      }
    }

    *a4 = ((a1[18] * a1[20]) * a1[22]) * a1[24];
    v7 = ((a1[17] * a1[19]) * a1[21]) * a1[23];
    v8 = 16;
    v9 = 15;
    goto LABEL_12;
  }

  return result;
}

float fun_get_lux(float *a1, int a2, float a3, float a4, float a5, float a6, float a7, float a8)
{
  if (!a1)
  {
    return 0.0;
  }

  v8 = -(a8 - (a3 * 8388600.0));
  v9 = -(a7 - (a4 * 8388600.0));
  if (a2 == 1)
  {
    v10 = 1;
    v11 = a1;
  }

  else if (v8 == 0.0 || (v9 / v8) >= a1[4])
  {
    v11 = a1 + 5;
    v10 = 6;
  }

  else
  {
    v11 = a1 + 2;
    v10 = 3;
  }

  return (-(a1[v10] * v9) * a5) + ((v8 * *v11) * a6);
}

uint64_t jasperDetectC(float *a1, float *a2, unsigned int a3, char a4, uint64_t a5, uint64_t a6, _BOOL4 a7, float a8, float a9, float a10, float a11)
{
  v21 = 0xFFFFFFFFLL;
  v22 = H16ISP::H16ISPGetCFPreferenceNumber(@"FlickerDetectorAlphaNumerator", @"com.apple.coremedia", 0xFFFFFFFFLL);
  v23 = H16ISP::H16ISPGetCFPreferenceNumber(@"FlickerDetectorAlphaDenominator", @"com.apple.coremedia", 0xFFFFFFFFLL);
  v24 = H16ISP::H16ISPGetCFPreferenceNumber(@"FlickerDetectorIsGrimaldi", @"com.apple.coremedia", 2);
  v26 = 0.8;
  if (v22 != -1 && v23 != -1)
  {
    v26 = v22 / v23;
  }

  *(a6 + 40) = -1;
  v27 = v24 != 0;
  if (v24 == 2)
  {
    v27 = a7;
  }

  if (a3 >= 0x7D0 && a1 && a2 && a5 && a6)
  {
    v28 = a5 + 8000;
    v29 = a11 * 1.05;
    v30 = a10 * 1.1;
    if (a4)
    {
      LODWORD(v31) = *(a5 + 16000);
    }

    else
    {
      v31 = 2000;
      v32 = a5;
      do
      {
        v33 = *a2++;
        *v32 = (v33 - v29) * a9;
        v34 = *a1++;
        v32[2000] = (v34 - v30) * a8;
        ++v32;
        --v31;
      }

      while (v31);
      a3 -= 2000;
      if (!a3)
      {
        goto LABEL_19;
      }
    }

    v35 = 1.0 - v26;
    v36 = v31;
    v37 = a3;
    do
    {
      v38 = v36 % 0x7D0;
      v39 = *a2++;
      *(a5 + 4 * v38) = ((v26 * (v39 - v29)) * a9) + (*(a5 + 4 * v38) * v35);
      v40 = *a1++;
      *(v28 + 4 * v38) = ((v26 * (v40 - v30)) * a8) + (*(v28 + 4 * v38) * v35);
      ++v36;
      --v37;
    }

    while (v37);
    LODWORD(v31) = (a3 + v31) % 0x7D0;
LABEL_19:
    *(a5 + 16000) = v31;
    v41 = 0.0;
    v42 = 532;
    v43 = a5;
    v44 = 0.0;
    v45 = 0.0;
    v46 = 0.0;
    do
    {
      v45 = v45 + *v43;
      v46 = v46 + v43[1067];
      v41 = v41 + v43[2000];
      v44 = v44 + v43[3067];
      ++v43;
      --v42;
    }

    while (v42);
    v47 = 0.0;
    v48 = 133;
    v49 = a5;
    v50 = 0.0;
    v51 = 0.0;
    v52 = 0.0;
    v53 = 0.0;
    v54 = 0.0;
    do
    {
      v55 = v49[533];
      v54 = v54 + v55;
      v50 = v50 + (v55 * v55);
      v56 = v49[800];
      v52 = v52 + v56;
      v51 = v51 + (v56 * v56);
      v47 = v47 + v49[2533];
      v53 = v53 + v49[2800];
      ++v49;
      --v48;
    }

    while (v48);
    v57 = 133;
    v58 = a5;
    v59 = v50;
    v60 = v51;
    v61 = v52;
    v62 = v54;
    do
    {
      v63 = v58[666];
      v62 = v62 + v63;
      v59 = v59 + (v63 * v63);
      v64 = v58[933];
      v61 = v61 + v64;
      v60 = v60 + (v64 * v64);
      v47 = v47 + v58[2666];
      v53 = v53 + v58[2933];
      ++v58;
      --v57;
    }

    while (v57);
    v65 = 0;
    v66 = 266;
    v67 = 0.0;
    v68 = 133;
    v69 = 532;
    v70 = 0.0;
    v71 = a5;
    while (1)
    {
      *v25.i32 = v46 + v45;
      v72 = v44 + v41;
      if (v27)
      {
        v73 = v41 - v44;
        if ((v41 - v44) < 0.0)
        {
          v73 = -(v41 - v44);
        }

        v74 = v45 - v46;
        if ((v45 - v46) < 0.0)
        {
          v74 = -(v45 - v46);
        }

        if (v45 < 0.0 || v46 < 0.0 || v41 < 0.0 || v44 < 0.0 || ((v74 / *v25.i32) + (v73 / v72)) > 0.125)
        {
          goto LABEL_55;
        }
      }

      v75 = -(*v25.i32 - ((v62 + v61) * 2.0));
      v76 = -(v72 - ((v53 + v47) * 2.0));
      if (v27)
      {
        v67 = (v75 / sqrtf(*v25.i32)) + (v76 / sqrtf(v72));
        if (v67 > v70)
        {
          v77 = v76 - (*v25.i32 - ((v62 + v61) * 2.0));
LABEL_43:
          *a6 = v25.i32[0];
          *(a6 + 4) = v62;
          *(a6 + 24) = v47;
          *(a6 + 28) = v53;
          *(a6 + 16) = v54;
          *(a6 + 20) = v72;
          *(a6 + 8) = v61;
          *(a6 + 12) = v52;
          v79.f32[0] = v62 - v54;
          *v25.i32 = *v25.i32 * 0.125;
          v80.f32[0] = v59 - v50;
          v79.f32[1] = v54;
          v81 = vdup_lane_s32(v25, 0);
          v82 = vsub_f32(v79, v81);
          v80.f32[1] = v50;
          v83 = vdup_n_s32(0x43050000u);
          v84 = vmla_f32(vmul_f32(v79, vneg_f32(v79)), v83, v80);
          v85 = vdup_n_s32(0x3C23D70Au);
          v86 = vdiv_f32(vmul_f32(v82, v82), vmaxnm_f32(v84, v85));
          v82.f32[0] = v61 - v52;
          v87.f32[0] = v60 - v51;
          v82.f32[1] = v52;
          v88 = vsub_f32(v82, v81);
          v87.f32[1] = v51;
          v25 = vdiv_f32(vmul_f32(v88, v88), vmaxnm_f32(vmla_f32(vmul_f32(v82, vneg_f32(v82)), v83, v87), v85));
          v89 = v86.f32[1];
          if (v86.f32[0] < v86.f32[1])
          {
            v89 = v86.f32[0];
          }

          if (*v25.i32 >= *&v25.i32[1])
          {
            v90 = *&v25.i32[1];
          }

          else
          {
            v90 = *v25.i32;
          }

          if (v89 >= v90)
          {
            v89 = v90;
          }

          *(a6 + 32) = *&v25.i32[1] + (*v25.i32 + vaddv_f32(v86));
          *(a6 + 36) = v89;
          *(a6 + 40) = v65;
          if (v76 <= 0.0)
          {
            v70 = v75;
          }

          else
          {
            v70 = v77;
          }

          if (v27)
          {
            v70 = v67;
          }
        }
      }

      else
      {
        v77 = v76 - (*v25.i32 - ((v62 + v61) * 2.0));
        if (v75 > v70 || v77 > v70)
        {
          goto LABEL_43;
        }
      }

LABEL_55:
      if (v65 >= 0x5BC)
      {
        v91 = -1468;
      }

      else
      {
        v91 = 532;
      }

      v92 = v91 + v65;
      if (v65 >= 0x3A5)
      {
        v93 = -933;
      }

      else
      {
        v93 = 1067;
      }

      if (v65 >= 0x3A5)
      {
        v94 = -933;
      }

      else
      {
        v94 = 1067;
      }

      v95 = v65 + v94;
      v96 = v65 + v93 - 2000 * ((v93 + v69) / 0x7D0u);
      if (v65 >= 0x5BB)
      {
        v97 = -1467;
      }

      else
      {
        v97 = 533;
      }

      if (v65 >= 0x5BB)
      {
        v98 = -1467;
      }

      else
      {
        v98 = 533;
      }

      v99 = v65 + v98;
      v100 = v65 + v97 - 2000 * ((v97 + v66) / 0x7D0u);
      v101 = v65 + v97 - 2000 * ((v97 + v68) / 0x7D0u);
      if (v65 >= 0x4B0)
      {
        v102 = -1200;
      }

      else
      {
        v102 = 800;
      }

      if (v65 >= 0x4B0)
      {
        v103 = -1200;
      }

      else
      {
        v103 = 800;
      }

      v104 = v65 + v103;
      v105 = v96 + 532;
      v106 = v100 + 266;
      v107 = v65 + v102 - 2000 * ((v102 + v66) / 0x7D0u) + 266;
      v45 = v45 + (*(a5 + 4 * v92) - *v71);
      v46 = v46 + (*(a5 + 4 * v105) - *(a5 + 4 * v95));
      v41 = v41 + (*(v28 + 4 * v92) - v71[2000]);
      v108 = *(a5 + 4 * v106);
      v44 = v44 + (*(v28 + 4 * v105) - *(v28 + 4 * v95));
      v109 = *(a5 + 4 * v99);
      v62 = v62 + (v108 - v109);
      v59 = v59 + ((v108 * v108) - (v109 * v109));
      v47 = v47 + (*(v28 + 4 * v106) - *(v28 + 4 * v99));
      v110 = *(a5 + 4 * (v101 + 133));
      v54 = v54 + (v110 - v109);
      v111 = (v110 * v110) - (v109 * v109);
      v112 = *(a5 + 4 * v107);
      v113 = *(a5 + 4 * v104);
      v50 = v50 + v111;
      v61 = v61 + (v112 - v113);
      v60 = v60 + ((v112 * v112) - (v113 * v113));
      v53 = v53 + (*(v28 + 4 * v107) - *(v28 + 4 * v104));
      v114 = *(a5 + 4 * (v65 + v102 - 2000 * ((v102 + v68) / 0x7D0u) + 133));
      v52 = v52 + (v114 - v113);
      ++v71;
      ++v66;
      v51 = v51 + ((v114 * v114) - (v113 * v113));
      ++v68;
      ++v69;
      if (++v65 == 2000)
      {
        v21 = 0;
        *(a6 + 44) = a4;
        *(a6 + 45) = v27;
        return v21;
      }
    }
  }

  return v21;
}

uint64_t peridotDetectC(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, float *__dst, unsigned int a6, uint64_t a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a3 < 0x506 || !a2 || !a1 || !__dst || a6 >> 3 < 0x295 || !a7)
  {
    return v7;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  *(a7 + 76) = -1;
  v15 = __dst[1286];
  v16 = __dst[1287];
  v17 = __dst[1288];
  v18 = __dst[1289];
  v19 = __dst[1290];
  v20 = __dst[1291];
  v21 = __dst[1292];
  v22 = __dst[1293];
  v23 = __dst[1294];
  v24 = __dst[1295];
  v25 = __dst[1296];
  v26 = __dst[1297];
  v27 = __dst[1298];
  v28 = __dst[1299];
  v29 = __dst[1300];
  v30 = __dst[1301];
  v31 = __dst[1302];
  v32 = __dst[1303];
  v33 = __dst[1304];
  v34 = __dst[1305];
  v35 = __dst[1306];
  v36 = __dst[1307];
  v37 = __dst[1308];
  v38 = __dst[1309];
  v137 = __dst[1310];
  v39 = __dst[1312];
  v40 = __dst[1311];
  v41 = __dst[1313];
  v42 = __dst[1314];
  v43 = __dst[1315];
  v44 = __dst[1316];
  v45 = a4 >> 2;
  v46 = __dst[1317];
  v47 = (a4 >> 1) + (a4 >> 2);
  v48 = __dst[1318];
  v49 = __dst[1319];
  do
  {
    if (v9 >= 1286)
    {
      v50 = (a1 - 5144);
    }

    else
    {
      v50 = __dst;
    }

    v51 = v50[v9];
    v52 = &__dst[v9 + 368];
    if (v9 - 918 >= 0)
    {
      v52 = (a1 + 4 * (v9 - 918));
    }

    v15 = v15 + (*v52 - v51);
    v53 = &__dst[v9 + 918];
    if (v9 - 368 >= 0)
    {
      v53 = (a1 + 4 * (v9 - 368));
    }

    v54 = *v53;
    v55 = &__dst[v9 + 1286];
    if (v9 >= 0)
    {
      v55 = (a1 + 4 * v9);
    }

    v16 = v16 + (*v55 - v54);
    v56 = &__dst[v9 + 427];
    if (v9 - 859 >= 0)
    {
      v56 = (a1 + 4 * (v9 - 859));
    }

    v57 = *v56;
    v58 = &__dst[v9 + 473];
    if (v9 - 813 >= 0)
    {
      v58 = (a1 + 4 * (v9 - 813));
    }

    v17 = v17 + (*v58 - v57);
    v59 = &__dst[v9 + 533];
    if (v9 - 753 >= 0)
    {
      v59 = (a1 + 4 * (v9 - 753));
    }

    v60 = *v59;
    v61 = &__dst[v9 + 579];
    if (v9 - 707 >= 0)
    {
      v61 = (a1 + 4 * (v9 - 707));
    }

    v18 = v18 + (*v61 - v60);
    v62 = &__dst[v9 + 647];
    if (v9 - 639 >= 0)
    {
      v62 = (a1 + 4 * (v9 - 639));
    }

    v63 = *v62;
    v64 = &__dst[v9 + 693];
    if (v9 - 593 >= 0)
    {
      v64 = (a1 + 4 * (v9 - 593));
    }

    v19 = v19 + (*v64 - v63);
    v65 = &__dst[v9 + 754];
    if (v9 - 532 >= 0)
    {
      v65 = (a1 + 4 * (v9 - 532));
    }

    v66 = *v65;
    v67 = &__dst[v9 + 800];
    if (v9 - 486 >= 0)
    {
      v67 = (a1 + 4 * (v9 - 486));
    }

    v20 = v20 + (*v67 - v66);
    v68 = (v15 + v16) * -0.25;
    v69 = (((v17 + v18) + v19) + v20) + v68;
    if (v69 > v21)
    {
      v10 = 1;
      v11 = v9;
      v21 = (((v17 + v18) + v19) + v20) + v68;
      v22 = v30;
      v23 = v15;
      v24 = v16;
      v25 = v17;
      v26 = v18;
      v27 = v19;
      v28 = v20;
    }

    if (v69 > v31)
    {
      v14 = 1;
      v12 = v9;
      v31 = (((v17 + v18) + v19) + v20) + v68;
      v32 = v30;
      v33 = v15;
      v34 = v16;
      v35 = v17;
      v36 = v18;
      v37 = v19;
      v38 = v20;
    }

    v70 = v31;
    if (v30 == (a4 >> 1) - 1)
    {
      if (v32 < v45 || v32 >= v47)
      {
        if (v14)
        {
          v83 = v12 + 919;
          v84 = (v33 + v34) / 368.0 * 0.5;
          v85 = 0.0;
          v86 = 368;
          do
          {
            v87 = v83 - 918;
            if (v83 >= 1286)
            {
              v88 = (a1 - 5144);
            }

            else
            {
              v88 = __dst;
            }

            v89 = v88[v83] - v84;
            if (v87 >= 1286)
            {
              v90 = (a1 - 5144);
            }

            else
            {
              v90 = __dst;
            }

            v91 = v85 + v89 * v89;
            v92 = v90[v87] - v84;
            v85 = v91 + v92 * v92;
            ++v83;
            --v86;
          }

          while (v86);
          v31 = -3.4028e38;
          v40 = v70;
          v39 = v32;
          v41 = v33;
          v42 = v34;
          v49 = sqrt(v85 / 368.0 * 0.5);
          v43 = v35;
          v44 = v36;
          v46 = v37;
          v48 = v38;
        }

        else
        {
          v31 = -3.4028e38;
          v40 = v70;
          v39 = v32;
          v41 = v33;
          v42 = v34;
          v43 = v35;
          v44 = v36;
          v46 = v37;
          v48 = v38;
          v49 = v137;
        }
      }

      else
      {
        v31 = -3.4028e38;
      }
    }

    if (v30 == a4 - 1)
    {
      if (v22 < v45 || v22 >= v47 || v21 < v40)
      {
        v21 = -3.4028e38;
        v93 = v40 <= -3.4028e38;
        v40 = -3.4028e38;
        if (v93)
        {
          goto LABEL_68;
        }

        *(a7 + 4) = v43;
        *(a7 + 8) = v44;
        *(a7 + 12) = v46;
        *(a7 + 16) = v48;
        *(a7 + 20) = v42;
        *(a7 + 24) = v41;
        v71 = v49;
        *(a7 + 76) = v39;
      }

      else
      {
        *(a7 + 4) = v25;
        *(a7 + 8) = v26;
        *(a7 + 12) = v27;
        *(a7 + 16) = v28;
        *(a7 + 20) = v24;
        *(a7 + 24) = v23;
        v71 = v29;
        *(a7 + 76) = v22;
        if (v10)
        {
          v72 = v46;
          v73 = v11 + 919;
          v74 = (v23 + v24) / 368.0 * 0.5;
          v75 = 0.0;
          v76 = 368;
          do
          {
            v77 = v73 - 918;
            if (v73 >= 1286)
            {
              v78 = (a1 - 5144);
            }

            else
            {
              v78 = __dst;
            }

            v79 = v78[v73] - v74;
            if (v77 >= 1286)
            {
              v80 = (a1 - 5144);
            }

            else
            {
              v80 = __dst;
            }

            v81 = v75 + v79 * v79;
            v82 = v80[v77] - v74;
            v75 = v81 + v82 * v82;
            ++v73;
            --v76;
          }

          while (v76);
          v71 = sqrt(v75 / 368.0 * 0.5);
          v46 = v72;
        }
      }

      *a7 = v71;
      v13 = 1;
      v21 = -3.4028e38;
      v40 = -3.4028e38;
    }

LABEL_68:
    ++v9;
    v30 = (v30 + 1) % a4;
  }

  while (v9 != a3);
  v116 = v40;
  if (v10)
  {
    v94 = v11 + 919;
    v95 = (v23 + v24) / 368.0 * 0.5;
    v96 = 0.0;
    v97 = 368;
    do
    {
      v98 = v94 - 918;
      if (v94 >= 1286)
      {
        v99 = (a1 - 5144);
      }

      else
      {
        v99 = __dst;
      }

      v100 = v99[v94] - v95;
      if (v98 >= 1286)
      {
        v101 = (a1 - 5144);
      }

      else
      {
        v101 = __dst;
      }

      v102 = v96 + v100 * v100;
      v103 = v101[v98] - v95;
      v96 = v102 + v103 * v103;
      ++v94;
      --v97;
    }

    while (v97);
    v29 = sqrt(v96 / 368.0 * 0.5);
  }

  if (v14)
  {
    v104 = v12 + 919;
    v105 = (v33 + v34) / 368.0 * 0.5;
    v106 = 0.0;
    v107 = 368;
    do
    {
      v108 = v104 - 918;
      if (v104 >= 1286)
      {
        v109 = (a1 - 5144);
      }

      else
      {
        v109 = __dst;
      }

      v110 = v109[v104] - v105;
      if (v108 >= 1286)
      {
        v111 = (a1 - 5144);
      }

      else
      {
        v111 = __dst;
      }

      v112 = v106 + v110 * v110;
      v113 = v111[v108] - v105;
      v106 = v112 + v113 * v113;
      ++v104;
      --v107;
    }

    while (v107);
    v114 = sqrt(v106 / 368.0 * 0.5);
    v137 = v114;
  }

  v117 = v49;
  v118 = v48;
  v119 = v46;
  v120 = v44;
  v121 = v43;
  v122 = v42;
  v123 = v41;
  v124 = v29;
  v125 = v38;
  v126 = v28;
  v127 = v37;
  v128 = v27;
  v129 = v36;
  v130 = v26;
  v131 = v35;
  v132 = v25;
  v133 = v34;
  v134 = v24;
  v135 = v33;
  v136 = v23;
  if ((v13 & 1) == 0)
  {
    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 24) = 0;
    *(a7 + 16) = 0;
    *(a7 + 76) = -1;
  }

  *(a7 + 60) = 0u;
  *(a7 + 44) = 0u;
  *(a7 + 28) = 0u;
  *(a7 + 80) = 0;
  *(a7 + 86) = 0;
  memcpy(__dst, (a1 + 4 * a3 - 5144), 0x1418uLL);
  v7 = 0;
  __dst[1286] = v15;
  __dst[1287] = v16;
  __dst[1288] = v17;
  __dst[1289] = v18;
  __dst[1290] = v19;
  __dst[1291] = v20;
  __dst[1292] = v21;
  __dst[1293] = v22;
  __dst[1294] = v136;
  __dst[1295] = v134;
  __dst[1296] = v132;
  __dst[1297] = v130;
  __dst[1298] = v128;
  __dst[1299] = v126;
  __dst[1300] = v124;
  __dst[1301] = v30;
  __dst[1302] = v31;
  __dst[1303] = v32;
  __dst[1304] = v135;
  __dst[1305] = v133;
  __dst[1306] = v131;
  __dst[1307] = v129;
  __dst[1308] = v127;
  __dst[1309] = v125;
  __dst[1310] = v137;
  __dst[1311] = v116;
  __dst[1312] = v39;
  __dst[1313] = v123;
  __dst[1314] = v122;
  __dst[1315] = v121;
  __dst[1316] = v120;
  __dst[1317] = v119;
  __dst[1318] = v118;
  __dst[1319] = v117;
  return v7;
}

void Algo::asin(uint64_t a1, uint64_t a2)
{
  initThreadPool();
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  Matrix<double>::Resize(a2, v4, v5);
  v6 = *(a1 + 8);
  v12 = *(a2 + 8);
  v13 = v6;
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v11 = v5 * v4 / g_CoresNumber;
  if (g_CoresNumber == 1)
  {
    v11 = v8 * v7;
    v9 = MEMORY[0x277D85FC0];
    std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>(&v10.__t_, trigoThreadSingleArg, &v13, &v12, &v9, &v11);
  }

  v9 = MEMORY[0x277D85FC0];
  std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>(&v10.__t_, trigoThreadSingleArg, &v13, &v12, &v9, &v11);
}

void initThreadPool(void)
{
  if (!g_ThreadPool)
  {
    v0 = std::thread::hardware_concurrency();
    if (v0)
    {
      v1 = v0;
    }

    else
    {
      v1 = 2;
    }

    g_CoresNumber = v1;
    operator new[]();
  }
}

void trigoThreadSingleArg(double *a1, double *a2, double (*a3)(double), int a4)
{
  if (a4 >= 1)
  {
    v4 = a4;
    do
    {
      v8 = *a1++;
      *a2++ = a3(v8);
      --v4;
    }

    while (v4);
  }
}

void Algo::sin(uint64_t a1, uint64_t a2)
{
  initThreadPool();
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  Matrix<double>::Resize(a2, v4, v5);
  v6 = *(a1 + 8);
  v12 = *(a2 + 8);
  v13 = v6;
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v11 = v5 * v4 / g_CoresNumber;
  if (g_CoresNumber == 1)
  {
    v11 = v8 * v7;
    v9 = MEMORY[0x277D860E0];
    std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>(&v10.__t_, trigoThreadSingleArg, &v13, &v12, &v9, &v11);
  }

  v9 = MEMORY[0x277D860E0];
  std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>(&v10.__t_, trigoThreadSingleArg, &v13, &v12, &v9, &v11);
}

void Algo::atan(uint64_t a1, uint64_t a2)
{
  initThreadPool();
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  Matrix<double>::Resize(a2, v4, v5);
  v6 = *(a1 + 8);
  v12 = *(a2 + 8);
  v13 = v6;
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v11 = v5 * v4 / g_CoresNumber;
  if (g_CoresNumber == 1)
  {
    v11 = v8 * v7;
    v9 = MEMORY[0x277D85FD0];
    std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>(&v10.__t_, trigoThreadSingleArg, &v13, &v12, &v9, &v11);
  }

  v9 = MEMORY[0x277D85FD0];
  std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>(&v10.__t_, trigoThreadSingleArg, &v13, &v12, &v9, &v11);
}

void Algo::atan2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  initThreadPool();
  v6 = *(a2 + 16);
  v7 = *(a2 + 20);
  Matrix<double>::Resize(a3, v6, v7);
  v8 = *(a2 + 8);
  v15 = *(a1 + 8);
  v16 = v8;
  v14 = *(a3 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  v13 = v7 * v6 / g_CoresNumber;
  if (g_CoresNumber == 1)
  {
    v13 = v10 * v9;
    v11 = MEMORY[0x277D85FD8];
    std::thread::thread<void (&)(double const*,double const*,double *,double (*)(double,double),int),double const*&,double const*&,double *&,double (*)(double,double),int &,0>(&v12.__t_, trigoThreadMultipleArg, &v15, &v16, &v14, &v11, &v13);
  }

  v11 = MEMORY[0x277D85FD8];
  std::thread::thread<void (&)(double const*,double const*,double *,double (*)(double,double),int),double const*&,double const*&,double *&,double (*)(double,double),int &,0>(&v12.__t_, trigoThreadMultipleArg, &v15, &v16, &v14, &v11, &v13);
}

void trigoThreadMultipleArg(double *a1, double *a2, double *a3, double (*a4)(double, double), int a5)
{
  if (a5 >= 1)
  {
    v5 = a5;
    do
    {
      v10 = *a1++;
      v11 = v10;
      v12 = *a2++;
      *a3++ = a4(v11, v12);
      --v5;
    }

    while (v5);
  }
}

void Algo::tan(uint64_t a1, uint64_t a2)
{
  initThreadPool();
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  Matrix<double>::Resize(a2, v4, v5);
  v6 = *(a1 + 8);
  v12 = *(a2 + 8);
  v13 = v6;
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v11 = v5 * v4 / g_CoresNumber;
  if (g_CoresNumber == 1)
  {
    v11 = v8 * v7;
    v9 = MEMORY[0x277D86110];
    std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>(&v10.__t_, trigoThreadSingleArg, &v13, &v12, &v9, &v11);
  }

  v9 = MEMORY[0x277D86110];
  std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>(&v10.__t_, trigoThreadSingleArg, &v13, &v12, &v9, &v11);
}

void Algo::acos(uint64_t a1, uint64_t a2)
{
  initThreadPool();
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  Matrix<double>::Resize(a2, v4, v5);
  v6 = *(a1 + 8);
  v12 = *(a2 + 8);
  v13 = v6;
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v11 = v5 * v4 / g_CoresNumber;
  if (g_CoresNumber == 1)
  {
    v11 = v8 * v7;
    v9 = MEMORY[0x277D85FB0];
    std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>(&v10.__t_, trigoThreadSingleArg, &v13, &v12, &v9, &v11);
  }

  v9 = MEMORY[0x277D85FB0];
  std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>(&v10.__t_, trigoThreadSingleArg, &v13, &v12, &v9, &v11);
}

void Algo::cos(uint64_t a1, uint64_t a2)
{
  initThreadPool();
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  Matrix<double>::Resize(a2, v4, v5);
  v6 = *(a1 + 8);
  v12 = *(a2 + 8);
  v13 = v6;
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v11 = v5 * v4 / g_CoresNumber;
  if (g_CoresNumber == 1)
  {
    v11 = v8 * v7;
    v9 = MEMORY[0x277D85FF8];
    std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>(&v10.__t_, trigoThreadSingleArg, &v13, &v12, &v9, &v11);
  }

  v9 = MEMORY[0x277D85FF8];
  std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>(&v10.__t_, trigoThreadSingleArg, &v13, &v12, &v9, &v11);
}

void Algo::cart2sph(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Matrix<double>::DotSquare(a1, v24);
  Matrix<double>::DotSquare(a2, v23);
  Matrix<double>::operator+(v24, v23, &v29);
  Matrix<double>::Sqrt(&v29, v25);
  Matrix<double>::~Matrix(&v29);
  Matrix<double>::~Matrix(v23);
  Matrix<double>::~Matrix(v24);
  if (a6)
  {
    Matrix<double>::DotSquare(v25, v23);
    Matrix<double>::DotSquare(a3, v22);
    Matrix<double>::operator+(v23, v22, v24);
    Matrix<double>::Sqrt(v24, &v29);
    Matrix<double>::Resize(a6, v31, v32);
    memcpy(*(a6 + 8), v30, 8 * *(a6 + 16) * *(a6 + 20));
    Matrix<double>::~Matrix(&v29);
    Matrix<double>::~Matrix(v24);
    Matrix<double>::~Matrix(v22);
    Matrix<double>::~Matrix(v23);
  }

  v18[0] = &unk_283812C58;
  v10 = *(a3 + 8);
  v11 = *(a3 + 16);
  v12 = *(a3 + 20);
  v29 = &unk_283812C58;
  v30 = v10;
  v31 = v11;
  v32 = v12;
  v33 = 0;
  v18[1] = v10;
  v19 = v11;
  v20 = v12;
  v21 = 0;
  v13 = Matrix<double>::~Matrix(&v29);
  v14[0] = &unk_283812C58;
  v29 = &unk_283812C58;
  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = 0;
  v14[1] = v26;
  v15 = v27;
  v16 = v28;
  v17 = 0;
  Matrix<double>::~Matrix(v13);
  Algo::atan2(v18, v14, a5);
}

void sub_224918ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  Matrix<double>::~Matrix(v28 - 96);
  Matrix<double>::~Matrix(v28 - 160);
  Matrix<double>::~Matrix(&a25);
  Matrix<double>::~Matrix(va);
  Matrix<double>::~Matrix(v28 - 128);
  _Unwind_Resume(a1);
}

void Algo::LinearSpace(uint64_t *__return_ptr a1@<X8>, Algo *this@<X0>, double a3@<D0>, double a4@<D1>)
{
  v4 = this;
  v9 = a3;
  Matrix<double>::Matrix(a1, 1, this);
  *a1 = &unk_283812C88;
  v8 = (a4 - a3) / (v4 + -1.0);
  vDSPVramp<double>(&v9, &v8, a1[1], 1, v4);
}

void Algo::LinearSpaceByStep(Algo *this@<X0>, double a2@<D0>, double a3@<D1>, uint64_t a4@<X8>)
{
  v4 = this;
  v8 = a2;
  v6 = (a3 - a2) / this;
  Matrix<double>::Matrix(a4, 1, v6 + 1);
  *a4 = &unk_283812C88;
  v7 = v4;
  vDSPVramp<double>(&v8, &v7, *(a4 + 8), 1, v6 + 1);
}

uint64_t Algo::Fspecial@<X0>(int a1@<W0>, Algo *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  Matrix<double>::Matrix(a3, a2, a2);
  Matrix<double>::Matrix(v40, a2, a2);
  Matrix<double>::Matrix(v39, a2, a2);
  if (!a1)
  {
    v8 = vcvtd_n_f64_s32(a2 - 1, 1uLL);
    Algo::LinearSpace(&v35, a2, -v8, v8);
    v31[0] = &unk_283812C58;
    v41 = &unk_283812C58;
    v42 = v36;
    v43 = v37;
    v44 = v38;
    v45 = 0;
    v31[1] = v36;
    v32 = v37;
    v33 = v38;
    v34 = 0;
    v9 = Matrix<double>::~Matrix(&v41);
    v27[0] = &unk_283812C58;
    v41 = &unk_283812C58;
    v42 = v36;
    v43 = v37;
    v44 = v38;
    v45 = 0;
    v27[1] = v36;
    v28 = v37;
    v29 = v38;
    v30 = 0;
    Matrix<double>::~Matrix(v9);
    Algo::MeshGrid<double>(v31, v27, v40, v39);
    Matrix<double>::~Matrix(v27);
    Matrix<double>::~Matrix(v31);
    Matrix<double>::DotSquare(v40, v26);
    Matrix<double>::DotSquare(v39, v25);
    Matrix<double>::operator+(v26, v25, &v41);
    Matrix<double>::~Matrix(v25);
    Matrix<double>::~Matrix(v26);
    v10 = v43;
    v11 = v44;
    if (v44 * v43)
    {
      v12 = v42;
      v13 = &v42[v44 * v43];
      do
      {
        *v12 = -1.0 / ((a4 + a4) * a4) * *v12;
        ++v12;
      }

      while (v12 < v13);
    }

    Matrix<double>::Resize(a3, v10, v11);
    memcpy(*(a3 + 8), v42, 8 * *(a3 + 16) * *(a3 + 20));
    v14 = *(a3 + 8);
    v15 = *(a3 + 20) * *(a3 + 16);
    if (v15)
    {
      v16 = &v14[v15];
      do
      {
        *v14 = exp(*v14);
        ++v14;
      }

      while (v14 < v16);
      v14 = *(a3 + 8);
    }

    v26[0] = 0.0;
    vDSPMax<double>(v14, 1, v26, v15);
    v17 = *(a3 + 8);
    if (a2)
    {
      v18 = v26[0] * 2.22044605e-16;
      v19 = a2 * a2;
      if ((a2 * a2) <= 1)
      {
        v19 = 1;
      }

      v20 = 0.0;
      do
      {
        v21 = *v17;
        if (*v17 < v18)
        {
          *v17 = 0.0;
          v21 = 0.0;
        }

        v20 = v20 + v21;
        ++v17;
        --v19;
      }

      while (v19);
      v17 = *(a3 + 8);
    }

    else
    {
      v20 = 0.0;
    }

    v22 = *(a3 + 20) * *(a3 + 16);
    if (v22)
    {
      v23 = &v17[v22];
      do
      {
        *v17 = *v17 / v20;
        ++v17;
      }

      while (v17 < v23);
    }

    Matrix<double>::~Matrix(&v41);
    Matrix<double>::~Matrix(&v35);
  }

  Matrix<double>::~Matrix(v39);
  return Matrix<double>::~Matrix(v40);
}

void sub_224919414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  Matrix<double>::~Matrix(v29 - 96);
  Matrix<double>::~Matrix(&a25);
  Matrix<double>::~Matrix(va);
  Matrix<double>::~Matrix(v29 - 128);
  Matrix<double>::~Matrix(v28);
  _Unwind_Resume(a1);
}

void Algo::calcWeightedCenterOfMass(uint64_t a1, void *a2, uint64_t a3, long double a4)
{
  v7 = -1431655765 * ((a2[1] - *a2) >> 3);
  Matrix<double>::Resize(a3, 3, v7);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  if (v7)
  {
    v8 = 0;
    v24 = 0;
    v9 = 0;
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    while (1)
    {
      v12 = (*a2 + 24 * v9);
      if (&v25 != v12)
      {
        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v25, *v12, v12[1], (v12[1] - *v12) >> 2);
        v8 = v25;
        v24 = v26;
      }

      v13 = (v24 - v8) >> 2;
      if (v13 >= 1)
      {
        break;
      }

      v18 = 0.0;
      v17 = 0.0;
      v15 = 0.0;
      if (v13)
      {
        goto LABEL_10;
      }

LABEL_15:
      if (++v9 == v7)
      {
        if (v8)
        {
          v26 = v8;
          operator delete(v8);
        }

        return;
      }
    }

    v14 = ((v24 - v8) >> 2) & 0x7FFFFFFF;
    v15 = 0.0;
    v16 = v8;
    v17 = 0.0;
    v18 = 0.0;
    do
    {
      v19 = *v16;
      v16 += 4;
      v20 = pow(*(v10 + 8 * v19), a4);
      v18 = v18 + v20 * (v19 % v11);
      v17 = v17 + v20 * (v19 / v11);
      v15 = v15 + v20;
      --v14;
    }

    while (v14);
LABEL_10:
    v21 = *(a3 + 16);
    if (!v21 || (v22 = *(a3 + 20), v9 >= v22) || (*(*(a3 + 8) + 8 * v9) = v13, v21 == 1) || (*(*(a3 + 8) + 8 * v9 + 8 * v22) = v18 / v15, v21 <= 2))
    {
      __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
    }

    *(*(a3 + 8) + 8 * v9 + 8 * (2 * v22)) = v17 / v15;
    goto LABEL_15;
  }
}

void sub_224919694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Algo::StdFilter(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 > 0)
  {
    Matrix<double>::Resize(a3, *(a1 + 16), *(a1 + 20));
    Matrix<double>::DotSquare(a1, v12);
    v9 = 0;
    v10 = 0;
    v8 = &unk_283812C58;
    v11 = 0;
    v5 = 0;
    v6 = 0;
    v4 = &unk_283812C58;
    v7 = 0;
    ImageUtils::IntegralImage<double>();
  }

  Algo::StdFilter();
}

void sub_2249199C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  Matrix<double>::~Matrix(va);
  Matrix<double>::~Matrix(va1);
  Matrix<double>::~Matrix(va2);
  _Unwind_Resume(a1);
}

void Algo::NormXcorr2d(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Matrix<double>::Resize(a3, *(a2 + 16), *(a2 + 20));
  v13[0] = 0.0;
  vDSPVfill<double>(v13, *(a3 + 8), 1, *(a3 + 20) * *(a3 + 16));
  Matrix<double>::DotSquare(a2, v13);
  v10 = 0;
  v11 = 0;
  v9 = &unk_283812C58;
  v12 = 0;
  v6 = 0;
  v7 = 0;
  v5 = &unk_283812C58;
  v8 = 0;
  ImageUtils::IntegralImage<double>();
}

void sub_224919EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  Matrix<double>::~Matrix(&a19);
  Matrix<double>::~Matrix(&a23);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t Algo::FundMatrix3x3(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4, double *a5, double a6)
{
  Matrix<double>::Matrix(&v132, 9, *(a1 + 20));
  v132 = &unk_283814630;
  v117 = 3;
  v118 = v134;
  v129 = 3;
  v130 = v134;
  v131 = 0;
  v115 = &unk_283812C58;
  v116 = 0;
  v119 = 0;
  v127 = &unk_283812E40;
  v128 = &v133[48 * v134];
  Matrix<double>::~Matrix(&v115);
  Matrix<double>::Matrix(&v124, 3, *(a2 + 20));
  v124 = &unk_283812E40;
  v123 = 0;
  memset(v122, 0, sizeof(v122));
  v121 = 0;
  memset(v120, 0, sizeof(v120));
  Algo::Normalize2DPts(a1, &v127, v122);
  Algo::Normalize2DPts(a2, &v124, v120);
  v117 = 1;
  v118 = v126;
  v108 = v126;
  v109 = 0;
  v115 = &unk_283812C58;
  v116 = 0;
  v119 = 0;
  v105 = &unk_283812C88;
  v106 = v125;
  v107 = 1;
  Matrix<double>::~Matrix(&v115);
  v117 = 1;
  v118 = v130;
  LODWORD(v136) = 1;
  DWORD1(v136) = v130;
  BYTE8(v136) = 0;
  v115 = &unk_283812C58;
  v116 = 0;
  v119 = 0;
  *&v135 = &unk_283812C88;
  *(&v135 + 1) = v128;
  Matrix<double>::~Matrix(&v115);
  MatrixNxPts<1u,double>::DotMult(&v105, &v135, &v110);
  v117 = 1;
  v118 = v134;
  DWORD1(v101) = v134;
  BYTE8(v101) = 0;
  v115 = &unk_283812C58;
  v116 = 0;
  v119 = 0;
  __dst[0] = &unk_283812C88;
  __dst[1] = v133;
  LODWORD(v101) = 1;
  Matrix<double>::~Matrix(&v115);
  Matrix<double>::Resize(__dst, v112, v113);
  memcpy(__dst[1], __src, 8 * v101 * DWORD1(v101));
  Matrix<double>::~Matrix(__dst);
  Matrix<double>::~Matrix(&v110);
  Matrix<double>::~Matrix(&v135);
  Matrix<double>::~Matrix(&v105);
  v117 = 1;
  v118 = v126;
  v108 = v126;
  v109 = 0;
  v115 = &unk_283812C58;
  v116 = 0;
  v119 = 0;
  v105 = &unk_283812C88;
  v106 = v125;
  v107 = 1;
  Matrix<double>::~Matrix(&v115);
  v117 = 1;
  v118 = v130;
  LODWORD(v136) = 1;
  DWORD1(v136) = v130;
  BYTE8(v136) = 0;
  v115 = &unk_283812C58;
  v116 = 0;
  v119 = 0;
  *&v135 = &unk_283812C88;
  *(&v135 + 1) = &v128[8 * v130];
  Matrix<double>::~Matrix(&v115);
  MatrixNxPts<1u,double>::DotMult(&v105, &v135, &v110);
  v117 = 1;
  v118 = v134;
  DWORD1(v101) = v134;
  BYTE8(v101) = 0;
  v115 = &unk_283812C58;
  v116 = 0;
  v119 = 0;
  __dst[0] = &unk_283812C88;
  __dst[1] = &v133[8 * v134];
  LODWORD(v101) = 1;
  Matrix<double>::~Matrix(&v115);
  Matrix<double>::Resize(__dst, v112, v113);
  memcpy(__dst[1], __src, 8 * v101 * DWORD1(v101));
  Matrix<double>::~Matrix(__dst);
  Matrix<double>::~Matrix(&v110);
  Matrix<double>::~Matrix(&v135);
  Matrix<double>::~Matrix(&v105);
  v117 = 1;
  v118 = v126;
  __src = v125;
  v113 = v126;
  v114 = 0;
  v115 = &unk_283812C58;
  v116 = 0;
  v119 = 0;
  v110 = &unk_283812C88;
  v112 = 1;
  Matrix<double>::~Matrix(&v115);
  v117 = 1;
  v118 = v134;
  v108 = v134;
  v109 = 0;
  v115 = &unk_283812C58;
  v116 = 0;
  v119 = 0;
  v105 = &unk_283812C88;
  v106 = &v133[16 * v134];
  v107 = 1;
  Matrix<double>::~Matrix(&v115);
  Matrix<double>::Resize(&v105, v112, v113);
  memcpy(v106, __src, 8 * v107 * v108);
  Matrix<double>::~Matrix(&v105);
  Matrix<double>::~Matrix(&v110);
  v117 = 1;
  v118 = v126;
  v108 = v126;
  v109 = 0;
  v115 = &unk_283812C58;
  v116 = 0;
  v119 = 0;
  v105 = &unk_283812C88;
  v106 = &v125[8 * v126];
  v107 = 1;
  Matrix<double>::~Matrix(&v115);
  v117 = 1;
  v118 = v130;
  LODWORD(v136) = 1;
  DWORD1(v136) = v130;
  BYTE8(v136) = 0;
  v115 = &unk_283812C58;
  v116 = 0;
  v119 = 0;
  *&v135 = &unk_283812C88;
  *(&v135 + 1) = v128;
  Matrix<double>::~Matrix(&v115);
  MatrixNxPts<1u,double>::DotMult(&v105, &v135, &v110);
  v117 = 1;
  v118 = v134;
  DWORD1(v101) = v134;
  BYTE8(v101) = 0;
  v115 = &unk_283812C58;
  v116 = 0;
  v119 = 0;
  __dst[0] = &unk_283812C88;
  __dst[1] = &v133[24 * v134];
  LODWORD(v101) = 1;
  Matrix<double>::~Matrix(&v115);
  Matrix<double>::Resize(__dst, v112, v113);
  memcpy(__dst[1], __src, 8 * v101 * DWORD1(v101));
  Matrix<double>::~Matrix(__dst);
  Matrix<double>::~Matrix(&v110);
  Matrix<double>::~Matrix(&v135);
  Matrix<double>::~Matrix(&v105);
  v117 = 1;
  v118 = v126;
  v108 = v126;
  v109 = 0;
  v115 = &unk_283812C58;
  v116 = 0;
  v119 = 0;
  v105 = &unk_283812C88;
  v106 = &v125[8 * v126];
  v107 = 1;
  Matrix<double>::~Matrix(&v115);
  v117 = 1;
  v118 = v130;
  LODWORD(v136) = 1;
  DWORD1(v136) = v130;
  BYTE8(v136) = 0;
  v115 = &unk_283812C58;
  v116 = 0;
  v119 = 0;
  *&v135 = &unk_283812C88;
  *(&v135 + 1) = &v128[8 * v130];
  Matrix<double>::~Matrix(&v115);
  MatrixNxPts<1u,double>::DotMult(&v105, &v135, &v110);
  v117 = 1;
  v118 = v134;
  DWORD1(v101) = v134;
  BYTE8(v101) = 0;
  v115 = &unk_283812C58;
  v116 = 0;
  v119 = 0;
  __dst[0] = &unk_283812C88;
  __dst[1] = &v133[32 * v134];
  LODWORD(v101) = 1;
  Matrix<double>::~Matrix(&v115);
  Matrix<double>::Resize(__dst, v112, v113);
  memcpy(__dst[1], __src, 8 * v101 * DWORD1(v101));
  Matrix<double>::~Matrix(__dst);
  Matrix<double>::~Matrix(&v110);
  Matrix<double>::~Matrix(&v135);
  Matrix<double>::~Matrix(&v105);
  v117 = 1;
  v118 = v126;
  __src = &v125[8 * v126];
  v113 = v126;
  v114 = 0;
  v115 = &unk_283812C58;
  v116 = 0;
  v119 = 0;
  v110 = &unk_283812C88;
  v112 = 1;
  Matrix<double>::~Matrix(&v115);
  v117 = 1;
  v118 = v134;
  v108 = v134;
  v109 = 0;
  v115 = &unk_283812C58;
  v116 = 0;
  v119 = 0;
  v105 = &unk_283812C88;
  v106 = &v133[40 * v134];
  v107 = 1;
  Matrix<double>::~Matrix(&v115);
  Matrix<double>::Resize(&v105, v112, v113);
  memcpy(v106, __src, 8 * v107 * v108);
  Matrix<double>::~Matrix(&v105);
  Matrix<double>::~Matrix(&v110);
  MatrixNxPts<9u,double>::MultAxBTag<9u>(&v132, &v132, &v115);
  bzero(&v110, 0x288uLL);
  bzero(&v105, 0x288uLL);
  v104 = 0.0;
  v102 = 0u;
  v103 = 0u;
  *__dst = 0u;
  v101 = 0u;
  MatrixMxN<9u,9u,double>::SVDMxN<9u,void>(&v115, &v110, __dst, &v105);
  if (a4)
  {
    v16 = 0;
    v137 = v102;
    v138 = v103;
    v139 = v104;
    v135 = *__dst;
    v136 = v101;
    v17 = 1;
    do
    {
      v18 = v17;
      v19 = v16;
      do
      {
        if (*(&v135 + v18) < *(&v135 + v19))
        {
          v19 = v18;
        }

        ++v18;
      }

      while (v18 != 9);
      v20 = *(&v135 + v19);
      *(&v135 + v19) = *(&v135 + v16);
      *(&v135 + v16) = v20;
      ++v17;
      ++v16;
    }

    while (v16 != 8);
    v21 = v139 / *(&v135 + 1);
    if (a5)
    {
      *a5 = v21;
    }

    *a4 = v21 < a6;
  }

  v22 = 0;
  v23 = 64;
  v24 = a3;
  do
  {
    v25 = 0;
    v26 = v23;
    do
    {
      *(v24 + v25) = *(&v105 + v26);
      v26 += 72;
      v25 += 8;
    }

    while (v25 != 24);
    ++v22;
    v23 += 216;
    v24 += 24;
  }

  while (v22 != 3);
  v139 = 0.0;
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v99 = 0;
  memset(v98, 0, sizeof(v98));
  v95 = 0;
  v96 = 0;
  v97 = 0;
  MatrixMxN<3u,3u,double>::SVDMxN<3u,void>(a3, &v135, &v95, v98, v12, v13, v14, v15);
  v27 = 0;
  v91 = 0;
  v94 = 0u;
  v93 = 0u;
  v90 = 0u;
  v89 = v95;
  v92 = v96;
  v83 = 0;
  v81 = 0u;
  v82 = 0u;
  v28 = &v135;
  v79 = 0u;
  v80 = 0u;
  do
  {
    v29 = 0;
    v30 = &v89;
    do
    {
      v31 = 0;
      v32 = 0.0;
      v33 = v30;
      do
      {
        v34 = *v33;
        v33 += 3;
        v32 = v32 + *(v28 + v31) * v34;
        v31 += 8;
      }

      while (v31 != 24);
      *(&v79 + 3 * v27 + v29++) = v32;
      ++v30;
    }

    while (v29 != 3);
    ++v27;
    v28 = (v28 + 24);
  }

  while (v27 != 3);
  v35 = 0;
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v36 = &v74;
  v37 = v98;
  do
  {
    v38 = 0;
    v39 = v36;
    do
    {
      *v39 = *(v37 + v38);
      v39 = (v39 + 24);
      v38 += 8;
    }

    while (v38 != 24);
    ++v35;
    v36 = (v36 + 8);
    v37 = (v37 + 24);
  }

  while (v35 != 3);
  v40 = 0;
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v41 = &v79;
  do
  {
    v42 = 0;
    v43 = &v74;
    do
    {
      v44 = 0;
      v45 = 0.0;
      v46 = v43;
      do
      {
        v47 = *v46;
        v46 += 3;
        v45 = v45 + *(v41 + v44) * v47;
        v44 += 8;
      }

      while (v44 != 24);
      *(&v84 + 3 * v40 + v42++) = v45;
      v43 = (v43 + 8);
    }

    while (v42 != 3);
    ++v40;
    v41 = (v41 + 24);
  }

  while (v40 != 3);
  v48 = 0;
  v49 = v87;
  *(a3 + 32) = v86;
  *(a3 + 48) = v49;
  *(a3 + 64) = v88;
  v50 = v85;
  *a3 = v84;
  *(a3 + 16) = v50;
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v51 = &v74;
  v52 = v120;
  v74 = 0u;
  v75 = 0u;
  do
  {
    v53 = 0;
    v54 = v51;
    do
    {
      *v54 = *(v52 + v53);
      v54 = (v54 + 24);
      v53 += 8;
    }

    while (v53 != 24);
    ++v48;
    v51 = (v51 + 8);
    v52 = (v52 + 24);
  }

  while (v48 != 3);
  v55 = 0;
  v83 = 0;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v56 = &v74;
  do
  {
    v57 = 0;
    v58 = a3;
    do
    {
      v59 = 0;
      v60 = 0.0;
      v61 = v58;
      do
      {
        v62 = *v61;
        v61 += 3;
        v60 = v60 + *(v56 + v59) * v62;
        v59 += 8;
      }

      while (v59 != 24);
      *(&v79 + 3 * v55 + v57++) = v60;
      v58 += 8;
    }

    while (v57 != 3);
    ++v55;
    v56 = (v56 + 24);
  }

  while (v55 != 3);
  v63 = 0;
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v64 = &v79;
  do
  {
    v65 = 0;
    v66 = v122;
    do
    {
      v67 = 0;
      v68 = 0.0;
      v69 = v66;
      do
      {
        v70 = *v69;
        v69 += 3;
        v68 = v68 + *(v64 + v67) * v70;
        v67 += 8;
      }

      while (v67 != 24);
      *(&v84 + 3 * v63 + v65++) = v68;
      v66 = (v66 + 8);
    }

    while (v65 != 3);
    ++v63;
    v64 = (v64 + 24);
  }

  while (v63 != 3);
  v71 = v87;
  *(a3 + 32) = v86;
  *(a3 + 48) = v71;
  *(a3 + 64) = v88;
  v72 = v85;
  *a3 = v84;
  *(a3 + 16) = v72;
  Matrix<double>::~Matrix(&v124);
  Matrix<double>::~Matrix(&v127);
  Matrix<double>::~Matrix(&v132);
  return 0;
}

void sub_22491ADB0(_Unwind_Exception *a1)
{
  Matrix<double>::~Matrix(&STACK[0xA20]);
  Matrix<double>::~Matrix(v1 - 240);
  Matrix<double>::~Matrix(v1 - 208);
  _Unwind_Resume(a1);
}

uint64_t Algo::Normalize2DPts(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Matrix<double>::Matrix<double const>(&v30, *(a1 + 8), 3, *(a1 + 20), 1);
  v30 = &unk_283812E40;
  v5 = v33;
  if (v32)
  {
    v6 = v33 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

  if (v32 <= 1)
  {
    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

  if (v32 == 2)
  {
    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

  v7 = 0;
  v8 = v31;
  v9 = &v31[v33];
  v10 = &v31[2 * v33];
  v11 = 0.0;
  v12 = 0.0;
  do
  {
    v8[v7] = v8[v7] / v10[v7];
    v9[v7] = v9[v7] / v10[v7];
    v10[v7] = 1.0;
    v11 = v11 + v8[v7];
    v12 = v12 + v9[v7++];
  }

  while (v5 != v7);
  v13 = *(a2 + 16);
  if (!v13 || (v14 = *(a2 + 20), !v14))
  {
    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

  if (v13 == 1)
  {
    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

  if (v13 <= 2)
  {
    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

  v15 = v11 / v5;
  v16 = *(a2 + 8);
  v17 = 0.0;
  v18 = v31;
  v19 = v5;
  v20 = v12 / v5;
  do
  {
    v21 = *v18 - v15;
    *v16 = v21;
    v22 = v18[v5] - v20;
    v16[v14] = v22;
    v23 = sqrt(v22 * v22 + v21 * v21);
    v16[(2 * v14)] = v23;
    v17 = v17 + v23;
    ++v16;
    ++v18;
    --v19;
  }

  while (v19);
  v24 = 1.41421356 / (v17 / v5);
  *a3 = v24;
  *(a3 + 8) = 0;
  *(a3 + 16) = -(v24 * v15);
  *(a3 + 24) = 0;
  *(a3 + 32) = v24;
  *(a3 + 40) = -(v24 * v20);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0x3FF0000000000000;
  MatrixMxN<3u,3u,double>::operator*<3u>(&v26, a3, &v30);
  Matrix<double>::Resize(a2, v28, v29);
  memcpy(*(a2 + 8), __src, 8 * *(a2 + 16) * *(a2 + 20));
  Matrix<double>::~Matrix(&v26);
  Matrix<double>::~Matrix(&v30);
  return 0;
}

void sub_22491B108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  Matrix<double>::~Matrix(&a9);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

double *MatrixNxPts<9u,double>::MultAxBTag<9u>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  bzero(a3, 0x288uLL);
  v6 = 0;
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  v10 = *(a2 + 8);
  do
  {
    if (v6 == v7 || (v11 = *(a1 + 20)) == 0)
    {
      MatrixNxPts<3u,double>::CloneColumn();
    }

    v12 = 0;
    v13 = *(a1 + 8) + 8 * (v11 * v6);
    do
    {
      if (v12 >= v8 || !v9)
      {
        MatrixNxPts<3u,double>::CloneColumn();
      }

      result = (v10 + 8 * (v9 * v12));
      v15 = 0.0;
      v16 = v11;
      v17 = v13;
      do
      {
        v18 = *v17++;
        v19 = v18;
        v20 = *result++;
        v15 = v15 + v19 * v20;
        --v16;
      }

      while (v16);
      *(a3 + 9 * v6 + v12++) = v15;
    }

    while (v12 != 9);
    ++v6;
  }

  while (v6 != 9);
  return result;
}

uint64_t MatrixMxN<9u,9u,double>::SVDMxN<9u,void>(void *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, __src, sizeof(__dst));
  v8 = &__dst[8];
  v9 = &__dst[72];
  for (i = 1; i != 9; ++i)
  {
    v11 = 0;
    v12 = v8;
    do
    {
      v13 = *&v9[8 * v11];
      *&v9[8 * v11] = *v12;
      *v12 = v13;
      v12 += 9;
      ++v11;
    }

    while (i != v11);
    v8 += 8;
    v9 += 72;
  }

  MatrixMxN<3u,3u,double>::svdLapack(__src, __dst, 9, 9, a2, a3, a4);
  v14 = (a2 + 8);
  v15 = a2 + 72;
  for (j = 1; j != 9; ++j)
  {
    v17 = 0;
    v18 = v14;
    do
    {
      v19 = *(v15 + 8 * v17);
      *(v15 + 8 * v17) = *v18;
      *v18 = v19;
      v18 += 9;
      ++v17;
    }

    while (j != v17);
    ++v14;
    v15 += 72;
  }

  return 0;
}

uint64_t Algo::RandomSample(unsigned int a1, CRandomGenerator *this, uint64_t a3)
{
  v3 = *(a3 + 20);
  if (v3)
  {
    v6 = 0;
    v7 = a1;
    do
    {
      v8 = (CRandomGenerator::UniformRand(this) * v7);
      if (v6)
      {
        v9 = 0;
        while (*(*(a3 + 8) + 4 * v9) != v8)
        {
          if (v6 == ++v9)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        LODWORD(v9) = 0;
      }

      if (v9 == v6)
      {
LABEL_10:
        *(*(a3 + 8) + 4 * v6++) = v8;
      }
    }

    while (v6 < v3);
  }

  return 0;
}

uint64_t Algo::FundDist(const double *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, double a6)
{
  Matrix<double>::Matrix(v52, 1, *(a2 + 20));
  v52[0] = &unk_283812C88;
  if (*(a2 + 20))
  {
    v12 = 0;
    do
    {
      MatrixNxPts<3u,double>::CloneColumn(a2, v12, &v41);
      MatrixNxPts<3u,double>::CloneColumn(a3, v12, &v49);
      v13 = 0;
      v46 = 0;
      v47 = 0;
      v14 = a1;
      v48 = 0;
      do
      {
        v15 = 0;
        v16 = 0.0;
        v17 = v14;
        do
        {
          v18 = *v17;
          v17 += 3;
          v16 = v16 + *(&v49 + v15) * v18;
          v15 += 8;
        }

        while (v15 != 24);
        *(&v46 + v13++) = v16;
        ++v14;
      }

      while (v13 != 3);
      v19 = 0;
      v20 = 0.0;
      do
      {
        v20 = v20 + *(&v46 + v19) * *(&v41 + v19);
        v19 += 8;
      }

      while (v19 != 24);
      *(v52[1] + 8 * v12++) = v20;
    }

    while (v12 < *(a2 + 20));
  }

  MatrixMxN<3u,3u,double>::operator*<3u>(&v49, a1, a2);
  v21 = 0;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v22 = &v41;
  do
  {
    v23 = 0;
    v24 = v22;
    do
    {
      *v24 = a1[v23];
      v24 += 3;
      ++v23;
    }

    while (v23 != 3);
    ++v21;
    v22 = (v22 + 8);
    a1 += 3;
  }

  while (v21 != 3);
  MatrixMxN<3u,3u,double>::operator*<3u>(&v46, &v41, a3);
  Matrix<double>::DotProductInPlace(&v49, &v49);
  Matrix<double>::DotProductInPlace(&v46, &v46);
  MatrixNxPts<1u,double>::DotMult(v52, v52, v38);
  LODWORD(v42) = 1;
  DWORD1(v42) = v51;
  v35 = 1;
  v36 = v51;
  v37 = 0;
  *&v41 = &unk_283812C58;
  *(&v41 + 1) = 0;
  BYTE8(v42) = 0;
  v34[0] = &unk_283812C88;
  v34[1] = v50;
  Matrix<double>::~Matrix(&v41);
  LODWORD(v42) = 1;
  DWORD1(v42) = v51;
  v31 = 1;
  v32 = v51;
  v33 = 0;
  *&v41 = &unk_283812C58;
  *(&v41 + 1) = 0;
  BYTE8(v42) = 0;
  v29 = &unk_283812C88;
  v30 = v50 + 8 * v51;
  Matrix<double>::~Matrix(&v41);
  Matrix<double>::operator+=(v34, &v29);
  Matrix<double>::~Matrix(&v29);
  LODWORD(v42) = 1;
  DWORD1(v42) = HIDWORD(v48);
  v31 = 1;
  v32 = HIDWORD(v48);
  v33 = 0;
  *&v41 = &unk_283812C58;
  *(&v41 + 1) = 0;
  BYTE8(v42) = 0;
  v29 = &unk_283812C88;
  v30 = v47;
  Matrix<double>::~Matrix(&v41);
  Matrix<double>::operator+=(v34, &v29);
  Matrix<double>::~Matrix(&v29);
  LODWORD(v42) = 1;
  DWORD1(v42) = HIDWORD(v48);
  v31 = 1;
  v32 = HIDWORD(v48);
  v33 = 0;
  *&v41 = &unk_283812C58;
  *(&v41 + 1) = 0;
  BYTE8(v42) = 0;
  v29 = &unk_283812C88;
  v30 = v47 + 8 * HIDWORD(v48);
  Matrix<double>::~Matrix(&v41);
  Matrix<double>::operator+=(v34, &v29);
  Matrix<double>::~Matrix(&v29);
  Matrix<double>::DotDivInPlace(v38, v34);
  *a5 = 0;
  v25 = v40;
  if (v40)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      if (fabs(*(v39 + 8 * v27)) < a6)
      {
        *(*(a4 + 8) + 4 * v26) = v27;
        v26 = *a5 + 1;
        *a5 = v26;
        v25 = v40;
      }

      ++v27;
    }

    while (v27 < v25);
  }

  Matrix<double>::~Matrix(v34);
  Matrix<double>::~Matrix(v38);
  Matrix<double>::~Matrix(&v46);
  Matrix<double>::~Matrix(&v49);
  Matrix<double>::~Matrix(v52);
  return 0;
}

void sub_22491B7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  Matrix<double>::~Matrix(&a13);
  Matrix<double>::~Matrix(&a17);
  Matrix<double>::~Matrix(va);
  Matrix<double>::~Matrix(v30 - 160);
  Matrix<double>::~Matrix(v30 - 128);
  _Unwind_Resume(a1);
}

void sub_22491B9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  Matrix<BOOL>::~Matrix(va);
  Matrix<BOOL>::~Matrix(va1);
  _Unwind_Resume(a1);
}

uint64_t Algo::Ransac(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7, uint64_t a8, double a9, double a10, uint64_t a11, unsigned int *a12)
{
  v20 = *(a1 + 20);
  CRandomGenerator::CRandomGenerator(v45, a6);
  v21 = 0;
  v32 = 0;
  *a12 = 0;
  v44 = 0;
  v43 = 0;
  v22 = 1.0;
  do
  {
    if (v22 <= v21)
    {
      break;
    }

    v34 = v21;
    v42 = 0;
    v23 = 1;
    v24 = 1;
    memset(v41, 0, sizeof(v41));
    while (v23)
    {
      Matrix<unsigned int>::Matrix(&v37, 1, a3);
      v37 = &unk_283814350;
      Algo::RandomSample(v20, v45, &v37);
      if (!a7)
      {
        goto LABEL_13;
      }

      if (a3)
      {
        v25 = (v40 * v39);
        v26 = __src;
        v27 = a3;
        while (1)
        {
          if (!v25 || (v28 = *v26, *(a8 + 20) * *(a8 + 16) <= v28))
          {
            __assert_rtn("operator()", "Matrix.hpp", 131, "index < m_rows * m_cols");
          }

          if (*(*(a8 + 8) + v28))
          {
            break;
          }

          --v25;
          ++v26;
          if (!--v27)
          {
            goto LABEL_12;
          }
        }

LABEL_13:
        Matrix<double>::Matrix(v36, 3, a3);
        *v36 = &unk_283812E40;
        Matrix<double>::Matrix(v35, 3, a3);
        v35[0] = &unk_283812E40;
        MatrixNxPts<3u,double>::CopyCols(v36, a1, &v37);
        MatrixNxPts<3u,double>::CopyCols(v35, a2, &v37);
        Algo::FundMatrix3x3(v36, v35, v41, &v43, &v44, a10);
        if (a7)
        {
          v23 = !v43;
        }

        else
        {
          v23 = 0;
        }

        Matrix<double>::~Matrix(v35);
        Matrix<double>::~Matrix(v36);
        goto LABEL_17;
      }

LABEL_12:
      v23 = 1;
LABEL_17:
      ++v24;
      Matrix<unsigned int>::~Matrix(&v37);
      if (v24 > a4)
      {
        break;
      }
    }

    Matrix<unsigned int>::Matrix(&v37, 1, *(a1 + 20));
    v37 = &unk_283814350;
    v36[0] = 0;
    Algo::FundDist(v41, a1, a2, &v37, v36, a9);
    v29 = v36[0];
    if (v36[0] > *a12)
    {
      Matrix<float>::Resize(a11, v39, v40);
      memcpy(*(a11 + 8), __src, 4 * *(a11 + 16) * *(a11 + 20));
      *a12 = v29;
      v30 = pow(v29 / v20, a3);
      v32 = 1;
      v22 = -6.90775528 / log(fmin(fmax(1.0 - v30, 2.22044605e-16), 1.0));
    }

    v21 = v34 + 1;
    Matrix<unsigned int>::~Matrix(&v37);
  }

  while (v34 + 1 <= a5);
  CRandomGenerator::~CRandomGenerator(v45);
  return (v32 & 1u) - 1;
}

void sub_22491BD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  CRandomGenerator::~CRandomGenerator(va);
  _Unwind_Resume(a1);
}

uint64_t Algo::RansacHomography(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, uint64_t a7, _DWORD *a8, double a9, _DWORD *a10)
{
  *a8 = 0;
  CRandomGenerator::CRandomGenerator(v11, a6);
  if (0 < 1.0)
  {
    operator new[]();
  }

  if (a10)
  {
    *a10 = -1;
  }

  CRandomGenerator::~CRandomGenerator(v11);
  return 0xFFFFFFFFLL;
}

void sub_22491C224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  Matrix<unsigned int>::~Matrix(&a34);
  Matrix<double>::~Matrix(&a38);
  CRandomGenerator::~CRandomGenerator(va);
  _Unwind_Resume(a1);
}

double Algo::Mean(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 == 1)
  {
    Matrix<double>::Resize(a2, 1, 1);
    v12 = 0.0;
    vDSPMeanv<double>(*(a1 + 8), 1, &v12, *(a1 + 20) * *(a1 + 16));
    result = v12;
    **(a2 + 8) = v12;
  }

  else
  {
    if (!v4)
    {
      Algo::Mean();
    }

    v5 = *(a1 + 20);
    Matrix<double>::Resize(a2, 1, *(a1 + 20));
    bzero(*(a2 + 8), 8 * (*(a2 + 20) * *(a2 + 16)));
    v6 = 0;
    v7 = *(a1 + 16);
    do
    {
      if (v5)
      {
        if (v6 < v7)
        {
          v8 = 0;
          v9 = *(a1 + 20);
          v10 = 8 * v9 * v6;
          while (v9)
          {
            if (!*(a2 + 16) || v8 >= *(a2 + 20))
            {
              GMC_Homography();
            }

            *(*(a2 + 8) + 8 * v8) = *(*(a1 + 8) + v10) + *(*(a2 + 8) + 8 * v8);
            ++v8;
            --v9;
            v10 += 8;
            if (v5 == v8)
            {
              goto LABEL_11;
            }
          }
        }

        MatrixNxPts<3u,double>::CloneColumn();
      }

LABEL_11:
      ++v6;
    }

    while (v6 != v4);
    v12 = v4;
    vDSPVsdiv<double>(*(a2 + 8), 1, &v12, *(a2 + 8), 1, *(a2 + 20) * *(a2 + 16));
  }

  return result;
}

Algo *Algo::Gcd(Algo *this, uint64_t a2)
{
  if (!a2)
  {
    return this;
  }

  do
  {
    v2 = a2;
    a2 = this % a2;
    LODWORD(this) = v2;
  }

  while (a2);
  return v2;
}

uint64_t Algo::Lcm(Algo *this, unsigned int a2)
{
  v2 = this;
  if (a2)
  {
    v3 = a2;
    v4 = this;
    do
    {
      v2 = v3;
      v3 = v4 % v3;
      v4 = v2;
    }

    while (v3);
  }

  return this / v2 * a2;
}

uint64_t *std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v10 = v8 >> 1;
      if (v8 >> 1 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<unsigned int>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void sub_22491C6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(double const*,double *,double (*)(double),int),double const*,double *,double (*)(double),int>>(const void **a1)
{
  v5 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  (v5[1])(v5[2], v5[3], v5[4], *(v5 + 10));
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(double const*,double *,double (*)(double),int),double const*,double *,double (*)(double),int>>::~unique_ptr[abi:ne200100](&v5);
  return 0;
}

void sub_22491C744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(double const*,double *,double (*)(double),int),double const*,double *,double (*)(double),int>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(double const*,double *,double (*)(double),int),double const*,double *,double (*)(double),int>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x22AA55B60](v3, 0x10E0C40C6F9689ELL);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x22AA55A00]();
    MEMORY[0x22AA55B60](v3, 0x20C4093837F09);
  }

  return a1;
}

void sub_22491C8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(double const*,double const*,double *,double (*)(double,double),int),double const*,double const*,double *,double (*)(double,double),int>>(const void **a1)
{
  v5 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  (v5[1])(v5[2], v5[3], v5[4], v5[5], *(v5 + 12));
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(double const*,double const*,double *,double (*)(double,double),int),double const*,double const*,double *,double (*)(double,double),int>>::~unique_ptr[abi:ne200100](&v5);
  return 0;
}

void sub_22491C998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(double const*,double const*,double *,double (*)(double,double),int),double const*,double const*,double *,double (*)(double,double),int>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(double const*,double const*,double *,double (*)(double,double),int),double const*,double const*,double *,double (*)(double,double),int>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x22AA55B60](v3, 0x10E0C40E17172BELL);
  }

  return a1;
}

void MatrixNxPts<9u,double>::~MatrixNxPts(uint64_t a1)
{
  Matrix<double>::~Matrix(a1);

  JUMPOUT(0x22AA55B60);
}

uint64_t Matrix<double>::Matrix<double const>(uint64_t a1, const void *a2, int a3, int a4, char a5)
{
  *a1 = &unk_283812C58;
  if (a5)
  {
    operator new[]();
  }

  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  *(a1 + 24) = a5;
  return a1;
}

double Matrix<double>::operator+=(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  if (v2 != *(a1 + 20) || (v3 = *(a2 + 16), v3 != *(a1 + 16)))
  {
    Matrix<float>::operator-();
  }

  v4 = v3 * v2;
  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = &v5[v4];
    v7 = *(a2 + 8);
    do
    {
      v8 = *v7++;
      result = *v5 + v8;
      *v5++ = result;
    }

    while (v5 < v6);
  }

  return result;
}

void SparseMatrix::SparseMatrix(SparseMatrix *this, int a2, int a3, int *a4, int a5, int a6)
{
  *(this + 10) = a2;
  *(this + 11) = a6;
  *(this + 8) = a5 + a3 * a6;
  *(this + 9) = a3;
  SparseMatrix::allocateMem(this);
}

void SparseMatrix::SparseMatrix(SparseMatrix *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
}

{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
}

double SparseMatrix::freeMem(SparseMatrix *this)
{
  v2 = *this;
  if (v2)
  {
    MEMORY[0x22AA55B40](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 1);
  if (v3)
  {
    MEMORY[0x22AA55B40](v3, 0x1000C8052888210);
  }

  v4 = *(this + 2);
  if (v4)
  {
    MEMORY[0x22AA55B40](v4, 0x1000C8052888210);
  }

  v5 = *(this + 3);
  if (v5)
  {
    MEMORY[0x22AA55B40](v5, 0x1000C8052888210);
  }

  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

void SparseMatrix::~SparseMatrix(SparseMatrix *this)
{
  SparseMatrix::freeMem(this);
}

{
  SparseMatrix::freeMem(this);
}

double SparseMatrix::SparseMatrix(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;
  v2 = a2[2];
  a1[1] = a2[1];
  a1[2] = v2;
  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

{
  *a1 = *a2;
  v2 = a2[2];
  a1[1] = a2[1];
  a1[2] = v2;
  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

SparseMatrix *SparseMatrix::operator=(SparseMatrix *a1, _OWORD *a2)
{
  SparseMatrix::freeMem(a1);
  *a1 = *a2;
  v4 = a2[2];
  *(a1 + 1) = a2[1];
  *(a1 + 2) = v4;
  *a2 = 0u;
  a2[1] = 0u;
  return a1;
}

void *SparseMatrix::AddValue(void *this, int a2, int a3, double a4)
{
  v4 = this[3];
  v5 = *(v4 + 4 * a3) + *(this[2] + 4 * a3);
  v6 = this[1];
  *(*this + 8 * v5) = a4;
  *(v6 + 4 * v5) = a2;
  ++*(v4 + 4 * a3);
  return this;
}

uint64_t SparseMatrix::Expand(uint64_t this, uint64_t a2, unint64_t a3)
{
  v3 = *(this + 44);
  if (v3 < a3)
  {
    SparseMatrix::Expand();
  }

  *(this + 40) += a2;
  *(this + 44) = v3 - a3;
  return this;
}

uint64_t SparseMatrix::Squeeze(uint64_t this, int a2, int a3)
{
  v3 = *(this + 36);
  v4 = *(this + 44) + a3;
  *(this + 40) -= a2;
  *(this + 44) = v4;
  if (v3 >= 1)
  {
    v5 = 0;
    v6 = *(this + 24);
    do
    {
      *(v6 + 4 * v5++) -= a3;
    }

    while (v5 < *(this + 36));
  }

  return this;
}

double SparseMatrix::operator()(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 40) <= a2 || *(a1 + 36) <= a3)
  {
    SparseMatrix::operator()();
  }

  v3 = *(*(a1 + 24) + 4 * a3);
  result = 0.0;
  if (v3 >= 1)
  {
    for (i = *(*(a1 + 16) + 4 * a3); *(*(a1 + 8) + 4 * i) != a2; ++i)
    {
      if (!--v3)
      {
        return result;
      }
    }

    return *(*a1 + 8 * i);
  }

  return result;
}

void *SparseMatrix::MultATagxB@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = Matrix<double>::Matrix(a3, 1, *(a1 + 9));
  *result = &unk_283812C88;
  v6 = *(a1 + 9);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = a1[2];
    v9 = a1[3];
    do
    {
      *(result[1] + 8 * v7) = 0;
      v10 = *(v9 + 4 * v7);
      if (v10 >= 1)
      {
        v11 = *(v8 + 4 * v7);
        v12 = v10 + v11;
        v13 = *a1;
        v14 = a1[1];
        do
        {
          *(result[1] + 8 * v7) = *(result[1] + 8 * v7) + *(v13 + 8 * v11) * *(*(a2 + 8) + 8 * *(v14 + 4 * v11));
          ++v11;
        }

        while (v11 < v12);
      }

      ++v7;
    }

    while (v7 != v6);
  }

  return result;
}

void SparseMatrix::operator*(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Matrix<double>::Matrix(a3, 1, *(a1 + 10));
  *a3 = &unk_283812C88;
  bzero(*(a3 + 8), 8 * (*(a3 + 20) * *(a3 + 16)));
  v6 = *(a1 + 9);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = a1[2];
    v9 = a1[3];
    do
    {
      v10 = *(v9 + 4 * v7);
      if (v10 >= 1)
      {
        v11 = *(v8 + 4 * v7);
        v12 = v10 + v11;
        v13 = *a1;
        v14 = a1[1];
        do
        {
          *(*(a3 + 8) + 8 * *(v14 + 4 * v11)) = *(*(a3 + 8) + 8 * *(v14 + 4 * v11)) + *(v13 + 8 * v11) * *(*(a2 + 8) + 8 * v7);
          ++v11;
        }

        while (v11 < v12);
      }

      ++v7;
    }

    while (v7 != v6);
  }
}

void *SparseMatrix::ReverseStorageOfColumn(void *this, int a2)
{
  v2 = *(this[3] + 4 * a2);
  if (v2)
  {
    v3 = *(this[2] + 4 * a2);
    v4 = (*this + 8 * v3);
    v5 = (8 * v2 + 8 * v3 + *this - 8);
    do
    {
      if (v5 == v4)
      {
        break;
      }

      v6 = *v4;
      *v4++ = *v5;
      v7 = v5 == v4;
      *v5-- = v6;
    }

    while (!v7);
    v8 = this[1];
    v9 = (v8 + 4 * v3);
    v10 = (4 * v2 + 4 * v3 + v8 - 4);
    do
    {
      if (v10 == v9)
      {
        break;
      }

      v11 = *v9;
      *v9++ = *v10;
      v7 = v10 == v9;
      *v10-- = v11;
    }

    while (!v7);
  }

  return this;
}

double SparseMatrix::GetColumnAsDenseVector@<D0>(uint64_t *__return_ptr a1@<X8>, SparseMatrix *this@<X0>, int a3@<W1>)
{
  Matrix<double>::Matrix(a1, 1, *(this + 10));
  *a1 = &unk_283812C88;
  bzero(a1[1], 8 * (*(a1 + 5) * *(a1 + 4)));
  v7 = *(*(this + 3) + 4 * a3);
  if (v7 >= 1)
  {
    v8 = *(this + 1);
    v9 = *(*(this + 2) + 4 * a3);
    v10 = v7 + v9;
    v11 = *this;
    do
    {
      result = *(v11 + 8 * v9);
      *(a1[1] + 8 * *(v8 + 4 * v9++)) = result;
    }

    while (v9 < v10);
  }

  return result;
}

double SparseMatrix::CopyColumnToDenseVector(SparseMatrix *this, int a2, double *a3)
{
  bzero(a3, 8 * *(this + 10));
  v7 = *(*(this + 3) + 4 * a2);
  if (v7 >= 1)
  {
    v8 = *(this + 1);
    v9 = *(*(this + 2) + 4 * a2);
    v10 = v7 + v9;
    v11 = *this;
    do
    {
      result = *(v11 + 8 * v9);
      a3[*(v8 + 4 * v9++)] = result;
    }

    while (v9 < v10);
  }

  return result;
}

uint64_t *SparseMatrix::GetColumnAsSparseVector@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, int a3@<W1>)
{
  v3 = *(this + 10);
  v4 = *(this[3] + 4 * a3);
  v5 = *(this[2] + 4 * a3);
  v6 = this[1] + 4 * v5;
  v7 = *this + 8 * v5;
  *(a1 + 4) = v4;
  *(a1 + 5) = v4;
  *(a1 + 6) = v3;
  *(a1 + 28) = 0;
  *(a1 + 8) = 0;
  *a1 = v7;
  a1[1] = v6;
  a1[5] = 0;
  a1[6] = 0;
  return this;
}

uint64_t SparseMatrix::SolveLTInPlace(uint64_t result, uint64_t a2)
{
  v2 = *(result + 36);
  if (v2 != *(result + 40))
  {
    SparseMatrix::SolveLTInPlace();
  }

  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8);
    v5 = *result;
    v6 = *(result + 16);
    v7 = *(result + 24);
    v8 = v4 + 8;
    v9 = *result + 8;
    do
    {
      v10 = *(v6 + 4 * v3);
      v11 = *(v4 + 8 * v3) / *(*&v5 + 8 * v10);
      *(v4 + 8 * v3) = v11;
      v12 = *(v7 + 4 * v3);
      if (v12 >= 2)
      {
        v13 = (v9 + 8 * v10);
        v14 = v12 - 1;
        result = v8;
        do
        {
          v15 = *v13++;
          *result = *result - v15 * v11;
          result += 8;
          --v14;
        }

        while (v14);
      }

      ++v3;
      v8 += 8;
    }

    while (v3 != v2);
  }

  return result;
}

void SparseVector::SparseVector(SparseVector *this, int a2, int a3, int *a4, double *a5, char a6)
{
  *(this + 4) = a3;
  *(this + 5) = a3;
  *(this + 6) = a2;
  *(this + 28) = a6;
  *(this + 8) = 0;
  if (a6)
  {
    operator new[]();
  }

  *this = a5;
  *(this + 1) = a4;
  *(this + 6) = 0;
  *(this + 5) = 0;
}

void SparseVector::SparseVector(SparseVector *this, int a2, int a3)
{
  *(this + 4) = a3;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 28) = 1;
  *(this + 8) = 0;
  operator new[]();
}

void SparseVector::~SparseVector(SparseVector *this)
{
  if (*(this + 28) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      MEMORY[0x22AA55B40](v2, 0x1000C8052888210);
    }

    if (*this)
    {
      MEMORY[0x22AA55B40](*this, 0x1000C8000313F17);
    }
  }

  v3 = *(this + 6);
  if (v3)
  {
    MEMORY[0x22AA55B40](v3, 0x1000C8052888210);
  }

  v4 = *(this + 5);
  if (v4)
  {
    MEMORY[0x22AA55B40](v4, 0x1000C8000313F17);
  }
}

__n128 SparseVector::SparseVector(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = 0;
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 28) = 0;
  return result;
}

{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = 0;
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 28) = 0;
  return result;
}

void SparseVector::SparseVector(SparseVector *this, const SparseVector *a2)
{
  v2 = *(a2 + 20);
  *(this + 4) = v2;
  *(this + 20) = v2;
  *(this + 28) = 1;
  *(this + 8) = 0;
  operator new[]();
}

uint64_t SparseVector::operator=(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 28) & 1) == 0)
  {
    SparseVector::operator=();
  }

  if (*(a1 + 16) < *(a2 + 16))
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      MEMORY[0x22AA55B40](v4, 0x1000C8052888210);
    }

    if (*a1)
    {
      MEMORY[0x22AA55B40](*a1, 0x1000C8000313F17);
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      MEMORY[0x22AA55B40](v5, 0x1000C8052888210);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      MEMORY[0x22AA55B40](v6, 0x1000C8000313F17);
    }

    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    operator new[]();
  }

  memcpy(*(a1 + 8), *(a2 + 8), 4 * *(a2 + 20));
  memcpy(*a1, *a2, 8 * *(a2 + 20));
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t SparseVector::MultATagxB(uint64_t this, const SparseVector *a2)
{
  LODWORD(v2) = 0;
  v3 = 0;
  v4 = *(this + 8);
  v5 = *(this + 20);
  v6 = 0.0;
  for (i = *(a2 + 1); ; ++i)
  {
    v8 = *v4;
    while (1)
    {
      v9 = *i;
      ++v4;
      v2 = v2;
      while (v8 < v9)
      {
        if (v2 + 1 >= v5)
        {
          return this;
        }

        v10 = *v4++;
        v8 = v10;
        ++v2;
      }

      if (v9 >= v8)
      {
        break;
      }

      if (++v3 >= v5)
      {
        return this;
      }

      --v4;
      ++i;
    }

    v6 = v6 + *(*this + 8 * v2) * *(*a2 + 8 * v3);
    LODWORD(v2) = v2 + 1;
    if (v2 >= v5)
    {
      break;
    }

    if (++v3 >= *(a2 + 5))
    {
      break;
    }
  }

  return this;
}

uint64_t SparseVector::AddWithFactor(uint64_t this, double **a2, __n128 a3)
{
  if ((*(this + 28) & 1) == 0)
  {
    SparseVector::AddWithFactor();
  }

  *(this + 32) = 0;
  v3 = *(a2 + 5);
  v4 = *this;
  v5 = *(this + 8);
  v6 = *(this + 20);
  v7 = *this + 8 * v6;
  v8 = *a2;
  v9 = a2[1];
  v10 = &(*a2)[v3];
  v11 = 0;
  if (v6 >= 1 && v3 >= 1)
  {
    v13 = *v9;
    v14 = *v5;
    v15 = *this;
    v16 = *(this + 8);
    while (1)
    {
      if (v14 == v13)
      {
        if (*(this + 24) <= v13 || v11 >= *(this + 16))
        {
          SparseVector::AddWithFactor();
        }

        v17 = *v15++;
        v18 = *v8;
        v19 = *(this + 40);
        *(*(this + 48) + 4 * v11) = v13;
        v20 = *(this + 32);
        *(v19 + 8 * v20) = v17 + a3.n128_f64[0] * v18;
        v11 = v20 + 1;
        *(this + 32) = v11;
        LODWORD(v17) = v16[1];
        ++v16;
        v14 = LODWORD(v17);
      }

      else
      {
        if (v14 < v13)
        {
          if (*(this + 24) <= v14 || v11 >= *(this + 16))
          {
            SparseVector::AddWithFactor();
          }

          v21 = *v15++;
          v22 = *(this + 40);
          *(*(this + 48) + 4 * v11) = v14;
          v23 = *(this + 32);
          *(v22 + 8 * v23) = v21;
          v11 = v23 + 1;
          *(this + 32) = v11;
          LODWORD(v21) = v16[1];
          ++v16;
          v14 = LODWORD(v21);
          goto LABEL_20;
        }

        if (*(this + 24) <= v13 || v11 >= *(this + 16))
        {
          SparseVector::AddWithFactor();
        }

        v24 = *v8 * a3.n128_f64[0];
        v25 = *(this + 40);
        *(*(this + 48) + 4 * v11) = v13;
        v26 = *(this + 32);
        *(v25 + 8 * v26) = v24;
        v11 = v26 + 1;
        *(this + 32) = v11;
      }

      ++v8;
      v27 = *(v9 + 1);
      v9 = (v9 + 4);
      v13 = v27;
LABEL_20:
      if (v15 >= v7 || v8 >= v10)
      {
        goto LABEL_26;
      }
    }
  }

  v16 = *(this + 8);
  v15 = *this;
LABEL_26:
  while (v15 < v7)
  {
    if (*(this + 24) <= *v16 || v11 >= *(this + 16))
    {
      SparseVector::AddWithFactor();
    }

    v28 = *v15++;
    v29 = *(this + 40);
    *(*(this + 48) + 4 * v11) = *v16;
    v30 = *(this + 32);
    *(v29 + 8 * v30) = v28;
    v11 = v30 + 1;
    *(this + 32) = v11;
    ++v16;
  }

  if (v8 >= v10)
  {
    v32 = *(this + 40);
  }

  else
  {
    do
    {
      if (*(this + 24) <= *v9 || v11 >= *(this + 16))
      {
        SparseVector::AddWithFactor();
      }

      v31 = *v8++;
      v32 = *(this + 40);
      *(*(this + 48) + 4 * v11) = *v9;
      v33 = *(this + 32);
      *(v32 + 8 * v33) = v31 * a3.n128_f64[0];
      v11 = v33 + 1;
      *(this + 32) = v11;
      v9 = (v9 + 4);
    }

    while (v8 < v10);
  }

  *this = v32;
  *(this + 40) = v4;
  *(this + 48) = v5;
  *(this + 20) = v11;
  return this;
}

double operator+=(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  if (v2 >= 1)
  {
    v3 = *a2;
    v4 = *(a2 + 8);
    do
    {
      v5 = *v3++;
      v6 = v5;
      LODWORD(v5) = *v4++;
      v7 = *(a1 + 8);
      result = v6 + *(v7 + 8 * LODWORD(v5));
      *(v7 + 8 * LODWORD(v5)) = result;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t FigMotionCalculateAdjustedFocusPosition(float a1, float a2, int *a3)
{
  v3 = *a3 - (a2 * a1);
  if (v3 >= 0.0)
  {
    if (v3 <= 255.0)
    {
      v4 = (v3 + 0.5);
    }

    else
    {
      v4 = 255;
    }
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
  return 0;
}

uint64_t FigMotionGetGravityZ(const __CFDictionary *a1, float *a2)
{
  if (!a1)
  {
    FigMotionGetGravityZ();
    return 0;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF4E18]);
  if (!Value)
  {
    FigMotionGetGravityZ();
    return 0;
  }

  v4 = Value;
  Length = CFDataGetLength(Value);
  if (Length <= 7)
  {
    FigMotionGetGravityZ();
  }

  else
  {
    v6 = Length;
    BytePtr = CFDataGetBytePtr(v4);
    if (BytePtr)
    {
      if (v6 == 40 * *(BytePtr + 1) + 8)
      {
        if (!*BytePtr)
        {
          goto LABEL_7;
        }

        FigMotionGetGravityZ();
      }

      else
      {
        FigMotionGetGravityZ();
      }
    }

    else
    {
      FigMotionGetGravityZ();
    }
  }

  BytePtr = v14;
LABEL_7:
  v8 = *(BytePtr + 1);
  if (v8 < 1)
  {
    v10 = 0.0;
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = (BytePtr + 44);
    v10 = 0.0;
    v11 = *(BytePtr + 1);
    do
    {
      v12 = *v9;
      v9 += 10;
      v10 = v10 + (v12 * 0.000015259);
      --v11;
    }

    while (v11);
  }

  v10 = v10 / v8;
LABEL_11:
  *a2 = v10;
  return 0;
}

uint64_t FigMotionCalculateAdjustedLensPosition(const __CFDictionary *a1, uint64_t a2, float *a3, float a4, float a5)
{
  valuePtr = 0;
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF4B80]);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      v10 = valuePtr - (*(a2 + 40) * a4);
      if (v10 >= 0.0)
      {
        if (v10 <= 255.0)
        {
          v11 = (v10 + 0.5);
        }

        else
        {
          v11 = 255;
        }
      }

      else
      {
        v11 = 0;
      }

      valuePtr = v11;
      if (*(a2 + 16))
      {
        v12 = v11;
        v13 = *(a2 + 20) <= v11;
        v14 = 32;
        if (!v13)
        {
          v14 = 24;
        }

        v15 = *(a2 + v14);
        if (v13)
        {
          v16 = 36;
        }

        else
        {
          v16 = 28;
        }

        *a3 = (v15 + (*(a2 + v16) * v12)) * a5;
      }

      else
      {
        FigMotionCalculateAdjustedLensPosition();
      }
    }

    else
    {
      FigMotionCalculateAdjustedLensPosition();
    }
  }

  else
  {
    FigMotionCalculateAdjustedLensPosition();
  }

  return 0;
}

void OUTLINED_FUNCTION_6_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

id *H16ISPDisplayStrobePrepare(int a1)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x800402FCC0CB6uLL);
  if (!v2)
  {
    return v2;
  }

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setValue:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDA918]];
  v3 = 0;
  v4 = MEMORY[0x277D85DF8];
  while (1)
  {
    v5 = [MEMORY[0x277CD9E40] mainDisplay];
    v2[1] = v5;
    if (v5)
    {
      break;
    }

    fprintf(*v4, "warning: display was expected, but was not found.  Retrying main display, attempt=%d \n", v3);
    usleep(0x7A120u);
    if (++v3 == 10)
    {
      if (!v2[1])
      {
        fwrite("warning: display was expected, but was not found.\n", 0x32uLL, 1uLL, *v4);
        [MEMORY[0x277CD9FF0] commit];
        free(v2);
        return 0;
      }

      break;
    }
  }

  v2[2] = [MEMORY[0x277CD9ED0] layer];
  v2[3] = [MEMORY[0x277CD9ED0] layer];
  v6 = v2[2];
  [v2[1] bounds];
  [v6 setFrame:?];
  ConstantColor = CGColorGetConstantColor(*MEMORY[0x277CBF3B8]);
  if (ConstantColor)
  {
    v8 = ConstantColor;
    [v2[2] setContents:0];
    [v2[2] setBackgroundColor:v8];
  }

  v9 = 0.0;
  v10 = 0.0;
  if (a1)
  {
    *buffer = 0;
    v11 = IORegistryEntryFromPath(*MEMORY[0x277CD2898], "IODeviceTree:/product");
    if (v11 && (CFProperty = IORegistryEntryCreateCFProperty(v11, @"island-notch-location", 0, 0)) != 0)
    {
      v13 = CFProperty;
      v32.length = fmin(CFDataGetLength(CFProperty), 4.0);
      v32.location = 0;
      CFDataGetBytes(v13, v32, buffer);
      if (*buffer)
      {
        v10 = *buffer + 40.0;
LABEL_15:
        MGGetFloat32Answer();
        v9 = v17;
        goto LABEL_16;
      }

      v14 = *v4;
      v15 = "warning: invalid strobe entry found in the registry";
      v16 = 51;
    }

    else
    {
      v14 = *v4;
      v15 = "warning: strobe coordinate not found in the registry";
      v16 = 52;
    }

    fwrite(v15, v16, 1uLL, v14);
    v10 = 184.0;
    goto LABEL_15;
  }

LABEL_16:
  v18 = v2[3];
  [v2[1] bounds];
  v20 = v19;
  [v2[1] bounds];
  [v18 setFrame:{0.0, v10, v20}];
  [v2[3] setCornerRadius:v9];
  [v2[3] setCornerCurve:*MEMORY[0x277CDA138]];
  [v2[3] setMaskedCorners:3];
  [v2[3] setMasksToBounds:1];
  [v2[2] addSublayer:v2[3]];
  v30[0] = *MEMORY[0x277CDA0F8];
  v21 = [v2[1] name];
  v22 = *MEMORY[0x277CDA100];
  v31[0] = v21;
  v31[1] = MEMORY[0x277CBEC38];
  v23 = *MEMORY[0x277CDA120];
  v30[1] = v22;
  v30[2] = v23;
  v30[3] = *MEMORY[0x277CDA0E0];
  v31[2] = MEMORY[0x277CBEC38];
  v31[3] = MEMORY[0x277CBEC38];
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];
  v25 = [MEMORY[0x277CDA018] contextWithOptions:v24];
  *v2 = v25;
  [v25 setLayer:v2[2]];
  LODWORD(v26) = 2139095039;
  [*v2 setLevel:v26];
  [MEMORY[0x277CD9FF0] commit];
  v27 = objc_alloc_init(MEMORY[0x277CFD390]);
  v2[4] = v27;
  if (v27)
  {
    return v2;
  }

  fwrite("error: brightness system client initialization failed.\n", 0x37uLL, 1uLL, *v4);
  H16ISPDisplayStrobeDispose(v2);
  return 0;
}

uint64_t H16ISPDisplayStrobeDispose(void **a1)
{
  if (!a1)
  {
    return 3758097090;
  }

  v2 = *a1;
  if (v2)
  {
    [v2 dealloc];
    *a1 = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    [v3 dealloc];
  }

  free(a1);
  return 0;
}

uint64_t H16ISPDisplayStrobeSetScreenBrightness(uint64_t a1, int a2)
{
  v2 = 3758097090;
  if (a1)
  {
    if (a2 == 1)
    {
      v3 = *(a1 + 32);
      if (v3)
      {
        v4 = &unk_283820050;
LABEL_8:
        if ([v3 setProperty:v4 forKey:@"PreStrobe"])
        {
          return 0;
        }

        else
        {
          return 3758097090;
        }
      }
    }

    else
    {
      if (a2)
      {
        return v2;
      }

      v3 = *(a1 + 32);
      if (v3)
      {
        v4 = &unk_283820068;
        goto LABEL_8;
      }
    }

    return 3758097112;
  }

  return v2;
}

uint64_t H16ISPDisplayStrobeSetScreenColor(uint64_t a1, uint64_t a2)
{
  components[4] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 3758097090;
  }

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setValue:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDA918]];
  v4 = [MEMORY[0x277CBEB18] array];
  if (_AXSInvertColorsEnabled() || _AXSClassicInvertColorsEnabled())
  {
    v5 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2B0]];
    if (!v5)
    {
      goto LABEL_9;
    }

    [v4 addObject:v5];
  }

  else
  {
    v4 = 0;
  }

  [*(a1 + 24) setFilters:v4];
LABEL_9:
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v8 = CGColorCreate(DeviceRGB, a2);
  if (v8)
  {
    v9 = v8;
    [*(a1 + 24) setContents:0];
    [*(a1 + 24) setBackgroundColor:v9];
    CFRelease(v9);
  }

  memset(components, 0, 24);
  v10 = 1.0;
  if (*(a2 + 24) == 0.0)
  {
    v10 = 0.0;
  }

  components[3] = v10;
  v11 = CGColorCreate(DeviceRGB, components);
  if (!v11)
  {
    [MEMORY[0x277CD9FF0] commit];
    if (!DeviceRGB)
    {
      return 0;
    }

    goto LABEL_15;
  }

  v12 = v11;
  [*(a1 + 16) setContents:0];
  [*(a1 + 16) setBackgroundColor:v12];
  [MEMORY[0x277CD9FF0] commit];
  CFRelease(v12);
  if (DeviceRGB)
  {
LABEL_15:
    CFRelease(DeviceRGB);
  }

  return 0;
}

uint64_t H16ISPDisplayGetStrobeBrightnessRatio(uint64_t a1, float *a2)
{
  v2 = 3758097090;
  if (a1)
  {
    if (a2)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        v5 = [v4 copyPropertyForKey:@"PreStrobeBrightnessRatio"];
        v2 = 3758097095;
        if (v5)
        {
          [v5 floatValue];
          *a2 = v6;
          if (v6 == 0.0)
          {
            return 3758097095;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

CFTypeRef H16ISP::CreateFormattedMetadata(_DWORD *a1)
{
  v99[20] = *MEMORY[0x277D85DE8];
  NamedValues::NamedValues(&cf);
  NamedValues::NamedValues(&v84);
  *__str = 20;
  *__str = (*a1 >> 21) & 0x3FF;
  *__str = (*a1 >> 11) & 0x3FF;
  *__str = (*a1 >> 1) & 0x3FF;
  v3 = a1[4];
  if (v3 >= 1)
  {
    v4 = 0;
    v81 = *(MEMORY[0x277D82818] + 64);
    v82 = *MEMORY[0x277D82818];
    v80 = *(MEMORY[0x277D82818] + 72);
    while (1)
    {
      v5 = a1[v4 + 5];
      if (v5)
      {
        break;
      }

LABEL_153:
      if (++v4 == v3)
      {
        goto LABEL_154;
      }
    }

    NamedValues::NamedValues(&v83);
    v7 = (a1 + v5);
    v8 = "Shared AiCam";
    switch(v4)
    {
      case 0:
        *__str = "unknown";
        v9 = *(v7 + 4);
        if (v9 > 1)
        {
          if (v9 == 2)
          {
            v10 = "blue";
          }

          else
          {
            if (v9 != 3)
            {
              goto LABEL_110;
            }

            v10 = "green-blue";
          }
        }

        else if (v9)
        {
          if (v9 != 1)
          {
            goto LABEL_110;
          }

          v10 = "red";
        }

        else
        {
          v10 = "green-red";
        }

        *__str = v10;
LABEL_110:
        __p[0] = "unknown";
        v66 = v7[14];
        if (v66 == 2)
        {
          v67 = "binning 1/4";
        }

        else if (v66 == 1)
        {
          v67 = "binning 1/2";
        }

        else
        {
          if (v7[14])
          {
            goto LABEL_117;
          }

          v67 = "binning disabled";
        }

        __p[0] = v67;
LABEL_117:
        *v93 = "unknown";
        v68 = v7[15];
        if (v68 == 2)
        {
          v69 = "binning 1/4";
        }

        else if (v68 == 1)
        {
          v69 = "binning 1/2";
        }

        else
        {
          if (v7[15])
          {
            goto LABEL_124;
          }

          v69 = "binning disabled";
        }

        *v93 = v69;
LABEL_124:
        *v92 = "unknown";
        v70 = v7[34];
        if (v70 > 1)
        {
          if (v70 == 2)
          {
            v71 = "raw12";
          }

          else
          {
            if (v70 != 3)
            {
              goto LABEL_134;
            }

            v71 = "raw14";
          }
        }

        else if (v7[34])
        {
          if (v70 != 1)
          {
            goto LABEL_134;
          }

          v71 = "raw10";
        }

        else
        {
          v71 = "raw8";
        }

        *v92 = v71;
LABEL_134:
        *v89 = "unknown";
        if (v7[35] == 1)
        {
          v72 = "unpacked";
        }

        else
        {
          if (v7[35])
          {
LABEL_139:
            *&v88 = 1016;
            LODWORD(v88) = *(v7 + 43);
            LODWORD(v88) = *(v7 + 44);
            LODWORD(v88) = *(v7 + 45);
            LODWORD(v88) = *(v7 + 46);
            LODWORD(v88) = *(v7 + 47);
            v88 = vcvtd_n_f64_u32(*(v7 + 12), 8uLL);
            v88 = vcvtd_n_f64_u32(v7[32], 8uLL);
            LODWORD(v88) = *(v7 + 72);
            LODWORD(v88) = *(v7 + 73);
            v88 = COERCE_DOUBLE(bswap64(*(v7 + 37)));
            *&v88 = v7 + 48;
            *&v88 = v7 + 64;
            *&v88 = v7 + 80;
            *&v88 = v7 + 96;
            v73 = *(v7 + 80);
            v74 = *(v7 + 81);
            v86 = bswap32(v74);
            v87 = bswap32(v73);
            LODWORD(v88) = v73;
            LODWORD(v88) = BYTE1(v73);
            LODWORD(v88) = BYTE2(v73);
            LODWORD(v88) = HIBYTE(v73) & 0xF;
            LODWORD(v88) = v73 >> 28;
            LODWORD(v88) = HIBYTE(v74);
            LODWORD(v88) = BYTE2(v74);
            LODWORD(v88) = BYTE1(v74);
            LODWORD(v88) = v74;
            LODWORD(v88) = v7[168];
            v88 = vcvtd_n_f64_s32(v7[231], 0xFuLL) + v7[168];
            LODWORD(v88) = *(v7 + 338);
            LODWORD(v88) = *(v7 + 339);
            LODWORD(v88) = *(v7 + 460);
            LODWORD(v88) = *(v7 + 461);
            LODWORD(v88) = v7[229];
            LODWORD(v88) = v7[246];
            LODWORD(v88) = v7[247];
            LODWORD(v88) = v7[248];
            LODWORD(v88) = v7[249];
            LODWORD(v88) = *(v7 + 500);
            LODWORD(v88) = *(v7 + 501);
            LODWORD(v88) = v7[254];
            LODWORD(v88) = v7[255];
            LODWORD(v88) = v7[256];
            LODWORD(v88) = v7[257];
            LODWORD(v88) = *(v7 + 129);
            LODWORD(v88) = *(v7 + 130);
            LODWORD(v88) = *(v7 + 131);
            LODWORD(v88) = *(v7 + 132);
            LODWORD(v88) = *(v7 + 133);
            LODWORD(v88) = *(v7 + 134);
            LODWORD(v88) = *(v7 + 135);
            LODWORD(v88) = v7[272];
            LODWORD(v88) = v7[273];
            LODWORD(v88) = v7[282];
            LODWORD(v88) = v7[283];
            LODWORD(v88) = v7[284];
            LODWORD(v88) = v7[285];
            LODWORD(v88) = v7[286];
            LODWORD(v88) = v7[287];
            LODWORD(v88) = v7[288];
            LODWORD(v88) = v7[289];
            LODWORD(v88) = *(v7 + 145);
            LODWORD(v88) = *(v7 + 146);
            LODWORD(v88) = v7[294];
            LODWORD(v88) = *(v7 + 148);
            LODWORD(v88) = *(v7 + 149);
            LODWORD(v88) = *(v7 + 150);
            LODWORD(v88) = *(v7 + 604);
            LODWORD(v88) = *(v7 + 605);
            LODWORD(v88) = *(v7 + 152);
            LODWORD(v88) = *(v7 + 153);
            LODWORD(v88) = *(v7 + 154);
            LODWORD(v88) = v7[312];
            LODWORD(v88) = v7[313];
            LODWORD(v88) = v7[314];
            LODWORD(v88) = v7[315];
            LODWORD(v88) = *(v7 + 155);
            LODWORD(v88) = *(v7 + 632);
            LODWORD(v88) = v7[317];
            LODWORD(v88) = *(v7 + 159);
            LODWORD(v88) = *(v7 + 162);
            LODWORD(v88) = v7[326];
            LODWORD(v88) = v7[327];
            LODWORD(v88) = v7[328];
            LODWORD(v88) = v7[329];
            LODWORD(v88) = *(v7 + 660);
            LODWORD(v88) = *(v7 + 661);
            LODWORD(v88) = *(v7 + 167);
            LODWORD(v88) = *(v7 + 168);
            LODWORD(v88) = v7[338];
            LODWORD(v88) = v7[339];
            LODWORD(v88) = v7[340];
            LODWORD(v88) = v7[341];
            LODWORD(v88) = *(v7 + 173);
            LODWORD(v88) = v7[348];
            LODWORD(v88) = v7[349];
            LODWORD(v88) = v7[350];
            LODWORD(v88) = v7[351];
            LODWORD(v88) = v7[352];
            LODWORD(v88) = v7[353];
            LODWORD(v88) = v7[354];
            LODWORD(v88) = v7[355];
            LODWORD(v88) = v7[356];
            LODWORD(v88) = v7[357];
            LODWORD(v88) = v7[358];
            LODWORD(v88) = v7[359];
            LODWORD(v88) = v7[360];
            LODWORD(v88) = v7[361];
            LODWORD(v88) = v7[362];
            LODWORD(v88) = v7[363];
            LODWORD(v88) = v7[364];
            LODWORD(v88) = v7[365];
            LODWORD(v88) = v7[366];
            LODWORD(v88) = v7[367];
            LODWORD(v88) = v7[368];
            LODWORD(v88) = v7[369];
            LODWORD(v88) = v7[370];
            LODWORD(v88) = v7[371];
            LODWORD(v88) = v7[372];
            LODWORD(v88) = v7[373];
            LODWORD(v88) = *(v7 + 748);
            LODWORD(v88) = *(v7 + 749);
            LODWORD(v88) = *(v7 + 750);
            LODWORD(v88) = v7[377];
            LODWORD(v88) = *(v7 + 804);
            LODWORD(v88) = *(v7 + 805);
            v8 = "Shared Input";
            goto LABEL_151;
          }

          v72 = "packed";
        }

        *v89 = v72;
        goto LABEL_139;
      case 1:
        v25 = "unknown";
        *__str = "unknown";
        v26 = *v7;
        if (v26 == 2)
        {
          v27 = "R'G'B'";
        }

        else if (v26 == 1)
        {
          v27 = "Y'CbCr 4:2:2";
        }

        else
        {
          if (*v7)
          {
            goto LABEL_99;
          }

          v27 = "Y'CbCr 4:2:0";
        }

        *__str = v27;
LABEL_99:
        __p[0] = "unknown";
        v64 = v7[1];
        if (v64 <= 1)
        {
          if (v7[1])
          {
            if (v64 != 1)
            {
              goto LABEL_144;
            }

            v65 = "StatsBlock";
          }

          else
          {
            v65 = "BackEnd";
          }
        }

        else
        {
          switch(v64)
          {
            case 2u:
              v65 = "RawProcBlock";
              break;
            case 3u:
              v65 = "RGBProcBlock";
              break;
            case 4u:
              v65 = "YCCProcBlock";
              break;
            default:
              goto LABEL_144;
          }
        }

        __p[0] = v65;
LABEL_144:
        v75 = "RGBY";
        if (!*(v7 + 9))
        {
          v75 = "RGGB";
        }

        *v93 = v75;
        v76 = *(v7 + 1028);
        if (v76 == 1)
        {
          v25 = "log2";
        }

        else if (!v76)
        {
          v25 = "linear";
        }

        *v92 = v25;
        *v89 = 4876;
        NamedValues::NamedValues(v89);
        v88 = vcvtd_n_f64_u32(*(v7 + 1027), 4uLL);
        LODWORD(v88) = *(v7 + 4138);
        LODWORD(v88) = *(v7 + 4139);
        LODWORD(v88) = *(v7 + 1035);
        LODWORD(v88) = *(v7 + 1036);
        LODWORD(v88) = *(v7 + 1037);
        LODWORD(v88) = *(v7 + 1038);
        LODWORD(v88) = *(v7 + 1039);
        LODWORD(v88) = *(v7 + 1040);
        LODWORD(v88) = *(v7 + 1041);
        LODWORD(v88) = *(v7 + 1042);
        LODWORD(v88) = *(v7 + 1043);
        LODWORD(v88) = *(v7 + 1044);
        LODWORD(v88) = *(v7 + 1045);
        LODWORD(v88) = *(v7 + 1046);
        LODWORD(v88) = *(v7 + 4188);
        NamedValues::~NamedValues(v89);
        v8 = "Shared Output";
LABEL_151:
LABEL_152:
        NamedValues::~NamedValues(&v83);
        goto LABEL_153;
      case 2:
        *__str = 5856;
        *__str = vcvtd_n_f64_u32(v7[2], 8uLL);
        *__str = vcvtd_n_f64_u32(*(v7 + 1313), 8uLL);
        *__str = vcvtd_n_f64_u32(v7[4], 8uLL);
        *__str = v7[5];
        *__str = *(v7 + 13);
        *__str = vcvtd_n_f64_u32(*(v7 + 5), 0x10uLL);
        *__str = *(v7 + 158);
        *__str = *(v7 + 1732);
        *__str = *(v7 + 434);
        *__str = v7[870];
        *__str = v7[871];
        *__str = v7[872];
        *__str = *(v7 + 437);
        *__str = *(v7 + 438);
        *__str = *(v7 + 439);
        *__str = *(v7 + 440);
        *__str = *(v7 + 441);
        *__str = *(v7 + 442);
        *__str = *(v7 + 443);
        *__str = *(v7 + 444);
        *__str = *(v7 + 445);
        *__str = *(v7 + 446);
        *__str = *(v7 + 447);
        *__str = *(v7 + 448);
        *__str = *(v7 + 449);
        *__str = *(v7 + 450);
        *__str = *(v7 + 451);
        *__str = *(v7 + 452);
        *__str = *(v7 + 453);
        *__str = *(v7 + 455);
        *__str = *(v7 + 456);
        *__str = *(v7 + 457);
        *__str = *(v7 + 458);
        *__str = *(v7 + 459);
        *__str = *(v7 + 460);
        *__str = *(v7 + 461);
        *__str = *(v7 + 462);
        *__str = *(v7 + 463);
        *__str = *(v7 + 479);
        *__str = *(v7 + 483);
        *__str = *(v7 + 484);
        *__str = *(v7 + 485);
        *__str = *(v7 + 486);
        *__str = *(v7 + 487);
        *__str = *(v7 + 488);
        *__str = *(v7 + 489);
        *__str = *(v7 + 490);
        *__str = *(v7 + 491);
        *__str = *(v7 + 492);
        *__str = *(v7 + 493);
        *__str = v7[988];
        *__str = v7[989];
        *__str = v7[990];
        *__str = v7[991];
        *__str = v7[992];
        *__str = *(v7 + 497);
        NamedValues::NamedValues(__str);
        LODWORD(__p[0]) = *(v7 + 592);
        LODWORD(__p[0]) = *(v7 + 593);
        NamedValues::NamedValues(__p);
        *v93 = *(v7 + 405);
        *v93 = *(v7 + 406);
        *v93 = *(v7 + 407);
        *v93 = *(v7 + 408);
        *v93 = *(v7 + 409);
        *v93 = *(v7 + 410);
        *v93 = *(v7 + 411);
        *v93 = *(v7 + 412);
        *v93 = *(v7 + 413);
        *v93 = *(v7 + 414);
        *v93 = *(v7 + 415);
        *v93 = *(v7 + 416);
        NamedValues::~NamedValues(__p);
        NamedValues::~NamedValues(__str);
        v8 = "Shared Auto Exposure";
        goto LABEL_151;
      case 3:
        *__str = 3768;
        NamedValues::NamedValues(v92);
        *__str = v7[80];
        *__str = v7[81];
        *__str = v7[82];
        *__str = v7[83];
        *__str = v7[1292];
        *__str = v7[1293];
        *__str = *(v7 + 2716);
        *__str = v7[1360];
        *__str = v7[1361];
        *__str = *(v7 + 682);
        *__str = *(v7 + 2732);
        *__str = *(v7 + 2733);
        *__str = *(v7 + 2734);
        *__str = *(v7 + 684);
        *__str = *(v7 + 685);
        *__str = v7[1372];
        *__str = v7[1373];
        *__str = v7[1390];
        *__str = v7[1391];
        *__str = v7[1392];
        *__str = v7[1393];
        *__str = v7[1394];
        *__str = *(v7 + 775);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__str);
        MEMORY[0x22AA55960](&v95, *(v7 + 840));
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](__str, __p);
        if (v91 >= 0)
        {
          v40 = __p;
        }

        else
        {
          v40 = __p[0];
        }

        NamedValue::NamedValue(v93, "roiType", v40, 0);
        if (v91 < 0)
        {
          operator delete(__p[0]);
        }

        NamedValues::push_back(&v83, v93);
        NamedValue::~NamedValue(v93);
        *__str = v82;
        *&__str[*(v82 - 24)] = v81;
        *&v95 = v80;
        *(&v95 + 1) = MEMORY[0x277D82878] + 16;
        if (v98 < 0)
        {
          operator delete(v97);
        }

        *(&v95 + 1) = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v96);
        std::iostream::~basic_iostream();
        MEMORY[0x22AA55B20](v99);
        *__str = v7[1695];
        NamedValues::~NamedValues(v92);
        v8 = "Shared Auto Focus";
        goto LABEL_151;
      case 4:
        *__str = 1356;
        *__str = vcvtd_n_f64_u32(v7[21], 0xEuLL);
        *__str = vcvtd_n_f64_u32(v7[22], 0xEuLL);
        *__str = vcvtd_n_f64_u32(*(v7 + 13), 0xCuLL);
        *__str = v7[73];
        *__str = v7[86];
        *__str = v7[87];
        *__str = v7[88];
        *__str = *(v7 + 178);
        *__str = *(v7 + 179);
        *__str = *(v7 + 180);
        *__str = v7[91];
        *__str = v7[92];
        *__str = v7[93];
        *__str = v7[94];
        *__str = v7[95];
        *__str = v7[96];
        *__str = v7[97];
        *__str = v7[98];
        *__str = v7[99];
        *__str = *(v7 + 68);
        *__str = *(v7 + 98);
        *__str = v7[230];
        *__str = vcvtd_n_f64_u32(v7[138], 0xEuLL);
        *__str = vcvtd_n_f64_u32(v7[139], 0xEuLL);
        *__str = *(v7 + 70);
        v8 = "Shared Auto White Balance";
        goto LABEL_151;
      case 5:
        *__str = 24;
        v8 = "Adaptive Tone Curve";
        goto LABEL_151;
      case 6:
        *__str = 112;
        *__str = *v7;
        *__str = v7[1];
        *__str = v7[2];
        *__str = v7[3];
        *__str = v7[4];
        *__str = v7[5];
        *__str = v7[10];
        v8 = "Shared LTM";
        goto LABEL_151;
      case 7:
        *__str = 612;
        *__str = vcvtd_n_f64_u32(*(v7 + 5), 8uLL);
        *__str = vcvtd_n_f64_u32(*(v7 + 10), 8uLL);
        *__str = *(v7 + 60);
        *__str = *(v7 + 61);
        *__str = *(v7 + 62);
        *__str = *(v7 + 63);
        *__str = *(v7 + 64);
        *__str = *(v7 + 65);
        *__str = *(v7 + 66);
        *__str = *(v7 + 67);
        *__str = *(v7 + 68);
        *__str = *(v7 + 69);
        *__str = *(v7 + 70);
        *__str = *(v7 + 71);
        *__str = *(v7 + 72);
        *__str = *(v7 + 73);
        *__str = *(v7 + 74);
        *__str = *(v7 + 75);
        *__str = v7[38];
        *__str = v7[39];
        *__str = v7[40];
        *__str = v7[41];
        *__str = vcvtd_n_f64_u32(v7[56], 0xEuLL);
        *__str = vcvtd_n_f64_u32(v7[57], 0xEuLL);
        *__str = vcvtd_n_f64_u32(v7[58], 0xCuLL);
        *__str = vcvtd_n_f64_u32(v7[59], 0xCuLL);
        *__str = vcvtd_n_f64_u32(v7[60], 0xCuLL);
        *__str = vcvtd_n_f64_u32(v7[61], 0xCuLL);
        *__str = vcvtd_n_f64_u32(v7[62], 0xCuLL);
        *__str = vcvtd_n_f64_u32(v7[63], 0xCuLL);
        *__str = *(v7 + 128);
        *__str = *(v7 + 129);
        *__str = *(v7 + 132);
        *__str = *(v7 + 133);
        *__str = v7[67];
        *__str = v7[68];
        *__str = v7[69];
        *__str = v7[76];
        *__str = v7[77];
        *__str = *(v7 + 160);
        *__str = *(v7 + 161);
        *__str = *(v7 + 162);
        *__str = *(v7 + 41);
        *__str = *(v7 + 44);
        *__str = *(v7 + 45);
        *__str = *(v7 + 46);
        *__str = *(v7 + 47);
        *__str = *(v7 + 48);
        *__str = *(v7 + 49);
        *__str = *(v7 + 50);
        *__str = *(v7 + 51);
        *__str = *(v7 + 52);
        *__str = *(v7 + 53);
        *__str = v7[108];
        *__str = v7[109];
        *__str = *(v7 + 243);
        *__str = v7[149];
        *__str = v7[154];
        *__str = v7[155];
        *__str = *(v7 + 78);
        *__str = *(v7 + 79);
        *__str = *(v7 + 80);
        *__str = *(v7 + 81);
        *__str = *(v7 + 91);
        *__str = *(v7 + 92);
        *__str = *(v7 + 93);
        *__str = *(v7 + 94);
        v15 = 0;
        v16 = v7 + 122;
        v17 = a1 + v5 + 250;
        do
        {
          NamedValues::NamedValues(__p);
          v18 = &v16[8 * v15];
          *v93 = *v18;
          *v93 = *(v18 + 4);
          v19 = 0;
          v20 = v17;
          do
          {
            NamedValues::NamedValues(v93);
            *v92 = *(v20 - 1);
            *v92 = *v20;
            snprintf(__str, 0x40uLL, "strength[%d]", v19);
            NamedValues::~NamedValues(v93);
            ++v19;
            v20 += 2;
          }

          while (v19 != 5);
          snprintf(__str, 0x40uLL, "mbnrConfig[%d]", v15);
          NamedValues::~NamedValues(__p);
          ++v15;
          v17 += 16;
        }

        while (v15 != 3);
        v8 = "Shared RAW Proc";
        goto LABEL_151;
      case 8:
        *__str = 776;
        *__str = v7[2];
        *__str = v7[275];
        *__str = *(v7 + 552);
        *__str = *(v7 + 553);
        *__str = *(v7 + 554);
        *__str = *(v7 + 555);
        *__str = *(v7 + 568);
        *__str = *(v7 + 640);
        v8 = "Shared RGB Proc";
        goto LABEL_151;
      case 9:
        *__str = 192;
        *__str = *v7;
        *__str = *(v7 + 2);
        *__str = *(v7 + 3);
        *__str = *(v7 + 4);
        *__str = *(v7 + 5);
        *__str = *(v7 + 6);
        *__str = *(v7 + 7);
        *__str = *(v7 + 8);
        *__str = *(v7 + 9);
        *__str = *(v7 + 10);
        *__str = *(v7 + 11);
        *__str = *(v7 + 12);
        *__str = *(v7 + 13);
        *__str = v7[7];
        *__str = v7[8];
        *__str = v7[9];
        *__str = v7[10];
        *__str = v7[11];
        *__str = v7[12];
        *__str = v7[79];
        *__str = v7[80];
        *__str = *(v7 + 162);
        *__str = v7[82];
        *__str = v7[83];
        *__str = v7[84];
        *__str = *(v7 + 43);
        *__str = *(v7 + 44);
        *__str = *(v7 + 45);
        *__str = *(v7 + 184);
        v8 = "Shared YCC Proc";
        goto LABEL_151;
      case 10:
        *__str = 4;
        *__str = *v7;
        *__str = *(v7 + 1);
        v8 = "Shared BES Proc";
        goto LABEL_151;
      case 11:
        *__str = 20132;
        *__str = *(v7 + 324);
        *__str = *(v7 + 325);
        *__str = *(v7 + 326);
        *__str = v7[164];
        *__str = v7[165];
        *__str = v7[166];
        *__str = v7[167];
        *__str = *(v7 + 326);
        *__str = *(v7 + 326);
        *__str = *(v7 + 326);
        *__str = *(v7 + 326);
        *__str = *(v7 + 326);
        *__str = *(v7 + 326);
        *__str = *(v7 + 326);
        *__str = v7[170];
        *__str = *(v7 + 342);
        *__str = *(v7 + 343);
        *__str = v7[174];
        *__str = v7[175];
        *__str = v7[176];
        *__str = v7[177];
        *__str = v7[178];
        *__str = v7[179];
        *__str = v7[180];
        *__str = v7[181];
        LOWORD(v28) = v7[186];
        LOWORD(v29) = v7[187];
        LOWORD(v30) = v7[188];
        LOWORD(v32) = v7[189];
        LOWORD(v33) = v7[190];
        LOWORD(v34) = v7[191];
        *__str = v7[191];
        *__str = v7[192];
        *__str = v7[198];
        *__str = v7[199];
        *__str = v7[200];
        *__str = v7[201];
        *__str = v7[204];
        *__str = v7[205];
        *__str = v7[212];
        *__str = v7[213];
        *__str = v7[214];
        *__str = v7[215];
        *__str = v7[216];
        *__str = v7[217];
        *__str = v7[340];
        *__str = v7[341];
        *__str = v7[342];
        *__str = v7[343];
        *__str = v7[344];
        *__str = v7[345];
        *__str = *(v7 + 4071);
        *__str = *(v7 + 4072);
        v8 = "Shared Stats";
        goto LABEL_151;
      case 12:
        *__str = 0x10000;
        v8 = "Shared Debug";
        goto LABEL_151;
      case 13:
        *__str = 61040;
        v8 = "Shared OIS";
        goto LABEL_151;
      case 14:
        *__str = 65608;
        v8 = "Shared FocusPixel";
        goto LABEL_151;
      case 15:
        *__str = 8222;
        *__str = *v7;
        *__str = v7[1];
        *__str = v7[2];
        *__str = v7[3];
        *__str = v7[4];
        *__str = v7[5];
        v8 = "Shared LocalHist";
        goto LABEL_151;
      case 16:
        *__str = 65540;
        v8 = "Shared VIS";
        goto LABEL_151;
      case 17:
        *__str = 16388;
        v8 = "Shared TNR";
        goto LABEL_151;
      case 18:
        *__str = 64;
        *__str = v7[8];
        *__str = v7[9];
        *__str = v7[10];
        *__str = v7[11];
        *__str = v7[12];
        *__str = v7[13];
        *__str = v7[14];
        *__str = v7[15];
        *__str = v7[16];
        *__str = v7[17];
        *__str = v7[28];
        *__str = *(v7 + 58);
        *__str = *(v7 + 59);
        *__str = *(v7 + 60);
        v8 = "Shared System";
        goto LABEL_151;
      case 19:
        *__str = 74192;
        *__str = v7[36805];
        *__str = v7[36806];
        *__str = v7[36807];
        *__str = v7[36808];
        *__str = v7[36810];
        *__str = v7[36812];
        *__str = v7[36813];
        *__str = v7[36814];
        *__str = v7[37073];
        *__str = v7[37074];
        *__str = *(v7 + 18538);
        *__str = *(v7 + 18539);
        *__str = v7[37080];
        *__str = v7[37081];
        v8 = "Shared LTM LUTs";
        goto LABEL_151;
      case 20:
        *__str = 1736;
        v8 = "Shared VIS Info";
        goto LABEL_151;
      case 21:
        *__str = 11008;
        v8 = "Shared Motion Info";
        goto LABEL_151;
      case 22:
        *__str = 4144;
        v8 = "Shared AF FocusMap";
        goto LABEL_151;
      case 23:
        *__str = 644;
        *__str = *v7;
        v8 = "Shared DMA Config";
        goto LABEL_151;
      case 24:
        *__str = 19904;
        *__str = *v7;
        *__str = v7[1];
        *__str = *(v7 + 1);
        *__str = *(v7 + 2);
        *__str = *(v7 + 3);
        *__str = *(v7 + 4);
        *__str = *(v7 + 5);
        *__str = *(v7 + 6);
        *__str = v7[12];
        *__str = v7[13];
        v8 = "Shared HITH";
        goto LABEL_151;
      case 25:
        *__str = 77528;
        *__str = *v7;
        *__str = v7[1];
        *__str = *(v7 + 19381);
        v8 = "Shared APS";
        goto LABEL_151;
      case 26:
        *__str = 786600;
        v8 = "Shared SideBand";
        goto LABEL_151;
      case 27:
        *__str = 33012;
        *__str = *v7;
        *__str = *(v7 + 4);
        v8 = "Shared VisionProc";
        goto LABEL_151;
      case 28:
        *__str = 116;
        *__str = *v7;
        *__str = v7[1];
        *__str = v7[2];
        *__str = v7[3];
        *__str = *(v7 + 2);
        *__str = *(v7 + 3);
        *__str = *(v7 + 4);
        *__str = *(v7 + 5);
        *__str = *(v7 + 6);
        *__str = *(v7 + 14);
        *__str = *(v7 + 15);
        *__str = v7[14];
        *__str = v7[15];
        *__str = vcvtd_n_f64_s32(*(v7 + 8), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 9), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 10), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 11), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 12), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 13), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 16), 5uLL);
        *__str = *(v7 + 18);
        *__str = v7[34];
        *__str = *(v7 + 19);
        *__str = *(v7 + 20);
        v8 = "Shared Projector";
        goto LABEL_151;
      case 29:
        *__str = 456;
        *__str = *v7;
        *__str = *(v7 + 1);
        v8 = "Shared BodyDetector";
        goto LABEL_151;
      case 30:
        *__str = 156;
        *__str = *v7;
        *__str = v7[1];
        *__str = v7[6];
        *__str = v7[7];
        *__str = v7[8];
        *__str = v7[9];
        *__str = *(v7 + 5);
        *__str = *(v7 + 6);
        *__str = *(v7 + 7);
        *__str = *(v7 + 8);
        *__str = *(v7 + 9);
        *__str = *(v7 + 12);
        *__str = *(v7 + 13);
        *__str = *(v7 + 14);
        *__str = *(v7 + 15);
        *__str = v7[34];
        *__str = *(v7 + 18);
        *__str = *(v7 + 19);
        *__str = *(v7 + 20);
        *__str = *(v7 + 21);
        *__str = *(v7 + 22);
        *__str = *(v7 + 25);
        *__str = *(v7 + 26);
        v8 = "Shared Distortion";
        goto LABEL_151;
      case 31:
        *__str = 1024;
        v8 = "BodyDetector Debug";
        goto LABEL_151;
      case 32:
        *__str = 1453212;
        *__str = *v7;
        *__str = v7[1];
        v8 = "PDE Debug";
        goto LABEL_151;
      case 33:
        *__str = 44;
        *__str = *v7;
        *__str = v7[1];
        *__str = vcvtd_n_f64_s32(*(v7 + 3), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 4), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 5), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 6), 5uLL);
        *__str = *(v7 + 7);
        *__str = *(v7 + 8);
        *__str = *(v7 + 9);
        *__str = *(v7 + 10);
        v8 = "Shared Powersupply";
        goto LABEL_151;
      case 34:
        *__str = 2284;
        *__str = *(v7 + 570);
        *__str = 0;
        if (*(v7 + 570))
        {
          v62 = 0;
          v63 = v7;
          do
          {
            LODWORD(__p[0]) = *v63;
            LODWORD(__p[0]) = v63[1];
            LODWORD(__p[0]) = *(v63 + 1);
            LODWORD(__p[0]) = *(v63 + 2);
            LODWORD(__p[0]) = *(v63 + 3);
            LODWORD(__p[0]) = *(v63 + 4);
            LODWORD(__p[0]) = *(v63 + 5);
            LODWORD(__p[0]) = *(v63 + 6);
            LODWORD(__p[0]) = *(v63 + 7);
            LODWORD(__p[0]) = v63[16];
            LODWORD(__p[0]) = v63[17];
            LODWORD(__p[0]) = *(v63 + 9);
            LODWORD(__p[0]) = v63[20];
            LODWORD(__p[0]) = v63[21];
            LODWORD(__p[0]) = v63[22];
            LODWORD(__p[0]) = *(v63 + 164);
            LODWORD(__p[0]) = *(v63 + 51);
            LODWORD(__p[0]) = v63[24];
            LODWORD(__p[0]) = *(v63 + 13);
            LODWORD(__p[0]) = v63[28];
            LODWORD(__p[0]) = v63[29];
            LODWORD(__p[0]) = *(v63 + 15);
            LODWORD(__p[0]) = *(v63 + 16);
            LODWORD(__p[0]) = *(v63 + 17);
            LODWORD(__p[0]) = *(v63 + 18);
            LODWORD(__p[0]) = *(v63 + 19);
            LODWORD(__p[0]) = v63[40];
            LODWORD(__p[0]) = v63[327];
            *__str = ++v62;
            v63 += 380;
          }

          while (v62 < *(v7 + 570));
        }

        v8 = "Shared Multi Slave";
        goto LABEL_151;
      case 35:
        *__str = 10032;
        *__str = *v7;
        *__str = HIWORD(*v7) & 1;
        *__str = v7[2];
        v8 = "Shared FD DCN";
        goto LABEL_151;
      case 36:
        *__str = 4212;
        *__str = *v7;
        *__str = HIWORD(*v7) & 1;
        *__str = (*v7 >> 18) & 1;
        *__str = (*v7 >> 19) & 1;
        *__str = (*v7 >> 20) & 1;
        *__str = (*v7 >> 21) & 1;
        *__str = *(v7 + 1);
        *__str = *(v7 + 2);
        v8 = "Shared FID DCN";
        goto LABEL_151;
      case 37:
        *__str = 1036;
        *__str = *v7;
        *__str = v7[1];
        *__str = v7[2];
        *__str = v7[3];
        *__str = v7[4];
        *__str = v7[5];
        v8 = "Shared YCC Histogram";
        goto LABEL_151;
      case 38:
        *__str = 148024;
        *__str = *v7;
        v8 = "Shared FD DCN Debug";
        goto LABEL_151;
      case 39:
        *__str = 695440;
        *__str = *v7;
        v8 = "Shared FID DCN Debug";
        goto LABEL_151;
      case 40:
        *__str = 1788;
        *__str = *v7;
        *__str = HIWORD(*v7) & 1;
        *__str = (*v7 >> 17) & 1;
        *__str = *(v7 + 1);
        v8 = "Shared Attention";
        goto LABEL_151;
      case 41:
        *__str = 246036;
        *__str = *v7;
        v8 = "Shared Attention Debug";
        goto LABEL_151;
      case 42:
        *__str = 2945604;
        *__str = *v7;
        *__str = v7[1];
        v8 = "Shared IR PDP Debug";
        goto LABEL_151;
      case 43:
        *__str = 3848;
        *__str = *v7;
        *__str = v7[1];
        *__str = *(v7 + 1);
        v8 = "Shared MasterSlave AF";
        goto LABEL_151;
      case 44:
        *__str = 480;
        *__str = *v7;
        *__str = v7[1];
        *__str = v7[2];
        *__str = *(v7 + 2);
        *__str = v7[6];
        *__str = *(v7 + 6);
        *__str = v7[14];
        *__str = v7[15];
        *__str = v7[36];
        if (*(v7 + 91))
        {
          *__str = v7[186];
          *__str = v7[187];
          *__str = v7[208];
        }

        *__str = v7[38];
        *__str = v7[39];
        *__str = v7[40];
        *__str = v7[41];
        *__str = v7[7];
        *__str = v7[8];
        *__str = v7[42];
        *__str = *(v7 + 22);
        *__str = *(v7 + 23);
        *__str = *(v7 + 24);
        *__str = *(v7 + 25);
        *__str = *(v7 + 26);
        *__str = v7[37];
        v8 = "Shared PDE";
        goto LABEL_151;
      case 45:
        *__str = 134012;
        *__str = *v7;
        *__str = *(v7 + 9);
        *__str = *(v7 + 40);
        *__str = *(v7 + 49);
        *__str = *(v7 + 52);
        *__str = *(v7 + 212);
        *__str = *(v7 + 105);
        *__str = *(v7 + 824);
        *__str = *(v7 + 207);
        *__str = *(v7 + 208);
        *__str = *(v7 + 209);
        *__str = *(v7 + 210);
        *__str = *(v7 + 213);
        *__str = *(v7 + 215);
        *__str = *(v7 + 221);
        *__str = *(v7 + 222);
        *__str = *(v7 + 223);
        *__str = *(v7 + 224);
        *__str = *(v7 + 225);
        *__str = *(v7 + 226);
        *__str = *(v7 + 227);
        *__str = *(v7 + 912);
        *__str = v7[457];
        *__str = v7[458];
        *__str = v7[459];
        *__str = v7[460];
        *__str = v7[461];
        *__str = *(v7 + 940);
        *__str = *(v7 + 956);
        *__str = *(v7 + 957);
        *__str = *(v7 + 958);
        *__str = *(v7 + 959);
        *__str = *(v7 + 240);
        *__str = *(v7 + 964);
        *__str = *(v7 + 242);
        *__str = *(v7 + 243);
        *__str = *(v7 + 992);
        *__str = v7[497];
        *__str = *(v7 + 249);
        *__str = *(v7 + 250);
        *__str = v7[1182];
        *__str = *(v7 + 6052);
        *__str = *(v7 + 25556);
        *__str = *(v7 + 25557);
        *__str = *(v7 + 25558);
        *__str = *(v7 + 25559);
        *__str = *(v7 + 25560);
        *__str = *(v7 + 25561);
        *__str = *(v7 + 25562);
        *__str = *(v7 + 25563);
        *__str = *(v7 + 25564);
        *__str = *(v7 + 25565);
        *__str = *(v7 + 25566);
        *__str = *(v7 + 25567);
        *__str = *(v7 + 25568);
        *__str = *(v7 + 25569);
        *__str = *(v7 + 25570);
        *__str = *(v7 + 25571);
        *__str = *(v7 + 25572);
        *__str = *(v7 + 25573);
        *__str = *(v7 + 25574);
        *__str = *(v7 + 25575);
        *__str = *(v7 + 25656);
        *__str = *(v7 + 25664);
        *__str = *(v7 + 25665);
        *__str = *(v7 + 25666);
        *__str = *(v7 + 25667);
        *__str = *(v7 + 25668);
        *__str = *(v7 + 25669);
        *__str = *(v7 + 6422);
        *__str = *(v7 + 6711);
        *__str = *(v7 + 6985);
        *__str = *(v7 + 6986);
        *__str = *(v7 + 6987);
        *__str = *(v7 + 6988);
        *__str = *(v7 + 6994);
        *__str = *(v7 + 6995);
        *__str = *(v7 + 6997);
        *__str = *(v7 + 7000);
        *__str = *(v7 + 7005);
        *__str = *(v7 + 7014);
        *__str = *(v7 + 7015);
        *__str = *(v7 + 7020);
        *__str = *(v7 + 7021);
        *__str = *(v7 + 7025);
        *__str = *(v7 + 7026);
        *__str = *(v7 + 7027);
        *__str = *(v7 + 7028);
        *__str = *(v7 + 7534);
        *__str = *(v7 + 7535);
        v8 = "Shared CBAF Debug";
        goto LABEL_151;
      case 46:
        *__str = 131136;
        v8 = "Shared PDAFHW Debug";
        goto LABEL_151;
      case 47:
        *__str = 336;
        v8 = "Shared CRC Check";
        goto LABEL_151;
      case 48:
        *__str = 24;
        v8 = "Shared Calibration";
        goto LABEL_151;
      case 49:
        *__str = 32;
        *__str = *v7;
        *__str = *(v7 + 1);
        *__str = *(v7 + 2);
        *__str = *(v7 + 3);
        *__str = *(v7 + 4);
        *__str = *(v7 + 5);
        *__str = *(v7 + 6);
        v8 = "Shared Motion Stats";
        goto LABEL_151;
      case 50:
        *__str = 116;
        *__str = *v7;
        *__str = *(v7 + 1);
        *__str = *(v7 + 2);
        *__str = *(v7 + 3);
        v8 = "Shared APS Stats";
        goto LABEL_151;
      case 51:
        *__str = 256;
        *__str = *v7;
        *__str = *(v7 + 1);
        *__str = *(v7 + 4);
        *__str = *(v7 + 5);
        v8 = "Shared OIS Stats";
        goto LABEL_151;
      case 52:
        goto LABEL_151;
      case 53:
        v8 = "Shared AiCam Debug";
        goto LABEL_151;
      case 54:
        *__str = 64;
        *__str = *v7;
        *__str = *(v7 + 2);
        *__str = v7[1];
        *__str = *(v7 + 3);
        *__str = vcvtd_n_f64_u32(v7[8], 8uLL);
        *__str = vcvtd_n_f64_u32(*(v7 + 9), 8uLL);
        *__str = vcvtd_n_f64_u32(v7[10], 8uLL);
        *__str = vcvtd_n_f64_u32(v7[11], 0xCuLL);
        *__str = vcvtd_n_f64_u32(v7[12], 0xAuLL);
        *__str = v7[25];
        *__str = v7[26];
        *__str = *(v7 + 60);
        *__str = *(v7 + 59);
        *__str = *(v7 + 61);
        v8 = "Shared SIFR";
        goto LABEL_151;
      case 55:
        *__str = *v7;
        *__str = *(v7 + 1);
        v8 = "Shared FPC";
        goto LABEL_151;
      case 56:
        *__str = *v7;
        *__str = v7[1];
        v8 = "Shared Reduced APS";
        goto LABEL_151;
      case 62:
        *__str = 300;
        *__str = *v7;
        *__str = *(v7 + 2);
        *__str = *(v7 + 9);
        *__str = *(v7 + 10);
        *__str = *(v7 + 4);
        *__str = *(v7 + 5);
        *__str = *(v7 + 6);
        *__str = *(v7 + 17);
        *__str = *(v7 + 18);
        *__str = *(v7 + 19);
        *__str = *(v7 + 44);
        *__str = *(v7 + 88);
        *__str = *(v7 + 89);
        *__str = *(v7 + 45);
        *__str = *(v7 + 13);
        *__str = *(v7 + 12);
        *__str = *(v7 + 1);
        *__str = *(v7 + 8);
        *__str = *(v7 + 20);
        *__str = *(v7 + 21);
        *__str = *(v7 + 26);
        *__str = *(v7 + 27);
        *__str = *(v7 + 28);
        *__str = *(v7 + 101);
        *__str = v7[23];
        *__str = *(v7 + 12);
        *__str = v7[26];
        *__str = *(v7 + 14);
        *__str = *(v7 + 15);
        v8 = "Shared Auto Focus Assist Debug";
        goto LABEL_151;
      case 69:
        memset(v96, 0, 32);
        *__str = 0u;
        v95 = 0u;
        NamedValues::NamedValues(__p);
        for (i = 0; i != 256; ++i)
        {
          snprintf(__str, 0x40uLL, "ch0[%03d]", i);
          *v93 = *&v7[2 * i];
        }

        NamedValues::NamedValues(v93);
        for (j = 0; j != 256; ++j)
        {
          snprintf(__str, 0x40uLL, "ch1[%03d]", j);
          *v92 = *&v7[2 * j + 512];
        }

        NamedValues::NamedValues(v92);
        v57 = 0;
        v58 = v7 + 1024;
        do
        {
          snprintf(__str, 0x40uLL, "ch2[%03d]", v57);
          *v89 = *&v58[2 * v57];
          ++v57;
        }

        while (v57 != 256);
        NamedValues::~NamedValues(v92);
        NamedValues::~NamedValues(v93);
        NamedValues::~NamedValues(__p);
        v8 = "Shared Stats BE Histogram";
        goto LABEL_151;
      case 75:
        *__str = *v7;
        *__str = *(v7 + 4);
        v8 = "Shared LTC Data";
        goto LABEL_151;
      case 78:
        *__str = 288;
        v8 = "Shared Depth to Position Debug";
        goto LABEL_151;
      default:
        goto LABEL_152;
    }
  }

LABEL_154:
  v78 = cf;
  CFRetain(cf);
  NamedValues::~NamedValues(&v84);
  NamedValues::~NamedValues(&cf);
  return v78;
}

void sub_224929054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, const void *a17, const void *a18, uint64_t a19, uint64_t a20, const void *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, int a29, __int16 a30, char a31, char a32, int a33, __int16 a34, char a35, char a36)
{
  NamedValues::~NamedValues(&a21);
  NamedValues::~NamedValues(&a16);
  NamedValues::~NamedValues(&a17);
  NamedValues::~NamedValues(&a18);
  _Unwind_Resume(a1);
}

void anonymous namespace::AppendMetadataList(__CFArray **this, NamedValues *a2, __CFArray **a3, NamedValues *a4)
{
  NamedValue::NamedValue(&v5, a2, 0, *a3);
  NamedValues::push_back(this, &v5);
  NamedValue::~NamedValue(&v5);
}

void sub_224929290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  NamedValue::~NamedValue(va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<unsigned long>(__CFArray **a1, void *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  MEMORY[0x22AA55980](&v11, *a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v10, __p);
  if (v8 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  NamedValue::NamedValue(&v9, "size", v4, 0);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v9);
  NamedValue::~NamedValue(&v9);
  v10[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v5;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v15);
}

void sub_224929474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<unsigned int>(__CFArray **a1, const char *a2, _DWORD *a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  if (a4 == 1)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "0x", 2);
    *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 8;
LABEL_12:
    MEMORY[0x22AA55970](v10, *a3);
    goto LABEL_13;
  }

  if (a4 != 2)
  {
    v10 = &v18;
    goto LABEL_12;
  }

  if (*a3)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  if (*a3)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v8, v9);
LABEL_13:
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v17, __p);
  if (v15 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  NamedValue::NamedValue(&v16, a2, v11, 0);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v16);
  NamedValue::~NamedValue(&v16);
  v17[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v18 = v12;
  v19 = MEMORY[0x277D82878] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v22);
}

void sub_224929714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<unsigned long long>(__CFArray **a1, const char *a2, void *a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  if (a4 == 1)
  {
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "0x", 2);
    *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  }

  else
  {
    v8 = &v16;
  }

  MEMORY[0x22AA559B0](v8, *a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v15, __p);
  if (v13 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  NamedValue::NamedValue(&v14, a2, v9, 0);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v14);
  NamedValue::~NamedValue(&v14);
  v15[0] = *MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v16 = v10;
  v17 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v20);
}

void sub_22492997C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_224929C38(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x22AA55B20](v1);
  _Unwind_Resume(a1);
}

void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  *(a2 + v5) = 0;
  return result;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x22AA55B20](a1 + 128);
  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x22AA55AA0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_224929EF0(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x22AA55910](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x22AA55920](v13);
  return a1;
}

void sub_22492A160(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x22AA55920](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x22492A140);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_22492A394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t anonymous namespace::AppendMetadataItem<char const*>(__CFArray **a1, const char *a2, const char **a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v14);
  v6 = *a3;
  v7 = strlen(v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v6, v7);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v14, __p);
  if (v12 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  NamedValue::NamedValue(&v13, a2, v8, 0);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v13);
  NamedValue::~NamedValue(&v13);
  v14[0] = *MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v15 = v9;
  v16 = MEMORY[0x277D82878] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v19);
}

void sub_22492A5E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<unsigned short>(__CFArray **a1, const char *a2, _WORD *a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  if (a4 == 1)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "0x", 2);
    *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 8;
LABEL_12:
    MEMORY[0x22AA559A0](v10, *a3);
    goto LABEL_13;
  }

  if (a4 != 2)
  {
    v10 = &v18;
    goto LABEL_12;
  }

  if (*a3)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  if (*a3)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v8, v9);
LABEL_13:
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v17, __p);
  if (v15 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  NamedValue::NamedValue(&v16, a2, v11, 0);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v16);
  NamedValue::~NamedValue(&v16);
  v17[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v18 = v12;
  v19 = MEMORY[0x277D82878] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v22);
}

void sub_22492A884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<unsigned char>(__CFArray **a1, const char *a2, _BYTE *a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v18);
  v8 = "on";
  if (!*a3)
  {
    v8 = "off";
  }

  v9 = "no";
  if (*a3)
  {
    v9 = "yes";
  }

  if (a4 == 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if ((*a3 == 0) != (a4 == 2))
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, v10, v11);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v18, __p);
  if (v16 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  NamedValue::NamedValue(&v17, a2, v12, 0);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v17);
  NamedValue::~NamedValue(&v17);
  v18[0] = *MEMORY[0x277D82818];
  v13 = *(MEMORY[0x277D82818] + 72);
  *(v18 + *(v18[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v19 = v13;
  v20 = MEMORY[0x277D82878] + 16;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  v20 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v23);
}

void sub_22492AAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<int>(__CFArray **a1, const char *a2, unsigned int *a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  if (a4 == 1)
  {
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "0x", 2);
    *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  }

  else
  {
    v8 = &v16;
  }

  MEMORY[0x22AA55960](v8, *a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v15, __p);
  if (v13 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  NamedValue::NamedValue(&v14, a2, v9, 0);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v14);
  NamedValue::~NamedValue(&v14);
  v15[0] = *MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v16 = v10;
  v17 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v20);
}

void sub_22492AD54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<double>(__CFArray **a1, const char *a2, double *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v12);
  MEMORY[0x22AA55940](&v13, *a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v12, __p);
  if (v10 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  NamedValue::NamedValue(&v11, a2, v6, 0);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v11);
  NamedValue::~NamedValue(&v11);
  v12[0] = *MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v13 = v7;
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v17);
}

void sub_22492AF6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<short>(__CFArray **a1, const char *a2, __int16 *a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  if (a4 == 1)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "0x", 2);
    *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 8;
LABEL_12:
    MEMORY[0x22AA55990](v10, *a3);
    goto LABEL_13;
  }

  if (a4 != 2)
  {
    v10 = &v18;
    goto LABEL_12;
  }

  if (*a3)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  if (*a3)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v8, v9);
LABEL_13:
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v17, __p);
  if (v15 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  NamedValue::NamedValue(&v16, a2, v11, 0);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v16);
  NamedValue::~NamedValue(&v16);
  v17[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v18 = v12;
  v19 = MEMORY[0x277D82878] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v22);
}

void sub_22492B20C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<char [4]>(__CFArray **a1, const char *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "...", 3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v10, __p);
  if (v8 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  NamedValue::NamedValue(&v9, a2, v4, 0);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v9);
  NamedValue::~NamedValue(&v9);
  v10[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v5;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v15);
}

void sub_22492B428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<float>(__CFArray **a1, const char *a2, float *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v11);
  std::ostream::operator<<();
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v11, __p);
  if (v9 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  NamedValue::NamedValue(&v10, a2, v5, 0);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v10);
  NamedValue::~NamedValue(&v10);
  v11[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11[2] = v6;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v15);
}

void sub_22492B640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<eCIspFocusingMethod>(__CFArray **a1, unsigned int *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  MEMORY[0x22AA55960](&v11, *a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v10, __p);
  if (v8 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  NamedValue::NamedValue(&v9, "lastFocusingMethod", v4, 0);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v9);
  NamedValue::~NamedValue(&v9);
  v10[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v5;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v15);
}

void sub_22492B850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem(__CFArray **this, NamedValues *a2, const char *a3, double a4, double a5, double a6)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v21);
  *(&v24[0].__locale_ + *(v22 - 24)) = 5;
  v11 = MEMORY[0x22AA55940](&v22, a4);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", ", 2);
  v13 = MEMORY[0x22AA55940](v12, a5);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", ", 2);
  MEMORY[0x22AA55940](v14, a6);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v21, __p);
  if (v19 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  NamedValue::NamedValue(&v20, a2, v15, 0);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(this, &v20);
  NamedValue::~NamedValue(&v20);
  v21[0] = *MEMORY[0x277D82818];
  v16 = *(MEMORY[0x277D82818] + 72);
  *(v21 + *(v21[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v22 = v16;
  v23 = MEMORY[0x277D82878] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v24);
  std::iostream::~basic_iostream();
  return MEMORY[0x22AA55B20](&v26);
}

void sub_22492BAD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t PDAF::PixelEngine::SetupBuffers(uint64_t result)
{
  if (!result)
  {
    PDAF::PixelEngine::SetupBuffers();
  }

  v1 = 0;
  v2 = 0;
  *(result + 487296) = 0u;
  *(result + 487280) = 0u;
  *(result + 487264) = 0u;
  *(result + 487308) = 0u;
  v3 = (result + 168);
  v4 = 112;
  do
  {
    v5 = *(v3 - 2);
    v6 = (2 * (v5 + 271)) & 0x1FFFFFFF0;
    if (v6 <= v1)
    {
      v6 = v1;
    }

    if (v5)
    {
      v1 = v6;
    }

    if (*v3 && ((2 * (*v3 + 4 * *(v3 - 1) + 263)) & 0x1FFFFFFF0uLL) > v2)
    {
      v2 = (2 * (*v3 + 4 * *(v3 - 1) + 263)) & 0x1FFFFFFF0;
    }

    v3 += 14;
    v4 -= 56;
  }

  while (v4);
  v7 = 16 - ((result - 96) & 0xF);
  if (v1)
  {
    *(result + 487264) = v7;
    *(result + 487268) = v1;
    *(result + 487272) = v1;
    v8 = v7 + v1;
    *(result + 487276) = v8;
    *(result + 487280) = v1;
    *(result + 487284) = v1;
    v9 = v8 + v1;
    *(result + 487288) = v9;
    *(result + 487292) = v1;
    v7 = v9 + v1;
    *(result + 487296) = v1;
  }

  if (v2)
  {
    *(result + 487300) = v7;
    *(result + 487304) = v2;
    *(result + 487308) = v2;
    *(result + 487312) = v7 + v2;
    *(result + 487316) = v2;
    v7 += v2 + v2;
    *(result + 487320) = v2;
  }

  if (v7 > 0x8000)
  {
    PDAF::PixelEngine::SetupBuffers();
  }

  return result;
}

void PDAF::PixelEngine::Process_x1(uint64_t a1, uint64_t a2)
{
  v31[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    PDAF::PixelEngine::Process_x1();
  }

  if (!a2)
  {
    PDAF::PixelEngine::Process_x1();
  }

  bzero((a2 + 469820), 0x4424uLL);
  *(a2 + 469816) = *(a2 + 292);
  v4 = *(a2 + 4);
  if (v4 <= 3)
  {
    if (v4 == 2)
    {
      v31[0] = a1;
      v31[1] = 0;
      return;
    }

    if (v4 == 3)
    {
      PDAF::PixelEngine::Process_x1();
    }

LABEL_44:
    PDAF::PixelEngine::Process_x1();
  }

  if (v4 != 4)
  {
    if (v4 == 5)
    {
      PDAF::PixelEngine::Process_x1();
    }

    goto LABEL_44;
  }

  if (*(a2 + 700))
  {
    v5 = *(a2 + 32);
    if (*(a2 + 34) * v5 >= 0x81)
    {
      PDAF::PixelEngine::Process_x1();
    }

    v6 = *(a2 + 260);
    bzero((a2 + 427320), 0x3800uLL);
    v7 = *(a2 + 250) - *(a2 + 246);
    if (v7)
    {
      v8 = 0;
      v9 = *(a2 + 264);
      v10 = *(a2 + 266);
      v11 = *(a2 + 256);
      v12 = *(a2 + 248) - *(a2 + 244);
      v13 = a1 + v6 + *(a2 + 246) * v11 + 2 * *(a2 + 244);
      v14 = a2 + 427320 + 112 * -v5;
      v15 = *(a2 + 720);
      do
      {
        if (v8)
        {
          v16 = 0;
        }

        else
        {
          v16 = v5;
        }

        v14 += 112 * v16;
        if (!v8)
        {
          v8 = v10;
        }

        if (v12 >= 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = v14 - 112;
          v20 = v12 + 1;
          do
          {
            if (v18)
            {
              v21 = 0;
            }

            else
            {
              v18 = v9;
              v21 = 112;
            }

            v19 += v21;
            v22 = *(v13 + v17);
            if (v22 != 0x3FFF)
            {
              v23 = v22 + v15;
              v24 = 32 - __clz(v23 ^ (v23 >> 31));
              if (v23 == v23 >> 31)
              {
                v24 = 0;
              }

              v25 = v24 ^ (v23 >> 31);
              if (v25 >= 6)
              {
                v26 = 6;
              }

              else
              {
                v26 = v25;
              }

              v27 = v26 + 7;
              if (v25 >= -7)
              {
                v28 = v27;
              }

              else
              {
                v28 = 0;
              }

              v29 = v22;
              v30 = v19 + 8 * v28;
              *v30 = *v30 + v29;
              ++*(v30 + 4);
            }

            --v18;
            --v20;
            v17 += 2;
          }

          while (v20 > 1);
        }

        v13 += v11;
        --v8;
        --v7;
      }

      while (v7);
    }
  }
}

uint64_t PDAF::PixelEngine::anonymous namespace::Process(uint64_t a1, uint64_t a2)
{
  v468 = *MEMORY[0x277D85DE8];
  if (*(a2 + 34) * *(a2 + 32) >= 0x81)
  {
  }

  v438 = *(a2 + 8);
  if (v438 >= 2)
  {
  }

  v3 = *(a2 + 4);
  if ((v3 - 2) >= 2)
  {
    if ((v3 - 4) < 2)
    {
    }
  }

  v385 = (a2 + 486716);
  v386 = (a2 + 620);
  if (!*(a2 + 620))
  {
    goto LABEL_246;
  }

  v15 = *(a2 + 12);
  if (v15 <= 3)
  {
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        if (*(a2 + 16) != *(a2 + 160))
        {
        }

        if (*(a2 + 156))
        {
          v132 = 0;
          v133 = a2 + 487328;
          v134 = *(a2 + 487264);
          v135 = *(a2 + 487276);
          v434 = *(a2 + 487300);
          v422 = *(a2 + 487312);
          v136 = *(a2 + 20);
          do
          {
            v137 = *(a2 + 140 + 4 * (v132 % *(a2 + 132)));
            v138 = (a2 + 487268);
            v139 = 5;
            do
            {
              bzero((v133 + *(v138 - 1)), *v138);
              v138 += 3;
              --v139;
            }

            while (v139);
            if (v136 >= v137)
            {
              v141 = v137;
            }

            else
            {
              v141 = v136;
            }

            LOWORD(v136) = v136 - v137;
            ++v132;
          }

          while (v132 < *(a2 + 156));
        }
      }

      else
      {
        if (*(a2 + 16) != *(a2 + 160))
        {
        }

        v58 = a2 + 487328;
        v59 = *(a2 + 487264);
        v60 = *(a2 + 487276);
        v429 = *(a2 + 487300);
        v417 = *(a2 + 487312);
        v407 = *(a2 + 487288);
        if (*(a2 + 156))
        {
          v61 = 0;
          v62 = *(a2 + 20);
          do
          {
            v63 = *(a2 + 140 + 4 * (v61 % *(a2 + 132)));
            v64 = (a2 + 487268);
            v65 = 5;
            do
            {
              bzero((v58 + *(v64 - 1)), *v64);
              v64 += 3;
              --v65;
            }

            while (v65);
            if (v62 >= v63)
            {
              v66 = v63;
            }

            else
            {
              v66 = v62;
            }

            LOWORD(v62) = v62 - v63;
            ++v61;
          }

          while (v61 < *(a2 + 156));
          v59 = *(a2 + 487264);
          v60 = *(a2 + 487276);
          v429 = *(a2 + 487300);
          v407 = *(a2 + 487288);
          v417 = *(a2 + 487312);
        }

        if (*(a2 + 20) != *(a2 + 216))
        {
        }

        if (*(a2 + 212))
        {
          v67 = 0;
          v68 = 0;
          v69 = *(a2 + 16);
          do
          {
            v70 = *(a2 + 196 + 4 * (v68 % *(a2 + 188)));
            v71 = (a2 + 487268);
            v72 = 5;
            do
            {
              bzero((v58 + *(v71 - 1)), *v71);
              v71 += 3;
              --v72;
            }

            while (v72);
            if (v69 >= v70)
            {
              v73 = v70;
            }

            else
            {
              v73 = v69;
            }

            v67 += v70;
            LOWORD(v69) = v69 - v70;
            ++v68;
          }

          while (v68 < *(a2 + 212));
        }
      }
    }

    else if (v15)
    {
      if (v15 != 1)
      {
        goto LABEL_489;
      }

      if (*(a2 + 16) != *(a2 + 160))
      {
      }

      v25 = a2 + 487328;
      v26 = *(a2 + 487264);
      v27 = *(a2 + 487276);
      v427 = *(a2 + 487300);
      v415 = *(a2 + 487312);
      v406 = *(a2 + 487288);
      if (*(a2 + 156))
      {
        v28 = 0;
        v29 = *(a2 + 20);
        do
        {
          v30 = *(a2 + 140 + 4 * (v28 % *(a2 + 132)));
          v31 = (a2 + 487268);
          v32 = 5;
          do
          {
            bzero((v25 + *(v31 - 1)), *v31);
            v31 += 3;
            --v32;
          }

          while (v32);
          if (v29 >= v30)
          {
            v33 = v30;
          }

          else
          {
            v33 = v29;
          }

          LOWORD(v29) = v29 - v30;
          ++v28;
        }

        while (v28 < *(a2 + 156));
        v26 = *(a2 + 487264);
        v27 = *(a2 + 487276);
        v427 = *(a2 + 487300);
        v406 = *(a2 + 487288);
        v415 = *(a2 + 487312);
      }

      if (*(a2 + 20) != *(a2 + 216))
      {
      }

      if (*(a2 + 212))
      {
        v34 = 0;
        v35 = 0;
        v36 = *(a2 + 16);
        do
        {
          v37 = *(a2 + 196 + 4 * (v35 % *(a2 + 188)));
          v38 = (a2 + 487268);
          v39 = 5;
          do
          {
            bzero((v25 + *(v38 - 1)), *v38);
            v38 += 3;
            --v39;
          }

          while (v39);
          if (v36 >= v37)
          {
            v40 = v37;
          }

          else
          {
            v40 = v36;
          }

          v34 += v37;
          LOWORD(v36) = v36 - v37;
          ++v35;
        }

        while (v35 < *(a2 + 212));
      }
    }

    else
    {
      if (*(a2 + 16) != *(a2 + 160))
      {
      }

      if (*(a2 + 156))
      {
        v107 = 0;
        v108 = a2 + 487328;
        v109 = *(a2 + 487264);
        v110 = *(a2 + 487276);
        v432 = *(a2 + 487300);
        v420 = *(a2 + 487312);
        v404 = *(a2 + 487288);
        v111 = *(a2 + 20);
        do
        {
          v112 = *(a2 + 140 + 4 * (v107 % *(a2 + 132)));
          v113 = (a2 + 487268);
          v114 = 5;
          do
          {
            bzero((v108 + *(v113 - 1)), *v113);
            v113 += 3;
            --v114;
          }

          while (v114);
          if (v111 >= v112)
          {
            v115 = v112;
          }

          else
          {
            v115 = v111;
          }

          LOWORD(v111) = v111 - v112;
          ++v107;
        }

        while (v107 < *(a2 + 156));
      }
    }
  }

  else if (v15 <= 5)
  {
    if (v15 == 4)
    {
      if (*(a2 + 16) != *(a2 + 160))
      {
      }

      v116 = a2 + 487328;
      v117 = *(a2 + 487264);
      v118 = *(a2 + 487276);
      v433 = *(a2 + 487300);
      v421 = *(a2 + 487312);
      v409 = *(a2 + 487288);
      if (*(a2 + 156))
      {
        v119 = 0;
        v120 = *(a2 + 20);
        do
        {
          v121 = *(a2 + 140 + 4 * (v119 % *(a2 + 132)));
          v122 = (a2 + 487268);
          v123 = 5;
          do
          {
            bzero((v116 + *(v122 - 1)), *v122);
            v122 += 3;
            --v123;
          }

          while (v123);
          if (v120 >= v121)
          {
            v124 = v121;
          }

          else
          {
            v124 = v120;
          }

          LOWORD(v120) = v120 - v121;
          ++v119;
        }

        while (v119 < *(a2 + 156));
        v117 = *(a2 + 487264);
        v118 = *(a2 + 487276);
        v433 = *(a2 + 487300);
        v409 = *(a2 + 487288);
        v421 = *(a2 + 487312);
      }

      if (*(a2 + 20) != *(a2 + 216))
      {
      }

      if (*(a2 + 212))
      {
        v125 = 0;
        v126 = 0;
        v127 = *(a2 + 16);
        do
        {
          v128 = *(a2 + 196 + 4 * (v126 % *(a2 + 188)));
          v129 = (a2 + 487268);
          v130 = 5;
          do
          {
            bzero((v116 + *(v129 - 1)), *v129);
            v129 += 3;
            --v130;
          }

          while (v130);
          if (v127 >= v128)
          {
            v131 = v128;
          }

          else
          {
            v131 = v127;
          }

          v125 += v128;
          LOWORD(v127) = v127 - v128;
          ++v126;
        }

        while (v126 < *(a2 + 212));
      }
    }

    else
    {
      if (*(a2 + 16) != *(a2 + 160))
      {
      }

      v41 = a2 + 487328;
      v42 = *(a2 + 487264);
      v43 = *(a2 + 487276);
      v428 = *(a2 + 487300);
      v416 = *(a2 + 487312);
      if (*(a2 + 156))
      {
        v44 = 0;
        v45 = *(a2 + 20);
        do
        {
          v46 = *(a2 + 140 + 4 * (v44 % *(a2 + 132)));
          v47 = (a2 + 487268);
          v48 = 5;
          do
          {
            bzero((v41 + *(v47 - 1)), *v47);
            v47 += 3;
            --v48;
          }

          while (v48);
          if (v45 >= v46)
          {
            v50 = v46;
          }

          else
          {
            v50 = v45;
          }

          LOWORD(v45) = v45 - v46;
          ++v44;
        }

        while (v44 < *(a2 + 156));
        v42 = *(a2 + 487264);
        v43 = *(a2 + 487276);
        v416 = *(a2 + 487312);
        v428 = *(a2 + 487300);
      }

      if (*(a2 + 20) != *(a2 + 216))
      {
      }

      if (*(a2 + 212))
      {
        v51 = 0;
        v52 = 0;
        v53 = *(a2 + 16);
        do
        {
          v54 = *(a2 + 196 + 4 * (v52 % *(a2 + 188)));
          v55 = (a2 + 487268);
          v56 = 5;
          do
          {
            bzero((v41 + *(v55 - 1)), *v55);
            v55 += 3;
            --v56;
          }

          while (v56);
          if (v53 >= v54)
          {
            v57 = v54;
          }

          else
          {
            v57 = v53;
          }

          v51 += v54;
          LOWORD(v53) = v53 - v54;
          ++v52;
        }

        while (v52 < *(a2 + 212));
      }
    }
  }

  else
  {
    switch(v15)
    {
      case 6:
        if (*(a2 + 16) != *(a2 + 160))
        {
        }

        v74 = a2 + 487328;
        v75 = *(a2 + 487264);
        v76 = *(a2 + 487276);
        v430 = *(a2 + 487300);
        v418 = *(a2 + 487312);
        if (*(a2 + 156))
        {
          v77 = 0;
          v78 = *(a2 + 20);
          do
          {
            v79 = *(a2 + 140 + 4 * (v77 % *(a2 + 132)));
            v80 = (a2 + 487268);
            v81 = 5;
            do
            {
              bzero((v74 + *(v80 - 1)), *v80);
              v80 += 3;
              --v81;
            }

            while (v81);
            if (v78 >= v79)
            {
              v83 = v79;
            }

            else
            {
              v83 = v78;
            }

            LOWORD(v78) = v78 - v79;
            ++v77;
          }

          while (v77 < *(a2 + 156));
          v75 = *(a2 + 487264);
          v76 = *(a2 + 487276);
          v418 = *(a2 + 487312);
          v430 = *(a2 + 487300);
        }

        if (*(a2 + 20) != *(a2 + 216))
        {
        }

        if (*(a2 + 212))
        {
          v84 = 0;
          v85 = 0;
          v86 = *(a2 + 16);
          do
          {
            v87 = *(a2 + 196 + 4 * (v85 % *(a2 + 188)));
            v88 = (a2 + 487268);
            v89 = 5;
            do
            {
              bzero((v74 + *(v88 - 1)), *v88);
              v88 += 3;
              --v89;
            }

            while (v89);
            if (v86 >= v87)
            {
              v90 = v87;
            }

            else
            {
              v90 = v86;
            }

            v84 += v87;
            LOWORD(v86) = v86 - v87;
            ++v85;
          }

          while (v85 < *(a2 + 212));
        }

        break;
      case 7:
        if (*(a2 + 16) != *(a2 + 160))
        {
        }

        v91 = a2 + 487328;
        v92 = *(a2 + 487264);
        v93 = *(a2 + 487276);
        v431 = *(a2 + 487300);
        v419 = *(a2 + 487312);
        v408 = *(a2 + 487288);
        if (*(a2 + 156))
        {
          v94 = 0;
          v95 = *(a2 + 20);
          do
          {
            v96 = *(a2 + 140 + 4 * (v94 % *(a2 + 132)));
            v97 = (a2 + 487268);
            v98 = 5;
            do
            {
              bzero((v91 + *(v97 - 1)), *v97);
              v97 += 3;
              --v98;
            }

            while (v98);
            if (v95 >= v96)
            {
              v99 = v96;
            }

            else
            {
              v99 = v95;
            }

            LOWORD(v95) = v95 - v96;
            ++v94;
          }

          while (v94 < *(a2 + 156));
          v92 = *(a2 + 487264);
          v93 = *(a2 + 487276);
          v431 = *(a2 + 487300);
          v408 = *(a2 + 487288);
          v419 = *(a2 + 487312);
        }

        if (*(a2 + 20) != *(a2 + 216))
        {
        }

        if (*(a2 + 212))
        {
          v100 = 0;
          v101 = 0;
          v102 = *(a2 + 16);
          do
          {
            v103 = *(a2 + 196 + 4 * (v101 % *(a2 + 188)));
            v104 = (a2 + 487268);
            v105 = 5;
            do
            {
              bzero((v91 + *(v104 - 1)), *v104);
              v104 += 3;
              --v105;
            }

            while (v105);
            if (v102 >= v103)
            {
              v106 = v103;
            }

            else
            {
              v106 = v102;
            }

            v100 += v103;
            LOWORD(v102) = v102 - v103;
            ++v101;
          }

          while (v101 < *(a2 + 212));
        }

        break;
      case 8:
        if (*(a2 + 16) != *(a2 + 160))
        {
        }

        if (*(a2 + 156))
        {
          v16 = 0;
          v17 = a2 + 487328;
          v18 = *(a2 + 487264);
          v19 = *(a2 + 487276);
          v426 = *(a2 + 487300);
          v414 = *(a2 + 487312);
          v403 = *(a2 + 487288);
          v20 = *(a2 + 20);
          do
          {
            v21 = *(a2 + 140 + 4 * (v16 % *(a2 + 132)));
            v22 = (a2 + 487268);
            v23 = 5;
            do
            {
              bzero((v17 + *(v22 - 1)), *v22);
              v22 += 3;
              --v23;
            }

            while (v23);
            if (v20 >= v21)
            {
              v24 = v21;
            }

            else
            {
              v24 = v20;
            }

            LOWORD(v20) = v20 - v21;
            ++v16;
          }

          while (v16 < *(a2 + 156));
        }

        break;
      default:
LABEL_489:
    }
  }

  if (*v386)
  {
    v142 = *(a2 + 12);
    if (v142 >= 9)
    {
    }

    v390 = *(a2 + 688);
    v143 = *(a2 + 696);
    v144 = *(a2 + 296);
    v145 = *(a2 + 300);
    v146 = *(a2 + 304);
    v147 = 8;
    v148 = 1 << v142;
    if ((v148 & 0x62) == 0)
    {
      v149 = 0;
      if ((v148 & 0x98) == 0)
      {
LABEL_171:
        v388 = 8u / *(a2 + 164);
        v391 = *(a2 + 668);
        v395 = v149;
        v392 = *(a2 + 692);
        v443 = 0.0;
        v444 = 0.0;
        __asm { FMOV            V11.2S, #1.0 }

        v153 = *(a2 + 676);
        if (*(a2 + 676))
        {
          v154 = 0;
          v155 = *(a2 + 680);
          v156 = *(a2 + 684);
          do
          {
            v410 = v154;
            v157 = a2 + 132 + 56 * v154;
            v435 = *(v157 + 24);
            if (v435)
            {
              v158 = 0;
              v159 = a2 + 58680 + 184320 * v154;
              v423 = *(v157 + 52);
              do
              {
                if (v423)
                {
                  v160 = 0;
                  v439 = *(a2 + 632);
                  do
                  {
                    v161 = (v159 + v160);
                    v445 = 0;
                    LODWORD(v446) = 0;
                    v162 = *(v159 + v160 + 340);
                    if (v162)
                    {
                      *v13.i32 = v162;
                    }

                    else
                    {
                      *v13.i32 = 1.0;
                    }

                    v163.i32[1] = *(v159 + v160 + 168);
                    v163.i32[0] = *(v159 + v160 + 160);
                    v164 = vdiv_f32(v163, vdup_lane_s32(v13, 0));
                    v165 = vmul_n_f32(v164, v162);
                    v166.i32[1] = *(v159 + v160 + 176);
                    v167 = vmul_n_f32(v165, v439);
                    v166.i32[0] = *(v159 + v160 + 164);
                    v161[88] = fmaxf(vaddv_f32(vdiv_f32(vmls_f32(v166, v164, v165), vbsl_s8(vceqz_f32(v167), _D11, v167))) * 65536.0, 0.0);
                    v168 = *&v446;
                    v161[86] = v446;
                    v161[87] = v445;
                    if (v168 >= v156 && v161[88] >= v155)
                    {
                      *(v159 + v160 + 356) = 1;
                    }

                    v160 += 360;
                  }

                  while (360 * v423 != v160);
                  v159 += v160;
                }

                ++v158;
              }

              while (v158 != v435);
            }

            v154 = v410 + 1;
          }

          while (v410 != v395);
        }

        *(a2 + 648) = 0;
        v411 = *(a2 + 34);
        if (*(a2 + 34))
        {
          v397 = 0;
          v169 = v388 >> 1;
          v424 = *(a2 + 32);
          v170 = (v391 + (v391 >> 15));
          v171 = -(v170 >> 1);
          v389 = (v390 - v392);
          v172 = 1.0 - v143;
          if (v143 == 1.0)
          {
            v172 = 1.0;
          }

          v387 = v172;
          v173 = v169;
          v174 = -v144;
          v393 = v170 >> 1;
          if (v171 <= v170 >> 1)
          {
            v175 = v170 >> 1;
          }

          else
          {
            v175 = -(v170 >> 1);
          }

          v440 = v175;
          v399 = -(v170 >> 1);
          do
          {
            if (v424)
            {
              v436 = 0;
              do
              {
                v467 = 0;
                v465 = 0u;
                v466 = 0u;
                v463 = 0u;
                v464 = 0u;
                v461 = 0u;
                v462 = 0u;
                v459 = 0u;
                v460 = 0u;
                v457 = 0u;
                v458 = 0u;
                v456 = 0u;
                v454 = 0u;
                memset(v455, 0, sizeof(v455));
                v452 = 0u;
                v453 = 0u;
                v450 = 0u;
                v451 = 0u;
                v448 = 0u;
                v449 = 0u;
                v446 = 0u;
                v447 = 0u;
                if (v171 <= v393)
                {
                  v177 = 0;
                  v176 = 0;
                  v178 = v171;
                  do
                  {
                    v401 = v178;
                    v179 = v178 + v397;
                    do
                    {
                      if (v171 + v436 < v424 && v179 < v411)
                      {
                        v181 = 0;
                        v182 = *(a2 + 672);
                        v183 = a2 + 58696;
                        do
                        {
                          v184 = a2 + 132 + 56 * v181;
                          if (v181)
                          {
                            v185 = v171 + v436;
                          }

                          else
                          {
                            v185 = v179;
                          }

                          v186 = v185 * *v184;
                          if ((*v184 + v186) >= *(v184 + 24))
                          {
                            v187 = *(v184 + 24);
                          }

                          else
                          {
                            v187 = (*v184 + v186);
                          }

                          if (v187 > v186)
                          {
                            if (v181)
                            {
                              v188 = v179;
                            }

                            else
                            {
                              v188 = v171 + v436;
                            }

                            v189 = *(v184 + 52);
                            if ((v188 + 1) >= v189)
                            {
                              v190 = v189;
                            }

                            else
                            {
                              v190 = (v188 + 1);
                            }

                            v191 = v186;
                            v192 = v189 * v186 + v188;
                            v193 = a2 + 58680 + 184320 * v181 + 360 * v192;
                            v194 = v183 + 360 * v192;
                            do
                            {
                              v195 = v194;
                              v196 = v188;
                              v197 = v193;
                              if (v188 < v190)
                              {
                                do
                                {
                                  if (!v153 || *(v197 + 356) == 1)
                                  {
                                    v198 = 0;
                                    v199 = *(v197 + 340);
                                    do
                                    {
                                      v200 = (&v446 + v198);
                                      *v200 = vaddq_f32(*(v197 + v198), *(&v446 + v198));
                                      v200[1].f32[0] = *(v195 + v198) + *(&v446 + v198 + 16);
                                      v198 += 20;
                                    }

                                    while (v198 != 340);
                                    v177 += v199;
                                    if (v199)
                                    {
                                      v14.f32[0] = v199;
                                    }

                                    else
                                    {
                                      v14.f32[0] = 1.0;
                                    }

                                    v14 = vdup_lane_s32(v14, 0);
                                    v201.i32[1] = *(v197 + 168);
                                    v201.i32[0] = *(v197 + 160);
                                    v202 = vdiv_f32(v201, v14);
                                    v203 = vmul_n_f32(v202, v199);
                                    v204 = vmul_n_f32(v203, *(a2 + 632));
                                    v205.i32[1] = *(v197 + 176);
                                    v205.i32[0] = *(v197 + 164);
                                    v176 += fmaxf(vaddv_f32(vdiv_f32(vmls_f32(v205, v202, v203), vbsl_s8(vceqz_f32(v204), _D11, v204))) * v182, 0.0);
                                  }

                                  v197 += 360;
                                  ++v196;
                                  v195 += 360;
                                }

                                while (v196 != v190);
                              }

                              v193 += 360 * v189;
                              ++v191;
                              v194 += 360 * v189;
                            }

                            while (v191 != v187);
                          }

                          ++v181;
                          v183 += 184320;
                        }

                        while (v181 != v395 + 1);
                      }

                      _ZF = v171++ == v440;
                    }

                    while (!_ZF);
                    v178 = v401 + 1;
                    v171 = v399;
                  }

                  while (v401 != v440);
                  DWORD1(v466) = v177;
                }

                else
                {
                  v176 = 0;
                }

                v206 = v444 <= v143 || v176 <= v390 - (((v444 - v143) * v389) / v387);
                v171 = v399;
                v207 = v145 * (v174 + (v173 * v443));
                v208 = v436;
                _ZF = !v206;
                if (v206)
                {
                  v210 = 0;
                }

                else
                {
                  v210 = v176;
                }

                v211 = a2 + 480060 + 52 * (v436 + v397 * v424);
                *(v211 + 24) = (v444 * 1000.0);
                *(v211 + 28) = v210;
                if (_ZF)
                {
                  v212 = -96;
                }

                else
                {
                  v212 = -120;
                }

                *(v211 + 32) = v146 * v207;
                *(v211 + 36) = 0;
                *(v211 + 40) = 0;
                *(v211 + 44) = v212;
                ++v436;
              }

              while (v208 + 1 != v424);
            }

            ++v397;
          }

          while (v397 != v411);
        }

        goto LABEL_246;
      }

      v147 = 4;
    }

    if (8u / *(a2 + 164) != v147 / *(a2 + 220))
    {
    }

    v149 = 1;
    goto LABEL_171;
  }

LABEL_246:
  v213 = *(a2 + 32);
  v214 = *(a2 + 34);
  v215 = v214 * v213;
  if (v214 * v213)
  {
    v216 = a2 + 6968;
    v217 = a2 + 7112;
    v218 = vcvts_n_s32_f32(*(a2 + 296), 0xCuLL);
    v219 = (a2 + 6984);
    do
    {
      v220 = 0;
      v221 = v216;
      v222 = v217;
      do
      {
        for (i = 0; i != 24; i += 8)
        {
          v224 = *(v221 + i);
          *(v221 + i) = *(v222 + i);
          *(v222 + i) = v224;
        }

        ++v220;
        v222 -= 24;
        v221 += 24;
      }

      while (v220 != 3);
      v225 = 0;
      v226 = v219;
      do
      {
        v227 = *(v226 - 1);
        *(v226 - 1) = v227 << v228;
        *v226 = v229;
        ++v225;
        v226 += 3;
      }

      while (v225 != 14);
      v216 += 404;
      v217 += 404;
      v219 = (v219 + 404);
      --v215;
    }

    while (v215);
  }

  bzero((a2 + 441656), 0x6E00uLL);
  if (v214)
  {
    v230 = *(a2 + 300) * *(a2 + 304);
    v231 = a2 + 463672;
    v232 = a2 + 6968;
    v233 = *(a2 + 316);
    v234 = a2 + 441656;
    do
    {
      if (v213)
      {
        v235 = (v232 + 16);
        v236 = (v232 + 344);
        v237 = v234;
        v238 = v231;
        v239 = v213;
        do
        {
          v240 = 0;
          v241 = 0;
          v242 = 0;
          v243 = (v232 + 388);
          v244 = v235;
          do
          {
            v245 = *(v244 - 1);
            v246 = (v245 / v233);
            if (v246)
            {
              v247 = v230 * vcvts_n_f32_s64((*v244 << 8) / v245, 8uLL);
              if (v247 < 0.0)
              {
                v248 = -0.5;
              }

              else
              {
                v248 = 0.5;
              }

              v249 = (v247 + v248);
              v250 = *(v244 - 4);
            }

            else
            {
              v249 = 0;
              v250 = 0;
            }

            v251 = (v237 + v240 * 4);
            *v251 = v250;
            v251[14] = v246;
            v251[28] = v249;
            v242 += v250;
            ++v240;
            v244 += 3;
          }

          while (v240 != 14);
          v252 = *(v232 + 384);
          if (v252 && *v243)
          {
            v253 = 0;
            v254 = *v243 * *v243;
            v255 = 16 * v241;
            if (v242 <= 1)
            {
              v256 = 1;
            }

            else
            {
              v256 = v242;
            }

            v257 = (a2 + 334);
            v258 = v255 / v256;
            do
            {
              v260 = *v257;
              v257 += 2;
              v259 = v260;
              if (v253 > 2)
              {
                break;
              }

              ++v253;
              v261 = v259 == 0xFFFF || v258 < v259;
            }

            while (!v261);
            v262 = 10000 * (*(v232 + 396) * v252 - v254) / v254 > *(v257 - 1);
          }

          else
          {
            v262 = 0;
          }

          v263 = 0;
          *(v237 + 168) = v262;
          v264 = v236;
          do
          {
            v265 = (v238 + v263);
            *v265 = *(v264 - 2);
            v265[4] = *(v264 - 1);
            v266 = *v264;
            v264 += 3;
            v265[8] = v266;
            v263 += 4;
          }

          while (v263 != 16);
          v232 += 404;
          v237 += 172;
          v238 += 48;
          v235 = (v235 + 404);
          v236 += 101;
          --v239;
        }

        while (v239);
      }

      v234 += 172 * v213;
      v231 += 48 * v213;
      --v214;
    }

    while (v214);
  }

  if (*(a2 + 320) != 1)
  {
  }

  v267 = 0;
  v400 = a2 + 320;
  v394 = a2 + 469820;
  v268 = &v449 + 8;
  v269 = 1;
  do
  {
    v412 = v269;
    v270 = *(v400 + 4 * v267);
    if (v270 >= 1)
    {
      v271 = v394 + (v267 << 11);
      v272 = *(a2 + 32);
      v273 = *(a2 + 34);
      if (v270 == 1)
      {
        v274 = v273 * v272;
        if (v274)
        {
          v275 = a2 + 441656;
          do
          {
            v275 += 172;
            v271 += 16;
            --v274;
          }

          while (v274);
        }
      }

      else
      {
        v276 = 0;
        if (v272 >= v270)
        {
          v277 = *(v400 + 4 * v267);
        }

        else
        {
          v277 = *(a2 + 32);
        }

        if (v273 >= v270)
        {
          v278 = *(v400 + 4 * v267);
        }

        else
        {
          v278 = *(a2 + 34);
        }

        v441 = v278;
        v279 = *(a2 + 34);
        v280 = *(a2 + 32);
        do
        {
          if (v277 <= v280)
          {
            v282 = 0;
            LODWORD(v281) = v280;
            do
            {
              v283 = v282 + v281 * v276;
              v454 = 0u;
              memset(v455, 0, 28);
              v452 = 0u;
              v453 = 0u;
              v450 = 0u;
              v451 = 0u;
              v448 = 0u;
              v449 = 0u;
              v446 = 0u;
              v447 = 0u;
              if (v273)
              {
                v284 = 0;
                v285 = 0;
                v286 = a2 + 441656 + 172 * v283;
                v287 = a2 + 441712 + 172 * (v282 + v276 * v281);
                v288 = v441;
                do
                {
                  v289 = v287;
                  v290 = v277;
                  v291 = v286;
                  if (v272)
                  {
                    do
                    {
                      if (*(v291 + 168))
                      {
                        v292 = v289;
                        v293 = &v449 + 2;
                        v294 = 14;
                        do
                        {
                          *(v293 - 14) += *(v292 - 14);
                          v295 = *v292;
                          *v293 += *v292;
                          v293[14] += v292[14] * v295;
                          ++v293;
                          ++v292;
                          --v294;
                        }

                        while (v294);
                        v284 = ++v285;
                      }

                      v291 += 172;
                      v289 += 43;
                      --v290;
                    }

                    while (v290);
                  }

                  v286 += 172 * v280;
                  v287 += 172 * v280;
                  --v288;
                }

                while (v288);
                v455[24] = v284;
              }

              v296 = 0;
              v297 = v271 + 16 * v283;
              do
              {
                v298 = &v446 + v296;
                v299 = *(&v449 + v296 + 8);
                if (v299)
                {
                  v300 = *(v298 + 28);
                  v301 = v299 >> 1;
                  if (v300 < 0)
                  {
                    v301 = -v301;
                  }

                  *(v298 + 28) = (v301 + v300) / v299;
                }

                v296 += 4;
              }

              while (v296 != 56);
              v281 = *(a2 + 32);
              LOWORD(v280) = *(a2 + 32);
              v261 = v282++ < (v281 - v277);
            }

            while (v261);
            v279 = *(a2 + 34);
          }

          else
          {
            v281 = v280;
          }

          v280 = v281;
          v261 = v276++ < v279 - v441;
        }

        while (v261);
      }
    }

    v269 = 0;
    v267 = 1;
  }

  while ((v412 & 1) != 0);
  v302 = *(a2 + 12);
  if (v302 >= 9)
  {
  }

  v303 = *(a2 + 34);
  v304 = v303 * *(a2 + 32);
  v305 = (a2 + 463672);
  if (v304)
  {
    v306 = qword_2249D2408[v302];
    v307 = v303 * *(a2 + 32);
    do
    {
      v308 = v305;
      v309 = v306;
      do
      {
        v308[2561] = *v308;
        v308[2565] = v308[4];
        v308[2569] = v308[8];
        ++v308;
        --v309;
      }

      while (v309);
      v305 += 12;
      --v307;
    }

    while (v307);
  }

  *(a2 + 487252) = *(a2 + 6881);
  *(a2 + 487256) = *(a2 + 6885);
  if (*(a2 + 6880))
  {
    v310 = a2 + 486720;
    v311 = *v385;
    if (v304 && v311 <= 0x7F)
    {
      v312 = (v310 + 4 * v311);
      v313 = v304 - 1;
      v314 = (a2 + 473916);
      do
      {
        LOWORD(v311) = *v385;
        if (v315 >= 0.0)
        {
          *v312++ = v315;
          LOWORD(v311) = v311 + 1;
          *v385 = v311;
        }

        if (!v313)
        {
          break;
        }

        v314 += 12;
        --v313;
      }

      while (v311 < 0x80u);
    }

    if (v311)
    {
      v316 = 0;
      v317 = *v385;
      do
      {
        v318 = (42949673 * (*(a2 + 487252 + v316) * v317 + 50)) >> 32;
        if (v318 >= v317)
        {
          LODWORD(v318) = v317 - 1;
        }

        *(a2 + 487232 + 4 * v316++) = *(v310 + 4 * v318);
      }

      while (v316 != 5);
    }

    v319 = 0;
    v320 = a2 + 6888;
    while (2)
    {
      v321 = 0;
      do
      {
        v322 = *(v320 + 4 * v321);
        if (v322 < 0.0)
        {
          goto LABEL_350;
        }

        v323 = *(a2 + 487232 + 4 * v321);
        if (v321 > 3)
        {
          break;
        }

        ++v321;
      }

      while (v322 <= v323);
      if (v322 > v323)
      {
LABEL_350:
        if (*(a2 + 487260) >= 5u)
        {
        }

        break;
      }

      *(a2 + 487260) = ++v319;
      v320 += 20;
      if (v319 != 4)
      {
        continue;
      }

      break;
    }
  }

  if (*(a2 + 412))
  {
    v324 = *(a2 + 416);
    if (*(a2 + 487260) && v324 > *(a2 + 420))
    {
      v324 = *(a2 + 420);
    }
  }

  else
  {
    v324 = 0.0;
  }

  v325 = 0;
  v326 = ((*(a2 + 300) * *(a2 + 296)) * *(a2 + 304)) * -0.5;
  v327 = 1;
  do
  {
    v442 = v327;
    v328 = *(v400 + 4 * v325);
    if (v328 >= 1)
    {
      v329 = *(a2 + 34);
      v330 = v329 - v328;
      if (v329 >= v328)
      {
        v331 = 0;
        v332 = a2 + 480060;
        v333 = *(a2 + 469816);
        v334 = (a2 + 473916);
        v335 = v394 + (v325 << 11);
        v336 = a2 + 372 + 20 * v325;
        v337 = v325 << 6;
        v338 = *(a2 + 32);
        v437 = v338 - v328;
        v339 = *(a2 + 32);
        v398 = v329 - v328;
        v396 = v338;
        while (v338 < v328)
        {
LABEL_428:
          v334 += 12 * v339;
          v335 += 16 * v339;
          v332 += 52 * v339;
          _ZF = v331++ == v330;
          if (_ZF)
          {
            goto LABEL_430;
          }
        }

        v425 = v331;
        v340 = 0;
        v405 = v334;
        v413 = v335;
        v402 = v332;
        while (1)
        {
          if (*(a2 + 352))
          {
            v342 = v268 & 0xFFFFFFFE;
            if (!*(v335 + 12))
            {
              ++v342;
            }
          }

          else
          {
            v342 = v268 & 0xFFFFFFFE;
          }

          if (*(a2 + 356))
          {
            v343 = *(v335 + 8);
            v344 = vcvts_n_f32_s32(v343, 4uLL) + v333;
            v345 = *(a2 + 368);
            v346 = v344 >= v345 || v343 < *(a2 + 360);
            v347 = v346 ? v342 & 0xFFFFFFFB | (4 * (v344 >= v345)) : v342 & 0xFFFFFFFB | (4 * (v344 <= *(a2 + 364)));
          }

          else
          {
            v347 = v342 & 0xFFFFFFFB;
          }

          if (*v336)
          {
            v348 = *(v336 + 4);
            if (v348 <= 1)
            {
              v348 = 1;
            }

            v349 = *(v335 + 4);
            v350 = *v335 / v348;
            v351 = (*(v335 + 8) * 0.0625) - v326;
            if (v351 < 0.0)
            {
              v351 = -v351;
            }

            v352 = ((1.0 - ((v351 + -16.0) * 0.0625)) * 20.0) + (((v351 + -16.0) * 0.0625) * 10.0);
            if (v351 > 32.0)
            {
              v352 = 10.0;
            }

            if (v351 <= 16.0)
            {
              v352 = ((1.0 - ((v351 + -8.0) * 0.125)) * 40.0) + (((v351 + -8.0) * 0.125) * 20.0);
            }

            v353 = v351 > 8.0 ? v352 : 40.0;
            v354 = (*(v336 + 8) * ((sqrtf(v350) * v353) + 0.5)) >> 8;
            v355 = v350 >= *(v336 + 16) || v349 >= *(v336 + 12);
            v356 = v355 && v349 >= v354;
            v357 = v356 ? 0 : 8;
            v358 = v357 | v347 & 0xFFFFFFF7;
          }

          else
          {
            v358 = v347 & 0xFFFFFFF7;
          }

          v359 = *(a2 + 412) ? v358 & 0xFFFFFFEF | (16 * (v341 >= v324)) : v358 & 0xFFFFFFEF;
          LODWORD(v268) = v359 & 0xFFFFFFDD;
          v360 = *(v335 + 8) * 0.0625;
          if (v328 != 1)
          {
            break;
          }

          if ((v442 & 1) == 0)
          {
          }

          *v332 = *v335;
          *(v332 + 8) = v360;
          *(v332 + 12) = v341;
          *(v332 + 16) = 0;
          *(v332 + 20) = v359 & 0xDD;
          v361 = ~(2 * v359) & 0x20;
          if ((v359 & 0xD) != 0)
          {
            v361 = 0;
          }

          *(v332 + 20) = v361 | v359 & 0x1D;
LABEL_425:
          v335 += 16;
          v334 += 12;
          v332 += 52;
          _ZF = v340++ == v437;
          if (_ZF)
          {
            v339 = *(a2 + 32);
            v330 = v398;
            v331 = v425;
            v334 = v405;
            v335 = v413;
            v338 = v396;
            v332 = v402;
            goto LABEL_428;
          }
        }

        if (v442)
        {
        }

        if ((v359 & 0xD) != 0)
        {
          goto LABEL_425;
        }

        v362 = *(v335 + 12);
        v363 = v328;
        v364 = v332;
LABEL_410:
        v365 = (v364 + 20);
        v366 = v328;
        while (1)
        {
          v367 = *v365;
          if (((*v365 & 0x10) != 0 || (*v365 & 1) != 0 && (v328 * v328) >> 1 >= v362) && !*(a2 + 332))
          {
            goto LABEL_423;
          }

          if (*(a2 + 350) == 1)
          {
            if ((*v365 & 0x20) != 0 && *(v365 - 3) <= v360)
            {
              goto LABEL_423;
            }
          }

          else
          {
            if (*(a2 + 350))
            {
            }

            if ((*v365 & 0x20) != 0 && *(v365 - 3) >= v360)
            {
              goto LABEL_423;
            }
          }

          *(v365 - 5) = *v335;
          *(v365 - 3) = v360;
          *v365 = v367 & 0x33 | v337 | 0x20;
LABEL_423:
          v365 += 13;
          if (!--v366)
          {
            v364 += 52 * *(a2 + 32);
            if (!--v363)
            {
              goto LABEL_425;
            }

            goto LABEL_410;
          }
        }
      }
    }

LABEL_430:
    v327 = 0;
    v325 = 1;
  }

  while ((v442 & 1) != 0);
  if (*(a2 + 424))
  {
    if (*v386)
    {
      v368 = *(a2 + 34) * *(a2 + 32);
      if (v368)
      {
        v369 = (a2 + 480104);
        do
        {
          if (*(a2 + 425) && (*v369 & 0x20) == 0)
          {
            *(v369 - 24) = *(v369 - 6) & 0xDD | 2;
          }

          v370 = *(v369 - 24);
          if ((v370 & 0x20) != 0)
          {
            if (*(a2 + 426))
            {
              v375 = *(v369 - 9);
              if ((v375 <= 0.0 || *(v369 - 3) >= 0.0) && (v375 >= 0.0 || *(v369 - 3) <= 0.0))
              {
                v376 = v375 >= 0.0 ? *(v369 - 9) : -v375;
                if (v376 > 1.0)
                {
                  v377 = *(v369 - 3);
                  if (v377 >= 0.0)
                  {
                    v378 = *(v369 - 3);
                  }

                  else
                  {
                    v378 = -v377;
                  }

                  if (v378 <= v376)
                  {
                    if (v377 == 0.0)
                    {
                      v381 = 1.0;
                    }

                    else
                    {
                      v381 = v378;
                    }

                    v380 = v376 / v381;
                  }

                  else
                  {
                    v380 = v378 / v376;
                  }

                  v382 = powf(v380, v379);
                  *(v369 - 9) = (v377 * v383) + (v375 * (1.0 - v383));
                  *(v369 - 7) = v383;
                }
              }
            }
          }

          else if (*(a2 + 427) && (*v369 & 0x20) != 0)
          {
            v371 = *(v369 - 5);
            v373 = *(v369 - 4);
            *(v369 - 11) = v371;
            *(v369 - 10) = v374;
            *(v369 - 9) = *(v369 - 3);
            *(v369 - 7) = 1.0;
            *(v369 - 24) = v370 | (32 * (v374 != 0)) | 0xC0;
          }

          v369 += 13;
          --v368;
        }

        while (v368);
      }
    }
  }
}

float *PDAF::PixelEngine::anonymous namespace::ShiftMapPostProcess(float *result)
{
  v44 = *MEMORY[0x277D85DE8];
  v33 = *(result + 17);
  if (*(result + 17))
  {
    v1 = result;
    v2 = 0;
    result = v41;
    v34 = *(v1 + 16);
    do
    {
      if (v34)
      {
        v3 = 0;
        v4 = v1[74];
        v5 = v1[75];
        v6 = v1[76];
        v7 = *(v1 + 178);
        do
        {
          v8 = 0;
          do
          {
            v39 = 0;
            v35 = v8;
            if (v8 == 1)
            {
              v9 = 0;
              v10 = 0;
              v11 = 0;
              v12 = 1;
              v13 = -255.0;
              do
              {
                v14 = 0;
                v36 = v12;
                v15 = 1;
                do
                {
                  v16 = v15;
                  v15 = 0;
                  if (v13 < (v6 * (v5 * (*(&v39 + 1) - v4))) && v39 >= v7)
                  {
                    v13 = v6 * (v5 * (*(&v39 + 1) - v4));
                    v11 = v39;
                    v10 = v39 >= v7;
                  }

                  v14 = 1;
                }

                while ((v16 & 1) != 0);
                v12 = 0;
                v9 = 1;
              }

              while ((v36 & 1) != 0);
            }

            else
            {
              if (v8 == 2)
              {
                v17 = -1;
              }

              else
              {
                v17 = 0;
              }

              v13 = v6 * (v5 * (*(&v39 + 1) - v4));
              v11 = v39;
              v10 = v39 >= v7;
            }

            *&v42[4 * v35] = v13;
            v41[v35 - 1] = v11;
            v38[v35 - 1] = v10;
            v8 = v35 + 1;
          }

          while (v35 != 2);
          v18 = *&v43[1];
          v19 = v41[1];
          v20 = v38[1];
          if (*(v1 + 726))
          {
            v21 = 0;
            v22 = 2;
            v23 = v42;
            v24 = &v40;
            v25 = &v37;
            v26 = 1;
            result = v41;
            do
            {
              v27 = v26;
              if (*v25 == 1 && v18 < *v23)
              {
                v19 = *v24;
                v20 = 1;
                v22 = v21;
                v18 = *v23;
              }

              v26 = 0;
              v21 = 1;
              v25 = v38;
              v24 = v41;
              v23 = v43;
            }

            while ((v27 & 1) != 0);
            v28 = v22 << 6;
          }

          else
          {
            v28 = 0x80;
          }

          v29 = &v1[13 * v2 * v34 + 120015 + 13 * v3];
          v30 = (v20 & 1) == 0;
          if (v20)
          {
            v31 = 0xFFFF;
          }

          else
          {
            v31 = 0;
          }

          *v29 = v19;
          *(v29 + 4) = v31;
          if (v30)
          {
            v32 = 8;
          }

          else
          {
            v32 = 32;
          }

          *(v29 + 8) = v18;
          *(v29 + 12) = 0;
          *(v29 + 16) = 0;
          *(v29 + 20) = v32 | v28;
          ++v3;
        }

        while (v3 != v34);
      }

      ++v2;
    }

    while (v2 != v33);
  }

  return result;
}

uint64_t PDAF::PixelEngine::anonymous namespace::WeightMapProcess(uint64_t result)
{
  if (*(result + 732))
  {
    v1 = *(result + 733);
    v2 = *(result + 734) == v1 ? 1 : *(result + 734) - v1;
    v3 = *(result + 34);
    if (*(result + 34))
    {
      v4 = 0;
      v5 = *(result + 280);
      v6 = result + 480060;
      v7 = *(result + 288);
      v8 = *(result + 270);
      v35 = *(result + 276);
      v9 = *(result + 32);
      v10 = (((v2 + ((v2 & 0x8000) >> 15)) >> 1) + 0x10000) / v2;
      do
      {
        v11 = v5 >> 8;
        v12 = v7 + v5;
        v13 = (v7 + v5 + 255) >> 8;
        v14 = (v5 >> 8) & ~(v5 >> 31);
        if (v11 > v8)
        {
          v14 = v8;
        }

        v15 = v13 & ~((v12 + 255) >> 31);
        if (v13 > v8)
        {
          v15 = v8;
        }

        v16 = v15 - v14;
        if (v15 < v14)
        {
          v16 = 0;
        }

        if (v9)
        {
          v17 = 0;
          v18 = *(result + 284);
          v19 = *(result + 268);
          v20 = *(result + 272);
          v21 = v35;
          do
          {
            v22 = 0;
            v23 = v21 >> 8;
            v24 = v18 + v21;
            v25 = (v18 + v21 + 255) >> 8;
            v26 = (v21 >> 8) & ~(v21 >> 31);
            if (v23 > v19)
            {
              v26 = v19;
            }

            v27 = v25 & ~((v24 + 255) >> 31);
            if (v25 > v19)
            {
              v27 = v19;
            }

            LODWORD(v28) = v27 - v26;
            if (v27 >= v26)
            {
              v28 = v28;
            }

            else
            {
              v28 = 0;
            }

            if (v15 > v14)
            {
              v22 = 0;
              v29 = result + 735 + v14 * v20 + v26;
              v30 = v16;
              do
              {
                if (v27 > v26)
                {
                  v31 = 0;
                  do
                  {
                    v32 = *(v29 + v31);
                    if (v32 <= v1)
                    {
                      v32 = v1;
                    }

                    v22 += v32;
                    ++v31;
                  }

                  while (v31 < v28);
                }

                v29 += v20;
                v33 = __OFSUB__(v30--, 1);
              }

              while (!((v30 < 0) ^ v33 | (v30 == 0)));
            }

            if (v28 * v16)
            {
              v22 /= v28 * v16;
            }

            v34 = (((v22 - v1) * v10) >> 8) & ~(((v22 - v1) * v10) >> 31);
            if (v34 >= 255)
            {
              LOBYTE(v34) = -1;
            }

            *(v6 + 48) = v34;
            v6 += 52;
            ++v17;
            v21 = v24;
          }

          while (v17 != v9);
        }

        ++v4;
        v5 = v12;
      }

      while (v4 != v3);
    }
  }

  return result;
}

void PDAF::PixelEngine::Process_x2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    PDAF::PixelEngine::Process_x2();
  }

  if (!a2)
  {
    PDAF::PixelEngine::Process_x2();
  }

  if (!a3)
  {
    PDAF::PixelEngine::Process_x2();
  }

  bzero((a3 + 469820), 0x4424uLL);
  *(a3 + 469816) = *(a3 + 292);
  v6 = *(a3 + 4);
  if (v6 <= 3)
  {
    if (v6 == 3)
    {
      v44[0] = a1;
      v44[1] = a2;
      return;
    }

    if (v6 == 2)
    {
      PDAF::PixelEngine::Process_x2();
    }

LABEL_48:
    PDAF::PixelEngine::Process_x2();
  }

  if (v6 != 5)
  {
    if (v6 == 4)
    {
      PDAF::PixelEngine::Process_x2();
    }

    goto LABEL_48;
  }

  if (*(a3 + 700) && *(a3 + 704))
  {
    v7 = *(a3 + 32);
    if (*(a3 + 34) * v7 >= 0x81)
    {
      PDAF::PixelEngine::Process_x2();
    }

    bzero((a3 + 427320), 0x3800uLL);
    v9 = *(a3 + 250) - *(a3 + 246);
    if (v9)
    {
      v10 = 0;
      v11 = *(a3 + 264);
      v12 = *(a3 + 266);
      v13 = *(a3 + 248) - *(a3 + 244);
      v14 = *(a3 + 720);
      LOWORD(v8) = *(a3 + 722);
      v15 = v8;
      v16 = *(a3 + 728);
      v17 = a3 + 427320 + 112 * -v7;
      v18 = *(a3 + 246) * *(a3 + 256);
      v19 = a1 + 2 * v18 + 2 * *(a3 + 244);
      v20 = a2 + 2 * v18 + 2 * *(a3 + 244);
      v21 = 2 * *(a3 + 256);
      do
      {
        if (v10)
        {
          v22 = 0;
        }

        else
        {
          v22 = v7;
        }

        v17 += 112 * v22;
        if (!v10)
        {
          v10 = v12;
        }

        if (v13 >= 1)
        {
          v23 = 0;
          v24 = 0;
          v25 = v17 - 112;
          v26 = v13 + 1;
          do
          {
            if (v24)
            {
              v27 = 0;
            }

            else
            {
              v24 = v11;
              v27 = 112;
            }

            v25 += v27;
            _H4 = *(v20 + v23);
            __asm { FCVT            S4, H4 }

            if (v16 >= _S4)
            {
              _H4 = *(v19 + v23);
              __asm { FCVT            S4, H4 }

              v36 = (((v14 + _S4) * v15) + 0.0);
              v37 = 32 - __clz(v36 ^ (v36 >> 31));
              if (v36 >> 31 == v36)
              {
                v38 = 0;
              }

              else
              {
                v38 = v37;
              }

              v39 = v38 ^ (v36 >> 31);
              if (v39 >= 6)
              {
                v40 = 6;
              }

              else
              {
                v40 = v39;
              }

              v41 = v40 + 7;
              if (v39 >= -7)
              {
                v42 = v41;
              }

              else
              {
                v42 = 0;
              }

              v43 = v25 + 8 * v42;
              *v43 = *v43 + _S4;
              ++*(v43 + 4);
            }

            --v24;
            --v26;
            v23 += 2;
          }

          while (v26 > 1);
        }

        --v10;
        v20 += v21;
        v19 += v21;
        --v9;
      }

      while (v9);
    }
  }
}

void PDAF::PixelEngine::Process_x3(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          bzero(a4 + 117455, 0x4424uLL);
          a4[117454] = a4[73];
          v5 = a4[1];
          if (v5 > 3)
          {
            if (v5 == 4)
            {
              __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 4557, "false");
            }

            if (v5 == 5)
            {
              __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 4561, "false");
            }
          }

          else
          {
            if (v5 == 2)
            {
              __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 4549, "false");
            }

            if (v5 == 3)
            {
              __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 4553, "false");
            }
          }

          __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 4565, "false");
        }

        __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 4544, "pContext != nullptr");
      }

      __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 4543, "pIn2 != nullptr");
    }

    __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 4542, "pIn1 != nullptr");
  }

  __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 4541, "pIn0 != nullptr");
}

void PDAF::PixelEngine::Process_x4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            bzero(a5 + 117455, 0x4424uLL);
            a5[117454] = a5[73];
            v6 = a5[1];
            if (v6 > 3)
            {
              if (v6 == 4)
              {
                __assert_rtn("Process_x4", "PDAFPixelEngine.cpp", 4596, "false");
              }

              if (v6 == 5)
              {
                __assert_rtn("Process_x4", "PDAFPixelEngine.cpp", 4600, "false");
              }
            }

            else
            {
              if (v6 == 2)
              {
                __assert_rtn("Process_x4", "PDAFPixelEngine.cpp", 4588, "false");
              }

              if (v6 == 3)
              {
                __assert_rtn("Process_x4", "PDAFPixelEngine.cpp", 4592, "false");
              }
            }

            __assert_rtn("Process_x4", "PDAFPixelEngine.cpp", 4604, "false");
          }

          __assert_rtn("Process_x4", "PDAFPixelEngine.cpp", 4583, "pContext != nullptr");
        }

        __assert_rtn("Process_x4", "PDAFPixelEngine.cpp", 4582, "pIn3 != nullptr");
      }

      __assert_rtn("Process_x4", "PDAFPixelEngine.cpp", 4581, "pIn2 != nullptr");
    }

    __assert_rtn("Process_x4", "PDAFPixelEngine.cpp", 4580, "pIn1 != nullptr");
  }

  __assert_rtn("Process_x4", "PDAFPixelEngine.cpp", 4579, "pIn0 != nullptr");
}

unsigned int *PDAF::PixelEngine::anonymous namespace::AFEGetInputs(unsigned int *result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = result + 6;
  v8 = 1;
  v48 = result + 6;
  v49 = a2;
  v50 = result;
  do
  {
    v9 = v8;
    v10 = v3 + 80 * v5;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *v10 = 0u;
    v11 = *result;
    v12 = &v7[12 * v5];
    v13 = *(a2 + 8 * v5);
    *v10 = v11;
    *(v10 + 20) = -1;
    *(v10 + 52) = -1;
    v14 = v12[4];
    v15 = v12[5];
    v17 = v12[2];
    v16 = v12[3];
    v18 = v14 >= v17;
    v19 = v14 - v17;
    if (v19 == 0 || !v18 || v15 <= v16)
    {
      goto LABEL_57;
    }

    if (!v13)
    {
    }

    *(v10 + 4) = v15 - v16;
    if (v11 <= 2)
    {
      if (!v11)
      {
        goto LABEL_25;
      }

      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_78;
        }

        if (v12[6])
        {
        }

        if (v12[7] != -1)
        {
        }

        v21 = 0;
LABEL_29:
        *(v10 + 16) = v19;
        *(v10 + 20) = 0;
        *(v10 + 24) = v21;
        *(v10 + 48) = 0xFFFFFFFF00000000;
        *(v10 + 56) = -1;
        goto LABEL_32;
      }
    }

    else
    {
      if (v11 > 8)
      {
        goto LABEL_78;
      }

      if (((1 << v11) & 0x98) == 0)
      {
        if (((1 << v11) & 0x60) != 0)
        {
          if (v12[6])
          {
          }

          if (v12[7] != 2)
          {
          }

          v21 = 0;
          v22 = 2;
          goto LABEL_27;
        }

        if (v11 != 8)
        {
LABEL_78:
        }

LABEL_25:
        v21 = v12[6];
        if (v21 >= 2)
        {
        }

        v22 = v12[7];
        if (v22 != -1)
        {
        }

        goto LABEL_27;
      }
    }

    v21 = v12[6];
    if (v21 >= 2)
    {
    }

    v22 = v12[7];
    if ((v22 - 4) <= 0xFFFFFFFD)
    {
    }

LABEL_27:
    if (((1 << v11) & 0xD2) != 0)
    {
      *(v10 + 16) = v19;
      *(v10 + 20) = 0;
      *(v10 + 24) = v21;
      *(v10 + 48) = v19;
      *(v10 + 52) = 1;
      *(v10 + 56) = v22;
    }

    else
    {
      if (((1 << v11) & 0x105) != 0)
      {
        goto LABEL_29;
      }

      *(v10 + 48) = v19;
      *(v10 + 52) = 0;
      *(v10 + 56) = v22;
      *(v10 + 16) = v19;
      *(v10 + 20) = 1;
      *(v10 + 24) = v21;
    }

LABEL_32:
    v24 = 1 << v11;
    if (((1 << v11) & 0xFA) != 0)
    {
      v25 = v12[1];
      if (AFEDelayV >= v25)
      {
      }

      v26 = v12[3];
      if (v26 >= v25)
      {
      }

      v27 = v11 - 1;
      if ((v11 - 1) >= 7 || ((0x7Du >> v27) & 1) == 0)
      {
      }

      v28 = qword_2249D23D0[v27];
      v29 = v28 * *v12;
      v30 = 2 * v26 - AFEDelayV;
      if (AFEDelayV > v26)
      {
        v30 = v12[3];
      }

      v31 = (v25 + ~v26);
      v32 = (2 * v25 - 1);
      v33 = AFEDelayV + v32 - 2 * v31;
      v34 = v32 - v31;
      if (AFEDelayV <= v31)
      {
        v34 = v33;
      }

      v35 = v28 * v12[2];
      v36 = v35 + v29 * v30;
      v37 = v35 + v29 * v34;
    }

    else
    {
      if ((v24 & 0x101) == 0)
      {
        v43 = *v12;
        v44 = 16 * v43 * v12[3];
        v45 = 2 * v12[2];
        *(v10 + 8) = 8 * v43;
        v36 = v44 + 8 * v45;
        *(v10 + 32) = 0;
        *(v10 + 64) = 0;
        goto LABEL_53;
      }

      v37 = 0;
      v29 = 8 * *v12;
      v36 = v29 * 2 * v12[3] + 8 * v12[2];
    }

    *(v10 + 8) = v29 >> 1;
    *(v10 + 32) = 0;
    *(v10 + 64) = 0;
    if ((v24 & 0xFA) != 0)
    {
      v39 = v12[3];
      if (v38 > v39)
      {
        *(v10 + 32) = v38 - v39;
      }

      v40 = v12[1] + ~v38;
      v18 = v40 >= v39;
      v41 = v40 - v39;
      if (v18)
      {
        *(v10 + 64) = v41;
      }

      *(v10 + 40) = v13 + v36;
      v42 = v13 + v37;
      v3 = a3;
      goto LABEL_54;
    }

    v3 = a3;
LABEL_53:
    v42 = 0;
    *(v10 + 40) = v13 + v36;
LABEL_54:
    *(v10 + 72) = v42;
    a2 = v49;
    result = v50;
    v7 = v48;
    if (!*(v10 + 8))
    {
    }

    if (*(v10 + 4) != v50[2])
    {
    }

    v6 += *(v10 + 48);
    v4 += *(v10 + 16);
LABEL_57:
    v8 = 0;
    v5 = 1;
  }

  while ((v9 & 1) != 0);
  v46 = result[1];
  if (v4 && v4 != v46)
  {
  }

  if (v6)
  {
    if (v6 != v46)
    {
    }
  }

  return result;
}
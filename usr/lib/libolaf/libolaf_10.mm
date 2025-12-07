uint64_t xofSvcs00_29ValidateConstellInfo(int a1, uint64_t a2, unsigned int a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = *(a2 + 1);
  if (v5 <= a3 && (v6 = *(a2 + 2), v6 <= a3) && (v7 = *(a2 + 3), v7 <= a3) && *(a2 + 4) <= 0x2Au && *(a2 + 5) < 0xA9u)
  {
    v12 = *(a2 + 8);
    v13 = *(a2 + 6);
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Constel,%u,AlmSats,%u,BceSats,%u,EeSats,%u,NumBlk,%u,BlkLen,%u,EeMask,0x%llx,Tm,%u,BrdSvMaskIncl,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 73, "xofSvcs00_29ValidateConstellInfo", 0, a1, *(a2 + 1), *(a2 + 2), *(a2 + 3), *(a2 + 4), *(a2 + 5), v12, (v6 | v5 | v7) != 0, v13 == 1);
      v8 = 1;
      LbsOsaTrace_WriteLog(8u, __str, v15, 4, 1);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v8 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Constel,%u,AlmSats,%u,BceSats,%u,EeSats,%u,NumBlk,%u,BlkLen,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 69, "xofSvcs00_29ValidateConstellInfo", 770, a1, *(a2 + 1), *(a2 + 2), *(a2 + 3), *(a2 + 4), *(a2 + 5));
      LbsOsaTrace_WriteLog(8u, __str, v10, 0, 1);
      return 0;
    }
  }

  return v8;
}

uint64_t GN_AGPS_Set_Alm_El(unsigned __int8 *a1)
{
  v38 = *MEMORY[0x29EDCA608];
  result = Is_GN_API_Set_Allowed("GN_AGPS_Set_Alm_El");
  if (!result)
  {
    return result;
  }

  if (g_Enable_Event_Log >= 5u)
  {
    EvLog_v("GN_AGPS_Set_Alm_El: %3d %2d %3d %3d %5d %5d %5d %5d %5d %8d %8d %8d %8d %d", *a1, a1[1], a1[2], a1[3], *(a1 + 2), *(a1 + 3), *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 7), a1[32]);
  }

  v3 = a1[1];
  if ((v3 + 53) <= 0xF5u && (v3 - 33) <= 0xDFu)
  {
    EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: Sat_ID = %d, Out of range!");
    return 0;
  }

  v4 = *(a1 + 2);
  if (((*(a1 + 2) - 1024) >> 11) <= 0x1Eu)
  {
    EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: af0 = %d <-2^10 or >=2^10, Out of range!");
    return 0;
  }

  v5 = *(a1 + 3);
  if (((*(a1 + 3) - 1024) >> 11) <= 0x1Eu)
  {
    EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: af1 = %d <-2^10 or >=2^10, Out of range!");
    return 0;
  }

  v6 = *(a1 + 4);
  v7 = vcvtd_n_f64_u32(v6, 0x15uLL);
  if ((v3 + 53) < 0xF6u)
  {
    v8 = 0.0;
    if (v7 <= 0.03)
    {
      goto LABEL_17;
    }

LABEL_15:
    EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: e = %g > %g, Unrealistic value!");
    return 0;
  }

  if (v7 > 0.1)
  {
    goto LABEL_15;
  }

  v8 = 0.000000314159265;
LABEL_17:
  v9 = *(a1 + 6);
  v10 = v9 * 1.14290475e-11;
  if (v10 < -0.00000198862815)
  {
    EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: OmegaDot = %e < %e rad/s, Unrealistic value!");
    return 0;
  }

  if (v10 > v8)
  {
    EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: OmegaDot = %e > %e rad/s, Unrealistic value!");
    return 0;
  }

  v11 = *(a1 + 4);
  if (HIBYTE(v11))
  {
    EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: APowerHalf = %u >=2^24,  Out of range !");
    return 0;
  }

  v12 = vcvtd_n_f64_u32(v11, 0xBuLL);
  if (v12 < 4800.0)
  {
    EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: APowerHalf = %g < %g, Unrealistic value!");
    return 0;
  }

  if (v12 > dbl_29972A990[(v3 + 53) < 0xF6u])
  {
    EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: APowerHalf = %g > %g, Unrealistic value!");
    return 0;
  }

  v13 = *(a1 + 5);
  if ((v13 - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: Omega0 = %d <-2^23 or >=2^23, Out of range!");
    return 0;
  }

  v14 = *(a1 + 6);
  if ((v14 - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: w = %d <-2^23 or >=2^23, Out of range!");
    return 0;
  }

  v15 = *(a1 + 7);
  if ((v15 - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_AGPS_Set_Alm_El: FAILED: M0 = %d <-2^23 or >=2^23, Out of range!");
    return 0;
  }

  v37 = 0;
  v16 = v6 >> 8;
  v21 = v6;
  if (v3 == 32)
  {
    v17 = 0;
  }

  else
  {
    v17 = v3 & 0x3F;
  }

  v22 = v16;
  v23 = v17;
  v18 = a1[3];
  v24 = *(a1 + 5);
  v25 = v18;
  v26 = a1[2];
  v27 = v9;
  v28 = v11;
  v29 = BYTE2(v11);
  v30 = v13;
  v31 = BYTE2(v13);
  v32 = v14;
  v33 = BYTE2(v14);
  v34 = v15;
  v35 = BYTE2(v15);
  v36 = (32 * v5) | (4 * (v4 & 7));
  LOBYTE(v37) = v5 >> 3;
  BYTE1(v37) = v4 >> 3;
  v20 = *a1;
  v19 = 0;
  BYTE2(v37) = a1[32];
  return GN_AGPS_Set_Alm(v3, &v19);
}

void Kep_Calc_SV_Ref_State(int a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v115[1] = *MEMORY[0x29EDCA608];
  if (*(a4 + 18))
  {
    v10 = *(a4 + 24);
    v11 = a3 + 604800 * (a2 - *(a4 + 18)) - v10;
  }

  else
  {
    v10 = *(a4 + 24);
    v12 = a3 - v10;
    v13 = a3 - v10 - 604800;
    if (a3 - v10 <= 302399)
    {
      v13 = a3 - v10;
    }

    if (v12 < -302400)
    {
      v11 = v12 + 604800;
    }

    else
    {
      v11 = v13;
    }
  }

  v14 = *(a4 + 168);
  v15 = *(a4 + 8);
  v104 = v14 * v14;
  v16 = v11;
  v101 = *(a4 + 96) + sqrt(dbl_29972A9A0[(v15 - 3) < 2]) / (v14 * (v14 * v14));
  v17 = *(a4 + 160) + v101 * v11;
  v18 = sin(v17);
  v19 = 0;
  v20 = *(a4 + 200);
  v21 = v17 + v20 * v18;
  do
  {
    v22 = v21;
    v21 = v17 + v20 * sin(v21);
  }

  while (vabdd_f64(v21, v22) > 1.0e-11 && v19++ < 0x13);
  v103 = 1.0 - v20 * v20;
  v24 = cos(v17);
  v25 = tan(v21 * 0.5);
  v26 = atan(sqrt((v20 + 1.0) / (1.0 - v20)) * v25);
  v27 = v26 + v26;
  if (v27 < 0.0)
  {
    v27 = v27 + 6.28318531;
  }

  v28 = __sincos_stret(v27);
  v29 = __sincos_stret(*(a4 + 192));
  v30 = v28.__cosval * v29.__sinval + v28.__sinval * v29.__cosval;
  v31 = v28.__cosval * v29.__cosval - v28.__sinval * v29.__sinval;
  v32 = v31 * (v30 + v30);
  if (a1 == 1)
  {
    v24 = v31 * v31 - v30 * v30;
    v33 = v24 * *(a4 + 120) + *(a4 + 128) * v32;
    v34 = v33 * v33 * -0.5 + 1.0;
    v35 = v31 * v33;
    v98 = v33;
    v36 = -(v30 * v33);
    v30 = v35 + v30 * v34;
    v31 = v36 + v31 * v34;
    v37 = v24 * *(a4 + 104) + *(a4 + 112) * v32;
  }

  else
  {
    v98 = 0.0;
    v37 = 0.0;
  }

  v105 = sqrt(v103);
  v102 = v20 * v28.__cosval + 1.0;
  v97 = v37;
  v38 = v104 * v103 / v102 + v37;
  v39 = v31 * v38;
  v40 = v38 * v30;
  v41 = *(a4 + 184);
  v96 = v32;
  if (a1 == 1)
  {
    v99 = v24 * *(a4 + 136) + *(a4 + 144) * v32;
    v41 = v41 + v99 + *(a4 + 152) * v16;
  }

  else
  {
    v99 = 0.0;
  }

  v42 = __sincos_stret(v41);
  v43 = dbl_29972A9B0[v15 == 4];
  v44 = *(a4 + 208) - v43;
  v100 = v11;
  v45 = __sincos_stret(*(a4 + 176) + v44 * v16 - v43 * v10);
  *a5 = v39 * v45.__cosval - v40 * v42.__cosval * v45.__sinval;
  *(a5 + 8) = v40 * v42.__cosval * v45.__cosval + v39 * v45.__sinval;
  v46 = v40 * v42.__sinval;
  *(a5 + 16) = v40 * v42.__sinval;
  v47 = v101;
  v48 = v102 * (v101 * v102) / (v103 * v105);
  v49 = v48 + v48;
  v50 = v101 * (v104 * *(a4 + 200) / v105);
  v51 = v28.__sinval * v50;
  v52 = 0.0;
  if (a1 == 1)
  {
    v53 = *(a4 + 128) * v24 - *(a4 + 120) * v96;
    v54 = *(a4 + 112) * v24 - *(a4 + 104) * v96;
    v55 = v48 + v49 * v53;
    v51 = v51 + v49 * v54;
    v56 = *(a4 + 144) * v24 - *(a4 + 136) * v96;
    v57 = *(a4 + 152) + v49 * v56;
  }

  else
  {
    v55 = v102 * (v101 * v102) / (v103 * v105);
    v53 = 0.0;
    v54 = 0.0;
    v56 = 0.0;
    v57 = 0.0;
  }

  v58 = v51 * v31 - v40 * v55;
  v59 = v39 * v55 + v51 * v30;
  v60 = v58 + -(v40 * v44) * v42.__cosval;
  v61 = v59 * v42.__cosval - v46 * v57 + v39 * v44;
  v62 = v60 * v45.__cosval - v61 * v45.__sinval;
  v63 = v45.__cosval * v61 + v60 * v45.__sinval;
  *(a5 + 24) = v62;
  *(a5 + 32) = v63;
  v64 = v42.__cosval * (v40 * v57) + v59 * v42.__sinval;
  *(a5 + 40) = v64;
  v65 = v102 * (v28.__sinval * (-(v49 * v101) * *(a4 + 200)) / (v103 * v105));
  cosval = v28.__cosval;
  v67 = v28.__cosval * (v48 * v50);
  if (a1 == 1)
  {
    v68 = v65 + v65;
    v69 = v49 * -v49;
    v67 = v67 + (v65 + v65) * v54 + v69 * v97;
    v65 = v65 + (v65 + v65) * v53 + v69 * v98;
    v52 = v69 * v99 + v68 * v56;
  }

  v70 = v51 * v55;
  v71 = v31 * v70 + v67 * v30 + v58 * v55 + v65 * v39;
  v72 = v67 * v31 - v70 * v30 - v59 * v55 - v65 * v40 + -(v59 * v44) * v42.__cosval + v44 * (v40 * v57) * v42.__sinval;
  v73 = v42.__sinval * -(v59 * v57) + v71 * v42.__cosval - v64 * v57 + -v46 * v52 + v58 * v44;
  v74 = v45.__cosval * v72 - v44 * v63 - v73 * v45.__sinval;
  v75 = v45.__sinval * v72 + v44 * v62 + v73 * v45.__cosval;
  *(a5 + 48) = v74;
  *(a5 + 56) = v75;
  v76 = v42.__cosval * ((v59 + v59) * v57) + v71 * v42.__sinval + v40 * v52 * v42.__cosval;
  v77 = -(v57 * v57);
  v78 = dbl_29972A9C0[v15 == 4];
  v79 = v76 + v77 * v46;
  v80 = dbl_29972A9D0[v15 == 4];
  *(a5 + 64) = v79;
  *(a5 + 72) = v78 * v75 + v80 * -3.0 * v62;
  *(a5 + 80) = v80 * -3.0 * v63 - v78 * v74;
  *(a5 + 88) = (v80 * -3.0 - v80) * v64;
  if (a1 == 1)
  {
    v81 = *(a4 + 15);
    if (v81 > 0xF)
    {
      if ((v81 + 16) > 0x10u)
      {
        v85 = 99980001.0;
LABEL_39:
        *(a5 + 112) = v85;
        v86 = v11 / 60;
        if (*(a4 + 14))
        {
          v87 = -180;
        }

        else
        {
          v87 = -120;
        }

        v88 = v87 + v86;
        if (v87 + v86 < 1)
        {
          goto LABEL_56;
        }

        v115[0] = 0.0;
        if (R8_EQ((a4 + 208), v115) && (v114 = 0.0, R8_EQ((a4 + 48), &v114)) && (v113 = 0.0, R8_EQ((a4 + 112), &v113)) && (v112 = 0.0, R8_EQ((a4 + 96), &v112)) && (v111 = 0.0, R8_EQ((a4 + 120), &v111)) && (v110 = 0.0, R8_EQ((a4 + 128), &v110)) && (v109 = 0.0, R8_EQ((a4 + 136), &v109)) && (v108 = 0.0, R8_EQ((a4 + 144), &v108)) && (v107 = 0.0, R8_EQ((a4 + 104), &v107)))
        {
          v106 = 0.0;
          v89 = R8_EQ((a4 + 152), &v106);
          v47 = v101;
          cosval = v28.__cosval;
          if (v89)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v47 = v101;
          cosval = v28.__cosval;
        }

        *(a5 + 112) = v85 + (2 * v88 * v88);
LABEL_56:
        v84 = v100 + (v10 - *(a4 + 20));
        goto LABEL_57;
      }

      v82 = (&GPS_Modern_URA_Table + 8 * -v81);
    }

    else
    {
      v82 = (&GPS_Legacy_URA_Table + 8 * v81);
    }

    v85 = *v82;
    goto LABEL_39;
  }

  v83 = (v11 + 302400) / 1000 + 1200;
  if (v11 >= 31233600)
  {
    v83 = 65500;
  }

  if (v11 <= -301401)
  {
    v83 = 1200;
  }

  *(a5 + 112) = (v83 * v83);
  v84 = v11;
LABEL_57:
  v90 = *(a4 + 200);
  v91 = v90 * -4.44280763e-10 * *(a4 + 168) / (v90 * cosval + 1.0);
  v92 = *(a4 + 40);
  v93 = v84 * *(a4 + 48);
  *(a5 + 96) = *(a4 + 32) + v105 * v91 * v28.__sinval + v84 * (v93 + v92);
  *(a5 + 104) = v92 + v47 * v91 * (cosval + v90) + v93 * 2.0;
  v94 = *(a4 + 56);
  v95 = *(a4 + 72);
  *(a5 + 152) = *(a4 + 88);
  *(a5 + 136) = v95;
  *(a5 + 120) = v94;
  *(a5 + 160) = a3;
  *(a5 + 164) = v8;
  *(a5 + 166) = *(a4 + 16);
  *(a5 + 184) = a1;
  *(a5 + 180) = *(a4 + 12);
  *(a5 + 176) = *(a4 + 8);
}

void GM_Inc_Local_Time(int a1, uint64_t a2)
{
  v3 = a1 - *(a2 + 6768);
  *(a2 + 6768) = a1;
  Inc_Local_Time(v3, 604800, (a2 + 6736), (a2 + 6734));
  Inc_Local_Time(v3, 86400, (a2 + 6760), (a2 + 6752));
  v4 = *(a2 + 6752);
  if (v4 >= 1462)
  {
    v5 = *(a2 + 6748);
    v6 = v4 - 2922;
    if (*(a2 + 6752) < 0xB6Au)
    {
      v6 = 0;
    }

    *(a2 + 6752) = v4 - 1461 * ((v6 + 1460) / 0x5B5u) - 1461;
    *(a2 + 6748) = v5 + (v6 + 1460) / 0x5B5u + 1;
  }
}

void DD_Assist_QZSS_Data(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = 0;
  v94 = *MEMORY[0x29EDCA608];
  v79 = result + 3654;
  v80 = result + 3584;
  v8 = a4 + 1076;
  v82 = a2 - 241;
  v9 = a4 + 1346;
  v10 = a3 + 129;
  v81 = a4 + 1076;
  v83 = result + 3644;
  v84 = a3 + 129;
  do
  {
    if (*(v10 + v7) <= 0xA5u && (*(a4[1069] + v7) != 1 || (v82 - *(v8 + 27 * v7)) <= 0xFFFFF806))
    {
      v92 = 0u;
      memset(v93, 0, 28);
      v91 = 0u;
      v89 = 0u;
      memset(v90, 0, sizeof(v90));
      if (!Core_Get_QZSS_Eph((v7 - 63), a2, &v89))
      {
LABEL_9:
        *(a4[1064] + 20 * v7 + 8) = 0;
LABEL_36:
        v10 = v84;
        goto LABEL_37;
      }

      v11 = a4[1069];
      if (*(v11 + v7) == 1)
      {
        v12 = v8 + 27 * v7;
        if (v89 <= *v12 && a2 - *v12 >= -1800)
        {
          goto LABEL_9;
        }

        v13 = DWORD2(v89);
        if (v89 - *v12 <= 10799 && Is_GPS_BinEph_Real(v12) && !Is_GPS_BinEph_Real(&v89))
        {
          *v12 = a2;
          v8 = v81;
          goto LABEL_36;
        }
      }

      else
      {
        v13 = DWORD2(v89);
      }

      v14 = (0xE4FE7F3uLL >> ((v13 >> 2) & 0x1F)) & 1;
      v15 = a4[1063];
      if (*(v15 + v7))
      {
        v8 = v81;
        goto LABEL_25;
      }

      v8 = v81;
      if (v14)
      {
        v16 = a4[1071];
        if (*(v16 + v7) == 1)
        {
          v17 = v9 + 11 * v7;
          v18 = 0xE4FE7F3uLL >> (v17[5] & 0x1F);
          v19 = *v17;
          if ((v18 & 1) == 0 && v19 + 3600 > a2)
          {
            LOBYTE(v14) = 0;
            goto LABEL_25;
          }

          if (v19 + 100 < a2)
          {
            *(a4[1066] + v7) = 0;
            *(v16 + v7) = 0;
            *(v83 + v7) = -1;
            v11 = a4[1069];
            v15 = a4[1063];
          }
        }

        LOBYTE(v14) = 1;
      }

LABEL_25:
      v20 = v8 + 108 * v7;
      v21 = v93[0];
      *(v20 + 4) = v92;
      *(v20 + 5) = v21;
      *(v20 + 92) = *(v93 + 12);
      v22 = v90[0];
      *v20 = v89;
      *(v20 + 1) = v22;
      v23 = v91;
      *(v20 + 2) = v90[1];
      *(v20 + 3) = v23;
      *(a4[1065] + v7) = 1;
      *(v11 + v7) = 1;
      v24 = v14 & 1;
      *(v15 + v7) = v24;
      if (v24)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      v26 = a4[1064] + 20 * v7;
      v27 = (v26 + 12);
      v28 = (v26 + 8);
      if (*(v20 + 1) == 5)
      {
        v29 = v28;
      }

      else
      {
        v29 = v27;
      }

      *v29 = v25;
      if (a2 >= 1)
      {
        *(a4[1072] + v7) = 1;
        Core_Save_QZSS_Eph((v7 - 63), 0, v20);
        v15 = a4[1063];
      }

      v30 = 0;
      LODWORD(v31) = 0;
      v32 = p_NV;
      v33 = v15[1];
      *(p_NV + 92) = *v15;
      *(v32 + 108) = v33;
      v34 = 55665;
      do
      {
        v35 = *(v32 + 88 + v30) ^ BYTE1(v34);
        v34 = 52845 * (v34 + v35) + 22719;
        v31 = (v31 + v35);
        ++v30;
      }

      while (v30 != 40);
      *(v32 + 80) = v31;
      v36 = v80 + 6 * v7;
      *v36 = 16777472;
      *(v36 + 4) = 256;
      *(v79 + 2 * v7) = 256;
      goto LABEL_36;
    }

LABEL_37:
    ++v7;
  }

  while (v7 != 10);
  if (a2 >= 1)
  {
    v37 = 0;
    v38 = a4 + 1211;
    do
    {
      if (*(a4[1063] + v37) == 1 && (*(*(a5 + 912) + v37) & 1) == 0 && *(v10 + v37) <= 0xA5u && (*(a4[1070] + v37) != 1 || a2 - *(v38 + 27 * v37) >= 241))
      {
        v92 = 0u;
        memset(v93, 0, 28);
        v91 = 0u;
        v89 = 0u;
        memset(v90, 0, sizeof(v90));
        GPS_BinEph = EE_Get_GPS_BinEph((v37 - 63), a2, &v89);
        v40 = a4[1070];
        if (!GPS_BinEph || (v41 = v89, *(v40 + v37) == 1) && v89 <= *(v38 + 27 * v37))
        {
          *(v40 + v37) = 0;
        }

        else
        {
          v42 = v90[0];
          v43 = (v38 + 108 * v37);
          *v43 = v89;
          v43[1] = v42;
          *(v43 + 92) = *(v93 + 12);
          v44 = v93[0];
          v43[4] = v92;
          v43[5] = v44;
          v45 = v91;
          v43[2] = v90[1];
          v43[3] = v45;
          *(a4[1065] + v37) = 1;
          *(v40 + v37) = 1;
          v46 = v80 + 6 * v37;
          *v46 = 16777472;
          *(v46 + 4) = 256;
          memset(v88, 0, sizeof(v88));
          v87 = 0u;
          v86 = 0u;
          v85[0] = v41;
          v85[1] = DWORD1(v89);
          LOBYTE(v86) = BYTE8(v89);
          v47 = 21;
          v48 = 11;
          *(&v86 + 1) = *(&v89 + 9);
          v49 = v90 + 8;
          *(v79 + 2 * v37) = 256;
          do
          {
            v50 = v85 + v48;
            *v50 = *v49;
            *(v50 + 1) = *(v49 + 1);
            v49 += 4;
            --v47;
            v48 += 3;
          }

          while (v47 > 1);
          Debug_Log_GPS_Eph(2, (v37 + 193), v85);
        }

        v10 = v84;
      }

      ++v37;
    }

    while (v37 != 10);
  }

  v51 = 0;
  v52 = 5848;
  v89 = 0u;
  memset(v90, 0, 28);
  while (2)
  {
    if (*(a4[1071] + v51) != 1 || a2 - *(v9 + 11 * v51) >= 1801)
    {
      *(&v89 | 0xC) = 0u;
      *((&v89 | 0xC) + 0x10) = 0u;
      if (Core_Get_QZSS_Alm((v51 - 63), a2, &v89))
      {
        v53 = a4[1071];
        if (*(v53 + v51) != 1 || v89 > *(v9 + 11 * v51))
        {
          v54 = (0xE4FE7F3uLL >> (BYTE4(v90[0]) & 0x1F)) & 1;
          v55 = a4[1063];
          if ((*(v55 + v51) & 1) == 0 && v54)
          {
            v56 = a4[1069];
            if (*(v56 + v51) == 1)
            {
              v57 = v81 + 27 * v51;
              v58 = 0xE4FE7F3uLL >> ((v57[2] >> 2) & 0x1F);
              v59 = *v57;
              if ((v58 & 1) == 0 && v59 + 3600 > a2)
              {
                LOBYTE(v54) = 0;
                goto LABEL_69;
              }

              if (v59 + 100 < a2)
              {
                *(a4[1065] + v51) = 0;
                *(v56 + v51) = 0;
                v60 = v80 + 6 * v51;
                *v60 = 16777472;
                *(v60 + 4) = 256;
                *(v79 + 2 * v51) = 256;
              }
            }

            LOBYTE(v54) = 1;
          }

LABEL_69:
          v61 = (v9 + 44 * v51);
          v62 = v90[0];
          *v61 = v89;
          v61[1] = v62;
          *(v61 + 28) = *(v90 + 12);
          *(a4[1066] + v51) = 1;
          *(v53 + v51) = 1;
          *(v55 + v51) = v54;
          if (a2 >= 1)
          {
            v63 = 0;
            LODWORD(v64) = 0;
            v65 = p_NV;
            v66 = p_NV + 56 * v51 + 5840;
            v67 = *v61;
            v68 = v61[1];
            *(v66 + 36) = *(v61 + 28);
            *(v66 + 24) = v68;
            *(v66 + 8) = v67;
            v69 = v65 + v52;
            v70 = 55665;
            do
            {
              v71 = *(v69 + v63) ^ BYTE1(v70);
              v70 = 52845 * (v70 + v71) + 22719;
              v64 = (v64 + v71);
              ++v63;
            }

            while (v63 != 48);
            *v66 = v64;
            v55 = a4[1063];
          }

          v72 = 0;
          LODWORD(v73) = 0;
          v74 = p_NV;
          v75 = *(v55 + 8);
          *(p_NV + 5828) = *v55;
          *(v74 + 5836) = v75;
          v76 = 55665;
          do
          {
            v77 = *(v74 + 5824 + v72) ^ BYTE1(v76);
            v76 = 52845 * (v76 + v77) + 22719;
            v73 = (v73 + v77);
            ++v72;
          }

          while (v72 != 40);
          *(v74 + 5816) = v73;
          *(v83 + v51) = -1;
        }
      }
    }

    ++v51;
    v52 += 56;
    if (v51 != 10)
    {
      continue;
    }

    break;
  }
}

uint64_t Hal34_InitPciGnssDevice(_DWORD *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  v3 = 4;
  while (Hal29_GetGcdStatus())
  {
    if (!--v3)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v4 = mach_continuous_time();
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GCD status failure\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 69, "Hal34_InitPciGnssDevice");
        LbsOsaTrace_WriteLog(0xDu, __str, v5, 0, 1);
      }

      *a1 = 22;
      return 4294967286;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 1u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    GnssHwStr = Hal14_GetGnssHwStr(g_HwProduct);
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s init,starttick,%ums\n", v7, "HAL", 65, "Hal34_InitPciGnssDevice", GnssHwStr, v2);
    LbsOsaTrace_WriteLog(0xDu, __str, v9, 1, 1);
  }

  result = 0;
  g_HalState = 0;
  return result;
}

void HAL34_SunshineStackDumpHandler(unsigned __int8 *a1, unsigned int a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a2 <= 0xB1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx len,%u\n", v17);
LABEL_11:
      LbsOsaTrace_WriteLog(0xDu, __str, v3, 0, 1);
      return;
    }

    return;
  }

  if (a1)
  {
    v5 = a1[4];
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0);
    if (v5 == 77)
    {
      if (!IsLoggingAllowed)
      {
        goto LABEL_17;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ME\n");
    }

    else if (v5 == 80)
    {
      if (!IsLoggingAllowed)
      {
        goto LABEL_17;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CP\n");
    }

    else
    {
      if (!IsLoggingAllowed)
      {
        goto LABEL_17;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: unk\n");
    }

    LbsOsaTrace_WriteLog(0xDu, __str, v7, 4, 1);
LABEL_17:
    v8 = *(a1 + 4);
    switch(v8)
    {
      case 3:
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v13 = mach_continuous_time();
          v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "HAL", 69, "HAL34_SunshineStackDumpHandler", 1299);
          v15 = 1;
          LbsOsaTrace_WriteLog(0xDu, __str, v14, 0, 1);
        }

        else
        {
          v15 = 1;
        }

        goto LABEL_31;
      case 2:
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v10 = mach_continuous_time();
          v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "HAL", 69, "HAL34_SunshineStackDumpHandler", 1300);
          v12 = 0;
LABEL_29:
          LbsOsaTrace_WriteLog(0xDu, __str, v11, v12, 1);
        }

        break;
      case 1:
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx %usec\n", v18);
LABEL_28:
          v11 = v9;
          v12 = 4;
          goto LABEL_29;
        }

        break;
      default:
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Unk\n");
          goto LABEL_28;
        }

        break;
    }

    v15 = 0;
LABEL_31:
    StackDumpString = Hal11_GetStackDumpString(a1[11], a1[10]);
    GnssDbgMgr_HandleStackDump(a2, a1, v15, StackDumpString);
    return;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx aResp\n");
    goto LABEL_11;
  }
}

void HAL34_StackDumpReq(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v9[0] = 0;
  v6 = 30530;
  v7 = a1;
  v11 = 6;
  v12 = 0;
  plc00_10EncodeHdrPlCs(&v6, v10, 15, 4u, 1, v9);
  if (v9[0])
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HdrErr,%u\n", v5);
    goto LABEL_4;
  }

  v14 = 0;
  v13 = 0;
  v15 = 10;
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Cpu,%c\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 73, "HAL34_StackDumpReq", a1);
    LbsOsaTrace_WriteLog(0xDu, __str, v4, 4, 1);
  }

  if (Hal22_ZxSendToChip(v10, 0xFuLL) <= 0 && LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_4:
    LbsOsaTrace_WriteLog(0xDu, __str, v2, 0, 1);
  }
}

double gnss::GnssAdaptDevice::setPVTMReport(uint64_t a1, char a2, char a3, char a4, char a5, char a6, char a7, uint64_t a8, uint64_t a9)
{
  v24 = *MEMORY[0x29EDCA608];
  if (*(a9 + 24))
  {
    v16 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice13setPVTMReportEbbbbbbNSt3__18functionIFvNS1_10unique_ptrINS_3FixENS1_14default_deleteIS4_EEEENS3_INS_17MeasurementReportENS5_IS8_EEEEONS1_6vectorINS_6SvInfoENS1_9allocatorISC_EEEEONSB_INS_23ReceiverBandCorrectionsENSD_ISH_EEEENS3_INS_18TimeConversionInfoENS5_ISL_EEEENS3_INS_24KlobucharModelParametersENS5_ISO_EEEEEEENS2_IFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_15;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v21, a9);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v22, a8);
    v22[32] = a2;
    v22[33] = a3;
    v22[34] = a4;
    v22[35] = a5;
    v22[36] = a6;
    v22[37] = a7;
    dispatch_async(v16, block);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v22);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v21);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "setPVTMReport", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v19, 0, 1);
  }

  return result;
}

double ___ZN4gnss15GnssAdaptDevice13setPVTMReportEbbbbbbNSt3__18functionIFvNS1_10unique_ptrINS_3FixENS1_14default_deleteIS4_EEEENS3_INS_17MeasurementReportENS5_IS8_EEEEONS1_6vectorINS_6SvInfoENS1_9allocatorISC_EEEEONSB_INS_23ReceiverBandCorrectionsENSD_ISH_EEEENS3_INS_18TimeConversionInfoENS5_ISL_EEEENS3_INS_24KlobucharModelParametersENS5_ISO_EEEEEEENS2_IFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v57[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setPVTMReport_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (*(a1 + 96))
    {
      if (*(v2 + 89) == 1)
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v51, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 0, v51, "setPVTMReport_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v51);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v5 = mach_continuous_time();
          v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setPVTMReport_block_invoke", 2056);
          LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setPVTMReport_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
        }
      }

      else
      {
        v18 = *(a1 + 105);
        if ((*(a1 + 104) | *(a1 + 107) | *(a1 + 108) | *(a1 + 109) | v18 | *(a1 + 106)))
        {
          if ((v18 & 1) != 0 || !*(a1 + 106))
          {
            std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](__str, a1 + 72);
            v27 = v2 + 312;
            if (__str != (v2 + 312))
            {
              v28 = v56;
              v29 = *(v2 + 336);
              if (v56 == __str)
              {
                if (v29 == v27)
                {
                  (*(*v56 + 24))();
                  (*(*v56 + 32))(v56);
                  v56 = 0;
                  (*(**(v2 + 336) + 24))(*(v2 + 336), __str);
                  (*(**(v2 + 336) + 32))(*(v2 + 336));
                  *(v2 + 336) = 0;
                  v56 = __str;
                  (*(v57[0] + 24))(v57, v2 + 312);
                  (*(v57[0] + 32))(v57);
                }

                else
                {
                  (*(*v56 + 24))();
                  (*(*v56 + 32))(v56);
                  v56 = *(v2 + 336);
                }

                *(v2 + 336) = v27;
              }

              else if (v29 == v27)
              {
                (*(*v29 + 24))(*(v2 + 336), __str);
                (*(**(v2 + 336) + 32))(*(v2 + 336));
                *(v2 + 336) = v56;
                v56 = __str;
              }

              else
              {
                v56 = *(v2 + 336);
                *(v2 + 336) = v28;
              }
            }

            std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](__str);
            *__str = v2 + 280;
            v55 = 0;
            std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,8ul>>(__str, 8uLL);
            v30 = 2;
            if (!*(a1 + 105))
            {
              v30 = 0;
            }

            v31 = v30 | *(a1 + 104);
            v32 = 4;
            if (!*(a1 + 106))
            {
              v32 = 0;
            }

            v33 = v31 | v32;
            v34 = 8;
            if (!*(a1 + 107))
            {
              v34 = 0;
            }

            v35 = 16;
            if (!*(a1 + 108))
            {
              v35 = 0;
            }

            v36 = v33 | v34 | *(v2 + 280) & 0xFFFFFFFFFFFFFF80;
            v37 = 64;
            if (*(a1 + 109))
            {
              v37 = 96;
            }

            *(v2 + 280) = v37 | v35 | v36;
            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v48, a1 + 40);
            gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v48, "setPVTMReport_block_invoke");
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v48);
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v38 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
              if (*(a1 + 109))
              {
                v39 = 84;
              }

              else
              {
                v39 = 70;
              }

              if (*(a1 + 108))
              {
                v40 = 84;
              }

              else
              {
                v40 = 70;
              }

              if (*(a1 + 107))
              {
                v41 = 84;
              }

              else
              {
                v41 = 70;
              }

              if (*(a1 + 106))
              {
                v42 = 84;
              }

              else
              {
                v42 = 70;
              }

              if (*(a1 + 105))
              {
                v43 = 84;
              }

              else
              {
                v43 = 70;
              }

              if (*(a1 + 104))
              {
                v44 = 84;
              }

              else
              {
                v44 = 70;
              }

              v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Pvt,%c,Meas,%c,ExtMeas,%c,SvInfo,%c,BandCor,%c,TimeCon,%c\n", v38, "ADP", 77, "setPVTMReport_block_invoke", v44, v43, v42, v41, v40, v39);
              LbsOsaTrace_WriteLog(0x18u, __str, v45, 3, 1);
            }

            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v46 = mach_continuous_time();
              v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v46), "ADP", 68, "setPVTMReport_block_invoke");
              LbsOsaTrace_WriteLog(0x18u, __str, v47, 5, 1);
            }
          }

          else
          {
            std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v49, a1 + 40);
            gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v49, "setPVTMReport_block_invoke");
            std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v49);
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v19 = mach_continuous_time();
              v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PVTM Invalid measReq\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "setPVTMReport_block_invoke", 515);
              LbsOsaTrace_WriteLog(0x18u, __str, v20, 0, 1);
            }

            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v21 = mach_continuous_time();
              v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "setPVTMReport_block_invoke");
              LbsOsaTrace_WriteLog(0x18u, __str, v22, 5, 1);
            }
          }
        }

        else
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v50, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v50, "setPVTMReport_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v50);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v23 = mach_continuous_time();
            v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PVTM No valid flags\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 69, "setPVTMReport_block_invoke", 515);
            LbsOsaTrace_WriteLog(0x18u, __str, v24, 0, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v25 = mach_continuous_time();
            v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 68, "setPVTMReport_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v26, 5, 1);
          }
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v52, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v52, "setPVTMReport_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v52);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PVTM CB\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "setPVTMReport_block_invoke", 513);
        LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "setPVTMReport_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v53, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v53, "setPVTMReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v53);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "setPVTMReport_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "setPVTMReport_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

  return result;
}

void sub_299589BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c304_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss3FixENS_14default_deleteIS3_EEEENS1_INS2_17MeasurementReportENS4_IS7_EEEEONS_6vectorINS2_6SvInfoENS_9allocatorISB_EEEEONSA_INS2_23ReceiverBandCorrectionsENSC_ISG_EEEENS1_INS2_18TimeConversionInfoENS4_ISK_EEEENS1_INS2_24KlobucharModelParametersENS4_ISN_EEEEEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](a1 + 72);

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

double gnss::GnssAdaptDevice::setNmeaHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    v6 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice14setNmeaHandlerEyNSt3__18functionIFvONS1_6vectorINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS7_IS9_EEEEEEENS2_IFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_14;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v11, a4);
    v11[4] = a2;
    std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](v12, a3);
    dispatch_async(v6, block);
    std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](v12);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v11);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "setNmeaHandler", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
  }

  return result;
}

double ___ZN4gnss15GnssAdaptDevice14setNmeaHandlerEyNSt3__18functionIFvONS1_6vectorINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS7_IS9_EEEEEEENS2_IFvNS_6ResultEEEE_block_invoke(void *a1)
{
  v42[3] = *MEMORY[0x29EDCA608];
  v2 = a1[4];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setNmeaHandler_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (*(v2 + 89) == 1)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v38, (a1 + 5));
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 0, v38, "setNmeaHandler_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v38);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setNmeaHandler_block_invoke", 2056);
        LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setNmeaHandler_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NmeaMask,%llu\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 77, "setNmeaHandler_block_invoke", a1[9]);
        LbsOsaTrace_WriteLog(0x18u, __str, v15, 3, 1);
      }

      if (a1[9] < 0x400uLL)
      {
        std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](__str, (a1 + 10));
        v20 = v2 + 408;
        if (__str != (v2 + 408))
        {
          v21 = v41;
          v22 = *(v2 + 432);
          if (v41 == __str)
          {
            if (v22 == v20)
            {
              (*(*v41 + 24))();
              (*(*v41 + 32))(v41);
              v41 = 0;
              (*(**(v2 + 432) + 24))(*(v2 + 432), __str);
              (*(**(v2 + 432) + 32))(*(v2 + 432));
              *(v2 + 432) = 0;
              v41 = __str;
              (*(v42[0] + 24))(v42, v2 + 408);
              (*(v42[0] + 32))(v42);
            }

            else
            {
              (*(*v41 + 24))();
              (*(*v41 + 32))(v41);
              v41 = *(v2 + 432);
            }

            *(v2 + 432) = v20;
          }

          else if (v22 == v20)
          {
            (*(*v22 + 24))(*(v2 + 432), __str);
            (*(**(v2 + 432) + 32))(*(v2 + 432));
            *(v2 + 432) = v41;
            v41 = __str;
          }

          else
          {
            v41 = *(v2 + 432);
            *(v2 + 432) = v21;
          }
        }

        std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](__str);
        if (a1[13] && a1[9])
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v23 = mach_continuous_time();
            v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Request NMEA\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 73, "setNmeaHandler_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v24, 4, 1);
          }

          v25 = Gnm_RegisterNmeaUpdates(*(a1 + 36), gnss::GnssAdaptDevice::Ga06_15GnssRegisterNmeaCB);
        }

        else
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v26 = mach_continuous_time();
            v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NMEA CB null kGaNmeaNone\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 73, "setNmeaHandler_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v27, 4, 1);
          }

          v25 = Gnm_RegisterNmeaUpdates(0, 0);
        }

        v28 = v25;
        if (v25)
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v36, (a1 + 5));
          gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, v28, v36, "setNmeaHandler_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v36);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v29 = mach_continuous_time();
            v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetNmea,%u\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 69, "setNmeaHandler_block_invoke", 257, v28);
            LbsOsaTrace_WriteLog(0x18u, __str, v30, 0, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v31 = mach_continuous_time();
            v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v31), "ADP", 68, "setNmeaHandler_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v32, 5, 1);
          }
        }

        else
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v35, (a1 + 5));
          gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v35, "setNmeaHandler_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v35);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v33 = mach_continuous_time();
            v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v33), "ADP", 68, "setNmeaHandler_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v34, 5, 1);
          }
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v37, (a1 + 5));
        gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v37, "setNmeaHandler_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v37);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v16 = mach_continuous_time();
          v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Mask,%llu\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "setNmeaHandler_block_invoke", 515, a1[9]);
          LbsOsaTrace_WriteLog(0x18u, __str, v17, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v18 = mach_continuous_time();
          v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "setNmeaHandler_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v19, 5, 1);
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v39, (a1 + 5));
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v39, "setNmeaHandler_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v39);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "setNmeaHandler_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "setNmeaHandler_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

  return result;
}

void sub_29958A97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE80c108_ZTSNSt3__18functionIFvONS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](a1 + 80);

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

double gnss::GnssAdaptDevice::setThermalRiskState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v8, a4);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(a1, 7, v8, "setThermalRiskState");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setThermalRiskState", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
  }

  return result;
}

void sub_29958ABE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double gnss::GnssAdaptDevice::setPowerReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice14setPowerReportENSt3__18functionIFvNS1_10unique_ptrINS_14PwrMeasurementENS1_14default_deleteIS4_EEEEEEENS2_IFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_18;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a3);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](v10, a2);
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v10);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setPowerReport", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
  }

  return result;
}

double ___ZN4gnss15GnssAdaptDevice14setPowerReportENSt3__18functionIFvNS1_10unique_ptrINS_14PwrMeasurementENS1_14default_deleteIS4_EEEEEEENS2_IFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v34[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setPowerReport_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v29, a1 + 40);
    v30[3] = 0;
    gnss::GnssAdaptDevice::Ga07_10AddRespHndlToGnmLUT(v2, 0xFu, v29);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v30);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v29);
    v5 = *(a1 + 96);
    if (v5)
    {
      std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](__str, a1 + 72);
      v6 = v2 + 472;
      if (__str != (v2 + 472))
      {
        v7 = v33;
        v8 = *(v2 + 496);
        if (v33 == __str)
        {
          if (v8 == v6)
          {
            (*(*v33 + 24))();
            (*(*v33 + 32))(v33);
            v33 = 0;
            (*(**(v2 + 496) + 24))(*(v2 + 496), __str);
            (*(**(v2 + 496) + 32))(*(v2 + 496));
            *(v2 + 496) = 0;
            v33 = __str;
            (*(v34[0] + 24))(v34, v2 + 472);
            (*(v34[0] + 32))(v34);
          }

          else
          {
            (*(*v33 + 24))();
            (*(*v33 + 32))(v33);
            v33 = *(v2 + 496);
          }

          *(v2 + 496) = v6;
        }

        else if (v8 == v6)
        {
          (*(*v8 + 24))(*(v2 + 496), __str);
          (*(**(v2 + 496) + 32))(*(v2 + 496));
          *(v2 + 496) = v33;
          v33 = __str;
        }

        else
        {
          v33 = *(v2 + 496);
          *(v2 + 496) = v7;
        }
      }

      std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](__str);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ENABLE\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 77, "setPowerReport_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v17, 3, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DISABLE\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 77, "setPowerReport_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v15, 3, 1);
    }

    v18 = gnss::GnssAdaptDevice::Ga01_06GnssReportPower(v2, v5 != 0);
    if (v18)
    {
      v19 = *(v2 + 240);
      if (!v19)
      {
        goto LABEL_31;
      }

      v20 = v2 + 240;
      do
      {
        v21 = *(v19 + 32);
        v22 = v21 >= 0xF;
        v23 = v21 < 0xF;
        if (v22)
        {
          v20 = v19;
        }

        v19 = *(v19 + 8 * v23);
      }

      while (v19);
      if (v20 == v2 + 240 || *(v20 + 32) >= 0x10u)
      {
LABEL_31:
        v20 = v2 + 240;
      }

      std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::erase((v2 + 232), v20);
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v28, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, v18, v28, "setPowerReport_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v28);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v24 = mach_continuous_time();
        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetPwr,%u\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 69, "setPowerReport_block_invoke", 257, v18);
        LbsOsaTrace_WriteLog(0x18u, __str, v25, 0, 1);
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v26 = mach_continuous_time();
      v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 68, "setPowerReport_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v27, 5, 1);
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v31, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v31, "setPowerReport_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v31);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "setPowerReport_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "setPowerReport_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

  return result;
}

void sub_29958B4C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnss::GnssAdaptDevice::Ga01_06GnssReportPower(dispatch_semaphore_s **this, int a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (gnss::GnssAdaptDevice::Ga01_06GnssReportPower(BOOL)::v_PowerReportState == a2)
  {
    v3 = 4;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (a2)
      {
        v5 = "ENABLE";
      }

      else
      {
        v5 = "DISABLE";
      }

      v3 = 4;
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Ignoring %s PwrRep request\n", v4, "ADP", 73, "Ga01_06GnssReportPower", v5);
      v7 = 4;
LABEL_12:
      LbsOsaTrace_WriteLog(0x18u, __str, v6, v7, 1);
    }
  }

  else
  {
    v9 = Gnm_SetPowerReport(a2);
    if (v9)
    {
      v3 = v9;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        v11 = "DISABLE";
        if (a2)
        {
          v11 = "ENABLE";
        }

        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetPwrRep request,%s,%u\n", v10, "ADP", 69, "Ga01_06GnssReportPower", 257, v11, v3);
        v7 = 0;
        goto LABEL_12;
      }
    }

    else if (gnssOsa_SemWaitTimeOut(this[129], 0x1F4u))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        v13 = "DISABLE";
        if (a2)
        {
          v13 = "ENABLE";
        }

        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetPwrRep %s timeout\n", v12, "ADP", 69, "Ga01_06GnssReportPower", 257, v13);
        LbsOsaTrace_WriteLog(0x18u, __str, v14, 0, 1);
      }

      return 10;
    }

    else
    {
      gnss::GnssAdaptDevice::Ga01_06GnssReportPower(BOOL)::v_PowerReportState = a2;
      v3 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        if (a2)
        {
          v16 = "ENABLED";
        }

        else
        {
          v16 = "DISABLED";
        }

        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Power reporting,%s\n", v15, "ADP", 73, "Ga01_06GnssReportPower", v16);
        LbsOsaTrace_WriteLog(0x18u, __str, v17, 4, 1);
        return 0;
      }
    }
  }

  return v3;
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c92_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss14PwrMeasurementENS_14default_deleteIS3_EEEEEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](a1 + 72);

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

double gnss::GnssAdaptDevice::setConfigCoexistence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice20setConfigCoexistenceEyNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_23_1;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a3);
    v9[4] = a2;
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setConfigCoexistence", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
  }

  return result;
}

double ___ZN4gnss15GnssAdaptDevice20setConfigCoexistenceEyNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setConfigCoexistence_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (*(a1 + 72) == *(v2 + 104))
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v27, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v27, "setConfigCoexistence_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v27);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No Change,request dropped, Co-ex flag, %llu\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 73, "setConfigCoexistence_block_invoke", *(a1 + 72));
        LbsOsaTrace_WriteLog(0x18u, __str, v6, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setConfigCoexistence_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
      }

      return result;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NewCoexFlags,%llu,CurrentConfig,%llu\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 73, "setConfigCoexistence_block_invoke", *(a1 + 72), *(v2 + 104));
      LbsOsaTrace_WriteLog(0x18u, __str, v15, 4, 1);
    }

    if (*(a1 + 72) >= 0x200000uLL)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v26, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v26, "setConfigCoexistence_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v26);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CoexFlags,%llu\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "setConfigCoexistence_block_invoke", 515, *(a1 + 72));
        LbsOsaTrace_WriteLog(0x18u, __str, v17, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "setConfigCoexistence_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v19, 5, 1);
      }

      return result;
    }

    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v24, a1 + 40);
    v25[3] = 0;
    gnss::GnssAdaptDevice::Ga07_10AddRespHndlToGnmLUT(v2, 0xEu, v24);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v25);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v24);
    if (gnss::GnssAdaptDevice::Ga01_04HandleSideBand(v2, *(a1 + 72)))
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        return result;
      }

LABEL_23:
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "setConfigCoexistence_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
      return result;
    }

    gnss::GnssAdaptDevice::Ga07_11HandleGnmStatusResponses(v2, 11, 0xEu);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetSideBandConfig\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 69, "setConfigCoexistence_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v23, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      goto LABEL_23;
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v28, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v28, "setConfigCoexistence_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v28);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "setConfigCoexistence_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "setConfigCoexistence_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

  return result;
}

void sub_29958C1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15 + 32);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::Ga01_04HandleSideBand(dispatch_semaphore_s **this, dispatch_semaphore_s *a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v4 = 1;
  if ((a2 & 2) != 0)
  {
    v4 = 2;
  }

  v5 = 32 * (a2 & 0x800);
  if ((a2 & 0x1000) != 0)
  {
    v5 = ((a2 >> 11) & 1 | 2) << 16;
  }

  if ((a2 & 0x2000) != 0)
  {
    v5 = ((v5 >> 16) | 4) << 16;
  }

  v6 = v5 | (a2 >> 12) & 0x100 | (a2 >> 10) & 1;
  if ((a2 & 0x4000) != 0)
  {
    v6 = v5 & 0x7FFF00FFE1 | (a2 >> 12) & 0x100 | (a2 >> 10) & 1 | ((BYTE2(v5) | 8u) << 16);
  }

  v7 = v6 & 0xFFFFFFFF00FFFFFFLL;
  if ((a2 & 0x8000) != 0)
  {
    v6 = v6 & 0xFFFFFFFF00FFFFFFLL | 0x2000000;
  }

  v8 = v7 | ((BYTE3(v6) | 8u) << 24);
  if ((a2 & 0x10000) != 0)
  {
    v6 = v8;
  }

  v9 = v6 | ((a2 & 0x20000) << 16);
  v10 = v6 + ((((v9 & 0xFF00000000) >> 32) | 4) << 32);
  if ((a2 & 0x40000) == 0)
  {
    v10 = v9;
  }

  if ((a2 & 0x80000) != 0)
  {
    v10 = v10 | ((((v10 & 0xFF00000000) >> 32) | 8) << 32);
  }

  v11 = (a2 << 47) & 0x100000000000000;
  v12 = (a2 << 40) & 0x1000000000000;
  if ((a2 & 0x80) != 0)
  {
    v13 = 0x20000000000;
  }

  else
  {
    v13 = (a2 << 34) & 0x10000000000;
  }

  v14 = (a2 << 27) & 0x100000000;
  if ((a2 & 3) != 0)
  {
    v15 = v4;
  }

  else
  {
    v15 = 0;
  }

  v16 = (a2 << 6) & 0x100 | (((a2 >> 3) & 1) << 16) & 0xFFFFFFFFFEFFFFFFLL | (((a2 >> 4) & 1) << 24) | v15;
  v17 = v10 & 0xFFFFFFFFFFLL;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CfgType,%u,LegacyFta,%u,EnhancedFreqAid,%u,StatSpurCanclCfg,%u,DynSpurCanclCfg,%u,JammerDetect,%u,LegacyBlanking,%u,EBlankGpsGalBds3,%u,EBlankGlo,%u,EBlankBds2,%u,ForceFilter,%u,GpsGalBds3FiltMsk,%u,GloFiltMsk,%u,Bds2FiltMsk,%u,\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 73, "Ga01_05SideBandTrigger", 0x1FFF, v16 & 3, BYTE1(v16), BYTE2(v16), BYTE3(v16), HIDWORD(v14), v13 >> 40, HIWORD(v12), HIBYTE(v11), v17, BYTE1(v17), BYTE2(v17), BYTE3(v17), HIDWORD(v17));
    LbsOsaTrace_WriteLog(0x18u, __str, v19, 4, 1);
  }

  if (Gnm_SetSideBandConfig(1, 0x1FFFLL, v16 | v13 | v14 | v12 | v11, v17))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetSideBandConfig Response,%u\n", v25);
LABEL_31:
      LbsOsaTrace_WriteLog(0x18u, __str, v20, 0, 1);
      return 0;
    }

    return 0;
  }

  if (gnssOsa_SemWaitTimeOut(this[129], 0x1F4u))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetSideBandConfig\n");
      goto LABEL_31;
    }

    return 0;
  }

  this[13] = a2;
  if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    return 1;
  }

  bzero(__str, 0x410uLL);
  v23 = mach_continuous_time();
  v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Set CoexSB Success\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 73, "Ga01_04HandleSideBand");
  v21 = 1;
  LbsOsaTrace_WriteLog(0x18u, __str, v24, 4, 1);
  return v21;
}

double gnss::GnssAdaptDevice::setConfigDutyCycling(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v3 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice20setConfigDutyCyclingEbNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_27_0;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v8, a3);
    dispatch_async(v3, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setConfigDutyCycling", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
  }

  return result;
}

double ___ZN4gnss15GnssAdaptDevice20setConfigDutyCyclingEbNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setConfigDutyCycling_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a1 + 40);
  gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v10, "setConfigDutyCycling_block_invoke");
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Not Supported\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 87, "setConfigDutyCycling_block_invoke", 264);
    LbsOsaTrace_WriteLog(0x18u, __str, v6, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setConfigDutyCycling_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
  }

  return result;
}

void sub_29958C9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double gnss::GnssAdaptDevice::setConfigSimulatorMode(uint64_t a1, char a2, int a3, char a4, uint64_t a5)
{
  v17 = *MEMORY[0x29EDCA608];
  if (*(a5 + 24))
  {
    v8 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice22setConfigSimulatorModeEbibNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_33;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, a5);
    v14 = a2;
    v13[8] = a3;
    v15 = a4;
    dispatch_async(v8, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "setConfigSimulatorMode", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
  }

  return result;
}

double ___ZN4gnss15GnssAdaptDevice22setConfigSimulatorModeEbibNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v70 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setConfigSimulatorMode_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 1u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v6 = 70;
      if (*(a1 + 76))
      {
        v6 = 84;
      }

      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DevState,%c,Week,%d\n", v5, "ADP", 65, "setConfigSimulatorMode_block_invoke", v6, *(a1 + 72));
      LbsOsaTrace_WriteLog(0x18u, __str, v7, 1, 1);
    }

    v26 = 0;
    v24 = 0;
    v27 = 2;
    v44 = 0u;
    v45 = 0u;
    memset(v46, 0, sizeof(v46));
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    memset(&v30[17], 0, 13);
    v28 = 0;
    *v30 = 0;
    v29 = 0;
    *&v30[7] = 0;
    v47 = -1;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    memset(v63, 0, sizeof(v63));
    v64 = 0xFFFF;
    v65 = 0;
    v67 = 0;
    *&v66[7] = 0;
    *v66 = 0;
    v25 = 512;
    v66[8] = *(a1 + 76);
    v66[9] = *(a1 + 77);
    if (v66[8] == 1)
    {
      *&v66[10] = *(a1 + 72);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Simulation mode ON\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setConfigSimulatorMode_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
      }
    }

    v10 = Gnm_SetUserConfig(&v24);
    if (v10)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v23, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, v10, v23, "setConfigSimulatorMode_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v23);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetUserConfig Res,%u\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "setConfigSimulatorMode_block_invoke", 257, v10);
        LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "setConfigSimulatorMode_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v22, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, 0, v22, "setConfigSimulatorMode_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v22);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "setConfigSimulatorMode_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v68, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v68, "setConfigSimulatorMode_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v68);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "setConfigSimulatorMode_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v17, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "setConfigSimulatorMode_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v19, 5, 1);
    }
  }

  return result;
}

void sub_29958D194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double gnss::GnssAdaptDevice::setConfigEnableGnssConstellations(uint64_t a1, int a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice33setConfigEnableGnssConstellationsEjNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_39;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a3);
    v9[8] = a2;
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setConfigEnableGnssConstellations", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
  }

  return result;
}

double ___ZN4gnss15GnssAdaptDevice33setConfigEnableGnssConstellationsEjNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v68 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setConfigEnableGnssConstellations_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Const,%u\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 77, "setConfigEnableGnssConstellations_block_invoke", *(a1 + 72));
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 3, 1);
    }

    v26 = 0;
    v24 = 0;
    v27 = 2;
    v43 = 0u;
    v44 = 0u;
    memset(v45, 0, sizeof(v45));
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    memset(&v29[17], 0, 13);
    v28 = 0uLL;
    memset(v29, 0, 15);
    v46 = -1;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    memset(v62, 0, sizeof(v62));
    v63 = 0xFFFF;
    v64 = 0;
    v65[2] = 0;
    *(v65 + 7) = 0;
    v65[0] = 0;
    v25 = 16;
    v7 = *(a1 + 72);
    if (v7)
    {
      BYTE5(v28) = 1;
      *(&v28 + 1) = 16843009;
      if ((v7 & 2) == 0)
      {
LABEL_8:
        if ((v7 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_25;
      }
    }

    else if ((v7 & 2) == 0)
    {
      goto LABEL_8;
    }

    BYTE10(v28) = 1;
    *(&v28 + 6) = 16843009;
    if ((v7 & 4) == 0)
    {
LABEL_9:
      if ((v7 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }

LABEL_25:
    v29[14] = 1;
    *&v29[10] = 16843009;
    if ((v7 & 8) == 0)
    {
LABEL_10:
      if ((v7 & 0x10) == 0)
      {
LABEL_12:
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ConfigMask,%d,Config2Mask,%d\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 77, "setConfigEnableGnssConstellations_block_invoke", 0, 16);
          LbsOsaTrace_WriteLog(0x18u, __str, v9, 3, 1);
        }

        v10 = Gnm_SetUserConfig(&v24);
        if (v10)
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v23, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, v10, v23, "setConfigEnableGnssConstellations_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v23);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v11 = mach_continuous_time();
            v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetUserConfig Ret,%u\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "setConfigEnableGnssConstellations_block_invoke", 257, v10);
            LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v14 = mach_continuous_time();
            v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "setConfigEnableGnssConstellations_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
          }
        }

        else
        {
          std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v22, a1 + 40);
          gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(v2, 0, v22, "setConfigEnableGnssConstellations_block_invoke");
          std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v22);
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v20 = mach_continuous_time();
            v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "setConfigEnableGnssConstellations_block_invoke");
            LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
          }
        }

        return result;
      }

LABEL_11:
      v29[4] = 1;
      *v29 = 16843009;
      goto LABEL_12;
    }

LABEL_26:
    v29[9] = 1;
    *&v29[5] = 16843009;
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v66, a1 + 40);
  gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v66, "setConfigEnableGnssConstellations_block_invoke");
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v66);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "setConfigEnableGnssConstellations_block_invoke", 1302);
    LbsOsaTrace_WriteLog(0x18u, __str, v17, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "setConfigEnableGnssConstellations_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v19, 5, 1);
  }

  return result;
}

void sub_29958D984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double gnss::GnssAdaptDevice::setConfigRfBandEnable(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    if ((a2 & ~a3) != 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = 4;
    }

    v5 = *(a1 + 296);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice21setConfigRfBandEnableEbbNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_40;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a4);
    v10[8] = v4;
    dispatch_async(v5, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setConfigRfBandEnable", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice21setConfigRfBandEnableEbbNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v2, v1);
}

double gnss::GnssAdaptDevice::setConfigNetworkFreqAssistance(uint64_t a1, char a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice30setConfigNetworkFreqAssistanceEbNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_46_0;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a3);
    v9[32] = a2;
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "setConfigNetworkFreqAssistance", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 0, 1);
  }

  return result;
}

double ___ZN4gnss15GnssAdaptDevice30setConfigNetworkFreqAssistanceEbNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setConfigNetworkFreqAssistance_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    if (*(v2 + 89) == 1)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v26, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 0, v26, "setConfigNetworkFreqAssistance_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v26);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FreqAssist req dropped\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setConfigNetworkFreqAssistance_block_invoke", 2056);
        LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setConfigNetworkFreqAssistance_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
      }

      return result;
    }

    v14 = *(a1 + 72);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v24, a1 + 40);
    v25[3] = 0;
    gnss::GnssAdaptDevice::Ga07_10AddRespHndlToGnmLUT(v2, 0xEu, v24);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v25);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v24);
    v15 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key % 0x7Fu;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v17 = 70;
      if (*(a1 + 72))
      {
        v17 = 84;
      }

      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SbUniqueKey,%u,eE_FREQAID state,%c\n", v16, "ADP", 77, "setConfigNetworkFreqAssistance_block_invoke", v15, v17);
      LbsOsaTrace_WriteLog(0x18u, __str, v18, 3, 1);
    }

    v19 = Gnm_SetSideBandConfig(v15, 2, v14 << 8, 0);
    if (!v19)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        return result;
      }

      goto LABEL_23;
    }

    gnss::GnssAdaptDevice::Ga07_11HandleGnmStatusResponses(v2, v19, 0xEu);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetSideBand,%u\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 69, "setConfigNetworkFreqAssistance_block_invoke", 257, v19);
      LbsOsaTrace_WriteLog(0x18u, __str, v21, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
LABEL_23:
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 68, "setConfigNetworkFreqAssistance_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v23, 5, 1);
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v27, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 0, v27, "setConfigNetworkFreqAssistance_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v27);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "setConfigNetworkFreqAssistance_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "setConfigNetworkFreqAssistance_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }
  }

  return result;
}

void sub_29958E318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15 + 32);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL gnss::GnssAdaptDevice::Ga01_00SetMSBMandatoryMask(gnss::GnssAdaptDevice *this)
{
  v11 = *MEMORY[0x29EDCA608];
  v10 = 0u;
  v9 = 0u;
  bzero(v6, 0x20EuLL);
  v6[0] = 2;
  v7 = 32;
  v8 = 6;
  v1 = Gnm_SetPlatformConfig(v6);
  if (v1 && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetPltfmCfg,%u\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 69, "Ga01_00SetMSBMandatoryMask", 257, v1);
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 0, 1);
  }

  return v1 == 0;
}

BOOL gnss::GnssAdaptDevice::Ga01_01SetMSAMandatoryMask(gnss::GnssAdaptDevice *this)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v1), "ADP", 68, "Ga01_01SetMSAMandatoryMask");
    LbsOsaTrace_WriteLog(0x18u, __str, v2, 5, 1);
  }

  v13 = 0u;
  v12 = 0u;
  bzero(&v9, 0x20EuLL);
  v9 = 1;
  v10 = 64;
  v11 = 4;
  v3 = Gnm_SetPlatformConfig(&v9);
  if (v3 && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetPltfmCfg,%u\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "Ga01_01SetMSAMandatoryMask", 257, v3);
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 68, "Ga01_01SetMSAMandatoryMask");
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 5, 1);
  }

  return v3 == 0;
}

void gnss::GnssAdaptDevice::Ga01_02PowerReportCB(gnss::GnssAdaptDevice *a1, const void *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PowerReportCB\n");
    goto LABEL_8;
  }

  v3 = a1;
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(a1);
  if (!DeviceInstance)
  {
    return;
  }

  if (v3)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Result,%u\n", v10);
LABEL_8:
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
    return;
  }

  v6 = DeviceInstance;
  *&__dst = 0;
  DWORD2(__dst) = 0;
  v12 = 0.0;
  memcpy_s("Ga01_03HandlePowerReportCB", 576, &__dst, 0x18u, a2, 0x18uLL);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ActiveIntMS,%u,AvgPwrMw,%f,LocalTime,%u,MeasIntMS,%u\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 73, "Ga01_03HandlePowerReportCB", DWORD2(__dst), v12, __dst, DWORD1(__dst));
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 4, 1);
  }

  v9 = *(v6 + 288);
  *__str = MEMORY[0x29EDCA5F8];
  v14 = 0x40000000;
  v15 = ___ZN4gnss15GnssAdaptDevice26Ga01_03HandlePowerReportCBE11e_Gnm_ErrorP15s_Gnm_PowerMeas_block_invoke;
  v16 = &__block_descriptor_tmp_59;
  v17 = v6;
  v18 = __dst;
  v19 = v12;
  dispatch_async(v9, __str);
}

uint64_t ___ZN4gnss15GnssAdaptDevice26Ga01_03HandlePowerReportCBE11e_Gnm_ErrorP15s_Gnm_PowerMeas_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](v21, v2 + 472);
  if (v22)
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3002000000;
    v15[3] = __Block_byref_object_copy__0;
    v15[4] = __Block_byref_object_dispose__0;
    v3 = operator new(0x28uLL, MEMORY[0x29EDC9418]);
    if (!v3)
    {
      v16 = 0;
      snprintf(v19, 0x400uLL, "ASSERT,%s,%d,%s", "Ga01_03HandlePowerReportCB_block_invoke", 595, "Memory allocation failed for PwrMeas");
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v13), "OSA", 69, "Ga01_03HandlePowerReportCB_block_invoke", v19);
        LbsOsaTrace_WriteLog(0xEu, __str, v14, 0, 1);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("Ga01_03HandlePowerReportCB_block_invoke", "ga01GnssDeviceConfig.cpp", 595, "false && Memory allocation failed for PwrMeas");
    }

    *(v3 + 8) = 0;
    LODWORD(v4) = *(a1 + 48);
    v5 = *(a1 + 56);
    v3[2] = v4 / 1000.0;
    *(v3 + 3) = v5;
    v6 = *(a1 + 40);
    v7.i64[0] = v6;
    v7.i64[1] = HIDWORD(v6);
    *v3 = vdivq_f64(vcvtq_f64_u64(v7), vdupq_n_s64(0x408F400000000000uLL));
    v8 = *(v2 + 296);
    v16 = v3;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice26Ga01_03HandlePowerReportCBE11e_Gnm_ErrorP15s_Gnm_PowerMeas_block_invoke_2;
    block[3] = &unk_2A1F88728;
    std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](v18, v21);
    block[4] = v15;
    dispatch_async(v8, block);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v18);
    _Block_object_dispose(v15, 8);
    v9 = v16;
    v16 = 0;
    if (v9)
    {
      MEMORY[0x29C29EB20](v9, 0x1000C407A37F5ACLL);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx OnPowerReportCB\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "Ga01_03HandlePowerReportCB_block_invoke", 770);
    LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
  }

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v21);
}

void sub_29958EC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  _Block_object_dispose(&a15, 8);
  v22 = a20;
  a20 = 0;
  if (v22)
  {
    MEMORY[0x29C29EB20](v22, 0x1000C407A37F5ACLL);
  }

  std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v20 - 72);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t __Block_byref_object_dispose__0(uint64_t a1)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {

    JUMPOUT(0x29C29EB20);
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice26Ga01_03HandlePowerReportCBE11e_Gnm_ErrorP15s_Gnm_PowerMeas_block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x29EDCA608];
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
  v5[0] = v2;
  v3 = *(a1 + 64);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, v5);
  result = v5[0];
  v5[0] = 0;
  if (result)
  {
    return MEMORY[0x29C29EB20](result, 0x1000C407A37F5ACLL);
  }

  return result;
}

void sub_29958EE64(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29EB20](a9, 0x1000C407A37F5ACLL, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c92_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss14PwrMeasurementENS_14default_deleteIS3_EEEEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 40;
  v3 = a2 + 40;

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_40c92_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss14PwrMeasurementENS_14default_deleteIS3_EEEEEEE(uint64_t a1)
{
  v1 = a1 + 40;

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v1);
}

uint64_t gnss::GnssAdaptDevice::Ga01_06SetDefaultSideBandConfig(dispatch_semaphore_s **this)
{
  v6 = *MEMORY[0x29EDCA608];
  v1 = gnss::GnssAdaptDevice::Ga01_04HandleSideBand(this, this[13]);
  if ((v1 & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetSideBandConfig\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 69, "Ga01_06SetDefaultSideBandConfig", 1302);
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 0, 1);
  }

  return v1;
}

uint64_t gnss::GnssAdaptDevice::Ga01_07SetSecondaryLogConfig(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v5 = 0;
  v4 = 0;
  if (a2 > 3)
  {
    if ((a2 - 4) < 2)
    {
      v2 = 84215045;
      goto LABEL_10;
    }

    if (a2 == 6)
    {
      v2 = 101058054;
      goto LABEL_10;
    }
  }

  else
  {
    if ((a2 - 1) < 2)
    {
      v2 = 16843009;
LABEL_10:
      v5 = v2;
      v4 = v2;
      return Gnm_SetTaLogConfig(&v4);
    }

    if (a2 == 3)
    {
      v2 = 33686018;
      goto LABEL_10;
    }
  }

  return Gnm_SetTaLogConfig(&v4);
}

uint64_t std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t *std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::__remove_node_pointer(a1, a2);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((a2 + 9));
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((a2 + 5));
  operator delete(a2);
  return v3;
}

uint64_t *std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
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
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
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
      if (v18 && (*(v18 + 24) & 1) == 0)
      {
LABEL_57:
        v17 = v7;
      }

      else
      {
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
      goto LABEL_70;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_57;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_51;
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
    goto LABEL_66;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_51:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v23 && (*(v23 + 24) & 1) == 0)
  {
LABEL_66:
    v24 = v7;
    goto LABEL_67;
  }

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
LABEL_67:
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
LABEL_70:
  *(v28 + 16) = v29;
  return result;
}

uint64_t std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t GAL_AlmBin2Int(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 - 7168 <= 0xFFF)
  {
    *(a2 + 9) = (v2 >> 6) & 0xF;
    v3 = (v2 >> 4) & 3;
    v4 = *(result + 28);
    if (v4 >= 0x10)
    {
      if (((v4 >> 4) & 3) == v3)
      {
        v3 = 0;
      }

      v3 += v4 >> 4;
    }

    *(a2 + 10) = v3;
    *(a2 + 12) = (*(result + 10) >> 10) & 0xFC3F | ((*(result + 8) & 0xF) << 6);
    v5 = *(result + 10);
    *(a2 + 14) = ((*(result + 12) << 12) | (v5 << 28)) >> 19;
    *(a2 + 16) = (*(result + 14) >> 12) & 0xF80F | (16 * (*(result + 12) & 0x7F));
    HIDWORD(v6) = *(result + 14);
    LODWORD(v6) = *(result + 16) << 16;
    *(a2 + 8) = (v5 >> 4) & 0x3F;
    *(a2 + 24) = v6 >> 28;
    *(a2 + 18) = (16 * *(result + 16)) >> 5;
    HIDWORD(v6) = *(result + 16);
    LODWORD(v6) = *(result + 18) << 16;
    *(a2 + 20) = v6 >> 17;
    *(a2 + 22) = ((*(result + 20) << 15) | (*(result + 18) << 31)) >> 21;
    HIDWORD(v6) = *(result + 20);
    LODWORD(v6) = *(result + 22) << 16;
    *(a2 + 26) = v6 >> 22;
    HIDWORD(v6) = *(result + 22);
    LODWORD(v6) = *(result + 24) << 16;
    *(a2 + 28) = v6 >> 22;
    *(a2 + 30) = ((*(result + 26) << 10) | (*(result + 24) << 26)) >> 19;
    v7 = *(result + 26);
    *(a2 + 33) = (v7 >> 7) & 3;
    *(a2 + 34) = (v7 >> 5) & 3;
    *a2 = *result;
  }

  return result;
}

void GncP02_10DataIndFromMECB(size_t a1, unsigned __int8 *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("GncP02_10DataIndFromMECB", 142, 1, 0x20uLL);
  if (v4)
  {
    v5 = v4;
    v6 = gnssOsa_Calloc("GncP02_10DataIndFromMECB", 148, 1, a1);
    v5[2] = v6;
    if (v6)
    {
      if (a1 > 8)
      {
        memcpy_s("GncP02_10DataIndFromMECB", 161, v6, a1, a2, a1);
        *(v5 + 12) = a1;
        if (a2[2] == 77)
        {
          v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        }

        else
        {
          LODWORD(v9) = 0;
        }

        *(v5 + 7) = v9;
        if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v10 = mach_continuous_time();
          v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ME_BUF_RX_IND =>GNCP Len,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 68, "GncP02_10DataIndFromMECB", *(v5 + 12));
          LbsOsaTrace_WriteLog(8u, __str, v11, 5, 1);
        }

        AgpsSendFsmMsg(134, 134, 8788739, v5);
      }

      else if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MsgLen,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 87, "GncP02_10DataIndFromMECB", 783, a1);
        LbsOsaTrace_WriteLog(8u, __str, v8, 2, 1);
      }
    }

    else
    {

      free(v5);
    }
  }
}

void GncP02_11StrtMEDataDelayTimr(unsigned int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (g_GncPMeData == 1)
  {
    if (AgpsFsmStopTimer(8789510) && LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 87, "GncP02_11StrtMEDataDelayTimr", 1545);
      LbsOsaTrace_WriteLog(8u, __str, v3, 2, 1);
    }

    g_GncPMeData = 0;
  }

  if (AgpsFsmStartTimer(8789510, a1))
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Dur,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP02_11StrtMEDataDelayTimr", 1544, a1);
      LbsOsaTrace_WriteLog(8u, __str, v5, 2, 1);
    }
  }

  else
  {
    g_GncPMeData = 1;
    mach_continuous_time();
  }
}

void GncP02_13ClearMEBuf(void)
{
  v3 = *MEMORY[0x29EDCA608];
  while (g_GncPMeData)
  {
    GncP02_14ClearCurrMEBufElem();
  }

  g_GncPMeData = 0;
  if (g_GncPMeData)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v0 = mach_continuous_time();
      v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MEDataPack,%u\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 87, "GncP02_13ClearMEBuf", 770, g_GncPMeData);
      LbsOsaTrace_WriteLog(8u, __str, v1, 2, 1);
    }

    g_GncPMeData = 0;
  }
}

void GncP02_14ClearCurrMEBufElem(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if (g_GncPMeData)
  {
    v0 = *(g_GncPMeData + 2056);
    free(g_GncPMeData);
    if (g_GncPMeData)
    {
      --g_GncPMeData;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 87, "GncP02_14ClearCurrMEBufElem", 770);
      LbsOsaTrace_WriteLog(8u, __str, v2, 2, 1);
    }

    g_GncPMeData = v0;
  }
}

double GncP02_23PostProcessMeMsg(unsigned __int8 *a1, char a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  if (v2 != 66 && v2 != 79)
  {
    if (v2 == 77)
    {
      if (a1[1] == 77)
      {
        if ((a2 & 1) == 0)
        {
          result = GncP16_26UpdateStateMEDataRcvd();
        }

        if ((g_GncPMeData & 1) == 0)
        {

          GncP01_32ExecutePE(a1);
        }
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 87, "GncP02_23PostProcessMeMsg", 777, *a1);
      LbsOsaTrace_WriteLog(8u, __str, v6, 2, 1);
    }
  }

  return result;
}

BOOL GncP02_15AddMEDataElem(unsigned __int8 *a1, size_t a2, int a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = gnssOsa_Calloc("GncP02_15AddMEDataElem", 318, 1, 0x810uLL);
  if (v6)
  {
    if (g_GncPMeData == 255)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MEData Overflow\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 87, "GncP02_15AddMEDataElem");
        LbsOsaTrace_WriteLog(8u, __str, v8, 2, 1);
      }

      GncP02_13ClearMEBuf();
    }

    v6[513] = a3;
    *(v6 + 1024) = a2;
    *(v6 + 257) = 0;
    memcpy_s("GncP02_15AddMEDataElem", 337, v6, 0x800u, a1 + 8, a2);
    v9 = &g_GncPMeData;
    v10 = g_GncPMeData;
    if (g_GncPMeData)
    {
      do
      {
        v11 = v10;
        v10 = *(v10 + 2056);
      }

      while (v10);
      v9 = (v11 + 2056);
    }

    *v9 = v6;
    ++g_GncPMeData;
  }

  return v6 != 0;
}

size_t GncP02_16GetMEDataFrmBuf(size_t a1, char *a2)
{
  if (!g_GncPMeData)
  {
    return 0;
  }

  v2 = a1;
  g_GncPMeData = *(g_GncPMeData + 2052);
  v3 = *(g_GncPMeData + 2048);
  if (v3 <= a1)
  {
    memcpy_s("GncP02_16GetMEDataFrmBuf", 400, a2, a1, g_GncPMeData, v3);
    v2 = *(g_GncPMeData + 2048);
    GncP02_14ClearCurrMEBufElem();
  }

  else
  {
    memcpy_s("GncP02_16GetMEDataFrmBuf", 387, a2, a1, g_GncPMeData, a1);
    memmove(g_GncPMeData, (g_GncPMeData + v2), (*(g_GncPMeData + 2048) - v2));
    *(g_GncPMeData + 2048) -= v2;
  }

  return v2;
}

uint64_t GncP02_22HandleDataFromME(uint64_t a1)
{
  v41 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v35 = 0;
    v36 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ME_BUF_RX_IND Len,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "GncP02_22HandleDataFromME", *(a1 + 24));
      LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
    }

    v4 = *(a1 + 24);
    if (!*(a1 + 24))
    {
      goto LABEL_25;
    }

    if (v4 >= 0x801)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MsgLen,%u,Max,%u\n", v5);
LABEL_24:
        LbsOsaTrace_WriteLog(8u, __str, v6, 2, 1);
        goto LABEL_25;
      }

      goto LABEL_25;
    }

    if (v4 <= 8)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MsgLen,%u,Min,%u\n", v9);
        goto LABEL_24;
      }

LABEL_25:
      v17 = *(a1 + 16);
      if (v17)
      {
        free(v17);
      }

      *(a1 + 16) = 0;
      return 0;
    }

    v10 = *(a1 + 28);
    v11 = *(a1 + 16);
    v37 = 0;
    v38 = 0;
    if (*v11 != 122 || v11[1] != 120)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ME Data nonZX MC,%u,MID,%u\n", v16);
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    LOBYTE(v37) = v11[2];
    v12 = v11[3];
    HIBYTE(v37) = v11[3];
    v38 = v11[4];
    if (v37 == 66)
    {
      memset_s(__str, 0x7FCuLL, 0, 0x7FCuLL);
      if (!GncP02_01DecodeZXStream(v11, v4, &v37, __str))
      {
        goto LABEL_49;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(v39, 0x410uLL);
        v19 = mach_continuous_time();
        v20 = snprintf(v39, 0x40FuLL, "%10u %s%c %s: ME=>GNCP ZX%c%c,SN,%u\n", (*&g_MacClockTicksToMsRelation * v19), "GNC", 73, "GncP02_20ProcessMeMsg", v37, HIBYTE(v37), v38);
        LbsOsaTrace_WriteLog(8u, v39, v20, 4, 1);
      }

      if (HIBYTE(v37) == 83)
      {
        GncP02_25HandleDeRegGnssResp(__str);
        goto LABEL_49;
      }
    }

    else
    {
      if (v37 != 79)
      {
        if (v37 == 77)
        {
          if (v12 != 77)
          {
            goto LABEL_49;
          }

          v13 = (plc00_09GetPayloadLength(v11) - 1);
          if (v13 + 9 > v4)
          {
            if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ME=>GNCP ZX%c%c,Readlen,%u,Payloadlen,%u\n", v14, "GNC", 87);
LABEL_39:
              v22 = __str;
LABEL_47:
              v26 = v15;
              v27 = 2;
LABEL_48:
              LbsOsaTrace_WriteLog(8u, v22, v26, v27, 1);
            }

LABEL_49:
            v35 = v37;
            v36 = v38;
            GncP02_23PostProcessMeMsg(&v35, 0);
            goto LABEL_25;
          }

          if (GncP02_15AddMEDataElem(v11, v13, v10))
          {
            if (g_GncPMeData)
            {
              if (!LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
              {
                goto LABEL_49;
              }

              bzero(__str, 0x410uLL);
              v28 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Len,%u,TS,%u,NumPks,%u\n", v28);
            }

            else
            {
              if (word_2A19207FE && g_GncPConfig[0] >= 0x3E8u)
              {
                GncP02_11StrtMEDataDelayTimr(word_2A19207FE);
              }

              if (!LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
              {
                goto LABEL_49;
              }

              bzero(__str, 0x410uLL);
              v30 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FixInt,%u,Timer,%u,Started,%u,Len,%u,TS,%u,NumPks,%u\n", v30, "GNC", 73);
            }

            v22 = __str;
            v26 = v29;
            v27 = 4;
            goto LABEL_48;
          }

          if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
          {
            goto LABEL_49;
          }

          bzero(__str, 0x410uLL);
          v32 = "GncP02_18ProcessMClassMsg";
          v33 = v13;
          v31 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v21 = "%10u %s%c %s: MEData Lost Len,%u\n";
        }

        else
        {
          if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
          {
            goto LABEL_49;
          }

          bzero(__str, 0x410uLL);
          v33 = 777;
          v34 = v37;
          v32 = "GncP02_20ProcessMeMsg";
          v31 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v21 = "%10u %s%c %s: #%04hx MC,%u\n";
        }

        v15 = snprintf(__str, 0x40FuLL, v21, v31, "GNC", 87, v32, v33, v34);
        goto LABEL_39;
      }

      if (v12 == 84)
      {
        GncP25_04HandleTimeMarkEvent(v11, v4);
        goto LABEL_49;
      }

      memset_s(__str, 0x7FCuLL, 0, 0x7FCuLL);
      if (!GncP02_01DecodeZXStream(v11, v4, &v37, __str))
      {
        goto LABEL_49;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(v39, 0x410uLL);
        v23 = mach_continuous_time();
        v24 = snprintf(v39, 0x40FuLL, "%10u %s%c %s: ME=>GNCP ZX%c%c,SN,%u\n", (*&g_MacClockTicksToMsRelation * v23), "GNC", 73, "GncP02_20ProcessMeMsg", v37, HIBYTE(v37), v38);
        LbsOsaTrace_WriteLog(8u, v39, v24, 4, 1);
      }

      if (HIBYTE(v37) == 80)
      {
        GncP26_05HandlePowerRepMsg(&v37, __str);
        goto LABEL_49;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(v39, 0x410uLL);
      v25 = mach_continuous_time();
      v15 = snprintf(v39, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u\n", (*&g_MacClockTicksToMsRelation * v25), "GNC", 87, "GncP02_20ProcessMeMsg", 778, v37, HIBYTE(v37));
      v22 = v39;
      goto LABEL_47;
    }

    goto LABEL_49;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 69, "GncP02_22HandleDataFromME", 517);
    LbsOsaTrace_WriteLog(8u, __str, v8, 0, 1);
  }

  return 0;
}

double GncP02_25HandleDeRegGnssResp(unsigned __int8 *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Status,%c\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP02_25HandleDeRegGnssResp", *a1);
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  v4 = *a1;
  if (v4 <= 0x4C)
  {
    if (v4 != 32)
    {
      if (v4 == 67 || v4 == 71)
      {
        return GncP03_14SendDeRegGnssReq(word_2A1920800, 0);
      }

      goto LABEL_14;
    }

LABEL_11:
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Success response\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 68, "GncP02_25HandleDeRegGnssResp");
    v8 = 5;
    goto LABEL_18;
  }

  if (v4 == 77)
  {
    return GncP16_31UpdateStateMEPowerState(7u);
  }

  if (v4 != 119)
  {
    if (v4 != 109)
    {
LABEL_14:
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Status,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "GncP02_25HandleDeRegGnssResp", 770, *a1);
      v8 = 2;
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (!LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    return result;
  }

  bzero(__str, 0x410uLL);
  v10 = mach_continuous_time();
  v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ME Wake-up in progress\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 73, "GncP02_25HandleDeRegGnssResp");
  v8 = 4;
LABEL_18:
  LbsOsaTrace_WriteLog(8u, __str, v7, v8, 1);
  return result;
}

uint64_t GncP02_31MEDataDelayTimExp(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
    {
      bzero(&v14[3], 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(&v14[3], 0x40FuLL, "%10u %s%c %s: FSM:GNCP_MEDATA_DELAY_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncP02_31MEDataDelayTimExp");
      LbsOsaTrace_WriteLog(8u, &v14[3], v2, 5, 1);
    }

    v3 = g_GncPStateInfo;
    g_GncPMeData = 0;
    strcpy(v14, "MM");
    if (g_GncPStateInfo > 0x10u)
    {
      goto LABEL_22;
    }

    if (((1 << g_GncPStateInfo) & 0x10A3E) != 0)
    {
LABEL_6:
      GncP02_13ClearMEBuf();
      return 0;
    }

    if (((1 << g_GncPStateInfo) & 0xC5C1) == 0)
    {
LABEL_22:
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
      {
        bzero(&v14[3], 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(&v14[3], 0x40FuLL, "%10u %s%c %s: #%04hx State,%hhu\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "GncP02_12MEDataTimerExpiry", 262, v3);
        LbsOsaTrace_WriteLog(8u, &v14[3], v13, 2, 1);
      }
    }

    v6 = g_GncPMeData;
    if (!g_GncPMeData)
    {
      return 0;
    }

    v7 = g_GncPMeData;
    while (1)
    {
      v8 = *(v6 + 2048);
      GncP02_23PostProcessMeMsg(v14, 1);
      v6 = g_GncPMeData;
      if (g_GncPMeData == v7 && *(g_GncPMeData + 2048) == v8)
      {
        break;
      }

      v7 = g_GncPMeData;
      if (!g_GncPMeData)
      {
        return 0;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(&v14[3], 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(&v14[3], 0x40FuLL, "%10u %s%c %s: State,%hhu,NumPks,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 69, "GncP02_12MEDataTimerExpiry", v3, v7);
      LbsOsaTrace_WriteLog(8u, &v14[3], v11, 0, 1);
    }

    goto LABEL_6;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(&v14[3], 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(&v14[3], 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP02_31MEDataDelayTimExp", 517);
    LbsOsaTrace_WriteLog(8u, &v14[3], v5, 0, 1);
  }

  return 0;
}

uint64_t GncP02_32StateHndlTimExp(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_STATE_HNDL_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "GncP02_32StateHndlTimExp");
      IsLoggingAllowed = LbsOsaTrace_WriteLog(8u, __str, v3, 5, 1);
    }

    GncP16_25UpdateStateTimerExpiry(IsLoggingAllowed);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP02_32StateHndlTimExp", 517);
    LbsOsaTrace_WriteLog(8u, __str, v5, 0, 1);
  }

  return 0;
}

uint64_t GncP02_33BBResetTimExp(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_GNSSBBRESET_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncP02_33BBResetTimExp");
      LbsOsaTrace_WriteLog(8u, __str, v2, 5, 1);
    }

    GncP19_04MEResetTimerExpiry();
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 69, "GncP02_33BBResetTimExp", 517);
    LbsOsaTrace_WriteLog(8u, __str, v4, 0, 1);
  }

  return 0;
}

uint64_t GncP02_34TimemarkSessTimExp(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_TIMEMARK_SESS_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncP02_34TimemarkSessTimExp");
      LbsOsaTrace_WriteLog(8u, __str, v2, 5, 1);
    }

    GncP25_10TimemarkSessTimerExpiry();
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 69, "GncP02_34TimemarkSessTimExp", 517);
    LbsOsaTrace_WriteLog(8u, __str, v4, 0, 1);
  }

  return 0;
}

BOOL GncP02_01DecodeZXStream(unsigned __int8 *a1, unsigned int a2, unsigned __int8 *a3, uint64_t a4)
{
  v30 = *MEMORY[0x29EDCA608];
  v16 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  memset(v28, 0, sizeof(v28));
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
  PlcHwType = GncP05_62GetPlcHwType();
  plc00_03DecodeMsg(0, a1, a2, a4, &v16, &v19, a3, PlcHwType);
  v9 = v19;
  if (!v19)
  {
    return v9 == 0;
  }

  if (IsLoggingAllowed != 1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      goto LABEL_9;
    }

    bzero(__str, 0x410uLL);
    v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,MIDE,%u\n", v12, "GNC");
    goto LABEL_8;
  }

  if (plc00_15GetExtErrAsString(&v19, __s, 0x104uLL) && LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,MIDE,%u,Err,%s\n", v10, "GNC", 87);
LABEL_8:
    LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
  }

LABEL_9:
  if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MsgHeader %x,%x,%x,%x,%x,%x,%x,%x\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "GncP02_01DecodeZXStream", 776, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
    LbsOsaTrace_WriteLog(8u, __str, v14, 2, 1);
  }

  return v9 == 0;
}

uint64_t Decode_BDS_Alm_Health_Sts(int a1)
{
  if ((a1 & 0x100) != 0)
  {
    if (a1)
    {
      if ((a1 & 0xE0) != 0)
      {
        v5 = 4;
      }

      else
      {
        v5 = 7;
      }

      v6 = (a1 << 26 >> 31) & 6;
      if ((a1 & 0x40) != 0)
      {
        v6 = 5;
      }

      if ((a1 & 0x80) != 0)
      {
        v7 = v5;
      }

      else
      {
        v7 = v6;
      }

      if ((a1 & 0xE0) == 0)
      {
        v7 = v5;
      }

      if ((a1 & 2) != 0)
      {
        v8 = 3;
      }

      else
      {
        v8 = v7;
      }

      if (a1 == 255)
      {
        return 2;
      }

      else
      {
        return v8;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if ((a1 & 0xE0) != 0)
    {
      v1 = 8;
    }

    else
    {
      v1 = 11;
    }

    v2 = (a1 << 26 >> 31) & 0xA;
    if ((a1 & 0x40) != 0)
    {
      v2 = 9;
    }

    if ((a1 & 0x80) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = v2;
    }

    if ((a1 & 0xE0) == 0)
    {
      v3 = v1;
    }

    if ((a1 & 2) != 0)
    {
      return 3;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t FN_Publish_Fused_Soln(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a2 + 32) = vrev64_s32(*a1);
  *(a2 + 40) = v2;
  *(a2 + 48) = *(a1 + 16);
  *(a2 + 52) = *(a1 + 20);
  *(a2 + 54) = *(a1 + 22);
  v3 = *(a1 + 24);
  *(a2 + 1) = v3;
  *a2 = v3;
  v4 = *(a1 + 192);
  *(a2 + 224) = *(a1 + 208);
  *(a2 + 208) = v4;
  v5 = *(a1 + 216);
  *(a2 + 336) = *(a1 + 232);
  *(a2 + 320) = v5;
  *(a2 + 344) = *(a1 + 240);
  *(a2 + 360) = *(a1 + 256);
  *(a2 + 4) = *(a1 + 28);
  *(a2 + 12) = *(a1 + 36);
  v6 = *(a1 + 152);
  v7 = *(a1 + 136);
  v8 = *(a1 + 120);
  *(a2 + 864) = *(a1 + 104);
  *(a2 + 880) = v8;
  *(a2 + 896) = v7;
  *(a2 + 912) = v6;
  v9 = *(a1 + 88);
  v10 = *(a1 + 56);
  v11 = *(a1 + 72);
  *(a2 + 800) = *(a1 + 40);
  *(a2 + 816) = v10;
  *(a2 + 832) = v11;
  *(a2 + 848) = v9;
  *(a2 + 144) = *(a1 + 160);
  *(a2 + 160) = *(a1 + 176);
  v12 = *(a1 + 264);
  v13 = *(a1 + 296);
  *(a2 + 1512) = *(a1 + 280);
  *(a2 + 1528) = v13;
  *(a2 + 1496) = v12;
  *(a2 + 462) = *(a1 + 552);
  *(a2 + 468) = *(a1 + 312);
  *(a2 + 484) = *(a1 + 328);
  *(a2 + 500) = *(a1 + 344);
  *(a2 + 516) = *(a1 + 360);
  *(a2 + 532) = *(a1 + 376);
  *(a2 + 548) = *(a1 + 392);
  *(a2 + 580) = *(a1 + 408);
  *(a2 + 596) = *(a1 + 424);
  *(a2 + 612) = *(a1 + 440);
  *(a2 + 628) = *(a1 + 456);
  *(a2 + 660) = *(a1 + 472);
  *(a2 + 676) = *(a1 + 488);
  *(a2 + 692) = *(a1 + 504);
  *(a2 + 708) = *(a1 + 520);
  *(a2 + 724) = *(a1 + 536);
  v14 = *(a1 + 944);
  *(a2 + 1992) = *(a1 + 960);
  *(a2 + 1976) = v14;
  v15 = *(a1 + 968);
  *(a2 + 2016) = *(a1 + 984);
  *(a2 + 2000) = v15;
  v16 = *(a1 + 992);
  *(a2 + 2040) = *(a1 + 1008);
  *(a2 + 2024) = v16;
  memcpy((a2 + 1592), (a1 + 560), 0x180uLL);
  return 1;
}

uint64_t Comp_AcqAid(int a1, __int16 a2, unsigned int a3, double *a4, uint64_t a5, double a6)
{
  result = *a4;
  *(a5 + 4) = result;
  if (result != 1)
  {
    return result;
  }

  *a5 = a1;
  v8 = a4[5] * 65.536;
  v9 = -0.5;
  if (v8 <= 0.0)
  {
    v10 = -0.5;
  }

  else
  {
    v10 = 0.5;
  }

  v11 = v8 + v10;
  if (v11 <= 2147483650.0)
  {
    if (v11 >= -2147483650.0)
    {
      v12 = v11;
    }

    else
    {
      LOWORD(v12) = 0;
    }
  }

  else
  {
    LOWORD(v12) = -1;
  }

  *(a5 + 20) = v12;
  v13 = a4[3];
  if (v13 > 0.0)
  {
    v9 = 0.5;
  }

  v14 = v13 + v9;
  if (v14 <= 2147483650.0)
  {
    if (v14 >= -2147483650.0)
    {
      v15 = v14;
    }

    else
    {
      LOWORD(v15) = 0;
    }
  }

  else
  {
    LOWORD(v15) = -1;
  }

  *(a5 + 22) = v15;
  v16 = *(a4 + 8);
  if (v16 >= a3)
  {
    *(a5 + 22) = -a2;
    LOWORD(v16) = a3;
  }

  *(a5 + 18) = v16;
  v17 = a4[6] * 4.0;
  v18 = -0.5;
  if (v17 > 0.0)
  {
    v18 = 0.5;
  }

  v19 = v17 + v18;
  if (v19 <= 2147483650.0)
  {
    if (v19 >= -2147483650.0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = -1;
  }

  *(a5 + 40) = v20;
  v21 = *(a4 + 14);
  if (v21 >= 0xFF)
  {
    LOBYTE(v21) = -1;
  }

  *(a5 + 42) = v21;
  v22 = *(a4 + 1);
  *(a5 + 15) = v22 >> 6 < 0x753;
  v23 = *(a4 + 3);
  if (v23 >= 0x24988)
  {
    if (v23 > 0xDB930)
    {
      *(a5 + 14) = 0;
      goto LABEL_34;
    }

    v24 = 2;
  }

  else
  {
    v24 = 3;
  }

  *(a5 + 14) = v24;
LABEL_34:
  LODWORD(v19) = *(a4 + 2);
  v25 = *&v19 / 299792458.0;
  *(a5 + 16) = (v25 * 2000.0 + 0.5);
  *(a5 + 36) = (v25 * 1000000000.0);
  v26 = a6 - v25;
  v27 = v26 / 1.5;
  if (v26 / 1.5 <= 0.0)
  {
    v27 = v26 / 1.5 + -1.0;
  }

  v28 = v27;
  *(a5 + 28) = v27;
  v29 = (v26 + v27 * -1.5) * 1023000.0;
  v30 = -0.5;
  if (v29 > 0.0)
  {
    v30 = 0.5;
  }

  v31 = v29 + v30;
  if (v31 <= 2147483650.0)
  {
    if (v31 >= -2147483650.0)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0x80000000;
    }
  }

  else
  {
    v32 = 0x7FFFFFFF;
  }

  *(a5 + 32) = v32;
  if (v28 < 0)
  {
    *(a5 + 28) = v28 + 403200;
  }

  v33 = *(a4 + 4);
  if (v33 >= 0x1B8)
  {
    if (v33 <= 0x247B5)
    {
      v34 = (v33 + 293) / 0x125;
    }

    else
    {
      LOWORD(v34) = 512;
    }
  }

  else
  {
    LOWORD(v34) = 2;
  }

  *(a5 + 26) = v34;
  if (v22 >= 0x13)
  {
    if (v22 <= 0x247B5)
    {
      v35 = (v22 + 18) / 0x12;
    }

    else
    {
      LOWORD(v35) = 8184;
    }
  }

  else
  {
    LOWORD(v35) = 1;
  }

  *(a5 + 24) = v35;
  return result;
}

uint64_t POSGen_inpPOS2mST(uint64_t a1, double *a2, uint64_t a3, double *a4)
{
  v29 = *MEMORY[0x29EDCA608];
  *(a4 + 2) = 9;
  TCU_ConvertOStimeToTTICKtime(a3, *a2, a4);
  memset(v28, 0, sizeof(v28));
  memset(v27, 0, sizeof(v27));
  VecSet_3x1(3, v28, a2[1], a2[2], a2[6]);
  InsUtil_Geo2ECEF_Iterative(v28, v27);
  Copy_Mat(3, v27, 6, a4 + 4);
  v8 = a2[3];
  if (v8 <= a2[4])
  {
    v8 = a2[4];
  }

  memset(v26, 0, sizeof(v26));
  VecSet_3x1(3, v26, v8, v8, a2[7]);
  Mult_Mat_scalar(2.0, 3, v26, 3, v26);
  Copy_Mat(3, v26, 6, a4 + 18);
  if (a2[3] <= 0.0 || a2[4] <= 0.0 || a2[7] <= 0.0)
  {
    v14 = g_FPE_LogSeverity;
    if ((g_FPE_LogSeverity & 4) != 0)
    {
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v16 = *(g_TCU + 8);
      }

      else
      {
        v16 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f POS: Bad meas rms at OsTime=%d (gpsTime=%0.3f)", "POSGen_inpPOS2mST", 99, v15, v16, *a2, *(a3 + 8));
      v14 = g_FPE_LogSeverity;
    }

    if ((v14 & 0x200) != 0)
    {
      LC_LOG_NMEA_GENERIC("%s,POSW1,%d,%d,%.3f");
    }

    goto LABEL_20;
  }

  if (!*a2)
  {
    v20 = g_FPE_LogSeverity;
    if ((g_FPE_LogSeverity & 4) != 0)
    {
      v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v22 = *(g_TCU + 8);
      }

      else
      {
        v22 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f POS: Bad meas with OS_time_ms=0 (gpsTime=%0.3f)", "POSGen_inpPOS2mST", 107, v21, v22, *(a3 + 8));
      v20 = g_FPE_LogSeverity;
    }

    if ((v20 & 0x200) != 0)
    {
      LC_LOG_NMEA_GENERIC("%s,POSW2,%d,%.3f");
    }

    goto LABEL_20;
  }

  v9 = g_FPE_LogSeverity;
  if ((*(a2 + 16) - 3) >= 2)
  {
    if ((g_FPE_LogSeverity & 4) != 0)
    {
      v23 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v24 = *(g_TCU + 8);
      }

      else
      {
        v24 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f POS: Low trust meas ignored (trust=%u,gpsTime=%0.3f)", "POSGen_inpPOS2mST", 115, v23, v24, *(a2 + 16), *(a3 + 8));
      v9 = g_FPE_LogSeverity;
    }

    if ((v9 & 0x200) != 0)
    {
      LC_LOG_NMEA_GENERIC("%s,POSW3,%d,%d,%d,%.3f");
    }

LABEL_20:
    v17 = 0;
    v25 = -1.0;
    v18 = -1.0;
    goto LABEL_21;
  }

  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v11 = *(g_TCU + 8);
      v12 = *a4 - *(g_TCU + 64);
      v13 = 604800.0;
      if (v12 >= 604800.0)
      {
        v13 = -604800.0;
      }

      else if (v12 >= 0.0)
      {
        goto LABEL_41;
      }

      v12 = v12 + v13;
    }

    else
    {
      v11 = 0.0;
      v12 = 0.0;
    }

LABEL_41:
    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: EPOS = {tow:%0.3f,LLH:[%0.6f %0.6f %0.1f],ErrEllip:[%0.1f %0.1f %d],src:%u}", "POSGen_inpPOS2mST", 124, v10, v11, v12, a2[1], a2[2], a2[6], a2[3], a2[4], *(a2 + 20), *(a2 + 17));
  }

  v25 = 0.0;
  v18 = distLLA(v28, (a1 + 8), &v25);
  v17 = 1;
LABEL_21:
  if ((g_FPE_LogSeverity & 0x200) != 0)
  {
    LC_LOG_NMEA_GENERIC("%s,POS,%.3f,%.1f,%.1f,%.1f,%.3f,%.1f,%.1f", "$PFPEX", *a4, a2[6], a2[3], a2[4], *(a3 + 40) - *a4, v18, v25);
  }

  return v17;
}

uint64_t POSGen_run(double *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = *MEMORY[0x29EDCA608];
  v11 = *(a3 + 87792);
  v12 = *(a4 + 128056);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  __dst = 0u;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v13 = *(a5 + 40);
  result = Cyc_Record_Count_Free(v12, 1u);
  if (result)
  {
    while (1)
    {
      result = Cyc_Record_IsEmpty(v11, a2);
      if (result)
      {
        break;
      }

      Cyc_Record_Read(v11, a2, &__dst);
      if (POSGen_inpPOS2mST(a1, &__dst, a5, &v23))
      {
        if (*&v23 >= *a1)
        {
          *a1 = v23;
          memset(v22, 0, sizeof(v22));
          v6 = v6 & 0xFFFFFFFF00000000 | 3;
          VecSet_3x1(v6, v22, *(&__dst + 1), *&v18, *&v20);
          v7 = v7 & 0xFFFFFFFF00000000 | 3;
          v5 = v5 & 0xFFFFFFFF00000000 | 3;
          Copy_Mat(v7, v22, v5, a1 + 2);
          Cyc_Record_Write(v12, &v23);
        }

        else if ((g_FPE_LogSeverity & 4) != 0)
        {
          v15 = mach_continuous_time();
          if (g_TCU)
          {
            v16 = *(g_TCU + 8);
          }

          else
          {
            v16 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f POS: ignoring measurement in the past. meas.time=%0.3f, prevTime=%0.3f (diff=%0.3f)", "POSGen_run", 202, (*&g_MacClockTicksToMsRelation * v15), v16, *&v23, *a1, *a1 - *&v23);
        }
      }

      result = Cyc_Record_Count_Free(v12, 1u);
      if (!result)
      {
        return result;
      }
    }

    DWORD2(v23) = 12;
    *&v23 = v13 + 0.001;
    *&v24 = 0x4008000000000000;
    if (v13 + 0.001 > *a1)
    {
      *a1 = v13 + 0.001;
      return Cyc_Record_Write(v12, &v23);
    }
  }

  return result;
}

uint64_t Gnm28_01HandlePeNvBackup(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_PE_NV_BACKUP_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm28_01HandlePeNvBackup");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 69, "Gnm28_01HandlePeNvBackup", 517);
    v11 = 0;
LABEL_13:
    LbsOsaTrace_WriteLog(0xBu, __str, v10, v11, 1);
    return 0;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Data\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 87, "Gnm28_01HandlePeNvBackup", 513);
    v11 = 2;
    goto LABEL_13;
  }

  v5 = *(a1 + 12);
  if (!*(a1 + 12))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, v5, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NVSize,0\n");
LABEL_18:
    v7 = v13;
    v8 = 2;
    goto LABEL_19;
  }

  if ((gnssOsa_storeBufferToNv(0, v4, v5) & 1) == 0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ReqWrite,%u\n", v16);
    goto LABEL_18;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Success NvSize,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm28_01HandlePeNvBackup", *(a1 + 12));
    v8 = 4;
LABEL_19:
    LbsOsaTrace_WriteLog(0xBu, __str, v7, v8, 1);
  }

LABEL_20:
  v14 = *(a1 + 16);
  if (v14)
  {
    free(v14);
  }

  *(a1 + 16) = 0;
  return 0;
}

uint64_t Gnm28_11RestorePeNv(int a1)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Restore PE NV initiated\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm28_11RestorePeNv");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("Gnm28_11RestorePeNv", 97, 1, 0x20uLL);
  if (!v4)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0);
    result = 0;
    if (!IsLoggingAllowed)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 87, "Gnm28_11RestorePeNv", 1537);
    LbsOsaTrace_WriteLog(0xBu, __str, v11, 2, 1);
    return 0;
  }

  v5 = v4;
  size = 0;
  if ((gnssOsa_getNvSize(0, &size) & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v13 = 1572;
LABEL_14:
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v12, "GNM", 87, "Gnm28_11RestorePeNv", v13);
      v15 = 2;
LABEL_17:
      LbsOsaTrace_WriteLog(0xBu, __str, v14, v15, 1);
    }

LABEL_18:
    free(v5);
    return 0;
  }

  if (!size)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Empty file\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 73, "Gnm28_11RestorePeNv");
      v15 = 4;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (size >= 0x10000)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm28_11RestorePeNv", 770);
      LbsOsaTrace_WriteLog(0xBu, __str, v7, 2, 1);
    }

    gnssOsa_clearNV(0);
    goto LABEL_18;
  }

  v17 = gnssOsa_Calloc("Gnm28_11RestorePeNv", 132, 1, size);
  *(v5 + 2) = v17;
  if (!v17)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      goto LABEL_18;
    }

    bzero(__str, 0x410uLL);
    v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v13 = 1537;
    goto LABEL_14;
  }

  Nv = gnssOsa_readNv(0, v17, size);
  v5[6] = Nv;
  if (size != Nv)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ReqRead,%zu,Read,%u\n", (*&g_MacClockTicksToMsRelation * v21), "GNM", 87, "Gnm28_11RestorePeNv", 1571, size, v5[6]);
      LbsOsaTrace_WriteLog(0xBu, __str, v22, 2, 1);
    }

    v23 = *(v5 + 2);
    if (v23)
    {
      free(v23);
    }

    goto LABEL_18;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_PE_NV_RESTORE_REQ =>GNCP NvSize,%u,SeqNum,%u\n", (*&g_MacClockTicksToMsRelation * v19), "GNM", 73, "Gnm28_11RestorePeNv", v5[6], a1);
    LbsOsaTrace_WriteLog(0xBu, __str, v20, 4, 1);
  }

  *(v5 + 24) = a1;
  AgpsSendFsmMsg(128, 134, 8787456, v5);
  return 1;
}

uint64_t Gnm28_12HandlePeNvRestoreNoAck(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_VAR_PE_NV_RESTORE_TIMER\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm28_12HandlePeNvRestoreNoAck");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 69, "Gnm28_12HandlePeNvRestoreNoAck", 517);
    v12 = 0;
LABEL_16:
    LbsOsaTrace_WriteLog(0xBu, __str, v11, v12, 1);
    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v5 = 78;
    if (g_Gnm_NVStoreCntxt)
    {
      v5 = 89;
    }

    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerStart,%u,TimerStatus,%c\n", v4, "GNM", 73, "Gnm28_12HandlePeNvRestoreNoAck", HIDWORD(g_Gnm_NVStoreCntxt), v5);
    LbsOsaTrace_WriteLog(0xBu, __str, v6, 4, 1);
  }

  if (g_Gnm_NVStoreCntxt == 1)
  {
    v7 = HIDWORD(g_Gnm_NVStoreCntxt);
    if ((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v7 >= 0xFA)
    {
      LOBYTE(g_Gnm_NVStoreCntxt) = 0;
      HIDWORD(g_Gnm_NVStoreCntxt) = 0;
      if (qword_2A19397B8)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Max PENvRestore attempts\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 87, "Gnm28_12HandlePeNvRestoreNoAck");
          LbsOsaTrace_WriteLog(0xBu, __str, v9, 2, 1);
        }

        LOBYTE(qword_2A19397B8) = 0;
        return 0;
      }

      LOBYTE(qword_2A19397B8) = 1;
      if (Gnm28_11RestorePeNv(1))
      {
        if (!AgpsFsmStartTimer(8400646, 0xFAu))
        {
          HIDWORD(g_Gnm_NVStoreCntxt) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          LOBYTE(g_Gnm_NVStoreCntxt) = 1;
          return 0;
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v14 = mach_continuous_time();
          v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 87, "Gnm28_12HandlePeNvRestoreNoAck", 1544);
          v12 = 2;
          goto LABEL_16;
        }
      }
    }
  }

  return 0;
}

uint64_t Gnm28_13HandlePeNvRestoreAck(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_PE_NV_RESTORE_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm28_13HandlePeNvRestoreAck");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = 517;
LABEL_17:
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v10, "GNM", 69, "Gnm28_13HandlePeNvRestoreAck", v11);
    v13 = 0;
LABEL_18:
    LbsOsaTrace_WriteLog(0xBu, __str, v12, v13, 1);
    return 0;
  }

  if (qword_2A19397B8 != *(a1 + 13))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = 1028;
    goto LABEL_17;
  }

  if (AgpsFsmStopTimer(8400646) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm28_13HandlePeNvRestoreAck", 1545);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 2, 1);
  }

  LOBYTE(g_Gnm_NVStoreCntxt) = 0;
  HIDWORD(g_Gnm_NVStoreCntxt) = 0;
  v6 = *(a1 + 12);
  if ((v6 - 2) >= 2)
  {
    if (v6 != 1)
    {
      if (!*(a1 + 12))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v7 = mach_continuous_time();
          v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Success Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm28_13HandlePeNvRestoreAck", *(a1 + 12));
          v9 = 4;
LABEL_39:
          LbsOsaTrace_WriteLog(0xBu, __str, v8, v9, 1);
        }

LABEL_40:
        LOBYTE(qword_2A19397B8) = 0;
        return 0;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v23 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ErrCode,%hhu\n", v23);
LABEL_31:
        v12 = v21;
        v13 = 2;
        goto LABEL_18;
      }

      return 0;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Fail Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v17), "GNM", 87, "Gnm28_13HandlePeNvRestoreAck", *(a1 + 12));
      LbsOsaTrace_WriteLog(0xBu, __str, v18, 2, 1);
    }

    v19 = gnssOsa_clearNV(0);
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0);
    if (v19)
    {
      if (!IsLoggingAllowed)
      {
        goto LABEL_40;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PeNv Deleted\n");
    }

    else
    {
      if (!IsLoggingAllowed)
      {
        goto LABEL_40;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    }

LABEL_38:
    v8 = v16;
    v9 = 2;
    goto LABEL_39;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Fail Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 87, "Gnm28_13HandlePeNvRestoreAck", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xBu, __str, v15, 2, 1);
  }

  if (qword_2A19397B8)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      goto LABEL_40;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Max PENvRestore attempts\n");
    goto LABEL_38;
  }

  LOBYTE(qword_2A19397B8) = 1;
  if (Gnm28_11RestorePeNv(1))
  {
    if (!AgpsFsmStartTimer(8400646, 0xFAu))
    {
      HIDWORD(g_Gnm_NVStoreCntxt) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      LOBYTE(g_Gnm_NVStoreCntxt) = 1;
      return 0;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
      goto LABEL_31;
    }
  }

  return 0;
}

double Gnm28_21InitRestorePeNv(void)
{
  v4 = *MEMORY[0x29EDCA608];
  LOBYTE(g_Gnm_NVStoreCntxt) = 0;
  HIDWORD(g_Gnm_NVStoreCntxt) = 0;
  LOBYTE(qword_2A19397B8) = 0;
  if (Gnm28_11RestorePeNv(0))
  {
    if (AgpsFsmStartTimer(8400646, 0xFAu))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v1 = mach_continuous_time();
        v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v1), "GNM", 87, "Gnm28_21InitRestorePeNv", 1544);
        LbsOsaTrace_WriteLog(0xBu, __str, v2, 2, 1);
      }
    }

    else
    {
      result = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      HIDWORD(g_Gnm_NVStoreCntxt) = result;
      LOBYTE(g_Gnm_NVStoreCntxt) = 1;
    }
  }

  return result;
}

BOOL GM_Reject_Rep_SV(_BOOL8 result, unsigned int a2, uint64_t a3)
{
  v5 = result;
  *&v26[188] = *MEMORY[0x29EDCA608];
  v6 = a2 - 1;
  if ((a2 - 1) >= 0)
  {
    v7 = (result + 36 * v6 + 12);
    v8 = a2 - 1;
    do
    {
      *&v25[4 * v8] = 0;
      result = Is_Legal(*(v7 - 3));
      if (result)
      {
        v9 = *(a3 + 4 * v8);
        if (v9 >= 10)
        {
          v10 = v9 + *(v7 - 8) + *(v7 - 6);
          v11 = *v7;
          if (v11 >= 0x2710)
          {
            v11 = 10000;
          }

          *&v25[4 * v8] = v11 + 1000 * v10;
        }
      }

      v7 -= 18;
    }

    while (v8-- > 0);
  }

  if (a2)
  {
    v13 = 0;
    v14 = v26;
    v15 = (a3 + 4);
    v16 = (v5 + 36);
    v17 = a2;
    while (1)
    {
      v18 = v5 + 36 * v13;
      v19 = *v18;
      result = Is_Legal(*v18);
      if (result && *(a3 + 4 * v13) >= 10 && v13 + 1 < v17)
      {
        break;
      }

LABEL_25:
      ++v13;
      --v6;
      ++v14;
      ++v15;
      v16 += 36;
      if (v13 == v17)
      {
        return result;
      }
    }

    v20 = *&v25[4 * v13];
    v21 = v16;
    v22 = v15;
    v23 = v14;
    v24 = v6;
    while (1)
    {
      if (*v21 == v19)
      {
        if (v19 == 2)
        {
          if (v21[3] != *(v18 + 3))
          {
            goto LABEL_24;
          }
        }

        else if (*v21 != v19)
        {
          goto LABEL_24;
        }

        if (*v22 >= 10)
        {
          if (v20 < *v23)
          {
            *(a3 + 4 * v13) = 3;
            goto LABEL_25;
          }

          *v22 = 3;
        }
      }

LABEL_24:
      ++v23;
      ++v22;
      v21 += 36;
      if (!--v24)
      {
        goto LABEL_25;
      }
    }
  }

  return result;
}

uint64_t Decode_GAL_INAV_GST(const unsigned __int16 *a1, unsigned int *a2, __int16 *a3)
{
  *a3 = 0;
  *a2 = 0;
  v3 = *a1;
  if ((v3 & 0xFC00) == 0x1400)
  {
    *a3 = (a1[5] >> 11) & 0xF01F | (32 * (a1[4] & 0x7F));
    v4 = (a1[5] & 0x7FF) << 9;
    v5 = a1[6] >> 7;
LABEL_6:
    *a2 = v4 | v5;
    return 1;
  }

  v6 = 0;
  if (v3 <= 0x3FF && (v3 & 0x300) == 0x200)
  {
    *a3 = a1[6] >> 4;
    v4 = (a1[6] & 0xF) << 16;
    v5 = a1[7];
    goto LABEL_6;
  }

  return v6;
}

uint64_t NK_SV_Meas_AP_Stats(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82[12] = *MEMORY[0x29EDCA608];
  v4 = a1 - 1;
  if ((a1 - 1) >= 3)
  {
    gn_report_assertion_failure(&unk_299781CFF);
    return 0;
  }

  v60 = qword_29972AB58[v4];
  v7 = 2 * v4;
  v8 = a4 + (5576 * v4);
  v9 = a3 + (24 * v4);
  v10 = (v9 + 10888);
  if (!*(a3 + 140) || !*(a3 + 11048) || (*(a3 + 233) & 1) != 0 || *v10 < 0.0 || *(v9 + 10896) < 0.0)
  {
    *v10 = 0.0;
    *(v9 + 10896) = 0;
  }

  v65 = v9 + 10888;
  v66 = a3 + (24 * v4);
  v11 = 0;
  v67 = 0;
  v69 = 0;
  v63 = (a4 + 24576);
  v64 = 0;
  v12 = a3 + 10982;
  *(v8 + 2824) = 0;
  v13 = v8 + 2960;
  v75 = v8 + 3008;
  v76 = v8 + 2808;
  v74 = a4 + 20032;
  v77 = v8 + 7616;
  v80 = v8 + 6848;
  v73 = v8 + 8000;
  v68 = a4 + (5576 * v4);
  v14 = v8 + 3056;
  v61 = a4 + 49;
  v62 = (v8 + 2840);
  v72 = a3 + 9992;
  v71 = a3 + 9944;
  v70 = a3 + 9896;
  *(v8 + 2840) = 0u;
  v15 = 0.0;
  v16 = 0.0;
  do
  {
    if (*(v13 + v11) != 1)
    {
      goto LABEL_37;
    }

    v81 = 0.0;
    v17 = (a2 + 4 * v11);
    NK_Obs_Equ_SV(a1, *(v75 + v11), *v17, v74 + 56 * v11, v82, *(a4 + 656));
    v19 = *(a3 + 20);
    v18 = *(a3 + 24);
    if (v19 == v18)
    {
LABEL_11:
      v20 = 2024;
      goto LABEL_32;
    }

    if (v19 <= 2)
    {
      if (v19)
      {
        if (v19 == 1)
        {
          if (!v18)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v20 = 2024;
          if (v19 != 2)
          {
            goto LABEL_32;
          }

          if (v18 <= 1)
          {
            goto LABEL_11;
          }
        }
      }
    }

    else if (v19 > 4)
    {
      if (v19 == 5)
      {
        if ((v18 & 0xFFFFFFFE) != 6)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v20 = 2024;
        if (v19 != 6)
        {
          goto LABEL_32;
        }

        if (v18 != 7)
        {
          goto LABEL_11;
        }
      }
    }

    else if (v19 == 3)
    {
      if (v18 <= 2)
      {
        goto LABEL_11;
      }
    }

    else if (v18 - 5 >= 3)
    {
      goto LABEL_11;
    }

    v20 = 2792;
LABEL_32:
    v21 = 0;
    v22 = 0.0;
    do
    {
      v22 = v22 + v82[v21] * *(a3 + 1400 + v21 * 8);
      ++v21;
    }

    while (v21 != 11);
    v23 = *(v76 + v20 + 8 * v11) - v22;
    *(v77 + 8 * v11) = v23;
    v24 = *(v80 + 8 * v11);
    invtst((a3 + 872), v82, 0xBu, v24, v23, 1.0e20, &v81);
    v25 = v81;
    if (v81 <= 0.0)
    {
      gn_report_assertion_failure("NK_SV_Meas_AP_Stats: -ve var");
      v24 = *(v80 + 8 * v11);
    }

    v26 = v24 + v24 - fabs(v25);
    *(v73 + 8 * v11) = v26;
    v27 = *(v14 + 4 * v11);
    if ((v27 - 1) >= 0x1D)
    {
      if (v27)
      {
        EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
      }

      else if (a1 == 2 || (*(v61 + v11) & 1) != 0)
      {
        v16 = v16 + *(v77 + 8 * v11) * *(v77 + 8 * v11) / v24;
        *(v68 + 2848) = v26 / v24 + *(v68 + 2848);
        v15 = v15 + 1.0 / v24;
        ++v69;
        v35 = *v17;
        if (v35 == 4)
        {
          ++BYTE4(v64);
        }

        else if (v35 == 2)
        {
          LOBYTE(v64) = v64 + 1;
        }

        else
        {
          ++v67;
        }
      }
    }

LABEL_37:
    v28 = *(v14 + 4 * v11);
    if ((v28 - 1) < 0x1D)
    {
      goto LABEL_38;
    }

    if (v28)
    {
      EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
LABEL_38:
      *(v13 + v11) = 0;
      ++*(v12 + v7);
      switch(a1)
      {
        case 3:
          v33 = *(v72 + v11);
          if (v33 == 255)
          {
            goto LABEL_48;
          }

          v30 = v33 + 1;
          v31 = v72;
          goto LABEL_47;
        case 2:
          v32 = *(v71 + v11);
          if (v32 == 255)
          {
            goto LABEL_48;
          }

          v30 = v32 + 1;
          v31 = v71;
          goto LABEL_47;
        case 1:
          v29 = *(v70 + v11);
          if (v29 != 255)
          {
            v30 = v29 + 1;
            v31 = v70;
LABEL_47:
            *(v31 + v11) = v30;
            goto LABEL_48;
          }

          break;
      }

      goto LABEL_48;
    }

    switch(a1)
    {
      case 3:
        v34 = v72;
        break;
      case 2:
        v34 = v71;
        break;
      case 1:
        v34 = v70;
        break;
      default:
        goto LABEL_48;
    }

    *(v34 + v11) = 0;
LABEL_48:
    ++v11;
  }

  while (v11 != 48);
  if (a1 == 3)
  {
    v63[209] = v67;
    v63[214] = v64;
    v63[219] = BYTE4(v64);
    v37 = v68;
    v39 = v65;
    v38 = v66;
    v36 = v69;
    v40 = a4;
  }

  else
  {
    v37 = v68;
    v39 = v65;
    v38 = v66;
    v36 = v69;
    v40 = a4;
    if (a1 == 2)
    {
      v63[208] = v67;
      v63[213] = v64;
      v63[218] = BYTE4(v64);
    }

    else if (a1 == 1)
    {
      v63[207] = v67;
      v63[212] = v64;
      v63[217] = BYTE4(v64);
    }
  }

  v41 = *(v37 + 2848);
  if (v41 < 1.0)
  {
    *v62 = 0;
    v42 = &qword_29972AB18;
    v43 = vld1q_dup_f64(v42);
    *&v43.f64[0] = qword_29972AB20[*v39 > 1.0];
    v44 = vmulq_f64(*v39, v43);
    *v39 = v44;
    if (v44.f64[1] < 1.0)
    {
      *v39 = 0;
      *(v39 + 8) = 0;
    }

    goto LABEL_101;
  }

  v45 = v16 * *(v37 + 2856) / v41;
  *(v37 + 2840) = v45;
  if (v45 > 3.02)
  {
    v46 = *v39;
    if (*v39 > 11.0)
    {
      v47 = v45;
      if (v46 > 1.0)
      {
        if (v45 > v46)
        {
          v46 = v45;
        }

        v47 = v46 * 0.1;
      }

      goto LABEL_84;
    }

    v48 = (v41 + 0.5);
    if (v48 <= 4)
    {
      v49 = v48 - 1;
    }

    else
    {
      v49 = 4;
    }

    v50 = F_dist[v49];
    v52 = v45 <= v50;
    v51 = fmin(v46, 4.0) * v50;
    v52 = v52 || v45 <= v51;
    if (!v52)
    {
      v47 = v45;
      if (v46 > 1.0)
      {
        v47 = v45 / v46;
      }

LABEL_84:
      if (*(v40 + 968) != 1 && v47 > *(v40 + v60))
      {
        *(v40 + v60) = v47;
      }
    }
  }

  if (*(a3 + 233))
  {
    *(v37 + 2848) = 0;
  }

  else
  {
    v53 = *(v38 + 10896) * 0.98;
    v54 = v45 / (v15 / v36);
    *(v37 + 2824) = v54;
    *(v38 + 10904) = v54 * v41 + *(v38 + 10904) * *(v38 + 10904) * v53;
    v55 = *(v37 + 2840) * *(v37 + 2848) + *v39 * v53;
    *v39 = v55;
    v56 = v53 + *(v37 + 2848);
    *(v38 + 10896) = v56;
    *v39 = v55 / v56;
    *(v37 + 2824) = sqrt(*(v37 + 2824));
    *(v38 + 10904) = sqrt(*(v38 + 10904) / *(v38 + 10896));
    v57 = *(v40 + v60);
    if (v57 > 1.0 && *v39 > 11.0)
    {
      v58 = *v39 / v57;
      *v39 = v58;
      if (v58 < 10.0)
      {
        *v39 = 0x4024000000000000;
      }
    }
  }

LABEL_101:
  *(v37 + 2832) = *(v38 + 10904);
  return v36;
}

uint64_t GN_ASBAS_Set_Eph_El(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_ASBAS_Set_Eph_El"))
  {
    return 0;
  }

  if (a1 <= 0x77)
  {
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: SVid = %d <%d, Out of range!");
    return 0;
  }

  if (a1 >= 0x9F)
  {
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: SVid = %d >%d, Out of range!");
    return 0;
  }

  if (*a3 >> 3 >= 0x2A3u)
  {
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: to = %d >=5400, Out of range!");
    return 0;
  }

  v6 = *(a3 + 2);
  if (v6 >= 0x10)
  {
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: URA = %d >15, Out of range!");
    return 0;
  }

  v7 = *(a3 + 1);
  if ((v7 - 2048) <= 0xFFFFEFFF)
  {
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: agf0 = %d <-2^11 or >=2^11, Out of range!");
    return 0;
  }

  v8 = *(a3 + 2);
  if (v8 != v8)
  {
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: agf1 = %d <-2^7 or >=2^7, Out of range!");
    return 0;
  }

  v9 = 0;
  v10 = 1;
  do
  {
    v11 = v10;
    if ((*&a3[2 * v9 + 6] - 536870913) < 0xBFFFFFFF)
    {
      EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: pos[%d] = %d <-2^29 or >=2^29, Out of range!");
      return 0;
    }

    v10 = 0;
    v9 = 1;
  }

  while ((v11 & 1) != 0);
  v12 = *(a3 + 5);
  if ((v12 - 16777217) < 0xFDFFFFFF)
  {
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: pos[2] = %d <-2^24 or >=2^24, Out of range!");
    return 0;
  }

  v15 = 0;
  v16 = 1;
  do
  {
    v17 = v16;
    if ((*&a3[2 * v15 + 12] - 65537) < 0xFFFDFFFF)
    {
      EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: vel[%d] = %d <-2^16 or >=2^16, Out of range!");
      return 0;
    }

    v16 = 0;
    v15 = 1;
  }

  while ((v17 & 1) != 0);
  v18 = *(a3 + 8);
  if ((v18 - 131073) < 0xFFFBFFFF)
  {
    EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: vel[2] = %d <-2^17 or >=2^17, Out of range!");
    return 0;
  }

  for (i = 0; i != 3; ++i)
  {
    if ((*&a3[2 * i + 18] - 513) < 0xFFFFFBFF)
    {
      EvCrt_v("GN_ASBAS_Set_Eph_El: FAILED: acc[%d] = %d <-2^9 or >=2^9, Out of range!");
      return 0;
    }
  }

  v20 = *(p_api + 48);
  if (*(v20 + 5) == 1 && *v20 >= 3)
  {
    v21 = *(v20 + 24) + 604800 * *(v20 + 16);
  }

  else
  {
    v21 = 0;
  }

  v24 = *a3;
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = *(a3 + 6);
  v29 = v12;
  v30 = *(a3 + 3);
  v31 = v18;
  v32 = *(a3 + 18);
  v33 = *(a3 + 11);
  if (*(a3 + 48))
  {
    v22 = 5;
  }

  else
  {
    v22 = 3;
  }

  v23[0] = v21;
  v23[1] = v22;
  v13 = SBAS_Set_StateTable(a1, a2, v23);
  if (v13)
  {
    Debug_Log_SBA_Eph(1, a1, a2, v23);
  }

  return v13;
}

double lsim01_01Init(void)
{
  v7 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 73, "lsim01_01Init");
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 4, 1);
  }

  v2 = gnssOsa_Calloc("lsim01_01Init", 87, 1, 0xCuLL);
  if (v2)
  {
    AgpsSendFsmMsg(131, 131, 8621056, v2);
    LODWORD(v2) = 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, v2))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim01_01Init");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  return result;
}

double lsim01_02DeInit(void)
{
  v7 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 73, "lsim01_02DeInit");
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 4, 1);
  }

  v2 = gnssOsa_Calloc("lsim01_02DeInit", 107, 1, 0xCuLL);
  if (v2)
  {
    AgpsSendFsmMsg(131, 131, 8621312, v2);
    LODWORD(v2) = 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, v2))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim01_02DeInit");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  return result;
}

void lsim01_05DestMissingHandler(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Msg,%x\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim01_05DestMissingHandler", *(a1 + 4));
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = *(a1 + 4);
  if (v4 > 8636162)
  {
    if (v4 > 8782594)
    {
      if (v4 > 8783106)
      {
        if (v4 != 8783107)
        {
          v5 = 8783619;
LABEL_27:
          if (v4 != v5)
          {
            goto LABEL_28;
          }

          goto LABEL_42;
        }
      }

      else if (v4 != 8782595 && v4 != 8782851)
      {
        goto LABEL_28;
      }

      v7 = *(a1 + 16);
      if (v7[1])
      {
        free(v7[1]);
        v7 = *(a1 + 16);
      }

LABEL_32:
      free(v7);
LABEL_33:
      *(a1 + 16) = 0;
      return;
    }

    if (v4 == 8636163)
    {
      goto LABEL_34;
    }

    if (v4 == 8636419)
    {
      v14 = *(a1 + 24);
      if (v14)
      {
        free(v14);
      }

      *(a1 + 24) = 0;
      v15 = *(a1 + 32);
      if (v15)
      {
        free(v15);
      }

      *(a1 + 32) = 0;
LABEL_50:
      v16 = *(a1 + 40);
      if (v16)
      {
        free(v16);
      }

      *(a1 + 40) = 0;
      return;
    }

    v6 = 8782339;
    goto LABEL_19;
  }

  if (v4 <= 8622594)
  {
    if (v4 == 8586243)
    {
      goto LABEL_20;
    }

    if (v4 == 8586755)
    {
      v12 = *(a1 + 16);
      if (v12)
      {
        free(v12);
      }

      *(a1 + 16) = 0;
      goto LABEL_42;
    }

    v6 = 8621827;
LABEL_19:
    if (v4 != v6)
    {
      goto LABEL_28;
    }

LABEL_20:
    v7 = *(a1 + 16);
    if (!v7)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v4 <= 8625154)
  {
    if (v4 != 8622595)
    {
      v5 = 8624643;
      goto LABEL_27;
    }

LABEL_42:
    v13 = *(a1 + 24);
    if (v13)
    {
      free(v13);
    }

    *(a1 + 24) = 0;
    return;
  }

  if (v4 != 8625155)
  {
    if (v4 != 8630787)
    {
LABEL_28:
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No handling required Msg,%x\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim01_05DestMissingHandler", *(a1 + 4));
        LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
      }

      return;
    }

    goto LABEL_50;
  }

LABEL_34:
  v10 = *(a1 + 24);
  if (v10)
  {
    free(v10);
  }

  *(a1 + 24) = 0;
  v11 = *(a1 + 32);
  if (v11)
  {
    free(v11);
  }

  *(a1 + 32) = 0;
}

uint64_t lsim01_11InitReq()
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 73, "lsim01_11InitReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_INIT_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 77, "lsim01_11InitReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 3, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim01_03InitRoutine");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  lsim12_00TimersInit();
  lsim11_01InitSessionMgmt();
  LOBYTE(g_LsimPltConfig) = 4;
  *(&g_LsimPltConfig + 2) = 5242944;
  HIWORD(g_LsimPltConfig) = 64;
  LOBYTE(qword_2A19267F6) = 6;
  *(&qword_2A19267F6 + 2) = 36765729;
  HIWORD(qword_2A19267F6) = 33;
  g_SimInfoDB = 0;
  byte_2A1920A82 = 0;
  unk_2A1920A83 = -1;
  lsim05_31InitSupl();
  lsim15_21InitMobileInfo();
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim01_03InitRoutine");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim01_11InitReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  return 0;
}

uint64_t lsim01_12DeInitReq()
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 73, "lsim01_12DeInitReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_DEINIT_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 77, "lsim01_12DeInitReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 3, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim01_04DeInitRoutine");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  g_GnsCellInfoCallback = 0;
  if (qword_2A1926810)
  {
    free(qword_2A1926810);
  }

  qword_2A1926810 = 0;
  lsim04_02CloseOtherCpNiSessions(255, 0);
  g_GnsCpCallback = 0;
  g_GnsEcallCallback = 0;
  g_LsimEcallOngoing = 0;
  lsim05_32DeInitSupl();
  g_SimInfoCallback = 0;
  lsim12_04TimersDeinit();
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim01_04DeInitRoutine");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim01_12DeInitReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  return 0;
}

uint64_t lsim01_13HandleCbInit(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim01_13HandleCbInit");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_CB_INIT_IND,Type,%u\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 77, "lsim01_13HandleCbInit", *(a1 + 12));
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 3, 1);
  }

  switch(*(a1 + 12))
  {
    case 1:
      lsim23_21EcallCbInit(*(a1 + 16));
      break;
    case 2:
      lsim04_05CpCbInit(*(a1 + 16));
      break;
    case 3:
      lsim05_45SuplCbInit(*(a1 + 16));
      break;
    case 4:
      lsim05_46PospCbInit(*(a1 + 16));
      break;
    case 5:
      lsim21_13PpduCbInit(*(a1 + 16));
      break;
    case 6:
      lsim09_41DcCbInit(*(a1 + 16));
      break;
    case 7:
      lsim22_03EaCbInit(*(a1 + 16));
      break;
    case 8:
      lsim25_01EeCbInit(*(a1 + 16));
      break;
    case 9:
      lsim17_04SiCbInit(*(a1 + 16));
      break;
    case 0xA:
      lsim15_23CiCbInit(*(a1 + 16));
      break;
    case 0xB:
      lsim07_02FtaCbInit(*(a1 + 16));
      break;
    case 0xC:
      lsim24_02SensCbInit(*(a1 + 16));
      break;
    case 0xD:
      lsim26_03XoCbInit(*(a1 + 16));
      break;
    default:
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CbType,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 87, "lsim01_13HandleCbInit", 515, *(a1 + 12));
        LbsOsaTrace_WriteLog(0xCu, __str, v7, 2, 1);
      }

      break;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim01_13HandleCbInit");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  return 0;
}

size_t G5K_Read_GNB_Meas(char **a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (*a1 != v3 && v4 == v2)
  {
    *a1 = v3;
    a1[1] = v3;
    v2 = v3;
    v4 = v3;
  }

  v6 = 15 * (a1[3] - v3) + (15 * (a1[3] - v3) < 0 ? 0xFuLL : 0);
  v7 = v6 >> 4;
  if (v4 >= v2)
  {
    v2 = a1[3];
  }

  else
  {
    LOWORD(v2) = v2 - 1;
  }

  v8 = v2 - v4;
  v9 = (v6 >> 4);
  if (v9 < v8)
  {
    v8 = v6 >> 4;
  }

  result = GncP02_16GetMEDataFrmBuf(v8, v4);
  v11 = &(*a1)[result];
  *a1 = v11;
  if (v11 >= a1[3])
  {
    v13 = a1[1];
    v12 = a1[2];
    if (v13 != v12)
    {
      *a1 = v12;
      v14 = ~v12 + v13;
      if (v9 < v14)
      {
        v14 = v7;
      }

      result = GncP02_16GetMEDataFrmBuf(v14, v12);
      v15 = &(*a1)[result];
      *a1 = v15;
      if (v15 >= a1[3])
      {
        *a1 = a1[2];
      }
    }
  }

  return result;
}

void G5K_ME_Decode_Meas(unsigned __int8 **a1, char *a2)
{
  v315 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 48);
  v4 = a1[1];
  if (v4 == *a1)
  {
    goto LABEL_357;
  }

  v6 = a2 + 11172;
  v302 = a2 + 428;
  v7 = a2 + 11160;
  v8 = a2 + 381;
  v9 = a2 + 1;
  v306 = a2 + 3392;
  v305 = a2 + 704;
  v304 = a2 + 540;
  v309 = a2 + 2;
  v310 = a2 + 403;
  v307 = a2 + 3;
  v303 = a2 + 8128;
  v311 = a2 + 402;
  v300 = a2 + 558;
  v301 = a2 + 11331;
  v299 = a2 + 8144;
  v298 = a2 + 8136;
  v297 = a2 + 8150;
  v296 = a2 + 8140;
  v293 = a2 + 6093;
  v294 = a2 + 5137;
  v292 = vdupq_n_s64(0x40F5180000000000uLL);
  v291 = vdupq_n_s64(0x4122750000000000uLL);
  __asm { FMOV            V0.2D, #0.125 }

  v295 = _Q0;
  while (1)
  {
    v16 = *v4;
    v14 = v4 + 1;
    v15 = v16;
    a1[1] = v14;
    if (v14 >= a1[3])
    {
      a1[1] = a1[2];
    }

    if (v3 < a2 || v3 >= v8)
    {
      EvLog("ME_Dec: Rec Buff out of bounds");
      a2[392] = 0;
      v3 = a2;
    }

    if (v15 != 123 && v15 != 36)
    {
      break;
    }

    a2[392] = 1;
    *a2 = v15;
    v3 = a2 + 1;
LABEL_11:
    v4 = a1[1];
    if (v4 == *a1)
    {
      goto LABEL_357;
    }
  }

  if (a2[392] != 1)
  {
    goto LABEL_11;
  }

  *v3++ = v15;
  if (v15 != 10)
  {
    goto LABEL_11;
  }

  *v3 = 0;
  if (a2[392] == 1 && STEU_Checksum_OK(a2))
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 1;
    v22 = 1;
    switch(*v9)
    {
      case 'A':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 7;
        goto LABEL_51;
      case 'B':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 12;
        goto LABEL_51;
      case 'C':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 8;
        goto LABEL_51;
      case 'D':
        goto LABEL_51;
      case 'E':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 16;
        goto LABEL_51;
      case 'F':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 6;
        goto LABEL_51;
      case 'G':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 5;
        goto LABEL_51;
      case 'H':
        if ((a2[403] & 1) != 0 || a2[406])
        {
          v26 = a2[405] - a2[406];
          v27 = *(a2 + 200) + a2[405] - a2[406];
          *(a2 + 200) = v27;
          v28 = *(a2 + 198) + 1;
          *(a2 + 198) = v28;
          EvLog_nd("ME_InComplete_Epoch_Check: Missed M & T", 3, 1, v26, v27, v28);
          *v310 = 0;
          bzero(v305, 0xA80uLL);
          for (i = 0; i != 1728; i += 36)
          {
            v30 = &v306[i];
            v30[32] = 0;
            *v30 = 0uLL;
            *(v30 + 1) = 0uLL;
          }

          for (j = 0; j != 160; j += 20)
          {
            v32 = &v304[j];
            *v32 = 0;
            *(v32 + 1) = 0;
            *(v32 + 15) = 0;
          }

          EvLog("ME_InComplete_Epoch_Check:  Flushing M");
        }

        v21 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 4;
        v17 = 1;
        goto LABEL_51;
      case 'I':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 21;
        goto LABEL_51;
      case 'J':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 17;
        goto LABEL_51;
      case 'K':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 11;
        goto LABEL_51;
      case 'L':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 20;
        goto LABEL_51;
      case 'M':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v20 = 0;
        v22 = 2;
        v19 = 1;
        goto LABEL_51;
      case 'N':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 10;
        goto LABEL_51;
      case 'O':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 14;
        goto LABEL_51;
      case 'R':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 15;
        goto LABEL_51;
      case 'S':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 9;
        goto LABEL_51;
      case 'T':
        v21 = 0;
        v17 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 3;
        v18 = 1;
        goto LABEL_51;
      case 'W':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 13;
        goto LABEL_51;
      case 'Y':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v22 = 18;
        goto LABEL_51;
      case 'Z':
        v21 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v22 = 19;
        v20 = 1;
LABEL_51:
        v308 = v7;
        v33.i32[1] = 0;
        memset(v314, 0, sizeof(v314));
        v34 = *a2;
        if (v34 != 123)
        {
          v35 = "ME_Decode: Incorrect 1st ch";
          goto LABEL_55;
        }

        v34 = *v9;
        if ((v34 - 123) <= 0xFFFFFFC5)
        {
          v35 = "ME_Decode: Incorrect ID";
LABEL_55:
          EvLog_d(v35, v34);
          goto LABEL_56;
        }

        v64 = v309;
        if (v21)
        {
          v34 = *v309;
          v64 = v307;
          if ((v34 - 91) <= 0xFFFFFFE5)
          {
            v35 = "ME_Decode: Incorrect {D Debug ID ";
            goto LABEL_55;
          }
        }

        v65 = *v64;
        if (v65 == 125)
        {
          v35 = "ME_Decode: Incorrect start";
          v34 = 125;
          goto LABEL_55;
        }

        v290 = v6;
        v66 = 0;
        LODWORD(v313) = 0;
        break;
      default:
        EvLog_d("ME_Get_Msg_Type: Unknown message type: ", *v9);
        goto LABEL_57;
    }

    do
    {
      v67 = 0;
      v68 = v66;
      while (1)
      {
        v69 = v67;
        if ((v65 - 112) <= 0xBFu)
        {
          v76 = v65;
          v77 = "ME_Decode: Illegal ch";
LABEL_138:
          EvLog_d(v77, v76);
          goto LABEL_139;
        }

        *(&v313 + v67) = v65 - 48;
        v65 = v64[v67 + 1];
        if (v65 == 125)
        {
          break;
        }

        ++v67;
        if (v69 == 3)
        {
          goto LABEL_126;
        }
      }

      if (v67 != 3)
      {
        v265 = v22;
        v267 = v18;
        v282 = v21;
        v277 = v20;
        v273 = v19;
        v270 = v17;
        gn_report_assertion_failure("ME_Decode: Input not N x 4 bytes");
        memset(&v313 + v69 + 1, 32, (2 - v69) + 1);
        v22 = v265;
        v18 = v267;
        v17 = v270;
        v19 = v273;
        v20 = v277;
        v21 = v282;
      }

LABEL_126:
      if (v68 >= 0x5D)
      {
        v6 = v290;
        if (v21)
        {
          EvLog_v("ME_Decode: Longer {D - Debug messages. Received  %d  Max %d bytes");
        }

        else
        {
          EvLog_v("ME_Decode: Input longer than buffer. Received  %d  Max %d bytes");
        }

        goto LABEL_56;
      }

      v64 += v69 + 1;
      v70 = BYTE1(v313);
      *(v314 + v68) = (BYTE1(v313) >> 4) + 4 * LOBYTE(v313);
      v71 = BYTE2(v313);
      *(v314 + v68 + 1) = (BYTE2(v313) >> 2) + 16 * v70;
      *(v314 + v68 + 2) = BYTE3(v313) + (v71 << 6);
      v66 = v68 + 3;
      v65 = *v64;
    }

    while (v65 != 125);
    v72 = (v22 - 1);
    if (v68 == 12)
    {
      v73 = v17;
    }

    else
    {
      v73 = 0;
    }

    if (v73 == 1)
    {
      *(&v314[1] + 3) = 0;
      *(v314 + 15) = 0;
      LODWORD(v66) = 21;
      goto LABEL_133;
    }

    if (v18)
    {
      v78 = v68 - 12;
      if ((v68 - 12) > 9)
      {
LABEL_133:
        v6 = v290;
      }

      else
      {
        v6 = v290;
        if ((0x249u >> v78))
        {
          v79 = dword_29972ABC4[v78];
          v80 = dword_29972ABEC[v78];
          v81 = v79 + G5K_CompMsgSize[v72];
          if (v81)
          {
            v82 = v81 + v80;
            if (v81 + v80 <= 0x60)
            {
              do
              {
                *(v314 + v80++) = 0;
                --v81;
              }

              while (v81);
              LODWORD(v66) = v82;
              v72 = (v22 - 1);
              goto LABEL_150;
            }

            LODWORD(v66) = v80;
            v6 = v290;
          }

          else
          {
            LODWORD(v66) = v80;
          }
        }
      }

      goto LABEL_134;
    }

LABEL_150:
    v6 = v290;
    if (v19)
    {
      switch(v66)
      {
        case '6':
          v83 = -54;
          break;
        case 'E':
          LODWORD(v66) = 68;
          v83 = -68;
          break;
        case 'B':
          LODWORD(v66) = 64;
          v83 = -64;
          break;
        default:
          goto LABEL_134;
      }

      v87 = v83 + G5K_CompMsgSize[v72];
      if (v87)
      {
        v88 = v87 + v66;
        if ((v87 + v66) <= 0x60)
        {
          do
          {
            *(v314 + v66) = 0;
            LODWORD(v66) = v66 + 1;
            --v87;
          }

          while (v87);
          LODWORD(v66) = v88;
          goto LABEL_166;
        }
      }

LABEL_134:
      v74 = G5K_CompMsgSize[v72];
      if (v66 != v74)
      {
        v75 = G5K_CompMsgType[v72];
        if (v66 < v74)
        {
          EvCrt_v("ME_Decode: ERROR: {%c too short, %d < %d ", v75, v66, G5K_CompMsgSize[v72]);
          goto LABEL_56;
        }

        v84 = v66;
        v85 = v72;
        EvCrt_v("ME_Decode: Warning: {%c too long, %d < %d ", v75, v66, G5K_CompMsgSize[v72]);
        v72 = v85;
        LODWORD(v66) = v84;
      }

      if (v66)
      {
        switch(v72)
        {
          case 1:
            v86 = LOBYTE(v314[0]);
            ++a2[406];
            if (v86 >= 0x30)
            {
              EvCrt_v("ME_dec_M: Warning: Unsupported channel index %d >= %d");
              goto LABEL_139;
            }

            v178 = BYTE1(v314[0]) >> 4;
            v179 = BYTE1(v314[0]) & 0xF;
            v312 = 0;
            v287 = BYTE2(v314[0]);
            v180 = Decode_SVid_STE(BYTE2(v314[0]), v178, &v312);
            v181 = v312;
            v182 = v179;
            if (v179 == 15 && !v312 && !v180)
            {
              goto LABEL_139;
            }

            if (!(v312 | v180))
            {
              EvLog_v("ME_dec_M: Not Supported: SVID %d Const %d Sig %d");
              goto LABEL_139;
            }

            if (v312)
            {
              if (v179 == 15)
              {
LABEL_344:
                EvLog_v("ME_dec_M: Illegal STE SV:  ID %d  Const %d  Sig %d", v287, v178, v179);
                v230 = &v305[56 * v86];
                *(v230 + 6) = 0;
                *(v230 + 1) = 0u;
                *(v230 + 2) = 0u;
                *v230 = 0u;
                v231 = &v306[36 * v86];
                v231[32] = 0;
                *v231 = 0u;
                *(v231 + 1) = 0u;
                goto LABEL_139;
              }
            }

            else if (v179 != 15 || v180)
            {
              goto LABEL_344;
            }

            v269 = *(&xmmword_2A1926940 + 1);
            v211 = &v305[56 * v86];
            *(v211 + 6) = 0;
            *(v211 + 1) = 0u;
            *(v211 + 2) = 0u;
            v212 = &v306[36 * v86];
            *v211 = 0u;
            *v212 = v181;
            v212[1] = v182;
            if (v181 == 2)
            {
              v213 = 0;
            }

            else
            {
              v213 = v180;
            }

            if (v181 == 2)
            {
              v214 = v180;
            }

            else
            {
              v214 = 0;
            }

            v212[2] = v213;
            v212[3] = v214;
            v215 = vmovl_u8(*(v314 + 3)).u64[0];
            v216 = vrev32_s16(v215);
            v216.i32[0] = v215.i32[0];
            *(v212 + 1) = vuzp1_s8(v216, v215).u32[0];
            *(v212 + 4) = *(v314 + 7);
            v217 = HIBYTE(v314[0]);
            v218 = v314[1];
            v281 = DWORD1(v314[1]);
            *(v212 + 8) = WORD5(v314[1]);
            v219 = *(v314 + 9);
            v220 = *(v314 + 13);
            v289 = WORD4(v314[1]);
            *(v212 + 5) = HIWORD(v314[1]);
            *(v212 + 3) = v314[2];
            v211[38] = BYTE6(v314[2]);
            *(v211 + 39) = *(&v314[2] + 7);
            *(v211 + 34) = *(&v314[2] + 9);
            v211[41] = BYTE13(v314[2]);
            v221 = BYTE6(v314[3]);
            v212[22] = BYTE7(v314[3]);
            *(v212 + 10) = WORD4(v314[3]);
            *(v211 + 7) = *(&v314[3] + 10);
            *(v211 + 16) = HIWORD(v314[3]);
            v276 = v314[4];
            v212[23] = BYTE4(v314[4]);
            *(v212 + 3) = *(&v314[4] + 5);
            v212[32] = BYTE13(v314[4]);
            v222 = v220 | (v217 << 16);
            v212[18] = v221 >> 4;
            v212[19] = v221 & 0xF;
            v313 = 0.0;
            if (!(v219 | v222))
            {
              *v211 = 0;
              *(v211 + 4) = 0;
              goto LABEL_353;
            }

            v223 = v219 * 0.001 + vcvtd_n_f64_u32(v222, 0x18uLL) * 0.001;
            v272 = v223;
            *(v211 + 6) = v223;
            if (v181 == 2)
            {
              UTC_Cor = API_Get_UTC_Cor(1, &v313);
              if (v313 <= 0.0)
              {
                v225 = -0.5;
              }

              else
              {
                v225 = 0.5;
              }

              v226 = (v313 + v225);
              if (v313 + v225 < -2147483650.0)
              {
                v226 = 0x80000000;
              }

              if (v313 + v225 > 2147483650.0)
              {
                v226 = 0x7FFFFFFF;
              }

              *v308 = UTC_Cor;
              v313 = v226;
              v308[1] = v226;
              v227.f64[0] = *(v211 + 6);
              v227.f64[1] = v272 + -10800.0 + v226;
              v228 = vaddq_f64(v227, vdupq_lane_s64(COERCE__INT64(*(v269 + 8 * v212[3] + 1208) * 0.00000000333564095), 0));
              v229 = v292;
LABEL_348:
              v233 = vmlsq_f64(v228, v229, vrndmq_f64(vdivq_f64(v228, v229)));
              *(v211 + 6) = *&v233.f64[0];
              v272 = v233.f64[1];
            }

            else if (v181 == 4)
            {
              v232.f64[0] = v223;
              v232.f64[1] = v223 + 14.0;
              v228 = vaddq_f64(v232, vdupq_lane_s64(COERCE__INT64(*(v269 + 1264) * 0.00000000333564095), 0));
              v229 = v291;
              goto LABEL_348;
            }

            v234 = (v272 * 0.666666667);
            v235 = v272 + v234 * -1.5;
            v236 = (v235 * 1000.0);
            v237 = v235 + v236 * -0.001;
            v238 = (v237 * 1023000.0);
            v239 = (v237 + v238 * -0.000000977517107) * 1023000.0 * 10000.0;
            *v211 = v234;
            *(v211 + 1) = v238 - v236 + (v236 << 10);
            *(v211 + 4) = (109951163 * (v239 << 12)) >> 36;
            if (v234 <= 403199 && v236 <= 0x5DB && v238 <= 0x3FE && v239 >> 4 < 0x271)
            {
LABEL_353:
              *(v211 + 3) = ((v218 / 256) * 5.25503547);
              *(v211 + 4) = ((v276 / 256) * 5.25503547);
              v240 = v281 * 5.25503547 + vcvtd_n_f64_u32(v289, 0x10uLL) * 5.25503547;
              v241 = v240 + (v240 >> 31);
              *(v211 + 6) = v241;
              *(v211 + 10) = vcvtd_n_s64_f64(v240 - v241, 0x10uLL);
              goto LABEL_139;
            }

            EvLog_nd("ME_dec_M: Code TOT out of range ", 4, v22, v234, v236, v238, v239);
            goto LABEL_139;
          case 2:
            v119 = v314[0];
            v120 = DWORD1(v314[0]);
            *(a2 + 112) = v314[0];
            *(a2 + 113) = v120;
            *(a2 + 114) = WORD4(v314[0]);
            *(a2 + 115) = 8 * *(v314 + 10);
            v121 = BYTE14(v314[0]);
            if (BYTE14(v314[0]) > 5u)
            {
              v121 = -1;
            }

            a2[464] = v121;
            v279 = *(v314 + 15);
            v275 = BYTE1(v314[1]);
            v271 = WORD1(v314[1]);
            v284 = BYTE4(v314[1]);
            v122 = SBYTE5(v314[1]);
            v266 = WORD4(v314[1]);
            v268 = WORD3(v314[1]);
            v263 = WORD6(v314[1]);
            v264 = WORD5(v314[1]);
            v261 = v314[2];
            v262 = HIWORD(v314[1]);
            v259 = WORD2(v314[2]);
            v260 = WORD1(v314[2]);
            v255 = BYTE6(v314[2]);
            v254 = BYTE7(v314[2]);
            v250 = BYTE10(v314[2]);
            v251 = BYTE9(v314[2]);
            v257 = WORD6(v314[2]);
            v258 = BYTE8(v314[2]);
            v244 = HIBYTE(v314[2]);
            v245 = BYTE14(v314[2]);
            v123 = BYTE1(v314[3]);
            v124 = BYTE2(v314[3]);
            v242 = BYTE3(v314[3]);
            v243 = LOBYTE(v314[3]);
            v256 = WORD2(v314[3]);
            v253 = BYTE6(v314[3]);
            v252 = *(&v314[3] + 7);
            v248 = *(&v314[3] + 9);
            v249 = BYTE11(v314[2]);
            v246 = *(&v314[3] + 13);
            v247 = *(&v314[3] + 11);
            if (a2[403] != 1 || v119 != *(a2 + 128) || (LODWORD(v125) = *(a2 + 129), !v125))
            {
              v125 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            }

            *(a2 + 117) = v125;
            *(a2 + 124) = 0;
            a2[500] = 0;
            a2[402] = 1;
            v126 = a2[464];
            if (v126 != 255 && (a2[465] & 1) == 0)
            {
              API_Set_Inter_Chan_Bias_Model(*(a2 + 236), v126);
              a2[465] = 1;
            }

            v127.f64[0] = (((v251 << 8) | (v250 << 16) | (v249 << 24)) >> 8);
            v128.f64[0] = v259;
            v129 = *(p_api + 72);
            *(v129 + 80) = v275;
            *(v129 + 88) = vcvtd_n_f64_s32(v268, 8uLL);
            *(v129 + 96) = vcvtd_n_f64_s32(v266, 8uLL);
            *(v129 + 104) = vcvtd_n_f64_s32(v264, 8uLL);
            *(v129 + 112) = vcvtd_n_f64_s32(v263, 8uLL);
            *(v129 + 120) = vcvtd_n_f64_s32(v271, 8uLL);
            *(v129 + 128) = vcvtd_n_f64_s32(v262, 8uLL);
            *(v129 + 136) = vcvtd_n_f64_s32(v261, 8uLL);
            *(v129 + 144) = vcvtd_n_f64_s32(v260, 8uLL);
            v128.f64[1] = (((v255 << 8) | (v254 << 16) | (v258 << 24)) >> 8);
            *(v129 + 152) = vmulq_f64(v128, xmmword_29972AB70);
            v127.f64[1] = v257;
            *(v129 + 168) = vmulq_f64(v127, v295);
            *(v129 + 184) = vcvtd_n_f64_s32(((v245 << 8) | (v244 << 16) | (v243 << 24)) >> 8, 3uLL);
            *(v129 + 192) = vcvtd_n_f64_s32(((v123 << 8) | (v124 << 16) | (v242 << 24)) >> 8, 3uLL);
            API_Set_TSX_ClkCorr_Params(vcvtd_n_f64_s32(v256, 3uLL), vcvtd_n_f64_s32(v253, 3uLL), v279);
            v130 = *(p_api + 72);
            *(v130 + 200) = vcvtd_n_f64_s32(v252, 3uLL);
            *(v130 + 208) = vcvtd_n_f64_s32(v248, 3uLL);
            *(v130 + 216) = vcvtd_n_f64_s32(v247, 3uLL);
            *(v130 + 224) = vcvtd_n_f64_s32(v246, 3uLL);
            v131 = v284;
            if (v122 <= 0)
            {
              v131 = 0;
            }

            *(v130 + 250) = v131;
            *(v130 + 251) = v122 & ~(v122 >> 31);
            goto LABEL_139;
          case 3:
            a2[405] = v314[0];
            v112 = *(v314 + 1);
            *(a2 + 128) = *(v314 + 1);
            *(a2 + 260) = *(v314 + 5);
            *(a2 + 262) = *(v314 + 7);
            a2[526] = BYTE9(v314[0]);
            *(a2 + 261) = WORD5(v314[0]);
            *(a2 + 527) = WORD6(v314[0]);
            v33.i32[0] = *(v314 + 14);
            *(v310 + 126) = vrshrn_n_s16(vmovl_u8(v33), 4uLL).u32[0];
            v113 = g_GncPMeData;
            *(a2 + 129) = g_GncPMeData;
            if (!v113)
            {
              *(a2 + 129) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v112 = *(a2 + 128);
            }

            TM_FSP_OS_Time_ms_for_TTick = API_Get_TM_FSP_OS_Time_ms_for_TTick(v112);
            v115 = *(a2 + 129);
            if (TM_FSP_OS_Time_ms_for_TTick)
            {
              v116 = TM_FSP_OS_Time_ms_for_TTick;
              v117 = TM_FSP_OS_Time_ms_for_TTick - v115 >= 0 ? TM_FSP_OS_Time_ms_for_TTick - v115 : v115 - TM_FSP_OS_Time_ms_for_TTick;
              if (v117 >> 3 <= 0x270)
              {
                EvLog_v("TM_FSP: Replacing %u with %u delta %d", v115, TM_FSP_OS_Time_ms_for_TTick, TM_FSP_OS_Time_ms_for_TTick - v115);
                *(a2 + 129) = v116;
                v115 = v116;
              }
            }

            a2[403] = 1;
            *(a2 + 2791) = v115;
            goto LABEL_139;
          case 4:
            v146 = 0;
            v147 = v296;
            while (v303[56 * v146 + 52])
            {
              ++v146;
              v147 += 14;
              if (v146 == 48)
              {
                v206 = "G5K_ME_dec_G: No empty slots!";
                goto LABEL_306;
              }
            }

            LODWORD(v313) = 0;
            v159 = v314[0] & 0xF;
            v160 = Decode_SVid_STE(BYTE1(v314[0]), LOBYTE(v314[0]) >> 4, &v313);
            if ((LODWORD(v313) & 0xFFFFFFFB) != 1)
            {
              EvLog_v("ME_dec_G: Illegal GPS/QZSS STE SV:  ID %d  Const %d  Sig %d");
              goto LABEL_139;
            }

            v161 = &v303[56 * v146];
            *v161 = LOBYTE(v313);
            v161[1] = v159;
            v161[2] = v160;
            v161[3] = 0;
            if (v159)
            {
              v77 = "ME_dec_G: Illegal GPS/QZSS Signal ";
              v76 = v159;
              goto LABEL_138;
            }

            v207 = 0;
            v208 = 0;
            v161[5] = v160;
            v209 = WORD2(v314[0]);
            *(v161 + 4) = WORD2(v314[0]);
            v210 = v314 + 3;
            do
            {
              *v147++ = *v210 | (*(v210 + 2) << 16);
              v208 += ((v209 >> v207++) & 1) == 0;
              v210 = (v210 + 3);
            }

            while (v207 != 10);
            v161[6] = v208;
            v161[4] = 1;
            ++a2[410];
            goto LABEL_324;
          case 5:
            v148 = v303;
            v149 = 48;
            while (v148[52])
            {
              v148 += 56;
              if (!--v149)
              {
                v206 = "ME_dec_F: No empty slots!";
                goto LABEL_306;
              }
            }

            LODWORD(v313) = 0;
            v162 = v314[0] & 0xF;
            v163 = Decode_SVid_STE(BYTE1(v314[0]), LOBYTE(v314[0]) >> 4, &v313);
            if (LODWORD(v313) == 2)
            {
              *v148 = 2;
              v148[1] = v162;
              v148[2] = 0;
              v148[3] = v163;
              v148[5] = v163;
              _ZF = BYTE2(v314[0]) == 0;
              v148[6] = BYTE2(v314[0]) != 0;
              v164 = BYTE3(v314[0]);
              if (_ZF)
              {
                v164 = -1;
              }

              v148[7] = v164;
              *(v148 + 1) = *(v314 + 5);
              *(v148 + 4) = *(v314 + 13);
              v148[4] = 1;
              ++a2[414];
              v148[52] = 1;
            }

            else
            {
              EvLog_v("ME_dec_F: Illegal F STE SV:  ID %d  Const %d  Sig %d");
            }

            goto LABEL_139;
          case 6:
            v132 = 0;
            v133 = v297;
            v134 = v298;
            while (v303[56 * v132 + 52])
            {
              ++v132;
              v134 += 56;
              v133 += 56;
              if (v132 == 48)
              {
                v206 = "ME_dec_A: No empty slots!";
                goto LABEL_306;
              }
            }

            LODWORD(v313) = 0;
            v285 = v314[0] & 0xF;
            v154 = Decode_SVid_STE(BYTE1(v314[0]), LOBYTE(v314[0]) >> 4, &v313);
            if (LODWORD(v313) != 3)
            {
              EvLog_v("G5K_ME_dec_A: Illegal GAL STE SV:  ID %d  Const %d  Sig %d");
              goto LABEL_139;
            }

            v155 = &v303[56 * v132];
            *v155 = 3;
            v155[1] = v285;
            v155[2] = v154;
            v155[3] = 0;
            if ((v285 | 2) != 0xA)
            {
              v77 = "ME_dec_A: Illegal GAL Signal ";
              v76 = v285;
              goto LABEL_138;
            }

            v155[5] = v154;
            v155[7] = BYTE2(v314[0]);
            v155[6] = BYTE3(v314[0]) != 0;
            v156 = 7;
            v157 = v314 + 2;
            do
            {
              v158 = *v157++;
              *v134 = v158;
              v134 += 2;
              --v156;
            }

            while (v156);
            do
            {
              *v133 = *(v157 + v156);
              v133 += 2;
              v156 += 2;
            }

            while (v156 != 14);
            v155[4] = 1;
            ++a2[418];
            v155[52] = 1;
            goto LABEL_139;
          case 7:
            v152 = 0;
            v153 = v299;
            while (v303[56 * v152 + 52])
            {
              ++v152;
              v153 += 14;
              if (v152 == 48)
              {
                v206 = "ME_dec_C: No empty slots!";
                goto LABEL_306;
              }
            }

            LODWORD(v313) = 0;
            v286 = v314[0] & 0xF;
            v171 = Decode_SVid_STE(BYTE1(v314[0]), LOBYTE(v314[0]) >> 4, &v313);
            if (LODWORD(v313) == 4)
            {
              v161 = &v303[56 * v152];
              *v161 = 4;
              v161[1] = v286;
              v161[2] = v171;
              v161[3] = 0;
              v161[5] = v171;
              v172 = BYTE4(v314[0]);
              v173 = BYTE4(v314[0]) | (BYTE5(v314[0]) << 8);
              *(v161 + 4) = BYTE4(v314[0]) | (BYTE5(v314[0]) << 8);
              *(v161 + 3) = *(v314 + 6);
              v174 = (v172 & 1) == 0;
              v175 = -9;
              v176 = v314 + 5;
              do
              {
                *v153++ = *v176 | (*(v176 + 2) << 16);
                v174 += ((v173 >> (v175 + 10)) & 1) == 0;
                v176 = (v176 + 3);
              }

              while (!__CFADD__(v175++, 1));
              v161[6] = v174;
              v161[4] = 1;
              ++a2[422];
LABEL_324:
              v161[52] = 1;
            }

            else
            {
              EvLog_v("ME_dec_C: Illegal BDS STE SV:  ID %d  Const %d  Sig %d");
            }

            goto LABEL_139;
          case 8:
            break;
          case 9:
            v118 = *(v314 + 2);
            if ((v314[0] & 0xD0) == 0x10)
            {
              if ((v314[0] & 0xF) == 0)
              {
                a2[409] = BYTE1(v314[0]);
                *(a2 + 2704) = v118;
                a2[408] = 1;
              }

              goto LABEL_320;
            }

            v177 = LOBYTE(v314[0]) >> 4;
            if (LOBYTE(v314[0]) >> 4 > 4u)
            {
              if (v177 == 5)
              {
                a2[417] = BYTE1(v314[0]);
                *(a2 + 2706) = v118;
                a2[416] = 1;
LABEL_320:
                a2[407] = 1;
                goto LABEL_139;
              }

              if (v177 == 6)
              {
                a2[421] = BYTE1(v314[0]);
                *(a2 + 2707) = v118;
                a2[420] = 1;
                goto LABEL_320;
              }
            }

            else
            {
              if (v177 == 2)
              {
                goto LABEL_320;
              }

              if (v177 == 4)
              {
                a2[413] = BYTE1(v314[0]);
                *(a2 + 2705) = v118;
                a2[412] = 1;
                goto LABEL_320;
              }
            }

            EvLog_d("ME_dec_N: Illegal Constell ", v177);
            goto LABEL_320;
          case 10:
            v150 = v300;
            v151 = 8;
            while (*v150)
            {
              v150 += 20;
              if (!--v151)
              {
                v206 = "ME_dec_K: No free slots!";
                goto LABEL_306;
              }
            }

            LODWORD(v313) = 0;
            *(v150 - 18) = v314[0];
            v165 = BYTE1(v314[0]) & 0xF;
            v166 = Decode_SVid_STE(BYTE2(v314[0]), BYTE1(v314[0]) >> 4, &v313);
            v167 = LODWORD(v313);
            if (LODWORD(v313))
            {
              *(v150 - 14) = LOBYTE(v313);
              *(v150 - 13) = v165;
              v168 = v167 == 2;
              if (v167 == 2)
              {
                v169 = 0;
              }

              else
              {
                v169 = v166;
              }

              if (v168)
              {
                v170 = v166;
              }

              else
              {
                v170 = 0;
              }

              *(v150 - 12) = v169;
              *(v150 - 11) = v170;
              *(v150 - 10) = *(v314 + 3);
              *(v150 - 2) = BYTE7(v314[0]);
              *(v150 - 6) = DWORD2(v314[0]);
              *(v150 - 1) = BYTE12(v314[0]);
              *v150 = 1;
              a2[404] = 1;
            }

            else
            {
              EvLog_v("ME_dec_K: Illegal STE SV:  ID %d  Const %d  Sig %d");
            }

            goto LABEL_139;
          case 11:
            *(a2 + 241) = v314[0];
            *(a2 + 236) = WORD1(v314[0]);
            *(v302 + 7) = *(v314 + 4);
            *(a2 + 246) = WORD6(v314[0]);
            a2[494] = BYTE14(v314[0]);
            *(a2 + 119) = *(v314 + 15);
            *(a2 + 240) = *(&v314[1] + 3);
            ++a2[500];
            *(a2 + 124) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            break;
          case 12:
            *(a2 + 109) = v314[0];
            a2[440] = BYTE4(v314[0]);
            *(a2 + 111) = *(v314 + 5);
            break;
          case 13:
            *v302 = *&v314[0];
            a2[424] = 1;
            break;
          case 14:
            v111 = "ME_dec_R: {R not supported";
            goto LABEL_211;
          case 15:
            v111 = "ME_dec_E:  {E not supported";
LABEL_211:
            EvLog(v111);
            break;
          case 16:
            *v6 = v314[0];
            v6[4] = BYTE4(v314[0]);
            v6[5] = 1;
            break;
          case 17:
            *(v6 + 4) = v314[0];
            *(v6 + 10) = *(v314 + 2);
            *(v6 + 14) = *(v314 + 6);
            *(v6 + 30) = *(&v314[1] + 6);
            *(v6 + 46) = *(&v314[2] + 6);
            *(v6 + 27) = HIWORD(v314[2]);
            *(v6 + 14) = v314[3];
            *(v6 + 30) = WORD2(v314[3]);
            *(v6 + 62) = *(&v314[3] + 6);
            *(a2 + 2811) = *(&v314[3] + 14);
            v6[76] = 1;
            break;
          case 18:
            *(v6 + 40) = v314[0];
            *(v6 + 82) = *(v314 + 2);
            v6[86] = BYTE6(v314[0]);
            *(v6 + 44) = *(v314 + 7);
            v6[90] = BYTE9(v314[0]);
            v6[91] = 1;
            break;
          case 19:
            *(v6 + 46) = v314[0];
            *(v6 + 94) = *(v314 + 2);
            *(v6 + 102) = *(v314 + 10);
            v6[106] = 1;
            break;
          case 20:
            *(a2 + 1410) = *&v314[0];
            *(v6 + 58) = WORD4(v314[0]);
            *(v6 + 118) = *(v314 + 10);
            HIDWORD(v135) = *(&v314[1] + 2);
            LODWORD(v135) = *(&v314[1] + 2);
            *(v6 + 122) = *(v314 + 14);
            *(v6 + 126) = v135 >> 16;
            *(v6 + 130) = *(&v314[1] + 6);
            v136 = v301;
            for (k = 26; k != 92; k += 22)
            {
              v138 = *(v314 + k + 4);
              v139 = *(v314 + k + 5);
              v140 = *(v314 + k + 11);
              v141 = *(v314 + k + 13);
              v142 = *(v314 + k + 14);
              v143 = *(&v314[1] + k);
              v144 = *(&v314[1] + k + 2);
              v145 = *(&v314[1] + k + 3);
              v22 = *(&v314[1] + k + 5);
              *(v136 - 23) = *(v314 + k);
              *(v136 - 19) = v138;
              *(v136 - 17) = v139;
              *(v136 - 15) = *(v314 + k + 7);
              *(v136 - 11) = v140;
              *(v136 - 9) = v143;
              *(v136 - 7) = v144;
              *(v136 - 6) = v141;
              *(v136 - 5) = v142;
              *(v136 - 3) = v145;
              *(v136 - 1) = v22;
              v136 += 24;
            }

            v6 = v290;
            v290[208] = 1;
            break;
          default:
            goto LABEL_176;
        }
      }
    }

    else
    {
LABEL_166:
      if (v20)
      {
        if (v66 == 6)
        {
          v89 = G5K_CompMsgSize[v72] - 4;
          LODWORD(v66) = 4;
        }

        else
        {
          v89 = 0;
        }

        if (v89 + v66 <= 0x60)
        {
          v90 = v66;
          v91 = v72;
          bzero(v314 + v66, v89);
          v72 = v91;
          LODWORD(v66) = v90;
        }

        goto LABEL_134;
      }

      if (!v21)
      {
        goto LABEL_134;
      }

      if (v66 >= 0xB)
      {
        if ((-1431655765 * v66) > 0x55555555)
        {
          EvCrt_v("ME_Decode: ERROR: {D Debug payload is not multiple of 3 bytes: %d ");
LABEL_139:
          v6 = v290;
          goto LABEL_56;
        }

LABEL_176:
        v92 = *v309;
        if (v92 != 66)
        {
          if (v92 == 67)
          {
            v283 = 0;
            v93 = v314;
            while (1)
            {
              v94 = *v93;
              v95 = v94 >> 4;
              v278 = v94 & 0xF;
              v96 = v93[1];
              LODWORD(v313) = 0;
              v97 = v96;
              v98 = Decode_SVid_STE(v96, v94 >> 4, &v313);
              if (LODWORD(v313))
              {
                if (LODWORD(v313) == 2)
                {
                  v99 = 0;
                }

                else
                {
                  v99 = v98;
                }

                if (LODWORD(v313) == 2)
                {
                  v100 = v98;
                }

                else
                {
                  v100 = 0;
                }

                v101 = v93[2];
                v102 = v93[3];
                v103 = (v102 << 16) | (v93[4] << 24);
                v104 = (v93[5] << 16) | (v93[6] << 24);
                v105 = v93[8];
                v106 = v93[7] | ((v105 & 7) << 8);
                v107 = v105 >> 3;
                v274 = v93 + 10;
                v108 = v93[9];
                v109 = v293;
                v110 = 128;
                while (1)
                {
                  v22 = *v109;
                  if (!*v109)
                  {
                    break;
                  }

                  v109 += 16;
                  if (!--v110)
                  {
                    v206 = "G5K_ME_dec_Dbg_C: No more empty slots to store Searched CH SV Info!";
                    goto LABEL_306;
                  }
                }

                *(v109 - 13) = LOBYTE(v313);
                *(v109 - 12) = v278;
                *(v109 - 11) = v99;
                *(v109 - 10) = v100;
                *(v109 - 9) = v103 >> 19;
                *(v109 - 7) = v104 >> 19;
                *(v109 - 5) = v106;
                *(v109 - 3) = v107;
                *(v109 - 2) = v101;
                *(v109 - 1) = v108;
                *v109 = 1;
                if ((v102 & 4) != 0)
                {
                  goto LABEL_139;
                }
              }

              else
              {
                v274 = v93 + 2;
                EvLog_v("G5K_ME_dec_Dbg_C: Illegal STE SV:  ID %d  Const %d  Sig %d", v97, v95, v278);
              }

              v93 = v274;
              ++v283;
              v6 = v290;
              if (v283 == 24)
              {
                goto LABEL_56;
              }
            }
          }

          EvCrt_Illegal_Default("G5K_ME_Unpack_Debug", 1181);
          goto LABEL_139;
        }

        v288 = 0;
        v183 = v314;
        do
        {
          v184 = *v183;
          v280 = v184 & 0xF;
          v185 = v183[1];
          LODWORD(v313) = 0;
          v186 = v185;
          v187 = v184 >> 4;
          v188 = Decode_SVid_STE(v185, v184 >> 4, &v313);
          if (LODWORD(v313))
          {
            if (LODWORD(v313) == 2)
            {
              v189 = 0;
            }

            else
            {
              v189 = v188;
            }

            if (LODWORD(v313) == 2)
            {
              v190 = v188;
            }

            else
            {
              v190 = 0;
            }

            v191 = v183[3];
            v192 = (v191 << 8);
            v193 = v183[2] | ((v191 & 0xF) << 8);
            v194 = v183[4];
            v195 = v183[5];
            v196 = v195 & 0x3F;
            v197 = v195 >> 6;
            v198 = *(v183 + 3);
            v199 = v183[9];
            v200 = v183[8] | ((v199 & 0x1F) << 8);
            v201 = v199 >> 6;
            LOWORD(v199) = v183[10];
            v202 = v183[11];
            v183 += 12;
            v203 = v199 & 0xF8FF | ((v202 & 7) << 8);
            v22 = v202 >> 3;
            v204 = v294;
            v205 = 48;
            while (*v204)
            {
              v204 += 20;
              if (!--v205)
              {
                v206 = "G5K_ME_dec_Dbg_B: No more empty slots to store Search Channel Top Candidates Info!";
LABEL_306:
                EvLog(v206);
                goto LABEL_139;
              }
            }

            *(v204 - 17) = LOBYTE(v313);
            *(v204 - 16) = v280;
            *(v204 - 15) = v189;
            *(v204 - 14) = v190;
            *(v204 - 13) = v193;
            *(v204 - 11) = v194;
            *(v204 - 10) = v196;
            *(v204 - 9) = v197;
            *(v204 - 8) = v201;
            *(v204 - 7) = v200;
            *(v204 - 5) = v198;
            *(v204 - 3) = v203;
            *(v204 - 1) = v22;
            *v204 = 1;
            if (v192 < 0)
            {
              goto LABEL_139;
            }
          }

          else
          {
            v183 += 2;
            EvLog_v("G5K_ME_dec_Dbg_B: Illegal STE SV:  ID %d  Const %d  Sig %d", v186, v187, v280);
          }

          ++v288;
          v6 = v290;
        }

        while (v288 != 20);
      }
    }

LABEL_56:
    v7 = v308;
  }

  else
  {
    v23 = *(a2 + 197) + 1;
    *(a2 + 197) = v23;
    EvCrt_v("ME_Dec: CheckSum Err %d >%s", v23, a2);
    v24 = *(a2 + 112);
    if (v24 > 0xBB8)
    {
      if (v24 < 0xFFFFF447)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (*(a2 + 197) < 4u)
      {
        goto LABEL_57;
      }

      EvCrt_v("ME_Dec: GN_GPS_Hard_Reset_GNB >4 Checksum Errors in <=3000 ms !");
      GN_GPS_Hard_Reset_GNB(v25);
    }

    *(a2 + 197) = 0;
  }

LABEL_57:
  if (g_Enable_GNB_Debug)
  {
    if (*(a2 + 2791) != *(a2 + 2792))
    {
      v36 = xmmword_2A1926A80;
      v37 = *xmmword_2A1926A80;
      v38 = 36;
      v39 = 1u;
      do
      {
        *v36 = v37 + 1;
        *v37 = v38;
        v37 = *v36;
        if (*v36 >= *(v36 + 24))
        {
          v37 = *(v36 + 16);
          *v36 = v37;
        }

        v38 = aT_0[v39++];
      }

      while (v39 != 4);
      sprintf_1u(v36, *(a2 + 2791));
      v40 = (*v36)++;
      *v40 = 32;
      if (*v36 >= *(v36 + 24))
      {
        *v36 = *(v36 + 16);
      }

      sprintf_1u(v36, *(a2 + 128));
      v41 = (*v36)++;
      *v41 = 10;
      v42 = *v36;
      if (*v36 >= *(v36 + 24))
      {
        v42 = *(v36 + 16);
        *v36 = v42;
      }

      *v42 = 0;
      *(a2 + 2792) = *(a2 + 2791);
    }

    GNB_Debug_BlockMove(a2, (v3 - a2));
  }

  a2[392] = 0;
  v3 = a2;
  if (a2[402] != 1)
  {
    goto LABEL_11;
  }

  v43 = *a1;
  v44 = a1[1];
  if (v44 == *a1)
  {
    goto LABEL_89;
  }

  if (v43 >= v44)
  {
    v45 = (v43 - v44);
  }

  else
  {
    v45 = (v43 - *(a1 + 4) + *(a1 + 6) - v44);
  }

  if (v45 >= 4)
  {
    EvLog_nd("ME_Dec: More data after {T message", 3, v22, v44, *a1, v45);
    v43 = *a1;
  }

  if (v44 == v43)
  {
LABEL_88:
    if ((*v311 & 1) == 0)
    {
      goto LABEL_356;
    }

LABEL_89:
    if (*v310 != 1)
    {
      goto LABEL_356;
    }

    v54 = *(a2 + 128);
    if (*(a2 + 112) == v54)
    {
      goto LABEL_356;
    }

    EvLog_v("ME_Dec: Inconsistent TTicks %u %u", *(a2 + 112), v54);
    goto LABEL_100;
  }

  v46 = 0;
  while (1)
  {
    v48 = *v44++;
    v47 = v48;
    if (v44 >= a1[3])
    {
      v44 = a1[2];
    }

    v49 = (v47 == 123) | v46;
    if (v47 != 123 && ((v46 ^ 1) & 1) == 0)
    {
      v50 = v47 - 72;
      v51 = v50 > 0xC;
      v52 = (1 << v50) & 0x1029;
      _ZF = v51 || v52 == 0;
      v49 = v46;
      if (!_ZF)
      {
        break;
      }
    }

    v46 = v49;
    if (v44 == v43)
    {
      goto LABEL_88;
    }
  }

  if ((*v311 & 1) == 0 || *v310 != 1 || a2[406] || a2[410] || a2[414] || a2[418] || a2[422])
  {
    EvCrt_nd("ME_Dec: Throughput error, found next data set", 3, v22, *(a2 + 112), *(a2 + 128), v45);
LABEL_100:
    *&v314[0] = 0;
    a2[412] = 0;
    a2[416] = 0;
    a2[420] = 0;
    a2[424] = 0;
    *(a2 + 413) = 0;
    *(a2 + 417) = 0;
    *(a2 + 421) = 0;
    *v311 = 0;
    v55 = a2;
    v56 = 3392;
    v311[8] = 0;
    do
    {
      v57 = &a2[v56];
      v57[32] = 0;
      *v57 = 0uLL;
      *(v57 + 1) = 0uLL;
      *(v55 + 94) = 0;
      *(v55 + 45) = 0uLL;
      *(v55 + 46) = 0uLL;
      *(v55 + 44) = 0uLL;
      v58 = v55 + 8128;
      *(v55 + 508) = 0uLL;
      *(v55 + 509) = 0uLL;
      *(v55 + 510) = 0uLL;
      v56 += 36;
      v55 += 56;
      *(v58 + 45) = 0;
    }

    while (v56 != 5120);
    for (m = 540; m != 700; m += 20)
    {
      v60 = &a2[m];
      *v60 = 0;
      *(v60 + 1) = 0;
      *(v60 + 15) = 0;
    }

    *v7 = 0;
    API_Get_UTC_Cor(1, v314);
    if (*v314 <= 0.0)
    {
      v61 = -0.5;
    }

    else
    {
      v61 = 0.5;
    }

    v62 = *v314 + v61;
    if (*v314 + v61 <= 2147483650.0)
    {
      if (v62 >= -2147483650.0)
      {
        v63 = v62;
      }

      else
      {
        LOBYTE(v63) = 0;
      }
    }

    else
    {
      LOBYTE(v63) = -1;
    }

    v7[1] = v63;
    v3 = a2;
    goto LABEL_11;
  }

  EvCrt_nd("ME_Dec: Throughput error, more data follows", 3, v22, *(a2 + 112), *(a2 + 128), v45);
LABEL_356:
  v3 = a2;
LABEL_357:
  *(a2 + 48) = v3;
}

void KF_ApplyCorrectionsFromKalmanFullStates(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  memset(v2, 0, sizeof(v2));
  Copy_SubMat_from_Mat(1.0, 32, a1, 0, 0, 21, 1, 32, v2);
  Set_Mat_Size(0x20, v2, 24, 1);
  v3 = *(a1 + 200);
  *&v4 = *(a1 + 216);
  INS_ApplyCorrectionsFromKalman(a1 + 16664, v2);
  Set_Mat_Const(0x15, 1u, 0x20, v2, 0.0);
  Copy_SubMat_to_Mat(1.0, 32, v2, 0, 0, 32, a1);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
}

void KF_predictKF(uint64_t a1, uint64_t a2, int *a3, __n128 a4)
{
  Mult_Mat_Mat(1024);
  Mult_Mat_Mat(1024);
  Mult_Mat_MatT(1024);

  Add_Mat(1024, (a1 + 264), 1024, a3, 0x400, (a1 + 264));
}

void KF_createSystemModelMatrix(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v26 = *MEMORY[0x29EDCA608];
  Set_Mat_Const(*(v1 + 17960), *(v1 + 17960), 0x400, v2, 0.0);
  bzero(v21, 0x2008uLL);
  Set_Mat_I(0xF, 0x400, v21, 1.0);
  if (v5)
  {
    v9 = 0;
    v10 = 6;
  }

  else
  {
    bzero(v20, 0x2008uLL);
    bzero(v19, 0x2008uLL);
    bzero(v18, 0x2008uLL);
    v11 = *(v8 + 17144);
    v12 = *(v8 + 17152);
    memset(v25, 0, 32);
    Mult_Mat_Mat(9);
    Mult_Mat_scalar(-1.0, 3, v25, 3, v25);
    memset(v24, 0, sizeof(v24));
    skewSimMat(v25, v24);
    memset(v23, 0, sizeof(v23));
    Mult_Mat_MatT(3);
    v13 = v12 * Norma2_Vec(3, (v8 + 17008));
    if (fabs(v13) <= 1.0e-30)
    {
      if (g_FPE_LogSeverity)
      {
        v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v15 = *(g_TCU + 8);
        }

        else
        {
          v15 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "KF_createSystemModelInsMatrix", 443, v14, v15, v13, 1.0e-30);
      }

      g_FPE_AssertFlag = 1;
      v13 = 1.0;
    }

    Mult_Mat_scalar((v11 + v11) / v13, 9, v23, 9, v23);
    v10 = 15;
    Set_Mat_Const(0xF, 0xFu, 0x400, v20, 0.0);
    memset(v22, 0, sizeof(v22));
    Set_Mat_I(3, 9, v22, 1.0);
    Copy_SubMat_to_Mat(-1.0, 9, (v8 + 17368), 0, 0, 1024, v20);
    Copy_SubMat_to_Mat(1.0, 9, (v8 + 16672), 0, 12, 1024, v20);
    Copy_SubMat_to_Mat(1.0, 9, v24, 3, 0, 1024, v20);
    Copy_SubMat_to_Mat(-2.0, 9, (v8 + 17368), 3, 3, 1024, v20);
    Copy_SubMat_to_Mat(1.0, 9, v23, 3, 6, 1024, v20);
    Copy_SubMat_to_Mat(1.0, 9, (v8 + 16672), 3, 9, 1024, v20);
    Copy_SubMat_to_Mat(1.0, 9, v22, 6, 3, 1024, v20);
    Mult_Mat_Mat(1024);
    Mult_Mat_Mat(1024);
    Add_Mat_ScalarMult(v7, 1024, v21, 1024, v20, 0x400, v21);
    Add_Mat_ScalarMult(v7 * 0.5 * v7, 1024, v21, 1024, v19, 0x400, v21);
    Add_Mat_ScalarMult(v7 * 0.166666667 * v7 * v7, 1024, v21, 1024, v18, 0x400, v21);
    v9 = 18;
  }

  Copy_SubMat_to_Mat(1.0, 1024, v21, 0, 0, 1024, v3);
  memset(v20, 0, 80);
  Set_Mat_I(3, 9, v20, 1.0);
  Copy_SubMat_to_Mat(1.0, 9, v20, 15, v10, 1024, v3);
  Copy_SubMat_to_Mat(1.0, 9, v20, 18, v9, 1024, v3);
  Copy_SubMat_to_Mat(1.0, 9, v20, 21, 21, 1024, v3);
  memset(v19, 0, 80);
  Set_Mat_I(2, 9, v19, 1.0);
  Copy_SubMat_to_Mat(1.0, 9, v20, 24, 24, 1024, v3);
  v16 = v3[1];
  *&v3[2 * (27 * v16 + 27) + 2] = 0x3FF0000000000000;
  v17 = 28 * v16;
  *&v3[2 * (v17 + 28) + 2] = 0x3FF0000000000000;
  *&v3[2 * (29 * v16 + 29) + 2] = 0x3FF0000000000000;
  *&v3[2 * (30 * v16 + 30) + 2] = 0x3FF0000000000000;
  *&v3[2 * (31 * v16 + 31) + 2] = 0x3FF0000000000000;
  *&v3[2 * (v17 + 27) + 2] = v7;
}

void KF_getVelocityCorrectionFromLeverArm(uint64_t a1, int *a2, int *a3)
{
  v21 = *MEMORY[0x29EDCA608];
  memset(v20, 0, sizeof(v20));
  Copy_Mat(9, (a1 + 16672), 9, v20);
  memset(v19, 0, sizeof(v19));
  Copy_Mat(9, (a1 + 17288), 9, v19);
  memset(v18, 0, sizeof(v18));
  Mult_Mat_MatT(9);
  memset(v17, 0, sizeof(v17));
  extractOfromC(v18, v17);
  v15 = 0u;
  v16 = 0u;
  Set_Mat_Const(3, 1u, 3, &v15, 0.0);
  *(&v16 + 1) = 0x3FF0000000000000;
  memset(v14, 0, sizeof(v14));
  Mult_MatT_Mat(9);
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  Copy_SubMat_from_Mat(1.0, 32, a1, 21, 0, 3, 1, 3, v12);
  Mult_Mat_Mat(9);
  v6 = Dot_Vec_Vec(3, v13, 3, v14);
  memset(v11, 0, sizeof(v11));
  Add_Mat_ScalarMult(-v6, 3, v14, 3, v13, 3, v11);
  v7 = Norma_Vec(3, v11);
  Mult_Mat_scalar(1.0 / (v7 + 0.0000001), 3, v11, 3, v11);
  v8 = Dot_Vec_Vec(3, v11, 3, v17);
  v9 = v8 + v8;
  memset(v10, 0, sizeof(v10));
  Cross_Vec_Vec(3, v13, 3, v14, 3, v10);
  Mult_Mat_scalar(v9, 3, v10, 3, a3);
  Mult_Mat_scalar(*(a1 + 17720), 3, a3, 3, a2);
}

BOOL KF_checkConstAngle(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = v1;
  v28 = *MEMORY[0x29EDCA608];
  memset(v27, 0, sizeof(v27));
  Set_Mat_Const(3, 3u, 9, v27, 0.0);
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  Set_Mat_Const(3, 5u, 0x24, v25, 0.0);
  Mult_Mat_Mat(9);
  memset(v24, 0, sizeof(v24));
  Copy_Mat(9, (v4 + 17288), 9, v24);
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  Mult_Mat_Mat(9);
  bzero(v18, 0x2008uLL);
  Set_Mat_Const(3, 0x20u, 0x400, v18, 0.0);
  memset(v17, 0, sizeof(v17));
  Mult_Mat_MatT(9);
  Copy_SubMat_to_Mat(1.0, 9, v17, 0, 0, 1024, v18);
  Copy_SubMat_to_Mat(-1.0, 9, v17, 0, 18, 1024, v18);
  memset(v16, 0, sizeof(v16));
  Mult_Mat_MatT(9);
  memset(v15, 0, sizeof(v15));
  extractOfromC(v16, v15);
  memset(v14, 0, sizeof(v14));
  Set_Mat_I(3, 9, v14, 0.01);
  *(v14 + (2 * DWORD1(v14[0]) + 2) + 1) = 0x3F9EB851EB851EB8;
  bzero(v13, 0x2008uLL);
  Mult_Mat_Mat(1024);
  Mult_Mat_MatT(1024);
  Add_Mat(1024, v13, 9, v14, 0x400, v13);
  memset(v12, 0, sizeof(v12));
  Copy_Mat_diag_to_Vec(1024, v13, 0, 0, 3, v12);
  Sqrt_Mat(3, v12, 3, v12);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  ElDiv_Mat_Mat(3, v15, 3, v12, 0x20, v10);
  v5 = Norma_Vec(32, v10);
  if (v5 > v3)
  {
    if ((g_FPE_LogSeverity & 8) != 0)
    {
      v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v7 = *(g_TCU + 8);
      }

      else
      {
        v7 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: eventsLog = {time:%f, type:'%s', mssg:'%s at time %f'}", "KF_checkConstAngle", 2928, v6, v7, *(v4 + 17192), "UnmountDetected", "detected movement", *(v4 + 17192));
    }

    v8 = *(v4 + 17192);
    *(v4 + 48744) = v8;
    Shift_Right_Vec(v8, 6, (v4 + 67664), 6, v4 + 67664);
  }

  return v5 > v3;
}

void KF_rotateVi(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v9 = *MEMORY[0x29EDCA608];
  memset(v8, 0, sizeof(v8));
  Copy_Mat(9, v1 + 4168, 9, v8);
  memset(v7, 0, sizeof(v7));
  Copy_Mat(9, v1 + 4322, 9, v7);
  Mult_MatT_Mat(9);
  memset(v6, 0, sizeof(v6));
  Copy_SubMat_from_Mat(1.0, 32, v1, 21, 0, 3, 1, 3, v6);
  Mult_Mat_Mat(9);
  Mult_MatT_Mat(9);
  Copy_SubMat_to_Mat(1.0, 3, v6, 21, 0, 32, v1);
  bzero(v5, 0x2008uLL);
  Copy_SubMat_from_Mat(1.0, 1024, v1 + 66, 21, 0, 3, v1[67], 1024, v5);
  Mult_Mat_Mat(9);
  Copy_SubMat_to_Mat(1.0, 1024, v5, 21, 0, 1024, v1 + 66);
  Copy_SubMat_from_Mat(1.0, 1024, v1 + 66, 0, 21, v1[67], 3, 1024, v5);
  Mult_Mat_MatT(1024);
  Copy_SubMat_to_Mat(1.0, 1024, v5, 0, 21, 1024, v1 + 66);
  Copy_SubMat_from_Mat(1.0, 1024, v1 + 66, 21, 21, 3, 3, 1024, v5);
  memset(v4, 0, sizeof(v4));
  Set_Mat_I(3, 9, v4, 0.05);
  Add_Mat(1024, v5, 9, v4, 0x400, v5);
  Copy_SubMat_to_Mat(1.0, 1024, v5, 21, 21, 1024, v1 + 66);
  bzero(v3, 0x2008uLL);
  Copy_SubMat_from_Mat(1.0, 1024, v1 + 66, 9, 9, 3, 3, 1024, v3);
  memset(v2, 0, sizeof(v2));
  Copy_SubMat_from_Mat(1.0, 1024, v1 + 10136, 9, 9, 3, 3, 9, v2);
  Add_Mat_ScalarMult(0.01, 1024, v3, 9, v2, 0x400, v3);
  Copy_SubMat_to_Mat(1.0, 1024, v3, 9, 9, 1024, v1 + 66);
}

void KF_createMeasurementNoiseCovMatrix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x2A1C7C4A8](a1);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v9;
  v61 = *MEMORY[0x29EDCA608];
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  ElMult_Mat_Mat(6, v18, 6, v18, 6, v58);
  Set_Mat_Const((v19[1] * *v19), v19[1] * *v19, 0x400, v13, 0.0);
  Copy_Vec_to_Mat_diag(6, v58, 0, 0, 1, 1, 1024, v13);
  Set_Mat_Const(*v17, v17[1], 6, v11, 1.0);
  bzero(v57, 0x2008uLL);
  Mult_Mat_Mat(1024);
  Mult_Mat_MatT(1024);
  bzero(v56, 0x2008uLL);
  Add_Mat(1024, v57, 1024, v13, 0x400, v56);
  bzero(v55, 0x2008uLL);
  Copy_Mat_diag_to_Vec(1024, v56, 0, 0, 1024, v55);
  Sqrt_Mat(1024, v55, 0x400, v55);
  ElDiv_Mat_Mat(6, v17, 1024, v55, 6, a9);
  v53 = 0u;
  v54 = 0u;
  memset(v52, 0, sizeof(v52));
  memset(v51, 0, sizeof(v51));
  if (v21 > 8)
  {
    switch(v21)
    {
      case 9:
        Mult_MatT_Mat(9);
        Mult_Mat_Mat(1024);
        Add_Mat(1024, v57, 1024, v13, 0x400, v56);
        bzero(v60, 0x2008uLL);
        Invert_Mat(1024);
        Mult_Mat_Mat(1024);
        Mult_MatT_Mat(6);
        v31 = *(&v53 + 1);
        if (*(&v53 + 1) < 0.0)
        {
          if (g_FPE_LogSeverity)
          {
            v32 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            if (g_TCU)
            {
              v33 = *(g_TCU + 8);
            }

            else
            {
              v33 = 0.0;
            }

            LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "KF_createMeasurementNoiseCovMatrix", 1275, v32, v33, *(&v53 + 1));
          }

          g_FPE_AssertFlag = 1;
          v31 = 1.0;
        }

        v47 = sqrt(v31);
        Set_Mat_Const(1, 1u, 6, a9, v47);
        if (v47 < 5.0)
        {
          return;
        }

        break;
      case 10:
        memset(v60, 0, 80);
        createC_e_map((v15 + 112), (v15 + 144), v22 + 16832, v60, 0);
        memset(v50, 0, sizeof(v50));
        Copy_SubMat_from_Mat(1.0, 1024, v13, 1, 1, 3, 3, 9, v50);
        Mult_MatT_Mat(9);
        Mult_Mat_Mat(9);
        Copy_SubMat_to_Mat(1.0, 9, v50, 1, 1, 1024, v13);
        *(v11 + 16) = 0;
        *(v11 + 24) = 0;
        *(v11 + 32) = 0;
        if (fabs(*(a9 + 8)) < 5.0)
        {
          return;
        }

        break;
      case 11:
        Mult_Mat_scalar(40.0, 1024, v13, 0x400, v13);
        return;
      default:
        goto LABEL_28;
    }

    v42 = *v17;
    v43 = v17[1];
    v44 = 0.0;
LABEL_52:
    Set_Mat_Const(v42, v43, 6, v11, v44);
    return;
  }

  if (v21 == 1)
  {
    Set_Mat_Const(2, 1u, 6, v11, 1.0);
    if (*(v22 + 40529) == 1)
    {
      v26 = *(a9 + 8);
      v27 = -v26;
      if (v26 >= 0.0)
      {
        v27 = *(a9 + 8);
      }

      if (v27 > 3.0)
      {
        *(v11 + 8) = 0;
      }

      v28 = *(a9 + 16);
      if (v28 < 0.0)
      {
        v28 = -v28;
      }

      if (v28 > 3.0)
      {
        *(v11 + 16) = 0;
      }

      v29 = *(v22 + 67720);
      if (v29 >= 8)
      {
        if (g_FPE_LogSeverity)
        {
          v45 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v46 = *(g_TCU + 8);
          }

          else
          {
            v46 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f SES does not support value %u", "KF_createRweightedGNSS", 1151, v45, v46, *(v22 + 67720));
        }

        g_FPE_AssertFlag = 1;
        v30 = 0.0;
      }

      else
      {
        v30 = dbl_29972AC80[v29];
      }

      if (*(a9 + 8) < 0.0)
      {
        *(v13 + 8) = *(v13 + 8) + *(v13 + 8);
        if (*(a9 + 8) < v30)
        {
          *(v11 + 8) = 0;
          if (*(v22 + 40531) == 1 && *(a9 + 8) < -10.0)
          {
            *(v11 + 16) = 0;
          }
        }
      }
    }

    return;
  }

  if (v21 == 5)
  {
    v36 = 3;
    v37 = Norma2_Vec(3, (v22 + 16944));
    v38 = 0;
    v39 = v37 * 0.050625;
    v40 = v13 + 8;
    v41 = *(v13 + 4) + 1;
    do
    {
      if (*(v40 + 8 * v38) < v39)
      {
        *(v40 + 8 * v38) = v39;
      }

      v38 += v41;
      --v36;
    }

    while (v36);
    if ((*(v22 + 40530) & 1) != 0 && KF_checkConstAngle(v22))
    {
      KF_rotateVi(v22);
      Set_Mat_Const(*v17, v17[1], 6, v11, 0.0);
LABEL_64:
      *(v22 + 57152) = 0x3FF0000000000000;
      return;
    }

    v42 = *v17;
    v43 = v17[1];
    v44 = 1.0;
    goto LABEL_52;
  }

  if (v21 != 6)
  {
LABEL_28:
    if (g_FPE_LogSeverity)
    {
      v34 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v35 = *(g_TCU + 8);
      }

      else
      {
        v35 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f measType = %d is not supported!", "KF_createMeasurementNoiseCovMatrix", 1321, v34, v35, v21);
    }

    g_FPE_AssertFlag = 1;
    return;
  }

  Copy_SubMat_from_Mat(1.0, 6, v17, 0, 0, 3, 1, 3, v52);
  Copy_SubMat_from_Mat(1.0, 1024, v56, 0, 0, 3, 3, 9, v51);
  bzero(v60, 0x2008uLL);
  Invert_Mat(9);
  Mult_Mat_Mat(1024);
  Mult_MatT_Mat(3);
  v23 = *(&v53 + 1);
  if (*(&v53 + 1) < 0.0)
  {
    if (g_FPE_LogSeverity)
    {
      v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v25 = *(g_TCU + 8);
      }

      else
      {
        v25 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "KF_createMeasurementNoiseCovMatrix", 1253, v24, v25, v23);
    }

    g_FPE_AssertFlag = 1;
    v23 = 1.0;
  }

  v48 = *(v15 + 112);
  Set_Mat_Const(6, 1u, 6, v11, 1.0);
  if (sqrt(v23) >= 3.0 && v48 >= 4.0)
  {
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
  }

  if (*(v22 + 40530) == 1 && KF_checkConstAngle(v22))
  {
    KF_rotateVi(v22);
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    goto LABEL_64;
  }
}

uint64_t KF_reduceSvInd(unsigned int a1, unsigned int a2)
{
  if (a2 == 4)
  {
    v4 = a1 - 192;
  }

  else
  {
    v4 = a1;
  }

  if (a2 > 4 || (v4 - 38) <= 0xFFFFFFDA)
  {
    if (g_FPE_LogSeverity)
    {
      v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v6 = *(g_TCU + 8);
      }

      else
      {
        v6 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f sv_reduced index %d (sv=%d) > SvTable size %d (or 0)! ", "KF_reduceSvInd", 1483, v5, v6, v4, a1, a2);
    }

    v4 = 0;
    g_FPE_AssertFlag = 1;
  }

  return v4;
}

uint64_t KF_ApplySingleMeas(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v167 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v1;
  v262 = *MEMORY[0x29EDCA608];
  v12 = (v1 + 117096);
  v13 = (v1 + 67376);
  v168 = v1 + 40488;
  v14 = v1 + 17016;
  v15 = *v9;
  v16 = *(v9 + 8);
  v171 = v17;
  Set_Mat_Const(1, 1u, 6, v17, -1.0);
  v166 = v8;
  Set_Mat_Const(1, 1u, 6, v8, -999.0);
  *v6 = v16;
  v170 = v13;
  if (*(v11 + 17192) >= v13[34])
  {
    v13[34] = NAN;
    Set_Mat_Const(0x20, 1u, 0x20, (v11 + 67384), 1.0);
  }

  if (v16 <= 2)
  {
    if (!v16)
    {
      v49 = v15 - *(v11 + 17192);
      INS_ApplyImuSample(v11 + 16664, (v10 + 16), v15);
      Set_Mat_Const(*(v14 + 944), *(v14 + 944), 0x400, (v11 + 75928), 0.0);
      v256 = 0;
      v255 = 0u;
      v254 = 0u;
      v253 = 0u;
      v252 = 0u;
      v251 = 0u;
      v250 = 0u;
      v249 = 0u;
      v248 = 0u;
      v247 = 0u;
      v246 = 0u;
      v245 = 0u;
      v244 = 0u;
      v243 = 0u;
      v242 = 0u;
      memset(__x, 0, sizeof(__x));
      Set_Mat_Const(*(v14 + 944), 1u, 0x20, __x, 0.0);
      v50 = Norma_Vec(3, (v11 + 16976));
      if (v50 >= 8.33333333)
      {
        v51 = 1.0;
        if (v50 <= 16.6666667)
        {
          v51 = (v50 + -8.33333333) * 0.7 / 8.33333333 + 0.3;
        }
      }

      else
      {
        v51 = 0.3;
      }

      v169 = v51;
      *&v227 = 0;
      v226 = 0u;
      memset(v225, 0, sizeof(v225));
      Copy_Mat(6, (v11 + 17792), 6, v225);
      *(v225 + 8) = vmulq_n_f64(*(v225 + 8), v169);
      v225[1].f64[1] = v169 * v225[1].f64[1];
      ElMult_Mat_Mat(6, v225, 6, v225, 6, v225);
      Mult_Mat_scalar(v49, 6, v225, 6, v225);
      Copy_Vec_to_Mat_diag(6, v225, 0, 0, 1, 0, 32, __x);
      *&v257 = 0x100000003;
      *(&v257 + 1) = v49 * 0.000001;
      *&v258 = v49 * 0.000001;
      *(&v258 + 1) = v49 * 0.000001;
      Copy_Vec_to_Mat_diag(3, &v257, 6u, 0, 1, 0, 32, __x);
      *&v206 = 0;
      v204 = 0u;
      v205 = 0u;
      v203 = 0u;
      Exp_Mat(v49 * -2.0, 6, (v14 + 888), 6, &v203);
      *&v211 = 0;
      v210 = 0u;
      v209 = 0u;
      v208 = 0u;
      Set_Mat_Const(*(v14 + 888), *(v14 + 892), 6, &v208, 1.0);
      Sub_Mat(6, &v208, 6, &v203, 6, &v203);
      ElMult_Mat_Mat(6, &v203, 6, (v11 + 17848), 6, &v203);
      Copy_Vec_to_Mat_diag(6, &v203, 9u, 0, 1, 0, 32, __x);
      v54 = v49 * 0.00001;
      if (*(v11 + 34368))
      {
        v54 = v49 * 0.00001 * 10.0;
      }

      *&v183 = 0x100000003;
      *(&v183 + 1) = v54;
      *&v184 = v54;
      *(&v184 + 1) = v54;
      Copy_Vec_to_Mat_diag(3, &v183, 0x15u, 0, 1, 0, 32, __x);
      *&v254 = v49 * 0.09 * 100.0;
      *(&v254 + 1) = v49 * 0.09;
      if (*(v11 + 17192) >= 0.0)
      {
        v55 = v49 * 0.000001;
      }

      else
      {
        v55 = v49;
      }

      Set_Mat_Const(3, 1u, 3, &v183, v55);
      Copy_Vec_to_Mat_diag(3, &v183, 0x1Du, 0, 1, 0, 32, __x);
      *(&v253 + 1) = v49 * 0.0001;
      Copy_Vec_to_Mat_diag(32, __x, 0, 0, 1, 1, 1024, (v11 + 75928));
      Diag_Mult_Mat(v13[34], 1024, (v11 + 75928), 32, (v11 + 67384));
      KF_createSystemModelMatrix(v11);
      v20 = v11 + 67728;
      v21 = (v11 + 75928);
      goto LABEL_65;
    }

    if (v16 == 2)
    {
      v22 = *(v10 + 136);
      if (v22 != 0.0)
      {
        *(v11 + 232) = *(v11 + 232) - v22;
      }

      *&v243 = 0;
      v242 = 0u;
      memset(__x, 0, sizeof(__x));
      KF_sendMeas2Checker(v11, 2, v10 + 16, 0, 0, 0, __x);
      goto LABEL_125;
    }
  }

  else
  {
    v18 = 0;
    if ((v16 - 3) < 2 || v16 == 12)
    {
      goto LABEL_27;
    }

    if (v16 == 8)
    {
      if (v15 < *(v11 + 17192))
      {
LABEL_125:
        KF_LogStatistics(v11, v10, v171);
        return 1;
      }

      Copy_Mat(3, (v11 + 17008), 3, (v11 + 17224));
      Copy_Mat(9, (v11 + 16672), 9, (v11 + 17288));
      v20 = v11 + 17968;
      v21 = (v11 + 26168);
LABEL_65:
      KF_predictKF(v11, v20, v21, v19);
      goto LABEL_125;
    }
  }

  v23 = *(v11 + 17192);
  v18 = v15 >= v23;
  if (v16 == 1)
  {
    if (*(v168 + 40) == 1)
    {
      v24 = *(v10 + 132);
      v25 = KF_reduceSvInd(*(v10 + 128), v24);
      if (!v25)
      {
        goto LABEL_26;
      }

      v26 = v25 + 37 * v24 - 1;
      v27 = *(v11 + 8 * v26 + 34568);
      v28 = *(v11 + v26 + 34376);
      *(__x + 8) = *(v11 + 24 * v26 + 36048);
      v29 = *(v11 + 24 * v26 + 36064);
      *&__x[0] = 0x100000003;
      *(&__x[1] + 1) = v29;
      memset(v225, 0, sizeof(v225));
      Sub_Mat(3, __x, 3, (v11 + 17008), 3, v225);
      v30 = Norma_Vec(3, v225);
      v31 = *(v11 + 17192);
      v32 = v27 - v31;
      if (v27 - v31 < 0.0)
      {
        v32 = -(v27 - v31);
      }

      if (v31 >= 0.0)
      {
        v33 = v32 <= 60.0 && v30 <= 8.0;
        if (v33 && (v28 & 1) != 0)
        {
LABEL_26:
          v34 = 1;
          Set_Mat_Const(2, 1u, 6, v171, 2.0);
          KF_LogStatistics(v11, v10, v171);
          return v34;
        }
      }
    }

    if (v15 < v23)
    {
      goto LABEL_125;
    }

    v165 = v14;
    v35 = 0;
    v163 = 1;
LABEL_73:
    v56 = (v11 + 100592);
    v57 = *(v10 + 132);
    v206 = 0u;
    v207 = 0u;
    v204 = 0u;
    v205 = 0u;
    v203 = 0u;
    Transpose_Mat(9);
    *&v202[0] = 0x100000003;
    *(v202 + 8) = *(v11 + 176);
    *(&v202[1] + 1) = *(v11 + 192);
    v212 = 0u;
    v211 = 0u;
    v210 = 0u;
    v209 = 0u;
    v208 = 0u;
    Set_Mat_I(3, 9, &v208, 1.0);
    v164 = v35;
    v162 = v4;
    if (v16 <= 8)
    {
      switch(v16)
      {
        case 1:
          v256 = 0;
          v255 = 0u;
          v254 = 0u;
          v253 = 0u;
          v252 = 0u;
          v251 = 0u;
          v250 = 0u;
          v249 = 0u;
          v248 = 0u;
          v247 = 0u;
          v246 = 0u;
          v245 = 0u;
          v244 = 0u;
          v243 = 0u;
          v242 = 0u;
          memset(__x, 0, sizeof(__x));
          v240 = 0;
          v239 = 0u;
          v238 = 0u;
          v237 = 0u;
          v236 = 0u;
          v235 = 0u;
          v234 = 0u;
          v233 = 0u;
          v232 = 0u;
          v231 = 0u;
          v230 = 0u;
          v229 = 0u;
          v228 = 0u;
          v227 = 0u;
          v226 = 0u;
          memset(v225, 0, sizeof(v225));
          Sub_Mat(3, (v11 + 17008), 3, (v10 + 136), 0x20, __x);
          v64 = Norma_Vec(32, __x);
          if (fabs(v64) <= 1.0e-30)
          {
            if (g_FPE_LogSeverity)
            {
              v65 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              if (g_TCU)
              {
                v66 = *(g_TCU + 8);
              }

              else
              {
                v66 = 0.0;
              }

              LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "KF_createMeasurementMatrix", 646, v65, v66, v64, 1.0e-30);
            }

            g_FPE_AssertFlag = 1;
            v64 = 1.0;
          }

          Transpose_Mat(32);
          Mult_Mat_scalar(-1.0 / v64, 32, v225, 0x20, v225);
          Set_Mat_Const(2, 0x20u, 0x400, (v11 + 84184), 0.0);
          Copy_SubMat_to_Mat(1.0, 32, v225, 0, 6, 1024, (v11 + 84184));
          v96 = v11 + 84192;
          if (v57 == 4)
          {
            v97 = 28;
          }

          else
          {
            v97 = v57 + 28;
          }

          *(v96 + 8 * v97) = 0x3FF0000000000000;
          Copy_SubMat_to_Mat(1.0, 32, v225, 1, 3, 1024, (v11 + 84184));
          *(v96 + 8 * (*(v11 + 84188) + 27)) = 0x3FF0000000000000;
          *(v11 + 84416) = 0x3FF0000000000000;
          break;
        case 5:
          v69 = 0.0;
          Set_Mat_Const(4, 0x20u, 0x400, (v11 + 84184), 0.0);
          v200 = 0u;
          v201 = 0u;
          v198 = 0u;
          v199 = 0u;
          KF_getVelocityCorrectionFromLeverArm(v11, &v200, &v198);
          v196 = 0u;
          v197 = 0u;
          Sub_Mat(3, (v11 + 16944), 3, &v200, 3, &v196);
          v70 = Norma_Vec(3, &v196);
          v256 = 0;
          v255 = 0u;
          v254 = 0u;
          v253 = 0u;
          v252 = 0u;
          v251 = 0u;
          v250 = 0u;
          v249 = 0u;
          v248 = 0u;
          v247 = 0u;
          v246 = 0u;
          v245 = 0u;
          v244 = 0u;
          v243 = 0u;
          v242 = 0u;
          memset(__x, 0, sizeof(__x));
          Abs_Mat(3, &v196, 0x20, __x);
          v228 = 0u;
          v227 = 0u;
          v226 = 0u;
          memset(v225, 0, sizeof(v225));
          Copy_SubMat_from_Mat(1.0, 1024, (v11 + 264), 3, 3, 3, 3, 9, v225);
          v194 = 0u;
          v195 = 0u;
          Copy_Mat_diag_to_Vec(9, v225, 0, 0, 3, &v194);
          Sqrt_Mat(3, &v194, 3, &v194);
          Mult_Mat_scalar(2.0, 3, &v194, 3, &v194);
          v192 = 0u;
          v193 = 0u;
          Min_Mat_Mat(3, &v194, 32, __x, 3, &v192);
          v190 = 0u;
          v191 = 0u;
          Sign_Mat(3, &v196, 3, &v190);
          memset(v189, 0, sizeof(v189));
          ElMult_Mat_Mat(3, &v192, 3, &v190, 3, v189);
          Sub_Mat(3, &v196, 3, v189, 3, v189);
          ElMult_Mat_Mat(3, v189, 3, v189, 3, v189);
          if (LODWORD(v189[0]))
          {
            v71 = 0;
            v72 = 0;
            do
            {
              v73 = v71;
              v74 = DWORD1(v189[0]);
              if (DWORD1(v189[0]))
              {
                do
                {
                  v69 = v69 + *(v189 + ++v73);
                  --v74;
                }

                while (v74);
              }

              ++v72;
              v71 += DWORD1(v189[0]);
            }

            while (v72 != LODWORD(v189[0]));
            v75 = v69 <= 0.0;
          }

          else
          {
            v75 = 1;
          }

          memset(v188, 0, sizeof(v188));
          Set_Mat_Const(3, 1u, 3, v188, 0.0);
          if (v70 > 0.0 && (*(v11 + 34368) & v75 & 1) == 0)
          {
            v260 = 0u;
            v261 = 0u;
            v258 = 0u;
            v259 = 0u;
            v257 = 0u;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v183 = 0u;
            skewSimMat(&v196, &v183);
            Mult_Mat_Mat(9);
            Mult_Mat_scalar(-1.0, 9, &v257, 9, &v257);
            v181 = 0u;
            v182 = 0u;
            v179 = 0u;
            v180 = 0u;
            v178 = 0u;
            Mult_Mat_MatT(3);
            if (v70 <= 1.0e-30)
            {
              if (g_FPE_LogSeverity)
              {
                v92 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                if (g_TCU)
                {
                  v93 = *(g_TCU + 8);
                }

                else
                {
                  v93 = 0.0;
                }

                LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "KF_createMeasurementMatrix", 712, v92, v93, v70, 1.0e-30);
              }

              g_FPE_AssertFlag = 1;
              v70 = 1.0;
            }

            Mult_Mat_scalar(1.0 / v70, 9, &v178, 9, &v178);
            Sub_Mat(9, &v178, 9, &v203, 9, &v178);
            v176 = 0u;
            v177 = 0u;
            v174 = 0u;
            v175 = 0u;
            v173 = 0u;
            Set_Mat_I(3, 9, &v173, -v70);
            Mult_Mat_Mat(9);
            Copy_SubMat_to_Mat(1.0, 9, &v257, 0, 0, 1024, (v11 + 84184));
            Copy_SubMat_to_Mat(1.0, 9, &v178, 0, 3, 1024, (v11 + 84184));
            Copy_SubMat_to_Mat(1.0, 9, &v173, 0, 21, 1024, (v11 + 84184));
            v58 = v188;
            v59 = -1.0;
            v60 = (v11 + 84184);
            v61 = 3;
            v62 = 0;
            v63 = 26;
            goto LABEL_98;
          }

          break;
        case 6:
          Set_Mat_Const(6, 0x20u, 0x400, (v11 + 84184), 0.0);
          Copy_SubMat_to_Mat(-1.0, 9, &v208, 0, 6, 1024, (v11 + 84184));
          Copy_SubMat_to_Mat(1.0, 9, &v208, 0, 15, 1024, (v11 + 84184));
          Copy_SubMat_to_Mat(1.0, 9, &v208, 3, 0, 1024, (v11 + 84184));
          v58 = &v208;
          v59 = -1.0;
          v60 = (v11 + 84184);
          v61 = 9;
          v62 = 3;
          v63 = 18;
LABEL_98:
          Copy_SubMat_to_Mat(v59, v61, v58, v62, v63, 1024, v60);
          break;
        default:
          goto LABEL_88;
      }

LABEL_99:
      *&v186 = 0;
      v184 = 0u;
      v185 = 0u;
      v183 = 0u;
      Copy_Mat(6, (v10 + 16), 6, &v183);
      v76 = *(v10 + 132);
      v178 = 0u;
      v179 = 0u;
      v173 = 0u;
      v174 = 0u;
      memset(v202, 0, sizeof(v202));
      v228 = 0u;
      v227 = 0u;
      v226 = 0u;
      memset(v225, 0, sizeof(v225));
      v206 = 0u;
      v207 = 0u;
      v204 = 0u;
      v205 = 0u;
      v203 = 0u;
      v212 = 0u;
      v211 = 0u;
      v210 = 0u;
      v209 = 0u;
      v208 = 0u;
      v256 = 0;
      v255 = 0u;
      v254 = 0u;
      v253 = 0u;
      v252 = 0u;
      v251 = 0u;
      v250 = 0u;
      v249 = 0u;
      v248 = 0u;
      v247 = 0u;
      v246 = 0u;
      v245 = 0u;
      v244 = 0u;
      v243 = 0u;
      v242 = 0u;
      memset(__x, 0, sizeof(__x));
      v200 = 0u;
      v201 = 0u;
      v198 = 0u;
      v199 = 0u;
      if (v16 > 8)
      {
        switch(v16)
        {
          case 9:
            Copy_Mat(3, (v11 + 17008), 6, (v11 + 100584));
            goto LABEL_115;
          case 0xA:
            v260 = 0uLL;
            v261 = 0uLL;
            v258 = 0uLL;
            v259 = 0uLL;
            v257 = 0uLL;
            v196 = 0uLL;
            v197 = 0uLL;
            createC_e_map((v10 + 128), (v10 + 160), v11 + 16832, &v257, &v196);
            v194 = 0u;
            v195 = 0u;
            Add_Mat(3, (v10 + 160), 3, (v10 + 128), 3, &v194);
            Add_Mat_ScalarMult(-0.5, 3, (v11 + 17008), 3, &v194, 3, &v194);
            Mult_Mat_Mat(9);
            v86 = Norma_Vec(3, &v196);
            if (v86 < 0.1 && (g_FPE_LogSeverity & 2) != 0)
            {
              v87 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              if (g_TCU)
              {
                v88 = *(g_TCU + 8);
              }

              else
              {
                v88 = 0.0;
              }

              LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f Map vector is too short! norma = %f", "KF_createMeasExpectedValue", 964, v87, v88, v86);
            }

            Mult_Mat_scalar(1.0 / v86, 3, &v196, 3, &v196);
            v192 = 0u;
            v193 = 0u;
            Copy_SubMat_from_Mat(1.0, 32, v11, 21, 0, 3, 1, 3, &v192);
            v190 = 0u;
            v191 = 0u;
            Mult_Mat_Mat(9);
            Sub_Mat(3, &v196, 3, &v190, 3, &v190);
            Set_Mat_Size(6, (v11 + 100584), 4, 1);
            Copy_SubMat_to_Mat(1.0, 3, &v190, 1, 0, 6, (v11 + 100584));
            *v56 = v195;
            Sub_Mat(6, (v11 + 100584), 6, &v183, 6, (v11 + 100640));
            *&v260 = 0;
            v83 = (v11 + 92384);
            v258 = 0u;
            v259 = 0u;
            v257 = 0u;
            *&v181 = 0;
            v179 = 0u;
            v180 = 0u;
            v178 = 0u;
            v85 = v167;
            KF_createMeasurementNoiseCovMatrix(v11, 10, v10 + 72, v11 + 100640, v11 + 84184, v10 + 16, v11 + 92384, v12, v166);
            KF_calcConsisGains(v11);
            Set_Mat_Size(6, &v178, 0, 0);
            CCH_insertMeas((v11 + 48760), 10, v10 + 16, &v257, v12, &v178);
            goto LABEL_173;
          case 0xB:
            Set_Mat_Const(1, 1u, 6, (v11 + 100584), 0.0);
            v257 = 0u;
            v258 = 0u;
            InsUtil_ECEF2Geo_Iterative((v11 + 17008), &v257, 6378137.0);
            *v56 = *(&v258 + 1);
            goto LABEL_115;
        }
      }

      else
      {
        switch(v16)
        {
          case 1:
            Set_Mat_Const(2, 1u, 6, (v11 + 100584), 0.0);
            Sub_Mat(3, (v11 + 17008), 3, (v10 + 136), 3, &v178);
            v77 = Norma_Vec(3, &v178);
            if (fabs(v77) <= 1.0e-30)
            {
              v78 = v166;
              if (g_FPE_LogSeverity)
              {
                v89 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                if (g_TCU)
                {
                  v90 = *(g_TCU + 8);
                }

                else
                {
                  v90 = 0.0;
                }

                LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "KF_createMeasExpectedValue", 858, v89, v90, v77, 1.0e-30);
              }

              g_FPE_AssertFlag = 1;
              v77 = 1.0;
            }

            else
            {
              v78 = v166;
            }

            Transpose_Mat(3);
            Mult_Mat_scalar(-1.0 / v77, 3, &v178, 3, &v178);
            Sub_Mat(3, (v11 + 16944), 3, (v10 + 168), 3, &v173);
            Mult_Mat_Mat(3);
            *(v11 + 100600) = *(v11 + 224) - *(&v173 + 1);
            if ((v76 & 0xFFFFFFFB) != 0)
            {
              v77 = v77 + *(v11 + 232);
              v98 = (v11 + 232 + 8 * v76);
            }

            else
            {
              v98 = (v11 + 232);
            }

            *v56 = v77 + *v98;
            Sub_Mat(6, (v11 + 100584), 6, &v183, 6, (v11 + 100640));
            *&v260 = 0;
            v83 = (v11 + 92384);
            v258 = 0u;
            v259 = 0u;
            v257 = 0u;
            *&v181 = 0;
            v179 = 0u;
            v180 = 0u;
            v178 = 0u;
            KF_createMeasurementNoiseCovMatrix(v11, 1, v10 + 72, v11 + 100640, v11 + 84184, v10 + 16, v11 + 92384, v12, v78);
            KF_calcConsisGains(v11);
            if (v167)
            {
              v99 = *(v4 + 17512);
              v35 = v164;
              if (v99 <= 0x2F)
              {
                *(v4 + 17512) = ++v99;
              }

              v100 = v99 - 1;
              v101 = (v4 + 8 * v100);
              v101[1] = *v10;
              v102 = v4 + v100;
              *(v102 + 6416) = 1;
              *(v102 + 840) = 1;
              *(v4 + 6512 + v100) = 1;
              *(v4 + 936 + v100) = 1;
              v101[351] = *(v11 + 100648);
              v101[1048] = *(v11 + 100656);
              v101[603] = *(v11 + 92392);
              v101[1300] = *(v11 + 92392 + 8 * (*(v11 + 92388) + 1));
              v103 = v4 + 4 * v100;
              *(v103 + 400) = *(v10 + 128);
              *(v103 + 592) = *(v10 + 132) + 1;
              v104 = v4 + 4 * v100;
              if (v12[1] == 0.0)
              {
                *(v104 + 1032) = 21;
                *(v4 + 936 + v100) = 0;
              }

              v85 = v167;
              if (v12[2] == 0.0)
              {
                *(v104 + 6608) = 21;
                *(v162 + 6512 + v100) = 0;
              }

              Copy_SubMat_from_Mat(1.0, 1024, (v11 + 84184), 0, 6, 1, 3, 3, (v162 + 144 * v100 + 17520));
            }

            else
            {
              v100 = 0;
              v35 = v164;
              v85 = 0;
            }

            Set_Mat_Size(6, &v178, 0, 0);
            CCH_insertMeas((v11 + 48760), 1, v10 + 16, &v257, v12, &v178);
            goto LABEL_174;
          case 5:
            KF_getVelocityCorrectionFromLeverArm(v11, &v200, &v198);
            Sub_Mat(3, (v11 + 16944), 3, &v200, 0x20, __x);
            Set_Mat_Const(4, 1u, 6, (v11 + 100584), 0.0);
            Mult_MatT_Mat(9);
            VecSet_3x1(3, v202, *(v11 + 176), *(v11 + 184), *(v11 + 192));
            v81 = Norma_Vec(32, __x);
            Add_Mat_ScalarMult(-v81, 3, &v173, 3, v202, 3, &v173);
            Copy_SubMat_to_Mat(1.0, 3, &v173, 0, 0, 6, (v11 + 100584));
            *(v11 + 100616) = Norma_Vec(3, v202) + -1.0;
            goto LABEL_115;
          case 6:
            Set_Mat_Const(6, 1u, 6, (v11 + 100584), 0.0);
            Sub_Mat(3, (v11 + 17008), 3, (v11 + 17224), 3, &v173);
            Copy_SubMat_to_Mat(1.0, 3, &v173, 0, 0, 6, (v11 + 100584));
            Copy_Mat(9, (v11 + 16672), 9, v225);
            Copy_Mat(9, (v11 + 17288), 9, &v203);
            Mult_Mat_MatT(9);
            extractOfromC(&v208, &v173);
            Copy_SubMat_to_Mat(1.0, 3, &v173, 3, 0, 6, (v11 + 100584));
LABEL_115:
            v82 = v11 + 100640;
            Sub_Mat(6, (v11 + 100584), 6, &v183, 6, (v11 + 100640));
            *&v260 = 0;
            v83 = (v11 + 92384);
            v258 = 0u;
            v259 = 0u;
            v257 = 0u;
            *&v181 = 0;
            v179 = 0u;
            v180 = 0u;
            v178 = 0u;
            v84 = v166;
            v85 = v167;
LABEL_116:
            KF_createMeasurementNoiseCovMatrix(v11, v16, v10 + 72, v82, v11 + 84184, v10 + 16, v83, v12, v84);
            KF_calcConsisGains(v11);
            KF_sendMeas2Checker(v11, v16, v10 + 16, &v257, v12, v82, &v178);
LABEL_173:
            v100 = 0;
LABEL_174:
            if (*v12)
            {
              v105 = 0;
              v106 = 0;
              v107 = *(v12 + 1);
              v108 = 0.0;
              do
              {
                v109 = v105;
                v110 = *(v12 + 1);
                if (v107)
                {
                  do
                  {
                    v108 = v108 + *(v11 + 117104 + 8 * v109++);
                    --v110;
                  }

                  while (v110);
                }

                ++v106;
                v105 += v107;
              }

              while (v106 != *v12);
              if (v108 > 0.0)
              {
                v111 = v35;
                v256 = 0;
                v255 = 0u;
                v254 = 0u;
                v253 = 0u;
                v252 = 0u;
                v251 = 0u;
                v250 = 0u;
                v249 = 0u;
                v248 = 0u;
                v247 = 0u;
                v246 = 0u;
                v245 = 0u;
                v244 = 0u;
                v243 = 0u;
                v242 = 0u;
                memset(__x, 0, sizeof(__x));
                v112 = 0.0;
                Mat_Eq_Scalar(0.0, 6, v12, 0x20, __x);
                if (LODWORD(__x[0]))
                {
                  v113 = 0;
                  v114 = 0;
                  do
                  {
                    v115 = v113;
                    v116 = DWORD1(__x[0]);
                    if (DWORD1(__x[0]))
                    {
                      do
                      {
                        v112 = v112 + *(__x + ++v115);
                        --v116;
                      }

                      while (v116);
                    }

                    ++v114;
                    v113 += DWORD1(__x[0]);
                  }

                  while (v114 != LODWORD(__x[0]));
                  if (v112 > 0.1)
                  {
                    if (Find_First_NonZero_in_Vector_Starting_At(6, v12, 0) == -1)
                    {
                      if (g_FPE_LogSeverity)
                      {
                        v117 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                        if (g_TCU)
                        {
                          v118 = *(g_TCU + 8);
                        }

                        else
                        {
                          v118 = 0.0;
                        }

                        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f could not find any non-zero elemnts in measIndex!", "KF_filterMeasByIndex", 1377, v117, v118);
                      }

                      g_FPE_AssertFlag = 1;
                    }

                    else
                    {
                      Filter_Rows_from_Mat(6, &v183, 6, v12);
                      Filter_Rows_from_Mat(1024, v83, 6, v12);
                      Filter_Cols_from_Mat(1024);
                      Filter_Rows_from_Mat(1024, (v11 + 84184), 6, v12);
                      Filter_Rows_from_Mat(6, (v11 + 100584), 6, v12);
                    }
                  }
                }

                *&v176 = 0;
                v174 = 0u;
                v175 = 0u;
                v173 = 0u;
                Copy_SubMat_from_Mat(1.0, 32, v11, 28, 0, 4, 1, 6, &v173);
                v119 = *(v11 + 224);
                bzero(__x, 0x2008uLL);
                bzero(v225, 0x2008uLL);
                Mult_Mat_MatT(1024);
                Mult_Mat_Mat(1024);
                Add_Mat(1024, __x, 1024, v83, 0x400, __x);
                Invert_Mat(1024);
                Mult_Mat_Mat(1024);
                v224 = 0;
                v223 = 0u;
                v222 = 0u;
                v221 = 0u;
                v220 = 0u;
                v219 = 0u;
                v218 = 0u;
                v217 = 0u;
                v216 = 0u;
                v215 = 0u;
                v214 = 0u;
                v213 = 0u;
                v212 = 0u;
                v211 = 0u;
                v210 = 0u;
                v209 = 0u;
                v208 = 0u;
                Sub_Mat(6, &v183, 6, (v11 + 100584), 0x20, &v208);
                bzero(&v203, 0x2008uLL);
                Mult_Mat_Mat(1024);
                Add_Mat(32, v11, 1024, &v203, 0x20, v11);
                Mult_Mat_Mat(1024);
                Mult_Mat_Mat(1024);
                Sub_Mat(1024, (v11 + 264), 1024, __x, 0x400, (v11 + 264));
                if (v85)
                {
                  *&v243 = 0;
                  v242 = 0u;
                  memset(__x, 0, sizeof(__x));
                  Copy_SubMat_from_Mat(1.0, 32, v11, 28, 0, 4, 1, 6, __x);
                  *&v227 = 0;
                  v226 = 0u;
                  memset(v225, 0, sizeof(v225));
                  Sub_Mat(6, __x, 6, &v173, 6, v225);
                  v120 = *(v11 + 224) - v119;
                  v203 = 0u;
                  v204 = 0u;
                  Copy_SubMat_from_Mat(1.0, 32, v11, 6, 0, 3, 1, 3, &v203);
                  Transpose_Mat(3);
                  v121 = Dot_Vec_Vec(3, &v203, 3, v162 + 144 * v100 + 17520);
                  if (LODWORD(v225[0].f64[0]))
                  {
                    v122 = 0;
                    v123 = 0;
                    v124 = 0.0;
                    do
                    {
                      v125 = v122;
                      v126 = HIDWORD(v225[0].f64[0]);
                      if (HIDWORD(v225[0].f64[0]))
                      {
                        do
                        {
                          v124 = v124 + v225[0].f64[++v125];
                          --v126;
                        }

                        while (v126);
                      }

                      ++v123;
                      v122 += HIDWORD(v225[0].f64[0]);
                    }

                    while (v123 != LODWORD(v225[0].f64[0]));
                  }

                  else
                  {
                    v124 = 0.0;
                  }

                  v127 = v162 + 8 * v100;
                  *(v162 + 144 * v100 + 17552) = *(v127 + 2808) + v121 + v124;
                  v209 = 0u;
                  v208 = 0u;
                  Copy_SubMat_from_Mat(1.0, 32, v11, 3, 0, 3, 1, 3, &v208);
                  Transpose_Mat(3);
                  *(v162 + 144 * v100 + 17560) = *(v127 + 8384) + v120 + Dot_Vec_Vec(3, &v208, 3, v162 + 144 * v100 + 17520);
                }

                v35 = v111;
              }
            }

            KF_ApplyCorrectionsFromKalmanFullStates(v11);
            if (v85)
            {
              v128 = v162 + 144 * v100;
              Set_Mat_Const(3, 1u, 3, (v128 + 17568), 0.0);
              Set_Mat_Const(3, 1u, 3, (v128 + 17600), 0.0);
              Copy_Mat(3, (v11 + 17008), 3, (v128 + 17568));
              Copy_Mat(3, (v11 + 16944), 3, (v128 + 17600));
              v129 = *(v11 + 8 + 8 * (28 * *(v11 + 4)));
              *(v128 + 17632) = v129;
              v130 = *(v10 + 132);
              if ((v130 | 4) != 4)
              {
                *(v128 + 17632) = v129 + *(v11 + 8 + 8 * (v130 + 28));
              }

              *(v128 + 17640) = *(v11 + 224);
            }

            if (v163)
            {
              v131 = *(v10 + 132);
              v132 = KF_reduceSvInd(*(v10 + 128), v131);
              if (v132)
              {
                v133 = v132 + 37 * v131 - 1;
                *(v11 + 8 * v133 + 34568) = *(v11 + 17192);
                *(v11 + v133 + 34376) = 1;
                v134 = v11 + 24 * v133;
                *(v134 + 36048) = *v165;
                *(v134 + 36064) = *(v11 + 17032);
              }
            }

            if (v35)
            {
              memset(__x, 0, sizeof(__x));
              Add_Mat(3, (v10 + 160), 3, (v10 + 128), 3, __x);
              Mult_Mat_scalar(0.5, 3, __x, 3, __x);
              *(v168 + 8) = *(v11 + 17192);
              *v168 = 1;
              *(v168 + 16) = *(__x + 8);
              *(v168 + 32) = *(&__x[1] + 1);
            }

            Set_Mat_Const(*v12, *(v12 + 1), 6, v171, -1.0);
            if (*v12)
            {
              v135 = 0;
              v136 = v11 + 117104;
              v137 = v171 + 2;
              do
              {
                if (CheckPassFlag(*(v136 + 8 * v135)))
                {
                  *&v137[2 * v135] = 0x3FF0000000000000;
                }

                if ((CheckPassFlag(*(v136 + 8 * v135)) & 1) == 0)
                {
                  *&v137[2 * v135] = 0;
                }

                ++v135;
              }

              while (v135 < *v12);
            }

            goto LABEL_220;
        }
      }

      if (g_FPE_LogSeverity)
      {
        v79 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v80 = *(g_TCU + 8);
        }

        else
        {
          v80 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f measType = %d is not supported!", "KF_createMeasExpectedValue", 981, v79, v80, v16);
      }

      g_FPE_AssertFlag = 1;
      v82 = v11 + 100640;
      Sub_Mat(6, (v11 + 100584), 6, &v183, 6, (v11 + 100640));
      *&v260 = 0;
      v83 = (v11 + 92384);
      v258 = 0u;
      v259 = 0u;
      v257 = 0u;
      *&v181 = 0;
      v179 = 0u;
      v180 = 0u;
      v178 = 0u;
      if (v16 <= 8)
      {
        v85 = v167;
        if (v16 == 7)
        {
          v84 = v166;
          goto LABEL_116;
        }
      }

      else
      {
        v85 = v167;
      }

      if (g_FPE_LogSeverity)
      {
        v94 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v95 = *(g_TCU + 8);
        }

        else
        {
          v95 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Unsupported case %d in creareR", "KF_ApplySingleMeas", 2067, v94, v95, v16);
      }

      v100 = 0;
      g_FPE_AssertFlag = 1;
      goto LABEL_174;
    }

    switch(v16)
    {
      case 9:
        Set_Mat_Const(3, 0x20u, 0x400, (v11 + 84184), 0.0);
        v58 = &v208;
        v59 = -1.0;
        v60 = (v11 + 84184);
        v61 = 9;
        break;
      case 0xA:
        v183 = 0u;
        v184 = 0u;
        Copy_SubMat_from_Mat(1.0, 32, v11, 21, 0, 3, 1, 3, &v183);
        v244 = 0u;
        v243 = 0u;
        v242 = 0u;
        memset(__x, 0, sizeof(__x));
        skewSimMat(&v183, __x);
        v228 = 0u;
        v227 = 0u;
        v226 = 0u;
        memset(v225, 0, sizeof(v225));
        createC_e_map((v10 + 128), (v10 + 160), v11 + 16832, v225, 0);
        Set_Mat_Const(4, 0x20u, 0x400, (v11 + 84184), 0.0);
        v178 = 0u;
        v179 = 0u;
        Copy_SubMat_from_Mat(1.0, 9, v225, 1, 0, 1, 3, 3, &v178);
        Copy_SubMat_to_Mat(-1.0, 3, &v178, 0, 6, 1024, (v11 + 84184));
        v260 = 0u;
        v261 = 0u;
        v258 = 0u;
        v259 = 0u;
        v257 = 0u;
        Mult_Mat_Mat(9);
        Copy_SubMat_to_Mat(-1.0, 9, &v257, 1, 0, 1024, (v11 + 84184));
        v58 = (v11 + 16672);
        v59 = -1.0;
        v60 = (v11 + 84184);
        v61 = 9;
        v62 = 1;
        v63 = 21;
        goto LABEL_98;
      case 0xB:
        Set_Mat_Const(1, 0x20u, 0x400, (v11 + 84184), 0.0);
        memset(__x, 0, sizeof(__x));
        Copy_SubMat_from_Mat(1.0, 9, (v11 + 16832), 2, 0, 1, 3, 3, __x);
        v58 = __x;
        v59 = 1.0;
        v60 = (v11 + 84184);
        v61 = 3;
        break;
      default:
LABEL_88:
        if (g_FPE_LogSeverity)
        {
          v67 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v68 = *(g_TCU + 8);
          }

          else
          {
            v68 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f measType = %d is not supported!", "KF_createMeasurementMatrix", 796, v67, v68, v16);
        }

        g_FPE_AssertFlag = 1;
        goto LABEL_99;
    }

    v62 = 0;
    v63 = 6;
    goto LABEL_98;
  }

LABEL_27:
  v35 = v16 == 10;
  v165 = v14;
  if (v16 == 10)
  {
    memset(__x, 0, sizeof(__x));
    Sub_Mat(3, (v10 + 160), 3, (v10 + 128), 3, __x);
    memset(v225, 0, sizeof(v225));
    Add_Mat(3, (v10 + 160), 3, (v10 + 128), 3, v225);
    Mult_Mat_scalar(0.5, 3, v225, 3, v225);
    v203 = 0u;
    v204 = 0u;
    Sub_Mat(3, (v11 + 17008), 3, v225, 3, &v203);
    v209 = 0u;
    v208 = 0u;
    v36 = Norma_Vec(3, __x);
    v257 = 0u;
    v258 = 0u;
    Mult_Mat_scalar(1.0 / v36, 3, __x, 3, &v257);
    Mult_MatT_Mat(3);
    v37 = *(&v208 + 1);
    if (*(&v208 + 1) < 0.0)
    {
      v37 = -*(&v208 + 1);
    }

    v38 = v36 * 0.5;
    v39 = 4.0;
    if (v37 > v38)
    {
      goto LABEL_38;
    }

    v39 = 2.0;
    if (*(v168 + 40) != 1)
    {
      goto LABEL_38;
    }

    v40 = *(v168 + 8);
    v41 = *v168;
    *(__x + 8) = *(v168 + 16);
    v42 = *(v168 + 32);
    *&__x[0] = 0x100000003;
    *(&__x[1] + 1) = v42;
    memset(v225, 0, sizeof(v225));
    Add_Mat(3, (v10 + 160), 3, (v10 + 128), 3, v225);
    Mult_Mat_scalar(0.5, 3, v225, 3, v225);
    Sub_Mat(3, __x, 3, v225, 3, v225);
    v43 = Norma_Vec(3, v225);
    v44 = *(v11 + 17192);
    v45 = v40 - v44;
    if (v40 - v44 < 0.0)
    {
      v45 = -(v40 - v44);
    }

    if (v44 >= 0.0 && v45 <= 60.0 && v43 <= 10.0 && (v41 & 1) != 0)
    {
LABEL_38:
      Set_Mat_Const(1, 1u, 6, v171, v39);
      LOBYTE(v18) = 0;
    }

LABEL_40:
    v46 = *(v10 + 8);
    if (v46 == 9)
    {
      memset(__x, 0, sizeof(__x));
      Sub_Mat(6, (v10 + 16), 3, (v11 + 17008), 3, __x);
      if (Norma2_Vec(3, __x) > 400000000.0)
      {
        if ((g_FPE_LogSeverity & 4) != 0)
        {
          mach_continuous_time();
          LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f Extreme ExtPos meas at time=%f: Diff=%f");
        }

        goto LABEL_124;
      }
    }

    else if (v46 == 10)
    {
      memset(__x, 0, sizeof(__x));
      memset(v225, 0, sizeof(v225));
      Sub_Mat(3, (v10 + 128), 3, (v11 + 17008), 3, __x);
      Sub_Mat(3, (v10 + 160), 3, (v11 + 17008), 3, v225);
      v47 = Norma2_Vec(3, __x);
      v48 = Norma2_Vec(3, v225);
      if (v47 >= v48)
      {
        v48 = v47;
      }

      if (v48 > 400000000.0)
      {
        if ((g_FPE_LogSeverity & 4) != 0)
        {
          mach_continuous_time();
          LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f Extreme MAP meas at time=%f: startDiff=%f endDiff=%f");
        }

LABEL_124:
        Set_Mat_Const(1, 1u, 6, v171, 3.0);
        goto LABEL_125;
      }
    }

    else
    {
      if (g_FPE_LogSeverity)
      {
        v52 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v53 = *(g_TCU + 8);
        }

        else
        {
          v53 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f MeasType %u is not expected here!", "KF_isGrossError", 3670, v52, v53, *(v10 + 8));
      }

      g_FPE_AssertFlag = 1;
    }

    if (!v18)
    {
      goto LABEL_125;
    }

    v163 = 0;
    goto LABEL_73;
  }

  if ((v16 - 9) < 2)
  {
    goto LABEL_40;
  }

  if (v18)
  {
    v163 = 0;
    v35 = 0;
    goto LABEL_73;
  }

LABEL_220:
  KF_LogStatistics(v11, v10, v171);
  v34 = 1;
  if (v16 != 4)
  {
    return v34;
  }

  v244 = 0u;
  v243 = 0u;
  v242 = 0u;
  memset(__x, 0, sizeof(__x));
  Mult_Mat_Mat(9);
  memset(v225, 0, sizeof(v225));
  Set_Mat_Size(3, v225, 3, 1);
  v138 = DWORD1(__x[0]);
  v139 = DWORD1(__x[0]);
  v172 = atan2(*(__x + ((2 * DWORD1(__x[0])) | 1u) + 1), *(__x + (2 * DWORD1(__x[0]) + 2) + 1));
  v140 = asin(*(&__x[v139] + 1));
  v141.f64[0] = v172;
  v141.f64[1] = v140;
  *(v225 + 8) = vmulq_f64(v141, vdupq_n_s64(0x404CA5DC1A63C1F8uLL));
  v225[1].f64[1] = atan2(*(__x + v138 + 1), *(__x + 1)) * 57.2957795;
  v142 = v15 - v12[46];
  if (v142 <= 0.0)
  {
    VecSet_3x1(3, v11 + 17760, 0.0, 0.0, 0.0);
    v145 = v165;
  }

  else
  {
    Sub_Mat(3, v225, 3, (v11 + 17728), 3, (v11 + 17760));
    v143 = 0;
    v144 = v11 + 17768;
    v145 = v165;
    do
    {
      v146 = *(v144 + v143);
      v147 = -360.0;
      if (v146 >= 180.0 || (v147 = 360.0, v146 < -180.0))
      {
        *(v144 + v143) = v146 + v147;
      }

      v143 += 8;
    }

    while (v143 != 24);
    Mult_Mat_scalar(1.0 / v142, 3, (v11 + 17760), 3, (v11 + 17760));
  }

  Copy_Mat(3, v225, 3, (v11 + 17728));
  v256 = 0;
  v255 = 0u;
  v254 = 0u;
  v253 = 0u;
  v252 = 0u;
  v251 = 0u;
  v250 = 0u;
  v249 = 0u;
  v248 = 0u;
  v247 = 0u;
  v246 = 0u;
  v245 = 0u;
  v244 = 0u;
  v243 = 0u;
  v242 = 0u;
  memset(__x, 0, sizeof(__x));
  v183 = 0u;
  v184 = 0u;
  Mult_Mat_Mat(9);
  v178 = 0u;
  v179 = 0u;
  Copy_SubMat_from_Mat(1.0, 32, v11, 21, 0, 3, 1, 3, &v178);
  v228 = 0u;
  v227 = 0u;
  v226 = 0u;
  memset(v225, 0, sizeof(v225));
  Mult_Mat_Mat(9);
  Mult_Mat_Mat(9);
  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  v203 = 0u;
  Copy_SubMat_from_Mat(1.0, 1024, (v11 + 264), 0, 0, 3, 3, 9, &v203);
  v212 = 0u;
  v211 = 0u;
  v210 = 0u;
  v209 = 0u;
  v208 = 0u;
  Mult_Mat_Mat(9);
  Mult_Mat_MatT(9);
  v260 = 0u;
  v261 = 0u;
  v258 = 0u;
  v259 = 0u;
  v257 = 0u;
  Copy_SubMat_from_Mat(1.0, 1024, (v11 + 264), 21, 21, 3, 3, 9, &v257);
  v173 = 0u;
  v174 = 0u;
  Copy_Mat_diag_to_Vec(9, &v257, 0, 0, 3, &v173);
  Sqrt_Mat(3, &v173, 3, &v173);
  v148 = *(&v208 + (2 * DWORD1(v208) + 2) + 1);
  if (v148 < 0.0)
  {
    if (g_FPE_LogSeverity)
    {
      v149 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v150 = *(g_TCU + 8);
      }

      else
      {
        v150 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "KF_consisPreprocessStates", 3523, v149, v150, v148);
    }

    g_FPE_AssertFlag = 1;
    v148 = 1.0;
  }

  if (sqrt(v148) >= 0.1 || (v151 = 1.0, (All_Mat_Smaller_Than(0.1, 3, &v173) & 1) == 0))
  {
    v151 = 0.0;
  }

  Set_Mat_Const(0xD, 1u, 0x20, __x, 0.0);
  *(__x + 1) = v151;
  Copy_SubMat_to_Mat(1.0, 3, &v183, 1, 0, 32, __x);
  v152 = DWORD1(v183) * v183 + 1;
  Copy_SubMat_to_Mat(1.0, 9, v225, v152, 0, 32, __x);
  v153 = v152 + HIDWORD(v225[0].f64[0]) * LODWORD(v225[0].f64[0]);
  Copy_SubMat_to_Mat(1.0, 3, v145 + 16, v153, 0, 32, __x);
  v154 = v153 + v145[17] * v145[16];
  Copy_SubMat_to_Mat(1.0, 3, v145 + 24, v154, 0, 32, __x);
  v155 = v154 + v145[25] * v145[24];
  if (v155 != 13)
  {
    if (g_FPE_LogSeverity)
    {
      v156 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v157 = *(g_TCU + 8);
      }

      else
      {
        v157 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Wrong number of elements (%u) were written to vector!", "KF_consisPreprocessStates", 3546, v156, v157, v155);
    }

    g_FPE_AssertFlag = 1;
  }

  *&__x[0] = vrev64_s32(*&__x[0]);
  v225[0].f64[0] = 0.0;
  v158 = CCH_Run(v11 + 48760);
  v159 = v225[0].f64[0];
  *v170 = v225[0].f64[0];
  ++*(v12 + 88);
  v12[45] = v159;
  if (*(v11 + 34368) == 1)
  {
    if (v158 || (*(v11 + 48752) & 1) == 0)
    {
      return 1;
    }
  }

  else if (v158)
  {
    return 1;
  }

  if ((g_FPE_LogSeverity & 4) != 0)
  {
    v160 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v161 = *(g_TCU + 8);
    }

    else
    {
      v161 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f Divergence detected with confidence %f at KF#%d", "KF_callConsistencyChecker", 3609, v160, v161, v225[0].f64[0], *(v168 + 44));
  }

  CCH_initStates((v11 + 48760));
  return 0;
}
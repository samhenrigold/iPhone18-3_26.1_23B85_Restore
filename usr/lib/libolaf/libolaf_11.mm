void KF_sendMeas2Checker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a2;
  v17 = *MEMORY[0x29EDCA608];
  Set_Mat_Size(6, a7, 0, 0);
  if (v11 == 9)
  {
    Mult_Mat_Mat(9);
    *a7 = vrev64_s32(*a7);
  }

  else if (v11 == 2)
  {
    if (*(a3 + 136) == 0.0 || *(a3 + 144) == 0.0 || *(a3 + 152) == 0.0 || *(a3 + 193) != 1)
    {
      Set_Mat_Const(1, 6u, 6, a7, NAN);
    }

    else
    {
      memset(v16, 0, sizeof(v16));
      Set_Mat_Size(3, v16, 3, 1);
      *(v16 + 8) = vmulq_f64(*(a3 + 136), vdupq_n_s64(0x404CA5DC1A63C1F8uLL));
      *(&v16[1] + 1) = *(a3 + 152);
      memset(v15, 0, sizeof(v15));
      InsUtil_Geo2ECEF_Iterative(v16, v15);
      Sub_Mat(3, (a1 + 17008), 3, v15, 3, v15);
      Mult_Mat_Mat(9);
      *a7 = vrev64_s32(*a7);
      Set_Mat_Size(6, a7, 1, 6);
      v13 = *(a3 + 168);
      if (v13 == 0.0 && *(a3 + 176) == 0.0 && *(a3 + 184) == 0.0 || *(a3 + 194) != 1)
      {
        *(a7 + 32) = vdupq_n_s64(0x7FF8000000000000uLL);
        v14 = 0x7FF8000000000000;
      }

      else
      {
        *(a7 + 32) = v13;
        *(a7 + 40) = *(a3 + 176);
        v14 = *(a3 + 184);
      }

      *(a7 + 48) = v14;
    }
  }

  CCH_insertMeas((a1 + 48760), v11, a3, a4, a5, a7);
}

void KF_calcConsisGains(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v65 = *MEMORY[0x29EDCA608];
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  ElMult_Mat_Mat(6, v6, 6, v6, 6, v62);
  v11 = (v7[1] * *v7);
  bzero(v61, 0x2008uLL);
  Set_Mat_Const(v11, v11, 0x400, v61, 0.0);
  Copy_Vec_to_Mat_diag(6, v62, 0, 0, 1, 1, 1024, v61);
  bzero(v60, 0x2008uLL);
  Mult_Mat_Mat(1024);
  Mult_Mat_MatT(1024);
  bzero(v59, 0x2008uLL);
  Add_Mat(1024, v60, 1024, v61, 0x400, v59);
  if (v9 > 8)
  {
    if ((v9 - 10) < 2)
    {
      Set_Mat_Size(6, v3, 0, 0);
      goto LABEL_37;
    }

    if (v9 == 9)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      Copy_SubMat_from_Mat(1.0, 1024, (v10 + 264), 6, 6, 3, 3, 9, &v39);
      v58 = 0u;
      v57 = 0u;
      v56 = 0u;
      v55 = 0u;
      v54 = 0u;
      Mult_Mat_Mat(9);
      Mult_Mat_MatT(9);
      Add_Mat(9, &v54, 1024, v61, 9, &v54);
      v53 = 0u;
      v52 = 0u;
      v51 = 0u;
      v50 = 0u;
      v49 = 0u;
      v48 = 0u;
      v47 = 0u;
      v46 = 0u;
      v45 = 0u;
      v44 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      Copy_SubMat_from_Mat(1.0, 9, &v54, 0, 0, 2, 2, 9, &v29);
      SVD_decomp(9, &v29, 9, &v49, 9, &v44, 9, &v34);
      memset(v28, 0, sizeof(v28));
      Copy_Mat_diag_to_Vec(9, &v44, 0, 0, 3, v28);
      Sqrt_Mat(3, v28, 3, v28);
      memset(v27, 0, sizeof(v27));
      Set_Mat_Const(2, 1u, 3, v27, 1.0);
      ElDiv_Mat_Mat(3, v27, 3, v28, 3, v28);
      Set_Mat_Const(2, 2u, 9, &v44, 0.0);
      Copy_Vec_to_Mat_diag(3, v28, 0, 0, 1, 1, 9, &v44);
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      Mult_Mat_Mat(9);
      bzero(v64, 0x2008uLL);
      Copy_SubMat_from_Mat(1.0, 9, &v22, 0, 0, 2, 1, 1024, v64);
      Mult_Mat_Mat(9);
      Mult_Mat_MatT(6);
      Mult_Mat_Mat(6);
      v12 = *(&v54 + (2 * DWORD1(v54) + 2) + 1);
      if (v12 < 0.0)
      {
        if (g_FPE_LogSeverity)
        {
          v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v14 = *(g_TCU + 8);
          }

          else
          {
            v14 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "KF_calcConsisGains", 3371, v13, v14, v12);
        }

        g_FPE_AssertFlag = 1;
        v12 = 1.0;
      }

      v19 = sqrt(v12);
      if (fabs(v19) <= 1.0e-30)
      {
        if (g_FPE_LogSeverity)
        {
          v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v21 = *(g_TCU + 8);
          }

          else
          {
            v21 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "KF_calcConsisGains", 3373, v20, v21, v19, 1.0e-30);
        }

        g_FPE_AssertFlag = 1;
        v19 = 1.0;
      }

      Set_Mat_Size(6, v3, 3, 1);
      *(v3 + 24) = *(&v23 + 1) / v19;
      goto LABEL_37;
    }

LABEL_14:
    if (g_FPE_LogSeverity)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Unsupported meas type %u !", "KF_calcConsisGains", 3387, v15, v16, v9);
    }

    g_FPE_AssertFlag = 1;
    goto LABEL_37;
  }

  if (v9 == 1)
  {
    bzero(v64, 0x2008uLL);
    Copy_Mat_diag_to_Vec(1024, v59, 0, 0, 1024, v64);
    Sqrt_Mat(1024, v64, 0x400, v64);
    ElDiv_Mat_Mat(6, v5, 1024, v64, 6, v3);
    goto LABEL_37;
  }

  if (v9 != 5)
  {
    if (v9 == 6)
    {
      v58 = 0u;
      v57 = 0u;
      v56 = 0u;
      v55 = 0u;
      v54 = 0u;
      Copy_SubMat_from_Mat(1.0, 1024, v59, 0, 0, 3, 3, 9, &v54);
      v50 = 0u;
      v49 = 0u;
      Copy_SubMat_from_Mat(1.0, 6, v5, 0, 0, 3, 1, 3, &v49);
      bzero(&v39, 0x2008uLL);
      bzero(v64, 0x2008uLL);
      Invert_Mat(9);
      Mult_Mat_Mat(1024);
      Mult_MatT_Mat(3);
      Sqrt_Mat(6, v3, 6, v3);
LABEL_37:
      *v3 = vrev64_s32(*v3);
      return;
    }

    goto LABEL_14;
  }

  memset(v64, 0, 80);
  Copy_SubMat_from_Mat(1.0, 1024, v59, 0, 0, 3, 3, 9, v64);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  SVD_decomp(9, v64, 9, &v39, 9, &v54, 9, &v49);
  if (DWORD1(v39) && v39)
  {
    v34 = 0u;
    v35 = 0u;
    Copy_Mat_diag_to_Vec(9, &v54, 0, 0, 3, &v34);
    Sqrt_Mat(3, &v34, 3, &v34);
    v29 = 0u;
    v30 = 0u;
    Set_Mat_Const(3, 1u, 3, &v29, 1.0);
    ElDiv_Mat_Mat(3, &v29, 3, &v34, 3, &v34);
    Set_Mat_Const(3, 3u, 9, &v54, 0.0);
    Copy_Vec_to_Mat_diag(3, &v34, 0, 0, 1, 1, 9, &v54);
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    Mult_Mat_Mat(9);
    Mult_Mat_MatT(9);
    v22 = 0u;
    v23 = 0u;
    Copy_SubMat_from_Mat(1.0, 6, v5, 0, 0, 3, 1, 3, &v22);
    Mult_Mat_Mat(9);
    goto LABEL_37;
  }

  if (g_FPE_LogSeverity)
  {
    v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v18 = *(g_TCU + 8);
    }

    else
    {
      v18 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f SVD decomposition failed!", "KF_calcConsisGains", 3289, v17, v18);
  }

  g_FPE_AssertFlag = 1;
}

uint64_t CheckPassFlag(double a1)
{
  if (fabs(a1) < 1.0e-30)
  {
    return 0;
  }

  if (fabs(a1 + -1.0) < 1.0e-30)
  {
    return 1;
  }

  if (g_FPE_LogSeverity)
  {
    v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v4 = *(g_TCU + 8);
    }

    else
    {
      v4 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input to CheckPassFlag is %f, which is not 0.0 nor 1.0", "CheckPassFlag", 134, v3, v4, a1);
  }

  result = 0;
  g_FPE_AssertFlag = 1;
  return result;
}

uint64_t KF_LogStatistics(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = (result + 117328);
  v6 = *(a2 + 8);
  if (v6 <= 7)
  {
    if ((v6 - 1) < 4)
    {
      return result;
    }

    if ((v6 - 5) < 2)
    {
      *(result + 117424) = 1;
      if (*(result + 117432) != 1 || (result = Any_Mat_Not_Equal_To(6, a3, 1, 0), !result))
      {
        *(v5 + 25) = 0;
LABEL_34:
        *(v5 + 14) = *a2;
        return result;
      }

      result = Any_Mat_Equal_To(6, a3, 0, 0);
      if (!result)
      {
        goto LABEL_34;
      }

      v5[104] = 0;
      if (v6 == 5)
      {
        *(v5 + 25) = 1000;
        v7 = g_FPE_LogSeverity;
        if ((g_FPE_LogSeverity & 8) != 0)
        {
          v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v9 = *(g_TCU + 8);
          }

          else
          {
            v9 = 0.0;
          }

          result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Unmount while moving (%f)", "KF_LogStatistics", 3042, v8, v9, *(a2 + 128));
          v7 = g_FPE_LogSeverity;
        }

        if ((v7 & 0x200) != 0)
        {
          result = LC_LOG_NMEA_GENERIC("%s,KFMC1,%d,%.1f");
        }
      }

      else
      {
        result = All_Mat_Equal_To(6, a3, 0, 0);
        if (result)
        {
          *(v5 + 25) = 1002;
          v41 = g_FPE_LogSeverity;
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            v42 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            if (g_TCU)
            {
              v43 = *(g_TCU + 8);
            }

            else
            {
              v43 = 0.0;
            }

            result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Bad frozen indication, and unmount (%f)", "KF_LogStatistics", 3051, v42, v43, *(a2 + 128));
            v41 = g_FPE_LogSeverity;
          }

          if ((v41 & 0x200) != 0)
          {
            result = LC_LOG_NMEA_GENERIC("%s,KFMC2,%d,%.1f");
          }
        }

        else
        {
          result = Any_Mat_Equal_To(6, a3, 0, 3u);
          if (result)
          {
            *(v5 + 25) = 1004;
            v44 = g_FPE_LogSeverity;
            if ((g_FPE_LogSeverity & 8) != 0)
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

              result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Bad frozen indication (%f)", "KF_LogStatistics", 3058, v45, v46, *(a2 + 128));
              v44 = g_FPE_LogSeverity;
            }

            if ((v44 & 0x200) != 0)
            {
              result = LC_LOG_NMEA_GENERIC("%s,KFMC3,%d,%.1f");
            }
          }

          else
          {
            *(v5 + 25) = 1006;
            v47 = g_FPE_LogSeverity;
            if ((g_FPE_LogSeverity & 8) != 0)
            {
              v48 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              if (g_TCU)
              {
                v49 = *(g_TCU + 8);
              }

              else
              {
                v49 = 0.0;
              }

              result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Unmount while frozen (%f)", "KF_LogStatistics", 3065, v48, v49, *(a2 + 128));
              v47 = g_FPE_LogSeverity;
            }

            if ((v47 & 0x200) != 0)
            {
              result = LC_LOG_NMEA_GENERIC("%s,KFMC4,%d,%.1f");
            }
          }
        }
      }

      if (*(a2 + 128) <= 0.0)
      {
        goto LABEL_34;
      }

      v50 = *(v5 + 25);
      if (v50 > 1003)
      {
        if (v50 == 1004)
        {
          v51 = 1005;
          goto LABEL_124;
        }

        if (v50 == 1006)
        {
          v51 = 1007;
          goto LABEL_124;
        }
      }

      else
      {
        if (v50 == 1000)
        {
          v51 = 1001;
          goto LABEL_124;
        }

        if (v50 == 1002)
        {
          v51 = 1003;
LABEL_124:
          *(v5 + 25) = v51;
          goto LABEL_34;
        }
      }

      if ((g_FPE_LogSeverity & 8) != 0)
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

        result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f MOTC no newStateCount", "KF_LogStatistics", 3088, v52, v53);
      }

      goto LABEL_34;
    }

    if (!v6)
    {
      *(result + 117400) = 1;
      *(result + 117408) = 1;
      *(result + 117404) = 0;
      *(result + 117416) = *a2;
      return result;
    }

    goto LABEL_38;
  }

  if (v6 <= 9)
  {
    if (v6 != 8)
    {
      v18 = *(a3 + 8);
      v11 = v18 < 0.0;
      v19 = floor(v18 + 0.5);
      v20 = -floor(0.5 - v18);
      if (!v11)
      {
        v20 = v19;
      }

      *(result + 117352) = 1;
      *(result + 117360) = v20 == 1;
      *(result + 117356) = 0;
      *(result + 117368) = *a2;
      if (v20 == 3)
      {
        *(result + 117356) = 1012;
        v32 = g_FPE_LogSeverity;
        if ((g_FPE_LogSeverity & 8) != 0)
        {
          v33 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v34 = *(g_TCU + 8);
          }

          else
          {
            v34 = 0.0;
          }

          result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f POS ignored, Gross Error Detected", "KF_LogStatistics", 3012, v33, v34);
          v32 = g_FPE_LogSeverity;
        }

        if ((v32 & 0x200) != 0)
        {
          return LC_LOG_NMEA_GENERIC("%s,KFPOS2,%d");
        }
      }

      else if (!v20)
      {
        *(result + 117356) = 1013;
        v21 = g_FPE_LogSeverity;
        if ((g_FPE_LogSeverity & 4) != 0)
        {
          v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v23 = *(g_TCU + 8);
          }

          else
          {
            v23 = 0.0;
          }

          result = LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f POS ignored, outside of 5-sigma threshold", "KF_LogStatistics", 3006, v22, v23);
          v21 = g_FPE_LogSeverity;
        }

        if ((v21 & 0x200) != 0)
        {
          return LC_LOG_NMEA_GENERIC("%s,KFPOS3,%d");
        }
      }
    }
  }

  else
  {
    switch(v6)
    {
      case 12:
        return result;
      case 11:
        v24 = *(a3 + 8);
        v11 = v24 < 0.0;
        v25 = floor(v24 + 0.5);
        v26 = -floor(0.5 - v24);
        if (!v11)
        {
          v26 = v25;
        }

        *(result + 117376) = 1;
        *(result + 117384) = v26 == 1;
        *(result + 117380) = 0;
        *(result + 117392) = *a2;
        break;
      case 10:
        v10 = *(a3 + 8);
        v11 = v10 < 0.0;
        v12 = floor(v10 + 0.5);
        v13 = -floor(0.5 - v10);
        if (!v11)
        {
          v13 = v12;
        }

        v14 = v13;
        *v5 = 1;
        *(result + 117336) = v13 == 1;
        *(result + 117332) = 0;
        if (v13 > 2)
        {
          if (v14 == 3)
          {
            *(result + 117332) = 1010;
            v38 = g_FPE_LogSeverity;
            if ((g_FPE_LogSeverity & 8) != 0)
            {
              v39 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              if (g_TCU)
              {
                v40 = *(g_TCU + 8);
              }

              else
              {
                v40 = 0.0;
              }

              result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f MAP ignored, Gross Error Detected", "KF_LogStatistics", 2992, v39, v40);
              v38 = g_FPE_LogSeverity;
            }

            if ((v38 & 0x200) != 0)
            {
              result = LC_LOG_NMEA_GENERIC("%s,KFMAP3,%d");
            }
          }

          else if (v14 == 4)
          {
            *(result + 117332) = 1009;
            v29 = g_FPE_LogSeverity;
            if ((g_FPE_LogSeverity & 8) != 0)
            {
              v30 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              if (g_TCU)
              {
                v31 = *(g_TCU + 8);
              }

              else
              {
                v31 = 0.0;
              }

              result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f MAP ignored, outside of Interval", "KF_LogStatistics", 2986, v30, v31);
              v29 = g_FPE_LogSeverity;
            }

            if ((v29 & 0x200) != 0)
            {
              result = LC_LOG_NMEA_GENERIC("%s,KFMAP2,%d");
            }
          }
        }

        else if (v14)
        {
          if (v14 == 2)
          {
            *(result + 117332) = 1008;
            v15 = g_FPE_LogSeverity;
            if ((g_FPE_LogSeverity & 8) != 0)
            {
              v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              if (g_TCU)
              {
                v17 = *(g_TCU + 8);
              }

              else
              {
                v17 = 0.0;
              }

              result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f MAP ignored due to correlation", "KF_LogStatistics", 2974, v16, v17);
              v15 = g_FPE_LogSeverity;
            }

            if ((v15 & 0x200) != 0)
            {
              result = LC_LOG_NMEA_GENERIC("%s,KFMAP1,%d");
            }
          }
        }

        else
        {
          *(result + 117332) = 1011;
          v35 = g_FPE_LogSeverity;
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            v36 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            if (g_TCU)
            {
              v37 = *(g_TCU + 8);
            }

            else
            {
              v37 = 0.0;
            }

            result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f MAP ignored, outside of 5-sigma threshold", "KF_LogStatistics", 2980, v36, v37);
            v35 = g_FPE_LogSeverity;
          }

          if ((v35 & 0x200) != 0)
          {
            result = LC_LOG_NMEA_GENERIC("%s,KFMAP4,%d");
          }
        }

        *(v5 + 2) = *a2;
        break;
      default:
LABEL_38:
        if (g_FPE_LogSeverity)
        {
          v27 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v28 = *(g_TCU + 8);
          }

          else
          {
            v28 = 0.0;
          }

          result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Meas %u is not logged for Statistics", "KF_LogStatistics", 3111, v27, v28, v6);
        }

        g_FPE_AssertFlag = 1;
        return result;
    }
  }

  return result;
}

double KF_initializeKalmanFilterCarMode(uint64_t a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = a1 + 67368;
  v6 = a1 + 48744;
  v7 = a1 + 40488;
  if ((*(a1 + 67656) & 1) == 0)
  {
    v8 = (a1 + 117320);
    *(a1 + 67656) = 1;
    *(a1 + 17960) = 1;
    *(a1 + 40528) = 16843009;
    *(a1 + 40532) = a3;
    Set_Mat_Const(0x20, 1u, 0x20, a1, 0.0);
    Set_Mat_Const(0x20, 0x20u, 0x400, (a1 + 264), 0.0);
    Set_Mat_Const(0x20, 0x20u, 0x400, (a1 + 8464), 0.0);
    Set_Mat_Const(6, 1u, 6, (a1 + 17792), 0.0);
    Set_Mat_Const(6, 1u, 6, (a1 + 17848), 0.0);
    Set_Mat_Const(6, 1u, 6, (a1 + 17904), 0.0);
    Set_Mat_Const(0x20, 0x20u, 0x400, (a1 + 17968), 0.0);
    Set_Mat_Const(0x20, 0x20u, 0x400, (a1 + 26168), 0.0);
    *(a1 + 117324) = 0;
    Set_Mat_Const(0x20, 0x20u, 0x400, (a1 + 67728), 0.0);
    Set_Mat_Const(0x20, 0x20u, 0x400, (a1 + 75928), 0.0);
    Set_Mat_Const(6, 1u, 6, (a1 + 84128), 0.0);
    Set_Mat_Const(0x20, 0x20u, 0x400, (a1 + 84184), 0.0);
    Set_Mat_Const(0x20, 0x20u, 0x400, (a1 + 92384), 0.0);
    Set_Mat_Const(6, 1u, 6, (a1 + 100584), 0.0);
    Set_Mat_Const(6, 1u, 6, (a1 + 100640), 0.0);
    Set_Mat_Const(0x20, 0x20u, 0x400, (a1 + 100696), 0.0);
    Set_Mat_Const(0x20, 0x20u, 0x400, (a1 + 108896), 0.0);
    Set_Mat_Const(6, 1u, 6, (a1 + 117096), 0.0);
    Set_Mat_Const(6, 1u, 6, (a1 + 117152), 0.0);
    Set_Mat_Const(6, 1u, 6, (a1 + 117208), 0.0);
    Set_Mat_Const(6, 1u, 6, (a1 + 117264), 0.0);
    *v8 = 12;
    Copy_Mat(6, a2, 6, (a1 + 17792));
    Copy_Mat(6, (a2 + 56), 6, (a1 + 17848));
    Copy_Mat(6, (a2 + 112), 6, (a1 + 17904));
    Copy_Mat(1024, (a2 + 456), 0x400, (a1 + 40544));
    v9 = *(a2 + 168);
    *(a1 + 17960) = v9;
    Set_Mat_Const(v9, v9, 0x400, (a1 + 26168), 0.0);
    KF_createSystemModelMatrix(a1);
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    Set_Mat_Const(*(a1 + 17960), 1u, 0x20, v14, 0.0);
    v10.i32[0] = *(a2 + 173);
    v11 = vmovl_u8(v10).u64[0];
    v12 = vext_s8(v11, v11, 6uLL);
    *(v7 + 40) = vuzp1_s8(v12, v12).u32[0];
    *(v6 + 8) = 1;
  }

  INS_Init(a1 + 16664, *(a2 + 172), *(a2 + 177), (a2 + 192), *(a2 + 184));
  CCH_initStates((a1 + 48760));
  *v5 = &sCCH_NeuralNWModel;
  *(a1 + 34368) = 1;
  *(a1 + 34376) = 0u;
  *(a1 + 34392) = 0u;
  *(a1 + 34408) = 0u;
  *(a1 + 34424) = 0u;
  *(a1 + 34440) = 0u;
  *(a1 + 34456) = 0u;
  *(a1 + 34472) = 0u;
  *(a1 + 34488) = 0u;
  *(a1 + 34504) = 0u;
  *(a1 + 34520) = 0u;
  *(a1 + 34536) = 0u;
  *(a1 + 34545) = 0u;
  *v7 = 0;
  Set_Mat_Const(0x20, 1u, 0x20, (a1 + 67384), 1.0);
  *(v5 + 280) = 0x7FF8000000000000;
  *v6 = 0xC08F380000000000;
  *(v5 + 352) = 0;
  *(v7 + 48) = 0;
  *(v5 + 289) = 1;
  KF_ResetStatistics(a1);
  Set_Mat_Const(6, 1u, 6, (a1 + 67664), -999.0);
  return result;
}

uint64_t KF_ResetStatistics(uint64_t result)
{
  *(result + 117424) = 0;
  *(result + 117428) = 0;
  *(result + 117440) = 0;
  *(result + 117376) = 0;
  *(result + 117380) = 0;
  *(result + 117384) = 0;
  *(result + 117392) = 0;
  *(result + 117352) = 0;
  *(result + 117356) = 0;
  *(result + 117360) = 0;
  *(result + 117368) = 0;
  *(result + 117328) = 0;
  *(result + 117332) = 0;
  *(result + 117336) = 0;
  *(result + 117344) = 0;
  *(result + 117400) = 0;
  *(result + 117404) = 0;
  *(result + 117408) = 0;
  *(result + 117416) = 0;
  *(result + 117432) = 1;
  *(result + 117448) = 0;
  *(result + 117456) = 0;
  return result;
}

void KF_prepOutput(uint64_t a1, char *a2, double a3)
{
  v44 = *MEMORY[0x29EDCA608];
  v6 = a2 + 0x2000;
  v7 = a1 + 0x10000;
  bzero(a2, 0x23E8uLL);
  memset(v43, 0, sizeof(v43));
  Mult_Mat_Mat(9);
  v41 = 0u;
  v42 = 0u;
  memset(v40, 0, sizeof(v40));
  Copy_SubMat_from_Mat(1.0, 32, a1, 21, 0, 3, 1, 3, v40);
  Mult_Mat_Mat(9);
  v8 = Norma_Vec(3, &v41);
  memset(v39, 0, sizeof(v39));
  Copy_Mat_diag_to_Vec(1024, (a1 + 264), 0x15u, 3, 3, v39);
  Sqrt_Mat(3, v39, 3, v39);
  v9 = All_Mat_Smaller_Than(0.5, 3, v39);
  if (v8 > 1.0e-30 && v9 & 1 | ((*(v7 + 2121) & 1) == 0))
  {
    Mult_Mat_scalar(1.0 / v8, 3, &v41, 3, &v41);
    *(a2 + 10) = atan2(*&v42, *(&v41 + 1));
    v6[258] = 1;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    Copy_SubMat_from_Mat(1.0, 1024, (a1 + 264), 21, 21, 3, 3, 9, &v34);
    Mult_Mat_Mat(9);
    Mult_Mat_MatT(9);
    *(v7 + 2121) = 0;
  }

  else
  {
    Set_Mat_I(3, 9, a2 + 2154, 1.0);
    *(a2 + 10) = 0;
    v6[258] = 0;
    *(v7 + 2121) = 1;
  }

  Transpose_Mat(3);
  Transpose_Mat(3);
  v10 = *(a1 + 17192);
  *(a2 + 8) = v10;
  *(a2 + 9) = v10;
  Transpose_Mat(9);
  Copy_Mat(9, v43, 9, a2 + 42);
  Copy_Mat(1024, (a1 + 264), 0x400, a2 + 62);
  Copy_SubMat_from_Mat(1.0, 1024, (a1 + 264), 6, 6, 3, 3, 9, a2 + 2114);
  Copy_SubMat_from_Mat(1.0, 1024, (a1 + 264), 3, 3, 3, 3, 9, a2 + 2134);
  Copy_SubMat_from_Mat(1.0, 1024, (a1 + 264), 27, 27, 5, 5, 36, a2 + 2174);
  v11 = 1;
  Copy_SubMat_from_Mat(1.0, 32, a1, 27, 0, 5, 1, 6, a2 + 2248);
  v6[257] = 1;
  *(a2 + 566) = *(a1 + 117328);
  v12 = *(a1 + 117344);
  v13 = *(a1 + 117360);
  v14 = *(a1 + 117376);
  *(a2 + 570) = *(a1 + 117392);
  *(a2 + 569) = v14;
  *(a2 + 568) = v13;
  *(a2 + 567) = v12;
  v15 = *(a1 + 117408);
  v16 = *(a1 + 117424);
  v17 = *(a1 + 117440);
  *(a2 + 1148) = *(a1 + 117456);
  *(a2 + 573) = v17;
  *(a2 + 572) = v16;
  *(a2 + 571) = v15;
  v6[259] = 1;
  v18 = *(a1 + 17192);
  if (v18 < a3)
  {
    v19 = a3 - v18;
    memset(v33, 0, sizeof(v33));
    Mult_Mat_scalar(a3 - v18, 3, (a1 + 16944), 3, v33);
    memset(v32, 0, sizeof(v32));
    Add_Mat(3, (a1 + 17008), 3, v33, 3, v32);
    v20 = Norma_Vec(3, v33);
    if (v19 > 5.0 || v19 > 2.0 && v20 > 15.0)
    {
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

        LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f Extrapolate INVALID dt=%0.1fs dr=%0.2fm", "KF_prepOutput", 2665, v21, v22, v19, v20);
      }

      v6[259] = 0;
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    Copy_SubMat_from_Mat(1.0, 1024, (a1 + 264), 6, 6, 3, 3, 9, &v34);
    memset(v31, 0, sizeof(v31));
    Copy_SubMat_from_Mat(v19 * v19, 1024, (a1 + 264), 3, 3, 3, 3, 9, v31);
    memset(v30, 0, sizeof(v30));
    Copy_SubMat_from_Mat(v19 + v19, 1024, (a1 + 264), 6, 3, 3, 3, 9, v30);
    memset(v29, 0, sizeof(v29));
    Add_Mat(9, v31, 9, v30, 9, v29);
    Add_Mat(9, v29, 9, &v34, 9, v29);
    Copy_SubMat_to_Mat(1.0, 9, v29, 6, 6, 1024, a2 + 62);
    *(a2 + 9) = a3;
    Transpose_Mat(3);
    *(a2 + 8) = a3;
  }

  v6[262] = 1;
  v23 = *(v7 + 2136);
  v24 = *(v7 + 2136 + 8 * (*(v7 + 2132) * *(v7 + 2128) - 1));
  if (vabdd_f64(v23, v24) < 180.0 && v23 - v24 != 0.0 && *(a1 + 17192) - v23 < 80.0)
  {
    v11 = 0;
    v6[262] = 0;
  }

  v25 = *(a2 + 1);
  if (v25 <= -1.79769313e308 || v25 >= 1.79769313e308)
  {
    if (g_FPE_LogSeverity)
    {
      v27 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v28 = *(g_TCU + 8);
      }

      else
      {
        v28 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f FPE output position has non valid value: %f", "KF_prepOutput", 2716, v27, v28, *(a2 + 1));
    }

    v26 = 0;
    g_FPE_AssertFlag = 1;
    v6[257] = 0;
  }

  else if ((v6[257] & 1) != 0 && v6[258] == 1)
  {
    v26 = v11 & v6[259];
  }

  else
  {
    v26 = 0;
  }

  v6[256] = v26;
}

void KF_initKFafterLeveling(uint64_t a1, unsigned int *a2, unsigned int *a3, double *a4, int *a5, double *a6, unsigned int *a7, _DWORD *a8, double a9)
{
  *(a1 + 17192) = a9;
  INS_InitAfterLeveling(a1 + 16664, a4, a5, a6, a7, a8);
  Copy_Mat(32, a2, 0x20, a1);
  Copy_Mat(1024, a3, 0x400, (a1 + 264));
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
}

void KF_softResetCmd(uint64_t a1, int a2, double a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v6 = a1 + 0x10000;
  v19 = 0;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v10 = xmmword_29972AC70;
  v11 = 23;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        Set_Mat_Cols_By_Idx(0.0, 1024, (a1 + 264), &v10);
        Set_Mat_Rows_By_Idx(0.0, 1024, (a1 + 264), &v10);
        memset(v9, 0, sizeof(v9));
        Copy_SubMat_from_Mat(1.0, 1024, (a1 + 40544), 21, 21, 3, 3, 9, v9);
        Copy_SubMat_to_Mat(1.0, 9, v9, 21, 21, 1024, (a1 + 264));
        return;
      }

      if (a2 == 4)
      {
        *(a1 + 34545) = 0u;
        *(a1 + 34520) = 0u;
        *(a1 + 34536) = 0u;
        *(a1 + 34488) = 0u;
        *(a1 + 34504) = 0u;
        *(a1 + 34456) = 0u;
        *(a1 + 34472) = 0u;
        *(a1 + 34424) = 0u;
        *(a1 + 34440) = 0u;
        *(a1 + 34392) = 0u;
        *(a1 + 34408) = 0u;
        *(a1 + 34376) = 0u;
        return;
      }

      goto LABEL_15;
    }

    Set_Mat_Const(0x20, 1u, 0x20, (a1 + 67384), 10.0);
    goto LABEL_10;
  }

  if (a2)
  {
    if (a2 != 1)
    {
LABEL_15:
      if (g_FPE_LogSeverity)
      {
        v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v8 = *(g_TCU + 8);
        }

        else
        {
          v8 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input type %u not supported!", "KF_softResetCmd", 3206, v7, v8, a2);
      }

      g_FPE_AssertFlag = 1;
      return;
    }

    *(a1 + 67560) = vdupq_n_s64(0x40F86A0000000000uLL);
    *(a1 + 67576) = 0x40F86A0000000000;
LABEL_10:
    *(v6 + 2112) = a3;
    return;
  }

  Mult_Mat_scalar(a3, 1024, (a1 + 264), 0x400, (a1 + 264));

  KF_ApplyCorrectionsFromKalmanFullStates(a1);
}

double posp_TimerInit(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "PSP", 68, "posp_TimerInit");
    LbsOsaTrace_WriteLog(0x13u, __str, v1, 5, 1);
  }

  g_PospTmrData = 0;
  g_PospTmrData = 0;
  g_PospTmrData = 0;
  g_PospTmrData = -1;
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v3), "PSP", 68, "posp_TimerInit");
    LbsOsaTrace_WriteLog(0x13u, __str, v4, 5, 1);
  }

  return result;
}

uint64_t posp_StartTimer(uint64_t (*a1)(void, void, __n128), int a2, unsigned int a3, int a4)
{
  v23 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 68, "posp_StartTimer");
    LbsOsaTrace_WriteLog(0x13u, __str, v9, 5, 1);
  }

  if (g_PospTmrData == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Timer In Use\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 69, "posp_StartTimer", 770);
      LbsOsaTrace_WriteLog(0x13u, __str, v11, 0, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
      return 0;
    }

    goto LABEL_12;
  }

  if (AgpsFsmStartTimer(8716550, a3))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 69, "posp_StartTimer", 1544);
      LbsOsaTrace_WriteLog(0x13u, __str, v13, 0, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
      return 0;
    }

LABEL_12:
    bzero(__str, 0x410uLL);
    v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v14, "PSP", 68, "posp_StartTimer");
    LbsOsaTrace_WriteLog(0x13u, __str, v15, 5, 1);
    return 0;
  }

  g_PospTmrData = 1;
  g_PospTmrData = a1;
  g_PospTmrData = a4;
  g_PospTmrData = a2;
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TmrStart,TmId,%u\n", (*&g_MacClockTicksToMsRelation * v18), "PSP", 73, "posp_StartTimer", g_PospTmrData);
    LbsOsaTrace_WriteLog(0x13u, __str, v19, 4, 1);
  }

  if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    return 1;
  }

  bzero(__str, 0x410uLL);
  v20 = mach_continuous_time();
  v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "PSP", 68, "posp_StartTimer");
  v16 = 1;
  LbsOsaTrace_WriteLog(0x13u, __str, v21, 5, 1);
  return v16;
}

uint64_t posp_StopTimer(int a1, int a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 68, "posp_StopTimer");
    LbsOsaTrace_WriteLog(0x13u, __str, v5, 5, 1);
  }

  if (a2 == 1 && g_PospTmrData != a1 && g_PospTmrData == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TmrActive,%u,TimerId,%u\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 69, "posp_StopTimer", 770, g_PospTmrData, g_PospTmrData);
      LbsOsaTrace_WriteLog(0x13u, __str, v8, 0, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
      return 0;
    }

LABEL_17:
    bzero(__str, 0x410uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v11, "PSP", 68, "posp_StopTimer");
    LbsOsaTrace_WriteLog(0x13u, __str, v12, 5, 1);
    return 0;
  }

  if (AgpsFsmStopTimer(8716550))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "PSP", 69, "posp_StopTimer", 1545);
      LbsOsaTrace_WriteLog(0x13u, __str, v10, 0, 1);
    }

    g_PospTmrData = 0;
    g_PospTmrData = -1;
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
      return 0;
    }

    goto LABEL_17;
  }

  g_PospTmrData = 0;
  g_PospTmrData = 0;
  g_PospTmrData = -1;
  g_PospTmrData = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TmrStop,TmId,%u\n", (*&g_MacClockTicksToMsRelation * v15), "PSP", 73, "posp_StopTimer", g_PospTmrData);
    LbsOsaTrace_WriteLog(0x13u, __str, v16, 4, 1);
  }

  if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    return 1;
  }

  bzero(__str, 0x410uLL);
  v17 = mach_continuous_time();
  v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "PSP", 68, "posp_StopTimer");
  v13 = 1;
  LbsOsaTrace_WriteLog(0x13u, __str, v18, 5, 1);
  return v13;
}

double posp_TimerExpiry(int a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "posp_TimerExpiry");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  if (a1 == 8716550)
  {
    if (g_PospTmrData)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TmrId,%u,Expired\n", (*&g_MacClockTicksToMsRelation * v5), "PSP", 73, "posp_TimerExpiry", g_PospTmrData);
        LbsOsaTrace_WriteLog(0x13u, __str, v6, 4, 1);
      }

      g_PospTmrData(g_PospTmrData, 1, v4);
      g_PospTmrData = 0;
      g_PospTmrData = 0x7FFFFFFF;
      g_PospTmrData = 0;
      g_PospTmrData = 0;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "PSP", 69, "posp_TimerExpiry", 258);
        LbsOsaTrace_WriteLog(0x13u, __str, v10, 0, 1);
      }

      g_PospTmrData = 0;
      g_PospTmrData = 0x7FFFFFFF;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 69, "posp_TimerExpiry", 2052);
    LbsOsaTrace_WriteLog(0x13u, __str, v8, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 68, "posp_TimerExpiry");
    LbsOsaTrace_WriteLog(0x13u, __str, v13, 5, 1);
  }

  return result;
}

double posp_TimerDeInit(void)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "PSP", 68, "posp_TimerDeInit");
    LbsOsaTrace_WriteLog(0x13u, __str, v1, 5, 1);
  }

  if (g_PospTmrData == 1)
  {
    if (AgpsFsmStopTimer(8716550))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v2 = mach_continuous_time();
        v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 69, "posp_TimerDeInit", 1545);
        v4 = 0;
LABEL_9:
        LbsOsaTrace_WriteLog(0x13u, __str, v3, v4, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TmrDeinit,TmrId,%u\n", (*&g_MacClockTicksToMsRelation * v5), "PSP", 73, "posp_TimerDeInit", g_PospTmrData);
      v4 = 4;
      goto LABEL_9;
    }

    g_PospTmrData = 0;
    g_PospTmrData = 0;
    g_PospTmrData = 0;
    g_PospTmrData = -1;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 68, "posp_TimerDeInit");
    LbsOsaTrace_WriteLog(0x13u, __str, v8, 5, 1);
  }

  return result;
}

uint64_t posp_IsTimerActive(int a1, int a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 68, "posp_IsTimerActive");
    LbsOsaTrace_WriteLog(0x13u, __str, v5, 5, 1);
  }

  v6 = g_PospTmrData;
  v7 = g_PospTmrData;
  v8 = g_PospTmrData;
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0);
  if (v6 == a1 && v7 != 0 && v8 == a2)
  {
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "PSP", 68, "posp_IsTimerActive");
      v14 = 1;
      LbsOsaTrace_WriteLog(0x13u, __str, v16, 5, 1);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 68, "posp_IsTimerActive");
      LbsOsaTrace_WriteLog(0x13u, __str, v13, 5, 1);
    }

    return 0;
  }

  return v14;
}

uint64_t gnssdbg_GetLogSeverityME(int a1, int a2)
{
  if (a2 == 1)
  {
    result = 1;
    if (a1 > 1024)
    {
      if (a1 > 2304)
      {
        switch(a1)
        {
          case 2448:
          case 2485:
          case 2487:
          case 2489:
          case 2490:
          case 2493:
          case 2495:
          case 2499:
          case 2500:
          case 2501:
          case 2502:
          case 2512:
            return 4;
          case 2449:
          case 2450:
          case 2451:
          case 2452:
          case 2453:
          case 2454:
          case 2455:
          case 2458:
          case 2460:
          case 2465:
          case 2468:
          case 2469:
          case 2470:
          case 2471:
          case 2472:
          case 2473:
          case 2474:
          case 2475:
          case 2476:
          case 2478:
          case 2480:
          case 2481:
          case 2482:
          case 2483:
          case 2486:
          case 2488:
          case 2496:
          case 2497:
          case 2498:
          case 2503:
          case 2504:
          case 2505:
          case 2506:
          case 2507:
          case 2508:
          case 2509:
          case 2510:
          case 2511:
          case 2513:
            return 3;
          case 2456:
          case 2457:
          case 2459:
          case 2461:
          case 2462:
          case 2463:
          case 2464:
          case 2466:
          case 2467:
          case 2477:
          case 2514:
            return 2;
          case 2479:
          case 2484:
          case 2491:
          case 2492:
          case 2494:
            return result;
          default:
            v11 = a1 - 1;
            if ((a1 - 2305) > 0x26)
            {
              goto LABEL_49;
            }

            if (((1 << v11) & 0x1F7000000) != 0)
            {
              return 2;
            }

            if (((1 << v11) & 0xD80000) != 0)
            {
              return 4;
            }

            if (((1 << v11) & 0x4008000003) != 0)
            {
              return result;
            }

LABEL_49:
            v9 = (a1 - 2404);
            if (v9 > 0x22)
            {
              return 3;
            }

            if (((1 << v9) & 0x22020) != 0)
            {
              return result;
            }

            if (((1 << v9) & 0x400004001) == 0)
            {
              goto LABEL_52;
            }

            return 4;
        }
      }

      if (a1 <= 1815)
      {
        if ((a1 - 1143) < 2)
        {
          return result;
        }

        if ((a1 - 1550) >= 2)
        {
          if (a1 == 1025)
          {
            return result;
          }

          return 3;
        }

        return 4;
      }

      if ((a1 - 2049) <= 0x24 && ((1 << (a1 - 1)) & 0x1F81FFFFFFLL) != 0 || a1 == 1816)
      {
        return 2;
      }
    }

    else
    {
      if (a1 > 782)
      {
        switch(a1)
        {
          case 848:
          case 858:
          case 860:
          case 862:
          case 865:
          case 866:
          case 867:
          case 870:
          case 871:
          case 874:
          case 890:
          case 891:
          case 894:
          case 896:
          case 897:
          case 898:
          case 900:
          case 901:
          case 902:
          case 903:
          case 904:
          case 915:
          case 916:
          case 917:
          case 923:
          case 924:
          case 925:
          case 934:
          case 955:
            return result;
          case 849:
          case 850:
          case 851:
          case 852:
          case 853:
          case 854:
          case 855:
          case 859:
          case 861:
          case 863:
          case 864:
          case 868:
          case 869:
          case 873:
          case 877:
          case 878:
          case 879:
          case 880:
          case 882:
          case 883:
          case 884:
          case 885:
          case 886:
          case 887:
          case 889:
          case 892:
          case 893:
          case 895:
          case 899:
          case 906:
          case 907:
          case 908:
          case 909:
          case 910:
          case 911:
          case 912:
          case 913:
          case 914:
          case 918:
          case 919:
          case 921:
          case 922:
          case 928:
          case 929:
          case 930:
          case 931:
          case 932:
          case 933:
          case 937:
          case 938:
          case 939:
          case 940:
          case 941:
          case 942:
          case 943:
          case 944:
          case 945:
          case 946:
          case 949:
          case 950:
          case 951:
          case 957:
          case 964:
          case 965:
          case 966:
            return 3;
          case 856:
          case 872:
          case 875:
          case 876:
          case 881:
          case 888:
          case 905:
          case 920:
          case 926:
          case 927:
          case 935:
          case 936:
          case 958:
          case 959:
          case 963:
            return 2;
          case 857:
          case 947:
          case 948:
          case 952:
          case 953:
          case 954:
          case 956:
          case 960:
          case 961:
          case 962:
          case 967:
            return 4;
          default:
            if ((a1 - 783) < 2)
            {
              return result;
            }

            if (a1 != 812)
            {
              return 3;
            }

            return 4;
        }
      }

      if (a1 > 512)
      {
        switch(a1)
        {
          case 513:
          case 514:
          case 515:
          case 516:
          case 517:
          case 518:
          case 520:
          case 521:
          case 524:
          case 525:
          case 526:
          case 527:
          case 545:
          case 550:
          case 551:
          case 552:
          case 553:
          case 558:
          case 571:
          case 574:
          case 575:
          case 590:
          case 602:
          case 603:
          case 604:
          case 605:
          case 606:
          case 608:
          case 609:
            return 4;
          case 519:
          case 522:
          case 523:
          case 528:
          case 530:
          case 531:
          case 532:
          case 533:
          case 534:
          case 535:
          case 537:
          case 538:
          case 539:
          case 540:
          case 541:
          case 542:
          case 543:
          case 544:
          case 546:
          case 547:
          case 548:
          case 549:
          case 554:
          case 555:
          case 556:
          case 557:
          case 559:
          case 560:
          case 561:
          case 562:
          case 563:
          case 564:
          case 565:
          case 566:
          case 567:
          case 568:
          case 569:
          case 570:
          case 572:
          case 573:
          case 576:
          case 577:
          case 578:
          case 579:
          case 580:
          case 581:
          case 582:
          case 583:
          case 584:
          case 585:
          case 586:
          case 587:
          case 588:
          case 589:
          case 591:
          case 592:
          case 601:
          case 607:
            return 3;
          case 529:
          case 536:
          case 593:
          case 594:
          case 595:
          case 596:
          case 597:
          case 598:
          case 599:
          case 600:
            return 2;
          default:
            if (a1 == 630)
            {
              return 4;
            }

            if (a1 != 770)
            {
              return 3;
            }

            return result;
        }
      }

      v13 = a1 - 266;
      if (v13 <= 0x2B)
      {
        if (((1 << v13) & 0xC080004A25) == 0)
        {
          if (((1 << v13) & 0xC0000000000) != 0)
          {
            return result;
          }

          return 3;
        }

        return 4;
      }
    }

    return 3;
  }

  if (a2)
  {
    return 3;
  }

  result = 1;
  if (a1 > 847)
  {
    if (a1 <= 2304)
    {
      if (a1 <= 2048)
      {
        v12 = a1 - 80;
        if ((a1 - 848) <= 0x12)
        {
          if (((1 << v12) & 0x5FE00) != 0)
          {
            return 4;
          }

          if (((1 << v12) & 0x20001) != 0)
          {
            return result;
          }

          if (a1 == 856)
          {
            return 2;
          }
        }

        if (a1 == 1544)
        {
          return 2;
        }

        if (a1 == 1815)
        {
          return 4;
        }
      }

      else if ((a1 - 2049) < 0x10)
      {
        return 2;
      }
    }

    else
    {
      v7 = (a1 - 2305);
      if (v7 <= 0x20)
      {
        if (((1 << (a1 - 1)) & 0x1F7000000) != 0)
        {
          return 2;
        }

        if (((1 << (a1 - 1)) & 0x8800003) != 0)
        {
          return result;
        }

        if (v7 == 18)
        {
          return 4;
        }
      }

      v8 = a1 + 92;
      if ((a1 - 2468) <= 0x10)
      {
        if (((1 << v8) & 0x1A3) != 0)
        {
          return 4;
        }

        if (((1 << v8) & 0x1F000) != 0)
        {
          return 2;
        }

        if (((1 << v8) & 0x14) != 0)
        {
          return result;
        }
      }

      v9 = (a1 - 2404);
      if (v9 <= 0x3E)
      {
        if (((1 << v9) & 0x5000001000000001) != 0)
        {
          return 4;
        }

        if (((1 << v9) & 0x100000002020) != 0)
        {
          return result;
        }

LABEL_52:
        if (v9 != 16)
        {
          return 3;
        }

        return 2;
      }
    }

    return 3;
  }

  if (a1 <= 512)
  {
    v10 = (a1 - 266);
    if (v10 <= 0x2E)
    {
      if (((1 << v10) & 0x70C080004625) != 0)
      {
        return 4;
      }

      if (((1 << v10) & 0xC005F900000) != 0)
      {
        return result;
      }

      if (v10 != 11)
      {
        return 3;
      }

      return 2;
    }

    return 3;
  }

  v4 = a1 - 1;
  if ((a1 - 513) <= 0x3E)
  {
    if (((1 << v4) & 0x670021E10000F9BFLL) != 0)
    {
      return 4;
    }

    if (((1 << v4) & 0x8810200) != 0)
    {
      return 2;
    }
  }

  if ((a1 - 590) <= 0xA)
  {
    v5 = 1 << (a1 - 78);
    if ((v5 & 0x721) != 0)
    {
      return 4;
    }

    if ((v5 & 0x18) != 0)
    {
      return result;
    }
  }

  v6 = (a1 - 770);
  if (v6 > 0x33)
  {
    return 3;
  }

  if (((1 << v6) & 0x8000000006001) != 0)
  {
    return result;
  }

  if (v6 != 42)
  {
    return 3;
  }

  return 4;
}

uint64_t asn1PE_PosPayLoad_rrlpPayload(uint64_t a1, _DWORD *a2)
{
  v3 = Asn1Coder::EncodeOctetString(a1, 1, 0x2000, a2[2] - *a2, a2, 0, 0);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  return v4;
}

uint64_t asn1PD_PosPayLoad_rrlpPayload(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = 0;
  Asn1Coder::DecodeInteger(a1, 1, 0x2000u, &v6);
  Asn1Coder::GetBitStringFromBuffer(a1, 8 * v6, a2, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  return v4;
}

uint64_t asn1PE_PosPayLoad(uint64_t a1, unsigned __int16 *a2)
{
  Asn1Coder::AddBitToBuffer(a1, *a2 > 3u);
  rrlpPayload = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(Ver2) = *(a1 + 16);
    goto LABEL_3;
  }

  v9 = *a2;
  if (v9 < 4)
  {
    Ver2 = Asn1Coder::EncodeInteger(a1, 0, 2, v9 - 1);
    if (Ver2)
    {
      rrlpPayload = Ver2;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_3;
    }

    v10 = *a2;
    if (v10 != 1)
    {
      if (v10 == 3)
      {
        rrlpPayload = asn1PE_PosPayLoad_rrlpPayload(a1, a2 + 14);
        if (!rrlpPayload)
        {
          return rrlpPayload;
        }

        goto LABEL_19;
      }

      if (v10 != 2)
      {
        rrlpPayload = 4;
        *(a1 + 16) = 4;
        v5 = *(a1 + 8);
        v6 = *(a1 + 12);
        LODWORD(Ver2) = 4;
        goto LABEL_3;
      }
    }

    rrlpPayload = 1;
    *(a1 + 16) = 1;
    SuplAsn1Logger::TraceError(1u, *(a1 + 8), *(a1 + 12));
LABEL_19:
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(Ver2) = rrlpPayload;
    goto LABEL_3;
  }

  if (*(a2 + 80) | *(a2 + 81))
  {
    Ver2 = asn1PE_PosPayLoadVer2(a1, a2);
    rrlpPayload = Ver2;
    if (!Ver2)
    {
      return rrlpPayload;
    }

    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
  }

  else
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    rrlpPayload = 1;
    LODWORD(Ver2) = 1;
  }

LABEL_3:
  SuplAsn1Logger::TraceError(Ver2, v5, v6);
  return rrlpPayload;
}

uint64_t asn1PD_PosPayLoad(uint64_t a1, _WORD *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  rrlpPayload = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(Ver2) = *(a1 + 16);
    goto LABEL_3;
  }

  if (!BitFromBuffer)
  {
    v11 = 0;
    Ver2 = Asn1Coder::DecodeInteger(a1, 0, 2u, &v11);
    if (Ver2)
    {
      rrlpPayload = Ver2;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_3;
    }

    v10 = v11;
    *a2 = v11 + 1;
    if (v10)
    {
      if (v10 == 2)
      {
        rrlpPayload = asn1PD_PosPayLoad_rrlpPayload(a1, a2 + 7);
        if (!rrlpPayload)
        {
          return rrlpPayload;
        }

        goto LABEL_17;
      }

      if (v10 != 1)
      {
        rrlpPayload = 4;
        *(a1 + 16) = 4;
        v6 = *(a1 + 8);
        v7 = *(a1 + 12);
        LODWORD(Ver2) = 4;
        goto LABEL_3;
      }
    }

    rrlpPayload = 1;
    *(a1 + 16) = 1;
    SuplAsn1Logger::TraceError(1u, *(a1 + 8), *(a1 + 12));
LABEL_17:
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(Ver2) = rrlpPayload;
    goto LABEL_3;
  }

  Ver2 = asn1PD_PosPayLoadVer2(a1, a2);
  rrlpPayload = Ver2;
  if (!Ver2)
  {
    return rrlpPayload;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
LABEL_3:
  SuplAsn1Logger::TraceError(Ver2, v6, v7);
  return rrlpPayload;
}

uint64_t asn1PE_SUPLPOS(uint64_t a1, unsigned __int16 *a2)
{
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
LABEL_5:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    return v4;
  }

  Asn1Coder::AddBitToBuffer(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_5;
  }

  return asn1PE_PosPayLoad(a1, a2 + 4);
}

uint64_t asn1PD_SUPLPOS(uint64_t a1, uint64_t a2)
{
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_7:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    return v5;
  }

  v9 = BitFromBuffer;
  *a2 = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_7;
  }

  v8 = asn1PD_PosPayLoad(a1, (a2 + 8));
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

  if (*a2)
  {
    asn1PD_Velocity(a1, (a2 + 144));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_7;
    }
  }

  if (!v9)
  {
    return 0;
  }

  v8 = Asn1Coder::SkipSequenceExtension(a1);
  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

  return v5;
}

uint64_t SuplPosPayloadHandler::GetInstance(SuplPosPayloadHandler *this)
{
  v5 = *MEMORY[0x29EDCA608];
  if (SuplPosPayloadHandler::GetInstance(void)::pred_suplPosPayloadHandler != -1)
  {
    dispatch_once(&SuplPosPayloadHandler::GetInstance(void)::pred_suplPosPayloadHandler, &__block_literal_global_1);
  }

  result = SuplPosPayloadHandler::m_pos_payload_handler;
  if (!SuplPosPayloadHandler::m_pos_payload_handler)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 69, "GetInstance", "GetInstance");
      LbsOsaTrace_WriteLog(0xEu, __str, v3, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("GetInstance", "SuplPosPayloadHandler.cpp", 54, "false && Memory allocation failure");
  }

  return result;
}

void *___ZN21SuplPosPayloadHandler11GetInstanceEv_block_invoke()
{
  result = operator new(0x18uLL, MEMORY[0x29EDC9418]);
  if (result)
  {
    *result = 0;
    result[1] = 0;
    result[2] = 0;
  }

  SuplPosPayloadHandler::m_pos_payload_handler = result;
  return result;
}

uint64_t SuplPosPayloadHandler::ProcessPosPayload(SuplPosPayloadHandler *a1, uint64_t a2, uint64_t a3)
{
  v54 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "SPL", 69, "ProcessPosPayload", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v16, 0, 1);
    }

    return -1;
  }

  __p = 0;
  v43 = 0;
  v45 = 0;
  v44 = 0;
  v6 = SuplPosPayloadHandler::ResetLppParams(a1);
  v46 = *(a3 + 376);
  v7 = *(a3 + 380) == 2;
  v47 = v7;
  v8 = *(a2 + 8);
  if (v8 == 3)
  {
    Instance = SimUtils::GetInstance(v6);
    IsItCampedOnLte = SimUtils::IsItCampedOnLte(Instance, *(a3 + 532));
    if (!IsItCampedOnLte)
    {
      v45 = 1;
      if (&__p != (a2 + 64))
      {
        IsItCampedOnLte = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *(a2 + 64), *(a2 + 72), *(a2 + 72) - *(a2 + 64));
      }

      v27 = *(a3 + 532);
      v28 = LcsSuplGlueLayer::GetInstance(IsItCampedOnLte);
      v17 = (*(*v28 + 24))(v28, v27, &__p);
      if (__p)
      {
        v43 = __p;
        operator delete(__p);
      }

      return v17;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      return -7;
    }

LABEL_19:
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v20), "SPL", 69, "ProcessPosPayload", 515);
    LbsOsaTrace_WriteLog(0x12u, __str, v21, 0, 1);
    return -7;
  }

  if (v8 != 4)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v22), "SPL", 69, "ProcessPosPayload", 770);
      LbsOsaTrace_WriteLog(0x12u, __str, v23, 0, 1);
    }

    return -7;
  }

  if (!*(a2 + 88))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v25 = mach_continuous_time();
      v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v25), "SPL", 69, "ProcessPosPayload", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v26, 0, 1);
    }

    return -1;
  }

  v9 = SimUtils::GetInstance(v6);
  if (!SimUtils::IsItCampedOnLte(v9, *(a3 + 532)))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      return -7;
    }

    goto LABEL_19;
  }

  v45 = 3;
  IsLoggingAllowed = operator new(0x38uLL, MEMORY[0x29EDC9418]);
  if (IsLoggingAllowed)
  {
    *IsLoggingAllowed = 0;
    *(IsLoggingAllowed + 8) = 0u;
    *(IsLoggingAllowed + 24) = 0u;
    *(IsLoggingAllowed + 40) = 0u;
    *a1 = IsLoggingAllowed;
    v12 = *(a2 + 96);
    v11 = *(a2 + 104);
    if (v11 != v12)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        if (*(v12 + v13) != *(v12 + v13 + 8))
        {
          ++*(a1 + 8);
          IsLoggingAllowed = std::vector<ASN1T_PosPayLoad_lpppayload>::push_back[abi:ne200100]((*a1 + 8), v12 + v13);
          v12 = *(a2 + 96);
          v11 = *(a2 + 104);
        }

        ++v14;
        v13 += 24;
      }

      while (v14 < 0xAAAAAAAAAAAAAAABLL * ((v11 - v12) >> 3));
    }
  }

  else
  {
    *a1 = 0;
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v29 = mach_continuous_time();
      v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v29), "SPL", 69, "CopyLppPayLoad", 1537);
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v30, 0, 1);
    }
  }

  if (!*a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      return -1;
    }

    goto LABEL_39;
  }

  v31 = *(a3 + 376);
  v32 = SuplProvider::GetInstance(IsLoggingAllowed);
  v33 = v32[4];
  if (!v33)
  {
LABEL_38:
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      return -1;
    }

LABEL_39:
    bzero(__str, 0x410uLL);
    v34 = mach_continuous_time();
    v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v34), "SPL", 69, "ProcessLppPayload", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v35, 0, 1);
    return -1;
  }

  while (*v33 != v31)
  {
    v33 = *(v33 + 8);
    if (!v33)
    {
      goto LABEL_38;
    }
  }

  if (*(a1 + 8) >= 1)
  {
    v36 = 0;
    v37 = 0;
    while (1)
    {
      v38 = *a1;
      if (0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 16) - *(*a1 + 8)) >> 3) <= v37)
      {
        break;
      }

      v52 = 0;
      v53 = 0;
      v51 = 0;
      v49 = 0;
      v50 = 0;
      *__str = 0;
      v39 = (*(v38 + 8) + v36);
      if (v39 != __str)
      {
        v32 = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(__str, *v39, v39[1], v39[1] - *v39);
      }

      v51 = 3;
      v52 = v31;
      v53 = v7;
      v40 = *(v33 + 524);
      v41 = LcsSuplGlueLayer::GetInstance(v32);
      (*(*v41 + 24))(v41, v40, __str);
      v32 = *__str;
      if (*__str)
      {
        v49 = *__str;
        operator delete(*__str);
      }

      v17 = 0;
      ++v37;
      v36 += 24;
      if (v37 >= *(a1 + 8))
      {
        return v17;
      }
    }
  }

  return 0;
}

void sub_2995A19A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *SuplPosPayloadHandler::ResetLppParams(uint64_t *this)
{
  v1 = this;
  v4[1] = *MEMORY[0x29EDCA608];
  v2 = *this;
  if (*this)
  {
    v4[0] = (v2 + 32);
    std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](v4);
    v4[0] = (v2 + 8);
    std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](v4);
    this = MEMORY[0x29C29EB20](v2, 0x1020C407B5832A3);
  }

  *v1 = 0;
  v3 = v1[2];
  if (v3)
  {
    v4[0] = (v3 + 32);
    std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](v4);
    v4[0] = (v3 + 8);
    std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](v4);
    this = MEMORY[0x29C29EB20](v3, 0x1020C407B5832A3);
  }

  v1[2] = 0;
  *(v1 + 8) = 0;
  return this;
}

double SuplPosPayloadHandler::ProcessPosResponse(uint64_t a1, char **a2, uint64_t a3, SuplSession *a4)
{
  v17 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    v5 = a3;
    SuplStateObject = SuplSession::GetSuplStateObject(a4);
    SuplState::UpdateState(SuplStateObject, 5, a4);
    v8 = SuplSession::GetSuplStateObject(a4);
    v9 = v8;
    v10 = *a2;
    v11 = a2[1];
    if (*a2 != v11)
    {
      *(*(v8 + 40) + 8) = 3;
      v12 = (*(v8 + 40) + 64);
      if (v12 != a2)
      {
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v12, v10, v11, v11 - v10);
      }
    }

    SuplPosRecd::PrepareSuplMessage(v9, v5);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "SPL", 69, "ProcessPosResponse", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v15, 0, 1);
  }

  return result;
}

uint64_t SuplPosPayloadHandler::ProcessLppAdReq(SuplProvider *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = *MEMORY[0x29EDCA608];
  Instance = SuplProvider::GetInstance(a1);
  v8 = *(Instance + 4);
  if (v8)
  {
    while (*v8 != a2)
    {
      v8 = *(v8 + 8);
      if (!v8)
      {
        goto LABEL_4;
      }
    }

    v28[0] = 0;
    v29 = 0;
    v30 = 0xFFFFFFFFLL;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = -1;
    v38 = 0;
    v39 = 0xFFFF000000000000;
    v40 = 0;
    v41 = 0;
    v42[0] = 0;
    *(v42 + 6) = 0;
    v42[2] = 0;
    v42[3] = 0;
    v43 = 0;
    v44 = 1;
    v12 = *(SimUtils::GetInstance(Instance) + 16);
    if (v12)
    {
      while (*v12 != *(v8 + 524))
      {
        v12 = *(v12 + 8);
        if (!v12)
        {
          goto LABEL_12;
        }
      }

      ASN1T_LocationId::operator=(v28, (v12 + 56));
    }

LABEL_12:
    v19 = *(v8 + 448);
    v13 = *(v8 + 464);
    v20 = *(v8 + 456);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v21, v13, *(v8 + 472), *(v8 + 472) - v13);
    __p = 0;
    v25 = 0;
    v26 = 0;
    v14 = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *(v8 + 488), *(v8 + 496), *(v8 + 496) - *(v8 + 488));
    v27 = *(v8 + 512);
    if (a4 >= 0x11)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "SPL", 69, "ProcessLppAdReq", 514);
        LbsOsaTrace_WriteLog(0x12u, __str, v17, 0, 1);
      }

      v11 = -4;
    }

    else
    {
      v15 = LcsSuplGlueLayer::GetInstance(v14);
      v11 = (*(*v15 + 40))(v15, a2, a3, a4, &v19, v43 + 8, *(v8 + 524));
    }

    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }

    ASN1T_CellInfo::~ASN1T_CellInfo(v28);
  }

  else
  {
LABEL_4:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 69, "ProcessLppAdReq", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v10, 0, 1);
    }

    return -1;
  }

  return v11;
}

void sub_2995A1F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  SuplAsstDataNeededInfo::~SuplAsstDataNeededInfo(&a15);
  ASN1T_CellInfo::~ASN1T_CellInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ASN1T_PosPayLoad_lpppayload>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ASN1T_PosPayLoad_lpppayload>::__emplace_back_slow_path<ASN1T_PosPayLoad_lpppayload const&>(a1, a2);
  }

  else
  {
    std::vector<ASN1T_PosPayLoad_lpppayload>::__construct_one_at_end[abi:ne200100]<ASN1T_PosPayLoad_lpppayload const&>(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void SuplPosPayloadHandler::HandleLppPosResponseFromStack(SuplProvider *a1, uint64_t a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v4 = *(SuplProvider::GetInstance(a1) + 32);
  if (!v4)
  {
LABEL_4:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "HandleLppPosResponseFromStack", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
    }

    return;
  }

  while (*v4 != *(a2 + 28))
  {
    v4 = *(v4 + 8);
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  v7 = (v4 - 8);
  *(v4 + 400) = *(a2 + 32);
  if (*(a2 + 24))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 69, "HandleLppPosResponseFromStack", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v9, 0, 1);
    }

    SuplStateObject = SuplSession::GetSuplStateObject(v7);
    SuplState::UpdateState(SuplStateObject, 5, v7);
    v11 = SuplSession::GetSuplStateObject(v7);
    SuplPosRecd::SetPayLoadPosResponses(v11, *(a1 + 2));
    SuplPosRecd::PrepareSuplMessage(v11, 1);
    SuplPosPayloadHandler::ResetLppParams(a1);
    return;
  }

  if (*a2 == *(a2 + 8))
  {
    return;
  }

  v12 = *(a1 + 2);
  if (v12)
  {
    v13 = *(v12 + 1);
LABEL_16:
    *v12 = 1;
    v15 = *(v12 + 2);
    if (v15 == v13)
    {
      if (*(v12 + 3) == v13)
      {
        v26 = v12 + 8;
        operator new();
      }

      *v15 = 0;
      v15[1] = 0;
      v15[2] = 0;
      *(v12 + 2) = v15 + 3;
    }

    else if (0xAAAAAAAAAAAAAAABLL * (v15 - v13) >= 2)
    {
      v16 = v13 + 3;
      if (v15 != v13 + 3)
      {
        v17 = *(v12 + 2);
        do
        {
          v19 = *(v17 - 3);
          v17 -= 3;
          v18 = v19;
          if (v19)
          {
            *(v15 - 2) = v18;
            operator delete(v18);
          }

          v15 = v17;
        }

        while (v17 != v16);
      }

      *(v12 + 2) = v16;
    }

    v22 = *(*(a1 + 2) + 8);
    if (v22 != a2)
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v22, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    }

    v23 = SuplSession::GetSuplStateObject(v7);
    SuplState::UpdateState(v23, 5, v7);
    v24 = SuplSession::GetSuplStateObject(v7);
    SuplPosRecd::SetPayLoadPosResponses(v24, *(a1 + 2));
    SuplPosRecd::PrepareSuplMessage(v24, 0);

    SuplPosPayloadHandler::ResetLppParams(a1);
    return;
  }

  v14 = operator new(0x38uLL, MEMORY[0x29EDC9418]);
  if (v14)
  {
    v12 = v14;
    v13 = 0;
    *v14 = 0;
    *(v14 + 8) = 0u;
    *(v14 + 24) = 0u;
    *(v14 + 40) = 0u;
    *(a1 + 2) = v14;
    goto LABEL_16;
  }

  *(a1 + 2) = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v20), "SPL", 69, "HandleLppPosResponseFromStack", 1537);
    LbsOsaTrace_WriteLog(0x12u, __str, v21, 0, 1);
  }
}

void sub_2995A2498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__split_buffer<ASN1T_PosPayLoad_lpppayload>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t *std::vector<ASN1T_PosPayLoad_lpppayload>::__construct_one_at_end[abi:ne200100]<ASN1T_PosPayLoad_lpppayload const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v3, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<ASN1T_PosPayLoad_lpppayload>::__emplace_back_slow_path<ASN1T_PosPayLoad_lpppayload const&>(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_PosPayLoad_lpppayload>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>((24 * v2), *a2, *(a2 + 8), *(a2 + 8) - *a2);
  *&v16 = v16 + 24;
  v8 = a1[1];
  v9 = (v15 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ASN1T_PosPayLoad_lpppayload>,ASN1T_PosPayLoad_lpppayload*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<ASN1T_PosPayLoad_lpppayload>::~__split_buffer(&v14);
  return v13;
}

void sub_2995A27BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__split_buffer<ASN1T_PosPayLoad_lpppayload>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_PosPayLoad_lpppayload>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ASN1T_PosPayLoad_lpppayload>,ASN1T_PosPayLoad_lpppayload*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x29EDCA608];
  v9 = a4;
  v10 = a4;
  v11[0] = a1;
  v11[1] = &v9;
  v11[2] = &v10;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v6 += 24;
      a4 += 3;
    }

    while (v6 != a3);
    v10 = a4;
    v12 = 1;
    do
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v7;
        operator delete(v7);
      }

      v5 += 24;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_PosPayLoad_lpppayload>,ASN1T_PosPayLoad_lpppayload*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_PosPayLoad_lpppayload>,ASN1T_PosPayLoad_lpppayload*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_PosPayLoad_lpppayload>,ASN1T_PosPayLoad_lpppayload*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void sub_2995A29A8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_PosPayLoad_lpppayload>,ASN1T_PosPayLoad_lpppayload*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::__split_buffer<ASN1T_PosPayLoad_lpppayload>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ASN1T_PosPayLoad_lpppayload>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ASN1T_PosPayLoad_lpppayload>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

uint64_t GM_Gen_SV_Meas_QI(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  v1 = *(a1 + 8);
  if ((~v1 & 0x888) == 0)
  {
    return 18;
  }

  if ((~v1 & 0x88) == 0)
  {
    return 17;
  }

  if ((~v1 & 0x848) == 0)
  {
    return 16;
  }

  if ((~v1 & 0x48) == 0)
  {
    return 15;
  }

  if ((~v1 & 0x28) == 0)
  {
    return 14;
  }

  if ((~v1 & 0x18) == 0)
  {
    return 13;
  }

  result = 12;
  if ((~v1 & 0xC) != 0)
  {
    if ((~v1 & 0xA) != 0)
    {
      if (v1)
      {
        return 9;
      }

      else if ((v1 & 0xFE) != 0)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t rrl_error_handling(int a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  memset_s(&__s, 0x528uLL, 0, 0x528uLL);
  memset_s(&v9, 8uLL, 0, 8uLL);
  if (GetStaticLpPrivate()[16] != 1)
  {
    goto LABEL_25;
  }

  __s = *(GetStaticLpPrivate() + 6);
  v4 = *(GetStaticLpPrivate() + 8);
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        if (GetStaticLpPrivate()[584] == 1 && GetStaticLpPrivate()[536] == 1)
        {
          v5 = 528;
          goto LABEL_23;
        }

LABEL_25:
        v11 = 4;
        v12 = a1;
        return rrl_encode_air_message(a2, &__s);
      }

      if (v4 != 2)
      {
LABEL_19:
        ms_report_exception(1, 24590, 199, "rrl_error_handling");
        goto LABEL_25;
      }

      if (GetStaticLpPrivate()[692] != 1)
      {
        goto LABEL_25;
      }

      v6 = GetStaticLpPrivate() + 684;
    }

    else
    {
      if (GetStaticLpPrivate()[716] != 1)
      {
        goto LABEL_25;
      }

      v6 = GetStaticLpPrivate() + 708;
    }

    v7 = *v6;
    goto LABEL_24;
  }

  if (v4 <= 4)
  {
    if (v4 != 3 && GetStaticLpPrivate()[104] == 1 && GetStaticLpPrivate()[100] == 1)
    {
      v5 = 92;
LABEL_23:
      v7 = *&GetStaticLpPrivate()[v5];
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (v4 != 5 && v4 != 6)
  {
    goto LABEL_19;
  }

  v7 = *(GetStaticLpPrivate() + 5);
LABEL_24:
  v9 = v7;
  v11 = 4;
  v12 = a1;
  v15 = 1;
  v14 = 1;
  v13 = v7;
  return rrl_encode_air_message(a2, &__s);
}

uint64_t rrl_process_measure_request(void *a1, _WORD *a2, int *a3, _BYTE *a4, uint64_t a5, int a6)
{
  v44 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  *a4 = 0;
  rrl_clear_gnss_ad(a1, 0);
  memset_s(a2, 0x2CuLL, 0, 0x2CuLL);
  v12 = *(a5 + 8);
  if (v12)
  {
    free(v12);
    *(a5 + 8) = 0;
  }

  *a5 = 0;
  if (GetStaticLpPrivate()[16] && !*(GetStaticLpPrivate() + 8))
  {
    StaticLpPrivate = GetStaticLpPrivate();
    v17 = GetStaticLpPrivate();
    memset_s(v17 + 1344, 0x1CuLL, 0, 0x1CuLL);
    v18 = *(GetStaticLpPrivate() + 6);
    *(GetStaticLpPrivate() + 339) = v18;
    LOBYTE(v18) = StaticLpPrivate[716];
    GetStaticLpPrivate()[1360] = v18;
    if (GetStaticLpPrivate()[1360] == 1)
    {
      *(GetStaticLpPrivate() + 1364) = *(StaticLpPrivate + 708);
    }

    if (!*(StaticLpPrivate + 13))
    {
      goto LABEL_43;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: methodType, %u\n", (*&g_MacClockTicksToMsRelation * v19), "PSP", 73, "rrl_process_measure_request", *(StaticLpPrivate + 10));
      LbsOsaTrace_WriteLog(0x13u, __str, v20, 4, 1);
    }

    v21 = *(StaticLpPrivate + 10);
    v22 = 4;
    if (v21 && v21 != 3)
    {
      *(GetStaticLpPrivate() + 337) = 2;
      if (StaticLpPrivate[560])
      {
        v23 = 1;
      }

      else
      {
        v23 = StaticLpPrivate[1336];
        if (StaticLpPrivate[1336])
        {
          v23 = StaticLpPrivate[1320] != 0;
        }
      }

      if (v23 | a6)
      {
LABEL_22:
        GetStaticLpPrivate()[1352] = 1;
        memset_s(__str, 4uLL, 0, 4uLL);
        if (GetStaticLpPrivate()[1352] == 1)
        {
          v24 = *(GetStaticLpPrivate() + 2);
          *__str = *(GetStaticLpPrivate() + 337) & v24;
          if (*__str)
          {
            goto LABEL_34;
          }
        }

        else if (*__str)
        {
          goto LABEL_34;
        }

        if (*(GetStaticLpPrivate() + 337) == 1)
        {
          if (GetStaticLpPrivate()[1352] == 1)
          {
            v25 = *(GetStaticLpPrivate() + 2) & 2;
            *__str = v25;
          }

          else
          {
            v25 = *__str;
          }

          if (!v25)
          {
LABEL_33:
            GetStaticLpPrivate()[1352] = 0;
LABEL_34:
            if (GetStaticLpPrivate()[1352])
            {
              *a2 = 1;
              *(a2 + 1) = -1;
              *(a2 + 9) = 0;
              *(a2 + 21) = 1;
              if (*(GetStaticLpPrivate() + 337) == 1)
              {
                *(a2 + 21) = 0;
              }

              *(a2 + 6) = 3;
              if (GetStaticLpPrivate()[1352] == 1)
              {
                a2[18] |= 1u;
              }

              *(a2 + 11) = 0;
              *(a2 + 4) = -1;
              *(a2 + 20) = 0;
              *(a2 + 7) = 2;
              a2[16] = -1;
              *(a2 + 34) = -1;
              *(a2 + 40) = 0;
              a2[19] = 0;
              v26 = *(StaticLpPrivate + 10);
              if ((v26 - 1) >= 2)
              {
                if (v26)
                {
                  ms_report_exception(2, 24591, 432, "rrl_process_measure_request");
                }

                else if (StaticLpPrivate[48] != 1)
                {
                  goto LABEL_46;
                }
              }

              *(a2 + 1) = rrl_util_accuracy_to_meter(*(StaticLpPrivate + 11));
LABEL_46:
              if (StaticLpPrivate[1336] == 1 && StaticLpPrivate[1040])
              {
                v27 = *(StaticLpPrivate + 259);
                if (HIWORD(v27))
                {
                  if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                  {
                    goto LABEL_61;
                  }

                  bzero(__str, 0x410uLL);
                  v40 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                  v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx requiredResponseTime,%d\n", v40);
LABEL_58:
                  LbsOsaTrace_WriteLog(0x13u, __str, v28, 0, 1);
                  goto LABEL_61;
                }
              }

              else
              {
                v27 = *(StaticLpPrivate + 14);
                if (!v27)
                {
                  if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                  {
                    goto LABEL_61;
                  }

                  bzero(__str, 0x410uLL);
                  v41 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                  v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Response time,%u\n", v41);
                  goto LABEL_58;
                }

                if (v27 < 2)
                {
                  LOWORD(v27) = 2;
                }

                else
                {
                  v29 = v27 - 1;
                  LOWORD(v27) = 2;
                  do
                  {
                    LOWORD(v27) = 2 * v27;
                    --v29;
                  }

                  while (v29);
                }
              }

              *a2 = v27;
LABEL_61:
              if (StaticLpPrivate[1336] == 1 && StaticLpPrivate[724] != 0)
              {
                *(a2 + 9) = 1;
              }

              if (StaticLpPrivate[704] != 1 || StaticLpPrivate[688] == 0)
              {
                if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v32 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
                  if (StaticLpPrivate[1336])
                  {
                    v33 = 84;
                  }

                  else
                  {
                    v33 = 70;
                  }

                  v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MsrPosition Ext,%c\n", v32, "PSP", 68, "rrl_process_measure_request", v33);
                  LbsOsaTrace_WriteLog(0x13u, __str, v34, 5, 1);
                }
              }

              else
              {
                *(a2 + 10) = 1;
              }

              if (StaticLpPrivate[68] == 1)
              {
                *(a2 + 6) = *(StaticLpPrivate + 16);
              }

              if (StaticLpPrivate[560])
              {
                v35 = StaticLpPrivate[1320] == 0;
              }

              else
              {
                if (!StaticLpPrivate[1336] || !StaticLpPrivate[1320])
                {
LABEL_96:
                  *a3 = *(GetStaticLpPrivate() + 337);
                  v13 = 0;
                  GetStaticLpPrivate()[1344] = 1;
                  goto LABEL_7;
                }

                v35 = 0;
              }

              if (StaticLpPrivate[560])
              {
                v36 = (StaticLpPrivate + 184);
              }

              else
              {
                v36 = 0;
              }

              if (StaticLpPrivate[1336] == 0 || v35)
              {
                v37 = 0;
              }

              else
              {
                v37 = (StaticLpPrivate + 1048);
              }

              if (StaticLpPrivate[696])
              {
                v38 = StaticLpPrivate[704] == 0;
              }

              else
              {
                v38 = 1;
              }

              if (v38)
              {
                v39 = 0;
              }

              else
              {
                v39 = StaticLpPrivate + 692;
              }

              rrl_process_gnss_assist_data(a1, v36, v37, v39);
              goto LABEL_96;
            }

LABEL_43:
            memset_s(__str, 0x70uLL, 0, 0x70uLL);
            *__str = 7;
            v43 = 0;
            *a4 = rrl_encode_measure_response_error(__str, a5);
            goto LABEL_6;
          }

          *(GetStaticLpPrivate() + 337) = 2;
        }

        if (*__str)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      v22 = 1;
    }

    *(GetStaticLpPrivate() + 337) = v22;
    goto LABEL_22;
  }

  rrl_clean();
LABEL_6:
  v13 = 1;
LABEL_7:
  rrl_free_asn_pdu();
  GetStaticLpPrivate()[1344] = 1;
  v14 = *a3;
  *(GetStaticLpPrivate() + 337) = v14;
  return v13;
}

uint64_t rrl_clean_measure_procedure(void)
{
  v0 = GetStaticLpPrivate() + 1344;

  return memset_s(v0, 0x1CuLL, 0, 0x1CuLL);
}

void rrl_process_gnss_assist_data(_BYTE *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v224 = *MEMORY[0x29EDCA608];
  rrl_clear_gnss_ad(a1, 1);
  if (!a2 || GetStaticLpPrivate()[5] != 1)
  {
    return;
  }

  v222 = a3;
  if (*(a2 + 64) == 1)
  {
    *a1 = 1;
    *(a1 + 4) = 257;
    *(a1 + 5) = 80 * *a2;
    v8 = *(a2 + 4);
    if (HIWORD(v8))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx gpsWeek,%d\n", (*&g_MacClockTicksToMsRelation * v9), "PSP", 69, "rrl_process_gnss_assist_data", 772, *(a2 + 4));
        LbsOsaTrace_WriteLog(0x13u, __str, v10, 0, 1);
      }
    }

    else
    {
      *(a1 + 8) = v8;
    }

    if (a3 && *(a3 + 184) == 1)
    {
      v11 = *(a3 + 180);
      if (v11 > 0xFF)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v12 = mach_continuous_time();
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx gpsWeekCycleNumber,%d\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 69, "rrl_process_gnss_assist_data", 772, *(a3 + 180));
          LbsOsaTrace_WriteLog(0x13u, __str, v13, 0, 1);
        }
      }

      else
      {
        a1[18] = v11;
      }
    }

    if (a4)
    {
      a1[24] = *a4;
    }

    if (*(a2 + 28) == 1)
    {
      a1[62] = 1;
      v14 = *(a2 + 8);
      if (HIWORD(v14))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v15 = mach_continuous_time();
          v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx bcchCarrier,%d\n", (*&g_MacClockTicksToMsRelation * v15), "PSP", 69, "rrl_process_gnss_assist_data", 772, *(a2 + 8));
          LbsOsaTrace_WriteLog(0x13u, __str, v16, 0, 1);
        }
      }

      else
      {
        *(a1 + 32) = v14;
      }

      v17 = *(a2 + 12);
      if (v17 > 0xFF)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v18 = mach_continuous_time();
          v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx bsic,%d\n", (*&g_MacClockTicksToMsRelation * v18), "PSP", 69, "rrl_process_gnss_assist_data", 772, *(a2 + 12));
          LbsOsaTrace_WriteLog(0x13u, __str, v19, 0, 1);
        }
      }

      else
      {
        a1[66] = v17;
      }

      *(a1 + 17) = *(a2 + 16);
      v20 = *(a2 + 20);
      if (v20 > 0xFF)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v21 = mach_continuous_time();
          v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx timeSlot,%d\n", (*&g_MacClockTicksToMsRelation * v21), "PSP", 69, "rrl_process_gnss_assist_data", 772, *(a2 + 20));
          LbsOsaTrace_WriteLog(0x13u, __str, v22, 0, 1);
        }
      }

      else
      {
        a1[72] = v20;
      }

      v23 = *(a2 + 24);
      if (v23 > 0xFF)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v24 = mach_continuous_time();
          v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx bitNumber,%d\n", (*&g_MacClockTicksToMsRelation * v24), "PSP", 69, "rrl_process_gnss_assist_data", 772, *(a2 + 24));
          LbsOsaTrace_WriteLog(0x13u, __str, v25, 0, 1);
        }
      }

      else
      {
        a1[73] = v23;
      }
    }

    if (*(a2 + 56) == 1)
    {
      v26 = *(a2 + 48);
      if (v26 >= 1)
      {
        if (v26 > 0xFF)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v27 = mach_continuous_time();
            v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Length,%u\n", (*&g_MacClockTicksToMsRelation * v27), "PSP", 69, "rrl_process_gnss_assist_data", 772, *(a2 + 48));
            LbsOsaTrace_WriteLog(0x13u, __str, v28, 0, 1);
          }
        }

        else
        {
          a1[76] = v26;
        }

        if (a1[76] < 0x11u)
        {
          if (!a1[76])
          {
            goto LABEL_64;
          }
        }

        else
        {
          a1[76] = 16;
        }

        v29 = 0;
        v30 = (a2 + 32);
        v31 = a1 + 84;
        do
        {
          v30 = *v30;
          v32 = *(v30 + 2);
          if (v32 > 0xFF)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v33 = mach_continuous_time();
              v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatID,%d\n", (*&g_MacClockTicksToMsRelation * v33), "PSP", 69, "rrl_process_gnss_assist_data", 772, *(v30 + 2));
              LbsOsaTrace_WriteLog(0x13u, __str, v34, 0, 1);
            }
          }

          else
          {
            *(v31 - 6) = v32;
          }

          v35 = *(v30 + 3);
          if (HIWORD(v35))
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v36 = mach_continuous_time();
              v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx tlmWord,%d\n", (*&g_MacClockTicksToMsRelation * v36), "PSP", 69, "rrl_process_gnss_assist_data", 772, *(v30 + 3));
              LbsOsaTrace_WriteLog(0x13u, __str, v37, 0, 1);
            }
          }

          else
          {
            *(v31 - 2) = v35;
          }

          v38 = *(v30 + 4);
          if (v38 > 0xFF)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v39 = mach_continuous_time();
              v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx antiSpoof,%d\n", (*&g_MacClockTicksToMsRelation * v39), "PSP", 69, "rrl_process_gnss_assist_data", 772, *(v30 + 4));
              LbsOsaTrace_WriteLog(0x13u, __str, v40, 0, 1);
            }
          }

          else
          {
            *(v31 - 2) = v38;
          }

          v41 = *(v30 + 5);
          if (v41 > 0xFF)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v42 = mach_continuous_time();
              v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx alert,%d\n", (*&g_MacClockTicksToMsRelation * v42), "PSP", 69, "rrl_process_gnss_assist_data", 772, *(v30 + 5));
              LbsOsaTrace_WriteLog(0x13u, __str, v43, 0, 1);
            }
          }

          else
          {
            *(v31 - 1) = v41;
          }

          v44 = *(v30 + 6);
          if (v44 > 0xFF)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v45 = mach_continuous_time();
              v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx tlmRsvdBits,%d\n", (*&g_MacClockTicksToMsRelation * v45), "PSP", 69, "rrl_process_gnss_assist_data", 772, *(v30 + 6));
              LbsOsaTrace_WriteLog(0x13u, __str, v46, 0, 1);
            }
          }

          else
          {
            *v31 = v44;
          }

          ++v29;
          v31 += 8;
        }

        while (v29 < a1[76]);
      }
    }
  }

LABEL_64:
  if (*(a2 + 88) == 1)
  {
    v47 = *(a2 + 80);
    if (!v47)
    {
      goto LABEL_81;
    }

    v48 = *(a2 + 72);
    if (v48 < 7)
    {
      goto LABEL_81;
    }

    *(a1 + 252) = 0;
    v49 = *v47 >> 4;
    *(a1 + 261) = v49;
    a1[524] = v47[1] >> 7;
    v50 = v47[1];
    *(a1 + 66) = (v50 & 0x7F) << 8;
    v51 = v47[2] | ((v50 & 0x7F) << 8);
    *(a1 + 66) = v51 << 8;
    *(a1 + 66) = v47[3] | ((v51 & 0x7FFF) << 8);
    v52 = v47[4];
    LODWORD(v51) = v52;
    *(a1 + 134) = v52 << 8;
    v53 = v47[5] | (v52 << 8);
    *(a1 + 134) = v53 << 8;
    v54 = v47[6] | (v53 << 8);
    if ((v51 & 0x80000000) != 0)
    {
      v54 |= 0xFF800000;
    }

    *(a1 + 134) = v54;
    if (v49 > 7)
    {
      if (v49 == 8)
      {
        if (v48 >= 9)
        {
          a1[543] = v47[7] & 0x80;
          v57 = v47[7];
          *(a1 + 68) = v57 << 8;
          *(a1 + 68) = v47[8] | (v57 << 8);
          goto LABEL_81;
        }

        goto LABEL_83;
      }

      if (v49 == 9)
      {
        if (v48 >= 0xE)
        {
          a1[543] = v47[7] & 0x80;
          v56 = v47[7];
          *(a1 + 68) = v56 << 8;
          *(a1 + 68) = v47[8] | (v56 << 8);
          a1[540] = v47[9];
          a1[541] = v47[10];
          a1[542] = v47[11];
          a1[552] = v47[12];
          v55 = v47[13];
          goto LABEL_78;
        }

LABEL_83:
        *(a1 + 252) = 5;
        goto LABEL_84;
      }
    }

    else
    {
      if (v49 < 2)
      {
LABEL_81:
        a1[616] |= 1u;
        *a1 = 1;
        goto LABEL_84;
      }

      if (v49 == 3)
      {
        if (v48 >= 0xB)
        {
          a1[540] = v47[7];
          a1[541] = v47[8];
          a1[542] = v47[9];
          v55 = v47[10];
LABEL_78:
          a1[553] = v55;
          goto LABEL_81;
        }

        goto LABEL_83;
      }
    }

    ms_report_exception(1, 24590, 1737, "rrl_set_ref_location");
    goto LABEL_83;
  }

LABEL_84:
  if (*(a2 + 160) == 1)
  {
    v58 = *(a2 + 152);
    if (v58 > 255)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v59 = mach_continuous_time();
        v60 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Length,%u\n", (*&g_MacClockTicksToMsRelation * v59), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(a2 + 152));
        LbsOsaTrace_WriteLog(0x13u, __str, v60, 0, 1);
      }

      v58 = *(a2 + 152);
    }

    else
    {
      a1[312] = v58;
    }

    v61 = v58;
    v62 = 100 * v58;
    if (is_mul_ok(v61, 0x64uLL))
    {
      v63 = v62;
    }

    else
    {
      v63 = -1;
    }

    v64 = operator new[](v63, MEMORY[0x29EDC9418]);
    if (v64)
    {
      if (v61)
      {
        v65 = v64;
        do
        {
          *v65 = 255;
          *(v65 + 4) = -1;
          v65[10] = -1;
          *(v65 + 2) = -1;
          v65[6] = -1;
          *(v65 + 12) = -1;
          *(v65 + 20) = -1;
          *(v65 + 28) = -COERCE_DOUBLE(0x800000008000);
          *(v65 + 36) = 0x7FFF7FFF7FFFFFFFLL;
          *(v65 + 11) = 0x7FFFFFFF;
          *(v65 + 24) = 0x7FFF;
          *(v65 + 13) = -1;
          *(v65 + 28) = 0x7FFF;
          *(v65 + 60) = -1;
          *(v65 + 34) = 0x7FFF;
          *(v65 + 18) = 0x7FFFFFFF;
          *(v65 + 38) = 0x7FFF;
          *(v65 + 20) = 0x7FFFFFFF;
          *(v65 + 42) = 0x7FFF;
          *(v65 + 11) = 0x8000000080000000;
          *(v65 + 48) = 0x7FFF;
          v65 += 100;
        }

        while (v65 != &v64[100 * v61]);
      }

      *(a1 + 40) = v64;
      if (a1[312])
      {
        v66 = 0;
        v67 = (a2 + 136);
        v68 = 96;
        do
        {
          v67 = *v67;
          v69 = *(v67 + 2);
          if (v69 > 0xFF)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v70 = mach_continuous_time();
              v71 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SatID,%d\n", (*&g_MacClockTicksToMsRelation * v70), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 2));
              LbsOsaTrace_WriteLog(0x13u, __str, v71, 0, 1);
            }
          }

          else
          {
            *(*(a1 + 40) + v68 - 96) = v69;
          }

          v72 = *(a1 + 40);
          v73 = v72 + v68;
          *(v73 - 95) = 0;
          v74 = *(v67 + 3);
          *(v73 - 94) = v74;
          if ((v74 | 2) == 2)
          {
            v75 = *(v67 + 4);
            if (v75 > 0xFF)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v76 = mach_continuous_time();
                v77 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemCodeOnL2,%d\n", (*&g_MacClockTicksToMsRelation * v76), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 4));
                LbsOsaTrace_WriteLog(0x13u, __str, v77, 0, 1);
              }
            }

            else
            {
              *(v72 + v68 - 92) = v75;
            }

            v78 = *(v67 + 5);
            if (v78 > 0xFF)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v79 = mach_continuous_time();
                v80 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemURA,%d\n", (*&g_MacClockTicksToMsRelation * v79), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 5));
                LbsOsaTrace_WriteLog(0x13u, __str, v80, 0, 1);
              }
            }

            else
            {
              *(*(a1 + 40) + v68 - 91) = v78;
            }

            v81 = *(v67 + 6);
            if (v81 > 0xFF)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v82 = mach_continuous_time();
                v83 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemSVhealth,%d\n", (*&g_MacClockTicksToMsRelation * v82), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 6));
                LbsOsaTrace_WriteLog(0x13u, __str, v83, 0, 1);
              }
            }

            else
            {
              *(*(a1 + 40) + v68 - 90) = v81;
            }

            v84 = *(v67 + 7);
            if (HIWORD(v84))
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v85 = mach_continuous_time();
                v86 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemIODC,%d\n", (*&g_MacClockTicksToMsRelation * v85), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 7));
                LbsOsaTrace_WriteLog(0x13u, __str, v86, 0, 1);
              }
            }

            else
            {
              *(*(a1 + 40) + v68 - 88) = v84;
            }

            v87 = *(v67 + 8);
            if (v87 > 0xFF)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v88 = mach_continuous_time();
                v89 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemL2Pflag,%d\n", (*&g_MacClockTicksToMsRelation * v88), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 8));
                LbsOsaTrace_WriteLog(0x13u, __str, v89, 0, 1);
              }
            }

            else
            {
              *(*(a1 + 40) + v68 - 86) = v87;
            }

            v90 = *(a1 + 40) + v68;
            *(v90 - 84) = *(v67 + 36);
            v91 = *(v67 + 13);
            if (v91 == v91)
            {
              *(v90 - 68) = v91;
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v92 = mach_continuous_time();
              v93 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemTgd,%d\n", (*&g_MacClockTicksToMsRelation * v92), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 13));
              LbsOsaTrace_WriteLog(0x13u, __str, v93, 0, 1);
            }

            v94 = *(v67 + 14);
            if (HIWORD(v94))
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v95 = mach_continuous_time();
                v96 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemToc,%d\n", (*&g_MacClockTicksToMsRelation * v95), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 14));
                LbsOsaTrace_WriteLog(0x13u, __str, v96, 0, 1);
              }
            }

            else
            {
              *(*(a1 + 40) + v68 - 66) = v94;
            }

            v97 = *(v67 + 15);
            if (v97 == v97)
            {
              *(*(a1 + 40) + v68 - 64) = v97;
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v98 = mach_continuous_time();
              v99 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemAF2,%d\n", (*&g_MacClockTicksToMsRelation * v98), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 15));
              LbsOsaTrace_WriteLog(0x13u, __str, v99, 0, 1);
            }

            v100 = *(v67 + 16);
            if (v100 == v100)
            {
              *(*(a1 + 40) + v68 - 62) = v100;
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v101 = mach_continuous_time();
              v102 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemAF1,%d\n", (*&g_MacClockTicksToMsRelation * v101), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 16));
              LbsOsaTrace_WriteLog(0x13u, __str, v102, 0, 1);
            }

            v103 = *(a1 + 40) + v68;
            *(v103 - 60) = *(v67 + 17);
            v104 = *(v67 + 18);
            if (v104 == v104)
            {
              *(v103 - 56) = v104;
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v105 = mach_continuous_time();
              v106 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemCrs,%d\n", (*&g_MacClockTicksToMsRelation * v105), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 18));
              LbsOsaTrace_WriteLog(0x13u, __str, v106, 0, 1);
            }

            v107 = *(v67 + 19);
            if (v107 == v107)
            {
              *(*(a1 + 40) + v68 - 54) = v107;
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v108 = mach_continuous_time();
              v109 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemDeltaN,%d\n", (*&g_MacClockTicksToMsRelation * v108), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 19));
              LbsOsaTrace_WriteLog(0x13u, __str, v109, 0, 1);
            }

            v110 = *(a1 + 40) + v68;
            *(v110 - 52) = *(v67 + 20);
            v111 = *(v67 + 21);
            if (v111 == v111)
            {
              *(v110 - 48) = v111;
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v112 = mach_continuous_time();
              v113 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemCuc,%d\n", (*&g_MacClockTicksToMsRelation * v112), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 21));
              LbsOsaTrace_WriteLog(0x13u, __str, v113, 0, 1);
            }

            v114 = *(a1 + 40) + v68;
            *(v114 - 44) = *(v67 + 22);
            v115 = *(v67 + 23);
            if (v115 == v115)
            {
              *(v114 - 40) = v115;
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v116 = mach_continuous_time();
              v117 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemCus,%d\n", (*&g_MacClockTicksToMsRelation * v116), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 23));
              LbsOsaTrace_WriteLog(0x13u, __str, v117, 0, 1);
            }

            v118 = *(a1 + 40) + v68;
            *(v118 - 36) = *(v67 + 24);
            v119 = *(v67 + 25);
            if (HIWORD(v119))
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v120 = mach_continuous_time();
                v121 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemToe,%d\n", (*&g_MacClockTicksToMsRelation * v120), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 25));
                LbsOsaTrace_WriteLog(0x13u, __str, v121, 0, 1);
              }
            }

            else
            {
              *(v118 - 32) = v119;
            }

            v122 = *(v67 + 26);
            if (v122 > 0xFF)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v123 = mach_continuous_time();
                v124 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemFitFlag,%d\n", (*&g_MacClockTicksToMsRelation * v123), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 26));
                LbsOsaTrace_WriteLog(0x13u, __str, v124, 0, 1);
              }
            }

            else
            {
              *(*(a1 + 40) + v68 - 30) = v122;
            }

            v125 = *(v67 + 27);
            if (v125 > 0xFF)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v126 = mach_continuous_time();
                v127 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemAODA,%d\n", (*&g_MacClockTicksToMsRelation * v126), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 27));
                LbsOsaTrace_WriteLog(0x13u, __str, v127, 0, 1);
              }
            }

            else
            {
              *(*(a1 + 40) + v68 - 29) = v125;
            }

            v128 = *(v67 + 28);
            if (v128 == v128)
            {
              *(*(a1 + 40) + v68 - 28) = v128;
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v129 = mach_continuous_time();
              v130 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemCic,%d\n", (*&g_MacClockTicksToMsRelation * v129), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 28));
              LbsOsaTrace_WriteLog(0x13u, __str, v130, 0, 1);
            }

            v131 = *(a1 + 40) + v68;
            *(v131 - 24) = *(v67 + 29);
            v132 = *(v67 + 30);
            if (v132 == v132)
            {
              *(v131 - 20) = v132;
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v133 = mach_continuous_time();
              v134 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemCis,%d\n", (*&g_MacClockTicksToMsRelation * v133), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 30));
              LbsOsaTrace_WriteLog(0x13u, __str, v134, 0, 1);
            }

            v135 = *(a1 + 40) + v68;
            *(v135 - 16) = *(v67 + 31);
            v136 = *(v67 + 32);
            if (v136 == v136)
            {
              *(v135 - 12) = v136;
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v137 = mach_continuous_time();
              v138 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemCrc,%d\n", (*&g_MacClockTicksToMsRelation * v137), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 32));
              LbsOsaTrace_WriteLog(0x13u, __str, v138, 0, 1);
            }

            v139 = *(a1 + 40);
            *(v139 + v68 - 8) = *(v67 + 132);
            v140 = *(v67 + 35);
            if (v140 == v140)
            {
              *(v139 + v68) = v140;
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v141 = mach_continuous_time();
              v142 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ephemIDot,%d\n", (*&g_MacClockTicksToMsRelation * v141), "PSP", 69, "rrl_set_gps_navigation_data", 772, *(v67 + 35));
              LbsOsaTrace_WriteLog(0x13u, __str, v142, 0, 1);
            }
          }

          else
          {
            ms_report_exception(1, 24590, 1807, "rrl_set_gps_navigation_data");
          }

          ++v66;
          v68 += 100;
        }

        while (v66 < a1[312]);
      }

      a1[304] = 1;
      *a1 = 1;
      a1[8] = 1;
    }

    else
    {
      *(a1 + 40) = 0;
      ms_report_exception(2, 3, 1771, "rrl_set_gps_navigation_data");
      a1[304] = 0;
    }
  }

  if (*(a2 + 272) == 1)
  {
    a1[344] = *(a2 + 240);
    v143 = *(a2 + 264);
    a1[346] = *(a2 + 264);
    v144 = operator new[](32 * v143, MEMORY[0x29EDC9418]);
    if (v144)
    {
      if (v143)
      {
        v145 = v144;
        do
        {
          *v145 = -1;
          *(v145 + 1) = -1;
          v145[4] = -1;
          *(v145 + 6) = 2147450879;
          v145[10] = -1;
          *(v145 + 12) = xmmword_299728330;
          *(v145 + 7) = 2147450879;
          v145 += 32;
        }

        while (v145 != &v144[32 * v143]);
      }

      *(a1 + 44) = v144;
      if (v143)
      {
        v146 = 0;
        v147 = (a2 + 248);
        v148 = 30;
        do
        {
          v147 = *v147;
          v149 = *(v147 + 2);
          if (v149 > 0xFF)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v150 = mach_continuous_time();
              v151 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx satelliteID,%d\n", (*&g_MacClockTicksToMsRelation * v150), "PSP", 69, "rrl_set_gps_almanac_data", 772, *(v147 + 2));
              LbsOsaTrace_WriteLog(0x13u, __str, v151, 0, 1);
            }
          }

          else
          {
            *(*(a1 + 44) + v148 - 30) = v149;
          }

          v152 = *(v147 + 3);
          if (HIWORD(v152))
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v153 = mach_continuous_time();
              v154 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx almanacE,%d\n", (*&g_MacClockTicksToMsRelation * v153), "PSP", 69, "rrl_set_gps_almanac_data", 772, *(v147 + 3));
              LbsOsaTrace_WriteLog(0x13u, __str, v154, 0, 1);
            }
          }

          else
          {
            *(*(a1 + 44) + v148 - 28) = v152;
          }

          v155 = *(v147 + 4);
          if (v155 > 0xFF)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v156 = mach_continuous_time();
              v157 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx alamanacToa,%d\n", (*&g_MacClockTicksToMsRelation * v156), "PSP", 69, "rrl_set_gps_almanac_data", 772, *(v147 + 4));
              LbsOsaTrace_WriteLog(0x13u, __str, v157, 0, 1);
            }
          }

          else
          {
            *(*(a1 + 44) + v148 - 26) = v155;
          }

          v158 = *(v147 + 5);
          if (v158 == v158)
          {
            *(*(a1 + 44) + v148 - 24) = v158;
          }

          else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v159 = mach_continuous_time();
            v160 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx almanacKsii,%d\n", (*&g_MacClockTicksToMsRelation * v159), "PSP", 69, "rrl_set_gps_almanac_data", 772, *(v147 + 5));
            LbsOsaTrace_WriteLog(0x13u, __str, v160, 0, 1);
          }

          v161 = *(v147 + 6);
          if (v161 == v161)
          {
            *(*(a1 + 44) + v148 - 22) = v161;
          }

          else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v162 = mach_continuous_time();
            v163 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx almanacOmegaDot,%d\n", (*&g_MacClockTicksToMsRelation * v162), "PSP", 69, "rrl_set_gps_almanac_data", 772, *(v147 + 6));
            LbsOsaTrace_WriteLog(0x13u, __str, v163, 0, 1);
          }

          v164 = *(v147 + 7);
          if (v164 > 0xFF)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v165 = mach_continuous_time();
              v166 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx almanacSVhealth,%d\n", (*&g_MacClockTicksToMsRelation * v165), "PSP", 69, "rrl_set_gps_almanac_data", 772, *(v147 + 7));
              LbsOsaTrace_WriteLog(0x13u, __str, v166, 0, 1);
            }
          }

          else
          {
            *(*(a1 + 44) + v148 - 20) = v164;
          }

          v167 = *(a1 + 44) + v148;
          *(v167 - 18) = *(v147 + 2);
          v168 = *(v147 + 12);
          if (v168 == v168)
          {
            *(v167 - 2) = v168;
          }

          else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v169 = mach_continuous_time();
            v170 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx almanacAF0,%d\n", (*&g_MacClockTicksToMsRelation * v169), "PSP", 69, "rrl_set_gps_almanac_data", 772, *(v147 + 12));
            LbsOsaTrace_WriteLog(0x13u, __str, v170, 0, 1);
          }

          v171 = *(v147 + 13);
          if (v171 == v171)
          {
            *(*(a1 + 44) + v148) = v171;
          }

          else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v172 = mach_continuous_time();
            v173 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx almanacAF1,%d\n", (*&g_MacClockTicksToMsRelation * v172), "PSP", 69, "rrl_set_gps_almanac_data", 772, *(v147 + 13));
            LbsOsaTrace_WriteLog(0x13u, __str, v173, 0, 1);
          }

          ++v146;
          v148 += 32;
        }

        while (v146 < a1[346]);
      }

      if (v222 && *(v222 + 218) == 1)
      {
        a1[345] = *(v222 + 217);
      }

      a1[336] = 1;
      *a1 = 1;
      a1[8] = 1;
    }

    else
    {
      *(a1 + 44) = 0;
      ms_report_exception(2, 3, 2039, "rrl_set_gps_almanac_data");
      a1[336] = 0;
    }
  }

  if (*(a2 + 196) == 1)
  {
    v174 = *(a2 + 164);
    if (v174 == v174)
    {
      a1[620] = v174;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v175 = mach_continuous_time();
      v176 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx alfa0,%d\n", (*&g_MacClockTicksToMsRelation * v175), "PSP", 69, "rrl_set_gnss_iono_model_data", 772, *(a2 + 164));
      LbsOsaTrace_WriteLog(0x13u, __str, v176, 0, 1);
    }

    v177 = *(a2 + 168);
    if (v177 == v177)
    {
      a1[621] = v177;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v178 = mach_continuous_time();
      v179 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx alfa1,%d\n", (*&g_MacClockTicksToMsRelation * v178), "PSP", 69, "rrl_set_gnss_iono_model_data", 772, *(a2 + 168));
      LbsOsaTrace_WriteLog(0x13u, __str, v179, 0, 1);
    }

    v180 = *(a2 + 172);
    if (v180 == v180)
    {
      a1[622] = v180;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v181 = mach_continuous_time();
      v182 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx alfa2,%d\n", (*&g_MacClockTicksToMsRelation * v181), "PSP", 69, "rrl_set_gnss_iono_model_data", 772, *(a2 + 172));
      LbsOsaTrace_WriteLog(0x13u, __str, v182, 0, 1);
    }

    v183 = *(a2 + 176);
    if (v183 == v183)
    {
      a1[623] = v183;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v184 = mach_continuous_time();
      v185 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx alfa3,%d\n", (*&g_MacClockTicksToMsRelation * v184), "PSP", 69, "rrl_set_gnss_iono_model_data", 772, *(a2 + 176));
      LbsOsaTrace_WriteLog(0x13u, __str, v185, 0, 1);
    }

    v186 = *(a2 + 180);
    if (v186 == v186)
    {
      a1[624] = v186;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v187 = mach_continuous_time();
      v188 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx beta0,%d\n", (*&g_MacClockTicksToMsRelation * v187), "PSP", 69, "rrl_set_gnss_iono_model_data", 772, *(a2 + 180));
      LbsOsaTrace_WriteLog(0x13u, __str, v188, 0, 1);
    }

    v189 = *(a2 + 184);
    if (v189 == v189)
    {
      a1[625] = v189;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v190 = mach_continuous_time();
      v191 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx beta1,%d\n", (*&g_MacClockTicksToMsRelation * v190), "PSP", 69, "rrl_set_gnss_iono_model_data", 772, *(a2 + 184));
      LbsOsaTrace_WriteLog(0x13u, __str, v191, 0, 1);
    }

    v192 = *(a2 + 188);
    if (v192 == v192)
    {
      a1[626] = v192;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v193 = mach_continuous_time();
      v194 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx beta2,%d\n", (*&g_MacClockTicksToMsRelation * v193), "PSP", 69, "rrl_set_gnss_iono_model_data", 772, *(a2 + 188));
      LbsOsaTrace_WriteLog(0x13u, __str, v194, 0, 1);
    }

    v195 = *(a2 + 192);
    if (v195 == v195)
    {
      a1[627] = v195;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v196 = mach_continuous_time();
      v197 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx beta3,%d\n", (*&g_MacClockTicksToMsRelation * v196), "PSP", 69, "rrl_set_gnss_iono_model_data", 772, *(a2 + 192));
      LbsOsaTrace_WriteLog(0x13u, __str, v197, 0, 1);
    }

    a1[629] |= 1u;
    a1[617] = 1;
    *a1 = 1;
  }

  if (*(a2 + 232) == 1)
  {
    *(a1 + 372) = *(a2 + 200);
    v198 = *(a2 + 208);
    if (v198 > 0xFF)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v199 = mach_continuous_time();
        v200 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx utcTot,%d\n", (*&g_MacClockTicksToMsRelation * v199), "PSP", 69, "rrl_set_gps_utc_model_data", 772, *(a2 + 208));
        LbsOsaTrace_WriteLog(0x13u, __str, v200, 0, 1);
      }
    }

    else
    {
      a1[380] = v198;
    }

    v201 = *(a2 + 212);
    if (v201 > 0xFF)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v202 = mach_continuous_time();
        v203 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx utcWNt,%d\n", (*&g_MacClockTicksToMsRelation * v202), "PSP", 69, "rrl_set_gps_utc_model_data", 772, *(a2 + 212));
        LbsOsaTrace_WriteLog(0x13u, __str, v203, 0, 1);
      }
    }

    else
    {
      a1[381] = v201;
    }

    v204 = *(a2 + 216);
    if (v204 == v204)
    {
      a1[382] = v204;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v205 = mach_continuous_time();
      v206 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx utcDeltaTls,%d\n", (*&g_MacClockTicksToMsRelation * v205), "PSP", 69, "rrl_set_gps_utc_model_data", 772, *(a2 + 216));
      LbsOsaTrace_WriteLog(0x13u, __str, v206, 0, 1);
    }

    v207 = *(a2 + 220);
    if (v207 > 0xFF)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v208 = mach_continuous_time();
        v209 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx utcWNlsf,%d\n", (*&g_MacClockTicksToMsRelation * v208), "PSP", 69, "rrl_set_gps_utc_model_data", 772, *(a2 + 220));
        LbsOsaTrace_WriteLog(0x13u, __str, v209, 0, 1);
      }
    }

    else
    {
      a1[383] = v207;
    }

    v210 = *(a2 + 224);
    if (v210 == v210)
    {
      a1[384] = v210;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v211 = mach_continuous_time();
      v212 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx utcDN,%d\n", (*&g_MacClockTicksToMsRelation * v211), "PSP", 69, "rrl_set_gps_utc_model_data", 772, *(a2 + 224));
      LbsOsaTrace_WriteLog(0x13u, __str, v212, 0, 1);
    }

    v213 = *(a2 + 228);
    if (v213 == v213)
    {
      a1[385] = v213;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v214 = mach_continuous_time();
      v215 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx utcDeltaTlsf,%d\n", (*&g_MacClockTicksToMsRelation * v214), "PSP", 69, "rrl_set_gps_utc_model_data", 772, *(a2 + 228));
      LbsOsaTrace_WriteLog(0x13u, __str, v215, 0, 1);
    }

    a1[368] = 1;
    *a1 = 1;
    a1[8] = 1;
  }

  if (*(a2 + 368) == 1)
  {
    v216 = *(a2 + 360);
    if (v216 > 255)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v217 = mach_continuous_time();
        v218 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Length,%u\n", (*&g_MacClockTicksToMsRelation * v217), "PSP", 69, "rrl_set_gps_real_time_integrity_data", 772, *(a2 + 360));
        LbsOsaTrace_WriteLog(0x13u, __str, v218, 0, 1);
      }
    }

    else
    {
      a1[392] = v216;
    }

    v219 = gnssOsa_Calloc("posp_alloc", 18, 1, a1[392]);
    *(a1 + 50) = v219;
    if (v219)
    {
      if (a1[392])
      {
        v220 = 0;
        v221 = (a2 + 344);
        do
        {
          v221 = *v221;
          *(*(a1 + 50) + v220++) = *(v221 + 2);
        }

        while (v220 < a1[392]);
      }

      a1[388] = 1;
      *a1 = 1;
      a1[8] = 1;
    }

    else
    {
      ms_report_exception(2, 3, 2319, "rrl_set_gps_real_time_integrity_data");
      a1[388] = 0;
    }
  }
}

uint64_t rrl_encode_measure_response_error(const void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  StaticLpPrivate = GetStaticLpPrivate();
  if (!a1 && StaticLpPrivate[1344] != 1)
  {
    return 0;
  }

  memset_s(v7, 0x528uLL, 0, 0x528uLL);
  v7[0] = *(GetStaticLpPrivate() + 339);
  v7[2] = 1;
  if (GetStaticLpPrivate()[1360] == 1)
  {
    v11 = 1;
    v10 = 1;
    v9 = *(GetStaticLpPrivate() + 1364);
  }

  v8[112] = 1;
  memcpy_s("rrl_encode_measure_response_error", 666, v8, 0x70u, a1, 0x70uLL);
  v5 = rrl_encode_air_message(a2, v7);
  GenericFreeSort(v7, &ySDL_T_RASN_PDU);
  return v5;
}

uint64_t rrl_process_assistance_data_delivery(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (GetStaticLpPrivate()[16] && *(GetStaticLpPrivate() + 8) == 2)
  {
    StaticLpPrivate = GetStaticLpPrivate();
    if (StaticLpPrivate[528])
    {
      v7 = (StaticLpPrivate + 152);
    }

    else
    {
      v7 = 0;
    }

    if (StaticLpPrivate[1256])
    {
      v8 = StaticLpPrivate[1264] == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = (StaticLpPrivate + 984);
    }

    if (StaticLpPrivate[672])
    {
      v10 = StaticLpPrivate[680] == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = StaticLpPrivate + 668;
    }

    rrl_process_gnss_assist_data(a1, v7, v9, v11);
    v12 = *(GetStaticLpPrivate() + 6);
    rrl_free_asn_pdu();
    GetStaticLpPrivate()[16] = 1;
    *(GetStaticLpPrivate() + 6) = v12;
    *(GetStaticLpPrivate() + 8) = 3;
    v13 = GetStaticLpPrivate();
    v14 = rrl_encode_air_message(a3, v13 + 6);
    *a2 = v14;
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = 1;
      rrl_clear_gnss_ad(a1, 1);
    }

    rrl_free_asn_pdu();
  }

  else
  {
    rrl_clean();
    return 1;
  }

  return v15;
}

uint64_t rrl_process_measure_response_msb(unsigned __int16 *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v15 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  v7 = *(a4 + 8);
  if (v7)
  {
    free(v7);
    *(a4 + 8) = 0;
  }

  *a4 = 0;
  memset_s(__s, 0x70uLL, 0, 0x70uLL);
  if (GetStaticLpPrivate()[1344] && *(GetStaticLpPrivate() + 337) == 2)
  {
    v8 = 0;
    v9 = *a1;
    v10 = 2;
    if (v9 == 1 || v9 != 4 && (v9 == 5 || (rrl_free_asn_pdu(), v8 = 1, GetStaticLpPrivate()[16] = 1, StaticLpPrivate = GetStaticLpPrivate(), *a3 = rrl_encode_measure_response_location_info(a1, (StaticLpPrivate + 24), a4), rrl_free_asn_pdu(), v10 = 0, !*a3)))
    {
      __s[0] = v10;
      *a3 = rrl_encode_measure_response_error(__s, a4);
      v10 = v8;
    }

    v12 = GetStaticLpPrivate();
    memset_s(v12 + 1344, 0x1CuLL, 0, 0x1CuLL);
  }

  else
  {
    ms_report_exception(2, 24582, 1157, "rrl_process_measure_response_msb");
    return 1;
  }

  return v10;
}

uint64_t rrl_encode_measure_response_location_info(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x29EDCA608];
  *a2 = *(GetStaticLpPrivate() + 339);
  v6 = 1;
  *(a2 + 8) = 1;
  if (GetStaticLpPrivate()[1360] == 1)
  {
    *(a2 + 560) = 1;
    *(a2 + 512) = 1;
    *(a2 + 504) = *(GetStaticLpPrivate() + 1364);
  }

  if (*(a1 + 50))
  {
    *(a2 + 728) = 1;
    *(a2 + 584) = 1;
    v7 = *(a1 + 58) != 0;
    if (*(a1 + 56))
    {
      if (*(a1 + 58) && *(a1 + 65))
      {
        v7 = 0;
        v6 = 0;
        v8 = 48;
        v9 = 1;
        v10 = 7;
      }

      else
      {
        v7 = 0;
        v9 = 0;
        v8 = 32;
        v10 = 5;
      }
    }

    else
    {
      v9 = 0;
      v6 = 0;
      if (*(a1 + 58))
      {
        v10 = 5;
      }

      else
      {
        v10 = 4;
      }

      v8 = 16 * (*(a1 + 58) != 0);
    }

    *(a2 + 568) = v10;
    v12 = gnssOsa_Calloc("posp_alloc", 18, 1, v10);
    *(a2 + 576) = v12;
    *v12 = v8;
    **(a2 + 576) |= *(a1 + 53) & 1;
    *(*(a2 + 576) + 1) = *(a1 + 52);
    *(*(a2 + 576) + 2) = *(a1 + 55);
    *(*(a2 + 576) + 3) = *(a1 + 54);
    if (v7 || v9)
    {
      if (*(a1 + 60) == 1)
      {
        **(a2 + 576) |= 2u;
      }

      *(*(a2 + 576) + 4) = *(a1 + 64);
      v13 = 5;
    }

    else
    {
      v13 = 4;
    }

    if ((v9 | v6) == 1)
    {
      *(*(a2 + 576) + v13++) = *(a1 + 57);
    }

    if (v9)
    {
      *(*(a2 + 576) + v13) = *(a1 + 66);
    }

    *(a2 + 572) = 1;
    return 0;
  }

  if (GetStaticLpPrivate()[1352] != 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx network timing type,%u\n", (*&g_MacClockTicksToMsRelation * v15), "PSP", 69, "rrl_encode_measure_response_location_info", 770, *(a1 + 68));
      LbsOsaTrace_WriteLog(0x13u, __str, v16, 0, 1);
    }

    return 0;
  }

  *(a2 + 496) = 1;
  if (*(a1 + 68) != 1)
  {
    v11 = *(a1 + 16);
    if (v11 == 255)
    {
      goto LABEL_34;
    }

    *(a2 + 488) = 1;
    goto LABEL_33;
  }

  *(a2 + 488) = 1;
  *(a2 + 460) = 1;
  *(a2 + 456) = *(a1 + 73);
  *(a2 + 468) = 1;
  *(a2 + 464) = *(a1 + 74);
  v11 = *(a1 + 16);
  if (v11 != 255)
  {
LABEL_33:
    *(a2 + 484) = 1;
    *(a2 + 480) = v11;
  }

LABEL_34:
  *(a2 + 208) = 1;
  v17 = *(a1 + 2);
  *(a2 + 184) = 1;
  v18 = *(a1 + 8);
  *(a2 + 176) = v17;
  *(a2 + 180) = v18;
  v19 = *(a1 + 17);
  v20 = *(a1 + 18);
  *(a2 + 196) = 0;
  *(a2 + 188) = v19;
  *(a2 + 200) = 0;
  if (v20 > 2)
  {
    if (v20 == 3)
    {
      *(a2 + 192) = 11;
      v29 = gnssOsa_Calloc("posp_alloc", 18, 1, 0xBuLL);
      *(a2 + 200) = v29;
      if (v29)
      {
        *(a2 + 196) = 1;
        *v29 = 16 * *(a1 + 18);
        *(*(a2 + 200) + 1) = BYTE2(*(a1 + 24));
        *(*(a2 + 200) + 2) = BYTE1(*(a1 + 24));
        *(*(a2 + 200) + 3) = *(a1 + 24);
        if (*(a1 + 20) == 1)
        {
          *(*(a2 + 200) + 1) |= 0x80u;
        }

        *(*(a2 + 200) + 4) = *(a1 + 34);
        *(*(a2 + 200) + 5) = BYTE1(*(a1 + 32));
        *(*(a2 + 200) + 6) = *(a1 + 32);
        *(*(a2 + 200) + 7) = *(a1 + 36);
        *(*(a2 + 200) + 8) = *(a1 + 37);
        *(*(a2 + 200) + 9) = *(a1 + 38);
        LOBYTE(v22) = *(a1 + 49);
        v23 = 10;
        goto LABEL_58;
      }

      v25 = 2;
      v26 = 3;
      v27 = 1533;
    }

    else
    {
      if (v20 != 9)
      {
        goto LABEL_49;
      }

      *(a2 + 192) = 14;
      v24 = gnssOsa_Calloc("posp_alloc", 18, 1, 0xEuLL);
      *(a2 + 200) = v24;
      if (v24)
      {
        *(a2 + 196) = 1;
        *v24 = 16 * *(a1 + 18);
        *(*(a2 + 200) + 1) = BYTE2(*(a1 + 24));
        *(*(a2 + 200) + 2) = BYTE1(*(a1 + 24));
        *(*(a2 + 200) + 3) = *(a1 + 24);
        if (*(a1 + 20) == 1)
        {
          *(*(a2 + 200) + 1) |= 0x80u;
        }

        *(*(a2 + 200) + 4) = *(a1 + 34);
        *(*(a2 + 200) + 5) = BYTE1(*(a1 + 32));
        *(*(a2 + 200) + 6) = *(a1 + 32);
        *(*(a2 + 200) + 7) = BYTE1(*(a1 + 40));
        *(*(a2 + 200) + 8) = *(a1 + 40);
        if (*(a1 + 39) == 1)
        {
          *(*(a2 + 200) + 7) |= 0x80u;
        }

        *(*(a2 + 200) + 9) = *(a1 + 36);
        *(*(a2 + 200) + 10) = *(a1 + 37);
        *(*(a2 + 200) + 11) = *(a1 + 38);
        *(*(a2 + 200) + 12) = *(a1 + 48);
        LOBYTE(v22) = *(a1 + 49);
        v23 = 13;
        goto LABEL_58;
      }

      v25 = 2;
      v26 = 3;
      v27 = 1571;
    }

LABEL_65:
    ms_report_exception(v25, v26, v27, "rrl_set_pos_estimate");
    return 0;
  }

  if (!v20)
  {
    *(a2 + 192) = 7;
    v28 = gnssOsa_Calloc("posp_alloc", 18, 1, 7uLL);
    *(a2 + 200) = v28;
    if (v28)
    {
      *(a2 + 196) = 1;
      *v28 = 16 * *(a1 + 18);
      *(*(a2 + 200) + 1) = BYTE2(*(a1 + 24));
      *(*(a2 + 200) + 2) = BYTE1(*(a1 + 24));
      *(*(a2 + 200) + 3) = *(a1 + 24);
      if (*(a1 + 20) == 1)
      {
        *(*(a2 + 200) + 1) |= 0x80u;
      }

      *(*(a2 + 200) + 4) = *(a1 + 34);
      *(*(a2 + 200) + 5) = BYTE1(*(a1 + 32));
      v22 = *(a1 + 32);
      v23 = 6;
      goto LABEL_58;
    }

    v25 = 2;
    v26 = 3;
    v27 = 1463;
    goto LABEL_65;
  }

  if (v20 != 1)
  {
LABEL_49:
    v25 = 1;
    v26 = 24590;
    v27 = 1614;
    goto LABEL_65;
  }

  *(a2 + 192) = 8;
  v21 = gnssOsa_Calloc("posp_alloc", 18, 1, 8uLL);
  *(a2 + 200) = v21;
  if (!v21)
  {
    v25 = 2;
    v26 = 3;
    v27 = 1498;
    goto LABEL_65;
  }

  *(a2 + 196) = 1;
  *v21 = 16 * *(a1 + 18);
  *(*(a2 + 200) + 1) = BYTE2(*(a1 + 24));
  *(*(a2 + 200) + 2) = BYTE1(*(a1 + 24));
  *(*(a2 + 200) + 3) = *(a1 + 24);
  if (*(a1 + 20) == 1)
  {
    *(*(a2 + 200) + 1) |= 0x80u;
  }

  *(*(a2 + 200) + 4) = *(a1 + 34);
  *(*(a2 + 200) + 5) = BYTE1(*(a1 + 32));
  *(*(a2 + 200) + 6) = *(a1 + 32);
  LOBYTE(v22) = *(a1 + 36);
  v23 = 7;
LABEL_58:
  *(*(a2 + 200) + v23) = v22;

  return rrl_encode_air_message(a3, a2);
}

uint64_t rrl_process_measure_response_stand_alone(unsigned __int16 *a1, _BYTE *a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  v6 = *(a3 + 8);
  if (v6)
  {
    free(v6);
    *(a3 + 8) = 0;
  }

  *a3 = 0;
  memset_s(__s, 0x70uLL, 0, 0x70uLL);
  if (GetStaticLpPrivate()[1344] && *(GetStaticLpPrivate() + 337) == 1)
  {
    v7 = *a1;
    if (v7 == 1 || v7 == 5)
    {
      v8 = 0;
      __s[0] = 2;
    }

    else if (v7 == 4)
    {
      __s[0] = 8;
      v8 = 2;
    }

    else
    {
      rrl_free_asn_pdu();
      GetStaticLpPrivate()[16] = 1;
      StaticLpPrivate = GetStaticLpPrivate();
      *a2 = rrl_encode_measure_response_location_info(a1, (StaticLpPrivate + 24), a3);
      rrl_free_asn_pdu();
      if (*a2)
      {
        v8 = 0;
        goto LABEL_12;
      }

      __s[0] = 0;
      v8 = 1;
    }

    *a2 = rrl_encode_measure_response_error(__s, a3);
LABEL_12:
    v9 = GetStaticLpPrivate();
    memset_s(v9 + 1344, 0x1CuLL, 0, 0x1CuLL);
    return v8;
  }

  ms_report_exception(2, 24582, 1223, "rrl_process_measure_response_stand_alone");
  return 1;
}

uint64_t rrl_process_assistance_data_request(uint64_t a1, char a2, _BYTE *a3, uint64_t a4)
{
  *a3 = 0;
  v8 = *(a4 + 8);
  if (v8)
  {
    free(v8);
    *(a4 + 8) = 0;
  }

  *a4 = 0;
  if (GetStaticLpPrivate()[1344])
  {
    rrl_free_asn_pdu();
    GetStaticLpPrivate()[16] = 1;
    v9 = *(GetStaticLpPrivate() + 339);
    *(GetStaticLpPrivate() + 6) = v9;
    *(GetStaticLpPrivate() + 8) = 1;
    if (GetStaticLpPrivate()[1360] == 1)
    {
      GetStaticLpPrivate()[584] = 1;
      GetStaticLpPrivate()[536] = 1;
      v10 = GetStaticLpPrivate() + 1364;
      *(GetStaticLpPrivate() + 66) = *v10;
    }

    StaticLpPrivate = GetStaticLpPrivate();
    StaticLpPrivate[384] = 1;
    *(StaticLpPrivate + 68) = 0;
    if (a1 && (a2 & 1) != 0)
    {
      v12 = StaticLpPrivate;
      if (GetStaticLpPrivate()[1352] != 1)
      {
        ms_report_exception(2, 24589, 1319, "rrl_process_assistance_data_request");
      }

      *(v12 + 68) = 6;
      if (rrl_init_bits_enc())
      {
        v13 = *(a1 + 12);
        rrl_bits_append(8, *(a1 + 12));
        rrl_bits_append(8, (v13 >> 8) & 1);
        if ((v13 & 8) != 0)
        {
          rrl_bits_append(2, *(a1 + 15));
          rrl_bits_append(6, 0);
          rrl_bits_append(8, *(a1 + 14));
          rrl_bits_append(8, *(a1 + 16));
          rrl_bits_append(4, *(a1 + 17));
          rrl_bits_append(4, *(a1 + 18));
          if (*(a1 + 17))
          {
            v14 = 0;
            do
            {
              rrl_bits_append(2, 0);
              rrl_bits_append(6, *(a1 + v14 + 27));
              rrl_bits_append(8, *(a1 + v14++ + 43));
            }

            while (v14 < *(a1 + 17));
          }
        }

        if (rrl_finish_bits_enc(v12 + 36, v12 + 70))
        {
          v12[284] = 1;
          v12[376] = 1;
          v12[296] = 1;
        }
      }
    }

    v15 = GetStaticLpPrivate();
    v16 = rrl_encode_air_message(a4, v15 + 6);
    *a3 = v16;
    v17 = v16 ^ 1u;
    rrl_free_asn_pdu();
    v18 = GetStaticLpPrivate();
    memset_s(v18 + 1344, 0x1CuLL, 0, 0x1CuLL);
  }

  else
  {
    ms_report_exception(2, 24582, 1291, "rrl_process_assistance_data_request");
    return 1;
  }

  return v17;
}

uint64_t GN_Sen_Set_Defin(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = qword_2A1926970;
  if (a1)
  {
    if (*(a1 + 16) > 2)
    {
      return 0;
    }

    *qword_2A1926970 = *a1;
    v4 = *(a1 + 16);
    v5 = *(a1 + 32);
    v6 = *(a1 + 64);
    v3[3] = *(a1 + 48);
    v3[4] = v6;
    v3[1] = v4;
    v3[2] = v5;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

  if (*(a2 + 16) > 2)
  {
    return 0;
  }

  v3[5] = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  v9 = *(a2 + 64);
  v3[8] = *(a2 + 48);
  v3[9] = v9;
  v3[6] = v7;
  v3[7] = v8;
LABEL_7:
  if (a3)
  {
    if (*(a3 + 16) > 2)
    {
      return 0;
    }

    v3[10] = *a3;
    v11 = *(a3 + 16);
    v12 = *(a3 + 32);
    v13 = *(a3 + 64);
    v3[13] = *(a3 + 48);
    v3[14] = v13;
    v3[11] = v11;
    v3[12] = v12;
  }

  return 1;
}

uint64_t GN_Sen_Set_Accl(uint64_t a1, char *a2)
{
  if (a1 <= 0x2BC)
  {
    v4 = a1;
    if (a1)
    {
      v5 = 0;
      v6 = 0;
      v7 = a1;
      v8 = a2;
      do
      {
        for (i = 0; i != 3; ++i)
        {
          if (fabs(*&v8[8 * i]) > 312.970646)
          {
            EvCrt_v("GN_Sen_Set_Accl: FAILED: Accl[%d].XYZ[%d] = %f <-32g or >+32g, Out of range!", v5, i, *&v8[8 * i]);
            v6 = 1;
          }
        }

        ++v5;
        v8 += 32;
      }

      while (v5 != v4);
      v10 = qword_2A1926970;
      v11 = a2;
      do
      {
        Cyc_Record_Write(v10 + 240, v11);
        v11 += 32;
        --v7;
      }

      while (v7);
      v2 = v6 ^ 1;
    }

    else
    {
      v2 = 1;
    }

    Sen_Log_3AxesData_UU(114, v4, a2, 20000.0);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void Sen_Log_3AxesData_UU(uint64_t result, int a2, uint64_t a3, double a4)
{
  v24 = result;
  v27 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v7 = xmmword_2A1926A80;
    GNB_Debug_Flush_Check();
    v8 = 0;
    v9 = 1;
    do
    {
      memset(v26, 0, sizeof(v26));
      v10 = *(a3 + 32 * v8 + 24);
      v11 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      *v26 = v11;
      v26[2] = v11 >> 16;
      v26[3] = v11 >> 24;
      if (a2 - v8 >= 30)
      {
        v12 = 30;
      }

      else
      {
        v12 = a2 - v8;
      }

      v26[4] = v12;
      v25 = &v26[5];
      if (a2 - v8 >= 1)
      {
        v13 = 0;
        if (v12 <= 1)
        {
          v12 = 1;
        }

        v14 = 13 * v12;
        v15 = a3 + 16 + 32 * v8;
        do
        {
          v16 = v10;
          if (v13)
          {
            v16 = *(v15 + 8) - v10;
          }

          v17 = *(v15 - 8);
          v18 = (*(v15 - 16) * a4);
          v19 = &v26[v13 + 5];
          *v19 = v16;
          *(v19 + 2) = v18;
          v19[6] = BYTE2(v18);
          v20 = (v17 * a4);
          *(v19 + 7) = v20;
          v19[9] = BYTE2(v20);
          v21 = *v15;
          v15 += 32;
          v22 = (v21 * a4);
          *(v19 + 5) = v22;
          v19[12] = BYTE2(v22);
          v13 += 13;
          ++v8;
        }

        while (v14 != v13);
        v25 = &v26[v13 + 5];
      }

      STEU_Encode_X(v7, v24, v26, &v25);
      GNB_Debug_Flush_Check();
    }

    while (v9++ != (a2 - 1) / 30 + 1);
  }
}

uint64_t GN_Sen_Set_Gyro(unsigned int a1, char *a2)
{
  if (a1 <= 0x2BC)
  {
    if (a1)
    {
      v5 = 0;
      v6 = 0;
      v7 = a1;
      v8 = a2;
      do
      {
        for (i = 0; i != 3; ++i)
        {
          if (fabs(*(v8 + 8 * i)) > 34.9)
          {
            EvCrt_v("GN_Sen_Set_Gyro: FAILED: Gyro[%d].XYZ[%d] = %f <-20rads/s or >+20rads/s, Out of range!", v5, i, *(v8 + 8 * i));
            v6 = 1;
          }
        }

        ++v5;
        v8 += 32;
      }

      while (v5 != a1);
      v10 = qword_2A1926970;
      v11 = a2;
      do
      {
        Cyc_Record_Write(v10 + 336, v11);
        v11 += 32;
        --v7;
      }

      while (v7);
      v2 = v6 ^ 1;
    }

    else
    {
      v2 = 1;
    }

    Sen_Log_3AxesData_UU(103, a1, a2, 200000.0);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t GN_Sen_Set_Baro(unsigned int a1, double *a2)
{
  v29 = *MEMORY[0x29EDCA608];
  if (a1 <= 0x32)
  {
    if (a1)
    {
      v5 = 0;
      v6 = 0;
      v7 = a1;
      v8 = a2;
      do
      {
        if (*v8 < 500.0 || *v8 > 1500.0)
        {
          EvCrt_v("GN_Sen_Set_Baro: FAILED: Baro[%d].Press = %f <+500hPa or >+1500hPa, Out of range!", v5, *v8);
          v6 = 1;
        }

        ++v5;
        v8 += 3;
      }

      while (a1 != v5);
      v9 = qword_2A1926970;
      v10 = a2;
      do
      {
        Cyc_Record_Write(v9 + 432, v10);
        v10 += 3;
        --v7;
      }

      while (v7);
      v2 = v6 ^ 1;
    }

    else
    {
      v2 = 1;
    }

    if (g_Enable_GNB_Debug)
    {
      v26 = v2;
      v11 = xmmword_2A1926A80;
      GNB_Debug_Flush_Check();
      v12 = 0;
      v13 = 1;
      do
      {
        memset(v28, 0, sizeof(v28));
        v14 = LODWORD(a2[3 * v12 + 2]);
        v15 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        *v28 = v15;
        v28[2] = v15 >> 16;
        v28[3] = v15 >> 24;
        if ((a1 - v12) >= 30)
        {
          v16 = 30;
        }

        else
        {
          v16 = a1 - v12;
        }

        v28[4] = v16;
        v27 = &v28[5];
        if ((a1 - v12) >= 1)
        {
          v17 = 0;
          if (v16 <= 1)
          {
            v18 = 1;
          }

          else
          {
            v18 = v16;
          }

          v19 = &a2[3 * v12 + 2];
          v20 = 7 * v18;
          do
          {
            v21 = v14;
            if (v17)
            {
              v21 = *v19 - v14;
            }

            v22 = &v28[v17 + 5];
            *v22 = v21;
            v23 = ((*(v19 - 2) + -1000.0) * 50000.0);
            *(v22 + 2) = v23;
            v22[6] = BYTE2(v23);
            v17 += 7;
            ++v12;
            v19 += 3;
          }

          while (v20 != v17);
          v27 = &v28[v17 + 5];
        }

        STEU_Encode_X(v11, 98, v28, &v27);
        GNB_Debug_Flush_Check();
      }

      while (v13++ != (a1 - 1) / 30 + 1);
      v2 = v26;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

unint64_t Gnm53_11GetCurrentReferenceTime(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if (!g_GnmLtlRefTime)
  {
    return 0;
  }

  v0 = g_GnmLtlRefTime;
  v1 = g_GnmLtlRefTime + (((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v0) * 0.001);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:GPSTime,%llus\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm53_11GetCurrentReferenceTime", v1);
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  return v1;
}

uint64_t Gnm53_12GetBirthTime(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:BirthGPSTime,%llus\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 73, "Gnm53_12GetBirthTime", g_GnmLtlRefTime);
    LbsOsaTrace_WriteLog(0xBu, __str, v1, 4, 1);
  }

  return g_GnmLtlRefTime;
}

double Gnm53_13SetReferenceTime(unint64_t a1, unsigned int a2, int a3, int a4)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a4 != 2 || g_GnmLtlRefTime != 1)
  {
    v4 = g_GnmLtlRefTime >= a1 || g_GnmLtlRefTime == 0;
    if (!v4 && a2 >> 4 <= 0x270 && g_GnmLtlRefTime < a1)
    {
      g_GnmLtlRefTime = a1;
      g_GnmLtlRefTime = a3;
      g_GnmLtlRefTime = a4;
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:GPSTime,%llus,OsTime,%ums,Src,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm53_13SetReferenceTime", g_GnmLtlRefTime, g_GnmLtlRefTime, g_GnmLtlRefTime);
        LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
      }
    }
  }

  return result;
}

uint64_t Gnm53_14HandleOSRefTime(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_REF_OS_TIME_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm53_14HandleOSRefTime");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = ((*(a1 + 12) + 604800000 * *(a1 + 16)) * 0.001);
    v5 = *(a1 + 18);
    v6 = mach_continuous_time();
    Gnm53_13SetReferenceTime(v4, v5, (*&g_MacClockTicksToMsRelation * v6), 1);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm53_14HandleOSRefTime", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 0, 1);
  }

  return 0;
}

double Gnm53_15InitLtlRefTime(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (!g_GnmLtlRefTime)
  {
    g_GnmLtlRefTime = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:BirthGPSTime,%llus\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm53_15InitLtlRefTime", g_GnmLtlRefTime);
      LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
    }
  }

  return result;
}

double Gnm53_24ComputeDefaultVarMENv(void)
{
  v12 = *MEMORY[0x29EDCA608];
  v5 = 0;
  v4 = 0;
  v6 = 0;
  v7 = 0;
  *&v8[0] = 0;
  v8[1] = 0u;
  *v9 = 0;
  v10 = 0;
  *(v8 + 6) = xmmword_29972AD00;
  *&v9[6] = __const__ZL26Gnm53_07GetDefaultXoParamsP22s_LsimMsg_XoInitCalInd_a_CorrFactor;
  v11 = -2132380128;
  Gnm53_23ComputeVarMENv(&v4);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:Default XOCoef,ADC,CurCorrFact\n", (*&g_MacClockTicksToMsRelation * v1), "GNM", 87, "Gnm53_24ComputeDefaultVarMENv");
    LbsOsaTrace_WriteLog(0xBu, __str, v2, 2, 1);
  }

  return result;
}

uint64_t Gnm53_23ComputeVarMENv(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v37 = *MEMORY[0x29EDCA608];
  bzero(v25, 0x11C6uLL);
  v2 = 0;
  v3 = vrev64q_s32(*(v1 + 28));
  v23 = vextq_s8(v3, v3, 8uLL);
  v24 = *(v1 + 24);
  do
  {
    v4 = &v36[v2];
    *v4 = 0;
    *(v4 + 2) = 0;
    v2 += 8;
  }

  while (v2 != 2008);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(v35, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(v35, 0x40FuLL, "%10u %s%c %s: LTL:Compute S Curves using Coefficients\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm53_21ComputeLTLTable");
    LbsOsaTrace_WriteLog(0xBu, v35, v6, 4, 1);
  }

  v7 = v36;
  ltl_least_squares_set(v36, 251, v23.i32, 5u);
  v9 = 8;
  v10.i32[0] = 963912704;
  do
  {
    v11 = *v7;
    v7 += 2;
    *v8.i32 = v11 * 0.00023283;
    v8 = vuzp1_s8(vmovn_s32(vshlq_u32(vdupq_lane_s32(v8, 0), xmmword_29972AD10)), v10);
    *&v25[v9] = v8.i32[0];
    v9 += 4;
  }

  while (v9 != 1012);
  for (i = 0; i != 502; i += 2)
  {
    *&v29[i + 1004] = 40;
  }

  CurrentReferenceTime = Gnm53_11GetCurrentReferenceTime();
  Gnm55_46SetGenMasterLTLTime(v25, 0x11C6u);
  v30 = Gnm53_11GetCurrentReferenceTime();
  Gnm55_47SetNVDataCS(v29, 0x11C6u, 0x5FAu);
  v22 = 0;
  v35[0] = 0;
  if (Gnm05_57GenerateInitCLT((v1 + 56), 8u, 1.125, v35, &v22))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(v36, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(v36, 0x40FuLL, "%10u %s%c %s: LTL:Compute CLT using Correction Factors\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 73, "Gnm53_22ComputeCLTTable");
      LbsOsaTrace_WriteLog(0xBu, v36, v14, 4, 1);
    }

    v15 = v22;
    v16 = v35[0];
    if (v22)
    {
      v17 = 0;
      v18 = v33;
      while (v17 != 763)
      {
        v19 = vcvtd_n_u64_f64(v16[v17], 0xFuLL);
        *(v18 - 1) = v19;
        *v18 = BYTE2(v19);
        v18 += 3;
        if (v15 == ++v17)
        {
          goto LABEL_19;
        }
      }
    }

    if (v16)
    {
LABEL_19:
      free(v16);
    }

    v20 = 27;
  }

  else
  {
    v20 = 19;
  }

  *&v33[766] = *(v1 + 74);
  Gnm55_47SetNVDataCS(v32, 0x11C6u, 0x5D4u);
  memcpy_s("Gnm53_23ComputeVarMENv", 826, v34, 0x5EAu, v29, 0x5EAuLL);
  Gnm55_47SetNVDataCS(v34, 0x11C6u, 0x5EAu);
  *v25 = 3;
  v26 = v20;
  v27 = 0;
  v28 = Gnm27_04ComputeCS(v25, 6u);
  return Gnm55_13WriteMENv(v25, 0x11C6u);
}

uint64_t Gnm53_25ComputeCalibVarMENv(void)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = 0;
  v5 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  if (Gnm55_14ReadXOCal(&v5) && Gnm53_20ValidateXOCal(&v5))
  {
    Gnm53_23ComputeVarMENv(&v5);
    return 1;
  }

  else
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:ME Coefficient Data not present\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 87, "Gnm53_25ComputeCalibVarMENv");
      LbsOsaTrace_WriteLog(0xBu, __str, v3, 2, 1);
      return 0;
    }
  }

  return result;
}

BOOL Gnm53_20ValidateXOCal(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v17 = xmmword_29972AD20;
  v18 = -84;
  v15 = xmmword_29972AD30;
  v16 = 127;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:Calibrated,%d,Coeff C0,%d,C1,%d,C2,%d,C3,%d,C4,%d\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm53_20ValidateXOCal", *(a1 + 16), *(a1 + 40), *(a1 + 36), *(a1 + 32), *(a1 + 28), *(a1 + 24));
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  v4 = *(a1 + 28);
  v5 = vrev64q_s32(v4);
  v19 = vextq_s8(v5, v5, 8uLL);
  v20 = *(a1 + 24);
  if (v4.i32[3] >= -2111062272 && v4.i32[3] <= v15)
  {
    v8 = 0;
    while (v8 != 4)
    {
      v9 = v8;
      v10 = v19.i32[v8 + 1];
      if (v10 >= *(&v17 + v8 + 1))
      {
        ++v8;
        if (v10 <= *(&v15 + v9 + 1))
        {
          continue;
        }
      }

      v7 = v9 > 3;
      goto LABEL_13;
    }

    return 1;
  }

  else
  {
    v7 = 0;
LABEL_13:
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LTL:Incorrect Modem XO Initial values\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "Gnm53_20ValidateXOCal", 772);
      LbsOsaTrace_WriteLog(0xBu, __str, v12, 2, 1);
    }
  }

  return v7;
}

uint64_t Gnm53_26ClearVarMENv(void)
{
  v7 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 3u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:Clearing ME NV file\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 77, "Gnm53_26ClearVarMENv");
    LbsOsaTrace_WriteLog(0xBu, __str, v1, 3, 1);
  }

  v2 = gnssOsa_clearNV(1);
  if ((v2 & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0xBu, 1u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ME NV File\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 65, "Gnm53_26ClearVarMENv", 1573);
    LbsOsaTrace_WriteLog(0xBu, __str, v4, 1, 1);
  }

  return v2;
}

void Gnm53_27InitializeVarMENv(uint64_t a1)
{
  MEMORY[0x2A1C7C4A8](a1);
  v20 = *MEMORY[0x29EDCA608];
  v14 = 0;
  v13 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0u;
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  if (Gnm55_14ReadXOCal(&v13) && Gnm53_20ValidateXOCal(&v13))
  {
    bzero(v11, 0x11C6uLL);
    MENv = Gnm55_12ReadMENv(v11, 4550);
    v2 = v12;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:NVDataType,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 73, "Gnm53_27InitializeVarMENv", v2);
      LbsOsaTrace_WriteLog(0xBu, __str, v4, 4, 1);
    }

    if ((~v2 & 0xB) != 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = MENv;
    }

    if (v5 == 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:VarMENvData present\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm53_27InitializeVarMENv");
        LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 1u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:VarMENvData not present\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 65, "Gnm53_27InitializeVarMENv");
        LbsOsaTrace_WriteLog(0xBu, __str, v9, 1, 1);
      }

      Gnm53_23ComputeVarMENv(&v13);
    }
  }

  else
  {
    Gnm53_31SendCalibReq();
  }
}

void Gnm53_31SendCalibReq(void)
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("Gnm53_31SendCalibReq", 983, 1, 0x10uLL);
  if (v0)
  {
    v1 = v0;
    if (g_XOTimerStatus == 1)
    {
      if (AgpsFsmStopTimer(8399622) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v2 = mach_continuous_time();
        v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 87, "Gnm53_31SendCalibReq", 1545);
        LbsOsaTrace_WriteLog(0xBu, __str, v3, 2, 1);
      }

      g_XOTimerStatus = 0;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_LSIM_INIT_CALIB_REQ =>LSIM\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm53_31SendCalibReq");
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
    }

    AgpsSendFsmMsg(128, 131, 8604416, v1);
    if (AgpsFsmStartTimer(8399622, 0xFAu))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm53_31SendCalibReq", 1544);
        LbsOsaTrace_WriteLog(0xBu, __str, v7, 2, 1);
      }
    }

    else
    {
      g_XOTimerStatus = 1;
    }
  }
}

uint64_t Gnm53_33HandleCalibInd(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_CALIB_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm53_33HandleCalibInd");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (g_XOTimerStatus == 1)
  {
    if (AgpsFsmStopTimer(8399622) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm53_33HandleCalibInd", 1545);
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 2, 1);
    }

    g_XOTimerStatus = 0;
  }

  if (a1)
  {
    Gnm53_32HandleCalibRsp(a1);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm53_33HandleCalibInd", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 0, 1);
  }

  return 0;
}

void Gnm53_32HandleCalibRsp(uint64_t a1)
{
  v44 = *MEMORY[0x29EDCA608];
  if (a1 && *(a1 + 12) == 1 && Gnm53_20ValidateXOCal(a1))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:Modem XOCalibdata available\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm53_32HandleCalibRsp");
      LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
    }

    if ((Gnm55_15WriteXOCal(a1) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LTL:Modem XO Initial values into NV\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm53_32HandleCalibRsp", 1570);
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 2, 1);
    }

    Gnm53_23ComputeVarMENv(a1);
    if ((g_NmeaMask & 0x200) != 0 || LbsOsaTrace_IsLoggingAllowed(1u, 4u, 0, 0))
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
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
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      *__str = 0u;
      v13 = 0u;
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x200uLL, "$PDXCL,%u,%u,%u,%u,%d,%d,%d,%d,%d,%d,%u,%u,%u", (*&g_MacClockTicksToMsRelation * v6), *(a1 + 12), *(a1 + 16), *(a1 + 18), *(a1 + 20), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 44), *(a1 + 48), *(a1 + 52));
      if ((v7 & 0x80000000) == 0)
      {
        Gnm53_82UpdateLtlNmeaData(__str, v7);
      }
    }

    if ((g_NmeaMask & 0x200) != 0 || LbsOsaTrace_IsLoggingAllowed(1u, 4u, 0, 0))
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
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
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      *__str = 0u;
      v13 = 0u;
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x200uLL, "$PDXCA,%u,%d,%d,%d,%d,%d,%d,%d,%d,%u,%u,%u,%u", (*&g_MacClockTicksToMsRelation * v8), *(a1 + 56), *(a1 + 58), *(a1 + 60), *(a1 + 62), *(a1 + 64), *(a1 + 66), *(a1 + 68), *(a1 + 70), *(a1 + 72), *(a1 + 73), *(a1 + 74), *(a1 + 76));
      if ((v9 & 0x80000000) == 0)
      {
        Gnm53_82UpdateLtlNmeaData(__str, v9);
      }
    }
  }

  else if (dword_2A19397C6 == 1)
  {
    Gnm53_24ComputeDefaultVarMENv();
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:XOCalibdata not available retry\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm53_32HandleCalibRsp");
    LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
  }

  if (dword_2A19397C6 == 1)
  {
    Gnm29_01RestoreVarMENv(0);
  }
}

uint64_t Gnm53_34HandleCalibReqTimeout(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_XO_REQUEST_TIMER\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm53_34HandleCalibReqTimeout");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    g_XOTimerStatus = 0;
    Gnm53_32HandleCalibRsp(0);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm53_34HandleCalibReqTimeout", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
  }

  return 0;
}

uint64_t Gnm53_43ComposeMeWakeMsg(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v121 = *MEMORY[0x29EDCA608];
  result = Gnm55_12ReadMENv(v112, 4550);
  if (!result)
  {
    return result;
  }

  v10 = v113;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(v119, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(v119, 0x40FuLL, "%10u %s%c %s: LTL:NVDataType,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 73, "Gnm53_43ComposeMeWakeMsg", v10);
    LbsOsaTrace_WriteLog(0xBu, v119, v12, 4, 1);
  }

  if ((~v10 & 0x1B) == 0)
  {
    if (v3)
    {
LABEL_6:
      BYTE8(v118[0]) = 0;
      *&v118[0] = 0;
      HIDWORD(v118[0]) = 0;
      LOBYTE(v118[1]) = 0;
      *(&v118[1] + 2) = 0u;
      *(&v118[2] + 2) = 0u;
      *(&v118[3] + 2) = 0u;
      *(&v118[3] + 14) = 0u;
      if ((Gnm55_14ReadXOCal(v118) & 1) != 0 && Gnm53_20ValidateXOCal(v118))
      {
        v13 = vrev64q_s32(*(&v118[1] + 12));
        __src = vextq_s8(v13, v13, 8uLL);
        v111 = DWORD2(v118[1]);
      }

      else
      {
        for (i = 0; i != 5; ++i)
        {
          __src.i32[i] = vcvts_n_s32_f32(*&dword_29972AD80[i], 0xEuLL);
        }
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
      {
        bzero(v119, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(v119, 0x40FuLL, "%10u %s%c %s: LTL:S-Curve Coeff C0,%d,C1,%d,C2,%d,C3,%d C4,%d\n", (*&g_MacClockTicksToMsRelation * v17), "GNM", 73, "Gnm53_42GetInitialLTL", __src.i32[0], __src.i32[1], __src.i32[2], __src.i32[3], v111);
        LbsOsaTrace_WriteLog(0xBu, v119, v18, 4, 1);
      }

      v19 = &v115[1];
      v20 = 251;
      do
      {
        *(v19 - 1) = 40;
        v19 += 2;
        --v20;
      }

      while (v20);
      v21 = v116;
LABEL_18:
      Gnm53_06PrintLTLData(v21, 0x3ECuLL, v115, 0x1F6uLL);
      *v5 = 2;
      if (Gnm55_16GetVarNvData(v112, 0x11C6u, 1012, v8, v7, v5, 2u))
      {
        if ((g_NmeaMask & 0x200) != 0 || LbsOsaTrace_IsLoggingAllowed(1u, 4u, 0, 0))
        {
          v107 = v10;
          *v109 = v7;
          v22 = v118;
          memset(v118, 0, 502);
          memcpy_s("Gnm53_86GenerateXOInitialConfNmea", 2477, v118, 0x1F6u, v115, 0x1F6uLL);
          v23 = 0;
          v24 = 251;
          do
          {
            memset(v119, 0, 512);
            v25 = mach_continuous_time();
            v26 = snprintf(v119, 0x200uLL, "$PDXLC,%u,%u,%u,%u", (*&g_MacClockTicksToMsRelation * v25), 8, (v23 >> 5) + 1, 251);
            if (v26 < 0)
            {
              break;
            }

            v27 = v26;
            for (j = 0; j != 32; ++j)
            {
              if (v24 == j)
              {
                break;
              }

              v29 = v27;
              if (v27 > 0x1FFu)
              {
                break;
              }

              v30 = snprintf(&v119[v27], 512 - v27, ",%u", *(v22 + j));
              if (v30 < 0)
              {
                goto LABEL_30;
              }

              v27 = v30 + v29;
            }

            Gnm53_82UpdateLtlNmeaData(v119, v27);
            v24 -= 32;
            v22 += 4;
            v31 = v23 >= 0xDB;
            v23 += 32;
          }

          while (!v31);
LABEL_30:
          v32 = 2;
          v7 = *v109;
          if ((v107 & 4) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_33;
        }

        v32 = 2;
        if ((v10 & 4) == 0)
        {
LABEL_35:
          if (Gnm55_16GetVarNvData(v112, 0x11C6u, 2260, v8, v7, v5, 8u))
          {
            v33 = v32 | 8;
          }

          else
          {
            v33 = v32;
          }

          if (Gnm55_16GetVarNvData(v112, 0x11C6u, 3028, v8, v7, v5, 0x10u))
          {
            v34 = v33 | 0x10;
          }

          else
          {
            v34 = v33;
          }

          Gnm53_09PrintKfCltAdc(v112);
          v35 = *v5;
          if ((v35 + 24) + 2 <= v7)
          {
            v8[v35] = 24;
            v8[*v5 + 1] = 0;
            memcpy_s("Gnm53_43ComposeMeWakeMsg", 1340, &v8[*v5 + 2], v7 - *v5 - 2, &__src, 0x14uLL);
            *v5 += 26;
            v34 |= 0x20u;
            if ((g_NmeaMask & 0x200) != 0 || LbsOsaTrace_IsLoggingAllowed(1u, 4u, 0, 0))
            {
              memset(v119, 0, 512);
              v36 = mach_continuous_time();
              v37 = snprintf(v119, 0x200uLL, "$PDXIC,%u,%d,%d,%d,%d,%d,%d", (*&g_MacClockTicksToMsRelation * v36), 0, v111, __src.i32[3], __src.i32[2], __src.i32[1], __src.i32[0]);
              if ((v37 & 0x80000000) == 0)
              {
                Gnm53_82UpdateLtlNmeaData(v119, v37);
              }
            }
          }

          *v8 = v34;
          v8[1] = 0;
          if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
          {
            bzero(v119, 0x410uLL);
            v38 = mach_continuous_time();
            v39 = snprintf(v119, 0x40FuLL, "%10u %s%c %s: LTL:MENvType,%u\n", (*&g_MacClockTicksToMsRelation * v38), "GNM", 73, "Gnm53_43ComposeMeWakeMsg", v34);
            LbsOsaTrace_WriteLog(0xBu, v119, v39, 4, 1);
          }

          return 1;
        }
      }

      else
      {
        v32 = 0;
        if ((v10 & 4) == 0)
        {
          goto LABEL_35;
        }
      }

LABEL_33:
      if (Gnm55_16GetVarNvData(v112, 0x11C6u, 1540, v8, v7, v5, 4u))
      {
        v32 |= 4u;
      }

      goto LABEL_35;
    }

    v40 = v113;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5u, 0, 0))
    {
      bzero(v119, 0x410uLL);
      v41 = mach_continuous_time();
      v42 = snprintf(v119, 0x40FuLL, "%10u %s%c %s: LTL:NVDataType,%u\n", (*&g_MacClockTicksToMsRelation * v41), "GNM", 68, "Gnm53_08IsMasterLTLLearnt", v40);
      LbsOsaTrace_WriteLog(0xBu, v119, v42, 5, 1);
    }

    if ((~v40 & 3) != 0)
    {
LABEL_59:
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
      {
        bzero(v119, 0x410uLL);
        v45 = mach_continuous_time();
        v46 = snprintf(v119, 0x40FuLL, "%10u %s%c %s: LTL:Master LTL Is Not Learnt\n", (*&g_MacClockTicksToMsRelation * v45), "GNM", 73, "Gnm53_08IsMasterLTLLearnt");
        LbsOsaTrace_WriteLog(0xBu, v119, v46, 4, 1);
      }

      goto LABEL_6;
    }

    v43 = 1004;
    bzero(v119, 0x3ECuLL);
    memcpy(v120, v115, 0x1F6uLL);
    do
    {
      if (*&v119[v43] >= 0x29u)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
        {
          goto LABEL_68;
        }

        bzero(v118, 0x410uLL);
        v48 = mach_continuous_time();
        v49 = snprintf(v118, 0x40FuLL, "%10u %s%c %s: LTL:Master LTL Is Learnt\n", (*&g_MacClockTicksToMsRelation * v48), "GNM", 73, "Gnm53_08IsMasterLTLLearnt");
        v50 = v118;
        goto LABEL_67;
      }

      v43 += 2;
    }

    while (v43 != 1506);
    memcpy(v119, v114, sizeof(v119));
    memset(&v118[62] + 12, 0, 480);
    memset(&v118[92] + 12, 0, 22);
    memcpy(v118, v116, 0x3ECuLL);
    v44 = 0;
    while (vabds_f32(*&v119[v44], *(v118 + v44)) <= 0.002)
    {
      v44 += 4;
      if (v44 == 1004)
      {
        goto LABEL_59;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(v117, 0x410uLL);
      v51 = mach_continuous_time();
      v49 = snprintf(v117, 0x40FuLL, "%10u %s%c %s: LTL:Master LTL Is Learnt\n", (*&g_MacClockTicksToMsRelation * v51), "GNM", 73, "Gnm53_08IsMasterLTLLearnt");
      v50 = v117;
LABEL_67:
      LbsOsaTrace_WriteLog(0xBu, v50, v49, 4, 1);
    }

LABEL_68:
    for (k = 0; k != 2008; k += 8)
    {
      v53 = &v119[k];
      *v53 = 0;
      *(v53 + 2) = 0;
    }

    for (m = 0; m != 2008; m += 8)
    {
      v55 = v118 + m;
      *v55 = 0;
      *(v55 + 2) = 0;
    }

    v56 = &v119[4];
    v57 = &v115[1];
    for (n = 8; n != 1012; n += 4)
    {
      v47.i32[0] = *&v112[n];
      v59 = vshlq_u32(vmovl_u16(*&vmovl_u8(v47)), xmmword_29972AD40);
      v47 = vorr_s8(*v59.i8, *&vextq_s8(v59, v59, 8uLL));
      *(v56 - 1) = vcvtms_s32_f32((COERCE_FLOAT(v47.i32[0] | v47.i32[1]) * 4295.0) + 0.5);
      *v56 = *(v57 - 1);
      v56 += 4;
      v57 += 2;
    }

    ltl_least_squares_polynom(v119, 251, &__src, 5);
    ltl_least_squares_set(v118, 251, __src.i32, 5u);
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(v117, 0x410uLL);
      v62 = mach_continuous_time();
      v63 = snprintf(v117, 0x40FuLL, "%10u %s%c %s: LTL:S-Curve Coeff C0,%d,C1,%d,C2,%d,C3,%d,C4,%d\n", (*&g_MacClockTicksToMsRelation * v62), "GNM", 73, "Gnm53_41PerformLTLPolyfit", __src.i32[0], __src.i32[1], __src.i32[2], __src.i32[3], v111);
      LbsOsaTrace_WriteLog(0xBu, v117, v63, 4, 1);
    }

    v64 = v118;
    v65 = 8;
    v60.i32[0] = 963912704;
    do
    {
      v66 = *v64;
      v64 += 2;
      *v61.i32 = v66 * 0.00023283;
      v61 = vuzp1_s8(vmovn_s32(vshlq_u32(vdupq_lane_s32(v61, 0), xmmword_29972AD10)), v60);
      *&v112[v65] = v61.i32[0];
      v65 += 4;
    }

    while (v65 != 1012);
    v108 = v10;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(v117, 0x410uLL);
      v67 = mach_continuous_time();
      v68 = snprintf(v117, 0x40FuLL, "%10u %s%c %s: LTL:Polyfit performed on Master ME NV\n", (*&g_MacClockTicksToMsRelation * v67), "GNM", 73, "Gnm53_41PerformLTLPolyfit");
      LbsOsaTrace_WriteLog(0xBu, v117, v68, 4, 1);
    }

    memcpy(v120, v115, 0x1F6uLL);
    v69 = 0;
    v70 = 0;
    do
    {
      v71 = v120[v69];
      if (v71 >= 0x29)
      {
        v72 = 0;
        v73 = vcvts_n_f32_u32(v69, 1uLL) + -30.0;
        v74 = __src.i32[0] + ((v73 + -30.0) * __src.i32[1]);
        v75 = v73 + -30.0;
        do
        {
          v75 = (v73 + -30.0) * v75;
          v74 = v74 + (v75 * __src.i32[v72 + 2]);
          ++v72;
        }

        while (v72 != 3);
        v76 = 0;
        v77 = v74 / 70369000.0;
        v78 = (v73 + -0.25) + -30.0;
        v79 = __src.i32[0] + (v78 * __src.i32[1]);
        v80 = v78;
        do
        {
          v80 = v78 * v80;
          v79 = v79 + (v80 * __src.i32[v76 + 2]);
          ++v76;
        }

        while (v76 != 3);
        v81 = 0;
        v82 = (v77 * 1000.0);
        v83 = ((v79 / 70369000.0) * 1000.0);
        v84 = k_UncertainityPPB;
        while (k_CountRange[v81] > v71)
        {
          ++v81;
          ++v84;
          if (v81 == 5)
          {
            v85 = 0;
            v84 = &Gnm53_66GetUncertfromTempRange(unsigned short)::a_UncertainityPPB;
            while (Gnm53_66GetUncertfromTempRange(unsigned short)::a_TempRange[v85] > v69)
            {
              ++v85;
              ++v84;
              if (v85 == 4)
              {
                v86 = 7500;
                goto LABEL_94;
              }
            }

            break;
          }
        }

        v86 = *v84;
LABEL_94:
        v87 = v82 - v83;
        if (v82 - v83 < 0)
        {
          v87 = v83 - v82;
        }

        if (v86 < v87)
        {
          v88 = 0;
          while (k_UncertainityPPB[v88] < v87)
          {
            if (++v88 == 5)
            {
              v89 = 40;
              goto LABEL_102;
            }
          }

          v89 = k_CountRange[v88];
LABEL_102:
          v120[v69] = v89;
          if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
          {
            bzero(v118, 0x410uLL);
            v90 = mach_continuous_time();
            v91 = snprintf(v118, 0x40FuLL, "%10u %s%c %s: LTL:Polyfit LTL Count Modified for Temp,%f,Count,%u\n", (*&g_MacClockTicksToMsRelation * v90), "GNM", 73, "Gnm53_69EvaluatePolyfitLTL", v73, v89);
            v70 = 1;
            LbsOsaTrace_WriteLog(0xBu, v118, v91, 4, 1);
          }

          else
          {
            v70 = 1;
          }
        }
      }

      ++v69;
    }

    while (v69 != 251);
    if (v70)
    {
      memcpy(v115, v120, 0x1F6uLL);
    }

    LOBYTE(v10) = v108;
    if ((dword_2A192081C & 0x8000) == 0)
    {
LABEL_141:
      v21 = v114;
      goto LABEL_18;
    }

    CurrentReferenceTime = Gnm53_11GetCurrentReferenceTime();
    if (!CurrentReferenceTime || (v93 = CurrentReferenceTime, AgeingTime = Gnm55_34GetAgeingTime(v112), GenMasterLTLTime = Gnm55_35GetGenMasterLTLTime(v112), v96 = v93 - GenMasterLTLTime, v93 - GenMasterLTLTime < 0x127501))
    {
      v97 = 60;
      goto LABEL_128;
    }

    if (v96 - 2678401 > 0xCC587F)
    {
      if (v96 - 16070401 >= 0xF53700)
      {
        if (2678400 * (v96 % 6) <= v93 - AgeingTime)
        {
          v97 = 100;
        }

        else
        {
          v97 = 0;
        }

LABEL_128:
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
        {
          bzero(v119, 0x410uLL);
          v100 = mach_continuous_time();
          v101 = snprintf(v119, 0x40FuLL, "%10u %s%c %s: LTL:MaxCountLevel,%u\n", (*&g_MacClockTicksToMsRelation * v100), "GNM", 73, "Gnm53_53HandleLTLAgeing", v97);
          LbsOsaTrace_WriteLog(0xBu, v119, v101, 4, 1);
        }

        if (v97)
        {
          bzero(v119, 0x3ECuLL);
          memcpy(v120, v115, 0x1F6uLL);
          v102 = 0;
          v103 = 0;
LABEL_132:
          v104 = v102 + 502;
          do
          {
            if (*&v119[2 * v104] > v97)
            {
              *&v119[2 * v104] = v97;
              v102 = v104 - 501;
              v103 = 1;
              if (v104 != 752)
              {
                goto LABEL_132;
              }

              goto LABEL_139;
            }

            ++v104;
          }

          while (v104 != 753);
          if ((v103 & 1) == 0)
          {
            goto LABEL_141;
          }

LABEL_139:
          memcpy(v115, v120, 0x1F6uLL);
          g_AgeingTimeGpsSeconds = Gnm53_11GetCurrentReferenceTime();
          if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
          {
            bzero(v118, 0x410uLL);
            v105 = mach_continuous_time();
            v106 = snprintf(v118, 0x40FuLL, "%10u %s%c %s: LTL:ME LTL Ageing Done\n", (*&g_MacClockTicksToMsRelation * v105), "GNM", 73, "Gnm53_52PerformLTLAgeing");
            LbsOsaTrace_WriteLog(0xBu, v118, v106, 4, 1);
          }
        }

        goto LABEL_141;
      }

      v98 = (AgeingTime - GenMasterLTLTime) < 0xF53701 || AgeingTime == 0;
      v99 = 1000;
    }

    else
    {
      v98 = (AgeingTime - GenMasterLTLTime) < 0x127501 || AgeingTime == 0;
      v99 = 100;
    }

    if (v98)
    {
      v97 = v99;
    }

    else
    {
      v97 = 0;
    }

    goto LABEL_128;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 1u, 0, 0);
  if (result)
  {
    bzero(v119, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(v119, 0x40FuLL, "%10u %s%c %s: LTL:Mandatory ME NV Data not preset\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 65, "Gnm53_43ComposeMeWakeMsg");
    LbsOsaTrace_WriteLog(0xBu, v119, v15, 1, 1);
    return 0;
  }

  return result;
}

void Gnm53_06PrintLTLData(const void *a1, size_t a2, const void *a3, size_t a4)
{
  v25[125] = *MEMORY[0x29EDCA608];
  bzero(&__dst, 0x3ECuLL);
  memset(v23, 0, 502);
  memcpy_s("Gnm53_06PrintLTLData", 329, &__dst, 0x3ECu, a1, a2);
  memcpy_s("Gnm53_06PrintLTLData", 335, v23, 0x1F6u, a3, a4);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:Temp FreqOffset Count\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm53_06PrintLTLData");
    LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:%5.1f %6d %5u\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm53_06PrintLTLData", -30.0, (__dst * 1000.0), v23[0]);
    LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(v21, 0x258uLL);
    v12 = &v23[1];
    v13 = v25;
    v14 = 1;
    do
    {
      v15 = 0;
      for (i = 0; i < 0x258; i = (v17 + i))
      {
        v17 = snprintf(&v21[i], 600 - i, "%5.1f %6d %5u ", (vcvts_n_f32_u32(v14 + v15, 1uLL) + -30.0), (*(v13 + v15) * 1000.0), v12[v15]);
        if (v15 > 0x17)
        {
          break;
        }

        ++v15;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:%s\n", (*&g_MacClockTicksToMsRelation * v18), "GNM", 73, "Gnm53_06PrintLTLData", v21);
        LbsOsaTrace_WriteLog(0xBu, __str, v19, 4, 1);
      }

      v12 += 25;
      v13 = (v13 + 100);
      v20 = v14 >= 0xE2;
      v14 += 25;
    }

    while (!v20);
  }
}

double Gnm53_09PrintKfCltAdc(unsigned __int8 *a1)
{
  v33 = *MEMORY[0x29EDCA608];
  bzero(v32, 0x258uLL);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:Index KFValue\n", (*&g_MacClockTicksToMsRelation * v1), "GNM", 73, "Gnm53_09PrintKfCltAdc");
    LbsOsaTrace_WriteLog(0xBu, __str, v2, 4, 1);
  }

  v3 = 0;
  v4 = a1 + 1540;
  do
  {
    v5 = 0;
    for (i = 0; i < 0x258; i = (v7 + i))
    {
      v7 = snprintf(&v32[i], 600 - i, "%u %u,", v3 + v5, v4[v5]);
      if (v5 > 0x12)
      {
        break;
      }

      ++v5;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:%s\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm53_09PrintKfCltAdc", v32);
      LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
    }

    v4 += 20;
    v10 = v3 >= 0x2BC;
    v3 += 20;
  }

  while (!v10);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:Index CLTValue\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 73, "Gnm53_09PrintKfCltAdc");
    LbsOsaTrace_WriteLog(0xBu, __str, v12, 4, 1);
  }

  v13 = 0;
  v14 = 0;
  v15 = a1 + 2262;
  do
  {
    v16 = 0;
    v17 = 0;
    v18 = v13;
    v19 = v15;
    do
    {
      v20 = snprintf(&v32[v17], 600 - v17, "%u %u,", v18, *(v19 - 1) | (*v19 << 16));
      if (v16 > 0x2C)
      {
        break;
      }

      v16 += 3;
      v17 = (v20 + v17);
      v19 += 3;
      ++v18;
    }

    while (v17 < 0x258);
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:%s\n", (*&g_MacClockTicksToMsRelation * v21), "GNM", 73, "Gnm53_09PrintKfCltAdc", v32);
      LbsOsaTrace_WriteLog(0xBu, __str, v22, 4, 1);
    }

    v15 += 48;
    v13 += 16;
    v10 = v14 >= 0x2D0;
    v14 += 48;
  }

  while (!v10);
  v23 = a1[3028];
  v24 = a1[3029];
  v25 = a1[3030];
  v26 = a1[3031];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v28 = mach_continuous_time();
    v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:AdcGain,%u,AdcOffset,%u\n", (*&g_MacClockTicksToMsRelation * v28), "GNM", 73, "Gnm53_09PrintKfCltAdc", v23 | (v24 << 8), v25 | (v26 << 8));
    LbsOsaTrace_WriteLog(0xBu, __str, v29, 4, 1);
  }

  return result;
}

uint64_t Gnm53_44BackupLearntMENv(unsigned __int8 *a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v3;
  v68 = *MEMORY[0x29EDCA608];
  v31 = 2;
  if (v3 <= 1)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0);
    result = 0;
    if (!IsLoggingAllowed)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LTL:Learnt ME NV Data LengRec,%u,LengCalc,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 87, "Gnm53_44BackupLearntMENv", 770, v4, 2);
    v9 = __str;
    goto LABEL_26;
  }

  v10 = v2;
  v11 = v1;
  bzero(__str, 0x11C6uLL);
  Gnm55_12ReadMENv(__str, 4550);
  v12 = v65;
  if ((LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0) & 1) == 0)
  {
    if ((v10 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    if (Gnm55_17GetMENvData(v11, v4, &v31, __str, 0x11C6u, 1540, 4))
    {
      LOWORD(v12) = v12 | 4;
    }

    if ((v10 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  bzero(v32, 0x410uLL);
  v13 = mach_continuous_time();
  v14 = snprintf(v32, 0x40FuLL, "%10u %s%c %s: LTL:MENvType,%u,NVDataType,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 73, "Gnm53_44BackupLearntMENv", v10, v12);
  LbsOsaTrace_WriteLog(0xBu, v32, v14, 4, 1);
  if ((v10 & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  if ((v10 & 8) == 0)
  {
    goto LABEL_19;
  }

LABEL_12:
  if (v31 + 2 <= v4)
  {
    v15 = v11[v31 + 1];
    v16 = v11[v31];
    if ((dword_2A192081C & 0x20000) != 0)
    {
      if (Gnm55_17GetMENvData(v11, v4, &v31, __str, 0x11C6u, 2260, 8))
      {
        LOWORD(v12) = v12 | 8;
      }
    }

    else
    {
      v31 += (v16 | (v15 << 8)) + 2;
    }

    if ((v16 | (v15 << 8)) == 0x300)
    {
      v17 = v31;
      if (v31 <= v4 && ((g_NmeaMask & 0x200) != 0 || LbsOsaTrace_IsLoggingAllowed(1u, 4u, 0, 0)))
      {
        v21 = 0;
        v22 = &v11[v17 - ((v15 << 8) + v16) + 1];
        v23 = 0uLL;
        v24 = byte_2A1939000;
        do
        {
          v62 = v23;
          v63 = v23;
          v60 = v23;
          v61 = v23;
          v58 = v23;
          v59 = v23;
          v56 = v23;
          v57 = v23;
          v54 = v23;
          v55 = v23;
          v52 = v23;
          v53 = v23;
          v50 = v23;
          v51 = v23;
          v48 = v23;
          v49 = v23;
          v46 = v23;
          v47 = v23;
          v44 = v23;
          v45 = v23;
          v42 = v23;
          v43 = v23;
          v40 = v23;
          v41 = v23;
          v38 = v23;
          v39 = v23;
          v36 = v23;
          v37 = v23;
          v34 = v23;
          v35 = v23;
          *v32 = v23;
          v33 = v23;
          v25 = mach_continuous_time();
          v26 = snprintf(v32, 0x200uLL, "$PDXCD,%u,%u,%u,%u", (*(v24 + 200) * v25), 8, v21 / 0x60u + 1, 256);
          if (v26 < 0)
          {
            break;
          }

          v27 = v26;
          v28 = 0;
          do
          {
            if (v21 + v28 > 0x2FD || v27 > 0x1FFu)
            {
              break;
            }

            v29 = snprintf(&v32[v27], (512 - v27), ",%u", *(v22 + v28 - 1) | (*(v22 + v28 + 1) << 16));
            if (v29 < 0)
            {
              goto LABEL_19;
            }

            v27 += v29;
            v30 = v28 >= 0x5D;
            v28 += 3;
          }

          while (!v30);
          Gnm53_82UpdateLtlNmeaData(v32, v27);
          v22 += 96;
          v30 = v21 >= 0x2A0;
          v21 += 96;
          v23 = 0uLL;
          v24 = byte_2A1939000;
        }

        while (!v30);
      }
    }
  }

LABEL_19:
  if ((v10 & 0x10) != 0 && Gnm55_17GetMENvData(v11, v4, &v31, __str, 0x11C6u, 3028, 16))
  {
    LOWORD(v12) = v12 | 0x10;
  }

  Gnm53_09PrintKfCltAdc(__str);
  Gnm55_47SetNVDataCS(v67, 0xBC2u, 0x5D4u);
  v18 = v31;
  if (v31 == v4)
  {
    v65 = v12;
    v66 = Gnm27_04ComputeCS(__str, 6u);
    return Gnm55_13WriteMENv(__str, 0x11C6u);
  }

  v19 = LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0);
  result = 0;
  if (v19)
  {
    bzero(v32, 0x410uLL);
    v20 = mach_continuous_time();
    v8 = snprintf(v32, 0x40FuLL, "%10u %s%c %s: #%04hx LTL:Learnt ME NV Data LenRec,%u,LenCalc,%u\n", (*&g_MacClockTicksToMsRelation * v20), "GNM", 87, "Gnm53_44BackupLearntMENv", 770, v4, v18);
    v9 = v32;
LABEL_26:
    LbsOsaTrace_WriteLog(0xBu, v9, v8, 2, 1);
    return 0;
  }

  return result;
}

double Gnm53_56SetStlDivInd(void)
{
  v4 = *MEMORY[0x29EDCA608];
  g_StlDivergenceIndicator = 1;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:STL Divergence Bit Set\n", (*&g_MacClockTicksToMsRelation * v1), "GNM", 87, "Gnm53_56SetStlDivInd");
    LbsOsaTrace_WriteLog(0xBu, __str, v2, 2, 1);
  }

  return result;
}

double Gnm53_58SetLtlExtHWClk(void)
{
  v4 = *MEMORY[0x29EDCA608];
  g_IsExtClock = 1;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:ExtHW Clk Set\n", (*&g_MacClockTicksToMsRelation * v1), "GNM", 73, "Gnm53_58SetLtlExtHWClk");
    LbsOsaTrace_WriteLog(0xBu, __str, v2, 4, 1);
  }

  return result;
}

void Gnm53_63UpdateMasterLTLNv(uint64_t a1)
{
  MEMORY[0x2A1C7C4A8](a1);
  v57 = *MEMORY[0x29EDCA608];
  bzero(v46, 0x11C6uLL);
  Gnm55_12ReadMENv(v46, 4550);
  if (!word_2A193BC20)
  {
    goto LABEL_38;
  }

  v1 = v47;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(v55, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(v55, 0x40FuLL, "%10u %s%c %s: LTL:MELearnings Present\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm53_63UpdateMasterLTLNv");
    LbsOsaTrace_WriteLog(0xBu, v55, v3, 4, 1);
  }

  v4 = g_PrevUsedLtl;
  if ((v1 & 1) == 0 || g_PrevUsedLtl != 1)
  {
LABEL_59:
    memcpy(v49, &g_LTLDataPPM, sizeof(v49));
    memcpy(v50, &word_2A193BC20, sizeof(v50));
    if ((v1 & 1) == 0 || v4 == 1)
    {
      p_CurrentReferenceTime = &v51;
      CurrentReferenceTime = Gnm53_11GetCurrentReferenceTime();
      Gnm55_46SetGenMasterLTLTime(v46, 0x11C6u);
      v37 = Gnm53_11GetCurrentReferenceTime();
    }

    else
    {
      v37 = g_AgeingTimeGpsSeconds;
      if (!g_AgeingTimeGpsSeconds)
      {
LABEL_65:
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
        {
          bzero(v55, 0x410uLL);
          v39 = mach_continuous_time();
          v40 = snprintf(v55, 0x40FuLL, "%10u %s%c %s: LTL:NVDataType,%u\n", (*&g_MacClockTicksToMsRelation * v39), "GNM", 73, "Gnm53_63UpdateMasterLTLNv", v1 | 3);
          LbsOsaTrace_WriteLog(0xBu, v55, v40, 4, 1);
        }

        v47 = v1 | 3;
        v48 = Gnm27_04ComputeCS(v46, 6u);
        bzero(&g_LTLDataPPM, 0x5E2uLL);
        g_AgeingTimeGpsSeconds = 0;
        Gnm55_47SetNVDataCS(v49, 0x11C6u, 0x5FAu);
        Gnm55_13WriteMENv(v46, 0x11C6u);
        gnssOsa_flushNv();
        return;
      }

      p_CurrentReferenceTime = &CurrentReferenceTime;
    }

    *p_CurrentReferenceTime = v37;
    goto LABEL_65;
  }

  memset(v54, 0, 502);
  memcpy(v55, v49, sizeof(v55));
  memcpy(v56, v50, 0x1F6uLL);
  v7 = 0;
  v8 = 0;
  do
  {
    if (*(&g_LTLDataPPM + v7 + 1004) > 0x28u)
    {
      ++v8;
    }

    v7 += 2;
  }

  while (v7 != 502);
  if (!v8)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = 0;
    v13 = *(&g_LTLDataPPM + v9 + 502);
    v14 = k_UncertainityPPB;
    while (k_CountRange[v12] > v13)
    {
      ++v12;
      ++v14;
      if (v12 == 5)
      {
        v15 = 0;
        v14 = &Gnm53_66GetUncertfromTempRange(unsigned short)::a_UncertainityPPB;
        while (Gnm53_66GetUncertfromTempRange(unsigned short)::a_TempRange[v15] > v9)
        {
          ++v15;
          ++v14;
          if (v15 == 4)
          {
            v16 = 7500.0;
            goto LABEL_20;
          }
        }

        break;
      }
    }

    LOWORD(v5) = *v14;
    v16 = *&v5;
LABEL_20:
    v17 = 0;
    v18 = *&v56[2 * v9];
    v19 = k_UncertainityPPB;
    while (k_CountRange[v17] > v18)
    {
      ++v17;
      ++v19;
      if (v17 == 5)
      {
        v20 = 0;
        v19 = &Gnm53_66GetUncertfromTempRange(unsigned short)::a_UncertainityPPB;
        while (Gnm53_66GetUncertfromTempRange(unsigned short)::a_TempRange[v20] > v9)
        {
          ++v20;
          ++v19;
          if (v20 == 4)
          {
            v21 = 7500.0;
            goto LABEL_28;
          }
        }

        break;
      }
    }

    LOWORD(v6) = *v19;
    v21 = *&v6;
LABEL_28:
    v5 = v21 * v21 + v16 * v16;
    v22 = ((*(&g_LTLDataPPM + v9) - *&v55[v9]) * 1000.0);
    v6 = v22 * v22;
    if (v6 > v5 * 0.433333333 * 0.433333333)
    {
      v5 = sqrt(v5);
      v54[v9] = v5;
      if (v18 > 0x28)
      {
        ++v11;
      }

      if (v13 > 0x28)
      {
        ++v10;
      }
    }

    ++v9;
  }

  while (v9 != 251);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(v53, 0x410uLL);
    v23 = mach_continuous_time();
    v24 = v10;
    v25 = snprintf(v53, 0x40FuLL, "%10u %s%c %s: LTL:LearnedBins,%u,EffectiveBins,%u\n", (*&g_MacClockTicksToMsRelation * v23), "GNM", 73, "Gnm53_62EvaluateMasterLTL", v8, v10);
    LbsOsaTrace_WriteLog(0xBu, v53, v25, 4, 1);
  }

  else
  {
    v24 = v10;
  }

  if (v8 <= (2 * v24))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(v53, 0x410uLL);
      v35 = mach_continuous_time();
      v36 = snprintf(v53, 0x40FuLL, "%10u %s%c %s: LTL:Use Learnt Initial LTL Table + Default Count\n", (*&g_MacClockTicksToMsRelation * v35), "GNM", 73, "Gnm53_62EvaluateMasterLTL");
      LbsOsaTrace_WriteLog(0xBu, v53, v36, 4, 1);
    }

    memset_pattern16(&word_2A193BC20, asc_29972AD50, 0x1F6uLL);
    goto LABEL_58;
  }

  if (v10 | v11)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(v53, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(v53, 0x40FuLL, "%10u %s%c %s: LTL:Use Master LTL Table + Effective Uncertainty\n", (*&g_MacClockTicksToMsRelation * v30), "GNM", 73, "Gnm53_62EvaluateMasterLTL");
      LbsOsaTrace_WriteLog(0xBu, v53, v31, 4, 1);
    }

    memcpy(&g_LTLDataPPM, v55, 0x3ECuLL);
    memcpy(&word_2A193BC20, v56, 0x1F6uLL);
    for (i = 0; i != 251; ++i)
    {
      if (v54[i])
      {
        v33 = 0;
        while (k_UncertainityPPB[v33] < v54[i])
        {
          if (++v33 == 5)
          {
            v34 = 40;
            goto LABEL_52;
          }
        }

        v34 = k_CountRange[v33];
LABEL_52:
        *(&g_LTLDataPPM + i + 502) = v34;
      }
    }

    goto LABEL_58;
  }

  v41 = 0;
  v42 = 0;
  do
  {
    if (*&v56[v41] > 0x28u)
    {
      ++v42;
    }

    v41 += 2;
  }

  while (v41 != 502);
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0);
  if (v8 > v42)
  {
    if (IsLoggingAllowed)
    {
      bzero(v53, 0x410uLL);
      v44 = mach_continuous_time();
      v45 = snprintf(v53, 0x40FuLL, "%10u %s%c %s: LTL:Use Learnt Initial LTL Table\n", (*&g_MacClockTicksToMsRelation * v44), "GNM", 73, "Gnm53_62EvaluateMasterLTL");
      LbsOsaTrace_WriteLog(0xBu, v53, v45, 4, 1);
    }

LABEL_58:
    v4 = g_PrevUsedLtl;
    goto LABEL_59;
  }

  if (IsLoggingAllowed)
  {
LABEL_37:
    bzero(v53, 0x410uLL);
    v26 = mach_continuous_time();
    v27 = snprintf(v53, 0x40FuLL, "%10u %s%c %s: LTL:Retain Master LTL Table\n", (*&g_MacClockTicksToMsRelation * v26), "GNM", 73, "Gnm53_62EvaluateMasterLTL");
    LbsOsaTrace_WriteLog(0xBu, v53, v27, 4, 1);
  }

LABEL_38:
  bzero(&g_LTLDataPPM, 0x5E2uLL);
  g_AgeingTimeGpsSeconds = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(v55, 0x410uLL);
    v28 = mach_continuous_time();
    v29 = snprintf(v55, 0x40FuLL, "%10u %s%c %s: LTL:Update, Ageing Not Required\n", (*&g_MacClockTicksToMsRelation * v28), "GNM", 73, "Gnm53_63UpdateMasterLTLNv");
    LbsOsaTrace_WriteLog(0xBu, v55, v29, 4, 1);
  }
}

uint64_t Gnm53_64CopyLearntLTL(unsigned __int8 *a1, unsigned int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a2 > 0x5E5)
  {
    __n_2 = 0;
    memcpy_s("Gnm53_64CopyLearntLTL", 1975, &__n_2, 2u, a1, 2uLL);
    if (__n_2 == 1004)
    {
      __n = 0;
      memcpy_s("Gnm53_64CopyLearntLTL", 1985, &__n, 2u, a1 + 1006, 2uLL);
      v2 = __n == 502;
      if (__n == 502)
      {
        v5 = &g_LTLDataPPM;
        memcpy_s("Gnm53_64CopyLearntLTL", 1997, &g_LTLDataPPM, __n_2, a1 + 2, __n_2);
        v6 = &word_2A193BC20;
        v21 = &a1[(__n_2 + 4)];
        memcpy_s("Gnm53_64CopyLearntLTL", 2004, &word_2A193BC20, __n, v21, __n);
        if ((g_NmeaMask & 0x200) != 0 || LbsOsaTrace_IsLoggingAllowed(1u, 4u, 0, 0))
        {
          v7 = 0;
          v8 = 251;
          do
          {
            memset(__n_4, 0, 512);
            v9 = mach_continuous_time();
            v10 = snprintf(__n_4, 0x200uLL, "$PDXLL,%u,%u,%u,%u", (*&g_MacClockTicksToMsRelation * v9), 13, v7 / 0x14u + 1, 251);
            if (v10 < 0)
            {
              break;
            }

            v11 = v10;
            for (i = 0; i != 20; ++i)
            {
              if (v8 == i)
              {
                break;
              }

              v13 = v11;
              if (v11 > 0x1FFu)
              {
                break;
              }

              v14 = snprintf(__n_4 + v11, 512 - v11, ",%0.1f,%d,%u", (vcvts_n_f32_u32(v7 + i, 1uLL) + -30.0), (v5[i] * 1000.0), v6[i]);
              if (v14 < 0)
              {
                goto LABEL_18;
              }

              v11 = v14 + v13;
            }

            Gnm53_82UpdateLtlNmeaData(__n_4, v11);
            v8 -= 20;
            v6 += 20;
            v5 += 20;
            v15 = v7 >= 0xE7;
            v7 += 20;
          }

          while (!v15);
        }

LABEL_18:
        Gnm53_06PrintLTLData(a1 + 2, __n_2, v21, __n);
        return 1;
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__n_4, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: #%04hx LTL:Learnt ME Confidence Data\n", (*&g_MacClockTicksToMsRelation * v18), "GNM", 87, "Gnm53_64CopyLearntLTL", 770);
        LbsOsaTrace_WriteLog(0xBu, __n_4, v19, 2, 1);
      }
    }

    else
    {
      v2 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__n_4, 0x410uLL);
        mach_continuous_time();
        v3 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: #%04hx LTL:Learnt ME Frequency Offsets\n");
        goto LABEL_21;
      }
    }
  }

  else
  {
    v2 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__n_4, 0x410uLL);
      v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v3 = snprintf(__n_4, 0x40FuLL, "%10u %s%c %s: #%04hx LTL:Learnt ME LTL Data LenRecv,%u\n", v20);
LABEL_21:
      LbsOsaTrace_WriteLog(0xBu, __n_4, v3, 2, 1);
      return 0;
    }
  }

  return v2;
}

void Gnm53_71DeInitializeXOParams(void)
{
  v3 = *MEMORY[0x29EDCA608];
  if (g_XOTimerStatus == 1)
  {
    if (AgpsFsmStopTimer(8399622) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v0 = mach_continuous_time();
      v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 87, "Gnm53_71DeInitializeXOParams", 1545);
      LbsOsaTrace_WriteLog(0xBu, __str, v1, 2, 1);
    }

    g_XOTimerStatus = 0;
  }

  g_PrevUsedLtl = 0;
  bzero(&g_LTLDataPPM, 0x5E2uLL);
  g_AgeingTimeGpsSeconds = 0;
}

double Gnm53_82UpdateLtlNmeaData(char *a1, unsigned __int16 a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v7 = a2;
  if (HswUtil_AddNmeaCS(a1, 0x200u, &v7))
  {
    if (LbsOsaTrace_IsLoggingAllowed(1u, 4u, 0, 0))
    {
      LbsOsaTrace_PrintAsciiBuf(1u, 4u, 0, a1, v7);
    }

    if ((g_NmeaMask & 0x200) != 0)
    {
      v4 = v7;

      return Gnm15_09UpdateNmeaData(a1, v4);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BytesWritten,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm53_82UpdateLtlNmeaData", 772, v7);
    LbsOsaTrace_WriteLog(0xBu, __str, v6, 0, 1);
  }

  return result;
}

uint64_t Gnm52_11HandleStartTimeMarkRsp(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (*(a1 + 12))
      {
        v3 = 84;
      }

      else
      {
        v3 = 70;
      }

      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_START_TIMEMARK_RSP Success,%c\n", v2, "GNM", 73, "Gnm52_11HandleStartTimeMarkRsp", v3);
      LbsOsaTrace_WriteLog(0xBu, __str, v4, 4, 1);
    }

    if (*(a1 + 12) == 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = 2;
    }

    Gnm11_00ApiStatusCB(v5, 0, 0, 18);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm52_11HandleStartTimeMarkRsp", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 0, 1);
  }

  return 0;
}

uint64_t Gnm52_13HandleTimeMarkEvent(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm52_13HandleTimeMarkEvent", 517);
    v9 = 0;
LABEL_12:
    LbsOsaTrace_WriteLog(0xBu, __str, v8, v9, 1);
    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_TIMEMARK_EVENT_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm52_13HandleTimeMarkEvent");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GpsWk,%d,GpsTOW,%.9fms,GpsTimeUnc,%.9fms,UtcCorr,%f,BBTick,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm52_13HandleTimeMarkEvent", *(a1 + 18), *(a1 + 24), *(a1 + 32), *(a1 + 48), *(a1 + 56));
    LbsOsaTrace_WriteLog(0xBu, __str, v6, 4, 1);
  }

  if (!off_2A19268E8)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      return 0;
    }

    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 87, "Gnm52_13HandleTimeMarkEvent", 258);
    v9 = 2;
    goto LABEL_12;
  }

  off_2A19268E8(0, a1 + 16, v4);
  return 0;
}

uint64_t Gnm52_22HandleStartTimeMarkReq(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_START_TIMEMARK_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm52_22HandleStartTimeMarkReq");
      LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
    }

    off_2A19268E8 = *(a1 + 16);
    v4 = gnssOsa_Calloc("Gnm52_22HandleStartTimeMarkReq", 114, 1, 0xCuLL);
    if (v4)
    {
      v5 = v4;
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_START_TIMEMARK_REQ =>GNC\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm52_22HandleStartTimeMarkReq");
        LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
      }

      AgpsSendFsmMsg(128, 134, 8390912, v5);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 69, "Gnm52_22HandleStartTimeMarkReq", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v9, 0, 1);
  }

  return 0;
}

uint64_t Gnm_StartTimeMarkSesion(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm_StartTimeMarkSesion");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = gnssOsa_Calloc("Gnm_StartTimeMarkSesion", 156, 1, 0x18uLL);
    if (v4)
    {
      v4[2] = a1;
      AgpsSendFsmMsg(128, 128, 8405248, v4);
      v5 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm_StartTimeMarkSesion");
        LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
        return 0;
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 73, "Gnm_StartTimeMarkSesion");
        LbsOsaTrace_WriteLog(0xBu, __str, v13, 4, 1);
      }

      return 5;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 87, "Gnm_StartTimeMarkSesion", 258);
      LbsOsaTrace_WriteLog(0xBu, __str, v9, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm_StartTimeMarkSesion");
      v5 = 1;
      LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
    }

    else
    {
      return 1;
    }
  }

  return v5;
}

void Gnm03_51StartHalConnTimer(void)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((g_HalStatusInfo & 1) == 0)
  {
    if (AgpsFsmStartTimer(8400902, 0x3A98u))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v0 = mach_continuous_time();
        v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 87, "Gnm03_51StartHalConnTimer", 1544);
        LbsOsaTrace_WriteLog(0xBu, __str, v1, 2, 1);
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v2 = mach_continuous_time();
        v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DurMs,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_51StartHalConnTimer", 15000);
        LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
      }

      LOBYTE(g_HalStatusInfo) = 1;
    }
  }
}

uint64_t Gnm03_64GetPlcGnssHw(void)
{
  v5 = *MEMORY[0x29EDCA608];
  if (qword_2A1920A8C <= 2471)
  {
    if (qword_2A1920A8C == 848)
    {
      return 5;
    }

    if (qword_2A1920A8C == 1107)
    {
      return 2;
    }
  }

  else
  {
    switch(qword_2A1920A8C)
    {
      case 0x9A8:
        return 3;
      case 0x9A9:
        return 4;
      case 0xD67:
        return 1;
    }
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0);
  result = 0;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ProdId,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 87, "Gnm03_64GetPlcGnssHw", 770, qword_2A1920A8C);
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 2, 1);
    return 0;
  }

  return result;
}

uint64_t Gnm03_11SetHWRev(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_HAL_HW_REV_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_11SetHWRev");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    g_HWStatus[0] = 1;
    memcpy_s("Gnm03_11SetHWRev", 359, &dword_2A1920A8C, 0xB4u, (a1 + 12), 0xB4uLL);
    if (g_HWStatus[0] != 1)
    {
      goto LABEL_18;
    }

    if (dword_2A1920A8C <= 2471)
    {
      if (dword_2A1920A8C != 848 && dword_2A1920A8C != 1107)
      {
LABEL_16:
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v7 = mach_continuous_time();
          v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ProdId,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm03_07ValidateHWSupport", 264, dword_2A1920A8C);
          LbsOsaTrace_WriteLog(0xBu, __str, v8, 0, 1);
        }

LABEL_18:
        Hal_StopConn(Gnm_HalStopCnf);
        Gnm03_52StartHalDisConnTimer();
        snprintf(v11, 0x400uLL, "ASSERT: %s %d HWS : HW not supported by stack", "Gnm03_11SetHWRev", 367);
        if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v9 = mach_continuous_time();
          v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 69, "Gnm03_11SetHWRev", v11);
          LbsOsaTrace_WriteLog(0xEu, __str, v10, 0, 1);
        }

        gnssOsa_FlushLog();
        __assert_rtn("Gnm03_11SetHWRev", "gnm03HwStatus.cpp", 368, "false && HW not supported by stack");
      }
    }

    else if ((dword_2A1920A8C - 2472) >= 2 && dword_2A1920A8C != 3431)
    {
      goto LABEL_16;
    }

    if ((*(a1 + 192) & 1) == 0)
    {
      Gnm31_06SendUserCfgLsim();
      Gnm32_11SendPltCfgLsim();
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm03_11SetHWRev", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
  }

  return 0;
}

void Gnm03_52StartHalDisConnTimer(void)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((g_HalStatusInfo & 0x100) == 0)
  {
    if (AgpsFsmStartTimer(8401158, 0x3A98u))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v0 = mach_continuous_time();
        v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 87, "Gnm03_52StartHalDisConnTimer", 1544);
        LbsOsaTrace_WriteLog(0xBu, __str, v1, 2, 1);
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v2 = mach_continuous_time();
        v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DurMs,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_52StartHalDisConnTimer", 15000);
        LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
      }

      BYTE1(g_HalStatusInfo) = 1;
    }
  }
}

void *Gnm03_12HalStartCnf(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_HAL_START_CNF\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_12HalStartCnf");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    if (g_HalStatusInfo != 1)
    {
      goto LABEL_15;
    }

    if (AgpsFsmStopTimer(8400902))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v4 = mach_continuous_time();
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm03_53StopHalConnTimer", 1545);
        v6 = 2;
LABEL_13:
        LbsOsaTrace_WriteLog(0xBu, __str, v5, v6, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Success\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm03_53StopHalConnTimer");
      v6 = 4;
      goto LABEL_13;
    }

    LOBYTE(g_HalStatusInfo) = 0;
LABEL_15:
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 1u, 0, 0))
    {
LABEL_31:
      Gnm03_19HwStartCnf();
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 3u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmState,Active\n", (*&g_MacClockTicksToMsRelation * v17), "GNM", 77, "Gnm03_12HalStartCnf", 261);
        LbsOsaTrace_WriteLog(0xBu, __str, v18, 3, 1);
      }

      return &a_GnmActiveState;
    }

    bzero(v19, 0x410uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = dword_2A1920A8C;
    if (dword_2A1920A8C <= 2471)
    {
      if (dword_2A1920A8C == 848)
      {
        v13 = "Autumn";
        goto LABEL_30;
      }

      if (dword_2A1920A8C == 1107)
      {
        v13 = "Compact";
        goto LABEL_30;
      }
    }

    else
    {
      switch(dword_2A1920A8C)
      {
        case 2472:
          v13 = "Sunshine";
          goto LABEL_30;
        case 2473:
          v13 = "Spring";
          goto LABEL_30;
        case 3431:
          v13 = "Bright";
LABEL_30:
          v16 = snprintf(v19, 0x40FuLL, "%10u %s%c %s: HW,%s,Maj,%u,Min,%u\n", v11, "GNM", 65, "Gnm03_12HalStartCnf", v13, qword_2A1920A90, HIDWORD(qword_2A1920A90));
          LbsOsaTrace_WriteLog(0xBu, v19, v16, 1, 1);
          goto LABEL_31;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ProdType,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 87, "Gnm03_03GetGnssHwStr", 770, v12);
      LbsOsaTrace_WriteLog(0xBu, __str, v15, 2, 1);
    }

    v13 = "Unknown";
    goto LABEL_30;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm03_12HalStartCnf", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 0, 1);
  }

  return 0;
}

double Gnm03_19HwStartCnf(void)
{
  v0 = 0;
  v18 = *MEMORY[0x29EDCA608];
  byte_2A1920B40 = 0;
  while (1)
  {
    v1 = v0;
    v2 = *(pg_AgpsFsmTable + 168 * v0 + 4);
    if (!*(pg_AgpsFsmTable + 168 * v0 + 4))
    {
      break;
    }

    ++v0;
    if (v2 == 128)
    {
      v3 = *(pg_AgpsFsmTable + 168 * v1 + 96);
      if (v3 == &a_GnmInitState || v3 == &a_GnmResetState)
      {
        g_HalStatusInfo = 0;
        if (v3 == &a_GnmInitState)
        {
          v5 = gnssOsa_Calloc("Gnm03_63SendHwTypeGnc", 166, 1, 0x10uLL);
          if (v5)
          {
            v6 = v5;
            v5[3] = dword_2A1920A8C;
            if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v7 = mach_continuous_time();
              v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_HW_TYPE_IND =>GNC HwType,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm03_63SendHwTypeGnc", v6[3]);
              LbsOsaTrace_WriteLog(0xBu, __str, v8, 4, 1);
            }

            AgpsSendFsmMsg(128, 134, 8788224, v6);
          }
        }

        Gnm_03_05UpdtHWStatusGnc(1);
        if (g_BootMode == 2)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xBu, 1u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v10 = mach_continuous_time();
            v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ProductionMode\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 65, "Gnm03_19HwStartCnf");
            LbsOsaTrace_WriteLog(0xBu, __str, v11, 1, 1);
          }

          Gnm10_29SendFwActivity(2, 1);
        }

        else
        {
          Gnm35_12SendDbgCfg(v9);
          if (v3 == &a_GnmInitState)
          {
            Gnm28_21InitRestorePeNv();
            Gnm31_05SendUserCfgGnc();
            Gnm32_10SendPltCfgGnc();
          }

          if (v3 == &a_GnmResetState)
          {
            *__str = qword_2A193B7D6;
            *&__str[5] = *(&qword_2A193B7D6 + 5);
            Gnm10_29SendFwActivity(3, 1);
            Gnm38_12SendSBCfg(236, 83, __str, v13);
          }

          Gnm53_27InitializeVarMENv(v12);
        }

        if (v3 == &a_GnmInitState)
        {
          Gnm03_04SendHWStatus(*(&g_GnmCBs + 1), 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 1u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v15 = mach_continuous_time();
          v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Completed\n", (*&g_MacClockTicksToMsRelation * v15), "GNM", 65, "Gnm03_19HwStartCnf", 1292);
          LbsOsaTrace_WriteLog(0xBu, __str, v16, 1, 1);
        }
      }

      return result;
    }
  }

  return result;
}

void *Gnm03_14HalStopCnf(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_HAL_STOP_CNF\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_14HalStopCnf");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm03_14HalStopCnf", 517);
      LbsOsaTrace_WriteLog(0xBu, __str, v8, 0, 1);
    }

    return 0;
  }

  if (*(a1 + 12) == 1)
  {
    if (BYTE1(g_HalStatusInfo) != 1)
    {
LABEL_23:
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: HALStop success,starting again\n", (*&g_MacClockTicksToMsRelation * v17), "GNM", 73, "Gnm03_14HalStopCnf");
        LbsOsaTrace_WriteLog(0xBu, __str, v18, 4, 1);
      }

      ++BYTE2(g_HalStatusInfo);
      __str[0] = 0;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0;
      Gnm32_21GetHwConfig(__str);
      Hal_SetConfigurations(__str);
      if (((g_GnssHw - 1) & 0xFC) != 0)
      {
        v19 = 0;
      }

      else
      {
        v19 = (g_GnssHw - 1) + 1;
      }

      Hal_StartConn(v19, g_BootMode == 2, Gnm_HalStartCnf);
      Gnm03_51StartHalConnTimer();
      return 0;
    }

    if (AgpsFsmStopTimer(8401158))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v4 = mach_continuous_time();
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm03_54StopHalDisConnTimer", 1545);
        v6 = 2;
LABEL_21:
        LbsOsaTrace_WriteLog(0xBu, __str, v5, v6, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Success\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 73, "Gnm03_54StopHalDisConnTimer");
      v6 = 4;
      goto LABEL_21;
    }

    BYTE1(g_HalStatusInfo) = 0;
    goto LABEL_23;
  }

  v9 = HIBYTE(g_HalStatusInfo);
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0);
  if (v9 <= 4)
  {
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HALStop fail Attempt,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 69, "Gnm03_14HalStopCnf", 1296, HIBYTE(g_HalStatusInfo));
      LbsOsaTrace_WriteLog(0xBu, __str, v12, 0, 1);
    }

    ++HIBYTE(g_HalStatusInfo);
    Hal_StopConn(Gnm_HalStopCnf);
    Gnm03_52StartHalDisConnTimer();
    return 0;
  }

  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HALStop fail Attempt,%u,GNSS service stopping\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 69, "Gnm03_14HalStopCnf", 1296, HIBYTE(g_HalStatusInfo));
    LbsOsaTrace_WriteLog(0xBu, __str, v14, 0, 1);
  }

  Gnm_03_05UpdtHWStatusGnc(0);
  if (g_GnssHw - 1 >= 3)
  {
    snprintf(v22, 0x400uLL, "ASSERT: %s %d HWD : HW deinit failed max attempts", "Gnm03_14HalStopCnf", 475);
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v20), "OSA", 69, "Gnm03_14HalStopCnf", v22);
      LbsOsaTrace_WriteLog(0xEu, __str, v21, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("Gnm03_14HalStopCnf", "gnm03HwStatus.cpp", 476, "false && HW deinit failed max attempts");
  }

  Gnm03_60BaseBandResetReq(1);
  return &a_GnmResetState;
}

void Gnm_03_05UpdtHWStatusGnc(int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("Gnm_03_05UpdtHWStatusGnc", 249, 1, 0x10uLL);
  if (v2)
  {
    v3 = v2;
    v2[12] = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_HW_STATUS_IND =>GNC HwStatus,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm_03_05UpdtHWStatusGnc", a1);
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
    }

    AgpsSendFsmMsg(128, 134, 8391939, v3);
  }
}

uint64_t Gnm03_60BaseBandResetReq(uint64_t result)
{
  v6 = *MEMORY[0x29EDCA608];
  if (off_2A19268F8)
  {
    v1 = result;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Reason,%hhu\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 69, "Gnm03_60BaseBandResetReq", v1);
      LbsOsaTrace_WriteLog(0xBu, __str, v4, 0, 1);
    }

    return off_2A19268F8(v1, v2);
  }

  return result;
}

void *Gnm03_15HandleHwStatus(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_HW_STATUS_IND\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 73, "Gnm03_15HandleHwStatus");
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0xBu, __str, v4, 4, 1);
  }

  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 69, "Gnm03_15HandleHwStatus", 517);
      v11 = 0;
LABEL_26:
      LbsOsaTrace_WriteLog(0xBu, __str, v10, v11, 1);
    }

    return 0;
  }

  v5 = *(a1 + 12);
  if (v5 <= 9)
  {
    if (v5 != 8)
    {
      if (v5 == 9)
      {
        if (g_GnssHw - 1 >= 3)
        {
          snprintf(v25, 0x400uLL, "ASSERT: %s %d TRW : Transport write failed after max retries", "Gnm03_15HandleHwStatus", 522);
          if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v23 = mach_continuous_time();
            v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v23), "OSA", 69, "Gnm03_15HandleHwStatus", v25);
            LbsOsaTrace_WriteLog(0xEu, __str, v24, 0, 1);
          }

          gnssOsa_FlushLog();
          __assert_rtn("Gnm03_15HandleHwStatus", "gnm03HwStatus.cpp", 523, "false && Transport write failed after max retries");
        }

        v8 = 8;
        goto LABEL_17;
      }

LABEL_28:
      v18 = LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0);
      if (v18)
      {
        bzero(__str, 0x410uLL);
        v19 = mach_continuous_time();
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HWStatus,%u\n", (*&g_MacClockTicksToMsRelation * v19), "GNM", 69, "Gnm03_15HandleHwStatus", 1297, *(a1 + 12));
        v18 = LbsOsaTrace_WriteLog(0xBu, __str, v20, 0, 1);
      }

      Gnm53_63UpdateMasterLTLNv(v18);
      Gnm03_06InitHWReset();
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 3u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmState,Active->Reset\n", (*&g_MacClockTicksToMsRelation * v21), "GNM", 77, "Gnm03_15HandleHwStatus", 261);
        LbsOsaTrace_WriteLog(0xBu, __str, v22, 3, 1);
      }

      return &a_GnmResetState;
    }

    Gnm53_63UpdateMasterLTLNv(IsLoggingAllowed);
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HWStatus,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNM", 73, "Gnm03_15HandleHwStatus", 1297, *(a1 + 12));
      v11 = 4;
      goto LABEL_26;
    }

    return 0;
  }

  if (v5 == 10)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HWStatus,%u Soft Reset Triggered\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 87, "Gnm03_15HandleHwStatus", 1297, *(a1 + 12));
      LbsOsaTrace_WriteLog(0xBu, __str, v13, 2, 1);
    }

    Gnm03_06InitHWReset();
    return &a_GnmResetState;
  }

  if (v5 != 11)
  {
    if (v5 == 12)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HWStatus,%u Soft Reset Failure\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm03_15HandleHwStatus", 1297, *(a1 + 12));
        LbsOsaTrace_WriteLog(0xBu, __str, v7, 0, 1);
      }

      v8 = 9;
LABEL_17:
      Gnm03_60BaseBandResetReq(v8);
      return &a_GnmResetState;
    }

    goto LABEL_28;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 1u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HWStatus,%u Soft Reset Successful\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 65, "Gnm03_15HandleHwStatus", 1297, *(a1 + 12));
    LbsOsaTrace_WriteLog(0xBu, __str, v15, 1, 1);
  }

  Gnm03_19HwStartCnf();
  return &a_GnmActiveState;
}

void Gnm03_06InitHWReset(void)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 1u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Initializing HW Reset\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 65, "Gnm03_06InitHWReset");
    LbsOsaTrace_WriteLog(0xBu, __str, v1, 1, 1);
  }

  if (BYTE1(dword_2A19397C6) == 1)
  {
    if (AgpsFsmStopTimer(8400390) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 87, "Gnm03_06InitHWReset", 1545);
      LbsOsaTrace_WriteLog(0xBu, __str, v3, 2, 1);
    }

    BYTE1(dword_2A19397C6) = 0;
    if (HIBYTE(dword_2A19397C6) == 1)
    {
      byte_2A19397CA = 11;
    }

    Gnm10_31SendMEWakeRsp(0);
    Gnm10_29SendFwActivity(1, 0);
  }

  if (off_2A19268F0)
  {
    off_2A19268F0(1, 0, 0);
  }

  if (g_HWStatus[0] == 1)
  {
    v4 = dword_2A1920A8C;
    if (dword_2A1920A8C == 3431 && qword_2A1920A90 == 2 && HIDWORD(qword_2A1920A90) == 1)
    {
      goto LABEL_27;
    }

    v7 = g_GnssHw;
  }

  else
  {
    v7 = g_GnssHw;
    if (!g_GnssHw)
    {
LABEL_27:
      g_HalStatusInfo = 0x1000000;
      Hal_StopConn(Gnm_HalStopCnf);
      Gnm03_52StartHalDisConnTimer();
      goto LABEL_28;
    }

    v4 = dword_2A1920A8C;
  }

  v8 = v4 == 848;
  v9 = v7 == 4;
  if (g_HWStatus[0])
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  if (v10)
  {
    goto LABEL_27;
  }

LABEL_28:
  Gnm_03_05UpdtHWStatusGnc(2);
}

void *Gnm03_16HandleHWInitFail(uint64_t a1)
{
  v35 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_HAL_INIT_FAIL\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_16HandleHWInitFail");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 69, "Gnm03_16HandleHWInitFail", 517);
      LbsOsaTrace_WriteLog(0xBu, __str, v10, 0, 1);
    }

    return 0;
  }

  Hal_StopConn(0);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm03_16HandleHWInitFail", 1294);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  if (BYTE2(g_HalStatusInfo) <= 4u)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 1u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx WaitBeforeStart,%ums\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 65, "Gnm03_16HandleHWInitFail", 1291, 1000);
      LbsOsaTrace_WriteLog(0xBu, __str, v7, 1, 1);
    }

    usleep(0xF4240u);
    ++BYTE2(g_HalStatusInfo);
    __str[0] = 0;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
    Gnm32_21GetHwConfig(__str);
    Hal_SetConfigurations(__str);
    if (((g_GnssHw - 1) & 0xFC) != 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = (g_GnssHw - 1) + 1;
    }

    Hal_StartConn(v8, g_BootMode == 2, Gnm_HalStartCnf);
    Gnm03_51StartHalConnTimer();
    return 0;
  }

  v12 = *(a1 + 12);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Err,%hhu\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 69, "Gnm03_20HwStartFailure", 1293, v12);
    LbsOsaTrace_WriteLog(0xBu, __str, v14, 0, 1);
  }

  byte_2A1920B40 = v12;
  Gnm_03_05UpdtHWStatusGnc(0);
  Gnm03_04SendHWStatus(*(&g_GnmCBs + 1), 0, 0);
  if (g_GnssHw - 1 >= 3)
  {
    snprintf(v17, 0x400uLL, "ASSERT: %s %d HWI : HW init failed max attempts", "Gnm03_16HandleHWInitFail", 624);
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v15), "OSA", 69, "Gnm03_16HandleHWInitFail", v17);
      LbsOsaTrace_WriteLog(0xEu, __str, v16, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("Gnm03_16HandleHWInitFail", "gnm03HwStatus.cpp", 625, "false && HW init failed max attempts");
  }

  Gnm03_60BaseBandResetReq(0);
  return &a_GnmResetState;
}

uint64_t Gnm03_17HandleGetHwInitStatus(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_HW_INIT_STATUS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_17HandleGetHwInitStatus");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    Gnm03_04SendHWStatus(*(a1 + 16), *(a1 + 12), 0);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm03_17HandleGetHwInitStatus", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
  }

  return 0;
}

void Gnm03_04SendHWStatus(void (*a1)(void, uint64_t, _OWORD *, __n128), uint64_t a2, char a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v18 = 0u;
  memset(v19, 0, 26);
  memset(v17, 0, sizeof(v17));
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  if (a1)
  {
    v5 = 0;
    BYTE1(v15[0]) = byte_2A1920B40;
    while (1)
    {
      v6 = v5;
      v7 = *(pg_AgpsFsmTable + 168 * v5 + 4);
      if (!*(pg_AgpsFsmTable + 168 * v5 + 4))
      {
        break;
      }

      ++v5;
      if (v7 == 128)
      {
        v8 = *(pg_AgpsFsmTable + 168 * v6 + 96);
        if (a3)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    v8 = 0;
    if (a3)
    {
LABEL_12:
      LOBYTE(v15[0]) = 1;
      WORD1(v15[0]) = dword_2A1920A8C;
      v11 = vmovn_s32(*&qword_2A1920A90);
      DWORD1(v15[0]) = vuzp1_s8(v11, v11).u32[0];
      *(&v15[1] + 12) = *algn_2A1920AB4;
      v16 = unk_2A1920AC8;
      LODWORD(v17[0]) = dword_2A1920AD8;
      DWORD1(v17[1]) = dword_2A1920AEC;
      *(v17 + 4) = xmmword_2A1920ADC;
      *(&v17[1] + 8) = *algn_2A1920AF0;
      DWORD2(v17[2]) = dword_2A1920B00;
      HIDWORD(v17[3]) = dword_2A1920B14;
      *(&v17[2] + 12) = *algn_2A1920B04;
      v18 = unk_2A1920B18;
      *(v19 + 4) = xmmword_2A1920B2C;
      LODWORD(v19[0]) = dword_2A1920B28;
      DWORD1(v19[1]) = dword_2A1920B3C;
      HIDWORD(v15[2]) = dword_2A1920AC4;
      DWORD2(v15[1]) = dword_2A1920AB0;
      *(v15 + 8) = unk_2A1920AA0;
      BYTE8(v19[1]) = 2;
      goto LABEL_13;
    }

LABEL_10:
    if (v8 != &a_GnmInitState && v8 != &a_GnmResetState)
    {
      goto LABEL_12;
    }

LABEL_13:
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: HwStatusCB called\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 73, "Gnm03_04SendHWStatus");
      LbsOsaTrace_WriteLog(0xBu, __str, v13, 4, 1);
    }

    (a1)(0, a2, v15);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 73, "Gnm03_04SendHWStatus", 258);
    LbsOsaTrace_WriteLog(0xBu, __str, v10, 4, 1);
  }
}

uint64_t Gnm03_18InitializeHw(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_HW_INIT\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_18InitializeHw");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    if (g_IsHwInit == 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ExistingHw,%hhu,ExitingBootMode,%hhu,ReqHw,%hhu,ReqBootMode,%hhu\n", v4, "GNM");
LABEL_9:
        LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
      }
    }

    else
    {
      g_GnssHw = *(a1 + 12);
      g_BootMode = *(a1 + 13);
      g_IsHwInit = 1;
      v6 = *(a1 + 24);
      *(&g_GnmCBs + 1) = *(a1 + 16);
      off_2A19268F8 = v6;
      g_HalCallbacks = Gnm_HardwareStatusNotif;
      __str[0] = 0;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0;
      Gnm32_21GetHwConfig(__str);
      Hal_SetConfigurations(__str);
      if (((g_GnssHw - 1) & 0xFC) != 0)
      {
        v7 = 0;
      }

      else
      {
        v7 = (g_GnssHw - 1) + 1;
      }

      Hal_StartConn(v7, g_BootMode == 2, Gnm_HalStartCnf);
      Gnm03_51StartHalConnTimer();
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_9;
  }

  return 0;
}

uint64_t Gnm03_40DiscardResetReqGnc(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_HW_RESET_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 87, "Gnm03_40DiscardResetReqGnc");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 2, 1);
  }

  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm03_40DiscardResetReqGnc", 1028);
      v6 = 2;
LABEL_8:
      LbsOsaTrace_WriteLog(0xBu, __str, v5, v6, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm03_40DiscardResetReqGnc", 517);
    v6 = 0;
    goto LABEL_8;
  }

  return 0;
}

void *Gnm03_41HandleResetReqGnc(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_HW_RESET_REQ\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 73, "Gnm03_41HandleResetReqGnc");
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0xBu, __str, v4, 4, 1);
  }

  if (a1)
  {
    Gnm53_63UpdateMasterLTLNv(IsLoggingAllowed);
    if (g_HWStatus[0] == 1)
    {
      v5 = dword_2A1920A8C;
      if (dword_2A1920A8C == 3431 && qword_2A1920A90 == 2 && HIDWORD(qword_2A1920A90) == 1)
      {
        goto LABEL_22;
      }

      v8 = g_GnssHw;
    }

    else
    {
      v8 = g_GnssHw;
      if (!g_GnssHw)
      {
        goto LABEL_22;
      }

      v5 = dword_2A1920A8C;
    }

    v12 = v5 == 848;
    v13 = v8 == 4;
    if (g_HWStatus[0])
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    if (!v14)
    {
      Gnm03_60BaseBandResetReq(9);
      return &a_GnmResetState;
    }

LABEL_22:
    Gnm03_06InitHWReset();
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmState,Active->Reset\n", (*&g_MacClockTicksToMsRelation * v15), "GNM", 77, "Gnm03_41HandleResetReqGnc", 261);
      LbsOsaTrace_WriteLog(0xBu, __str, v16, 3, 1);
    }

    return &a_GnmResetState;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 69, "Gnm03_41HandleResetReqGnc", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v10, 0, 1);
  }

  return 0;
}

uint64_t Gnm03_42HandleMEWakeReq(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ME_WAKE_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_42HandleMEWakeReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    Gnm10_29SendFwActivity(1, 1);
    bzero(&g_LTLDataPPM, 0x5E2uLL);
    g_AgeingTimeGpsSeconds = 0;
    g_IsExtClock = BYTE1(dword_2A1920828);
    g_StlDivergenceIndicator = 0;
    HIWORD(dword_2A19397C6) = 0;
    LOBYTE(dword_2A19397C6) = 1;
    Gnm29_01RestoreVarMENv(*(a1 + 12));
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm03_42HandleMEWakeReq", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
  }

  return 0;
}

uint64_t Gnm03_43RejectMEWakeReq(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ME_WAKE_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_43RejectMEWakeReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    Gnm10_31SendMEWakeRsp(0);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm03_43RejectMEWakeReq", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
  }

  return 0;
}

void *Gnm03_55HandleHalConnTimeout(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_HAL_CONN_TIMER\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_55HandleHalConnTimeout");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if ((g_HalStatusInfo & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Timer not running\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm03_55HandleHalConnTimeout");
      v9 = 4;
LABEL_13:
      LbsOsaTrace_WriteLog(0xBu, __str, v8, v9, 1);
    }

    return 0;
  }

  LOBYTE(g_HalStatusInfo) = 0;
  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 69, "Gnm03_55HandleHalConnTimeout", 517);
      v9 = 0;
      goto LABEL_13;
    }

    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: HAL Conn TO\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm03_55HandleHalConnTimeout");
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 2, 1);
  }

  if (g_GnssHw - 1 >= 3)
  {
    snprintf(v13, 0x400uLL, "ASSERT: %s %d HWI : HAL connection timeout", "Gnm03_55HandleHalConnTimeout", 1131);
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v11), "OSA", 69, "Gnm03_55HandleHalConnTimeout", v13);
      LbsOsaTrace_WriteLog(0xEu, __str, v12, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("Gnm03_55HandleHalConnTimeout", "gnm03HwStatus.cpp", 1132, "false && HAL connection Timeout");
  }

  Gnm03_60BaseBandResetReq(2);
  return &a_GnmResetState;
}

void *Gnm03_56HandleHalDisconnTimeout(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_HAL_DISCONN_TIMER\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm03_56HandleHalDisconnTimeout");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if ((g_HalStatusInfo & 0x100) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Timer not running\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm03_56HandleHalDisconnTimeout");
      v9 = 4;
LABEL_13:
      LbsOsaTrace_WriteLog(0xBu, __str, v8, v9, 1);
    }

    return 0;
  }

  BYTE1(g_HalStatusInfo) = 0;
  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 69, "Gnm03_56HandleHalDisconnTimeout", 517);
      v9 = 0;
      goto LABEL_13;
    }

    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: HAL Disconn TO\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm03_56HandleHalDisconnTimeout");
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 2, 1);
  }

  if (g_GnssHw - 1 >= 3)
  {
    snprintf(v13, 0x400uLL, "ASSERT: %s %d HWI : HAL disconnection timeout", "Gnm03_56HandleHalDisconnTimeout", 1169);
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v11), "OSA", 69, "Gnm03_56HandleHalDisconnTimeout", v13);
      LbsOsaTrace_WriteLog(0xEu, __str, v12, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("Gnm03_56HandleHalDisconnTimeout", "gnm03HwStatus.cpp", 1170, "false && HAL disconnection Timeout");
  }

  Gnm03_60BaseBandResetReq(3);
  return &a_GnmResetState;
}

uint64_t GNSS_Nav_Debug_Ctl(uint64_t result)
{
  if (g_Enable_Nav_Debug)
  {
    v1 = result;
    v3 = *result;
    v2 = *(result + 8);
    v4 = *result;
    if (v2 > *result)
    {
      v4 = *(result + 24);
    }

    v5 = v4 - v2;
    if (v4 == v2)
    {
      if (v2 >= *(result + 24))
      {
        v2 = *(result + 16);
        *(result + 8) = v2;
LABEL_10:
        v6 = v3 - v2;
        if (v6)
        {
          result = GN_GPS_Write_Nav_Debug(v6, v2);
          v2 = &v1[1][result];
          v1[1] = v2;
        }
      }
    }

    else
    {
      result = GN_GPS_Write_Nav_Debug((v4 - v2), v2);
      v2 = &v1[1][result];
      v1[1] = v2;
      if (v2 >= v1[3])
      {
        v2 = v1[2];
        v1[1] = v2;
        if (result == v5)
        {
          v3 = *v1;
          goto LABEL_10;
        }
      }
    }

    if (v2 == *v1)
    {
      v7 = v1[2];
      *v1 = v7;
      v1[1] = v7;
    }
  }

  return result;
}
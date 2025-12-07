uint64_t BlueFin::GlMeSrdSatRptRpcBuffer::gll_satrpt_rpc_trk_bits(uint64_t a1, int a2, char a3, _DWORD *a4, __int128 *a5, __int128 *a6, __int128 *a7, __int128 *a8, __int128 *a9)
{
  BlueFin::GlMeSrdSatRptRpcBuffer::CheckInstanceId(a1, a2);
  v16 = *(a1 + 8);
  if ((v16 & 0x400) != 0)
  {
    v45 = "m_otFlags.Missing(FLGS_RECEIVED_TRACKBITS)";
    DeviceFaultNotify("glmesrd_sat_report_rpc_buffer.cpp", 275, "gll_satrpt_rpc_trk_bits", "m_otFlags.Missing(FLGS_RECEIVED_TRACKBITS)");
    v46 = 275;
    goto LABEL_22;
  }

  v17 = v16 | 0x400;
  *(a1 + 8) = v16 | 0x400;
  *(a1 + 944) = a3;
  *(a1 + 946) = *a4;
  if (!(a5 | a6 | a7 | a8) || a9)
  {
    if (!a8 && !a7 && !a6 && !a5 && a9)
    {
      *(a1 + 8) = v16 | 0x8400;
      v30 = *a9;
      v31 = a9[1];
      v32 = a9[3];
      *(a1 + 984) = a9[2];
      *(a1 + 1000) = v32;
      *(a1 + 952) = v30;
      *(a1 + 968) = v31;
      v33 = a9[4];
      v34 = a9[5];
      v35 = a9[7];
      *(a1 + 1048) = a9[6];
      *(a1 + 1064) = v35;
      *(a1 + 1016) = v33;
      *(a1 + 1032) = v34;
      v36 = a9[8];
      v37 = a9[9];
      v38 = a9[11];
      *(a1 + 1112) = a9[10];
      *(a1 + 1128) = v38;
      *(a1 + 1080) = v36;
      *(a1 + 1096) = v37;
      v39 = a9[12];
      v40 = a9[13];
      v41 = a9[15];
      *(a1 + 1176) = a9[14];
      *(a1 + 1192) = v41;
      *(a1 + 1144) = v39;
      *(a1 + 1160) = v40;
      goto LABEL_18;
    }

    v45 = "0";
    DeviceFaultNotify("glmesrd_sat_report_rpc_buffer.cpp", 315, "gll_satrpt_rpc_trk_bits", "0");
    v46 = 315;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_rpc_buffer.cpp", v46, v45);
  }

  if (a5)
  {
    v17 = v16 | 0xC00;
    *(a1 + 8) = v16 | 0xC00;
    v18 = *a5;
    v19 = a5[1];
    v20 = a5[3];
    *(a1 + 984) = a5[2];
    *(a1 + 1000) = v20;
    *(a1 + 952) = v18;
    *(a1 + 968) = v19;
  }

  if (a6)
  {
    v17 |= 0x2000u;
    *(a1 + 8) = v17;
    v21 = *a6;
    v22 = a6[1];
    v23 = a6[3];
    *(a1 + 1048) = a6[2];
    *(a1 + 1064) = v23;
    *(a1 + 1016) = v21;
    *(a1 + 1032) = v22;
  }

  if (a7)
  {
    v17 |= 0x1000u;
    *(a1 + 8) = v17;
    v24 = *a7;
    v25 = a7[1];
    v26 = a7[3];
    *(a1 + 1112) = a7[2];
    *(a1 + 1128) = v26;
    *(a1 + 1080) = v24;
    *(a1 + 1096) = v25;
  }

  if (a8)
  {
    *(a1 + 8) = v17 | 0x4000;
    v27 = *a8;
    v28 = a8[1];
    v29 = a8[3];
    *(a1 + 1176) = a8[2];
    *(a1 + 1192) = v29;
    *(a1 + 1144) = v27;
    *(a1 + 1160) = v28;
  }

LABEL_18:
  v42 = *(a1 + 3152);
  v43 = *(*v42 + 72);

  return v43(v42);
}

void BlueFin::GlMeSrdEstCarrPrm::OverrideTrkCarrPrmRmse(uint64_t a1, const BlueFin::GlSignalId *a2, uint64_t a3, float a4)
{
  v4 = *(a3 + 1) != 1 || *(a3 + 20) == 7;
  if (!v4 && (a2 & 1) != 0)
  {
    if (a4 <= 40.0)
    {
      if (a4 >= 10.0)
      {
        v5 = (((a4 + -10.0) * -0.15) + 5.0) * 0.000000001;
      }

      else
      {
        v5 = 0.000000005;
      }
    }

    else
    {
      v5 = 5.0e-10;
    }

    *(a3 + 16) = BlueFin::GlMeSrdAsicUnitConverter::PpuToHz((a1 + 376), v5, a2);
  }
}

void BlueFin::GlMeSrdEstCodePrm::Run(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6, unsigned __int8 *a7, uint64_t a8, _DWORD *a9, uint64_t a10, unsigned __int8 a11, unsigned __int8 a12, unsigned __int8 a13, unsigned __int8 a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, float *a18, float *a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if ((*a16 & 1) == 0)
  {
    v116 = "stAsicCodePrmTrkMsmt.bValid";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 925, "Run", "stAsicCodePrmTrkMsmt.bValid");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 925;
    goto LABEL_173;
  }

  if ((*(a16 + 24) & 1) == 0)
  {
    v116 = "stAsicCodePrmTrkMsmt.stClosedLpDll.bValid";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 926, "Run", "stAsicCodePrmTrkMsmt.stClosedLpDll.bValid");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 926;
    goto LABEL_173;
  }

  v22 = *a7;
  if ((v22 - 1) >= 0xBC)
  {
    v116 = "otSignalId.GetSvId().isValid()";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 927, "Run", "otSignalId.GetSvId().isValid()");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 927;
    goto LABEL_173;
  }

  v26 = a19;
  v27 = a9;
  if ((a1 + 8) == a7)
  {
    v28 = *(a1 + 16);
  }

  else
  {
    *(a1 + 8) = v22;
    *(a1 + 12) = *(a7 + 1);
    v28 = *(a7 + 4);
    *(a1 + 16) = v28;
  }

  if (v28 >= 0x23F)
  {
    goto LABEL_158;
  }

  v29 = *(a1 + 12);
  v30 = BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 8)];
  v31 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v29 + v30];
  if (!v31)
  {
LABEL_159:
    v116 = "ucChipsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 785, "GetChipsPerEpoch", "ucChipsPerEpoch != 0");
    v117 = "glsignalid.h";
    v118 = 785;
    goto LABEL_173;
  }

  v32 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v29 - v29 + v30];
  if (!v32)
  {
    goto LABEL_160;
  }

  if (*a19 == 1)
  {
    v33 = a6[12];
    if ((a15 & (*(a17 + 8) < 20.0)) != 0)
    {
      v33 = 0.36;
    }

    v34 = a19[2] <= v33;
    v35 = (*a18 == 1) & ~a11;
    if (a18[2] > v33)
    {
      v35 = 0;
    }
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v36 = *(a16 + 16);
  v37 = 1.0;
  v38 = 0.0;
  v121 = v31;
  if ((v35 & 1) == 0 && !v34)
  {
    v39 = a3;
    v40 = 0;
    v122 = 0;
    v120 = 0;
LABEL_20:
    v119 = 1;
    goto LABEL_37;
  }

  if (((v34 | v35) & 1) == 0)
  {
    v116 = "bExtCvecOk || bNomCvecOk";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 107, "EstTrkCodePrmViaOpenLpPeakFit", "bExtCvecOk || bNomCvecOk");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 107;
    goto LABEL_173;
  }

  v41 = v32 * 0.001;
  if (!v34)
  {
    v26 = a18;
  }

  v42 = v26[7];
  v43 = v26[3] + fabsf(v42);
  if (*(a16 + 68) == 2)
  {
    v44 = v43;
  }

  else
  {
    v44 = v26[3];
  }

  if (*(a16 + 56) != 1 || *(a16 + 60) != 2)
  {
    goto LABEL_35;
  }

  v45 = *(a16 + 120) - *(a16 + 96);
  if (v45 <= 0.0)
  {
    v116 = "dDeltaTimeStampInRxSec > 0";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1788, "CalcDllPullInCompensation", "dDeltaTimeStampInRxSec > 0");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 1788;
    goto LABEL_173;
  }

  v37 = v26[2];
  v46 = BlueFin::GlMeSrdEstCodePrm::SubMsPart(a1, v45 * (*(a16 + 88) + 1.0));
  v48 = BlueFin::GlMeSrdEstCodePrm::SubMsPart(v47, *(a16 + 128) - *(a16 + 104));
  v49 = v41 * 0.5;
  if (v46 < v49 * -1.0001)
  {
    v116 = "dExpectedDeltaCodePhsInSec >= (-fCaEpochInSec * 0.5 * 1.0001)";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1798, "CalcDllPullInCompensation", "dExpectedDeltaCodePhsInSec >= (-fCaEpochInSec * 0.5 * 1.0001)");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 1798;
    goto LABEL_173;
  }

  if (v46 > v49 * 1.0001)
  {
    v116 = "dExpectedDeltaCodePhsInSec <= (fCaEpochInSec * 0.5 * 1.0001)";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1799, "CalcDllPullInCompensation", "dExpectedDeltaCodePhsInSec <= (fCaEpochInSec * 0.5 * 1.0001)");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 1799;
    goto LABEL_173;
  }

  if (v48 < v49 * -1.0001)
  {
    v116 = "dActualDeltaCodePhsInSec >= (-fCaEpochInSec * 0.5 * 1.0001)";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1801, "CalcDllPullInCompensation", "dActualDeltaCodePhsInSec >= (-fCaEpochInSec * 0.5 * 1.0001)");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 1801;
    goto LABEL_173;
  }

  if (v48 > v49 * 1.0001)
  {
    v116 = "dActualDeltaCodePhsInSec <= (fCaEpochInSec * 0.5 * 1.0001)";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1802, "CalcDllPullInCompensation", "dActualDeltaCodePhsInSec <= (fCaEpochInSec * 0.5 * 1.0001)");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 1802;
    goto LABEL_173;
  }

  v50 = v48 - v46 + (v48 - v46) * -0.5;
  v51 = v121;
  v27 = a9;
  if (fabs(v50) > v49 / v121)
  {
LABEL_35:
    if (v41 > 0.0)
    {
      v39 = a3;
      v40 = 0;
      v122 = 1;
      v119 = 1;
      v120 = 0;
      v37 = 1.0;
      goto LABEL_37;
    }

LABEL_166:
    v116 = "fCaEpochInSec > 0.0f";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 137, "EstTrkCodePrmViaOpenLpPeakFit", "fCaEpochInSec > 0.0f");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 137;
    goto LABEL_173;
  }

  if (v41 <= 0.0)
  {
    goto LABEL_166;
  }

  v39 = a3;
  v38 = v36 - (v42 + v50 * (v51 / v41));
  if (v38 >= 0.0)
  {
    if (v38 < v51)
    {
      v122 = 0;
      v120 = 0;
      v40 = 1;
      v121 = v44;
      goto LABEL_20;
    }

    v122 = 0;
    v38 = v38 - v51;
    v119 = 0;
    v120 = -1;
    v40 = 1;
    v121 = v44;
  }

  else
  {
    v122 = 0;
    v38 = v38 + v51;
    v40 = 1;
    v121 = v44;
    v119 = 0;
    v120 = 1;
  }

LABEL_37:
  v52 = *(a16 + 16);
  v53 = *(a6 + 16);
  if (!*(a6 + 16))
  {
    v59 = *(a6 + 24);
    if (!*(a6 + 24))
    {
      v116 = "!otEstValidityChkBitMsk32.IsEmpty()";
      DeviceFaultNotify("glmesrd_codeprm.cpp", 1474, "DetermineDllValidity", "!otEstValidityChkBitMsk32.IsEmpty()");
      v117 = "glmesrd_codeprm.cpp";
      v118 = 1474;
LABEL_173:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v117, v118, v116);
    }

    v60 = 0;
    v61 = 2;
    goto LABEL_59;
  }

  __src = *(a16 + 32) - *(a16 + 28);
  v129 = *(a16 + 48);
  v54 = *(a16 + 40);
  v55 = v54;
  v56 = v40;
  v57 = v27;
  if (v54 <= 0.0)
  {
    if (v54 >= 0.0)
    {
      LOWORD(v62) = 0;
      goto LABEL_46;
    }

    v58 = -0.5;
  }

  else
  {
    v58 = 0.5;
  }

  v62 = (v55 + v58);
LABEL_46:
  v128 = v62;
  memcpy((*(a1 + 72) + *(a1 + 83) * *(a1 + 82)), &__src, *(a1 + 83));
  v65 = *(a1 + 82) + 1;
  *(a1 + 82) = v65;
  if (*(a1 + 81) <= v65)
  {
    *(a1 + 80) = 1;
    *(a1 + 82) = 0;
    v66 = 9;
  }

  else
  {
    v66 = 9;
    if ((*(a1 + 80) & 1) == 0)
    {
      v66 = 10;
    }
  }

  if (*(a1 + 72 + v66) < v53 || *a17 != 1)
  {
    v60 = 0;
    goto LABEL_57;
  }

  v125[0] = *(a17 + 8);
  if (*(a1 + 16) >= 0x23Fu)
  {
    v116 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v117 = "glsignalid.h";
    v118 = 679;
    goto LABEL_173;
  }

  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a1 + 12) - *(a1 + 12) + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 8)]])
  {
LABEL_160:
    v116 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v117 = "glsignalid.h";
    v118 = 686;
    goto LABEL_173;
  }

  v67 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a1 + 12) - *(a1 + 12) + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 8)]] * 0.001;
  v68 = *v57;
  *&v125[1] = v67;
  v125[2] = v68;
  v125[3] = *(a5 + 20);
  v126 = *(a16 + 49);
  v69 = BlueFin::GlMeSrdObsBuf::SumFcn((a1 + 72), v53, v125, BlueFin::GlMeSrdEstCodePrm::CalcEarlyMinusLateDllValidityTestStatSummand);
  v60 = a6[5] >= v69;
LABEL_57:
  v59 = *(a6 + 24);
  if (!*(a6 + 24))
  {
    v61 = 1;
    v40 = v56;
    goto LABEL_75;
  }

  v61 = 3;
  v27 = v57;
  v40 = v56;
LABEL_59:
  v70 = *(v27 + 1);
  if (a12 <= 3u)
  {
    v72 = *(a5 + 20) / **(v39 + 24);
  }

  else
  {
    v71 = *(a5 + 20) / **(v39 + 24);
    v72 = v71 * v71;
  }

  v73 = (v70 * a6[9]) * v72;
  v74 = *(a1 + 40);
  v75 = v74 - v73;
  if ((v74 - v73) < 0.0)
  {
    v75 = -(v74 - v73);
  }

  if (v75 >= 1.0 || v74 == 0.0 && v73 != 0.0)
  {
    *(a1 + 40) = v73;
    *v125 = v73;
    *(a1 + 58) = 0;
    *(a1 + 56) = 1;
    if (*(a1 + 57))
    {
      v76 = 0;
      do
      {
        memcpy((*(a1 + 48) + v76 * *(a1 + 59)), v125, *(a1 + 59));
        ++v76;
      }

      while (v76 < *(a1 + 57));
    }
  }

  v125[0] = *(a16 + 36);
  memcpy((*(a1 + 48) + *(a1 + 59) * *(a1 + 58)), v125, *(a1 + 59));
  v77 = *(a1 + 58) + 1;
  *(a1 + 58) = v77;
  if (*(a1 + 57) <= v77)
  {
    *(a1 + 56) = 1;
    *(a1 + 58) = 0;
  }

  v78 = v72 * (v70 * a6[10]);
  v79 = BlueFin::GlMeSrdObsBuf::SumFcn((a1 + 48), v59, 0, BlueFin::GlMeSrdEstCodePrm::CalcPromptMagSqrdDllValidityTestStatSummand) / v59;
  if (v78 <= v79)
  {
    v60 |= 2u;
  }

LABEL_75:
  if ((v60 & ~v61) != 0)
  {
    v116 = "otValRslt.IsEmpty()";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1480, "DetermineDllValidity", "otValRslt.IsEmpty()");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 1480;
    goto LABEL_173;
  }

  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x3F);
  }

  if (v61 == v60)
  {
    v80 = *(a5 + 92);
    v81 = *(a5 + 20) * (2.0 - v80);
    v82 = __exp10f(*(a17 + 8) / 10.0);
    v83 = sqrtf(((v80 * *(a5 + 88)) * ((2.0 / (v81 * v82)) + 1.0)) / (v82 + v82));
    goto LABEL_83;
  }

  if (*(a1 + 16) >= 0x23Fu)
  {
LABEL_158:
    v116 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 778, "GetChipsPerEpoch", "IsValid()");
    v117 = "glsignalid.h";
    v118 = 778;
    goto LABEL_173;
  }

  v84 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * *(a1 + 12) + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 8)]];
  if (!v84)
  {
    goto LABEL_159;
  }

  v83 = v84;
LABEL_83:
  v85 = *(a16 + 4);
  v86 = *(a10 + 1);
  v87 = *(a10 + 3);
  *a22 = 0;
  *(a22 + 2) = 0;
  *(a22 + 8) = 0;
  *(a22 + 16) = 0;
  *(a22 + 28) = v40 & (v122 ^ 1);
  v88 = *(a6 + 22);
  if ((v86 & 0x20) != 0)
  {
    v89 = a13;
  }

  else
  {
    v89 = 1;
  }

  if ((v87 & 0x10) != 0)
  {
    v90 = v89;
  }

  else
  {
    v90 = 1;
  }

  if ((v90 & 1) == 0)
  {
    *(a1 + 20) = 1;
    *(a1 + 28) = v85;
    v91 = *(a1 + 22);
    if (v88 > v91)
    {
      LOWORD(v91) = v88;
    }

    *(a1 + 22) = v91;
  }

  if (v85 > v88)
  {
    v92 = *(a1 + 24);
    if (v61 == v60 || (v40 & 1) != 0)
    {
      if (v92 >= 4)
      {
        *(a1 + 20) = 1;
        *(a1 + 24) = 0;
      }
    }

    else
    {
      v93 = v92 + 1;
      *(a1 + 24) = v93;
      v94 = *(a1 + 22);
      if (v88 > v94)
      {
        LOWORD(v94) = v88;
      }

      *(a1 + 22) = v94;
      if (v93 >= 4)
      {
        *(a1 + 20) = 1;
        *(a1 + 28) = v85;
      }
    }

    v95 = *(a1 + 28);
    v96 = v85 >= v95;
    v97 = v85 - v95;
    if (!v96)
    {
      v116 = "ulEpochCntInMs >= m_stCodePhsState.m_ulStartOfDllProbationPeriodInMs";
      DeviceFaultNotify("glmesrd_codeprm.cpp", 727, "UpdateDllProbation", "ulEpochCntInMs >= m_stCodePhsState.m_ulStartOfDllProbationPeriodInMs");
      v117 = "glmesrd_codeprm.cpp";
      v118 = 727;
      goto LABEL_173;
    }

    if (*(a1 + 20) != 1 || (v98 = *(a1 + 22), v97 > v98))
    {
      v99 = 0;
      *(a1 + 20) = 0;
      *(a1 + 22) = 0;
      if (v122)
      {
        goto LABEL_135;
      }

      goto LABEL_113;
    }

    if (v88 <= v98)
    {
      v100 = *(a1 + 22);
    }

    else
    {
      v100 = v88;
    }

    *(a1 + 22) = v100;
  }

  v99 = 1;
  if (v122)
  {
    goto LABEL_135;
  }

LABEL_113:
  v101 = a13 & ~a14;
  v63 = *a6;
  v102 = v63 != 0;
  if ((v101 & 1) == 0 && !v63)
  {
    goto LABEL_135;
  }

  v103 = 0;
  v104 = *(a6 + 13) >= v85;
  v105 = v119 & v104 & v90;
  v106 = v104 & v40;
  while (1)
  {
    v64 = v102;
    v63 = v102 ? v63 : v101 & 1u;
    v107 = v63 != 1;
    if (v63 == 1)
    {
      break;
    }

    if (v63 != 2)
    {
      v116 = "0";
      DeviceFaultNotify("glmesrd_codeprm.cpp", 466, "SelectPublishedCodePrmEst", "0");
      v117 = "glmesrd_codeprm.cpp";
      v118 = 466;
      goto LABEL_173;
    }

    if (v106)
    {
      *a22 = 1;
      *(a22 + 20) = 2;
      *(a22 + 8) = v38;
      *(a22 + 2) = v120;
      goto LABEL_134;
    }

LABEL_129:
    v103 += v64;
    v101 &= v102 && v107;
    v63 = LODWORD(a6[v103]);
    v102 = v63 != 0;
    v64 = v102 | v101;
    if (!((v63 != 0) | v101 & 1))
    {
      goto LABEL_135;
    }
  }

  if (((v61 == v60) & v40) == 0)
  {
    goto LABEL_129;
  }

  if (*(a1 + 16) >= 0x23Fu)
  {
    goto LABEL_158;
  }

  v63 = *(a1 + 12);
  v108 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v63 + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 8)]];
  if (!v108)
  {
    goto LABEL_159;
  }

  if (vabdd_f64(v38 - (v108 * v120), v52) >= vcvtd_n_f64_u32(v108, 1uLL))
  {
    goto LABEL_129;
  }

  if (!v99)
  {
    *a22 = v40;
    *(a22 + 20) = 1;
    *(a22 + 8) = v52;
    goto LABEL_154;
  }

  if (!v105)
  {
    goto LABEL_129;
  }

  if (v88 <= *(a1 + 22))
  {
    v88 = *(a1 + 22);
  }

  if (!v88)
  {
    v116 = "dMaxDllPullinProbationTimeInMs > 0.0";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 403, "SelectPublishedCodePrmEst", "dMaxDllPullinProbationTimeInMs > 0.0");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 403;
    goto LABEL_173;
  }

  v109 = (v85 - *(a1 + 28)) / v88;
  v110 = 1.0 - v109;
  v111 = v109;
  v112 = 1.0 - v109;
  v113 = fabsf(v112);
  if (fabsf(v111) > 1.0 && v113 > 1.0)
  {
    v116 = "FABS_F((float)dWeightApplyToDLL) <= 1.0f||FABS_F((float)dWeightApplyToPkfit) <= 1.0f";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 408, "SelectPublishedCodePrmEst", "FABS_F((float)dWeightApplyToDLL) <= 1.0f||FABS_F((float)dWeightApplyToPkfit) <= 1.0f");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 408;
    goto LABEL_173;
  }

  *a22 = v40;
  *(a22 + 20) = 1;
  *(a22 + 8) = v38 * v110 + v109 * v52;
  v83 = v110 * v121 + v109 * v83;
LABEL_154:
  *(a22 + 16) = v83;
  if (v63 == 2)
  {
    v115 = v121;
    if (v121 < v83)
    {
      v115 = v83;
    }

    v121 = v115;
LABEL_134:
    *(a22 + 16) = v121;
  }

LABEL_135:
  *(a22 + 1) = *(a16 + 8);
  *(a22 + 26) = 1;
  *(a22 + 27) = v40 ^ 1;
  *(a22 + 32) = v37;
  *(a22 + 24) = 1;
  *(a22 + 25) = v61 != v60;
  if (*(a7 + 1) == 2)
  {

    BlueFin::GlMeSrdEstCodePrm::OverrideTrkCodePrmRmsev2022(a1, v63, v64, a17, a5, a22);
  }

  else
  {

    BlueFin::GlMeSrdEstCodePrm::OverrideTrkCodePrmRmse(a1, v63, v64, a17, a5, a22);
  }
}

void BlueFin::GlMeSrdSatReport::ProcessMsmt(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const BlueFin::GlSignalId *a6, _BYTE *a7, BlueFin::GlMeSrdStats *a8)
{
  v8 = *(a2 + 8);
  if ((~v8 & 0xA) != 0)
  {
    if ((~v8 & 0x12) != 0)
    {
      if ((~v8 & 0x10002) == 0)
      {
        BlueFin::GlMeSrdSatReport::ProcessSniffMsmt(a1, a2, a6, a3, a5, a7);
      }
    }

    else
    {
      BlueFin::GlMeSrdSatReport::ProcessTrkMsmt(a1, a2, a6, a3, a4, a5, a8);
    }
  }

  else
  {
    BlueFin::GlMeSrdSatReport::ProcessSrchMsmt(a1, a2, a6, a3, a5);
  }
}

uint64_t BlueFin::GlMeSrdStats::setAcqWin(uint64_t result, unsigned __int8 *a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, int a6)
{
  if (*(a3 + 4) == 1 && (*(a3 + 8) & 0xF) != 5)
  {
    v10 = result;
    if (*(result + 42954) == -1)
    {
      GlCustomLog(126, "IQDUMP_ACQ WARNING m_otAcqWinArray overflow\n");
      BlueFin::GlBigArray::Clear(v10 + 42920);
    }

    v11 = BlueFin::GlBigArray::Add((v10 + 42920), *(a2 + 4));
    if (!v11)
    {
      DeviceFaultNotify("glmesrd_stats.cpp", 876, "setAcqWin", "nullptr != pAcqWin");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_stats.cpp", 876, "nullptr != pAcqWin");
    }

    v12 = v11;
    GlCustomLog(126, "IQDUMP_ACQ,%d:%s,%d,%d", BlueFin::GlSvId::s_aucSvId2prn[*a2], BlueFin::GlSignalId::s_ausSignalType2str[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]]], *a4, a4[1]);
    *v12 = (BlueFin::GlMeSrdAsicUnitConverter::EswUtStructToFinalUserTimeMs(a4, a2, a6) * 1000000000.0);
    v14 = (v12 + 6);
    for (i = 8; i != 28; i += 4)
    {
      v16 = BlueFin::GlMeSrdAsicUnitConverter::EswCarrierNcoIncToCarrFreqInHz(*(a5 + i), a2, v13);
      v18 = BlueFin::GlMeSrdAsicUnitConverter::HzToPpu(a2, v16, v17);
      v19 = ((1.0 - v18) * 0.2 * 1.0e12);
      *(v14 - 5) = v19;
      v20 = v18;
      *v14++ = v20 * 299792458.0;
      GlCustomLog(126, ",%.1f ms(%.0f ppb)", v19 / 1000.0 / 1000.0 / 1000.0, v20 * 1000000000.0);
    }

    return GlCustomLog(126, "\n");
  }

  return result;
}

float BlueFin::GlMeSrdAsicUnitConverter::HzToPpu(BlueFin::GlMeSrdAsicUnitConverter *this, float a2, const BlueFin::GlSignalId *a3)
{
  if (*(this + 4) >= 0x23Fu)
  {
    DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 651, "IsValid()");
  }

  v3 = *this;
  v4 = BlueFin::GlSvId::s_aucSvId2gnss[v3];
  v5 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(this + 1) - *(this + 1) + v4]];
  if (v4 == 2)
  {
    v6 = (v3 - 59);
    if ((v3 - 52) >= 0xE)
    {
      v6 = -8.0;
    }

    v5 = v5 + v6 * 562500.0;
  }

  v7 = v5;
  return a2 / v7;
}

uint64_t BlueFin::GlMeSrdSatReportMgr::GetSatReportPtr(BlueFin::GlMeSrdSatReportMgr *this, const BlueFin::GlSatCarrId *a2, const BlueFin::GlSignalId *a3, int a4)
{
  v31 = *MEMORY[0x29EDCA608];
  if (a4 && BlueFin::GlBigArray::Has(*(this + 456), *a2 + 100 * *(a2 + 4)))
  {
    v7 = *(this + 456);
    if (*a2 + 100 * *(a2 + 4) - *(v7 + 28) >= *(v7 + 30))
    {
      goto LABEL_44;
    }

    v8 = *(*(v7 + 8) + 2 * (*a2 + 100 * *(a2 + 4) - *(v7 + 28)));
    if (v8 == 0xFFFF)
    {
      goto LABEL_11;
    }

    if (*(v7 + 32) <= v8)
    {
      goto LABEL_45;
    }

    if (*v7 && (v9 = *v7 + *(v7 + 24) * v8, *(v9 + 500) == *a3) && *(v9 + 504) == *(a3 + 1))
    {
      memcpy(__dst, (v9 + 160), sizeof(__dst));
      v10 = 1;
    }

    else
    {
LABEL_11:
      v10 = 0;
    }

    BlueFin::GlMeSrdSatReportMgr::DestroySatReport(this, a2);
  }

  else
  {
    v10 = 0;
  }

  v11 = BlueFin::GlBigArray::Missing(*(this + 456), *a2 + 100 * *(a2 + 4));
  v12 = *(this + 456);
  if (!v11)
  {
    if (*a2 + 100 * *(a2 + 4) - *(v12 + 28) < *(v12 + 30))
    {
      v22 = *(*(v12 + 8) + 2 * (*a2 + 100 * *(a2 + 4) - *(v12 + 28)));
      if (*(v12 + 32) > v22)
      {
        v21 = *v12 + *(v12 + 24) * v22;
        if (*(v21 + 500) == *a3 && *(v21 + 504) == *(a3 + 1))
        {
          goto LABEL_35;
        }

        v27 = "pSatReport->GetSignalIndex() == otSignalId";
        DeviceFaultNotify("glmesrd_sat_report_mgr.cpp", 225, "GetSatReportPtr", "pSatReport->GetSignalIndex() == otSignalId");
        v28 = "glmesrd_sat_report_mgr.cpp";
        v29 = 225;
LABEL_47:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v28, v29, v27);
      }

LABEL_45:
      v27 = "slot < m_usNumSlots";
      DeviceFaultNotify("glinc_array.h", 319, "EnsureValidSlot", "slot < m_usNumSlots");
      v28 = "glinc_array.h";
      v29 = 319;
      goto LABEL_47;
    }

LABEL_44:
    v27 = "handle - m_usMinHandle < m_usNumHandles";
    DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
    v28 = "glinc_array.h";
    v29 = 313;
    goto LABEL_47;
  }

  if (*(v12 + 34) != -1)
  {
    goto LABEL_25;
  }

  if (!*(v12 + 32))
  {
    goto LABEL_49;
  }

  v13 = 0;
  v14 = -1;
  v15 = -1;
  do
  {
    v16 = (*(v12 + 28) + *(*(v12 + 16) + 2 * v13));
    if (!BlueFin::GlBigArray::Has(v12, v16))
    {
      v27 = "m_potArray->Has(handle)";
      DeviceFaultNotify("glinc_array.h", 362, "Next", "m_potArray->Has(handle)");
      v28 = "glinc_array.h";
      v29 = 362;
      goto LABEL_47;
    }

    v17 = *(this + 456);
    if (v16 - *(v17 + 28) >= *(v17 + 30))
    {
      goto LABEL_44;
    }

    v18 = *(*(v17 + 8) + 2 * (v16 - *(v17 + 28)));
    if (*(v17 + 32) <= v18)
    {
      goto LABEL_45;
    }

    ++v13;
    v19 = *(*v17 + *(v17 + 24) * v18 + 24);
    if (v19 < v14)
    {
      v14 = v19;
      v15 = v16;
    }
  }

  while (v13 < *(v12 + 32));
  if (v15 == 0xFFFF)
  {
LABEL_49:
    v27 = "usHandleOlder != 0xFFFF";
    DeviceFaultNotify("glmesrd_sat_report_mgr.cpp", 200, "GetSatReportPtr", "usHandleOlder != 0xFFFF");
    v28 = "glmesrd_sat_report_mgr.cpp";
    v29 = 200;
    goto LABEL_47;
  }

  BlueFin::GlMeSrdSatReportMgr::DestroySatReportByHandle(this, v15);
  v12 = *(this + 456);
LABEL_25:
  v20 = BlueFin::GlBigArray::Add(v12, *a2 + 100 * *(a2 + 4));
  if (!v20)
  {
    v27 = "pSlot != nullptr";
    DeviceFaultNotify("glmesrd_sat_report_mgr.cpp", 206, "GetSatReportPtr", "pSlot != nullptr");
    v28 = "glmesrd_sat_report_mgr.cpp";
    v29 = 206;
    goto LABEL_47;
  }

  v21 = v20;
  BlueFin::GlMeSrdSatReport::GlMeSrdSatReport(v20, this + 24, *a2, a3, *(this + 1), *(this + 2));
  if (v10)
  {
    memcpy((v21 + 160), __dst, 0x150uLL);
  }

LABEL_35:
  if (*a3 - 33 <= 0x12 && !(*(**(this + 458) + 16))(*(this + 458), *a2))
  {
    v24 = (*(**(this + 458) + 24))(*(this + 458), *a2);
    if (v24)
    {
      *(v24 + 416) = 0;
      *(v24 + 384) = 0u;
      *(v24 + 400) = 0u;
      *(v24 + 352) = 0u;
      *(v24 + 368) = 0u;
      *(v24 + 320) = 0u;
      *(v24 + 336) = 0u;
      *(v24 + 288) = 0u;
      *(v24 + 304) = 0u;
      *(v24 + 256) = 0u;
      *(v24 + 272) = 0u;
      *(v24 + 224) = 0u;
      *(v24 + 240) = 0u;
      *(v24 + 192) = 0u;
      *(v24 + 208) = 0u;
      *(v24 + 160) = 0u;
      *(v24 + 176) = 0u;
      *(v24 + 128) = 0u;
      *(v24 + 144) = 0u;
      *(v24 + 96) = 0u;
      *(v24 + 112) = 0u;
      *(v24 + 64) = 0u;
      *(v24 + 80) = 0u;
      *(v24 + 32) = 0u;
      *(v24 + 48) = 0u;
      *v24 = 0u;
      *(v24 + 16) = 0u;
      *(v24 + 417) = 255;
      *(v21 + 3128) = v24;
    }
  }

  if (*a3 - 1 <= 0x1F && !(*(**(this + 459) + 16))(*(this + 459), *a2))
  {
    v25 = (*(**(this + 459) + 24))(*(this + 459), *a2);
    if (v25)
    {
      *(v21 + 3136) = BlueFin::GlMeSrdEstLowTow::GlMeSrdEstLowTow(v25);
    }
  }

  return v21;
}

double BlueFin::GlMeSrdSatReport::ProcessTrkMsmt(void *a1, uint64_t a2, const BlueFin::GlSignalId *a3, uint64_t a4, uint64_t a5, uint64_t a6, BlueFin::GlMeSrdStats *a7)
{
  v9 = a5;
  v10 = a4;
  *(a1 + 48) = (*(**(a1[1] + 24) + 48))(*(a1[1] + 24));
  BlueFin::GlMeSrdSatRptTrkMsmtMI::GlMeSrdSatRptTrkMsmtMI(v38, a2, a3, (a1 + 3), *a1[1], *a1, v10, v9);
  v14 = *a1[1];
  v15 = (*(**a1 + 16))();
  BYTE4(v35) = *a3;
  LODWORD(v36) = *(a3 + 1);
  WORD2(v36) = *(a3 + 4);
  BlueFin::GlMeSrdSatRptNoiseStats::GlMeSrdSatRptNoiseStats(&v37, v14, v15, &v35 + 4);
  v16 = BYTE1(v39);
  v17 = (*(**(a1[1] + 24) + 40))(*(a1[1] + 24));
  if (a7 && v17)
  {
    GlCustomLog(15, "SetTrkMsmtIQPower for SvId: %d Index %s PLL I %ul PLL Q %ul\n", *a3, BlueFin::GlSignalId::s_ausSignalType2str[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a3 + 1) - *(a3 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a3]]], *(a2 + 932), *(a2 + 936));
    BlueFin::GlMeSrdStats::SetTrkMsmtIQPower(a7, *(a2 + 932), *(a2 + 936), a3);
  }

  v18 = (*(**a1[1] + 32))(*a1[1]);
  v19 = (*(**a1[1] + 136))(*a1[1]);
  v20 = (*(**a1[1] + 144))(*a1[1], v16);
  v21 = (*(**a1[1] + 168))(*a1[1], v16);
  v22 = (*(**a1[1] + 184))(*a1[1], v16);
  BlueFin::GlMeSrdSatReport::RunTrkEstimatorAlgorithms(a1, v18, v19, v20, v21, v22, &v37, v38, v23, v24, v25, v26, v27, v28, v29, v30, a6, v32, v33, v34, v35, v36, v37, v38[0], v38[1], v38[2], v38[3], v38[4], v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
  *&result = BlueFin::GlMeSrdSatRptTrkMsmtMI::UpdateState(v38, (a1 + 3)).n128_u64[0];
  return result;
}

uint64_t *BlueFin::GlMeSrdSatRptTrkMsmtMI::GlMeSrdSatRptTrkMsmtMI(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, __int16 a8)
{
  v13 = 0;
  v14 = 0;
  *a1 = a2;
  a1[1] = a4;
  a1[2] = a5;
  *(a1 + 6) = a7;
  a1[4] = a3;
  v15 = a1 + 972;
  *(a1 + 20) = -1;
  v16 = a2 + 25;
  *(a1 + 42) = 0;
  v17 = 255;
  do
  {
    if (*(v16 + v14) != 255)
    {
      *(a1 + 42) = ++v13;
      v18 = *(v16 + v14);
      *(a1 + 41) = v18;
      if (v17 == 255)
      {
        *(a1 + 40) = v18;
        v17 = v18;
      }
    }

    ++v14;
  }

  while (v14 != 5);
  *(a1 + 56) = 0;
  a1[6] = a6;
  *(a1 + 64) = 0;
  v19 = a1 + 8;
  *(a1 + 15) = 0;
  *(a1 + 17) = 0;
  *(a1 + 36) = 575;
  *(a1 + 19) = 0;
  *(a1 + 40) = 0;
  *(a1 + 11) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 140) = vneg_f32(0x80000000800000);
  BlueFin::GlMeSrdAsicCorrVecTrkMsmt::GlMeSrdAsicCorrVecTrkMsmt((a1 + 19), 0);
  BlueFin::GlMeSrdAsicCorrVecTrkMsmt::GlMeSrdAsicCorrVecTrkMsmt((a1 + 43), 1);
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 548) = 0x7F7FFFFF7F7FFFFFLL;
  *(a1 + 35) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a1 + 144) = -1;
  *(a1 + 580) = -1;
  *(a1 + 584) = 0;
  *(a1 + 608) = 0;
  *(a1 + 624) = 0;
  *(a1 + 680) = 0;
  *(a1 + 732) = 0;
  *(a1 + 740) = -1;
  *(a1 + 184) = -1;
  *(a1 + 422) = 0;
  *(a1 + 852) = -1;
  *(a1 + 212) = -1;
  *(a1 + 93) = 0u;
  *(a1 + 95) = 0u;
  *(a1 + 97) = 0u;
  *(a1 + 99) = 0u;
  *(a1 + 101) = 0u;
  *(a1 + 103) = 0u;
  *(a1 + 210) = 0;
  *(a1 + 238) = 0;
  *(a1 + 115) = 0u;
  *(a1 + 117) = 0u;
  *(a1 + 111) = 0u;
  *(a1 + 113) = 0u;
  *(a1 + 107) = 0u;
  *(a1 + 109) = 0u;
  *(a1 + 364) = 0;
  *(a1 + 245) = 0;
  a1[120] = 0;
  *(a1 + 242) = 0;
  *v15 = vdup_n_s32(0xFF7FFFFD);
  v255 = vdupq_n_s64(0x47EFFFFFA0000000uLL);
  *(v15 + 12) = v255;
  *(a1 + 1000) = 0;
  *(a1 + 251) = 0;
  *(a1 + 1008) = 0;
  a1[127] = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 1024) = 0;
  *(a1 + 1042) = 0;
  v254 = a1 + 257;
  *(a1 + 1028) = 0u;
  *(a1 + 1056) = 0;
  *(a1 + 265) = 0;
  *(a1 + 1064) = 0;
  *(a1 + 267) = 0;
  *(a1 + 536) = 575;
  *(a1 + 269) = 0;
  *(a1 + 540) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 70) = 0u;
  *(a1 + 69) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 1144) = 0;
  *(a1 + 768) = 0;
  *(a1 + 1538) = 0;
  *(a1 + 903) = 0;
  *(a1 + 908) = -1;
  *(a1 + 1146) = -1;
  *(a1 + 1539) = -1;
  *(a1 + 386) = -1;
  *(a1 + 902) = -1;
  a1[226] = -1;
  *(a1 + 87) = 0u;
  *(a1 + 86) = 0u;
  *(a1 + 85) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 83) = 0u;
  *(a1 + 82) = 0u;
  *(a1 + 81) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 79) = 0u;
  *(a1 + 78) = 0u;
  *(a1 + 77) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 75) = 0u;
  *(a1 + 74) = 0u;
  *(a1 + 73) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 1772) = 0u;
  *(a1 + 1788) = 0u;
  *(a1 + 1740) = 0u;
  *(a1 + 1756) = 0u;
  *(a1 + 1708) = 0u;
  *(a1 + 1724) = 0u;
  *(a1 + 1676) = 0u;
  *(a1 + 1692) = 0u;
  *(a1 + 1644) = 0u;
  *(a1 + 1660) = 0u;
  *(a1 + 1612) = 0u;
  *(a1 + 1628) = 0u;
  *(a1 + 1580) = 0u;
  *(a1 + 1596) = 0u;
  *(a1 + 1548) = 0u;
  *(a1 + 1564) = 0u;
  *(a1 + 539) = 0;
  *(a1 + 2124) = 0u;
  *(a1 + 2140) = 0u;
  *(a1 + 2092) = 0u;
  *(a1 + 2108) = 0u;
  *(a1 + 2060) = 0u;
  *(a1 + 2076) = 0u;
  *(a1 + 2028) = 0u;
  *(a1 + 2044) = 0u;
  *(a1 + 1996) = 0u;
  *(a1 + 2012) = 0u;
  *(a1 + 1964) = 0u;
  *(a1 + 1980) = 0u;
  *(a1 + 1932) = 0u;
  *(a1 + 1948) = 0u;
  *(a1 + 1900) = 0u;
  *(a1 + 1916) = 0u;
  *(a1 + 1868) = 0u;
  *(a1 + 1884) = 0u;
  *(a1 + 1836) = 0u;
  *(a1 + 1852) = 0u;
  *(a1 + 1820) = 0u;
  BlueFin::GlMeSrdGridResults::GlMeSrdGridResults((a1 + 270));
  *(a1 + 868) = a7;
  *(a1 + 1738) = a8;
  v20 = a1[2];
  v21 = (*(*a6 + 16))(a6);
  *(a1 + 435) = (*(*v20 + 48))(v20, v21, a3);
  v22 = *a1;
  v23 = *(*a1 + 8);
  v24 = *a1;
  if ((*&v23 & 0x1011ELL) != 0x116)
  {
    v24 = *a1;
    if ((v23 & 0x200000) == 0)
    {
      DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 185, "CheckRpcBuffer", "(otFlags.Has(FLGS_RECEIVED_ACQ_WIN) && otFlags.Has(FLG_ACQWIN_HAS_COUNT) && otFlags.Has(FLGS_RECEIVED_TRACK) && otFlags.Missing(FLGS_RECEIVED_SEARCH) && otFlags.Missing(FLGS_RECEIVED_SNIFF) && otFlags.Has(FLG_TRACK_HAS_DEBUG)) || otFlags.Has(FLGS_RECEIVED_CW)");
      CrashData();
      v24 = *a1;
    }
  }

  v256 = a1 + 7;
  v257 = v15;
  if (!*(v24 + 324) && (*(v22 + 10) & 0x20) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 187, "CheckRpcBuffer", "m_rRpcBuffer.GetTrkMsmtRawData().hss.nb_samples > 0 || otFlags.Has(FLGS_RECEIVED_CW)");
    CrashData();
    v24 = *a1;
  }

  v25 = 0;
  v26 = v24 + 25;
  do
  {
    if (*(v26 + v25) != 255)
    {
      v27 = (*(*a1[2] + 80))(a1[2], *(a1 + 40));
      if (v27 != (*(*a1[2] + 80))(a1[2], *(v26 + v25)))
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 195, "CheckRpcBuffer", "m_rRxParam.GetCnstl(m_ucFirstBlkGearId) == m_rRxParam.GetCnstl(sAcqWin.id.flags.te.blk_gear_id[i])");
        CrashData();
      }
    }

    ++v25;
  }

  while (v25 != 5);
  if (*(a1 + 40) == 255 || *(a1 + 41) == 255)
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 198, "CheckRpcBuffer", "m_ucFirstBlkGearId != INVALID_GEAR_ID && m_ucLastBlkGearId != INVALID_GEAR_ID");
    CrashData();
  }

  v28 = (*(*a1[2] + 80))(a1[2]);
  v29 = a1[4];
  v30 = *v29;
  v31 = BlueFin::GlSvId::s_aucSvId2gnss[*v29];
  if (v28 <= 1)
  {
    if (v28)
    {
      if (v28 == 1)
      {
        if (v31 == 2)
        {
          goto LABEL_64;
        }

        v33 = "INC_GLO( eGnss == GNSS_GLONASS) OMIT_GLO(false)";
        v34 = 213;
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    if ((v31 - 3) < 4 || v31 == 0)
    {
      goto LABEL_64;
    }

    v33 = "eGnss == GNSS_GPS INC_QZS(|| eGnss == GNSS_QZSS) INC_BDS(|| eGnss == GNSS_BEIDOU) INC_GAL(|| eGnss == GNSS_GALILEO) INC_NIC(|| eGnss == GNSS_NAVIC)";
    v34 = 210;
LABEL_52:
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", v34, "CheckRpcBuffer", v33);
    CrashData();
    goto LABEL_64;
  }

  if (v28 == 2)
  {
    if ((*(v22 + 10) & 0x20) != 0 || v31 == 1 || v31 == 4 && (v30 - 76) <= 0x3E && ((1 << (v30 - 76)) & 0x7C0000000000001FLL) != 0)
    {
      goto LABEL_64;
    }

    v33 = "otFlags.Has(FLGS_RECEIVED_CW) INC_SBS(|| (eGnss == GNSS_SBAS)) INC_BDS(|| (eGnss == GNSS_BEIDOU && m_otSignalId.IsBeidouGeo()))";
    v34 = 218;
    goto LABEL_52;
  }

  if (v28 == 3)
  {
    if (BlueFin::GlSvId::s_aucSvId2gnss[*v29] > 3u)
    {
      if (v31 == 4)
      {
        if ((v30 - 134) > 0xFFFFFFCA)
        {
          goto LABEL_64;
        }
      }

      else if (v31 == 5)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (BlueFin::GlSvId::s_aucSvId2gnss[*v29])
      {
        v35 = v31 == 3;
      }

      else
      {
        v35 = 1;
      }

      if (v35)
      {
        goto LABEL_64;
      }
    }

    v33 = "eGnss == GNSS_GPS INC_QZS(|| eGnss == GNSS_QZSS) INC_BDS(|| (eGnss == GNSS_BEIDOU && m_otSignalId.IsBeidouNonGeo())) INC_GAL(|| (eGnss == GNSS_GALILEO))";
    v34 = 224;
    goto LABEL_52;
  }

  if (v28 != 4)
  {
LABEL_51:
    v33 = "false";
    v34 = 240;
    goto LABEL_52;
  }

  if (*(v29 + 1) != 3)
  {
    if (v31 == 5)
    {
      goto LABEL_64;
    }

    v33 = "INC_GAL(eGnss == GNSS_GALILEO) OMIT_GAL(false)";
    v34 = 236;
    goto LABEL_52;
  }

  if (BlueFin::GlSvId::s_aucSvId2gnss[*v29] > 3u)
  {
    if (v31 == 4)
    {
      if ((v30 - 134) > 0xFFFFFFCA)
      {
        goto LABEL_64;
      }
    }

    else if (v31 == 5)
    {
      goto LABEL_64;
    }

LABEL_360:
    v33 = "eGnss == GNSS_GPS INC_QZS(|| eGnss == GNSS_QZSS) INC_BDS(|| (eGnss == GNSS_BEIDOU && m_otSignalId.IsBeidouNonGeo())) INC_GAL(|| eGnss == GNSS_GALILEO)";
    v34 = 232;
    goto LABEL_52;
  }

  if (BlueFin::GlSvId::s_aucSvId2gnss[*v29])
  {
    v32 = v31 == 3;
  }

  else
  {
    v32 = 1;
  }

  if (!v32)
  {
    goto LABEL_360;
  }

LABEL_64:
  v37 = (*(*a1[2] + 72))(a1[2], *(a1 + 41));
  v38 = *(*a1 + 24) & 0xF;
  if (v37 > 2)
  {
    if (v37 == 3)
    {
      if (v38 == 6)
      {
        goto LABEL_84;
      }

      v39 = "eTrkMode == TRK_POST_FRAMENCVEC_MODE";
      v40 = 251;
      goto LABEL_80;
    }

    if (v37 != 4)
    {
      if (v37 == 5)
      {
        if (v38 == 1)
        {
          goto LABEL_84;
        }

        v39 = "eTrkMode == TRK_POST_BIT_MODE";
        v40 = 253;
        goto LABEL_80;
      }

LABEL_79:
      v39 = "false";
      v40 = 255;
LABEL_80:
      DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", v40, "CheckRpcBuffer", v39);
      CrashData();
      goto LABEL_84;
    }

    if (v38 != 3)
    {
      v39 = "eTrkMode == TRK_DATA_WIPEOFF_MODE";
      v40 = 252;
      goto LABEL_80;
    }
  }

  else
  {
    if (!v37)
    {
      if ((*(*a1 + 24) & 0xF) == 0)
      {
        goto LABEL_84;
      }

      v39 = "eTrkMode == TRK_PRE_BIT_MODE";
      v40 = 248;
      goto LABEL_80;
    }

    if (v37 != 1)
    {
      if (v37 == 2)
      {
        if (v38 == 2)
        {
          goto LABEL_84;
        }

        v39 = "eTrkMode == TRK_POST_FRAME_MODE";
        v40 = 250;
        goto LABEL_80;
      }

      goto LABEL_79;
    }

    if (v38 != 1)
    {
      v39 = "eTrkMode == TRK_POST_BIT_MODE";
      v40 = 249;
      goto LABEL_80;
    }
  }

LABEL_84:
  v41 = (*(*a1[2] + 184))(a1[2], *(a1 + 41));
  v42 = *a1;
  v43 = (*(*a1[2] + 136))(a1[2]);
  v44 = v43;
  v45 = *(*a1 + 8);
  if ((~v45 & 0x100002) == 0)
  {
    v46 = (*(v42 + 3146) >> 1) & 0x1F;
    v47 = *(v43 + 64);
    if (*(v47 + 8) <= v46)
    {
      DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 552, "BuildAcqWindowMsmtInfo", "rTrkGrid.tapcfg.tap_info.bits.cfg_id < (GlIntU8)(stAllCnstlTrkParams.ptrStrTrkGridConfigLUT->nb_configs)");
      CrashData();
      v47 = *(v44 + 64);
      v46 = (*(v42 + 3146) >> 1) & 0x1F;
    }

LABEL_90:
    v48 = v47 + 12 * v46 + 12;
    goto LABEL_91;
  }

  if ((~v45 & 0x40002) == 0)
  {
    v46 = *(v42 + 1845);
    v47 = *(v43 + 64);
    if (*(v47 + 8) <= v46)
    {
      DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 557, "BuildAcqWindowMsmtInfo", "rTrkGrid.data.cfg < (GlIntU8)(stAllCnstlTrkParams.ptrStrTrkGridConfigLUT->nb_configs)");
      CrashData();
      v47 = *(v44 + 64);
      v46 = *(v42 + 1845);
    }

    goto LABEL_90;
  }

  if ((~v45 & 0x80002) == 0)
  {
    v46 = *(v42 + 2913);
    v47 = *(v43 + 64);
    if (*(v47 + 8) <= v46)
    {
      DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 562, "BuildAcqWindowMsmtInfo", "rTrkGrid.msmt.cfg < (GlIntU8)(stAllCnstlTrkParams.ptrStrTrkGridConfigLUT->nb_configs)");
      CrashData();
      v47 = *(v44 + 64);
      v46 = *(v42 + 2913);
    }

    goto LABEL_90;
  }

  v48 = *(a1[1] + 464);
  if (!v48)
  {
    v49 = 0.0;
    goto LABEL_97;
  }

LABEL_91:
  v49 = 0.0;
  if ((*(*a1 + 104) & 8) != 0)
  {
    v50 = (*(v48 + 8) >> 4) & 0x1F;
    if (v50)
    {
      v51 = a1[4];
      if (*(v51 + 4) >= 0x23Fu)
      {
        goto LABEL_353;
      }

      v52 = *(v51 + 1);
      v53 = BlueFin::GlSvId::s_aucSvId2gnss[*v51];
      v54 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v52 - v52 + v53];
      if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v52 - v52 + v53])
      {
        goto LABEL_354;
      }

      v55 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v52 + v53];
      if (!v55)
      {
LABEL_355:
        v252 = "ucChipsPerEpoch != 0";
        DeviceFaultNotify("glsignalid.h", 785, "GetChipsPerEpoch", "ucChipsPerEpoch != 0");
        v253 = 785;
LABEL_356:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v253, v252);
      }

      v49 = v54 * 0.001 * v50 / v55;
    }
  }

LABEL_97:
  *(a1 + 56) = 1;
  *(a1 + 15) = 2;
  v56 = a1[4];
  if (v19 != v56)
  {
    *(a1 + 64) = *v56;
    *(a1 + 17) = *(v56 + 4);
    *(a1 + 36) = *(v56 + 8);
  }

  *(a1 + 12) = BlueFin::GlMeSrdAsicUnitConverter::EswUtStructToInitialUserTimeMs(v42 + 36, v56, *(a1 + 6)) * 0.001;
  *(a1 + 12) = *(a1 + 12) - (*(*a1[2] + 56))(a1[2], a1[4]);
  *(a1 + 12) = *(a1 + 12) - BlueFin::GlSignalId::GetInterSignalBiasInMs(a1[4], a1[6]) * 0.001 - v49;
  v59 = a1[4];
  if (*(v59 + 4) >= 0x23Fu)
  {
    goto LABEL_353;
  }

  v60 = *(v59 + 1);
  v61 = BlueFin::GlSvId::s_aucSvId2gnss[*v59];
  v62 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v60 - v60 + v61];
  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v60 - v60 + v61])
  {
    goto LABEL_354;
  }

  v63 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v60 + v61];
  if (!v63)
  {
    goto LABEL_355;
  }

  v64 = *(v42 + 44);
  LOWORD(v57) = *(v42 + 56);
  LODWORD(v58) = BlueFin::GlMeSrdAsicUnitConverter::ulChnTmNcoLsbScale;
  *&v65 = v57 / v58;
  v66 = *&v65 + (v64 & BlueFin::GlMeSrdAsicUnitConverter::usChnTmNcoMsbMsk);
  LOBYTE(v65) = BlueFin::GlMeSrdAsicUnitConverter::ucSubChipResolution;
  *(a1 + 13) = (v66 / v65 + (v64 >> BlueFin::GlMeSrdAsicUnitConverter::ucChnTmNcoMsbSft)) * (v62 * 0.001) / v63;
  *(a1 + 15) = BlueFin::GlMeSrdAsicUnitConverter::EswUtStructToFinalUserTimeMs((v42 + 36), v59, *(a1 + 6)) * 0.001;
  *(a1 + 15) = *(a1 + 15) - (*(*a1[2] + 56))(a1[2], a1[4]);
  *(a1 + 15) = *(a1 + 15) - BlueFin::GlSignalId::GetInterSignalBiasInMs(a1[4], a1[6]) * 0.001 - v49;
  v69 = a1[4];
  if (*(v69 + 4) >= 0x23Fu)
  {
    goto LABEL_353;
  }

  v70 = *(v69 + 1);
  v71 = BlueFin::GlSvId::s_aucSvId2gnss[*v69];
  v72 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v70 - v70 + v71];
  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v70 - v70 + v71])
  {
    goto LABEL_354;
  }

  v73 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v70 + v71];
  if (!v73)
  {
    goto LABEL_355;
  }

  v74 = *(v42 + 48);
  LOWORD(v67) = *(v42 + 58);
  LODWORD(v68) = BlueFin::GlMeSrdAsicUnitConverter::ulChnTmNcoLsbScale;
  *&v75 = v67 / v68;
  v76 = *&v75 + (v74 & BlueFin::GlMeSrdAsicUnitConverter::usChnTmNcoMsbMsk);
  LOBYTE(v75) = BlueFin::GlMeSrdAsicUnitConverter::ucSubChipResolution;
  *(a1 + 16) = (v76 / v75 + (v74 >> BlueFin::GlMeSrdAsicUnitConverter::ucChnTmNcoMsbSft)) * (v72 * 0.001) / v73;
  EpochCntInMs = BlueFin::GlMeSrdSatRptTrkMsmtMI::GetEpochCntInMs(a1);
  v79 = 0;
  v80 = 0;
  *(a1 + 19) = EpochCntInMs;
  *(a1 + 80) = 0;
  v81 = v42 + 25;
  do
  {
    if (*(v81 + v80) != 255)
    {
      *(a1 + 80) = ++v79;
    }

    ++v80;
  }

  while (v80 != 5);
  v83 = *(v42 + 72);
  v82 = v42 + 72;
  *(a1 + 81) = (*(v82 - 42) & 0x10) != 0;
  v85 = BlueFin::GlMeSrdAsicUnitConverter::EswCarrierNcoIncToCarrFreqInHz(v83, a1[4], v78);
  if (*(v82 - 52) == 1)
  {
    v86 = 0;
    LOBYTE(v87) = 4;
    do
    {
      if (*(v81 + v86) != 0xFF)
      {
        LOBYTE(v87) = v86;
      }

      ++v86;
    }

    while (v86 != 5);
    v87 = v87;
  }

  else
  {
    v87 = 4;
  }

  v88 = BlueFin::GlMeSrdAsicUnitConverter::EswCarrierNcoIncToCarrFreqInHz(*(v82 + 4 * v87), a1[4], v84);
  *(a1 + 11) = BlueFin::GlMeSrdAsicUnitConverter::HzToPpu(a1[4], v85, v89);
  *(a1 + 14) = BlueFin::GlMeSrdAsicUnitConverter::HzToPpu(a1[4], v88, v90);
  v91 = BlueFin::GlMeSrdSatRptTrkMsmtMI::BuildCNoMsmt(a1, *(a4 + 24));
  v92 = *a1;
  v93 = (*(*a1[2] + 168))(a1[2], *(a1 + 41), v91);
  v94 = *a1;
  if (*(v93 + 157) == 1 && (*(v94 + 104) & 8) != 0)
  {
    v95 = *(v93 + 158);
    if (v95 <= 7)
    {
      v96 = v95 + 1;
      v97 = (v92 + 4 * v95 + 392);
      do
      {
        *(v97 - 8) = 0;
        *v97++ = 0;
        v98 = v96++;
      }

      while (v98 != 8);
    }
  }

  BlueFin::GlMeSrdSatRptTrkMsmtMI::BuildCvecMsmt(a1, v94 + 360, v94 + 848, 0, (a1 + 19), *(a1 + 80), *(v41 + 16));
  if ((*(*a1 + 9) & 2) != 0)
  {
    BlueFin::GlMeSrdAsicCorrVecTrkMsmt::CopyFrom((a1 + 43), (a1 + 19));
    *(a1 + 88) = 1;
  }

  else
  {
    BlueFin::GlMeSrdSatRptTrkMsmtMI::BuildCvecMsmt(a1, *a1 + 392, *a1 + 848, 1, (a1 + 43), *(a1 + 80), *(v41 + 20));
  }

  v99 = *a1;
  v101 = (*(*a1[2] + 136))(a1[2]);
  v102 = *a1;
  *(a1 + 539) = *(v99 + 428);
  v103 = 1832;
  v104 = 1824;
  do
  {
    v105 = (*(v102 + v104 - 1799) != 255) & *(v99 + 424);
    *(a1 + v104) = v105;
    if (v105 == 1)
    {
      *(a1 + v103) = BlueFin::GlMeSrdAsicUnitConverter::EswCarrierNcoIncToCarrFreqInHz(*(v102 + v103 - 1760), a1[4], v100);
    }

    v103 += 4;
    ++v104;
  }

  while (v103 != 1852);
  if (*(v99 + 424))
  {
    v106 = a1[4];
    if (*(v106 + 4) >= 0x23Fu)
    {
      goto LABEL_353;
    }

    v107 = *(v106 + 1);
    v108 = BlueFin::GlSvId::s_aucSvId2gnss[*v106];
    v109 = &BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v107 - v107];
    v110 = v109[v108];
    if (!v109[v108])
    {
      goto LABEL_354;
    }

    v111 = 0;
    v112 = a1 + 463;
    v113 = (v99 + 432);
    v114 = (*(a1 + 435) / (v110 * 0.001) * *v101);
    *(a1 + 538) = v114;
    do
    {
      v115 = *v113++;
      *v112++ = v115 - v114;
      v142 = v111++ >= 0x4A;
    }

    while (!v142);
  }

  BlueFin::GlMeSrdSatRptTrkMsmtMI::BuildCarrMsmt(a1);
  v116 = *a1;
  if ((*(*a1 + 8) & 0x20) == 0)
  {
    *(a1 + 732) = 0;
    goto LABEL_217;
  }

  v117 = *(a1[1] + 28);
  v118 = *a1;
  if (*(v116 + 736) >= 0x1Au)
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1164, "BuildBitPhsMsmt", "rTrkMsmt.hvec.size <= GlMeSrdAsicBitPhsTrkMsmt::MAX_HIST_VEC_LEN");
    CrashData();
    v118 = *a1;
  }

  if (*(v118 + 105) == 8)
  {
    LODWORD(v119) = 0;
    v120 = -1;
    v121 = 1.0;
  }

  else
  {
    if (BlueFin::GlMeSrdSatRptTrkMsmtMI::IsBeidouPrebitWithHssSec(a1))
    {
      v121 = 1.0;
    }

    else
    {
      v121 = 47.448;
    }

    if (*(*a1 + 105) == 8 || (BlueFin::GlMeSrdSatRptTrkMsmtMI::IsBeidouPrebitWithHssSec(a1) & 1) != 0)
    {
      LODWORD(v119) = 0;
    }

    else
    {
      if ((*(*a1[6] + 344))(a1[6]) >= 0x21)
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1183, "BuildBitPhsMsmt", "m_rAsicConfigIfc.GetTrkBitHistObsBitWth() <= 32");
        CrashData();
      }

      if ((*(*a1[6] + 344))(a1[6]) == 32)
      {
        LODWORD(v119) = 0;
      }

      else
      {
        v119 = 1 << (*(*a1[6] + 344))(a1[6]);
      }

      if ((*(*a1[6] + 344))(a1[6]) != 32)
      {
        v120 = ~(-1 << (*(*a1[6] + 344))(a1[6]));
        goto LABEL_150;
      }
    }

    v120 = -1;
  }

LABEL_150:
  if (*(*a1 + 105) == 8 || (BlueFin::GlMeSrdSatRptTrkMsmtMI::IsBeidouPrebitWithHssSec(a1) & 1) != 0)
  {
    LODWORD(v122) = 0;
    LODWORD(v123) = 0;
LABEL_153:
    v124 = -1;
    goto LABEL_154;
  }

  if ((*(*a1[6] + 336))(a1[6]) >= 0x21)
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1206, "BuildBitPhsMsmt", "m_rAsicConfigIfc.GetTrkBitHistBitWth() <= 32");
    CrashData();
  }

  if ((*(*a1[6] + 336))(a1[6]) == 32)
  {
    LODWORD(v123) = 0;
  }

  else
  {
    v123 = 1 << (*(*a1[6] + 336))(a1[6]);
  }

  v122 = 1 << ((*(*a1[6] + 336))(a1[6]) >> 1);
  if ((*(*a1[6] + 336))() == 32)
  {
    goto LABEL_153;
  }

  v124 = ~(-1 << (*(*a1[6] + 336))(a1[6]));
LABEL_154:
  v125 = *a1;
  if (*(*a1 + 105) == 8)
  {
LABEL_157:
    v127 = *(v125 + 96);
    goto LABEL_165;
  }

  v126 = *(v116 + 738);
  if (BlueFin::GlMeSrdSatRptTrkMsmtMI::IsBeidouPrebitWithHssSec(a1))
  {
    v125 = *a1;
    goto LABEL_157;
  }

  v127 = v126 & 0x7FFF;
LABEL_165:
  v128 = a1[1];
  v129 = *(v128 + 28);
  if ((v129 & v120) <= v127)
  {
    v130 = 0;
  }

  else
  {
    v130 = v119;
  }

  v131 = (v129 & ~v120) + v127 + v130;
  if (*(v116 + 738) < 0)
  {
    v132 = v131;
  }

  else
  {
    v132 = v127;
  }

  if (v129)
  {
    v133 = 0;
  }

  else
  {
    if (*(*a1 + 105) == 8)
    {
      v133 = 0;
      v129 = 0;
      goto LABEL_178;
    }

    v133 = BlueFin::GlMeSrdSatRptTrkMsmtMI::IsBeidouPrebitWithHssSec(a1) ^ 1;
    v128 = a1[1];
    v129 = *(v128 + 28);
  }

  if (v132 > 0x31 || !v129)
  {
LABEL_178:
    if (v132 > v129)
    {
      goto LABEL_180;
    }
  }

  v133 = 1;
LABEL_180:
  v134 = *(v116 + 736);
  if (v134)
  {
    v135 = (v128 + 32);
    v136 = (v116 + 740);
    v137 = *(v116 + 736);
    while (1)
    {
      v138 = *v135++;
      v139 = v138 & v124;
      v140 = *v136++;
      v142 = v139 >= v140;
      v141 = v139 - v140;
      v142 = v141 == 0 || !v142 || v141 >= v122;
      if (!v142)
      {
        break;
      }

      if (!--v137)
      {
        goto LABEL_188;
      }
    }

    v133 = 1;
  }

LABEL_188:
  if ((v117 == 0) | v133 & 1)
  {
    v129 = 0;
  }

  v143 = v132 - v129;
  v144 = *(*a1 + 105) != 8 || v143 % 0x19 == 0;
  *(a1 + 732) = 1;
  *(a1 + 740) = v134;
  v145 = !v144;
  *(a1 + 184) = v132;
  *(a1 + 844) = 1;
  v146 = v145 | v133;
  *(a1 + 845) = (v145 | v133) & 1;
  *(a1 + 852) = v134;
  *(a1 + 212) = v143;
  *(a1 + 872) = v132;
  *(a1 + 728) = BlueFin::GlMeSrdSatRptTrkMsmtMI::IsBeidouPrebitWithHssSec(a1);
  *(a1 + 729) = *(*a1 + 105) == 8;
  v147 = *(a1 + 852);
  if (*(a1 + 852))
  {
    v148 = 0;
    v149 = v116 + 740;
    do
    {
      if ((v117 == 0) | v146 & 1)
      {
        v150 = *(v149 + 4 * v148);
        v151 = v150;
        v152 = v150;
      }

      else
      {
        v153 = *(a1[1] + 4 * v148 + 32);
        v154 = *(v149 + 4 * v148);
        if ((v153 & v124) <= v154)
        {
          v155 = 0;
        }

        else
        {
          v155 = v123;
        }

        v150 = v154 + (v153 & ~v124) + v155;
        if ((*(a1 + 729) & 1) != 0 || *(a1 + 728) == 1)
        {
          v151 = v150;
          v152 = v153 + v150;
        }

        else
        {
          v151 = v150;
          v152 = v150 - v153;
        }

        if (v152 < 0.0)
        {
          v152 = 0.0;
        }
      }

      *(a1 + v148 + 214) = v121 * v152;
      *(a1 + v148 + 186) = v121 * v151;
      *(a1 + v148 + 873) = v150;
      if (*(*a1 + 105) == 8)
      {
        if (v146)
        {
          goto LABEL_213;
        }
      }

      else
      {
        IsBeidouPrebitWithHssSec = BlueFin::GlMeSrdSatRptTrkMsmtMI::IsBeidouPrebitWithHssSec(a1);
        v147 = *(a1 + 852);
        if (IsBeidouPrebitWithHssSec & v146)
        {
LABEL_213:
          if (v147)
          {
            v157 = v147;
            v158 = a1 + 93;
            do
            {
              *(v158 + 28) = 0;
              *v158 = 0;
              v158 = (v158 + 4);
              --v157;
            }

            while (v157);
          }
        }
      }

      ++v148;
    }

    while (v148 < v147);
  }

LABEL_217:
  if ((*v256 & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1576, "BuildCodePrmMsmt", "m_stAcqWindowMsmtInfo.m_bValid");
    CrashData();
  }

  if (*(a1 + 152) != 1 || (a1[43] & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1577, "BuildCodePrmMsmt", "m_stNomCvecMsmt.m_bValid && m_stExtCvecMsmt.m_bValid");
    CrashData();
  }

  v159 = (*(*a1[2] + 136))(a1[2]);
  v160 = (*(*a1[2] + 168))(a1[2], *(a1 + 41));
  v161 = (*(*a1[2] + 184))(a1[2], *(a1 + 41));
  v162 = *a1;
  v163 = (*(*a1[2] + 72))(a1[2], *(a1 + 41));
  v164 = (*(*a1[2] + 80))(a1[2], *(a1 + 41));
  if (v163)
  {
    v167 = 0;
  }

  else
  {
    v167 = v164 == 3;
  }

  if (v167)
  {
    v168 = *(v162 + 376);
    *(v162 + 392) = *(v162 + 360);
    *(v162 + 408) = v168;
  }

  v169 = *v160;
  v170 = *(v161 + 20);
  v171 = *(v161 + 92);
  v172 = *(v160 + 156);
  *(a1 + 1000) = 1;
  *(a1 + 1008) = *(v162 + 61);
  *(a1 + 1024) = 1;
  v173 = *(v162 + 48);
  LOWORD(v165) = *(v162 + 58);
  LODWORD(v166) = BlueFin::GlMeSrdAsicUnitConverter::ulChnTmNcoLsbScale;
  *&v174 = v165 / v166;
  v175 = *&v174 + (v173 & BlueFin::GlMeSrdAsicUnitConverter::usChnTmNcoMsbMsk);
  LOBYTE(v174) = BlueFin::GlMeSrdAsicUnitConverter::ucSubChipResolution;
  v176 = v175 / v174 + (v173 >> BlueFin::GlMeSrdAsicUnitConverter::ucChnTmNcoMsbSft);
  *(a1 + 127) = v176;
  *(a1 + 251) = *(a1 + 19);
  LOWORD(v176) = *(v162 + 324);
  v177 = (v169 * LODWORD(v176)) / v170;
  v178 = (v171 * v172) * 0.5;
  v179 = v178;
  if (v178 > 0.0)
  {
    v180 = 0.5;
LABEL_232:
    v181 = (v179 + v180);
    goto LABEL_233;
  }

  if (v178 < 0.0)
  {
    v180 = -0.5;
    goto LABEL_232;
  }

  LOBYTE(v181) = 0;
LABEL_233:
  v182 = 0.5;
  v183 = v171 * 0.5;
  *(a1 + 261) = v183;
  *(a1 + 1048) = v181;
  *(a1 + 1049) = v172;
  *(a1 + 260) = v177;
  v184 = *(v160 + 153);
  v185 = *(v160 + 154);
  v186 = *(v160 + 155);
  if (!*(a1[4] + 4) && (*(*a1[6] + 256))(a1[6]) && (*(*a1[6] + 824))(a1[6]) <= 0x82 && *(v160 + 148) == 7)
  {
    LOBYTE(v183) = *(v159 + 26);
    LOWORD(v182) = *(v159 + 24);
    v185 = 1;
    v186 = 2;
    v184 = 4;
    v187 = LODWORD(v183) / v182;
  }

  else
  {
    LOBYTE(v183) = *(v159 + 26);
    LOWORD(v182) = *(v159 + 24);
    v187 = LODWORD(v183) / v182;
    if (v184 >= 8)
    {
      DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1645, "BuildCodePrmMsmt", "ucCvecPromptIdx < _DIM(m_stExtCvecMsmt.m_stMagSqCvec.m_afCvec)");
      CrashData();
    }
  }

  v188 = v162 + 392;
  *(a1 + 259) = (v187 * *(v162 + 392 + 4 * v184)) / v177;
  v189 = *(a1[4] + 4);
  if (v189 && v189 != 3)
  {
    v191 = (*(v160 + 148) - 5) < 3;
  }

  else
  {
    if ((*(v160 + 148) - 5) <= 2)
    {
      *v254 = (v187 * *(v188 + 4 * v186)) / v177;
      v190 = v257;
      goto LABEL_251;
    }

    v191 = 0;
  }

  *v254 = (v187 * *(v188 + 4 * (v184 + v181))) / v177;
  v190 = v257;
  if (!v191)
  {
    if (v184 < v181)
    {
      DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1670, "BuildCodePrmMsmt", "ucCvecPromptIdx >= ucEarlyOrLateCvDlyOffWrtPrompt");
      CrashData();
    }

    if (v184 - v181 >= 8)
    {
      DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1671, "BuildCodePrmMsmt", "ucCvecPromptIdx-ucEarlyOrLateCvDlyOffWrtPrompt < _DIM(m_stExtCvecMsmt.m_stMagSqCvec.m_afCvec)");
      CrashData();
    }
  }

LABEL_251:
  v192 = *(a1[4] + 4);
  if (v192 != 3 && v192 || (*(v160 + 148) - 5) > 2)
  {
    v193 = (v184 - v181);
  }

  else
  {
    v193 = v185;
  }

  *(a1 + 258) = (v187 * *(v188 + 4 * v193)) / v177;
  *(a1 + 1136) = BlueFin::GlMeSrdSatRptTrkMsmtMI::AidApplied(a1);
  BlueFin::GlMeSrdAcqWindowMsmtInfo::CopyFrom((a1 + 132), v256);
  BlueFin::GlMeSrdSatRptTrkMsmtMI::BuildNavBitMsmt(a1);
  *(a1 + 245) = 0;
  a1[120] = 0;
  *(a1 + 242) = 0;
  *v190 = vdup_n_s32(0xFF7FFFFD);
  *(v190 + 12) = v255;
  v194 = *a1;
  if (*(*a1 + 105) != 12 || (*(v194 + 24) & 0xF) != 1)
  {
    goto LABEL_307;
  }

  *(a1 + 480) = 257;
  v195.i32[0] = *(*(*a1[2] + 168))(a1[2], *(a1 + 41));
  v194 = *a1;
  LOWORD(v196) = *(*a1 + 324);
  v197 = v196;
  v198 = *v195.i32 * v196;
  if (*(a1 + 152) == 1)
  {
    v199 = a1[4];
    v200 = a1 + 144;
    v201 = a1 + 1548;
    if (*(v199 + 4) < 0x23Fu)
    {
      v202 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v199 + 1) - *(v199 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*v199]];
      if (v202)
      {
        v203 = *(a1 + 82);
        v204 = v197 / (v203 / *v195.i32);
        v205 = v203 / (v202 * 0.001);
        v206 = *(a1 + 435) * v205;
        *(a1 + 243) = (((v198 / v204) * *(a1 + *(a1 + 301) + 43)) - v206) / (v205 * v205);
        goto LABEL_263;
      }

LABEL_354:
      v252 = "ucMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
      v253 = 686;
      goto LABEL_356;
    }

LABEL_353:
    v252 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v253 = 679;
    goto LABEL_356;
  }

  *(a1 + 961) = 0;
  v200 = a1 + 144;
  v201 = a1 + 1548;
LABEL_263:
  if (*(a1 + 344) != 1)
  {
    v214 = 0;
    goto LABEL_269;
  }

  v207 = a1[4];
  if (*(v207 + 4) >= 0x23Fu)
  {
    goto LABEL_353;
  }

  v208 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v207 + 1) - *(v207 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*v207]];
  if (!v208)
  {
    goto LABEL_354;
  }

  v209 = *(a1 + 130);
  v210 = v197 / (v209 / *v195.i32);
  v211 = v209 / (v208 * 0.001);
  v212 = *(a1 + 435) * v211;
  v213 = (((v198 / v210) * *(a1 + *(a1 + 493) + 91)) - v212) / (v211 * v211);
  *(a1 + 244) = v213;
  v214 = *(a1 + 961);
  if (v214)
  {
    *(a1 + 245) = *(a1 + 243) / v213;
  }

LABEL_269:
  if (*(a1 + 1144) == 1)
  {
    v215 = *(a1 + 1536);
    v216 = *(a1 + 573);
    if (v215 == 1)
    {
      if (!*(a1 + 573))
      {
        v219 = *(a1 + 1806);
        if (v219)
        {
          v216 = 0;
LABEL_297:
          v223 = v214 != 0;
          if (v215)
          {
            v224 = 1;
          }

          else
          {
            v224 = v219;
          }

          if ((v223 & v216) != 0)
          {
            v222 = v224;
          }

          else
          {
            v222 = 0;
          }

          goto LABEL_303;
        }

        v216 = 0;
LABEL_296:
        v216 = v216 != 0;
        goto LABEL_297;
      }

      v217 = *(a1 + 241);
      if (*(a1 + 908))
      {
        v218 = 0;
        do
        {
          v195 = vcnt_s8(*(v200 + v218));
          v195.i16[0] = vaddlv_u8(v195);
          v217 = v217 + v195.u32[0];
          ++v218;
        }

        while (*(a1 + 908) > v218);
      }

      *(a1 + 241) = v217 / v216;
    }

    v219 = *(a1 + 1806);
    if (v219)
    {
      if (v216)
      {
        v220 = *(a1 + 242);
        if (*(a1 + 908))
        {
          v221 = 0;
          do
          {
            v195.i32[0] = *&v201[4 * v221] ^ (*&v201[4 * v221] >> 1);
            v195 = vcnt_s8(v195);
            v195.i16[0] = vaddlv_u8(v195);
            v220 = v220 + v195.u32[0];
            ++v221;
          }

          while (*(a1 + 908) > v221);
        }

        *(a1 + 242) = v220 / v216;
        v216 = 1;
      }

      goto LABEL_297;
    }

    goto LABEL_296;
  }

  v222 = 0;
LABEL_303:
  *(a1 + 961) = v222;
  if (*(a1 + 624) == 1)
  {
    *(a1 + 962) = *(a1 + 658);
    a1[123] = a1[79];
  }

  if (*(a1 + 680) == 1)
  {
    *(a1 + 963) = *(a1 + 706);
    a1[124] = a1[86];
  }

LABEL_307:
  v225 = *(v194 + 8);
  if ((v225 & 0x200100) != 0)
  {
    *(a1 + 1820) = 1;
    *(a1 + 1821) = *(v194 + 940);
    *(a1 + 911) = *(v194 + 941);
  }

  else
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1945, "BuildAidStatus", "0");
    CrashData();
    v194 = *a1;
    v225 = *(*a1 + 8);
  }

  if ((~v225 & 0x100002) == 0 || (v225 & 0x40002) == 0x40002 || (v225 & 0x80002) == 0x80002)
  {
    v226 = (*(*a1[2] + 136))(a1[2]);
    if ((~*(*a1 + 8) & 0xC0002) == 0)
    {
      if (*(v194 + 1844) != *(v194 + 2912))
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1969, "BuildGridMsmt", "rTrkGrid.data.hw == rTrkGrid.msmt.hw");
        CrashData();
      }

      if (*(v194 + 1845) != *(v194 + 2913))
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1970, "BuildGridMsmt", "rTrkGrid.data.cfg == rTrkGrid.msmt.cfg");
        CrashData();
      }
    }

    if ((~*(*a1 + 8) & 0x140002) == 0)
    {
      v227 = *(v194 + 3146);
      if (((v227 >> 1) & 0x1F) != *(v194 + 1845))
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1975, "BuildGridMsmt", "rTrkGrid.tapcfg.tap_info.bits.cfg_id == rTrkGrid.data.cfg");
        CrashData();
        LOWORD(v227) = *(v194 + 3146);
      }

      if ((v227 & 1) != *(v194 + 1844))
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1976, "BuildGridMsmt", "rTrkGrid.tapcfg.tap_info.bits.hw_type == rTrkGrid.data.hw");
        CrashData();
      }
    }

    if ((~*(*a1 + 8) & 0x180002) == 0)
    {
      v228 = *(v194 + 3146);
      if (((v228 >> 1) & 0x1F) != *(v194 + 2913))
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1981, "BuildGridMsmt", "rTrkGrid.tapcfg.tap_info.bits.cfg_id == rTrkGrid.msmt.cfg");
        CrashData();
        LOWORD(v228) = *(v194 + 3146);
      }

      if ((v228 & 1) != *(v194 + 1844))
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1982, "BuildGridMsmt", "rTrkGrid.tapcfg.tap_info.bits.hw_type == rTrkGrid.data.hw");
        CrashData();
      }
    }

    if ((~*(*a1 + 8) & 0x100002) == 0)
    {
      *(a1 + 2163) = 1;
      *(a1 + 2160) = *(v194 + 3146) & 1;
      v229 = *(v194 + 3132);
      *(a1 + 429) = *(v194 + 3116);
      *(a1 + 431) = v229;
      v230 = (*(v194 + 3146) >> 1) & 0x1F;
      v231 = *(v226 + 64);
      if (*(v231 + 8) <= v230)
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1991, "BuildGridMsmt", "rTrkGrid.tapcfg.tap_info.bits.cfg_id < (GlIntU8)(stAllCnstlTrkParams.ptrStrTrkGridConfigLUT->nb_configs)");
        CrashData();
        v231 = *(v226 + 64);
        v230 = (*(v194 + 3146) >> 1) & 0x1F;
      }

      a1[433] = v231 + 12 * v230 + 12;
    }

    if (*(a1 + 80) >= 5u)
    {
      v232 = *a1;
      v233 = *(*a1 + 8);
      if ((~v233 & 0x40002) == 0)
      {
        v234 = *(v194 + 1853);
        if (!*(v194 + 1853))
        {
          goto LABEL_341;
        }

        v235 = 0;
        v236 = (v194 + 1856);
        v237 = *(v194 + 1853);
        do
        {
          v238 = *v236++;
          v235 |= v238;
          --v237;
        }

        while (v237);
        if (v235)
        {
          *(a1 + 2161) = 1;
          *(a1 + 2160) = *(v194 + 1844);
          *(a1 + 2164) = *(v194 + 1846);
          *(a1 + 2166) = *(v194 + 1848);
          *(a1 + 2171) = *(v194 + 1852);
          *(a1 + 2170) = v234;
          *(a1 + 2172) = (*(v194 + 1854) >> 2) & 3;
          *(a1 + 2173) = (*(v194 + 1854) >> 4) & 0x1F;
          *(a1 + 2174) = *(v194 + 1854) & 3;
          memcpy(a1 + 272, (v194 + 1856), 4 * v234);
          memcpy(a1 + 276, (v194 + 1888), 4 * *(v194 + 1850));
          v239 = *(v194 + 1845);
          v240 = *(v226 + 64);
          if (*(v240 + 8) <= v239)
          {
            DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 2021, "BuildGridMsmt", "rTrkGrid.data.cfg < (GlIntU8)(stAllCnstlTrkParams.ptrStrTrkGridConfigLUT->nb_configs)");
            CrashData();
            v240 = *(v226 + 64);
            v239 = *(v194 + 1845);
            v232 = *a1;
          }

          a1[433] = v240 + 12 * v239 + 12;
          v233 = *(v232 + 8);
        }

        else
        {
LABEL_341:
          *(a1 + 2161) = 0;
        }
      }

      if ((~v233 & 0x80002) == 0)
      {
        *(a1 + 2162) = 1;
        *(a1 + 2160) = *(v194 + 1844);
        *(a1 + 3233) = *(v194 + 2914);
        *(a1 + 3232) = *(v194 + 2918);
        *(a1 + 3235) = *(v194 + 2917);
        v241 = *(v194 + 2916);
        *(a1 + 3234) = v241;
        *(a1 + 3239) = *(v194 + 2915);
        *(a1 + 3236) = (*(v194 + 2920) >> 2) & 3;
        *(a1 + 3237) = (*(v194 + 2920) >> 4) & 0x1F;
        *(a1 + 3238) = *(v194 + 2920) & 3;
        if (v241)
        {
          v242 = 0;
          v243 = 0;
          do
          {
            v244 = v194 + v242 * 8;
            v245 = &a1[v242];
            LOWORD(a1[v242 + 405]) = *(v194 + v242 * 8 + 2924);
            v246 = *(v194 + v242 * 8 + 2928);
            if (*(a1 + 3232) == 1)
            {
              *(v245 + 811) = v246;
              v247 = *(v244 + 2932);
            }

            else
            {
              v248 = v246 / 1000.0;
              *(v245 + 811) = v248;
              v247 = *(v244 + 2932) / 1000.0;
            }

            *&a1[v242 + 406] = v247;
            memcpy(&a1[v242 + 406] + 4, (v194 + v242 * 8 + 2936), 4 * *(a1 + 3239));
            ++v243;
            v242 += 6;
          }

          while (v243 < *(v194 + 2916));
        }

        v249 = *(v194 + 2913);
        v250 = *(v226 + 64);
        if (*(v250 + 8) <= v249)
        {
          DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 2062, "BuildGridMsmt", "rTrkGrid.msmt.cfg < (GlIntU8)(stAllCnstlTrkParams.ptrStrTrkGridConfigLUT->nb_configs)");
          CrashData();
          v250 = *(v226 + 64);
          v249 = *(v194 + 2913);
        }

        a1[433] = v250 + 12 * v249 + 12;
      }
    }
  }

  return a1;
}

uint64_t BlueFin::GlStream::GetS32(BlueFin::GlStream *this)
{
  if (*(this + 6))
  {
    v16 = "m_uiBitOffset == 0";
    DeviceFaultNotify("glutl_stream.h", 160, "GetS32", "m_uiBitOffset == 0");
    v17 = 160;
    goto LABEL_10;
  }

  if (*(this + 7))
  {
    v16 = "m_uiBitsRemainingInWord == 0";
    DeviceFaultNotify("glutl_stream.h", 161, "GetS32", "m_uiBitsRemainingInWord == 0");
    v17 = 161;
    goto LABEL_10;
  }

  v1 = *this;
  v2 = v1 + 4;
  if ((v1 + 4) > *(this + 4))
  {
    v16 = "m_uiOffset + 4 <= m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.h", 163, "GetS32", "m_uiOffset + 4 <= m_uiMaxOffset");
    v17 = 163;
LABEL_10:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.h", v17, v16);
  }

  v3 = *(this + 20);
  v4 = *(this + 1);
  v5 = v1 + 1;
  *this = v1 + 1;
  v6 = *(v4 + v1);
  if (v3 == 1)
  {
    v7 = v1 + 2;
    *this = v1 + 2;
    v8 = *(v4 + v5);
    v9 = v1 + 3;
    *this = v9;
    v10 = (v6 << 24) | (v8 << 16) | (*(v4 + v7) << 8);
    *this = v2;
    return v10 | *(v4 + v9);
  }

  else
  {
    v12 = v1 + 2;
    *this = v1 + 2;
    v13 = *(v4 + v5);
    v14 = v1 + 3;
    *this = v14;
    v15 = *(v4 + v12) << 16;
    *this = v2;
    return v15 | (v13 << 8) | (*(v4 + v14) << 24) | v6;
  }
}

uint64_t BlueFin::GlMeSrdSatRptRpcBuffer::gll_satrpt_rpc_trk_msmt(uint64_t a1, int a2, uint64_t a3, uint64_t a4, __int128 *a5, _OWORD *a6, uint64_t *a7, _DWORD *a8, _OWORD *a9, _OWORD *a10, _DWORD *a11, const void *a12, __int128 *a13, int *a14, __int128 *a15, _OWORD *a16)
{
  BlueFin::GlMeSrdSatRptRpcBuffer::CheckInstanceId(a1, a2);
  v21 = *(a1 + 8);
  if ((v21 & 0x10) != 0)
  {
    v55 = "m_otFlags.Missing(FLGS_RECEIVED_TRACK)";
    DeviceFaultNotify("glmesrd_sat_report_rpc_buffer.cpp", 329, "gll_satrpt_rpc_trk_msmt", "m_otFlags.Missing(FLGS_RECEIVED_TRACK)");
    v56 = 329;
    goto LABEL_24;
  }

  if (a4)
  {
    v22 = 2097168;
  }

  else
  {
    v22 = 16;
  }

  v23 = v21 | v22;
  *(a1 + 8) = v23;
  *(a1 + 104) = a4;
  *(a1 + 105) = a3;
  v24 = *a5;
  *(a1 + 124) = a5[1];
  *(a1 + 108) = v24;
  v25 = a5[2];
  v26 = a5[3];
  v27 = a5[4];
  *(a1 + 188) = a5[5];
  *(a1 + 172) = v27;
  *(a1 + 156) = v26;
  *(a1 + 140) = v25;
  v28 = a5[6];
  v29 = a5[7];
  v30 = a5[8];
  *(a1 + 252) = a5[9];
  *(a1 + 236) = v30;
  *(a1 + 220) = v29;
  *(a1 + 204) = v28;
  v31 = a5[10];
  v32 = a5[11];
  v33 = a5[12];
  *(a1 + 312) = *(a5 + 204);
  *(a1 + 284) = v32;
  *(a1 + 300) = v33;
  *(a1 + 268) = v31;
  v34 = a6;
  *(a1 + 328) = *a6;
  v35 = *a7;
  *(a1 + 352) = *(a7 + 2);
  *(a1 + 344) = v35;
  v36 = a9[1];
  *(a1 + 360) = *a9;
  *(a1 + 376) = v36;
  v37 = a10[1];
  *(a1 + 392) = *a10;
  *(a1 + 408) = v37;
  *(a1 + 732) = *a11;
  LODWORD(v35) = *a14;
  *(a1 + 844) = *(a14 + 2);
  *(a1 + 840) = v35;
  if (a13)
  {
    v23 |= 0x20u;
    *(a1 + 8) = v23;
    v38 = *a13;
    v39 = a13[2];
    *(a1 + 752) = a13[1];
    *(a1 + 768) = v39;
    *(a1 + 736) = v38;
    v40 = a13[3];
    v41 = a13[4];
    v42 = a13[5];
    *(a1 + 832) = *(a13 + 12);
    *(a1 + 800) = v41;
    *(a1 + 816) = v42;
    *(a1 + 784) = v40;
    v44 = a16;
    v43 = a8;
    v45 = a15;
    if (a3 != 12)
    {
      goto LABEL_9;
    }

    if (*(a1 + 736) == 2)
    {
      v46 = *(a1 + 740);
      *(a1 + 748) = v46.i32[0];
      *(a1 + 740) = vrev64_s32(v46);
LABEL_9:
      if (!a15)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v55 = "m_otRawdata.u.sTrk.sTrkMsmt.hvec.size == 2 && sizeof(m_otRawdata.u.sTrk.sTrkMsmt.hvec.vec) > 3";
    DeviceFaultNotify("glmesrd_sat_report_rpc_buffer.cpp", 357, "gll_satrpt_rpc_trk_msmt", "m_otRawdata.u.sTrk.sTrkMsmt.hvec.size == 2 && sizeof(m_otRawdata.u.sTrk.sTrkMsmt.hvec.vec) > 3");
    v56 = 357;
LABEL_24:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_rpc_buffer.cpp", v56, v55);
  }

  v44 = a16;
  v43 = a8;
  v45 = a15;
  if (a15)
  {
LABEL_10:
    v23 |= 0x80u;
    *(a1 + 8) = v23;
    v47 = *v45;
    v48 = v45[1];
    v49 = v45[3];
    *(a1 + 880) = v45[2];
    *(a1 + 896) = v49;
    *(a1 + 848) = v47;
    *(a1 + 864) = v48;
  }

LABEL_11:
  if (v44)
  {
    v23 |= 0x100u;
    *(a1 + 8) = v23;
    v50 = v44[1];
    *(a1 + 912) = *v44;
    *(a1 + 928) = v50;
  }

  if (v43)
  {
    v23 |= 0x200u;
    *(a1 + 8) = v23;
    *(a1 + 356) = *v43;
  }

  v51 = *a14;
  *(a1 + 844) = *(a14 + 2);
  *(a1 + 840) = v51;
  if (a12)
  {
    *(a1 + 8) = v23 | 0x40;
    memcpy((a1 + 424), a12, 0x134uLL);
    v43 = a8;
    v34 = a6;
  }

  v52 = *(a1 + 3152);
  v53 = *(*v52 + 56);

  return v53(v52, a2, a3, a4, a5, v34, a7, v43);
}

uint64_t BlueFin::MinnowGllRpcParserImp::Handle_SatRpt_AcquisitionWindow(BlueFin::MinnowGllRpcParserImp *this, BlueFin::GlStream *a2)
{
  U08 = BlueFin::GlStream::GetU08(a2);
  v5 = BlueFin::GlStream::GetU08(a2);
  v6 = &BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion;
  v7 = v6[v5];
  v46[0] = v6[v5];
  Bits = BlueFin::GlStream::GetBits(a2, 1u);
  v47 = Bits;
  if (Bits)
  {
    if (Bits != 1)
    {
      v27 = "0";
      DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 2113, "Handle_SatRpt_AcquisitionWindow", "0");
      v28 = 2113;
LABEL_37:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_decoder_minnow.cpp", v28, v27);
    }

    v9 = BlueFin::GlStream::GetBits(a2, 4u) & 0xF;
    v48 = v9 & 0xCF | (16 * (BlueFin::GlStream::GetBits(a2, 3u) & 3));
    v10 = BlueFin::GlStream::GetBits(a2, 4u) & 0xF;
    v49[5] = v10 & 0xEF | (16 * (BlueFin::GlStream::GetBits(a2, 1u) & 1));
    BlueFin::GlStream::GetBits(a2, 3u);
    if (v9 == 5)
    {
      LOBYTE(v29) = 0;
      HIDWORD(v29) = BlueFin::GlStream::GetU32(a2);
      v30 = 0;
      LODWORD(v31) = 0;
      *v49 = -1;
      v11 = &v29;
      v49[4] = -1;
    }

    else
    {
      for (i = 0; i != 5; ++i)
      {
        v49[i] = BlueFin::GlStream::GetU08(a2);
      }

      v11 = 0;
    }

    U16 = BlueFin::GlStream::GetU16(a2);
    v43 = BlueFin::GlStream::GetU16(a2);
    v12 = 1;
    v13 = (2 * v43) | 1;
    v44 = BlueFin::GlStream::GetU16(a2);
    v45 = BlueFin::GlStream::GetU16(a2);
    v14 = (2 * v45) | 1;
  }

  else
  {
    *&v49[3] = BlueFin::GlStream::GetBits(a2, 7u);
    v48 = BlueFin::GlStream::GetU08(a2);
    v51 = BlueFin::GlStream::GetBits(a2, 4u) & 0xF;
    BlueFin::GlStream::GetBits(a2, 4u);
    U16 = BlueFin::GlStream::GetU16(a2);
    v43 = 0;
    v45 = 0;
    v9 = v48 & 0xF;
    v11 = 0;
    v12 = 0;
    v50 = BlueFin::GlStream::GetU16(a2);
    v13 = 1;
    v14 = 1;
  }

  if ((v7 - 76) <= 0x3E && (v49[5] & 0xF) == 1)
  {
    v43 = v13;
    v45 = v14;
  }

  v41 = BlueFin::GlStream::GetU08(a2);
  if ((v12 & 1) == 0)
  {
    U24 = BlueFin::GlStream::GetU24(a2);
    v37 = 0;
    U32 = U24;
    v39 = 0;
    v40 = 0;
    v34 = 0;
LABEL_24:
    v22 = BlueFin::GlStream::GetU24(a2);
    if (v22 >= 0x800000)
    {
      v23 = -16777216;
    }

    else
    {
      v23 = 0;
    }

    v36 = v23 | v22;
    v35 = vdupq_n_s32(v23 | v22);
    goto LABEL_28;
  }

  U32 = BlueFin::GlStream::GetU32(a2);
  HIWORD(v39) = BlueFin::GlStream::GetU16(a2);
  LODWORD(v39) = BlueFin::GlStream::GetS32(a2);
  v40 = BlueFin::GlStream::GetU08(a2);
  v37 = BlueFin::GlStream::GetU32(a2);
  WORD2(v39) = BlueFin::GlStream::GetU16(a2);
  v16 = BlueFin::GlStream::GetU24(a2);
  v17 = v16 & 0x7FFFFF;
  if (v16 >= 0x800000)
  {
    v17 = -v17;
  }

  LODWORD(v34) = v17;
  HIDWORD(v34) = BlueFin::GlStream::GetU32(a2);
  if (v9 == 5)
  {
    goto LABEL_24;
  }

  for (j = 8; j != 28; j += 4)
  {
    v19 = BlueFin::GlStream::GetU24(a2);
    if (v19 >= 0x800000)
    {
      v20 = -16777216;
    }

    else
    {
      v20 = 0;
    }

    *(&v34 + j) = v20 | v19;
  }

LABEL_28:
  if (v9 == 5)
  {
    v24 = 0;
  }

  else
  {
    v24 = v12;
  }

  if (v24 == 1)
  {
    v32 = BlueFin::GlStream::GetU32(a2);
    v33 = 0;
    BlueFin::GlStream::GetU32(a2);
    HIDWORD(v31) = -1;
    v25 = &v31 + 4;
  }

  else
  {
    v25 = 0;
  }

  if (BlueFin::GlStream::GetAvailableSize(a2))
  {
    v27 = "otStream.GetAvailableSize() == 0";
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 2184, "Handle_SatRpt_AcquisitionWindow", "otStream.GetAvailableSize() == 0");
    v28 = 2184;
    goto LABEL_37;
  }

  return (*(**(*(this + 1) + 17072) + 48))(*(*(this + 1) + 17072), U08, v46, &U16, &v37, &v34, v25, v11, v29, v30, v31);
}

uint64_t BlueFin::GlStream::GetU24(BlueFin::GlStream *this)
{
  if (*(this + 6))
  {
    v11 = "m_uiBitOffset == 0";
    DeviceFaultNotify("glutl_stream.h", 110, "GetU24", "m_uiBitOffset == 0");
    v12 = 110;
    goto LABEL_10;
  }

  if (*(this + 7))
  {
    v11 = "m_uiBitsRemainingInWord == 0";
    DeviceFaultNotify("glutl_stream.h", 111, "GetU24", "m_uiBitsRemainingInWord == 0");
    v12 = 111;
    goto LABEL_10;
  }

  v1 = *this;
  v2 = v1 + 3;
  if ((v1 + 3) > *(this + 4))
  {
    v11 = "m_uiOffset + 3 <= m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.h", 113, "GetU24", "m_uiOffset + 3 <= m_uiMaxOffset");
    v12 = 113;
LABEL_10:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.h", v12, v11);
  }

  v3 = *(this + 20);
  v4 = *(this + 1);
  v5 = v1 + 1;
  *this = v1 + 1;
  v6 = *(v4 + v1);
  v7 = v1 + 2;
  *this = v7;
  if (v3 == 1)
  {
    v8 = (v6 << 16) | (*(v4 + v5) << 8);
    *this = v2;
    return v8 | *(v4 + v7);
  }

  else
  {
    v10 = *(v4 + v5);
    *this = v2;
    return (*(v4 + v7) << 16) | (v10 << 8) | v6;
  }
}

uint64_t BlueFin::GlMeSrdSatRptRpcBuffer::gll_satrpt_rpc_acquisition_window(uint64_t a1, int a2, __int128 *a3, void *a4, __int128 *a5, __int128 *a6, uint64_t *a7, __int128 *a8)
{
  BlueFin::GlMeSrdSatRptRpcBuffer::CheckInstanceId(a1, a2);
  v15 = *(a1 + 8);
  if ((v15 & 2) != 0)
  {
    DeviceFaultNotify("glmesrd_sat_report_rpc_buffer.cpp", 451, "gll_satrpt_rpc_acquisition_window", "m_otFlags.Missing(FLGS_RECEIVED_ACQ_WIN)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_rpc_buffer.cpp", 451, "m_otFlags.Missing(FLGS_RECEIVED_ACQ_WIN)");
  }

  v16 = v15 | 2;
  *(a1 + 8) = v15 | 2;
  v17 = *a3;
  *(a1 + 32) = *(a3 + 4);
  *(a1 + 16) = v17;
  *(a1 + 36) = *a4;
  v18 = *a5;
  *(a1 + 60) = *(a5 + 4);
  *(a1 + 44) = v18;
  v19 = *a6;
  *(a1 + 76) = *(a6 + 12);
  *(a1 + 64) = v19;
  if (a7)
  {
    v16 = v15 | 6;
    *(a1 + 8) = v15 | 6;
    v20 = *a7;
    *(a1 + 100) = *(a7 + 2);
    *(a1 + 92) = v20;
  }

  if (a8)
  {
    *(a1 + 8) = v16 | 0x10000;
    v21 = *a8;
    *(a1 + 120) = *(a8 + 4);
    *(a1 + 104) = v21;
  }

  v22 = *(**(a1 + 3152) + 48);

  return v22();
}

void BlueFin::GlMeSrdSatRptRpcListener::gll_satrpt_rpc_acquisition_window(uint64_t a1, unsigned int a2, unsigned __int8 *a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6)
{
  v11 = *(*(a1 + 8) + 488);
  v12 = v11 & 0x10002;
  v13 = (v11 & 0x10002) == 0x10002 || (~v11 & 0x12) == 0;
  v14 = 14;
  if (!v13)
  {
    v14 = 18;
  }

  GlSignalIndex = BlueFin::GlMeSrdAsicUnitConverter::GetGlSignalIndex(*a3, a3[v14] & 0xF);
  v35[0] = *a3;
  v36 = GlSignalIndex;
  if (v35[0] - 189 < 0xFFFFFF44 || (v16 = BlueFin::GlSvId::s_aucSvId2gnss[v35[0]], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * GlSignalIndex - GlSignalIndex + v16] == 255) || (v37 = BlueFin::GlSignalId::s_ausGnss2signalId[v16] + v35[0] - BlueFin::GlSvId::s_aucGnss2minSvId[v16] + GlSignalIndex * BlueFin::GlSvId::s_aucGnss2numSvId[v16], v37 >= 0x23Fu))
  {
    DeviceFaultNotify("glmesrd_sat_report_mgr.cpp", 419, "gll_satrpt_rpc_acquisition_window", "otSignalId.IsValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_mgr.cpp", 419, "otSignalId.IsValid()");
  }

  v18 = (~*(*(a1 + 8) + 488) & 0xA) == 0 || v12 == 65538;
  BlueFin::GlSatCarrId::GlSatCarrId(v34, a2, GlSignalIndex);
  v19 = BlueFin::GlMeSrdSatReportMgr::CheckForTrackReset(*(a1 + 8), v34, v35);
  SatRptSniffStatePtr = BlueFin::GlMeSrdSatReportMgr::GetSatRptSniffStatePtr(*(a1 + 8), v34, v35);
  v24[0] = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 575;
  v29 = 0;
  v30 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = *(a1 + 8);
  if (*(v21 + 3640))
  {
    BlueFin::GlMeSrdStats::setAcqWin(*(v21 + 3640), v35, a3, a4, a6, *(v21 + 56));
    v21 = *(a1 + 8);
  }

  SatReportPtr = BlueFin::GlMeSrdSatReportMgr::GetSatReportPtr(v21, v34, v35, v18 || v19);
  BlueFin::GlMeSrdSatReport::ProcessMsmt(SatReportPtr, *(a1 + 8) + 480, *(*(a1 + 8) + 56), *(*(a1 + 8) + 3684), v24, v35, SatRptSniffStatePtr, *(*(a1 + 8) + 3640));
  v23 = *(a1 + 8);
  if (v18 && ((~*(v23 + 488) & 0xA) != 0 || *(v23 + 585) != 2))
  {
    BlueFin::GlMeSrdSatReportMgr::DestroySatReport(v23, v34);
    v23 = *(a1 + 8);
  }

  *(v23 + 488) = 0;
  *(v23 + 492) = -1;
  bzero((v23 + 496), 0xC3CuLL);
}

BOOL BlueFin::GlBigArray::Missing(BlueFin::GlBigArray *this, int a2)
{
  v2 = a2 - *(this + 14);
  if (v2 >= *(this + 15))
  {
    DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glinc_array.h", 313, "handle - m_usMinHandle < m_usNumHandles");
  }

  return *(*(this + 1) + 2 * v2) == -1;
}

float BlueFin::GlMeSrdAsicUnitConverter::EswCarrierNcoIncToCarrFreqInHz(BlueFin::GlMeSrdAsicUnitConverter *this, unsigned __int8 *a2, const BlueFin::GlSignalId *a3)
{
  v3 = 1.0;
  if (BlueFin::GlMeSrdAsicUnitConverter::bIsMinnowAsicType == 1)
  {
    if (!BlueFin::GlMeSrdAsicUnitConverter::s_aucSignalIndexAndGnss2NcoScaleFactor[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]])
    {
      v10 = "ucNcoScaleFactor != 0";
      DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 526, "EswCarrierNcoIncToCarrFreqInHz", "ucNcoScaleFactor != 0");
      v11 = "glmesrd_asic_unit_converter.cpp";
      v12 = 526;
LABEL_13:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v11, v12, v10);
    }

    v3 = BlueFin::GlMeSrdAsicUnitConverter::s_aucSignalIndexAndGnss2NcoScaleFactor[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]];
  }

  if (*(a2 + 4) >= 0x23Fu)
  {
    v10 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v11 = "glsignalid.h";
    v12 = 807;
    goto LABEL_13;
  }

  v4 = BlueFin::GlSvId::s_aucSvId2gnss[*a2];
  v5 = *(a2 + 1);
  v6 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v5 + v4];
  v7 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v5 - v5 + v4];
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v10 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
    v11 = "glsignalid.h";
    v12 = 815;
    goto LABEL_13;
  }

  return ((this * (1000 * v6 / v7)) * 20.0) / (v3 * BlueFin::GlMeSrdAsicUnitConverter::ulFrqNco2HzScale);
}

uint64_t BlueFin::SensorsData::addgyr(uint64_t result, float *a2)
{
  if (fabsf(*a2) < 750.0 && fabsf(a2[1]) < 750.0 && fabsf(a2[2]) < 750.0)
  {
    v2 = result;
    result = BlueFin::SensorsDownsampleFilt::Update((result + 912), a2);
    if ((result & 1) == 0)
    {
      result = (*(*v2 + 224))(v2);
      v2[206] = v2[202];
      v2[432] = v2[428];
    }
  }

  return result;
}

uint64_t BlueFin::GlPePrawnKf::SetExtSensInfo(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 32) < 0)
  {
    v13 = "rotData.sNumSamples >= 0";
    DeviceFaultNotify("glpe_prawnkf.cpp", 1097, "SetExtSensInfo", "rotData.sNumSamples >= 0");
    v14 = 1097;
    goto LABEL_18;
  }

  if (*(a2 + 32) >= 0x29u)
  {
    v13 = "rotData.sNumSamples <= GL_EXT_SENS_MAX_SAMPLES";
    DeviceFaultNotify("glpe_prawnkf.cpp", 1098, "SetExtSensInfo", "rotData.sNumSamples <= GL_EXT_SENS_MAX_SAMPLES");
    v14 = 1098;
LABEL_18:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.cpp", v14, v13);
  }

  v3 = *a2;
  if (*(a2 + 32))
  {
    v4 = v3 > 5;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = result;
    v6 = result + 9136;
    result = BlueFin::GlPeShrimpSensBuffer::Write(result + 9136, a3, a2 + 40, *(a2 + 32), v3);
    if (*(v5 + 10820) == *(v5 + 10816))
    {
      if (*(v5 + 10832) == 1)
      {
        *(v5 + 5041) = 1;
      }

      v7 = *(v5 + 10824);
      if ((*(v5 + 10828) - v7 + ((*(v5 + 10828) - v7) < 0 ? 0x3C : 0)) >= 1)
      {
        v15 = vdupq_n_s64(0x3F91DF46A2529D34uLL);
        do
        {
          v8 = v6 + 28 * v7;
          v9 = *(v8 + 8);
          v10 = *(v8 + 20);
          v11 = *(v8 + 24);
          *(v5 + 10820) = 0;
          *(v8 + 24) = 0;
          *(v5 + 10824) = (v7 + 1) % 0x3C;
          *(v5 + 10832) = 0;
          v19 = vcvtq_f64_f32(*v8);
          v20 = v9;
          v21 = 0;
          v16 = vmulq_f64(vcvtq_f64_f32(*(v8 + 12)), v15);
          v17 = v10 * 0.0174532925;
          v18 = 0;
          result = BlueFin::GlPeShrimpKf::SensorUpdate(v5, v19.f64, v16.f64, v11);
          v7 = *(v5 + 10824);
        }

        while ((*(v5 + 10828) - v7 + ((*(v5 + 10828) - v7) < 0 ? 0x3C : 0)) >= 1 && (result & 1) != 0);
      }

      v12 = *v5;
      *(v5 + *(*v5 - 24) + 256) |= 8u;
      *(v5 + *(v12 - 24) + 256) |= 4u;
    }
  }

  return result;
}

void BlueFin::GlMeSrdSatRptTrkMsmtMI::BuildCarrMsmt(BlueFin::GlMeSrdSatRptTrkMsmtMI *this)
{
  if ((*(this + 56) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 886, "BuildCarrMsmt", "m_stAcqWindowMsmtInfo.m_bValid");
    CrashData();
  }

  v2 = (*(**(this + 2) + 136))(*(this + 2));
  v3 = (*(**(this + 2) + 168))(*(this + 2), *(this + 41));
  v4 = (*(**(this + 2) + 184))(*(this + 2), *(this + 41));
  v5 = (*(**(this + 6) + 16))(*(this + 6));
  v6 = *(v4 + 52);
  v7 = *v3;
  v8 = *this;
  LOWORD(v9) = *(*this + 324);
  *&v10 = v9;
  v11 = *v3 * *&v10;
  LOBYTE(v10) = *(v2 + 26);
  v12 = v10;
  LOWORD(v10) = *(v2 + 24);
  v13 = v10;
  v14 = (*this + 72);
  *(this + 137) = BlueFin::GlMeSrdAsicUnitConverter::EswCarrierNcoIncToCarrFreqInHz(*v14, *(this + 4), v15);
  if (*(v8 + 20) == 1)
  {
    v17 = 0;
    LOBYTE(v18) = 4;
    do
    {
      if (*(v8 + 25 + v17) != 0xFF)
      {
        LOBYTE(v18) = v17;
      }

      ++v17;
    }

    while (v17 != 5);
    v18 = v18;
  }

  else
  {
    v18 = 4;
  }

  v19 = v5 & 0xF000FFFE;
  v20 = v11 / v6;
  v21 = v12 / v13;
  v22 = BlueFin::GlMeSrdAsicUnitConverter::EswCarrierNcoIncToCarrFreqInHz(v14[v18], *(this + 4), v16);
  v23 = *(v8 + 68);
  v24 = *(v8 + 64);
  *(this + 138) = v22;
  v25 = vcvtd_n_f64_s32(v23, 0x18uLL) + v24;
  *(this + 71) = *(this + 15);
  v26 = *(this + 1);
  v27 = *(v26 + 16);
  if (vabdd_f64(v27, v25) > 4194304.0)
  {
    if (v27 <= v25)
    {
      v28 = -8388608.0;
    }

    else
    {
      v28 = 8388608.0;
    }

    v25 = v25 + v28;
  }

  v29 = v19 - 805306389;
  v30 = v21 / v20;
  *(this + 70) = v25 + *(v26 + 8) * 8388608.0;
  for (i = 576; i != 581; ++i)
  {
    if (*(*this + i - 551) == 255)
    {
      v32 = -1;
    }

    else
    {
      v32 = (*(**(this + 2) + 112))(*(this + 2));
    }

    *(this + i) = v32;
  }

  *(this + 544) = 1;
  v33 = *this;
  if ((*(*this + 9) & 2) != 0)
  {
    if (!BlueFin::GlMeSrdSatRptTrkMsmtMI::IsBeidouPrebitWithHssSec(this))
    {
      *(this + 584) = 0;
      goto LABEL_44;
    }

    v33 = *this;
  }

  *(this + 584) = 1;
  if (*(v33 + 105) == 8 || BlueFin::GlMeSrdSatRptTrkMsmtMI::IsBeidouPrebitWithHssSec(this))
  {
    if (*(v8 + 736))
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      do
      {
        v38 = *(v8 + 740 + 4 * v35);
        v39 = v37 >= v38;
        if (v37 <= v38)
        {
          v37 = *(v8 + 740 + 4 * v35);
        }

        if (!v39)
        {
          v36 = v34;
        }

        v34 = ++v35;
      }

      while (v35 < *(v8 + 736));
      v40 = v8 + 4 * v36;
      v41 = *(v40 + 224);
      v42 = *(v40 + 124);
    }

    else
    {
      v42 = *(v8 + 112);
      v41 = *(v8 + 116);
      if (BlueFin::GlMeSrdSatRptTrkMsmtMI::IsBeidouPrebitWithHssSec(this))
      {
        *(this + 584) = 0;
      }
    }
  }

  else
  {
    v42 = *(v8 + 112);
    v41 = *(v8 + 116);
  }

  v43 = v3[12];
  v44 = v43 <= v7 || v29 >= 0xFFFFFFFB;
  v45 = *(v8 + 324);
  *(this + 298) = v45;
  *(this + 147) = v42;
  *(this + 148) = v41;
  if (!v44)
  {
    v43 = v7;
  }

  if (v43 > v7)
  {
    *(this + 298) = v45 / llroundf(v43 / v7);
  }

LABEL_44:
  if ((*(*this + 8) & 0x200) != 0)
  {
    *(this + 608) = 1;
    *(this + 77) = *(v8 + 356);
    *(this + 624) = 0;
    goto LABEL_53;
  }

  *(this + 608) = 0;
  *(this + 80) = vcvtd_n_f64_u32(*(v8 + 328), 0x19uLL);
  *(this + 79) = BlueFin::GlMeSrdAsicUnitConverter::EswFllOrPllPhiDotToHz(*(v8 + 332), v7);
  if ((*(*this + 9) & 0x2001) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1078, "BuildCarrMsmt", "m_rRpcBuffer.GetFlags().Has(FLG_TRACK_HAS_DEBUG) || m_rRpcBuffer.GetFlags().Has(FLGS_RECEIVED_CW)");
    CrashData();
  }

  *(this + 81) = BlueFin::GlMeSrdAsicUnitConverter::EswFllOrPllPhi2DotToHzPerSec(*(v8 + 916), v7);
  v46 = *(v8 + 336);
  *(this + 165) = v30 * v46;
  *(this + 328) = *(v8 + 734);
  *(this + 658) = (*(v8 + 340) & 1) == 0;
  *(this + 83) = *(v8 + 920);
  v47 = *(this + 4);
  if (*(v47 + 4) >= 0x23Fu)
  {
    v53 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v54 = 679;
    goto LABEL_59;
  }

  v48 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v47 + 1) - *(v47 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*v47]];
  if (!v48)
  {
    v53 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v54 = 686;
LABEL_59:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v54, v53);
  }

  *&v49 = v48;
  LOWORD(v49) = *(v2 + 24);
  v50 = sqrtf((*(v8 + 112) * *(v8 + 112)) + (*(v8 + 116) * *(v8 + 116))) + *(this + 435) / v48 * v49 * v11 * 62.5;
  if (v3[12] > v7 && *(this + 580) == 5)
  {
    v50 = v50 * 16.0;
  }

  *(this + 150) = v50 / v11;
  *(this + 168) = v46 / v11;
  *(this + 624) = 1;
  if ((*(*this + 8) & 0x200) == 0)
  {
    *(this + 87) = vcvtd_n_f64_u32(*(v8 + 344), 0x19uLL);
    *(this + 86) = BlueFin::GlMeSrdAsicUnitConverter::EswFllOrPllPhiDotToHz(*(v8 + 348), v7);
    *(this + 352) = *(v8 + 732);
    *(this + 177) = *(v8 + 352);
    v51 = 1;
    *(this + 706) = (*(v8 + 354) & 1) == 0;
    *(this + 89) = *(v8 + 932);
    v52 = *(v8 + 355);
    *(this + 720) = v52 & 1;
    *(this + 721) = (v52 & 2) != 0;
    *(this + 722) = (v52 & 4) != 0;
    goto LABEL_56;
  }

LABEL_53:
  v51 = 0;
LABEL_56:
  *(this + 680) = v51;
  *(this + 536) = 1;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetGearNumber(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 112);

  return v1();
}

uint64_t BlueFin::GlMeSrdCorrVecAccumulator::CalcAvgCvec(_BYTE *a1, unsigned int a2, unsigned int a3, _BYTE *a4, char a5, int a6)
{
  if (a2 >= 0xB)
  {
    v27 = "ucMinNumCvecsToAverage <= GlMeSrdCorrvecAccumulatorArrays::SRD_CORRVEC_MAX_VECS";
    DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 173, "CalcAvgCvec", "ucMinNumCvecsToAverage <= GlMeSrdCorrvecAccumulatorArrays::SRD_CORRVEC_MAX_VECS");
    v28 = 173;
    goto LABEL_39;
  }

  LODWORD(v6) = a1[13];
  if (!a1[13])
  {
    v27 = "m_ucCorrVecLen > 0";
    DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 174, "CalcAvgCvec", "m_ucCorrVecLen > 0");
    v28 = 174;
    goto LABEL_39;
  }

  v7 = a1[12];
  if (v7 < a2)
  {
    v27 = "ucMinNumCvecsToAverage <= m_ucNumVecs";
    DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 175, "CalcAvgCvec", "ucMinNumCvecsToAverage <= m_ucNumVecs");
    v28 = 175;
    goto LABEL_39;
  }

  v8 = a1[14];
  if (!a1[14])
  {
    v8 = a1[12];
  }

  v9 = v8 - 1;
  v10 = &a1[40 * v8 - 24];
  if (!*v10)
  {
    v27 = "potCorrVecArray[ssSampInd].m_ulTimeStamp != 0";
    DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 186, "CalcAvgCvec", "potCorrVecArray[ssSampInd].m_ulTimeStamp != 0");
    v28 = 186;
    goto LABEL_39;
  }

  v11 = v10[5];
  if (a6)
  {
    if (a1[10] == 1)
    {
      LODWORD(v6) = a1[11];
      if (!a1[11])
      {
        v27 = "m_ucIdxOfFirstVeryEarlySample > 0";
        DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 195, "CalcAvgCvec", "m_ucIdxOfFirstVeryEarlySample > 0");
        v28 = 195;
        goto LABEL_39;
      }
    }
  }

  v12 = (v10 + 8);
  v13 = (a4 + 16);
  v6 = v6;
  v14 = a4 + 16;
  v15 = v6;
  do
  {
    v16 = *v12++;
    *v14++ = v16;
    --v15;
  }

  while (v15);
  v17 = v10[4];
  if (v7 < 2)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v18 = v11 + 8;
    v19 = 1;
    while (a2 > v19 || a3 > v17)
    {
      v9 = (v7 & ((v9 - 1) >> 15)) + v9 - 1;
      v20 = &a1[40 * v9 + 16];
      if (!*v20 || (a5 & 1) == 0 && v20[5] > v18)
      {
        break;
      }

      v21 = (v20 + 8);
      v22 = (a4 + 16);
      v23 = v6;
      do
      {
        v24 = *v21++;
        *v22 = v24 + *v22;
        ++v22;
        --v23;
      }

      while (v23);
      ++v19;
      v17 += v20[4];
      if (v7 <= v19)
      {
        goto LABEL_25;
      }
    }

    LOBYTE(v7) = v19;
  }

LABEL_25:
  *a4 = v6;
  if (a6 && (a1[10] & 1) != 0)
  {
    v25 = 0;
    a4[1] = 0;
  }

  else
  {
    a4[1] = a1[10];
    v25 = a1[11];
  }

  a4[2] = v25;
  result = v7;
  if (v7 != 1)
  {
    if (v7)
    {
      do
      {
        *v13 = *v13 / v7;
        ++v13;
        --v6;
      }

      while (v6);
      goto LABEL_32;
    }

    v27 = "ucNumCvecsAveraged > 0";
    DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 259, "CalcAvgCvec", "ucNumCvecsAveraged > 0");
    v28 = 259;
LABEL_39:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_corrvec_accumulator.cpp", v28, v27);
  }

LABEL_32:
  a4[12] = v7;
  a4[13] = v17;
  return result;
}

uint64_t BlueFin::GlMeSrdEstPkFit::Run(int a1, int a2, _BYTE *a3, BlueFin::GlMeTrkCvecTapConfig *a4, int a5, unsigned int a6, unsigned int a7, char a8, float a9, char a10, char a11, unsigned __int8 a12, signed __int8 *a13, uint64_t a14, uint64_t a15, char a16, char a17, BlueFin::GlMeTrkCvecTapConfig *a18, BlueFin::GlMeSrdEstPkFit *a19, BlueFin::GlMeSrdEstPkFit *a20)
{
  v73 = *MEMORY[0x29EDCA608];
  if ((*a15 & 1) == 0)
  {
    v62 = "stCNoResults.bValid";
    DeviceFaultNotify("glmesrd_pkfit.cpp", 362, "Run", "stCNoResults.bValid");
    v63 = "glmesrd_pkfit.cpp";
    v64 = 362;
    goto LABEL_60;
  }

  if (*a13 - 1 >= 0xBC)
  {
    v62 = "otSignalId.GetSvId().isValid()";
    DeviceFaultNotify("glmesrd_pkfit.cpp", 363, "Run", "otSignalId.GetSvId().isValid()");
    v63 = "glmesrd_pkfit.cpp";
    v64 = 363;
    goto LABEL_60;
  }

  result = BlueFin::GlMeSrdCorrVecAccumulator::CalcAvgCvec(a3, a6, a7, a20, a8, 0);
  if (a11)
  {
    if (*(a20 + 13) < a7 && *(a15 + 8) < 32.0)
    {
      *a18 = 0;
      return result;
    }
  }

  if (*a20 >= 9u)
  {
    v62 = "stAvgdMagSqCvec.m_ucCvecLen <= MAX_CVEC_LEN";
    DeviceFaultNotify("glmesrd_pkfit.cpp", 381, "Run", "stAvgdMagSqCvec.m_ucCvecLen <= MAX_CVEC_LEN");
    v63 = "glmesrd_pkfit.cpp";
    v64 = 381;
    goto LABEL_60;
  }

  if (a19 != a20)
  {
    BlueFin::GlMeSrdSatReportTrkCorrVec::CopyFrom(a19, a20);
  }

  v26 = *a19;
  if (*a19)
  {
    v27 = (a19 + 16);
    v28 = *a19;
    do
    {
      v29 = *v27++;
      v30 = v29;
      if (v29 < a9)
      {
        a9 = v30;
      }

      --v28;
    }

    while (v28);
    v31 = (a19 + 16);
    do
    {
      *v31 = sqrtf(*v31 - a9);
      ++v31;
      --v26;
    }

    while (v26);
  }

  *(a19 + 2) = 0;
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x97);
  }

  v32 = *(a13 + 1);
  v33 = (v32 == 3 || !v32) && (*a4 - 5) < 2;
  LOBYTE(v65) = a17;
  result = BlueFin::GlMeSrdEstPkFit::CheckForUsableCorrvec((a19 + 16), *a19, *(a19 + 1), *(a19 + 2), v33, a18 + 46, a12, a4, v65, v67);
  *a18 = result;
  if (result != 1)
  {
    return result;
  }

  if (*(a13 + 4) >= 0x23Fu)
  {
    v62 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v63 = "glsignalid.h";
    v64 = 807;
    goto LABEL_60;
  }

  v34 = BlueFin::GlSvId::s_aucSvId2gnss[*a13];
  v35 = *(a13 + 1);
  v36 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v35 + v34];
  v37 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v35 - v35 + v34];
  if (v36)
  {
    v38 = v37 == 0;
  }

  else
  {
    v38 = 1;
  }

  if (v38)
  {
    v62 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
    v63 = "glsignalid.h";
    v64 = 815;
LABEL_60:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v63, v64, v62);
  }

  v39 = (1000 * v36 / v37);
  *(a18 + 3) = v39 * 0.00000033333;
  if (*a15 == 1)
  {
    v40 = a3[8];
    if (v40 >= 3)
    {
      v41 = 0.2728 / (*(a15 + 12) * v40);
      *(a18 + 3) = v41;
      v42 = v39 * 0.0000000066713;
      if (v41 < v42)
      {
        *(a18 + 3) = v42;
      }
    }
  }

  result = BlueFin::GlMeTrkCvecTapConfig::GetTrackCvecDelayOffsetArray(a4, v72, *a19);
  *(a18 + 2) = 0;
  if (*(a20 + 1) == 1)
  {
    v44 = *(a20 + 2);
    if (*(a20 + 2))
    {
      v43 = 0.0;
      v45 = 16;
      v46 = *(a20 + 2);
      do
      {
        if (*(a20 + v45) > *&v43)
        {
          LODWORD(v43) = *(a20 + v45);
        }

        v45 += 4;
        --v46;
      }

      while (v46);
      if (*&v43 > 0.0)
      {
        v47 = *a20;
        v48 = 0.0;
        v49 = 0;
        v50 = 0;
        if (v44 < v47)
        {
          v51 = v47 - v44;
          v52 = 4 * v44;
          v53 = &v72[v44];
          v54 = v52 + 16;
          v55 = (a19 + v52 + 16);
          v56 = (a20 + v54);
          do
          {
            if ((*v56 / *&v43) > v48)
            {
              v49 = *v55;
              v50 = *v53;
              v48 = *v56 / *&v43;
            }

            ++v53;
            ++v55;
            ++v56;
            --v51;
          }

          while (v51);
        }

        if (*(a13 + 1))
        {
          *(a18 + 4) = v49;
        }

        else
        {
          *(a18 + 4) = v48;
          v43 = v48;
          if (v48 > 0.9)
          {
            *a18 = 4;
            return result;
          }
        }

        *(a18 + 5) = v50;
      }
    }
  }

  v57 = a3[9];
  v70 = 0;
  v71 = 0;
  v69 = 0.0;
  BYTE5(v66) = v33;
  BYTE4(v66) = a10;
  LODWORD(v66) = *(a13 + 1);
  result = BlueFin::GlMeSrdEstPkFit::LeastSquaresPeakFit((a19 + 16), v72, *a19, a3[8], *(a19 + 1), *(a19 + 2), v57, *a13, v43, v66, &v71 + 1, &v71, &v70 + 1, &v70, &v69, v68);
  v58 = *(&v71 + 1);
  v59 = v72[v57] - v72[0];
  v61 = HIDWORD(v70);
  v60 = v71;
  *(a18 + 1) = *&v71 + *(&v70 + 1);
  *(a18 + 6) = v70;
  *(a18 + 7) = v58;
  *(a18 + 8) = v59 + v58;
  *(a18 + 9) = v60;
  *(a18 + 10) = v61;
  *(a18 + 22) = *(a19 + 6);
  *(a18 + 2) = v69;
  return result;
}

float BlueFin::GlMeSrdSatReportTrkCorrVec::CopyFrom(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  *a1 = v2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 4);
  *(a1 + 4) = v3;
  *(a1 + 12) = *(a2 + 6);
  if (v2)
  {
    v4 = a2 + 16;
    v5 = (a1 + 16);
    do
    {
      v6 = *v4;
      v4 += 4;
      LODWORD(v3) = v6;
      *v5++ = v6;
      --v2;
    }

    while (v2);
  }

  return *&v3;
}

double BlueFin::GlSystemTime::getSubEpochTime(BlueFin::GlSystemTime *this, const BlueFin::GlSignalId *a2, unsigned __int8 a3)
{
  if (*(a2 + 4) >= 0x23Fu)
  {
    v5 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v6 = 679;
    goto LABEL_8;
  }

  v3 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]];
  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]])
  {
    v5 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v6 = 686;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v6, v5);
  }

  result = *this - ((*this * dbl_298A3A520[*this < 0.0]) / v3 * v3) * dbl_298A3A510[*this < 0.0];
  if ((a3 & (result < 0.0)) != 0)
  {
    return result + v3 * 0.001;
  }

  return result;
}

double BlueFin::GlSystemTime::getSubBitTime(BlueFin::GlSystemTime *this, const BlueFin::GlSignalId *a2, unsigned __int8 a3)
{
  EpochPerBit = BlueFin::GlSignalId::GetEpochPerBit(a2);
  if (*(a2 + 4) >= 0x23Fu)
  {
    v11 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v12 = 679;
    goto LABEL_8;
  }

  v7 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]];
  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]])
  {
    v11 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v12 = 686;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v12, v11);
  }

  v8 = v7 * EpochPerBit;
  v9 = (*this * dbl_298A3A520[*this < 0.0]);
  result = dbl_298A3A510[*this < 0.0] * (v9 / v7 * v7 - v9 / v8 * v8);
  if ((a3 & (result < 0.0)) != 0)
  {
    return result + v8 * 0.001;
  }

  return result;
}

void BlueFin::GlMeSrdSvIdReportMgr::SetDSPMeas(BlueFin::GlMeSrdSvIdReportMgr *this, const BlueFin::GlMeDSPMeas *a2, const BlueFin::GlMeSrdDspMeasAux *a3, const BlueFin::GlMeSrdMultiPeakResults *a4)
{
  if (BlueFin::GlMeSrdDspMeasAux::isGarbage(a3))
  {
    v77 = "!otDspMeasAux.isGarbage()";
    DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 83, "SetDSPMeas", "!otDspMeasAux.isGarbage()");
    v78 = "glmesrd_svid_report_mgr.cpp";
    v79 = 83;
    goto LABEL_173;
  }

  (*(**(this + 598) + 24))(*(this + 598), a2, a3);
  v8 = BlueFin::GlUtils::m_pInstance;
  if (BlueFin::GlUtils::m_pInstance)
  {
    if (*(BlueFin::GlUtils::m_pInstance + 1122) != 1 || ((*(*a2 + 24))(a2, 0, 0), (v8 = BlueFin::GlUtils::m_pInstance) != 0))
    {
      if (*(v8 + 1122) == 1)
      {
        (*(*a3 + 24))(a3, 0, 0);
      }
    }
  }

  v9 = *(a2 + 26);
  if (!v9 || v9 == 3 || (*(a3 + 34) & 1) != 0 || v9 == 2 && (((*(**(this + 599) + 1200))(*(this + 599)) & 1) != 0 || *(a2 + 35) == 10))
  {
    v10 = *(a2 + 35);
    if ((v10 - 10) >= 3)
    {
      if (v10 == 14)
      {
LABEL_14:
        if (((*(**(this + 598) + 8))(*(this + 598), *(a2 + 112)) & 1) == 0)
        {
          v11 = *(a2 + 100);
          v12 = *(this + 606);
          v13 = v11 >> 5;
          v14 = *(v12 + 4 * (v11 >> 5));
          v15 = 1 << (v11 & 0x1F);
          if ((v15 & v14) != 0)
          {
            if ((v15 & *(*(this + 600) + 4 * v13)) != 0)
            {
              BlueFin::GlSetBase::Remove(this + 4848, v11);
              (***(this + 598))(*(this + 598), *(a2 + 112));
            }
          }

          else
          {
            *(v12 + 4 * v13) = (1 << (v11 & 0x1F)) | v14;
          }
        }

LABEL_23:
        MsmtHistorySlot = BlueFin::GlMeSrdSvIdMsmtHistoryBuffer::GetMsmtHistorySlot((this + 1536), (a2 + 100));
        if ((~*(a2 + 21) & 0x70) == 0)
        {
          v17 = *(a2 + 35);
          if ((v17 - 13) >= 4 && (v17 != 10 || *(a2 + 10) >= 20.0))
          {
            *MsmtHistorySlot = 1;
            *(MsmtHistorySlot + 4) = *(a2 + 8);
            *(MsmtHistorySlot + 8) = *(a2 + 3);
          }
        }

        if (BlueFin::GlMeSatIdProbationMgr::Ignoring(this + 4544, *(a2 + 112), a2 + 100))
        {
          goto LABEL_137;
        }

        v18 = *(a3 + 9);
        if (v18 != 1)
        {
          goto LABEL_45;
        }

        SrchRslts = BlueFin::GlMeSrdDspMeasAux::GetSrchRslts(a3);
        if (*(SrchRslts + 16) != 0.0)
        {
          (*(**(this + 598) + 16))(*(this + 598), *(a2 + 112));
          (*(**(this + 598) + 64))(*(this + 598), a2);
LABEL_32:
          BlueFin::GlMeSatIdProbationMgr::Ignore(this + 4544, *(a2 + 112), a2 + 100);
          goto LABEL_137;
        }

        v20 = SrchRslts;
        if (*(a2 + 35) == 15)
        {
          if (*(BlueFin::GlMeSrdDspMeasAux::GetSrchRslts(a3) + 13) & 1) != 0 || (*(BlueFin::GlMeSrdDspMeasAux::GetSrchRslts(a3) + 12))
          {
            if (*(a2 + 35) != 15)
            {
              goto LABEL_38;
            }

            v21 = BlueFin::GlMeSrdSvIdMsmtHistoryBuffer::GetMsmtHistorySlot((this + 1536), (a2 + 100));
            if (BlueFin::GlMeSrdSvIdMsmtHistorySlot::Verify2dBitOkToPublish(v21, a2, 0))
            {
              goto LABEL_38;
            }

            BlueFin::GlMeSrdSvIdMsmtHistoryBuffer::GetMsmtHistorySlot((this + 1536), (a2 + 100));
            if ((~*(a2 + 21) & 0x70) != 0)
            {
              goto LABEL_32;
            }
          }

          else
          {
            GlCustomLog(14, "GlMeSrdSvIdReportMgr::MsmtIsGood4Saving SvId %u CarrType %s SatId %u - bad ESW controlled 2dbit estimate\n", *(a2 + 100), BlueFin::GlSignalId::s_ausSignalType2str[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 26) - *(a2 + 26) + BlueFin::GlSvId::s_aucSvId2gnss[*(a2 + 100)]]], *(a2 + 112));
          }

          (*(**(this + 598) + 16))(*(this + 598), *(a2 + 112));
          goto LABEL_32;
        }

LABEL_38:
        if (*(BlueFin::GlMeSrdDspMeasAux::GetSrchRslts(a3) + 13) == 1 && *(BlueFin::GlMeSrdDspMeasAux::GetSrchRslts(a3) + 12) == 1)
        {
          (*(**(this + 598) + 16))(*(this + 598), *(a2 + 112));
          (*(**(this + 598) + 64))(*(this + 598), a2);
        }

        else if (*(v20 + 4) < (*(v20 + 8) * 0.8))
        {
          if (*(a2 + 35) != 15)
          {
            (*(**(this + 598) + 16))(*(this + 598), *(a2 + 112));
          }

          goto LABEL_137;
        }

        v18 = *(a3 + 9);
LABEL_45:
        BlueFin::GlSatCarrId::GlSatCarrId(v85, *(a2 + 112), *(a2 + 26));
        if (v18 != 4)
        {
          if (v18 == 3)
          {
            goto LABEL_68;
          }

          if (v18 != 2)
          {
            v26 = 0;
            goto LABEL_70;
          }
        }

        TrkRslts = BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3);
        v23 = TrkRslts;
        v24 = *(a2 + 35);
        if (v24 <= 0x11 && ((1 << v24) & 0x21800) != 0)
        {
          v25 = *(TrkRslts + 128);
          if ((v25 & 0x200) != 0)
          {
            (*(**(this + 598) + 40))(*(this + 598), v85);
          }

          else if ((v25 & 0x400) != 0)
          {
            (*(**(this + 598) + 56))(*(this + 598), v85);
          }
        }

        if (v23[136])
        {
          (***(this + 598))(*(this + 598), v85[0]);
          goto LABEL_66;
        }

        if (v23[137] & 1) != 0 || (v23[138] & 1) != 0 || (v23[139] & 1) != 0 || (v23[140] & 1) != 0 || (v23[141] & 1) != 0 || (v23[142] & 1) != 0 || (v23[143])
        {
          v27 = *(**(this + 598) + 32);
        }

        else
        {
          if ((v23[144] & 1) == 0 && (v23[145] & 1) == 0 && (v23[146] & 1) == 0 && (v23[147] & 1) == 0 && (v23[148] & 1) == 0 && (v23[149] & 1) == 0 && (v23[150] & 1) == 0 && v23[151] != 1)
          {
LABEL_66:
            v26 = v18 == 3;
            if (v18 != 2)
            {
              goto LABEL_70;
            }

            v28 = *(a2 + 21);
            if ((v28 & 0x20) != 0)
            {
              v26 = (v28 & 0x40) == 0;
LABEL_70:
              v29 = BlueFin::GlBigArray::Has((*(this + 1) + 800), v85[0] + 100 * v86);
              v30 = *(this + 1);
              if (v29)
              {
                if (v85[0] + 100 * v86 - *(v30 + 828) >= *(v30 + 830))
                {
                  goto LABEL_156;
                }

                v31 = *(*(v30 + 808) + 2 * (v85[0] + 100 * v86 - *(v30 + 828)));
                if (*(v30 + 832) <= v31)
                {
                  goto LABEL_158;
                }

                v32 = *(v30 + 800) + *(v30 + 824) * v31;
                v33 = *(v32 + 140);
                v34 = v33 > 0xF;
                v35 = (1 << v33) & 0x8300;
                if (!v34 && v35 != 0)
                {
                  v37 = *(v32 + 84);
                  if ((v37 & 0x20) != 0 && (v37 & 0x40) != 0 && v26)
                  {
                    goto LABEL_137;
                  }
                }
              }

              if (*(v30 + 834) == -1 && v26)
              {
                goto LABEL_137;
              }

              v38 = BlueFin::GlBigArray::Has((v30 + 800), v85[0] + 100 * v86);
              v39 = v38;
              v40 = *(this + 1);
              if (*(v40 + 834) != -1 || v38)
              {
                goto LABEL_120;
              }

              v80 = v38;
              if (!*(v40 + 832))
              {
                goto LABEL_175;
              }

              v81 = a4;
              v41 = 0;
              v42 = 0;
              v43 = 0;
              v44 = 0;
              v83 = 0;
              v84 = 0;
              v82 = 0;
              v45 = 0.0;
              v46 = 0.0;
              v47 = 0.0;
              do
              {
                v48 = *(this + 1);
                v49 = (*(v40 + 828) + *(*(v40 + 816) + 2 * v41));
                if (!BlueFin::GlBigArray::Has((v40 + 800), v49))
                {
                  v77 = "m_potArray->Has(handle)";
                  DeviceFaultNotify("glinc_array.h", 362, "Next", "m_potArray->Has(handle)");
                  v78 = "glinc_array.h";
                  v79 = 362;
                  goto LABEL_173;
                }

                if (v49 - *(v48 + 828) >= *(v48 + 830))
                {
                  goto LABEL_156;
                }

                v50 = *(*(v48 + 808) + 2 * (v49 - *(v48 + 828)));
                if (v50 == 0xFFFF)
                {
                  v51 = 0;
                }

                else
                {
                  if (*(v48 + 832) <= v50)
                  {
                    goto LABEL_158;
                  }

                  v51 = *(v48 + 800) + *(v48 + 824) * v50;
                }

                BlueFin::GlSatCarrId::GlSatCarrId(v87, *(v51 + 112), *(v51 + 104));
                v52 = *(v51 + 164);
                switch(v52)
                {
                  case 1:
                    if ((v43 & 1) != 0 && v46 < *(v51 + 24))
                    {
                      v43 = 1;
                    }

                    else
                    {
                      if (v88)
                      {
                        v77 = "otSatCarrId.GetSignalIndex() == SIGNAL_INDEX_0";
                        DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 1486, "GarbageCollector", "otSatCarrId.GetSignalIndex() == SIGNAL_INDEX_0");
                        v78 = "glmesrd_svid_report_mgr.cpp";
                        v79 = 1486;
                        goto LABEL_173;
                      }

                      v46 = *(v51 + 24);
                      v43 = 1;
                      BYTE4(v83) = v87[0];
                    }

                    break;
                  case 2:
                    if ((v42 & (v47 < *(v51 + 24))) != 0)
                    {
                      v42 = 1;
                    }

                    else
                    {
                      v42 = 1;
                      v82 = v88;
                      LOBYTE(v83) = v87[0];
                      v47 = *(v51 + 24);
                    }

                    break;
                  case 3:
                    if ((v44 & 1) != 0 && v45 < *(v51 + 24))
                    {
                      v44 = 1;
                    }

                    else
                    {
                      if (v88 && v88 != 3)
                      {
                        v77 = "otSatCarrId.GetSignalIndex() == SIGNAL_INDEX_0 || otSatCarrId.GetSignalIndex() == SIGNAL_INDEX_3";
                        DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 1465, "GarbageCollector", "otSatCarrId.GetSignalIndex() == SIGNAL_INDEX_0 || otSatCarrId.GetSignalIndex() == SIGNAL_INDEX_3");
                        v78 = "glmesrd_svid_report_mgr.cpp";
                        v79 = 1465;
                        goto LABEL_173;
                      }

                      BYTE4(v84) = v88;
                      v45 = *(v51 + 24);
                      v44 = 1;
                      LOBYTE(v84) = v87[0];
                    }

                    break;
                }

                ++v41;
              }

              while (v41 < *(v40 + 832));
              v53 = v44 | v43 | v42;
              v54 = v83;
              if (v43)
              {
                v54 = BYTE4(v83);
              }

              v55 = v82;
              if (v43)
              {
                v55 = 0;
              }

              if (v44)
              {
                v54 = v84;
                v55 = BYTE4(v84);
              }

              a4 = v81;
              if ((v53 & 1) == 0)
              {
LABEL_175:
                v77 = "0";
                DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 1518, "GarbageCollector", "0");
                v78 = "glmesrd_svid_report_mgr.cpp";
                v79 = 1518;
                goto LABEL_173;
              }

              v39 = v80;
              if (v54 == 0xFF)
              {
                v77 = "otSatCarrToRemove.GetSatId() != INVALID_SATID";
                DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 1521, "GarbageCollector", "otSatCarrToRemove.GetSatId() != INVALID_SATID");
                v78 = "glmesrd_svid_report_mgr.cpp";
                v79 = 1521;
                goto LABEL_173;
              }

              v56 = *(this + 1);
              v57 = 100 * v55 + v54;
              if (v57 - *(v56 + 828) < *(v56 + 830))
              {
                v58 = *(*(v56 + 808) + 2 * (v57 - *(v56 + 828)));
                if (v58 == 0xFFFF || *(v56 + 832) > v58)
                {
                  BlueFin::GlBigArray::Remove(v56 + 800, v57);
                  v40 = *(this + 1);
LABEL_120:
                  v59 = BlueFin::GlBigArray::Add((v40 + 800), v85[0] + 100 * v86);
                  if (!v59)
                  {
                    v77 = "potMsmtSlot != nullptr";
                    DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 485, "SaveMsmt", "potMsmtSlot != nullptr");
                    v78 = "glmesrd_svid_report_mgr.cpp";
                    v79 = 485;
                    goto LABEL_173;
                  }

                  if (!v39)
                  {
                    v59 = BlueFin::GlMeSrdSvIdReportMsmtSlot::GlMeSrdSvIdReportMsmtSlot(v59);
                  }

                  BlueFin::GlMeSrdSvIdReportMsmtSlot::Save(v59, a2, a3);
                  if (!a4 || *a4 != 1)
                  {
                    goto LABEL_137;
                  }

                  v60 = *(a2 + 26);
                  if (v60 != 2)
                  {
                    if (!v60 && *(a4 + 1))
                    {
                      ++*(this + 32);
                      *(this + 33) += *(a4 + 3);
                    }

                    goto LABEL_137;
                  }

                  v61 = (*(**(this + 3) + 40))(*(this + 3), *(a2 + 112));
                  if (!(*(**(this + 3) + 64))(*(this + 3)) || v61)
                  {
                    v62 = (*(**(this + 3) + 24))(*(this + 3), *(a2 + 112));
                    if (v62)
                    {
                      if ((v61 & 1) == 0)
                      {
                        *v62 = 0;
                        v63 = (v62 + 20);
                        v64 = 80;
                        do
                        {
                          *(v63 - 2) = 0;
                          *(v63 - 1) = 0;
                          *v63 = 1176492032;
                          v63 += 5;
                          v64 -= 20;
                        }

                        while (v64);
                        *(v62 + 84) = 0;
                      }

                      v65 = *(a4 + 1);
                      *v62 = *a4;
                      *(v62 + 16) = v65;
                      v66 = *(a4 + 2);
                      v67 = *(a4 + 3);
                      v68 = *(a4 + 4);
                      *(v62 + 80) = *(a4 + 20);
                      *(v62 + 48) = v67;
                      *(v62 + 64) = v68;
                      *(v62 + 32) = v66;
                      *(v62 + 84) = 1;
                      goto LABEL_137;
                    }

                    v77 = "potMultiPeakResultsSlot != nullptr";
                    DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 523, "SaveMsmt", "potMultiPeakResultsSlot != nullptr");
                    v78 = "glmesrd_svid_report_mgr.cpp";
                    v79 = 523;
LABEL_173:
                    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v78, v79, v77);
                  }

LABEL_137:
                  if ((*(this + 4768) & 1) == 0)
                  {
                    v69 = *(this + 1);
                    BlueFin::GlSatCarrId::GlSatCarrId(v87, *(a2 + 112), *(a2 + 26));
                    v70 = BlueFin::GlBigArray::Has((v69 + 800), v87[0] + 100 * v88);
                    v73 = *(a2 + 35);
                    if ((v73 == 15 || v73 == 9) && (*(a2 + 21) & 0x20) != 0 && ((*(a2 + 21) >> 6) & 1 & *&v70) != 0)
                    {
                      v72.n128_u32[0] = *(this + 1193);
                      v74 = *(a2 + 3) + v72.n128_u64[0] * -0.001;
                      v72.n128_f64[0] = v74 + 0.2;
                      v34 = v74 <= 0.0;
                      v71.n128_u64[0] = 1.0;
                      if (!v34 && v72.n128_f64[0] < 1.0)
                      {
                        *(this + 4768) = 1;
                        if (!*(a2 + 26))
                        {
                          (*(**(this + 597) + 24))(*(this + 597), a2, v71, v72);
                          v76 = *(**(this + 597) + 64);

                          v76();
                        }
                      }
                    }
                  }

                  return;
                }

LABEL_158:
                v77 = "slot < m_usNumSlots";
                DeviceFaultNotify("glinc_array.h", 319, "EnsureValidSlot", "slot < m_usNumSlots");
                v78 = "glinc_array.h";
                v79 = 319;
                goto LABEL_173;
              }

LABEL_156:
              v77 = "handle - m_usMinHandle < m_usNumHandles";
              DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
              v78 = "glinc_array.h";
              v79 = 313;
              goto LABEL_173;
            }

LABEL_68:
            v26 = 1;
            goto LABEL_70;
          }

          v27 = *(**(this + 598) + 32);
        }

        v27();
        goto LABEL_66;
      }

      if (v10 != 17)
      {
        goto LABEL_23;
      }
    }

    *(*(this + 600) + ((*(a2 + 100) >> 3) & 0x1C)) |= 1 << *(a2 + 100);
    if (v10 != 14)
    {
      goto LABEL_23;
    }

    goto LABEL_14;
  }
}

uint64_t BlueFin::GlMeSrdAsicCorrVecTrkMsmt::GlMeSrdAsicCorrVecTrkMsmt(uint64_t result, int a2)
{
  *result = 0;
  *(result + 4) = 0;
  *(result + 6) = 0;
  *(result + 8) = a2;
  *(result + 12) = 1;
  *(result + 16) = 1281;
  *(result + 52) = 0;
  *(result + 54) = 0;
  *(result + 56) = a2;
  *(result + 60) = 2;
  *(result + 64) = 1281;
  *(result + 100) = 0;
  *(result + 102) = 0;
  *(result + 104) = a2;
  *(result + 108) = 3;
  *(result + 112) = 1281;
  *(result + 148) = -1;
  *(result + 150) = 0;
  *(result + 152) = 0;
  *(result + 156) = 0;
  *(result + 160) = 575;
  *(result + 172) = 0;
  *(result + 164) = 0;
  *(result + 180) = 0;
  return result;
}

double BlueFin::GlMeSrdObsBuf::SumFcn(BlueFin::GlMeSrdObsBuf *this, unsigned int a2, void *a3, double (*a4)(void *, void *))
{
  v6 = a2;
  if (*(this + 8) == 1)
  {
    if (*(this + 9) >= a2)
    {
      v8 = *(this + 10);
      goto LABEL_5;
    }

    v13 = "ucNbElemSum<=m_ucNbElem";
    DeviceFaultNotify("glmesrd_obsbuf.cpp", 78, "SumFcn", "ucNbElemSum<=m_ucNbElem");
    v14 = 78;
LABEL_16:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_obsbuf.cpp", v14, v13);
  }

  v8 = *(this + 10);
  if (v8 < a2)
  {
    v13 = "ucNbElemSum<=m_ucElemIdx";
    DeviceFaultNotify("glmesrd_obsbuf.cpp", 80, "SumFcn", "ucNbElemSum<=m_ucElemIdx");
    v14 = 80;
    goto LABEL_16;
  }

LABEL_5:
  v9 = v8 - a2;
  if (v8 >= a2)
  {
    if (!a2)
    {
      return 0.0;
    }
  }

  else
  {
    v9 += *(this + 9);
  }

  v10 = 0.0;
  do
  {
    v10 = v10 + a4(a3, (*this + *(this + 11) * v9));
    v11 = *(this + 9);
    if (v11 > (v9 + 1))
    {
      LOBYTE(v11) = 0;
    }

    v9 = v9 + 1 - v11;
    --v6;
  }

  while (v6);
  return v10;
}

uint64_t BlueFin::GlMeSrdDspMeasAux::GlMeSrdDspMeasAux(uint64_t a1, uint64_t a2, char a3, _DWORD *a4, double a5)
{
  *a1 = &unk_2A1F0C0C0;
  *(a1 + 8) = *a2;
  v7 = *(a2 + 4);
  *(a1 + 16) = *(a2 + 8);
  *(a1 + 12) = v7;
  *(a1 + 20) = a3;
  *(a1 + 24) = a5;
  *(a1 + 32) = 0;
  *(a1 + 34) = 0;
  *(a1 + 36) = *a4;
  *(a1 + 40) = 0;
  *(a1 + 52) = 0;
  *(a1 + 44) = vneg_f32(0x80000000800000);
  *(a1 + 56) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  BlueFin::GlMeSrdDspMeasAuxTrackRslts::Clear(a1 + 64);
  if (!*a4)
  {
    DeviceFaultNotify("glmesrd_dsp_meas_aux.cpp", 946, "GlMeSrdDspMeasAux", "otMsmtSource.GetEnum() != GLMESRD_MSMT_SRC_INVALID");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_dsp_meas_aux.cpp", 946, "otMsmtSource.GetEnum() != GLMESRD_MSMT_SRC_INVALID");
  }

  return a1;
}

BlueFin::GlMeSrdGridResults *BlueFin::GlMeSrdGridResults::GlMeSrdGridResults(BlueFin::GlMeSrdGridResults *this)
{
  *(this + 14) = 0;
  v2 = this + 1289;
  *(this + 6) = 0;
  *this = 0;
  *(this + 4) = 0;
  bzero(this + 16, 0x428uLL);
  for (i = 0; i != 192; i += 48)
  {
    *(this + i + 1080) = 0;
    v4 = (this + i + 1084);
    *v4 = 0uLL;
    v4[1] = 0uLL;
    *(v4 + 28) = 0uLL;
  }

  *(this + 1288) = 0;
  *(this + 1272) = 0u;
  *v2 = 0x203020F043F0606;
  *(v2 + 2) = -16711421;
  *(this + 1301) = -1;
  *(this + 163) = 0;
  return this;
}

double BlueFin::GlMeSrdEstCodePrm::CalcEarlyMinusLateDllValidityTestStatSummand(BlueFin::GlMeSrdEstCodePrm *this, float *a2, void *a3, float a4, float a5)
{
  if (!a2)
  {
    v18 = "potBufElem != nullptr";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1707, "CalcEarlyMinusLateDllValidityTestStatSummand", "potBufElem != nullptr");
    v19 = 1707;
    goto LABEL_16;
  }

  if (!this)
  {
    v18 = "potTestStatParam != nullptr";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1708, "CalcEarlyMinusLateDllValidityTestStatSummand", "potTestStatParam != nullptr");
    v19 = 1708;
LABEL_16:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_codeprm.cpp", v19, v18);
  }

  v6 = *(a2 + 2);
  LOBYTE(a4) = *(a2 + 6);
  LOBYTE(a5) = *(this + 16);
  v7 = LODWORD(a4) / LODWORD(a5);
  v8 = *(this + 1);
  v10 = *(this + 2);
  v9 = *(this + 3);
  v11 = 0.5;
  if ((v7 * 1000.0) > 0.0 || (v11 = -0.5, (v7 * 1000.0) < 0.0))
  {
    v12 = (v11 + (v7 * 1000.0));
    switch(v12)
    {
      case 200:
        v13 = 0.64;
        v14 = 0.36;
        goto LABEL_13;
      case 600:
        v13 = 0.16;
        goto LABEL_11;
      case 400:
        v13 = 0.36;
LABEL_11:
        v14 = 0.04;
        goto LABEL_13;
    }
  }

  v13 = ((1.0 - v7) * (1.0 - v7));
  v14 = (((v7 * -2.0) + 1.0) * ((v7 * -2.0) + 1.0));
LABEL_13:
  v15 = BlueFin::GlMeSrdSatReport::CalcDbHzToTargetCohSnrInLin(this, *this, *(this + 3));
  v16 = v13 * ((((v9 / v8) * v10) * v15) + (((v9 / v8) * v10) * v15));
  *&v16 = ((1.0 - v14) * ((v9 * v10) / v8) + (v16 + v16) * v7) * (((v9 * v10) / v8) + ((v9 * v10) / v8)) / v6;
  return ((*a2 * *a2) / *&v16);
}

uint64_t BlueFin::GlMeDSPMeas::GetMeasTrackMode(BlueFin::GlMeDSPMeas *this)
{
  v1 = *(this + 35) - 10;
  if (v1 > 7)
  {
    return 0;
  }

  else
  {
    return dword_298A3A5E0[v1];
  }
}

float BlueFin::GlMeReceiverParametersIfc::GetBbHwInterSysBiasS(BlueFin::GlMeReceiverParametersIfc *this, const BlueFin::GlSignalId *a2)
{
  v3 = (*(*this + 64))(this);

  return BlueFin::GlMeBbHwInterSysBias::GetBias(v3, a2);
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetBbHwInterSysBiasStruct(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 64);

  return v1();
}

float BlueFin::GlMeBbHwInterSysBias::GetBias(BlueFin::GlMeBbHwInterSysBias *this, const BlueFin::GlSignalId *a2)
{
  v2 = BlueFin::GlSvId::s_aucSvId2gnss[*a2];
  if (v2 <= 2)
  {
    if (!BlueFin::GlSvId::s_aucSvId2gnss[*a2])
    {
      v4 = *(a2 + 1);
      if (v4 > 1)
      {
        if (v4 == 2)
        {
          goto LABEL_41;
        }

        if (v4 == 3)
        {
          return *this;
        }
      }

      else
      {
        if (!v4)
        {
          return *this;
        }

        if (v4 == 1)
        {
LABEL_27:
          this = (this + 20);
          return *this;
        }
      }

      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 156, "GetBias", "0");
      v7 = 156;
      goto LABEL_52;
    }

    if (v2 == 1)
    {
      if (!*(a2 + 1))
      {
        this = (this + 4);
        return *this;
      }

      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 166, "GetBias", "0");
      v7 = 166;
    }

    else
    {
      if (v2 != 2)
      {
        goto LABEL_50;
      }

      if (!*(a2 + 1))
      {
        this = (this + 8);
        return *this;
      }

      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 176, "GetBias", "0");
      v7 = 176;
    }

LABEL_52:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", v7, "0");
  }

  if (BlueFin::GlSvId::s_aucSvId2gnss[*a2] > 4u)
  {
    if (v2 == 5)
    {
      v6 = *(a2 + 1);
      switch(v6)
      {
        case 2:
          this = (this + 40);
          return *this;
        case 1:
          this = (this + 28);
          return *this;
        case 0:
          this = (this + 16);
          return *this;
      }

      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 221, "GetBias", "0");
      v7 = 221;
    }

    else
    {
      if (v2 != 6)
      {
        goto LABEL_50;
      }

      if (!*(a2 + 1))
      {
        this = (this + 44);
        return *this;
      }

      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 231, "GetBias", "0");
      v7 = 231;
    }

    goto LABEL_52;
  }

  if (v2 == 3)
  {
    v5 = *(a2 + 1);
    if (v5 <= 1)
    {
      if (!v5)
      {
        return *this;
      }

      if (v5 == 1)
      {
        goto LABEL_27;
      }

LABEL_40:
      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 191, "GetBias", "0");
      v7 = 191;
      goto LABEL_52;
    }

    if (v5 != 2)
    {
      if (v5 == 3)
      {
        return *this;
      }

      goto LABEL_40;
    }

LABEL_41:
    this = (this + 32);
    return *this;
  }

  if (v2 != 4)
  {
LABEL_50:
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 236, "GetBias", "0");
    v7 = 236;
    goto LABEL_52;
  }

  v3 = *(a2 + 1);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      this = (this + 36);
    }

    else if (v3 != 3)
    {
LABEL_37:
      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 207, "GetBias", "0");
      v7 = 207;
      goto LABEL_52;
    }
  }

  else if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_37;
    }
  }

  else
  {
    this = (this + 12);
  }

  return *this;
}

double BlueFin::GlSignalId::GetInterSignalBiasInMs(unsigned __int8 *a1, uint64_t a2)
{
  if (*(a1 + 4) >= 0x23Fu)
  {
    v10 = "IsValid()";
    DeviceFaultNotify("glsignalid.cpp", 600, "GetInterSignalBiasInMs", "IsValid()");
    v11 = 600;
    goto LABEL_22;
  }

  v2 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a1 + 1) - *(a1 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a1]];
  if (v2 > 0xE)
  {
    v10 = "false";
    DeviceFaultNotify("glsignalid.cpp", 631, "GetInterSignalBiasInMs", "false");
    v11 = 631;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.cpp", v11, v10);
  }

  result = 0.0;
  v4 = 1 << v2;
  if ((v4 & 0x784B) != 0)
  {
    return result;
  }

  if ((v4 & 0x1B4) == 0)
  {
    v10 = "false";
    DeviceFaultNotify("glsignalid.cpp", 624, "GetInterSignalBiasInMs", "false");
    v11 = 624;
    goto LABEL_22;
  }

  v5 = (*(*a2 + 184))(a2, 0.0);
  v6 = (v5 & 0xF000FFFF) == 0x30000011 || (v5 & 0xF000FFFF) == 805306383;
  v7 = -0.0467008798;
  if (v6)
  {
    v7 = -0.0470918866;
  }

  v8 = 0.0250244379;
  v9 = (v5 & 0xF000FFFE) == 0x30000012 || (v5 & 0xF000FFFE) == 805306388;
  if (!v9 && (v5 & 0xF0FFFFFE) != 0x30000010)
  {
    v8 = 0.0250244379;
    if ((v5 & 0xF0FFFFFE) != 0x30FF0010)
    {
      v8 = 0.0;
    }
  }

  return v7 + v8;
}

double BlueFin::GlMeSrdAsicConfig::GetCodeNcoDrift(_DWORD *a1, uint64_t a2)
{
  if ((*(*a1 + 256))(a1))
  {
    return 0.000581992;
  }

  v5 = a1[3] & 0xF000FFFE;
  if (v5 == 805306386)
  {
    if (a1[547] == 4 && (*(a2 + 4) - 1) < 2)
    {
      return -0.000555118;
    }

    if (a1[546] != 4)
    {
      return -0.000232172;
    }

    v9 = *(a2 + 4);
    if (v9)
    {
      v7 = v9 == 3;
    }

    else
    {
      v7 = 1;
    }

    result = -0.000232172;
    v8 = -0.000555118;
  }

  else
  {
    result = 0.0;
    if (v5 != 805306388)
    {
      return result;
    }

    if (a1[547] == 4 && (*(a2 + 4) - 1) < 2)
    {
      return -0.011247561;
    }

    if (a1[546] != 4)
    {
      return -0.024885477;
    }

    v6 = *(a2 + 4);
    if (v6)
    {
      v7 = v6 == 3;
    }

    else
    {
      v7 = 1;
    }

    result = -0.024885477;
    v8 = -0.011247561;
  }

  if (v7)
  {
    return v8;
  }

  return result;
}

uint64_t BlueFin::GlPeGloEphemeris::GetEphDataSrc(BlueFin::GlPeGloEphemeris *this)
{
  result = (*(*this + 192))(this, 38);
  if (result != 1)
  {
    if ((*(*this + 192))(this, 39) == 1)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeGloEphemeris::GetCmpUnsignedField(BlueFin::GlPeGloEphemeris *this, int a2)
{
  v2 = *(this + 2);
  switch(a2)
  {
    case 2:
      return (v2[9] >> 12) & 1;
    case 5:
      return (*v2 >> 13) & 0xFFF;
    case 6:
      return (*v2 >> 20) & 0x1F;
    case 7:
      return (*v2 >> 14) & 0x3F;
    case 8:
      v5 = *v2;
      goto LABEL_20;
    case 9:
      return (v2[2] >> 10) & 0x7F;
    case 10:
      return (v2[8] >> 20) & 3;
    case 22:
      return (v2[2] >> 18) & 7;
    case 23:
      return (v2[2] >> 20) & 1;
    case 24:
      return (v2[4] >> 4) & 3;
    case 25:
      HIDWORD(v4) = v2[7];
      LODWORD(v4) = v2[8];
      return (v4 >> 6) >> 21;
    case 26:
      return (v2[7] >> 6) & 0xF;
    case 27:
      return (v2[8] >> 22) & 0x1F;
    case 29:
      return v2[7] >> 11;
    case 30:
      return (*v2 >> 25) & 3;
    case 31:
      return (v2[2] >> 17) & 1;
    case 32:
      return (v2[4] >> 15) & 1;
    case 33:
      return (v2[7] >> 10) & 1;
    case 34:
      return (v2[4] >> 3) & 1;
    case 35:
      return (v2[8] >> 19) & 1;
    case 36:
      return (v2[8] >> 14) & 0x1F;
    case 38:
      v5 = v2[9];
LABEL_20:
      result = (v5 >> 13) & 1;
      break;
    case 39:
      result = (v2[9] >> 11) & 1;
      break;
    default:
      DeviceFaultNotify("glpe_glnephmgr.cpp", 441, "GetCmpUnsignedField", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glnephmgr.cpp", 441, "0");
  }

  return result;
}

uint64_t BlueFin::GlPeGloEphemeris::isHealthy(BlueFin::GlPeGloEphemeris *this)
{
  if ((*(*this + 192))(this, 23) || (*(*this + 192))(this, 34) || (*(*this + 192))(this, 26) > 0xE)
  {
    return 0;
  }

  result = (*(*this + 192))(this, 27);
  if (result)
  {
    return (*(*this + 192))(this, 27) < 0x19;
  }

  return result;
}

uint64_t BlueFin::GlPeGloEphemeris::GetGnssId@<X0>(BlueFin::GlPeGloEphemeris *this@<X0>, _BYTE *a2@<X8>)
{
  result = (*(*this + 192))(this, 27);
  *a2 = result;
  return result;
}

uint64_t BlueFin::GlPeSensListener::SetExtSensInfo(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = *a2 < 1;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    return 0;
  }

  else
  {
    return BlueFin::GlPosEng::InjectExtSensInfo(v11, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }
}

double BlueFin::GlPeSensStats::ProcessSensData(uint64_t a1, unsigned int a2, uint64_t a3, float64x2_t *a4)
{
  v4 = a4->f64[0];
  v5 = *(a3 + 40);
  v6 = v5;
  a4->f64[0] = v6;
  a4[1].f64[0] = v4;
  a4[1].f64[1] = -(v4 - (a2 + v6) * 0.001);
  v7 = *(a3 + 48);
  v8 = *(a3 + 32);
  v9.f64[1] = 0.0;
  v9.f64[0] = v7 * v7;
  v10 = 0.0;
  if (v8 < 2)
  {
    v14 = -1000.0;
    v15 = 1000.0;
    v19 = 1000.0;
  }

  else
  {
    v11 = 0;
    v12 = v8 - 1;
    v13 = (a3 + 136);
    v14 = -1000.0;
    v15 = 1000.0;
    do
    {
      v16 = *(v13 - 4);
      v17 = (v16 - v5);
      if (v17 <= 0)
      {
        DeviceFaultNotify("glpe_sens_stats.cpp", 113, "ProcessSensData", "sTimeDiff > 0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_sens_stats.cpp", 113, "sTimeDiff > 0");
      }

      a4->f64[0] = v16;
      v18.f64[0] = *v13;
      v7 = v7 + v18.f64[0];
      if (v14 < v18.f64[0])
      {
        v14 = *v13;
      }

      if (v15 > v18.f64[0])
      {
        v15 = *v13;
      }

      v18.f64[1] = (v18.f64[0] - *(v13 - 22)) * 0.5;
      v11 += v17;
      v9 = vaddq_f64(v9, vmulq_f64(v18, v18));
      v13 += 22;
      v5 = v16;
      --v12;
    }

    while (v12);
    v19 = v11 / (v8 - 1);
    v7 = v7 / v8;
    v9 = vdivq_f64(v9, vdupq_lane_s64(COERCE__INT64(v8), 0));
    if (v9.f64[0] - v7 * v7 >= 0.0)
    {
      v10 = v9.f64[0] - v7 * v7;
    }
  }

  v20.f64[1] = v19;
  v20.f64[0] = a2;
  *a4 = vmulq_f64(v20, vdupq_n_s64(0x3F50624DD2F1A9FCuLL));
  a4[2].f64[0] = v7;
  a4[2].f64[1] = sqrt(v10);
  result = v14 - v15;
  a4[3].f64[0] = v14 - v15;
  a4[4] = v9;
  return result;
}

uint64_t BlueFin::GlPeShrimpSensBuffer::Write(uint64_t result, int a2, uint64_t a3, unsigned int a4, int a5)
{
  if (a4)
  {
    v5 = *(result + 1692);
    v6 = (a3 + 8);
    v7 = a4;
    do
    {
      v8 = (result + 28 * (v5 % 0x3C));
      v9 = v8[6];
      v10 = *(v6 - 4);
      if (v9)
      {
        v11 = a2 - v9 + v10;
        if (v11 < 0)
        {
          v11 = -v11;
        }

        if (v11 >= 0x65)
        {
          *(result + 1696) = 1;
        }
      }

      else
      {
        v8[6] = v10 + a2;
      }

      if (a5 > 2)
      {
        switch(a5)
        {
          case 3:
            v8[3] = *v6;
            break;
          case 4:
            v8[4] = *v6;
            break;
          case 5:
            v8[5] = *v6;
            break;
          default:
LABEL_26:
            DeviceFaultNotify("glpe_shrimpsensbuffer.cpp", 88, "Write", "false");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_shrimpsensbuffer.cpp", 88, "false");
        }
      }

      else if (a5)
      {
        if (a5 == 1)
        {
          v8[1] = *v6;
        }

        else
        {
          if (a5 != 2)
          {
            goto LABEL_26;
          }

          v8[2] = *v6;
        }
      }

      else
      {
        *v8 = *v6;
      }

      v6 += 22;
      ++v5;
      --v7;
    }

    while (v7);
  }

  v12 = *(result + 1684) | (1 << a5);
  *(result + 1684) = v12;
  if (v12 == *(result + 1680))
  {
    *(result + 1692) = (*(result + 1692) + a4) % 0x3C;
  }

  return result;
}

double BlueFin::GlPeSensStats::updateGyr(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, double result)
{
  if (a3 <= 2)
  {
    *(a1 + 585) = 1;
    v5 = *(a4 + 88);
    if (fabs(v5 + 999.0) < 0.1)
    {
      if (a2 - *(a1 + 588) <= 0xEA60)
      {
        v6 = *(a1 + 586) + 1;
      }

      else
      {
        v6 = 1;
      }

      *(a1 + 588) = a2;
      *(a1 + 586) = v6;
    }

    if (fabs(v5 + 998.0) < 0.1)
    {
      *(a1 + 592) = 1;
    }

    return BlueFin::GlPeSensStats::ProcessSensData(a1, a2, a4, (a1 + 96 * a3 + 600));
  }

  return result;
}

BOOL BlueFin::GlPeShrimpKf::SensorUpdate(uint64_t a1, double *a2, double *a3, uint64_t a4)
{
  v4 = a4;
  BlueFin::GlPeShrimpKf::UpdatePlacementContext(a1, a2, a3, a4);
  v8 = *(a1 + 8);
  if (v8)
  {
    if (v8 == 2)
    {
      BlueFin::GlPeShrimpKf::DoInitDoneSensor(a1, a2, a3, v4);
    }

    else
    {
      if (v8 != 1)
      {
        DeviceFaultNotify("glpe_shrimpkf.cpp", 1466, "SensorUpdate", "false");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_shrimpkf.cpp", 1466, "false");
      }

      BlueFin::GlPeShrimpKf::DoInitTiltSensor(a1, a2, a3, v4);
    }
  }

  *(a1 + 5040) = 1;
  *(a1 + 4856) = v4;
  if (*(a1 + 5042) == 1)
  {
    *(a1 + 5032) = sqrt(*(a1 + *(*a1 - 24) + 112) * *(a1 + *(*a1 - 24) + 112) + *(a1 + *(*a1 - 24) + 104) * *(a1 + *(*a1 - 24) + 104));
    *(a1 + 5042) = 0;
    *(a1 + 4920) = 0u;
    *(a1 + 4936) = 0u;
    *(a1 + 4952) = 0u;
    *(a1 + 4968) = 0u;
  }

  return *(a1 + 8) != 2 || *(a1 + 5816) || (*(a1 + 4864) - v4 + ((*(a1 + 4656) + 1.0) * 1000.0)) > 25;
}

void BlueFin::GlPeShrimpKf::UpdatePlacementContext(uint64_t a1, double *a2, double *a3, int a4)
{
  v5 = *a3 - *(a1 + 4632);
  v6 = a3[1] - *(a1 + 4640);
  v7 = a3[2] - *(a1 + 4648);
  v8 = (a4 - *(a1 + 4856)) * 0.001;
  if (v5 >= 0.0)
  {
    v9 = *a3 - *(a1 + 4632);
  }

  else
  {
    v9 = -v5;
  }

  v10 = v9 * 57.2957795;
  v11 = v9 * 57.2957795 < 200.0;
  v12 = -v6;
  v13 = -v7;
  if (v11 && (v6 >= 0.0 ? (v14 = a3[1] - *(a1 + 4640)) : (v14 = -v6), v14 * 57.2957795 < 200.0 && (v7 >= 0.0 ? (v15 = a3[2] - *(a1 + 4648)) : (v15 = -v7), v15 * 57.2957795 < 200.0)))
  {
    *(a1 + 470) = 0;
  }

  else
  {
    if (v10 >= 200.0)
    {
      v16 = *(a1 + 470);
      *(a1 + 470) = v16 + 1;
      if (v10 >= 400.0)
      {
        *(a1 + 470) = v16 + 2;
      }
    }

    if (v6 >= 0.0)
    {
      v12 = v6;
    }

    v17 = v12 * 57.2957795;
    if (v17 >= 200.0)
    {
      v18 = *(a1 + 470);
      *(a1 + 470) = v18 + 1;
      if (v17 >= 400.0)
      {
        *(a1 + 470) = v18 + 2;
      }
    }

    if (v7 >= 0.0)
    {
      v13 = v7;
    }

    v19 = v13 * 57.2957795;
    if (v19 >= 200.0)
    {
      v20 = *(a1 + 470);
      *(a1 + 470) = v20 + 1;
      if (v19 >= 400.0)
      {
        *(a1 + 470) = v20 + 2;
      }
    }
  }

  if (v8 >= 0.5 || (v21 = sqrt(v6 * v6 + v5 * v5 + v7 * v7) * 57.2957795, v21 <= 60.0) || (v22 = *(a1 + 471), v22 > 0x15))
  {
    v24 = 0;
    *(a1 + 471) = 0;
    *(a1 + 472) = 0;
  }

  else
  {
    *(a1 + 471) = v22 + 1;
    v23 = *(a1 + 472) + v21 * v8;
    *(a1 + 472) = v23;
    v24 = v23 > 60.0;
  }

  v25 = 0;
  v26 = (a1 + 464);
  v27 = a1 + 512;
  do
  {
    v28 = v5;
    if (v25)
    {
      if (v25 == 1)
      {
        v28 = v6;
      }

      else
      {
        v28 = v7;
      }
    }

    if (v28 < 0.0)
    {
      v28 = -v28;
    }

    if (v8 >= 0.5 || v28 < 0.523598776 || (v29 = *(v27 + v25), v29 > 0x15))
    {
      *(v27 + v25) = 0;
      v32 = (a1 + 480);
      if (v25)
      {
        if (v25 == 1)
        {
          v32 = (a1 + 488);
        }

        else
        {
          v32 = (a1 + 496);
        }
      }

      *v32 = 0;
    }

    else
    {
      *(v27 + v25) = v29 + 1;
      v30 = v5;
      v31 = (a1 + 480);
      if (v25)
      {
        if (v25 == 1)
        {
          v30 = v6;
        }

        else
        {
          v30 = v7;
        }

        if (v25 == 1)
        {
          v31 = (a1 + 488);
        }

        else
        {
          v31 = (a1 + 496);
        }
      }

      *v31 = *v31 + v30 * v8;
    }

    ++v25;
  }

  while (v25 != 3);
  for (i = 0; i != 3; ++i)
  {
    if (*(v27 + i) <= 0xBu)
    {
      v34 = (a1 + 480);
      if (i)
      {
        if (i == 1)
        {
          v34 = (a1 + 488);
        }

        else
        {
          v34 = (a1 + 496);
        }
      }

      v35 = *v34;
      if (*v34 < 0.0)
      {
        v35 = -*v34;
      }

      if (v35 >= 0.741764932)
      {
        goto LABEL_73;
      }
    }

    v36 = (a1 + 480);
    if (i)
    {
      if (i == 1)
      {
        v36 = (a1 + 488);
      }

      else
      {
        v36 = (a1 + 496);
      }
    }

    v37 = *v36;
    if (*v36 < 0.0)
    {
      v37 = -*v36;
    }

    if (v37 >= 1.04719755)
    {
LABEL_73:
      *(a1 + 469) = 1;
    }
  }

  if (*(a1 + 470) > 2u || v24)
  {
    *(a1 + 469) = 1;
  }

  v38 = a2[1] - *(a1 + 4616);
  v39 = a2[2] - *(a1 + 4624);
  *v56 = *a2 - *(a1 + 4608);
  v57 = v38;
  v58 = v39;
  if (*(a1 + 467))
  {
    v40 = *v26;
LABEL_79:
    if (*&v56[2 * *(a1 + 465) - 2] * v40 < 0.0)
    {
      *(a1 + 468) = 1;
    }
  }

  else
  {
    v41 = v56;
    v42 = 1;
    while (1)
    {
      v43 = *v41;
      v44 = -*v41;
      if (*v41 >= 0.0)
      {
        v44 = *v41;
      }

      if (v44 > 6.9)
      {
        break;
      }

      ++v42;
      v41 += 4;
      if (v42 == 4)
      {
        v45 = *(a1 + 466);
        goto LABEL_95;
      }
    }

    if (*(a1 + 465))
    {
      if (*(a1 + 465) != v42)
      {
        goto LABEL_100;
      }
    }

    else
    {
      *(a1 + 465) = v42;
    }

    v45 = *(a1 + 466) + 1;
    *(a1 + 466) = v45;
    v46 = *(a1 + 464);
    if (v43 > 0.0)
    {
      v47 = v46 + 1;
    }

    else
    {
      v47 = v46 - 1;
    }

    *(a1 + 464) = v47;
LABEL_95:
    if (v45 < 0x3Du)
    {
      goto LABEL_101;
    }

    v40 = *v26;
    v48 = *v26;
    if (v48 < 0)
    {
      v48 = -v48;
    }

    if (v48 >= 0x3D)
    {
      *(a1 + 467) = 1;
      goto LABEL_79;
    }

LABEL_100:
    *(a1 + 536) = 0;
    *(a1 + 520) = 0u;
    *v26 = 0u;
    *(a1 + 480) = 0u;
    *(a1 + 496) = 0u;
    *(a1 + 511) = 0;
  }

LABEL_101:
  v61[16] = 0.0;
  v61[0] = v5;
  v61[4] = v6;
  v61[8] = v7;
  BlueFin::QuaternionD::rotVec((a1 + 4688), v61, v59);
  v49 = 0;
  v50 = *(a1 + 5224);
  if (v8 > 2.0)
  {
    goto LABEL_118;
  }

  v51 = *(v50 + 24);
  v52 = sqrt(v60 * v60 + v59[0] * v59[0]);
  v53 = v52;
  if (v51 == 2)
  {
    goto LABEL_110;
  }

  if (v53 <= 0.523598776)
  {
    if (v53 >= 0.174532925)
    {
      *(a1 + 528) = 0;
    }

    else
    {
      *(a1 + 520) = 0;
      *(a1 + 536) = 0;
    }
  }

  else
  {
    *(a1 + 537) = 0;
    *(a1 + 528) = 0;
    v54 = v8 + *(a1 + 520);
    *(a1 + 520) = v54;
    if (v54 > 1.0)
    {
      *(a1 + 536) = 1;
      *(a1 + 520) = 0;
    }
  }

  if (v51 != 1)
  {
LABEL_110:
    if (v53 >= 0.174532925)
    {
      *(a1 + 528) = 0;
    }

    else
    {
      *(a1 + 536) = 0;
      v55 = v8 + *(a1 + 528);
      *(a1 + 528) = v55;
      if (v55 > 2.0)
      {
        *(a1 + 537) = 1;
        *(a1 + 520) = 0u;
      }
    }
  }

  if (*(a1 + 468) & 1) != 0 || (*(a1 + 469) & 1) != 0 || (*(a1 + 536))
  {
    v49 = 2;
LABEL_118:
    *(v50 + 24) = v49;
    return;
  }

  v49 = *(a1 + 537);
  if (v49 == 1)
  {
    goto LABEL_118;
  }
}

double BlueFin::QuaternionD::rotVec(double *a1, double *a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = *a1 + *a1;
  v5 = v4 * v3;
  v6 = a1[2];
  v7 = a1[3];
  v8 = v4 * v6;
  v9 = v4 * v7;
  v10 = (v3 + v3) * v6;
  v11 = (v3 + v3) * v7;
  v12 = v6 + v6;
  v13 = v6 * (v6 + v6);
  v14 = v12 * v7;
  v15 = v7 * (v7 + v7);
  v16 = *a2 * (v10 + v9) + 0.0;
  v17 = a2[4];
  v18 = *a2 * (1.0 - v13 - v15) + 0.0 + v17 * (v10 - v9);
  v19 = 1.0 - v3 * (v3 + v3);
  v20 = *a2 * (v11 - v8) + 0.0 + v17 * (v5 + v14);
  v21 = a2[8];
  *(a3 + 128) = 0x100000003;
  *a3 = v18 + v21 * (v8 + v11);
  result = v20 + v21 * (v19 - v13);
  *(a3 + 32) = v16 + v17 * (v19 - v15) + v21 * (v14 - v5);
  *(a3 + 64) = result;
  return result;
}

uint64_t BlueFin::GlUtils::Report(uint64_t this, const char *a2)
{
  v2 = this;
  v3 = BlueFin::GlUtils::m_pInstance;
  v4 = this;
  if (!this)
  {
    v4 = *(BlueFin::GlUtils::m_pInstance + 1240);
  }

  v5 = *(BlueFin::GlUtils::m_pInstance + 1092) - *(BlueFin::GlUtils::m_pInstance + 1236);
  v6 = 20;
  v7 = (BlueFin::GlUtils::m_pInstance + 1408);
  do
  {
    v8 = *(v7 - 20);
    if (v8)
    {
      this = v8(*v7, v4);
    }

    ++v7;
    --v6;
  }

  while (v6);
  v9 = *(v3 + 1248);
  if (v9)
  {
    this = v9(*(v3 + 1408), 0);
  }

  if (*(v3 + 1568))
  {
    this = GlCustomLog(12, "</EXPERIMENT_%s %ums end>\n", *(v3 + 1240), v5);
  }

  v10 = BlueFin::GlUtils::m_pInstance;
  v11 = *(BlueFin::GlUtils::m_pInstance + 1092);
  *(BlueFin::GlUtils::m_pInstance + 1236) = v11;
  *(v10 + 1232) = v11 + 59950;
  if (v2)
  {
    *(v3 + 1240) = v2;
  }

  return this;
}

_DWORD *BlueFin::GlPePlatfStatMgr::ReportStatic(_DWORD *this, void *a2, const char *a3)
{
  if (this)
  {
    v3 = this;
    this = GlCustomLog(13, "GLP,DTIN,%u,%u,DTOUT,%u,%u,HATMD,%d\n", this[11], this[13], this[12], this[14], this[40]);
    *(v3 + 13) = 0;
    *(v3 + 11) = 0;
  }

  return this;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, double *a2)
{
  v7[6] = *MEMORY[0x29EDCA608];
  v7[1] = 0;
  v7[3] = 0;
  v7[0] = BlueFin::GlDbgCodec::Read;
  v7[2] = BlueFin::GlDbgCodec::Verify;
  v7[4] = BlueFin::GlDbgCodec::Write;
  v7[5] = 0;
  v2 = &v7[2 * *(this + 143)];
  v3 = *v2;
  v4 = v2[1];
  v5 = (this + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, a2);
}

BOOL BlueFin::GlPeExtLoc::WaitPosLocVerification(BlueFin::GlPeExtLoc *this, int a2, int a3, char a4)
{
  result = 0;
  if (a2 ^ 1 | a3) == 1 && (*(this + 12))
  {
    v6 = *(this + 17);
    result = 0;
    if (v6)
    {
      if (*(v6 + 3008) == 1 && vaddvq_f64(vmulq_f64(*(v6 + 3040), *(v6 + 3040))) < 160000.0)
      {
        v7 = *(v6 + 3072);
        if (v7 == 1 || v7 == 2 && (a4 & 1) == 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *a1, __int16 *a2)
{
  v4 = *a2;
  result = BlueFin::GlDbgCodec::Rvw(a1, a2);
  v6 = *a2;
  if (v6 > v4)
  {
    DeviceFaultNotify("gldebug_codec.cpp", 4569, "Rvw", "rValue.sSensNum <= ssOrgSensNum");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 4569, "rValue.sSensNum <= ssOrgSensNum");
  }

  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, (*(a2 + 1) + v7));
      ++v8;
      v7 += 3560;
    }

    while (v8 < *a2);
  }

  return result;
}

{
  v49 = *a2;
  BlueFin::GlDbgCodec::Rvw(a1, &v49);
  if (v49 >= 0x22u && (v49 - 100) >= 3u)
  {
    v44 = "GlExtSensorType::IsIntValidSensor(ucSensorType)";
    DeviceFaultNotify("gldebug_codec.cpp", 4292, "Rvw", "GlExtSensorType::IsIntValidSensor(ucSensorType)");
    v45 = 4292;
    goto LABEL_126;
  }

  v48 = 103;
  BlueFin::GlExtSensorType::SetFromInt(&v48, v49);
  if (v48 - 100 > 2)
  {
    Extended = BlueFin::GlExtSensorType::Get(&v48);
  }

  else
  {
    Extended = BlueFin::GlExtSensorType::GetExtended(&v48);
  }

  *a2 = Extended;
  v50 = *(a2 + 1);
  BlueFin::GlDbgCodec::Rvw(a1, &v50);
  if (*(a1 + 143))
  {
    v6 = *(a2 + 1);
  }

  else
  {
    v6 = v50;
    *(a2 + 1) = v50;
  }

  if (v6 > 2)
  {
    if ((v6 - 5) < 2 || v6 == 3)
    {
      BlueFin::GlDbgCodec::Rvw(a1, a2 + 1);
    }

    else
    {
      if (v6 != 4)
      {
LABEL_129:
        v44 = "0";
        DeviceFaultNotify("gldebug_codec.cpp", 4321, "Rvw", "0");
        v45 = 4321;
        goto LABEL_126;
      }

      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
    }
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
    }

    else if (v6 != 2)
    {
      goto LABEL_129;
    }
  }

  else
  {
    BlueFin::GlDbgCodec::Rvw(a1, a2 + 2);
  }

  if (v49 == 20)
  {
LABEL_127:
    v44 = "0";
    DeviceFaultNotify("gldebug_codec.cpp", 4435, "Rvw", "0");
    v45 = 4435;
    goto LABEL_126;
  }

  result = BlueFin::GlDbgCodec::Rvw(a1, a2 + 16);
  v8 = a2[16];
  if (v49 <= 0x63u)
  {
    switch(v49)
    {
      case 0u:
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 5u:
      case 6u:
      case 7u:
      case 0x19u:
      case 0x1Au:
      case 0x1Bu:
      case 0x1Cu:
        if (v8 < 1)
        {
          LOWORD(v11) = a2[16];
        }

        else
        {
          v9 = 0;
          v10 = (a2 + 24);
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v10 - 4);
            result = BlueFin::GlDbgCodec::Rvw(a1, v10);
            ++v9;
            v11 = a2[16];
            v10 += 22;
          }

          while (v9 < v11);
        }

        v14 = *a2;
        v15 = v14 - 3;
        v16 = v14 - 26;
        v18 = v15 < 3 || v16 < 3;
        if (v8 >= 1 && v18)
        {
          return BlueFin::GlDbgCodec::Rvw(a1, &a2[44 * (v11 - 1) + 44]);
        }

        return result;
      case 8u:
      case 9u:
        if (v8 >= 1)
        {
          v23 = 0;
          v24 = (a2 + 24);
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v24 - 4);
            BlueFin::GlDbgCodec::Rvw(a1, v24);
            BlueFin::GlDbgCodec::Rvw(a1, v24 + 1);
            BlueFin::GlDbgCodec::Rvw(a1, v24 + 2);
            BlueFin::GlDbgCodec::Rvw(a1, v24 + 3);
            result = BlueFin::GlDbgCodec::Rvw(a1, (v24 + 5));
            ++v23;
            v24 += 11;
          }

          while (v23 < a2[16]);
        }

        return result;
      case 0xAu:
      case 0x21u:
        if (v8 >= 1)
        {
          v21 = 0;
          v22 = a2 + 44;
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v22 - 24);
            BlueFin::GlDbgCodec::Rvw(a1, v22 - 5);
            BlueFin::GlDbgCodec::Rvw(a1, v22 - 4);
            BlueFin::GlDbgCodec::Rvw(a1, v22 - 3);
            result = BlueFin::GlDbgCodec::Rvw(a1, v22);
            ++v21;
            v22 += 44;
          }

          while (v21 < a2[16]);
        }

        return result;
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
        if (v8 >= 1)
        {
          v12 = 0;
          v13 = (a2 + 44);
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v13 - 24);
            BlueFin::GlDbgCodec::Rvw(a1, v13 - 10);
            result = BlueFin::GlDbgCodec::Rvw(a1, v13);
            ++v12;
            v13 += 22;
          }

          while (v12 < a2[16]);
        }

        return result;
      case 0x11u:
        if (v8 >= 1)
        {
          v39 = 0;
          v40 = a2 + 60;
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v40 - 40);
            v51 = *(v40 - 18);
            BlueFin::GlDbgCodec::Rvw(a1, &v51);
            if (!*(a1 + 143))
            {
              *(v40 - 18) = v51;
            }

            v52 = *v40;
            result = BlueFin::GlDbgCodec::Rvw(a1, &v52);
            if (!*(a1 + 143))
            {
              *v40 = v52;
            }

            ++v39;
            v40 += 44;
          }

          while (v39 < a2[16]);
        }

        return result;
      case 0x12u:
        if (v8 >= 1)
        {
          v29 = 0;
          v30 = a2 + 20;
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v30);
            v53 = *(v30 + 2);
            result = BlueFin::GlDbgCodec::Rvw(a1, &v53);
            if (!*(a1 + 143))
            {
              *(v30 + 2) = v53;
            }

            ++v29;
            v30 += 44;
          }

          while (v29 < a2[16]);
        }

        return result;
      case 0x13u:
        if (v8 >= 1)
        {
          v27 = 0;
          v28 = a2 + 20;
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v28);
            v54 = *(v28 + 2);
            result = BlueFin::GlDbgCodec::Rvw(a1, &v54);
            if (!*(a1 + 143))
            {
              *(v28 + 2) = v54;
            }

            ++v27;
            v28 += 44;
          }

          while (v27 < a2[16]);
        }

        return result;
      case 0x14u:
        goto LABEL_127;
      case 0x15u:
        if (v8 >= 1)
        {
          v31 = 0;
          v32 = (a2 + 44);
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v32 - 24);
            v55 = *(v32 - 10);
            BlueFin::GlDbgCodec::Rvw(a1, &v55);
            if (!*(a1 + 143))
            {
              *(v32 - 10) = v55;
            }

            BlueFin::GlDbgCodec::Rvw(a1, v32 - 9);
            result = BlueFin::GlDbgCodec::Rvw(a1, v32);
            ++v31;
            v32 += 22;
          }

          while (v31 < a2[16]);
        }

        return result;
      case 0x16u:
        if (v8 >= 1)
        {
          v25 = 0;
          v26 = (a2 + 44);
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v26 - 24);
            v56 = *(v26 - 10);
            BlueFin::GlDbgCodec::Rvw(a1, &v56);
            if (!*(a1 + 143))
            {
              *(v26 - 10) = v56;
            }

            BlueFin::GlDbgCodec::Rvw(a1, v26 - 9);
            result = BlueFin::GlDbgCodec::Rvw(a1, v26);
            ++v25;
            v26 += 22;
          }

          while (v25 < a2[16]);
        }

        return result;
      case 0x17u:
        if (v8 >= 1)
        {
          v33 = 0;
          v34 = (a2 + 44);
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v34 - 24);
            BlueFin::GlDbgCodec::Rvw(a1, v34 - 5);
            BlueFin::GlDbgCodec::Rvw(a1, v34 - 4);
            BlueFin::GlDbgCodec::Rvw(a1, v34 - 6);
            BlueFin::GlDbgCodec::Rvw(a1, v34 - 5);
            BlueFin::GlDbgCodec::Rvw(a1, v34 - 4);
            BlueFin::GlDbgCodec::Rvw(a1, v34 - 3);
            if ((*(*a1 + 112))(a1) < 0x3E)
            {
              if (!*(a1 + 143))
              {
                *(v34 - 2) = 0.0;
              }
            }

            else
            {
              BlueFin::GlDbgCodec::Rvw(a1, v34 - 2);
            }

            result = BlueFin::GlDbgCodec::Rvw(a1, v34);
            ++v33;
            v34 += 22;
          }

          while (v33 < a2[16]);
        }

        return result;
      case 0x18u:
        v44 = "false";
        DeviceFaultNotify("gldebug_codec.cpp", 4517, "Rvw", "false");
        v45 = 4517;
        goto LABEL_126;
      case 0x1Du:
        if (v8 < 1)
        {
          return result;
        }

        v41 = 0;
        v42 = (a2 + 36);
        break;
      case 0x1Eu:
      case 0x1Fu:
        v44 = "false";
        DeviceFaultNotify("gldebug_codec.cpp", 4384, "Rvw", "false");
        v45 = 4384;
        goto LABEL_126;
      case 0x20u:
        v44 = "false";
        DeviceFaultNotify("gldebug_codec.cpp", 4520, "Rvw", "false");
        v45 = 4520;
        goto LABEL_126;
      default:
        goto LABEL_133;
    }

    while (1)
    {
      BlueFin::GlDbgCodec::Rvw(a1, v42 - 16);
      BlueFin::GlDbgCodec::Rvw(a1, v42 - 3);
      v57 = *(v42 - 4);
      BlueFin::GlDbgCodec::Rvw(a1, &v57);
      if (*(a1 + 143))
      {
        v43 = *(v42 - 4);
      }

      else
      {
        v43 = v57;
        *(v42 - 4) = v57;
      }

      if (v43 == 2)
      {
        BlueFin::GlDbgCodec::Rvw(a1, v42 - 6);
        BlueFin::GlDbgCodec::Rvw(a1, v42 - 5);
        BlueFin::GlDbgCodec::Rvw(a1, v42 - 2);
        BlueFin::GlDbgCodec::Rvw(a1, v42 - 2);
        BlueFin::GlDbgCodec::Rvw(a1, v42 - 1);
        result = BlueFin::GlDbgCodec::Rvw(a1, v42);
      }

      else if (v43 == 1)
      {
        result = BlueFin::GlDbgCodec::Rvw(a1, (v42 - 3));
      }

      else
      {
        if (v43)
        {
          v44 = "false";
          DeviceFaultNotify("gldebug_codec.cpp", 4510, "Rvw", "false");
          v45 = 4510;
          goto LABEL_126;
        }

        result = BlueFin::GlDbgCodec::Rvw(a1, (v42 - 3));
      }

      ++v41;
      v42 += 22;
      if (v41 >= a2[16])
      {
        return result;
      }
    }
  }

  switch(v49)
  {
    case 'd':
      if (v8 >= 1)
      {
        v35 = 0;
        v36 = a2 + 44;
        do
        {
          BlueFin::GlDbgCodec::Rvw(a1, v36 - 24);
          v47 = *(v36 - 10);
          BlueFin::GlDbgCodec::Rvw(a1, &v47);
          if (!*(a1 + 143))
          {
            *(v36 - 10) = v47;
          }

          v46 = *v36;
          result = BlueFin::GlDbgCodec::Rvw(a1, &v46);
          if (!*(a1 + 143))
          {
            *v36 = v46;
          }

          ++v35;
          v36 += 44;
        }

        while (v35 < a2[16]);
      }

      break;
    case 'e':
      if (v8 >= 1)
      {
        v37 = 0;
        v38 = (a2 + 44);
        do
        {
          BlueFin::GlDbgCodec::Rvw(a1, v38 - 24);
          BlueFin::GlDbgCodec::Rvw(a1, v38 - 39);
          BlueFin::GlDbgCodec::Rvw(a1, v38 - 40);
          result = BlueFin::GlDbgCodec::Rvw(a1, v38);
          ++v37;
          v38 += 88;
        }

        while (v37 < a2[16]);
      }

      break;
    case 'f':
      if (v8 >= 1)
      {
        v19 = 0;
        v20 = (a2 + 32);
        do
        {
          BlueFin::GlDbgCodec::Rvw(a1, v20 - 12);
          BlueFin::GlDbgCodec::Rvw(a1, v20 - 2);
          BlueFin::GlDbgCodec::Rvw(a1, v20 - 1);
          result = BlueFin::GlDbgCodec::Rvw(a1, v20);
          ++v19;
          v20 += 88;
        }

        while (v19 < a2[16]);
      }

      break;
    default:
LABEL_133:
      v44 = "false";
      DeviceFaultNotify("gldebug_codec.cpp", 4561, "Rvw", "false");
      v45 = 4561;
LABEL_126:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", v45, v44);
  }

  return result;
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 1);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 2);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 3);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 4);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 5);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 6);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 7);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 8);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 9);

  return BlueFin::GlDbgCodec::Rvw(a1, a2 + 10);
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 1);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 2);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 3);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 4);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 5);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 6);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 7);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 8);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 9);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 10);

  return BlueFin::GlDbgCodec::Rvw(a1, a2 + 11);
}

uint64_t BlueFin::GlExtSensorType::Get(BlueFin::GlExtSensorType *this)
{
  result = *this;
  if (result >= 0x23)
  {
    DeviceFaultNotify("glpe_hula.cpp", 298, "Get", "m_ucType <= _NUMOF(GL_EXT_SENS_TYPE)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_hula.cpp", 298, "m_ucType <= _NUMOF(GL_EXT_SENS_TYPE)");
  }

  return result;
}

_BYTE *BlueFin::GlExtSensorType::SetFromInt(_BYTE *this, unsigned int a2)
{
  if (a2 >= 0x22 && a2 - 100 >= 3)
  {
    DeviceFaultNotify("glpe_hula.cpp", 312, "SetFromInt", "IsIntValidSensor(ucType)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_hula.cpp", 312, "IsIntValidSensor(ucType)");
  }

  *this = a2;
  return this;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, unint64_t *a2)
{
  v7[6] = *MEMORY[0x29EDCA608];
  v7[1] = 0;
  v7[3] = 0;
  v7[0] = BlueFin::GlDbgCodec::Read;
  v7[2] = BlueFin::GlDbgCodec::Verify;
  v7[4] = BlueFin::GlDbgCodec::Write;
  v7[5] = 0;
  v2 = &v7[2 * *(this + 143)];
  v3 = *v2;
  v4 = v2[1];
  v5 = (this + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, a2);
}

uint64_t BlueFin::GlPeGnssSvsInfoMgr::getSvPosToa(int a1, BlueFin::GlPeGnssTime *this, double *a3, double *a4)
{
  result = 0;
  v9 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[a1];
  if (v9 > 4)
  {
    switch(v9)
    {
      case 5:
        v35 = 0;
        v34 = &off_2A1F0E4D0;
        Bds = BlueFin::GlPeGnssTime::GetBds(this, &v34);
        v18 = (v34[4])(&v34, Bds);
        LODWORD(v19) = v35;
        *a3 = v19 * 2.32830644e-10 + v18;
        v35 = 0;
        v34 = &off_2A1F0E4D0;
        v13.n128_f64[0] = BlueFin::GlPeGnssTime::GetBds(this, &v34);
        break;
      case 6:
        v35 = 0;
        v34 = &off_2A1F0E480;
        Gal = BlueFin::GlPeGnssTime::GetGal(this, &v34);
        v29 = (v34[4])(&v34, Gal);
        LODWORD(v30) = v35;
        *a3 = v30 * 2.32830644e-10 + v29;
        v35 = 0;
        v34 = &off_2A1F0E480;
        v13.n128_f64[0] = BlueFin::GlPeGnssTime::GetGal(this, &v34);
        break;
      case 7:
        v35 = 0;
        v34 = &off_2A1F0DFC8;
        Nic = BlueFin::GlPeGnssTime::GetNic(this, &v34);
        v15 = (v34[4])(&v34, Nic);
        LODWORD(v16) = v35;
        *a3 = v16 * 2.32830644e-10 + v15;
        v35 = 0;
        v34 = &off_2A1F0DFC8;
        v13.n128_f64[0] = BlueFin::GlPeGnssTime::GetNic(this, &v34);
        break;
      default:
        return result;
    }
  }

  else
  {
    if (v9)
    {
      if (v9 == 2)
      {
        v35 = 0;
        v34 = &off_2A1F0E430;
        Glns = BlueFin::GlPeGnssTime::GetGlns(this, &v34);
        v21 = (v34[4])(&v34, Glns);
        LODWORD(v22) = v35;
        *a3 = v22 * 2.32830644e-10 + v21;
        v35 = 0;
        v34 = &off_2A1F0E430;
        v23.n128_f64[0] = BlueFin::GlPeGnssTime::GetGlns(this, &v34);
        v24 = 0;
        if (BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
        {
          v24 = HIDWORD(v35) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
        }

        v25 = (v34[4])(&v34, v23);
        if (v24)
        {
          v27 = 10799.0;
        }

        else
        {
          v27 = (v25 % 0x15180);
        }

        LODWORD(v26) = v35;
        v33 = v27 + v26 * 2.32830644e-10;
        goto LABEL_18;
      }

      if (v9 != 3)
      {
        return result;
      }
    }

    v35 = 0;
    v34 = &off_2A1F0B5F0;
    Gps = BlueFin::GlPeGnssTime::GetGps(this, &v34);
    v11 = (v34[4])(&v34, Gps);
    LODWORD(v12) = v35;
    *a3 = v12 * 2.32830644e-10 + v11;
    v35 = 0;
    v34 = &off_2A1F0B5F0;
    v13.n128_f64[0] = BlueFin::GlPeGnssTime::GetGps(this, &v34);
  }

  v31 = (v34[4])(&v34, v13);
  LODWORD(v32) = v35;
  v33 = v32 * 2.32830644e-10 + (v31 % 0x93A80);
LABEL_18:
  *a4 = v33;
  return 1;
}

uint64_t BlueFin::GlPeAtmosDelays::GlPeIonoSrc2GlGnssIonoDelaySrc(int a1)
{
  if ((a1 - 2) > 8)
  {
    return 0;
  }

  else
  {
    return dword_298A41BD0[a1 - 2];
  }
}

float BlueFin::GlPeGpsEphemerisBase::GetAccuracyM(BlueFin::GlPeGpsEphemerisBase *this)
{
  v1 = (*(*this + 192))(this, 4);
  if (v1 <= 0xEu)
  {
    return BlueFin::GlPeGpsEphemerisBase::GetUraM(unsigned char)::afUraTbl[v1 & 0xF];
  }

  else
  {
    return 8192.0;
  }
}

uint64_t BlueFin::GlPeGloEphemeris::GetCmpSignedField(BlueFin::GlPeGloEphemeris *this, int a2)
{
  v2 = *(this + 2);
  switch(a2)
  {
    case 4:
      return (*v2 >> 27);
    case 11:
      v19 = v2[4];
      v5 = (v19 >> 6) & 0x7FF;
      v6 = v19 >> 6;
      v7 = (v19 & 0x10000) == 0;
      goto LABEL_16;
    case 12:
      HIDWORD(v14) = v2[6];
      LODWORD(v14) = v2[7];
      v10 = v14 >> 11;
      v15 = v10 >> 10;
      v16 = (v10 >> 10) & 0x1FFFFF;
      goto LABEL_21;
    case 13:
      HIDWORD(v18) = v2[1];
      LODWORD(v18) = v2[2];
      v10 = v18 >> 16;
      goto LABEL_14;
    case 14:
      HIDWORD(v12) = v2[3];
      LODWORD(v12) = v2[4];
      v10 = v12 >> 13;
      goto LABEL_14;
    case 15:
      HIDWORD(v13) = v2[5];
      LODWORD(v13) = v2[6];
      v10 = v13 >> 6;
LABEL_14:
      v15 = v10 >> 5;
      v16 = (v10 >> 5) & 0x3FFFFFF;
      goto LABEL_21;
    case 16:
      HIDWORD(v20) = *v2;
      LODWORD(v20) = v2[1];
      v10 = v20 >> 13;
      goto LABEL_20;
    case 17:
      HIDWORD(v17) = v2[2];
      LODWORD(v17) = v2[3];
      v10 = v17 >> 10;
      goto LABEL_20;
    case 18:
      HIDWORD(v11) = v2[4];
      LODWORD(v11) = v2[5];
      v10 = v11 >> 3;
LABEL_20:
      v15 = v10 >> 8;
      v16 = (v10 >> 8) & 0x7FFFFF;
LABEL_21:
      if ((v10 & 0x80000000) != 0)
      {
        return -v16;
      }

      else
      {
        return v15;
      }

    case 19:
      v8 = v2[1];
      goto LABEL_6;
    case 20:
      v9 = v2[3];
      v5 = (v9 >> 13) & 0x1F;
      v6 = (v9 >> 13) & 0xF;
      v7 = (v9 & 0x20000) == 0;
      goto LABEL_16;
    case 21:
      v4 = v2[5];
      v5 = (v4 >> 6) & 0x1F;
      v6 = (v4 >> 6) & 0xF;
      v7 = (v4 & 0x400) == 0;
      goto LABEL_16;
    case 28:
      v8 = v2[7];
LABEL_6:
      v5 = HIWORD(v8) & 0x1F;
      v6 = HIWORD(v8) & 0xF;
      v7 = (v8 & 0x100000) == 0;
LABEL_16:
      if (v7)
      {
        return v5;
      }

      else
      {
        return -v6;
      }

    default:
      DeviceFaultNotify("glpe_glnephmgr.cpp", 520, "GetCmpSignedField", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glnephmgr.cpp", 520, "0");
  }
}

float BlueFin::GlPeGalEphemeris::GetAccuracyM(BlueFin::GlPeGalEphemeris *this)
{
  v1 = (*(*this + 192))(this, 4);
  if (v1 <= 0x7Du)
  {
    return (BlueFin::GlPeGalEphemeris::GetUraM(unsigned char)const::ausOffsetCm[v1 / 0x19u] + BlueFin::GlPeGalEphemeris::GetUraM(unsigned char)const::ausResolutionCm[v1 / 0x19u] * (v1 % 0x19u)) * 0.01;
  }

  else
  {
    return 8192.0;
  }
}

void std::allocator_traits<std::allocator<gnss::SvInfo>>::destroy[abi:ne200100]<gnss::SvInfo,0>(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    MEMORY[0x29C292F70](v3, 0x1000C40AC4F46D1);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;

    operator delete(v4);
  }
}

uint64_t BlueFin::GlPeGloFcnOsnMgr::OsnVerifier::ageCache(BlueFin::GlPeGloFcnOsnMgr::OsnVerifier *this, int a2)
{
  v2 = 0;
  v3 = 0;
  v4 = this + 12;
  v5 = -1;
  v6 = -1;
  do
  {
    v7 = *&v4[4 * v2];
    if (v7 == -7200001)
    {
      goto LABEL_5;
    }

    v8 = a2 - v7;
    if (v8 >= 0x36EE81)
    {
      *&v4[4 * v2] = -7200001;
LABEL_5:
      v9 = v2;
      goto LABEL_9;
    }

    if (v8 > v3)
    {
      v6 = v2;
      v3 = v8;
    }

    v9 = -1;
LABEL_9:
    if (v5 == -1)
    {
      v5 = v9;
    }

    ++v2;
  }

  while (v2 != 3);
  if (v5 == -1)
  {
    v5 = v6;
    if (v6 == -1)
    {
      DeviceFaultNotify("glpe_glofcnosnmgr.cpp", 138, "ageCache", "scOldestIndex != -1");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glofcnosnmgr.cpp", 138, "scOldestIndex != -1");
    }
  }

  *(this + 1) = a2;
  return v5;
}

uint64_t BlueFin::GlPeGnssSvsInfoMgr::getSvAzEl(uint64_t result, int a2, unsigned __int8 a3, float *a4, float *a5)
{
  if (result)
  {
    v5 = *(result + 44);
    if (v5 < 1)
    {
      return 0;
    }

    else
    {
      for (i = (result + 54); BlueFin::GlImplGnss::m_aucEnabledGnssTable[a2] != *(i - 4) || *(i - 3) != a3; i += 20)
      {
        if (!--v5)
        {
          return 0;
        }
      }

      *a4 = *(i - 1);
      *a5 = *i;
      return 1;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeGloEphemeris::GetPvt(BlueFin::GlPeEphemeris *a1, uint64_t a2, uint64_t a3, double a4)
{
  v114 = *MEMORY[0x29EDCA608];
  v6 = (*(*a1 + 64))(a1, a2, 1);
  if (fabs(v6) >= 7200.0)
  {
    DeviceFaultNotify("glpe_glnephmgr.cpp", 257, "GetPvt", "FABS_D(dDtSecs) < 7200.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glnephmgr.cpp", 257, "FABS_D(dDtSecs) < 7200.0");
  }

  ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 12);
  v8 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 11);
  v9 = (*(*a1 + 192))(a1, 27);
  if (v9 - 1 > 0x17)
  {
    return 0;
  }

  v10 = *(a1 + 9);
  if (!v10)
  {
    return 0;
  }

  v11 = ScaledFloatingField - v8 * v6;
  v12 = v10 + 88 * v9;
  v13 = (*(*a1 + 192))(a1, 9);
  v16 = *(v12 - 88);
  v15 = v12 - 88;
  v14 = v16;
  if (v16 != 255 && v14 == v13)
  {
    v18 = *(v15 + 80);
  }

  else
  {
    *v15 = v13;
    *(v15 + 8) = 0;
    *(v15 + 16) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 13);
    *(v15 + 24) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 14);
    *(v15 + 32) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 15);
    *(v15 + 40) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 16);
    *(v15 + 48) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 17);
    *(v15 + 56) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 18);
    *(v15 + 64) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 19);
    *(v15 + 72) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 20);
    v18 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 21);
    *(v15 + 80) = v18;
  }

  v20 = v6 + v11;
  memset(v113, 0, sizeof(v113));
  memset(v112, 0, sizeof(v112));
  memset(v111, 0, sizeof(v111));
  memset(v110, 0, sizeof(v110));
  v21 = *(v15 + 32);
  v22 = *(v15 + 48);
  v107 = *(v15 + 16);
  *v108 = v21;
  *&v108[16] = v22;
  memset(v109, 0, sizeof(v109));
  v23 = *(v15 + 8);
  v24 = *(v15 + 64);
  if (v23 > v6 + v11)
  {
    v25 = -60.0;
  }

  else
  {
    v25 = 60.0;
  }

  __asm { FMOV            V1.2D, #2.0 }

  v30 = *(v15 + 8);
  if (_NF == _VF)
  {
    v31 = vdupq_lane_s64(COERCE__INT64(v25 * 0.5), 0);
    v32 = vdupq_lane_s64(*&v25, 0);
    v33 = vdupq_lane_s64(COERCE__INT64(v25 / 6.0), 0);
    v30 = *(v15 + 8);
    do
    {
      v34 = 0;
      v35 = 1.0 / (COERCE_DOUBLE(*&vmulq_f64(v107, v107).f64[1]) + v107.f64[0] * v107.f64[0] + *v108 * *v108);
      v36 = v35 * sqrt(v35);
      v37 = *v108 * (*v108 * -5.0) * v35 + 1.0;
      v38 = v35 * -2.63327758e10;
      v39 = (v37 * v38 + -398600.44) * v36;
      *&v113[1] = *&v108[24];
      *(&v113[2] + 1) = v18 + (v39 + (v38 + v38) * v36) * *v108;
      v113[0] = *&v108[8];
      v40 = vmulq_f64(*&v108[8], xmmword_298A3C220);
      *(&v113[1] + 8) = vaddq_f64(v24, vmlaq_n_f64(vextq_s8(v40, v40, 8uLL), v107, v39 + 0.00000000531749412));
      do
      {
        v109[v34] = vmlaq_f64(*(&v107 + v34 * 16), v113[v34], v31);
        ++v34;
      }

      while (v34 != 3);
      v41 = 0;
      v42 = 1.0 / (COERCE_DOUBLE(*&vmulq_f64(*v109, *v109).f64[1]) + v109[0].f64[0] * v109[0].f64[0] + v109[1].f64[0] * v109[1].f64[0]);
      v43 = v42 * sqrt(v42);
      v44 = v109[1].f64[0] * (v109[1].f64[0] * -5.0) * v42 + 1.0;
      v45 = v42 * -2.63327758e10;
      v46 = (v44 * v45 + -398600.44) * v43;
      *&v112[1] = v109[2].f64[1];
      *(&v112[2] + 1) = v18 + (v46 + (v45 + v45) * v43) * v109[1].f64[0];
      v112[0] = *(&v109[1] + 8);
      v47 = vmulq_f64(*(&v109[1] + 8), xmmword_298A3C220);
      *(&v112[1] + 8) = vaddq_f64(v24, vmlaq_n_f64(vextq_s8(v47, v47, 8uLL), v109[0], v46 + 0.00000000531749412));
      do
      {
        v109[v41] = vmlaq_f64(*(&v107 + v41 * 16), v112[v41], v31);
        ++v41;
      }

      while (v41 != 3);
      v48 = 0;
      v49 = 1.0 / (COERCE_DOUBLE(*&vmulq_f64(*v109, *v109).f64[1]) + v109[0].f64[0] * v109[0].f64[0] + v109[1].f64[0] * v109[1].f64[0]);
      v50 = v49 * sqrt(v49);
      v51 = v109[1].f64[0] * (v109[1].f64[0] * -5.0) * v49 + 1.0;
      v52 = v49 * -2.63327758e10;
      v53 = (v51 * v52 + -398600.44) * v50;
      *&v111[1] = v109[2].f64[1];
      *(&v111[2] + 1) = v18 + (v53 + (v52 + v52) * v50) * v109[1].f64[0];
      v111[0] = *(&v109[1] + 8);
      v54 = vmulq_f64(*(&v109[1] + 8), xmmword_298A3C220);
      *(&v111[1] + 8) = vaddq_f64(v24, vmlaq_n_f64(vextq_s8(v54, v54, 8uLL), v109[0], v53 + 0.00000000531749412));
      do
      {
        v109[v48] = vmlaq_f64(*(&v107 + v48 * 16), v111[v48], v32);
        ++v48;
      }

      while (v48 != 3);
      v55 = 0;
      *&v110[1] = v109[2].f64[1];
      v56 = 1.0 / (COERCE_DOUBLE(*&vmulq_f64(*v109, *v109).f64[1]) + v109[0].f64[0] * v109[0].f64[0] + v109[1].f64[0] * v109[1].f64[0]);
      v57 = v56 * sqrt(v56);
      v58 = ((v109[1].f64[0] * (v109[1].f64[0] * -5.0) * v56 + 1.0) * (v56 * -2.63327758e10) + -398600.44) * v57;
      *(&v110[2] + 1) = v18 + (v58 + (v56 * -2.63327758e10 + v56 * -2.63327758e10) * v57) * v109[1].f64[0];
      v110[0] = *(&v109[1] + 8);
      v59 = vmulq_f64(*(&v109[1] + 8), xmmword_298A3C220);
      *(&v110[1] + 8) = vaddq_f64(v24, vmlaq_n_f64(vextq_s8(v59, v59, 8uLL), v109[0], v58 + 0.00000000531749412));
      do
      {
        *(&v107 + v55 * 16) = vmlaq_f64(*(&v107 + v55 * 16), vaddq_f64(vmlaq_f64(vmlaq_f64(v113[v55], _Q1, v112[v55]), _Q1, v111[v55]), v110[v55]), v33);
        ++v55;
      }

      while (v55 != 3);
      v30 = v25 + v30;
    }

    while (vabdd_f64(v20, v30) >= 60.0);
  }

  if (v30 == v23)
  {
    v61 = v20 - v23;
  }

  else
  {
    *(v15 + 8) = v30;
    v60 = *v108;
    *(v15 + 16) = v107;
    *(v15 + 32) = v60;
    *(v15 + 48) = *&v108[16];
    v61 = v20 - v30;
  }

  v62 = v107;
  v63 = *v108;
  v64 = *&v108[8];
  v65 = *&v108[24];
  if (v61 != 0.0)
  {
    v66 = 0;
    v67 = 1.0 / (COERCE_DOUBLE(*&vmulq_f64(v107, v107).f64[1]) + v107.f64[0] * v107.f64[0] + *v108 * *v108);
    v68 = v67 * sqrt(v67);
    v69 = ((*v108 * (*v108 * -5.0) * v67 + 1.0) * (v67 * -2.63327758e10) + -398600.44) * v68;
    v113[0] = *&v108[8];
    *(&v113[2] + 1) = v18 + (v69 + (v67 * -2.63327758e10 + v67 * -2.63327758e10) * v68) * *v108;
    *&v113[1] = *&v108[24];
    v70 = vmulq_f64(*&v108[8], xmmword_298A3C220);
    *(&v113[1] + 8) = vaddq_f64(v24, vmlaq_n_f64(vextq_s8(v70, v70, 8uLL), v107, v69 + 0.00000000531749412));
    v71 = vdupq_lane_s64(COERCE__INT64(v61 * 0.5), 0);
    do
    {
      v109[v66] = vmlaq_f64(*(&v107 + v66 * 16), v113[v66], v71);
      ++v66;
    }

    while (v66 != 3);
    v72 = 0;
    v73 = 1.0 / (v109[0].f64[1] * v109[0].f64[1] + v109[0].f64[0] * v109[0].f64[0] + v109[1].f64[0] * v109[1].f64[0]);
    v74 = v73 * sqrt(v73);
    v75 = v109[1].f64[0] * (v109[1].f64[0] * -5.0) * v73 + 1.0;
    v76 = v73 * -2.63327758e10;
    v77 = (v75 * v76 + -398600.44) * v74;
    v78 = v18 + (v77 + (v76 + v76) * v74) * v109[1].f64[0];
    *(v112 + 8) = v109[2];
    v79 = v77 + 0.00000000531749412;
    *v112 = v109[1].f64[1];
    *(&v112[2] + 1) = v78;
    *(&v112[1] + 1) = v24.f64[0] + 0.0001458423 * v109[2].f64[0] + v79 * v109[0].f64[0];
    *&v112[2] = v24.f64[1] + v109[1].f64[1] * -0.0001458423 + v79 * v109[0].f64[1];
    do
    {
      v109[v72] = vmlaq_f64(*(&v107 + v72 * 16), v112[v72], v71);
      ++v72;
    }

    while (v72 != 3);
    v80 = 0;
    v81 = 1.0 / (v109[0].f64[1] * v109[0].f64[1] + v109[0].f64[0] * v109[0].f64[0] + v109[1].f64[0] * v109[1].f64[0]);
    v82 = v81 * sqrt(v81);
    v83 = v109[1].f64[0] * (v109[1].f64[0] * -5.0) * v81 + 1.0;
    v84 = v81 * -2.63327758e10;
    v85 = (v83 * v84 + -398600.44) * v82;
    v86 = v18 + (v85 + (v84 + v84) * v82) * v109[1].f64[0];
    *(v111 + 8) = v109[2];
    v87 = v85 + 0.00000000531749412;
    *v111 = v109[1].f64[1];
    *(&v111[2] + 1) = v86;
    *(&v111[1] + 1) = v24.f64[0] + 0.0001458423 * v109[2].f64[0] + v87 * v109[0].f64[0];
    *&v111[2] = v24.f64[1] + v109[1].f64[1] * -0.0001458423 + v87 * v109[0].f64[1];
    v88 = vdupq_lane_s64(*&v61, 0);
    do
    {
      v109[v80] = vmlaq_f64(*(&v107 + v80 * 16), v111[v80], v88);
      ++v80;
    }

    while (v80 != 3);
    v89 = 0;
    v90 = 1.0 / (v109[0].f64[1] * v109[0].f64[1] + v109[0].f64[0] * v109[0].f64[0] + v109[1].f64[0] * v109[1].f64[0]);
    v91 = v90 * sqrt(v90);
    v92 = ((v109[1].f64[0] * (v109[1].f64[0] * -5.0) * v90 + 1.0) * (v90 * -2.63327758e10) + -398600.44) * v91;
    *(&v110[2] + 1) = v18 + (v92 + (v90 * -2.63327758e10 + v90 * -2.63327758e10) * v91) * v109[1].f64[0];
    *v110 = v109[1].f64[1];
    *(v110 + 8) = v109[2];
    *(&v110[1] + 1) = v24.f64[0] + 0.0001458423 * v109[2].f64[0] + (v92 + 0.00000000531749412) * v109[0].f64[0];
    *&v110[2] = v24.f64[1] + v109[1].f64[1] * -0.0001458423 + (v92 + 0.00000000531749412) * v109[0].f64[1];
    v93 = vdupq_lane_s64(COERCE__INT64(v61 / 6.0), 0);
    do
    {
      *(&v107 + v89 * 16) = vmlaq_f64(*(&v107 + v89 * 16), vaddq_f64(vmlaq_f64(vmlaq_f64(v113[v89], _Q1, v112[v89]), _Q1, v111[v89]), v110[v89]), v93);
      ++v89;
    }

    while (v89 != 3);
    v62 = v107;
    v63 = *v108;
    v64 = *&v108[8];
    v65 = *&v108[24];
  }

  v94 = vdupq_n_s64(0x408F400000000000uLL);
  v95 = vmulq_f64(v62, v94);
  v96 = vmulq_f64(v95, xmmword_298A3C230);
  v97 = vextq_s8(v95, v95, 8uLL);
  v98 = vmlaq_n_f64(v97, v96, a4);
  *&v96.f64[0] = vdup_n_s32(a4 != 0.0);
  v99.i64[0] = LODWORD(v96.f64[0]);
  v99.i64[1] = HIDWORD(v96.f64[0]);
  v100 = vcltzq_s64(vshlq_n_s64(v99, 0x3FuLL));
  v101 = vbslq_s8(v100, v98, v97);
  *a3 = vextq_s8(v101, v101, 8uLL);
  *(a3 + 16) = v63 * 1000.0;
  v102 = vmulq_f64(v64, v94);
  v103 = vmulq_f64(v102, xmmword_298A3C230);
  v104 = vextq_s8(v102, v102, 8uLL);
  v105 = vbslq_s8(v100, vmlaq_n_f64(v104, v103, a4), v104);
  *(a3 + 24) = vextq_s8(v105, v105, 8uLL);
  *(a3 + 40) = v65 * 1000.0;
  *(a3 + 48) = -v11;
  *(a3 + 56) = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 11);
  *(a3 + 64) = (*(*a1 + 152))(a1);
  return 1;
}

double BlueFin::GlPeGloEphemeris::ComputeAgeS(BlueFin::GlPeGloEphemeris *this, const BlueFin::GlPeGnssTime *a2)
{
  v16 = &off_2A1F0E430;
  v17 = 0;
  Glns = BlueFin::GlPeGnssTime::GetGlns(a2, &v16);
  (v16[4])(&v16, Glns);
  v4 = BlueFin::GlPeGloEphemeris::computeTk(v15, this, &v16);
  v5 = (*(*this + 192))(this, 9, v4);
  v6 = (*(*this + 232))(this, 9);
  *v6.i64 = (60 * v5 * v7);
  BlueFin::GlGlnsTime::ResolveAmbiguity(&v13, v15, v6, v8);
  v9 = v17;
  v10 = HIDWORD(v17);
  if (v14)
  {
    if (v17 < v14)
    {
      v10 = (__PAIR64__(HIDWORD(v14) - HIDWORD(v17), v14) - v17) >> 32;
      v9 = v14 - v17;
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v10 = (v17 - v14) >> 32;
      v9 = v17 - v14;
    }
  }

  else
  {
    v11 = 0;
  }

  result = v9 * 2.32830644e-10 + v10;
  if ((v11 & ((v10 | v9) != 0)) != 0)
  {
    return -result;
  }

  return result;
}

double BlueFin::GlPeGloEphemeris::GetTgd(BlueFin::GlPeGloEphemeris *this)
{
  v2 = (*(*this + 208))(this, 4);
  v3 = (v2 * 562500.0) + 1602000000.0;
  v4 = ((v2 * 437500.0) + 1246000000.0) * ((v2 * 437500.0) + 1246000000.0);
  return BlueFin::GlPeEphemeris::GetScaledFloatingField(this, 28) * (v4 / (v4 - (v3 * v3)));
}

uint64_t BlueFin::GlPeGloEphemeris::GetSrc(BlueFin::GlPeGloEphemeris *this)
{
  v1 = (*(*this + 144))(this);
  if (v1 >= 4)
  {
    DeviceFaultNotify("glpe_glnephmgr.cpp", 380, "GetSrc", "false");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glnephmgr.cpp", 380, "false");
  }

  return dword_298A3A830[v1];
}

uint64_t BlueFin::GlMeSrdSatStatusListener::TrackInvalid(BlueFin::GlMeSrdSatStatusListener *this, const BlueFin::GlSatCarrId *a2, int a3, int a4)
{
  v8 = *a2;
  result = BlueFin::GlMeSrdSatMgr::IsSatInKillProcess((*(this + 1) + 3520), *a2);
  if ((result & 1) == 0)
  {
    v10 = *(this + 1);
    v11 = 1 << (v8 & 0x1F);
    if ((v11 & *(v10[455] + 4 * (v8 >> 5))) == 0 && (v11 & *(v10[451] + 4 * (v8 >> 5))) == 0 || !BlueFin::GlMeSrdSatTrackMgr::HasSat((v10 + 1794), v8))
    {
      DeviceFaultNotify("glmesrd_acq_mgr.cpp", 834, "TrackInvalid", "GlMeSrdSatStatusListener::TrackInvalid Satid %u not in trackmgr\n");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr.cpp", 834, "GlMeSrdSatStatusListener::TrackInvalid Satid %u not in trackmgr\n");
    }

    v12 = (*(this + 1) + 14352);

    return BlueFin::GlMeSrdSatTrackMgr::TrackInvalid(v12, a2, a3, a4);
  }

  return result;
}

void *BlueFin::GlMeSrdSatTrackMgr::TrackInvalid(void *result, unsigned __int8 *a2, int a3, int a4)
{
  v4 = *a2 + 100 * a2[4];
  v5 = v4 >> 5;
  v6 = v4 & 0x1F;
  if (((*(result[500] + 4 * v5) >> v6) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_track_mgr.cpp", 467, "TrackInvalid", "m_otSetSatCarrIdInUse.Has(otSatCarrId)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_track_mgr.cpp", 467, "m_otSetSatCarrIdInUse.Has(otSatCarrId)");
  }

  v7 = 1 << v6;
  *(result[530] + 4 * v5) |= v7;
  if (!a3)
  {
    if (!a4)
    {
      return result;
    }

LABEL_6:
    *(result[580] + 4 * v5) |= v7;
    return result;
  }

  *(result[570] + 4 * v5) |= v7;
  if (a4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t BlueFin::GlMeSlots::GpsFrameMgr(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 1504);
  v3 = *a2;
  v4 = v2 != v3 || v3 == 0;
  if (v4 || v2 >= 0x21 && (v2 < 0x42 || (v2 >= 0x4C ? (v5 = v2 - 189 > 0xFFFFFFF1) : (v5 = 1), !v5)))
  {
    DeviceFaultNotify("glme_msmtmgr.cpp", 89, "GpsFrameMgr", "(m_otSignalId.GetSvId() == rotSvId) && ((IS_GPS_SVID(*rotSvId)) INC_QZS(|| IS_QZSS_SVID(*rotSvId)) INC_NIC(|| IS_NAVIC_SVID(*rotSvId)))");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_msmtmgr.cpp", 89, "(m_otSignalId.GetSvId() == rotSvId) && ((IS_GPS_SVID(*rotSvId)) INC_QZS(|| IS_QZSS_SVID(*rotSvId)) INC_NIC(|| IS_NAVIC_SVID(*rotSvId)))");
  }

  return a1 + 192;
}

uint64_t BlueFin::GlMeSrdSatTrackMgr::SnapToAidingForNonL1(BlueFin::GlMeSrdSatTrackMgr *this, const BlueFin::GlSatCarrId *a2)
{
  v3 = *a2 + 100 * *(a2 + 4);
  v4 = *(*(this + 500) + 4 * (v3 >> 5));
  v5 = *(this + 1);
  if ((v4 >> (v3 & 0x1F)))
  {
    result = BlueFin::GlMeSrdSatMgr::GetTrackChannel(v5, a2);
    if (result >= 0x7B)
    {
      DeviceFaultNotify("glmesrd_track_mgr.cpp", 509, "SnapToAidingForNonL1", "ucTrackChannel < _DIM(m_aotSatTrackData)");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_track_mgr.cpp", 509, "ucTrackChannel < _DIM(m_aotSatTrackData)");
    }

    *(this + 32 * result + 57) = 0;
  }

  else
  {
    v7 = *a2;

    return BlueFin::GlMeSrdSatMgr::IsSatInKillProcess(v5, v7);
  }

  return result;
}

float BlueFin::GlMeSrdSatReport::CalcDbHzToTargetCohSnrInLin(BlueFin::GlMeSrdSatReport *this, float a2, float a3)
{
  v4 = 0.5;
  if ((a3 * 1000000.0) <= 0.0)
  {
    v4 = -0.5;
    if ((a3 * 1000000.0) >= 0.0)
    {
LABEL_38:
      v6 = log10f(a3);
      goto LABEL_39;
    }
  }

  v5 = (v4 + (a3 * 1000000.0));
  if (v5 > 10999)
  {
    if (v5 > 15999)
    {
      if (v5 <= 17999)
      {
        if (v5 != 16000)
        {
          if (v5 == 17000)
          {
            v6 = -1.76955108;
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        v6 = -1.79588002;
      }

      else
      {
        switch(v5)
        {
          case 18000:
            v6 = -1.74472749;
            break;
          case 19000:
            v6 = -1.7212464;
            break;
          case 20000:
            v6 = -1.69897;
            break;
          default:
            goto LABEL_38;
        }
      }
    }

    else if (v5 <= 12999)
    {
      if (v5 != 11000)
      {
        if (v5 == 12000)
        {
          v6 = -1.92081875;
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      v6 = -1.95860731;
    }

    else
    {
      switch(v5)
      {
        case 13000:
          v6 = -1.88605665;
          break;
        case 14000:
          v6 = -1.85387196;
          break;
        case 15000:
          v6 = -1.82390874;
          break;
        default:
          goto LABEL_38;
      }
    }
  }

  else if (v5 > 5999)
  {
    if (v5 <= 7999)
    {
      if (v5 != 6000)
      {
        if (v5 == 7000)
        {
          v6 = -2.15490196;
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      v6 = -2.22184875;
    }

    else
    {
      switch(v5)
      {
        case 8000:
          v6 = -2.09691001;
          break;
        case 9000:
          v6 = -2.04575749;
          break;
        case 10000:
          v6 = -2.0;
          break;
        default:
          goto LABEL_38;
      }
    }
  }

  else
  {
    if (v5 <= 2999)
    {
      v6 = -3.0;
      if (v5 == 1000)
      {
        goto LABEL_39;
      }

      if (v5 == 2000)
      {
        v6 = -2.69897;
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    switch(v5)
    {
      case 3000:
        v6 = -2.52287875;
        break;
      case 4000:
        v6 = -2.39794001;
        break;
      case 5000:
        v6 = -2.30103;
        break;
      default:
        goto LABEL_38;
    }
  }

LABEL_39:
  v7 = v6 + (a2 * 0.1);

  return __exp10f(v7);
}

uint64_t BlueFin::GlMeDSPDataBits::Set(uint64_t result, char a2, _BYTE *a3, unsigned int a4, __int16 a5, int a6, int a7, unsigned int a8, double a9, int *a10, char a11, uint64_t a12, int a13)
{
  *(result + 8) = a2;
  *(result + 9) = *a3;
  *(result + 12) = 0;
  *(result + 16) = a5;
  *(result + 20) = a6;
  *(result + 24) = a7;
  *(result + 32) = a9;
  if (a8 > 0x20)
  {
    v21 = "usNumWords <= _DIM(m_aulBitValues)";
    DeviceFaultNotify("glme_msmtmgr.cpp", 2144, "Set", "usNumWords <= _DIM(m_aulBitValues)");
    v22 = 2144;
    goto LABEL_22;
  }

  if (a8)
  {
    v14 = (result + 44);
    v15 = a8;
    do
    {
      v16 = *a10++;
      *v14++ = v16;
      --v15;
    }

    while (v15);
    if (a11)
    {
      v17 = 0;
      do
      {
        *(result + 172 + 4 * v17) = *(a12 + 4 * v17);
        ++v17;
      }

      while (v17 < a8);
      goto LABEL_10;
    }
  }

  else if (a11)
  {
LABEL_10:
    v18 = 32;
    goto LABEL_12;
  }

  v18 = 0;
LABEL_12:
  v19 = v18 | 0x40;
  if (((1 << a4) & 0x23000) == 0)
  {
    v19 = v18;
  }

  if (a4 <= 0x11)
  {
    v18 = v19;
  }

  *(result + 12) = v18;
  if (a13 == 1)
  {
    v20 = v18 & 0xFFFFFFFD;
    goto LABEL_20;
  }

  if (a13)
  {
    v21 = "0";
    DeviceFaultNotify("glme_msmtmgr.cpp", 2184, "Set", "0");
    v22 = 2184;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_msmtmgr.cpp", v22, v21);
  }

  v20 = v18 | 2;
LABEL_20:
  *(result + 12) = v20 | 0x10;
  return result;
}

uint64_t BlueFin::GlMeGlonassFrameMgr::GetGlnsStrPhsInSym(BlueFin::GlMeGlonassFrameMgr *this, unsigned int a2, unsigned __int8 *a3)
{
  *a3 = -1;
  if (*(this + 1))
  {
    return 0;
  }

  SearchStateMemory = BlueFin::GlMeGlonassFrameMgr::GetSearchStateMemory(this);
  if (*(SearchStateMemory + 140) != 1)
  {
    return 0;
  }

  v7 = *(SearchStateMemory + 148);
  if (v7 <= a2)
  {
    v8 = (a2 - v7 + 5) / 0xA - -56 * (((42949673 * ((a2 - v7 + 5) / 0xA)) >> 32) >> 1);
  }

  else
  {
    v8 = -56 * (((42949673 * ((v7 - a2 + 5) / 0xA)) >> 32) >> 1) - (v7 - a2 + 5) / 0xA - 56;
  }

  *a3 = v8;
  return 1;
}

uint64_t BlueFin::GlMeSlots::GlonassFrameMgr(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*(a1 + 1504) != v2 || (v2 - 66) <= 0xFFFFFFF1)
  {
    DeviceFaultNotify("glme_msmtmgr.cpp", 97, "GlonassFrameMgr", "(m_otSignalId.GetSvId() == rotSvId) && (IS_GLONASS_SVID(*rotSvId))");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_msmtmgr.cpp", 97, "(m_otSignalId.GetSvId() == rotSvId) && (IS_GLONASS_SVID(*rotSvId))");
  }

  return a1 + 192;
}

uint64_t BlueFin::GlMeGlonassFrameMgr::GetSystemTime(BlueFin::GlMeGlonassFrameMgr *a1, _DWORD *a2, _DWORD *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6, _BYTE *a7, _DWORD *a8)
{
  v8 = *(a1 + 1);
  if (v8 == 1)
  {
    return 0;
  }

  if (v8)
  {
    DeviceFaultNotify("glme_glonassframemgr.cpp", 355, "GetSystemTime", "false");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_glonassframemgr.cpp", 355, "false");
  }

  SearchStateMemory = BlueFin::GlMeGlonassFrameMgr::GetSearchStateMemory(a1);
  *a2 = *(SearchStateMemory + 148);
  *a3 = *(SearchStateMemory + 152);
  *a4 = *(SearchStateMemory + 140);
  *a5 = *(SearchStateMemory + 141);
  *a6 = *(SearchStateMemory + 142);
  *a7 = *(SearchStateMemory + 144);
  *a8 = *a1;
  return 1;
}

uint64_t BlueFin::GlMeGlonassFrameMgr::GetSearchStateMemory(BlueFin::GlMeGlonassFrameMgr *this)
{
  if (*(this + 1))
  {
    DeviceFaultNotify("glme_glonassframemgr.cpp", 79, "GetSearchStateMemory", "SEARCH == m_etState");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_glonassframemgr.cpp", 79, "SEARCH == m_etState");
  }

  return this + 8;
}

BlueFin::GlMeSrdViterbiDecoder *BlueFin::GlMeSrdEstNavBit::Run(BlueFin::GlMeSrdViterbiDecoder *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6, unsigned __int8 *a7, float *a8, _BYTE *a9, uint64_t a10, uint64_t a11)
{
  if ((*a5 & 1) == 0)
  {
    v56 = "stAsicNavBitTrkMsmt.bValid";
    DeviceFaultNotify("glmesrd_navbit.cpp", 63, "Run", "stAsicNavBitTrkMsmt.bValid");
    v57 = 63;
    goto LABEL_57;
  }

  v12 = *(a5 + 2);
  *(a11 + 2) = v12;
  v13 = *(a5 + 672);
  if (v13 >= 0x21)
  {
    v56 = "stAsicNavBitTrkMsmt.usNumWords <= GlMeSrdAsicNavBitTrkMsmt::MAX_NUM_TRK_DATA_WORDS";
    DeviceFaultNotify("glmesrd_navbit.cpp", 67, "Run", "stAsicNavBitTrkMsmt.usNumWords <= GlMeSrdAsicNavBitTrkMsmt::MAX_NUM_TRK_DATA_WORDS");
    v57 = 67;
    goto LABEL_57;
  }

  v17 = result;
  v18 = 0;
  *(a11 + 928) = v13;
  *(a11 + 4) = *(a5 + 4);
  do
  {
    v19 = (a11 + v18);
    v19[2] = *(a5 + v18 + 8);
    v19[34] = *(a5 + v18 + 136);
    v19[165] = *(a5 + v18 + 404);
    v19[197] = *(a5 + v18 + 532);
    v18 += 4;
  }

  while (v18 != 128);
  if (*(a5 + 392) == 1)
  {
    *(a11 + 360) = 0u;
    *(a11 + 376) = 0u;
    *(a11 + 328) = 0u;
    *(a11 + 344) = 0u;
    *(a11 + 296) = 0u;
    *(a11 + 312) = 0u;
    *(a11 + 264) = 0u;
    *(a11 + 280) = 0u;
    if (v12)
    {
      v20 = 0;
      v21 = *(result + 8);
      v22 = v12;
      do
      {
        v23 = 0;
        if ((v22 & 0xFFE0) != 0)
        {
          v24 = 32;
        }

        else
        {
          v24 = v22;
        }

        v25 = v20;
        v26 = *(a11 + 8 + 4 * v20);
        v27 = v24;
        do
        {
          if (v26 < 0)
          {
            v21 = (v21 & 1) == 0;
            *(v17 + 8) = v21;
          }

          v26 *= 2;
          v23 = 2 * v23 + v21;
          --v27;
        }

        while (v27);
        v22 -= v24;
        v20 = v25 + 1;
        *(a11 + 264 + 4 * v25) = v23 << -v24;
      }

      while (v22);
    }

    result = *(v17 + 2);
    if (result && a8[2] > a6[3])
    {
      result = BlueFin::GlMeSrdViterbiDecoder::RunViterbi(result, v12, (a11 + 660), (a11 + 788), 0);
      *(a11 + 928) >>= 1;
      v12 = *(a11 + 2) >> 1;
      *(a11 + 2) >>= 1;
      *(a11 + 930) = 1;
    }
  }

  v28 = *(a5 + 394);
  if (v28 == 1)
  {
    v29 = 0;
    v30 = a5 + 264;
    v31 = a11 + 392;
    do
    {
      for (i = 0; i != 32; i += 4)
      {
        *(v31 + i) = *(v30 + i);
      }

      ++v29;
      v31 += 32;
      v30 += 32;
    }

    while (v29 != 4);
    v33 = 0;
    v34 = v17 + 9;
    while (1)
    {
      v35 = (a11 + 520 + 32 * v33);
      *v35 = 0uLL;
      v35[1] = 0uLL;
      if (v12)
      {
        break;
      }

LABEL_35:
      if (++v33 == 4)
      {
        LOBYTE(v28) = *(a5 + 394);
        goto LABEL_37;
      }
    }

    v36 = 0;
    v37 = v34[v33];
    v38 = v12;
    result = (a11 + 392 + 32 * v33);
    while (1)
    {
      v39 = v38;
      if ((v38 & 0xFFE0) != 0)
      {
        v39 = 32;
      }

      if (v36 == 8)
      {
        break;
      }

      v40 = 0;
      v38 -= v39;
      v41 = *(result + v36);
      v42 = v39;
      do
      {
        if (v41 < 0)
        {
          v37 = (v37 & 1) == 0;
          v34[v33] = v37;
        }

        v41 *= 2;
        v40 = 2 * v40 + v37;
        --v42;
      }

      while (v42);
      *(v35 + v36++) = v40 << -v39;
      if (!v38)
      {
        goto LABEL_35;
      }
    }

    v56 = "ucWordOffset < GlMeSrdAsicNavBitTrkMsmt::MAX_NUM_TRK_LOW_TOW_DATA_WORDS";
    DeviceFaultNotify("glmesrd_navbit.cpp", 165, "Run", "ucWordOffset < GlMeSrdAsicNavBitTrkMsmt::MAX_NUM_TRK_LOW_TOW_DATA_WORDS");
    v57 = 165;
LABEL_57:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_navbit.cpp", v57, v56);
  }

LABEL_37:
  v43 = 0;
  *a11 = 1;
  v44 = *(a5 + 392);
  *(a11 + 648) = v44;
  v45 = *(a5 + 393);
  *(a11 + 649) = v45;
  *(a11 + 650) = v28;
  *(a11 + 651) = *(a5 + 395);
  *(a11 + 656) = *(a5 + 400);
  *(a11 + 916) = *(a5 + 660);
  v46 = *(a5 + 662);
  *(a11 + 918) = v46;
  v47 = *(a5 + 663);
  *(a11 + 919) = v47;
  *(a11 + 920) = *(a5 + 664);
  if (a9[28])
  {
    v48 = a9[29];
  }

  else
  {
    v48 = 0;
  }

  v49 = *a7 - 139;
  if (v49 >= 0x24)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0;
  }

  v51 = *a8;
  if (a8[2] < a6[15])
  {
    v52 = *a8;
  }

  else
  {
    v52 = 0;
  }

  v53 = (v50 | v52) ^ 1;
  *(a11 + 648) = v53 & v44;
  *(a11 + 649) = v53 & v45;
  *(a11 + 650) = v53 & v28;
  if (a9[31] == 1)
  {
    if (a9[33])
    {
      v43 = 1;
    }

    else
    {
      v43 = a9[32];
    }
  }

  if (v49 < 0x24)
  {
    v43 = 0;
  }

  if (a8[2] < a6[18])
  {
    v54 = v51;
  }

  else
  {
    v54 = 0;
  }

  v55 = (v43 | v54) ^ 1;
  *(a11 + 918) = v55 & v46;
  *(a11 + 919) = v55 & v47;
  return result;
}

double BlueFin::GlMeSrdEstCodePrm::SubMsPart(BlueFin::GlMeSrdEstCodePrm *this, double a2)
{
  v2 = a2 * 1000.0 - floor(a2 * 1000.0);
  if (v2 < 0.0 || v2 >= 1.0)
  {
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1872, "SubMsPart", "(0.0 <= dSubMsTimeInMs) && (dSubMsTimeInMs < 1.0)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_codeprm.cpp", 1872, "(0.0 <= dSubMsTimeInMs) && (dSubMsTimeInMs < 1.0)");
  }

  v4 = 0.001;
  result = v2 * 0.001;
  if (result <= 0.0005)
  {
    if (result > -0.0005)
    {
      return result;
    }
  }

  else
  {
    v4 = -0.001;
  }

  return result + v4;
}

uint64_t BlueFin::GlMeSrdAsicCorrVecTrkMsmt::AddMagSqCvecToAccumulator(uint64_t a1, uint64_t a2, unsigned int a3, float a4)
{
  if ((*a1 & 1) == 0)
  {
    v9 = "m_bValid";
    DeviceFaultNotify("glmesrd_estimators_input_trk.cpp", 369, "AddMagSqCvecToAccumulator", "m_bValid");
    v10 = 369;
    goto LABEL_15;
  }

  v5 = *(a1 + 148);
  if (!v5)
  {
    v9 = "m_ucDelaysPerChip > 0";
    DeviceFaultNotify("glmesrd_estimators_input_trk.cpp", 370, "AddMagSqCvecToAccumulator", "m_ucDelaysPerChip > 0");
    v10 = 370;
    goto LABEL_15;
  }

  if (*(a1 + 4) >= 9u)
  {
    v9 = "m_stMagSqCvec.m_ucCvecLen <= MAX_CVEC_LEN";
    DeviceFaultNotify("glmesrd_estimators_input_trk.cpp", 371, "AddMagSqCvecToAccumulator", "m_stMagSqCvec.m_ucCvecLen <= MAX_CVEC_LEN");
    v10 = 371;
LABEL_15:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_estimators_input_trk.cpp", v10, v9);
  }

  v6 = *(a1 + 176) * 1000.0;
  v7 = 0.5;
  if (v6 <= 0.0 && (v7 = -0.5, v6 >= 0.0))
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = (v6 + v7);
    if (v8 >= 0x100)
    {
      v9 = "ucCvCohIntInMs == slCvCohIntInMs";
      DeviceFaultNotify("glmesrd_estimators_input_trk.cpp", 375, "AddMagSqCvecToAccumulator", "ucCvCohIntInMs == slCvCohIntInMs");
      v10 = 375;
      goto LABEL_15;
    }
  }

  v11 = *(a1 + 149);
  v12 = *(a1 + 164);

  return BlueFin::GlMeSrdCorrVecAccumulator::AddVec(a2, (a1 + 4), v5, v11, v12, v8, a3, a4);
}

uint64_t BlueFin::GlMeSrdCorrVecAccumulator::AddVec(uint64_t result, unsigned __int8 *a2, char a3, int a4, unsigned int a5, char a6, unsigned int a7, float a8)
{
  LODWORD(v8) = *a2;
  if (v8 >= 9)
  {
    v34 = "stCorrVec.m_ucCvecLen <= _DIM(stCorrVec.m_afCvec)";
    DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 92, "AddVec", "stCorrVec.m_ucCvecLen <= _DIM(stCorrVec.m_afCvec)");
    v35 = 92;
    goto LABEL_58;
  }

  if (*(a2 + 1) != *result)
  {
    v34 = "stCorrVec.m_etNominalOrExtendedCvec == m_etNominalOrExtendedCvec";
    DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 93, "AddVec", "stCorrVec.m_etNominalOrExtendedCvec == m_etNominalOrExtendedCvec");
    v35 = 93;
    goto LABEL_58;
  }

  if (*(a2 + 2) != *(result + 4))
  {
    v34 = "stCorrVec.m_etCvecNonlinearityType == m_etCvecNonlinearityType";
    DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 94, "AddVec", "stCorrVec.m_etCvecNonlinearityType == m_etCvecNonlinearityType");
    v35 = 94;
    goto LABEL_58;
  }

  v9 = *(result + 13);
  if (v9 == 4)
  {
    v11 = v8 == 8;
  }

  else
  {
    if (!*(result + 13))
    {
      *(result + 13) = v8;
      *(result + 10) = *(a2 + 1);
      *(result + 8) = a3;
      v10 = (result + 9);
LABEL_25:
      *v10 = a4;
      goto LABEL_26;
    }

    v11 = 0;
  }

  if (v9 != v8 && !v11)
  {
    v34 = "m_ucCorrVecLen == stCorrVec.m_ucCvecLen || bAssertException";
    DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 112, "AddVec", "m_ucCorrVecLen == stCorrVec.m_ucCvecLen || bAssertException");
    v35 = 112;
    goto LABEL_58;
  }

  v12 = a2[1];
  v13 = *(result + 10) == v12 || v11;
  if ((v13 & 1) == 0)
  {
    v34 = "m_bHaveVeryEarlySample == stCorrVec.m_bHaveVeryEarlySample || bAssertException";
    DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 113, "AddVec", "m_bHaveVeryEarlySample == stCorrVec.m_bHaveVeryEarlySample || bAssertException");
    v35 = 113;
    goto LABEL_58;
  }

  v14 = a2[2];
  v15 = *(result + 11) == v14 || v11;
  if ((v15 & 1) == 0)
  {
    v34 = "m_ucIdxOfFirstVeryEarlySample == stCorrVec.m_ucIdxOfFirstVeryEarlySample || bAssertException";
    DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 114, "AddVec", "m_ucIdxOfFirstVeryEarlySample == stCorrVec.m_ucIdxOfFirstVeryEarlySample || bAssertException");
    v35 = 114;
    goto LABEL_58;
  }

  v10 = (result + 9);
  v16 = *(result + 9) == a4 || v11;
  if ((v16 & 1) == 0)
  {
    v34 = "m_ucCvecPromptIdx == ucCvecPromptIdx || bAssertException";
    DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 116, "AddVec", "m_ucCvecPromptIdx == ucCvecPromptIdx || bAssertException");
    v35 = 116;
LABEL_58:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_corrvec_accumulator.cpp", v35, v34);
  }

  if (v11)
  {
    *(result + 13) = v8;
    *(result + 10) = v12;
    *(result + 11) = v14;
    *(result + 8) = a3;
    goto LABEL_25;
  }

LABEL_26:
  v17 = result + 16;
  if (*(result + 15) || *(result + 14))
  {
    v18 = *(v17 + 40 * *(result + 15));
    v19 = a5 >= v18;
    v20 = a5 - v18;
    if (!v20)
    {
      return result;
    }

    if (!v19)
    {
      v21 = (result + 24);
      v22 = 10;
      do
      {
        *v21 = 0uLL;
        v21[1] = 0uLL;
        *(v21 - 2) = 0;
        *(v21 - 5) = 0;
        v21 = (v21 + 40);
        --v22;
      }

      while (v22);
LABEL_36:
      v25 = 0;
      LODWORD(v8) = *a2;
      goto LABEL_39;
    }

    if (v20 > a7)
    {
      v23 = (result + 24);
      v24 = 10;
      do
      {
        *v23 = 0uLL;
        v23[1] = 0uLL;
        *(v23 - 2) = 0;
        *(v23 - 5) = 0;
        v23 = (v23 + 40);
        --v24;
      }

      while (v24);
      goto LABEL_36;
    }

    v25 = *(result + 14);
  }

  else
  {
    v25 = 0;
  }

LABEL_39:
  if (v8)
  {
    v26 = a2 + 16;
    v8 = v8;
    v27 = (result + 40 * v25 + 24);
    do
    {
      v28 = *v26;
      v26 += 4;
      *v27++ = v28;
      --v8;
    }

    while (v8);
  }

  v29 = v17 + 40 * v25;
  *v29 = a5;
  *(v29 + 4) = a2[13];
  v30 = a8;
  if (a8 <= 0.0)
  {
    if (a8 >= 0.0)
    {
      LOBYTE(v32) = 0;
      goto LABEL_48;
    }

    v31 = -0.5;
  }

  else
  {
    v31 = 0.5;
  }

  v32 = (v30 + v31);
LABEL_48:
  v33 = v17 + 40 * v25;
  *(v33 + 5) = v32;
  *(v33 + 6) = a6;
  *(result + 14) = v25 + 1;
  *(result + 15) = v25;
  if (*(result + 12) <= (v25 + 1))
  {
    *(result + 14) = 0;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSatRptTrkMsmtMI::GetEpochCntInMs(BlueFin::GlSignalId **this)
{
  result = *(*this + 23);
  if (result != -1)
  {
    return result;
  }

  v3 = this[4];
  EpochPerSymbol = BlueFin::GlSignalId::GetEpochPerSymbol(v3);
  if (*(v3 + 4) >= 0x23Fu)
  {
    goto LABEL_17;
  }

  v5 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v3 + 1) - *(v3 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*v3]];
  if (!v5)
  {
LABEL_18:
    v11 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v12 = 686;
LABEL_19:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v12, v11);
  }

  v6 = this[4];
  v7 = *v6;
  if ((v7 - 81) > 0x34)
  {
    v9 = v5 * EpochPerSymbol;
    goto LABEL_12;
  }

  if ((*(*this + 24) & 0xF) == 0)
  {
    if (*(v6 + 4) < 0x23Fu)
    {
      v9 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v6 + 1) - *(v6 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*v6]];
      if (v9)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }

LABEL_17:
    v11 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v12 = 679;
    goto LABEL_19;
  }

  EpochPerBit = BlueFin::GlSignalId::GetEpochPerBit(this[4]);
  if (*(v6 + 4) >= 0x23Fu)
  {
    goto LABEL_17;
  }

  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v6 + 1) - *(v6 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*v6]])
  {
    goto LABEL_18;
  }

  v9 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v6 + 1) - *(v6 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*v6]] * EpochPerBit;
  v6 = this[4];
  v7 = *v6;
LABEL_12:
  if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(v6 + 1) - *(v6 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[v7]] == 1)
  {
    v10 = 20;
  }

  else
  {
    v10 = v9;
  }

  return BlueFin::GlMeSrdSatRptTrkMsmtMIBase::GetEpochCntInBits(this) * v10;
}

void BlueFin::GlMeSrdSatRptTrkMsmtMI::BuildCvecMsmt(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char a6, float a7)
{
  v51 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 56) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 725, "BuildCvecMsmt", "m_stAcqWindowMsmtInfo.m_bValid");
    CrashData();
  }

  v14 = (*(**(a1 + 16) + 168))(*(a1 + 16), *(a1 + 41));
  v15 = (*(**(a1 + 16) + 136))(*(a1 + 16));
  v16 = 0;
  *a5 = 1;
  v17 = *(v14 + 152);
  *(a5 + 4) = v17;
  *(a5 + 52) = v17;
  *(a5 + 100) = v17;
  *(a5 + 148) = *(v14 + 156);
  *(a5 + 17) = a6;
  LOBYTE(v18) = *(v15 + 26);
  LOWORD(v19) = *(v15 + 24);
  *&v20 = v19;
  v21 = v18 / *&v20;
  LOWORD(v20) = *(*a1 + 324);
  v22 = *v14 * v20;
  v23 = (a5 + 68);
  v24 = (a3 + 32);
  v25 = (a5 + 68);
  do
  {
    if (v16 >= v17)
    {
      *(v25 - 12) = 0.0;
    }

    else
    {
      *(v25 - 12) = (v21 * *(a2 + 4 * v16)) / v22;
      if (!a4)
      {
        *v25 = (v21 * *(v24 - 8)) / v22;
        v26 = (v21 * *v24) / v22;
        goto LABEL_9;
      }
    }

    *v25 = 0.0;
    v26 = 0.0;
LABEL_9:
    v25[12] = v26;
    ++v16;
    ++v25;
    ++v24;
  }

  while (v16 != 8);
  v27 = *(a1 + 32);
  v28 = *(v27 + 1);
  if (v28)
  {
    v29 = v28 == 3;
  }

  else
  {
    v29 = 1;
  }

  if (v29 && (*(v14 + 148) - 5) <= 1)
  {
    v49 = xmmword_298A36B1C;
    v50 = unk_298A36B2C;
    if ((*(**(a1 + 48) + 256))(*(a1 + 48)) && (*(**(a1 + 48) + 824))(*(a1 + 48)) <= 0x82)
    {
      v49 = xmmword_298A36B3C;
      v50 = unk_298A36B4C;
    }

    v30 = 0;
    v31 = *(a5 + 4);
    do
    {
      if (v30 < v31)
      {
        v32 = *(&v49 + v30);
        *(v23 - 12) = (v21 * *(a2 + 4 * v32)) / v22;
        v33 = 0.0;
        v34 = 0.0;
        if ((a4 & 1) == 0)
        {
          v33 = (v21 * *(a3 + 4 * v32)) / v22;
          v34 = (v21 * *(a3 + 32 + 4 * v32)) / v22;
        }

        *v23 = v33;
        v23[12] = v34;
      }

      ++v30;
      ++v23;
    }

    while (v30 != 8);
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x97);
    }

    v27 = *(a1 + 32);
  }

  v35 = *(v27 + 4);
  if (v35 >= 0x23F)
  {
    v47 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 693, "GetSecPerEpochWithTrkException", "IsValid()");
    v48 = 693;
    goto LABEL_56;
  }

  v36 = *(v27 + 1);
  v37 = *v27;
  if (v36 != 1 || ((v38 = 1.5, (v37 - 1) >= 0x20) ? (v39 = (v37 - 66) >= 0xA) : (v39 = 0), v39))
  {
    v40 = BlueFin::GlSvId::s_aucSvId2gnss[*v27];
    v41 = &BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[-v36];
    if (v41[8 * v36 + v40])
    {
      v38 = v41[8 * v36 + v40] * 0.001;
      goto LABEL_37;
    }

    v47 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v48 = 686;
LABEL_56:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v48, v47);
  }

LABEL_37:
  v42 = *(a1 + 3480) * v22 / v38;
  *(a5 + 150) = *(*a1 + 12);
  if ((a5 + 152) != v27)
  {
    *(a5 + 152) = v37;
    *(a5 + 156) = v36;
    *(a5 + 160) = v35;
    v36 = *(v27 + 1);
  }

  v43 = *(v14 + 44);
  *(a5 + 176) = a7;
  *(a5 + 180) = v43;
  *(a5 + 164) = *(a1 + 76);
  *(a5 + 168) = *(a1 + 120);
  *(a5 + 184) = v42;
  *a5 = 1;
  *(a5 + 149) = *(v14 + 153);
  if (!v36 && (*(**(a1 + 48) + 256))(*(a1 + 48)) && (*(**(a1 + 48) + 824))(*(a1 + 48)) <= 0x82 && *(v14 + 148) == 7)
  {
    *(a5 + 149) = 4;
  }

  if ((*(v14 + 148) - 5) <= 1)
  {
    *(a5 + 149) = 3;
  }

  v45 = *(v14 + 157);
  *(a5 + 5) = v45;
  v46 = *(v14 + 158);
  *(a5 + 6) = v46;
  *(a5 + 53) = v45;
  *(a5 + 54) = v46;
  *(a5 + 101) = v45;
  *(a5 + 102) = v46;
  if (v46 >= 8)
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 880, "BuildCvecMsmt", "stCorrVecTrkMsmt.m_stMagSqCvec.m_ucIdxOfFirstVeryEarlySample < _DIM(stCorrVecTrkMsmt.m_stMagSqCvec.m_afCvec)");

    CrashData();
  }
}

uint64_t BlueFin::GlMeSrdDspMeasAuxTrackRslts::Clear(uint64_t this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0xFFFFFFFF00000000;
  *(this + 28) = -1;
  *(this + 33) = 4;
  *(this + 29) = 0;
  *(this + 36) = 4;
  *(this + 72) = 0;
  *(this + 64) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 92) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 53) = 0;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 118) = 0;
  *(this + 112) = 0;
  return this;
}

double BlueFin::GlMeSrdAsicUnitConverter::EswUtStructToInitialUserTimeMs(uint64_t a1, unsigned __int8 *a2, int a3)
{
  Lms16ToLms32 = BlueFin::GlMeSrdAsicUnitConverter::GetLms16ToLms32(*(a1 + 4), a3);
  if (*(a2 + 4) >= 0x23Fu)
  {
    v15 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v16 = "glsignalid.h";
    v17 = 807;
    goto LABEL_11;
  }

  v7 = BlueFin::GlSvId::s_aucSvId2gnss[*a2];
  v8 = *(a2 + 1);
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
    v15 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
    v16 = "glsignalid.h";
    v17 = 815;
    goto LABEL_11;
  }

  v12 = 0x408F400000000000;
  LOBYTE(v12) = BlueFin::GlMeSrdAsicUnitConverter::ucSubChipResolution;
  v13 = (1000 * v9 / v10) / 1000.0 * v12;
  if (v13 == 0.0)
  {
    v15 = "dTwentiethsPerMs != 0";
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 333, "EswUtStructToInitialUserTimeMs", "dTwentiethsPerMs != 0");
    v16 = "glmesrd_asic_unit_converter.cpp";
    v17 = 333;
LABEL_11:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v16, v17, v15);
  }

  LOWORD(v6) = *(a1 + 6);
  return v6 / v13 + Lms16ToLms32;
}

float BlueFin::GlMeSrdSatRptTrkMsmtMI::BuildCNoMsmt(BlueFin::GlMeSrdSatRptTrkMsmtMI *this, int a2)
{
  *(this + 136) = 1;
  LOWORD(v2) = *((*(**(this + 2) + 136))(*(this + 2)) + 24);
  v5 = (*(**(this + 2) + 136))(*(this + 2));
  LOWORD(v6) = *(*this + 324);
  *&v7 = v6;
  v8 = *(*this + 108) / *&v7;
  LOBYTE(v7) = *(v5 + 26);
  *(this + 35) = (v8 * v7) / v2;
  v9 = 40;
  if (a2)
  {
    v9 = 41;
  }

  result = *((*(**(this + 2) + 184))(*(this + 2), *(this + v9)) + 8);
  *(this + 36) = result;
  return result;
}

float BlueFin::GlMeSrdAsicUnitConverter::EswFllOrPllPhiDotToHz(BlueFin::GlMeSrdAsicUnitConverter *this, float a2)
{
  if (a2 == 0.0)
  {
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 551, "EswFllOrPllPhiDotToHz", "fAcqCohIntInSec != 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 551, "fAcqCohIntInSec != 0");
  }

  return vcvtd_n_f64_s32(this, 0x19uLL) / a2;
}

float BlueFin::GlMeSrdAsicUnitConverter::EswFllOrPllPhi2DotToHzPerSec(BlueFin::GlMeSrdAsicUnitConverter *this, float a2)
{
  if (a2 == 0.0)
  {
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 564, "EswFllOrPllPhi2DotToHzPerSec", "fAcqCohIntInSec != 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 564, "fAcqCohIntInSec != 0");
  }

  return vcvtd_n_f64_s32(this >> 12, 0x19uLL) / (a2 * a2);
}

uint64_t BlueFin::GlMeSrdSatRptTrkMsmtMI::AidApplied(BlueFin::GlMeSrdSatRptTrkMsmtMI *this)
{
  v1 = *this;
  if ((*(*this + 9) & 0x2001) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 422, "AidApplied", "m_rRpcBuffer.GetFlags().Has(FLG_TRACK_HAS_DEBUG) || m_rRpcBuffer.GetFlags().Has(FLGS_RECEIVED_CW)");
    CrashData();
    v1 = *this;
  }

  return (*(v1 + 942) >> 4) & 1;
}

void BlueFin::GlMeSrdSatRptTrkMsmtMI::BuildNavBitMsmt(uint64_t *this)
{
  *(this + 1144) = 0;
  v1 = *this;
  if ((*(*this + 9) & 4) != 0)
  {
    v3 = (*(*this[2] + 144))(this[2], *(this + 41));
    v4 = *this;
    v5 = *(*this + 946);
    if (*(*this + 946))
    {
      v6 = ((v5 - 1) >> 5) + 1;
    }

    else
    {
      v6 = 0;
    }

    if (v6 >= 0x21u)
    {
      DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1779, "BuildNavBitMsmt", "usNumWords <= GlMeSrdAsicNavBitTrkMsmt::MAX_NUM_TRK_DATA_WORDS");
      CrashData();
    }

    *(this + 573) = v5;
    *(this + 574) = *(v4 + 734);
    *(this + 902) = *(v4 + 732);
    *(this + 386) = BlueFin::GlMeSrdSatRptTrkMsmtMIBase::GetEpochCntInBits(this);
    *(this + 452) = BlueFin::GlMeSrdSatRptTrkMsmtMIBase::GetEpochCntInBits(this);
    *(this + 1540) = *(v4 + 948);
    *(this + 908) = v6;
    *(this + 1539) = *(v3 + 28);
    *(this + 453) = BlueFin::GlMeSrdSatRptTrkMsmtMI::GetEpochCntInMs(this);
    v7 = v5 & 0x1F;
    v8 = 32 - (v5 & 0x1F);
    *(this + 1144) = 1;
    v9 = *(v1 + 8);
    if (v6)
    {
      v10 = (*(v1 + 8) & 0x800) == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      *(this + 1536) = 0;
    }

    else
    {
      if (v6 >= 0x11u)
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1809, "BuildNavBitMsmt", "usNumWords <= _DIM(rTrkBits.u.sBits.fll_bvec.word)");
        CrashData();
      }

      v11 = (v4 + 952);
      v12 = v6;
      v13 = this + 144;
      do
      {
        v14 = *v11++;
        *v13 = v14;
        v13 = (v13 + 4);
        --v12;
      }

      while (v12);
      if ((v5 & 0x1F) != 0)
      {
        *(this + v6 + 287) <<= v8;
      }

      *(this + 1536) = 1;
      v9 = *(v1 + 8);
    }

    if (v6 && (v9 & 0x1000) != 0)
    {
      if (v6 >= 0x11u)
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1836, "BuildNavBitMsmt", "usNumWords <= _DIM(rTrkBits.u.sBits.fll_mvec.word)");
        CrashData();
      }

      v15 = (v4 + 1080);
      v16 = v6;
      v17 = this + 160;
      do
      {
        v18 = *v15++;
        *v17 = v18;
        v17 = (v17 + 4);
        --v16;
      }

      while (v16);
      if ((v5 & 0x1F) != 0)
      {
        *(this + v6 + 319) <<= v8;
      }

      *(this + 1537) = 1;
      v9 = *(v1 + 8);
    }

    else
    {
      *(this + 1537) = 0;
    }

    if (v6 && (v9 & 0x2000) != 0)
    {
      if (v6 >= 0x11u)
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1860, "BuildNavBitMsmt", "usNumWords <= _DIM(rTrkBits.u.sBits.pll_bvec.word)");
        CrashData();
      }

      v19 = (v4 + 1016);
      v20 = v6;
      v21 = this + 387;
      do
      {
        v22 = *v19++;
        *v21++ = v22;
        --v20;
      }

      while (v20);
      if ((v5 & 0x1F) != 0)
      {
        *(this + v6 + 386) <<= v8;
      }

      *(this + 1806) = 1;
      v9 = *(v1 + 8);
    }

    else
    {
      *(this + 1806) = 0;
    }

    if (v6 && (v9 & 0x4000) != 0)
    {
      if (v6 >= 0x11u)
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1884, "BuildNavBitMsmt", "usNumWords <= _DIM(rTrkBits.u.sBits.pll_mvec.word)");
        CrashData();
      }

      v23 = (v4 + 1144);
      v24 = v6;
      v25 = this + 419;
      do
      {
        v26 = *v23++;
        *v25++ = v26;
        --v24;
      }

      while (v24);
      if ((v5 & 0x1F) != 0)
      {
        *(this + v6 + 418) <<= v8;
      }

      *(this + 1807) = 1;
      v9 = *(v1 + 8);
    }

    else
    {
      *(this + 1807) = 0;
    }

    if (v6 && (v9 & 0x8000) != 0)
    {
      *(this + 1538) = 1;
      *(this + 88) = 0u;
      *(this + 89) = 0u;
      *(this + 90) = 0u;
      *(this + 91) = 0u;
      *(this + 92) = 0u;
      *(this + 93) = 0u;
      *(this + 94) = 0u;
      *(this + 95) = 0u;
      v27 = *((*(*this[2] + 144))(this[2], *(this + 41)) + 28);
      if (v27 >= 5)
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1912, "BuildNavBitMsmt", "ucNumFllLowTowPhases <= GlMeSrdAsicNavBitTrkMsmt::MAX_NUM_TRK_LOW_TOW_FLL_PHASES");
        CrashData();
      }

      v28 = *this;
      if ((*(*this + 9) & 4) == 0)
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 531, "GetNumLowTowPhaseFromRpc", "m_rRpcBuffer.GetFlags().Has(FLGS_RECEIVED_TRACKBITS)");
        CrashData();
        v28 = *this;
      }

      if ((*(v28 + 944) & 0x40) != 0)
      {
        v29 = 4;
      }

      else
      {
        v29 = 2;
      }

      if (v27 == v29 || (DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1913, "BuildNavBitMsmt", "ucNumFllLowTowPhases == GetNumLowTowPhaseFromRpc()"), CrashData(), v27))
      {
        v30 = 0;
        v31 = this + 176;
        v32 = (v4 + 952);
        v33 = v31;
        do
        {
          v34 = v32;
          v35 = v33;
          v36 = v6;
          do
          {
            v37 = *v34++;
            *v35 = v37;
            v35 = (v35 + 4);
            --v36;
          }

          while (v36);
          if (v7)
          {
            if (v6 >= 9u)
            {
              DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1924, "BuildNavBitMsmt", "usNumWords <= GlMeSrdAsicNavBitTrkMsmt::MAX_NUM_TRK_LOW_TOW_DATA_WORDS");
              CrashData();
            }

            *(&v31[4 * v30 - 1] + v6 + 1) <<= v8;
          }

          ++v30;
          v33 += 4;
          v32 += 16;
        }

        while (v30 != v27);
      }
    }

    else
    {
      *(this + 1538) = 0;
    }
  }
}

_BYTE *BlueFin::GlMeTrkCvecTapConfig::GetTrackCvecDelayOffsetArray(_BYTE *this, float *a2, unsigned int a3)
{
  if (this[4] != a3)
  {
    v7 = "usExpectedVecLen == ucCvecLen";
    DeviceFaultNotify("glmesrd_receiver_parameters_track.cpp", 233, "GetTrackCvecDelayOffsetArray", "usExpectedVecLen == ucCvecLen");
    v8 = 233;
    goto LABEL_9;
  }

  if (!this[8])
  {
    v7 = "ucNumSamplesPerChip > 0";
    DeviceFaultNotify("glmesrd_receiver_parameters_track.cpp", 234, "GetTrackCvecDelayOffsetArray", "ucNumSamplesPerChip > 0");
    v8 = 234;
LABEL_9:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters_track.cpp", v8, v7);
  }

  if (a3)
  {
    v3 = this + 11;
    v4 = this[8];
    v5 = a3;
    do
    {
      v6 = *v3++;
      *a2++ = v6 / v4;
      --v5;
    }

    while (v5);
  }

  return this;
}

void BlueFin::GlMeSrdSatStatusListener::MsmtReceived(BlueFin::GlMeSrdSatStatusListener *this, const BlueFin::GlMeDSPMeas *a2, const BlueFin::GlMeSrdDspMeasAux *a3)
{
  v6 = *(a2 + 112);
  if (BlueFin::GlMeSrdSatMgr::IsSatInKillProcess((*(this + 1) + 3520), *(a2 + 112)) || !BlueFin::GlMeSrdSatMgr::CheckCoherence((*(this + 1) + 3520), v6, a2 + 100))
  {
    return;
  }

  v7 = *(a2 + 35);
  v8 = v7 > 0xF;
  v9 = (1 << v7) & 0x8300;
  if (v8 || v9 == 0)
  {
    if (!BlueFin::GlMeSrdSatTrackMgr::HasSat((*(this + 1) + 14352), v6))
    {
      GlCustomLog(12, "Got a TrackMgr for a Sat that is not in Trck... RmReport lost?\n");
      BlueFin::GlMeSrdAcqMgrSm::MoveSatFromSSE2STE(*(this + 1), v6);
      v23 = (*(this + 1) + 14352);

      BlueFin::GlMeSrdSatTrackMgr::TrackMsmtReceived(v23, a2, a3);
      return;
    }

    BlueFin::GlMeSrdSatTrackMgr::TrackMsmtReceived((*(this + 1) + 14352), a2, a3);
    v21 = *(this + 1) + 48 * *(a2 + 26);
    v22 = *(a2 + 100);
    if ((*(a2 + 87) & 2) != 0)
    {
      *(*(v21 + 25056) + ((v22 >> 3) & 0x1C)) |= 1 << v22;
    }

    else
    {
      BlueFin::GlSetBase::Remove(v21 + 25056, v22);
    }

    if (*(a2 + 35) != 10)
    {
      BlueFin::GlSetBase::Remove(*(this + 1) + 25016, v6);
    }

    BlueFin::GlSatCarrId::GlSatCarrId(v25, *(a2 + 112), *(a2 + 26));
    if (v26 < 1 || *(a2 + 35) == 14)
    {
      return;
    }

    if (*(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3) + 123) == 1)
    {
      if ((*(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3) + 124) & 1) != 0 || *(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3) + 125))
      {
        v18 = "otDspMeasAux.GetTrkRslts().m_bRequestForNonL1SnapToTap == false && otDspMeasAux.GetTrkRslts().m_bRequestForNonL1SnapToGridSrch == false";
        DeviceFaultNotify("glmesrd_acq_mgr.cpp", 722, "MsmtReceived", "otDspMeasAux.GetTrkRslts().m_bRequestForNonL1SnapToTap == false && otDspMeasAux.GetTrkRslts().m_bRequestForNonL1SnapToGridSrch == false");
        v19 = 722;
        goto LABEL_42;
      }

      v24 = *(this + 1);
      BlueFin::GlSatCarrId::GlSatCarrId(v25, *(a2 + 112), *(a2 + 26));
      BlueFin::GlMeSrdSatTrackMgr::SnapToAidingForNonL1((v24 + 14352), v25);
    }

    if (*(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3) + 124) == 1)
    {
      if ((*(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3) + 123) & 1) != 0 || *(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3) + 125))
      {
        v18 = "otDspMeasAux.GetTrkRslts().m_bRequestForNonL1SnapToAid == false && otDspMeasAux.GetTrkRslts().m_bRequestForNonL1SnapToGridSrch==false";
        DeviceFaultNotify("glmesrd_acq_mgr.cpp", 731, "MsmtReceived", "otDspMeasAux.GetTrkRslts().m_bRequestForNonL1SnapToAid == false && otDspMeasAux.GetTrkRslts().m_bRequestForNonL1SnapToGridSrch==false");
        v19 = 731;
        goto LABEL_42;
      }

      BlueFin::GlMeSrdSatStatusListener::SnapToTap(this, a2, a3);
    }

    if (*(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3) + 125) != 1)
    {
      return;
    }

    if ((*(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3) + 123) & 1) == 0 && !*(BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3) + 124))
    {
      BlueFin::GlMeSrdSatStatusListener::SnapToGridSrch(this, a2, a3);
      return;
    }

    v18 = "otDspMeasAux.GetTrkRslts().m_bRequestForNonL1SnapToAid == false && otDspMeasAux.GetTrkRslts().m_bRequestForNonL1SnapToTap == false";
    DeviceFaultNotify("glmesrd_acq_mgr.cpp", 740, "MsmtReceived", "otDspMeasAux.GetTrkRslts().m_bRequestForNonL1SnapToAid == false && otDspMeasAux.GetTrkRslts().m_bRequestForNonL1SnapToTap == false");
    v19 = 740;
LABEL_42:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr.cpp", v19, v18);
  }

  v11 = *(this + 1);
  v12 = v6 >> 5;
  v13 = v6 & 0x1F;
  v14 = 1 << (v6 & 0x1F);
  if ((v14 & *(*(v11 + 13920) + 4 * (v6 >> 5))) != 0)
  {
    v15 = 1 << v13;
  }

  else
  {
    v16 = 0;
    while (1)
    {
      v17 = *(v11 + 23080 + v16);
      if ((v14 & *(*(v17 + 128) + 4 * v12)) != 0)
      {
        break;
      }

      v16 += 8;
      if (v16 == 80)
      {
        v18 = "bFound";
        DeviceFaultNotify("glmesrd_acq_mgr.cpp", 688, "MsmtReceived", "bFound");
        v19 = 688;
        goto LABEL_42;
      }
    }

    (*(*v17 + 24))(v17, v6);
    v20 = *(v17 + 72);
    v15 = 1 << v13;
    *(*(v11 + 13920) + 4 * v12) |= 1 << v13;
    *(v11 + 4 * v6 + 13952) = v20;
    v11 = *(this + 1);
  }

  *(*(v11 + 25016) + 4 * v12) |= v15;
}

double BlueFin::GlMeSrdEstCarrPrm::CalcMagSqrdFllValidityTestStatSummand(BlueFin::GlMeSrdEstCarrPrm *this, void *a2, void *a3)
{
  if (!a2)
  {
    v4 = "potBufElem != nullptr";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 2487, "CalcMagSqrdFllValidityTestStatSummand", "potBufElem != nullptr");
    v5 = 2487;
    goto LABEL_6;
  }

  if (this)
  {
    v4 = "potTestStatParam == nullptr";
    DeviceFaultNotify("glmesrd_carrprm.cpp", 2488, "CalcMagSqrdFllValidityTestStatSummand", "potTestStatParam == nullptr");
    v5 = 2488;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_carrprm.cpp", v5, v4);
  }

  return *a2;
}

BOOL BlueFin::GlMeSrdSatMgr::IsSatInKillProcess(BlueFin::GlMeSrdSatMgr *this, unsigned int a2)
{
  v2 = a2 >> 5;
  v3 = 1;
  v4 = 1 << (a2 & 0x1F);
  if ((v4 & *(*(this + 19) + 4 * (a2 >> 5))) == 0)
  {
    if ((v4 & *(*(this + 23) + 4 * (a2 >> 5))) != 0 || (v4 & *(*(this + 27) + 4 * (a2 >> 5))) != 0)
    {
      return 1;
    }

    else
    {
      BlueFin::GlSatCarrIdSet::GetSatIdSetAnyCarrier(v6, (this + 6464));
      return (v4 & *(v6[0] + 4 * v2)) != 0;
    }
  }

  return v3;
}

uint64_t BlueFin::GlMeSrdSatTrackMgr::TrackMsmtReceived(BlueFin::GlMeSrdSatTrackMgr *this, const BlueFin::GlMeDSPMeas *a2, const BlueFin::GlMeSrdDspMeasAux *a3)
{
  v6 = *(a2 + 112);
  BlueFin::GlSatCarrId::GlSatCarrId(v27, v6, *(a2 + 26));
  v7 = v27[0] + 100 * v28;
  if (((*(*(this + 500) + 4 * (v7 >> 5)) >> ((v27[0] + 100 * v28) & 0x1F)) & 1) == 0)
  {
    v25 = "m_otSetSatCarrIdInUse.Has(otSatCarrId)";
    DeviceFaultNotify("glmesrd_track_mgr.cpp", 600, "TrackMsmtReceived", "m_otSetSatCarrIdInUse.Has(otSatCarrId)");
    v26 = 600;
    goto LABEL_44;
  }

  if ((*(a2 + 87) & 4) != 0)
  {
    *(*(this + 550) + 4 * (v7 >> 5)) |= 1 << (v7 & 0x1F);
  }

  else
  {
    BlueFin::GlSetBase::Remove(this + 4400, v7);
  }

  result = BlueFin::GlMeSrdSatMgr::GetTrackChannel(*(this + 1), v27);
  if (result >= 0x7B)
  {
    v25 = "ucTrackChannel < _DIM(m_aotSatTrackData)";
    DeviceFaultNotify("glmesrd_track_mgr.cpp", 613, "TrackMsmtReceived", "ucTrackChannel < _DIM(m_aotSatTrackData)");
    v26 = 613;
LABEL_44:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_track_mgr.cpp", v26, v25);
  }

  v9 = *(this + 510);
  v10 = v6 >> 5;
  v11 = *(v9 + 4 * (v6 >> 5));
  v12 = v6 & 0x1F;
  v13 = 1 << (v6 & 0x1F);
  v14 = *(a2 + 35);
  v16 = v14 == 14 || v14 == 16;
  v17 = this + 32 * result;
  if (((((v13 & v11) != 0) ^ v16) & 1) != 0 || !*(v17 + 16))
  {
    v18 = ((v13 & v11) != 0) ^ v16 ^ 1;
    if (*(a2 + 100) - 139 > 0x23)
    {
      v18 = 1;
    }

    if ((v18 & 1) != 0 || *(a2 + 10) >= 20.0)
    {
      *(v17 + 16) = 0;
    }

    if (v14 == 16 || v14 == 14)
    {
      *(v9 + 4 * v10) = v11 | (1 << v12);
    }

    else
    {
      result = BlueFin::GlSetBase::Remove(this + 4080, v6);
    }

    if (v28 == 2 && *(a2 + 10) > 22.0)
    {
      result = BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3);
      if ((*(result + 31) & 0x10) != 0)
      {
        v17[57] = 1;
      }
    }
  }

  v19 = *(a2 + 100);
  if (v19 - 139 > 0x23 || v14 == 14 || v14 == 16 || (*(a3 + 32) & 1) != 0)
  {
    result = BlueFin::GlSetBase::Remove(this + 4112, v19);
    v19 = *(a2 + 100);
  }

  else
  {
    *(*(this + 514) + 4 * (v19 >> 5)) |= 1 << v19;
  }

  v20 = *(a2 + 10);
  if (v19 - 81 <= 0x34 && v20 > 30.0 || (v13 & *(*(this + 634) + 4 * (v6 >> 5))) != 0 && v20 > 28.0)
  {
    *(*(this + 630) + 4 * v10) |= 1 << v12;
  }

  v22 = *(v17 + 16);
  v21 = v17 + 32;
  *(v21 + 1) = v20;
  v23 = *(a2 + 35);
  *(v21 + 2) = v23;
  *v21 = v22 + 1;
  *(v21 + 2) = *(a2 + 3);
  if (v23 == 12)
  {
    result = BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3);
    v24 = (*(result + 129) >> 5) & 1;
  }

  else
  {
    LOBYTE(v24) = 0;
  }

  v21[24] = v24;
  return result;
}

uint64_t BlueFin::GlMeSrdSvIdMsmtHistoryBuffer::GetMsmtHistorySlot(BlueFin::GlMeSrdSvIdMsmtHistoryBuffer *this, const BlueFin::GlSignalId *a2)
{
  if (BlueFin::GlBigArray::Has((this + 2960), *(a2 + 4)))
  {

    return BlueFin::GlSignalIdArray::Get((this + 1808), a2);
  }

  else
  {
    if (*(this + 1497) == -1)
    {
      BlueFin::GlMeSrdSvIdMsmtHistoryBuffer::MsmtHistoryGarbageCollector(this);
    }

    result = BlueFin::GlBigArray::Add((this + 2960), *(a2 + 4));
    if (!result)
    {
      DeviceFaultNotify("glmesrd_svid_msmt_history.cpp", 56, "GetMsmtHistorySlot", "potMsmtHistorySlot != nullptr");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_svid_msmt_history.cpp", 56, "potMsmtHistorySlot != nullptr");
    }

    *result = 0;
    *(result + 4) = 0;
    *(result + 8) = 0;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSatMgr::GetTrackChannel(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2 + 100 * *(a2 + 1);
  if (((*(*(a1 + 280) + 4 * (v2 >> 5)) >> (v2 & 0x1F)) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 905, "GetTrackChannel", "m_otSetSatCarrIdHaveTrackChannel.Has(otSatCarrId)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", 905, "m_otSetSatCarrIdHaveTrackChannel.Has(otSatCarrId)");
  }

  return *(*(a1 + 6288) + 52 * *a2 + *(a2 + 1) + 24);
}

uint64_t BlueFin::GlPeNicEphemeris::GetPvt(BlueFin::GlPeEphemeris *a1, uint64_t a2, uint64_t a3, double a4)
{
  ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 17);
  v58 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 15);
  v8 = v58 * v58;
  v9 = v58;
  v55 = ScaledFloatingField * ScaledFloatingField;
  v10 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 12) + sqrt(3.986005e14 / (v55 * (v55 * v55)));
  v11 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 9);
  v12 = (*(*a1 + 64))(a1, a2, 0);
  v13 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 10) + v11 * v12;
  *(a3 + 48) = v13;
  v14 = v13 - BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 6);
  v15 = (*(*a1 + 64))(a1, a2, 1) - v14;
  v57 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 13) + v10 * v15;
  v56 = 0.0;
  BlueFin::GlPeEphemeris::Kepler(&v57, &v58, &v56, v16);
  v17 = __sincos_stret(v56);
  v18 = ScaledFloatingField * (v9 * -4.44280763e-10);
  *(a3 + 48) = *(a3 + 48) + v18 * v17.__sinval;
  *(a3 + 56) = v11 + v18 * v17.__cosval * v10;
  v45 = v15 - v18 * v17.__sinval;
  v53 = atan2(sqrt(1.0 - v8) * v17.__sinval, v17.__cosval - v9);
  v19 = v53 + BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 24);
  v20 = __sincos_stret(v19 + v19);
  v48 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 16);
  v47 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 14);
  v50 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 11);
  v49 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 23);
  v52 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 21);
  v51 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 19);
  v21 = v19 + v47 * v20.__cosval + v48 * v20.__sinval;
  v44 = 1.0 - v9 * v17.__cosval;
  v22 = v20.__cosval * v49 + v50 * v20.__sinval + ScaledFloatingField * ScaledFloatingField * v44;
  v46 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 26);
  v23 = v20.__cosval * v51 + v52 * v20.__sinval + BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 22) + v46 * v45;
  v24 = __sincos_stret(v21);
  v43 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 25) + -0.0000729211515;
  v25 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 20) + v43 * (v45 + a4);
  v26 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 18);
  v27 = __sincos_stret(v25 + v26 * -0.0000729211515);
  v28 = __sincos_stret(v23);
  v29 = v24.__sinval * v22 * v28.__cosval;
  *a3 = v24.__cosval * v22 * v27.__cosval - v29 * v27.__sinval;
  *(a3 + 8) = v29 * v27.__cosval + v24.__cosval * v22 * v27.__sinval;
  *(a3 + 16) = v24.__sinval * v22 * v28.__sinval;
  v30 = __sincos_stret(v21 + v21);
  sinval = v30.__sinval;
  cosval = v30.__cosval;
  v33 = __sincos_stret(v53);
  v34 = v17.__sinval * (v10 / v44) * (v9 * v33.__cosval + 1.0) / (v44 * v33.__sinval);
  v35 = v34 + (v48 * cosval - v47 * sinval + v48 * cosval - v47 * sinval) * v34;
  v36 = v10 * (v55 * v9 * v17.__sinval) / v44 + (v50 * cosval - v49 * sinval + v50 * cosval - v49 * sinval) * v34;
  v37 = v46 + (v52 * cosval - v51 * sinval + v52 * cosval - v51 * sinval) * v34;
  v38 = v36 * v24.__cosval - v24.__sinval * v22 * v35;
  v39 = v24.__cosval * v22 * v35 + v36 * v24.__sinval;
  v40 = v38 - v29 * v43;
  v41 = v28.__cosval * v39 + v24.__cosval * v22 * v43 - v24.__sinval * v22 * v28.__sinval * v37;
  *(a3 + 24) = v40 * v27.__cosval - v41 * v27.__sinval;
  *(a3 + 32) = v27.__cosval * v41 + v40 * v27.__sinval;
  *(a3 + 40) = v29 * v37 + v39 * v28.__sinval;
  *(a3 + 64) = (*(*a1 + 152))(a1);
  return 1;
}

float BlueFin::GlPeNicEphemeris::GetAccuracyM(BlueFin::GlPeNicEphemeris *this)
{
  v2 = (*(*this + 192))(this, 4);
  v3 = (*(*this + 192))(this, 32);
  v4 = v2;
  if ((v2 & 0xF8) != 0)
  {
    v4 = 8;
  }

  v5 = v4 + 7;
  if (!v3)
  {
    v5 = v2;
  }

  if (v5 <= 0xEu)
  {
    return flt_298A3A8B0[v5 & 0xF];
  }

  else
  {
    return 8192.0;
  }
}

uint64_t BlueFin::GlMeSrdSatRptTrkMsmtMI::IsBeidouPrebitWithHssSec(BlueFin::GlMeSrdSatRptTrkMsmtMI *this)
{
  if (*(*this + 105) != 6 || (*(*this + 24) & 0xF) != 0)
  {
    return 0;
  }

  v3 = (*(**(this + 6) + 256))(*(this + 6));
  if (v3)
  {
    return 1;
  }

  v4 = *(*BlueFin::GlUtils::GetAsicConfigIfc(v3) + 264);

  return v4();
}

double BlueFin::GlMeSrdAcqWindowMsmtInfo::CopyFrom(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  if (a1 != a2)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 16) = *(a2 + 16);
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  return result;
}

uint64_t BlueFin::GlMeSrdSatRptNoiseStats::GlMeSrdSatRptNoiseStats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = (*(*a2 + 48))(a2, a3, a4);
  *a1 = v8;
  *(a1 + 4) = 1065353216;
  if ((v5 & 0xF000FFFE) == 0x30000010)
  {
    *(a1 + 4) = v8 / (*(*a2 + 48))(a2, 889192463, a4);
  }

  return a1;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetAllModesTrkParamsFromGearId(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 144);

  return v1();
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetAllParams(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 32);

  return v1();
}

void BlueFin::GlMeSrdEstCNo::Run(uint64_t a1, double *a2, __n128 a3, uint64_t a4, float *a5, uint64_t a6, float *a7, unsigned __int8 *a8, uint64_t a9, float *a10, uint64_t a11)
{
  if ((*a9 & 1) == 0)
  {
    v21 = "stAsicCNoTrkMsmt.bValid";
    DeviceFaultNotify("glmesrd_estcno.cpp", 123, "Run", "stAsicCNoTrkMsmt.bValid");
    v22 = "glmesrd_estcno.cpp";
    v23 = 123;
    goto LABEL_23;
  }

  v11 = *a8;
  if ((v11 - 1) >= 0xBC)
  {
    v21 = "otSignalId.GetSvId().isValid()";
    DeviceFaultNotify("glmesrd_estcno.cpp", 124, "Run", "otSignalId.GetSvId().isValid()");
    v22 = "glmesrd_estcno.cpp";
    v23 = 124;
    goto LABEL_23;
  }

  if ((a1 + 20) == a8)
  {
    v13 = *(a1 + 28);
  }

  else
  {
    *(a1 + 20) = v11;
    *(a1 + 24) = *(a8 + 1);
    v13 = *(a8 + 4);
    *(a1 + 28) = v13;
  }

  if (v13 >= 0x23F)
  {
    v21 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 693, "GetSecPerEpochWithTrkException", "IsValid()");
    v22 = "glsignalid.h";
    v23 = 693;
    goto LABEL_23;
  }

  v14 = *(a1 + 24);
  v15 = *(a1 + 20);
  if (v14 != 1 || (a3.n128_u32[0] = 1.5, (v15 - 1) >= 0x20) && (v15 - 66) >= 0xA)
  {
    v16 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v14 - v14 + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 20)]];
    if (!v16)
    {
      v21 = "ucMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
      v22 = "glsignalid.h";
      v23 = 686;
LABEL_23:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v22, v23, v21);
    }

    a3.n128_f64[0] = v16 * 0.001;
    a3.n128_f32[0] = a3.n128_f64[0];
  }

  v17 = *a2;
  *a11 = (*(*a1 + 24))(a1, v26, v24, a3, *a10, *(a9 + 8), *a5, v17, *(a9 + 4), *a7);
  v18 = v25;
  *(a11 + 12) = v25;
  if (*(a1 + 28) >= 0x23Fu)
  {
    v21 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 712, "GetSecPerEpochIndB", "IsValid()");
    v22 = "glsignalid.h";
    v23 = 712;
    goto LABEL_23;
  }

  v19 = BlueFin::GlSignalId::s_assSignalIndexAndGnss2epochIndB[7 * *(a1 + 24) + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 20)]];
  if (!v19)
  {
    v21 = "ssEpochIndB != 0";
    DeviceFaultNotify("glsignalid.h", 719, "GetSecPerEpochIndB", "ssEpochIndB != 0");
    v22 = "glsignalid.h";
    v23 = 719;
    goto LABEL_23;
  }

  v20 = -(v19 - (log10f(v18) * 10.0));
  if (v20 < 7.0)
  {
    v20 = 7.0;
  }

  *(a11 + 8) = v20;
  *(a11 + 4) = 2;
  *(a1 + 12) = 1;
}
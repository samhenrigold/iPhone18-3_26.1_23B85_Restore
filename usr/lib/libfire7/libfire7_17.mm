uint64_t BlueFin::GlMeSrdSatRptNonL1VetSm::DebugLog(uint64_t result, const char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  STACK[0x788] = *MEMORY[0x29EDCA608];
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v39 = result;
    result = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x1C);
    if ((result & 1) != 0 || BlueFin::GlUtils::m_ucEnabled && (result = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xF), result))
    {
      v40 = *a3;
      v41 = a3[1];
      if (!strcmp(a2, "wait_for_aided_track"))
      {
        v42 = 1;
      }

      else if (!strcmp(a2, "los_verification"))
      {
        v42 = 2;
      }

      else if (!strcmp(a2, "los_verification_pull_in"))
      {
        v42 = 3;
      }

      else if (!strcmp(a2, "los_tracking"))
      {
        v42 = 4;
      }

      else if (!strcmp(a2, "mp_tracking"))
      {
        v42 = 5;
      }

      else if (!strcmp(a2, "snap_to_tap"))
      {
        v42 = 6;
      }

      else if (!strcmp(a2, "los_sensitivity"))
      {
        v42 = 7;
      }

      else if (!strcmp(a2, "grid_search"))
      {
        v42 = 8;
      }

      else if (!strcmp(a2, "snap_to_grid_aid"))
      {
        v42 = 9;
      }

      else if (!strcmp(a2, "snap_to_grid_detection"))
      {
        v42 = 10;
      }

      else
      {
        v42 = 0;
      }

      STACK[0x690] = &unk_2A1F0C460;
      LOBYTE(STACK[0x698]) = v40;
      LOBYTE(STACK[0x699]) = v41;
      LOBYTE(STACK[0x69A]) = v42;
      STACK[0x750] = v39;
      v44 = *(v39 + 112);
      v43 = *(v39 + 120);
      v45 = *(v44 + 100);
      LOBYTE(STACK[0x6B0]) = -1;
      LOBYTE(STACK[0x6B4]) = v45;
      LODWORD(STACK[0x6B8]) = *(v44 + 104);
      LOWORD(STACK[0x6BC]) = *(v44 + 108);
      LOWORD(STACK[0x6C0]) = 0;
      LOBYTE(STACK[0x6C2]) = 0;
      STACK[0x708] = 0;
      LOBYTE(STACK[0x714]) = 0;
      LODWORD(STACK[0x718]) = 0;
      STACK[0x720] = 0;
      LOBYTE(STACK[0x728]) = 0;
      STACK[0x6F8] = 0;
      *&STACK[0x6E8] = 0u;
      *&STACK[0x6D8] = 0u;
      *&STACK[0x6C8] = 0u;
      *&STACK[0x73C] = 0u;
      *&STACK[0x72C] = 0u;
      LODWORD(STACK[0x700]) = -1;
      LOBYTE(STACK[0x704]) = -1;
      LODWORD(STACK[0x710]) = 0;
      STACK[0x6A0] = &STACK[0x6B0];
      TrkRslts = BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(v43);
      v47 = STACK[0x750];
      v48 = *(STACK[0x750] + 112);
      v49 = *(&STACK[0x690] | 0x10);
      *v49 = *(v48 + 112);
      v50 = LOBYTE(STACK[0x698]);
      *(v49 + 16) = v50;
      *(v49 + 17) = *(&STACK[0x690] | 9);
      v51 = *(&STACK[0x690] | 0xA);
      *(v49 + 18) = v51;
      *(v49 + 64) = *(v47 + 92);
      *(v49 + 88) = *(v47 + 96);
      if (v50 == 6)
      {
        v52 = "EVT(MSMT)";
      }

      else
      {
        v52 = "invalid_event!";
      }

      *(v49 + 24) = v52;
      *(v49 + 32) = BlueFin::GlMeSrdSatRptNonL1VetContainer::ToStateString(v51);
      *(v49 + 48) = *(v47 + 128) - *(v47 + 152);
      *(v49 + 40) = *(v47 + 128) - *(v47 + 144);
      *(v49 + 68) = *(v48 + 40);
      v53.i32[0] = *(v48 + 32);
      v53.i32[1] = *(v48 + 56);
      *(v49 + 56) = *(v48 + 24);
      *(v49 + 72) = vmul_f32(v53, vdup_n_s32(0x4E6E6B28u));
      v54 = *(TrkRslts + 28);
      *(v49 + 80) = *(TrkRslts + 24);
      *(v49 + 84) = v54;
      v55 = STACK[0x750];
      v56 = *(v49 + 96) & 0xFFFFFFFE | *(STACK[0x750] + 40);
      *(v49 + 96) = v56;
      v57 = v56 & 0xFFFFFE01 | (2 * ((~*(*(v55 + 112) + 84) & 0x30) == 0));
      if (*(TrkRslts + 117))
      {
        v58 = 4;
      }

      else
      {
        v58 = 0;
      }

      if (*(v55 + 42))
      {
        v59 = 8;
      }

      else
      {
        v59 = 0;
      }

      v60 = v58 | v59;
      if (*(v55 + 45))
      {
        v61 = 16;
      }

      else
      {
        v61 = 0;
      }

      *(v49 + 96) = (v57 | v60 | v61 | (*(v55 + 91) >> 1) & 0x20 | (*(v55 + 91) >> 1) & 0x40) + ((16 * *(v55 + 91)) & 0x80) + 16 * (*(v55 + 91) & 0x10);
      *(v49 + 100) = *(TrkRslts + 118);
      v62 = *(TrkRslts + 64);
      *(v49 + 104) = v62;
      Str = BlueFin::GlMeSrdEstMultipath::GetStr(v62);
      v64 = *(&STACK[0x690] | 0x10);
      *(v64 + 14) = Str;
      *(v64 + 16) = *(TrkRslts + 68);
      v65 = *(TrkRslts + 88);
      v66 = STACK[0x750];
      v67 = *(STACK[0x750] + 44);
      v64[120] = v67;
      v68 = *(v66 + 64);
      if (v68 < 0.0)
      {
        v68 = -v68;
      }

      v69 = *(v66 + 48);
      *(v64 + 31) = v69;
      *(v64 + 35) = v65;
      *(v64 + 36) = v68;
      *(v64 + 148) = 1099431936;
      *(v64 + 34) = BlueFin::GlMeSrdSatRptNonL1VetSm::afVE_TAP_DETECTION_TRHESHOLD_CVEC_MAGNITUDE[v67 - 1] / v69;
      if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
      {
        (*(STACK[0x690] + 24))(&STACK[0x690], 0, 0);
        v64 = STACK[0x6A0];
      }

      v70 = *(v64 + 24);
      if ((v70 & 4) != 0 && *(v64 + 17) >= *(v64 + 37))
      {
        v71 = v64[100];
      }

      else
      {
        v71 = 0;
      }

      v72 = "vet";
      if (v70)
      {
        v72 = "VET";
      }

      BlueFin::GlFormat::glsnprintf(&a37, 0x190, "meSmNonL1_%s::%s(S:%.2f V:%.2f)::%s(Sat:%i Sv:%i Bd:%s) Lms %.9f Aid %.9f ProbLOS %.1f CNo %.1f Dop[Ppb %.1f U %.2f] Gear[%i %i %i %i %i] Aid[%s:%s:%s:%s/%s:%s] QA[%s:%s Pol:%i CcdMet:%.2f] Cvec[%s] MP[%s] VE[CNo:%.1f Met:%.2f Off:%.2f MetThr:%.1g Freq(Scan):%.1f MaxGear:%i]\n", v71, v72, *(v64 + 4), *(v64 + 6), *(v64 + 5), *(v64 + 3), *v64, v64[4], BlueFin::GlSignalId::s_ausSignalIndex2str[*(v64 + 2)], *(v64 + 7) * 1000.0, *(v64 + 11) * 1000.0);
      return GlCustomLog(15, "%s", &a37);
    }
  }

  return result;
}

uint64_t BlueFin::GlMeFrameMgr::GetTowMeas(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 408);
  *(a2 + 8) = 0;
  *(a2 + 4) = 0;
  if (*a1 != 1)
  {
    return 0;
  }

  v2 = 6 * *(a1 + 48);
  v3 = *(a1 + 5);
  if (v3 >= 3)
  {
    v4 = *(a1 + 52);
    v7 = *(a1 + 60);
  }

  else
  {
    v4 = *(a1 + 52);
    v5 = *(a1 + 56);
    if ((v5 / 0x3E8 - *(a1 + 44)) >= 0)
    {
      v6 = v5 / 0x3E8 - *(a1 + 44);
    }

    else
    {
      v6 = *(a1 + 44) - v5 / 0x3E8;
    }

    v7 = *(a1 + 60);
    if ((v4 - v7) >> 4 <= 0x176 && (*(a1 + 6) & 1) == 0)
    {
      *(a1 + 5) = v3 + 1;
      *(a1 + 6) = 1;
    }

    v8 = *(a1 + 384);
    if (*(v8 + 336) < 60.0)
    {
      v9 = *(v8 + 328) - v2;
      v10 = -274877907 * (*(v8 + 356) - v5);
      v11 = (v10 >> 38) + (v10 >> 63);
      v12 = v9 - 604800;
      v13 = v9 + 604800;
      if (v9 >= -302400)
      {
        v13 = v9;
      }

      if (v9 <= 302400)
      {
        v12 = v13;
      }

      v14 = v12 + v11;
      if (v14 < 0)
      {
        v14 = -v14;
      }

      if (v14 >= 0x65)
      {
        if (v6 < 0x1F)
        {
          return 0;
        }

        goto LABEL_25;
      }

      if (v6 >= 0x3D)
      {
LABEL_25:
        BlueFin::GlMeFrameMgr::SetState(a1, 0);
        return 0;
      }
    }
  }

  *(a2 + 8) = v2;
  *(a2 + 12) = v7;
  *(a2 + 4) = v4;
  if (*(a1 + 1) == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t *BlueFin::GlMeSrdSvIdReportMsmtSlot::GetSvId@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v2 = *(this + 100);
  if ((v2 - 189) <= 0xFFFFFF43)
  {
    DeviceFaultNotify("glmesrd_svid_report_mgr_slot_types.cpp", 102, "GetSvId", "IS_SVID(*m_otDspMeas.otSignalId.GetSvId())");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_svid_report_mgr_slot_types.cpp", 102, "IS_SVID(*m_otDspMeas.otSignalId.GetSvId())");
  }

  *a1 = v2;
  return this;
}

float BlueFin::GlMeMsmtMgr::CurrentCrossCorrThreshSNR_Get(BlueFin::GlMeMsmtMgr *this)
{
  v1 = this + 976;
  if (*(this + 1002))
  {
    v2 = *&v1[4 * *(this + 1001)];
  }

  else
  {
    v3 = 0;
    v2 = -171.0;
    do
    {
      v4 = *&v1[4 * v3];
      if (v2 < v4)
      {
        *(this + 1001) = v3;
        v2 = v4;
      }

      ++v3;
    }

    while (v3 != 5);
    if (v2 > -124.0)
    {
      *&v1[4 * *(this + 1001)] = -1024458752;
      v2 = -120.0;
    }

    *(this + 1002) = 1;
  }

  return v2 + -20.0;
}

void BlueFin::GlMeMsmtMgr::SetDSPMeas(BlueFin::GlMeMsmtMgr *this, const BlueFin::GlMeDSPMeas *a2)
{
  v5 = (a2 + 104);
  v4 = *(a2 + 26);
  v74[0] = *(a2 + 100);
  v75 = v4;
  v76 = *(a2 + 54);
  if (v74[0] - 1 > 0xBB)
  {
LABEL_116:
    if ((*(a2 + 85) & 0x40) == 0)
    {
      v69 = *(a2 + 3);
      if (v69 > *(this + 29))
      {
        *(this + 29) = v69;
      }
    }

    return;
  }

  v6 = *(a2 + 35);
  if ((v6 - 8) >= 2)
  {
    if (v6 == 14)
    {
LABEL_9:
      v9 = 0;
      goto LABEL_11;
    }

    if (v6 != 15)
    {
      v9 = 1;
LABEL_11:
      MsmtSlotPtr = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(this, v74, 0, v9);
      if (!MsmtSlotPtr)
      {
        return;
      }

      if (*(a2 + 100) != v74[0] || *v5 != v75)
      {
        v70 = "rMeas.otSignalId == otSignalId";
        DeviceFaultNotify("glme_msmtmgr.cpp", 609, "SetDSPMeas", "rMeas.otSignalId == otSignalId");
        v71 = "glme_msmtmgr.cpp";
        v72 = 609;
        goto LABEL_121;
      }

      v14 = MsmtSlotPtr;
      *(*this + 4 * (v76 >> 5)) |= 1 << v76;
      *(MsmtSlotPtr + 112) = *(a2 + 112);
      *(MsmtSlotPtr + 88) = *(a2 + 11);
      *(MsmtSlotPtr + 96) = *(a2 + 24);
      *(MsmtSlotPtr + 132) = *(a2 + 33);
      *(MsmtSlotPtr + 136) = *(a2 + 34);
      *(MsmtSlotPtr + 140) = *(a2 + 35);
      v15 = *(a2 + 21);
      if ((v15 & 0x10) == 0)
      {
        v70 = "0";
        DeviceFaultNotify("glme_msmtmgr.cpp", 667, "SetDSPMeas", "0");
        v71 = "glme_msmtmgr.cpp";
        v72 = 667;
        goto LABEL_121;
      }

      v16 = *(MsmtSlotPtr + 84);
      v17 = *(a2 + 3);
      v18 = 0.0;
      if ((v16 & 0x10) != 0)
      {
        v18 = (v15 & 0x20) != 0 ? v17 - *(MsmtSlotPtr + 24) + *(a2 + 16) : v17 - *(MsmtSlotPtr + 24);
        if ((v16 & 0x20) != 0)
        {
          v18 = v18 - *(MsmtSlotPtr + 64);
        }
      }

      *(MsmtSlotPtr + 24) = v17;
      v19 = v16 | 0x10;
      *(MsmtSlotPtr + 84) = v16 | 0x10;
      *(MsmtSlotPtr + 44) = *(a2 + 11);
      if ((*(a2 + 84) & 2) != 0)
      {
        v20 = *(a2 + 9);
        *(MsmtSlotPtr + 36) = v20;
        *(MsmtSlotPtr + 84) = v16 | 0x12;
        if (*(this + 1000) != 1 || v20 > *(this + 249))
        {
          *(this + 249) = v20;
          *(this + 1000) = 1;
        }

        v19 = *(MsmtSlotPtr + 84) & 0xFFFF7FFF | ((v20 < BlueFin::GlMeMsmtMgr::CurrentCrossCorrThreshSNR_Get(this)) << 15);
        *(v14 + 84) = v19;
        v21 = *(this + 121);
        if (v21)
        {
          (*(*v21 + 40))(v21, *(a2 + 112), v74, *(a2 + 9));
          v19 = *(v14 + 84);
        }
      }

      if ((*(a2 + 86) & 4) != 0)
      {
        *(v14 + 40) = *(a2 + 10);
        v19 |= 0x40000u;
        *(v14 + 84) = v19;
        v22 = *(this + 121);
        if (v22)
        {
          (*(*v22 + 40))(v22, *(a2 + 112), v74);
          v19 = *(v14 + 84);
        }
      }

      v23 = v19 & 0xFFFF7FFF | (((*(a2 + 21) >> 15) & 1) << 15);
      *(v14 + 84) = v23;
      v24 = v23 & 0xFFFFFEFF | *(a2 + 21) & 0x100;
      *(v14 + 48) = vand_s8(*(a2 + 48), vcgez_s32(vshl_n_s32(vdup_n_s32((*(a2 + 21) & 0x100) == 0), 0x1FuLL)));
      *(v14 + 84) = v24;
      if ((*(a2 + 84) & 0x40) != 0)
      {
        *(v14 + 32) = *(a2 + 8);
        v25 = *(a2 + 14);
        *(v14 + 56) = v25;
        *(v14 + 148) = *(a2 + 148);
        v24 |= 0x40u;
        *(v14 + 84) = v24;
        v26 = *(a2 + 35);
        if (v26 <= 0x11 && ((1 << v26) & 0x21800) != 0)
        {
          v11.i64[0] = *(a2 + 3);
          *v13.i64 = *v11.i64 + trunc(*v11.i64 * 2.32830644e-10) * -4294967300.0;
          v27.f64[0] = NAN;
          v27.f64[1] = NAN;
          v28 = vnegq_f64(v27);
          v13.i64[0] = vbslq_s8(v28, v13, v11).u64[0];
          if (*v11.i64 > 4294967300.0)
          {
            v11.i64[0] = v13.i64[0];
          }

          if (*v11.i64 < -4294967300.0)
          {
            *v12.i64 = -*v11.i64;
            *v11.i64 = -(*v11.i64 - trunc(*v11.i64 * -2.32830644e-10) * -4294967300.0);
            *v11.i64 = -*vbslq_s8(v28, v11, v12).i64;
          }

          if (*v11.i64 < 0.0)
          {
            v29 = --*v11.i64;
          }

          else
          {
            v29 = *v11.i64;
          }

          *(v14 + 172) = v29;
        }
      }

      else if ((v19 & 0x40) != 0)
      {
        v25 = *(v14 + 56) * 1.05;
        *(v14 + 56) = v25;
        *(v14 + 152) = *(v14 + 152) * 1.05;
      }

      else
      {
        *(v14 + 32) = 0;
        *(v14 + 56) = 2139095039;
        v25 = 3.4028e38;
        *(v14 + 148) = 0x7F7FFFFF00000000;
      }

      v30 = *(a2 + 21);
      if ((v30 & 0x80000) != 0)
      {
        v24 |= 0x80000u;
      }

      else
      {
        if ((v24 & 0x80000) == 0)
        {
          goto LABEL_49;
        }

        v24 &= ~0x80000u;
      }

      *(v14 + 84) = v24;
      v30 = *(a2 + 21);
LABEL_49:
      if ((v30 & 0x80) != 0)
      {
        v24 |= 0x80u;
        *(v14 + 84) = v24;
        v30 = *(a2 + 21);
      }

      else if ((v30 & 0x800000) == 0)
      {
        v24 &= 0xFF7FFF7F;
        *(v14 + 84) = v24;
        *(v14 + 8) = 0;
        v31 = 0;
        goto LABEL_56;
      }

      if ((v30 & 0x800000) != 0)
      {
        v24 |= 0x800000u;
        *(v14 + 84) = v24;
      }

      *(v14 + 8) = *(a2 + 1);
      v31 = *(a2 + 15);
LABEL_56:
      *(v14 + 60) = v31;
      v32 = *(a2 + 15);
      v33 = *(a2 + 32);
      v34 = *(a2 + 21) & 0x1000000 | v24 & 0xFEFFFFFF;
      if ((*(a2 + 21) & 0x1000000) == 0)
      {
        v32 = 0.0;
        v33 = 0.0;
      }

      *(v14 + 84) = v34;
      *(v14 + 120) = v32;
      *(v14 + 128) = v33;
      if ((*(a2 + 84) & 0x20) != 0)
      {
        *(v14 + 16) = 0;
        *(v14 + 64) = *(a2 + 8);
        v34 = v34 & 0xFFFFFFDB | 0x20;
      }

      else
      {
        if ((v24 & 0x20) == 0)
        {
LABEL_66:
          v36 = *(v14 + 164);
          if (v36 == -1)
          {
            v39 = 0;
          }

          else
          {
            v37 = *(v14 + 24);
            v38 = v36 * -0.001;
            v39 = (v37 + v38) <= 600.0;
          }

          v40 = *(v14 + 172);
          if (v40 == -1)
          {
            v42 = 0;
          }

          else
          {
            v41 = *(v14 + 24);
            v42 = (v41 - v40) <= 5.0;
          }

          v43 = *(a2 + 21);
          if ((v43 & 8) == 0)
          {
            v44 = *(v14 + 169);
            if (v43 & 0x400) != 0 && ((v44 | v42) & v39)
            {
              v45 = v34 & 0xFFDFFBF7;
LABEL_112:
              v58 = v45 | 0x408;
              goto LABEL_113;
            }

            if ((v43 & 0x400) != 0 || (v44 & v39) == 0)
            {
              *(v14 + 164) = -1;
              *(v14 + 168) = 255;
              v58 = v34 & 0xFFDFF9F7;
LABEL_113:
              *(v14 + 84) = v58;
              v68 = *(a2 + 21);
              if ((v68 & 0x100000) != 0)
              {
                *(v14 + 72) = *(a2 + 9);
                *(v14 + 80) = *(a2 + 20);
                v58 |= 0x100000u;
                *(v14 + 84) = v58;
                v68 = *(a2 + 21);
              }

              *(v14 + 84) = v58 & 0xFFFFDFFF | (((v68 >> 13) & 1) << 13);
              goto LABEL_116;
            }

            v51 = v36 * 0.001 + (*(v14 + 24) - v36 * 0.001) * (1.0 - *(v14 + 32));
            v73 = *(v14 + 24);
            SubEpochTime = BlueFin::GlSystemTime::getSubEpochTime(&v73, v74, 0);
            v73 = v51;
            v53 = BlueFin::GlSystemTime::getSubEpochTime(&v73, v74, 0);
            if (SubEpochTime - v53 >= 0.0005)
            {
              v67 = v51 + -0.001;
            }

            else
            {
              if (v53 - SubEpochTime < 0.0005)
              {
                v54 = floor(v51 * 1000.0) / 1000.0;
LABEL_111:
                v73 = *(v14 + 24);
                *(v14 + 24) = v54 + BlueFin::GlSystemTime::getSubEpochTime(&v73, v74, 0);
                v45 = *(v14 + 84) & 0xFFDFF9F7;
                goto LABEL_112;
              }

              v67 = v51 + 0.001;
            }

            v54 = floor(v67 * 1000.0) / 1000.0;
            goto LABEL_111;
          }

          if ((v43 & 0x400) != 0)
          {
            *(v14 + 84) = v34 | 0x408;
            v46 = v34 & 0xFFFFF9F7 | 0x408;
            v47 = v34 | 0x608;
            if ((*(a2 + 21) & 0x200) != 0)
            {
              v46 = v47;
            }

            *(v14 + 84) = v46;
            v48 = *(a2 + 35);
            if (v48 <= 0x11 && ((1 << v48) & 0x21800) != 0)
            {
              *(v14 + 169) = 1;
            }

            v49 = *(v14 + 24);
            if (v49 * 1000.0 <= 0.0)
            {
              if (v49 * 1000.0 >= 0.0)
              {
                v59 = 0;
LABEL_97:
                *(v14 + 164) = v59;
                v73 = v49;
                *v60.i64 = BlueFin::GlSystemTime::getSubBitTime(&v73, v74, 0) * 1000.0;
                *v62.i64 = *v60.i64 + trunc(*v60.i64 * 2.32830644e-10) * -4294967300.0;
                v63.f64[0] = NAN;
                v63.f64[1] = NAN;
                v64 = vnegq_f64(v63);
                *&v65 = vbslq_s8(v64, v62, v60).u64[0];
                if (*v60.i64 > 4294967300.0)
                {
                  *v60.i64 = v65;
                }

                if (*v60.i64 < -4294967300.0)
                {
                  *v61.i64 = -*v60.i64;
                  *v60.i64 = -(*v60.i64 - trunc(*v60.i64 * -2.32830644e-10) * -4294967300.0);
                  *v60.i64 = -*vbslq_s8(v64, v60, v61).i64;
                }

                if (*v60.i64 < 0.0)
                {
                  v66 = --*v60.i64;
                }

                else
                {
                  LOBYTE(v66) = *v60.i64;
                }

                *(v14 + 168) = v66;
                v58 = *(v14 + 84) | 0x200000;
                goto LABEL_113;
              }

              v50 = -0.5;
            }

            else
            {
              v50 = 0.5;
            }

            v59 = (v49 * 1000.0 + v50);
            goto LABEL_97;
          }

          v70 = "0";
          DeviceFaultNotify("glme_msmtmgr.cpp", 913, "SetDSPMeas", "0");
          v71 = "glme_msmtmgr.cpp";
          v72 = 913;
LABEL_121:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v71, v72, v70);
        }

        *(v14 + 64) = 0;
        *(v14 + 16) = v18 + *(v14 + 16);
        v34 |= 4u;
        *(v14 + 84) = v34;
        if ((v24 & 0x40) != 0)
        {
          v55 = v18;
          v56 = *(v14 + 68) + (fabsf(v55) * v25);
          *(v14 + 68) = v56;
          if (v74[0] < 0x34u || v74[0] >= 0x42u)
          {
            v57 = 0.00015152;
          }

          else
          {
            v57 = 0.00030333;
          }

          if (v56 <= v57)
          {
            goto LABEL_66;
          }

          v34 &= ~0x20u;
        }

        else
        {
          if (*(v14 + 108) >= 0x23Fu)
          {
            v70 = "IsValid()";
            DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
            v71 = "glsignalid.h";
            v72 = 679;
            goto LABEL_121;
          }

          if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v14 + 104) - *(v14 + 104) + BlueFin::GlSvId::s_aucSvId2gnss[*(v14 + 100)]])
          {
            v70 = "ucMsPerEpoch != 0";
            DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
            v71 = "glsignalid.h";
            v72 = 686;
            goto LABEL_121;
          }

          v35 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v14 + 104) - *(v14 + 104) + BlueFin::GlSvId::s_aucSvId2gnss[*(v14 + 100)]] * 0.001;
          *(v14 + 68) = v35;
          v34 &= 0xFFFFFF9F;
        }
      }

      *(v14 + 84) = v34;
      goto LABEL_66;
    }
  }

  v7 = v6 & 0xFFFFFFFE;
  if (v74[0] - 139 > 0x23 || v7 != 8)
  {
    goto LABEL_9;
  }
}

double BlueFin::GlMeSrdMeasAidFilterEvents::OnMeasSSEvent(BlueFin::GlMeSrdMeasAidFilterEvents *this, float a2, unsigned __int8 a3, const BlueFin::GlSignalId *a4)
{
  if (*a4 - 189 <= 0xFFFFFF43)
  {
    DeviceFaultNotify("glmesrd_ctrl_sm.h", 157, "OnMeasSSEvent", "IS_SVID(*rotSignalId.GetSvId())");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.h", 157, "IS_SVID(*rotSignalId.GetSvId())");
  }

  result = a2 + 0.5;
  *(this + *(a4 + 4) + 8) = result;
  return result;
}

uint64_t BlueFin::GlMeFrameMgr::TestOverlapBits(BlueFin::GlMeFrameMgr *this, unsigned int a2, char a3, int a4)
{
  v4 = this >> 30;
  if ((a2 & 0xFFFFFFFD) != 0 && a4 && v4 != (a3 & 3) && (a3 & 3 ^ (this >> 30)) != 3)
  {
    return 0;
  }

  if (a2)
  {
    v4 = this & 3;
  }

  v7 = v4 == 3 || v4 == 0;
  if (((1 << a2) & 0x207) == 0)
  {
    v7 = 1;
  }

  return a2 > 9 || v7;
}

BOOL BlueFin::GlMeMeasAidFilter::IsTowUnverified(uint64_t a1, const BlueFin::GlSignalId *a2)
{
  MsmtSlotPtr = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr((a1 + 10624), a2, 1, 1);
  v4 = *a2;
  if (!*a2 || v4 >= 0x21 && (v4 < 0x42 || v4 >= 0x4C && v4 - 175 > 0xD))
  {
    return 0;
  }

  v5 = BlueFin::GlMeSlots::GpsFrameMgr(MsmtSlotPtr, a2);
  return BlueFin::GlMeFrameMgr::GetTowMeas(v5, &v7) == 1;
}

uint64_t *BlueFin::GlMeSrdSvIdReportDataBitsSlot::GetSvId@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v2 = *(this + 9);
  if (v2 != *(this + 313))
  {
    v3 = "m_otFllBits.m_otSvId == m_otPllBits.m_otSvId";
    DeviceFaultNotify("glmesrd_svid_report_mgr_slot_types.cpp", 50, "GetSvId", "m_otFllBits.m_otSvId == m_otPllBits.m_otSvId");
    v4 = 50;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_svid_report_mgr_slot_types.cpp", v4, v3);
  }

  if ((v2 - 189) <= 0xFFFFFF43)
  {
    v3 = "IS_SVID(*m_otFllBits.m_otSvId)";
    DeviceFaultNotify("glmesrd_svid_report_mgr_slot_types.cpp", 52, "GetSvId", "IS_SVID(*m_otFllBits.m_otSvId)");
    v4 = 52;
    goto LABEL_6;
  }

  *a1 = v2;
  return this;
}

uint64_t BlueFin::GlMeMsmtMgr::SetDSPDataBits(uint64_t this, const BlueFin::GlMeDSPDataBits *a2, const BlueFin::GlMeDSPDataBits *a3)
{
  v3 = *(a2 + 9);
  if (v3 != *(a3 + 9))
  {
    v45 = "rFllDataBits.m_otSvId == rPllDataBits.m_otSvId";
    DeviceFaultNotify("glme_msmtmgr.cpp", 1282, "SetDSPDataBits", "rFllDataBits.m_otSvId == rPllDataBits.m_otSvId");
    v46 = "glme_msmtmgr.cpp";
    v47 = 1282;
    goto LABEL_77;
  }

  if ((*(a2 + 12) & 2) == 0 || (*(a3 + 12) & 2) != 0)
  {
    v45 = "(rFllDataBits.m_otFlags32.Has(GLME_DSPDATABIT_nPLL_FLL)) && (rPllDataBits.m_otFlags32.Missing(GLME_DSPDATABIT_nPLL_FLL))";
    DeviceFaultNotify("glme_msmtmgr.cpp", 1283, "SetDSPDataBits", "(rFllDataBits.m_otFlags32.Has(GLME_DSPDATABIT_nPLL_FLL)) && (rPllDataBits.m_otFlags32.Missing(GLME_DSPDATABIT_nPLL_FLL))");
    v46 = "glme_msmtmgr.cpp";
    v47 = 1283;
    goto LABEL_77;
  }

  v56 = *(a2 + 9);
  if (!v3 || v3 == 255)
  {
    return this;
  }

  v6 = this;
  v7 = BlueFin::GlUtils::m_pInstance;
  if (BlueFin::GlUtils::m_pInstance)
  {
    if (*(BlueFin::GlUtils::m_pInstance + 1122) != 1 || (this = (*(*a2 + 24))(a2, 0, 0), (v7 = BlueFin::GlUtils::m_pInstance) != 0))
    {
      if (*(v7 + 1122) == 1)
      {
        this = (*(*a3 + 24))(a3, 0, 0);
      }
    }
  }

  v8 = BlueFin::GlSvId::s_aucSvId2gnss[v3];
  if (v8 <= 2)
  {
    if (!BlueFin::GlSvId::s_aucSvId2gnss[v3])
    {
      goto LABEL_37;
    }

    if (v8 == 1)
    {
      BlueFin::GlArray::EnsureValidHandle(v6 + 744, v3);
      v24 = *(*(v6 + 760) + v3 - *(v6 + 780));
      v25 = BlueFin::GlArray::Add((v6 + 744), v3);
      if (v25)
      {
        if (v24 == 255)
        {
          v30 = 0;
          v25[6].i32[1] = -1;
          v25[6].i16[4] = -256;
          v25[6].i8[10] = 0;
          v31 = v25 + 2;
          do
          {
            v31->i32[0] = 0;
            if (v30 <= 7)
            {
              v31[-2].i32[0] = 0;
            }

            ++v30;
            v31 = (v31 + 4);
          }

          while (v30 != 17);
          v25[7].i64[0] = *(v6 + 176);
        }

        BlueFin::GlMeWaasFrameMgr::Update(v25, a3, v26, v27, v28, v29);
      }

      v51[0] = v3;
      v52 = 0;
      if ((v3 - 189) >= 0xFFFFFF44)
      {
        v32 = v3 + 95;
      }

      else
      {
        v32 = 575;
      }

      v53 = v32;
      this = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(v6, v51, 1, 1);
      MsmtSlotPtr = this;
      if (!this)
      {
        return this;
      }
    }

    else
    {
      if (v8 != 2)
      {
        return this;
      }

      v51[0] = v3;
      v52 = 0;
      if ((v3 - 189) >= 0xFFFFFF44)
      {
        v15 = v3 + 95;
      }

      else
      {
        v15 = 575;
      }

      v53 = v15;
      MsmtSlotPtr = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(v6, v51, 0, 1);
      v17 = BlueFin::GlMeSlots::GlonassFrameMgr(MsmtSlotPtr, &v56);
      this = BlueFin::GlMeGlonassFrameMgr::Update(v17, a2, a3);
    }

    goto LABEL_68;
  }

  if (BlueFin::GlSvId::s_aucSvId2gnss[v3] > 4u)
  {
    if (v8 != 5)
    {
      if (v8 != 6)
      {
        return this;
      }

      v51[0] = v3;
      v52 = 0;
      if ((v3 - 189) >= 0xFFFFFF44)
      {
        v19 = v3 + 386;
      }

      else
      {
        v19 = 575;
      }

      v53 = v19;
      MsmtSlotPtr = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(v6, v51, 0, 1);
      v20 = BlueFin::GlMeSlots::NavICDecoder(MsmtSlotPtr, &v56);
      this = BlueFin::GlMeNavICDecoder::SetDSPDataBits(v20, *(v6 + 968), a2, a3);
      goto LABEL_68;
    }

    v51[0] = v3;
    v52 = 0;
    if ((v3 - 189) >= 0xFFFFFF44)
    {
      v21 = v3 + 314;
    }

    else
    {
      v21 = 575;
    }

    v53 = v21;
    v22 = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(v6, v51, 0, 1);
    MsmtSlotPtr = v22;
    if (*(a2 + 13))
    {
      v33 = BlueFin::GlMeSlots::GalileoPilotSecCodeDecoder(v22, &v56);
      BlueFin::GlMeGalileoPilotSecCodeDecoder::SetDSPDataBits(v33, a2, a3);
    }

    else
    {
      v23 = BlueFin::GlMeSlots::GalileoINavDecoder(v22, &v56);
      BlueFin::GlMeGalileoINavDecoder::SetDSPDataBits(v23, *(v6 + 968), a2, a3);
    }

    this = BlueFin::GlMeSlots::GalileoINavDecoder(MsmtSlotPtr, &v56);
    if (*(this + 376))
    {
      v34 = (this + 392);
    }

    else
    {
      if (*(this + 752) != 1)
      {
        goto LABEL_68;
      }

      v34 = (this + 768);
    }

    v35 = *v34;
    this = BlueFin::GlMeSlots::GalileoPilotSecCodeDecoder(MsmtSlotPtr, &v56);
    *(this + 8) = 1;
    *(this + 4) = v35 % 0x64;
LABEL_68:
    v18.i32[0] = *(MsmtSlotPtr + 40);
    v39 = *v18.i32;
    if (v39)
    {
      BlueFin::GlMeDSPDataBits::CheckLowTransitionCount(a2, *v18.i32, v18);
      return BlueFin::GlMeDSPDataBits::CheckLowTransitionCount(a3, v39, v40);
    }

    return this;
  }

  if (v8 == 3)
  {
LABEL_37:
    v51[0] = v3;
    v52 = 0;
    v53 = 575;
    if ((v3 - 189) >= 0xFFFFFF44)
    {
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v8] == 255)
      {
        v52 = -1;
      }

      else
      {
        v53 = BlueFin::GlSignalId::s_ausGnss2signalId[v8] + v3 - BlueFin::GlSvId::s_aucGnss2minSvId[v8];
      }
    }

    v36 = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(v6, v51, 0, 1);
    if (!v36)
    {
      v45 = "pMeSlot != NULL_PTR";
      DeviceFaultNotify("glme_msmtmgr.cpp", 1304, "SetDSPDataBits", "pMeSlot != NULL_PTR");
      v46 = "glme_msmtmgr.cpp";
      v47 = 1304;
      goto LABEL_77;
    }

    MsmtSlotPtr = v36;
    v37 = BlueFin::GlMeSlots::GpsFrameMgr(v36, &v56);
    if (v3 != *(v37 + 408))
    {
      v45 = "otSvId == otFrameMgr.GetSvId()";
      DeviceFaultNotify("glme_msmtmgr.cpp", 1307, "SetDSPDataBits", "otSvId == otFrameMgr.GetSvId()");
      v46 = "glme_msmtmgr.cpp";
      v47 = 1307;
      goto LABEL_77;
    }

    v38 = v37;
    BlueFin::GlMeFrameMgr::Update(v37, a2);
    this = BlueFin::GlMeFrameMgr::Update(v38, a3);
    goto LABEL_68;
  }

  if (v8 == 4)
  {
    v51[0] = v3;
    v52 = 0;
    if ((v3 - 189) >= 0xFFFFFF44)
    {
      v9 = v3 + 125;
    }

    else
    {
      v9 = 575;
    }

    v53 = v9;
    v10 = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(v6, v51, 0, 1);
    if (!v10 || !*(v6 + 176))
    {
      v45 = "pMeSlot && m_posEngInterface";
      DeviceFaultNotify("glme_msmtmgr.cpp", 1389, "SetDSPDataBits", "pMeSlot && m_posEngInterface");
      v46 = "glme_msmtmgr.cpp";
      v47 = 1389;
      goto LABEL_77;
    }

    v11 = BlueFin::GlMeSlots::BeidouBitDecoder(v10, &v56);
    this = BlueFin::GlMeBeidouDecodeMgr::SetDSPDataBits(v11, *(v6 + 176), *(v6 + 968), a2, a3);
    v12 = *(a3 + 8);
    if (*(a3 + 8))
    {
      v52 = 0;
      v55 = 0;
      v54 = 0;
      v13 = *(a3 + 9);
      v51[0] = v13;
      v53 = v12;
      v48[0] = v13;
      v49 = 0;
      v50 = 575;
      if ((v13 - 189) >= 0xFFFFFF44)
      {
        v14 = BlueFin::GlSvId::s_aucSvId2gnss[v13];
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v14] == 255)
        {
          v49 = -1;
        }

        else
        {
          v50 = BlueFin::GlSignalId::s_ausGnss2signalId[v14] + v13 - BlueFin::GlSvId::s_aucGnss2minSvId[v14];
        }
      }

      v41 = *(a3 + 6);
      EpochPerBit = BlueFin::GlSignalId::GetEpochPerBit(v48);
      if (v50 >= 0x23Fu)
      {
        v45 = "IsValid()";
        DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
        v46 = "glsignalid.h";
        v47 = 679;
      }

      else
      {
        v43 = BlueFin::GlSvId::s_aucSvId2gnss[v48[0]];
        v44 = &BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[-v49];
        if (v44[8 * v49 + v43])
        {
          v52 = v41 - EpochPerBit * v12 * v44[8 * v49 + v43];
          v54 = *(a3 + 44);
          v55 = *(a3 + 172);
          return (*(**(v6 + 176) + 72))(*(v6 + 176), v51);
        }

        v45 = "ucMsPerEpoch != 0";
        DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
        v46 = "glsignalid.h";
        v47 = 686;
      }

LABEL_77:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v46, v47, v45);
    }
  }

  return this;
}

uint64_t *BlueFin::GlMeFrameMgr::CopyBits(uint64_t *this, BlueFin::GlBitBuffer *a2, BlueFin::GlBitBuffer *a3, BlueFin::GlBitBuffer *a4, unsigned int *a5, unsigned int *a6)
{
  v22 = 0;
  v19[0] = a4;
  v19[1] = 0;
  v20 = 0;
  v23 = 0;
  v21 = 0x40000000400;
  v24 = 0;
  v13[0] = a5;
  v13[1] = 0;
  v14 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0x40000000400;
  v18 = 0;
  if (a6)
  {
    v6 = a6;
    v9 = this;
    do
    {
      if ((v6 & 0xFFE0) != 0)
      {
        v10 = 32;
      }

      else
      {
        v10 = v6;
      }

      v6 -= v10;
      BlueFin::GlBitBuffer::PutU(v9, 0xFFFFFFFF, v10);
      v11 = BlueFin::GlBitBuffer::GetU(v13, v10);
      BlueFin::GlBitBuffer::PutU(a2, ~v11, v10);
      v12 = BlueFin::GlBitBuffer::GetU(v19, v10);
      this = BlueFin::GlBitBuffer::PutU(a3, v12, v10);
    }

    while (v6);
  }

  return this;
}

uint64_t BlueFin::GlMeDSPDataBits::CheckLowTransitionCount(uint64_t this, uint64_t a2, int8x8_t a3)
{
  v3 = *(this + 9);
  if (v3 <= 0x33)
  {
    if (v3 > 0x20)
    {
      return this;
    }

    v4 = 100;
  }

  else if (v3 >= 0x42)
  {
    v4 = 100;
  }

  else
  {
    v4 = 200;
  }

  v5 = *(this + 16);
  if (v5 >= v4 >> 1)
  {
    if (v5 < 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v7 = (this + 44);
      v8 = *(this + 44) >> 31;
      v9 = 32 - v5;
      v10 = *(this + 16);
      do
      {
        v12 = *v7++;
        v11 = v12;
        v13 = 32 - v10;
        if (v10 > 0x20u)
        {
          v13 = 0;
        }

        v14 = v11 << v13;
        if ((v14 & (1 << v9)) != 0)
        {
          v15 = v14 | ((1 << v9) - 1);
        }

        else
        {
          v15 = v14 & -(1 << v9);
        }

        if (v10 > 0x1F)
        {
          v15 = v14;
        }

        a3.i32[0] = v15 ^ (v15 >> 31) ^ ((v15 ^ (v15 >> 31)) >> 1);
        a3 = vcnt_s8(a3);
        a3.i16[0] = vaddlv_u8(a3);
        v6 += (v8 ^ (v14 >> 31)) + a3.i32[0];
        v8 = v14 & 1;
        v9 += 32;
        v16 = v10 >= 0x20;
        v10 -= 32;
      }

      while (v10 != 0 && v16);
    }

    v17 = v6 + 2;
    if (a2 >= 32)
    {
      v17 = v6;
    }

    if (v17 >= 6)
    {
      if (v6 >= (v5 >> 4))
      {
        return this;
      }

      LOBYTE(v18) = 15;
    }

    else
    {
      v18 = 0xE0E0D0D0C0CuLL >> (8 * v17);
    }

    if ((*(this + 12) & 2) != 0)
    {
      v19 = 70;
    }

    else
    {
      v19 = 80;
    }

    if ((v3 - 52) > 0xD)
    {
      return GlCustomLog(v18, "LowTransitionCount sv%02d C/No:%hd %cLL.%c %s %d/%d/%d 0x%08X:%08X\n", v3, a2);
    }

    else
    {
      return GlCustomLog(v18, "LowTransitionCount sv%02d C/No:%hd %cLL.%c %s %d/%d/%d 0x%08X:%08X:%08X\n", v3, a2, v19);
    }
  }

  return this;
}

uint64_t BlueFin::GlMeGlonassFrameMgr::ParseBits(BlueFin::GlMeGlonassFrameMgr *this, BlueFin::GlMeDSPDataBits *a2, unsigned int *a3, unsigned int *a4, BOOL *a5, int a6)
{
  v67 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  memset(v62, 0, 13);
  v61 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  memset(v57, 0, 13);
  v56 = 0;
  SearchStateMemory = BlueFin::GlMeGlonassFrameMgr::GetSearchStateMemory(this);
  v52 = a5;
  *a5 = 0;
  v63[0] = a2 + 44;
  v63[1] = 0;
  v64 = 0;
  v68 = 0;
  v66 = 0;
  v65 = 0x40000000400;
  v69 = 0;
  BlueFin::GlBitBuffer::Limit(v63, *(a2 + 8));
  if (a6)
  {
    v11 = SearchStateMemory + 188;
    v58 = SearchStateMemory + 188;
    v59 = 0;
    v60 = 0;
    LODWORD(v62[1]) = 0;
    LODWORD(v62[0]) = 0;
    v61 = 0x8000000080;
    BYTE4(v62[1]) = 0;
    BlueFin::GlBitBuffer::Limit(&v58, 0x64u);
    v12 = SearchStateMemory + 204;
    v53 = SearchStateMemory + 204;
    v54 = 0;
    v55 = 0;
    LODWORD(v57[1]) = 0;
    LODWORD(v57[0]) = 0;
    v56 = 0x8000000080;
    BYTE4(v57[1]) = 0;
    BlueFin::GlBitBuffer::Limit(&v53, 0x64u);
    *SearchStateMemory = 0;
    v13 = *(a2 + 5);
    if (v13 - 20 * *(a2 + 8) != *(SearchStateMemory + 4))
    {
      *v12 = 0;
      *(SearchStateMemory + 212) = 0;
      v13 = *(a2 + 5);
    }

    *(SearchStateMemory + 4) = v13;
    v14 = 252;
  }

  else
  {
    v11 = SearchStateMemory + 220;
    v58 = SearchStateMemory + 220;
    v59 = 0;
    v60 = 0;
    LODWORD(v62[1]) = 0;
    LODWORD(v62[0]) = 0;
    v61 = 0x8000000080;
    BYTE4(v62[1]) = 0;
    BlueFin::GlBitBuffer::Limit(&v58, 0x64u);
    v12 = SearchStateMemory + 236;
    v53 = SearchStateMemory + 236;
    v54 = 0;
    v55 = 0;
    LODWORD(v57[1]) = 0;
    LODWORD(v57[0]) = 0;
    v56 = 0x8000000080;
    BYTE4(v57[1]) = 0;
    BlueFin::GlBitBuffer::Limit(&v53, 0x64u);
    *(SearchStateMemory + 2) = 0;
    v13 = *(a2 + 5);
    if (v13 - 20 * *(a2 + 8) != *(SearchStateMemory + 8))
    {
      *v12 = 0;
      *(SearchStateMemory + 244) = 0;
      v13 = *(a2 + 5);
    }

    *(SearchStateMemory + 8) = v13;
    v14 = 253;
  }

  v15 = *(SearchStateMemory + 148);
  v49 = a3;
  if (v13 >= v15)
  {
    v17 = (((3277 * ((v13 - v15) % 0x7D0)) >> 16) + 100);
    v16 = *(a2 + 8);
  }

  else
  {
    v16 = *(a2 + 8);
    v17 = (200 - ((3277 * ((v15 - v13) % 0x7D0)) >> 16));
  }

  LOBYTE(v18) = *(SearchStateMemory + v14);
  v19 = (v17 - v16) % 0x64u;
  BlueFin::GlBitBuffer::Position(&v58, v19);
  result = BlueFin::GlBitBuffer::Position(&v53, v19);
  v21 = HIDWORD(v65) - v66;
  if (HIDWORD(v65) - v66 >= 1)
  {
    v22 = LODWORD(v62[0]) < 0x55;
    if (a6)
    {
      v23 = (SearchStateMemory + 260);
    }

    else
    {
      v23 = (SearchStateMemory + 264);
    }

    if (a6)
    {
      v24 = (SearchStateMemory + 268);
    }

    else
    {
      v24 = (SearchStateMemory + 272);
    }

    v25.i64[0] = 0x100000001;
    v25.i64[1] = 0x100000001;
    v26.i64[0] = 0x400000004;
    v26.i64[1] = 0x400000004;
    do
    {
      if (HIDWORD(v61) == LODWORD(v62[0]))
      {
        if ((~*(v12 + 8) & 0x7FF) == 0 && ((*(v12 + 12) >> 28 == 15) & v18) == 1)
        {
          HIDWORD(v27) = *(v11 + 8);
          LODWORD(v27) = *(v11 + 12);
          v28 = (v27 >> 28) & 0x7FFF;
          if ((a6 & 1) == 0)
          {
            if (v28 == 0x7FFF)
            {
              v29 = 2;
LABEL_44:
              *this = v29;
            }

            else if (!v28)
            {
              v29 = 1;
              goto LABEL_44;
            }
          }

          v35 = vdupq_n_s32(v28 ^ (2 * v28));
          v36 = 0uLL;
          v37 = -4;
          v38 = xmmword_298A3A490;
          do
          {
            v39 = v36;
            v36 = vaddq_s32(vandq_s8(vshlq_u32(v35, vnegq_s32(v38)), v25), v36);
            v38 = vaddq_s32(v38, v26);
            v37 += 4;
          }

          while (v37 != 12);
          v40.i64[0] = 0xE0000000ELL;
          v40.i64[1] = 0xE0000000ELL;
          v41 = *v23 + vaddvq_s32(vbslq_s8(vcgtq_u32(v40, vorrq_s8(vdupq_n_s32(0xCu), xmmword_298A397C0)), v36, v39));
          *v23 = v41;
          v42 = *v24;
          v43 = *v24 + 1;
          *v24 = v43;
          if (v42 >= 4)
          {
            if (v41 / v43 < 5)
            {
              v44 = (SearchStateMemory + 268);
              v45 = (SearchStateMemory + 260);
              if ((a6 & 1) == 0)
              {
                goto LABEL_59;
              }
            }

            else
            {
              if (a6)
              {
                *(SearchStateMemory + 254) = 1;
                v44 = (SearchStateMemory + 268);
                v45 = (SearchStateMemory + 260);
                goto LABEL_60;
              }

              *(SearchStateMemory + 255) = 1;
LABEL_59:
              v44 = (SearchStateMemory + 272);
              v45 = (SearchStateMemory + 264);
            }

LABEL_60:
            *v44 = 0;
            *v45 = 0;
          }
        }

        LODWORD(v62[0]) = 0;
        BYTE4(v62[1]) = 0;
        LODWORD(v57[0]) = 0;
        BYTE4(v57[1]) = 0;
        v22 = 1;
        LOBYTE(v18) = 1;
        *v12 = 0;
        *(v12 + 8) = 0;
        goto LABEL_62;
      }

      if (v21 >= HIDWORD(v61) - LODWORD(v62[0]))
      {
        v21 = HIDWORD(v61) - LODWORD(v62[0]);
      }

      if (v21 >= 32)
      {
        v30 = 32;
      }

      else
      {
        v30 = v21;
      }

      v31 = BlueFin::GlBitBuffer::GetU(v63, v30);
      BlueFin::GlBitBuffer::PutU(&v58, v31, v30);
      result = BlueFin::GlBitBuffer::PutU(&v53, 0xFFFFFFFF, v30);
      v32 = *(v12 + 8);
      if ((v32 & 0x7FF) != 0 || *(v12 + 12) >> 28)
      {
        v18 &= *(a2 + 12) >> 7;
      }

      v33 = v18 & 1;
      v25.i64[0] = 0x100000001;
      v25.i64[1] = 0x100000001;
      v26.i64[0] = 0x400000004;
      v26.i64[1] = 0x400000004;
      if (a6)
      {
        *(SearchStateMemory + 252) = v33;
        if (!v22)
        {
          goto LABEL_57;
        }
      }

      else
      {
        *(SearchStateMemory + 253) = v33;
        if (!v22)
        {
          goto LABEL_57;
        }
      }

      v34 = v62[0];
      if (LODWORD(v62[0]) < 0x55)
      {
        v22 = 1;
      }

      else
      {
        if (*v12 == -1 && *(v12 + 4) == -1)
        {
          *v52 = v32 > 0xFFFFF7FF;
          if (v32 >= 0xFFFFF800)
          {
            for (i = 0; i != 3; ++i)
            {
              v49[i] = *(v11 + i * 4);
            }

            v22 = 0;
            v47 = v49[1];
            v48 = v49[2];
            *v49 ^= __PAIR64__(*v49, v47) >> 31;
            v49[1] = (__PAIR64__(v47, v48) >> 31) ^ v47;
            v49[2] = v48 ^ (2 * v48);
            *a4 = 20 * (HIDWORD(v65) + v34 - v66);
            goto LABEL_62;
          }

LABEL_57:
          v22 = 0;
          goto LABEL_62;
        }

        v22 = 0;
        *v52 = 0;
      }

LABEL_62:
      v21 = HIDWORD(v65) - v66;
    }

    while (HIDWORD(v65) - v66 > 0);
  }

  return result;
}

unsigned __int8 *BlueFin::GlPeMsmtMgr::GetMeMeas(BlueFin::GlSignalIdArray **this, const BlueFin::GlSignalId *a2, int a3, unsigned int a4)
{
  result = BlueFin::GlSignalIdArray::Get(this[2349], a2);
  if (result && (((*(this[1] + (*(a2 + 4) >> 5)) >> (*(a2 + 4) & 0x1F)) | a4) & 1) == 0)
  {
    result = 0;
  }

  if (!result && a3)
  {
    result = BlueFin::GlPeMsmtMgr::GetPropagatedMeMeas(this, a2);
  }

  if (result && (*result != *a2 || *(result + 1) != *(a2 + 1)))
  {
    DeviceFaultNotify("glpe_msmtmgr.cpp", 745, "GetMeMeas", "potMeMeas->m_otSignalId == rotSignalId");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_msmtmgr.cpp", 745, "potMeMeas->m_otSignalId == rotSignalId");
  }

  return result;
}

BOOL BlueFin::stPeSigMeasKF::IsPRValid(BlueFin::stPeSigMeasKF *this)
{
  if ((*(this + 96) & 2) == 0)
  {
    return 0;
  }

  v2 = *(this + 15);
  return !v2 || BlueFin::stSkfTestParam::UseSigId(*(this + 15), (this + 40), (v2 + 112), (v2 + 376));
}

BOOL BlueFin::stPeSigMeasKF::IsRRValid(BlueFin::stPeSigMeasKF *this)
{
  if ((*(this + 96) & 0x10) == 0)
  {
    return 0;
  }

  v2 = *(this + 15);
  return !v2 || BlueFin::stSkfTestParam::UseSigId(*(this + 15), (this + 40), (v2 + 200), (v2 + 464));
}

BOOL BlueFin::stSkfTestParam::UseSigId(BlueFin::stSkfTestParam *this, const BlueFin::GlSignalId *a2, const BlueFin::GlSignalIdSet *a3, const BlueFin::GlSignalIdSet *a4)
{
  if (!**a3)
  {
    v9 = *(a3 + 8);
    if (v9 < 2)
    {
      goto LABEL_8;
    }

    v10 = v9 - 1;
    v11 = (*a3 + 4);
    while (!*v11++)
    {
      if (!--v10)
      {
        goto LABEL_8;
      }
    }
  }

  if (BlueFin::stSkfTestParam::InSatCommandedTimeRange(this))
  {
    return (*(*a3 + 4 * (*(a2 + 4) >> 5)) >> (*(a2 + 4) & 0x1F)) & 1;
  }

LABEL_8:
  if (!**a4)
  {
    v13 = *(a4 + 8);
    if (v13 < 2)
    {
      return 1;
    }

    v14 = v13 - 1;
    v15 = (*a4 + 4);
    while (!*v15++)
    {
      if (!--v14)
      {
        return 1;
      }
    }
  }

  if (BlueFin::stSkfTestParam::InSatCommandedTimeRange(this))
  {
    return ((*(*a4 + 4 * (*(a2 + 4) >> 5)) >> (*(a2 + 4) & 0x1F)) & 1) == 0;
  }

  return 1;
}

uint64_t BlueFin::GlPeMsmtMgr::insertMePeMeas(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 8);
  v7 = BlueFin::GlBigArray::Has((*(a1 + 18792) + 1152), v6);
  v8 = *(a1 + 18792);
  if (v7)
  {
    v9 = BlueFin::GlSignalIdArray::Get(v8, a2);
    if (v9 != a2)
    {
      *v9 = *a2;
      *(v9 + 4) = *(a2 + 4);
      *(v9 + 8) = *(a2 + 8);
    }

    *(v9 + 12) = *(a2 + 12);
    v10 = *(a2 + 28);
    v11 = *(a2 + 44);
    v12 = *(a2 + 60);
    *(v9 + 76) = *(a2 + 76);
    *(v9 + 60) = v12;
    *(v9 + 44) = v11;
    *(v9 + 28) = v10;
    v13 = *(a2 + 92);
    v14 = *(a2 + 108);
    v15 = *(a2 + 124);
    *(v9 + 140) = *(a2 + 140);
    *(v9 + 124) = v15;
    *(v9 + 108) = v14;
    *(v9 + 92) = v13;
    v16 = (a1 + 96);
    goto LABEL_18;
  }

  if (BlueFin::GlBigArray::Add((v8 + 1152), v6))
  {
    v17 = 0;
  }

  else
  {
    v17 = a3 == 0;
  }

  if (!v17)
  {
    v18 = *(a1 + 18792);
    v39 = v18 + 1152;
    v40 = *(v18 + 1186) + 1;
    if (*(v18 + 1184) <= v40)
    {
      goto LABEL_21;
    }

    v19 = 0;
    v20 = 575;
    v21 = -7200002;
    do
    {
      BlueFin::GlSignalIdArrayIterator::Next(&v37, &v39);
      if (((*(*(a1 + 8) + 4 * (v38 >> 5)) >> (v38 & 0x1F)) & 1) == 0)
      {
        v22 = BlueFin::GlSignalIdArray::Get(*(a1 + 18792), &v37);
        if (*(v22 + 228) < v21)
        {
          v19 = v37;
          v20 = v38;
          v21 = *(v22 + 228);
        }
      }
    }

    while (v40 < *(v39 + 32));
    if ((v19 - 1) >= 0xBC)
    {
LABEL_21:
      v35 = "otSignalIdOldest.GetSvId().isValid()";
      DeviceFaultNotify("glpe_msmtmgr.cpp", 943, "insertMePeMeas", "otSignalIdOldest.GetSvId().isValid()");
      v36 = 943;
    }

    else
    {
      BlueFin::GlBigArray::Remove(*(a1 + 18792) + 1152, v20);
      v16 = (a1 + 96);
      BlueFin::GlSetBase::Remove(a1 + 96, v20);
      v23 = BlueFin::GlBigArray::Add((*(a1 + 18792) + 1152), *(a2 + 8));
      if (v23)
      {
        v24 = *(a1 + 56224);
        *v23 = *a2;
        v25 = *(a2 + 4);
        *(v23 + 8) = *(a2 + 8);
        *(v23 + 4) = v25;
        *(v23 + 12) = *(a2 + 12);
        v26 = *(a2 + 16);
        v27 = *(a2 + 32);
        v28 = *(a2 + 64);
        *(v23 + 48) = *(a2 + 48);
        *(v23 + 64) = v28;
        *(v23 + 16) = v26;
        *(v23 + 32) = v27;
        v29 = *(a2 + 80);
        v30 = *(a2 + 96);
        v31 = *(a2 + 128);
        *(v23 + 112) = *(a2 + 112);
        *(v23 + 128) = v31;
        *(v23 + 80) = v29;
        *(v23 + 96) = v30;
        *(v23 + 184) = *a2;
        v32 = *(a2 + 4);
        *(v23 + 192) = *(a2 + 8);
        *(v23 + 188) = v32;
        v33 = *(a2 + 48);
        *(v23 + 240) = 0;
        *(v23 + 244) = v33;
        *(v23 + 264) = v24;
        *(v23 + 176) = 0;
        *(v23 + 144) = 0u;
        *(v23 + 160) = 0u;
        *(v23 + 228) = xmmword_298A419E0;
        *(v23 + 257) = 1;
        *(v23 + 196) = xmmword_298A419F0;
        *(v23 + 256) = 0;
        *(v23 + 248) = 0;
        *(v23 + 212) = 0x33D6BF9500000000;
        *(v23 + 272) = 0;
        *(v23 + 220) = 0;
        *(v23 + 224) = 0;
LABEL_18:
        result = 1;
        *(*v16 + 4 * (*(a2 + 8) >> 5)) |= 1 << *(a2 + 8);
        return result;
      }

      v35 = "potMePeMeas != nullptr";
      DeviceFaultNotify("glpe_msmtmgr.cpp", 950, "insertMePeMeas", "potMePeMeas != nullptr");
      v36 = 950;
    }

    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_msmtmgr.cpp", v36, v35);
  }

  return 0;
}

BOOL BlueFin::GlMeDspMeasListener::IsTowUnverified(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4[0] = *a2;
  v5 = *(a2 + 4);
  v6 = *(a2 + 8);
  return BlueFin::GlMeMeasAidFilter::IsTowUnverified(v2, v4);
}

BOOL BlueFin::stPeSigMeasKF::IsRRValidForNav(BlueFin::stPeSigMeasKF *this)
{
  if ((*(this + 96) & 0x20) == 0)
  {
    return 0;
  }

  v2 = *(this + 15);
  return !v2 || BlueFin::stSkfTestParam::UseSigId(*(this + 15), (this + 40), (v2 + 200), (v2 + 464));
}

uint64_t BlueFin::GlMeFrameMgr::Synced(uint64_t this, BlueFin::GlMeDSPDataBits *a2)
{
  *&v114[132] = *MEMORY[0x29EDCA608];
  if (*this != 1)
  {
    v64 = "SYNCED == m_utStateMem.ucState";
    DeviceFaultNotify("glme_framemgr.h", 532, "GetSynced", "SYNCED == m_utStateMem.ucState");
    v65 = "glme_framemgr.h";
    v66 = 532;
    goto LABEL_83;
  }

  v3 = this;
  if ((*(this + 804) & 1) == 0 && *(this + 68) > *(this + 72))
  {
    v64 = "SvId=%d expected %d <= %d\n";
    DeviceFaultNotify("glme_framemgr.cpp", 820, "Synced", "SvId=%d expected %d <= %d\n");
    v65 = "glme_framemgr.cpp";
    v66 = 820;
    goto LABEL_83;
  }

  if ((*(a2 + 12) & 4) != 0)
  {
    if (*(a2 + 8) || (v4 = *(a2 + 5)) != 0)
    {
      v64 = "(0 == otDataBits.m_usNumBits) && (0UL == otDataBits.m_ulEpochCnt)";
      DeviceFaultNotify("glme_framemgr.cpp", 824, "Synced", "(0 == otDataBits.m_usNumBits) && (0UL == otDataBits.m_ulEpochCnt)");
      v65 = "glme_framemgr.cpp";
      v66 = 824;
      goto LABEL_83;
    }
  }

  else
  {
    v4 = *(a2 + 5);
  }

  v6 = *(this + 68);
  v5 = *(this + 72);
  if (v5 != v4 && v6 >= v5)
  {
LABEL_77:
    *(v3 + 72) = v4;
    *(v3 + 4) = *(a2 + 16);
    *(v3 + 40) = *(a2 + 3);
    v52 = *(a2 + 108);
    v53 = *(a2 + 156);
    v54 = *(a2 + 140);
    *(v3 + 164) = *(a2 + 124);
    *(v3 + 180) = v54;
    *(v3 + 196) = v53;
    *(v3 + 148) = v52;
    v55 = *(a2 + 44);
    v56 = *(a2 + 60);
    v57 = *(a2 + 76);
    *(v3 + 132) = *(a2 + 92);
    *(v3 + 116) = v57;
    *(v3 + 100) = v56;
    *(v3 + 84) = v55;
    v58 = *(a2 + 252);
    v59 = *(a2 + 284);
    v60 = *(a2 + 236);
    *(v3 + 308) = *(a2 + 268);
    *(v3 + 324) = v59;
    *(v3 + 276) = v60;
    *(v3 + 292) = v58;
    v61 = *(a2 + 172);
    v62 = *(a2 + 188);
    v63 = *(a2 + 204);
    *(v3 + 260) = *(a2 + 220);
    *(v3 + 244) = v63;
    *(v3 + 228) = v62;
    *(v3 + 212) = v61;
    if ((*(a2 + 12) & 4) != 0)
    {
      BlueFin::GlMeFrameMgr::AddBestWord(v3, *(v3 + 52), 0, 0, 0, 0, 0, 0);
      return BlueFin::GlMeFrameMgr::SetState(v3, 0);
    }

    return this;
  }

  if (v5 - 20 * *(this + 4) != v6)
  {
    v7 = (*(this + 40) & 2) == 0;
    v8 = 16;
    if ((*(this + 40) & 2) == 0)
    {
      v8 = 28;
    }

    v9 = 20;
    if ((*(this + 40) & 2) == 0)
    {
      v9 = 32;
    }

    *(this + v9) = 0;
    v10 = 36;
    if (!v7)
    {
      v10 = 24;
    }

    *(this + v10) = 0;
    *(this + v8) = 0;
  }

  v106 = 0;
  v99 = 0;
  v92 = 0;
  v85 = 0;
  v78 = 0;
  v71 = 0;
  bzero(v109, 0x318uLL);
  v102[0] = v109;
  v102[1] = 0;
  v103 = 0;
  v107 = 0;
  v105 = 0;
  v11 = vdup_n_s32(0x420u);
  v104 = v11;
  v108 = 0;
  BlueFin::GlBitBuffer::PutU(v102, *(v3 + 20), 0x20u);
  v95[0] = &v110;
  v95[1] = 0;
  v96 = 0;
  v100 = 0;
  v98 = 0;
  v97 = v11;
  v101 = 0;
  BlueFin::GlBitBuffer::PutU(v95, *(v3 + 24), 0x20u);
  v74[0] = &v111;
  v74[1] = 0;
  v75 = 0;
  v79 = 0;
  v77 = 0;
  v76 = v11;
  v80 = 0;
  BlueFin::GlBitBuffer::PutU(v74, *(v3 + 16), 0x20u);
  v88[0] = &v112;
  v88[1] = 0;
  v89 = 0;
  v93 = 0;
  v91 = 0;
  v90 = v11;
  v94 = 0;
  BlueFin::GlBitBuffer::PutU(v88, *(v3 + 32), 0x20u);
  v81[0] = &v113;
  v81[1] = 0;
  v82 = 0;
  v86 = 0;
  v84 = 0;
  v83 = v11;
  v87 = 0;
  BlueFin::GlBitBuffer::PutU(v81, *(v3 + 36), 0x20u);
  v67[0] = v114;
  v67[1] = 0;
  v68 = 0;
  v72 = 0;
  v70 = 0;
  v69 = v11;
  v73 = 0;
  BlueFin::GlBitBuffer::PutU(v67, *(v3 + 28), 0x20u);
  v12 = *(v3 + 4);
  if ((*(v3 + 40) & 2) != 0)
  {
    BlueFin::GlMeFrameMgr::CopyBits(v102, v95, v74, (v3 + 84), (v3 + 212), v12);
    if (*(v3 + 72) != *(a2 + 5))
    {
      goto LABEL_26;
    }

    if ((*(a2 + 12) & 2) == 0)
    {
      v13 = *(a2 + 8);
      v14 = v88;
      v15 = v81;
      v16 = v67;
      goto LABEL_25;
    }

    v64 = "otDataBits.m_otFlags32.Missing(GLME_DSPDATABIT_nPLL_FLL)";
    DeviceFaultNotify("glme_framemgr.cpp", 866, "Synced", "otDataBits.m_otFlags32.Missing(GLME_DSPDATABIT_nPLL_FLL)");
    v65 = "glme_framemgr.cpp";
    v66 = 866;
LABEL_83:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v65, v66, v64);
  }

  BlueFin::GlMeFrameMgr::CopyBits(v88, v81, v67, (v3 + 84), (v3 + 212), v12);
  if (*(v3 + 72) != *(a2 + 5))
  {
    goto LABEL_26;
  }

  if ((*(a2 + 12) & 2) == 0)
  {
    v64 = "otDataBits.m_otFlags32.Has(GLME_DSPDATABIT_nPLL_FLL)";
    DeviceFaultNotify("glme_framemgr.cpp", 875, "Synced", "otDataBits.m_otFlags32.Has(GLME_DSPDATABIT_nPLL_FLL)");
    v65 = "glme_framemgr.cpp";
    v66 = 875;
    goto LABEL_83;
  }

  v13 = *(a2 + 8);
  v14 = v102;
  v15 = v95;
  v16 = v74;
LABEL_25:
  BlueFin::GlMeFrameMgr::CopyBits(v14, v15, v16, (a2 + 44), a2 + 43, v13);
LABEL_26:
  if (v91 <= v105)
  {
    v17 = v105;
  }

  else
  {
    v17 = v91;
  }

  BlueFin::GlBitBuffer::Position(v102, v17);
  v104.i32[1] = v105;
  v105 = 0;
  v108 = 0;
  BlueFin::GlBitBuffer::Position(v95, v17);
  v97.i32[1] = v98;
  v98 = 0;
  v101 = 0;
  BlueFin::GlBitBuffer::Position(v74, v17);
  v76.i32[1] = v77;
  v77 = 0;
  v80 = 0;
  BlueFin::GlBitBuffer::Position(v88, v17);
  v90.i32[1] = v91;
  v91 = 0;
  v94 = 0;
  BlueFin::GlBitBuffer::Position(v81, v17);
  v83.i32[1] = v84;
  v84 = 0;
  v87 = 0;
  BlueFin::GlBitBuffer::Position(v67, v17);
  v69.i32[1] = v70;
  v70 = 0;
  v73 = 0;
  v18 = *(v3 + 72);
  v19 = 20 * v104.u16[2];
  v20 = v19 >= v18;
  v21 = v19 - v18;
  if (!v20)
  {
    v21 = 0;
  }

  v22 = v18 - 20 * v104.u16[2];
  v23 = (*(v3 + 52) + 560) % 0x258u + 600 * ((v22 + v21) / 0x258);
  if (v23 < v22 + v21)
  {
    v23 += 600;
  }

  v24 = (v23 - v22) / 0x14;
  if (v104.u16[2] < v24)
  {
    v24 = v104.u16[2];
  }

  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = 30;
  }

  BlueFin::GlBitBuffer::Position(v102, v25);
  BlueFin::GlBitBuffer::Position(v95, v25);
  BlueFin::GlBitBuffer::Position(v74, v25);
  BlueFin::GlBitBuffer::Position(v88, v25);
  BlueFin::GlBitBuffer::Position(v81, v25);
  BlueFin::GlBitBuffer::Position(v67, v25);
  v26 = v104.i32[1] - v105;
  if (v104.i32[1] - v105 <= 0x1F)
  {
    v27 = *(v3 + 72) - 20 * v26 + 40;
    if (*(v3 + 52) <= v27)
    {
      this = BlueFin::GlMeFrameMgr::AddBestWord(v3, v27, 0, 0, 0, 0, 0, 0);
      if (!this)
      {
        return this;
      }

      LOBYTE(v26) = v104.i8[4] - v105;
      if (v104.i32[1] - v105 >= 0x20)
      {
        goto LABEL_42;
      }
    }

LABEL_76:
    *(v3 + 20) = BlueFin::GlBitBuffer::GetU(v102, v26);
    *(v3 + 24) = BlueFin::GlBitBuffer::GetU(v95, (v97.i8[4] - v98));
    *(v3 + 16) = BlueFin::GlBitBuffer::GetU(v74, (v76.i8[4] - v77));
    *(v3 + 32) = BlueFin::GlBitBuffer::GetU(v88, (v90.i8[4] - v91));
    *(v3 + 36) = BlueFin::GlBitBuffer::GetU(v81, (v83.i8[4] - v84));
    this = BlueFin::GlBitBuffer::GetU(v67, (v69.i8[4] - v70));
    *(v3 + 28) = this;
    *(v3 + 68) = *(v3 + 72);
    v4 = *(a2 + 5);
    goto LABEL_77;
  }

LABEL_42:
  while (1)
  {
    v28 = BlueFin::GlBitBuffer::GetU(v102, 0x20u);
    v29 = BlueFin::GlBitBuffer::GetU(v88, 0x20u);
    v30 = BlueFin::GlBitBuffer::GetU(v95, 0x20u);
    v31 = BlueFin::GlBitBuffer::GetU(v81, 0x20u);
    v32 = BlueFin::GlBitBuffer::GetU(v74, 0x20u);
    v33 = BlueFin::GlBitBuffer::GetU(v67, 0x20u);
    v34 = v33;
    this = BlueFin::GlMeFrameMgr::AddBestWord(v3, *(v3 + 72) - 20 * (v104.i32[1] - v105), v32, v28, v30, v33, v29, v31);
    if (!this)
    {
      return this;
    }

    v35 = *(v3 + 3);
    if (v35 <= 2)
    {
      v36 = *(v3 + 392);
      if (*(v36 + 43))
      {
        if (*(v3 + 72) == *(a2 + 5))
        {
          if (v35 == 2)
          {
            if (*(v3 + 408) - 1 <= 0x1F)
            {
              v45 = *(v3 + 344);
              if (BlueFin::GPSFrameMgrUtils::Parity(v45))
              {
                if ((~v45 & 3) != 0)
                {
                  v50 = v45;
                }

                else
                {
                  v50 = ~v45;
                }

                if ((v50 & 0x40000000) != 0)
                {
                  v50 ^= 0x3FFFFFC0u;
                }

                if ((v50 & 3) == 0)
                {
                  v51 = (v50 >> 13) & 0x1FFFF;
                  if (v51 >> 6 <= 0x626 && v51 + 4 - 5 * ((858993460 * (v51 + 4)) >> 32) + 1 == ((v50 >> 8) & 7) && v51 == *(v3 + 48))
                  {
                    v46.i64[0] = *(a2 + 4);
                    BlueFin::GlMeFrameAidMgr::FoundHOW(v36, v46, v104.i32[1] - v105 + 60, v51, v47, v48, v49);
                  }
                }
              }
            }
          }

          else if (v35 == 1)
          {
            v37 = *(v3 + 340);
            if (BlueFin::GPSFrameMgrUtils::Parity(v37))
            {
              v42 = v37 >> 22 == 139 ? v37 : ~v37;
              if (v42 >> 22 == 139)
              {
                if ((v34 & 0xFFC00000) == 0x22C00000)
                {
                  v43 = v34;
                }

                else
                {
                  v43 = ~v34;
                }

                if (v43 >> 22 == 139)
                {
                  if ((v34 & 0xFFC00000) == 0xDD000000)
                  {
                    v44 = 2;
                  }

                  else
                  {
                    v44 = 1;
                  }

                  *(v3 + 800) = v44;
                }

                if (*(v3 + 408) - 1 <= 0x1F)
                {
                  v38.i64[0] = *(a2 + 4);
                  BlueFin::GlMeFrameAidMgr::FoundTLM(v36, v38, v104.i32[1] - v105 + 30, v39, v40, v41);
                }
              }
            }
          }
        }
      }
    }

    BlueFin::GlBitBuffer::Position(v102, v105 - 2);
    BlueFin::GlBitBuffer::Position(v95, v98 - 2);
    BlueFin::GlBitBuffer::Position(v74, v77 - 2);
    BlueFin::GlBitBuffer::Position(v88, v91 - 2);
    BlueFin::GlBitBuffer::Position(v81, v84 - 2);
    BlueFin::GlBitBuffer::Position(v67, v70 - 2);
    LOBYTE(v26) = v104.i8[4] - v105;
    if (v104.i32[1] - v105 <= 0x1F)
    {
      goto LABEL_76;
    }
  }
}

BOOL BlueFin::stPeSigMeasKF::IsPRValidForNav(BlueFin::stPeSigMeasKF *this)
{
  if ((*(this + 96) & 4) == 0)
  {
    return 0;
  }

  v2 = *(this + 15);
  return !v2 || BlueFin::stSkfTestParam::UseSigId(*(this + 15), (this + 40), (v2 + 112), (v2 + 376));
}

uint64_t BlueFin::GlPeMsmtMgr::GetPeMeas(BlueFin::GlSignalIdArray **this, const BlueFin::GlSignalId *a2, char a3)
{
  v6 = BlueFin::GlSignalIdArray::Get(this[2349], a2);
  if (!v6 || ((*(this[1] + (*(a2 + 4) >> 5)) >> (*(a2 + 4) & 0x1F)) & 1) == 0 && (a3 & 1) == 0)
  {
    DeviceFaultNotify("glpe_msmtmgr.cpp", 855, "GetPeMeas", "potMePeMeas != nullptr && (m_otValidMeasSignalIds.Has(rotSignalId) || bAllowInvalidMeas)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_msmtmgr.cpp", 855, "potMePeMeas != nullptr && (m_otValidMeasSignalIds.Has(rotSignalId) || bAllowInvalidMeas)");
  }

  return v6 + 144;
}

uint64_t BlueFin::GlMeSrdMeasAidFilterEvents::OnBitParityStats(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v4 = *a4;
  if ((v4 - 189) < 0xFFFFFF44 || (v5 = BlueFin::GlSvId::s_aucSvId2gnss[*a4], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v5] == 255))
  {
    v6 = 575;
  }

  else
  {
    v6 = (BlueFin::GlSignalId::s_ausGnss2signalId[v5] + v4 - BlueFin::GlSvId::s_aucGnss2minSvId[v5]);
  }

  v7 = *(result + 16 + 2 * v6);
  if (v7 >= 11)
  {
    return BlueFin::GlMeSrdStats::BitParity(*(*(result + 8) + 200), a2, a3, a4, v7);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdStats::BitParity(_DWORD *a1, int a2, int a3, _BYTE *a4, int a5)
{
  result = BlueFin::GlMePlatfStat::ss2hist((a5 - 170));
  v11 = &a1[result];
  v12 = v11[158] + a3;
  v11[158] = v12;
  v13 = v11[173] + a2;
  v11[173] = v13;
  v14 = *a4;
  if (*a4)
  {
    if (v14 > 0x20)
    {
      if (v14 >= 0x34)
      {
        if (v14 > 0x41)
        {
          if (v14 < 0x4C)
          {
            a1[223] += a3;
            a1[224] += a2;
          }

          else if (v14 > 0x8A)
          {
            if (v14 <= 0xAE)
            {
              a1[194] += a3;
              a1[195] += a2;
            }
          }

          else
          {
            a1[192] += a3;
            a1[193] += a2;
          }
        }

        else
        {
          a1[190] += a3;
          a1[191] += a2;
        }
      }
    }

    else
    {
      a1[188] += a3;
      a1[189] += a2;
    }
  }

  if (v12)
  {
    v15 = (1.0 - v13 / v12) * 100.0;
  }

  else
  {
    v15 = 0.0;
  }

  if (a2 != a3)
  {
    v16 = a5 - 24;
    if (a5 >= 24)
    {
      v17 = 12;
    }

    else
    {
      v17 = 79;
    }

    if (v16 >= 6)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0x4C4C4C4D4E4EuLL >> (8 * v16);
    }

    return GlCustomLog(v18, "Ephemeris Decode Parity Fail Rate=%.1f%% (%u out of %u) sv%d ss=%d\n", v15, v12 - v13, v12, v14, a5);
  }

  return result;
}

uint64_t BlueFin::GlMeMsmtHolder::SetGridMeas(uint64_t result, uint64_t a2)
{
  v2 = *(result + 17296);
  if (v2 > 0xD)
  {
    return GlCustomLog(15, "Surplus grids received!");
  }

  v3 = *(result + 2832);
  *(result + 17296) = v2 + 1;
  v4 = v3 + 184 * v2;
  if (v4 != a2)
  {
    *v4 = *a2;
    *(v4 + 4) = *(a2 + 4);
    *(v4 + 8) = *(a2 + 8);
  }

  v5 = *(a2 + 12);
  v6 = *(a2 + 28);
  *(v4 + 44) = *(a2 + 44);
  *(v4 + 28) = v6;
  *(v4 + 12) = v5;
  v7 = *(a2 + 60);
  v8 = *(a2 + 76);
  v9 = *(a2 + 92);
  *(v4 + 108) = *(a2 + 108);
  *(v4 + 92) = v9;
  *(v4 + 76) = v8;
  *(v4 + 60) = v7;
  v10 = *(a2 + 124);
  v11 = *(a2 + 140);
  v12 = *(a2 + 156);
  *(v4 + 168) = *(a2 + 168);
  *(v4 + 156) = v12;
  *(v4 + 140) = v11;
  *(v4 + 124) = v10;
  *(*(result + 17304) + 4 * (*(a2 + 8) >> 5)) |= 1 << *(a2 + 8);
  return result;
}

uint64_t BlueFin::GlMeMeasAidFilter::UpdateFrameManagerSync(uint64_t result, unsigned __int8 *a2, unsigned int a3, double a4)
{
  v8 = *a2;
  if ((v8 - 52) <= 0xD)
  {
    v45 = v7;
    v46 = v6;
    v47 = v4;
    v48 = v5;
    v12 = result;
    v42[0] = v8;
    v43 = 0;
    v13 = BlueFin::GlSvId::s_aucSvId2gnss[v8];
    v44 = 575;
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v13] == 255)
    {
      v43 = -1;
    }

    else
    {
      v44 = BlueFin::GlSignalId::s_ausGnss2signalId[v13] + v8 - BlueFin::GlSvId::s_aucGnss2minSvId[v13];
    }

    MsmtSlotPtr = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr((result + 10624), v42, 0, 1);
    v15 = BlueFin::GlMeSlots::GlonassFrameMgr(MsmtSlotPtr, a2);
    result = BlueFin::GlMeGlonassFrameMgr::GetGlnsStrPhsInSym(v15, a3, &v41);
    if ((result & 1) == 0)
    {
      v23 = &off_2A1F0E398;
      v24 = 0;
      v25 = -1;
      v26 = 575;
      v27 = 0;
      v28 = 0;
      v18.i64[1] = 2139095039;
      v29 = xmmword_298A339D0;
      v30 = 2139095039;
      v31 = 0.0;
      v32 = 2139095039;
      v33 = 0;
      v34 = 0x7FEFFFFFFFFFFFFFLL;
      v35 = -1;
      v36 = -1;
      v38 = 0;
      v39 = 0;
      v37 = 0;
      v40 = 0;
      *v18.i64 = a4 * 1000.0;
      v22 = 0;
      v16.i64[0] = 0;
      result = BlueFin::GlMeWinMgr::GetMeAcqWindow(v12 + 32, v42, &v23, &v22, 0, 0, v18, 0.0, v16, v17);
      if ((v28 & 0x80) != 0)
      {
        v19 = (v31 - a4) * 1000.0;
        if (v19 <= 0.0)
        {
          if (v19 >= 0.0)
          {
            v21 = 0;
            return BlueFin::GlMeMsmtMgr::ReportSyncEpochCnt(v12 + 10624, a2, v21 + a3, v35, v31);
          }

          v20 = -0.5;
        }

        else
        {
          v20 = 0.5;
        }

        v21 = (v19 + v20);
        return BlueFin::GlMeMsmtMgr::ReportSyncEpochCnt(v12 + 10624, a2, v21 + a3, v35, v31);
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlMeGlonassFrameMgr::Update(uint64_t this, const BlueFin::GlMeDSPDataBits *a2, const BlueFin::GlMeDSPDataBits *a3)
{
  v384 = *MEMORY[0x29EDCA608];
  v3 = a2 + 9;
  v4 = *(this + 284);
  if (*(a2 + 9) != v4 || *(a3 + 9) != v4)
  {
    v207 = "(rotFllDataBits.m_otSvId == m_otSvId) && (rotPllDataBits.m_otSvId == m_otSvId)";
    DeviceFaultNotify("glme_glonassframemgr.cpp", 93, "Update", "(rotFllDataBits.m_otSvId == m_otSvId) && (rotPllDataBits.m_otSvId == m_otSvId)");
    v208 = 93;
    goto LABEL_293;
  }

  v7 = this;
  v8 = *(a2 + 3);
  if ((v8 & 0x100) != 0)
  {
    v15 = *(a2 + 5);
LABEL_22:
    this = BlueFin::GlMeGlonassFrameMgr::GetSearchStateMemory(this);
    *(this + 140) = 1;
    *(this + 148) = v15 % 0x7D0;
    return this;
  }

  v10 = *(a3 + 3);
  if ((v10 & 0x100) != 0)
  {
    v15 = *(a3 + 5);
    goto LABEL_22;
  }

  if ((v8 & 0x10) == 0)
  {
    *(a2 + 8) = 0;
  }

  if ((v10 & 0x10) == 0)
  {
    *(a3 + 8) = 0;
  }

  if ((v10 & 0x204) != 0)
  {
    *this = 0;
  }

  v12 = (this + 4);
  v11 = *(this + 4);
  if (v11 == 1)
  {
    return this;
  }

  if (v11)
  {
    v207 = "false";
    DeviceFaultNotify("glme_glonassframemgr.cpp", 290, "Update", "false");
    v208 = 290;
LABEL_293:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_glonassframemgr.cpp", v208, v207);
  }

  SearchStateMemory = BlueFin::GlMeGlonassFrameMgr::GetSearchStateMemory(this);
  if (*(SearchStateMemory + 140))
  {
LABEL_17:
    v284 = &unk_2A1F0DC20;
    HIDWORD(v285) = 0;
    v286 = 0;
    v287 = 0;
    v289 = 0.0;
    v290 = 0;
    v305 = 0u;
    v306 = 0u;
    v291 = 0u;
    v292 = 0u;
    v293 = 0u;
    v294 = 0u;
    v295 = 0u;
    v296 = 0u;
    v297 = 0u;
    v298 = 0u;
    v299 = 0u;
    v300 = 0u;
    v301 = 0u;
    v302 = 0u;
    v303 = 0u;
    v304 = 0u;
    LOWORD(v285) = 0;
    v264 = &unk_2A1F0DC20;
    HIDWORD(v265) = 0;
    v266 = 0;
    v267[0] = 0;
    *(&v267[1] + 4) = 0;
    BYTE4(v267[2]) = 0;
    v282 = 0u;
    v283 = 0u;
    v268 = 0u;
    v269 = 0u;
    v270 = 0u;
    v271 = 0u;
    v272 = 0u;
    v273 = 0u;
    v274 = 0u;
    v275 = 0u;
    v276 = 0u;
    v277 = 0u;
    v278 = 0u;
    v279 = 0u;
    v280 = 0u;
    v281 = 0u;
    LOWORD(v265) = 0;
    v13 = *(a3 + 3);
    if ((v13 & 0x40) != 0)
    {
      LOWORD(v285) = *(a2 + 4);
      HIDWORD(v285) = *(a2 + 3);
      v286 = *(a2 + 8);
      v287 = *(a2 + 20);
      v289 = *(a2 + 4);
      v290 = *(a2 + 40);
      v26 = *(a2 + 124);
      v295 = *(a2 + 108);
      v296 = v26;
      v27 = *(a2 + 156);
      v297 = *(a2 + 140);
      v298 = v27;
      v28 = *(a2 + 60);
      v291 = *(a2 + 44);
      v292 = v28;
      v29 = *(a2 + 92);
      v293 = *(a2 + 76);
      v294 = v29;
      v30 = *(a2 + 284);
      v305 = *(a2 + 268);
      v306 = v30;
      v302 = *(a2 + 220);
      v301 = *(a2 + 204);
      v300 = *(a2 + 188);
      v299 = *(a2 + 172);
      v304 = *(a2 + 252);
      v303 = *(a2 + 236);
      LOWORD(v265) = *(a3 + 4);
      HIDWORD(v265) = v13;
      v266 = *(a3 + 8);
      v267[0] = *(a3 + 20);
      *(&v267[1] + 4) = *(a3 + 4);
      BYTE4(v267[2]) = *(a3 + 40);
      v31 = *(a3 + 44);
      v32 = *(a3 + 60);
      v33 = *(a3 + 92);
      v270 = *(a3 + 76);
      v271 = v33;
      v268 = v31;
      v269 = v32;
      v34 = *(a3 + 108);
      v35 = *(a3 + 124);
      v36 = *(a3 + 156);
      v274 = *(a3 + 140);
      v275 = v36;
      v272 = v34;
      v273 = v35;
      v37 = *(a3 + 236);
      v38 = *(a3 + 252);
      v39 = *(a3 + 284);
      v282 = *(a3 + 268);
      v283 = v39;
      v40 = *(a3 + 172);
      v41 = *(a3 + 188);
      v42 = *(a3 + 204);
      v279 = *(a3 + 220);
      v278 = v42;
      v277 = v41;
      v276 = v40;
      v281 = v38;
      v280 = v37;
    }

    else
    {
      v345[0] = -1;
      if ((BlueFin::GlMeGlonassFrameMgr::GetGlnsStrPhsInSym(v7, *(a2 + 5), v345) & 1) == 0)
      {
        DeviceFaultNotify("glme_glonassframemgr.cpp", 206, "Update", "GetGlnsStrPhsInSym(rotFllDataBits.m_ulEpochCnt, ucGlnsStrPhsInSym)");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_glonassframemgr.cpp", 206, "GetGlnsStrPhsInSym(rotFllDataBits.m_ulEpochCnt, ucGlnsStrPhsInSym)");
      }

      v14 = v345[0];
      BlueFin::GlMeDSPDataBits::ConvertGlnsSymsToBits(a2, &v284, (SearchStateMemory + 257), v345[0]);
      BlueFin::GlMeDSPDataBits::ConvertGlnsSymsToBits(a3, &v264, (SearchStateMemory + 258), v14);
    }

    this = BlueFin::GlMeGlonassFrameMgr::GetSearchStateMemory(v7);
    v43 = this;
    if ((*(this + 256) & 1) == 0)
    {
      *(this + 256) = 1;
      *(this + 252) = 257;
    }

    if ((v285 & 0x400000000) != 0 || (v265 & 0x400000000) != 0 || v287 <= *(this + 4) || LODWORD(v267[0]) <= *(this + 8))
    {
      *(v7 + 276) = 0;
      *(v7 + 244) = 0u;
      *(v7 + 260) = 0u;
      *(v7 + 212) = 0u;
      *(v7 + 228) = 0u;
      *(v7 + 180) = 0u;
      *(v7 + 196) = 0u;
      *(v7 + 148) = 0u;
      *(v7 + 164) = 0u;
      *(v7 + 116) = 0u;
      *(v7 + 132) = 0u;
      *(v7 + 84) = 0u;
      *(v7 + 100) = 0u;
      *(v7 + 52) = 0u;
      *(v7 + 68) = 0u;
      *(v7 + 20) = 0u;
      *(v7 + 36) = 0u;
      *v12 = 0u;
    }

    else
    {
      LODWORD(v380) = 0;
      *v379 = 0;
      LODWORD(v375) = 0;
      *v374 = 0;
      LODWORD(v370) = 0;
      v369 = 0;
      v340[0] = 0;
      v335[0] = 0;
      v328[0] = 0;
      BlueFin::GlMeGlonassFrameMgr::ParseBits(v7, &v284, v379, v340, v335, 1);
      this = BlueFin::GlMeGlonassFrameMgr::ParseBits(v7, &v264, v374, v340, v328, 0);
      if ((*(v43 + 254) & 1) != 0 || *(v43 + 255) == 1)
      {
        *(v7 + 276) = 0;
        *(v7 + 244) = 0u;
        *(v7 + 260) = 0u;
        *(v7 + 212) = 0u;
        *(v7 + 228) = 0u;
        *(v7 + 180) = 0u;
        *(v7 + 196) = 0u;
        *(v7 + 148) = 0u;
        *(v7 + 164) = 0u;
        *(v7 + 116) = 0u;
        *(v7 + 132) = 0u;
        *(v7 + 84) = 0u;
        *(v7 + 100) = 0u;
        *(v7 + 52) = 0u;
        *(v7 + 68) = 0u;
        *(v7 + 20) = 0u;
        *(v7 + 36) = 0u;
        *v12 = 0u;
        if ((v285 & 0x4000000000) != 0)
        {
          this = *(v7 + 304);
          if (this)
          {
            this = (*(*this + 48))(this, &v285 + 1, 1);
          }
        }

        goto LABEL_48;
      }

      v205 = v335[0];
      if (v335[0])
      {
        this = BlueFin::GLNFrameMgrUtils::Parity(v379, v44);
        v206 = this;
      }

      else
      {
        v206 = 0;
      }

      v216 = v328[0];
      if (v328[0])
      {
        v263 = v206;
        this = BlueFin::GLNFrameMgrUtils::Parity(v374, v44);
        v206 = v263;
        v217 = this;
      }

      else
      {
        v217 = 0;
      }

      if (v205 || v216) && (*(v43 + 256))
      {
        this = *(v7 + 304);
        if (this)
        {
          v218 = v206;
          v219 = v217;
          this = (*(*this + 32))(this, v206 | v217, 1, v7 + 284);
          v206 = v218;
          v217 = v219;
        }
      }

      if ((v206 & v217) == 1)
      {
        v220 = 0;
        while (1)
        {
          v221 = v379[v220];
          v222 = v374[v220] ^ v221;
          if (v220 == 2)
          {
            v222 &= 0xFFFFF800;
          }

          if (v222)
          {
            goto LABEL_48;
          }

          *(&v369 + v220 * 4) = v221;
          if (++v220 == 3)
          {
            v206 = 1;
            goto LABEL_336;
          }
        }
      }

      if ((v206 | v217))
      {
        v223 = v374;
        if (v206)
        {
          v223 = v379;
        }

        v369 = *v223;
        LODWORD(v370) = v223[2];
LABEL_336:
        v224 = v369;
        *v345 = &unk_2A1F093B8;
        LODWORD(v348[1]) = 0;
        LODWORD(v347) = v369 >> 1;
        HIDWORD(v347) = __PAIR64__(v369, HIDWORD(v369)) >> 1;
        v348[0] = (__PAIR64__(HIDWORD(v369), v370) >> 1) & 0xFFFFF800;
        v346[0] = *(v7 + 284);
        v225 = v346[0] - 59;
        if (v346[0] - 52 >= 0xE)
        {
          v225 = -8;
        }

        v346[1] = v225;
        *&v346[2] = 0;
        v226 = v340[0];
        if (v206)
        {
          v227 = &v287;
          v228 = WORD2(v287);
          if (v340[0] >= HIDWORD(v287))
          {
            goto LABEL_344;
          }
        }

        else
        {
          v227 = v267;
          if (v340[0] >= HIDWORD(v267[0]))
          {
LABEL_344:
            v229 = v369 >> 28;
            *(v43 + 144) = 1;
            v230 = *v227 - v226;
            if (v224 >> 28 == 1 && (*(v43 + 142) & 1) == 0)
            {
              v233 = (v224 >> 19) & 0x1F;
              if (v233 <= 0x17)
              {
                v234 = (v224 >> 13) & 0x3F;
                if (v234 < 0x3C)
                {
                  *&v346[2] = 1;
                  v235 = 1000 * ((((v224 << 19) >> 31) & 0x1E) + 60 * (v234 + 60 * v233));
                  *&v346[4] = v235;
                  if (*(v43 + 141) == 1)
                  {
                    v236 = *(v43 + 152) + v230 - *(v43 + 148);
                    if (v236 > 0x5265BFF)
                    {
                      v236 -= 86400000;
                    }

                    *(v43 + 142) = v235 == v236;
                  }

                  *(v43 + 141) = 1;
                  *(v43 + 148) = v230;
                  *(v43 + 152) = v235;
LABEL_359:
                  v237 = *(v43 + 140);
                  v238 = v289 + v226 / -1000.0;
                  *(v348 + 4) = v238;
                  if ((v237 & 1) == 0)
                  {
LABEL_374:
                    this = (*(**(v7 + 288) + 56))(*(v7 + 288), v345);
                    goto LABEL_48;
                  }

LABEL_364:
                  if ((v285 & 0x8000000000) != 0)
                  {
                    *(v43 + 143) = 1;
                    BlueFin::GlMeWinMgr::SetTMDecodeInfo(*(v7 + 296), (v7 + 284), 1, v238);
                  }

                  goto LABEL_374;
                }
              }

              if (*(v43 + 140))
              {
                v232 = *(v43 + 152);
                goto LABEL_363;
              }
            }

            else
            {
              if (*(v43 + 141) == 1)
              {
                v231 = *(v43 + 152) + v230 - *(v43 + 148);
                if (v231 > 0x5265BFF)
                {
                  v231 -= 86400000;
                }

                *&v346[4] = v231;
                *&v346[2] = 1;
                *(v43 + 148) = v230;
                *(v43 + 152) = v231;
                goto LABEL_359;
              }

              if (*(v43 + 140) == 1)
              {
                v232 = 2000 * v229 - 2000;
                *(v43 + 148) = v230;
                *(v43 + 152) = v232;
LABEL_363:
                *&v346[4] = v232;
                v238 = v289 + v226 / -1000.0;
                *(v348 + 4) = v238;
                goto LABEL_364;
              }
            }

            *v45.i64 = floor(v289 * 1000.0);
            *v47.i64 = *v45.i64 + trunc(*v45.i64 * 2.32830644e-10) * -4294967300.0;
            v239.f64[0] = NAN;
            v239.f64[1] = NAN;
            v240 = vnegq_f64(v239);
            v47.i64[0] = vbslq_s8(v240, v47, v45).u64[0];
            if (*v45.i64 > 4294967300.0)
            {
              v45.i64[0] = v47.i64[0];
            }

            if (*v45.i64 < -4294967300.0)
            {
              *v46.i64 = -*v45.i64;
              *v45.i64 = -(*v45.i64 - trunc(*v45.i64 * -2.32830644e-10) * -4294967300.0);
              *v45.i64 = -*vbslq_s8(v240, v45, v46).i64;
            }

            if (*v45.i64 < 0.0)
            {
              v241 = --*v45.i64;
            }

            else
            {
              v241 = *v45.i64;
            }

            *&v346[4] = v241 - v226;
            *(v348 + 4) = v289 + v226 / -1000.0;
            goto LABEL_374;
          }

          v228 = WORD2(v287);
        }

        *&v346[8] = v228 - LOWORD(v340[0]);
        goto LABEL_344;
      }
    }

LABEL_48:
    if (*(SearchStateMemory + 140) == 1 && (*(a2 + 12) & 0x40) != 0)
    {
      v48 = *(a2 + 5);
      v49 = *(SearchStateMemory + 148);
      if (v48 >= v49)
      {
        v50 = -858993459 * (v48 - v49);
      }

      else
      {
        v50 = -858993459 * (v49 - v48);
      }

      HIDWORD(v171) = v50;
      LODWORD(v171) = v50;
      if ((v171 >> 2) >= 0xCCCCCCD)
      {
        *(v7 + 276) = 0;
        *(v7 + 244) = 0u;
        *(v7 + 260) = 0u;
        *(v7 + 212) = 0u;
        *(v7 + 228) = 0u;
        *(v7 + 180) = 0u;
        *(v7 + 196) = 0u;
        *(v7 + 148) = 0u;
        *(v7 + 164) = 0u;
        *(v7 + 116) = 0u;
        *(v7 + 132) = 0u;
        *(v7 + 84) = 0u;
        *(v7 + 100) = 0u;
        *(v7 + 52) = 0u;
        *(v7 + 68) = 0u;
        *(v7 + 20) = 0u;
        *(v7 + 36) = 0u;
        *v12 = 0u;
        this = *(v7 + 304);
        if (this)
        {
          return (*(*this + 48))(this, v3, 1);
        }
      }
    }

    return this;
  }

  if ((*(a3 + 12) & 0x40) != 0)
  {
    *(v7 + 276) = 0;
    *(v7 + 244) = 0u;
    *(v7 + 260) = 0u;
    *(v7 + 212) = 0u;
    *(v7 + 228) = 0u;
    *(v7 + 180) = 0u;
    *(v7 + 196) = 0u;
    *(v7 + 148) = 0u;
    *(v7 + 164) = 0u;
    *(v7 + 116) = 0u;
    *(v7 + 132) = 0u;
    *(v7 + 84) = 0u;
    *(v7 + 100) = 0u;
    *(v7 + 52) = 0u;
    *(v7 + 68) = 0u;
    *(v7 + 20) = 0u;
    *(v7 + 36) = 0u;
    *v12 = 0u;
    this = *(v7 + 304);
    if (this)
    {
      v51 = *(*this + 48);

      return v51();
    }

    return this;
  }

  v244 = v3;
  v254 = BlueFin::GlMeGlonassFrameMgr::GetSearchStateMemory(v7);
  if ((*(a2 + 12) & 4) != 0 || (*(a3 + 12) & 4) != 0 || *(a2 + 5) <= v254[1] || *(a3 + 5) <= v254[2])
  {
    *(v7 + 276) = 0;
    *(v7 + 244) = 0u;
    *(v7 + 260) = 0u;
    *(v7 + 212) = 0u;
    *(v7 + 228) = 0u;
    *(v7 + 180) = 0u;
    *(v7 + 196) = 0u;
    *(v7 + 148) = 0u;
    *(v7 + 164) = 0u;
    *(v7 + 116) = 0u;
    *(v7 + 132) = 0u;
    *(v7 + 84) = 0u;
    *(v7 + 100) = 0u;
    *(v7 + 52) = 0u;
    *(v7 + 68) = 0u;
    *(v7 + 20) = 0u;
    *(v7 + 36) = 0u;
    *v12 = 0u;
  }

  v264 = 0;
  v265 = 0;
  LOBYTE(v266) = 0;
  memset(v267, 0, 21);
  *v346 = 0;
  *v345 = 0;
  v346[8] = 0;
  memset(v348, 0, 13);
  v347 = 0;
  *v379 = 0;
  v380 = 0;
  v381 = 0;
  memset(v383, 0, 13);
  v382 = 0;
  *v374 = 0;
  v375 = 0;
  v376 = 0;
  v378[0] = 0;
  v377 = 0;
  *(v378 + 5) = 0;
  v369 = 0;
  v370 = 0;
  v371 = 0;
  v373[0] = 0;
  v372 = 0;
  *(v373 + 5) = 0;
  v341 = 0;
  *v340 = 0;
  v342 = 0;
  v344[0] = 0;
  v343 = 0;
  *(v344 + 5) = 0;
  v16 = *(a2 + 8);
  v336 = 0;
  *v335 = 0;
  v337 = 0;
  v339[0] = 0;
  v338 = 0;
  *(v339 + 5) = 0;
  v284 = a2 + 44;
  v285 = 0;
  LOBYTE(v286) = 0;
  v289 = 0.0;
  v288 = 0;
  v287 = 0x40000000400;
  v290 = 0;
  BlueFin::GlBitBuffer::Limit(&v284, v16);
  v17 = *(a3 + 8);
  v264 = a3 + 44;
  v265 = 0;
  LOBYTE(v266) = 0;
  v267[0] = 0x40000000400;
  BlueFin::GlBitBuffer::Limit(&v264, v17);
  *v345 = a2 + 172;
  *v346 = 0;
  v346[8] = 0;
  LODWORD(v348[1]) = 0;
  LODWORD(v348[0]) = 0;
  v347 = 0x40000000400;
  BYTE4(v348[1]) = 0;
  BlueFin::GlBitBuffer::Limit(v345, *(a2 + 8));
  *v379 = a3 + 172;
  v380 = 0;
  v381 = 0;
  v383[2] = 0;
  v383[0] = 0;
  v382 = 0x40000000400;
  LOBYTE(v383[3]) = 0;
  BlueFin::GlBitBuffer::Limit(v379, *(a3 + 8));
  v18 = *v254;
  *v374 = v254 + 3;
  v375 = 0;
  v376 = 0;
  LODWORD(v378[1]) = 0;
  LODWORD(v378[0]) = 0;
  v377 = 0x10000000100;
  BYTE4(v378[1]) = 0;
  BlueFin::GlBitBuffer::Limit(v374, v18);
  v19 = *(v254 + 1);
  v247 = (v254 + 2);
  v369 = v254 + 19;
  v370 = 0;
  v371 = 0;
  LODWORD(v373[1]) = 0;
  LODWORD(v373[0]) = 0;
  v372 = 0x10000000100;
  BYTE4(v373[1]) = 0;
  BlueFin::GlBitBuffer::Limit(&v369, v19);
  v20 = *v254;
  *v340 = v254 + 11;
  v341 = 0;
  v342 = 0;
  LODWORD(v344[1]) = 0;
  LODWORD(v344[0]) = 0;
  v343 = 0x10000000100;
  BYTE4(v344[1]) = 0;
  BlueFin::GlBitBuffer::Limit(v340, v20);
  *v335 = v254 + 27;
  v336 = 0;
  v337 = 0;
  LODWORD(v339[1]) = 0;
  LODWORD(v339[0]) = 0;
  v338 = 0x10000000100;
  BYTE4(v339[1]) = 0;
  this = BlueFin::GlBitBuffer::Limit(v335, *(v254 + 1));
  v21 = v254;
  v245 = v254 + 1;
  if (*(a2 + 5) - 10 * *(a2 + 8) == v254[1])
  {
    v22 = *v254;
    if (v22 >= 0x1F)
    {
      v23 = 31;
    }

    else
    {
      v23 = *v254;
    }

    v24 = v23;
    BlueFin::GlBitBuffer::Position(v374, v22 - v23);
    BlueFin::GlBitBuffer::Position(v340, *v254 - v24);
    v258 = BlueFin::GlBitBuffer::GetU(v374, v24);
    this = BlueFin::GlBitBuffer::GetU(v340, v24);
    v256 = this;
    v21 = v254;
    v25 = v24;
  }

  else
  {
    v25 = 0;
    v256 = 0;
    v258 = 0;
  }

  v246 = v21 + 2;
  if (*(a3 + 5) - 10 * *(a3 + 8) == v21[2])
  {
    v52 = v25;
    v53 = *v247;
    if (v53 >= 0x1F)
    {
      v54 = 31;
    }

    else
    {
      v54 = *v247;
    }

    v55 = v54;
    BlueFin::GlBitBuffer::Position(&v369, v53 - v54);
    BlueFin::GlBitBuffer::Position(v335, *v247 - v55);
    v259 = BlueFin::GlBitBuffer::GetU(&v369, v55);
    this = BlueFin::GlBitBuffer::GetU(v335, v55);
    v255 = this;
    v25 = v52;
    v56 = v55;
  }

  else
  {
    v56 = 0;
    v255 = 0;
    v259 = 0;
  }

  if ((HIDWORD(v287) + v25 - v288) >= 0x1F)
  {
    v57 = v56;
    v58 = v25 ^ 0x1F;
    v59 = BlueFin::GlBitBuffer::GetU(&v284, v25 ^ 0x1Fu);
    this = BlueFin::GlBitBuffer::GetU(v345, v58);
    v258 = v59 | (v258 << v58);
    v256 = this | (v256 << v58);
    v25 = 31;
    v56 = v57;
  }

  v257 = v25;
  if ((HIDWORD(v267[0]) + v56 - LODWORD(v267[1])) >= 0x1F)
  {
    v60 = v56 ^ 0x1F;
    v61 = BlueFin::GlBitBuffer::GetU(&v264, v56 ^ 0x1Fu);
    this = BlueFin::GlBitBuffer::GetU(v379, v60);
    v259 = v61 | (v259 << v60);
    v255 = this | (v255 << v60);
    v56 = 31;
  }

  v62 = *(a2 + 5);
  if (v62 < 0x7D1 || (v63 = v254[1], v63 <= 10 * *v254) || (v64 = 10 * (HIDWORD(v287) - v288) + 2000, v65 = v62 >= v64, v66 = v62 - v64, v66 == 0 || !v65) || (v67 = v63 - 10 * *v254, v65 = v66 >= v67, v68 = v66 - v67, v68 == 0 || !v65))
  {
    v260 = 0;
LABEL_83:
    v251 = 0;
    v252 = 0;
    goto LABEL_84;
  }

  v69 = v68 / 0xA;
  if (v69 - 0x10000 < 0xFFFF001F)
  {
    v69 = 31;
  }

  if (v69 <= 0x1F)
  {
    v70 = 31;
  }

  else
  {
    v70 = v69;
  }

  v71 = v70 - 31;
  if (v69 >= 0x1F)
  {
    v69 = 31;
  }

  v260 = v69;
  if (v69 + v71 > HIDWORD(v377))
  {
    goto LABEL_83;
  }

  v72 = v56;
  BlueFin::GlBitBuffer::Position(v374, (v70 - 31));
  BlueFin::GlBitBuffer::Position(v340, v71);
  v252 = BlueFin::GlBitBuffer::GetU(v374, v260);
  this = BlueFin::GlBitBuffer::GetU(v340, v260);
  v251 = this;
  v56 = v72;
LABEL_84:
  v73 = *(a3 + 5);
  v74 = HIDWORD(v267[0]);
  v75 = v267[1];
  v261 = v56;
  if (v73 >= 0x7D1 && (v76 = *v246 - 10 * *v247, v77 = v73 - 10 * (HIDWORD(v267[0]) - LODWORD(v267[1])) - 2000, v65 = v77 >= v76, v78 = v77 - v76, v78 != 0 && v65))
  {
    v79 = v78 / 0xA;
    if (v79 - 100001 < 0xFFFE797E)
    {
      v79 = 31;
    }

    if (v79 <= 0x1F)
    {
      v80 = 31;
    }

    else
    {
      v80 = v79;
    }

    v81 = v80 - 31;
    if (v79 >= 0x1F)
    {
      v82 = 31;
    }

    else
    {
      v82 = v79;
    }

    if (v82 + v81 <= HIDWORD(v372))
    {
      v83 = v82;
      BlueFin::GlBitBuffer::Position(&v369, (v80 - 31));
      BlueFin::GlBitBuffer::Position(v335, v81);
      v250 = BlueFin::GlBitBuffer::GetU(&v369, v83);
      this = BlueFin::GlBitBuffer::GetU(v335, v83);
      v249 = this;
      v74 = HIDWORD(v267[0]);
      v75 = v267[1];
      v82 = v83;
      goto LABEL_99;
    }
  }

  else
  {
    v82 = 0;
  }

  v249 = 0;
  v250 = 0;
LABEL_99:
  v84 = HIDWORD(v287);
  v85 = v288;
  v86 = HIDWORD(v287) == v288;
  if (HIDWORD(v287) == v288 && v74 == v75)
  {
    goto LABEL_313;
  }

  v253 = 0;
  v87 = 0;
  v88 = 0;
  while (1)
  {
    v89 = v82;
    v90 = *(a2 + 5) - 10 * (v84 - v85);
    v91 = *(a3 + 5) - 10 * (v74 - v75);
    if (v86 || v90 > v91)
    {
      v257 = 0;
      goto LABEL_115;
    }

    v92 = BlueFin::GlBitBuffer::GetU(&v284, 1u);
    this = BlueFin::GlBitBuffer::GetU(v345, 1u);
    v258 = v92 | (2 * v258);
    v256 = this | (2 * v256);
    v93 = v257;
    if (v257 >= 31)
    {
      v93 = 31;
    }

    v257 = v93 + 1;
    if (HIDWORD(v377) == LODWORD(v378[0]))
    {
      v260 = 0;
      goto LABEL_115;
    }

    if (v260 < 2)
    {
      if (*v254 + *(a2 + 8) != (WORD2(v287) - v288 + 201))
      {
        goto LABEL_115;
      }

      v96 = BlueFin::GlBitBuffer::Position(v374, 0);
      v252 = BlueFin::GlBitBuffer::GetU(v96, 1u);
      BlueFin::GlBitBuffer::Position(v340, 0);
      this = BlueFin::GlBitBuffer::GetU(v340, 1u);
      v251 = this;
      v95 = v260;
    }

    else
    {
      v94 = BlueFin::GlBitBuffer::GetU(v374, 1u);
      this = BlueFin::GlBitBuffer::GetU(v340, 1u);
      v252 = v94 | (2 * v252);
      v251 = this | (2 * v251);
      v95 = v260;
      if (v260 >= 0x1F)
      {
        v95 = 31;
      }
    }

    v260 = v95 + 1;
LABEL_115:
    v97 = HIDWORD(v267[0]) == LODWORD(v267[1]) || v91 > v90;
    if (v97)
    {
      v261 = 0;
LABEL_121:
      v98 = v89;
      goto LABEL_133;
    }

    v99 = BlueFin::GlBitBuffer::GetU(&v264, 1u);
    this = BlueFin::GlBitBuffer::GetU(v379, 1u);
    v259 = v99 | (2 * v259);
    v255 = this | (2 * v255);
    v100 = v261;
    if (v261 >= 31)
    {
      v100 = 31;
    }

    v261 = v100 + 1;
    if (HIDWORD(v372) == LODWORD(v373[0]))
    {
      v98 = 0;
    }

    else if (v89 < 2)
    {
      if (*v247 + *(a3 + 8) != (WORD2(v267[0]) - LOWORD(v267[1]) + 201))
      {
        goto LABEL_121;
      }

      v103 = BlueFin::GlBitBuffer::Position(&v369, 0);
      v250 = BlueFin::GlBitBuffer::GetU(v103, 1u);
      BlueFin::GlBitBuffer::Position(v335, 0);
      this = BlueFin::GlBitBuffer::GetU(v335, 1u);
      v249 = this;
      v98 = (v89 + 1);
    }

    else
    {
      v101 = BlueFin::GlBitBuffer::GetU(&v369, 1u);
      this = BlueFin::GlBitBuffer::GetU(v335, 1u);
      v250 = v101 | (2 * v250);
      v249 = this | (2 * v249);
      v102 = v89 >= 0x1F ? 31 : v89;
      v98 = (v102 + 1);
    }

LABEL_133:
    if (v260 <= 0)
    {
      v104 = 0;
    }

    else
    {
      v104 = v252 ^ (v252 >> 1);
    }

    if (v260 > 0)
    {
      v105 = ~v251;
    }

    else
    {
      v105 = 0;
    }

    v106 = v98;
    if (v98 < 1)
    {
      v107 = 0;
      v108 = 0;
    }

    else
    {
      v107 = v250 ^ (v250 >> 1);
      v108 = ~(v249 | (v249 >> 1));
    }

    v109 = v258 ^ (v258 >> 1);
    v110 = v259 ^ (v259 >> 1);
    v111 = ~(v255 | (v255 >> 1));
    if (v253)
    {
      v88 *= 2;
      v112 = (2 * (v109 & 1) - 1) << ((v256 & 1) == 0);
      v113 = (2 * (v110 & 1) - 1) << (v111 & 1);
      v114 = __OFADD__(v113, v112);
      v115 = v113 + v112;
      if ((v115 < 0) ^ v114 | (v115 == 0))
      {
        v116 = 0;
      }

      else
      {
        v116 = 1;
      }

      v87 = v116 | (2 * v87);
      v117 = v257;
      v82 = v106;
      if ((v115 + ((2 * (v104 & 1) - 1) << (v105 & 1)) + ((2 * (v107 & 1) - 1) << (v108 & 1))) > 0)
      {
        ++v88;
      }

      goto LABEL_154;
    }

    if (v90 == v91)
    {
      v87 = 0;
      v88 = 0;
      v118 = 30;
      v117 = v257;
      v82 = v106;
      do
      {
        v119 = (2 * ((v109 >> v118) & 1) - 1) << ((~v256 >> v118) & 1);
        v120 = (2 * ((v110 >> v118) & 1) - 1) << ((v111 >> v118) & 1);
        v114 = __OFADD__(v119, v120);
        v121 = v119 + v120;
        if ((v121 < 0) ^ v114 | (v121 == 0))
        {
          v122 = 0;
        }

        else
        {
          v122 = 1;
        }

        this = ((2 * ((v107 >> v118) & 1) - 1) << ((v108 >> v118) & 1)) + ((2 * ((v104 >> v118) & 1) - 1) << ((v105 >> v118) & 1));
        v87 = v122 | (2 * v87);
        --v118;
        v88 = (this + v121 > 0) | (2 * v88);
      }

      while (v118 != -1);
LABEL_154:
      v253 = 1;
      goto LABEL_156;
    }

    v253 = 0;
    v117 = v257;
    v82 = v106;
LABEL_156:
    v124 = v117 == 32 && (v258 == -119717287 || v258 == 119717286);
    v126 = v261 == 32 && (v259 == -119717287 || v259 == 119717286);
    v128 = v117 == 32 && v261 == 32;
    v129 = v87 == 78898037 && v128;
    if (v260 != 32)
    {
      v128 = 0;
    }

    if (v82 != 32)
    {
      v128 = 0;
    }

    v130 = v88 == 78898037 && v128;
    v84 = HIDWORD(v287);
    v85 = v288;
    v74 = HIDWORD(v267[0]);
    v75 = v267[1];
    if (!v124 && !v126 && !v129 && !v130)
    {
      goto LABEL_256;
    }

    v131 = HIDWORD(v267[0]) - LODWORD(v267[1]);
    if (v124)
    {
      v131 = HIDWORD(v287) - v288;
    }

    if (v126)
    {
      if (v259 == 119717286)
      {
        v132 = 2;
      }

      else
      {
        v132 = 1;
      }

      *v7 = v132;
    }

    if ((v254[35] & 1) == 0)
    {
      *(v254 + 140) = 1;
      v133 = 10 * v131 + 20;
      v254[37] = *(a2 + 5) - v133;
      if ((*(a2 + 12) & 0x80) != 0)
      {
        v134 = *(a2 + 4) + v133 / -1000.0;
        *(v254 + 143) = 1;
        BlueFin::GlMeWinMgr::SetTMDecodeInfo(*(v7 + 296), (v7 + 284), 1, v134);
      }
    }

    memset(v367, 0, sizeof(v367));
    v368 = 0;
    memset(v365, 0, sizeof(v365));
    v366 = 0;
    memset(v363, 0, sizeof(v363));
    v364 = 0;
    memset(v361, 0, sizeof(v361));
    v362 = 0;
    v324 = 0;
    v323 = 0;
    v325 = 0;
    memset(v327, 0, 13);
    v326 = 0;
    v319 = 0;
    v318 = 0;
    v320 = 0;
    memset(v322, 0, 13);
    v321 = 0;
    v314 = 0;
    v313 = 0;
    v315 = 0;
    memset(v317, 0, 13);
    v316 = 0;
    *v328 = v367;
    v329 = 0;
    v330 = 0;
    v333 = 0;
    v332 = 0;
    v331 = 0xE0000000E0;
    v334 = 0;
    BlueFin::GlBitBuffer::Limit(v328, 0xC8u);
    v323 = v365;
    v324 = 0;
    v325 = 0;
    v327[2] = 0;
    v327[0] = 0;
    v326 = 0xE0000000E0;
    LOBYTE(v327[3]) = 0;
    BlueFin::GlBitBuffer::Limit(&v323, 0xC8u);
    v318 = v363;
    v319 = 0;
    v320 = 0;
    v322[2] = 0;
    v322[0] = 0;
    v321 = 0xE0000000E0;
    LOBYTE(v322[3]) = 0;
    BlueFin::GlBitBuffer::Limit(&v318, 0xC8u);
    v313 = v361;
    v314 = 0;
    v315 = 0;
    v317[2] = 0;
    v317[0] = 0;
    v316 = 0xE0000000E0;
    LOBYTE(v317[3]) = 0;
    this = BlueFin::GlBitBuffer::Limit(&v313, 0xC8u);
    v312 = -1;
    v311 = -1;
    v135 = *(a2 + 5);
    v136 = *(a2 + 8);
    v137 = v135 - 10 * v136;
    if (v137 == *v245)
    {
      v138 = *v254;
      if (v138 + v136 - (HIDWORD(v287) - v288) >= 0xC8)
      {
        v139 = 10 * (HIDWORD(v287) - v288) + 2020;
        v65 = v135 >= v139;
        v140 = v135 - v139;
        if (v65)
        {
          v312 = v140;
          v65 = v137 >= v140;
          v141 = v137 - v140;
          if (v141 != 0 && v65)
          {
            v142 = v141 / 0xA;
            if (v142 <= v138)
            {
              v143 = v138 - v142;
              BlueFin::GlBitBuffer::Position(v374, (v138 - v142));
              this = BlueFin::GlBitBuffer::Position(v340, v143);
              v144 = HIDWORD(v377) - LODWORD(v378[0]);
              if (HIDWORD(v377) - LODWORD(v378[0]) >= (HIDWORD(v331) - v332))
              {
                v144 = HIDWORD(v331) - v332;
              }

              if (v144 >= 1)
              {
                do
                {
                  if (v144 >= 0x20)
                  {
                    v145 = 32;
                  }

                  else
                  {
                    v145 = v144;
                  }

                  v146 = BlueFin::GlBitBuffer::GetU(v374, v145);
                  BlueFin::GlBitBuffer::PutU(v328, v146, v145);
                  v147 = BlueFin::GlBitBuffer::GetU(v340, v145);
                  this = BlueFin::GlBitBuffer::PutU(&v323, v147, v145);
                  v144 = HIDWORD(v377) - LODWORD(v378[0]);
                  if (HIDWORD(v377) - LODWORD(v378[0]) >= (HIDWORD(v331) - v332))
                  {
                    v144 = HIDWORD(v331) - v332;
                  }
                }

                while (v144 > 0);
              }
            }
          }

          v148 = HIDWORD(v331) - v332;
          if (HIDWORD(v331) != v332)
          {
            v288 = 0;
            v290 = 0;
            LODWORD(v348[0]) = 0;
            BYTE4(v348[1]) = 0;
            if (HIDWORD(v287) < v148)
            {
              v148 = HIDWORD(v287);
            }

            if (v148 >= 1)
            {
              do
              {
                if (v148 >= 0x20)
                {
                  v149 = 32;
                }

                else
                {
                  v149 = v148;
                }

                v150 = BlueFin::GlBitBuffer::GetU(&v284, v149);
                BlueFin::GlBitBuffer::PutU(v328, v150, v149);
                v151 = BlueFin::GlBitBuffer::GetU(v345, v149);
                this = BlueFin::GlBitBuffer::PutU(&v323, v151, v149);
                v148 = HIDWORD(v287) - v288;
                if (HIDWORD(v287) - v288 >= (HIDWORD(v331) - v332))
                {
                  v148 = HIDWORD(v331) - v332;
                }
              }

              while (v148 > 0);
            }
          }
        }
      }
    }

    v152 = *(a3 + 5);
    v153 = *(a3 + 8);
    v154 = v152 - 10 * v153;
    if (v154 == *v246)
    {
      v155 = *v247;
      if (v155 + v153 - (HIDWORD(v267[0]) - LODWORD(v267[1])) >= 0xC8)
      {
        v156 = 10 * (HIDWORD(v267[0]) - LODWORD(v267[1])) + 2020;
        v65 = v152 >= v156;
        v157 = v152 - v156;
        if (v65)
        {
          v311 = v157;
          v65 = v154 >= v157;
          v158 = v154 - v157;
          if (v158 != 0 && v65)
          {
            v159 = v158 / 0xA;
            if (v159 <= v155)
            {
              v160 = v155 - v159;
              BlueFin::GlBitBuffer::Position(&v369, (v155 - v159));
              this = BlueFin::GlBitBuffer::Position(v335, v160);
              v161 = HIDWORD(v372) - LODWORD(v373[0]);
              if (HIDWORD(v372) - LODWORD(v373[0]) >= (HIDWORD(v321) - v322[0]))
              {
                v161 = HIDWORD(v321) - v322[0];
              }

              if (v161 >= 1)
              {
                do
                {
                  if (v161 >= 0x20)
                  {
                    v162 = 32;
                  }

                  else
                  {
                    v162 = v161;
                  }

                  v163 = BlueFin::GlBitBuffer::GetU(&v369, v162);
                  BlueFin::GlBitBuffer::PutU(&v318, v163, v162);
                  v164 = BlueFin::GlBitBuffer::GetU(v335, v162);
                  this = BlueFin::GlBitBuffer::PutU(&v313, v164, v162);
                  v161 = HIDWORD(v372) - LODWORD(v373[0]);
                  if (HIDWORD(v372) - LODWORD(v373[0]) >= (HIDWORD(v321) - v322[0]))
                  {
                    v161 = HIDWORD(v321) - v322[0];
                  }
                }

                while (v161 > 0);
              }
            }
          }

          v165 = HIDWORD(v321) - v322[0];
          if (HIDWORD(v321) != v322[0])
          {
            LODWORD(v267[1]) = 0;
            BYTE4(v267[2]) = 0;
            v383[0] = 0;
            LOBYTE(v383[3]) = 0;
            if (HIDWORD(v267[0]) < v165)
            {
              v165 = HIDWORD(v267[0]);
            }

            if (v165 >= 1)
            {
              do
              {
                if (v165 >= 0x20)
                {
                  v166 = 32;
                }

                else
                {
                  v166 = v165;
                }

                v167 = BlueFin::GlBitBuffer::GetU(&v264, v166);
                BlueFin::GlBitBuffer::PutU(&v318, v167, v166);
                v168 = BlueFin::GlBitBuffer::GetU(v379, v166);
                this = BlueFin::GlBitBuffer::PutU(&v313, v168, v166);
                v165 = HIDWORD(v267[0]) - LODWORD(v267[1]);
                if (HIDWORD(v267[0]) - LODWORD(v267[1]) >= (HIDWORD(v321) - v322[0]))
                {
                  v165 = HIDWORD(v321) - v322[0];
                }
              }

              while (v165 > 0);
            }
          }
        }
      }
    }

    v169 = v332;
    v170 = v322[0];
    if (v332 == 200 || v322[0] == 200)
    {
      break;
    }

    v84 = HIDWORD(v287);
    v85 = v288;
    v74 = HIDWORD(v267[0]);
    v75 = v267[1];
    v82 = v106;
LABEL_256:
    v86 = v84 == v85;
    if (v84 == v85 && v74 == v75)
    {
      goto LABEL_313;
    }
  }

  v359 = 0;
  *v358 = 0;
  v360 = 0;
  v357[0] = 0;
  v356 = 0;
  v357[1] = 0;
  v354 = 0;
  *v353 = 0;
  v355 = 0;
  v352[0] = 0;
  v351 = 0;
  v352[1] = 0;
  BlueFin::GLNFrameMgrUtils::MeanderDecode(v367, v358, 0xC0, 1);
  v358[0] ^= __PAIR64__(v358[0], v358[1]) >> 31;
  v358[1] ^= __PAIR64__(v358[1], v359) >> 31;
  LODWORD(v359) = v359 ^ (2 * v359);
  BlueFin::GLNFrameMgrUtils::MeanderDecode(v363, v353, 0xC0, 1);
  v353[0] ^= __PAIR64__(v353[0], v353[1]) >> 31;
  v353[1] ^= __PAIR64__(v353[1], v354) >> 31;
  LODWORD(v354) = v354 ^ (2 * v354);
  BlueFin::GLNFrameMgrUtils::MeanderDecode(v367, &v359 + 1, 0xC0, 0);
  HIDWORD(v359) ^= __PAIR64__(HIDWORD(v359), v360) >> 31;
  LODWORD(v360) = (__PAIR64__(v360, HIDWORD(v360)) >> 31) ^ v360;
  HIDWORD(v360) ^= 2 * HIDWORD(v360);
  BlueFin::GLNFrameMgrUtils::MeanderDecode(v363, &v354 + 1, 0xC0, 0);
  v175 = 0;
  HIDWORD(v354) ^= __PAIR64__(HIDWORD(v354), v355) >> 31;
  LODWORD(v355) = (__PAIR64__(v355, HIDWORD(v355)) >> 31) ^ v355;
  HIDWORD(v355) ^= 2 * HIDWORD(v355);
  v176 = v365[0];
  v177 = v361[0];
  do
  {
    v178 = v176;
    v179 = v177;
    this = v175++ >> 1;
    v176 = *(v365 + v175);
    v180 = ((__PAIR64__(v178, v176) >> 30) | (__PAIR64__(v178, v176) >> 31) | v178);
    v177 = *(v361 + v175);
    v181 = (__PAIR64__(v179, v177) >> 30) | (__PAIR64__(v179, v177) >> 31) | v179;
    v182 = *(&v357[-1] + this);
    v183 = *(v357 + this + 1);
    v184 = 16 * (v175 & 1);
    v185 = *(&v352[-1] + this);
    v186 = *(v352 + this + 1);
    v187 = -4;
    do
    {
      v187 += 4;
      v188 = (v180 >> v187) & 0xFLL;
      v182 |= byte_298A3A4A0[v188] << v184;
      v183 |= byte_298A3A4A0[v188 + 16] << v184;
      v189 = (v181 >> v187) & 0xFLL;
      v185 |= byte_298A3A4A0[v189] << v184;
      v186 |= byte_298A3A4A0[v189 + 16] << v184;
      v184 += 2;
    }

    while (v187 < 0x1C);
    *(&v357[-1] + this) = v182;
    *(v357 + this + 1) = v183;
    *(&v352[-1] + this) = v185;
    *(v352 + this + 1) = v186;
  }

  while (v175 != 6);
  v190 = 0;
  v191 = 0;
  v262 = 0;
  v192 = 0;
  v350[0] = v358;
  v350[1] = &v359 + 4;
  v350[2] = v353;
  v350[3] = &v354 + 4;
  v349[0] = &v312;
  v349[1] = &v312;
  v349[2] = &v311;
  v349[3] = &v311;
  v310[0] = v169 == 200;
  v310[1] = v169 == 200;
  v310[2] = v170 == 200;
  v310[3] = v170 == 200;
  do
  {
    if (v310[v190])
    {
      v193 = v350[v190];
      this = BlueFin::GLNFrameMgrUtils::Parity(v193, v180);
      if (this)
      {
        if (!v192 || *v192 == *v193 && *(v192 + 1) == *(v193 + 1) && (*(v193 + 2) ^ *(v192 + 2)) < 0x1000 || (v97 = v191 <= 0, --v191, v97))
        {
          v262 = v349[v190];
          ++v191;
          v192 = v193;
        }
      }
    }

    ++v190;
  }

  while (v190 != 4);
  if (v191 > 1)
  {
    v194 = *v192;
    v195 = *v192 >> 28;
    *(v254 + 144) = 1;
    v196 = *v262;
    v197 = *(a2 + 5) - *v262;
    *v307 = &unk_2A1F093B8;
    memset(&v307[2], 0, 10);
    memset(v309, 0, 12);
    v308 = 0;
    LODWORD(v308) = *v192 >> 1;
    HIDWORD(v198) = *v192;
    LODWORD(v198) = *(v192 + 1);
    HIDWORD(v308) = v198 >> 1;
    HIDWORD(v198) = *(v192 + 1);
    LODWORD(v198) = *(v192 + 2);
    v309[0] = (v198 >> 1) & 0xFFFFF800;
    LOBYTE(v307[2]) = *(v7 + 284);
    v199 = LOBYTE(v307[2]) - 59;
    if (LOBYTE(v307[2]) - 52 >= 0xE)
    {
      v199 = -8;
    }

    BYTE1(v307[2]) = v199;
    *(&v307[2] + 2) = 0;
    v200 = *(a2 + 6);
    v65 = v200 >= v197;
    v201 = v200 - v197;
    if (v201 != 0 && v65)
    {
      LOWORD(v307[4]) = v201;
    }

    if (v195 == 1 && (*(v254 + 142) & 1) == 0)
    {
      HIWORD(v307[2]) = 1;
      v214 = 1000 * (60 * ((v194 >> 13) & 0x3F) + 3600 * ((v194 >> 19) & 0x1F) + (((v194 << 19) >> 31) & 0x1E));
      v307[3] = v214;
      *(v254 + 140) = 1;
      if (*(v254 + 141) == 1)
      {
        v215 = v254[38] + v196 - v254[37];
        if (v215 > 0x5265BFF)
        {
          v215 -= 86400000;
        }

        *(v254 + 142) = v214 == v215;
      }

      *(v254 + 141) = 1;
      v254[37] = v196;
      v254[38] = v214;
      v204 = *(a2 + 4) + v197 / -1000.0;
      *(v309 + 4) = v204;
      goto LABEL_310;
    }

    if (*(v254 + 141))
    {
      v202 = v254[38] + v196 - v254[37];
      if (v202 > 0x5265BFF)
      {
        v202 -= 86400000;
      }

      v307[3] = v202;
      HIWORD(v307[2]) = 1;
      v254[37] = v196;
      v254[38] = v202;
      v203 = *(v254 + 140);
      v204 = *(a2 + 4) + v197 / -1000.0;
      *(v309 + 4) = v204;
      if ((v203 & 1) == 0)
      {
        goto LABEL_312;
      }

LABEL_310:
      if ((*(a2 + 12) & 0x80) != 0)
      {
        *(v254 + 143) = 1;
        BlueFin::GlMeWinMgr::SetTMDecodeInfo(*(v7 + 296), (v7 + 284), 1, v204);
      }

      goto LABEL_312;
    }

    v209 = *(v254 + 140);
    if (v209 == 1)
    {
      v254[37] = v196;
      v254[38] = 2000 * v195 - 2000;
    }

    v210 = *(a2 + 4);
    *v172.i64 = floor(v210 * 1000.0);
    *v174.i64 = *v172.i64 + trunc(*v172.i64 * 2.32830644e-10) * -4294967300.0;
    v211.f64[0] = NAN;
    v211.f64[1] = NAN;
    v212 = vnegq_f64(v211);
    v174.i64[0] = vbslq_s8(v212, v174, v172).u64[0];
    if (*v172.i64 > 4294967300.0)
    {
      v172.i64[0] = v174.i64[0];
    }

    if (*v172.i64 < -4294967300.0)
    {
      *v173.i64 = -*v172.i64;
      *v172.i64 = -(*v172.i64 - trunc(*v172.i64 * -2.32830644e-10) * -4294967300.0);
      *v172.i64 = -*vbslq_s8(v212, v172, v173).i64;
    }

    if (*v172.i64 < 0.0)
    {
      v213 = --*v172.i64;
    }

    else
    {
      v213 = *v172.i64;
    }

    v307[3] = v213 - v197;
    v204 = v210 + v197 / -1000.0;
    *(v309 + 4) = v204;
    if (v209)
    {
      goto LABEL_310;
    }

LABEL_312:
    this = (*(**(v7 + 288) + 56))(*(v7 + 288), v307);
  }

LABEL_313:
  if ((v254[35] & 1) == 0)
  {
    BlueFin::GlMeGlonassFrameMgr::SaveSearchBits((v254 + 3), v254 + 11, v245, v254, a2 + 22, a2 + 43, *(a2 + 5), *(a2 + 8), v242);
    this = BlueFin::GlMeGlonassFrameMgr::SaveSearchBits((v254 + 19), v254 + 27, v246, v247, a3 + 22, a3 + 43, *(a3 + 5), *(a3 + 8), v243);
  }

  v3 = v244;
  if (*(SearchStateMemory + 140))
  {
    goto LABEL_17;
  }

  return this;
}

uint64_t BlueFin::GlMePlatfStat::ss2hist(BlueFin::GlMePlatfStat *this)
{
  v1 = this + 148;
  if (this <= -140)
  {
    v2 = 14;
  }

  else
  {
    v2 = 0;
  }

  if (v1 >= 0xD)
  {
    return v2;
  }

  else
  {
    return 13 - v1;
  }
}

uint64_t BlueFin::GlMeDSPDataBits::Print(uint64_t this)
{
  if (*(this + 16))
  {
    if ((((*(this + 16) - 1) >> 5) + 1) > 0x20u)
    {
      DeviceFaultNotify("glme_msmtmgr.cpp", 2831, "Print", "ucNumWords <= NUM_LONGS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_msmtmgr.cpp", 2831, "ucNumWords <= NUM_LONGS");
    }
  }

  return this;
}

double BlueFin::GlMeSrdSvIdReportMgr::SetDSPDataBits(BlueFin::GlMeSrdSvIdReportMgr *this, const BlueFin::GlMeDSPDataBits *a2, const BlueFin::GlMeDSPDataBits *a3)
{
  v3 = *(a2 + 9);
  if (v3 != *(a3 + 9))
  {
    v17 = "otSvId == otPllDataBits.m_otSvId";
    DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 543, "SaveDataBits", "otSvId == otPllDataBits.m_otSvId");
    v18 = 543;
    goto LABEL_32;
  }

  v6 = *(a2 + 8);
  if (v6 != *(a3 + 8))
  {
    v17 = "ucSatId == otPllDataBits.m_ucChn";
    DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 544, "SaveDataBits", "ucSatId == otPllDataBits.m_ucChn");
    v18 = 544;
    goto LABEL_32;
  }

  if ((v3 - 189) <= 0xFFFFFF43)
  {
    v17 = "IS_SVID(*otSvId)";
    DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 546, "SaveDataBits", "IS_SVID(*otSvId)");
    v18 = 546;
    goto LABEL_32;
  }

  v8 = (*(**(this + 2) + 40))(*(this + 2), *(a2 + 8));
  if (!(*(**(this + 2) + 64))(*(this + 2)) || (v8 & 1) != 0)
  {
    goto LABEL_20;
  }

  if (((*(**(this + 2) + 64))(*(this + 2)) & 1) == 0)
  {
    v17 = "m_otDataBitsArray.IsFull()";
    DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 1535, "DataBitsGarbageCollector", "m_otDataBitsArray.IsFull()");
    v18 = 1535;
    goto LABEL_32;
  }

  (*(**(this + 2) + 80))(&v19);
  if (v20 >= *(v19 + 38))
  {
    goto LABEL_33;
  }

  v9 = 255;
  v10 = 1.79769313e308;
  do
  {
    v11 = BlueFin::GlArrayIterator::Next(&v19);
    v12 = (*(**(this + 2) + 16))(*(this + 2), v11);
    if ((v9 == 255 || v10 >= *(v12 + 336)) && (v9 = v11, v10 = *(v12 + 336), v11 == 255))
    {
      v13 = *(v12 + 32);
    }

    else
    {
      v13 = *(v12 + 32);
      if (v10 < v13)
      {
        continue;
      }
    }

    v10 = v13;
    v9 = v11;
  }

  while (v20 < *(v19 + 38));
  if (v9 == 255)
  {
LABEL_33:
    v17 = "ucSatToRemove != INVALID_SATID";
    DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 1556, "DataBitsGarbageCollector", "ucSatToRemove != INVALID_SATID");
    v18 = 1556;
LABEL_32:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_svid_report_mgr.cpp", v18, v17);
  }

  (*(**(this + 2) + 16))(*(this + 2), v9);
  (*(**(this + 2) + 32))(*(this + 2), v9);
  v14 = *(a2 + 4);
  if (v14 <= *(a3 + 4))
  {
    v14 = *(a3 + 4);
  }

  if (v14 - v10 < 0.1)
  {
    v17 = "(dCurrentTimeStampLs - dOldestTimeStampLs) >= 0.1";
    DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 554, "SaveDataBits", "(dCurrentTimeStampLs - dOldestTimeStampLs) >= 0.1");
    v18 = 554;
    goto LABEL_32;
  }

LABEL_20:
  v15 = (*(**(this + 2) + 24))(*(this + 2), v6);
  if (!v15)
  {
    v17 = "potDataBitSlot != nullptr";
    DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 561, "SaveDataBits", "potDataBitSlot != nullptr");
    v18 = 561;
    goto LABEL_32;
  }

  if ((v8 & 1) == 0)
  {
    BlueFin::GlMeSrdSvIdReportDataBitsSlot::GlMeSrdSvIdReportDataBitsSlot(v15);
  }

  *&result = BlueFin::GlMeSrdSvIdReportDataBitsSlot::Save(v15, a2, a3).n128_u64[0];
  return result;
}

__n128 BlueFin::GlMeSrdSvIdReportDataBitsSlot::Save(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v3 = *(a2 + 44);
  v4 = *(a2 + 60);
  v5 = *(a2 + 76);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 76) = v5;
  *(a1 + 60) = v4;
  *(a1 + 44) = v3;
  v6 = *(a2 + 108);
  v7 = *(a2 + 124);
  v8 = *(a2 + 140);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 140) = v8;
  *(a1 + 124) = v7;
  *(a1 + 108) = v6;
  v9 = *(a2 + 252);
  v10 = *(a2 + 268);
  v11 = *(a2 + 284);
  *(a1 + 236) = *(a2 + 236);
  *(a1 + 268) = v10;
  *(a1 + 284) = v11;
  *(a1 + 252) = v9;
  v12 = *(a2 + 172);
  v13 = *(a2 + 188);
  v14 = *(a2 + 204);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 204) = v14;
  *(a1 + 188) = v13;
  *(a1 + 172) = v12;
  *(a1 + 312) = *(a3 + 8);
  *(a1 + 316) = *(a3 + 12);
  *(a1 + 320) = *(a3 + 16);
  *(a1 + 324) = *(a3 + 20);
  *(a1 + 336) = *(a3 + 32);
  *(a1 + 344) = *(a3 + 40);
  v15 = *(a3 + 44);
  v16 = *(a3 + 60);
  v17 = *(a3 + 92);
  *(a1 + 380) = *(a3 + 76);
  *(a1 + 396) = v17;
  *(a1 + 348) = v15;
  *(a1 + 364) = v16;
  v18 = *(a3 + 108);
  v19 = *(a3 + 124);
  v20 = *(a3 + 156);
  *(a1 + 444) = *(a3 + 140);
  *(a1 + 460) = v20;
  *(a1 + 412) = v18;
  *(a1 + 428) = v19;
  v21 = *(a3 + 188);
  v22 = *(a3 + 220);
  v23 = *(a3 + 172);
  *(a1 + 508) = *(a3 + 204);
  *(a1 + 524) = v22;
  *(a1 + 476) = v23;
  *(a1 + 492) = v21;
  result = *(a3 + 236);
  v25 = *(a3 + 252);
  v26 = *(a3 + 284);
  *(a1 + 572) = *(a3 + 268);
  *(a1 + 588) = v26;
  *(a1 + 540) = result;
  *(a1 + 556) = v25;
  *(a1 + 608) = 1;
  return result;
}

uint64_t *BlueFin::GlPeReqBag::GetNonInstantaneousRequests@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = this[v2];
    if (v4)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 16);
      if (v6 != 1 || *(v5 + 22))
      {
        v3 |= 1 << v6;
      }
    }

    ++v2;
  }

  while (v2 != 72);
  *a1 = v3;
  return this;
}

uint64_t BlueFin::GlMeSrdObsBuf::ItFcn(uint64_t this, unsigned int a2, void *a3, uint64_t (*a4)(void *, unint64_t))
{
  v6 = a2;
  v7 = this;
  if (*(this + 8) == 1)
  {
    if (a2)
    {
      if (*(this + 9) < a2)
      {
        v8 = "ucNbElemSum<=m_ucNbElem";
        DeviceFaultNotify("glmesrd_obsbuf.cpp", 159, "ItFcn", "ucNbElemSum<=m_ucNbElem");
        v9 = 159;
        goto LABEL_8;
      }
    }

    else
    {
      v6 = *(this + 9);
    }

    LOBYTE(v10) = *(this + 10);
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v10 = *(this + 10);
  if (!a2)
  {
    v6 = *(this + 10);
    if (!*(this + 10))
    {
LABEL_11:
      LOBYTE(v10) = *(this + 9);
    }

LABEL_12:
    if (!v6)
    {
      return this;
    }

    goto LABEL_13;
  }

  if (v10 < a2)
  {
    v8 = "ucNbElemSum<=m_ucElemIdx";
    DeviceFaultNotify("glmesrd_obsbuf.cpp", 164, "ItFcn", "ucNbElemSum<=m_ucElemIdx");
    v9 = 164;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_obsbuf.cpp", v9, v8);
  }

  do
  {
LABEL_13:
    LOBYTE(v10) = v10 - 1;
    this = a4(a3, *v7 + *(v7 + 11) * v10);
    if (this)
    {
      break;
    }

    if (!v10)
    {
      LOBYTE(v10) = *(v7 + 9);
    }

    --v6;
  }

  while (v6);
  return this;
}

uint64_t BlueFin::GlMeSrdEstBitPhs::AccumulateBitHistogram(BlueFin::GlMeSrdEstBitPhs *this, uint64_t a2, void *a3)
{
  if (!a2)
  {
    v9 = "potBufElem != nullptr";
    DeviceFaultNotify("glmesrd_bitphase.cpp", 1146, "AccumulateBitHistogram", "potBufElem != nullptr");
    v10 = 1146;
    goto LABEL_14;
  }

  if (!this)
  {
    v9 = "potItObsParam != nullptr";
    DeviceFaultNotify("glmesrd_bitphase.cpp", 1147, "AccumulateBitHistogram", "potItObsParam != nullptr");
    v10 = 1147;
LABEL_14:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bitphase.cpp", v10, v9);
  }

  v4 = this + 8;
  if (*(this + *this + 4))
  {
    BlueFin::GlMeSrdBitHistBuf::operator+=(*(this + 45) + 108 * *this, a2);
    v5 = *this;
    if (*&v4[2 * v5])
    {
      v6 = *(this + 45);
      if (*(v6 + 108 * *this) >= *&v4[2 * *this])
      {
        result = 1;
        *(this + 1) |= 1 << v5;
        v8 = v5 + 1;
        *this = v8;
        if (v8 > 2u)
        {
          return result;
        }

        if (!*&v4[2 * v8])
        {
          return 1;
        }

        BlueFin::GlMeSrdBitHistBuf::operator+=(v6 + 108 * v8, v6 + 108 * v8 - 108);
      }
    }
  }

  return 0;
}

uint64_t (*BlueFin::GlMeSrdSatRptNonL1VetSm::my_top(uint64_t a1, unsigned __int8 *a2))()
{
  v2 = *a2;
  switch(v2)
  {
    case 7:
      BlueFin::QHsm::tran(a1, BlueFin::GlMeSrdSatRptNonL1VetSm::grid_search, "&GlMeSrdSatRptNonL1VetSm::grid_search");
      return 0;
    case 3:
      return 0;
    case 2:
      v3 = 0;
      *(a1 + 40) = 1;
      break;
    default:
      return BlueFin::QHsm::top;
  }

  return v3;
}

uint64_t BlueFin::GlPeComputeZRH::Compute(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, BlueFin::GlSetBase *this)
{
  if (!**this)
  {
    v19 = *(this + 8);
    if (v19 < 2)
    {
      return 0;
    }

    v20 = v19 - 1;
    v21 = (*this + 4);
    while (!*v21++)
    {
      if (!--v20)
      {
        return 0;
      }
    }
  }

  v10 = 0;
  v273 = 0;
  v269 = 0u;
  memset(v270, 0, 25);
  memset(v268, 0, sizeof(v268));
  v266 = 0u;
  v267 = 0u;
  memset(v265, 0, sizeof(v265));
  v11 = *(a2 + 28);
  v12 = *(a2 + 24);
  v271 = 0x4008000000000000;
  v13 = *a2;
  v14 = v12 * 0.001;
  if (v11 <= 2)
  {
    if (v11)
    {
      if (v11 == 1)
      {
        v43 = *(a2 + 8);
        v265[0] = *v43;
        *&v265[1] = *(v43 + 16);
        BlueFin::lla2ecef(v265, v315);
        *(&v265[1] + 8) = v315[0];
        *(&v265[2] + 1) = *&v315[1].f64[0];
        v44 = *v13;
        *&v266 = (*v13)[4];
        *(&v266 + 1) = v14;
        v267 = *(v44 + 5);
        v268[0] = 0.0;
        *&v269 = v44[7];
        v10 = 7;
      }

      else if (v11 == 2)
      {
        v24 = *(a2 + 8);
        v265[0] = *v24;
        *&v265[1] = *(v24 + 16);
        BlueFin::lla2ecef(v265, v315);
        *(&v265[1] + 8) = v315[0];
        *(&v265[2] + 1) = *&v315[1].f64[0];
        *&v266 = *(a2 + 16);
        *(&v266 + 1) = v14;
        v25 = *v13;
        v267 = *(*v13 + 1);
        v268[0] = v25[3];
        *&v269 = v25[4];
        v10 = 4;
      }

      goto LABEL_47;
    }

    goto LABEL_25;
  }

  if (v11 > 4)
  {
    if (v11 == 5)
    {
      v35 = *(a2 + 8);
      v36 = *(v35 + 8);
      *&v265[0] = *v35;
      *(v265 + 1) = v36;
      *&v265[1] = *(v35 + 16);
      *&v266 = *(a2 + 16);
      *&v269 = 0;
      v37 = *v265;
      v38 = __sincosf_stret(v37 * 0.017453);
      v39 = v36;
      v40 = __sincosf_stret(v39 * 0.017453);
      v272[0] = -(v38.__sinval * v40.__cosval);
      v272[1] = -(v38.__sinval * v40.__sinval);
      v272[2] = v38.__cosval;
      v272[4] = -v40.__sinval;
      v272[5] = v40.__cosval;
      v272[6] = 0.0;
      v272[8] = -(v38.__cosval * v40.__cosval);
      v272[9] = -(v38.__cosval * v40.__sinval);
      v272[10] = -v38.__sinval;
      v273 = 0x300000003;
      v41 = 6378100.0 / sqrtf(((v38.__sinval * -0.0066944) * v38.__sinval) + 1.0);
      v42 = *&v265[1];
      *(&v265[1] + 8) = vcvtq_f64_f32(vmul_n_f32(__PAIR64__(LODWORD(v40.__sinval), LODWORD(v40.__cosval)), v38.__cosval * (v41 + v42)));
      *(&v265[2] + 1) = (v38.__sinval * (v42 + (v41 * 0.99331)));
LABEL_43:
      v10 = 8;
      goto LABEL_47;
    }

    if (v11 != 6)
    {
      goto LABEL_47;
    }

LABEL_25:
    v26 = (*v13)[3];
    v27 = (*v13)[7];
    v315[0].f64[0] = (*v13)[1];
    v315[0].f64[1] = v26;
    v315[1].f64[0] = v27;
    BlueFin::ned2lla(*(a2 + 8), v315[0].f64, &v306);
    v265[0] = v306;
    *&v265[1] = v307;
    BlueFin::lla2ecef(v265, &v306);
    *(&v265[1] + 8) = v306;
    *(&v265[2] + 1) = v307;
    v28 = *v13;
    v267.f64[0] = (*v13)[2];
    v267.f64[1] = v28[4];
    v268[0] = v28[9];
    v29 = *(a2 + 32);
    v30 = *(a2 + 16);
    if ((v29 & 0x8000) != 0)
    {
      *(&v266 + 1) = v30 / 299792458.0 + *(a2 + 24) * 0.001;
      *&v266 = 0;
      LOBYTE(v270[3]) = 1;
    }

    else
    {
      *&v266 = v30 + v28[5];
      if ((v29 & 0x800) != 0)
      {
        *(&v266 + 1) = v14;
      }

      else
      {
        *(&v266 + 1) = v14 + v28[8];
      }
    }

    *&v269 = v28[6];
    v45 = *(a2 + 72);
    *(&v269 + 1) = *(a2 + 64) + v28[11];
    v270[0] = v45 + v28[9];
    v46 = *(a2 + 88);
    v270[1] = *(a2 + 80) + v28[12];
    v270[2] = v46 + v28[10];
    goto LABEL_43;
  }

  if (v11 == 3)
  {
    v31 = *(a2 + 40);
    if (!v31)
    {
      v244 = "rotInput.m_potNedVel";
      DeviceFaultNotify("glpe_computezrh.cpp", 2522, "CalcMeasState", "rotInput.m_potNedVel");
      v245 = "glpe_computezrh.cpp";
      v246 = 2522;
      goto LABEL_362;
    }

    if (!*(a2 + 56))
    {
      v244 = "rotInput.m_pdBcDot";
      DeviceFaultNotify("glpe_computezrh.cpp", 2523, "CalcMeasState", "rotInput.m_pdBcDot");
      v245 = "glpe_computezrh.cpp";
      v246 = 2523;
      goto LABEL_362;
    }

    v32 = *v13;
    if (fabs((*v13)[2]) >= 0.00000011920929)
    {
      v244 = "FABS_D(rotXHat(DKF_STATE_VX)) < FLT_EPSILON";
      DeviceFaultNotify("glpe_computezrh.cpp", 2524, "CalcMeasState", "FABS_D(rotXHat(DKF_STATE_VX)) < FLT_EPSILON");
      v245 = "glpe_computezrh.cpp";
      v246 = 2524;
      goto LABEL_362;
    }

    if (fabs(v32[4]) >= 0.00000011920929)
    {
      v244 = "FABS_D(rotXHat(DKF_STATE_VY)) < FLT_EPSILON";
      DeviceFaultNotify("glpe_computezrh.cpp", 2525, "CalcMeasState", "FABS_D(rotXHat(DKF_STATE_VY)) < FLT_EPSILON");
      v245 = "glpe_computezrh.cpp";
      v246 = 2525;
      goto LABEL_362;
    }

    if (fabs(v32[6]) >= 0.00000011920929)
    {
      v244 = "FABS_D(rotXHat(DKF_STATE_VZ)) < FLT_EPSILON";
      DeviceFaultNotify("glpe_computezrh.cpp", 2526, "CalcMeasState", "FABS_D(rotXHat(DKF_STATE_VZ)) < FLT_EPSILON");
      v245 = "glpe_computezrh.cpp";
      v246 = 2526;
      goto LABEL_362;
    }

    if (fabs(v32[1]) >= 0.00000011920929)
    {
      v244 = "FABS_D(rotXHat(DKF_STATE_X)) < FLT_EPSILON";
      DeviceFaultNotify("glpe_computezrh.cpp", 2527, "CalcMeasState", "FABS_D(rotXHat(DKF_STATE_X)) < FLT_EPSILON");
      v245 = "glpe_computezrh.cpp";
      v246 = 2527;
      goto LABEL_362;
    }

    if (fabs(v32[3]) >= 0.00000011920929)
    {
      v244 = "FABS_D(rotXHat(DKF_STATE_Y)) < FLT_EPSILON";
      DeviceFaultNotify("glpe_computezrh.cpp", 2528, "CalcMeasState", "FABS_D(rotXHat(DKF_STATE_Y)) < FLT_EPSILON");
      v245 = "glpe_computezrh.cpp";
      v246 = 2528;
      goto LABEL_362;
    }

    if (fabs(v32[5]) >= 0.00000011920929)
    {
      v244 = "FABS_D(rotXHat(DKF_STATE_Z)) < FLT_EPSILON";
      DeviceFaultNotify("glpe_computezrh.cpp", 2529, "CalcMeasState", "FABS_D(rotXHat(DKF_STATE_Z)) < FLT_EPSILON");
      v245 = "glpe_computezrh.cpp";
      v246 = 2529;
      goto LABEL_362;
    }

    if ((*(a2 + 34) & 2) != 0)
    {
      v47 = *(a2 + 48);
      if (!v47)
      {
        v244 = "rotInput.m_potNedAcc";
        DeviceFaultNotify("glpe_computezrh.cpp", 2533, "CalcMeasState", "rotInput.m_potNedAcc");
        v245 = "glpe_computezrh.cpp";
        v246 = 2533;
        goto LABEL_362;
      }

      *&v268[1] = *v47;
      v268[3] = *(v47 + 16);
      v48 = v31[1].f64[0];
      v49 = *(a2 + 96);
      v315[0] = vmulq_n_f64(*v31, v49);
      v315[1].f64[0] = v48 * v49;
      BlueFin::ned2lla(*(a2 + 8), v315[0].f64, &v306);
      v265[0] = v306;
      *&v265[1] = v307;
      BlueFin::lla2ecef(v265, &v306);
      *(&v265[1] + 8) = v306;
      *(&v265[2] + 1) = v307;
      v50 = *(a2 + 96);
      v51 = *(a2 + 40);
      v52 = *(a2 + 48);
      v267 = vmlaq_n_f64(*v51, *v52, v50);
      v268[0] = v51[1].f64[0] + v50 * v52[1].f64[0];
      v10 = 13;
    }

    else
    {
      v33 = *(a2 + 8);
      v265[0] = *v33;
      *&v265[1] = *(v33 + 16);
      BlueFin::lla2ecef(v265, v315);
      *(&v265[1] + 8) = v315[0];
      *(&v265[2] + 1) = *&v315[1].f64[0];
      v34 = *(a2 + 40);
      v267 = *v34;
      v268[0] = v34[1].f64[0];
      v10 = 12;
    }

    v53 = *v13;
    v54 = (*v13)[8];
    *&v266 = *(a2 + 16) + (*v13)[7];
    *&v269 = **(a2 + 56) + v54;
    *(&v266 + 1) = v14;
    v55 = *(a2 + 72);
    *(&v269 + 1) = *(a2 + 64) + v53[11];
    v270[0] = v55 + v53[9];
    v56 = *(a2 + 88);
    v270[1] = *(a2 + 80) + v53[12];
    v270[2] = v56 + v53[10];
    v271 = *(a2 + 104);
  }

  else
  {
    if (!*(a2 + 40))
    {
      v244 = "rotInput.m_potNedVel";
      DeviceFaultNotify("glpe_computezrh.cpp", 2569, "CalcMeasState", "rotInput.m_potNedVel");
      v245 = "glpe_computezrh.cpp";
      v246 = 2569;
      goto LABEL_362;
    }

    if (!*(a2 + 56))
    {
      v244 = "rotInput.m_pdBcDot";
      DeviceFaultNotify("glpe_computezrh.cpp", 2570, "CalcMeasState", "rotInput.m_pdBcDot");
      v245 = "glpe_computezrh.cpp";
      v246 = 2570;
      goto LABEL_362;
    }

    v15 = *v13;
    if (fabs((*v13)[2]) >= 0.00000011920929)
    {
      v244 = "FABS_D(rotXHat(DKF_STATE_VX)) < FLT_EPSILON";
      DeviceFaultNotify("glpe_computezrh.cpp", 2571, "CalcMeasState", "FABS_D(rotXHat(DKF_STATE_VX)) < FLT_EPSILON");
      v245 = "glpe_computezrh.cpp";
      v246 = 2571;
      goto LABEL_362;
    }

    if (fabs(v15[4]) >= 0.00000011920929)
    {
      v244 = "FABS_D(rotXHat(DKF_STATE_VY)) < FLT_EPSILON";
      DeviceFaultNotify("glpe_computezrh.cpp", 2572, "CalcMeasState", "FABS_D(rotXHat(DKF_STATE_VY)) < FLT_EPSILON");
      v245 = "glpe_computezrh.cpp";
      v246 = 2572;
      goto LABEL_362;
    }

    if (fabs(v15[6]) >= 0.00000011920929)
    {
      v244 = "FABS_D(rotXHat(DKF_STATE_VZ)) < FLT_EPSILON";
      DeviceFaultNotify("glpe_computezrh.cpp", 2573, "CalcMeasState", "FABS_D(rotXHat(DKF_STATE_VZ)) < FLT_EPSILON");
      v245 = "glpe_computezrh.cpp";
      v246 = 2573;
      goto LABEL_362;
    }

    if (fabs(v15[1]) >= 0.00000011920929)
    {
      v244 = "FABS_D(rotXHat(DKF_STATE_X)) < FLT_EPSILON";
      DeviceFaultNotify("glpe_computezrh.cpp", 2574, "CalcMeasState", "FABS_D(rotXHat(DKF_STATE_X)) < FLT_EPSILON");
      v245 = "glpe_computezrh.cpp";
      v246 = 2574;
      goto LABEL_362;
    }

    if (fabs(v15[3]) >= 0.00000011920929)
    {
      v244 = "FABS_D(rotXHat(DKF_STATE_Y)) < FLT_EPSILON";
      DeviceFaultNotify("glpe_computezrh.cpp", 2575, "CalcMeasState", "FABS_D(rotXHat(DKF_STATE_Y)) < FLT_EPSILON");
      v245 = "glpe_computezrh.cpp";
      v246 = 2575;
      goto LABEL_362;
    }

    if (fabs(v15[5]) >= 0.00000011920929)
    {
      v244 = "FABS_D(rotXHat(DKF_STATE_Z)) < FLT_EPSILON";
      DeviceFaultNotify("glpe_computezrh.cpp", 2576, "CalcMeasState", "FABS_D(rotXHat(DKF_STATE_Z)) < FLT_EPSILON");
      v245 = "glpe_computezrh.cpp";
      v246 = 2576;
      goto LABEL_362;
    }

    v16 = *(a2 + 8);
    v265[0] = *v16;
    *&v265[1] = *(v16 + 16);
    BlueFin::lla2ecef(v265, v315);
    *(&v265[1] + 8) = v315[0];
    *(&v265[2] + 1) = *&v315[1].f64[0];
    v17 = *(a2 + 40);
    v267 = *v17;
    v268[0] = v17[1].f64[0];
    v18 = (*v13)[8];
    *&v266 = *(a2 + 16) + (*v13)[7];
    *&v269 = **(a2 + 56) + v18;
    *(&v266 + 1) = v14;
    v10 = 12;
  }

LABEL_47:
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x47);
  }

  v57 = *a3;
  if (*(*a3 + 12) >= 0x15u)
  {
    v58 = 21;
  }

  else
  {
    v58 = *(*a3 + 12);
  }

  if (a3[2])
  {
    v59 = v58;
  }

  else
  {
    v59 = *(*a3 + 12);
  }

  if (!v10)
  {
    v244 = "ucNbStates > 0";
    DeviceFaultNotify("glpe_computezrh.cpp", 117, "Compute", "ucNbStates > 0");
    v245 = "glpe_computezrh.cpp";
    v246 = 117;
    goto LABEL_362;
  }

  v258 = this;
  v60 = BlueFin::GlSetBase::Cnt(this);
  if (v59 >= v60)
  {
    v61 = v60;
  }

  else
  {
    v61 = v59;
  }

  v62 = v61;
  *(v57 + 2) = v61;
  v63 = *v57;
  v64 = 8 * v61;
  bzero((v63 + 8), v64);
  v65 = a3[1];
  v65[2] = v62;
  bzero((*v65 + 8), v64);
  v66 = a3[3];
  if (v66)
  {
    v66[2] = v62;
    bzero((*v66 + 8), v64);
  }

  v67 = a3[2];
  if (v67)
  {
    BlueFin::BigMatrix::Null(v67, v62, v10);
  }

  v260 = *(v258 + 8);
  memcpy(v264, *v258, 4 * v260);
  v262 = 0;
  v261 = 0;
  v263 = v264[0];
  BlueFin::GlSetIterator::operator++(&v260);
  v23 = 0;
  if (v261 != v260)
  {
    v23 = 0;
    v69 = 0;
    v70 = 0x300000001;
    v71 = 299792458.0;
    *&v72 = 299792.458;
    *&v73 = 2500.0;
    v74 = 1.0;
    v259 = a4;
    do
    {
      if (v59 < ++v69)
      {
        return v23;
      }

      v75 = v262;
      v76 = a4 + 56 * v262;
      v77 = *(a2 + 32);
      if ((v77 & 0x800) != 0)
      {
        v78 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(v76 + 36) - *(v76 + 36) + BlueFin::GlSvId::s_aucSvId2gnss[*(v76 + 32)]];
        if (v78 == 11 || v78 == 5)
        {
          *&v266 = *(**a2 + 64) + *&v266;
        }
      }

      v80 = *(v76 + 44);
      if (v80 <= 3)
      {
        if (v80 > 1)
        {
          if (v80 != 2)
          {
            if ((v77 & 8) == 0)
            {
              v86 = *(a2 + 28);
              *(**a3 + 8 * v69) = *&v265[1] - *v76;
              *(*a3[1] + 8 * v69) = 0;
              v87 = a3[3];
              if (v87)
              {
                *(*v87 + 8 * v69) = *(v76 + 8) * *(v76 + 8);
              }

              v88 = a3[2];
              if (v88)
              {
                if (v86 == 1)
                {
                  v126 = *(v265 + 1) * 0.0174532925;
                  v127 = __sincos_stret(*v265 * 0.0174532925);
                  v128 = __sincos_stret(v126);
                  v23 = 0;
                  v129 = *(*(v88 + 8) + 8 * v69);
                  v129[1] = -(v127.__cosval * v128.__cosval);
                  v129[2] = -(v127.__cosval * v128.__sinval);
                  v129[3] = -v127.__sinval;
                }

                else
                {
                  if (v86)
                  {
                    v244 = "false";
                    DeviceFaultNotify("glpe_computezrh.cpp", 296, "getZRH_FromAlMeas", "false");
                    v245 = "glpe_computezrh.cpp";
                    v246 = 296;
LABEL_362:
                    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v245, v246, v244);
                  }

                  v23 = 0;
                  *(*(*(v88 + 8) + 8 * v69) + 56) = 0x3FF0000000000000;
                }
              }

              else
              {
                v23 = 0;
              }

              a4 = v259;
              goto LABEL_333;
            }

            goto LABEL_330;
          }

          if ((v77 & 8) != 0)
          {
            goto LABEL_330;
          }

          v106 = *(a2 + 28);
          v292 = 0;
          v290 = 0u;
          v291 = 0;
          memset(v289, 0, sizeof(v289));
          v23 = (*(*a1 + 24))(a1, v76 + 32, *(v76 + 16), v265, v289, v77 & 1, (v77 >> 15) & 1, (v77 >> 5) & 1, 0);
          if (v23)
          {
            goto LABEL_330;
          }

          v320 = 0;
          v314 = 0;
          v305 = 0;
          v298 = -91.0;
          v288 = 0;
          LOBYTE(v286[0]) = *(v76 + 32);
          v286[1] = *(v76 + 36);
          v287 = *(v76 + 40);
          if ((*(*(a1 + 1512) + ((LOBYTE(v286[0]) >> 3) & 0x1C)) >> (v286[0] & 0x1F)))
          {
            if (BlueFin::GlPeSatPosCache::GetLOSFromCache(a1 + 24, (v76 + 32), &v299))
            {
              v107 = vsubq_f64(v289[0], *(&v265[1] + 8));
              v108 = v289[1].f64[0] - *(&v265[2] + 1);
              v109 = sqrt(vaddvq_f64(vmulq_f64(v107, v107)) + v108 * v108);
              if (v109 == 0.0)
              {
                goto LABEL_359;
              }

              v314 = v70;
              v306 = vmulq_n_f64(v107, v74 / v109);
              *&v307 = v108 * (v74 / v109);
            }

            else
            {
              v109 = (*(**(a1 + 4264) + 80))(*(a1 + 4264), v289, &v265[1] + 8, v265, &v306, &v299, 0, 0);
            }

            v144 = BlueFin::GlPeElAzCache::Get((a1 + 296), v286);
            v145 = *(v144 + 1);
            v288 = *(v144 + 2);
            v298 = v145;
          }

          else
          {
            if (a3[5])
            {
              v142 = &v288;
            }

            else
            {
              v142 = 0;
            }

            if (a3[4])
            {
              v143 = &v298;
            }

            else
            {
              v143 = 0;
            }

            v109 = (*(**(a1 + 4264) + 80))(*(a1 + 4264), v289, &v265[1] + 8, v265, &v306, &v299, v142, v143);
          }

          *(**a3 + 8 * v69) = *v76;
          v146 = -(v289[2].f64[0] * *(&v306 + 1) + v289[1].f64[1] * *&v306 + v289[2].f64[1] * *&v307);
          if (*(*(a1 + 4272) + 120021) == 1)
          {
            v284 = 0;
            v280 = 0u;
            memset(v281, 0, sizeof(v281));
            v282 = 0u;
            v283 = 0;
            v297 = 0;
            v294 = 0;
            v251 = (*(*a1 + 24))(a1, v76 + 32, (*(v76 + 16) - 100), v265, &v280, 0, (*(a2 + 32) >> 15) & 1, (*(a2 + 32) >> 5) & 1, 0);
            v147 = (*(**(a1 + 4264) + 80))(*(a1 + 4264), &v280, &v265[1] + 8, v265, &v295, v293, 0, 0);
            v148 = (*(*a1 + 24))(a1, v76 + 32, (*(v76 + 16) + 100), v265, &v280, 0, (*(a2 + 32) >> 15) & 1, (*(a2 + 32) >> 5) & 1, 0);
            (*(**(a1 + 4264) + 80))(*(a1 + 4264), &v280, &v265[1] + 8, v265, &v295, v293, 0, 0);
            if (!(v251 | v148))
            {
              v146 = (v147 - v149) * 1000.0 / 200.0;
            }
          }

          v297 = v70;
          v295 = v267;
          v296 = v268[0];
          BlueFin::Matrix::mult(v293, &v295, 1, &v299, v268[0]);
          *(*a3[1] + 8 * v69) = -v146 - v293[0].n128_f64[0] + *&v269 + *(&v290 + 1) * -299792458.0;
          v150 = a3[3];
          if (v150)
          {
            v151 = *(v76 + 8) * *(v76 + 8);
            v152 = *v150;
            *(*v150 + 8 * v69) = v151;
            if ((*(a2 + 33) & 0x40) != 0)
            {
              v298 = fmaxf(v298, 1.0);
              *(v152 + 8 * v69) = v151 * (1.0 / sinf(fmaxf(v298, 20.0) * 0.017453));
            }
          }

          v153 = a3[2];
          if (v153)
          {
            if (v106 > 2)
            {
              if (v106 != 6)
              {
                if (v106 == 4)
                {
                  v197 = *(*(v153 + 8) + 8 * v69);
                  *(v197 + 16) = -v299.f64[0];
                  *(v197 + 32) = -v299.f64[1];
                  *(v197 + 48) = -*&v300;
                  *(v197 + 64) = 0x3FF0000000000000;
                }

                else if (v106 == 3)
                {
                  v155 = -v299.f64[0];
                  v156 = *(*(v153 + 8) + 8 * v69);
                  *(v156 + 16) = -v299.f64[0];
                  v157 = -v299.f64[1];
                  *(v156 + 32) = -v299.f64[1];
                  v158 = -*&v300;
                  *(v156 + 48) = -*&v300;
                  *(v156 + 64) = 0x3FF0000000000000;
                  if ((*(a2 + 34) & 2) != 0)
                  {
                    *(v156 + 104) = v268[2] * v157 + v268[1] * v155 + v268[3] * v158;
                  }
                }

                goto LABEL_234;
              }
            }

            else if (v106)
            {
              if (v106 == 1)
              {
                v285 = v70;
                v280 = *(&v289[1] + 8);
                v281[0] = *&v289[2].f64[1];
                BlueFin::Matrix::mult(&v274, &v280, 1, &v306, v289[2].f64[1]);
                BlueFin::Matrix::mult(v315, &v274, &v306);
                BlueFin::Matrix::operator-=(v315, &v280);
                BlueFin::Matrix::operator/=(v315, v109);
                v196 = *(*(v153 + 8) + 8 * v69);
                *(v196 + 8) = v315[0];
                *(v196 + 24) = v315[1].f64[0];
                *(v196 + 40) = vnegq_f64(v299);
                *(v196 + 56) = 0x3FF0000000000000;
              }

              else if (v106 == 2)
              {
                v154 = *(*(v153 + 8) + 8 * v69);
                *(v154 + 8) = -v299.f64[0];
                *(v154 + 16) = -v299.f64[1];
                *(v154 + 24) = -*&v300;
                *(v154 + 32) = 0x3FF0000000000000;
              }

              goto LABEL_234;
            }

            v164 = *(*(v153 + 8) + 8 * v69);
            *(v164 + 16) = -v299.f64[0];
            *(v164 + 32) = -v299.f64[1];
            *(v164 + 48) = 0x3FF0000000000000;
          }

LABEL_234:
          v198 = a3[4];
          if (v198)
          {
            *(v198 + 4 * v69 - 4) = v298;
          }

          v199 = a3[5];
          a4 = v259;
          if (v199)
          {
            *(v199 + 4 * v69 - 4) = v288;
          }

          goto LABEL_330;
        }

        if (!v80)
        {
          if (*(a2 + 28) == 5)
          {
            v93 = a3[2];
            if (!v93)
            {
              v23 = 1;
              a4 = v259;
LABEL_331:
              v243 = a3[8];
              if (!v243)
              {
                return v23;
              }

              *(*v243 + ((*(v76 + 32) >> 3) & 0x1C)) |= 1 << *(v76 + 32);
              goto LABEL_333;
            }

            a4 = v259;
            if (BlueFin::GlPeSatPosCache::GetHFromCache(a1 + 24, (v76 + 32), v69, v93))
            {
              goto LABEL_133;
            }

            v319 = 0;
            v316 = 0u;
            v317 = 0u;
            v318 = 0;
            memset(v315, 0, sizeof(v315));
            v23 = (*(*a1 + 24))(a1, v76 + 32, *(v76 + 16), v265, v315, *(a2 + 32) & 1, (*(a2 + 32) >> 15) & 1, (*(a2 + 32) >> 5) & 1, 0);
            if (!v23)
            {
              v94 = v315[1].f64[0] - *(&v265[2] + 1);
              *&v310 = v70;
              v95 = vcvt_f32_f64(vsubq_f64(v315[0], *(&v265[1] + 8)));
              v96 = 1.0 / sqrtf((COERCE_FLOAT(vmul_f32(v95, v95).i32[1]) + (v95.f32[0] * v95.f32[0])) + (v94 * v94));
              v253 = vmul_n_f32(v95, v96);
              v97 = v96 * v94;
              *&v306 = v253;
              *(&v306 + 2) = v96 * v94;
              BlueFin::FMatrix::FMatrix(&v299, &v306, 0, v272);
              v98 = v315[1].f64[1];
              v99 = *&v316;
              v100 = -(v253.f32[1] * v99) - (v253.f32[0] * v98);
              v101 = *(&v316 + 1);
              v102 = v100 - (v101 * v97);
              v103 = *(v299.f64 + 1);
              v104 = *(*(a3[2] + 8) + 8 * v69);
              *(v104 + 8) = -*v299.f64;
              *(v104 + 24) = -v103;
              v105 = -*&v299.f64[1];
              *(v104 + 40) = 0x3FF0000000000000;
              *(v104 + 56) = v105;
              *(v104 + 64) = v102;
            }

            goto LABEL_330;
          }

          v254 = *(a2 + 28);
          v121 = a3[1];
          v304 = 0;
          v301 = 0u;
          v302 = 0u;
          v303 = 0;
          v299 = 0u;
          v300 = 0u;
          v23 = (*(*a1 + 24))(a1, v76 + 32, *(v76 + 16), v265, &v299, v77 & 1, (v77 & 0x18000) != 0, (v77 >> 5) & 1, v76 & (v77 >> 15));
          if (v23)
          {
            goto LABEL_329;
          }

          v249 = v121;
          v320 = 0;
          v314 = 0;
          LODWORD(v274) = 0;
          LODWORD(v289[0].f64[0]) = 0;
          if ((~*(a2 + 32) & 0x40008) != 0)
          {
            v125 = v254;
            if ((*(*(a1 + 1512) + ((*(v76 + 32) >> 3) & 0x1C)) >> (*(v76 + 32) & 0x1F)))
            {
              if (BlueFin::GlPeSatPosCache::GetLOSFromCache(a1 + 24, (v76 + 32), &v306))
              {
                v140 = vsubq_f64(v299, *(&v265[1] + 8));
                v141 = *&v300 - *(&v265[2] + 1);
                v123 = sqrt(vaddvq_f64(vmulq_f64(v140, v140)) + v141 * v141);
                if (v123 == 0.0)
                {
LABEL_359:
                  v244 = "dGeometricRangeM != 0.0";
                  DeviceFaultNotify("glpe_satposif.h", 177, "svrange", "dGeometricRangeM != 0.0");
                  v245 = "glpe_satposif.h";
                  v246 = 177;
                  goto LABEL_362;
                }

                v320 = v70;
                v315[0] = vmulq_n_f64(v140, v74 / v123);
                v315[1].f64[0] = v141 * (v74 / v123);
              }

              else
              {
                v123 = (*(**(a1 + 4264) + 80))(*(a1 + 4264), &v299, &v265[1] + 8, v265, v315, &v306, 0, 0);
              }

              v165 = BlueFin::GlPeElAzCache::Get((a1 + 296), (v76 + 32));
              if (!v165)
              {
                v244 = "pElAz != nullptr";
                DeviceFaultNotify("glpe_computezrh.cpp", 512, "getZRH_FromPRMeas", "pElAz != nullptr");
                v245 = "glpe_computezrh.cpp";
                v246 = 512;
                goto LABEL_362;
              }

              v166 = *(v165 + 1);
              LODWORD(v274) = *(v165 + 2);
              LODWORD(v289[0].f64[0]) = v166;
            }

            else
            {
              v123 = (*(**(a1 + 4264) + 80))(*(a1 + 4264), &v299, &v265[1] + 8, v265, v315, &v306, &v274, v289);
            }

            v124 = 0.0;
            if (v254 <= 6 && ((1 << v254) & 0x43) != 0)
            {
              v124 = -(*&v301 * v315[0].f64[1] + *(&v300 + 1) * v315[0].f64[0] + *(&v301 + 1) * v315[1].f64[0]);
            }
          }

          else
          {
            v122 = vsubq_f64(v299, *(&v265[1] + 8));
            v123 = sqrt(vaddvq_f64(vmulq_f64(v122, v122)) + (*&v300 - *(&v265[2] + 1)) * (*&v300 - *(&v265[2] + 1)));
            v124 = 0.0;
            v125 = v254;
          }

          v167 = a3[4];
          if (v167)
          {
            *(v167 + 4 * v69 - 4) = LODWORD(v289[0].f64[0]);
          }

          v168 = a3[5];
          if (v168)
          {
            *(v168 + 4 * v69 - 4) = v274;
          }

          v169 = a3[6];
          if (v169)
          {
            v170 = v169 + 136 * v69;
            if ((v170 - 136) != &v306)
            {
              v171 = v306;
              v172 = v307;
              v173 = v309;
              *(v170 - 104) = v308;
              *(v170 - 88) = v173;
              *(v170 - 136) = v171;
              *(v170 - 120) = v172;
              v174 = v310;
              v175 = v311;
              v176 = v313;
              *(v170 - 40) = v312;
              *(v170 - 24) = v176;
              *(v170 - 72) = v174;
              *(v170 - 56) = v175;
              *(v170 - 8) = v314;
            }
          }

          v177 = BlueFin::GlSvId::s_aucSvId2gnss[*(v76 + 32)];
          if ((*(a2 + 33) & 4) != 0 && ((*(*a1 + 72))(a1, v76 + 32, v125) & 1) == 0)
          {
            GlCustomLog(13, "<ZRH> Time Unc Fail Sig %02d %d\n", *(v76 + 32), *(v76 + 36));
            v23 = 2;
            goto LABEL_329;
          }

          v178 = *&v302 * v71;
          v179 = *&v73;
          if ((*(v76 + 49) & 1) == 0)
          {
            v178 = v178 + (*(*a1 + 88))(a1, v76 + 32, 0);
          }

          v180 = *&v72;
          (*(*a1 + 96))(a1, v177);
          if (v177 == 5)
          {
            v181 = v181 + *(&v269 + 1);
            if ((*(a2 + 33) & 8) != 0)
            {
              v181 = 0.0;
            }
          }

          v248 = v177;
          if (v177 == 4)
          {
            v182 = v181 + v270[1];
          }

          else
          {
            v182 = v181;
          }

          InterSystemHwBiasM = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(*(a1 + 4328), (v76 + 32), 0, 0);
          v186 = *(v76 + 36);
          v187 = InterSystemHwBiasM;
          v188 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v186 - v186 + BlueFin::GlSvId::s_aucSvId2gnss[*(v76 + 32)]];
          if (v188 == 6)
          {
            v187 = v270[2] + v187;
          }

          if (v188 == 12 || v186 == 2)
          {
            v187 = v270[0] + v187;
          }

          if (v186 < 1)
          {
            v190 = v249;
          }

          else
          {
            v190 = v249;
            if (v186 != 3 && *(v76 + 49))
            {
              v187 = 0.0;
            }
          }

          v191 = v69;
          *(*v190 + 8 * v69) = v187 + v182 + v123 + *&v266 - v178;
          v192 = *(a2 + 32);
          if ((v192 & 0x40000) != 0)
          {
            v193 = BlueFin::GlPeComputeZRHUtil::computeBitResolution((v76 + 32), (*(a2 + 32) >> 4) & 1);
            AtmosDelay = BlueFin::GlPeComputeZRHUtil::resolveIntegers(v258, v75, v193, v69, v190, v259);
            v191 = v69;
            *(v76 + 24) = AtmosDelay;
            v192 = *(a2 + 32);
          }

          *&v72 = v180;
          if ((v192 & 8) != 0)
          {
            goto LABEL_328;
          }

          if (v254 != 1 && (v192 & 0x40) != 0)
          {
            v194 = v191;
            if (v186 < 1)
            {
              v195 = 0;
            }

            else
            {
              v195 = *(v76 + 49);
            }

            AtmosDelay = BlueFin::GlPeComputeZRH::GetAtmosDelay(a1, (v76 + 32), *(v76 + 16), v265, *&v274, *v289[0].f64, v184, v195 & 1, 0, v286);
            v191 = v194;
            *(*v249 + 8 * v194) = v205 + *(*v249 + 8 * v194);
          }

          *(**a3 + 8 * v191) = *v76 + *(v76 + 24) * v180;
          v206 = a3[2];
          if (!v206)
          {
            goto LABEL_272;
          }

          if (v254 <= 2)
          {
            if (v254)
            {
              if (v254 == 1)
              {
                v212 = *(*(v206 + 8) + 8 * v191);
                *(v212 + 8) = -v315[0].f64[0];
                *(v212 + 16) = -v315[0].f64[1];
                *(v212 + 24) = -v315[1].f64[0];
                *(v212 + 32) = 0x3FF0000000000000;
                *(v212 + 56) = v124;
              }

              goto LABEL_272;
            }
          }

          else if (v254 != 6)
          {
            if (v254 == 4)
            {
              v214 = *(*(v206 + 8) + 8 * v191);
              *(v214 + 8) = -*&v306;
              *(v214 + 24) = -*(&v306 + 1);
              *(v214 + 56) = 0x3FF0000000000000;
              *(v214 + 40) = -*&v307;
            }

            else if (v254 == 3)
            {
              v207 = -*&v306;
              v208 = *(*(v206 + 8) + 8 * v191);
              *(v208 + 8) = -*&v306;
              v209 = -*(&v306 + 1);
              *(v208 + 24) = -*(&v306 + 1);
              *(v208 + 56) = 0x3FF0000000000000;
              v210 = -*&v307;
              *(v208 + 40) = -*&v307;
              if (v248 == 5)
              {
                *(v208 + 88) = 0x3FF0000000000000;
              }

              if (v186 == 2 && v248 != 4)
              {
                v211 = 72;
                goto LABEL_259;
              }

              if (v248 == 4)
              {
                v215 = *(v76 + 36);
                if ((v215 - 2) < 2)
                {
                  v211 = 96;
                  goto LABEL_259;
                }

                if (!v215)
                {
                  v211 = 80;
LABEL_259:
                  *(v208 + v211) = 0x3FF0000000000000;
                }
              }

              if ((*(a2 + 34) & 2) != 0)
              {
                *(v208 + 104) = v267.f64[1] * v209 + v267.f64[0] * v207 + v268[0] * v210;
              }
            }

LABEL_272:
            v216 = a3[3];
            if (!v216)
            {
              goto LABEL_328;
            }

            if (v254 == 1)
            {
              *(*v216 + 8 * v191) = *(v76 + 8) * *(v76 + 8);
              goto LABEL_328;
            }

            v217 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(v76 + 36) - *(v76 + 36) + BlueFin::GlSvId::s_aucSvId2gnss[*(v76 + 32)]];
            v256 = v217 < 9;
            v218 = *(a2 + 32);
            if ((v218 & 4) != 0)
            {
              v221 = 30.0;
              if ((v218 & 0x200) == 0)
              {
                v221 = 20.0;
              }

              if (v221 <= *v289[0].f64)
              {
                v219 = 1.0;
                v220 = 0.0;
                goto LABEL_289;
              }

              v220 = 0.0;
              v252 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(v76 + 36) - *(v76 + 36) + BlueFin::GlSvId::s_aucSvId2gnss[*(v76 + 32)]];
              v217 = v191;
              v222 = BlueFin::SmoothThresh(AtmosDelay, 0.0, v221 + -5.0, v221 - *v289[0].f64);
              v191 = v217;
              LOBYTE(v217) = v252;
              v219 = v222;
              if ((v218 & 0x2000) == 0)
              {
                goto LABEL_290;
              }
            }

            else
            {
              v219 = 1.0;
              v220 = 0.0;
              if ((v218 & 2) != 0 && *v289[0].f64 <= 15.0)
              {
                if (*v289[0].f64 >= 5.0)
                {
                  v220 = ((*v289[0].f64 + -5.0) * -5.0 + 50.0) * ((*v289[0].f64 + -5.0) * -5.0 + 50.0) * 4.0;
                  if ((v218 & 0x2000) != 0)
                  {
                    goto LABEL_285;
                  }
                }

                else
                {
                  v220 = v179;
                  if ((v218 & 0x2000) != 0)
                  {
                    goto LABEL_285;
                  }
                }

LABEL_290:
                v223 = v191;
LABEL_291:
                v225 = (*(*a1 + 40))(a1, v76 + 32);
                if (*(v76 + 32) - 76 <= 0x3E)
                {
                  BlueFin::GlPeTimeManager::GetTime(*(a1 + 4288), 1, v293);
                  BlueFin::GlPeGnssTime::GetUtc(v293, &v295);
                  v226.i64[0] = 0;
                  BlueFin::GlUtcTime::GlUtcTime(v293, 0x7E3u, 9u, 1u, v226, v227, v228);
                  BlueFin::GlUtcTime::operator-(&v280, LODWORD(v295.f64[1]), HIDWORD(v295.f64[1]), v293[0].n128_u32[2], v293[0].n128_u32[3]);
                  if (BYTE8(v280))
                  {
                    v225 = v225 + 10.0;
                  }
                }

                v257 = v256 & (0x134u >> v217);
                MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*(a1 + 4320), (v76 + 32), 0, 0);
                if (MeMeas)
                {
                  v230 = MeMeas;
                  v231 = 0.0;
                  if (*v289[0].f64 <= 85.0)
                  {
                    if (*v289[0].f64 <= 40.0)
                    {
                      v231 = 60.0;
                    }

                    else
                    {
                      v231 = (50.0 / tanf(*v289[0].f64 * 0.017453));
                    }
                  }

                  v232 = *(a2 + 32);
                  if ((v232 & 0x80) == 0)
                  {
LABEL_301:
                    v234 = 0;
                    goto LABEL_315;
                  }

                  v235 = *(v230 + 5);
                  if (v235 == 4)
                  {
LABEL_305:
                    v236 = 60.0;
                  }

                  else
                  {
                    if (v235 != 3)
                    {
                      if (v235)
                      {
                        goto LABEL_301;
                      }

                      goto LABEL_305;
                    }

                    v236 = 30.0;
                  }

                  if (v231 >= v236 || (v232 & 0x200) != 0)
                  {
                    v231 = v236;
                  }

                  if (v257)
                  {
                    v231 = v231 * 0.1;
                  }

                  v234 = (v231 * v231);
LABEL_315:
                  v233 = v234;
                }

                else
                {
                  v232 = *(a2 + 32);
                  v233 = 0.0;
                }

                v238 = v233 + (v225 * v225) + *(v76 + 8) * *(v76 + 8);
                v239 = *v216;
                *(*v216 + 8 * v223) = v238;
                if ((v232 & 4) != 0)
                {
                  goto LABEL_323;
                }

                v240 = v257;
                if ((v232 & 0x2000) == 0)
                {
                  v240 = 1;
                }

                if ((v240 & 1) == 0)
                {
LABEL_323:
                  v241 = v219 * v238;
                }

                else
                {
                  if ((v232 & 2) == 0)
                  {
                    if ((v232 & 0x100) != 0)
                    {
                      v241 = fmin(v238, 100.0);
                      goto LABEL_324;
                    }

LABEL_325:
                    if ((v232 & 0x10000) != 0)
                    {
                      v242 = v233 + *(v76 + 8) * *(v76 + 8);
                      *(v239 + 8 * v223) = v242;
                      if ((v232 & 0x100) != 0)
                      {
                        *(v239 + 8 * v223) = fmin(v242, 100.0);
                      }
                    }

LABEL_328:
                    v23 = 0;
                    *&v73 = v179;
                    v74 = 1.0;
LABEL_329:
                    a4 = v259;
LABEL_330:
                    if (v23)
                    {
                      goto LABEL_331;
                    }

                    goto LABEL_333;
                  }

                  v241 = v220 + v238;
                }

LABEL_324:
                *(v239 + 8 * v223) = v241;
                goto LABEL_325;
              }

LABEL_289:
              if ((v218 & 0x2000) == 0)
              {
                goto LABEL_290;
              }
            }

LABEL_285:
            v223 = v191;
            v224 = (1.0 / sinf(fmaxf(*v289[0].f64, 10.0) * 0.017453));
            if (v219 <= v224)
            {
              v219 = v224;
            }

            goto LABEL_291;
          }

          v213 = *(*(v206 + 8) + 8 * v191);
          *(v213 + 8) = -*&v306;
          *(v213 + 24) = -*(&v306 + 1);
          *(v213 + 40) = 0x3FF0000000000000;
          *(v213 + 56) = -*&v307;
          *(v213 + 64) = v124;
          goto LABEL_272;
        }

        if (v80 != 1)
        {
          goto LABEL_363;
        }

        if ((v77 & 8) != 0)
        {
          goto LABEL_330;
        }

        v83 = *(&v266 + 1);
        *(**a3 + 8 * v69) = *v76;
        *(*a3[1] + 8 * v69) = v83;
        v84 = a3[3];
        if (v84)
        {
          *(*v84 + 8 * v69) = *(v76 + 8) * *(v76 + 8);
        }

        v85 = a3[2];
        if (!v85)
        {
          goto LABEL_133;
        }

        v23 = 0;
        *(*(*(v85 + 8) + 8 * v69) + 64) = 0x3FF0000000000000;
      }

      else
      {
        if (v80 > 7)
        {
          if (v80 == 8)
          {
            if ((v77 & 8) == 0)
            {
              v114 = *(a2 + 28);
              v315[0].f64[0] = *v76;
              *(v315 + 8) = *(v265 + 8);
              BlueFin::lla2ned(v315[0].f64, v265, 0, &v306);
              *(**a3 + 8 * v69) = v306;
              *(*a3[1] + 8 * v69) = 0;
              v115 = a3[3];
              if (v115)
              {
                *(*v115 + 8 * v69) = *(v76 + 8) * *(v76 + 8);
              }

              v116 = a3[2];
              if (v116)
              {
                if (v114)
                {
                  v244 = "eCallingFunction == CALLING_FROMKF";
                  DeviceFaultNotify("glpe_computezrh.cpp", 390, "getZRH_FromLatMeas", "eCallingFunction == CALLING_FROMKF");
                  v245 = "glpe_computezrh.cpp";
                  v246 = 390;
                  goto LABEL_362;
                }

                *(*(*(v116 + 8) + 8 * v69) + 8) = 0x3FF0000000000000;
              }

LABEL_133:
              v23 = 0;
              goto LABEL_333;
            }

            goto LABEL_330;
          }

          if (v80 == 9)
          {
            if ((v77 & 8) == 0)
            {
              v117 = *(a2 + 28);
              v118 = *v76;
              v315[0].f64[0] = *v265;
              v315[0].f64[1] = v118;
              v315[1].f64[0] = *&v265[1];
              BlueFin::lla2ned(v315[0].f64, v265, 0, &v306);
              *(**a3 + 8 * v69) = *(&v306 + 1);
              *(*a3[1] + 8 * v69) = 0;
              v119 = a3[3];
              if (v119)
              {
                *(*v119 + 8 * v69) = *(v76 + 8) * *(v76 + 8);
              }

              v120 = a3[2];
              if (v120)
              {
                if (v117)
                {
                  v244 = "eCallingFunction == CALLING_FROMKF";
                  DeviceFaultNotify("glpe_computezrh.cpp", 423, "getZRH_FromLonMeas", "eCallingFunction == CALLING_FROMKF");
                  v245 = "glpe_computezrh.cpp";
                  v246 = 423;
                  goto LABEL_362;
                }

                *(*(*(v120 + 8) + 8 * v69) + 24) = 0x3FF0000000000000;
              }

              goto LABEL_133;
            }

            goto LABEL_330;
          }

          if (v80 != 10)
          {
            goto LABEL_363;
          }

          v81 = *(a2 + 28);
          v284 = 0;
          v280 = 0u;
          memset(v281, 0, sizeof(v281));
          v282 = 0u;
          v283 = 0;
          v279 = 0;
          v276 = 0u;
          v277 = 0u;
          v278 = 0;
          v274 = 0u;
          v275 = 0u;
          v82 = (*(*a1 + 24))(a1, v76 + 32, *(v76 + 16), v265, &v280, 1, 0, 0, 0);
          if (v82 || (v82 = (*(*a1 + 24))(a1, v76 + 32, (*(v76 + 16) - *(v76 + 20)), v265, &v274, 0, 0, 0, 0), v82))
          {
            v23 = v82;
            goto LABEL_329;
          }

          v247 = v73;
          v250 = v72;
          v255 = v70;
          v130 = v71;
          v320 = 0;
          v314 = 0;
          v305 = 0;
          v286[0] = -1028259840;
          v298 = 0.0;
          LOBYTE(v289[0].f64[0]) = *(v76 + 32);
          HIDWORD(v289[0].f64[0]) = *(v76 + 36);
          LOWORD(v289[0].f64[1]) = *(v76 + 40);
          v131 = v274;
          v132 = *(&v265[1] + 1);
          v133 = *&v265[2];
          v134 = *&v275;
          v135 = *(&v265[2] + 1);
          v136 = *(**(a1 + 4264) + 80);
          if ((*(*(a1 + 1512) + ((LOBYTE(v289[0].f64[0]) >> 3) & 0x1C)) >> (LOBYTE(v289[0].f64[0]) & 0x1F)))
          {
            v137 = v136();
            v138 = BlueFin::GlPeElAzCache::Get((a1 + 296), v289);
            v139 = *(v138 + 1);
            v298 = *(v138 + 2);
            v286[0] = v139;
          }

          else
          {
            v137 = v136();
          }

          v159 = *v76;
          *(**a3 + 8 * v69) = *v76;
          *(*a3[1] + 8 * v69) = sqrt((*&v131 - v132) * (*&v131 - v132) + (*(&v131 + 1) - v133) * (*(&v131 + 1) - v133) + (v134 - v135) * (v134 - v135)) - v137 + (*&v277 - *&v282) * -299792458.0 - v159;
          v160 = a3[3];
          if (v160)
          {
            *(*v160 + 8 * v69) = *(v76 + 8) * *(v76 + 8) + 0.0000999999975;
          }

          v161 = a3[2];
          v71 = v130;
          v72 = v250;
          v70 = v255;
          v73 = v247;
          v74 = 1.0;
          if (v161)
          {
            if (v81 <= 1)
            {
              if (v81)
              {
                if (v81 == 1)
                {
                  v297 = v255;
                  v295 = *&v281[1];
                  v296 = *&v281[3];
                  BlueFin::Matrix::mult(v293, &v295, 1, &v306, *&v281[3]);
                  BlueFin::Matrix::mult(v315, v293, &v306);
                  BlueFin::Matrix::operator-=(v315, &v295);
                  BlueFin::Matrix::operator/=(v315, v137);
                  v163 = *(*(v161 + 8) + 8 * v69);
                  *(v163 + 8) = v315[0];
                  *(v163 + 24) = v315[1].f64[0];
                  *(v163 + 40) = vnegq_f64(v299);
                  *(v163 + 56) = 0x3FF0000000000000;
                }
              }

              else
              {
                v202 = *(*(v161 + 8) + 8 * v69);
                *(v202 + 16) = -v299.f64[0];
                *(v202 + 32) = -v299.f64[1];
                *(v202 + 48) = 0x3FF0000000000000;
              }
            }

            else
            {
              switch(v81)
              {
                case 2:
                  v200 = *(*(v161 + 8) + 8 * v69);
                  *(v200 + 8) = -v299.f64[0];
                  *(v200 + 16) = -v299.f64[1];
                  *(v200 + 24) = -*&v300;
                  *(v200 + 32) = 0x3FF0000000000000;
                  break;
                case 4:
                  v201 = *(*(v161 + 8) + 8 * v69);
                  *(v201 + 16) = -v299.f64[0];
                  *(v201 + 32) = -v299.f64[1];
                  *(v201 + 48) = -*&v300;
                  *(v201 + 64) = 0x3FF0000000000000;
                  if (!v160)
                  {
                    v244 = "rotOutput.m_potR";
                    DeviceFaultNotify("glpe_computezrh.cpp", 1232, "getZRH_FromADRMeas", "rotOutput.m_potR");
                    v245 = "glpe_computezrh.cpp";
                    v246 = 1232;
                    goto LABEL_362;
                  }

                  break;
                case 3:
                  v162 = *(*(v161 + 8) + 8 * v69);
                  *(v162 + 16) = -v299.f64[0];
                  *(v162 + 32) = -v299.f64[1];
                  *(v162 + 48) = -*&v300;
                  *(v162 + 64) = 0x3FF0000000000000;
                  if (!v160)
                  {
                    v244 = "rotOutput.m_potR";
                    DeviceFaultNotify("glpe_computezrh.cpp", 1217, "getZRH_FromADRMeas", "rotOutput.m_potR");
                    v245 = "glpe_computezrh.cpp";
                    v246 = 1217;
                    goto LABEL_362;
                  }

                  break;
              }
            }
          }

          v203 = a3[4];
          if (v203)
          {
            *(v203 + 4 * v69 - 4) = v286[0];
          }

          v204 = a3[5];
          a4 = v259;
          if (v204)
          {
            *(v204 + 4 * v69 - 4) = v298;
          }

          v23 = 0;
          goto LABEL_330;
        }

        if (v80 == 4)
        {
          v110 = *(a2 + 28);
          v111 = v267.f64[0];
          *(**a3 + 8 * v69) = *v76;
          *(*a3[1] + 8 * v69) = v111;
          v112 = a3[3];
          if (v112)
          {
            *(*v112 + 8 * v69) = *(v76 + 8) * *(v76 + 8);
          }

          v113 = a3[2];
          if (!v113)
          {
            goto LABEL_133;
          }

          if (v110)
          {
            v244 = "eCallingFunction == CALLING_FROMKF";
            DeviceFaultNotify("glpe_computezrh.cpp", 326, "getZRH_FromVxMeas", "eCallingFunction == CALLING_FROMKF");
            v245 = "glpe_computezrh.cpp";
            v246 = 326;
            goto LABEL_362;
          }

          v23 = 0;
          *(*(*(v113 + 8) + 8 * v69) + 16) = 0x3FF0000000000000;
        }

        else
        {
          if (v80 != 5)
          {
LABEL_363:
            v244 = "0";
            DeviceFaultNotify("glpe_computezrh.cpp", 207, "Compute", "0");
            v245 = "glpe_computezrh.cpp";
            v246 = 207;
            goto LABEL_362;
          }

          v89 = *(a2 + 28);
          v90 = v267.f64[1];
          *(**a3 + 8 * v69) = *v76;
          *(*a3[1] + 8 * v69) = v90;
          v91 = a3[3];
          if (v91)
          {
            *(*v91 + 8 * v69) = *(v76 + 8) * *(v76 + 8);
          }

          v92 = a3[2];
          if (!v92)
          {
            goto LABEL_133;
          }

          if (v89)
          {
            v244 = "eCallingFunction == CALLING_FROMKF";
            DeviceFaultNotify("glpe_computezrh.cpp", 357, "getZRH_FromVyMeas", "eCallingFunction == CALLING_FROMKF");
            v245 = "glpe_computezrh.cpp";
            v246 = 357;
            goto LABEL_362;
          }

          v23 = 0;
          *(*(*(v92 + 8) + 8 * v69) + 32) = 0x3FF0000000000000;
        }
      }

LABEL_333:
      BlueFin::GlSetIterator::operator++(&v260);
    }

    while (v261 != v260);
  }

  return v23;
}

void BlueFin::GlPeNavGnssKF::ComputePositionMain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, unint64_t a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, __int128 a16, __int128 a17, int32x4_t a18, int32x4_t a19, char a20, const void *a21, int a22, unsigned int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int32x4_t a33, unint64_t a34, uint64_t a35, __int128 a36, __int128 a37, __int128 a38, __int128 a39, __int128 a40, __int128 a41, int32x4_t a42, int32x4_t a43, char a44, uint64_t a45, __int32 *a46, int32x4_t a47, __int128 a48, __int128 a49, __int128 a50, __int128 a51)
{
  v51 = MEMORY[0x2A1C7C4A8](a1, a2);
  v616 = v52;
  v604 = v53;
  v612 = v54;
  v55 = v51;
  STACK[0x1CF8] = *MEMORY[0x29EDCA608];
  v622 = v56;
  vars8 = v51;
  if ((*(v56 + 1) & 0x40) != 0)
  {
    goto LABEL_68;
  }

  v57 = *(v51 + 40);
  v58 = *(*(v57 + 16) + 16);
  if (*(v51 + 26) == 1)
  {
    v58 = v58 + *(*(v57 + 32) + 32);
  }

  if (v58 > 6.25)
  {
    goto LABEL_68;
  }

  BlueFin::GlSetBase::GlSetBase(&STACK[0x16A0], &STACK[0x16AC], 0x13u, (v51 + *(*v51 - 24) + 352));
  v59 = 0;
  v60 = (STACK[0x16A0] + 4 * LOBYTE(STACK[0x16A8]) - 4);
  v55 = vars8;
  do
  {
    if (*v60)
    {
      v61 = *v60 - (((*v60 >> 2) & 0x9249249) + ((*v60 >> 1) & 0x5B6DB6DB));
      v59 = ((v61 + (v61 >> 3)) & 0xC71C71C7) + v59 - 63 * (((v61 + (v61 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v60;
  }

  while (v60 >= STACK[0x16A0]);
  if (v59 < 5u)
  {
    goto LABEL_68;
  }

  v55 = vars8;
  if (!((*(*vars8 + 64))(vars8) / (*(vars8 + 546) * 1000.0)))
  {
    goto LABEL_68;
  }

  for (i = 0; i != 1092; i += 12)
  {
    v63 = &STACK[0x620] + i;
    *v63 = 0;
    *(v63 + 1) = -1;
    *(v63 + 4) = 575;
  }

  a33.i8[0] = STACK[0x16A8];
  memcpy(&a33.u64[1], STACK[0x16A0], 4 * a33.u8[0]);
  a33.i16[1] = 0;
  a33.i8[1] = 0;
  a33.i32[1] = a33.i32[2];
  BlueFin::GlSetIterator::operator++(&a33);
  if (a33.u8[1] == a33.u8[0])
  {
    goto LABEL_67;
  }

  v64 = 0;
  while (1)
  {
    v65 = a33.u16[1];
    if (a33.u16[1] >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v66 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * a33.u16[1];
    v67 = *v66;
    LODWORD(v66) = v66[1];
    LOBYTE(STACK[0x1188]) = v67;
    LODWORD(STACK[0x118C]) = v66;
    LOWORD(STACK[0x1190]) = v65;
    v68 = v65 >> 5;
    v69 = *(*(*(v55 + 8) + 8) + 4 * (v65 >> 5));
    v70 = v65 & 0x1F;
    if (((v69 >> v70) & 1) == 0)
    {
      goto LABEL_37;
    }

    a46 = &a47.i32[1];
    *(&a47 + 4) = 0u;
    *(&a48 + 4) = 0u;
    *(&a49 + 4) = 0u;
    *(&a50 + 4) = 0u;
    a51 = 0u;
    a47.i32[v68 + 1] |= 1 << v70;
    a47.i8[0] = 19;
    v71 = v55 + *(*v55 - 24);
    a9 = *(v71 + 8);
    a10 = *(v71 + 24);
    BlueFin::GlPeNavUtil::ComputeRrateResidVec(v55, &a46);
    if (!*a46)
    {
      break;
    }

LABEL_18:
    MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*(vars8 + 1), &STACK[0x1188], 0, 0);
    PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*(vars8 + 1), &STACK[0x1188], 0);
    v75 = *(MeMeas + 5);
    if (v75 == 4)
    {
      v55 = vars8;
      if ((*(*(vars8 + 281) + 8) - 1) >= 2)
      {
        v76 = 5.0;
      }

      else
      {
        v76 = 2.0;
      }
    }

    else
    {
      v76 = 2.0;
      v55 = vars8;
      if (v75 <= 2)
      {
        if ((*(*(vars8 + 281) + 8) - 1) > 4)
        {
          v77 = 0;
        }

        else
        {
          v87 = PeMeas;
          IsPRValidForNav = BlueFin::stPeSigMeasKF::IsPRValidForNav(PeMeas);
          v89 = *(v87 + 52) > 28 || IsPRValidForNav;
          if (v89)
          {
            v77 = 0;
            v55 = vars8;
          }

          else
          {
            v55 = vars8;
            v77 = sqrt(*(vars8 + *(*vars8 - 24) + 112) * *(vars8 + *(*vars8 - 24) + 112) + *(vars8 + *(*vars8 - 24) + 104) * *(vars8 + *(*vars8 - 24) + 104)) > 0.5;
          }
        }

        goto LABEL_24;
      }
    }

    v77 = 1;
LABEL_24:
    v78 = LOBYTE(STACK[0x1188]);
    v79 = v78 - 76;
    if ((v78 - 134) >= 5 && v79 >= 5)
    {
      v81 = v76;
    }

    else
    {
      v81 = 10.0;
    }

    if (v77 || v79 <= 0x3E && ((1 << v79) & 0x7C0000000000001FLL) != 0)
    {
      v82 = v81 * fabs(*(STACK[0x11F0] + 8));
    }

    else
    {
      v82 = fabs(*(STACK[0x11F0] + 8));
    }

    *(&STACK[0x19C0] + v64) = v82;
    v83 = (&STACK[0x620] + 12 * v64);
    if (v83 != &STACK[0x1188])
    {
      *v83 = v78;
      *(v83 + 1) = STACK[0x118C];
      *(v83 + 4) = STACK[0x1190];
    }

    ++v64;
LABEL_37:
    BlueFin::GlSetIterator::operator++(&a33);
    if (a33.u8[1] == a33.u8[0])
    {
      goto LABEL_53;
    }
  }

  if (a47.u8[0] >= 2uLL)
  {
    v84 = a47.u8[0] - 1;
    v85 = a46 + 1;
    do
    {
      if (*v85++)
      {
        goto LABEL_18;
      }
    }

    while (--v84);
  }

LABEL_53:
  if (v64 >= 5u)
  {
    BlueFin::GlSortDoubles(&STACK[0x19C0], v64, &STACK[0x11F0], v72);
    v90 = *(vars8 + 281);
    v91 = *(v90 + 16);
    if (v91 == 2)
    {
      v92 = *(&STACK[0x19C0] + LOBYTE(STACK[0x11F3])) * 4.0;
LABEL_57:
      v93 = 20.0;
      if (*(v90 + 1805))
      {
        v93 = 10.0;
      }
    }

    else
    {
      v92 = *(&STACK[0x19C0] + LOBYTE(STACK[0x11F3])) * 4.0;
      v93 = 20.0;
      if (v91 == 3)
      {
        goto LABEL_57;
      }
    }

    v94 = v64;
    if (v93 >= v92)
    {
      v95 = v93;
    }

    else
    {
      v95 = v92;
    }

    v96 = &STACK[0x11F0];
    do
    {
      v98 = *v96;
      v96 = (v96 + 1);
      v97 = v98;
      if (*(&STACK[0x19C0] + v98) > v95)
      {
        v99 = &STACK[0x620] + 6 * v97;
        BlueFin::GlSetBase::Remove(vars8 + *(*vars8 - 24) + 352, v99[4]);
        BlueFin::GlSetBase::Remove(vars8 + *(*vars8 - 24) + 264, v99[4]);
        v100 = BlueFin::GlSignalIdArray::Get(*(*(vars8 + 1) + 18792), v99);
        if (v100)
        {
          *(v100 + 272) = 8481;
        }
      }

      --v94;
    }

    while (v94);
  }

LABEL_67:
  v55 = vars8;
LABEL_68:
  *&STACK[0x460] = 0uLL;
  LODWORD(STACK[0x48C]) = -1;
  *&STACK[0x470] = xmmword_298A419D0;
  LOWORD(STACK[0x490]) = 0;
  LOBYTE(STACK[0x492]) = 0;
  LOBYTE(STACK[0x480]) = 0;
  LODWORD(STACK[0x484]) = -1;
  LOWORD(STACK[0x488]) = 575;
  if (*(*(v55 + 2248) + 1989) == 1)
  {
    *&STACK[0x460] = *(v55 + 2672);
    LODWORD(STACK[0x48C]) = 3;
    LODWORD(STACK[0x470]) = **(v55 + 8);
    LOBYTE(STACK[0x490]) = 1;
  }

  if ((*(v622 + 1) & 0x40) != 0)
  {
    if (BlueFin::GlPeNavGnssKF::PolaroidIsTunnelExit(v55))
    {
      STACK[0x620] = 0;
      STACK[0x11F0] = 0;
      if (BlueFin::GlPeAltMgr::GetExtAlt(*(vars8 + 283), (vars8 + *(*vars8 - 24) + 8), &STACK[0x620], &STACK[0x11F0]))
      {
        v101 = STACK[0x11F0];
        STACK[0x460] = STACK[0x620];
        STACK[0x468] = v101;
        LODWORD(STACK[0x48C]) = 3;
        LODWORD(STACK[0x470]) = **(vars8 + 1);
        LOBYTE(STACK[0x490]) = 1;
      }
    }
  }

  BlueFin::GlPeNavGnssState::GlPeNavGnssState(&a46);
  a33 = 0uLL;
  a34 = 0;
  a35 = &a36 + 4;
  LOBYTE(a36) = 19;
  *(&a36 + 4) = 0u;
  *(&a37 + 4) = 0u;
  *(&a38 + 4) = 0u;
  *(&a39 + 4) = 0u;
  *(&a40 + 4) = 0u;
  a41 = 0u;
  a42 = vdupq_n_s32(0x43C80000u);
  a43 = a42;
  a44 = 0;
  BlueFin::GlPeSubsetsKf::GlPeSubsetsKf(&STACK[0x620]);
  v102 = vars8;
  v605 = (vars8 + 2872);
  if (!*(vars8 + 1560))
  {
    v115 = 0;
    goto LABEL_131;
  }

  STACK[0x19C0] = &STACK[0x19CC];
  LOBYTE(STACK[0x19C8]) = 19;
  *&STACK[0x19CC] = 0u;
  *&STACK[0x19DC] = 0u;
  *&STACK[0x19EC] = 0u;
  *&STACK[0x19FC] = 0u;
  *&STACK[0x1A08] = 0u;
  BlueFin::GlPeNavGnssKF::GetMeasSigIdSetForLsq(vars8, v616, &STACK[0x19C0], 1, 16);
  STACK[0x16A0] = &STACK[0x16AC];
  LOBYTE(STACK[0x16A8]) = 19;
  *&STACK[0x16AC] = 0u;
  *&STACK[0x16BC] = 0u;
  *&STACK[0x16CC] = 0u;
  *&STACK[0x16DC] = 0u;
  *&STACK[0x16E8] = 0u;
  BlueFin::GlPeNavGnssKF::GetMeasSigIdSetForLsq(vars8, v616, &STACK[0x16A0], 0, 16);
  if (LOBYTE(STACK[0x490]))
  {
    v103 = 388;
  }

  else
  {
    v103 = 384;
  }

  STACK[0x1190] = 0;
  STACK[0x1188] = 0;
  STACK[0x1198] = 0;
  v104 = vars8;
  v105 = *(*(vars8 + 282) + 136);
  if (!v105 || *(v105 + 3008) != 1 || vaddvq_f64(vmulq_f64(*(v105 + 3040), *(v105 + 3040))) >= 160000.0)
  {
    v116 = 0;
    v110 = 0.0;
    goto LABEL_86;
  }

  v106 = *(vars8 + 597);
  v107 = *(v106 + 3016);
  v108 = *(v106 + 3024);
  STACK[0x1188] = v107;
  STACK[0x1190] = v108;
  v109 = *(v106 + 3032);
  STACK[0x1198] = v109;
  v110 = *(v106 + 3048);
  LODWORD(v106) = *(v106 + 3072);
  LOBYTE(a9) = 1;
  LOWORD(a14) = 0;
  *(&a9 + 1) = v107;
  a10 = v108;
  *&a11 = v109;
  *(&a11 + 1) = v110;
  *&a12 = v110;
  *(&a12 + 1) = 0;
  *&a13 = 0;
  DWORD2(a13) = v106;
  if (v106 >= 2)
  {
    bzero(STACK[0x19C0], ((4 * LOBYTE(STACK[0x19C8]) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    BlueFin::GlPeNavGnssKF::GetMeasSigIdSetForLsq(vars8, v616, &STACK[0x19C0], 1, 14);
    v104 = vars8;
  }

  v111 = v104 + *(*v104 - 24);
  v112 = *(v111 + 11);
  v113 = **(v104 + 280);
  *&STACK[0x11F8] = *(v104 + 8);
  STACK[0x11F0] = &STACK[0x620];
  STACK[0x1208] = &STACK[0x460];
  STACK[0x1218] = 0;
  STACK[0x1210] = 0;
  LODWORD(STACK[0x1220]) = v103;
  *&STACK[0x1230] = *(v111 + 8);
  STACK[0x1240] = *(v111 + 3);
  STACK[0x1248] = v112;
  LODWORD(STACK[0x1250]) = v113;
  STACK[0x1258] = &STACK[0x1264];
  LOBYTE(STACK[0x1260]) = 8;
  *&STACK[0x1274] = 0u;
  *&STACK[0x1264] = 0u;
  STACK[0x1228] = &a9;
  BlueFin::GlPeSubsetsKf::GlPeSubsetsKf(&STACK[0x620]);
  BlueFin::GlPeLsqSubsets::RunLsqSubset(&STACK[0x11F0], &STACK[0x19C0], 3, 1, 0, 0);
  v114 = BlueFin::GlPeSubsets::Find(&STACK[0x620], &STACK[0x19C0]);
  v115 = v114;
  if (v114)
  {
    a33 = *v114;
    a34 = *(v114 + 16);
    BlueFin::GlSetBase::operator=(&a35, v114 + 24);
    v116 = 0;
    *(&a36 + 4) = *(v115 + 36);
    v117 = *(v115 + 52);
    v118 = *(v115 + 68);
    v119 = *(v115 + 84);
    v120 = v115[7];
    a40 = v115[6];
    *(&a38 + 4) = v118;
    *(&a39 + 4) = v119;
    *(&a37 + 4) = v117;
    v121 = v115[8];
    v122 = v115[9];
    a44 = *(v115 + 160);
    a42 = v121;
    a43 = v122;
    a41 = v120;
    v123 = vars8;
    v124 = *(vars8 + 282);
  }

  else
  {
    v123 = vars8;
    v124 = *(vars8 + 282);
    v396 = *(v124 + 136);
    v116 = !v396 || *(v396 + 3008) != 1 || vaddvq_f64(vmulq_f64(*(v396 + 3040), *(v396 + 3040))) >= 160000.0 || (*(v396 + 3072) - 6) < 0xFFFFFFFC;
  }

  if (*(v124 + 128) == 1)
  {
    v397 = *(v124 + 136);
    if (v397)
    {
      if (*(v397 + 3008) == 1 && vaddvq_f64(vmulq_f64(*(v397 + 3040), *(v397 + 3040))) < 160000.0 && (*(v397 + 3072) - 2) <= 3)
      {
        *(v124 + 64) = v107;
        *(v124 + 72) = v108;
        *(v124 + 80) = v109;
        *(v124 + 104) = v110;
        *(v124 + 112) = v110;
        *(v124 + 120) = 0;
        *(v124 + 88) = *(v123 + *(*v123 - 24) + 200);
      }
    }
  }

  if (v115)
  {
    goto LABEL_100;
  }

LABEL_86:
  BlueFin::GlPeSubsetsKf::GlPeSubsetsKf(&STACK[0x620]);
  v125 = vars8 + *(*vars8 - 24);
  v126 = *(v125 + 11);
  v127 = **(vars8 + 280);
  *&STACK[0x11F8] = *(vars8 + 8);
  STACK[0x11F0] = &STACK[0x620];
  STACK[0x1208] = &STACK[0x460];
  STACK[0x1218] = 0;
  STACK[0x1210] = 0;
  LODWORD(STACK[0x1220]) = v103;
  STACK[0x1228] = 0;
  *&STACK[0x1230] = *(v125 + 8);
  STACK[0x1240] = *(v125 + 3);
  STACK[0x1248] = v126;
  LODWORD(STACK[0x1250]) = v127;
  STACK[0x1258] = &STACK[0x1264];
  LOBYTE(STACK[0x1260]) = 8;
  *&STACK[0x1274] = 0u;
  *&STACK[0x1264] = 0u;
  if (!BlueFin::GlPeNavGnssKF::PolaroidIsTunnelExit(vars8))
  {
    goto LABEL_96;
  }

  v128 = 0;
  v129 = (STACK[0x19C0] + 4 * LOBYTE(STACK[0x19C8]) - 4);
  do
  {
    if (*v129)
    {
      v130 = *v129 - (((*v129 >> 2) & 0x9249249) + ((*v129 >> 1) & 0x5B6DB6DB));
      v128 = ((v130 + (v130 >> 3)) & 0xC71C71C7) + v128 - 63 * (((v130 + (v130 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v129;
  }

  while (v129 >= STACK[0x19C0]);
  if (v128 < 6u)
  {
LABEL_96:
    BlueFin::GlPeLsqSubsets::RunLsqSubset(&STACK[0x11F0], &STACK[0x19C0], 3, 1, 0, 0);
    v115 = BlueFin::GlPeSubsets::Find(&STACK[0x620], &STACK[0x19C0]);
    goto LABEL_97;
  }

  BlueFin::GlPeLsqSubsets::RunLsqSubsets(&STACK[0x11F0], &STACK[0x19C0], 1, 0, 0);
  BestFitResidSubset = BlueFin::GlPeSubsets::FindBestFitResidSubset(&STACK[0x620]);
  v115 = BlueFin::GlPeSubsets::Find(&STACK[0x620], &STACK[0x19C0]);
  if (!v115)
  {
LABEL_97:
    v123 = vars8;
LABEL_98:
    if (v115)
    {
      goto LABEL_99;
    }

    goto LABEL_100;
  }

  v123 = vars8;
  if (!BestFitResidSubset)
  {
    goto LABEL_98;
  }

  if ((*(v115 + 28) * *(v115 + 39)) > (*(BestFitResidSubset + 112) * *(BestFitResidSubset + 156)))
  {
    v115 = BestFitResidSubset;
  }

LABEL_99:
  a33 = *v115;
  a34 = *(v115 + 2);
  BlueFin::GlSetBase::operator=(&a35, v115 + 24);
  *(&a36 + 4) = *(v115 + 36);
  v132 = *(v115 + 52);
  v133 = *(v115 + 68);
  v134 = *(v115 + 84);
  v135 = v115[7];
  a40 = v115[6];
  *(&a38 + 4) = v133;
  *(&a39 + 4) = v134;
  *(&a37 + 4) = v132;
  v136 = v115[8];
  v137 = v115[9];
  a44 = *(v115 + 160);
  a42 = v136;
  a43 = v137;
  a41 = v135;
  v123 = vars8;
LABEL_100:
  if (!v116 || !v115)
  {
    if (v115)
    {
      goto LABEL_109;
    }

    *&STACK[0x11F0] = 0uLL;
    STACK[0x1200] = 0;
    STACK[0x1208] = &STACK[0x1214];
    LOBYTE(STACK[0x1210]) = 19;
    *&STACK[0x1214] = 0u;
    *&STACK[0x1224] = 0u;
    *&STACK[0x1234] = 0u;
    *&STACK[0x1244] = 0u;
    *&STACK[0x1254] = 0u;
    v176 = vdupq_n_s32(0x43C80000u);
    *&STACK[0x1260] = 0u;
    *&STACK[0x1270] = v176;
    *&STACK[0x1280] = v176;
    LOBYTE(STACK[0x1290]) = 0;
    a34 = 0;
    a33 = 0uLL;
    BlueFin::GlSetBase::operator=(&a35, &STACK[0x1208]);
    v177 = *&STACK[0x1244];
    *(&a38 + 4) = *&STACK[0x1234];
    *(&a39 + 4) = v177;
    a40 = *&STACK[0x1250];
    v178 = *&STACK[0x1224];
    *(&a36 + 4) = *&STACK[0x1214];
    *(&a37 + 4) = v178;
    v179 = *&STACK[0x1270];
    a41 = *&STACK[0x1260];
    a42 = v179;
    a43 = *&STACK[0x1280];
    a44 = STACK[0x1290];
    goto LABEL_130;
  }

  v138 = *(*(v123 + 282) + 136);
  if (v138)
  {
    if (*(v138 + 3008) == 1 && vaddvq_f64(vmulq_f64(*(v138 + 3040), *(v138 + 3040))) < 160000.0)
    {
      BlueFin::lla2ned(v115, &STACK[0x1188], 0, &STACK[0x11F0]);
      v139 = sqrt(*&STACK[0x11F8] * *&STACK[0x11F8] + *&STACK[0x11F0] * *&STACK[0x11F0]);
      v140 = (*(v115 + 32) * *(v115 + 32)) + v110 * v110;
      v123 = vars8;
      if (v140 * 9.0 < (v139 * v139))
      {
        *(vars8 + 3989) = 257;
      }
    }
  }

LABEL_109:
  if (!BlueFin::GlPeNavGnssKF::RunDeals(v123, &STACK[0x16A0]))
  {
    v159 = **(vars8 + 1);
    v161 = *(v115 + 32);
    v160 = *(v115 + 33);
    v162 = *(vars8 + 363);
    *&v163 = *(v115 + 31);
    v164 = fmin(*(v115 + 36) * 0.5, 50.0);
    *&v165 = *(vars8 + 724);
    v166 = *(vars8 + 732);
    v167 = *(vars8 + 734) * 0.0174532925;
    a47 = *v115;
    *&a48 = *(v115 + 2);
    BlueFin::GlPeNavGnssState::NormalizePos(&a46);
    LODWORD(STACK[0x2A0]) = v161;
    LODWORD(STACK[0x2A4]) = v160;
    STACK[0x2A8] = v163;
    *&STACK[0x2B0] = v164;
    *&STACK[0x2B8] = *v605;
    STACK[0x2C8] = *(vars8 + 361);
    v168 = vcvt_f32_f64(*(vars8 + 182));
    *&STACK[0x2D4] = v162;
    *&STACK[0x2D0] = sqrtf((v162 * v162) + vmul_f32(v168, v168).f32[0]);
    STACK[0x2D8] = v168;
    STACK[0x2E8] = v165;
    LODWORD(STACK[0x2F0]) = v166;
    STACK[0x2F8] = 0x3FF0000000000000;
    LODWORD(STACK[0x31C]) = 1;
    *&STACK[0x300] = v167;
    LODWORD(STACK[0x318]) = v159;
    LODWORD(STACK[0x308]) = 1078530011;
    STACK[0x30C] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*(vars8 + 2944)), vdupq_n_s64(0x3F91DF46A2529D34uLL)));
    LODWORD(STACK[0x348]) = v161;
    LODWORD(STACK[0x34C]) = v160;
    LOWORD(STACK[0x340]) = 0;
    BlueFin::GlSetBase::GlSetBase(&STACK[0x11F0], &STACK[0x11FC], 0x13u, v115 + 3);
    BlueFin::GlSetBase::operator=(&STACK[0x358], &STACK[0x11F0]);
    v169 = *&STACK[0x120C];
    v170 = *&STACK[0x122C];
    *&STACK[0x384] = *&STACK[0x121C];
    *&STACK[0x394] = v170;
    *&STACK[0x364] = *&STACK[0x11FC];
    *&STACK[0x374] = v169;
    *&STACK[0x3A0] = *&STACK[0x1238];
LABEL_130:
    v102 = vars8;
    goto LABEL_131;
  }

  if (BlueFin::GlPeNavGnssMotion::IsNotTurning((vars8 + 4776), v141) && (*(*(vars8 + 281) + 8) - 1) >= 2)
  {
    v142 = *(vars8 + 734) * 0.0174532925;
    v143 = *(vars8 + 333);
      ;
    }

      ;
    }

    if (j < 0.0)
    {
      j = -j;
    }

    v145 = j;
    if (v145 >= 0.785398163)
    {
      v146 = *(vars8 + 735) * 0.0174532925;
      if (v146 < v145)
      {
        v146 = v145;
      }

      v147 = v146 * 57.2957795;
      *(vars8 + 735) = v147;
    }
  }

  v148 = *(v115 + 2);
  v149 = **(vars8 + 1);
  v150 = a42.i64[0];
  v151 = *(vars8 + 363);
  v152 = vcvt_f32_f64(*(vars8 + 182));
  v153 = sqrtf((v151 * v151) + vmul_f32(v152, v152).f32[0]);
  v154 = *(v115 + 31);
  v155 = fmin(*a43.i32 * 0.5, 50.0);
  v156 = *(vars8 + 724);
  v157 = *(vars8 + 734) * 0.0174532925;
  v606 = v157;
  v601 = *(vars8 + 732);
  v599 = v152;
  if (*(vars8 + 2932) == 1)
  {
    v158 = *(vars8 + 735) * 0.0174532925;
  }

  else
  {
    v158 = 3.1416;
  }

  a47 = *v115;
  *&a48 = v148;
  BlueFin::GlPeNavGnssState::NormalizePos(&a46);
  STACK[0x2A0] = v150;
  *&STACK[0x2A8] = v154;
  *&STACK[0x2B0] = v155;
  *&STACK[0x2B8] = *v605;
  STACK[0x2C8] = *(vars8 + 361);
  *&STACK[0x2D4] = v151;
  *&STACK[0x2D0] = v153;
  STACK[0x2D8] = v599;
  *&STACK[0x2E8] = v156;
  LODWORD(STACK[0x2F0]) = v601;
  STACK[0x2F8] = 0x3FF0000000000000;
  LODWORD(STACK[0x318]) = v149;
  LODWORD(STACK[0x31C]) = 1;
  *&STACK[0x300] = v606;
  *&STACK[0x308] = v158;
  STACK[0x30C] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*(vars8 + 2944)), vdupq_n_s64(0x3F91DF46A2529D34uLL)));
  STACK[0x348] = v150;
  LOWORD(STACK[0x340]) = 257;
  BlueFin::GlSetBase::GlSetBase(&STACK[0x11F0], &STACK[0x11FC], 0x13u, v115 + 3);
  BlueFin::GlSetBase::operator=(&STACK[0x358], &STACK[0x11F0]);
  v102 = vars8;
  v171 = *&STACK[0x120C];
  v172 = *&STACK[0x122C];
  *&STACK[0x384] = *&STACK[0x121C];
  *&STACK[0x394] = v172;
  *&STACK[0x364] = *&STACK[0x11FC];
  *&STACK[0x374] = v171;
  *&STACK[0x3A0] = *&STACK[0x1238];
  v173 = *vars8;
  v174 = (vars8 + *(*vars8 - 24));
  if (*(v174 + 24) > 29979.2458)
  {
    v175 = *a43.i32;
    if (*a43.i32 < 149896.229)
    {
      v174[11] = *(v115 + 31);
      *(vars8 + *(v173 - 24) + 96) = v175 * 0.5;
    }
  }

LABEL_131:
  if ((*(*v102 + 264))(v102))
  {
    v180 = vars8;
    v181 = *vars8;
    goto LABEL_138;
  }

  v180 = vars8;
  if ((*v622 & 0x800000) != 0)
  {
    *(vars8 + 550) = 1;
    v181 = *vars8;
LABEL_137:
    *(vars8 + 551) = *(vars8 + *(v181 - 24) + 200);
  }

  else
  {
    v181 = *vars8;
    if ((*v622 & 0x20000000) != 0)
    {
      *(vars8 + 550) = 2;
      goto LABEL_137;
    }
  }

LABEL_138:
  BlueFin::GlPeNavGnssResidMon::UpdateRrate((v180 + 4864), v180, (v180 + *(v181 - 24) + 352));
  v182 = vars8;
  if (BlueFin::GlPeNavGnssKF::PolaroidIsTunnelExit(vars8))
  {
    v183 = *(*(vars8 + 281) + 8);
    if (v183 == 10)
    {
LABEL_140:
      v184 = 3.0;
      if (a44 == 1 && (v185 = *(*(vars8 + 282) + 136)) != 0 && *(v185 + 3008) == 1 && vaddvq_f64(vmulq_f64(*(v185 + 3040), *(v185 + 3040))) < 160000.0 && (*(v185 + 3072) - 2) < 4)
      {
        v184 = 5.0;
        *&v186 = 125.0;
      }

      else
      {
        *&v186 = 75.0;
      }

      v187 = *&v186;
      v188 = *vars8;
      v189 = vars8 + *(*vars8 - 24);
      v190 = *(v189 + 33);
      if (!*v190)
      {
        v191 = v189[272];
        if (v191 < 2)
        {
LABEL_152:
          *(vars8 + 547) = *(v189 + 50);
        }

        else
        {
          v192 = v191 - 1;
          v193 = v190 + 1;
          while (!*v193++)
          {
            if (!--v192)
            {
              goto LABEL_152;
            }
          }
        }
      }

      if (*a42.i32 < v187)
      {
        v195 = *(vars8 + 2);
        LODWORD(STACK[0x19C0]) = 0;
        STACK[0x19C8] = &STACK[0x19D4];
        LOBYTE(STACK[0x19D0]) = 8;
        *&STACK[0x19D4] = 0u;
        *&STACK[0x19E4] = 0u;
        *&STACK[0x19F8] = xmmword_298A41DA0;
        STACK[0x1A08] = vdup_n_s32(0x42C60000u);
        LODWORD(STACK[0x1A10]) = 1120272384;
        BlueFin::stDops::stDops(&STACK[0x11F0], &STACK[0x19C0]);
        STACK[0x1248] = v195;
        v196 = **(vars8 + 1);
        BlueFin::GlSignalIdSet::GetSvIdSet(&STACK[0x16A0], &a35);
        *&a9 = *(vars8 + *(*vars8 - 24) + 88);
        LODWORD(STACK[0x1188]) = **(vars8 + 280);
        LODWORD(STACK[0x560]) = 0;
        v597 = 0;
        BlueFin::GlPeDops::GetDops(&STACK[0x11F0], v196);
        v197 = *&STACK[0x19FC] < v184;
        goto LABEL_155;
      }

      BlueFin::GlPeMsmtMgr::SetPrCode(*(vars8 + 1), vars8 + *(v188 - 24) + 264, 25);
      BlueFin::GlPeMsmtMgr::SetRrCode(*(vars8 + 1), vars8 + *(*vars8 - 24) + 352, 25);
      v182 = vars8;
      v209 = *vars8;
      bzero(*(v182 + *(*vars8 - 24) + 264), ((4 * *(v182 + *(*vars8 - 24) + 272) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      bzero(*(v182 + *(v209 - 24) + 352), ((4 * *(v182 + *(v209 - 24) + 360) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
LABEL_172:
      v197 = 0;
LABEL_173:
      v198 = 0;
      goto LABEL_174;
    }

    if ((*(v622 + 1) & 0x40) != 0)
    {
      if ((v183 - 1) < 2)
      {
        if (!BlueFin::GlPeNavGnssKF::TrustPdrPropagation(vars8))
        {
          goto LABEL_140;
        }

        goto LABEL_172;
      }

      if ((v183 - 3) < 4)
      {
        goto LABEL_140;
      }
    }
  }

  v199 = *(vars8 + 284);
  if (*(v199 + 2) < 1)
  {
    goto LABEL_172;
  }

  v200 = *(*(vars8 + 281) + 8);
  if ((v200 - 1) >= 2)
  {
    v197 = 0;
    if ((v200 - 3) > 3)
    {
      v198 = 0;
    }

    else
    {
      v208 = *(v199 + 45);
      v198 = 0;
      if (v208)
      {
        goto LABEL_174;
      }

      BlueFin::lla2ned((vars8 + *(*vars8 - 24) + 8), a33.i64, 0, &STACK[0x11F0]);
      v197 = 0;
      if (*a42.i32 >= 100.0)
      {
LABEL_155:
        v198 = v197;
      }

      else
      {
        v198 = 0;
        v182 = vars8;
        if (sqrt(*&STACK[0x11F8] * *&STACK[0x11F8] + *&STACK[0x11F0] * *&STACK[0x11F0]) <= *a42.i32)
        {
          goto LABEL_174;
        }

        v198 = 0;
        v197 = (*(*vars8 + 72))(vars8) > 0x3A98;
      }

      v182 = vars8;
    }
  }

  else
  {
    if (BlueFin::GlPeNavGnssKF::TrustPdrPropagation(vars8))
    {
      goto LABEL_172;
    }

    v201 = *(vars8 + *(*vars8 - 24) + 200);
    v202 = (v201 - *(vars8 + 547)) / 1000.0 + 30.0;
    if (v202 <= 150.0)
    {
      v203 = (v201 - *(vars8 + 547)) / 1000.0 + 30.0;
    }

    else
    {
      v203 = 150.0;
    }

    v204 = *(v199 + 72);
    v205 = (*(*vars8 + 80))(vars8);
    BlueFin::lla2ned((*(vars8 + 284) + 16), a33.i64, 0, &STACK[0x11F0]);
    if (*a42.i32 * 0.5 <= v203)
    {
      v392 = fmax(v204, 1.5) * (v201 - v205) / 1000.0;
      v393 = sqrt(*&STACK[0x11F8] * *&STACK[0x11F8] + *&STACK[0x11F0] * *&STACK[0x11F0]);
      v182 = vars8;
      v394 = *(vars8 + 284);
      v395 = *(v394 + 2) >= 1 && *(v394 + 45) == 0;
      v197 = v392 * 1.5 >= v393 && v395;
      v206 = *vars8;
    }

    else
    {
      BlueFin::GlPeMsmtMgr::SetPrCode(*(vars8 + 1), vars8 + *(*vars8 - 24) + 264, 27);
      BlueFin::GlPeMsmtMgr::SetRrCode(*(vars8 + 1), vars8 + *(*vars8 - 24) + 352, 27);
      v182 = vars8;
      v206 = *vars8;
      v207 = *vars8;
      bzero(*(v182 + *(v206 - 24) + 264), ((4 * *(v182 + *(v206 - 24) + 272) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      bzero(*(v182 + *(v207 - 24) + 352), ((4 * *(v182 + *(v207 - 24) + 360) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      v197 = 0;
      *(vars8 + 1560) = 0;
    }

    v576 = v182 + *(v206 - 24);
    v577 = *(v576 + 33);
    if (*v577)
    {
      goto LABEL_173;
    }

    v578 = v576[272];
    if (v578 >= 2)
    {
      v579 = v578 - 1;
      v580 = v577 + 1;
      do
      {
        if (*v580++)
        {
          goto LABEL_173;
        }
      }

      while (--v579);
    }

    v198 = 0;
    *(v182 + 547) = *(v576 + 50);
  }

LABEL_174:
  v210 = *(v182 + 26);
  *&STACK[0x1200] = xmmword_298A43FD0;
  STACK[0x11F0] = &STACK[0x1210];
  STACK[0x11F8] = &STACK[0x1270];
  STACK[0x1270] = 0;
  STACK[0x1278] = &STACK[0x1208];
  v211 = *(v182 + 5);
  if (v210)
  {
    v212 = 1;
  }

  else
  {
    v212 = 3;
  }

  v213 = *(*(v211 + 8 * v212) + 8 * v212);
  if (v210)
  {
    v214 = 3;
  }

  else
  {
    v214 = 1;
  }

  v215 = *(*(v211 + 8 * v214) + 8 * v214);
  BlueFin::lla2ned((v182 + *(*v182 - 24) + 8), a33.i64, 0, &STACK[0x19C0]);
  v217 = v213 + v215;
  v218 = sqrt(*&STACK[0x19C8] * *&STACK[0x19C8] + *&STACK[0x19C0] * *&STACK[0x19C0]) / sqrtf((*a42.i32 * *a42.i32) + v217);
  v219 = v218 > 5.0 && v197;
  v220 = vars8;
  if (!v219)
  {
    if (!v197 || (*(*(vars8 + 281) + 8) - 1) > 1 || (BlueFin::lla2ned((vars8 + *(*vars8 - 24) + 8), a33.i64, 0, &STACK[0x19C0]), v221 = *&STACK[0x19C0], v222 = *&STACK[0x19C8], v223 = (*(*vars8 + 72))(vars8), v224 = sqrt(v222 * v222 + v221 * v221), v225 = v223 * 0.001, v220 = vars8, v225 >= v224))
    {
      if (v198)
      {
        BlueFin::BigMatrix::Null(&STACK[0x11F0], 1, 12);
        *(*(STACK[0x11F8] + 8) + 56) = 0x3FF0000000000000;
        v226 = *(&a41 + 3) - *(vars8 + *(*vars8 - 24) + 88);
        v227 = fmaxf(*a43.i32, 50.0);
        BlueFin::GlPeNavGnssKF::MeasUpdate(vars8, &STACK[0x11F0], 0, 1, 1, v226, (v227 * v227));
        v220 = vars8;
      }

      if (v197)
      {
        *&STACK[0x19C0] = a33;
        STACK[0x19D0] = a34;
        BlueFin::BigMatrix::Null(&STACK[0x11F0], 1, 12);
        *(*(STACK[0x11F8] + 8) + 8 * v212) = 0x3FF0000000000000;
        BlueFin::lla2ned(&STACK[0x19C0], (vars8 + *(*vars8 - 24) + 8), 0, &a9);
        v607 = *&a9;
        *&STACK[0x16A0] = a9;
        STACK[0x16B0] = a10;
        BlueFin::ned2hlu(&STACK[0x16A0], (vars8 + 1336), &a9);
        v228 = fmaxf(*a42.i32 * 0.5, 50.0);
        v229 = v228 * v228;
        v230 = *(&a9 + 1);
        if (*(vars8 + 26))
        {
          v230 = v607;
        }

        v231 = v229;
        BlueFin::GlPeNavGnssKF::MeasUpdate(vars8, &STACK[0x11F0], 0, 1, 1, v230, v229);
        BlueFin::BigMatrix::Null(&STACK[0x11F0], 1, 12);
        *(*(STACK[0x11F8] + 8) + 8 * v214) = 0x3FF0000000000000;
        BlueFin::lla2ned(&STACK[0x19C0], (vars8 + *(*vars8 - 24) + 8), 0, &STACK[0x1188]);
        STACK[0x16A0] = STACK[0x1188];
        v608 = *&STACK[0x1190];
        *&STACK[0x16A8] = *&STACK[0x1190];
        BlueFin::ned2hlu(&STACK[0x16A0], (vars8 + 1336), &STACK[0x1188]);
        v232 = *&STACK[0x1188];
        if (*(vars8 + 26))
        {
          v232 = *&v608;
        }

        BlueFin::GlPeNavGnssKF::MeasUpdate(vars8, &STACK[0x11F0], 0, 1, 1, v232, v231);
        v220 = vars8;
      }
    }
  }

  if (!*(v220 + 1238))
  {
    v233 = *(*v220 - 24);
    v234 = **(v220 + 280);
    v235 = (*(*v220 + 192))(v220);
    BlueFin::GlPeNavGnssResidMon::UpdateRange((vars8 + 4864), vars8, (vars8 + v233 + 264), (vars8 + v233 + 264), v234, v235, 0);
    v220 = vars8;
  }

  BlueFin::GlPeNavGnssKF::AddProcessNoise(v220, &a46, *(v220 + *(*v220 - 24) + 200), ((*v622 >> 8) & 1), v115 != 0, v612, (*v622 & 0x30000) != 0, v216, v597);
  if (v612 && *(v604 + 240) == 1)
  {
    *&STACK[0x1200] = xmmword_298A43FD0;
    STACK[0x11F0] = &STACK[0x1210];
    STACK[0x11F8] = &STACK[0x1270];
    STACK[0x1270] = 0;
    STACK[0x1278] = &STACK[0x1208];
    BlueFin::BigMatrix::Null(&STACK[0x11F0], 1, 12);
    v236 = *(vars8 + 26);
    *(*(STACK[0x11F8] + 8) + 16) = 0x3FF0000000000000;
    if (v236 == 1)
    {
      BlueFin::GlPeNavGnssKF::MeasUpdate(vars8, &STACK[0x11F0], 1, 0, 1, *(v604 + 104) - *(vars8 + *(*vars8 - 24) + 104), (*(v604 + 132) * *(v604 + 132)));
      BlueFin::BigMatrix::Null(&STACK[0x11F0], 1, 12);
      *(*(STACK[0x11F8] + 8) + 32) = 0x3FF0000000000000;
      BlueFin::GlPeNavGnssKF::MeasUpdate(vars8, &STACK[0x11F0], 1, 0, 1, *(v604 + 112) - *(vars8 + *(*vars8 - 24) + 112), (*(v604 + 136) * *(v604 + 136)));
    }

    else
    {
      v237 = *(vars8 + 331);
      v238 = 1.0;
      if (v237 < 0.0)
      {
        v238 = -1.0;
      }

      BlueFin::GlPeNavGnssKF::MeasUpdate(vars8, &STACK[0x11F0], 1, 0, 1, -(v237 - v238 * sqrt(*(v604 + 112) * *(v604 + 112) + *(v604 + 104) * *(v604 + 104))), (*(v604 + 128) * *(v604 + 128)));
    }

    BlueFin::BigMatrix::Null(&STACK[0x11F0], 1, 12);
    v239 = *(v604 + 120) - *(vars8 + *(*vars8 - 24) + 120);
    if (!*(vars8 + 26))
    {
      v239 = -v239;
    }

    v240 = (*(v604 + 140) * *(v604 + 140));
    *(*(STACK[0x11F8] + 8) + 48) = 0x3FF0000000000000;
    BlueFin::GlPeNavGnssKF::MeasUpdate(vars8, &STACK[0x11F0], 1, 0, 1, v239, v240);
    BlueFin::BigMatrix::Null(&STACK[0x11F0], 1, 12);
    *(*(STACK[0x11F8] + 8) + 64) = 0x3FF0000000000000;
    BlueFin::GlPeNavGnssKF::MeasUpdate(vars8, &STACK[0x11F0], 1, 0, 1, *(v604 + 152) - *(vars8 + *(*vars8 - 24) + 152), (*(v604 + 160) * *(v604 + 160)));
    if ((*(vars8 + 26) & 1) == 0 && *(v604 + 241) == 1)
    {
      v241 = *(v604 + 184);
      BlueFin::BigMatrix::Null(&STACK[0x11F0], 1, 12);
      v242 = v241 * v241;
      *(*(STACK[0x11F8] + 8) + 32) = 0x3FF0000000000000;
      v243 = *(v604 + 176);
        ;
      }

        ;
      }

      BlueFin::GlPeNavGnssKF::MeasUpdate(vars8, &STACK[0x11F0], 1, 0, 1, k, v242);
    }
  }

  v245 = (vars8 + *(*vars8 - 24));
  BlueFin::GlSetBase::operator=(vars8 + 7992, v245 + 264);
  *(vars8 + 8004) = *(v245 + 276);
  v246 = *(v245 + 292);
  v247 = *(v245 + 308);
  v248 = *(v245 + 324);
  *(vars8 + 504) = v245[21];
  *(vars8 + 8036) = v247;
  *(vars8 + 8052) = v248;
  *(vars8 + 8020) = v246;
  BlueFin::GlSetBase::GlSetBase(&a21, &a23, 0x13u, (vars8 + *(*vars8 - 24) + 352));
  v249 = vars8 + *(*vars8 - 24);
  v250 = *(vars8 + 282);
  v251 = *(v250 + 92);
  v252 = *(v249 + 50) - *(v250 + 88);
  *&STACK[0x16A0] = *(v249 + 8);
  STACK[0x16B0] = *(v249 + 3);
  v253 = v252 >> 5;
  if (v251 > 4 || v253 > 0x752)
  {
    if (v253 >= 0x753)
    {
LABEL_228:
      *(v250 + 92) = 12;
    }
  }

  else
  {
    v254 = *(v249 + 20);
    v255 = *(v250 + 104);
    v256 = *(v250 + 112);
    *&STACK[0x19C0] = *(v250 + 64);
    STACK[0x19D0] = *(v250 + 80);
    BlueFin::lla2ned(&STACK[0x16A0], &STACK[0x19C0], 0, &STACK[0x11F0]);
    v257 = sqrt(*&STACK[0x11F8] * *&STACK[0x11F8] + *&STACK[0x11F0] * *&STACK[0x11F0]);
    v258 = v254;
    if (v255 > v254)
    {
      v258 = v255;
    }

    if (v258 < 200.0)
    {
      v258 = 200.0;
    }

    if (v257 >= v258 || v254 < 50.0 && v257 > 50.0 && v257 / sqrt(fmax((v255 * v255 + v256 * v256) * 0.5 + (v254 * v254), 2.22044605e-16)) >= 1.5)
    {
      v250 = *(vars8 + 282);
      goto LABEL_228;
    }
  }

  BlueFin::GlSetBase::GlSetBase(&STACK[0x560], &STACK[0x56C], 0x13u, &a21);
  v259 = vars8;
  if ((*(v622 + 1) & 0x40) != 0)
  {
    if (*(vars8 + 26) == 1)
    {
      v260 = __sincos_stret(*(vars8 + *(*vars8 - 24) + 176));
      *(vars8 + 167) = *&v260.__cosval;
      *(vars8 + 168) = *&v260.__sinval;
      *(vars8 + 169) = 0;
      *(vars8 + 171) = *&v260.__sinval;
      *(vars8 + 172) = -v260.__cosval;
      *(vars8 + 173) = 0;
      *(vars8 + 1400) = 0u;
      *(vars8 + 177) = 0xBFF0000000000000;
    }

    IsTunnelExitOrLeftRecently = BlueFin::GlPeNavGnssKF::PolaroidIsTunnelExitOrLeftRecently(vars8, 0x4E20u);
    v262 = *(vars8 + 1011);
    if (*(v262 + 3216) == 1)
    {
      v263 = *(v262 + 3200) * 0.017453;
      v264 = 1;
    }

    else
    {
      v265 = *(vars8 + 333);
      v266 = *(vars8 + 2720);
      if ((*(*vars8 + 56))(vars8) <= 0x1E)
      {
        v267 = 5;
      }

      else
      {
        v267 = 7;
      }

      v268 = vars8 + *(*vars8 - 24);
      v269 = v268[240];
      v270 = *(v268 + 3);
      STACK[0x11F0] = 0;
      if (v269)
      {
        v267 |= 0x10u;
      }

      *&STACK[0x11F8] = *(v268 + 8);
      STACK[0x1208] = v270;
      LOBYTE(STACK[0x1214]) = 0;
      LODWORD(STACK[0x1210]) = v267;
      LODWORD(STACK[0x1218]) = 0;
      BlueFin::GlPeGnssNavUpa::UrbanPosAssist(vars8 + 2280, &STACK[0x11F0], &STACK[0x19C0]);
      if (LOBYTE(STACK[0x19E0]))
      {
        v263 = *&STACK[0x19E4];
      }

      else
      {
        v263 = v265;
      }

      v264 = LOBYTE(STACK[0x19E0]) | v266;
    }

    v271 = *(*vars8 - 24);
    v272 = (*(*vars8 + 192))(vars8);
    if (IsTunnelExitOrLeftRecently)
    {
      v273 = 0;
      v274 = vars8;
    }

    else
    {
      v274 = vars8;
      v273 = BlueFin::GlPeNavGnssKF::TrustPdrPropagation(vars8);
    }

    IsTunnelExit = BlueFin::GlPeNavGnssKF::PolaroidIsTunnelExit(v274);
    v276 = BlueFin::GlPeNavGnssKF::PolaroidLeftTunnelRecently(vars8, 0x4E20u);
    v277 = (*(*vars8 + 56))(vars8);
    v278 = *(vars8 + 1560);
    v279 = vars8 + *(*vars8 - 24);
    v280 = *(v279 + 44);
    v281 = *(vars8 + 331);
    v282 = *(vars8 + 284);
    if (*(v282 + 2) < 1 || *(v282 + 45))
    {
      if (*(*(vars8 + 281) + 1989))
      {
        LOBYTE(v283) = 1;
      }

      else
      {
        v283 = *(vars8 + 450);
      }
    }

    else
    {
      LOBYTE(v283) = 5;
    }

    STACK[0x508] = vars8 + v271;
    STACK[0x510] = vars8 + 1336;
    STACK[0x518] = vars8 + 32;
    LOBYTE(STACK[0x520]) = v272;
    LOBYTE(STACK[0x521]) = v273;
    LOBYTE(STACK[0x522]) = IsTunnelExit;
    LOBYTE(STACK[0x523]) = IsTunnelExitOrLeftRecently;
    LOBYTE(STACK[0x524]) = v276;
    LOBYTE(STACK[0x525]) = 0;
    LOBYTE(STACK[0x526]) = v264 & 1;
    LODWORD(STACK[0x528]) = v277;
    LOBYTE(STACK[0x52C]) = v278;
    LODWORD(STACK[0x530]) = v280;
    LODWORD(STACK[0x534]) = v281;
    *&STACK[0x538] = v263;
    LOBYTE(STACK[0x53C]) = v283;
    BlueFin::GlSetBase::GlSetBase(&STACK[0x19C0], &STACK[0x19CC], 0x13u, v279 + 33);
    BlueFin::GlSetBase::GlSetBase(&STACK[0x16A0], &STACK[0x16AC], 0x13u, (vars8 + *(*vars8 - 24) + 352));
    *(vars8 + 1560) = BlueFin::GlPePolaroid::RunPolaroid(vars8 + 8096, &STACK[0x508]);
    BlueFin::GlSetBase::GlSetBase(&STACK[0x1188], &STACK[0x1194], 0x13u, (vars8 + *(*vars8 - 24) + 264));
    STACK[0x11F0] = &STACK[0x11FC];
    LOBYTE(STACK[0x11F8]) = 19;
    *&STACK[0x11FC] = 0u;
    *&STACK[0x120C] = 0u;
    *&STACK[0x121C] = 0u;
    *&STACK[0x122C] = 0u;
    *&STACK[0x1238] = 0u;
    BlueFin::GlSetBase::OperatorBinaryInversion(&STACK[0x1188], &STACK[0x11F0]);
    BlueFin::GlSetBase::operator=(&STACK[0x1188], &STACK[0x11F0]);
    v284 = *&STACK[0x11FC];
    *&STACK[0x11A4] = *&STACK[0x120C];
    v285 = *&STACK[0x122C];
    *&STACK[0x11B4] = *&STACK[0x121C];
    *&STACK[0x11C4] = v285;
    *&STACK[0x11D0] = *&STACK[0x1238];
    *&STACK[0x1194] = v284;
    BlueFin::GlSignalIdSet::setSignalIdLimits(&STACK[0x1188]);
    BlueFin::GlSetBase::GlSetBase(&a9, &a9 + 3, 0x13u, &STACK[0x19C0]);
    STACK[0x11F0] = &STACK[0x11FC];
    LOBYTE(STACK[0x11F8]) = 19;
    *&STACK[0x11FC] = 0u;
    *&STACK[0x120C] = 0u;
    *&STACK[0x121C] = 0u;
    *&STACK[0x122C] = 0u;
    *&STACK[0x1238] = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&a9, &STACK[0x11F0], &STACK[0x1188]);
    BlueFin::GlSetBase::operator=(&a9, &STACK[0x11F0]);
    v286 = *&STACK[0x11FC];
    *(&a11 + 4) = *&STACK[0x120C];
    v287 = *&STACK[0x122C];
    *(&a12 + 4) = *&STACK[0x121C];
    *(&a13 + 4) = v287;
    a14 = *&STACK[0x1238];
    *(&a9 + 12) = v286;
    BlueFin::GlSetBase::operator=(&STACK[0x19C0], &a9);
    *&STACK[0x19DC] = *(&a11 + 4);
    *&STACK[0x19EC] = *(&a12 + 4);
    *&STACK[0x19FC] = *(&a13 + 4);
    *&STACK[0x1A08] = a14;
    *&STACK[0x19CC] = *(&a9 + 12);
    BlueFin::GlSetBase::GlSetBase(&STACK[0x1188], &STACK[0x1194], 0x13u, (vars8 + *(*vars8 - 24) + 352));
    STACK[0x11F0] = &STACK[0x11FC];
    LOBYTE(STACK[0x11F8]) = 19;
    *&STACK[0x11FC] = 0u;
    *&STACK[0x120C] = 0u;
    *&STACK[0x121C] = 0u;
    *&STACK[0x122C] = 0u;
    *&STACK[0x1238] = 0u;
    BlueFin::GlSetBase::OperatorBinaryInversion(&STACK[0x1188], &STACK[0x11F0]);
    BlueFin::GlSetBase::operator=(&STACK[0x1188], &STACK[0x11F0]);
    v288 = *&STACK[0x11FC];
    *&STACK[0x11A4] = *&STACK[0x120C];
    v289 = *&STACK[0x122C];
    *&STACK[0x11B4] = *&STACK[0x121C];
    *&STACK[0x11C4] = v289;
    *&STACK[0x11D0] = *&STACK[0x1238];
    *&STACK[0x1194] = v288;
    BlueFin::GlSignalIdSet::setSignalIdLimits(&STACK[0x1188]);
    BlueFin::GlSetBase::GlSetBase(&a9, &a9 + 3, 0x13u, &STACK[0x16A0]);
    STACK[0x11F0] = &STACK[0x11FC];
    LOBYTE(STACK[0x11F8]) = 19;
    *&STACK[0x11FC] = 0u;
    *&STACK[0x120C] = 0u;
    *&STACK[0x121C] = 0u;
    *&STACK[0x122C] = 0u;
    *&STACK[0x1238] = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&a9, &STACK[0x11F0], &STACK[0x1188]);
    BlueFin::GlSetBase::operator=(&a9, &STACK[0x11F0]);
    v290 = *&STACK[0x11FC];
    *(&a11 + 4) = *&STACK[0x120C];
    v291 = *&STACK[0x122C];
    *(&a12 + 4) = *&STACK[0x121C];
    *(&a13 + 4) = v291;
    a14 = *&STACK[0x1238];
    *(&a9 + 12) = v290;
    BlueFin::GlSetBase::operator=(&STACK[0x16A0], &a9);
    *&STACK[0x16BC] = *(&a11 + 4);
    *&STACK[0x16CC] = *(&a12 + 4);
    *&STACK[0x16DC] = *(&a13 + 4);
    *&STACK[0x16E8] = a14;
    *&STACK[0x16AC] = *(&a9 + 12);
    BlueFin::GlPeMsmtMgr::SetPrCode(*(vars8 + 1), &STACK[0x19C0], 40);
    BlueFin::GlPeMsmtMgr::SetRrCode(*(vars8 + 1), &STACK[0x16A0], 40);
    v259 = vars8;
    if (!BlueFin::GlSetBase::operator==(&STACK[0x560], vars8 + *(*vars8 - 24) + 352))
    {
      v292 = *(vars8 + 735);
      STACK[0x11F0] = &STACK[0x11FC];
      LOBYTE(STACK[0x11F8]) = 19;
      *&STACK[0x11FC] = 0u;
      *&STACK[0x120C] = 0u;
      *&STACK[0x121C] = 0u;
      *&STACK[0x122C] = 0u;
      *&STACK[0x1238] = 0u;
      BlueFin::GlPeNavGnssKF::GetMeasSigIdSetForLsq(vars8, v616, &STACK[0x11F0], 0, 16);
      BlueFin::GlPeNavGnssKF::RunDeals(vars8, &STACK[0x11F0]);
      v259 = vars8;
      if ((*(vars8 + 26) & 1) == 0)
      {
        v293 = v292 * 0.0174532925;
        v294 = v293 * 57.2957795;
        *(vars8 + 735) = v294;
      }
    }
  }

  BlueFin::GlPeNavGnssKF::Update(v259, v616, v622);
  v295 = vars8;
  v296 = *vars8;
  v297 = vars8 + *(*vars8 - 24);
  *(v297 + 2) = *(v297 + 8);
  *(v297 + 6) = *(v297 + 3);
  a9 = 0uLL;
  a10 = 0;
  *&a11 = &a11 + 12;
  BYTE8(a11) = 19;
  *(&a11 + 12) = 0u;
  *(&a12 + 12) = 0u;
  *(&a13 + 12) = 0u;
  *(&a14 + 12) = 0u;
  *(&a16 + 4) = 0u;
  a17 = 0u;
  a18 = vdupq_n_s32(0x43C80000u);
  a19 = a18;
  a20 = 0;
  if (!*(vars8 + 1560))
  {
    goto LABEL_375;
  }

  v298 = *(vars8 + 281);
  if (*(v298 + 1764))
  {
    v299 = 60;
  }

  else
  {
    v299 = 180;
  }

  v602 = *(v298 + 1328) > 4.0 && *(v298 + 1320) < 20.0 && *(v298 + 76) >= v299 && ((*(v298 + 1764) & 1) != 0 || *(v298 + 64) == 1);
  STACK[0x4A0] = &STACK[0x4AC];
  LOBYTE(STACK[0x4A8]) = 19;
  *&STACK[0x4AC] = 0u;
  *&STACK[0x4BC] = 0u;
  *&STACK[0x4CC] = 0u;
  *&STACK[0x4DC] = 0u;
  *&STACK[0x4E8] = 0u;
  v300 = vars8 + *(v296 - 24);
  *&STACK[0x11F0] = *(v300 + 8);
  STACK[0x1200] = *(v300 + 3);
  v301 = **(vars8 + 280);
  v302 = (*(v296 + 192))(vars8);
  BlueFin::GlPeNavUtil::ComputeRangeResidVec(vars8, (v300 + 264), &STACK[0x11F0], v301, 0, 0, 0, 1, v302, 1);
  for (m = 0; m != 1200; m += 12)
  {
    v304 = &STACK[0x11F0] + m;
    *v304 = 0;
    *(v304 + 1) = -1;
    *(v304 + 4) = 575;
  }

  v305 = (vars8 + *(*vars8 - 24));
  v306 = *(v305 + 272);
  LOBYTE(STACK[0x1188]) = v306;
  memcpy(&STACK[0x1190], v305[33], 4 * v306);
  LOWORD(STACK[0x118A]) = 0;
  LOBYTE(STACK[0x1189]) = 0;
  LODWORD(STACK[0x118C]) = STACK[0x1190];
  BlueFin::GlSetIterator::operator++(&STACK[0x1188]);
  v308 = 0;
  if (LOBYTE(STACK[0x1189]) != LOBYTE(STACK[0x1188]))
  {
    v308 = 0;
    v309 = STACK[0x19C0] + 8;
    do
    {
      v310 = LOWORD(STACK[0x118A]);
      if (v310 >= 0x23F)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v311 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v310;
      v312 = v311[1];
      v313 = &STACK[0x11F0] + 12 * v308;
      *v313 = *v311;
      *(v313 + 1) = v312;
      *(v313 + 4) = v310;
      *(&STACK[0x16A0] + v308) = fabs(*(v309 + 8 * v308));
      BlueFin::GlSetIterator::operator++(&STACK[0x1188]);
      ++v308;
    }

    while (LOBYTE(STACK[0x1189]) != LOBYTE(STACK[0x1188]));
  }

  BlueFin::GlSortDoubles(&STACK[0x16A0], v308, &STACK[0x1188], v307);
  STACK[0x5F0] = &STACK[0x5FC];
  LOBYTE(STACK[0x5F8]) = 8;
  *&STACK[0x5FC] = 0u;
  *&STACK[0x60C] = 0u;
  BlueFin::GlSignalIdSet::GetSvIdSet(&STACK[0x5C0], &STACK[0x4A0]);
  v314 = BlueFin::GlSetBase::Cnt((vars8 + *(*vars8 - 24) + 264));
  v315 = v314;
  v316 = 0;
  v317 = (STACK[0x4A0] + 4 * LOBYTE(STACK[0x4A8]) - 4);
  do
  {
    if (*v317)
    {
      v318 = *v317 - (((*v317 >> 2) & 0x9249249) + ((*v317 >> 1) & 0x5B6DB6DB));
      v316 = ((v318 + (v318 >> 3)) & 0xC71C71C7) + v316 - 63 * (((v318 + (v318 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v317;
  }

  while (v317 >= STACK[0x4A0]);
  if (v314)
  {
    v319 = v316;
    if (v316 <= 0xFu)
    {
      v320 = 0;
      v321 = vdup_n_s32(0x42C60000u);
      do
      {
        v322 = *(&STACK[0x1188] + v320);
        v323 = &STACK[0x11F0] + 12 * v322;
        v324 = *v323;
        v325 = v324 >> 5;
        v326 = v324 & 0x1F;
        if (((*(STACK[0x5F0] + 4 * (v324 >> 5)) >> (v324 & 0x1F)) & 1) == 0)
        {
          v327 = *(vars8 + 2);
          LODWORD(STACK[0x508]) = 0;
          STACK[0x510] = &STACK[0x51C];
          LOBYTE(STACK[0x518]) = 8;
          *&STACK[0x51C] = 0u;
          *&STACK[0x52C] = 0u;
          *&STACK[0x540] = xmmword_298A41DA0;
          STACK[0x550] = v321;
          LODWORD(STACK[0x558]) = 1120272384;
          BlueFin::stDops::stDops(&STACK[0x560], &STACK[0x508]);
          STACK[0x5B8] = v327;
          v328 = **(vars8 + 1);
          STACK[0x500] = *(vars8 + *(*vars8 - 24) + 88);
          LODWORD(STACK[0x4FC]) = **(vars8 + 280);
          LODWORD(STACK[0x4F8]) = 0;
          BlueFin::GlPeDops::GetDops(&STACK[0x560], v328);
          v329 = *&STACK[0x544] <= 10.0 ? 1.0 : 1.5;
          if (fabs(*(&STACK[0x16A0] + v322)) < v329 * *(vars8 + 449))
          {
            v330 = 0;
            v331 = *(v323 + 4);
            v332 = v331 >> 5;
            v333 = 1 << v331;
            v334 = STACK[0x4A0];
            *(STACK[0x4A0] + 4 * v332) |= v333;
            *(STACK[0x5F0] + 4 * v325) |= 1 << v326;
            *(STACK[0x5C0] + 4 * v325) |= 1 << v326;
            v335 = (v334 + 4 * LOBYTE(STACK[0x4A8]) - 4);
            do
            {
              if (*v335)
              {
                v336 = *v335 - (((*v335 >> 2) & 0x9249249) + ((*v335 >> 1) & 0x5B6DB6DB));
                v330 = ((v336 + (v336 >> 3)) & 0xC71C71C7) + v330 - 63 * (((v336 + (v336 >> 3)) & 0xC71C71C7) / 0x3F);
              }

              --v335;
            }

            while (v335 >= v334);
            v319 = v330;
          }
        }

        ++v320;
      }

      while (v315 > v320 && v319 < 0x10);
    }
  }

  v337 = *(vars8 + 2);
  LODWORD(STACK[0x508]) = 0;
  STACK[0x510] = &STACK[0x51C];
  LOBYTE(STACK[0x518]) = 8;
  *&STACK[0x51C] = 0u;
  *&STACK[0x52C] = 0u;
  *&STACK[0x540] = xmmword_298A41DA0;
  STACK[0x550] = vdup_n_s32(0x42C60000u);
  LODWORD(STACK[0x558]) = 1120272384;
  BlueFin::stDops::stDops(&STACK[0x560], &STACK[0x508]);
  STACK[0x5B8] = v337;
  v338 = **(vars8 + 1);
  STACK[0x500] = *(vars8 + *(*vars8 - 24) + 88);
  LODWORD(STACK[0x4FC]) = **(vars8 + 280);
  LODWORD(STACK[0x4F8]) = 0;
  BlueFin::GlPeDops::GetDops(&STACK[0x560], v338);
  v339 = BlueFin::GlPeSubsets::Find(&STACK[0x620], &STACK[0x4A0]);
  v115 = v339;
  if (v339)
  {
    v340 = *(v339 + 112);
    goto LABEL_290;
  }

  *&STACK[0x120A] = 0u;
  *&STACK[0x1200] = 0u;
  *&STACK[0x11F0] = 0u;
  LOBYTE(STACK[0x1228]) = 19;
  *&STACK[0x122C] = 0u;
  *&STACK[0x123C] = 0u;
  *&STACK[0x124C] = 0u;
  *&STACK[0x125C] = 0u;
  *&STACK[0x126C] = 0u;
  STACK[0x1220] = &STACK[0x122C];
  STACK[0x1280] = &STACK[0x128C];
  LOBYTE(STACK[0x1288]) = 8;
  *&STACK[0x128C] = 0u;
  *&STACK[0x129C] = 0u;
  *&STACK[0x12B0] = xmmword_298A41DA0;
  STACK[0x12C0] = vdup_n_s32(0x42C60000u);
  LODWORD(STACK[0x12C8]) = 1120272384;
  LODWORD(STACK[0x12D0]) = 0;
  STACK[0x12E0] = 0;
  STACK[0x12D8] = 0;
  LODWORD(STACK[0x12F0]) = 0;
  STACK[0x12E8] = 0;
  STACK[0x12F8] = &STACK[0x1304];
  LOBYTE(STACK[0x1300]) = 8;
  *&STACK[0x1304] = 0u;
  *&STACK[0x1314] = 0u;
  LOBYTE(STACK[0x1328]) = 0;
  v343 = vars8 + *(*vars8 - 24);
  v344 = (v343 + 8);
  v345 = *(v343 + 11);
  LODWORD(v343) = **(vars8 + 280);
  STACK[0x16A0] = &STACK[0x16AC];
  LOBYTE(STACK[0x16A8]) = 8;
  *&STACK[0x16AC] = 0u;
  *&STACK[0x16BC] = 0u;
  STACK[0x19C0] = &STACK[0x4A0];
  STACK[0x19C8] = 0;
  STACK[0x19D0] = 0;
  STACK[0x19D8] = v344;
  STACK[0x19E0] = v345;
  LOBYTE(STACK[0x19EC]) = 5;
  LODWORD(STACK[0x19E8]) = v343;
  LODWORD(STACK[0x19F0]) = 17;
  STACK[0x19F8] = 0;
  BlueFin::GlSetBase::GlSetBase(&STACK[0x1A00], &STACK[0x1A0C], 8u, &STACK[0x16A0]);
  v346 = *(vars8 + 8);
  *&STACK[0x16A0] = v346;
  STACK[0x16C0] = 0;
  STACK[0x16B0] = &STACK[0x460];
  STACK[0x16B8] = 0;
  if (!BlueFin::GlPeLsq::LsPos(&STACK[0x16A0], &STACK[0x19C0], &STACK[0x11F0], *&v346, v347) || !BlueFin::GlSetBase::operator==(&STACK[0x4A0], &STACK[0x1220]) || (STACK[0x12D1] & 1) == 0)
  {
    v115 = 0;
    v342 = 1;
    v341 = vars8;
LABEL_302:
    v354 = *v341;
    v355 = *(v341 + *(*v341 - 24) + 176);
      ;
    }

      ;
    }

    *(v341 + 601) = *(v341 + 601) * 0.5 + n * 0.5;
    *(v341 + 600) = v355;
    v357 = v341 + *(v354 - 24);
    v358 = *(v357 + 13);
    v359 = *(v357 + 14);
    v360 = *(v357 + 32);
    v361 = (*(v354 + 56))(v341);
    v295 = vars8;
    BlueFin::GlPeNavGnssMotion::SetNoMotionSpeedAndTrigger(vars8 + 4776, sqrt(v359 * v359 + v358 * v358), v360, v361, v602);
    goto LABEL_307;
  }

  a9 = *&STACK[0x11F0];
  v348 = *&STACK[0x1208];
  a10 = STACK[0x1200];
  v349 = v348;
  *(&a17 + 3) = v349;
  BlueFin::GlSetBase::operator=(&a11, &STACK[0x1220]);
  v350 = *&STACK[0x125C];
  *(&a13 + 12) = *&STACK[0x124C];
  *(&a14 + 12) = v350;
  a16 = *&STACK[0x1268];
  v351 = *&STACK[0x123C];
  *(&a11 + 12) = *&STACK[0x122C];
  *(&a12 + 12) = v351;
  v115 = &a9;
  v340 = *&STACK[0x12B4];
LABEL_290:
  v341 = vars8;
  if (v340 > 5.0)
  {
    v115 = 0;
    v342 = 1;
    goto LABEL_302;
  }

  if (*(vars8 + 2932) != 1 || *(v115 + 28) >= 5.0)
  {
    v342 = 0;
    goto LABEL_302;
  }

  if (v602)
  {
    v352 = vcvt_f32_f64(*(vars8 + 2904));
    v353 = sqrtf(vaddv_f32(vmul_f32(v352, v352)));
  }

  else
  {
    v353 = 0.01;
  }

  v398 = *v622;
  v399 = *v115;
  v400 = *(v115 + 1);
  v401 = *(v115 + 2);
  v402 = *(v115 + 31);
  v403 = *(vars8 + 724);
  v404 = *(vars8 + 732);
  v405 = *(vars8 + 1011);
  if (*(v405 + 4224) == 1 && (*(v405 + 4226) & 1) == 0)
  {
    v406 = *(v405 + 4216);
  }

  else
  {
    v406 = 0;
  }

  v582 = vcvtq_f64_f32(*(vars8 + 2936));
  v583 = *(vars8 + 359);
  v584 = *(vars8 + 360);
  v585 = sqrtf((v583 * v583) + (v584 * v584));
  v586 = fmin(*a43.i32 * 0.5, 50.0);
  v587 = *(*(*(vars8 + 5) + 40) + 40) * 0.5;
  v588 = *a42.i32 * 0.5;
  STACK[0x11F0] = v399;
  STACK[0x11F8] = v400;
  STACK[0x1200] = v401;
  *&STACK[0x1208] = v588;
  *&STACK[0x120C] = v587;
  *&STACK[0x1210] = v585;
  *&STACK[0x1214] = v353;
  STACK[0x1218] = vcvt_f32_f64(vmulq_f64(v582, vdupq_n_s64(0x3F91DF46A2529D34uLL)));
  LODWORD(STACK[0x1220]) = v402;
  *&STACK[0x1224] = v586;
  LODWORD(STACK[0x1228]) = v403;
  LODWORD(STACK[0x122C]) = v404;
  LOWORD(STACK[0x1230]) = 0;
  LODWORD(STACK[0x1234]) = v406;
  STACK[0x16A0] = v399;
  STACK[0x16A8] = v400;
  STACK[0x16B0] = v401;
  LODWORD(STACK[0x1188]) = 0;
  LODWORD(STACK[0x560]) = 0;
  v589 = vars8 + *(*vars8 - 24);
  v590 = *(v589 + 19);
  *&STACK[0x508] = v590;
  LODWORD(STACK[0x5F0]) = 1137180672;
  LODWORD(STACK[0x5C0]) = 1137180672;
  LODWORD(STACK[0x500]) = 1137180672;
  STACK[0x19C0] = &STACK[0x16A0];
  STACK[0x19C8] = &STACK[0x560];
  STACK[0x19D0] = &STACK[0x508];
  STACK[0x19D8] = &STACK[0x1188];
  STACK[0x19E0] = &STACK[0x5F0];
  STACK[0x19E8] = &STACK[0x500];
  STACK[0x19F0] = &STACK[0x5C0];
  BlueFin::GlPeFiltPos::UpdateFiltPos(vars8 + 6232, *(v589 + 50), &STACK[0x11F0], &STACK[0x19C0], (v398 >> 12) & 1, 0, 0, 0);
  v591 = *STACK[0x19D8];
  v592 = *vars8;
  v593 = *(vars8 + *(*vars8 - 24) + 176);
    ;
  }

    ;
  }

  *(vars8 + 601) = *(vars8 + 601) * 0.5 + ii * 0.5;
  *(vars8 + 600) = v593;
  v621 = *(vars8 + 2904);
  v595 = (*(v592 + 56))(vars8);
  v596 = vcvt_f32_f64(v621);
  v295 = vars8;
  BlueFin::GlPeNavGnssMotion::SetNoMotionSpeedAndTrigger(vars8 + 4776, v591, sqrtf(vaddv_f32(vmul_f32(v596, v596))), v595, v602);
  v342 = 0;
LABEL_307:
  if (*(v295[281] + 1989) == 1)
  {
    v362 = v295 + *(*v295 - 3);
    v363 = *(v362 + 13);
    v364 = *(v362 + 14);
    v365 = *(v362 + 32);
    v366 = (*(*v295 + 7))(v295);
    v295 = vars8;
    BlueFin::GlPeNavGnssMotion::SetNoMotionSpeedAndTrigger(vars8 + 4776, sqrt(v364 * v364 + v363 * v363), v365, v366, v602);
  }

  if ((v342 & 1) == 0)
  {
    v367 = v295[781];
    v368 = v295[782];
    v369 = v295[783];
    BlueFin::GlPeNavGnssState::GlPeNavGnssState(&STACK[0x11F0]);
    v370 = v368;
    v371 = v367;
    v372 = **(vars8 + 1);
    v373 = a42.i64[0];
    v374 = *(vars8 + 363);
    v375 = vcvt_f32_f64(*(vars8 + 182));
    v376 = sqrtf((v374 * v374) + vmul_f32(v375, v375).f32[0]);
    v377 = *(v115 + 31);
    v378 = fmin(*a43.i32 * 0.5, 50.0);
    v379 = *(vars8 + 724);
    v380 = *(vars8 + 734) * 0.0174532925;
    v617 = v380;
    v613 = *(vars8 + 732);
    v609 = v375;
    if (*(vars8 + 2932) == 1)
    {
      v381 = *(vars8 + 735) * 0.0174532925;
    }

    else
    {
      v381 = 3.1416;
    }

    STACK[0x11F8] = v371;
    STACK[0x1200] = v370;
    STACK[0x1208] = v369;
    BlueFin::GlPeNavGnssState::NormalizePos(&STACK[0x11F0]);
    STACK[0x1240] = v373;
    *&STACK[0x1248] = v377;
    *&STACK[0x1250] = v378;
    *&STACK[0x1258] = *v605;
    STACK[0x1268] = *(vars8 + 361);
    *&STACK[0x1274] = v374;
    *&STACK[0x1270] = v376;
    STACK[0x1278] = v609;
    *&STACK[0x1288] = v379;
    LODWORD(STACK[0x1290]) = v613;
    STACK[0x1298] = 0x3FF0000000000000;
    LODWORD(STACK[0x12B8]) = v372;
    LODWORD(STACK[0x12BC]) = 1;
    *&STACK[0x12A0] = v617;
    *&STACK[0x12A8] = v381;
    STACK[0x12AC] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*(vars8 + 2944)), vdupq_n_s64(0x3F91DF46A2529D34uLL)));
    STACK[0x12E8] = v373;
    LOWORD(STACK[0x12E0]) = 257;
    BlueFin::GlSetBase::GlSetBase(&STACK[0x19C0], &STACK[0x19CC], 0x13u, v115 + 3);
    BlueFin::GlSetBase::operator=(&STACK[0x12F8], &STACK[0x19C0]);
    v295 = vars8;
  }

  if ((*(v622 + 1) & 0x40) == 0)
  {
    v382 = *(v295 + 380);
    if (v115)
    {
      BlueFin::lla2ned(v115, (v295 + *(*v295 - 3) + 8), 0, &STACK[0x11F0]);
      v295 = vars8;
      v383 = *&STACK[0x11F0];
      v384 = *&STACK[0x11F8];
      v385 = (v383 * v383) + (v384 * v384);
      v386 = *&STACK[0x1200];
      if ((*(*(vars8 + 281) + 8) - 1) > 1)
      {
        v385 = v385 + (v386 * v386);
        v388 = *(v115 + 31) - *(vars8 + *(*vars8 - 24) + 88);
      }

      else
      {
        v387 = *(v115 + 31) - *(vars8 + *(*vars8 - 24) + 88);
        v388 = v386 + v387;
      }

      v390 = sqrtf(v385 + (v388 * v388));
      if (*a42.i32 <= 300.0)
      {
        if (*a42.i32 <= 200.0)
        {
          if (*a42.i32 <= 100.0)
          {
            v391 = 0.2;
          }

          else
          {
            v391 = 0.1;
          }
        }

        else
        {
          v391 = 0.05;
        }
      }

      else
      {
        v391 = 0.01;
      }

      v407 = v391 * v390 + (1.0 - v391) * v382;
      if (v382 <= 0.0)
      {
        v389 = v390;
      }

      else
      {
        v389 = v407;
      }
    }

    else
    {
      v389 = v382 + 10.0;
    }

    if (*(vars8 + 4824))
    {
      v408 = v295[281];
      if (sqrt(*(v295 + *(*v295 - 3) + 112) * *(v295 + *(*v295 - 3) + 112) + *(v295 + *(*v295 - 3) + 104) * *(v295 + *(*v295 - 3) + 104)) < 0.5)
      {
        v409 = 40.0;
        if (v408[2] - 1 < 2)
        {
          v409 = 30.0;
        }

        if (v389 >= v409)
        {
          v389 = v409;
        }
      }
    }

    else
    {
      v408 = v295[281];
    }

    v410 = 40.0;
    if (v389 >= 40.0)
    {
      v410 = v389;
    }

    *(v295 + 380) = v410;
    if (v408[2] - 1 <= 1)
    {
      v411 = (v295 + *(*v295 - 3));
      *&STACK[0x19C0] = xmmword_298A43FE0;
      STACK[0x19D0] = 0;
      BlueFin::lla2ned(v411 + 1, &STACK[0x19C0], 0, &STACK[0x11F0]);
      v412 = *&STACK[0x11F0];
      v413 = *&STACK[0x11F8];
      v414 = BlueFin::GlPeNavGnssKF::IsInXtcNow(vars8);
      v415 = sqrt(v413 * v413 + v412 * v412);
      v416 = v415 < 75.0 && v414;
      v295 = vars8;
      if (!v416 || (v417 = 30.0, *(*(vars8 + 281) + 16) != 3))
      {
        v417 = 30.0;
        if (v389 >= 30.0)
        {
          v417 = v389;
        }
      }

      *(vars8 + 380) = v417;
    }
  }

LABEL_375:
  if ((*(v622 + 1) & 0x40) != 0)
  {
    v418 = BlueFin::GlPeNavGnssKF::PolaroidIsTunnelExit(v295);
    v295 = vars8;
  }

  else
  {
    v418 = 0;
  }

  v419 = *(*v295 + 24);
  v420 = *(*v295 - 3);
  v421 = v295;
  v422 = *v295[280];
  v423 = v419(v421);
  BlueFin::GlPeNavGnssResidMon::UpdateRange((vars8 + 4864), vars8, (vars8 + 7992), (vars8 + v420 + 264), v422, v423, v418);
  STACK[0x508] = 0;
  STACK[0x4A0] = 0;
  STACK[0x5F0] = 0;
  STACK[0x5C0] = 0;
  BlueFin::GlPeNavGnssKF::ComputeEA(vars8, &a33, &STACK[0x508], &STACK[0x4A0], &STACK[0x5F0], &STACK[0x5C0], 0, 0, v622);
  v424 = vars8;
  v425 = *vars8;
  v426 = *vars8;
  v427.n128_f32[0] = *&STACK[0x508];
  *(vars8 + *(*vars8 - 24) + 80) = v427.n128_u32[0];
  v427.n128_f32[0] = *&STACK[0x4A0];
  *(vars8 + *(v426 - 24) + 84) = v427.n128_u32[0];
  if ((*v622 & 4) == 0)
  {
    goto LABEL_379;
  }

  v427.n128_u64[0] = *(vars8 + 609);
  if (v427.n128_f64[0] <= 4.0 && ((*(vars8 + 26) & 1) != 0 || *(*(vars8 + 281) + 16) == 1))
  {
    goto LABEL_379;
  }

  v458 = *(vars8 + 781);
  v459 = *(vars8 + 782);
  v460 = *(vars8 + 783);
  v461 = *(*(vars8 + 282) + 136);
  if (v461 && *(v461 + 3216) == 1)
  {
    BlueFin::lla2ned(vars8 + 781, (vars8 + *(v426 - 24) + 8), 0, &STACK[0x11F0]);
    v427.n128_f64[0] = sqrt(*&STACK[0x11F8] * *&STACK[0x11F8] + *&STACK[0x11F0] * *&STACK[0x11F0]);
    if (v427.n128_f64[0] >= 100.0)
    {
      v424 = vars8;
    }

    else
    {
      v424 = vars8;
      if (v427.n128_f64[0] > 35.0)
      {
        v462 = *(vars8 + 2);
        LODWORD(STACK[0x19C0]) = 0;
        STACK[0x19C8] = &STACK[0x19D4];
        LOBYTE(STACK[0x19D0]) = 8;
        *&STACK[0x19D4] = 0u;
        *&STACK[0x19E4] = 0u;
        *&STACK[0x19F8] = xmmword_298A41DA0;
        STACK[0x1A08] = vdup_n_s32(0x42C60000u);
        LODWORD(STACK[0x1A10]) = 1120272384;
        BlueFin::stDops::stDops(&STACK[0x11F0], &STACK[0x19C0]);
        STACK[0x1248] = v462;
        v463 = **(vars8 + 1);
        BlueFin::GlSignalIdSet::GetPrimarySignalSvIdSet(&STACK[0x16A0], (vars8 + *(*vars8 - 24) + 264));
        STACK[0x1188] = *(vars8 + *(*vars8 - 24) + 88);
        LODWORD(STACK[0x560]) = **(vars8 + 280);
        LODWORD(STACK[0x500]) = 0;
        BlueFin::GlPeDops::GetDops(&STACK[0x11F0], v463);
        v427.n128_u32[0] = STACK[0x19FC];
        v424 = vars8;
        if (*&STACK[0x19FC] > 2.0)
        {
          v464 = (vars8 + *(*vars8 - 24));
          v458 = v464[1];
          v459 = v464[2];
          v460 = v464[3];
        }
      }
    }
  }

  if ((*(*v424 + 56))(v424, v427) <= 0x14)
  {
    v539 = vars8;
    v540 = *vars8;
  }

  else
  {
    v539 = vars8;
    v540 = *vars8;
    if (*(*(vars8 + 284) + 2) <= 0)
    {
      v541 = *(*(vars8 + 281) + 8) - 1;
      if (v541 > 1 || *(vars8 + *(v540 - 24) + 80) <= 75.0)
      {
        v542 = *vars8;
        v543 = vars8 + *(v540 - 24);
        v544 = BlueFin::GlSetBase::Cnt((v543 + 264));
        if (v543[240])
        {
          v545 = 16;
        }

        else
        {
          v545 = 0;
        }

        if (v544 <= 2)
        {
          v546 = v545;
        }

        else
        {
          v546 = v545 | 4;
        }

        goto LABEL_513;
      }
    }
  }

  v542 = v540;
  v546 = *(v539 + *(v540 - 24) + 240) ? 16 : 0;
  v541 = *(*(v539 + 281) + 8) - 1;
LABEL_513:
  if (v541 >= 2)
  {
    v547 = v546;
  }

  else
  {
    v547 = v546 + 1;
  }

  if ((*(v542 + 56))(v539) <= 0x5A)
  {
    v548 = v547;
  }

  else
  {
    v548 = v547 | 2;
  }

  v549 = *(*(vars8 + 284) + 8);
  if (v549)
  {
    v548 |= 32 * ((*(vars8 + *(*vars8 - 24) + 200) - v549) >> 5 < 0x753);
  }

  if ((*(v622 + 1) & 0x40) != 0 && BlueFin::GlPeNavGnssKF::PolaroidLeftTunnelRecently(vars8, 0x4E20u))
  {
    v548 |= ((*(*(vars8 + 281) + 8) - 3) < 3) << 7;
  }

  v550 = vars8 + *(*vars8 - 24);
  v551 = v550[241] ? 8 : 0;
  v552 = v551 | v548 & 0xFFFFFFF7;
  v553 = sqrt(*(v550 + 14) * *(v550 + 14) + *(v550 + 13) * *(v550 + 13));
  v619 = *(v550 + 8);
  v554 = *(v550 + 3);
  v555 = *(vars8 + 333);
  v556 = *(v550 + 50);
  TrueHeadingRad = BlueFin::GlPeNavGnssKF::GetTrueHeadingRad(vars8);
  *&STACK[0x19C0] = v553;
  STACK[0x19C8] = v458;
  STACK[0x19D0] = v459;
  STACK[0x19D8] = v460;
  *&STACK[0x19E0] = v619;
  STACK[0x19F0] = v554;
  *&STACK[0x19F8] = v555;
  LODWORD(STACK[0x19FC]) = v556;
  *&STACK[0x1A00] = TrueHeadingRad;
  LODWORD(STACK[0x1A04]) = v552;
  BlueFin::GlPeGnssNavUpa::SetUrbanPosAssist(vars8 + 2280, &STACK[0x19C0], &STACK[0x16A0]);
  v424 = vars8;
  v425 = *vars8;
  v558 = (vars8 + *(*vars8 - 24));
  if (*(v558 + 242) & 1) == 0 && (*(*(vars8 + 281) + 1988))
  {
    goto LABEL_379;
  }

  if (LOBYTE(STACK[0x16A0]) != 1)
  {
    goto LABEL_569;
  }

  BlueFin::lla2ned(&STACK[0x16A8], v558 + 1, 0, &STACK[0x11F0]);
  v559 = *&STACK[0x11F0];
  STACK[0x1188] = STACK[0x11F0];
  v620 = *&STACK[0x11F8];
  *&STACK[0x1190] = *&STACK[0x11F8];
  BlueFin::ned2hlu(&STACK[0x1188], (vars8 + 1336), &STACK[0x560]);
  v560 = *&STACK[0x16CC];
  v561 = __sincosf_stret(*&STACK[0x16CC]);
  v562 = *&v620 * v561.__cosval - v559 * v561.__sinval;
  v563 = *&STACK[0x16C0];
  if (*&STACK[0x16C0] >= *&STACK[0x16C4])
  {
    v563 = *&STACK[0x16C4];
  }

  v564 = v563;
  if ((*(*(vars8 + 281) + 8) - 1) >= 2)
  {
    if (*(vars8 + 26))
    {
      goto LABEL_546;
    }

    v566 = *&STACK[0x568];
    goto LABEL_567;
  }

  if ((*(vars8 + 26) & 1) == 0)
  {
    v566 = *&STACK[0x568];
    v567 = fabs(*&STACK[0x568]);
    if (v567 > 10.0)
    {
      v568 = fabs(v566 * 0.25);
      if (v568 <= v564)
      {
        v568 = v564;
      }

      if (v568 <= 7.0)
      {
        v564 = v568;
      }

      else
      {
        v564 = 7.0;
      }

      if (*(vars8 + 12) == *(vars8 + 1156) && v567 * -0.100000001 + 4.0 < v564)
      {
        v564 = v567 * -0.100000001 + 4.0;
      }
    }

    if (v567 >= 3.0 && v567 <= 10.0)
    {
      if (v564 < v567 * -0.699999988 + 10.0)
      {
        v564 = v567 * -0.699999988 + 10.0;
      }

      *(vars8 + 12) = *(vars8 + 578);
    }

    if (v567 < 3.0)
    {
      if (v564 < 300.0)
      {
        v564 = 300.0;
      }

      *(vars8 + 12) = *(vars8 + 578);
    }

    v564 = v564 * v564;
LABEL_567:
    *&STACK[0x1200] = xmmword_298A43FD0;
    STACK[0x11F0] = &STACK[0x1210];
    STACK[0x11F8] = &STACK[0x1270];
    STACK[0x1270] = 0;
    STACK[0x1278] = &STACK[0x1208];
    BlueFin::BigMatrix::Null(&STACK[0x11F0], 1, 12);
    *(*(STACK[0x11F8] + 8) + 24) = 0x3FF0000000000000;
    BlueFin::GlPeNavGnssKF::MeasUpdate(vars8, &STACK[0x11F0], 1, 0, 1, v566, v564);
    goto LABEL_568;
  }

  if (v564 < 10.0)
  {
    v564 = 10.0;
  }

  v565 = fabs(v562);
  if (v565 >= 3.0 && v565 <= 10.0)
  {
    if (v564 < v565 * -0.699999988 + 10.0)
    {
      v564 = v565 * -0.699999988 + 10.0;
    }

    *(vars8 + 12) = *(vars8 + 578);
  }

  if (v565 < 3.0)
  {
    if (v564 < 300.0)
    {
      v564 = 300.0;
    }

    *(vars8 + 12) = *(vars8 + 578);
  }

LABEL_546:
  BlueFin::GlPeNavGnssKF::ApplyCrossTrackPosMeas(vars8, v562, v564, v560);
LABEL_568:
  v424 = vars8;
  *(vars8 + 2281) = 1;
  *(vars8 + 3993) = 257;
  v425 = *vars8;
  v569 = *vars8;
  *(vars8 + 571) = *(vars8 + *(*vars8 - 24) + 200);
  v570 = vars8 + *(v569 - 24);
  *(vars8 + 143) = *(v570 + 8);
  *(vars8 + 288) = *(v570 + 3);
LABEL_569:
  if (STACK[0x16C8])
  {
    v571 = BlueFin::GlPeNavGnssKF::GetTrueHeadingRad(v424);
    v572 = BlueFin::GlPeGnssNavUpa::UnravelHeadingRad((v424 + 2280), v571, *&STACK[0x16CC]);
      ;
    }

      ;
    }

    v574 = jj;
    if (fabsf(v574) >= 1.57079633)
    {
      DeviceFaultNotify("glpe_navgnsskf.cpp", 6613, "SetUrbanPosAssist", "FABS_F(fAngleDiffRad) < 90.0f*D2R");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navgnsskf.cpp", 6613, "FABS_F(fAngleDiffRad) < 90.0f*D2R");
    }

    if (*(vars8 + 26) == 1)
    {
      BlueFin::GlPeNavGnssKF::ApplyXTCHdg(vars8, v572, *&STACK[0x16D0]);
    }

    else
    {
      *&STACK[0x1200] = xmmword_298A43FD0;
      STACK[0x11F0] = &STACK[0x1210];
      STACK[0x11F8] = &STACK[0x1270];
      STACK[0x1270] = 0;
      STACK[0x1278] = &STACK[0x1208];
      BlueFin::BigMatrix::Null(&STACK[0x11F0], 1, 12);
      *(*(STACK[0x11F8] + 8) + 32) = 0x3FF0000000000000;
      BlueFin::GlPeNavGnssKF::MeasUpdate(vars8, &STACK[0x11F0], 1, 1, 1, v574, (*&STACK[0x16D0] * *&STACK[0x16D0]));
    }

    v424 = vars8;
    v425 = *vars8;
    v575 = *(vars8 + *(*vars8 - 24) + 200);
    *(vars8 + 863) = v572;
    *(vars8 + 1728) = v575;
    *(vars8 + 2281) = 1;
    *(vars8 + 3993) = 257;
  }

LABEL_379:
  v428 = BlueFin::GlPeNavGnssKF::TunnelUrbanPosAssist(v424, (v424 + *(v425 - 24) + 8));
  BlueFin::lla2ned((vars8 + *(*vars8 - 24) + 8), a33.i64, 0, &STACK[0x11F0]);
  if (v115)
  {
    v429 = v428;
  }

  else
  {
    v429 = 1;
  }

  v430 = vars8;
  if ((v429 & 1) == 0)
  {
    v428 = 0;
    if (*a42.i32 < 100.0 && sqrt(*&STACK[0x11F8] * *&STACK[0x11F8] + *&STACK[0x11F0] * *&STACK[0x11F0]) < 100.0)
    {
      BlueFin::GlPeNavGnssKF::TunnelUrbanPosAssist(vars8, a33.i64);
      v428 = 0;
      v430 = vars8;
    }
  }

  BlueFin::GlPeNavGnssKF::ComputeEA(v430, &a33, &STACK[0x508], &STACK[0x4A0], &STACK[0x5F0], &STACK[0x5C0], v428, 1, v622);
  v431 = vars8;
  v432 = *(vars8 + 5);
  v433 = *(*(v432 + 48) + 48);
  v614 = sqrtf(v433);
  v434 = *(*(v432 + 64) + 64);
  v610 = sqrtf(v434);
  v435 = vars8 + *(*vars8 - 24);
  v436 = **(vars8 + 1);
  v437 = *&STACK[0x508];
  v438 = *&STACK[0x4A0];
  v439 = *&STACK[0x5F0];
  v600 = v439;
  v440 = *(v435 + 11);
  v441 = *&STACK[0x5C0];
  v442 = *(v435 + 19);
  v598 = *(v435 + 21);
  v603 = *(v435 + 44);
  v443 = *(vars8 + 737) * 0.0174532925;
  v618 = vdupq_n_s64(0x3F91DF46A2529D34uLL);
  v444 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*(vars8 + 2940)), v618));
  BlueFin::GlPeNavGnssState::NormalizePos(v435);
  *(v435 + 20) = v437;
  *(v435 + 21) = v438;
  *(v435 + 132) = 0;
  *(v435 + 11) = v440;
  *(v435 + 24) = v441;
  *(v435 + 32) = v600;
  *(v435 + 35) = v614;
  *(v435 + 19) = v442;
  *(v435 + 40) = v610;
  *(v435 + 21) = v598;
  *(v435 + 50) = v436;
  *(v435 + 51) = 1;
  *(v435 + 44) = v603;
  *(v435 + 23) = v444;
  *(v435 + 48) = v443;
  *(v435 + 62) = v437;
  *(v435 + 63) = v438;
  v445 = **(vars8 + 1);
  v446 = *(vars8 + 363);
  v447 = *(vars8 + 364);
  v615 = sqrtf((v446 * v446) + (v447 * v447));
  v448 = *(vars8 + 365);
  v611 = v448;
  v449 = a42.i32[0];
  *&v450 = *(&a41 + 3);
  LODWORD(v440) = a42.i32[1];
  v451 = a43.i32[0];
  *&v452 = *(vars8 + 724);
  v444.i32[0] = *(vars8 + 732);
  v453 = *(vars8 + 734) * 0.0174532925;
  v454 = *(vars8 + 737) * 0.0174532925;
  a47 = a33;
  *&a48 = a34;
  BlueFin::GlPeNavGnssState::NormalizePos(&a46);
  LODWORD(STACK[0x2A0]) = v449;
  LODWORD(STACK[0x2A4]) = v440;
  STACK[0x2D4] = 0;
  STACK[0x2A8] = v450;
  LODWORD(STACK[0x2B0]) = v451;
  *&STACK[0x2B8] = *v605;
  STACK[0x2C8] = *(vars8 + 361);
  *&STACK[0x2D0] = v615;
  *&STACK[0x2DC] = v611;
  STACK[0x2E8] = v452;
  LODWORD(STACK[0x2F0]) = v444.i32[0];
  STACK[0x2F8] = 0x3FF0000000000000;
  LODWORD(STACK[0x318]) = v445;
  LODWORD(STACK[0x31C]) = 1;
  *&STACK[0x300] = v453;
  v455 = *(vars8 + 2940);
  STACK[0x308] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(v455), v618));
  *&STACK[0x310] = v454;
  LODWORD(STACK[0x348]) = v449;
  LODWORD(STACK[0x34C]) = v440;
  if (*(vars8 + 2932) == 1)
  {
    LOBYTE(STACK[0x341]) = v455.f32[0] < 180.0;
    LOBYTE(STACK[0x340]) = 1;
    BlueFin::GlSetBase::GlSetBase(&STACK[0x11F0], &STACK[0x11FC], 0x13u, vars8 + 369);
    BlueFin::GlSetBase::operator=(&STACK[0x3B0], &STACK[0x11F0]);
    v456 = *&STACK[0x120C];
    v457 = *&STACK[0x122C];
    *&STACK[0x3DC] = *&STACK[0x121C];
    *&STACK[0x3EC] = v457;
    *&STACK[0x3F8] = *&STACK[0x1238];
    *&STACK[0x3BC] = *&STACK[0x11FC];
    *&STACK[0x3CC] = v456;
    v431 = vars8;
  }

  else
  {
    LOWORD(STACK[0x340]) = 0;
  }

  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
    v431 = vars8;
  }

  v465 = *v431;
  *(v431 + 1334) = *(v431 + *(*v431 - 24) + 80);
  if (*(v431 + 26) == 1)
  {
    BlueFin::GlPeNavGnssKF::UpdateHeading(v431);
    v431 = vars8;
    v465 = *vars8;
  }

  v466 = v465;
  v467 = *(v465 - 24);
  v468 = v431 + v467;
  if (*(v431 + v467 + 241) != 1 || *(v468 + 46) > 0.34906585)
  {
    *(v431 + 544) = *(v468 + 50);
    v467 = *(v466 - 24);
  }

  v469 = v431 + v467;
  if (v469[240] != 1 || v469[241] == 1 && sqrt(*(v469 + 14) * *(v469 + 14) + *(v469 + 13) * *(v469 + 13)) < 3.0)
  {
    *(v431 + 545) = *(v469 + 50);
  }

  if (v115 && *(v431 + 1560))
  {
    v470 = *(v431 + 609);
    BlueFin::lla2ned((v431 + *(v466 - 24) + 8), v115, 0, &STACK[0x11F0]);
    v431 = vars8;
    v471 = v470;
    if ((*(*(vars8 + 281) + 8) - 1) >= 2)
    {
      v471 = 300.0;
    }

    v472 = *a42.i32;
    if (*a42.i32 < 50.0)
    {
      v472 = 50.0;
    }

    v473 = v472 * 3.0;
    if (v471 < v473)
    {
      v471 = v473;
    }

    if (*&STACK[0x11F8] * *&STACK[0x11F8] + *&STACK[0x11F0] * *&STACK[0x11F0] <= (v471 * v471))
    {
      *(vars8 + 1600) = 0;
      v475 = vars8 + *(*vars8 - 24);
      *(v475 + 2) = *(v475 + 8);
      *(v475 + 6) = *(v475 + 3);
    }

    else
    {
      v474 = ++*(vars8 + 1600);
      if (v474 > 0xA)
      {
        (*(*vars8 + 24))(vars8, 5);
        return;
      }
    }
  }

  v476 = BlueFin::CheckCovMat(v431 + 32);
  v477 = *v431;
  v478 = *v431;
  if ((v476 & 1) == 0)
  {
    (*(v477 + 24))(v431, 18);
    return;
  }

  v479 = (v431 + *(v477 - 24));
  if (v479[32] < 0.5)
  {
    *(v479 + 240) = 1;
    goto LABEL_428;
  }

  v480 = BlueFin::GlSetBase::Cnt((v479 + 88));
  *(v479 + 240) = v480 > 4;
  if (v480 > 4)
  {
LABEL_428:
    v485 = *(v478 - 24);
    v481 = sqrt(*(v431 + v485 + 112) * *(v431 + v485 + 112) + *(v431 + v485 + 104) * *(v431 + v485 + 104));
    v482 = *(v431 + v485 + 128) + *(v431 + v485 + 128);
    if (v482 < 0.5)
    {
      v482 = 0.5;
    }

    v484 = v481 > v482;
    v483 = 1;
  }

  else
  {
    v483 = 0;
    v484 = 0;
    v485 = *(v478 - 24);
  }

  *(v431 + v485 + 241) = v483 & (*(v431 + v485 + 242) | v484);
  v486 = v431 + *(v478 - 24);
  if ((v486[242] & 1) == 0 && v484)
  {
    v486[242] = v483;
  }

  v487 = *(v431 + 2);
  LODWORD(STACK[0x11F0]) = 0;
  STACK[0x11F8] = &STACK[0x1204];
  LOBYTE(STACK[0x1200]) = 8;
  *&STACK[0x1204] = 0u;
  *&STACK[0x1214] = 0u;
  *&STACK[0x1228] = xmmword_298A41DA0;
  STACK[0x1238] = vdup_n_s32(0x42C60000u);
  LODWORD(STACK[0x1240]) = 1120272384;
  BlueFin::stDops::stDops(&STACK[0x19C0], &STACK[0x11F0]);
  STACK[0x1A18] = v487;
  v488 = **(vars8 + 1);
  BlueFin::GlSignalIdSet::GetSvIdSet(&STACK[0x11F0], (vars8 + *(*vars8 - 24) + 264));
  STACK[0x1188] = *(vars8 + *(*vars8 - 24) + 88);
  LODWORD(STACK[0x560]) = **(vars8 + 280);
  LODWORD(STACK[0x508]) = 0;
  BlueFin::GlPeDops::GetDops(&STACK[0x19C0], v488);
  v489 = vars8;
  v490 = vars8 + *(*vars8 - 24);
  if (BlueFin::GlSetBase::Cnt((v490 + 264)) >= 8)
  {
    v491.n128_u32[0] = STACK[0x16DC];
    if (*&STACK[0x16DC] <= 2.0)
    {
      v491.n128_u32[0] = *(v490 + 20);
      if (v491.n128_f32[0] <= 25.0)
      {
        v492 = *(vars8 + 1);
        BlueFin::GlSetBase::GlSetBase(&STACK[0x560], &STACK[0x56C], 0x13u, v490 + 33);
        STACK[0x11F0] = &STACK[0x11FC];
        LOBYTE(STACK[0x11F8]) = 19;
        *&STACK[0x11FC] = 0u;
        *&STACK[0x120C] = 0u;
        *&STACK[0x121C] = 0u;
        *&STACK[0x122C] = 0u;
        *&STACK[0x1238] = 0u;
        BlueFin::GlSetBase::OperatorBinaryInversion(&STACK[0x560], &STACK[0x11F0]);
        BlueFin::GlSetBase::operator=(&STACK[0x560], &STACK[0x11F0]);
        v493 = *&STACK[0x11FC];
        *&STACK[0x57C] = *&STACK[0x120C];
        v494 = *&STACK[0x122C];
        *&STACK[0x58C] = *&STACK[0x121C];
        *&STACK[0x59C] = v494;
        *&STACK[0x5A8] = *&STACK[0x1238];
        *&STACK[0x56C] = v493;
        BlueFin::GlSignalIdSet::setSignalIdLimits(&STACK[0x560]);
        BlueFin::GlSetBase::GlSetBase(&STACK[0x1188], &STACK[0x1194], 0x13u, (v492 + 184));
        STACK[0x11F0] = &STACK[0x11FC];
        LOBYTE(STACK[0x11F8]) = 19;
        *&STACK[0x11FC] = 0u;
        *&STACK[0x120C] = 0u;
        *&STACK[0x121C] = 0u;
        *&STACK[0x122C] = 0u;
        *&STACK[0x1238] = 0u;
        BlueFin::GlSetBase::OperatorBinaryAnd(&STACK[0x1188], &STACK[0x11F0], &STACK[0x560]);
        BlueFin::GlSetBase::operator=(&STACK[0x1188], &STACK[0x11F0]);
        v495 = *&STACK[0x11FC];
        *&STACK[0x11A4] = *&STACK[0x120C];
        v496 = *&STACK[0x122C];
        *&STACK[0x11B4] = *&STACK[0x121C];
        *&STACK[0x11C4] = v496;
        *&STACK[0x11D0] = *&STACK[0x1238];
        *&STACK[0x1194] = v495;
        v497 = LOBYTE(STACK[0x1190]);
        LOBYTE(STACK[0x508]) = v497;
        memcpy(&STACK[0x510], STACK[0x1188], 4 * v497);
        LOWORD(STACK[0x50A]) = 0;
        LOBYTE(STACK[0x509]) = 0;
        LODWORD(STACK[0x50C]) = STACK[0x510];
        BlueFin::GlSetIterator::operator++(&STACK[0x508]);
        if (LOBYTE(STACK[0x509]) != LOBYTE(STACK[0x508]))
        {
          v498 = vars8 + 3056;
          v499 = vars8 + 3808;
          while (1)
          {
            v500 = LOWORD(STACK[0x50A]);
            if (v500 >= 0x23F)
            {
              DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
            }

            v501 = *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v500 + 1);
            if (v501 != 3 && v501 != 0)
            {
              goto LABEL_461;
            }

            STACK[0x560] = &STACK[0x56C];
            LOBYTE(STACK[0x568]) = 19;
            *&STACK[0x56C] = 0u;
            *&STACK[0x57C] = 0u;
            *&STACK[0x58C] = 0u;
            *&STACK[0x59C] = 0u;
            *&STACK[0x5A8] = 0u;
            *(&STACK[0x56C] + (v500 >> 5)) |= 1 << v500;
            v503 = *(*vars8 + 192);
            v504 = vars8 + *(*vars8 - 24);
            *&STACK[0x4A0] = *(v504 + 8);
            STACK[0x4B0] = *(v504 + 3);
            v505 = **(vars8 + 280);
            v506 = v503();
            BlueFin::GlPeNavUtil::ComputeRangeResidVec(vars8, &STACK[0x560], &STACK[0x4A0], v505, 0, 0, 0, 1, v506, 1);
            if (*STACK[0x560])
            {
              goto LABEL_446;
            }

            v508 = LOBYTE(STACK[0x568]);
            if (v508 >= 2)
            {
              break;
            }

LABEL_451:
            v512 = *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v500) - 1;
            v513 = *&v498[4 * v512];
            v514 = *&v499[4 * v512];
            v515 = v513 <= 0.75 || v514 <= 600.0;
            if (!v515 || (v513 > 0.99 ? (v516 = v514 <= 500.0) : (v516 = 1), !v516))
            {
              *(*(vars8 + 213) + 4 * (v500 >> 5)) |= 1 << v500;
              *&v498[4 * v512] = 0;
              *&v499[4 * v512] = 0;
            }

LABEL_461:
            BlueFin::GlSetIterator::operator++(&STACK[0x508]);
            if (LOBYTE(STACK[0x509]) == LOBYTE(STACK[0x508]))
            {
              goto LABEL_462;
            }
          }

          v509 = v508 - 1;
          v510 = (STACK[0x560] + 4);
          while (!*v510++)
          {
            if (!--v509)
            {
              goto LABEL_451;
            }
          }

LABEL_446:
          v507 = *(STACK[0x11F0] + 8);
          LOBYTE(STACK[0x4A0]) = *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v500);
          LODWORD(STACK[0x4A4]) = v501;
          LOWORD(STACK[0x4A8]) = v500;
          BlueFin::GlPePolaroidGnssKF::UpdateFilter((vars8 + 3040), 1, v507, &STACK[0x4A0]);
          goto LABEL_451;
        }

LABEL_462:
        v489 = vars8;
      }
    }
  }

  if ((*(v622 + 1) & 0x20) != 0)
  {
    v517 = (*(*v489 + 48))(v489, v491);
    v489 = vars8;
    if (v517)
    {
      if (*(v604 + 241) == 1)
      {
        v491.n128_u32[0] = *(v604 + 176);
        v518 = *(v604 + 184);
        LODWORD(STACK[0x300]) = v491.n128_u32[0];
        LODWORD(STACK[0x308]) = v518;
      }

      if (*(v604 + 240) == 1)
      {
        v491 = *(v604 + 104);
        *&STACK[0x2B8] = v491;
        v491.n128_u64[0] = *(v604 + 120);
        STACK[0x2C8] = v491.n128_u64[0];
        v491.n128_u32[0] = *(v604 + 128);
        v519 = *(v604 + 140);
        LODWORD(STACK[0x2D0]) = v491.n128_u32[0];
        LODWORD(STACK[0x2DC]) = v519;
      }
    }
  }

  v520 = (*(*v489 + 64))(v489, v491);
  v521 = *(vars8 + 546);
  v522 = (*(*vars8 + 72))(vars8);
  v523 = (vars8 + *(*vars8 - 24));
  v524 = v523[6].f64[1];
  *&STACK[0x11F0] = v524;
  v623 = v523[7];
  *&STACK[0x11F8] = v623;
  SpdSmoothCoeff = 1.0;
  BlueFin::GlPeSlowFilter::SubmitAltEst(vars8 + 2640, v523[1].f64[1], *(*(*(vars8 + 5) + 40) + 40) * 2.25, 1.0, 0.0, 0);
  v526 = sqrt(vmulq_f64(v623, v623).f64[0] + v524 * v524);
  if ((*(*(vars8 + 281) + 8) - 1) <= 1)
  {
    v527 = (v520 / (v521 * 1000.0));
    v529 = v522 * 0.001 > 30.0 || v527 < 4;
    SpdSmoothCoeff = BlueFin::GlPeSlowFilter::GetSpdSmoothCoeff((vars8 + 2640), v529, *(vars8 + *(*vars8 - 24) + 200), v527, v526);
  }

  BlueFin::GlPeSlowFilter::SubmitSpeedEst((vars8 + 2640), v526, SpdSmoothCoeff);
  v530 = vars8;
  v531 = vars8 + *(*vars8 - 24);
  if (v531[240] == 1)
  {
    v532 = 0.5;
    if (v526 > 3.0)
    {
      v533 = BlueFin::GlSetBase::Cnt((v531 + 352));
      v532 = 0.5;
      if (v533 > 5)
      {
        v532 = 1.0;
      }
    }

    BlueFin::GlPeSlowFilter::SubmitVelEst(vars8 + 2640, &STACK[0x11F0], v532);
    v530 = vars8;
  }

  v534 = *&STACK[0x308];
  if (v534 < 0.785398163 && v526 > 0.5)
  {
    v535 = dbl_298A44000[v534 < 0.34906585];
LABEL_485:
    v536 = *&STACK[0x300];
    goto LABEL_493;
  }

  v537 = *(v530 + 571);
  if (v537 != -7200001)
  {
    v538 = (*(*(v530 + 281) + 8) - 1) >= 2 ? 30000 : 300000;
    if (*(v530 + *(*v530 - 24) + 200) <= (v538 + v537) && !BlueFin::GlPeNavGnssMotion::IsNotMoving((v530 + 4776), 0.5))
    {
      v535 = 0.1;
      goto LABEL_485;
    }
  }

  v535 = dbl_298A43FF0[v526 < 1.0];
  v536 = BlueFin::GlPeNavGnssKF::GetTrueHeadingRad(v530);
LABEL_493:
  BlueFin::GlPeSlowFilter::SubmitTrackRadEst((v530 + 2640), v536, v535);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6E);
  }
}

BOOL BlueFin::GlPeLsq::LsPos(uint64_t a1, uint64_t a2, uint64_t a3, double a4, int8x16_t a5)
{
  v23 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 16))
  {
    DeviceFaultNotify("glpe_lsq.cpp", 1315, "LsPos", "m_potAlMeas != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_lsq.cpp", 1315, "m_potAlMeas != nullptr");
  }

  v8 = 0;
  v19 = v21;
  v20 = 19;
  memset(v21, 0, sizeof(v21));
  do
  {
    v9 = &v22[v8];
    v9[32] = 0;
    *(v9 + 9) = -1;
    *(v9 + 20) = 575;
    v8 += 56;
  }

  while (v8 != 896);
  v18 = 0;
  v15[1] = 0xC00000008;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v15[0] = v16;
  v10 = *(a2 + 24);
  v13 = *v10;
  v14 = v10[2];
  result = BlueFin::GlPeLsq::LsPosInit(a1, a2, &v19, &v18 + 1, v22, v14, a5);
  if (result)
  {
    result = BlueFin::GlPeLsq::LsPosCalc(a1, a2, &v19, &v18 + 1, v22, 16, a3, &v13, v15, &v18);
    if (result)
    {
      BlueFin::GlPeLsq::LsPosFinish(a1, a2, &v19, &v18 + 1, v22, v12, a3, &v13, v15);
      return 1;
    }
  }

  return result;
}

uint64_t BlueFin::GlMeSrdAidingMgr::FormatGlnsTcxoAidingForEsw(unsigned int *a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v9[0] = &unk_2A1F0E1A0;
  v9[1] = 0;
  v10 = 0x36A7C5AC00000000;
  v11 = 0;
  v12 = 2139095039;
  v13 = 0;
  v14 = 2139095039;
  v15 = 0;
  v16 = 0x36A7C5AC7F7FFFFFLL;
  (*(**a1 + 96))(*a1, v9, a1[6]);
  *(a2 + 12) = a1[6];
  *(a2 + 14) = 1;
  v6[0] = 59;
  v7 = 0;
  v8 = 154;
  result = BlueFin::GlMeSrdAsicUnitConverter::PpuToEswAidingFrequency(v6, -*&v10, v4);
  *a2 = result;
  return result;
}

void BlueFin::GlPeTimeManager::SetGlonassDataString(uint64_t this, const BlueFin::GlGlonassDataString *a2, int8x16_t a3, int8x16_t a4)
{
  v4 = (*(a2 + 5) >> 27) & 0xF;
  if ((v4 - 1) < 5 || v4 == 14)
  {
    v48 = *(a2 + 8);
    v8 = *(this + 40);
    v46 = 7;
    v47 = 0;
    BlueFin::GlPeSvIdConverter::SvId2Gnss(v8, &v48, &v46, a3, a4);
    if (v46 > 6 || v47 - 1 > 0x3E || BlueFin::GlPeSvHealthHelper::IsUsable(*(this + 24) + 32, &v46))
    {
      v13 = *(this + 212);
      BlueFin::GlPeGlnTimeMgr::SetGlonassDataString(this + 192, a2, (*(this + 2712) >> 1) & 1, v9, v10, v11, v12);
      v14 = v13 == -7200001 && *(this + 212) != -7200001;
      v45 = 0;
      v44 = 0;
      v43 = 0;
      v42 = 0;
      if (BlueFin::GlPeGlnTimeMgr::GetInitialTime((this + 192), &v45, &v44, &v43, &v42) && (*(this + 2576) == 0 || v14))
      {
        LODWORD(v15) = v42;
        BlueFin::GlGlnsTime::GlGlnsTime(v40, v44, v43, v15 * 0.001);
        v39 = 0.0;
        v38 = 0;
        BlueFin::GlPeTimeManager::getFlightTimeMs(this, &v48, &v39, &v38);
        v16 = v38;
        v17 = v39 * 0.001;
        v18 = fabs(v39 * 0.001);
        v19 = v18 - trunc(v18);
        v20 = v19 * 4294967300.0 + 0.5;
        if (v38 <= 0x7D0)
        {
          v16 = 2000;
        }

        if (v20 >= 4294967300.0)
        {
          v21 = -1;
        }

        else
        {
          v21 = v20;
        }

        if (v19 < 0.0 || v19 >= 1.0)
        {
          v32 = "dFracSec >= 0.0 && dFracSec < 1.0";
          DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
          v33 = "glpe_timepoint.h";
          v34 = 173;
          goto LABEL_47;
        }

        v23 = v18;
        if (v17 < 0.0)
        {
          if (v41 < __PAIR64__(v23, v21))
          {
            if (v23 - HIDWORD(v41) != v41 > v21 || v21 != v41)
            {
              v32 = "!tDelta.isNegative()";
              DeviceFaultNotify("glpe_datetime.h", 425, "operator+=", "!tDelta.isNegative()");
              v33 = "glpe_datetime.h";
              v34 = 425;
LABEL_47:
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v33, v34, v32);
            }

            v25 = 0;
            LODWORD(v24) = 0;
          }

          else
          {
            v26 = v41 >= v21;
            LODWORD(v24) = v41 - v21;
            v27 = !v26;
            v25 = HIDWORD(v41) - v23 - v27;
          }
        }

        else
        {
          v24 = v41 + v21;
          v25 = HIDWORD(v41) + v23 + HIDWORD(v24);
        }

        v41 = __PAIR64__(v25, v24);
        LODWORD(v17) = v45;
        v35[0] = v24;
        v35[1] = v25;
        v35[2] = 1;
        v36 = *&v17;
        v37 = v16;
        if (*(this + 212) == -7200001)
        {
          v29 = 4;
        }

        else
        {
          v29 = 5;
        }

        BlueFin::GlPeTimeManager::SetTime(this, v35, v29, &v48);
      }

      if (*(this + 435) == 1)
      {
        BlueFin::GlPeTimeManager::updateLeapSecFromGlnsKp(this);
      }

      v30 = *(this + 345);
      *(this + 345) = 0;
      if ((v30 & 1) != 0 || (v31 = *(this + 401), *(this + 401) = 0, v31 == 1))
      {
        BlueFin::GlPeTimeManager::updateConversionTable(this);
      }
    }
  }
}

void BlueFin::GlPeGlnTimeMgr::SetGlonassDataString(uint64_t this, const BlueFin::GlGlonassDataString *a2, uint64_t a3, float64x2_t a4, double a5, int8x16_t a6, int8x16_t a7)
{
  v7 = *(a2 + 5);
  v8 = (v7 >> 27) & 0xF;
  if ((v8 - 1) >= 5 && v8 != 14)
  {
    v66 = "WantsString(ucStringNum)";
    DeviceFaultNotify("glpe_glntimemgr.cpp", 413, "SetGlonassDataString", "WantsString(ucStringNum)");
    v67 = 413;
    goto LABEL_156;
  }

  v11 = *(a2 + 8);
  v12 = v11 - 52;
  if ((v11 - 52) > 0xD)
  {
    v66 = "ucIdx >= 0";
    DeviceFaultNotify("glpe_glntimemgr.cpp", 420, "SetGlonassDataString", "ucIdx >= 0");
    v67 = 420;
    goto LABEL_156;
  }

  v14 = **(this + 8);
  v15 = *(a2 + 9);
  v16 = *(this + 1824) + 112 * v12;
  if (((v7 >> 27) & 0xF) <= 3)
  {
    if (v8 == 1)
    {
      *v16 = v7;
      *(v16 + 4) = *(a2 + 6);
      *(v16 + 8) = *(a2 + 7);
      *(*(this + 1832) + 4 * (v12 >> 5)) |= 1 << v12;
      *(v16 + 36) = v14;
      *(v16 + 56) = *(a2 + 4);
      goto LABEL_54;
    }

    if (v8 != 2)
    {
      if (v8 != 3)
      {
        goto LABEL_54;
      }

      if ((v7 & 0x800) != 0)
      {
        v18 = -2;
      }

      else
      {
        v17 = *(v16 + 104);
        if (v17 > 1)
        {
LABEL_41:
          *(*(this + 1880) + 4 * (v12 >> 5)) |= 1 << v12;
          *(v16 + 72) = *(a2 + 4);
          goto LABEL_54;
        }

        v18 = v17 + 1;
      }

      *(v16 + 104) = v18;
      goto LABEL_41;
    }

    if ((v7 & 0x4000000) != 0)
    {
      v29 = -2;
    }

    else
    {
      v28 = *(v16 + 104);
      if (v28 > 1)
      {
LABEL_44:
        *(*(this + 1856) + 4 * (v12 >> 5)) |= 1 << v12;
        *(v16 + 64) = *(a2 + 4);
        goto LABEL_54;
      }

      v29 = v28 + 1;
    }

    *(v16 + 104) = v29;
    goto LABEL_44;
  }

  switch(v8)
  {
    case 4:
      *(v16 + 12) = v7;
      *(v16 + 16) = *(a2 + 6);
      *(v16 + 20) = *(a2 + 7);
      *(*(this + 1904) + 4 * (v12 >> 5)) |= 1 << v12;
      *(v16 + 40) = v14;
      *(v16 + 80) = *(a2 + 4);
      break;
    case 5:
      *(v16 + 24) = v7;
      *(v16 + 28) = *(a2 + 6);
      *(v16 + 32) = *(a2 + 7);
      *(*(this + 1928) + 4 * (v12 >> 5)) |= 1 << v12;
      *(v16 + 44) = v14;
      if ((*(v16 + 34) & 8) != 0)
      {
        *(v16 + 104) = -2;
      }

      else
      {
        v30 = *(v16 + 104);
        if (v30 <= 1)
        {
          *(v16 + 104) = v30 + 1;
          if (v30 < 0 || (a3 & 1) == 0)
          {
            goto LABEL_53;
          }

LABEL_47:
          *(this + 128) = 1;
          HIDWORD(v32) = *(v16 + 24);
          LODWORD(v32) = *(v16 + 28);
          v31 = v32 >> 16;
          v33 = (v32 >> 16) & 0x7FFFFFFF;
          if (v31 < 0)
          {
            v31 = -v33;
          }

          BlueFin::GlPeGlnTimeMgr::stTauMgr::Update(this + 192, 2, v14, vcvtd_n_f64_s32(v31, 0x1FuLL));
          HIDWORD(v35) = *(v16 + 28);
          LODWORD(v35) = *(v16 + 32);
          v34 = v35 >> 10;
          if (v34 < 0)
          {
            v36 = -((v34 >> 10) & 0x1FFFFF);
          }

          else
          {
            v36 = v34 >> 10;
          }

          BlueFin::GlPeGlnTimeMgr::TauGpsMgr::Update(this + 136, 2u, v14, vcvtd_n_f64_s32(v36, 0x1EuLL));
          goto LABEL_53;
        }

        if (a3)
        {
          goto LABEL_47;
        }
      }

LABEL_53:
      *(v16 + 88) = *(a2 + 4);
      break;
    case 0xE:
      *(v16 + 96) = *(a2 + 4);
      if ((*(a2 + 3) % 0x249F0u) >> 6 >= 0x753 && a3 != 0)
      {
        v20 = vdup_n_s32(v7);
        v21 = vshl_u32(v20, 0xFFFFFFFAFFFFFFF0);
        v22 = vceqz_s32(vand_s8(v20, 0x800004000000));
        v23 = vorr_s8(vand_s8(vand_s8(v21, 0x3FF000007FFLL), v22), vbic_s8(vneg_s32(vand_s8(v21, 0x1FF000003FFLL)), v22));
        v24.i64[0] = v23.i32[0];
        v24.i64[1] = v23.i32[1];
        a4 = vmulq_f64(vcvtq_f64_s64(v24), xmmword_298A45C40);
        *&a4.f64[0] = vcvt_f32_f64(a4);
        if (fabsf(*a4.f64) > 0.9 || *(a4.f64 + 1) < -0.0045 || *(a4.f64 + 1) > 0.0035)
        {
          v71 = *(this + 248);
          v72 = *(this + 252);
          v69 = v14;
          v70 = *(this + 241);
          v68 = v11;
          v42 = "GlPeGlnTimeMgr(%hu)[%u]:  [Invalid] Kp:%d  B1:%.6f B2:%.6f\n";
          goto LABEL_77;
        }

        v25 = v7 << 26;
        v26 = (v7 << 26) >> 30;
        v27 = *(this + 29);
        if ((v27 & 4) != 0)
        {
          v44 = *(this + 241);
          if ((*(this + 29) & 8) != 0)
          {
            if (v26 == v44)
            {
              *(this + 242) = 0;
            }

            else
            {
              v47 = ++*(this + 242);
              if (v47 >= 3)
              {
                *(this + 29) = v27 & 0xF7;
                *(this + 241) = v25 >> 30;
              }
            }
          }

          else if (v26 == v44)
          {
            *(this + 29) = v27 | 8;
            *(this + 242) = 0;
            v78 = 0;
            v77 = 0;
            v76 = 0;
            v75 = 0;
            if (BlueFin::GlPeGlnTimeMgr::GetInitialTime(this, &v78, &v77, &v76, &v75))
            {
              if (v77 && (v45 = v76, (v76 - 1462) >= 0xFA4Bu) && v75 <= 0x5265BFF)
              {
                LODWORD(v46) = *(this + 36);
                BlueFin::GlGlnsTime::GlGlnsTime(v74, v77, v76, v46 * 0.001);
                BlueFin::GlTimeDelta::GlTimeDelta(v73, (v14 - v78) * 0.001);
                BlueFin::GlWeekTowTime::operator+=(v74, v73);
                BlueFin::GlPeGlnTimeMgr::serialize(this, 0, v74, 0);
              }

              else
              {
                v57 = *(this + 25);
                v58 = *(this + 26);
                *(this + 24) &= 0xF3u;
                *(this + 25) = v57 & 0xF3;
                *(this + 26) = v58 & 0xF3;
              }
            }

            GlCustomLog(15, "GlPeGlnTimeMgr(%hu)[%u]:  [Verified] Kp:%d  B1:%.6f B2:%.6f\n", v45);
          }

          else
          {
            *(this + 29) = v27 & 0xFB;
          }
        }

        else
        {
          *(this + 244) = 1;
          *(this + 248) = a4.f64[0];
          if (*(this + 240) != 1 || v26 != *(this + 241))
          {
            *(this + 243) = 1;
          }

          *(this + 240) = 1;
          *(this + 241) = v25 >> 30;
          *(this + 29) = v27 | 4;
          GlCustomLog(15, "GlPeGlnTimeMgr(%hu)[%u]:  [Unverified] Kp:%d  B1:%.6f B2:%.6f\n", a3);
        }
      }

      break;
  }

LABEL_54:
  if (*(this + 20) != -7200001)
  {
    return;
  }

  v37 = *(v16 + 104);
  if (!*(v16 + 104))
  {
    v68 = v11;
    v69 = v14;
    v42 = "GlPeGlnTimeMgr(%hu)[%u]: SV health unknown so cannot use for time yet\n";
LABEL_77:
    v43 = 15;
LABEL_78:
    GlCustomLog(v43, v42, v68, v69, v70, *&v71, *&v72);
    return;
  }

  if ((v37 & 0x80) != 0)
  {
    BlueFin::GlSetBase::Remove(this + 1832, v11 - 52);
    BlueFin::GlSetBase::Remove(this + 1904, v11 - 52);
    BlueFin::GlSetBase::Remove(this + 1928, v11 - 52);
    v68 = v11;
    v69 = v14;
    v42 = "GlPeGlnTimeMgr(%hu)[%u]: SV not healthy so cannot use for time\n";
    goto LABEL_77;
  }

  if (v37 != 2)
  {
    v68 = v11;
    v69 = v14;
    v42 = "GlPeGlnTimeMgr(%hu)[%u]: SV health not verified so cannot use for time yet\n";
    goto LABEL_77;
  }

  if ((*(a2 + 5) & 1) == 0)
  {
    return;
  }

  a4.f64[0] = *(a2 + 4) * 1000.0 + 0.5;
  *a7.i64 = a4.f64[0] + trunc(a4.f64[0] * 2.32830644e-10) * -4294967300.0;
  v38.f64[0] = NAN;
  v38.f64[1] = NAN;
  v39 = vnegq_f64(v38);
  a7.i64[0] = vbslq_s8(v39, a7, a4).u64[0];
  if (a4.f64[0] > 4294967300.0)
  {
    a4.f64[0] = *a7.i64;
  }

  if (a4.f64[0] < -4294967300.0)
  {
    *a6.i64 = -a4.f64[0];
    a4.f64[0] = -(a4.f64[0] - trunc(a4.f64[0] * -2.32830644e-10) * -4294967300.0);
    a4.f64[0] = -*vbslq_s8(v39, a4, a6).i64;
  }

  v40 = *(a2 + 3);
  if (a4.f64[0] < 0.0)
  {
    v41 = --a4.f64[0];
  }

  else
  {
    v41 = a4.f64[0];
  }

  if (!v41)
  {
    v41 = BlueFin::GlPeGlnTimeMgr::computeLocalTimeStampMs(this, a2);
    if (!v41)
    {
      v69 = v14;
      v70 = v8;
      v68 = v11;
      v42 = "GlPeGlnTimeMgr(%hu)[%u]:  computeLocalTimeStampMs failed for string number %u\n";
      goto LABEL_95;
    }
  }

  if ((BlueFin::GlPeGlnTimeMgr::CheckGlonassStringTime(this, (v11 - 52), v8) & 1) == 0)
  {
    v69 = v14;
    v70 = v8;
    v68 = v11;
    v42 = "GlPeGlnTimeMgr(%hu)[%u]:  CheckGlonassStringTime failed for string number %u\n";
LABEL_95:
    v43 = 13;
    goto LABEL_78;
  }

  if (v8 <= 3)
  {
    if ((v8 - 2) < 2)
    {
      if ((*(this + 24) & 8) == 0)
      {
        BlueFin::GlPeGlnTimeMgr::ProcessString1(this, v15, v41, v40);
      }

LABEL_121:
      BlueFin::GlPeGlnTimeMgr::ProcessString4(this, v15, v41, v40);
LABEL_139:
      BlueFin::GlPeGlnTimeMgr::ProcessString5(this, v15, v41, v40);
      goto LABEL_140;
    }

    if (v8 == 1)
    {
      if ((*(this + 24) & 8) == 0)
      {
        v48 = 60000 * ((*(a2 + 5) >> 12) & 0x3F) + 3600000 * ((*(a2 + 5) >> 18) & 0x1F) + (((*(a2 + 5) << 20) >> 31) & 0x7530);
        if (v40 == v48)
        {
          BlueFin::GlPeGlnTimeMgr::ProcessSystemTime(this, v41, v40);
        }

        else
        {
          GlCustomLog(13, "GlPeGlnTimeMgr(%hu)[%u]:  System Time in string/ME mismatch: %u!=%u\n", v11, v14, v40, v48);
        }
      }

      BlueFin::GlSetBase::Remove(this + 1832, v11 - 52);
      goto LABEL_121;
    }

    goto LABEL_157;
  }

  if (v8 == 4)
  {
    if ((*(this + 24) & 8) == 0)
    {
      BlueFin::GlPeGlnTimeMgr::ProcessString1(this, v15, v41, v40);
      if (!*(this + 24))
      {
        goto LABEL_138;
      }
    }

    v53 = *(this + 25);
    if ((v53 & 8) != 0)
    {
      goto LABEL_138;
    }

    v54 = *(this + 32);
    if (v41 <= v54)
    {
      goto LABEL_138;
    }

    HIDWORD(v56) = *(a2 + 6);
    LODWORD(v56) = *(a2 + 7);
    v55 = v56 >> 5;
    if ((v55 >> 21) - 1462 <= 0xFFFFFA4A)
    {
      GlCustomLog(13, "GlPeGlnTimeMgr(%hu)[%u]:  Nt out of range:%hu\n");
LABEL_127:
      v61 = this + 1904;
LABEL_134:
      BlueFin::GlSetBase::Remove(v61, v11 - 52);
      return;
    }

    if (v41 - v54 >= 0x5265C00)
    {
      GlCustomLog(13, "GlPeGlnTimeMgr(%hu)[%u]:  DeltaAsicTimeMs on string 4 exceeded:%u\n");
      goto LABEL_127;
    }

    if (*(this + 25))
    {
      v59 = *(this + 40);
      if (v59 != v55 >> 21)
      {
        *(this + 25) = v53 & 0xF3;
        GlCustomLog(12, "GlPeGlnTimeMgr(%hu)[%u]:  NT mismatch detected!  %hu!=%hu\n", v11, v14, v59, v55 >> 21);
        goto LABEL_138;
      }

      v60 = v53 | 8;
    }

    else
    {
      *(this + 40) = v55 >> 21;
      *(this + 44) = v40;
      v60 = 4;
    }

    *(this + 25) = v60;
LABEL_138:
    BlueFin::GlSetBase::Remove(this + 1904, v11 - 52);
    goto LABEL_139;
  }

  if (v8 == 5)
  {
    if ((*(this + 24) & 8) == 0)
    {
      BlueFin::GlPeGlnTimeMgr::ProcessString1(this, v15, v41, v40);
    }

    if (!*(this + 25))
    {
      goto LABEL_154;
    }

    if (!*(this + 24))
    {
      goto LABEL_154;
    }

    v49 = *(this + 26);
    if ((v49 & 8) != 0)
    {
      goto LABEL_154;
    }

    v50 = *(this + 32);
    v51 = v41 - v50;
    if (v41 <= v50)
    {
      goto LABEL_154;
    }

    v52 = (*(a2 + 6) >> 10) & 0x1F;
    if ((v52 - 13) <= 0xFFFFFFF3)
    {
      GlCustomLog(13, "GlPeGlnTimeMgr(%hu)[%u]:  N4 out of range:%u\n");
LABEL_133:
      v61 = this + 1928;
      goto LABEL_134;
    }

    if (v51 >= 0x5265C00)
    {
      GlCustomLog(13, "GlPeGlnTimeMgr(%hu)[%u]:  DeltaAsicTimeMs on string 5 exceeded:%u\n");
      goto LABEL_133;
    }

    if (*(this + 26))
    {
      v62 = *(this + 48);
      if (v62 != v52)
      {
        *(this + 26) = v49 & 0xF3;
        GlCustomLog(12, "GlPeGlnTimeMgr(%hu)[%u]:  N4 mismatch detected!  %d!=%d\n", v11, v14, v62, v52);
        goto LABEL_154;
      }

      v63 = v49 | 8;
    }

    else
    {
      *(this + 48) = v52;
      *(this + 52) = v40;
      v63 = 4;
    }

    *(this + 26) = v63;
LABEL_154:
    BlueFin::GlSetBase::Remove(this + 1928, v11 - 52);
    BlueFin::GlPeGlnTimeMgr::ProcessString4(this, v15, v41, v40);
    goto LABEL_140;
  }

  if (v8 != 14)
  {
LABEL_157:
    v66 = "false";
    DeviceFaultNotify("glpe_glntimemgr.cpp", 806, "SetGlonassDataString", "false");
    v67 = 806;
LABEL_156:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glntimemgr.cpp", v67, v66);
  }

LABEL_140:
  if ((*(this + 24) & 8) != 0 && (*(this + 25) & 8) != 0 && (*(this + 26) & 8) != 0 && *(this + 152) == 1)
  {
    v64 = *(this + 16);
    if (v64 == -7200001)
    {
      *(this + 16) = v14;
LABEL_149:
      v78 = 0;
      v77 = 0;
      v76 = 0;
      if (BlueFin::GlPeGlnTimeMgr::GetInitialTime(this, &v78, &v77, &v76, &v75))
      {
        LODWORD(v65) = *(this + 36);
        BlueFin::GlGlnsTime::GlGlnsTime(v74, v77, v76, v65 * 0.001);
        BlueFin::GlTimeDelta::GlTimeDelta(v73, (v14 - v78) * 0.001);
        BlueFin::GlWeekTowTime::operator+=(v74, v73);
        BlueFin::GlPeGlnTimeMgr::serialize(this, 0, v74, v64 != -7200001);
      }

      return;
    }

    if (*(this + 20) == -7200001 && (v14 - v64) >= 0x61A9)
    {
      *(this + 20) = v14;
      goto LABEL_149;
    }
  }
}
double BlueFin::GlMeSrdAidingMgr::SetSignalAiding(BlueFin::GlMeSrdAidingMgr *this, int **a2, const void **a3, const void **a4, const void **a5, const void **a6, const void **a7)
{
  BlueFin::GlSvIdSet::operator~(this + 98, v21);
  BlueFin::GlSetBase::GlSetBase(&v22, v23, 8u, v21);
  v27 = &v29;
  v28 = 8;
  v29 = 0u;
  v30 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v22, &v27, a2);
  BlueFin::GlSetBase::operator=(&v22, &v27);
  v23[0] = v29;
  v23[1] = v30;
  BlueFin::GlSetBase::GlSetBase(&v24, &v25, 8u, &v22);
  v27 = &v29;
  v28 = 8;
  v29 = 0u;
  v30 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v24, &v27, this + 154);
  BlueFin::GlSetBase::operator=(&v24, &v27);
  v25 = v29;
  v26 = v30;
  BlueFin::GlSetBase::Add(this + 1184, &v24);
  BlueFin::GlSetBase::GlSetBase(&v24, &v25, 8u, a2);
  v27 = &v29;
  v28 = 8;
  v29 = 0u;
  v30 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v24, &v27, this + 154);
  BlueFin::GlSetBase::operator=(&v24, &v27);
  v25 = v29;
  v26 = v30;
  BlueFin::GlSetBase::operator=(this + 784, &v24);
  v13 = v26;
  *(this + 796) = v25;
  *(this + 812) = v13;
  BlueFin::GlSetBase::GlSetBase(&v24, &v25, 8u, a3);
  v27 = &v29;
  v28 = 8;
  v29 = 0u;
  v30 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v24, &v27, this + 154);
  BlueFin::GlSetBase::operator=(&v24, &v27);
  v25 = v29;
  v26 = v30;
  BlueFin::GlSetBase::operator=(this + 832, &v24);
  v14 = v26;
  *(this + 844) = v25;
  *(this + 860) = v14;
  BlueFin::GlSetBase::GlSetBase(&v24, &v25, 8u, a4);
  v27 = &v29;
  v28 = 8;
  v29 = 0u;
  v30 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v24, &v27, this + 154);
  BlueFin::GlSetBase::operator=(&v24, &v27);
  v25 = v29;
  v26 = v30;
  BlueFin::GlSetBase::operator=(this + 880, &v24);
  v15 = v26;
  *(this + 892) = v25;
  *(this + 908) = v15;
  BlueFin::GlSetBase::GlSetBase(&v24, &v25, 8u, a5);
  v27 = &v29;
  v28 = 8;
  v29 = 0u;
  v30 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v24, &v27, this + 154);
  BlueFin::GlSetBase::operator=(&v24, &v27);
  v25 = v29;
  v26 = v30;
  BlueFin::GlSetBase::operator=(this + 928, &v24);
  v16 = v26;
  *(this + 940) = v25;
  *(this + 956) = v16;
  BlueFin::GlSetBase::GlSetBase(&v24, &v25, 8u, a6);
  v27 = &v29;
  v28 = 8;
  v29 = 0u;
  v30 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v24, &v27, this + 154);
  BlueFin::GlSetBase::operator=(&v24, &v27);
  v25 = v29;
  v26 = v30;
  BlueFin::GlSetBase::operator=(this + 976, &v24);
  v17 = v26;
  *(this + 988) = v25;
  *(this + 1004) = v17;
  BlueFin::GlSetBase::GlSetBase(&v24, &v25, 8u, a7);
  v27 = &v29;
  v28 = 8;
  v29 = 0u;
  v30 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v24, &v27, this + 154);
  BlueFin::GlSetBase::operator=(&v24, &v27);
  v25 = v29;
  v26 = v30;
  BlueFin::GlSetBase::operator=(this + 1024, &v24);
  result = *&v25;
  v19 = v26;
  *(this + 1036) = v25;
  *(this + 1052) = v19;
  return result;
}

__n128 BlueFin::GlMeSrdSatMgr::SetDataFrmsEnabled(BlueFin::GlMeSrdSatMgr *this, const BlueFin::GlSvIdSet *a2)
{
  if (!BlueFin::GlSetBase::operator==(a2, this + 648))
  {
    BlueFin::GlSetBase::operator=(this + 648, a2);
    result = *(a2 + 12);
    v5 = *(a2 + 28);
    *(this + 660) = result;
    *(this + 676) = v5;
  }

  return result;
}

void BlueFin::GlReqSm::GenerateTowAssist(BlueFin::GlReqSm *this)
{
  v2 = *(this + 3048);
  v13 = &v15;
  v14 = 3;
  v15 = v2;
  v16 = 0;
  v3 = *(this + 785);
  v4 = *(v3 + 2568);
  if (BlueFin::GlPeTimeManager::TimeKnown(v3, 0, 0x200B20u))
  {
    v5 = v4 - 89;
    v6 = v5;
    if (v5 <= 0xFF9222FE)
    {
      v6 = v5;
    }

    v7.n128_f64[0] = BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(*(this + 785), 0, 0, v10, v6);
    v8 = v12;
    if (v12 != -1)
    {
      v9 = *(this + 806);
      *(v9 + 376) = v11;
      *(v9 + 384) = v5;
      *(v9 + 380) = v8 / 0x3E8;
      if ((v2 & 0xC) != 0 || *(v9 + 54) != (*(v9 + 55) + 1))
      {
        (*(**(this + 39) + 264))(*(this + 39), v9 + 8, v7);
      }
    }
  }
}

uint64_t BlueFin::GlPeRtiRequestor::OnHeartBeat(BlueFin::GlPeRtiRequestor *this, uint64_t a2)
{
  v3 = MEMORY[0x2A1C7C4A8](this, a2);
  v57 = *MEMORY[0x29EDCA608];
  result = *(v3 + 224);
  if (*(*(result + 6288) + 120012) != 1 && !*(result + 31648) && !*(result + 31688))
  {
    v5 = v2;
    result = BlueFin::QHsm::isIn(result, BlueFin::GlReqSm::warmstandbystate);
    if (!result && (*(*(v3 + 224) + 31744) & 1) == 0)
    {
      v6 = BlueFin::GlPeRtiRequestHelper::OnHeartBeat((v3 + 32), v5);
      if (v6 == 2)
      {
        v16 = &unk_2A1F10900;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        memset(v24, 0, 28);
        v15 = *(v3 + 56);
        if (v15 == 1 && (v3 + 64) != &v16)
        {
          v22 = *(v3 + 152);
          v23 = *(v3 + 168);
          *v24 = *(v3 + 184);
          *&v24[16] = *(v3 + 200);
          v18 = *(v3 + 88);
          v19 = *(v3 + 104);
          v20 = *(v3 + 120);
          v21 = *(v3 + 136);
          v17 = *(v3 + 72);
          *&v24[24] = *(v3 + 208);
        }

        if (v15)
        {
          BlueFin::GlPeSvHealthHelper::OnNewIntegrityInfo((*(v3 + 16) + 32), &v17, v7, v8, v9, v10, v11, v12, v16, v17, *(&v17 + 1), v18, *(&v18 + 1), v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), *v24, *&v24[8], *&v24[16], *&v24[24], v24[28]);
        }
      }

      else if (v6 == 1 && *(v3 + 8))
      {
        GlCustomLog(14, "REQ_RTI\n");
        bzero(&v16, 0x38A8uLL);
        LODWORD(v16) = 32;
        v13 = *(v3 + 8);
        v14 = *(v13 + 128);
        if (v14)
        {
          v14(*(v13 + 8), &v16);
        }
      }

      return BlueFin::GlPeSvHealthMgr::OnHeartBeat(*(v3 + 16), v5, v7, v8, v9, v10, v11, v12, v16, v17, *(&v17 + 1), v18, *(&v18 + 1), v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), *v24, *&v24[8], *&v24[16], *&v24[24], v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
    }
  }

  return result;
}

uint64_t BlueFin::GlPeTimeManager::UpdateLeapSecFromSigMeas(BlueFin::GlPeTimeManager *this)
{
  v66 = *MEMORY[0x29EDCA608];
  if (*(this + 2712) & 2) == 0 || (*(this + 2585))
  {
    return 0;
  }

  BlueFin::GlSignalIdSet::GetPrimarySignalSvIdSet(&__src, (*this + 8));
  v2 = v64;
  v58 = v64;
  v3 = __src;
  v4 = 4 * v64;
  memcpy(v62, __src, v4);
  v60 = 0;
  v59 = 0;
  v61 = v62[0];
  BlueFin::GlSetIterator::operator++(&v58);
  if (v59 != v58)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v60;
      v65[v7] = -1;
      if (v10)
      {
        if (v10 < 0x21)
        {
          goto LABEL_8;
        }

        if (v10 < 0x42)
        {
          if (v10 >= 0x34)
          {
            v65[v7] = 1;
            ++v8;
          }

          goto LABEL_9;
        }

        if (v10 <= 0x4B)
        {
LABEL_8:
          v65[v7] = 0;
          ++v9;
        }
      }

LABEL_9:
      v11 = v7 + 1;
      BlueFin::GlSetIterator::operator++(&v58);
      if (v7 <= 0x63)
      {
        ++v7;
        if (v59 != v58)
        {
          continue;
        }
      }

      v5 = v11;
      v6 = v9 == 1;
      v48 = v8 == 1;
      goto LABEL_18;
    }
  }

  v5 = 0;
  v6 = 0;
  v48 = 0;
LABEL_18:
  v58 = v2;
  memcpy(v62, v3, v4);
  v60 = 0;
  v59 = 0;
  v61 = v62[0];
  BlueFin::GlSetIterator::operator++(&v58);
  result = 0;
  if (v59 != v58 && v5)
  {
    v13 = 0;
    v49[8] = 0;
    v50 = v5;
    v14 = 0.0;
    *v49 = !v6;
    v15 = 0.0;
    while (1)
    {
      v16 = v65[v13];
      if (v16 != -1)
      {
        v17 = v60;
        v55[0] = v60;
        v56 = 0;
        v57 = 575;
        if (v60 - 189 >= 0xFFFFFF44)
        {
          v18 = BlueFin::GlSvId::s_aucSvId2gnss[v60];
          if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v18] == 255)
          {
            v56 = -1;
          }

          else
          {
            v57 = BlueFin::GlSignalId::s_ausGnss2signalId[v18] + v60 - BlueFin::GlSvId::s_aucGnss2minSvId[v18];
          }
        }

        MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*this, v55, 0, 0);
        v20 = MeMeas;
        if (MeMeas)
        {
          v21 = v49[0];
          if (v16)
          {
            v21 = 1;
          }

          if (v21)
          {
            v22 = v16 == 1;
            v23 = v48;
            if (v16 != 1)
            {
              v23 = 0;
            }

            if (v23)
            {
              if (*(this + 642) >= 0xEA61u && (MeMeas[12] & 0x20) != 0)
              {
                v15 = *(MeMeas + 8);
                v22 = 1;
                v49[4] = 1;
              }

              else
              {
                v22 = 1;
              }
            }
          }

          else if (*(this + 642) >= 0xEA61u && (MeMeas[12] & 0x20) != 0)
          {
            v22 = 0;
            v14 = *(MeMeas + 8);
            v49[8] = 1;
          }

          else
          {
            v22 = 0;
          }

          LOBYTE(v53) = v64;
          memcpy(v54, __src, 4 * v64);
          WORD1(v53) = 0;
          BYTE1(v53) = 0;
          HIDWORD(v53) = v54[0];
          BlueFin::GlSetIterator::operator++(&v53);
          if (BYTE1(v53) != LOBYTE(v53))
          {
            v24 = v65;
            v25 = v22 & (v49[4] ^ 1);
            v26 = v50;
            do
            {
              if (BYTE2(v53) >= v17)
              {
                break;
              }

              if (!v26)
              {
                DeviceFaultNotify("glpe_timemgr.cpp", 6012, "UpdateLeapSecFromSigMeas", "ucCurMeas2 < ucNumMeas");
                __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timemgr.cpp", 6012, "ucCurMeas2 < ucNumMeas");
              }

              v27 = *v24;
              if (*v24 != -1)
              {
                LOBYTE(v51) = BYTE2(v53);
                HIDWORD(v51) = 0;
                LOWORD(v52) = 575;
                if (BYTE2(v53) - 189 >= 0xFFFFFF44)
                {
                  v28 = BlueFin::GlSvId::s_aucSvId2gnss[BYTE2(v53)];
                  if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v28] == 255)
                  {
                    HIDWORD(v51) = -1;
                  }

                  else
                  {
                    LOWORD(v52) = BlueFin::GlSignalId::s_ausGnss2signalId[v28] + BYTE2(v53) - BlueFin::GlSvId::s_aucGnss2minSvId[v28];
                  }
                }

                v29 = BlueFin::GlPeMsmtMgr::GetMeMeas(*this, &v51, 0, 0);
                if (v29)
                {
                  if ((v20[12] & 0x20) != 0 && (v29[12] & 0x20) != 0)
                  {
                    if ((v25 & (v27 == 1)) == 1)
                    {
                      v30 = *(v20 + 8);
                      if (vabdd_f64(v30, *(v29 + 8)) < 0.1)
                      {
                        v49[4] = 1;
                        goto LABEL_61;
                      }
                    }

                    if (!(v49[8] & 1 | ((v27 | v16) != 0)) && vabdd_f64(*(v20 + 8), *(v29 + 8)) < 0.1)
                    {
                      v49[8] = 1;
                      v30 = v15;
                      v14 = *(v20 + 8);
                      goto LABEL_61;
                    }
                  }

                  if (v49[8] & v49[4])
                  {
                    *&v49[4] = 0x100000001;
                    v30 = v15;
LABEL_61:
                    v15 = v30;
                    break;
                  }
                }
              }

              BlueFin::GlSetIterator::operator++(&v53);
              ++v24;
              --v26;
            }

            while (BYTE1(v53) != LOBYTE(v53));
          }

          if (v49[8] & 1) != 0 && (v49[4])
          {
            v43 = v14 - floor(v14 / 86400.0) * 86400.0 + 10800.0 - v15;
            v44 = 0.5;
            if (v43 <= 0.0 && (v44 = -0.5, v43 >= 0.0))
            {
              LOBYTE(v45) = 0;
            }

            else
            {
              v45 = (v43 + v44);
              if (v45 > 86399)
              {
                LOBYTE(v45) = v45 ^ 0x80;
              }
            }

            v46 = *(this + 848);
            if (v46 < *(this + 850) || v46 > *(this + 851))
            {
              return BlueFin::GlPeTimeManager::updateLeapSeconds(this, v45, 8, 0, -128);
            }

            if (*(this + 3413) != 1 || (*(this + 3415) & 1) != 0)
            {
              return 0;
            }

            result = 0;
LABEL_114:
            *(this + 2596) = v45;
            *(this + 648) |= 0x100u;
            return result;
          }

          v31 = *(this + 848);
          if (v31 >= *(this + 850) && v31 <= *(this + 851) && (*(this + 3413) & v49[4] & 1) != 0)
          {
            break;
          }
        }
      }

LABEL_88:
      ++v13;
      BlueFin::GlSetIterator::operator++(&v58);
      if (v59 == v58 || v13 >= v50)
      {
        return 0;
      }
    }

    if (!*(this + 646))
    {
      goto LABEL_87;
    }

    BlueFin::GlPeTimeManager::GetTime(&v53, this, **this, 1);
    v51 = &off_2A1F0E430;
    v52 = 0;
    v32.n128_f64[0] = BlueFin::GlPeGnssTime::GetGlns(&v53, &v51);
    v33 = 0;
    if (BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
    {
      v33 = HIDWORD(v52) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
    }

    v34 = (v51[4])(&v51, v32);
    v36 = 10799.0;
    if (!v33)
    {
      v36 = (v34 % 0x15180);
    }

    LODWORD(v35) = v52;
    v37 = v36 + v35 * 2.32830644e-10;
    v53 = 0.0;
    BlueFin::GlPeTimeManager::GetAvgFlightTimeMs(this, v55, &v53, &v51);
    if (v37 <= 10800.0 || v37 >= 10980.0 || (v38 = v15 + v53 * 0.001, v38 <= 10800.0) || v38 >= 10980.0)
    {
LABEL_87:
      v49[4] = 1;
      goto LABEL_88;
    }

    v39 = v37 - v38;
    v40 = v37 - v38 < 0.0;
    if (v37 - v38 <= 0.0)
    {
      v41 = 0.0;
      if (!v40)
      {
LABEL_84:
        if (fabs(v41) < 0.1)
        {
          v47 = 0;
          goto LABEL_113;
        }

        if (v41 > 0.9 && v41 < 1.1)
        {
          goto LABEL_110;
        }

        goto LABEL_87;
      }

      v41 = ceil(v39 + -0.5);
    }

    else
    {
      v41 = floor(v39 + 0.5);
    }

    if (v41 > -1.1 && v41 < -0.9)
    {
LABEL_110:
      v47 = -1;
LABEL_113:
      result = 0;
      LOBYTE(v45) = *(this + 2588) + v47;
      goto LABEL_114;
    }

    goto LABEL_84;
  }

  return result;
}

uint64_t BlueFin::GlMeMsmtMgr::MsmtsComplete(BlueFin::GlMeMsmtMgr *this, uint64_t a2)
{
  BlueFin::GlSetBase::operator=(this + 88, this);
  *(this + 116) = *(this + 28);
  *(this + 132) = *(this + 44);
  *(this + 148) = *(this + 60);
  *(this + 10) = *(this + 72);
  *(this + 100) = *(this + 12);
  *(this + 249) = -1020657664;
  *(this + 1002) = 0;
  *(this + 1000) = 0;
  v4 = v33;
  v31 = v33;
  v5 = 19;
  v32 = 19;
  memset(v33, 0, sizeof(v33));
  __src = v30;
  v29 = 19;
  memset(v30, 0, sizeof(v30));
  v23 = *(this + 8);
  memcpy(v27, *this, 4 * v23);
  v25 = 0;
  v24 = 0;
  v26 = v27[0];
  BlueFin::GlSetIterator::operator++(&v23);
  if (v24 == v23)
  {
    v6 = 0;
    goto LABEL_15;
  }

  v6 = 0;
  do
  {
    v7 = v25;
    if (v25 >= 0x23FuLL)
    {
      goto LABEL_27;
    }

    v8 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v25;
    v9 = *v8;
    v10 = v8[1];
    v20[0] = *v8;
    v21 = v10;
    v22 = v25;
    v11 = *(BlueFin::GlMeMsmtMgr::GetSigMeas(this, v20, a2, 1) + 116);
    if (v11 >= 20.0)
    {
      if (v11 >= 30.0)
      {
        v12 = 1 << v7;
        v13 = __src;
      }

      else
      {
        if (*(this + 904))
        {
          goto LABEL_13;
        }

        v12 = 1 << v7;
        v13 = v31;
      }

      *&v13[(v7 >> 3) & 0x1FFC] |= v12;
    }

    else if ((*(this + 904) & 1) == 0)
    {
      v20[0] = v9;
      v21 = v10;
      v22 = v7;
      v6 = BlueFin::GlMeMsmtMgr::FeedMkfMeas(this, v20, a2) | v6;
    }

LABEL_13:
    BlueFin::GlSetIterator::operator++(&v23);
  }

  while (v24 != v23);
  v5 = v32;
  v4 = v31;
LABEL_15:
  v23 = v5;
  memcpy(v27, v4, 4 * v5);
  v25 = 0;
  v24 = 0;
  v26 = v27[0];
  BlueFin::GlSetIterator::operator++(&v23);
  if (v24 != v23)
  {
    while (v25 < 0x23FuLL)
    {
      v14 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v25;
      v15 = *v14;
      LODWORD(v14) = v14[1];
      v20[0] = v15;
      v21 = v14;
      v22 = v25;
      v6 = BlueFin::GlMeMsmtMgr::FeedMkfMeas(this, v20, a2) | v6;
      BlueFin::GlSetIterator::operator++(&v23);
      if (v24 == v23)
      {
        goto LABEL_18;
      }
    }

LABEL_27:
    DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
  }

LABEL_18:
  v23 = v29;
  memcpy(v27, __src, 4 * v29);
  v25 = 0;
  v24 = 0;
  v26 = v27[0];
  BlueFin::GlSetIterator::operator++(&v23);
  if (v24 != v23)
  {
    while (v25 < 0x23FuLL)
    {
      v16 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v25;
      v17 = *v16;
      LODWORD(v16) = v16[1];
      v20[0] = v17;
      v21 = v16;
      v22 = v25;
      v6 = BlueFin::GlMeMsmtMgr::FeedMkfMeas(this, v20, a2) | v6;
      BlueFin::GlSetIterator::operator++(&v23);
      if (v24 == v23)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_27;
  }

LABEL_21:
  bzero(*this, ((4 * *(this + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  if (!v6 || (*(*(this + 24) + 248) = a2, ((*(**(this + 23) + 32))(*(this + 23), a2, v6) & 1) == 0))
  {
    (*(**(this + 23) + 16))(*(this + 23), a2);
  }

  *(this + 50) = a2;
  v18 = *(this + 24);
  LODWORD(v31) = 0;
  result = *(v18 + 280);
  if (result)
  {
    return (*(*result + 16))(result, 2, &v31);
  }

  return result;
}

double BlueFin::GlMeAcqWinComputer::GlMeAcqWinComputer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = &off_2A1F0E398;
  *(a1 + 152) = &off_2A1F0E398;
  *(a1 + 40) = 0;
  *(a1 + 44) = -1;
  *(a1 + 48) = 575;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *&result = 3240099840;
  *(a1 + 68) = xmmword_298A339D0;
  *(a1 + 84) = 2139095039;
  *(a1 + 88) = 0;
  *(a1 + 96) = 2139095039;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 112) = -1;
  *(a1 + 116) = -1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = -1;
  *(a1 + 168) = 575;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 188) = xmmword_298A339D0;
  *(a1 + 204) = 2139095039;
  *(a1 + 208) = 0;
  *(a1 + 216) = 2139095039;
  *(a1 + 220) = 0;
  *(a1 + 224) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 232) = -1;
  *(a1 + 236) = -1;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 264) = 0;
  *(a1 + 256) = 0;
  *(a1 + 272) = 0;
  return result;
}

unsigned __int8 *BlueFin::GlMeSrdSatTrackMgr::ProcessPending(void *a1, int a2, uint64_t a3)
{
  v4 = (a1 + 521);
  *(a1 + 1812) = a2;
  v5 = a1[689];
  v202 = (a1 + 521);
  if (!*v5)
  {
    v6 = *(a1 + 5520);
    if (v6 < 2)
    {
LABEL_6:
      v10 = a1[678];
      if (!*v10)
      {
        v146 = *(a1 + 5432);
        if (v146 < 2)
        {
          goto LABEL_38;
        }

        v147 = v146 - 1;
        v148 = v10 + 1;
        while (!*v148++)
        {
          if (!--v147)
          {
            goto LABEL_38;
          }
        }
      }
    }

    else
    {
      v7 = v6 - 1;
      v8 = v5 + 1;
      while (!*v8++)
      {
        if (!--v7)
        {
          goto LABEL_6;
        }
      }
    }
  }

  LODWORD(v217) = *(a1 + 4008);
  memcpy(v218, a1[500], 4 * v217);
  HIDWORD(v217) = *v218;
  BlueFin::GlSetIterator::operator++(&v217);
  while (BYTE1(v217) != v217)
  {
    v11 = WORD1(v217);
    BlueFin::GlSatCarrId::GlSatCarrId(&__src, WORD1(v217));
    v12 = __src;
    BlueFin::GlMeSrdSatMgr::GetSvid(&v259, a1[1], __src);
    BlueFin::GlSatCarrId::GlSatCarrId(&__src, v11);
    v13 = HIDWORD(__src);
    v14 = 575;
    if (HIDWORD(__src) != -1 && v259 - 189 >= 0xFFFFFF44)
    {
      v15 = BlueFin::GlSvId::s_aucSvId2gnss[v259];
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * SHIDWORD(__src) - SHIDWORD(__src) + v15] != 255)
      {
        v14 = BlueFin::GlSignalId::s_ausGnss2signalId[v15] + v259 - BlueFin::GlSvId::s_aucGnss2minSvId[v15] + WORD2(__src) * BlueFin::GlSvId::s_aucGnss2numSvId[v15];
      }
    }

    LOBYTE(v235) = v259;
    BlueFin::GlSignalIdSet::GetSignalIdSetForSv(a1 + 5424, &v235, &__src);
    LOBYTE(v235) = v226;
    memcpy(&v236, __src, 4 * v226);
    WORD1(v235) = 0;
    BYTE1(v235) = 0;
    HIDWORD(v235) = v236;
    while (1)
    {
      BlueFin::GlSetIterator::operator++(&v235);
      if (BYTE1(v235) == v235)
      {
        break;
      }

      v16 = WORD1(v235);
      if (WORD1(v235) >= 0x23FuLL)
      {
        v191 = "usIndex < NUM_SIGNAL_IDS";
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        v192 = "glsignalid.h";
        v193 = 578;
LABEL_275:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v192, v193, v191);
      }

      v17 = *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v235) + 1);
      BlueFin::GlSatCarrId::GlSatCarrId(&v262, v12, v17);
      if (((*(a1[500] + 4 * ((v262 + 100 * BYTE4(v262)) >> 5)) >> ((v262 + 100 * BYTE4(v262)) & 0x1F)) & 1) == 0)
      {
        v18 = a1[2];
        LOBYTE(v266) = *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v16);
        v19 = v266;
        HIDWORD(v266) = v17;
        v267 = v16;
        AidIdFromSignalId = BlueFin::GlMeSrdAidingMgr::GetAidIdFromSignalId(v18, &v266);
        v21 = BlueFin::GlSvId::s_aucSvId2gnss[v19];
        v22 = 25;
        if (v21 > 3)
        {
          switch(v21)
          {
            case 4u:
              if ((v19 - 134) >= 5 && (v19 - 76) >= 5)
              {
                v22 = 59;
              }

              else
              {
                v22 = 60;
              }

              break;
            case 5u:
              v22 = 71;
              break;
            case 6u:
              break;
            default:
              v191 = "0";
              DeviceFaultNotify("glmesrd_track_mgr.cpp", 549, "GetDirectToTrkBsid", "0");
              v192 = "glmesrd_track_mgr.cpp";
              v193 = 549;
              goto LABEL_275;
          }
        }

        else if (v21 == 2)
        {
          v22 = 46;
        }

        BlueFin::GlMeSrdSatMgr::AddCarrier(a1[1], v12, v22, AidIdFromSignalId, v17);
        BlueFin::GlMeSrdSatTrackMgr::AddSatCarr(a1, &v262);
      }

      BlueFin::GlSetBase::Remove((a1 + 678), v16);
    }

    if ((*(a1[689] + 4 * (v14 >> 5)) >> (v14 & 0x1F)))
    {
      BlueFin::GlSatCarrId::GlSatCarrId(&v235, v12, v13);
      if (((*(a1[590] + 4 * ((v235 + 100 * BYTE4(v235)) >> 5)) >> ((v235 + 100 * BYTE4(v235)) & 0x1F)) & 1) == 0)
      {
        BlueFin::GlSatCarrId::GlSatCarrId(&v266, v12, v13);
        v24 = a1[1];
        BlueFin::GlSatCarrId::GlSatCarrId(&v235, v12, v13);
        *(*(v24 + 6384) + 4 * ((v235 + 100 * BYTE4(v235)) >> 5)) |= 1 << (v235 + 100 * BYTE4(v235));
        BlueFin::GlMeSrdSatTrackMgr::RemoveSatCarr(a1, &v266);
        *(a1[590] + 4 * ((v266 + 100 * BYTE4(v266)) >> 5)) |= 1 << (v266 + 100 * BYTE4(v266));
        BlueFin::GlSetBase::Remove((a1 + 689), v14);
      }
    }

    BlueFin::GlSetIterator::operator++(&v217);
  }

  v4 = v202;
LABEL_38:
  BlueFin::GlSetBase::GlSetBase(&v217, &v218[4], 0x10u, a1 + 600);
  __src = v227;
  LOBYTE(v226) = 16;
  memset(v227, 0, 64);
  BlueFin::GlSetBase::OperatorBinaryInversion(&v217, &__src);
  BlueFin::GlSetBase::operator=(&v217, &__src);
  *&v218[4] = *v227;
  *&v218[20] = *&v227[16];
  *&v218[36] = *&v227[32];
  *&v218[52] = *&v227[48];
  BlueFin::GlSetBase::operator&=((a1 + 590), &v217);
  BlueFin::GlSetBase::operator=((a1 + 600), (a1 + 590));
  v25 = *(a1 + 4780);
  *(a1 + 4844) = *(a1 + 4764);
  *(a1 + 4860) = v25;
  v26 = *(a1 + 4748);
  *(a1 + 4812) = *(a1 + 4732);
  *(a1 + 4828) = v26;
  v27 = a1[638];
  v28 = 0x2A18BA000;
  if (*v27)
  {
    goto LABEL_293;
  }

  v29 = v4[944];
  if (v29 < 2)
  {
LABEL_43:
    v33 = a1[658];
    if (*v33)
    {
      goto LABEL_293;
    }

    v34 = v4[1104];
    if (v34 >= 2)
    {
      v35 = v34 - 1;
      v36 = v33 + 1;
      do
      {
        if (*v36++)
        {
          goto LABEL_293;
        }
      }

      while (--v35);
    }

    v217 = BlueFin::GlMeSrdSatTrackMgr::OnReliableTransactionAck;
    *v218 = a1;
    *&v218[8] = 256;
    v218[10] = 0;
    *&v218[16] = a3;
    *&v218[24] = 0;
    *&v218[28] = 0;
    (*(*a3 + 16))(a3, 1);
    LOBYTE(__src) = *v4;
    v38 = a1[520];
    v39 = 4 * __src;
    memcpy(&v226, v38, v39);
    WORD1(__src) = 0;
    BYTE1(__src) = 0;
    HIDWORD(__src) = v226;
    BlueFin::GlSetIterator::operator++(&__src);
    if (BYTE1(__src) != __src)
    {
      do
      {
        BlueFin::GlSatCarrId::GlSatCarrId(&v266, WORD1(__src));
        v40 = v266;
        EswSignalIndex = BlueFin::GlMeSrdAsicUnitConverter::GetEswSignalIndex(HIDWORD(v266));
        v42 = a1[2];
        BlueFin::GlMeSrdSatMgr::GetSignalId(&v235, a1[1], &v266);
        v43 = BlueFin::GlMeSrdAidingMgr::GetAidIdFromSignalId(v42, &v235);
        if ((*(*a1[3] + 352))(a1[3]))
        {
          v44 = (*(**&v218[16] + 48))(*&v218[16]);
          v45 = (*(*v44 + 64))(v44);
          (*(*v45 + 80))(v45, &v217, v40, EswSignalIndex, v43);
        }

        else
        {
          if (EswSignalIndex != 1)
          {
            DeviceFaultNotify("glmesrd_track_mgr.cpp", 732, "UpdateAidingId", "carrier_band == ESW_CARRIER_BAND_1");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_track_mgr.cpp", 732, "carrier_band == ESW_CARRIER_BAND_1");
          }

          v46 = (*(**&v218[16] + 48))(*&v218[16]);
          v47 = (*(*v46 + 64))(v46);
          (*(*v47 + 72))(v47, &v217, v40, v43);
        }

        BlueFin::GlSetIterator::operator++(&__src);
      }

      while (BYTE1(__src) != __src);
      v38 = a1[520];
      v39 = 4 * *v4;
    }

    bzero(v38, ((v39 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    BlueFin::GlMeSrdTransaction::Complete(&v217);
    BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v217);
    v203[0] = BlueFin::GlMeSrdSatTrackMgr::OnReliableTransactionAck;
    v203[1] = a1;
    v204 = 256;
    v205 = 0;
    v206 = a3;
    v207 = 0;
    v208 = 0;
    (*(*a3 + 16))(a3, 1);
    v266 = &v268;
    LOBYTE(v267) = 16;
    v268 = 0u;
    v269 = 0u;
    v270 = 0u;
    v271 = 0u;
    v262 = &v263[4];
    v263[0] = 16;
    memset(&v263[4], 0, 32);
    v264 = 0u;
    v265 = 0u;
    v259 = v261;
    v260 = 16;
    memset(v261, 0, 64);
    v256 = v258;
    v257 = 16;
    memset(v258, 0, 64);
    v253 = v255;
    v254 = 16;
    memset(v255, 0, 64);
    BlueFin::GlSetBase::GlSetBase(&v235, &v237, 0x10u, a1 + 638);
    __src = v227;
    LOBYTE(v226) = 16;
    memset(v227, 0, 64);
    BlueFin::GlSetBase::OperatorBinaryOr(&v235, &__src, a1 + 648);
    BlueFin::GlSetBase::operator=(&v235, &__src);
    v237 = *v227;
    v238 = *&v227[16];
    v239 = *&v227[32];
    v240 = *&v227[48];
    BlueFin::GlSetBase::GlSetBase(&v217, &v218[4], 0x10u, &v235);
    __src = v227;
    LOBYTE(v226) = 16;
    memset(v227, 0, 64);
    BlueFin::GlSetBase::OperatorBinaryOr(&v217, &__src, a1 + 658);
    BlueFin::GlSetBase::operator=(&v217, &__src);
    *&v218[4] = *v227;
    *&v218[20] = *&v227[16];
    *&v218[36] = *&v227[32];
    *&v218[52] = *&v227[48];
    BlueFin::GlSetBase::GlSetBase(&v251, v252, 0x10u, &v217);
    __src = v227;
    LOBYTE(v226) = 16;
    memset(v227, 0, 64);
    BlueFin::GlSetBase::OperatorBinaryOr(&v251, &__src, a1 + 668);
    BlueFin::GlSetBase::operator=(&v251, &__src);
    v252[0] = *v227;
    v252[1] = *&v227[16];
    v252[2] = *&v227[32];
    v252[3] = *&v227[48];
    v242 = &unk_2A1F0E1A0;
    v243 = 0;
    v244 = 0x36A7C5AC00000000;
    v245 = 0;
    v246 = 2139095039;
    v247 = 0;
    v248 = 2139095039;
    v249 = 0;
    v250 = 0x36A7C5AC7F7FFFFFLL;
    (*(**a1 + 96))(*a1, &v242, *(a1 + 1812));
    v241 = 0;
    v48 = (*(**a1 + 16))(*a1, *(a1 + 1812), &v241);
    LOBYTE(v235) = *(a1 + 4008);
    memcpy(&v236, a1[500], 4 * v235);
    WORD1(v235) = 0;
    BYTE1(v235) = 0;
    HIDWORD(v235) = v236;
    BlueFin::GlSetIterator::operator++(&v235);
    v200 = a1 + 4;
    if (BYTE1(v235) != v235)
    {
      v198 = v48;
      while (1)
      {
        BlueFin::GlSatCarrId::GlSatCarrId(v211, WORD1(v235));
        if ((*(a1[510] + ((v211[0] >> 3) & 0x1C)) >> (v211[0] & 0x1F)) & 1) != 0 || ((*(v251 + 4 * ((v211[0] + 100 * v211[4]) >> 5)) >> ((v211[0] + 100 * v211[4]) & 0x1F)))
        {
          goto LABEL_219;
        }

        BlueFin::GlMeSrdSatMgr::GetSvid(&v234, a1[1], v211[0]);
        v49 = v234;
        LOBYTE(v213) = v234;
        HIDWORD(v213) = *&v211[4];
        v214 = 575;
        if (*&v211[4] != -1 && v234 - 189 >= 0xFFFFFF44)
        {
          v50 = BlueFin::GlSvId::s_aucSvId2gnss[v234];
          if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *&v211[4] - *&v211[4] + v50] == 255)
          {
            HIDWORD(v213) = -1;
          }

          else
          {
            v214 = BlueFin::GlSignalId::s_ausGnss2signalId[v50] + v234 - BlueFin::GlSvId::s_aucGnss2minSvId[v50] + *&v211[4] * BlueFin::GlSvId::s_aucGnss2numSvId[v50];
          }
        }

        v51 = &v200[4 * BlueFin::GlMeSrdSatMgr::GetTrackChannel(a1[1], v211)];
        if (!*v51)
        {
          goto LABEL_219;
        }

        v52 = *(v51 + 2);
        v53 = v52 > 0x11;
        v54 = (1 << v52) & 0x21C00;
        if (v53 || v54 == 0)
        {
          goto LABEL_219;
        }

        __src = &off_2A1F0E398;
        LOBYTE(v226) = 0;
        *v227 = -1;
        *&v227[4] = 575;
        *&v227[12] = 0;
        HIDWORD(v56) = 0;
        *&v227[24] = xmmword_298A339D0;
        *&v227[20] = 0;
        *&v227[40] = 2139095039;
        *&v227[44] = 0;
        *&v227[52] = 2139095039;
        *&v227[56] = 0;
        *&v227[60] = 0x7FEFFFFFFFFFFFFFLL;
        v228 = -1;
        v229 = -1;
        v231 = 0;
        v232 = 0;
        v230 = 0;
        v233 = 0;
        v217 = &off_2A1F0E398;
        v218[0] = 0;
        *&v218[4] = -1;
        *&v218[8] = 575;
        *&v218[16] = 0;
        *&v218[28] = xmmword_298A339D0;
        *&v218[24] = 0;
        *&v218[44] = 2139095039;
        *&v218[48] = 0;
        *&v218[56] = 2139095039;
        *&v218[60] = 0;
        *&v218[64] = 0x7FEFFFFFFFFFFFFFLL;
        v219 = -1;
        v220 = -1;
        v222 = 0;
        v223 = 0;
        v221 = 0;
        v224 = 0;
        v57 = v49 - 52;
        v216 = v48;
        if ((v49 - 52) <= 0xD)
        {
          v216 = v48 & ((v241 & 0x80) >> 7);
        }

        v58 = *a1;
        LODWORD(v56) = *(a1 + 1812);
        LODWORD(v209) = 16;
        v59 = (*(*v58 + 24))(v58, &v213, &__src, &v209, &v242, &v216, v56, 0.0, 0.0);
        v59.n128_u32[0] = *(a1 + 1812);
        AcqWindow = BlueFin::GlMeSrdAidingMgr::GetAcqWindow(a1[2], &v217, &v213, v59.n128_u64[0], &v242, &v216);
        v61 = v227[20];
        v62 = (*&v227[20] >> 3) & 1 | ((v218[24] & 8) >> 3);
        v63 = v211[0] + 100 * v211[4];
        v64 = v63 >> 5;
        v65 = *(a1[610] + 4 * (v63 >> 5));
        v66 = v63 & 0x1F;
        v67 = *(a1[620] + 4 * (v63 >> 5));
        v68.n128_u32[0] = *&v227[52];
        if (v57 <= 0xD && *&v227[52] < 0.005)
        {
          break;
        }

        LODWORD(v69) = 0;
        if ((v49 - 139) > 0x23 || *&v227[52] >= 0.005)
        {
          goto LABEL_74;
        }

        LODWORD(v69) = 0;
        v199 = (*&v227[20] & 0x400) >> 10;
        v71 = (*&v227[20] & 0x400) == 0;
        v70 = v213;
        if ((*&v227[20] & 0x400) != 0 && v213 - 139 < 0x24)
        {
          v196 = (*&v227[20] & 0x400) == 0;
          v197 = 0;
          LODWORD(v199) = 1;
LABEL_93:
          *(v259 + 4 * v64) |= 1 << v66;
          goto LABEL_94;
        }

LABEL_75:
        v197 = v69;
        v196 = v71;
        if ((v70 - 1) < 0x20 || (v70 - 66) <= 9)
        {
          if (SHIDWORD(v213) >= 1)
          {
            if (HIDWORD(v213) == 1)
            {
              if ((*&v227[20] & 0x800) == 0)
              {
                goto LABEL_94;
              }

              goto LABEL_93;
            }

            if (((HIDWORD(v213) == 2) & v62) != 0 || HIDWORD(v213) == 3 && (*&v227[20] & 0x2000) != 0)
            {
              goto LABEL_93;
            }
          }
        }

        else if ((*&v227[20] & 0x1000) != 0 && (v70 - 76) <= 0x3E && SHIDWORD(v213) >= 1)
        {
          goto LABEL_93;
        }

LABEL_94:
        if (((*(*a1[3] + 256))(a1[3], v68) & 1) != 0 || (*(*a1[3] + 264))(a1[3]))
        {
          BlueFin::GlMeSrdSatTrackMgr::UpdateMPFSettings(a1, v203, v211);
        }

        v72 = v61 & 0x1A;
        v73 = (1 << v66) & v65;
        v74 = (1 << v66) & v67;
        v75 = *(v51 + 2);
        if (v75 > 11)
        {
          if (v75 != 12)
          {
            if (v75 != 17)
            {
              goto LABEL_213;
            }

            if (v72 && v73)
            {
              v86 = v196;
              if (HIDWORD(v213))
              {
                v86 = 1;
              }

              if ((v86 & 1) == 0)
              {
                v87 = v211[0] + 100 * v211[4];
                v88 = v87 >> 5;
                v89 = 1 << v87;
                v266[v88] |= v89;
                *(v262 + v88) |= v89;
                *(a1[570] + 4 * v88) |= v89;
                *(a1[560] + 4 * v88) |= v89;
              }
            }

            if (v213 - 76 >= 0x3F && (v213 - 1) >= 0x20u && (v213 - 76) < 0xF6u || !v73 || (v227[21] & 0x30) == 0)
            {
              goto LABEL_213;
            }

            v90 = v211[0] + 100 * v211[4];
            v91 = v90 >> 5;
            v92 = 1 << v90;
            v266[v91] |= v92;
            *(v262 + v91) |= v92;
            *(a1[570] + 4 * v91) |= v92;
            v93 = a1[560];
            goto LABEL_198;
          }

          v95 = v199;
          if (v72 && v73 && !HIDWORD(v213))
          {
            v96 = v211[0] + 100 * v211[4];
            v97 = v96 >> 5;
            v98 = 1 << v96;
            v266[v97] |= v98;
            if (v197)
            {
              *(v262 + v97) |= v98;
            }

            if (v199)
            {
              *(v262 + v97) |= v98;
              *(a1[570] + 4 * v97) |= v98;
              *(a1[560] + 4 * v97) |= v98;
            }
          }

          v99 = HIDWORD(v213);
          if (HIDWORD(v213))
          {
            v100 = 0;
          }

          else
          {
            v100 = v62;
          }

          if (v100 == 1)
          {
            if (*(v51 + 1) <= 22.0 && *(v51 + 3) != 2)
            {
              goto LABEL_164;
            }

            if (v74 && *(v51 + 3) != 2)
            {
              v101 = *(v51 + 2);
              v102 = *&v227[44];
              EpochPerSymbol = BlueFin::GlSignalId::GetEpochPerSymbol(&v213);
              if (v214 > 0x23Eu)
              {
LABEL_380:
                v194 = "IsValid()";
                v195 = 679;
                DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
                goto LABEL_382;
              }

              v104 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * SHIDWORD(v213) - SHIDWORD(v213) + BlueFin::GlSvId::s_aucSvId2gnss[v213]];
              if (!v104)
              {
                goto LABEL_381;
              }

              v105 = BlueFin::GlMeSrdSatTrackMgr::MeasVsAidingBitTimeNotEqual((v104 * EpochPerSymbol), v101, v102);
              v95 = v199;
              if (v105)
              {
LABEL_164:
                v266[(v211[0] + 100 * v211[4]) >> 5] |= 1 << (v211[0] + 100 * v211[4]);
              }
            }

            v99 = HIDWORD(v213);
          }

          if ((v95 & (v99 == 0)) == 1)
          {
            v106 = v211[0] + 100 * v211[4];
            v107 = v106 >> 5;
            v108 = v266[v106 >> 5];
            v109 = v106 & 0x1F;
            if (((1 << v109) & v108) == 0 && ((1 << v109) & *(v262 + v107)) == 0 && *(v51 + 24) == 1)
            {
              v253[v107] |= 1 << v109;
            }
          }

          if (v72)
          {
            v110 = 1;
          }

          else
          {
            v110 = v62;
          }

          if ((AcqWindow & ~*(v51 + 25) & 1) == 0 || !v110 || v99 < 1)
          {
            goto LABEL_213;
          }

          if (BlueFin::GlSvId::s_aucSvId2gnss[v213] != 3 && BlueFin::GlSvId::s_aucSvId2gnss[v213])
          {
            if (v213 - 139 <= 0x23)
            {
              goto LABEL_203;
            }

            v119 = v213 - 76;
            goto LABEL_209;
          }

          if (v99 == 2)
          {
            v120 = v211[0] + 100 * v211[4];
            v121 = v120 >> 5;
            v122 = v266;
            v123 = (1 << v120) | v266[v120 >> 5];
            goto LABEL_212;
          }

          if (v99 == 1)
          {
            goto LABEL_181;
          }
        }

        else
        {
          if (v75 != 10)
          {
            if (v75 != 11)
            {
              goto LABEL_213;
            }

            if (v72 && v73)
            {
              v266[(v211[0] + 100 * v211[4]) >> 5] |= 1 << (v211[0] + 100 * v211[4]);
            }

            v76 = v197;
            if (v62)
            {
              if (*(v51 + 1) <= 22.0 && *(v51 + 3) != 2)
              {
                goto LABEL_111;
              }

              if (v74 && *(v51 + 3) != 2)
              {
                v77 = *(v51 + 2);
                v78 = *&v227[44];
                v79 = BlueFin::GlSignalId::GetEpochPerSymbol(&v213);
                if (v214 >= 0x23Fu)
                {
                  goto LABEL_380;
                }

                v80 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * SHIDWORD(v213) - SHIDWORD(v213) + BlueFin::GlSvId::s_aucSvId2gnss[v213]];
                if (!v80)
                {
LABEL_381:
                  v194 = "ucMsPerEpoch != 0";
                  v195 = 686;
                  DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
LABEL_382:
                  __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v195, v194);
                }

                v81 = BlueFin::GlMeSrdSatTrackMgr::MeasVsAidingBitTimeNotEqual((v80 * v79), v77, v78);
                v76 = v197;
                if (v81)
                {
LABEL_111:
                  v266[(v211[0] + 100 * v211[4]) >> 5] |= 1 << (v211[0] + 100 * v211[4]);
                }
              }

              if (v73 && v213 - 81 <= 0x34 && !HIDWORD(v213))
              {
                v82 = v211[0] + 100 * v211[4];
                v83 = v82 >> 5;
                v84 = 1 << v82;
                v266[v83] |= v84;
                *(a1[570] + 4 * v83) |= v84;
                *(a1[560] + 4 * v83) |= v84;
              }
            }

            if ((v199 | v76))
            {
              v85 = v76 ^ 1;
              if (v57 > 0xD)
              {
                v85 = 1;
              }

              if (v85)
              {
                v114 = v196;
                if ((v49 - 175) < 0xFFFFFFDC)
                {
                  v114 = 1;
                }

                if ((v114 & 1) == 0)
                {
                  v115 = v211[0] + 100 * v211[4];
                  v116 = v115 >> 5;
                  v117 = 1 << v115;
                  *(v262 + v116) |= v117;
                  if ((AcqWindow & 1) != 0 || (v243 & 0x10) != 0 && *(&v244 + 1) < 0.000000016)
                  {
                    *&v256[4 * v116] |= v117;
                  }
                }
              }

              else
              {
                *(v262 + ((v211[0] + 100 * v211[4]) >> 5)) |= 1 << (v211[0] + 100 * v211[4]);
              }
            }

            if ((BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * SHIDWORD(v213) - SHIDWORD(v213) + BlueFin::GlSvId::s_aucSvId2gnss[v213]] - 13) > 1 || (v227[21] & 0x30) == 0)
            {
              goto LABEL_213;
            }

            v118 = v211[0] + 100 * v211[4];
            v91 = v118 >> 5;
            v92 = 1 << v118;
            *(v262 + v91) |= v92;
            v93 = v266;
LABEL_198:
            v93[v91] |= v92;
            goto LABEL_213;
          }

          if (v72)
          {
            v94 = 1;
          }

          else
          {
            v94 = v62;
          }

          if ((AcqWindow & ~*(v51 + 25) & 1) == 0 || !v94 || SHIDWORD(v213) < 1)
          {
            if (v72)
            {
              v111 = v211[0] + 100 * v211[4];
              v112 = v111 >> 5;
              v113 = 1 << v111;
              v266[v112] |= v113;
              *(a1[570] + 4 * v112) |= v113;
              if ((v199 | v197))
              {
                *(v262 + v112) |= v113;
              }

              if (v213 - 81 <= 0x34)
              {
                *(a1[560] + 4 * v112) |= v113;
              }
            }

            goto LABEL_213;
          }

          if (BlueFin::GlSvId::s_aucSvId2gnss[v213] != 3 && BlueFin::GlSvId::s_aucSvId2gnss[v213])
          {
            if (v213 - 139 <= 0x23)
            {
LABEL_203:
              if ((v227[21] & 4) == 0)
              {
                goto LABEL_213;
              }

              goto LABEL_211;
            }

            v119 = v213 - 76;
LABEL_209:
            if (v119 > 0x3E || (v227[21] & 0x10) == 0)
            {
              goto LABEL_213;
            }

            goto LABEL_211;
          }

          if (HIDWORD(v213) == 2)
          {
            if (((*(**a1 + 128))() & 1) == 0)
            {
              v266[(v211[0] + 100 * v211[4]) >> 5] |= 1 << (v211[0] + 100 * v211[4]);
            }

            *(v51 + 25) = 1;
            goto LABEL_213;
          }

          if (HIDWORD(v213) == 1)
          {
LABEL_181:
            if ((v227[21] & 8) == 0)
            {
              goto LABEL_213;
            }

LABEL_211:
            v124 = v211[0] + 100 * v211[4];
            v121 = v124 >> 5;
            v125 = 1 << v124;
            v266[v121] |= v125;
            v122 = v262;
            v123 = *(v262 + v121) | v125;
LABEL_212:
            v122[v121] = v123;
            *(v51 + 25) = 1;
          }
        }

LABEL_213:
        if ((v266[(v211[0] + 100 * v211[4]) >> 5] >> ((v211[0] + 100 * v211[4]) & 0x1F)))
        {
          if (v62)
          {
            v126 = 2;
          }

          else
          {
            v126 = 1;
          }

          *(v51 + 3) = v126;
        }

        v48 = v198;
LABEL_219:
        BlueFin::GlSetIterator::operator++(&v235);
        if (BYTE1(v235) == v235)
        {
          goto LABEL_220;
        }
      }

      v69 = (*&v227[20] >> 7) & 1;
LABEL_74:
      LODWORD(v199) = 0;
      v70 = v213;
      v71 = 1;
      goto LABEL_75;
    }

LABEL_220:
    BlueFin::GlSetBase::GlSetBase(&v235, &v237, 0x10u, a1 + 638);
    __src = v227;
    LOBYTE(v226) = 16;
    memset(v227, 0, 64);
    BlueFin::GlSetBase::OperatorBinaryOr(&v235, &__src, a1 + 648);
    BlueFin::GlSetBase::operator=(&v235, &__src);
    v237 = *v227;
    v238 = *&v227[16];
    v239 = *&v227[32];
    v240 = *&v227[48];
    BlueFin::GlSetBase::GlSetBase(&v217, &v218[4], 0x10u, &v235);
    __src = v227;
    LOBYTE(v226) = 16;
    memset(v227, 0, 64);
    BlueFin::GlSetBase::OperatorBinaryInversion(&v217, &__src);
    BlueFin::GlSetBase::operator=(&v217, &__src);
    *&v218[4] = *v227;
    *&v218[20] = *&v227[16];
    *&v218[36] = *&v227[32];
    *&v218[52] = *&v227[48];
    BlueFin::GlSetBase::operator&=((a1 + 570), &v217);
    BlueFin::GlSetBase::GlSetBase(&v235, &v237, 0x10u, a1 + 638);
    __src = v227;
    LOBYTE(v226) = 16;
    memset(v227, 0, 64);
    BlueFin::GlSetBase::OperatorBinaryOr(&v235, &__src, a1 + 648);
    BlueFin::GlSetBase::operator=(&v235, &__src);
    v237 = *v227;
    v238 = *&v227[16];
    v239 = *&v227[32];
    v240 = *&v227[48];
    BlueFin::GlSetBase::GlSetBase(&v217, &v218[4], 0x10u, &v235);
    __src = v227;
    LOBYTE(v226) = 16;
    memset(v227, 0, 64);
    BlueFin::GlSetBase::OperatorBinaryInversion(&v217, &__src);
    BlueFin::GlSetBase::operator=(&v217, &__src);
    *&v218[4] = *v227;
    *&v218[20] = *&v227[16];
    *&v218[36] = *&v227[32];
    *&v218[52] = *&v227[48];
    BlueFin::GlSetBase::operator&=((a1 + 540), &v217);
    BlueFin::GlSetBase::GlSetBase(&v209, v210, 0x10u, &v266);
    __src = v227;
    LOBYTE(v226) = 16;
    memset(v227, 0, 64);
    BlueFin::GlSetBase::OperatorBinaryOr(&v209, &__src, &v262);
    BlueFin::GlSetBase::operator=(&v209, &__src);
    v210[0] = *v227;
    v210[1] = *&v227[16];
    v210[2] = *&v227[32];
    v210[3] = *&v227[48];
    BlueFin::GlSetBase::GlSetBase(v211, v212, 0x10u, &v209);
    __src = v227;
    LOBYTE(v226) = 16;
    memset(v227, 0, 64);
    BlueFin::GlSetBase::OperatorBinaryOr(v211, &__src, &v253);
    BlueFin::GlSetBase::operator=(v211, &__src);
    v212[0] = *v227;
    v212[1] = *&v227[16];
    v212[2] = *&v227[32];
    v212[3] = *&v227[48];
    BlueFin::GlSetBase::GlSetBase(&v213, v215, 0x10u, v211);
    __src = v227;
    LOBYTE(v226) = 16;
    memset(v227, 0, 64);
    BlueFin::GlSetBase::OperatorBinaryOr(&v213, &__src, a1 + 570);
    BlueFin::GlSetBase::operator=(&v213, &__src);
    v215[0] = *v227;
    v215[1] = *&v227[16];
    v215[2] = *&v227[32];
    v215[3] = *&v227[48];
    BlueFin::GlSetBase::GlSetBase(&v235, &v237, 0x10u, &v213);
    __src = v227;
    LOBYTE(v226) = 16;
    memset(v227, 0, 64);
    BlueFin::GlSetBase::OperatorBinaryOr(&v235, &__src, a1 + 540);
    BlueFin::GlSetBase::operator=(&v235, &__src);
    v237 = *v227;
    v238 = *&v227[16];
    v239 = *&v227[32];
    v240 = *&v227[48];
    BlueFin::GlSetBase::GlSetBase(&v217, &v218[4], 0x10u, &v235);
    __src = v227;
    LOBYTE(v226) = 16;
    memset(v227, 0, 64);
    BlueFin::GlSetBase::OperatorBinaryOr(&v217, &__src, a1 + 560);
    BlueFin::GlSetBase::operator=(&v217, &__src);
    *&v218[4] = *v227;
    *&v218[20] = *&v227[16];
    *&v218[36] = *&v227[32];
    *&v218[52] = *&v227[48];
    LOBYTE(__src) = v218[0];
    memcpy(&v226, v217, 4 * v218[0]);
    WORD1(__src) = 0;
    BYTE1(__src) = 0;
    HIDWORD(__src) = v226;
    BlueFin::GlSetIterator::operator++(&__src);
    while (BYTE1(__src) != __src)
    {
      BlueFin::GlSatCarrId::GlSatCarrId(&v235, WORD1(__src));
      v127 = HIDWORD(v235);
      v128 = (v235 + 100 * BYTE4(v235)) >> 5;
      v129 = (v235 + 100 * BYTE4(v235)) & 0x1F;
      v130 = 1 << v129;
      if (((1 << v129) & *(a1[540] + 4 * v128)) != 0)
      {
        if ((v130 & *(v259 + 4 * ((v235 + 100 * BYTE4(v235)) >> 5))) != 0)
        {
          v131 = -33;
        }

        else
        {
          v131 = 95;
        }
      }

      else
      {
        v131 = 0;
      }

      if ((v130 & *(a1[560] + 4 * ((v235 + 100 * BYTE4(v235)) >> 5))) != 0)
      {
        v131 |= 0xBu;
      }

      if ((v130 & *(a1[570] + 4 * ((v235 + 100 * BYTE4(v235)) >> 5))) != 0)
      {
        v131 |= 3u;
      }

      v132 = v131 | 0x40;
      if (SHIDWORD(v235) > 0)
      {
        v132 = -5;
      }

      if ((v130 & v266[(v235 + 100 * BYTE4(v235)) >> 5]) != 0)
      {
        v131 = v132;
      }

      if ((v130 & *(v262 + ((v235 + 100 * BYTE4(v235)) >> 5))) != 0)
      {
        if ((v130 & *&v256[4 * ((v235 + 100 * BYTE4(v235)) >> 5)]) != 0)
        {
          v133 = -53;
        }

        else
        {
          v133 = -64;
        }

        v131 |= v133;
      }

      if ((v130 & v253[(v235 + 100 * BYTE4(v235)) >> 5]) != 0)
      {
        v134 = -60;
      }

      else
      {
        v134 = v131;
      }

      if ((v134 & 0x40) != 0)
      {
        *(a1[638] + 4 * v128) |= 1 << v129;
      }

      if ((v134 & 0x80) != 0)
      {
        *(a1[658] + 4 * v128) |= 1 << v129;
      }

      v135 = BlueFin::GlMeSrdAsicUnitConverter::GetEswSignalIndex(v127);
      if ((*(*a1[3] + 352))(a1[3]))
      {
        v136 = (*(*v206 + 48))(v206);
        v137 = (*(*v136 + 64))(v136);
        (*(*v137 + 96))(v137, v203, v235, v135, v134);
      }

      else
      {
        if (v135 != 1)
        {
          DeviceFaultNotify("glmesrd_track_mgr.cpp", 1333, "UpdateAidingCtrl", "carrier_band == ESW_CARRIER_BAND_1");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_track_mgr.cpp", 1333, "carrier_band == ESW_CARRIER_BAND_1");
        }

        v138 = (*(*v206 + 48))(v206);
        v139 = (*(*v138 + 64))(v138);
        (*(*v139 + 88))(v139, v203, v235, v134);
      }

      BlueFin::GlSetIterator::operator++(&__src);
    }

    BlueFin::GlMeSrdTransaction::Complete(v203);
    v4 = v202;
    v28 = 0x2A18BA000;
    BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v203);
    v262 = BlueFin::GlMeSrdSatTrackMgr::OnReliableTransactionAck;
    *v263 = a1;
    *&v263[8] = 256;
    v263[10] = 0;
    *&v263[16] = a3;
    *&v263[24] = 0;
    *&v263[28] = 0;
    (*(*a3 + 16))(a3, 1);
    if (((*(*a1[3] + 248))(a1[3]) & 1) == 0 && ((*(*a1[3] + 240))(a1[3]) & 1) == 0)
    {
      v140 = BlueFin::GlSetBase::GlSetBase(&v266, &v268, 0x10u, a1 + 638);
      __src = v227;
      LOBYTE(v226) = 16;
      memset(v227, 0, 64);
      BlueFin::GlSetBase::OperatorBinaryOr(v140, &__src, a1 + 648);
      BlueFin::GlSetBase::operator=(&v266, &__src);
      v268 = *v227;
      v269 = *&v227[16];
      v270 = *&v227[32];
      v271 = *&v227[48];
      BlueFin::GlSetBase::GlSetBase(&v235, &v237, 0x10u, &v266);
      __src = v227;
      LOBYTE(v226) = 16;
      memset(v227, 0, 64);
      BlueFin::GlSetBase::OperatorBinaryOr(&v235, &__src, a1 + 658);
      BlueFin::GlSetBase::operator=(&v235, &__src);
      v237 = *v227;
      v238 = *&v227[16];
      v239 = *&v227[32];
      v240 = *&v227[48];
      BlueFin::GlSetBase::GlSetBase(&v217, &v218[4], 0x10u, &v235);
      __src = v227;
      LOBYTE(v226) = 16;
      memset(v227, 0, 64);
      BlueFin::GlSetBase::OperatorBinaryOr(&v217, &__src, a1 + 668);
      BlueFin::GlSetBase::operator=(&v217, &__src);
      *&v218[4] = *v227;
      *&v218[20] = *&v227[16];
      *&v218[36] = *&v227[32];
      *&v218[52] = *&v227[48];
      LOBYTE(__src) = *(a1 + 4008);
      memcpy(&v226, a1[500], 4 * __src);
      WORD1(__src) = 0;
      BYTE1(__src) = 0;
      HIDWORD(__src) = v226;
      BlueFin::GlSetIterator::operator++(&__src);
      while (BYTE1(__src) != __src)
      {
        BlueFin::GlSatCarrId::GlSatCarrId(&v235, WORD1(__src));
        if (((*(a1[510] + ((v235 >> 3) & 0x1C)) >> (v235 & 0x1F)) & 1) == 0 && ((*(v217 + ((v235 + 100 * BYTE4(v235)) >> 5)) >> ((v235 + 100 * BYTE4(v235)) & 0x1F)) & 1) == 0)
        {
          v141 = &v200[4 * BlueFin::GlMeSrdSatMgr::GetTrackChannel(a1[1], &v235)];
          if (*v141)
          {
            v142 = *(v141 + 2);
            v53 = v142 > 0x11;
            v143 = (1 << v142) & 0x21C00;
            if (!v53 && v143 != 0)
            {
              BlueFin::GlMeSrdSatTrackMgr::UpdateMPFSettings(a1, &v262, &v235);
            }
          }
        }

        BlueFin::GlSetIterator::operator++(&__src);
      }
    }

    BlueFin::GlMeSrdTransaction::Complete(&v262);
    BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v262);
    v262 = BlueFin::GlMeSrdSatTrackMgr::OnReliableTransactionAck;
    *v263 = a1;
    *&v263[8] = 256;
    v263[10] = 0;
    *&v263[16] = a3;
    *&v263[24] = 0;
    *&v263[28] = 0;
    (*(*a3 + 16))(a3, 1);
    if (!(*(*a1[3] + 1048))())
    {
LABEL_266:
      BlueFin::GlMeSrdTransaction::Complete(&v262);
      BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v262);
      v217 = BlueFin::GlMeSrdSatTrackMgr::OnReliableTransactionAck;
      *v218 = a1;
      *&v218[8] = 256;
      v218[10] = 0;
      *&v218[16] = a3;
      *&v218[24] = 0;
      *&v218[28] = 0;
      (*(*a3 + 16))(a3, 1);
      __src = v227;
      LOBYTE(v226) = 4;
      *&v227[8] = 0;
      *v227 = 0;
      BlueFin::GlSetBase::OperatorBinaryInversion((a1 + 630), &__src);
      v235 = &v237;
      LOBYTE(v236) = 4;
      v237 = 0uLL;
      BlueFin::GlSetBase::OperatorBinaryAnd((a1 + 634), &v235, &__src);
      __src = v227;
      LOBYTE(v226) = 4;
      *&v227[8] = 0;
      *v227 = 0;
      BlueFin::GlSetBase::OperatorBinaryInversion((a1 + 634), &__src);
      v266 = &v268;
      LOBYTE(v267) = 4;
      v268 = 0uLL;
      BlueFin::GlSetBase::OperatorBinaryAnd((a1 + 630), &v266, &__src);
      if (!*v266)
      {
        if (v267 < 2uLL)
        {
          goto LABEL_280;
        }

        v150 = v267 - 1;
        v151 = v266 + 1;
        while (!*v151++)
        {
          if (!--v150)
          {
            goto LABEL_280;
          }
        }
      }

      if (*(v28 + 1024))
      {
        BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
      }

LABEL_280:
      v153 = v235;
      if (!*v235)
      {
        if (v236 < 2uLL)
        {
LABEL_287:
          LOBYTE(__src) = v236;
          memcpy(&v226, v153, 4 * v236);
          WORD1(__src) = 0;
          BYTE1(__src) = 0;
          HIDWORD(__src) = v226;
          while (1)
          {
            BlueFin::GlSetIterator::operator++(&__src);
            if (BYTE1(__src) == __src)
            {
              break;
            }

            v155 = (*(**&v218[16] + 48))(*&v218[16]);
            v156 = (*(*v155 + 64))(v155);
            v157 = WORD1(__src);
            (*(*v156 + 64))(v156, &v217, BYTE2(__src), 1);
            BlueFin::GlSetBase::Remove((a1 + 634), v157);
          }

          LOBYTE(__src) = v267;
          memcpy(&v226, v266, 4 * v267);
          WORD1(__src) = 0;
          BYTE1(__src) = 0;
          HIDWORD(__src) = v226;
          BlueFin::GlSetIterator::operator++(&__src);
          while (BYTE1(__src) != __src)
          {
            v158 = (*(**&v218[16] + 48))(*&v218[16]);
            v159 = (*(*v158 + 64))(v158);
            v160 = WORD1(__src);
            (*(*v159 + 64))(v159, &v217, BYTE2(__src), 2);
            *(a1[634] + 4 * (v160 >> 5)) |= 1 << v160;
            BlueFin::GlSetIterator::operator++(&__src);
          }

          bzero(a1[630], ((4 * v4[880] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
          BlueFin::GlMeSrdTransaction::Complete(&v217);
          BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v217);
          goto LABEL_293;
        }

        v154 = 4;
        while (!*(v235 + v154))
        {
          v154 += 4;
          if (4 * v236 == v154)
          {
            goto LABEL_287;
          }
        }
      }

      if (*(v28 + 1024))
      {
        BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
        v153 = v235;
      }

      goto LABEL_287;
    }

    v145 = BlueFin::GlSetBase::GlSetBase(&v266, &v268, 0x10u, a1 + 638);
    __src = v227;
    LOBYTE(v226) = 16;
    memset(v227, 0, 64);
    BlueFin::GlSetBase::OperatorBinaryOr(v145, &__src, a1 + 648);
    BlueFin::GlSetBase::operator=(&v266, &__src);
    v268 = *v227;
    v269 = *&v227[16];
    v270 = *&v227[32];
    v271 = *&v227[48];
    BlueFin::GlSetBase::GlSetBase(&v235, &v237, 0x10u, &v266);
    __src = v227;
    LOBYTE(v226) = 16;
    memset(v227, 0, 64);
    BlueFin::GlSetBase::OperatorBinaryOr(&v235, &__src, a1 + 658);
    BlueFin::GlSetBase::operator=(&v235, &__src);
    v237 = *v227;
    v238 = *&v227[16];
    v239 = *&v227[32];
    v240 = *&v227[48];
    BlueFin::GlSetBase::GlSetBase(&v217, &v218[4], 0x10u, &v235);
    __src = v227;
    LOBYTE(v226) = 16;
    memset(v227, 0, 64);
    BlueFin::GlSetBase::OperatorBinaryOr(&v217, &__src, a1 + 668);
    BlueFin::GlSetBase::operator=(&v217, &__src);
    *&v218[4] = *v227;
    *&v218[20] = *&v227[16];
    *&v218[36] = *&v227[32];
    *&v218[52] = *&v227[48];
    LOBYTE(__src) = *(a1 + 4008);
    memcpy(&v226, a1[500], 4 * __src);
    WORD1(__src) = 0;
    BYTE1(__src) = 0;
    HIDWORD(__src) = v226;
    BlueFin::GlSetIterator::operator++(&__src);
    if (BYTE1(__src) == __src)
    {
LABEL_265:
      v4 = v202;
      v28 = 0x2A18BA000uLL;
      goto LABEL_266;
    }

    while (1)
    {
      BlueFin::GlSatCarrId::GlSatCarrId(&v266, WORD1(__src));
      v162 = v266;
      if ((*(a1[510] + ((v162 >> 3) & 0x1C)) >> (v162 & 0x1F)))
      {
        goto LABEL_300;
      }

      if ((*(v217 + ((v266 + 100 * BYTE4(v266)) >> 5)) >> ((v266 + 100 * BYTE4(v266)) & 0x1F)))
      {
        goto LABEL_300;
      }

      v163 = &v200[4 * BlueFin::GlMeSrdSatMgr::GetTrackChannel(a1[1], &v266)];
      if (!*v163)
      {
        goto LABEL_300;
      }

      v164 = *(v163 + 2);
      v53 = v164 > 0x11;
      v165 = (1 << v164) & 0x21800;
      if (v53 || v165 == 0)
      {
        goto LABEL_300;
      }

      v167 = HIDWORD(v266);
      if (HIDWORD(v266))
      {
        if (HIDWORD(v266) != 2 || *(v163 + 25) != 1)
        {
          goto LABEL_300;
        }
      }

      BlueFin::GlMeSrdSatMgr::GetSvid(&v259, a1[1], v162);
      LOBYTE(v235) = v259;
      HIDWORD(v235) = v167;
      LOWORD(v236) = 575;
      if (v259 - 189 >= 0xFFFFFF44)
      {
        v168 = BlueFin::GlSvId::s_aucSvId2gnss[v259];
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v167 - v167 + v168] == 255)
        {
          HIDWORD(v235) = -1;
        }

        else
        {
          LOWORD(v236) = BlueFin::GlSignalId::s_ausGnss2signalId[v168] + v259 - BlueFin::GlSvId::s_aucGnss2minSvId[v168] + v167 * BlueFin::GlSvId::s_aucGnss2numSvId[v168];
        }
      }

      v169 = (*(*a1[3] + 728))(a1[3]) == 255 ? 0 : (*(*a1[3] + 728))(a1[3]);
      v170 = HIDWORD(v235);
      v171 = !HIDWORD(v235) || HIDWORD(v235) == 3;
      v172 = v171;
      if (!(*(*a1[3] + 712))(a1[3]))
      {
        break;
      }

      v173 = *(a1 + 1812);
      v174 = v235;
      BlueFin::GlArray::EnsureValidHandle((a1 + 1080), v235);
      v175 = v173 / 0x3E8 - 255 * ((16843010 * (v173 / 0x3E8)) >> 32);
      v176 = *(a1[1082] + v174 - *(a1 + 8676));
      v177 = v235;
      if (v176 == 255)
      {
        BlueFin::GlArray::EnsureValidHandle((a1 + 932), v235);
        if (*(a1[934] + v177 - v202[3324]) != 255)
        {
          v187 = BlueFin::GlArray::Get((a1 + 932), v235);
          if (v162 != BYTE2(*v187))
          {
            *v187 = (v175 << 8) | (v162 << 16) | 0xFF;
            goto LABEL_300;
          }

          v188 = *v187 == 14 && v172;
          v190 = v170 == 2 && *v187 != 255;
          if (!v188 && !v190 || v175 - BYTE1(*v187) < 5)
          {
            goto LABEL_300;
          }

          *v187 = (v175 << 8) | (v162 << 16) | 0xFF;
          LOBYTE(v169) = -1;
          goto LABEL_376;
        }
      }

      else
      {
        v169 = *BlueFin::GlArray::Get((a1 + 1080), v235);
        if ((v170 != 2 || v169 >= 0x100) && (v170 != 3 && v170 || v169 < 0x100))
        {
          goto LABEL_300;
        }

        v178 = BlueFin::GlArray::Get((a1 + 932), v235);
        v179 = v178;
        if (v178)
        {
          if (v175 - BYTE1(*v178) < 5)
          {
            goto LABEL_300;
          }

          v180 = *v178;
          if (v180 == v169 && v162 == BYTE2(*v178))
          {
            goto LABEL_300;
          }

          v181 = v169;
          v182 = v180 != 14 && v172;
          v183 = v180 == 14 && v170 == 2;
          if (v182 || v183)
          {
            if (v172)
            {
              v184 = 2;
            }

            else
            {
              v184 = 0;
            }

            if (v235 - 189 >= 0xFFFFFF44)
            {
              if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v184 - v184 + BlueFin::GlSvId::s_aucSvId2gnss[v235]] == 255)
              {
                v184 = 0xFFFFFFFFLL;
              }

              else
              {
                v184 = v184;
              }
            }

            BlueFin::SendGridCtrlRpc(v184, &v262, v162, 0xFFu);
          }

LABEL_375:
          *v179 = (v175 << 8) | (v162 << 16) | v181;
LABEL_376:
          BlueFin::SendGridCtrlRpc(HIDWORD(v235), &v262, v162, v169);
          goto LABEL_300;
        }

        v179 = BlueFin::GlArray::Add((a1 + 932), v235);
        if (v179)
        {
          v181 = v169;
          goto LABEL_375;
        }
      }

LABEL_300:
      BlueFin::GlSetIterator::operator++(&__src);
      if (BYTE1(__src) == __src)
      {
        goto LABEL_265;
      }
    }

    v185 = v235;
    BlueFin::GlArray::EnsureValidHandle((a1 + 932), v235);
    if (*(a1[934] + v185 - v202[3324]) != 255 || !(*(*a1[3] + 720))(a1[3], &v235))
    {
      goto LABEL_300;
    }

    v186 = v169 == 14 && v172;
    if (!v186 && v170 != 2)
    {
      goto LABEL_300;
    }

    *BlueFin::GlArray::Add((a1 + 932), v235) = v169;
    goto LABEL_376;
  }

  v30 = v29 - 1;
  v31 = v27 + 1;
  while (!*v31++)
  {
    if (!--v30)
    {
      goto LABEL_43;
    }
  }

LABEL_293:
  bzero(a1[648], ((4 * v4[1024] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(a1[668], ((4 * v4[1184] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(a1[580], ((4 * v4[480] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(a1[530], ((4 * v4[80] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(a1[540], ((4 * v4[160] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(a1[560], ((4 * v4[320] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(a1[570], ((4 * v4[400] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(a1[610], ((4 * v4[720] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(a1[620], ((4 * v4[800] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(a1[678], ((4 * v4[1264] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(a1[689], ((4 * v4[1352] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  BlueFin::GlSatCarrIdSet::GetSatIdSetAnyCarrier(&v217, (a1 + 500));
  BlueFin::GlMeSrdSatMgr::GetSvidSetFromSatidSet(a1[1], &v217, &__src);
  if (*(v28 + 1024))
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
  }

  result = BlueFin::GlSatCarrIdSet::GetSatIdSetAnyCarrier(&__src, (a1 + 500));
  if (*(v28 + 1024))
  {
    return BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
  }

  return result;
}

void sub_29887F5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

unint64_t BlueFin::GlMeSrdSharedSatSearchMgr::ProcessPending(BlueFin::GlMeSrdSharedSatSearchMgr *this)
{
  BlueFin::GlSvIdSet::operator~(this + 32, &v57);
  BlueFin::GlSetBase::GlSetBase(&v50, v52, 8u, this + 10);
  v53 = &v55;
  LOBYTE(v54) = 8;
  v55 = 0u;
  v56 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v50, &v53, &v57);
  BlueFin::GlSetBase::operator=(&v50, &v53);
  v52[0] = v55;
  v52[1] = v56;
  v2 = v50;
  v3 = *v50;
  if (!*v50)
  {
    if (v51 < 2uLL)
    {
      goto LABEL_23;
    }

    v13 = v51 - 1;
    v14 = v50 + 1;
    while (!*v14++)
    {
      if (!--v13)
      {
        goto LABEL_23;
      }
    }
  }

  LOBYTE(v53) = *(this + 136);
  memcpy(&v54, *(this + 16), 4 * v53);
  WORD1(v53) = 0;
  BYTE1(v53) = 0;
  HIDWORD(v53) = v54;
  BlueFin::GlSetIterator::operator++(&v53);
  if (BYTE1(v53) == v53)
  {
    if (v3)
    {
LABEL_4:
      v4 = "otSvidStopScan.IsEmpty()";
      DeviceFaultNotify("glmesrd_shared_sat_search_mgr.cpp", 257, "RemoveSvidFromScan", "otSvidStopScan.IsEmpty()");
      v5 = 257;
      goto LABEL_73;
    }
  }

  else
  {
    do
    {
      v2 = v50;
      if (!*v50)
      {
        if (v51 < 2uLL)
        {
          goto LABEL_14;
        }

        v7 = v51 - 1;
        v8 = v50 + 1;
        while (!*v8++)
        {
          if (!--v7)
          {
            goto LABEL_14;
          }
        }
      }

      v6 = BYTE2(v53);
      BlueFin::GlMeSrdSatMgr::GetSvid(&v57, *(this + 2), BYTE2(v53));
      if ((*(v50 + ((v57 >> 3) & 0x1C)) >> (v57 & 0x1F)))
      {
        BlueFin::GlSetBase::Remove(&v50, v57);
        BlueFin::GlMeSrdSearchMgrBase::StopSat(this, v6);
      }

      BlueFin::GlSetIterator::operator++(&v53);
    }

    while (BYTE1(v53) != v53);
    v2 = v50;
    if (*v50)
    {
      goto LABEL_4;
    }
  }

LABEL_14:
  if (v51 >= 2uLL)
  {
    v10 = v51 - 1;
    v11 = v2 + 1;
    do
    {
      if (*v11++)
      {
        goto LABEL_4;
      }
    }

    while (--v10);
  }

LABEL_23:
  if (*(this + 416) == 1)
  {
    BlueFin::GlSvIdSet::operator~(this + 40, &v47);
    v16 = BlueFin::GlSetBase::GlSetBase(&v57, &v59, 8u, this + 32);
    v53 = &v55;
    LOBYTE(v54) = 8;
    v55 = 0u;
    v56 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(v16, &v53, &v47);
    BlueFin::GlSetBase::operator=(&v57, &v53);
    v59 = v55;
    v60 = v56;
    BlueFin::GlSetBase::operator|=(this + 368, &v57);
  }

  BlueFin::GlSetBase::operator=(this + 320, this + 256);
  v17 = *(this + 284);
  *(this + 332) = *(this + 268);
  *(this + 348) = v17;
  BlueFin::GlSetBase::operator&=(this + 368, this + 320);
  BlueFin::GlSetBase::operator&=(this + 424, this + 320);
  BlueFin::GlMeSrdSharedSatSearchMgr::StopSats(this, *(this + 20), *(this + 168), 1);
  v18 = *(this + 24);
  if (!*v18)
  {
    v19 = *(this + 200);
    if (v19 < 2)
    {
      goto LABEL_39;
    }

    v20 = v19 - 1;
    v21 = v18 + 1;
    while (!*v21++)
    {
      if (!--v20)
      {
        goto LABEL_39;
      }
    }
  }

  BlueFin::GlMeSrdSatMgr::GetSvidSetFromSatidSet(*(this + 2), this + 192, &v57);
  BlueFin::GlMeSrdSharedSatSearchMgr::StopSats(this, *(this + 24), *(this + 200), 0);
  BlueFin::GlMeSrdSharedSatSearchMgr::AddSvidToScan(this, &v57);
  if (*v57)
  {
LABEL_27:
    LOBYTE(v53) = v58;
    memcpy(&v54, v57, 4 * v58);
    WORD1(v53) = 0;
    BYTE1(v53) = 0;
    HIDWORD(v53) = v54;
    while (1)
    {
      BlueFin::GlSetIterator::operator++(&v53);
      if (BYTE1(v53) == v53)
      {
        break;
      }

      BlueFin::GlMeSrdSharedSatSearchMgr::MarkSvidAsScanned(this, BYTE2(v53));
    }

    goto LABEL_39;
  }

  if (v58 >= 2u)
  {
    v23 = v58 - 1;
    v24 = v57 + 1;
    do
    {
      if (*v24++)
      {
        goto LABEL_27;
      }
    }

    while (--v23);
  }

LABEL_39:
  if (*(this + 416) == 1)
  {
    goto LABEL_76;
  }

  v26 = *(this + 40);
  if (!*v26)
  {
    v33 = *(this + 328);
    v34 = v33 > 1;
    v35 = v33 - 1;
    if (!v34)
    {
      goto LABEL_57;
    }

    v36 = v26 + 1;
    do
    {
      if (*v36++)
      {
        break;
      }

      --v35;
    }

    while (v35);
  }

  v27 = BlueFin::GlSetBase::GlSetBase(&v57, &v59, 8u, this + 46);
  v53 = &v55;
  LOBYTE(v54) = 8;
  v55 = 0u;
  v56 = 0u;
  BlueFin::GlSetBase::OperatorBinaryOr(v27, &v53, this + 10);
  BlueFin::GlSetBase::operator=(&v57, &v53);
  v59 = v55;
  v60 = v56;
  if (BlueFin::GlSetBase::operator==(this + 320, &v57))
  {
    v28 = *(this + 53);
    if (!*v28)
    {
      v29 = *(this + 432);
      if (v29 < 2)
      {
LABEL_49:
        *(this + 416) = 1;
        (*(**(this + 38) + 16))(*(this + 38), this);
        goto LABEL_57;
      }

      v30 = v29 - 1;
      v31 = v28 + 1;
      while (!*v31++)
      {
        if (!--v30)
        {
          goto LABEL_49;
        }
      }
    }

    v4 = "m_otSvidNextRotationScanned.IsEmpty()";
    DeviceFaultNotify("glmesrd_shared_sat_search_mgr.cpp", 139, "UpdateRotationStatus", "m_otSvidNextRotationScanned.IsEmpty()");
    v5 = 139;
LABEL_73:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_shared_sat_search_mgr.cpp", v5, v4);
  }

  if (*(this + 416))
  {
LABEL_76:
    if (BlueFin::GlSetBase::operator==(this + 320, this + 368))
    {
      *(this + 416) = 0;
      bzero(*(this + 46), ((4 * *(this + 376) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      BlueFin::GlSetBase::Add(this + 368, this + 53);
      bzero(*(this + 53), ((4 * *(this + 432) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      ++*(this + 118);
      (*(**(this + 38) + 24))(*(this + 38), this);
    }
  }

LABEL_57:
  if (!BlueFin::GlSetBase::operator==(this + 320, this + 256))
  {
    BlueFin::GlSetBase::operator&=(this + 320, this + 256);
    BlueFin::GlSetBase::operator&=(this + 368, this + 320);
    BlueFin::GlSetBase::operator&=(this + 424, this + 320);
  }

  BlueFin::GlSvIdSet::operator~(this + 46, &v45);
  BlueFin::GlSetBase::GlSetBase(&v47, &v48, 8u, this + 40);
  v53 = &v55;
  LOBYTE(v54) = 8;
  v55 = 0u;
  v56 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v47, &v53, &v45);
  BlueFin::GlSetBase::operator=(&v47, &v53);
  v48 = v55;
  v49 = v56;
  BlueFin::GlSvIdSet::operator~(this + 10, v44);
  v38 = BlueFin::GlSetBase::GlSetBase(&v57, &v59, 8u, &v47);
  v53 = &v55;
  LOBYTE(v54) = 8;
  v55 = 0u;
  v56 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(v38, &v53, v44);
  BlueFin::GlSetBase::operator=(&v57, &v53);
  v59 = v55;
  v60 = v56;
  if (*(this + 416) == 1)
  {
    if (*v57)
    {
LABEL_71:
      v4 = "otSvidToStart.IsEmpty()";
      DeviceFaultNotify("glmesrd_shared_sat_search_mgr.cpp", 104, "ProcessPending", "otSvidToStart.IsEmpty()");
      v5 = 104;
      goto LABEL_73;
    }

    if (v58 >= 2uLL)
    {
      v39 = v58 - 1;
      v40 = v57 + 1;
      do
      {
        if (*v40++)
        {
          goto LABEL_71;
        }
      }

      while (--v39);
    }

    BlueFin::GlSvIdSet::operator~(this + 53, v44);
    BlueFin::GlSetBase::GlSetBase(&v45, v46, 8u, this + 40);
    v53 = &v55;
    LOBYTE(v54) = 8;
    v55 = 0u;
    v56 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v45, &v53, v44);
    BlueFin::GlSetBase::operator=(&v45, &v53);
    v46[0] = v55;
    v46[1] = v56;
    BlueFin::GlSvIdSet::operator~(this + 10, v43);
    BlueFin::GlSetBase::GlSetBase(&v47, &v48, 8u, &v45);
    v53 = &v55;
    LOBYTE(v54) = 8;
    v55 = 0u;
    v56 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v47, &v53, v43);
    BlueFin::GlSetBase::operator=(&v47, &v53);
    v48 = v55;
    v49 = v56;
    BlueFin::GlSetBase::operator=(&v57, &v47);
    v59 = v48;
    v60 = v49;
  }

  result = BlueFin::GlMeSrdSharedSatSearchMgr::AddSvidToScan(this, &v57);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    return BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
  }

  return result;
}

unsigned int *BlueFin::GlStream::CarpPutBits(unsigned int *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (!a3)
  {
    v11 = "ulNumBits > 0";
    DeviceFaultNotify("glutl_stream.cpp", 433, "CarpPutBits", "ulNumBits > 0");
    v12 = 433;
    goto LABEL_28;
  }

  if (a3 > a4)
  {
    v11 = "ulNumBits <= ulNumBitsInWord";
    DeviceFaultNotify("glutl_stream.cpp", 434, "CarpPutBits", "ulNumBits <= ulNumBitsInWord");
    v12 = 434;
    goto LABEL_28;
  }

  if (a4 > 0x20 || ((1 << a4) & 0x100010100) == 0)
  {
    v11 = "ulNumBitsInWord==NUM_BITS_PER_BYTE*2 || ulNumBitsInWord==NUM_BITS_PER_BYTE*4 || ulNumBitsInWord==NUM_BITS_PER_BYTE";
    DeviceFaultNotify("glutl_stream.cpp", 435, "CarpPutBits", "ulNumBitsInWord==NUM_BITS_PER_BYTE*2 || ulNumBitsInWord==NUM_BITS_PER_BYTE*4 || ulNumBitsInWord==NUM_BITS_PER_BYTE");
    v12 = 435;
    goto LABEL_28;
  }

  if (this[6] || this[7])
  {
    goto LABEL_16;
  }

  this[6] = 7;
  this[7] = a4;
  v4 = *this;
  if (a4 == 16)
  {
    if (v4 + 1 < this[4])
    {
      v5 = this + 2;
      *(*(this + 1) + v4) = 0;
      v4 = *this + 1;
      goto LABEL_15;
    }

    v11 = "m_uiOffset+1 < m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.cpp", 461, "CarpPutBits", "m_uiOffset+1 < m_uiMaxOffset");
    v12 = 461;
LABEL_28:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.cpp", v12, v11);
  }

  if (a4 != 8)
  {
    if (v4 + 3 < this[4])
    {
      v5 = this + 2;
      *(*(this + 1) + v4) = 0;
      *(*(this + 1) + *this + 1) = 0;
      *(*(this + 1) + *this + 2) = 0;
      v4 = *this + 3;
      goto LABEL_15;
    }

    v11 = "m_uiOffset+3 < m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.cpp", 467, "CarpPutBits", "m_uiOffset+3 < m_uiMaxOffset");
    v12 = 467;
    goto LABEL_28;
  }

  if (v4 >= this[4])
  {
    v11 = "m_uiOffset+0 < m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.cpp", 456, "CarpPutBits", "m_uiOffset+0 < m_uiMaxOffset");
    v12 = 456;
    goto LABEL_28;
  }

  v5 = this + 2;
LABEL_15:
  *(*v5 + v4) = 0;
LABEL_16:
  v6 = a3 - 1;
  do
  {
    if (v6 < 0)
    {
      v11 = "slShiftVal >= 0";
      DeviceFaultNotify("glutl_stream.cpp", 479, "CarpPutBits", "slShiftVal >= 0");
      v12 = 479;
      goto LABEL_28;
    }

    v7 = *this;
    if (v7 >= this[4])
    {
      v11 = "m_uiOffset < m_uiMaxOffset";
      DeviceFaultNotify("glutl_stream.cpp", 484, "CarpPutBits", "m_uiOffset < m_uiMaxOffset");
      v12 = 484;
      goto LABEL_28;
    }

    *(*(this + 1) + v7) |= ((a2 >> v6) & 1) << this[6];
    v8 = this[6];
    if (v8)
    {
      v9 = v8 - 1;
    }

    else
    {
      ++*this;
      v9 = 7;
    }

    v10 = this[7] - 1;
    this[6] = v9;
    this[7] = v10;
    --v6;
  }

  while (v6 != -1);
  if (!v10)
  {
    this[6] = 0;
  }

  return this;
}

uint64_t BlueFin::GlMeSrdPacketManager::StartPacket(uint64_t this)
{
  if (*(this + 13872) == 1)
  {
    DeviceFaultNotify("glmesrd_packet_manager.cpp", 564, "StartPacket", "!m_bPacketStarted");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_packet_manager.cpp", 564, "!m_bPacketStarted");
  }

  *(this + 13872) = 1;
  *(this + 6515) = BlueFin::GlUtlCrc::ucCrcTable[*(this + 6515)];
  if (*(this + 6517) == 1)
  {
    if (!*(this + 6518))
    {
      v2 = (this + 6504);
      v3 = *(this + 6504);
      *(this + 6504) = v3 + 1;
      *v3 = -32;
      v1 = 3;
      goto LABEL_8;
    }

    if (!*(this + 6519))
    {
      v2 = (this + 6504);
      v4 = *(this + 6504);
      *(this + 6504) = v4 + 1;
      *v4 = -32;
      v1 = 4;
      goto LABEL_8;
    }
  }

  v1 = 0;
  v2 = (this + 6504);
LABEL_8:
  v5 = (*v2)++;
  *v5 = v1;
  return this;
}

uint64_t BlueFin::EswRpcEnc::GetEswJdRpcIf(BlueFin::EswRpcEnc *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    BlueFin::EswRpcEnc::MakeEswRpcEncoderImp(this);
    v2 = *(this + 1);
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t BlueFin::CarpEswRpcJdEncImp::esw_jd_rpc_sm_set_limits(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(v5) = a3;
  v19 = *MEMORY[0x29EDCA608];
  v8 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v17, v18, 1800, v8);
  BlueFin::GlStream::PutU08(v17, v5);
  if (v5)
  {
    v5 = v5;
    v9 = (a4 + 3);
    while (1)
    {
      v10 = *(v9 - 3);
      if (v10 >= (*(**(a1 + 8) + 448))(*(a1 + 8)))
      {
        break;
      }

      BlueFin::GlStream::PutU08(v17, *(v9 - 3));
      BlueFin::GlStream::PutU08(v17, *(v9 - 2));
      BlueFin::GlStream::PutU08(v17, *(v9 - 1));
      BlueFin::GlStream::CarpPutBits(v17, *v9 & 0xF, 4u, 8u);
      v11 = *v9;
      v9 += 4;
      BlueFin::GlStream::CarpPutBits(v17, v11 >> 4, 4u, 8u);
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    v15 = "array_sm_limits_ptr[i].sm_id < m_rAsicConfigIfc.GetMaxSearchManagerIndex()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 868, "esw_jd_rpc_sm_set_limits", "array_sm_limits_ptr[i].sm_id < m_rAsicConfigIfc.GetMaxSearchManagerIndex()");
    v16 = 868;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v16, v15);
  }

LABEL_5:
  Offset = BlueFin::GlStream::GetOffset(v17);
  BlueFin::GlMeSrdTransaction::Add(a2, 4, 0xAu, v18, Offset);
  v13 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v13)
  {
    v15 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 878, "esw_jd_rpc_sm_set_limits", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v16 = 878;
    goto LABEL_8;
  }

  return result;
}

uint64_t BlueFin::GlPeAlmMgr::ChooseInitialOppPairs(BlueFin::GlPeAlmMgr *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = *MEMORY[0x29EDCA608];
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  BlueFin::GlPeAlmMgr::Alm2Plane(a1, a2, a3, a4, a5, a6, a7, a8, v49, v50, v51, SHIDWORD(v51), v53, HIDWORD(v53), a2);
  v10 = 20;
  for (i = 1; i != 7; ++i)
  {
    if (((**a3 >> i) & 1) == 0)
    {
      v52 = i;
      v54 = v10;
      v12 = i - 1;
      *v58 = v60;
      v59 = 8;
      memset(v60, 0, 32);
      v13 = *(a1 + 4588);
      v14 = v13 + (v12 << 6);
      v15 = *(v14 + 40);
      if (*(v14 + 40))
      {
        v16 = 0;
        v17 = 0;
        v18 = (v13 + v10);
        v19 = -1;
        v20 = 1;
        v21 = -1;
        do
        {
          v22 = v16 + 1;
          if (v16 + 1 < v15)
          {
            v23 = v18;
            v24 = v20;
            do
            {
              v25 = *v23++;
              v26 = (*(v14 + 16 + 4 * v16) - v25);
              v27 = v26 / 360.0;
              if (v26 / 360.0 <= 0.0)
              {
                v28 = 0.0;
                if (v26 / 360.0 < 0.0)
                {
                  v28 = ceil(v27 + -0.5);
                }
              }

              else
              {
                v28 = floor(v27 + 0.5);
              }

              v29 = fabs(v26 + v28 * -360.0);
              if (v21 == -1 || v17 < v29)
              {
                v21 = v16;
                v19 = v24;
                v17 = v29;
              }

              ++v24;
            }

            while (v15 != v24);
          }

          ++v20;
          ++v18;
          ++v16;
        }

        while (v22 != v15);
        if (v21 == -1)
        {
          v33 = 0;
        }

        else
        {
          v32 = *(*(v14 + 8) + v21);
          *(v61 + 6 * v12) = v32;
          v33 = 1;
          *&v60[(v32 >> 3) & 0x1C] |= 1 << v32;
        }

        if (v19 == -1)
        {
          v34 = 0;
        }

        else
        {
          v35 = *(*(v14 + 8) + v19);
          *((v61 + 6 * v12) | v33) = v35;
          *&v60[(v35 >> 3) & 0x1C] |= 1 << v35;
          ++v33;
          v34 = v19 + 1;
        }
      }

      else
      {
        v34 = 0;
        v33 = 0;
        v21 = -1;
      }

      if (v33 < v15)
      {
        v36 = v21 + 1;
        do
        {
          BlueFin::GlPeAlmMgr::GetNextSvId(&v57, a1, *v58, v12, (v36 + v15) % v15);
          v15 = v57;
          *(v61 + 6 * v12 + v33) = v57;
          *(*v58 + ((v15 >> 3) & 0x1C)) |= 1 << v15;
          v37 = v33 + 1;
          LODWORD(v15) = *(*(a1 + 4588) + (v12 << 6) + 40);
          if (v33 + 1 < v15)
          {
            BlueFin::GlPeAlmMgr::GetNextSvId(&v56, a1, *v58, v12, (v34 + v15) % v15);
            v15 = v56;
            *(v61 + 6 * v12 + v37) = v56;
            *(*v58 + ((v15 >> 3) & 0x1C)) |= 1 << v15;
            v37 = v33 + 2;
            LODWORD(v15) = *(*(a1 + 4588) + (v12 << 6) + 40);
          }

          v33 = v37;
        }

        while (v37 < v15);
      }

      i = v52;
      v10 = v54;
    }

    v10 += 64;
  }

  v38 = 1;
  while (2)
  {
    for (j = 0; ; ++j)
    {
      v40 = j + 1;
      v41 = byte_298A3B380[j];
      if (((*(*a3 + ((v41 >> 3) & 0x1C)) >> (v41 & 0x1F)) & 1) == 0)
      {
        v42 = v41 - 1;
        v43 = *(*(a1 + 4588) + ((v41 - 1) << 6) + 40);
        if (v38 <= v43)
        {
          v44 = *(v61 + 6 * v42 + v38 - 1);
          if ((v44 - 33) >= 0xE0u)
          {
            BlueFin::GlPeAlmSvIdList::Add(v55, v44);
            if (BlueFin::GlSetBase::Cnt((v55 + 200)) == 188)
            {
              goto LABEL_48;
            }

            v43 = *(*(a1 + 4588) + (v42 << 6) + 40);
          }
        }

        if (v38 < v43)
        {
          v45 = *(v61 + 6 * v42 + v38);
          if ((v45 - 33) >= 0xE0u)
          {
            break;
          }
        }
      }

      if (v40 > 5)
      {
        goto LABEL_48;
      }

LABEL_45:
      ;
    }

    BlueFin::GlPeAlmSvIdList::Add(v55, v45);
    v46 = BlueFin::GlSetBase::Cnt((v55 + 200));
    if (v40 <= 5 && v46 != 188)
    {
      goto LABEL_45;
    }

LABEL_48:
    result = BlueFin::GlSetBase::Cnt((v55 + 200));
    if (result != 188)
    {
      v48 = v38 >= 5;
      v38 += 2;
      if (!v48)
      {
        continue;
      }
    }

    return result;
  }
}

char *BlueFin::GlStdLib::QsortImpl(char *this, void *a2, unsigned int a3, uint64_t (*a4)(char *, char *), int (*a5)(const void *, const void *), unsigned __int8 *a6)
{
  if (a2 >= 2)
  {
    v9 = a2;
    v10 = this;
    v11 = a3;
    v12 = -a3;
    do
    {
      v13 = &v10[v11];
      if ((a4(v10, &v10[v11]) & 0x80000000) != 0)
      {
        memcpy(a5, &v10[v11], v11);
        memcpy(&v10[v11], v10, v11);
        memcpy(v10, a5, v11);
      }

      v14 = (v9 - 1) * a3;
      v15 = &v10[v14];
      if (v14 <= a3)
      {
        v9 = 0;
        v16 = 1;
      }

      else
      {
        v9 = 0;
        v16 = 1;
        do
        {
          do
          {
            if (a4(v10, v15) > 0)
            {
              break;
            }

            v15 += v12;
            ++v9;
          }

          while (v13 < v15);
          while (v13 < v15)
          {
            if (a4(v13, v10) > 0)
            {
              memcpy(a5, v13, v11);
              memcpy(v13, v15, v11);
              memcpy(v15, a5, v11);
              break;
            }

            v13 += v11;
            v16 = (v16 + 1);
          }
        }

        while (v13 < v15);
      }

      memcpy(a5, v13, v11);
      memcpy(v13, v10, v11);
      memcpy(v10, a5, v11);
      this = BlueFin::GlStdLib::QsortImpl(v10, v16, a3, a4, a5, v17);
      v10 = &v15[v11];
    }

    while (v9 > 1);
  }

  return this;
}

uint64_t BlueFin::GlMeMeasSelfAidFilter::SelfAidDueToNoPeAid(BlueFin::GlMeMeasSelfAidFilter *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__src, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, int a22, unsigned __int8 a23, unsigned __int8 a24, unsigned __int16 a25, int a26, int a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, unsigned int a42)
{
  v58 = MEMORY[0x2A1C7C4A8](this, a2);
  STACK[0x23E8] = *MEMORY[0x29EDCA608];
  if (BlueFin::GlMeMeasSelfAidFilter::m_potWinMgr)
  {
    v42 = BlueFin::GlMeMeasSelfAidFilter::m_potMsmtMgr == 0;
  }

  else
  {
    v42 = 1;
  }

  if (v42 || BlueFin::GlMeMeasSelfAidFilter::m_potGlMeIf == 0)
  {
    DeviceFaultNotify("glme_measaidfilter.cpp", 333, "SelfAidDueToNoPeAid", "m_potWinMgr != (GlMeWinMgr*)(NULL_PTR) && m_potMsmtMgr != (GlMeMsmtMgr*)(NULL_PTR) && m_potGlMeIf != (GlMeIf*)(NULL_PTR)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_measaidfilter.cpp", 333, "m_potWinMgr != (GlMeWinMgr*)(NULL_PTR) && m_potMsmtMgr != (GlMeMsmtMgr*)(NULL_PTR) && m_potGlMeIf != (GlMeIf*)(NULL_PTR)");
  }

  BlueFin::GlSatAidInfo::GlSatAidInfo(&a37);
  BlueFin::GlSetBase::GlSetBase(&__src, &a17 + 1, 0x13u, &BlueFin::GlMeMeasSelfAidFilter::m_otSetMsmtSignalIds);
  v60 = var20_4;
  LOBYTE(v61) = 19;
  *var20_4 = 0u;
  *&var20_4[16] = 0u;
  *&var20_4[32] = 0u;
  *(&a9 + 4) = 0u;
  a10 = 0;
  BlueFin::GlSetBase::OperatorBinaryOr(&__src, &v60, &BlueFin::GlMeMeasSelfAidFilter::m_otSelfAidSigLst);
  BlueFin::GlSetBase::operator=(&__src, &v60);
  *(&a18 + 4) = *&var20_4[16];
  *(&a19 + 4) = *&var20_4[32];
  *(&a20 + 4) = *(&a9 + 4);
  a21 = 0u;
  *(&a17 + 4) = *var20_4;
  a23 = a17;
  memcpy(&a27, __src, 4 * a17);
  a25 = 0;
  a24 = 0;
  a26 = a27;
  BlueFin::GlSetIterator::operator++(&a23);
  v44 = a24 == a23 || BlueFin::GlMeMeasSelfAidFilter::m_potGlMeIf == 0;
  result = !v44;
  if (!v44)
  {
    v57 = result;
    v46 = 0;
    while (1)
    {
      v47 = a25;
      if (a25 >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v48 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * a25;
      v50 = v48[1];
      LOBYTE(v60) = *v48;
      v49 = v60;
      HIDWORD(v60) = v50;
      v61 = a25;
      MsmtSlotPtr = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(BlueFin::GlMeMeasSelfAidFilter::m_potMsmtMgr, &v60, 1, 1);
      v60 = &off_2A1F0E398;
      LOBYTE(v61) = 0;
      *var20_4 = -1;
      *&var20_4[4] = 575;
      *&var20_4[12] = 0;
      *&var20_4[20] = 0;
      *&var20_4[24] = xmmword_298A339D0;
      *&var20_4[40] = 2139095039;
      LOBYTE(__src) = v49;
      HIDWORD(__src) = v50;
      LOWORD(a17) = v47;
      LODWORD(v59) = 0;
      (*(*BlueFin::GlMeMeasSelfAidFilter::m_potWinMgr + 24))(BlueFin::GlMeMeasSelfAidFilter::m_potWinMgr, &__src, &v60, &v59, 0, 0, v58, 0.0, 0.0);
      if (v61 == v49 && *var20_4 == v50 && *&var20_4[32] <= 0.00000009)
      {
        v52 = 0;
        if (MsmtSlotPtr)
        {
          goto LABEL_23;
        }
      }

      else
      {
        BlueFin::GlSetBase::Remove(&BlueFin::GlMeMeasSelfAidFilter::m_otSelfAidSigLst, *&var20_4[4]);
        v52 = 1;
        if (MsmtSlotPtr)
        {
LABEL_23:
          if (*(MsmtSlotPtr + 140) >= 11)
          {
            v53 = *(MsmtSlotPtr + 84);
            if ((~v53 & 0x30) == 0)
            {
              if ((v53 & 0x40) == 0)
              {
                v52 = 1;
              }

              if ((v52 & 1) == 0)
              {
                a42 = v58;
                v54 = STACK[0x23C8] + 96 * v46;
                *v54 = v49;
                *(v54 + 12) = 6;
                *(v54 + 32) = 0;
                *(v54 + 40) = 1226024960;
                *(v54 + 44) = *&var20_4[28];
                *(v54 + 24) |= 0x12u;
                if ((~*&var20_4[20] & 0x12) == 0)
                {
                  v59 = 0;
                  LOBYTE(__src) = v49;
                  HIDWORD(__src) = v50;
                  LOWORD(a17) = v47;
                  SubBitTime = BlueFin::GlSystemTime::getSubBitTime(&v59, &__src, 0);
                  v56 = STACK[0x23C8] + 96 * v46;
                  *(v56 + 32) = SubBitTime;
                  *(v56 + 40) = 981668463;
                  *(v56 + 24) |= 4u;
                }

                ++v46;
              }
            }
          }
        }
      }

      BlueFin::GlSetIterator::operator++(&a23);
      if (a24 == a23 || v46 >= 0x5B)
      {
        (*(*BlueFin::GlMeMeasSelfAidFilter::m_potGlMeIf + 240))(BlueFin::GlMeMeasSelfAidFilter::m_potGlMeIf, &a37);
        return v57;
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlMeMsmtMgr::GetGlnsStrPhsInSym(BlueFin::GlMeMsmtMgr *a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4)
{
  v14[0] = *a2;
  v15 = 0;
  v16 = 575;
  if (v14[0] - 189 >= 0xFFFFFF44)
  {
    v7 = BlueFin::GlSvId::s_aucSvId2gnss[v14[0]];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v7] == 255)
    {
      v15 = -1;
    }

    else
    {
      v16 = BlueFin::GlSignalId::s_ausGnss2signalId[v7] + v14[0] - BlueFin::GlSvId::s_aucGnss2minSvId[v7];
    }
  }

  result = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(a1, v14, 1, 0);
  if (result)
  {
    if ((~*(result + 84) & 0x570) != 0)
    {
      return 0;
    }

    v9 = (*(a3 + 56) - *(result + 24)) * 1000.0 * (*(a3 + 40) + 1.0);
    v10 = *(result + 48);
    if (v9 <= 0.0)
    {
      if (v9 >= 0.0)
      {
        v12 = 0;
LABEL_14:
        v13 = BlueFin::GlMeSlots::GlonassFrameMgr(result, a2);
        return BlueFin::GlMeGlonassFrameMgr::GetGlnsStrPhsInSym(v13, v12 + v10, a4);
      }

      v11 = -0.5;
    }

    else
    {
      v11 = 0.5;
    }

    v12 = (v9 + v11);
    goto LABEL_14;
  }

  return result;
}

uint64_t BlueFin::GlMeMsmtMgr::GetB1cL1cSecCodePhsInSym(BlueFin::GlMeMsmtMgr *this, const BlueFin::GlSignalId *a2, const BlueFin::GlMeAcqWin *a3, unsigned __int16 *a4)
{
  result = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(this, a2, 1, 1);
  if (result)
  {
    if ((~*(result + 84) & 0x150) != 0)
    {
      return 0;
    }

    v9 = (*(a3 + 7) - *(result + 24)) * 1000.0 * (*(a3 + 10) + 1.0);
    if (v9 <= 0.0)
    {
      if (v9 >= 0.0)
      {
        v11 = 0;
LABEL_9:
        v12 = *a2;
        if (*a2)
        {
          v13 = *(result + 48);
          if (v12 <= 0x20)
          {
            v14 = *(this + 24);
            v15 = v12 - 1;
            if (*(v14 + v15 + 9868))
            {
              v16 = v14 + 4 * v15;
              v17 = 9900;
              goto LABEL_13;
            }

            return 0;
          }

          v25 = v12 - 66;
          if (v12 >= 0x42)
          {
            if (v12 > 0x4B)
            {
              if (v12 <= 0x8A)
              {
                v28 = *(this + 24);
                v29 = v12 - 76;
                if (*(v28 + v29 + 10080) == 1)
                {
                  v16 = v28 + 4 * v29;
                  v17 = 10144;
LABEL_13:
                  v18 = v11 + v13;
                  v19 = *(v16 + v17);
                  v20 = v11 + v13 - v19;
                  if (v11 + v13 >= v19)
                  {
                    MsPerSecFrame = BlueFin::GlSignalId::GetMsPerSecFrame(a2);
                    if (*(a2 + 4) < 0x23Fu)
                    {
                      v23 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]];
                      if (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]])
                      {
                        v24 = (v20 % MsPerSecFrame);
                        goto LABEL_24;
                      }

                      goto LABEL_31;
                    }
                  }

                  else
                  {
                    v21 = BlueFin::GlSignalId::GetMsPerSecFrame(a2);
                    v22 = BlueFin::GlSignalId::GetMsPerSecFrame(a2);
                    if (*(a2 + 4) < 0x23Fu)
                    {
                      v23 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]];
                      if (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]])
                      {
                        v24 = v21 + v18 - v19 + (v19 - v18) / v22 * v22;
LABEL_24:
                        *a4 = v24 / v23;
                        return 1;
                      }

LABEL_31:
                      v30 = "ucMsPerEpoch != 0";
                      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
                      v31 = 686;
LABEL_32:
                      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v31, v30);
                    }
                  }

                  v30 = "IsValid()";
                  DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
                  v31 = 679;
                  goto LABEL_32;
                }
              }
            }

            else
            {
              v26 = *(this + 24);
              if (*(v26 + v25 + 10028))
              {
                v16 = v26 + 4 * v25;
                v17 = 10040;
                goto LABEL_13;
              }
            }
          }
        }

        return 0;
      }

      v10 = -0.5;
    }

    else
    {
      v10 = 0.5;
    }

    v11 = (v9 + v10);
    goto LABEL_9;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSearchMgrBase::StopSat(uint64_t **this, unsigned int a2)
{
  BlueFin::GlMeSrdSatMgr::GetSvid(&v6, this[2], a2);
  if (((*(this[10] + ((v6 >> 3) & 0x1C)) >> (v6 & 0x1F)) & 1) == 0 || ((*(this[16] + (a2 >> 5)) >> (a2 & 0x1F)) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_search_mgr_base.cpp", 523, "StopSat", "m_otSetSvidInUse.Has(otSvid) && m_otSetSatIdInUse.Has(ucSatid)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_search_mgr_base.cpp", 523, "m_otSetSvidInUse.Has(otSvid) && m_otSetSatIdInUse.Has(ucSatid)");
  }

  BlueFin::GlSetBase::Remove((this + 10), v6);
  BlueFin::GlSetBase::Remove((this + 16), a2);
  BlueFin::GlSetBase::Remove((this + 20), a2);
  BlueFin::GlSetBase::Remove((this + 24), a2);
  BlueFin::GlSetBase::Remove((this + 28), a2);
  v4 = this[2];

  return BlueFin::GlMeSrdSatMgr::KillSat(v4, a2);
}

uint64_t BlueFin::GlMeSrdSatMgr::KillSat(BlueFin::GlMeSrdSatMgr *this, unsigned int a2)
{
  v2 = 1 << (a2 & 0x1F);
  v3 = v2 & *(*(this + 15) + 4 * (a2 >> 5));
  v4 = v2 & *(*(this + 11) + 4 * (a2 >> 5));
  if (!(v3 | v4))
  {
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 820, "KillSat", "IsSatAllocated(ucSatid)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", 820, "IsSatAllocated(ucSatid)");
  }

  v7 = v4 == 0;
  v8 = 56;
  if (v7)
  {
    v8 = 152;
    v9 = this + 120;
  }

  else
  {
    v9 = this + 88;
  }

  *(*(this + v8) + 4 * (a2 >> 5)) |= 1 << (a2 & 0x1F);
  BlueFin::GlSetBase::Remove(v9, a2);
  *(this + 49) -= *(*(this + 786) + 52 * a2 + 5);
  BlueFin::GlSetBase::Remove(this + 360, a2);

  return BlueFin::GlSatCarrIdSet::RemoveAllCarr((this + 280), a2);
}

uint64_t BlueFin::GlMeSrdSharedSatSearchMgr::MarkSvidAsScanned(uint64_t result, unsigned __int8 a2)
{
  v2 = (*(result + 368) + 4 * (a2 >> 5));
  v3 = *v2;
  v4 = 1 << (a2 & 0x1F);
  if ((v4 & v3) != 0)
  {
    if (*(result + 416))
    {
      v2 = (*(result + 424) + 4 * (a2 >> 5));
      v3 = *v2;
      if ((v4 & v3) == 0)
      {
        goto LABEL_4;
      }

      v5 = "m_otSvidNextRotationScanned.Missing(rotSvid)";
      DeviceFaultNotify("glmesrd_shared_sat_search_mgr.cpp", 283, "MarkSvidAsScanned", "m_otSvidNextRotationScanned.Missing(rotSvid)");
      v6 = 283;
    }

    else
    {
      v5 = "m_bNextRotationStarted";
      DeviceFaultNotify("glmesrd_shared_sat_search_mgr.cpp", 282, "MarkSvidAsScanned", "m_bNextRotationStarted");
      v6 = 282;
    }

    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_shared_sat_search_mgr.cpp", v6, v5);
  }

LABEL_4:
  *v2 = v3 | (1 << (a2 & 0x1F));
  return result;
}

uint64_t BlueFin::GlSatCarrIdSet::RemoveAllCarr(BlueFin::GlSatCarrIdSet *this, unsigned int a2)
{
  for (i = 0; i != 4; ++i)
  {
    BlueFin::GlSatCarrId::GlSatCarrId(v6, a2, i);
    result = BlueFin::GlSetBase::Remove(this, (v6[0] + 100 * v6[4]));
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSearchMgrBase::CreateSatAndStartSat(uint64_t a1, unsigned __int8 *a2, int a3, _BYTE *a4)
{
  v8 = BlueFin::GlSvId::s_aucSvId2gnss[*a2];
  v43 = 0;
  LOBYTE(v41) = *a4;
  for (i = 1; i != 4; ++i)
  {
    if ((*(**(a1 + 32) + 352))(*(a1 + 32)))
    {
      v11 = a4[i];
    }

    else
    {
      v11 = 0;
    }

    v42[i - 4] = v11;
  }

  v10.i32[0] = v41;
  v12 = vaddv_s16(*&vmovl_u8(v10));
  result = BlueFin::GlMeSrdSatMgr::GetNumSatTrkChnAvailable(*(a1 + 16));
  if (result >= v12)
  {
    v38[0] = *a2;
    v39 = 0;
    v40 = 575;
    if (v38[0] - 189 >= 0xFFFFFF44)
    {
      v14 = BlueFin::GlSvId::s_aucSvId2gnss[v38[0]];
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v14] == 255)
      {
        v39 = -1;
      }

      else
      {
        v40 = BlueFin::GlSignalId::s_ausGnss2signalId[v14] + v38[0] - BlueFin::GlSvId::s_aucGnss2minSvId[v14];
      }
    }

    StrategyId = BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(a1, v38);
    v16 = HIBYTE(v41);
    v37 = StrategyId;
    if (HIBYTE(v41) == 1)
    {
      v38[0] = *a2;
      v39 = 3;
      v40 = 575;
      if (v38[0] - 189 >= 0xFFFFFF44)
      {
        v17 = BlueFin::GlSvId::s_aucSvId2gnss[v38[0]];
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v17 + 21] == 255)
        {
          v39 = -1;
        }

        else
        {
          v40 = BlueFin::GlSignalId::s_ausGnss2signalId[v17] + v38[0] - BlueFin::GlSvId::s_aucGnss2minSvId[v17] + 3 * BlueFin::GlSvId::s_aucGnss2numSvId[v17];
        }
      }

      v36 = BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(a1, v38);
      LOBYTE(StrategyId) = v37;
    }

    else
    {
      v36 = 250;
    }

    v18 = BYTE2(v41);
    if (BYTE2(v41) == 1)
    {
      v38[0] = *a2;
      v39 = 2;
      v40 = 575;
      if (v38[0] - 189 >= 0xFFFFFF44)
      {
        v19 = BlueFin::GlSvId::s_aucSvId2gnss[v38[0]];
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v19 + 14] == 255)
        {
          v39 = -1;
        }

        else
        {
          v40 = BlueFin::GlSignalId::s_ausGnss2signalId[v19] + v38[0] - BlueFin::GlSvId::s_aucGnss2minSvId[v19] + 2 * BlueFin::GlSvId::s_aucGnss2numSvId[v19];
        }
      }

      v35 = BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(a1, v38);
      LOBYTE(StrategyId) = v37;
    }

    else
    {
      v35 = 250;
    }

    v42[0] = StrategyId;
    if (!v16)
    {
      goto LABEL_31;
    }

    if (v8)
    {
      if (v8 == 4)
      {
        if (!(*(**(a1 + 32) + 832))(*(a1 + 32), 9))
        {
LABEL_31:
          if (v18 && (*(**(a1 + 32) + 1200))(*(a1 + 32)))
          {
            LOBYTE(v41) = 0;
          }

          v20 = 0;
          v21 = &v43 + 1;
          v22 = 1;
          v23 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType;
          while (1)
          {
            v38[0] = *a2;
            v39 = v20;
            v40 = 575;
            if (v38[0] - 189 >= 0xFFFFFF44)
            {
              v24 = BlueFin::GlSvId::s_aucSvId2gnss[v38[0]];
              if (v23[v24] == 255)
              {
                v39 = -1;
              }

              else
              {
                v40 = BlueFin::GlSignalId::s_ausGnss2signalId[v24] + v38[0] - BlueFin::GlSvId::s_aucGnss2minSvId[v24] + BlueFin::GlSvId::s_aucGnss2numSvId[v24] * v20;
              }
            }

            if (v42[v20 - 4] == 1)
            {
              break;
            }

            v42[v20] = -6;
            *(v21 - 1) = 0;
LABEL_48:
            ++v20;
            v21 += 2;
            v23 += 7;
            if (v20 == 4)
            {
              if ((v22 & 1) == 0)
              {
                v29 = v37;
                if (a3 == 2)
                {
                  v29 = v35;
                }

                else if (a3 == 3)
                {
                  v29 = v36;
                }

                v30 = 0;
                switch(v29)
                {
                  case 0u:
                  case 1u:
                  case 2u:
                  case 3u:
                  case 4u:
                  case 5u:
                  case 6u:
                  case 7u:
                  case 8u:
                  case 9u:
                  case 0xDu:
                  case 0xEu:
                  case 0x10u:
                  case 0x11u:
                  case 0x12u:
                  case 0x1Au:
                  case 0x1Bu:
                  case 0x1Cu:
                  case 0x1Du:
                  case 0x1Eu:
                  case 0x1Fu:
                  case 0x20u:
                  case 0x21u:
                  case 0x22u:
                  case 0x23u:
                  case 0x26u:
                  case 0x29u:
                  case 0x2Au:
                  case 0x2Bu:
                  case 0x2Fu:
                  case 0x32u:
                  case 0x33u:
                  case 0x34u:
                  case 0x37u:
                  case 0x38u:
                  case 0x39u:
                  case 0x3Au:
                  case 0x3Du:
                  case 0x3Eu:
                  case 0x3Fu:
                  case 0x40u:
                  case 0x42u:
                  case 0x43u:
                  case 0x45u:
                  case 0x46u:
                  case 0x48u:
                  case 0x49u:
                  case 0x4Au:
                  case 0x4Bu:
                  case 0x4Cu:
                  case 0x4Du:
                  case 0x4Eu:
                  case 0x55u:
                  case 0x56u:
                  case 0x57u:
                  case 0x58u:
                  case 0x59u:
                  case 0x5Au:
                  case 0x5Cu:
                  case 0x5Du:
                  case 0x5Eu:
                  case 0x5Fu:
                  case 0x60u:
                  case 0x61u:
                    goto LABEL_58;
                  case 0xAu:
                  case 0xBu:
                  case 0xCu:
                  case 0xFu:
                  case 0x13u:
                  case 0x14u:
                  case 0x15u:
                  case 0x16u:
                  case 0x17u:
                  case 0x18u:
                  case 0x19u:
                  case 0x24u:
                  case 0x25u:
                  case 0x27u:
                  case 0x28u:
                  case 0x2Cu:
                  case 0x2Du:
                  case 0x2Eu:
                  case 0x35u:
                  case 0x36u:
                  case 0x3Bu:
                  case 0x3Cu:
                  case 0x41u:
                  case 0x44u:
                  case 0x47u:
                  case 0x51u:
                  case 0x52u:
                  case 0x53u:
                  case 0x5Bu:
                    v30 = 1;
LABEL_58:
                    v31 = BlueFin::GlMeSrdSatMgr::CreateSat(*(a1 + 16), a2, v42, &v43, a3, v30, 1, &v41);
                    *(*(a1 + 80) + ((*a2 >> 3) & 0x1C)) |= 1 << *a2;
                    *(*(a1 + 128) + 4 * (v31 >> 5)) |= 1 << v31;
                    BlueFin::GlSetBase::Remove(a1 + 160, v31);
                    BlueFin::GlSetBase::Remove(a1 + 192, v31);
                    return BlueFin::GlSetBase::Remove(a1 + 224, v31);
                  default:
                    v33 = "0";
                    DeviceFaultNotify("glmesrd_search_mgr_base.cpp", 921, "IsAlignedSearch", "0");
                    v34 = 921;
                    goto LABEL_63;
                }
              }

              Name = BlueFin::GlMeSrdSearchMgrBase::GetName(*(a1 + 72));
              GlCustomLog(14, "%s::CreateSatAndStartSat(svid %u) All Invalid Strategies!\n", Name, *a2);
              v33 = "!bNoValidStrategies";
              DeviceFaultNotify("glmesrd_search_mgr_base.cpp", 450, "CreateSatAndStartSat", "!bNoValidStrategies");
              v34 = 450;
LABEL_63:
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_search_mgr_base.cpp", v34, v33);
            }
          }

          v25 = BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(a1, v38);
          v42[v20] = v25;
          v26 = v37;
          v27 = v37;
          if (v20)
          {
            if (v20 == 2)
            {
              v28 = (*(**(a1 + 32) + 1200))(*(a1 + 32), v37);
              v27 = v35;
              if (!v28)
              {
                v26 = v37;
                goto LABEL_47;
              }
            }

            else
            {
              v27 = v36;
              if (v20 != 3)
              {
                goto LABEL_47;
              }
            }
          }

          v26 = (*(*a1 + 72))(a1, v27, v38);
LABEL_47:
          *(v21 - 1) = v26;
          *v21 = 1;
          v22 &= v25 == 250;
          goto LABEL_48;
        }

LABEL_30:
        LOBYTE(v41) = 0;
        goto LABEL_31;
      }

      if (v8 != 3)
      {
        goto LABEL_31;
      }
    }

    if (((*(**(a1 + 32) + 832))(*(a1 + 32), 10) & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSatMgr::GetNumSatTrkChnAvailable(BlueFin::GlMeSrdSatMgr *this)
{
  v1 = *(this + 48);
  v2 = *(this + 49);
  v3 = v1 >= v2;
  v4 = v1 - v2;
  if (!v3)
  {
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 272, "GetNumSatTrkChnAvailable", "m_ucMaxNumSatChn >= m_ucNumSatChnUsed");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", 272, "m_ucMaxNumSatChn >= m_ucNumSatChnUsed");
  }

  return v4;
}

uint64_t BlueFin::GlMeSrdSearchMgrBase::GetAidId(uint64_t a1, int a2, BlueFin::GlSignalId *a3)
{
  result = 0;
  switch(a2)
  {
    case 0:
    case 1:
      return result;
    case 2:
    case 3:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 14:
    case 15:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 39:
    case 40:
    case 43:
    case 44:
    case 45:
    case 46:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 75:
    case 76:
    case 77:
    case 78:
    case 81:
    case 82:
    case 83:
    case 86:
    case 87:
    case 90:
    case 91:
    case 92:
    case 97:
      v6 = *(a1 + 24);

      return BlueFin::GlMeSrdAidingMgr::GetAidIdFromSignalId(v6, a3);
    case 4:
    case 5:
    case 6:
    case 7:
    case 13:
    case 16:
    case 17:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 38:
    case 41:
    case 42:
    case 47:
    case 50:
    case 51:
    case 52:
    case 61:
    case 62:
    case 63:
    case 72:
    case 73:
    case 74:
    case 85:
    case 88:
    case 89:
    case 93:
    case 94:
    case 95:
    case 96:
      v7 = *a3;
      if (v7 < 0x34)
      {
        return 0;
      }

      if (v7 < 0x42)
      {
        return 1;
      }

      if (v7 - 76 >= 0x3F)
      {
        return 0;
      }

      return 2;
    default:
      DeviceFaultNotify("glmesrd_search_mgr_base.cpp", 774, "GetAidId", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_search_mgr_base.cpp", 774, "0");
  }
}

uint64_t BlueFin::GlMeSrdSatMgr::CreateSat(uint64_t a1, _BYTE *a2, unsigned __int8 *a3, void *a4, int a5, char a6, char a7, unsigned __int8 *a8)
{
  v8 = *a2;
  if (((*(*a1 + ((v8 >> 3) & 0x1C)) >> (v8 & 0x1F)) & 1) == 0)
  {
    v23 = "m_otSvidSupported.Has(rotSvid)";
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 292, "CreateSat", "m_otSvidSupported.Has(rotSvid)");
    v24 = 292;
    goto LABEL_13;
  }

  v15 = a1 + 56;
  v14 = *(a1 + 56);
  v16 = *(a1 + 64);
  if (!*v14)
  {
    if (v16 < 2)
    {
LABEL_12:
      v23 = "HasSatAvailable()";
      DeviceFaultNotify("glmesrd_sat_mgr.cpp", 293, "CreateSat", "HasSatAvailable()");
      v24 = 293;
      goto LABEL_13;
    }

    v20 = v16 - 1;
    v21 = v14 + 1;
    while (!*v21++)
    {
      if (!--v20)
      {
        goto LABEL_12;
      }
    }
  }

  v46 = *(a1 + 64);
  memcpy(v50, v14, 4 * v16);
  v48 = 0;
  v47 = 0;
  v49 = v50[0];
  BlueFin::GlSetIterator::operator++(&v46);
  if (v47 == v46)
  {
LABEL_7:
    v48 = 0;
    v47 = 0;
    v49 = v50[0];
    BlueFin::GlSetIterator::operator++(&v46);
    v19 = v48;
  }

  else
  {
    v18 = *(a1 + 6288);
    while (*(v18 + 52 * v48) == v8)
    {
      BlueFin::GlSetIterator::operator++(&v46);
      if (v47 == v46)
      {
        goto LABEL_7;
      }
    }

    v19 = v48;
  }

  v25 = v19;
  if (v19 != 255)
  {
    BlueFin::GlSetBase::Remove(v15, v19);
    *(*(a1 + 88) + 4 * (v19 >> 5)) |= 1 << v19;
    v26 = 52 * v19;
    *(*(a1 + 6288) + v26) = *a2;
    v27 = v26 + 24;
    v28 = 4;
    do
    {
      *(*(a1 + 6288) + v27++) = 0;
      --v28;
    }

    while (v28);
    if (v19 >= 0x64u)
    {
      v23 = "ucSatId < _DIM(m_aotSatData)";
      DeviceFaultNotify("glmesrd_sat_mgr.cpp", 487, "AssignCarriers", "ucSatId < _DIM(m_aotSatData)");
      v24 = 487;
      goto LABEL_13;
    }

    v29 = (*(a1 + 6288) + 52 * v19);
    v30 = *a8;
    v31 = a8[1];
    v32 = a8[2];
    v33 = a8[3];
    v29[5] = 0;
    if (v30 == 1)
    {
      v29[1] = *a3;
      v29[5] = 1;
      *(v29 + 2) = 0;
    }

    if (((v31 & 1) != 0 || (v32 & 1) != 0 || v33) && ((*(**(a1 + 6552) + 352))(*(a1 + 6552)) & 1) == 0)
    {
      v23 = "m_rAsicConfigIfc.IsMultiCarrSatSupported()";
      DeviceFaultNotify("glmesrd_sat_mgr.cpp", 506, "AssignCarriers", "m_rAsicConfigIfc.IsMultiCarrSatSupported()");
      v24 = 506;
      goto LABEL_13;
    }

    LODWORD(v34) = *v29;
    if (v33)
    {
      if ((v34 - 66) < 0x49 || (v34 - 1) <= 0x1F)
      {
        if (((*(**(a1 + 6552) + 832))(*(a1 + 6552), 9) & 1) == 0 && ((*(**(a1 + 6552) + 832))(*(a1 + 6552), 10) & 1) == 0)
        {
          v23 = "m_rAsicConfigIfc.IsFeatureSupported(GLME_B1C_SUPPORTED) || m_rAsicConfigIfc.IsFeatureSupported(GLME_L1C_SUPPORTED)";
          DeviceFaultNotify("glmesrd_sat_mgr.cpp", 517, "AssignCarriers", "m_rAsicConfigIfc.IsFeatureSupported(GLME_B1C_SUPPORTED) || m_rAsicConfigIfc.IsFeatureSupported(GLME_L1C_SUPPORTED)");
          v24 = 517;
          goto LABEL_13;
        }

        v34 = *v29;
        v36 = 1 << (v34 & 0x1F);
        if ((v36 & *(*(a1 + 792) + 4 * (v34 >> 5))) == 0 && (v36 & *(*(a1 + 840) + 4 * (v34 >> 5))) == 0)
        {
          v23 = "m_otSetSvidB1CEnabled.Has(otSvId) || m_otSetSvidL1CEnabled.Has(otSvId)";
          DeviceFaultNotify("glmesrd_sat_mgr.cpp", 518, "AssignCarriers", "m_otSetSvidB1CEnabled.Has(otSvId) || m_otSetSvidL1CEnabled.Has(otSvId)");
          v24 = 518;
          goto LABEL_13;
        }

        v29[5] = 0;
        v29[1] = a3[3];
        v29[5] = 1;
        *(v29 + 2) = 3;
      }
    }

    v37 = 1 << (v34 & 0x1F);
    if (v31)
    {
      if ((v37 & *(*(a1 + 696) + 4 * (v34 >> 5))) == 0)
      {
        v23 = "m_otSetSvidL2Enabled.Has(otSvId)";
        DeviceFaultNotify("glmesrd_sat_mgr.cpp", 530, "AssignCarriers", "m_otSetSvidL2Enabled.Has(otSvId)");
        v24 = 530;
        goto LABEL_13;
      }

      v29[v29[5] + 1] = a3[1];
      v38 = v29[5];
      v29[5] = v38 + 1;
      *&v29[4 * v38 + 8] = 1;
    }

    else if ((v37 & *(*(a1 + 696) + 4 * (v34 >> 5))) != 0)
    {
      v23 = "m_otSetSvidL2Enabled.Missing(otSvId)";
      DeviceFaultNotify("glmesrd_sat_mgr.cpp", 537, "AssignCarriers", "m_otSetSvidL2Enabled.Missing(otSvId)");
      v24 = 537;
      goto LABEL_13;
    }

    if (v32)
    {
      if ((v37 & *(*(a1 + 744) + 4 * (v34 >> 5))) != 0)
      {
        if ((v34 - 76) > 0x3E || (*(**(a1 + 6552) + 832))(*(a1 + 6552), 7))
        {
          v29[v29[5] + 1] = a3[2];
          v39 = v29[5];
          v40 = v39 + 1;
          v29[5] = v39 + 1;
          *&v29[4 * v39 + 8] = 2;
LABEL_46:
          v29[28] = 0;
          if (v40)
          {
            for (i = 0; i != v40; ++i)
            {
              if (*&v29[4 * i + 8] == a5)
              {
                v29[28] = i;
              }
            }
          }

          *(*(a1 + 6288) + 52 * v25 + 33) = *a4;
          *(*(a1 + 6288) + 52 * v25 + 44) = a6;
          v42 = *(a1 + 6288) + 52 * v25;
          *(v42 + 29) = a7;
          *(a1 + 49) += *(v42 + 5);
          return v25;
        }

LABEL_45:
        v40 = v29[5];
        goto LABEL_46;
      }

      v23 = "m_otSetSvidL5Enabled.Has(otSvId)";
      DeviceFaultNotify("glmesrd_sat_mgr.cpp", 543, "AssignCarriers", "m_otSetSvidL5Enabled.Has(otSvId)");
      v24 = 543;
    }

    else
    {
      if ((v37 & *(*(a1 + 744) + 4 * (v34 >> 5))) == 0)
      {
        goto LABEL_45;
      }

      v23 = "m_otSetSvidL5Enabled.Missing(otSvId)";
      DeviceFaultNotify("glmesrd_sat_mgr.cpp", 553, "AssignCarriers", "m_otSetSvidL5Enabled.Missing(otSvId)");
      v24 = 553;
    }

LABEL_13:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", v24, v23);
  }

  return v25;
}

uint64_t BlueFin::GlPeAlmMgr::SetSignalAiding(BlueFin::GlPeAlmMgr *this, const void **a2, BlueFin::GlMeSignalAidInfo *a3, const BOOL *a4, BlueFin::GlMeSignalAidInfo *a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, int a12, unsigned int a13, char a14, int a15, int a16, __int32 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, uint64_t a25, uint64_t a26, __int128 a27, __int128 a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, __int128 a37, uint64_t a38, uint64_t a39, __int128 *a40, char *a41, __int128 a42, __int128 a43, uint64_t a44, uint64_t a45, __int128 a46, uint64_t a47, uint64_t a48, __int128 a49, __int128 a50)
{
  v300 = a5;
  STACK[0x11F8] = *MEMORY[0x29EDCA608];
  if (!a3 || !a4)
  {
    DeviceFaultNotify("glpe_almmgr.cpp", 3169, "SetSignalAiding", "paotGnssSigAid != 0 && abIncludeGnss != 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_almmgr.cpp", 3169, "paotGnssSigAid != 0 && abIncludeGnss != 0");
  }

  v301 = a4;
  *(a5 + 7) = 0;
  v299 = (&a9 + 4);
  vars8 = &a9 + 4;
  *(&a9 + 4) = 0u;
  *(&a10 + 4) = 0u;
  v51 = *(a2 + 8);
  LOBYTE(STACK[0xBC0]) = v51;
  memcpy(&STACK[0xBC8], *a2, 4 * v51);
  LOWORD(STACK[0xBC2]) = 0;
  LOBYTE(STACK[0xBC1]) = 0;
  LODWORD(STACK[0xBC4]) = STACK[0xBC8];
  BlueFin::GlSetIterator::operator++(&STACK[0xBC0]);
  while (LOBYTE(STACK[0xBC1]) != LOBYTE(STACK[0xBC0]))
  {
    if (LOWORD(STACK[0xBC2]) - 33 >= 0xFFFFFFE0)
    {
      *(&a9 + ((LOWORD(STACK[0xBC2]) >> 3) & 4) + 4) |= 1 << LOWORD(STACK[0xBC2]);
    }

    BlueFin::GlSetIterator::operator++(&STACK[0xBC0]);
  }

  v304 = this;
  BlueFin::GlSetBase::GlSetBase(&__src, var20_4, 8u, &vars8);
  STACK[0xBC0] = &STACK[0xBCC];
  LOBYTE(STACK[0xBC8]) = 8;
  *&STACK[0xBCC] = 0u;
  *&STACK[0xBDC] = 0u;
  v298 = this + 36704;
  BlueFin::GlSetBase::OperatorBinaryOr(&__src, &STACK[0xBC0], this + 4590);
  BlueFin::GlSetBase::operator=(&__src, &STACK[0xBC0]);
  v59 = *&STACK[0xBDC];
  var20_4[0] = *&STACK[0xBCC];
  var20_4[1] = v59;
  a40 = &a27;
  a41 = &a42 + 4;
  LOBYTE(a42) = 8;
  *(&a43 + 4) = 0u;
  *(&a42 + 4) = 0u;
  *(&a37 + 12) = 0u;
  a36 = 0u;
  a37 = 0u;
  a34 = 0u;
  a35 = 0u;
  a32 = 0u;
  a33 = 0u;
  a30 = 0u;
  a31 = 0u;
  a28 = 0u;
  a29 = 0u;
  a27 = 0u;
  v60 = this;
  v61 = *(this + 54);
  v62 = *(v61 + 24);
  if (!*v62)
  {
    v76 = *(v61 + 32);
    if (v76 < 2)
    {
      goto LABEL_91;
    }

    v77 = v76 - 1;
    v78 = v62 + 1;
    while (!*v78++)
    {
      if (!--v77)
      {
        goto LABEL_91;
      }
    }
  }

  v60 = this;
  if (!BlueFin::GlPeAlmMgr::Alm2Plane(this, v52, v53, v54, v55, v56, v57, v58, v296, v298, &a9 + 4, (&a9 + 4) >> 32, v300, HIDWORD(v300), v301))
  {
    goto LABEL_91;
  }

  v69 = *(v298 + 2);
  if (!*v69)
  {
    v80 = v298[24];
    if (v80 < 2)
    {
      goto LABEL_31;
    }

    v81 = v80 - 1;
    v82 = v69 + 1;
    while (!*v82++)
    {
      if (!--v81)
      {
        goto LABEL_31;
      }
    }
  }

  if (v298[320] == (*(*(this + 56) + 2576) != 0))
  {
    if (v298[320] && BlueFin::GlSetBase::Cnt((v298 + 16)) > 2u)
    {
      goto LABEL_91;
    }

    if (v298[8] == 1)
    {
      STACK[0x11A0] = &STACK[0x11AC];
      LOBYTE(STACK[0x11A8]) = 8;
      *&STACK[0x11AC] = 0u;
      *&STACK[0x11BC] = 0u;
      if (!BlueFin::GlSetBase::operator==(&vars8, this + 37032))
      {
        BlueFin::GlSvIdSet::operator~(this + 4629, &a49);
        BlueFin::GlSetBase::GlSetBase(&a18, &a18 + 3, 8u, &vars8);
        STACK[0xBC0] = &STACK[0xBCC];
        LOBYTE(STACK[0xBC8]) = 8;
        *&STACK[0xBCC] = 0u;
        *&STACK[0xBDC] = 0u;
        BlueFin::GlSetBase::OperatorBinaryAnd(&a18, &STACK[0xBC0], &a49);
        BlueFin::GlSetBase::operator=(&a18, &STACK[0xBC0]);
        v70 = *&STACK[0xBDC];
        *(&a18 + 12) = *&STACK[0xBCC];
        *(&a19 + 12) = v70;
        BlueFin::GlSetBase::operator=(&STACK[0x11A0], &a18);
        v71 = *(&a19 + 12);
        *&STACK[0x11AC] = *(&a18 + 12);
        *&STACK[0x11BC] = v71;
      }

      v60 = this;
      if (!*STACK[0x11A0])
      {
        v72 = LOBYTE(STACK[0x11A8]);
        if (v72 < 2)
        {
          goto LABEL_91;
        }

        v73 = v72 - 1;
        v74 = (STACK[0x11A0] + 4);
        while (!*v74++)
        {
          if (!--v73)
          {
            goto LABEL_91;
          }
        }
      }
    }
  }

LABEL_31:
  if (!*__src)
  {
    if (v307 < 2uLL)
    {
LABEL_58:
      STACK[0xBC0] = &STACK[0xBCC];
      LOBYTE(STACK[0xBC8]) = 2;
      STACK[0xBCC] = 0;
      BlueFin::GlPeAlmMgr::ChooseInitialOppPairs(v60, &a27, &STACK[0xBC0], v64, v65, v66, v67, v68);
LABEL_90:
      v60 = v304;
      goto LABEL_91;
    }

    v105 = v307 - 1;
    v106 = __src + 4;
    while (!*v106++)
    {
      if (!--v105)
      {
        goto LABEL_58;
      }
    }
  }

  if (!*(*(v60 + 56) + 2576))
  {
    *&a49 = &a49 + 12;
    BYTE8(a49) = 2;
    *(&a49 + 12) = 0;
    BlueFin::GlPeAlmMgr::Alm2Plane(v60, __src, v63, v64, v65, v66, v67, v68, v297, v298, v299, SHIDWORD(v299), v300, HIDWORD(v300), v301);
    *&STACK[0xC60] = 0u;
    *&STACK[0xC70] = 0u;
    *&STACK[0xC40] = 0u;
    *&STACK[0xC50] = 0u;
    *&STACK[0xC20] = 0u;
    *&STACK[0xC30] = 0u;
    *&STACK[0xC00] = 0u;
    *&STACK[0xC10] = 0u;
    *&STACK[0xBE0] = 0u;
    *&STACK[0xBF0] = 0u;
    *&STACK[0xBC0] = 0u;
    *&STACK[0xBD0] = 0u;
    v108 = *v298;
    v109 = *v298 + 16;
    v110 = 1;
    v111 = vars8;
    do
    {
      v112 = v108 + ((v110 - 1) << 6);
      v113 = *(v112 + 40);
      if (*(v112 + 40))
      {
        v114 = 0;
        v115 = *(v112 + 8);
        v116 = a49;
        do
        {
          v117 = *(v115 + v114);
          if ((*&v111[(v117 >> 3) & 0x1C] >> (v117 & 0x1F)))
          {
            *v116 |= 1 << v110;
          }

          v118 = (v113 + v114 - 1) % v113;
          v119 = *(v115 + v118);
          v120 = *(v109 + 4 * v114);
          v121 = *(v112 + 4 * v118 + 16) - v120;
          v122 = v121 / 360.0;
          v123 = ceil(v122 + -0.5);
          if (v122 >= 0.0)
          {
            v123 = 0.0;
          }

          v124 = floor(v122 + 0.5);
          if (v122 > 0.0)
          {
            v125 = v124;
          }

          else
          {
            v125 = v123;
          }

          v126 = (*(v112 + 4 * ((v113 + v114 + 1) % v113) + 16) - v120);
          v127 = v126 / 360.0;
          if (v126 / 360.0 <= 0.0)
          {
            v128 = 0.0;
            if (v126 / 360.0 < 0.0)
            {
              v128 = ceil(v127 + -0.5);
            }
          }

          else
          {
            v128 = floor(v127 + 0.5);
          }

          if (fabs(v126 + v128 * -360.0) < fabs(v121 - v125 * 360.0))
          {
            v119 = *(v115 + (v113 + v114 + 1) % v113);
          }

          *(&STACK[0xBC0] + (v117 - 1)) = v119;
          ++v114;
        }

        while (v113 != v114);
      }

      ++v110;
      v109 += 64;
    }

    while (v110 != 7);
    LODWORD(a18) = 8;
    memcpy(&a18 + 8, v111, 0x20uLL);
    DWORD1(a18) = DWORD2(a18);
    while (1)
    {
      BlueFin::GlSetIterator::operator++(&a18);
      if (BYTE1(a18) == a18)
      {
        break;
      }

      BlueFin::GlPeAlmSvIdList::Add(&a27, BYTE2(a18));
    }

    LOBYTE(a18) = v298[336];
    memcpy(&a18 + 8, *(v298 + 41), 4 * a18);
    WORD1(a18) = 0;
    BYTE1(a18) = 0;
    DWORD1(a18) = DWORD2(a18);
    BlueFin::GlSetIterator::operator++(&a18);
    while (BYTE1(a18) != a18)
    {
      BlueFin::GlPeAlmSvIdList::Add(&a27, BYTE2(a18));
      BlueFin::GlSetIterator::operator++(&a18);
    }

    v134 = 0;
    v135 = &a41[4 * a42 - 4];
    do
    {
      if (*v135)
      {
        v136 = *v135 - (((*v135 >> 1) & 0x5B6DB6DB) + ((*v135 >> 2) & 0x9249249));
        v134 = ((v136 + (v136 >> 3)) & 0xC71C71C7) + v134 - 63 * (((v136 + (v136 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      v135 -= 4;
    }

    while (v135 >= a41);
    v137 = v134;
    if (v134)
    {
      v138 = 0;
      do
      {
        BlueFin::GlPeAlmSvIdList::Add(&a27, *(&STACK[0xBC0] + *(a40 + v138++) - 1));
      }

      while (v137 != v138);
    }

    BlueFin::GlPeAlmMgr::ChooseInitialOppPairs(v304, &a27, &a49, v129, v130, v131, v132, v133);
    goto LABEL_90;
  }

  LOBYTE(a18) = v307;
  memcpy(&a18 + 8, __src, 4 * v307);
  WORD1(a18) = 0;
  BYTE1(a18) = 0;
  DWORD1(a18) = DWORD2(a18);
  while (1)
  {
    BlueFin::GlSetIterator::operator++(&a18);
    if (BYTE1(a18) == a18)
    {
      break;
    }

    BlueFin::GlPeAlmSvIdList::Add(&a27, BYTE2(a18));
  }

  v84 = 0;
  STACK[0xBA8] = 0;
  a49 = 0u;
  a50 = 0u;
  *&STACK[0xB80] = 0u;
  *&STACK[0xB90] = 0u;
  LODWORD(STACK[0xBA0]) = 0;
  *&STACK[0xCA0] = 0u;
  *&STACK[0xCB0] = 0u;
  *&STACK[0xC80] = 0u;
  *&STACK[0xC90] = 0u;
  *&STACK[0xC60] = 0u;
  *&STACK[0xC70] = 0u;
  *&STACK[0xC40] = 0u;
  *&STACK[0xC50] = 0u;
  *&STACK[0xC20] = 0u;
  *&STACK[0xC30] = 0u;
  *&STACK[0xC00] = 0u;
  *&STACK[0xC10] = 0u;
  *&STACK[0xBE0] = 0u;
  *&STACK[0xBF0] = 0u;
  *&STACK[0xBC0] = 0u;
  *&STACK[0xBD0] = 0u;
  do
  {
    v85 = &STACK[0xBC0] + v84;
    *v85 = 0;
    *(v85 + 1) = 0;
    v84 += 8;
  }

  while (v84 != 256);
  WORD1(a18) = 0;
  BYTE1(a18) = 0;
  DWORD1(a18) = DWORD2(a18);
  BlueFin::GlSetIterator::operator++(&a18);
  if (BYTE1(a18) != a18)
  {
    v86 = 0;
    v87 = 0.0;
    v88 = 0.0;
    v89 = 0.0;
    do
    {
      if (BlueFin::GlPeAlmMgr::GetSatPos(v60, 0, BYTE2(a18), *(*(v60 + 56) + 2568), &a49))
      {
        v89 = v89 + *&a49;
        v88 = v88 + *(&a49 + 1);
        v87 = v87 + *&a50;
        ++v86;
      }

      v60 = this;
      BlueFin::GlSetIterator::operator++(&a18);
    }

    while (BYTE1(a18) != a18);
    if (v86)
    {
      v91 = 0;
      v92 = v86;
      v93 = v89 / v86;
      v94 = v88 / v86;
      v95 = 1;
      v96 = BYTE2(a18);
      v97 = v87 / v92;
      do
      {
        if (((*&a41[4 * (v95 >> 5)] >> (v95 & 0x1F)) & 1) == 0)
        {
          if (BlueFin::GlPeAlmMgr::GetSatPos(v60, 0, v96, *(*(v60 + 56) + 2568), &a49))
          {
            v98 = *&a49 - v93;
            v99 = *(&a49 + 1) - v94;
            v100 = *&a50 - v97;
            v101 = &STACK[0xBC0] + v91;
            *v101 = v95;
            *(v101 + 1) = sqrt(v99 * v99 + v98 * v98 + v100 * v100);
            v91 = (v91 + 1);
          }

          v60 = v304;
        }

        ++v95;
      }

      while (v95 != 33);
      BlueFin::GlStdLib::QsortImpl(&STACK[0xBC0], v91, 8u, AlmMgr_SortSvIds, &STACK[0x11A0], v90);
      v60 = v304;
      if (v91 >= 1)
      {
        v102 = v91;
        v103 = &STACK[0xBC0];
        do
        {
          v104 = *v103;
          v103 += 8;
          BlueFin::GlPeAlmSvIdList::Add(&a27, v104);
          --v102;
        }

        while (v102);
      }
    }
  }

LABEL_91:
  if (!*a41)
  {
    if (a42 < 2uLL)
    {
LABEL_97:
      BlueFin::GlPeAlmSvIdList::operator=(&a27, v60 + 36768);
      goto LABEL_98;
    }

    v139 = a42 - 1;
    v140 = a41 + 4;
    while (!*v140++)
    {
      if (!--v139)
      {
        goto LABEL_97;
      }
    }
  }

  BlueFin::GlPeAlmSvIdList::operator=(v60 + 36768, &a27);
LABEL_98:
  *&a49 = &a49 + 12;
  BYTE8(a49) = 8;
  *(&a49 + 12) = BlueFin::GlSvIdSet::csm_aulGlSvIdSet[0];
  *(&a50 + 12) = *algn_298A323DC;
  BlueFin::GlSetBase::GlSetBase(&a18, &a18 + 3, 8u, &a41);
  STACK[0xBC0] = &STACK[0xBCC];
  LOBYTE(STACK[0xBC8]) = 8;
  *&STACK[0xBCC] = 0u;
  *&STACK[0xBDC] = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&a18, &STACK[0xBC0], &a49);
  BlueFin::GlSetBase::operator=(&a18, &STACK[0xBC0]);
  v143 = 0;
  v144 = *&STACK[0xBDC];
  *(&a18 + 12) = *&STACK[0xBCC];
  *(&a19 + 12) = v144;
  v145 = (a18 + 4 * BYTE8(a18) - 4);
  v146 = v304;
  v147 = v300;
  v148 = a3;
  do
  {
    if (*v145)
    {
      v149 = *v145 - (((*v145 >> 1) & 0x5B6DB6DB) + ((*v145 >> 2) & 0x9249249));
      v143 = ((v149 + (v149 >> 3)) & 0xC71C71C7) + v143 - 63 * (((v149 + (v149 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v145;
  }

  while (v145 >= a18);
  if ((v143 & 0xE0) == 0)
  {
    v150 = 1;
    do
    {
      BlueFin::GlPeAlmSvIdList::Add(&a27, v150);
      v151 = v150++;
    }

    while (v151 < 0x20);
  }

  v152 = 0;
  v305 = 0x4200000004;
  v153 = 0uLL;
  a23 = 0u;
  a24 = 0u;
  a21 = 0u;
  a22 = 0u;
  a19 = 0u;
  a20 = 0u;
  a18 = 0u;
  do
  {
    v154 = &a18 + v152;
    *v154 = 0;
    *(v154 + 1) = 0;
    v152 += 8;
  }

  while (v152 != 112);
  if (v301[2])
  {
    if (*(*(v304 + 55) + 100) == -1)
    {
      LODWORD(v155) = 0;
      v157 = 0x3FFF;
    }

    else
    {
      v155 = 0;
      v156 = 0;
      LOBYTE(STACK[0xBC0]) = 52;
      v157 = 0x3FFF;
      do
      {
        *v153.i32 = BlueFin::GlPeAsstMgr::ComputeElevation(*(v304 + 55), &STACK[0xBC0], &v305 + 4, -7200001, 0, v153, v144);
        *v159.i32 = *v153.i32 + (truncf(*v153.i32 * 2.3283e-10) * -4295000000.0);
        v160.i64[0] = 0x8000000080000000;
        v160.i64[1] = 0x8000000080000000;
        v144 = vbslq_s8(v160, v159, v153);
        if (*v153.i32 > 4295000000.0)
        {
          v153.i32[0] = v144.i32[0];
        }

        if (*v153.i32 < -4295000000.0)
        {
          *v144.i32 = -*v153.i32;
          *v153.i32 = -(*v153.i32 - (truncf(*v153.i32 * -2.3283e-10) * -4295000000.0));
          v153 = vbslq_s8(v160, v153, v144);
          *v153.i32 = -*v153.i32;
        }

        *v144.i32 = -*v153.i32;
        if (*v153.i32 < 0.0)
        {
          v161 = --*v153.i32;
        }

        else
        {
          v161 = *v153.i32;
        }

        if ((v161 & 0x80000000) != 0)
        {
          if (v161 != -90)
          {
            (*(**(v304 + 57) + 64))(*(v304 + 57), &STACK[0xBC0]);
          }
        }

        else
        {
          v162 = &a18 + 8 * v155;
          v163 = STACK[0xBC0];
          *v162 = STACK[0xBC0];
          *(v162 + 1) = 90 - v161;
          v155 = (v155 + 1);
          ++v156;
          v157 &= ~(1 << (v163 - 52));
        }

        v164 = ++LOBYTE(STACK[0xBC0]);
      }

      while (v164 < 0x42);
      BlueFin::GlStdLib::QsortImpl(&a18, v155, 8u, AlmMgr_SortSvIds, &STACK[0xBC0], v158);
      v146 = v304;
      if (*(*(v304 + 55) + 100) != -1)
      {
        LODWORD(STACK[0xBC8]) = v157;
        LODWORD(STACK[0xBC0]) = 1;
        LODWORD(STACK[0xBC4]) = v157;
        BlueFin::GlSetIterator::operator++(&STACK[0xBC0]);
        if (LOBYTE(STACK[0xBC1]) != LOBYTE(STACK[0xBC0]))
        {
          v167 = 0;
          do
          {
            LOBYTE(a49) = LOBYTE(STACK[0xBC2]) + 52;
            *v168.i32 = BlueFin::GlPeAsstMgr::ComputeElevation(*(v304 + 55), &a49, &v305, -7200001, 0, v165, v166);
            *v169.i32 = *v168.i32 + (truncf(*v168.i32 * 2.3283e-10) * -4295000000.0);
            v170.i64[0] = 0x8000000080000000;
            v170.i64[1] = 0x8000000080000000;
            v171 = vbslq_s8(v170, v169, v168);
            if (*v168.i32 > 4295000000.0)
            {
              v168.i32[0] = v171.i32[0];
            }

            if (*v168.i32 < -4295000000.0)
            {
              *v171.i32 = -*v168.i32;
              *v168.i32 = -(*v168.i32 - (truncf(*v168.i32 * -2.3283e-10) * -4295000000.0));
              *v168.i32 = -*vbslq_s8(v170, v168, v171).i32;
            }

            if (*v168.i32 < 0.0)
            {
              v172 = --*v168.i32;
            }

            else
            {
              v172 = *v168.i32;
            }

            if ((v172 & 0x80000000) != 0)
            {
              if (v172 != -90)
              {
                (*(**(v304 + 57) + 64))(*(v304 + 57), &a49);
              }
            }

            else
            {
              v173 = &a18 + 8 * v155;
              v174 = a49;
              *v173 = a49;
              *(v173 + 1) = 90 - v172;
              LODWORD(v155) = v155 + 1;
              v167 = (v167 + 1);
              v157 &= ~(1 << (v174 - 52));
            }

            BlueFin::GlSetIterator::operator++(&STACK[0xBC0]);
          }

          while (LOBYTE(STACK[0xBC1]) != LOBYTE(STACK[0xBC0]));
          if (v167 > 0)
          {
            BlueFin::GlStdLib::QsortImpl(&a18 + 8 * v156, v167, 8u, AlmMgr_SortSvIds, &STACK[0xBC0], v175);
          }

          v146 = v304;
        }
      }
    }

    LODWORD(STACK[0xBC8]) = v157;
    LODWORD(STACK[0xBC0]) = 1;
    LODWORD(STACK[0xBC4]) = v157;
    BlueFin::GlSetIterator::operator++(&STACK[0xBC0]);
    if (LOBYTE(STACK[0xBC1]) != LOBYTE(STACK[0xBC0]))
    {
      v176 = ((&a18 + 8 * v155) | 4);
      do
      {
        *(v176 - 4) = LOBYTE(STACK[0xBC2]) + 52;
        *v176 = 0;
        v176 += 2;
        BlueFin::GlSetIterator::operator++(&STACK[0xBC0]);
      }

      while (LOBYTE(STACK[0xBC1]) != LOBYTE(STACK[0xBC0]));
    }

    v147 = v300;
    v148 = a3;
  }

  v177 = 0;
  v178 = &a41[4 * a42 - 4];
  do
  {
    if (*v178)
    {
      v179 = *v178 - (((*v178 >> 1) & 0x5B6DB6DB) + ((*v178 >> 2) & 0x9249249));
      v177 = ((v179 + (v179 >> 3)) & 0xC71C71C7) + v177 - 63 * (((v179 + (v179 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    v178 -= 4;
  }

  while (v178 >= a41);
  *(v147 + 2) = *(*(v146 + 56) + 2568);
  v180 = *(v301 + 2);
  v181 = v177;
  if (v177)
  {
    v182 = 0;
    v183 = 0;
    v184 = *v301;
    v185 = *(v147 + 7);
    v186 = a40;
    v187 = *(v147 + 12);
    v188 = *(v147 + 2);
    v189 = &BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion;
    do
    {
      if (v184)
      {
        v142 = *(v148 + 7);
        if (*(v148 + 7))
        {
          v190 = *(v186 + v182);
          v191 = (*(v148 + 2) + 4);
          while (*(v191 - 2) != v190)
          {
            v191 += 2;
            if (!--v142)
            {
              goto LABEL_160;
            }
          }

          if (v185 < v187)
          {
            v142 = v189[*(v186 + v182)];
            if (v189[*(v186 + v182)])
            {
              v142 = v188 + 8 * v185++;
              *(v147 + 7) = v185;
              *v142 = v190;
              *(v142 + 4) = *v191;
            }
          }
        }
      }

LABEL_160:
      if ((v182 & 0x7FFFFFFD) != 0 && !((v180 ^ 1) & 1 | (v183 > 0xD)))
      {
        v142 = *(v148 + 31);
        if (*(v148 + 31))
        {
          v192 = *(&a18 + 8 * v183);
          v193 = (*(v148 + 8) + 4);
          while (*(v193 - 2) != v192)
          {
            v193 += 2;
            if (!--v142)
            {
              goto LABEL_171;
            }
          }

          if (v185 < v187)
          {
            v142 = v189[*(&a18 + 8 * v183)];
            if (v189[*(&a18 + 8 * v183)])
            {
              v142 = v188 + 8 * v185++;
              *(v147 + 7) = v185;
              *v142 = v192;
              *(v142 + 4) = *v193;
            }
          }

          ++v183;
        }
      }

LABEL_171:
      ++v182;
    }

    while (v182 != v181);
    if ((v180 & 1) == 0)
    {
      goto LABEL_186;
    }

    goto LABEL_175;
  }

  v183 = 0;
  if (v180)
  {
LABEL_175:
    if (v183 <= 0xD)
    {
      v194 = v183;
      v195 = *(v147 + 12);
      v196 = *(v147 + 2);
      v197 = &BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion;
      do
      {
        v198 = *(v148 + 31);
        if (*(v148 + 31))
        {
          v199 = *(&a18 + 8 * v194);
          v200 = (*(v148 + 8) + 4);
          while (*(v200 - 2) != v199)
          {
            v200 += 2;
            if (!--v198)
            {
              goto LABEL_185;
            }
          }

          v201 = *(v147 + 7);
          if (v201 < v195 && v197[*(&a18 + 8 * v194)])
          {
            *(v147 + 7) = v201 + 1;
            v202 = v196 + 8 * v201;
            *v202 = v199;
            *(v202 + 4) = *v200;
          }
        }

LABEL_185:
        ++v194;
      }

      while (v194 != 14);
    }
  }

LABEL_186:
  v203 = 0;
  a15 = 4;
  a16 = 66;
  STACK[0x11A0] = &STACK[0x11AC];
  LOBYTE(STACK[0x11A8]) = 8;
  *&STACK[0x11AC] = 0u;
  *&STACK[0x11BC] = 0u;
  v144.i32[0] = 1;
  *&STACK[0x11D0] = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(*(*(v146 + 55) + 120012), v144), 0), xmmword_298A3B310, xmmword_298A3B300);
  LODWORD(STACK[0x11E0]) = 6;
  v204 = v301;
  do
  {
    v205 = *(&STACK[0x11D0] + v203);
    if (!v204[v205])
    {
      goto LABEL_239;
    }

    if (v205 <= 2)
    {
      if (!v205)
      {
        v206 = 0;
        v207 = 32;
        goto LABEL_204;
      }

      if (v205 != 1)
      {
        if (v205 == 2)
        {
          v206 = 0;
          v207 = 24;
          goto LABEL_204;
        }

LABEL_200:
        v207 = 0;
        v206 = 1;
        goto LABEL_204;
      }

      v206 = 0;
      v207 = 19;
    }

    else if (v205 > 4)
    {
      if (v205 != 5)
      {
        if (v205 == 6)
        {
          v206 = 0;
          v207 = 14;
          goto LABEL_204;
        }

        goto LABEL_200;
      }

      v206 = 0;
      v207 = 36;
    }

    else
    {
      v206 = 0;
      if (v205 == 3)
      {
        v207 = 10;
      }

      else
      {
        v207 = 63;
      }
    }

LABEL_204:
    v208 = *(v146 + 55);
    v209 = *(v146 + 54) + 48 * v205;
    *&a49 = &a49 + 12;
    BYTE8(a49) = 2;
    *(&a49 + 12) = 0;
    if (*(v208 + 120012) == 1)
    {
      goto LABEL_212;
    }

    v210 = *(v209 + 24);
    if (!*v210)
    {
      v211 = *(v209 + 32);
      if (v211 < 2)
      {
LABEL_212:
        if ((v206 & 1) == 0)
        {
          if (v207 <= 1)
          {
            v215 = 1;
          }

          else
          {
            v215 = v207;
          }

          v216 = 1;
          do
          {
            *(&a49 + (v216 >> 5) + 3) |= 1 << v216;
            ++v216;
            --v215;
          }

          while (v215);
        }

        goto LABEL_218;
      }

      v212 = v211 - 1;
      v213 = v210 + 1;
      while (!*v213++)
      {
        if (!--v212)
        {
          goto LABEL_212;
        }
      }
    }

    if (v205 == 6)
    {
      goto LABEL_212;
    }

    BlueFin::GlSetBase::operator=(&a49, v209 + 24);
    *(&a49 + 12) = *(v209 + 36);
    v146 = v304;
LABEL_218:
    if (v205 == 5)
    {
      v217 = *(*(v146 + 58) + 88);
      if ((v217 - 36) < 5 || v217 == 34)
      {
        BlueFin::GlSetBase::operator=(&a49, v209 + 24);
        v218 = 25;
        *(&a49 + 12) = *(v209 + 36);
        v219 = 2;
        v220 = 1;
        v221 = &BlueFin::GlPeAlmMgr::SetRemainingSignalAiding(BlueFin::GlSet32 const&,BlueFin::GlSvIdSet const&,BlueFin::GlMeSignalAidInfo *,BOOL const*,BlueFin::GlMeSignalAidInfo&)::aucRemoveGnssIds;
        v222 = &BlueFin::GlPeAlmMgr::SetRemainingSignalAiding(BlueFin::GlSet32 const&,BlueFin::GlSvIdSet const&,BlueFin::GlMeSignalAidInfo *,BOOL const*,BlueFin::GlMeSignalAidInfo&)::aucAddGnssIds;
        v146 = v304;
      }

      else
      {
        bzero(a49, ((4 * BYTE8(a49) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
        v221 = 0;
        v220 = 0;
        v219 = 0;
        v218 = 11;
        v222 = &BlueFin::GlPeAlmMgr::SetRemainingSignalAiding(BlueFin::GlSet32 const&,BlueFin::GlSvIdSet const&,BlueFin::GlMeSignalAidInfo *,BOOL const*,BlueFin::GlMeSignalAidInfo&)::aucAddGnssIds;
      }
    }

    else
    {
      v221 = 0;
      v220 = 0;
      v219 = 0;
      v222 = 0;
      v218 = 0;
    }

    if (v205 == 3)
    {
      v222 = &BlueFin::GlPeAlmMgr::SetRemainingSignalAiding(BlueFin::GlSet32 const&,BlueFin::GlSvIdSet const&,BlueFin::GlMeSignalAidInfo *,BOOL const*,BlueFin::GlMeSignalAidInfo&)::aucAddGnssIds;
      v223 = 1;
    }

    else
    {
      v223 = v218;
    }

    v224 = &BlueFin::GlPeAlmMgr::SetRemainingSignalAiding(BlueFin::GlSet32 const&,BlueFin::GlSvIdSet const&,BlueFin::GlMeSignalAidInfo *,BOOL const*,BlueFin::GlMeSignalAidInfo&)::aucAddGnssIds;
    if (v205 == 6)
    {
      v225 = 2;
    }

    else
    {
      v224 = v222;
      v225 = v223;
    }

    if (v225)
    {
      v226 = a49;
      do
      {
        v228 = *v224++;
        v227 = v228;
        if (v228 - 64 <= 0xFFFFFFC0)
        {
          DeviceFaultNotify("glgnss.h", 115, "Add", "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.h", 115, "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
        }

        *(v226 + ((v227 >> 3) & 0x1C)) |= 1 << v227;
        --v225;
      }

      while (v225);
    }

    if (v220)
    {
      if (v219 <= 1)
      {
        v229 = 1;
      }

      else
      {
        v229 = v219;
      }

      do
      {
        v230 = *v221++;
        BlueFin::GlSetBase::Remove(&a49, v230);
        --v229;
      }

      while (v229);
    }

    v231 = BYTE8(a49);
    LOBYTE(STACK[0xBC0]) = BYTE8(a49);
    memcpy(&STACK[0xBC8], a49, 4 * v231);
    LOWORD(STACK[0xBC2]) = 0;
    LOBYTE(STACK[0xBC1]) = 0;
    LODWORD(STACK[0xBC4]) = STACK[0xBC8];
    BlueFin::GlSetIterator::operator++(&STACK[0xBC0]);
    v204 = v301;
    while (LOBYTE(STACK[0xBC1]) != LOBYTE(STACK[0xBC0]))
    {
      v232 = *(v146 + 55);
      v233 = STACK[0xBC2];
      LODWORD(a46) = v205;
      BYTE4(a46) = v233;
      BlueFin::GlPeSvIdConverter::Gnss2SvId((v232 + 119744), &a46, &a13);
      *(STACK[0x11A0] + ((a13 >> 3) & 0x1C)) |= 1 << a13;
      BlueFin::GlSetIterator::operator++(&STACK[0xBC0]);
    }

LABEL_239:
    ++v203;
  }

  while (v203 != 5);
  v234 = 0;
  *&STACK[0xDB0] = 0u;
  *&STACK[0xDA0] = 0u;
  *&STACK[0xD90] = 0u;
  *&STACK[0xD80] = 0u;
  *&STACK[0xD70] = 0u;
  *&STACK[0xD60] = 0u;
  *&STACK[0xD50] = 0u;
  *&STACK[0xD40] = 0u;
  *&STACK[0xD30] = 0u;
  *&STACK[0xD20] = 0u;
  *&STACK[0xD10] = 0u;
  *&STACK[0xCF0] = 0u;
  *&STACK[0xD00] = 0u;
  *&STACK[0xCD0] = 0u;
  *&STACK[0xCE0] = 0u;
  *&STACK[0xCB0] = 0u;
  *&STACK[0xCC0] = 0u;
  *&STACK[0xC90] = 0u;
  *&STACK[0xCA0] = 0u;
  *&STACK[0xC70] = 0u;
  *&STACK[0xC80] = 0u;
  *&STACK[0xC50] = 0u;
  *&STACK[0xC60] = 0u;
  *&STACK[0xC30] = 0u;
  *&STACK[0xC40] = 0u;
  *&STACK[0xC10] = 0u;
  *&STACK[0xC20] = 0u;
  *&STACK[0xBF0] = 0u;
  *&STACK[0xC00] = 0u;
  *&STACK[0xBD0] = 0u;
  *&STACK[0xBE0] = 0u;
  *&STACK[0xBC0] = 0u;
  do
  {
    v235 = &STACK[0xBC0] + v234;
    *v235 = 0;
    *(v235 + 1) = 0;
    v234 += 8;
  }

  while (v234 != 1504);
  if (*(*(v146 + 55) + 100) != -1)
  {
    v236 = 0;
    v303 = 0;
    v237 = 0;
    do
    {
      v238 = *(&STACK[0x11D0] + v236);
      if (v301[v238])
      {
        BlueFin::GlPeAlmMgr::GetValidity(v304, *(&STACK[0x11D0] + v236), 1, &a46);
        LOBYTE(a49) = BYTE8(a46);
        memcpy(&a49 + 8, a46, 4 * BYTE8(a46));
        WORD1(a49) = 0;
        BYTE1(a49) = 0;
        DWORD1(a49) = DWORD2(a49);
        while (1)
        {
          BlueFin::GlSetIterator::operator++(&a49);
          if (BYTE1(a49) == a49)
          {
            break;
          }

          a13 = v238;
          a14 = BYTE2(a49);
          v239 = *(v304 + 55);
          a17 = 0;
          v240 = BlueFin::GlPeAsstMgr::computeAzElCommon(v239, &a13, -7200001, 0, &a16, 0, &a17);
          v242.i32[0] = a17;
          if (!v240)
          {
            *v242.i32 = -90.0;
          }

          *v241.i32 = *v242.i32 + (truncf(*v242.i32 * 2.3283e-10) * -4295000000.0);
          v243.i64[0] = 0x8000000080000000;
          v243.i64[1] = 0x8000000080000000;
          v244 = vbslq_s8(v243, v241, v242);
          if (*v242.i32 > 4295000000.0)
          {
            v242.i32[0] = v244.i32[0];
          }

          if (*v242.i32 < -4295000000.0)
          {
            *v244.i32 = -*v242.i32;
            *v242.i32 = -(*v242.i32 - (truncf(*v242.i32 * -2.3283e-10) * -4295000000.0));
            *v242.i32 = -*vbslq_s8(v243, v242, v244).i32;
          }

          if (*v242.i32 < 0.0)
          {
            v245 = --*v242.i32;
          }

          else
          {
            v245 = *v242.i32;
          }

          BlueFin::GlPeSvIdConverter::Gnss2SvId((*(v304 + 55) + 119744), &a13, &a17);
          if ((v245 & 0x80000000) != 0)
          {
            if (v245 != -90)
            {
              (*(**(v304 + 57) + 64))(*(v304 + 57), &a17);
            }
          }

          else
          {
            v246 = &STACK[0xBC0] + v237;
            *v246 = a17;
            *(v246 + 1) = 90 - v245;
            v237 = (v237 + 1);
            ++v303;
          }
        }
      }

      ++v236;
    }

    while (v236 != 5);
    if (v303 > 1)
    {
      BlueFin::GlStdLib::QsortImpl(&STACK[0xBC0], v237, 8u, AlmMgr_SortSvIds, &a49, v142);
      if (v237 >= 1)
      {
        v247 = 0;
        do
        {
          v248 = *(&STACK[0xBC0] + 8 * v247);
          v249 = a3 + 24 * BlueFin::GlSvId::s_aucSvId2gnss[v248];
          v250 = *(v249 + 7);
          if (*(v249 + 7))
          {
            v251 = (*(v249 + 2) + 4);
            while (*(v251 - 2) != v248)
            {
              v251 += 2;
              if (!--v250)
              {
                goto LABEL_275;
              }
            }

            v252 = *(v300 + 7);
            if (v252 < *(v300 + 12) && *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + v248))
            {
              v253 = *(v300 + 2);
              *(v300 + 7) = v252 + 1;
              v254 = v253 + 8 * v252;
              *v254 = v248;
              *(v254 + 4) = *v251;
            }

            BlueFin::GlSetBase::Remove(&STACK[0x11A0], v248);
          }

LABEL_275:
          ++v247;
        }

        while (v247 != v237);
      }
    }

    v255 = 0;
    v256 = 0;
    do
    {
      v257 = *(&STACK[0x11D0] + v255);
      if (v301[v257])
      {
        BlueFin::GlPeAlmMgr::GetValidity(v304, *(&STACK[0x11D0] + v255), 1, &a46);
        LOBYTE(a49) = BYTE8(a46);
        memcpy(&a49 + 8, a46, 4 * BYTE8(a46));
        WORD1(a49) = 0;
        BYTE1(a49) = 0;
        DWORD1(a49) = DWORD2(a49);
        while (1)
        {
          BlueFin::GlSetIterator::operator++(&a49);
          if (BYTE1(a49) == a49)
          {
            break;
          }

          a13 = v257;
          a14 = BYTE2(a49);
          v258 = *(v304 + 55);
          a17 = 0;
          v259 = BlueFin::GlPeAsstMgr::computeAzElCommon(v258, &a13, -7200001, 0, &a15, 0, &a17);
          v261.i32[0] = a17;
          if (!v259)
          {
            *v261.i32 = -90.0;
          }

          *v260.i32 = *v261.i32 + (truncf(*v261.i32 * 2.3283e-10) * -4295000000.0);
          v262.i64[0] = 0x8000000080000000;
          v262.i64[1] = 0x8000000080000000;
          v263 = vbslq_s8(v262, v260, v261);
          if (*v261.i32 > 4295000000.0)
          {
            v261.i32[0] = v263.i32[0];
          }

          if (*v261.i32 < -4295000000.0)
          {
            *v263.i32 = -*v261.i32;
            *v261.i32 = -(*v261.i32 - (truncf(*v261.i32 * -2.3283e-10) * -4295000000.0));
            *v261.i32 = -*vbslq_s8(v262, v261, v263).i32;
          }

          if (*v261.i32 < 0.0)
          {
            v264 = --*v261.i32;
          }

          else
          {
            v264 = *v261.i32;
          }

          BlueFin::GlPeSvIdConverter::Gnss2SvId((*(v304 + 55) + 119744), &a13, &a17);
          if ((*(STACK[0x11A0] + ((a17 >> 3) & 0x1C)) >> (a17 & 0x1F)))
          {
            if ((v264 & 0x80000000) != 0)
            {
              if (v264 != -90)
              {
                (*(**(v304 + 57) + 64))(*(v304 + 57), &a17);
              }
            }

            else
            {
              v265 = &STACK[0xBC0] + v237;
              *v265 = a17;
              *(v265 + 1) = 90 - v264;
              LODWORD(v237) = v237 + 1;
              v256 = (v256 + 1);
            }
          }
        }
      }

      ++v255;
    }

    while (v255 != 5);
    v146 = v304;
    if (v256 > 1)
    {
      BlueFin::GlStdLib::QsortImpl(&STACK[0xBC0] + 8 * v303, v256, 8u, AlmMgr_SortSvIds, &a49, v142);
      v146 = v304;
      if (v303 < v237)
      {
        v266 = v303;
        do
        {
          v267 = *(&STACK[0xBC0] + 8 * v266);
          v268 = a3 + 24 * BlueFin::GlSvId::s_aucSvId2gnss[v267];
          v269 = *(v268 + 7);
          if (*(v268 + 7))
          {
            v270 = (*(v268 + 2) + 4);
            while (*(v270 - 2) != v267)
            {
              v270 += 2;
              if (!--v269)
              {
                goto LABEL_307;
              }
            }

            v271 = *(v300 + 7);
            if (v271 < *(v300 + 12) && *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + v267))
            {
              v272 = *(v300 + 2);
              *(v300 + 7) = v271 + 1;
              v273 = v272 + 8 * v271;
              *v273 = v267;
              *(v273 + 4) = *v270;
            }

            BlueFin::GlSetBase::Remove(&STACK[0x11A0], v267);
            v146 = v304;
          }

LABEL_307:
          ++v266;
        }

        while (v237 != v266);
      }
    }
  }

  v274 = 0;
  v275 = (*(v146 + 58) + 26348);
  a46 = *v275;
  *(&a46 + 12) = *(v275 + 12);
  do
  {
    v276 = *(v304 + 55);
    v277 = *(&a46 + v274);
    LODWORD(a49) = 4;
    BYTE4(a49) = v277;
    BlueFin::GlPeSvIdConverter::Gnss2SvId((v276 + 119744), &a49, &a13);
    v278 = a13;
    v279 = a3 + 24 * BlueFin::GlSvId::s_aucSvId2gnss[a13];
    v280 = *(v279 + 7);
    if (*(v279 + 7))
    {
      v281 = (*(v279 + 2) + 4);
      while (*(v281 - 2) != a13)
      {
        v281 += 2;
        if (!--v280)
        {
          goto LABEL_319;
        }
      }

      if ((*(STACK[0x11A0] + 4 * (a13 >> 5)) >> (a13 & 0x1F)))
      {
        v282 = *(v300 + 7);
        if (v282 < *(v300 + 12) && *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + a13))
        {
          v283 = *(v300 + 2);
          *(v300 + 7) = v282 + 1;
          v284 = v283 + 8 * v282;
          *v284 = v278;
          *(v284 + 4) = *v281;
        }

        BlueFin::GlSetBase::Remove(&STACK[0x11A0], v278);
      }
    }

LABEL_319:
    ++v274;
  }

  while (v274 != 28);
  LOBYTE(a49) = STACK[0x11A8];
  memcpy(&a49 + 8, STACK[0x11A0], 4 * a49);
  WORD1(a49) = 0;
  BYTE1(a49) = 0;
  DWORD1(a49) = DWORD2(a49);
  BlueFin::GlSetIterator::operator++(&a49);
  if (BYTE1(a49) != a49)
  {
    v285 = *(v300 + 12);
    v286 = *(v300 + 2);
    v287 = *(v300 + 7);
    v288 = &BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion;
    do
    {
      v289 = BYTE2(a49);
      v290 = a3 + 24 * BlueFin::GlSvId::s_aucSvId2gnss[BYTE2(a49)];
      v291 = *(v290 + 7);
      if (*(v290 + 7))
      {
        v292 = (*(v290 + 2) + 4);
        while (*(v292 - 2) != BYTE2(a49))
        {
          v292 += 2;
          if (!--v291)
          {
            goto LABEL_330;
          }
        }

        if (v287 < v285 && v288[BYTE2(a49)])
        {
          v293 = v286 + 8 * v287++;
          *(v300 + 7) = v287;
          *v293 = v289;
          *(v293 + 4) = *v292;
        }
      }

LABEL_330:
      BlueFin::GlSetIterator::operator++(&a49);
    }

    while (BYTE1(a49) != a49);
  }

  v298[320] = *(*(v304 + 56) + 2576) != 0;
  BlueFin::GlSetBase::operator=((v298 + 16), &vars8);
  v294 = v299[1];
  *(v304 + 36732) = *v299;
  *(v304 + 36748) = v294;
  return BlueFin::GlSetBase::operator|=(v304 + 37032, &vars8);
}

uint64_t BlueFin::GlPeAlmMgr::Alm2Plane(BlueFin::GlPeAlmMgr *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(BlueFin::GlGpsTime *__hidden this), uint64_t a10, unsigned int a11, int a12, unsigned int a13, unsigned int a14, char a15)
{
  STACK[0xAB8] = *MEMORY[0x29EDCA608];
  v107 = this + 0x8000;
  if (*(this + 36712))
  {
    return 1;
  }

  bzero(&a15, 0x400uLL);
  for (i = 0; i != 1024; i += 32)
  {
    v18 = &a15 + i;
    *v18 = 0;
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 1) = 0;
  }

  v19 = 0;
  v20 = *(v107 + 492);
  v21 = v20 + 16;
  do
  {
    v22 = 0;
    v23 = v20 + (v19 << 6);
    v24 = *(v23 + 8);
    do
    {
      *(v21 + 4 * v22) = 0;
      *(v24 + v22++) = 0;
    }

    while (v22 != 6);
    *(v23 + 40) = 0;
    ++v19;
    v21 += 64;
  }

  while (v19 != 6);
  v25 = 0;
  a9 = &off_2A1F0B5F0;
  a10 = 0;
  vars8 = 7;
  vars8_4 = 0;
  LODWORD(v108[0]) = -65536;
  v108[1] = 0;
  LODWORD(v109) = 0;
  v26 = 1;
  v110 = 0u;
  v111 = 0u;
  v27.f64[0] = NAN;
  v27.f64[1] = NAN;
  v105 = vnegq_f64(v27);
  v112 = 0u;
  v113 = 0u;
  v114 = 0;
  v115 = -1;
  LOBYTE(vars0) = 0;
  do
  {
    if (!BlueFin::GlPeAlmMgr::GetAlm(this, 0, v26, v108, 1, 0))
    {
      goto LABEL_38;
    }

    v114 = v114;
    v28 = *(this + 56);
    if (*(v28 + 644))
    {
      BlueFin::GlPeTimeManager::GetTime(v28, 1, &STACK[0xA20]);
      STACK[0xAA0] = 0;
      STACK[0xA98] = &off_2A1F0B5F0;
      *v29.i64 = BlueFin::GlPeGnssTime::GetGps(&STACK[0xA20], &STACK[0xA98]);
      BlueFin::GlPeAlmanac::GetToa(&STACK[0xA20], v108, &STACK[0xA98], v29, v30);
      v31 = (a9[4])(&a9);
      a13 = a10;
      a14 = v31;
      v32 = (*(STACK[0xA98] + 32))(&STACK[0xA98]);
      a11 = STACK[0xAA0];
      a12 = v32;
      BlueFin::GlTimePoint::resolveAmbiguity(&a13, &a11, 0x93A8000u);
      v33 = (*(STACK[0xA98] + 24))(&STACK[0xA98], a14);
      v36 = a13;
      v37 = STACK[0xA28];
      v38 = STACK[0xA2C];
      if (LODWORD(STACK[0xA2C]) | LODWORD(STACK[0xA28]))
      {
        v47 = v33 - v38;
        if (v33 > v38 || v33 == v38 && a13 >= v37)
        {
          v39 = 0;
          v33 = (__PAIR64__(v47, a13) - v37) >> 32;
          v36 = a13 - v37;
        }

        else
        {
          v48 = __PAIR64__(v38 - v33, v37) - a13;
          v33 = HIDWORD(v48);
          v36 = v48;
          v39 = 1;
        }
      }

      else
      {
        v39 = 0;
      }

      v49 = v36 * 2.32830644e-10 + v33;
      if ((v39 & ((v33 | v36) != 0)) != 0)
      {
        v49 = -v49;
      }

      if ((v25 & (v49 >= 0)) == 0)
      {
        v45 = v114;
LABEL_33:
        v50 = v109;
        *v34.i64 = v109;
        STACK[0xA20] = &off_2A1F0B5F0;
        *v35.i64 = *v34.i64 - trunc(*v34.i64);
        v34.i64[0] = vbslq_s8(v105, v35, v34).i64[0];
        if (*v34.i64 >= 1.0)
        {
          DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
        }

        v51 = *v34.i64 * 4294967300.0 + 0.5;
        v52 = v51;
        if (v51 >= 4294967300.0)
        {
          v52 = -1;
        }

        LODWORD(a10) = v52;
        HIDWORD(a10) = v50 + 604800 * v45;
      }

      v25 = 1;
      goto LABEL_38;
    }

    v40 = (a9[4])(&a9);
    v34 = (a9[4])(&a9);
    LODWORD(v42) = a10;
    *v34.i64 = v42 * 2.32830644e-10 + (v41 % 0x93A80);
    *v43.i64 = *v34.i64 + trunc(*v34.i64 * 2.32830644e-10) * -4294967300.0;
    v35 = vbslq_s8(v105, v43, v34);
    if (*v34.i64 > 4294967300.0)
    {
      v34.i64[0] = v35.i64[0];
    }

    if (*v34.i64 < -4294967300.0)
    {
      *v35.i64 = -*v34.i64;
      *v34.i64 = -(*v34.i64 - trunc(*v34.i64 * -2.32830644e-10) * -4294967300.0);
      v34 = vbslq_s8(v105, v34, v35);
      *v34.i64 = -*v34.i64;
    }

    v44 = *v34.i64;
    if (*v34.i64 < 0.0)
    {
      v44 = --*v34.i64;
    }

    v45 = v114;
    if ((v25 & 1) == 0)
    {
      goto LABEL_33;
    }

    v46 = v40 / 0x93A80 - v114;
    if ((v46 & 0x80000000) != 0)
    {
      if (v46 + 127 < 0x80)
      {
        goto LABEL_33;
      }
    }

    else if (v46 > 0x80)
    {
      goto LABEL_33;
    }

    v25 = 1;
    if (v114 == v40 / 0x93A80)
    {
      v45 = v40 / 0x93A80;
      if (v44 < v109)
      {
        goto LABEL_33;
      }
    }

LABEL_38:
    ++v26;
  }

  while (v26 != 33);
  v53 = (&a15 | 0x10);
  v54 = 3.14159265;
  v55 = 1;
  v56.f64[0] = NAN;
  v56.f64[1] = NAN;
  v106 = vnegq_f64(v56);
  do
  {
    if (BlueFin::GlPeAlmMgr::GetAlm(this, 0, v55, v108, 1, 0))
    {
      v114 = v114;
      v57 = (a9[4])(&a9);
      v58 = v114;
      v61 = (a9[4])(&a9);
      LODWORD(v60) = a10;
      *v61.i64 = v60 * 2.32830644e-10 + (v59 % 0x93A80);
      *v62.i64 = *v61.i64 + trunc(*v61.i64 * 2.32830644e-10) * -4294967300.0;
      v63 = vbslq_s8(v106, v62, v61);
      if (*v61.i64 > 4294967300.0)
      {
        v61.i64[0] = v63.i64[0];
      }

      if (*v61.i64 < -4294967300.0)
      {
        *v63.i64 = -*v61.i64;
        *v61.i64 = -(*v61.i64 - trunc(*v61.i64 * -2.32830644e-10) * -4294967300.0);
        *v61.i64 = -*vbslq_s8(v106, v61, v63).i64;
      }

      v64 = v57 / 0x93A80 - v58;
      v65 = v109;
      LODWORD(STACK[0xA88]) = 7;
      if (*v61.i64 < 0.0)
      {
        v66 = --*v61.i64;
      }

      else
      {
        v66 = *v61.i64;
      }

      LOBYTE(STACK[0xA8C]) = 0;
      v67 = v64 + 256;
      LODWORD(STACK[0xA20]) = -65536;
      if (v64 >= -128)
      {
        v67 = v64;
      }

      STACK[0xA28] = 0;
      if (v64 <= 128)
      {
        v68 = v67;
      }

      else
      {
        v68 = v64 - 256;
      }

      *&STACK[0xA38] = 0u;
      *&STACK[0xA48] = 0u;
      *&STACK[0xA58] = 0u;
      *&STACK[0xA68] = 0u;
      LOWORD(STACK[0xA78]) = 0;
      LODWORD(STACK[0xA30]) = 0;
      LODWORD(STACK[0xA7C]) = -1;
      LOBYTE(STACK[0xA80]) = 0;
      if (BlueFin::GlPeAlmMgr::GetAlm(this, 0, v55, &STACK[0xA20], 1, 0))
      {
        *(v53 - 16) = v55;
        v69 = *&STACK[0xA60];
        *(v53 - 1) = STACK[0xA60];
        v70 = *&STACK[0xA50];
        *v53 = *&STACK[0xA50];
        v71 = 604800 * v68 - v65 + v66;
        if (v71)
        {
          v72 = v71;
          v73 = *&v70 + *&STACK[0xA40] * v72 + v72 * -0.0000729211515 + (v71 + LODWORD(STACK[0xA30]) - (604800 * ((v71 + LODWORD(STACK[0xA30])) / 604800.0) - LODWORD(STACK[0xA30]))) * 0.0000729211515;
          v74 = v73 / 6.28318531;
          if (v73 / 6.28318531 <= 0.0)
          {
            v75 = 0.0;
            if (v73 / 6.28318531 < 0.0)
            {
              v75 = ceil(v74 + -0.5);
            }
          }

          else
          {
            v75 = floor(v74 + 0.5);
          }

          *&v70 = v73 - v75 * 6.28318531;
          v76 = v69 + sqrt(3.986005e14 / (*&STACK[0xA48] * *&STACK[0xA48] * (*&STACK[0xA48] * *&STACK[0xA48] * (*&STACK[0xA48] * *&STACK[0xA48])))) * v72;
          v77 = v76 / 6.28318531;
          v78 = ceil(v76 / 6.28318531 + -0.5);
          if (v76 / 6.28318531 >= 0.0)
          {
            v78 = 0.0;
          }

          v79 = floor(v77 + 0.5);
          if (v77 > 0.0)
          {
            v80 = v79;
          }

          else
          {
            v80 = v78;
          }

          *(v53 - 1) = v76 + v80 * -6.28318531;
          *v53 = v70;
        }
      }

      else
      {
        *&v70 = *v53;
      }

      if (*&v70 < v54)
      {
        v54 = *&v70;
      }
    }

    ++v55;
    v53 += 2;
  }

  while (v55 != 33);
  v15 = v54 < 3.14159265;
  if (v54 < 3.14159265)
  {
    v81 = (&a15 | 0x10);
    v82 = 1;
    while (1)
    {
      if (BlueFin::GlPeAlmMgr::GetAlm(this, 0, v82, v108, 1, 0))
      {
        v84 = (*v81 - v54) / 3.14159265 * 3.0;
        v85 = 0.5;
        if (v84 <= 0.0 && (v85 = -0.5, v84 >= 0.0))
        {
          LOBYTE(v86) = 6;
        }

        else
        {
          v86 = (v84 + v85);
          if (!v86)
          {
            LOBYTE(v86) = 6;
          }

          if ((v86 - 1) > 5u)
          {
            goto LABEL_84;
          }
        }

        *(v81 - 15) = v86;
      }

LABEL_84:
      ++v82;
      v81 += 4;
      if (v82 == 33)
      {
        v87 = 1;
        v88 = 16;
        do
        {
          v89 = 0;
          *&STACK[0xA40] = 0u;
          *&STACK[0xA30] = 0u;
          *&STACK[0xA20] = 0u;
          do
          {
            v90 = &STACK[0xA20] + v89;
            *v90 = 0;
            *(v90 + 1) = 0;
            v89 += 8;
          }

          while (v89 != 48);
          v91 = 0;
          v92 = &a15;
          v93 = 32;
          do
          {
            v94 = *v92;
            if ((v94 - 33) >= 0xFFFFFFE0 && v87 == v92[1])
            {
              v95 = &STACK[0xA20] + v91;
              *v95 = v94;
              v96 = (*(v92 + 3) + *(v92 + 1)) * 57.2957795;
              *(v95 + 1) = (v96 - floor(v96 / 360.0) * 360.0);
              if (++v91 > 5u)
              {
                break;
              }
            }

            v92 += 32;
            --v93;
          }

          while (v93);
          BlueFin::GlStdLib::QsortImpl(&STACK[0xA20], v91, 8u, AlmMgr_SortSvIds, &STACK[0xA98], v83);
          v97 = *(v107 + 492);
          v98 = v97 + ((v87 - 1) << 6);
          if (v91)
          {
            v99 = *(v98 + 8);
            v100 = v91;
            v101 = (v97 + v88);
            v102 = &STACK[0xA24];
            do
            {
              *v99++ = *(v102 - 4);
              v103 = *v102++;
              *v101++ = v103;
              --v100;
            }

            while (v100);
          }

          *(v98 + 40) = v91;
          ++v87;
          v88 += 64;
        }

        while (v87 != 7);
        v107[3944] = 1;
        return v15;
      }
    }
  }

  return v15;
}

_BYTE *BlueFin::GlPeAlmMgr::GetNextSvId(_BYTE *this, const BlueFin::GlSvIdSet *a2, uint64_t a3, unsigned int a4, int a5)
{
  if (a4 >= 6)
  {
    v10 = "iPlaneIndex >= GLPE_ALM_MIN_PRN_PLANE-1 && iPlaneIndex < GLPE_ALM_MAX_PRN_PLANE";
    DeviceFaultNotify("glpe_almmgr.cpp", 4375, "GetNextSvId", "iPlaneIndex >= GLPE_ALM_MIN_PRN_PLANE-1 && iPlaneIndex < GLPE_ALM_MAX_PRN_PLANE");
    v11 = 4375;
    goto LABEL_13;
  }

  if (a5 >= 6)
  {
    v10 = "i0 >= GLPE_ALM_MIN_PRN_POS-1 && i0 < GLPE_ALM_MAX_PRN_POS";
    DeviceFaultNotify("glpe_almmgr.cpp", 4376, "GetNextSvId", "i0 >= GLPE_ALM_MIN_PRN_POS-1 && i0 < GLPE_ALM_MAX_PRN_POS");
    v11 = 4376;
LABEL_13:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_almmgr.cpp", v11, v10);
  }

  v5 = 0;
  v6 = *(a2 + 4588) + (a4 << 6);
  v7 = *(v6 + 40);
  v8 = *(v6 + 8);
  while (1)
  {
    v9 = *(v8 + a5);
    if (((*(a3 + ((v9 >> 3) & 0x1C)) >> (v9 & 0x1F)) & 1) == 0)
    {
      break;
    }

    if (a5 + 1 < v7)
    {
      ++a5;
    }

    else
    {
      a5 = 0;
    }

    if (v7 < ++v5)
    {
      LOBYTE(v9) = 0;
      break;
    }
  }

  *this = v9;
  return this;
}

uint64_t BlueFin::GlPeAlmSvIdList::Add(uint64_t this, unsigned __int8 a2)
{
  v2 = a2;
  if (a2 - 33 >= 0xFFFFFFE0)
  {
    v3 = *(this + 200);
    v4 = *(v3 + 4 * (a2 >> 5));
    if (((v4 >> (a2 & 0x1F)) & 1) == 0)
    {
      v5 = *(this + 192);
      this = BlueFin::GlSetBase::Cnt((this + 200));
      *(v5 + this) = v2;
      *(v3 + 4 * (v2 >> 5)) = v4 | (1 << (v2 & 0x1F));
    }
  }

  return this;
}

uint64_t BlueFin::GlPeAlmSvIdList::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    BlueFin::GlSetBase::operator=(a1 + 200, a2 + 200);
    v4 = *(a2 + 212);
    *(a1 + 228) = *(a2 + 228);
    *(a1 + 212) = v4;
    v5 = BlueFin::GlSetBase::Cnt((a2 + 200));
    v6 = v5;
    if (v5)
    {
      v7 = *(a2 + 192);
      v8 = *(a1 + 192);
      do
      {
        v9 = *v7++;
        *v8++ = v9;
        --v6;
      }

      while (v6);
    }
  }

  return a1;
}

uint64_t BlueFin::EswRpcEnc::GetEswSatRpcIf(BlueFin::EswRpcEnc *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    BlueFin::EswRpcEnc::MakeEswRpcEncoderImp(this);
    v2 = *(this + 1);
  }

  v3 = *(*v2 + 64);

  return v3();
}

uint64_t BlueFin::CarpEswRpcSatEncImp::esw_sat_rpc_kill(BlueFin::CarpEswRpcSatEncImp *this, BlueFin::GlMeSrdTransaction *a2, unsigned int a3)
{
  v3 = a3;
  if ((*(**(this + 1) + 384))(*(this + 1)) <= a3)
  {
    v8 = "sat_id < m_rAsicConfigIfc.GetMaxNumSats()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1106, "esw_sat_rpc_kill", "sat_id < m_rAsicConfigIfc.GetMaxNumSats()");
    v9 = 1106;
    goto LABEL_6;
  }

  v10 = v3;
  *v11 = 1537;
  v12 = 5;
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, v11, 3u);
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, &v10, 1u);
  v6 = *(a2 + 16);
  result = (*(**(this + 1) + 416))();
  if (result < v6)
  {
    v8 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 1111, "esw_sat_rpc_kill", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v9 = 1111;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v9, v8);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSatMgr::GetSatControl(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v7 = *a4 & 0xFFF8 | *(*(a1 + 6288) + 52 * a2 + 30) & 1 | 6;
  *a4 = v7;
  v8 = v7 & 0xFFF7 | (8 * (*(*(a1 + 6288) + 52 * a2 + 31) & 1));
  *a4 = v8;
  *a4 = v8 & 0xF34F | (16 * (*(*(a1 + 6288) + 52 * a2 + 29) & 1)) | 0x800;
  if ((*(**(a1 + 6552) + 704))())
  {
    v9 = *a4 & 0xFEFF | (*(*(a1 + 6288) + 52 * a2 + 32) << 8);
    *a4 = v9;
    v10 = v9 & 0xFDFF | (*(*(a1 + 6288) + 52 * a2 + 32) << 9);
    *a4 = v10;
    *a4 = v10 & 0xFFBF | ((*(*(a1 + 6288) + 52 * a2 + 32) & 1) << 6);
    result = (*(**(a1 + 6552) + 704))();
    v12 = *a4 & 0xCFFF | ((result & 3) << 12);
  }

  else
  {
    *a4 = *a4 & 0xCFFF | (((*(**(a1 + 6552) + 688))(*(a1 + 6552)) & 3) << 12);
    if ((*(**(a1 + 6552) + 680))())
    {
      v13 = 64;
    }

    else
    {
      v13 = 0;
    }

    *a4 = *a4 & 0xFFBF | v13;
    if ((*(**(a1 + 6552) + 744))())
    {
      v14 = 256;
    }

    else
    {
      v14 = 0;
    }

    *a4 = *a4 & 0xFEFF | v14;
    result = (*(**(a1 + 6552) + 752))();
    if (result)
    {
      v15 = 512;
    }

    else
    {
      v15 = 0;
    }

    v12 = *a4 & 0xFDFF | v15;
  }

  *a4 = v12 & 0x3FFF;
  *(a4 + 2) = 7;
  return result;
}

char *BlueFin::GlMeSrdAsicUnitConverter::Svid2SvParamType(unsigned __int8 *a1)
{
  if (*a1 - 189 <= 0xFFFFFF43)
  {
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 861, "Svid2SvParamType", "*otSvid >= MIN_SVID && *otSvid <= MAX_SVID");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 861, "*otSvid >= MIN_SVID && *otSvid <= MAX_SVID");
  }

  return &BlueFin::GlMeSrdAsicUnitConverter::m_stLookUpSvid2SvParam[6 * *a1];
}

uint64_t BlueFin::GlMeSrdAsicUnitConverter::SignalId2MultiCarrType(BlueFin::GlMeSrdAsicUnitConverter *this, const BlueFin::GlSignalId *a2)
{
  v2 = *this;
  v3 = BlueFin::GlSvId::s_aucSvId2gnss[v2];
  v4 = 0;
  switch(BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(this + 1) - *(this + 1) + v3])
  {
    case 0:
    case 6:
    case 11:
      return BlueFin::GlMeSrdAsicUnitConverter::m_stLookUpSvid2SvParam[6 * *this + 4];
    case 1:
      if (v3 == 3)
      {

        return BlueFin::GlMeSrdAsicUnitConverter::GetQzssL2CInitShiftRegisterState(this);
      }

      else
      {
        if (BlueFin::GlSvId::s_aucSvId2gnss[v2])
        {
          return 0;
        }

        return BlueFin::GlMeSrdAsicUnitConverter::GetGpsL2CInitShiftRegisterState(this);
      }

    case 2:
      if (v3 == 3)
      {
        return BlueFin::GlMeSrdAsicUnitConverter::GetQzssL5XbCodeAdvance(this);
      }

      if (BlueFin::GlSvId::s_aucSvId2gnss[v2])
      {
        return 0;
      }

      return BlueFin::GlMeSrdAsicUnitConverter::GetGpsL5XbCodeAdvance(this);
    case 3:
      return BlueFin::GlMeSrdAsicUnitConverter::m_stLookUpSvid2SvParam[6 * *this + 4];
    case 4:
      return BlueFin::GlMeSrdAsicUnitConverter::GetGalE5bQCodeOffset(this);
    case 5:
      return BlueFin::GlMeSrdAsicUnitConverter::GetGalE5aQCodeOffset(this);
    case 7:
      return v4;
    case 8:
      return BlueFin::GlMeSrdAsicUnitConverter::GetBdsB2aPCodeOffset(this);
    case 12:

      return BlueFin::GlMeSrdAsicUnitConverter::GetNavicL5CodeOffset(this);
    case 13:
      return BlueFin::GlMeSrdAsicUnitConverter::GetBdsPrnIndex(this);
    case 14:
      if (v3 == 3)
      {
        return BlueFin::GlMeSrdAsicUnitConverter::GetQzssPrnIndex(this);
      }

      if (BlueFin::GlSvId::s_aucSvId2gnss[v2])
      {
        return 0;
      }

      return BlueFin::GlMeSrdAsicUnitConverter::GetGpsPrnIndex(this);
    default:
      DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 957, "SignalId2MultiCarrType", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 957, "0");
  }
}

uint64_t BlueFin::GlMeSrdAsicUnitConverter::GetEswSignalIndex(unsigned int a1)
{
  if (a1 >= 4)
  {
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 1631, "GetEswSignalIndex", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 1631, "0");
  }

  return a1 + 1;
}

uint64_t BlueFin::GlMeSrdAsicUnitConverter::GetGpsL5XbCodeAdvance(unsigned __int8 *a1)
{
  if (*a1 - 1 >= 0x20)
  {
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 1435, "GetGpsL5XbCodeAdvance", "otSvId.IsGps()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 1435, "otSvId.IsGps()");
  }

  return BlueFin::GlMeSrdAsicUnitConverter::m_ausGpsL5XbCodeAdvance[*a1];
}

uint64_t BlueFin::GlMeSrdReceiverParametersProgrammer::IsSearchWithinSystemLimits(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned int a5)
{
  if (a5 > 1)
  {
    return 1;
  }

  v5 = a5;
  if (*((*(**(a1 + 8) + 256))(*(a1 + 8), a3) + 2) == 255 || *((*(**(a1 + 8) + 256))(*(a1 + 8), a3) + 2) == 7 || *((*(**(a1 + 8) + 256))(*(a1 + 8), a3) + 2) == 8)
  {
    return 1;
  }

  v11 = (*(*a1 + 48))(a1, a2, a3, a4);
  v12 = (*(*a1 + 64))(a1, a2, a3, a4);
  if ((*(a1 + 24) & 1) == 0)
  {
    v43 = "m_bRmLimitsProgrammed";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1483, "GetMaxNumParallelSsbs", "m_bRmLimitsProgrammed");
    v44 = 1483;
    goto LABEL_70;
  }

  if ((*(a1 + 38) & 1) == 0)
  {
    v43 = "m_bSmLimitsProgrammed";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1484, "GetMaxNumParallelSsbs", "m_bSmLimitsProgrammed");
    v44 = 1484;
    goto LABEL_70;
  }

  v13 = v12;
  v14 = *((*(**(a1 + 8) + 256))(*(a1 + 8), a3) + 2);
  if (v14 >= 9)
  {
    v43 = "ucJmId < NUM_OF_SM_PARAMS";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1489, "GetMaxNumParallelSsbs", "ucJmId < NUM_OF_SM_PARAMS");
    v44 = 1489;
    goto LABEL_70;
  }

  v15 = a1 - v14 + 8 * v14;
  v16 = *(v15 + 40);
  if (v16 >= 4)
  {
    v43 = "ucGroupId < NUM_SEARCH_MANAGER_GROUPS";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1494, "GetMaxNumParallelSsbs", "ucGroupId < NUM_SEARCH_MANAGER_GROUPS");
    v44 = 1494;
LABEL_70:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters_programmer.cpp", v44, v43);
  }

  v17 = *(v15 + 43);
  v18 = *(a1 + v16 + 28);
  if (v17 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  v20 = (*(**(a1 + 8) + 248))(*(a1 + 8), a3);
  v21 = *a4;
  v22 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a4 + 1) - *(a4 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a4]];
  v23 = 1;
  if (v22 == 11 || (v24 = 1, v22 != 14) && ((v23 = v22 == 13, v22 > 0xD) || ((1 << v22) & 0x2124) == 0))
  {
    v24 = v22 == 4;
  }

  v25 = vcvts_n_f32_u32(v11, 5uLL);
  v26 = *(v20 + 26);
  if ((v21 - 52) < 0xE)
  {
    if (v26 == 2)
    {
      v27 = 1;
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v28 = (v21 - 139) < 0xFFFFFFC1 || v23;
  v27 = 1;
  if ((v28 & 1) == 0 && v26 != 2)
  {
LABEL_27:
    v27 = 0;
  }

LABEL_28:
  v29 = ceilf(v25);
  v30 = *(v20 + 10);
  v31 = 1;
  if (v30 > 0xFFB)
  {
    if (v30 == 4092 || v30 == 10230)
    {
      goto LABEL_35;
    }
  }

  else if (v30 == 1023 || v30 == 2046)
  {
    goto LABEL_35;
  }

  v31 = 0;
LABEL_35:
  v32 = v21 - 76;
  if (v30 == 372)
  {
    v33 = 1;
  }

  else
  {
    v33 = v31;
  }

  if (v23)
  {
    v34 = v33;
  }

  else
  {
    v34 = v30 != 372;
  }

  if (v32 >= 0x3F)
  {
    v35 = v34;
  }

  else
  {
    v35 = v31;
  }

  if (v30 == 310)
  {
    v36 = 1;
  }

  else
  {
    v36 = v31;
  }

  if (v24)
  {
    v37 = v36;
  }

  else
  {
    v37 = v35;
  }

  (*(**(a1 + 8) + 256))(*(a1 + 8), a3);
  v38.n128_f32[0] = v19;
  v40 = v13 <= v19 && v29 <= v38.n128_f32[0];
  if ((v27 & v37 & v40 & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1644, "IsSearchWithinSystemLimits", "IsSearchWithinSystemLimits1");
    goto LABEL_64;
  }

  v41 = *((*(**(a1 + 8) + 256))(*(a1 + 8), a3, v38) + 4);
  v42 = *((*(**(a1 + 8) + 256))() + 5);
  if (v41 != a3 && ((*(*a1 + 72))(a1, a2, v41, a4, (v5 + 1)) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1664, "IsSearchWithinSystemLimits", "IsSearchWithinSystemLimits2");
    goto LABEL_64;
  }

  result = 1;
  if (v42 != a3 && v42 != v41)
  {
    if ((*(*a1 + 72))(a1, a2, v42, a4, (v5 + 1)))
    {
      return 1;
    }

    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1676, "IsSearchWithinSystemLimits", "IsSearchWithinSystemLimits3");
LABEL_64:
    CrashData();
    return 0;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetEswBinningStepParams(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 256);

  return v1();
}

uint64_t BlueFin::GlMeRxParamStd::GetEswBinningStepParams(int **this, unsigned int a2)
{
  v3 = BlueFin::GlMeRxParamStd::rMap(this);
  if (**(v3 + 1) <= a2)
  {
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 686, "GetEswBinningStepParams", "ucBsid < *rMp.m_pucBsNum");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", 686, "ucBsid < *rMp.m_pucBsNum");
  }

  return *(*(v3 + 3) + 24) + 6 * a2;
}

uint64_t BlueFin::GlMeSrdReceiverParametersProgrammer::GetMinFFTResourceForBsId(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *((*(*a1[1] + 248))(a1[1], a3) + 13);
  v9 = (*a1)[2];

  return v9(a1, a2, a3, v8, a4);
}

uint64_t BlueFin::GlMeSrdReceiverParametersProgrammer::GetMinMemBinResourceForBsId(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *((*(*a1[1] + 248))(a1[1], a3) + 13);
  v8 = (*a1)[3];

  return v8(a1, a3, v7, a4);
}

uint64_t BlueFin::MinnowEswRpcSatEncImp::esw_sat_rpc_init_multi_carr(void **a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4, char *a5, char a6, uint64_t a7, unsigned __int16 *a8, uint64_t a9, char a10)
{
  v15 = a3;
  v38 = *MEMORY[0x29EDCA608];
  if ((*(*a1[1] + 384))(a1[1]) <= a3)
  {
    v34 = "sat_id < m_rAsicConfigIfc.GetMaxNumSats()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 47, "esw_sat_rpc_init_multi_carr", "sat_id < m_rAsicConfigIfc.GetMaxNumSats()");
    v35 = 47;
    goto LABEL_23;
  }

  if ((a7 - 4) <= 0xFCu)
  {
    v34 = "bIsNumSignals";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 50, "esw_sat_rpc_init_multi_carr", "bIsNumSignals");
    v35 = 50;
    goto LABEL_23;
  }

  v18 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v36, v37, 1800, v18);
  BlueFin::GlStream::PutU08(v36, v15);
  BlueFin::GlStream::PutU08(v36, a7);
  v19 = *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *a4);
  if (!v19)
  {
    v34 = "ucImplSvId != INVALID_SVID";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 60, "esw_sat_rpc_init_multi_carr", "ucImplSvId != INVALID_SVID");
    v35 = 60;
    goto LABEL_23;
  }

  BlueFin::GlStream::PutU08(v36, v19);
  BlueFin::GlStream::PutU08(v36, a4[4]);
  BlueFin::GlStream::PutU08(v36, 0);
  BlueFin::GlStream::PutU08(v36, 0);
  v20 = (a4 + 8);
  v21 = a7;
  v22 = a7;
  do
  {
    v23 = *v20++;
    BlueFin::GlStream::PutU32(v36, v23);
    --v22;
  }

  while (v22);
  v24 = a7;
  do
  {
    v25 = *a5++;
    BlueFin::GlStream::PutU08(v36, v25);
    --v24;
  }

  while (v24);
  BlueFin::GlStream::PutU08(v36, a6);
  v26 = a7;
  do
  {
    BlueFin::GlStream::CarpPutBits(v36, *a8 & 1, 1u, 8u);
    BlueFin::GlStream::CarpPutBits(v36, (*a8 >> 1) & 1, 1u, 8u);
    BlueFin::GlStream::CarpPutBits(v36, (*a8 >> 2) & 1, 1u, 8u);
    BlueFin::GlStream::CarpPutBits(v36, (*a8 >> 3) & 1, 1u, 8u);
    BlueFin::GlStream::CarpPutBits(v36, (*a8 >> 4) & 1, 1u, 8u);
    BlueFin::GlStream::CarpPutBits(v36, (*a8 >> 5) & 1, 1u, 8u);
    BlueFin::GlStream::CarpPutBits(v36, (*a8 >> 6) & 1, 1u, 8u);
    BlueFin::GlStream::CarpPutBits(v36, (*a8 >> 7) & 1, 1u, 8u);
    *a8 &= 0x3FFFu;
    if ((*(*a1[1] + 736))())
    {
      BlueFin::GlStream::CarpPutBits(v36, 1u, 1u, 8u);
      v27 = 0;
    }

    else
    {
      BlueFin::GlStream::CarpPutBits(v36, HIBYTE(*a8) & 1, 1u, 8u);
      v27 = (*a8 >> 9) & 1;
    }

    BlueFin::GlStream::CarpPutBits(v36, v27, 1u, 8u);
    BlueFin::GlStream::CarpPutBits(v36, (*a8 >> 10) & 1, 1u, 8u);
    BlueFin::GlStream::CarpPutBits(v36, (*a8 >> 11) & 1, 1u, 8u);
    BlueFin::GlStream::CarpPutBits(v36, (*a8 >> 12) & 3, 2u, 8u);
    BlueFin::GlStream::CarpPutBits(v36, *a8 >> 14, 2u, 8u);
    BlueFin::GlStream::CarpPutBits(v36, a8[1] & 0x1F, 5u, 8u);
    BlueFin::GlStream::CarpPutBits(v36, *(a8 + 2) >> 5, 3u, 8u);
    BlueFin::GlStream::PutU08(v36, 0);
    a8 = (a8 + 3);
    --v26;
  }

  while (v26);
  v28 = (a9 + 5);
  do
  {
    BlueFin::GlStream::PutU08(v36, *(v28 - 5));
    BlueFin::GlStream::PutU08(v36, *(v28 - 1));
    v29 = *v28;
    v28 += 8;
    BlueFin::GlStream::PutU08(v36, v29);
    BlueFin::GlStream::PutU08(v36, 0);
    --v21;
  }

  while (v21);
  BlueFin::GlStream::PutU08(v36, a10);
  Offset = BlueFin::GlStream::GetOffset(v36);
  if (Offset != ((*a1)[7])(a1, a7))
  {
    v34 = "otStream.GetOffset() == esw_sat_rpc_init_multi_carr_msg_length(num_signals)";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 133, "esw_sat_rpc_init_multi_carr", "otStream.GetOffset() == esw_sat_rpc_init_multi_carr_msg_length(num_signals)");
    v35 = 133;
    goto LABEL_23;
  }

  v31 = BlueFin::GlStream::GetOffset(v36);
  BlueFin::GlMeSrdTransaction::Add(a2, 6, 6u, v37, v31);
  v32 = *(a2 + 32);
  result = (*(*a1[1] + 416))();
  if (result < v32)
  {
    v34 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 135, "esw_sat_rpc_init_multi_carr", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v35 = 135;
LABEL_23:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_minnow.cpp", v35, v34);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSatMgr::OnReliableTransactionAck(uint64_t this, void *a2)
{
  v2 = *(this + 6548);
  if (!*(this + 6548))
  {
    goto LABEL_21;
  }

  v3 = this;
  v5 = this + 184;
  v4 = *(this + 184);
  if (*v4)
  {
    goto LABEL_3;
  }

  v10 = *(this + 192);
  if (v10 < 2)
  {
LABEL_21:
    v14 = "m_ucAckNum > 0 && !m_otSetSatidKilledWaiting4Ack.IsEmpty()";
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 131, "OnReliableTransactionAck", "m_ucAckNum > 0 && !m_otSetSatidKilledWaiting4Ack.IsEmpty()");
    v15 = 131;
    goto LABEL_22;
  }

  v11 = v10 - 1;
  v12 = v4 + 1;
  while (!*v12++)
  {
    if (!--v11)
    {
      goto LABEL_21;
    }
  }

LABEL_3:
  if (v2 < a2)
  {
    v14 = "ucParam <= m_ucAckNum";
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 132, "OnReliableTransactionAck", "ucParam <= m_ucAckNum");
    v15 = 132;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", v15, v14);
  }

  if (v2 == a2)
  {
    *(this + 6548) = 0;
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
    }

    BlueFin::GlSetBase::operator|=(v3 + 216, v5);
    bzero(*(v3 + 184), ((4 * *(v3 + 192) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
    }

    v22 = &v24;
    v23 = 4;
    v24 = 0uLL;
    v16 = v18;
    v17 = 4;
    v18[1] = 0;
    v18[0] = 0;
    BlueFin::GlSetBase::OperatorBinaryOr(v3 + 56, &v16, (v3 + 216));
    v19 = &v21;
    v20 = 4;
    v21 = 0uLL;
    BlueFin::GlSetBase::OperatorBinaryOr(&v16, &v19, (v3 + 248));
    BlueFin::GlSetBase::operator=(&v22, &v19);
    v6 = 0;
    v7 = (&v22[v23 / 4u - 1] + 12);
    v24 = v21;
    do
    {
      if (*v7)
      {
        v8 = *v7 - (((*v7 >> 1) & 0x5B6DB6DB) + ((*v7 >> 2) & 0x9249249));
        v6 = ((v8 + (v8 >> 3)) & 0xC71C71C7) + v6 - 63 * (((v8 + (v8 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      v7 = (v7 - 4);
    }

    while (v7 >= v22);
    this = (*(**(v3 + 6552) + 384))(*(v3 + 6552));
    if (this == v6)
    {
      v9 = *(v3 + 6568);
      if (v9)
      {
        return v9(*(v3 + 6576));
      }
    }
  }

  return this;
}

uint64_t BlueFin::GlMeSrdRpcEvtCtrl::gll_satrpt_rpc_noise(uint64_t result)
{
  if (*(*(result + 16) + 360) == 5)
  {
    return (*(**(*(result + 8) + 112) + 72))();
  }

  return result;
}

void BlueFin::GlMeSrdSatRptRpcListener::gll_satrpt_rpc_noise(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  if (*a6 >= 0xEu)
  {
    DeviceFaultNotify("glmesrd_sat_report_mgr.cpp", 526, "gll_satrpt_rpc_noise", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_mgr.cpp", 526, "0");
  }
}

uint64_t BlueFin::stPeSigEnv::Deserialize(BlueFin::stPeSigEnv *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 12) - 1 < 2 && *(a2 + 2) == 58;
  v3 = v2;
  if (v2)
  {
    *(this + 2) = BlueFin::GlSysLogEntry::GetF32(a2);
    v6 = *(a2 + 12);
    F32 = BlueFin::GlSysLogEntry::GetF32(a2);
    if (v6 == 1)
    {
      F32 = F32 + 174.0;
    }

    *(this + 3) = F32;
    if (*(a2 + 11) != *(a2 + 10))
    {
      DeviceFaultNotify("glpe_msmtmgr.cpp", 342, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_msmtmgr.cpp", 342, "otEntry.DataSize() == otEntry.ReadIdx()");
    }
  }

  return v3;
}

uint64_t BlueFin::GlPeMsmtMgr::SetStrdDopps(BlueFin::GlPeMsmtMgr *this, const BlueFin::stPeStoredDoppler *a2)
{
  BlueFin::stPeStoredDoppler::operator=(this + 18848, a2);
  result = BlueFin::GlSetBase::Cnt((this + 37288));
  if (!result)
  {
    *(this + 18816) = 0;
  }

  return result;
}

uint64_t BlueFin::stPeStoredDoppler::Deserialize(void **this, BlueFin::GlSysLogEntry *a2)
{
  v3 = *(a2 + 12);
  v4 = (v3 - 1) < 2 && *(a2 + 2) == 54;
  result = v4;
  if (v4)
  {
    v20 = result;
    if (v3 == 1)
    {
      U8 = BlueFin::GlSysLogEntry::GetU8(a2);
    }

    else
    {
      U8 = BlueFin::GlSysLogEntry::GetU16(a2);
    }

    v8 = U8;
    bzero(this[2305], ((4 * *(this + 18448) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    if (!v8)
    {
LABEL_34:
      BlueFin::GlSysLogEntry::CheckConsumed(a2, 285);
      return v20;
    }

    v9 = 0;
    while (1)
    {
      v10 = *(a2 + 12);
      if (v10 == 2)
      {
        v12 = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + BlueFin::GlSysLogEntry::GetU8(a2));
        v11 = BlueFin::GlSysLogEntry::GetU8(a2);
      }

      else if (v10 == 1)
      {
        v11 = 0;
        v12 = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + BlueFin::GlSysLogEntry::GetU8(a2));
      }

      else
      {
        v12 = 0u;
        v11 = 0;
      }

      D64 = BlueFin::GlSysLogEntry::GetD64(a2);
      if (v12)
      {
        if (v9 != 575)
        {
          break;
        }
      }

LABEL_31:
      if (!--v8)
      {
        goto LABEL_34;
      }
    }

    if ((v12 - 189) >= 0xFFFFFF44)
    {
      v15 = BlueFin::GlSvId::s_aucSvId2gnss[v12];
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v11 - v11 + v15] == 255)
      {
        v14 = 575;
        v16 = -1;
LABEL_26:
        v17 = this[2304] + 32 * v9;
        *v17 = v12;
        *(v17 + 1) = v16;
        *(v17 + 4) = v14;
        *(v17 + 2) = D64;
        if ((v12 - 189) < 0xFFFFFF44 || (v18 = BlueFin::GlSvId::s_aucSvId2gnss[v12], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v11 - v11 + v18] == 255))
        {
          v19 = 575;
        }

        else
        {
          v19 = (BlueFin::GlSignalId::s_ausGnss2signalId[v18] + v12 - BlueFin::GlSvId::s_aucGnss2minSvId[v18] + v11 * BlueFin::GlSvId::s_aucGnss2numSvId[v18]);
        }

        ++v9;
        *(this[2305] + (v19 >> 5)) |= 1 << v19;
        goto LABEL_31;
      }

      v14 = BlueFin::GlSignalId::s_ausGnss2signalId[v15] + v12 - BlueFin::GlSvId::s_aucGnss2minSvId[v15] + v11 * BlueFin::GlSvId::s_aucGnss2numSvId[v15];
    }

    else
    {
      v14 = 575;
    }

    v16 = v11;
    goto LABEL_26;
  }

  return result;
}

uint64_t BlueFin::GlPeEnvMonitorData::Deserialize(BlueFin::GlPeEnvMonitorData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 68)
  {
    return 0;
  }

  if (*(a2 + 12) - 3 < 0xFFFFFFFE)
  {
    return 0;
  }

  *(this + 2) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 3) = BlueFin::GlSysLogEntry::GetF32(a2);
  *(this + 4) = BlueFin::GlSysLogEntry::GetF32(a2);
  *(this + 5) = BlueFin::GlSysLogEntry::GetF32(a2);
  *(this + 6) = BlueFin::GlSysLogEntry::GetF32(a2);
  *(this + 5) = BlueFin::GlSysLogEntry::GetD64(a2);
  if (*(a2 + 12) >= 2u)
  {
    *(this + 4) = BlueFin::GlSysLogEntry::GetD64(a2);
  }

  BlueFin::GlSysLogEntry::CheckConsumed(a2, 530);
  return 1;
}

double BlueFin::GlPeEnvironmentMonitor::Deserialize(BlueFin::GlPeEnvironmentMonitor *this, BlueFin::GlSysLogEntry *a2)
{
  memset(&v5[1], 0, 20);
  v5[0] = &unk_2A1F112C8;
  v6 = 0uLL;
  if (BlueFin::GlPeEnvMonitorData::Deserialize(v5, a2))
  {
    *(this + 330) = v5[1];
    result = *(&v5[1] + 4);
    v4 = v6;
    *(this + 1288) = *(&v5[1] + 4);
    *(this + 1304) = v4;
  }

  return result;
}

uint64_t BlueFin::GlPeRtiRequestor::OnRtiFromNvMem(BlueFin::GlPeRtiRequestor *this, const BlueFin::GlPeRtiData *a2, int a3)
{
  v4 = BlueFin::GlPeRtiRequestHelper::OnRtiFromNvMem(this + 32, a2, a3);
  if (v4 && *(this + 56) == 1)
  {
    BlueFin::GlPeRtiRequestor::onRtiAccepted(this);
  }

  return v4;
}

uint64_t BlueFin::GlSysLogEntry::GetU64(BlueFin::GlSysLogEntry *this)
{
  if (*(this + 10) + 8 > *(this + 11))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 529, "GetU64", "m_sReadIdx + sizeof(GlIntU64) <= m_sDataSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 529, "m_sReadIdx + sizeof(GlIntU64) <= m_sDataSize");
  }

  v2 = 0;
  v6 = 0;
  do
  {
    v3 = (*(*this + 24))(this);
    v4 = *(this + 10);
    *(this + 10) = v4 + 1;
    *(&v6 + v2++) = *(v3 + v4);
  }

  while (v2 != 8);
  return v6;
}

uint64_t *BlueFin::GlPeSvHealthData::SetState(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  Index = BlueFin::GlPeSvHealthData::getIndex(a1, a2);
  if (Index < 0)
  {
    DeviceFaultNotify("glpe_svhealthmgr.cpp", 158, "SetState", "iIndex >= 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_svhealthmgr.cpp", 158, "iIndex >= 0");
  }

  v7[0] = a1 + 8;
  v7[1] = 0;
  v8 = 0;
  v11 = 0;
  v10 = 0;
  v9 = vdup_n_s32(0xB80u);
  v12 = 0;
  BlueFin::GlBitBuffer::Position(v7, 3 * Index);
  return BlueFin::GlBitBuffer::PutU(v7, a3, 3u);
}

uint64_t BlueFin::GlPeSvHealthHelper::SetState(_BYTE *a1, unsigned int *a2, unsigned int a3)
{
  v6 = (*(*a1 + 40))(a1);
  BlueFin::GlPeSvHealthData::SetState(a1, a2, a3);
  a1[2272] = v6 != a3;

  return BlueFin::GlPeSvHealthHelper::LogState(a1, a2);
}

uint64_t BlueFin::GlPeSvHealthData::Deserialize(BlueFin::GlPeSvHealthData *this, BlueFin::GlSysLogEntry *a2)
{
  v26[10] = *MEMORY[0x29EDCA608];
  if (*(a2 + 2) != 63)
  {
    return 0;
  }

  v3 = *(a2 + 12);
  if (v3 - 1 > 5)
  {
    return 0;
  }

  if (v3 == 1)
  {
    BlueFin::GlSysLogEntry::GetU8(a2);
    v3 = *(a2 + 12);
  }

  if (v3 < 3)
  {
    U8 = 29;
  }

  else
  {
    U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  }

  v7 = (this + 8);
  bzero(this + 8, 0x8B8uLL);
  *(this + 140) = 0u;
  *(this + 564) = 0;
  if (U8)
  {
    if (U8 >= 0x5C)
    {
      v8 = 92;
    }

    else
    {
      v8 = U8;
    }

    do
    {
      *v7++ = BlueFin::GlSysLogEntry::GetU32(a2);
      --v8;
    }

    while (v8);
  }

  if (*(a2 + 12) == 1)
  {
    BlueFin::GlSysLogEntry::GetU32(a2);
  }

  *(this + 94) = BlueFin::GlSysLogEntry::GetU32(a2);
  if (*(a2 + 12) >= 5u)
  {
    v9 = 0;
    v26[1] = 32;
    v26[2] = this + 764;
    v26[3] = 0x30000000ALL;
    v26[4] = this + 884;
    v26[5] = 0x40000003FLL;
    v26[6] = this + 1640;
    v26[7] = 0x500000024;
    v25 = this;
    v26[0] = this + 380;
    v26[8] = this + 2072;
    v26[9] = 0x60000000ELL;
    do
    {
      v10 = &v26[2 * v9];
      v11 = *(v10 + 2);
      if (v11 >= 1)
      {
        v12 = 0;
        do
        {
          U32 = BlueFin::GlSysLogEntry::GetU32(a2);
          v14 = (*v10 + 12 * v12);
          *v14 = U32;
          v14[2] = BlueFin::GlSysLogEntry::GetU32(a2);
          v14[1] = BlueFin::GlSysLogEntry::GetU32(a2);
          if (v14[2])
          {
            v15 = BlueFin::GNSS2STR(*(v10 + 3));
            ++v12;
            v16 = "LTO";
            if (v14[1] == 1)
            {
              v16 = "RTO";
            }

            if (v14[2] == 1)
            {
              v17 = 72;
            }

            else
            {
              v17 = 85;
            }

            GlCustomLog(15, "Deserial L5Health (%s %d) Health: %c Src: %s\n", v15, v12, v17, v16);
          }

          else
          {
            ++v12;
          }
        }

        while (v12 != v11);
      }

      ++v9;
    }

    while (v9 != 5);
    BlueFin::GlSysLogEntry::GetBuffer(a2, v25 + 2240, 0x10u);
    v18 = BlueFin::GlSysLogEntry::GetU32(a2);
    *(v25 + 564) = v18;
    if (*(a2 + 12) <= 5u)
    {
      v19 = 0;
      while (1)
      {
        v20 = &v26[2 * v19];
        v21 = *(v20 + 2);
        if (v21 >= 1)
        {
          break;
        }

LABEL_40:
        if (++v19 == 5)
        {
          goto LABEL_41;
        }
      }

      v22 = *v20;
      while (1)
      {
        if (*v22)
        {
          v23 = v22[1];
          v24 = v18;
          if (v23 == 2)
          {
            goto LABEL_38;
          }

          if (v23 == 1)
          {
            break;
          }
        }

LABEL_39:
        v22 += 3;
        if (!--v21)
        {
          goto LABEL_40;
        }
      }

      v24 = *v22 + 14400;
LABEL_38:
      *v22 = v24;
      goto LABEL_39;
    }
  }

LABEL_41:
  BlueFin::GlSysLogEntry::CheckConsumed(a2, 269);
  return 1;
}

uint64_t BlueFin::GlSysLogEntry::GetBuffer(BlueFin::GlSysLogEntry *this, unsigned __int8 *a2, unsigned int a3)
{
  U16 = BlueFin::GlSysLogEntry::GetU16(this);
  if (U16 > a3 || (v7 = U16, *(this + 11) - *(this + 10) < U16))
  {
    DeviceFaultNotify("glutl_slog_codec.cpp", 314, "GetBuffer", "(usLength <= usSize) && (usLength <= (m_sDataSize - m_sReadIdx))");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_slog_codec.cpp", 314, "(usLength <= usSize) && (usLength <= (m_sDataSize - m_sReadIdx))");
  }

  if (U16)
  {
    v8 = 0;
    do
    {
      v9 = (*(*this + 24))(this);
      v10 = *(this + 10);
      *(this + 10) = v10 + 1;
      a2[v8++] = *(v9 + v10);
    }

    while (v7 > v8);
  }

  return v7;
}

double BlueFin::GlPeGalTimeMgr::GetGal2GpsSysOffsetS(BlueFin::GlPeGalTimeMgr *this, const BlueFin::GlGalTime *a2, int8x16_t a3, int8x16_t a4)
{
  v4 = 0.0;
  if (*(this + 18))
  {
    v7 = *(this + 42);
    if (__PAIR64__(*(this + 43), v7) != 0xFFFFFFFF0000FFFFLL || *(this + 88) != 255 || *(this + 89) != 63)
    {
      *a3.i64 = v7;
      v4 = *a3.i64 * -2.91038305e-11;
      if (a2)
      {
        if (*(this + 43))
        {
          v8 = *(this + 89);
          a3.i8[0] = *(this + 88);
          *a3.i64 = a3.u64[0] * 3600.0;
          *a4.i64 = *a3.i64 - trunc(*a3.i64);
          v9.f64[0] = NAN;
          v9.f64[1] = NAN;
          a4.i64[0] = vbslq_s8(vnegq_f64(v9), a4, a3).i64[0];
          if (*a4.i64 < 0.0 || *a4.i64 >= 1.0)
          {
            DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
          }

          v11 = *a4.i64 * 4294967300.0 + 0.5;
          v12 = v11;
          if (v11 >= 4294967300.0)
          {
            v12 = -1;
          }

          v26 = v12;
          v27 = *a3.i64 + 604800 * v8;
          v13 = (*(*a2 + 32))(a2);
          v25[0] = *(a2 + 2);
          v25[1] = v13;
          BlueFin::GlTimePoint::resolveAmbiguity(&v26, v25, 0x24EA000u);
          v14 = (*(*a2 + 24))(a2, v27);
          v15 = *(a2 + 2);
          v16 = *(a2 + 3);
          v17 = v14 | v26;
          if (v14 | v26)
          {
            v18 = v16 - v14;
            if (__PAIR64__(v16, v15) < __PAIR64__(v14, v26))
            {
              v21 = v14 - v16;
              v19 = v26 >= v15;
              v15 = v26 - v15;
              v22 = !v19;
              v16 = v21 - v22;
              v17 = 1;
            }

            else
            {
              v17 = 0;
              v19 = v15 >= v26;
              v15 -= v26;
              v20 = !v19;
              v16 = v18 - v20;
            }
          }

          v23 = v15 * 2.32830644e-10 + v16;
          if ((v17 & ((v16 | v15) != 0)) != 0)
          {
            v23 = -v23;
          }

          return v4 + *(this + 43) * -4.4408921e-16 * v23;
        }
      }
    }
  }

  return v4;
}

uint64_t BlueFin::GlPeGalGpsOffsetData::Deserialize(BlueFin::GlPeGalGpsOffsetData *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 96 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    *(this + 2) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 6) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 4) = BlueFin::GlSysLogEntry::GetU32(a2);
    *(this + 10) = BlueFin::GlSysLogEntry::GetS16(a2);
    *(this + 11) = BlueFin::GlSysLogEntry::GetS16(a2);
    *(this + 24) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 25) = BlueFin::GlSysLogEntry::GetU8(a2);
    BlueFin::GlSysLogEntry::CheckConsumed(a2, 311);
  }

  return v3;
}

uint64_t BlueFin::GlPeBdsTimeMgr::GetBds2UtcSysOffsetS(uint64_t this, const BlueFin::GlBdsTime *a2)
{
  if ((*(this + 8) & 0x40) != 0 && a2)
  {
    if (*(this + 44))
    {
      return (*(*a2 + 32))(a2);
    }
  }

  return this;
}

uint64_t BlueFin::GlPeTimeManager::SetGalUtcModel(BlueFin::GlPeTimeManager *this, const BlueFin::GlPeGalUtcModelData *a2, int a3)
{
  BlueFin::GlPeGalTimeMgr::SetUtcModel((this + 2336), a2);
  v6 = *(this + 2392);
  *(this + 2392) = 0;
  if (v6 == 1)
  {
    BlueFin::GlPeTimeManager::updateConversionTable(this);
    if ((a3 & 1) == 0 && BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      (*(*a2 + 24))(a2, 0, 0);
    }

    v7 = 89;
  }

  else
  {
    v7 = 78;
  }

  v8 = *(this + 642);
  if (v8 == -7200001)
  {
    v8 = 0;
  }

  v9 = *(a2 + 5) * 8.8817842e-16;
  v10 = v9 * 1000000000.0;
  v13 = vcvtd_n_f64_s32(*(a2 + 6), 0x1EuLL) * 1000000000.0;
  v11 = 78;
  if (a3)
  {
    v11 = 89;
  }

  LOBYTE(v9) = *(a2 + 28);
  return GlCustomLog(15, "GlPeTimeManager::SetGalUtcModel(%u): Updated:%c  FromNvMem:%c  Source:%s  GalWeek:%d  GalTowS:%u  Model{A0(ns):%.1lf  A1(ns/s):%.1lf  WNt:%d  Tot(s):%.0lf  Tls:%d}\n", v8, v7, v11, BlueFin::GlPeTimeManager::m_acNavDataSourceImage[*(a2 + 2)], *(a2 + 6), *(a2 + 4) / 0x3E8u, v13, v10, *(a2 + 29), *&v9 * 3600.0, *(a2 + 30));
}

uint64_t BlueFin::GlPeBdsTimeMgr::GetBds2GalSysOffsetS(uint64_t this, const BlueFin::GlBdsTime *a2)
{
  if ((*(this + 8) & 0x10) != 0 && a2)
  {
    if (*(this + 164))
    {
      return (*(*a2 + 32))(a2);
    }
  }

  return this;
}

uint64_t BlueFin::GlPeBdsTimeMgr::GetBds2GpsSysOffsetS(uint64_t this, const BlueFin::GlBdsTime *a2)
{
  if ((*(this + 8) & 4) != 0 && a2)
  {
    if (*(this + 84))
    {
      return (*(*a2 + 32))(a2);
    }
  }

  return this;
}

void BlueFin::GlPeTimeManager::SetBdsSystemOffset(int8x8_t *this, int8x8_t *a2)
{
  v4 = BlueFin::GlPeBdsTimeMgr::SetSystemOffset(this + 268, a2);
  v5 = BlueFin::GlPeBdsTimeMgr::timeSystemToDataType(v4, a2[1].i32[0]);
  v6 = this[269].u32[1];
  this[269].i32[1] = v6 & ~(1 << v5);
  if (((1 << v5) & v6) != 0)
  {

    BlueFin::GlPeTimeManager::updateConversionTable(this);
  }
}

BOOL BlueFin::GlPeBdsTimeMgr::acceptSystemOffsetUpdate(BlueFin::GlPeBdsTimeMgr *this, const BlueFin::GlPeBdsSingleSysOffsetData *a2)
{
  v2 = *(a2 + 5);
  if (!v2)
  {
    DeviceFaultNotify("glpe_bdstimemgr.cpp", 542, "acceptSystemOffsetUpdate", "rotCandidateSysOffset.etSrc != GLPE_NAV_DATA_FROM_NONE");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bdstimemgr.cpp", 542, "rotCandidateSysOffset.etSrc != GLPE_NAV_DATA_FROM_NONE");
  }

  if (*(this + 16) == 1)
  {
    v5 = *(this + 17) ^ 1;
  }

  else
  {
    v5 = 1;
  }

  result = 0;
  v7 = v5 & (*(a2 + 3) == 0.0);
  if (*(a2 + 4) != 0.0)
  {
    v7 = 0;
  }

  if (((v2 == 1) & v5) == 0 && (v7 & 1) == 0)
  {
    v8 = BlueFin::GlPeBdsTimeMgr::timeSystemToDataType(0, *(a2 + 2));
    if (((*(this + 2) >> v8) & 1) != 0 && (v9 = this + *&aH_1[8 * v8 - 16], v10 = *(a2 + 5), v11 = *(v9 + 5), v10 >= v11))
    {
      return v10 == v11 && *(a2 + 4) >= *(v9 + 4);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeBdsSingleSysOffsetData::Deserialize(BlueFin::GlPeBdsSingleSysOffsetData *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 34 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    *(this + 2) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 6) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 4) = BlueFin::GlSysLogEntry::GetU32(a2);
    *(this + 5) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 3) = BlueFin::GlSysLogEntry::GetD64(a2);
    *(this + 4) = BlueFin::GlSysLogEntry::GetD64(a2);
    BlueFin::GlSysLogEntry::CheckConsumed(a2, 418);
  }

  return v3;
}

uint64_t BlueFin::GlPeTimeManager::updateLeapSecFromGlnsKp(BlueFin::GlPeTimeManager *this)
{
  if (*(this + 432) == 1 && (*(this + 435) = 0, *(this + 646)) && (v1 = *(this + 433), v1 != 254))
  {
    return BlueFin::GlPeTimeManager::updateLeapSeconds(this, *(this + 2588), 3, 0, (*(this + 2588) + v1));
  }

  else
  {
    return 0;
  }
}

double BlueFin::GlPeGlnTimeMgr::initializeTimeData(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 8))
  {
    v6 = *(a2 + 10);
    if (v6)
    {
      *(a1 + 57) = *(a2 + 8);
      *(a1 + 58) = v6;
      *(a1 + 56) = 1;
    }
  }

  *(a1 + 128) = *(a2 + 12);
  if (*(a2 + 16) == 1)
  {
    BlueFin::GlPeGlnTimeMgr::stTauMgr::Update(a1 + 192, a3, **(a1 + 8), *(a2 + 24));
    *(a1 + 28) |= 2u;
  }

  if (*(a2 + 32) == 1)
  {
    BlueFin::GlPeGlnTimeMgr::TauGpsMgr::Update(a1 + 136, a3, **(a1 + 8), *(a2 + 40));
  }

  if (*(a2 + 48) == 1)
  {
    if (*(a1 + 240))
    {
      v8 = *(a1 + 241);
      v9 = *(a2 + 49);
      if (v8 == v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      LOBYTE(v9) = *(a2 + 49);
    }

    *(a1 + 243) = 1;
    LOBYTE(v8) = v9;
LABEL_14:
    *(a1 + 240) = 1;
    *(a1 + 241) = v8;
    *(a1 + 29) |= 2u;
  }

  if (*(a2 + 50) == 1)
  {
    *(a1 + 244) = 1;
    result = *(a2 + 52);
    *(a1 + 248) = result;
  }

  return result;
}

int8x16_t *BlueFin::GlPeGpsTimeMgr::RecoverFromNvMem(int8x16_t *this, const BlueFin::GlPeGpsUtcModel *a2, double a3, int8x16_t a4)
{
  if (*(a2 + 42))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a2 + 44) == 0;
  }

  if (!v6 || *(a2 + 40) != 0 || *(a2 + 41) != 0)
  {
    v13 = v4;
    v14 = v5;
    v9.i64[0] = &unk_2A1F185A8;
    v9.i32[2] = *(a2 + 2);
    v11 = *(a2 + 3);
    v10 = &off_2A1F0B5F0;
    v12 = *(a2 + 2);
    v9.i8[12] = 1;
    return BlueFin::GlPeGpsTimeMgr::updateModelIfBetter(this, &v9, 0, *&v12, a4);
  }

  return this;
}

uint64_t BlueFin::GlPeLtoMgr::Deserialize(BlueFin::GlPeLtoMgr *this, BlueFin::GlSysLogEntry *a2, char a3, int a4, int a5)
{
  if (a5)
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  *(this + 409) = *(this + 409) & 0xFFFFFFFB | v8;
  BlueFin::GlPeLtoData::Deserialize((this + 128), a2);
  if (a3)
  {
    v9 = 3;
  }

  else
  {
    if ((a4 - 1) > 0x26)
    {
      goto LABEL_9;
    }

    v9 = 2;
  }

  *(this + 409) |= v9;
LABEL_9:

  return BlueFin::GlPeLtoMgr::MakeNvMemDataActive(this, 0);
}

uint64_t BlueFin::GlPeGalTimeMgr::SetUtcModel(BlueFin::GlPeGalTimeMgr *this, const BlueFin::GlPeGalUtcModelData *a2)
{
  v2 = *(a2 + 6);
  v3 = *(a2 + 4);
  v4 = *(this + 6);
  v5 = *(a2 + 2);
  if (v4)
  {
    v6 = v5 < v4;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && v3 / 0x3E8 + 604800 * v2 <= *(this + 8) / 0x3E8u + 604800 * *(this + 14))
  {
    return 0;
  }

  v10 = (this + 16);
  if (BlueFin::GlPeGalUtcModelData::operator==(this + 16, a2))
  {
    return 0;
  }

  if (v10 != a2)
  {
    *(this + 6) = v5;
    *(this + 14) = v2;
    *(this + 8) = v3;
    *(this + 36) = *(a2 + 20);
  }

  result = 1;
  *(this + 56) = 1;
  return result;
}

double BlueFin::GlPeGpsTimeMgr::GetGps2UtcSysOffsetS(BlueFin::GlPeGpsTimeMgr *this, const BlueFin::GlGpsTime *a2)
{
  v2 = 0.0;
  if (*(this + 18) && (!a2 || !BlueFin::GlPeGpsTimeMgr::isExpired(this, a2)))
  {
    BlueFin::GlPeGpsUtcModel::computeUtcSysOffsetS((this + 64), a2);
    return -v5;
  }

  return v2;
}

uint64_t BlueFin::stPeStoredDoppler::operator=(uint64_t a1, uint64_t a2)
{
  BlueFin::GlSetBase::operator=(a1 + 18440, a2 + 18440);
  v4 = 0;
  *(a1 + 18452) = *(a2 + 18452);
  v5 = *(a2 + 18468);
  v6 = *(a2 + 18484);
  v7 = *(a2 + 18500);
  *(a1 + 18512) = *(a2 + 18512);
  *(a1 + 18484) = v6;
  *(a1 + 18500) = v7;
  *(a1 + 18468) = v5;
  *(a1 + 18528) = *(a2 + 18528);
  v8 = *(a2 + 18432);
  v9 = *(a1 + 18432);
  v10 = 575;
  do
  {
    if (v9 != v8)
    {
      v11 = v9 + v4;
      *v11 = *(v8 + v4);
      *(v11 + 4) = *(v8 + v4 + 4);
      *(v11 + 8) = *(v8 + v4 + 8);
    }

    v12 = v9 + v4;
    *(v12 + 12) = *(v8 + v4 + 12);
    *(v12 + 16) = *(v8 + v4 + 16);
    *(v12 + 24) = *(v8 + v4 + 24);
    v4 += 32;
    --v10;
  }

  while (v10);
  return a1;
}

uint64_t BlueFin::GlPeGloEphMgr::SetLtoEph(BlueFin::GlPeGloEphMgr *this, const BlueFin::GlPeLtoEphemeris *a2)
{
  if (!(*(*a2 + 192))(a2, 35))
  {
    (*(*a2 + 136))(&v5, a2);
    GlCustomLog(12, "GlPeGloEphMgr::SetLtoEph: LTO ephemeris for OSN:%d cannot be used until its FCN is known.\n", v5);
  }

  return (*(*this + 376))(this, a2, 0);
}

__n128 BlueFin::GlPeLtoMgr::UpdateUtcModel(__n128 *a1, __n128 *a2, uint64_t a3, int a4, double a5, int8x16_t a6)
{
  v6 = a4;
  if (a4)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  v10 = a1[5].n128_u64[1];
  v12.i64[0] = &unk_2A1F185A8;
  v12.i32[2] = v9;
  v12.i8[12] = 0;
  v13 = &off_2A1F0B5F0;
  v14 = *(a3 + 8);
  v15 = *a2;
  BlueFin::GlPeTimeManager::SetGpsUtcModel(v10, &v12, v15.n128_f64[0], a6);
  if ((v6 & 1) == 0)
  {
    a1[1654].n128_u32[0] |= 1u;
    result = *a2;
    a1[1248] = *a2;
  }

  return result;
}

uint64_t BlueFin::GlPeLtoReader::GlPeLtoReader(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *&v138 = a2;
  *(&v138 + 1) = a3;
  *a1 = &unk_2A1F107A8;
  *(a1 + 9740) = 0u;
  *(a1 + 9756) = 0u;
  *(a1 + 9772) = 0u;
  *(a1 + 9784) = 0u;
  *(a1 + 9808) = -1;
  *(a1 + 9960) = 0u;
  *(a1 + 9816) = 0u;
  *(a1 + 9832) = 0u;
  *(a1 + 9848) = 0u;
  *(a1 + 9864) = 0u;
  v17 = (a1 + 96800);
  *(a1 + 9880) = 0u;
  *(a1 + 9896) = 0u;
  v18 = a1 + 39344;
  v19 = a1 + 26960;
  *(a1 + 9912) = 0u;
  *(a1 + 9928) = 0u;
  v20 = a1 + 9716;
  *(a1 + 9941) = 0u;
  *(a1 + 10184) = 0u;
  *(a1 + 10208) = a1 + 16040;
  *(a1 + 10240) = a1 + 21864;
  *(a1 + 10248) = a1 + 22632;
  v21 = (a1 + 11432);
  *(a1 + 10272) = a1 + 10284;
  *(a1 + 10280) = 2;
  v22 = (a1 + 18408);
  *(a1 + 10328) = a1 + 10340;
  v23 = (a1 + 24744);
  *(a1 + 10336) = 2;
  *(a1 + 10408) = a1 + 48556;
  *(a1 + 10416) = a1 + 48632;
  *(a1 + 10424) = a1 + 11104;
  *(a1 + 10472) = a1 + 11168;
  *(a1 + 10480) = a1 + 47480;
  v24 = a1 + 26184;
  *(a1 + 10504) = xmmword_298A407D0;
  *(a1 + 10496) = a1 + 11176;
  *(a1 + 10552) = a1 + 96832;
  v25 = (a1 + 26972);
  *(a1 + 10560) = a1 + 97088;
  *(a1 + 10568) = a1 + 97344;
  v26 = a1 + 36044;
  *(a1 + 10576) = a1 + 97600;
  *(a1 + 10584) = a1 + 97856;
  v137 = (a1 + 40388);
  *(a1 + 10592) = a1 + 98048;
  *(a1 + 10600) = a1 + 98240;
  v27 = a1 + 45572;
  *(a1 + 10608) = a1 + 98368;
  *(a1 + 10616) = a1 + 98496;
  v136 = (a1 + 47492);
  *(a1 + 10624) = a1 + 98624;
  *(a1 + 10632) = a1 + 99072;
  v135 = a1 + 11084;
  *(a1 + 10640) = a1 + 99520;
  *(a1 + 10648) = a1 + 99968;
  v133 = (a1 + 11120);
  *(a1 + 10656) = a1 + 100224;
  *(a1 + 10720) = a1 + 102492;
  *(a1 + 10736) = a1 + 11404;
  *(a1 + 10744) = a1 + 50660;
  *(a1 + 10752) = a1 + 11280;
  *(a1 + 10760) = a1 + 11312;
  *(a1 + 10768) = a1 + 50680;
  v28 = (a1 + 11136);
  *(a1 + 10784) = 1;
  v29 = (a1 + 11152);
  *(a1 + 10816) = a6;
  v30 = a1 + 11376;
  *(a1 + 10848) = a1 + 22632;
  v31 = a1 + 17216;
  *(a1 + 10880) = a1 + 48632;
  v32 = a1 + 18272;
  *(a1 + 10888) = a1 + 11104;
  v33 = a1 + 46464;
  *(a1 + 10904) = a1 + 47480;
  *(a1 + 10456) = a1 + 40376;
  *(a1 + 10920) = a1 + 40376;
  *(a1 + 11032) = 0u;
  v120 = a1 + 47472;
  *(a1 + 10488) = a1 + 50648;
  *(a1 + 10928) = a1 + 50648;
  v34 = a1 + 26560;
  v35 = a1 + 26912;
  v36 = a1 + 38336;
  *(a1 + 12) = -1;
  *v20 = 0;
  *(a1 + 10200) = v21;
  *(a1 + 10216) = v31;
  *(a1 + 10224) = v32;
  v129 = v22;
  *(a1 + 10232) = v22;
  *(a1 + 10256) = v23;
  *(a1 + 10264) = v24;
  *(v20 + 568) = 0;
  *(a1 + 10296) = v34;
  *(a1 + 10304) = v35;
  *(a1 + 10312) = v19;
  *(a1 + 10320) = v25;
  *(v20 + 624) = 0;
  *(a1 + 10352) = v26;
  *(a1 + 10360) = v36;
  *(a1 + 10368) = a1 + 39360;
  *(a1 + 10376) = v137;
  v122 = v27;
  *(a1 + 10384) = v27;
  *(a1 + 10392) = v33;
  *(a1 + 10400) = v136;
  *(a1 + 10432) = v135;
  *(a1 + 10440) = v133;
  v125 = v28;
  *(a1 + 10448) = v28;
  v131 = v29;
  *(a1 + 10464) = v29;
  *(a1 + 10520) = vdup_n_s32(0xFEEDBEEF);
  *(v20 + 812) = 0;
  *(v20 + 814) = 0;
  v37 = v20;
  *(a1 + 10536) = a1 + 50720;
  *(a1 + 10544) = -1;
  v132 = v30;
  *(a1 + 10664) = a1 + 100480;
  *(a1 + 10672) = a1 + 100544;
  *(a1 + 10680) = a1 + 100960;
  *(a1 + 10688) = a1 + 101088;
  *(a1 + 10696) = a1 + 101856;
  *(a1 + 10704) = a1 + 102304;
  *(a1 + 10712) = a1 + 102480;
  *(a1 + 10728) = v30;
  *(a1 + 10776) = a2;
  *(a1 + 10792) = a5;
  *(a1 + 10800) = 0;
  *(a1 + 10808) = 0;
  *(a1 + 10824) = 0;
  *(a1 + 10832) = 0xFFFFFFFF00000000;
  v130 = v21;
  *(a1 + 10840) = v21;
  *(a1 + 10856) = v23;
  *(a1 + 10864) = v25;
  *(a1 + 10872) = v137;
  *(a1 + 10896) = v135;
  v38 = v19;
  v39 = v34;
  v126 = v38;
  *(a1 + 10912) = v38;
  v123 = v32;
  v124 = v31;
  *(a1 + 10936) = v31;
  *(a1 + 10944) = v32;
  *(a1 + 10952) = v34;
  v121 = v35;
  *(a1 + 10960) = v35;
  v119 = v36;
  *(a1 + 10968) = v36;
  *(a1 + 10976) = a1 + 39360;
  *(a1 + 10984) = a1 + 100544;
  *(a1 + 10992) = a1 + 100960;
  *(a1 + 11000) = a1 + 101088;
  *(a1 + 11008) = a1 + 101856;
  *(a1 + 11016) = a1 + 102304;
  *(a1 + 11024) = a1 + 102480;
  *(a1 + 11048) = 0;
  *(a1 + 11064) = a2;
  *(v20 + 1356) = 0;
  *(a1 + 11052) = a4;
  *(a1 + 11056) = -1;
  *(v20 + 1364) = 0;
  bzero((a1 + 16), 0x25E4uLL);
  *(a1 + 8) = 0;
  *(a1 + 9717) = 0u;
  *(a1 + 9976) = 0u;
  *(a1 + 9992) = 0u;
  *(a1 + 10008) = 0u;
  *(a1 + 10024) = 0u;
  *(a1 + 10040) = 0u;
  *(a1 + 10056) = 0u;
  *(a1 + 10072) = 0u;
  *(a1 + 10088) = 0u;
  *(a1 + 10104) = 0u;
  *(a1 + 10120) = 0u;
  *(a1 + 10136) = 0u;
  *(a1 + 10152) = 0u;
  *(a1 + 10164) = 0u;
  *(a1 + 9800) = a4;
  *(a1 + 9804) = -1;
  *(a1 + 9736) = 9700;
  *(v37 + 152) = xmmword_298A32900;
  *(a1 + 9884) = 0;
  *(v37 + 240) = 0;
  v40 = *(a1 + 10192);
  if (v40)
  {
    *(v40 + 4) = 0;
  }

  v41 = (a1 + 100928);
  v42 = (a1 + 22692);
  if (a5)
  {
    *a5 = 0;
  }

  *(a1 + 10808) = 0;
  *a1 = &unk_2A1F107E8;
  *v133 = 0;
  *(v133 + 6) = 0;
  *v125 = 0;
  *(v125 + 6) = 0;
  *(a1 + 11176) = 0xFFFFFFFFLL;
  *(a1 + 11184) = 0;
  *(a1 + 11192) = *(&v138 + 1);
  *(a1 + 11200) = a7;
  *(a1 + 11208) = a8;
  *(a1 + 11216) = a9;
  *(a1 + 11224) = a10;
  *(a1 + 11232) = a11;
  *(a1 + 11240) = a12;
  *(a1 + 11248) = a13;
  *(a1 + 11256) = a14;
  *(a1 + 11264) = a15;
  *(a1 + 11272) = a16;
  *(a1 + 18240) = v124;
  *(a1 + 18400) = v123;
  *(a1 + 26880) = v39;
  *(a1 + 26952) = v121;
  *v126 = 0;
  *(v126 + 4) = 0;
  *v18 = v119;
  *(v18 + 1024) = a1 + 39360;
  *(v18 + 1032) = 0;
  *(v18 + 1036) = 0;
  *v120 = v33;
  *(v120 + 8) = 0;
  *(v120 + 12) = 0;
  *(v120 + 3176) = 0;
  *(v120 + 3180) = 0;
  *(v120 + 3208) = v120 + 3220;
  *(v120 + 3216) = 3;
  *(v120 + 3224) = 0;
  *(v120 + 3220) = 2048;
  *(v120 + 3232) = 3;
  *v17 = a1 + 50720;
  v17[4] = 0xFFFFFFFF00000000;
  v43 = v17 + 34;
  v44 = 32;
  v17[32] = a1 + 96864;
  do
  {
    *(v43 - 2) = 0;
    *(v43 - 2) = 0;
    *v43 = 0;
    v43 += 3;
    --v44;
  }

  while (v44);
  v17[36] = 0xFFFFFFFF00000000;
  v17[64] = a1 + 97120;
  v45 = v17 + 162;
  v46 = 32;
  do
  {
    *(v45 - 2) = 0;
    *(v45 - 2) = 0;
    *v45 = 0;
    v45 += 3;
    --v46;
  }

  while (v46);
  v17[68] = 0xFFFFFFFF00000000;
  v17[96] = a1 + 97376;
  v47 = v17 + 290;
  v48 = 32;
  do
  {
    *(v47 - 2) = 0;
    *(v47 - 2) = 0;
    *v47 = 0;
    v47 += 3;
    --v48;
  }

  while (v48);
  v17[100] = 0xFFFFFFFF00000000;
  v17[128] = a1 + 97632;
  v49 = v17 + 418;
  v50 = 32;
  do
  {
    *(v49 - 2) = 0;
    *(v49 - 2) = 0;
    *v49 = 0;
    v49 += 3;
    --v50;
  }

  while (v50);
  v17[132] = 0xFFFFFFFF00000000;
  v17[154] = a1 + 97888;
  v51 = v17 + 546;
  v52 = 24;
  do
  {
    *(v51 - 2) = 0;
    *(v51 - 2) = 0;
    *v51 = 0;
    v51 += 3;
    --v52;
  }

  while (v52);
  v17[156] = 0xFFFFFFFF00000000;
  v17[178] = a1 + 98080;
  v53 = v17 + 642;
  v54 = 24;
  do
  {
    *(v53 - 2) = 0;
    *(v53 - 2) = 0;
    *v53 = 0;
    v53 += 3;
    --v54;
  }

  while (v54);
  v17[180] = 0xFFFFFFFF00000000;
  v17[192] = a1 + 98272;
  v55 = v17 + 738;
  v56 = 10;
  do
  {
    *(v55 - 2) = 0;
    *(v55 - 2) = 0;
    *v55 = 0;
    v55 += 3;
    --v56;
  }

  while (v56);
  v17[196] = 0xFFFFFFFF00000000;
  v17[208] = a1 + 98400;
  v57 = v17 + 802;
  v58 = 10;
  do
  {
    *(v57 - 2) = 0;
    *(v57 - 2) = 0;
    *v57 = 0;
    v57 += 3;
    --v58;
  }

  while (v58);
  v17[212] = 0xFFFFFFFF00000000;
  v17[224] = a1 + 98528;
  v59 = v17 + 866;
  v60 = 10;
  do
  {
    *(v59 - 2) = 0;
    *(v59 - 2) = 0;
    *v59 = 0;
    v59 += 3;
    --v60;
  }

  while (v60);
  v17[228] = 0xFFFFFFFF00000000;
  v17[280] = a1 + 98656;
  v61 = v17 + 930;
  v62 = 63;
  do
  {
    *(v61 - 2) = 0;
    *(v61 - 2) = 0;
    *v61 = 0;
    v61 += 3;
    --v62;
  }

  while (v62);
  v17[284] = 0xFFFFFFFF00000000;
  v17[336] = a1 + 99104;
  v63 = v17 + 1154;
  v64 = 63;
  do
  {
    *(v63 - 2) = 0;
    *(v63 - 2) = 0;
    *v63 = 0;
    v63 += 3;
    --v64;
  }

  while (v64);
  v17[340] = 0xFFFFFFFF00000000;
  v17[392] = a1 + 99552;
  v65 = v17 + 1378;
  v66 = 63;
  do
  {
    *(v65 - 2) = 0;
    *(v65 - 2) = 0;
    *v65 = 0;
    v65 += 3;
    --v66;
  }

  while (v66);
  v17[396] = 0xFFFFFFFF00000000;
  v17[427] = a1 + 100000;
  v67 = v17 + 1602;
  v68 = 36;
  do
  {
    *(v67 - 2) = 0;
    *(v67 - 2) = 0;
    *v67 = 0;
    v67 += 3;
    --v68;
  }

  while (v68);
  v17[428] = 0xFFFFFFFF00000000;
  v17[459] = a1 + 100256;
  v69 = v17 + 1730;
  v70 = 36;
  do
  {
    *(v69 - 2) = 0;
    *(v69 - 2) = 0;
    *v69 = 0;
    v69 += 3;
    --v70;
  }

  while (v70);
  *v41 = a1 + 100544;
  *(a1 + 101080) = a1 + 100960;
  *(a1 + 101848) = a1 + 101088;
  *(a1 + 102288) = a1 + 101856;
  *(a1 + 102472) = a1 + 102304;
  GlCustomLog(15, "LTO under license to '%s', license #%u\n", "ice", 10);
  GlCustomLog(15, "%s\n", "LTO_LICENSEE=ice");
  bzero(v23, 0x5A0uLL);
  *(v135 + 32) = 0;
  *v135 = 0u;
  *(v135 + 16) = 0u;
  bzero(v130, 0x1680uLL);
  bzero(v129, 0x1080uLL);
  bzero(v25, 0x2C4CuLL);
  bzero(v137, 0x17A0uLL);
  bzero(v136, 0xC54uLL);
  for (i = 0; i != 1024; i += 32)
  {
    v72 = *(a1 + 18240) + i;
    *v72 = -1;
    *(v72 + 4) = -1;
    *(v72 + 28) = 0;
    *(v72 + 8) = 0;
    *(v72 + 16) = 0;
    *(v72 + 23) = 0;
  }

  v73 = (*(a1 + 18400) + 2);
  v74 = 32;
  do
  {
    *(v73 - 2) = -1;
    *v73 = 0;
    v73 += 2;
    --v74;
  }

  while (v74);
  for (j = 0; j != 1008; j += 28)
  {
    v76 = *v120 + j;
    *v76 = -1;
    *(v76 + 4) = -1;
    *(v76 + 8) = 0;
    *(v76 + 16) = 0;
    *(v76 + 24) = 0;
  }

  for (k = 0; k != 320; k += 32)
  {
    v78 = *(a1 + 26880) + k;
    *v78 = -1;
    *(v78 + 4) = -1;
    *(v78 + 28) = 0;
    *(v78 + 8) = 0;
    *(v78 + 16) = 0;
    *(v78 + 23) = 0;
  }

  v79 = (*(a1 + 26952) + 2);
  v80 = 10;
  do
  {
    *(v79 - 2) = -1;
    *v79 = 0;
    v79 += 2;
    --v80;
  }

  while (v80);
  for (m = 0; m != 1008; m += 16)
  {
    v82 = *v18 + m;
    *v82 = -1;
    *(v82 + 4) = 0;
    *(v82 + 12) = 0;
  }

  for (n = 0; n != 1008; n += 16)
  {
    v84 = *(v18 + 1024) + n;
    *v84 = -1;
    *(v84 + 4) = 0;
    *(v84 + 12) = 0;
  }

  for (ii = 0; ii != 4; ++ii)
  {
    v86 = *v17 + 11520 * ii;
    *v86 = 0;
    *(v86 + 8) = 0uLL;
    *(v86 + 24) = 0uLL;
    *(v86 + 40) = 0uLL;
    *(v86 + 56) = 0;
    *(v86 + 64) = 0xFFFFFFFFLL;
    *(v86 + 11496) = v86 + 96;
    v87 = -11400;
    do
    {
      v88 = *(v86 + 11496) + v87;
      *(v88 + 11592) = 0;
      *(v88 + 11560) = 0uLL;
      *(v88 + 11576) = 0uLL;
      *(v88 + 11528) = 0uLL;
      *(v88 + 11544) = 0uLL;
      *(v88 + 11496) = 0uLL;
      *(v88 + 11512) = 0uLL;
      *(v88 + 11464) = 0uLL;
      *(v88 + 11480) = 0uLL;
      *(v88 + 11432) = 0uLL;
      *(v88 + 11448) = 0uLL;
      *(v88 + 11400) = 0uLL;
      *(v88 + 11416) = 0uLL;
      v87 += 200;
    }

    while (v87);
  }

  v89 = *v41 + 8;
  v90 = 32;
  do
  {
    *(v89 - 8) = -1;
    *(v89 - 4) = 0xFFFFFFFFLL;
    v89 += 12;
    --v90;
  }

  while (v90);
  v91 = *(a1 + 101080) + 8;
  v92 = 10;
  do
  {
    *(v91 - 8) = -1;
    *(v91 - 4) = 0xFFFFFFFFLL;
    v91 += 12;
    --v92;
  }

  while (v92);
  v93 = *(a1 + 101848) + 8;
  v94 = 63;
  do
  {
    *(v93 - 8) = -1;
    *(v93 - 4) = 0xFFFFFFFFLL;
    v93 += 12;
    --v94;
  }

  while (v94);
  v95 = *(a1 + 102288) + 8;
  v96 = 36;
  do
  {
    *(v95 - 8) = -1;
    *(v95 - 4) = 0xFFFFFFFFLL;
    v95 += 12;
    --v96;
  }

  while (v96);
  v97 = *(a1 + 102472) + 8;
  v98 = 14;
  do
  {
    *(v97 - 8) = -1;
    *(v97 - 4) = 0xFFFFFFFFLL;
    v97 += 12;
    --v98;
  }

  while (v98);
  if (v138 == 0)
  {
    GlCustomLog(14, "LTO error in initialization\n");
    v99 = 65;
  }

  else
  {
    v99 = 0;
  }

  *(a1 + 8) = v99;
  v100 = -4608;
  v101 = 16040;
  do
  {
    *(a1 + v100 + 16040) = 255;
    *(a1 + v101) = -1;
    v101 += 36;
    v100 += 144;
  }

  while (v100);
  v102 = 18408;
  do
  {
    *(a1 + v102) = 255;
    *(a1 + 21866 + v100) = 0;
    *v42 = -1;
    v42 += 88;
    v100 += 32;
    v102 += 144;
  }

  while (v100 != 768);
  for (jj = 0; jj != 360; jj += 36)
  {
    *(v24 + 4 * jj - 1440) = 255;
    v104 = v24 + jj;
    *(v104 + 32) = 0;
    *v104 = 0uLL;
    *(v104 + 16) = 0uLL;
    *v104 = -1;
  }

  for (kk = 0; kk != 2268; kk += 36)
  {
    *(v25 + kk) = 255;
    *(v26 + kk) = -1;
  }

  v106 = 0;
  v107 = 40388;
  do
  {
    *(a1 + v107) = 255;
    *(v122 + v106) = -1;
    v106 += 24;
    v107 += 144;
  }

  while (v106 != 864);
  *v131 = 0;
  v131[1] = 0;
  *(v131 + 14) = 0;
  v108 = xmmword_298A319C0;
  v109 = xmmword_298A319D0;
  v110 = (v120 + 188);
  v111 = 20;
  v112 = vdupq_n_s64(0x13uLL);
  v113 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v112, v109)), *v108.i8).u8[0])
    {
      *(v110 - 168) = -1;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v109)), *&v108).i8[2])
    {
      *(v110 - 112) = -1;
    }

    if (vuzp1_s16(*&v108, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v108))).i32[1])
    {
      *(v110 - 56) = -1;
      *v110 = -1;
    }

    v108 = vaddq_s64(v108, v113);
    v109 = vaddq_s64(v109, v113);
    v110 += 224;
    v111 -= 4;
  }

  while (v111);
  *(a1 + 9844) = a4;
  *(a1 + 9848) = -1;
  v114 = xmmword_298A319D0;
  v115 = (v120 + 1304);
  v116 = vdupq_n_s64(2uLL);
  v117 = 14;
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xEuLL), v114)).u8[0])
    {
      *(v115 - 36) = 255;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xEuLL), *&v114)).i32[1])
    {
      *v115 = 255;
    }

    v114 = vaddq_s64(v114, v116);
    v115 += 72;
    v117 -= 2;
  }

  while (v117);
  *(a1 + 100512) = 0u;
  *(a1 + 100528) = 0u;
  *(a1 + 100480) = 0u;
  *(a1 + 100496) = 0u;
  *v132 = 0u;
  *(v132 + 16) = 0u;
  *(v132 + 32) = 0u;
  *(v132 + 48) = 0;
  *(a1 + 102480) = 0u;
  *(a1 + 102496) = 0u;
  *(a1 + 102512) = 0u;
  *(a1 + 102528) = 0;
  return a1;
}

uint64_t BlueFin::GlPeLtoMgr::UpdateL1CaIsc(uint64_t result, unsigned __int8 *a2, unsigned __int8 a3, int a4)
{
  v20[2] = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v5 = a2;
    v6 = result;
    v7 = result + 22836;
    if (a4)
    {
      v8 = 1;
    }

    else
    {
      v8 = 32;
    }

    v9 = off_2A1F10790;
    do
    {
      if (*v5 <= 0x1Fu)
      {
        v15 = &unk_2A1F10778;
        v16 = 2;
        v19 = 0;
        v20[0] = 0;
        *&v18[3] = 0;
        *(v20 + 5) = 0;
        *v18 = *v5;
        v17 = a3;
        v10 = v18[0];
        v11 = *&v18[2];
        if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
        {
          result = v9(&v15, 0);
          v10 = *v5;
          v11 = *(v5 + 1);
        }

        if (v10 <= 0x1F)
        {
          v12 = (*(v6 + 80) + 6 * v10 + 7168);
          if (*v12 == 255 || (a3 & 1) != 0 || (*(*(v6 + 80) + 6 * v10 + 7172) & 1) == 0)
          {
            *v12 = v10;
            *(v12 + 1) = v11;
            v12[4] = a3;
            v12[5] = 0;
          }
        }

        if ((a3 & 1) == 0)
        {
          v13 = *v5;
          if (v13 <= 0x3E)
          {
            v14 = v7 + 4 * v13;
            *(v6 + 26464) |= 0x40000u;
            if (v5 != v14)
            {
              *v14 = v13;
              *(v14 + 2) = *(v5 + 1);
            }
          }
        }
      }

      v5 += 4;
      --v8;
    }

    while (v8);
  }

  return result;
}

double BlueFin::GlPeGalTimeMgr::GetGal2UtcSysOffsetS(BlueFin::GlPeGalTimeMgr *this, const BlueFin::GlGalTime *a2, int8x16_t a3, int8x16_t a4)
{
  if (!*(this + 6))
  {
    return 0.0;
  }

  *a3.i64 = *(this + 10);
  v6 = *a3.i64 * -9.31322575e-10;
  if (a2 && *(this + 9))
  {
    a3.i8[0] = *(this + 44);
    *a3.i64 = a3.u64[0] * 3600.0;
    *a4.i64 = *a3.i64 - trunc(*a3.i64);
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    a4.i64[0] = vbslq_s8(vnegq_f64(v7), a4, a3).i64[0];
    if (*a4.i64 < 0.0 || *a4.i64 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v9 = *a4.i64 * 4294967300.0 + 0.5;
    v10 = v9;
    if (v9 >= 4294967300.0)
    {
      v10 = -1;
    }

    v11 = *a3.i64 + 604800 * *(this + 45);
    v25 = v10;
    v26 = v11;
    v12 = (*(*a2 + 32))(a2);
    v24[0] = *(a2 + 2);
    v24[1] = v12;
    BlueFin::GlTimePoint::resolveAmbiguity(&v25, v24, 0x93A8000u);
    v13 = (*(*a2 + 24))(a2, v26);
    v14 = *(a2 + 2);
    v15 = *(a2 + 3);
    v16 = v13 | v25;
    if (v13 | v25)
    {
      v17 = v15 - v13;
      if (__PAIR64__(v15, v14) < __PAIR64__(v13, v25))
      {
        v20 = v13 - v15;
        v18 = v25 >= v14;
        v14 = v25 - v14;
        v21 = !v18;
        v15 = v20 - v21;
        v16 = 1;
      }

      else
      {
        v16 = 0;
        v18 = v14 >= v25;
        v14 -= v25;
        v19 = !v18;
        v15 = v17 - v19;
      }
    }

    v22 = v14 * 2.32830644e-10 + v15;
    if ((v16 & ((v15 | v14) != 0)) != 0)
    {
      v22 = -v22;
    }

    return v6 + *(this + 9) * -8.8817842e-16 * v22;
  }

  return v6;
}

uint64_t BlueFin::GlPeGalAltNavData::IsBetterThan(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == 255)
  {
    goto LABEL_14;
  }

  if (*a2 != 255)
  {
    v2 = *(a2 + 13);
    v3 = *(a1 + 13);
    v4 = v2 > v3 || v2 == v3 && *(a2 + 10) > *(a1 + 10);
    if (v2 == v3)
    {
      v5 = *(a2 + 10) != *(a1 + 10);
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v5 = 1;
      if (!v4)
      {
LABEL_10:
        if ((a1[28] & 1) == 0)
        {
          v6 = a2[28] ^ 1 | v5;
          return v6 & 1;
        }

        goto LABEL_11;
      }
    }

    if ((a2[28] & 1) == 0)
    {
      v6 = a1[28];
      return v6 & 1;
    }

LABEL_14:
    v6 = 0;
    return v6 & 1;
  }

LABEL_11:
  v6 = 1;
  return v6 & 1;
}

uint64_t BlueFin::GlPeLtoMgr::UpdateQzsL1CaIsc(uint64_t result, unsigned __int8 *a2, char a3, int a4)
{
  v20[2] = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v5 = a2;
    v6 = result;
    v7 = result + 23284;
    if (a4)
    {
      v8 = 1;
    }

    else
    {
      v8 = 10;
    }

    v9 = off_2A1F10790;
    do
    {
      if (*v5 <= 9u)
      {
        v15 = &unk_2A1F10778;
        v16 = 4;
        v19 = 0;
        v20[0] = 0;
        *&v18[3] = 0;
        *(v20 + 5) = 0;
        *v18 = *v5;
        v17 = a3;
        v10 = v18[0];
        v11 = *&v18[2];
        if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
        {
          result = v9(&v15, 0);
          v10 = *v5;
          v11 = *(v5 + 1);
        }

        if (v10 <= 9)
        {
          v12 = *(*(v6 + 80) + 7376) + 6 * v10;
          if (*(v12 + 2432) == 255 || (a3 & 1) != 0 || (*(v12 + 2436) & 1) == 0)
          {
            *(v12 + 2432) = v10;
            *(v12 + 2434) = v11;
            *(v12 + 2436) = a3;
            *(v12 + 2437) = 1;
          }
        }

        if ((a3 & 1) == 0)
        {
          v13 = *v5;
          if (v13 <= 0x3E)
          {
            v14 = v7 + 4 * v13;
            *(v6 + 26464) |= 0x200000u;
            if (v5 != v14)
            {
              *v14 = v13;
              *(v14 + 2) = *(v5 + 1);
            }
          }
        }
      }

      v5 += 4;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t BlueFin::GlSettingsImpl::UpdateLtOcbeeQaData(uint64_t this, unsigned int a2)
{
  v2 = this;
  v3 = *(this + 872);
  if (*(this + 856))
  {
    if (*v3)
    {
      return this;
    }

    srand(a2);
    v4 = &BlueFin::GlSettingsImpl::UpdateLtOcbeeQaData::astSvIdPairs + 4 * (rand() / 2147483650.0 * 6.0);
    v5 = *(v2 + 872);
    *v5 = *v4;
    v5[1] = v4[2];
    v6 = (rand() / 2147483650.0 * 3.0);
    this = rand();
    v7 = &BlueFin::GlSettingsImpl::UpdateLtOcbeeQaData::astErrRangeIn100M[2 * v6];
    LOWORD(v8) = v7[1];
    v9.i16[0] = *v7;
    *v10.i64 = (v9.u64[0] + this / 2147483650.0 * v8) * 100.0;
    *v11.i64 = *v10.i64 + trunc(*v10.i64 * 2.32830644e-10) * -4294967300.0;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v13 = vnegq_f64(v12);
    *&v14 = vbslq_s8(v13, v11, v10).u64[0];
    if (*v10.i64 > 4294967300.0)
    {
      *v10.i64 = v14;
    }

    if (*v10.i64 < -4294967300.0)
    {
      *v9.i64 = -*v10.i64;
      *v10.i64 = -(*v10.i64 - trunc(*v10.i64 * -2.32830644e-10) * -4294967300.0);
      *v10.i64 = -*vbslq_s8(v13, v10, v9).i64;
    }

    if (*v10.i64 < 0.0)
    {
      v15 = --*v10.i64;
    }

    else
    {
      v15 = *v10.i64;
    }
  }

  else
  {
    v15 = 0;
    *v3 = 0;
  }

  *(v2 + 880) = v15;
  return this;
}

uint64_t BlueFin::GlPosEng::SendNvMem2MicroNav(uint64_t this, int8x16_t a2, int8x16_t a3, double a4, int8x16_t a5, int8x16_t a6, int8x16_t a7)
{
  if (*(this + 48))
  {
    v7 = this;
    if (*(this + 324) != -1)
    {
      v8 = *(this + 280);
      v9 = *(this + 288);
      v10 = *(this + 162);
      v11 = *(this + 296);
      v12 = *(this + 304);
      v13 = *(this + 170);
      if (BlueFin::GlUtils::m_ucEnabled)
      {
        BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
      }

      v14 = v13;
      v15 = v10 * 0.000000001;
      if (*(v7 + 123792))
      {
        BlueFin::GlPeTimeManager::GetTime((v7 + 121216), 1, v30);
        v31 = &off_2A1F0B5F0;
        v32 = 0;
        Gps = BlueFin::GlPeGnssTime::GetGps(v30, &v31);
        v17 = (v31[4])(&v31, Gps) / 0x93A80uLL;
        a2 = (v31[4])(&v31);
        LODWORD(v20) = v32;
        *a2.i64 = (v20 * 2.32830644e-10 + (v19 % 0x93A80)) * 1000.0;
        *v21.i64 = *a2.i64 + trunc(*a2.i64 * 2.32830644e-10) * -4294967300.0;
        v22.f64[0] = NAN;
        v22.f64[1] = NAN;
        a3 = vnegq_f64(v22);
        a5 = vbslq_s8(a3, v21, a2);
        if (*a2.i64 > 4294967300.0)
        {
          a2.i64[0] = a5.i64[0];
        }

        if (*a2.i64 < -4294967300.0)
        {
          *v18.i64 = -*a2.i64;
          *a2.i64 = -(*a2.i64 - trunc(*a2.i64 * -2.32830644e-10) * -4294967300.0);
          a2 = vbslq_s8(a3, a2, v18);
          *a2.i64 = -*a2.i64;
        }

        if (*a2.i64 < 0.0)
        {
          v23 = --*a2.i64;
        }

        else
        {
          v23 = *a2.i64;
        }
      }

      else
      {
        v23 = 0;
        v17 = 0;
      }

      *a5.i64 = v15 * 1000000000.0;
      *a7.i64 = v15 * 1000000000.0 + trunc(v15 * 1000000000.0 * 2.32830644e-10) * -4294967300.0;
      v24.f64[0] = NAN;
      v24.f64[1] = NAN;
      v25 = vnegq_f64(v24);
      a7.i64[0] = vbslq_s8(v25, a7, a5).u64[0];
      if (v15 * 1000000000.0 > 4294967300.0)
      {
        a5.i64[0] = a7.i64[0];
      }

      if (*a5.i64 < -4294967300.0)
      {
        *a6.i64 = -*a5.i64;
        *a5.i64 = -(*a5.i64 - trunc(*a5.i64 * -2.32830644e-10) * -4294967300.0);
        *a5.i64 = -*vbslq_s8(v25, a5, a6).i64;
      }

      if (*a5.i64 < 0.0)
      {
        v26 = --*a5.i64;
      }

      else
      {
        v26 = *a5.i64;
      }

      *a2.i64 = v14 * 0.000000001 * 1000000000.0;
      *a3.i64 = *a2.i64 + trunc(*a2.i64 * 2.32830644e-10) * -4294967300.0;
      v27 = vbslq_s8(v25, a3, a2);
      if (*a2.i64 > 4294967300.0)
      {
        a2.i64[0] = v27.i64[0];
      }

      if (*a2.i64 < -4294967300.0)
      {
        *v27.i64 = -*a2.i64;
        *a2.i64 = -(*a2.i64 - trunc(*a2.i64 * -2.32830644e-10) * -4294967300.0);
        v28.f64[0] = NAN;
        v28.f64[1] = NAN;
        *a2.i64 = -*vbslq_s8(vnegq_f64(v28), a2, v27).i64;
      }

      if (*a2.i64 < 0.0)
      {
        v29 = --*a2.i64;
      }

      else
      {
        LOWORD(v29) = *a2.i64;
      }

      return (*(**(v7 + 48) + 40))(*(v7 + 48), v26, v29, v17, v23, v8, v9, v11, v12);
    }
  }

  return this;
}

BOOL BlueFin::GlPeAlmMgr::IsAlmInitialized(BlueFin::GlPeAlmMgr *this)
{
  v1 = 0;
  v2 = 1;
  do
  {
    v3 = *(this + 54) + 48 * v1;
    v6 = *(v3 + 24);
    v4 = v3 + 24;
    v5 = v6;
    if (*v6)
    {
      break;
    }

    v7 = *(v4 + 8);
    if (v7 >= 2)
    {
      v8 = v7 - 1;
      v9 = v5 + 1;
      do
      {
        if (*v9++)
        {
          return v2;
        }
      }

      while (--v8);
    }

    v2 = v1++ < 6;
  }

  while (v1 != 7);
  return v2;
}

uint64_t BlueFin::GlPeLtoFileContentStorageMgr::UpdateLtoToStore(uint64_t result, int a2, char *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v9 = 26;
  v10[4] = 27;
  if (a2)
  {
    if (a2 != 4)
    {
      return result;
    }

    v3 = v10;
    v4 = 63;
    v5 = 24732;
  }

  else
  {
    v3 = &v8;
    v4 = 32;
    v5 = 24700;
  }

  v6 = (result + v5);
  do
  {
    v7 = *a3++;
    *v6++ = v7;
    --v4;
  }

  while (v4);
  *(result + 24816) |= 1 << *(v3 + 8);
  return result;
}

uint64_t BlueFin::GlSettingsImpl::SetGpsSignalType(uint64_t this, const unsigned __int8 *a2, int a3)
{
  if (a3 != 32)
  {
    DeviceFaultNotify("glsettings.cpp", 1156, "SetGpsSignalType", "ucNumPrns == NUM_GPS_PRNS");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsettings.cpp", 1156, "ucNumPrns == NUM_GPS_PRNS");
  }

  v3 = 0;
  *(this + 924) = 1;
  do
  {
    *(this + 1008 + v3) = a2[v3];
    ++v3;
  }

  while (v3 != 32);
  return this;
}

const char *BlueFin::GlGnss::GetAbbrevGnssName(unsigned int a1)
{
  if (a1 > 6)
  {
    return "INV";
  }

  else
  {
    return off_29EEAC1B0[a1];
  }
}

uint64_t BlueFin::GlPeBdsAltNavData::IsBetterThan(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == 255)
  {
    goto LABEL_14;
  }

  if (*a2 != 255)
  {
    v2 = *(a2 + 7);
    v3 = *(a1 + 7);
    v4 = v2 > v3 || v2 == v3 && *(a2 + 4) > *(a1 + 4);
    if (v2 == v3)
    {
      v5 = *(a2 + 4) != *(a1 + 4);
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v5 = 1;
      if (!v4)
      {
LABEL_10:
        if ((a1[16] & 1) == 0)
        {
          v6 = a2[16] ^ 1 | v5;
          return v6 & 1;
        }

        goto LABEL_11;
      }
    }

    if ((a2[16] & 1) == 0)
    {
      v6 = a1[16];
      return v6 & 1;
    }

LABEL_14:
    v6 = 0;
    return v6 & 1;
  }

LABEL_11:
  v6 = 1;
  return v6 & 1;
}

uint64_t BlueFin::GlPeIonoModel::operator!=(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) == *(a2 + 56) && *(a1 + 60) == *(a2 + 60))
  {
    v2 = 40;
    v3 = 8;
    while (*(a1 + v3) == *(a2 + v3) && *(a1 + v2) == *(a2 + v2))
    {
      v2 += 4;
      v3 += 8;
      if (v3 == 40)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t BlueFin::GlPeGpsTimeMgr::updateModelIfBetter(int8x16_t *this, int8x16_t *a2, const BlueFin::GlGpsTime *a3, double a4, int8x16_t a5)
{
  v35 = &unk_2A1F185A8;
  v6 = a2->i32[2];
  v36 = v6;
  v37 = a2->i8[12];
  v7 = a2[1].u32[3];
  LODWORD(v39) = a2[1].i32[2];
  HIDWORD(v39) = v7;
  v38 = &off_2A1F0B5F0;
  v8 = a2[2];
  v40 = v8;
  if (v7 < 0x93A80)
  {
    if (a3)
    {
      v39 = *(a3 + 1);
    }

    else
    {
      v9 = this[7].i16[1];
      if (v9)
      {
        v10 = v9 - v40.u8[9];
        if (v10 >= 0)
        {
          v11 = v9 - v40.u8[9];
        }

        else
        {
          v11 = v40.u8[9] - v9;
        }

        v12 = v10 + 256;
        if (v10 >= -127)
        {
          v12 = v9 - v40.u8[9];
        }

        if (v10 >= 128)
        {
          v12 = v10 - 256;
        }

        v13 = v40.u8[8] << 12;
        *v8.i64 = v13;
        if (v11 == 128)
        {
          v14 = 0;
        }

        else
        {
          v14 = v12;
        }

        *a5.i64 = *v8.i64 - trunc(*v8.i64);
        v15.f64[0] = NAN;
        v15.f64[1] = NAN;
        v16 = *vbslq_s8(vnegq_f64(v15), a5, v8).i64;
        if (v16 >= 1.0)
        {
          DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
        }

        v17 = v14 + v9;
        v18 = v16 * 4294967300.0 + 0.5;
        v19 = v18;
        if (v18 >= 4294967300.0)
        {
          v19 = -1;
        }

        LODWORD(v39) = v19;
        HIDWORD(v39) = v13 + 604800 * v17;
      }
    }
  }

  v20 = this[4].i32[2];
  if (!v20 || (this[4].i8[12] & 1) != 0 || v6 < v20)
  {
    goto LABEL_56;
  }

  if (v6 != v20 || v40.i64[0] == this[6].i64[0] && v40.u8[10] == this[6].u8[10] && __PAIR64__(v40.u8[9], v40.u8[8]) == __PAIR64__(this[6].u8[9], this[6].u8[8]) && __PAIR64__(v40.u8[12], v40.u8[11]) == __PAIR64__(this[6].u8[12], this[6].u8[11]) && v40.u8[13] == this[6].u8[13])
  {
    return 0;
  }

  v21 = (*(this[5].i64[0] + 32))(this + 5);
  v22 = (v38[4])(&v38);
  if (v21 < 0x93A80 && v22 < 0x93A80)
  {
    goto LABEL_56;
  }

  if (v21 >= 0x93A80)
  {
    v24 = v21;
  }

  else
  {
    v24 = v22;
  }

  v25 = (v24 / 0x93A80);
  v26 = v25 - v40.u8[9];
  if (v26 >= 0)
  {
    v27 = v25 - v40.u8[9];
  }

  else
  {
    v27 = v40.u8[9] - v25;
  }

  v28 = v26 + 256;
  if (v26 >= -127)
  {
    v28 = v25 - v40.u8[9];
  }

  if (v26 >= 128)
  {
    v29 = v26 - 256;
  }

  else
  {
    v29 = v28;
  }

  if (v27 == 128)
  {
    v29 = 0;
  }

  v30 = v25 - this[6].u8[9];
  v31 = v30 >= 0 ? v30 : -v30;
  if (v31 == 128)
  {
    LOWORD(v30) = 0;
  }

  else if (v30 < 128)
  {
    if (v30 < -127)
    {
      LOWORD(v30) = v30 + 256;
    }
  }

  else
  {
    LOWORD(v30) = v30 - 256;
  }

  if ((v40.u8[8] << 12) + 604800 * v29 <= 604800 * v30 + (this[6].u8[8] << 12))
  {
    return 0;
  }

LABEL_56:
  if (&this[4] == &v35)
  {
    v32 = this[4].i8[12];
  }

  else
  {
    this[4].i32[2] = v36;
    v32 = v37;
    this[4].i8[12] = v37;
    this[5].i64[1] = v39;
    this[6] = v40;
  }

  v33 = 1;
  this[7].i8[0] = 1;
  if ((v32 & 1) == 0)
  {
    if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      (*(this[4].i64[0] + 24))(this + 4, 0, 0);
    }

    return 1;
  }

  return v33;
}
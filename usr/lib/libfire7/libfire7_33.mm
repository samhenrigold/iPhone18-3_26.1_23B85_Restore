BOOL BlueFin::GlPePrawnKf::GetQbv(BlueFin::GlPePrawnKf *this, BlueFin::QuaternionD *a2)
{
  *a2 = *(this + 301);
  *(a2 + 1) = *(this + 302);
  return *(this + 2) == 2 && (*(this + 5818) & 1) == 0 && (*(*(this + 653) + 8) - 3) < 4;
}

BOOL BlueFin::GlPePrawnKf::GetAccBias(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 4608);
  *(a2 + 16) = *(a1 + 4624);
  return *(a1 + 8) == 2 && (*(a1 + 5818) & 1) == 0 && (*(*(a1 + 5224) + 8) - 3) < 4;
}

unsigned __int8 *BlueFin::GlPeNavGnssMeasMgr::RemoveRrMeas(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v13 = *(v4 + 192);
  memcpy(v17, *(v4 + 184), 4 * v13);
  v15 = 0;
  v14 = 0;
  v16 = v17[0];
  for (result = BlueFin::GlSetIterator::operator++(&v13); v14 != v13; result = BlueFin::GlSetIterator::operator++(&v13))
  {
    if (v15 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v6 = *(a1 + 8);
    v7 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v15;
    v8 = *v7;
    LODWORD(v7) = v7[1];
    v10[0] = v8;
    v11 = v7;
    v12 = v15;
    v9 = BlueFin::GlPeMsmtMgr::AccessPeMeas(v6, v10, 0);
    if (BlueFin::stPeSigMeasKF::IsRRValid(v9))
    {
      *(v9 + 96) |= 0x40u;
      *(v9 + 129) = a2;
    }
  }

  return result;
}

unsigned __int8 *BlueFin::GlPeNavGnssMeasMgr::RemovePrMeas(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v13 = *(v4 + 192);
  memcpy(v17, *(v4 + 184), 4 * v13);
  v15 = 0;
  v14 = 0;
  v16 = v17[0];
  for (result = BlueFin::GlSetIterator::operator++(&v13); v14 != v13; result = BlueFin::GlSetIterator::operator++(&v13))
  {
    if (v15 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v6 = *(a1 + 8);
    v7 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v15;
    v8 = *v7;
    LODWORD(v7) = v7[1];
    v10[0] = v8;
    v11 = v7;
    v12 = v15;
    v9 = BlueFin::GlPeMsmtMgr::AccessPeMeas(v6, v10, 0);
    if (BlueFin::stPeSigMeasKF::IsPRValid(v9))
    {
      *(v9 + 96) |= 8u;
      *(v9 + 128) = a2;
    }
  }

  return result;
}

unsigned __int8 *BlueFin::GlPeNavGnssMeasMgr::RenewMeas@<X0>(uint64_t *__return_ptr a1@<X8>, BlueFin::GlPeNavGnssMeasMgr *this@<X0>, const BlueFin::GlSignalIdSet *a3@<X1>, int a4@<W2>)
{
  *(a1 + 12) = 0u;
  *a1 = a1 + 12;
  *(a1 + 8) = 19;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 9) = 0u;
  v8 = *(this + 1);
  v18 = *(v8 + 192);
  memcpy(v22, *(v8 + 184), 4 * v18);
  v20 = 0;
  v19 = 0;
  v21 = v22[0];
  result = BlueFin::GlSetIterator::operator++(&v18);
  if (v19 != v18)
  {
    while (1)
    {
      if (v20 >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v10 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v20;
      v11 = *v10;
      LODWORD(v10) = v10[1];
      v15[0] = v11;
      v16 = v10;
      v17 = v20;
      v12 = BlueFin::GlPeMsmtMgr::AccessPeMeas(*(this + 1), v15, 0);
      if (!BlueFin::stPeSigMeasKF::IsPRValid(v12))
      {
        goto LABEL_8;
      }

      v13 = v17 >> 5;
      if (a4)
      {
        break;
      }

      v14 = v17 & 0x1F;
      if ((*(*a3 + 4 * v13) >> (v17 & 0x1F)))
      {
        goto LABEL_7;
      }

LABEL_8:
      if (BlueFin::stPeSigMeasKF::IsRRValid(v12))
      {
        *(v12 + 24) &= ~0x40u;
      }

      result = BlueFin::GlSetIterator::operator++(&v18);
      if (v19 == v18)
      {
        return result;
      }
    }

    v14 = v17 & 0x1F;
LABEL_7:
    *(v12 + 24) = *(v12 + 24) & 0xFFFFFFF3 | 4;
    *(*a1 + 4 * v13) |= 1 << v14;
    goto LABEL_8;
  }

  return result;
}

unsigned __int8 *BlueFin::GlPeNavGnssMeasMgr::CheckMissingBits(unsigned __int8 *this, char a2, signed __int8 *a3, signed __int8 *a4)
{
  if (this[2212] == 1 && (a2 & 1) != 0)
  {
    v6 = this;
    v7 = *(this + 1);
    v17 = *(v7 + 192);
    memcpy(v21, *(v7 + 184), 4 * v17);
    v19 = 0;
    v18 = 0;
    v20 = v21[0];
    this = BlueFin::GlSetIterator::operator++(&v17);
    if (v18 == v17)
    {
      LOBYTE(v8) = 0;
      v9 = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      do
      {
        if (v19 >= 0x23FuLL)
        {
          DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
        }

        v10 = *(v6 + 1);
        v11 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v19;
        v12 = *v11;
        LODWORD(v11) = v11[1];
        v14[0] = v12;
        v15 = v11;
        v16 = v19;
        v13 = BlueFin::GlPeMsmtMgr::AccessPeMeas(v10, v14, 0);
        if (BlueFin::stPeSigMeasKF::IsPRValid(v13))
        {
          ++v9;
          if (*(v13 + 23) != -1)
          {
            if (v12 > 0x20u)
            {
              if (v12 > 0x33u)
              {
                ++v8;
              }
            }

            else
            {
              ++v8;
            }
          }
        }

        this = BlueFin::GlSetIterator::operator++(&v17);
      }

      while (v18 != v17);
      if (v6[2212] == 1 && v8 <= 2 && v9 > 4)
      {
        v6[2212] = 0;
      }
    }

    if (a3)
    {
      *a3 = v8;
    }

    if (a4)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (a4)
    {
      v9 = 0;
LABEL_25:
      *a4 = v9;
    }
  }

  return this;
}

BOOL BlueFin::GlPeNavGnssMeasMgr::DopplerResidualCheck(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v116 = v4;
  v108 = v7;
  v110 = v8;
  v111 = v9;
  v114 = v10;
  v115 = v3;
  v11 = v6;
  v109 = v12;
  v112 = v13;
  v15 = v14;
  v16 = v2;
  v17 = 0;
  v167 = *MEMORY[0x29EDCA608];
  do
  {
    v18 = &v156[v17];
    *(v18 + 32) = 0;
    *(v18 + 9) = -1;
    *(v18 + 20) = 575;
    v17 += 7;
  }

  while (v17 != 84);
  v19 = 0;
  v139 = &v140[4];
  v140[0] = 19;
  memset(&v140[4], 0, 76);
  do
  {
    v20 = &v141 + v19;
    *v20 = 0;
    *(v20 + 1) = -1;
    *(v20 + 4) = 575;
    v19 += 12;
  }

  while (v19 != 1200);
  v135 = &v136[4];
  v136[0] = 19;
  memset(&v136[4], 0, 32);
  v137 = 0u;
  memset(v138, 0, sizeof(v138));
  v21 = *(v2 + 8);
  v22 = *v21;
  if (v6 > 3.0)
  {
    *(v2 + 2208) = v22;
  }

  v23 = v6 < 2.0 && *(v2 + 2208) + 3000 < v22;
  v113 = (v5 * 1000.0);
  v25 = (*(v3 + 8) - 1) < 2 || v22 < 0x493E0;
  v26 = 2.5;
  v27 = 0.0;
  if (v25 || v23)
  {
    v26 = 0.0;
  }

  v106 = v26;
  if (v4 && BlueFin::GlSetBase::Cnt((v21 + 23)))
  {
    v28 = *(v16 + 48);
    BlueFin::GlPeNavGnssState::GlPeNavGnssState(&v133[16]);
    v132 = &off_2A1F12F90;
    *v133 = v21;
    *v29 = &unk_2A1F12FC8;
    *&v133[8] = v28;
    v127 = &v128[4];
    v128[0] = 19;
    *&v128[4] = 0u;
    v129 = 0u;
    v130 = 0u;
    memset(v131, 0, sizeof(v131));
    v30 = *(v16 + 8);
    LOBYTE(v157) = *(v30 + 192);
    memcpy(&v158, *(v30 + 184), 4 * v157);
    WORD1(v157) = 0;
    BYTE1(v157) = 0;
    HIDWORD(v157) = v158;
    BlueFin::GlSetIterator::operator++(&v157);
    if (BYTE1(v157) != v157)
    {
      v31 = 0;
      v32 = 84;
      while (1)
      {
        v33 = *&v128[v32 - 8];
        if (v33)
        {
          v34 = v33 - (((v33 >> 2) & 0x9249249) + ((v33 >> 1) & 0x5B6DB6DB));
          v31 = ((v34 + (v34 >> 3)) & 0xC71C71C7) + v31 - 63 * (((v34 + (v34 >> 3)) & 0xC71C71C7) / 0x3F);
        }

        v35 = v32 > 0xF;
        v32 -= 4;
        if (!v35)
        {
          if ((v31 & 0xFFF0) != 0)
          {
            break;
          }

          if (WORD1(v157) >= 0x23Fu)
          {
            DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
          }

          *&v128[((WORD1(v157) >> 3) & 0x1FFC) + 4] |= 1 << SBYTE2(v157);
          BlueFin::GlSetIterator::operator++(&v157);
          v31 = 0;
          v32 = 84;
          if (BYTE1(v157) == v157)
          {
            break;
          }
        }
      }
    }

    *__src = *v114;
    *&__src[4] = *(v114 + 2);
    BlueFin::GlPeNavUtil::ComputeRrateResidVec(&v132, &v127);
    BlueFin::SKFVector::SortAscen(&v157);
    v36 = 0;
    v37 = &v127[4 * v128[0] - 4];
    do
    {
      if (*v37)
      {
        v38 = *v37 - (((*v37 >> 2) & 0x9249249) + ((*v37 >> 1) & 0x5B6DB6DB));
        v36 = ((v38 + (v38 >> 3)) & 0xC71C71C7) + v36 - 63 * (((v38 + (v38 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      v37 -= 4;
    }

    while (v37 >= v127);
    v27 = v157[v36 >> 1];
    v21 = *(v16 + 8);
  }

  __src[0] = *(v21 + 192);
  memcpy(&__src[2], v21[23], 4 * LOBYTE(__src[0]));
  __src[1] = __src[2];
  BlueFin::GlSetIterator::operator++(__src);
  v39 = &BlueFin::GlUtlCrc::ucCrcTable[77];
  if (BYTE1(__src[0]) == LOBYTE(__src[0]))
  {
    v40 = 0;
    LOBYTE(v157) = 0;
    goto LABEL_94;
  }

  v40 = 0;
  v107 = 0;
  v41 = v15;
  do
  {
    if (HIWORD(__src[0]) >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v42 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * HIWORD(__src[0]);
    v43 = *v42;
    LODWORD(v42) = v42[1];
    v124[0] = v43;
    v125 = v42;
    v126 = HIWORD(__src[0]);
    PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*(v16 + 8), v124, 0);
    v45 = PeMeas;
    v46 = v124[0];
    if (v124[0] > 0x33u)
    {
      if (!((v46 > 0x41) | BlueFin::stPeSigMeasKF::IsPRValid(PeMeas)))
      {
        BlueFin::stPeSigMeasKF::IsRRValid(v45);
        BlueFin::stPeSigMeasKF::IsRRValid(v45);
        goto LABEL_85;
      }
    }

    else
    {
      BlueFin::stPeSigMeasKF::IsPRValid(PeMeas);
    }

    if (BlueFin::stPeSigMeasKF::IsRRValid(v45) && ((*&v139[4 * (v126 >> 5)] >> (v126 & 0x1F)) & 1) == 0)
    {
      MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*(v16 + 8), v124, 0, 0);
      v49 = MeMeas;
      if (MeMeas)
      {
        v50 = &v141 + 12 * v40;
        if (v50 != v124)
        {
          *v50 = v124[0];
          *(v50 + 1) = v125;
          *(v50 + 4) = v126;
        }

        if (v111)
        {
          v127 = &v128[4];
          v128[0] = 19;
          *&v128[4] = 0u;
          v129 = 0u;
          v130 = 0u;
          memset(v131, 0, sizeof(v131));
          *&v128[4 * (*(MeMeas + 4) >> 5) + 4] |= 1 << *(MeMeas + 4);
          v51 = *(v16 + 8);
          v52 = *(v16 + 48);
          BlueFin::GlPeNavGnssState::GlPeNavGnssState(&v133[16]);
          v132 = &off_2A1F12F90;
          *v133 = v51;
          *&v133[8] = v52;
          *&v133[16] = &unk_2A1F12FC8;
          *v118 = *v114;
          *&v118[16] = *(v114 + 2);
          BlueFin::GlPeNavUtil::ComputeRrateResidVec(&v132, &v127);
          v53 = 0;
          v54 = &v127[4 * v128[0] - 4];
          do
          {
            if (*v54)
            {
              v55 = *v54 - (((*v54 >> 2) & 0x9249249) + ((*v54 >> 1) & 0x5B6DB6DB));
              v53 = ((v55 + (v55 >> 3)) & 0xC71C71C7) + v53 - 63 * (((v55 + (v55 >> 3)) & 0xC71C71C7) / 0x3F);
            }

            v54 -= 4;
          }

          while (v54 >= v127);
          v56 = -999.0;
          if (v53)
          {
            v56 = v157[1];
          }

          *&v164[v40] = v56;
          if (*(v49 + 5) > 2 || (v57 = 0.0, (*(v115 + 8) - 1) <= 4) && (IsPRValidForNav = BlueFin::stPeSigMeasKF::IsPRValidForNav(v45), v11 > 1.0) && ((*(v45 + 52) < 29) & ~IsPRValidForNav) != 0)
          {
            v57 = 2.0;
          }

          if (v116)
          {
LABEL_74:
            if (v56 == -999.0)
            {
              v67 = 30;
            }

            else
            {
              if (!v116 || vabdd_f64(v56, v27) < 1.5)
              {
                v135[v126 >> 5] |= 1 << v126;
                v66 = 15.0;
                if (*(v49 + 5) != 4)
                {
                  v66 = 0.0;
                }

                *&v161[v40++] = v66 + fabsf(*(v49 + 29) + -174.0);
                if (v40 == 100)
                {
                  LOBYTE(v157) = 0;
                  v40 = 100;
                  v15 = v41;
                  v39 = BlueFin::GlUtlCrc::ucCrcTable + 77;
                  if (v107 >= 0xCu)
                  {
                    goto LABEL_92;
                  }

LABEL_90:
                  v68 = v164;
                  goto LABEL_93;
                }

                goto LABEL_84;
              }

              v67 = 29;
            }

            *(v45 + 129) = v67;
LABEL_84:
            v15 = v41;
            goto LABEL_85;
          }

          if (v56 == -999.0)
          {
            v56 = -999.0;
            goto LABEL_74;
          }

          v56 = fabs(v56) + v57;
          *&v164[v40] = v56;
          v64 = v107;
          if (v56 < v106)
          {
            v64 = v107 + 1;
          }

          v107 = v64;
        }

        else
        {
          v58 = *(MeMeas + 29);
          v59 = v58 < 30.0 && *(MeMeas + 5) == 0;
          v60 = 100000.0;
          if (!v59)
          {
            v60 = 0.0;
          }

          v61 = v58 < 16.0;
          v62 = 1000000.0;
          if (!v61)
          {
            v62 = 0.0;
          }

          v56 = floor((v62 + v60 + *(MeMeas + 27) * 299792458.0) * 10000.0 + 0.5) * 0.0001;
          *&v164[v40] = v56;
        }

        v65 = v124[0] - 76;
        if (v65 <= 0x3E && ((1 << v65) & 0x7C0000000000001FLL) != 0)
        {
          v56 = v56 + v56;
          *&v164[v40] = v56;
        }

        goto LABEL_74;
      }
    }

LABEL_85:
    BlueFin::GlSetIterator::operator++(__src);
  }

  while (BYTE1(__src[0]) != LOBYTE(__src[0]));
  LOBYTE(v157) = 0;
  if (v107 < 0xCu)
  {
    v39 = BlueFin::GlUtlCrc::ucCrcTable + 77;
    if (v40 < 2u)
    {
      goto LABEL_94;
    }

    goto LABEL_90;
  }

  v39 = &BlueFin::GlUtlCrc::ucCrcTable[77];
LABEL_92:
  v68 = v161;
LABEL_93:
  BlueFin::GlSortDoubles(v68, v40, &v157, v48);
LABEL_94:
  v69 = *(v115 + 8);
  v127 = &v128[4];
  v128[0] = 19;
  *&v128[4] = 0u;
  v129 = 0u;
  v130 = 0u;
  memset(v131, 0, sizeof(v131));
  if (v40)
  {
    v117 = 0;
    v70 = v69 - 1;
    if (v40 >= 0xCu)
    {
      v71 = 12;
    }

    else
    {
      v71 = v40;
    }

    v72 = v156;
    v73 = &v157;
    v74 = *(v39 + 345);
    while (1)
    {
      v75 = *v73;
      v73 = (v73 + 1);
      v76 = (&v141 + 12 * v75);
      v77 = *(v16 + 8);
      if ((*(*(v77 + 8) + 4 * (*(v76 + 4) >> 5)) >> (v76[1] & 0x1F)))
      {
        break;
      }

LABEL_117:
      if (!--v71)
      {
        goto LABEL_120;
      }
    }

    v78 = BlueFin::GlPeMsmtMgr::GetPeMeas(v77, v76, 0);
    *v72 = 0u;
    v72[3] = NAN;
    *(v72 + 49) = 0;
    *(v72 + 32) = 0;
    *(v72 + 9) = -1;
    *(v72 + 20) = 575;
    *(v72 + 11) = 2;
    v79 = *(v16 + 8);
    v80 = *v79;
    *(v72 + 4) = *v79;
    v81 = -7200001;
    if (v80 != -7200001)
    {
      v82 = *(v79 + 1);
      v83 = v80 - v82;
      if (v82 == -7200001)
      {
        v81 = -7200001;
      }

      else
      {
        v81 = v83;
      }
    }

    *(v72 + 5) = v81;
    if (v72 + 4 != v76)
    {
      *(v72 + 32) = *v76;
      *(v72 + 9) = *(v76 + 1);
      *(v72 + 20) = *(v76 + 4);
    }

    if (*v76 - 139 >= 0x24 && (v84 = *(v76 + 1), (v84 - 1) >= 2))
    {
      if (v70 <= 1 && v84 == 3)
      {
        goto LABEL_112;
      }

LABEL_114:
      *v72 = v78[15] * -299792458.0;
      v85 = v78[16];
    }

    else
    {
      if (v70 > 1)
      {
        goto LABEL_114;
      }

LABEL_112:
      v85 = v78[18];
      if (v85 >= 0.000000016)
      {
        goto LABEL_114;
      }

      *v72 = v78[17] * -299792458.0;
    }

    v72[1] = v85 * v74;
    *(v72 + 48) = 1;
    if ((*(v79[1] + (*(v76 + 4) >> 5)) >> (v76[1] & 0x1F)))
    {
      v86 = BlueFin::GlPeMsmtMgr::AccessPeMeas(v79, v76, 0);
      *&v127[4 * (*(v76 + 4) >> 5)] |= 1 << *(v76 + 4);
      *(v86 + 96) |= 0x40u;
      BlueFin::GlPeMsmtMgr::GetMeMeas(*(v16 + 8), v76, 0, 0);
      v72 += 7;
      ++v117;
    }

    goto LABEL_117;
  }

  v117 = 0;
LABEL_120:
  BlueFin::GlSetBase::GlSetBase(v118, &v118[12], 0x13u, &v127);
  v132 = &v133[4];
  v133[0] = 19;
  memset(&v133[4], 0, 76);
  BlueFin::GlSetBase::OperatorBinaryInversion(v118, &v132);
  BlueFin::GlSetBase::operator=(v118, &v132);
  v119 = *&v133[20];
  v120 = *&v133[36];
  v121[0] = *&v133[52];
  *(v121 + 12) = *&v133[64];
  *&v118[12] = *&v133[4];
  BlueFin::GlSignalIdSet::setSignalIdLimits(v118);
  BlueFin::GlSetBase::GlSetBase(__src, &__src[3], 0x13u, &v135);
  v132 = &v133[4];
  v133[0] = 19;
  memset(&v133[4], 0, 76);
  BlueFin::GlSetBase::OperatorBinaryAnd(__src, &v132, v118);
  BlueFin::GlSetBase::operator=(__src, &v132);
  *&__src[7] = *&v133[20];
  *&__src[11] = *&v133[36];
  v123[0] = *&v133[52];
  *(v123 + 12) = *&v133[64];
  *&__src[3] = *&v133[4];
  LOBYTE(v132) = __src[2];
  memcpy(v133, *__src, 4 * LOBYTE(__src[2]));
  WORD1(v132) = 0;
  BYTE1(v132) = 0;
  HIDWORD(v132) = *v133;
  BlueFin::GlSetIterator::operator++(&v132);
  while (BYTE1(v132) != v132)
  {
    if (WORD1(v132) >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v87 = *(v16 + 8);
    v88 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v132);
    v89 = *v88;
    LODWORD(v88) = v88[1];
    LOBYTE(__src[0]) = v89;
    __src[1] = v88;
    LOWORD(__src[2]) = WORD1(v132);
    v90 = BlueFin::GlSignalIdArray::Get(*(v87 + 18792), __src);
    if (v90)
    {
      *(v90 + 273) = 32;
    }

    BlueFin::GlSetIterator::operator++(&v132);
  }

  v91 = v117;
  if (v91 < 2)
  {
    return 0;
  }

  v118[0] = v117;
  v142 = 0;
  v141 = 0u;
  v145 = vdupq_n_s64(0x4079000000000000uLL);
  v147 = 0x6400000000;
  bzero(v148, 0x328uLL);
  v146 = v148;
  v148[102] = 0x6400000000;
  bzero(v149, 0x328uLL);
  v148[101] = v149;
  v149[204] = 0;
  v150 = v152;
  v151 = 8;
  memset(v152, 0, 32);
  v153 = xmmword_298A41DA0;
  v154 = vdup_n_s32(0x42C60000u);
  v155 = 1120272384;
  v143 = v112;
  v144 = v109;
  v92 = *(v16 + 8);
  v93 = *(v16 + 16);
  v149[202] = *v92;
  v157 = v159;
  v158 = 0xC00000000;
  memset(v159, 0, sizeof(v159));
  v160 = 0;
  if (v110)
  {
    v94 = 657555;
  }

  else
  {
    v94 = 657554;
  }

  v127 = v114;
  *v128 = v15;
  *&v128[8] = v113;
  v128[12] = 7;
  *&v128[16] = v94;
  v95 = *(v16 + 48);
  v96 = *(v16 + 64);
  v135 = v92;
  *v136 = v95;
  *&v136[8] = 0;
  *&v136[16] = v93 + 392;
  *&v136[24] = v96;
  if (BlueFin::GlPeLsq::rr2Vel(&v135, &v127))
  {
    v97 = v157;
    v98 = *(&v141 + 1);
    *(v157 + 2) = v141;
    *(v97 + 32) = v98;
  }

  v164[0] = v165;
  v164[1] = 0xC00000000;
  memset(v165, 0, sizeof(v165));
  v166 = 0;
  v161[0] = v162;
  v161[1] = 0xC00000000;
  memset(v162, 0, sizeof(v162));
  v163 = 0;
  if (v110)
  {
    v99 = 1217;
  }

  else
  {
    v99 = 1216;
  }

  if (!v108)
  {
    v99 &= 0x481u;
  }

  v132 = &v157;
  *v133 = v114;
  *&v133[8] = v15;
  *&v133[16] = v113;
  *&v133[24] = v99;
  memset(&v133[32], 0, 64);
  v134 = 0x4008000000000000;
  v139 = v164;
  *v140 = v161;
  memset(&v140[8], 0, 56);
  *__src = &__src[3];
  LOBYTE(__src[2]) = 4;
  *&__src[5] = 0;
  *&__src[3] = 0;
  BlueFin::GlSetBase::SetAllLower(__src, v117);
  if ((*(**(v16 + 48) + 16))(*(v16 + 48), &v132, &v139, v156, __src))
  {
    return 0;
  }

  v101 = v156;
  v102 = (v161[0] + 8);
  do
  {
    result = v91 == 0;
    if (!v91)
    {
      break;
    }

    v103 = *v102++;
    v104 = v103 - *(v161[0] + 8);
    v105 = *v101;
    v101 += 7;
    --v91;
  }

  while (vabdd_f64(v104, v105 - v156[0]) <= 20.0);
  return result;
}

unsigned __int8 *BlueFin::GlPeNavMeasSelect::SelectADR(BlueFin::GlPeNavMeasSelect *this, BlueFin::GlSignalIdSet *a2)
{
  BlueFin::GlSetBase::GlSetBase(v19, v20, 0x13u, a2);
  BlueFin::GlSignalIdSet::Print(a2, 0x6Fu);
  v14 = *(a2 + 8);
  memcpy(v18, *a2, 4 * v14);
  v16 = 0;
  v15 = 0;
  v17 = v18[0];
  BlueFin::GlSetIterator::operator++(&v14);
  while (v15 != v14)
  {
    v4 = v16;
    if (v16 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v5 = *(this + 3);
    v6 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v16;
    v7 = *v6;
    LODWORD(v6) = v6[1];
    v11[0] = v7;
    v12 = v6;
    v13 = v16;
    MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(v5, v11, 0, 0);
    if (MeMeas && (MeMeas[13] & 0x10) == 0)
    {
      BlueFin::GlSetBase::Remove(v19, v4);
    }

    BlueFin::GlSetIterator::operator++(&v14);
  }

  v9 = BlueFin::GlSetBase::operator=(a2, v19);
  *(a2 + 28) = v20[1];
  *(a2 + 44) = v20[2];
  *(a2 + 60) = *v21;
  *(a2 + 72) = *&v21[12];
  *(a2 + 12) = v20[0];
  return BlueFin::GlSignalIdSet::Print(v9, 0x6Fu);
}

unint64_t BlueFin::GlPeSubsetIterator::operator*(unint64_t a1, unint64_t a2)
{
  if (a2 > a1)
  {
    DeviceFaultNotify("glpe_navutil.cpp", 125, "operator*", "m_potReadPtr <= m_potWritePtr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navutil.cpp", 125, "m_potReadPtr <= m_potWritePtr");
  }

  return a2;
}

unint64_t BlueFin::GlPeSubsets::FindBestFitResidSubset(BlueFin::GlPeSubsets *this)
{
  BlueFin::GlPeSubsetIterator::GlPeSubsetIterator(&v4, this);
  if (v5 >= v4)
  {
    return 0;
  }

  v1 = 0;
  do
  {
    v2 = BlueFin::GlPeSubsetIterator::operator->(&v4);
    if (BlueFin::GlSetBase::Cnt((v2 + 24)) >= 5 && *(BlueFin::GlPeSubsetIterator::operator->(&v4) + 156) > 0.1)
    {
      if (!v1)
      {
        v1 = BlueFin::GlPeSubsetIterator::operator->(&v4);
      }

      if (*(BlueFin::GlPeSubsetIterator::operator->(&v4) + 156) < *(v1 + 156))
      {
        v1 = BlueFin::GlPeSubsetIterator::operator->(&v4);
      }
    }

    v5 += 168;
  }

  while (v5 < v4);
  return v1;
}

void BlueFin::GlPeSubsets::ComputeScatterWidthK(unint64_t *a1, int a2, uint64_t a3)
{
  v77 = 0uLL;
  v78 = 0.0;
  v79 = &v81;
  v80 = 19;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  memset(v84, 0, sizeof(v84));
  v85 = vdupq_n_s32(0x43C80000u);
  v86 = v85;
  v87 = 0;
  v66 = 0uLL;
  v67 = 0.0;
  v68 = &v70;
  v69 = 19;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  memset(v73, 0, sizeof(v73));
  v74 = v85;
  v75 = v85;
  v76 = 0;
  v54 = 0.0;
  v55 = 0.0;
  v56 = 0;
  v57 = &v59;
  v58 = 19;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  memset(v62, 0, sizeof(v62));
  v63 = v85;
  v64 = v85;
  v65 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  BlueFin::GlSetBase::operator=(a3 + 24, &v57);
  *(a3 + 52) = v60;
  *(a3 + 68) = v61;
  *(a3 + 84) = *v62;
  *(a3 + 36) = v59;
  v6 = *&v62[28];
  *(a3 + 96) = *&v62[12];
  *(a3 + 112) = v6;
  v7 = v64;
  *(a3 + 128) = v63;
  *(a3 + 144) = v7;
  *(a3 + 160) = v65;
  BlueFin::GlPeSubsetIterator::GlPeSubsetIterator(&v52, a1);
  v8 = BlueFin::GlPeSubsetIterator::operator->(&v52);
  if (v53 >= v52)
  {
LABEL_34:
    *(a3 + 128) = vdup_n_s32(0x457A0000u);
    *(a3 + 144) = 1165623296;
    v51 = 4000.0;
    goto LABEL_35;
  }

  v9 = 0;
  v10 = BlueFin::GlSetBase::Cnt((v8 + 24)) - a2;
  while (2)
  {
    v11 = v9;
    while (1)
    {
      if (a2)
      {
        v12 = BlueFin::GlPeSubsetIterator::operator->(&v52);
        if (v10 > BlueFin::GlSetBase::Cnt((v12 + 24)))
        {
          goto LABEL_8;
        }
      }

      if (v11)
      {
        break;
      }

      v13 = v53;
      BlueFin::GlPeSubsetIterator::operator*(v52, v53);
      v77 = *v13;
      v78 = *(v13 + 16);
      BlueFin::GlSetBase::operator=(&v79, v13 + 24);
      v81 = *(v13 + 36);
      v14 = *(v13 + 52);
      v15 = *(v13 + 68);
      v16 = *(v13 + 84);
      v17 = *(v13 + 112);
      *&v84[12] = *(v13 + 96);
      v83 = v15;
      *v84 = v16;
      v82 = v14;
      v18 = *(v13 + 128);
      v19 = *(v13 + 144);
      v87 = *(v13 + 160);
      v85 = v18;
      v86 = v19;
      *&v84[28] = v17;
      v20 = v53;
      BlueFin::GlPeSubsetIterator::operator*(v52, v53);
      v66 = *v20;
      v67 = *(v20 + 16);
      BlueFin::GlSetBase::operator=(&v68, v20 + 24);
      v70 = *(v20 + 36);
      v21 = *(v20 + 52);
      v22 = *(v20 + 68);
      v23 = *(v20 + 84);
      v24 = *(v20 + 112);
      *&v73[12] = *(v20 + 96);
      v72 = v22;
      *v73 = v23;
      v71 = v21;
      v25 = *(v20 + 128);
      v26 = *(v20 + 144);
      v76 = *(v20 + 160);
      v74 = v25;
      v75 = v26;
      *&v73[28] = v24;
      v11 = 1;
LABEL_8:
      v53 += 168;
      if (v53 >= v52)
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    v27 = *&v77;
    v28 = *BlueFin::GlPeSubsetIterator::operator->(&v52);
    if (v27 < v28)
    {
      v28 = v27;
    }

    *&v77 = v28;
    v29 = *(&v77 + 1);
    v30 = *(BlueFin::GlPeSubsetIterator::operator->(&v52) + 8);
    if (v29 < v30)
    {
      v30 = v29;
    }

    *(&v77 + 1) = v30;
    v31 = v78;
    v32 = *(BlueFin::GlPeSubsetIterator::operator->(&v52) + 16);
    if (v31 < v32)
    {
      v32 = v31;
    }

    v78 = v32;
    v33 = *&v84[40];
    v34 = *(BlueFin::GlPeSubsetIterator::operator->(&v52) + 124);
    if (v33 < v34)
    {
      v34 = v33;
    }

    *&v84[40] = v34;
    v35 = *&v84[36];
    v36 = *(BlueFin::GlPeSubsetIterator::operator->(&v52) + 120);
    if (v35 < v36)
    {
      v36 = v35;
    }

    *&v84[36] = v36;
    v37 = *&v66;
    v38 = *BlueFin::GlPeSubsetIterator::operator->(&v52);
    if (v38 < v37)
    {
      v38 = v37;
    }

    *&v66 = v38;
    v39 = *(&v66 + 1);
    v40 = *(BlueFin::GlPeSubsetIterator::operator->(&v52) + 8);
    if (v40 < v39)
    {
      v40 = v39;
    }

    *(&v66 + 1) = v40;
    v41 = v67;
    v42 = *(BlueFin::GlPeSubsetIterator::operator->(&v52) + 16);
    if (v42 < v41)
    {
      v42 = v41;
    }

    v67 = v42;
    v43 = *&v73[40];
    v44 = *(BlueFin::GlPeSubsetIterator::operator->(&v52) + 124);
    if (v44 < v43)
    {
      v44 = v43;
    }

    *&v73[40] = v44;
    v45 = *&v73[36];
    v46 = *(BlueFin::GlPeSubsetIterator::operator->(&v52) + 120);
    if (v46 < v45)
    {
      v46 = v45;
    }

    *&v73[36] = v46;
    v53 += 168;
    v9 = 1;
    if (v53 < v52)
    {
      continue;
    }

    break;
  }

LABEL_33:
  BlueFin::lla2ned(&v66, &v77, 0, &v54);
  v47 = sqrt(v55 * v55 + v54 * v54);
  v48 = v67 - v78;
  *(a3 + 128) = v47;
  *(a3 + 132) = v48;
  v49 = *&v73[36];
  v50 = *&v84[36];
  *(a3 + 144) = *&v73[40] - *&v84[40];
  v51 = v49 - v50;
LABEL_35:
  *(a3 + 148) = v51;
}

double BlueFin::GlPeSubsets::ComputeScatterWidthK(BlueFin::GlPeSubsets *this, int a2)
{
  v27 = 0.0;
  v28 = 0.0;
  v29 = 0;
  v24 = 0.0;
  v25 = 0.0;
  v26 = 0;
  BlueFin::GlPeSubsetIterator::GlPeSubsetIterator(&v22, this);
  v3 = BlueFin::GlPeSubsetIterator::operator->(&v22);
  v4 = 4000.0;
  if (v23 < v22)
  {
    v5 = 0;
    v6 = BlueFin::GlSetBase::Cnt((v3 + 24)) - a2;
    v7 = 0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0;
    v11 = 0.0;
    v12 = 0.0;
LABEL_3:
    v13 = v12;
    v14 = v5;
    do
    {
      if (!a2 || (v15 = BlueFin::GlPeSubsetIterator::operator->(&v22), v6 == BlueFin::GlSetBase::Cnt((v15 + 24))))
      {
        v16 = BlueFin::GlPeSubsetIterator::operator->(&v22);
        v12 = *v16;
        if (v14)
        {
          if (v13 < v12)
          {
            v12 = v13;
          }

          v18 = BlueFin::GlPeSubsetIterator::operator->(&v22);
          if (v11 >= *(v18 + 8))
          {
            v11 = *(v18 + 8);
          }

          v19 = BlueFin::GlPeSubsetIterator::operator->(&v22);
          if (*v19 >= v9)
          {
            v9 = *v19;
          }

          v20 = BlueFin::GlPeSubsetIterator::operator->(&v22);
          if (*(v20 + 8) >= v8)
          {
            v8 = *(v20 + 8);
          }

          v23 += 168;
          v5 = 1;
          if (v23 >= v22)
          {
            v27 = v12;
            v28 = v11;
            v29 = v10;
            v24 = v9;
            v25 = v8;
            v26 = v7;
            goto LABEL_21;
          }

          goto LABEL_3;
        }

        v11 = *(v16 + 8);
        v10 = *(v16 + 16);
        v17 = BlueFin::GlPeSubsetIterator::operator->(&v22);
        v9 = *v17;
        v8 = *(v17 + 8);
        v7 = *(v17 + 16);
        v14 = 1;
        v13 = v12;
      }

      v23 += 168;
    }

    while (v23 < v22);
    v27 = v12;
    v28 = v11;
    v29 = v10;
    v24 = v9;
    v25 = v8;
    v26 = v7;
    if ((v5 & 1) == 0)
    {
      return v4;
    }

LABEL_21:
    BlueFin::lla2ned(&v27, &v24, 0, &v30);
    return sqrt(v31 * v31 + v30 * v30);
  }

  return v4;
}

unint64_t BlueFin::GlPeSubsets::ComputeWeightedMeanPos@<X0>(uint64_t *__return_ptr a1@<X8>, BlueFin::GlPeSubsets *this@<X0>, const BlueFin::GlSignalIdSet *a3@<X1>)
{
  v6 = BlueFin::GlSetBase::Cnt(a3);
  result = BlueFin::GlPeSubsetIterator::GlPeSubsetIterator(&v33, this);
  if (v34 >= v33)
  {
    v14 = 0.0;
    v21 = 1;
    v13 = 0.0;
    v12 = 0.0;
    v11 = 0.0;
    v10 = 0.0;
    v24 = 0.0;
    v22 = 0.0;
    v9 = 0.0;
    v25 = 0.0;
    v23 = 0.0;
  }

  else
  {
    v8 = 0;
    v31 = 0.0;
    v32 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    do
    {
      if (!v6 || (v15 = BlueFin::GlPeSubsetIterator::operator->(&v33), result = BlueFin::GlSetBase::HasAny(a3, (v15 + 24)), (result & 1) == 0))
      {
        v16 = 1.0 / *(BlueFin::GlPeSubsetIterator::operator->(&v33) + 136);
        v31 = v31 + *BlueFin::GlPeSubsetIterator::operator->(&v33) * v16;
        v29 = v29 + v16;
        v17 = 1.0 / *(BlueFin::GlPeSubsetIterator::operator->(&v33) + 140);
        v14 = v14 + *(BlueFin::GlPeSubsetIterator::operator->(&v33) + 8) * v17;
        v13 = v13 + v17;
        v18 = 1.0 / *(BlueFin::GlPeSubsetIterator::operator->(&v33) + 132);
        v12 = v12 + *(BlueFin::GlPeSubsetIterator::operator->(&v33) + 16) * v18;
        v11 = v11 + v18;
        v19 = 1.0 / *(BlueFin::GlPeSubsetIterator::operator->(&v33) + 144);
        v10 = v10 + *(BlueFin::GlPeSubsetIterator::operator->(&v33) + 124) * v19;
        v30 = v30 + v19;
        v20 = 1.0 / *(BlueFin::GlPeSubsetIterator::operator->(&v33) + 148);
        result = BlueFin::GlPeSubsetIterator::operator->(&v33);
        v32 = v32 + *(result + 120) * v20;
        v9 = v9 + v20;
        ++v8;
      }

      v34 += 168;
    }

    while (v34 < v33);
    v21 = v8 == 0;
    v23 = v31;
    v22 = v32;
    v25 = v29;
    v24 = v30;
  }

  *a1 = 0;
  a1[1] = 0;
  *(a1 + 36) = 0u;
  a1[2] = 0;
  a1[3] = a1 + 36;
  *(a1 + 32) = 19;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  v26 = vdupq_n_s32(0x43C80000u);
  *(a1 + 7) = 0u;
  *(a1 + 8) = v26;
  *(a1 + 9) = v26;
  *(a1 + 160) = 0;
  if (!v21)
  {
    *a1 = v23 / v25;
    *(a1 + 1) = v14 / v13;
    *(a1 + 2) = v12 / v11;
    v27 = v10 / v24;
    v28 = v22 / v9;
    *(a1 + 30) = v28;
    *(a1 + 31) = v27;
  }

  return result;
}

BlueFin::GlPeSubsets *BlueFin::GlPeSubsets::RecurseIntegrityGeometry(BlueFin::GlPeSubsets *result, const BlueFin::GlSignalIdSet *a2, uint64_t a3, int *a4, int a5)
{
  v7 = result;
  if (a5 < 1)
  {
    result = BlueFin::GlPeSubsets::Find(result, a2);
    if (result)
    {
      if (*(result + 28) <= 15.0)
      {
        return result;
      }

      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    *a4 = v13;
  }

  else
  {
    v8 = *(a3 + 32);
    v9 = *(a3 + 64);
    v16[3] = *(a3 + 48);
    v16[4] = v9;
    v17 = *(a3 + 80);
    v10 = *(a3 + 16);
    v16[0] = *a3;
    v16[1] = v10;
    v16[2] = v8;
    if (BYTE1(v16[0]) != LOBYTE(v16[0]) && !*a4)
    {
      v11 = (a5 - 1);
      do
      {
        BlueFin::GlSetBase::GlSetBase(v14, v15, 0x13u, a2);
        if (WORD1(v16[0]) >= 0x23Fu)
        {
          DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
        }

        BlueFin::GlSetBase::Remove(v14, SWORD1(v16[0]));
        BlueFin::GlSetIterator::operator++(v16);
        result = BlueFin::GlPeSubsets::RecurseIntegrityGeometry(v7, v14, v16, a4, v11);
      }

      while (BYTE1(v16[0]) != LOBYTE(v16[0]) && *a4 == 0);
    }
  }

  return result;
}

uint64_t BlueFin::GlPeSubsets::GetIntegrityGeometry(BlueFin::GlPeSubsets *a1, uint64_t a2, int *a3)
{
  v6 = 0;
  *a3 = 0;
  while (1)
  {
    v7 = v6;
    if (v6 > 1u)
    {
      break;
    }

    v9[0] = *(a2 + 8);
    memcpy(v12, *a2, 4 * v9[0]);
    v10 = 0;
    v9[1] = 0;
    v11 = v12[0];
    BlueFin::GlSetIterator::operator++(v9);
    BlueFin::GlPeSubsets::RecurseIntegrityGeometry(a1, a2, v9, a3, v7);
    v6 = v7 + 1;
    if (*a3)
    {
      return (v7 - 1);
    }
  }

  LOWORD(v7) = 2;
  return (v7 - 1);
}

uint64_t *BlueFin::GlPeLsqSubsets::RunLsqSubsets(uint64_t a1, BlueFin::GlSetBase *this, uint64_t a3, uint64_t a4, int a5)
{
  if (a3 >= 4)
  {
    v12 = "ucDepth<=3";
    DeviceFaultNotify("glpe_navutil.cpp", 495, "RunLsqSubsets", "ucDepth<=3");
    v13 = 495;
    goto LABEL_11;
  }

  v7 = a3;
  if (a3 >= 2 && BlueFin::GlSetBase::Cnt(this) >= 0xB)
  {
    v12 = "ucDepth<=1 || rotBase.Cnt() <=GLPE_SUBSETS_MAX_PR_ISOL";
    DeviceFaultNotify("glpe_navutil.cpp", 496, "RunLsqSubsets", "ucDepth<=1 || rotBase.Cnt() <=GLPE_SUBSETS_MAX_PR_ISOL");
    v13 = 496;
LABEL_11:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navutil.cpp", v13, v12);
  }

  bzero(*(a1 + 104), ((4 * *(a1 + 112) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  BlueFin::GlPeLsqSubsets::RunLsqSubset(a1, this, 3, a5, a4, (*(a1 + 48) >> 11) & 1);
  v10 = BlueFin::GlPeSubsets::Find(*a1, this);
  if (v10)
  {
    if (*(v10 + 128) < 800.0)
    {
      *(a1 + 64) = *v10;
      *(a1 + 80) = *(v10 + 16);
      if (*(a1 + 48))
      {
        *(a1 + 96) = (*(v10 + 120) * 1000.0);
      }
    }
  }

  v14[0] = *(this + 8);
  memcpy(v17, *this, 4 * v14[0]);
  v15 = 0;
  v14[1] = 0;
  v16 = v17[0];
  BlueFin::GlSetIterator::operator++(v14);
  return BlueFin::GlPeLsqSubsets::RecurseLsqSubsets(a1, this, v14, v7);
}

uint64_t *BlueFin::GlPeLsqSubsets::RecurseLsqSubsets(uint64_t *result, const void **a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = *(a3 + 32);
    v5 = *(a3 + 64);
    v12[3] = *(a3 + 48);
    v12[4] = v5;
    v13 = *(a3 + 80);
    v6 = *(a3 + 16);
    v12[0] = *a3;
    v12[1] = v6;
    v12[2] = v4;
    if (BYTE1(v12[0]) != LOBYTE(v12[0]))
    {
      v8 = result;
      v9 = a4 - 1;
      do
      {
        BlueFin::GlSetBase::GlSetBase(&v10, v11, 0x13u, a2);
        if (WORD1(v12[0]) >= 0x23Fu)
        {
          DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
        }

        BlueFin::GlSetBase::Remove(&v10, SWORD1(v12[0]));
        BlueFin::GlSetIterator::operator++(v12);
        BlueFin::GlPeLsqSubsets::RunLsqSubset(v8, &v10, 1, 1, 0, 0);
        result = BlueFin::GlPeLsqSubsets::RecurseLsqSubsets(v8, &v10, v12, v9);
      }

      while (BYTE1(v12[0]) != LOBYTE(v12[0]));
    }
  }

  return result;
}

uint64_t BlueFin::GlPeNavUtil::PackSkfMeas_ADR_SignalId(uint64_t a1, uint64_t a2, BlueFin::GlSignalId *a3, int a4)
{
  PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*(a1 + 8), a3, 0);
  v9 = PeMeas;
  v10 = *(PeMeas + 110);
  if ((v10 & 1) == 0 && *(PeMeas + 111) != 1)
  {
    return 0;
  }

  v11 = -7200001;
  v12 = *(a1 + 8);
  if (*v12 == -7200001 || (v13 = *(v12 + 4), v13 == -7200001))
  {
    result = 0;
    *(a2 + 20) = -7200001;
    return result;
  }

  v15 = *v12 - v13;
  *(a2 + 20) = v15;
  if (v15 == -7200001 || (a4 || !v10 || (*(v9 + 113) & 1) != 0) && (a4 != 1 || !v10 || (*(v9 + 113) & 1) == 0) && a4 != 3 && (a4 != 2 || !*(v9 + 111)))
  {
    return 0;
  }

  MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(v12, a3, 0, 0);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = -1;
  *(a2 + 48) = 0;
  *(a2 + 50) = 0;
  *(a2 + 32) = 0;
  *(a2 + 36) = -1;
  *(a2 + 40) = 575;
  *(a2 + 44) = 10;
  v17 = *(a1 + 8);
  v18 = *v17;
  *(a2 + 16) = *v17;
  if (v18 != -7200001)
  {
    v19 = v17[1];
    v20 = v18 - v19;
    if (v19 == -7200001)
    {
      v11 = -7200001;
    }

    else
    {
      v11 = v20;
    }
  }

  *(a2 + 20) = v11;
  if ((a2 + 32) != a3)
  {
    *(a2 + 32) = *a3;
    *(a2 + 36) = *(a3 + 1);
    *(a2 + 40) = *(a3 + 4);
  }

  v21 = *(MeMeas + 25);
  *a2 = *(v9 + 16);
  *(a2 + 8) = v21;
  if (*(v9 + 113) == 1)
  {
    *(a2 + 8) = v21 + 0.0025;
  }

  if (*(v9 + 111) == 1)
  {
    *(a2 + 8) = *(MeMeas + 31);
  }

  result = 1;
  *(a2 + 48) = 1;
  return result;
}

double BlueFin::GlPeNavUtil::ComputeBc(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8 = a5;
  v15 = *a3;
  v16 = *(a3 + 2);
  v9 = 0.0;
  BlueFin::GlPeNavUtil::ComputeRangeResidVec(a1, a2, &v15, a4, a5, a6, a7, 1, a8, 1);
  if ((v8 & 1) == 0 && v18)
  {
    v10 = (v17 + 8);
    v11 = 0.0;
    v12 = v18;
    do
    {
      v13 = *v10++;
      v11 = v11 + v13;
      --v12;
    }

    while (v12);
    return v11 / v18;
  }

  return v9;
}

uint64_t *BlueFin::GlPeNavUtil::RecurseComputeDops(uint64_t *result, const void **a2, uint64_t a3, _DWORD *a4, uint64_t a5, int a6, double a7)
{
  v11 = result;
  if (a6 < 1)
  {
    result = BlueFin::GlPeNavUtil::ComputeDops(result);
    if (*(&v19 + 3) > a7)
    {
      *a4 = 1;
    }
  }

  else
  {
    v12 = *(a3 + 48);
    v18 = *(a3 + 32);
    v19 = v12;
    v20 = *(a3 + 64);
    v21 = *(a3 + 80);
    v13 = *(a3 + 16);
    *v16 = *a3;
    v17 = v13;
    if (HIBYTE(v16[0]) != LOBYTE(v16[0]) && !*a4)
    {
      v14 = (a6 - 1);
      do
      {
        BlueFin::GlSetBase::GlSetBase(v22, v23, 8u, a2);
        BlueFin::GlSetBase::Remove(v22, LOBYTE(v16[1]));
        BlueFin::GlSetIterator::operator++(v16);
        result = BlueFin::GlPeNavUtil::RecurseComputeDops(v11, v22, v16, a4, a5, v14, a7);
      }

      while (HIBYTE(v16[0]) != LOBYTE(v16[0]) && *a4 == 0);
    }
  }

  return result;
}

uint64_t BlueFin::GlPeNavUtil::GetIntegrityGeometry(uint64_t *a1, BlueFin::GlSignalIdSet *this, _DWORD *a3, double a4, uint64_t a5, uint64_t a6)
{
  v11 = 0;
  *a3 = 0;
  while (1)
  {
    v12 = v11;
    if (v11 > 2u)
    {
      break;
    }

    BlueFin::GlSignalIdSet::GetSvIdSet(&__src, this);
    v16[0] = v15;
    memcpy(v19, __src, 4 * v15);
    v17 = 0;
    v16[1] = 0;
    v18 = v19[0];
    BlueFin::GlSetIterator::operator++(v16);
    BlueFin::GlSignalIdSet::GetSvIdSet(&__src, this);
    BlueFin::GlPeNavUtil::RecurseComputeDops(a1, &__src, v16, a3, a6, v12, a4);
    v11 = v12 + 1;
    if (*a3)
    {
      return (v12 - 1);
    }
  }

  LOWORD(v12) = 3;
  return (v12 - 1);
}

unsigned __int8 *BlueFin::GlPeNavUtil::ComputeCrossTrackElevMask(BlueFin::GlPeNavUtil *this, float a2, const void **a3, int **a4)
{
  BlueFin::GlSetBase::GlSetBase(&__src, v26, 0x13u, a3);
  v28 = &v30;
  LOBYTE(v29) = 19;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  memset(v33, 0, 28);
  BlueFin::GlSetBase::OperatorBinaryOr(&__src, &v28, a4);
  BlueFin::GlSetBase::operator=(&__src, &v28);
  v26[1] = v31;
  v26[2] = v32;
  *v27 = v33[0];
  *&v27[12] = *(v33 + 12);
  v26[0] = v30;
  LOBYTE(v28) = v25;
  memcpy(&v29, __src, 4 * v25);
  WORD1(v28) = 0;
  BYTE1(v28) = 0;
  HIDWORD(v28) = v29;
  result = BlueFin::GlSetIterator::operator++(&v28);
  if (BYTE1(v28) != v28)
  {
    while (1)
    {
      if (WORD1(v28) >= 0x23FuLL)
      {
        v21 = "usIndex < NUM_SIGNAL_IDS";
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        v22 = "glsignalid.h";
        v23 = 578;
        goto LABEL_28;
      }

      v9 = *(this + 1);
      v10 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v28);
      v11 = *v10;
      LODWORD(v10) = v10[1];
      v12 = SWORD1(v28);
      LOBYTE(__src) = v11;
      HIDWORD(__src) = v10;
      v25 = WORD1(v28);
      PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(v9, &__src, 0);
      v14 = PeMeas;
        ;
      }

      while (i <= -3.14159265)
      {
        i = i + 6.28318531;
      }

      v16 = fabs(i);
      if (v16 > 1.57079633)
      {
        v16 = 3.14159265 - v16;
      }

      v17 = (v16 * 57.2957795 + -0.1);
      if (v17 < -29 || (v17 / 30) >= 4)
      {
        v21 = "!(iIdx < 0 || iIdx >= _DIM(iMasksDeg))";
        DeviceFaultNotify("glpe_navutil.cpp", 1270, "ComputeCrossTrackElevMask", "!(iIdx < 0 || iIdx >= _DIM(iMasksDeg))");
        v22 = "glpe_navutil.cpp";
        v23 = 1270;
LABEL_28:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v22, v23, v21);
      }

      if (*(PeMeas + 104) < (dword_298A44290[v17 / 30] + (dword_298A44290[v17 / 30 + 1] - dword_298A44290[v17 / 30]) / 30.0 * (v17 % 30)))
      {
        BlueFin::GlSetBase::Remove(a3, v12);
      }

      if (v17 <= 39)
      {
        break;
      }

      if (v17 >= 0x32)
      {
        v19 = v17 * -1.5 + 135.0;
        goto LABEL_21;
      }

      v20 = 60;
LABEL_22:
      if (v20 > *(v14 + 104))
      {
        BlueFin::GlSetBase::Remove(a4, v12);
      }

      result = BlueFin::GlSetIterator::operator++(&v28);
      if (BYTE1(v28) == v28)
      {
        return result;
      }
    }

    v19 = v17 * 1.5;
LABEL_21:
    v20 = v19;
    goto LABEL_22;
  }

  return result;
}

BOOL BlueFin::GlPeNavUtil::RunBdsDivergenceDetection(uint64_t a1, BlueFin::GlSignalIdSet *this, __int128 *a3, uint64_t a4, double a5, double a6)
{
  BlueFin::GlSignalIdSet::GetSvIdSet(&v32, this);
  v46 = &v48;
  v47 = 8;
  v48 = 0u;
  v49 = 0u;
  for (i = 1; i != 33; ++i)
  {
    *(&v48 + (i >> 5)) |= 1 << i;
  }

  v12 = BlueFin::GlSetBase::GlSetBase(&v55, v57, 8u, &v32);
  v34 = &v36;
  LOBYTE(v35) = 8;
  v36 = 0u;
  v37 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(v12, &v34, &v46);
  BlueFin::GlSetBase::operator=(&v55, &v34);
  v57[0] = v36;
  v57[1] = v37;
  BlueFin::GlSignalIdSet::GetSvIdSet(&v32, this);
  v46 = &v48;
  v47 = 8;
  v48 = 0u;
  v49 = 0u;
  for (j = 76; j != 139; ++j)
  {
    *(&v48 + (j >> 5)) |= 1 << j;
  }

  v14 = BlueFin::GlSetBase::GlSetBase(&v52, v54, 8u, &v32);
  v34 = &v36;
  LOBYTE(v35) = 8;
  v36 = 0u;
  v37 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(v14, &v34, &v46);
  BlueFin::GlSetBase::operator=(&v52, &v34);
  v15 = 0;
  v54[0] = v36;
  v54[1] = v37;
  v16 = (v52 + 4 * v53 - 4);
  do
  {
    if (*v16)
    {
      v17 = *v16 - (((*v16 >> 1) & 0x5B6DB6DB) + ((*v16 >> 2) & 0x9249249));
      v15 = ((v17 + (v17 >> 3)) & 0xC71C71C7) + v15 - 63 * (((v17 + (v17 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v16;
  }

  while (v16 >= v52);
  if (v15 < 5u)
  {
    return 0;
  }

  v18 = 0;
  v19 = (v55 + 4 * v56 - 4);
  do
  {
    if (*v19)
    {
      v20 = *v19 - (((*v19 >> 1) & 0x5B6DB6DB) + ((*v19 >> 2) & 0x9249249));
      v18 = ((v20 + (v20 >> 3)) & 0xC71C71C7) + v18 - 63 * (((v20 + (v20 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v19;
  }

  while (v19 >= v55);
  if (v18 < 5u)
  {
    return 0;
  }

  v46 = &v48;
  v47 = 19;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  memset(v51, 0, sizeof(v51));
  BlueFin::GlSignalIdSet::GetSignalIdSet(this, 0, &v34);
  BlueFin::GlSetBase::operator=(&v46, &v34);
  v49 = v37;
  v50 = v38;
  *v51 = v39[0];
  *&v51[12] = *(v39 + 12);
  v48 = v36;
  v40 = &v42;
  v41 = 19;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  memset(v45, 0, sizeof(v45));
  BlueFin::GlSignalIdSet::GetSignalIdSet(this, 4, &v34);
  BlueFin::GlSetBase::operator=(&v40, &v34);
  v43 = v37;
  v44 = v38;
  *v45 = v39[0];
  *&v45[12] = *(v39 + 12);
  v42 = v36;
  v32 = *a3;
  v33 = *(a3 + 2);
  BlueFin::GlPeNavUtil::ComputeRangeResidVec(a1, &v46, &v32, a4, 0, 0, 0, 1, 0, 1);
  v30 = *a3;
  v31 = *(a3 + 2);
  BlueFin::GlPeNavUtil::ComputeRangeResidVec(a1, &v40, &v30, a4, 0, 0, 0, 1, 0, 1);
  result = 0;
  if (DWORD2(v32) >= 5 && v35 >= 5)
  {
    v25 = BlueFin::SKFVector::Median(&v32, v21, v22, v23);
    v29 = v25 - BlueFin::SKFVector::Median(&v34, v26, v27, v28);
    if (v29 < 0.0)
    {
      v29 = -v29;
    }

    return v29 > a6;
  }

  return result;
}

uint64_t BlueFin::GlPeKfBiasData::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v16 = *MEMORY[0x29EDCA608];
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (v4 >= 2)
  {
    DeviceFaultNotify("glpe_navutil.cpp", 1456, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navutil.cpp", 1456, "ucVersion == 1");
  }

  v6 = v3;
  v7 = v2;
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v12 = 113;
    v13 = v5;
    v14 = 0x1000000000000;
    v11 = &unk_2A1F09520;
    v15 = v5;
    BlueFin::GlSysLogEntry::PutU32(&v11, *(v2 + 16));
    v9 = *(v7 + 8);
    v8 = v7 + 8;
    BlueFin::GlSysLogEntry::PutF32(&v11, *v9);
    BlueFin::GlSysLogEntry::PutF32(&v11, *(*v8 + 4));
    BlueFin::GlSysLogEntry::PutF32(&v11, *(*v8 + 8));
    BlueFin::GlSysLogEntry::PutF32(&v11, *(*v8 + 12));
    BlueFin::GlSysLogEntry::PutF32(&v11, *(*v8 + 16));
    BlueFin::GlSysLogEntry::PutF32(&v11, *(*v8 + 20));
    BlueFin::GlSysLogEntry::PutF32(&v11, *(*v8 + 24));
    BlueFin::GlSysLogEntry::PutF32(&v11, *(*v8 + 28));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v11, v6, 4);
  }

  return 1;
}

uint64_t BlueFin::GlPePolaroidGnssKF::Polaroid(BlueFin::GlPePolaroidGnssKF *this, double a2, int a3, double a4, int a5, const BlueFin::GlSignalId *a6, float a7, int a8)
{
  v8 = fabs(a2);
  if (a4 >= 64.0 && (a4 >= 400.0 || a4 * 3.0 >= v8))
  {
    goto LABEL_26;
  }

  v10 = *this;
  if (a3 > 4)
  {
    a8 = 1;
  }

  if (a5 < 3001)
  {
    a8 = 1;
  }

  if (v10 > 400.0)
  {
    a8 = 1;
  }

  if (!a8)
  {
    v10 = 400.0;
  }

  if (v8 > 400.0)
  {
    return 1;
  }

  if (a2 >= 0.0)
  {
    if (v8 > v10)
    {
      return 1;
    }
  }

  else if (a2 * a2 > a7 * 9.0 || v8 > v10)
  {
    return 1;
  }

LABEL_26:
  v14 = a2;
  BlueFin::GlPePolaroidGnssKF::UpdateFilter(this, 0, v14, a6);
  return 0;
}

void BlueFin::PESmoothTrackStatus::update(uint64_t a1, uint64_t a2, int a3)
{
  v4 = (*(a1 + 1) + 1);
  if (v4 <= 9)
  {
    v5 = *a1;
  }

  else
  {
    v4 = 0;
    v5 = 1;
    *a1 = 1;
  }

  *(a1 + 248 + 4 * v4) = a3;
  v6 = a1 + 8;
  v7 = a1 + 8 + 24 * v4;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *(a1 + 1) = v4;
  if (v4 < 9)
  {
    v8 = v4 + 1;
  }

  else
  {
    v8 = 0;
  }

  if ((v5 & 1) != 0 && (v8 & 0x80) == 0 && (a3 - *(a1 + 248 + 4 * v8)) < 0x2EE1 && (v9 = (v6 + 24 * v8), BlueFin::lla2ned(a2, v9, 0, &v23), v10 = sqrt(v24 * v24 + v23 * v23), v10 >= 10.0))
  {
    BlueFin::lla2ned((v6 + 24 * *(a1 + 1)), v9, 0, &v23);
    v11 = atan2(v24, v23);
    v12 = 0;
    if (v8 <= 8u)
    {
      v13 = v8 + 1;
    }

    else
    {
      v13 = 0;
    }

    v14 = 0.0;
    do
    {
      if (v13 == v8)
      {
        break;
      }

      BlueFin::lla2ned((v6 + 24 * v13), v9, 0, &v21);
      v16 = v21;
      v15 = v22;
      v17 = atan2(v22, v21);
      v14 = v14 + sqrt(v16 * v16 + v15 * v15) * sin(v11 - v17);
      ++v12;
      v18 = (v13 + 1) <= 9 ? v13 + 1 : 0;
      v19 = *(a1 + 1) == v13;
      v13 = v18;
    }

    while (!v19);
    if (v12 >= 1)
    {
      v14 = v14 / v12;
    }

    *(a1 + 2) = v14 <= 10.0;
    v20 = v11 * 57.2957795;
    *(a1 + 4) = v20;
  }

  else
  {
    *(a1 + 2) = 0;
  }
}

float BlueFin::GlPePosInfo::CalculateSpeedFromDeltaPos(uint64_t a1, uint64_t a2, _DWORD *a3, float *a4)
{
  v8 = *a4;
  v9 = *a4;
  if (*(a1 + 480))
  {
    v10 = *(a1 + 488);
    BlueFin::lla2ned((a1 + 456), a2, 0, &v17);
    v11 = (*a3 - *(a1 + 480)) * 0.001;
    v9 = v8;
    if (v11 > 0.0)
    {
      v12 = sqrt(v18 * v18 + v17 * v17);
      v13 = v12 / v11;
      v14 = v8 + v8;
      if ((v8 + v8) < 3.0)
      {
        v14 = 3.0;
      }

      if (v13 >= v14)
      {
        v15 = 1;
        v9 = v8;
      }

      else
      {
        v9 = ((1.0 - (2.0 / (v10 + 3))) * *(a1 + 484)) + (v13 * (2.0 / (v10 + 3)));
        v15 = *(a1 + 488) + 1;
      }

      *(a1 + 484) = v9;
      if (v15 >= *(a1 + 492))
      {
        v15 = *(a1 + 492);
      }

      *(a1 + 488) = v15;
    }
  }

  if (v8 <= 0.5)
  {
    *(a1 + 480) = 0xBF80000000000000;
    *(a1 + 488) = 1;
  }

  else
  {
    *(a1 + 456) = *a2;
    *(a1 + 472) = *(a2 + 16);
    *(a1 + 480) = *a3;
    if (*(a1 + 484) < 0.0)
    {
      *(a1 + 484) = v8;
    }
  }

  result = (v8 * 0.25) + (v9 * 0.75);
  *a4 = result;
  return result;
}

double BlueFin::GlPePosInfo::CalculateSpeedFromDeltaPosSwimming(uint64_t a1, double *a2, int *a3, float *a4)
{
  if (*(a1 + 480))
  {
    BlueFin::lla2ned((a1 + 456), a2, 0, &v15);
    v8 = *a3;
    v9 = (*a3 - *(a1 + 480)) * 0.001;
    v10 = *a4;
    if (v9 > 0.0)
    {
      v11 = sqrt(v16 * v16 + v15 * v15);
      v12 = v11 / v9;
      if (v10 >= v12)
      {
        v10 = v12;
      }

      v13 = *(a1 + 484);
      if (v13 >= 0.0)
      {
        v10 = (v13 * 0.967) + (v10 * 0.033);
      }

      *a4 = v10;
    }

    *(a1 + 484) = v10;
  }

  else
  {
    v8 = *a3;
  }

  *(a1 + 456) = *a2;
  result = a2[2];
  *(a1 + 472) = result;
  *(a1 + 480) = v8;
  return result;
}

uint64_t BlueFin::GlPePosReport::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v5 = v4;
  v6 = v2;
  v24 = *MEMORY[0x29EDCA608];
  if (!v4 && (!BlueFin::GlUtils::m_pInstance || *(BlueFin::GlUtils::m_pInstance + 1122) != 1))
  {
    return 0;
  }

  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = 5;
  }

  if (v7 >= 6)
  {
    DeviceFaultNotify("glpe_posreport.cpp", 128, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 5");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_posreport.cpp", 128, "ucVersion >= 1 && ucVersion <= 5");
  }

  v20 = 92;
  v21 = v7;
  v22 = 0x1000000000000;
  v19 = &unk_2A1F092C0;
  v23 = v7;
  if (*(v2 + 56) == 1)
  {
    DeviceFaultNotify("glpe_posreport.cpp", 131, "SerializeImpl", "!m_bHaveOptionalSection");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_posreport.cpp", 131, "!m_bHaveOptionalSection");
  }

  BlueFin::GlSysLogEntry::PutU8(&v19, 0);
  BlueFin::GlSysLogEntry::PutU8(&v19, *(v6 + 60));
  BlueFin::GlSysLogEntry::PutU32(&v19, *(v6 + 8));
  BlueFin::GlSysLogEntry::PutD64(&v19, *(v6 + 64));
  BlueFin::GlSysLogEntry::PutD64(&v19, *(v6 + 72));
  BlueFin::GlSysLogEntry::PutD64(&v19, *(v6 + 80));
  BlueFin::GlSysLogEntry::PutS16(&v19, *(v6 + 88));
  if (v7 > 3)
  {
    if (v7 == 4)
    {
      for (i = 0; i != 64; i += 8)
      {
        BlueFin::GlSysLogEntry::PutU64(&v19, *(v6 + 96 + i));
      }

      for (j = 0; j != 64; j += 8)
      {
        BlueFin::GlSysLogEntry::PutU64(&v19, *(v6 + 352 + j));
      }
    }

    else
    {
      BlueFin::GlSysLogEntry::PutU8(&v19, 4);
      v13 = 0;
      v14 = v6 + 96;
      do
      {
        for (k = 0; k != 64; k += 8)
        {
          BlueFin::GlSysLogEntry::PutU64(&v19, *(v14 + k));
        }

        ++v13;
        v14 += 64;
      }

      while (v13 != 4);
      v16 = 0;
      v17 = v6 + 352;
      do
      {
        for (m = 0; m != 64; m += 8)
        {
          BlueFin::GlSysLogEntry::PutU64(&v19, *(v17 + m));
        }

        ++v16;
        v17 += 64;
      }

      while (v16 != 4);
    }
  }

  else
  {
    for (n = 0; n != 64; n += 8)
    {
      BlueFin::GlSysLogEntry::PutU32(&v19, *(v6 + 96 + n));
    }

    for (ii = 0; ii != 64; ii += 8)
    {
      BlueFin::GlSysLogEntry::PutU32(&v19, *(v6 + 352 + ii));
    }
  }

  BlueFin::GlSysLogEntry::PutD64(&v19, *(v6 + 608));
  BlueFin::GlSysLogEntry::PutD64(&v19, *(v6 + 616));
  if (v7 >= 2)
  {
    BlueFin::GlSysLogEntry::PutU16(&v19, *(v6 + 16));
    BlueFin::GlSysLogEntry::PutD64(&v19, *(v6 + 24));
    BlueFin::GlSysLogEntry::PutU16(&v19, *(v6 + 32));
    BlueFin::GlSysLogEntry::PutU8(&v19, *(v6 + 34));
    BlueFin::GlSysLogEntry::PutU8(&v19, *(v6 + 35));
    BlueFin::GlSysLogEntry::PutU8(&v19, *(v6 + 36));
    BlueFin::GlSysLogEntry::PutU8(&v19, *(v6 + 37));
    BlueFin::GlSysLogEntry::PutD64(&v19, *(v6 + 40));
    BlueFin::GlSysLogEntry::PutD64(&v19, *(v6 + 48));
  }

  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v19, v5, 4);
  return 1;
}

uint64_t BlueFin::GlPePosReport::Deserialize(BlueFin::GlPePosReport *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 92 || *(a2 + 12) - 6 < 0xFFFFFFFB)
  {
    return 0;
  }

  U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 56) = U8 != 0;
  if (U8)
  {
    DeviceFaultNotify("glpe_posreport.cpp", 215, "Deserialize", "!m_bHaveOptionalSection");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_posreport.cpp", 215, "!m_bHaveOptionalSection");
  }

  *(this + 15) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 2) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 8) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 9) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 10) = BlueFin::GlSysLogEntry::GetD64(a2);
  S16 = BlueFin::GlSysLogEntry::GetS16(a2);
  *(this + 6) = 0u;
  v7 = this + 96;
  *(this + 44) = S16;
  v8 = this + 352;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  v9 = *(a2 + 12);
  if (v9 > 3)
  {
    if (v9 == 4)
    {
      for (i = 0; i != 64; i += 8)
      {
        *&v7[i] = BlueFin::GlSysLogEntry::GetU64(a2);
      }

      for (j = 0; j != 64; j += 8)
      {
        *&v8[j] = BlueFin::GlSysLogEntry::GetU64(a2);
      }
    }

    else
    {
      v14 = BlueFin::GlSysLogEntry::GetU8(a2);
      if (v14)
      {
        v15 = 0;
        v16 = v14;
        do
        {
          for (k = 0; k != 64; k += 8)
          {
            *&v7[k] = BlueFin::GlSysLogEntry::GetU64(a2);
          }

          ++v15;
          v7 += 64;
        }

        while (v15 != v16);
        for (m = 0; m != v16; ++m)
        {
          for (n = 0; n != 64; n += 8)
          {
            *&v8[n] = BlueFin::GlSysLogEntry::GetU64(a2);
          }

          v8 += 64;
        }
      }
    }
  }

  else
  {
    for (ii = 0; ii != 64; ii += 8)
    {
      *&v7[ii] = BlueFin::GlSysLogEntry::GetU32(a2);
    }

    for (jj = 0; jj != 64; jj += 8)
    {
      *&v8[jj] = BlueFin::GlSysLogEntry::GetU32(a2);
    }
  }

  *(this + 76) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 77) = BlueFin::GlSysLogEntry::GetD64(a2);
  if (*(a2 + 12) == 1)
  {
    *(this + 8) = 0;
    *(this + 5) = 0;
    *(this + 3) = 0;
    *(this + 30) = 0;
    D64 = 4287767300.0;
  }

  else
  {
    *(this + 8) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 3) = BlueFin::GlSysLogEntry::GetD64(a2);
    *(this + 16) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 34) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 35) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 36) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 37) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 5) = BlueFin::GlSysLogEntry::GetD64(a2);
    D64 = BlueFin::GlSysLogEntry::GetD64(a2);
  }

  *(this + 6) = D64;
  BlueFin::GlSysLogEntry::CheckConsumed(a2, 303);
  return 1;
}

void BlueFin::computeResidual(double *a1, double *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v7 = a5;
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = sqrt((v9 - a2[1]) * (v9 - a2[1]) + (*a1 - *a2) * (*a1 - *a2) + (v10 - a2[2]) * (v10 - a2[2]));
  v12 = log(v11 / 10.0);
  v13 = 1.0;
  if (v11 <= 0.0)
  {
    v12 = 1.0;
  }

  if (v12 >= 1.0)
  {
    v13 = v12;
  }

  v14 = (a3 + 32);
  v15 = (a4 + 16);
  v16 = 0.0;
  do
  {
    v17 = v8 - *(v15 - 2);
    v18 = v9 - *(v15 - 1);
    v19 = *v15;
    v15 += 3;
    v20 = v13 * *v14 * (*(v14 - 1) - sqrt(v18 * v18 + v17 * v17 + (v10 - v19) * (v10 - v19)));
    v16 = v16 + v20 * v20;
    v14 += 6;
    --v7;
  }

  while (v7);
}

uint64_t BlueFin::stRtdMgr::add(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 800);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = result;
    do
    {
      v7 = *v6;
      v6 += 6;
      if (*a2 == v7)
      {

        return BlueFin::stRtdMgr::updateWlanSta(result, v5, a2);
      }

      ++v5;
    }

    while (v4 != v5);
    if (v4 > 15)
    {
      return result;
    }
  }

  *(result + 800) = v4 + 1;
  if ((v4 & 0x80000000) == 0)
  {
    result = BlueFin::stRtdMgr::updateWlanSta(result, v4, a2);
    if ((result & 1) == 0)
    {
      --*(v3 + 800);
    }
  }

  return result;
}

uint64_t BlueFin::stRtdMgr::updateWlanSta(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  v4 = *(a3 + 40);
  v5 = 0;
  if (v4 <= -10.0)
  {
    v6 = v4 >= -80.0 && v3 <= 50.0;
    if (v6 && v3 >= 0.1)
    {
      v7 = a1 + 48 * a2;
      v8 = *(v7 + 32);
      v10 = *(a3 + 16);
      v9 = *(a3 + 32);
      *v7 = *a3;
      *(v7 + 16) = v10;
      *(v7 + 32) = v9;
      if (*(v7 + 8) == 0.0)
      {
        return 0;
      }

      else
      {
        v11 = a1 + 2 * a2;
        v12 = *(v11 + 768);
        v13 = v3 + (v8 * v12++);
        *(v7 + 32) = v13 / v12;
        *(v11 + 768) = v12;
        return 1;
      }
    }
  }

  return v5;
}

uint64_t BlueFin::stRtdMgr::RtdCompute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, __int16 a22, uint64_t a23, unint64_t a24, unint64_t a25, double a26, uint64_t a27, uint64_t a28, int8x16_t a29, uint64_t a30, uint64_t a31, int a32)
{
  v32 = MEMORY[0x2A1C7C4A8](a1, a2);
  STACK[0x12F8] = *MEMORY[0x29EDCA608];
  if (*(v32 + 800) >= 3)
  {
    v34 = v33;
    v35 = v32;
    v36 = *(v32 + 800);
    v37 = 32;
    v38 = v36;
    do
    {
      if (*(v32 + v37) < 0.0)
      {
        return 0;
      }

      v37 += 48;
      --v38;
    }

    while (v38);
    bzero(&STACK[0xEA0], 0x300uLL);
    v39 = 0;
    v40 = 0;
    do
    {
      if (*(v35 + v39 + 820) >= 4u)
      {
        v40 |= (v34 - *(v35 + v39 + 824)) >> 3 < 0x271;
      }

      v39 += 8;
    }

    while (v39 != 32);
    v41 = *(v35 + 852);
    v42 = v35 + 820 + 8 * v41;
    *(v42 + 4) = v34;
    *v42 = v36;
    if (((v41 + 1) & 0xFC) != 0)
    {
      v43 = 0;
    }

    else
    {
      v43 = v41 + 1;
    }

    *(v35 + 852) = v43;
    v44 = v36;
    if (v40)
    {
      if (v36 < 4u)
      {
        if (v36)
        {
          v45 = v36;
          v46 = &STACK[0xECC];
          v47 = (v35 + 36);
          v48 = 0.0;
          v49 = v36;
          do
          {
            v51 = *(v47 - 1);
            v50 = *v47;
            if (*v47 <= 1.0)
            {
              v50 = 1.0;
            }

            *(v46 - 3) = v50;
            *v46 = v50;
            if (v51 > 25.0)
            {
              v50 = v50 + (v51 + -25.0);
              *v46 = v50;
            }

            v48 = v48 + v50;
            v46 += 12;
            v47 += 12;
            --v49;
          }

          while (v49);
          if (v48 > 0.00001)
          {
            v52 = &STACK[0xECC];
            do
            {
              *v52 = *v52 / v48;
              v52 += 12;
              --v45;
            }

            while (v45);
          }
        }

        return 0;
      }

      v69 = 0;
      v70 = (v35 + 32);
      v71 = -1.0;
      v72 = -1;
      v73 = v36;
      do
      {
        v74 = *v70;
        v70 += 12;
        v75 = v74;
        if (v74 > v71)
        {
          v71 = v75;
          v72 = v69;
        }

        ++v69;
      }

      while (v36 != v69);
      v44 = 0;
      v76 = v72;
      v77 = (v35 + 40);
      v78 = 0.0;
      do
      {
        if (v76)
        {
          v79 = *(v77 - 2);
          if (v79 <= 30.0)
          {
            v80 = &STACK[0xEA0] + 6 * v44;
            *v80 = *(v77 - 2);
            v81 = *(v77 - 1);
            v82 = *v77;
            if (v81 <= 1.0)
            {
              v81 = 1.0;
            }

            v80[2] = *(v77 - 2);
            *(v80 + 3) = v79;
            *(v80 + 4) = v81;
            *(v80 + 10) = v82;
            *(v80 + 11) = v81;
            v78 = v81 + (v78 + v81);
            ++v44;
          }
        }

        v77 += 12;
        --v76;
        --v73;
      }

      while (v73);
      if (v78 > 0.0 && v44 != 0)
      {
        v84 = v44;
        v85 = &STACK[0xECC];
        do
        {
          *v85 = *v85 / v78;
          v85 += 12;
          --v84;
        }

        while (v84);
      }

      if (v44 < 3u)
      {
        return 0;
      }
    }

    else if (v36)
    {
      v53 = 0;
      v54 = 0;
      v55 = 0.0;
      do
      {
        v56 = v35 + 48 * v53;
        v58 = *(v56 + 8);
        v59 = *(v56 + 16);
        v57 = v56 + 8;
        v60 = *(v57 + 16);
        if (v54 < 1)
        {
LABEL_33:
          v63 = &STACK[0xEA0] + 6 * v54;
          *v63 = v58;
          *(v63 + 1) = v59;
          v65 = *(v57 + 24);
          v64 = *(v57 + 28);
          if (v64 <= 1.0)
          {
            v64 = 1.0;
          }

          *(v63 + 2) = v60;
          *(v63 + 3) = v65;
          *(v63 + 4) = v64;
          v66 = *(&STACK[0xEA0] + 6 * v53 + 4);
          *(v63 + 10) = *(v57 + 32);
          *(v63 + 11) = v66;
          v55 = v55 + v66;
          ++v54;
        }

        else
        {
          LOWORD(v61) = 0;
          v62 = (&STACK[0xEA0] + 6 * v54);
          while (*v62 != v58 || v62[1] != v59 || v62[2] != v60)
          {
            v61 = (v61 + 1);
            if (v61 >= v54)
            {
              goto LABEL_33;
            }
          }
        }

        ++v53;
      }

      while (v53 != v36);
      if (v54 >= 1)
      {
        v44 = v54;
        if (v55 < 0.0)
        {
          goto LABEL_61;
        }

        v67 = v54;
        v68 = &STACK[0xECC];
        do
        {
          *v68 = *v68 / v55;
          v68 += 12;
          --v67;
        }

        while (v67);
      }

      v44 = v54;
    }

LABEL_61:
    v180 = *&STACK[0xEA0];
    v181 = STACK[0xEB0];
    if (v44 > 1)
    {
      v87 = v44;
      bzero(&a17, 0x2A0uLL);
      v88 = (&a17 | 0x10);
      v89 = &STACK[0xEA0];
      v90 = v87;
      do
      {
        BlueFin::lla2ned(v89, &v180, 0, &STACK[0x1290]);
        *(v88 - 1) = *&STACK[0x1290];
        *v88 = STACK[0x12A0];
        v88 += 3;
        v89 += 6;
        --v90;
      }

      while (v90);
      v174 = v34;
      v178 = 0;
      STACK[0x11F0] = 0;
      STACK[0x1200] = 0;
      STACK[0x11F8] = 0;
      *&STACK[0x11B0] = vdupq_n_s64(0x3F847AE147AE147BuLL);
      STACK[0x11C0] = 0x3F847AE147AE147BLL;
      STACK[0x11D0] = 0;
      STACK[0x11E0] = 0;
      STACK[0x11D8] = 0;
      memset(v182, 0, sizeof(v182));
      v91 = 0uLL;
      *&STACK[0x1290] = 0u;
      *&STACK[0x12A0] = 0u;
      *&STACK[0x12B0] = 0u;
      *&STACK[0x12C0] = 0u;
      STACK[0x12D0] = 0;
      STACK[0x1270] = 0;
      STACK[0x1280] = 0;
      STACK[0x1278] = 0;
      v92 = 1.0;
      STACK[0x1250] = 0;
      STACK[0x1260] = 0;
      STACK[0x1258] = 0;
      STACK[0x1238] = 0;
      v177 = 200;
      v93 = 0;
      STACK[0x1248] = 0;
      STACK[0x1240] = 0;
      STACK[0x1210] = 0;
      STACK[0x1220] = 0;
      STACK[0x1218] = 0;
      while (1)
      {
        *&STACK[0x12D8] = *&STACK[0x11F0];
        STACK[0x12E8] = STACK[0x1200];
        v183 = v91;
        vars0 = v93;
        BlueFin::computeResidual(&v183, v182, &STACK[0xEA0], &a17, v87);
        v94 = 0;
        STACK[0x1228] = v95;
        v96 = &STACK[0x1290];
        do
        {
          v97 = *(&STACK[0x11F0] + v94);
          *(&STACK[0x11F0] + v94) = v97 + *(&STACK[0x11B0] + v94) * v92;
          *v96 = *&STACK[0x11F0];
          v96[2] = STACK[0x1200];
          v98 = STACK[0x1200];
          v183 = *&STACK[0x11F0];
          vars0 = v98;
          BlueFin::computeResidual(&v183, v182, &STACK[0xEA0], &a17, v87);
          *(&STACK[0x1210] + v94) = v99;
          *(&STACK[0x11F0] + v94) = v97;
          v94 += 8;
          v96 += 3;
        }

        while (v94 != 24);
        v100 = 0;
        v101 = *&STACK[0x1210];
        for (i = 1; i != 4; ++i)
        {
          if (*(&STACK[0x1210] + i) < v101)
          {
            v100 = i;
            v101 = *(&STACK[0x1210] + i);
          }
        }

        v103 = v178 + 4;
        v104 = &loc_298A2E000;
        if (v178 + 3 <= 498)
        {
          do
          {
            v105 = *&STACK[0x1210];
            while (1)
            {
              v106 = 0;
              v179 = v103;
              for (j = 1; j != 4; ++j)
              {
                if (v105 < *(&STACK[0x1210] + j))
                {
                  v105 = *(&STACK[0x1210] + j);
                  v106 = j;
                }
              }

              v108 = 0;
              v109 = 3 * v106;
              v110 = &STACK[0x1290];
              do
              {
                v111 = 0;
                v112 = 0.0;
                do
                {
                  v112 = v112 + *&v110[v111];
                  v111 += 3;
                }

                while (v111 != 12);
                *(&STACK[0x1238] + v108) = (v112 - *(&STACK[0x1290] + v108 + v109)) / 3.0;
                ++v108;
                ++v110;
              }

              while (v108 != 3);
              v113 = 0;
              v114 = &STACK[0x1290] + v109;
              do
              {
                *(&STACK[0x1270] + v113 * 8) = *(&STACK[0x1238] + v113 * 8) + *(&STACK[0x1238] + v113 * 8) - *&v114[v113];
                ++v113;
              }

              while (v113 != 3);
              v115 = STACK[0x1280];
              v183 = *&STACK[0x1270];
              vars0 = v115;
              BlueFin::computeResidual(&v183, v182, &STACK[0xEA0], &a17, v87);
              v117 = *&v116;
              if (*&v116 < v101)
              {
                v175 = *&v116;
                for (k = 0; k != 24; k += 8)
                {
                  *(&STACK[0x1250] + k) = *(&STACK[0x1238] + k) + (*(&STACK[0x1270] + k) - *(&STACK[0x1238] + k)) * 2.0;
                }

                v133 = STACK[0x1260];
                v183 = *&STACK[0x1250];
                vars0 = v133;
                BlueFin::computeResidual(&v183, v182, &STACK[0xEA0], &a17, v87);
                v103 = v179 + 2;
                v117 = v175;
                if (v175 < v134)
                {
                  goto LABEL_107;
                }

                goto LABEL_108;
              }

              v118 = vdupq_lane_s64(v116, 0);
              v119 = vandq_s8(vuzp1q_s32(vcgtq_f64(*&STACK[0x1210], v118), vcgtq_f64(*&STACK[0x1220], v118)), xmmword_298A34030);
              v119.i32[0] = vaddvq_s32(v119);
              v120 = vcnt_s8(*v119.i8);
              v120.i16[0] = vaddlv_u8(v120);
              if (v120.i32[0] > 1u)
              {
                break;
              }

              if (v120.i8[0])
              {
                v176 = v117;
                for (m = 0; m != 24; m += 8)
                {
                  *(&STACK[0x1250] + m) = *(&STACK[0x1238] + m) + (*(&STACK[0x1270] + m) - *(&STACK[0x1238] + m)) * 0.5;
                }

                v136 = STACK[0x1260];
                v183 = *&STACK[0x1250];
                vars0 = v136;
                BlueFin::computeResidual(&v183, v182, &STACK[0xEA0], &a17, v87);
                v103 = v179 + 2;
                v117 = v176;
                if (v134 > v176)
                {
                  goto LABEL_107;
                }

LABEL_108:
                *v114 = *&STACK[0x1250];
                v114[2] = STACK[0x1260];
                *(&STACK[0x1210] + v106) = v134;
                v117 = v134;
                goto LABEL_111;
              }

              for (n = 0; n != 3; ++n)
              {
                *(&STACK[0x1250] + n * 8) = *(&STACK[0x1238] + n * 8) + (*&v114[n] - *(&STACK[0x1238] + n * 8)) * 0.5;
              }

              v122 = STACK[0x1260];
              v183 = *&STACK[0x1250];
              vars0 = v122;
              BlueFin::computeResidual(&v183, v182, &STACK[0xEA0], &a17, v87);
              v117 = v123;
              if (*(&STACK[0x1210] + v106) >= v123)
              {
                v103 = v179 + 2;
                *v114 = *&STACK[0x1250];
                v137 = STACK[0x1260];
                goto LABEL_110;
              }

              v124 = 0;
              v125 = &STACK[0x1290];
              v126 = &STACK[0x1290] + 3 * v100;
              do
              {
                for (ii = 0; ii != 3; ++ii)
                {
                  v128 = (*&v125[ii] + *&v126[ii]) * 0.5;
                  *&v125[ii] = v128;
                  *(&STACK[0x11D0] + ii * 8) = v128;
                }

                v129 = STACK[0x11E0];
                v183 = *&STACK[0x11D0];
                vars0 = v129;
                BlueFin::computeResidual(&v183, v182, &STACK[0xEA0], &a17, v87);
                *(&STACK[0x1210] + v124++) = v130;
                v125 += 3;
              }

              while (v124 != 4);
              v100 = 0;
              v105 = *&STACK[0x1210];
              v131 = 1;
              v101 = *&STACK[0x1210];
              do
              {
                if (*(&STACK[0x1210] + v131) < v101)
                {
                  v100 = v131;
                  v101 = *(&STACK[0x1210] + v131);
                }

                ++v131;
              }

              while (v131 != 4);
              v103 = v179 + 6;
              if (v179 + 5 > 498)
              {
                v104 = &loc_298A2E000;
                goto LABEL_122;
              }
            }

            v103 = v179 + 1;
LABEL_107:
            *v114 = *&STACK[0x1270];
            v137 = STACK[0x1280];
LABEL_110:
            v114[2] = v137;
            *(&STACK[0x1210] + v106) = v117;
LABEL_111:
            if (v117 < v101)
            {
              v100 = v106;
              v101 = v117;
            }

            if (v177-- <= 1)
            {
              v104 = &loc_298A2E000;
              if (v103 <= 500)
              {
                v139 = 0;
                v140 = 0.0;
                do
                {
                  v140 = v140 + *(&STACK[0x1210] + v139) + *(&STACK[0x1210] + v139 + 8);
                  v139 += 16;
                }

                while (v139 != 32);
                v141 = 0;
                v142 = vdupq_lane_s64(COERCE__INT64(v140 * 0.25), 0);
                v143 = 0.0;
                do
                {
                  v144 = vsubq_f64(*(&STACK[0x1210] + v141), v142);
                  v145 = vmulq_f64(v144, v144);
                  v143 = v143 + v145.f64[0] + v145.f64[1];
                  v141 += 16;
                }

                while (v141 != 32);
                v177 = 200;
                if (v143 <= 0.003)
                {
                  break;
                }
              }
            }

            else
            {
              v104 = &loc_298A2E000;
            }
          }

          while (v103 < 500);
        }

LABEL_122:
        v146 = &STACK[0x1290] + 3 * v100;
        *&STACK[0x11D0] = *v146;
        STACK[0x11E0] = v146[2];
        if (v103 > 500)
        {
          break;
        }

        v147 = 0;
        v148 = *(&STACK[0x1210] + v100);
        v149 = v103 + 1;
        while (1)
        {
          v92 = v104[54];
          v150 = *(&STACK[0x11B0] + v147) * v92;
          v151 = *(&STACK[0x11D0] + v147) + v150;
          *(&STACK[0x11D0] + v147) = v151;
          v152 = STACK[0x11E0];
          v183 = *&STACK[0x11D0];
          vars0 = v152;
          BlueFin::computeResidual(&v183, v182, &STACK[0xEA0], &a17, v87);
          if (v153 < v148)
          {
            break;
          }

          v154 = v151 - v150 - v150;
          *(&STACK[0x11D0] + v147) = v154;
          v155 = STACK[0x11E0];
          v183 = *&STACK[0x11D0];
          vars0 = v155;
          BlueFin::computeResidual(&v183, v182, &STACK[0xEA0], &a17, v87);
          if (v156 < v148)
          {
            ++v149;
            break;
          }

          *(&STACK[0x11D0] + v147) = v150 + v154;
          v147 += 8;
          v149 += 2;
          if (v147 == 24)
          {
            goto LABEL_130;
          }
        }

        v178 = v149;
        *&STACK[0x11F0] = *&STACK[0x11D0];
        STACK[0x1200] = STACK[0x11E0];
        v91 = *&STACK[0x11F0];
        v93 = STACK[0x1200];
      }

LABEL_130:
      v157 = STACK[0x11E0];
      *&STACK[0x1210] = *&STACK[0x11D0];
      STACK[0x1220] = v157;
      BlueFin::ned2lla(&v180, &STACK[0x1210], &STACK[0x1290]);
      v34 = v174;
      if (*(v35 + 808))
      {
        v158 = STACK[0x1290];
        v159 = STACK[0x1298];
        v160 = *&STACK[0x12A0];
        bzero(&a19, 0xDE0uLL);
        LOBYTE(STACK[0x1290]) = 10;
        v161 = BlueFin::GlExtSensorType::Get(&STACK[0x1290]);
        v162 = v160;
        a17 = v161;
        a18 = 2;
        a22 = 1;
        a24 = v158;
        a25 = v159;
        a26 = v162;
        a32 = 3;
        __asm { FMOV            V0.2D, #3.0 }

        a29 = _Q0;
        a31 = 0x402E000000000000;
        *(v35 + 816) = v174;
        BlueFin::GlPeHula::Update(*(v35 + 808), &a17, _Q0, v167, v168, v169, v170, v171, v172, v173);
        STACK[0x1290] = &unk_2A1F121F8;
        STACK[0x1298] = &a17;
        if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
        {
          off_2A1F12210(&STACK[0x1290], 0);
        }

        BlueFin::GlExtSensDataIf::OutputDebugMsg(&a17);
        bzero(v35, 0x322uLL);
      }
    }

    if ((v34 - *(v35 + 816)) >> 4 >= 0x753)
    {
      bzero(v35, 0x322uLL);
    }

    return 1;
  }

  return 0;
}

uint64_t BlueFin::GlPeMiniEphMgr::remove(BlueFin::GlPeMiniEphMgr *this, int a2)
{
  v3 = *(this + 192 * a2 + 32);
  if (v3 >= 0xBD)
  {
    DeviceFaultNotify("glpe_satpos.cpp", 1008, "remove", "ucSvId <= MAX_SVID");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_satpos.cpp", 1008, "ucSvId <= MAX_SVID");
  }

  *(this + v3 + 17504) = 91;
  v4 = this + 8;

  return BlueFin::GlSetBase::Remove(v4, a2);
}

BOOL BlueFin::GlPeSatPos::IsCached(BlueFin::GlPeTimeMgrUtil *a1, unsigned __int8 *a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, double a6, int8x16_t a7)
{
  v9 = BlueFin::GlPeTimeMgrUtil::DoubleToLms(a1, a3, a4, a5, a6, a7);
  v13 = *a2;
  if (v13 >= 0xBD)
  {
    DeviceFaultNotify("glpe_satpos.cpp", 942, "IsMiniEphAvailable", "*rotSvId <= MAX_SVID");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_satpos.cpp", 942, "*rotSvId <= MAX_SVID");
  }

  v14 = *(a1 + v13 + 17512);
  if (v14 > 0x5A)
  {
    return 0;
  }

  v10.i64[0] = *(a1 + 24 * v14 + 8);
  *v12.i64 = *v10.i64 + trunc(*v10.i64 * 2.32830644e-10) * -4294967300.0;
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  v17 = vnegq_f64(v16);
  v12.i64[0] = vbslq_s8(v17, v12, v10).u64[0];
  if (*v10.i64 > 4294967300.0)
  {
    v10.i64[0] = v12.i64[0];
  }

  if (*v10.i64 < -4294967300.0)
  {
    *v11.i64 = -*v10.i64;
    *v10.i64 = -(*v10.i64 - trunc(*v10.i64 * -2.32830644e-10) * -4294967300.0);
    *v10.i64 = -*vbslq_s8(v17, v10, v11).i64;
  }

  if (*v10.i64 < 0.0)
  {
    v18 = --*v10.i64;
  }

  else
  {
    v18 = *v10.i64;
  }

  v19 = v9 - v18;
  if (v19 < 0)
  {
    v19 = -v19;
  }

  return v19 < 0x3A99;
}

BOOL BlueFin::GlPeSatPos::GetSatPos(uint64_t a1, unsigned __int8 *a2, uint64_t a3, double *a4, uint64_t a5, uint64_t a6, int8x16_t a7, int8x16_t a8)
{
  v12 = *(a1 + 17720);
  v20 = 7;
  v21 = 0;
  BlueFin::GlPeSvIdConverter::SvId2Gnss((v12 + 119744), a2, &v20, a7, a8);
  result = 0;
  if (v21 - 1 <= 0x3E)
  {
    v13 = *(a1 + 17720);
    v14 = *a4;
    v22 = v21;
    Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((v13 + 384), v20);
    if (Mgr)
    {
      v16 = Mgr;
      v17 = (*(*Mgr + 112))(Mgr, &v22, 1);
      if (v17)
      {
        v18 = v17;
        if (!(*(*v16 + 72))(v16, v17, 0, *(a3 + 16)) && ((*(*v18 + 112))(v18, a3, a6, v14) & 1) != 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

void *BlueFin::GlPeSatPos::GetSatClkInfo(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, double a5)
{
  result = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*(a1 + 17720) + 384), *a2);
  if (result)
  {
    result = (*(*result + 112))(result, a2 + 1, 1);
    if (result)
    {
      v11 = result;
      BlueFin::GlPeTimeManager::GetTime(*(a1 + 17728), a5, 0, v12);
      return (*(*v11 + 120))(v11, v12, a3, a4);
    }
  }

  return result;
}

double BlueFin::GlPeSlowFilter::GetSpdSmoothCoeff(BlueFin::GlPeSlowFilter *this, char a2, unsigned int a3, unsigned int a4, double a5)
{
  if (a5 < 0.417 || (a2 & 1) != 0 || *(this + 6) == 0.0)
  {
    *(this + 14) = a3;
    return 1.0;
  }

  else
  {
    result = 0.5;
    if (a4 >= 0x1F)
    {
      v6 = *(this + 14);
      result = 0.1;
      if (v6)
      {
        v7 = a3 >= v6;
        v8 = a3 - v6;
        if (v8 != 0 && v7 && v8 >> 5 <= 0x752)
        {
          v9 = v8 * 0.001;
          if (v9 < 10.0)
          {
            return fmax(v9 / -10.0 + 1.0, 0.1);
          }
        }
      }
    }
  }

  return result;
}

double BlueFin::SmoothThresh(BlueFin *this, double a2, double a3, double a4)
{
  if (a4 > a3)
  {
    return 1024.0;
  }

  v4 = 1.0;
  if (a4 < a2)
  {
    return v4;
  }

  v6 = (a4 - a2) / (a3 - a2) * 10.0;
  v7 = vcvtmd_s64_f64(v6);
  return (1 << v7) + ((1 << vcvtpd_s64_f64(v6)) - (1 << v7)) * (v6 - v7);
}

float BlueFin::GlPeUrbanPosAsstRegion::unpackRegion(int *a1, uint64_t a2, float a3, float a4)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 - 0x7FFF;
  v8 = HIWORD(v5) - 0x7FFF;
  v9 = (*a1 >> 12) & 0xFFF;
  if ((*a1 & 0x10000000) != 0)
  {
    v10 = 25;
  }

  else
  {
    v10 = 15;
  }

  if ((v6 & 0x20000000) != 0)
  {
    v10 = 35;
  }

  if ((v6 & 0x40000000) != 0)
  {
    v10 = 60;
  }

  if (v6 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v10 - 5;
  }

  v12 = a3;
  v13 = (-v7 / 6367456.73 + a3 * 0.0174532925) * 57.2957795;
  v14 = a4;
  v15 = a3 * 0.0174532925;
  v16 = (-v8 / (cosf(v15) * 6367456.73) + a4 * 0.0174532925) * 57.2957795;
  if (v16 > 180.0)
  {
    v16 = 360.0 - v16;
  }

  *a2 = v13;
  *(a2 + 4) = v16;
  v17 = v9 / 10.0;
  *(a2 + 8) = v11;
  *(a2 + 12) = v17;
  if (fabs(v17 + -239.6) < 1.0 && v11 == 45 && *(a2 + 20) == 1 && (*(a2 + 22) & 1) == 0 && fabs(v12 + -47.614338) < 0.0001 && fabs(v14 + 122.332742) < 0.0001)
  {
    *(a2 + 8) = 1117126656;
  }

  result = (v6 & 0xFFF);
  *(a2 + 16) = result;
  *(a2 + 20) = (v6 & 0x2000000) != 0;
  *(a2 + 21) = (v6 & 0x4000000) != 0;
  *(a2 + 22) = (v6 & 0x8000000) != 0;
  return result;
}

uint64_t BlueFin::UrbanPosAsstRegionExt::UrbanPosAsstRegionExt(uint64_t a1, uint64_t a2)
{
  *(a1 + 240) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  v5 = *(a2 + 8);
  v4 = *(a2 + 12);
  *a1 = v5;
  if (v4 < 0.0 || (v6 = v4, v4 >= 360.0))
  {
    v6 = fmodf(v4, 360.0);
    if (v6 < 0.0)
    {
      v6 = v6 + 360.0;
    }
  }

  v7 = v6 * 0.017453;
  *(a1 + 4) = v6 * 0.017453;
  *(a1 + 8) = *(a2 + 20);
  *(a1 + 9) = *(a2 + 21);
  *(a1 + 11) = 0;
  v8 = *(a2 + 16);
  *(a1 + 12) = v8;
  *(a1 + 32) = vcvtq_f64_f32(*a2);
  v9 = __sincosf_stret(v6 * 0.017453);
  *(a1 + 16) = v9.__cosval;
  *(a1 + 20) = LODWORD(v9.__sinval);
  if ((v7 > 1.58 || v7 < 1.56) && (v7 > 4.72 || v7 < 4.71))
  {
    *(a1 + 24) = v9.__sinval / v9.__cosval;
  }

  v10 = v5 * v9.__cosval;
  v11 = v5 * v9.__sinval;
  v12 = (v5 * v9.__cosval) * 0.6;
  v13 = (v5 * v9.__sinval) * 0.6;
  v14 = v9.__cosval * v8;
  v15 = v9.__sinval * v8;
  v16 = -(v5 * v9.__cosval);
  *(a1 + 152) = (v5 * v9.__sinval);
  *(a1 + 160) = v16;
  *(a1 + 168) = 0;
  v17 = (v5 * v9.__sinval) + (v9.__cosval * v8);
  *(a1 + 176) = v17;
  *(a1 + 184) = ((v9.__sinval * v8) - (v5 * v9.__cosval));
  *(a1 + 192) = 0;
  *(a1 + 200) = -(v5 * v9.__sinval);
  *(a1 + 208) = (v5 * v9.__cosval);
  *(a1 + 216) = 0;
  *(a1 + 224) = (v9.__cosval * v8);
  *(a1 + 232) = (v9.__sinval * v8);
  *(a1 + 240) = 0;
  if (v4 < 0.0 || v4 > 90.0)
  {
    if (v4 <= 90.0 || v4 > 180.0)
    {
      if (v4 <= 180.0 || v4 > 270.0)
      {
        v18 = 0.0;
        if (v4 <= 270.0)
        {
          v16 = 0.0;
          v23 = 0.0;
          v17 = 0.0;
          v19 = 0.0;
          v20 = 0.0;
          v21 = 0.0;
          v22 = 0.0;
        }

        else
        {
          v16 = 0.0;
          v23 = 0.0;
          v17 = 0.0;
          v19 = 0.0;
          v20 = 0.0;
          v21 = 0.0;
          v22 = 0.0;
          if (v4 < 360.0)
          {
            v17 = v14 - v11;
            v19 = v15 - v12;
            v18 = (v9.__sinval * v8) - (v5 * v9.__cosval);
            v22 = v14 - v13;
            v16 = v5 * v9.__cosval;
            v23 = v5 * v9.__sinval;
            v20 = (v5 * v9.__cosval) * 0.6;
            v21 = (v5 * v9.__sinval) * 0.6;
          }
        }
      }

      else
      {
        v18 = v10 + v15;
        v19 = v12 + v15;
        v20 = -v12;
        v21 = v13 + v14;
        v23 = (v5 * v9.__sinval) + (v9.__cosval * v8);
        v17 = -(v5 * v9.__sinval);
        v22 = -v13;
      }
    }

    else
    {
      v23 = v14 - v11;
      v20 = v15 - v12;
      v18 = v5 * v9.__cosval;
      v21 = v14 - v13;
      v16 = (v9.__sinval * v8) - (v5 * v9.__cosval);
      v17 = v5 * v9.__sinval;
      v19 = (v5 * v9.__cosval) * 0.6;
      v22 = (v5 * v9.__sinval) * 0.6;
    }
  }

  else
  {
    v18 = -(v5 * v9.__cosval);
    v16 = v10 + v15;
    v19 = -v12;
    v20 = v12 + v15;
    v21 = -v13;
    v22 = v13 + v14;
    v23 = -(v5 * v9.__sinval);
  }

  *(a1 + 56) = v23;
  *(a1 + 64) = v18;
  *(a1 + 72) = 0;
  *(a1 + 80) = v17;
  *(a1 + 88) = v16;
  *(a1 + 96) = 0;
  *(a1 + 104) = v21;
  *(a1 + 112) = v19;
  *(a1 + 120) = 0;
  *(a1 + 128) = v22;
  *(a1 + 136) = v20;
  *(a1 + 144) = 0;
  return a1;
}

BlueFin::UrbanPosAsstRegionExt *BlueFin::UrbanPosAsstRegionExt::UrbanPosAsstRegionExt(BlueFin::UrbanPosAsstRegionExt *this, double a2, double a3, float a4, float a5, float a6, float a7, unsigned int a8)
{
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *this = a7;
  v16 = a6 >= 0.0 && a6 < 360.0;
  v17 = a6;
  if (!v16)
  {
    v17 = fmodf(a6, 360.0);
    if (v17 < 0.0)
    {
      v17 = v17 + 360.0;
    }
  }

  v18 = v17 * 0.017453;
  v19 = *&vshl_u16((*&vdup_n_s16(a8) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
  *(this + 1) = v18;
  *(this + 2) = vuzp1_s8(v19, v19).u32[0];
  *(this + 3) = a5;
  *(this + 4) = a2;
  *(this + 5) = a3;
  *(this + 6) = a4;
  v20 = __sincosf_stret(v18);
  *(this + 4) = LODWORD(v20.__cosval);
  *(this + 20) = LODWORD(v20.__sinval);
  if ((v18 > 1.58 || v18 < 1.56) && (v18 > 4.72 || v18 < 4.71))
  {
    *(this + 6) = v20.__sinval / v20.__cosval;
  }

  v21 = v20.__cosval * a7;
  v22 = v20.__sinval * a7;
  v23 = (v20.__cosval * a7) * 0.6;
  v24 = (v20.__sinval * a7) * 0.6;
  v25 = v20.__cosval * a5;
  v26 = v20.__sinval * a5;
  v27 = -(v20.__cosval * a7);
  *(this + 19) = (v20.__sinval * a7);
  *(this + 20) = v27;
  *(this + 21) = 0;
  v28 = (v20.__cosval * a5) + (v20.__sinval * a7);
  *(this + 22) = v28;
  *(this + 23) = ((v20.__sinval * a5) - (v20.__cosval * a7));
  *(this + 24) = 0;
  *(this + 25) = -(v20.__sinval * a7);
  *(this + 26) = (v20.__cosval * a7);
  *(this + 27) = 0;
  *(this + 28) = (v20.__cosval * a5);
  *(this + 29) = (v20.__sinval * a5);
  *(this + 30) = 0;
  if (a6 < 0.0 || a6 > 90.0)
  {
    if (a6 <= 90.0 || a6 > 180.0)
    {
      if (a6 <= 180.0 || a6 > 270.0)
      {
        v29 = 0.0;
        if (a6 <= 270.0)
        {
          v27 = 0.0;
          v34 = 0.0;
          v28 = 0.0;
          v30 = 0.0;
          v31 = 0.0;
          v32 = 0.0;
          v33 = 0.0;
        }

        else
        {
          v27 = 0.0;
          v34 = 0.0;
          v28 = 0.0;
          v30 = 0.0;
          v31 = 0.0;
          v32 = 0.0;
          v33 = 0.0;
          if (a6 < 360.0)
          {
            v28 = v25 - v22;
            v30 = v26 - v23;
            v29 = (v20.__sinval * a5) - (v20.__cosval * a7);
            v33 = v25 - v24;
            v27 = v20.__cosval * a7;
            v34 = v20.__sinval * a7;
            v31 = (v20.__cosval * a7) * 0.6;
            v32 = (v20.__sinval * a7) * 0.6;
          }
        }
      }

      else
      {
        v29 = v26 + v21;
        v30 = v26 + v23;
        v31 = -v23;
        v32 = v25 + v24;
        v34 = (v20.__cosval * a5) + (v20.__sinval * a7);
        v28 = -(v20.__sinval * a7);
        v33 = -v24;
      }
    }

    else
    {
      v34 = v25 - v22;
      v31 = v26 - v23;
      v29 = v20.__cosval * a7;
      v32 = v25 - v24;
      v27 = (v20.__sinval * a5) - (v20.__cosval * a7);
      v28 = v20.__sinval * a7;
      v30 = (v20.__cosval * a7) * 0.6;
      v33 = (v20.__sinval * a7) * 0.6;
    }
  }

  else
  {
    v29 = -(v20.__cosval * a7);
    v27 = v26 + v21;
    v30 = -v23;
    v31 = v26 + v23;
    v32 = -v24;
    v33 = v25 + v24;
    v34 = -(v20.__sinval * a7);
  }

  *(this + 7) = v34;
  *(this + 8) = v29;
  *(this + 9) = 0;
  *(this + 10) = v28;
  *(this + 11) = v27;
  *(this + 12) = 0;
  *(this + 13) = v32;
  *(this + 14) = v30;
  *(this + 15) = 0;
  *(this + 16) = v33;
  *(this + 17) = v31;
  *(this + 18) = 0;
  return this;
}

uint64_t BlueFin::UrbanPosAsstRegionExt::operator=(uint64_t a1, uint64_t a2)
{
  BlueFin::UrbanPosAsstRegionExt::UrbanPosAsstRegionExt(&v10, a2);
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 9) = v12;
  *(a1 + 11) = 0;
  v3 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v3;
  v4 = v17;
  *(a1 + 64) = v16;
  *(a1 + 80) = v4;
  v5 = v19;
  *(a1 + 96) = v18;
  *(a1 + 112) = v5;
  v6 = v21;
  *(a1 + 128) = v20;
  *(a1 + 144) = v6;
  v7 = v23;
  *(a1 + 160) = v22;
  *(a1 + 176) = v7;
  v8 = v25;
  *(a1 + 192) = v24;
  *(a1 + 208) = v8;
  *(a1 + 224) = v26;
  *(a1 + 240) = v27;
  *(a1 + 12) = v13;
  return a1;
}

uint64_t BlueFin::UrbanPosAsstRegionExt::isAngleWithinRange(BlueFin::UrbanPosAsstRegionExt *this, int a2, double a3)
{
  if (a2)
  {
      ;
    }

      ;
    }

    v4 = fabs(i);
    v5 = v4 > 5.498 || v4 < 0.785;
    v6 = v5 | *(this + 8) ^ 1;
    if (!v5 && (*(this + 8) & 1) == 0)
    {
      v6 = v4 >= 2.35659265;
      if (v4 > 3.92659265)
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t BlueFin::UrbanPosAsstRegionExt::isOkToUse(BlueFin::UrbanPosAsstRegionExt *this, double *a2, int a3, double a4, _BYTE *a5, int a6)
{
  if (*(this + 11))
  {

    return BlueFin::UrbanPosAsstRegionExt::isAngleWithinRange(this, a3, a4);
  }

  else
  {
    BlueFin::lla2ned(a2, this + 4, 0, v12);
    return BlueFin::UrbanPosAsstRegionExt::isNedPosInside(this, v12, a3, a5, a6, a4);
  }
}

uint64_t BlueFin::UrbanPosAsstRegionExt::isNedPosInside(uint64_t a1, double *a2, int a3, _BYTE *a4, int a5, double a6)
{
  *a4 = 0;
  v6 = *a2;
  v7 = a2[1];
  v8 = 56;
  if (a5)
  {
    v8 = 104;
  }

  v9 = 64;
  if (a5)
  {
    v9 = 112;
  }

  v10 = 80;
  if (a5)
  {
    v10 = 128;
  }

  v11 = 88;
  if (a5)
  {
    v11 = 136;
  }

  if (v7 < *(a1 + v9) || v7 > *(a1 + v11) || v6 < *(a1 + v8) || v6 > *(a1 + v10))
  {
    return 0;
  }

  v16 = *(a1 + 4);
  if (v16 > 0.01 && v16 < 6.27 && (v16 < 3.13 || v16 >= 3.15) && fabsf(*(a1 + 16)) >= 0.01)
  {
    v17 = *(a1 + 152);
    if (a5)
    {
      v17 = v17 * 0.6;
      v18 = *(a1 + 160) * 0.6;
      v19 = vdupq_n_s64(0x3FE3333333333333uLL);
      v20 = vmlaq_f64(vmulq_f64(*(a1 + 224), vdupq_n_s64(0x3FD999999999999AuLL)), v19, *(a1 + 176));
      v21 = vmulq_f64(*(a1 + 200), v19);
    }

    else
    {
      v18 = *(a1 + 160);
      v20 = *(a1 + 176);
      v21 = *(a1 + 200);
    }

    v22 = v6 - v17;
    v23 = v7 - v18;
    v24 = (v20.f64[1] - v18) * v23 + (v20.f64[0] - v17) * v22;
    v25 = (v20.f64[1] - v18) * (v20.f64[1] - v18) + (v20.f64[0] - v17) * (v20.f64[0] - v17);
    if (v24 < 0.0 || v24 > v25)
    {
      return 0;
    }

    v27 = v21.f64[0] - v17;
    v28 = v21.f64[1] - v18;
    v29 = v28 * v23 + v27 * v22;
    if (v29 < 0.0 || v29 > v28 * v28 + v27 * v27)
    {
      return 0;
    }
  }

  *a4 = 1;
  return BlueFin::UrbanPosAsstRegionExt::isAngleWithinRange(a1, a3, a6);
}

uint64_t BlueFin::UrbanPosAsstRegionExt::findCenterline(uint64_t a1, float64x2_t *a2, double *a3)
{
  *a3 = 0.0;
  a3[1] = 0.0;
  a3[2] = 0.0;
  v3 = *a2;
  v4 = *(a1 + 56);
  v5 = *(a1 + 80);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vcgeq_f64(v5, *a2), vcgeq_f64(*a2, v4))))))
  {
    return 0;
  }

  v7 = *(a1 + 4);
  if (v7 > 0.01 && v7 < 6.27 && (v7 < 3.13 || v7 >= 3.15))
  {
    if ((v7 > 1.58 || v7 < 1.56) && (v7 > 4.72 || v7 < 4.71))
    {
      v10 = *(a1 + 24);
      if (fabsf(v10) <= 0.00001)
      {
        return 0;
      }

      v11 = v10;
      v8 = a2->f64[1];
      v3.f64[0] = v3.f64[1] / v11;
    }

    else
    {
      v9 = vaddq_f64(v4, v5).f64[0];
      v8 = a2->f64[1];
      v3.f64[0] = 0.5 * v9;
    }
  }

  else
  {
    v8 = vmuld_lane_f64(0.5, vaddq_f64(v4, v5), 1);
  }

  *a3 = v3.f64[0];
  a3[1] = v8;
  result = 1;
  a3[2] = 0.0;
  return result;
}

uint64_t BlueFin::UrbanPosAsstRegionExt::getXtrackPos(uint64_t a1, double *a2, uint64_t a3)
{
  v14 = 0uLL;
  v15 = 0;
  BlueFin::lla2ned(a2, (a1 + 32), 0, v13.f64);
  Centerline = BlueFin::UrbanPosAsstRegionExt::findCenterline(a1, &v13, v14.f64);
  if (Centerline)
  {
    v6 = *(a1 + 4);
    if (v6 <= 1.58 && v6 >= 1.56 || v6 <= 4.72 && v6 >= 4.71 || v6 <= 0.01 || v6 >= 6.27 || v6 >= 3.13 && v6 < 3.15)
    {
      v11 = v14;
      v12 = v15;
    }

    else
    {
      v8 = vcvtq_f64_f32(*(a1 + 16));
      v11 = vmlaq_n_f64(v14, v8, -(v14.f64[0] - v13.f64[0]) * v8.f64[0]);
      v12 = 0;
    }

    BlueFin::ned2lla((a1 + 32), v11.f64, &v9);
    *a3 = v9;
    *(a3 + 16) = v10;
  }

  return Centerline;
}

void BlueFin::GlPeShrimpKf::DoInitNoneGnss(BlueFin::GlPeShrimpKf *this, const BlueFin::GlPeNavGnssState *a2)
{
  BlueFin::GlPeShrimpKf::SetInsLla(this, a2 + 1);
  *(this + 669) = *(this + 573);
  *(this + 335) = *(this + 287);
  v4 = (*(a2 + 20) * *(a2 + 20)) * 0.5;
  v5 = *(this + 83);
  *(v5[1] + 8) = v4;
  *(v5[2] + 16) = v4;
  *(v5[3] + 24) = (*(a2 + 21) * *(a2 + 21));
  v6 = *this;
  *(this + *(*this - 24) + 88) = *(a2 + 11);
  *(v5[7] + 56) = (*(a2 + 24) * *(a2 + 24));
  *(this + *(v6 - 24) + 152) = *(a2 + 19);
  *(v5[8] + 64) = (*(a2 + 40) * *(a2 + 40));
  v7 = *(this + 654);
  if (*(v7 + 584) != 1)
  {
    return;
  }

  if (*(a2 + 240) == 1)
  {
    *(this + 665) = sqrt(*(a2 + 14) * *(a2 + 14) + *(a2 + 13) * *(a2 + 13));
  }

  v8 = *(a2 + 51);
  if (v8)
  {
    if (BlueFin::GlPeShrimpKf::IsNotTurning(this, 1.0))
    {
      LOBYTE(v8) = 0;
      if (*(a2 + 46) >= 0.174532925 || *(a2 + 35) >= 1.0)
      {
        goto LABEL_23;
      }

      if (v7[80] >= *v7 && *(this + 649) == 1)
      {
        v9 = (this + 608);
        v10 = 3;
        while (1)
        {
          v11 = *v9;
          if (*v9 < 0.0)
          {
            v11 = -*v9;
          }

          if (v11 >= 0.5)
          {
            break;
          }

          v12 = *(v9 - 4);
          if (v12 < 0.0)
          {
            v12 = -v12;
          }

          if (v12 >= 0.5)
          {
            break;
          }

          v13 = *(v9 - 8) - *(this + 80);
          if (v13 < 0.0)
          {
            v13 = -v13;
          }

          if (v13 >= 0.5)
          {
            break;
          }

          ++v9;
          if (!--v10)
          {
            LOBYTE(v8) = *(this + 4904) ^ 1;
            goto LABEL_23;
          }
        }
      }
    }

    LOBYTE(v8) = 0;
  }

LABEL_23:
  if (v7[81] >= v7[1])
  {
    *(this + 4904) = 1;
    *(this + 609) = 0;
    *(this + 611) = 0;
    *(this + 610) = 0;
  }

  else
  {
    if ((v8 & 1) == 0)
    {
      return;
    }

    *(this + 4904) = 0;
    *(this + 4872) = *(a2 + 104);
    *(this + 611) = *(a2 + 15);
  }

  v14.f64[0] = *(v7 + 97);
  *(this + 579) = *(v7 + 85) * 0.0174532925;
  v14.f64[1] = *(v7 + 109);
  *(this + 290) = vmulq_f64(v14, vdupq_n_s64(0x3F91DF46A2529D34uLL));
  v48 = 0;
  v16 = *(v7 + 41);
  v46[0] = *(v7 + 29);
  v15 = v46[0];
  v46[1] = v16;
  v47 = *(v7 + 53);
  v17 = v47;
  BlueFin::QuaternionD::rotateV1toV2(this + 293, v46, BlueFin::GlPeShrimpKf::Design::GRAVITY_VEC);
  *&v45[16] = 0x100000003;
  v45[0] = 0.0;
  v45[4] = 0.0;
  v45[8] = -9.81;
  *v44 = v15;
  *&v44[4] = v16;
  v44[16] = 0x100000003;
  v44[8] = v17;
  v43 = 0;
  v36 = BlueFin::QuaternionD::conj((this + 4688));
  v37 = v18;
  v38 = v19;
  v39 = v20;
  BlueFin::QuaternionD::rotVec(&v36, v45, v42);
  BlueFin::Matrix::operator-(v44, v42, &v36);
  v21 = v40;
  v22 = v41;
  *(this + 576) = v36;
  *(this + 577) = v21;
  *(this + 578) = v22;
  v23 = *this;
  v24 = this + *(*this - 24);
  *(v24 + 104) = *(this + 4872);
  *(v24 + 15) = *(this + 611);
  *(this + 2) = 1;
  *(this + 1217) = *(this + *(v23 - 24) + 200);
  *(this + 612) = 0;
  v36 = BlueFin::QuaternionD::conj((this + 4688));
  v37 = v25;
  v38 = v26;
  v39 = v27;
  BlueFin::QuaternionD::qnb2Eul(&v36, &v35, &v34, &v33);
  if (!*(this + 1212))
  {
    v36 = 1.0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    *(this + 602) = BlueFin::QuaternionD::operator*(&v36, this + 586);
    *(this + 603) = v28;
    *(this + 604) = v29;
    *(this + 605) = v30;
  }

  v31 = *(this + 654);
  v32 = *(this + 83);
  *(v32[17] + 136) = v31[86] * 0.00030461742;
  *(v32[18] + 144) = v31[98] * 0.00030461742;
  *(v32[19] + 152) = v31[110] * 0.00030461742;
}

void *BlueFin::GlPeShrimpKf::SaveAprioriState(BlueFin::GlPeShrimpKf *this)
{
  BlueFin::GlPeShrimpKf::stReducedNavState::stReducedNavState(v8, this + *(*this - 24), this + 4608, this + 4632, this + 301, this + 293, this + 656);
  v2 = v8[1];
  *(this + 56) = v8[0];
  *(this + 72) = v2;
  v3 = v8[3];
  *(this + 88) = v8[2];
  *(this + 104) = v3;
  *(this + 15) = v9;
  *(this + 8) = v10;
  v4 = v13;
  *(this + 152) = v12;
  *(this + 168) = v4;
  v5 = v15;
  *(this + 184) = v14;
  *(this + 200) = v5;
  v6 = v17;
  *(this + 216) = v16;
  *(this + 18) = v11;
  *(this + 232) = v6;
  *(this + 248) = v18;
  result = BlueFin::SKFVector::Clone((this + 264), v19);
  *(this + 228) = v19[96];
  return result;
}

uint64_t BlueFin::GlPeShrimpKf::ApplyCrossTrackPosMeas(BlueFin::GlPeShrimpKf *this, double a2, double a3, double a4, int a5)
{
  v12[0] = v13;
  v12[1] = 0x1500000015;
  v13[0] = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v9 = __sincos_stret(a4);
  *&v13[1] = -v9.__sinval;
  v13[2] = *&v9.__cosval;
  return BlueFin::GlPeShrimpKf::MeasUpdateINS(this, v12, 18, a2, a3 * a3, 3.0, v10, a5);
}

void BlueFin::GlPeShrimpKf::ApplyYawMeas(BlueFin::GlPeShrimpKf *this, double a2, double a3)
{
  v73 = 0.0;
  v74 = 0.0;
  v40 = BlueFin::QuaternionD::conj((this + 4816));
  v41 = v6;
  *&v42[0] = v7;
  *(&v42[0] + 1) = v8;
  v61 = BlueFin::QuaternionD::operator*(this + 586, &v40);
  v62 = v9;
  v63 = v10;
  v64 = v11;
  v40 = BlueFin::QuaternionD::conj(&v61);
  v41 = v12;
  *&v42[0] = v13;
  *(&v42[0] + 1) = v14;
  BlueFin::QuaternionD::qnb2Eul(&v40, &v74, &v73, &v72);
  v16 = v73;
  v15 = v74;
  v71 = 0x300000003;
  v17 = __sincos_stret(a2);
  v18 = __sincos_stret(v16);
  v19 = __sincos_stret(v15);
  v61 = v17.__cosval * v18.__cosval;
  v62 = v17.__sinval * v18.__cosval;
  v63 = -v18.__sinval;
  v65 = v17.__cosval * (v19.__sinval * v18.__sinval) - v19.__cosval * v17.__sinval;
  v66 = v17.__sinval * (v19.__sinval * v18.__sinval) + v19.__cosval * v17.__cosval;
  v67 = v19.__sinval * v18.__cosval;
  v68 = v17.__cosval * (v19.__cosval * v18.__sinval) + v19.__sinval * v17.__sinval;
  v69 = v17.__sinval * (v19.__cosval * v18.__sinval) - v19.__sinval * v17.__cosval;
  v70 = v19.__cosval * v18.__cosval;
  v50.f64[0] = BlueFin::QuaternionD::conj((this + 4816));
  v50.f64[1] = v20;
  v51 = v21;
  v52 = v22;
  BlueFin::QuaternionD::q2Rot(&v50, &v40);
  BlueFin::Matrix::operator*(&v40, &v61, v60);
  v57 = 0x3FF0000000000000uLL;
  v58 = 0;
  v59 = 0;
  if ((BlueFin::QuaternionD::rot2Q(&v57, v60) & 1) == 0)
  {
    DeviceFaultNotify("glpe_shrimpkf.cpp", 2066, "ApplyYawMeas", "otQnb_.rot2Q(otCnb_)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_shrimpkf.cpp", 2066, "otQnb_.rot2Q(otCnb_)");
  }

  v54.f64[0] = BlueFin::QuaternionD::operator*(this + 586, v57.f64);
  v54.f64[1] = v23;
  v55 = v24;
  v56 = v25;
  BlueFin::QuaternionD::normalize(&v54);
  BlueFin::QuaternionD::q2Rot(&v54, &v50);
  v41 = 0x1500000015;
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v40 = COERCE_DOUBLE(v42);
  v44 = 0x3FF0000000000000;
  BlueFin::GlPeShrimpKf::MeasUpdateINS(this, &v40, 15, (v50.f64[1] - v53) * 0.5, a3 * a3, 5.0, v26, 1);
  v75 = BlueFin::QuaternionD::conj((this + 4816));
  v76 = v27;
  v77 = v28;
  v78 = v29;
  v36[0] = BlueFin::QuaternionD::operator*(this + 586, &v75);
  v36[1] = v30;
  v36[2] = v31;
  v36[3] = v32;
  v75 = BlueFin::QuaternionD::conj(v36);
  v76 = v33;
  v77 = v34;
  v78 = v35;
  BlueFin::QuaternionD::qnb2Eul(&v75, &v39, &v38, &v37);
}

double BlueFin::GlPeShrimpKf::GetVelVeh(BlueFin::GlPeShrimpKf *this, BlueFin::Matrix *a2)
{
  if (*(this + 2) == 2)
  {
    v34 = v5;
    v35 = v4;
    v36 = v2;
    v37 = v3;
    v8 = (this + *(*this - 24));
    v9 = v8[14];
    v10 = v8[15];
    v25[0] = v8[13];
    v25[4] = v9;
    *&v25[16] = 0x100000003;
    v25[8] = v10;
    v27 = BlueFin::QuaternionD::conj((this + 4816));
    v28 = v11;
    v29 = v12;
    v30 = v13;
    v26[0] = BlueFin::QuaternionD::operator*(this + 586, &v27);
    v26[1] = v14;
    v26[2] = v15;
    v26[3] = v16;
    v27 = BlueFin::QuaternionD::conj(v26);
    v28 = v17;
    v29 = v18;
    v30 = v19;
    BlueFin::QuaternionD::rotVec(&v27, v25, a2);
    v33 = 0;
    v20 = *(this + 624);
    v27 = *(this + 623);
    v31 = v20;
    v32 = *(this + 625);
    BlueFin::QuaternionD::rotVec(this + 602, &v27, v26);
    v27 = *v26;
    v31 = v26[4];
    v33 = 0x100000003;
    v32 = v26[8];
    BlueFin::vcross(&v27, v26);
    v23[0] = v24;
    v23[1] = 0x300000000;
    memset(v24, 0, sizeof(v24));
    BlueFin::SKFVector::mult(v23, v26, (this + 5264));
    v21 = v23[0];
    *a2 = *a2 - *(v23[0] + 8);
    *(a2 + 4) = *(a2 + 4) - *(v21 + 16);
    result = *(a2 + 8) - *(v21 + 24);
    *(a2 + 8) = result;
  }

  return result;
}

uint64_t BlueFin::GlPeShrimpKf::DoInitTiltSensor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((a4 - *(a1 + 4856)) * 0.001 <= 0.0)
  {
    DeviceFaultNotify("glpe_shrimpkf.cpp", 1280, "DoInitTiltSensor", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_shrimpkf.cpp", 1280, "0");
  }

  v5 = **a1;

  return v5();
}

void BlueFin::GlPeShrimpKf::DoInitDoneSensor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = (a4 - *(a1 + 4856));
  if (v4 * 0.001 <= 0.0)
  {
    DeviceFaultNotify("glpe_shrimpkf.cpp", 1291, "DoInitDoneSensor", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_shrimpkf.cpp", 1291, "0");
  }

  (**a1)(a1, a3, a2, v4 * 0.001);

  BlueFin::GlPeShrimpKf::PropKf(a1, a2);
}

void BlueFin::GlPeShrimpKf::PropKf(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v148 = *MEMORY[0x29EDCA608];
  BlueFin::BigMatrixDim<21,21>::BigMatrixDim(&v133, 21, 21);
  BlueFin::QuaternionD::q2Rot((v7 + 4688), v131);
  v8 = v6[1];
  v124 = *v6;
  v128 = v8;
  v9 = v6[2];
  v130 = 0x100000003;
  v129 = v9;
  v144 = 0;
  BlueFin::QuaternionD::rotVec((v7 + 4688), &v124, v143);
  BlueFin::vcross(v143, v136);
  v10 = 0;
  v11 = 0;
  v12 = v134;
  v13 = v134 + 9;
  do
  {
    v14 = (v12[v11 + 4] + 72);
    v15 = v13[v11];
    v16 = v10;
    for (i = 17; i != 20; ++i)
    {
      *v14 = -*(v136 + v16);
      v18 = -*&v131[v16];
      v14[3] = v18;
      *(v15 + 8 * i) = v18;
      v16 += 8;
      ++v14;
    }

    *(*(v12 + ((8 * v11) | 0x60)) + ((8 * v11) | 0x60)) = 0xBEE4F8B588E368F1;
    *(v12[v11 + 17] + 8 * v11 + 136) = 0xBF1A36E2EB1C432DLL;
    ++v11;
    v10 += 32;
  }

  while (v11 != 3);
  *(v12[1] + 32) = 0x3FF0000000000000;
  *(v12[2] + 40) = 0x3FF0000000000000;
  *(v12[3] + 48) = 0x3FF0000000000000;
  *(v12[7] + 64) = 0x3FF0000000000000;
  BlueFin::BigMatrixDim<21,21>::BigMatrixDim(v131, (v7 + 656));
  v19 = *(v7 + 672);
  v20 = *(v7 + 676);
  if (v19 != v20 || __PAIR64__(v20, v19) != v135)
  {
    goto LABEL_130;
  }

  if (v19 < 1)
  {
    goto LABEL_61;
  }

  v21 = v19 + 1;
  v22 = v132;
  v23 = 1;
  do
  {
    v24 = 0;
    v25 = v134;
    v26 = *(v22 + 8 * v23);
    v27 = *(*(v7 + 664) + 8 * v23) + 72;
    do
    {
      v28 = 0;
      v29 = 0.0;
      do
      {
        v29 = v29 + *(v27 + v28) * *(v25[v24 + 4] + 72 + v28);
        v28 += 8;
      }

      while (v28 != 24);
      *(v26 + 8 * (v24 + 4)) = *(v26 + 8 * (v24 + 4)) + v4 * v29;
      ++v24;
    }

    while (v24 != 3);
    ++v23;
  }

  while (v23 != v21);
  if (v19 != v135 || v19 != HIDWORD(v135))
  {
    goto LABEL_130;
  }

  v30 = 1;
  do
  {
    v31 = 0;
    v32 = v134;
    v33 = *(v22 + 8 * v30);
    v34 = *(*(v7 + 664) + 8 * v30) + 96;
    do
    {
      v35 = 0;
      v36 = 0.0;
      do
      {
        v36 = v36 + *(v34 + v35) * *(v32[v31 + 4] + 96 + v35);
        v35 += 8;
      }

      while (v35 != 24);
      *(v33 + 8 * (v31 + 4)) = *(v33 + 8 * (v31 + 4)) + v4 * v36;
      ++v31;
    }

    while (v31 != 3);
    ++v30;
  }

  while (v30 != v21);
  if (v19 != v135 || v19 != HIDWORD(v135))
  {
LABEL_130:
    DeviceFaultNotify("glpe_matrix.h", 553, "mult_sparse_add", "otA.m_NbRows == otA.m_NbCols && otA.m_NbRows == otB.m_NbRows && otA.m_NbCols == otB.m_NbCols");
    v123 = 553;
    goto LABEL_132;
  }

  v37 = 1;
  do
  {
    v38 = 0;
    v39 = v134;
    v40 = *(v22 + 8 * v37);
    v41 = *(*(v7 + 664) + 8 * v37) + 136;
    do
    {
      v42 = 0;
      v43 = 0.0;
      do
      {
        v43 = v43 + *(v41 + v42) * *(v39[v38 + 9] + 136 + v42);
        v42 += 8;
      }

      while (v42 != 24);
      *(v40 + 8 * (v38 + 9)) = *(v40 + 8 * (v38 + 9)) + v4 * v43;
      ++v38;
    }

    while (v38 != 3);
    ++v37;
  }

  while (v37 != v21);
  if (v19 != v135 || v19 != HIDWORD(v135))
  {
    goto LABEL_128;
  }

  v44 = *(v7 + 664);
  v45 = v134;
  v46 = 1;
  do
  {
    v47 = *(v44 + 8 * v46);
    v48 = *(v22 + 8 * v46);
    for (j = 96; j != 120; j += 8)
    {
      *(v48 + j) = *(v48 + j) + *(v47 + j) * v4 * *(v45[j / 8] + j);
    }

    ++v46;
  }

  while (v46 != v21);
  if (v19 != v135 || v19 != HIDWORD(v135))
  {
    goto LABEL_128;
  }

  v51 = *(v7 + 664);
  v52 = v134;
  v53 = 1;
  do
  {
    v54 = *(v51 + 8 * v53);
    v55 = *(v22 + 8 * v53);
    for (k = 136; k != 160; k += 8)
    {
      *(v55 + k) = *(v55 + k) + *(v54 + k) * v4 * *(v52[k / 8] + k);
    }

    ++v53;
  }

  while (v53 != v21);
  if (v19 != v135 || v19 != HIDWORD(v135))
  {
    goto LABEL_128;
  }

  v58 = *(v7 + 664);
  v59 = v134 + 1;
  v60 = 1;
  do
  {
    v61 = 0;
    v62 = *(v22 + 8 * v60) + 8;
    v63 = *(v58 + 8 * v60) + 32;
    do
    {
      *(v62 + v61) = *(v62 + v61) + *(v63 + v61) * v4 * *(v59[v61 / 8] + v61 + 32);
      v61 += 8;
    }

    while (v61 != 24);
    ++v60;
  }

  while (v60 != v21);
  if (v19 != v135 || v19 != HIDWORD(v135))
  {
LABEL_128:
    DeviceFaultNotify("glpe_matrix.h", 594, "mult_sparse_diag_add", "otA.m_NbRows == otA.m_NbCols && otA.m_NbRows == otB.m_NbRows && otA.m_NbCols == otB.m_NbCols");
    v123 = 594;
    goto LABEL_132;
  }

  v65 = v134[7];
  v66 = v21 - 1;
  v67 = (v22 + 8);
  v68 = (*(v7 + 664) + 8);
  do
  {
    v70 = *v68++;
    v69 = v70;
    v71 = *v67++;
    *(v71 + 56) = *(v71 + 56) + *(v69 + 64) * v4 * *(v65 + 64);
    --v66;
  }

  while (v66);
LABEL_61:
  BlueFin::BigMatrixDim<21,21>::BigMatrixDim(&v124, v131);
  v72 = v135;
  if (v135 != HIDWORD(v135) || v135 != v126 || HIDWORD(v135) != v127)
  {
LABEL_131:
    DeviceFaultNotify("glpe_matrix.h", 573, "mult_sparse_add", "otA.m_NbRows == otA.m_NbCols && otA.m_NbRows == otB.m_NbRows && otA.m_NbCols == otB.m_NbCols");
    v123 = 573;
LABEL_132:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.h", v123, "otA.m_NbRows == otA.m_NbCols && otA.m_NbRows == otB.m_NbRows && otA.m_NbCols == otB.m_NbCols");
  }

  if (v135 >= 1)
  {
    v75 = v135 + 1;
    v76 = v132;
    v77 = 1;
    do
    {
      v78 = 0;
      v79 = v134;
      v80 = v125 + 72;
      do
      {
        v81 = 0;
        v82 = 0.0;
        do
        {
          v82 = v82 + *(v79[v78 + 4] + 72 + v81) * *(*(v80 + v81) + 8 * v77);
          v81 += 8;
        }

        while (v81 != 24);
        *(*(v76 + 8 * (v78 + 4)) + 8 * v77) = *(*(v76 + 8 * (v78 + 4)) + 8 * v77) + v4 * v82;
        ++v78;
      }

      while (v78 != 3);
      ++v77;
    }

    while (v77 != v75);
    if (v72 != v126 || v72 != v127)
    {
      goto LABEL_131;
    }

    v83 = 1;
    do
    {
      v84 = 0;
      v85 = v134;
      v86 = v125 + 96;
      do
      {
        v87 = 0;
        v88 = 0.0;
        do
        {
          v88 = v88 + *(v85[v84 + 4] + 96 + v87) * *(*(v86 + v87) + 8 * v83);
          v87 += 8;
        }

        while (v87 != 24);
        *(*(v76 + 8 * (v84 + 4)) + 8 * v83) = *(*(v76 + 8 * (v84 + 4)) + 8 * v83) + v4 * v88;
        ++v84;
      }

      while (v84 != 3);
      ++v83;
    }

    while (v83 != v75);
    if (v72 != v126 || v72 != v127)
    {
      goto LABEL_131;
    }

    v89 = 1;
    do
    {
      v90 = 0;
      v91 = v134;
      v92 = v125 + 136;
      do
      {
        v93 = 0;
        v94 = 0.0;
        do
        {
          v94 = v94 + *(v91[v90 + 9] + 136 + v93) * *(*(v92 + v93) + 8 * v89);
          v93 += 8;
        }

        while (v93 != 24);
        *(*(v76 + 8 * (v90 + 9)) + 8 * v89) = *(*(v76 + 8 * (v90 + 9)) + 8 * v89) + v4 * v94;
        ++v90;
      }

      while (v90 != 3);
      ++v89;
    }

    while (v89 != v75);
    if (v72 != v126 || v72 != v127)
    {
      goto LABEL_129;
    }

    v95 = v134;
    v96 = v125;
    v97 = 1;
    do
    {
      for (m = 96; m != 120; m += 8)
      {
        *(*(v76 + m) + 8 * v97) = *(*(v76 + m) + 8 * v97) + *(v95[m / 8] + m) * v4 * *(*(v96 + m) + 8 * v97);
      }

      ++v97;
    }

    while (v97 != v75);
    if (v72 != v126 || v72 != v127)
    {
      goto LABEL_129;
    }

    v99 = v134;
    v100 = v125;
    v101 = 1;
    do
    {
      for (n = 136; n != 160; n += 8)
      {
        *(*(v76 + n) + 8 * v101) = *(*(v76 + n) + 8 * v101) + *(v99[n / 8] + n) * v4 * *(*(v100 + n) + 8 * v101);
      }

      ++v101;
    }

    while (v101 != v75);
    if (v72 != v126 || v72 != v127)
    {
      goto LABEL_129;
    }

    v103 = v125 + 32;
    v104 = v134 + 1;
    v105 = 1;
    do
    {
      for (ii = 0; ii != 24; ii += 8)
      {
        *(*(v76 + 8 + ii) + 8 * v105) = *(*(v76 + 8 + ii) + 8 * v105) + *(v104[ii / 8] + ii + 32) * v4 * *(*(v103 + ii) + 8 * v105);
      }

      ++v105;
    }

    while (v105 != v75);
    if (v72 != v126 || v72 != v127)
    {
LABEL_129:
      DeviceFaultNotify("glpe_matrix.h", 609, "mult_sparse_diag_add", "otA.m_NbRows == otA.m_NbCols && otA.m_NbRows == otB.m_NbRows && otA.m_NbCols == otB.m_NbCols");
      v123 = 609;
      goto LABEL_132;
    }

    v107 = v134[7];
    v108 = v75 - 1;
    v109 = (*(v76 + 56) + 8);
    v110 = (*(v125 + 64) + 8);
    do
    {
      v111 = *v110++;
      *v109 = *v109 + *(v107 + 64) * v4 * v111;
      ++v109;
      --v108;
    }

    while (v108);
  }

  BlueFin::BigMatrix::Clone((v7 + 656), v131);
  BlueFin::QuaternionD::q2Rot((v7 + 4688), v143);
  v136[2] = 0.0;
  v136[1] = 0.0;
  v146 = 0;
  v147 = 0;
  v112 = *(v7 + 5232);
  v113 = v112[65] * v112[65];
  v114 = v112[66] * v112[66];
  v136[0] = v112[64] * v112[64];
  v136[4] = 0.0;
  v137 = v113;
  v138 = 0;
  v140 = 0;
  v139 = v145;
  v141 = v114;
  v142 = 0x300000003;
  BlueFin::Matrix::RotateCovMatrix(v136, v143);
  v137 = v137 + 0.01;
  v141 = v141 + 0.01;
  v115 = *(v7 + 664);
  *(v115[4] + 32) = *(v115[4] + 32) + (v136[0] + 0.01) * v4 * v4;
  *(v115[5] + 40) = *(v115[5] + 40) + v137 * v4 * v4;
  *(v115[6] + 48) = *(v115[6] + 48) + v141 * v4 * v4;
  v116 = *(v7 + 5232);
  v117 = v116[113] * 0.0174532925 * (v116[113] * 0.0174532925) + 0.0000761543549;
  v118 = v116[114] * 0.0174532925 * (v116[114] * 0.0174532925) + 0.0000761543549;
  v119 = v116[115] * 0.0174532925 * (v116[115] * 0.0174532925) + 0.0000761543549;
  *(v115[9] + 72) = *(v115[9] + 72) + v117 * v4 * v4;
  *(v115[10] + 80) = *(v115[10] + 80) + v118 * v4 * v4;
  *(v115[11] + 88) = *(v115[11] + 88) + v119 * v4 * v4;
  *(v115[12] + 96) = v4 * 0.000000025 + *(v115[12] + 96);
  *(v115[13] + 104) = v4 * 0.000000025 + *(v115[13] + 104);
  *(v115[14] + 112) = v4 * 0.000000025 + *(v115[14] + 112);
  *(v115[17] + 136) = v4 * 0.00000000121846968 + *(v115[17] + 136);
  *(v115[18] + 144) = v4 * 0.00000000121846968 + *(v115[18] + 144);
  *(v115[19] + 152) = v4 * 0.00000000121846968 + *(v115[19] + 152);
  if (!*(*(v7 + 5240) + 84))
  {
    *(v115[1] + 8) = *(v115[1] + 8) + v4 * 0.199809;
    *(v115[2] + 16) = *(v115[2] + 16) + v4 * 0.199809;
    *(v115[3] + 24) = *(v115[3] + 24) + v4 * 0.799236;
    v120 = *(v7 + 5552) / *(v7 + 5576);
    if (*(v7 + 5768) / *(v7 + 5792) >= v120)
    {
      v120 = *(v7 + 5768) / *(v7 + 5792);
    }

    if (v120 > 10.0 && v120 > 1.0)
    {
      v120 = 10.0;
    }

    if (v118 >= v117)
    {
      v117 = v118;
    }

    if (v119 >= v117)
    {
      v117 = v119;
    }

    v122 = v117 * (v120 * v120) * v4 * v4;
    *(v115[15] + 120) = *(v115[15] + 120) + v122;
    *(v115[16] + 128) = *(v115[16] + 128) + v122;
  }

  *(v115[20] + 160) = *(v115[20] + 160) + v4 * 0.000001;
  *(v115[21] + 168) = *(v115[21] + 168) + v4 * 0.000025;
}

void BlueFin::GlPeShrimpKf::GnssUpdate(BlueFin::GlPeShrimpKf *this, const BlueFin::GlPeNavGnssState *a2)
{
  v501 = *MEMORY[0x29EDCA608];
  v5 = *(*(this + 653) + 8);
  if (v5 == 3)
  {
    if ((*(this + 48) & 1) == 0)
    {
      v6 = (this + 16);
LABEL_7:
      *v6 = 0x3FB999999999999ALL;
      v7 = 1;
      v8 = 12.5;
      v9 = 10;
      v10 = 1.5;
      goto LABEL_10;
    }

LABEL_6:
    v7 = 1;
    goto LABEL_11;
  }

  v6 = (this + 16);
  v7 = *(this + 48);
  if (v5 == 2)
  {
    if ((*(this + 48) & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!*(this + 48))
  {
    goto LABEL_11;
  }

  v7 = 0;
  *v6 = 0x3FD999999999999ALL;
  v9 = 3;
  v10 = 2.0;
  v8 = 83.3000031;
LABEL_10:
  *(this + 3) = v10;
  *(this + 32) = v9;
  *(this + 5) = v8;
LABEL_11:
  *(this + 48) = v7;
  v11 = *(a2 + 50);
  if (v11 == *(this + 1215))
  {
    v394 = "ulIntervalMs > 0";
    DeviceFaultNotify("glpe_shrimpkf.cpp", 1331, "GnssUpdate", "ulIntervalMs > 0");
    v395 = 1331;
    goto LABEL_374;
  }

  v12 = (this + 544);
  if ((*(a2 + 240) & 1) == 0)
  {
    *(this + 163) = 0;
    *v12 = 0u;
    *(this + 35) = 0u;
    *(this + 38) = 0u;
    *(this + 39) = 0u;
    *(this + 634) = 0u;
    goto LABEL_28;
  }

  v13 = *(this + 163);
  if (v13)
  {
    v14 = v11 - v13;
    if (!v14 || v14 >= 0x5DC)
    {
      *(this + 163) = 0;
      *v12 = 0u;
      *(this + 35) = 0u;
      *(this + 38) = 0u;
      *(this + 39) = 0u;
      *(this + 634) = 0u;
    }
  }

  v15 = sqrt(*(a2 + 14) * *(a2 + 14) + *(a2 + 13) * *(a2 + 13));
  v16 = *(a2 + 32);
  v17 = v15 - *(this + 68);
  *(this + 80) = *(this + 80) + (v15 - *(this + 80)) * 0.899999976;
  v18 = *(this + 648);
  if (v18 <= 0)
  {
    *(this + 68) = v15;
    *(this + 72) = v16;
    v23 = v18 + 1;
    *(this + 76) = v17;
LABEL_26:
    *(this + 648) = v23;
    goto LABEL_27;
  }

  v19 = v18 + 1;
  v20 = v18 + 0xFFFFFFFFLL;
  v21 = (this + 8 * v18 + 608);
  do
  {
    v22 = 8 * v20;
    *(v21 - 8) = *(v12 + v22);
    *(v21 - 4) = *(this + v22 + 576);
    *v21-- = *(this + v22 + 608);
    --v19;
    --v20;
  }

  while (v19 > 1);
  *(this + 68) = v15;
  *(this + 72) = v16;
  *(this + 76) = v17;
  *(this + 648) = v18 + 1;
  if ((v18 + 1) == 4)
  {
    *(this + 649) = 1;
LABEL_25:
    v23 = 3;
    goto LABEL_26;
  }

  if ((v18 + 1) >= 4)
  {
    goto LABEL_25;
  }

LABEL_27:
  *(this + 163) = v11;
LABEL_28:
  v24 = (this + 4688);
  *&v494[0] = BlueFin::QuaternionD::conj((this + 4720));
  *(&v494[0] + 1) = v25;
  *&v494[1] = v26;
  *(&v494[1] + 1) = v27;
  *(this + 598) = BlueFin::QuaternionD::operator*(this + 586, v494);
  *(this + 599) = v28;
  *(this + 600) = v29;
  *(this + 601) = v30;
  v31 = *(this + 294);
  v405[0] = *(this + 293);
  v405[1] = v31;
  v32 = *(this + 2);
  if (v32 == 2)
  {
    *(this + 2656) = 0;
    if (*(*(this + 654) + 162) < **(this + 654) || *(this + *(*this - 24) + 240) == 1 && *(this + 629) >= 6.0822)
    {
      v44 = (this + 4688);
      v45 = 0;
    }

    else
    {
      v44 = (this + 4688);
      (*(*this + 24))(this, a2);
      v45 = 1;
      *(this + 5312) = 1;
    }

    *(this + 5312) = v45 & *(a2 + 240);
    v46 = *(this + 657);
    v47 = *v46;
    if (*v46 != 1)
    {
      *(this + 2426) = 1;
    }

    v48 = *this;
    v49 = *this;
    v50 = *(*this - 24);
    if ((*(this + 5818) & 1) != 0 || (v51 = (this + v50), v52 = *(this + v50 + 200), v53 = *(this + 655), (v52 - *(v53 + 100)) * 0.001 <= 40.0) || *(v53 + 84) == 1 || !BlueFin::GlPeShrimpKf::IsNotTurning(this, 3.0) || (*(*(this + 654) + 162) < **(this + 654) || *(v51 + 240) == 1 && *(this + 629) >= 6.0822) && sqrt(v51[14] * v51[14] + v51[13] * v51[13]) >= 1.5)
    {
LABEL_98:
      v129 = *(a2 + 51);
      v24 = v44;
      if (*(this + 5818) == 1 && v129)
      {
        v130 = *(a2 + 20);
        v131 = *(a2 + 21);
        BlueFin::lla2ned(a2 + 1, (this + *(*this - 24) + 8), 0, v494);
        v132 = v494[0];
        v2 = *&v494[1];
        *(&v494[0] + 1) = 0x1500000015;
        *&v494[0] = &v494[1];
        memset(&v494[2], 0, 160);
        *&v494[1] = 0;
        *(&v494[1] + 1) = 0x3FF0000000000000;
        *&v494[11] = *(this + *(*this - 24) + 104);
        v133 = v130 * v130;
        BlueFin::GlPeShrimpKf::MeasUpdateINS(this, v494, 0, *&v132, v133, 5.0, v134, 0);
        v135 = *&v494[0];
        bzero((*&v494[0] + 8), 8 * SDWORD2(v494[0]));
        *(v135 + 16) = 0x3FF0000000000000;
        *(v135 + 160) = *(this + *(*this - 24) + 112);
        BlueFin::GlPeShrimpKf::MeasUpdateINS(this, v494, 1, *(&v132 + 1), v133, 5.0, v136, 0);
        v137 = *&v494[0];
        bzero((*&v494[0] + 8), 8 * SDWORD2(v494[0]));
        *(v137 + 24) = 0x3FF0000000000000;
        *(v137 + 160) = *(this + *(*this - 24) + 120);
        BlueFin::GlPeShrimpKf::MeasUpdateINS(this, v494, 2, v2, v131 * v131, 5.0, v138, 0);
        *(this + 5313) = 1;
        v129 = *(a2 + 51);
      }

      if (v129 == 3)
      {
        BlueFin::GlPeShrimpKf::ApplyYawMeas(this, *(a2 + 44), *(a2 + 46));
      }

      (*(*this + 32))(this);
      if (*(*(this + 654) + 162) >= **(this + 654) && (*(this + *(*this - 24) + 240) != 1 || *(this + 629) < 6.0822))
      {
        (*(*this + 40))(this);
        v140 = *(this + 654);
        v141 = v140[80] * 0.0174532925;
        if (v141 >= 2.22044605e-16)
        {
          v142 = v140[92] * 0.0174532925;
          if (v142 >= 2.22044605e-16)
          {
            v143 = v140[104] * 0.0174532925;
            if (v143 >= 2.22044605e-16)
            {
              v144 = v140[79] * 0.0174532925 - *(this + 579);
              *(&v494[0] + 1) = 0x1500000015;
              *&v494[0] = &v494[1];
              memset(&v494[9] + 8, 0, 40);
              memset(&v494[1], 0, 136);
              *(&v494[9] + 1) = 0x3FF0000000000000;
              BlueFin::GlPeShrimpKf::MeasUpdateINS(this, v494, 8, v144, v141 * v141, 5.0, v139, 0);
              v145 = *(*(this + 654) + 728) * 0.0174532925 - *(this + 580);
              v146 = *&v494[0];
              bzero((*&v494[0] + 8), 8 * SDWORD2(v494[0]));
              *(v146 + 144) = 0x3FF0000000000000;
              BlueFin::GlPeShrimpKf::MeasUpdateINS(this, v494, 9, v145, v142 * v142, 5.0, v147, 0);
              v2 = *(*(this + 654) + 824) * 0.0174532925 - *(this + 581);
              v148 = *&v494[0];
              bzero((*&v494[0] + 8), 8 * SDWORD2(v494[0]));
              *(v148 + 152) = 0x3FF0000000000000;
              BlueFin::GlPeShrimpKf::MeasUpdateINS(this, v494, 10, v2, v143 * v143, 5.0, v149, 0);
            }
          }
        }
      }

      *&v494[0] = 0;
      v418[0] = 0;
      ExtAlt = BlueFin::GlPeAltMgr::GetExtAlt(*(this + 656), (this + *(*this - 24) + 8), v494, v418);
      switch(ExtAlt)
      {
        case 4:
          v161 = *(this + 653);
          v162 = *(v161 + 20) == 1 && (*(v161 + 16) & 0xFFFFFFFE) == 2;
          v198 = *(this + 655);
          v199 = *(v198 + 8);
          v200 = *this;
          if (v199)
          {
            v201 = (*(this + *(v200 - 24) + 200) - v199) >> 5 < 0x271;
          }

          else
          {
            v201 = 0;
          }

          if (BlueFin::GlSetBase::Cnt((this + *(v200 - 24) + 264)) >= 0xB && !v201 && (*(v198 + 1) & 1) == 0)
          {
            v202 = *(v198 + 2) < 1 ? 1 : *(v198 + 45);
            if ((v162 & v202) == 1)
            {
              v154 = *v494;
              v155 = v418[0];
              v156 = 7.0;
              goto LABEL_115;
            }
          }

          break;
        case 2:
          v154 = *v494;
          v155 = v418[0];
          v156 = 3.0;
          goto LABEL_115;
        case 1:
          v154 = *v494;
          v155 = v418[0];
          v156 = 5.0;
LABEL_115:
          BlueFin::GlPeShrimpKf::ApplyAltMeas(this, v154, *&v155, v156, v151, v152, v153);
          break;
      }

      if (*(this + 5312) & 1) != 0 || (*(this + 5314))
      {
        v158 = *(a2 + 13);
        v157 = *(a2 + 14);
        *(this + 665) = sqrt(v157 * v157 + v158 * v158);
        *(this + 1256) = *(a2 + 50);
        v159 = *(this + 2);
        if (v159 == 2 && !*(this + 5816))
        {
          goto LABEL_130;
        }

        if (sqrt((v157 - *(this + 610)) * (v157 - *(this + 610)) + (v158 - *(this + 609)) * (v158 - *(this + 609))) > *(this + 3))
        {
          if (*(this + 5328) || *(this + 5348) || *(this + 5349))
          {
            v160 = 3;
          }

          else
          {
            v160 = *(this + 5816) - 1;
          }

          *(this + 5816) = v160;
        }
      }

      else
      {
        v159 = *(this + 2);
      }

      if (v159 != 2)
      {
LABEL_135:
        *&v425 = 0;
        BlueFin::GlPeShrimpKf::GetVelVeh(this, v418);
        v167 = *(this + 5602);
        *(this + *(this + 5601) + 701) = -*v420 / sqrt(v2);
        v168 = *(this + 5601);
        if (v168 == 19)
        {
          v169 = 0;
        }

        else
        {
          v169 = v168 + 1;
        }

        *(this + 5601) = v169;
        if (v167 == 20)
        {
          *(this + 5600) = v169;
        }

        else
        {
          *(this + 5602) = v167 + 1;
        }

        v170 = *(this + 5386);
        *(this + *(this + 5385) + 674) = -*&v421 / sqrt(v440[4]);
        v171 = *(this + 5385);
        if (v171 == 19)
        {
          v172 = 0;
        }

        else
        {
          v172 = v171 + 1;
        }

        *(this + 5385) = v172;
        if (v170 == 20)
        {
          *(this + 5384) = v172;
        }

        else
        {
          *(this + 5386) = v170 + 1;
        }

        v173 = this + *(*this - 24);
        v494[0] = *(v173 + 8);
        v494[1] = *(v173 + 3);
        v494[3] = *(v173 + 104);
        *&v494[4] = *(v173 + 15);
        DWORD2(v494[4]) = *(v173 + 44);
        v174 = *(v173 + 19);
        *&v494[5] = *(v173 + 11);
        *(&v494[5] + 1) = v174;
        v175 = *(this + 289);
        v494[6] = *(this + 288);
        v494[7] = v175;
        v176 = *(this + 301);
        v494[8] = *(this + 290);
        v494[9] = v176;
        v177 = *v44;
        v178 = *(v44 + 1);
        v494[10] = *(this + 302);
        v494[11] = v177;
        v494[2] = 0uLL;
        v494[12] = v178;
        v495 = v497;
        v496 = 0x1500000000;
        memset(v497, 0, sizeof(v497));
        memset(v498, 0, sizeof(v498));
        v500 = 1;
        if (*(this + 457) == 1)
        {
          v499 = 1;
          BlueFin::lla2ned(v494, this + 7, 0, &v434);
          *(&v494[1] + 8) = v434;
          *(&v494[2] + 1) = v435;
          v494[3] = vsubq_f64(v494[3], *(this + 104));
          *&v494[4] = *&v494[4] - *(this + 15);
          v179 = vsubq_f64(v494[6], *(this + 152));
          v494[5] = vsubq_f64(v494[5], *(this + 136));
          v494[6] = v179;
          v180 = vsubq_f64(v494[7], *(this + 168));
          v181 = vsubq_f64(v494[8], *(this + 184));
          memset(v494, 0, 24);
          v494[7] = v180;
          v494[8] = v181;
          *&v434 = BlueFin::QuaternionD::conj((this + 200));
          *(&v434 + 1) = v182;
          *&v435 = v183;
          *(&v435 + 1) = v184;
          *&v494[9] = BlueFin::QuaternionD::operator*(&v494[9], &v434);
          *(&v494[9] + 1) = v185;
          *&v494[10] = v186;
          *(&v494[10] + 1) = v187;
          *&v434 = BlueFin::QuaternionD::conj((this + 232));
          *(&v434 + 1) = v188;
          *&v435 = v189;
          *(&v435 + 1) = v190;
          v191 = BlueFin::QuaternionD::operator*(&v494[11], &v434);
          *&v494[11] = v191;
          if (v499)
          {
            *(this + 5048) = v494[3];
            *(this + 633) = *&v494[4];
            v195 = v494[5];
            *(this + 319) = v494[6];
            v196 = *(&v494[8] + 1);
            *(this + 640) = *&v494[7];
            *(this + 634) = v191;
            *(this + 635) = v192;
            *(this + 636) = v193;
            *(this + 637) = v194;
            v197 = v494[10];
            *(this + 5128) = v494[9];
            *(this + 5144) = v197;
            *(this + 5160) = *(&v494[1] + 8);
            *(this + 647) = *(&v494[2] + 1);
            *(this + 324) = *(&v494[7] + 8);
            *(this + 650) = v196;
            *(this + 5208) = v195;
          }
        }

        goto LABEL_197;
      }

LABEL_130:
      v163 = 0;
      v441 = 0x100000003;
      do
      {
        v164 = &v494[v163];
        v494[v163 + 1] = 0uLL;
        *v164 = &v494[v163 + 1];
        *(v164 + 1) = 0x1500000000;
        v164[2] = 0uLL;
        v164[3] = 0uLL;
        v164[4] = 0uLL;
        v164[5] = 0uLL;
        v164[6] = 0uLL;
        v164[7] = 0uLL;
        v164[8] = 0uLL;
        v164[9] = 0uLL;
        v163 += 12;
        v164[10] = 0uLL;
        v164[11] = 0uLL;
      }

      while (v163 != 36);
      BlueFin::GlPeShrimpKf::GetVehConstraintHVec(this, v494);
      v165 = 0;
      v418[1] = 0x1500000015;
      v419 = 0u;
      memset(v420, 0, sizeof(v420));
      v421 = 0u;
      v422 = 0u;
      v423 = 0u;
      v424 = 0u;
      v425 = 0u;
      v426 = 0u;
      v427 = 0u;
      v418[0] = &v419;
      v166 = &v438;
      v428 = 0u;
      do
      {
        v166->f64[0] = BlueFin::GlPeShrimpKf::KalmanGain(this, *&v494[v165], v418[0]);
        v166 += 2;
        v165 += 12;
      }

      while (v165 != 36);
      v2 = v440[0];
      goto LABEL_135;
    }

    if (v47 == 1 && *(this + 4852) == 1)
    {
      *(this + 2426) = 256;
    }

    if (*(this + 4853) == 1)
    {
      *v418 = *(v46 + 3);
      *&v419 = *(v46 + 8);
      BlueFin::lla2ned(v418, (this + *(v49 - 24) + 8), 0, v494);
      if (sqrt(vaddvq_f64(vmulq_f64(*(v494 + 8), *(v494 + 8)))) >= 1000.0)
      {
        goto LABEL_98;
      }

      v48 = *this;
    }

    BlueFin::lla2ned((this + *(v48 - 24) + 32), (this + *(v48 - 24) + 8), 0, v494);
    *&v420[0] = *(&v494[0] + 1);
    v418[0] = *&v494[0];
    *&v425 = 0x100000003;
    *&v421 = *&v494[1];
    *&v494[0] = BlueFin::QuaternionD::conj((this + 232));
    *(&v494[0] + 1) = v120;
    *&v494[1] = v121;
    *(&v494[1] + 1) = v122;
    *&v434 = BlueFin::QuaternionD::operator*(this + 25, v494);
    *(&v434 + 1) = v123;
    *&v435 = v124;
    *(&v435 + 1) = v125;
    v441 = 0;
    BlueFin::QuaternionD::rotVec(&v434, v418, &v438);
    v2 = v440[0];
    v126 = *(this + *(*this - 24) + 180);
    *&v494[0] = &v494[1];
    *(&v494[0] + 1) = 0x1500000015;
    memset(&v494[2] + 8, 0, 152);
    *&v494[1] = 0;
    v127 = __sincos_stret(v126);
    *(&v494[1] + 1) = -v127.__sinval;
    *&v494[2] = v127.__cosval;
    BlueFin::GlPeShrimpKf::MeasUpdateINS(this, v494, 18, v2, 0.01, 3.0, v128, 0);
    goto LABEL_98;
  }

  if (v32 != 1)
  {
    if (!v32)
    {
      BlueFin::GlPeShrimpKf::DoInitNoneGnss(this, a2);
      goto LABEL_197;
    }

    v394 = "false";
    DeviceFaultNotify("glpe_shrimpkf.cpp", 1372, "GnssUpdate", "false");
    v395 = 1372;
LABEL_374:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_shrimpkf.cpp", v395, v394);
  }

  BlueFin::GlPeShrimpKf::DoInitNoneGnss(this, a2);
  v33 = *(this + 1212);
  if (!v33)
  {
    if (*(*(this + 653) + 8) == 3)
    {
      goto LABEL_55;
    }

    if (!BlueFin::GlPeShrimpKf::IsNotTurning(this, 2.0))
    {
      goto LABEL_55;
    }

    v34 = this + *(*this - 24);
    if ((*(v34 + 50) - *(this + 1217)) >> 4 > 0x752)
    {
      goto LABEL_55;
    }

    *&v494[8] = 0;
    v35 = *(this + 616);
    *&v494[0] = *(this + 615);
    *&v494[2] = v35;
    *&v494[4] = *(this + 617);
    BlueFin::QuaternionD::rotVec(this + 602, v494, v418);
    *(&v439 + 1) = *(this + 618);
    *&v438.f64[0] = v418[0];
    v438.f64[1] = *v420;
    *&v439 = 0;
    if (sqrt(v438.f64[1] * v438.f64[1] + v438.f64[0] * v438.f64[0]) <= 0.8)
    {
      goto LABEL_55;
    }

    v36 = sqrt(*(v34 + 14) * *(v34 + 14) + *(v34 + 13) * *(v34 + 13)) - *(this + 629);
    v37 = -v36;
    if (v36 >= 0.0)
    {
      v37 = v36;
    }

    if (v37 <= 1.0)
    {
LABEL_55:
      v33 = 0;
    }

    else
    {
      *v494 = v36;
      memset(v494 + 8, 0, 24);
      v418[0] = 0x3FF0000000000000;
      v418[1] = 0;
      v419 = 0uLL;
      BlueFin::QuaternionD::rotateV1toV2(v418, v438.f64, v494);
      *(this + 602) = BlueFin::QuaternionD::operator*(v418, this + 602);
      *(this + 603) = v38;
      *(this + 604) = v39;
      *(this + 605) = v40;
      *&v434 = BlueFin::QuaternionD::conj((this + 4816));
      *(&v434 + 1) = v41;
      *&v435 = v42;
      *(&v435 + 1) = v43;
      BlueFin::QuaternionD::qnb2Eul(&v434, v430.f64, v443.f64, &v467);
      v33 = 1;
      *(this + 1212) = 1;
    }
  }

  if (*(a2 + 20) < 15.0 && *(a2 + 32) < 1.0 && *(a2 + 51))
  {
    v54 = *(a2 + 13);
    v55 = *(a2 + 14);
    v56 = *(a2 + 15);
    v57 = sqrt(v54 * v54 + v55 * v55);
    v489 = 0;
    v488 = 0;
    v58 = *(this + 609);
    v59 = *(this + 610);
    v486 = v54 - v58;
    v487 = v55 - v59;
    v60 = sqrt(v487 * v487 + v486 * v486);
    v61 = *this;
    v62 = (this + *(*this - 24));
    v63 = v62[14];
    v402 = v62[15];
    v482 = v62[13] - v58;
    v483 = v63 - v59;
    v485 = 0;
    v484 = 0;
    v64 = sqrt(v483 * v483 + v482 * v482);
    v65 = vabdd_f64(v60, v64);
    if (v65 > *(this + 612))
    {
      *(this + 612) = v65;
    }

    v403 = v65;
    v66 = atan2(v55, v54);
    v67 = *(this + 3);
    if (v57 > v67 && BlueFin::GlPeShrimpKf::IsNotTurning(this, 2.0) && *(a2 + 46) < 0.174532925)
    {
        ;
      }

        ;
      }

      v69 = fabs(i) >= 0.174532925;
    }

    else
    {
      v69 = 1;
    }

    *(this + 614) = v66;
    if (v33 == 2)
    {
      v70 = (*(this + *(v61 - 24) + 200) - *(this + 1256)) > 0x927BF || v69;
      if (v70)
      {
        if (v403 <= 5.0)
        {
          goto LABEL_164;
        }

LABEL_78:
        *(this + 2) = 0;
        goto LABEL_197;
      }

      v494[1] = 0uLL;
      *v494 = v54;
      *(v494 + 1) = v55;
      v419 = 0uLL;
      v418[0] = 0x3FF0000000000000;
      v418[1] = 0;
      v438 = 0x3FF0000000000000uLL;
      v439 = 0uLL;
      BlueFin::QuaternionD::rotateV1toV2(&v438, v494, v418);
      v467 = 0.0;
      BlueFin::QuaternionD::qnb2Eul(&v438, v430.f64, v443.f64, &v467);
      v71 = v467;
      *(this + *(*this - 24) + 176) = v71;
      *&v434 = BlueFin::QuaternionD::conj((this + 4816));
      *(&v434 + 1) = v72;
      *&v435 = v73;
      *(&v435 + 1) = v74;
      BlueFin::QuaternionD::qnb2Eul(&v434, v430.f64, v443.f64, &v467);
      *&v434 = BlueFin::QuaternionD::conj(&v438);
      *(&v434 + 1) = v75;
      *&v435 = v76;
      *(&v435 + 1) = v77;
      *(this + 586) = BlueFin::QuaternionD::operator*(&v434, this + 602);
      *(this + 587) = v78;
      *(this + 588) = v79;
      *(this + 589) = v80;
      *&v434 = BlueFin::QuaternionD::conj((this + 4688));
      *(&v434 + 1) = v81;
      *&v435 = v82;
      *(&v435 + 1) = v83;
      BlueFin::QuaternionD::qnb2Eul(&v434, v430.f64, v443.f64, &v467);
      v84 = *this;
      v85 = this + *(*this - 24);
      *(v85 + 104) = *(a2 + 104);
      *(v85 + 15) = *(a2 + 15);
      *(this + 2) = 2;
    }

    else
    {
      if (v403 > 5.0)
      {
        goto LABEL_78;
      }

      if (v33 != 1)
      {
        goto LABEL_164;
      }

      v86 = v64 <= v67;
      if (v60 <= v67)
      {
        v86 = 1;
      }

      if (v86 || v69)
      {
        goto LABEL_164;
      }

      v439 = 0uLL;
      v438.f64[0] = v54;
      v438.f64[1] = v55;
      v435 = 0uLL;
      v434 = 0x3FF0000000000000uLL;
      v430 = 0x3FF0000000000000uLL;
      v431 = 0uLL;
      BlueFin::QuaternionD::rotateV1toV2(&v430, v438.f64, &v434);
      *&v450 = 0;
      v449[0] = 0.0;
      v448[0] = 0.0;
      BlueFin::QuaternionD::qnb2Eul(&v430, &v450, v449, v448);
      v87 = v448[0];
      *(this + *(*this - 24) + 176) = v87;
      v443 = 0x3FF0000000000000uLL;
      v445 = 0;
      v444 = 0;
      BlueFin::QuaternionD::rotateV1toV2(&v443, &v482, &v486);
      v467 = BlueFin::QuaternionD::operator*(v443.f64, this + 586);
      v468 = v88;
      v469 = v89;
      v470 = v90;
      v466[0] = BlueFin::QuaternionD::operator*(v430.f64, &v467);
      v466[1] = v91;
      v466[2] = v92;
      v466[3] = v93;
      v459 = BlueFin::QuaternionD::conj(v466);
      v460 = v94;
      v461 = v95;
      v462 = v96;
      *&v494[8] = 0;
      *&v494[0] = 0x3FF0000000000000;
      *&v494[2] = 0;
      *&v494[4] = 0;
      BlueFin::QuaternionD::rotVec(&v459, v494, v418);
      v97 = v418[0];
      v98 = *v420;
      v99 = *&v421;
      v459 = BlueFin::QuaternionD::conj((this + 4816));
      v460 = v100;
      v461 = v101;
      v462 = v102;
      *&v494[8] = 0;
      *&v494[0] = 0x3FF0000000000000;
      *&v494[2] = 0;
      *&v494[4] = 0;
      BlueFin::QuaternionD::rotVec(&v459, v494, v418);
      v103 = v98 * *v420 + *&v97 * *v418 + v99 * *&v421;
      if (fabs(v103) <= 0.7)
      {
        *(this + 1212) = 0;
        goto LABEL_164;
      }

      if (v103 < 0.0)
      {
        v443 = 0uLL;
        v444 = 0;
        v445 = 0x3FF0000000000000;
        *(this + 602) = BlueFin::QuaternionD::operator*(v443.f64, this + 602);
        *(this + 603) = v104;
        *(this + 604) = v105;
        *(this + 605) = v106;
      }

      *(this + 1212) = 2;
      *&v494[0] = BlueFin::QuaternionD::conj((this + 4816));
      *(&v494[0] + 1) = v107;
      *&v494[1] = v108;
      *(&v494[1] + 1) = v109;
      BlueFin::QuaternionD::qnb2Eul(v494, &v450, v449, v448);
      *&v494[0] = BlueFin::QuaternionD::conj(&v430);
      *(&v494[0] + 1) = v110;
      *&v494[1] = v111;
      *(&v494[1] + 1) = v112;
      *(this + 586) = BlueFin::QuaternionD::operator*(v494, this + 602);
      *(this + 587) = v113;
      *(this + 588) = v114;
      *(this + 589) = v115;
      *&v494[0] = BlueFin::QuaternionD::conj((this + 4688));
      *(&v494[0] + 1) = v116;
      *&v494[1] = v117;
      *(&v494[1] + 1) = v118;
      BlueFin::QuaternionD::qnb2Eul(v494, &v450, v449, v448);
      v84 = *this;
      v119 = this + *(*this - 24);
      *(v119 + 104) = *(a2 + 104);
      *(v119 + 15) = *(a2 + 15);
      *(this + 2) = 2;
    }

    *(this + *(v84 - 24) + 204) = 1;
    *(this + *(v84 - 24) + 241) = 1;
    *(this + *(v84 - 24) + 240) = 1;
    *(this + 609) = v54;
    *(this + 610) = v55;
    *(this + 611) = v56;
    *(this + 1254) = *(a2 + 50);
    *(this + *(v84 - 24) + 196) = 0;
LABEL_164:
    if (*(this + 2) == 1 && *(this + 612) < 2.0)
    {
      v203 = *(this + 3);
      v204 = v60 <= v203;
      if (v64 <= v203)
      {
        v204 = 1;
      }

      if (!v69 && !v204)
      {
        v400 = v60;
        v401 = v56;
        v399 = v60 - v64;
        v479 = 0x3FF0000000000000uLL;
        v481 = 0;
        v480 = 0;
        BlueFin::QuaternionD::rotateV1toV2(&v479, &v482, &v486);
        *(this + 586) = BlueFin::QuaternionD::operator*(v479.f64, this + 586);
        *(this + 587) = v205;
        *(this + 588) = v206;
        *(this + 589) = v207;
        v478[3] = 0.0;
        v478[2] = 0.0;
        v478[0] = v54;
        v478[1] = v55;
        v477[0] = 1.0;
        memset(&v477[1], 0, 24);
        v474 = 0x3FF0000000000000uLL;
        v476 = 0;
        v475 = 0;
        BlueFin::QuaternionD::rotateV1toV2(&v474, v478, v477);
        *(this + 602) = BlueFin::QuaternionD::operator*(v474.f64, this + 586);
        *(this + 603) = v208;
        *(this + 604) = v209;
        *(this + 605) = v210;
        v467 = v482;
        v471 = v483;
        v211 = *(this + 611);
        v473 = 0x100000003;
        v472 = v402 - v211;
        v466[16] = 0.0;
        BlueFin::QuaternionD::rotVec(v479.f64, &v467, v466);
        v212.f64[0] = v466[0];
        v213 = v211 + v466[8];
        v214 = this + *(*this - 24);
        v212.f64[1] = v466[4];
        *(v214 + 104) = vaddq_f64(*(this + 4872), v212);
        *(v214 + 15) = v213;
        v465 = 0.0;
        v464 = 0.0;
        v463 = 0.0;
        *&v494[0] = BlueFin::QuaternionD::conj((this + 4688));
        *(&v494[0] + 1) = v215;
        *&v494[1] = v216;
        *(&v494[1] + 1) = v217;
        BlueFin::QuaternionD::qnb2Eul(v494, &v465, &v464, &v463);
        BlueFin::QuaternionD::q2Rot(this + 293, &v459);
        v458 = 0x300000003;
        v450 = xmmword_298A436D0;
        v218 = __sincos_stret(v464);
        v451 = -v218.__sinval;
        v452 = 0;
        v219 = __sincos_stret(v465);
        cosval = v219.__cosval;
        v454 = v218.__cosval * v219.__sinval;
        v455 = 0;
        sinval = v218.__sinval;
        v457 = v218.__cosval * v219.__cosval;
        v449[16] = 0.0;
        BlueFin::Matrix::mult(v449, &v459, &v450);
        v220 = &v494[1] + 8;
        v494[1] = xmmword_298A44780;
        *&v494[0] = &v494[2];
        *(&v494[0] + 1) = v498;
        *&v498[0] = 0;
        for (j = 8; j != 56; j += 8)
        {
          *(*(&v494[0] + 1) + j) = v220;
          v220 += 48;
        }

        BlueFin::BigMatrix::Clone(v494, 6, 6);
        v222 = *(&v494[0] + 1);
        v223 = *(*(&v494[0] + 1) + 8);
        v223[1] = v449[0];
        v223[2] = v449[1];
        v223[3] = v449[2];
        v224 = v222[2];
        v224[1] = v449[4];
        v224[2] = v449[5];
        v224[3] = v449[6];
        v225 = v222[3];
        v225[1] = v449[8];
        v225[2] = v449[9];
        v225[3] = v449[10];
        *(v222[4] + 32) = 0x3FF0000000000000;
        *(v222[5] + 40) = 0x3FF0000000000000;
        *(v222[6] + 48) = 0x3FF0000000000000;
        v226 = *(this + 654);
        v227 = v226[29];
        v228 = v226[30];
        v229 = v226[41];
        v230 = v226[42];
        v231 = v226[53];
        v232 = v226[54];
        *&v448[16] = 0x100000003;
        v448[0] = 0.0;
        v448[4] = 0.0;
        v448[8] = -9.81;
        v397 = v227;
        *v447 = v227;
        v398 = v229;
        *&v447[4] = v229;
        v447[16] = 0x100000003;
        v396 = v231;
        *&v447[8] = v231;
        BlueFin::Matrix::mult(v446, 0, &v459, v448);
        BlueFin::Matrix::operator-(v447, v446, v418);
        v233 = v418[0];
        v234 = *v420;
        v235 = *&v421;
        BlueFin::BigMatrixDim<4,4>::BigMatrixDim(&v443, 4, 4);
        v236 = v443.f64[1];
        *(*(*&v443.f64[1] + 8) + 8) = v228 * v228 + *&v233 * *&v233;
        *(*(*&v236 + 16) + 16) = v230 * v230 + v234 * v234;
        *(*(*&v236 + 24) + 24) = v232 * v232 + v235 * v235;
        *(*(*&v236 + 32) + 32) = (*(a2 + 46) * *(a2 + 46));
        v237 = &v439 + 8;
        v439 = xmmword_298A44790;
        *&v438.f64[0] = v440;
        *&v438.f64[1] = &v442;
        v442 = 0;
        for (k = 8; k != 56; k += 8)
        {
          *(*&v438.f64[1] + k) = v237;
          v237 += 32;
        }

        BlueFin::BigMatrix::Clone(&v438, 6, 4);
        v239.f64[0] = v398;
        v240 = v396;
        v241 = sqrt(v239.f64[0] * v239.f64[0] + v240 * v240);
        v242 = v240 * v240 + v397 * v397 + v239.f64[0] * v239.f64[0];
        v243 = v438.f64[1];
        v244 = *(*&v438.f64[1] + 8);
        *(v244 + 16) = v396 / (v241 * v241);
        *(v244 + 24) = -v398 / (v241 * v241);
        v245 = *(*&v243 + 16);
        v245->f64[1] = v241 / v242;
        v239.f64[1] = v396;
        v245[1] = vdivq_f64(vmulq_n_f64(v239, -v397), vdupq_lane_s64(COERCE__INT64(v242 * v241), 0));
        *(*(*&v243 + 24) + 32) = 0x3FF0000000000000;
        *(*(*&v243 + 32) + 8) = 0x3FF0000000000000;
        *(*(*&v243 + 40) + 16) = 0x3FF0000000000000;
        *(*(*&v243 + 48) + 24) = 0x3FF0000000000000;
        v246 = &v435 + 8;
        v435 = xmmword_298A44790;
        *&v434 = &v436;
        *(&v434 + 1) = &v437;
        v437 = 0;
        for (m = 8; m != 56; m += 8)
        {
          *(*(&v434 + 1) + m) = v246;
          v246 += 32;
        }

        BlueFin::BigMatrix::mult(&v434, v494, &v438);
        v248 = &v431 + 8;
        v431 = xmmword_298A447A0;
        *&v430.f64[0] = &v432;
        *&v430.f64[1] = &v433;
        v433 = 0;
        for (n = 8; n != 40; n += 8)
        {
          *(*&v430.f64[1] + n) = v248;
          v248 += 48;
        }

        BlueFin::BigMatrix::mult(&v430, &v443, 1, &v434);
        v250 = &v419 + 8;
        v419 = xmmword_298A44780;
        v418[0] = v420;
        v418[1] = &v429;
        v429 = 0;
        for (ii = 8; ii != 56; ii += 8)
        {
          *(v418[1] + ii) = v250;
          v250 += 48;
        }

        BlueFin::BigMatrix::mult(v418, &v434, &v430);
        v411 = BlueFin::QuaternionD::conj((this + 4816));
        v412 = v252;
        v413 = v253;
        v414 = v254;
        BlueFin::QuaternionD::qnb2Eul(&v411, &v465, &v464, &v463);
        *(this + 1212) = 2;
        v411 = v403 * 0.5 * (v403 * 0.5);
        v412 = 0;
        v415 = 0;
        v416 = v411;
        v417 = 0x200000002;
        BlueFin::QuaternionD::rotVec(v479.f64, &v467, v407);
        v410 = 0x200000002;
        v408 = 0;
        v409 = 0;
        BlueFin::Matrix::RotateCovMatrix(&v411, v407);
        v255 = *(this + 83);
        v256 = v255[4];
        v257 = *(v256 + 32);
        if (v411 >= v257)
        {
          v257 = v411;
        }

        *(v256 + 32) = v257;
        v258 = v255[5];
        v259 = *(v258 + 40);
        HIDWORD(v260) = HIDWORD(v416);
        if (v416 >= v259)
        {
          v259 = v416;
        }

        *(v258 + 40) = v259;
        LODWORD(v259) = *(this + *(*this - 24) + 200);
        LODWORD(v260) = *(this + 1217);
        v261 = (*&v259 - v260) * 0.001;
        v262 = v255[9];
        v263 = *(v262 + 72);
        v264 = v418[1];
        if (v263 >= v261 * *(*(v418[1] + 1) + 8))
        {
          v263 = v261 * *(*(v418[1] + 1) + 8);
        }

        *(v262 + 72) = v263;
        v265 = v255[10];
        v266 = *(v265 + 80);
        v267 = *(v264 + 2);
        if (v266 >= v261 * *(v267 + 16))
        {
          v266 = v261 * *(v267 + 16);
        }

        *(v265 + 80) = v266;
        v268 = v255[11];
        v269 = *(v268 + 88);
        v270 = v399;
        v271 = v400;
        v272 = atan2f(fabsf(v270), v271);
        v273 = v272 + v272;
        if (*(a2 + 46) >= v273)
        {
          v273 = *(a2 + 46);
        }

        v274 = (v273 * v273);
        if (v269 <= v274)
        {
          v275 = v274;
        }

        else
        {
          v275 = v269;
        }

        *(v268 + 88) = v275;
        v276 = v255[15];
        v277 = *(v276 + 120);
        if (v277 >= v261 * *(v267 + 16))
        {
          v277 = v261 * *(v267 + 16);
        }

        *(v276 + 120) = v277;
        v278 = v255[16];
        if (*(v278 + 128) > v274)
        {
          v274 = *(v278 + 128);
        }

        *(v278 + 128) = v274;
        v490 = BlueFin::QuaternionD::conj((this + 4816));
        v491 = v279;
        v492 = v280;
        v493 = v281;
        v24 = (this + 4688);
        v406[0] = BlueFin::QuaternionD::operator*(this + 586, &v490);
        v406[1] = v282;
        v406[2] = v283;
        v406[3] = v284;
        v490 = BlueFin::QuaternionD::conj(v406);
        v491 = v285;
        v492 = v286;
        v493 = v287;
        BlueFin::QuaternionD::qnb2Eul(&v490, &v465, &v464, &v463);
        v288 = *this;
        v289 = v463;
        *(this + *(*this - 24) + 176) = v289;
        *(this + 2) = 2;
        *(this + *(v288 - 24) + 204) = 1;
        *(this + *(v288 - 24) + 241) = 1;
        *(this + *(v288 - 24) + 240) = 1;
        *(this + 609) = v54;
        *(this + 610) = v55;
        *(this + 611) = v401;
        *(this + 1254) = *(a2 + 50);
        *(this + *(v288 - 24) + 196) = 0;
      }
    }
  }

LABEL_197:
  *&v494[0] = BlueFin::QuaternionD::conj(v405);
  *(&v494[0] + 1) = v290;
  *&v494[1] = v291;
  *(&v494[1] + 1) = v292;
  v443.f64[0] = BlueFin::QuaternionD::operator*(v24, v494);
  v443.f64[1] = v293;
  v444 = v294;
  v445 = v295;
  *(this + 594) = BlueFin::QuaternionD::operator*(v443.f64, this + 594);
  *(this + 595) = v296;
  *(this + 596) = v297;
  *(this + 597) = v298;
  *(this + 295) = *(this + 293);
  *(this + 296) = *(this + 294);
  v299 = *(this + 83);
  v300 = *this;
  v301 = sqrt(*(v299[9] + 72) + *(v299[10] + 80) + *(v299[11] + 88) + *(v299[15] + 120) + *(v299[16] + 128));
  *(this + *(*this - 24) + 184) = v301;
  v302 = *(v299[1] + 8) + *(v299[2] + 16);
  *(this + *(v300 - 24) + 80) = sqrtf(v302);
  v303 = *(v299[3] + 24);
  *(this + *(v300 - 24) + 84) = sqrtf(v303);
  v304 = sqrt(*(v299[4] + 32) + *(v299[5] + 40));
  *(this + *(v300 - 24) + 128) = v304;
  v305 = sqrt(*(v299[6] + 48));
  *(this + *(v300 - 24) + 140) = v305;
  v306 = this + *(v300 - 24);
  *(v306 + 2) = *(v306 + 8);
  *(v306 + 6) = *(v306 + 3);
  *(this + *(v300 - 24) + 180) = *(this + *(v300 - 24) + 176);
  v307 = sqrt(*(v299[7] + 56));
  *(this + *(v300 - 24) + 96) = v307;
  v308 = sqrt(*(v299[8] + 64));
  *(this + *(v300 - 24) + 160) = v308;
  v309 = (this + *(v300 - 24));
  v310 = v309[13];
  v311 = v309[14];
  v312 = v309[15];
  *&v494[8] = 0x100000003;
  *&v494[0] = 0;
  *&v494[2] = 0;
  *&v494[4] = 0;
  BlueFin::GlPeShrimpKf::GetVelVeh(this, v494);
  v466[0] = 0.0;
  if (!*(this + 2))
  {
    v321 = 0;
    v322 = 0;
    goto LABEL_223;
  }

  v313 = *(this + 654);
  if (*(v313 + 586))
  {
    v314 = 10;
  }

  else
  {
    v314 = 0;
  }

  if (*(v313 + 592))
  {
    v315 = 10;
  }

  else
  {
    v315 = v314;
  }

  if (!*(this + 5040))
  {
    v315 = 10;
  }

  if (*(this + 5041))
  {
    v316 = 10;
  }

  else
  {
    v316 = v315;
  }

  *(this + 5040) = 0;
  if (fabs(*(this + 576)) > 2.943 || fabs(*(this + 577)) > 2.943 || fabs(*(this + 578)) > 2.943)
  {
    v316 = 20;
  }

  v438.f64[0] = 0.0;
  *&v434 = 0;
  v418[0] = COERCE_BLUEFIN_SKFVECTOR_(BlueFin::QuaternionD::conj((this + 4784)));
  v418[1] = v317;
  *&v419 = v318;
  *(&v419 + 1) = v319;
  BlueFin::QuaternionD::qnb2Eul(v418, v438.f64, &v434, v466);
  v320 = fabs(v438.f64[0] * 57.2957795);
  if (v320 <= 10.0 && fabs(*&v434 * 57.2957795) <= 10.0)
  {
    v321 = 0;
LABEL_222:
    v322 = v316;
    goto LABEL_223;
  }

  v321 = 0;
  v322 = 13;
  if (v320 <= 25.0 && *(this + 2) == 2)
  {
    if (fabs(*&v434 * 57.2957795) > 45.0)
    {
      v321 = 0;
      goto LABEL_223;
    }

    v321 = 1024;
    goto LABEL_222;
  }

LABEL_223:
  v323 = *(this + 653);
  if (*(v323 + 24) == 2)
  {
    *(v323 + 24) = 0;
    v322 = 23;
  }

  if (*(this + 2) == 2)
  {
    v459 = 0.0;
    *&v450 = 0;
    v449[0] = 0.0;
    v418[0] = COERCE_BLUEFIN_SKFVECTOR_(BlueFin::QuaternionD::conj((this + 4816)));
    v418[1] = v324;
    *&v419 = v325;
    *(&v419 + 1) = v326;
    v404 = v24;
    v438.f64[0] = BlueFin::QuaternionD::operator*(v24, v418);
    v438.f64[1] = v327;
    *&v439 = v328;
    *(&v439 + 1) = v329;
    v418[0] = COERCE_BLUEFIN_SKFVECTOR_(BlueFin::QuaternionD::conj(&v438));
    v418[1] = v330;
    *&v419 = v331;
    *(&v419 + 1) = v332;
    BlueFin::QuaternionD::qnb2Eul(v418, &v459, &v450, v449);
    if (fabs(*&v450) <= 0.785398163)
    {
      v333 = v322;
    }

    else
    {
      v333 = 12;
    }

    v334 = *(this + 5818);
    if ((v334 & 1) == 0 && sqrt(v311 * v311 + v310 * v310 + v312 * v312) > *(this + 5))
    {
      v333 = 15;
    }

    v335 = *(this + 655);
    v336 = *this;
    v337 = *(v335 + 84);
    if (v337 == 1)
    {
      v338 = *(this + *(*this - 24) + 200);
      IsParkingGarage = BlueFin::GlPeNavGnssBlocked::IsParkingGarage(v335, v338);
      v340 = *v494;
      if (!IsParkingGarage && *v494 < *(v335 + 128))
      {
        ++*(this + 5345);
        v338 = *(this + *(v336 - 24) + 200);
      }

      if (!BlueFin::GlPeNavGnssBlocked::IsParkingGarage(v335, v338) && *(v335 + 133) == 1)
      {
        v342 = v338 - *(this + 1254);
        v343 = 1.0;
        if (v342 <= 0x493DF)
        {
          v343 = v342 / 300000.0;
        }

        v344 = *(v335 + 136);
        v341 = v340;
        v345 = v341;
        if (v344 != 0.0 && *(this + 665) - v343 * v344 >= v345 || (v346 = *(v335 + 140), v346 != 0.0) && *(this + 665) + v343 * v346 <= v345)
        {
          ++*(this + 5346);
        }
      }
    }

    else
    {
      v340 = *v494;
    }

    if (BlueFin::GlPeNavGnssBlocked::IsParkingGarage(v335, *(this + *(v336 - 24) + 200)) && v340 > *(v335 + 124))
    {
      ++*(this + 5347);
    }

    if (v337 != 1)
    {
      *(this + 5345) = 0;
      *(this + 5347) = 0;
    }

    v347 = *(this + 5315);
    if (!v334 || *(this + 5315))
    {
      BlueFin::lla2ned(this + 573, this + 669, 0, &v467);
      v418[0] = *&v467;
      *&v420[0] = v468;
      *&v425 = 0x100000003;
      *&v421 = v469;
      v441 = 0;
      *&v434 = BlueFin::QuaternionD::conj((this + 4816));
      *(&v434 + 1) = v348;
      *&v435 = v349;
      *(&v435 + 1) = v350;
      v430.f64[0] = BlueFin::QuaternionD::operator*(v404, &v434);
      v430.f64[1] = v351;
      *&v431 = v352;
      *(&v431 + 1) = v353;
      *&v434 = BlueFin::QuaternionD::conj(&v430);
      *(&v434 + 1) = v354;
      *&v435 = v355;
      *(&v435 + 1) = v356;
      BlueFin::QuaternionD::rotVec(&v434, v418, &v438);
      v357 = v438.f64[0];
      if (v438.f64[0] >= -1.0)
      {
        if (v438.f64[0] > 0.0)
        {
          *(this + 5328) = 0;
          *(this + 1333) = 0;
        }
      }

      else
      {
        ++*(this + 5328);
        v358 = v357;
        *(this + 1333) = *(this + 1333) + v358;
      }

      v359 = sqrt(vaddvq_f64(vmulq_f64(*(this + *(*this - 24) + 104), *(this + *(*this - 24) + 104))));
      if (v359 <= 30.0)
      {
        v360 = v359;
      }

      else
      {
        v360 = 30.0;
      }

      if (v466[0] * v360 >= 0.0)
      {
        v361 = v466[0] * v360;
      }

      else
      {
        v361 = -(v466[0] * v360);
      }

      if (BlueFin::GlPeShrimpKf::IsNotTurning(this, 1.0))
      {
        if (*(this + 2) == 2 && !*(this + 5816) && (v362 = v440[0], fabs(v440[0]) >= fmax(v361, 1.2)))
        {
          ++*(this + 5336);
          v363 = v362;
          *(this + 1335) = *(this + 1335) + v363;
        }

        else if (*(this + 5336) && v440[0] * *(this + 1335) < 0.0)
        {
          *(this + 5336) = 0;
          *(this + 1335) = 0;
        }
      }

      *(this + 669) = *(this + 573);
      *(this + 335) = *(this + 287);
      v364 = fmax(v360 * 0.03, 0.5);
      if (BlueFin::GlPeShrimpKf::IsNotTurning(this, 1.0))
      {
        v365 = fabs(*&v494[2]);
        if (v365 >= v364)
        {
          ++*(this + 5348);
        }

        else if (v365 < 0.5)
        {
          *(this + 5348) = 0;
        }
      }

      if (fabs(*&v494[4]) >= v364)
      {
        v366 = *(this + 5349) + 1;
      }

      else
      {
        v366 = 0;
      }

      *(this + 5349) = v366;
    }

    if (*(this + 5350) <= 3u)
    {
      v322 = v333;
    }

    else
    {
      v322 = 16;
    }

    v367 = *(this + 654);
    v369 = *(this + 83);
    v370 = (v367[86] + *(v369[17] + 136)) * 49.0;
    if (v370 < 0.0225)
    {
      v370 = 0.0225;
    }

    v368 = -(v367[85] - *(this + 579) * 57.2957795);
    if (v368 * v368 > v370)
    {
      goto LABEL_292;
    }

    v371 = -(v367[97] - *(this + 580) * 57.2957795);
    v372 = v371 * v371;
    v373 = (v367[98] + *(v369[18] + 144)) * 49.0;
    if (v373 < 0.0225)
    {
      v373 = 0.0225;
    }

    if (v372 > v373)
    {
      goto LABEL_292;
    }

    v374 = -(v367[109] - *(this + 581) * 57.2957795);
    v375 = v374 * v374;
    v376 = (v367[110] + *(v369[19] + 152)) * 49.0;
    if (v376 < 0.0225)
    {
      v376 = 0.0225;
    }

    if (v375 <= v376)
    {
      *(this + 5344) = 0;
    }

    else
    {
LABEL_292:
      ++*(this + 5344);
    }

    BlueFin::GlPeShrimpNhcMonitor::RunDetector(this + 5384);
    BlueFin::GlPeShrimpNhcMonitor::RunDetector(this + 5600);
    v377 = *(this + 653);
    if ((*(v377 + 8) - 1) <= 1 && *(v377 + 12) == 1)
    {
      v322 = 17;
    }

    v378 = *(this + 5314);
    if (*(this + 5312) == 1)
    {
      *(this + 5376) = 0;
      if (v378)
      {
        v379 = 0;
LABEL_301:
        v380 = 1;
        goto LABEL_310;
      }
    }

    else
    {
      if (*(this + 5314))
      {
        v379 = 0;
        *(this + 5376) = 0;
        goto LABEL_301;
      }

      v381 = *(this + 655);
      if (*(v381 + 21) == 1)
      {
        v382 = BlueFin::GlPeNavGnssBlocked::PublishIndoorPropagation(v381, *(this + *(*this - 24) + 200));
        *(this + 5376) = !v382;
        if (!v382)
        {
          goto LABEL_309;
        }
      }

      else
      {
        *(this + 5376) = 0;
      }
    }

    if (*(this + 2) == 2)
    {
      v380 = 0;
      v379 = *(this + 5816) != 0;
      goto LABEL_310;
    }

LABEL_309:
    v380 = 0;
    v379 = 1;
LABEL_310:
    *(this + 5376) = v379;
    if (v347)
    {
      if (v321 || !*(this + 5818))
      {
        if ((v321 & 0x400) != 0)
        {
          *(this + 5817) = 261;
        }
      }

      else
      {
        if (!*(this + 5328) && !*(this + 5348) && !*(this + 5349))
        {
          --*(this + 5817);
        }

        if (!*(this + 5817))
        {
          *(this + 5818) = 0;
        }

        *(this + 5345) = 0;
        *(this + 5347) = 0;
        *(this + 669) = *(this + 573);
        *(this + 335) = *(this + 287);
        *(this + 5376) = 0;
      }

      if (*(this + 5336) < 8u)
      {
        goto LABEL_334;
      }

      v384 = *(this + 1335);
      if (v384 < 0.0)
      {
        v384 = -v384;
      }

      if (v384 < 20.0 && *(this + 5348) <= 9u)
      {
LABEL_334:
        if (*(this + 5328) >= 0xAu && *(this + 1333) <= -30.0)
        {
          v322 = 22;
        }
      }

      else
      {
        v322 = 21;
      }
    }

    else if (*(this + 5818))
    {
      if ((v321 & 0x400) != 0)
      {
        v383 = 5;
      }

      else
      {
        v383 = 3;
      }

      *(this + 5817) = v383;
      *(this + 5345) = 0;
      *(this + 5347) = 0;
      *(this + 669) = *(this + 573);
      *(this + 335) = *(this + 287);
      *(this + 5376) = 0;
    }

    else if ((v380 & 1) == 0)
    {
      v385 = *(this + 1333);
      if ((v385 > -15.0 || *(this + 5328) < 5u) && v385 > -30.0)
      {
        v388 = 0;
      }

      else
      {
        v388 = 2;
      }

      if (*(this + 5345))
      {
        v388 |= 4u;
      }

      if (*(this + 5346))
      {
        v388 |= 8u;
      }

      if (*(this + 5347))
      {
        v388 |= 0x10u;
      }

      if (*(this + 5348) > 2u)
      {
        v388 |= 0x40u;
      }

      if (*(this + 5349) > *(this + 32))
      {
        v388 |= 0x80u;
      }

      if (*(this + 5344) > 4u)
      {
        v388 |= 0x800u;
      }

      if (*(this + 5376))
      {
        v388 |= 0x100u;
      }

      v389 = *(this + 83);
      v390 = sqrt(*(v389[4] + 32) + *(v389[5] + 40));
      if (sqrt(*(v389[1] + 8) + *(v389[2] + 16)) > 55.0 || v390 > 4.5)
      {
        v388 |= 0x200u;
      }

      v392 = v388 | v321;
      if (v392)
      {
        *(this + 5818) = 1;
        if ((v392 & 0x400) != 0)
        {
          v393 = 5;
        }

        else
        {
          v393 = 3;
        }

        *(this + 5817) = v393;
      }
    }
  }

  if (v322)
  {
    BlueFin::GlPeShrimpKf::ResetINS(this, v322);
  }

  *(this + 1215) = *(this + *(*this - 24) + 200);
  *(this + 1216) = *(this + 1214);
}

double BlueFin::GlPeShrimpKf::KalmanGain(BlueFin::GlPeShrimpKf *this, const BlueFin::SKFVector *a2, BlueFin::SKFVector *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = *(this + 169);
  result = 0.0;
  if (v3 >= 1)
  {
    v5 = 0;
    v6 = 1;
    v7 = 0x10000;
    v8 = *(this + 169);
    do
    {
      if (*(a2 + (v7 >> 16)) != 0.0)
      {
        v18[v5++] = v6;
      }

      ++v6;
      v7 += 0x10000;
      --v8;
    }

    while (v8);
    v9 = v3 + 1;
    v10 = v5;
    v11 = 1;
    do
    {
      while (v5 < 1)
      {
        *(a3 + v11++) = 0;
        if (v11 == v9)
        {
          return result;
        }
      }

      v12 = 0.0;
      v13 = v18;
      v14 = v5;
      do
      {
        v15 = *v13++;
        v12 = v12 + *(*(*(this + 83) + 8 * v11) + 8 * v15) * *(a2 + v15);
        --v14;
      }

      while (v14);
      *(a3 + v11++) = v12;
    }

    while (v11 != v9);
    result = 0.0;
    v16 = v18;
    do
    {
      v17 = *v16++;
      result = result + *(a3 + v17) * *(a2 + v17);
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t BlueFin::GlPeShrimpKf::MeasUpdateINS(BlueFin::GlPeShrimpKf *this, uint64_t a2, int a3, double a4, long double a5, double a6, uint64_t a7, int a8)
{
  v8 = *(this + 169);
  if (*(a2 + 8) != v8)
  {
    v96 = "otH.GetLen() == iRSize";
    DeviceFaultNotify("glpe_shrimpkf.cpp", 1655, "MeasUpdateINS", "otH.GetLen() == iRSize");
    v97 = 1655;
    goto LABEL_33;
  }

  if (v8 != *(this + 168))
  {
    v96 = "iRSize == m_P.GetRowSize()";
    DeviceFaultNotify("glpe_shrimpkf.cpp", 1656, "MeasUpdateINS", "iRSize == m_P.GetRowSize()");
    v97 = 1656;
    goto LABEL_33;
  }

  if (v8 >= 22)
  {
    v96 = "iRSize <= BIG_MATR_MAX_COL_DIM";
    DeviceFaultNotify("glpe_shrimpkf.cpp", 1657, "MeasUpdateINS", "iRSize <= BIG_MATR_MAX_COL_DIM");
    v97 = 1657;
    goto LABEL_33;
  }

  v124[1] = 0x1500000015;
  memset(v125, 0, sizeof(v125));
  v124[0] = v125;
  v15 = BlueFin::GlPeShrimpKf::KalmanGain(this, *a2, v125);
  v16 = v15;
  if (!a8)
  {
LABEL_14:
    BlueFin::SKFVectorDim<21>::SKFVectorDim(&v122, v124);
    v19 = v123;
    if (v123 >= 1)
    {
      v20 = v122;
      v21 = v123 + 1;
      v22 = (v122 + 8);
      do
      {
        *v22 = 1.0 / (v16 + a5) * *v22;
        ++v22;
        --v19;
      }

      while (v19);
      v23 = v21 - 1;
      v24 = (*(this + 549) + 8);
      v25 = (v20 + 8);
      do
      {
        v26 = *v25++;
        *v24 = *v24 + v26 * a4;
        ++v24;
        --v23;
      }

      while (v23);
    }

    if (v8 >= 1)
    {
      v27 = *(this + 83);
      v28 = v122;
      v29 = v8 + 1;
      v30 = (v27 + 8);
      v31 = v124[0] + 8;
      v32 = 1;
      v33 = 8;
      do
      {
        v34 = (*(v27 + 8 * v32) + v33);
        v35 = v31;
        v36 = v30;
        v37 = v8;
        do
        {
          v38 = *v35++;
          v39 = *v34 - *(v28 + 8 * v32) * v38;
          *v34++ = v39;
          v40 = *v36++;
          *(v40 + 8 * v32) = v39;
          --v37;
        }

        while (v37);
        ++v32;
        --v8;
        ++v30;
        v31 += 8;
        v33 += 8;
      }

      while (v32 != v29);
    }

    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
    }

    v41 = *(this + 549);
    v42 = *(v41 + 24);
    v126 = *(v41 + 8);
    v127 = v42;
    BlueFin::ned2lla(this + 573, &v126, &v107);
    BlueFin::GlPeShrimpKf::SetInsLla(this, &v107);
    v43 = *this;
    v44 = this + *(*this - 24);
    v45 = *(this + 549);
    v46 = *(v44 + 15) + *(v45 + 48);
    *(v44 + 104) = vaddq_f64(*(v44 + 104), *(v45 + 32));
    *(v44 + 15) = v46;
    *(this + *(v43 - 24) + 88) = *(this + *(v43 - 24) + 88) + *(v45 + 56);
    *(this + *(v43 - 24) + 152) = *(this + *(v43 - 24) + 152) + *(v45 + 64);
    v47 = *(this + 578) + *(v45 + 112);
    *(this + 288) = vaddq_f64(*(this + 288), *(v45 + 96));
    *(this + 578) = v47;
    v48 = *(this + 581) + *(v45 + 152);
    *(this + 4632) = vaddq_f64(*(this + 4632), *(v45 + 136));
    *(this + 581) = v48;
    *(this + 582) = *(v45 + 160) + *(this + 582);
    *(*(this + 658) + 8) = *(v45 + 168) + *(*(this + 658) + 8);
    *v121 = 0x3FF0000000000000;
    __asm { FMOV            V1.2D, #0.5 }

    v98 = _Q1;
    *&v121[8] = vmulq_f64(*(v45 + 72), _Q1);
    *&v121[24] = *(v45 + 88) * 0.5;
    *(this + 586) = BlueFin::QuaternionD::operator*(v121, this + 586);
    *(this + 587) = v54;
    *(this + 588) = v55;
    *(this + 589) = v56;
    v57 = vmulq_f64(*(*(this + 549) + 120), v98);
    *v121 = xmmword_298A436D0;
    *&v121[16] = v57;
    *(this + 602) = BlueFin::QuaternionD::operator*(v121, this + 602);
    *(this + 603) = v58;
    *(this + 604) = v59;
    *(this + 605) = v60;
    v118 = 0.0;
    v119 = 0.0;
    v107 = BlueFin::QuaternionD::conj((this + 4816));
    v108 = v61;
    v109 = v62;
    v110 = v63;
    *&v126 = BlueFin::QuaternionD::operator*(this + 586, &v107);
    *(&v126 + 1) = v64;
    v127 = v65;
    v128 = v66;
    v107 = BlueFin::QuaternionD::conj(&v126);
    v108 = v67;
    v109 = v68;
    v110 = v69;
    BlueFin::QuaternionD::qnb2Eul(&v107, &v120, &v119, &v118);
    v70 = v119;
    v117 = 0x300000003;
    v71 = __sincos_stret(v118);
    v72 = __sincos_stret(v70);
    v107 = v72.__cosval * v71.__cosval;
    v108 = v72.__cosval * v71.__sinval;
    v109 = -v72.__sinval;
    v111 = v72.__sinval * 0.0 * v71.__cosval - v71.__sinval;
    v112 = v71.__cosval + v72.__sinval * 0.0 * v71.__sinval;
    v113 = v72.__cosval * 0.0;
    v114 = v72.__sinval * v71.__cosval + v71.__sinval * 0.0;
    v115 = v72.__sinval * v71.__sinval + v71.__cosval * -0.0;
    cosval = v72.__cosval;
    v104 = 0x3FF0000000000000uLL;
    v105 = 0;
    v106 = 0;
    if (BlueFin::QuaternionD::rot2Q(&v104, &v107))
    {
      v100 = BlueFin::QuaternionD::conj((this + 4688));
      v101 = v73;
      v102 = v74;
      v103 = v75;
      v99[0] = BlueFin::QuaternionD::conj(&v104);
      v99[1] = v76;
      v99[2] = v77;
      v99[3] = v78;
      *&v126 = BlueFin::QuaternionD::operator*(&v100, v99);
      *(&v126 + 1) = v79;
      v127 = v80;
      v128 = v81;
      *(this + 602) = BlueFin::QuaternionD::conj(&v126);
      *(this + 603) = v82;
      *(this + 604) = v83;
      *(this + 605) = v84;
      BlueFin::QuaternionD::normalize(this + 301);
      *&v126 = BlueFin::QuaternionD::conj((this + 4816));
      *(&v126 + 1) = v85;
      v127 = v86;
      v128 = v87;
      v100 = BlueFin::QuaternionD::operator*(this + 586, &v126);
      v101 = v88;
      v102 = v89;
      v103 = v90;
      *&v126 = BlueFin::QuaternionD::conj(&v100);
      *(&v126 + 1) = v91;
      v127 = v92;
      v128 = v93;
      BlueFin::QuaternionD::qnb2Eul(&v126, &v120, &v119, &v118);
      v94 = v118;
      *(this + *(*this - 24) + 176) = v94;
      bzero((*(this + 549) + 8), 8 * *(this + 1100));
      return 1;
    }

    v96 = "otQnv_.rot2Q(otCnv_)";
    DeviceFaultNotify("glpe_shrimpkf.cpp", 1826, "MeasUpdateINS", "otQnv_.rot2Q(otCnv_)");
    v97 = 1826;
LABEL_33:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_shrimpkf.cpp", v97, v96);
  }

  v17 = a4 / sqrt(v15 + a5);
  if (v17 < 0.0)
  {
    v17 = -v17;
  }

  if ((a3 - 6) < 0xFFFFFFFD || v17 < a6)
  {
    if (v17 < a6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v18 = *(this + *(*this - 24) + 200);
    if ((v18 - *(this + 1254)) >> 4 < 0x753 || (v18 - *(this + 1255)) > 0x7530)
    {
      goto LABEL_14;
    }

    if (v17 < fmax(a6, 5.0))
    {
      a5 = exp(v17 / fmin(a6, 5.0)) * a5;
      goto LABEL_14;
    }
  }

  return 0;
}

void BlueFin::GlPeShrimpKf::SetInsLla(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 4584) = *a2;
  *(a1 + 4592) = v5;
  v6 = a2[2];
  *(a1 + 4600) = v6;
  v7 = *(a1 + 4656);
  if (v7 == 0.0)
  {
    v9 = (a1 + *(*a1 - 24));
    v9[1] = v4;
    v9[2] = v5;
    v9[3] = v6;
  }

  else
  {
    v14 = v2;
    v15 = v3;
    v8 = a1 + *(*a1 - 24);
    v12 = vmulq_n_f64(*(v8 + 104), v7);
    v13 = v7 * *(v8 + 120);
    BlueFin::ned2lla((a1 + 4584), v12.f64, &v10);
    *(v8 + 8) = v10;
    *(v8 + 24) = v11;
  }
}

BlueFin::GlPeShrimpKf *BlueFin::GlPeShrimpKf::ApplyZupt(BlueFin::GlPeShrimpKf *this, const BlueFin::GlPeNavGnssState *a2, uint64_t a3, uint64_t a4)
{
  v8 = 10.0;
  if (!*(a2 + 240))
  {
    v8 = 5.0;
  }

  v9 = (this + *(*this - 24));
  v10 = v9[13];
  if (sqrt(v9[14] * v9[14] + v10 * v10) <= v8 * *(v9 + 32))
  {
    v33 = v7;
    v34 = v6;
    v35 = v4;
    v36 = v5;
    v11 = this;
    v19 = 0x1500000015;
    v20 = 0;
    v18 = &v20;
    v22 = 0;
    v21 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    v23 = 0x3FF0000000000000;
    BlueFin::GlPeShrimpKf::MeasUpdateINS(this, &v18, 3, -v10, 0.0004, 5.0, a4, 0);
    v12 = -*(v11 + *(*v11 - 24) + 112);
    v13 = v18;
    bzero(v18 + 1, 8 * v19);
    v13[5] = 0x3FF0000000000000;
    BlueFin::GlPeShrimpKf::MeasUpdateINS(v11, &v18, 4, v12, 0.0004, 5.0, v14, 0);
    v15 = -*(v11 + *(*v11 - 24) + 120);
    v16 = v18;
    bzero(v18 + 1, 8 * v19);
    v16[6] = 0x3FF0000000000000;
    return BlueFin::GlPeShrimpKf::MeasUpdateINS(v11, &v18, 5, v15, 0.0004, 5.0, v17, 0);
  }

  return this;
}

uint64_t BlueFin::GlPeShrimpKf::ApplyAltMeas(BlueFin::GlPeShrimpKf *this, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9[0] = &v10;
  v9[1] = 0x1500000015;
  v10 = 0;
  v11 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  v12 = 0xBFF0000000000000;
  v7 = fmax(a3, 1.0);
  return BlueFin::GlPeShrimpKf::MeasUpdateINS(this, v9, 2, a2 - *(this + *(*this - 24) + 24), v7 * v7, a4, a7, 1);
}

double BlueFin::GlPeShrimpKf::GetVehConstraintHVec(uint64_t a1, _DWORD *a2)
{
  v31 = 0;
  BlueFin::GlPeShrimpKf::GetVelVeh(a1, v30);
  if (HIDWORD(v31) != 1 || v31 != 3)
  {
    DeviceFaultNotify("glpe_shrimpkf.cpp", 2226, "GetVehConstraintHVec", "otVv.GetColSize() == 1 && otVv.GetRowSize() == 3");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_shrimpkf.cpp", 2226, "otVv.GetColSize() == 1 && otVv.GetRowSize() == 3");
  }

  v36 = 0;
  v5 = *(a1 + 4992);
  v33[0] = *(a1 + 4984);
  v34 = v5;
  v35 = *(a1 + 5000);
  BlueFin::QuaternionD::rotVec((a1 + 4816), v33, v32);
  v33[0] = *v32;
  v34 = v32[4];
  v36 = 0x100000003;
  v35 = v32[8];
  BlueFin::vcross(v33, v32);
  v28[1] = 0x300000003;
  v29[0] = 0;
  v28[0] = v29;
  v29[1] = v30[0];
  v29[2] = v30[4];
  v29[3] = v30[8];
  BlueFin::MatSkewCross::MatSkewCross(&v27, v28);
  v26[0] = BlueFin::QuaternionD::conj((a1 + 4816));
  v26[1] = v6;
  v26[2] = v7;
  v26[3] = v8;
  v22[0] = BlueFin::QuaternionD::operator*((a1 + 4688), v26);
  v22[1] = v9;
  v22[2] = v10;
  v22[3] = v11;
  v23.f64[0] = BlueFin::QuaternionD::conj(v22);
  v23.f64[1] = v12;
  v24 = v13;
  v25 = v14;
  BlueFin::QuaternionD::q2Rot(&v23, v26);
  v15 = 0;
  v16 = 1;
  do
  {
    a2[2] = 21;
    v17 = *a2;
    *(v17 + 168) = 0;
    *(v17 + 152) = 0u;
    *(v17 + 136) = 0u;
    *(v17 + 120) = 0u;
    *(v17 + 104) = 0u;
    *(v17 + 88) = 0u;
    *(v17 + 72) = 0u;
    *(v17 + 56) = 0u;
    *(v17 + 40) = 0u;
    *(v17 + 24) = 0u;
    *(v17 + 8) = 0u;
    v18 = *a2;
    *(v18 + 32) = *&v26[v15];
    *(v18 + 48) = v26[v15 + 2];
    *(*a2 + 72) = BlueFin::MatSkewCross::operator()(&v27, v16, 1);
    *(*a2 + 80) = BlueFin::MatSkewCross::operator()(&v27, v16, 2);
    *(*a2 + 88) = BlueFin::MatSkewCross::operator()(&v27, v16, 3);
    *(*a2 + 120) = -BlueFin::MatSkewCross::operator()(&v27, v16, 2);
    v19 = BlueFin::MatSkewCross::operator()(&v27, v16, 3);
    v20 = *a2;
    a2 += 48;
    *(v20 + 128) = -v19;
    result = -*&v32[v15];
    *(v20 + 168) = result;
    v15 += 4;
    ++v16;
  }

  while (v15 != 12);
  return result;
}

uint64_t BlueFin::GlPeShrimpKf::ApplyVehConstraint(BlueFin::GlPeShrimpKf *this)
{
  v14[24] = *MEMORY[0x29EDCA608];
  v11[16] = 0.0;
  BlueFin::GlPeShrimpKf::GetVelVeh(this, v11);
  for (i = 0; i != 144; i += 48)
  {
    v3 = &v12[i];
    *&v12[i + 4] = 0uLL;
    *v3 = &v12[i + 4];
    *(v3 + 1) = 0x1500000000;
    *(v3 + 2) = 0uLL;
    *(v3 + 3) = 0uLL;
    *(v3 + 4) = 0uLL;
    *(v3 + 5) = 0uLL;
    *(v3 + 6) = 0uLL;
    *(v3 + 7) = 0uLL;
    *(v3 + 8) = 0uLL;
    *(v3 + 9) = 0uLL;
    *(v3 + 10) = 0uLL;
    *(v3 + 11) = 0uLL;
  }

  BlueFin::GlPeShrimpKf::GetVehConstraintHVec(this, v12);
  BlueFin::GlPeShrimpKf::MeasUpdateINS(this, &v13, 6, -v11[4], *(this + 2) * *(this + 2), 5.0, v4, 0);
  v6 = *(this + 655);
  v7 = this + *(*this - 24);
  if (*(v6 + 21) != 1 || (IsParkingGarage = BlueFin::GlPeNavGnssBlocked::IsParkingGarage(v6, *(v7 + 50)), v9 = 6.0, IsParkingGarage))
  {
    v9 = sqrt(vaddvq_f64(vmulq_f64(*(v7 + 104), *(v7 + 104)))) * 0.2;
  }

  if (v9 < *(this + 2))
  {
    v9 = *(this + 2);
  }

  return BlueFin::GlPeShrimpKf::MeasUpdateINS(this, v14, 7, -v11[8], v9 * v9, 5.0, v5, 0);
}

void BlueFin::GlPeShrimpKf::ApplyNoTurnConstraint(BlueFin::GlPeShrimpKf *this)
{
  v32 = BlueFin::QuaternionD::conj((this + 4816));
  v33 = v2;
  v34 = v3;
  v35 = v4;
  v50[0] = BlueFin::QuaternionD::operator*(this + 590, &v32);
  v50[1] = v5;
  v50[2] = v6;
  v50[3] = v7;
  v48 = 0.0;
  v49 = 0.0;
  v46 = 0.0;
  v32 = BlueFin::QuaternionD::conj(v50);
  v33 = v8;
  v34 = v9;
  v35 = v10;
  BlueFin::QuaternionD::qnb2Eul(&v32, &v49, &v48, &v46);
  v32 = BlueFin::QuaternionD::conj((this + 4816));
  v33 = v11;
  v34 = v12;
  v35 = v13;
  v43.f64[0] = BlueFin::QuaternionD::operator*(this + 586, &v32);
  v43.f64[1] = v14;
  v44 = v15;
  v45 = v16;
  v32 = BlueFin::QuaternionD::conj(&v43);
  v33 = v17;
  v34 = v18;
  v35 = v19;
  BlueFin::QuaternionD::qnb2Eul(&v32, &v49, &v48, &v47);
  v21 = v48;
  v20 = v49;
  v42 = 0x300000003;
  v22 = __sincos_stret(v46);
  v23 = __sincos_stret(v21);
  v24 = __sincos_stret(v20);
  v32 = v23.__cosval * v22.__cosval;
  v33 = v23.__cosval * v22.__sinval;
  v34 = -v23.__sinval;
  v36 = v24.__sinval * v23.__sinval * v22.__cosval - v24.__cosval * v22.__sinval;
  v37 = v24.__sinval * v23.__sinval * v22.__sinval + v24.__cosval * v22.__cosval;
  v38 = v24.__sinval * v23.__cosval;
  v39 = v24.__cosval * v23.__sinval * v22.__cosval + v24.__sinval * v22.__sinval;
  v40 = v24.__cosval * v23.__sinval * v22.__sinval - v24.__sinval * v22.__cosval;
  v41 = v24.__cosval * v23.__cosval;
  v43 = 0x3FF0000000000000uLL;
  v44 = 0;
  v45 = 0;
  BlueFin::QuaternionD::rot2Q(&v43, &v32);
  v31[0] = BlueFin::QuaternionD::conj(&v43);
  v31[1] = v25;
  v31[2] = v26;
  v31[3] = v27;
  *(this + 586) = BlueFin::QuaternionD::operator*(v31, this + 602);
  *(this + 587) = v28;
  *(this + 588) = v29;
  *(this + 589) = v30;
}

void BlueFin::GlPeShrimpKf::PropStates(uint64_t *a1, __n128 a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1 + *(*a1 - 24);
  v8 = *(v7 + 120);
  v17 = *(v7 + 104);
  v9 = *(a1 + 294);
  v19[0] = *(a1 + 293);
  v19[1] = v9;
  (*(v6 + 8))();
  (*(*a1 + 16))(a1, v19, a1 + 586, a4, a2);
  v10 = a1 + *(*a1 - 24);
  __asm { FMOV            V1.2D, #0.5 }

  v16 = vmulq_n_f64(vmulq_f64(vaddq_f64(v17, *(v10 + 104)), _Q1), a2.n128_f64[0]);
  _Q1.f64[0] = (v8 + *(v10 + 120)) * 0.5 * a2.n128_f64[0];
  v20 = v16;
  v21 = _Q1.f64[0];
  BlueFin::ned2lla(a1 + 573, v20.f64, v22);
  BlueFin::GlPeShrimpKf::SetInsLla(a1, v22);
}

float64_t BlueFin::GlPeShrimpKf::PropAttitude(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a2 + 16);
  v8 = *a2;
  v9 = v4;
  v5 = *(a1 + 4648);
  v8 = vsubq_f64(v8, *(a1 + 4632));
  *&v9 = *&v4 - v5;
  BlueFin::QuaternionD::gyroIntegration(a1 + 4688, &v8, a3);
  BlueFin::QuaternionD::normalize((a1 + 4688));
  result = v8.f64[0];
  v7 = v9;
  *(a1 + 4984) = v8;
  *(a1 + 5000) = v7;
  return result;
}

double BlueFin::GlPeShrimpKf::PropVelocity(uint64_t a1, float64x2_t *a2, float64x2_t *this, double *a4, double a5)
{
  BlueFin::QuaternionD::q2Rot(this, v36);
  BlueFin::QuaternionD::q2Rot(a2, v35);
  v9 = *a4;
  v10 = a4[1];
  v30[16] = 0x100000003;
  v31[0] = v9;
  v32 = v10;
  v11 = a4[2];
  v34 = 0x100000003;
  v33 = v11;
  v12 = *(a1 + 4616);
  v13 = *(a1 + 4624);
  v30[0] = *(a1 + 4608);
  v30[4] = v12;
  v30[8] = v13;
  BlueFin::Matrix::operator+=(v36, v35);
  BlueFin::Matrix::operator-=(v31, v30);
  v14 = v32;
  *(a1 + 4920) = *(a1 + 4920) + v31[0] * a5;
  *(a1 + 4928) = *(a1 + 4928) + v14 * a5;
  *(a1 + 4936) = *(a1 + 4936) + v33 * a5;
  v15 = v34;
  if (v34 >= 1)
  {
    v16 = 0;
    v17 = HIDWORD(v34);
    v18 = v31;
    do
    {
      v19 = v18;
      v20 = v17;
      if (v17 >= 1)
      {
        do
        {
          *v19 = *v19 * 0.5;
          ++v19;
          --v20;
        }

        while (v20);
      }

      ++v16;
      v18 += 4;
    }

    while (v16 != v15);
  }

  BlueFin::Matrix::mult(v28, v36, v31);
  v21 = v28[0];
  v22 = v28[4];
  *(a1 + 4952) = *(a1 + 4952) + v28[0] * a5;
  *(a1 + 4960) = *(a1 + 4960) + v22 * a5;
  v23 = v29;
  *(a1 + 4968) = *(a1 + 4968) + v29 * a5;
  *(a1 + 4664) = v21;
  *(a1 + 4672) = v22;
  v24 = v23 + 9.81;
  *(a1 + 4680) = v24;
  v25 = (a1 + *(*a1 - 24));
  v26 = v25[14] + v22 * a5;
  result = v25[15] + v24 * a5;
  v25[13] = v25[13] + v21 * a5;
  v25[14] = v26;
  v25[15] = result;
  return result;
}

double BlueFin::GlPeShrimpKf::PropClock(BlueFin::GlPeShrimpKf *this, double a2)
{
  *(this + *(*this - 24) + 88) = *(this + *(*this - 24) + 88) + *(this + *(*this - 24) + 152) * a2;
  if (*(this + 5819) == 1)
  {
    v2 = fmax((*(this + 1455) * *(this + 1455)) * 0.5, 4.0);
  }

  else
  {
    v2 = 0.09;
  }

  v3 = a2 * a2 * v2;
  v4 = *(this + 83);
  v6 = *(v4 + 56);
  v5 = *(v4 + 64);
  v7 = *(v6 + 56) + v3 * a2 / 3.0;
  v8 = v3 * 0.5 + *(v6 + 64);
  *(v6 + 56) = v7 + a2;
  *(v6 + 64) = v8;
  result = *(v5 + 64) + v2 * a2;
  *(v5 + 56) = v8;
  *(v5 + 64) = result;
  return result;
}

uint64_t BlueFin::GlPeShrimpNhcMonitor::RunDetector(uint64_t this)
{
  if (*(this + 2) == 20)
  {
    v1 = this;
    *(this + 168) = 0;
    for (i = 19; i != 9; --i)
    {
      v3 = BlueFin::GlPeShrimpNhcMonitor::at(v1, i);
      *(v1 + 168) = *(v1 + 168) + *v3 * *v3;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 1;
    do
    {
      this = BlueFin::GlPeShrimpNhcMonitor::at(v1, v4);
      if (*this < 0.0)
      {
        ++v6;
      }

      v8 = v7;
      if (v4 <= 0x12)
      {
        do
        {
          v9 = *BlueFin::GlPeShrimpNhcMonitor::at(v1, v8);
          this = BlueFin::GlPeShrimpNhcMonitor::at(v1, v4);
          if (v9 > *this)
          {
            ++v5;
          }

          else
          {
            --v5;
          }

          ++v8;
        }

        while (v8 != 20);
      }

      ++v4;
      ++v7;
    }

    while (v4 != 20);
    if (v5 >= 0)
    {
      v10 = v5;
    }

    else
    {
      v10 = -v5;
    }

    *(v1 + 176) = (v10 - 1) / 30.822;
    v11 = v6 >= 0x10 && v5 < 0 || v6 < 5 && v5 > 0;
    *(v1 + 180) = v11;
  }

  return this;
}

uint64_t BlueFin::GlPeShrimpNhcMonitor::at(BlueFin::GlPeShrimpNhcMonitor *this, unsigned int a2)
{
  if (*(this + 2) <= a2)
  {
    DeviceFaultNotify("glpe_shrimpkf.h", 86, "at", "idx < size()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_shrimpkf.h", 86, "idx < size()");
  }

  return this + 8 * ((*this + a2) % 0x14) + 8;
}

double BlueFin::GlPeShrimpKf::stReducedNavState::stReducedNavState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, __int128 *a6, uint64_t a7)
{
  *a1 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = *(a2 + 104);
  *(a1 + 64) = *(a2 + 120);
  *(a1 + 72) = *(a2 + 176);
  *(a1 + 80) = *(a2 + 88);
  *(a1 + 88) = *(a2 + 152);
  *(a1 + 96) = *a3;
  *(a1 + 112) = *(a3 + 16);
  *(a1 + 120) = *a4;
  *(a1 + 136) = *(a4 + 16);
  v7 = a5[1];
  *(a1 + 144) = *a5;
  *(a1 + 160) = v7;
  v8 = *a6;
  v9 = a6[1];
  *(a1 + 224) = 0u;
  *(a1 + 176) = v8;
  *(a1 + 192) = v9;
  *(a1 + 208) = a1 + 224;
  *&result = 0x1500000000;
  *(a1 + 216) = 0x1500000000;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 256;
  if (a7)
  {
    v11 = *(a7 + 20);
    if (v11 != *(a7 + 16))
    {
      DeviceFaultNotify("glpe_shrimpkf.h", 373, "stReducedNavState", "potP->GetColSize() == potP->GetRowSize()");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_shrimpkf.h", 373, "potP->GetColSize() == potP->GetRowSize()");
    }

    *(a1 + 216) = v11;
    if (v11 >= 1)
    {
      v12 = *(a7 + 8);
      v13 = 1;
      do
      {
        result = *(*(v12 + 8 * v13) + 8 * v13);
        *(a1 + 224 + 8 * v13++) = result;
      }

      while (v11 >= v13);
    }
  }

  return result;
}

BlueFin::BigMatrix *BlueFin::BigMatrixDim<21,21>::BigMatrixDim(BlueFin::BigMatrix *this, const BlueFin::BigMatrix *a2)
{
  v3 = this + 24;
  *(this + 1) = xmmword_298A43FA0;
  *this = this + 32;
  *(this + 1) = this + 3560;
  *(this + 445) = 0;
  for (i = 8; i != 176; i += 8)
  {
    *(*(this + 1) + i) = v3;
    v3 += 168;
  }

  BlueFin::BigMatrix::Clone(this, a2);
  return this;
}

uint64_t BlueFin::GlPeTurnDetector::DoWaitForTurn(uint64_t this, double a2)
{
    ;
  }

    ;
  }

  v4 = *(this + 16);
  v3 = (this + 16);
  if (v4 >= i)
  {
    v4 = i;
  }

  if (i < *(this + 24))
  {
    i = *(this + 24);
  }

  *v3 = v4;
  *(this + 24) = i;
  if (v4 >= -0.785398163)
  {
    if (i <= 0.785398163)
    {
      return this;
    }

    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  *v3 = 0.0;
  *(this + 24) = 0;
  *this = 2;
  *(this + 4) = v5;
  *(this + 8) = a2;
  return this;
}

uint64_t BlueFin::GlPeTurnDetector::DoTurnIdentified(uint64_t result, uint64_t a2, int a3, double a4)
{
  v4 = *(result + 4);
  if (!v4)
  {
    DeviceFaultNotify("glpe_turndetector.cpp", 86, "DoTurnIdentified", "m_eDirection != NONE");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_turndetector.cpp", 86, "m_eDirection != NONE");
  }

    ;
  }

    ;
  }

  if (v4 == 1 && i >= 0.0)
  {
    ++*(result + 32);
LABEL_12:
    *result = 1;
    *(result + 40) = a3;
    *(result + 48) = *a2;
    *(result + 64) = *(a2 + 16);
    goto LABEL_13;
  }

  if (v4 == 2 && i <= 0.0)
  {
    ++*(result + 36);
    goto LABEL_12;
  }

LABEL_13:
  *(result + 8) = a4;
  return result;
}

double *BlueFin::GlPeTurnDetector::Update(double *result, uint64_t a2, int a3, double a4)
{
  v5 = *result;
  if (*result == 2)
  {

    return BlueFin::GlPeTurnDetector::DoTurnIdentified(result, a2, a3, a4);
  }

  else if (v5 == 1)
  {

    return BlueFin::GlPeTurnDetector::DoWaitForTurn(result, a4);
  }

  else
  {
    if (v5)
    {
      DeviceFaultNotify("glpe_turndetector.cpp", 128, "Update", "false");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_turndetector.cpp", 128, "false");
    }

    result[1] = a4;
    *result = 1;
    result[3] = 0.0;
    result[4] = 0.0;
    result[2] = 0.0;
  }

  return result;
}

double BlueFin::GlPeTightPolaroid::stInnovData::Norm(BlueFin::GlPeTightPolaroid::stInnovData *this)
{
  v1 = *(this + 3);
  if (v1 == 0.0 || (v2 = *(this + 4), v2 == 0.0))
  {
    DeviceFaultNotify("glpe_prawnkf.h", 149, "Norm", "IsValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.h", 149, "IsValid()");
  }

  v3 = v1 + v2;
  return *(this + 2) / sqrtf(v3);
}

uint64_t BlueFin::GlPeMeasList::push_back(uint64_t result, uint64_t a2)
{
  v2 = *(result + 800);
  if (v2 >= 0x64)
  {
    DeviceFaultNotify("glpe_prawnkf.h", 74, "push_back", "m_nMeas < _DIM(m_pastSkfMeas)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.h", 74, "m_nMeas < _DIM(m_pastSkfMeas)");
  }

  *(result + 800) = v2 + 1;
  *(result + 8 * v2) = a2;
  return result;
}

void BlueFin::GlPePrawnKf::Reset(uint64_t a1, int a2)
{
  v3 = (a1 + 0x2000);
  BlueFin::GlPeShrimpKf::ResetINS(a1, a2);
  bzero(*(a1 + 10840), ((4 * v3[2656] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(a1 + 10928), ((4 * v3[2744] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v3[2912] = 1;
}

void BlueFin::GlPePrawnKf::ComputePosition(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v329 = *MEMORY[0x29EDCA608];
  if ((*(v3 + 3) & 4) == 0)
  {
    DeviceFaultNotify("glpe_prawnkf.cpp", 696, "ComputePosition", "rotSettings.Has(TCKF_ENABLE)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.cpp", 696, "rotSettings.Has(TCKF_ENABLE)");
  }

  v5 = v2;
  v6 = *v2;
  *(v2 + *(*v2 - 24) + 256) &= ~1u;
  *(v2 + *(v6 - 24) + 256) &= ~2u;
  v260 = v2 + 5042;
  *(v2 + 5042) = 1;
  if (*(v2 + 8) != 2)
  {
    *(v2 + *(v6 - 24) + 200) = **(v2 + 5840);
    return;
  }

  v7 = v4;
  v258 = v3;
  if (sqrt(*(v2 + 4960) * *(v2 + 4960) + *(v2 + 4952) * *(v2 + 4952) + (*(v2 + 4968) + 9.81) * (*(v2 + 4968) + 9.81)) > 2.943)
  {
    *(v2 + 5043) = 1;
  }

  v259 = (v2 + 10848);
  *(v2 + *(v6 - 24) + 200) = **(v2 + 5840);
  v8 = (*(v2 + *(v6 - 24) + 200) - *(v2 + 4860)) * 0.001;
  BlueFin::GlPeShrimpKf::PropClock(v2, v8);
  if (*(v5 + 8))
  {
    *(v5 + 4656) = *(v5 + 4656) + v8 + (*(v5 + 4856) - *(v5 + 4864)) * -0.001;
  }

  v261 = v7;
  v9 = &v323;
  v10 = 5600;
  do
  {
    *(v9 - 8) = 0;
    *(v9 - 1) = -1;
    *v9 = 575;
    v9 += 7;
    v10 -= 56;
  }

  while (v10);
  v11 = *(v5 + 5840);
  v12 = (v5 + *(*v5 - 24));
  BlueFin::GlSetBase::operator=(v12 + 264, v11 + 184);
  *(v12 + 276) = *(v11 + 196);
  v13 = *(v11 + 212);
  v14 = *(v11 + 228);
  v15 = *(v11 + 244);
  v12[21] = v11[16];
  *(v12 + 308) = v14;
  *(v12 + 324) = v15;
  *(v12 + 292) = v13;
  BlueFin::GlSetBase::GlSetBase(__src, &__src[12], 0x13u, (v5 + *(*v5 - 24) + 264));
  BlueFin::GlPeNavMeasSelect::GlPeNavMeasSelect(&v324, *(v5 + 5848), *(v5 + 5840));
  BlueFin::GlPeNavMeasSelect::RemoveTimeFail(&v324, __src);
  BlueFin::GlPeNavMeasSelect::RemoveHighUra(&v324, __src);
  LODWORD(v262) = __src[8];
  memcpy(&v263, *__src, 4 * __src[8]);
  HIDWORD(v262) = v263;
  BlueFin::GlSetIterator::operator++(&v262);
  while (BYTE1(v262) != v262)
  {
    if (WORD1(v262) >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v16 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v262);
    v17 = *v16;
    LODWORD(v16) = v16[1];
    LOBYTE(v286) = v17;
    HIDWORD(v286) = v16;
    *v287 = WORD1(v262);
    MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*(v5 + 5840), &v286, 0, 0);
    PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*(v5 + 5840), &v286, 0);
    if ((MeMeas[13] & 0x80) != 0 || *(MeMeas + 27) * 1000000000.0 > 999.0 || !BlueFin::stPeSigMeasKF::IsPRValidForNav(PeMeas))
    {
      BlueFin::GlSetBase::Remove(__src, *v287);
    }

    BlueFin::GlSetIterator::operator++(&v262);
  }

  v20 = (v5 + *(*v5 - 24));
  BlueFin::GlSetBase::operator=(v20 + 264, __src);
  v21 = 0;
  v22 = v317;
  v23 = v319[0];
  *(v20 + 308) = v318;
  *(v20 + 324) = v23;
  v20[21] = *(v319 + 12);
  *(v20 + 276) = *&__src[12];
  *(v20 + 292) = v22;
  v24 = *(v5 + 5840);
  v25 = *(*v5 - 24);
  do
  {
    v26 = &v325[v21 - 8];
    v26[12] = 0;
    *(v26 + 4) = -1;
    *(v26 + 10) = 575;
    v21 += 24;
  }

  while (v21 != 2400);
  v27 = v5 + v25;
  v262 = &v264;
  LOBYTE(v263) = 19;
  v264 = 0u;
  v265 = 0u;
  v266 = 0u;
  memset(v267, 0, 28);
  v28 = *(v5 + v25 + 272);
  __src[0] = v28;
  memcpy(&__src[8], *(v27 + 264), 4 * v28);
  *&__src[2] = 0;
  __src[1] = 0;
  *&__src[4] = *&__src[8];
  BlueFin::GlSetIterator::operator++(__src);
  if (__src[1] != __src[0])
  {
    v29 = &v324;
    do
    {
      if (*&__src[2] >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v30 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * *&__src[2];
      v31 = *v30;
      LODWORD(v30) = v30[1];
      LOBYTE(v286) = v31;
      HIDWORD(v286) = v30;
      *v287 = *&__src[2];
      if ((*(*(v24 + 8) + ((*&__src[2] >> 3) & 0x1FFC)) >> (__src[2] & 0x1F)))
      {
        if (v29 - &v324 >= 2400)
        {
          DeviceFaultNotify("glpe_prawnkf.cpp", 156, "SortSignalIdsByCN0", "(pLastPrMeas - astPrMeasCNoForSort) < GL_CHANNELS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.cpp", 156, "(pLastPrMeas - astPrMeasCNoForSort) < GL_CHANNELS");
        }

        v32 = BlueFin::GlPeMsmtMgr::GetMeMeas(v24, &v286, 0, 0);
        if ((v29 + 12) != &v286)
        {
          *(v29 + 12) = v286;
          *(v29 + 4) = HIDWORD(v286);
          *(v29 + 10) = *v287;
        }

        *v29 = *(v32 + 29);
        v29 += 3;
      }

      BlueFin::GlSetIterator::operator++(__src);
    }

    while (__src[1] != __src[0]);
    if (v29 != &v324)
    {
      v33 = (-85 * ((v29 - &v324) >> 3));
      if (v33 > 1)
      {
        for (i = 1; i != v33; ++i)
        {
          v35 = &v325[24 * i - 8];
          if (*(v35 - 3) < *v35)
          {
            v36 = i - 1;
            if (i != 1)
            {
              v37 = 0;
              do
              {
                v38 = (v36 + v37) / 2;
                if (*&v325[24 * v38 - 8] >= *v35)
                {
                  v37 = v38 + 1;
                }

                else
                {
                  v36 = (v36 + v37) / 2;
                }
              }

              while (v37 != v36);
            }

            *__src = *v35;
            *&__src[16] = *(v35 + 2);
            v39 = &v325[24 * v36 - 8];
            memmove(v325 + 24 * v36 + 16, v39, 24 * (i - v36));
            *v39 = *__src;
            v39[2] = *&__src[16];
          }
        }
      }

      v40 = v262;
      v41 = 20;
      do
      {
        *(v40 + (*&v325[v41 - 8] >> 5)) |= 1 << *&v325[v41 - 8];
        if (&v325[v41 - 4] == v29)
        {
          break;
        }

        v42 = v41 + 4;
        v41 += 24;
      }

      while (v42 < 1177);
    }
  }

  v43 = (v5 + *(*v5 - 24));
  BlueFin::GlSetBase::operator=(v43 + 264, &v262);
  v44 = v267[0];
  *(v43 + 308) = v266;
  *(v43 + 324) = v44;
  v43[21] = *(v267 + 12);
  v45 = v265;
  *(v43 + 276) = v264;
  *(v43 + 292) = v45;
  v46 = (v5 + *(*v5 - 24));
  BlueFin::GlSetBase::operator=((v46 + 22), v46 + 264);
  *(v46 + 424) = v46[21];
  v47 = *(v46 + 324);
  *(v46 + 396) = *(v46 + 308);
  *(v46 + 412) = v47;
  v48 = *(v46 + 292);
  *(v46 + 364) = *(v46 + 276);
  *(v46 + 380) = v48;
  v49 = v5 + *(*v5 - 24);
  *(v49 + 56) = *(v49 + 8);
  *(v49 + 72) = *(v49 + 24);
  v50 = *(v261 + 440);
  if (*v50)
  {
    v51 = 1;
  }

  else
  {
    v52 = *(v261 + 448);
    v53 = v52 >= 2;
    v54 = v52 - 2;
    if (v53)
    {
      v55 = v50 + 1;
      do
      {
        v56 = *v55++;
        v51 = v56 != 0;
        if (v56)
        {
          v57 = 1;
        }

        else
        {
          v57 = v54 == 0;
        }

        --v54;
      }

      while (!v57);
    }

    else
    {
      v51 = 0;
    }
  }

  v259[256] = v51;
  BlueFin::GlPeNavMeasSelect::GlPeNavMeasSelect(&v324, *(v5 + 5848), *(v5 + 5840));
  v58 = *v5;
  v59 = sqrt(*(v5 + *(*v5 - 24) + 112) * *(v5 + *(*v5 - 24) + 112) + *(v5 + *(*v5 - 24) + 104) * *(v5 + *(*v5 - 24) + 104)) * 3.0;
  if (v59 < 7.5)
  {
    v59 = 7.5;
  }

  v328 = v59;
  v60 = (v5 + *(v58 - 24));
  v61 = *(v5 + 5240);
  v62 = *(v61 + 2) >= 1 && *(v61 + 45) == 0;
  v63 = **(v5 + 5856);
  v64 = v60[11];
  v65 = v60[19];
  v66 = (*(v58 + 120))(v5);
  BlueFin::GlPeNavMeasSelect::SelectRr(&v324, v5 + 5832, (v60 + 44), (v60 + 1), v63, (v60 + 13), v62, v66, v64, v65, 0);
  BlueFin::GlPeNavMeasSelect::SelectPr(&v324, (v5 + 5832), (v5 + *(*v5 - 24) + 264), 0);
  bzero(*(v5 + 10840), ((4 * *v259 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(v5 + 10928), ((4 * v259[88] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v67 = v5 + *(*v5 - 24);
  bzero(__src, 0x328uLL);
  v324 = COERCE_DOUBLE(&v325[4]);
  v325[0] = 19;
  memset(&v325[4], 0, 48);
  memset(v326, 0, sizeof(v326));
  v68 = *(*(v5 + 5224) + 8);
  LOBYTE(v262) = *(v67 + 360);
  memcpy(&v263, *(v67 + 352), 4 * v262);
  WORD1(v262) = 0;
  BYTE1(v262) = 0;
  HIDWORD(v262) = v263;
  BlueFin::GlSetIterator::operator++(&v262);
  if (BYTE1(v262) != v262)
  {
    v69 = 0;
    v70 = v68 - 1;
    v71 = v322;
    do
    {
      v72 = WORD1(v262);
      if (WORD1(v262) >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v73 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v262);
      v74 = *v73;
      LODWORD(v73) = v73[1];
      LOBYTE(v286) = v74;
      HIDWORD(v286) = v73;
      *v287 = WORD1(v262);
      BlueFin::GlPeNavUtil::PackSkfMeas_RR_SignalId(v5 + 5832, v71, &v286, v70 < 2);
      *(*&v324 + ((v72 >> 3) & 0x1FFC)) |= 1 << v72;
      BlueFin::GlSetIterator::operator++(&v262);
      if (BYTE1(v262) == v262)
      {
        break;
      }

      v71 += 7;
      v53 = v69++ >= 0x31;
    }

    while (!v53);
  }

  BlueFin::GlSetBase::operator=(v67 + 352, &v324);
  v75 = *v326;
  *(v67 + 396) = *&v325[36];
  *(v67 + 412) = v75;
  *(v67 + 424) = *&v326[12];
  v76 = *&v325[20];
  *(v67 + 364) = *&v325[4];
  *(v67 + 380) = v76;
  v77 = BlueFin::GlSetBase::Cnt((v67 + 352));
  v78 = &v322[7 * v77];
  if (100 - v77 >= 0x32)
  {
    v79 = 50;
  }

  else
  {
    v79 = 100 - v77;
  }

  v324 = COERCE_DOUBLE(&v325[4]);
  v325[0] = 19;
  memset(&v325[4], 0, 48);
  memset(v326, 0, sizeof(v326));
  LOBYTE(v262) = *(v67 + 272);
  memcpy(&v263, *(v67 + 264), 4 * v262);
  WORD1(v262) = 0;
  BYTE1(v262) = 0;
  HIDWORD(v262) = v263;
  BlueFin::GlSetIterator::operator++(&v262);
  if (v77 != 100 && BYTE1(v262) != v262)
  {
    v80 = 1;
    v81 = &v322[7 * v77];
    do
    {
      v82 = WORD1(v262);
      if (WORD1(v262) >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v83 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v262);
      v84 = *v83;
      LODWORD(v83) = v83[1];
      LOBYTE(v286) = v84;
      HIDWORD(v286) = v83;
      *v287 = WORD1(v262);
      v85 = (*(*v5 + 248))(v5);
      BlueFin::GlPeNavUtil::PackSkfMeas_PR_SignalId(v5 + 5832, v81, &v286, v85);
      *(*&v324 + ((v82 >> 3) & 0x1FFC)) |= 1 << v82;
      BlueFin::GlSetIterator::operator++(&v262);
      if (BYTE1(v262) == v262)
      {
        break;
      }

      v81 += 7;
      v192 = v79 > v80++;
    }

    while (v192);
  }

  BlueFin::GlSetBase::operator=(v67 + 264, &v324);
  v86 = *v326;
  *(v67 + 308) = *&v325[36];
  *(v67 + 324) = v86;
  *(v67 + 336) = *&v326[12];
  v87 = *&v325[20];
  *(v67 + 276) = *&v325[4];
  *(v67 + 292) = v87;
  v88 = -1227133513 * ((&v78[7 * BlueFin::GlSetBase::Cnt((v67 + 264))] - v322) >> 3);
  if (v88)
  {
    v89 = &v322[7 * v88];
    v90 = v322;
    do
    {
      BlueFin::GlPeMeasList::push_back(__src, v90);
      v90 += 7;
    }

    while (v90 < v89);
  }

  bzero(&v262, 0x328uLL);
  BlueFin::GlPeShrimpKf::SaveAprioriState(v5);
  v91 = *(v5 + 11128);
  if (v91 && *v91 == 1 && ((*(v91 + 3) & 1) != 0 || *(v5 + 8752) > 3.0))
  {
    v92 = *v5;
    v93 = *(v5 + *(*v5 - 24) + 200);
    *(v5 + 11136) = v93;
    *(v5 + 5820) = *(v91 + 8);
    if (!v93)
    {
LABEL_81:
      v94 = 0;
      goto LABEL_84;
    }
  }

  else
  {
    *(v5 + 5820) = 0;
    v93 = *(v5 + 11136);
    v92 = *v5;
    if (!v93)
    {
      goto LABEL_81;
    }
  }

  v94 = (*(v5 + *(v92 - 24) + 200) - v93) >> 3 < 0x753;
LABEL_84:
  *(v260 + 777) = v94;
  if (*(*(v5 + 5240) + 44) == 1 && BlueFin::GlSetBase::Cnt((v5 + *(v92 - 24) + 264)) < 2)
  {
    goto LABEL_178;
  }

  v95 = v5 + *(v92 - 24);
  if (v93)
  {
    v257 = (*(v95 + 200) - v93) >> 3 < 0x753;
  }

  else
  {
    v257 = 0;
  }

  v270 = v272;
  v271 = 19;
  memset(v272, 0, sizeof(v272));
  bzero(&v262, 0x328uLL);
  for (j = 0; j != 4000; j += 40)
  {
    v100 = &v325[j - 8];
    *v100 = 0;
    *(v100 + 1) = -1;
    *(v100 + 4) = 575;
    *(v100 + 3) = 0;
    *(v100 + 4) = 0;
    *(v100 + 2) = 0;
  }

  v286 = &v287[8];
  *v287 = 0x3200000000;
  memset(&v287[8], 0, 408);
  v284 = v285 + 2;
  *&v285[0] = 0x3200000000;
  memset(v285 + 8, 0, 408);
  v280 = v282;
  v281 = 0x3200000000;
  memset(v282, 0, sizeof(v282));
  v283 = 0;
  *&v278 = v279;
  *(&v278 + 1) = 0x3200000000;
  memset(v279, 0, sizeof(v279));
  if (!v320)
  {
    goto LABEL_132;
  }

  v101 = 0;
  v102 = &__src[8 * v321];
  do
  {
    v103 = *v102;
    v313 = xmmword_298A43FD0;
    v311 = &v314;
    v312 = v315;
    v315[0] = 0;
    v315[1] = &v313 + 8;
    if (*(v103 + 24) == -1)
    {
      v104 = 263361;
    }

    else
    {
      v104 = 1217;
    }

    v309[0] = v310;
    v309[1] = 0x100000000;
    v310[0] = 0;
    v310[1] = 0;
    v307[0] = v308;
    v307[1] = 0x100000000;
    v308[0] = 0;
    v308[1] = 0;
    v304[0] = v305;
    v304[1] = 0xC00000000;
    memset(v305, 0, sizeof(v305));
    v306 = 0;
    v105 = *(v95 + 88);
    v106 = **(v5 + 8728);
    v107 = *(v95 + 208);
    v108 = *(v95 + 216);
    v109 = *(v95 + 224);
    v110 = *(v95 + 232);
    v292[0] = v304;
    v292[1] = v95 + 8;
    v292[2] = v105;
    v293 = v106;
    v294 = 3;
    v295 = v104;
    v296 = v95 + 104;
    v297 = 0;
    v298 = v95 + 152;
    v299 = v107;
    v300 = v108;
    v301 = v109;
    v302 = v110;
    v303 = xmmword_298A44280;
    v288[0] = v309;
    v288[1] = v307;
    v288[2] = &v311;
    v289 = 0u;
    v290 = 0u;
    v291 = 0u;
    if ((*(**(v5 + 7344) + 16))(*(v5 + 7344), v292, v288, v103, &BlueFin::GlSet128::BIT0))
    {
      DeviceFaultNotify("glpe_prawnkf.cpp", 505, "ComputeInnov", "m_rotComputeZRH.Compute(otInp, otOut, potSkfMeas, GlSet128::BIT0) == SKF_ZRH_OK");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.cpp", 505, "m_rotComputeZRH.Compute(otInp, otOut, potSkfMeas, GlSet128::BIT0) == SKF_ZRH_OK");
    }

    v111 = *(v309[0] + 8) - *(v307[0] + 8);
    v114 = *(v103 + 32);
    v113 = v103 + 32;
    v112 = v114;
    v115 = *(v113 + 12);
    v116 = *(*(v5 + 8736) + 8);
    v117 = v312[1];
    v118 = v115 == 0;
    v119 = 32;
    v120 = 8;
    if (v115)
    {
      v121 = 32;
    }

    else
    {
      v121 = 8;
    }

    v122 = 16;
    if (!v118)
    {
      v120 = 16;
      v122 = 40;
    }

    v123 = 24;
    if (v118)
    {
      v119 = 24;
    }

    v124 = 48;
    if (v118)
    {
      v124 = 40;
    }

    else
    {
      v123 = 48;
    }

    v125 = 64;
    if (v118)
    {
      v125 = 56;
    }

    v126 = *(v116 + v121);
    v127 = *(v117 + v120);
    v128 = *(v117 + v119);
    v129 = *(v117 + v124);
    v130 = *(v117 + v125);
    v131 = (*(v126 + v121) * v127 + 0.0 + *(v126 + v122) * v128 + *(v126 + v123) * v129 + *(v126 + v125) * v130) * v127 + 0.0 + (*(*(v116 + v122) + v121) * v127 + 0.0 + *(*(v116 + v122) + v122) * v128 + *(*(v116 + v122) + v123) * v129 + *(*(v116 + v122) + v125) * v130) * v128;
    v132 = *(v116 + v123);
    v133 = *(v116 + v125);
    v134 = v131 + (*(v132 + v121) * v127 + 0.0 + *(v132 + v122) * v128 + *(v132 + v123) * v129 + *(v132 + v125) * v130) * v129 + (*(v133 + v121) * v127 + 0.0 + *(v133 + v122) * v128 + *(v133 + v123) * v129 + *(v133 + v125) * v130) * v130;
    v135 = *(v113 - 24) * *(v113 - 24);
    v273[0] = v112;
    v275 = *(v113 + 8);
    v274 = *(v113 + 4);
    *&v276 = v111;
    *(&v276 + 1) = v134;
    v277 = v135;
    v136 = &v325[40 * v101 - 8];
    *v136 = v112;
    *(v136 + 1) = v274;
    *(v136 + 4) = v275;
    *(v136 + 1) = v276;
    *(v136 + 4) = v277;
    v137 = *(v113 + 12);
    if (v137 == 2)
    {
      v139 = &v278;
      v140 = &v280;
      goto LABEL_114;
    }

    if (v137)
    {
      DeviceFaultNotify("glpe_prawnkf.cpp", 444, "PrePolaroidRun", "false");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.cpp", 444, "false");
    }

    v138 = BlueFin::GlPeMsmtMgr::GetMeMeas(*(v5 + 7336), v113, 0, 0);
    v139 = &v284;
    if ((*(v138 + 5) - 1) < 2)
    {
      v140 = &v286;
LABEL_114:
      BlueFin::SKFVector::AddLen(v140);
      v141 = BlueFin::GlPeTightPolaroid::stInnovData::Norm(v273);
      if (v141 < 0.0)
      {
        v141 = -v141;
      }

      *(*v140 + *(v140 + 2)) = v141;
    }

    if (v111 < 0.0)
    {
      v111 = -v111;
    }

    BlueFin::SKFVector::AddLen(v139);
    *&(*v139)[2 * *(v139 + 2)] = v111;
    v102 += 8;
    ++v101;
  }

  while (v102 != &__src[8 * v321 + 8 * v320]);
  if (*v287 > 2)
  {
    *(v5 + 8760) = BlueFin::SKFVector::Median(&v284, v96, v97, v98);
    v145 = BlueFin::SKFVector::Median(&v286, v142, v143, v144);
    if (v145 >= 1.5)
    {
      v146 = v145;
    }

    else
    {
      v146 = 1.5;
    }

    *(v5 + 8744) = v146;
    if (v146 > 5.0 && *(v5 + 8760) > 400.0 && sqrt(BlueFin::SKFVector::Var(&v286)) < v146 * 0.1)
    {
      v147 = v146 + v146 * 0.1;
      goto LABEL_131;
    }

    if (!v257)
    {
      v147 = 5.0;
      if (v146 <= 5.0)
      {
        v147 = v146;
      }

LABEL_131:
      *(v5 + 8744) = v147;
    }
  }

LABEL_132:
  if (v281 >= 3)
  {
    *(v5 + 8768) = BlueFin::SKFVector::Median(&v278, v96, v97, v98);
    v151 = BlueFin::SKFVector::Median(&v280, v148, v149, v150);
    v152 = *(v5 + 7352);
    v153 = 1.0;
    if ((*(v152 + 16) & 0xFFFFFFFE) == 2 && (*(v152 + 8) - 3) < 3)
    {
      v153 = 0.5;
    }

    if (v151 >= v153)
    {
      v154 = v151;
    }

    else
    {
      v154 = v153;
    }

    *(v5 + 8752) = v154;
    if (v154 > 5.0 && *(v5 + 8768) > 30.0 && sqrt(BlueFin::SKFVector::Var(&v280)) < v154 * 0.1)
    {
      v155 = v154 + v154 * 0.1;
      goto LABEL_146;
    }

    if (!v257)
    {
      v155 = 5.0;
      if (v154 <= 5.0)
      {
        v155 = v154;
      }

LABEL_146:
      *(v5 + 8752) = v155;
    }
  }

  v156 = v320;
  v157 = 1;
  if (v320)
  {
    v158 = 0;
    v159 = v321;
    v160 = &__src[8 * v321];
    do
    {
      v161 = *v160;
      v162 = *(*v160 + 44);
      if (v162)
      {
        if (v162 != 2)
        {
          DeviceFaultNotify("glpe_prawnkf.cpp", 293, "RunPolaroid", "(pMeas->eMeasType == SKF_MEAS_PR) || (pMeas->eMeasType == SKF_MEAS_RR)");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.cpp", 293, "(pMeas->eMeasType == SKF_MEAS_PR) || (pMeas->eMeasType == SKF_MEAS_RR)");
        }
      }

      else
      {
        v163 = &v325[40 * v158 - 8];
        LOBYTE(v286) = *v163;
        HIDWORD(v286) = *(v163 + 1);
        *v287 = *(v163 + 4);
        *&v287[8] = *(v163 + 1);
        *&v287[24] = *(v163 + 4);
        if (__PAIR64__(HIDWORD(v286), v286) != __PAIR64__(*(v161 + 36), *(v161 + 32)))
        {
          DeviceFaultNotify("glpe_prawnkf.cpp", 298, "RunPolaroid", "otInnov.m_otSignalId == pMeas->otSignalId");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.cpp", 298, "otInnov.m_otSignalId == pMeas->otSignalId");
        }

        v164 = BlueFin::GlPeTightPolaroid::stInnovData::Norm(&v286);
        v165 = BlueFin::GlPeMsmtMgr::GetMeMeas(*(v5 + 7336), (v161 + 32), 0, 0);
        if (v164 >= 0.0)
        {
          v166 = v164;
        }

        else
        {
          v166 = -v164;
        }

        v167 = *(v5 + 8744);
        if (v166 <= v167 || v164 >= -5.0 && v164 < -v167 && (*(v165 + 5) - 1) <= 1)
        {
          BlueFin::GlPeMeasList::push_back(&v262, v161);
          *&v270[4 * (*(v161 + 40) >> 5)] |= 1 << *(v161 + 40);
        }

        if (fabs(*&v287[8]) > 400.0)
        {
          *(*(v5 + 10840) + 4 * (*(v161 + 40) >> 5)) |= 1 << *(v161 + 40);
        }

        v159 = v321;
        v156 = v320;
      }

      v160 += 8;
      ++v158;
    }

    while (v160 != &__src[8 * v159 + 8 * v156]);
    v157 = v156 == 0;
  }

  else
  {
    v156 = 0;
  }

  v168 = *(v261 + 440);
  if (*v168)
  {
LABEL_168:
    *(v5 + 8776) = 0;
  }

  else
  {
    v205 = *(v261 + 448);
    if (v205 >= 2)
    {
      v206 = v205 - 1;
      v207 = v168 + 1;
      do
      {
        if (*v207++)
        {
          goto LABEL_168;
        }
      }

      while (--v206);
    }

    if (*(*(v5 + 7352) + 16) != 6)
    {
      ++*(v5 + 8776);
    }
  }

  if (!v157)
  {
    v177 = 0;
    v178 = &__src[8 * v321];
    if (v257)
    {
      v179 = 1.0;
    }

    else
    {
      v179 = 0.5;
    }

    while (1)
    {
      v180 = *v178;
      if ((*(*v178 + 44) & 0xFFFFFFFD) != 0)
      {
        DeviceFaultNotify("glpe_prawnkf.cpp", 341, "RunPolaroid", "(pMeas->eMeasType == SKF_MEAS_PR) || (pMeas->eMeasType == SKF_MEAS_RR)");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.cpp", 341, "(pMeas->eMeasType == SKF_MEAS_PR) || (pMeas->eMeasType == SKF_MEAS_RR)");
      }

      v181 = BlueFin::GlPeMsmtMgr::GetPeMeas(*(v5 + 7336), (v180 + 32), 0);
      if (*(v180 + 44) != 2)
      {
        goto LABEL_208;
      }

      v182 = *(v180 + 40);
      v183 = *&v270[4 * (v182 >> 5)];
      v184 = *(v181 + 110);
      v185 = *(v181 + 113);
      v186 = &v325[40 * v177 - 8];
      LOBYTE(v284) = *v186;
      HIDWORD(v284) = *(v186 + 1);
      LOWORD(v285[0]) = *(v186 + 4);
      *(v285 + 8) = *(v186 + 1);
      *(&v285[1] + 1) = *(v186 + 4);
      if (__PAIR64__(HIDWORD(v284), v284) != __PAIR64__(*(v180 + 36), *(v180 + 32)))
      {
        DeviceFaultNotify("glpe_prawnkf.cpp", 352, "RunPolaroid", "otInnov.m_otSignalId == pMeas->otSignalId");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.cpp", 352, "otInnov.m_otSignalId == pMeas->otSignalId");
      }

      v187 = 1 << (v182 & 0x1F);
      v188 = v184 & (v185 ^ 1);
      v189 = *(v5 + 8776);
      if (!v189)
      {
        break;
      }

      v190 = v187 & v183;
      if (v189 > 2)
      {
        if (v190)
        {
          v193 = BlueFin::GlPeTightPolaroid::stInnovData::Norm(&v284);
          if (v193 < 0.0)
          {
            v193 = -v193;
          }

          v192 = v193 > *(v5 + 8752);
          if ((v192 & v188) == 0)
          {
            goto LABEL_199;
          }
        }

        else if ((v188 & 1) == 0)
        {
          goto LABEL_208;
        }

        goto LABEL_203;
      }

      if (v190)
      {
        v191 = BlueFin::GlPeTightPolaroid::stInnovData::Norm(&v284);
        if (v191 < 0.0)
        {
          v191 = -v191;
        }

        v192 = v191 > v179 * *(v5 + 8752);
LABEL_199:
        if (v192)
        {
          goto LABEL_208;
        }

LABEL_207:
        BlueFin::GlPeMeasList::push_back(&v262, v180);
      }

LABEL_208:
      v178 += 8;
      ++v177;
      v156 = v320;
      if (v178 == &__src[8 * v321 + 8 * v320])
      {
        goto LABEL_170;
      }
    }

    if ((v188 & 1) == 0)
    {
      goto LABEL_208;
    }

    if ((v187 & *(*(v261 + 440) + 4 * (v182 >> 5))) != 0)
    {
LABEL_203:
      v194 = BlueFin::GlPeTightPolaroid::stInnovData::Norm(&v284);
      if (v194 < 0.0)
      {
        v194 = -v194;
      }

      v195 = *(v5 + 8752) + *(v5 + 8752);
    }

    else
    {
      BlueFin::GlSignalIdSet::GetSvIdSet(&v286, (v261 + 440));
      if (((*(v286 + ((*(v180 + 32) >> 3) & 0x1C)) >> (*(v180 + 32) & 0x1F)) & 1) == 0)
      {
        goto LABEL_208;
      }

      v194 = BlueFin::GlPeTightPolaroid::stInnovData::Norm(&v284);
      if (v194 < 0.0)
      {
        v194 = -v194;
      }

      v195 = *(v5 + 8752);
    }

    if (v194 < v195)
    {
      goto LABEL_207;
    }

    goto LABEL_208;
  }

LABEL_170:
  if (v156 && (*(v261 + 241) & 1) != 0)
  {
    v169 = 0;
    v170 = &v323 + 1;
    do
    {
      if (*v170 == 2)
      {
        BlueFin::GlPeMeasList::GetRrSignalIds(&v324, &v262);
        if ((*(*&v324 + 4 * (*(v170 - 2) >> 5)) >> (*(v170 - 1) & 0x1F)))
        {
          BlueFin::GlSignalIdSet::GetSvIdSet(&v286, (v261 + 440));
          if ((*(v286 + ((*(v170 - 12) >> 3) & 0x1C)) >> (*(v170 - 3) & 0x1F)))
          {
            *(v170 - 9) = *(v170 - 9) / 3.0;
          }
        }
      }

      ++v169;
      v170 += 14;
    }

    while (v169 < v320);
  }

LABEL_178:
  v171 = *(v5 + 5848);
  LODWORD(v286) = 0;
  *v287 = &v287[12];
  v287[8] = 8;
  memset(&v287[12], 0, 32);
  *&v287[48] = xmmword_298A41DA0;
  *&v287[64] = vdup_n_s32(0x42C60000u);
  *&v287[72] = 1120272384;
  BlueFin::stDops::stDops(&v324, &v286);
  v327 = v171;
  v172 = *(v5 + *(*v5 - 24) + 200);
  BlueFin::GlPeMeasList::GetPrSignalIds(&v284, &v262);
  BlueFin::GlSignalIdSet::GetSvIdSet(&v280, &v284);
  *&v278 = *(v5 + *(*v5 - 24) + 88);
  LODWORD(v311) = **(v5 + 5856);
  LODWORD(v304[0]) = 0;
  BlueFin::GlPeDops::GetDops(&v324, v172);
  v173 = *(v5 + *(*v5 - 24) + 200);
  BlueFin::GlPeMeasList::GetRrSignalIds(&v280, &v262);
  BlueFin::GlSignalIdSet::GetSvIdSet(&v278, &v280);
  v311 = *(v5 + *(*v5 - 24) + 88);
  LODWORD(v304[0]) = **(v5 + 5856);
  LODWORD(v292[0]) = 0;
  BlueFin::GlPeDops::GetDops(&v324, v173);
  v175 = *(*(v5 + 5240) + 8);
  if (v175)
  {
    v176 = (*(v5 + *(*v5 - 24) + 200) - v175) >> 4 < 0x271;
  }

  else
  {
    v176 = 0;
  }

  v196 = *(v5 + 5024);
  if (v196)
  {
    v196 = (*(v5 + *(*v5 - 24) + 200) - v196) > 0x3A98;
  }

  v197 = *(*(v5 + 5224) + 16);
  if (v197 == 6)
  {
    goto LABEL_325;
  }

  if ((v197 & 0xFFFFFFFE) != 2)
  {
    v176 = 0;
  }

  if (v176)
  {
LABEL_325:
    if (*&v287[52] >= 2.0)
    {
      v198 = v268;
      if (v268)
      {
        v199 = v269;
        v200 = &v262 + v269;
        do
        {
          if (!*(*v200 + 11))
          {
            v269 = ++v199;
            v268 = --v198;
          }

          ++v200;
        }

        while (v200 != &v262 + v199 + v198);
      }
    }

    v174.n128_u32[0] = DWORD1(v285[3]);
    if (*(&v285[3] + 1) >= 2.0)
    {
      if (v268)
      {
        v201 = 0;
        v202 = (&v262 + v269);
        v203 = 8 * v268;
        do
        {
          v204 = *v202++;
          if (*(v204 + 44) == 2)
          {
            ++v201;
          }

          v203 -= 8;
        }

        while (v203);
      }

      else
      {
        v201 = 0;
      }

      v268 -= v201;
    }
  }

  else
  {
    v174.n128_u32[0] = DWORD1(v285[3]);
  }

  if ((v197 == 1) | v196 & 1 && v174.n128_f32[0] >= 5.0)
  {
    v209 = v269;
    v210 = &v262 + v269;
    if (v268)
    {
      v211 = 0;
      v212 = 8 * v268;
      v213 = (&v262 + v269);
      do
      {
        v214 = *v213++;
        if (*(v214 + 44) == 2)
        {
          ++v211;
        }

        v212 -= 8;
      }

      while (v212);
    }

    else
    {
      v211 = 0;
    }

    v215 = v268 - v211;
    v268 = v215;
    if (!v215)
    {
      v196 = 0;
    }

    if (v196 == 1)
    {
      do
      {
        if (!*(*v210 + 11))
        {
          v269 = ++v209;
          v268 = --v215;
        }

        ++v210;
      }

      while (v210 != &v262 + v209 + v215);
    }
  }

  v216 = *(v5 + 5232);
  v217 = v216[81];
  v218 = *v216;
  v219 = *v5;
  if (v217 >= v218)
  {
    v221 = v258;
    if (*(v5 + *(v219 - 24) + 240) == 1)
    {
      v174.n128_u64[0] = *(v5 + 5032);
      v220 = v174.n128_f64[0] < 6.0822;
    }

    else
    {
      v220 = 1;
    }
  }

  else
  {
    v220 = 0;
    v221 = v258;
  }

  (*(v219 + 440))(v5, &v262, v221, v220, v174);
  BlueFin::GlPeMeasList::GetPrSignalIds(&v324, &v262);
  v222 = (v5 + *(*v5 - 24));
  BlueFin::GlSetBase::operator=(v222 + 264, &v324);
  v222[21] = *&v326[12];
  v223 = *&v325[20];
  v224 = *v326;
  *(v222 + 308) = *&v325[36];
  *(v222 + 324) = v224;
  *(v222 + 276) = *&v325[4];
  *(v222 + 292) = v223;
  BlueFin::GlPeMeasList::GetRrSignalIds(&v324, &v262);
  v225 = v5 + *(*v5 - 24);
  BlueFin::GlSetBase::operator=(v225 + 352, &v324);
  v226 = *&v325[20];
  v227 = *v326;
  *(v225 + 396) = *&v325[36];
  *(v225 + 412) = v227;
  *(v225 + 424) = *&v326[12];
  *(v225 + 364) = *&v325[4];
  *(v225 + 380) = v226;
  if ((BlueFin::CheckCovMat(v5 + 656) & 1) == 0)
  {
    BlueFin::GlPeShrimpKf::ResetINS(v5, 18);
  }

  if (*(v5 + 8) == 2 && !*(v260 + 774))
  {
    if (*(v5 + *(*v5 - 24) + 240))
    {
      v228 = 16;
    }

    else
    {
      v228 = 0;
    }

    if ((*(*v5 + 96))(v5) >= 0x15 && *(*(v5 + 5240) + 2) < 1)
    {
      v228 |= 4u;
    }

    if ((*(*v5 + 96))(v5) <= 0x5A)
    {
      v229 = v228;
    }

    else
    {
      v229 = v228 | 2;
    }

    v230 = *(*(v5 + 5240) + 8);
    if (v230)
    {
      v229 |= 32 * ((*(v5 + *(*v5 - 24) + 200) - v230) >> 5 < 0x753);
    }

    v231 = *v5;
    v232 = v5 + *(*v5 - 24);
    v233 = *(v232 + 241);
    v234 = *(v232 + 8);
    *&v236 = *(v232 + 24);
    v235 = *(v232 + 176);
    v324 = sqrt(*(v232 + 112) * *(v232 + 112) + *(v232 + 104) * *(v232 + 104));
    *&v325[40] = v236;
    *(&v236 + 1) = v234;
    v237 = *(v232 + 200);
    v238 = v229 & 0xFFFFFFF7;
    if (v233)
    {
      v239 = 8;
    }

    else
    {
      v239 = 0;
    }

    *v325 = v234;
    *&v325[16] = v236;
    *&v325[32] = *(&v234 + 1);
    *&v325[48] = v235;
    *v326 = v237;
    *&v326[4] = v235;
    *&v326[8] = v239 | v238;
    v240 = (*(v231 + 280))(v5);
    BlueFin::GlPeGnssNavUpa::SetUrbanPosAssist(v240, &v324, &v286);
    if (v287[32] == 1)
    {
      v241 = (*(*v5 + 280))(v5);
      v242 = BlueFin::GlPeGnssNavUpa::UnravelHeadingRad(v241, *(v5 + *(*v5 - 24) + 176), *&v287[36]);
        ;
      }

        ;
      }

      if (k < 0.0)
      {
        k = -k;
      }

      if (k >= 1.57079633)
      {
        DeviceFaultNotify("glpe_prawnkf.cpp", 1243, "ApplyXtc", "ABS(AngleDiffRad(GetHeadingRad(), dSegmentHdgRad)) < 90.0*D2R");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.cpp", 1243, "ABS(AngleDiffRad(GetHeadingRad(), dSegmentHdgRad)) < 90.0*D2R");
      }

      *((*(*v5 + 280))(v5) + 1) = 1;
      *(v260 + 3752) = 257;
      v244 = *(v5 + *(*v5 - 24) + 200);
      *(v5 + 11112) = v242;
      *(v5 + 11120) = v244;
      v245 = 0.0174532925;
      if (*&v287[40] <= 0.0174532925)
      {
        v245 = *&v287[40];
      }

      BlueFin::GlPeShrimpKf::ApplyYawMeas(v5, v242, v245);
    }

    if (v286 == 1 && v287[32] == 1)
    {
      BlueFin::lla2ned(v287, (v5 + *(*v5 - 24) + 8), 0, &v284);
      v246 = v284;
      v247 = *v285;
      v248 = *&v287[36];
      v249 = __sincosf_stret(*&v287[36]);
      v250 = *&v287[24];
      if (*&v287[24] >= *&v287[28])
      {
        v250 = *&v287[28];
      }

      BlueFin::GlPeShrimpKf::ApplyCrossTrackPosMeas(v5, v247 * v249.__cosval - *&v246 * v249.__sinval, v250, v248, 0);
    }
  }

  if (*(v260 + 273) != 1 || (v251 = *(v5 + 11136)) != 0 && (*(v5 + *(*v5 - 24) + 200) - v251) >> 3 < 0x753 || *(v5 + 8760) >= 400.0)
  {
    bzero(*(v5 + 10840), ((4 * *v259 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(*(v5 + 10928), ((4 * v259[88] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  }

  else
  {
    v252 = *(v5 + 5840);
    BlueFin::GlSetBase::GlSetBase(&v284, v285 + 1, 0x13u, (v5 + *(*v5 - 24) + 264));
    v324 = COERCE_DOUBLE(&v325[4]);
    v325[0] = 19;
    memset(&v325[4], 0, 48);
    memset(v326, 0, sizeof(v326));
    BlueFin::GlSetBase::OperatorBinaryInversion(&v284, &v324);
    BlueFin::GlSetBase::operator=(&v284, &v324);
    *(&v285[1] + 4) = *&v325[20];
    *(&v285[2] + 4) = *&v325[36];
    *(&v285[3] + 4) = *v326;
    v285[4] = *&v326[12];
    *(v285 + 4) = *&v325[4];
    BlueFin::GlSignalIdSet::setSignalIdLimits(&v284);
    BlueFin::GlSetBase::GlSetBase(&v286, &v287[4], 0x13u, (v252 + 184));
    v324 = COERCE_DOUBLE(&v325[4]);
    v325[0] = 19;
    memset(&v325[4], 0, 48);
    memset(v326, 0, sizeof(v326));
    BlueFin::GlSetBase::OperatorBinaryAnd(&v286, &v324, &v284);
    BlueFin::GlSetBase::operator=(&v286, &v324);
    *&v287[20] = *&v325[20];
    *&v287[36] = *&v325[36];
    *&v287[52] = *v326;
    *&v287[64] = *&v326[12];
    *&v287[4] = *&v325[4];
    LOBYTE(v280) = v287[0];
    memcpy(&v281, v286, 4 * v287[0]);
    WORD1(v280) = 0;
    BYTE1(v280) = 0;
    HIDWORD(v280) = v281;
    BlueFin::GlSetIterator::operator++(&v280);
    while (BYTE1(v280) != v280)
    {
      v284 = v285 + 1;
      LOBYTE(v285[0]) = 19;
      memset(v285 + 4, 0, 64);
      v285[4] = 0u;
      if (WORD1(v280) >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v253 = *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v280) + 1);
      v254 = WORD1(v280) >> 5;
      v255 = 1 << SBYTE2(v280);
      *(v285 + v254 + 1) |= 1 << SBYTE2(v280);
      if (!v253)
      {
        v256 = v5 + *(*v5 - 24);
        v278 = *(v256 + 8);
        v279[0] = *(v256 + 24);
        BlueFin::GlPeNavUtil::ComputeRangeResidVec(v5 + 5832, &v284, &v278, **(v5 + 5856), 0, 0, 0, 1, 0, 1);
        if (fabs(*(*&v324 + 8)) > 600.0)
        {
          *(*(v5 + 10928) + 4 * v254) |= v255;
        }
      }

      BlueFin::GlSetIterator::operator++(&v280);
    }
  }
}

uint64_t BlueFin::GlPeMeasList::GetRrSignalIds(uint64_t this, uint64_t a2)
{
  *(this + 12) = 0u;
  *this = this + 12;
  *(this + 8) = 19;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  *(this + 60) = 0u;
  *(this + 72) = 0u;
  v2 = *(a2 + 800);
  if (v2)
  {
    v3 = a2 + 8 * *(a2 + 804);
    v4 = 8 * v2;
    do
    {
      if (*(*v3 + 44) == 2)
      {
        *(this + 12 + 4 * (*(*v3 + 40) >> 5)) |= 1 << *(*v3 + 40);
      }

      v3 += 8;
      v4 -= 8;
    }

    while (v4);
  }

  return this;
}

uint64_t BlueFin::GlPeMeasList::GetPrSignalIds(uint64_t this, uint64_t a2)
{
  *(this + 12) = 0u;
  *this = this + 12;
  *(this + 8) = 19;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  *(this + 60) = 0u;
  *(this + 72) = 0u;
  v2 = *(a2 + 800);
  if (v2)
  {
    v3 = a2 + 8 * *(a2 + 804);
    v4 = 8 * v2;
    do
    {
      if (!*(*v3 + 44))
      {
        *(this + 12 + 4 * (*(*v3 + 40) >> 5)) |= 1 << *(*v3 + 40);
      }

      v3 += 8;
      v4 -= 8;
    }

    while (v4);
  }

  return this;
}

uint64_t BlueFin::GlPePrawnKf::GetTimeSinceResetMs(BlueFin::GlPePrawnKf *this)
{
  if (*(this + 2) == 2)
  {
    return (**(this + 730) - *(this + 1254));
  }

  else
  {
    return 4287767295;
  }
}

uint64_t non-virtual thunk toBlueFin::GlPePrawnKf::GetTimeSinceResetMs(BlueFin::GlPePrawnKf *this)
{
  if (*(this - 1456) == 2)
  {
    return (**(this + 1) - *(this - 204));
  }

  else
  {
    return 4287767295;
  }
}

uint64_t BlueFin::GlPePrawnKf::GetTimeSinceFullFixMs(BlueFin::GlPePrawnKf *this)
{
  if (*(this + 2) == 2)
  {
    return 0;
  }

  else
  {
    return 4287767295;
  }
}

uint64_t non-virtual thunk toBlueFin::GlPePrawnKf::GetTimeSinceFullFixMs(BlueFin::GlPePrawnKf *this)
{
  if (*(this - 1456) == 2)
  {
    return 0;
  }

  else
  {
    return 4287767295;
  }
}

uint64_t BlueFin::GlPePrawnKf::GetTimeFullFixMs(BlueFin::GlPePrawnKf *this)
{
  if (*(this + 2) == 2)
  {
    return *(this + *(*this - 24) + 200);
  }

  else
  {
    return 4287767295;
  }
}

uint64_t non-virtual thunk toBlueFin::GlPePrawnKf::GetTimeFullFixMs(BlueFin::GlPePrawnKf *this)
{
  if (*(this - 1456) == 2)
  {
    return *(this + *(*(this - 729) - 24) - 5632);
  }

  else
  {
    return 4287767295;
  }
}

void BlueFin::GlPePrawnKf::GetInfoForPosHulaSource(BlueFin::GlPePrawnKf *this, unsigned int *a2, unsigned __int8 *a3, BOOL *a4, BOOL *a5)
{
  *a2 = 5000;
  *a3 = 3;
  *a4 = 0;
  *a5 = 0;
}

void non-virtual thunk toBlueFin::GlPePrawnKf::GetInfoForPosHulaSource(BlueFin::GlPePrawnKf *this, unsigned int *a2, unsigned __int8 *a3, BOOL *a4, BOOL *a5)
{
  *a2 = 5000;
  *a3 = 3;
  *a4 = 0;
  *a5 = 0;
}

double BlueFin::GlPePrawnKf::GetStP(BlueFin::GlPePrawnKf *this, double *a2, double *a3, double *a4)
{
  v4 = *(this + 83);
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  *a2 = *(v6 + 8);
  *a3 = *(v6 + 16);
  result = *(v5 + 16);
  *a4 = result;
  return result;
}

double non-virtual thunk toBlueFin::GlPePrawnKf::GetStP(BlueFin::GlPePrawnKf *this, double *a2, double *a3, double *a4)
{
  v4 = *(this - 646);
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  *a2 = *(v6 + 8);
  *a3 = *(v6 + 16);
  result = *(v5 + 16);
  *a4 = result;
  return result;
}

uint64_t BlueFin::GlPePrawnKf::IsExtLocAvailable(BlueFin::GlPePrawnKf *this, char a2)
{
  v4 = *(this + 905);
  v5 = (*(*this + 184))(this);
  v6 = (*(*this + 216))(this);
  if (BlueFin::GlPeExtLoc::IsPosLocMeasAvailable(v4, v5, v6, a2))
  {
    v7 = *(*(this + 905) + 136);
    if (v7)
    {
      v8 = *(v7 + 3009) ^ 1;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

BOOL BlueFin::GlPePrawnKf::IsFirstFixConditionForExtLoc(BlueFin::GlPePrawnKf *this)
{
  v2 = *(this + 2);
  v3 = (*(*this + 96))(this);
  result = v3 == 1 || v2 == 2;
  if (v2 == 2 && v3 != 1)
  {
    v6 = *(this + *(*this - 24) + 200);
    return (v6 - (*(*this + 120))(this)) >> 4 > 0x36A;
  }

  return result;
}

float BlueFin::GlPePrawnKf::Update(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(a1 + 2) != 2)
  {
    v38 = "IsKfInit()";
    DeviceFaultNotify("glpe_prawnkf.cpp", 985, "Update", "IsKfInit()");
    v39 = 985;
    goto LABEL_34;
  }

  if (!*(a2 + 800))
  {
    v28 = 0;
    goto LABEL_29;
  }

  v40 = 0;
  v6 = (a2 + 8 * *(a2 + 804));
  v42 = a1 + 573;
  v41 = a1 + 583;
  do
  {
    v7 = *v6;
    if ((*(*v6 + 48) & 1) == 0)
    {
      v38 = "(*it)->bValid";
      DeviceFaultNotify("glpe_prawnkf.cpp", 990, "Update", "(*it)->bValid");
      v39 = 990;
      goto LABEL_34;
    }

    v87[0] = v88;
    v87[1] = 0x100000000;
    v88[0] = 0;
    v88[1] = 0;
    v85[0] = v86;
    v85[1] = 0x100000000;
    v86[0] = 0;
    v86[1] = 0;
    v83[0] = v84;
    v83[1] = 0x100000000;
    v84[0] = 0;
    v84[1] = 0;
    v81[0] = v82;
    v81[1] = 0xD00000000;
    memset(v82, 0, sizeof(v82));
    *v75 = xmmword_298A442E0;
    v73 = &v75[16];
    v74 = v80;
    v80[0] = 0;
    v80[1] = &v75[8];
    if (*(v7 + 24) == -1)
    {
      v8 = 394305;
    }

    else
    {
      v8 = 132161;
    }

    v9 = a1 + *(*a1 - 24);
    v10 = *(v9 + 11);
    v11 = *a1[732];
    v12 = *(v9 + 52);
    v13 = *(v9 + 54);
    v14 = *(v9 + 56);
    v15 = *(v9 + 58);
    v16 = a1[582];
    v60[0] = v81;
    v60[1] = v42;
    v60[2] = v10;
    v61 = v11;
    v62 = 3;
    v63 = v8;
    v64 = v9 + 104;
    v65 = v41;
    v66 = v9 + 152;
    v67 = v12;
    v68 = v13;
    v69 = v14;
    v70 = v15;
    v71 = v16;
    v72 = 0x4008000000000000;
    v56[0] = v87;
    v56[1] = v85;
    v56[2] = &v73;
    v56[3] = v83;
    v57 = 0uLL;
    v58 = 0uLL;
    v59 = 0;
    if ((*(*a1[731] + 16))(a1[731], v60, v56))
    {
      v38 = "m_rotComputeZRH.Compute(otInp, otOut, *it, GlSet128::BIT0) == SKF_ZRH_OK";
      DeviceFaultNotify("glpe_prawnkf.cpp", 1005, "Update", "m_rotComputeZRH.Compute(otInp, otOut, *it, GlSet128::BIT0) == SKF_ZRH_OK");
      v39 = 1005;
      goto LABEL_34;
    }

    v17 = *(v87[0] + 8);
    v18 = *(v85[0] + 8);
    v19 = *(v83[0] + 8);
    v20 = *v6;
    v21 = *(*v6 + 44);
    if (v21)
    {
      if (v21 == 2)
      {
        v22 = 0;
        v23 = 12;
        goto LABEL_13;
      }

      v38 = "false";
      DeviceFaultNotify("glpe_prawnkf.cpp", 1021, "Update", "false");
      v39 = 1021;
LABEL_34:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.cpp", v39, v38);
    }

    v23 = 11;
    v21 = 1;
    v22 = 1;
LABEL_13:
    *(a1 + *(*a1 - 24) + 256) |= v21;
    if (*&v75[4] != 13)
    {
      v38 = "otH.GetColSize() == (IsStateEnabled(ID_STATE_GITO) ? KF_STATE_GITO : KF_MAX_STATE)";
      DeviceFaultNotify("glpe_prawnkf.cpp", 1025, "Update", "otH.GetColSize() == (IsStateEnabled(ID_STATE_GITO) ? KF_STATE_GITO : KF_MAX_STATE)");
      v39 = 1025;
      goto LABEL_34;
    }

    if (*v75 != 1)
    {
      v38 = "otH.GetRowSize() == 1";
      DeviceFaultNotify("glpe_prawnkf.cpp", 1026, "Update", "otH.GetRowSize() == 1");
      v39 = 1026;
      goto LABEL_34;
    }

    v44[1] = 0x1500000015;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v44[0] = &v45;
    v24 = *(v74 + 1);
    if ((a4 & 1) == 0)
    {
      *(&v45 + 1) = v24[1];
      v25 = v24[5];
      *&v46 = v24[3];
      *(&v46 + 1) = v25;
      *&v47 = v24[2];
      *(&v47 + 1) = v24[4];
      v26 = v24[13];
      *&v48 = v24[6];
      *&v55 = v26;
    }

    *(&v48 + 1) = v24[7];
    *&v49 = v24[8];
    if (BlueFin::GlPeShrimpKf::MeasUpdateINS(a1, v44, v23, v17 - v18, v19, 5.0, v20, 0))
    {
      if (v22)
      {
        LOBYTE(v40) = v40 + 1;
      }

      else
      {
        ++BYTE4(v40);
      }
    }

    ++v6;
  }

  while (v6 != (a2 + 8 * *(a2 + 804) + 8 * *(a2 + 800)));
  v28 = v40 > 2u || BYTE4(v40) > 2u;
LABEL_29:
  v29 = a1[731];
  LODWORD(v73) = 0;
  v74 = &v75[4];
  v75[0] = 8;
  *&v75[4] = 0u;
  v76 = 0u;
  v77 = xmmword_298A41DA0;
  v78 = vdup_n_s32(0x42C60000u);
  v79 = 1120272384;
  BlueFin::stDops::stDops(v44, &v73);
  *(&v49 + 1) = v29;
  v30 = *(a1 + *(*a1 - 24) + 200);
  BlueFin::GlPeMeasList::GetPrSignalIds(v81, a2);
  BlueFin::GlSignalIdSet::GetSvIdSet(v60, v81);
  v56[0] = *(a1 + *(*a1 - 24) + 88);
  LODWORD(v87[0]) = *a1[732];
  LODWORD(v85[0]) = 0;
  BlueFin::GlPeDops::GetDops(v44, v30);
  *(a1 + 5314) = v28;
  *(a1 + 5315) = *(&v77 + 1) <= 3.0;
  v31 = *a1;
  v32 = a1[83];
  v33 = *(v32[1] + 8) + *(v32[2] + 16);
  *(a1 + *(*a1 - 24) + 80) = sqrtf(v33);
  v34 = *(v32[3] + 24);
  *(a1 + *(v31 - 24) + 84) = sqrtf(v34);
  v35 = *(v32[4] + 32) + *(v32[5] + 40);
  *(a1 + *(v31 - 24) + 128) = sqrtf(v35);
  v36 = *(v32[6] + 48);
  result = sqrtf(v36);
  *(a1 + *(v31 - 24) + 140) = result;
  return result;
}

double BlueFin::GlPePrawnKf::GetXtcTaHdg(BlueFin::GlPePrawnKf *this, double *a2, unsigned int *a3)
{
  result = *(this + 1389);
  *a2 = result;
  *a3 = *(this + 2780);
  return result;
}

double non-virtual thunk toBlueFin::GlPePrawnKf::GetXtcTaHdg(BlueFin::GlPePrawnKf *this, double *a2, unsigned int *a3)
{
  result = *(this + 660);
  *a2 = result;
  *a3 = *(this + 1322);
  return result;
}

void BlueFin::GlPePrawnKf::GetSlowFilter(BlueFin::GlPePrawnKf *this)
{
  DeviceFaultNotify("glpe_prawnkf.h", 264, "GetSlowFilter", "false");
  __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.h", 264, "false");
}

{
  DeviceFaultNotify("glpe_prawnkf.h", 265, "GetSlowFilter", "false");
  __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.h", 265, "false");
}

float BlueFin::GlPePrawnKf::GetEstPosErr(BlueFin::GlPePrawnKf *this)
{
  result = 6378100.0;
  if (*(this + 2) == 2 && (*(this + 5818) & 1) == 0 && (*(*(this + 653) + 8) - 3) <= 3)
  {
    return *(this + *(*this - 24) + 80);
  }

  return result;
}

double BlueFin::GlPePrawnKf::GetInfoForPdrCalibration(uint64_t *a1, uint64_t a2, double *a3, uint64_t a4, double *a5, double *a6)
{
  v9 = *a1;
  v10 = a1 + *(*a1 - 24);
  *a2 = *(v10 + 8);
  *(a2 + 16) = *(v10 + 3);
  *a3 = (*(v9 + 304))();
  v11 = *a1;
  *a5 = *(a1 + *(*a1 - 24) + 176);
  result = *(a1 + *(v11 - 24) + 184);
  *a6 = result;
  return result;
}

void non-virtual thunk toBlueFin::GlPePrawnKf::GetSlowFilter(BlueFin::GlPePrawnKf *this)
{
  DeviceFaultNotify("glpe_prawnkf.h", 264, "GetSlowFilter", "false");
  __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.h", 264, "false");
}

{
  DeviceFaultNotify("glpe_prawnkf.h", 265, "GetSlowFilter", "false");
  __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.h", 265, "false");
}
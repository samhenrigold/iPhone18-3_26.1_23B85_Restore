float CMMsl::CoprocessorReplyGaitMetrics::CoprocessorReplyGaitMetrics(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041DB30;
  *(a1 + 92) = *(a2 + 92);
  *(a2 + 92) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  result = *(a2 + 84);
  *(a1 + 84) = result;
  return result;
}

CMMsl *CMMsl::CoprocessorReplyGaitMetrics::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::CoprocessorReplyGaitMetrics::CoprocessorReplyGaitMetrics(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::CoprocessorReplyGaitMetrics::formatText(CMMsl::CoprocessorReplyGaitMetrics *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 23);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "asymmetryProbabilityEstimate", *(this + 4));
    v5 = *(this + 23);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "cycleTime", *(this + 5));
  v5 = *(this + 23);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "deviceSide", *(this + 6));
  v5 = *(this + 23);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "doubleSupportEstimate", *(this + 7));
  v5 = *(this + 23);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "gaitPhase", *(this + 8));
  v5 = *(this + 23);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "segmentsRejectedByIsCadenceConcordant", *(this + 9));
  v5 = *(this + 23);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "segmentsRejectedByIsFeasibleWalkingSpeed", *(this + 10));
  v5 = *(this + 23);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "segmentsRejectedByIsNotRunning", *(this + 11));
  v5 = *(this + 23);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "segmentsRejectedByIsPendular", *(this + 12));
  v5 = *(this + 23);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "segmentsRejectedByIsSufficientVerticalTwist", *(this + 13));
  v5 = *(this + 23);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "segmentsRejectedByIsSwingStanceCycle", *(this + 14));
  v5 = *(this + 23);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "stepIndexOfHarmonicityAP", *(this + 15));
  v5 = *(this + 23);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "stepIndexOfHarmonicityML", *(this + 16));
  v5 = *(this + 23);
  if ((v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "stepIndexOfHarmonicityVT", *(this + 17));
  v5 = *(this + 23);
  if ((v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "stepLengthEstimate", *(this + 18));
  v5 = *(this + 23);
  if ((v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "swingIndexOfHarmonicityAP", *(this + 19));
  v5 = *(this + 23);
  if ((v5 & 0x20000) == 0)
  {
LABEL_18:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "swingIndexOfHarmonicityML", *(this + 20));
  v5 = *(this + 23);
  if ((v5 & 0x40000) == 0)
  {
LABEL_19:
    if ((v5 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "swingIndexOfHarmonicityVT", *(this + 21));
  v5 = *(this + 23);
  if ((v5 & 1) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  if ((*(this + 23) & 0x80000) != 0)
  {
LABEL_21:
    PB::TextFormatter::format(a2, "walkSpeedEstimate", *(this + 22));
  }

LABEL_22:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::CoprocessorReplyGaitMetrics::readFrom(CMMsl::CoprocessorReplyGaitMetrics *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_244;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 23) |= 1u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v122 = 0;
            v123 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v124 = v2 - v22;
            v125 = (v23 + v22);
            v126 = v22 + 1;
            while (1)
            {
              if (!v124)
              {
                v26 = 0;
                *(a2 + 24) = 1;
                goto LABEL_223;
              }

              v127 = v126;
              v128 = *v125;
              *(a2 + 1) = v127;
              v26 |= (v128 & 0x7F) << v122;
              if ((v128 & 0x80) == 0)
              {
                break;
              }

              v122 += 7;
              --v124;
              ++v125;
              v126 = v127 + 1;
              v14 = v123++ > 8;
              if (v14)
              {
                v26 = 0;
                goto LABEL_222;
              }
            }

            if (*(a2 + 24))
            {
              v26 = 0;
            }

LABEL_222:
            v2 = v127;
          }

          else
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            v27 = (v23 + v22);
            v28 = v22 + 1;
            do
            {
              v2 = v28;
              *(a2 + 1) = v28;
              v29 = *v27++;
              v26 |= (v29 & 0x7F) << v24;
              if ((v29 & 0x80) == 0)
              {
                goto LABEL_223;
              }

              v24 += 7;
              ++v28;
              v14 = v25++ > 8;
            }

            while (!v14);
            v26 = 0;
          }

LABEL_223:
          *(this + 1) = v26;
          goto LABEL_240;
        case 2u:
          *(this + 23) |= 0x80000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_120;
          }

          *(this + 22) = *(*a2 + v2);
          goto LABEL_194;
        case 3u:
          *(this + 23) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_120;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_194;
        case 4u:
          *(this + 23) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_120;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_194;
        case 5u:
          *(this + 23) |= 0x20u;
          v30 = *(a2 + 1);
          v2 = *(a2 + 2);
          v31 = *a2;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v94 = 0;
            v95 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(a2 + 1);
            }

            v96 = v2 - v30;
            v97 = (v31 + v30);
            v98 = v30 + 1;
            while (1)
            {
              if (!v96)
              {
                LODWORD(v34) = 0;
                *(a2 + 24) = 1;
                goto LABEL_207;
              }

              v99 = v98;
              v100 = *v97;
              *(a2 + 1) = v99;
              v34 |= (v100 & 0x7F) << v94;
              if ((v100 & 0x80) == 0)
              {
                break;
              }

              v94 += 7;
              --v96;
              ++v97;
              v98 = v99 + 1;
              v14 = v95++ > 8;
              if (v14)
              {
                LODWORD(v34) = 0;
LABEL_206:
                v2 = v99;
                goto LABEL_207;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_206;
          }

          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = (v31 + v30);
          v36 = v30 + 1;
          do
          {
            v2 = v36;
            *(a2 + 1) = v36;
            v37 = *v35++;
            v34 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              goto LABEL_207;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_207:
          *(this + 8) = v34;
          goto LABEL_240;
        case 6u:
          *(this + 23) |= 8u;
          v62 = *(a2 + 1);
          v2 = *(a2 + 2);
          v63 = *a2;
          if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v2)
          {
            v129 = 0;
            v130 = 0;
            v66 = 0;
            if (v2 <= v62)
            {
              v2 = *(a2 + 1);
            }

            v131 = v2 - v62;
            v132 = (v63 + v62);
            v133 = v62 + 1;
            while (1)
            {
              if (!v131)
              {
                LODWORD(v66) = 0;
                *(a2 + 24) = 1;
                goto LABEL_227;
              }

              v134 = v133;
              v135 = *v132;
              *(a2 + 1) = v134;
              v66 |= (v135 & 0x7F) << v129;
              if ((v135 & 0x80) == 0)
              {
                break;
              }

              v129 += 7;
              --v131;
              ++v132;
              v133 = v134 + 1;
              v14 = v130++ > 8;
              if (v14)
              {
                LODWORD(v66) = 0;
LABEL_226:
                v2 = v134;
                goto LABEL_227;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v66) = 0;
            }

            goto LABEL_226;
          }

          v64 = 0;
          v65 = 0;
          v66 = 0;
          v67 = (v63 + v62);
          v68 = v62 + 1;
          do
          {
            v2 = v68;
            *(a2 + 1) = v68;
            v69 = *v67++;
            v66 |= (v69 & 0x7F) << v64;
            if ((v69 & 0x80) == 0)
            {
              goto LABEL_227;
            }

            v64 += 7;
            ++v68;
            v14 = v65++ > 8;
          }

          while (!v14);
          LODWORD(v66) = 0;
LABEL_227:
          *(this + 6) = v66;
          goto LABEL_240;
        case 7u:
          *(this + 23) |= 0x800u;
          v78 = *(a2 + 1);
          v2 = *(a2 + 2);
          v79 = *a2;
          if (v78 > 0xFFFFFFFFFFFFFFF5 || v78 + 10 > v2)
          {
            v143 = 0;
            v144 = 0;
            v82 = 0;
            if (v2 <= v78)
            {
              v2 = *(a2 + 1);
            }

            v145 = v2 - v78;
            v146 = (v79 + v78);
            v147 = v78 + 1;
            while (1)
            {
              if (!v145)
              {
                LODWORD(v82) = 0;
                *(a2 + 24) = 1;
                goto LABEL_235;
              }

              v148 = v147;
              v149 = *v146;
              *(a2 + 1) = v148;
              v82 |= (v149 & 0x7F) << v143;
              if ((v149 & 0x80) == 0)
              {
                break;
              }

              v143 += 7;
              --v145;
              ++v146;
              v147 = v148 + 1;
              v14 = v144++ > 8;
              if (v14)
              {
                LODWORD(v82) = 0;
LABEL_234:
                v2 = v148;
                goto LABEL_235;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v82) = 0;
            }

            goto LABEL_234;
          }

          v80 = 0;
          v81 = 0;
          v82 = 0;
          v83 = (v79 + v78);
          v84 = v78 + 1;
          do
          {
            v2 = v84;
            *(a2 + 1) = v84;
            v85 = *v83++;
            v82 |= (v85 & 0x7F) << v80;
            if ((v85 & 0x80) == 0)
            {
              goto LABEL_235;
            }

            v80 += 7;
            ++v84;
            v14 = v81++ > 8;
          }

          while (!v14);
          LODWORD(v82) = 0;
LABEL_235:
          *(this + 14) = v82;
          goto LABEL_240;
        case 8u:
          *(this + 23) |= 0x100u;
          v54 = *(a2 + 1);
          v2 = *(a2 + 2);
          v55 = *a2;
          if (v54 > 0xFFFFFFFFFFFFFFF5 || v54 + 10 > v2)
          {
            v115 = 0;
            v116 = 0;
            v58 = 0;
            if (v2 <= v54)
            {
              v2 = *(a2 + 1);
            }

            v117 = v2 - v54;
            v118 = (v55 + v54);
            v119 = v54 + 1;
            while (1)
            {
              if (!v117)
              {
                LODWORD(v58) = 0;
                *(a2 + 24) = 1;
                goto LABEL_219;
              }

              v120 = v119;
              v121 = *v118;
              *(a2 + 1) = v120;
              v58 |= (v121 & 0x7F) << v115;
              if ((v121 & 0x80) == 0)
              {
                break;
              }

              v115 += 7;
              --v117;
              ++v118;
              v119 = v120 + 1;
              v14 = v116++ > 8;
              if (v14)
              {
                LODWORD(v58) = 0;
LABEL_218:
                v2 = v120;
                goto LABEL_219;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v58) = 0;
            }

            goto LABEL_218;
          }

          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = (v55 + v54);
          v60 = v54 + 1;
          do
          {
            v2 = v60;
            *(a2 + 1) = v60;
            v61 = *v59++;
            v58 |= (v61 & 0x7F) << v56;
            if ((v61 & 0x80) == 0)
            {
              goto LABEL_219;
            }

            v56 += 7;
            ++v60;
            v14 = v57++ > 8;
          }

          while (!v14);
          LODWORD(v58) = 0;
LABEL_219:
          *(this + 11) = v58;
          goto LABEL_240;
        case 9u:
          *(this + 23) |= 0x80u;
          v86 = *(a2 + 1);
          v2 = *(a2 + 2);
          v87 = *a2;
          if (v86 > 0xFFFFFFFFFFFFFFF5 || v86 + 10 > v2)
          {
            v150 = 0;
            v151 = 0;
            v90 = 0;
            if (v2 <= v86)
            {
              v2 = *(a2 + 1);
            }

            v152 = v2 - v86;
            v153 = (v87 + v86);
            v154 = v86 + 1;
            while (1)
            {
              if (!v152)
              {
                LODWORD(v90) = 0;
                *(a2 + 24) = 1;
                goto LABEL_239;
              }

              v155 = v154;
              v156 = *v153;
              *(a2 + 1) = v155;
              v90 |= (v156 & 0x7F) << v150;
              if ((v156 & 0x80) == 0)
              {
                break;
              }

              v150 += 7;
              --v152;
              ++v153;
              v154 = v155 + 1;
              v14 = v151++ > 8;
              if (v14)
              {
                LODWORD(v90) = 0;
LABEL_238:
                v2 = v155;
                goto LABEL_239;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v90) = 0;
            }

            goto LABEL_238;
          }

          v88 = 0;
          v89 = 0;
          v90 = 0;
          v91 = (v87 + v86);
          v92 = v86 + 1;
          do
          {
            v2 = v92;
            *(a2 + 1) = v92;
            v93 = *v91++;
            v90 |= (v93 & 0x7F) << v88;
            if ((v93 & 0x80) == 0)
            {
              goto LABEL_239;
            }

            v88 += 7;
            ++v92;
            v14 = v89++ > 8;
          }

          while (!v14);
          LODWORD(v90) = 0;
LABEL_239:
          *(this + 10) = v90;
          goto LABEL_240;
        case 0xAu:
          *(this + 23) |= 0x200u;
          v46 = *(a2 + 1);
          v2 = *(a2 + 2);
          v47 = *a2;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v2)
          {
            v108 = 0;
            v109 = 0;
            v50 = 0;
            if (v2 <= v46)
            {
              v2 = *(a2 + 1);
            }

            v110 = v2 - v46;
            v111 = (v47 + v46);
            v112 = v46 + 1;
            while (1)
            {
              if (!v110)
              {
                LODWORD(v50) = 0;
                *(a2 + 24) = 1;
                goto LABEL_215;
              }

              v113 = v112;
              v114 = *v111;
              *(a2 + 1) = v113;
              v50 |= (v114 & 0x7F) << v108;
              if ((v114 & 0x80) == 0)
              {
                break;
              }

              v108 += 7;
              --v110;
              ++v111;
              v112 = v113 + 1;
              v14 = v109++ > 8;
              if (v14)
              {
                LODWORD(v50) = 0;
LABEL_214:
                v2 = v113;
                goto LABEL_215;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v50) = 0;
            }

            goto LABEL_214;
          }

          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = (v47 + v46);
          v52 = v46 + 1;
          do
          {
            v2 = v52;
            *(a2 + 1) = v52;
            v53 = *v51++;
            v50 |= (v53 & 0x7F) << v48;
            if ((v53 & 0x80) == 0)
            {
              goto LABEL_215;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          LODWORD(v50) = 0;
LABEL_215:
          *(this + 12) = v50;
          goto LABEL_240;
        case 0xBu:
          *(this + 23) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_120;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_194;
        case 0xCu:
          *(this + 23) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_120;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_194;
        case 0xDu:
          *(this + 23) |= 0x400u;
          v38 = *(a2 + 1);
          v2 = *(a2 + 2);
          v39 = *a2;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v101 = 0;
            v102 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(a2 + 1);
            }

            v103 = v2 - v38;
            v104 = (v39 + v38);
            v105 = v38 + 1;
            while (1)
            {
              if (!v103)
              {
                LODWORD(v42) = 0;
                *(a2 + 24) = 1;
                goto LABEL_211;
              }

              v106 = v105;
              v107 = *v104;
              *(a2 + 1) = v106;
              v42 |= (v107 & 0x7F) << v101;
              if ((v107 & 0x80) == 0)
              {
                break;
              }

              v101 += 7;
              --v103;
              ++v104;
              v105 = v106 + 1;
              v14 = v102++ > 8;
              if (v14)
              {
                LODWORD(v42) = 0;
LABEL_210:
                v2 = v106;
                goto LABEL_211;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_210;
          }

          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = (v39 + v38);
          v44 = v38 + 1;
          do
          {
            v2 = v44;
            *(a2 + 1) = v44;
            v45 = *v43++;
            v42 |= (v45 & 0x7F) << v40;
            if ((v45 & 0x80) == 0)
            {
              goto LABEL_211;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_211:
          *(this + 13) = v42;
          goto LABEL_240;
        case 0xEu:
          *(this + 23) |= 0x40u;
          v70 = *(a2 + 1);
          v2 = *(a2 + 2);
          v71 = *a2;
          if (v70 > 0xFFFFFFFFFFFFFFF5 || v70 + 10 > v2)
          {
            v136 = 0;
            v137 = 0;
            v74 = 0;
            if (v2 <= v70)
            {
              v2 = *(a2 + 1);
            }

            v138 = v2 - v70;
            v139 = (v71 + v70);
            v140 = v70 + 1;
            while (1)
            {
              if (!v138)
              {
                LODWORD(v74) = 0;
                *(a2 + 24) = 1;
                goto LABEL_231;
              }

              v141 = v140;
              v142 = *v139;
              *(a2 + 1) = v141;
              v74 |= (v142 & 0x7F) << v136;
              if ((v142 & 0x80) == 0)
              {
                break;
              }

              v136 += 7;
              --v138;
              ++v139;
              v140 = v141 + 1;
              v14 = v137++ > 8;
              if (v14)
              {
                LODWORD(v74) = 0;
LABEL_230:
                v2 = v141;
                goto LABEL_231;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v74) = 0;
            }

            goto LABEL_230;
          }

          v72 = 0;
          v73 = 0;
          v74 = 0;
          v75 = (v71 + v70);
          v76 = v70 + 1;
          do
          {
            v2 = v76;
            *(a2 + 1) = v76;
            v77 = *v75++;
            v74 |= (v77 & 0x7F) << v72;
            if ((v77 & 0x80) == 0)
            {
              goto LABEL_231;
            }

            v72 += 7;
            ++v76;
            v14 = v73++ > 8;
          }

          while (!v14);
          LODWORD(v74) = 0;
LABEL_231:
          *(this + 9) = v74;
          goto LABEL_240;
        case 0xFu:
          *(this + 23) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_120;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_194;
        case 0x10u:
          *(this + 23) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_120;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_194;
        case 0x11u:
          *(this + 23) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_120;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_194;
        case 0x12u:
          *(this + 23) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_120;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_194;
        case 0x13u:
          *(this + 23) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_120;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_194;
        case 0x14u:
          *(this + 23) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
          {
            *(this + 21) = *(*a2 + v2);
LABEL_194:
            v2 = *(a2 + 1) + 4;
            *(a2 + 1) = v2;
          }

          else
          {
LABEL_120:
            *(a2 + 24) = 1;
          }

          goto LABEL_240;
        default:
          if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            v157 = 0;
            return v157 & 1;
          }

          v2 = *(a2 + 1);
LABEL_240:
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_244;
          }

          break;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = (v7 + v2);
    v20 = v2 + 1;
    while (v18)
    {
      v21 = *v19;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
      }

      v15 += 7;
      --v18;
      ++v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
LABEL_18:
        v10 = 0;
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_244:
  v157 = v4 ^ 1;
  return v157 & 1;
}

uint64_t CMMsl::CoprocessorReplyGaitMetrics::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 92);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 8), 1u);
    v4 = *(v3 + 92);
    if ((v4 & 0x80000) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 88), 2u);
  v4 = *(v3 + 92);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 28), 3u);
  v4 = *(v3 + 92);
  if ((v4 & 0x8000) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = PB::Writer::write(a2, *(v3 + 72), 4u);
  v4 = *(v3 + 92);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::writeVarInt(a2, *(v3 + 32), 5u);
  v4 = *(v3 + 92);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 6u);
  v4 = *(v3 + 92);
  if ((v4 & 0x800) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::writeVarInt(a2, *(v3 + 56), 7u);
  v4 = *(v3 + 92);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::writeVarInt(a2, *(v3 + 44), 8u);
  v4 = *(v3 + 92);
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::writeVarInt(a2, *(v3 + 40), 9u);
  v4 = *(v3 + 92);
  if ((v4 & 0x200) == 0)
  {
LABEL_11:
    if ((v4 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::writeVarInt(a2, *(v3 + 48), 0xAu);
  v4 = *(v3 + 92);
  if ((v4 & 4) == 0)
  {
LABEL_12:
    if ((v4 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 20), 0xBu);
  v4 = *(v3 + 92);
  if ((v4 & 2) == 0)
  {
LABEL_13:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 16), 0xCu);
  v4 = *(v3 + 92);
  if ((v4 & 0x400) == 0)
  {
LABEL_14:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::writeVarInt(a2, *(v3 + 52), 0xDu);
  v4 = *(v3 + 92);
  if ((v4 & 0x40) == 0)
  {
LABEL_15:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::writeVarInt(a2, *(v3 + 36), 0xEu);
  v4 = *(v3 + 92);
  if ((v4 & 0x1000) == 0)
  {
LABEL_16:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 60), 0xFu);
  v4 = *(v3 + 92);
  if ((v4 & 0x2000) == 0)
  {
LABEL_17:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 64), 0x10u);
  v4 = *(v3 + 92);
  if ((v4 & 0x4000) == 0)
  {
LABEL_18:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 68), 0x11u);
  v4 = *(v3 + 92);
  if ((v4 & 0x10000) == 0)
  {
LABEL_19:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

LABEL_40:
    this = PB::Writer::write(a2, *(v3 + 80), 0x13u);
    if ((*(v3 + 92) & 0x40000) == 0)
    {
      return this;
    }

    goto LABEL_41;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 76), 0x12u);
  v4 = *(v3 + 92);
  if ((v4 & 0x20000) != 0)
  {
    goto LABEL_40;
  }

LABEL_20:
  if ((v4 & 0x40000) == 0)
  {
    return this;
  }

LABEL_41:
  v5 = *(v3 + 84);

  return PB::Writer::write(a2, v5, 0x14u);
}

BOOL CMMsl::CoprocessorReplyGaitMetrics::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 92);
  v3 = *(a2 + 92);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x40000) == 0;
  if ((v2 & 0x40000) != 0)
  {
    return (v3 & 0x40000) != 0 && *(a1 + 84) == *(a2 + 84);
  }

  return v4;
}

uint64_t CMMsl::CoprocessorReplyGaitMetrics::hash_value(CMMsl::CoprocessorReplyGaitMetrics *this)
{
  v1 = *(this + 23);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_3;
    }

LABEL_33:
    v4 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_34:
    v6 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_9;
    }

LABEL_35:
    v8 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

  v2 = *(this + 1);
  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_33;
  }

LABEL_3:
  v3 = *(this + 22);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_34;
  }

LABEL_6:
  v5 = *(this + 7);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_35;
  }

LABEL_9:
  v7 = *(this + 18);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x20) != 0)
  {
LABEL_12:
    v9 = *(this + 8);
    if ((v1 & 8) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  v9 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_13:
    v10 = *(this + 6);
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  v10 = 0;
  if ((v1 & 0x800) != 0)
  {
LABEL_14:
    v11 = *(this + 14);
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  v11 = 0;
  if ((v1 & 0x100) != 0)
  {
LABEL_15:
    v12 = *(this + 11);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  v12 = 0;
  if ((v1 & 0x80) != 0)
  {
LABEL_16:
    v13 = *(this + 10);
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  v13 = 0;
  if ((v1 & 0x200) != 0)
  {
LABEL_17:
    v14 = *(this + 12);
    if ((v1 & 4) != 0)
    {
      goto LABEL_18;
    }

LABEL_42:
    v16 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_21;
    }

LABEL_43:
    v18 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_44;
  }

LABEL_41:
  v14 = 0;
  if ((v1 & 4) == 0)
  {
    goto LABEL_42;
  }

LABEL_18:
  v15 = *(this + 5);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_43;
  }

LABEL_21:
  v17 = *(this + 4);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 0x400) != 0)
  {
LABEL_24:
    v19 = *(this + 13);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_45;
  }

LABEL_44:
  v19 = 0;
  if ((v1 & 0x40) != 0)
  {
LABEL_25:
    v20 = *(this + 9);
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_46;
  }

LABEL_45:
  v20 = 0;
  if ((v1 & 0x1000) != 0)
  {
LABEL_26:
    v21 = *(this + 15);
    v22 = LODWORD(v21);
    if (v21 == 0.0)
    {
      v22 = 0;
    }

    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_29;
    }

LABEL_47:
    v24 = 0;
    goto LABEL_48;
  }

LABEL_46:
  v22 = 0;
  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_47;
  }

LABEL_29:
  v23 = *(this + 16);
  v24 = LODWORD(v23);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

LABEL_48:
  if ((v1 & 0x4000) == 0)
  {
    v25 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_50;
    }

LABEL_62:
    v27 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_63;
  }

  v32 = *(this + 17);
  v25 = LODWORD(v32);
  if (v32 == 0.0)
  {
    v25 = 0;
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_62;
  }

LABEL_50:
  v26 = *(this + 19);
  v27 = LODWORD(v26);
  if (v26 == 0.0)
  {
    v27 = 0;
  }

  if ((v1 & 0x20000) != 0)
  {
LABEL_53:
    v28 = *(this + 20);
    v29 = LODWORD(v28);
    if (v28 == 0.0)
    {
      v29 = 0;
    }

    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_56;
    }

LABEL_64:
    v31 = 0;
    return v4 ^ v2 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v16 ^ v18 ^ v19 ^ v20 ^ v22 ^ v24 ^ v25 ^ v27 ^ v29 ^ v31;
  }

LABEL_63:
  v29 = 0;
  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_64;
  }

LABEL_56:
  v30 = *(this + 21);
  v31 = LODWORD(v30);
  if (v30 == 0.0)
  {
    v31 = 0;
  }

  return v4 ^ v2 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v16 ^ v18 ^ v19 ^ v20 ^ v22 ^ v24 ^ v25 ^ v27 ^ v29 ^ v31;
}

uint64_t CMMsl::CourseConstraints::CourseConstraints(uint64_t this)
{
  *this = off_10041DB68;
  *(this + 20) = 0;
  return this;
}

{
  *this = off_10041DB68;
  *(this + 20) = 0;
  return this;
}

void CMMsl::CourseConstraints::~CourseConstraints(CMMsl::CourseConstraints *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::CourseConstraints::CourseConstraints(CMMsl::CourseConstraints *this, const CMMsl::CourseConstraints *a2)
{
  *this = off_10041DB68;
  *(this + 5) = 0;
  if ((*(a2 + 20) & 1) == 0)
  {
    v2 = 2;
    if ((*(a2 + 20) & 2) == 0)
    {
      return *&v3;
    }

    goto LABEL_5;
  }

  v3 = *(a2 + 1);
  *(this + 20) = 1;
  *(this + 1) = v3;
  v2 = 3;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    LODWORD(v3) = *(a2 + 4);
    *(this + 20) = v2;
    *(this + 4) = v3;
  }

  return *&v3;
}

uint64_t CMMsl::CourseConstraints::operator=(uint64_t a1, const CMMsl::CourseConstraints *a2)
{
  if (a1 != a2)
  {
    CMMsl::CourseConstraints::CourseConstraints(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LODWORD(v4) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::CourseConstraints *a2, CMMsl::CourseConstraints *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

float CMMsl::CourseConstraints::CourseConstraints(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041DB68;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = off_10041DB68;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::CourseConstraints::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = off_10041DB68;
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a1 + 20);
    *(a1 + 20) = v3;
    v11 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9[1] = v7;
    LODWORD(v4) = *(a1 + 16);
    *(a1 + 16) = v5;
    v10 = v4;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::CourseConstraints::formatText(CMMsl::CourseConstraints *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
    v5 = *(this + 20);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "yaw", *(this + 4));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::CourseConstraints::readFrom(CMMsl::CourseConstraints *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_38;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_38;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(this + 20) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_29;
        }

        *(this + 1) = *(*a2 + v2);
        v2 = *(a2 + 1) + 8;
LABEL_33:
        *(a2 + 1) = v2;
        goto LABEL_34;
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_34:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_38;
      }
    }

    *(this + 20) |= 2u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
    {
LABEL_29:
      *(a2 + 24) = 1;
      goto LABEL_34;
    }

    *(this + 4) = *(*a2 + v2);
    v2 = *(a2 + 1) + 4;
    goto LABEL_33;
  }

LABEL_38:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::CourseConstraints::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(a2, v5, 2u);
  }

  return this;
}

BOOL CMMsl::CourseConstraints::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*(a2 + 20) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::CourseConstraints::hash_value(CMMsl::CourseConstraints *this)
{
  if (*(this + 20))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v3 = 0;
    return v3 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v2 = *(this + 4);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  return v3 ^ *&v1;
}

void *CMMsl::CourseCorrection::CourseCorrection(void *this)
{
  *this = off_10041DBA0;
  this[1] = 0;
  return this;
}

{
  *this = off_10041DBA0;
  this[1] = 0;
  return this;
}

void CMMsl::CourseCorrection::~CourseCorrection(CMMsl::CourseCorrection *this)
{
  v2 = *(this + 1);
  *this = off_10041DBA0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::CourseCorrection::~CourseCorrection(this);

  operator delete();
}

CMMsl::CourseCorrection *CMMsl::CourseCorrection::CourseCorrection(CMMsl::CourseCorrection *this, const CMMsl::DeviceMotionCorrection **a2)
{
  *this = off_10041DBA0;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::CourseCorrection::operator=(uint64_t a1, const CMMsl::DeviceMotionCorrection **a2)
{
  if (a1 != a2)
  {
    CMMsl::CourseCorrection::CourseCorrection(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::CourseCorrection::~CourseCorrection(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::CourseCorrection *a2, CMMsl::CourseCorrection *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::CourseCorrection::CourseCorrection(void *a1, uint64_t a2)
{
  *a1 = off_10041DBA0;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = off_10041DBA0;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::CourseCorrection::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_10041DBA0;
    v6[1] = v4;
    CMMsl::CourseCorrection::~CourseCorrection(v6);
  }

  return a1;
}

uint64_t CMMsl::CourseCorrection::formatText(CMMsl::CourseCorrection *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "correction");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::CourseCorrection::readFrom(CMMsl::CourseCorrection *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(a2 + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(a2, v9 >> 3, v9 & 7, 0) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::CourseCorrection::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

BOOL CMMsl::CourseCorrection::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::DeviceMotionCorrection::operator==(v2, v3);
  }

  return result;
}

CMMsl::DeviceMotionCorrection *CMMsl::CourseCorrection::hash_value(CMMsl::CourseCorrection *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::DeviceMotionCorrection::hash_value(result);
  }

  return result;
}

void *CMMsl::CourseCorrection::makeCorrection(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::CourseFusion::CourseFusion(uint64_t this)
{
  *this = off_10041DBD8;
  *(this + 64) = 0;
  return this;
}

{
  *this = off_10041DBD8;
  *(this + 64) = 0;
  return this;
}

void CMMsl::CourseFusion::~CourseFusion(CMMsl::CourseFusion *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::CourseFusion::CourseFusion(uint64_t this, const CMMsl::CourseFusion *a2)
{
  *this = off_10041DBD8;
  *(this + 64) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 64) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 0x800) != 0)
  {
LABEL_5:
    v5 = *(a2 + 14);
    v3 |= 0x800u;
    *(this + 64) = v3;
    *(this + 56) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 6);
    v3 |= 8u;
    *(this + 64) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 0x100) == 0)
    {
LABEL_8:
      if ((v2 & 0x200) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }
  }

  else if ((v2 & 0x100) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 11);
  v3 |= 0x100u;
  *(this + 64) = v3;
  *(this + 44) = v7;
  v2 = *(a2 + 32);
  if ((v2 & 0x200) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v8 = *(a2 + 12);
  v3 |= 0x200u;
  *(this + 64) = v3;
  *(this + 48) = v8;
  v2 = *(a2 + 32);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v9 = *(a2 + 5);
  v3 |= 4u;
  *(this + 64) = v3;
  *(this + 20) = v9;
  v2 = *(a2 + 32);
  if ((v2 & 0x1000) == 0)
  {
LABEL_11:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v10 = *(a2 + 60);
  v3 |= 0x1000u;
  *(this + 64) = v3;
  *(this + 60) = v10;
  v2 = *(a2 + 32);
  if ((v2 & 0x10) == 0)
  {
LABEL_12:
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v11 = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 64) = v3;
  *(this + 28) = v11;
  v2 = *(a2 + 32);
  if ((v2 & 2) == 0)
  {
LABEL_13:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  v12 = *(a2 + 4);
  v3 |= 2u;
  *(this + 64) = v3;
  *(this + 16) = v12;
  v2 = *(a2 + 32);
  if ((v2 & 0x40) == 0)
  {
LABEL_14:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  v13 = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 64) = v3;
  *(this + 36) = v13;
  v2 = *(a2 + 32);
  if ((v2 & 0x4000) == 0)
  {
LABEL_15:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  v14 = *(a2 + 62);
  v3 |= 0x4000u;
  *(this + 64) = v3;
  *(this + 62) = v14;
  v2 = *(a2 + 32);
  if ((v2 & 0x8000) == 0)
  {
LABEL_16:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = *(a2 + 63);
  v3 |= 0x8000u;
  *(this + 64) = v3;
  *(this + 63) = v15;
  v2 = *(a2 + 32);
  if ((v2 & 0x80) == 0)
  {
LABEL_17:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  v16 = *(a2 + 10);
  v3 |= 0x80u;
  *(this + 64) = v3;
  *(this + 40) = v16;
  v2 = *(a2 + 32);
  if ((v2 & 0x400) == 0)
  {
LABEL_18:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_32:
  v17 = *(a2 + 13);
  v3 |= 0x400u;
  *(this + 64) = v3;
  *(this + 52) = v17;
  v2 = *(a2 + 32);
  if ((v2 & 0x20) == 0)
  {
LABEL_19:
    if ((v2 & 0x2000) == 0)
    {
      return this;
    }

LABEL_34:
    v19 = *(a2 + 61);
    *(this + 64) = v3 | 0x2000;
    *(this + 61) = v19;
    return this;
  }

LABEL_33:
  v18 = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 64) = v3;
  *(this + 32) = v18;
  if ((*(a2 + 32) & 0x2000) != 0)
  {
    goto LABEL_34;
  }

  return this;
}

CMMsl *CMMsl::CourseFusion::operator=(CMMsl *a1, const CMMsl::CourseFusion *a2)
{
  if (a1 != a2)
  {
    CMMsl::CourseFusion::CourseFusion(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::CourseFusion *a2, CMMsl::CourseFusion *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  LODWORD(v4) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  LOBYTE(v3) = *(this + 60);
  *(this + 60) = *(a2 + 60);
  *(a2 + 60) = v3;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LOBYTE(v3) = *(this + 62);
  *(this + 62) = *(a2 + 62);
  *(a2 + 62) = v3;
  LOBYTE(v3) = *(this + 63);
  *(this + 63) = *(a2 + 63);
  *(a2 + 63) = v3;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  result = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = result;
  LOBYTE(v3) = *(this + 61);
  *(this + 61) = *(a2 + 61);
  *(a2 + 61) = v3;
  return result;
}

float CMMsl::CourseFusion::CourseFusion(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041DBD8;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 52) = *(a2 + 52);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 61) = *(a2 + 61);
  return result;
}

CMMsl *CMMsl::CourseFusion::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::CourseFusion::CourseFusion(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::CourseFusion::formatText(CMMsl::CourseFusion *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 0x1000) != 0)
  {
    PB::TextFormatter::format(a2, "doGyroPropagate", *(this + 60));
    v5 = *(this + 32);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "estimate", *(this + 4));
  v5 = *(this + 32);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "gravVarianceSum", *(this + 5));
  v5 = *(this + 32);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "horizontalRotation", *(this + 6));
  v5 = *(this + 32);
  if ((v5 & 0x2000) == 0)
  {
LABEL_6:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "isCourseStable", *(this + 61));
  v5 = *(this + 32);
  if ((v5 & 0x4000) == 0)
  {
LABEL_7:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "isCourseValid", *(this + 62));
  v5 = *(this + 32);
  if ((v5 & 0x8000) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "isFiller", *(this + 63));
  v5 = *(this + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "isStablePoseFiltered", *(this + 7));
  v5 = *(this + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "kalmanGain", *(this + 8));
  v5 = *(this + 32);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "measurement", *(this + 9));
  v5 = *(this + 32);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "measurementNoise", *(this + 10));
  v5 = *(this + 32);
  if ((v5 & 0x100) == 0)
  {
LABEL_13:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "notHorizontalRotation", *(this + 11));
  v5 = *(this + 32);
  if ((v5 & 0x200) == 0)
  {
LABEL_14:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "radiusOfCurvatureFiltered", *(this + 12));
  v5 = *(this + 32);
  if ((v5 & 0x400) == 0)
  {
LABEL_15:
    if ((v5 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "stateCov", *(this + 13));
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
LABEL_16:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  if ((*(this + 32) & 0x800) != 0)
  {
LABEL_17:
    PB::TextFormatter::format(a2, "yawDelta", *(this + 14));
  }

LABEL_18:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::CourseFusion::readFrom(CMMsl::CourseFusion *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_84;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 32) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_79;
        case 2u:
          *(this + 32) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_78;
        case 3u:
          *(this + 32) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_78;
        case 4u:
          *(this + 32) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_78;
        case 5u:
          *(this + 32) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_78;
        case 6u:
          *(this + 32) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_78;
        case 7u:
          *(this + 32) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v27 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v26 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v27 = v26 != 0;
          }

          *(this + 60) = v27;
          goto LABEL_80;
        case 8u:
          *(this + 32) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_78;
        case 9u:
          *(this + 32) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_78;
        case 0xAu:
          *(this + 32) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_78;
        case 0xBu:
          *(this + 32) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v29 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v28 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v29 = v28 != 0;
          }

          *(this + 62) = v29;
          goto LABEL_80;
        case 0xCu:
          *(this + 32) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v23 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v22 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v23 = v22 != 0;
          }

          *(this + 63) = v23;
          goto LABEL_80;
        case 0xDu:
          *(this + 32) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_78;
        case 0xEu:
          *(this + 32) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_66;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_78;
        case 0xFu:
          *(this + 32) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_66:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 8) = *(*a2 + v2);
LABEL_78:
            v2 = *(a2 + 1) + 4;
LABEL_79:
            *(a2 + 1) = v2;
          }

          goto LABEL_80;
        case 0x10u:
          *(this + 32) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v25 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v24 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v25 = v24 != 0;
          }

          *(this + 61) = v25;
          goto LABEL_80;
        default:
          if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            v30 = 0;
            return v30 & 1;
          }

          v2 = *(a2 + 1);
LABEL_80:
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_84;
          }

          break;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = (v7 + v2);
    v20 = v2 + 1;
    while (v18)
    {
      v21 = *v19;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
      }

      v15 += 7;
      --v18;
      ++v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
LABEL_18:
        v10 = 0;
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_84:
  v30 = v4 ^ 1;
  return v30 & 1;
}

uint64_t CMMsl::CourseFusion::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 64);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 64);
    if ((v4 & 0x800) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*(this + 64) & 0x800) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 56), 2u);
  v4 = *(v3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 24), 3u);
  v4 = *(v3 + 64);
  if ((v4 & 0x100) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 44), 4u);
  v4 = *(v3 + 64);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 48), 5u);
  v4 = *(v3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 20), 6u);
  v4 = *(v3 + 64);
  if ((v4 & 0x1000) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 60), 7u);
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = PB::Writer::write(a2, *(v3 + 28), 8u);
  v4 = *(v3 + 64);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::write(a2, *(v3 + 16), 9u);
  v4 = *(v3 + 64);
  if ((v4 & 0x40) == 0)
  {
LABEL_11:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = PB::Writer::write(a2, *(v3 + 36), 0xAu);
  v4 = *(v3 + 64);
  if ((v4 & 0x4000) == 0)
  {
LABEL_12:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 62), 0xBu);
  v4 = *(v3 + 64);
  if ((v4 & 0x8000) == 0)
  {
LABEL_13:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 63), 0xCu);
  v4 = *(v3 + 64);
  if ((v4 & 0x80) == 0)
  {
LABEL_14:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 40), 0xDu);
  v4 = *(v3 + 64);
  if ((v4 & 0x400) == 0)
  {
LABEL_15:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    this = PB::Writer::write(a2, *(v3 + 32), 0xFu);
    if ((*(v3 + 64) & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_33;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 52), 0xEu);
  v4 = *(v3 + 64);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  if ((v4 & 0x2000) == 0)
  {
    return this;
  }

LABEL_33:
  v5 = *(v3 + 61);

  return PB::Writer::write(a2, v5, 0x10u);
}

BOOL CMMsl::CourseFusion::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a2 + 64);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 62) != *(a2 + 62))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & v3 & 0x8000) != 0)
  {
    if (*(a1 + 63) != *(a2 + 63))
    {
      return 0;
    }
  }

  else if (((v2 | v3) & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x2000) == 0;
  if ((v2 & 0x2000) != 0)
  {
    return (v3 & 0x2000) != 0 && *(a1 + 61) == *(a2 + 61);
  }

  return v4;
}

uint64_t CMMsl::CourseFusion::hash_value(CMMsl::CourseFusion *this)
{
  v1 = *(this + 32);
  if ((v1 & 1) == 0)
  {
    v2 = 0.0;
    if ((*(this + 32) & 0x800) != 0)
    {
      goto LABEL_3;
    }

LABEL_43:
    v4 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_44:
    v6 = 0;
    if ((*(this + 32) & 0x100) != 0)
    {
      goto LABEL_9;
    }

LABEL_45:
    v8 = 0;
    if ((*(this + 32) & 0x200) != 0)
    {
      goto LABEL_12;
    }

LABEL_46:
    v10 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_15;
    }

LABEL_47:
    v12 = 0;
    if ((*(this + 32) & 0x1000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 32) & 0x800) == 0)
  {
    goto LABEL_43;
  }

LABEL_3:
  v3 = *(this + 14);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_44;
  }

LABEL_6:
  v5 = *(this + 6);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((*(this + 32) & 0x100) == 0)
  {
    goto LABEL_45;
  }

LABEL_9:
  v7 = *(this + 11);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((*(this + 32) & 0x200) == 0)
  {
    goto LABEL_46;
  }

LABEL_12:
  v9 = *(this + 12);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_47;
  }

LABEL_15:
  v11 = *(this + 5);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((*(this + 32) & 0x1000) != 0)
  {
LABEL_18:
    v13 = *(this + 60);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_19;
    }

LABEL_49:
    v15 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_22;
    }

LABEL_50:
    v17 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_25;
    }

LABEL_51:
    v19 = 0;
    if ((*(this + 32) & 0x4000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_52;
  }

LABEL_48:
  v13 = 0;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_49;
  }

LABEL_19:
  v14 = *(this + 7);
  v15 = LODWORD(v14);
  if (v14 == 0.0)
  {
    v15 = 0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_50;
  }

LABEL_22:
  v16 = *(this + 4);
  v17 = LODWORD(v16);
  if (v16 == 0.0)
  {
    v17 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_51;
  }

LABEL_25:
  v18 = *(this + 9);
  v19 = LODWORD(v18);
  if (v18 == 0.0)
  {
    v19 = 0;
  }

  if ((*(this + 32) & 0x4000) != 0)
  {
LABEL_28:
    v20 = *(this + 62);
    if ((*(this + 32) & 0x8000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_53;
  }

LABEL_52:
  v20 = 0;
  if ((*(this + 32) & 0x8000) != 0)
  {
LABEL_29:
    v21 = *(this + 63);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_30;
    }

LABEL_54:
    v23 = 0;
    if ((*(this + 32) & 0x400) != 0)
    {
      goto LABEL_33;
    }

LABEL_55:
    v25 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_56;
  }

LABEL_53:
  v21 = 0;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_54;
  }

LABEL_30:
  v22 = *(this + 10);
  v23 = LODWORD(v22);
  if (v22 == 0.0)
  {
    v23 = 0;
  }

  if ((*(this + 32) & 0x400) == 0)
  {
    goto LABEL_55;
  }

LABEL_33:
  v24 = *(this + 13);
  v25 = LODWORD(v24);
  if (v24 == 0.0)
  {
    v25 = 0;
  }

  if ((v1 & 0x20) != 0)
  {
LABEL_36:
    v26 = *(this + 8);
    v27 = LODWORD(v26);
    if (v26 == 0.0)
    {
      v27 = 0;
    }

    if ((*(this + 32) & 0x2000) != 0)
    {
      goto LABEL_39;
    }

LABEL_57:
    v28 = 0;
    return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v13 ^ v15 ^ v17 ^ v19 ^ v20 ^ v21 ^ v23 ^ v25 ^ v27 ^ v28;
  }

LABEL_56:
  v27 = 0;
  if ((*(this + 32) & 0x2000) == 0)
  {
    goto LABEL_57;
  }

LABEL_39:
  v28 = *(this + 61);
  return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v13 ^ v15 ^ v17 ^ v19 ^ v20 ^ v21 ^ v23 ^ v25 ^ v27 ^ v28;
}

void CMMsl::DeviceMotion::~DeviceMotion(CMMsl::DeviceMotion *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::DeviceMotion::DeviceMotion(CMMsl::DeviceMotion *this, const CMMsl::DeviceMotion *a2)
{
  *this = off_10041DC10;
  *(this + 31) = 0;
  v2 = *(a2 + 31);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 5);
    v3 = 16;
    *(this + 31) = 16;
    *(this + 5) = v4;
    v2 = *(a2 + 31);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 2);
    v3 |= 2u;
    *(this + 31) = v3;
    *(this + 2) = v4;
    v2 = *(a2 + 31);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 3);
    v3 |= 4u;
    *(this + 31) = v3;
    *(this + 3) = v4;
    v2 = *(a2 + 31);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v4 = *(a2 + 4);
  v3 |= 8u;
  *(this + 31) = v3;
  *(this + 4) = v4;
  v2 = *(a2 + 31);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  v4 = *(a2 + 1);
  v3 |= 1u;
  *(this + 31) = v3;
  *(this + 1) = v4;
  v2 = *(a2 + 31);
  if ((v2 & 0x40000) == 0)
  {
LABEL_10:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  LODWORD(v4) = *(a2 + 25);
  v3 |= 0x40000u;
  *(this + 31) = v3;
  *(this + 25) = v4;
  v2 = *(a2 + 31);
  if ((v2 & 0x80000) == 0)
  {
LABEL_11:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  LODWORD(v4) = *(a2 + 26);
  v3 |= 0x80000u;
  *(this + 31) = v3;
  *(this + 26) = v4;
  v2 = *(a2 + 31);
  if ((v2 & 0x100000) == 0)
  {
LABEL_12:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  LODWORD(v4) = *(a2 + 27);
  v3 |= 0x100000u;
  *(this + 31) = v3;
  *(this + 27) = v4;
  v2 = *(a2 + 31);
  if ((v2 & 0x2000) == 0)
  {
LABEL_13:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  LODWORD(v4) = *(a2 + 20);
  v3 |= 0x2000u;
  *(this + 31) = v3;
  *(this + 20) = v4;
  v2 = *(a2 + 31);
  if ((v2 & 0x4000) == 0)
  {
LABEL_14:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  LODWORD(v4) = *(a2 + 21);
  v3 |= 0x4000u;
  *(this + 31) = v3;
  *(this + 21) = v4;
  v2 = *(a2 + 31);
  if ((v2 & 0x8000) == 0)
  {
LABEL_15:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  LODWORD(v4) = *(a2 + 22);
  v3 |= 0x8000u;
  *(this + 31) = v3;
  *(this + 22) = v4;
  v2 = *(a2 + 31);
  if ((v2 & 0x100) == 0)
  {
LABEL_16:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  LODWORD(v4) = *(a2 + 15);
  v3 |= 0x100u;
  *(this + 31) = v3;
  *(this + 15) = v4;
  v2 = *(a2 + 31);
  if ((v2 & 0x200) == 0)
  {
LABEL_17:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  LODWORD(v4) = *(a2 + 16);
  v3 |= 0x200u;
  *(this + 31) = v3;
  *(this + 16) = v4;
  v2 = *(a2 + 31);
  if ((v2 & 0x400) == 0)
  {
LABEL_18:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  LODWORD(v4) = *(a2 + 17);
  v3 |= 0x400u;
  *(this + 31) = v3;
  *(this + 17) = v4;
  v2 = *(a2 + 31);
  if ((v2 & 0x80) == 0)
  {
LABEL_19:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  v5 = *(a2 + 14);
  v3 |= 0x80u;
  *(this + 31) = v3;
  *(this + 14) = v5;
  v2 = *(a2 + 31);
  if ((v2 & 0x800) == 0)
  {
LABEL_20:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  LODWORD(v4) = *(a2 + 18);
  v3 |= 0x800u;
  *(this + 31) = v3;
  *(this + 18) = v4;
  v2 = *(a2 + 31);
  if ((v2 & 0x20000) == 0)
  {
LABEL_21:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_44;
  }

LABEL_43:
  LODWORD(v4) = *(a2 + 24);
  v3 |= 0x20000u;
  *(this + 31) = v3;
  *(this + 24) = v4;
  v2 = *(a2 + 31);
  if ((v2 & 0x20) == 0)
  {
LABEL_22:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_45;
  }

LABEL_44:
  LODWORD(v4) = *(a2 + 12);
  v3 |= 0x20u;
  *(this + 31) = v3;
  *(this + 12) = v4;
  v2 = *(a2 + 31);
  if ((v2 & 0x1000) == 0)
  {
LABEL_23:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_46;
  }

LABEL_45:
  v6 = *(a2 + 19);
  v3 |= 0x1000u;
  *(this + 31) = v3;
  *(this + 19) = v6;
  v2 = *(a2 + 31);
  if ((v2 & 0x40) == 0)
  {
LABEL_24:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_47;
  }

LABEL_46:
  v7 = *(a2 + 13);
  v3 |= 0x40u;
  *(this + 31) = v3;
  *(this + 13) = v7;
  v2 = *(a2 + 31);
  if ((v2 & 0x10000) == 0)
  {
LABEL_25:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_48;
  }

LABEL_47:
  v8 = *(a2 + 23);
  v3 |= 0x10000u;
  *(this + 31) = v3;
  *(this + 23) = v8;
  v2 = *(a2 + 31);
  if ((v2 & 0x200000) == 0)
  {
LABEL_26:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_49;
  }

LABEL_48:
  v9 = *(a2 + 28);
  v3 |= 0x200000u;
  *(this + 31) = v3;
  *(this + 28) = v9;
  v2 = *(a2 + 31);
  if ((v2 & 0x800000) == 0)
  {
LABEL_27:
    if ((v2 & 0x400000) == 0)
    {
      return *&v4;
    }

    goto LABEL_50;
  }

LABEL_49:
  v10 = *(a2 + 120);
  v3 |= 0x800000u;
  *(this + 31) = v3;
  *(this + 120) = v10;
  if ((*(a2 + 31) & 0x400000) == 0)
  {
    return *&v4;
  }

LABEL_50:
  LODWORD(v4) = *(a2 + 29);
  *(this + 31) = v3 | 0x400000;
  *(this + 29) = v4;
  return *&v4;
}

CMMsl *CMMsl::DeviceMotion::operator=(CMMsl *a1, const CMMsl::DeviceMotion *a2)
{
  if (a1 != a2)
  {
    CMMsl::DeviceMotion::DeviceMotion(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::DeviceMotion *a2, CMMsl::DeviceMotion *a3)
{
  v3 = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  LODWORD(v8) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v8;
  LODWORD(v8) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v8;
  LODWORD(v8) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v8;
  LODWORD(v8) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v8;
  LODWORD(v8) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v8;
  LODWORD(v8) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v8;
  LODWORD(v8) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v8;
  LODWORD(v8) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v8;
  LODWORD(v8) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v8;
  v9 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v9;
  LODWORD(v8) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v8;
  LODWORD(v8) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v8;
  LODWORD(v8) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v8;
  v10 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v10;
  v11 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v11;
  v12 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v12;
  v13 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v13;
  LOBYTE(v13) = *(this + 120);
  *(this + 120) = *(a2 + 120);
  *(a2 + 120) = v13;
  result = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = result;
  return result;
}

float CMMsl::DeviceMotion::DeviceMotion(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041DC10;
  *(a1 + 124) = *(a2 + 124);
  *(a2 + 124) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  result = *(a2 + 116);
  *(a1 + 116) = result;
  return result;
}

CMMsl *CMMsl::DeviceMotion::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::DeviceMotion::DeviceMotion(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::DeviceMotion::formatText(CMMsl::DeviceMotion *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 31);
  if ((v5 & 0x20) != 0)
  {
    PB::TextFormatter::format(a2, "accuracy", *(this + 12));
    v5 = *(this + 31);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 0x800000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "clientID", *(this + 13));
  v5 = *(this + 31);
  if ((v5 & 0x800000) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "isGyroOn", *(this + 120));
  v5 = *(this + 31);
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "magneticFieldCalibrationLevel", *(this + 14));
  v5 = *(this + 31);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "magneticFieldX", *(this + 15));
  v5 = *(this + 31);
  if ((v5 & 0x200) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "magneticFieldY", *(this + 16));
  v5 = *(this + 31);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "magneticFieldZ", *(this + 17));
  v5 = *(this + 31);
  if ((v5 & 0x800) == 0)
  {
LABEL_9:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "magneticHeading", *(this + 18));
  v5 = *(this + 31);
  if ((v5 & 0x1000) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "mode", *(this + 19));
  v5 = *(this + 31);
  if ((v5 & 1) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "quaternionW", *(this + 1));
  v5 = *(this + 31);
  if ((v5 & 2) == 0)
  {
LABEL_12:
    if ((v5 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "quaternionX", *(this + 2));
  v5 = *(this + 31);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "quaternionY", *(this + 3));
  v5 = *(this + 31);
  if ((v5 & 8) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "quaternionZ", *(this + 4));
  v5 = *(this + 31);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "rotationRateX", *(this + 20));
  v5 = *(this + 31);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "rotationRateY", *(this + 21));
  v5 = *(this + 31);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "rotationRateZ", *(this + 22));
  v5 = *(this + 31);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "status", *(this + 23));
  v5 = *(this + 31);
  if ((v5 & 0x10) == 0)
  {
LABEL_19:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "timestamp", *(this + 5));
  v5 = *(this + 31);
  if ((v5 & 0x20000) == 0)
  {
LABEL_20:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "trueHeading", *(this + 24));
  v5 = *(this + 31);
  if ((v5 & 0x40000) == 0)
  {
LABEL_21:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "userAccelerationX", *(this + 25));
  v5 = *(this + 31);
  if ((v5 & 0x80000) == 0)
  {
LABEL_22:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "userAccelerationY", *(this + 26));
  v5 = *(this + 31);
  if ((v5 & 0x100000) == 0)
  {
LABEL_23:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "userAccelerationZ", *(this + 27));
  v5 = *(this + 31);
  if ((v5 & 0x200000) == 0)
  {
LABEL_24:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "variant", *(this + 28));
  if ((*(this + 31) & 0x400000) != 0)
  {
LABEL_25:
    PB::TextFormatter::format(a2, "visionCompassBias", *(this + 29));
  }

LABEL_26:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::DeviceMotion::readFrom(CMMsl::DeviceMotion *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_191;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 31) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_63;
        case 2u:
          *(this + 31) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_63;
        case 3u:
          *(this + 31) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_63;
        case 4u:
          *(this + 31) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_63;
        case 5u:
          *(this + 31) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 1) = *(*a2 + v2);
LABEL_63:
          v2 = *(a2 + 1) + 8;
          goto LABEL_161;
        case 6u:
          *(this + 31) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 25) = *(*a2 + v2);
          goto LABEL_160;
        case 7u:
          *(this + 31) |= 0x80000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 26) = *(*a2 + v2);
          goto LABEL_160;
        case 8u:
          *(this + 31) |= 0x100000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 27) = *(*a2 + v2);
          goto LABEL_160;
        case 9u:
          *(this + 31) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_160;
        case 0xAu:
          *(this + 31) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 21) = *(*a2 + v2);
          goto LABEL_160;
        case 0xBu:
          *(this + 31) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 22) = *(*a2 + v2);
          goto LABEL_160;
        case 0xCu:
          *(this + 31) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_160;
        case 0xDu:
          *(this + 31) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_160;
        case 0xEu:
          *(this + 31) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_160;
        case 0xFu:
          *(this + 31) |= 0x80u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v64 = 0;
            v65 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v66 = v2 - v22;
            v67 = (v23 + v22);
            v68 = v22 + 1;
            while (1)
            {
              if (!v66)
              {
                LODWORD(v26) = 0;
                *(a2 + 24) = 1;
                goto LABEL_173;
              }

              v69 = v68;
              v70 = *v67;
              *(a2 + 1) = v69;
              v26 |= (v70 & 0x7F) << v64;
              if ((v70 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              --v66;
              ++v67;
              v68 = v69 + 1;
              v14 = v65++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
LABEL_172:
                v2 = v69;
                goto LABEL_173;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_172;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          do
          {
            v2 = v28;
            *(a2 + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              goto LABEL_173;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_173:
          *(this + 14) = v26;
          goto LABEL_162;
        case 0x10u:
          *(this + 31) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_160;
        case 0x11u:
          *(this + 31) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 24) = *(*a2 + v2);
          goto LABEL_160;
        case 0x12u:
          *(this + 31) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_114;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_160;
        case 0x13u:
          *(this + 31) |= 0x1000u;
          v46 = *(a2 + 1);
          v2 = *(a2 + 2);
          v47 = *a2;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v2)
          {
            v85 = 0;
            v86 = 0;
            v50 = 0;
            if (v2 <= v46)
            {
              v2 = *(a2 + 1);
            }

            v87 = v2 - v46;
            v88 = (v47 + v46);
            v89 = v46 + 1;
            while (1)
            {
              if (!v87)
              {
                LODWORD(v50) = 0;
                *(a2 + 24) = 1;
                goto LABEL_185;
              }

              v90 = v89;
              v91 = *v88;
              *(a2 + 1) = v90;
              v50 |= (v91 & 0x7F) << v85;
              if ((v91 & 0x80) == 0)
              {
                break;
              }

              v85 += 7;
              --v87;
              ++v88;
              v89 = v90 + 1;
              v14 = v86++ > 8;
              if (v14)
              {
                LODWORD(v50) = 0;
LABEL_184:
                v2 = v90;
                goto LABEL_185;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v50) = 0;
            }

            goto LABEL_184;
          }

          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = (v47 + v46);
          v52 = v46 + 1;
          do
          {
            v2 = v52;
            *(a2 + 1) = v52;
            v53 = *v51++;
            v50 |= (v53 & 0x7F) << v48;
            if ((v53 & 0x80) == 0)
            {
              goto LABEL_185;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          LODWORD(v50) = 0;
LABEL_185:
          *(this + 19) = v50;
          goto LABEL_162;
        case 0x14u:
          *(this + 31) |= 0x40u;
          v56 = *(a2 + 1);
          v2 = *(a2 + 2);
          v57 = *a2;
          if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v2)
          {
            v92 = 0;
            v93 = 0;
            v60 = 0;
            if (v2 <= v56)
            {
              v2 = *(a2 + 1);
            }

            v94 = v2 - v56;
            v95 = (v57 + v56);
            v96 = v56 + 1;
            while (1)
            {
              if (!v94)
              {
                LODWORD(v60) = 0;
                *(a2 + 24) = 1;
                goto LABEL_189;
              }

              v97 = v96;
              v98 = *v95;
              *(a2 + 1) = v97;
              v60 |= (v98 & 0x7F) << v92;
              if ((v98 & 0x80) == 0)
              {
                break;
              }

              v92 += 7;
              --v94;
              ++v95;
              v96 = v97 + 1;
              v14 = v93++ > 8;
              if (v14)
              {
                LODWORD(v60) = 0;
LABEL_188:
                v2 = v97;
                goto LABEL_189;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v60) = 0;
            }

            goto LABEL_188;
          }

          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = (v57 + v56);
          v62 = v56 + 1;
          do
          {
            v2 = v62;
            *(a2 + 1) = v62;
            v63 = *v61++;
            v60 |= (v63 & 0x7F) << v58;
            if ((v63 & 0x80) == 0)
            {
              goto LABEL_189;
            }

            v58 += 7;
            ++v62;
            v14 = v59++ > 8;
          }

          while (!v14);
          LODWORD(v60) = 0;
LABEL_189:
          *(this + 13) = v60;
          goto LABEL_162;
        case 0x15u:
          *(this + 31) |= 0x10000u;
          v30 = *(a2 + 1);
          v2 = *(a2 + 2);
          v31 = *a2;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v71 = 0;
            v72 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(a2 + 1);
            }

            v73 = v2 - v30;
            v74 = (v31 + v30);
            v75 = v30 + 1;
            while (1)
            {
              if (!v73)
              {
                LODWORD(v34) = 0;
                *(a2 + 24) = 1;
                goto LABEL_177;
              }

              v76 = v75;
              v77 = *v74;
              *(a2 + 1) = v76;
              v34 |= (v77 & 0x7F) << v71;
              if ((v77 & 0x80) == 0)
              {
                break;
              }

              v71 += 7;
              --v73;
              ++v74;
              v75 = v76 + 1;
              v14 = v72++ > 8;
              if (v14)
              {
                LODWORD(v34) = 0;
LABEL_176:
                v2 = v76;
                goto LABEL_177;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_176;
          }

          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = (v31 + v30);
          v36 = v30 + 1;
          do
          {
            v2 = v36;
            *(a2 + 1) = v36;
            v37 = *v35++;
            v34 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              goto LABEL_177;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_177:
          *(this + 23) = v34;
          goto LABEL_162;
        case 0x16u:
          *(this + 31) |= 0x200000u;
          v38 = *(a2 + 1);
          v2 = *(a2 + 2);
          v39 = *a2;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v78 = 0;
            v79 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(a2 + 1);
            }

            v80 = v2 - v38;
            v81 = (v39 + v38);
            v82 = v38 + 1;
            while (1)
            {
              if (!v80)
              {
                LODWORD(v42) = 0;
                *(a2 + 24) = 1;
                goto LABEL_181;
              }

              v83 = v82;
              v84 = *v81;
              *(a2 + 1) = v83;
              v42 |= (v84 & 0x7F) << v78;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v78 += 7;
              --v80;
              ++v81;
              v82 = v83 + 1;
              v14 = v79++ > 8;
              if (v14)
              {
                LODWORD(v42) = 0;
LABEL_180:
                v2 = v83;
                goto LABEL_181;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_180;
          }

          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = (v39 + v38);
          v44 = v38 + 1;
          do
          {
            v2 = v44;
            *(a2 + 1) = v44;
            v45 = *v43++;
            v42 |= (v45 & 0x7F) << v40;
            if ((v45 & 0x80) == 0)
            {
              goto LABEL_181;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_181:
          *(this + 28) = v42;
          goto LABEL_162;
        case 0x17u:
          *(this + 31) |= 0x800000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v55 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v54 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v55 = v54 != 0;
          }

          *(this + 120) = v55;
          goto LABEL_162;
        case 0x18u:
          *(this + 31) |= 0x400000u;
          v2 = *(a2 + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
          {
            *(this + 29) = *(*a2 + v2);
LABEL_160:
            v2 = *(a2 + 1) + 4;
LABEL_161:
            *(a2 + 1) = v2;
          }

          else
          {
LABEL_114:
            *(a2 + 24) = 1;
          }

          goto LABEL_162;
        default:
          if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            v99 = 0;
            return v99 & 1;
          }

          v2 = *(a2 + 1);
LABEL_162:
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_191;
          }

          break;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = (v7 + v2);
    v20 = v2 + 1;
    while (v18)
    {
      v21 = *v19;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
      }

      v15 += 7;
      --v18;
      ++v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
LABEL_18:
        v10 = 0;
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_191:
  v99 = v4 ^ 1;
  return v99 & 1;
}

uint64_t CMMsl::DeviceMotion::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 124);
  if ((v4 & 0x10) != 0)
  {
    this = PB::Writer::write(a2, *(this + 40), 1u);
    v4 = *(v3 + 124);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16), 2u);
  v4 = *(v3 + 124);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 24), 3u);
  v4 = *(v3 + 124);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 32), 4u);
  v4 = *(v3 + 124);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 8), 5u);
  v4 = *(v3 + 124);
  if ((v4 & 0x40000) == 0)
  {
LABEL_7:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 100), 6u);
  v4 = *(v3 + 124);
  if ((v4 & 0x80000) == 0)
  {
LABEL_8:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 104), 7u);
  v4 = *(v3 + 124);
  if ((v4 & 0x100000) == 0)
  {
LABEL_9:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 108), 8u);
  v4 = *(v3 + 124);
  if ((v4 & 0x2000) == 0)
  {
LABEL_10:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 80), 9u);
  v4 = *(v3 + 124);
  if ((v4 & 0x4000) == 0)
  {
LABEL_11:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 84), 0xAu);
  v4 = *(v3 + 124);
  if ((v4 & 0x8000) == 0)
  {
LABEL_12:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 88), 0xBu);
  v4 = *(v3 + 124);
  if ((v4 & 0x100) == 0)
  {
LABEL_13:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 60), 0xCu);
  v4 = *(v3 + 124);
  if ((v4 & 0x200) == 0)
  {
LABEL_14:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 64), 0xDu);
  v4 = *(v3 + 124);
  if ((v4 & 0x400) == 0)
  {
LABEL_15:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 68), 0xEu);
  v4 = *(v3 + 124);
  if ((v4 & 0x80) == 0)
  {
LABEL_16:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::writeVarInt(a2, *(v3 + 56), 0xFu);
  v4 = *(v3 + 124);
  if ((v4 & 0x800) == 0)
  {
LABEL_17:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 72), 0x10u);
  v4 = *(v3 + 124);
  if ((v4 & 0x20000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 96), 0x11u);
  v4 = *(v3 + 124);
  if ((v4 & 0x20) == 0)
  {
LABEL_19:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 48), 0x12u);
  v4 = *(v3 + 124);
  if ((v4 & 0x1000) == 0)
  {
LABEL_20:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::writeVarInt(a2, *(v3 + 76), 0x13u);
  v4 = *(v3 + 124);
  if ((v4 & 0x40) == 0)
  {
LABEL_21:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::writeVarInt(a2, *(v3 + 52), 0x14u);
  v4 = *(v3 + 124);
  if ((v4 & 0x10000) == 0)
  {
LABEL_22:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::writeVarInt(a2, *(v3 + 92), 0x15u);
  v4 = *(v3 + 124);
  if ((v4 & 0x200000) == 0)
  {
LABEL_23:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

LABEL_48:
    this = PB::Writer::write(a2, *(v3 + 120), 0x17u);
    if ((*(v3 + 124) & 0x400000) == 0)
    {
      return this;
    }

    goto LABEL_49;
  }

LABEL_47:
  this = PB::Writer::writeVarInt(a2, *(v3 + 112), 0x16u);
  v4 = *(v3 + 124);
  if ((v4 & 0x800000) != 0)
  {
    goto LABEL_48;
  }

LABEL_24:
  if ((v4 & 0x400000) == 0)
  {
    return this;
  }

LABEL_49:
  v5 = *(v3 + 116);

  return PB::Writer::write(a2, v5, 0x18u);
}

uint64_t CMMsl::DeviceMotion::hash_value(CMMsl::DeviceMotion *this)
{
  v1 = *(this + 31);
  if ((v1 & 0x10) == 0)
  {
    v2 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_49:
    v3 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_50:
    v4 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_51:
    v5 = 0.0;
    if (v1)
    {
      goto LABEL_12;
    }

LABEL_52:
    v6 = 0.0;
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_15;
    }

LABEL_53:
    v8 = 0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_18;
    }

LABEL_54:
    v10 = 0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_21;
    }

LABEL_55:
    v12 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_24;
    }

LABEL_56:
    v14 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_27;
    }

LABEL_57:
    v16 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_30;
    }

LABEL_58:
    v18 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_33;
    }

LABEL_59:
    v20 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_36;
    }

LABEL_60:
    v22 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_39;
    }

LABEL_61:
    v24 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_62;
  }

  v2 = *(this + 5);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_49;
  }

LABEL_3:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_50;
  }

LABEL_6:
  v4 = *(this + 3);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_51;
  }

LABEL_9:
  v5 = *(this + 4);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_12:
  v6 = *(this + 1);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_53;
  }

LABEL_15:
  v7 = *(this + 25);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_54;
  }

LABEL_18:
  v9 = *(this + 26);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_55;
  }

LABEL_21:
  v11 = *(this + 27);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_56;
  }

LABEL_24:
  v13 = *(this + 20);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_57;
  }

LABEL_27:
  v15 = *(this + 21);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_58;
  }

LABEL_30:
  v17 = *(this + 22);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_59;
  }

LABEL_33:
  v19 = *(this + 15);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_60;
  }

LABEL_36:
  v21 = *(this + 16);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_61;
  }

LABEL_39:
  v23 = *(this + 17);
  v24 = LODWORD(v23);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

  if ((v1 & 0x80) != 0)
  {
LABEL_42:
    v25 = *(this + 14);
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_43;
    }

LABEL_63:
    v27 = 0;
    goto LABEL_64;
  }

LABEL_62:
  v25 = 0;
  if ((v1 & 0x800) == 0)
  {
    goto LABEL_63;
  }

LABEL_43:
  v26 = *(this + 18);
  v27 = LODWORD(v26);
  if (v26 == 0.0)
  {
    v27 = 0;
  }

LABEL_64:
  if ((v1 & 0x20000) == 0)
  {
    v28 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_66;
    }

LABEL_80:
    v30 = 0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_69;
    }

    goto LABEL_81;
  }

  v38 = *(this + 24);
  v28 = LODWORD(v38);
  if (v38 == 0.0)
  {
    v28 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_80;
  }

LABEL_66:
  v29 = *(this + 12);
  v30 = LODWORD(v29);
  if (v29 == 0.0)
  {
    v30 = 0;
  }

  if ((v1 & 0x1000) != 0)
  {
LABEL_69:
    v31 = *(this + 19);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_70;
    }

    goto LABEL_82;
  }

LABEL_81:
  v31 = 0;
  if ((v1 & 0x40) != 0)
  {
LABEL_70:
    v32 = *(this + 13);
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_71;
    }

    goto LABEL_83;
  }

LABEL_82:
  v32 = 0;
  if ((v1 & 0x10000) != 0)
  {
LABEL_71:
    v33 = *(this + 23);
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_72;
    }

    goto LABEL_84;
  }

LABEL_83:
  v33 = 0;
  if ((v1 & 0x200000) != 0)
  {
LABEL_72:
    v34 = *(this + 28);
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_85;
  }

LABEL_84:
  v34 = 0;
  if ((v1 & 0x800000) != 0)
  {
LABEL_73:
    v35 = *(this + 120);
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_74;
    }

LABEL_86:
    v37 = 0;
    return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v25 ^ v27 ^ v28 ^ v30 ^ v31 ^ v32 ^ v33 ^ v34 ^ v35 ^ v37;
  }

LABEL_85:
  v35 = 0;
  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_86;
  }

LABEL_74:
  v36 = *(this + 29);
  v37 = LODWORD(v36);
  if (v36 == 0.0)
  {
    v37 = 0;
  }

  return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v25 ^ v27 ^ v28 ^ v30 ^ v31 ^ v32 ^ v33 ^ v34 ^ v35 ^ v37;
}

uint64_t CMMsl::DeviceMotionAlwaysOn::DeviceMotionAlwaysOn(uint64_t this)
{
  *this = off_10041DC48;
  *(this + 8) = 0;
  *(this + 20) = 0;
  return this;
}

{
  *this = off_10041DC48;
  *(this + 8) = 0;
  *(this + 20) = 0;
  return this;
}

void CMMsl::DeviceMotionAlwaysOn::~DeviceMotionAlwaysOn(CMMsl::DeviceMotionAlwaysOn *this)
{
  v2 = *(this + 1);
  *this = off_10041DC48;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::DeviceMotionAlwaysOn::~DeviceMotionAlwaysOn(this);

  operator delete();
}

CMMsl::DeviceMotionAlwaysOn *CMMsl::DeviceMotionAlwaysOn::DeviceMotionAlwaysOn(CMMsl::DeviceMotionAlwaysOn *this, const CMMsl::DeviceMotion **a2)
{
  *this = off_10041DC48;
  *(this + 1) = 0;
  *(this + 5) = 0;
  if (a2[1])
  {
    operator new();
  }

  v2 = *(a2 + 20);
  if (v2)
  {
    v3 = *(a2 + 16);
    *(this + 20) |= 1u;
    *(this + 16) = v3;
    v2 = *(a2 + 20);
  }

  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 17);
    *(this + 20) |= 2u;
    *(this + 17) = v4;
  }

  return this;
}

uint64_t CMMsl::DeviceMotionAlwaysOn::operator=(uint64_t a1, const CMMsl::DeviceMotion **a2)
{
  if (a1 != a2)
  {
    CMMsl::DeviceMotionAlwaysOn::DeviceMotionAlwaysOn(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOWORD(v4) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    CMMsl::DeviceMotionAlwaysOn::~DeviceMotionAlwaysOn(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::DeviceMotionAlwaysOn *a2, CMMsl::DeviceMotionAlwaysOn *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LOBYTE(v4) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  LOBYTE(v4) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v4;
  return this;
}

uint64_t CMMsl::DeviceMotionAlwaysOn::DeviceMotionAlwaysOn(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041DC48;
  *(a1 + 8) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t CMMsl::DeviceMotionAlwaysOn::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::DeviceMotionAlwaysOn::DeviceMotionAlwaysOn(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOWORD(v4) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    CMMsl::DeviceMotionAlwaysOn::~DeviceMotionAlwaysOn(v6);
  }

  return a1;
}

uint64_t CMMsl::DeviceMotionAlwaysOn::formatText(CMMsl::DeviceMotionAlwaysOn *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "deviceMotion");
  }

  v6 = *(this + 20);
  if (v6)
  {
    PB::TextFormatter::format(a2, "inQuiescentMode", *(this + 16));
    v6 = *(this + 20);
  }

  if ((v6 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "shouldGyroBeOn", *(this + 17));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::DeviceMotionAlwaysOn::readFrom(CMMsl::DeviceMotionAlwaysOn *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_40;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 20) |= 2u;
        v27 = *(a2 + 1);
        if (v27 >= *(a2 + 2))
        {
          v30 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v28 = v27 + 1;
          v29 = *(*a2 + v27);
          *(a2 + 1) = v28;
          v30 = v29 != 0;
        }

        *(this + 17) = v30;
      }

      else if (v22 == 2)
      {
        *(this + 20) |= 1u;
        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2))
        {
          v26 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v24 = v23 + 1;
          v25 = *(*a2 + v23);
          *(a2 + 1) = v24;
          v26 = v25 != 0;
        }

        *(this + 16) = v26;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if ((PB::Reader::skip(a2, v22, v10 & 7, 0) & 1) == 0)
        {
          v32 = 0;
          return v32 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_40:
  v32 = v4 ^ 1;
  return v32 & 1;
}

uint64_t CMMsl::DeviceMotionAlwaysOn::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4, 1u);
  }

  v5 = v3[20];
  if (v5)
  {
    this = PB::Writer::write(a2, v3[16], 2u);
    v5 = v3[20];
  }

  if ((v5 & 2) != 0)
  {
    v6 = v3[17];

    return PB::Writer::write(a2, v6, 3u);
  }

  return this;
}

BOOL CMMsl::DeviceMotionAlwaysOn::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !CMMsl::DeviceMotion::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  result = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) == 0)
  {
    return result;
  }

  return (*(a2 + 20) & 2) != 0 && *(a1 + 17) == *(a2 + 17);
}

unint64_t CMMsl::DeviceMotionAlwaysOn::hash_value(CMMsl::DeviceMotionAlwaysOn *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v2 = CMMsl::DeviceMotion::hash_value(v2);
  }

  if (*(this + 20))
  {
    v3 = *(this + 16);
    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v3 = 0;
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  v4 = *(this + 17);
  return v3 ^ v2 ^ v4;
}

void *CMMsl::DeviceMotionAlwaysOn::makeDeviceMotion(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::DeviceMotionCorrection::~DeviceMotionCorrection(CMMsl::DeviceMotionCorrection *this)
{
  *this = off_10041DC80;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 8) = v5;
    operator delete(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    *(this + 5) = v6;
    operator delete(v6);
  }

  v7 = *(this + 1);
  if (v7)
  {
    *(this + 2) = v7;
    operator delete(v7);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::DeviceMotionCorrection::~DeviceMotionCorrection(this);

  operator delete();
}

CMMsl::DeviceMotionCorrection *CMMsl::DeviceMotionCorrection::DeviceMotionCorrection(CMMsl::DeviceMotionCorrection *this, const CMMsl::DeviceMotionCorrection *a2)
{
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  v5 = (this + 56);
  *this = off_10041DC80;
  *(this + 104) = 0u;
  v6 = (this + 104);
  *(this + 40) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  if (*(a2 + 160))
  {
    v7 = *(a2 + 19);
    *(this + 160) = 1;
    *(this + 19) = v7;
  }

  if (this != a2)
  {
    sub_100035D1C(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
    sub_100035D1C(v5, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 2);
    sub_100035D1C(v6, *(a2 + 13), *(a2 + 14), (*(a2 + 14) - *(a2 + 13)) >> 2);
    sub_100035D1C(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
    sub_100035D1C(this + 10, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 2);
    sub_100035D1C(this + 16, *(a2 + 16), *(a2 + 17), (*(a2 + 17) - *(a2 + 16)) >> 2);
  }

  return this;
}

CMMsl *CMMsl::DeviceMotionCorrection::operator=(CMMsl *a1, const CMMsl::DeviceMotionCorrection *a2)
{
  if (a1 != a2)
  {
    CMMsl::DeviceMotionCorrection::DeviceMotionCorrection(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::DeviceMotionCorrection::~DeviceMotionCorrection(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::DeviceMotionCorrection *a2, CMMsl::DeviceMotionCorrection *a3)
{
  v3 = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v3;
  result = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = result;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v8;
  v9 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v10;
  v11 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v11;
  v12 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v12;
  v13 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v13;
  v14 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v14;
  v15 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v15;
  v16 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v16;
  v17 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v17;
  v18 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v18;
  v19 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v19;
  v20 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v20;
  v21 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v21;
  v22 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v22;
  return result;
}

uint64_t CMMsl::DeviceMotionCorrection::DeviceMotionCorrection(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041DC80;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 104) = 0u;
  v5 = a1 + 104;
  *(a1 + 56) = 0u;
  v6 = a1 + 56;
  *(a1 + 136) = 0u;
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a1 + 152) = *(a2 + 152);
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  sub_1002A2DD0(v6, (a2 + 56));
  sub_1002A2DD0(v5, (a2 + 104));
  sub_1002A2DD0(v4, (a2 + 8));
  sub_1002A2DD0(a1 + 80, (a2 + 80));
  sub_1002A2DD0(a1 + 128, (a2 + 128));
  return a1;
}

CMMsl *CMMsl::DeviceMotionCorrection::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::DeviceMotionCorrection::DeviceMotionCorrection(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::DeviceMotionCorrection::~DeviceMotionCorrection(v5);
  }

  return a1;
}

uint64_t CMMsl::DeviceMotionCorrection::formatText(CMMsl::DeviceMotionCorrection *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "dx", v7);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "estimate", v10);
  }

  v11 = *(this + 7);
  v12 = *(this + 8);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(a2, "measurement", v13);
  }

  v14 = *(this + 10);
  v15 = *(this + 11);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(a2, "noisevariance", v16);
  }

  v17 = *(this + 13);
  v18 = *(this + 14);
  while (v17 != v18)
  {
    v19 = *v17++;
    PB::TextFormatter::format(a2, "residual", v19);
  }

  v20 = *(this + 16);
  v21 = *(this + 17);
  while (v20 != v21)
  {
    v22 = *v20++;
    PB::TextFormatter::format(a2, "statevariance", v22);
  }

  if (*(this + 160))
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 19));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::DeviceMotionCorrection::readFrom(CMMsl::DeviceMotionCorrection *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (v18)
        {
          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            if (v4)
            {
              v10 = 0;
            }

            goto LABEL_21;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_245;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_245;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) > 3)
      {
        break;
      }

      if (v23 != 1)
      {
        if (v23 == 2)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_247:
              v196 = 0;
              return v196 & 1;
            }

            v106 = *(a2 + 1);
            v107 = *(a2 + 2);
            while (v106 < v107 && (*(a2 + 24) & 1) == 0)
            {
              v109 = *(this + 5);
              v108 = *(this + 6);
              if (v109 >= v108)
              {
                v111 = *(this + 4);
                v112 = v109 - v111;
                v113 = (v109 - v111) >> 2;
                v114 = v113 + 1;
                if ((v113 + 1) >> 62)
                {
                  goto LABEL_248;
                }

                v115 = v108 - v111;
                if (v115 >> 1 > v114)
                {
                  v114 = v115 >> 1;
                }

                if (v115 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v116 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v116 = v114;
                }

                if (v116)
                {
                  sub_10002290C(this + 32, v116);
                }

                v117 = (v109 - v111) >> 2;
                v118 = (4 * v113);
                v119 = (4 * v113 - 4 * v117);
                *v118 = 0;
                v110 = v118 + 1;
                memcpy(v119, v111, v112);
                v120 = *(this + 4);
                *(this + 4) = v119;
                *(this + 5) = v110;
                *(this + 6) = 0;
                if (v120)
                {
                  operator delete(v120);
                }
              }

              else
              {
                *v109 = 0;
                v110 = v109 + 4;
              }

              *(this + 5) = v110;
              v121 = *(a2 + 1);
              if (v121 > 0xFFFFFFFFFFFFFFFBLL || v121 + 4 > *(a2 + 2))
              {
LABEL_156:
                *(a2 + 24) = 1;
                goto LABEL_157;
              }

              *(v110 - 1) = *(*a2 + v121);
              v107 = *(a2 + 2);
              v106 = *(a2 + 1) + 4;
              *(a2 + 1) = v106;
            }

            goto LABEL_157;
          }

          v134 = *(this + 5);
          v133 = *(this + 6);
          if (v134 >= v133)
          {
            v165 = *(this + 4);
            v166 = v134 - v165;
            v167 = (v134 - v165) >> 2;
            v168 = v167 + 1;
            if ((v167 + 1) >> 62)
            {
LABEL_248:
              sub_10000CD24();
            }

            v169 = v133 - v165;
            if (v169 >> 1 > v168)
            {
              v168 = v169 >> 1;
            }

            if (v169 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v170 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v170 = v168;
            }

            if (v170)
            {
              sub_10002290C(this + 32, v170);
            }

            v191 = (v134 - v165) >> 2;
            v192 = (4 * v167);
            v193 = (4 * v167 - 4 * v191);
            *v192 = 0;
            v124 = v192 + 1;
            memcpy(v193, v165, v166);
            v194 = *(this + 4);
            *(this + 4) = v193;
            *(this + 5) = v124;
            *(this + 6) = 0;
            if (v194)
            {
              operator delete(v194);
            }
          }

          else
          {
            *v134 = 0;
            v124 = v134 + 4;
          }

          *(this + 5) = v124;
        }

        else
        {
          if (v23 != 3)
          {
            goto LABEL_94;
          }

          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_247;
            }

            v40 = *(a2 + 1);
            v41 = *(a2 + 2);
            while (v40 < v41 && (*(a2 + 24) & 1) == 0)
            {
              v43 = *(this + 8);
              v42 = *(this + 9);
              if (v43 >= v42)
              {
                v45 = *(this + 7);
                v46 = v43 - v45;
                v47 = (v43 - v45) >> 2;
                v48 = v47 + 1;
                if ((v47 + 1) >> 62)
                {
                  goto LABEL_248;
                }

                v49 = v42 - v45;
                if (v49 >> 1 > v48)
                {
                  v48 = v49 >> 1;
                }

                if (v49 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v50 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v50 = v48;
                }

                if (v50)
                {
                  sub_10002290C(this + 56, v50);
                }

                v51 = (v43 - v45) >> 2;
                v52 = (4 * v47);
                v53 = (4 * v47 - 4 * v51);
                *v52 = 0;
                v44 = v52 + 1;
                memcpy(v53, v45, v46);
                v54 = *(this + 7);
                *(this + 7) = v53;
                *(this + 8) = v44;
                *(this + 9) = 0;
                if (v54)
                {
                  operator delete(v54);
                }
              }

              else
              {
                *v43 = 0;
                v44 = v43 + 4;
              }

              *(this + 8) = v44;
              v55 = *(a2 + 1);
              if (v55 > 0xFFFFFFFFFFFFFFFBLL || v55 + 4 > *(a2 + 2))
              {
                goto LABEL_156;
              }

              *(v44 - 1) = *(*a2 + v55);
              v41 = *(a2 + 2);
              v40 = *(a2 + 1) + 4;
              *(a2 + 1) = v40;
            }

            goto LABEL_157;
          }

          v132 = *(this + 8);
          v131 = *(this + 9);
          if (v132 >= v131)
          {
            v159 = *(this + 7);
            v160 = v132 - v159;
            v161 = (v132 - v159) >> 2;
            v162 = v161 + 1;
            if ((v161 + 1) >> 62)
            {
              goto LABEL_248;
            }

            v163 = v131 - v159;
            if (v163 >> 1 > v162)
            {
              v162 = v163 >> 1;
            }

            if (v163 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v164 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v164 = v162;
            }

            if (v164)
            {
              sub_10002290C(this + 56, v164);
            }

            v187 = (v132 - v159) >> 2;
            v188 = (4 * v161);
            v189 = (4 * v161 - 4 * v187);
            *v188 = 0;
            v124 = v188 + 1;
            memcpy(v189, v159, v160);
            v190 = *(this + 7);
            *(this + 7) = v189;
            *(this + 8) = v124;
            *(this + 9) = 0;
            if (v190)
            {
              operator delete(v190);
            }
          }

          else
          {
            *v132 = 0;
            v124 = v132 + 4;
          }

          *(this + 8) = v124;
        }

        goto LABEL_236;
      }

      *(this + 160) |= 1u;
      v72 = *(a2 + 1);
      if (v72 > 0xFFFFFFFFFFFFFFF7 || v72 + 8 > *(a2 + 2))
      {
LABEL_238:
        *(a2 + 24) = 1;
        goto LABEL_241;
      }

      *(this + 19) = *(*a2 + v72);
      v73 = *(a2 + 1) + 8;
LABEL_240:
      *(a2 + 1) = v73;
LABEL_241:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_245;
      }
    }

    if (v23 > 5)
    {
      if (v23 == 6)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_247;
          }

          v90 = *(a2 + 1);
          v91 = *(a2 + 2);
          while (v90 < v91 && (*(a2 + 24) & 1) == 0)
          {
            v93 = *(this + 11);
            v92 = *(this + 12);
            if (v93 >= v92)
            {
              v95 = *(this + 10);
              v96 = v93 - v95;
              v97 = (v93 - v95) >> 2;
              v98 = v97 + 1;
              if ((v97 + 1) >> 62)
              {
                goto LABEL_248;
              }

              v99 = v92 - v95;
              if (v99 >> 1 > v98)
              {
                v98 = v99 >> 1;
              }

              if (v99 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v100 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v100 = v98;
              }

              if (v100)
              {
                sub_10002290C(this + 80, v100);
              }

              v101 = (v93 - v95) >> 2;
              v102 = (4 * v97);
              v103 = (4 * v97 - 4 * v101);
              *v102 = 0;
              v94 = v102 + 1;
              memcpy(v103, v95, v96);
              v104 = *(this + 10);
              *(this + 10) = v103;
              *(this + 11) = v94;
              *(this + 12) = 0;
              if (v104)
              {
                operator delete(v104);
              }
            }

            else
            {
              *v93 = 0;
              v94 = v93 + 4;
            }

            *(this + 11) = v94;
            v105 = *(a2 + 1);
            if (v105 > 0xFFFFFFFFFFFFFFFBLL || v105 + 4 > *(a2 + 2))
            {
              goto LABEL_156;
            }

            *(v94 - 1) = *(*a2 + v105);
            v91 = *(a2 + 2);
            v90 = *(a2 + 1) + 4;
            *(a2 + 1) = v90;
          }

          goto LABEL_157;
        }

        v126 = *(this + 11);
        v125 = *(this + 12);
        if (v126 >= v125)
        {
          v141 = *(this + 10);
          v142 = v126 - v141;
          v143 = (v126 - v141) >> 2;
          v144 = v143 + 1;
          if ((v143 + 1) >> 62)
          {
            goto LABEL_248;
          }

          v145 = v125 - v141;
          if (v145 >> 1 > v144)
          {
            v144 = v145 >> 1;
          }

          if (v145 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v146 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v146 = v144;
          }

          if (v146)
          {
            sub_10002290C(this + 80, v146);
          }

          v175 = (v126 - v141) >> 2;
          v176 = (4 * v143);
          v177 = (4 * v143 - 4 * v175);
          *v176 = 0;
          v124 = v176 + 1;
          memcpy(v177, v141, v142);
          v178 = *(this + 10);
          *(this + 10) = v177;
          *(this + 11) = v124;
          *(this + 12) = 0;
          if (v178)
          {
            operator delete(v178);
          }
        }

        else
        {
          *v126 = 0;
          v124 = v126 + 4;
        }

        *(this + 11) = v124;
      }

      else
      {
        if (v23 != 7)
        {
LABEL_94:
          if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
          {
            goto LABEL_247;
          }

          goto LABEL_241;
        }

        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_247;
          }

          v56 = *(a2 + 1);
          v57 = *(a2 + 2);
          while (v56 < v57 && (*(a2 + 24) & 1) == 0)
          {
            v59 = *(this + 17);
            v58 = *(this + 18);
            if (v59 >= v58)
            {
              v61 = *(this + 16);
              v62 = v59 - v61;
              v63 = (v59 - v61) >> 2;
              v64 = v63 + 1;
              if ((v63 + 1) >> 62)
              {
                goto LABEL_248;
              }

              v65 = v58 - v61;
              if (v65 >> 1 > v64)
              {
                v64 = v65 >> 1;
              }

              if (v65 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v66 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v66 = v64;
              }

              if (v66)
              {
                sub_10002290C(this + 128, v66);
              }

              v67 = (v59 - v61) >> 2;
              v68 = (4 * v63);
              v69 = (4 * v63 - 4 * v67);
              *v68 = 0;
              v60 = v68 + 1;
              memcpy(v69, v61, v62);
              v70 = *(this + 16);
              *(this + 16) = v69;
              *(this + 17) = v60;
              *(this + 18) = 0;
              if (v70)
              {
                operator delete(v70);
              }
            }

            else
            {
              *v59 = 0;
              v60 = v59 + 4;
            }

            *(this + 17) = v60;
            v71 = *(a2 + 1);
            if (v71 > 0xFFFFFFFFFFFFFFFBLL || v71 + 4 > *(a2 + 2))
            {
              goto LABEL_156;
            }

            *(v60 - 1) = *(*a2 + v71);
            v57 = *(a2 + 2);
            v56 = *(a2 + 1) + 4;
            *(a2 + 1) = v56;
          }

          goto LABEL_157;
        }

        v130 = *(this + 17);
        v129 = *(this + 18);
        if (v130 >= v129)
        {
          v153 = *(this + 16);
          v154 = v130 - v153;
          v155 = (v130 - v153) >> 2;
          v156 = v155 + 1;
          if ((v155 + 1) >> 62)
          {
            goto LABEL_248;
          }

          v157 = v129 - v153;
          if (v157 >> 1 > v156)
          {
            v156 = v157 >> 1;
          }

          if (v157 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v158 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v158 = v156;
          }

          if (v158)
          {
            sub_10002290C(this + 128, v158);
          }

          v183 = (v130 - v153) >> 2;
          v184 = (4 * v155);
          v185 = (4 * v155 - 4 * v183);
          *v184 = 0;
          v124 = v184 + 1;
          memcpy(v185, v153, v154);
          v186 = *(this + 16);
          *(this + 16) = v185;
          *(this + 17) = v124;
          *(this + 18) = 0;
          if (v186)
          {
            operator delete(v186);
          }
        }

        else
        {
          *v130 = 0;
          v124 = v130 + 4;
        }

        *(this + 17) = v124;
      }
    }

    else if (v23 == 4)
    {
      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
          goto LABEL_247;
        }

        v74 = *(a2 + 1);
        v75 = *(a2 + 2);
        while (v74 < v75 && (*(a2 + 24) & 1) == 0)
        {
          v77 = *(this + 14);
          v76 = *(this + 15);
          if (v77 >= v76)
          {
            v79 = *(this + 13);
            v80 = v77 - v79;
            v81 = (v77 - v79) >> 2;
            v82 = v81 + 1;
            if ((v81 + 1) >> 62)
            {
              goto LABEL_248;
            }

            v83 = v76 - v79;
            if (v83 >> 1 > v82)
            {
              v82 = v83 >> 1;
            }

            if (v83 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v84 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v84 = v82;
            }

            if (v84)
            {
              sub_10002290C(this + 104, v84);
            }

            v85 = (v77 - v79) >> 2;
            v86 = (4 * v81);
            v87 = (4 * v81 - 4 * v85);
            *v86 = 0;
            v78 = v86 + 1;
            memcpy(v87, v79, v80);
            v88 = *(this + 13);
            *(this + 13) = v87;
            *(this + 14) = v78;
            *(this + 15) = 0;
            if (v88)
            {
              operator delete(v88);
            }
          }

          else
          {
            *v77 = 0;
            v78 = v77 + 4;
          }

          *(this + 14) = v78;
          v89 = *(a2 + 1);
          if (v89 > 0xFFFFFFFFFFFFFFFBLL || v89 + 4 > *(a2 + 2))
          {
            goto LABEL_156;
          }

          *(v78 - 1) = *(*a2 + v89);
          v75 = *(a2 + 2);
          v74 = *(a2 + 1) + 4;
          *(a2 + 1) = v74;
        }

        goto LABEL_157;
      }

      v123 = *(this + 14);
      v122 = *(this + 15);
      if (v123 >= v122)
      {
        v135 = *(this + 13);
        v136 = v123 - v135;
        v137 = (v123 - v135) >> 2;
        v138 = v137 + 1;
        if ((v137 + 1) >> 62)
        {
          goto LABEL_248;
        }

        v139 = v122 - v135;
        if (v139 >> 1 > v138)
        {
          v138 = v139 >> 1;
        }

        if (v139 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v140 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v140 = v138;
        }

        if (v140)
        {
          sub_10002290C(this + 104, v140);
        }

        v171 = (v123 - v135) >> 2;
        v172 = (4 * v137);
        v173 = (4 * v137 - 4 * v171);
        *v172 = 0;
        v124 = v172 + 1;
        memcpy(v173, v135, v136);
        v174 = *(this + 13);
        *(this + 13) = v173;
        *(this + 14) = v124;
        *(this + 15) = 0;
        if (v174)
        {
          operator delete(v174);
        }
      }

      else
      {
        *v123 = 0;
        v124 = v123 + 4;
      }

      *(this + 14) = v124;
    }

    else
    {
      if (v23 != 5)
      {
        goto LABEL_94;
      }

      if (v22 == 2)
      {
        if (PB::Reader::placeMark())
        {
          goto LABEL_247;
        }

        v24 = *(a2 + 1);
        v25 = *(a2 + 2);
        while (v24 < v25 && (*(a2 + 24) & 1) == 0)
        {
          v27 = *(this + 2);
          v26 = *(this + 3);
          if (v27 >= v26)
          {
            v29 = *(this + 1);
            v30 = v27 - v29;
            v31 = (v27 - v29) >> 2;
            v32 = v31 + 1;
            if ((v31 + 1) >> 62)
            {
              goto LABEL_248;
            }

            v33 = v26 - v29;
            if (v33 >> 1 > v32)
            {
              v32 = v33 >> 1;
            }

            if (v33 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v34 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v34 = v32;
            }

            if (v34)
            {
              sub_10002290C(this + 8, v34);
            }

            v35 = (v27 - v29) >> 2;
            v36 = (4 * v31);
            v37 = (4 * v31 - 4 * v35);
            *v36 = 0;
            v28 = v36 + 1;
            memcpy(v37, v29, v30);
            v38 = *(this + 1);
            *(this + 1) = v37;
            *(this + 2) = v28;
            *(this + 3) = 0;
            if (v38)
            {
              operator delete(v38);
            }
          }

          else
          {
            *v27 = 0;
            v28 = v27 + 4;
          }

          *(this + 2) = v28;
          v39 = *(a2 + 1);
          if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(a2 + 2))
          {
            goto LABEL_156;
          }

          *(v28 - 1) = *(*a2 + v39);
          v25 = *(a2 + 2);
          v24 = *(a2 + 1) + 4;
          *(a2 + 1) = v24;
        }

LABEL_157:
        PB::Reader::recallMark();
        goto LABEL_241;
      }

      v128 = *(this + 2);
      v127 = *(this + 3);
      if (v128 >= v127)
      {
        v147 = *(this + 1);
        v148 = v128 - v147;
        v149 = (v128 - v147) >> 2;
        v150 = v149 + 1;
        if ((v149 + 1) >> 62)
        {
          goto LABEL_248;
        }

        v151 = v127 - v147;
        if (v151 >> 1 > v150)
        {
          v150 = v151 >> 1;
        }

        if (v151 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v152 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v152 = v150;
        }

        if (v152)
        {
          sub_10002290C(this + 8, v152);
        }

        v179 = (v128 - v147) >> 2;
        v180 = (4 * v149);
        v181 = (4 * v149 - 4 * v179);
        *v180 = 0;
        v124 = v180 + 1;
        memcpy(v181, v147, v148);
        v182 = *(this + 1);
        *(this + 1) = v181;
        *(this + 2) = v124;
        *(this + 3) = 0;
        if (v182)
        {
          operator delete(v182);
        }
      }

      else
      {
        *v128 = 0;
        v124 = v128 + 4;
      }

      *(this + 2) = v124;
    }

LABEL_236:
    v195 = *(a2 + 1);
    if (v195 > 0xFFFFFFFFFFFFFFFBLL || v195 + 4 > *(a2 + 2))
    {
      goto LABEL_238;
    }

    *(v124 - 1) = *(*a2 + v195);
    v73 = *(a2 + 1) + 4;
    goto LABEL_240;
  }

LABEL_245:
  v196 = v4 ^ 1;
  return v196 & 1;
}

uint64_t CMMsl::DeviceMotionCorrection::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 160))
  {
    this = PB::Writer::write(a2, *(this + 152), 1u);
  }

  v4 = v3[4];
  v5 = v3[5];
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6, 2u);
  }

  v7 = v3[7];
  v8 = v3[8];
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9, 3u);
  }

  v10 = v3[13];
  v11 = v3[14];
  while (v10 != v11)
  {
    v12 = *v10++;
    this = PB::Writer::write(a2, v12, 4u);
  }

  v13 = v3[1];
  v14 = v3[2];
  while (v13 != v14)
  {
    v15 = *v13++;
    this = PB::Writer::write(a2, v15, 5u);
  }

  v16 = v3[10];
  v17 = v3[11];
  while (v16 != v17)
  {
    v18 = *v16++;
    this = PB::Writer::write(a2, v18, 6u);
  }

  v20 = v3[16];
  v19 = v3[17];
  while (v20 != v19)
  {
    v21 = *v20++;
    this = PB::Writer::write(a2, v21, 7u);
  }

  return this;
}

uint64_t CMMsl::DeviceMotionCorrection::hash_value(CMMsl::DeviceMotionCorrection *this)
{
  if (*(this + 160))
  {
    if (*(this + 19) == 0.0)
    {
      v1 = 0;
    }

    else
    {
      v1 = *(this + 19);
    }
  }

  else
  {
    v1 = 0;
  }

  v2 = PBHashBytes() ^ v1;
  v3 = PBHashBytes();
  v4 = v2 ^ v3 ^ PBHashBytes();
  v5 = PBHashBytes();
  v6 = v5 ^ PBHashBytes();
  return v4 ^ v6 ^ PBHashBytes();
}

double CMMsl::DeviceMotionCovariance::DeviceMotionCovariance(CMMsl::DeviceMotionCovariance *this)
{
  *this = off_10041DCB8;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = off_10041DCB8;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

void CMMsl::DeviceMotionCovariance::~DeviceMotionCovariance(CMMsl::DeviceMotionCovariance *this)
{
  *this = off_10041DCB8;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::DeviceMotionCovariance::~DeviceMotionCovariance(this);

  operator delete();
}

CMMsl::DeviceMotionCovariance *CMMsl::DeviceMotionCovariance::DeviceMotionCovariance(CMMsl::DeviceMotionCovariance *this, const CMMsl::DeviceMotionCovariance *a2)
{
  *this = off_10041DCB8;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 16) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  if (*(a2 + 64))
  {
    v5 = *(a2 + 7);
    *(this + 64) = 1;
    *(this + 7) = v5;
  }

  if (this != a2)
  {
    sub_100035D1C(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
    sub_100035D1C(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  return this;
}

uint64_t CMMsl::DeviceMotionCovariance::operator=(uint64_t a1, const CMMsl::DeviceMotionCovariance *a2)
{
  if (a1 != a2)
  {
    CMMsl::DeviceMotionCovariance::DeviceMotionCovariance(v10, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v3;
    v4 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v4;
    v5 = *(a1 + 40);
    *(a1 + 40) = v13;
    v6 = v12;
    v7 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v7;
    v8 = *(a1 + 24);
    *(a1 + 24) = v6;
    v12 = v8;
    v13 = v5;
    CMMsl::DeviceMotionCovariance::~DeviceMotionCovariance(v10);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::DeviceMotionCovariance *a2, CMMsl::DeviceMotionCovariance *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  v9 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v9;
  v10 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v10;
  return result;
}

uint64_t CMMsl::DeviceMotionCovariance::DeviceMotionCovariance(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041DCB8;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 40) = 0u;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 56) = *(a2 + 56);
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  sub_1002A2DD0(v4, (a2 + 8));
  return a1;
}

uint64_t CMMsl::DeviceMotionCovariance::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::DeviceMotionCovariance::DeviceMotionCovariance(v10, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v3;
    v4 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v4;
    v5 = *(a1 + 40);
    *(a1 + 40) = v13;
    v6 = v12;
    v7 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v7;
    v8 = *(a1 + 24);
    *(a1 + 24) = v6;
    v12 = v8;
    v13 = v5;
    CMMsl::DeviceMotionCovariance::~DeviceMotionCovariance(v10);
  }

  return a1;
}

uint64_t CMMsl::DeviceMotionCovariance::formatText(CMMsl::DeviceMotionCovariance *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "biasvariance", v7);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "statevariance", v10);
  }

  if (*(this + 64))
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 7));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::DeviceMotionCovariance::readFrom(CMMsl::DeviceMotionCovariance *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (v18)
        {
          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            if (v4)
            {
              v10 = 0;
            }

            goto LABEL_21;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_107;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_107;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v23 == 2)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_109;
          }

          v26 = *(a2 + 1);
          v27 = *(a2 + 2);
          while (v26 < v27 && (*(a2 + 24) & 1) == 0)
          {
            v29 = *(this + 5);
            v28 = *(this + 6);
            if (v29 >= v28)
            {
              v31 = *(this + 4);
              v32 = v29 - v31;
              v33 = (v29 - v31) >> 2;
              v34 = v33 + 1;
              if ((v33 + 1) >> 62)
              {
                goto LABEL_110;
              }

              v35 = v28 - v31;
              if (v35 >> 1 > v34)
              {
                v34 = v35 >> 1;
              }

              if (v35 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v36 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v36 = v34;
              }

              if (v36)
              {
                sub_10002290C(this + 32, v36);
              }

              v37 = (v29 - v31) >> 2;
              v38 = (4 * v33);
              v39 = (4 * v33 - 4 * v37);
              *v38 = 0;
              v30 = v38 + 1;
              memcpy(v39, v31, v32);
              v40 = *(this + 4);
              *(this + 4) = v39;
              *(this + 5) = v30;
              *(this + 6) = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              *v29 = 0;
              v30 = v29 + 4;
            }

            *(this + 5) = v30;
            v41 = *(a2 + 1);
            if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(a2 + 2))
            {
              goto LABEL_74;
            }

            *(v30 - 1) = *(*a2 + v41);
            v27 = *(a2 + 2);
            v26 = *(a2 + 1) + 4;
            *(a2 + 1) = v26;
          }

LABEL_75:
          PB::Reader::recallMark();
          goto LABEL_103;
        }

        v59 = *(this + 5);
        v58 = *(this + 6);
        if (v59 >= v58)
        {
          v63 = *(this + 4);
          v64 = v59 - v63;
          v65 = (v59 - v63) >> 2;
          v66 = v65 + 1;
          if ((v65 + 1) >> 62)
          {
            goto LABEL_110;
          }

          v67 = v58 - v63;
          if (v67 >> 1 > v66)
          {
            v66 = v67 >> 1;
          }

          if (v67 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v68 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v68 = v66;
          }

          if (v68)
          {
            sub_10002290C(this + 32, v68);
          }

          v75 = (v59 - v63) >> 2;
          v76 = (4 * v65);
          v77 = (4 * v65 - 4 * v75);
          *v76 = 0;
          v60 = v76 + 1;
          memcpy(v77, v63, v64);
          v78 = *(this + 4);
          *(this + 4) = v77;
          *(this + 5) = v60;
          *(this + 6) = 0;
          if (v78)
          {
            operator delete(v78);
          }
        }

        else
        {
          *v59 = 0;
          v60 = v59 + 4;
        }

        *(this + 5) = v60;
LABEL_98:
        v83 = *(a2 + 1);
        if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(a2 + 2))
        {
LABEL_100:
          *(a2 + 24) = 1;
          goto LABEL_103;
        }

        *(v60 - 1) = *(*a2 + v83);
        v25 = *(a2 + 1) + 4;
        goto LABEL_102;
      }

      if (v23 == 1)
      {
        *(this + 64) |= 1u;
        v24 = *(a2 + 1);
        if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
        {
          goto LABEL_100;
        }

        *(this + 7) = *(*a2 + v24);
        v25 = *(a2 + 1) + 8;
LABEL_102:
        *(a2 + 1) = v25;
        goto LABEL_103;
      }

      if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
      {
LABEL_109:
        v84 = 0;
        return v84 & 1;
      }

LABEL_103:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_107;
      }
    }

    if (v22 == 2)
    {
      if (PB::Reader::placeMark())
      {
        goto LABEL_109;
      }

      v42 = *(a2 + 1);
      v43 = *(a2 + 2);
      while (v42 < v43 && (*(a2 + 24) & 1) == 0)
      {
        v45 = *(this + 2);
        v44 = *(this + 3);
        if (v45 >= v44)
        {
          v47 = *(this + 1);
          v48 = v45 - v47;
          v49 = (v45 - v47) >> 2;
          v50 = v49 + 1;
          if ((v49 + 1) >> 62)
          {
            goto LABEL_110;
          }

          v51 = v44 - v47;
          if (v51 >> 1 > v50)
          {
            v50 = v51 >> 1;
          }

          if (v51 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v52 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v52 = v50;
          }

          if (v52)
          {
            sub_10002290C(this + 8, v52);
          }

          v53 = (v45 - v47) >> 2;
          v54 = (4 * v49);
          v55 = (4 * v49 - 4 * v53);
          *v54 = 0;
          v46 = v54 + 1;
          memcpy(v55, v47, v48);
          v56 = *(this + 1);
          *(this + 1) = v55;
          *(this + 2) = v46;
          *(this + 3) = 0;
          if (v56)
          {
            operator delete(v56);
          }
        }

        else
        {
          *v45 = 0;
          v46 = v45 + 4;
        }

        *(this + 2) = v46;
        v57 = *(a2 + 1);
        if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(a2 + 2))
        {
LABEL_74:
          *(a2 + 24) = 1;
          goto LABEL_75;
        }

        *(v46 - 1) = *(*a2 + v57);
        v43 = *(a2 + 2);
        v42 = *(a2 + 1) + 4;
        *(a2 + 1) = v42;
      }

      goto LABEL_75;
    }

    v62 = *(this + 2);
    v61 = *(this + 3);
    if (v62 >= v61)
    {
      v69 = *(this + 1);
      v70 = v62 - v69;
      v71 = (v62 - v69) >> 2;
      v72 = v71 + 1;
      if ((v71 + 1) >> 62)
      {
LABEL_110:
        sub_10000CD24();
      }

      v73 = v61 - v69;
      if (v73 >> 1 > v72)
      {
        v72 = v73 >> 1;
      }

      if (v73 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v74 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v74 = v72;
      }

      if (v74)
      {
        sub_10002290C(this + 8, v74);
      }

      v79 = (v62 - v69) >> 2;
      v80 = (4 * v71);
      v81 = (4 * v71 - 4 * v79);
      *v80 = 0;
      v60 = v80 + 1;
      memcpy(v81, v69, v70);
      v82 = *(this + 1);
      *(this + 1) = v81;
      *(this + 2) = v60;
      *(this + 3) = 0;
      if (v82)
      {
        operator delete(v82);
      }
    }

    else
    {
      *v62 = 0;
      v60 = v62 + 4;
    }

    *(this + 2) = v60;
    goto LABEL_98;
  }

LABEL_107:
  v84 = v4 ^ 1;
  return v84 & 1;
}

uint64_t CMMsl::DeviceMotionCovariance::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 64))
  {
    this = PB::Writer::write(a2, *(this + 56), 1u);
  }

  v4 = v3[4];
  v5 = v3[5];
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6, 2u);
  }

  v8 = v3[1];
  v7 = v3[2];
  while (v8 != v7)
  {
    v9 = *v8++;
    this = PB::Writer::write(a2, v9, 3u);
  }

  return this;
}

BOOL CMMsl::DeviceMotionCovariance::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64))
  {
    if ((*(a2 + 64) & 1) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if (*(a2 + 64))
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a2 + 32);
  if (v2 - v3 != *(a2 + 40) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a2 + 8);
  if (v5 - v6 != *(a2 + 16) - v7)
  {
    return 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  v8 = v6 + 4;
  do
  {
    v9 = *v7++;
    result = *(v8 - 4) == v9;
    v11 = *(v8 - 4) != v9 || v8 == v5;
    v8 += 4;
  }

  while (!v11);
  return result;
}

uint64_t CMMsl::DeviceMotionCovariance::hash_value(CMMsl::DeviceMotionCovariance *this)
{
  if (*(this + 64))
  {
    if (*(this + 7) == 0.0)
    {
      v1 = 0;
    }

    else
    {
      v1 = *(this + 7);
    }
  }

  else
  {
    v1 = 0;
  }

  v2 = PBHashBytes() ^ v1;
  return v2 ^ PBHashBytes();
}

uint64_t CMMsl::DirectionOfTravelMetrics::DirectionOfTravelMetrics(uint64_t this)
{
  *this = off_10041DCF0;
  *(this + 28) = 0;
  return this;
}

{
  *this = off_10041DCF0;
  *(this + 28) = 0;
  return this;
}

void CMMsl::DirectionOfTravelMetrics::~DirectionOfTravelMetrics(CMMsl::DirectionOfTravelMetrics *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::DirectionOfTravelMetrics::DirectionOfTravelMetrics(CMMsl::DirectionOfTravelMetrics *this, const CMMsl::DirectionOfTravelMetrics *a2)
{
  *this = off_10041DCF0;
  *(this + 7) = 0;
  v2 = *(a2 + 28);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 2);
    v3 = 2;
    *(this + 28) = 2;
    *(this + 2) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 28))
  {
LABEL_5:
    v4 = *(a2 + 1);
    v3 |= 1u;
    *(this + 28) = v3;
    *(this + 1) = v4;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    LODWORD(v4) = *(a2 + 6);
    *(this + 28) = v3 | 4;
    *(this + 6) = v4;
  }

  return *&v4;
}

uint64_t CMMsl::DirectionOfTravelMetrics::operator=(uint64_t a1, const CMMsl::DirectionOfTravelMetrics *a2)
{
  if (a1 != a2)
  {
    CMMsl::DirectionOfTravelMetrics::DirectionOfTravelMetrics(&v7, a2);
    v3 = *(a1 + 28);
    *(a1 + 28) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::DirectionOfTravelMetrics *a2, CMMsl::DirectionOfTravelMetrics *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  return result;
}

float CMMsl::DirectionOfTravelMetrics::DirectionOfTravelMetrics(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041DCF0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

{
  *a1 = off_10041DCF0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t CMMsl::DirectionOfTravelMetrics::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = off_10041DCF0;
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 24);
    v11 = *(a1 + 28);
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    *(a1 + 28) = v3;
    *(a1 + 8) = v6;
    v9 = v5;
    LODWORD(v5) = *(a1 + 24);
    *(a1 + 24) = v4;
    v10 = v5;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::DirectionOfTravelMetrics::formatText(CMMsl::DirectionOfTravelMetrics *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "cadence", *(this + 6));
    v5 = *(this + 28);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 28) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "theta", *(this + 1));
  if ((*(this + 28) & 2) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

LABEL_5:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::DirectionOfTravelMetrics::readFrom(CMMsl::DirectionOfTravelMetrics *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_43;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_43;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(this + 28) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_34;
        }

        *(this + 1) = *(*a2 + v2);
LABEL_31:
        v2 = *(a2 + 1) + 8;
LABEL_38:
        *(a2 + 1) = v2;
        goto LABEL_39;
      }

      if (v22 == 1)
      {
        *(this + 28) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_34;
        }

        *(this + 2) = *(*a2 + v2);
        goto LABEL_31;
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_39:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_43;
      }
    }

    *(this + 28) |= 4u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
    {
LABEL_34:
      *(a2 + 24) = 1;
      goto LABEL_39;
    }

    *(this + 6) = *(*a2 + v2);
    v2 = *(a2 + 1) + 4;
    goto LABEL_38;
  }

LABEL_43:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::DirectionOfTravelMetrics::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if ((v4 & 2) == 0)
  {
    if ((*(this + 28) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 8), 2u);
    if ((*(v3 + 28) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(this + 16), 1u);
  v4 = *(v3 + 28);
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v5 = *(v3 + 24);

  return PB::Writer::write(a2, v5, 3u);
}

BOOL CMMsl::DirectionOfTravelMetrics::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 28) & 2) != 0)
  {
    if ((*(a2 + 28) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  v2 = (*(a2 + 28) & 4) == 0;
  if ((*(a1 + 28) & 4) != 0)
  {
    return (*(a2 + 28) & 4) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

uint64_t CMMsl::DirectionOfTravelMetrics::hash_value(CMMsl::DirectionOfTravelMetrics *this)
{
  if ((*(this + 28) & 2) != 0)
  {
    v1 = *(this + 2);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if (*(this + 28))
    {
LABEL_3:
      v2 = *(this + 1);
      if (v2 == 0.0)
      {
        v2 = 0.0;
      }

      if ((*(this + 28) & 4) != 0)
      {
        goto LABEL_6;
      }

LABEL_13:
      v4 = 0;
      return *&v2 ^ *&v1 ^ v4;
    }
  }

  else
  {
    v1 = 0.0;
    if (*(this + 28))
    {
      goto LABEL_3;
    }
  }

  v2 = 0.0;
  if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v3 = *(this + 6);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  return *&v2 ^ *&v1 ^ v4;
}
void CMMsl::AudioAccessoryDeviceMotion::~AudioAccessoryDeviceMotion(CMMsl::AudioAccessoryDeviceMotion *this)
{
  *this = off_10041CF98;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AudioAccessoryDeviceMotion::~AudioAccessoryDeviceMotion(this);

  operator delete();
}

CMMsl::AudioAccessoryDeviceMotion *CMMsl::AudioAccessoryDeviceMotion::AudioAccessoryDeviceMotion(CMMsl::AudioAccessoryDeviceMotion *this, const CMMsl::AudioAccessoryDeviceMotion *a2)
{
  *this = off_10041CF98;
  *(this + 8) = 0u;
  *(this + 11) = 0;
  *(this + 31) = 0;
  *(this + 33) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  if (*(a2 + 11))
  {
    operator new();
  }

  if (this != a2)
  {
    sub_100035D1C(this + 1, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  v4 = *(a2 + 66);
  if ((v4 & 0x100) != 0)
  {
    v9 = *(a2 + 28);
    *(this + 66) |= 0x100u;
    *(this + 28) = v9;
    v4 = *(a2 + 66);
    if ((v4 & 0x80) == 0)
    {
LABEL_7:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_7;
  }

  v10 = *(a2 + 27);
  *(this + 66) |= 0x80u;
  *(this + 27) = v10;
  v4 = *(a2 + 66);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v11 = *(a2 + 26);
  *(this + 66) |= 0x40u;
  *(this + 26) = v11;
  v4 = *(a2 + 66);
  if ((v4 & 0x400) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v12 = *(a2 + 30);
  *(this + 66) |= 0x400u;
  *(this + 30) = v12;
  v4 = *(a2 + 66);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v13 = *(a2 + 8);
  *(this + 66) |= 2u;
  *(this + 8) = v13;
  v4 = *(a2 + 66);
  if ((v4 & 0x800) == 0)
  {
LABEL_11:
    if ((v4 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v14 = *(a2 + 31);
  *(this + 66) |= 0x800u;
  *(this + 31) = v14;
  v4 = *(a2 + 66);
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v15 = *(a2 + 7);
  *(this + 66) |= 1u;
  *(this + 7) = v15;
  v4 = *(a2 + 66);
  if ((v4 & 0x20) == 0)
  {
LABEL_13:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_32:
  v16 = *(a2 + 25);
  *(this + 66) |= 0x20u;
  *(this + 25) = v16;
  if ((*(a2 + 66) & 0x200) != 0)
  {
LABEL_14:
    v5 = *(a2 + 29);
    *(this + 66) |= 0x200u;
    *(this + 29) = v5;
  }

LABEL_15:
  if (this != a2)
  {
    sub_100035D1C(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  }

  v6 = *(a2 + 66);
  if ((v6 & 0x10) != 0)
  {
    v17 = *(a2 + 24);
    *(this + 66) |= 0x10u;
    *(this + 24) = v17;
    v6 = *(a2 + 66);
    if ((v6 & 0x2000) == 0)
    {
LABEL_19:
      if ((v6 & 8) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_36;
    }
  }

  else if ((*(a2 + 66) & 0x2000) == 0)
  {
    goto LABEL_19;
  }

  v18 = *(a2 + 129);
  *(this + 66) |= 0x2000u;
  *(this + 129) = v18;
  v6 = *(a2 + 66);
  if ((v6 & 8) == 0)
  {
LABEL_20:
    if ((v6 & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_36:
  v19 = *(a2 + 10);
  *(this + 66) |= 8u;
  *(this + 10) = v19;
  v6 = *(a2 + 66);
  if ((v6 & 4) == 0)
  {
LABEL_21:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

LABEL_38:
    v21 = *(a2 + 128);
    *(this + 66) |= 0x1000u;
    *(this + 128) = v21;
    if ((*(a2 + 66) & 0x4000) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_37:
  v20 = *(a2 + 9);
  *(this + 66) |= 4u;
  *(this + 9) = v20;
  v6 = *(a2 + 66);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_38;
  }

LABEL_22:
  if ((v6 & 0x4000) != 0)
  {
LABEL_23:
    v7 = *(a2 + 130);
    *(this + 66) |= 0x4000u;
    *(this + 130) = v7;
  }

  return this;
}

CMMsl *CMMsl::AudioAccessoryDeviceMotion::operator=(CMMsl *a1, const CMMsl::AudioAccessoryDeviceMotion *a2)
{
  if (a1 != a2)
  {
    CMMsl::AudioAccessoryDeviceMotion::AudioAccessoryDeviceMotion(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::AudioAccessoryDeviceMotion::~AudioAccessoryDeviceMotion(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::AudioAccessoryDeviceMotion *a2, CMMsl::AudioAccessoryDeviceMotion *a3)
{
  v3 = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v3;
  v4 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v8;
  LODWORD(v7) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v7;
  LODWORD(v7) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v7;
  v9 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v10;
  v11 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v11;
  v12 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v12;
  v14 = *(this + 6);
  v13 = *(this + 7);
  v15 = *(a2 + 7);
  *(this + 6) = *(a2 + 6);
  *(this + 7) = v15;
  LODWORD(v9) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v9;
  LODWORD(v9) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v9;
  *(a2 + 6) = v14;
  *(a2 + 7) = v13;
  LODWORD(v13) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v13;
  LOBYTE(v13) = *(this + 129);
  *(this + 129) = *(a2 + 129);
  *(a2 + 129) = v13;
  v16 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v16;
  result = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = result;
  LOBYTE(v13) = *(this + 128);
  *(this + 128) = *(a2 + 128);
  *(a2 + 128) = v13;
  LOBYTE(v13) = *(this + 130);
  *(this + 130) = *(a2 + 130);
  *(a2 + 130) = v13;
  return result;
}

uint64_t CMMsl::AudioAccessoryDeviceMotion::AudioAccessoryDeviceMotion(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *a1 = off_10041CF98;
  *(a1 + 88) = 0;
  *(a1 + 124) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 132) = *(a2 + 132);
  *(a2 + 132) = 0;
  v5 = *(a2 + 88);
  *(a2 + 88) = 0;
  v6 = *(a1 + 88);
  *(a1 + 88) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_1002A2DD0(v4, (a2 + 8));
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 116) = *(a2 + 116);
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 129) = *(a2 + 129);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 130) = *(a2 + 130);
  return a1;
}

CMMsl *CMMsl::AudioAccessoryDeviceMotion::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::AudioAccessoryDeviceMotion::AudioAccessoryDeviceMotion(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::AudioAccessoryDeviceMotion::~AudioAccessoryDeviceMotion(v5);
  }

  return a1;
}

uint64_t CMMsl::AudioAccessoryDeviceMotion::formatText(CMMsl::AudioAccessoryDeviceMotion *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 66);
  if ((v5 & 0x10) != 0)
  {
    PB::TextFormatter::format(a2, "activity", *(this + 24));
    v5 = *(this + 66);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "arrivalTimestamp", *(this + 25));
  if (*(this + 66))
  {
LABEL_4:
    PB::TextFormatter::format(a2, "btcTimestamp", *(this + 7));
  }

LABEL_5:
  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "filteredAcceleration", v8);
  }

  v9 = *(this + 4);
  v10 = *(this + 5);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::TextFormatter::format(a2, "gyroBias", v11);
  }

  v12 = *(this + 66);
  if ((v12 & 0x1000) != 0)
  {
    PB::TextFormatter::format(a2, "isIEDEnabled", *(this + 128));
    v12 = *(this + 66);
    if ((v12 & 0x2000) == 0)
    {
LABEL_11:
      if ((v12 & 0x4000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_33;
    }
  }

  else if ((*(this + 66) & 0x2000) == 0)
  {
    goto LABEL_11;
  }

  PB::TextFormatter::format(a2, "isInEar", *(this + 129));
  v12 = *(this + 66);
  if ((v12 & 0x4000) == 0)
  {
LABEL_12:
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "isVirtual", *(this + 130));
  v12 = *(this + 66);
  if ((v12 & 0x40) == 0)
  {
LABEL_13:
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "location", *(this + 26));
  v12 = *(this + 66);
  if ((v12 & 0x80) == 0)
  {
LABEL_14:
    if ((v12 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "quiescentMode", *(this + 27));
  v12 = *(this + 66);
  if ((v12 & 0x100) == 0)
  {
LABEL_15:
    if ((v12 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "quiescentNoise", *(this + 28));
  v12 = *(this + 66);
  if ((v12 & 0x200) == 0)
  {
LABEL_16:
    if ((v12 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "sampleLatency", *(this + 29));
  v12 = *(this + 66);
  if ((v12 & 2) == 0)
  {
LABEL_17:
    if ((v12 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "sensorTimeUponReceival", *(this + 8));
  v12 = *(this + 66);
  if ((v12 & 0x400) == 0)
  {
LABEL_18:
    if ((v12 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "sequenceNumber", *(this + 30));
  v12 = *(this + 66);
  if ((v12 & 4) == 0)
  {
LABEL_19:
    if ((v12 & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "sourceTimestampToCFAbsoluteTime", *(this + 9));
  if ((*(this + 66) & 8) != 0)
  {
LABEL_20:
    PB::TextFormatter::format(a2, "sourceTimestampToMachContinuous", *(this + 10));
  }

LABEL_21:
  v13 = *(this + 11);
  if (v13)
  {
    (*(*v13 + 32))(v13, a2, "super");
  }

  if ((*(this + 66) & 0x800) != 0)
  {
    PB::TextFormatter::format(a2, "timeSyncStatus", *(this + 31));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AudioAccessoryDeviceMotion::readFrom(CMMsl::AudioAccessoryDeviceMotion *this, PB::Reader *a2)
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
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_249;
      }

      switch((v10 >> 3))
      {
        case 1u:
          operator new();
        case 2u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_251:
              v190 = 0;
              return v190 & 1;
            }

            v83 = *(a2 + 1);
            v84 = *(a2 + 2);
            while (v83 < v84 && (*(a2 + 24) & 1) == 0)
            {
              v86 = *(this + 2);
              v85 = *(this + 3);
              if (v86 >= v85)
              {
                v88 = *(this + 1);
                v89 = v86 - v88;
                v90 = (v86 - v88) >> 2;
                v91 = v90 + 1;
                if ((v90 + 1) >> 62)
                {
                  goto LABEL_252;
                }

                v92 = v85 - v88;
                if (v92 >> 1 > v91)
                {
                  v91 = v92 >> 1;
                }

                if (v92 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v93 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v93 = v91;
                }

                if (v93)
                {
                  sub_10002290C(this + 8, v93);
                }

                v94 = (v86 - v88) >> 2;
                v95 = (4 * v90);
                v96 = (4 * v90 - 4 * v94);
                *v95 = 0;
                v87 = v95 + 1;
                memcpy(v96, v88, v89);
                v97 = *(this + 1);
                *(this + 1) = v96;
                *(this + 2) = v87;
                *(this + 3) = 0;
                if (v97)
                {
                  operator delete(v97);
                }
              }

              else
              {
                *v86 = 0;
                v87 = v86 + 4;
              }

              *(this + 2) = v87;
              v98 = *(a2 + 1);
              if (v98 > 0xFFFFFFFFFFFFFFFBLL || v98 + 4 > *(a2 + 2))
              {
                goto LABEL_191;
              }

              *(v87 - 1) = *(*a2 + v98);
              v84 = *(a2 + 2);
              v83 = *(a2 + 1) + 4;
              *(a2 + 1) = v83;
            }

LABEL_192:
            PB::Reader::recallMark();
          }

          else
          {
            v156 = *(this + 2);
            v155 = *(this + 3);
            if (v156 >= v155)
            {
              v175 = *(this + 1);
              v176 = v156 - v175;
              v177 = (v156 - v175) >> 2;
              v178 = v177 + 1;
              if ((v177 + 1) >> 62)
              {
LABEL_252:
                sub_10000CD24();
              }

              v179 = v155 - v175;
              if (v179 >> 1 > v178)
              {
                v178 = v179 >> 1;
              }

              if (v179 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v180 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v180 = v178;
              }

              if (v180)
              {
                sub_10002290C(this + 8, v180);
              }

              v185 = (v156 - v175) >> 2;
              v186 = (4 * v177);
              v187 = (4 * v177 - 4 * v185);
              *v186 = 0;
              v130 = v186 + 1;
              memcpy(v187, v175, v176);
              v188 = *(this + 1);
              *(this + 1) = v187;
              *(this + 2) = v130;
              *(this + 3) = 0;
              if (v188)
              {
                operator delete(v188);
              }
            }

            else
            {
              *v156 = 0;
              v130 = v156 + 4;
            }

            *(this + 2) = v130;
LABEL_239:
            v189 = *(a2 + 1);
            if (v189 <= 0xFFFFFFFFFFFFFFFBLL && v189 + 4 <= *(a2 + 2))
            {
              *(v130 - 1) = *(*a2 + v189);
LABEL_243:
              v117 = *(a2 + 1) + 4;
LABEL_244:
              *(a2 + 1) = v117;
            }

            else
            {
LABEL_241:
              *(a2 + 24) = 1;
            }
          }

LABEL_245:
          v2 = *(a2 + 1);
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_249;
          }

          break;
        case 3u:
          *(this + 66) |= 0x100u;
          v63 = *(a2 + 1);
          if (v63 > 0xFFFFFFFFFFFFFFFBLL || v63 + 4 > *(a2 + 2))
          {
            goto LABEL_241;
          }

          *(this + 28) = *(*a2 + v63);
          goto LABEL_243;
        case 4u:
          *(this + 66) |= 0x80u;
          v66 = *(a2 + 1);
          v65 = *(a2 + 2);
          v67 = *a2;
          if (v66 <= 0xFFFFFFFFFFFFFFF5 && v66 + 10 <= v65)
          {
            v68 = 0;
            v69 = 0;
            v70 = 0;
            v71 = (v67 + v66);
            v72 = v66 + 1;
            do
            {
              *(a2 + 1) = v72;
              v73 = *v71++;
              v70 |= (v73 & 0x7F) << v68;
              if ((v73 & 0x80) == 0)
              {
                goto LABEL_223;
              }

              v68 += 7;
              ++v72;
              v14 = v69++ > 8;
            }

            while (!v14);
LABEL_160:
            LODWORD(v70) = 0;
            goto LABEL_223;
          }

          v143 = 0;
          v144 = 0;
          v70 = 0;
          v17 = v65 >= v66;
          v145 = v65 - v66;
          if (!v17)
          {
            v145 = 0;
          }

          v146 = (v67 + v66);
          v147 = v66 + 1;
          while (2)
          {
            if (v145)
            {
              v148 = *v146;
              *(a2 + 1) = v147;
              v70 |= (v148 & 0x7F) << v143;
              if (v148 < 0)
              {
                v143 += 7;
                --v145;
                ++v146;
                ++v147;
                v14 = v144++ > 8;
                if (v14)
                {
                  goto LABEL_160;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v70) = 0;
              }
            }

            else
            {
              LODWORD(v70) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_223:
          *(this + 27) = v70;
          goto LABEL_245;
        case 5u:
          *(this + 66) |= 0x40u;
          v45 = *(a2 + 1);
          v44 = *(a2 + 2);
          v46 = *a2;
          if (v45 <= 0xFFFFFFFFFFFFFFF5 && v45 + 10 <= v44)
          {
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v50 = (v46 + v45);
            v51 = v45 + 1;
            do
            {
              *(a2 + 1) = v51;
              v52 = *v50++;
              v49 |= (v52 & 0x7F) << v47;
              if ((v52 & 0x80) == 0)
              {
                goto LABEL_217;
              }

              v47 += 7;
              ++v51;
              v14 = v48++ > 8;
            }

            while (!v14);
LABEL_144:
            LODWORD(v49) = 0;
            goto LABEL_217;
          }

          v131 = 0;
          v132 = 0;
          v49 = 0;
          v17 = v44 >= v45;
          v133 = v44 - v45;
          if (!v17)
          {
            v133 = 0;
          }

          v134 = (v46 + v45);
          v135 = v45 + 1;
          while (2)
          {
            if (v133)
            {
              v136 = *v134;
              *(a2 + 1) = v135;
              v49 |= (v136 & 0x7F) << v131;
              if (v136 < 0)
              {
                v131 += 7;
                --v133;
                ++v134;
                ++v135;
                v14 = v132++ > 8;
                if (v14)
                {
                  goto LABEL_144;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v49) = 0;
              }
            }

            else
            {
              LODWORD(v49) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_217:
          *(this + 26) = v49;
          goto LABEL_245;
        case 6u:
          *(this + 66) |= 0x400u;
          v104 = *(a2 + 1);
          v103 = *(a2 + 2);
          v105 = *a2;
          if (v104 <= 0xFFFFFFFFFFFFFFF5 && v104 + 10 <= v103)
          {
            v106 = 0;
            v107 = 0;
            v108 = 0;
            v109 = (v105 + v104);
            v110 = v104 + 1;
            do
            {
              *(a2 + 1) = v110;
              v111 = *v109++;
              v108 |= (v111 & 0x7F) << v106;
              if ((v111 & 0x80) == 0)
              {
                goto LABEL_229;
              }

              v106 += 7;
              ++v110;
              v14 = v107++ > 8;
            }

            while (!v14);
LABEL_180:
            LODWORD(v108) = 0;
            goto LABEL_229;
          }

          v157 = 0;
          v158 = 0;
          v108 = 0;
          v17 = v103 >= v104;
          v159 = v103 - v104;
          if (!v17)
          {
            v159 = 0;
          }

          v160 = (v105 + v104);
          v161 = v104 + 1;
          while (2)
          {
            if (v159)
            {
              v162 = *v160;
              *(a2 + 1) = v161;
              v108 |= (v162 & 0x7F) << v157;
              if (v162 < 0)
              {
                v157 += 7;
                --v159;
                ++v160;
                ++v161;
                v14 = v158++ > 8;
                if (v14)
                {
                  goto LABEL_180;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v108) = 0;
              }
            }

            else
            {
              LODWORD(v108) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_229:
          *(this + 30) = v108;
          goto LABEL_245;
        case 7u:
          *(this + 66) |= 2u;
          v116 = *(a2 + 1);
          if (v116 > 0xFFFFFFFFFFFFFFF7 || v116 + 8 > *(a2 + 2))
          {
            goto LABEL_241;
          }

          *(this + 8) = *(*a2 + v116);
          goto LABEL_120;
        case 8u:
          *(this + 66) |= 0x800u;
          v75 = *(a2 + 1);
          v74 = *(a2 + 2);
          v76 = *a2;
          if (v75 <= 0xFFFFFFFFFFFFFFF5 && v75 + 10 <= v74)
          {
            v77 = 0;
            v78 = 0;
            v79 = 0;
            v80 = (v76 + v75);
            v81 = v75 + 1;
            do
            {
              *(a2 + 1) = v81;
              v82 = *v80++;
              v79 |= (v82 & 0x7F) << v77;
              if ((v82 & 0x80) == 0)
              {
                goto LABEL_226;
              }

              v77 += 7;
              ++v81;
              v14 = v78++ > 8;
            }

            while (!v14);
LABEL_168:
            LODWORD(v79) = 0;
            goto LABEL_226;
          }

          v149 = 0;
          v150 = 0;
          v79 = 0;
          v17 = v74 >= v75;
          v151 = v74 - v75;
          if (!v17)
          {
            v151 = 0;
          }

          v152 = (v76 + v75);
          v153 = v75 + 1;
          while (2)
          {
            if (v151)
            {
              v154 = *v152;
              *(a2 + 1) = v153;
              v79 |= (v154 & 0x7F) << v149;
              if (v154 < 0)
              {
                v149 += 7;
                --v151;
                ++v152;
                ++v153;
                v14 = v150++ > 8;
                if (v14)
                {
                  goto LABEL_168;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v79) = 0;
              }
            }

            else
            {
              LODWORD(v79) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_226:
          *(this + 31) = v79;
          goto LABEL_245;
        case 9u:
          *(this + 66) |= 1u;
          v120 = *(a2 + 1);
          v119 = *(a2 + 2);
          v121 = *a2;
          if (v120 <= 0xFFFFFFFFFFFFFFF5 && v120 + 10 <= v119)
          {
            v122 = 0;
            v123 = 0;
            v124 = 0;
            v125 = (v121 + v120);
            v126 = v120 + 1;
            do
            {
              *(a2 + 1) = v126;
              v127 = *v125++;
              v124 |= (v127 & 0x7F) << v122;
              if ((v127 & 0x80) == 0)
              {
                goto LABEL_232;
              }

              v122 += 7;
              ++v126;
              v14 = v123++ > 8;
            }

            while (!v14);
LABEL_188:
            v124 = 0;
            goto LABEL_232;
          }

          v163 = 0;
          v164 = 0;
          v124 = 0;
          v17 = v119 >= v120;
          v165 = v119 - v120;
          if (!v17)
          {
            v165 = 0;
          }

          v166 = (v121 + v120);
          v167 = v120 + 1;
          while (2)
          {
            if (v165)
            {
              v168 = *v166;
              *(a2 + 1) = v167;
              v124 |= (v168 & 0x7F) << v163;
              if (v168 < 0)
              {
                v163 += 7;
                --v165;
                ++v166;
                ++v167;
                v14 = v164++ > 8;
                if (v14)
                {
                  goto LABEL_188;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v124 = 0;
              }
            }

            else
            {
              v124 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_232:
          *(this + 7) = v124;
          goto LABEL_245;
        case 0xAu:
          *(this + 66) |= 0x20u;
          v62 = *(a2 + 1);
          if (v62 > 0xFFFFFFFFFFFFFFFBLL || v62 + 4 > *(a2 + 2))
          {
            goto LABEL_241;
          }

          *(this + 25) = *(*a2 + v62);
          goto LABEL_243;
        case 0xBu:
          *(this + 66) |= 0x200u;
          v118 = *(a2 + 1);
          if (v118 > 0xFFFFFFFFFFFFFFFBLL || v118 + 4 > *(a2 + 2))
          {
            goto LABEL_241;
          }

          *(this + 29) = *(*a2 + v118);
          goto LABEL_243;
        case 0xCu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_251;
            }

            v28 = *(a2 + 1);
            v29 = *(a2 + 2);
            while (v28 < v29 && (*(a2 + 24) & 1) == 0)
            {
              v31 = *(this + 5);
              v30 = *(this + 6);
              if (v31 >= v30)
              {
                v33 = *(this + 4);
                v34 = v31 - v33;
                v35 = (v31 - v33) >> 2;
                v36 = v35 + 1;
                if ((v35 + 1) >> 62)
                {
                  goto LABEL_252;
                }

                v37 = v30 - v33;
                if (v37 >> 1 > v36)
                {
                  v36 = v37 >> 1;
                }

                if (v37 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v38 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v38 = v36;
                }

                if (v38)
                {
                  sub_10002290C(this + 32, v38);
                }

                v39 = (v31 - v33) >> 2;
                v40 = (4 * v35);
                v41 = (4 * v35 - 4 * v39);
                *v40 = 0;
                v32 = v40 + 1;
                memcpy(v41, v33, v34);
                v42 = *(this + 4);
                *(this + 4) = v41;
                *(this + 5) = v32;
                *(this + 6) = 0;
                if (v42)
                {
                  operator delete(v42);
                }
              }

              else
              {
                *v31 = 0;
                v32 = v31 + 4;
              }

              *(this + 5) = v32;
              v43 = *(a2 + 1);
              if (v43 > 0xFFFFFFFFFFFFFFFBLL || v43 + 4 > *(a2 + 2))
              {
LABEL_191:
                *(a2 + 24) = 1;
                goto LABEL_192;
              }

              *(v32 - 1) = *(*a2 + v43);
              v29 = *(a2 + 2);
              v28 = *(a2 + 1) + 4;
              *(a2 + 1) = v28;
            }

            goto LABEL_192;
          }

          v129 = *(this + 5);
          v128 = *(this + 6);
          if (v129 >= v128)
          {
            v169 = *(this + 4);
            v170 = v129 - v169;
            v171 = (v129 - v169) >> 2;
            v172 = v171 + 1;
            if ((v171 + 1) >> 62)
            {
              goto LABEL_252;
            }

            v173 = v128 - v169;
            if (v173 >> 1 > v172)
            {
              v172 = v173 >> 1;
            }

            if (v173 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v174 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v174 = v172;
            }

            if (v174)
            {
              sub_10002290C(this + 32, v174);
            }

            v181 = (v129 - v169) >> 2;
            v182 = (4 * v171);
            v183 = (4 * v171 - 4 * v181);
            *v182 = 0;
            v130 = v182 + 1;
            memcpy(v183, v169, v170);
            v184 = *(this + 4);
            *(this + 4) = v183;
            *(this + 5) = v130;
            *(this + 6) = 0;
            if (v184)
            {
              operator delete(v184);
            }
          }

          else
          {
            *v129 = 0;
            v130 = v129 + 4;
          }

          *(this + 5) = v130;
          goto LABEL_239;
        case 0xDu:
          *(this + 66) |= 0x10u;
          v54 = *(a2 + 1);
          v53 = *(a2 + 2);
          v55 = *a2;
          if (v54 <= 0xFFFFFFFFFFFFFFF5 && v54 + 10 <= v53)
          {
            v56 = 0;
            v57 = 0;
            v58 = 0;
            v59 = (v55 + v54);
            v60 = v54 + 1;
            do
            {
              *(a2 + 1) = v60;
              v61 = *v59++;
              v58 |= (v61 & 0x7F) << v56;
              if ((v61 & 0x80) == 0)
              {
                goto LABEL_220;
              }

              v56 += 7;
              ++v60;
              v14 = v57++ > 8;
            }

            while (!v14);
LABEL_152:
            LODWORD(v58) = 0;
            goto LABEL_220;
          }

          v137 = 0;
          v138 = 0;
          v58 = 0;
          v17 = v53 >= v54;
          v139 = v53 - v54;
          if (!v17)
          {
            v139 = 0;
          }

          v140 = (v55 + v54);
          v141 = v54 + 1;
          while (2)
          {
            if (v139)
            {
              v142 = *v140;
              *(a2 + 1) = v141;
              v58 |= (v142 & 0x7F) << v137;
              if (v142 < 0)
              {
                v137 += 7;
                --v139;
                ++v140;
                ++v141;
                v14 = v138++ > 8;
                if (v14)
                {
                  goto LABEL_152;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v58) = 0;
              }
            }

            else
            {
              LODWORD(v58) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_220:
          *(this + 24) = v58;
          goto LABEL_245;
        case 0xEu:
          *(this + 66) |= 0x2000u;
          v112 = *(a2 + 1);
          if (v112 >= *(a2 + 2))
          {
            v115 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v113 = v112 + 1;
            v114 = *(*a2 + v112);
            *(a2 + 1) = v113;
            v115 = v114 != 0;
          }

          *(this + 129) = v115;
          goto LABEL_245;
        case 0xFu:
          *(this + 66) |= 8u;
          v27 = *(a2 + 1);
          if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(a2 + 2))
          {
            goto LABEL_241;
          }

          *(this + 10) = *(*a2 + v27);
          goto LABEL_120;
        case 0x10u:
          *(this + 66) |= 4u;
          v64 = *(a2 + 1);
          if (v64 > 0xFFFFFFFFFFFFFFF7 || v64 + 8 > *(a2 + 2))
          {
            goto LABEL_241;
          }

          *(this + 9) = *(*a2 + v64);
LABEL_120:
          v117 = *(a2 + 1) + 8;
          goto LABEL_244;
        case 0x11u:
          *(this + 66) |= 0x1000u;
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

          *(this + 128) = v26;
          goto LABEL_245;
        case 0x12u:
          *(this + 66) |= 0x4000u;
          v99 = *(a2 + 1);
          if (v99 >= *(a2 + 2))
          {
            v102 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v100 = v99 + 1;
            v101 = *(*a2 + v99);
            *(a2 + 1) = v100;
            v102 = v101 != 0;
          }

          *(this + 130) = v102;
          goto LABEL_245;
        default:
          if ((PB::Reader::skip(a2, v10 >> 3, v22, 0) & 1) == 0)
          {
            goto LABEL_251;
          }

          goto LABEL_245;
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

LABEL_249:
  v190 = v4 ^ 1;
  return v190 & 1;
}

double CMMsl::AuxiliaryDeviceMotion::AuxiliaryDeviceMotion(CMMsl::AuxiliaryDeviceMotion *this)
{
  *this = off_10041CFD0;
  *(this + 38) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  return result;
}

{
  *this = off_10041CFD0;
  *(this + 38) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  return result;
}

uint64_t CMMsl::AudioAccessoryDeviceMotion::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 88);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4, 1u);
  }

  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7, 2u);
  }

  v8 = *(v3 + 132);
  if ((v8 & 0x100) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 112), 3u);
    v8 = *(v3 + 132);
    if ((v8 & 0x80) == 0)
    {
LABEL_8:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }
  }

  else if ((v8 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 108), 4u);
  v8 = *(v3 + 132);
  if ((v8 & 0x40) == 0)
  {
LABEL_9:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::writeVarInt(a2, *(v3 + 104), 5u);
  v8 = *(v3 + 132);
  if ((v8 & 0x400) == 0)
  {
LABEL_10:
    if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::writeVarInt(a2, *(v3 + 120), 6u);
  v8 = *(v3 + 132);
  if ((v8 & 2) == 0)
  {
LABEL_11:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 64), 7u);
  v8 = *(v3 + 132);
  if ((v8 & 0x800) == 0)
  {
LABEL_12:
    if ((v8 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::writeVarInt(a2, *(v3 + 124), 8u);
  v8 = *(v3 + 132);
  if ((v8 & 1) == 0)
  {
LABEL_13:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_33:
    this = PB::Writer::write(a2, *(v3 + 100), 0xAu);
    if ((*(v3 + 132) & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_32:
  this = PB::Writer::writeVarInt(a2, *(v3 + 56), 9u);
  v8 = *(v3 + 132);
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_33;
  }

LABEL_14:
  if ((v8 & 0x200) != 0)
  {
LABEL_15:
    this = PB::Writer::write(a2, *(v3 + 116), 0xBu);
  }

LABEL_16:
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  while (v9 != v10)
  {
    v11 = *v9++;
    this = PB::Writer::write(a2, v11, 0xCu);
  }

  v12 = *(v3 + 132);
  if ((v12 & 0x10) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(v3 + 96), 0xDu);
    v12 = *(v3 + 132);
    if ((v12 & 0x2000) == 0)
    {
LABEL_21:
      if ((v12 & 8) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_37;
    }
  }

  else if ((*(v3 + 132) & 0x2000) == 0)
  {
    goto LABEL_21;
  }

  this = PB::Writer::write(a2, *(v3 + 129), 0xEu);
  v12 = *(v3 + 132);
  if ((v12 & 8) == 0)
  {
LABEL_22:
    if ((v12 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 80), 0xFu);
  v12 = *(v3 + 132);
  if ((v12 & 4) == 0)
  {
LABEL_23:
    if ((v12 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

LABEL_39:
    this = PB::Writer::write(a2, *(v3 + 128), 0x11u);
    if ((*(v3 + 132) & 0x4000) == 0)
    {
      return this;
    }

    goto LABEL_40;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 72), 0x10u);
  v12 = *(v3 + 132);
  if ((v12 & 0x1000) != 0)
  {
    goto LABEL_39;
  }

LABEL_24:
  if ((v12 & 0x4000) == 0)
  {
    return this;
  }

LABEL_40:
  v13 = *(v3 + 130);

  return PB::Writer::write(a2, v13, 0x12u);
}

BOOL CMMsl::AuxiliaryDeviceMotion::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 152) & 2) != 0)
  {
    if ((*(a2 + 152) & 2) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((*(a2 + 152) & 2) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  v4 = *(a2 + 56);
  if (v2 - v3 != *(a2 + 64) - v4)
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

  v6 = *(a1 + 80);
  v5 = *(a1 + 88);
  v7 = *(a2 + 80);
  if (v5 - v6 != *(a2 + 88) - v7)
  {
    return 0;
  }

  while (v6 != v5)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(a2 + 32);
  if (v8 - v9 != *(a2 + 40) - v10)
  {
    return 0;
  }

  while (v9 != v8)
  {
    if (*v9 != *v10)
    {
      return 0;
    }

    ++v9;
    ++v10;
  }

  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  v13 = *(a2 + 8);
  if (v11 - v12 != *(a2 + 16) - v13)
  {
    return 0;
  }

  while (v12 != v11)
  {
    if (*v12 != *v13)
    {
      return 0;
    }

    ++v12;
    ++v13;
  }

  if ((*(a1 + 152) & 8) != 0)
  {
    if ((*(a2 + 152) & 8) == 0 || *(a1 + 148) != *(a2 + 148))
    {
      return 0;
    }
  }

  else if ((*(a2 + 152) & 8) != 0)
  {
    return 0;
  }

  if (*(a1 + 152))
  {
    if ((*(a2 + 152) & 1) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if (*(a2 + 152))
  {
    return 0;
  }

  v15 = *(a1 + 104);
  v14 = *(a1 + 112);
  v16 = *(a2 + 104);
  if (v14 - v15 != *(a2 + 112) - v16)
  {
    return 0;
  }

  while (v15 != v14)
  {
    if (*v15 != *v16)
    {
      return 0;
    }

    ++v15;
    ++v16;
  }

  v17 = (*(a2 + 152) & 4) == 0;
  if ((*(a1 + 152) & 4) != 0)
  {
    return (*(a2 + 152) & 4) != 0 && *(a1 + 144) == *(a2 + 144);
  }

  return v17;
}

uint64_t CMMsl::AudioAccessoryDeviceMotion::hash_value(CMMsl::AudioAccessoryDeviceMotion *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    v26 = CMMsl::AuxiliaryDeviceMotion::hash_value(v2);
  }

  else
  {
    v26 = 0;
  }

  v25 = PBHashBytes();
  v3 = *(this + 66);
  if ((v3 & 0x100) != 0)
  {
    v15 = *(this + 28);
    if (v15 == 0.0)
    {
      v4 = 0;
    }

    else
    {
      v4 = LODWORD(v15);
    }

    if ((v3 & 0x80) != 0)
    {
LABEL_6:
      v5 = *(this + 27);
      if ((v3 & 0x40) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 0x80) != 0)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
  if ((v3 & 0x40) != 0)
  {
LABEL_7:
    v6 = *(this + 26);
    if ((*(this + 66) & 0x400) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  v6 = 0;
  if ((*(this + 66) & 0x400) != 0)
  {
LABEL_8:
    v7 = *(this + 30);
    if ((v3 & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_29:
    v8 = 0;
    if ((*(this + 66) & 0x800) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_28:
  v7 = 0;
  if ((v3 & 2) == 0)
  {
    goto LABEL_29;
  }

LABEL_9:
  if (*(this + 8) == 0.0)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(this + 8);
  }

  if ((*(this + 66) & 0x800) != 0)
  {
LABEL_13:
    v9 = *(this + 31);
    if (v3)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v9 = 0;
  if (v3)
  {
LABEL_14:
    v10 = *(this + 7);
    if ((v3 & 0x20) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  v10 = 0;
  if ((v3 & 0x20) != 0)
  {
LABEL_15:
    v11 = *(this + 25);
    if (v11 == 0.0)
    {
      v12 = 0;
    }

    else
    {
      v12 = LODWORD(v11);
    }

    if ((*(this + 66) & 0x200) != 0)
    {
      goto LABEL_19;
    }

LABEL_33:
    v14 = 0;
    goto LABEL_34;
  }

LABEL_32:
  v12 = 0;
  if ((*(this + 66) & 0x200) == 0)
  {
    goto LABEL_33;
  }

LABEL_19:
  v13 = *(this + 29);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  else
  {
    v14 = LODWORD(v13);
  }

LABEL_34:
  v16 = PBHashBytes();
  v17 = *(this + 66);
  if ((v17 & 0x10) != 0)
  {
    v18 = *(this + 24);
    if ((*(this + 66) & 0x2000) != 0)
    {
LABEL_36:
      v19 = *(this + 129);
      if ((v17 & 8) != 0)
      {
        goto LABEL_37;
      }

LABEL_47:
      v20 = 0.0;
      if ((v17 & 4) != 0)
      {
        goto LABEL_40;
      }

LABEL_48:
      v21 = 0.0;
      if ((*(this + 66) & 0x1000) != 0)
      {
        goto LABEL_43;
      }

LABEL_49:
      v22 = 0;
      if ((*(this + 66) & 0x4000) != 0)
      {
        goto LABEL_44;
      }

LABEL_50:
      v23 = 0;
      return v25 ^ v26 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v19 ^ *&v20 ^ *&v21 ^ v22 ^ v23;
    }
  }

  else
  {
    v18 = 0;
    if ((*(this + 66) & 0x2000) != 0)
    {
      goto LABEL_36;
    }
  }

  v19 = 0;
  if ((v17 & 8) == 0)
  {
    goto LABEL_47;
  }

LABEL_37:
  v20 = *(this + 10);
  if (v20 == 0.0)
  {
    v20 = 0.0;
  }

  if ((v17 & 4) == 0)
  {
    goto LABEL_48;
  }

LABEL_40:
  v21 = *(this + 9);
  if (v21 == 0.0)
  {
    v21 = 0.0;
  }

  if ((*(this + 66) & 0x1000) == 0)
  {
    goto LABEL_49;
  }

LABEL_43:
  v22 = *(this + 128);
  if ((*(this + 66) & 0x4000) == 0)
  {
    goto LABEL_50;
  }

LABEL_44:
  v23 = *(this + 130);
  return v25 ^ v26 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v19 ^ *&v20 ^ *&v21 ^ v22 ^ v23;
}

void *CMMsl::AudioAccessoryDeviceMotion::makeSuper(void *this)
{
  if (!this[11])
  {
    operator new();
  }

  return this;
}

void CMMsl::AuxiliaryDeviceMotion::~AuxiliaryDeviceMotion(CMMsl::AuxiliaryDeviceMotion *this)
{
  *this = off_10041CFD0;
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    *(this + 2) = v6;
    operator delete(v6);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::AuxiliaryDeviceMotion::~AuxiliaryDeviceMotion(this);

  operator delete();
}

CMMsl::AuxiliaryDeviceMotion *CMMsl::AuxiliaryDeviceMotion::AuxiliaryDeviceMotion(CMMsl::AuxiliaryDeviceMotion *this, const CMMsl::AuxiliaryDeviceMotion *a2)
{
  *this = off_10041CFD0;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  v5 = (this + 56);
  *(this + 104) = 0u;
  *(this + 38) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 15) = 0;
  if ((*(a2 + 152) & 2) != 0)
  {
    v6 = *(a2 + 17);
    *(this + 152) = 2;
    *(this + 17) = v6;
  }

  if (this != a2)
  {
    sub_100035D1C(v5, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 2);
    sub_100035D1C(this + 10, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 2);
    sub_100035D1C(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
    sub_100035D1C(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  v7 = *(a2 + 152);
  if ((v7 & 8) != 0)
  {
    v8 = *(a2 + 37);
    *(this + 152) |= 8u;
    *(this + 37) = v8;
    v7 = *(a2 + 152);
  }

  if (v7)
  {
    v9 = *(a2 + 16);
    *(this + 152) |= 1u;
    *(this + 16) = v9;
  }

  if (this != a2)
  {
    sub_100035D1C(this + 13, *(a2 + 13), *(a2 + 14), (*(a2 + 14) - *(a2 + 13)) >> 2);
  }

  if ((*(a2 + 152) & 4) != 0)
  {
    v10 = *(a2 + 36);
    *(this + 152) |= 4u;
    *(this + 36) = v10;
  }

  return this;
}

CMMsl *CMMsl::AuxiliaryDeviceMotion::operator=(CMMsl *a1, const CMMsl::AuxiliaryDeviceMotion *a2)
{
  if (a1 != a2)
  {
    CMMsl::AuxiliaryDeviceMotion::AuxiliaryDeviceMotion(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::AuxiliaryDeviceMotion::~AuxiliaryDeviceMotion(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::AuxiliaryDeviceMotion *a2, CMMsl::AuxiliaryDeviceMotion *a3)
{
  v3 = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v3;
  v4 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  v6 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v6;
  v7 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v7;
  v8 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v8;
  v9 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v9;
  v10 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v10;
  v11 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v11;
  v12 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v12;
  v13 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v13;
  v14 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v14;
  v15 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v15;
  LODWORD(v15) = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v15;
  v16 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v16;
  v17 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v17;
  v19 = *(this + 15);
  v18 = *(this + 16);
  v20 = *(a2 + 16);
  *(this + 15) = *(a2 + 15);
  *(this + 16) = v20;
  result = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = result;
  *(a2 + 15) = v19;
  *(a2 + 16) = v18;
  LODWORD(v18) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v18;
  return result;
}

uint64_t CMMsl::AuxiliaryDeviceMotion::AuxiliaryDeviceMotion(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041CFD0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  v4 = a1 + 104;
  *(a1 + 8) = 0u;
  v5 = a1 + 8;
  *(a1 + 56) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a1 + 136) = *(a2 + 136);
  sub_1002A2DD0(a1 + 56, (a2 + 56));
  sub_1002A2DD0(a1 + 80, (a2 + 80));
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  sub_1002A2DD0(v5, (a2 + 8));
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 128) = *(a2 + 128);
  sub_1002A2DD0(v4, (a2 + 104));
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

CMMsl *CMMsl::AuxiliaryDeviceMotion::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::AuxiliaryDeviceMotion::AuxiliaryDeviceMotion(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::AuxiliaryDeviceMotion::~AuxiliaryDeviceMotion(v5);
  }

  return a1;
}

uint64_t CMMsl::AuxiliaryDeviceMotion::formatText(CMMsl::AuxiliaryDeviceMotion *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "acceleration", v7);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "biasCovariance", v10);
  }

  v11 = *(this + 7);
  v12 = *(this + 8);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(a2, "quaternion", v13);
  }

  v14 = *(this + 10);
  v15 = *(this + 11);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(a2, "rotationRate", v16);
  }

  v17 = *(this + 152);
  if (v17)
  {
    PB::TextFormatter::format(a2, "sensorTime", *(this + 16));
    v17 = *(this + 152);
    if ((v17 & 4) == 0)
    {
LABEL_11:
      if ((v17 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else if ((*(this + 152) & 4) == 0)
  {
    goto LABEL_11;
  }

  PB::TextFormatter::format(a2, "status", *(this + 36));
  v17 = *(this + 152);
  if ((v17 & 8) == 0)
  {
LABEL_12:
    if ((v17 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "statusDeprecated", *(this + 37));
  if ((*(this + 152) & 2) != 0)
  {
LABEL_13:
    PB::TextFormatter::format(a2, "timestamp", *(this + 17));
  }

LABEL_14:
  v18 = *(this + 13);
  v19 = *(this + 14);
  while (v18 != v19)
  {
    v20 = *v18++;
    PB::TextFormatter::format(a2, "userAcceleration", v20);
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AuxiliaryDeviceMotion::readFrom(CMMsl::AuxiliaryDeviceMotion *this, PB::Reader *a2)
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
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        break;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) <= 4)
      {
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_274;
              }

              v76 = *(a2 + 1);
              v77 = *(a2 + 2);
              while (v76 < v77 && (*(a2 + 24) & 1) == 0)
              {
                v79 = *(this + 11);
                v78 = *(this + 12);
                if (v79 >= v78)
                {
                  v81 = *(this + 10);
                  v82 = v79 - v81;
                  v83 = (v79 - v81) >> 2;
                  v84 = v83 + 1;
                  if ((v83 + 1) >> 62)
                  {
                    goto LABEL_275;
                  }

                  v85 = v78 - v81;
                  if (v85 >> 1 > v84)
                  {
                    v84 = v85 >> 1;
                  }

                  if (v85 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v86 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v86 = v84;
                  }

                  if (v86)
                  {
                    sub_10002290C(this + 80, v86);
                  }

                  v87 = (v79 - v81) >> 2;
                  v88 = (4 * v83);
                  v89 = (4 * v83 - 4 * v87);
                  *v88 = 0;
                  v80 = v88 + 1;
                  memcpy(v89, v81, v82);
                  v90 = *(this + 10);
                  *(this + 10) = v89;
                  *(this + 11) = v80;
                  *(this + 12) = 0;
                  if (v90)
                  {
                    operator delete(v90);
                  }
                }

                else
                {
                  *v79 = 0;
                  v80 = v79 + 4;
                }

                *(this + 11) = v80;
                v91 = *(a2 + 1);
                if (v91 > 0xFFFFFFFFFFFFFFFBLL || v91 + 4 > *(a2 + 2))
                {
LABEL_160:
                  *(a2 + 24) = 1;
                  goto LABEL_161;
                }

                *(v80 - 1) = *(*a2 + v91);
                v77 = *(a2 + 2);
                v76 = *(a2 + 1) + 4;
                *(a2 + 1) = v76;
              }

              goto LABEL_161;
            }

            v151 = *(this + 11);
            v150 = *(this + 12);
            if (v151 >= v150)
            {
              v174 = *(this + 10);
              v175 = v151 - v174;
              v176 = (v151 - v174) >> 2;
              v177 = v176 + 1;
              if ((v176 + 1) >> 62)
              {
                goto LABEL_275;
              }

              v178 = v150 - v174;
              if (v178 >> 1 > v177)
              {
                v177 = v178 >> 1;
              }

              if (v178 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v179 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v179 = v177;
              }

              if (v179)
              {
                sub_10002290C(this + 80, v179);
              }

              v200 = (v151 - v174) >> 2;
              v201 = (4 * v176);
              v202 = (4 * v176 - 4 * v200);
              *v201 = 0;
              v135 = v201 + 1;
              memcpy(v202, v174, v175);
              v203 = *(this + 10);
              *(this + 10) = v202;
              *(this + 11) = v135;
              *(this + 12) = 0;
              if (v203)
              {
                operator delete(v203);
              }
            }

            else
            {
              *v151 = 0;
              v135 = v151 + 4;
            }

            *(this + 11) = v135;
            goto LABEL_263;
          }

          if (v23 == 4)
          {
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_274;
              }

              v49 = *(a2 + 1);
              v50 = *(a2 + 2);
              while (v49 < v50 && (*(a2 + 24) & 1) == 0)
              {
                v52 = *(this + 5);
                v51 = *(this + 6);
                if (v52 >= v51)
                {
                  v54 = *(this + 4);
                  v55 = v52 - v54;
                  v56 = (v52 - v54) >> 2;
                  v57 = v56 + 1;
                  if ((v56 + 1) >> 62)
                  {
                    goto LABEL_275;
                  }

                  v58 = v51 - v54;
                  if (v58 >> 1 > v57)
                  {
                    v57 = v58 >> 1;
                  }

                  if (v58 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v59 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v59 = v57;
                  }

                  if (v59)
                  {
                    sub_10002290C(this + 32, v59);
                  }

                  v60 = (v52 - v54) >> 2;
                  v61 = (4 * v56);
                  v62 = (4 * v56 - 4 * v60);
                  *v61 = 0;
                  v53 = v61 + 1;
                  memcpy(v62, v54, v55);
                  v63 = *(this + 4);
                  *(this + 4) = v62;
                  *(this + 5) = v53;
                  *(this + 6) = 0;
                  if (v63)
                  {
                    operator delete(v63);
                  }
                }

                else
                {
                  *v52 = 0;
                  v53 = v52 + 4;
                }

                *(this + 5) = v53;
                v64 = *(a2 + 1);
                if (v64 > 0xFFFFFFFFFFFFFFFBLL || v64 + 4 > *(a2 + 2))
                {
                  goto LABEL_160;
                }

                *(v53 - 1) = *(*a2 + v64);
                v50 = *(a2 + 2);
                v49 = *(a2 + 1) + 4;
                *(a2 + 1) = v49;
              }

              goto LABEL_161;
            }

            v137 = *(this + 5);
            v136 = *(this + 6);
            if (v137 >= v136)
            {
              v168 = *(this + 4);
              v169 = v137 - v168;
              v170 = (v137 - v168) >> 2;
              v171 = v170 + 1;
              if ((v170 + 1) >> 62)
              {
                goto LABEL_275;
              }

              v172 = v136 - v168;
              if (v172 >> 1 > v171)
              {
                v171 = v172 >> 1;
              }

              if (v172 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v173 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v173 = v171;
              }

              if (v173)
              {
                sub_10002290C(this + 32, v173);
              }

              v196 = (v137 - v168) >> 2;
              v197 = (4 * v170);
              v198 = (4 * v170 - 4 * v196);
              *v197 = 0;
              v135 = v197 + 1;
              memcpy(v198, v168, v169);
              v199 = *(this + 4);
              *(this + 4) = v198;
              *(this + 5) = v135;
              *(this + 6) = 0;
              if (v199)
              {
                operator delete(v199);
              }
            }

            else
            {
              *v137 = 0;
              v135 = v137 + 4;
            }

            *(this + 5) = v135;
LABEL_263:
            v212 = *(a2 + 1);
            if (v212 > 0xFFFFFFFFFFFFFFFBLL || v212 + 4 > *(a2 + 2))
            {
              goto LABEL_265;
            }

            *(v135 - 1) = *(*a2 + v212);
            v75 = *(a2 + 1) + 4;
LABEL_267:
            *(a2 + 1) = v75;
            goto LABEL_268;
          }
        }

        else
        {
          if (v23 == 1)
          {
            *(this + 152) |= 2u;
            v74 = *(a2 + 1);
            if (v74 > 0xFFFFFFFFFFFFFFF7 || v74 + 8 > *(a2 + 2))
            {
LABEL_265:
              *(a2 + 24) = 1;
              goto LABEL_268;
            }

            *(this + 17) = *(*a2 + v74);
            v75 = *(a2 + 1) + 8;
            goto LABEL_267;
          }

          if (v23 == 2)
          {
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_274;
              }

              v33 = *(a2 + 1);
              v34 = *(a2 + 2);
              while (v33 < v34 && (*(a2 + 24) & 1) == 0)
              {
                v36 = *(this + 8);
                v35 = *(this + 9);
                if (v36 >= v35)
                {
                  v38 = *(this + 7);
                  v39 = v36 - v38;
                  v40 = (v36 - v38) >> 2;
                  v41 = v40 + 1;
                  if ((v40 + 1) >> 62)
                  {
                    goto LABEL_275;
                  }

                  v42 = v35 - v38;
                  if (v42 >> 1 > v41)
                  {
                    v41 = v42 >> 1;
                  }

                  if (v42 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v43 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v43 = v41;
                  }

                  if (v43)
                  {
                    sub_10002290C(this + 56, v43);
                  }

                  v44 = (v36 - v38) >> 2;
                  v45 = (4 * v40);
                  v46 = (4 * v40 - 4 * v44);
                  *v45 = 0;
                  v37 = v45 + 1;
                  memcpy(v46, v38, v39);
                  v47 = *(this + 7);
                  *(this + 7) = v46;
                  *(this + 8) = v37;
                  *(this + 9) = 0;
                  if (v47)
                  {
                    operator delete(v47);
                  }
                }

                else
                {
                  *v36 = 0;
                  v37 = v36 + 4;
                }

                *(this + 8) = v37;
                v48 = *(a2 + 1);
                if (v48 > 0xFFFFFFFFFFFFFFFBLL || v48 + 4 > *(a2 + 2))
                {
                  goto LABEL_160;
                }

                *(v37 - 1) = *(*a2 + v48);
                v34 = *(a2 + 2);
                v33 = *(a2 + 1) + 4;
                *(a2 + 1) = v33;
              }

LABEL_161:
              PB::Reader::recallMark();
              goto LABEL_268;
            }

            v134 = *(this + 8);
            v133 = *(this + 9);
            if (v134 >= v133)
            {
              v162 = *(this + 7);
              v163 = v134 - v162;
              v164 = (v134 - v162) >> 2;
              v165 = v164 + 1;
              if ((v164 + 1) >> 62)
              {
                goto LABEL_275;
              }

              v166 = v133 - v162;
              if (v166 >> 1 > v165)
              {
                v165 = v166 >> 1;
              }

              if (v166 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v167 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v167 = v165;
              }

              if (v167)
              {
                sub_10002290C(this + 56, v167);
              }

              v192 = (v134 - v162) >> 2;
              v193 = (4 * v164);
              v194 = (4 * v164 - 4 * v192);
              *v193 = 0;
              v135 = v193 + 1;
              memcpy(v194, v162, v163);
              v195 = *(this + 7);
              *(this + 7) = v194;
              *(this + 8) = v135;
              *(this + 9) = 0;
              if (v195)
              {
                operator delete(v195);
              }
            }

            else
            {
              *v134 = 0;
              v135 = v134 + 4;
            }

            *(this + 8) = v135;
            goto LABEL_263;
          }
        }
      }

      else if (v23 <= 6)
      {
        if (v23 == 5)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_274;
            }

            v101 = *(a2 + 1);
            v102 = *(a2 + 2);
            while (v101 < v102 && (*(a2 + 24) & 1) == 0)
            {
              v104 = *(this + 2);
              v103 = *(this + 3);
              if (v104 >= v103)
              {
                v106 = *(this + 1);
                v107 = v104 - v106;
                v108 = (v104 - v106) >> 2;
                v109 = v108 + 1;
                if ((v108 + 1) >> 62)
                {
                  goto LABEL_275;
                }

                v110 = v103 - v106;
                if (v110 >> 1 > v109)
                {
                  v109 = v110 >> 1;
                }

                if (v110 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v111 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v111 = v109;
                }

                if (v111)
                {
                  sub_10002290C(this + 8, v111);
                }

                v112 = (v104 - v106) >> 2;
                v113 = (4 * v108);
                v114 = (4 * v108 - 4 * v112);
                *v113 = 0;
                v105 = v113 + 1;
                memcpy(v114, v106, v107);
                v115 = *(this + 1);
                *(this + 1) = v114;
                *(this + 2) = v105;
                *(this + 3) = 0;
                if (v115)
                {
                  operator delete(v115);
                }
              }

              else
              {
                *v104 = 0;
                v105 = v104 + 4;
              }

              *(this + 2) = v105;
              v116 = *(a2 + 1);
              if (v116 > 0xFFFFFFFFFFFFFFFBLL || v116 + 4 > *(a2 + 2))
              {
                goto LABEL_160;
              }

              *(v105 - 1) = *(*a2 + v116);
              v102 = *(a2 + 2);
              v101 = *(a2 + 1) + 4;
              *(a2 + 1) = v101;
            }

            goto LABEL_161;
          }

          v159 = *(this + 2);
          v158 = *(this + 3);
          if (v159 >= v158)
          {
            v180 = *(this + 1);
            v181 = v159 - v180;
            v182 = (v159 - v180) >> 2;
            v183 = v182 + 1;
            if ((v182 + 1) >> 62)
            {
              goto LABEL_275;
            }

            v184 = v158 - v180;
            if (v184 >> 1 > v183)
            {
              v183 = v184 >> 1;
            }

            if (v184 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v185 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v185 = v183;
            }

            if (v185)
            {
              sub_10002290C(this + 8, v185);
            }

            v204 = (v159 - v180) >> 2;
            v205 = (4 * v182);
            v206 = (4 * v182 - 4 * v204);
            *v205 = 0;
            v135 = v205 + 1;
            memcpy(v206, v180, v181);
            v207 = *(this + 1);
            *(this + 1) = v206;
            *(this + 2) = v135;
            *(this + 3) = 0;
            if (v207)
            {
              operator delete(v207);
            }
          }

          else
          {
            *v159 = 0;
            v135 = v159 + 4;
          }

          *(this + 2) = v135;
          goto LABEL_263;
        }

        if (v23 == 6)
        {
          *(this + 152) |= 8u;
          v66 = *(a2 + 1);
          v65 = *(a2 + 2);
          v67 = *a2;
          if (v66 > 0xFFFFFFFFFFFFFFF5 || v66 + 10 > v65)
          {
            v138 = 0;
            v139 = 0;
            v70 = 0;
            v17 = v65 >= v66;
            v140 = v65 - v66;
            if (!v17)
            {
              v140 = 0;
            }

            v141 = (v67 + v66);
            v142 = v66 + 1;
            while (1)
            {
              if (!v140)
              {
                LODWORD(v70) = 0;
                *(a2 + 24) = 1;
                goto LABEL_241;
              }

              v143 = *v141;
              *(a2 + 1) = v142;
              v70 |= (v143 & 0x7F) << v138;
              if ((v143 & 0x80) == 0)
              {
                break;
              }

              v138 += 7;
              --v140;
              ++v141;
              ++v142;
              v14 = v139++ > 8;
              if (v14)
              {
LABEL_173:
                LODWORD(v70) = 0;
                goto LABEL_241;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v70) = 0;
            }
          }

          else
          {
            v68 = 0;
            v69 = 0;
            v70 = 0;
            v71 = (v67 + v66);
            v72 = v66 + 1;
            while (1)
            {
              *(a2 + 1) = v72;
              v73 = *v71++;
              v70 |= (v73 & 0x7F) << v68;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v68 += 7;
              ++v72;
              v14 = v69++ > 8;
              if (v14)
              {
                goto LABEL_173;
              }
            }
          }

LABEL_241:
          *(this + 37) = v70;
          goto LABEL_268;
        }
      }

      else
      {
        switch(v23)
        {
          case 7:
            *(this + 152) |= 1u;
            v93 = *(a2 + 1);
            v92 = *(a2 + 2);
            v94 = *a2;
            if (v93 > 0xFFFFFFFFFFFFFFF5 || v93 + 10 > v92)
            {
              v144 = 0;
              v145 = 0;
              v97 = 0;
              v17 = v92 >= v93;
              v146 = v92 - v93;
              if (!v17)
              {
                v146 = 0;
              }

              v147 = (v94 + v93);
              v148 = v93 + 1;
              while (1)
              {
                if (!v146)
                {
                  v97 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_244;
                }

                v149 = *v147;
                *(a2 + 1) = v148;
                v97 |= (v149 & 0x7F) << v144;
                if ((v149 & 0x80) == 0)
                {
                  break;
                }

                v144 += 7;
                --v146;
                ++v147;
                ++v148;
                v14 = v145++ > 8;
                if (v14)
                {
LABEL_181:
                  v97 = 0;
                  goto LABEL_244;
                }
              }

              if (*(a2 + 24))
              {
                v97 = 0;
              }
            }

            else
            {
              v95 = 0;
              v96 = 0;
              v97 = 0;
              v98 = (v94 + v93);
              v99 = v93 + 1;
              while (1)
              {
                *(a2 + 1) = v99;
                v100 = *v98++;
                v97 |= (v100 & 0x7F) << v95;
                if ((v100 & 0x80) == 0)
                {
                  break;
                }

                v95 += 7;
                ++v99;
                v14 = v96++ > 8;
                if (v14)
                {
                  goto LABEL_181;
                }
              }
            }

LABEL_244:
            *(this + 16) = v97;
            goto LABEL_268;
          case 8:
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_274;
              }

              v117 = *(a2 + 1);
              v118 = *(a2 + 2);
              while (v117 < v118 && (*(a2 + 24) & 1) == 0)
              {
                v120 = *(this + 14);
                v119 = *(this + 15);
                if (v120 >= v119)
                {
                  v122 = *(this + 13);
                  v123 = v120 - v122;
                  v124 = (v120 - v122) >> 2;
                  v125 = v124 + 1;
                  if ((v124 + 1) >> 62)
                  {
                    goto LABEL_275;
                  }

                  v126 = v119 - v122;
                  if (v126 >> 1 > v125)
                  {
                    v125 = v126 >> 1;
                  }

                  if (v126 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v127 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v127 = v125;
                  }

                  if (v127)
                  {
                    sub_10002290C(this + 104, v127);
                  }

                  v128 = (v120 - v122) >> 2;
                  v129 = (4 * v124);
                  v130 = (4 * v124 - 4 * v128);
                  *v129 = 0;
                  v121 = v129 + 1;
                  memcpy(v130, v122, v123);
                  v131 = *(this + 13);
                  *(this + 13) = v130;
                  *(this + 14) = v121;
                  *(this + 15) = 0;
                  if (v131)
                  {
                    operator delete(v131);
                  }
                }

                else
                {
                  *v120 = 0;
                  v121 = v120 + 4;
                }

                *(this + 14) = v121;
                v132 = *(a2 + 1);
                if (v132 > 0xFFFFFFFFFFFFFFFBLL || v132 + 4 > *(a2 + 2))
                {
                  goto LABEL_160;
                }

                *(v121 - 1) = *(*a2 + v132);
                v118 = *(a2 + 2);
                v117 = *(a2 + 1) + 4;
                *(a2 + 1) = v117;
              }

              goto LABEL_161;
            }

            v161 = *(this + 14);
            v160 = *(this + 15);
            if (v161 >= v160)
            {
              v186 = *(this + 13);
              v187 = v161 - v186;
              v188 = (v161 - v186) >> 2;
              v189 = v188 + 1;
              if ((v188 + 1) >> 62)
              {
LABEL_275:
                sub_10000CD24();
              }

              v190 = v160 - v186;
              if (v190 >> 1 > v189)
              {
                v189 = v190 >> 1;
              }

              if (v190 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v191 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v191 = v189;
              }

              if (v191)
              {
                sub_10002290C(this + 104, v191);
              }

              v208 = (v161 - v186) >> 2;
              v209 = (4 * v188);
              v210 = (4 * v188 - 4 * v208);
              *v209 = 0;
              v135 = v209 + 1;
              memcpy(v210, v186, v187);
              v211 = *(this + 13);
              *(this + 13) = v210;
              *(this + 14) = v135;
              *(this + 15) = 0;
              if (v211)
              {
                operator delete(v211);
              }
            }

            else
            {
              *v161 = 0;
              v135 = v161 + 4;
            }

            *(this + 14) = v135;
            goto LABEL_263;
          case 9:
            *(this + 152) |= 4u;
            v25 = *(a2 + 1);
            v24 = *(a2 + 2);
            v26 = *a2;
            if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
            {
              v152 = 0;
              v153 = 0;
              v29 = 0;
              v17 = v24 >= v25;
              v154 = v24 - v25;
              if (!v17)
              {
                v154 = 0;
              }

              v155 = (v26 + v25);
              v156 = v25 + 1;
              while (1)
              {
                if (!v154)
                {
                  LODWORD(v29) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_247;
                }

                v157 = *v155;
                *(a2 + 1) = v156;
                v29 |= (v157 & 0x7F) << v152;
                if ((v157 & 0x80) == 0)
                {
                  break;
                }

                v152 += 7;
                --v154;
                ++v155;
                ++v156;
                v14 = v153++ > 8;
                if (v14)
                {
LABEL_191:
                  LODWORD(v29) = 0;
                  goto LABEL_247;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v29) = 0;
              }
            }

            else
            {
              v27 = 0;
              v28 = 0;
              v29 = 0;
              v30 = (v26 + v25);
              v31 = v25 + 1;
              while (1)
              {
                *(a2 + 1) = v31;
                v32 = *v30++;
                v29 |= (v32 & 0x7F) << v27;
                if ((v32 & 0x80) == 0)
                {
                  break;
                }

                v27 += 7;
                ++v31;
                v14 = v28++ > 8;
                if (v14)
                {
                  goto LABEL_191;
                }
              }
            }

LABEL_247:
            *(this + 36) = v29;
            goto LABEL_268;
        }
      }

      if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
      {
LABEL_274:
        v213 = 0;
        return v213 & 1;
      }

LABEL_268:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

  v213 = v4 ^ 1;
  return v213 & 1;
}

uint64_t CMMsl::AuxiliaryDeviceMotion::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if ((*(this + 152) & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 136), 1u);
  }

  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6, 2u);
  }

  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9, 3u);
  }

  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    this = PB::Writer::write(a2, v12, 4u);
  }

  v13 = *(v3 + 8);
  v14 = *(v3 + 16);
  while (v13 != v14)
  {
    v15 = *v13++;
    this = PB::Writer::write(a2, v15, 5u);
  }

  v16 = *(v3 + 152);
  if ((v16 & 8) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(v3 + 148), 6u);
    v16 = *(v3 + 152);
  }

  if (v16)
  {
    this = PB::Writer::writeVarInt(a2, *(v3 + 128), 7u);
  }

  v17 = *(v3 + 104);
  v18 = *(v3 + 112);
  while (v17 != v18)
  {
    v19 = *v17++;
    this = PB::Writer::write(a2, v19, 8u);
  }

  if ((*(v3 + 152) & 4) != 0)
  {
    v20 = *(v3 + 144);

    return PB::Writer::writeVarInt(a2, v20, 9u);
  }

  return this;
}

uint64_t CMMsl::AuxiliaryDeviceMotion::hash_value(CMMsl::AuxiliaryDeviceMotion *this)
{
  if ((*(this + 152) & 2) != 0)
  {
    if (*(this + 17) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 17);
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = PBHashBytes();
  v4 = PBHashBytes();
  v5 = PBHashBytes();
  v6 = PBHashBytes();
  if ((*(this + 152) & 8) != 0)
  {
    v7 = *(this + 37);
    if (*(this + 152))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0;
    if (*(this + 152))
    {
LABEL_8:
      v8 = *(this + 16);
      goto LABEL_11;
    }
  }

  v8 = 0;
LABEL_11:
  v9 = PBHashBytes();
  if ((*(this + 152) & 4) != 0)
  {
    v10 = *(this + 36);
  }

  else
  {
    v10 = 0;
  }

  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

uint64_t CMMsl::AveragedALSData::AveragedALSData(uint64_t this)
{
  *this = off_10041D008;
  *(this + 20) = 0;
  return this;
}

{
  *this = off_10041D008;
  *(this + 20) = 0;
  return this;
}

void CMMsl::AveragedALSData::~AveragedALSData(CMMsl::AveragedALSData *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::AveragedALSData::AveragedALSData(CMMsl::AveragedALSData *this, const CMMsl::AveragedALSData *a2)
{
  *this = off_10041D008;
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

uint64_t CMMsl::AveragedALSData::operator=(uint64_t a1, const CMMsl::AveragedALSData *a2)
{
  if (a1 != a2)
  {
    CMMsl::AveragedALSData::AveragedALSData(v6, a2);
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

float CMMsl::swap(CMMsl *this, CMMsl::AveragedALSData *a2, CMMsl::AveragedALSData *a3)
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

float CMMsl::AveragedALSData::AveragedALSData(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D008;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = off_10041D008;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::AveragedALSData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = off_10041D008;
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

uint64_t CMMsl::AveragedALSData::formatText(CMMsl::AveragedALSData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "alsTrustedLux", *(this + 4));
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "startTime", *(this + 1));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::AveragedALSData::readFrom(CMMsl::AveragedALSData *this, PB::Reader *a2)
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

uint64_t CMMsl::AveragedALSData::writeTo(uint64_t this, PB::Writer *a2)
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

BOOL CMMsl::AveragedALSData::operator==(uint64_t a1, uint64_t a2)
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

uint64_t CMMsl::AveragedALSData::hash_value(CMMsl::AveragedALSData *this)
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

uint64_t CMMsl::BTConnection::BTConnection(uint64_t this)
{
  *this = off_10041D040;
  *(this + 28) = 0;
  return this;
}

{
  *this = off_10041D040;
  *(this + 28) = 0;
  return this;
}

void CMMsl::BTConnection::~BTConnection(CMMsl::BTConnection *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::BTConnection::BTConnection(uint64_t this, const CMMsl::BTConnection *a2)
{
  *this = off_10041D040;
  *(this + 28) = 0;
  v2 = *(a2 + 28);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 2);
    v3 = 2;
    *(this + 28) = 2;
    *(this + 16) = v4;
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
    v5 = *(a2 + 1);
    v3 |= 1u;
    *(this + 28) = v3;
    *(this + 8) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 24);
    *(this + 28) = v3 | 4;
    *(this + 24) = v6;
  }

  return this;
}

uint64_t CMMsl::BTConnection::operator=(uint64_t a1, const CMMsl::BTConnection *a2)
{
  if (a1 != a2)
  {
    CMMsl::BTConnection::BTConnection(&v6, a2);
    v3 = *(a1 + 28);
    *(a1 + 28) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOBYTE(v3) = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    PB::Base::~Base(&v6);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::BTConnection *a2, CMMsl::BTConnection *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  LOBYTE(v3) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  return result;
}

double CMMsl::BTConnection::BTConnection(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D040;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = *(a2 + 24);
  return result;
}

{
  *a1 = off_10041D040;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = *(a2 + 24);
  return result;
}

uint64_t CMMsl::BTConnection::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = off_10041D040;
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 24);
    v11 = *(a1 + 28);
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    *(a1 + 28) = v3;
    *(a1 + 8) = v6;
    v9 = v5;
    LOBYTE(v3) = *(a1 + 24);
    *(a1 + 24) = v4;
    v10 = v3;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::BTConnection::formatText(CMMsl::BTConnection *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "fConnected", *(this + 24));
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

  PB::TextFormatter::format(a2, "fEndTime", *(this + 1));
  if ((*(this + 28) & 2) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "fStartTime", *(this + 2));
  }

LABEL_5:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BTConnection::readFrom(CMMsl::BTConnection *this, PB::Reader *a2)
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
        *(this + 28) |= 4u;
        v2 = *(a2 + 1);
        if (v2 >= *(a2 + 2))
        {
          v24 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v23 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v24 = v23 != 0;
        }

        *(this + 24) = v24;
        goto LABEL_39;
      }

      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(this + 28) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_30;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_38:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_39;
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v25 = 0;
        return v25 & 1;
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

    *(this + 28) |= 1u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
    {
LABEL_30:
      *(a2 + 24) = 1;
      goto LABEL_39;
    }

    *(this + 1) = *(*a2 + v2);
    goto LABEL_38;
  }

LABEL_43:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t CMMsl::BTConnection::writeTo(uint64_t this, PB::Writer *a2)
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

BOOL CMMsl::BTConnection::operator==(uint64_t a1, uint64_t a2)
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

uint64_t CMMsl::BTConnection::hash_value(CMMsl::BTConnection *this)
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

LABEL_11:
      v3 = 0;
      return *&v2 ^ *&v1 ^ v3;
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
    goto LABEL_11;
  }

LABEL_6:
  v3 = *(this + 24);
  return *&v2 ^ *&v1 ^ v3;
}

uint64_t CMMsl::BacklightState::BacklightState(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_10041D078;
  return this;
}

{
  *(this + 28) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_10041D078;
  return this;
}

void CMMsl::BacklightState::~BacklightState(CMMsl::BacklightState *this)
{
  *this = off_10041D078;
  v4 = *(this + 2);
  v2 = (this + 16);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100011018(v2, v3);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    sub_100011018(this + 8, v5);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::BacklightState::~BacklightState(this);

  operator delete();
}

CMMsl::BacklightState *CMMsl::BacklightState::BacklightState(CMMsl::BacklightState *this, const CMMsl::BacklightState *a2)
{
  *(this + 1) = 0;
  *this = off_10041D078;
  *(this + 2) = 0;
  *(this + 7) = 0;
  if (*(a2 + 28))
  {
    v2 = *(a2 + 6);
    *(this + 28) = 1;
    *(this + 6) = v2;
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::BacklightState::operator=(uint64_t a1, const CMMsl::BacklightState *a2)
{
  if (a1 != a2)
  {
    CMMsl::BacklightState::BacklightState(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    CMMsl::BacklightState::~BacklightState(&v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::BacklightState *a2, CMMsl::BacklightState *a3)
{
  v3 = *(this + 28);
  *(this + 28) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v6;
  return this;
}

uint64_t CMMsl::BacklightState::BacklightState(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D078;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 8);
  *(a2 + 8) = 0;
  v7 = *v4;
  *v4 = v6;
  if (v7)
  {
    sub_100011018(v4, v7);
  }

  v8 = *(a2 + 16);
  *(a2 + 16) = 0;
  v9 = *v5;
  *v5 = v8;
  if (v9)
  {
    sub_100011018(a1 + 16, v9);
  }

  return a1;
}

uint64_t CMMsl::BacklightState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::BacklightState::BacklightState(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    CMMsl::BacklightState::~BacklightState(&v6);
  }

  return a1;
}

uint64_t CMMsl::BacklightState::formatText(CMMsl::BacklightState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 28))
  {
    PB::TextFormatter::format(a2, "backlightState", *(this + 6));
  }

  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BacklightState::readFrom(CMMsl::BacklightState *this, PB::Reader *a2)
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
            goto LABEL_52;
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
        operator new();
      }

      if (v22 == 2)
      {
        operator new();
      }

      if (v22 == 1)
      {
        *(this + 28) |= 1u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v32 = 0;
          v33 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v34 = v23 - v24;
          if (!v17)
          {
            v34 = 0;
          }

          v35 = (v25 + v24);
          v36 = v24 + 1;
          while (1)
          {
            if (!v34)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_47;
            }

            v37 = *v35;
            *(a2 + 1) = v36;
            v28 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            --v34;
            ++v35;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
LABEL_43:
              LODWORD(v28) = 0;
              goto LABEL_47;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v28) = 0;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            *(a2 + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              goto LABEL_43;
            }
          }
        }

LABEL_47:
        *(this + 6) = v28;
      }

      else if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v39 = 0;
        return v39 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_52:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t CMMsl::BacklightState::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = this;
  if (*(this + 28))
  {
    this = PB::Writer::writeVarInt(a2, *(this + 24), 1u);
  }

  if (*(v2 + 8))
  {
    this = PB::Writer::write();
  }

  if (*(v2 + 16))
  {

    return PB::Writer::write();
  }

  return this;
}

BOOL CMMsl::BacklightState::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *(v4 + 23);
    if (v6 >= 0)
    {
      v7 = *(v4 + 23);
    }

    else
    {
      v7 = *(v4 + 8);
    }

    v8 = *(v5 + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v5 + 8);
    }

    if (v7 != v8)
    {
      return 0;
    }

    v10 = v6 >= 0 ? *(a1 + 8) : *v4;
    v11 = v9 >= 0 ? *(a2 + 8) : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v13 = *(a1 + 16);
  v14 = *(a2 + 16);
  result = v14 == 0;
  if (v13)
  {
    if (v14)
    {
      v15 = *(v13 + 23);
      if (v15 >= 0)
      {
        v16 = *(v13 + 23);
      }

      else
      {
        v16 = *(v13 + 8);
      }

      v17 = *(v14 + 23);
      v18 = v17;
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(v14 + 8);
      }

      if (v16 == v17)
      {
        v19 = v15 >= 0 ? *(a1 + 16) : *v13;
        v20 = v18 >= 0 ? *(a2 + 16) : *v14;
        if (!memcmp(v19, v20, v16))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t CMMsl::BacklightState::hash_value(CMMsl::BacklightState *this)
{
  if (*(this + 28))
  {
    v2 = *(this + 6);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 1);
  if (v3)
  {
    v4 = sub_100011074(&v8, v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 2);
  if (v5)
  {
    v6 = sub_100011074(&v9, v5);
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v2 ^ v6;
}

uint64_t CMMsl::BasebandCompassCoex::BasebandCompassCoex(uint64_t this)
{
  *this = off_10041D0B0;
  *(this + 28) = 0;
  return this;
}

{
  *this = off_10041D0B0;
  *(this + 28) = 0;
  return this;
}

void CMMsl::BasebandCompassCoex::~BasebandCompassCoex(CMMsl::BasebandCompassCoex *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::BasebandCompassCoex::BasebandCompassCoex(uint64_t this, const CMMsl::BasebandCompassCoex *a2)
{
  *this = off_10041D0B0;
  *(this + 28) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 5);
    v3 |= 4u;
    *(this + 28) = v3;
    *(this + 20) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return this;
    }

LABEL_10:
    v7 = *(a2 + 4);
    *(this + 28) = v3 | 2;
    *(this + 16) = v7;
    return this;
  }

  v6 = *(a2 + 24);
  v3 |= 8u;
  *(this + 28) = v3;
  *(this + 24) = v6;
  if ((*(a2 + 28) & 2) != 0)
  {
    goto LABEL_10;
  }

  return this;
}

uint64_t CMMsl::BasebandCompassCoex::operator=(uint64_t a1, const CMMsl::BasebandCompassCoex *a2)
{
  if (a1 != a2)
  {
    CMMsl::BasebandCompassCoex::BasebandCompassCoex(&v9, a2);
    v3 = *(a1 + 28);
    *(a1 + 28) = v14;
    v14 = v3;
    LOBYTE(v3) = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v3;
    v5 = *(a1 + 16);
    v4 = *(a1 + 20);
    v6 = v12;
    *(a1 + 16) = v11;
    *(a1 + 20) = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v7;
    v11 = v5;
    v12 = v4;
    PB::Base::~Base(&v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::BasebandCompassCoex *a2, CMMsl::BasebandCompassCoex *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  LOBYTE(v5) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  return result;
}

double CMMsl::BasebandCompassCoex::BasebandCompassCoex(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D0B0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = off_10041D0B0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::BasebandCompassCoex::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v13[0] = off_10041D0B0;
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 24);
    v7 = *(a2 + 16);
    v6 = *(a2 + 20);
    v8 = *(a1 + 28);
    *(a1 + 28) = v3;
    v17 = v8;
    v9 = *(a1 + 8);
    *(a1 + 8) = v4;
    v13[1] = v9;
    LOBYTE(v3) = *(a1 + 24);
    *(a1 + 24) = v5;
    v16 = v3;
    v11 = *(a1 + 16);
    v10 = *(a1 + 20);
    *(a1 + 16) = v7;
    *(a1 + 20) = v6;
    v14 = v11;
    v15 = v10;
    PB::Base::~Base(v13);
  }

  return a1;
}

uint64_t CMMsl::BasebandCompassCoex::formatText(CMMsl::BasebandCompassCoex *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "inCoex", *(this + 24));
    v5 = *(this + 28);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "reserved", *(this + 4));
  v5 = *(this + 28);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "subType", *(this + 5));
  if (*(this + 28))
  {
LABEL_5:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_6:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BasebandCompassCoex::readFrom(CMMsl::BasebandCompassCoex *this, PB::Reader *a2)
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
            goto LABEL_81;
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
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(this + 28) |= 8u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v40 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v39 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v40 = v39 != 0;
          }

          *(this + 24) = v40;
          goto LABEL_77;
        }

        if (v22 == 4)
        {
          *(this + 28) |= 2u;
          v31 = *(a2 + 1);
          v2 = *(a2 + 2);
          v32 = *a2;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v48 = 0;
            v49 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(a2 + 1);
            }

            v50 = v2 - v31;
            v51 = (v32 + v31);
            v52 = v31 + 1;
            while (1)
            {
              if (!v50)
              {
                LODWORD(v35) = 0;
                *(a2 + 24) = 1;
                goto LABEL_76;
              }

              v53 = v52;
              v54 = *v51;
              *(a2 + 1) = v53;
              v35 |= (v54 & 0x7F) << v48;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              --v50;
              ++v51;
              v52 = v53 + 1;
              v14 = v49++ > 8;
              if (v14)
              {
                LODWORD(v35) = 0;
                goto LABEL_75;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_75:
            v2 = v53;
          }

          else
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = (v32 + v31);
            v37 = v31 + 1;
            while (1)
            {
              v2 = v37;
              *(a2 + 1) = v37;
              v38 = *v36++;
              v35 |= (v38 & 0x7F) << v33;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              ++v37;
              v14 = v34++ > 8;
              if (v14)
              {
                LODWORD(v35) = 0;
                break;
              }
            }
          }

LABEL_76:
          *(this + 4) = v35;
          goto LABEL_77;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 28) |= 1u;
          v2 = *(a2 + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
          {
            *(this + 1) = *(*a2 + v2);
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
          }

          else
          {
            *(a2 + 24) = 1;
          }

          goto LABEL_77;
        }

        if (v22 == 2)
        {
          *(this + 28) |= 4u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v41 = 0;
            v42 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v43 = v2 - v23;
            v44 = (v24 + v23);
            v45 = v23 + 1;
            while (1)
            {
              if (!v43)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_72;
              }

              v46 = v45;
              v47 = *v44;
              *(a2 + 1) = v46;
              v27 |= (v47 & 0x7F) << v41;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              --v43;
              ++v44;
              v45 = v46 + 1;
              v14 = v42++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_71;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_71:
            v2 = v46;
          }

          else
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = (v24 + v23);
            v29 = v23 + 1;
            while (1)
            {
              v2 = v29;
              *(a2 + 1) = v29;
              v30 = *v28++;
              v27 |= (v30 & 0x7F) << v25;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              ++v29;
              v14 = v26++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                break;
              }
            }
          }

LABEL_72:
          *(this + 5) = v27;
          goto LABEL_77;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v55 = 0;
        return v55 & 1;
      }

      v2 = *(a2 + 1);
LABEL_77:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_81:
  v55 = v4 ^ 1;
  return v55 & 1;
}

uint64_t CMMsl::BasebandCompassCoex::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 28);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 24), 3u);
      if ((*(v3 + 28) & 2) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 20), 2u);
  v4 = *(v3 + 28);
  if ((v4 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2, v5, 4u);
}

BOOL CMMsl::BasebandCompassCoex::operator==(uint64_t a1, uint64_t a2)
{
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

  if ((*(a1 + 28) & 4) != 0)
  {
    if ((*(a2 + 28) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 28) & 8) != 0)
  {
    if ((*(a2 + 28) & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 8) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 28) & 2) == 0;
  if ((*(a1 + 28) & 2) != 0)
  {
    return (*(a2 + 28) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::BasebandCompassCoex::hash_value(CMMsl::BasebandCompassCoex *this)
{
  if (*(this + 28))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 28) & 4) != 0)
    {
LABEL_3:
      v2 = *(this + 5);
      if ((*(this + 28) & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      v3 = 0;
      if ((*(this + 28) & 2) != 0)
      {
        goto LABEL_5;
      }

LABEL_11:
      v4 = 0;
      return v2 ^ *&v1 ^ v3 ^ v4;
    }
  }

  else
  {
    v1 = 0.0;
    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v3 = *(this + 24);
  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v4 = *(this + 4);
  return v2 ^ *&v1 ^ v3 ^ v4;
}

uint64_t CMMsl::BasebandCompassCoexConstraints::BasebandCompassCoexConstraints(uint64_t this)
{
  *this = off_10041D0E8;
  *(this + 48) = 0;
  return this;
}

{
  *this = off_10041D0E8;
  *(this + 48) = 0;
  return this;
}

void CMMsl::BasebandCompassCoexConstraints::~BasebandCompassCoexConstraints(CMMsl::BasebandCompassCoexConstraints *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::BasebandCompassCoexConstraints::BasebandCompassCoexConstraints(uint64_t this, const CMMsl::BasebandCompassCoexConstraints *a2)
{
  *this = off_10041D0E8;
  *(this + 48) = 0;
  v2 = *(a2 + 24);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 2);
    v3 = 2;
    *(this + 48) = 2;
    *(this + 16) = v4;
    v2 = *(a2 + 24);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (v2)
  {
LABEL_5:
    v5 = *(a2 + 1);
    v3 |= 1u;
    *(this + 48) = v3;
    *(this + 8) = v5;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 0x40) != 0)
  {
    v6 = *(a2 + 10);
    v3 |= 0x40u;
    *(this + 48) = v3;
    *(this + 40) = v6;
    v2 = *(a2 + 24);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 7);
  v3 |= 8u;
  *(this + 48) = v3;
  *(this + 28) = v7;
  v2 = *(a2 + 24);
  if ((v2 & 0x400) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(a2 + 47);
  v3 |= 0x400u;
  *(this + 48) = v3;
  *(this + 47) = v8;
  v2 = *(a2 + 24);
  if ((v2 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(a2 + 45);
  v3 |= 0x100u;
  *(this + 48) = v3;
  *(this + 45) = v9;
  v2 = *(a2 + 24);
  if ((v2 & 0x80) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = *(a2 + 44);
  v3 |= 0x80u;
  *(this + 48) = v3;
  *(this + 44) = v10;
  v2 = *(a2 + 24);
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(a2 + 9);
  v3 |= 0x20u;
  *(this + 48) = v3;
  *(this + 36) = v11;
  v2 = *(a2 + 24);
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = *(a2 + 8);
  v3 |= 0x10u;
  *(this + 48) = v3;
  *(this + 32) = v12;
  v2 = *(a2 + 24);
  if ((v2 & 4) == 0)
  {
LABEL_14:
    if ((v2 & 0x200) == 0)
    {
      return this;
    }

LABEL_24:
    v14 = *(a2 + 46);
    *(this + 48) = v3 | 0x200;
    *(this + 46) = v14;
    return this;
  }

LABEL_23:
  v13 = *(a2 + 6);
  v3 |= 4u;
  *(this + 48) = v3;
  *(this + 24) = v13;
  if ((*(a2 + 24) & 0x200) != 0)
  {
    goto LABEL_24;
  }

  return this;
}

CMMsl *CMMsl::BasebandCompassCoexConstraints::operator=(CMMsl *a1, const CMMsl::BasebandCompassCoexConstraints *a2)
{
  if (a1 != a2)
  {
    CMMsl::BasebandCompassCoexConstraints::BasebandCompassCoexConstraints(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::BasebandCompassCoexConstraints *a2, CMMsl::BasebandCompassCoexConstraints *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  LODWORD(v5) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  LODWORD(v5) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v5;
  LOBYTE(v3) = *(this + 47);
  *(this + 47) = *(a2 + 47);
  *(a2 + 47) = v3;
  LOBYTE(v3) = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v3;
  LOBYTE(v3) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v3;
  v6 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v6;
  LODWORD(v5) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  LOBYTE(v6) = *(this + 46);
  *(this + 46) = *(a2 + 46);
  *(a2 + 46) = v6;
  return result;
}

float CMMsl::BasebandCompassCoexConstraints::BasebandCompassCoexConstraints(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D0E8;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 46) = *(a2 + 46);
  return result;
}

CMMsl *CMMsl::BasebandCompassCoexConstraints::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::BasebandCompassCoexConstraints::BasebandCompassCoexConstraints(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::BasebandCompassCoexConstraints::formatText(CMMsl::BasebandCompassCoexConstraints *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if ((v5 & 0x80) != 0)
  {
    PB::TextFormatter::format(a2, "activeCoex", *(this + 44));
    v5 = *(this + 24);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "avgTemperature", *(this + 6));
  v5 = *(this + 24);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "blackout", *(this + 45));
  v5 = *(this + 24);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "gradient", *(this + 7));
  v5 = *(this + 24);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "instTemperature", *(this + 8));
  v5 = *(this + 24);
  if ((v5 & 0x200) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "isSettle", *(this + 46));
  v5 = *(this + 24);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "rapidGradientChange", *(this + 47));
  v5 = *(this + 24);
  if ((v5 & 1) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "startTime", *(this + 1));
  v5 = *(this + 24);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "state", *(this + 9));
  v5 = *(this + 24);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "temperature", *(this + 10));
  if ((*(this + 24) & 2) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

LABEL_13:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BasebandCompassCoexConstraints::readFrom(CMMsl::BasebandCompassCoexConstraints *this, PB::Reader *a2)
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
            goto LABEL_100;
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
      if ((v10 >> 3) <= 5)
      {
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(this + 24) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
LABEL_69:
              *(a2 + 24) = 1;
              goto LABEL_96;
            }

            *(this + 2) = *(*a2 + v2);
LABEL_53:
            v2 = *(a2 + 1) + 8;
LABEL_90:
            *(a2 + 1) = v2;
            goto LABEL_96;
          }

          if (v22 == 2)
          {
            *(this + 24) |= 1u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_69;
            }

            *(this + 1) = *(*a2 + v2);
            goto LABEL_53;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(this + 24) |= 0x40u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
                goto LABEL_69;
              }

              *(this + 10) = *(*a2 + v2);
              goto LABEL_89;
            case 4:
              *(this + 24) |= 8u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
                goto LABEL_69;
              }

              *(this + 7) = *(*a2 + v2);
              goto LABEL_89;
            case 5:
              *(this + 24) |= 0x400u;
              v2 = *(a2 + 1);
              if (v2 >= *(a2 + 2))
              {
                v32 = 0;
                *(a2 + 24) = 1;
              }

              else
              {
                v31 = *(*a2 + v2++);
                *(a2 + 1) = v2;
                v32 = v31 != 0;
              }

              *(this + 47) = v32;
              goto LABEL_96;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(this + 24) |= 0x10u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_69;
            }

            *(this + 8) = *(*a2 + v2);
            goto LABEL_89;
          case 0xA:
            *(this + 24) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_69;
            }

            *(this + 6) = *(*a2 + v2);
LABEL_89:
            v2 = *(a2 + 1) + 4;
            goto LABEL_90;
          case 0xB:
            *(this + 24) |= 0x200u;
            v2 = *(a2 + 1);
            if (v2 >= *(a2 + 2))
            {
              v34 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v33 = *(*a2 + v2++);
              *(a2 + 1) = v2;
              v34 = v33 != 0;
            }

            *(this + 46) = v34;
            goto LABEL_96;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(this + 24) |= 0x100u;
            v2 = *(a2 + 1);
            if (v2 >= *(a2 + 2))
            {
              v38 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v37 = *(*a2 + v2++);
              *(a2 + 1) = v2;
              v38 = v37 != 0;
            }

            *(this + 45) = v38;
            goto LABEL_96;
          case 7:
            *(this + 24) |= 0x80u;
            v2 = *(a2 + 1);
            if (v2 >= *(a2 + 2))
            {
              v36 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v35 = *(*a2 + v2++);
              *(a2 + 1) = v2;
              v36 = v35 != 0;
            }

            *(this + 44) = v36;
            goto LABEL_96;
          case 8:
            *(this + 24) |= 0x20u;
            v23 = *(a2 + 1);
            v2 = *(a2 + 2);
            v24 = *a2;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v39 = 0;
              v40 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(a2 + 1);
              }

              v41 = v2 - v23;
              v42 = (v24 + v23);
              v43 = v23 + 1;
              while (1)
              {
                if (!v41)
                {
                  LODWORD(v27) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_95;
                }

                v44 = v43;
                v45 = *v42;
                *(a2 + 1) = v44;
                v27 |= (v45 & 0x7F) << v39;
                if ((v45 & 0x80) == 0)
                {
                  break;
                }

                v39 += 7;
                --v41;
                ++v42;
                v43 = v44 + 1;
                v14 = v40++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_94;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_94:
              v2 = v44;
            }

            else
            {
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v28 = (v24 + v23);
              v29 = v23 + 1;
              while (1)
              {
                v2 = v29;
                *(a2 + 1) = v29;
                v30 = *v28++;
                v27 |= (v30 & 0x7F) << v25;
                if ((v30 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                ++v29;
                v14 = v26++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  break;
                }
              }
            }

LABEL_95:
            *(this + 9) = v27;
            goto LABEL_96;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v46 = 0;
        return v46 & 1;
      }

      v2 = *(a2 + 1);
LABEL_96:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_100:
  v46 = v4 ^ 1;
  return v46 & 1;
}

uint64_t CMMsl::BasebandCompassCoexConstraints::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 48);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16), 1u);
    v4 = *(v3 + 48);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 8), 2u);
  v4 = *(v3 + 48);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 40), 3u);
  v4 = *(v3 + 48);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 28), 4u);
  v4 = *(v3 + 48);
  if ((v4 & 0x400) == 0)
  {
LABEL_6:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 47), 5u);
  v4 = *(v3 + 48);
  if ((v4 & 0x100) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 45), 6u);
  v4 = *(v3 + 48);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 44), 7u);
  v4 = *(v3 + 48);
  if ((v4 & 0x20) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::writeVarInt(a2, *(v3 + 36), 8u);
  v4 = *(v3 + 48);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = PB::Writer::write(a2, *(v3 + 24), 0xAu);
    if ((*(v3 + 48) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 32), 9u);
  v4 = *(v3 + 48);
  if ((v4 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 0x200) == 0)
  {
    return this;
  }

LABEL_23:
  v5 = *(v3 + 46);

  return PB::Writer::write(a2, v5, 0xBu);
}

BOOL CMMsl::BasebandCompassCoexConstraints::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
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

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 48) & 0x400) != 0)
  {
    if ((*(a2 + 48) & 0x400) == 0 || *(a1 + 47) != *(a2 + 47))
    {
      return 0;
    }
  }

  else if ((*(a2 + 48) & 0x400) != 0)
  {
    return 0;
  }

  if ((*(a1 + 48) & 0x100) != 0)
  {
    if ((*(a2 + 48) & 0x100) == 0 || *(a1 + 45) != *(a2 + 45))
    {
      return 0;
    }
  }

  else if ((*(a2 + 48) & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x200) == 0;
  if ((*(a1 + 48) & 0x200) != 0)
  {
    return (*(a2 + 48) & 0x200) != 0 && *(a1 + 46) == *(a2 + 46);
  }

  return v4;
}

uint64_t CMMsl::BasebandCompassCoexConstraints::hash_value(CMMsl::BasebandCompassCoexConstraints *this)
{
  v1 = *(this + 24);
  if ((v1 & 2) == 0)
  {
    v2 = 0.0;
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_26:
    v3 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_6;
    }

LABEL_27:
    v5 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_28:
    v7 = 0;
    if ((*(this + 24) & 0x400) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

  v2 = *(this + 2);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_3:
  v3 = *(this + 1);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_27;
  }

LABEL_6:
  v4 = *(this + 10);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_28;
  }

LABEL_9:
  v6 = *(this + 7);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((*(this + 24) & 0x400) != 0)
  {
LABEL_12:
    v8 = *(this + 47);
    if ((*(this + 24) & 0x100) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v8 = 0;
  if ((*(this + 24) & 0x100) != 0)
  {
LABEL_13:
    v9 = *(this + 45);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v9 = 0;
  if ((v1 & 0x80) != 0)
  {
LABEL_14:
    v10 = *(this + 44);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  v10 = 0;
  if ((v1 & 0x20) != 0)
  {
LABEL_15:
    v11 = *(this + 9);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_16;
    }

LABEL_33:
    v13 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_32:
  v11 = 0;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_33;
  }

LABEL_16:
  v12 = *(this + 8);
  v13 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v13 = 0;
  }

  if ((v1 & 4) != 0)
  {
LABEL_19:
    v14 = *(this + 6);
    v15 = LODWORD(v14);
    if (v14 == 0.0)
    {
      v15 = 0;
    }

    if ((*(this + 24) & 0x200) != 0)
    {
      goto LABEL_22;
    }

LABEL_35:
    v16 = 0;
    return *&v3 ^ *&v2 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v15 ^ v16;
  }

LABEL_34:
  v15 = 0;
  if ((*(this + 24) & 0x200) == 0)
  {
    goto LABEL_35;
  }

LABEL_22:
  v16 = *(this + 46);
  return *&v3 ^ *&v2 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v15 ^ v16;
}

uint64_t CMMsl::BasebandSpeed::BasebandSpeed(uint64_t this)
{
  *this = off_10041D120;
  *(this + 32) = 0;
  return this;
}

{
  *this = off_10041D120;
  *(this + 32) = 0;
  return this;
}

void CMMsl::BasebandSpeed::~BasebandSpeed(CMMsl::BasebandSpeed *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::BasebandSpeed::BasebandSpeed(uint64_t this, const CMMsl::BasebandSpeed *a2)
{
  *this = off_10041D120;
  *(this + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 0x10) != 0)
  {
LABEL_5:
    v5 = *(a2 + 7);
    v3 |= 0x10u;
    *(this + 32) = v3;
    *(this + 28) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 6);
    v3 |= 8u;
    *(this + 32) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        return this;
      }

LABEL_12:
      v8 = *(a2 + 4);
      *(this + 32) = v3 | 2;
      *(this + 16) = v8;
      return this;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 5);
  v3 |= 4u;
  *(this + 32) = v3;
  *(this + 20) = v7;
  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_12;
  }

  return this;
}

uint64_t CMMsl::BasebandSpeed::operator=(uint64_t a1, const CMMsl::BasebandSpeed *a2)
{
  if (a1 != a2)
  {
    CMMsl::BasebandSpeed::BasebandSpeed(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::BasebandSpeed *a2, CMMsl::BasebandSpeed *a3)
{
  v3 = *(this + 32);
  *(this + 32) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 28);
  *(this + 28) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  return this;
}

uint64_t CMMsl::BasebandSpeed::BasebandSpeed(uint64_t result, uint64_t a2)
{
  *result = off_10041D120;
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 28) = *(a2 + 28);
  *(result + 24) = *(a2 + 24);
  *(result + 20) = *(a2 + 20);
  *(result + 16) = *(a2 + 16);
  return result;
}

{
  *result = off_10041D120;
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 28) = *(a2 + 28);
  *(result + 24) = *(a2 + 24);
  *(result + 20) = *(a2 + 20);
  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::BasebandSpeed::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v4 = *(a2 + 8);
    v11 = *(a1 + 32);
    v5 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9[0] = off_10041D120;
    v9[1] = v5;
    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    *(a1 + 32) = v3;
    *(a1 + 16) = v7;
    v10 = v6;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::BasebandSpeed::formatText(CMMsl::BasebandSpeed *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "reserved", *(this + 4));
    v5 = *(this + 32);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "scaledValue", *(this + 5));
  v5 = *(this + 32);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(a2, "speedRange", *(this + 6));
  v5 = *(this + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "speedThreshold", *(this + 7));
  if (*(this + 32))
  {
LABEL_6:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_7:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BasebandSpeed::readFrom(CMMsl::BasebandSpeed *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v2 >= v3;
        v19 = v2 - v3;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v3);
        v21 = v3 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_140;
          }

          v22 = *v20;
          *(a2 + 1) = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        if (v4)
        {
          v10 = 0;
        }

        else
        {
          v10 = v17;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
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

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        if (v23 == 1)
        {
          *(this + 32) |= 1u;
          v56 = *(a2 + 1);
          v2 = *(a2 + 2);
          v57 = *a2;
          if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v2)
          {
            v78 = 0;
            v79 = 0;
            v60 = 0;
            if (v2 <= v56)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v80 = v3 - v56;
            v81 = (v57 + v56);
            v82 = v56 + 1;
            while (1)
            {
              if (!v80)
              {
                v60 = 0;
                *(a2 + 24) = 1;
                goto LABEL_127;
              }

              v83 = v82;
              v84 = *v81;
              *(a2 + 1) = v83;
              v60 |= (v84 & 0x7F) << v78;
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
                v60 = 0;
                goto LABEL_126;
              }
            }

            if (*(a2 + 24))
            {
              v60 = 0;
            }

LABEL_126:
            v3 = v83;
          }

          else
          {
            v58 = 0;
            v59 = 0;
            v60 = 0;
            v61 = (v57 + v56);
            v62 = v56 + 1;
            while (1)
            {
              v3 = v62;
              *(a2 + 1) = v62;
              v63 = *v61++;
              v60 |= (v63 & 0x7F) << v58;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              ++v62;
              v14 = v59++ > 8;
              if (v14)
              {
                v60 = 0;
                break;
              }
            }
          }

LABEL_127:
          *(this + 1) = v60;
          goto LABEL_136;
        }

        if (v23 == 2)
        {
          *(this + 32) |= 0x10u;
          v32 = *(a2 + 1);
          v2 = *(a2 + 2);
          v33 = *a2;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v92 = 0;
            v93 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v94 = v3 - v32;
            v95 = (v33 + v32);
            v96 = v32 + 1;
            while (1)
            {
              if (!v94)
              {
                LODWORD(v36) = 0;
                *(a2 + 24) = 1;
                goto LABEL_135;
              }

              v97 = v96;
              v98 = *v95;
              *(a2 + 1) = v97;
              v36 |= (v98 & 0x7F) << v92;
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
                LODWORD(v36) = 0;
                goto LABEL_134;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v36) = 0;
            }

LABEL_134:
            v3 = v97;
          }

          else
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = (v33 + v32);
            v38 = v32 + 1;
            while (1)
            {
              v3 = v38;
              *(a2 + 1) = v38;
              v39 = *v37++;
              v36 |= (v39 & 0x7F) << v34;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              ++v38;
              v14 = v35++ > 8;
              if (v14)
              {
                LODWORD(v36) = 0;
                break;
              }
            }
          }

LABEL_135:
          *(this + 7) = v36;
          goto LABEL_136;
        }
      }

      else
      {
        switch(v23)
        {
          case 3:
            *(this + 32) |= 8u;
            v40 = *(a2 + 1);
            v2 = *(a2 + 2);
            v41 = *a2;
            if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
            {
              v64 = 0;
              v65 = 0;
              v44 = 0;
              if (v2 <= v40)
              {
                v3 = *(a2 + 1);
              }

              else
              {
                v3 = *(a2 + 2);
              }

              v66 = v3 - v40;
              v67 = (v41 + v40);
              v68 = v40 + 1;
              while (1)
              {
                if (!v66)
                {
                  LODWORD(v44) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_119;
                }

                v69 = v68;
                v70 = *v67;
                *(a2 + 1) = v69;
                v44 |= (v70 & 0x7F) << v64;
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
                  LODWORD(v44) = 0;
                  goto LABEL_118;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v44) = 0;
              }

LABEL_118:
              v3 = v69;
            }

            else
            {
              v42 = 0;
              v43 = 0;
              v44 = 0;
              v45 = (v41 + v40);
              v46 = v40 + 1;
              while (1)
              {
                v3 = v46;
                *(a2 + 1) = v46;
                v47 = *v45++;
                v44 |= (v47 & 0x7F) << v42;
                if ((v47 & 0x80) == 0)
                {
                  break;
                }

                v42 += 7;
                ++v46;
                v14 = v43++ > 8;
                if (v14)
                {
                  LODWORD(v44) = 0;
                  break;
                }
              }
            }

LABEL_119:
            *(this + 6) = v44;
            goto LABEL_136;
          case 4:
            *(this + 32) |= 4u;
            v48 = *(a2 + 1);
            v2 = *(a2 + 2);
            v49 = *a2;
            if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
            {
              v71 = 0;
              v72 = 0;
              v52 = 0;
              if (v2 <= v48)
              {
                v3 = *(a2 + 1);
              }

              else
              {
                v3 = *(a2 + 2);
              }

              v73 = v3 - v48;
              v74 = (v49 + v48);
              v75 = v48 + 1;
              while (1)
              {
                if (!v73)
                {
                  LODWORD(v52) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_123;
                }

                v76 = v75;
                v77 = *v74;
                *(a2 + 1) = v76;
                v52 |= (v77 & 0x7F) << v71;
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
                  LODWORD(v52) = 0;
                  goto LABEL_122;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v52) = 0;
              }

LABEL_122:
              v3 = v76;
            }

            else
            {
              v50 = 0;
              v51 = 0;
              v52 = 0;
              v53 = (v49 + v48);
              v54 = v48 + 1;
              while (1)
              {
                v3 = v54;
                *(a2 + 1) = v54;
                v55 = *v53++;
                v52 |= (v55 & 0x7F) << v50;
                if ((v55 & 0x80) == 0)
                {
                  break;
                }

                v50 += 7;
                ++v54;
                v14 = v51++ > 8;
                if (v14)
                {
                  LODWORD(v52) = 0;
                  break;
                }
              }
            }

LABEL_123:
            *(this + 5) = v52;
            goto LABEL_136;
          case 5:
            *(this + 32) |= 2u;
            v24 = *(a2 + 1);
            v2 = *(a2 + 2);
            v25 = *a2;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
            {
              v85 = 0;
              v86 = 0;
              v28 = 0;
              if (v2 <= v24)
              {
                v3 = *(a2 + 1);
              }

              else
              {
                v3 = *(a2 + 2);
              }

              v87 = v3 - v24;
              v88 = (v25 + v24);
              v89 = v24 + 1;
              while (1)
              {
                if (!v87)
                {
                  LODWORD(v28) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_131;
                }

                v90 = v89;
                v91 = *v88;
                *(a2 + 1) = v90;
                v28 |= (v91 & 0x7F) << v85;
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
                  LODWORD(v28) = 0;
                  goto LABEL_130;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v28) = 0;
              }

LABEL_130:
              v3 = v90;
            }

            else
            {
              v26 = 0;
              v27 = 0;
              v28 = 0;
              v29 = (v25 + v24);
              v30 = v24 + 1;
              while (1)
              {
                v3 = v30;
                *(a2 + 1) = v30;
                v31 = *v29++;
                v28 |= (v31 & 0x7F) << v26;
                if ((v31 & 0x80) == 0)
                {
                  break;
                }

                v26 += 7;
                ++v30;
                v14 = v27++ > 8;
                if (v14)
                {
                  LODWORD(v28) = 0;
                  break;
                }
              }
            }

LABEL_131:
            *(this + 4) = v28;
            goto LABEL_136;
        }
      }

      if (!PB::Reader::skip(a2, v23, v10 & 7, 0))
      {
        v99 = 0;
        return v99 & 1;
      }

      v3 = *(a2 + 1);
      v2 = *(a2 + 2);
LABEL_136:
      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (*(a2 + 24) & 1) == 0);
  }

LABEL_140:
  v99 = v4 ^ 1;
  return v99 & 1;
}

uint64_t CMMsl::BasebandSpeed::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 8), 1u);
    v4 = *(v3 + 32);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 32) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 28), 2u);
  v4 = *(v3 + 32);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = PB::Writer::writeVarInt(a2, *(v3 + 20), 4u);
    if ((*(v3 + 32) & 2) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 3u);
  v4 = *(v3 + 32);
  if ((v4 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_11:
  v5 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2, v5, 5u);
}

BOOL CMMsl::BasebandSpeed::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 0x10) != 0)
  {
    if ((*(a2 + 32) & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 2) == 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a2 + 32) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::BasebandSpeed::hash_value(CMMsl::BasebandSpeed *this)
{
  if (*(this + 32))
  {
    v1 = *(this + 1);
    if ((*(this + 32) & 0x10) != 0)
    {
LABEL_3:
      v2 = *(this + 7);
      if ((*(this + 32) & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 32) & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 32) & 8) != 0)
  {
LABEL_4:
    v3 = *(this + 6);
    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v4 = 0;
    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v5 = 0;
    return v2 ^ v1 ^ v3 ^ v4 ^ v5;
  }

LABEL_9:
  v3 = 0;
  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v4 = *(this + 5);
  if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v5 = *(this + 4);
  return v2 ^ v1 ^ v3 ^ v4 ^ v5;
}

uint64_t CMMsl::BaselineResetCheck::BaselineResetCheck(uint64_t this)
{
  *this = off_10041D158;
  *(this + 28) = 0;
  return this;
}

{
  *this = off_10041D158;
  *(this + 28) = 0;
  return this;
}

void CMMsl::BaselineResetCheck::~BaselineResetCheck(CMMsl::BaselineResetCheck *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::BaselineResetCheck::BaselineResetCheck(CMMsl::BaselineResetCheck *this, const CMMsl::BaselineResetCheck *a2)
{
  *this = off_10041D158;
  *(this + 7) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 0x10) != 0)
  {
LABEL_5:
    v5 = *(a2 + 25);
    v3 |= 0x10u;
    *(this + 28) = v3;
    *(this + 25) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 24);
    v3 |= 8u;
    *(this + 28) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 28);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        return result;
      }

LABEL_12:
      result = *(a2 + 4);
      *(this + 28) = v3 | 2;
      *(this + 4) = result;
      return result;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 5);
  v3 |= 4u;
  *(this + 28) = v3;
  *(this + 5) = result;
  if ((*(a2 + 28) & 2) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t CMMsl::BaselineResetCheck::operator=(uint64_t a1, const CMMsl::BaselineResetCheck *a2)
{
  if (a1 != a2)
  {
    CMMsl::BaselineResetCheck::BaselineResetCheck(&v7, a2);
    v3 = *(a1 + 28);
    *(a1 + 28) = v11;
    v11 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    LOWORD(v4) = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::BaselineResetCheck *a2, CMMsl::BaselineResetCheck *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LOBYTE(v4) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v4;
  LOBYTE(v4) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

float CMMsl::BaselineResetCheck::BaselineResetCheck(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D158;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = off_10041D158;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::BaselineResetCheck::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 24);
    v12 = *(a1 + 28);
    v6 = *(a1 + 8);
    *(a1 + 8) = v4;
    v10[0] = off_10041D158;
    v10[1] = v6;
    LOWORD(v4) = *(a1 + 24);
    *(a1 + 24) = v5;
    v11 = v4;
    v7 = *(a1 + 16);
    v8 = *(a2 + 16);
    *(a1 + 28) = v3;
    *(a1 + 16) = v8;
    v10[2] = v7;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::BaselineResetCheck::formatText(CMMsl::BaselineResetCheck *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "lux", *(this + 4));
    v5 = *(this + 28);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "minPostSUIProx", *(this + 5));
  v5 = *(this + 28);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(a2, "possibleObstructed", *(this + 24));
  v5 = *(this + 28);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "resetTriggered", *(this + 25));
  if (*(this + 28))
  {
LABEL_6:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_7:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BaselineResetCheck::readFrom(CMMsl::BaselineResetCheck *this, PB::Reader *a2)
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
            goto LABEL_70;
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
      if ((v10 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          *(this + 28) |= 1u;
          v27 = *(a2 + 1);
          v2 = *(a2 + 2);
          v28 = *a2;
          if (v27 > 0xFFFFFFFFFFFFFFF5 || v27 + 10 > v2)
          {
            v35 = 0;
            v36 = 0;
            v31 = 0;
            if (v2 <= v27)
            {
              v2 = *(a2 + 1);
            }

            v37 = v2 - v27;
            v38 = (v28 + v27);
            v39 = v27 + 1;
            while (1)
            {
              if (!v37)
              {
                v31 = 0;
                *(a2 + 24) = 1;
                goto LABEL_65;
              }

              v40 = v39;
              v41 = *v38;
              *(a2 + 1) = v40;
              v31 |= (v41 & 0x7F) << v35;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              --v37;
              ++v38;
              v39 = v40 + 1;
              v14 = v36++ > 8;
              if (v14)
              {
                v31 = 0;
                goto LABEL_64;
              }
            }

            if (*(a2 + 24))
            {
              v31 = 0;
            }

LABEL_64:
            v2 = v40;
          }

          else
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = (v28 + v27);
            v33 = v27 + 1;
            while (1)
            {
              v2 = v33;
              *(a2 + 1) = v33;
              v34 = *v32++;
              v31 |= (v34 & 0x7F) << v29;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              ++v33;
              v14 = v30++ > 8;
              if (v14)
              {
                v31 = 0;
                break;
              }
            }
          }

LABEL_65:
          *(this + 1) = v31;
          goto LABEL_66;
        }

        if (v22 == 2)
        {
          *(this + 28) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v24 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v23 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v24 = v23 != 0;
          }

          *(this + 25) = v24;
          goto LABEL_66;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(this + 28) |= 8u;
            v2 = *(a2 + 1);
            if (v2 >= *(a2 + 2))
            {
              v26 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v25 = *(*a2 + v2++);
              *(a2 + 1) = v2;
              v26 = v25 != 0;
            }

            *(this + 24) = v26;
            goto LABEL_66;
          case 4:
            *(this + 28) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
LABEL_37:
              *(a2 + 24) = 1;
              goto LABEL_66;
            }

            *(this + 5) = *(*a2 + v2);
            goto LABEL_60;
          case 5:
            *(this + 28) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_37;
            }

            *(this + 4) = *(*a2 + v2);
LABEL_60:
            v2 = *(a2 + 1) + 4;
            *(a2 + 1) = v2;
            goto LABEL_66;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v42 = 0;
        return v42 & 1;
      }

      v2 = *(a2 + 1);
LABEL_66:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_70:
  v42 = v4 ^ 1;
  return v42 & 1;
}

uint64_t CMMsl::BaselineResetCheck::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 8), 1u);
    v4 = *(v3 + 28);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 28) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 25), 2u);
  v4 = *(v3 + 28);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = PB::Writer::write(a2, *(v3 + 20), 4u);
    if ((*(v3 + 28) & 2) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = PB::Writer::write(a2, *(v3 + 24), 3u);
  v4 = *(v3 + 28);
  if ((v4 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_11:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5, 5u);
}

BOOL CMMsl::BaselineResetCheck::operator==(uint64_t a1, uint64_t a2)
{
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

  if ((*(a1 + 28) & 0x10) != 0)
  {
    if ((*(a2 + 28) & 0x10) == 0 || *(a1 + 25) != *(a2 + 25))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 28) & 8) != 0)
  {
    if ((*(a2 + 28) & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 28) & 4) != 0)
  {
    if ((*(a2 + 28) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 28) & 2) == 0;
  if ((*(a1 + 28) & 2) != 0)
  {
    return (*(a2 + 28) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::BaselineResetCheck::hash_value(CMMsl::BaselineResetCheck *this)
{
  if (*(this + 28))
  {
    v1 = *(this + 1);
    if ((*(this + 28) & 0x10) != 0)
    {
LABEL_3:
      v2 = *(this + 25);
      if ((*(this + 28) & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 28) & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 28) & 8) != 0)
  {
LABEL_4:
    v3 = *(this + 24);
    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v3 = 0;
  if ((*(this + 28) & 4) != 0)
  {
LABEL_5:
    v4 = *(this + 5);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v7 = 0;
    return v2 ^ v1 ^ v3 ^ v5 ^ v7;
  }

LABEL_14:
  v5 = 0;
  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v6 = *(this + 4);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  return v2 ^ v1 ^ v3 ^ v5 ^ v7;
}

uint64_t CMMsl::BatchedLocationFromOdometer::BatchedLocationFromOdometer(uint64_t this)
{
  *this = off_10041D190;
  *(this + 8) = 0;
  *(this + 20) = 0;
  return this;
}

{
  *this = off_10041D190;
  *(this + 8) = 0;
  *(this + 20) = 0;
  return this;
}

void CMMsl::BatchedLocationFromOdometer::~BatchedLocationFromOdometer(CMMsl::BatchedLocationFromOdometer *this)
{
  v2 = *(this + 1);
  *this = off_10041D190;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::BatchedLocationFromOdometer::~BatchedLocationFromOdometer(this);

  operator delete();
}

CMMsl::BatchedLocationFromOdometer *CMMsl::BatchedLocationFromOdometer::BatchedLocationFromOdometer(CMMsl::BatchedLocationFromOdometer *this, const CMMsl::MotionGPSLocation **a2)
{
  *this = off_10041D190;
  *(this + 1) = 0;
  *(this + 5) = 0;
  if (a2[1])
  {
    operator new();
  }

  if (*(a2 + 20))
  {
    v2 = *(a2 + 4);
    *(this + 20) |= 1u;
    *(this + 4) = v2;
  }

  return this;
}

uint64_t CMMsl::BatchedLocationFromOdometer::operator=(uint64_t a1, const CMMsl::MotionGPSLocation **a2)
{
  if (a1 != a2)
  {
    CMMsl::BatchedLocationFromOdometer::BatchedLocationFromOdometer(v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    CMMsl::BatchedLocationFromOdometer::~BatchedLocationFromOdometer(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::BatchedLocationFromOdometer *a2, CMMsl::BatchedLocationFromOdometer *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  return this;
}

uint64_t CMMsl::BatchedLocationFromOdometer::BatchedLocationFromOdometer(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D190;
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
  return a1;
}

uint64_t CMMsl::BatchedLocationFromOdometer::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::BatchedLocationFromOdometer::BatchedLocationFromOdometer(v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    CMMsl::BatchedLocationFromOdometer::~BatchedLocationFromOdometer(v6);
  }

  return a1;
}

uint64_t CMMsl::BatchedLocationFromOdometer::formatText(CMMsl::BatchedLocationFromOdometer *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 20))
  {
    PB::TextFormatter::format(a2, "batchedLocationFixType", *(this + 4));
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BatchedLocationFromOdometer::readFrom(CMMsl::BatchedLocationFromOdometer *this, PB::Reader *a2)
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
            goto LABEL_50;
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
      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 1u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v32 = 0;
          v33 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v34 = v23 - v24;
          if (!v17)
          {
            v34 = 0;
          }

          v35 = (v25 + v24);
          v36 = v24 + 1;
          while (1)
          {
            if (!v34)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_45;
            }

            v37 = *v35;
            *(a2 + 1) = v36;
            v28 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            --v34;
            ++v35;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
LABEL_41:
              LODWORD(v28) = 0;
              goto LABEL_45;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v28) = 0;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            *(a2 + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              goto LABEL_41;
            }
          }
        }

LABEL_45:
        *(this + 4) = v28;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if ((PB::Reader::skip(a2, v22, v10 & 7, 0) & 1) == 0)
        {
          v39 = 0;
          return v39 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_50:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t CMMsl::MotionGPSLocation::MotionGPSLocation(uint64_t this)
{
  *this = off_100420300;
  *(this + 112) = 0;
  *(this + 180) = 0;
  return this;
}

{
  *this = off_100420300;
  *(this + 112) = 0;
  *(this + 180) = 0;
  return this;
}

uint64_t CMMsl::BatchedLocationFromOdometer::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4, 1u);
  }

  if (*(v3 + 20))
  {
    v5 = *(v3 + 16);

    return PB::Writer::writeVarInt(a2, v5, 2u);
  }

  return this;
}

BOOL CMMsl::BatchedLocationFromOdometer::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !CMMsl::MotionGPSLocation::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  result = (*(a2 + 20) & 1) == 0;
  if ((*(a1 + 20) & 1) == 0)
  {
    return result;
  }

  return (*(a2 + 20) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
}

BOOL CMMsl::MotionGPSLocation::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 180);
  v3 = *(a2 + 180);
  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 64) != *(a2 + 64))
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
    if ((v3 & 0x200) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 88) != *(a2 + 88))
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
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
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

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

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

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  v9 = *(a1 + 180);
  v10 = *(a2 + 180);
  if ((v2 & 0x800000) != 0)
  {
    if ((v3 & 0x800000) == 0 || *(a1 + 164) != *(a2 + 164))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000000) != 0)
  {
    if ((v3 & 0x1000000) == 0 || *(a1 + 168) != *(a2 + 168))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000000) != 0)
  {
    if ((v3 & 0x2000000) == 0 || *(a1 + 172) != *(a2 + 172))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000000) != 0)
  {
    return 0;
  }

  if ((v9 & 0x20000) != 0)
  {
    if ((v10 & 0x20000) == 0 || *(a1 + 140) != *(a2 + 140))
    {
      return 0;
    }
  }

  else if ((v10 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v9 & 0x80000) != 0)
  {
    if ((v10 & 0x80000) == 0 || *(a1 + 148) != *(a2 + 148))
    {
      return 0;
    }
  }

  else if ((v10 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v9 & 0x40000) != 0)
  {
    if ((v10 & 0x40000) == 0 || *(a1 + 144) != *(a2 + 144))
    {
      return 0;
    }
  }

  else if ((v10 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v9 & 0x200000) != 0)
  {
    if ((v10 & 0x200000) == 0 || *(a1 + 156) != *(a2 + 156))
    {
      return 0;
    }
  }

  else if ((v10 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000000) != 0)
  {
    if ((v3 & 0x4000000) == 0 || *(a1 + 176) != *(a2 + 176))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000000) != 0)
  {
    return 0;
  }

  if ((v9 & 0x400000) != 0)
  {
    if ((v10 & 0x400000) == 0 || *(a1 + 160) != *(a2 + 160))
    {
      return 0;
    }
  }

  else if ((v10 & 0x400000) != 0)
  {
    return 0;
  }

  if ((v9 & 0x10000) != 0)
  {
    if ((v10 & 0x10000) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v10 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v9 & 0x100000) != 0)
  {
    if ((v10 & 0x100000) == 0 || *(a1 + 152) != *(a2 + 152))
    {
      return 0;
    }
  }

  else if ((v10 & 0x100000) != 0)
  {
    return 0;
  }

  v5 = *(a1 + 112);
  v6 = *(a2 + 112);
  if (v5)
  {
    if (!v6 || !CMMsl::TrackRunData::operator==(v5, v6))
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if ((v9 & 0x8000) != 0)
  {
    if ((v10 & 0x8000) == 0 || *(a1 + 132) != *(a2 + 132))
    {
      return 0;
    }
  }

  else if ((v10 & 0x8000) != 0)
  {
    return 0;
  }

  result = (v10 & 0x4000) == 0;
  if ((v9 & 0x4000) == 0)
  {
    return result;
  }

  return (v10 & 0x4000) != 0 && *(a1 + 128) == *(a2 + 128);
}
unint64_t CMMsl::BatchedLocationFromOdometer::hash_value(CMMsl::BatchedLocationFromOdometer *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v2 = CMMsl::MotionGPSLocation::hash_value(v2);
  }

  if (*(this + 20))
  {
    v3 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  return v3 ^ v2;
}

void *CMMsl::BatchedLocationFromOdometer::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

double CMMsl::BatchedPPGData::BatchedPPGData(CMMsl::BatchedPPGData *this)
{
  *this = off_10041D1C8;
  *(this + 35) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

{
  *this = off_10041D1C8;
  *(this + 35) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

void CMMsl::BatchedPPGData::~BatchedPPGData(CMMsl::BatchedPPGData *this)
{
  *this = off_10041D1C8;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::BatchedPPGData::~BatchedPPGData(this);

  operator delete();
}

CMMsl::BatchedPPGData *CMMsl::BatchedPPGData::BatchedPPGData(CMMsl::BatchedPPGData *this, const CMMsl::BatchedPPGData *a2)
{
  *this = off_10041D1C8;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  v5 = (this + 56);
  *(this + 35) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  v6 = *(a2 + 70);
  if ((v6 & 0x100) != 0)
  {
    v8 = *(a2 + 34);
    v7 = 256;
    *(this + 70) = 256;
    *(this + 34) = v8;
    v6 = *(a2 + 70);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 0;
  if ((v6 & 0x10) != 0)
  {
LABEL_5:
    v9 = *(a2 + 30);
    v7 |= 0x10u;
    *(this + 70) = v7;
    *(this + 30) = v9;
    v6 = *(a2 + 70);
  }

LABEL_6:
  if ((v6 & 0x40) != 0)
  {
    v15 = *(a2 + 32);
    v7 |= 0x40u;
    *(this + 70) = v7;
    *(this + 32) = v15;
    v6 = *(a2 + 70);
    if ((v6 & 0x20) == 0)
    {
LABEL_8:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  v16 = *(a2 + 31);
  v7 |= 0x20u;
  *(this + 70) = v7;
  *(this + 31) = v16;
  if ((*(a2 + 70) & 0x80) != 0)
  {
LABEL_9:
    v10 = *(a2 + 33);
    *(this + 70) = v7 | 0x80;
    *(this + 33) = v10;
  }

LABEL_10:
  if (this != a2)
  {
    sub_100035D1C(this + 10, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 2);
    sub_100035D1C(v5, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 2);
  }

  v11 = *(a2 + 70);
  if ((v11 & 8) != 0)
  {
    v17 = *(a2 + 29);
    *(this + 70) |= 8u;
    *(this + 29) = v17;
    v11 = *(a2 + 70);
    if ((v11 & 4) == 0)
    {
LABEL_14:
      if ((v11 & 2) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((v11 & 4) == 0)
  {
    goto LABEL_14;
  }

  v18 = *(a2 + 28);
  *(this + 70) |= 4u;
  *(this + 28) = v18;
  if ((*(a2 + 70) & 2) != 0)
  {
LABEL_15:
    v12 = *(a2 + 27);
    *(this + 70) |= 2u;
    *(this + 27) = v12;
  }

LABEL_16:
  if (this != a2)
  {
    sub_100035D1C(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
    sub_100035D1C(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  if (*(a2 + 70))
  {
    v13 = *(a2 + 26);
    *(this + 70) |= 1u;
    *(this + 26) = v13;
  }

  return this;
}

CMMsl *CMMsl::BatchedPPGData::operator=(CMMsl *a1, const CMMsl::BatchedPPGData *a2)
{
  if (a1 != a2)
  {
    CMMsl::BatchedPPGData::BatchedPPGData(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::BatchedPPGData::~BatchedPPGData(v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::BatchedPPGData *a2, CMMsl::BatchedPPGData *a3)
{
  v3 = *(this + 140);
  *(this + 140) = *(a2 + 35);
  *(a2 + 35) = v3;
  v4 = *(this + 136);
  *(this + 136) = *(a2 + 34);
  *(a2 + 34) = v4;
  v5 = *(this + 120);
  *(this + 120) = *(a2 + 30);
  *(a2 + 30) = v5;
  v6 = *(this + 128);
  *(this + 128) = *(a2 + 32);
  *(a2 + 32) = v6;
  v7 = *(this + 124);
  *(this + 124) = *(a2 + 31);
  *(a2 + 31) = v7;
  v8 = *(this + 132);
  *(this + 132) = *(a2 + 33);
  *(a2 + 33) = v8;
  v9 = *(this + 80);
  *(this + 80) = *(a2 + 10);
  *(a2 + 10) = v9;
  v10 = *(this + 88);
  *(this + 88) = *(a2 + 11);
  *(a2 + 11) = v10;
  v11 = *(this + 96);
  *(this + 96) = *(a2 + 12);
  *(a2 + 12) = v11;
  v12 = *(this + 56);
  *(this + 56) = *(a2 + 7);
  *(a2 + 7) = v12;
  v13 = *(this + 64);
  *(this + 64) = *(a2 + 8);
  *(a2 + 8) = v13;
  v14 = *(this + 72);
  *(this + 72) = *(a2 + 9);
  *(a2 + 9) = v14;
  LODWORD(v14) = *(this + 116);
  *(this + 116) = *(a2 + 29);
  *(a2 + 29) = v14;
  LODWORD(v14) = *(this + 112);
  *(this + 112) = *(a2 + 28);
  *(a2 + 28) = v14;
  LODWORD(v14) = *(this + 108);
  *(this + 108) = *(a2 + 27);
  *(a2 + 27) = v14;
  v15 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v15;
  v16 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v16;
  v17 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v17;
  v18 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v18;
  v19 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v19;
  v20 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v20;
  LODWORD(v20) = *(this + 104);
  *(this + 104) = *(a2 + 26);
  *(a2 + 26) = v20;
  return this;
}

uint64_t CMMsl::BatchedPPGData::BatchedPPGData(uint64_t a1, _DWORD *a2)
{
  *a1 = off_10041D1C8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 56) = 0u;
  v5 = a1 + 56;
  *(a1 + 140) = a2[35];
  a2[35] = 0;
  *(a1 + 136) = a2[34];
  *(a1 + 120) = a2[30];
  *(a1 + 128) = a2[32];
  *(a1 + 124) = a2[31];
  *(a1 + 132) = a2[33];
  sub_1002A2DD0(a1 + 80, a2 + 5);
  sub_1002A2DD0(v5, (a2 + 14));
  *(a1 + 116) = a2[29];
  *(a1 + 112) = a2[28];
  *(a1 + 108) = a2[27];
  sub_1002A2DD0(a1 + 32, a2 + 2);
  sub_1002A2DD0(v4, (a2 + 2));
  *(a1 + 104) = a2[26];
  return a1;
}

_DWORD *CMMsl::BatchedPPGData::operator=(_DWORD *a1, _DWORD *a2)
{
  if (a1 != a2)
  {
    CMMsl::BatchedPPGData::BatchedPPGData(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::BatchedPPGData::~BatchedPPGData(v5);
  }

  return a1;
}

uint64_t CMMsl::BatchedPPGData::formatText(CMMsl::BatchedPPGData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 70);
  if ((v5 & 0x80) != 0)
  {
    PB::TextFormatter::format(a2, "TIA", *(this + 33));
    v5 = *(this + 70);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "blankDacOffset", *(this + 26));
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "blankDark", v8);
  }

  v9 = *(this + 4);
  v10 = *(this + 5);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::TextFormatter::format(a2, "blankLight", v11);
  }

  v12 = *(this + 70);
  if ((v12 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "blankTIA", *(this + 27));
    v12 = *(this + 70);
    if ((v12 & 4) == 0)
    {
LABEL_11:
      if ((v12 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((v12 & 4) == 0)
  {
    goto LABEL_11;
  }

  PB::TextFormatter::format(a2, "blankiLED", *(this + 28));
  if ((*(this + 70) & 8) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(a2, "dacOffset", *(this + 29));
  }

LABEL_13:
  v13 = *(this + 7);
  v14 = *(this + 8);
  while (v13 != v14)
  {
    v15 = *v13++;
    PB::TextFormatter::format(a2, "dark", v15);
  }

  v16 = *(this + 70);
  if ((v16 & 0x10) != 0)
  {
    PB::TextFormatter::format(a2, "flagBitfield", *(this + 30));
    v16 = *(this + 70);
  }

  if ((v16 & 0x20) != 0)
  {
    PB::TextFormatter::format(a2, "iLED", *(this + 31));
  }

  v17 = *(this + 10);
  v18 = *(this + 11);
  while (v17 != v18)
  {
    v19 = *v17++;
    PB::TextFormatter::format(a2, "light", v19);
  }

  v20 = *(this + 70);
  if ((v20 & 0x40) != 0)
  {
    PB::TextFormatter::format(a2, "samplingFrequency", *(this + 32));
    v20 = *(this + 70);
  }

  if ((v20 & 0x100) != 0)
  {
    PB::TextFormatter::format(a2, "timestampRel", *(this + 34));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BatchedPPGData::readFrom(CMMsl::BatchedPPGData *this, PB::Reader *a2)
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
        v48 = v9++ > 8;
        if (v48)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v21 = v10 & 7;
      if (v4 & 1 | (v21 == 4))
      {
        goto LABEL_470;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 70) |= 0x100u;
          v23 = *(a2 + 1);
          v22 = *(a2 + 2);
          v24 = *a2;
          if (v23 <= 0xFFFFFFFFFFFFFFF5 && v23 + 10 <= v22)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = (v24 + v23);
            v29 = v23 + 1;
            do
            {
              *(a2 + 1) = v29;
              v30 = *v28++;
              v27 |= (v30 & 0x7F) << v25;
              if ((v30 & 0x80) == 0)
              {
                goto LABEL_387;
              }

              v25 += 7;
              ++v29;
              v48 = v26++ > 8;
            }

            while (!v48);
LABEL_303:
            LODWORD(v27) = 0;
            goto LABEL_387;
          }

          v247 = 0;
          v248 = 0;
          v27 = 0;
          v16 = v22 >= v23;
          v249 = v22 - v23;
          if (!v16)
          {
            v249 = 0;
          }

          v250 = (v24 + v23);
          v251 = v23 + 1;
          while (2)
          {
            if (v249)
            {
              v252 = *v250;
              *(a2 + 1) = v251;
              v27 |= (v252 & 0x7F) << v247;
              if (v252 < 0)
              {
                v247 += 7;
                --v249;
                ++v250;
                ++v251;
                v48 = v248++ > 8;
                if (v48)
                {
                  goto LABEL_303;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }
            }

            else
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_387:
          *(this + 34) = v27;
          goto LABEL_466;
        case 2u:
          *(this + 70) |= 0x10u;
          v113 = *(a2 + 1);
          v112 = *(a2 + 2);
          v114 = *a2;
          if (v113 <= 0xFFFFFFFFFFFFFFF5 && v113 + 10 <= v112)
          {
            v115 = 0;
            v116 = 0;
            v117 = 0;
            v118 = (v114 + v113);
            v119 = v113 + 1;
            do
            {
              *(a2 + 1) = v119;
              v120 = *v118++;
              v117 |= (v120 & 0x7F) << v115;
              if ((v120 & 0x80) == 0)
              {
                goto LABEL_390;
              }

              v115 += 7;
              ++v119;
              v48 = v116++ > 8;
            }

            while (!v48);
LABEL_311:
            LODWORD(v117) = 0;
            goto LABEL_390;
          }

          v253 = 0;
          v254 = 0;
          v117 = 0;
          v16 = v112 >= v113;
          v255 = v112 - v113;
          if (!v16)
          {
            v255 = 0;
          }

          v256 = (v114 + v113);
          v257 = v113 + 1;
          while (2)
          {
            if (v255)
            {
              v258 = *v256;
              *(a2 + 1) = v257;
              v117 |= (v258 & 0x7F) << v253;
              if (v258 < 0)
              {
                v253 += 7;
                --v255;
                ++v256;
                ++v257;
                v48 = v254++ > 8;
                if (v48)
                {
                  goto LABEL_311;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v117) = 0;
              }
            }

            else
            {
              LODWORD(v117) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_390:
          *(this + 30) = v117;
          goto LABEL_466;
        case 3u:
          *(this + 70) |= 0x40u;
          v86 = *(a2 + 1);
          v85 = *(a2 + 2);
          v87 = *a2;
          if (v86 <= 0xFFFFFFFFFFFFFFF5 && v86 + 10 <= v85)
          {
            v88 = 0;
            v89 = 0;
            v90 = 0;
            v91 = (v87 + v86);
            v92 = v86 + 1;
            do
            {
              *(a2 + 1) = v92;
              v93 = *v91++;
              v90 |= (v93 & 0x7F) << v88;
              if ((v93 & 0x80) == 0)
              {
                goto LABEL_378;
              }

              v88 += 7;
              ++v92;
              v48 = v89++ > 8;
            }

            while (!v48);
LABEL_279:
            LODWORD(v90) = 0;
            goto LABEL_378;
          }

          v229 = 0;
          v230 = 0;
          v90 = 0;
          v16 = v85 >= v86;
          v231 = v85 - v86;
          if (!v16)
          {
            v231 = 0;
          }

          v232 = (v87 + v86);
          v233 = v86 + 1;
          while (2)
          {
            if (v231)
            {
              v234 = *v232;
              *(a2 + 1) = v233;
              v90 |= (v234 & 0x7F) << v229;
              if (v234 < 0)
              {
                v229 += 7;
                --v231;
                ++v232;
                ++v233;
                v48 = v230++ > 8;
                if (v48)
                {
                  goto LABEL_279;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v90) = 0;
              }
            }

            else
            {
              LODWORD(v90) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_378:
          *(this + 32) = v90;
          goto LABEL_466;
        case 4u:
          *(this + 70) |= 0x20u;
          v95 = *(a2 + 1);
          v94 = *(a2 + 2);
          v96 = *a2;
          if (v95 <= 0xFFFFFFFFFFFFFFF5 && v95 + 10 <= v94)
          {
            v97 = 0;
            v98 = 0;
            v99 = 0;
            v100 = (v96 + v95);
            v101 = v95 + 1;
            do
            {
              *(a2 + 1) = v101;
              v102 = *v100++;
              v99 |= (v102 & 0x7F) << v97;
              if ((v102 & 0x80) == 0)
              {
                goto LABEL_381;
              }

              v97 += 7;
              ++v101;
              v48 = v98++ > 8;
            }

            while (!v48);
LABEL_287:
            LODWORD(v99) = 0;
            goto LABEL_381;
          }

          v235 = 0;
          v236 = 0;
          v99 = 0;
          v16 = v94 >= v95;
          v237 = v94 - v95;
          if (!v16)
          {
            v237 = 0;
          }

          v238 = (v96 + v95);
          v239 = v95 + 1;
          while (2)
          {
            if (v237)
            {
              v240 = *v238;
              *(a2 + 1) = v239;
              v99 |= (v240 & 0x7F) << v235;
              if (v240 < 0)
              {
                v235 += 7;
                --v237;
                ++v238;
                ++v239;
                v48 = v236++ > 8;
                if (v48)
                {
                  goto LABEL_287;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v99) = 0;
              }
            }

            else
            {
              LODWORD(v99) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_381:
          *(this + 31) = v99;
          goto LABEL_466;
        case 5u:
          *(this + 70) |= 0x80u;
          v59 = *(a2 + 1);
          v58 = *(a2 + 2);
          v60 = *a2;
          if (v59 <= 0xFFFFFFFFFFFFFFF5 && v59 + 10 <= v58)
          {
            v61 = 0;
            v62 = 0;
            v63 = 0;
            v64 = (v60 + v59);
            v65 = v59 + 1;
            do
            {
              *(a2 + 1) = v65;
              v66 = *v64++;
              v63 |= (v66 & 0x7F) << v61;
              if ((v66 & 0x80) == 0)
              {
                goto LABEL_369;
              }

              v61 += 7;
              ++v65;
              v48 = v62++ > 8;
            }

            while (!v48);
LABEL_255:
            LODWORD(v63) = 0;
            goto LABEL_369;
          }

          v211 = 0;
          v212 = 0;
          v63 = 0;
          v16 = v58 >= v59;
          v213 = v58 - v59;
          if (!v16)
          {
            v213 = 0;
          }

          v214 = (v60 + v59);
          v215 = v59 + 1;
          while (2)
          {
            if (v213)
            {
              v216 = *v214;
              *(a2 + 1) = v215;
              v63 |= (v216 & 0x7F) << v211;
              if (v216 < 0)
              {
                v211 += 7;
                --v213;
                ++v214;
                ++v215;
                v48 = v212++ > 8;
                if (v48)
                {
                  goto LABEL_255;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v63) = 0;
              }
            }

            else
            {
              LODWORD(v63) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_369:
          *(this + 33) = v63;
          goto LABEL_466;
        case 6u:
          if (v21 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_472;
            }

            if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
            {
              v31 = *(this + 11);
              do
              {
                v121 = *(this + 12);
                if (v31 >= v121)
                {
                  v122 = *(this + 10);
                  v123 = v31 - v122;
                  v124 = (v31 - v122) >> 2;
                  v125 = v124 + 1;
                  if ((v124 + 1) >> 62)
                  {
                    goto LABEL_473;
                  }

                  v126 = v121 - v122;
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
                    sub_10002290C(this + 80, v127);
                  }

                  v128 = (v31 - v122) >> 2;
                  v129 = (4 * v124);
                  v130 = (4 * v124 - 4 * v128);
                  *v129 = 0;
                  v31 = (v129 + 1);
                  memcpy(v130, v122, v123);
                  v131 = *(this + 10);
                  *(this + 10) = v130;
                  *(this + 11) = v31;
                  *(this + 12) = 0;
                  if (v131)
                  {
                    operator delete(v131);
                  }
                }

                else
                {
                  *v31 = 0;
                  v31 += 4;
                }

                *(this + 11) = v31;
                v133 = *(a2 + 1);
                v132 = *(a2 + 2);
                v134 = *a2;
                v135 = 0;
                v136 = 0;
                if (v133 > 0xFFFFFFFFFFFFFFF5 || v133 + 10 > v132)
                {
                  v143 = 0;
                  v138 = v132 - v133;
                  if (v132 < v133)
                  {
                    v138 = 0;
                  }

                  v139 = (v134 + v133);
                  v140 = v133 + 1;
                  while (1)
                  {
                    if (!v138)
                    {
                      goto LABEL_244;
                    }

                    v141 = v140;
                    v142 = *v139;
                    *(a2 + 1) = v141;
                    v143 |= (v142 & 0x7F) << v135;
                    if ((v142 & 0x80) == 0)
                    {
                      break;
                    }

                    v135 += 7;
                    --v138;
                    ++v139;
                    v140 = v141 + 1;
                    v48 = v136++ > 8;
                    if (v48)
                    {
LABEL_151:
                      LODWORD(v143) = 0;
                      goto LABEL_154;
                    }
                  }

                  if (*(a2 + 24))
                  {
                    LODWORD(v143) = 0;
                  }
                }

                else
                {
                  v143 = 0;
                  v144 = (v134 + v133);
                  v145 = v133 + 1;
                  while (1)
                  {
                    v141 = v145;
                    *(a2 + 1) = v145;
                    v146 = *v144++;
                    v143 |= (v146 & 0x7F) << v135;
                    if ((v146 & 0x80) == 0)
                    {
                      break;
                    }

                    v135 += 7;
                    ++v145;
                    v48 = v136++ > 8;
                    if (v48)
                    {
                      goto LABEL_151;
                    }
                  }
                }

LABEL_154:
                *(v31 - 1) = v143;
              }

              while (v141 < v132 && (*(a2 + 24) & 1) == 0);
            }

            goto LABEL_245;
          }

          v260 = *(this + 11);
          v259 = *(this + 12);
          if (v260 >= v259)
          {
            v277 = *(this + 10);
            v278 = v260 - v277;
            v279 = (v260 - v277) >> 2;
            v280 = v279 + 1;
            if ((v279 + 1) >> 62)
            {
              goto LABEL_473;
            }

            v281 = v259 - v277;
            if (v281 >> 1 > v280)
            {
              v280 = v281 >> 1;
            }

            if (v281 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v282 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v282 = v280;
            }

            if (v282)
            {
              sub_10002290C(this + 80, v282);
            }

            v314 = (v260 - v277) >> 2;
            v315 = (4 * v279);
            v316 = (4 * v279 - 4 * v314);
            *v315 = 0;
            v210 = v315 + 1;
            memcpy(v316, v277, v278);
            v317 = *(this + 10);
            *(this + 10) = v316;
            *(this + 11) = v210;
            *(this + 12) = 0;
            if (v317)
            {
              operator delete(v317);
            }
          }

          else
          {
            *v260 = 0;
            v210 = v260 + 4;
          }

          *(this + 11) = v210;
          v319 = *(a2 + 1);
          v318 = *(a2 + 2);
          v320 = *a2;
          if (v319 <= 0xFFFFFFFFFFFFFFF5 && v319 + 10 <= v318)
          {
            v321 = 0;
            v322 = 0;
            v304 = 0;
            v323 = (v320 + v319);
            v324 = v319 + 1;
            while (1)
            {
              *(a2 + 1) = v324;
              v325 = *v323++;
              v304 |= (v325 & 0x7F) << v321;
              if ((v325 & 0x80) == 0)
              {
                goto LABEL_465;
              }

              v321 += 7;
              ++v324;
              v48 = v322++ > 8;
              if (v48)
              {
                goto LABEL_461;
              }
            }
          }

          v326 = 0;
          v327 = 0;
          v304 = 0;
          v16 = v318 >= v319;
          v328 = v318 - v319;
          if (!v16)
          {
            v328 = 0;
          }

          v329 = (v320 + v319);
          v330 = v319 + 1;
          while (v328)
          {
            v331 = *v329;
            *(a2 + 1) = v330;
            v304 |= (v331 & 0x7F) << v326;
            if ((v331 & 0x80) == 0)
            {
              goto LABEL_463;
            }

            v326 += 7;
            --v328;
            ++v329;
            ++v330;
            v48 = v327++ > 8;
            if (v48)
            {
              goto LABEL_461;
            }
          }

          goto LABEL_462;
        case 7u:
          if (v21 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_472;
            }

            if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
            {
              v31 = *(this + 8);
              do
              {
                v147 = *(this + 9);
                if (v31 >= v147)
                {
                  v148 = *(this + 7);
                  v149 = v31 - v148;
                  v150 = (v31 - v148) >> 2;
                  v151 = v150 + 1;
                  if ((v150 + 1) >> 62)
                  {
                    goto LABEL_473;
                  }

                  v152 = v147 - v148;
                  if (v152 >> 1 > v151)
                  {
                    v151 = v152 >> 1;
                  }

                  if (v152 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v153 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v153 = v151;
                  }

                  if (v153)
                  {
                    sub_10002290C(this + 56, v153);
                  }

                  v154 = (v31 - v148) >> 2;
                  v155 = (4 * v150);
                  v156 = (4 * v150 - 4 * v154);
                  *v155 = 0;
                  v31 = (v155 + 1);
                  memcpy(v156, v148, v149);
                  v157 = *(this + 7);
                  *(this + 7) = v156;
                  *(this + 8) = v31;
                  *(this + 9) = 0;
                  if (v157)
                  {
                    operator delete(v157);
                  }
                }

                else
                {
                  *v31 = 0;
                  v31 += 4;
                }

                *(this + 8) = v31;
                v159 = *(a2 + 1);
                v158 = *(a2 + 2);
                v160 = *a2;
                v161 = 0;
                v162 = 0;
                if (v159 > 0xFFFFFFFFFFFFFFF5 || v159 + 10 > v158)
                {
                  v169 = 0;
                  v164 = v158 - v159;
                  if (v158 < v159)
                  {
                    v164 = 0;
                  }

                  v165 = (v160 + v159);
                  v166 = v159 + 1;
                  while (1)
                  {
                    if (!v164)
                    {
                      goto LABEL_244;
                    }

                    v167 = v166;
                    v168 = *v165;
                    *(a2 + 1) = v167;
                    v169 |= (v168 & 0x7F) << v161;
                    if ((v168 & 0x80) == 0)
                    {
                      break;
                    }

                    v161 += 7;
                    --v164;
                    ++v165;
                    v166 = v167 + 1;
                    v48 = v162++ > 8;
                    if (v48)
                    {
LABEL_192:
                      LODWORD(v169) = 0;
                      goto LABEL_195;
                    }
                  }

                  if (*(a2 + 24))
                  {
                    LODWORD(v169) = 0;
                  }
                }

                else
                {
                  v169 = 0;
                  v170 = (v160 + v159);
                  v171 = v159 + 1;
                  while (1)
                  {
                    v167 = v171;
                    *(a2 + 1) = v171;
                    v172 = *v170++;
                    v169 |= (v172 & 0x7F) << v161;
                    if ((v172 & 0x80) == 0)
                    {
                      break;
                    }

                    v161 += 7;
                    ++v171;
                    v48 = v162++ > 8;
                    if (v48)
                    {
                      goto LABEL_192;
                    }
                  }
                }

LABEL_195:
                *(v31 - 1) = v169;
              }

              while (v167 < v158 && (*(a2 + 24) & 1) == 0);
            }

            goto LABEL_245;
          }

          v268 = *(this + 8);
          v267 = *(this + 9);
          if (v268 >= v267)
          {
            v283 = *(this + 7);
            v284 = v268 - v283;
            v285 = (v268 - v283) >> 2;
            v286 = v285 + 1;
            if ((v285 + 1) >> 62)
            {
              goto LABEL_473;
            }

            v287 = v267 - v283;
            if (v287 >> 1 > v286)
            {
              v286 = v287 >> 1;
            }

            if (v287 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v288 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v288 = v286;
            }

            if (v288)
            {
              sub_10002290C(this + 56, v288);
            }

            v332 = (v268 - v283) >> 2;
            v333 = (4 * v285);
            v334 = (4 * v285 - 4 * v332);
            *v333 = 0;
            v210 = v333 + 1;
            memcpy(v334, v283, v284);
            v335 = *(this + 7);
            *(this + 7) = v334;
            *(this + 8) = v210;
            *(this + 9) = 0;
            if (v335)
            {
              operator delete(v335);
            }
          }

          else
          {
            *v268 = 0;
            v210 = v268 + 4;
          }

          *(this + 8) = v210;
          v337 = *(a2 + 1);
          v336 = *(a2 + 2);
          v338 = *a2;
          if (v337 <= 0xFFFFFFFFFFFFFFF5 && v337 + 10 <= v336)
          {
            v339 = 0;
            v340 = 0;
            v304 = 0;
            v341 = (v338 + v337);
            v342 = v337 + 1;
            while (1)
            {
              *(a2 + 1) = v342;
              v343 = *v341++;
              v304 |= (v343 & 0x7F) << v339;
              if ((v343 & 0x80) == 0)
              {
                goto LABEL_465;
              }

              v339 += 7;
              ++v342;
              v48 = v340++ > 8;
              if (v48)
              {
                goto LABEL_461;
              }
            }
          }

          v344 = 0;
          v345 = 0;
          v304 = 0;
          v16 = v336 >= v337;
          v346 = v336 - v337;
          if (!v16)
          {
            v346 = 0;
          }

          v347 = (v338 + v337);
          v348 = v337 + 1;
          while (v346)
          {
            v349 = *v347;
            *(a2 + 1) = v348;
            v304 |= (v349 & 0x7F) << v344;
            if ((v349 & 0x80) == 0)
            {
              goto LABEL_463;
            }

            v344 += 7;
            --v346;
            ++v347;
            ++v348;
            v48 = v345++ > 8;
            if (v48)
            {
              goto LABEL_461;
            }
          }

          goto LABEL_462;
        case 8u:
          *(this + 70) |= 8u;
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
                goto LABEL_384;
              }

              v106 += 7;
              ++v110;
              v48 = v107++ > 8;
            }

            while (!v48);
LABEL_295:
            LODWORD(v108) = 0;
            goto LABEL_384;
          }

          v241 = 0;
          v242 = 0;
          v108 = 0;
          v16 = v103 >= v104;
          v243 = v103 - v104;
          if (!v16)
          {
            v243 = 0;
          }

          v244 = (v105 + v104);
          v245 = v104 + 1;
          while (2)
          {
            if (v243)
            {
              v246 = *v244;
              *(a2 + 1) = v245;
              v108 |= (v246 & 0x7F) << v241;
              if (v246 < 0)
              {
                v241 += 7;
                --v243;
                ++v244;
                ++v245;
                v48 = v242++ > 8;
                if (v48)
                {
                  goto LABEL_295;
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

LABEL_384:
          *(this + 29) = v108;
          goto LABEL_466;
        case 9u:
          *(this + 70) |= 4u;
          v200 = *(a2 + 1);
          v199 = *(a2 + 2);
          v201 = *a2;
          if (v200 <= 0xFFFFFFFFFFFFFFF5 && v200 + 10 <= v199)
          {
            v202 = 0;
            v203 = 0;
            v204 = 0;
            v205 = (v201 + v200);
            v206 = v200 + 1;
            do
            {
              *(a2 + 1) = v206;
              v207 = *v205++;
              v204 |= (v207 & 0x7F) << v202;
              if ((v207 & 0x80) == 0)
              {
                goto LABEL_393;
              }

              v202 += 7;
              ++v206;
              v48 = v203++ > 8;
            }

            while (!v48);
LABEL_321:
            LODWORD(v204) = 0;
            goto LABEL_393;
          }

          v261 = 0;
          v262 = 0;
          v204 = 0;
          v16 = v199 >= v200;
          v263 = v199 - v200;
          if (!v16)
          {
            v263 = 0;
          }

          v264 = (v201 + v200);
          v265 = v200 + 1;
          while (2)
          {
            if (v263)
            {
              v266 = *v264;
              *(a2 + 1) = v265;
              v204 |= (v266 & 0x7F) << v261;
              if (v266 < 0)
              {
                v261 += 7;
                --v263;
                ++v264;
                ++v265;
                v48 = v262++ > 8;
                if (v48)
                {
                  goto LABEL_321;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v204) = 0;
              }
            }

            else
            {
              LODWORD(v204) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_393:
          *(this + 28) = v204;
          goto LABEL_466;
        case 0xAu:
          *(this + 70) |= 2u;
          v77 = *(a2 + 1);
          v76 = *(a2 + 2);
          v78 = *a2;
          if (v77 <= 0xFFFFFFFFFFFFFFF5 && v77 + 10 <= v76)
          {
            v79 = 0;
            v80 = 0;
            v81 = 0;
            v82 = (v78 + v77);
            v83 = v77 + 1;
            do
            {
              *(a2 + 1) = v83;
              v84 = *v82++;
              v81 |= (v84 & 0x7F) << v79;
              if ((v84 & 0x80) == 0)
              {
                goto LABEL_375;
              }

              v79 += 7;
              ++v83;
              v48 = v80++ > 8;
            }

            while (!v48);
LABEL_271:
            LODWORD(v81) = 0;
            goto LABEL_375;
          }

          v223 = 0;
          v224 = 0;
          v81 = 0;
          v16 = v76 >= v77;
          v225 = v76 - v77;
          if (!v16)
          {
            v225 = 0;
          }

          v226 = (v78 + v77);
          v227 = v77 + 1;
          while (2)
          {
            if (v225)
            {
              v228 = *v226;
              *(a2 + 1) = v227;
              v81 |= (v228 & 0x7F) << v223;
              if (v228 < 0)
              {
                v223 += 7;
                --v225;
                ++v226;
                ++v227;
                v48 = v224++ > 8;
                if (v48)
                {
                  goto LABEL_271;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v81) = 0;
              }
            }

            else
            {
              LODWORD(v81) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_375:
          *(this + 27) = v81;
          goto LABEL_466;
        case 0xBu:
          if (v21 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_472:
              v368 = 0;
              return v368 & 1;
            }

            if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
            {
              v31 = *(this + 5);
              do
              {
                v173 = *(this + 6);
                if (v31 >= v173)
                {
                  v174 = *(this + 4);
                  v175 = v31 - v174;
                  v176 = (v31 - v174) >> 2;
                  v177 = v176 + 1;
                  if ((v176 + 1) >> 62)
                  {
                    goto LABEL_473;
                  }

                  v178 = v173 - v174;
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
                    sub_10002290C(this + 32, v179);
                  }

                  v180 = (v31 - v174) >> 2;
                  v181 = (4 * v176);
                  v182 = (4 * v176 - 4 * v180);
                  *v181 = 0;
                  v31 = (v181 + 1);
                  memcpy(v182, v174, v175);
                  v183 = *(this + 4);
                  *(this + 4) = v182;
                  *(this + 5) = v31;
                  *(this + 6) = 0;
                  if (v183)
                  {
                    operator delete(v183);
                  }
                }

                else
                {
                  *v31 = 0;
                  v31 += 4;
                }

                *(this + 5) = v31;
                v185 = *(a2 + 1);
                v184 = *(a2 + 2);
                v186 = *a2;
                v187 = 0;
                v188 = 0;
                if (v185 > 0xFFFFFFFFFFFFFFF5 || v185 + 10 > v184)
                {
                  v195 = 0;
                  v190 = v184 - v185;
                  if (v184 < v185)
                  {
                    v190 = 0;
                  }

                  v191 = (v186 + v185);
                  v192 = v185 + 1;
                  while (1)
                  {
                    if (!v190)
                    {
                      goto LABEL_244;
                    }

                    v193 = v192;
                    v194 = *v191;
                    *(a2 + 1) = v193;
                    v195 |= (v194 & 0x7F) << v187;
                    if ((v194 & 0x80) == 0)
                    {
                      break;
                    }

                    v187 += 7;
                    --v190;
                    ++v191;
                    v192 = v193 + 1;
                    v48 = v188++ > 8;
                    if (v48)
                    {
LABEL_231:
                      LODWORD(v195) = 0;
                      goto LABEL_234;
                    }
                  }

                  if (*(a2 + 24))
                  {
                    LODWORD(v195) = 0;
                  }
                }

                else
                {
                  v195 = 0;
                  v196 = (v186 + v185);
                  v197 = v185 + 1;
                  while (1)
                  {
                    v193 = v197;
                    *(a2 + 1) = v197;
                    v198 = *v196++;
                    v195 |= (v198 & 0x7F) << v187;
                    if ((v198 & 0x80) == 0)
                    {
                      break;
                    }

                    v187 += 7;
                    ++v197;
                    v48 = v188++ > 8;
                    if (v48)
                    {
                      goto LABEL_231;
                    }
                  }
                }

LABEL_234:
                *(v31 - 1) = v195;
              }

              while (v193 < v184 && (*(a2 + 24) & 1) == 0);
            }

LABEL_245:
            PB::Reader::recallMark();
          }

          else
          {
            v270 = *(this + 5);
            v269 = *(this + 6);
            if (v270 >= v269)
            {
              v289 = *(this + 4);
              v290 = v270 - v289;
              v291 = (v270 - v289) >> 2;
              v292 = v291 + 1;
              if ((v291 + 1) >> 62)
              {
LABEL_473:
                sub_10000CD24();
              }

              v293 = v269 - v289;
              if (v293 >> 1 > v292)
              {
                v292 = v293 >> 1;
              }

              if (v293 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v294 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v294 = v292;
              }

              if (v294)
              {
                sub_10002290C(this + 32, v294);
              }

              v350 = (v270 - v289) >> 2;
              v351 = (4 * v291);
              v352 = (4 * v291 - 4 * v350);
              *v351 = 0;
              v210 = v351 + 1;
              memcpy(v352, v289, v290);
              v353 = *(this + 4);
              *(this + 4) = v352;
              *(this + 5) = v210;
              *(this + 6) = 0;
              if (v353)
              {
                operator delete(v353);
              }
            }

            else
            {
              *v270 = 0;
              v210 = v270 + 4;
            }

            *(this + 5) = v210;
            v355 = *(a2 + 1);
            v354 = *(a2 + 2);
            v356 = *a2;
            if (v355 > 0xFFFFFFFFFFFFFFF5 || v355 + 10 > v354)
            {
              v362 = 0;
              v363 = 0;
              v304 = 0;
              v16 = v354 >= v355;
              v364 = v354 - v355;
              if (!v16)
              {
                v364 = 0;
              }

              v365 = (v356 + v355);
              v366 = v355 + 1;
              while (v364)
              {
                v367 = *v365;
                *(a2 + 1) = v366;
                v304 |= (v367 & 0x7F) << v362;
                if ((v367 & 0x80) == 0)
                {
                  goto LABEL_463;
                }

                v362 += 7;
                --v364;
                ++v365;
                ++v366;
                v48 = v363++ > 8;
                if (v48)
                {
                  goto LABEL_461;
                }
              }

LABEL_462:
              LODWORD(v304) = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v357 = 0;
              v358 = 0;
              v304 = 0;
              v359 = (v356 + v355);
              v360 = v355 + 1;
              while (1)
              {
                *(a2 + 1) = v360;
                v361 = *v359++;
                v304 |= (v361 & 0x7F) << v357;
                if ((v361 & 0x80) == 0)
                {
                  break;
                }

                v357 += 7;
                ++v360;
                v48 = v358++ > 8;
                if (v48)
                {
                  goto LABEL_461;
                }
              }
            }

LABEL_465:
            *(v210 - 1) = v304;
          }

LABEL_466:
          v2 = *(a2 + 1);
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_470;
          }

          break;
        case 0xCu:
          if (v21 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_472;
            }

            if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
            {
              v31 = *(this + 2);
              while (1)
              {
                v32 = *(this + 3);
                if (v31 >= v32)
                {
                  v33 = *(this + 1);
                  v34 = v31 - v33;
                  v35 = (v31 - v33) >> 2;
                  v36 = v35 + 1;
                  if ((v35 + 1) >> 62)
                  {
                    goto LABEL_473;
                  }

                  v37 = v32 - v33;
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
                    sub_10002290C(this + 8, v38);
                  }

                  v39 = (v31 - v33) >> 2;
                  v40 = (4 * v35);
                  v41 = (4 * v35 - 4 * v39);
                  *v40 = 0;
                  v31 = (v40 + 1);
                  memcpy(v41, v33, v34);
                  v42 = *(this + 1);
                  *(this + 1) = v41;
                  *(this + 2) = v31;
                  *(this + 3) = 0;
                  if (v42)
                  {
                    operator delete(v42);
                  }
                }

                else
                {
                  *v31 = 0;
                  v31 += 4;
                }

                *(this + 2) = v31;
                v44 = *(a2 + 1);
                v43 = *(a2 + 2);
                v45 = *a2;
                v46 = 0;
                v47 = 0;
                v48 = v44 > 0xFFFFFFFFFFFFFFF5 || v44 + 10 > v43;
                if (v48)
                {
                  break;
                }

                v54 = 0;
                v55 = (v45 + v44);
                v56 = v44 + 1;
                while (1)
                {
                  v52 = v56;
                  *(a2 + 1) = v56;
                  v57 = *v55++;
                  v54 |= (v57 & 0x7F) << v46;
                  if ((v57 & 0x80) == 0)
                  {
                    break;
                  }

                  v46 += 7;
                  ++v56;
                  v48 = v47++ > 8;
                  if (v48)
                  {
                    goto LABEL_63;
                  }
                }

LABEL_66:
                *(v31 - 1) = v54;
                if (v52 >= v43 || (*(a2 + 24) & 1) != 0)
                {
                  goto LABEL_245;
                }
              }

              v54 = 0;
              v49 = v43 - v44;
              if (v43 < v44)
              {
                v49 = 0;
              }

              v50 = (v45 + v44);
              v51 = v44 + 1;
              while (v49)
              {
                v52 = v51;
                v53 = *v50;
                *(a2 + 1) = v52;
                v54 |= (v53 & 0x7F) << v46;
                if ((v53 & 0x80) == 0)
                {
                  if (*(a2 + 24))
                  {
                    LODWORD(v54) = 0;
                  }

                  goto LABEL_66;
                }

                v46 += 7;
                --v49;
                ++v50;
                v51 = v52 + 1;
                v48 = v47++ > 8;
                if (v48)
                {
LABEL_63:
                  LODWORD(v54) = 0;
                  goto LABEL_66;
                }
              }

LABEL_244:
              *(a2 + 24) = 1;
              *(v31 - 1) = 0;
            }

            goto LABEL_245;
          }

          v209 = *(this + 2);
          v208 = *(this + 3);
          if (v209 >= v208)
          {
            v271 = *(this + 1);
            v272 = v209 - v271;
            v273 = (v209 - v271) >> 2;
            v274 = v273 + 1;
            if ((v273 + 1) >> 62)
            {
              goto LABEL_473;
            }

            v275 = v208 - v271;
            if (v275 >> 1 > v274)
            {
              v274 = v275 >> 1;
            }

            if (v275 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v276 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v276 = v274;
            }

            if (v276)
            {
              sub_10002290C(this + 8, v276);
            }

            v295 = (v209 - v271) >> 2;
            v296 = (4 * v273);
            v297 = (4 * v273 - 4 * v295);
            *v296 = 0;
            v210 = v296 + 1;
            memcpy(v297, v271, v272);
            v298 = *(this + 1);
            *(this + 1) = v297;
            *(this + 2) = v210;
            *(this + 3) = 0;
            if (v298)
            {
              operator delete(v298);
            }
          }

          else
          {
            *v209 = 0;
            v210 = v209 + 4;
          }

          *(this + 2) = v210;
          v300 = *(a2 + 1);
          v299 = *(a2 + 2);
          v301 = *a2;
          if (v300 <= 0xFFFFFFFFFFFFFFF5 && v300 + 10 <= v299)
          {
            v302 = 0;
            v303 = 0;
            v304 = 0;
            v305 = (v301 + v300);
            v306 = v300 + 1;
            while (1)
            {
              *(a2 + 1) = v306;
              v307 = *v305++;
              v304 |= (v307 & 0x7F) << v302;
              if ((v307 & 0x80) == 0)
              {
                goto LABEL_465;
              }

              v302 += 7;
              ++v306;
              v48 = v303++ > 8;
              if (v48)
              {
                goto LABEL_461;
              }
            }
          }

          v308 = 0;
          v309 = 0;
          v304 = 0;
          v16 = v299 >= v300;
          v310 = v299 - v300;
          if (!v16)
          {
            v310 = 0;
          }

          v311 = (v301 + v300);
          v312 = v300 + 1;
          while (v310)
          {
            v313 = *v311;
            *(a2 + 1) = v312;
            v304 |= (v313 & 0x7F) << v308;
            if ((v313 & 0x80) == 0)
            {
LABEL_463:
              if (*(a2 + 24))
              {
                LODWORD(v304) = 0;
              }

              goto LABEL_465;
            }

            v308 += 7;
            --v310;
            ++v311;
            ++v312;
            v48 = v309++ > 8;
            if (v48)
            {
LABEL_461:
              LODWORD(v304) = 0;
              goto LABEL_465;
            }
          }

          goto LABEL_462;
        case 0xDu:
          *(this + 70) |= 1u;
          v68 = *(a2 + 1);
          v67 = *(a2 + 2);
          v69 = *a2;
          if (v68 <= 0xFFFFFFFFFFFFFFF5 && v68 + 10 <= v67)
          {
            v70 = 0;
            v71 = 0;
            v72 = 0;
            v73 = (v69 + v68);
            v74 = v68 + 1;
            do
            {
              *(a2 + 1) = v74;
              v75 = *v73++;
              v72 |= (v75 & 0x7F) << v70;
              if ((v75 & 0x80) == 0)
              {
                goto LABEL_372;
              }

              v70 += 7;
              ++v74;
              v48 = v71++ > 8;
            }

            while (!v48);
LABEL_263:
            LODWORD(v72) = 0;
            goto LABEL_372;
          }

          v217 = 0;
          v218 = 0;
          v72 = 0;
          v16 = v67 >= v68;
          v219 = v67 - v68;
          if (!v16)
          {
            v219 = 0;
          }

          v220 = (v69 + v68);
          v221 = v68 + 1;
          while (2)
          {
            if (v219)
            {
              v222 = *v220;
              *(a2 + 1) = v221;
              v72 |= (v222 & 0x7F) << v217;
              if (v222 < 0)
              {
                v217 += 7;
                --v219;
                ++v220;
                ++v221;
                v48 = v218++ > 8;
                if (v48)
                {
                  goto LABEL_263;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v72) = 0;
              }
            }

            else
            {
              LODWORD(v72) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_372:
          *(this + 26) = v72;
          goto LABEL_466;
        default:
          if ((PB::Reader::skip(a2, v10 >> 3, v21, 0) & 1) == 0)
          {
            goto LABEL_472;
          }

          goto LABEL_466;
      }
    }

    v14 = 0;
    v15 = 0;
    v10 = 0;
    v16 = v3 >= v2;
    v17 = v3 - v2;
    if (!v16)
    {
      v17 = 0;
    }

    v18 = (v7 + v2);
    v19 = v2 + 1;
    while (v17)
    {
      v20 = *v18;
      *(a2 + 1) = v19;
      v10 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
      }

      v14 += 7;
      --v17;
      ++v18;
      ++v19;
      v48 = v15++ > 8;
      if (v48)
      {
LABEL_18:
        v10 = 0;
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_470:
  v368 = v4 ^ 1;
  return v368 & 1;
}

uint64_t CMMsl::BatchedPPGData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 140);
  if ((v4 & 0x100) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 136), 1u);
    v4 = *(v3 + 140);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 120), 2u);
  v4 = *(v3 + 140);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

LABEL_28:
    this = PB::Writer::writeVarInt(a2, *(v3 + 124), 4u);
    if ((*(v3 + 140) & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_27:
  this = PB::Writer::writeVarInt(a2, *(v3 + 128), 3u);
  v4 = *(v3 + 140);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_5:
  if ((v4 & 0x80) != 0)
  {
LABEL_6:
    this = PB::Writer::writeVarInt(a2, *(v3 + 132), 5u);
  }

LABEL_7:
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeVarInt(a2, v7, 6u);
  }

  v8 = *(v3 + 56);
  v9 = *(v3 + 64);
  while (v8 != v9)
  {
    v10 = *v8++;
    this = PB::Writer::writeVarInt(a2, v10, 7u);
  }

  v11 = *(v3 + 140);
  if ((v11 & 8) == 0)
  {
    if ((v11 & 4) == 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    this = PB::Writer::writeVarInt(a2, *(v3 + 112), 9u);
    if ((*(v3 + 140) & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 116), 8u);
  v11 = *(v3 + 140);
  if ((v11 & 4) != 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  if ((v11 & 2) != 0)
  {
LABEL_16:
    this = PB::Writer::writeVarInt(a2, *(v3 + 108), 0xAu);
  }

LABEL_17:
  v12 = *(v3 + 32);
  v13 = *(v3 + 40);
  while (v12 != v13)
  {
    v14 = *v12++;
    this = PB::Writer::writeVarInt(a2, v14, 0xBu);
  }

  v15 = *(v3 + 8);
  v16 = *(v3 + 16);
  while (v15 != v16)
  {
    v17 = *v15++;
    this = PB::Writer::writeVarInt(a2, v17, 0xCu);
  }

  if (*(v3 + 140))
  {
    v18 = *(v3 + 104);

    return PB::Writer::writeVarInt(a2, v18, 0xDu);
  }

  return this;
}

BOOL CMMsl::BatchedPPGData::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 140);
  v5 = *(a2 + 140);
  if ((v4 & 0x100) != 0)
  {
    if ((*(a2 + 140) & 0x100) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((*(a2 + 140) & 0x100) != 0)
  {
    return 0;
  }

  if ((v4 & 0x10) != 0)
  {
    if ((v5 & 0x10) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v5 & 0x10) != 0)
  {
    return 0;
  }

  if ((v4 & 0x40) != 0)
  {
    if ((v5 & 0x40) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((v5 & 0x40) != 0)
  {
    return 0;
  }

  if ((v4 & 0x20) != 0)
  {
    if ((v5 & 0x20) == 0 || *(a1 + 124) != *(a2 + 124))
    {
      return 0;
    }
  }

  else if ((v5 & 0x20) != 0)
  {
    return 0;
  }

  if ((v4 & 0x80) != 0)
  {
    if ((v5 & 0x80) == 0 || *(a1 + 132) != *(a2 + 132))
    {
      return 0;
    }
  }

  else if ((v5 & 0x80) != 0)
  {
    return 0;
  }

  result = sub_1000775B0(a1 + 80, a2 + 80);
  if (result)
  {
    result = sub_1000775B0(a1 + 56, a2 + 56);
    if (result)
    {
      v7 = *(a1 + 140);
      v8 = *(a2 + 140);
      if ((v7 & 8) != 0)
      {
        if ((v8 & 8) == 0 || *(a1 + 116) != *(a2 + 116))
        {
          return 0;
        }
      }

      else if ((v8 & 8) != 0)
      {
        return 0;
      }

      if ((v7 & 4) != 0)
      {
        if ((v8 & 4) == 0 || *(a1 + 112) != *(a2 + 112))
        {
          return 0;
        }
      }

      else if ((v8 & 4) != 0)
      {
        return 0;
      }

      if ((v7 & 2) != 0)
      {
        if ((v8 & 2) == 0 || *(a1 + 108) != *(a2 + 108))
        {
          return 0;
        }
      }

      else if ((v8 & 2) != 0)
      {
        return 0;
      }

      result = sub_1000775B0(a1 + 32, a2 + 32);
      if (result)
      {
        result = sub_1000775B0(a1 + 8, a2 + 8);
        if (result)
        {
          v9 = *(a2 + 140);
          result = (v9 & 1) == 0;
          if (*(a1 + 140))
          {
            return (v9 & 1) != 0 && *(a1 + 104) == *(a2 + 104);
          }
        }
      }
    }
  }

  return result;
}

uint64_t CMMsl::BatchedPPGData::hash_value(CMMsl::BatchedPPGData *this)
{
  v2 = *(this + 70);
  if ((v2 & 0x100) != 0)
  {
    v17 = *(this + 34);
    if ((v2 & 0x10) != 0)
    {
LABEL_3:
      v16 = *(this + 30);
      if ((v2 & 0x40) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  if ((v2 & 0x40) != 0)
  {
LABEL_4:
    v3 = *(this + 32);
    if ((v2 & 0x20) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v4 = 0;
    if ((v2 & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v3 = 0;
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v4 = *(this + 31);
  if ((v2 & 0x80) != 0)
  {
LABEL_6:
    v5 = *(this + 33);
    goto LABEL_12;
  }

LABEL_11:
  v5 = 0;
LABEL_12:
  v6 = PBHashBytes();
  v7 = PBHashBytes();
  v8 = *(this + 70);
  if ((v8 & 8) == 0)
  {
    v9 = 0;
    if ((v8 & 4) != 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v10 = 0;
    if ((v8 & 2) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v9 = *(this + 29);
  if ((v8 & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v10 = *(this + 28);
  if ((v8 & 2) != 0)
  {
LABEL_15:
    v11 = *(this + 27);
    goto LABEL_19;
  }

LABEL_18:
  v11 = 0;
LABEL_19:
  v12 = PBHashBytes();
  v13 = PBHashBytes();
  if (*(this + 70))
  {
    v14 = *(this + 26);
  }

  else
  {
    v14 = 0;
  }

  return v16 ^ v17 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

uint64_t CMMsl::BatterySaverModeStatus::BatterySaverModeStatus(uint64_t this)
{
  *this = off_10041D200;
  *(this + 12) = 0;
  return this;
}

{
  *this = off_10041D200;
  *(this + 12) = 0;
  return this;
}

void CMMsl::BatterySaverModeStatus::~BatterySaverModeStatus(CMMsl::BatterySaverModeStatus *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::BatterySaverModeStatus::BatterySaverModeStatus(uint64_t this, const CMMsl::BatterySaverModeStatus *a2)
{
  *this = off_10041D200;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

{
  *this = off_10041D200;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t CMMsl::BatterySaverModeStatus::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = off_10041D200;
    v3 = *(a2 + 8);
    v4 = *(a1 + 12);
    *(a1 + 12) = *(a2 + 12) & 1;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v8 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v7 = off_10041D200;
    v3 = *(a2 + 12);
    *(a2 + 12) = 0;
    v4 = *(a2 + 8);
    v5 = *(a1 + 12);
    *(a1 + 12) = v3;
    v9 = v5;
    LOBYTE(v3) = *(a1 + 8);
    *(a1 + 8) = v4;
    v8 = v3;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::BatterySaverModeStatus *a2, CMMsl::BatterySaverModeStatus *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  LOBYTE(v3) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  return this;
}

uint64_t CMMsl::BatterySaverModeStatus::BatterySaverModeStatus(uint64_t result, uint64_t a2)
{
  *result = off_10041D200;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = off_10041D200;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t CMMsl::BatterySaverModeStatus::formatText(CMMsl::BatterySaverModeStatus *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    PB::TextFormatter::format(a2, "isBatterySaverModeEnabled", *(this + 8));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BatterySaverModeStatus::readFrom(CMMsl::BatterySaverModeStatus *this, PB::Reader *a2)
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
        v17 = 0;
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v2);
        v21 = v2 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_34;
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

        v10 = (v4 & 1) != 0 ? 0 : v17;
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

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 12) |= 1u;
        v2 = *(a2 + 1);
        v3 = *(a2 + 2);
        if (v2 >= v3)
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

        *(this + 8) = v24;
      }

      else
      {
        if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
        {
          v25 = 0;
          return v25 & 1;
        }

        v2 = *(a2 + 1);
        v3 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_34:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t CMMsl::BatterySaverModeStatus::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    return PB::Writer::write(a2, *(this + 8), 1u);
  }

  return this;
}

BOOL CMMsl::BatterySaverModeStatus::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t CMMsl::BatterySaverModeStatus::hash_value(CMMsl::BatterySaverModeStatus *this)
{
  if (*(this + 12))
  {
    return *(this + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t CMMsl::BatteryStatus::BatteryStatus(uint64_t this)
{
  *this = off_10041D238;
  *(this + 28) = 0;
  return this;
}

{
  *this = off_10041D238;
  *(this + 28) = 0;
  return this;
}

void CMMsl::BatteryStatus::~BatteryStatus(CMMsl::BatteryStatus *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::BatteryStatus::BatteryStatus(uint64_t this, const CMMsl::BatteryStatus *a2)
{
  *this = off_10041D238;
  *(this + 28) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 8) != 0)
  {
LABEL_5:
    v5 = *(a2 + 24);
    v3 |= 8u;
    *(this + 28) = v3;
    *(this + 24) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(a2 + 25);
    v3 |= 0x10u;
    *(this + 28) = v3;
    *(this + 25) = v6;
    v2 = *(a2 + 28);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 5);
  v3 |= 4u;
  *(this + 28) = v3;
  *(this + 20) = v7;
  v2 = *(a2 + 28);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 2) == 0)
    {
      return this;
    }

LABEL_14:
    v9 = *(a2 + 4);
    *(this + 28) = v3 | 2;
    *(this + 16) = v9;
    return this;
  }

LABEL_13:
  v8 = *(a2 + 26);
  v3 |= 0x20u;
  *(this + 28) = v3;
  *(this + 26) = v8;
  if ((*(a2 + 28) & 2) != 0)
  {
    goto LABEL_14;
  }

  return this;
}

uint64_t CMMsl::BatteryStatus::operator=(uint64_t a1, const CMMsl::BatteryStatus *a2)
{
  if (a1 != a2)
  {
    CMMsl::BatteryStatus::BatteryStatus(&v9, a2);
    v3 = *(a1 + 28);
    *(a1 + 28) = v15;
    v15 = v3;
    LOWORD(v3) = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v3;
    LOBYTE(v3) = *(a1 + 26);
    *(a1 + 26) = v14;
    v14 = v3;
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

double CMMsl::swap(CMMsl *this, CMMsl::BatteryStatus *a2, CMMsl::BatteryStatus *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  LOBYTE(v3) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  LOBYTE(v3) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v3;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  LOBYTE(v5) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  return result;
}

double CMMsl::BatteryStatus::BatteryStatus(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D238;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = off_10041D238;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::BatteryStatus::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v15[0] = off_10041D238;
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 24);
    v6 = *(a2 + 25);
    v7 = *(a2 + 26);
    v9 = *(a2 + 16);
    v8 = *(a2 + 20);
    v10 = *(a1 + 28);
    *(a1 + 28) = v3;
    v21 = v10;
    v11 = *(a1 + 8);
    *(a1 + 8) = v4;
    v15[1] = v11;
    LOBYTE(v3) = *(a1 + 24);
    *(a1 + 24) = v5;
    v18 = v3;
    LOBYTE(v3) = *(a1 + 25);
    *(a1 + 25) = v6;
    v19 = v3;
    LOBYTE(v3) = *(a1 + 26);
    *(a1 + 26) = v7;
    v20 = v3;
    v13 = *(a1 + 16);
    v12 = *(a1 + 20);
    *(a1 + 16) = v9;
    *(a1 + 20) = v8;
    v16 = v13;
    v17 = v12;
    PB::Base::~Base(v15);
  }

  return a1;
}

uint64_t CMMsl::BatteryStatus::formatText(CMMsl::BatteryStatus *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "charged", *(this + 24));
    v5 = *(this + 28);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "chargerFamily", *(this + 4));
  v5 = *(this + 28);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "chargerType", *(this + 5));
  v5 = *(this + 28);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "connected", *(this + 25));
  v5 = *(this + 28);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "level", *(this + 1));
  if ((*(this + 28) & 0x20) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(a2, "wasConnected", *(this + 26));
  }

LABEL_8:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BatteryStatus::readFrom(CMMsl::BatteryStatus *this, PB::Reader *a2)
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
            goto LABEL_91;
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
      if ((v10 >> 3) > 3)
      {
        switch(v22)
        {
          case 4:
            *(this + 28) |= 4u;
            v33 = *(a2 + 1);
            v2 = *(a2 + 2);
            v34 = *a2;
            if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
            {
              v45 = 0;
              v46 = 0;
              v37 = 0;
              if (v2 <= v33)
              {
                v2 = *(a2 + 1);
              }

              v47 = v2 - v33;
              v48 = (v34 + v33);
              v49 = v33 + 1;
              while (1)
              {
                if (!v47)
                {
                  LODWORD(v37) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_82;
                }

                v50 = v49;
                v51 = *v48;
                *(a2 + 1) = v50;
                v37 |= (v51 & 0x7F) << v45;
                if ((v51 & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                --v47;
                ++v48;
                v49 = v50 + 1;
                v14 = v46++ > 8;
                if (v14)
                {
                  LODWORD(v37) = 0;
                  goto LABEL_81;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v37) = 0;
              }

LABEL_81:
              v2 = v50;
            }

            else
            {
              v35 = 0;
              v36 = 0;
              v37 = 0;
              v38 = (v34 + v33);
              v39 = v33 + 1;
              while (1)
              {
                v2 = v39;
                *(a2 + 1) = v39;
                v40 = *v38++;
                v37 |= (v40 & 0x7F) << v35;
                if ((v40 & 0x80) == 0)
                {
                  break;
                }

                v35 += 7;
                ++v39;
                v14 = v36++ > 8;
                if (v14)
                {
                  LODWORD(v37) = 0;
                  break;
                }
              }
            }

LABEL_82:
            *(this + 5) = v37;
            goto LABEL_87;
          case 5:
            *(this + 28) |= 0x20u;
            v2 = *(a2 + 1);
            if (v2 >= *(a2 + 2))
            {
              v44 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v43 = *(*a2 + v2++);
              *(a2 + 1) = v2;
              v44 = v43 != 0;
            }

            *(this + 26) = v44;
            goto LABEL_87;
          case 6:
            *(this + 28) |= 2u;
            v25 = *(a2 + 1);
            v2 = *(a2 + 2);
            v26 = *a2;
            if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
            {
              v52 = 0;
              v53 = 0;
              v29 = 0;
              if (v2 <= v25)
              {
                v2 = *(a2 + 1);
              }

              v54 = v2 - v25;
              v55 = (v26 + v25);
              v56 = v25 + 1;
              while (1)
              {
                if (!v54)
                {
                  LODWORD(v29) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_86;
                }

                v57 = v56;
                v58 = *v55;
                *(a2 + 1) = v57;
                v29 |= (v58 & 0x7F) << v52;
                if ((v58 & 0x80) == 0)
                {
                  break;
                }

                v52 += 7;
                --v54;
                ++v55;
                v56 = v57 + 1;
                v14 = v53++ > 8;
                if (v14)
                {
                  LODWORD(v29) = 0;
                  goto LABEL_85;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v29) = 0;
              }

LABEL_85:
              v2 = v57;
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
                v2 = v31;
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
                  LODWORD(v29) = 0;
                  break;
                }
              }
            }

LABEL_86:
            *(this + 4) = v29;
            goto LABEL_87;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
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

            goto LABEL_87;
          case 2:
            *(this + 28) |= 8u;
            v2 = *(a2 + 1);
            if (v2 >= *(a2 + 2))
            {
              v42 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v41 = *(*a2 + v2++);
              *(a2 + 1) = v2;
              v42 = v41 != 0;
            }

            *(this + 24) = v42;
            goto LABEL_87;
          case 3:
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
            goto LABEL_87;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v59 = 0;
        return v59 & 1;
      }

      v2 = *(a2 + 1);
LABEL_87:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_91:
  v59 = v4 ^ 1;
  return v59 & 1;
}

uint64_t CMMsl::BatteryStatus::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 28);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 24), 2u);
  v4 = *(v3 + 28);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = PB::Writer::write(a2, *(v3 + 25), 3u);
  v4 = *(v3 + 28);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = PB::Writer::write(a2, *(v3 + 26), 5u);
    if ((*(v3 + 28) & 2) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = PB::Writer::writeVarInt(a2, *(v3 + 20), 4u);
  v4 = *(v3 + 28);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_13:
  v5 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2, v5, 6u);
}

BOOL CMMsl::BatteryStatus::operator==(uint64_t a1, uint64_t a2)
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

  if ((*(a1 + 28) & 0x20) != 0)
  {
    if ((*(a2 + 28) & 0x20) == 0 || *(a1 + 26) != *(a2 + 26))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 0x20) != 0)
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

uint64_t CMMsl::BatteryStatus::hash_value(CMMsl::BatteryStatus *this)
{
  if (*(this + 28))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 28) & 8) != 0)
    {
LABEL_3:
      v2 = *(this + 24);
      if ((*(this + 28) & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v1 = 0.0;
    if ((*(this + 28) & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 28) & 0x10) != 0)
  {
LABEL_4:
    v3 = *(this + 25);
    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v3 = 0;
  if ((*(this + 28) & 4) != 0)
  {
LABEL_5:
    v4 = *(this + 5);
    if ((*(this + 28) & 0x20) != 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    v5 = 0;
    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    v6 = 0;
    return v2 ^ *&v1 ^ v3 ^ v4 ^ v5 ^ v6;
  }

LABEL_13:
  v4 = 0;
  if ((*(this + 28) & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  v5 = *(this + 26);
  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  v6 = *(this + 4);
  return v2 ^ *&v1 ^ v3 ^ v4 ^ v5 ^ v6;
}

uint64_t CMMsl::BioMotionAnchor::BioMotionAnchor(uint64_t this)
{
  *this = off_10041D270;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 52) = 0;
  return this;
}

{
  *this = off_10041D270;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 52) = 0;
  return this;
}

void CMMsl::BioMotionAnchor::~BioMotionAnchor(CMMsl::BioMotionAnchor *this)
{
  *this = off_10041D270;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
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
  CMMsl::BioMotionAnchor::~BioMotionAnchor(this);

  operator delete();
}

CMMsl::BioMotionAnchor *CMMsl::BioMotionAnchor::BioMotionAnchor(CMMsl::BioMotionAnchor *this, const CMMsl::BioMotionAnchor *a2)
{
  *(this + 1) = 0;
  *this = off_10041D270;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 13) = 0;
  if (*(a2 + 5))
  {
    operator new();
  }

  if (this != a2)
  {
    sub_100035BF0(this + 1, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
  }

  v4 = *(a2 + 52);
  if (v4)
  {
    v5 = *(a2 + 4);
    *(this + 52) |= 1u;
    *(this + 4) = v5;
    v4 = *(a2 + 52);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 48);
    *(this + 52) |= 2u;
    *(this + 48) = v6;
  }

  return this;
}

uint64_t CMMsl::BioMotionAnchor::operator=(uint64_t a1, const CMMsl::BioMotionAnchor *a2)
{
  if (a1 != a2)
  {
    CMMsl::BioMotionAnchor::BioMotionAnchor(v9, a2);
    v3 = *(a1 + 52);
    *(a1 + 52) = v15;
    v15 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v6;
    v7 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v7;
    LOBYTE(v6) = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v6;
    CMMsl::BioMotionAnchor::~BioMotionAnchor(v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::BioMotionAnchor *a2, CMMsl::BioMotionAnchor *a3)
{
  v3 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  LOBYTE(v7) = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v7;
  return result;
}

uint64_t CMMsl::BioMotionAnchor::BioMotionAnchor(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D270;
  *(a1 + 8) = 0;
  v4 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 52) = *(a2 + 52);
  *(a2 + 52) = 0;
  v5 = *(a2 + 40);
  *(a2 + 40) = 0;
  v6 = *(a1 + 40);
  *(a1 + 40) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_1002A2DD0(v4, (a2 + 8));
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t CMMsl::BioMotionAnchor::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::BioMotionAnchor::BioMotionAnchor(v9, a2);
    v3 = *(a1 + 52);
    *(a1 + 52) = v15;
    v15 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v6;
    v7 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v7;
    LOBYTE(v6) = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v6;
    CMMsl::BioMotionAnchor::~BioMotionAnchor(v9);
  }

  return a1;
}

uint64_t CMMsl::BioMotionAnchor::formatText(CMMsl::BioMotionAnchor *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 52))
  {
    PB::TextFormatter::format(a2, "bioMotionTimestamp", *(this + 4));
  }

  v5 = *(this + 5);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "pose");
  }

  if ((*(this + 52) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "runSmoother", *(this + 48));
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "velocity", v8);
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BioMotionAnchor::readFrom(CMMsl::BioMotionAnchor *this, PB::Reader *a2)
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
            goto LABEL_80;
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
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_80;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        break;
      }

      if (v23 == 1)
      {
        operator new();
      }

      if (v23 != 2)
      {
        goto LABEL_49;
      }

      if (v22 != 2)
      {
        v46 = *(this + 2);
        v45 = *(this + 3);
        if (v46 >= v45)
        {
          v48 = *(this + 1);
          v49 = v46 - v48;
          v50 = (v46 - v48) >> 3;
          v51 = v50 + 1;
          if ((v50 + 1) >> 61)
          {
LABEL_83:
            sub_10000CD24();
          }

          v52 = v45 - v48;
          if (v52 >> 2 > v51)
          {
            v51 = v52 >> 2;
          }

          if (v52 >= 0x7FFFFFFFFFFFFFF8)
          {
            v53 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v53 = v51;
          }

          if (v53)
          {
            sub_10000CDCC(this + 8, v53);
          }

          v54 = (v46 - v48) >> 3;
          v55 = (8 * v50);
          v56 = (8 * v50 - 8 * v54);
          *v55 = 0;
          v47 = v55 + 1;
          memcpy(v56, v48, v49);
          v57 = *(this + 1);
          *(this + 1) = v56;
          *(this + 2) = v47;
          *(this + 3) = 0;
          if (v57)
          {
            operator delete(v57);
          }
        }

        else
        {
          *v46 = 0;
          v47 = v46 + 8;
        }

        *(this + 2) = v47;
        v58 = *(a2 + 1);
        if (v58 > 0xFFFFFFFFFFFFFFF7 || v58 + 8 > *(a2 + 2))
        {
LABEL_73:
          *(a2 + 24) = 1;
          goto LABEL_76;
        }

        *(v47 - 1) = *(*a2 + v58);
        goto LABEL_75;
      }

      if (PB::Reader::placeMark())
      {
        goto LABEL_82;
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
          v31 = (v27 - v29) >> 3;
          v32 = v31 + 1;
          if ((v31 + 1) >> 61)
          {
            goto LABEL_83;
          }

          v33 = v26 - v29;
          if (v33 >> 2 > v32)
          {
            v32 = v33 >> 2;
          }

          if (v33 >= 0x7FFFFFFFFFFFFFF8)
          {
            v34 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v32;
          }

          if (v34)
          {
            sub_10000CDCC(this + 8, v34);
          }

          v35 = (v27 - v29) >> 3;
          v36 = (8 * v31);
          v37 = (8 * v31 - 8 * v35);
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
          v28 = v27 + 8;
        }

        *(this + 2) = v28;
        v39 = *(a2 + 1);
        if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(a2 + 2))
        {
          *(a2 + 24) = 1;
          break;
        }

        *(v28 - 1) = *(*a2 + v39);
        v25 = *(a2 + 2);
        v24 = *(a2 + 1) + 8;
        *(a2 + 1) = v24;
      }

      PB::Reader::recallMark();
LABEL_76:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_80;
      }
    }

    if (v23 == 3)
    {
      *(this + 52) |= 1u;
      v44 = *(a2 + 1);
      if (v44 > 0xFFFFFFFFFFFFFFF7 || v44 + 8 > *(a2 + 2))
      {
        goto LABEL_73;
      }

      *(this + 4) = *(*a2 + v44);
LABEL_75:
      *(a2 + 1) += 8;
      goto LABEL_76;
    }

    if (v23 == 4)
    {
      *(this + 52) |= 2u;
      v40 = *(a2 + 1);
      if (v40 >= *(a2 + 2))
      {
        v43 = 0;
        *(a2 + 24) = 1;
      }

      else
      {
        v41 = v40 + 1;
        v42 = *(*a2 + v40);
        *(a2 + 1) = v41;
        v43 = v42 != 0;
      }

      *(this + 48) = v43;
      goto LABEL_76;
    }

LABEL_49:
    if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
    {
LABEL_82:
      v59 = 0;
      return v59 & 1;
    }

    goto LABEL_76;
  }

LABEL_80:
  v59 = v4 ^ 1;
  return v59 & 1;
}

double CMMsl::Pose::Pose(CMMsl::Pose *this)
{
  *this = off_100421058;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = off_100421058;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

uint64_t CMMsl::BioMotionAnchor::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
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

  v8 = *(v3 + 52);
  if (v8)
  {
    this = PB::Writer::write(a2, *(v3 + 32), 3u);
    v8 = *(v3 + 52);
  }

  if ((v8 & 2) != 0)
  {
    v9 = *(v3 + 48);

    return PB::Writer::write(a2, v9, 4u);
  }

  return this;
}

BOOL CMMsl::BioMotionAnchor::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = *(a2 + 40);
  if (v4)
  {
    if (!v5 || !CMMsl::Pose::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a2 + 8);
  if (v6 - v7 == *(a2 + 16) - v8)
  {
    while (v7 != v6)
    {
      if (*v7 != *v8)
      {
        return 0;
      }

      ++v7;
      ++v8;
    }

    if (*(a1 + 52))
    {
      if ((*(a2 + 52) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
      {
        return 0;
      }
    }

    else if (*(a2 + 52))
    {
      return 0;
    }

    result = (*(a2 + 52) & 2) == 0;
    if ((*(a1 + 52) & 2) == 0)
    {
      return result;
    }

    if ((*(a2 + 52) & 2) != 0 && *(a1 + 48) == *(a2 + 48))
    {
      return 1;
    }
  }

  return 0;
}

BOOL CMMsl::Pose::operator==(uint64_t a1, uint64_t a2)
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

  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v2 - v3 != *(a2 + 16) - v4)
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

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a2 + 32);
  if (v5 - v6 != *(a2 + 40) - v7)
  {
    return 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  v8 = v6 + 8;
  do
  {
    v9 = *v7++;
    result = *(v8 - 8) == v9;
    v11 = *(v8 - 8) != v9 || v8 == v5;
    v8 += 8;
  }

  while (!v11);
  return result;
}

uint64_t CMMsl::BioMotionAnchor::hash_value(CMMsl::BioMotionAnchor *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = CMMsl::Pose::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = PBHashBytes();
  if (*(this + 52))
  {
    v5 = *(this + 4);
    if (v5 == 0.0)
    {
      v5 = 0.0;
    }

    if ((*(this + 52) & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v6 = 0;
    return v4 ^ v3 ^ *&v5 ^ v6;
  }

  v5 = 0.0;
  if ((*(this + 52) & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  v6 = *(this + 48);
  return v4 ^ v3 ^ *&v5 ^ v6;
}

void *CMMsl::BioMotionAnchor::makePose(void *this)
{
  if (!this[5])
  {
    operator new();
  }

  return this;
}

void *CMMsl::BioMotionAnchorPose::BioMotionAnchorPose(void *this)
{
  *this = off_10041D2A8;
  this[1] = 0;
  return this;
}

{
  *this = off_10041D2A8;
  this[1] = 0;
  return this;
}

void CMMsl::BioMotionAnchorPose::~BioMotionAnchorPose(CMMsl::BioMotionAnchorPose *this)
{
  v2 = *(this + 1);
  *this = off_10041D2A8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::BioMotionAnchorPose::~BioMotionAnchorPose(this);

  operator delete();
}

CMMsl::BioMotionAnchorPose *CMMsl::BioMotionAnchorPose::BioMotionAnchorPose(CMMsl::BioMotionAnchorPose *this, const CMMsl::BioMotionAnchor **a2)
{
  *this = off_10041D2A8;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::BioMotionAnchorPose::operator=(uint64_t a1, const CMMsl::BioMotionAnchor **a2)
{
  if (a1 != a2)
  {
    CMMsl::BioMotionAnchorPose::BioMotionAnchorPose(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::BioMotionAnchorPose::~BioMotionAnchorPose(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::BioMotionAnchorPose *a2, CMMsl::BioMotionAnchorPose *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::BioMotionAnchorPose::BioMotionAnchorPose(void *a1, uint64_t a2)
{
  *a1 = off_10041D2A8;
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
  *a1 = off_10041D2A8;
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

uint64_t CMMsl::BioMotionAnchorPose::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_10041D2A8;
    v6[1] = v4;
    CMMsl::BioMotionAnchorPose::~BioMotionAnchorPose(v6);
  }

  return a1;
}

uint64_t CMMsl::BioMotionAnchorPose::formatText(CMMsl::BioMotionAnchorPose *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BioMotionAnchorPose::readFrom(CMMsl::BioMotionAnchorPose *this, PB::Reader *a2)
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

uint64_t CMMsl::BioMotionAnchorPose::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

BOOL CMMsl::BioMotionAnchorPose::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::BioMotionAnchor::operator==(v2, v3);
  }

  return result;
}

CMMsl::BioMotionAnchor *CMMsl::BioMotionAnchorPose::hash_value(CMMsl::BioMotionAnchorPose *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::BioMotionAnchor::hash_value(result);
  }

  return result;
}

void *CMMsl::BioMotionAnchorPose::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::BioMotionClassification::BioMotionClassification(uint64_t this)
{
  *this = off_10041D2E0;
  *(this + 48) = 0;
  return this;
}

{
  *this = off_10041D2E0;
  *(this + 48) = 0;
  return this;
}

void CMMsl::BioMotionClassification::~BioMotionClassification(CMMsl::BioMotionClassification *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::BioMotionClassification::BioMotionClassification(CMMsl::BioMotionClassification *this, const CMMsl::BioMotionClassification *a2)
{
  *this = off_10041D2E0;
  *(this + 12) = 0;
  v2 = *(a2 + 48);
  if ((v2 & 0x10) != 0)
  {
    result = *(a2 + 5);
    v3 = 16;
    *(this + 48) = 16;
    *(this + 5) = result;
    v2 = *(a2 + 48);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 48) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 48) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 48);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    result = *(a2 + 4);
    v3 |= 8u;
    *(this + 48) = v3;
    *(this + 4) = result;
    v2 = *(a2 + 48);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        return result;
      }

LABEL_12:
      result = *(a2 + 1);
      *(this + 48) = v3 | 1;
      *(this + 1) = result;
      return result;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 3);
  v3 |= 4u;
  *(this + 48) = v3;
  *(this + 3) = result;
  if (*(a2 + 48))
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t CMMsl::BioMotionClassification::operator=(uint64_t a1, const CMMsl::BioMotionClassification *a2)
{
  if (a1 != a2)
  {
    CMMsl::BioMotionClassification::BioMotionClassification(v9, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v13;
    v13 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v4;
    v5 = v10;
    v6 = *(a1 + 24);
    *(a1 + 24) = v11;
    v7 = *(a1 + 8);
    *(a1 + 8) = v5;
    v10 = v7;
    v11 = v6;
    PB::Base::~Base(v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::BioMotionClassification *a2, CMMsl::BioMotionClassification *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::BioMotionClassification::BioMotionClassification(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D2E0;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = off_10041D2E0;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::BioMotionClassification::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v10 = off_10041D2E0;
    v3 = *(a2 + 48);
    *(a2 + 48) = 0;
    v4 = *(a2 + 40);
    v14 = *(a1 + 48);
    v13 = *(a1 + 40);
    v5 = *(a1 + 24);
    v6 = *(a1 + 8);
    v7 = *(a2 + 8);
    v8 = *(a2 + 24);
    *(a1 + 48) = v3;
    *(a1 + 40) = v4;
    *(a1 + 24) = v8;
    *(a1 + 8) = v7;
    v11 = v6;
    v12 = v5;
    PB::Base::~Base(&v10);
  }

  return a1;
}

uint64_t CMMsl::BioMotionClassification::formatText(CMMsl::BioMotionClassification *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 48);
  if (v5)
  {
    PB::TextFormatter::format(a2, "probabilityGenericMotion", *(this + 1));
    v5 = *(this + 48);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "probabilityHeadMotion", *(this + 2));
  v5 = *(this + 48);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(a2, "probabilityPedestrianMotion", *(this + 3));
  v5 = *(this + 48);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "probabilityTorsoMotion", *(this + 4));
  if ((*(this + 48) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "timestamp", *(this + 5));
  }

LABEL_7:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BioMotionClassification::readFrom(CMMsl::BioMotionClassification *this, PB::Reader *a2)
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
            goto LABEL_51;
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
          *(this + 48) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_42:
            *(a2 + 24) = 1;
            goto LABEL_47;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_46;
        }

        if (v22 == 2)
        {
          *(this + 48) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_42;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_46;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(this + 48) |= 8u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_42;
            }

            *(this + 4) = *(*a2 + v2);
            goto LABEL_46;
          case 4:
            *(this + 48) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_42;
            }

            *(this + 3) = *(*a2 + v2);
            goto LABEL_46;
          case 5:
            *(this + 48) |= 1u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_42;
            }

            *(this + 1) = *(*a2 + v2);
LABEL_46:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
            goto LABEL_47;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_47:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_51:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::BioMotionClassification::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 48);
  if ((v4 & 0x10) != 0)
  {
    this = PB::Writer::write(a2, *(this + 40), 1u);
    v4 = *(v3 + 48);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16), 2u);
  v4 = *(v3 + 48);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = PB::Writer::write(a2, *(v3 + 24), 4u);
    if ((*(v3 + 48) & 1) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = PB::Writer::write(a2, *(v3 + 32), 3u);
  v4 = *(v3 + 48);
  if ((v4 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_11:
  v5 = *(v3 + 8);

  return PB::Writer::write(a2, v5, 5u);
}

BOOL CMMsl::BioMotionClassification::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 48) & 0x10) != 0)
  {
    if ((*(a2 + 48) & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 48) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 48) & 2) != 0)
  {
    if ((*(a2 + 48) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 48) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 48) & 8) != 0)
  {
    if ((*(a2 + 48) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 48) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 48) & 4) != 0)
  {
    if ((*(a2 + 48) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 48) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 48) & 1) == 0;
  if (*(a1 + 48))
  {
    return (*(a2 + 48) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t CMMsl::BioMotionClassification::hash_value(CMMsl::BioMotionClassification *this)
{
  if ((*(this + 48) & 0x10) == 0)
  {
    v1 = 0.0;
    if ((*(this + 48) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_18:
    v2 = 0.0;
    if ((*(this + 48) & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_19:
    v3 = 0.0;
    if ((*(this + 48) & 4) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  v1 = *(this + 5);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 48) & 2) == 0)
  {
    goto LABEL_18;
  }

LABEL_3:
  v2 = *(this + 2);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 48) & 8) == 0)
  {
    goto LABEL_19;
  }

LABEL_6:
  v3 = *(this + 4);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 48) & 4) != 0)
  {
LABEL_9:
    v4 = *(this + 3);
    if (v4 == 0.0)
    {
      v4 = 0.0;
    }

    if (*(this + 48))
    {
      goto LABEL_12;
    }

LABEL_21:
    v5 = 0.0;
    return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ *&v5;
  }

LABEL_20:
  v4 = 0.0;
  if ((*(this + 48) & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  v5 = *(this + 1);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ *&v5;
}

double CMMsl::BioMotionLinkLengthFitParameters::BioMotionLinkLengthFitParameters(CMMsl::BioMotionLinkLengthFitParameters *this)
{
  *this = off_10041D318;
  *(this + 36) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

{
  *this = off_10041D318;
  *(this + 36) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

void CMMsl::BioMotionLinkLengthFitParameters::~BioMotionLinkLengthFitParameters(CMMsl::BioMotionLinkLengthFitParameters *this)
{
  *this = off_10041D318;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::BioMotionLinkLengthFitParameters::~BioMotionLinkLengthFitParameters(this);

  operator delete();
}

CMMsl::BioMotionLinkLengthFitParameters *CMMsl::BioMotionLinkLengthFitParameters::BioMotionLinkLengthFitParameters(CMMsl::BioMotionLinkLengthFitParameters *this, const CMMsl::BioMotionLinkLengthFitParameters *a2)
{
  *this = off_10041D318;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  v5 = (this + 56);
  *(this + 36) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  if ((*(a2 + 144) & 4) != 0)
  {
    v6 = *(a2 + 15);
    *(this + 144) = 4;
    *(this + 15) = v6;
  }

  if (this != a2)
  {
    sub_100035BF0(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
    sub_100035BF0(this + 10, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 3);
    sub_100035BF0(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
    sub_100035BF0(v5, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
  }

  v7 = *(a2 + 144);
  if (v7)
  {
    v10 = *(a2 + 13);
    *(this + 144) |= 1u;
    *(this + 13) = v10;
    v7 = *(a2 + 144);
    if ((v7 & 2) == 0)
    {
LABEL_7:
      if ((v7 & 8) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      v12 = *(a2 + 16);
      *(this + 144) |= 8u;
      *(this + 16) = v12;
      if ((*(a2 + 144) & 0x10) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a2 + 144) & 2) == 0)
  {
    goto LABEL_7;
  }

  v11 = *(a2 + 14);
  *(this + 144) |= 2u;
  *(this + 14) = v11;
  v7 = *(a2 + 144);
  if ((v7 & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v7 & 0x10) != 0)
  {
LABEL_9:
    v8 = *(a2 + 17);
    *(this + 144) |= 0x10u;
    *(this + 17) = v8;
  }

  return this;
}

CMMsl *CMMsl::BioMotionLinkLengthFitParameters::operator=(CMMsl *a1, const CMMsl::BioMotionLinkLengthFitParameters *a2)
{
  if (a1 != a2)
  {
    CMMsl::BioMotionLinkLengthFitParameters::BioMotionLinkLengthFitParameters(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::BioMotionLinkLengthFitParameters::~BioMotionLinkLengthFitParameters(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::BioMotionLinkLengthFitParameters *a2, CMMsl::BioMotionLinkLengthFitParameters *a3)
{
  v3 = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v3;
  v4 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v8;
  v9 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v9;
  v10 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v10;
  v11 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v11;
  v12 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v12;
  v13 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v13;
  v14 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v14;
  v15 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v15;
  v16 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v16;
  v17 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v17;
  v18 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v18;
  v19 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v19;
  result = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = result;
  return result;
}

uint64_t CMMsl::BioMotionLinkLengthFitParameters::BioMotionLinkLengthFitParameters(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D318;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  v4 = a1 + 56;
  *(a1 + 8) = 0u;
  v5 = a1 + 8;
  *(a1 + 88) = 0u;
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = 0;
  *(a1 + 120) = *(a2 + 120);
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  sub_1002A2DD0(a1 + 80, (a2 + 80));
  sub_1002A2DD0(v5, (a2 + 8));
  sub_1002A2DD0(v4, (a2 + 56));
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

CMMsl *CMMsl::BioMotionLinkLengthFitParameters::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::BioMotionLinkLengthFitParameters::BioMotionLinkLengthFitParameters(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::BioMotionLinkLengthFitParameters::~BioMotionLinkLengthFitParameters(v5);
  }

  return a1;
}

uint64_t CMMsl::BioMotionLinkLengthFitParameters::formatText(CMMsl::BioMotionLinkLengthFitParameters *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "centerOfRotationEstVars", v7);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "centerOfRotationEsts", v10);
  }

  v11 = *(this + 7);
  v12 = *(this + 8);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(a2, "linkLengthEstVars", v13);
  }

  v14 = *(this + 10);
  v15 = *(this + 11);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(a2, "linkLengthEsts", v16);
  }

  v17 = *(this + 144);
  if (v17)
  {
    PB::TextFormatter::format(a2, "positionResidualNormMean", *(this + 13));
    v17 = *(this + 144);
    if ((v17 & 2) == 0)
    {
LABEL_11:
      if ((v17 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

  else if ((*(this + 144) & 2) == 0)
  {
    goto LABEL_11;
  }

  PB::TextFormatter::format(a2, "positionResidualNormVar", *(this + 14));
  v17 = *(this + 144);
  if ((v17 & 4) == 0)
  {
LABEL_12:
    if ((v17 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "timestamp", *(this + 15));
  v17 = *(this + 144);
  if ((v17 & 8) == 0)
  {
LABEL_13:
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "timestampBegin", *(this + 16));
  if ((*(this + 144) & 0x10) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(a2, "timestampEnd", *(this + 17));
  }

LABEL_15:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BioMotionLinkLengthFitParameters::readFrom(CMMsl::BioMotionLinkLengthFitParameters *this, PB::Reader *a2)
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
                goto LABEL_196;
              }

              v59 = *(a2 + 1);
              v60 = *(a2 + 2);
              while (v59 < v60 && (*(a2 + 24) & 1) == 0)
              {
                v62 = *(this + 11);
                v61 = *(this + 12);
                if (v62 >= v61)
                {
                  v64 = *(this + 10);
                  v65 = v62 - v64;
                  v66 = (v62 - v64) >> 3;
                  v67 = v66 + 1;
                  if ((v66 + 1) >> 61)
                  {
                    goto LABEL_197;
                  }

                  v68 = v61 - v64;
                  if (v68 >> 2 > v67)
                  {
                    v67 = v68 >> 2;
                  }

                  if (v68 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v69 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v69 = v67;
                  }

                  if (v69)
                  {
                    sub_10000CDCC(this + 80, v69);
                  }

                  v70 = (v62 - v64) >> 3;
                  v71 = (8 * v66);
                  v72 = (8 * v66 - 8 * v70);
                  *v71 = 0;
                  v63 = v71 + 1;
                  memcpy(v72, v64, v65);
                  v73 = *(this + 10);
                  *(this + 10) = v72;
                  *(this + 11) = v63;
                  *(this + 12) = 0;
                  if (v73)
                  {
                    operator delete(v73);
                  }
                }

                else
                {
                  *v62 = 0;
                  v63 = v62 + 8;
                }

                *(this + 11) = v63;
                v74 = *(a2 + 1);
                if (v74 > 0xFFFFFFFFFFFFFFF7 || v74 + 8 > *(a2 + 2))
                {
LABEL_131:
                  *(a2 + 24) = 1;
                  goto LABEL_132;
                }

                *(v63 - 1) = *(*a2 + v74);
                v60 = *(a2 + 2);
                v59 = *(a2 + 1) + 8;
                *(a2 + 1) = v59;
              }

              goto LABEL_132;
            }

            v99 = *(this + 11);
            v98 = *(this + 12);
            if (v99 >= v98)
            {
              v114 = *(this + 10);
              v115 = v99 - v114;
              v116 = (v99 - v114) >> 3;
              v117 = v116 + 1;
              if ((v116 + 1) >> 61)
              {
                goto LABEL_197;
              }

              v118 = v98 - v114;
              if (v118 >> 2 > v117)
              {
                v117 = v118 >> 2;
              }

              if (v118 >= 0x7FFFFFFFFFFFFFF8)
              {
                v119 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v119 = v117;
              }

              if (v119)
              {
                sub_10000CDCC(this + 80, v119);
              }

              v134 = (v99 - v114) >> 3;
              v135 = (8 * v116);
              v136 = (8 * v116 - 8 * v134);
              *v135 = 0;
              v95 = v135 + 1;
              memcpy(v136, v114, v115);
              v137 = *(this + 10);
              *(this + 10) = v136;
              *(this + 11) = v95;
              *(this + 12) = 0;
              if (v137)
              {
                operator delete(v137);
              }
            }

            else
            {
              *v99 = 0;
              v95 = v99 + 8;
            }

            *(this + 11) = v95;
LABEL_185:
            v142 = *(a2 + 1);
            if (v142 > 0xFFFFFFFFFFFFFFF7 || v142 + 8 > *(a2 + 2))
            {
              goto LABEL_187;
            }

            *(v95 - 1) = *(*a2 + v142);
            goto LABEL_189;
          }

          if (v23 == 4)
          {
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_196;
              }

              v41 = *(a2 + 1);
              v42 = *(a2 + 2);
              while (v41 < v42 && (*(a2 + 24) & 1) == 0)
              {
                v44 = *(this + 2);
                v43 = *(this + 3);
                if (v44 >= v43)
                {
                  v46 = *(this + 1);
                  v47 = v44 - v46;
                  v48 = (v44 - v46) >> 3;
                  v49 = v48 + 1;
                  if ((v48 + 1) >> 61)
                  {
                    goto LABEL_197;
                  }

                  v50 = v43 - v46;
                  if (v50 >> 2 > v49)
                  {
                    v49 = v50 >> 2;
                  }

                  if (v50 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v51 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v51 = v49;
                  }

                  if (v51)
                  {
                    sub_10000CDCC(this + 8, v51);
                  }

                  v52 = (v44 - v46) >> 3;
                  v53 = (8 * v48);
                  v54 = (8 * v48 - 8 * v52);
                  *v53 = 0;
                  v45 = v53 + 1;
                  memcpy(v54, v46, v47);
                  v55 = *(this + 1);
                  *(this + 1) = v54;
                  *(this + 2) = v45;
                  *(this + 3) = 0;
                  if (v55)
                  {
                    operator delete(v55);
                  }
                }

                else
                {
                  *v44 = 0;
                  v45 = v44 + 8;
                }

                *(this + 2) = v45;
                v56 = *(a2 + 1);
                if (v56 > 0xFFFFFFFFFFFFFFF7 || v56 + 8 > *(a2 + 2))
                {
                  goto LABEL_131;
                }

                *(v45 - 1) = *(*a2 + v56);
                v42 = *(a2 + 2);
                v41 = *(a2 + 1) + 8;
                *(a2 + 1) = v41;
              }

              goto LABEL_132;
            }

            v97 = *(this + 2);
            v96 = *(this + 3);
            if (v97 >= v96)
            {
              v108 = *(this + 1);
              v109 = v97 - v108;
              v110 = (v97 - v108) >> 3;
              v111 = v110 + 1;
              if ((v110 + 1) >> 61)
              {
                goto LABEL_197;
              }

              v112 = v96 - v108;
              if (v112 >> 2 > v111)
              {
                v111 = v112 >> 2;
              }

              if (v112 >= 0x7FFFFFFFFFFFFFF8)
              {
                v113 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v113 = v111;
              }

              if (v113)
              {
                sub_10000CDCC(this + 8, v113);
              }

              v130 = (v97 - v108) >> 3;
              v131 = (8 * v110);
              v132 = (8 * v110 - 8 * v130);
              *v131 = 0;
              v95 = v131 + 1;
              memcpy(v132, v108, v109);
              v133 = *(this + 1);
              *(this + 1) = v132;
              *(this + 2) = v95;
              *(this + 3) = 0;
              if (v133)
              {
                operator delete(v133);
              }
            }

            else
            {
              *v97 = 0;
              v95 = v97 + 8;
            }

            *(this + 2) = v95;
            goto LABEL_185;
          }
        }

        else
        {
          if (v23 == 1)
          {
            *(this + 144) |= 4u;
            v58 = *(a2 + 1);
            if (v58 > 0xFFFFFFFFFFFFFFF7 || v58 + 8 > *(a2 + 2))
            {
LABEL_187:
              *(a2 + 24) = 1;
              goto LABEL_190;
            }

            *(this + 15) = *(*a2 + v58);
            goto LABEL_189;
          }

          if (v23 == 2)
          {
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_196;
              }

              v25 = *(a2 + 1);
              v26 = *(a2 + 2);
              while (v25 < v26 && (*(a2 + 24) & 1) == 0)
              {
                v28 = *(this + 5);
                v27 = *(this + 6);
                if (v28 >= v27)
                {
                  v30 = *(this + 4);
                  v31 = v28 - v30;
                  v32 = (v28 - v30) >> 3;
                  v33 = v32 + 1;
                  if ((v32 + 1) >> 61)
                  {
                    goto LABEL_197;
                  }

                  v34 = v27 - v30;
                  if (v34 >> 2 > v33)
                  {
                    v33 = v34 >> 2;
                  }

                  if (v34 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v35 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v35 = v33;
                  }

                  if (v35)
                  {
                    sub_10000CDCC(this + 32, v35);
                  }

                  v36 = (v28 - v30) >> 3;
                  v37 = (8 * v32);
                  v38 = (8 * v32 - 8 * v36);
                  *v37 = 0;
                  v29 = v37 + 1;
                  memcpy(v38, v30, v31);
                  v39 = *(this + 4);
                  *(this + 4) = v38;
                  *(this + 5) = v29;
                  *(this + 6) = 0;
                  if (v39)
                  {
                    operator delete(v39);
                  }
                }

                else
                {
                  *v28 = 0;
                  v29 = v28 + 8;
                }

                *(this + 5) = v29;
                v40 = *(a2 + 1);
                if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(a2 + 2))
                {
                  goto LABEL_131;
                }

                *(v29 - 1) = *(*a2 + v40);
                v26 = *(a2 + 2);
                v25 = *(a2 + 1) + 8;
                *(a2 + 1) = v25;
              }

LABEL_132:
              PB::Reader::recallMark();
              goto LABEL_190;
            }

            v94 = *(this + 5);
            v93 = *(this + 6);
            if (v94 >= v93)
            {
              v102 = *(this + 4);
              v103 = v94 - v102;
              v104 = (v94 - v102) >> 3;
              v105 = v104 + 1;
              if ((v104 + 1) >> 61)
              {
                goto LABEL_197;
              }

              v106 = v93 - v102;
              if (v106 >> 2 > v105)
              {
                v105 = v106 >> 2;
              }

              if (v106 >= 0x7FFFFFFFFFFFFFF8)
              {
                v107 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v107 = v105;
              }

              if (v107)
              {
                sub_10000CDCC(this + 32, v107);
              }

              v126 = (v94 - v102) >> 3;
              v127 = (8 * v104);
              v128 = (8 * v104 - 8 * v126);
              *v127 = 0;
              v95 = v127 + 1;
              memcpy(v128, v102, v103);
              v129 = *(this + 4);
              *(this + 4) = v128;
              *(this + 5) = v95;
              *(this + 6) = 0;
              if (v129)
              {
                operator delete(v129);
              }
            }

            else
            {
              *v94 = 0;
              v95 = v94 + 8;
            }

            *(this + 5) = v95;
            goto LABEL_185;
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
              goto LABEL_196;
            }

            v76 = *(a2 + 1);
            v77 = *(a2 + 2);
            while (v76 < v77 && (*(a2 + 24) & 1) == 0)
            {
              v79 = *(this + 8);
              v78 = *(this + 9);
              if (v79 >= v78)
              {
                v81 = *(this + 7);
                v82 = v79 - v81;
                v83 = (v79 - v81) >> 3;
                v84 = v83 + 1;
                if ((v83 + 1) >> 61)
                {
                  goto LABEL_197;
                }

                v85 = v78 - v81;
                if (v85 >> 2 > v84)
                {
                  v84 = v85 >> 2;
                }

                if (v85 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v86 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v86 = v84;
                }

                if (v86)
                {
                  sub_10000CDCC(this + 56, v86);
                }

                v87 = (v79 - v81) >> 3;
                v88 = (8 * v83);
                v89 = (8 * v83 - 8 * v87);
                *v88 = 0;
                v80 = v88 + 1;
                memcpy(v89, v81, v82);
                v90 = *(this + 7);
                *(this + 7) = v89;
                *(this + 8) = v80;
                *(this + 9) = 0;
                if (v90)
                {
                  operator delete(v90);
                }
              }

              else
              {
                *v79 = 0;
                v80 = v79 + 8;
              }

              *(this + 8) = v80;
              v91 = *(a2 + 1);
              if (v91 > 0xFFFFFFFFFFFFFFF7 || v91 + 8 > *(a2 + 2))
              {
                goto LABEL_131;
              }

              *(v80 - 1) = *(*a2 + v91);
              v77 = *(a2 + 2);
              v76 = *(a2 + 1) + 8;
              *(a2 + 1) = v76;
            }

            goto LABEL_132;
          }

          v101 = *(this + 8);
          v100 = *(this + 9);
          if (v101 >= v100)
          {
            v120 = *(this + 7);
            v121 = v101 - v120;
            v122 = (v101 - v120) >> 3;
            v123 = v122 + 1;
            if ((v122 + 1) >> 61)
            {
LABEL_197:
              sub_10000CD24();
            }

            v124 = v100 - v120;
            if (v124 >> 2 > v123)
            {
              v123 = v124 >> 2;
            }

            if (v124 >= 0x7FFFFFFFFFFFFFF8)
            {
              v125 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v125 = v123;
            }

            if (v125)
            {
              sub_10000CDCC(this + 56, v125);
            }

            v138 = (v101 - v120) >> 3;
            v139 = (8 * v122);
            v140 = (8 * v122 - 8 * v138);
            *v139 = 0;
            v95 = v139 + 1;
            memcpy(v140, v120, v121);
            v141 = *(this + 7);
            *(this + 7) = v140;
            *(this + 8) = v95;
            *(this + 9) = 0;
            if (v141)
            {
              operator delete(v141);
            }
          }

          else
          {
            *v101 = 0;
            v95 = v101 + 8;
          }

          *(this + 8) = v95;
          goto LABEL_185;
        }

        if (v23 == 6)
        {
          *(this + 144) |= 1u;
          v57 = *(a2 + 1);
          if (v57 > 0xFFFFFFFFFFFFFFF7 || v57 + 8 > *(a2 + 2))
          {
            goto LABEL_187;
          }

          *(this + 13) = *(*a2 + v57);
          goto LABEL_189;
        }
      }

      else
      {
        switch(v23)
        {
          case 7:
            *(this + 144) |= 2u;
            v75 = *(a2 + 1);
            if (v75 > 0xFFFFFFFFFFFFFFF7 || v75 + 8 > *(a2 + 2))
            {
              goto LABEL_187;
            }

            *(this + 14) = *(*a2 + v75);
            goto LABEL_189;
          case 8:
            *(this + 144) |= 8u;
            v92 = *(a2 + 1);
            if (v92 > 0xFFFFFFFFFFFFFFF7 || v92 + 8 > *(a2 + 2))
            {
              goto LABEL_187;
            }

            *(this + 16) = *(*a2 + v92);
            goto LABEL_189;
          case 9:
            *(this + 144) |= 0x10u;
            v24 = *(a2 + 1);
            if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
            {
              goto LABEL_187;
            }

            *(this + 17) = *(*a2 + v24);
LABEL_189:
            *(a2 + 1) += 8;
            goto LABEL_190;
        }
      }

      if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
      {
LABEL_196:
        v143 = 0;
        return v143 & 1;
      }

LABEL_190:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

  v143 = v4 ^ 1;
  return v143 & 1;
}

uint64_t CMMsl::BioMotionLinkLengthFitParameters::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if ((*(this + 144) & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 120), 1u);
  }

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
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

  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  while (v10 != v11)
  {
    v12 = *v10++;
    this = PB::Writer::write(a2, v12, 4u);
  }

  v13 = *(v3 + 56);
  v14 = *(v3 + 64);
  while (v13 != v14)
  {
    v15 = *v13++;
    this = PB::Writer::write(a2, v15, 5u);
  }

  v16 = *(v3 + 144);
  if (v16)
  {
    this = PB::Writer::write(a2, *(v3 + 104), 6u);
    v16 = *(v3 + 144);
    if ((v16 & 2) == 0)
    {
LABEL_17:
      if ((v16 & 8) == 0)
      {
        goto LABEL_18;
      }

LABEL_22:
      this = PB::Writer::write(a2, *(v3 + 128), 8u);
      if ((*(v3 + 144) & 0x10) == 0)
      {
        return this;
      }

      goto LABEL_23;
    }
  }

  else if ((*(v3 + 144) & 2) == 0)
  {
    goto LABEL_17;
  }

  this = PB::Writer::write(a2, *(v3 + 112), 7u);
  v16 = *(v3 + 144);
  if ((v16 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  if ((v16 & 0x10) == 0)
  {
    return this;
  }

LABEL_23:
  v17 = *(v3 + 136);

  return PB::Writer::write(a2, v17, 9u);
}

BOOL CMMsl::BioMotionLinkLengthFitParameters::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 144) & 4) != 0)
  {
    if ((*(a2 + 144) & 4) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((*(a2 + 144) & 4) != 0)
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

  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  v10 = *(a2 + 8);
  if (v8 - v9 != *(a2 + 16) - v10)
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

  v12 = *(a1 + 56);
  v11 = *(a1 + 64);
  v13 = *(a2 + 56);
  if (v11 - v12 != *(a2 + 64) - v13)
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

  if (*(a1 + 144))
  {
    if ((*(a2 + 144) & 1) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if (*(a2 + 144))
  {
    return 0;
  }

  if ((*(a1 + 144) & 2) != 0)
  {
    if ((*(a2 + 144) & 2) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((*(a2 + 144) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 144) & 8) != 0)
  {
    if ((*(a2 + 144) & 8) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((*(a2 + 144) & 8) != 0)
  {
    return 0;
  }

  v14 = (*(a2 + 144) & 0x10) == 0;
  if ((*(a1 + 144) & 0x10) != 0)
  {
    return (*(a2 + 144) & 0x10) != 0 && *(a1 + 136) == *(a2 + 136);
  }

  return v14;
}

uint64_t CMMsl::BioMotionLinkLengthFitParameters::hash_value(CMMsl::BioMotionLinkLengthFitParameters *this)
{
  if ((*(this + 144) & 4) != 0)
  {
    if (*(this + 15) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 15);
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
  if ((*(this + 144) & 1) == 0)
  {
    v7 = 0.0;
    if ((*(this + 144) & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    v8 = 0.0;
    if ((*(this + 144) & 8) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

  v7 = *(this + 13);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((*(this + 144) & 2) == 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  v8 = *(this + 14);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((*(this + 144) & 8) != 0)
  {
LABEL_11:
    v9 = *(this + 16);
    if (v9 == 0.0)
    {
      v9 = 0.0;
    }

    if ((*(this + 144) & 0x10) != 0)
    {
      goto LABEL_14;
    }

LABEL_22:
    v10 = 0.0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10;
  }

LABEL_21:
  v9 = 0.0;
  if ((*(this + 144) & 0x10) == 0)
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = *(this + 17);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10;
}

uint64_t CMMsl::BioMotionOnlineLinkLengthUpdate::BioMotionOnlineLinkLengthUpdate(uint64_t this)
{
  *this = off_10041D350;
  *(this + 20) = 0;
  return this;
}

{
  *this = off_10041D350;
  *(this + 20) = 0;
  return this;
}

void CMMsl::BioMotionOnlineLinkLengthUpdate::~BioMotionOnlineLinkLengthUpdate(CMMsl::BioMotionOnlineLinkLengthUpdate *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::BioMotionOnlineLinkLengthUpdate::BioMotionOnlineLinkLengthUpdate(uint64_t this, const CMMsl::BioMotionOnlineLinkLengthUpdate *a2)
{
  *this = off_10041D350;
  *(this + 20) = 0;
  v2 = *(a2 + 20);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 20) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 20);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 16);
    v3 |= 2u;
    *(this + 20) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 20);
  }

LABEL_6:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return this;
    }

LABEL_10:
    v7 = *(a2 + 18);
    *(this + 20) = v3 | 8;
    *(this + 18) = v7;
    return this;
  }

  v6 = *(a2 + 17);
  v3 |= 4u;
  *(this + 20) = v3;
  *(this + 17) = v6;
  if ((*(a2 + 20) & 8) != 0)
  {
    goto LABEL_10;
  }

  return this;
}

uint64_t CMMsl::BioMotionOnlineLinkLengthUpdate::operator=(uint64_t a1, const CMMsl::BioMotionOnlineLinkLengthUpdate *a2)
{
  if (a1 != a2)
  {
    CMMsl::BioMotionOnlineLinkLengthUpdate::BioMotionOnlineLinkLengthUpdate(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOWORD(v3) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    LOBYTE(v3) = *(a1 + 18);
    *(a1 + 18) = v9;
    v9 = v3;
    PB::Base::~Base(v6);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::BioMotionOnlineLinkLengthUpdate *a2, CMMsl::BioMotionOnlineLinkLengthUpdate *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  LOBYTE(v3) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  LOBYTE(v3) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v3;
  LOBYTE(v3) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v3;
  return result;
}

double CMMsl::BioMotionOnlineLinkLengthUpdate::BioMotionOnlineLinkLengthUpdate(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D350;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  return result;
}

{
  *a1 = off_10041D350;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  return result;
}

uint64_t CMMsl::BioMotionOnlineLinkLengthUpdate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v10[0] = off_10041D350;
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a2 + 18);
    v7 = *(a1 + 20);
    *(a1 + 20) = v3;
    v13 = v7;
    v8 = *(a1 + 8);
    *(a1 + 8) = v4;
    v10[1] = v8;
    LOWORD(v3) = *(a1 + 16);
    *(a1 + 16) = v5;
    v11 = v3;
    LOBYTE(v3) = *(a1 + 18);
    *(a1 + 18) = v6;
    v12 = v3;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::BioMotionOnlineLinkLengthUpdate::formatText(CMMsl::BioMotionOnlineLinkLengthUpdate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if (v5)
  {
    PB::TextFormatter::format(a2, "timestampEnd", *(this + 1));
    v5 = *(this + 20);
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

  else if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "updatedLinkLengthX", *(this + 16));
  v5 = *(this + 20);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "updatedLinkLengthY", *(this + 17));
  if ((*(this + 20) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "updatedLinkLengthZ", *(this + 18));
  }

LABEL_6:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BioMotionOnlineLinkLengthUpdate::readFrom(CMMsl::BioMotionOnlineLinkLengthUpdate *this, PB::Reader *a2)
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
            goto LABEL_49;
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
          *(this + 20) |= 4u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v28 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v27 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v28 = v27 != 0;
          }

          *(this + 17) = v28;
          goto LABEL_44;
        }

        if (v22 == 4)
        {
          *(this + 20) |= 8u;
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

          *(this + 18) = v26;
          goto LABEL_44;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 20) |= 1u;
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

          goto LABEL_44;
        }

        if (v22 == 2)
        {
          *(this + 20) |= 2u;
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

          *(this + 16) = v24;
          goto LABEL_44;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v29 = 0;
        return v29 & 1;
      }

      v2 = *(a2 + 1);
LABEL_44:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_49:
  v29 = v4 ^ 1;
  return v29 & 1;
}

uint64_t CMMsl::BioMotionOnlineLinkLengthUpdate::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = v3[20];
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, v3[17], 3u);
      if ((v3[20] & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, v3[16], 2u);
  v4 = v3[20];
  if ((v4 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = v3[18];

  return PB::Writer::write(a2, v5, 4u);
}

BOOL CMMsl::BioMotionOnlineLinkLengthUpdate::operator==(uint64_t a1, uint64_t a2)
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

  if ((*(a1 + 20) & 2) != 0)
  {
    if ((*(a2 + 20) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 20) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 20) & 4) != 0)
  {
    if ((*(a2 + 20) & 4) == 0 || *(a1 + 17) != *(a2 + 17))
    {
      return 0;
    }
  }

  else if ((*(a2 + 20) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 8) == 0;
  if ((*(a1 + 20) & 8) != 0)
  {
    return (*(a2 + 20) & 8) != 0 && *(a1 + 18) == *(a2 + 18);
  }

  return v2;
}

uint64_t CMMsl::BioMotionOnlineLinkLengthUpdate::hash_value(CMMsl::BioMotionOnlineLinkLengthUpdate *this)
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
LABEL_3:
      v2 = *(this + 16);
      if ((*(this + 20) & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      v3 = 0;
      if ((*(this + 20) & 8) != 0)
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
    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 20) & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v3 = *(this + 17);
  if ((*(this + 20) & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v4 = *(this + 18);
  return v2 ^ *&v1 ^ v3 ^ v4;
}

double CMMsl::BioMotionPose::BioMotionPose(CMMsl::BioMotionPose *this)
{
  *this = off_10041D388;
  *(this + 36) = 0;
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
  *this = off_10041D388;
  *(this + 36) = 0;
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

void CMMsl::BioMotionPose::~BioMotionPose(CMMsl::BioMotionPose *this)
{
  *this = off_10041D388;
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
  CMMsl::BioMotionPose::~BioMotionPose(this);

  operator delete();
}

char **CMMsl::BioMotionPose::BioMotionPose(char **this, char **a2)
{
  *this = off_10041D388;
  *(this + 1) = 0u;
  v4 = (this + 1);
  *(this + 7) = 0u;
  *(this + 13) = 0u;
  *(this + 36) = 0;
  *(this + 3) = 0u;
  *(this + 5) = 0u;
  *(this + 9) = 0u;
  *(this + 11) = 0u;
  this[15] = 0;
  if (this != a2)
  {
    sub_100035BF0(v4, a2[1], a2[2], (a2[2] - a2[1]) >> 3);
    sub_100035BF0(this + 7, a2[7], a2[8], (a2[8] - a2[7]) >> 3);
    sub_100035BF0(this + 4, a2[4], a2[5], (a2[5] - a2[4]) >> 3);
    sub_100035BF0(this + 10, a2[10], a2[11], (a2[11] - a2[10]) >> 3);
    sub_100035BF0(this + 13, a2[13], a2[14], (a2[14] - a2[13]) >> 3);
  }

  v5 = *(a2 + 144);
  if ((v5 & 4) == 0)
  {
    if ((a2[18] & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v9 = a2[16];
    *(this + 144) |= 1u;
    this[16] = v9;
    if ((a2[18] & 2) == 0)
    {
      return this;
    }

    goto LABEL_6;
  }

  v8 = *(a2 + 35);
  *(this + 144) |= 4u;
  *(this + 35) = v8;
  v5 = *(a2 + 144);
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((v5 & 2) != 0)
  {
LABEL_6:
    v6 = *(a2 + 34);
    *(this + 144) |= 2u;
    *(this + 34) = v6;
  }

  return this;
}

CMMsl *CMMsl::BioMotionPose::operator=(CMMsl *a1, char **a2)
{
  if (a1 != a2)
  {
    CMMsl::BioMotionPose::BioMotionPose(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::BioMotionPose::~BioMotionPose(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::BioMotionPose *a2, CMMsl::BioMotionPose *a3)
{
  v3 = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v7;
  v8 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v8;
  v9 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v9;
  v10 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v10;
  v11 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v11;
  v12 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v12;
  v13 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v13;
  v14 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v14;
  v15 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v15;
  v16 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v16;
  v17 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v17;
  v18 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v18;
  LODWORD(v18) = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v18;
  result = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = result;
  LODWORD(v18) = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v18;
  return result;
}

uint64_t CMMsl::BioMotionPose::BioMotionPose(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D388;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0u;
  v4 = a1 + 104;
  *(a1 + 56) = 0u;
  v5 = a1 + 56;
  *(a1 + 8) = 0u;
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = 0;
  sub_1002A2DD0(a1 + 8, (a2 + 8));
  sub_1002A2DD0(v5, (a2 + 56));
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  sub_1002A2DD0(a1 + 80, (a2 + 80));
  sub_1002A2DD0(v4, (a2 + 104));
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

CMMsl *CMMsl::BioMotionPose::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::BioMotionPose::BioMotionPose(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::BioMotionPose::~BioMotionPose(v5);
  }

  return a1;
}

uint64_t CMMsl::BioMotionPose::formatText(CMMsl::BioMotionPose *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "attitude", v7);
  }

  if ((*(this + 144) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "modelType", *(this + 34));
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "rotationRate", v10);
  }

  v11 = *(this + 144);
  if ((v11 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "status", *(this + 35));
    v11 = *(this + 144);
  }

  if (v11)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 16));
  }

  v12 = *(this + 7);
  v13 = *(this + 8);
  while (v12 != v13)
  {
    v14 = *v12++;
    PB::TextFormatter::format(a2, "translation", v14);
  }

  v15 = *(this + 10);
  v16 = *(this + 11);
  while (v15 != v16)
  {
    v17 = *v15++;
    PB::TextFormatter::format(a2, "userAcceleration", v17);
  }

  v18 = *(this + 13);
  v19 = *(this + 14);
  while (v18 != v19)
  {
    v20 = *v18++;
    PB::TextFormatter::format(a2, "velocity", v20);
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BioMotionPose::readFrom(CMMsl::BioMotionPose *this, PB::Reader *a2)
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
      if ((v10 >> 3) > 4)
      {
        if (v23 > 6)
        {
          if (v23 == 7)
          {
            *(this + 144) |= 1u;
            v122 = *(a2 + 1);
            if (v122 > 0xFFFFFFFFFFFFFFF7 || v122 + 8 > *(a2 + 2))
            {
LABEL_245:
              *(a2 + 24) = 1;
              goto LABEL_248;
            }

            *(this + 16) = *(*a2 + v122);
            goto LABEL_247;
          }

          if (v23 == 8)
          {
            *(this + 144) |= 2u;
            v66 = *(a2 + 1);
            v65 = *(a2 + 2);
            v67 = *a2;
            if (v66 > 0xFFFFFFFFFFFFFFF5 || v66 + 10 > v65)
            {
              v136 = 0;
              v137 = 0;
              v70 = 0;
              v17 = v65 >= v66;
              v138 = v65 - v66;
              if (!v17)
              {
                v138 = 0;
              }

              v139 = (v67 + v66);
              v140 = v66 + 1;
              while (1)
              {
                if (!v138)
                {
                  LODWORD(v70) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_227;
                }

                v141 = *v139;
                *(a2 + 1) = v140;
                v70 |= (v141 & 0x7F) << v136;
                if ((v141 & 0x80) == 0)
                {
                  break;
                }

                v136 += 7;
                --v138;
                ++v139;
                ++v140;
                v14 = v137++ > 8;
                if (v14)
                {
LABEL_175:
                  LODWORD(v70) = 0;
                  goto LABEL_227;
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
                  goto LABEL_175;
                }
              }
            }

LABEL_227:
            *(this + 34) = v70;
            goto LABEL_248;
          }
        }

        else
        {
          if (v23 == 5)
          {
            if (v22 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_254;
              }

              v90 = *(a2 + 1);
              v91 = *(a2 + 2);
              while (v90 < v91 && (*(a2 + 24) & 1) == 0)
              {
                v93 = *(this + 14);
                v92 = *(this + 15);
                if (v93 >= v92)
                {
                  v95 = *(this + 13);
                  v96 = v93 - v95;
                  v97 = (v93 - v95) >> 3;
                  v98 = v97 + 1;
                  if ((v97 + 1) >> 61)
                  {
                    goto LABEL_255;
                  }

                  v99 = v92 - v95;
                  if (v99 >> 2 > v98)
                  {
                    v98 = v99 >> 2;
                  }

                  if (v99 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v100 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v100 = v98;
                  }

                  if (v100)
                  {
                    sub_10000CDCC(this + 104, v100);
                  }

                  v101 = (v93 - v95) >> 3;
                  v102 = (8 * v97);
                  v103 = (8 * v97 - 8 * v101);
                  *v102 = 0;
                  v94 = v102 + 1;
                  memcpy(v103, v95, v96);
                  v104 = *(this + 13);
                  *(this + 13) = v103;
                  *(this + 14) = v94;
                  *(this + 15) = 0;
                  if (v104)
                  {
                    operator delete(v104);
                  }
                }

                else
                {
                  *v93 = 0;
                  v94 = v93 + 8;
                }

                *(this + 14) = v94;
                v105 = *(a2 + 1);
                if (v105 > 0xFFFFFFFFFFFFFFF7 || v105 + 8 > *(a2 + 2))
                {
LABEL_152:
                  *(a2 + 24) = 1;
                  goto LABEL_153;
                }

                *(v94 - 1) = *(*a2 + v105);
                v91 = *(a2 + 2);
                v90 = *(a2 + 1) + 8;
                *(a2 + 1) = v90;
              }

              goto LABEL_153;
            }

            v127 = *(this + 14);
            v126 = *(this + 15);
            if (v127 >= v126)
            {
              v152 = *(this + 13);
              v153 = v127 - v152;
              v154 = (v127 - v152) >> 3;
              v155 = v154 + 1;
              if ((v154 + 1) >> 61)
              {
                goto LABEL_255;
              }

              v156 = v126 - v152;
              if (v156 >> 2 > v155)
              {
                v155 = v156 >> 2;
              }

              if (v156 >= 0x7FFFFFFFFFFFFFF8)
              {
                v157 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v157 = v155;
              }

              if (v157)
              {
                sub_10000CDCC(this + 104, v157);
              }

              v180 = (v127 - v152) >> 3;
              v181 = (8 * v154);
              v182 = (8 * v154 - 8 * v180);
              *v181 = 0;
              v125 = v181 + 1;
              memcpy(v182, v152, v153);
              v183 = *(this + 13);
              *(this + 13) = v182;
              *(this + 14) = v125;
              *(this + 15) = 0;
              if (v183)
              {
                operator delete(v183);
              }
            }

            else
            {
              *v127 = 0;
              v125 = v127 + 8;
            }

            *(this + 14) = v125;
            goto LABEL_243;
          }

          if (v23 == 6)
          {
            *(this + 144) |= 4u;
            v41 = *(a2 + 1);
            v40 = *(a2 + 2);
            v42 = *a2;
            if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v40)
            {
              v130 = 0;
              v131 = 0;
              v45 = 0;
              v17 = v40 >= v41;
              v132 = v40 - v41;
              if (!v17)
              {
                v132 = 0;
              }

              v133 = (v42 + v41);
              v134 = v41 + 1;
              while (1)
              {
                if (!v132)
                {
                  LODWORD(v45) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_224;
                }

                v135 = *v133;
                *(a2 + 1) = v134;
                v45 |= (v135 & 0x7F) << v130;
                if ((v135 & 0x80) == 0)
                {
                  break;
                }

                v130 += 7;
                --v132;
                ++v133;
                ++v134;
                v14 = v131++ > 8;
                if (v14)
                {
LABEL_167:
                  LODWORD(v45) = 0;
                  goto LABEL_224;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v45) = 0;
              }
            }

            else
            {
              v43 = 0;
              v44 = 0;
              v45 = 0;
              v46 = (v42 + v41);
              v47 = v41 + 1;
              while (1)
              {
                *(a2 + 1) = v47;
                v48 = *v46++;
                v45 |= (v48 & 0x7F) << v43;
                if ((v48 & 0x80) == 0)
                {
                  break;
                }

                v43 += 7;
                ++v47;
                v14 = v44++ > 8;
                if (v14)
                {
                  goto LABEL_167;
                }
              }
            }

LABEL_224:
            *(this + 35) = v45;
            goto LABEL_248;
          }
        }
      }

      else if (v23 > 2)
      {
        if (v23 == 3)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_254;
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
                v113 = (v109 - v111) >> 3;
                v114 = v113 + 1;
                if ((v113 + 1) >> 61)
                {
                  goto LABEL_255;
                }

                v115 = v108 - v111;
                if (v115 >> 2 > v114)
                {
                  v114 = v115 >> 2;
                }

                if (v115 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v116 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v116 = v114;
                }

                if (v116)
                {
                  sub_10000CDCC(this + 32, v116);
                }

                v117 = (v109 - v111) >> 3;
                v118 = (8 * v113);
                v119 = (8 * v113 - 8 * v117);
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
                v110 = v109 + 8;
              }

              *(this + 5) = v110;
              v121 = *(a2 + 1);
              if (v121 > 0xFFFFFFFFFFFFFFF7 || v121 + 8 > *(a2 + 2))
              {
                goto LABEL_152;
              }

              *(v110 - 1) = *(*a2 + v121);
              v107 = *(a2 + 2);
              v106 = *(a2 + 1) + 8;
              *(a2 + 1) = v106;
            }

            goto LABEL_153;
          }

          v129 = *(this + 5);
          v128 = *(this + 6);
          if (v129 >= v128)
          {
            v158 = *(this + 4);
            v159 = v129 - v158;
            v160 = (v129 - v158) >> 3;
            v161 = v160 + 1;
            if ((v160 + 1) >> 61)
            {
              goto LABEL_255;
            }

            v162 = v128 - v158;
            if (v162 >> 2 > v161)
            {
              v161 = v162 >> 2;
            }

            if (v162 >= 0x7FFFFFFFFFFFFFF8)
            {
              v163 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v163 = v161;
            }

            if (v163)
            {
              sub_10000CDCC(this + 32, v163);
            }

            v184 = (v129 - v158) >> 3;
            v185 = (8 * v160);
            v186 = (8 * v160 - 8 * v184);
            *v185 = 0;
            v125 = v185 + 1;
            memcpy(v186, v158, v159);
            v187 = *(this + 4);
            *(this + 4) = v186;
            *(this + 5) = v125;
            *(this + 6) = 0;
            if (v187)
            {
              operator delete(v187);
            }
          }

          else
          {
            *v129 = 0;
            v125 = v129 + 8;
          }

          *(this + 5) = v125;
LABEL_243:
          v196 = *(a2 + 1);
          if (v196 > 0xFFFFFFFFFFFFFFF7 || v196 + 8 > *(a2 + 2))
          {
            goto LABEL_245;
          }

          *(v125 - 1) = *(*a2 + v196);
LABEL_247:
          *(a2 + 1) += 8;
          goto LABEL_248;
        }

        if (v23 == 4)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_254;
            }

            v49 = *(a2 + 1);
            v50 = *(a2 + 2);
            while (v49 < v50 && (*(a2 + 24) & 1) == 0)
            {
              v52 = *(this + 11);
              v51 = *(this + 12);
              if (v52 >= v51)
              {
                v54 = *(this + 10);
                v55 = v52 - v54;
                v56 = (v52 - v54) >> 3;
                v57 = v56 + 1;
                if ((v56 + 1) >> 61)
                {
                  goto LABEL_255;
                }

                v58 = v51 - v54;
                if (v58 >> 2 > v57)
                {
                  v57 = v58 >> 2;
                }

                if (v58 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v59 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v59 = v57;
                }

                if (v59)
                {
                  sub_10000CDCC(this + 80, v59);
                }

                v60 = (v52 - v54) >> 3;
                v61 = (8 * v56);
                v62 = (8 * v56 - 8 * v60);
                *v61 = 0;
                v53 = v61 + 1;
                memcpy(v62, v54, v55);
                v63 = *(this + 10);
                *(this + 10) = v62;
                *(this + 11) = v53;
                *(this + 12) = 0;
                if (v63)
                {
                  operator delete(v63);
                }
              }

              else
              {
                *v52 = 0;
                v53 = v52 + 8;
              }

              *(this + 11) = v53;
              v64 = *(a2 + 1);
              if (v64 > 0xFFFFFFFFFFFFFFF7 || v64 + 8 > *(a2 + 2))
              {
                goto LABEL_152;
              }

              *(v53 - 1) = *(*a2 + v64);
              v50 = *(a2 + 2);
              v49 = *(a2 + 1) + 8;
              *(a2 + 1) = v49;
            }

            goto LABEL_153;
          }

          v145 = *(this + 11);
          v144 = *(this + 12);
          if (v145 >= v144)
          {
            v170 = *(this + 10);
            v171 = v145 - v170;
            v172 = (v145 - v170) >> 3;
            v173 = v172 + 1;
            if ((v172 + 1) >> 61)
            {
LABEL_255:
              sub_10000CD24();
            }

            v174 = v144 - v170;
            if (v174 >> 2 > v173)
            {
              v173 = v174 >> 2;
            }

            if (v174 >= 0x7FFFFFFFFFFFFFF8)
            {
              v175 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v175 = v173;
            }

            if (v175)
            {
              sub_10000CDCC(this + 80, v175);
            }

            v192 = (v145 - v170) >> 3;
            v193 = (8 * v172);
            v194 = (8 * v172 - 8 * v192);
            *v193 = 0;
            v125 = v193 + 1;
            memcpy(v194, v170, v171);
            v195 = *(this + 10);
            *(this + 10) = v194;
            *(this + 11) = v125;
            *(this + 12) = 0;
            if (v195)
            {
              operator delete(v195);
            }
          }

          else
          {
            *v145 = 0;
            v125 = v145 + 8;
          }

          *(this + 11) = v125;
          goto LABEL_243;
        }
      }

      else
      {
        if (v23 == 1)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_254;
            }

            v74 = *(a2 + 1);
            v75 = *(a2 + 2);
            while (v74 < v75 && (*(a2 + 24) & 1) == 0)
            {
              v77 = *(this + 2);
              v76 = *(this + 3);
              if (v77 >= v76)
              {
                v79 = *(this + 1);
                v80 = v77 - v79;
                v81 = (v77 - v79) >> 3;
                v82 = v81 + 1;
                if ((v81 + 1) >> 61)
                {
                  goto LABEL_255;
                }

                v83 = v76 - v79;
                if (v83 >> 2 > v82)
                {
                  v82 = v83 >> 2;
                }

                if (v83 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v84 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v84 = v82;
                }

                if (v84)
                {
                  sub_10000CDCC(this + 8, v84);
                }

                v85 = (v77 - v79) >> 3;
                v86 = (8 * v81);
                v87 = (8 * v81 - 8 * v85);
                *v86 = 0;
                v78 = v86 + 1;
                memcpy(v87, v79, v80);
                v88 = *(this + 1);
                *(this + 1) = v87;
                *(this + 2) = v78;
                *(this + 3) = 0;
                if (v88)
                {
                  operator delete(v88);
                }
              }

              else
              {
                *v77 = 0;
                v78 = v77 + 8;
              }

              *(this + 2) = v78;
              v89 = *(a2 + 1);
              if (v89 > 0xFFFFFFFFFFFFFFF7 || v89 + 8 > *(a2 + 2))
              {
                goto LABEL_152;
              }

              *(v78 - 1) = *(*a2 + v89);
              v75 = *(a2 + 2);
              v74 = *(a2 + 1) + 8;
              *(a2 + 1) = v74;
            }

            goto LABEL_153;
          }

          v124 = *(this + 2);
          v123 = *(this + 3);
          if (v124 >= v123)
          {
            v146 = *(this + 1);
            v147 = v124 - v146;
            v148 = (v124 - v146) >> 3;
            v149 = v148 + 1;
            if ((v148 + 1) >> 61)
            {
              goto LABEL_255;
            }

            v150 = v123 - v146;
            if (v150 >> 2 > v149)
            {
              v149 = v150 >> 2;
            }

            if (v150 >= 0x7FFFFFFFFFFFFFF8)
            {
              v151 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v151 = v149;
            }

            if (v151)
            {
              sub_10000CDCC(this + 8, v151);
            }

            v176 = (v124 - v146) >> 3;
            v177 = (8 * v148);
            v178 = (8 * v148 - 8 * v176);
            *v177 = 0;
            v125 = v177 + 1;
            memcpy(v178, v146, v147);
            v179 = *(this + 1);
            *(this + 1) = v178;
            *(this + 2) = v125;
            *(this + 3) = 0;
            if (v179)
            {
              operator delete(v179);
            }
          }

          else
          {
            *v124 = 0;
            v125 = v124 + 8;
          }

          *(this + 2) = v125;
          goto LABEL_243;
        }

        if (v23 == 2)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_254;
            }

            v24 = *(a2 + 1);
            v25 = *(a2 + 2);
            while (v24 < v25 && (*(a2 + 24) & 1) == 0)
            {
              v27 = *(this + 8);
              v26 = *(this + 9);
              if (v27 >= v26)
              {
                v29 = *(this + 7);
                v30 = v27 - v29;
                v31 = (v27 - v29) >> 3;
                v32 = v31 + 1;
                if ((v31 + 1) >> 61)
                {
                  goto LABEL_255;
                }

                v33 = v26 - v29;
                if (v33 >> 2 > v32)
                {
                  v32 = v33 >> 2;
                }

                if (v33 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v34 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v34 = v32;
                }

                if (v34)
                {
                  sub_10000CDCC(this + 56, v34);
                }

                v35 = (v27 - v29) >> 3;
                v36 = (8 * v31);
                v37 = (8 * v31 - 8 * v35);
                *v36 = 0;
                v28 = v36 + 1;
                memcpy(v37, v29, v30);
                v38 = *(this + 7);
                *(this + 7) = v37;
                *(this + 8) = v28;
                *(this + 9) = 0;
                if (v38)
                {
                  operator delete(v38);
                }
              }

              else
              {
                *v27 = 0;
                v28 = v27 + 8;
              }

              *(this + 8) = v28;
              v39 = *(a2 + 1);
              if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(a2 + 2))
              {
                goto LABEL_152;
              }

              *(v28 - 1) = *(*a2 + v39);
              v25 = *(a2 + 2);
              v24 = *(a2 + 1) + 8;
              *(a2 + 1) = v24;
            }

LABEL_153:
            PB::Reader::recallMark();
            goto LABEL_248;
          }

          v143 = *(this + 8);
          v142 = *(this + 9);
          if (v143 >= v142)
          {
            v164 = *(this + 7);
            v165 = v143 - v164;
            v166 = (v143 - v164) >> 3;
            v167 = v166 + 1;
            if ((v166 + 1) >> 61)
            {
              goto LABEL_255;
            }

            v168 = v142 - v164;
            if (v168 >> 2 > v167)
            {
              v167 = v168 >> 2;
            }

            if (v168 >= 0x7FFFFFFFFFFFFFF8)
            {
              v169 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v169 = v167;
            }

            if (v169)
            {
              sub_10000CDCC(this + 56, v169);
            }

            v188 = (v143 - v164) >> 3;
            v189 = (8 * v166);
            v190 = (8 * v166 - 8 * v188);
            *v189 = 0;
            v125 = v189 + 1;
            memcpy(v190, v164, v165);
            v191 = *(this + 7);
            *(this + 7) = v190;
            *(this + 8) = v125;
            *(this + 9) = 0;
            if (v191)
            {
              operator delete(v191);
            }
          }

          else
          {
            *v143 = 0;
            v125 = v143 + 8;
          }

          *(this + 8) = v125;
          goto LABEL_243;
        }
      }

      if ((PB::Reader::skip(a2, v23, v22, 0) & 1) == 0)
      {
LABEL_254:
        v197 = 0;
        return v197 & 1;
      }

LABEL_248:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

  v197 = v4 ^ 1;
  return v197 & 1;
}

uint64_t CMMsl::BioMotionPose::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  v5 = *(this + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6, 1u);
  }

  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9, 2u);
  }

  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    this = PB::Writer::write(a2, v12, 3u);
  }

  v13 = *(v3 + 80);
  v14 = *(v3 + 88);
  while (v13 != v14)
  {
    v15 = *v13++;
    this = PB::Writer::write(a2, v15, 4u);
  }

  v16 = *(v3 + 104);
  v17 = *(v3 + 112);
  while (v16 != v17)
  {
    v18 = *v16++;
    this = PB::Writer::write(a2, v18, 5u);
  }

  v19 = *(v3 + 144);
  if ((v19 & 4) == 0)
  {
    if ((*(v3 + 144) & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    this = PB::Writer::write(a2, *(v3 + 128), 7u);
    if ((*(v3 + 144) & 2) == 0)
    {
      return this;
    }

    goto LABEL_22;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 140), 6u);
  v19 = *(v3 + 144);
  if (v19)
  {
    goto LABEL_21;
  }

LABEL_18:
  if ((v19 & 2) == 0)
  {
    return this;
  }

LABEL_22:
  v20 = *(v3 + 136);

  return PB::Writer::writeVarInt(a2, v20, 8u);
}

BOOL CMMsl::BioMotionPose::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v2 - v3 != *(a2 + 16) - v4)
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

  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7 = *(a2 + 56);
  if (v5 - v6 != *(a2 + 64) - v7)
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

  v12 = *(a1 + 80);
  v11 = *(a1 + 88);
  v13 = *(a2 + 80);
  if (v11 - v12 != *(a2 + 88) - v13)
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

  if ((*(a1 + 144) & 4) != 0)
  {
    if ((*(a2 + 144) & 4) == 0 || *(a1 + 140) != *(a2 + 140))
    {
      return 0;
    }
  }

  else if ((*(a2 + 144) & 4) != 0)
  {
    return 0;
  }

  if (*(a1 + 144))
  {
    if ((*(a2 + 144) & 1) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if (*(a2 + 144))
  {
    return 0;
  }

  v17 = (*(a2 + 144) & 2) == 0;
  if ((*(a1 + 144) & 2) != 0)
  {
    return (*(a2 + 144) & 2) != 0 && *(a1 + 136) == *(a2 + 136);
  }

  return v17;
}

uint64_t CMMsl::BioMotionPose::hash_value(CMMsl::BioMotionPose *this)
{
  v2 = PBHashBytes();
  v3 = PBHashBytes();
  v4 = PBHashBytes();
  v5 = PBHashBytes();
  v6 = PBHashBytes();
  if ((*(this + 144) & 4) != 0)
  {
    v7 = *(this + 35);
    if (*(this + 144))
    {
LABEL_3:
      v8 = *(this + 16);
      if (v8 == 0.0)
      {
        v8 = 0.0;
      }

      if ((*(this + 144) & 2) != 0)
      {
        goto LABEL_6;
      }

LABEL_9:
      v9 = 0;
      return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ *&v8 ^ v9;
    }
  }

  else
  {
    v7 = 0;
    if (*(this + 144))
    {
      goto LABEL_3;
    }
  }

  v8 = 0.0;
  if ((*(this + 144) & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v9 = *(this + 34);
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ *&v8 ^ v9;
}

uint64_t CMMsl::BioMotionPredictedPose::BioMotionPredictedPose(uint64_t this)
{
  *this = off_10041D3C0;
  *(this + 8) = 0;
  *(this + 28) = 0;
  return this;
}

{
  *this = off_10041D3C0;
  *(this + 8) = 0;
  *(this + 28) = 0;
  return this;
}

void CMMsl::BioMotionPredictedPose::~BioMotionPredictedPose(CMMsl::BioMotionPredictedPose *this)
{
  v2 = *(this + 1);
  *this = off_10041D3C0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::BioMotionPredictedPose::~BioMotionPredictedPose(this);

  operator delete();
}

CMMsl::BioMotionPredictedPose *CMMsl::BioMotionPredictedPose::BioMotionPredictedPose(CMMsl::BioMotionPredictedPose *this, const CMMsl::PoseState **a2)
{
  *this = off_10041D3C0;
  *(this + 1) = 0;
  *(this + 7) = 0;
  if (a2[1])
  {
    operator new();
  }

  v2 = *(a2 + 28);
  if (v2)
  {
    v3 = a2[2];
    *(this + 28) |= 1u;
    *(this + 2) = v3;
    v2 = *(a2 + 28);
  }

  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 6);
    *(this + 28) |= 2u;
    *(this + 6) = v4;
  }

  return this;
}

const CMMsl::PoseState **CMMsl::BioMotionPredictedPose::operator=(const CMMsl::PoseState **a1, const CMMsl::PoseState **a2)
{
  if (a1 != a2)
  {
    CMMsl::BioMotionPredictedPose::BioMotionPredictedPose(&v8, a2);
    v3 = a1[1];
    a1[1] = v9;
    v9 = v3;
    v4 = v11;
    v5 = a1[2];
    v6 = a1[3];
    a1[2] = v10;
    a1[3] = v4;
    v10 = v5;
    v11 = v6;
    CMMsl::BioMotionPredictedPose::~BioMotionPredictedPose(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::BioMotionPredictedPose *a2, CMMsl::BioMotionPredictedPose *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  return result;
}

uint64_t CMMsl::BioMotionPredictedPose::BioMotionPredictedPose(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D3C0;
  *(a1 + 8) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void *CMMsl::BioMotionPredictedPose::operator=(void *a1, void *a2)
{
  if (a1 != a2)
  {
    CMMsl::BioMotionPredictedPose::BioMotionPredictedPose(&v8, a2);
    v3 = a1[1];
    a1[1] = v9;
    v9 = v3;
    v4 = v11;
    v5 = a1[2];
    v6 = a1[3];
    a1[2] = v10;
    a1[3] = v4;
    v10 = v5;
    v11 = v6;
    CMMsl::BioMotionPredictedPose::~BioMotionPredictedPose(&v8);
  }

  return a1;
}

uint64_t CMMsl::BioMotionPredictedPose::formatText(CMMsl::BioMotionPredictedPose *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if ((*(this + 28) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "modelType", *(this + 6));
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "state");
  }

  if (*(this + 28))
  {
    PB::TextFormatter::format(a2, "targetTimestamp", *(this + 2));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::BioMotionPredictedPose::readFrom(CMMsl::BioMotionPredictedPose *this, PB::Reader *a2)
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
            goto LABEL_55;
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
        *(this + 28) |= 2u;
        v25 = *(a2 + 1);
        v24 = *(a2 + 2);
        v26 = *a2;
        if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
        {
          v33 = 0;
          v34 = 0;
          v29 = 0;
          v17 = v24 >= v25;
          v35 = v24 - v25;
          if (!v17)
          {
            v35 = 0;
          }

          v36 = (v26 + v25);
          v37 = v25 + 1;
          while (1)
          {
            if (!v35)
            {
              LODWORD(v29) = 0;
              *(a2 + 24) = 1;
              goto LABEL_50;
            }

            v38 = *v36;
            *(a2 + 1) = v37;
            v29 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            --v35;
            ++v36;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
LABEL_45:
              LODWORD(v29) = 0;
              goto LABEL_50;
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
              goto LABEL_45;
            }
          }
        }

LABEL_50:
        *(this + 6) = v29;
      }

      else if (v22 == 2)
      {
        *(this + 28) |= 1u;
        v23 = *(a2 + 1);
        if (v23 <= 0xFFFFFFFFFFFFFFF7 && v23 + 8 <= *(a2 + 2))
        {
          *(this + 2) = *(*a2 + v23);
          *(a2 + 1) += 8;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if ((PB::Reader::skip(a2, v22, v10 & 7, 0) & 1) == 0)
        {
          v40 = 0;
          return v40 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_55:
  v40 = v4 ^ 1;
  return v40 & 1;
}
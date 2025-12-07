uint64_t AppleBCMWLANCore::setHeStats(uint64_t a1, OSData *this, unsigned int a3)
{
  v38[0] = 0;
  v5 = a1 + 72;
  if (!*(*(a1 + 72) + 29976))
  {
    *(*v5 + 29976) = IOMallocZeroTyped();
    v6 = *(*v5 + 29976);
    if (!v6)
    {
      return 12;
    }

    *(v6 + 480) = 0;
    *(v6 + 448) = 0u;
    *(v6 + 464) = 0u;
    *(v6 + 416) = 0u;
    *(v6 + 432) = 0u;
    *(v6 + 384) = 0u;
    *(v6 + 400) = 0u;
    *(v6 + 352) = 0u;
    *(v6 + 368) = 0u;
    *(v6 + 320) = 0u;
    *(v6 + 336) = 0u;
    *(v6 + 288) = 0u;
    *(v6 + 304) = 0u;
    *(v6 + 256) = 0u;
    *(v6 + 272) = 0u;
    *(v6 + 224) = 0u;
    *(v6 + 240) = 0u;
    *(v6 + 192) = 0u;
    *(v6 + 208) = 0u;
    *(v6 + 160) = 0u;
    *(v6 + 176) = 0u;
    *(v6 + 128) = 0u;
    *(v6 + 144) = 0u;
    *(v6 + 96) = 0u;
    *(v6 + 112) = 0u;
    *(v6 + 64) = 0u;
    *(v6 + 80) = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    *v6 = 0u;
    *(v6 + 16) = 0u;
  }

  Length = OSData::getLength(this);
  v8 = OSData::getLength(this);
  v9 = OSData::getLength(this) == 224;
  if (*(*v5 + 780) == 21)
  {
    v9 = OSData::getLength(this) == 404;
  }

  if (Length == 200 || v8 == 220 || v9)
  {
    if (a3)
    {
      if (v9)
      {
        v34 = v9;
        v35 = v8;
        v36 = Length;
        v33 = 0x9800000060;
        v32 = 0xB000000064;
        v31 = 0xAC000000A8;
        v30 = 0x7C00000078;
        v29 = 0x7400000070;
        v28 = 0x6C00000068;
        start = 0x9400000090;
        v10 = 140;
        v11 = 136;
        v12 = 132;
        v13 = 128;
        v14 = 164;
        v15 = 160;
        v16 = 156;
      }

      else
      {
        if (v8 != 220 && Length != 200)
        {
          v19 = 0;
LABEL_18:
          v20 = v8 == 220 || v9;
          *(*v5 + 8 * a3 + 29964) = v19 - *(*v5 + 8 * a3 + 29988);
          if (Length == 200)
          {
            v21 = 1;
          }

          else
          {
            v21 = v20;
          }

          if (v21 == 1)
          {
            CounterValueSafe = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x54uLL);
          }

          else
          {
            CounterValueSafe = 0;
          }

          *(*(*v5 + 29976) + 424) = CounterValueSafe;
          *(*v5 + 8 * a3 + 29988) = *(*(*v5 + 29976) + 424);
          if (v21)
          {
            *(*v5 + 8 * a3 + 29960) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x5CuLL) - *(*v5 + 8 * a3 + 29984);
            v23 = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x5CuLL);
          }

          else
          {
            v23 = 0;
            *(*v5 + 8 * a3 + 29960) = -*(*v5 + 8 * a3 + 29984);
          }

          *(*(*v5 + 29976) + 448) = v23;
          *(*v5 + 8 * a3 + 29984) = *(*(*v5 + 29976) + 448);
          if (Length == 200)
          {
            *(*(*v5 + 29976) + 464) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x4CuLL);
            *(*(*v5 + 29976) + 472) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x50uLL);
            *(*(*v5 + 29976) + 480) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x38uLL);
          }

          if (!IO80211Controller::setExtendedChipCounterStats())
          {
            AppleBCMWLANCore::setHeStats();
            return v38[1];
          }

          return v38[0];
        }

        v34 = v9;
        v35 = v8;
        v36 = Length;
        v33 = 0x9C00000064;
        v32 = 0xB400000068;
        v31 = 0xB0000000ACLL;
        v30 = 0x800000007CLL;
        v29 = 0x7800000074;
        v28 = 0x700000006CLL;
        start = 0x9800000094;
        v10 = 144;
        v11 = 140;
        v12 = 136;
        v13 = 132;
        v14 = 168;
        v15 = 164;
        v16 = 160;
      }

      **(*v5 + 29976) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x20uLL);
      *(*(*v5 + 29976) + 16) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x24uLL);
      *(*(*v5 + 29976) + 40) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0xCuLL);
      *(*(*v5 + 29976) + 8) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, v16);
      *(*(*v5 + 29976) + 24) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, v15);
      *(*(*v5 + 29976) + 32) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, v14);
      *(*(*v5 + 29976) + 48) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, v13);
      *(*(*v5 + 29976) + 56) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, v12);
      *(*(*v5 + 29976) + 64) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, v11);
      *(*(*v5 + 29976) + 72) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, v10);
      *(*(*v5 + 29976) + 80) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, start);
      *(*(*v5 + 29976) + 88) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, HIDWORD(start));
      *(*(*v5 + 29976) + 96) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, v28);
      *(*(*v5 + 29976) + 104) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, HIDWORD(v28));
      *(*(*v5 + 29976) + 112) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, v29);
      *(*(*v5 + 29976) + 120) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, HIDWORD(v29));
      *(*(*v5 + 29976) + 128) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, v30);
      *(*(*v5 + 29976) + 136) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, HIDWORD(v30));
      *(*(*v5 + 29976) + 272) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x28uLL);
      *(*(*v5 + 29976) + 280) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x14uLL);
      *(*(*v5 + 29976) + 288) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x18uLL);
      *(*(*v5 + 29976) + 296) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x1CuLL);
      *(*(*v5 + 29976) + 304) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 4uLL);
      *(*(*v5 + 29976) + 312) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 8uLL);
      *(*(*v5 + 29976) + 320) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x2CuLL);
      *(*(*v5 + 29976) + 328) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x30uLL);
      *(*(*v5 + 29976) + 336) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x34uLL);
      *(*(*v5 + 29976) + 344) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, v31);
      *(*(*v5 + 29976) + 352) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, HIDWORD(v31));
      *(*(*v5 + 29976) + 360) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, v32);
      *(*(*v5 + 29976) + 368) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, HIDWORD(v32));
      *(*(*v5 + 29976) + 384) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, v33);
      *(*(*v5 + 29976) + 392) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x44uLL);
      *(*(*v5 + 29976) + 400) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x48uLL);
      *(*(*v5 + 29976) + 408) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, HIDWORD(v33));
      *(*(*v5 + 29976) + 416) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x10uLL);
      *(*(*v5 + 29976) + 432) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x48uLL);
      *(*(*v5 + 29976) + 440) += AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x58uLL);
      v19 = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x54uLL);
      v8 = v35;
      Length = v36;
      v9 = v34;
      goto LABEL_18;
    }

    if (v9)
    {
      **(*v5 + 29976) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x20uLL);
      *(*(*v5 + 29976) + 16) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x24uLL);
      *(*(*v5 + 29976) + 40) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0xCuLL);
      *(*(*v5 + 29976) + 8) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x9CuLL);
      *(*(*v5 + 29976) + 24) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0xA0uLL);
      *(*(*v5 + 29976) + 32) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0xA4uLL);
      *(*(*v5 + 29976) + 48) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x80uLL);
      *(*(*v5 + 29976) + 56) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x84uLL);
      *(*(*v5 + 29976) + 64) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x88uLL);
      *(*(*v5 + 29976) + 72) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x8CuLL);
      *(*(*v5 + 29976) + 80) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x90uLL);
      *(*(*v5 + 29976) + 88) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x94uLL);
      *(*(*v5 + 29976) + 96) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x68uLL);
      *(*(*v5 + 29976) + 104) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x6CuLL);
      *(*(*v5 + 29976) + 112) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x70uLL);
      *(*(*v5 + 29976) + 120) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x74uLL);
      *(*(*v5 + 29976) + 128) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x78uLL);
      *(*(*v5 + 29976) + 136) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x7CuLL);
      *(*(*v5 + 29976) + 272) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x28uLL);
      *(*(*v5 + 29976) + 280) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x14uLL);
      *(*(*v5 + 29976) + 288) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x18uLL);
      *(*(*v5 + 29976) + 296) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x1CuLL);
      *(*(*v5 + 29976) + 304) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 4uLL);
      *(*(*v5 + 29976) + 312) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 8uLL);
      *(*(*v5 + 29976) + 320) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x2CuLL);
      *(*(*v5 + 29976) + 328) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x30uLL);
      *(*(*v5 + 29976) + 336) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x34uLL);
      *(*(*v5 + 29976) + 344) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0xA8uLL);
      *(*(*v5 + 29976) + 352) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0xACuLL);
      *(*(*v5 + 29976) + 360) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x64uLL);
      *(*(*v5 + 29976) + 368) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0xB0uLL);
      *(*(*v5 + 29976) + 384) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x60uLL);
      *(*(*v5 + 29976) + 392) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x44uLL);
      *(*(*v5 + 29976) + 400) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x48uLL);
      v17 = this;
      v18 = 152;
    }

    else
    {
      if (v8 != 220 && Length != 200)
      {
        v25 = 0;
        **(*v5 + 29976) = 0;
        *(*(*v5 + 29976) + 16) = 0;
        *(*(*v5 + 29976) + 40) = 0;
        *(*(*v5 + 29976) + 8) = 0;
        *(*(*v5 + 29976) + 24) = 0;
        *(*(*v5 + 29976) + 32) = 0;
        *(*(*v5 + 29976) + 48) = 0;
        *(*(*v5 + 29976) + 56) = 0;
        *(*(*v5 + 29976) + 64) = 0;
        *(*(*v5 + 29976) + 72) = 0;
        *(*(*v5 + 29976) + 80) = 0;
        *(*(*v5 + 29976) + 88) = 0;
        *(*(*v5 + 29976) + 96) = 0;
        *(*(*v5 + 29976) + 104) = 0;
        *(*(*v5 + 29976) + 112) = 0;
        *(*(*v5 + 29976) + 120) = 0;
        *(*(*v5 + 29976) + 128) = 0;
        *(*(*v5 + 29976) + 136) = 0;
        *(*(*v5 + 29976) + 272) = 0;
        *(*(*v5 + 29976) + 280) = 0;
        *(*(*v5 + 29976) + 288) = 0;
        *(*(*v5 + 29976) + 296) = 0;
        *(*(*v5 + 29976) + 304) = 0;
        *(*(*v5 + 29976) + 312) = 0;
        *(*(*v5 + 29976) + 320) = 0;
        *(*(*v5 + 29976) + 328) = 0;
        *(*(*v5 + 29976) + 336) = 0;
        *(*(*v5 + 29976) + 344) = 0;
        *(*(*v5 + 29976) + 352) = 0;
        *(*(*v5 + 29976) + 360) = 0;
        *(*(*v5 + 29976) + 368) = 0;
        *(*(*v5 + 29976) + 384) = 0;
        *(*(*v5 + 29976) + 392) = 0;
        *(*(*v5 + 29976) + 400) = 0;
        *(*(*v5 + 29976) + 408) = 0;
        *(*(*v5 + 29976) + 416) = 0;
        *(*(*v5 + 29976) + 432) = 0;
        *(*(*v5 + 29976) + 440) = 0;
        *(*v5 + 29964) = -*(*v5 + 29988);
LABEL_38:
        *(*(*v5 + 29976) + 424) = v25;
        *(*v5 + 29988) = *(*(*v5 + 29976) + 424);
        if (v9 || v8 == 220 || Length == 200)
        {
          *(*v5 + 29960) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x5CuLL) - *(*v5 + 29984);
          v26 = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x5CuLL);
        }

        else
        {
          v26 = 0;
          *(*v5 + 29960) = -*(*v5 + 29984);
        }

        *(*(*v5 + 29976) + 448) = v26;
        *(*v5 + 29984) = *(*(*v5 + 29976) + 448);
        if (Length == 200)
        {
          *(*(*v5 + 29976) + 464) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x4CuLL);
          *(*(*v5 + 29976) + 472) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x50uLL);
          *(*(*v5 + 29976) + 480) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x38uLL);
        }

        return v38[0];
      }

      **(*v5 + 29976) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x20uLL);
      *(*(*v5 + 29976) + 16) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x24uLL);
      *(*(*v5 + 29976) + 40) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0xCuLL);
      *(*(*v5 + 29976) + 8) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0xA0uLL);
      *(*(*v5 + 29976) + 24) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0xA4uLL);
      *(*(*v5 + 29976) + 32) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0xA8uLL);
      *(*(*v5 + 29976) + 48) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x84uLL);
      *(*(*v5 + 29976) + 56) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x88uLL);
      *(*(*v5 + 29976) + 64) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x8CuLL);
      *(*(*v5 + 29976) + 72) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x90uLL);
      *(*(*v5 + 29976) + 80) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x94uLL);
      *(*(*v5 + 29976) + 88) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x98uLL);
      *(*(*v5 + 29976) + 96) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x6CuLL);
      *(*(*v5 + 29976) + 104) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x70uLL);
      *(*(*v5 + 29976) + 112) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x74uLL);
      *(*(*v5 + 29976) + 120) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x78uLL);
      *(*(*v5 + 29976) + 128) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x7CuLL);
      *(*(*v5 + 29976) + 136) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x80uLL);
      *(*(*v5 + 29976) + 272) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x28uLL);
      *(*(*v5 + 29976) + 280) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x14uLL);
      *(*(*v5 + 29976) + 288) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x18uLL);
      *(*(*v5 + 29976) + 296) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x1CuLL);
      *(*(*v5 + 29976) + 304) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 4uLL);
      *(*(*v5 + 29976) + 312) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 8uLL);
      *(*(*v5 + 29976) + 320) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x2CuLL);
      *(*(*v5 + 29976) + 328) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x30uLL);
      *(*(*v5 + 29976) + 336) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x34uLL);
      *(*(*v5 + 29976) + 344) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0xACuLL);
      *(*(*v5 + 29976) + 352) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0xB0uLL);
      *(*(*v5 + 29976) + 360) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x68uLL);
      *(*(*v5 + 29976) + 368) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0xB4uLL);
      *(*(*v5 + 29976) + 384) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x64uLL);
      *(*(*v5 + 29976) + 392) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x44uLL);
      *(*(*v5 + 29976) + 400) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x48uLL);
      v17 = this;
      v18 = 156;
    }

    *(*(*v5 + 29976) + 408) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, v17, v18);
    *(*(*v5 + 29976) + 416) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x10uLL);
    *(*(*v5 + 29976) + 432) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x48uLL);
    *(*(*v5 + 29976) + 440) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x58uLL);
    *(*v5 + 29964) = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x54uLL) - *(*v5 + 29988);
    v25 = AppleBCMWLANUtil::getCounterValueSafe(v38, 4uLL, this, 0x54uLL);
    goto LABEL_38;
  }

  AppleBCMWLANCore::setHeStats();
  return v37;
}

uint64_t AppleBCMWLANCore::setOmiStats(uint64_t a1, OSData *this, int a3)
{
  if (!*(*(a1 + 72) + 29976))
  {
    *(*(a1 + 72) + 29976) = IOMallocZeroTyped();
    v6 = *(*(a1 + 72) + 29976);
    if (!v6)
    {
      return 12;
    }

    *(v6 + 480) = 0;
    *(v6 + 448) = 0u;
    *(v6 + 464) = 0u;
    *(v6 + 416) = 0u;
    *(v6 + 432) = 0u;
    *(v6 + 384) = 0u;
    *(v6 + 400) = 0u;
    *(v6 + 352) = 0u;
    *(v6 + 368) = 0u;
    *(v6 + 320) = 0u;
    *(v6 + 336) = 0u;
    *(v6 + 288) = 0u;
    *(v6 + 304) = 0u;
    *(v6 + 256) = 0u;
    *(v6 + 272) = 0u;
    *(v6 + 224) = 0u;
    *(v6 + 240) = 0u;
    *(v6 + 192) = 0u;
    *(v6 + 208) = 0u;
    *(v6 + 160) = 0u;
    *(v6 + 176) = 0u;
    *(v6 + 128) = 0u;
    *(v6 + 144) = 0u;
    *(v6 + 96) = 0u;
    *(v6 + 112) = 0u;
    *(v6 + 64) = 0u;
    *(v6 + 80) = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    *v6 = 0u;
    *(v6 + 16) = 0u;
  }

  BytesNoCopy = OSData::getBytesNoCopy(this);
  v8 = BytesNoCopy[1];
  v9 = *(*(a1 + 72) + 29976);
  if (a3)
  {
    *(v9 + 144) += v8;
    v10 = BytesNoCopy[3];
    *(*(*(a1 + 72) + 29976) + 152) += BytesNoCopy[2];
    *(*(*(a1 + 72) + 29976) + 160) += v10;
    v11 = BytesNoCopy[5];
    *(*(*(a1 + 72) + 29976) + 168) += BytesNoCopy[4];
    *(*(*(a1 + 72) + 29976) + 176) += v11;
    v12 = BytesNoCopy[7];
    *(*(*(a1 + 72) + 29976) + 184) += BytesNoCopy[6];
    *(*(*(a1 + 72) + 29976) + 192) += v12;
    v13 = BytesNoCopy[9];
    *(*(*(a1 + 72) + 29976) + 200) += BytesNoCopy[8];
    *(*(*(a1 + 72) + 29976) + 208) += v13;
    v14 = BytesNoCopy[11];
    *(*(*(a1 + 72) + 29976) + 216) += BytesNoCopy[10];
    *(*(*(a1 + 72) + 29976) + 224) += v14;
    v15 = BytesNoCopy[13];
    *(*(*(a1 + 72) + 29976) + 232) += BytesNoCopy[12];
    *(*(*(a1 + 72) + 29976) + 240) += v15;
    v16 = BytesNoCopy[15];
    *(*(*(a1 + 72) + 29976) + 248) += BytesNoCopy[14];
    *(*(*(a1 + 72) + 29976) + 256) += v16;
    *(*(*(a1 + 72) + 29976) + 264) += BytesNoCopy[16];
    v17 = IO80211Controller::setExtendedChipCounterStats();
    v18 = 0;
    if ((v17 & 1) == 0)
    {
      AppleBCMWLANCore::setOmiStats();
      return v27;
    }
  }

  else
  {
    v18 = 0;
    *(v9 + 144) = v8;
    v19 = BytesNoCopy[3];
    *(*(*(a1 + 72) + 29976) + 152) = BytesNoCopy[2];
    *(*(*(a1 + 72) + 29976) + 160) = v19;
    v20 = BytesNoCopy[5];
    *(*(*(a1 + 72) + 29976) + 168) = BytesNoCopy[4];
    *(*(*(a1 + 72) + 29976) + 176) = v20;
    v21 = BytesNoCopy[7];
    *(*(*(a1 + 72) + 29976) + 184) = BytesNoCopy[6];
    *(*(*(a1 + 72) + 29976) + 192) = v21;
    v22 = BytesNoCopy[9];
    *(*(*(a1 + 72) + 29976) + 200) = BytesNoCopy[8];
    *(*(*(a1 + 72) + 29976) + 208) = v22;
    v23 = BytesNoCopy[11];
    *(*(*(a1 + 72) + 29976) + 216) = BytesNoCopy[10];
    *(*(*(a1 + 72) + 29976) + 224) = v23;
    v24 = BytesNoCopy[13];
    *(*(*(a1 + 72) + 29976) + 232) = BytesNoCopy[12];
    *(*(*(a1 + 72) + 29976) + 240) = v24;
    v25 = BytesNoCopy[15];
    *(*(*(a1 + 72) + 29976) + 248) = BytesNoCopy[14];
    *(*(*(a1 + 72) + 29976) + 256) = v25;
    *(*(*(a1 + 72) + 29976) + 264) = BytesNoCopy[16];
  }

  return v18;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV2(IO80211Controller *this, OSData *a2)
{
  v2 = 3758097084;
  v41 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39 = v3;
  v40 = v3;
  BYTE4(v39) = 0;
  LODWORD(v39) = 19;
  if (!a2)
  {
    return 3758097090;
  }

  BytesNoCopy = OSData::getBytesNoCopy(a2);
  if (OSData::getLength(a2) <= 0x23)
  {
    AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV2();
    return __str;
  }

  if (((BytesNoCopy + 8) & 3) != 0)
  {
    v7 = IOMallocZeroTyped();
    if (!v7)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV2();
        }
      }

      return v2;
    }

    v8 = v7;
    v9 = OSData::getBytesNoCopy(a2);
    v10 = v9[8];
    v11 = *(v9 + 1);
    *v8 = *v9;
    v8[1] = v11;
    *(v8 + 8) = v10;
    BytesNoCopy = v8;
  }

  else
  {
    v8 = 0;
  }

  v45 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44 = v12;
  *&v42[16] = v12;
  v43 = v12;
  *v42 = v12;
  if (!BytesNoCopy[1])
  {
    v2 = 0;
    if (!v8)
    {
      return v2;
    }

    goto LABEL_23;
  }

  v43 = 0uLL;
  v13 = *(BytesNoCopy + 2);
  *&v14 = v13;
  *(&v14 + 1) = HIDWORD(v13);
  *&v42[8] = v14;
  *&v42[24] = BytesNoCopy[6];
  *&v44 = *(BytesNoCopy + 14);
  *(&v44 + 1) = *(BytesNoCopy + 15);
  v45 = *(BytesNoCopy + 16);
  *v42 = *(BytesNoCopy + 1);
  if (*v42 >= 8u)
  {
    *v42 = v42[0] & 7;
  }

  if ((IO80211Controller::setBTCoexstat() & 1) == 0)
  {
    AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV2();
    v2 = __str;
    if (!v8)
    {
      return v2;
    }

    goto LABEL_23;
  }

  dword_1003E8598 = BytesNoCopy[2];
  v15 = *(BytesNoCopy + 3);
  v16 = vorrq_s8(*algn_1003E859C, v15).u32[0];
  v17 = vaddq_s32(*algn_1003E859C, v15);
  v17.i32[0] = v16;
  *algn_1003E859C = v17;
  word_1003E85AC += *(BytesNoCopy + 14);
  word_1003E85AE += *(BytesNoCopy + 15);
  LOWORD(dword_1003E85B0) = dword_1003E85B0 + *(BytesNoCopy + 16);
  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV2(OSData *)::fDeltaBTCoexStatsReport = vadd_s32(vand_s8(vshl_u32(vdup_n_s32(dword_1003E8598), -2), 0x100000001), AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV2(OSData *)::fDeltaBTCoexStatsReport);
  dword_1003E85C0 += (dword_1003E8598 >> 9) & 1;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v37 = 0xAAAAAAAAAAAAAAAALL;
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v60 = v18;
  v61 = v18;
  v58 = v18;
  v59 = v18;
  v56 = v18;
  v57 = v18;
  v54 = v18;
  v55 = v18;
  v52 = v18;
  v53 = v18;
  v50 = v18;
  v51 = v18;
  v48 = v18;
  v49 = v18;
  __str = v18;
  v47 = v18;
  v33 = AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV2(OSData *)::fDeltaBTCoexStatsReport;
  v19 = dword_1003E85A4;
  v20 = unk_1003E85A8 / 0x3E8uLL;
  v34 = 1338014025;
  v35 = v20;
  v36 = dword_1003E85C0;
  *(*(this + 9) + 30970) = 100 * v20 / 0xB2F4FC07949;
  snprintf(&__str, 0x100uLL, "BT Coex Stats2:btDur=%llums(%llu%%) status=0x%x reqTypeMap=0x%x req=%u gnt=%u abort=%u rx1ovfl=%u latency=%u [%llums]\n", v20, 100 * v20 / 0xB2F4FC07949, dword_1003E8598, *algn_1003E859C, dword_1003E85A0, v19, word_1003E85AC, word_1003E85AE, dword_1003E85B0, 0xB2F4FC07949);
  v21 = *(this + 9);
  if ((*(v21 + 964) - 1) > 1)
  {
    v22 = (v21 + 32973);
    v23 = v59;
    v22[12] = v58;
    v22[13] = v23;
    v24 = v61;
    v22[14] = v60;
    v22[15] = v24;
    v25 = v55;
    v22[8] = v54;
    v22[9] = v25;
    v26 = v57;
    v22[10] = v56;
    v22[11] = v26;
    v27 = v51;
    v22[4] = v50;
    v22[5] = v27;
    v28 = v53;
    v22[6] = v52;
    v22[7] = v28;
    v29 = v47;
    *v22 = __str;
    v22[1] = v29;
    v30 = v49;
    v22[2] = v48;
    v22[3] = v30;
  }

  else
  {
    io80211_os_log("LQM-WiFi: %s\n", &__str);
  }

  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV2(OSData *)::fLastLogDeltaBTCoexStats = mach_continuous_time();
  v31 = *(*(this + 9) + 11288);
  if (v31)
  {
    IO80211Controller::postMessage(this, v31, 0xBEu, &v33, 0x1CuLL, 1);
  }

  v2 = 0;
  dword_1003E85B0 = 0;
  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV2(OSData *)::fDeltaBTCoexStatsV2 = 0u;
  *&dword_1003E85A0 = 0u;
  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV2(OSData *)::fDeltaBTCoexStatsReport = 0;
  dword_1003E85C0 = 0;
  if (v8)
  {
LABEL_23:
    memset_s(v8, 0x24uLL, 0, 0x24uLL);
    IOFree(v8, 0x24uLL);
  }

  return v2;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV3(void *this, OSData *a2)
{
  v2 = 3758097084;
  if (!a2)
  {
    return 3758097090;
  }

  BytesNoCopy = OSData::getBytesNoCopy(a2);
  if (OSData::getLength(a2) <= 0x3B)
  {
    AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV3();
    return v27;
  }

  if (((BytesNoCopy + 8) & 3) != 0)
  {
    v6 = IOMallocZeroTyped();
    if (!v6)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV3();
        }
      }

      return v2;
    }

    v7 = v6;
    v8 = OSData::getBytesNoCopy(a2);
    v10 = v8[1];
    v9 = v8[2];
    v11 = *v8;
    *(v7 + 44) = *(v8 + 44);
    v7[1] = v10;
    v7[2] = v9;
    *v7 = v11;
    BytesNoCopy = v7;
  }

  else
  {
    v7 = 0;
  }

  if (!*(BytesNoCopy + 1))
  {
    v2 = 0;
    if (!v7)
    {
      return v2;
    }

    goto LABEL_19;
  }

  if ((IO80211Controller::setBTCoexstat() & 1) == 0)
  {
    AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV3();
    v2 = v28;
    if (!v7)
    {
      return v2;
    }

    goto LABEL_19;
  }

  dword_1003E85D8 = *(BytesNoCopy + 2);
  v12 = *(BytesNoCopy + 12);
  v13 = vorrq_s8(*algn_1003E85DC, v12).u32[0];
  v14 = vaddq_s32(*algn_1003E85DC, v12);
  v14.i32[0] = v13;
  *algn_1003E85DC = v14;
  word_1003E85EC += *(BytesNoCopy + 14);
  word_1003E85EE += *(BytesNoCopy + 15);
  LOWORD(xmmword_1003E85F0) = xmmword_1003E85F0 + *(BytesNoCopy + 16);
  *(&xmmword_1003E85F0 + 4) = vaddq_s16(*(&xmmword_1003E85F0 + 4), *(BytesNoCopy + 36));
  word_1003E8604 += *(BytesNoCopy + 26);
  word_1003E8606 += *(BytesNoCopy + 27);
  word_1003E8608 += *(BytesNoCopy + 28);
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __str = v15;
  v30 = v15;
  v31 = v15;
  v32 = v15;
  v33 = v15;
  v34 = v15;
  v35 = v15;
  v36 = v15;
  v37 = v15;
  v38 = v15;
  v39 = v15;
  v40 = v15;
  v41 = v15;
  v42 = v15;
  v43 = v15;
  v44 = v15;
  snprintf(&__str, 0x100uLL, "BT Coex Stats3:btDur=%llums(%llu%%) status=0x%x reqTypeMap=0x%x req=%u gnt=%u abort=%u rx1ovfl=%u latency=%u sucPM=%u sucCTS2S=%u wlanTXPreempt=%u wlanRXPreempt=%u apTXafterPM=%u gntAudio=%u denyAudio=%u gntA2DP=%u denyA2DP=%u gntSniff=%u denySniff=%u [%llums]\n", dword_1003E85E8 / 0x3E8uLL, 100 * (dword_1003E85E8 / 0x3E8u) / 0xB2F4FC07949, dword_1003E85D8, *algn_1003E85DC, dword_1003E85E0, unk_1003E85E4, word_1003E85EC, word_1003E85EE, xmmword_1003E85F0, WORD2(xmmword_1003E85F0), WORD3(xmmword_1003E85F0), WORD4(xmmword_1003E85F0), WORD5(xmmword_1003E85F0), WORD6(xmmword_1003E85F0), HIWORD(xmmword_1003E85F0), word_1003E8600, word_1003E8602, word_1003E8604, word_1003E8606, word_1003E8608, 0xB2F4FC07949);
  v16 = this[9];
  if ((*(v16 + 964) - 1) > 1)
  {
    v17 = (v16 + 32973);
    v18 = v42;
    v17[12] = v41;
    v17[13] = v18;
    v19 = v44;
    v17[14] = v43;
    v17[15] = v19;
    v20 = v38;
    v17[8] = v37;
    v17[9] = v20;
    v21 = v40;
    v17[10] = v39;
    v17[11] = v21;
    v22 = v34;
    v17[4] = v33;
    v17[5] = v22;
    v23 = v36;
    v17[6] = v35;
    v17[7] = v23;
    v24 = v30;
    *v17 = __str;
    v17[1] = v24;
    v25 = v32;
    v17[2] = v31;
    v17[3] = v25;
  }

  else
  {
    io80211_os_log("LQM-WiFi: %s\n", &__str);
  }

  v2 = 0;
  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV3(OSData *)::fLastLogDeltaBTCoexStats = mach_continuous_time();
  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV3(OSData *)::fDeltaBTCoexStatsV3 = 0u;
  *&dword_1003E85E0 = 0u;
  xmmword_1003E85F0 = 0u;
  *(&xmmword_1003E85F0 + 12) = 0u;
  if (v7)
  {
LABEL_19:
    memset_s(v7, 0x3CuLL, 0, 0x3CuLL);
    IOFree(v7, 0x3CuLL);
  }

  return v2;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV4(unint64_t this, OSData *a2)
{
  v2 = 3758097084;
  if (!a2)
  {
    return 3758097090;
  }

  BytesNoCopy = OSData::getBytesNoCopy(a2);
  if (OSData::getLength(a2) <= 0x5B)
  {
    AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV4();
    return v14;
  }

  if (((BytesNoCopy + 8) & 3) == 0)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v6 = IOMallocZeroTyped();
  if (v6)
  {
    v7 = v6;
    v8 = OSData::getBytesNoCopy(a2);
    v9 = v8[1];
    *v7 = *v8;
    v7[1] = v9;
    v11 = v8[3];
    v10 = v8[4];
    v12 = v8[2];
    *(v7 + 76) = *(v8 + 76);
    v7[3] = v11;
    v7[4] = v10;
    v7[2] = v12;
    BytesNoCopy = v7;
LABEL_8:
    if (*(BytesNoCopy + 1))
    {
      if (BytesNoCopy[1] >= 8)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV4();
          }
        }
      }

      IO80211Controller::setBTCoexstat();
    }

    if (v7)
    {
      memset_s(v7, 0x5CuLL, 0, 0x5CuLL);
      IOFree(v7, 0x5CuLL);
    }

    return 0;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV4();
    }
  }

  return v2;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV6(IO80211Controller *this, OSData *a2)
{
  v2 = 3758097084;
  v41 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39 = v3;
  v40 = v3;
  BYTE4(v39) = 0;
  LODWORD(v39) = 19;
  if (!a2)
  {
    return 3758097090;
  }

  BytesNoCopy = OSData::getBytesNoCopy(a2);
  if (OSData::getLength(a2) <= 0x3B)
  {
    AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV6();
    return __str;
  }

  if (((BytesNoCopy + 8) & 3) != 0)
  {
    v7 = IOMallocZeroTyped();
    if (!v7)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV6();
        }
      }

      return v2;
    }

    v8 = v7;
    v9 = OSData::getBytesNoCopy(a2);
    v11 = v9[1];
    v10 = v9[2];
    v12 = *v9;
    *(v8 + 44) = *(v9 + 44);
    v8[1] = v11;
    v8[2] = v10;
    *v8 = v12;
    BytesNoCopy = v8;
  }

  else
  {
    v8 = 0;
  }

  v45 = 0xAAAAAAAAAAAAAAAALL;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44 = v13;
  *&v42[16] = v13;
  v43 = v13;
  *v42 = v13;
  if (!BytesNoCopy[1])
  {
    v2 = 0;
    if (!v8)
    {
      return v2;
    }

    goto LABEL_23;
  }

  v43 = 0uLL;
  v14 = *(BytesNoCopy + 2);
  *&v15 = v14;
  *(&v15 + 1) = HIDWORD(v14);
  *&v42[8] = v15;
  *&v42[24] = BytesNoCopy[6];
  *&v44 = *(BytesNoCopy + 14);
  *(&v44 + 1) = *(BytesNoCopy + 15);
  v45 = *(BytesNoCopy + 16);
  *v42 = *(BytesNoCopy + 1);
  if (*v42 >= 8u)
  {
    *v42 = v42[0] & 7;
  }

  if ((IO80211Controller::setBTCoexstat() & 1) == 0)
  {
    AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV6();
    v2 = __str;
    if (!v8)
    {
      return v2;
    }

    goto LABEL_23;
  }

  dword_1003E8620 = BytesNoCopy[2];
  v16 = *(BytesNoCopy + 3);
  v17 = vorrq_s8(*algn_1003E8624, v16).u32[0];
  v18 = vaddq_s32(*algn_1003E8624, v16);
  v18.i32[0] = v17;
  *algn_1003E8624 = v18;
  *(&xmmword_1003E8628 + 12) = vaddq_s16(*(&xmmword_1003E8628 + 12), *(BytesNoCopy + 7));
  *&word_1003E8644 = vadd_s16(*&word_1003E8644, *(BytesNoCopy + 11));
  word_1003E864C += *(BytesNoCopy + 26);
  word_1003E864E += *(BytesNoCopy + 27);
  word_1003E8650 += *(BytesNoCopy + 28);
  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV6(OSData *)::fDeltaBTCoexStatsReport = vadd_s32(vand_s8(vshl_u32(vdup_n_s32(dword_1003E8620), -2), 0x100000001), AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV6(OSData *)::fDeltaBTCoexStatsReport);
  dword_1003E8660 += (dword_1003E8620 >> 9) & 1;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v37 = 0xAAAAAAAAAAAAAAAALL;
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v60 = v19;
  v61 = v19;
  v58 = v19;
  v59 = v19;
  v56 = v19;
  v57 = v19;
  v54 = v19;
  v55 = v19;
  v52 = v19;
  v53 = v19;
  v50 = v19;
  v51 = v19;
  v48 = v19;
  v49 = v19;
  __str = v19;
  v47 = v19;
  v33 = AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV6(OSData *)::fDeltaBTCoexStatsReport;
  v20 = DWORD2(xmmword_1003E8628) / 0x3E8uLL;
  v34 = 1338014025;
  v35 = v20;
  v36 = dword_1003E8660;
  *(*(this + 9) + 30970) = 100 * v20 / 0xB2F4FC07949;
  snprintf(&__str, 0x100uLL, "BT Coex Stats6:btDur=%llums(%llu%%) status=0x%x reqTypeMap=0x%x req=%u gnt=%u abort=%u rx1ovfl=%u latency=%u pmAttempt=%u sucPM=%u sucCTS2S=%u wlanTXPreempt=%u wlanRXPreempt=%u apTXafterPM=%u gntAudio=%u denyAudio=%u gntA2DP=%u denyA2DP=%u gntSniff=%u denySniff=%u [%llums]\n", v20, 100 * v20 / 0xB2F4FC07949, dword_1003E8620, *algn_1003E8624, xmmword_1003E8628, DWORD1(xmmword_1003E8628), WORD6(xmmword_1003E8628), HIWORD(xmmword_1003E8628), word_1003E8638, word_1003E863A, word_1003E863C, word_1003E863E, word_1003E8640, word_1003E8642, word_1003E8644, word_1003E8646, word_1003E8648, word_1003E864A, word_1003E864C, word_1003E864E, word_1003E8650, 0xB2F4FC07949);
  v21 = *(this + 9);
  if ((*(v21 + 964) - 1) > 1)
  {
    v22 = (v21 + 32973);
    v23 = v59;
    v22[12] = v58;
    v22[13] = v23;
    v24 = v61;
    v22[14] = v60;
    v22[15] = v24;
    v25 = v55;
    v22[8] = v54;
    v22[9] = v25;
    v26 = v57;
    v22[10] = v56;
    v22[11] = v26;
    v27 = v51;
    v22[4] = v50;
    v22[5] = v27;
    v28 = v53;
    v22[6] = v52;
    v22[7] = v28;
    v29 = v47;
    *v22 = __str;
    v22[1] = v29;
    v30 = v49;
    v22[2] = v48;
    v22[3] = v30;
  }

  else
  {
    io80211_os_log("LQM-WiFi: %s\n", &__str);
  }

  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV6(OSData *)::fLastLogDeltaBTCoexStats = mach_continuous_time();
  v31 = *(*(this + 9) + 11288);
  if (v31)
  {
    IO80211Controller::postMessage(this, v31, 0xBEu, &v33, 0x1CuLL, 1);
  }

  v2 = 0;
  *&word_1003E8644 = 0u;
  xmmword_1003E8628 = 0u;
  *&word_1003E8638 = 0u;
  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV6(OSData *)::fDeltaBTCoexStatsV6 = 0u;
  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV6(OSData *)::fDeltaBTCoexStatsReport = 0;
  dword_1003E8660 = 0;
  if (v8)
  {
LABEL_23:
    memset_s(v8, 0x3CuLL, 0, 0x3CuLL);
    IOFree(v8, 0x3CuLL);
  }

  return v2;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV7(IO80211Controller *this, OSData *a2)
{
  v2 = 3758097084;
  v52 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v50 = v3;
  v51 = v3;
  BYTE4(v50) = 0;
  LODWORD(v50) = 19;
  if (!a2)
  {
    return 3758097090;
  }

  BytesNoCopy = OSData::getBytesNoCopy(a2);
  if (OSData::getLength(a2) <= 0x47)
  {
    AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV7();
    return __str;
  }

  if (((BytesNoCopy + 8) & 3) != 0)
  {
    v7 = IOMallocZeroTyped();
    if (!v7)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV7();
        }
      }

      return v2;
    }

    v8 = v7;
    v9 = OSData::getBytesNoCopy(a2);
    *v8 = *v9;
    v11 = v9[2];
    v10 = v9[3];
    v12 = v9[1];
    v8[8] = *(v9 + 8);
    *(v8 + 2) = v11;
    *(v8 + 3) = v10;
    *(v8 + 1) = v12;
    BytesNoCopy = v8;
  }

  else
  {
    v8 = 0;
  }

  v56 = 0xAAAAAAAAAAAAAAAALL;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v55 = v13;
  *&v53[16] = v13;
  v54 = v13;
  *v53 = v13;
  if (!BytesNoCopy[1])
  {
    v2 = 0;
    if (!v8)
    {
      return v2;
    }

    goto LABEL_26;
  }

  v54 = 0uLL;
  v14 = *(BytesNoCopy + 2);
  *&v15 = v14;
  *(&v15 + 1) = HIDWORD(v14);
  *&v53[8] = v15;
  *&v53[24] = BytesNoCopy[6];
  *&v55 = *(BytesNoCopy + 14);
  *(&v55 + 1) = *(BytesNoCopy + 15);
  v56 = *(BytesNoCopy + 16);
  *v53 = *(BytesNoCopy + 1);
  if (*v53 >= 8u)
  {
    *v53 = v53[0] & 7;
  }

  if ((IO80211Controller::setBTCoexstat() & 1) == 0)
  {
    AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV7();
    v2 = __str;
    if (!v8)
    {
      return v2;
    }

    goto LABEL_26;
  }

  dword_1003E8678 = BytesNoCopy[2];
  v16 = *(BytesNoCopy + 3);
  v17 = vorrq_s8(*algn_1003E867C, v16).u32[0];
  v18 = vaddq_s32(*algn_1003E867C, v16);
  v18.i32[0] = v17;
  *algn_1003E867C = v18;
  *&word_1003E868C = vaddq_s16(*&word_1003E868C, *(BytesNoCopy + 7));
  *(&xmmword_1003E8690 + 12) = vaddq_s16(*(&xmmword_1003E8690 + 12), *(BytesNoCopy + 11));
  *&word_1003E86AC = vadd_s16(*&word_1003E86AC, *(BytesNoCopy + 15));
  WORD2(qword_1003E86B0) += *(BytesNoCopy + 34);
  v19 = BytesNoCopy[2];
  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV7(OSData *)::fDeltaBTCoexStatsReport = vadd_s32(vand_s8(vshl_u32(vdup_n_s32(v19), -2), 0x100000001), AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV7(OSData *)::fDeltaBTCoexStatsReport);
  dword_1003E86C0 += (v19 >> 9) & 1;
  v49 = 0xAAAAAAAAAAAAAAAALL;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v48 = 0xAAAAAAAAAAAAAAAALL;
  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v71 = v20;
  v72 = v20;
  v69 = v20;
  v70 = v20;
  v67 = v20;
  v68 = v20;
  v65 = v20;
  v66 = v20;
  v63 = v20;
  v64 = v20;
  v61 = v20;
  v62 = v20;
  v59 = v20;
  v60 = v20;
  __str = v20;
  v58 = v20;
  v44 = AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV7(OSData *)::fDeltaBTCoexStatsReport;
  v47 = dword_1003E86C0;
  v21 = dword_1003E8688 / 0x3E8uLL;
  *(*(this + 9) + 30970) = 100 * v21 / 0xB2F4FC07949;
  v45 = 1338014025;
  v46 = v21;
  snprintf(&__str, 0x100uLL, "Stats7: btDur=%llums(%llu%%) status=0x%x reqTypeMap=0x%x req=%u gnt=%u abort=%u rx1ovfl=%u latency=%u pmAttempt=%u sucPM=%u sucCTS2S=%u wlanTXPreempt=%u wlanRXPreempt=%u apTXafterPM=%u gntAudio=%u denyAudio=%u gntA2DP=%u denyA2DP=%u\n", v21, 100 * v21 / 0xB2F4FC07949, dword_1003E8678, *algn_1003E867C, dword_1003E8680, unk_1003E8684, word_1003E868C, word_1003E868E, xmmword_1003E8690, WORD1(xmmword_1003E8690), WORD2(xmmword_1003E8690), WORD3(xmmword_1003E8690), WORD4(xmmword_1003E8690), WORD5(xmmword_1003E8690), WORD6(xmmword_1003E8690), HIWORD(xmmword_1003E8690), word_1003E86A0, word_1003E86A2, word_1003E86A4);
  v22 = *(this + 9);
  if ((*(v22 + 964) - 1) > 1)
  {
    v23 = (v22 + 32973);
    v24 = v70;
    v23[12] = v69;
    v23[13] = v24;
    v25 = v72;
    v23[14] = v71;
    v23[15] = v25;
    v26 = v66;
    v23[8] = v65;
    v23[9] = v26;
    v27 = v68;
    v23[10] = v67;
    v23[11] = v27;
    v28 = v62;
    v23[4] = v61;
    v23[5] = v28;
    v29 = v64;
    v23[6] = v63;
    v23[7] = v29;
    v30 = v58;
    *v23 = __str;
    v23[1] = v30;
    v31 = v60;
    v23[2] = v59;
    v23[3] = v31;
  }

  else
  {
    io80211_os_log("LQM-WiFi: %s\n", &__str);
  }

  snprintf(&__str, 0x100uLL, "Stats7: CrtPriCnt=%u PriCnt=%u gntSniff=%u denySniff=%u antGrant0~10ms=%u antGrant10~30ms=%u antGrant30~60ms=%u antGrant>60ms=%u [%llums]\n", word_1003E86AA, word_1003E86AC, word_1003E86A6, word_1003E86A8, word_1003E86AE, qword_1003E86B0, WORD1(qword_1003E86B0), WORD2(qword_1003E86B0), 0xB2F4FC07949);
  v32 = *(this + 9);
  if ((*(v32 + 964) - 1) > 1)
  {
    v33 = (v32 + 33229);
    v34 = v70;
    v33[12] = v69;
    v33[13] = v34;
    v35 = v72;
    v33[14] = v71;
    v33[15] = v35;
    v36 = v66;
    v33[8] = v65;
    v33[9] = v36;
    v37 = v68;
    v33[10] = v67;
    v33[11] = v37;
    v38 = v62;
    v33[4] = v61;
    v33[5] = v38;
    v39 = v64;
    v33[6] = v63;
    v33[7] = v39;
    v40 = v58;
    *v33 = __str;
    v33[1] = v40;
    v41 = v60;
    v33[2] = v59;
    v33[3] = v41;
  }

  else
  {
    io80211_os_log("LQM-WiFi: %s\n", &__str);
  }

  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV7(OSData *)::fLastLogDeltaBTCoexStats = mach_continuous_time();
  v42 = *(*(this + 9) + 11288);
  if (v42)
  {
    IO80211Controller::postMessage(this, v42, 0xBEu, &v44, 0x1CuLL, 1);
  }

  v2 = 0;
  qword_1003E86B0 = 0;
  xmmword_1003E8690 = 0u;
  *&word_1003E86A0 = 0u;
  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV7(OSData *)::fDeltaBTCoexStatsV7 = 0u;
  *&dword_1003E8680 = 0u;
  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV7(OSData *)::fDeltaBTCoexStatsReport = 0;
  dword_1003E86C0 = 0;
  if (v8)
  {
LABEL_26:
    memset_s(v8, 0x48uLL, 0, 0x48uLL);
    IOFree(v8, 0x48uLL);
  }

  return v2;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV11(IO80211Controller *this, OSData *a2)
{
  v2 = 3758097084;
  v69 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v67 = v3;
  v68 = v3;
  BYTE4(v67) = 0;
  LODWORD(v67) = 19;
  if (!a2)
  {
    return 3758097090;
  }

  BytesNoCopy = OSData::getBytesNoCopy(a2);
  if (OSData::getLength(a2) <= 0x57)
  {
    AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV11();
    return __str;
  }

  if (((BytesNoCopy + 8) & 3) != 0)
  {
    v7 = IOMallocZeroTyped();
    if (!v7)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV11();
        }
      }

      return v2;
    }

    v8 = v7;
    v9 = OSData::getBytesNoCopy(a2);
    v10 = v9[1];
    *v8 = *v9;
    v8[1] = v10;
    v12 = v9[3];
    v11 = v9[4];
    v13 = v9[2];
    *(v8 + 10) = *(v9 + 10);
    v8[3] = v12;
    v8[4] = v11;
    v8[2] = v13;
    BytesNoCopy = v8;
  }

  else
  {
    v8 = 0;
  }

  v73 = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v72 = v14;
  *&v70[16] = v14;
  v71 = v14;
  *v70 = v14;
  if (!BytesNoCopy[1])
  {
    v2 = 0;
    if (!v8)
    {
      return v2;
    }

    goto LABEL_31;
  }

  v71 = 0uLL;
  v15 = *(BytesNoCopy + 2);
  *&v16 = v15;
  *(&v16 + 1) = HIDWORD(v15);
  *&v70[8] = v16;
  *&v70[24] = BytesNoCopy[6];
  v17 = *(BytesNoCopy + 14);
  *&v72 = v17 - AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV11(OSData *)::lastBTC;
  v18 = *(BytesNoCopy + 15);
  *(&v72 + 1) = v18 - AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV11(OSData *)::lastBTC;
  v19 = *(BytesNoCopy + 16);
  v73 = v19 - AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV11(OSData *)::lastBTC;
  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV11(OSData *)::lastBTC = v17;
  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV11(OSData *)::lastBTC = v18;
  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV11(OSData *)::lastBTC = v19;
  *v70 = *(BytesNoCopy + 1);
  if (*v70 >= 8u)
  {
    *v70 = v70[0] & 7;
  }

  if ((IO80211Controller::setBTCoexstat() & 1) == 0)
  {
    AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV11();
    v2 = __str;
    if (!v8)
    {
      return v2;
    }

    goto LABEL_31;
  }

  dword_1003E86E4 = BytesNoCopy[2];
  v20 = *(BytesNoCopy + 3);
  v21 = vorrq_s8(unk_1003E86E8, v20).u32[0];
  v22 = vaddq_s32(unk_1003E86E8, v20);
  v22.i32[0] = v21;
  unk_1003E86E8 = v22;
  *(&xmmword_1003E86EC + 12) = vaddq_s16(*(&xmmword_1003E86EC + 12), *(BytesNoCopy + 7));
  *&word_1003E8708 = vaddq_s16(*&word_1003E8708, *(BytesNoCopy + 11));
  *(&xmmword_1003E870C + 12) = vadd_s16(*(&xmmword_1003E870C + 12), *(BytesNoCopy + 15));
  word_1003E8720 += *(BytesNoCopy + 34);
  v23 = word_1003E8722;
  if (word_1003E8722 <= *(BytesNoCopy + 35))
  {
    v23 = *(BytesNoCopy + 35);
  }

  word_1003E8722 = v23;
  byte_1003E8724 += *(BytesNoCopy + 72);
  byte_1003E8725 += *(BytesNoCopy + 73);
  *&byte_1003E8727 = *(BytesNoCopy + 75);
  byte_1003E872B = *(BytesNoCopy + 79);
  LOWORD(qword_1003E872C) = qword_1003E872C + *(BytesNoCopy + 40);
  WORD1(qword_1003E872C) += *(BytesNoCopy + 41);
  HIDWORD(qword_1003E872C) = BytesNoCopy[21];
  v24 = BytesNoCopy[2];
  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV11(OSData *)::fDeltaBTCoexStatsReport = vadd_s32(vand_s8(vshl_u32(vdup_n_s32(v24), -2), 0x100000001), AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV11(OSData *)::fDeltaBTCoexStatsReport);
  dword_1003E8740 += (v24 >> 9) & 1;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v88 = v25;
  v89 = v25;
  v86 = v25;
  v87 = v25;
  v84 = v25;
  v85 = v25;
  v82 = v25;
  v83 = v25;
  v80 = v25;
  v81 = v25;
  v78 = v25;
  v79 = v25;
  v76 = v25;
  v77 = v25;
  __str = v25;
  v75 = v25;
  v60 = AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV11(OSData *)::fDeltaBTCoexStatsReport;
  v65 = -1431655766;
  v26 = DWORD2(xmmword_1003E86EC) / 0x3E8uLL;
  v61 = 1338014025;
  v62 = v26;
  v63 = dword_1003E8740;
  *(*(this + 9) + 30970) = 100 * v26 / 0xB2F4FC07949;
  LOWORD(v65) = word_1003E8728;
  v27 = ((0xB2F4FC07949 * v26) / (0xB2F4FC07949uLL - qword_1003E872C));
  v64 = ((0xB2F4FC07949 * v26) / (0xB2F4FC07949uLL - qword_1003E872C));
  snprintf(&__str, 0x100uLL, "Stats11: btDur=%llums(%llu%%) status=0x%x reqTypeMap=0x%x req=%u gnt=%u abort=%u rx1ovfl=%u latency=%u pmAttempt=%u sucPM=%u sucCTS2S=%u wlanTXPreempt=%u wlanRXPreempt=%u apTXafterPM=%u gntAudio=%u denyAudio=%u gntA2DP=%u denyA2DP=%u\n", v26, 100 * v26 / 0xB2F4FC07949, dword_1003E86E4, unk_1003E86E8, xmmword_1003E86EC, DWORD1(xmmword_1003E86EC), WORD6(xmmword_1003E86EC), HIWORD(xmmword_1003E86EC), word_1003E86FC, word_1003E86FE, word_1003E8700, word_1003E8702, word_1003E8704, word_1003E8706, word_1003E8708, word_1003E870A, xmmword_1003E870C, WORD1(xmmword_1003E870C), WORD2(xmmword_1003E870C));
  v28 = *(this + 9);
  if ((*(v28 + 964) - 1) > 1)
  {
    v29 = (v28 + 32973);
    v30 = v87;
    v29[12] = v86;
    v29[13] = v30;
    v31 = v89;
    v29[14] = v88;
    v29[15] = v31;
    v32 = v83;
    v29[8] = v82;
    v29[9] = v32;
    v33 = v85;
    v29[10] = v84;
    v29[11] = v33;
    v34 = v79;
    v29[4] = v78;
    v29[5] = v34;
    v35 = v81;
    v29[6] = v80;
    v29[7] = v35;
    v36 = v75;
    *v29 = __str;
    v29[1] = v36;
    v37 = v77;
    v29[2] = v76;
    v29[3] = v37;
  }

  else
  {
    io80211_os_log("LQM-WiFi: %s\n", &__str);
  }

  snprintf(&__str, 0x100uLL, "Stats11: CrtPriCnt=%u PriCnt=%u gntSniff=%u denySniff=%u antGrant0~10ms=%u antGrant10~30ms=%u antGrant30~60ms=%u antGrant>60ms=%u APLeakiness=%u rr_cnt=%u rr_succ_cnt=%u\n", WORD5(xmmword_1003E870C), WORD6(xmmword_1003E870C), WORD3(xmmword_1003E870C), WORD4(xmmword_1003E870C), HIWORD(xmmword_1003E870C), word_1003E871C, word_1003E871E, word_1003E8720, word_1003E8722, byte_1003E8724, byte_1003E8725);
  v38 = *(this + 9);
  if ((*(v38 + 964) - 1) > 1)
  {
    v39 = (v38 + 33229);
    v40 = v87;
    v39[12] = v86;
    v39[13] = v40;
    v41 = v89;
    v39[14] = v88;
    v39[15] = v41;
    v42 = v83;
    v39[8] = v82;
    v39[9] = v42;
    v43 = v85;
    v39[10] = v84;
    v39[11] = v43;
    v44 = v79;
    v39[4] = v78;
    v39[5] = v44;
    v45 = v81;
    v39[6] = v80;
    v39[7] = v45;
    v46 = v75;
    *v39 = __str;
    v39[1] = v46;
    v47 = v77;
    v39[2] = v76;
    v39[3] = v47;
  }

  else
  {
    io80211_os_log("LQM-WiFi: %s\n", &__str);
  }

  snprintf(&__str, 0x100uLL, "Stats11: btDurAir=%llums(%llu%%) desenseMode=%d wlrssi=%d btrssi=%d profile2gActive=%d profile5gActive=%d inactiveDur=%u btPmAttemptNoackCnt=%u status2=0x%x [%llums]\n", v27, 100 * v27 / 0xB2F4FC07949uLL, byte_1003E8727, word_1003E8728, SHIBYTE(word_1003E8728), byte_1003E872A, byte_1003E872B, qword_1003E872C, WORD1(qword_1003E872C), HIDWORD(qword_1003E872C), 0xB2F4FC07949);
  v48 = *(this + 9);
  if ((*(v48 + 964) - 1) > 1)
  {
    v49 = (v48 + 33997);
    v50 = v87;
    v49[12] = v86;
    v49[13] = v50;
    v51 = v89;
    v49[14] = v88;
    v49[15] = v51;
    v52 = v83;
    v49[8] = v82;
    v49[9] = v52;
    v53 = v85;
    v49[10] = v84;
    v49[11] = v53;
    v54 = v79;
    v49[4] = v78;
    v49[5] = v54;
    v55 = v81;
    v49[6] = v80;
    v49[7] = v55;
    v56 = v75;
    *v49 = __str;
    v49[1] = v56;
    v57 = v77;
    v49[2] = v76;
    v49[3] = v57;
  }

  else
  {
    io80211_os_log("LQM-WiFi: %s\n", &__str);
  }

  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV11(OSData *)::fLastLogDeltaBTCoexStats = mach_continuous_time();
  v58 = *(*(this + 9) + 11288);
  if (v58)
  {
    IO80211Controller::postMessage(this, v58, 0xBEu, &v60, 0x1CuLL, 1);
  }

  v2 = 0;
  qword_1003E872C = 0;
  xmmword_1003E870C = 0u;
  *&word_1003E871C = 0u;
  xmmword_1003E86EC = 0u;
  *&word_1003E86FC = 0u;
  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV11(OSData *)::fDeltaBTCoexStatsV11 = 0u;
  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV11(OSData *)::fDeltaBTCoexStatsReport = 0;
  dword_1003E8740 = 0;
  if (v8)
  {
LABEL_31:
    memset_s(v8, 0x58uLL, 0, 0x58uLL);
    IOFree(v8, 0x58uLL);
  }

  return v2;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12(IO80211Controller *this, OSData *a2)
{
  v2 = 3758097084;
  v93 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v91 = v3;
  v92 = v3;
  BYTE4(v91) = 0;
  LODWORD(v91) = 19;
  if (!a2)
  {
    return 3758097090;
  }

  BytesNoCopy = OSData::getBytesNoCopy(a2);
  if (OSData::getLength(a2) <= 0x6F)
  {
    AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12();
    return __str;
  }

  if (((BytesNoCopy + 8) & 3) != 0)
  {
    v7 = IOMallocZeroTyped();
    if (!v7)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12();
        }
      }

      return v2;
    }

    v8 = v7;
    v9 = OSData::getBytesNoCopy(a2);
    v11 = v9[1];
    v10 = v9[2];
    *v8 = *v9;
    *(v8 + 1) = v11;
    *(v8 + 2) = v10;
    v12 = v9[6];
    v14 = v9[3];
    v13 = v9[4];
    *(v8 + 5) = v9[5];
    *(v8 + 6) = v12;
    *(v8 + 3) = v14;
    *(v8 + 4) = v13;
    BytesNoCopy = v8;
  }

  else
  {
    v8 = 0;
  }

  v97 = 0xAAAAAAAAAAAAAAAALL;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v96 = v15;
  v94[1] = v15;
  v95 = v15;
  v94[0] = v15;
  if (!*(BytesNoCopy + 1))
  {
    v2 = 0;
    if (!v8)
    {
      return v2;
    }

    goto LABEL_56;
  }

  v17 = (BytesNoCopy + 74);
  v16 = BytesNoCopy[74];
  if (v16 >= 2)
  {
    AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12();
    goto LABEL_61;
  }

  v97 = 0;
  v96 = 0u;
  v95 = 0u;
  memset(v94, 0, sizeof(v94));
  if (v16 == 1)
  {
    v18 = *(BytesNoCopy + 2);
    *&v19 = v18;
    *(&v19 + 1) = HIDWORD(v18);
    *(v94 + 8) = v19;
    *(&v94[1] + 1) = *(BytesNoCopy + 6);
    v20 = *(BytesNoCopy + 14);
    *&v96 = v20 - AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12(OSData *)::lastBTC;
    v21 = *(BytesNoCopy + 15);
    *(&v96 + 1) = v21 - AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12(OSData *)::lastBTC;
    v22 = *(BytesNoCopy + 16);
    v97 = v22 - AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12(OSData *)::lastBTC;
    AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12(OSData *)::lastBTC = v20;
    AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12(OSData *)::lastBTC = v21;
    AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12(OSData *)::lastBTC = v22;
    *&v94[0] = *(BytesNoCopy + 1);
    if (LODWORD(v94[0]) >= 8)
    {
      LODWORD(v94[0]) = v94[0] & 7;
    }

    if (IO80211Controller::setBTCoexstat())
    {
      v23 = *v17;
      goto LABEL_16;
    }

    AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12();
LABEL_61:
    v2 = __str;
    if (!v8)
    {
      return v2;
    }

    goto LABEL_56;
  }

  v23 = 0;
LABEL_16:
  v24 = &AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12(OSData *)::fDeltaBTCoexStatsv12 + 112 * v23;
  *(v24 + 2) = *(BytesNoCopy + 2);
  v25 = *(BytesNoCopy + 12);
  v26 = *(v24 + 12);
  v27 = vorrq_s8(v26, v25).u32[0];
  v28 = vaddq_s32(v26, v25);
  v28.i32[0] = v27;
  *(v24 + 12) = v28;
  *(v24 + 28) = vaddq_s16(*(v24 + 28), *(BytesNoCopy + 28));
  *(v24 + 44) = vaddq_s16(*(v24 + 44), *(BytesNoCopy + 44));
  *(v24 + 60) = vadd_s16(*(v24 + 60), *(BytesNoCopy + 60));
  *(v24 + 34) += *(BytesNoCopy + 34);
  v29 = *(v24 + 35);
  if (v29 <= *(BytesNoCopy + 35))
  {
    LOWORD(v29) = *(BytesNoCopy + 35);
  }

  *(v24 + 35) = v29;
  v24[72] += BytesNoCopy[72];
  v24[73] += BytesNoCopy[73];
  *(v24 + 75) = *(BytesNoCopy + 75);
  v24[79] = BytesNoCopy[79];
  *(v24 + 40) += *(BytesNoCopy + 40);
  *(v24 + 41) += *(BytesNoCopy + 41);
  *(v24 + 21) = *(BytesNoCopy + 21);
  v24[74] = v23;
  v30 = BytesNoCopy[74];
  v31 = (&AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12(OSData *)::fDeltaBTCoexStatsv12 + 112 * v30);
  v31[11].i32[0] = *(BytesNoCopy + 22);
  v31[11].i16[2] += *(BytesNoCopy + 46);
  v31[11].i16[3] += *(BytesNoCopy + 47);
  v31[12] = vmax_u32(v31[12], *(BytesNoCopy + 96));
  v31[13].i16[0] += *(BytesNoCopy + 52);
  v31[13].i16[1] += *(BytesNoCopy + 53);
  v31[13].i16[2] |= *(BytesNoCopy + 54);
  if (v30 == 1)
  {
    v32 = *(BytesNoCopy + 2);
    AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12(OSData *)::fDeltaBTCoexStatsReport = vadd_s32(vand_s8(vshl_u32(vdup_n_s32(v32), -2), 0x100000001), AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12(OSData *)::fDeltaBTCoexStatsReport);
    dword_1003E8848 += (v32 >> 9) & 1;
  }

  v90[4] = 0xAAAAAAAAAAAAAAAALL;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  memset(v90, 170, 28);
  *&v33 = 0xAAAAAAAAAAAAAAAALL;
  *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v112 = v33;
  v113 = v33;
  v110 = v33;
  v111 = v33;
  v108 = v33;
  v109 = v33;
  v106 = v33;
  v107 = v33;
  v104 = v33;
  v105 = v33;
  v102 = v33;
  v103 = v33;
  v100 = v33;
  v101 = v33;
  __str = v33;
  v99 = v33;
  v34 = *v17;
  v35 = *(&AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12(OSData *)::fDeltaBTCoexStatsv12 + 28 * *v17 + 6) / 0x3E8uLL;
  if (v34 == 1)
  {
    v90[0] = AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12(OSData *)::fDeltaBTCoexStatsReport;
    v36 = dword_1003E8848;
    LODWORD(v90[1]) = 1338014025;
    HIDWORD(v90[1]) = v35;
    *(*(this + 9) + 30970) = 100 * v35 / 0xB2F4FC07949;
    LOWORD(v90[3]) = unk_1003E8818;
    v90[2] = v36;
  }

  v37 = ((0xB2F4FC07949 * v35) / (0xB2F4FC07949uLL - *(&AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12(OSData *)::fDeltaBTCoexStatsv12 + 56 * v34 + 40)));
  if (!v34)
  {
    if (unk_1003E87A6)
    {
      v38 = "2";
    }

    else
    {
      v38 = "5";
    }

    snprintf(&__str, 0x100uLL, "Stats12(%sG): bt5g_status=0x%x bt5g_defer_cnt=%u bt5g_no_defer_cnt=%u bt5g_defer_max_switch_dur=%u bt5g_no_defer_max_switch_dur=%u bt5g_switch_succ_cnt=%u bt5g_switch_fail_cnt=%u bt5g_switch_reason_bm=%u\n", v38, unk_1003E87B4, unk_1003E87B8, unk_1003E87BA, unk_1003E87BC, unk_1003E87C0, unk_1003E87C4, unk_1003E87C6, unk_1003E87C8);
    v39 = *(this + 9);
    if ((*(v39 + 964) - 1) > 1)
    {
      v40 = (v39 + 32973);
      v41 = v111;
      v40[12] = v110;
      v40[13] = v41;
      v42 = v113;
      v40[14] = v112;
      v40[15] = v42;
      v43 = v107;
      v40[8] = v106;
      v40[9] = v43;
      v44 = v109;
      v40[10] = v108;
      v40[11] = v44;
      v45 = v103;
      v40[4] = v102;
      v40[5] = v45;
      v46 = v105;
      v40[6] = v104;
      v40[7] = v46;
      v47 = v99;
      *v40 = __str;
      v40[1] = v47;
      v48 = v101;
      v40[2] = v100;
      v40[3] = v48;
    }

    else
    {
      io80211_os_log("LQM-WiFi: %s\n", &__str);
    }
  }

  v49 = &AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12(OSData *)::fDeltaBTCoexStatsv12 + 112 * *v17;
  if (v49[74])
  {
    v50 = "2";
  }

  else
  {
    v50 = "5";
  }

  snprintf(&__str, 0x100uLL, "Stats12(%sG): btDur=%llums(%llu%%) status=0x%x reqTypeMap=0x%x req=%u gnt=%u abort=%u rx1ovfl=%u latency=%u pmAttempt=%u sucPM=%u sucCTS2S=%u wlanTXPreempt=%u wlanRXPreempt=%u apTXafterPM=%u gntAudio=%u denyAudio=%u gntA2DP=%u denyA2DP=%u\n", v50, v35, 100 * v35 / 0xB2F4FC07949, *(v49 + 2), *(v49 + 3), *(v49 + 4), *(v49 + 5), *(v49 + 14), *(v49 + 15), *(v49 + 16), *(v49 + 17), *(v49 + 18), *(v49 + 19), *(v49 + 20), *(v49 + 21), *(v49 + 22), *(v49 + 23), *(v49 + 24), *(v49 + 25), *(v49 + 26));
  v51 = *(this + 9);
  if ((*(v51 + 964) - 1) > 1)
  {
    v52 = (v51 + 33229);
    v53 = v111;
    v52[12] = v110;
    v52[13] = v53;
    v54 = v113;
    v52[14] = v112;
    v52[15] = v54;
    v55 = v107;
    v52[8] = v106;
    v52[9] = v55;
    v56 = v109;
    v52[10] = v108;
    v52[11] = v56;
    v57 = v103;
    v52[4] = v102;
    v52[5] = v57;
    v58 = v105;
    v52[6] = v104;
    v52[7] = v58;
    v59 = v99;
    *v52 = __str;
    v52[1] = v59;
    v60 = v101;
    v52[2] = v100;
    v52[3] = v60;
  }

  else
  {
    io80211_os_log("LQM-WiFi: %s\n", &__str);
  }

  v61 = &AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12(OSData *)::fDeltaBTCoexStatsv12 + 112 * *v17;
  v62 = "2";
  if (!v61[74])
  {
    v62 = "5";
  }

  snprintf(&__str, 0x100uLL, "Stats12(%sG): CrtPriCnt=%u PriCnt=%u gntSniff=%u denySniff=%u antGrant0~10ms=%u antGrant10~30ms=%u antGrant30~60ms=%u antGrant>60ms=%u APLeakiness=%u rr_cnt=%u rr_succ_cnt=%u\n", v62, *(v61 + 29), *(v61 + 30), *(v61 + 27), *(v61 + 28), *(v61 + 31), *(v61 + 32), *(v61 + 33), *(v61 + 34), *(v61 + 35), v61[72], v61[73]);
  v63 = *(this + 9);
  if ((*(v63 + 964) - 1) > 1)
  {
    v64 = (v63 + 33997);
    v65 = v111;
    v64[12] = v110;
    v64[13] = v65;
    v66 = v113;
    v64[14] = v112;
    v64[15] = v66;
    v67 = v107;
    v64[8] = v106;
    v64[9] = v67;
    v68 = v109;
    v64[10] = v108;
    v64[11] = v68;
    v69 = v103;
    v64[4] = v102;
    v64[5] = v69;
    v70 = v105;
    v64[6] = v104;
    v64[7] = v70;
    v71 = v99;
    *v64 = __str;
    v64[1] = v71;
    v72 = v101;
    v64[2] = v100;
    v64[3] = v72;
  }

  else
  {
    io80211_os_log("LQM-WiFi: %s\n", &__str);
  }

  v73 = &AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12(OSData *)::fDeltaBTCoexStatsv12 + 112 * *v17;
  v74 = "2";
  if (!v73[74])
  {
    v74 = "5";
  }

  snprintf(&__str, 0x100uLL, "Stats12(%sG): btDurAir=%llums(%llu%%) desenseMode=%d wlrssi=%d btrssi=%d profile2gActive=%d profile5gActive=%d inactiveDur=%u btPmAttemptNoackCnt=%u status2=0x%x [%llums]\n", v74, v37, 100 * v37 / 0xB2F4FC07949uLL, v73[75], v73[76], v73[77], v73[78], v73[79], *(v73 + 40), *(v73 + 41), *(v73 + 21), 0xB2F4FC07949);
  v75 = *(this + 9);
  if ((*(v75 + 964) - 1) > 1)
  {
    v76 = (v75 + 34509);
    v77 = v111;
    v76[12] = v110;
    v76[13] = v77;
    v78 = v113;
    v76[14] = v112;
    v76[15] = v78;
    v79 = v107;
    v76[8] = v106;
    v76[9] = v79;
    v80 = v109;
    v76[10] = v108;
    v76[11] = v80;
    v81 = v103;
    v76[4] = v102;
    v76[5] = v81;
    v82 = v105;
    v76[6] = v104;
    v76[7] = v82;
    v83 = v99;
    *v76 = __str;
    v76[1] = v83;
    v84 = v101;
    v76[2] = v100;
    v76[3] = v84;
  }

  else
  {
    io80211_os_log("LQM-WiFi: %s\n", &__str);
  }

  v85 = mach_continuous_time();
  v86 = *v17;
  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12(OSData *)::fLastLogDeltaBTCoexStats[v86] = v85;
  if (v86 == 1)
  {
    v87 = *(*(this + 9) + 11288);
    if (v87)
    {
      IO80211Controller::postMessage(this, v87, 0xBEu, v90, 0x1CuLL, 1);
      LODWORD(v86) = *v17;
    }

    else
    {
      LODWORD(v86) = 1;
    }

    dword_1003E8848 = 0;
    AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12(OSData *)::fDeltaBTCoexStatsReport = 0;
  }

  v2 = 0;
  v88 = (&AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12(OSData *)::fDeltaBTCoexStatsv12 + 112 * v86);
  v88[5] = 0u;
  v88[6] = 0u;
  v88[3] = 0u;
  v88[4] = 0u;
  v88[1] = 0u;
  v88[2] = 0u;
  *v88 = 0u;
  if (v8)
  {
LABEL_56:
    memset_s(v8, 0x70uLL, 0, 0x70uLL);
    IOFree(v8, 0x70uLL);
  }

  return v2;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV9(IO80211Controller *this, OSData *a2)
{
  v2 = 3758097084;
  v53 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v51 = v3;
  v52 = v3;
  BYTE4(v51) = 0;
  LODWORD(v51) = 19;
  if (!a2)
  {
    return 3758097090;
  }

  BytesNoCopy = OSData::getBytesNoCopy(a2);
  if (OSData::getLength(a2) <= 0x4B)
  {
    AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV9();
    return __str;
  }

  if (((BytesNoCopy + 8) & 3) != 0)
  {
    v7 = IOMallocZeroTyped();
    if (!v7)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV9();
        }
      }

      return v2;
    }

    v8 = v7;
    v9 = OSData::getBytesNoCopy(a2);
    *v8 = *v9;
    v11 = v9[2];
    v10 = v9[3];
    v12 = v9[1];
    *(v8 + 60) = *(v9 + 60);
    v8[2] = v11;
    v8[3] = v10;
    v8[1] = v12;
    BytesNoCopy = v8;
  }

  else
  {
    v8 = 0;
  }

  v57 = 0xAAAAAAAAAAAAAAAALL;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v56 = v13;
  *&v54[16] = v13;
  v55 = v13;
  *v54 = v13;
  if (!BytesNoCopy[1])
  {
    v2 = 0;
    if (!v8)
    {
      return v2;
    }

    goto LABEL_28;
  }

  v55 = 0uLL;
  v14 = *(BytesNoCopy + 2);
  *&v15 = v14;
  *(&v15 + 1) = HIDWORD(v14);
  *&v54[8] = v15;
  *&v54[24] = BytesNoCopy[6];
  *&v56 = *(BytesNoCopy + 14);
  *(&v56 + 1) = *(BytesNoCopy + 15);
  v57 = *(BytesNoCopy + 16);
  *v54 = *(BytesNoCopy + 1);
  if (*v54 >= 8u)
  {
    *v54 = v54[0] & 7;
  }

  if ((IO80211Controller::setBTCoexstat() & 1) == 0)
  {
    AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV9();
    v2 = __str;
    if (!v8)
    {
      return v2;
    }

    goto LABEL_28;
  }

  dword_1003E8868 = BytesNoCopy[2];
  v16 = *(BytesNoCopy + 3);
  v17 = vorrq_s8(*algn_1003E886C, v16).u32[0];
  v18 = vaddq_s32(*algn_1003E886C, v16);
  v18.i32[0] = v17;
  *algn_1003E886C = v18;
  *&word_1003E887C = vaddq_s16(*&word_1003E887C, *(BytesNoCopy + 7));
  *(&xmmword_1003E8880 + 12) = vaddq_s16(*(&xmmword_1003E8880 + 12), *(BytesNoCopy + 11));
  *&word_1003E889C = vadd_s16(*&word_1003E889C, *(BytesNoCopy + 15));
  word_1003E88A4 += *(BytesNoCopy + 34);
  v19 = word_1003E88A6;
  if (word_1003E88A6 <= *(BytesNoCopy + 35))
  {
    v19 = *(BytesNoCopy + 35);
  }

  word_1003E88A6 = v19;
  byte_1003E88A8 += *(BytesNoCopy + 72);
  byte_1003E88A9 += *(BytesNoCopy + 73);
  v20 = BytesNoCopy[2];
  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV9(OSData *)::fDeltaBTCoexStatsReport = vadd_s32(vand_s8(vshl_u32(vdup_n_s32(v20), -2), 0x100000001), AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV9(OSData *)::fDeltaBTCoexStatsReport);
  dword_1003E88B8 += (v20 >> 9) & 1;
  v50 = 0xAAAAAAAAAAAAAAAALL;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v49 = 0xAAAAAAAAAAAAAAAALL;
  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v72 = v21;
  v73 = v21;
  v70 = v21;
  v71 = v21;
  v68 = v21;
  v69 = v21;
  v66 = v21;
  v67 = v21;
  v64 = v21;
  v65 = v21;
  v62 = v21;
  v63 = v21;
  v60 = v21;
  v61 = v21;
  __str = v21;
  v59 = v21;
  v45 = AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV9(OSData *)::fDeltaBTCoexStatsReport;
  v48 = dword_1003E88B8;
  v22 = dword_1003E8878 / 0x3E8uLL;
  *(*(this + 9) + 30970) = 100 * v22 / 0xB2F4FC07949;
  v46 = 1338014025;
  v47 = v22;
  snprintf(&__str, 0x100uLL, "Stats9: btDur=%llums(%llu%%) status=0x%x reqTypeMap=0x%x req=%u gnt=%u abort=%u rx1ovfl=%u latency=%u pmAttempt=%u sucPM=%u sucCTS2S=%u wlanTXPreempt=%u wlanRXPreempt=%u apTXafterPM=%u gntAudio=%u denyAudio=%u gntA2DP=%u denyA2DP=%u\n", v22, 100 * v22 / 0xB2F4FC07949, dword_1003E8868, *algn_1003E886C, dword_1003E8870, unk_1003E8874, word_1003E887C, word_1003E887E, xmmword_1003E8880, WORD1(xmmword_1003E8880), WORD2(xmmword_1003E8880), WORD3(xmmword_1003E8880), WORD4(xmmword_1003E8880), WORD5(xmmword_1003E8880), WORD6(xmmword_1003E8880), HIWORD(xmmword_1003E8880), word_1003E8890, word_1003E8892, word_1003E8894);
  v23 = *(this + 9);
  if ((*(v23 + 964) - 1) > 1)
  {
    v24 = (v23 + 32973);
    v25 = v71;
    v24[12] = v70;
    v24[13] = v25;
    v26 = v73;
    v24[14] = v72;
    v24[15] = v26;
    v27 = v67;
    v24[8] = v66;
    v24[9] = v27;
    v28 = v69;
    v24[10] = v68;
    v24[11] = v28;
    v29 = v63;
    v24[4] = v62;
    v24[5] = v29;
    v30 = v65;
    v24[6] = v64;
    v24[7] = v30;
    v31 = v59;
    *v24 = __str;
    v24[1] = v31;
    v32 = v61;
    v24[2] = v60;
    v24[3] = v32;
  }

  else
  {
    io80211_os_log("LQM-WiFi: %s\n", &__str);
  }

  snprintf(&__str, 0x100uLL, "Stats9: CrtPriCnt=%u PriCnt=%u gntSniff=%u denySniff=%u antGrant0~10ms=%u antGrant10~30ms=%u antGrant30~60ms=%u antGrant>60ms=%u APLeakiness=%u rr_cnt=%u rr_succ_cnt=%u [%llums]\n", word_1003E889A, word_1003E889C, word_1003E8896, word_1003E8898, word_1003E889E, word_1003E88A0, word_1003E88A2, word_1003E88A4, word_1003E88A6, byte_1003E88A8, byte_1003E88A9, 0xB2F4FC07949);
  v33 = *(this + 9);
  if ((*(v33 + 964) - 1) > 1)
  {
    v34 = (v33 + 33229);
    v35 = v71;
    v34[12] = v70;
    v34[13] = v35;
    v36 = v73;
    v34[14] = v72;
    v34[15] = v36;
    v37 = v67;
    v34[8] = v66;
    v34[9] = v37;
    v38 = v69;
    v34[10] = v68;
    v34[11] = v38;
    v39 = v63;
    v34[4] = v62;
    v34[5] = v39;
    v40 = v65;
    v34[6] = v64;
    v34[7] = v40;
    v41 = v59;
    *v34 = __str;
    v34[1] = v41;
    v42 = v61;
    v34[2] = v60;
    v34[3] = v42;
  }

  else
  {
    io80211_os_log("LQM-WiFi: %s\n", &__str);
  }

  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV9(OSData *)::fLastLogDeltaBTCoexStats = mach_continuous_time();
  v43 = *(*(this + 9) + 11288);
  if (v43)
  {
    IO80211Controller::postMessage(this, v43, 0xBEu, &v45, 0x1CuLL, 1);
  }

  v2 = 0;
  *&word_1003E889C = 0u;
  xmmword_1003E8880 = 0u;
  *&word_1003E8890 = 0u;
  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV9(OSData *)::fDeltaBTCoexStatsV9 = 0u;
  *&dword_1003E8870 = 0u;
  AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV9(OSData *)::fDeltaBTCoexStatsReport = 0;
  dword_1003E88B8 = 0;
  if (v8)
  {
LABEL_28:
    memset_s(v8, 0x4CuLL, 0, 0x4CuLL);
    IOFree(v8, 0x4CuLL);
  }

  return v2;
}

uint64_t AppleBCMWLANCore::parseEventLogScan(IO80211Controller *this, OSData *a2)
{
  *buf = 0;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  BytesNoCopy = OSData::getBytesNoCopy(a2);
  v5 = *BytesNoCopy;
  if (v5 == 1)
  {
    goto LABEL_267;
  }

  v6 = BytesNoCopy;
  if (v5 == 2)
  {
    v17 = OSData::getBytesNoCopy(a2);
    if (OSData::getLength(a2) == 64)
    {
      v18 = *(v17 + 3);
      if (v18)
      {
        if ((v18 & 4) != 0)
        {
          v28 = 0;
        }

        else if ((v18 & 8) != 0)
        {
          v28 = 1;
        }

        else
        {
          v28 = (v18 >> 4) & 2;
        }

        v38 = *(this + 9);
        if (*(v38 + 17952))
        {
          *(v38 + 17952) = 0;
          *(v38 + 17936) = 0u;
          *(v38 + 17920) = 0u;
          *(v38 + 17904) = 0u;
        }

        v40 = v17[5];
        v39 = v17[6];
        v41 = *(this + 9) + 17904;
        v42 = v39 - v40;
        if (v39 < v40 || v42 >= 0x97)
        {
          ++*(v41 + 16 * v28 + 4);
        }

        else
        {
          *(v41 + 16 * v28) += v42;
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            v43 = (*(*this + 1952))(this);
            CCLogStream::logInfo(v43, "[dk] %s@%d:SCAN_INFO: ScanDuration=%dms CoreIndex=%d\n");
          }
        }

        goto LABEL_267;
      }

      v19 = v17[6];
      v20 = v17[5];
      v13 = v19 >= v20;
      v21 = v19 - v20;
      if (v13)
      {
        v22 = (v18 >> 6) & 7;
        v23 = *(v6 + 3);
        *(*(this + 9) + 17952) = v21;
        v24 = *(this + 9);
        if (*(v24 + 17952))
        {
          v25 = 17912;
          v26 = 3;
          do
          {
            *(*(this + 9) + v25) = (100 * *(*(this + 9) + v25 - 8)) / *(*(this + 9) + 17952);
            v25 += 16;
            --v26;
          }

          while (v26);
          v24 = *(this + 9);
          v27 = *(v24 + 17952);
        }

        else
        {
          v27 = 0;
        }

        DWORD1(v199[0]) = -1431655766;
        *(&v199[0] + 1) = v27;
        LODWORD(v199[0]) = (v18 >> 6) & 7;
        IO80211Controller::postMessage(this, *(v24 + 11288), 0xADu, v199, 0x10uLL, 1);
        if (IO80211Controller::isLQMOSLOGEnabled(this))
        {
          v61 = *(this + 9);
          io80211_os_log("LQM-WIFI: Scan[%ums] - 5G<%ums %llu%%> 2.4G<%ums %llu%%> scanCore<%ums %llu%%> client=%d\n", *(v61 + 17952), *(v61 + 17904), *(v61 + 17912), *(v61 + 17920), *(v61 + 17928), *(v61 + 17936), *(v61 + 17944), (v18 >> 6) & 7);
        }

        if (IO80211Controller::isLQMIOLOGEnabled(this))
        {
          v62 = *(this + 9);
          IOLog("LQM-WIFI: Scan[%ums] - 5G<%ums %llu%%> 2.4G<%ums %llu%%> scanCore<%ums %llu%%> client=%d\n", *(v62 + 17952), *(v62 + 17904), *(v62 + 17912), *(v62 + 17920), *(v62 + 17928), *(v62 + 17936), *(v62 + 17944), (v18 >> 6) & 7);
        }

        if (IO80211Controller::isLQMCCLOGEnabled(this))
        {
          v63 = *(this + 9);
          IO80211Controller::logLQMToCC(this, "LQM-WIFI: Scan[%ums] - 5G<%ums %llu%%> 2.4G<%ums %llu%%> scanCore<%ums %llu%%> client=%d\n", *(v63 + 17952), *(v63 + 17904), *(v63 + 17912), *(v63 + 17920), *(v63 + 17928), *(v63 + 17936), *(v63 + 17944), (v18 >> 6) & 7);
        }

        v198 = (v18 >> 9) & 7;
        v64 = *(this + 9);
        if (*(v64 + 17908) || *(v64 + 17924) || *(v64 + 17940))
        {
          if (IO80211Controller::isLQMOSLOGEnabled(this))
          {
            io80211_os_log("LQM-WIFI: Scan - invaldCnt<%u %u %u>\n", *(*(this + 9) + 17908), *(*(this + 9) + 17924), *(*(this + 9) + 17940));
          }

          if (IO80211Controller::isLQMIOLOGEnabled(this))
          {
            IOLog("LQM-WIFI: Scan - invaldCnt<%u %u %u>\n", *(*(this + 9) + 17908), *(*(this + 9) + 17924), *(*(this + 9) + 17940));
          }

          isLQMCCLOGEnabled = IO80211Controller::isLQMCCLOGEnabled(this);
          v64 = *(this + 9);
          if (isLQMCCLOGEnabled)
          {
            IO80211Controller::logLQMToCC(this, "LQM-WIFI: Scan - invaldCnt<%u %u %u>\n", *(v64 + 17908), *(v64 + 17924), *(v64 + 17940));
            v64 = *(this + 9);
          }
        }

        v197 = v23 & 0x1000;
        *(v64 + 17952) = 0;
        *(v64 + 17936) = 0u;
        *(v64 + 17920) = 0u;
        *(v64 + 17904) = 0u;
        v66 = v17[6];
        v67 = v17[5];
        if (AppleBCMWLANCore::featureFlagIsBitSet(this, 76))
        {
          v68 = *(*(this + 9) + 5424);
          if (v68)
          {
            if (AppleBCMWLANScanAdapter::getSCTxBlankStatus(v68) == 4)
            {
              if (!v197)
              {
                if ((*(*this + 1952))(this))
                {
                  (*(*this + 1952))(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::parseEventLogScan();
                  }
                }
              }
            }

            else
            {
              SCTxBlankStatus = AppleBCMWLANScanAdapter::getSCTxBlankStatus(*(*(this + 9) + 5424));
              v147 = (*(*this + 1952))(this);
              if (SCTxBlankStatus == 2)
              {
                if (v147)
                {
                  (*(*this + 1952))(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::parseEventLogScan();
                  }
                }
              }

              else if (v147)
              {
                (*(*this + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::parseEventLogScan();
                }
              }
            }
          }

          if (v198 == 2)
          {
            v148 = *(*(this + 9) + 5512);
            if (AppleBCMWLANCore::featureFlagIsBitSet(this, 76))
            {
              v149 = 3;
            }

            else
            {
              v149 = 2;
            }

            if (AppleBCMWLANIOReportingPerSlice::reportScanModeStatsSinceLinkUp(v148, 2, 2, v149))
            {
              AppleBCMWLANCore::parseEventLogScan();
              return *buf;
            }

            if (AppleBCMWLANCore::featureFlagIsBitSet(this, 76))
            {
              v150 = 3;
            }

            else
            {
              v150 = 2;
            }

            if (AppleBCMWLANCore::reportSlicesScanModeStats(this, 2, 2, v150))
            {
              AppleBCMWLANCore::parseEventLogScan();
              return *buf;
            }
          }

          else
          {
            if (*(v17 + 9))
            {
              v151 = *(*(this + 9) + 5512);
              if (AppleBCMWLANCore::featureFlagIsBitSet(this, 76))
              {
                v152 = 3;
              }

              else
              {
                v152 = 2;
              }

              if (AppleBCMWLANIOReportingPerSlice::reportScanModeStatsSinceLinkUp(v151, 0, v198, v152))
              {
                AppleBCMWLANCore::parseEventLogScan();
                return *buf;
              }

              if (AppleBCMWLANCore::featureFlagIsBitSet(this, 76))
              {
                v153 = 3;
              }

              else
              {
                v153 = 2;
              }

              v154 = AppleBCMWLANCore::reportSlicesScanModeStats(this, 0, v198, v153);
              if (v154)
              {
                AppleBCMWLANCore::parseEventLogScan(this, this, v198, v154, buf);
                return *buf;
              }
            }

            if (*(v17 + 8))
            {
              v155 = *(*(this + 9) + 5512);
              if (AppleBCMWLANCore::featureFlagIsBitSet(this, 76))
              {
                v156 = 3;
              }

              else
              {
                v156 = 2;
              }

              if (AppleBCMWLANIOReportingPerSlice::reportScanModeStatsSinceLinkUp(v155, 1, v198, v156))
              {
                AppleBCMWLANCore::parseEventLogScan();
                return *buf;
              }

              if (AppleBCMWLANCore::featureFlagIsBitSet(this, 76))
              {
                v157 = 3;
              }

              else
              {
                v157 = 2;
              }

              v158 = AppleBCMWLANCore::reportSlicesScanModeStats(this, 1, v198, v157);
              if (v158)
              {
                AppleBCMWLANCore::parseEventLogScan(this, this, v198, v158, buf);
                return *buf;
              }
            }

            if (*(v17 + 10))
            {
              v159 = *(*(this + 9) + 5512);
              if (AppleBCMWLANCore::featureFlagIsBitSet(this, 76))
              {
                v160 = 3;
              }

              else
              {
                v160 = 2;
              }

              if (AppleBCMWLANIOReportingPerSlice::reportScanModeStatsSinceLinkUp(v159, 2, v198, v160))
              {
                AppleBCMWLANCore::parseEventLogScan();
                return *buf;
              }

              if (AppleBCMWLANCore::featureFlagIsBitSet(this, 76))
              {
                v161 = 3;
              }

              else
              {
                v161 = 2;
              }

              v162 = AppleBCMWLANCore::reportSlicesScanModeStats(this, 2, v198, v161);
              if (v162)
              {
                AppleBCMWLANCore::parseEventLogScan(this, this, v198, v162, buf);
                return *buf;
              }
            }

            if (v197)
            {
              v163 = *(*(this + 9) + 5424);
              if (v163)
              {
                AppleBCMWLANScanAdapter::getSCChanQual(v163, 255);
              }
            }
          }
        }

        v164 = (v66 - v67);
        if (v22 == 1)
        {
          *buf = 0;
          if (((*(v17 + 9) + *(v17 + 8)) & 0x100) != 0)
          {
            v165 = 0;
          }

          else
          {
            v165 = *(v17 + 9) + *(v17 + 8);
          }

          mach_continuous_time();
          absolutetime_to_nanoseconds();
          v166 = *buf;
          v167 = *(this + 9);
          v168 = *(v167 + 18096);
          v169 = *buf - v168;
          if (*buf >= v168)
          {
            v169 /= 0xDF8475800uLL;
            v170 = (*buf - *(v167 + 18128)) / 0xDF8475800uLL;
          }

          else
          {
            v170 = 0;
            *(v167 + 18128) = *buf;
            *(*(this + 9) + 18096) = v166;
            *(*(this + 9) + 18112) = 0;
            *(*(this + 9) + 18116) = 0;
            *(*(this + 9) + 18120) = 0;
            *(*(this + 9) + 18104) = 0;
            *(*(this + 9) + 18144) = 0;
            *(*(this + 9) + 18148) = 0;
            *(*(this + 9) + 18152) = 0;
            *(*(this + 9) + 18136) = 0;
            v167 = *(this + 9);
          }

          v171 = *(v167 + 18104);
          v13 = __CFADD__(v171, v164);
          v172 = v171 + v164;
          if (!v13)
          {
            *(v167 + 18104) = v172;
            *(*(this + 9) + 18136) += v164;
            *(*(this + 9) + 14136) = v164;
            v167 = *(this + 9);
          }

          if (v165 >= 0xEu)
          {
            ++*(v167 + 18116);
            ++*(*(this + 9) + 18148);
            v167 = *(this + 9);
          }

          *(v167 + 14098) = v165;
          v173 = *(this + 9) + 600 * *(*(this + 9) + 14164);
          *(v173 + 12298) += v165;
          v174 = *(this + 9);
          v175 = v174 + 12192;
          v176 = *(v174 + 14164);
          if (v165 < 0xEu)
          {
            ++*(v175 + 600 * v176 + 579);
            v177 = *(this + 9);
            v178 = *(v177 + 600 * *(v177 + 14164) + 12771);
            v179 = 14147;
          }

          else
          {
            ++*(v175 + 600 * v176 + 577);
            v177 = *(this + 9);
            v178 = *(v177 + 600 * *(v177 + 14164) + 12769);
            v179 = 14145;
          }

          *(v177 + v179) = v178;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              v195 = (*(*this + 1952))(this);
              v196 = *(this + 9);
              CCLogStream::logInfo(v195, "[dk] %s@%d:Roam Scan Summary: Day Roam Scan Summary: In last %llu min: numberOfRoamAttempt =%d ScanDuration=%llu  FullBandScancount=%d FailRoamCount=%d Week Roam Scan Summary: in last %llu min:numberOfRoamAttempt =%d ScanDuration=%llu FullBandScancount=%d FailRoamCount=%d\n", "parseEventLogScan", 18124, v169, *(v196 + 18120), *(v196 + 18104), *(v196 + 18116), *(v196 + 18112), v170, *(v196 + 18152), *(v196 + 18136), *(v196 + 18148), *(v196 + 18144));
            }
          }

          if (v169 >= 0x5A0)
          {
            *(*(this + 9) + 18096) = *buf;
            *(*(this + 9) + 18112) = 0;
            *(*(this + 9) + 18116) = 0;
            *(*(this + 9) + 18152) = 0;
            *(*(this + 9) + 18104) = 0;
          }

          if (v170 >> 5 >= 0x13B)
          {
            *(*(this + 9) + 18128) = *buf;
            *(*(this + 9) + 18144) = 0;
            *(*(this + 9) + 18148) = 0;
            *(*(this + 9) + 18152) = 0;
            *(*(this + 9) + 18136) = 0;
          }
        }

        else if (v22 == 2)
        {
          *buf = 0;
          mach_continuous_time();
          absolutetime_to_nanoseconds();
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::parseEventLogScan();
            }
          }
        }

        if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v180 = *(v17 + 9);
            v181 = *(v17 + 8);
            v182 = *(v17 + 10);
            v183 = *(v17 + 11);
            v184 = *(v17 + 12);
            *buf = 67111938;
            *&buf[4] = 73;
            buf[8] = 32;
            buf[9] = 8;
            *&buf[10] = "parseEventLogScan";
            *&buf[18] = 1024;
            *&buf[20] = 18142;
            *&buf[24] = 1024;
            *&buf[26] = v164;
            *&buf[30] = 1024;
            *&buf[32] = v180;
            *&buf[36] = 1024;
            *&buf[38] = v181;
            *&buf[42] = 1024;
            *&buf[44] = v182;
            *&buf[48] = 1024;
            *&buf[50] = v183;
            *&buf[54] = 1024;
            *&buf[56] = v184;
            *&buf[60] = 1024;
            *v203 = v198;
            *&v203[4] = 1024;
            *v204 = v22;
            *&v204[4] = 1024;
            *&v204[6] = v197 >> 12;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: SCAN_SUMMARY: ScanDuration=%dms NumChanMain=%d NumChanAux=%d NumChanLP=%d NumActive=%d NumPassive=%d ScanMode=%d ScanClient=%d isRescheduled=%d\n", buf, 0x4Eu);
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            v193 = (*(*this + 1952))(this);
            CCLogStream::logInfo(v193, "[dk] %s@%d:SCAN_SUMMARY: ScanDuration=%dms NumChanMain=%d NumChanAux=%d NumChanLP=%d NumActive=%d NumPassive=%d ScanMode=%d ScanClient=%d isRescheduled=%d\n", "parseEventLogScan", 18142, v164, *(v17 + 9), *(v17 + 8), *(v17 + 10), *(v17 + 11), *(v17 + 12), v198, v22, v197 >> 12);
          }
        }

        *buf = 0;
        *&buf[4] = v164;
        *&buf[8] = *(v17 + 9);
        *&buf[12] = *(v17 + 8);
        *&buf[16] = *(v17 + 10);
        *&buf[20] = v22;
        IO80211Controller::postMessage(this, *(*(this + 9) + 11288), 0xBBu, buf, 0x18uLL, 1);
        if (v22 != 3)
        {
          goto LABEL_267;
        }

        v145 = *(this + 9);
LABEL_266:
        ++*(v145 + 4768);
LABEL_267:
        v185 = *(this + 9);
        if (v185[688])
        {
          v185[2381] = -v185[2388];
          v186 = *(this + 9);
          v187 = *(v186 + 5504);
          v188 = *(v186 + 19064);
          *buf = *(v186 + 19048);
          *&buf[16] = v188;
          *&buf[32] = *(v186 + 19080);
          *&buf[48] = *(v186 + 19096);
          v189 = *(v186 + 19144);
          v201[0] = *(v186 + 19128);
          v201[1] = v189;
          v190 = *(v186 + 35936);
          v199[0] = *(v186 + 35920);
          v199[1] = v190;
          v200 = *(v186 + 35952);
          AppleBCMWLANIOReportingCore::updateScanRoamStats(v187, buf, v201, v199);
        }

        return 0;
      }

      AppleBCMWLANCore::parseEventLogScan(this, v17 + 6, v17 + 5, buf);
      return *buf;
    }

    v16 = 3758097084;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parseEventLogScan();
      }
    }
  }

  else if (v5 == 3)
  {
    v7 = OSData::getBytesNoCopy(a2);
    if (OSData::getLength(a2) == 40)
    {
      v8 = *(v7 + 3);
      if (v8)
      {
        AppleChannelSpec = AppleBCMWLANChanSpec::getAppleChannelSpec(*(*(this + 9) + 17744), *(v7 + 4));
        v30 = AppleChannelSpec >> 14;
        if (v30 == 3)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2 * (v30 == 1);
        }

        if ((AppleChannelSpec & 0xC000) == 0)
        {
          v31 = 0;
        }

        v32 = *(this + 9);
        if (*(v32 + 35784))
        {
          v192 = v32 + 35736;
          *(v192 + 48) = 0;
          *(v192 + 16) = 0u;
          *(v192 + 32) = 0u;
          *v192 = 0u;
        }

        v33 = v7[4];
        v34 = v7[3];
        v35 = *(this + 9) + 35736;
        v13 = v33 >= v34;
        v36 = v33 - v34;
        v37 = v33 < v34;
        if (v13 && v36 < 0x97)
        {
          *(v35 + 16 * v31) += v36;
        }

        else
        {
          ++*(v35 + 16 * v31 + 4);
        }

        v44 = v7[5];
        v45 = v7[4];
        v46 = v45 - v44;
        v47 = v45 < v44 || v37;
        if (v47 != 1)
        {
          if ((*(v7 + 3) & 0x10) != 0)
          {
            v52 = 0;
            v51 = 0;
            v53 = "Home Channel:";
            v50 = "Invalid";
          }

          else
          {
            v48 = *(v6 + 3);
            v49 = "Active";
            if ((v48 & 2) == 0)
            {
              v49 = "Passive";
            }

            if ((v48 & 0x40) != 0)
            {
              v50 = "Fils";
            }

            else
            {
              v50 = v49;
            }

            v51 = *(v7 + 12);
            v52 = *(v7 + 13);
            v53 = "Off channel:";
          }

          if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v59 = v6[8];
              *buf = 67111682;
              *&buf[4] = 73;
              *&buf[8] = 2080;
              *&buf[10] = "parseEventLogScan";
              *&buf[18] = 1024;
              *&buf[20] = 17864;
              *&buf[24] = 2080;
              *&buf[26] = v53;
              *&buf[34] = 2080;
              *&buf[36] = v50;
              *&buf[44] = 1024;
              *&buf[46] = v59;
              *&buf[50] = 1024;
              *&buf[52] = 0;
              *&buf[56] = 1024;
              *&buf[58] = v36;
              *v203 = 1024;
              *&v203[2] = v52;
              *v204 = 1024;
              *&v204[2] = v51;
              *&v204[6] = 1024;
              *&v204[8] = v46;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Type:%s Scan Type:%s Channel:%d CoreIndex:%d Scan Duration:%dms ScanResultsPerChan %d ProbeReqsSent %d Active6GScanTime = %dms\n", buf, 0x50u);
            }
          }

          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              v60 = (*(*this + 1952))(this);
              CCLogStream::logInfo(v60, "[dk] %s@%d:Type:%s Scan Type:%s Channel:%d CoreIndex:%d Scan Duration:%dms ScanResultsPerChan %d ProbeReqsSent %d Active6GScanTime = %dms\n", "parseEventLogScan", 17864);
            }
          }

          goto LABEL_267;
        }

        AppleBCMWLANCore::parseEventLogScan(this);
      }

      else
      {
        v9 = (v8 >> 6) & 7;
        v10 = v7[2];
        v11 = (v7 + 3);
        v12 = v7[3];
        v13 = v12 >= v10;
        v14 = v12 - v10;
        v15 = !v13;
        if (v9 >= 4)
        {
          v16 = 3758097131;
          if ((*(*this + 1952))(this, v11))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::parseEventLogScan();
              return 3758097131;
            }
          }

          return v16;
        }

        if (!v15)
        {
          v54 = (this + 72);
          *(*(this + 9) + 35784) = v14;
          v55 = *(this + 9);
          if (*(v55 + 8946))
          {
            v56 = 35744;
            v57 = 3;
            do
            {
              *&(*v54)[v56] = (100 * *&(*v54)[v56 - 8]) / *(*v54 + 8946);
              v56 += 16;
              --v57;
            }

            while (v57);
            v55 = *v54;
            v58 = *(*v54 + 8946);
          }

          else
          {
            v58 = 0;
          }

          DWORD1(v199[0]) = -1431655766;
          *(&v199[0] + 1) = v58;
          LODWORD(v199[0]) = (v8 >> 6) & 7;
          IO80211Controller::postMessage(this, *(v55 + 1411), 0xADu, v199, 0x10uLL, 1);
          if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v69 = *(*v54 + 4488);
              v70 = *(*v54 + 8934);
              v71 = *(*v54 + 4468);
              v72 = *(*v54 + 8938);
              v73 = *(*v54 + 4470);
              v74 = *(*v54 + 8942);
              v75 = *(*v54 + 4472);
              *buf = 67111682;
              *&buf[4] = 73;
              *&buf[8] = 2080;
              *&buf[10] = "parseEventLogScan";
              *&buf[18] = 1024;
              *&buf[20] = 17898;
              *&buf[24] = 1024;
              *&buf[26] = v69;
              *&buf[30] = 1024;
              *&buf[32] = v70;
              *&buf[36] = 2048;
              *&buf[38] = v71;
              *&buf[46] = 1024;
              *&buf[48] = v72;
              *&buf[52] = 2048;
              *&buf[54] = v73;
              *v203 = 1024;
              *&v203[2] = v74;
              *v204 = 2048;
              *&v204[2] = v75;
              *&v204[10] = 1024;
              v205 = (v8 >> 6) & 7;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Scan[%ums] - 2.4G<%ums %llu%%> 5G<%ums %llu%%> 6G<%ums %llu%%> client=%d\n", buf, 0x54u);
            }
          }

          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::parseEventLogScan();
            }
          }

          v76 = (v8 >> 9) & 7;
          v77 = *v54;
          if ((*v54)[35740] || (*v54)[35756] || (*v54)[35772])
          {
            if (IO80211Controller::isLQMOSLOGEnabled(this))
            {
              io80211_os_log("LQM-WIFI: Scan - invaldCnt<%u %u %u>\n", (*v54)[35740], (*v54)[35756], (*v54)[35772]);
            }

            if (IO80211Controller::isLQMIOLOGEnabled(this))
            {
              IOLog("LQM-WIFI: Scan - invaldCnt<%u %u %u>\n", (*v54)[35740], (*v54)[35756], (*v54)[35772]);
            }

            v78 = IO80211Controller::isLQMCCLOGEnabled(this);
            v77 = *(this + 9);
            if (v78)
            {
              IO80211Controller::logLQMToCC(this, "LQM-WIFI: Scan - invaldCnt<%u %u %u>\n", v77[35740], v77[35756], v77[35772]);
              v77 = *(this + 9);
            }
          }

          v79 = v77 + 35736;
          *(v79 + 6) = 0;
          *(v79 + 1) = 0u;
          *(v79 + 2) = 0u;
          *v79 = 0u;
          v80 = v7[2];
          LODWORD(v79) = v7[3];
          v13 = v79 >= v80;
          v81 = v79 - v80;
          v82 = *(*v54 + 8948);
          v83 = !v13;
          v84 = v7[4];
          v13 = __CFADD__(v82, v84);
          v85 = v82 + v84;
          v86 = v13;
          *(*v54 + 8948) = v85;
          v87 = *(*v54 + 8949);
          v88 = v7[5];
          *(*v54 + 8949) = v87 + v88;
          v89 = *(*v54 + 8950);
          v90 = __CFADD__(v87, v88);
          v91 = v7[6];
          v13 = __CFADD__(v89, v91);
          v92 = v89 + v91;
          v93 = v13;
          *(*v54 + 8950) = v92;
          v94 = *(*v54 + 8951);
          v95 = *(v7 + 29);
          *(*v54 + 8951) = v94 + v95;
          v96 = *(*v54 + 8952);
          v97 = __CFADD__(v94, v95);
          v98 = *(v7 + 30);
          v13 = __CFADD__(v96, v98);
          v99 = v96 + v98;
          v100 = v13;
          *(*v54 + 8952) = v99;
          v101 = *(*v54 + 8953);
          v102 = *(v7 + 31);
          *(*v54 + 8953) = v101 + v102;
          v103 = *(*v54 + 8954);
          v104 = __CFADD__(v101, v102);
          v105 = *(v7 + 32);
          v13 = __CFADD__(v103, v105);
          v106 = v103 + v105;
          v107 = v13;
          *(*v54 + 8954) = v106;
          v108 = *(*v54 + 8955);
          v109 = *(v7 + 33);
          *(*v54 + 8955) = v108 + v109;
          v110 = *(*v54 + 8956);
          v111 = __CFADD__(v108, v109);
          v112 = *(v7 + 34);
          v13 = __CFADD__(v110, v112);
          v113 = v110 + v112;
          v114 = v13;
          *(*v54 + 8956) = v113;
          v115 = *(*v54 + 8957);
          v116 = *(v7 + 35);
          *(*v54 + 8957) = v115 + v116;
          v117 = *(*v54 + 8958);
          v118 = __CFADD__(v115, v116);
          v119 = *(v7 + 36);
          v13 = __CFADD__(v117, v119);
          v120 = v117 + v119;
          v121 = v13;
          *(*v54 + 8958) = v120;
          if ((v83 & 1) != 0 || (v86 & 1) != 0 || v90 || (v93 & 1) != 0 || v97 || (v100 & 1) != 0 || v104 || (v107 & 1) != 0 || v111 || (v114 & 1) != 0 || v118 || v121)
          {
            AppleBCMWLANCore::parseEventLogScan();
          }

          *(*(this + 9) + 35856) = *(v7 + 28);
          *(*(this + 9) + 35860) = *(v7 + 29);
          *(*(this + 9) + 35864) = *(v7 + 30);
          *(*(this + 9) + 35868) = *(v7 + 31);
          *(*(this + 9) + 35872) = *(v7 + 32);
          *(*(this + 9) + 35876) = *(v7 + 33);
          *(*(this + 9) + 35880) = *(v7 + 34);
          *(*(this + 9) + 35884) = *(v7 + 35);
          *(*(this + 9) + 35888) = *(v7 + 36);
          v122 = v8 & 0x1000;
          *(*(this + 9) + 35893) = v76;
          *(*(this + 9) + 35892) = v9;
          if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v123 = v7[4];
              v124 = v7[5];
              v125 = v7[6];
              v126 = *(v7 + 29);
              v127 = *(v7 + 30);
              v128 = *(v7 + 31);
              v129 = *(v7 + 32);
              v130 = *(v7 + 33);
              v131 = *(v7 + 34);
              v132 = *(v7 + 35);
              v133 = *(v7 + 36);
              *buf = 67113474;
              *&buf[4] = 73;
              *&buf[8] = 2080;
              *&buf[10] = "parseEventLogScan";
              *&buf[18] = 1024;
              *&buf[20] = 17957;
              *&buf[24] = 1024;
              *&buf[26] = v81;
              *&buf[30] = 1024;
              *&buf[32] = v123;
              *&buf[36] = 1024;
              *&buf[38] = v124;
              *&buf[42] = 1024;
              *&buf[44] = v125;
              *&buf[48] = 1024;
              *&buf[50] = v126;
              *&buf[54] = 1024;
              *&buf[56] = v127;
              *&buf[60] = 1024;
              *v203 = v128;
              *&v203[4] = 1024;
              *v204 = v129;
              *&v204[4] = 1024;
              *&v204[6] = v130;
              *&v204[10] = 1024;
              v205 = v131;
              v206 = 1024;
              v207 = v132;
              v208 = 1024;
              v209 = v133;
              v210 = 1024;
              v211 = v76;
              v212 = 1024;
              v213 = v9;
              v214 = 1024;
              v215 = v122 >> 12;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: PER_SCAN_SUMMARY: Dur=%ums Dur2G %ums Dur5G %ums Dur6G %ums Num2G=%d Num5G=%d Num6G=%d SCNum2G=%d SCNum5G=%d SCNum6G=%d NumActive=%d NumPassive=%d Mode=%d Client=%d isRescheduled=%d\n", buf, 0x72u);
            }
          }

          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              v194 = (*(*this + 1952))(this);
              CCLogStream::logInfo(v194, "[dk] %s@%d:PER_SCAN_SUMMARY: Dur=%ums Dur2G %ums Dur5G %ums Dur6G %ums Num2G=%d Num5G=%d Num6G=%d SCNum2G=%d SCNum5G=%d SCNum6G=%d NumActive=%d NumPassive=%d Mode=%d Client=%d isRescheduled=%d\n", "parseEventLogScan", 17957, v81, v7[4], v7[5], v7[6], *(v7 + 29), *(v7 + 30), *(v7 + 31), *(v7 + 32), *(v7 + 33), *(v7 + 34), *(v7 + 35), *(v7 + 36), v76, v9, v122 >> 12);
            }
          }

          if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v134 = *(*v54 + 8948);
              v135 = *(*v54 + 8949);
              v136 = *(*v54 + 8950);
              v137 = *(*v54 + 8951);
              v138 = *(*v54 + 8952);
              v139 = *(*v54 + 8953);
              v140 = *(*v54 + 8954);
              v141 = *(*v54 + 8955);
              v142 = *(*v54 + 8956);
              v143 = *(*v54 + 8957);
              v144 = *(*v54 + 8958);
              *buf = 67112450;
              *&buf[4] = 73;
              *&buf[8] = 2080;
              *&buf[10] = "parseEventLogScan";
              *&buf[18] = 1024;
              *&buf[20] = 17963;
              *&buf[24] = 1024;
              *&buf[26] = v134;
              *&buf[30] = 1024;
              *&buf[32] = v135;
              *&buf[36] = 1024;
              *&buf[38] = v136;
              *&buf[42] = 1024;
              *&buf[44] = v137;
              *&buf[48] = 1024;
              *&buf[50] = v138;
              *&buf[54] = 1024;
              *&buf[56] = v139;
              *&buf[60] = 1024;
              *v203 = v140;
              *&v203[4] = 1024;
              *v204 = v141;
              *&v204[4] = 1024;
              *&v204[6] = v142;
              *&v204[10] = 1024;
              v205 = v143;
              v206 = 1024;
              v207 = v144;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: TOTAL_SCAN_SUMMARY: Dur2G %ums Dur5G %ums Dur6G %ums Num2G=%d Num5G=%d Num6G=%d SCNum2G=%d SCNum5G=%d SCNum6G=%d NumActive=%d NumPassive=%d\n", buf, 0x5Au);
            }
          }

          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::parseEventLogScan();
            }
          }

          if (v9 != 3)
          {
            goto LABEL_267;
          }

          v145 = *v54;
          goto LABEL_266;
        }

        AppleBCMWLANCore::parseEventLogScan(this, v11, v7 + 2, buf);
      }

      return *buf;
    }

    v16 = 3758097084;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parseEventLogScan();
      }
    }
  }

  else
  {
    v16 = 3758097084;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parseEventLogScan();
      }
    }
  }

  return v16;
}

uint64_t AppleBCMWLANCore::reportSlicesScanModeStats(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a2 > 2 || a4 <= a2)
  {
    AppleBCMWLANCore::reportSlicesScanModeStats();
    return v7;
  }

  if (a3 >= 3)
  {
    AppleBCMWLANCore::reportSlicesScanModeStats();
    return v7;
  }

  v4 = 0;
  v5 = *(a1 + 72) + 12 * a2 + 4 * a3;
  ++*(v5 + 19652);
  return v4;
}

uint64_t AppleBCMWLANCore::parseExtendedEventLogRecordScanChan(IO80211Controller *this, OSData *a2)
{
  BytesNoCopy = OSData::getBytesNoCopy(a2);
  v5 = *BytesNoCopy;
  if (v5 == 2)
  {
    v9 = OSData::getBytesNoCopy(a2);
    if (OSData::getLength(a2) == 64)
    {
      if (*(v9 + 3))
      {
        AppleChannelSpec = AppleBCMWLANChanSpec::getAppleChannelSpec(*(*(this + 9) + 17744), *(v9 + 8));
        v14 = *(v9 + 3);
        if ((v14 & 2) != 0)
        {
          v15 = "Active";
        }

        else
        {
          v15 = "Passive";
        }

        if ((v14 & 0x10) != 0)
        {
          v16 = "Home Channel";
        }

        else
        {
          v16 = "Off channel";
        }

        if ((v14 & 4) != 0)
        {
          v17 = 0;
        }

        else if ((v14 & 8) != 0)
        {
          v17 = 1;
        }

        else
        {
          v17 = (v14 >> 4) & 2;
        }

        v19 = *(this + 9);
        if (*(v19 + 17952))
        {
          *(v19 + 17952) = 0;
          *(v19 + 17936) = 0u;
          *(v19 + 17920) = 0u;
          *(v19 + 17904) = 0u;
        }

        v21 = v9[5];
        v20 = v9[6];
        v22 = *(this + 9) + 17904;
        v23 = v20 - v21;
        if (v20 < v21 || v23 >= 0x97)
        {
          ++*(v22 + 16 * v17 + 4);
        }

        else
        {
          *(v22 + 16 * v17) += v23;
        }

        if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67110914;
            v39 = 73;
            v40 = 2080;
            v41 = "parseExtendedEventLogRecordScanChan";
            v42 = 1024;
            v43 = 18309;
            v44 = 1024;
            v45 = AppleChannelSpec;
            v46 = 2080;
            v47 = v16;
            v48 = 2080;
            v49 = v15;
            v50 = 1024;
            v51 = v23;
            v52 = 1024;
            v53 = v17;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: SCAN_INFO: CurrentChannel=%d, Type=%s, ScanType=%s, ScanDuration=%dms, CoreIndex=%d\n", buf, 0x3Eu);
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            v24 = (*(*this + 1952))(this);
            CCLogStream::logInfo(v24, "[dk] %s@%d:SCAN_INFO: CurrentChannel=%d, Type=%s, ScanType=%s, ScanDuration=%dms, CoreIndex=%d\n", "parseExtendedEventLogRecordScanChan", 18309, AppleChannelSpec, v16, v15, v23, v17);
          }
        }
      }

      else if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parseExtendedEventLogRecordScanChan();
        }
      }

      return 0;
    }

    v8 = 3758097084;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parseExtendedEventLogRecordScanChan();
      }
    }
  }

  else
  {
    v6 = BytesNoCopy;
    if (v5 == 3)
    {
      v7 = OSData::getBytesNoCopy(a2);
      if (OSData::getLength(a2) == 40)
      {
        if ((v7[3] & 1) == 0)
        {
          v8 = 3758097084;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::parseExtendedEventLogRecordScanChan();
            }
          }

          return v8;
        }

        v10 = AppleBCMWLANChanSpec::getAppleChannelSpec(*(*(this + 9) + 17744), v7[4]);
        if (v10 >= 0x4000u)
        {
          v18 = v10 >> 14;
          if (v18 == 3)
          {
            v12 = "5G";
            v11 = 1;
          }

          else if (v18 == 1)
          {
            v12 = "6G";
            v11 = 2;
          }

          else
          {
            if ((*(*this + 1952))(this))
            {
              (*(*this + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::parseExtendedEventLogRecordScanChan();
              }
            }

            v11 = 0;
            v12 = 0;
          }
        }

        else
        {
          v11 = 0;
          v12 = "2G";
        }

        v25 = *(this + 9);
        if (*(v25 + 35784))
        {
          v37 = v25 + 35736;
          *(v37 + 48) = 0;
          *(v37 + 16) = 0u;
          *(v37 + 32) = 0u;
          *v37 = 0u;
        }

        v27 = *(v7 + 3);
        v26 = *(v7 + 4);
        v28 = *(this + 9) + 35736;
        v29 = v26 - v27;
        if (v26 < v27 || v29 >= 0x97)
        {
          ++*(v28 + 16 * v11 + 4);
        }

        else
        {
          *(v28 + 16 * v11) += v29;
        }

        if ((v7[3] & 0x10) != 0)
        {
          v33 = 0;
          v34 = 0;
          v35 = "Home Channel:";
          v32 = "Invalid";
        }

        else
        {
          v30 = *(v6 + 3);
          v31 = "Active";
          if ((v30 & 2) == 0)
          {
            v31 = "Passive";
          }

          if ((v30 & 0x40) != 0)
          {
            v32 = "Fils";
          }

          else
          {
            v32 = v31;
          }

          v33 = v7[12];
          v34 = v7[13];
          v35 = "Off channel:";
        }

        if (IO80211Controller::isLQMOSLOGEnabled(this))
        {
          io80211_os_log("LQM-WIFI: Type:%s Scan Type:%s Channel:%d(%s) CoreIndex:%d Scan Duration:%dms ScanResultsPerChan %d ProbeReqsSent %d\n", v35, v32, v6[8], v12, 0, v29, v34, v33);
        }

        if (IO80211Controller::isLQMIOLOGEnabled(this))
        {
          IOLog("LQM-WIFI: Type:%s Scan Type:%s Channel:%d(%s) CoreIndex:%d Scan Duration:%dms ScanResultsPerChan %d ProbeReqsSent %d\n", v35, v32, v6[8], v12, 0, v29, v34, v33);
        }

        if (IO80211Controller::isLQMCCLOGEnabled(this))
        {
          IO80211Controller::logLQMToCC(this, "LQM-WIFI: Type:%s Scan Type:%s Channel:%d(%s) CoreIndex:%d Scan Duration:%dms ScanResultsPerChan %d ProbeReqsSent %d\n", v35, v32, v6[8], v12, 0, v29, v34, v33);
        }

        return 0;
      }

      v8 = 3758097084;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parseExtendedEventLogRecordScanChan();
        }
      }
    }

    else
    {
      v8 = 3758097084;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parseExtendedEventLogRecordScanChan();
        }
      }
    }
  }

  return v8;
}

AppleBCMWLANIOReporting *AppleBCMWLANCore::parseEventLogRecordRC2CoexStatsPerSlice(AppleBCMWLANCore *a1, OSData *a2, uint64_t a3)
{
  v3 = a3;
  if (a3 >= 2)
  {
    AppleBCMWLANCore::parseEventLogRecordRC2CoexStatsPerSlice();
    return v7;
  }

  if (AppleBCMWLANCore::updateRC2CoexStatsReport(a1, a2, a3))
  {
    AppleBCMWLANCore::parseEventLogRecordRC2CoexStatsPerSlice();
    return v7;
  }

  result = *(*(a1 + 9) + 5512);
  if (result)
  {
    result = AppleBCMWLANIOReportingPerSlice::reportRC2Coex(result, a2, v3);
    if (result)
    {
      AppleBCMWLANCore::parseEventLogRecordRC2CoexStatsPerSlice();
      return v7;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateRC2CoexStatsReport(AppleBCMWLANCore *a1, OSData *this, uint64_t a3)
{
  if (a3 != 1)
  {
    AppleBCMWLANCore::updateRC2CoexStatsReport();
    return v8;
  }

  if (OSData::getLength(this) <= 2)
  {
    AppleBCMWLANCore::updateRC2CoexStatsReport();
    return v8;
  }

  v5 = *OSData::getBytesNoCopy(this);
  switch(v5)
  {
    case 3:

      return AppleBCMWLANCore::updateRC2CoexStatsReportV3(a1, this);
    case 2:

      return AppleBCMWLANCore::updateRC2CoexStatsReportV2(a1, this);
    case 1:

      return AppleBCMWLANCore::updateRC2CoexStatsReportV1(a1, this);
    default:
      v7 = 3758097090;
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::updateRC2CoexStatsReport();
        }
      }

      return v7;
  }
}

uint64_t AppleBCMWLANCore::updateRC2CoexStatsReportV1(AppleBCMWLANCore *this, OSData *a2)
{
  v30 = 0xAAAAAAAAAAAAAAAALL;
  *(*(this + 9) + 18572) = 1;
  if (OSData::getLength(a2) == 36)
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v28[16] = v4;
    v29 = v4;
    *v28 = v4;
    BytesNoCopy = OSData::getBytesNoCopy(a2);
    if (*(BytesNoCopy + 2) == 36)
    {
      v6 = *(BytesNoCopy + 3);
      v7 = BytesNoCopy[8];
      v8 = *(BytesNoCopy + 14);
      v9 = *(BytesNoCopy + 13);
      v10 = *(BytesNoCopy + 12);
      v11 = *(BytesNoCopy + 2);
      v12 = *(BytesNoCopy + 7);
      v13 = *(BytesNoCopy + 6);
      v14 = BytesNoCopy[2];
      v15 = *(BytesNoCopy + 3);
      v16 = *(BytesNoCopy + 2);
      *(*(this + 9) + 18502) += v16;
      *(*(this + 9) + 18504) += v15;
      *(*(this + 9) + 18506) += v13;
      *(*(this + 9) + 18508) += v12;
      *(*(this + 9) + 18510) += v11;
      *(*(this + 9) + 18512) += WORD1(v11);
      *(*(this + 9) + 18514) += WORD2(v11);
      *(*(this + 9) + 18516) += HIWORD(v11);
      *(*(this + 9) + 18518) += v10;
      *(*(this + 9) + 18520) += v9;
      *(*(this + 9) + 18522) += v8;
      *(*(this + 9) + 18524) += v7;
      *(*(this + 9) + 18528) += v14;
      *(*(this + 9) + 18500) = 1;
      LOWORD(v17) = v16;
      WORD1(v17) = v15;
      WORD2(v17) = v13;
      WORD3(v17) = v12;
      *(&v17 + 1) = v11;
      *(*(this + 9) + 18868) += v16;
      *(*(this + 9) + 18870) += v15;
      *&v28[2] = v17;
      *(*(this + 9) + 18876) += v13;
      v18 = *(this + 9);
      v19 = *(v18 + 18878);
      *&v28[18] = v10;
      *(v18 + 18878) = v19 + v12;
      *(*(this + 9) + 18880) += v11;
      *(*(this + 9) + 18882) += WORD1(v11);
      *&v28[20] = v9;
      *(*(this + 9) + 18884) += WORD2(v11);
      v20 = *(this + 9);
      v21 = *(v20 + 18886);
      *&v28[22] = v8;
      *(v20 + 18886) = v21 + HIWORD(v11);
      *(*(this + 9) + 18888) += v10;
      *&v28[24] = v7;
      *&v28[28] = v14;
      *(*(this + 9) + 18890) += v9;
      v22 = *(this + 9);
      LOWORD(v20) = *(v22 + 18892);
      v28[0] = 1;
      *(v22 + 18892) = v20 + v8;
      *(*(this + 9) + 18896) += v7;
      *(*(this + 9) + 18872) += v14;
      mach_continuous_time();
      absolutetime_to_nanoseconds();
      v23 = v30 / 0xF4240;
      LODWORD(v29) = v30 / 0xF4240;
      if (v30 >= 0x10C388D00)
      {
        if (IO80211Controller::isLQMOSLOGEnabled(this))
        {
          io80211_os_log("LQM-WIFI: RC2 Coex Stats V1: Mode=%u Request=%u Grant=%u Duration=%uus AckedPM=%u TXedCTS2A=%u GrantDelay=%u CritPhyCal=%u CritRateRecovery=%u CritBcnLoss=%u CritHpp=%u CritBT=%u CritAwdlNan=%u CirtAggregate=%u [%llums]\n", v6, *(*(this + 9) + 18868), *(*(this + 9) + 18870), *(*(this + 9) + 18872), *(*(this + 9) + 18876), *(*(this + 9) + 18878), *(*(this + 9) + 18880), *(*(this + 9) + 18882), *(*(this + 9) + 18884), *(*(this + 9) + 18886), *(*(this + 9) + 18888), *(*(this + 9) + 18890), *(*(this + 9) + 18892), *(*(this + 9) + 18896), v23);
        }

        if (IO80211Controller::isLQMIOLOGEnabled(this))
        {
          IOLog("LQM-WIFI: RC2 Coex Stats V1: Mode=%u Request=%u Grant=%u Duration=%uus AckedPM=%u TXedCTS2A=%u GrantDelay=%u CritPhyCal=%u CritRateRecovery=%u CritBcnLoss=%u CritHpp=%u CritBT=%u CritAwdlNan=%u CirtAggregate=%u [%llums]\n", v6, *(*(this + 9) + 18868), *(*(this + 9) + 18870), *(*(this + 9) + 18872), *(*(this + 9) + 18876), *(*(this + 9) + 18878), *(*(this + 9) + 18880), *(*(this + 9) + 18882), *(*(this + 9) + 18884), *(*(this + 9) + 18886), *(*(this + 9) + 18888), *(*(this + 9) + 18890), *(*(this + 9) + 18892), *(*(this + 9) + 18896), v23);
        }

        if (IO80211Controller::isLQMCCLOGEnabled(this))
        {
          IO80211Controller::logLQMToCC(this, "LQM-WIFI: RC2 Coex Stats V1: Mode=%u Request=%u Grant=%u Duration=%uus AckedPM=%u TXedCTS2A=%u GrantDelay=%u CritPhyCal=%u CritRateRecovery=%u CritBcnLoss=%u CritHpp=%u CritBT=%u CritAwdlNan=%u CirtAggregate=%u [%llums]\n", v6, *(*(this + 9) + 18868), *(*(this + 9) + 18870), *(*(this + 9) + 18872), *(*(this + 9) + 18876), *(*(this + 9) + 18878), *(*(this + 9) + 18880), *(*(this + 9) + 18882), *(*(this + 9) + 18884), *(*(this + 9) + 18886), *(*(this + 9) + 18888), *(*(this + 9) + 18890), *(*(this + 9) + 18892), *(*(this + 9) + 18896), v23);
        }

        *(*(this + 9) + 31096) = mach_continuous_time();
        v24 = *(this + 9);
        *(v24 + 18864) = 0u;
        *(v24 + 18880) = 0u;
        *(v24 + 18896) = 0;
      }

      v25 = *(this + 9);
      v26 = *(v25 + 11288);
      if (v26)
      {
        if (*(v25 + 18500))
        {
          IO80211Controller::postMessage(this, v26, 0xA2u, v28, 0x30uLL, 1);
        }
      }

      return 0;
    }

    else
    {
      AppleBCMWLANCore::updateRC2CoexStatsReportV1();
      return v31;
    }
  }

  else
  {
    AppleBCMWLANCore::updateRC2CoexStatsReportV1();
    return *v28;
  }
}

uint64_t AppleBCMWLANCore::updateRC2CoexStatsReportV2(AppleBCMWLANCore *this, OSData *a2)
{
  v37 = 0xAAAAAAAAAAAAAAAALL;
  if (OSData::getLength(a2) == 40)
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v35[16] = v4;
    v36 = v4;
    *v35 = v4;
    BytesNoCopy = OSData::getBytesNoCopy(a2);
    if (*(BytesNoCopy + 2) == 40)
    {
      v6 = *(BytesNoCopy + 3);
      v7 = BytesNoCopy[18];
      v8 = *(BytesNoCopy + 8);
      v9 = BytesNoCopy[15];
      v10 = BytesNoCopy[14];
      v11 = BytesNoCopy[13];
      v12 = BytesNoCopy[12];
      v13 = *(BytesNoCopy + 2);
      v14 = BytesNoCopy[7];
      v15 = BytesNoCopy[6];
      v16 = *(BytesNoCopy + 2);
      v17 = BytesNoCopy[3];
      v18 = BytesNoCopy[2];
      *(*(this + 9) + 18572) = 2;
      *(*(this + 9) + 18502) += v18;
      *(*(this + 9) + 18504) += v17;
      *(*(this + 9) + 18506) += v15;
      *(*(this + 9) + 18508) += v14;
      *(*(this + 9) + 18510) += v13;
      *(*(this + 9) + 18512) += WORD1(v13);
      *(*(this + 9) + 18514) += WORD2(v13);
      *(*(this + 9) + 18516) += HIWORD(v13);
      *(*(this + 9) + 18518) += v12;
      *(*(this + 9) + 18520) += v11;
      *(*(this + 9) + 18522) += v10;
      *(*(this + 9) + 18536) += v9;
      *(*(this + 9) + 18524) += v8;
      *(*(this + 9) + 18538) += v7;
      *(*(this + 9) + 18528) += v16;
      *(*(this + 9) + 18500) = 1;
      LOWORD(v19) = v18;
      WORD1(v19) = v17;
      WORD2(v19) = v15;
      v20 = *(this + 9);
      v21 = *(v20 + 18904);
      WORD3(v19) = v14;
      *(&v19 + 1) = v13;
      *&v35[2] = v19;
      *(v20 + 18904) = v21 + v18;
      v22 = *(this + 9);
      v23 = *(v22 + 18906);
      *&v35[18] = v12;
      *(v22 + 18906) = v23 + v17;
      *(*(this + 9) + 18912) += v15;
      *(*(this + 9) + 18914) += v14;
      *&v35[20] = v11;
      *(*(this + 9) + 18916) += v13;
      v24 = *(this + 9);
      v25 = *(v24 + 18918);
      *&v35[22] = v10;
      *(v24 + 18918) = v25 + WORD1(v13);
      *(*(this + 9) + 18920) += WORD2(v13);
      *(*(this + 9) + 18922) += HIWORD(v13);
      WORD2(v36) = v9;
      *(*(this + 9) + 18924) += v12;
      v26 = *(this + 9);
      v27 = *(v26 + 18926);
      WORD3(v36) = v7;
      *(v26 + 18926) = v27 + v11;
      *(*(this + 9) + 18928) += v10;
      *&v35[24] = v8;
      *&v35[28] = v16;
      *(*(this + 9) + 18930) += v9;
      v28 = *(this + 9);
      v29 = *(v28 + 18932);
      v35[0] = 1;
      *(v28 + 18932) = v29 + v8;
      *(*(this + 9) + 18936) += v7;
      *(*(this + 9) + 18908) += v16;
      mach_continuous_time();
      absolutetime_to_nanoseconds();
      v30 = v37 / 0xF4240;
      LODWORD(v36) = v37 / 0xF4240;
      if (v37 >= 0x10C388D00)
      {
        if (IO80211Controller::isLQMOSLOGEnabled(this))
        {
          io80211_os_log("LQM-WIFI: RC2 Coex Stats V2: Mode=%u Request=%u Grant=%u Duration=%uus AckedPM=%u TXedCTS2A=%u GrantDelay=%u CritPhyCal=%u CritRateRecovery=%u CritBcnLoss=%u CritHpp=%u CritBT=%u CritAwdlNan=%u CritMaxDur=%u CirtAggregate=%u CritBitMapMax=%u [%llums]\n", v6, *(*(this + 9) + 18904), *(*(this + 9) + 18906), *(*(this + 9) + 18908), *(*(this + 9) + 18912), *(*(this + 9) + 18914), *(*(this + 9) + 18916), *(*(this + 9) + 18918), *(*(this + 9) + 18920), *(*(this + 9) + 18922), *(*(this + 9) + 18924), *(*(this + 9) + 18926), *(*(this + 9) + 18928), *(*(this + 9) + 18930), *(*(this + 9) + 18932), *(*(this + 9) + 18936), v30);
        }

        if (IO80211Controller::isLQMIOLOGEnabled(this))
        {
          IOLog("LQM-WIFI: RC2 Coex Stats V2: Mode=%u Request=%u Grant=%u Duration=%uus AckedPM=%u TXedCTS2A=%u GrantDelay=%u CritPhyCal=%u CritRateRecovery=%u CritBcnLoss=%u CritHpp=%u CritBT=%u CritAwdlNan=%u CritMaxDur=%u CirtAggregate=%u CritBitMapMax=%u [%llums]\n", v6, *(*(this + 9) + 18904), *(*(this + 9) + 18906), *(*(this + 9) + 18908), *(*(this + 9) + 18912), *(*(this + 9) + 18914), *(*(this + 9) + 18916), *(*(this + 9) + 18918), *(*(this + 9) + 18920), *(*(this + 9) + 18922), *(*(this + 9) + 18924), *(*(this + 9) + 18926), *(*(this + 9) + 18928), *(*(this + 9) + 18930), *(*(this + 9) + 18932), *(*(this + 9) + 18936), v30);
        }

        if (IO80211Controller::isLQMCCLOGEnabled(this))
        {
          IO80211Controller::logLQMToCC(this, "LQM-WIFI: RC2 Coex Stats V2: Mode=%u Request=%u Grant=%u Duration=%uus AckedPM=%u TXedCTS2A=%u GrantDelay=%u CritPhyCal=%u CritRateRecovery=%u CritBcnLoss=%u CritHpp=%u CritBT=%u CritAwdlNan=%u CritMaxDur=%u CirtAggregate=%u CritBitMapMax=%u [%llums]\n", v6, *(*(this + 9) + 18904), *(*(this + 9) + 18906), *(*(this + 9) + 18908), *(*(this + 9) + 18912), *(*(this + 9) + 18914), *(*(this + 9) + 18916), *(*(this + 9) + 18918), *(*(this + 9) + 18920), *(*(this + 9) + 18922), *(*(this + 9) + 18924), *(*(this + 9) + 18926), *(*(this + 9) + 18928), *(*(this + 9) + 18930), *(*(this + 9) + 18932), *(*(this + 9) + 18936), v30);
        }

        *(*(this + 9) + 31096) = mach_continuous_time();
        v31 = *(this + 9) + 18900;
        *v31 = 0u;
        *(v31 + 16) = 0u;
        *(v31 + 32) = 0;
      }

      v32 = *(this + 9);
      v33 = *(v32 + 11288);
      if (v33)
      {
        if (*(v32 + 18500))
        {
          IO80211Controller::postMessage(this, v33, 0xA2u, v35, 0x30uLL, 1);
        }
      }

      return 0;
    }

    else
    {
      AppleBCMWLANCore::updateRC2CoexStatsReportV2();
      return v38;
    }
  }

  else
  {
    AppleBCMWLANCore::updateRC2CoexStatsReportV2();
    return *v35;
  }
}

uint64_t AppleBCMWLANCore::updateRC2CoexStatsReportV3(AppleBCMWLANCore *this, OSData *a2)
{
  v48 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *(this + 9);
  if (OSData::getLength(a2) != 48)
  {
    AppleBCMWLANCore::updateRC2CoexStatsReportV3();
    return *__str;
  }

  v44 = -1431655766;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v43 = v5;
  *&v43[16] = v5;
  BytesNoCopy = OSData::getBytesNoCopy(a2);
  if (BytesNoCopy[2] != 48)
  {
    AppleBCMWLANCore::updateRC2CoexStatsReportV3();
    return *__str;
  }

  v8 = v4 + 0x4000;
  v9 = BytesNoCopy[3];
  v10 = *(BytesNoCopy + 18);
  v11 = *(BytesNoCopy + 8);
  v12 = *(BytesNoCopy + 15);
  v13 = *(BytesNoCopy + 14);
  v14 = *(BytesNoCopy + 2);
  v7.i32[0] = *(BytesNoCopy + 1);
  v15 = *(BytesNoCopy + 38);
  v16 = *(BytesNoCopy + 12);
  *(*(this + 9) + 18572) = 3;
  *(*(this + 9) + 18502) += v7.i16[0];
  *(*(this + 9) + 18504) += v7.i16[1];
  *(*(this + 9) + 18506) += v16.i16[0];
  *(*(this + 9) + 18508) += v16.i16[1];
  *(*(this + 9) + 18510) += v16.i16[2];
  *(*(this + 9) + 18512) += v16.i16[3];
  *(*(this + 9) + 18514) += v16.i16[4];
  *(*(this + 9) + 18516) += v16.i16[5];
  *(*(this + 9) + 18518) += v16.i16[6];
  *(*(this + 9) + 18520) += v16.i16[7];
  *(*(this + 9) + 18522) += v13;
  *(*(this + 9) + 18536) += v12;
  *(*(this + 9) + 18524) += v11;
  *(*(this + 9) + 18538) += v10;
  *(*(this + 9) + 18528) += v14;
  *(*(this + 9) + 18540) += v15.i16[0];
  *(*(this + 9) + 18542) += v15.i16[1];
  *(*(this + 9) + 18544) += v15.i16[2];
  *(*(this + 9) + 18546) += v15.i16[3];
  *(*(this + 9) + 18500) = 1;
  *&v43[2] = vextq_s8(vextq_s8(v7, v7, 4uLL), v16, 0xCuLL);
  *&v43[18] = v16.i32[3];
  *&v43[22] = v13;
  v45 = v12;
  v46 = v10;
  *&v43[24] = v11;
  *&v43[28] = v14;
  v47 = v15;
  v43[0] = 1;
  *(v8 + 2560) += v7.i16[0];
  *(v8 + 2562) += v7.i16[1];
  *(v8 + 2568) = vaddq_s16(*(v8 + 2568), v16);
  *(v8 + 2584) += v13;
  *(v8 + 2586) += v12;
  *(v8 + 2588) += v11;
  *(v8 + 2592) += v10;
  *(v8 + 2564) += v14;
  *(v8 + 2594) = vadd_s16(*(v8 + 2594), v15);
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v17 = v48 / 0xF4240;
  v44 = v48 / 0xF4240;
  if (v48 >= 0x10C388D00)
  {
    if (IO80211Controller::isLQMOSLOGEnabled(this))
    {
      io80211_os_log("LQM-WIFI: RC2 Coex Stats V3: Mode=%u Request=%u Grant=%u Duration=%uus AckedPM=%u TXedCTS2A=%u GrantDelay=%u CritPhyCal=%u CritRateRecovery=%u CritBcnLoss=%u CritHpp=%u CritBT=%u CritAwdlNan=%u CritMaxDur=%u CirtAggregate=%u CritBitMapMax=%u rc2_tx_req_cnt=%u rc2_rx_req_cnt=%u rc2_tx_deny_cnt=%u rc2_rx_deny_cnt=%u [%llums]\n", v9, *(v8 + 2560), *(v8 + 2562), *(v8 + 2564), *(v8 + 2568), *(v8 + 2570), *(v8 + 2572), *(v8 + 2574), *(v8 + 2576), *(v8 + 2578), *(v8 + 2580), *(v8 + 2582), *(v8 + 2584), *(v8 + 2586), *(v8 + 2588), *(v8 + 2592), *(v8 + 2594), *(v8 + 2596), *(v8 + 2598), *(v8 + 2600), v17);
    }

    if (IO80211Controller::isLQMIOLOGEnabled(this))
    {
      IOLog("LQM-WIFI: RC2 Coex Stats V3: Mode=%u Request=%u Grant=%u Duration=%uus AckedPM=%u TXedCTS2A=%u GrantDelay=%u CritPhyCal=%u CritRateRecovery=%u CritBcnLoss=%u CritHpp=%u CritBT=%u CritAwdlNan=%u CritMaxDur=%u CirtAggregate=%u CritBitMapMax=%u rc2_tx_req_cnt=%u rc2_rx_req_cnt=%u rc2_tx_deny_cnt=%u rc2_rx_deny_cnt=%u [%llums]\n", v9, *(v8 + 2560), *(v8 + 2562), *(v8 + 2564), *(v8 + 2568), *(v8 + 2570), *(v8 + 2572), *(v8 + 2574), *(v8 + 2576), *(v8 + 2578), *(v8 + 2580), *(v8 + 2582), *(v8 + 2584), *(v8 + 2586), *(v8 + 2588), *(v8 + 2592), *(v8 + 2594), *(v8 + 2596), *(v8 + 2598), *(v8 + 2600), v17);
    }

    if (IO80211Controller::isLQMCCLOGEnabled(this))
    {
      IO80211Controller::logLQMToCC(this, "LQM-WIFI: RC2 Coex Stats V3: Mode=%u Request=%u Grant=%u Duration=%uus AckedPM=%u TXedCTS2A=%u GrantDelay=%u CritPhyCal=%u CritRateRecovery=%u CritBcnLoss=%u CritHpp=%u CritBT=%u CritAwdlNan=%u CritMaxDur=%u CirtAggregate=%u CritBitMapMax=%u rc2_tx_req_cnt=%u rc2_rx_req_cnt=%u rc2_tx_deny_cnt=%u rc2_rx_deny_cnt=%u [%llums]\n", v9, *(v8 + 2560), *(v8 + 2562), *(v8 + 2564), *(v8 + 2568), *(v8 + 2570), *(v8 + 2572), *(v8 + 2574), *(v8 + 2576), *(v8 + 2578), *(v8 + 2580), *(v8 + 2582), *(v8 + 2584), *(v8 + 2586), *(v8 + 2588), *(v8 + 2592), *(v8 + 2594), *(v8 + 2596), *(v8 + 2598), *(v8 + 2600), v17);
    }

    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v63 = v18;
    v64 = v18;
    v61 = v18;
    v62 = v18;
    v59 = v18;
    v60 = v18;
    v57 = v18;
    v58 = v18;
    v55 = v18;
    v56 = v18;
    v53 = v18;
    v54 = v18;
    v51 = v18;
    v52 = v18;
    *__str = v18;
    v50 = v18;
    snprintf(__str, 0x100uLL, "15.4 Coex Stats V3: Mode=%u Request=%u Grant=%u Duration=%uus AckedPM=%u TXedCTS2A=%u GrantDelay=%u CritPhyCal=%u CritRateRecovery=%u CritBcnLoss=%u CritHpp=%u CritBT=%u CritAwdlNan=%u CritMaxDur=%u CirtAggregate=%u CritBitMapMax=%u \n", v9, *(v8 + 2560), *(v8 + 2562), *(v8 + 2564), *(v8 + 2568), *(v8 + 2570), *(v8 + 2572), *(v8 + 2574), *(v8 + 2576), *(v8 + 2578), *(v8 + 2580), *(v8 + 2582), *(v8 + 2584), *(v8 + 2586), *(v8 + 2588), *(v8 + 2592));
    v19 = *(this + 9);
    if ((*(v19 + 964) - 1) > 1)
    {
      v20 = (v19 + 34765);
      v21 = v62;
      v20[12] = v61;
      v20[13] = v21;
      v22 = v64;
      v20[14] = v63;
      v20[15] = v22;
      v23 = v58;
      v20[8] = v57;
      v20[9] = v23;
      v24 = v60;
      v20[10] = v59;
      v20[11] = v24;
      v25 = v54;
      v20[4] = v53;
      v20[5] = v25;
      v26 = v56;
      v20[6] = v55;
      v20[7] = v26;
      v27 = v50;
      *v20 = *__str;
      v20[1] = v27;
      v28 = v52;
      v20[2] = v51;
      v20[3] = v28;
    }

    else
    {
      io80211_os_log("LQM-WiFi: %s\n", __str);
    }

    snprintf(__str, 0x100uLL, "15.4 Coex Stats V3: 154_tx_req_cnt=%u 154_rx_req_cnt=%u 154_tx_deny_cnt=%u 154_rx_deny_cnt=%u [%llums]\n", *(v8 + 2594), *(v8 + 2596), *(v8 + 2598), *(v8 + 2600), v17);
    v29 = *(this + 9);
    if ((*(v29 + 964) - 1) > 1)
    {
      v30 = (v29 + 35021);
      v31 = v62;
      v30[12] = v61;
      v30[13] = v31;
      v32 = v64;
      v30[14] = v63;
      v30[15] = v32;
      v33 = v58;
      v30[8] = v57;
      v30[9] = v33;
      v34 = v60;
      v30[10] = v59;
      v30[11] = v34;
      v35 = v54;
      v30[4] = v53;
      v30[5] = v35;
      v36 = v56;
      v30[6] = v55;
      v30[7] = v36;
      v37 = v50;
      *v30 = *__str;
      v30[1] = v37;
      v38 = v52;
      v30[2] = v51;
      v30[3] = v38;
    }

    else
    {
      io80211_os_log("LQM-WiFi: %s\n", __str);
    }

    *(*(this + 9) + 31096) = mach_continuous_time();
    v39 = (*(this + 9) + 18940);
    *v39 = 0u;
    v39[1] = 0u;
    v39[2] = 0u;
  }

  v40 = *(this + 9);
  v41 = *(v40 + 11288);
  if (v41)
  {
    if (*(v40 + 18500))
    {
      IO80211Controller::postMessage(this, v41, 0xA2u, v43, 0x30uLL, 1);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics(IOService *this)
{
  if (!WORD2(this[1].OSObject::OSObjectInterface::__vftable[1160].free))
  {
    v5 = 0;
    v64 = 0;
    v82 = 0;
    v83 = 0;
    v81 = 0;
    v75 = 0;
    v76 = 0;
    v73 = 0;
    v74 = 0;
    v79 = 0;
    aKey = 0;
    v77 = 0;
    v78 = 0;
    v22 = 0;
    v71 = 0;
    v72 = 0;
    v69 = 0;
    v70 = 0;
    v67 = 0;
    v68 = 0;
    v27 = 0;
    v30 = 0;
    v33 = 0;
    v36 = 0;
    v65 = 0;
    v66 = 0;
    v38 = 0;
    v3 = 0;
    goto LABEL_47;
  }

  v2 = OSString::withCString("com.apple.wifi.RC2CoexStats");
  if (!v2)
  {
    return AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
  }

  v3 = v2;
  v4 = OSDictionary::withCapacity(0x13u);
  if (v4)
  {
    v5 = v4;
    v6 = OSString::withCString("Request");
    if (v6)
    {
      v7 = v6;
      v8 = OSNumber::withNumber(HIWORD(this[1].OSObject::OSObjectInterface::__vftable[1156].init), 0x10uLL);
      if (v8)
      {
        v76 = v8;
        OSDictionary::setObject(v5, v7, v8);
        v9 = OSString::withCString("Grant");
        if (v9)
        {
          v83 = v9;
          v10 = OSNumber::withNumber(LOWORD(this[1].OSObject::OSObjectInterface::__vftable[1156].free), 0x10uLL);
          if (v10)
          {
            v75 = v10;
            OSDictionary::setObject(v5, v83, v10);
            v11 = OSString::withCString("SuccessfullyAckedPM");
            if (v11)
            {
              v82 = v11;
              v12 = OSNumber::withNumber(WORD1(this[1].OSObject::OSObjectInterface::__vftable[1156].free), 0x10uLL);
              if (v12)
              {
                v74 = v12;
                OSDictionary::setObject(v5, v82, v12);
                v13 = OSString::withCString("SuccessfullyTXedCTS2A");
                if (v13)
                {
                  v81 = v13;
                  v14 = OSNumber::withNumber(WORD2(this[1].OSObject::OSObjectInterface::__vftable[1156].free), 0x10uLL);
                  if (!v14)
                  {
                    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                    {
                      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                      }
                    }

                    v38 = 0;
                    v65 = 0;
                    v66 = 0;
                    v67 = 0;
                    v68 = 0;
                    v69 = 0;
                    v70 = 0;
                    v36 = 0;
                    v33 = 0;
                    v30 = 0;
                    v27 = 0;
                    v77 = 0;
                    v78 = 0;
                    v71 = 0;
                    v72 = 0;
                    v22 = 0;
                    v79 = 0;
                    aKey = 0;
                    v73 = 0;
                    goto LABEL_52;
                  }

                  v73 = v14;
                  OSDictionary::setObject(v5, v81, v14);
                  v15 = OSString::withCString("GrantDelay");
                  if (!v15)
                  {
                    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                    {
                      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                      }
                    }

                    v38 = 0;
                    v65 = 0;
                    v66 = 0;
                    v67 = 0;
                    v68 = 0;
                    v69 = 0;
                    v70 = 0;
                    v36 = 0;
                    v33 = 0;
                    v30 = 0;
                    v27 = 0;
                    v77 = 0;
                    v78 = 0;
                    v71 = 0;
                    v72 = 0;
                    v22 = 0;
                    v79 = 0;
                    aKey = 0;
                    goto LABEL_52;
                  }

                  aKey = v15;
                  v16 = OSNumber::withNumber(HIWORD(this[1].OSObject::OSObjectInterface::__vftable[1156].free), 0x10uLL);
                  if (v16)
                  {
                    v72 = v16;
                    OSDictionary::setObject(v5, aKey, v16);
                    v17 = OSString::withCString("CriticalPHYCal");
                    if (v17)
                    {
                      v79 = v17;
                      v18 = OSNumber::withNumber(LOWORD(this[1].OSObject::OSObjectInterface::__vftable[1157].init), 0x10uLL);
                      if (v18)
                      {
                        v71 = v18;
                        OSDictionary::setObject(v5, v79, v18);
                        v19 = OSString::withCString("CriticalRateRecovery");
                        if (v19)
                        {
                          v78 = v19;
                          v20 = OSNumber::withNumber(WORD1(this[1].OSObject::OSObjectInterface::__vftable[1157].init), 0x10uLL);
                          if (v20)
                          {
                            v69 = v20;
                            OSDictionary::setObject(v5, v78, v20);
                            v21 = OSString::withCString("CriticalBeaconLoss");
                            if (v21)
                            {
                              v22 = v21;
                              v23 = OSNumber::withNumber(WORD2(this[1].OSObject::OSObjectInterface::__vftable[1157].init), 0x10uLL);
                              if (v23)
                              {
                                v67 = v23;
                                OSDictionary::setObject(v5, v22, v23);
                                v24 = OSString::withCString("CriticalHPP");
                                if (v24)
                                {
                                  v77 = v24;
                                  v25 = OSNumber::withNumber(HIWORD(this[1].OSObject::OSObjectInterface::__vftable[1157].init), 0x10uLL);
                                  if (v25)
                                  {
                                    v70 = v25;
                                    OSDictionary::setObject(v5, v77, v25);
                                    v26 = OSString::withCString("CriticalBT");
                                    if (v26)
                                    {
                                      v27 = v26;
                                      v28 = OSNumber::withNumber(LOWORD(this[1].OSObject::OSObjectInterface::__vftable[1157].free), 0x10uLL);
                                      if (v28)
                                      {
                                        v68 = v28;
                                        OSDictionary::setObject(v5, v27, v28);
                                        v29 = OSString::withCString("CriticalAWDLAndNAN");
                                        if (v29)
                                        {
                                          v30 = v29;
                                          v31 = OSNumber::withNumber(WORD1(this[1].OSObject::OSObjectInterface::__vftable[1157].free), 0x10uLL);
                                          if (v31)
                                          {
                                            v66 = v31;
                                            OSDictionary::setObject(v5, v30, v31);
                                            v32 = OSString::withCString("CriticalAggregate");
                                            if (v32)
                                            {
                                              v33 = v32;
                                              v34 = OSNumber::withNumber(HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[1157].free), 0x20uLL);
                                              if (v34)
                                              {
                                                v65 = v34;
                                                OSDictionary::setObject(v5, v33, v34);
                                                v35 = OSString::withCString("RC2Duration");
                                                if (v35)
                                                {
                                                  v36 = v35;
                                                  v37 = OSNumber::withNumber(LODWORD(this[1].OSObject::OSObjectInterface::__vftable[1158].init), 0x20uLL);
                                                  if (!v37)
                                                  {
                                                    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                                    {
                                                      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                                      if (CCLogStream::shouldLog())
                                                      {
                                                        AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                                                      }
                                                    }

                                                    v38 = 0;
                                                    goto LABEL_52;
                                                  }

                                                  v38 = v37;
                                                  v64 = v7;
                                                  OSDictionary::setObject(v5, v36, v37);
                                                  if (WORD2(this[1].OSObject::OSObjectInterface::__vftable[1160].free) < 2u)
                                                  {
                                                    goto LABEL_47;
                                                  }

                                                  v39 = OSString::withCString("CriticalMaxDur");
                                                  if (v39)
                                                  {
                                                    v40 = v39;
                                                    v41 = OSNumber::withNumber(LOWORD(this[1].OSObject::OSObjectInterface::__vftable[1158].free), 0x10uLL);
                                                    if (v41)
                                                    {
                                                      OSDictionary::setObject(v5, v40, v41);
                                                      v42 = OSString::withCString("CriticalMapMax");
                                                      if (v42)
                                                      {
                                                        v43 = v42;
                                                        v63 = v3;
                                                        v44 = OSNumber::withNumber(LOWORD(this[1].OSObject::OSObjectInterface::__vftable[1158].free), 0x10uLL);
                                                        if (v44)
                                                        {
                                                          v45 = v44;
                                                          OSDictionary::setObject(v5, v43, v44);
                                                          (v43->release)(v43);
                                                          (v45->release)(v45);
                                                          if (WORD2(this[1].OSObject::OSObjectInterface::__vftable[1160].free) < 3u)
                                                          {
LABEL_45:
                                                            v3 = v63;
LABEL_47:
                                                            v59 = IOService::CoreAnalyticsSendEvent(this, 0, v3, v5, 0);
                                                            if (v59)
                                                            {
                                                              v60 = v59;
                                                              if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                                              {
                                                                (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                                                if (CCLogStream::shouldLog())
                                                                {
                                                                  AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v3, v60);
                                                                }
                                                              }
                                                            }

                                                            v7 = v64;
                                                            if (!v64)
                                                            {
LABEL_53:
                                                              if (v76)
                                                              {
                                                                (v76->release)(v76);
                                                              }

                                                              if (v83)
                                                              {
                                                                (v83->release)(v83);
                                                              }

                                                              if (v75)
                                                              {
                                                                (v75->release)(v75);
                                                              }

                                                              if (v82)
                                                              {
                                                                (v82->release)(v82);
                                                              }

                                                              if (v74)
                                                              {
                                                                (v74->release)(v74);
                                                              }

                                                              if (v81)
                                                              {
                                                                (v81->release)(v81);
                                                              }

                                                              if (v73)
                                                              {
                                                                (v73->release)(v73);
                                                              }

                                                              if (aKey)
                                                              {
                                                                (aKey->release)(aKey);
                                                              }

                                                              if (v72)
                                                              {
                                                                (v72->release)(v72);
                                                              }

                                                              if (v79)
                                                              {
                                                                (v79->release)(v79);
                                                              }

                                                              if (v71)
                                                              {
                                                                (v71->release)(v71);
                                                              }

                                                              if (v78)
                                                              {
                                                                (v78->release)(v78);
                                                              }

                                                              if (v69)
                                                              {
                                                                (v69->release)(v69);
                                                              }

                                                              if (v22)
                                                              {
                                                                (v22->release)(v22);
                                                              }

                                                              if (v67)
                                                              {
                                                                (v67->release)(v67);
                                                              }

                                                              if (v77)
                                                              {
                                                                (v77->release)(v77);
                                                              }

                                                              if (v70)
                                                              {
                                                                (v70->release)(v70);
                                                              }

                                                              if (v27)
                                                              {
                                                                (v27->release)(v27);
                                                              }

                                                              if (v68)
                                                              {
                                                                (v68->release)(v68);
                                                              }

                                                              if (v30)
                                                              {
                                                                (v30->release)(v30);
                                                              }

                                                              if (v66)
                                                              {
                                                                (v66->release)(v66);
                                                              }

                                                              if (v33)
                                                              {
                                                                (v33->release)(v33);
                                                              }

                                                              result = v65;
                                                              if (v65)
                                                              {
                                                                result = (*(*v65 + 16))(v65);
                                                              }

                                                              if (v36)
                                                              {
                                                                result = (v36->release)(v36);
                                                              }

                                                              if (v38)
                                                              {
                                                                result = (v38->release)(v38);
                                                              }

                                                              if (!v3)
                                                              {
                                                                goto LABEL_105;
                                                              }

                                                              goto LABEL_104;
                                                            }

LABEL_52:
                                                            (v7->release)(v7);
                                                            goto LABEL_53;
                                                          }

                                                          v46 = OSString::withCString("RC2TXReqCnt");
                                                          if (v46)
                                                          {
                                                            v47 = v46;
                                                            v48 = OSNumber::withNumber(WORD2(this[1].OSObject::OSObjectInterface::__vftable[1158].free), 0x10uLL);
                                                            if (v48)
                                                            {
                                                              OSDictionary::setObject(v5, v47, v48);
                                                              v49 = OSString::withCString("RC2RXReqCnt");
                                                              if (v49)
                                                              {
                                                                v50 = v49;
                                                                v51 = OSNumber::withNumber(HIWORD(this[1].OSObject::OSObjectInterface::__vftable[1158].free), 0x10uLL);
                                                                if (v51)
                                                                {
                                                                  OSDictionary::setObject(v5, v50, v51);
                                                                  v52 = OSString::withCString("RC2TXDenyCnt");
                                                                  if (v52)
                                                                  {
                                                                    v53 = v52;
                                                                    v54 = OSNumber::withNumber(LOWORD(this[1].OSObject::OSObjectInterface::__vftable[1159].init), 0x10uLL);
                                                                    if (v54)
                                                                    {
                                                                      OSDictionary::setObject(v5, v53, v54);
                                                                      v55 = OSString::withCString("RC2RXDenyCnt");
                                                                      if (v55)
                                                                      {
                                                                        v56 = v55;
                                                                        v57 = OSNumber::withNumber(WORD1(this[1].OSObject::OSObjectInterface::__vftable[1159].init), 0x10uLL);
                                                                        if (v57)
                                                                        {
                                                                          v58 = v57;
                                                                          OSDictionary::setObject(v5, v56, v57);
                                                                          (v56->release)(v56);
                                                                          (v58->release)(v58);
                                                                          goto LABEL_45;
                                                                        }

                                                                        if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                                                        {
                                                                          (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                                                          if (CCLogStream::shouldLog())
                                                                          {
                                                                            AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                                                                          }
                                                                        }
                                                                      }

                                                                      else if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                                                      {
                                                                        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                                                        if (CCLogStream::shouldLog())
                                                                        {
                                                                          AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                                                                        }
                                                                      }
                                                                    }

                                                                    else if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                                                    {
                                                                      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                                                      if (CCLogStream::shouldLog())
                                                                      {
                                                                        AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                                                                      }
                                                                    }
                                                                  }

                                                                  else if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                                                  {
                                                                    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                                                    if (CCLogStream::shouldLog())
                                                                    {
                                                                      AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                                                                    }
                                                                  }
                                                                }

                                                                else if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                                                {
                                                                  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                                                  if (CCLogStream::shouldLog())
                                                                  {
                                                                    AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                                                                  }
                                                                }
                                                              }

                                                              else if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                                              {
                                                                (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                                                if (CCLogStream::shouldLog())
                                                                {
                                                                  AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                                                                }
                                                              }
                                                            }

                                                            else if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                                            {
                                                              (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                                              if (CCLogStream::shouldLog())
                                                              {
                                                                AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                                                              }
                                                            }
                                                          }

                                                          else if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                                          {
                                                            (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                                            if (CCLogStream::shouldLog())
                                                            {
                                                              AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                                                            }
                                                          }
                                                        }

                                                        else if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                                        {
                                                          (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                                          if (CCLogStream::shouldLog())
                                                          {
                                                            AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                                                          }
                                                        }

                                                        v3 = v63;
                                                      }

                                                      else if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                                      {
                                                        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                                        if (CCLogStream::shouldLog())
                                                        {
                                                          AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                                                        }
                                                      }
                                                    }

                                                    else if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                                    {
                                                      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                                      if (CCLogStream::shouldLog())
                                                      {
                                                        AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                                                      }
                                                    }
                                                  }

                                                  else if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                                  {
                                                    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                                    if (CCLogStream::shouldLog())
                                                    {
                                                      AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                                                    }
                                                  }

                                                  v7 = v64;
                                                  goto LABEL_52;
                                                }

                                                if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                                {
                                                  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                                  if (CCLogStream::shouldLog())
                                                  {
                                                    AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                                                  }
                                                }

                                                v38 = 0;
                                              }

                                              else
                                              {
                                                if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                                {
                                                  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                                  if (CCLogStream::shouldLog())
                                                  {
                                                    AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                                                  }
                                                }

                                                v38 = 0;
                                                v65 = 0;
                                              }

                                              v36 = 0;
                                              goto LABEL_52;
                                            }

                                            if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                            {
                                              (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                              if (CCLogStream::shouldLog())
                                              {
                                                AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                                              }
                                            }

                                            v38 = 0;
                                            v65 = 0;
                                          }

                                          else
                                          {
                                            if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                            {
                                              (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                              if (CCLogStream::shouldLog())
                                              {
                                                AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                                              }
                                            }

                                            v38 = 0;
                                            v65 = 0;
                                            v66 = 0;
                                          }

                                          v36 = 0;
                                          v33 = 0;
                                          goto LABEL_52;
                                        }

                                        if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                        {
                                          (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                          if (CCLogStream::shouldLog())
                                          {
                                            AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                                          }
                                        }

                                        v38 = 0;
                                        v65 = 0;
                                        v66 = 0;
                                      }

                                      else
                                      {
                                        if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                        {
                                          (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                          if (CCLogStream::shouldLog())
                                          {
                                            AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                                          }
                                        }

                                        v38 = 0;
                                        v65 = 0;
                                        v66 = 0;
                                        v68 = 0;
                                      }

                                      v36 = 0;
                                      v33 = 0;
                                      v30 = 0;
                                      goto LABEL_52;
                                    }

                                    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                    {
                                      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                      if (CCLogStream::shouldLog())
                                      {
                                        AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                                      }
                                    }

                                    v38 = 0;
                                    v65 = 0;
                                    v66 = 0;
                                    v68 = 0;
                                  }

                                  else
                                  {
                                    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                    {
                                      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                      if (CCLogStream::shouldLog())
                                      {
                                        AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                                      }
                                    }

                                    v38 = 0;
                                    v65 = 0;
                                    v66 = 0;
                                    v68 = 0;
                                    v70 = 0;
                                  }

                                  v36 = 0;
                                  v33 = 0;
                                  v30 = 0;
                                  v27 = 0;
                                  goto LABEL_52;
                                }

                                if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                {
                                  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                  if (CCLogStream::shouldLog())
                                  {
                                    AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                                  }
                                }

                                v38 = 0;
                                v65 = 0;
                                v66 = 0;
                                v68 = 0;
                              }

                              else
                              {
                                if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                {
                                  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                  if (CCLogStream::shouldLog())
                                  {
                                    AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                                  }
                                }

                                v38 = 0;
                                v65 = 0;
                                v66 = 0;
                                v67 = 0;
                                v68 = 0;
                              }

                              v70 = 0;
                              v36 = 0;
                              v33 = 0;
                              v30 = 0;
                              v27 = 0;
                              v77 = 0;
                              goto LABEL_52;
                            }

                            if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                            {
                              (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                              }
                            }

                            v38 = 0;
                            v65 = 0;
                            v66 = 0;
                            v67 = 0;
                            v68 = 0;
                            v70 = 0;
                          }

                          else
                          {
                            if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                            {
                              (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                              if (CCLogStream::shouldLog())
                              {
                                AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                              }
                            }

                            v38 = 0;
                            v65 = 0;
                            v66 = 0;
                            v67 = 0;
                            v68 = 0;
                            v69 = 0;
                            v70 = 0;
                          }

                          v36 = 0;
                          v33 = 0;
                          v30 = 0;
                          v27 = 0;
                          v77 = 0;
                          v22 = 0;
                          goto LABEL_52;
                        }

                        if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                        {
                          (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                          if (CCLogStream::shouldLog())
                          {
                            AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                          }
                        }

                        v38 = 0;
                        v65 = 0;
                        v66 = 0;
                        v67 = 0;
                        v68 = 0;
                        v69 = 0;
                        v70 = 0;
                        v36 = 0;
                        v33 = 0;
                        v30 = 0;
                        v27 = 0;
                        v77 = 0;
                      }

                      else
                      {
                        if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                        {
                          (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                          if (CCLogStream::shouldLog())
                          {
                            AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                          }
                        }

                        v38 = 0;
                        v65 = 0;
                        v66 = 0;
                        v67 = 0;
                        v68 = 0;
                        v69 = 0;
                        v70 = 0;
                        v36 = 0;
                        v33 = 0;
                        v30 = 0;
                        v27 = 0;
                        v77 = 0;
                        v71 = 0;
                      }

                      v22 = 0;
                      v78 = 0;
                      goto LABEL_52;
                    }

                    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                    {
                      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                      }
                    }

                    v38 = 0;
                    v65 = 0;
                    v66 = 0;
                    v67 = 0;
                    v68 = 0;
                    v69 = 0;
                    v70 = 0;
                    v36 = 0;
                    v33 = 0;
                    v30 = 0;
                    v27 = 0;
                    v77 = 0;
                    v71 = 0;
                  }

                  else
                  {
                    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                    {
                      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                      }
                    }

                    v38 = 0;
                    v65 = 0;
                    v66 = 0;
                    v67 = 0;
                    v68 = 0;
                    v69 = 0;
                    v70 = 0;
                    v36 = 0;
                    v33 = 0;
                    v30 = 0;
                    v27 = 0;
                    v77 = 0;
                    v71 = 0;
                    v72 = 0;
                  }

                  v22 = 0;
                  v78 = 0;
                  v79 = 0;
                  goto LABEL_52;
                }

                if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                {
                  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                  }
                }

                v38 = 0;
                v65 = 0;
                v66 = 0;
                v67 = 0;
                v68 = 0;
                v69 = 0;
                v70 = 0;
                v36 = 0;
                v33 = 0;
                v30 = 0;
                v27 = 0;
                v77 = 0;
                v78 = 0;
                v71 = 0;
                v72 = 0;
                v22 = 0;
                v79 = 0;
                aKey = 0;
                v73 = 0;
              }

              else
              {
                if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                {
                  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
                  }
                }

                v38 = 0;
                v65 = 0;
                v66 = 0;
                v67 = 0;
                v68 = 0;
                v69 = 0;
                v70 = 0;
                v36 = 0;
                v33 = 0;
                v30 = 0;
                v27 = 0;
                v77 = 0;
                v78 = 0;
                v71 = 0;
                v72 = 0;
                v22 = 0;
                v79 = 0;
                aKey = 0;
                v73 = 0;
                v74 = 0;
              }

              v81 = 0;
              goto LABEL_52;
            }

            if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
            {
              (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
              }
            }

            v38 = 0;
            v65 = 0;
            v66 = 0;
            v67 = 0;
            v68 = 0;
            v69 = 0;
            v70 = 0;
            v36 = 0;
            v33 = 0;
            v30 = 0;
            v27 = 0;
            v77 = 0;
            v78 = 0;
            v71 = 0;
            v72 = 0;
            v22 = 0;
            v79 = 0;
            aKey = 0;
            v73 = 0;
            v74 = 0;
          }

          else
          {
            if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
            {
              (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
              }
            }

            v38 = 0;
            v65 = 0;
            v66 = 0;
            v67 = 0;
            v68 = 0;
            v69 = 0;
            v70 = 0;
            v36 = 0;
            v33 = 0;
            v30 = 0;
            v27 = 0;
            v77 = 0;
            v78 = 0;
            v71 = 0;
            v72 = 0;
            v22 = 0;
            v79 = 0;
            aKey = 0;
            v73 = 0;
            v74 = 0;
            v75 = 0;
          }

          v81 = 0;
          v82 = 0;
          goto LABEL_52;
        }

        if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
        {
          (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
          }
        }

        v38 = 0;
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v68 = 0;
        v69 = 0;
        v70 = 0;
        v36 = 0;
        v33 = 0;
        v30 = 0;
        v27 = 0;
        v77 = 0;
        v78 = 0;
        v71 = 0;
        v72 = 0;
        v22 = 0;
        v79 = 0;
        aKey = 0;
        v73 = 0;
        v74 = 0;
        v75 = 0;
      }

      else
      {
        if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
        {
          (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
          }
        }

        v38 = 0;
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v68 = 0;
        v69 = 0;
        v70 = 0;
        v36 = 0;
        v33 = 0;
        v30 = 0;
        v27 = 0;
        v77 = 0;
        v78 = 0;
        v71 = 0;
        v72 = 0;
        v22 = 0;
        v79 = 0;
        aKey = 0;
        v73 = 0;
        v74 = 0;
        v75 = 0;
        v76 = 0;
      }

      v81 = 0;
      v82 = 0;
      v83 = 0;
      goto LABEL_52;
    }

    AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics(this, v3, v5, &v84, &v85);
  }

  else
  {
    AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics();
  }

  v3 = v84;
  v5 = v85;
LABEL_104:
  result = (v3->release)(v3);
LABEL_105:
  if (v5)
  {
    release = v5->release;

    return (release)(v5);
  }

  return result;
}

AppleBCMWLANIOReporting *AppleBCMWLANCore::parseEventLogRecordRC1CoexStatsPerSlice(AppleBCMWLANCore *a1, OSData *a2, uint64_t a3)
{
  v3 = a3;
  if (a3 >= 2)
  {
    AppleBCMWLANCore::parseEventLogRecordRC1CoexStatsPerSlice();
    return v7;
  }

  if (AppleBCMWLANCore::updateRC1CoexStatsReport(a1, a2, a3))
  {
    AppleBCMWLANCore::parseEventLogRecordRC1CoexStatsPerSlice();
    return v7;
  }

  result = *(*(a1 + 9) + 5512);
  if (result)
  {
    result = AppleBCMWLANIOReportingPerSlice::reportRC1Coex(result, a2, v3);
    if (result)
    {
      AppleBCMWLANCore::parseEventLogRecordRC1CoexStatsPerSlice();
      return v7;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReport(AppleBCMWLANCore *a1, OSData *this, uint64_t a3)
{
  if (a3)
  {
    AppleBCMWLANCore::updateRC1CoexStatsReport();
    return v7;
  }

  if (OSData::getLength(this) <= 2)
  {
    AppleBCMWLANCore::updateRC1CoexStatsReport();
    return v7;
  }

  v5 = *OSData::getBytesNoCopy(this);
  if (v5 >= 6)
  {
    AppleBCMWLANCore::updateRC1CoexStatsReport();
    return v7;
  }

  result = 0;
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      AppleBCMWLANCore::updateRC1CoexStatsReportV1(a1, this);
    }

    else
    {
      if (v5 != 2)
      {
        return result;
      }

      AppleBCMWLANCore::updateRC1CoexStatsReportV2(a1, this);
    }
  }

  else if (v5 == 3)
  {
    AppleBCMWLANCore::updateRC1CoexStatsReportV3(a1, this);
  }

  else if (v5 == 4)
  {
    AppleBCMWLANCore::updateRC1CoexStatsReportV4(a1, this);
  }

  else
  {
    AppleBCMWLANCore::updateRC1CoexStatsReportV5(a1, this);
  }

  return 0;
}

AppleBCMWLANBssManager *AppleBCMWLANCore::parseEventLogRecordLostMpduPerSlice(void *a1, OSData *a2, uint64_t a3)
{
  StatsTimerIntervalMS = AppleBCMWLANLQM::getStatsTimerIntervalMS(*(a1[9] + 5608));
  if (a3 >= 2)
  {
    AppleBCMWLANCore::parseEventLogRecordLostMpduPerSlice();
    return v8;
  }

  else if (*(a1[9] + 8 * a3 + 31104) <= (StatsTimerIntervalMS - 200))
  {
    return 0;
  }

  else
  {

    return AppleBCMWLANCore::updateLostMpduStatsReport(a1, a2, a3);
  }
}

AppleBCMWLANBssManager *AppleBCMWLANCore::updateLostMpduStatsReport(void *a1, OSData *this, uint64_t a3)
{
  if (OSData::getLength(this) != 68)
  {
    AppleBCMWLANCore::updateLostMpduStatsReport();
    return v17;
  }

  BytesNoCopy = OSData::getBytesNoCopy(this);
  v18[0] = *BytesNoCopy;
  v8 = BytesNoCopy[2];
  v7 = BytesNoCopy[3];
  v9 = BytesNoCopy[1];
  v20 = *(BytesNoCopy + 16);
  v19[0] = v8;
  v19[1] = v7;
  v18[1] = v9;
  if (LOWORD(v18[0]) >= 2u)
  {
    AppleBCMWLANCore::updateLostMpduStatsReport();
    return v17;
  }

  if (*(a1[9] + 30972))
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateLostMpduStatsReport();
      }
    }

    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateLostMpduStatsReport();
      }
    }
  }

  v10 = 0;
  v11 = 68 * a3 + 30100;
  do
  {
    v12 = *(v18 + v10 + 4);
    v13 = (a1[9] + v11 + v10);
    v14 = *(v19 + v10 + 4);
    v15 = v14 - v13[8];
    v13[70] = (v12 - *v13) & ~((v12 - *v13) >> 31);
    *(a1[9] + 68 * a3 + 30412 + v10) = v15 & ~(v15 >> 31);
    *(a1[9] + v11 + v10) = v12;
    *(a1[9] + 68 * a3 + 30132 + v10) = v14;
    v10 += 4;
  }

  while (v10 != 32);
  result = *(a1[9] + 5512);
  if (result)
  {
    result = AppleBCMWLANIOReportingPerSlice::reportRxMpduLost(result, v18, a3);
    if (result)
    {
      AppleBCMWLANCore::updateLostMpduStatsReport();
      return v17;
    }
  }

  return result;
}

AppleBCMWLANBssManager *AppleBCMWLANCore::parseEventLogRecordWmeTxMpduPerSlice(void *a1, OSData *a2, uint64_t a3)
{
  StatsTimerIntervalMS = AppleBCMWLANLQM::getStatsTimerIntervalMS(*(a1[9] + 5608));
  if (a3 >= 2)
  {
    AppleBCMWLANCore::parseEventLogRecordWmeTxMpduPerSlice();
    return v8;
  }

  else if (*(a1[9] + 8 * a3 + 31104) <= (StatsTimerIntervalMS - 200))
  {
    return 0;
  }

  else
  {

    return AppleBCMWLANCore::updateWmeTxMpduStatsReport(a1, a2, a3);
  }
}

AppleBCMWLANBssManager *AppleBCMWLANCore::updateWmeTxMpduStatsReport(void *a1, OSData *this, uint64_t a3)
{
  if (OSData::getLength(this) != 36)
  {
    AppleBCMWLANCore::updateWmeTxMpduStatsReport();
    return LODWORD(v14[0]);
  }

  BytesNoCopy = OSData::getBytesNoCopy(this);
  v7 = BytesNoCopy[8];
  v8 = *(BytesNoCopy + 1);
  v14[0] = *BytesNoCopy;
  v14[1] = v8;
  v15 = v7;
  if (LOWORD(v14[0]) >= 2u)
  {
    AppleBCMWLANCore::updateWmeTxMpduStatsReport();
    return v13;
  }

  if (*(a1[9] + 30972))
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateWmeTxMpduStatsReport();
      }
    }
  }

  v9 = 0;
  v10 = 36 * a3 + 30236;
  do
  {
    v11 = *(v14 + v9 + 4);
    *(a1[9] + v10 + v9 + 280) = (v11 - *(a1[9] + v10 + v9)) & ~((v11 - *(a1[9] + v10 + v9)) >> 31);
    *(a1[9] + v10 + v9) = v11;
    v9 += 4;
  }

  while (v9 != 32);
  result = *(a1[9] + 5512);
  if (result)
  {
    result = AppleBCMWLANIOReportingPerSlice::reportTxMpduWme(result, v14, a3);
    if (result)
    {
      AppleBCMWLANCore::updateWmeTxMpduStatsReport();
      return v13;
    }
  }

  return result;
}

AppleBCMWLANBssManager *AppleBCMWLANCore::parseEventLogRecordWmeRxMpduPerSlice(void *a1, OSData *a2, uint64_t a3)
{
  StatsTimerIntervalMS = AppleBCMWLANLQM::getStatsTimerIntervalMS(*(a1[9] + 5608));
  if (a3 >= 2)
  {
    AppleBCMWLANCore::parseEventLogRecordWmeRxMpduPerSlice();
    return v8;
  }

  else if (*(a1[9] + 8 * a3 + 31104) <= (StatsTimerIntervalMS - 200))
  {
    return 0;
  }

  else
  {

    return AppleBCMWLANCore::updateWmeRxMpduStatsReport(a1, a2, a3);
  }
}

AppleBCMWLANBssManager *AppleBCMWLANCore::updateWmeRxMpduStatsReport(void *a1, OSData *this, uint64_t a3)
{
  if (OSData::getLength(this) != 36)
  {
    AppleBCMWLANCore::updateWmeRxMpduStatsReport();
    return LODWORD(v14[0]);
  }

  BytesNoCopy = OSData::getBytesNoCopy(this);
  v7 = BytesNoCopy[8];
  v8 = *(BytesNoCopy + 1);
  v14[0] = *BytesNoCopy;
  v14[1] = v8;
  v15 = v7;
  if (LOWORD(v14[0]) >= 2u)
  {
    AppleBCMWLANCore::updateWmeRxMpduStatsReport();
    return v13;
  }

  if (*(a1[9] + 30972))
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateWmeRxMpduStatsReport();
      }
    }
  }

  v9 = 0;
  v10 = 36 * a3 + 30308;
  do
  {
    v11 = *(v14 + v9 + 4);
    *(a1[9] + v10 + v9 + 280) = (v11 - *(a1[9] + v10 + v9)) & ~((v11 - *(a1[9] + v10 + v9)) >> 31);
    *(a1[9] + v10 + v9) = v11;
    v9 += 4;
  }

  while (v9 != 32);
  result = *(a1[9] + 5512);
  if (result)
  {
    result = AppleBCMWLANIOReportingPerSlice::reportRxMpduWme(result, v14, a3);
    if (result)
    {
      AppleBCMWLANCore::updateWmeRxMpduStatsReport();
      return v13;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV1(AppleBCMWLANCore *this, OSData *a2)
{
  v34 = -1431655766;
  if (OSData::getLength(a2) == 40)
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v51 = v4;
    v52 = v4;
    v49 = v4;
    v50 = v4;
    v47 = v4;
    v48 = v4;
    v45 = v4;
    v46 = v4;
    v43 = v4;
    v44 = v4;
    v41 = v4;
    v42 = v4;
    v39 = v4;
    v40 = v4;
    *__str = v4;
    v38 = v4;
    BytesNoCopy = OSData::getBytesNoCopy(a2);
    v6 = BytesNoCopy[1];
    if (v6 == 40)
    {
      v7 = BytesNoCopy[19];
      v8 = BytesNoCopy[18];
      v9 = *(BytesNoCopy + 8);
      v10 = *(BytesNoCopy + 3);
      v12 = *(BytesNoCopy + 4);
      v11 = *(BytesNoCopy + 5);
      *&v14 = *(BytesNoCopy + 1);
      v13 = *(BytesNoCopy + 1);
      *(*(this + 9) + 18552) += v14;
      *(*(this + 9) + 18556) += DWORD1(v14);
      *(&v14 + 1) = v10;
      *(*(this + 9) + 18560) += v10;
      *(*(this + 9) + 18564) += HIDWORD(v10);
      *(*(this + 9) + 18548) = 1;
      *(*(this + 9) + 18580) = v13;
      *(*(this + 9) + 18584) += v14;
      *(*(this + 9) + 18588) += DWORD1(v14);
      v15 = *(this + 9);
      if (*(v15 + 18592) > v12)
      {
        v12 = *(v15 + 18592);
      }

      *(v15 + 18592) = v12;
      v16 = *(this + 9);
      if (*(v16 + 18596) > v11)
      {
        v11 = *(v16 + 18596);
      }

      *(v16 + 18596) = v11;
      *(*(this + 9) + 18600) += v10;
      *(*(this + 9) + 18604) += HIDWORD(v10);
      v17 = *(this + 9);
      if (*(v17 + 18608) > v9)
      {
        v9 = *(v17 + 18608);
      }

      *(v17 + 18608) = v9;
      v35 = v14;
      *(*(this + 9) + 18612) |= v8;
      v18 = *(this + 9);
      v19 = *(v18 + 18614);
      LOBYTE(v34) = 1;
      *(v18 + 18614) = v19 | v7;
      mach_continuous_time();
      absolutetime_to_nanoseconds();
      v36 = 1338014025;
      if (*(*(this + 9) + 18580))
      {
        snprintf(__str, 0x100uLL, "RC1 Coex Stats: Mode=%u, Request=%u RC1Duration=%uus RC1DutyCycle=%u RC1MaxDuration=%u WlanCritCnt=%u WlanCritDur=%u WlanCritMaxDur=%u WlanCritEvtBitmap=0x%x WlanCritMaxEvtType=%u [%llums]\n", *(*(this + 9) + 18580), *(*(this + 9) + 18584), *(*(this + 9) + 18588), *(*(this + 9) + 18592), *(*(this + 9) + 18596), *(*(this + 9) + 18600), *(*(this + 9) + 18604), *(*(this + 9) + 18608), *(*(this + 9) + 18612), *(*(this + 9) + 18614), 0xB2F4FC07949);
        v20 = *(this + 9);
        if ((*(v20 + 964) - 1) > 1)
        {
          v21 = (v20 + 33485);
          v22 = v50;
          v21[12] = v49;
          v21[13] = v22;
          v23 = v52;
          v21[14] = v51;
          v21[15] = v23;
          v24 = v46;
          v21[8] = v45;
          v21[9] = v24;
          v25 = v48;
          v21[10] = v47;
          v21[11] = v25;
          v26 = v42;
          v21[4] = v41;
          v21[5] = v26;
          v27 = v44;
          v21[6] = v43;
          v21[7] = v27;
          v28 = v38;
          *v21 = *__str;
          v21[1] = v28;
          v29 = v40;
          v21[2] = v39;
          v21[3] = v29;
        }

        else
        {
          io80211_os_log("LQM-WiFi: %s\n", __str);
        }
      }

      *(*(this + 9) + 18992) = mach_continuous_time();
      v30 = *(this + 9);
      *(v30 + 18576) = 0u;
      *(v30 + 18592) = 0u;
      *(v30 + 18608) = 0;
      v31 = *(this + 9);
      v32 = *(v31 + 11288);
      if (v32 && *(v31 + 18548))
      {
        IO80211Controller::postMessage(this, v32, 0xA1u, &v34, 0x18uLL, 1);
      }
    }

    else
    {
      AppleBCMWLANCore::updateRC1CoexStatsReportV1(this, v6);
    }
  }

  else
  {
    AppleBCMWLANCore::updateRC1CoexStatsReportV1();
  }

  return 0;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV2(AppleBCMWLANCore *this, OSData *a2)
{
  v38 = -1431655766;
  if (OSData::getLength(a2) == 48)
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v55 = v4;
    v56 = v4;
    v53 = v4;
    v54 = v4;
    v51 = v4;
    v52 = v4;
    v49 = v4;
    v50 = v4;
    v47 = v4;
    v48 = v4;
    v45 = v4;
    v46 = v4;
    v43 = v4;
    v44 = v4;
    *__str = v4;
    v42 = v4;
    BytesNoCopy = OSData::getBytesNoCopy(a2);
    v6 = BytesNoCopy[1];
    if (v6 == 48)
    {
      v7 = BytesNoCopy[23];
      v8 = BytesNoCopy[22];
      v9 = BytesNoCopy[21];
      v10 = BytesNoCopy[20];
      v11 = BytesNoCopy[19];
      v12 = BytesNoCopy[18];
      v13 = *(BytesNoCopy + 8);
      v14 = *(BytesNoCopy + 3);
      v16 = *(BytesNoCopy + 4);
      v15 = *(BytesNoCopy + 5);
      *&v18 = *(BytesNoCopy + 1);
      v17 = *(BytesNoCopy + 1);
      *(*(this + 9) + 18552) += v18;
      *(*(this + 9) + 18556) += DWORD1(v18);
      *(&v18 + 1) = v14;
      *(*(this + 9) + 18560) += v14;
      *(*(this + 9) + 18564) += HIDWORD(v14);
      *(*(this + 9) + 18548) = 1;
      *(*(this + 9) + 18620) = v17;
      *(*(this + 9) + 18624) += v18;
      *(*(this + 9) + 18628) += DWORD1(v18);
      v19 = *(this + 9);
      if (*(v19 + 18632) > v16)
      {
        v16 = *(v19 + 18632);
      }

      *(v19 + 18632) = v16;
      v20 = *(this + 9);
      if (*(v20 + 18636) > v15)
      {
        v15 = *(v20 + 18636);
      }

      *(v20 + 18636) = v15;
      *(*(this + 9) + 18640) += v14;
      *(*(this + 9) + 18644) += HIDWORD(v14);
      v21 = *(this + 9);
      if (*(v21 + 18648) > v13)
      {
        v13 = *(v21 + 18648);
      }

      *(v21 + 18648) = v13;
      *(*(this + 9) + 18652) |= v12;
      *(*(this + 9) + 18654) |= v11;
      *(*(this + 9) + 18656) += v10;
      *(*(this + 9) + 18658) += v9;
      v39 = v18;
      *(*(this + 9) + 18660) += v8;
      v22 = *(this + 9);
      v23 = *(v22 + 18662);
      LOBYTE(v38) = 1;
      *(v22 + 18662) = v23 + v7;
      mach_continuous_time();
      absolutetime_to_nanoseconds();
      v40 = 1338014025;
      if (*(*(this + 9) + 18620))
      {
        snprintf(__str, 0x100uLL, "RC1 Coex Stats: Mode=%u, Request=%u RC1Duration=%uus RC1DutyCycle=%u RC1MaxDuration=%u WlanCritCnt=%u WlanCritDur=%u WlanCritMaxDur=%u WlanCritEvtBitmap=0x%x WlanCritMaxEvtType=%u DataStall=%u RC1DenyDS=%u RC1DenyDurDS=%u SucRR=%u [%llums]\n", *(*(this + 9) + 18620), *(*(this + 9) + 18624), *(*(this + 9) + 18628), *(*(this + 9) + 18632), *(*(this + 9) + 18636), *(*(this + 9) + 18640), *(*(this + 9) + 18644), *(*(this + 9) + 18648), *(*(this + 9) + 18652), *(*(this + 9) + 18654), *(*(this + 9) + 18656), *(*(this + 9) + 18658), *(*(this + 9) + 18660), *(*(this + 9) + 18662), 0xB2F4FC07949);
        v24 = *(this + 9);
        if ((*(v24 + 964) - 1) > 1)
        {
          v25 = (v24 + 33485);
          v26 = v54;
          v25[12] = v53;
          v25[13] = v26;
          v27 = v56;
          v25[14] = v55;
          v25[15] = v27;
          v28 = v50;
          v25[8] = v49;
          v25[9] = v28;
          v29 = v52;
          v25[10] = v51;
          v25[11] = v29;
          v30 = v46;
          v25[4] = v45;
          v25[5] = v30;
          v31 = v48;
          v25[6] = v47;
          v25[7] = v31;
          v32 = v42;
          *v25 = *__str;
          v25[1] = v32;
          v33 = v44;
          v25[2] = v43;
          v25[3] = v33;
        }

        else
        {
          io80211_os_log("LQM-WiFi: %s\n", __str);
        }
      }

      *(*(this + 9) + 18992) = mach_continuous_time();
      v34 = (*(this + 9) + 18616);
      *v34 = 0u;
      v34[1] = 0u;
      v34[2] = 0u;
      v35 = *(this + 9);
      v36 = *(v35 + 11288);
      if (v36 && *(v35 + 18548))
      {
        IO80211Controller::postMessage(this, v36, 0xA1u, &v38, 0x18uLL, 1);
      }
    }

    else
    {
      AppleBCMWLANCore::updateRC1CoexStatsReportV2(this, v6);
    }
  }

  else
  {
    AppleBCMWLANCore::updateRC1CoexStatsReportV2();
  }

  return 0;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV3(AppleBCMWLANCore *this, OSData *a2)
{
  v58 = -1431655766;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v75 = v4;
  v76 = v4;
  v73 = v4;
  v74 = v4;
  v71 = v4;
  v72 = v4;
  v69 = v4;
  v70 = v4;
  v67 = v4;
  v68 = v4;
  v65 = v4;
  v66 = v4;
  v63 = v4;
  v64 = v4;
  *__str = v4;
  v62 = v4;
  if (OSData::getLength(a2) == 72)
  {
    BytesNoCopy = OSData::getBytesNoCopy(a2);
    v6 = *(BytesNoCopy + 1);
    if (v6 == 72)
    {
      v7 = BytesNoCopy[70];
      v8 = BytesNoCopy[69];
      v9 = BytesNoCopy[68];
      v10 = BytesNoCopy[67];
      v11 = BytesNoCopy[66];
      v12 = *(BytesNoCopy + 32);
      v14 = *(BytesNoCopy + 14);
      v13 = *(BytesNoCopy + 15);
      v16 = *(BytesNoCopy + 12);
      v15 = *(BytesNoCopy + 13);
      v17 = *(BytesNoCopy + 23);
      v18 = *(BytesNoCopy + 22);
      v19 = *(BytesNoCopy + 21);
      v20 = *(BytesNoCopy + 20);
      v21 = *(BytesNoCopy + 19);
      v22 = *(BytesNoCopy + 18);
      v23 = *(BytesNoCopy + 8);
      v24 = *(BytesNoCopy + 3);
      v26 = *(BytesNoCopy + 4);
      v25 = *(BytesNoCopy + 5);
      *&v28 = *(BytesNoCopy + 1);
      v27 = *(BytesNoCopy + 1);
      *(*(this + 9) + 18552) += v28;
      *(*(this + 9) + 18556) += DWORD1(v28);
      *(&v28 + 1) = v24;
      *(*(this + 9) + 18560) += v24;
      *(*(this + 9) + 18564) += HIDWORD(v24);
      *(*(this + 9) + 18548) = 1;
      *(*(this + 9) + 18668) = v27;
      *(*(this + 9) + 18672) += v28;
      *(*(this + 9) + 18676) += DWORD1(v28);
      v29 = *(this + 9);
      if (*(v29 + 18680) > v26)
      {
        v26 = *(v29 + 18680);
      }

      *(v29 + 18680) = v26;
      v30 = *(this + 9);
      if (*(v30 + 18684) > v25)
      {
        v25 = *(v30 + 18684);
      }

      *(v30 + 18684) = v25;
      *(*(this + 9) + 18688) += v24;
      *(*(this + 9) + 18692) += HIDWORD(v24);
      v31 = *(this + 9);
      if (*(v31 + 18696) > v23)
      {
        v23 = *(v31 + 18696);
      }

      *(v31 + 18696) = v23;
      *(*(this + 9) + 18700) |= v22;
      *(*(this + 9) + 18702) |= v21;
      *(*(this + 9) + 18704) += v20;
      *(*(this + 9) + 18706) += v19;
      *(*(this + 9) + 18708) += v18;
      *(*(this + 9) + 18710) += v17;
      *(*(this + 9) + 18712) += v16;
      v59 = v28;
      *(*(this + 9) + 18716) += v15;
      v32 = *(this + 9);
      if (*(v32 + 18720) > v14)
      {
        v14 = *(v32 + 18720);
      }

      *(v32 + 18720) = v14;
      v33 = *(this + 9);
      if (*(v33 + 18724) > v13)
      {
        v13 = *(v33 + 18724);
      }

      *(v33 + 18724) = v13;
      LOBYTE(v58) = 1;
      *(*(this + 9) + 18728) += v12;
      *(*(this + 9) + 18730) = v11;
      *(*(this + 9) + 18731) = v10;
      *(*(this + 9) + 18732) = v9;
      *(*(this + 9) + 18733) = v8;
      *(*(this + 9) + 18734) = v7;
      mach_continuous_time();
      absolutetime_to_nanoseconds();
      v60 = 1338014025;
      if (*(*(this + 9) + 18668))
      {
        snprintf(__str, 0x100uLL, "RC1 Coex Stats3: Mode=%u, Request=%u RC1Duration=%uus RC1DutyCycle=%u RC1MaxDuration=%u WlanCritCnt=%u WlanCritDur=%u WlanCritMaxDur=%u,WlanCritEvtBitmap=0x%x WlanCritMaxEvtType=%u DataStall=%u RC1DenyDS=%u RC1DenyDurDS=%u SucRR=%u \n", *(*(this + 9) + 18668), *(*(this + 9) + 18672), *(*(this + 9) + 18676), *(*(this + 9) + 18680), *(*(this + 9) + 18684), *(*(this + 9) + 18688), *(*(this + 9) + 18692), *(*(this + 9) + 18696), *(*(this + 9) + 18700), *(*(this + 9) + 18702), *(*(this + 9) + 18704), *(*(this + 9) + 18706), *(*(this + 9) + 18708), *(*(this + 9) + 18710));
        v34 = *(this + 9);
        if ((*(v34 + 964) - 1) > 1)
        {
          v35 = (v34 + 33485);
          v36 = v74;
          v35[12] = v73;
          v35[13] = v36;
          v37 = v76;
          v35[14] = v75;
          v35[15] = v37;
          v38 = v70;
          v35[8] = v69;
          v35[9] = v38;
          v39 = v72;
          v35[10] = v71;
          v35[11] = v39;
          v40 = v66;
          v35[4] = v65;
          v35[5] = v40;
          v41 = v68;
          v35[6] = v67;
          v35[7] = v41;
          v42 = v62;
          *v35 = *__str;
          v35[1] = v42;
          v43 = v64;
          v35[2] = v63;
          v35[3] = v43;
        }

        else
        {
          io80211_os_log("LQM-WiFi: %s\n", __str);
        }

        snprintf(__str, 0x100uLL, "RC1 Coex Stats3: NewRequest=%u NewRC1Duration=%uus NewRC1DutyCycle=%u NewRC1MaxDuration=%u rc1_msg73_cnt=%u rc1_last_msg73_pl[0]=%u rc1_last_msg73_pl[1]=%u rc1_last_msg73_pl[2]=0x%x rc1_last_msg73_pl[3]=%u rc1_last_msg73_pl[4]=%u [%llums]\n", *(*(this + 9) + 18712), *(*(this + 9) + 18716), *(*(this + 9) + 18720), *(*(this + 9) + 18724), *(*(this + 9) + 18728), *(*(this + 9) + 18730), *(*(this + 9) + 18731), *(*(this + 9) + 18732), *(*(this + 9) + 18733), *(*(this + 9) + 18734), 0xB2F4FC07949);
        v44 = *(this + 9);
        if ((*(v44 + 964) - 1) > 1)
        {
          v45 = (v44 + 34253);
          v46 = v74;
          v45[12] = v73;
          v45[13] = v46;
          v47 = v76;
          v45[14] = v75;
          v45[15] = v47;
          v48 = v70;
          v45[8] = v69;
          v45[9] = v48;
          v49 = v72;
          v45[10] = v71;
          v45[11] = v49;
          v50 = v66;
          v45[4] = v65;
          v45[5] = v50;
          v51 = v68;
          v45[6] = v67;
          v45[7] = v51;
          v52 = v62;
          *v45 = *__str;
          v45[1] = v52;
          v53 = v64;
          v45[2] = v63;
          v45[3] = v53;
        }

        else
        {
          io80211_os_log("LQM-WiFi: %s\n", __str);
        }
      }

      *(*(this + 9) + 18992) = mach_continuous_time();
      v54 = *(this + 9);
      *(v54 + 18728) = 0;
      *(v54 + 18664) = 0u;
      *(v54 + 18680) = 0u;
      *(v54 + 18696) = 0u;
      *(v54 + 18712) = 0u;
      v55 = *(this + 9);
      v56 = *(v55 + 11288);
      if (v56 && *(v55 + 18548))
      {
        IO80211Controller::postMessage(this, v56, 0xA1u, &v58, 0x18uLL, 1);
      }
    }

    else
    {
      AppleBCMWLANCore::updateRC1CoexStatsReportV3(this, v6);
    }
  }

  else
  {
    AppleBCMWLANCore::updateRC1CoexStatsReportV3();
  }

  return 0;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV4(AppleBCMWLANCore *this, OSData *a2)
{
  v49 = -1431655766;
  if (OSData::getLength(a2) == 52)
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v66 = v4;
    v67 = v4;
    v64 = v4;
    v65 = v4;
    v62 = v4;
    v63 = v4;
    v60 = v4;
    v61 = v4;
    v58 = v4;
    v59 = v4;
    v56 = v4;
    v57 = v4;
    v54 = v4;
    v55 = v4;
    *__str = v4;
    v53 = v4;
    BytesNoCopy = OSData::getBytesNoCopy(a2);
    v6 = BytesNoCopy[1];
    if (v6 == 52)
    {
      v7 = BytesNoCopy[24];
      v8 = BytesNoCopy[23];
      v9 = BytesNoCopy[22];
      v10 = BytesNoCopy[21];
      v11 = BytesNoCopy[20];
      v12 = BytesNoCopy[19];
      v13 = BytesNoCopy[18];
      v14 = *(BytesNoCopy + 8);
      v15 = *(BytesNoCopy + 3);
      v16 = *(BytesNoCopy + 4);
      v17 = *(BytesNoCopy + 5);
      *&v19 = *(BytesNoCopy + 1);
      v18 = *(BytesNoCopy + 1);
      *(*(this + 9) + 18552) += v19;
      *(*(this + 9) + 18556) += DWORD1(v19);
      *(&v19 + 1) = v15;
      *(*(this + 9) + 18560) += v15;
      *(*(this + 9) + 18564) += HIDWORD(v15);
      *(*(this + 9) + 18548) = 1;
      *(*(this + 9) + 18740) = v18;
      *(*(this + 9) + 18744) += v19;
      *(*(this + 9) + 18748) += DWORD1(v19);
      v20 = *(this + 9);
      if (*(v20 + 18752) > v16)
      {
        v16 = *(v20 + 18752);
      }

      *(v20 + 18752) = v16;
      v21 = *(this + 9);
      if (*(v21 + 18756) > v17)
      {
        v17 = *(v21 + 18756);
      }

      *(v21 + 18756) = v17;
      *(*(this + 9) + 18760) += v15;
      *(*(this + 9) + 18764) += HIDWORD(v15);
      v22 = *(this + 9);
      if (*(v22 + 18768) > v14)
      {
        v14 = *(v22 + 18768);
      }

      *(v22 + 18768) = v14;
      *(*(this + 9) + 18772) |= v13;
      *(*(this + 9) + 18774) |= v12;
      *(*(this + 9) + 18776) += v11;
      *(*(this + 9) + 18778) += v10;
      *(*(this + 9) + 18780) += v9;
      v50 = v19;
      *(*(this + 9) + 18782) += v8;
      v23 = *(this + 9);
      v24 = *(v23 + 18784);
      LOBYTE(v49) = 1;
      *(v23 + 18784) = v24 + v7;
      mach_continuous_time();
      absolutetime_to_nanoseconds();
      v51 = 1338014025;
      if (*(*(this + 9) + 18740))
      {
        snprintf(__str, 0x100uLL, "RC1 Coex Stats4: Mode=%u, Request=%u RC1Duration=%uus RC1DutyCycle=%u RC1MaxDuration=%u WlanCritCnt=%u WlanCritDur=%u WlanCritMaxDur=%u WlanCritEvtBitmap=0x%x WlanCritMaxEvtType=%u DataStall=%u RC1DenyDS=%u RC1DenyDurDS=%u SucRR=%u\n", *(*(this + 9) + 18740), *(*(this + 9) + 18744), *(*(this + 9) + 18748), *(*(this + 9) + 18752), *(*(this + 9) + 18756), *(*(this + 9) + 18760), *(*(this + 9) + 18764), *(*(this + 9) + 18768), *(*(this + 9) + 18772), *(*(this + 9) + 18774), *(*(this + 9) + 18776), *(*(this + 9) + 18778), *(*(this + 9) + 18780), *(*(this + 9) + 18782));
        v25 = *(this + 9);
        if ((*(v25 + 964) - 1) > 1)
        {
          v26 = (v25 + 33485);
          v27 = v65;
          v26[12] = v64;
          v26[13] = v27;
          v28 = v67;
          v26[14] = v66;
          v26[15] = v28;
          v29 = v61;
          v26[8] = v60;
          v26[9] = v29;
          v30 = v63;
          v26[10] = v62;
          v26[11] = v30;
          v31 = v57;
          v26[4] = v56;
          v26[5] = v31;
          v32 = v59;
          v26[6] = v58;
          v26[7] = v32;
          v33 = v53;
          *v26 = *__str;
          v26[1] = v33;
          v34 = v55;
          v26[2] = v54;
          v26[3] = v34;
        }

        else
        {
          io80211_os_log("LQM-WiFi: %s\n", __str);
        }

        snprintf(__str, 0x100uLL, "RC1 Coex Stats4: StuckCnt=%u [%llums]\n", *(*(this + 9) + 18784), 0xB2F4FC07949);
        v35 = *(this + 9);
        if ((*(v35 + 964) - 1) > 1)
        {
          v36 = (v35 + 34253);
          v37 = v65;
          v36[12] = v64;
          v36[13] = v37;
          v38 = v67;
          v36[14] = v66;
          v36[15] = v38;
          v39 = v61;
          v36[8] = v60;
          v36[9] = v39;
          v40 = v63;
          v36[10] = v62;
          v36[11] = v40;
          v41 = v57;
          v36[4] = v56;
          v36[5] = v41;
          v42 = v59;
          v36[6] = v58;
          v36[7] = v42;
          v43 = v53;
          *v36 = *__str;
          v36[1] = v43;
          v44 = v55;
          v36[2] = v54;
          v36[3] = v44;
        }

        else
        {
          io80211_os_log("LQM-WiFi: %s\n", __str);
        }
      }

      *(*(this + 9) + 18992) = mach_continuous_time();
      v45 = *(this + 9);
      *(v45 + 18736) = 0u;
      *(v45 + 18752) = 0u;
      *(v45 + 18768) = 0u;
      *(v45 + 18784) = 0;
      v46 = *(this + 9);
      v47 = *(v46 + 11288);
      if (v47 && *(v46 + 18548))
      {
        IO80211Controller::postMessage(this, v47, 0xA1u, &v49, 0x18uLL, 1);
      }
    }

    else
    {
      AppleBCMWLANCore::updateRC1CoexStatsReportV4(this, v6);
    }
  }

  else
  {
    AppleBCMWLANCore::updateRC1CoexStatsReportV4();
  }

  return 0;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV5(AppleBCMWLANCore *this, OSData *a2)
{
  memset(v59, 170, sizeof(v59));
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v74 = v4;
  v75 = v4;
  v72 = v4;
  v73 = v4;
  v70 = v4;
  v71 = v4;
  v68 = v4;
  v69 = v4;
  v66 = v4;
  v67 = v4;
  v64 = v4;
  v65 = v4;
  v62 = v4;
  v63 = v4;
  *__str = v4;
  v61 = v4;
  if (OSData::getLength(a2) == 76)
  {
    BytesNoCopy = OSData::getBytesNoCopy(a2);
    v6 = BytesNoCopy[1];
    if (v6 == 76)
    {
      v7 = BytesNoCopy[36];
      v8 = *(BytesNoCopy + 70);
      v9 = *(BytesNoCopy + 69);
      v10 = *(BytesNoCopy + 68);
      v11 = *(BytesNoCopy + 67);
      v12 = *(BytesNoCopy + 66);
      v13 = BytesNoCopy[32];
      v15 = *(BytesNoCopy + 14);
      v14 = *(BytesNoCopy + 15);
      v16 = *(BytesNoCopy + 12);
      v17 = *(BytesNoCopy + 13);
      v18 = BytesNoCopy[23];
      v19 = BytesNoCopy[22];
      v20 = BytesNoCopy[21];
      v21 = BytesNoCopy[20];
      v22 = BytesNoCopy[19];
      v23 = BytesNoCopy[18];
      v24 = *(BytesNoCopy + 8);
      v25 = *(BytesNoCopy + 3);
      v27 = *(BytesNoCopy + 4);
      v26 = *(BytesNoCopy + 5);
      *&v29 = *(BytesNoCopy + 1);
      v28 = *(BytesNoCopy + 1);
      *(*(this + 9) + 18552) += v29;
      *(*(this + 9) + 18556) += DWORD1(v29);
      *(&v29 + 1) = v25;
      *(*(this + 9) + 18560) += v25;
      *(*(this + 9) + 18564) += HIDWORD(v25);
      *(*(this + 9) + 18548) = 1;
      *(*(this + 9) + 18792) = v28;
      *(*(this + 9) + 18796) += v29;
      *(*(this + 9) + 18800) += DWORD1(v29);
      v30 = *(this + 9);
      if (*(v30 + 18804) > v27)
      {
        v27 = *(v30 + 18804);
      }

      *(v30 + 18804) = v27;
      v31 = *(this + 9);
      if (*(v31 + 18808) > v26)
      {
        v26 = *(v31 + 18808);
      }

      *(v31 + 18808) = v26;
      *(*(this + 9) + 18812) += v25;
      *(*(this + 9) + 18816) += HIDWORD(v25);
      v32 = *(this + 9);
      if (*(v32 + 18820) > v24)
      {
        v24 = *(v32 + 18820);
      }

      *(v32 + 18820) = v24;
      *(*(this + 9) + 18824) |= v23;
      *(*(this + 9) + 18826) |= v22;
      *(*(this + 9) + 18828) += v21;
      *(*(this + 9) + 18830) += v20;
      *(*(this + 9) + 18832) += v19;
      *(*(this + 9) + 18834) += v18;
      *(*(this + 9) + 18860) += v7;
      *(*(this + 9) + 18836) += v16;
      *&v59[4] = v29;
      *(*(this + 9) + 18840) += v17;
      v33 = *(this + 9);
      if (*(v33 + 18844) > v15)
      {
        v15 = *(v33 + 18844);
      }

      *(v33 + 18844) = v15;
      v34 = *(this + 9);
      if (*(v34 + 18848) > v14)
      {
        v14 = *(v34 + 18848);
      }

      *(v34 + 18848) = v14;
      v59[0] = 1;
      *(*(this + 9) + 18852) += v13;
      *(*(this + 9) + 18854) = v12;
      *(*(this + 9) + 18855) = v11;
      *(*(this + 9) + 18856) = v10;
      *(*(this + 9) + 18857) = v9;
      *(*(this + 9) + 18858) = v8;
      mach_continuous_time();
      absolutetime_to_nanoseconds();
      *&v59[20] = 1338014025;
      if (*(*(this + 9) + 18792))
      {
        snprintf(__str, 0x100uLL, "RC1 Coex Stats5: Mode=%u, Request=%u RC1Duration=%uus RC1DutyCycle=%u RC1MaxDuration=%u WlanCritCnt=%u WlanCritDur=%u WlanCritMaxDur=%u,WlanCritEvtBitmap=0x%x WlanCritMaxEvtType=%u DataStall=%u RC1DenyDS=%u RC1DenyDurDS=%u SucRR=%u\n", *(*(this + 9) + 18792), *(*(this + 9) + 18796), *(*(this + 9) + 18800), *(*(this + 9) + 18804), *(*(this + 9) + 18808), *(*(this + 9) + 18812), *(*(this + 9) + 18816), *(*(this + 9) + 18820), *(*(this + 9) + 18824), *(*(this + 9) + 18826), *(*(this + 9) + 18828), *(*(this + 9) + 18830), *(*(this + 9) + 18832), *(*(this + 9) + 18834));
        v35 = *(this + 9);
        if ((*(v35 + 964) - 1) > 1)
        {
          v36 = (v35 + 33485);
          v37 = v73;
          v36[12] = v72;
          v36[13] = v37;
          v38 = v75;
          v36[14] = v74;
          v36[15] = v38;
          v39 = v69;
          v36[8] = v68;
          v36[9] = v39;
          v40 = v71;
          v36[10] = v70;
          v36[11] = v40;
          v41 = v65;
          v36[4] = v64;
          v36[5] = v41;
          v42 = v67;
          v36[6] = v66;
          v36[7] = v42;
          v43 = v61;
          *v36 = *__str;
          v36[1] = v43;
          v44 = v63;
          v36[2] = v62;
          v36[3] = v44;
        }

        else
        {
          io80211_os_log("LQM-WiFi: %s\n", __str);
        }

        snprintf(__str, 0x100uLL, "RC1 Coex Stats5: NewRequest=%u NewRC1Duration=%uus NewRC1DutyCycle=%u NewRC1MaxDuration=%u rc1_msg73_cnt=%u rc1_last_msg73_pl[0]=%u rc1_last_msg73_pl[1]=%u rc1_last_msg73_pl[2]=0x%x rc1_last_msg73_pl[3]=%u rc1_last_msg73_pl[4]=%u StuckCnt=%u [%llums]\n", *(*(this + 9) + 18836), *(*(this + 9) + 18840), *(*(this + 9) + 18844), *(*(this + 9) + 18848), *(*(this + 9) + 18852), *(*(this + 9) + 18854), *(*(this + 9) + 18855), *(*(this + 9) + 18856), *(*(this + 9) + 18857), *(*(this + 9) + 18858), *(*(this + 9) + 18860), 0xB2F4FC07949);
        v45 = *(this + 9);
        if ((*(v45 + 964) - 1) > 1)
        {
          v46 = (v45 + 34253);
          v47 = v73;
          v46[12] = v72;
          v46[13] = v47;
          v48 = v75;
          v46[14] = v74;
          v46[15] = v48;
          v49 = v69;
          v46[8] = v68;
          v46[9] = v49;
          v50 = v71;
          v46[10] = v70;
          v46[11] = v50;
          v51 = v65;
          v46[4] = v64;
          v46[5] = v51;
          v52 = v67;
          v46[6] = v66;
          v46[7] = v52;
          v53 = v61;
          *v46 = *__str;
          v46[1] = v53;
          v54 = v63;
          v46[2] = v62;
          v46[3] = v54;
        }

        else
        {
          io80211_os_log("LQM-WiFi: %s\n", __str);
        }
      }

      *(*(this + 9) + 18992) = mach_continuous_time();
      v55 = *(this + 9);
      v55[1178] = 0u;
      *(v55 + 18788) = 0u;
      *(v55 + 18804) = 0u;
      *(v55 + 18820) = 0u;
      *(v55 + 18836) = 0u;
      v56 = *(this + 9);
      v57 = *(v56 + 11288);
      if (v57 && *(v56 + 18548))
      {
        IO80211Controller::postMessage(this, v57, 0xA1u, v59, 0x18uLL, 1);
      }
    }

    else
    {
      AppleBCMWLANCore::updateRC1CoexStatsReportV5(this, v6);
    }
  }

  else
  {
    AppleBCMWLANCore::updateRC1CoexStatsReportV5();
  }

  return 0;
}

uint64_t AppleBCMWLANCore::sendRC1CoexStatsEventCoreAnalytics(IOService *this)
{
  v2 = OSString::withCString("com.apple.wifi.RC1CoexStats");
  if (!v2)
  {
    return AppleBCMWLANCore::sendRC1CoexStatsEventCoreAnalytics();
  }

  v3 = v2;
  v4 = OSDictionary::withCapacity(4u);
  if (v4)
  {
    v5 = OSString::withCString("RC1Request");
    if (v5)
    {
      v6 = v5;
      v7 = OSNumber::withNumber(LODWORD(this[1].OSObject::OSObjectInterface::__vftable[1159].free), 0x20uLL);
      if (v7)
      {
        OSDictionary::setObject(v4, v6, v7);
        v8 = OSString::withCString("RC1Duration");
        if (v8)
        {
          v9 = v8;
          v10 = OSNumber::withNumber(HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[1159].free), 0x20uLL);
          if (v10)
          {
            v11 = v10;
            OSDictionary::setObject(v4, v9, v10);
            v12 = OSString::withCString("WLANCritCnt");
            if (v12)
            {
              v13 = v12;
              v14 = OSNumber::withNumber(LODWORD(this[1].OSObject::OSObjectInterface::__vftable[1160].init), 0x20uLL);
              if (v14)
              {
                v15 = v14;
                OSDictionary::setObject(v4, v13, v14);
                aKey = OSString::withCString("WLANCritDuraton");
                if (aKey)
                {
                  v16 = OSNumber::withNumber(HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[1160].init), 0x20uLL);
                  if (v16)
                  {
                    v17 = v16;
                    v28 = v11;
                    v18 = v9;
                    v19 = v7;
                    v20 = v6;
                    OSDictionary::setObject(v4, aKey, v16);
                    v21 = v3;
                    v22 = IOService::CoreAnalyticsSendEvent(this, 0, v3, v4, 0);
                    if (v22 && (v23 = v22, (this->OSObject::OSMetaClassBase::__vftable[34].free)(this)) && ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this), CCLogStream::shouldLog()))
                    {
                      v27 = v23;
                      v3 = v21;
                      AppleBCMWLANCore::sendRC1CoexStatsEventCoreAnalytics(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v21, v27);
                    }

                    else
                    {
                      v3 = v21;
                    }

                    v6 = v20;
                    v7 = v19;
                    v9 = v18;
                    v11 = v28;
                  }

                  else
                  {
                    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                    {
                      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANCore::sendRC1CoexStatsEventCoreAnalytics();
                      }
                    }

                    v17 = 0;
                  }

                  v24 = aKey;
                  goto LABEL_17;
                }

                if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                {
                  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::sendRC1CoexStatsEventCoreAnalytics();
                  }
                }

                v24 = 0;
LABEL_59:
                v17 = 0;
LABEL_17:
                (v6->release)(v6);
                if (v7)
                {
                  (v7->release)(v7);
                }

                if (v9)
                {
                  (v9->release)(v9);
                }

                if (v11)
                {
                  (v11->release)(v11);
                }

                if (v13)
                {
                  (v13->release)(v13);
                }

                if (v15)
                {
                  (v15->release)(v15);
                }

                if (v24)
                {
                  (v24->release)(v24);
                }

                if (v17)
                {
                  (v17->release)(v17);
                }

                goto LABEL_31;
              }

              if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
              {
                (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::sendRC1CoexStatsEventCoreAnalytics();
                }
              }
            }

            else
            {
              if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
              {
                (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::sendRC1CoexStatsEventCoreAnalytics();
                }
              }

              v13 = 0;
            }

            v24 = 0;
LABEL_58:
            v15 = 0;
            goto LABEL_59;
          }

          if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
          {
            (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::sendRC1CoexStatsEventCoreAnalytics();
            }
          }

LABEL_49:
          v13 = 0;
          v24 = 0;
          v11 = 0;
          goto LABEL_58;
        }

        if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
        {
          (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::sendRC1CoexStatsEventCoreAnalytics();
          }
        }
      }

      else if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::sendRC1CoexStatsEventCoreAnalytics();
        }
      }

      v9 = 0;
      goto LABEL_49;
    }

    AppleBCMWLANCore::sendRC1CoexStatsEventCoreAnalytics();
  }

  else
  {
    AppleBCMWLANCore::sendRC1CoexStatsEventCoreAnalytics();
  }

LABEL_31:
  result = (v3->release)(v3);
  if (v4)
  {
    release = v4->release;

    return (release)(v4);
  }

  return result;
}

void *AppleBCMWLANCore::updateTxDCSlice0Ant0Report(void *this)
{
  v1 = this[9];
  v2 = *(v1 + 6288);
  if (v2 > 0xA)
  {
    if (v2 > 0x14)
    {
      if (v2 > 0x1E)
      {
        if (v2 > 0x28)
        {
          if (v2 > 0x32)
          {
            if (v2 > 0x3C)
            {
              if (v2 > 0x46)
              {
                if (v2 > 0x50)
                {
                  if (v2 > 0x5A)
                  {
                    if (v2 > 0x64)
                    {
                      v3 = this;
                      this = (*(*this + 1952))(this);
                      if (this)
                      {
                        (*(*v3 + 1952))(v3);
                        this = CCLogStream::shouldLog();
                        if (this)
                        {
                          return AppleBCMWLANCore::updateTxDCSlice0Ant0Report();
                        }
                      }
                    }

                    else
                    {
                      ++*(v1 + 6376);
                    }
                  }

                  else
                  {
                    ++*(v1 + 6368);
                  }
                }

                else
                {
                  ++*(v1 + 6360);
                }
              }

              else
              {
                ++*(v1 + 6352);
              }
            }

            else
            {
              ++*(v1 + 6344);
            }
          }

          else
          {
            ++*(v1 + 6336);
          }
        }

        else
        {
          ++*(v1 + 6328);
        }
      }

      else
      {
        ++*(v1 + 6320);
      }
    }

    else
    {
      ++*(v1 + 6312);
    }
  }

  else
  {
    ++*(v1 + 6304);
  }

  return this;
}

void *AppleBCMWLANCore::updateTxDCSlice1Ant0Report(void *this)
{
  v1 = this[9];
  v2 = *(v1 + 6292);
  if (v2 > 0xA)
  {
    if (v2 > 0x14)
    {
      if (v2 > 0x1E)
      {
        if (v2 > 0x28)
        {
          if (v2 > 0x32)
          {
            if (v2 > 0x3C)
            {
              if (v2 > 0x46)
              {
                if (v2 > 0x50)
                {
                  if (v2 > 0x5A)
                  {
                    if (v2 > 0x64)
                    {
                      v3 = this;
                      this = (*(*this + 1952))(this);
                      if (this)
                      {
                        (*(*v3 + 1952))(v3);
                        this = CCLogStream::shouldLog();
                        if (this)
                        {
                          return AppleBCMWLANCore::updateTxDCSlice1Ant0Report();
                        }
                      }
                    }

                    else
                    {
                      ++*(v1 + 6464);
                    }
                  }

                  else
                  {
                    ++*(v1 + 6456);
                  }
                }

                else
                {
                  ++*(v1 + 6448);
                }
              }

              else
              {
                ++*(v1 + 6440);
              }
            }

            else
            {
              ++*(v1 + 6432);
            }
          }

          else
          {
            ++*(v1 + 6424);
          }
        }

        else
        {
          ++*(v1 + 6416);
        }
      }

      else
      {
        ++*(v1 + 6408);
      }
    }

    else
    {
      ++*(v1 + 6400);
    }
  }

  else
  {
    ++*(v1 + 6392);
  }

  return this;
}

AppleBCMWLANCore *AppleBCMWLANCore::handleTxDCPerAntAsyncCallback(AppleBCMWLANCore *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = result;
  if (a3)
  {
    result = (*(*result + 1952))(result, a2);
    if (result)
    {
      (*(*v4 + 1952))(v4);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
      }
    }

    return result;
  }

  v5 = *a4;
  if (*a4)
  {
    if (*v5 == 3)
    {
      v7 = (v5 + 8);
      v6 = *(v5 + 8);
      v8 = v6 == 4 || v6 == 2;
      if (!v8 || *(v5 + 35) != 2 || *(v5 + 36) >= 9u)
      {
        result = (*(*result + 1952))(result, a2);
        if (result)
        {
          (*(*v4 + 1952))(v4);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
          }
        }

        return result;
      }

      if (v6 != 4)
      {
        if (v6 == 2)
        {
          v9 = *(v5 + 38);
          if (v9 + 24 * *(v5 + 32) > *(v5 + 10))
          {
            result = (*(*result + 1952))(result, a2);
            if (result)
            {
              (*(*v4 + 1952))(v4);
              result = CCLogStream::shouldLog();
              if (result)
              {
                return AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
              }
            }

            return result;
          }

          v12 = 0;
          v11 = v7 + v9;
        }

        else
        {
          result = (*(*result + 1952))(result, a2);
          if (result)
          {
            (*(*v4 + 1952))(v4);
            result = CCLogStream::shouldLog();
            if (result)
            {
              result = AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
            }
          }

          v11 = 0;
          v12 = 0;
        }

        goto LABEL_40;
      }

      v10 = *(v5 + 38);
      if (v10 + 16 * *(v5 + 32) <= *(v5 + 10))
      {
        v11 = 0;
        v12 = v7 + v10;
LABEL_40:
        if (*(v5 + 12))
        {
          if (*(v5 + 35))
          {
            v13 = 0;
            do
            {
              result = (*(*v4 + 1952))(v4);
              if (result)
              {
                (*(*v4 + 1952))(v4);
                result = CCLogStream::shouldLog();
                if (result)
                {
                  result = AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
                }
              }

              v14 = *(v5 + 32);
              if (*(v5 + 32))
              {
                v15 = 0;
                do
                {
                  v16 = v15 + v13 * v14;
                  v17 = *v7;
                  if (v17 == 4)
                  {
                    v20 = *(v5 + 12);
                    if (v13)
                    {
                      if (v15 == 2)
                      {
                        if (v20)
                        {
                          v28 = 100 * *&v12[8 * v16] / v20;
                        }

                        else
                        {
                          LOBYTE(v28) = 0;
                        }

                        *(*(v4 + 9) + 6294) = v28;
                        result = (*(*v4 + 1952))(v4);
                        if (result)
                        {
                          (*(*v4 + 1952))(v4);
                          result = CCLogStream::shouldLog();
                          if (result)
                          {
                            result = AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
                          }
                        }
                      }

                      else if (v15 == 1)
                      {
                        if (v20)
                        {
                          v25 = 100 * *&v12[8 * v16] / v20;
                        }

                        else
                        {
                          LOBYTE(v25) = 0;
                        }

                        *(*(v4 + 9) + 6293) = v25;
                        result = (*(*v4 + 1952))(v4);
                        if (result)
                        {
                          (*(*v4 + 1952))(v4);
                          result = CCLogStream::shouldLog();
                          if (result)
                          {
                            result = AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
                          }
                        }
                      }

                      else if (v15)
                      {
                        if (v20)
                        {
                          v29 = 100 * *&v12[8 * v16] / v20;
                        }

                        else
                        {
                          LOBYTE(v29) = 0;
                        }

                        *(*(v4 + 9) + 6295) = v29;
                        result = (*(*v4 + 1952))(v4);
                        if (result)
                        {
                          (*(*v4 + 1952))(v4);
                          result = CCLogStream::shouldLog();
                          if (result)
                          {
                            result = AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
                          }
                        }
                      }

                      else
                      {
                        if (v20)
                        {
                          v21 = 100 * *&v12[8 * v16] / v20;
                        }

                        else
                        {
                          LOBYTE(v21) = 0;
                        }

                        *(*(v4 + 9) + 6292) = v21;
                        result = (*(*v4 + 1952))(v4);
                        if (result)
                        {
                          (*(*v4 + 1952))(v4);
                          result = CCLogStream::shouldLog();
                          if (result)
                          {
                            result = AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
                          }
                        }
                      }
                    }

                    else if (v15 == 2)
                    {
                      if (v20)
                      {
                        v34 = 100 * *&v12[8 * v16] / v20;
                      }

                      else
                      {
                        LOBYTE(v34) = 0;
                      }

                      *(*(v4 + 9) + 6290) = v34;
                      result = (*(*v4 + 1952))(v4);
                      if (result)
                      {
                        (*(*v4 + 1952))(v4);
                        result = CCLogStream::shouldLog();
                        if (result)
                        {
                          result = AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
                        }
                      }
                    }

                    else if (v15 == 1)
                    {
                      if (v20)
                      {
                        v31 = 100 * *&v12[8 * v16] / v20;
                      }

                      else
                      {
                        LOBYTE(v31) = 0;
                      }

                      *(*(v4 + 9) + 6289) = v31;
                      result = (*(*v4 + 1952))(v4);
                      if (result)
                      {
                        (*(*v4 + 1952))(v4);
                        result = CCLogStream::shouldLog();
                        if (result)
                        {
                          result = AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
                        }
                      }
                    }

                    else if (v15)
                    {
                      if (v20)
                      {
                        v35 = 100 * *&v12[8 * v16] / v20;
                      }

                      else
                      {
                        LOBYTE(v35) = 0;
                      }

                      *(*(v4 + 9) + 6291) = v35;
                      result = (*(*v4 + 1952))(v4);
                      if (result)
                      {
                        (*(*v4 + 1952))(v4);
                        result = CCLogStream::shouldLog();
                        if (result)
                        {
                          result = AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
                        }
                      }
                    }

                    else
                    {
                      if (v20)
                      {
                        v23 = 100 * *&v12[8 * v16] / v20;
                      }

                      else
                      {
                        LOBYTE(v23) = 0;
                      }

                      *(*(v4 + 9) + 6288) = v23;
                      result = (*(*v4 + 1952))(v4);
                      if (result)
                      {
                        (*(*v4 + 1952))(v4);
                        result = CCLogStream::shouldLog();
                        if (result)
                        {
                          result = AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
                        }
                      }
                    }
                  }

                  else if (v17 == 2)
                  {
                    v18 = *(v5 + 12);
                    if (v13)
                    {
                      if (v15 == 2)
                      {
                        if (v18)
                        {
                          v26 = 100 * *&v11[12 * v16 + 8] / v18;
                        }

                        else
                        {
                          LOBYTE(v26) = 0;
                        }

                        *(*(v4 + 9) + 6294) = v26;
                        result = (*(*v4 + 1952))(v4);
                        if (result)
                        {
                          (*(*v4 + 1952))(v4);
                          result = CCLogStream::shouldLog();
                          if (result)
                          {
                            result = AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
                          }
                        }
                      }

                      else if (v15 == 1)
                      {
                        if (v18)
                        {
                          v24 = 100 * *&v11[12 * v16 + 8] / v18;
                        }

                        else
                        {
                          LOBYTE(v24) = 0;
                        }

                        *(*(v4 + 9) + 6293) = v24;
                        result = (*(*v4 + 1952))(v4);
                        if (result)
                        {
                          (*(*v4 + 1952))(v4);
                          result = CCLogStream::shouldLog();
                          if (result)
                          {
                            result = AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
                          }
                        }
                      }

                      else if (v15)
                      {
                        if (v18)
                        {
                          v27 = 100 * *&v11[12 * v16 + 8] / v18;
                        }

                        else
                        {
                          LOBYTE(v27) = 0;
                        }

                        *(*(v4 + 9) + 6295) = v27;
                        result = (*(*v4 + 1952))(v4);
                        if (result)
                        {
                          (*(*v4 + 1952))(v4);
                          result = CCLogStream::shouldLog();
                          if (result)
                          {
                            result = AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
                          }
                        }
                      }

                      else
                      {
                        if (v18)
                        {
                          v19 = 100 * *&v11[12 * v16 + 8] / v18;
                        }

                        else
                        {
                          LOBYTE(v19) = 0;
                        }

                        *(*(v4 + 9) + 6292) = v19;
                        result = (*(*v4 + 1952))(v4);
                        if (result)
                        {
                          (*(*v4 + 1952))(v4);
                          result = CCLogStream::shouldLog();
                          if (result)
                          {
                            result = AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
                          }
                        }
                      }
                    }

                    else if (v15 == 2)
                    {
                      if (v18)
                      {
                        v32 = 100 * *&v11[12 * v16 + 8] / v18;
                      }

                      else
                      {
                        LOBYTE(v32) = 0;
                      }

                      *(*(v4 + 9) + 6290) = v32;
                      result = (*(*v4 + 1952))(v4);
                      if (result)
                      {
                        (*(*v4 + 1952))(v4);
                        result = CCLogStream::shouldLog();
                        if (result)
                        {
                          result = AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
                        }
                      }
                    }

                    else if (v15 == 1)
                    {
                      if (v18)
                      {
                        v30 = 100 * *&v11[12 * v16 + 8] / v18;
                      }

                      else
                      {
                        LOBYTE(v30) = 0;
                      }

                      *(*(v4 + 9) + 6289) = v30;
                      result = (*(*v4 + 1952))(v4);
                      if (result)
                      {
                        (*(*v4 + 1952))(v4);
                        result = CCLogStream::shouldLog();
                        if (result)
                        {
                          result = AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
                        }
                      }
                    }

                    else if (v15)
                    {
                      if (v18)
                      {
                        v33 = 100 * *&v11[12 * v16 + 8] / v18;
                      }

                      else
                      {
                        LOBYTE(v33) = 0;
                      }

                      *(*(v4 + 9) + 6291) = v33;
                      result = (*(*v4 + 1952))(v4);
                      if (result)
                      {
                        (*(*v4 + 1952))(v4);
                        result = CCLogStream::shouldLog();
                        if (result)
                        {
                          result = AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
                        }
                      }
                    }

                    else
                    {
                      if (v18)
                      {
                        v22 = 100 * *&v11[12 * v16 + 8] / v18;
                      }

                      else
                      {
                        LOBYTE(v22) = 0;
                      }

                      *(*(v4 + 9) + 6288) = v22;
                      result = (*(*v4 + 1952))(v4);
                      if (result)
                      {
                        (*(*v4 + 1952))(v4);
                        result = CCLogStream::shouldLog();
                        if (result)
                        {
                          result = AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
                        }
                      }
                    }
                  }

                  else
                  {
                    result = (*(*v4 + 1952))(v4);
                    if (result)
                    {
                      (*(*v4 + 1952))(v4);
                      result = CCLogStream::shouldLog();
                      if (result)
                      {
                        result = AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
                      }
                    }
                  }

                  ++v15;
                  v14 = *(v5 + 32);
                }

                while (v15 < v14);
              }

              ++v13;
            }

            while (v13 < *(v5 + 35));
          }

          v36 = *(v4 + 9);
          v37 = *(v36 + 5504);
          if (v37)
          {
            if (AppleBCMWLANCore::checkNonZeroTxDCValue(v4))
            {
              AppleBCMWLANIOReportingCore::reportTxDC(v37, v36 + 6288);
              v38 = *(v4 + 9);
              if (*(v38 + 6288) || *(v38 + 6289) || *(v38 + 6290) || *(v38 + 6291))
              {
                AppleBCMWLANCore::updateTxDCSlice0Ant0Report(v4);
                v38 = *(v4 + 9);
                if (!*(v38 + 6296))
                {
                  *(v38 + 6296) = 1;
                  v38 = *(v4 + 9);
                }
              }

              if (*(v38 + 6292) || *(v38 + 6293) || *(v38 + 6294) || *(v38 + 6295))
              {
                AppleBCMWLANCore::updateTxDCSlice1Ant0Report(v4);
                v38 = *(v4 + 9);
                if (!*(v38 + 6384))
                {
                  *(v38 + 6384) = 1;
                  v38 = *(v4 + 9);
                }
              }

              *(v38 + 6288) = 0;
              v36 = *(v4 + 9);
            }

            result = *(v36 + 6256);
            if (result)
            {
              v39 = *(*result + 56);

              return v39();
            }
          }
        }

        return result;
      }

      result = (*(*result + 1952))(result, a2);
      if (result)
      {
        (*(*v4 + 1952))(v4);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
        }
      }
    }

    else
    {
      result = (*(*result + 1952))(result, a2);
      if (result)
      {
        (*(*v4 + 1952))(v4);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
        }
      }
    }
  }

  else
  {
    result = (*(*result + 1952))(result, a2);
    if (result)
    {
      (*(*v4 + 1952))(v4);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleTxDCPerAntAsyncCallback();
      }
    }
  }

  return result;
}

AppleBCMWLANIOReporting *AppleBCMWLANCore::parseEventLogRecordBTCoexStatsPerSlice(AppleBCMWLANCore *this, OSData *a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    AppleBCMWLANCore::parseEventLogRecordBTCoexStatsPerSlice();
    return v7;
  }

  if (AppleBCMWLANCore::parseEventLogRecordBTCoexStats(this, a2))
  {
    AppleBCMWLANCore::parseEventLogRecordBTCoexStatsPerSlice();
    return v7;
  }

  result = *(*(this + 9) + 5512);
  if (result)
  {
    result = AppleBCMWLANIOReportingPerSlice::reportExtraBTCoex(result, a2, a3);
    if (result)
    {
      AppleBCMWLANCore::parseEventLogRecordBTCoexStatsPerSlice();
      return v7;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStats(IO80211Controller *this, OSData *a2)
{
  v4 = *OSData::getBytesNoCopy(a2);
  if (v4 > 6)
  {
    if (v4 > 10)
    {
      if (v4 == 11)
      {
        if (OSData::getLength(a2) != 88)
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::parseEventLogRecordBTCoexStats();
            }
          }

          return 3758097084;
        }

        return AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV11(this, a2);
      }

      else
      {
        if (v4 != 12)
        {
          goto LABEL_44;
        }

        if (OSData::getLength(a2) != 112)
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::parseEventLogRecordBTCoexStats();
            }
          }

          return 3758097084;
        }

        return AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12(this, a2);
      }
    }

    else if (v4 == 7)
    {
      if (OSData::getLength(a2) != 72)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseEventLogRecordBTCoexStats();
          }
        }

        return 3758097084;
      }

      return AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV7(this, a2);
    }

    else
    {
      if (v4 != 9)
      {
        goto LABEL_44;
      }

      if (OSData::getLength(a2) != 76)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseEventLogRecordBTCoexStats();
          }
        }

        return 3758097084;
      }

      return AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV9(this, a2);
    }
  }

  else if (v4 > 3)
  {
    if (v4 == 4)
    {
      if (OSData::getLength(a2) != 92)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseEventLogRecordBTCoexStats();
          }
        }

        return 3758097084;
      }

      return AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV4(this, a2);
    }

    else
    {
      if (v4 != 6)
      {
        goto LABEL_44;
      }

      if (OSData::getLength(a2) != 60)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseEventLogRecordBTCoexStats();
          }
        }

        return 3758097084;
      }

      return AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV6(this, a2);
    }
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        if (OSData::getLength(a2) == 60)
        {

          return AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV3(this, a2);
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseEventLogRecordBTCoexStats();
          }
        }

        return 3758097084;
      }

LABEL_44:
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parseEventLogRecordBTCoexStats();
        }
      }

      return 3758097084;
    }

    if (OSData::getLength(a2) != 36)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parseEventLogRecordBTCoexStats();
        }
      }

      return 3758097084;
    }

    return AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV2(this, a2);
  }
}

uint64_t AppleBCMWLANCore::parseEventLogRecordChannelSwitch(AppleBCMWLANCore *this, OSData *a2)
{
  v27 = 0;
  v26 = 0u;
  memset(v25, 0, sizeof(v25));
  Length = OSData::getLength(a2);
  if (Length == 28 || Length == 24)
  {
    BytesNoCopy = OSData::getBytesNoCopy(a2);
    v28 = AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice(*(*(this + 9) + 5512), a2, BytesNoCopy[5]);
    v13 = *(*(this + 9) + 17744);
    CounterValueSafe = AppleBCMWLANUtil::getCounterValueSafe(&v28, 4uLL, a2, 4uLL);
    AppleBCMWLANChanSpec::getAppleChannelSpec(v13, CounterValueSafe);
    ChanSpecConvToApple80211Channel();
    v15 = *(*(this + 9) + 17744);
    v16 = AppleBCMWLANUtil::getCounterValueSafe(&v28, 4uLL, a2, 8uLL);
    AppleBCMWLANChanSpec::getAppleChannelSpec(v15, v16);
    ChanSpecConvToApple80211Channel();
    *&v25[0] = AppleBCMWLANUtil::getCounterValueSafe(&v28, 4uLL, a2, 0);
    *(&v26 + 1) = AppleBCMWLANUtil::getCounterValueSafe(&v28, 4uLL, a2, 0x10uLL);
    v17 = AppleBCMWLANUtil::getCounterValueSafe(&v28, 4uLL, a2, 0xCuLL);
    if (OSData::getLength(a2) == 28)
    {
      v27 = AppleBCMWLANUtil::getCounterValueSafe(&v28, 4uLL, a2, 0x18uLL);
    }

    goto LABEL_15;
  }

  if (Length == 20)
  {
    v5 = OSData::getBytesNoCopy(a2);
    IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(this, 46);
    v7 = *(this + 9);
    if (IsBitSet)
    {
      AppleChannelSpec = AppleBCMWLANChanSpec::getAppleChannelSpec(*(v7 + 17744), v5[4]);
      v9 = *(*(this + 9) + 5512);
      if ((AppleChannelSpec & 0xC000) == 0)
      {
        v10 = a2;
        v11 = 1;
LABEL_14:
        v28 = AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV1PerSlice(v9, v10, v11);
        v19 = *(*(this + 9) + 17744);
        v20 = AppleBCMWLANUtil::getCounterValueSafe(&v28, 4uLL, a2, 4uLL);
        AppleBCMWLANChanSpec::getAppleChannelSpec(v19, v20);
        ChanSpecConvToApple80211Channel();
        v21 = *(*(this + 9) + 17744);
        v22 = AppleBCMWLANUtil::getCounterValueSafe(&v28, 4uLL, a2, 8uLL);
        AppleBCMWLANChanSpec::getAppleChannelSpec(v21, v22);
        ChanSpecConvToApple80211Channel();
        *&v25[0] = AppleBCMWLANUtil::getCounterValueSafe(&v28, 4uLL, a2, 0);
        *(&v26 + 1) = AppleBCMWLANUtil::getCounterValueSafe(&v28, 4uLL, a2, 0x10uLL);
        v17 = AppleBCMWLANUtil::getCounterValueSafe(&v28, 4uLL, a2, 0xCuLL);
LABEL_15:
        v18 = v28;
        if (!v28)
        {
          if (v17 - 1 > 0x1E)
          {
            v23 = 0;
          }

          else
          {
            v23 = dword_1003B0578[v17 - 1];
          }

          LODWORD(v26) = v23;
          IO80211Controller::postMessage(this, *(*(this + 9) + 11288), 0x99u, v25, 0x38uLL, 1);
          return v28;
        }

        return v18;
      }
    }

    else
    {
      v9 = *(v7 + 5512);
    }

    v10 = a2;
    v11 = 0;
    goto LABEL_14;
  }

  v18 = 3758097084;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::parseEventLogRecordChannelSwitch();
    }
  }

  return v18;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordRoamTargetEvaluation(void *this, OSData *a2)
{
  v4 = IOMallocZeroData();
  v5 = IOMallocZeroData();
  if (!v5)
  {
    if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v49 = 67109634;
        v50 = 65;
        v51 = 2080;
        *&v52 = "parseEventLogRecordRoamTargetEvaluation";
        WORD4(v52) = 1024;
        *(&v52 + 10) = 20629;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Failed to allocate wl_roam_target_evaluation_t buf", &v49, 0x18u);
      }
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parseEventLogRecordRoamTargetEvaluation();
      }
    }

    v12 = 0;
    if (v4)
    {
      goto LABEL_54;
    }

    return v12;
  }

  v6 = v5;
  if (!a2)
  {
    AppleBCMWLANCore::parseEventLogRecordRoamTargetEvaluation();
LABEL_58:
    v12 = v49;
    goto LABEL_53;
  }

  if (OSData::getLength(a2) >= 0x31)
  {
    AppleBCMWLANCore::parseEventLogRecordRoamTargetEvaluation();
    goto LABEL_58;
  }

  BytesNoCopy = OSData::getBytesNoCopy(a2);
  Length = OSData::getLength(a2);
  memcpy(v6, BytesNoCopy, Length);
  v9 = *v6;
  if (*v6 > 2)
  {
    if (v9 == 3)
    {
      AppleChannelSpec = AppleBCMWLANChanSpec::getAppleChannelSpec(*(this[9] + 17744), *(v6 + 6));
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v23 = v6[1];
        }

        else
        {
          v23 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v32 = v6[2];
        }

        else
        {
          v32 = 0;
        }

        v40 = AppleBCMWLANChanSpec::convToAscii(AppleChannelSpec, v4, 0x20u);
        v41 = v6[4];
        v42 = v6[5];
        v43 = v6[7];
        v44 = v6[8];
        v45 = v6[9];
        v46 = v6[10];
        v47 = v6[11];
        v49 = 67111682;
        v50 = v23;
        v51 = 1024;
        LODWORD(v52) = v32;
        WORD2(v52) = 2080;
        *(&v52 + 6) = v6 + 6;
        HIWORD(v52) = 2082;
        *v53 = v40;
        *&v53[8] = 1024;
        *v54 = v41;
        *&v54[4] = 1024;
        *v55 = v42;
        *&v55[4] = 1024;
        *v56 = v43;
        *&v56[4] = 1024;
        *v57 = v44;
        *&v57[4] = 1024;
        *v58 = v45;
        *&v58[4] = 1024;
        *v59 = v46;
        *&v59[4] = 1024;
        v60 = v47;
        v16 = "OS_LOG_DEFAULT, LQM-WiFi-Roam: apTargetLoadScore: mac=%8x%4x(%2s) chanSpec=%{public}s rssi=%d rssiBoosted=%d rate=%u bw=%u nss=%u chanFree=%u loadScore=%u\n";
        v17 = 76;
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if (v9 == 4)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v6[1];
        v14 = v6[2];
        v15 = v6[3];
        v49 = 67109632;
        v50 = v13;
        v51 = 1024;
        LODWORD(v52) = v14;
        WORD2(v52) = 1024;
        *(&v52 + 6) = v15;
        v16 = "LQM-WiFi-Roam: refScore=%u scoreDelta=%u numTargets=%u\n";
        v17 = 20;
LABEL_51:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v16, &v49, v17);
      }

LABEL_52:
      v12 = 0;
      goto LABEL_53;
    }
  }

  else
  {
    if (v9 == 1)
    {
      v18 = AppleBCMWLANChanSpec::getAppleChannelSpec(*(this[9] + 17744), *(v6 + 10));
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v6[1];
        v19 = v6[2];
        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v21 = v6[3];
        }

        else
        {
          v21 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v31 = v6[4];
        }

        else
        {
          v31 = 0;
        }

        v33 = AppleBCMWLANChanSpec::convToAscii(v18, v4, 0x20u);
        v34 = v6[6];
        v35 = v6[7];
        v36 = v6[8];
        v37 = v6[9];
        v38 = v6[10];
        v39 = v6[11];
        v49 = 67111682;
        v50 = v20;
        v51 = 1024;
        LODWORD(v52) = v19;
        WORD2(v52) = 1024;
        *(&v52 + 6) = v21;
        WORD5(v52) = 1024;
        HIDWORD(v52) = v31;
        *v53 = 2082;
        *&v53[2] = v33;
        *v54 = 1024;
        *&v54[2] = v34;
        *v55 = 1024;
        *&v55[2] = v35;
        *v56 = 1024;
        *&v56[2] = v36;
        *v57 = 1024;
        *&v57[2] = v37;
        *v58 = 1024;
        *&v58[2] = v38;
        *v59 = 1024;
        *&v59[2] = v39;
        v16 = "LQM-WiFi-Roam: roamReason=%u roamType=%u home(bssid=%8x%4x chanSpec=%{public}s rssi=%d) prof[%d](flags=0x%x trigger=%d delta=%d) userOverride=%u\n";
        v17 = 72;
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if (v9 == 2)
    {
      v10 = AppleBCMWLANChanSpec::getAppleChannelSpec(*(this[9] + 17744), *(v6 + 6));
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v11 = v6[1];
        }

        else
        {
          v11 = 0;
        }

        if (IO80211_io80211isSensitiveInfoAllowed())
        {
          v24 = v6[2];
        }

        else
        {
          v24 = 0;
        }

        v25 = AppleBCMWLANChanSpec::convToAscii(v10, v4, 0x20u);
        v26 = v6[4];
        v27 = v6[5];
        v28 = v6[6];
        v29 = v6[7];
        v30 = v6[8];
        v49 = 67110914;
        v50 = v11;
        v51 = 1024;
        LODWORD(v52) = v24;
        WORD2(v52) = 2082;
        *(&v52 + 6) = v25;
        HIWORD(v52) = 1024;
        *v53 = v26;
        *&v53[4] = 1024;
        *&v53[6] = v27;
        *v54 = 1024;
        *&v54[2] = v28;
        *v55 = 1024;
        *&v55[2] = v29;
        *v56 = 1024;
        *&v56[2] = v30;
        v16 = "LQM-WiFi-Roam: apTargetRSSIScore: mac=%8x%4x chanSpec=%{public}s rssi=%d rssiBoosted=%d rssiScore=%u loadAAC=%u chanFree=%u\n";
        v17 = 54;
        goto LABEL_51;
      }

      goto LABEL_52;
    }
  }

  if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v49 = 67109634;
      v50 = 65;
      v51 = 2080;
      *&v52 = "parseEventLogRecordRoamTargetEvaluation";
      WORD4(v52) = 1024;
      *(&v52 + 10) = 20669;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: LQM-WiFi-Roam: Roam Target Evaluation unknown type\n", &v49, 0x18u);
    }
  }

  v12 = 3758097090;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::parseEventLogRecordRoamTargetEvaluation();
    }
  }

LABEL_53:
  IOFreeData();
  if (v4)
  {
LABEL_54:
    IOFreeData();
  }

  return v12;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordKvrReport(unint64_t this, OSData *a2)
{
  v121 = 0;
  v122 = 0;
  if (!a2)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parseEventLogRecordKvrReport();
      }
    }

    return 0;
  }

  if (OSData::getLength(a2) >= 0x2D)
  {
    if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109890;
        v124 = 65;
        v125 = 2080;
        v126 = "parseEventLogRecordKvrReport";
        v127 = 1024;
        v128 = 20697;
        v129 = 2048;
        *v130 = OSData::getLength(a2);
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Payload too large %ld", buf, 0x22u);
      }
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parseEventLogRecordKvrReport();
      }
    }

    return 0;
  }

  BytesNoCopy = OSData::getBytesNoCopy(a2);
  Length = OSData::getLength(a2);
  if (!BytesNoCopy || Length - 0x4000000000000000 <= 0xC000000000000000)
  {
    AppleBCMWLANCore::parseEventLogRecordKvrReport();
    return *buf;
  }

  v121 = BytesNoCopy;
  v122 = Length;
  v6 = IO80211BufferCursor::asType<bcmv3_awdl_scan_event_data_min>(&v121, 0, 4);
  v8 = (v6 + (v7 >> 32));
  if (__CFADD__(v6, v7 >> 32))
  {
    v9 = (v7 >> 63) + 1;
  }

  else
  {
    v9 = v7 >> 63;
  }

  v10 = v9 << 63 >> 63;
  if (v10 != v9 || v10 < 0)
  {
    AppleBCMWLANProximityInterface::handleEvent(v6, v7);
  }

  v11 = v7;
  v12 = (*(*this + 1952))(this);
  if (!v8)
  {
    if (v12)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parseEventLogRecordKvrReport();
      }
    }

    return 0;
  }

  if (!v12 || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    v13 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if ((v11 & 0x8000000000000000) != 0 || HIDWORD(v11) + 4 > v11)
      {
        AppleBCMWLANCore::handleScanEvent(v13, v14);
      }

      v15 = *v8;
      *buf = 67109890;
      v124 = 73;
      v125 = 2080;
      v126 = "parseEventLogRecordKvrReport";
      v127 = 1024;
      v128 = 20711;
      v129 = 1024;
      *v130 = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: LQM-WiFi-Roam-kvr:Type: %d\n", buf, 0x1Eu);
    }
  }

  shouldLog = (*(*this + 1952))(this);
  if (shouldLog && ((*(*this + 1952))(this), shouldLog = CCLogStream::shouldLog(), shouldLog))
  {
    v109 = (*(*this + 1952))(this);
    if ((v11 & 0x8000000000000000) != 0 || HIDWORD(v11) + 4 > v11)
    {
      AppleBCMWLANCore::handleScanEvent(v109, v110);
    }

    shouldLog = CCLogStream::logInfo(v109, "[dk] %s@%d:LQM-WiFi-Roam-kvr:Type: %d\n", "parseEventLogRecordKvrReport", 20711, *v8);
  }

  else if ((v11 & 0x8000000000000000) != 0 || HIDWORD(v11) + 4 > v11)
  {
    AppleBCMWLANCore::handleScanEvent(shouldLog, v17);
  }

  v18 = *v8;
  if (*v8 == 1)
  {
    v19 = IO80211BufferCursor::asType<wl_roam_11kvr_bcn_rpt_req_v1>(&v121, 0, 0x28);
    v21 = (v19 + (v20 >> 32));
    if (__CFADD__(v19, v20 >> 32))
    {
      v22 = (v20 >> 63) + 1;
    }

    else
    {
      v22 = v20 >> 63;
    }

    v23 = v22 << 63 >> 63;
    if (v23 != v22 || v23 < 0)
    {
      AppleBCMWLANProximityInterface::handleEvent(v19, v20);
    }

    v24 = v20;
    v25 = (*(*this + 1952))(this);
    if (!v21)
    {
      if (v25)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parseEventLogRecordKvrReport();
        }
      }

      return 0;
    }

    if (!v25 || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      v26 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (v26)
      {
        if ((v24 & 0x8000000000000000) != 0 || HIDWORD(v24) + 40 > v24)
        {
          AppleBCMWLANProximityInterface::handleEvent(v26, v27);
        }

        v28 = v21[2];
        v29 = v21[3];
        v30 = v21[4];
        v31 = v21[5];
        v32 = v21[6];
        v33 = v21[7];
        v34 = v21[8];
        v35 = v21[9];
        *buf = 67111682;
        v124 = 73;
        v125 = 2080;
        v126 = "parseEventLogRecordKvrReport";
        v127 = 1024;
        v128 = 20718;
        v129 = 1024;
        *v130 = v28;
        *&v130[4] = 1024;
        *&v130[6] = v29;
        v131 = 1024;
        v132 = v30;
        v133 = 1024;
        v134 = v31;
        v135 = 1024;
        v136 = v32;
        v137 = 1024;
        v138 = v33;
        v139 = 1024;
        v140 = v34;
        v141 = 1024;
        v142 = v35;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: LQM-WiFi-Roam-kvr: kvrPayloadBcnRptReq: operating_class=%u requesting_channel_number=%u bcn_mode=%u bssid_hi=%u bssid_lo=%u duration=%u channel_num=%u bcm_chanspec=0x%x \n", buf, 0x48u);
      }
    }

    if (!(*(*this + 1952))(this))
    {
      return 0;
    }

    (*(*this + 1952))(this);
    if (!CCLogStream::shouldLog())
    {
      return 0;
    }

    v81 = (*(*this + 1952))(this);
    if ((v24 & 0x8000000000000000) != 0 || HIDWORD(v24) + 40 > v24)
    {
      AppleBCMWLANProximityInterface::handleEvent(v81, v111);
    }

    v118 = v21[8];
    v119 = v21[9];
    v116 = v21[6];
    v117 = v21[7];
    v114 = v21[4];
    v115 = v21[5];
    v112 = v21[2];
    v113 = v21[3];
    v83 = 20718;
    v84 = "[dk] %s@%d:LQM-WiFi-Roam-kvr: kvrPayloadBcnRptReq: operating_class=%u requesting_channel_number=%u bcn_mode=%u bssid_hi=%u bssid_lo=%u duration=%u channel_num=%u bcm_chanspec=0x%x \n";
LABEL_173:
    CCLogStream::logInfo(v81, v84, "parseEventLogRecordKvrReport", v83, v112, v113, v114, v115, v116, v117, v118, v119, v120);
    return 0;
  }

  if (HIDWORD(v11) + 4 > v11)
  {
    AppleBCMWLANCore::handleScanEvent(shouldLog, v17);
  }

  if (v18 <= 4)
  {
    switch(v18)
    {
      case 2:
        v63 = IO80211BufferCursor::asType<wl_roam_11kvr_bcn_rpt_resp_v1>(&v121, 0, 0x2C);
        v65 = (v63 + (v64 >> 32));
        if (__CFADD__(v63, v64 >> 32))
        {
          v66 = (v64 >> 63) + 1;
        }

        else
        {
          v66 = v64 >> 63;
        }

        v67 = v66 << 63 >> 63;
        if (v67 != v66 || v67 < 0)
        {
          AppleBCMWLANProximityInterface::handleEvent(v63, v64);
        }

        v68 = v64;
        v69 = (*(*this + 1952))(this);
        if (!v65)
        {
          if (v69)
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::parseEventLogRecordKvrReport();
            }
          }

          return 0;
        }

        if (!v69 || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
        {
          v70 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          if (v70)
          {
            if ((v68 & 0x8000000000000000) != 0 || HIDWORD(v68) + 44 > v68)
            {
              AppleBCMWLANProximityInterface::handleEvent(v70, v71);
            }

            v72 = v65[2];
            v73 = v65[3];
            v74 = v65[4];
            v75 = v65[5];
            v76 = v65[6];
            v77 = v65[7];
            v78 = v65[8];
            v79 = v65[9];
            v80 = v65[10];
            *buf = 67111938;
            v124 = 73;
            v125 = 2080;
            v126 = "parseEventLogRecordKvrReport";
            v127 = 1024;
            v128 = 20725;
            v129 = 1024;
            *v130 = v72;
            *&v130[4] = 1024;
            *&v130[6] = v73;
            v131 = 1024;
            v132 = v74;
            v133 = 1024;
            v134 = v76;
            v135 = 1024;
            v136 = v75;
            v137 = 1024;
            v138 = v77;
            v139 = 1024;
            v140 = v78;
            v141 = 1024;
            v142 = v79;
            v143 = 1024;
            v144 = v80;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: LQM-WiFi-Roam-kvr: kvrPayloadBcnRptRsp:  index_of_AP_in_report=%u num_aps=%u meas_mode=%u bssid_hi=%u bssid_lo=%u ssid_match=%u bcm_chanspec=0x%x rssi=%d snr=%d \n", buf, 0x4Eu);
          }
        }

        if (!(*(*this + 1952))(this))
        {
          return 0;
        }

        (*(*this + 1952))(this);
        if (!CCLogStream::shouldLog())
        {
          return 0;
        }

        v81 = (*(*this + 1952))(this);
        if ((v68 & 0x8000000000000000) != 0 || HIDWORD(v68) + 44 > v68)
        {
          AppleBCMWLANProximityInterface::handleEvent(v81, v82);
        }

        v119 = v65[9];
        v120 = v65[10];
        v117 = v65[7];
        v118 = v65[8];
        v115 = v65[6];
        v116 = v65[5];
        v113 = v65[3];
        v114 = v65[4];
        v112 = v65[2];
        v83 = 20725;
        v84 = "[dk] %s@%d:LQM-WiFi-Roam-kvr: kvrPayloadBcnRptRsp:  index_of_AP_in_report=%u num_aps=%u meas_mode=%u bssid_hi=%u bssid_lo=%u ssid_match=%u bcm_chanspec=0x%x rssi=%d snr=%d \n";
        goto LABEL_173;
      case 3:
        v97 = IO80211BufferCursor::asType<wl_roam_11kvr_nbr_rpt_req_v1>(&v121, 0, 0xC);
        v99 = v97 + (v98 >> 32);
        if (__CFADD__(v97, v98 >> 32))
        {
          v100 = (v98 >> 63) + 1;
        }

        else
        {
          v100 = v98 >> 63;
        }

        v101 = v100 << 63 >> 63;
        if (v101 != v100 || v101 < 0)
        {
          AppleBCMWLANProximityInterface::handleEvent(v97, v98);
        }

        v102 = v98;
        v103 = (*(*this + 1952))(this);
        if (v99)
        {
          if (!v103 || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
          {
            v104 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            if (v104)
            {
              if ((v102 & 0x8000000000000000) != 0 || HIDWORD(v102) + 12 > v102)
              {
                AppleBCMWLANProximityInterface::handleEvent(v104, v105);
              }

              v106 = *(v99 + 8);
              *buf = 67109890;
              v124 = 73;
              v125 = 2080;
              v126 = "parseEventLogRecordKvrReport";
              v127 = 1024;
              v128 = 20731;
              v129 = 1024;
              *v130 = v106;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: LQM-WiFi-Roam-kvr: nbr_report_req: token=%u \n", buf, 0x1Eu);
            }
          }

          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              v107 = (*(*this + 1952))(this);
              if ((v102 & 0x8000000000000000) != 0 || HIDWORD(v102) + 12 > v102)
              {
                AppleBCMWLANProximityInterface::handleEvent(v107, v108);
              }

              CCLogStream::logInfo(v107, "[dk] %s@%d:LQM-WiFi-Roam-kvr: nbr_report_req: token=%u \n");
            }
          }
        }

        else if (v103)
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseEventLogRecordKvrReport();
          }
        }

        return 0;
      case 4:
        v50 = IO80211BufferCursor::asType<wl_roam_11kvr_nbr_rpt_resp_v1>(&v121, 0, 0x10);
        v52 = v50 + (v51 >> 32);
        if (__CFADD__(v50, v51 >> 32))
        {
          v53 = (v51 >> 63) + 1;
        }

        else
        {
          v53 = v51 >> 63;
        }

        v54 = v53 << 63 >> 63;
        if (v54 != v53 || v54 < 0)
        {
          AppleBCMWLANProximityInterface::handleEvent(v50, v51);
        }

        v55 = v51;
        v56 = (*(*this + 1952))(this);
        if (v52)
        {
          if (!v56 || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
          {
            v57 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            if (v57)
            {
              if ((v55 & 0x8000000000000000) != 0 || HIDWORD(v55) + 16 > v55)
              {
                AppleBCMWLANProximityInterface::handleEvent(v57, v58);
              }

              v59 = *(v52 + 8);
              v60 = *(v52 + 12);
              *buf = 67110146;
              v124 = 73;
              v125 = 2080;
              v126 = "parseEventLogRecordKvrReport";
              v127 = 1024;
              v128 = 20738;
              v129 = 1024;
              *v130 = v59;
              *&v130[4] = 1024;
              *&v130[6] = v60;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: LQM-WiFi-Roam-kvr: nbr_report_rsp:  channel_num=%u bcm_chanspec=0x%x \n", buf, 0x24u);
            }
          }

          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              v61 = (*(*this + 1952))(this);
              if ((v55 & 0x8000000000000000) != 0 || HIDWORD(v55) + 16 > v55)
              {
                AppleBCMWLANProximityInterface::handleEvent(v61, v62);
              }

              CCLogStream::logInfo(v61, "[dk] %s@%d:LQM-WiFi-Roam-kvr: nbr_report_rsp:  channel_num=%u bcm_chanspec=0x%x \n");
            }
          }
        }

        else if (v56)
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseEventLogRecordKvrReport();
          }
        }

        return 0;
    }
  }

  else
  {
    if (v18 <= 6)
    {
      if (v18 == 5)
      {
        v85 = IO80211BufferCursor::asType<wl_roam_11kvr_nbr_rpt_req_v1>(&v121, 0, 0xC);
        v87 = v85 + (v86 >> 32);
        if (__CFADD__(v85, v86 >> 32))
        {
          v88 = (v86 >> 63) + 1;
        }

        else
        {
          v88 = v86 >> 63;
        }

        v89 = v88 << 63 >> 63;
        if (v89 != v88 || v89 < 0)
        {
          AppleBCMWLANProximityInterface::handleEvent(v85, v86);
        }

        v90 = v86;
        v91 = (*(*this + 1952))(this);
        if (v87)
        {
          if (!v91 || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
          {
            v92 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            if (v92)
            {
              if ((v90 & 0x8000000000000000) != 0 || HIDWORD(v90) + 12 > v90)
              {
                AppleBCMWLANProximityInterface::handleEvent(v92, v93);
              }

              v94 = *(v87 + 8);
              *buf = 67109890;
              v124 = 73;
              v125 = 2080;
              v126 = "parseEventLogRecordKvrReport";
              v127 = 1024;
              v128 = 20745;
              v129 = 1024;
              *v130 = v94;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: LQM-WiFi-Roam-kvr: dms_req: token=%u \n", buf, 0x1Eu);
            }
          }

          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              v95 = (*(*this + 1952))(this);
              if ((v90 & 0x8000000000000000) != 0 || HIDWORD(v90) + 12 > v90)
              {
                AppleBCMWLANProximityInterface::handleEvent(v95, v96);
              }

              CCLogStream::logInfo(v95, "[dk] %s@%d:LQM-WiFi-Roam-kvr: dms_req: token=%u \n");
            }
          }
        }

        else if (v91)
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseEventLogRecordKvrReport();
          }
        }
      }

      else
      {
        v38 = IO80211BufferCursor::asType<wl_roam_11kvr_nbr_rpt_req_v1>(&v121, 0, 0xC);
        v40 = v38 + (v39 >> 32);
        if (__CFADD__(v38, v39 >> 32))
        {
          v41 = (v39 >> 63) + 1;
        }

        else
        {
          v41 = v39 >> 63;
        }

        v42 = v41 << 63 >> 63;
        if (v42 != v41 || v42 < 0)
        {
          AppleBCMWLANProximityInterface::handleEvent(v38, v39);
        }

        v43 = v39;
        v44 = (*(*this + 1952))(this);
        if (v40)
        {
          if (!v44 || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
          {
            v45 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            if (v45)
            {
              if ((v43 & 0x8000000000000000) != 0 || HIDWORD(v43) + 12 > v43)
              {
                AppleBCMWLANProximityInterface::handleEvent(v45, v46);
              }

              v47 = *(v40 + 8);
              *buf = 67109890;
              v124 = 73;
              v125 = 2080;
              v126 = "parseEventLogRecordKvrReport";
              v127 = 1024;
              v128 = 20752;
              v129 = 1024;
              *v130 = v47;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: LQM-WiFi-Roam-kvr: dms_rsp: token=%u \n", buf, 0x1Eu);
            }
          }

          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              v48 = (*(*this + 1952))(this);
              if ((v43 & 0x8000000000000000) != 0 || HIDWORD(v43) + 12 > v43)
              {
                AppleBCMWLANProximityInterface::handleEvent(v48, v49);
              }

              CCLogStream::logInfo(v48, "[dk] %s@%d:LQM-WiFi-Roam-kvr: dms_rsp: token=%u \n");
            }
          }
        }

        else if (v44)
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseEventLogRecordKvrReport();
          }
        }
      }

      return 0;
    }

    if (v18 == 7)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parseEventLogRecordKvrReport();
        }
      }

      return 0;
    }

    if (v18 == 8)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parseEventLogRecordKvrReport();
        }
      }

      return 0;
    }
  }

  if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109890;
      v124 = 65;
      v125 = 2080;
      v126 = "parseEventLogRecordKvrReport";
      v127 = 1024;
      v128 = 20764;
      v129 = 2080;
      *v130 = "parseEventLogRecordKvrReport";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: %s LQM-WiFi-Roam-kvr: kvr Report unknown type\n", buf, 0x22u);
    }
  }

  v36 = 3758097090;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::parseEventLogRecordKvrReport();
    }
  }

  return v36;
}

uint64_t IO80211BufferCursor::asType<wl_roam_11kvr_bcn_rpt_req_v1>(uint64_t *a1, uint64_t a2, const char *a3)
{
  result = IO80211BufferCursor::_asType<wl_roam_11kvr_bcn_rpt_req_v1>(a1, a2, a3);
  if (__CFADD__(result, v4 >> 32))
  {
    v5 = (v4 >> 63) + 1;
  }

  else
  {
    v5 = v4 >> 63;
  }

  v6 = v5 << 63 >> 63;
  if (v6 != v5 || v6 < 0)
  {
    AppleBCMWLANProximityInterface::handleEvent(result, v4);
  }

  return result;
}

uint64_t IO80211BufferCursor::asType<wl_roam_11kvr_bcn_rpt_resp_v1>(uint64_t *a1, uint64_t a2, const char *a3)
{
  result = IO80211BufferCursor::_asType<wl_roam_11kvr_bcn_rpt_resp_v1>(a1, a2, a3);
  if (__CFADD__(result, v4 >> 32))
  {
    v5 = (v4 >> 63) + 1;
  }

  else
  {
    v5 = v4 >> 63;
  }

  v6 = v5 << 63 >> 63;
  if (v6 != v5 || v6 < 0)
  {
    AppleBCMWLANProximityInterface::handleEvent(result, v4);
  }

  return result;
}

uint64_t IO80211BufferCursor::asType<wl_roam_11kvr_nbr_rpt_req_v1>(uint64_t *a1, uint64_t a2, const char *a3)
{
  result = IO80211BufferCursor::_asType<wl_roam_11kvr_nbr_rpt_req_v1>(a1, a2, a3);
  if (__CFADD__(result, v4 >> 32))
  {
    v5 = (v4 >> 63) + 1;
  }

  else
  {
    v5 = v4 >> 63;
  }

  v6 = v5 << 63 >> 63;
  if (v6 != v5 || v6 < 0)
  {
    AppleBCMWLANProximityInterface::handleEvent(result, v4);
  }

  return result;
}

uint64_t IO80211BufferCursor::asType<wl_roam_11kvr_nbr_rpt_resp_v1>(uint64_t *a1, uint64_t a2, const char *a3)
{
  result = IO80211BufferCursor::_asType<wl_roam_11kvr_nbr_rpt_resp_v1>(a1, a2, a3);
  if (__CFADD__(result, v4 >> 32))
  {
    v5 = (v4 >> 63) + 1;
  }

  else
  {
    v5 = v4 >> 63;
  }

  v6 = v5 << 63 >> 63;
  if (v6 != v5 || v6 < 0)
  {
    AppleBCMWLANProximityInterface::handleEvent(result, v4);
  }

  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordLTECoexStatsPerSlice(AppleBCMWLANCore *a1, OSData *a2, uint64_t a3)
{
  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 73))
  {
    if (a3 >= 2)
    {
      AppleBCMWLANCore::parseEventLogRecordLTECoexStatsPerSlice();
      return v9;
    }

    if (*OSData::getBytesNoCopy(a2) == 1)
    {
      if (OSData::getLength(a2) == 160)
      {
        if (OSData::getLength(a2) == 160)
        {
          if (AppleBCMWLANCore::convertInfraLTECoexStatisticsToApple80211Counters(a1, a2))
          {
            AppleBCMWLANCore::parseEventLogRecordLTECoexStatsPerSlice();
          }

          else
          {
            v6 = *(*(a1 + 9) + 5512);
            if (!v6 || !AppleBCMWLANIOReportingPerSlice::reportLTECoexStatisticsPerSlice(v6, a2, a3))
            {
              return 0;
            }

            AppleBCMWLANCore::parseEventLogRecordLTECoexStatsPerSlice();
          }

          return v9;
        }

        v7 = 3758097084;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseEventLogRecordLTECoexStatsPerSlice();
          }
        }
      }

      else
      {
        v7 = 3758097084;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::parseEventLogRecordLTECoexStatsPerSlice();
          }
        }
      }
    }

    else
    {
      v7 = 3758097084;
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parseEventLogRecordLTECoexStatsPerSlice();
        }
      }
    }
  }

  else
  {
    v7 = 3758097084;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parseEventLogRecordLTECoexStatsPerSlice();
      }
    }
  }

  return v7;
}

uint64_t AppleBCMWLANCore::convertInfraLTECoexStatisticsToApple80211Counters(uint64_t a1, OSData *a2)
{
  v7 = 0;
  v3 = IOMallocZeroData();
  memset(v8, 170, sizeof(v8));
  AppleBCMWLANUtil::AutoreleasedAlignedOSData::AutoreleasedAlignedOSData(v8, a2, 2);
  v4 = v8[0];
  if (v8[0])
  {
    if (!v3)
    {
      v5 = 3758097084;
      AppleBCMWLANCore::convertInfraLTECoexStatisticsToApple80211Counters();
      return v5;
    }

    v3[4] = AppleBCMWLANUtil::getCounterValueSafe(&v7, 2uLL, v8[0], 0x8CuLL);
    *v3 = AppleBCMWLANUtil::getCounterValueSafe(&v7, 2uLL, v4, 0x8EuLL);
    v3[1] = AppleBCMWLANUtil::getCounterValueSafe(&v7, 2uLL, v4, 0x90uLL);
    v3[6] = v3[4];
    v3[7] = AppleBCMWLANUtil::getCounterValueSafe(&v7, 2uLL, v4, 0x98uLL);
    v3[8] = AppleBCMWLANUtil::getCounterValueSafe(&v7, 2uLL, v4, 0x96uLL);
    if (IO80211Controller::setLTECoexstat())
    {
      v5 = v7;
    }

    else
    {
      v5 = 3758097084;
      AppleBCMWLANCore::convertInfraLTECoexStatisticsToApple80211Counters();
    }

    AppleBCMWLANUtil::AutoreleasedAlignedOSData::~AutoreleasedAlignedOSData(v8);
  }

  else
  {
    v5 = 3758097084;
    if (AppleBCMWLANCore::convertInfraLTECoexStatisticsToApple80211Counters())
    {
      return v5;
    }
  }

  IOFreeData();
  return v5;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordControlManagementFrameCounts(void *this, OSData *a2)
{
  v4 = 3758097084;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v5;
  v21 = v5;
  bzero(v19, 0x4C8uLL);
  BYTE4(v20) = 0;
  LODWORD(v20) = 19;
  if (!a2)
  {
    return 3758097090;
  }

  BytesNoCopy = OSData::getBytesNoCopy(a2);
  if (OSData::getLength(a2) <= 0x93)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parseEventLogRecordControlManagementFrameCounts();
      }
    }

    return v4;
  }

  if ((BytesNoCopy & 3) == 0)
  {
    v8 = 0;
LABEL_11:
    if (*BytesNoCopy)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parseEventLogRecordControlManagementFrameCounts();
        }
      }

      goto LABEL_25;
    }

    if (*(BytesNoCopy + 2) != 144)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::parseEventLogRecordControlManagementFrameCounts();
        }
      }

      goto LABEL_25;
    }

    if (AppleBCMWLANCore::convertwlMgmtCntToAppleFrameCounters(this, BytesNoCopy, v19))
    {
      AppleBCMWLANCore::parseEventLogRecordControlManagementFrameCounts();
    }

    else
    {
      v17 = this[9];
      v19[112] = *(v17 + 17496);
      v19[128] = *(v17 + 17504);
      if (IO80211Controller::setFrameStats())
      {
        v4 = 0;
        goto LABEL_25;
      }

      AppleBCMWLANCore::parseEventLogRecordControlManagementFrameCounts();
    }

    v4 = v23;
LABEL_25:
    if (v8)
    {
      memset_s(v8, 0x94uLL, 0, 0x94uLL);
      IOFree(v8, 0x94uLL);
    }

    return v4;
  }

  v7 = IOMallocZeroTyped();
  if (v7)
  {
    v8 = v7;
    v9 = OSData::getBytesNoCopy(a2);
    v10 = v9[1];
    *v8 = *v9;
    v8[1] = v10;
    v11 = v9[5];
    v13 = v9[2];
    v12 = v9[3];
    v8[4] = v9[4];
    v8[5] = v11;
    v8[2] = v13;
    v8[3] = v12;
    v15 = v9[7];
    v14 = v9[8];
    v16 = v9[6];
    *(v8 + 36) = *(v9 + 36);
    v8[7] = v15;
    v8[8] = v14;
    v8[6] = v16;
    BytesNoCopy = v8;
    goto LABEL_11;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::parseEventLogRecordControlManagementFrameCounts();
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::convertwlMgmtCntToAppleFrameCounters(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  if (((a2 + 124) & 3) == 0)
  {
    v7 = 0;
    goto LABEL_8;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::convertwlMgmtCntToAppleFrameCounters();
    }
  }

  v6 = IOMallocZeroTyped();
  if (v6)
  {
    v7 = v6;
    v8 = *(v4 + 16);
    *v6 = *v4;
    *(v6 + 16) = v8;
    v9 = *(v4 + 32);
    v10 = *(v4 + 48);
    v11 = *(v4 + 80);
    *(v6 + 64) = *(v4 + 64);
    *(v6 + 80) = v11;
    *(v6 + 32) = v9;
    *(v6 + 48) = v10;
    v12 = *(v4 + 96);
    v13 = *(v4 + 112);
    v14 = *(v4 + 128);
    *(v6 + 144) = *(v4 + 144);
    *(v6 + 112) = v13;
    *(v6 + 128) = v14;
    *(v6 + 96) = v12;
    v4 = v6;
LABEL_8:
    v15 = *(v4 + 128);
    v16 = *(v4 + 132);
    v17 = *(v4 + 136);
    a3[22] = *(v4 + 124);
    a3[23] = v16;
    v18 = *(v4 + 144);
    v19 = *(v4 + 100);
    v20 = *(v4 + 104);
    a3[24] = *(v4 + 140);
    a3[25] = v19;
    v21 = *(v4 + 112);
    v22 = *(v4 + 116);
    v23 = *(v4 + 120);
    a3[26] = *(v4 + 108);
    a3[27] = v22;
    *a3 = v15;
    a3[1] = v17;
    a3[2] = v18;
    a3[3] = v20;
    a3[4] = v21;
    a3[5] = v23;
    v24 = *(v4 + 24);
    a3[122] = *(v4 + 20);
    v25 = *(v4 + 48);
    a3[123] = *(v4 + 44);
    v26 = *(v4 + 32);
    a3[124] = *(v4 + 28);
    v27 = *(v4 + 56);
    a3[125] = *(v4 + 52);
    v28 = *(v4 + 80);
    a3[126] = *(v4 + 76);
    v29 = *(v4 + 88);
    a3[127] = *(v4 + 84);
    v30 = *(v4 + 40);
    a3[130] = *(v4 + 36);
    v31 = *(v4 + 64);
    a3[131] = *(v4 + 60);
    v32 = *(v4 + 72);
    a3[132] = *(v4 + 68);
    v33 = *(v4 + 96);
    a3[133] = *(v4 + 92);
    a3[106] = v24;
    a3[107] = v25;
    a3[108] = v26;
    a3[109] = v27;
    a3[110] = v28;
    a3[111] = v29;
    a3[114] = v30;
    a3[115] = v31;
    a3[116] = v32;
    a3[117] = v33;
    v34 = *(v4 + 8);
    a3[79] = *(v4 + 4);
    v35 = *(v4 + 16);
    a3[86] = *(v4 + 12);
    a3[48] = v34;
    a3[55] = v35;
    if (v7)
    {
      memset_s(v7, 0x94uLL, 0, 0x94uLL);
      IOFree(v7, 0x94uLL);
    }

    return 0;
  }

  v36 = 3758097084;
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::convertwlMgmtCntToAppleFrameCounters();
    }
  }

  return v36;
}

uint64_t AppleBCMWLANCore::parseXTLVContainers(AppleBCMWLANCore *this, OSData *a2)
{
  if (OSData::getLength(a2) < 4)
  {
    v15 = 3758097084;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parseXTLVContainers();
      }
    }

    LOWORD(v7) = 0;
    LOWORD(v6) = 0;
    v5 = 0;
    goto LABEL_64;
  }

  if (!OSData::getLength(a2))
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  LOWORD(v6) = 0;
  LOWORD(v7) = 0;
  while (1)
  {
    if (OSData::getLength(a2) - v4 < 5)
    {
      return 0;
    }

    BytesNoCopy = OSData::getBytesNoCopy(a2, v4, 4uLL);
    v9 = (*(*this + 1952))(this);
    if (!BytesNoCopy)
    {
      break;
    }

    if (v9)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parseXTLVContainers();
      }
    }

    v6 = BytesNoCopy[1];
    if (OSData::getLength(a2) - (v5 + 4) < v6)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        v15 = 3758097084;
        if (CCLogStream::shouldLog())
        {
          v22 = (*(*this + 1952))(this);
          OSData::getLength(a2);
          OSData::getLength(a2);
          v15 = 3758097084;
          CCLogStream::logAlert(v22, "[dk] %s@%d:Insufficient xtlv->len %d index %d xtlv->id 0x%x payload->getLength() %d remainder %d\n", "parseXTLVContainers");
        }

        goto LABEL_64;
      }

LABEL_56:
      v15 = 3758097084;
      goto LABEL_64;
    }

    v10 = OSData::getBytesNoCopy(a2, v5 + 4, v6);
    if (!v10)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        v15 = 3758097084;
        if (CCLogStream::shouldLog())
        {
          v17 = (*(*this + 1952))(this);
          OSData::getLength(a2);
          v18 = v17;
          v15 = 3758097084;
          CCLogStream::logAlert(v18, "[dk] %s@%d:Bad payloadStart xtlv->len %d index %d xtlv->id 0x%x payload->getLength() %d index + BCM_XTLV_HDR_SIZE %d\n", "parseXTLVContainers");
        }

        goto LABEL_64;
      }

      goto LABEL_56;
    }

    v11 = OSData::withBytesNoCopy(v10, v6);
    if (!v11)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        v15 = 3758097084;
        if (CCLogStream::shouldLog())
        {
          v19 = (*(*this + 1952))(this);
          CCLogStream::logAlert(v19, "[dk] %s@%d:Bad xtlvContainerPayload index %d xtlv->len %d xtlv->id 0x%x\n");
        }

        goto LABEL_64;
      }

      goto LABEL_56;
    }

    v12 = v11;
    v7 = *BytesNoCopy;
    if (v7 > 0x10A)
    {
      if (*BytesNoCopy <= 0x10Cu)
      {
        if (v7 == 267)
        {
          v13 = AppleBCMWLANCore::parsePHYEcounter(this, v11);
          goto LABEL_30;
        }

        if (v7 == 268)
        {
          v13 = AppleBCMWLANCore::parsePHYCalEcounter(this, v11);
          goto LABEL_30;
        }
      }

      else
      {
        switch(v7)
        {
          case 0x10Du:
            v13 = AppleBCMWLANCore::parseDTIMEcounter(this, v11);
            goto LABEL_30;
          case 0x501u:
            v13 = AppleBCMWLANCore::parseIFStatsContainer(this, v11);
            goto LABEL_30;
          case 0x301u:
            v13 = AppleBCMWLANCore::parsePerSliceContainer(this, v11);
            goto LABEL_30;
        }
      }
    }

    else
    {
      if (v7 - 6 < 2)
      {
        v14 = 0;
        goto LABEL_31;
      }

      if (v7 - 257 < 2)
      {
        v13 = AppleBCMWLANCore::parseAMPDUStatsGlobalContainer(this, v11);
LABEL_30:
        v14 = v13;
        goto LABEL_31;
      }

      if (v7 == 261)
      {
        v13 = AppleBCMWLANCore::parseChanStatsGlobalContainer(this, v11);
        goto LABEL_30;
      }
    }

    v14 = 3758097090;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parseXTLVContainers();
        v14 = 3758097090;
      }
    }

LABEL_31:
    (v12->release)(v12);
    if (v14)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v21 = (*(*this + 1952))(this);
          CCLogStream::logEmergency(v21, "[dk] %s@%d:Failed to parse Event Log Record xtlv %x payloadLen %d\n", "parseXTLVContainers", 28781, v7, v6);
        }

        v15 = v14;
      }

      else
      {
        v15 = v14;
      }

      goto LABEL_64;
    }

    v23 = 0;
    if (AppleBCMWLANCore::safe_align_up(this, v4 + v6 + 4, 4, &v23))
    {
      AppleBCMWLANCore::parseXTLVContainers();
LABEL_63:
      v15 = 0;
      goto LABEL_64;
    }

    v4 = v23;
    if (v23 >= 0xFFFF)
    {
      AppleBCMWLANCore::parseXTLVContainers();
      goto LABEL_63;
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::parseXTLVContainers();
      }
    }

    v5 = v4;
    if (OSData::getLength(a2) <= v4)
    {
      return 0;
    }
  }

  if (!v9)
  {
    goto LABEL_56;
  }

  (*(*this + 1952))(this);
  v15 = 3758097084;
  if (CCLogStream::shouldLog())
  {
    AppleBCMWLANCore::parseXTLVContainers();
  }

LABEL_64:
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v20 = (*(*this + 1952))(this);
      CCLogStream::logAlert(v20, "[dk] %s@%d:Goto fail last tag %x length %d index %d\n", "parseXTLVContainers", 28797, v7, v6, v5);
    }
  }

  CCFaultReporter::reportFault(*(*(this + 9) + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x7080u, "parseXTLVContainers", 0, -469793457, "parse TLV error");
  return v15;
}
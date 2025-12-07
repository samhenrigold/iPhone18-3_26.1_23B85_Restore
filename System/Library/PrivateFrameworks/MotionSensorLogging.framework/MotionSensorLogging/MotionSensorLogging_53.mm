uint64_t CMMsl::RunningVerticalOscillation::hash_value(CMMsl::RunningVerticalOscillation *this)
{
  if ((*(this + 40) & 4) == 0)
  {
    v1 = 0.0;
    if ((*(this + 40) & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v2 = 0.0;
    if (*(this + 40))
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v1 = *(this + 3);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 40) & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 4);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if (*(this + 40))
  {
LABEL_6:
    v3 = *(this + 1);
    if (v3 == 0.0)
    {
      v3 = 0.0;
    }

    if ((*(this + 40) & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v4 = 0.0;
    return *&v2 ^ *&v1 ^ *&v3 ^ *&v4;
  }

LABEL_16:
  v3 = 0.0;
  if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v4 = *(this + 2);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return *&v2 ^ *&v1 ^ *&v3 ^ *&v4;
}

void CMMsl::RunningVerticalOscillationGradientBoostedSignals::~RunningVerticalOscillationGradientBoostedSignals(CMMsl::RunningVerticalOscillationGradientBoostedSignals *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::RunningVerticalOscillationGradientBoostedSignals::RunningVerticalOscillationGradientBoostedSignals(uint64_t this, const CMMsl::RunningVerticalOscillationGradientBoostedSignals *a2)
{
  *this = &unk_286C23410;
  *(this + 212) = 0;
  v2 = *(a2 + 53);
  if ((v2 & 0x40000) != 0)
  {
    v4 = *(a2 + 19);
    v3 = 0x40000;
    *(this + 212) = 0x40000;
    *(this + 152) = v4;
    v2 = *(a2 + 53);
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x4000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 15);
    v3 |= 0x4000u;
    *(this + 212) = v3;
    *(this + 120) = v5;
    v2 = *(a2 + 53);
  }

LABEL_6:
  if ((v2 & 0x400) != 0)
  {
    v6 = *(a2 + 11);
    v3 |= 0x400u;
    *(this + 212) = v3;
    *(this + 88) = v6;
    v2 = *(a2 + 53);
    if ((v2 & 0x800) == 0)
    {
LABEL_8:
      if ((v2 & 0x1000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 0x800) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 12);
  v3 |= 0x800u;
  *(this + 212) = v3;
  *(this + 96) = v7;
  v2 = *(a2 + 53);
  if ((v2 & 0x1000) == 0)
  {
LABEL_9:
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  v8 = *(a2 + 13);
  v3 |= 0x1000u;
  *(this + 212) = v3;
  *(this + 104) = v8;
  v2 = *(a2 + 53);
  if ((v2 & 2) == 0)
  {
LABEL_10:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  v9 = *(a2 + 2);
  v3 |= 2u;
  *(this + 212) = v3;
  *(this + 16) = v9;
  v2 = *(a2 + 53);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_11:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  v10 = *(a2 + 25);
  v3 |= 0x1000000u;
  *(this + 212) = v3;
  *(this + 200) = v10;
  v2 = *(a2 + 53);
  if ((v2 & 0x200000) == 0)
  {
LABEL_12:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  v11 = *(a2 + 22);
  v3 |= 0x200000u;
  *(this + 212) = v3;
  *(this + 176) = v11;
  v2 = *(a2 + 53);
  if ((v2 & 0x100000) == 0)
  {
LABEL_13:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  v12 = *(a2 + 21);
  v3 |= 0x100000u;
  *(this + 212) = v3;
  *(this + 168) = v12;
  v2 = *(a2 + 53);
  if ((v2 & 0x20000) == 0)
  {
LABEL_14:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  v13 = *(a2 + 18);
  v3 |= 0x20000u;
  *(this + 212) = v3;
  *(this + 144) = v13;
  v2 = *(a2 + 53);
  if ((v2 & 0x8000) == 0)
  {
LABEL_15:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  v14 = *(a2 + 16);
  v3 |= 0x8000u;
  *(this + 212) = v3;
  *(this + 128) = v14;
  v2 = *(a2 + 53);
  if ((v2 & 0x200) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  v15 = *(a2 + 10);
  v3 |= 0x200u;
  *(this + 212) = v3;
  *(this + 80) = v15;
  v2 = *(a2 + 53);
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  v16 = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 212) = v3;
  *(this + 56) = v16;
  v2 = *(a2 + 53);
  if ((v2 & 0x20) == 0)
  {
LABEL_18:
    if ((v2 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  v17 = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 212) = v3;
  *(this + 48) = v17;
  v2 = *(a2 + 53);
  if ((v2 & 8) == 0)
  {
LABEL_19:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  v18 = *(a2 + 4);
  v3 |= 8u;
  *(this + 212) = v3;
  *(this + 32) = v18;
  v2 = *(a2 + 53);
  if ((v2 & 0x800000) == 0)
  {
LABEL_20:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  v19 = *(a2 + 24);
  v3 |= 0x800000u;
  *(this + 212) = v3;
  *(this + 192) = v19;
  v2 = *(a2 + 53);
  if ((v2 & 0x10) == 0)
  {
LABEL_21:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  v20 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 212) = v3;
  *(this + 40) = v20;
  v2 = *(a2 + 53);
  if ((v2 & 0x2000) == 0)
  {
LABEL_22:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  v21 = *(a2 + 14);
  v3 |= 0x2000u;
  *(this + 212) = v3;
  *(this + 112) = v21;
  v2 = *(a2 + 53);
  if ((v2 & 0x100) == 0)
  {
LABEL_23:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_48;
  }

LABEL_47:
  v22 = *(a2 + 9);
  v3 |= 0x100u;
  *(this + 212) = v3;
  *(this + 72) = v22;
  v2 = *(a2 + 53);
  if ((v2 & 0x10000) == 0)
  {
LABEL_24:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_49;
  }

LABEL_48:
  v23 = *(a2 + 17);
  v3 |= 0x10000u;
  *(this + 212) = v3;
  *(this + 136) = v23;
  v2 = *(a2 + 53);
  if ((v2 & 0x80) == 0)
  {
LABEL_25:
    if ((v2 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_50;
  }

LABEL_49:
  v24 = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 212) = v3;
  *(this + 64) = v24;
  v2 = *(a2 + 53);
  if ((v2 & 4) == 0)
  {
LABEL_26:
    if ((v2 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_51;
  }

LABEL_50:
  v25 = *(a2 + 3);
  v3 |= 4u;
  *(this + 212) = v3;
  *(this + 24) = v25;
  v2 = *(a2 + 53);
  if ((v2 & 1) == 0)
  {
LABEL_27:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_52;
  }

LABEL_51:
  v26 = *(a2 + 1);
  v3 |= 1u;
  *(this + 212) = v3;
  *(this + 8) = v26;
  v2 = *(a2 + 53);
  if ((v2 & 0x400000) == 0)
  {
LABEL_28:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_53;
  }

LABEL_52:
  v27 = *(a2 + 23);
  v3 |= 0x400000u;
  *(this + 212) = v3;
  *(this + 184) = v27;
  v2 = *(a2 + 53);
  if ((v2 & 0x80000) == 0)
  {
LABEL_29:
    if ((v2 & 0x2000000) == 0)
    {
      return this;
    }

LABEL_54:
    v29 = *(a2 + 208);
    *(this + 212) = v3 | 0x2000000;
    *(this + 208) = v29;
    return this;
  }

LABEL_53:
  v28 = *(a2 + 20);
  v3 |= 0x80000u;
  *(this + 212) = v3;
  *(this + 160) = v28;
  if ((*(a2 + 53) & 0x2000000) != 0)
  {
    goto LABEL_54;
  }

  return this;
}

CMMsl *CMMsl::RunningVerticalOscillationGradientBoostedSignals::operator=(CMMsl *a1, const CMMsl::RunningVerticalOscillationGradientBoostedSignals *a2)
{
  if (a1 != a2)
  {
    CMMsl::RunningVerticalOscillationGradientBoostedSignals::RunningVerticalOscillationGradientBoostedSignals(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::RunningVerticalOscillationGradientBoostedSignals *a2, CMMsl::RunningVerticalOscillationGradientBoostedSignals *a3)
{
  v3 = *(this + 53);
  *(this + 53) = *(a2 + 53);
  *(a2 + 53) = v3;
  v4 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v4;
  v5 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v5;
  v6 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v6;
  v7 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v7;
  v8 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v8;
  v9 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v9;
  v10 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v10;
  v11 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v11;
  v12 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v12;
  v13 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v13;
  v14 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v14;
  v15 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v15;
  v16 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v16;
  v17 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v17;
  v18 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v18;
  v19 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v19;
  v20 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v20;
  v21 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v21;
  v22 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v22;
  v23 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v23;
  v24 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v24;
  v25 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v25;
  v26 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v26;
  v27 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v27;
  result = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = result;
  LOBYTE(v3) = *(this + 208);
  *(this + 208) = *(a2 + 208);
  *(a2 + 208) = v3;
  return result;
}

double CMMsl::RunningVerticalOscillationGradientBoostedSignals::RunningVerticalOscillationGradientBoostedSignals(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23410;
  *(a1 + 212) = *(a2 + 212);
  *(a2 + 212) = 0;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 184) = *(a2 + 184);
  result = *(a2 + 160);
  *(a1 + 160) = result;
  *(a1 + 208) = *(a2 + 208);
  return result;
}

CMMsl *CMMsl::RunningVerticalOscillationGradientBoostedSignals::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::RunningVerticalOscillationGradientBoostedSignals::RunningVerticalOscillationGradientBoostedSignals(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::RunningVerticalOscillationGradientBoostedSignals::formatText(CMMsl::RunningVerticalOscillationGradientBoostedSignals *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 53);
  if (v5)
  {
    PB::TextFormatter::format(a2, "centerOfMassAccelZAmplitudeBackwards", *(this + 1));
    v5 = *(this + 53);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "height", *(this + 2));
  v5 = *(this + 53);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "integratedAngleYg", *(this + 3));
  v5 = *(this + 53);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "integratedAngleYgBackwards", *(this + 4));
  v5 = *(this + 53);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "integratedCenterOfAccelZMaxBackwards", *(this + 5));
  v5 = *(this + 53);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "integratedRotationAxisWZ", *(this + 6));
  v5 = *(this + 53);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "integratedRotationAxisWZForwards", *(this + 7));
  v5 = *(this + 53);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "integratedRotationRateYBackwards", *(this + 8));
  v5 = *(this + 53);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "integratedUserAccelTForwards", *(this + 9));
  v5 = *(this + 53);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "integratedUserAccelY", *(this + 10));
  v5 = *(this + 53);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "integratedVelocityZ", *(this + 11));
  v5 = *(this + 53);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "integratedVelocityZBackwards", *(this + 12));
  v5 = *(this + 53);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "integratedVelocityZForwards", *(this + 13));
  v5 = *(this + 53);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_15:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "isValidPeak");
  v5 = *(this + 53);
  if ((v5 & 0x2000) == 0)
  {
LABEL_16:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "medianCadence", *(this + 14));
  v5 = *(this + 53);
  if ((v5 & 0x4000) == 0)
  {
LABEL_17:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "peakTime", *(this + 15));
  v5 = *(this + 53);
  if ((v5 & 0x8000) == 0)
  {
LABEL_18:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "rotationAxisWTAmplitudeXForwards", *(this + 16));
  v5 = *(this + 53);
  if ((v5 & 0x10000) == 0)
  {
LABEL_19:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "rotationRateMaxZForwards", *(this + 17));
  v5 = *(this + 53);
  if ((v5 & 0x20000) == 0)
  {
LABEL_20:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "rotationTMaxZForwards", *(this + 18));
  v5 = *(this + 53);
  if ((v5 & 0x40000) == 0)
  {
LABEL_21:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "startTime", *(this + 19));
  v5 = *(this + 53);
  if ((v5 & 0x80000) == 0)
  {
LABEL_22:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "strideLengthCadence", *(this + 20));
  v5 = *(this + 53);
  if ((v5 & 0x100000) == 0)
  {
LABEL_23:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "swingAccelAmplitudeYBackwards", *(this + 21));
  v5 = *(this + 53);
  if ((v5 & 0x200000) == 0)
  {
LABEL_24:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "swingAccelMeanXBackwards", *(this + 22));
  v5 = *(this + 53);
  if ((v5 & 0x400000) == 0)
  {
LABEL_25:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "swingAccelTZMean", *(this + 23));
  v5 = *(this + 53);
  if ((v5 & 0x800000) == 0)
  {
LABEL_26:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "userAccelTMeanXBackards", *(this + 24));
  if ((*(this + 53) & 0x1000000) != 0)
  {
LABEL_27:
    PB::TextFormatter::format(a2, "weight", *(this + 25));
  }

LABEL_28:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::RunningVerticalOscillationGradientBoostedSignals::readFrom(CMMsl::RunningVerticalOscillationGradientBoostedSignals *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_106:
    v24 = v4 ^ 1;
  }

  else
  {
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
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_106;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 53) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_101;
        case 2u:
          *(this + 53) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_101;
        case 3u:
          *(this + 53) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_101;
        case 4u:
          *(this + 53) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_101;
        case 5u:
          *(this + 53) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_101;
        case 6u:
          *(this + 53) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_101;
        case 7u:
          *(this + 53) |= 0x1000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 25) = *(*a2 + v2);
          goto LABEL_101;
        case 8u:
          *(this + 53) |= 0x200000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 22) = *(*a2 + v2);
          goto LABEL_101;
        case 9u:
          *(this + 53) |= 0x100000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 21) = *(*a2 + v2);
          goto LABEL_101;
        case 0xAu:
          *(this + 53) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_101;
        case 0xBu:
          *(this + 53) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_101;
        case 0xCu:
          *(this + 53) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_101;
        case 0xDu:
          *(this + 53) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_101;
        case 0xEu:
          *(this + 53) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_101;
        case 0xFu:
          *(this + 53) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_101;
        case 0x10u:
          *(this + 53) |= 0x800000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 24) = *(*a2 + v2);
          goto LABEL_101;
        case 0x11u:
          *(this + 53) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_101;
        case 0x12u:
          *(this + 53) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_101;
        case 0x13u:
          *(this + 53) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_101;
        case 0x14u:
          *(this + 53) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_101;
        case 0x15u:
          *(this + 53) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_101;
        case 0x16u:
          *(this + 53) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_101;
        case 0x17u:
          *(this + 53) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_101;
        case 0x18u:
          *(this + 53) |= 0x400000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_97;
          }

          *(this + 23) = *(*a2 + v2);
          goto LABEL_101;
        case 0x19u:
          *(this + 53) |= 0x80000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_97:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 20) = *(*a2 + v2);
LABEL_101:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
          }

          break;
        case 0x1Au:
          *(this + 53) |= 0x2000000u;
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

          *(this + 208) = v23;
          break;
        default:
          goto LABEL_17;
      }

LABEL_102:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_106;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    do
    {
      if (!v19)
      {
        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_106;
      }

      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
    }

    while (!v14);
LABEL_17:
    if (PB::Reader::skip(a2))
    {
      v2 = *(a2 + 1);
      goto LABEL_102;
    }

    v24 = 0;
  }

  return v24 & 1;
}

uint64_t CMMsl::RunningVerticalOscillationGradientBoostedSignals::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 212);
  if ((v4 & 0x40000) != 0)
  {
    this = PB::Writer::write(a2, *(this + 152));
    v4 = *(v3 + 212);
    if ((v4 & 0x4000) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v4 & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 120));
  v4 = *(v3 + 212);
  if ((v4 & 0x400) == 0)
  {
LABEL_4:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 88));
  v4 = *(v3 + 212);
  if ((v4 & 0x800) == 0)
  {
LABEL_5:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 96));
  v4 = *(v3 + 212);
  if ((v4 & 0x1000) == 0)
  {
LABEL_6:
    if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 104));
  v4 = *(v3 + 212);
  if ((v4 & 2) == 0)
  {
LABEL_7:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 212);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_8:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 200));
  v4 = *(v3 + 212);
  if ((v4 & 0x200000) == 0)
  {
LABEL_9:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 176));
  v4 = *(v3 + 212);
  if ((v4 & 0x100000) == 0)
  {
LABEL_10:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 168));
  v4 = *(v3 + 212);
  if ((v4 & 0x20000) == 0)
  {
LABEL_11:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 144));
  v4 = *(v3 + 212);
  if ((v4 & 0x8000) == 0)
  {
LABEL_12:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 128));
  v4 = *(v3 + 212);
  if ((v4 & 0x200) == 0)
  {
LABEL_13:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 80));
  v4 = *(v3 + 212);
  if ((v4 & 0x40) == 0)
  {
LABEL_14:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 212);
  if ((v4 & 0x20) == 0)
  {
LABEL_15:
    if ((v4 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 212);
  if ((v4 & 8) == 0)
  {
LABEL_16:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 212);
  if ((v4 & 0x800000) == 0)
  {
LABEL_17:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 192));
  v4 = *(v3 + 212);
  if ((v4 & 0x10) == 0)
  {
LABEL_18:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 212);
  if ((v4 & 0x2000) == 0)
  {
LABEL_19:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 112));
  v4 = *(v3 + 212);
  if ((v4 & 0x100) == 0)
  {
LABEL_20:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 212);
  if ((v4 & 0x10000) == 0)
  {
LABEL_21:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::write(a2, *(v3 + 136));
  v4 = *(v3 + 212);
  if ((v4 & 0x80) == 0)
  {
LABEL_22:
    if ((v4 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 212);
  if ((v4 & 4) == 0)
  {
LABEL_23:
    if ((v4 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 212);
  if ((v4 & 1) == 0)
  {
LABEL_24:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 212);
  if ((v4 & 0x400000) == 0)
  {
LABEL_25:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

LABEL_52:
    this = PB::Writer::write(a2, *(v3 + 160));
    if ((*(v3 + 212) & 0x2000000) == 0)
    {
      return this;
    }

    goto LABEL_53;
  }

LABEL_51:
  this = PB::Writer::write(a2, *(v3 + 184));
  v4 = *(v3 + 212);
  if ((v4 & 0x80000) != 0)
  {
    goto LABEL_52;
  }

LABEL_26:
  if ((v4 & 0x2000000) == 0)
  {
    return this;
  }

LABEL_53:

  return PB::Writer::write(a2);
}

uint64_t CMMsl::RunningVerticalOscillationGradientBoostedSignals::hash_value(CMMsl::RunningVerticalOscillationGradientBoostedSignals *this)
{
  v1 = *(this + 53);
  if ((v1 & 0x40000) == 0)
  {
    v2 = 0.0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_3;
    }

LABEL_51:
    v3 = 0.0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_6;
    }

LABEL_52:
    v4 = 0.0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_9;
    }

LABEL_53:
    v5 = 0.0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_12;
    }

LABEL_54:
    v6 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_55:
    v7 = 0.0;
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_18;
    }

LABEL_56:
    v8 = 0.0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_21;
    }

LABEL_57:
    v9 = 0.0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_24;
    }

LABEL_58:
    v10 = 0.0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_27;
    }

LABEL_59:
    v11 = 0.0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    v12 = 0.0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_33;
    }

LABEL_61:
    v13 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_36;
    }

LABEL_62:
    v14 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_39;
    }

LABEL_63:
    v15 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_64;
  }

  v2 = *(this + 19);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_51;
  }

LABEL_3:
  v3 = *(this + 15);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_52;
  }

LABEL_6:
  v4 = *(this + 11);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_53;
  }

LABEL_9:
  v5 = *(this + 12);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_54;
  }

LABEL_12:
  v6 = *(this + 13);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_55;
  }

LABEL_15:
  v7 = *(this + 2);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_56;
  }

LABEL_18:
  v8 = *(this + 25);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_57;
  }

LABEL_21:
  v9 = *(this + 22);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_58;
  }

LABEL_24:
  v10 = *(this + 21);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_59;
  }

LABEL_27:
  v11 = *(this + 18);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_60;
  }

LABEL_30:
  v12 = *(this + 16);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_61;
  }

LABEL_33:
  v13 = *(this + 10);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_62;
  }

LABEL_36:
  v14 = *(this + 7);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_63;
  }

LABEL_39:
  v15 = *(this + 6);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  if ((v1 & 8) != 0)
  {
LABEL_42:
    v16 = *(this + 4);
    if (v16 == 0.0)
    {
      v16 = 0.0;
    }

    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_45;
    }

LABEL_65:
    v17 = 0.0;
    goto LABEL_66;
  }

LABEL_64:
  v16 = 0.0;
  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_65;
  }

LABEL_45:
  v17 = *(this + 24);
  if (v17 == 0.0)
  {
    v17 = 0.0;
  }

LABEL_66:
  if ((v1 & 0x10) == 0)
  {
    v18 = 0.0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_68;
    }

LABEL_96:
    v19 = 0.0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_71;
    }

LABEL_97:
    v20 = 0.0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_74;
    }

LABEL_98:
    v21 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_77;
    }

LABEL_99:
    v22 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_80;
    }

LABEL_100:
    v23 = 0.0;
    if (v1)
    {
      goto LABEL_83;
    }

LABEL_101:
    v24 = 0.0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_86;
    }

LABEL_102:
    v25 = 0.0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_89;
    }

    goto LABEL_103;
  }

  v18 = *(this + 5);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_96;
  }

LABEL_68:
  v19 = *(this + 14);
  if (v19 == 0.0)
  {
    v19 = 0.0;
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_97;
  }

LABEL_71:
  v20 = *(this + 9);
  if (v20 == 0.0)
  {
    v20 = 0.0;
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_98;
  }

LABEL_74:
  v21 = *(this + 17);
  if (v21 == 0.0)
  {
    v21 = 0.0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_99;
  }

LABEL_77:
  v22 = *(this + 8);
  if (v22 == 0.0)
  {
    v22 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_100;
  }

LABEL_80:
  v23 = *(this + 3);
  if (v23 == 0.0)
  {
    v23 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_101;
  }

LABEL_83:
  v24 = *(this + 1);
  if (v24 == 0.0)
  {
    v24 = 0.0;
  }

  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_102;
  }

LABEL_86:
  v25 = *(this + 23);
  if (v25 == 0.0)
  {
    v25 = 0.0;
  }

  if ((v1 & 0x80000) != 0)
  {
LABEL_89:
    v26 = *(this + 20);
    if (v26 == 0.0)
    {
      v26 = 0.0;
    }

    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_92;
    }

LABEL_104:
    v27 = 0;
    return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ *&v14 ^ *&v15 ^ *&v16 ^ *&v17 ^ *&v18 ^ *&v19 ^ *&v20 ^ *&v21 ^ *&v22 ^ *&v23 ^ *&v24 ^ *&v25 ^ *&v26 ^ v27;
  }

LABEL_103:
  v26 = 0.0;
  if ((v1 & 0x2000000) == 0)
  {
    goto LABEL_104;
  }

LABEL_92:
  v27 = *(this + 208);
  return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ *&v14 ^ *&v15 ^ *&v16 ^ *&v17 ^ *&v18 ^ *&v19 ^ *&v20 ^ *&v21 ^ *&v22 ^ *&v23 ^ *&v24 ^ *&v25 ^ *&v26 ^ v27;
}

void CMMsl::RunningVerticalOscillationSignals::~RunningVerticalOscillationSignals(CMMsl::RunningVerticalOscillationSignals *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::RunningVerticalOscillationSignals::RunningVerticalOscillationSignals(CMMsl::RunningVerticalOscillationSignals *this, const CMMsl::RunningVerticalOscillationSignals *a2)
{
  *this = &unk_286C23448;
  *(this + 52) = 0;
  v2 = *(a2 + 52);
  if ((v2 & 0x400) != 0)
  {
    result = *(a2 + 11);
    v3 = 1024;
    *(this + 52) = 1024;
    *(this + 11) = result;
    v2 = *(a2 + 52);
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x10000) != 0)
  {
LABEL_5:
    result = *(a2 + 17);
    v3 |= 0x10000u;
    *(this + 52) = v3;
    *(this + 17) = result;
    v2 = *(a2 + 52);
  }

LABEL_6:
  if (v2)
  {
    result = *(a2 + 1);
    v3 |= 1u;
    *(this + 52) = v3;
    *(this + 1) = result;
    v2 = *(a2 + 52);
    if ((v2 & 0x800000) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_32;
    }
  }

  else if ((v2 & 0x800000) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 24);
  v3 |= 0x800000u;
  *(this + 52) = v3;
  *(this + 24) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 52) = v3;
  *(this + 7) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x800) == 0)
  {
LABEL_10:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = *(a2 + 12);
  v3 |= 0x800u;
  *(this + 52) = v3;
  *(this + 12) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = *(a2 + 25);
  v3 |= 0x1000000u;
  *(this + 52) = v3;
  *(this + 25) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 52) = v3;
  *(this + 6) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x80) == 0)
  {
LABEL_13:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 52) = v3;
  *(this + 8) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x100000) == 0)
  {
LABEL_14:
    if ((v2 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = *(a2 + 21);
  v3 |= 0x100000u;
  *(this + 52) = v3;
  *(this + 21) = result;
  v2 = *(a2 + 52);
  if ((v2 & 8) == 0)
  {
LABEL_15:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = *(a2 + 4);
  v3 |= 8u;
  *(this + 52) = v3;
  *(this + 4) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x200000) == 0)
  {
LABEL_16:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = *(a2 + 22);
  v3 |= 0x200000u;
  *(this + 52) = v3;
  *(this + 22) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x8000) == 0)
  {
LABEL_17:
    if ((v2 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = *(a2 + 16);
  v3 |= 0x8000u;
  *(this + 52) = v3;
  *(this + 16) = result;
  v2 = *(a2 + 52);
  if ((v2 & 4) == 0)
  {
LABEL_18:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = *(a2 + 3);
  v3 |= 4u;
  *(this + 52) = v3;
  *(this + 3) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 52) = v3;
  *(this + 5) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x200) == 0)
  {
LABEL_20:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = *(a2 + 10);
  v3 |= 0x200u;
  *(this + 52) = v3;
  *(this + 10) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x2000) == 0)
  {
LABEL_21:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = *(a2 + 14);
  v3 |= 0x2000u;
  *(this + 52) = v3;
  *(this + 14) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x1000) == 0)
  {
LABEL_22:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = *(a2 + 13);
  v3 |= 0x1000u;
  *(this + 52) = v3;
  *(this + 13) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x4000) == 0)
  {
LABEL_23:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = *(a2 + 15);
  v3 |= 0x4000u;
  *(this + 52) = v3;
  *(this + 15) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x80000) == 0)
  {
LABEL_24:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = *(a2 + 20);
  v3 |= 0x80000u;
  *(this + 52) = v3;
  *(this + 20) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x400000) == 0)
  {
LABEL_25:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = *(a2 + 23);
  v3 |= 0x400000u;
  *(this + 52) = v3;
  *(this + 23) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x40000) == 0)
  {
LABEL_26:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = *(a2 + 19);
  v3 |= 0x40000u;
  *(this + 52) = v3;
  *(this + 19) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x20000) == 0)
  {
LABEL_27:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = *(a2 + 18);
  v3 |= 0x20000u;
  *(this + 52) = v3;
  *(this + 18) = result;
  v2 = *(a2 + 52);
  if ((v2 & 0x100) == 0)
  {
LABEL_28:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_52:
    result = *(a2 + 2);
    *(this + 52) = v3 | 2;
    *(this + 2) = result;
    return result;
  }

LABEL_51:
  result = *(a2 + 9);
  v3 |= 0x100u;
  *(this + 52) = v3;
  *(this + 9) = result;
  if ((*(a2 + 52) & 2) != 0)
  {
    goto LABEL_52;
  }

  return result;
}

CMMsl *CMMsl::RunningVerticalOscillationSignals::operator=(CMMsl *a1, const CMMsl::RunningVerticalOscillationSignals *a2)
{
  if (a1 != a2)
  {
    CMMsl::RunningVerticalOscillationSignals::RunningVerticalOscillationSignals(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::RunningVerticalOscillationSignals *a2, CMMsl::RunningVerticalOscillationSignals *a3)
{
  v3 = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v3;
  v4 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  v5 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v7;
  v8 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v8;
  v9 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v9;
  v10 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v10;
  v11 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v11;
  v12 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v12;
  v13 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v13;
  v14 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v14;
  v15 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v15;
  v16 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v16;
  v17 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v17;
  v18 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v18;
  v19 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v19;
  v20 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v20;
  v21 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v21;
  v22 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v22;
  v23 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v23;
  v24 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v24;
  v25 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v25;
  v26 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v26;
  v27 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v27;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double CMMsl::RunningVerticalOscillationSignals::RunningVerticalOscillationSignals(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23448;
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 208) = 0;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 72) = *(a2 + 72);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

CMMsl *CMMsl::RunningVerticalOscillationSignals::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::RunningVerticalOscillationSignals::RunningVerticalOscillationSignals(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::RunningVerticalOscillationSignals::formatText(CMMsl::RunningVerticalOscillationSignals *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 52);
  if (v5)
  {
    PB::TextFormatter::format(a2, "acceleration", *(this + 1));
    v5 = *(this + 52);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "centerOfMassAccelAmplitude", *(this + 2));
  v5 = *(this + 52);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "centerOfMassAccelMax", *(this + 3));
  v5 = *(this + 52);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "centripetalAccelMeanY", *(this + 4));
  v5 = *(this + 52);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "centripetalAccelMeanZ", *(this + 5));
  v5 = *(this + 52);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "height", *(this + 6));
  v5 = *(this + 52);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "position", *(this + 7));
  v5 = *(this + 52);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "rotationProjectedGravityAmplitude", *(this + 8));
  v5 = *(this + 52);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "rotationRateMean", *(this + 9));
  v5 = *(this + 52);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "rotationRateMeanX", *(this + 10));
  v5 = *(this + 52);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "startTime", *(this + 11));
  v5 = *(this + 52);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "strideLengthCadence", *(this + 12));
  v5 = *(this + 52);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "swingAccelAmplitudeY", *(this + 13));
  v5 = *(this + 52);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "swingAccelAmplitudeZ", *(this + 14));
  v5 = *(this + 52);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "swingAccelMaxY", *(this + 15));
  v5 = *(this + 52);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "swingAccelMaxZ", *(this + 16));
  v5 = *(this + 52);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "timestamp", *(this + 17));
  v5 = *(this + 52);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "userAccelAmplitudeZ", *(this + 18));
  v5 = *(this + 52);
  if ((v5 & 0x40000) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "userAccelMaxX", *(this + 19));
  v5 = *(this + 52);
  if ((v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "userAccelMaxY", *(this + 20));
  v5 = *(this + 52);
  if ((v5 & 0x100000) == 0)
  {
LABEL_22:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "userAccelMean", *(this + 21));
  v5 = *(this + 52);
  if ((v5 & 0x200000) == 0)
  {
LABEL_23:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "userAccelMeanY", *(this + 22));
  v5 = *(this + 52);
  if ((v5 & 0x400000) == 0)
  {
LABEL_24:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "userAccelProjectedGravityAmplitudeCadence", *(this + 23));
  v5 = *(this + 52);
  if ((v5 & 0x800000) == 0)
  {
LABEL_25:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "velocity", *(this + 24));
  if ((*(this + 52) & 0x1000000) != 0)
  {
LABEL_26:
    PB::TextFormatter::format(a2, "weight", *(this + 25));
  }

LABEL_27:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::RunningVerticalOscillationSignals::readFrom(CMMsl::RunningVerticalOscillationSignals *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_102:
    v22 = v4 ^ 1;
  }

  else
  {
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
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_102;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 52) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_97;
        case 2u:
          *(this + 52) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_97;
        case 3u:
          *(this + 52) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_97;
        case 4u:
          *(this + 52) |= 0x800000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 24) = *(*a2 + v2);
          goto LABEL_97;
        case 5u:
          *(this + 52) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_97;
        case 6u:
          *(this + 52) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_97;
        case 7u:
          *(this + 52) |= 0x1000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 25) = *(*a2 + v2);
          goto LABEL_97;
        case 8u:
          *(this + 52) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_97;
        case 9u:
          *(this + 52) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_97;
        case 0xAu:
          *(this + 52) |= 0x100000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 21) = *(*a2 + v2);
          goto LABEL_97;
        case 0xBu:
          *(this + 52) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_97;
        case 0xCu:
          *(this + 52) |= 0x200000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 22) = *(*a2 + v2);
          goto LABEL_97;
        case 0xDu:
          *(this + 52) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_97;
        case 0xEu:
          *(this + 52) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_97;
        case 0xFu:
          *(this + 52) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_97;
        case 0x10u:
          *(this + 52) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_97;
        case 0x11u:
          *(this + 52) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_97;
        case 0x12u:
          *(this + 52) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_97;
        case 0x13u:
          *(this + 52) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_97;
        case 0x14u:
          *(this + 52) |= 0x80000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_97;
        case 0x15u:
          *(this + 52) |= 0x400000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 23) = *(*a2 + v2);
          goto LABEL_97;
        case 0x16u:
          *(this + 52) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_97;
        case 0x17u:
          *(this + 52) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_97;
        case 0x18u:
          *(this + 52) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_95;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_97;
        case 0x19u:
          *(this + 52) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_95:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 2) = *(*a2 + v2);
LABEL_97:
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
          }

          break;
        default:
          goto LABEL_17;
      }

LABEL_98:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_102;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    do
    {
      if (!v19)
      {
        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_102;
      }

      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
    }

    while (!v14);
LABEL_17:
    if (PB::Reader::skip(a2))
    {
      v2 = *(a2 + 1);
      goto LABEL_98;
    }

    v22 = 0;
  }

  return v22 & 1;
}

uint64_t CMMsl::RunningVerticalOscillationSignals::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 208);
  if ((v4 & 0x400) != 0)
  {
    this = PB::Writer::write(a2, *(this + 88));
    v4 = *(v3 + 208);
    if ((v4 & 0x10000) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v4 & 0x10000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 136));
  v4 = *(v3 + 208);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 208);
  if ((v4 & 0x800000) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 192));
  v4 = *(v3 + 208);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 208);
  if ((v4 & 0x800) == 0)
  {
LABEL_7:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 96));
  v4 = *(v3 + 208);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_8:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 200));
  v4 = *(v3 + 208);
  if ((v4 & 0x20) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 208);
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 208);
  if ((v4 & 0x100000) == 0)
  {
LABEL_11:
    if ((v4 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 168));
  v4 = *(v3 + 208);
  if ((v4 & 8) == 0)
  {
LABEL_12:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 208);
  if ((v4 & 0x200000) == 0)
  {
LABEL_13:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 176));
  v4 = *(v3 + 208);
  if ((v4 & 0x8000) == 0)
  {
LABEL_14:
    if ((v4 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 128));
  v4 = *(v3 + 208);
  if ((v4 & 4) == 0)
  {
LABEL_15:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 208);
  if ((v4 & 0x10) == 0)
  {
LABEL_16:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 208);
  if ((v4 & 0x200) == 0)
  {
LABEL_17:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 80));
  v4 = *(v3 + 208);
  if ((v4 & 0x2000) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 112));
  v4 = *(v3 + 208);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2, *(v3 + 104));
  v4 = *(v3 + 208);
  if ((v4 & 0x4000) == 0)
  {
LABEL_20:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 120));
  v4 = *(v3 + 208);
  if ((v4 & 0x80000) == 0)
  {
LABEL_21:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::write(a2, *(v3 + 160));
  v4 = *(v3 + 208);
  if ((v4 & 0x400000) == 0)
  {
LABEL_22:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::write(a2, *(v3 + 184));
  v4 = *(v3 + 208);
  if ((v4 & 0x40000) == 0)
  {
LABEL_23:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::write(a2, *(v3 + 152));
  v4 = *(v3 + 208);
  if ((v4 & 0x20000) == 0)
  {
LABEL_24:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_25;
    }

LABEL_50:
    this = PB::Writer::write(a2, *(v3 + 72));
    if ((*(v3 + 208) & 2) == 0)
    {
      return this;
    }

    goto LABEL_51;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 144));
  v4 = *(v3 + 208);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_50;
  }

LABEL_25:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_51:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::RunningVerticalOscillationSignals::hash_value(CMMsl::RunningVerticalOscillationSignals *this)
{
  v1 = *(this + 52);
  if ((v1 & 0x400) == 0)
  {
    v2 = 0.0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

LABEL_51:
    v3 = 0.0;
    if (v1)
    {
      goto LABEL_6;
    }

LABEL_52:
    v4 = 0.0;
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_9;
    }

LABEL_53:
    v5 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_12;
    }

LABEL_54:
    v6 = 0.0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_15;
    }

LABEL_55:
    v7 = 0.0;
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_18;
    }

LABEL_56:
    v8 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_21;
    }

LABEL_57:
    v9 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_24;
    }

LABEL_58:
    v10 = 0.0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_27;
    }

LABEL_59:
    v11 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    v12 = 0.0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_33;
    }

LABEL_61:
    v13 = 0.0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_36;
    }

LABEL_62:
    v14 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_39;
    }

LABEL_63:
    v15 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_64;
  }

  v2 = *(this + 11);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_51;
  }

LABEL_3:
  v3 = *(this + 17);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_6:
  v4 = *(this + 1);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_53;
  }

LABEL_9:
  v5 = *(this + 24);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_54;
  }

LABEL_12:
  v6 = *(this + 7);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_55;
  }

LABEL_15:
  v7 = *(this + 12);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_56;
  }

LABEL_18:
  v8 = *(this + 25);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_57;
  }

LABEL_21:
  v9 = *(this + 6);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_58;
  }

LABEL_24:
  v10 = *(this + 8);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_59;
  }

LABEL_27:
  v11 = *(this + 21);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_60;
  }

LABEL_30:
  v12 = *(this + 4);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_61;
  }

LABEL_33:
  v13 = *(this + 22);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_62;
  }

LABEL_36:
  v14 = *(this + 16);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_63;
  }

LABEL_39:
  v15 = *(this + 3);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  if ((v1 & 0x10) != 0)
  {
LABEL_42:
    v16 = *(this + 5);
    if (v16 == 0.0)
    {
      v16 = 0.0;
    }

    if ((v1 & 0x200) != 0)
    {
      goto LABEL_45;
    }

LABEL_65:
    v17 = 0.0;
    goto LABEL_66;
  }

LABEL_64:
  v16 = 0.0;
  if ((v1 & 0x200) == 0)
  {
    goto LABEL_65;
  }

LABEL_45:
  v17 = *(this + 10);
  if (v17 == 0.0)
  {
    v17 = 0.0;
  }

LABEL_66:
  if ((v1 & 0x2000) == 0)
  {
    v18 = 0.0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_68;
    }

LABEL_95:
    v19 = 0.0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_71;
    }

LABEL_96:
    v20 = 0.0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_74;
    }

LABEL_97:
    v21 = 0.0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_77;
    }

LABEL_98:
    v22 = 0.0;
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_80;
    }

LABEL_99:
    v23 = 0.0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_83;
    }

LABEL_100:
    v24 = 0.0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_86;
    }

    goto LABEL_101;
  }

  v18 = *(this + 14);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_95;
  }

LABEL_68:
  v19 = *(this + 13);
  if (v19 == 0.0)
  {
    v19 = 0.0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_96;
  }

LABEL_71:
  v20 = *(this + 15);
  if (v20 == 0.0)
  {
    v20 = 0.0;
  }

  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_97;
  }

LABEL_74:
  v21 = *(this + 20);
  if (v21 == 0.0)
  {
    v21 = 0.0;
  }

  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_98;
  }

LABEL_77:
  v22 = *(this + 23);
  if (v22 == 0.0)
  {
    v22 = 0.0;
  }

  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_99;
  }

LABEL_80:
  v23 = *(this + 19);
  if (v23 == 0.0)
  {
    v23 = 0.0;
  }

  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_100;
  }

LABEL_83:
  v24 = *(this + 18);
  if (v24 == 0.0)
  {
    v24 = 0.0;
  }

  if ((v1 & 0x100) != 0)
  {
LABEL_86:
    v25 = *(this + 9);
    if (v25 == 0.0)
    {
      v25 = 0.0;
    }

    if ((v1 & 2) != 0)
    {
      goto LABEL_89;
    }

LABEL_102:
    v26 = 0.0;
    return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ *&v14 ^ *&v15 ^ *&v16 ^ *&v17 ^ *&v18 ^ *&v19 ^ *&v20 ^ *&v21 ^ *&v22 ^ *&v23 ^ *&v24 ^ *&v25 ^ *&v26;
  }

LABEL_101:
  v25 = 0.0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_102;
  }

LABEL_89:
  v26 = *(this + 2);
  if (v26 == 0.0)
  {
    v26 = 0.0;
  }

  return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ *&v10 ^ *&v11 ^ *&v12 ^ *&v13 ^ *&v14 ^ *&v15 ^ *&v16 ^ *&v17 ^ *&v18 ^ *&v19 ^ *&v20 ^ *&v21 ^ *&v22 ^ *&v23 ^ *&v24 ^ *&v25 ^ *&v26;
}

uint64_t CMMsl::SMEstimatedTimeOfArrival::SMEstimatedTimeOfArrival(uint64_t this)
{
  *this = &unk_286C23480;
  *(this + 36) = 0;
  return this;
}

{
  *this = &unk_286C23480;
  *(this + 36) = 0;
  return this;
}

void CMMsl::SMEstimatedTimeOfArrival::~SMEstimatedTimeOfArrival(CMMsl::SMEstimatedTimeOfArrival *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::SMEstimatedTimeOfArrival::SMEstimatedTimeOfArrival(uint64_t this, const CMMsl::SMEstimatedTimeOfArrival *a2)
{
  *this = &unk_286C23480;
  *(this + 36) = 0;
  v2 = *(a2 + 36);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 3);
    v3 = 4;
    *(this + 36) = 4;
    *(this + 24) = v4;
    v2 = *(a2 + 36);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 36))
  {
LABEL_5:
    v5 = *(a2 + 1);
    v3 |= 1u;
    *(this + 36) = v3;
    *(this + 8) = v5;
    v2 = *(a2 + 36);
  }

LABEL_6:
  if ((v2 & 2) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return this;
    }

LABEL_10:
    v7 = *(a2 + 8);
    *(this + 36) = v3 | 8;
    *(this + 32) = v7;
    return this;
  }

  v6 = *(a2 + 2);
  v3 |= 2u;
  *(this + 36) = v3;
  *(this + 16) = v6;
  if ((*(a2 + 36) & 8) != 0)
  {
    goto LABEL_10;
  }

  return this;
}

uint64_t CMMsl::SMEstimatedTimeOfArrival::operator=(uint64_t a1, const CMMsl::SMEstimatedTimeOfArrival *a2)
{
  if (a1 != a2)
  {
    CMMsl::SMEstimatedTimeOfArrival::SMEstimatedTimeOfArrival(v7, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v3;
    *&v3 = v10;
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    *(a1 + 24) = v9;
    *(a1 + 32) = v3;
    v9 = v4;
    v10 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::SMEstimatedTimeOfArrival *a2, CMMsl::SMEstimatedTimeOfArrival *a3)
{
  v3 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  v7 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v7;
  return result;
}

double CMMsl::SMEstimatedTimeOfArrival::SMEstimatedTimeOfArrival(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23480;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

{
  *a1 = &unk_286C23480;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

uint64_t CMMsl::SMEstimatedTimeOfArrival::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_286C23480;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *(a2 + 36) = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v3;
    v9 = v6;
    *&v3 = *(a1 + 24);
    *&v6 = *(a1 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    v10 = v3;
    v11 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::SMEstimatedTimeOfArrival::formatText(CMMsl::SMEstimatedTimeOfArrival *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 36);
  if (v5)
  {
    PB::TextFormatter::format(a2, "calculatedArrival", *(this + 1));
    v5 = *(this + 36);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 36) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "motionState");
  v5 = *(this + 36);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "originalArrival", *(this + 2));
  if ((*(this + 36) & 4) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "timestamp", *(this + 3));
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SMEstimatedTimeOfArrival::readFrom(CMMsl::SMEstimatedTimeOfArrival *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
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
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        *(this + 36) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
LABEL_40:
          *(a2 + 24) = 1;
          goto LABEL_56;
        }

        *(this + 2) = *(*a2 + v2);
        goto LABEL_50;
      }

      if (v22 == 4)
      {
        *(this + 36) |= 8u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(a2 + 1);
          }

          v33 = (v24 + v23);
          v34 = v2 - v23;
          v35 = v23 + 1;
          while (1)
          {
            if (!v34)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_55;
            }

            v36 = v35;
            v37 = *v33;
            *(a2 + 1) = v36;
            v27 |= (v37 & 0x7F) << v31;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            ++v33;
            --v34;
            v35 = v36 + 1;
            v14 = v32++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_54;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_54:
          v2 = v36;
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

LABEL_55:
        *(this + 8) = v27;
        goto LABEL_56;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 36) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_40;
        }

        *(this + 3) = *(*a2 + v2);
        goto LABEL_50;
      }

      if (v22 == 2)
      {
        *(this + 36) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_40;
        }

        *(this + 1) = *(*a2 + v2);
LABEL_50:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_56;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v38 = 0;
      return v38 & 1;
    }

    v2 = *(a2 + 1);
LABEL_56:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::SMEstimatedTimeOfArrival::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 36);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 24));
    v4 = *(v3 + 36);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 16));
      if ((*(v3 + 36) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 36) & 1) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 36);
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_9:

  return PB::Writer::writeVarInt(a2);
}

BOOL CMMsl::SMEstimatedTimeOfArrival::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 36) & 4) != 0)
  {
    if ((*(a2 + 36) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 4) != 0)
  {
    return 0;
  }

  if (*(a1 + 36))
  {
    if ((*(a2 + 36) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 36))
  {
    return 0;
  }

  if ((*(a1 + 36) & 2) != 0)
  {
    if ((*(a2 + 36) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 36) & 8) == 0;
  if ((*(a1 + 36) & 8) != 0)
  {
    return (*(a2 + 36) & 8) != 0 && *(a1 + 32) == *(a2 + 32);
  }

  return v2;
}

uint64_t CMMsl::SMEstimatedTimeOfArrival::hash_value(CMMsl::SMEstimatedTimeOfArrival *this)
{
  if ((*(this + 36) & 4) == 0)
  {
    v1 = 0.0;
    if (*(this + 36))
    {
      goto LABEL_3;
    }

LABEL_13:
    v2 = 0.0;
    if ((*(this + 36) & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  v1 = *(this + 3);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 36) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 36) & 2) != 0)
  {
LABEL_6:
    v3 = *(this + 2);
    if (v3 == 0.0)
    {
      v3 = 0.0;
    }

    if ((*(this + 36) & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v4 = 0;
    return *&v2 ^ *&v1 ^ *&v3 ^ v4;
  }

LABEL_14:
  v3 = 0.0;
  if ((*(this + 36) & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v4 = *(this + 8);
  return *&v2 ^ *&v1 ^ *&v3 ^ v4;
}

uint64_t CMMsl::SMLastScreenLock::SMLastScreenLock(uint64_t this)
{
  *this = &unk_286C234B8;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_286C234B8;
  *(this + 24) = 0;
  return this;
}

void CMMsl::SMLastScreenLock::~SMLastScreenLock(CMMsl::SMLastScreenLock *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::SMLastScreenLock::SMLastScreenLock(CMMsl::SMLastScreenLock *this, const CMMsl::SMLastScreenLock *a2)
{
  *this = &unk_286C234B8;
  *(this + 6) = 0;
  if ((*(a2 + 24) & 2) != 0)
  {
    result = *(a2 + 2);
    *(this + 24) = 2;
    *(this + 2) = result;
    v2 = 3;
    if ((*(a2 + 24) & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 24))
  {
LABEL_5:
    result = *(a2 + 1);
    *(this + 24) = v2;
    *(this + 1) = result;
  }

  return result;
}

uint64_t CMMsl::SMLastScreenLock::operator=(uint64_t a1, const CMMsl::SMLastScreenLock *a2)
{
  if (a1 != a2)
  {
    CMMsl::SMLastScreenLock::SMLastScreenLock(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(&v6);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::SMLastScreenLock *a2, CMMsl::SMLastScreenLock *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::SMLastScreenLock::SMLastScreenLock(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C234B8;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_286C234B8;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::SMLastScreenLock::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_286C234B8;
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v9 = *(a1 + 24);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 24) = v3;
    *(a1 + 8) = v5;
    v8 = v4;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t CMMsl::SMLastScreenLock::formatText(CMMsl::SMLastScreenLock *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    PB::TextFormatter::format(a2, "lastUnlockDate", *(this + 1));
    v5 = *(this + 24);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SMLastScreenLock::readFrom(CMMsl::SMLastScreenLock *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = (v7 + v2);
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = v2 + 1;
        while (v19)
        {
          v21 = *v17;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_18;
          }

          v15 += 7;
          ++v17;
          --v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
            goto LABEL_24;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_35;
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
          goto LABEL_24;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_35;
      }

      if ((v10 >> 3) == 2)
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 24) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_28;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_30:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_31;
      }

LABEL_24:
      if (!PB::Reader::skip(a2))
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
LABEL_31:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_35;
      }
    }

    *(this + 24) |= 1u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
    {
LABEL_28:
      *(a2 + 24) = 1;
      goto LABEL_31;
    }

    *(this + 1) = *(*a2 + v2);
    goto LABEL_30;
  }

LABEL_35:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::SMLastScreenLock::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16));
    v4 = *(v3 + 24);
  }

  if (v4)
  {
    v5 = *(v3 + 8);

    return PB::Writer::write(a2, v5);
  }

  return this;
}

BOOL CMMsl::SMLastScreenLock::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    if ((*(a2 + 24) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 24) & 1) == 0;
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t CMMsl::SMLastScreenLock::hash_value(CMMsl::SMLastScreenLock *this)
{
  if ((*(this + 24) & 2) != 0)
  {
    v1 = *(this + 2);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if (*(this + 24))
    {
      goto LABEL_3;
    }

LABEL_9:
    v2 = 0.0;
    return *&v2 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return *&v2 ^ *&v1;
}

uint64_t CMMsl::SMLockStateChange::SMLockStateChange(uint64_t this)
{
  *this = &unk_286C234F0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_286C234F0;
  *(this + 24) = 0;
  return this;
}

void CMMsl::SMLockStateChange::~SMLockStateChange(CMMsl::SMLockStateChange *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::SMLockStateChange::SMLockStateChange(CMMsl::SMLockStateChange *this, const CMMsl::SMLockStateChange *a2)
{
  *this = &unk_286C234F0;
  *(this + 6) = 0;
  if ((*(a2 + 24) & 2) != 0)
  {
    result = *(a2 + 2);
    *(this + 24) = 2;
    *(this + 2) = result;
    v2 = 3;
    if ((*(a2 + 24) & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 24))
  {
LABEL_5:
    result = *(a2 + 1);
    *(this + 24) = v2;
    *(this + 1) = result;
  }

  return result;
}

uint64_t CMMsl::SMLockStateChange::operator=(uint64_t a1, const CMMsl::SMLockStateChange *a2)
{
  if (a1 != a2)
  {
    CMMsl::SMLockStateChange::SMLockStateChange(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(&v6);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::SMLockStateChange *a2, CMMsl::SMLockStateChange *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::SMLockStateChange::SMLockStateChange(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C234F0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_286C234F0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::SMLockStateChange::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_286C234F0;
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v9 = *(a1 + 24);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 24) = v3;
    *(a1 + 8) = v5;
    v8 = v4;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t CMMsl::SMLockStateChange::formatText(CMMsl::SMLockStateChange *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    PB::TextFormatter::format(a2, "stateChangeType", *(this + 1));
    v5 = *(this + 24);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SMLockStateChange::readFrom(CMMsl::SMLockStateChange *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = (v7 + v2);
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = v2 + 1;
        while (v19)
        {
          v21 = *v17;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_18;
          }

          v15 += 7;
          ++v17;
          --v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
            goto LABEL_24;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_35;
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
          goto LABEL_24;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_35;
      }

      if ((v10 >> 3) == 2)
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 24) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_28;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_30:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_31;
      }

LABEL_24:
      if (!PB::Reader::skip(a2))
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
LABEL_31:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_35;
      }
    }

    *(this + 24) |= 1u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
    {
LABEL_28:
      *(a2 + 24) = 1;
      goto LABEL_31;
    }

    *(this + 1) = *(*a2 + v2);
    goto LABEL_30;
  }

LABEL_35:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::SMLockStateChange::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16));
    v4 = *(v3 + 24);
  }

  if (v4)
  {
    v5 = *(v3 + 8);

    return PB::Writer::write(a2, v5);
  }

  return this;
}

BOOL CMMsl::SMLockStateChange::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    if ((*(a2 + 24) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 24) & 1) == 0;
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t CMMsl::SMLockStateChange::hash_value(CMMsl::SMLockStateChange *this)
{
  if ((*(this + 24) & 2) != 0)
  {
    v1 = *(this + 2);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if (*(this + 24))
    {
      goto LABEL_3;
    }

LABEL_9:
    v2 = 0.0;
    return *&v2 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return *&v2 ^ *&v1;
}

uint64_t CMMsl::SMSessionConfiguration::SMSessionConfiguration(uint64_t this)
{
  *this = &unk_286C23528;
  *(this + 56) = 0;
  return this;
}

{
  *this = &unk_286C23528;
  *(this + 56) = 0;
  return this;
}

void CMMsl::SMSessionConfiguration::~SMSessionConfiguration(CMMsl::SMSessionConfiguration *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::SMSessionConfiguration::SMSessionConfiguration(CMMsl::SMSessionConfiguration *this, const CMMsl::SMSessionConfiguration *a2)
{
  *this = &unk_286C23528;
  *(this + 14) = 0;
  v2 = *(a2 + 56);
  if ((v2 & 0x10) != 0)
  {
    result = *(a2 + 5);
    v3 = 16;
    *(this + 56) = 16;
    *(this + 5) = result;
    v2 = *(a2 + 56);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 56) & 8) != 0)
  {
LABEL_5:
    result = *(a2 + 4);
    v3 |= 8u;
    *(this + 56) = v3;
    *(this + 4) = result;
    v2 = *(a2 + 56);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 56) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 56);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
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

  result = *(a2 + 3);
  v3 |= 4u;
  *(this + 56) = v3;
  *(this + 3) = result;
  v2 = *(a2 + 56);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      return result;
    }

LABEL_14:
    result = *(a2 + 6);
    *(this + 56) = v3 | 0x20;
    *(this + 6) = result;
    return result;
  }

LABEL_13:
  result = *(a2 + 1);
  v3 |= 1u;
  *(this + 56) = v3;
  *(this + 1) = result;
  if ((*(a2 + 56) & 0x20) != 0)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t CMMsl::SMSessionConfiguration::operator=(uint64_t a1, const CMMsl::SMSessionConfiguration *a2)
{
  if (a1 != a2)
  {
    CMMsl::SMSessionConfiguration::SMSessionConfiguration(&v8, a2);
    v3 = *(a1 + 56);
    *(a1 + 56) = v12;
    v12 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::SMSessionConfiguration *a2, CMMsl::SMSessionConfiguration *a3)
{
  v3 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  return result;
}

double CMMsl::SMSessionConfiguration::SMSessionConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C23528;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

{
  *a1 = &unk_286C23528;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

uint64_t CMMsl::SMSessionConfiguration::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_286C23528;
    v3 = *(a2 + 56);
    *(a2 + 56) = 0;
    v13 = *(a1 + 56);
    v11 = *(a1 + 24);
    v4 = *(a2 + 8);
    v5 = *(a2 + 24);
    v10 = *(a1 + 8);
    v6 = *(a1 + 40);
    v7 = *(a2 + 40);
    *(a1 + 56) = v3;
    *(a1 + 24) = v5;
    *(a1 + 8) = v4;
    *(a1 + 40) = v7;
    v12 = v6;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::SMSessionConfiguration::formatText(CMMsl::SMSessionConfiguration *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 56);
  if (v5)
  {
    PB::TextFormatter::format(a2, "destinationHunc", *(this + 1));
    v5 = *(this + 56);
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

  else if ((*(this + 56) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "destinationLat", *(this + 2));
  v5 = *(this + 56);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "destinationLon", *(this + 3));
  v5 = *(this + 56);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "sessionEndTimestamp", *(this + 4));
  v5 = *(this + 56);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "sessionStartTimestamp", *(this + 5));
  if ((*(this + 56) & 0x20) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(a2, "transportationType", *(this + 6));
  }

LABEL_8:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SMSessionConfiguration::readFrom(CMMsl::SMSessionConfiguration *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
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
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 3)
    {
      switch(v22)
      {
        case 4:
          *(this + 56) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_44:
            *(a2 + 24) = 1;
            goto LABEL_47;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_46;
        case 5:
          *(this + 56) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_46;
        case 6:
          *(this + 56) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_46;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          *(this + 56) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_46;
        case 2:
          *(this + 56) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_46;
        case 3:
          *(this + 56) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 2) = *(*a2 + v2);
LABEL_46:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_47;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_47:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::SMSessionConfiguration::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 56);
  if ((v4 & 0x10) != 0)
  {
    this = PB::Writer::write(a2, *(this + 40));
    v4 = *(v3 + 56);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(this + 56) & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 56);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 56);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = PB::Writer::write(a2, *(v3 + 8));
    if ((*(v3 + 56) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 56);
  if (v4)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v5 = *(v3 + 48);

  return PB::Writer::write(a2, v5);
}

BOOL CMMsl::SMSessionConfiguration::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 56) & 0x10) != 0)
  {
    if ((*(a2 + 56) & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 8) != 0)
  {
    if ((*(a2 + 56) & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 2) != 0)
  {
    if ((*(a2 + 56) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 56) & 4) != 0)
  {
    if ((*(a2 + 56) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 4) != 0)
  {
    return 0;
  }

  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 56))
  {
    return 0;
  }

  v2 = (*(a2 + 56) & 0x20) == 0;
  if ((*(a1 + 56) & 0x20) != 0)
  {
    return (*(a2 + 56) & 0x20) != 0 && *(a1 + 48) == *(a2 + 48);
  }

  return v2;
}

uint64_t CMMsl::SMSessionConfiguration::hash_value(CMMsl::SMSessionConfiguration *this)
{
  if ((*(this + 56) & 0x10) == 0)
  {
    v1 = 0.0;
    if ((*(this + 56) & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    v2 = 0.0;
    if ((*(this + 56) & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    v3 = 0.0;
    if ((*(this + 56) & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v4 = 0.0;
    if (*(this + 56))
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v1 = *(this + 5);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 56) & 8) == 0)
  {
    goto LABEL_21;
  }

LABEL_3:
  v2 = *(this + 4);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 56) & 2) == 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 56) & 4) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  v4 = *(this + 3);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if (*(this + 56))
  {
LABEL_12:
    v5 = *(this + 1);
    if (v5 == 0.0)
    {
      v5 = 0.0;
    }

    if ((*(this + 56) & 0x20) != 0)
    {
      goto LABEL_15;
    }

LABEL_25:
    v6 = 0.0;
    return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ *&v5 ^ *&v6;
  }

LABEL_24:
  v5 = 0.0;
  if ((*(this + 56) & 0x20) == 0)
  {
    goto LABEL_25;
  }

LABEL_15:
  v6 = *(this + 6);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ *&v5 ^ *&v6;
}

void CMMsl::SPUPlaybackExampleDeviceMotion::~SPUPlaybackExampleDeviceMotion(CMMsl::SPUPlaybackExampleDeviceMotion *this)
{
  v2 = *(this + 1);
  *this = &unk_286C23560;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::SPUPlaybackExampleDeviceMotion::~SPUPlaybackExampleDeviceMotion(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::SPUPlaybackExampleDeviceMotion *CMMsl::SPUPlaybackExampleDeviceMotion::SPUPlaybackExampleDeviceMotion(CMMsl::SPUPlaybackExampleDeviceMotion *this, const CMMsl::DeviceMotion **a2)
{
  *this = &unk_286C23560;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::SPUPlaybackExampleDeviceMotion::operator=(uint64_t a1, const CMMsl::DeviceMotion **a2)
{
  if (a1 != a2)
  {
    CMMsl::SPUPlaybackExampleDeviceMotion::SPUPlaybackExampleDeviceMotion(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::SPUPlaybackExampleDeviceMotion::~SPUPlaybackExampleDeviceMotion(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::SPUPlaybackExampleDeviceMotion *a2, CMMsl::SPUPlaybackExampleDeviceMotion *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::SPUPlaybackExampleDeviceMotion::SPUPlaybackExampleDeviceMotion(void *a1, uint64_t a2)
{
  *a1 = &unk_286C23560;
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
  *a1 = &unk_286C23560;
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

uint64_t CMMsl::SPUPlaybackExampleDeviceMotion::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C23560;
    v6[1] = v4;
    CMMsl::SPUPlaybackExampleDeviceMotion::~SPUPlaybackExampleDeviceMotion(v6);
  }

  return a1;
}

uint64_t CMMsl::SPUPlaybackExampleDeviceMotion::formatText(CMMsl::SPUPlaybackExampleDeviceMotion *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SPUPlaybackExampleDeviceMotion::readFrom(CMMsl::SPUPlaybackExampleDeviceMotion *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

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
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::SPUPlaybackExampleDeviceMotion::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::DeviceMotion *CMMsl::SPUPlaybackExampleDeviceMotion::hash_value(CMMsl::SPUPlaybackExampleDeviceMotion *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::DeviceMotion::hash_value(result);
  }

  return result;
}

void *CMMsl::SPUPlaybackExampleDeviceMotion::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::SPUPlaybackExampleMotionStateUpdate::~SPUPlaybackExampleMotionStateUpdate(CMMsl::SPUPlaybackExampleMotionStateUpdate *this)
{
  v2 = *(this + 1);
  *this = &unk_286C23598;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::SPUPlaybackExampleMotionStateUpdate::~SPUPlaybackExampleMotionStateUpdate(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::SPUPlaybackExampleMotionStateUpdate *CMMsl::SPUPlaybackExampleMotionStateUpdate::SPUPlaybackExampleMotionStateUpdate(CMMsl::SPUPlaybackExampleMotionStateUpdate *this, const CMMsl::MotionStateUpdate **a2)
{
  *this = &unk_286C23598;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::SPUPlaybackExampleMotionStateUpdate::operator=(uint64_t a1, const CMMsl::MotionStateUpdate **a2)
{
  if (a1 != a2)
  {
    CMMsl::SPUPlaybackExampleMotionStateUpdate::SPUPlaybackExampleMotionStateUpdate(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::SPUPlaybackExampleMotionStateUpdate::~SPUPlaybackExampleMotionStateUpdate(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::SPUPlaybackExampleMotionStateUpdate *a2, CMMsl::SPUPlaybackExampleMotionStateUpdate *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::SPUPlaybackExampleMotionStateUpdate::SPUPlaybackExampleMotionStateUpdate(void *a1, uint64_t a2)
{
  *a1 = &unk_286C23598;
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
  *a1 = &unk_286C23598;
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

uint64_t CMMsl::SPUPlaybackExampleMotionStateUpdate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C23598;
    v6[1] = v4;
    CMMsl::SPUPlaybackExampleMotionStateUpdate::~SPUPlaybackExampleMotionStateUpdate(v6);
  }

  return a1;
}

uint64_t CMMsl::SPUPlaybackExampleMotionStateUpdate::formatText(CMMsl::SPUPlaybackExampleMotionStateUpdate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SPUPlaybackExampleMotionStateUpdate::readFrom(CMMsl::SPUPlaybackExampleMotionStateUpdate *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

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
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::SPUPlaybackExampleMotionStateUpdate::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::MotionStateUpdate *CMMsl::SPUPlaybackExampleMotionStateUpdate::hash_value(CMMsl::SPUPlaybackExampleMotionStateUpdate *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::MotionStateUpdate::hash_value(result);
  }

  return result;
}

void *CMMsl::SPUPlaybackExampleMotionStateUpdate::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::SafetyCompanionStatus::~SafetyCompanionStatus(CMMsl::SafetyCompanionStatus *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::SafetyCompanionStatus::SafetyCompanionStatus(uint64_t this, const CMMsl::SafetyCompanionStatus *a2)
{
  *this = &unk_286C235D0;
  *(this + 20) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 1);
    *(this + 20) = 1;
    *(this + 8) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 2) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 4);
    *(this + 20) = v2;
    *(this + 16) = v4;
  }

  return this;
}

uint64_t CMMsl::SafetyCompanionStatus::operator=(uint64_t a1, const CMMsl::SafetyCompanionStatus *a2)
{
  if (a1 != a2)
  {
    CMMsl::SafetyCompanionStatus::SafetyCompanionStatus(v7, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v3;
    v4 = *(a1 + 16);
    LODWORD(v3) = *(a1 + 20);
    v5 = v10;
    *(a1 + 16) = v9;
    *(a1 + 20) = v5;
    v9 = v4;
    v10 = v3;
    PB::Base::~Base(v7);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::SafetyCompanionStatus *a2, CMMsl::SafetyCompanionStatus *a3)
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

uint64_t CMMsl::SafetyCompanionStatus::SafetyCompanionStatus(uint64_t result, uint64_t a2)
{
  *result = &unk_286C235D0;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  return result;
}

{
  *result = &unk_286C235D0;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::SafetyCompanionStatus::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 16);
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v5 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    v8[0] = &unk_286C235D0;
    v8[1] = v5;
    LODWORD(v5) = *(a1 + 16);
    v6 = *(a1 + 20);
    *(a1 + 16) = v4;
    *(a1 + 20) = v3;
    v9 = v5;
    v10 = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::SafetyCompanionStatus::formatText(CMMsl::SafetyCompanionStatus *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "code");
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SafetyCompanionStatus::readFrom(CMMsl::SafetyCompanionStatus *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        break;
      }

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
          goto LABEL_28;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_69;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 2u;
        v30 = *(a2 + 1);
        v2 = *(a2 + 2);
        v31 = *a2;
        if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
        {
          v45 = 0;
          v46 = 0;
          v34 = 0;
          if (v2 <= v30)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v47 = (v31 + v30);
          v48 = v3 - v30;
          v49 = v30 + 1;
          while (1)
          {
            if (!v48)
            {
              LODWORD(v34) = 0;
              *(a2 + 24) = 1;
              goto LABEL_64;
            }

            v50 = v49;
            v51 = *v47;
            *(a2 + 1) = v50;
            v34 |= (v51 & 0x7F) << v45;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            ++v47;
            --v48;
            v49 = v50 + 1;
            v14 = v46++ > 8;
            if (v14)
            {
              LODWORD(v34) = 0;
              goto LABEL_63;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v34) = 0;
          }

LABEL_63:
          v3 = v50;
        }

        else
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = (v31 + v30);
          v36 = v30 + 1;
          while (1)
          {
            v3 = v36;
            *(a2 + 1) = v36;
            v37 = *v35++;
            v34 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
              LODWORD(v34) = 0;
              break;
            }
          }
        }

LABEL_64:
        *(this + 4) = v34;
      }

      else if ((v10 >> 3) == 1)
      {
        *(this + 20) |= 1u;
        v22 = *(a2 + 1);
        v2 = *(a2 + 2);
        v23 = *a2;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v38 = 0;
          v39 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v40 = (v23 + v22);
          v41 = v3 - v22;
          v42 = v22 + 1;
          while (1)
          {
            if (!v41)
            {
              v26 = 0;
              *(a2 + 24) = 1;
              goto LABEL_60;
            }

            v43 = v42;
            v44 = *v40;
            *(a2 + 1) = v43;
            v26 |= (v44 & 0x7F) << v38;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            ++v40;
            --v41;
            v42 = v43 + 1;
            v14 = v39++ > 8;
            if (v14)
            {
              v26 = 0;
              goto LABEL_59;
            }
          }

          if (*(a2 + 24))
          {
            v26 = 0;
          }

LABEL_59:
          v3 = v43;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          while (1)
          {
            v3 = v28;
            *(a2 + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
            if (v14)
            {
              v26 = 0;
              break;
            }
          }
        }

LABEL_60:
        *(this + 1) = v26;
      }

      else
      {
LABEL_28:
        if (!PB::Reader::skip(a2))
        {
          v52 = 0;
          return v52 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_69;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v3);
    v18 = v2 >= v3;
    v19 = v2 - v3;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v3 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_28;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_69:
  v52 = v4 ^ 1;
  return v52 & 1;
}

uint64_t CMMsl::SafetyCompanionStatus::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t CMMsl::SafetyCompanionStatus::hash_value(CMMsl::SafetyCompanionStatus *this)
{
  if (*(this + 20))
  {
    v1 = *(this + 1);
    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = 0;
    return v2 ^ v1;
  }

  v1 = 0;
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = *(this + 4);
  return v2 ^ v1;
}

void CMMsl::SafetyHertzSample::~SafetyHertzSample(CMMsl::SafetyHertzSample *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::SafetyHertzSample::SafetyHertzSample(uint64_t this, const CMMsl::SafetyHertzSample *a2)
{
  *this = &unk_286C23608;
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
  if ((v2 & 2) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return this;
    }

LABEL_10:
    v7 = *(a2 + 24);
    *(this + 28) = v3 | 8;
    *(this + 24) = v7;
    return this;
  }

  v6 = *(a2 + 4);
  v3 |= 2u;
  *(this + 28) = v3;
  *(this + 16) = v6;
  if ((*(a2 + 28) & 8) != 0)
  {
    goto LABEL_10;
  }

  return this;
}

uint64_t CMMsl::SafetyHertzSample::operator=(uint64_t a1, const CMMsl::SafetyHertzSample *a2)
{
  if (a1 != a2)
  {
    CMMsl::SafetyHertzSample::SafetyHertzSample(&v7, a2);
    v3 = *(a1 + 28);
    *(a1 + 28) = v11;
    v11 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    LOBYTE(v4) = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v4;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::SafetyHertzSample *a2, CMMsl::SafetyHertzSample *a3)
{
  v3 = *(this + 28);
  *(this + 28) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  LOBYTE(v4) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v4;
  return this;
}

uint64_t CMMsl::SafetyHertzSample::SafetyHertzSample(uint64_t result, uint64_t a2)
{
  *result = &unk_286C23608;
  *(result + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 20) = *(a2 + 20);
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  return result;
}

{
  *result = &unk_286C23608;
  *(result + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 20) = *(a2 + 20);
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  return result;
}

uint64_t CMMsl::SafetyHertzSample::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 8);
    v11 = *(a1 + 28);
    v5 = *(a1 + 8);
    *(a1 + 8) = v4;
    LOBYTE(v4) = *(a2 + 24);
    v9[0] = &unk_286C23608;
    v9[1] = v5;
    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    *(a1 + 28) = v3;
    *(a1 + 16) = v7;
    v9[2] = v6;
    LOBYTE(v3) = *(a1 + 24);
    *(a1 + 24) = v4;
    v10 = v3;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::SafetyHertzSample::formatText(CMMsl::SafetyHertzSample *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "dramDurationMs");
    v5 = *(this + 28);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "hapticsOn");
  v5 = *(this + 28);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "timestamp");
  if ((*(this + 28) & 4) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "vehicularFlags");
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SafetyHertzSample::readFrom(CMMsl::SafetyHertzSample *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v3);
      v18 = v2 >= v3;
      v19 = v2 - v3;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v3 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_22;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

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
        goto LABEL_17;
      }
    }

LABEL_22:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        *(this + 28) |= 2u;
        v41 = *(a2 + 1);
        v2 = *(a2 + 2);
        v42 = *a2;
        if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
        {
          v63 = 0;
          v64 = 0;
          v45 = 0;
          if (v2 <= v41)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v65 = (v42 + v41);
          v66 = v3 - v41;
          v67 = v41 + 1;
          while (1)
          {
            if (!v66)
            {
              LODWORD(v45) = 0;
              *(a2 + 24) = 1;
              goto LABEL_94;
            }

            v68 = v67;
            v69 = *v65;
            *(a2 + 1) = v68;
            v45 |= (v69 & 0x7F) << v63;
            if ((v69 & 0x80) == 0)
            {
              break;
            }

            v63 += 7;
            ++v65;
            --v66;
            v67 = v68 + 1;
            v14 = v64++ > 8;
            if (v14)
            {
              LODWORD(v45) = 0;
              goto LABEL_93;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v45) = 0;
          }

LABEL_93:
          v3 = v68;
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
            v3 = v47;
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
              LODWORD(v45) = 0;
              break;
            }
          }
        }

LABEL_94:
        *(this + 4) = v45;
        goto LABEL_19;
      }

      if (v22 == 4)
      {
        *(this + 28) |= 8u;
        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
        if (v3 >= v2)
        {
          v32 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v31 = *(*a2 + v3++);
          *(a2 + 1) = v3;
          v32 = v31 != 0;
        }

        *(this + 24) = v32;
        goto LABEL_19;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 28) |= 1u;
        v33 = *(a2 + 1);
        v2 = *(a2 + 2);
        v34 = *a2;
        if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
        {
          v56 = 0;
          v57 = 0;
          v37 = 0;
          if (v2 <= v33)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v58 = (v34 + v33);
          v59 = v3 - v33;
          v60 = v33 + 1;
          while (1)
          {
            if (!v59)
            {
              v37 = 0;
              *(a2 + 24) = 1;
              goto LABEL_90;
            }

            v61 = v60;
            v62 = *v58;
            *(a2 + 1) = v61;
            v37 |= (v62 & 0x7F) << v56;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            ++v58;
            --v59;
            v60 = v61 + 1;
            v14 = v57++ > 8;
            if (v14)
            {
              v37 = 0;
              goto LABEL_89;
            }
          }

          if (*(a2 + 24))
          {
            v37 = 0;
          }

LABEL_89:
          v3 = v61;
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
            v3 = v39;
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
              v37 = 0;
              break;
            }
          }
        }

LABEL_90:
        *(this + 1) = v37;
        goto LABEL_19;
      }

      if (v22 == 2)
      {
        *(this + 28) |= 4u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v49 = 0;
          v50 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v51 = (v24 + v23);
          v52 = v3 - v23;
          v53 = v23 + 1;
          while (1)
          {
            if (!v52)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_86;
            }

            v54 = v53;
            v55 = *v51;
            *(a2 + 1) = v54;
            v27 |= (v55 & 0x7F) << v49;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            ++v51;
            --v52;
            v53 = v54 + 1;
            v14 = v50++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_85;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_85:
          v3 = v54;
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
            v3 = v29;
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

LABEL_86:
        *(this + 5) = v27;
        goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v70 = 0;
      return v70 & 1;
    }

    v3 = *(a2 + 1);
    v2 = *(a2 + 2);
LABEL_19:
    v4 = *(a2 + 24);
  }

  v70 = v4 ^ 1;
  return v70 & 1;
}

uint64_t CMMsl::SafetyHertzSample::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 28);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::writeVarInt(a2);
      if ((*(v3 + 28) & 8) == 0)
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

  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 28);
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_9:

  return PB::Writer::write(a2);
}

uint64_t CMMsl::SafetyHertzSample::hash_value(CMMsl::SafetyHertzSample *this)
{
  if (*(this + 28))
  {
    v1 = *(this + 1);
    if ((*(this + 28) & 4) != 0)
    {
LABEL_3:
      v2 = *(this + 5);
      if ((*(this + 28) & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v3 = 0;
      if ((*(this + 28) & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v4 = 0;
      return v2 ^ v1 ^ v3 ^ v4;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v3 = *(this + 4);
  if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v4 = *(this + 24);
  return v2 ^ v1 ^ v3 ^ v4;
}

void CMMsl::SafetyRemoteSample::~SafetyRemoteSample(CMMsl::SafetyRemoteSample *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::SafetyRemoteSample::SafetyRemoteSample(uint64_t this, const CMMsl::SafetyRemoteSample *a2)
{
  *this = &unk_286C23640;
  *(this + 52) = 0;
  v2 = *(a2 + 52);
  if ((v2 & 0x20) != 0)
  {
    v4 = *(a2 + 11);
    v3 = 32;
    *(this + 52) = 32;
    *(this + 44) = v4;
    v2 = *(a2 + 52);
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 52) & 0x40) != 0)
  {
LABEL_5:
    v5 = *(a2 + 12);
    v3 |= 0x40u;
    *(this + 52) = v3;
    *(this + 48) = v5;
    v2 = *(a2 + 52);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(a2 + 10);
    v3 |= 0x10u;
    *(this + 52) = v3;
    *(this + 40) = v6;
    v2 = *(a2 + 52);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 4);
  v3 |= 8u;
  *(this + 52) = v3;
  *(this + 32) = v7;
  v2 = *(a2 + 52);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = *(a2 + 1);
  v3 |= 1u;
  *(this + 52) = v3;
  *(this + 8) = v8;
  v2 = *(a2 + 52);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 2) == 0)
    {
      return this;
    }

LABEL_16:
    v10 = *(a2 + 2);
    *(this + 52) = v3 | 2;
    *(this + 16) = v10;
    return this;
  }

LABEL_15:
  v9 = *(a2 + 3);
  v3 |= 4u;
  *(this + 52) = v3;
  *(this + 24) = v9;
  if ((*(a2 + 52) & 2) != 0)
  {
    goto LABEL_16;
  }

  return this;
}

uint64_t CMMsl::SafetyRemoteSample::operator=(uint64_t a1, const CMMsl::SafetyRemoteSample *a2)
{
  if (a1 != a2)
  {
    CMMsl::SafetyRemoteSample::SafetyRemoteSample(v8, a2);
    v3 = v10;
    v4 = *(a1 + 40);
    *(a1 + 40) = v11;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v10 = v5;
    v11 = v4;
    v6 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::SafetyRemoteSample *a2, CMMsl::SafetyRemoteSample *a3)
{
  v3 = *(this + 52);
  *(this + 52) = *(a2 + 13);
  *(a2 + 13) = v3;
  v4 = *(this + 44);
  *(this + 44) = *(a2 + 11);
  *(a2 + 11) = v4;
  v5 = *(this + 48);
  *(this + 48) = *(a2 + 12);
  *(a2 + 12) = v5;
  v6 = *(this + 40);
  *(this + 40) = *(a2 + 10);
  *(a2 + 10) = v6;
  v7 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v8;
  v9 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v9;
  v10 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v10;
  return this;
}

uint64_t CMMsl::SafetyRemoteSample::SafetyRemoteSample(uint64_t result, uint64_t a2)
{
  *result = &unk_286C23640;
  *(result + 52) = *(a2 + 52);
  *(a2 + 52) = 0;
  *(result + 44) = *(a2 + 44);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 8) = *(a2 + 8);
  *(result + 24) = *(a2 + 24);
  *(result + 16) = *(a2 + 16);
  return result;
}

{
  *result = &unk_286C23640;
  *(result + 52) = *(a2 + 52);
  *(a2 + 52) = 0;
  *(result + 44) = *(a2 + 44);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 8) = *(a2 + 8);
  *(result + 24) = *(a2 + 24);
  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::SafetyRemoteSample::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_286C23640;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 40);
    *(a2 + 52) = 0;
    v6 = *(a1 + 40);
    v11 = *(a1 + 24);
    v12 = v6;
    v7 = *(a1 + 8);
    *(a1 + 40) = v5;
    *(a1 + 24) = v4;
    *(a1 + 8) = v3;
    v10 = v7;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::SafetyRemoteSample::formatText(CMMsl::SafetyRemoteSample *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 52);
  if (v5)
  {
    PB::TextFormatter::format(a2, "createdAtTimestamp");
    v5 = *(this + 52);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 52) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "epochNumber");
  v5 = *(this + 52);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "epochTimestamp");
  v5 = *(this + 52);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "lastRealTriggerTimestamp");
  v5 = *(this + 52);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "mode");
  v5 = *(this + 52);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "receivedAtTimestamp");
  if ((*(this + 52) & 0x40) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(a2, "sessionNumber");
  }

LABEL_9:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::SafetyRemoteSample::readFrom(CMMsl::SafetyRemoteSample *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v3);
      v18 = v2 >= v3;
      v19 = v2 - v3;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v3 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_22;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

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
        goto LABEL_17;
      }
    }

LABEL_22:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 4)
    {
      switch(v22)
      {
        case 2:
          *(this + 52) |= 0x20u;
          v47 = *(a2 + 1);
          v2 = *(a2 + 2);
          v48 = *a2;
          if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
          {
            v79 = 0;
            v80 = 0;
            v51 = 0;
            if (v2 <= v47)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v81 = (v48 + v47);
            v82 = v3 - v47;
            v83 = v47 + 1;
            while (1)
            {
              if (!v82)
              {
                LODWORD(v51) = 0;
                *(a2 + 24) = 1;
                goto LABEL_154;
              }

              v84 = v83;
              v85 = *v81;
              *(a2 + 1) = v84;
              v51 |= (v85 & 0x7F) << v79;
              if ((v85 & 0x80) == 0)
              {
                break;
              }

              v79 += 7;
              ++v81;
              --v82;
              v83 = v84 + 1;
              v14 = v80++ > 8;
              if (v14)
              {
                LODWORD(v51) = 0;
                goto LABEL_153;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v51) = 0;
            }

LABEL_153:
            v3 = v84;
          }

          else
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = (v48 + v47);
            v53 = v47 + 1;
            while (1)
            {
              v3 = v53;
              *(a2 + 1) = v53;
              v54 = *v52++;
              v51 |= (v54 & 0x7F) << v49;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              ++v53;
              v14 = v50++ > 8;
              if (v14)
              {
                LODWORD(v51) = 0;
                break;
              }
            }
          }

LABEL_154:
          *(this + 11) = v51;
          goto LABEL_19;
        case 3:
          *(this + 52) |= 0x40u;
          v71 = *(a2 + 1);
          v2 = *(a2 + 2);
          v72 = *a2;
          if (v71 > 0xFFFFFFFFFFFFFFF5 || v71 + 10 > v2)
          {
            v121 = 0;
            v122 = 0;
            v75 = 0;
            if (v2 <= v71)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v123 = (v72 + v71);
            v124 = v3 - v71;
            v125 = v71 + 1;
            while (1)
            {
              if (!v124)
              {
                LODWORD(v75) = 0;
                *(a2 + 24) = 1;
                goto LABEL_178;
              }

              v126 = v125;
              v127 = *v123;
              *(a2 + 1) = v126;
              v75 |= (v127 & 0x7F) << v121;
              if ((v127 & 0x80) == 0)
              {
                break;
              }

              v121 += 7;
              ++v123;
              --v124;
              v125 = v126 + 1;
              v14 = v122++ > 8;
              if (v14)
              {
                LODWORD(v75) = 0;
                goto LABEL_177;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v75) = 0;
            }

LABEL_177:
            v3 = v126;
          }

          else
          {
            v73 = 0;
            v74 = 0;
            v75 = 0;
            v76 = (v72 + v71);
            v77 = v71 + 1;
            while (1)
            {
              v3 = v77;
              *(a2 + 1) = v77;
              v78 = *v76++;
              v75 |= (v78 & 0x7F) << v73;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v73 += 7;
              ++v77;
              v14 = v74++ > 8;
              if (v14)
              {
                LODWORD(v75) = 0;
                break;
              }
            }
          }

LABEL_178:
          *(this + 12) = v75;
          goto LABEL_19;
        case 4:
          *(this + 52) |= 0x10u;
          v31 = *(a2 + 1);
          v2 = *(a2 + 2);
          v32 = *a2;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v114 = 0;
            v115 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v3 = *(a2 + 1);
            }

            else
            {
              v3 = *(a2 + 2);
            }

            v116 = (v32 + v31);
            v117 = v3 - v31;
            v118 = v31 + 1;
            while (1)
            {
              if (!v117)
              {
                LODWORD(v35) = 0;
                *(a2 + 24) = 1;
                goto LABEL_174;
              }

              v119 = v118;
              v120 = *v116;
              *(a2 + 1) = v119;
              v35 |= (v120 & 0x7F) << v114;
              if ((v120 & 0x80) == 0)
              {
                break;
              }

              v114 += 7;
              ++v116;
              --v117;
              v118 = v119 + 1;
              v14 = v115++ > 8;
              if (v14)
              {
                LODWORD(v35) = 0;
                goto LABEL_173;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_173:
            v3 = v119;
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
              v3 = v37;
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

LABEL_174:
          *(this + 10) = v35;
          goto LABEL_19;
      }
    }

    else if (v22 > 99)
    {
      if (v22 == 100)
      {
        *(this + 52) |= 4u;
        v63 = *(a2 + 1);
        v2 = *(a2 + 2);
        v64 = *a2;
        if (v63 > 0xFFFFFFFFFFFFFFF5 || v63 + 10 > v2)
        {
          v93 = 0;
          v94 = 0;
          v67 = 0;
          if (v2 <= v63)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v95 = (v64 + v63);
          v96 = v3 - v63;
          v97 = v63 + 1;
          while (1)
          {
            if (!v96)
            {
              v67 = 0;
              *(a2 + 24) = 1;
              goto LABEL_162;
            }

            v98 = v97;
            v99 = *v95;
            *(a2 + 1) = v98;
            v67 |= (v99 & 0x7F) << v93;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v93 += 7;
            ++v95;
            --v96;
            v97 = v98 + 1;
            v14 = v94++ > 8;
            if (v14)
            {
              v67 = 0;
              goto LABEL_161;
            }
          }

          if (*(a2 + 24))
          {
            v67 = 0;
          }

LABEL_161:
          v3 = v98;
        }

        else
        {
          v65 = 0;
          v66 = 0;
          v67 = 0;
          v68 = (v64 + v63);
          v69 = v63 + 1;
          while (1)
          {
            v3 = v69;
            *(a2 + 1) = v69;
            v70 = *v68++;
            v67 |= (v70 & 0x7F) << v65;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v65 += 7;
            ++v69;
            v14 = v66++ > 8;
            if (v14)
            {
              v67 = 0;
              break;
            }
          }
        }

LABEL_162:
        *(this + 3) = v67;
        goto LABEL_19;
      }

      if (v22 == 101)
      {
        *(this + 52) |= 2u;
        v39 = *(a2 + 1);
        v2 = *(a2 + 2);
        v40 = *a2;
        if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
        {
          v107 = 0;
          v108 = 0;
          v43 = 0;
          if (v2 <= v39)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v109 = (v40 + v39);
          v110 = v3 - v39;
          v111 = v39 + 1;
          while (1)
          {
            if (!v110)
            {
              v43 = 0;
              *(a2 + 24) = 1;
              goto LABEL_170;
            }

            v112 = v111;
            v113 = *v109;
            *(a2 + 1) = v112;
            v43 |= (v113 & 0x7F) << v107;
            if ((v113 & 0x80) == 0)
            {
              break;
            }

            v107 += 7;
            ++v109;
            --v110;
            v111 = v112 + 1;
            v14 = v108++ > 8;
            if (v14)
            {
              v43 = 0;
              goto LABEL_169;
            }
          }

          if (*(a2 + 24))
          {
            v43 = 0;
          }

LABEL_169:
          v3 = v112;
        }

        else
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = (v40 + v39);
          v45 = v39 + 1;
          while (1)
          {
            v3 = v45;
            *(a2 + 1) = v45;
            v46 = *v44++;
            v43 |= (v46 & 0x7F) << v41;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            ++v45;
            v14 = v42++ > 8;
            if (v14)
            {
              v43 = 0;
              break;
            }
          }
        }

LABEL_170:
        *(this + 2) = v43;
        goto LABEL_19;
      }
    }

    else
    {
      if (v22 == 5)
      {
        *(this + 52) |= 8u;
        v55 = *(a2 + 1);
        v2 = *(a2 + 2);
        v56 = *a2;
        if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
        {
          v86 = 0;
          v87 = 0;
          v59 = 0;
          if (v2 <= v55)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v88 = (v56 + v55);
          v89 = v3 - v55;
          v90 = v55 + 1;
          while (1)
          {
            if (!v89)
            {
              v59 = 0;
              *(a2 + 24) = 1;
              goto LABEL_158;
            }

            v91 = v90;
            v92 = *v88;
            *(a2 + 1) = v91;
            v59 |= (v92 & 0x7F) << v86;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v86 += 7;
            ++v88;
            --v89;
            v90 = v91 + 1;
            v14 = v87++ > 8;
            if (v14)
            {
              v59 = 0;
              goto LABEL_157;
            }
          }

          if (*(a2 + 24))
          {
            v59 = 0;
          }

LABEL_157:
          v3 = v91;
        }

        else
        {
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = (v56 + v55);
          v61 = v55 + 1;
          while (1)
          {
            v3 = v61;
            *(a2 + 1) = v61;
            v62 = *v60++;
            v59 |= (v62 & 0x7F) << v57;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            ++v61;
            v14 = v58++ > 8;
            if (v14)
            {
              v59 = 0;
              break;
            }
          }
        }

LABEL_158:
        *(this + 4) = v59;
        goto LABEL_19;
      }

      if (v22 == 6)
      {
        *(this + 52) |= 1u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v100 = 0;
          v101 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v102 = (v24 + v23);
          v103 = v3 - v23;
          v104 = v23 + 1;
          while (1)
          {
            if (!v103)
            {
              v27 = 0;
              *(a2 + 24) = 1;
              goto LABEL_166;
            }

            v105 = v104;
            v106 = *v102;
            *(a2 + 1) = v105;
            v27 |= (v106 & 0x7F) << v100;
            if ((v106 & 0x80) == 0)
            {
              break;
            }

            v100 += 7;
            ++v102;
            --v103;
            v104 = v105 + 1;
            v14 = v101++ > 8;
            if (v14)
            {
              v27 = 0;
              goto LABEL_165;
            }
          }

          if (*(a2 + 24))
          {
            v27 = 0;
          }

LABEL_165:
          v3 = v105;
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
            v3 = v29;
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
              v27 = 0;
              break;
            }
          }
        }

LABEL_166:
        *(this + 1) = v27;
        goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v128 = 0;
      return v128 & 1;
    }

    v3 = *(a2 + 1);
    v2 = *(a2 + 2);
LABEL_19:
    v4 = *(a2 + 24);
  }

  v128 = v4 ^ 1;
  return v128 & 1;
}

uint64_t CMMsl::SafetyRemoteSample::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 52);
  if ((v4 & 0x20) != 0)
  {
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 52);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 52) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 52);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 52);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 52);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 52) & 2) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 52);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_15:

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::SafetyRemoteSample::hash_value(CMMsl::SafetyRemoteSample *this)
{
  if ((*(this + 52) & 0x20) != 0)
  {
    v1 = *(this + 11);
    if ((*(this + 52) & 0x40) != 0)
    {
LABEL_3:
      v2 = *(this + 12);
      if ((*(this + 52) & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 52) & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 52) & 0x10) != 0)
  {
LABEL_4:
    v3 = *(this + 10);
    if ((*(this + 52) & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v3 = 0;
  if ((*(this + 52) & 8) != 0)
  {
LABEL_5:
    v4 = *(this + 4);
    if (*(this + 52))
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = 0;
  if (*(this + 52))
  {
LABEL_6:
    v5 = *(this + 1);
    if ((*(this + 52) & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v6 = 0;
    if ((*(this + 52) & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v7 = 0;
    return v2 ^ v1 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_13:
  v5 = 0;
  if ((*(this + 52) & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v6 = *(this + 3);
  if ((*(this + 52) & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v7 = *(this + 2);
  return v2 ^ v1 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7;
}

void CMMsl::SafetyTrustedAudioResult::~SafetyTrustedAudioResult(CMMsl::SafetyTrustedAudioResult *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::SafetyTrustedAudioResult::SafetyTrustedAudioResult(uint64_t this, const CMMsl::SafetyTrustedAudioResult *a2)
{
  *this = &unk_286C23678;
  *(this + 212) = 0;
  v2 = *(a2 + 212);
  if ((v2 & 0x800) != 0)
  {
    v4 = *(a2 + 12);
    v3 = 2048;
    *(this + 212) = 2048;
    *(this + 96) = v4;
    v2 = *(a2 + 212);
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x200000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 35);
    v3 |= 0x200000uLL;
    *(this + 212) = v3;
    *(this + 140) = v5;
    v2 = *(a2 + 212);
  }

LABEL_6:
  if ((v2 & 0x40) != 0)
  {
    v6 = *(a2 + 7);
    v3 |= 0x40uLL;
    *(this + 212) = v3;
    *(this + 56) = v6;
    v2 = *(a2 + 212);
    if ((v2 & 0x10000) == 0)
    {
LABEL_8:
      if ((v2 & 0x1000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_47;
    }
  }

  else if ((v2 & 0x10000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 30);
  v3 |= 0x10000uLL;
  *(this + 212) = v3;
  *(this + 120) = v7;
  v2 = *(a2 + 212);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_9:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  v8 = *(a2 + 38);
  v3 |= 0x1000000uLL;
  *(this + 212) = v3;
  *(this + 152) = v8;
  v2 = *(a2 + 212);
  if ((v2 & 0x100000) == 0)
  {
LABEL_10:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  v9 = *(a2 + 34);
  v3 |= 0x100000uLL;
  *(this + 212) = v3;
  *(this + 136) = v9;
  v2 = *(a2 + 212);
  if ((v2 & 0x20) == 0)
  {
LABEL_11:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  v10 = *(a2 + 6);
  v3 |= 0x20uLL;
  *(this + 212) = v3;
  *(this + 48) = v10;
  v2 = *(a2 + 212);
  if ((v2 & 0x40000) == 0)
  {
LABEL_12:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  v11 = *(a2 + 32);
  v3 |= 0x40000uLL;
  *(this + 212) = v3;
  *(this + 128) = v11;
  v2 = *(a2 + 212);
  if ((v2 & 0x800000) == 0)
  {
LABEL_13:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  v12 = *(a2 + 37);
  v3 |= 0x800000uLL;
  *(this + 212) = v3;
  *(this + 148) = v12;
  v2 = *(a2 + 212);
  if ((v2 & 0x400000) == 0)
  {
LABEL_14:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  v13 = *(a2 + 36);
  v3 |= 0x400000uLL;
  *(this + 212) = v3;
  *(this + 144) = v13;
  v2 = *(a2 + 212);
  if ((v2 & 0x80) == 0)
  {
LABEL_15:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  v14 = *(a2 + 8);
  v3 |= 0x80uLL;
  *(this + 212) = v3;
  *(this + 64) = v14;
  v2 = *(a2 + 212);
  if ((v2 & 0x20000) == 0)
  {
LABEL_16:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  v15 = *(a2 + 31);
  v3 |= 0x20000uLL;
  *(this + 212) = v3;
  *(this + 124) = v15;
  v2 = *(a2 + 212);
  if ((v2 & 0x80000) == 0)
  {
LABEL_17:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  v16 = *(a2 + 33);
  v3 |= 0x80000uLL;
  *(this + 212) = v3;
  *(this + 132) = v16;
  v2 = *(a2 + 212);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  v17 = *(a2 + 44);
  v3 |= 0x40000000uLL;
  *(this + 212) = v3;
  *(this + 176) = v17;
  v2 = *(a2 + 212);
  if ((v2 & 0x200) == 0)
  {
LABEL_19:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  v18 = *(a2 + 10);
  v3 |= 0x200uLL;
  *(this + 212) = v3;
  *(this + 80) = v18;
  v2 = *(a2 + 212);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_20:
    if ((v2 & 0x200000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  v19 = *(a2 + 39);
  v3 |= 0x2000000uLL;
  *(this + 212) = v3;
  *(this + 156) = v19;
  v2 = *(a2 + 212);
  if ((v2 & 0x200000000) == 0)
  {
LABEL_21:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  v20 = *(a2 + 47);
  v3 |= 0x200000000uLL;
  *(this + 212) = v3;
  *(this + 188) = v20;
  v2 = *(a2 + 212);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_22:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  v21 = *(a2 + 43);
  v3 |= 0x20000000uLL;
  *(this + 212) = v3;
  *(this + 172) = v21;
  v2 = *(a2 + 212);
  if ((v2 & 0x100) == 0)
  {
LABEL_23:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  v22 = *(a2 + 9);
  v3 |= 0x100uLL;
  *(this + 212) = v3;
  *(this + 72) = v22;
  v2 = *(a2 + 212);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_24:
    if ((v2 & 0x100000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  v23 = *(a2 + 41);
  v3 |= 0x8000000uLL;
  *(this + 212) = v3;
  *(this + 164) = v23;
  v2 = *(a2 + 212);
  if ((v2 & 0x100000000) == 0)
  {
LABEL_25:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  v24 = *(a2 + 46);
  v3 |= 0x100000000uLL;
  *(this + 212) = v3;
  *(this + 184) = v24;
  v2 = *(a2 + 212);
  if ((v2 & 0x80000000) == 0)
  {
LABEL_26:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_64:
  v25 = *(a2 + 45);
  v3 |= 0x80000000uLL;
  *(this + 212) = v3;
  *(this + 180) = v25;
  v2 = *(a2 + 212);
  if ((v2 & 0x400) == 0)
  {
LABEL_27:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_66;
  }

LABEL_65:
  v26 = *(a2 + 11);
  v3 |= 0x400uLL;
  *(this + 212) = v3;
  *(this + 88) = v26;
  v2 = *(a2 + 212);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_67;
  }

LABEL_66:
  v27 = *(a2 + 40);
  v3 |= 0x4000000uLL;
  *(this + 212) = v3;
  *(this + 160) = v27;
  v2 = *(a2 + 212);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_29:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_68;
  }

LABEL_67:
  v28 = *(a2 + 42);
  v3 |= 0x10000000uLL;
  *(this + 212) = v3;
  *(this + 168) = v28;
  v2 = *(a2 + 212);
  if ((v2 & 0x2000) == 0)
  {
LABEL_30:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_69;
  }

LABEL_68:
  v29 = *(a2 + 27);
  v3 |= 0x2000uLL;
  *(this + 212) = v3;
  *(this + 108) = v29;
  v2 = *(a2 + 212);
  if ((v2 & 0x8000) == 0)
  {
LABEL_31:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_70;
  }

LABEL_69:
  v30 = *(a2 + 29);
  v3 |= 0x8000uLL;
  *(this + 212) = v3;
  *(this + 116) = v30;
  v2 = *(a2 + 212);
  if ((v2 & 0x4000) == 0)
  {
LABEL_32:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_71;
  }

LABEL_70:
  v31 = *(a2 + 28);
  v3 |= 0x4000uLL;
  *(this + 212) = v3;
  *(this + 112) = v31;
  v2 = *(a2 + 212);
  if ((v2 & 0x10) == 0)
  {
LABEL_33:
    if ((v2 & 8) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_72;
  }

LABEL_71:
  v32 = *(a2 + 5);
  v3 |= 0x10uLL;
  *(this + 212) = v3;
  *(this + 40) = v32;
  v2 = *(a2 + 212);
  if ((v2 & 8) == 0)
  {
LABEL_34:
    if ((v2 & 0x800000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_73;
  }

LABEL_72:
  v33 = *(a2 + 4);
  v3 |= 8uLL;
  *(this + 212) = v3;
  *(this + 32) = v33;
  v2 = *(a2 + 212);
  if ((v2 & 0x800000000) == 0)
  {
LABEL_35:
    if ((v2 & 0x2000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_74;
  }

LABEL_73:
  v34 = *(a2 + 49);
  v3 |= 0x800000000uLL;
  *(this + 212) = v3;
  *(this + 196) = v34;
  v2 = *(a2 + 212);
  if ((v2 & 0x2000000000) == 0)
  {
LABEL_36:
    if ((v2 & 0x1000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_75;
  }

LABEL_74:
  v35 = *(a2 + 51);
  v3 |= 0x2000000000uLL;
  *(this + 212) = v3;
  *(this + 204) = v35;
  v2 = *(a2 + 212);
  if ((v2 & 0x1000000000) == 0)
  {
LABEL_37:
    if ((v2 & 0x400000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_76;
  }

LABEL_75:
  v36 = *(a2 + 50);
  v3 |= 0x1000000000uLL;
  *(this + 212) = v3;
  *(this + 200) = v36;
  v2 = *(a2 + 212);
  if ((v2 & 0x400000000) == 0)
  {
LABEL_38:
    if ((v2 & 0x4000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_77;
  }

LABEL_76:
  v37 = *(a2 + 48);
  v3 |= 0x400000000uLL;
  *(this + 212) = v3;
  *(this + 192) = v37;
  v2 = *(a2 + 212);
  if ((v2 & 0x4000000000) == 0)
  {
LABEL_39:
    if ((v2 & 0x8000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_78;
  }

LABEL_77:
  v38 = *(a2 + 208);
  v3 |= 0x4000000000uLL;
  *(this + 212) = v3;
  *(this + 208) = v38;
  v2 = *(a2 + 212);
  if ((v2 & 0x8000000000) == 0)
  {
LABEL_40:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_79;
  }

LABEL_78:
  v39 = *(a2 + 209);
  v3 |= 0x8000000000uLL;
  *(this + 212) = v3;
  *(this + 209) = v39;
  v2 = *(a2 + 212);
  if ((v2 & 0x1000) == 0)
  {
LABEL_41:
    if ((v2 & 4) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_80;
  }

LABEL_79:
  v40 = *(a2 + 26);
  v3 |= 0x1000uLL;
  *(this + 212) = v3;
  *(this + 104) = v40;
  v2 = *(a2 + 212);
  if ((v2 & 4) == 0)
  {
LABEL_42:
    if ((v2 & 2) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_81;
  }

LABEL_80:
  v41 = *(a2 + 3);
  v3 |= 4uLL;
  *(this + 212) = v3;
  *(this + 24) = v41;
  v2 = *(a2 + 212);
  if ((v2 & 2) == 0)
  {
LABEL_43:
    if ((v2 & 1) == 0)
    {
      return this;
    }

LABEL_82:
    v43 = *(a2 + 1);
    *(this + 212) = v3 | 1;
    *(this + 8) = v43;
    return this;
  }

LABEL_81:
  v42 = *(a2 + 2);
  v3 |= 2uLL;
  *(this + 212) = v3;
  *(this + 16) = v42;
  if (*(a2 + 212))
  {
    goto LABEL_82;
  }

  return this;
}
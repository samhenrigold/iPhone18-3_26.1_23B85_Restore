uint64_t CMMsl::MotionActivity::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 116);
  if ((v4 & 0x10000) != 0)
  {
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 116);
    if ((v4 & 0x200) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 116);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 116);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 116);
  if ((v4 & 0x100000) == 0)
  {
LABEL_6:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 116);
  if ((v4 & 0x8000) == 0)
  {
LABEL_7:
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 88));
  v4 = *(v3 + 116);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 116);
  if ((v4 & 0x200000) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 116);
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 116);
  if ((v4 & 1) == 0)
  {
LABEL_11:
    if ((v4 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 116);
  if ((v4 & 2) == 0)
  {
LABEL_12:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 116);
  if ((v4 & 0x1000) == 0)
  {
LABEL_13:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 116);
  if ((v4 & 0x800) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 116);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 116);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_16:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 116);
  if ((v4 & 0x400000) == 0)
  {
LABEL_17:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 116);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_18:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 116);
  if ((v4 & 0x800000) == 0)
  {
LABEL_19:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 116);
  if ((v4 & 0x40000) == 0)
  {
LABEL_20:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 116);
  if ((v4 & 0x80) == 0)
  {
LABEL_21:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 116);
  if ((v4 & 0x40) == 0)
  {
LABEL_22:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 52));
  v4 = *(v3 + 116);
  if ((v4 & 0x4000) == 0)
  {
LABEL_23:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::write(a2, *(v3 + 84));
  v4 = *(v3 + 116);
  if ((v4 & 0x80000) == 0)
  {
LABEL_24:
    if ((v4 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 116);
  if ((v4 & 8) == 0)
  {
LABEL_25:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 116);
  if ((v4 & 0x10) == 0)
  {
LABEL_26:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_27;
    }

LABEL_54:
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 116) & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_55;
  }

LABEL_53:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 116);
  if ((v4 & 0x20000) != 0)
  {
    goto LABEL_54;
  }

LABEL_27:
  if ((v4 & 0x2000) == 0)
  {
    return this;
  }

LABEL_55:

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::MotionActivity::hash_value(CMMsl::MotionActivity *this)
{
  v1 = *(this + 29);
  if ((v1 & 0x10000) != 0)
  {
    v2 = *(this + 23);
    if ((v1 & 0x200) != 0)
    {
LABEL_3:
      v3 = *(this + 16);
      if ((v1 & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 0x20) != 0)
  {
LABEL_4:
    v4 = *(this + 12);
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v4 = 0;
  if ((v1 & 0x400) != 0)
  {
LABEL_5:
    v5 = *(this + 17);
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  v5 = 0;
  if ((v1 & 0x100000) != 0)
  {
LABEL_6:
    v6 = *(this + 108);
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_7;
    }

LABEL_31:
    v8 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_10;
    }

LABEL_32:
    v9 = 0.0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_30:
  v6 = 0;
  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_31;
  }

LABEL_7:
  v7 = *(this + 22);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_32;
  }

LABEL_10:
  v9 = *(this + 3);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((v1 & 0x200000) != 0)
  {
LABEL_13:
    v10 = *(this + 109);
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  v10 = 0;
  if ((v1 & 0x100) != 0)
  {
LABEL_14:
    v11 = *(this + 15);
    if (v1)
    {
      goto LABEL_15;
    }

LABEL_35:
    v12 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_18;
    }

LABEL_36:
    v13 = 0.0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_34:
  v11 = 0;
  if ((v1 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_15:
  v12 = *(this + 1);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  v13 = *(this + 2);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  if ((v1 & 0x1000) != 0)
  {
LABEL_21:
    v14 = *(this + 19);
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_38;
  }

LABEL_37:
  v14 = 0;
  if ((v1 & 0x800) != 0)
  {
LABEL_22:
    v15 = *(this + 18);
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_39;
  }

LABEL_38:
  v15 = 0;
  if ((v1 & 0x2000000) != 0)
  {
LABEL_23:
    v16 = *(this + 113);
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_24;
    }

LABEL_40:
    v17 = 0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_41;
  }

LABEL_39:
  v16 = 0;
  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_24:
  v17 = *(this + 112);
  if ((v1 & 0x400000) != 0)
  {
LABEL_25:
    v18 = *(this + 110);
    goto LABEL_42;
  }

LABEL_41:
  v18 = 0;
LABEL_42:
  if ((v1 & 0x4000000) != 0)
  {
    v19 = *(this + 114);
    if ((v1 & 0x800000) != 0)
    {
LABEL_44:
      v20 = *(this + 111);
      if ((v1 & 0x40000) != 0)
      {
        goto LABEL_45;
      }

      goto LABEL_64;
    }
  }

  else
  {
    v19 = 0;
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_44;
    }
  }

  v20 = 0;
  if ((v1 & 0x40000) != 0)
  {
LABEL_45:
    v21 = *(this + 25);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_46;
    }

LABEL_65:
    v23 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_49;
    }

LABEL_66:
    v25 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_52;
    }

LABEL_67:
    v27 = 0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_68;
  }

LABEL_64:
  v21 = 0;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_65;
  }

LABEL_46:
  v22 = *(this + 14);
  v23 = LODWORD(v22);
  if (v22 == 0.0)
  {
    v23 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_66;
  }

LABEL_49:
  v24 = *(this + 13);
  v25 = LODWORD(v24);
  if (v24 == 0.0)
  {
    v25 = 0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_67;
  }

LABEL_52:
  v26 = *(this + 21);
  v27 = LODWORD(v26);
  if (v26 == 0.0)
  {
    v27 = 0;
  }

  if ((v1 & 0x80000) != 0)
  {
LABEL_55:
    v28 = *(this + 26);
    if ((v1 & 8) != 0)
    {
      goto LABEL_56;
    }

LABEL_69:
    v29 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_70;
  }

LABEL_68:
  v28 = 0;
  if ((v1 & 8) == 0)
  {
    goto LABEL_69;
  }

LABEL_56:
  v29 = *(this + 4);
  if (v29 == 0.0)
  {
    v29 = 0.0;
  }

  if ((v1 & 0x10) != 0)
  {
LABEL_59:
    v30 = *(this + 5);
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_60;
    }

LABEL_71:
    v31 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_61;
    }

LABEL_72:
    v32 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v8 ^ *&v9 ^ v10 ^ v11 ^ *&v12 ^ *&v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v23 ^ v25 ^ v27 ^ v28 ^ *&v29 ^ v30 ^ v31 ^ v32;
  }

LABEL_70:
  v30 = 0;
  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_71;
  }

LABEL_60:
  v31 = *(this + 24);
  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_72;
  }

LABEL_61:
  v32 = *(this + 20);
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v8 ^ *&v9 ^ v10 ^ v11 ^ *&v12 ^ *&v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v23 ^ v25 ^ v27 ^ v28 ^ *&v29 ^ v30 ^ v31 ^ v32;
}

void CMMsl::MotionActivityReplay::~MotionActivityReplay(CMMsl::MotionActivityReplay *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::MotionActivityReplay::MotionActivityReplay(uint64_t this, const CMMsl::MotionActivityReplay *a2)
{
  *this = &unk_286C21D18;
  *(this + 36) = 0;
  v2 = *(a2 + 18);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 36) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 18);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x10) != 0)
  {
LABEL_5:
    v5 = *(a2 + 7);
    v3 |= 0x10u;
    *(this + 36) = v3;
    *(this + 28) = v5;
    v2 = *(a2 + 18);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 6);
    v3 |= 8u;
    *(this + 36) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 18);
    if ((v2 & 0x80) == 0)
    {
LABEL_8:
      if ((v2 & 0x100) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 34);
  v3 |= 0x80u;
  *(this + 36) = v3;
  *(this + 34) = v7;
  v2 = *(a2 + 18);
  if ((v2 & 0x100) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(a2 + 35);
  v3 |= 0x100u;
  *(this + 36) = v3;
  *(this + 35) = v8;
  v2 = *(a2 + 18);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = *(a2 + 32);
  v3 |= 0x20u;
  *(this + 36) = v3;
  *(this + 32) = v9;
  v2 = *(a2 + 18);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 33);
  v3 |= 0x40u;
  *(this + 36) = v3;
  *(this + 33) = v10;
  v2 = *(a2 + 18);
  if ((v2 & 2) == 0)
  {
LABEL_12:
    if ((v2 & 4) == 0)
    {
      return this;
    }

LABEL_20:
    v12 = *(a2 + 5);
    *(this + 36) = v3 | 4;
    *(this + 20) = v12;
    return this;
  }

LABEL_19:
  v11 = *(a2 + 4);
  v3 |= 2u;
  *(this + 36) = v3;
  *(this + 16) = v11;
  if ((*(a2 + 18) & 4) != 0)
  {
    goto LABEL_20;
  }

  return this;
}

uint64_t CMMsl::MotionActivityReplay::operator=(uint64_t a1, const CMMsl::MotionActivityReplay *a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionActivityReplay::MotionActivityReplay(v10, a2);
    v3 = v12;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    *(a1 + 8) = v11;
    v6 = *(a1 + 24);
    *(a1 + 24) = v13;
    v11 = v4;
    v13 = v6;
    v7 = *(a1 + 36);
    *(a1 + 36) = v15;
    v15 = v7;
    v8 = *(a1 + 32);
    *(a1 + 32) = v14;
    v14 = v8;
    *(a1 + 16) = v3;
    v12 = v5;
    PB::Base::~Base(v10);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::MotionActivityReplay *a2, CMMsl::MotionActivityReplay *a3)
{
  v3 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v5 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  LOBYTE(v6) = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v6;
  LOBYTE(v6) = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v6;
  LOBYTE(v6) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  LOBYTE(v6) = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  return result;
}

double CMMsl::MotionActivityReplay::MotionActivityReplay(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21D18;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 35) = *(a2 + 35);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return result;
}

uint64_t CMMsl::MotionActivityReplay::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionActivityReplay::MotionActivityReplay(v10, a2);
    v3 = v12;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    *(a1 + 8) = v11;
    v6 = *(a1 + 24);
    *(a1 + 24) = v13;
    v11 = v4;
    v13 = v6;
    v7 = *(a1 + 36);
    *(a1 + 36) = v15;
    v15 = v7;
    v8 = *(a1 + 32);
    *(a1 + 32) = v14;
    v14 = v8;
    *(a1 + 16) = v3;
    v12 = v5;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::MotionActivityReplay::formatText(CMMsl::MotionActivityReplay *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 18);
  if (v5)
  {
    PB::TextFormatter::format(a2, "iostime", *(this + 1));
    v5 = *(this + 18);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "outdoorCyclingStateMachineFrom");
  v5 = *(this + 18);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "outdoorCyclingStateMachineTo");
  v5 = *(this + 18);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "workoutLocationType");
  v5 = *(this + 18);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "workoutPause");
  v5 = *(this + 18);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "workoutResume");
  v5 = *(this + 18);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "workoutStart");
  v5 = *(this + 18);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "workoutStop");
  if ((*(this + 18) & 0x10) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(a2, "workoutType");
  }

LABEL_11:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::MotionActivityReplay::readFrom(CMMsl::MotionActivityReplay *this, PB::Reader *a2)
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

LABEL_22:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 10)
    {
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(this + 18) |= 8u;
          v43 = *(a2 + 1);
          v2 = *(a2 + 2);
          v44 = *a2;
          if (v43 > 0xFFFFFFFFFFFFFFF5 || v43 + 10 > v2)
          {
            v70 = 0;
            v71 = 0;
            v47 = 0;
            if (v2 <= v43)
            {
              v2 = *(a2 + 1);
            }

            v72 = (v44 + v43);
            v73 = v2 - v43;
            v74 = v43 + 1;
            while (1)
            {
              if (!v73)
              {
                LODWORD(v47) = 0;
                *(a2 + 24) = 1;
                goto LABEL_126;
              }

              v75 = v74;
              v76 = *v72;
              *(a2 + 1) = v75;
              v47 |= (v76 & 0x7F) << v70;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v70 += 7;
              ++v72;
              --v73;
              v74 = v75 + 1;
              v14 = v71++ > 8;
              if (v14)
              {
                LODWORD(v47) = 0;
                goto LABEL_125;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v47) = 0;
            }

LABEL_125:
            v2 = v75;
          }

          else
          {
            v45 = 0;
            v46 = 0;
            v47 = 0;
            v48 = (v44 + v43);
            v49 = v43 + 1;
            while (1)
            {
              v2 = v49;
              *(a2 + 1) = v49;
              v50 = *v48++;
              v47 |= (v50 & 0x7F) << v45;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              ++v49;
              v14 = v46++ > 8;
              if (v14)
              {
                LODWORD(v47) = 0;
                break;
              }
            }
          }

LABEL_126:
          *(this + 6) = v47;
          goto LABEL_19;
        }

        if (v22 == 10)
        {
          *(this + 18) |= 0x80u;
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

          *(this + 34) = v40;
          goto LABEL_19;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 18) |= 1u;
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

          goto LABEL_19;
        }

        if (v22 == 2)
        {
          *(this + 18) |= 0x10u;
          v31 = *(a2 + 1);
          v2 = *(a2 + 2);
          v32 = *a2;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v63 = 0;
            v64 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(a2 + 1);
            }

            v65 = (v32 + v31);
            v66 = v2 - v31;
            v67 = v31 + 1;
            while (1)
            {
              if (!v66)
              {
                LODWORD(v35) = 0;
                *(a2 + 24) = 1;
                goto LABEL_122;
              }

              v68 = v67;
              v69 = *v65;
              *(a2 + 1) = v68;
              v35 |= (v69 & 0x7F) << v63;
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
                LODWORD(v35) = 0;
                goto LABEL_121;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_121:
            v2 = v68;
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

LABEL_122:
          *(this + 7) = v35;
          goto LABEL_19;
        }
      }
    }

    else if (v22 <= 12)
    {
      if (v22 == 11)
      {
        *(this + 18) |= 0x100u;
        v2 = *(a2 + 1);
        if (v2 >= *(a2 + 2))
        {
          v54 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v53 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v54 = v53 != 0;
        }

        *(this + 35) = v54;
        goto LABEL_19;
      }

      if (v22 == 12)
      {
        *(this + 18) |= 0x20u;
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

        *(this + 32) = v42;
        goto LABEL_19;
      }
    }

    else
    {
      switch(v22)
      {
        case 0xD:
          *(this + 18) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v52 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v51 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v52 = v51 != 0;
          }

          *(this + 33) = v52;
          goto LABEL_19;
        case 0x15:
          *(this + 18) |= 2u;
          v55 = *(a2 + 1);
          v2 = *(a2 + 2);
          v56 = *a2;
          if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
          {
            v84 = 0;
            v85 = 0;
            v59 = 0;
            if (v2 <= v55)
            {
              v2 = *(a2 + 1);
            }

            v86 = (v56 + v55);
            v87 = v2 - v55;
            v88 = v55 + 1;
            while (1)
            {
              if (!v87)
              {
                LODWORD(v59) = 0;
                *(a2 + 24) = 1;
                goto LABEL_134;
              }

              v89 = v88;
              v90 = *v86;
              *(a2 + 1) = v89;
              v59 |= (v90 & 0x7F) << v84;
              if ((v90 & 0x80) == 0)
              {
                break;
              }

              v84 += 7;
              ++v86;
              --v87;
              v88 = v89 + 1;
              v14 = v85++ > 8;
              if (v14)
              {
                LODWORD(v59) = 0;
                goto LABEL_133;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v59) = 0;
            }

LABEL_133:
            v2 = v89;
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
              v2 = v61;
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
                LODWORD(v59) = 0;
                break;
              }
            }
          }

LABEL_134:
          *(this + 4) = v59;
          goto LABEL_19;
        case 0x16:
          *(this + 18) |= 4u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v77 = 0;
            v78 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v79 = (v24 + v23);
            v80 = v2 - v23;
            v81 = v23 + 1;
            while (1)
            {
              if (!v80)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_130;
              }

              v82 = v81;
              v83 = *v79;
              *(a2 + 1) = v82;
              v27 |= (v83 & 0x7F) << v77;
              if ((v83 & 0x80) == 0)
              {
                break;
              }

              v77 += 7;
              ++v79;
              --v80;
              v81 = v82 + 1;
              v14 = v78++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_129;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_129:
            v2 = v82;
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

LABEL_130:
          *(this + 5) = v27;
          goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v91 = 0;
      return v91 & 1;
    }

    v2 = *(a2 + 1);
LABEL_19:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v91 = v4 ^ 1;
  return v91 & 1;
}

uint64_t CMMsl::MotionActivityReplay::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 36);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 36);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 36);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 36);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 36);
  if ((v4 & 0x100) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 36);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 36);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 36);
  if ((v4 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_19:

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::MotionActivityReplay::hash_value(CMMsl::MotionActivityReplay *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    v2 = *(this + 1);
    if (v2 == 0.0)
    {
      v2 = 0.0;
    }

    if ((v1 & 0x10) != 0)
    {
LABEL_3:
      v3 = *(this + 7);
      if ((v1 & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v2 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_4:
    v4 = *(this + 6);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v4 = 0;
  if ((v1 & 0x80) != 0)
  {
LABEL_5:
    v5 = *(this + 34);
    if ((*(this + 18) & 0x100) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 18) & 0x100) != 0)
  {
LABEL_6:
    v6 = *(this + 35);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = 0;
  if ((v1 & 0x20) != 0)
  {
LABEL_7:
    v7 = *(this + 32);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = 0;
  if ((v1 & 0x40) != 0)
  {
LABEL_8:
    v8 = *(this + 33);
    if ((v1 & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_20:
    v9 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v10 = 0;
    return v3 ^ *&v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

LABEL_19:
  v8 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  v9 = *(this + 4);
  if ((v1 & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  v10 = *(this + 5);
  return v3 ^ *&v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

void CMMsl::MotionContextActivity::~MotionContextActivity(CMMsl::MotionContextActivity *this)
{
  v2 = *(this + 1);
  *this = &unk_286C21D50;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::MotionContextActivity::~MotionContextActivity(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::MotionContextActivity *CMMsl::MotionContextActivity::MotionContextActivity(CMMsl::MotionContextActivity *this, const CMMsl::MotionContextActivity *a2)
{
  *this = &unk_286C21D50;
  *(this + 1) = 0;
  *(this + 3) = 0;
  if ((*(a2 + 28) & 2) != 0)
  {
    v3 = *(a2 + 6);
    *(this + 28) = 2;
    *(this + 6) = v3;
    v2 = 3;
    if ((*(a2 + 28) & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 28))
  {
LABEL_5:
    v4 = *(a2 + 2);
    *(this + 28) = v2;
    *(this + 2) = v4;
  }

LABEL_6:
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::MotionContextActivity *CMMsl::MotionContextActivity::operator=(const CMMsl::MotionContextActivity *a1, const CMMsl::MotionContextActivity *a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionContextActivity::MotionContextActivity(&v8, a2);
    v4 = *(a1 + 2);
    v3 = *(a1 + 3);
    v5 = v11;
    *(a1 + 2) = v10;
    *(a1 + 3) = v5;
    v10 = v4;
    v11 = v3;
    v6 = *(a1 + 1);
    *(a1 + 1) = v9;
    v9 = v6;
    CMMsl::MotionContextActivity::~MotionContextActivity(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::MotionContextActivity *a2, CMMsl::MotionContextActivity *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  return result;
}

uint64_t CMMsl::MotionContextActivity::MotionContextActivity(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21D50;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void *CMMsl::MotionContextActivity::operator=(void *a1, void *a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionContextActivity::MotionContextActivity(&v8, a2);
    v4 = a1[2];
    v3 = a1[3];
    v5 = v11;
    a1[2] = v10;
    a1[3] = v5;
    v10 = v4;
    v11 = v3;
    v6 = a1[1];
    a1[1] = v9;
    v9 = v6;
    CMMsl::MotionContextActivity::~MotionContextActivity(&v8);
  }

  return a1;
}

uint64_t CMMsl::MotionContextActivity::formatText(CMMsl::MotionContextActivity *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "impulse");
  }

  v6 = *(this + 28);
  if ((v6 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "state");
    v6 = *(this + 28);
  }

  if (v6)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::MotionContextActivity::readFrom(CMMsl::MotionContextActivity *this, PB::Reader *a2)
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

LABEL_21:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_50;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        operator new();
      }

      if (v22 == 2)
      {
        *(this + 28) |= 1u;
        v32 = *(a2 + 1);
        if (v32 <= 0xFFFFFFFFFFFFFFF7 && v32 + 8 <= *(a2 + 2))
        {
          *(this + 2) = *(*a2 + v32);
          *(a2 + 1) += 8;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else if (v22 == 1)
      {
        *(this + 28) |= 2u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v33 = 0;
          v34 = 0;
          v28 = 0;
          v35 = (v25 + v24);
          v18 = v23 >= v24;
          v36 = v23 - v24;
          if (!v18)
          {
            v36 = 0;
          }

          v37 = v24 + 1;
          while (1)
          {
            if (!v36)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_48;
            }

            v38 = *v35;
            *(a2 + 1) = v37;
            v28 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v35;
            --v36;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
LABEL_43:
              LODWORD(v28) = 0;
              goto LABEL_48;
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

LABEL_48:
        *(this + 6) = v28;
      }

      else
      {
LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          v39 = 0;
          return v39 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_50;
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
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_21;
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
  }

LABEL_50:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t CMMsl::MotionContextActivity::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 28);
  }

  if (v4)
  {
    this = PB::Writer::write(a2, *(v3 + 16));
  }

  v5 = *(v3 + 8);
  if (v5)
  {

    return PB::Writer::writeSubmessage(a2, v5);
  }

  return this;
}

uint64_t CMMsl::MotionContextActivity::hash_value(CMMsl::MotionContextActivity *this)
{
  if ((*(this + 28) & 2) == 0)
  {
    v1 = 0;
    if (*(this + 28))
    {
      goto LABEL_3;
    }

LABEL_7:
    v2 = 0.0;
    goto LABEL_8;
  }

  v1 = *(this + 6);
  if ((*(this + 28) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 2);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

LABEL_8:
  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(v3 + 16);
    if ((*(v3 + 20) & 2) == 0)
    {
      v4 = 0;
    }

    v5 = *(v3 + 8) == 0.0 || (*(v3 + 20) & 1) == 0;
    v6 = *(v3 + 8);
    if (v5)
    {
      v6 = 0;
    }

    v3 = v6 ^ v4;
  }

  return *&v2 ^ v1 ^ v3;
}

void *CMMsl::MotionContextActivity::makeImpulse(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::MotionGPSLocation::~MotionGPSLocation(CMMsl::MotionGPSLocation *this)
{
  *this = &unk_286C21D88;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::MotionGPSLocation::~MotionGPSLocation(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::MotionGPSLocation *CMMsl::MotionGPSLocation::MotionGPSLocation(CMMsl::MotionGPSLocation *this, const CMMsl::MotionGPSLocation *a2)
{
  *this = &unk_286C21D88;
  *(this + 14) = 0;
  *(this + 45) = 0;
  v2 = *(a2 + 45);
  if ((v2 & 0x800) != 0)
  {
    v4 = *(a2 + 12);
    v3 = 2048;
    *(this + 45) = 2048;
    *(this + 12) = v4;
    v2 = *(a2 + 45);
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x40) != 0)
  {
LABEL_5:
    v5 = *(a2 + 7);
    v3 |= 0x40u;
    *(this + 45) = v3;
    *(this + 7) = v5;
    v2 = *(a2 + 45);
  }

LABEL_6:
  if ((v2 & 0x80) != 0)
  {
    v10 = *(a2 + 8);
    v3 |= 0x80u;
    *(this + 45) = v3;
    *(this + 8) = v10;
    v2 = *(a2 + 45);
    if ((v2 & 0x200) == 0)
    {
LABEL_8:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_39;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_8;
  }

  v11 = *(a2 + 10);
  v3 |= 0x200u;
  *(this + 45) = v3;
  *(this + 10) = v11;
  v2 = *(a2 + 45);
  if ((v2 & 0x400) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  v12 = *(a2 + 11);
  v3 |= 0x400u;
  *(this + 45) = v3;
  *(this + 11) = v12;
  v2 = *(a2 + 45);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  v13 = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 45) = v3;
  *(this + 6) = v13;
  v2 = *(a2 + 45);
  if ((v2 & 2) == 0)
  {
LABEL_11:
    if ((v2 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  v14 = *(a2 + 2);
  v3 |= 2u;
  *(this + 45) = v3;
  *(this + 2) = v14;
  v2 = *(a2 + 45);
  if ((v2 & 4) == 0)
  {
LABEL_12:
    if ((v2 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  v15 = *(a2 + 3);
  v3 |= 4u;
  *(this + 45) = v3;
  *(this + 3) = v15;
  v2 = *(a2 + 45);
  if ((v2 & 1) == 0)
  {
LABEL_13:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  v16 = *(a2 + 1);
  v3 |= 1u;
  *(this + 45) = v3;
  *(this + 1) = v16;
  v2 = *(a2 + 45);
  if ((v2 & 0x2000) == 0)
  {
LABEL_14:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  v17 = *(a2 + 15);
  v3 |= 0x2000u;
  *(this + 45) = v3;
  *(this + 15) = v17;
  v2 = *(a2 + 45);
  if ((v2 & 0x800000) == 0)
  {
LABEL_15:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  v18 = *(a2 + 41);
  v3 |= 0x800000u;
  *(this + 45) = v3;
  *(this + 41) = v18;
  v2 = *(a2 + 45);
  if ((v2 & 0x1000) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  v19 = *(a2 + 13);
  v3 |= 0x1000u;
  *(this + 45) = v3;
  *(this + 13) = v19;
  v2 = *(a2 + 45);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  v20 = *(a2 + 42);
  v3 |= 0x1000000u;
  *(this + 45) = v3;
  *(this + 42) = v20;
  v2 = *(a2 + 45);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  v21 = *(a2 + 43);
  v3 |= 0x2000000u;
  *(this + 45) = v3;
  *(this + 43) = v21;
  v2 = *(a2 + 45);
  if ((v2 & 0x20000) == 0)
  {
LABEL_19:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  v22 = *(a2 + 35);
  v3 |= 0x20000u;
  *(this + 45) = v3;
  *(this + 35) = v22;
  v2 = *(a2 + 45);
  if ((v2 & 0x80000) == 0)
  {
LABEL_20:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  v23 = *(a2 + 37);
  v3 |= 0x80000u;
  *(this + 45) = v3;
  *(this + 37) = v23;
  v2 = *(a2 + 45);
  if ((v2 & 0x40000) == 0)
  {
LABEL_21:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  v24 = *(a2 + 36);
  v3 |= 0x40000u;
  *(this + 45) = v3;
  *(this + 36) = v24;
  v2 = *(a2 + 45);
  if ((v2 & 0x100) == 0)
  {
LABEL_22:
    if ((v2 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  v25 = *(a2 + 9);
  v3 |= 0x100u;
  *(this + 45) = v3;
  *(this + 9) = v25;
  v2 = *(a2 + 45);
  if ((v2 & 8) == 0)
  {
LABEL_23:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  v26 = *(a2 + 4);
  v3 |= 8u;
  *(this + 45) = v3;
  *(this + 4) = v26;
  v2 = *(a2 + 45);
  if ((v2 & 0x10) == 0)
  {
LABEL_24:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  v27 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 45) = v3;
  *(this + 5) = v27;
  v2 = *(a2 + 45);
  if ((v2 & 0x200000) == 0)
  {
LABEL_25:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  v28 = *(a2 + 39);
  v3 |= 0x200000u;
  *(this + 45) = v3;
  *(this + 39) = v28;
  v2 = *(a2 + 45);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_26:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  v3 |= 0x4000000u;
  *(this + 44) = *(a2 + 44);
  *(this + 45) = v3;
  v2 = *(a2 + 45);
  if ((v2 & 0x400000) == 0)
  {
LABEL_27:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  v29 = *(a2 + 40);
  v3 |= 0x400000u;
  *(this + 45) = v3;
  *(this + 40) = v29;
  v2 = *(a2 + 45);
  if ((v2 & 0x10000) == 0)
  {
LABEL_28:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_58:
  v30 = *(a2 + 34);
  v3 |= 0x10000u;
  *(this + 45) = v3;
  *(this + 34) = v30;
  if ((*(a2 + 45) & 0x100000) != 0)
  {
LABEL_29:
    v6 = *(a2 + 38);
    *(this + 45) = v3 | 0x100000;
    *(this + 38) = v6;
  }

LABEL_30:
  if (*(a2 + 14))
  {
    operator new();
  }

  v7 = *(a2 + 45);
  if ((v7 & 0x8000) != 0)
  {
    v8 = *(a2 + 33);
    *(this + 45) |= 0x8000u;
    *(this + 33) = v8;
    v7 = *(a2 + 45);
  }

  if ((v7 & 0x4000) != 0)
  {
    v9 = *(a2 + 32);
    *(this + 45) |= 0x4000u;
    *(this + 32) = v9;
  }

  return this;
}

CMMsl *CMMsl::MotionGPSLocation::operator=(CMMsl *a1, const CMMsl::MotionGPSLocation *a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionGPSLocation::MotionGPSLocation(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::MotionGPSLocation::~MotionGPSLocation(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::MotionGPSLocation *a2, CMMsl::MotionGPSLocation *a3)
{
  v3 = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v3;
  v4 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  v5 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v5;
  v6 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  v7 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v7;
  v8 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v8;
  v9 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v9;
  v10 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v10;
  v11 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v11;
  v12 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v12;
  v13 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v13;
  v14 = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v14;
  v15 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v15;
  LODWORD(v15) = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v15;
  v16 = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = v16;
  LODWORD(v15) = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v15;
  LODWORD(v15) = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v15;
  LODWORD(v15) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v15;
  v17 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v17;
  v18 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v18;
  v19 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v19;
  v20 = *(this + 39);
  *(this + 39) = *(a2 + 39);
  *(a2 + 39) = v20;
  v21 = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v21;
  v22 = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v22;
  v23 = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v23;
  v24 = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v24;
  v25 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v25;
  LODWORD(v25) = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v25;
  result = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = result;
  return result;
}

uint64_t CMMsl::MotionGPSLocation::MotionGPSLocation(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21D88;
  *(a1 + 112) = 0;
  *(a1 + 180) = *(a2 + 180);
  *(a2 + 180) = 0;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  v4 = *(a2 + 112);
  *(a2 + 112) = 0;
  v5 = *(a1 + 112);
  *(a1 + 112) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 132) = *(a2 + 132);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

CMMsl *CMMsl::MotionGPSLocation::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionGPSLocation::MotionGPSLocation(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::MotionGPSLocation::~MotionGPSLocation(v5);
  }

  return a1;
}

uint64_t CMMsl::MotionGPSLocation::formatText(CMMsl::MotionGPSLocation *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 45);
  if (v5)
  {
    PB::TextFormatter::format(a2, "altitude", *(this + 1));
    v5 = *(this + 45);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "course", *(this + 2));
  v5 = *(this + 45);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "courseAccuracy", *(this + 3));
  v5 = *(this + 45);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "deltaDistance", *(this + 4));
  v5 = *(this + 45);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "deltaDistanceAccuracy", *(this + 5));
  v5 = *(this + 45);
  if ((v5 & 0x4000) == 0)
  {
LABEL_7:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "demConfidence", *(this + 32));
  v5 = *(this + 45);
  if ((v5 & 0x8000) == 0)
  {
LABEL_8:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "demNumContiguousFlatPoints");
  v5 = *(this + 45);
  if ((v5 & 0x10000) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "gnssModesOfOperation");
  v5 = *(this + 45);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "horizontalAccuracy", *(this + 6));
  v5 = *(this + 45);
  if ((v5 & 0x20000) == 0)
  {
LABEL_11:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "horzUncSemiMaj", *(this + 35));
  v5 = *(this + 45);
  if ((v5 & 0x40000) == 0)
  {
LABEL_12:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "horzUncSemiMajAz", *(this + 36));
  v5 = *(this + 45);
  if ((v5 & 0x80000) == 0)
  {
LABEL_13:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "horzUncSemiMin", *(this + 37));
  v5 = *(this + 45);
  if ((v5 & 0x40) == 0)
  {
LABEL_14:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "latitude", *(this + 7));
  v5 = *(this + 45);
  if ((v5 & 0x80) == 0)
  {
LABEL_15:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "longitude", *(this + 8));
  v5 = *(this + 45);
  if ((v5 & 0x100000) == 0)
  {
LABEL_16:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "notificationType");
  v5 = *(this + 45);
  if ((v5 & 0x100) == 0)
  {
LABEL_17:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "odometer", *(this + 9));
  v5 = *(this + 45);
  if ((v5 & 0x200000) == 0)
  {
LABEL_18:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "originDevice");
  v5 = *(this + 45);
  if ((v5 & 0x400000) == 0)
  {
LABEL_19:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "roadClass");
  v5 = *(this + 45);
  if ((v5 & 0x200) == 0)
  {
LABEL_20:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "speed", *(this + 10));
  v5 = *(this + 45);
  if ((v5 & 0x400) == 0)
  {
LABEL_21:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "speedAccuracy", *(this + 11));
  v5 = *(this + 45);
  if ((v5 & 0x800) == 0)
  {
LABEL_22:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "timestamp", *(this + 12));
  if ((*(this + 45) & 0x1000) != 0)
  {
LABEL_23:
    PB::TextFormatter::format(a2, "timestampGps", *(this + 13));
  }

LABEL_24:
  v6 = *(this + 14);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "trackRunData");
  }

  v7 = *(this + 45);
  if ((v7 & 0x800000) != 0)
  {
    PB::TextFormatter::format(a2, "type");
    v7 = *(this + 45);
    if ((v7 & 0x1000000) == 0)
    {
LABEL_28:
      if ((v7 & 0x2000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_59;
    }
  }

  else if ((v7 & 0x1000000) == 0)
  {
    goto LABEL_28;
  }

  PB::TextFormatter::format(a2, "undulation", *(this + 42));
  v7 = *(this + 45);
  if ((v7 & 0x2000000) == 0)
  {
LABEL_29:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(a2, "undulationModel");
  v7 = *(this + 45);
  if ((v7 & 0x2000) == 0)
  {
LABEL_30:
    if ((v7 & 0x4000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_60:
  PB::TextFormatter::format(a2, "verticalAccuracy", *(this + 15));
  if ((*(this + 45) & 0x4000000) != 0)
  {
LABEL_31:
    PB::TextFormatter::format(a2, "wayForm");
  }

LABEL_32:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::MotionGPSLocation::readFrom(CMMsl::MotionGPSLocation *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_239:
    v163 = v4 ^ 1;
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
        goto LABEL_239;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 45) |= 0x800u;
          v22 = *(a2 + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(a2 + 2))
          {
            goto LABEL_121;
          }

          *(this + 12) = *(*a2 + v22);
          goto LABEL_201;
        case 2u:
          *(this + 45) |= 0x40u;
          v44 = *(a2 + 1);
          if (v44 > 0xFFFFFFFFFFFFFFF7 || v44 + 8 > *(a2 + 2))
          {
            goto LABEL_121;
          }

          *(this + 7) = *(*a2 + v44);
          goto LABEL_201;
        case 3u:
          *(this + 45) |= 0x80u;
          v39 = *(a2 + 1);
          if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(a2 + 2))
          {
            goto LABEL_121;
          }

          *(this + 8) = *(*a2 + v39);
          goto LABEL_201;
        case 4u:
          *(this + 45) |= 0x200u;
          v42 = *(a2 + 1);
          if (v42 > 0xFFFFFFFFFFFFFFF7 || v42 + 8 > *(a2 + 2))
          {
            goto LABEL_121;
          }

          *(this + 10) = *(*a2 + v42);
          goto LABEL_201;
        case 5u:
          *(this + 45) |= 0x400u;
          v27 = *(a2 + 1);
          if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(a2 + 2))
          {
            goto LABEL_121;
          }

          *(this + 11) = *(*a2 + v27);
          goto LABEL_201;
        case 6u:
          *(this + 45) |= 0x20u;
          v55 = *(a2 + 1);
          if (v55 > 0xFFFFFFFFFFFFFFF7 || v55 + 8 > *(a2 + 2))
          {
            goto LABEL_121;
          }

          *(this + 6) = *(*a2 + v55);
          goto LABEL_201;
        case 7u:
          *(this + 45) |= 2u;
          v74 = *(a2 + 1);
          if (v74 > 0xFFFFFFFFFFFFFFF7 || v74 + 8 > *(a2 + 2))
          {
            goto LABEL_121;
          }

          *(this + 2) = *(*a2 + v74);
          goto LABEL_201;
        case 8u:
          *(this + 45) |= 4u;
          v43 = *(a2 + 1);
          if (v43 > 0xFFFFFFFFFFFFFFF7 || v43 + 8 > *(a2 + 2))
          {
            goto LABEL_121;
          }

          *(this + 3) = *(*a2 + v43);
          goto LABEL_201;
        case 9u:
          *(this + 45) |= 1u;
          v85 = *(a2 + 1);
          if (v85 > 0xFFFFFFFFFFFFFFF7 || v85 + 8 > *(a2 + 2))
          {
            goto LABEL_121;
          }

          *(this + 1) = *(*a2 + v85);
          goto LABEL_201;
        case 0xAu:
          *(this + 45) |= 0x2000u;
          v29 = *(a2 + 1);
          if (v29 > 0xFFFFFFFFFFFFFFF7 || v29 + 8 > *(a2 + 2))
          {
            goto LABEL_121;
          }

          *(this + 15) = *(*a2 + v29);
          goto LABEL_201;
        case 0xBu:
          *(this + 45) |= 0x800000u;
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
                goto LABEL_228;
              }

              v79 += 7;
              ++v83;
              v14 = v80++ > 8;
            }

            while (!v14);
LABEL_175:
            LODWORD(v81) = 0;
            goto LABEL_228;
          }

          v138 = 0;
          v139 = 0;
          v81 = 0;
          v140 = (v78 + v77);
          v18 = v76 >= v77;
          v141 = v76 - v77;
          if (!v18)
          {
            v141 = 0;
          }

          v142 = v77 + 1;
          while (2)
          {
            if (v141)
            {
              v143 = *v140;
              *(a2 + 1) = v142;
              v81 |= (v143 & 0x7F) << v138;
              if (v143 < 0)
              {
                v138 += 7;
                ++v140;
                --v141;
                ++v142;
                v14 = v139++ > 8;
                if (v14)
                {
                  goto LABEL_175;
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

LABEL_228:
          *(this + 41) = v81;
          goto LABEL_203;
        case 0xCu:
          *(this + 45) |= 0x1000u;
          v26 = *(a2 + 1);
          if (v26 > 0xFFFFFFFFFFFFFFF7 || v26 + 8 > *(a2 + 2))
          {
            goto LABEL_121;
          }

          *(this + 13) = *(*a2 + v26);
          goto LABEL_201;
        case 0xDu:
          *(this + 45) |= 0x1000000u;
          v28 = *(a2 + 1);
          if (v28 > 0xFFFFFFFFFFFFFFFBLL || v28 + 4 > *(a2 + 2))
          {
            goto LABEL_121;
          }

          *(this + 42) = *(*a2 + v28);
          goto LABEL_59;
        case 0xEu:
          *(this + 45) |= 0x2000000u;
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
                goto LABEL_225;
              }

              v68 += 7;
              ++v72;
              v14 = v69++ > 8;
            }

            while (!v14);
LABEL_167:
            LODWORD(v70) = 0;
            goto LABEL_225;
          }

          v132 = 0;
          v133 = 0;
          v70 = 0;
          v134 = (v67 + v66);
          v18 = v65 >= v66;
          v135 = v65 - v66;
          if (!v18)
          {
            v135 = 0;
          }

          v136 = v66 + 1;
          while (2)
          {
            if (v135)
            {
              v137 = *v134;
              *(a2 + 1) = v136;
              v70 |= (v137 & 0x7F) << v132;
              if (v137 < 0)
              {
                v132 += 7;
                ++v134;
                --v135;
                ++v136;
                v14 = v133++ > 8;
                if (v14)
                {
                  goto LABEL_167;
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

LABEL_225:
          *(this + 43) = v70;
          goto LABEL_203;
        case 0xFu:
          *(this + 45) |= 0x20000u;
          v25 = *(a2 + 1);
          if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(a2 + 2))
          {
            goto LABEL_121;
          }

          *(this + 35) = *(*a2 + v25);
          goto LABEL_59;
        case 0x10u:
          *(this + 45) |= 0x80000u;
          v40 = *(a2 + 1);
          if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(a2 + 2))
          {
            goto LABEL_121;
          }

          *(this + 37) = *(*a2 + v40);
          goto LABEL_59;
        case 0x11u:
          *(this + 45) |= 0x40000u;
          v24 = *(a2 + 1);
          if (v24 > 0xFFFFFFFFFFFFFFFBLL || v24 + 4 > *(a2 + 2))
          {
            goto LABEL_121;
          }

          *(this + 36) = *(*a2 + v24);
          goto LABEL_59;
        case 0x12u:
          *(this + 45) |= 0x100u;
          v45 = *(a2 + 1);
          if (v45 > 0xFFFFFFFFFFFFFFF7 || v45 + 8 > *(a2 + 2))
          {
            goto LABEL_121;
          }

          *(this + 9) = *(*a2 + v45);
          goto LABEL_201;
        case 0x13u:
          *(this + 45) |= 8u;
          v75 = *(a2 + 1);
          if (v75 > 0xFFFFFFFFFFFFFFF7 || v75 + 8 > *(a2 + 2))
          {
            goto LABEL_121;
          }

          *(this + 4) = *(*a2 + v75);
          goto LABEL_201;
        case 0x14u:
          *(this + 45) |= 0x10u;
          v95 = *(a2 + 1);
          if (v95 > 0xFFFFFFFFFFFFFFF7 || v95 + 8 > *(a2 + 2))
          {
            goto LABEL_121;
          }

          *(this + 5) = *(*a2 + v95);
LABEL_201:
          v41 = *(a2 + 1) + 8;
          goto LABEL_202;
        case 0x15u:
          *(this + 45) |= 0x200000u;
          v47 = *(a2 + 1);
          v46 = *(a2 + 2);
          v48 = *a2;
          if (v47 <= 0xFFFFFFFFFFFFFFF5 && v47 + 10 <= v46)
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = (v48 + v47);
            v53 = v47 + 1;
            do
            {
              *(a2 + 1) = v53;
              v54 = *v52++;
              v51 |= (v54 & 0x7F) << v49;
              if ((v54 & 0x80) == 0)
              {
                goto LABEL_219;
              }

              v49 += 7;
              ++v53;
              v14 = v50++ > 8;
            }

            while (!v14);
LABEL_151:
            LODWORD(v51) = 0;
            goto LABEL_219;
          }

          v120 = 0;
          v121 = 0;
          v51 = 0;
          v122 = (v48 + v47);
          v18 = v46 >= v47;
          v123 = v46 - v47;
          if (!v18)
          {
            v123 = 0;
          }

          v124 = v47 + 1;
          while (2)
          {
            if (v123)
            {
              v125 = *v122;
              *(a2 + 1) = v124;
              v51 |= (v125 & 0x7F) << v120;
              if (v125 < 0)
              {
                v120 += 7;
                ++v122;
                --v123;
                ++v124;
                v14 = v121++ > 8;
                if (v14)
                {
                  goto LABEL_151;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v51) = 0;
              }
            }

            else
            {
              LODWORD(v51) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_219:
          *(this + 39) = v51;
          goto LABEL_203;
        case 0x16u:
          *(this + 45) |= 0x4000000u;
          v57 = *(a2 + 1);
          v56 = *(a2 + 2);
          v58 = *a2;
          if (v57 <= 0xFFFFFFFFFFFFFFF5 && v57 + 10 <= v56)
          {
            v59 = 0;
            v60 = 0;
            v61 = 0;
            v62 = (v58 + v57);
            v63 = v57 + 1;
            do
            {
              *(a2 + 1) = v63;
              v64 = *v62++;
              v61 |= (v64 & 0x7F) << v59;
              if ((v64 & 0x80) == 0)
              {
                goto LABEL_222;
              }

              v59 += 7;
              ++v63;
              v14 = v60++ > 8;
            }

            while (!v14);
LABEL_159:
            LODWORD(v61) = 0;
            goto LABEL_222;
          }

          v126 = 0;
          v127 = 0;
          v61 = 0;
          v128 = (v58 + v57);
          v18 = v56 >= v57;
          v129 = v56 - v57;
          if (!v18)
          {
            v129 = 0;
          }

          v130 = v57 + 1;
          while (2)
          {
            if (v129)
            {
              v131 = *v128;
              *(a2 + 1) = v130;
              v61 |= (v131 & 0x7F) << v126;
              if (v131 < 0)
              {
                v126 += 7;
                ++v128;
                --v129;
                ++v130;
                v14 = v127++ > 8;
                if (v14)
                {
                  goto LABEL_159;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v61) = 0;
              }
            }

            else
            {
              LODWORD(v61) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_222:
          *(this + 44) = v61;
          goto LABEL_203;
        case 0x17u:
          *(this + 45) |= 0x400000u;
          v87 = *(a2 + 1);
          v86 = *(a2 + 2);
          v88 = *a2;
          if (v87 <= 0xFFFFFFFFFFFFFFF5 && v87 + 10 <= v86)
          {
            v89 = 0;
            v90 = 0;
            v91 = 0;
            v92 = (v88 + v87);
            v93 = v87 + 1;
            do
            {
              *(a2 + 1) = v93;
              v94 = *v92++;
              v91 |= (v94 & 0x7F) << v89;
              if ((v94 & 0x80) == 0)
              {
                goto LABEL_231;
              }

              v89 += 7;
              ++v93;
              v14 = v90++ > 8;
            }

            while (!v14);
LABEL_183:
            LODWORD(v91) = 0;
            goto LABEL_231;
          }

          v144 = 0;
          v145 = 0;
          v91 = 0;
          v146 = (v88 + v87);
          v18 = v86 >= v87;
          v147 = v86 - v87;
          if (!v18)
          {
            v147 = 0;
          }

          v148 = v87 + 1;
          while (2)
          {
            if (v147)
            {
              v149 = *v146;
              *(a2 + 1) = v148;
              v91 |= (v149 & 0x7F) << v144;
              if (v149 < 0)
              {
                v144 += 7;
                ++v146;
                --v147;
                ++v148;
                v14 = v145++ > 8;
                if (v14)
                {
                  goto LABEL_183;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v91) = 0;
              }
            }

            else
            {
              LODWORD(v91) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_231:
          *(this + 40) = v91;
          goto LABEL_203;
        case 0x18u:
          *(this + 45) |= 0x10000u;
          v97 = *(a2 + 1);
          v96 = *(a2 + 2);
          v98 = *a2;
          if (v97 <= 0xFFFFFFFFFFFFFFF5 && v97 + 10 <= v96)
          {
            v99 = 0;
            v100 = 0;
            v101 = 0;
            v102 = (v98 + v97);
            v103 = v97 + 1;
            do
            {
              *(a2 + 1) = v103;
              v104 = *v102++;
              v101 |= (v104 & 0x7F) << v99;
              if ((v104 & 0x80) == 0)
              {
                goto LABEL_234;
              }

              v99 += 7;
              ++v103;
              v14 = v100++ > 8;
            }

            while (!v14);
LABEL_191:
            LODWORD(v101) = 0;
            goto LABEL_234;
          }

          v150 = 0;
          v151 = 0;
          v101 = 0;
          v152 = (v98 + v97);
          v18 = v96 >= v97;
          v153 = v96 - v97;
          if (!v18)
          {
            v153 = 0;
          }

          v154 = v97 + 1;
          while (2)
          {
            if (v153)
            {
              v155 = *v152;
              *(a2 + 1) = v154;
              v101 |= (v155 & 0x7F) << v150;
              if (v155 < 0)
              {
                v150 += 7;
                ++v152;
                --v153;
                ++v154;
                v14 = v151++ > 8;
                if (v14)
                {
                  goto LABEL_191;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v101) = 0;
              }
            }

            else
            {
              LODWORD(v101) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_234:
          *(this + 34) = v101;
          goto LABEL_203;
        case 0x19u:
          *(this + 45) |= 0x100000u;
          v31 = *(a2 + 1);
          v30 = *(a2 + 2);
          v32 = *a2;
          if (v31 <= 0xFFFFFFFFFFFFFFF5 && v31 + 10 <= v30)
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = (v32 + v31);
            v37 = v31 + 1;
            do
            {
              *(a2 + 1) = v37;
              v38 = *v36++;
              v35 |= (v38 & 0x7F) << v33;
              if ((v38 & 0x80) == 0)
              {
                goto LABEL_216;
              }

              v33 += 7;
              ++v37;
              v14 = v34++ > 8;
            }

            while (!v14);
LABEL_143:
            LODWORD(v35) = 0;
            goto LABEL_216;
          }

          v114 = 0;
          v115 = 0;
          v35 = 0;
          v116 = (v32 + v31);
          v18 = v30 >= v31;
          v117 = v30 - v31;
          if (!v18)
          {
            v117 = 0;
          }

          v118 = v31 + 1;
          while (2)
          {
            if (v117)
            {
              v119 = *v116;
              *(a2 + 1) = v118;
              v35 |= (v119 & 0x7F) << v114;
              if (v119 < 0)
              {
                v114 += 7;
                ++v116;
                --v117;
                ++v118;
                v14 = v115++ > 8;
                if (v14)
                {
                  goto LABEL_143;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v35) = 0;
              }
            }

            else
            {
              LODWORD(v35) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_216:
          *(this + 38) = v35;
          goto LABEL_203;
        case 0x1Au:
          operator new();
        case 0x1Bu:
          *(this + 45) |= 0x8000u;
          v106 = *(a2 + 1);
          v105 = *(a2 + 2);
          v107 = *a2;
          if (v106 <= 0xFFFFFFFFFFFFFFF5 && v106 + 10 <= v105)
          {
            v108 = 0;
            v109 = 0;
            v110 = 0;
            v111 = (v107 + v106);
            v112 = v106 + 1;
            do
            {
              *(a2 + 1) = v112;
              v113 = *v111++;
              v110 |= (v113 & 0x7F) << v108;
              if ((v113 & 0x80) == 0)
              {
                goto LABEL_237;
              }

              v108 += 7;
              ++v112;
              v14 = v109++ > 8;
            }

            while (!v14);
LABEL_199:
            LODWORD(v110) = 0;
            goto LABEL_237;
          }

          v156 = 0;
          v157 = 0;
          v110 = 0;
          v158 = (v107 + v106);
          v18 = v105 >= v106;
          v159 = v105 - v106;
          if (!v18)
          {
            v159 = 0;
          }

          v160 = v106 + 1;
          break;
        case 0x1Cu:
          *(this + 45) |= 0x4000u;
          v23 = *(a2 + 1);
          if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(a2 + 2))
          {
LABEL_121:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 32) = *(*a2 + v23);
LABEL_59:
            v41 = *(a2 + 1) + 4;
LABEL_202:
            *(a2 + 1) = v41;
          }

          goto LABEL_203;
        default:
          goto LABEL_17;
      }

      while (1)
      {
        if (!v159)
        {
          LODWORD(v110) = 0;
          *(a2 + 24) = 1;
          goto LABEL_237;
        }

        v161 = *v158;
        *(a2 + 1) = v160;
        v110 |= (v161 & 0x7F) << v156;
        if ((v161 & 0x80) == 0)
        {
          break;
        }

        v156 += 7;
        ++v158;
        --v159;
        ++v160;
        v14 = v157++ > 8;
        if (v14)
        {
          goto LABEL_199;
        }
      }

      if (*(a2 + 24))
      {
        LODWORD(v110) = 0;
      }

LABEL_237:
      *(this + 33) = v110;
LABEL_203:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_239;
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
        goto LABEL_239;
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
      goto LABEL_203;
    }

    v163 = 0;
  }

  return v163 & 1;
}

uint64_t CMMsl::MotionGPSLocation::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 180);
  if ((v4 & 0x800) != 0)
  {
    this = PB::Writer::write(a2, *(this + 96));
    v4 = *(v3 + 180);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((v4 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 180);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 180);
  if ((v4 & 0x200) == 0)
  {
LABEL_5:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 80));
  v4 = *(v3 + 180);
  if ((v4 & 0x400) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 88));
  v4 = *(v3 + 180);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 180);
  if ((v4 & 2) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 180);
  if ((v4 & 4) == 0)
  {
LABEL_9:
    if ((v4 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 180);
  if ((v4 & 1) == 0)
  {
LABEL_10:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 180);
  if ((v4 & 0x2000) == 0)
  {
LABEL_11:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 120));
  v4 = *(v3 + 180);
  if ((v4 & 0x800000) == 0)
  {
LABEL_12:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 180);
  if ((v4 & 0x1000) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2, *(v3 + 104));
  v4 = *(v3 + 180);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 168));
  v4 = *(v3 + 180);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 180);
  if ((v4 & 0x20000) == 0)
  {
LABEL_16:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::write(a2, *(v3 + 140));
  v4 = *(v3 + 180);
  if ((v4 & 0x80000) == 0)
  {
LABEL_17:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::write(a2, *(v3 + 148));
  v4 = *(v3 + 180);
  if ((v4 & 0x40000) == 0)
  {
LABEL_18:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 144));
  v4 = *(v3 + 180);
  if ((v4 & 0x100) == 0)
  {
LABEL_19:
    if ((v4 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 180);
  if ((v4 & 8) == 0)
  {
LABEL_20:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 180);
  if ((v4 & 0x10) == 0)
  {
LABEL_21:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 180);
  if ((v4 & 0x200000) == 0)
  {
LABEL_22:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 180);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_23:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 180);
  if ((v4 & 0x400000) == 0)
  {
LABEL_24:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 180);
  if ((v4 & 0x10000) == 0)
  {
LABEL_25:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_56:
  this = PB::Writer::writeVarInt(a2);
  if ((*(v3 + 180) & 0x100000) != 0)
  {
LABEL_26:
    this = PB::Writer::writeVarInt(a2);
  }

LABEL_27:
  v5 = *(v3 + 112);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = *(v3 + 180);
  if ((v6 & 0x8000) != 0)
  {
    this = PB::Writer::writeVarInt(a2);
    v6 = *(v3 + 180);
  }

  if ((v6 & 0x4000) != 0)
  {
    v7 = *(v3 + 128);

    return PB::Writer::write(a2, v7);
  }

  return this;
}

unint64_t CMMsl::MotionGPSLocation::hash_value(CMMsl::MotionGPSLocation *this)
{
  v1 = this;
  v2 = *(this + 45);
  if ((v2 & 0x800) == 0)
  {
    v3 = 0;
    if ((v2 & 0x40) != 0)
    {
      goto LABEL_3;
    }

LABEL_82:
    v4 = 0;
    if ((v2 & 0x80) != 0)
    {
      goto LABEL_7;
    }

LABEL_83:
    v5 = 0;
    if ((v2 & 0x200) != 0)
    {
      goto LABEL_11;
    }

LABEL_84:
    v6 = 0;
    if ((v2 & 0x400) != 0)
    {
      goto LABEL_15;
    }

LABEL_85:
    v7 = 0;
    if ((v2 & 0x20) != 0)
    {
      goto LABEL_19;
    }

LABEL_86:
    v8 = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_23;
    }

LABEL_87:
    v9 = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_27;
    }

LABEL_88:
    v10 = 0;
    if (v2)
    {
      goto LABEL_31;
    }

LABEL_89:
    v11 = 0;
    if ((v2 & 0x2000) != 0)
    {
      goto LABEL_35;
    }

LABEL_90:
    v12 = 0;
    if ((v2 & 0x800000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_91;
  }

  if (*(this + 12) == 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + 12);
  }

  if ((v2 & 0x40) == 0)
  {
    goto LABEL_82;
  }

LABEL_3:
  if (*(this + 7) == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(this + 7);
  }

  if ((v2 & 0x80) == 0)
  {
    goto LABEL_83;
  }

LABEL_7:
  if (*(this + 8) == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(this + 8);
  }

  if ((v2 & 0x200) == 0)
  {
    goto LABEL_84;
  }

LABEL_11:
  if (*(this + 10) == 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(this + 10);
  }

  if ((v2 & 0x400) == 0)
  {
    goto LABEL_85;
  }

LABEL_15:
  if (*(this + 11) == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(this + 11);
  }

  if ((v2 & 0x20) == 0)
  {
    goto LABEL_86;
  }

LABEL_19:
  if (*(this + 6) == 0.0)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(this + 6);
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_87;
  }

LABEL_23:
  if (*(this + 2) == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(this + 2);
  }

  if ((v2 & 4) == 0)
  {
    goto LABEL_88;
  }

LABEL_27:
  if (*(this + 3) == 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(this + 3);
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_89;
  }

LABEL_31:
  if (*(this + 1) == 0.0)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(this + 1);
  }

  if ((v2 & 0x2000) == 0)
  {
    goto LABEL_90;
  }

LABEL_35:
  if (*(this + 15) == 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(this + 15);
  }

  if ((v2 & 0x800000) != 0)
  {
LABEL_39:
    v13 = *(this + 41);
    if ((v2 & 0x1000) != 0)
    {
      goto LABEL_40;
    }

LABEL_92:
    v14 = 0;
    if ((v2 & 0x1000000) != 0)
    {
      goto LABEL_44;
    }

LABEL_93:
    v16 = 0;
    if ((v2 & 0x2000000) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_94;
  }

LABEL_91:
  v13 = 0;
  if ((v2 & 0x1000) == 0)
  {
    goto LABEL_92;
  }

LABEL_40:
  if (*(this + 13) == 0.0)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(this + 13);
  }

  if ((v2 & 0x1000000) == 0)
  {
    goto LABEL_93;
  }

LABEL_44:
  v15 = *(this + 42);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  else
  {
    v16 = LODWORD(v15);
  }

  if ((v2 & 0x2000000) != 0)
  {
LABEL_48:
    v17 = *(this + 43);
    if ((v2 & 0x20000) != 0)
    {
      goto LABEL_49;
    }

LABEL_95:
    v19 = 0;
    if ((v2 & 0x80000) != 0)
    {
      goto LABEL_53;
    }

LABEL_96:
    v21 = 0;
    if ((v2 & 0x40000) != 0)
    {
      goto LABEL_57;
    }

LABEL_97:
    v23 = 0;
    if ((v2 & 0x100) != 0)
    {
      goto LABEL_61;
    }

LABEL_98:
    v24 = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_65;
    }

LABEL_99:
    v25 = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_69;
    }

LABEL_100:
    v26 = 0;
    if ((v2 & 0x200000) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_101;
  }

LABEL_94:
  v17 = 0;
  if ((v2 & 0x20000) == 0)
  {
    goto LABEL_95;
  }

LABEL_49:
  v18 = *(this + 35);
  if (v18 == 0.0)
  {
    v19 = 0;
  }

  else
  {
    v19 = LODWORD(v18);
  }

  if ((v2 & 0x80000) == 0)
  {
    goto LABEL_96;
  }

LABEL_53:
  v20 = *(this + 37);
  if (v20 == 0.0)
  {
    v21 = 0;
  }

  else
  {
    v21 = LODWORD(v20);
  }

  if ((v2 & 0x40000) == 0)
  {
    goto LABEL_97;
  }

LABEL_57:
  v22 = *(this + 36);
  if (v22 == 0.0)
  {
    v23 = 0;
  }

  else
  {
    v23 = LODWORD(v22);
  }

  if ((v2 & 0x100) == 0)
  {
    goto LABEL_98;
  }

LABEL_61:
  if (*(this + 9) == 0.0)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(this + 9);
  }

  if ((v2 & 8) == 0)
  {
    goto LABEL_99;
  }

LABEL_65:
  if (*(this + 4) == 0.0)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(this + 4);
  }

  if ((v2 & 0x10) == 0)
  {
    goto LABEL_100;
  }

LABEL_69:
  if (*(this + 5) == 0.0)
  {
    v26 = 0;
  }

  else
  {
    v26 = *(this + 5);
  }

  if ((v2 & 0x200000) != 0)
  {
LABEL_73:
    v27 = *(this + 39);
    if ((v2 & 0x4000000) != 0)
    {
      goto LABEL_74;
    }

    goto LABEL_102;
  }

LABEL_101:
  v27 = 0;
  if ((v2 & 0x4000000) != 0)
  {
LABEL_74:
    v28 = *(this + 44);
    if ((v2 & 0x400000) != 0)
    {
      goto LABEL_75;
    }

    goto LABEL_103;
  }

LABEL_102:
  v28 = 0;
  if ((v2 & 0x400000) != 0)
  {
LABEL_75:
    v29 = *(this + 40);
    if ((v2 & 0x10000) != 0)
    {
      goto LABEL_76;
    }

LABEL_104:
    v30 = 0;
    if ((v2 & 0x100000) != 0)
    {
      goto LABEL_77;
    }

    goto LABEL_105;
  }

LABEL_103:
  v29 = 0;
  if ((v2 & 0x10000) == 0)
  {
    goto LABEL_104;
  }

LABEL_76:
  v30 = *(this + 34);
  if ((v2 & 0x100000) != 0)
  {
LABEL_77:
    v61 = *(this + 38);
    goto LABEL_106;
  }

LABEL_105:
  v61 = 0;
LABEL_106:
  v31 = *(this + 14);
  if (v31)
  {
    v58 = v3;
    v50 = v25;
    v32 = v4;
    v56 = v5;
    v48 = v27;
    v33 = v6;
    v54 = v7;
    v45 = v30;
    v46 = v29;
    v34 = v8;
    v35 = v9;
    v52 = v23;
    v36 = v10;
    v60 = v11;
    v53 = v21;
    v37 = v1;
    v59 = v12;
    v51 = v24;
    v38 = v13;
    v57 = v14;
    v49 = v26;
    v39 = v16;
    v55 = v17;
    v47 = v28;
    v40 = v19;
    v31 = CMMsl::TrackRunData::hash_value(v31);
    v19 = v40;
    v7 = v54;
    v17 = v55;
    v16 = v39;
    v5 = v56;
    v14 = v57;
    v13 = v38;
    v12 = v59;
    v11 = v60;
    v1 = v37;
    v21 = v53;
    v10 = v36;
    v24 = v51;
    v23 = v52;
    v9 = v35;
    v30 = v45;
    v8 = v34;
    v29 = v46;
    v28 = v47;
    v6 = v33;
    v27 = v48;
    v26 = v49;
    v4 = v32;
    v25 = v50;
    v3 = v58;
  }

  if ((v2 & 0x8000) == 0)
  {
    v41 = 0;
    if ((v2 & 0x4000) != 0)
    {
      goto LABEL_110;
    }

LABEL_114:
    v43 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v16 ^ v17 ^ v19 ^ v21 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v61 ^ v31 ^ v41 ^ v43;
  }

  v41 = *(v1 + 33);
  if ((v2 & 0x4000) == 0)
  {
    goto LABEL_114;
  }

LABEL_110:
  v42 = *(v1 + 32);
  v43 = LODWORD(v42);
  if (v42 == 0.0)
  {
    v43 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v16 ^ v17 ^ v19 ^ v21 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v61 ^ v31 ^ v41 ^ v43;
}

void *CMMsl::MotionGPSLocation::makeTrackRunData(void *this)
{
  if (!this[14])
  {
    operator new();
  }

  return this;
}

void CMMsl::MotionHint::~MotionHint(CMMsl::MotionHint *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::MotionHint::MotionHint(uint64_t this, const CMMsl::MotionHint *a2)
{
  *this = &unk_286C21DC0;
  *(this + 24) = 0;
  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 24) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 24) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 4);
    v3 |= 2u;
    *(this + 24) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 5);
    *(this + 24) = v3 | 4;
    *(this + 20) = v6;
  }

  return this;
}

uint64_t CMMsl::MotionHint::operator=(uint64_t a1, const CMMsl::MotionHint *a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionHint::MotionHint(&v8, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v3;
    v4 = v10;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    *(a1 + 8) = v9;
    *(a1 + 16) = v4;
    v9 = v5;
    v10 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::MotionHint *a2, CMMsl::MotionHint *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  return result;
}

double CMMsl::MotionHint::MotionHint(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21DC0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return result;
}

{
  *a1 = &unk_286C21DC0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return result;
}

uint64_t CMMsl::MotionHint::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v6;
    v8[0] = &unk_286C21DC0;
    v9 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8[1] = v4;
    v8[2] = v5;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::MotionHint::formatText(CMMsl::MotionHint *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "event");
    v5 = *(this + 24);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 24) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  if ((*(this + 24) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "value");
  }

LABEL_5:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::MotionHint::readFrom(CMMsl::MotionHint *this, PB::Reader *a2)
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

LABEL_22:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_71;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 24) |= 4u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v46 = 0;
          v47 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v2 = *(a2 + 1);
          }

          v48 = (v32 + v31);
          v49 = v2 - v31;
          v50 = v31 + 1;
          while (1)
          {
            if (!v49)
            {
              LODWORD(v35) = 0;
              *(a2 + 24) = 1;
              goto LABEL_69;
            }

            v51 = v50;
            v52 = *v48;
            *(a2 + 1) = v51;
            v35 |= (v52 & 0x7F) << v46;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            ++v48;
            --v49;
            v50 = v51 + 1;
            v14 = v47++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              goto LABEL_68;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_68:
          v2 = v51;
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

LABEL_69:
        *(this + 5) = v35;
      }

      else if (v22 == 2)
      {
        *(this + 24) |= 2u;
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

          v41 = (v24 + v23);
          v42 = v2 - v23;
          v43 = v23 + 1;
          while (1)
          {
            if (!v42)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_65;
            }

            v44 = v43;
            v45 = *v41;
            *(a2 + 1) = v44;
            v27 |= (v45 & 0x7F) << v39;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            ++v41;
            --v42;
            v43 = v44 + 1;
            v14 = v40++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_64;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_64:
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

LABEL_65:
        *(this + 4) = v27;
      }

      else if (v22 == 1)
      {
        *(this + 24) |= 1u;
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
      }

      else
      {
LABEL_17:
        if (!PB::Reader::skip(a2))
        {
          v53 = 0;
          return v53 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_71;
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
  }

LABEL_71:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t CMMsl::MotionHint::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 1) == 0)
  {
    if ((*(this + 24) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 24) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(this + 8));
  v4 = *(v3 + 24);
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_7:

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::MotionHint::hash_value(CMMsl::MotionHint *this)
{
  if ((*(this + 24) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 24) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v2 = 0;
    if ((*(this + 24) & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    v3 = 0;
    return v2 ^ *&v1 ^ v3;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  v2 = *(this + 4);
  if ((*(this + 24) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  v3 = *(this + 5);
  return v2 ^ *&v1 ^ v3;
}

void CMMsl::MotionLocation::~MotionLocation(CMMsl::MotionLocation *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::MotionLocation::MotionLocation(uint64_t this, const CMMsl::MotionLocation *a2)
{
  *this = &unk_286C21DF8;
  *(this + 220) = 0;
  v2 = *(a2 + 55);
  if ((v2 & 0x40000) != 0)
  {
    v4 = *(a2 + 19);
    v3 = 0x40000;
    *(this + 220) = 0x40000;
    *(this + 152) = v4;
    v2 = *(a2 + 55);
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x100) != 0)
  {
LABEL_5:
    v5 = *(a2 + 9);
    v3 |= 0x100u;
    *(this + 220) = v3;
    *(this + 72) = v5;
    v2 = *(a2 + 55);
  }

LABEL_6:
  if ((v2 & 0x200) != 0)
  {
    v6 = *(a2 + 10);
    v3 |= 0x200u;
    *(this + 220) = v3;
    *(this + 80) = v6;
    v2 = *(a2 + 55);
    if ((v2 & 0x10000) == 0)
    {
LABEL_8:
      if ((v2 & 0x20000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_39;
    }
  }

  else if ((v2 & 0x10000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 17);
  v3 |= 0x10000u;
  *(this + 220) = v3;
  *(this + 136) = v7;
  v2 = *(a2 + 55);
  if ((v2 & 0x20000) == 0)
  {
LABEL_9:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  v8 = *(a2 + 18);
  v3 |= 0x20000u;
  *(this + 220) = v3;
  *(this + 144) = v8;
  v2 = *(a2 + 55);
  if ((v2 & 0x80) == 0)
  {
LABEL_10:
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  v9 = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 220) = v3;
  *(this + 64) = v9;
  v2 = *(a2 + 55);
  if ((v2 & 2) == 0)
  {
LABEL_11:
    if ((v2 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  v10 = *(a2 + 2);
  v3 |= 2u;
  *(this + 220) = v3;
  *(this + 16) = v10;
  v2 = *(a2 + 55);
  if ((v2 & 4) == 0)
  {
LABEL_12:
    if ((v2 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  v11 = *(a2 + 3);
  v3 |= 4u;
  *(this + 220) = v3;
  *(this + 24) = v11;
  v2 = *(a2 + 55);
  if ((v2 & 1) == 0)
  {
LABEL_13:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  v12 = *(a2 + 1);
  v3 |= 1u;
  *(this + 220) = v3;
  *(this + 8) = v12;
  v2 = *(a2 + 55);
  if ((v2 & 0x100000) == 0)
  {
LABEL_14:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  v13 = *(a2 + 21);
  v3 |= 0x100000u;
  *(this + 220) = v3;
  *(this + 168) = v13;
  v2 = *(a2 + 55);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_15:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  v14 = *(a2 + 51);
  v3 |= 0x10000000u;
  *(this + 220) = v3;
  *(this + 204) = v14;
  v2 = *(a2 + 55);
  if ((v2 & 0x80000) == 0)
  {
LABEL_16:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  v15 = *(a2 + 20);
  v3 |= 0x80000u;
  *(this + 220) = v3;
  *(this + 160) = v15;
  v2 = *(a2 + 55);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_17:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  v16 = *(a2 + 52);
  v3 |= 0x20000000u;
  *(this + 220) = v3;
  *(this + 208) = v16;
  v2 = *(a2 + 55);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  v17 = *(a2 + 53);
  v3 |= 0x40000000u;
  *(this + 220) = v3;
  *(this + 212) = v17;
  v2 = *(a2 + 55);
  if ((v2 & 0x200000) == 0)
  {
LABEL_19:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  v18 = *(a2 + 44);
  v3 |= 0x200000u;
  *(this + 220) = v3;
  *(this + 176) = v18;
  v2 = *(a2 + 55);
  if ((v2 & 0x800000) == 0)
  {
LABEL_20:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  v19 = *(a2 + 46);
  v3 |= 0x800000u;
  *(this + 220) = v3;
  *(this + 184) = v19;
  v2 = *(a2 + 55);
  if ((v2 & 0x400000) == 0)
  {
LABEL_21:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  v20 = *(a2 + 45);
  v3 |= 0x400000u;
  *(this + 220) = v3;
  *(this + 180) = v20;
  v2 = *(a2 + 55);
  if ((v2 & 0x800) == 0)
  {
LABEL_22:
    if ((v2 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  v21 = *(a2 + 12);
  v3 |= 0x800u;
  *(this + 220) = v3;
  *(this + 96) = v21;
  v2 = *(a2 + 55);
  if ((v2 & 8) == 0)
  {
LABEL_23:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  v22 = *(a2 + 4);
  v3 |= 8u;
  *(this + 220) = v3;
  *(this + 32) = v22;
  v2 = *(a2 + 55);
  if ((v2 & 0x10) == 0)
  {
LABEL_24:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  v23 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 220) = v3;
  *(this + 40) = v23;
  v2 = *(a2 + 55);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_25:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  v24 = *(a2 + 48);
  v3 |= 0x2000000u;
  *(this + 220) = v3;
  *(this + 192) = v24;
  v2 = *(a2 + 55);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_26:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  v25 = *(a2 + 50);
  v3 |= 0x8000000u;
  *(this + 220) = v3;
  *(this + 200) = v25;
  v2 = *(a2 + 55);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_27:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  v26 = *(a2 + 47);
  v3 |= 0x1000000u;
  *(this + 220) = v3;
  *(this + 188) = v26;
  v2 = *(a2 + 55);
  if ((v2 & 0x20) == 0)
  {
LABEL_28:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  v27 = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 220) = v3;
  *(this + 48) = v27;
  v2 = *(a2 + 55);
  if ((v2 & 0x40) == 0)
  {
LABEL_29:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_60;
  }

LABEL_59:
  v28 = *(a2 + 7);
  v3 |= 0x40u;
  *(this + 220) = v3;
  *(this + 56) = v28;
  v2 = *(a2 + 55);
  if ((v2 & 0x8000) == 0)
  {
LABEL_30:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_61;
  }

LABEL_60:
  v29 = *(a2 + 16);
  v3 |= 0x8000u;
  *(this + 220) = v3;
  *(this + 128) = v29;
  v2 = *(a2 + 55);
  if ((v2 & 0x400) == 0)
  {
LABEL_31:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_62;
  }

LABEL_61:
  v30 = *(a2 + 11);
  v3 |= 0x400u;
  *(this + 220) = v3;
  *(this + 88) = v30;
  v2 = *(a2 + 55);
  if ((v2 & 0x80000000) == 0)
  {
LABEL_32:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_63;
  }

LABEL_62:
  v31 = *(a2 + 216);
  v3 |= 0x80000000;
  *(this + 220) = v3;
  *(this + 216) = v31;
  v2 = *(a2 + 55);
  if ((v2 & 0x1000) == 0)
  {
LABEL_33:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_64;
  }

LABEL_63:
  v32 = *(a2 + 13);
  v3 |= 0x1000u;
  *(this + 220) = v3;
  *(this + 104) = v32;
  v2 = *(a2 + 55);
  if ((v2 & 0x4000) == 0)
  {
LABEL_34:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_65;
  }

LABEL_64:
  v33 = *(a2 + 15);
  v3 |= 0x4000u;
  *(this + 220) = v3;
  *(this + 120) = v33;
  v2 = *(a2 + 55);
  if ((v2 & 0x2000) == 0)
  {
LABEL_35:
    if ((v2 & 0x4000000) == 0)
    {
      return this;
    }

LABEL_66:
    v35 = *(a2 + 49);
    *(this + 220) = v3 | 0x4000000;
    *(this + 196) = v35;
    return this;
  }

LABEL_65:
  v34 = *(a2 + 14);
  v3 |= 0x2000u;
  *(this + 220) = v3;
  *(this + 112) = v34;
  if ((*(a2 + 55) & 0x4000000) != 0)
  {
    goto LABEL_66;
  }

  return this;
}

CMMsl *CMMsl::MotionLocation::operator=(CMMsl *a1, const CMMsl::MotionLocation *a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionLocation::MotionLocation(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::MotionLocation *a2, CMMsl::MotionLocation *a3)
{
  v3 = *(this + 55);
  *(this + 55) = *(a2 + 55);
  *(a2 + 55) = v3;
  v4 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v4;
  v5 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v5;
  v6 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v6;
  v7 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v7;
  v8 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v8;
  v9 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v10;
  v11 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v11;
  v12 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v12;
  v13 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v13;
  v14 = *(this + 51);
  *(this + 51) = *(a2 + 51);
  *(a2 + 51) = v14;
  v15 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v15;
  LODWORD(v15) = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v15;
  v16 = *(this + 53);
  *(this + 53) = *(a2 + 53);
  *(a2 + 53) = v16;
  LODWORD(v15) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v15;
  LODWORD(v15) = *(this + 46);
  *(this + 46) = *(a2 + 46);
  *(a2 + 46) = v15;
  LODWORD(v15) = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v15;
  v17 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v17;
  v18 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v18;
  v19 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v19;
  v20 = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v20;
  v21 = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v21;
  v22 = *(this + 47);
  *(this + 47) = *(a2 + 47);
  *(a2 + 47) = v22;
  v23 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v23;
  v24 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v24;
  v25 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v25;
  v26 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v26;
  LOBYTE(v22) = *(this + 216);
  *(this + 216) = *(a2 + 216);
  *(a2 + 216) = v22;
  v27 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v27;
  v28 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v28;
  result = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = result;
  v30 = *(this + 49);
  *(this + 49) = *(a2 + 49);
  *(a2 + 49) = v30;
  return result;
}

double CMMsl::MotionLocation::MotionLocation(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21DF8;
  *(a1 + 220) = *(a2 + 220);
  *(a2 + 220) = 0;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 212) = *(a2 + 212);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  result = *(a2 + 112);
  *(a1 + 112) = result;
  *(a1 + 196) = *(a2 + 196);
  return result;
}

CMMsl *CMMsl::MotionLocation::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionLocation::MotionLocation(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::MotionLocation::formatText(CMMsl::MotionLocation *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 55);
  if (v5)
  {
    PB::TextFormatter::format(a2, "altitude", *(this + 1));
    v5 = *(this + 55);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "course", *(this + 2));
  v5 = *(this + 55);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "courseAccuracy", *(this + 3));
  v5 = *(this + 55);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "deltaDistance", *(this + 4));
  v5 = *(this + 55);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "deltaDistanceAccuracy", *(this + 5));
  v5 = *(this + 55);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "groundAltitude", *(this + 6));
  v5 = *(this + 55);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "groundAltitudeUncertainty", *(this + 7));
  v5 = *(this + 55);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "horizontalAccuracy", *(this + 8));
  v5 = *(this + 55);
  if ((v5 & 0x200000) == 0)
  {
LABEL_10:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "horzUncSemiMaj", *(this + 44));
  v5 = *(this + 55);
  if ((v5 & 0x400000) == 0)
  {
LABEL_11:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "horzUncSemiMajAz", *(this + 45));
  v5 = *(this + 55);
  if ((v5 & 0x800000) == 0)
  {
LABEL_12:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "horzUncSemiMin", *(this + 46));
  v5 = *(this + 55);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "isPrefilteredLocation");
  v5 = *(this + 55);
  if ((v5 & 0x100) == 0)
  {
LABEL_14:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "latitude", *(this + 9));
  v5 = *(this + 55);
  if ((v5 & 0x200) == 0)
  {
LABEL_15:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "longitude", *(this + 10));
  v5 = *(this + 55);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "matchQuality");
  v5 = *(this + 55);
  if ((v5 & 0x400) == 0)
  {
LABEL_17:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "maxAbsSlope", *(this + 11));
  v5 = *(this + 55);
  if ((v5 & 0x800) == 0)
  {
LABEL_18:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "odometer", *(this + 12));
  v5 = *(this + 55);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "originDevice");
  v5 = *(this + 55);
  if ((v5 & 0x1000) == 0)
  {
LABEL_20:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "rawAltitude", *(this + 13));
  v5 = *(this + 55);
  if ((v5 & 0x2000) == 0)
  {
LABEL_21:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(a2, "rawUndulation", *(this + 14));
  v5 = *(this + 55);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_22:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(a2, "rawUndulationModel");
  v5 = *(this + 55);
  if ((v5 & 0x4000) == 0)
  {
LABEL_23:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(a2, "rawVerticalAccuracy", *(this + 15));
  v5 = *(this + 55);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(a2, "signalEnvironment");
  v5 = *(this + 55);
  if ((v5 & 0x8000) == 0)
  {
LABEL_25:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(a2, "slope", *(this + 16));
  v5 = *(this + 55);
  if ((v5 & 0x10000) == 0)
  {
LABEL_26:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(a2, "speed", *(this + 17));
  v5 = *(this + 55);
  if ((v5 & 0x20000) == 0)
  {
LABEL_27:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(a2, "speedAccuracy", *(this + 18));
  v5 = *(this + 55);
  if ((v5 & 0x40000) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(a2, "timestamp", *(this + 19));
  v5 = *(this + 55);
  if ((v5 & 0x80000) == 0)
  {
LABEL_29:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(a2, "timestampGps", *(this + 20));
  v5 = *(this + 55);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(a2, "type");
  v5 = *(this + 55);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(a2, "undulation", *(this + 52));
  v5 = *(this + 55);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_67:
  PB::TextFormatter::format(a2, "undulationModel");
  if ((*(this + 55) & 0x100000) != 0)
  {
LABEL_33:
    PB::TextFormatter::format(a2, "verticalAccuracy", *(this + 21));
  }

LABEL_34:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::MotionLocation::readFrom(CMMsl::MotionLocation *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_228:
    v114 = v4 ^ 1;
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
        goto LABEL_228;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 55) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_192;
        case 2u:
          *(this + 55) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_192;
        case 3u:
          *(this + 55) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_192;
        case 4u:
          *(this + 55) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_192;
        case 5u:
          *(this + 55) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_192;
        case 6u:
          *(this + 55) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_192;
        case 7u:
          *(this + 55) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_192;
        case 8u:
          *(this + 55) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_192;
        case 9u:
          *(this + 55) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_192;
        case 0xAu:
          *(this + 55) |= 0x100000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 21) = *(*a2 + v2);
          goto LABEL_192;
        case 0xBu:
          *(this + 55) |= 0x10000000u;
          v56 = *(a2 + 1);
          v2 = *(a2 + 2);
          v57 = *a2;
          if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v2)
          {
            v100 = 0;
            v101 = 0;
            v60 = 0;
            if (v2 <= v56)
            {
              v2 = *(a2 + 1);
            }

            v102 = (v57 + v56);
            v103 = v2 - v56;
            v104 = v56 + 1;
            while (1)
            {
              if (!v103)
              {
                LODWORD(v60) = 0;
                *(a2 + 24) = 1;
                goto LABEL_222;
              }

              v105 = v104;
              v106 = *v102;
              *(a2 + 1) = v105;
              v60 |= (v106 & 0x7F) << v100;
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
                LODWORD(v60) = 0;
LABEL_221:
                v2 = v105;
                goto LABEL_222;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v60) = 0;
            }

            goto LABEL_221;
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
              goto LABEL_222;
            }

            v58 += 7;
            ++v62;
            v14 = v59++ > 8;
          }

          while (!v14);
          LODWORD(v60) = 0;
LABEL_222:
          *(this + 51) = v60;
          break;
        case 0xCu:
          *(this + 55) |= 0x80000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_192;
        case 0xDu:
          *(this + 55) |= 0x20000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 52) = *(*a2 + v2);
          goto LABEL_56;
        case 0xEu:
          *(this + 55) |= 0x40000000u;
          v48 = *(a2 + 1);
          v2 = *(a2 + 2);
          v49 = *a2;
          if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
          {
            v93 = 0;
            v94 = 0;
            v52 = 0;
            if (v2 <= v48)
            {
              v2 = *(a2 + 1);
            }

            v95 = (v49 + v48);
            v96 = v2 - v48;
            v97 = v48 + 1;
            while (1)
            {
              if (!v96)
              {
                LODWORD(v52) = 0;
                *(a2 + 24) = 1;
                goto LABEL_218;
              }

              v98 = v97;
              v99 = *v95;
              *(a2 + 1) = v98;
              v52 |= (v99 & 0x7F) << v93;
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
                LODWORD(v52) = 0;
LABEL_217:
                v2 = v98;
                goto LABEL_218;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v52) = 0;
            }

            goto LABEL_217;
          }

          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = (v49 + v48);
          v54 = v48 + 1;
          do
          {
            v2 = v54;
            *(a2 + 1) = v54;
            v55 = *v53++;
            v52 |= (v55 & 0x7F) << v50;
            if ((v55 & 0x80) == 0)
            {
              goto LABEL_218;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
          LODWORD(v52) = 0;
LABEL_218:
          *(this + 53) = v52;
          break;
        case 0xFu:
          *(this + 55) |= 0x200000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 44) = *(*a2 + v2);
          goto LABEL_56;
        case 0x10u:
          *(this + 55) |= 0x800000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 46) = *(*a2 + v2);
          goto LABEL_56;
        case 0x11u:
          *(this + 55) |= 0x400000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 45) = *(*a2 + v2);
LABEL_56:
          v2 = *(a2 + 1) + 4;
          goto LABEL_193;
        case 0x12u:
          *(this + 55) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_192;
        case 0x13u:
          *(this + 55) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_192;
        case 0x14u:
          *(this + 55) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_192;
        case 0x15u:
          *(this + 55) |= 0x2000000u;
          v32 = *(a2 + 1);
          v2 = *(a2 + 2);
          v33 = *a2;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v79 = 0;
            v80 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v2 = *(a2 + 1);
            }

            v81 = (v33 + v32);
            v82 = v2 - v32;
            v83 = v32 + 1;
            while (1)
            {
              if (!v82)
              {
                LODWORD(v36) = 0;
                *(a2 + 24) = 1;
                goto LABEL_210;
              }

              v84 = v83;
              v85 = *v81;
              *(a2 + 1) = v84;
              v36 |= (v85 & 0x7F) << v79;
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
                LODWORD(v36) = 0;
LABEL_209:
                v2 = v84;
                goto LABEL_210;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v36) = 0;
            }

            goto LABEL_209;
          }

          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = (v33 + v32);
          v38 = v32 + 1;
          do
          {
            v2 = v38;
            *(a2 + 1) = v38;
            v39 = *v37++;
            v36 |= (v39 & 0x7F) << v34;
            if ((v39 & 0x80) == 0)
            {
              goto LABEL_210;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
          }

          while (!v14);
          LODWORD(v36) = 0;
LABEL_210:
          *(this + 48) = v36;
          break;
        case 0x16u:
          *(this + 55) |= 0x8000000u;
          v40 = *(a2 + 1);
          v2 = *(a2 + 2);
          v41 = *a2;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
          {
            v86 = 0;
            v87 = 0;
            v44 = 0;
            if (v2 <= v40)
            {
              v2 = *(a2 + 1);
            }

            v88 = (v41 + v40);
            v89 = v2 - v40;
            v90 = v40 + 1;
            while (1)
            {
              if (!v89)
              {
                LODWORD(v44) = 0;
                *(a2 + 24) = 1;
                goto LABEL_214;
              }

              v91 = v90;
              v92 = *v88;
              *(a2 + 1) = v91;
              v44 |= (v92 & 0x7F) << v86;
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
                LODWORD(v44) = 0;
LABEL_213:
                v2 = v91;
                goto LABEL_214;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v44) = 0;
            }

            goto LABEL_213;
          }

          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = (v41 + v40);
          v46 = v40 + 1;
          do
          {
            v2 = v46;
            *(a2 + 1) = v46;
            v47 = *v45++;
            v44 |= (v47 & 0x7F) << v42;
            if ((v47 & 0x80) == 0)
            {
              goto LABEL_214;
            }

            v42 += 7;
            ++v46;
            v14 = v43++ > 8;
          }

          while (!v14);
          LODWORD(v44) = 0;
LABEL_214:
          *(this + 50) = v44;
          break;
        case 0x17u:
          *(this + 55) |= 0x1000000u;
          v64 = *(a2 + 1);
          v2 = *(a2 + 2);
          v65 = *a2;
          if (v64 > 0xFFFFFFFFFFFFFFF5 || v64 + 10 > v2)
          {
            v107 = 0;
            v108 = 0;
            v68 = 0;
            if (v2 <= v64)
            {
              v2 = *(a2 + 1);
            }

            v109 = (v65 + v64);
            v110 = v2 - v64;
            v111 = v64 + 1;
            while (1)
            {
              if (!v110)
              {
                LODWORD(v68) = 0;
                *(a2 + 24) = 1;
                goto LABEL_226;
              }

              v112 = v111;
              v113 = *v109;
              *(a2 + 1) = v112;
              v68 |= (v113 & 0x7F) << v107;
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
                LODWORD(v68) = 0;
LABEL_225:
                v2 = v112;
                goto LABEL_226;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v68) = 0;
            }

            goto LABEL_225;
          }

          v66 = 0;
          v67 = 0;
          v68 = 0;
          v69 = (v65 + v64);
          v70 = v64 + 1;
          do
          {
            v2 = v70;
            *(a2 + 1) = v70;
            v71 = *v69++;
            v68 |= (v71 & 0x7F) << v66;
            if ((v71 & 0x80) == 0)
            {
              goto LABEL_226;
            }

            v66 += 7;
            ++v70;
            v14 = v67++ > 8;
          }

          while (!v14);
          LODWORD(v68) = 0;
LABEL_226:
          *(this + 47) = v68;
          break;
        case 0x18u:
          *(this + 55) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_192;
        case 0x19u:
          *(this + 55) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_192;
        case 0x1Au:
          *(this + 55) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_192;
        case 0x1Bu:
          *(this + 55) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_192;
        case 0x1Cu:
          *(this + 55) |= 0x80000000;
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

          *(this + 216) = v23;
          break;
        case 0x1Du:
          *(this + 55) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_192;
        case 0x1Eu:
          *(this + 55) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_140;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_192;
        case 0x1Fu:
          *(this + 55) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_140:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 14) = *(*a2 + v2);
LABEL_192:
            v2 = *(a2 + 1) + 8;
LABEL_193:
            *(a2 + 1) = v2;
          }

          break;
        case 0x20u:
          *(this + 55) |= 0x4000000u;
          v24 = *(a2 + 1);
          v2 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v72 = 0;
            v73 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(a2 + 1);
            }

            v74 = (v25 + v24);
            v75 = v2 - v24;
            v76 = v24 + 1;
            while (1)
            {
              if (!v75)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_206;
              }

              v77 = v76;
              v78 = *v74;
              *(a2 + 1) = v77;
              v28 |= (v78 & 0x7F) << v72;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v72 += 7;
              ++v74;
              --v75;
              v76 = v77 + 1;
              v14 = v73++ > 8;
              if (v14)
              {
                LODWORD(v28) = 0;
LABEL_205:
                v2 = v77;
                goto LABEL_206;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_205;
          }

          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          do
          {
            v2 = v30;
            *(a2 + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              goto LABEL_206;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_206:
          *(this + 49) = v28;
          break;
        default:
          goto LABEL_17;
      }

LABEL_194:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_228;
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
        goto LABEL_228;
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
      goto LABEL_194;
    }

    v114 = 0;
  }

  return v114 & 1;
}

uint64_t CMMsl::MotionLocation::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 220);
  if ((v4 & 0x40000) != 0)
  {
    this = PB::Writer::write(a2, *(this + 152));
    v4 = *(v3 + 220);
    if ((v4 & 0x100) == 0)
    {
LABEL_3:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v4 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 220);
  if ((v4 & 0x200) == 0)
  {
LABEL_4:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 80));
  v4 = *(v3 + 220);
  if ((v4 & 0x10000) == 0)
  {
LABEL_5:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 136));
  v4 = *(v3 + 220);
  if ((v4 & 0x20000) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 144));
  v4 = *(v3 + 220);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 220);
  if ((v4 & 2) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 220);
  if ((v4 & 4) == 0)
  {
LABEL_9:
    if ((v4 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 220);
  if ((v4 & 1) == 0)
  {
LABEL_10:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 220);
  if ((v4 & 0x100000) == 0)
  {
LABEL_11:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 168));
  v4 = *(v3 + 220);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_12:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 220);
  if ((v4 & 0x80000) == 0)
  {
LABEL_13:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 160));
  v4 = *(v3 + 220);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::write(a2, *(v3 + 208));
  v4 = *(v3 + 220);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 220);
  if ((v4 & 0x200000) == 0)
  {
LABEL_16:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::write(a2, *(v3 + 176));
  v4 = *(v3 + 220);
  if ((v4 & 0x800000) == 0)
  {
LABEL_17:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 184));
  v4 = *(v3 + 220);
  if ((v4 & 0x400000) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::write(a2, *(v3 + 180));
  v4 = *(v3 + 220);
  if ((v4 & 0x800) == 0)
  {
LABEL_19:
    if ((v4 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = PB::Writer::write(a2, *(v3 + 96));
  v4 = *(v3 + 220);
  if ((v4 & 8) == 0)
  {
LABEL_20:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 220);
  if ((v4 & 0x10) == 0)
  {
LABEL_21:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 220);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_22:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 220);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_23:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 220);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_24:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 220);
  if ((v4 & 0x20) == 0)
  {
LABEL_25:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 220);
  if ((v4 & 0x40) == 0)
  {
LABEL_26:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 220);
  if ((v4 & 0x8000) == 0)
  {
LABEL_27:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = PB::Writer::write(a2, *(v3 + 128));
  v4 = *(v3 + 220);
  if ((v4 & 0x400) == 0)
  {
LABEL_28:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = PB::Writer::write(a2, *(v3 + 88));
  v4 = *(v3 + 220);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 220);
  if ((v4 & 0x1000) == 0)
  {
LABEL_30:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = PB::Writer::write(a2, *(v3 + 104));
  v4 = *(v3 + 220);
  if ((v4 & 0x4000) == 0)
  {
LABEL_31:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_32;
    }

LABEL_64:
    this = PB::Writer::write(a2, *(v3 + 112));
    if ((*(v3 + 220) & 0x4000000) == 0)
    {
      return this;
    }

    goto LABEL_65;
  }

LABEL_63:
  this = PB::Writer::write(a2, *(v3 + 120));
  v4 = *(v3 + 220);
  if ((v4 & 0x2000) != 0)
  {
    goto LABEL_64;
  }

LABEL_32:
  if ((v4 & 0x4000000) == 0)
  {
    return this;
  }

LABEL_65:

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::MotionLocation::hash_value(CMMsl::MotionLocation *this)
{
  v1 = *(this + 55);
  if ((v1 & 0x40000) != 0)
  {
    if (*(this + 19) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 19);
    }
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 0x100) == 0)
  {
    v43 = 0.0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_8;
    }

LABEL_103:
    v42 = 0.0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_11;
    }

LABEL_104:
    v41 = 0.0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_14;
    }

LABEL_105:
    v40 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_17;
    }

LABEL_106:
    v39 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_20;
    }

LABEL_107:
    v7 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_24;
    }

LABEL_108:
    v8 = 0;
    if (v1)
    {
      goto LABEL_28;
    }

LABEL_109:
    v9 = 0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_32;
    }

LABEL_110:
    v10 = 0;
    if ((v1 & 0x10000000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_111;
  }

  v37 = *(this + 9);
  if (v37 == 0.0)
  {
    v37 = 0.0;
  }

  v43 = v37;
  if ((v1 & 0x200) == 0)
  {
    goto LABEL_103;
  }

LABEL_8:
  v3 = *(this + 10);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  v42 = v3;
  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_104;
  }

LABEL_11:
  v4 = *(this + 17);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  v41 = v4;
  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_105;
  }

LABEL_14:
  v5 = *(this + 18);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  v40 = v5;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_106;
  }

LABEL_17:
  v6 = *(this + 8);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  v39 = v6;
  if ((v1 & 2) == 0)
  {
    goto LABEL_107;
  }

LABEL_20:
  if (*(this + 2) == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(this + 2);
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_108;
  }

LABEL_24:
  if (*(this + 3) == 0.0)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(this + 3);
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_109;
  }

LABEL_28:
  if (*(this + 1) == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(this + 1);
  }

  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_110;
  }

LABEL_32:
  if (*(this + 21) == 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(this + 21);
  }

  if ((v1 & 0x10000000) != 0)
  {
LABEL_36:
    v11 = *(this + 51);
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_37;
    }

LABEL_112:
    v12 = 0;
    if ((v1 & 0x20000000) != 0)
    {
      goto LABEL_41;
    }

LABEL_113:
    v14 = 0;
    if ((v1 & 0x40000000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_114;
  }

LABEL_111:
  v11 = 0;
  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_112;
  }

LABEL_37:
  if (*(this + 20) == 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(this + 20);
  }

  if ((v1 & 0x20000000) == 0)
  {
    goto LABEL_113;
  }

LABEL_41:
  v13 = *(this + 52);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  else
  {
    v14 = LODWORD(v13);
  }

  if ((v1 & 0x40000000) != 0)
  {
LABEL_45:
    v15 = *(this + 53);
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_46;
    }

LABEL_115:
    v17 = 0;
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_50;
    }

LABEL_116:
    v19 = 0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_54;
    }

LABEL_117:
    v21 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_58;
    }

LABEL_118:
    v22 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_62;
    }

LABEL_119:
    v23 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_66;
    }

LABEL_120:
    v24 = 0;
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_70;
    }

    goto LABEL_121;
  }

LABEL_114:
  v15 = 0;
  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_115;
  }

LABEL_46:
  v16 = *(this + 44);
  if (v16 == 0.0)
  {
    v17 = 0;
  }

  else
  {
    v17 = LODWORD(v16);
  }

  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_116;
  }

LABEL_50:
  v18 = *(this + 46);
  if (v18 == 0.0)
  {
    v19 = 0;
  }

  else
  {
    v19 = LODWORD(v18);
  }

  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_117;
  }

LABEL_54:
  v20 = *(this + 45);
  if (v20 == 0.0)
  {
    v21 = 0;
  }

  else
  {
    v21 = LODWORD(v20);
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_118;
  }

LABEL_58:
  if (*(this + 12) == 0.0)
  {
    v22 = 0;
  }

  else
  {
    v22 = *(this + 12);
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_119;
  }

LABEL_62:
  if (*(this + 4) == 0.0)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(this + 4);
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_120;
  }

LABEL_66:
  if (*(this + 5) == 0.0)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(this + 5);
  }

  if ((v1 & 0x2000000) != 0)
  {
LABEL_70:
    v25 = *(this + 48);
    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_71;
    }

    goto LABEL_122;
  }

LABEL_121:
  v25 = 0;
  if ((v1 & 0x8000000) != 0)
  {
LABEL_71:
    v26 = *(this + 50);
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_72;
    }

    goto LABEL_123;
  }

LABEL_122:
  v26 = 0;
  if ((v1 & 0x1000000) != 0)
  {
LABEL_72:
    v27 = *(this + 47);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_73;
    }

LABEL_124:
    v28 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_77;
    }

LABEL_125:
    v29 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_81;
    }

LABEL_126:
    v30 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_85;
    }

LABEL_127:
    v31 = 0;
    if (v1 < 0)
    {
      goto LABEL_89;
    }

    goto LABEL_128;
  }

LABEL_123:
  v27 = 0;
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_124;
  }

LABEL_73:
  if (*(this + 6) == 0.0)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(this + 6);
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_125;
  }

LABEL_77:
  if (*(this + 7) == 0.0)
  {
    v29 = 0;
  }

  else
  {
    v29 = *(this + 7);
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_126;
  }

LABEL_81:
  if (*(this + 16) == 0.0)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(this + 16);
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_127;
  }

LABEL_85:
  if (*(this + 11) == 0.0)
  {
    v31 = 0;
  }

  else
  {
    v31 = *(this + 11);
  }

  if (v1 < 0)
  {
LABEL_89:
    v32 = *(this + 216);
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_90;
    }

LABEL_129:
    v33 = 0.0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_93;
    }

LABEL_130:
    v34 = 0.0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_96;
    }

    goto LABEL_131;
  }

LABEL_128:
  v32 = 0;
  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_129;
  }

LABEL_90:
  v33 = *(this + 13);
  if (v33 == 0.0)
  {
    v33 = 0.0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_130;
  }

LABEL_93:
  v34 = *(this + 15);
  if (v34 == 0.0)
  {
    v34 = 0.0;
  }

  if ((v1 & 0x2000) != 0)
  {
LABEL_96:
    v35 = *(this + 14);
    if (v35 == 0.0)
    {
      v35 = 0.0;
    }

    if ((v1 & 0x4000000) != 0)
    {
      goto LABEL_99;
    }

LABEL_132:
    v36 = 0;
    return *&v43 ^ v2 ^ *&v42 ^ *&v41 ^ *&v40 ^ *&v39 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v17 ^ v19 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ *&v33 ^ *&v34 ^ *&v35 ^ v36;
  }

LABEL_131:
  v35 = 0.0;
  if ((v1 & 0x4000000) == 0)
  {
    goto LABEL_132;
  }

LABEL_99:
  v36 = *(this + 49);
  return *&v43 ^ v2 ^ *&v42 ^ *&v41 ^ *&v40 ^ *&v39 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v17 ^ v19 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ *&v33 ^ *&v34 ^ *&v35 ^ v36;
}

void CMMsl::MotionLoiAltitudeData::~MotionLoiAltitudeData(CMMsl::MotionLoiAltitudeData *this)
{
  *this = &unk_286C21E30;
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
  CMMsl::MotionLoiAltitudeData::~MotionLoiAltitudeData(this);

  JUMPOUT(0x25F8548F0);
}

void **CMMsl::MotionLoiAltitudeData::MotionLoiAltitudeData(void **this, void **a2)
{
  *this = &unk_286C21E30;
  *(this + 1) = 0u;
  v3 = this + 1;
  *(this + 3) = 0u;
  *(this + 5) = 0u;
  if (this != a2)
  {
    sub_25AD285D4(v3, a2[1], a2[2], (a2[2] - a2[1]) >> 3);
    sub_25AD285D4(this + 4, a2[4], a2[5], (a2[5] - a2[4]) >> 3);
  }

  return this;
}

uint64_t CMMsl::MotionLoiAltitudeData::operator=(uint64_t a1, void **a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionLoiAltitudeData::MotionLoiAltitudeData(&v8, a2);
    v3 = v10;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v9 = v4;
    v10 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v6;
    CMMsl::MotionLoiAltitudeData::~MotionLoiAltitudeData(&v8);
  }

  return a1;
}

void *CMMsl::swap(void *this, CMMsl::MotionLoiAltitudeData *a2, CMMsl::MotionLoiAltitudeData *a3)
{
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v8;
  return this;
}

uint64_t CMMsl::MotionLoiAltitudeData::MotionLoiAltitudeData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21E30;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 8) = 0u;
  sub_25AD28758(a1 + 8, (a2 + 8));
  sub_25AD28758(a1 + 32, (a2 + 32));
  return a1;
}

{
  *a1 = &unk_286C21E30;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 8) = 0u;
  sub_25AD28758(a1 + 8, (a2 + 8));
  sub_25AD28758(a1 + 32, (a2 + 32));
  return a1;
}

uint64_t CMMsl::MotionLoiAltitudeData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v11 = &unk_286C21E30;
    v3 = *(a2 + 24);
    v4 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = *(a2 + 48);
    v6 = *(a2 + 32);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v8 = *(a1 + 24);
    *(a1 + 24) = v3;
    v12 = v7;
    v13 = v8;
    v9 = *(a1 + 40);
    *(a1 + 32) = v6;
    *(a1 + 48) = v5;
    v14 = v9;
    CMMsl::MotionLoiAltitudeData::~MotionLoiAltitudeData(&v11);
  }

  return a1;
}

uint64_t CMMsl::MotionLoiAltitudeData::formatText(CMMsl::MotionLoiAltitudeData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "loiAltitude", v7);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "loiVerticalUncertainty", v10);
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::MotionLoiAltitudeData::readFrom(CMMsl::MotionLoiAltitudeData *this, PB::Reader *a2)
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
          goto LABEL_18;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_41;
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
        goto LABEL_41;
      }
    }

LABEL_18:
    v22 = v10 & 7;
    if (v22 == 4)
    {
      v4 = 0;
      break;
    }

    if ((v10 >> 3) == 2)
    {
      if (v22 != 2)
      {
        v59 = *(this + 5);
        v58 = *(this + 6);
        if (v59 >= v58)
        {
          v66 = *(this + 4);
          v67 = v59 - v66;
          v68 = (v59 - v66) >> 3;
          v69 = v68 + 1;
          if ((v68 + 1) >> 61)
          {
LABEL_102:
            sub_25AAE66B8();
          }

          v70 = v58 - v66;
          if (v70 >> 2 > v69)
          {
            v69 = v70 >> 2;
          }

          if (v70 >= 0x7FFFFFFFFFFFFFF8)
          {
            v71 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v71 = v69;
          }

          if (v71)
          {
            sub_25AD28710(v71);
          }

          v76 = (v59 - v66) >> 3;
          v77 = (8 * v68);
          v78 = (8 * v68 - 8 * v76);
          *v77 = 0;
          v57 = v77 + 1;
          memcpy(v78, v66, v67);
          v79 = *(this + 4);
          *(this + 4) = v78;
          *(this + 5) = v57;
          *(this + 6) = 0;
          if (v79)
          {
            operator delete(v79);
          }
        }

        else
        {
          *v59 = 0;
          v57 = v59 + 8;
        }

        *(this + 5) = v57;
        goto LABEL_93;
      }

      if (PB::Reader::placeMark())
      {
LABEL_100:
        v81 = 0;
        return v81 & 1;
      }

      v39 = *(a2 + 1);
      v40 = *(a2 + 2);
      while (v39 < v40 && (*(a2 + 24) & 1) == 0)
      {
        v42 = *(this + 5);
        v41 = *(this + 6);
        if (v42 >= v41)
        {
          v44 = *(this + 4);
          v45 = v42 - v44;
          v46 = (v42 - v44) >> 3;
          v47 = v46 + 1;
          if ((v46 + 1) >> 61)
          {
            goto LABEL_102;
          }

          v48 = v41 - v44;
          if (v48 >> 2 > v47)
          {
            v47 = v48 >> 2;
          }

          if (v48 >= 0x7FFFFFFFFFFFFFF8)
          {
            v49 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v49 = v47;
          }

          if (v49)
          {
            sub_25AD28710(v49);
          }

          v50 = (v42 - v44) >> 3;
          v51 = (8 * v46);
          v52 = (8 * v46 - 8 * v50);
          *v51 = 0;
          v43 = v51 + 1;
          memcpy(v52, v44, v45);
          v53 = *(this + 4);
          *(this + 4) = v52;
          *(this + 5) = v43;
          *(this + 6) = 0;
          if (v53)
          {
            operator delete(v53);
          }
        }

        else
        {
          *v42 = 0;
          v43 = v42 + 8;
        }

        *(this + 5) = v43;
        v54 = *(a2 + 1);
        if (v54 > 0xFFFFFFFFFFFFFFF7 || v54 + 8 > *(a2 + 2))
        {
LABEL_69:
          *(a2 + 24) = 1;
          break;
        }

        *(v43 - 1) = *(*a2 + v54);
        v40 = *(a2 + 2);
        v39 = *(a2 + 1) + 8;
        *(a2 + 1) = v39;
      }
    }

    else
    {
      if ((v10 >> 3) != 1)
      {
LABEL_41:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_100;
        }

        goto LABEL_42;
      }

      if (v22 != 2)
      {
        v56 = *(this + 2);
        v55 = *(this + 3);
        if (v56 >= v55)
        {
          v60 = *(this + 1);
          v61 = v56 - v60;
          v62 = (v56 - v60) >> 3;
          v63 = v62 + 1;
          if ((v62 + 1) >> 61)
          {
            goto LABEL_102;
          }

          v64 = v55 - v60;
          if (v64 >> 2 > v63)
          {
            v63 = v64 >> 2;
          }

          if (v64 >= 0x7FFFFFFFFFFFFFF8)
          {
            v65 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v65 = v63;
          }

          if (v65)
          {
            sub_25AD28710(v65);
          }

          v72 = (v56 - v60) >> 3;
          v73 = (8 * v62);
          v74 = (8 * v62 - 8 * v72);
          *v73 = 0;
          v57 = v73 + 1;
          memcpy(v74, v60, v61);
          v75 = *(this + 1);
          *(this + 1) = v74;
          *(this + 2) = v57;
          *(this + 3) = 0;
          if (v75)
          {
            operator delete(v75);
          }
        }

        else
        {
          *v56 = 0;
          v57 = v56 + 8;
        }

        *(this + 2) = v57;
LABEL_93:
        v80 = *(a2 + 1);
        if (v80 <= 0xFFFFFFFFFFFFFFF7 && v80 + 8 <= *(a2 + 2))
        {
          *(v57 - 1) = *(*a2 + v80);
          *(a2 + 1) += 8;
        }

        else
        {
          *(a2 + 24) = 1;
        }

        goto LABEL_42;
      }

      if (PB::Reader::placeMark())
      {
        goto LABEL_100;
      }

      v23 = *(a2 + 1);
      v24 = *(a2 + 2);
      while (v23 < v24 && (*(a2 + 24) & 1) == 0)
      {
        v26 = *(this + 2);
        v25 = *(this + 3);
        if (v26 >= v25)
        {
          v28 = *(this + 1);
          v29 = v26 - v28;
          v30 = (v26 - v28) >> 3;
          v31 = v30 + 1;
          if ((v30 + 1) >> 61)
          {
            goto LABEL_102;
          }

          v32 = v25 - v28;
          if (v32 >> 2 > v31)
          {
            v31 = v32 >> 2;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFF8)
          {
            v33 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v31;
          }

          if (v33)
          {
            sub_25AD28710(v33);
          }

          v34 = (v26 - v28) >> 3;
          v35 = (8 * v30);
          v36 = (8 * v30 - 8 * v34);
          *v35 = 0;
          v27 = v35 + 1;
          memcpy(v36, v28, v29);
          v37 = *(this + 1);
          *(this + 1) = v36;
          *(this + 2) = v27;
          *(this + 3) = 0;
          if (v37)
          {
            operator delete(v37);
          }
        }

        else
        {
          *v26 = 0;
          v27 = v26 + 8;
        }

        *(this + 2) = v27;
        v38 = *(a2 + 1);
        if (v38 > 0xFFFFFFFFFFFFFFF7 || v38 + 8 > *(a2 + 2))
        {
          goto LABEL_69;
        }

        *(v27 - 1) = *(*a2 + v38);
        v24 = *(a2 + 2);
        v23 = *(a2 + 1) + 8;
        *(a2 + 1) = v23;
      }
    }

    PB::Reader::recallMark();
LABEL_42:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v81 = v4 ^ 1;
  return v81 & 1;
}

uint64_t CMMsl::MotionLoiAltitudeData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  v5 = *(this + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6);
  }

  v8 = *(v3 + 32);
  v7 = *(v3 + 40);
  while (v8 != v7)
  {
    v9 = *v8++;
    this = PB::Writer::write(a2, v9);
  }

  return this;
}

void CMMsl::MotionLoiData::~MotionLoiData(CMMsl::MotionLoiData *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::MotionLoiData::MotionLoiData(uint64_t this, const CMMsl::MotionLoiData *a2)
{
  *this = &unk_286C21E68;
  *(this + 84) = -1;
  *(this + 92) = 0;
  v2 = *(a2 + 46);
  if ((v2 & 0x40) != 0)
  {
    v4 = *(a2 + 7);
    v3 = 64;
    *(this + 92) = 64;
    *(this + 56) = v4;
    v2 = *(a2 + 46);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x20) != 0)
  {
LABEL_5:
    v5 = *(a2 + 6);
    v3 |= 0x20u;
    *(this + 92) = v3;
    *(this + 48) = v5;
    v2 = *(a2 + 46);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 3);
    v3 |= 4u;
    *(this + 92) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 46);
    if ((v2 & 1) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 1);
  v3 |= 1u;
  *(this + 92) = v3;
  *(this + 8) = v7;
  v2 = *(a2 + 46);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 92) = v3;
  *(this + 40) = v8;
  v2 = *(a2 + 46);
  if ((v2 & 0x200) == 0)
  {
LABEL_10:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = *(a2 + 20);
  v3 |= 0x200u;
  *(this + 92) = v3;
  *(this + 80) = v9;
  v2 = *(a2 + 46);
  if ((v2 & 0x100) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = *(a2 + 9);
  v3 |= 0x100u;
  *(this + 92) = v3;
  *(this + 72) = v10;
  v2 = *(a2 + 46);
  if ((v2 & 0x80) == 0)
  {
LABEL_12:
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 92) = v3;
  *(this + 64) = v11;
  v2 = *(a2 + 46);
  if ((v2 & 2) == 0)
  {
LABEL_13:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = *(a2 + 2);
  v3 |= 2u;
  *(this + 92) = v3;
  *(this + 16) = v12;
  v2 = *(a2 + 46);
  if ((v2 & 0x400) == 0)
  {
LABEL_14:
    if ((v2 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = *(a2 + 21);
  v3 |= 0x400u;
  *(this + 92) = v3;
  *(this + 84) = v13;
  v2 = *(a2 + 46);
  if ((v2 & 8) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      return this;
    }

LABEL_26:
    v15 = *(a2 + 88);
    *(this + 92) = v3 | 0x800;
    *(this + 88) = v15;
    return this;
  }

LABEL_25:
  v14 = *(a2 + 4);
  v3 |= 8u;
  *(this + 92) = v3;
  *(this + 32) = v14;
  if ((*(a2 + 46) & 0x800) != 0)
  {
    goto LABEL_26;
  }

  return this;
}

CMMsl *CMMsl::MotionLoiData::operator=(CMMsl *a1, const CMMsl::MotionLoiData *a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionLoiData::MotionLoiData(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::MotionLoiData *a2, CMMsl::MotionLoiData *a3)
{
  v3 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v3;
  v4 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v7;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v9;
  v10 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v11;
  v12 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v12;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  LOBYTE(v3) = *(this + 88);
  *(this + 88) = *(a2 + 88);
  *(a2 + 88) = v3;
  return result;
}
void *sub_245F05A98(void *result)
{
  *result = &unk_2858D6238;
  result[28] = 0;
  return result;
}

void sub_245F05AC0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245F05AF8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D6238;
  *(a1 + 224) = 0;
  v2 = *(a2 + 224);
  if ((v2 & 0x40) != 0)
  {
    result = *(a2 + 56);
    v3 = 64;
    *(a1 + 224) = 64;
    *(a1 + 56) = result;
    v2 = *(a2 + 224);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x80) != 0)
  {
LABEL_5:
    result = *(a2 + 64);
    v3 |= 0x80uLL;
    *(a1 + 224) = v3;
    *(a1 + 64) = result;
    v2 = *(a2 + 224);
  }

LABEL_6:
  if ((v2 & 0x200000000) != 0)
  {
    v5 = *(a2 + 220);
    v3 |= 0x200000000uLL;
    *(a1 + 224) = v3;
    *(a1 + 220) = v5;
    v2 = *(a2 + 224);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 0x40000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_42;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 16);
  v3 |= 2uLL;
  *(a1 + 224) = v3;
  *(a1 + 16) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_9:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  v6 = *(a2 + 217);
  v3 |= 0x40000000uLL;
  *(a1 + 224) = v3;
  *(a1 + 217) = v6;
  v2 = *(a2 + 224);
  if ((v2 & 0x80000) == 0)
  {
LABEL_10:
    if ((v2 & 0x400000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = *(a2 + 160);
  v3 |= 0x80000uLL;
  *(a1 + 224) = v3;
  *(a1 + 160) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x400000000) == 0)
  {
LABEL_11:
    if ((v2 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  v7 = *(a2 + 221);
  v3 |= 0x400000000uLL;
  *(a1 + 224) = v3;
  *(a1 + 221) = v7;
  v2 = *(a2 + 224);
  if ((v2 & 1) == 0)
  {
LABEL_12:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = *(a2 + 8);
  v3 |= 1uLL;
  *(a1 + 224) = v3;
  *(a1 + 8) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_13:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  v8 = *(a2 + 216);
  v3 |= 0x20000000uLL;
  *(a1 + 224) = v3;
  *(a1 + 216) = v8;
  v2 = *(a2 + 224);
  if ((v2 & 0x80000000) == 0)
  {
LABEL_14:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  v9 = *(a2 + 218);
  v3 |= 0x80000000uLL;
  *(a1 + 224) = v3;
  *(a1 + 218) = v9;
  v2 = *(a2 + 224);
  if ((v2 & 0x8000) == 0)
  {
LABEL_15:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = *(a2 + 128);
  v3 |= 0x8000uLL;
  *(a1 + 224) = v3;
  *(a1 + 128) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x40000) == 0)
  {
LABEL_16:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = *(a2 + 152);
  v3 |= 0x40000uLL;
  *(a1 + 224) = v3;
  *(a1 + 152) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x4000) == 0)
  {
LABEL_17:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = *(a2 + 120);
  v3 |= 0x4000uLL;
  *(a1 + 224) = v3;
  *(a1 + 120) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  v10 = *(a2 + 208);
  v3 |= 0x8000000uLL;
  *(a1 + 224) = v3;
  *(a1 + 208) = v10;
  v2 = *(a2 + 224);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_19:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  v11 = *(a2 + 204);
  v3 |= 0x4000000uLL;
  *(a1 + 224) = v3;
  *(a1 + 204) = v11;
  v2 = *(a2 + 224);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_20:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  v12 = *(a2 + 212);
  v3 |= 0x10000000uLL;
  *(a1 + 224) = v3;
  *(a1 + 212) = v12;
  v2 = *(a2 + 224);
  if ((v2 & 0x800000) == 0)
  {
LABEL_21:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  v13 = *(a2 + 192);
  v3 |= 0x800000uLL;
  *(a1 + 224) = v3;
  *(a1 + 192) = v13;
  v2 = *(a2 + 224);
  if ((v2 & 0x1000) == 0)
  {
LABEL_22:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = *(a2 + 104);
  v3 |= 0x1000uLL;
  *(a1 + 224) = v3;
  *(a1 + 104) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_23:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  v14 = *(a2 + 200);
  v3 |= 0x2000000uLL;
  *(a1 + 224) = v3;
  *(a1 + 200) = v14;
  v2 = *(a2 + 224);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_24:
    if ((v2 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  v15 = *(a2 + 196);
  v3 |= 0x1000000uLL;
  *(a1 + 224) = v3;
  *(a1 + 196) = v15;
  v2 = *(a2 + 224);
  if ((v2 & 8) == 0)
  {
LABEL_25:
    if ((v2 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = *(a2 + 32);
  v3 |= 8uLL;
  *(a1 + 224) = v3;
  *(a1 + 32) = result;
  v2 = *(a2 + 224);
  if ((v2 & 4) == 0)
  {
LABEL_26:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = *(a2 + 24);
  v3 |= 4uLL;
  *(a1 + 224) = v3;
  *(a1 + 24) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x10) == 0)
  {
LABEL_27:
    if ((v2 & 0x100000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = *(a2 + 40);
  v3 |= 0x10uLL;
  *(a1 + 224) = v3;
  *(a1 + 40) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x100000000) == 0)
  {
LABEL_28:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  v16 = *(a2 + 219);
  v3 |= 0x100000000uLL;
  *(a1 + 224) = v3;
  *(a1 + 219) = v16;
  v2 = *(a2 + 224);
  if ((v2 & 0x100) == 0)
  {
LABEL_29:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = *(a2 + 72);
  v3 |= 0x100uLL;
  *(a1 + 224) = v3;
  *(a1 + 72) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x800) == 0)
  {
LABEL_30:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = *(a2 + 96);
  v3 |= 0x800uLL;
  *(a1 + 224) = v3;
  *(a1 + 96) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x10000) == 0)
  {
LABEL_31:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = *(a2 + 136);
  v3 |= 0x10000uLL;
  *(a1 + 224) = v3;
  *(a1 + 136) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x20000) == 0)
  {
LABEL_32:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = *(a2 + 144);
  v3 |= 0x20000uLL;
  *(a1 + 224) = v3;
  *(a1 + 144) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x20) == 0)
  {
LABEL_33:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = *(a2 + 48);
  v3 |= 0x20uLL;
  *(a1 + 224) = v3;
  *(a1 + 48) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x400000) == 0)
  {
LABEL_34:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = *(a2 + 184);
  v3 |= 0x400000uLL;
  *(a1 + 224) = v3;
  *(a1 + 184) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x2000) == 0)
  {
LABEL_35:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = *(a2 + 112);
  v3 |= 0x2000uLL;
  *(a1 + 224) = v3;
  *(a1 + 112) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x100000) == 0)
  {
LABEL_36:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_70;
  }

LABEL_69:
  result = *(a2 + 168);
  v3 |= 0x100000uLL;
  *(a1 + 224) = v3;
  *(a1 + 168) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x200) == 0)
  {
LABEL_37:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_71;
  }

LABEL_70:
  result = *(a2 + 80);
  v3 |= 0x200uLL;
  *(a1 + 224) = v3;
  *(a1 + 80) = result;
  v2 = *(a2 + 224);
  if ((v2 & 0x200000) == 0)
  {
LABEL_38:
    if ((v2 & 0x400) == 0)
    {
      return result;
    }

LABEL_72:
    result = *(a2 + 88);
    *(a1 + 224) = v3 | 0x400;
    *(a1 + 88) = result;
    return result;
  }

LABEL_71:
  result = *(a2 + 176);
  v3 |= 0x200000uLL;
  *(a1 + 224) = v3;
  *(a1 + 176) = result;
  if ((*(a2 + 224) & 0x400) != 0)
  {
    goto LABEL_72;
  }

  return result;
}

uint64_t sub_245F05EF8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 224);
  if (v5)
  {
    PB::TextFormatter::format(this, "emptyField0", *(a1 + 8));
    v5 = *(a1 + 224);
    if ((v5 & 0x20000000) == 0)
    {
LABEL_3:
      if ((v5 & 0x800000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((v5 & 0x20000000) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "emptyField1");
  v5 = *(a1 + 224);
  if ((v5 & 0x800000) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "emptyField2");
  v5 = *(a1 + 224);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "groundContactTime", *(a1 + 16));
  v5 = *(a1 + 224);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "groundContactTimeCadence", *(a1 + 24));
  v5 = *(a1 + 224);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "groundContactTimeGrade", *(a1 + 32));
  v5 = *(a1 + 224);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "groundContactTimeGradeSource");
  v5 = *(a1 + 224);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_9:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "groundContactTimeGradeType");
  v5 = *(a1 + 224);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "groundContactTimeIsValid");
  v5 = *(a1 + 224);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "groundContactTimePace", *(a1 + 40));
  v5 = *(a1 + 224);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "groundContactTimeReportingStatus");
  v5 = *(a1 + 224);
  if ((v5 & 0x20) == 0)
  {
LABEL_13:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(this, "groundContactTimeUnsmoothed", *(a1 + 48));
  v5 = *(a1 + 224);
  if ((v5 & 0x40) == 0)
  {
LABEL_14:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "groundContactTimeWindowEndTime", *(a1 + 56));
  v5 = *(a1 + 224);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_15:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(this, "isFlat");
  v5 = *(a1 + 224);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "isFormBasedStrideLength");
  v5 = *(a1 + 224);
  if ((v5 & 0x80) == 0)
  {
LABEL_17:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(this, "strideLength", *(a1 + 64));
  v5 = *(a1 + 224);
  if ((v5 & 0x100) == 0)
  {
LABEL_18:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(this, "strideLengthCadence", *(a1 + 72));
  v5 = *(a1 + 224);
  if ((v5 & 0x200) == 0)
  {
LABEL_19:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(this, "strideLengthGrade", *(a1 + 80));
  v5 = *(a1 + 224);
  if ((v5 & 0x400) == 0)
  {
LABEL_20:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(this, "strideLengthGradeType", *(a1 + 88));
  v5 = *(a1 + 224);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_21:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(this, "strideLengthIsValid");
  v5 = *(a1 + 224);
  if ((v5 & 0x800) == 0)
  {
LABEL_22:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(this, "strideLengthPace", *(a1 + 96));
  v5 = *(a1 + 224);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(this, "strideLengthReportingStatus");
  v5 = *(a1 + 224);
  if ((v5 & 0x1000) == 0)
  {
LABEL_24:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(this, "strideLengthUncalibrated", *(a1 + 104));
  v5 = *(a1 + 224);
  if ((v5 & 0x2000) == 0)
  {
LABEL_25:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(this, "strideLengthUnsmoothed", *(a1 + 112));
  v5 = *(a1 + 224);
  if ((v5 & 0x4000) == 0)
  {
LABEL_26:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(this, "strideLengthWindowEndTime", *(a1 + 120));
  v5 = *(a1 + 224);
  if ((v5 & 0x8000) == 0)
  {
LABEL_27:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 128));
  v5 = *(a1 + 224);
  if ((v5 & 0x10000) == 0)
  {
LABEL_28:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(this, "verticalOscCadence", *(a1 + 136));
  v5 = *(a1 + 224);
  if ((v5 & 0x20000) == 0)
  {
LABEL_29:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(this, "verticalOscPace", *(a1 + 144));
  v5 = *(a1 + 224);
  if ((v5 & 0x40000) == 0)
  {
LABEL_30:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_69;
  }

LABEL_68:
  PB::TextFormatter::format(this, "verticalOscWindowEndTime", *(a1 + 152));
  v5 = *(a1 + 224);
  if ((v5 & 0x80000) == 0)
  {
LABEL_31:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_70;
  }

LABEL_69:
  PB::TextFormatter::format(this, "verticalOscillation", *(a1 + 160));
  v5 = *(a1 + 224);
  if ((v5 & 0x100000) == 0)
  {
LABEL_32:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(this, "verticalOscillationGrade", *(a1 + 168));
  v5 = *(a1 + 224);
  if ((v5 & 0x200000) == 0)
  {
LABEL_33:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_72;
  }

LABEL_71:
  PB::TextFormatter::format(this, "verticalOscillationGradeType", *(a1 + 176));
  v5 = *(a1 + 224);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(this, "verticalOscillationIsValid");
  v5 = *(a1 + 224);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_73:
  PB::TextFormatter::format(this, "verticalOscillationReportingStatus");
  if ((*(a1 + 224) & 0x400000) != 0)
  {
LABEL_36:
    PB::TextFormatter::format(this, "verticalOscillationUnsmoothed", *(a1 + 184));
  }

LABEL_37:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245F0639C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
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
        *(this + 1) = v12;
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
          *(a1 + 224) |= 0x40uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_209;
        case 2u:
          *(a1 + 224) |= 0x80uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_209;
        case 3u:
          *(a1 + 224) |= 0x200000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v43 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v42 = *(*this + v2++);
            *(this + 1) = v2;
            v43 = v42 != 0;
          }

          *(a1 + 220) = v43;
          goto LABEL_210;
        case 4u:
          *(a1 + 224) |= 2uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_209;
        case 5u:
          *(a1 + 224) |= 0x40000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v39 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v38 = *(*this + v2++);
            *(this + 1) = v2;
            v39 = v38 != 0;
          }

          *(a1 + 217) = v39;
          goto LABEL_210;
        case 6u:
          *(a1 + 224) |= 0x80000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 160) = *(*this + v2);
          goto LABEL_209;
        case 7u:
          *(a1 + 224) |= 0x400000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v61 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v60 = *(*this + v2++);
            *(this + 1) = v2;
            v61 = v60 != 0;
          }

          *(a1 + 221) = v61;
          goto LABEL_210;
        case 8u:
          *(a1 + 224) |= 1uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_209;
        case 9u:
          *(a1 + 224) |= 0x20000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v71 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v70 = *(*this + v2++);
            *(this + 1) = v2;
            v71 = v70 != 0;
          }

          *(a1 + 216) = v71;
          goto LABEL_210;
        case 0xAu:
          *(a1 + 224) |= 0x80000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v41 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v40 = *(*this + v2++);
            *(this + 1) = v2;
            v41 = v40 != 0;
          }

          *(a1 + 218) = v41;
          goto LABEL_210;
        case 0xBu:
          *(a1 + 224) |= 0x8000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 128) = *(*this + v2);
          goto LABEL_209;
        case 0xCu:
          *(a1 + 224) |= 0x40000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 152) = *(*this + v2);
          goto LABEL_209;
        case 0xDu:
          *(a1 + 224) |= 0x4000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 120) = *(*this + v2);
          goto LABEL_209;
        case 0xEu:
          *(a1 + 224) |= 0x8000000uLL;
          v52 = *(this + 1);
          v2 = *(this + 2);
          v53 = *this;
          if (v52 > 0xFFFFFFFFFFFFFFF5 || v52 + 10 > v2)
          {
            v103 = 0;
            v104 = 0;
            v56 = 0;
            if (v2 <= v52)
            {
              v2 = *(this + 1);
            }

            v105 = v2 - v52;
            v106 = (v53 + v52);
            v107 = v52 + 1;
            while (1)
            {
              if (!v105)
              {
                LODWORD(v56) = 0;
                *(this + 24) = 1;
                goto LABEL_234;
              }

              v108 = v107;
              v109 = *v106;
              *(this + 1) = v108;
              v56 |= (v109 & 0x7F) << v103;
              if ((v109 & 0x80) == 0)
              {
                break;
              }

              v103 += 7;
              --v105;
              ++v106;
              v107 = v108 + 1;
              v14 = v104++ > 8;
              if (v14)
              {
                LODWORD(v56) = 0;
LABEL_233:
                v2 = v108;
                goto LABEL_234;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v56) = 0;
            }

            goto LABEL_233;
          }

          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = (v53 + v52);
          v58 = v52 + 1;
          do
          {
            v2 = v58;
            *(this + 1) = v58;
            v59 = *v57++;
            v56 |= (v59 & 0x7F) << v54;
            if ((v59 & 0x80) == 0)
            {
              goto LABEL_234;
            }

            v54 += 7;
            ++v58;
            v14 = v55++ > 8;
          }

          while (!v14);
          LODWORD(v56) = 0;
LABEL_234:
          *(a1 + 208) = v56;
          goto LABEL_210;
        case 0xFu:
          *(a1 + 224) |= 0x4000000uLL;
          v30 = *(this + 1);
          v2 = *(this + 2);
          v31 = *this;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v89 = 0;
            v90 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(this + 1);
            }

            v91 = v2 - v30;
            v92 = (v31 + v30);
            v93 = v30 + 1;
            while (1)
            {
              if (!v91)
              {
                LODWORD(v34) = 0;
                *(this + 24) = 1;
                goto LABEL_226;
              }

              v94 = v93;
              v95 = *v92;
              *(this + 1) = v94;
              v34 |= (v95 & 0x7F) << v89;
              if ((v95 & 0x80) == 0)
              {
                break;
              }

              v89 += 7;
              --v91;
              ++v92;
              v93 = v94 + 1;
              v14 = v90++ > 8;
              if (v14)
              {
                LODWORD(v34) = 0;
LABEL_225:
                v2 = v94;
                goto LABEL_226;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_225;
          }

          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = (v31 + v30);
          v36 = v30 + 1;
          do
          {
            v2 = v36;
            *(this + 1) = v36;
            v37 = *v35++;
            v34 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              goto LABEL_226;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_226:
          *(a1 + 204) = v34;
          goto LABEL_210;
        case 0x10u:
          *(a1 + 224) |= 0x10000000uLL;
          v44 = *(this + 1);
          v2 = *(this + 2);
          v45 = *this;
          if (v44 > 0xFFFFFFFFFFFFFFF5 || v44 + 10 > v2)
          {
            v96 = 0;
            v97 = 0;
            v48 = 0;
            if (v2 <= v44)
            {
              v2 = *(this + 1);
            }

            v98 = v2 - v44;
            v99 = (v45 + v44);
            v100 = v44 + 1;
            while (1)
            {
              if (!v98)
              {
                LODWORD(v48) = 0;
                *(this + 24) = 1;
                goto LABEL_230;
              }

              v101 = v100;
              v102 = *v99;
              *(this + 1) = v101;
              v48 |= (v102 & 0x7F) << v96;
              if ((v102 & 0x80) == 0)
              {
                break;
              }

              v96 += 7;
              --v98;
              ++v99;
              v100 = v101 + 1;
              v14 = v97++ > 8;
              if (v14)
              {
                LODWORD(v48) = 0;
LABEL_229:
                v2 = v101;
                goto LABEL_230;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v48) = 0;
            }

            goto LABEL_229;
          }

          v46 = 0;
          v47 = 0;
          v48 = 0;
          v49 = (v45 + v44);
          v50 = v44 + 1;
          do
          {
            v2 = v50;
            *(this + 1) = v50;
            v51 = *v49++;
            v48 |= (v51 & 0x7F) << v46;
            if ((v51 & 0x80) == 0)
            {
              goto LABEL_230;
            }

            v46 += 7;
            ++v50;
            v14 = v47++ > 8;
          }

          while (!v14);
          LODWORD(v48) = 0;
LABEL_230:
          *(a1 + 212) = v48;
          goto LABEL_210;
        case 0x11u:
          *(a1 + 224) |= 0x800000uLL;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v82 = 0;
            v83 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v84 = v2 - v22;
            v85 = (v23 + v22);
            v86 = v22 + 1;
            while (1)
            {
              if (!v84)
              {
                LODWORD(v26) = 0;
                *(this + 24) = 1;
                goto LABEL_222;
              }

              v87 = v86;
              v88 = *v85;
              *(this + 1) = v87;
              v26 |= (v88 & 0x7F) << v82;
              if ((v88 & 0x80) == 0)
              {
                break;
              }

              v82 += 7;
              --v84;
              ++v85;
              v86 = v87 + 1;
              v14 = v83++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
LABEL_221:
                v2 = v87;
                goto LABEL_222;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_221;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          do
          {
            v2 = v28;
            *(this + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              goto LABEL_222;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_222:
          *(a1 + 192) = v26;
          goto LABEL_210;
        case 0x12u:
          *(a1 + 224) |= 0x1000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_209;
        case 0x13u:
          *(a1 + 224) |= 0x2000000uLL;
          v62 = *(this + 1);
          v2 = *(this + 2);
          v63 = *this;
          if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v2)
          {
            v110 = 0;
            v111 = 0;
            v66 = 0;
            if (v2 <= v62)
            {
              v2 = *(this + 1);
            }

            v112 = v2 - v62;
            v113 = (v63 + v62);
            v114 = v62 + 1;
            while (1)
            {
              if (!v112)
              {
                LODWORD(v66) = 0;
                *(this + 24) = 1;
                goto LABEL_238;
              }

              v115 = v114;
              v116 = *v113;
              *(this + 1) = v115;
              v66 |= (v116 & 0x7F) << v110;
              if ((v116 & 0x80) == 0)
              {
                break;
              }

              v110 += 7;
              --v112;
              ++v113;
              v114 = v115 + 1;
              v14 = v111++ > 8;
              if (v14)
              {
                LODWORD(v66) = 0;
LABEL_237:
                v2 = v115;
                goto LABEL_238;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v66) = 0;
            }

            goto LABEL_237;
          }

          v64 = 0;
          v65 = 0;
          v66 = 0;
          v67 = (v63 + v62);
          v68 = v62 + 1;
          do
          {
            v2 = v68;
            *(this + 1) = v68;
            v69 = *v67++;
            v66 |= (v69 & 0x7F) << v64;
            if ((v69 & 0x80) == 0)
            {
              goto LABEL_238;
            }

            v64 += 7;
            ++v68;
            v14 = v65++ > 8;
          }

          while (!v14);
          LODWORD(v66) = 0;
LABEL_238:
          *(a1 + 200) = v66;
          goto LABEL_210;
        case 0x14u:
          *(a1 + 224) |= 0x1000000uLL;
          v72 = *(this + 1);
          v2 = *(this + 2);
          v73 = *this;
          if (v72 > 0xFFFFFFFFFFFFFFF5 || v72 + 10 > v2)
          {
            v117 = 0;
            v118 = 0;
            v76 = 0;
            if (v2 <= v72)
            {
              v2 = *(this + 1);
            }

            v119 = v2 - v72;
            v120 = (v73 + v72);
            v121 = v72 + 1;
            while (1)
            {
              if (!v119)
              {
                LODWORD(v76) = 0;
                *(this + 24) = 1;
                goto LABEL_242;
              }

              v122 = v121;
              v123 = *v120;
              *(this + 1) = v122;
              v76 |= (v123 & 0x7F) << v117;
              if ((v123 & 0x80) == 0)
              {
                break;
              }

              v117 += 7;
              --v119;
              ++v120;
              v121 = v122 + 1;
              v14 = v118++ > 8;
              if (v14)
              {
                LODWORD(v76) = 0;
LABEL_241:
                v2 = v122;
                goto LABEL_242;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v76) = 0;
            }

            goto LABEL_241;
          }

          v74 = 0;
          v75 = 0;
          v76 = 0;
          v77 = (v73 + v72);
          v78 = v72 + 1;
          do
          {
            v2 = v78;
            *(this + 1) = v78;
            v79 = *v77++;
            v76 |= (v79 & 0x7F) << v74;
            if ((v79 & 0x80) == 0)
            {
              goto LABEL_242;
            }

            v74 += 7;
            ++v78;
            v14 = v75++ > 8;
          }

          while (!v14);
          LODWORD(v76) = 0;
LABEL_242:
          *(a1 + 196) = v76;
          goto LABEL_210;
        case 0x15u:
          *(a1 + 224) |= 8uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_209;
        case 0x16u:
          *(a1 + 224) |= 4uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_209;
        case 0x17u:
          *(a1 + 224) |= 0x10uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_209;
        case 0x18u:
          *(a1 + 224) |= 0x100000000uLL;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v81 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v80 = *(*this + v2++);
            *(this + 1) = v2;
            v81 = v80 != 0;
          }

          *(a1 + 219) = v81;
          goto LABEL_210;
        case 0x19u:
          *(a1 + 224) |= 0x100uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_209;
        case 0x1Au:
          *(a1 + 224) |= 0x800uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_209;
        case 0x1Bu:
          *(a1 + 224) |= 0x10000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 136) = *(*this + v2);
          goto LABEL_209;
        case 0x1Cu:
          *(a1 + 224) |= 0x20000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 144) = *(*this + v2);
          goto LABEL_209;
        case 0x1Du:
          *(a1 + 224) |= 0x20uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_209;
        case 0x1Eu:
          *(a1 + 224) |= 0x400000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 184) = *(*this + v2);
          goto LABEL_209;
        case 0x1Fu:
          *(a1 + 224) |= 0x2000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_209;
        case 0x20u:
          *(a1 + 224) |= 0x100000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 168) = *(*this + v2);
          goto LABEL_209;
        case 0x21u:
          *(a1 + 224) |= 0x200uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_209;
        case 0x22u:
          *(a1 + 224) |= 0x200000uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_145;
          }

          *(a1 + 176) = *(*this + v2);
          goto LABEL_209;
        case 0x23u:
          *(a1 + 224) |= 0x400uLL;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_145:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 88) = *(*this + v2);
LABEL_209:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          goto LABEL_210;
        default:
          if (!PB::Reader::skip(this))
          {
            v124 = 0;
            return v124 & 1;
          }

          v2 = *(this + 1);
LABEL_210:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
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
      *(this + 1) = v20;
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
    *(this + 24) = 1;
  }

LABEL_244:
  v124 = v4 ^ 1;
  return v124 & 1;
}

uint64_t sub_245F072B4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 224);
  if ((v4 & 0x40) != 0)
  {
    result = PB::Writer::write(this, *(result + 56));
    v4 = *(v3 + 224);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 0x200000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 224);
  if ((v4 & 0x200000000) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this);
  v4 = *(v3 + 224);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 224);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x80000) == 0)
  {
LABEL_7:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 160));
  v4 = *(v3 + 224);
  if ((v4 & 0x400000000) == 0)
  {
LABEL_8:
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this);
  v4 = *(v3 + 224);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 224);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_10:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_11:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x8000) == 0)
  {
LABEL_12:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 224);
  if ((v4 & 0x40000) == 0)
  {
LABEL_13:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 152));
  v4 = *(v3 + 224);
  if ((v4 & 0x4000) == 0)
  {
LABEL_14:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 224);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_16:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_17:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x800000) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 224);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_20:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_21:
    if ((v4 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 224);
  if ((v4 & 8) == 0)
  {
LABEL_22:
    if ((v4 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 224);
  if ((v4 & 4) == 0)
  {
LABEL_23:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 224);
  if ((v4 & 0x10) == 0)
  {
LABEL_24:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 224);
  if ((v4 & 0x100000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = PB::Writer::write(this);
  v4 = *(v3 + 224);
  if ((v4 & 0x100) == 0)
  {
LABEL_26:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 224);
  if ((v4 & 0x800) == 0)
  {
LABEL_27:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 224);
  if ((v4 & 0x10000) == 0)
  {
LABEL_28:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = PB::Writer::write(this, *(v3 + 136));
  v4 = *(v3 + 224);
  if ((v4 & 0x20000) == 0)
  {
LABEL_29:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 224);
  if ((v4 & 0x20) == 0)
  {
LABEL_30:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 224);
  if ((v4 & 0x400000) == 0)
  {
LABEL_31:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = PB::Writer::write(this, *(v3 + 184));
  v4 = *(v3 + 224);
  if ((v4 & 0x2000) == 0)
  {
LABEL_32:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 224);
  if ((v4 & 0x100000) == 0)
  {
LABEL_33:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = PB::Writer::write(this, *(v3 + 168));
  v4 = *(v3 + 224);
  if ((v4 & 0x200) == 0)
  {
LABEL_34:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_35;
    }

LABEL_70:
    result = PB::Writer::write(this, *(v3 + 176));
    if ((*(v3 + 224) & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_71;
  }

LABEL_69:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 224);
  if ((v4 & 0x200000) != 0)
  {
    goto LABEL_70;
  }

LABEL_35:
  if ((v4 & 0x400) == 0)
  {
    return result;
  }

LABEL_71:
  v5 = *(v3 + 88);

  return PB::Writer::write(this, v5);
}

uint64_t sub_245F076C0(uint64_t result)
{
  *result = &unk_2858D6270;
  *(result + 128) = 0;
  return result;
}

void sub_245F076E8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245F07720(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D6270;
  *(result + 128) = 0;
  v2 = *(a2 + 128);
  if ((v2 & 0x40) != 0)
  {
    v4 = *(a2 + 56);
    v3 = 64;
    *(result + 128) = 64;
    *(result + 56) = v4;
    v2 = *(a2 + 128);
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
    v5 = *(a2 + 48);
    v3 |= 0x20u;
    *(result + 128) = v3;
    *(result + 48) = v5;
    v2 = *(a2 + 128);
  }

LABEL_6:
  if ((v2 & 0x100) != 0)
  {
    v6 = *(a2 + 72);
    v3 |= 0x100u;
    *(result + 128) = v3;
    *(result + 72) = v6;
    v2 = *(a2 + 128);
    if ((v2 & 0x100000) == 0)
    {
LABEL_8:
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  else if ((v2 & 0x100000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 124);
  v3 |= 0x100000u;
  *(result + 128) = v3;
  *(result + 124) = v7;
  v2 = *(a2 + 128);
  if ((v2 & 0x800) == 0)
  {
LABEL_9:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v8 = *(a2 + 96);
  v3 |= 0x800u;
  *(result + 128) = v3;
  *(result + 96) = v8;
  v2 = *(a2 + 128);
  if ((v2 & 0x400) == 0)
  {
LABEL_10:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v9 = *(a2 + 88);
  v3 |= 0x400u;
  *(result + 128) = v3;
  *(result + 88) = v9;
  v2 = *(a2 + 128);
  if ((v2 & 0x2000) == 0)
  {
LABEL_11:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  v10 = *(a2 + 108);
  v3 |= 0x2000u;
  *(result + 128) = v3;
  *(result + 108) = v10;
  v2 = *(a2 + 128);
  if ((v2 & 0x1000) == 0)
  {
LABEL_12:
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  v11 = *(a2 + 104);
  v3 |= 0x1000u;
  *(result + 128) = v3;
  *(result + 104) = v11;
  v2 = *(a2 + 128);
  if ((v2 & 2) == 0)
  {
LABEL_13:
    if ((v2 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  v12 = *(a2 + 16);
  v3 |= 2u;
  *(result + 128) = v3;
  *(result + 16) = v12;
  v2 = *(a2 + 128);
  if ((v2 & 8) == 0)
  {
LABEL_14:
    if ((v2 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v13 = *(a2 + 32);
  v3 |= 8u;
  *(result + 128) = v3;
  *(result + 32) = v13;
  v2 = *(a2 + 128);
  if ((v2 & 4) == 0)
  {
LABEL_15:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  v14 = *(a2 + 24);
  v3 |= 4u;
  *(result + 128) = v3;
  *(result + 24) = v14;
  v2 = *(a2 + 128);
  if ((v2 & 0x80000) == 0)
  {
LABEL_16:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  v15 = *(a2 + 123);
  v3 |= 0x80000u;
  *(result + 128) = v3;
  *(result + 123) = v15;
  v2 = *(a2 + 128);
  if ((v2 & 0x10) == 0)
  {
LABEL_17:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  v16 = *(a2 + 40);
  v3 |= 0x10u;
  *(result + 128) = v3;
  *(result + 40) = v16;
  v2 = *(a2 + 128);
  if ((v2 & 0x200) == 0)
  {
LABEL_18:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  v17 = *(a2 + 80);
  v3 |= 0x200u;
  *(result + 128) = v3;
  *(result + 80) = v17;
  v2 = *(a2 + 128);
  if ((v2 & 0x80) == 0)
  {
LABEL_19:
    if ((v2 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  v18 = *(a2 + 64);
  v3 |= 0x80u;
  *(result + 128) = v3;
  *(result + 64) = v18;
  v2 = *(a2 + 128);
  if ((v2 & 1) == 0)
  {
LABEL_20:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_41;
  }

LABEL_40:
  v19 = *(a2 + 8);
  v3 |= 1u;
  *(result + 128) = v3;
  *(result + 8) = v19;
  v2 = *(a2 + 128);
  if ((v2 & 0x200000) == 0)
  {
LABEL_21:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_41:
  v20 = *(a2 + 125);
  v3 |= 0x200000u;
  *(result + 128) = v3;
  *(result + 125) = v20;
  v2 = *(a2 + 128);
  if ((v2 & 0x20000) == 0)
  {
LABEL_22:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_43;
  }

LABEL_42:
  v21 = *(a2 + 121);
  v3 |= 0x20000u;
  *(result + 128) = v3;
  *(result + 121) = v21;
  v2 = *(a2 + 128);
  if ((v2 & 0x8000) == 0)
  {
LABEL_23:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_44;
  }

LABEL_43:
  v22 = *(a2 + 116);
  v3 |= 0x8000u;
  *(result + 128) = v3;
  *(result + 116) = v22;
  v2 = *(a2 + 128);
  if ((v2 & 0x10000) == 0)
  {
LABEL_24:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_45;
  }

LABEL_44:
  v23 = *(a2 + 120);
  v3 |= 0x10000u;
  *(result + 128) = v3;
  *(result + 120) = v23;
  v2 = *(a2 + 128);
  if ((v2 & 0x40000) == 0)
  {
LABEL_25:
    if ((v2 & 0x4000) == 0)
    {
      return result;
    }

LABEL_46:
    v25 = *(a2 + 112);
    *(result + 128) = v3 | 0x4000;
    *(result + 112) = v25;
    return result;
  }

LABEL_45:
  v24 = *(a2 + 122);
  v3 |= 0x40000u;
  *(result + 128) = v3;
  *(result + 122) = v24;
  if ((*(a2 + 128) & 0x4000) != 0)
  {
    goto LABEL_46;
  }

  return result;
}

uint64_t sub_245F079B4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 128);
  if ((v5 & 0x1000) != 0)
  {
    PB::TextFormatter::format(this, "activityType");
    v5 = *(a1 + 128);
    if ((v5 & 0x2000) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "activityTypeWithoutOverride");
  v5 = *(a1 + 128);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "currentCadence", *(a1 + 8));
  v5 = *(a1 + 128);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "currentPace", *(a1 + 16));
  v5 = *(a1 + 128);
  if ((v5 & 0x4000) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "elevationSource");
  v5 = *(a1 + 128);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "eta", *(a1 + 24));
  v5 = *(a1 + 128);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "grade", *(a1 + 32));
  v5 = *(a1 + 128);
  if ((v5 & 0x8000) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "gradeOnsetCounter");
  v5 = *(a1 + 128);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "horizSpeed", *(a1 + 40));
  v5 = *(a1 + 128);
  if ((v5 & 0x10000) == 0)
  {
LABEL_11:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "isArmConstrainedStateValid");
  v5 = *(a1 + 128);
  if ((v5 & 0x20000) == 0)
  {
LABEL_12:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "isGradeOnsetEscalated");
  v5 = *(a1 + 128);
  if ((v5 & 0x40000) == 0)
  {
LABEL_13:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "isRunning");
  v5 = *(a1 + 128);
  if ((v5 & 0x80000) == 0)
  {
LABEL_14:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "isValid");
  v5 = *(a1 + 128);
  if ((v5 & 0x100000) == 0)
  {
LABEL_15:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "isWeightSet");
  v5 = *(a1 + 128);
  if ((v5 & 0x200000) == 0)
  {
LABEL_16:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "isWorkoutSelected");
  v5 = *(a1 + 128);
  if ((v5 & 0x20) == 0)
  {
LABEL_17:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "powerWattage", *(a1 + 48));
  v5 = *(a1 + 128);
  if ((v5 & 0x40) == 0)
  {
LABEL_18:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "startTime", *(a1 + 56));
  v5 = *(a1 + 128);
  if ((v5 & 0x80) == 0)
  {
LABEL_19:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "userHeight", *(a1 + 64));
  v5 = *(a1 + 128);
  if ((v5 & 0x100) == 0)
  {
LABEL_20:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "userWeight", *(a1 + 72));
  v5 = *(a1 + 128);
  if ((v5 & 0x200) == 0)
  {
LABEL_21:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "verticalSpeed", *(a1 + 80));
  v5 = *(a1 + 128);
  if ((v5 & 0x400) == 0)
  {
LABEL_22:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_47:
  PB::TextFormatter::format(this, "wLoad", *(a1 + 88));
  if ((*(a1 + 128) & 0x800) != 0)
  {
LABEL_23:
    PB::TextFormatter::format(this, "workrateMETs", *(a1 + 96));
  }

LABEL_24:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245F07CB8(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
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
        *(this + 1) = v12;
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
        goto LABEL_171;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 128) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_146;
        case 2u:
          *(a1 + 128) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_146;
        case 3u:
          *(a1 + 128) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_146;
        case 4u:
          *(a1 + 128) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v27 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v26 = *(*this + v2++);
            *(this + 1) = v2;
            v27 = v26 != 0;
          }

          *(a1 + 124) = v27;
          goto LABEL_167;
        case 5u:
          *(a1 + 128) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_146;
        case 6u:
          *(a1 + 128) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_146;
        case 7u:
          *(a1 + 128) |= 0x2000u;
          v48 = *(this + 1);
          v2 = *(this + 2);
          v49 = *this;
          if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
          {
            v80 = 0;
            v81 = 0;
            v52 = 0;
            if (v2 <= v48)
            {
              v2 = *(this + 1);
            }

            v82 = v2 - v48;
            v83 = (v49 + v48);
            v84 = v48 + 1;
            while (1)
            {
              if (!v82)
              {
                LODWORD(v52) = 0;
                *(this + 24) = 1;
                goto LABEL_162;
              }

              v85 = v84;
              v86 = *v83;
              *(this + 1) = v85;
              v52 |= (v86 & 0x7F) << v80;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v80 += 7;
              --v82;
              ++v83;
              v84 = v85 + 1;
              v14 = v81++ > 8;
              if (v14)
              {
                LODWORD(v52) = 0;
LABEL_161:
                v2 = v85;
                goto LABEL_162;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v52) = 0;
            }

            goto LABEL_161;
          }

          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = (v49 + v48);
          v54 = v48 + 1;
          do
          {
            v2 = v54;
            *(this + 1) = v54;
            v55 = *v53++;
            v52 |= (v55 & 0x7F) << v50;
            if ((v55 & 0x80) == 0)
            {
              goto LABEL_162;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
          LODWORD(v52) = 0;
LABEL_162:
          *(a1 + 108) = v52;
          goto LABEL_167;
        case 8u:
          *(a1 + 128) |= 0x1000u;
          v28 = *(this + 1);
          v2 = *(this + 2);
          v29 = *this;
          if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v2)
          {
            v66 = 0;
            v67 = 0;
            v32 = 0;
            if (v2 <= v28)
            {
              v2 = *(this + 1);
            }

            v68 = v2 - v28;
            v69 = (v29 + v28);
            v70 = v28 + 1;
            while (1)
            {
              if (!v68)
              {
                LODWORD(v32) = 0;
                *(this + 24) = 1;
                goto LABEL_154;
              }

              v71 = v70;
              v72 = *v69;
              *(this + 1) = v71;
              v32 |= (v72 & 0x7F) << v66;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              --v68;
              ++v69;
              v70 = v71 + 1;
              v14 = v67++ > 8;
              if (v14)
              {
                LODWORD(v32) = 0;
LABEL_153:
                v2 = v71;
                goto LABEL_154;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v32) = 0;
            }

            goto LABEL_153;
          }

          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = (v29 + v28);
          v34 = v28 + 1;
          do
          {
            v2 = v34;
            *(this + 1) = v34;
            v35 = *v33++;
            v32 |= (v35 & 0x7F) << v30;
            if ((v35 & 0x80) == 0)
            {
              goto LABEL_154;
            }

            v30 += 7;
            ++v34;
            v14 = v31++ > 8;
          }

          while (!v14);
          LODWORD(v32) = 0;
LABEL_154:
          *(a1 + 104) = v32;
          goto LABEL_167;
        case 9u:
          *(a1 + 128) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_146;
        case 0xAu:
          *(a1 + 128) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_146;
        case 0xBu:
          *(a1 + 128) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_146;
        case 0xCu:
          *(a1 + 128) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v25 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v24 = *(*this + v2++);
            *(this + 1) = v2;
            v25 = v24 != 0;
          }

          *(a1 + 123) = v25;
          goto LABEL_167;
        case 0xDu:
          *(a1 + 128) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_146;
        case 0xEu:
          *(a1 + 128) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_146;
        case 0xFu:
          *(a1 + 128) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_96;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_146;
        case 0x10u:
          *(a1 + 128) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_96:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 8) = *(*this + v2);
LABEL_146:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          goto LABEL_167;
        case 0x11u:
          *(a1 + 128) |= 0x200000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v23 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v22 = *(*this + v2++);
            *(this + 1) = v2;
            v23 = v22 != 0;
          }

          *(a1 + 125) = v23;
          goto LABEL_167;
        case 0x12u:
          *(a1 + 128) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v37 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v36 = *(*this + v2++);
            *(this + 1) = v2;
            v37 = v36 != 0;
          }

          *(a1 + 121) = v37;
          goto LABEL_167;
        case 0x13u:
          *(a1 + 128) |= 0x8000u;
          v56 = *(this + 1);
          v2 = *(this + 2);
          v57 = *this;
          if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v2)
          {
            v87 = 0;
            v88 = 0;
            v60 = 0;
            if (v2 <= v56)
            {
              v2 = *(this + 1);
            }

            v89 = v2 - v56;
            v90 = (v57 + v56);
            v91 = v56 + 1;
            while (1)
            {
              if (!v89)
              {
                LODWORD(v60) = 0;
                *(this + 24) = 1;
                goto LABEL_166;
              }

              v92 = v91;
              v93 = *v90;
              *(this + 1) = v92;
              v60 |= (v93 & 0x7F) << v87;
              if ((v93 & 0x80) == 0)
              {
                break;
              }

              v87 += 7;
              --v89;
              ++v90;
              v91 = v92 + 1;
              v14 = v88++ > 8;
              if (v14)
              {
                LODWORD(v60) = 0;
LABEL_165:
                v2 = v92;
                goto LABEL_166;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v60) = 0;
            }

            goto LABEL_165;
          }

          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = (v57 + v56);
          v62 = v56 + 1;
          do
          {
            v2 = v62;
            *(this + 1) = v62;
            v63 = *v61++;
            v60 |= (v63 & 0x7F) << v58;
            if ((v63 & 0x80) == 0)
            {
              goto LABEL_166;
            }

            v58 += 7;
            ++v62;
            v14 = v59++ > 8;
          }

          while (!v14);
          LODWORD(v60) = 0;
LABEL_166:
          *(a1 + 116) = v60;
          goto LABEL_167;
        case 0x14u:
          *(a1 + 128) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v65 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v64 = *(*this + v2++);
            *(this + 1) = v2;
            v65 = v64 != 0;
          }

          *(a1 + 120) = v65;
          goto LABEL_167;
        case 0x15u:
          *(a1 + 128) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v39 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v38 = *(*this + v2++);
            *(this + 1) = v2;
            v39 = v38 != 0;
          }

          *(a1 + 122) = v39;
          goto LABEL_167;
        case 0x16u:
          *(a1 + 128) |= 0x4000u;
          v40 = *(this + 1);
          v2 = *(this + 2);
          v41 = *this;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
          {
            v73 = 0;
            v74 = 0;
            v44 = 0;
            if (v2 <= v40)
            {
              v2 = *(this + 1);
            }

            v75 = v2 - v40;
            v76 = (v41 + v40);
            v77 = v40 + 1;
            while (1)
            {
              if (!v75)
              {
                LODWORD(v44) = 0;
                *(this + 24) = 1;
                goto LABEL_158;
              }

              v78 = v77;
              v79 = *v76;
              *(this + 1) = v78;
              v44 |= (v79 & 0x7F) << v73;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v73 += 7;
              --v75;
              ++v76;
              v77 = v78 + 1;
              v14 = v74++ > 8;
              if (v14)
              {
                LODWORD(v44) = 0;
LABEL_157:
                v2 = v78;
                goto LABEL_158;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v44) = 0;
            }

            goto LABEL_157;
          }

          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = (v41 + v40);
          v46 = v40 + 1;
          do
          {
            v2 = v46;
            *(this + 1) = v46;
            v47 = *v45++;
            v44 |= (v47 & 0x7F) << v42;
            if ((v47 & 0x80) == 0)
            {
              goto LABEL_158;
            }

            v42 += 7;
            ++v46;
            v14 = v43++ > 8;
          }

          while (!v14);
          LODWORD(v44) = 0;
LABEL_158:
          *(a1 + 112) = v44;
          goto LABEL_167;
        default:
          if (!PB::Reader::skip(this))
          {
            v94 = 0;
            return v94 & 1;
          }

          v2 = *(this + 1);
LABEL_167:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_171;
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
      *(this + 1) = v20;
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
    *(this + 24) = 1;
  }

LABEL_171:
  v94 = v4 ^ 1;
  return v94 & 1;
}

uint64_t sub_245F08704(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 128);
  if ((v4 & 0x40) != 0)
  {
    result = PB::Writer::write(this, *(result + 56));
    v4 = *(v3 + 128);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 128);
  if ((v4 & 0x100) == 0)
  {
LABEL_4:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 128);
  if ((v4 & 0x100000) == 0)
  {
LABEL_5:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x800) == 0)
  {
LABEL_6:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 128);
  if ((v4 & 0x400) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 128);
  if ((v4 & 0x2000) == 0)
  {
LABEL_8:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x1000) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 128);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 128);
  if ((v4 & 8) == 0)
  {
LABEL_11:
    if ((v4 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 128);
  if ((v4 & 4) == 0)
  {
LABEL_12:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 128);
  if ((v4 & 0x80000) == 0)
  {
LABEL_13:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x10) == 0)
  {
LABEL_14:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 128);
  if ((v4 & 0x200) == 0)
  {
LABEL_15:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 128);
  if ((v4 & 0x80) == 0)
  {
LABEL_16:
    if ((v4 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 128);
  if ((v4 & 1) == 0)
  {
LABEL_17:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 128);
  if ((v4 & 0x200000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x20000) == 0)
  {
LABEL_19:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x8000) == 0)
  {
LABEL_20:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x10000) == 0)
  {
LABEL_21:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

LABEL_44:
    result = PB::Writer::write(this);
    if ((*(v3 + 128) & 0x4000) == 0)
    {
      return result;
    }

    goto LABEL_45;
  }

LABEL_43:
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x40000) != 0)
  {
    goto LABEL_44;
  }

LABEL_22:
  if ((v4 & 0x4000) == 0)
  {
    return result;
  }

LABEL_45:

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245F089A4(uint64_t result)
{
  *result = &unk_2858D62A8;
  *(result + 48) = 0;
  return result;
}

void sub_245F089CC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245F08A04(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D62A8;
  *(a1 + 48) = 0;
  v2 = *(a2 + 48);
  if ((v2 & 8) != 0)
  {
    result = *(a2 + 32);
    v3 = 8;
    *(a1 + 48) = 8;
    *(a1 + 32) = result;
    v2 = *(a2 + 48);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 48) & 0x10) != 0)
  {
LABEL_5:
    result = *(a2 + 40);
    v3 |= 0x10u;
    *(a1 + 48) = v3;
    *(a1 + 40) = result;
    v2 = *(a2 + 48);
  }

LABEL_6:
  if (v2)
  {
    result = *(a2 + 8);
    v3 |= 1u;
    *(a1 + 48) = v3;
    *(a1 + 8) = result;
    v2 = *(a2 + 48);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        return result;
      }

LABEL_12:
      result = *(a2 + 24);
      *(a1 + 48) = v3 | 4;
      *(a1 + 24) = result;
      return result;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 16);
  v3 |= 2u;
  *(a1 + 48) = v3;
  *(a1 + 16) = result;
  if ((*(a2 + 48) & 4) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_245F08ABC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 48);
  if (v5)
  {
    PB::TextFormatter::format(this, "primaryAxisX", *(a1 + 8));
    v5 = *(a1 + 48);
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

  else if ((*(a1 + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "primaryAxisY", *(a1 + 16));
  v5 = *(a1 + 48);
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
  PB::TextFormatter::format(this, "primaryAxisZ", *(a1 + 24));
  v5 = *(a1 + 48);
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
  PB::TextFormatter::format(this, "startTime", *(a1 + 32));
  if ((*(a1 + 48) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 40));
  }

LABEL_7:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245F08BA0(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
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
            *(this + 24) = 1;
            goto LABEL_51;
          }

          v21 = *v19;
          *(this + 1) = v20;
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
          *(this + 1) = v12;
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
          *(a1 + 48) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_42:
            *(this + 24) = 1;
            goto LABEL_47;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_46;
        }

        if (v22 == 2)
        {
          *(a1 + 48) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_42;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_46;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 48) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_42;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_46;
          case 4:
            *(a1 + 48) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_42;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_46;
          case 5:
            *(a1 + 48) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_42;
            }

            *(a1 + 24) = *(*this + v2);
LABEL_46:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_47;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_47:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_51:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_245F08E68(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 48);
  if ((v4 & 8) != 0)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 48) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 48);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = PB::Writer::write(this, *(v3 + 16));
    if ((*(v3 + 48) & 4) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 48);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_11:
  v5 = *(v3 + 24);

  return PB::Writer::write(this, v5);
}

float sub_245F0989C(unsigned int a1, unint64_t a2, float a3)
{
  result = a3 / (vcvts_n_f32_s32(a1, 2uLL) / (a2 >> 1));
  if (result > (a2 - 1))
  {
    return (a2 - 1);
  }

  return result;
}

uint64_t sub_245F098C4(uint64_t a1)
{
  *(a1 + 144) = a1 + 152;
  *(a1 + 8) = 256;
  *a1 = 8;
  v2 = 0x100000000;
  v3 = 152;
  v11 = vdupq_n_s64(0x3F80000000000000uLL);
  v12 = vdupq_n_s64(0x400921FB54442D18uLL);
  do
  {
    v4 = vneg_s32(v2);
    v5.i64[0] = v4.i32[0];
    v5.i64[1] = v4.i32[1];
    v6 = vcvt_f32_f64(vmulq_f64(vmulq_f64(vcvtq_f64_s64(v5), v12), v11));
    v13 = v6.f32[0];
    v7 = __sincosf_stret(v6.f32[1]);
    v8 = __sincosf_stret(v13);
    v14.val[1] = __PAIR64__(LODWORD(v7.__sinval), LODWORD(v8.__sinval));
    v14.val[0] = __PAIR64__(LODWORD(v7.__cosval), LODWORD(v8.__cosval));
    v9 = (a1 + v3);
    vst2_f32(v9, v14);
    v2 = vadd_s32(v2, 0x200000002);
    v3 += 16;
  }

  while (v3 != 2200);
  sub_245F099B4(256, (a1 + 16));
  return a1;
}

uint64_t sub_245F099B4(uint64_t result, int *a2)
{
  v2 = sqrtf(result);
  v3 = 4;
  do
  {
    while (result % v3)
    {
      v4 = v3 + 2;
      if (v3 == 2)
      {
        v4 = 3;
      }

      if (v3 == 4)
      {
        v3 = 2;
      }

      else
      {
        v3 = v4;
      }

      if (v2 < v3)
      {
        v3 = result;
      }
    }

    result = (result / v3);
    *a2 = v3;
    a2[1] = result;
    a2 += 2;
  }

  while (result > 1);
  return result;
}

void sub_245F09A10(uint64_t a1, _DWORD *a2, unsigned __int16 *a3)
{
  v13[255] = *MEMORY[0x277D85DE8];
  v5 = (a1 + 8);
  bzero(&v12, 8 * *(a1 + 8));
  sub_245F09AF4(&v12, a3, 0, 1, 1u, v5 + 2, v5);
  *a2 = 0;
  v6 = (*v5 >> 1);
  if (v6 >= 2)
  {
    v7 = *v5;
    v8 = (a2 + 1);
    v9 = v13;
    v10 = v6 - 1;
    do
    {
      v11 = *v9++;
      *v8++ = sqrtf(vaddv_f32(vmul_f32(v11, v11)) / v7);
      --v10;
    }

    while (v10);
  }
}

void sub_245F09AF4(float32x2_t *a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, unsigned int a5, int *a6, uint64_t a7)
{
  v9 = a1;
  v67 = *MEMORY[0x277D85DE8];
  v10 = a6[1];
  v11 = v10 * *a6;
  v62 = *a6;
  if (v10 == 1)
  {
    v12 = a4 * a5;
    v13 = 8 * v11;
    v14 = a1;
    do
    {
      v14->i32[0] = *sub_245F09E3C(a2, a3);
      ++v14;
      LODWORD(a3) = a3 + v12;
      v13 -= 8;
    }

    while (v13);
  }

  else
  {
    v16 = *a6 * a4;
    v17 = a4 * a5;
    v18 = 8 * v11;
    v19 = 8 * v10;
    v20 = a1;
    do
    {
      sub_245F09AF4(v20, a2, a3, v16, a5, a6 + 2, a7);
      a3 = (a3 + v17);
      v20 = (v20 + v19);
      v18 -= v19;
    }

    while (v18);
  }

  if (v62 == 2)
  {
    v56 = *(a7 + 136);
    v57 = &v9[v10];
    do
    {
      v58.i32[0] = v57->i32[1];
      v58.f32[1] = -v58.f32[0];
      v59 = vmla_n_f32(vrev64_s32(vmul_f32(*v56, v58)), *v56, v57->f32[0]);
      *v57++ = vsub_f32(*v9, v59);
      *v9 = vadd_f32(v59, *v9);
      ++v9;
      v56 += a4;
      --v10;
    }

    while (v10);
  }

  else
  {
    v21 = v10;
    if (v62 == 4)
    {
      v22 = &v9[v10];
      v23 = (*(a7 + 136) + 4);
      v24 = &v9[2 * v10];
      v25 = &v9[3 * v10];
      v26 = *(a7 + 4);
      v27 = v9 + 1;
      v28 = v23;
      v29 = v23;
      do
      {
        v30 = *(v23 - 1);
        v31 = v22[1];
        v32 = (*v22 * v30) - (v31 * *v23);
        v33 = (v30 * v31) + (*v22 * *v23);
        v34 = *(v28 - 1);
        v35 = v24[1];
        v36 = (*v24 * v34) - (v35 * *v28);
        v37 = (v34 * v35) + (*v24 * *v28);
        v38 = *(v29 - 1);
        v39 = v25[1];
        v40 = (*v25 * v38) - (v39 * *v29);
        v41 = (v38 * v39) + (*v25 * *v29);
        v42 = *(v27 - 1);
        v43 = v42 - v36;
        v44 = *v27 - v37;
        v45 = v36 + v42;
        v46 = v37 + *v27;
        *(v27 - 1) = v45;
        *v27 = v46;
        v47 = v32 + v40;
        v48 = v33 + v41;
        v49 = v32 - v40;
        v50 = v33 - v41;
        *v24 = v45 - v47;
        v24[1] = v46 - v48;
        v51 = v48 + *v27;
        *(v27 - 1) = v47 + *(v27 - 1);
        *v27 = v51;
        if (v26)
        {
          v52 = v43 + v50;
          v53 = v44 - v49;
          v54 = v43 - v50;
          v55 = v44 + v49;
        }

        else
        {
          v54 = v43 + v50;
          v55 = v44 - v49;
          v52 = v43 - v50;
          v53 = v44 + v49;
        }

        *v22 = v54;
        v22[1] = v55;
        v22 += 2;
        v29 += 6 * a4;
        v24 += 2;
        v28 += 4 * a4;
        *v25 = v52;
        v25[1] = v53;
        v25 += 2;
        v23 += 2 * a4;
        v27 += 2;
        --v21;
      }

      while (v21);
    }

    else
    {
      if (qword_27EE37520 != -1)
      {
        sub_245F2B0B0();
      }

      v60 = qword_27EE37528;
      if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        v66 = v62;
        _os_log_impl(&dword_245D80000, v60, OS_LOG_TYPE_FAULT, "Error in FFT,p,%d", buf, 8u);
      }
    }
  }
}

os_log_t sub_245F09E0C()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  qword_27EE37528 = result;
  return result;
}

unsigned __int16 *sub_245F09E3C(unsigned __int16 *a1, unint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  if (v4 <= a2)
  {
    if (qword_27EE37520 != -1)
    {
      dispatch_once(&qword_27EE37520, &unk_2858D6ED0);
    }

    v7 = qword_27EE37528;
    v8 = os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT);
    LODWORD(v4) = *(a1 + 1);
    if (v8)
    {
      v9 = 134218240;
      v10 = a2;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_245D80000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v9, 0x12u);
      LODWORD(v4) = *(a1 + 1);
    }
  }

  v5 = *a1 + a2;
  if (v5 >= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0;
  }

  return &a1[2 * (v5 - v4) + 4];
}

uint64_t sub_245F09F54(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 16) = 0x10000000000;
  *(a1 + 12) = 1031798784;
  *(a1 + 1048) = 1;
  *(a1 + 1064) = 0x10000000000;
  *(a1 + 1060) = 1031798784;
  *(a1 + 2096) = 1;
  *(a1 + 2112) = 0x10000000000;
  *(a1 + 2108) = 1031798784;
  *(a1 + 3144) = 1;
  *(a1 + 3160) = 0x10000000000;
  *(a1 + 3156) = 1031798784;
  *(a1 + 4192) = 1;
  *(a1 + 4208) = 0x10000000000;
  *(a1 + 4204) = 1031798784;
  *(a1 + 5240) = 1;
  *(a1 + 5256) = 0x10000000000;
  *(a1 + 5252) = 1031798784;
  *(a1 + 6288) = 1;
  *(a1 + 6304) = 0x10000000000;
  *(a1 + 6300) = 1031798784;
  *(a1 + 7336) = 1;
  *(a1 + 7352) = 0x10000000000;
  *(a1 + 7348) = 1031798784;
  *(a1 + 8384) = 1;
  *(a1 + 8400) = 0x10000000000;
  *(a1 + 8396) = 1031798784;
  *(a1 + 9432) = 1;
  *(a1 + 9448) = 0x10000000000;
  *(a1 + 9444) = 1031798784;
  *(a1 + 10480) = 1;
  *(a1 + 10496) = 0x10000000000;
  *(a1 + 10492) = 1031798784;
  *(a1 + 11528) = 1;
  *(a1 + 11544) = 0x10000000000;
  *(a1 + 11540) = 1031798784;
  *(a1 + 12576) = 1;
  *(a1 + 12592) = 0x10000000000;
  *(a1 + 12588) = 1031798784;
  *(a1 + 13624) = 1;
  *(a1 + 13640) = 0x10000000000;
  *(a1 + 13636) = 1031798784;
  *(a1 + 14672) = 1;
  *(a1 + 14688) = 0x10000000000;
  *(a1 + 14684) = 1031798784;
  *(a1 + 15720) = 0x10000000000;
  *(a1 + 19824) = 0;
  *(a1 + 19832) = 0x7F00000000;
  *(a1 + 20096) = 0u;
  sub_245F16CC4(a1 + 20112);
  sub_245F24864((a1 + 20696), &off_278E96EA8);
  sub_245F24864((a1 + 20760), &off_278E96EA8);
  sub_245F24864((a1 + 20824), &off_278E96EA8);
  return a1;
}

unsigned __int16 *sub_245F0A0B8(unsigned __int16 *result, unsigned __int16 *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 >= v2)
  {
    v4 = *(result + 1);
  }

  else
  {
    v4 = 0;
  }

  result[v3 - v4 + 4] = *a2;
  v5 = result[1];
  if (v2 <= v5)
  {
    v6 = *result + 1;
    if (v6 < v2)
    {
      LOWORD(v2) = 0;
    }

    *result = v6 - v2;
  }

  else
  {
    result[1] = v5 + 1;
  }

  return result;
}

uint64_t sub_245F0A114(uint64_t a1)
{
  v1 = a1 + 0x4000;
  if (*(a1 + 19836) != *(a1 + 19834))
  {
    return 0;
  }

  v3 = *(a1 + 19824);
  if (*(a1 + 19834))
  {
    v4 = 0;
    do
    {
      v3 -= *sub_245F0A198((a1 + 19832), v4++);
    }

    while (v4 < *(v1 + 3450));
  }

  return v3;
}

unsigned __int16 *sub_245F0A198(unsigned __int16 *a1, unint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  if (v4 <= a2)
  {
    if (qword_27EE37520 != -1)
    {
      dispatch_once(&qword_27EE37520, &unk_2858D6EF0);
    }

    v7 = qword_27EE37528;
    v8 = os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT);
    LODWORD(v4) = *(a1 + 1);
    if (v8)
    {
      v9 = 134218240;
      v10 = a2;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_245D80000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v9, 0x12u);
      LODWORD(v4) = *(a1 + 1);
    }
  }

  v5 = *a1 + a2;
  if (v5 >= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0;
  }

  return &a1[v5 - v4 + 4];
}

unsigned __int16 *sub_245F0A3B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F24DC8(a2, *(a2 + 28), *(a2 + 32), *(a2 + 36));
  v6 = v5;
  v8 = v7;
  v9 = sub_245F24DC8(a2, *(a2 + 16), *(a2 + 20), *(a2 + 24));
  v12 = *(a1 + 18);
  v13 = *(a1 + 20);
  v14 = *(a1 + 16);
  if (v14 + v12 >= v13)
  {
    v15 = *(a1 + 20);
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 4 * (v14 + v12 - v15) + 24) = v9;
  if (v13 <= v12)
  {
    if (v14 + 1 < v13)
    {
      LOWORD(v13) = 0;
    }

    *(a1 + 16) = v14 + 1 - v13;
  }

  else
  {
    *(a1 + 18) = v12 + 1;
  }

  *a1 = 1;
  v16 = *(a1 + 1066);
  v17 = *(a1 + 1068);
  v18 = *(a1 + 1064);
  if (v18 + v16 >= v17)
  {
    v19 = *(a1 + 1068);
  }

  else
  {
    v19 = 0;
  }

  *(a1 + 4 * (v18 + v16 - v19) + 1072) = v10;
  if (v17 <= v16)
  {
    if (v18 + 1 < v17)
    {
      LOWORD(v17) = 0;
    }

    *(a1 + 1064) = v18 + 1 - v17;
  }

  else
  {
    *(a1 + 1066) = v16 + 1;
  }

  *(a1 + 1048) = 1;
  v20 = *(a1 + 2114);
  v21 = *(a1 + 2116);
  v22 = *(a1 + 2112);
  if (v22 + v20 >= v21)
  {
    v23 = *(a1 + 2116);
  }

  else
  {
    v23 = 0;
  }

  *(a1 + 4 * (v22 + v20 - v23) + 2120) = v11;
  if (v21 <= v20)
  {
    if (v22 + 1 < v21)
    {
      LOWORD(v21) = 0;
    }

    *(a1 + 2112) = v22 + 1 - v21;
  }

  else
  {
    *(a1 + 2114) = v20 + 1;
  }

  *(a1 + 2096) = 1;
  v24 = *(a1 + 3162);
  v25 = *(a1 + 3164);
  v26 = *(a1 + 3160);
  if (v26 + v24 >= v25)
  {
    v27 = *(a1 + 3164);
  }

  else
  {
    v27 = 0;
  }

  *(a1 + 4 * (v26 + v24 - v27) + 3168) = *(a2 + 16);
  if (v25 <= v24)
  {
    if (v26 + 1 < v25)
    {
      LOWORD(v25) = 0;
    }

    *(a1 + 3160) = v26 + 1 - v25;
  }

  else
  {
    *(a1 + 3162) = v24 + 1;
  }

  *(a1 + 3144) = 1;
  v28 = *(a1 + 4210);
  v29 = *(a1 + 4212);
  v30 = *(a1 + 4208);
  if (v30 + v28 >= v29)
  {
    v31 = *(a1 + 4212);
  }

  else
  {
    v31 = 0;
  }

  *(a1 + 4 * (v30 + v28 - v31) + 4216) = *(a2 + 20);
  if (v29 <= v28)
  {
    if (v30 + 1 < v29)
    {
      LOWORD(v29) = 0;
    }

    *(a1 + 4208) = v30 + 1 - v29;
  }

  else
  {
    *(a1 + 4210) = v28 + 1;
  }

  *(a1 + 4192) = 1;
  v32 = *(a1 + 5258);
  v33 = *(a1 + 5260);
  v34 = *(a1 + 5256);
  if (v34 + v32 >= v33)
  {
    v35 = *(a1 + 5260);
  }

  else
  {
    v35 = 0;
  }

  *(a1 + 4 * (v34 + v32 - v35) + 5264) = *(a2 + 24);
  if (v33 <= v32)
  {
    if (v34 + 1 < v33)
    {
      LOWORD(v33) = 0;
    }

    *(a1 + 5256) = v34 + 1 - v33;
  }

  else
  {
    *(a1 + 5258) = v32 + 1;
  }

  *(a1 + 5240) = 1;
  v36 = *(a1 + 6306);
  v37 = *(a1 + 6308);
  v38 = *(a1 + 6304);
  if (v38 + v36 >= v37)
  {
    v39 = *(a1 + 6308);
  }

  else
  {
    v39 = 0;
  }

  *(a1 + 4 * (v38 + v36 - v39) + 6312) = v4;
  if (v37 <= v36)
  {
    if (v38 + 1 < v37)
    {
      LOWORD(v37) = 0;
    }

    *(a1 + 6304) = v38 + 1 - v37;
  }

  else
  {
    *(a1 + 6306) = v36 + 1;
  }

  *(a1 + 6288) = 1;
  v40 = *(a1 + 7354);
  v41 = *(a1 + 7356);
  v42 = *(a1 + 7352);
  if (v42 + v40 >= v41)
  {
    v43 = *(a1 + 7356);
  }

  else
  {
    v43 = 0;
  }

  *(a1 + 4 * (v42 + v40 - v43) + 7360) = v6;
  if (v41 <= v40)
  {
    if (v42 + 1 < v41)
    {
      LOWORD(v41) = 0;
    }

    *(a1 + 7352) = v42 + 1 - v41;
  }

  else
  {
    *(a1 + 7354) = v40 + 1;
  }

  *(a1 + 7336) = 1;
  v44 = *(a1 + 8402);
  v45 = *(a1 + 8404);
  v46 = *(a1 + 8400);
  if (v46 + v44 >= v45)
  {
    v47 = *(a1 + 8404);
  }

  else
  {
    v47 = 0;
  }

  *(a1 + 4 * (v46 + v44 - v47) + 8408) = v8;
  if (v45 <= v44)
  {
    if (v46 + 1 < v45)
    {
      LOWORD(v45) = 0;
    }

    *(a1 + 8400) = v46 + 1 - v45;
  }

  else
  {
    *(a1 + 8402) = v44 + 1;
  }

  *(a1 + 8384) = 1;
  v48 = *(a1 + 9450);
  v49 = *(a1 + 9452);
  v50 = *(a1 + 9448);
  if (v50 + v48 >= v49)
  {
    v51 = *(a1 + 9452);
  }

  else
  {
    v51 = 0;
  }

  *(a1 + 4 * (v50 + v48 - v51) + 9456) = *(a2 + 28);
  if (v49 <= v48)
  {
    if (v50 + 1 < v49)
    {
      LOWORD(v49) = 0;
    }

    *(a1 + 9448) = v50 + 1 - v49;
  }

  else
  {
    *(a1 + 9450) = v48 + 1;
  }

  *(a1 + 9432) = 1;
  v52 = *(a1 + 10498);
  v53 = *(a1 + 10500);
  v54 = *(a1 + 10496);
  if (v54 + v52 >= v53)
  {
    v55 = *(a1 + 10500);
  }

  else
  {
    v55 = 0;
  }

  *(a1 + 4 * (v54 + v52 - v55) + 10504) = *(a2 + 32);
  if (v53 <= v52)
  {
    if (v54 + 1 < v53)
    {
      LOWORD(v53) = 0;
    }

    *(a1 + 10496) = v54 + 1 - v53;
  }

  else
  {
    *(a1 + 10498) = v52 + 1;
  }

  *(a1 + 10480) = 1;
  v56 = *(a1 + 11546);
  v57 = *(a1 + 11548);
  v58 = *(a1 + 11544);
  if (v58 + v56 >= v57)
  {
    v59 = *(a1 + 11548);
  }

  else
  {
    v59 = 0;
  }

  *(a1 + 4 * (v58 + v56 - v59) + 11552) = *(a2 + 36);
  if (v57 <= v56)
  {
    if (v58 + 1 < v57)
    {
      LOWORD(v57) = 0;
    }

    *(a1 + 11544) = v58 + 1 - v57;
  }

  else
  {
    *(a1 + 11546) = v56 + 1;
  }

  *(a1 + 11528) = 1;
  result = sub_245F0A878((a1 + 15720), a2);
  v61 = *(a2 + 40);
  v62 = *(a1 + 19824);
  if (v62)
  {
    v63 = v61 - v62;
    if (v63 >> 16)
    {
      LOWORD(v63) = 10000;
    }

    v64 = v63;
    result = sub_245F0A0B8((a1 + 19832), &v64);
  }

  *(a1 + 19824) = v61;
  return result;
}

unsigned __int16 *sub_245F0A878(unsigned __int16 *result, _OWORD *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  *&result[8 * (v3 - v2) + 4] = *a2;
  v4 = result[1];
  v5 = *(result + 1);
  if (v5 <= v4)
  {
    v6 = *result + 1;
    if (v6 < v5)
    {
      LOWORD(v5) = 0;
    }

    *result = v6 - v5;
  }

  else
  {
    result[1] = v4 + 1;
  }

  return result;
}

float sub_245F0A8D8(uint64_t a1, uint64_t a2, float *a3, int a4, uint64_t a5)
{
  v7 = a2;
  if (sub_245F0A2B0(a1))
  {
    if (v7)
    {
      sub_245F0A9CC(a1, a3);
      sub_245F0AC10(a1, a3);
      if (*(a1 + 12596) == *(a1 + 12594) && *(a1 + 13644) == *(a1 + 13642) && *(a1 + 14692) == *(a1 + 14690))
      {
        sub_245F0AF10(a1, a3);
      }
    }

    else if (!a4)
    {
      return result;
    }

    sub_245F0B1D4();

    return sub_245F0B6C8();
  }

  return result;
}

float sub_245F0A9CC(unsigned __int16 *a1, float *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  sub_245F09A0C(v23);
  sub_245F09A10(v23, v26, a1 + 1580);
  sub_245F09A0C(v23);
  sub_245F09A10(v23, v25, a1 + 2104);
  sub_245F09A0C(v23);
  sub_245F09A10(v23, v24, a1 + 2628);
  v4 = 0.0;
  for (i = 2; i != 127; ++i)
  {
    v4 = v4 + *&v26[i];
  }

  v6 = 0.0;
  for (j = 2; j != 127; ++j)
  {
    v6 = v6 + *&v25[j];
  }

  v8 = 0.0;
  for (k = 2; k != 127; ++k)
  {
    v8 = v8 + *&v24[k];
  }

  v10 = 0.0;
  for (m = 3; m != 11; m += 4)
  {
    v10 = (((v10 + COERCE_FLOAT(*&v26[m])) + COERCE_FLOAT(HIDWORD(*&v26[m]))) + COERCE_FLOAT(*&v26[m + 2])) + COERCE_FLOAT(HIDWORD(*&v26[m]));
  }

  v12 = 0.0;
  for (n = 3; n != 11; n += 4)
  {
    v12 = (((v12 + COERCE_FLOAT(*&v25[n])) + COERCE_FLOAT(HIDWORD(*&v25[n]))) + COERCE_FLOAT(*&v25[n + 2])) + COERCE_FLOAT(HIDWORD(*&v25[n]));
  }

  v14 = 0.0;
  for (ii = 3; ii != 11; ii += 4)
  {
    v14 = (((v14 + COERCE_FLOAT(*&v24[ii])) + COERCE_FLOAT(HIDWORD(*&v24[ii]))) + COERCE_FLOAT(*&v24[ii + 2])) + COERCE_FLOAT(HIDWORD(*&v24[ii]));
  }

  v16 = 0.0;
  for (jj = 2; jj != 13; ++jj)
  {
    v16 = v16 + *&v26[jj];
  }

  v18 = 0.0;
  for (kk = 2; kk != 13; ++kk)
  {
    v18 = v18 + *&v25[kk];
  }

  v20 = 0.0;
  for (mm = 2; mm != 13; ++mm)
  {
    v20 = v20 + *&v24[mm];
  }

  result = (v4 + v6) + v8;
  *a2 = ((v16 + v18) + v20) / result;
  a2[15] = result;
  a2[2] = ((v10 + v12) + v14) / result;
  return result;
}

float sub_245F0AC10(unsigned __int16 *a1, float *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  sub_245F09A0C(v32);
  sub_245F09A10(v32, v35, a1 + 4724);
  sub_245F09A0C(v32);
  sub_245F09A10(v32, v34, a1 + 5248);
  sub_245F09A0C(v32);
  sub_245F09A10(v32, v33, a1 + 5772);
  v4 = 0.0;
  for (i = 2; i != 127; ++i)
  {
    v4 = v4 + *&v35[i];
  }

  v6 = 0.0;
  for (j = 2; j != 127; ++j)
  {
    v6 = v6 + *&v34[j];
  }

  v8 = 0.0;
  for (k = 2; k != 127; ++k)
  {
    v8 = v8 + *&v33[k];
  }

  v10 = 0.0;
  for (m = 3; m != 11; m += 4)
  {
    v10 = (((v10 + COERCE_FLOAT(*&v35[m])) + COERCE_FLOAT(HIDWORD(*&v35[m]))) + COERCE_FLOAT(*&v35[m + 2])) + COERCE_FLOAT(HIDWORD(*&v35[m]));
  }

  v12 = 0.0;
  for (n = 3; n != 11; n += 4)
  {
    v12 = (((v12 + COERCE_FLOAT(*&v34[n])) + COERCE_FLOAT(HIDWORD(*&v34[n]))) + COERCE_FLOAT(*&v34[n + 2])) + COERCE_FLOAT(HIDWORD(*&v34[n]));
  }

  v14 = 0.0;
  for (ii = 3; ii != 11; ii += 4)
  {
    v14 = (((v14 + COERCE_FLOAT(*&v33[ii])) + COERCE_FLOAT(HIDWORD(*&v33[ii]))) + COERCE_FLOAT(*&v33[ii + 2])) + COERCE_FLOAT(HIDWORD(*&v33[ii]));
  }

  v16 = 0.0;
  for (jj = 2; jj != 13; ++jj)
  {
    v16 = v16 + *&v35[jj];
  }

  v18 = 0.0;
  for (kk = 2; kk != 13; ++kk)
  {
    v18 = v18 + *&v34[kk];
  }

  v20 = 0.0;
  for (mm = 2; mm != 13; ++mm)
  {
    v20 = v20 + *&v33[mm];
  }

  v22 = 0.0;
  do
  {
    v22 = v22 + *&v35[mm++];
  }

  while (mm != 39);
  v23 = 0.0;
  do
  {
    v23 = v23 + *&v35[mm++];
  }

  while (mm != 64);
  v24 = 0.0;
  for (nn = 39; nn != 64; ++nn)
  {
    v24 = v24 + *&v34[nn];
  }

  v26 = 0.0;
  for (i1 = 39; i1 != 64; ++i1)
  {
    v26 = v26 + *&v33[i1];
  }

  v28 = 0.0;
  for (i2 = 89; i2 != 127; ++i2)
  {
    v28 = v28 + *&v35[i2];
  }

  result = (v4 + v6) + v8;
  v31 = (v10 + v12) + v14;
  a2[16] = result;
  a2[20] = ((v16 + v18) + v20) / result;
  a2[21] = ((v23 + v24) + v26) / result;
  a2[7] = v31 / result;
  a2[8] = v31;
  a2[29] = v28;
  a2[32] = v22;
  a2[43] = v31 / result;
  a2[48] = v28;
  a2[53] = v22;
  return result;
}

void sub_245F0AF10(unsigned __int16 *a1, float *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v31[0] = 0x300000000;
  sub_245F09A0C(v35);
  sub_245F09A10(v35, v34, a1 + 6296);
  sub_245F09A0C(v35);
  sub_245F09A10(v35, v33, a1 + 6820);
  sub_245F09A0C(v35);
  sub_245F09A10(v35, v32, a1 + 7344);
  for (i = 0; i != 128; ++i)
  {
    v6 = (v34[i] + v33[i]) + v32[i];
    v7 = WORD1(v31[0]);
    v8 = HIDWORD(v31[0]);
    v9 = LOWORD(v31[0]);
    v10 = LOWORD(v31[0]) + WORD1(v31[0]);
    if (v10 >= HIDWORD(v31[0]))
    {
      v11 = HIDWORD(v31[0]);
    }

    else
    {
      v11 = 0;
    }

    *(&v31[1] + v10 - v11) = v6;
    if (v8 <= v7)
    {
      if (v9 + 1 < v8)
      {
        LOWORD(v8) = 0;
      }

      LOWORD(v31[0]) = v9 + 1 - v8;
    }

    else
    {
      WORD1(v31[0]) = v7 + 1;
    }

    if (i >= 2)
    {
      *v30 = 0x300000000;
      sub_245F0BDFC(v30, v31);
      sub_245F0BE78(v30);
    }

    v35[i] = v6;
  }

  v12 = 0;
  v13 = 0;
  v14 = -3.4028e38;
  do
  {
    if (v35[v13] > v14)
    {
      v14 = v35[v13];
      v12 = v13;
    }

    ++v13;
  }

  while (v13 != 128);
  v15 = 0.0;
  v17 = sub_245F0BC3C(0.0, 50.0, 100.0, v4, v35);
  for (j = 0; j != 127; ++j)
  {
    v15 = v15 + v35[j];
  }

  for (k = 0; k != 10; ++k)
  {
    v20 = (5 * k);
    v21 = (5 * k + 5);
    v22 = vcvtps_s32_f32(v20 / 0.3937);
    v23 = vcvtps_s32_f32(v21 / 0.3937);
    if (v23 >= 128)
    {
      v23 = 128;
    }

    v24 = 0.0;
    if (v23 > v22)
    {
      v25 = v23 - v22;
      v26 = &v35[v22];
      do
      {
        v27 = *v26++;
        v24 = v24 + v27;
        --v25;
      }

      while (v25);
    }

    v28 = &a2[3 * k + 55];
    v28[4] = v24;
    v28[5] = v24 / v15;
    v28[6] = sub_245F0BC3C(v20, v21, 100.0, v16, v35);
  }

  v29 = v12 * 0.390625;
  a2[55] = v14;
  a2[56] = v29;
  a2[57] = v17;
  a2[58] = v15;
}

float sub_245F0B1D4()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v48 = *MEMORY[0x277D85DE8];
  sub_245F09A0C(v47);
  sub_245F09A10(v47, v46, v7 + 8);
  sub_245F09A0C(v47);
  sub_245F09A10(v47, v45, v7 + 532);
  sub_245F09A0C(v47);
  sub_245F09A10(v47, v44, v7 + 1056);
  if (v6)
  {
    v8 = 0.0;
    for (i = 2; i != 127; ++i)
    {
      v8 = v8 + *&v46[i];
    }

    v10 = 0.0;
    for (j = 2; j != 127; ++j)
    {
      v10 = v10 + *&v45[j];
    }

    v12 = 0.0;
    for (k = 2; k != 127; ++k)
    {
      v12 = v12 + *&v44[k];
    }

    v14 = 0;
    v15 = 0.0;
    do
    {
      v15 = (((v15 + COERCE_FLOAT(*&v44[v14 + 3])) + COERCE_FLOAT(HIDWORD(*&v44[v14 + 3]))) + COERCE_FLOAT(*&v44[v14 + 5])) + COERCE_FLOAT(HIDWORD(*&v44[v14 + 3]));
      v14 += 4;
    }

    while (v14 != 8);
    v16 = v8 + v10;
    v17 = 0.0;
    for (m = 2; m != 13; ++m)
    {
      v17 = v17 + *&v46[m];
    }

    v19 = 0.0;
    for (n = 2; n != 13; ++n)
    {
      v19 = v19 + *&v45[n];
    }

    v21 = 0.0;
    for (ii = 2; ii != 13; ++ii)
    {
      v21 = v21 + *&v44[ii];
    }

    v23 = 0;
    v24 = v17 + v19;
    v25 = 0.0;
    v26 = v24 / v16;
    do
    {
      v25 = v25 + *&v46[v23 + 13];
      ++v23;
    }

    while (v23 != 26);
    v27 = 0;
    v28 = 0.0;
    v29 = v15 / v12;
    do
    {
      v28 = v28 + *&v45[v27 + 13];
      ++v27;
    }

    while (v27 != 26);
    v4[13] = v16;
    v4[9] = v21 / v12;
    v4[17] = v29;
    v4[18] = v26;
    v30 = (v25 + v28) / v16;
    v4[30] = v30;
    v4[49] = v30;
    v4[51] = v26;
  }

  for (jj = 0; jj != 128; jj += 4)
  {
    *&v47[jj] = vaddq_f32(vmulq_f32(*&v46[jj], *&v46[jj]), vmulq_f32(*&v45[jj], *&v45[jj]));
    *&v43[jj * 4] = vmulq_f32(*&v44[jj], *&v44[jj]);
  }

  if ((atomic_load_explicit(&qword_27EE37628, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE37628))
  {
    qword_27EE37620 = vcvtas_u32_f32(sub_245F0989C(0x64u, 0x80uLL, 0.5));
    __cxa_guard_release(&qword_27EE37628);
  }

  if ((atomic_load_explicit(&qword_27EE37638, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE37638))
  {
    qword_27EE37630 = vcvtas_u32_f32(sub_245F0989C(0x64u, 0x80uLL, 3.5));
    __cxa_guard_release(&qword_27EE37638);
  }

  v32 = qword_27EE37620;
  v33 = qword_27EE37630;
  if (qword_27EE37620 <= qword_27EE37630)
  {
    v35 = 0.0;
    v36 = qword_27EE37620;
    do
    {
      v35 = v35 + v47[v36++];
    }

    while (v36 <= qword_27EE37630);
    v2[17] = sqrtf(v35);
    v34 = 0.0;
    do
    {
      v34 = v34 + *&v43[4 * v32++];
    }

    while (v32 <= v33);
  }

  else
  {
    v2[17] = 0.0;
    v34 = 0.0;
  }

  v2[19] = sqrtf(v34);
  if ((atomic_load_explicit(&qword_27EE37648, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE37648))
  {
    qword_27EE37640 = (roundf(sub_245F0989C(0x64u, 0x80uLL, 3.5)) + 1.0);
    __cxa_guard_release(&qword_27EE37648);
  }

  if ((atomic_load_explicit(&qword_27EE37658, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE37658))
  {
    qword_27EE37650 = vcvtas_u32_f32(sub_245F0989C(0x64u, 0x80uLL, 20.0));
    __cxa_guard_release(&qword_27EE37658);
  }

  v37 = qword_27EE37640;
  v38 = qword_27EE37650;
  if (qword_27EE37640 <= qword_27EE37650)
  {
    v40 = 0.0;
    v41 = qword_27EE37640;
    do
    {
      v40 = v40 + v47[v41++];
    }

    while (v41 <= qword_27EE37650);
    v2[18] = sqrtf(v40);
    v39 = 0.0;
    do
    {
      v39 = v39 + *&v43[4 * v37++];
    }

    while (v37 <= v38);
  }

  else
  {
    v2[18] = 0.0;
    v39 = 0.0;
  }

  result = sqrtf(v39);
  v2[20] = result;
  return result;
}

float sub_245F0B6C8()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v50 = *MEMORY[0x277D85DE8];
  sub_245F09A0C(v49);
  sub_245F09A10(v49, v48, v7 + 3152);
  sub_245F09A0C(v49);
  sub_245F09A10(v49, v47, v7 + 3676);
  sub_245F09A0C(v49);
  sub_245F09A10(v49, v46, v7 + 4200);
  if (v6)
  {
    v8 = 0.0;
    for (i = 2; i != 127; ++i)
    {
      v8 = v8 + *&v48[i];
    }

    v10 = 0.0;
    for (j = 2; j != 127; ++j)
    {
      v10 = v10 + *&v47[j];
    }

    v12 = 0.0;
    for (k = 2; k != 127; ++k)
    {
      v12 = v12 + *&v46[k];
    }

    v14 = 0;
    v15 = 0.0;
    do
    {
      v15 = (((v15 + COERCE_FLOAT(*&v48[v14 + 3])) + COERCE_FLOAT(HIDWORD(*&v48[v14 + 3]))) + COERCE_FLOAT(*&v48[v14 + 5])) + COERCE_FLOAT(HIDWORD(*&v48[v14 + 3]));
      v14 += 4;
    }

    while (v14 != 8);
    v16 = 0;
    v17 = 0.0;
    do
    {
      v17 = (((v17 + COERCE_FLOAT(*&v47[v16 + 3])) + COERCE_FLOAT(HIDWORD(*&v47[v16 + 3]))) + COERCE_FLOAT(*&v47[v16 + 5])) + COERCE_FLOAT(HIDWORD(*&v47[v16 + 3]));
      v16 += 4;
    }

    while (v16 != 8);
    v18 = 0;
    v19 = 0.0;
    do
    {
      v19 = (((v19 + COERCE_FLOAT(*&v46[v18 + 3])) + COERCE_FLOAT(HIDWORD(*&v46[v18 + 3]))) + COERCE_FLOAT(*&v46[v18 + 5])) + COERCE_FLOAT(HIDWORD(*&v46[v18 + 3]));
      v18 += 4;
    }

    while (v18 != 8);
    v20 = v15 + v17;
    v21 = 0.0;
    v22 = 2;
    v23 = v19 / v12;
    do
    {
      v21 = v21 + *&v48[v22++];
    }

    while (v22 != 13);
    v24 = v8 + v10;
    v25 = 0.0;
    for (m = 2; m != 13; ++m)
    {
      v25 = v25 + *&v47[m];
    }

    v27 = 0.0;
    for (n = 2; n != 13; ++n)
    {
      v27 = v27 + *&v46[n];
    }

    v29 = 0;
    v30 = v21 + v25;
    v31 = 0.0;
    do
    {
      v31 = v31 + *&v46[v29 + 89];
      ++v29;
    }

    while (v29 != 38);
    v32 = v19 / v20;
    v4[19] = v24;
    v4[6] = v20 / v24;
    v4[3] = v12;
    v4[10] = v23;
    v4[11] = v30 / v24;
    v4[33] = v27;
    v4[31] = v31;
    v4[26] = v32;
    v4[38] = v27;
    v4[39] = v31;
    v4[40] = (v12 - v27) - v31;
    v4[45] = v32;
    v4[52] = v31;
    v4[54] = v27;
  }

  for (ii = 0; ii != 128; ii += 4)
  {
    *&v49[ii] = vaddq_f32(vmulq_f32(*&v48[ii], *&v48[ii]), vmulq_f32(*&v47[ii], *&v47[ii]));
    *&v45[ii * 4] = vmulq_f32(*&v46[ii], *&v46[ii]);
  }

  if ((atomic_load_explicit(&qword_27EE37668, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE37668))
  {
    qword_27EE37660 = vcvtas_u32_f32(sub_245F0989C(0x64u, 0x80uLL, 0.5));
    __cxa_guard_release(&qword_27EE37668);
  }

  if ((atomic_load_explicit(&qword_27EE37678, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE37678))
  {
    qword_27EE37670 = vcvtas_u32_f32(sub_245F0989C(0x64u, 0x80uLL, 3.5));
    __cxa_guard_release(&qword_27EE37678);
  }

  v34 = qword_27EE37660;
  v35 = qword_27EE37670;
  if (qword_27EE37660 <= qword_27EE37670)
  {
    v37 = 0.0;
    v38 = qword_27EE37660;
    do
    {
      v37 = v37 + v49[v38++];
    }

    while (v38 <= qword_27EE37670);
    v2[21] = sqrtf(v37);
    v36 = 0.0;
    do
    {
      v36 = v36 + *&v45[4 * v34++];
    }

    while (v34 <= v35);
  }

  else
  {
    v2[21] = 0.0;
    v36 = 0.0;
  }

  v2[23] = sqrtf(v36);
  if ((atomic_load_explicit(&qword_27EE37688, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE37688))
  {
    qword_27EE37680 = (roundf(sub_245F0989C(0x64u, 0x80uLL, 3.5)) + 1.0);
    __cxa_guard_release(&qword_27EE37688);
  }

  if ((atomic_load_explicit(&qword_27EE37698, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE37698))
  {
    qword_27EE37690 = vcvtas_u32_f32(sub_245F0989C(0x64u, 0x80uLL, 20.0));
    __cxa_guard_release(&qword_27EE37698);
  }

  v39 = qword_27EE37680;
  v40 = qword_27EE37690;
  if (qword_27EE37680 <= qword_27EE37690)
  {
    v42 = 0.0;
    v43 = qword_27EE37680;
    do
    {
      v42 = v42 + v49[v43++];
    }

    while (v43 <= qword_27EE37690);
    v2[22] = sqrtf(v42);
    v41 = 0.0;
    do
    {
      v41 = v41 + *&v45[4 * v39++];
    }

    while (v39 <= v40);
  }

  else
  {
    v2[22] = 0.0;
    v41 = 0.0;
  }

  result = sqrtf(v41);
  v2[24] = result;
  return result;
}

float sub_245F0BC3C(float a1, float a2, float a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = (a3 * 0.5) / 127.0;
  v6 = vcvtps_s32_f32(a1 / v5);
  memset(v18, 0, sizeof(v18));
  v7 = vcvtps_s32_f32(a2 / v5);
  v8 = 0.0;
  if (v6 < v7)
  {
    v9 = v6;
    v10 = v7;
    v11 = 0.0;
    v12 = v6;
    do
    {
      v13 = *(a5 + 4 * v12) * *(a5 + 4 * v12);
      *(v18 + v12) = v13;
      v11 = v11 + v13;
      ++v12;
    }

    while (v12 < v10);
    v8 = 0.0;
    if (v11 != 0.0 && v6 < v10)
    {
      v15 = v6;
      do
      {
        *(v18 + v15) = *(v18 + v15) / v11;
        ++v15;
      }

      while (v15 < v10);
      if (v6 < v10)
      {
        v8 = 0.0;
        do
        {
          v16 = *(v18 + v9);
          if (v16 != 0.0)
          {
            v8 = v8 - (v16 * logf(*(v18 + v9)));
          }

          ++v9;
        }

        while (v9 < v10);
      }
    }
  }

  return v8;
}

unsigned __int16 *sub_245F0BDA8(unsigned __int16 *result, _DWORD *a2)
{
  v2 = result[1];
  v3 = *(result + 1);
  v4 = *result;
  if (v4 + v2 >= v3)
  {
    v5 = *(result + 1);
  }

  else
  {
    v5 = 0;
  }

  *&result[2 * (v4 + v2 - v5) + 4] = *a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *result = v4 + 1 - v3;
  }

  else
  {
    result[1] = v2 + 1;
  }

  return result;
}

void sub_245F0BDFC(unsigned __int16 *a1, uint64_t a2)
{
  *a1 = 0;
  v6 = *(a2 + 4);
  v4 = (a2 + 4);
  v5 = v6;
  v8 = *(a1 + 1);
  v7 = (a1 + 2);
  if (v5 != v8)
  {
    sub_245F2B0C4(v7, v4);
  }

  if (*(a2 + 2))
  {
    v9 = 0;
    do
    {
      v10 = sub_245F09E3C(a2, v9);
      sub_245F0BDA8(a1, v10);
      ++v9;
    }

    while (v9 < *(a2 + 2));
  }
}

void sub_245F0BE78(unsigned __int16 *a1)
{
  v1 = a1[1];
  if (a1[1])
  {
    if (v1 == 1)
    {
      sub_245F09E3C(a1, 0);
    }

    else if (v1)
    {

      sub_245F0C508(a1, v1 >> 1);
    }

    else
    {
      v3 = v1 >> 1;
      sub_245F0C508(a1, v1 >> 1);
      sub_245F0C508(a1, v3 - 1);
    }
  }
}

BOOL sub_245F0BF24(uint64_t a1)
{
  v1 = *(a1 + 20096) + 1;
  *(a1 + 20096) = v1;
  if ((v1 & 3) != 0)
  {
    return 0;
  }

  result = sub_245F0A2B0(a1);
  if (result)
  {
    *(a1 + 20096) = 0;
    return 1;
  }

  return result;
}

void sub_245F0BF74(uint64_t a1, float *a2)
{
  *a2 = *(a1 + 19824);
  v4 = sub_245F0A114(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v64 = 0.0;
  v65 = 0.0;
  v53 = a2;
  *(a2 + 1) = v4;
  v66 = 0.0;
  v67 = 0.0;
  v68 = 0.0;
  v69 = 0.0;
  v14 = 1;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  do
  {
    v60 = v17;
    v61 = v12;
    v62 = v10;
    v63 = v15;
    v59 = *sub_245F09E3C((a1 + 6304), v5);
    v58 = *sub_245F09E3C((a1 + 7352), v5);
    v57 = *sub_245F09E3C((a1 + 8400), v5);
    v56 = *sub_245F09E3C((a1 + 16), v5);
    v55 = *sub_245F09E3C((a1 + 1064), v5);
    v54 = *sub_245F09E3C((a1 + 2112), v5);
    v22 = sub_245F0C3C0((a1 + 15720), v5);
    v23 = sub_245F24B54(v22);
    ++v8;
    v24 = __sincosf_stret(v23);
    v68 = v68 + v24.__cosval;
    v69 = v69 + v24.__sinval;
    v25 = sub_245F0C3C0((a1 + 15720), v5);
    v26 = sub_245F24B98(v25);
    ++v7;
    v27 = __sincosf_stret(v26);
    v66 = v66 + v27.__cosval;
    v67 = v67 + v27.__sinval;
    v28 = sub_245F0C3C0((a1 + 15720), v5);
    v29 = sub_245F24BDC(v28);
    ++v6;
    v30 = __sincosf_stret(v29);
    v64 = v64 + v30.__cosval;
    v65 = v65 + v30.__sinval;
    v31 = v59 - v9;
    v9 = v9 + ((v59 - v9) / v14);
    v10 = v62 + (v31 * (v59 - v9));
    v32 = v58 - v11;
    v11 = v11 + ((v58 - v11) / v14);
    v12 = v61 + (v32 * (v58 - v11));
    v33 = v57 - v13;
    v13 = v13 + ((v57 - v13) / v14);
    v21 = v21 + (v33 * (v57 - v13));
    v34 = v56 - v20;
    v20 = v20 + ((v56 - v20) / v14);
    v19 = v19 + (v34 * (v56 - v20));
    v35 = v55 - v18;
    v18 = v18 + ((v55 - v18) / v14);
    v17 = v60 + (v35 * (v55 - v18));
    v36 = v54 - v16;
    v16 = v16 + ((v54 - v16) / v14);
    v15 = v63 + (v36 * (v54 - v16));
    v5 += 5;
    ++v14;
  }

  while (v5 != 260);
  v53[4] = sqrtf((v11 * v11) + (v9 * v9));
  v53[5] = v13;
  v53[6] = sqrtf((v10 / 51.0) + (v12 / 51.0));
  v53[7] = sqrtf(v21 / 51.0);
  v53[8] = sqrtf((v20 * v20) + (v18 * v18));
  v53[9] = v16;
  v53[10] = sqrtf((v19 / 51.0) + (v17 / 51.0));
  v53[11] = sqrtf(v15 / 51.0);
  if (v7)
  {
    v53[12] = atan2f(v67, v66);
    v37 = 0.0;
    v39 = v68;
    v38 = v69;
    if (v7 != 1)
    {
      v40 = logf(fmaxf(((v66 * v66) + (v67 * v67)) / (v7 * v7), 0.00000011921));
      v41 = -v40;
      v42 = v40 < 0.0;
      v43 = 0.0;
      if (v42)
      {
        v43 = v41;
      }

      v37 = sqrtf(v43);
    }
  }

  else
  {
    v53[12] = 0.0;
    v37 = 0.0;
    v39 = v68;
    v38 = v69;
  }

  v53[14] = v37;
  if (v8)
  {
    v44 = atan2f(v38, v39);
    if (v44 <= 0.0)
    {
      v44 = -v44;
    }

    v53[13] = v44;
    v45 = 0.0;
    if (v8 != 1)
    {
      v46 = logf(fmaxf(((v39 * v39) + (v38 * v38)) / (v8 * v8), 0.00000011921));
      v47 = -v46;
      v42 = v46 < 0.0;
      v48 = 0.0;
      if (v42)
      {
        v48 = v47;
      }

      v45 = sqrtf(v48);
    }
  }

  else
  {
    v53[13] = -0.0;
    v45 = 0.0;
  }

  v53[15] = v45;
  v49 = 0.0;
  if (v6 >= 2)
  {
    v50 = logf(fmaxf(((v64 * v64) + (v65 * v65)) / (v6 * v6), 0.00000011921));
    v51 = -v50;
    v42 = v50 < 0.0;
    v52 = 0.0;
    if (v42)
    {
      v52 = v51;
    }

    v49 = sqrtf(v52);
  }

  v53[16] = v49;
}

unsigned __int16 *sub_245F0C3C0(unsigned __int16 *a1, unint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  if (v4 <= a2)
  {
    if (qword_27EE37520 != -1)
    {
      dispatch_once(&qword_27EE37520, &unk_2858D6EF0);
    }

    v7 = qword_27EE37528;
    v8 = os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT);
    LODWORD(v4) = *(a1 + 1);
    if (v8)
    {
      v9 = 134218240;
      v10 = a2;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_245D80000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v9, 0x12u);
      LODWORD(v4) = *(a1 + 1);
    }
  }

  v5 = *a1 + a2;
  if (v5 >= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0;
  }

  return &a1[8 * (v5 - v4) + 4];
}

os_log_t sub_245F0C4D8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  qword_27EE37528 = result;
  return result;
}

double sub_245F0C508(unsigned __int16 *a1, int a2)
{
  v4 = a1[1];
  if (v4 <= a2)
  {
    v8 = v2;
    v9 = v3;
    if (qword_27EE37520 != -1)
    {
      sub_245F2B1AC();
    }

    v6 = qword_27EE37528;
    if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&dword_245D80000, v6, OS_LOG_TYPE_DEBUG, "Get Nth, attempting to access invalid element", v7, 2u);
    }

    return 0.0;
  }

  else
  {

    *&result = sub_245F0C5B0(a1, 0, (v4 - 1), a2);
  }

  return result;
}

float sub_245F0C5B0(unsigned __int16 *a1, unint64_t a2, uint64_t a3, int a4)
{
  v4 = 0.0;
  if (a2 <= a3)
  {
    v6 = a3;
    v7 = a2;
    while (1)
    {
      v9 = sub_245F0C640(a1, v7, v6);
      if (v9 == a4)
      {
        break;
      }

      if (v9 <= a4)
      {
        v6 = v6;
      }

      else
      {
        v6 = (v9 - 1);
      }

      if (v9 <= a4)
      {
        v7 = (v9 + 1);
      }

      else
      {
        v7 = v7;
      }

      if (v7 > v6)
      {
        return v4;
      }
    }

    return *sub_245F09E3C(a1, a4);
  }

  return v4;
}

unint64_t sub_245F0C640(unsigned __int16 *a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = sub_245F09E3C(a1, a3);
  if (a2 < v3)
  {
    v7 = *v6;
    v8 = a2 - 1;
    a2 = a2;
    do
    {
      if (*sub_245F09E3C(a1, a2) <= v7)
      {
        sub_245F0C6E4(a1, ++v8, a2);
      }

      ++a2;
    }

    while (v3 != a2);
    a2 = (v8 + 1);
  }

  sub_245F0C6E4(a1, a2, v3);
  return a2;
}

unsigned __int16 *sub_245F0C6E4(unsigned __int16 *a1, int a2, int a3)
{
  v5 = a2;
  v6 = *sub_245F09E3C(a1, a2);
  v7 = *sub_245F09E3C(a1, a3);
  *sub_245F09E3C(a1, v5) = v7;
  result = sub_245F09E3C(a1, a3);
  *result = v6;
  return result;
}

unsigned __int16 *sub_245F0C75C(unsigned __int16 *result, uint64_t a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[6 * (v3 - v2)];
  v5 = *(a2 + 8);
  *(v4 + 1) = *a2;
  *(v4 + 4) = v5;
  v6 = result[1];
  v7 = *(result + 1);
  if (v7 <= v6)
  {
    v8 = *result + 1;
    if (v8 < v7)
    {
      LOWORD(v7) = 0;
    }

    *result = v8 - v7;
  }

  else
  {
    result[1] = v6 + 1;
  }

  return result;
}

unsigned __int16 *sub_245F0C7C8(unsigned __int16 *a1, unint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  if (v4 <= a2)
  {
    if (qword_27EE37520 != -1)
    {
      dispatch_once(&qword_27EE37520, &unk_2858D6EF0);
    }

    v7 = qword_27EE37528;
    v8 = os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT);
    LODWORD(v4) = *(a1 + 1);
    if (v8)
    {
      v9 = 134218240;
      v10 = a2;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_245D80000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v9, 0x12u);
      LODWORD(v4) = *(a1 + 1);
    }
  }

  v5 = *a1 + a2;
  if (v5 >= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0;
  }

  return &a1[6 * (v5 - v4) + 4];
}

uint64_t sub_245F0C8E4(uint64_t result, uint64_t a2, float32x2_t a3, float32_t a4, float a5, float a6, float a7)
{
  v7 = 0;
  v8 = 0;
  v18 = *MEMORY[0x277D85DE8];
  a3.f32[1] = a4;
  v16 = vmul_f32(a3, vdup_n_s32(0x447A0000u));
  v17 = a5 * 1000.0;
  v9 = (result + 388);
  do
  {
    v10 = v16.f32[v7];
    v11 = *(result + v7 * 4 + 308) - v10;
    if (v11 <= 0.0)
    {
      v11 = -v11;
    }

    *(result + v7 * 4 + 308) = v10;
    v12 = *(v9 - 13);
    *(v9 - 14) = v11 + *(v9 - 14);
    ++*(v9 - 15);
    if (v12 > v11)
    {
      *(v9 - 13) = v11;
    }

    if (*(v9 - 12) < v11)
    {
      *(v9 - 12) = v11;
    }

    ++*(v9 - 3);
    v13 = *(v9 - 1);
    *(v9 - 2) = v10 + *(v9 - 2);
    if (v13 > v10)
    {
      *(v9 - 1) = v10;
    }

    if (*v9 < v10)
    {
      *v9 = v10;
    }

    v8 |= v11 > 0.000001;
    v9 += 4;
    ++v7;
  }

  while (v7 != 3);
  ++*(result + 424);
  *(result + 428) = *(result + 428) + a6;
  if (*(result + 432) > a6)
  {
    *(result + 432) = a6;
  }

  if (*(result + 436) < a6)
  {
    *(result + 436) = a6;
  }

  ++*(result + 440);
  *(result + 444) = *(result + 444) + a7;
  if (*(result + 448) > a7)
  {
    *(result + 448) = a7;
  }

  if (*(result + 452) < a7)
  {
    *(result + 452) = a7;
  }

  if (v8)
  {
    v14 = a2 - *(result + 320);
    *(result + 320) = a2;
    v15 = v14;
    ++*(result + 456);
    *(result + 460) = *(result + 460) + v14;
    if (*(result + 464) > v14)
    {
      *(result + 464) = v15;
    }

    if (*(result + 468) < v15)
    {
      *(result + 468) = v15;
    }
  }

  return result;
}

uint64_t sub_245F0CAC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 464) = 0u;
  *(a2 + 480) = 0u;
  v2 = (result + 428);
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v3 = a2 + 32;
  v4 = *(result + 432);
  v5 = *(result + 436);
  v6 = *(result + 424);
  v7 = *(result + 448);
  v8 = *(result + 452);
  v9 = *(result + 440);
  v10 = *(result + 464);
  v11 = *(result + 468);
  v12 = *(result + 456);
  v13 = (result + 388);
  v14 = 3;
  do
  {
    v15 = *v13;
    *(v3 - 20) = *(v13 - 1);
    *(v3 - 12) = v15;
    v16 = *(v13 - 3);
    v17 = 0.0;
    v18 = 0.0;
    if (v16)
    {
      v18 = *(v13 - 2) / v16;
    }

    *(v3 - 16) = v18;
    v19 = *(v13 - 12);
    *(v3 - 32) = *(v13 - 13);
    *(v3 - 24) = v19;
    v20 = *(v13 - 15);
    if (v20)
    {
      v17 = *(v13 - 14) / v20;
    }

    *(v3 - 28) = v17;
    *(v3 - 8) = v4;
    v21 = 0.0;
    v22 = 0.0;
    *v3 = v5;
    if (v6)
    {
      v22 = *v2 / v6;
    }

    *(v3 - 4) = v22;
    *(v3 + 4) = v7;
    *(v3 + 12) = v8;
    if (v9)
    {
      v21 = *(result + 444) / v9;
    }

    *(v3 + 8) = v21;
    *(v3 + 16) = v10;
    *(v3 + 32) = v11;
    if (v12)
    {
      v23 = (*(result + 460) / v12);
    }

    else
    {
      v23 = 0;
    }

    *(v3 + 24) = v23;
    v13 += 4;
    v3 += 72;
    --v14;
  }

  while (v14);
  v24 = result + 164;
  v25 = (a2 + 272);
  v26 = 3;
  do
  {
    *(v25 - 14) = *(v24 - 88);
    v27 = *(v24 - 96);
    v28 = 0.0;
    v29 = 0.0;
    if (v27)
    {
      v29 = *(v24 - 92) / v27;
    }

    v30 = *(v24 - 84);
    *(v25 - 13) = v29;
    *(v25 - 12) = v30;
    *(v25 - 11) = *(v24 - 40);
    v31 = *(v24 - 48);
    if (v31)
    {
      v28 = *(v24 - 44) / v31;
    }

    v32 = *(v24 - 36);
    *(v25 - 10) = v28;
    *(v25 - 9) = v32;
    *(v25 - 8) = *(v24 + 8);
    v33 = 0.0;
    v34 = 0.0;
    if (*v24)
    {
      v34 = *(v24 + 4) / *v24;
    }

    v35 = *(v24 + 12);
    *(v25 - 7) = v34;
    *(v25 - 6) = v35;
    *(v25 - 5) = *(v24 + 56);
    v36 = *(v24 + 48);
    if (v36)
    {
      v33 = *(v24 + 52) / v36;
    }

    v37 = *(v24 + 60);
    *(v25 - 4) = v33;
    *(v25 - 3) = v37;
    *(v25 - 2) = *(v24 + 104);
    v38 = *(v24 + 96);
    if (v38)
    {
      v39 = *(v24 + 100) / v38;
    }

    else
    {
      v39 = 0.0;
    }

    v40 = *(v24 + 108);
    *(v25 - 1) = v39;
    *v25 = v40;
    v25 += 15;
    v24 += 16;
    --v26;
  }

  while (v26);
  *(a2 + 400) = *(result + 60);
  v41 = *(result + 52);
  if (v41)
  {
    v42 = (*(result + 56) / v41);
  }

  else
  {
    v42 = 0;
  }

  v43 = *(result + 64);
  *(a2 + 408) = v42;
  *(a2 + 416) = v43;
  *(a2 + 424) = *(result + 44);
  v44 = *(result + 36);
  if (v44)
  {
    v45 = (*(result + 40) / v44);
  }

  else
  {
    v45 = 0;
  }

  v46 = *(result + 48);
  *(a2 + 432) = v45;
  *(a2 + 440) = v46;
  *(a2 + 448) = *(result + 28);
  v47 = *(result + 20);
  if (v47)
  {
    v48 = (*(result + 24) / v47);
  }

  else
  {
    v48 = 0;
  }

  v49 = *(result + 32);
  *(a2 + 456) = v48;
  *(a2 + 464) = v49;
  *(a2 + 472) = *(result + 12);
  v50 = *(result + 4);
  if (v50)
  {
    v51 = (*(result + 8) / v50);
  }

  else
  {
    v51 = 0;
  }

  v52 = *(result + 16);
  *(a2 + 480) = v51;
  *(a2 + 488) = v52;
  *(result + 4) = 0;
  *(result + 8) = 0x7F7FFFFF00000000;
  *(result + 16) = 4286578687;
  *(result + 24) = 0x7F7FFFFF00000000;
  *(result + 32) = 4286578687;
  *(result + 40) = 0x7F7FFFFF00000000;
  *(result + 48) = 4286578687;
  *(result + 56) = 0x7F7FFFFF00000000;
  *(result + 64) = -8388609;
  *(result + 424) = 0;
  *v2 = 0x7F7FFFFF00000000;
  *(result + 436) = 4286578687;
  *(result + 444) = 0x7F7FFFFF00000000;
  *(result + 452) = 4286578687;
  *(result + 460) = 0x7F7FFFFF00000000;
  *(result + 468) = -8388609;
  v53 = (result + 388);
  v54 = 3;
  do
  {
    *(v53 - 3) = 0;
    *(v53 - 1) = 0x7F7FFFFF00000000;
    *v53 = -8388609;
    *(v53 - 15) = 0;
    *(v53 - 7) = 0x7F7FFFFF00000000;
    *(v53 - 12) = -8388609;
    v53 += 4;
    --v54;
  }

  while (v54);
  for (i = 0; i != 48; i += 16)
  {
    v56 = result + i;
    *(v56 + 68) = 0;
    *(v56 + 72) = 0x7F7FFFFF00000000;
    *(v56 + 80) = -8388609;
    *(v56 + 116) = 0;
    *(v56 + 120) = 0x7F7FFFFF00000000;
    *(v56 + 128) = -8388609;
    *(v56 + 164) = 0;
    *(v56 + 168) = 0x7F7FFFFF00000000;
    *(v56 + 176) = -8388609;
    *(v56 + 212) = 0;
    *(v56 + 216) = 0x7F7FFFFF00000000;
    *(v56 + 224) = -8388609;
    *(v56 + 260) = 0;
    *(v56 + 264) = 0x7F7FFFFF00000000;
    *(v56 + 272) = -8388609;
  }

  return result;
}

float sub_245F0CEAC(uint64_t a1, _OWORD *a2, uint64_t a3, float a4, float a5)
{
  v8 = 0;
  *a1 = 1;
  *(a1 + 4) = *a2;
  *(a1 + 24) = a3;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  do
  {
    *sub_245F0DA38(&v11, v8, v8) = 1065353216;
    ++v8;
  }

  while (v8 != 3);
  for (i = 0; i != 36; i += 4)
  {
    *(&v11 + i) = (a5 * a5) * *(&v11 + i);
  }

  v14[0] = v11;
  v14[1] = v12;
  v15 = v13;
  sub_245F0CF80(a1 + 32, v14);
  result = a4 * a4;
  *(a1 + 56) = a4 * a4;
  *(a1 + 60) = a4 * a4;
  *(a1 + 64) = a4 * a4;
  return result;
}

BOOL sub_245F0CF80(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  result = sub_245F0EC34(a2);
  if (result)
  {
    v5 = 3;
    v6 = 2;
    while (1)
    {
      v7 = v6;
      v8 = sub_245F0ECD8(a2, v6, v6);
      v9 = v5;
      v10 = v5 - 2;
      if (v5 <= 2)
      {
        do
        {
          v11 = *sub_245F0ED3C(a1 + 12, v7, v9);
          v12 = *sub_245F0ED3C(a1 + 12, v7, v9);
          v8 = v8 + (-(v11 * v12) * *sub_245F0EDA8(a1, v9++));
        }

        while (v9 != 3);
      }

      *sub_245F0EDA8(a1, v7) = v8;
      if (*sub_245F0EDA8(a1, v7) <= 0.0)
      {
        break;
      }

      if (v7)
      {
        do
        {
          v13 = v10;
          v14 = sub_245F0ECD8(a2, v10, v7);
          v15 = v5;
          if (v5 <= 2)
          {
            do
            {
              v16 = *sub_245F0ED3C(a1 + 12, v13, v15);
              v17 = *sub_245F0ED3C(a1 + 12, v7, v15);
              v14 = v14 + (-(v16 * v17) * *sub_245F0EDA8(a1, v15++));
            }

            while (v15 != 3);
          }

          v18 = v14 / *sub_245F0EDA8(a1, v7);
          *sub_245F0ED3C(a1 + 12, v13, v7) = v18;
          v10 = v13 - 1;
        }

        while (v13);
      }

      v6 = v7 - 1;
      v5 = v7;
      if (!v7)
      {
        return 1;
      }
    }

    if (qword_27EE37520 != -1)
    {
      sub_245F2B1C0();
    }

    v19 = qword_27EE37528;
    result = os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v20 = 134217984;
      v21 = v7;
      _os_log_impl(&dword_245D80000, v19, OS_LOG_TYPE_DEBUG, "D(%zu) <= 0 non-positive definite matrix!", &v20, 0xCu);
      return 0;
    }
  }

  return result;
}

double sub_245F0D1C4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 12) = 0x3F80000000000000;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 52) = 0u;
  return result;
}

void sub_245F0D1E8(float32x2_t *a1, float32x2_t *a2, unint64_t a3, __n128 a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a1->i8[0] == 1)
  {
    v6 = a1[3];
    if (a3 > *&v6)
    {
      if (*&v6 + 1000000 >= a3)
      {
        v10 = (a3 - v6.i32[0]) / 1000000.0;
        v13 = v10;
        sub_245F0D3F8(a1, a2, v10);
        sub_245F0D458(a2, buf);
        sub_245F0D4C8(buf, v20, v13);
        v11 = 0;
        v19 = 0;
        memset(v18, 0, sizeof(v18));
        do
        {
          *sub_245F0DA38(v18, v11, v11) = 1065353216;
          ++v11;
        }

        while (v11 != 3);
        v12 = a1[8].f32[0] * v13;
        v16 = vmul_n_f32(a1[7], v13);
        v17 = v12;
        sub_245F0D618(&a1[4], v20, v18, &v16);
        if (sub_245F0D9D8(&a1[4]) < 0.000000060923)
        {
          sub_245F0EF8C(&a1[4], 0, 0, v14);
          v14[0] = v14[0] + 0.000000030462;
          v15 = v15 + 0.000000030462;
          sub_245F0CF80(&a1[4], v14);
        }

        a1[3] = a3;
      }

      else
      {
        if (qword_27EE374F0 != -1)
        {
          sub_245F2B1D4();
        }

        v7 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
        {
          v8 = a1[3];
          *buf = 134218240;
          v22 = a3;
          v23 = 2048;
          v24 = v8;
          _os_log_impl(&dword_245D80000, v7, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRollMEKF]:[propagate] Requested propagation time: %llu us cannot be 1s ahead of the last state timestamp: %llu us. Rejecting request.", buf, 0x16u);
        }
      }
    }
  }
}

void sub_245F0D3F8(uint64_t a1, float32x2_t *a2, float a3)
{
  v4 = a2[1].f32[0] * a3;
  v10 = vmul_n_f32(*a2, a3);
  v11 = v4;
  *v5.i64 = sub_245F24E08(&v9, &v10);
  *(a1 + 4) = sub_245F249DC(v9.f32, (a1 + 4), v5);
  *(a1 + 8) = v6;
  *(a1 + 12) = v7;
  *(a1 + 16) = v8;
}

double sub_245F0D458@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = 0;
  v3 = *a1;
  v4 = -*a1;
  LODWORD(v8) = 0;
  v5 = *(a1 + 4);
  DWORD1(v8) = v5.i32[1];
  *(&v8 + 1) = vneg_f32(v5);
  LODWORD(v9) = 0;
  *(&v9 + 4) = __PAIR64__(v5.u32[0], LODWORD(v3));
  *(&v9 + 3) = v4;
  v10 = 0;
  do
  {
    *(&v8 + v2) = -*(&v8 + v2);
    v2 += 4;
  }

  while (v2 != 36);
  result = *&v8;
  v7 = v9;
  *a2 = v8;
  *(a2 + 16) = v7;
  *(a2 + 32) = v10;
  return result;
}

void sub_245F0D4C8(__int128 *a1@<X1>, uint64_t a2@<X8>, float a3@<S0>)
{
  v6 = 0;
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  do
  {
    *sub_245F0DA38(a2, v6, v6) = 1065353216;
    ++v6;
  }

  while (v6 != 3);
  v7 = 0;
  v8 = a1[1];
  v13 = *a1;
  v14 = v8;
  v15 = *(a1 + 8);
  do
  {
    *(&v13 + v7) = *(&v13 + v7) * a3;
    v7 += 4;
  }

  while (v7 != 36);
  v9 = 0;
  v16 = v13;
  v17 = v14;
  v18 = v15;
  do
  {
    *(a2 + 4 * v9) = sub_245F0F028(&v16, v9) + *(a2 + 4 * v9);
    ++v9;
  }

  while (v9 != 9);
  v10 = (a3 * 0.5) * a3;
  sub_245F0DA9C(a1, a1, &v13);
  for (i = 0; i != 36; i += 4)
  {
    *(&v13 + i) = v10 * *(&v13 + i);
  }

  v12 = 0;
  v16 = v13;
  v17 = v14;
  v18 = v15;
  do
  {
    *(a2 + 4 * v12) = sub_245F0F028(&v16, v12) + *(a2 + 4 * v12);
    ++v12;
  }

  while (v12 != 9);
}

void sub_245F0D618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v44 = *MEMORY[0x277D85DE8];
  do
  {
    v9 = 2;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        v11 = *sub_245F0DA38(a2, v8, i);
        v12 = *sub_245F0ED3C(a1 + 12, i, v9);
        v13 = sub_245F0DA38(a2, v8, v9);
        *v13 = *v13 + (v11 * v12);
      }

      --v9;
    }

    while (v9);
    ++v8;
  }

  while (v8 != 3);
  for (j = 2; ; --j)
  {
    v15 = 0;
    v43[j] = 0.0;
    v16 = 0.0;
    do
    {
      v17 = *sub_245F0DA38(a2, j, v15);
      v18 = v17 * *sub_245F0DA38(a2, j, v15);
      v16 = v16 + (v18 * *sub_245F0EDA8(a1, v15));
      v43[j] = v16;
      ++v15;
    }

    while (v15 != 3);
    for (k = 0; k != 3; ++k)
    {
      v20 = *sub_245F0DA38(a3, j, k);
      v21 = v20 * *sub_245F0DA38(a3, j, k);
      v16 = v16 + (v21 * sub_245F0EA08(a4, k));
      v43[j] = v16;
    }

    if (v16 <= 0.0)
    {
      break;
    }

    if (!j)
    {
      for (m = 0; m != 3; ++m)
      {
        v40 = v43[m];
        *sub_245F0EDA8(a1, m) = v40;
      }

      return;
    }

    for (n = 0; n != j; ++n)
    {
      v23 = 0;
      v24 = 0.0;
      do
      {
        v25 = *sub_245F0DA38(a2, n, v23);
        v26 = v25 * *sub_245F0EDA8(a1, v23);
        v24 = v24 + (v26 * *sub_245F0DA38(a2, j, v23++));
      }

      while (v23 != 3);
      for (ii = 0; ii != 3; ++ii)
      {
        v28 = *sub_245F0DA38(a3, n, ii);
        v29 = v28 * sub_245F0EA08(a4, ii);
        v24 = v24 + (v29 * *sub_245F0DA38(a3, j, ii));
      }

      v30 = 0;
      *sub_245F0ED3C(a1 + 12, n, j) = v24 / v16;
      do
      {
        v31 = *sub_245F0ED3C(a1 + 12, n, j);
        v32 = *sub_245F0DA38(a2, j, v30);
        v33 = sub_245F0DA38(a2, n, v30);
        *v33 = *v33 - (v31 * v32);
        ++v30;
      }

      while (v30 != 3);
      for (jj = 0; jj != 3; ++jj)
      {
        v35 = *sub_245F0ED3C(a1 + 12, n, j);
        v36 = *sub_245F0DA38(a3, j, jj);
        v37 = sub_245F0DA38(a3, n, jj);
        *v37 = *v37 - (v35 * v36);
      }
    }
  }

  if (qword_27EE37520 != -1)
  {
    sub_245F2B1C0();
  }

  v38 = qword_27EE37528;
  if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_DEBUG))
  {
    v41 = 134217984;
    v42 = j;
    _os_log_impl(&dword_245D80000, v38, OS_LOG_TYPE_DEBUG, "D[%zu] <= 0, matrix ! positive definite", &v41, 0xCu);
  }
}

float sub_245F0D9D8(uint64_t a1)
{
  v2 = sub_245F0EE14(a1, 0, 0);
  for (i = 1; i != 3; ++i)
  {
    v2 = v2 + sub_245F0EE14(a1, i, i);
  }

  return v2;
}

uint64_t sub_245F0DA38(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= 3)
  {
    sub_245F2B1E8();
  }

  if (a3 >= 3)
  {
    sub_245F2B294();
  }

  return a1 + 4 * (3 * a3 + a2);
}

float *sub_245F0DA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 3; ++j)
    {
      v8 = sub_245F0ECD8(a1, i, 0);
      v9 = v8 * sub_245F0ECD8(a2, 0, j);
      *sub_245F0DA38(a3, i, j) = v9;
      for (k = 1; k != 3; ++k)
      {
        v11 = sub_245F0ECD8(a1, i, k);
        v12 = sub_245F0ECD8(a2, k, j);
        result = sub_245F0DA38(a3, i, j);
        *result = *result + (v11 * v12);
      }
    }
  }

  return result;
}

void sub_245F0DB8C(uint64_t a1, float *a2, uint64_t a3, unint64_t a4)
{
  v55 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) == a4)
  {
    if ((atomic_load_explicit(byte_27EE376A0, memory_order_acquire) & 1) == 0)
    {
      sub_245F2B340();
    }

    v8 = sub_245F24D2C((a1 + 4), *&qword_27EE376A8, *(&qword_27EE376A8 + 1), *&dword_27EE376B0);
    v10 = v9;
    v12 = v11;
    v13 = 0;
    v50.i32[0] = 0;
    v50.f32[1] = v11;
    v50.f32[2] = -v9;
    v50.f32[3] = -v11;
    v51.i32[0] = 0;
    *(v51.i64 + 4) = __PAIR64__(LODWORD(v9), LODWORD(v8));
    v51.f32[3] = -v8;
    v52 = 0;
    do
    {
      v50.f32[v13] = v50.f32[v13] + v50.f32[v13];
      ++v13;
    }

    while (v13 != 9);
    *buf = v50;
    *&buf[16] = v51;
    v54 = v52;
    *&v48 = sub_245F1710C(a2) - v8;
    *(&v48 + 1) = v14 - v10;
    v49 = v15 - v12;
    sub_245F1720C(a2, v47);
    v40 = sub_245F0E0C4(a3);
    v41 = v16;
    v42 = v17;
    v43 = v18;
    sub_245F0DFDC(v47, &v40, v46);
    sub_245F0E144(v47, v44);
    sub_245F0DEFC(v46, v44, &v50);
    sub_245F24D1C((a1 + 4), v46);
    sub_245F0DA9C(v46, &v50, &v40);
    sub_245F0E1D8(v46, v39);
    sub_245F0DA9C(&v40, v39, v44);
    v19 = 0;
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    do
    {
      *sub_245F0DA38(&v34, v19, v19) = 1065353216;
      ++v19;
    }

    while (v19 != 3);
    for (i = 0; i != 36; i += 4)
    {
      *(&v34 + i) = *(&v34 + i) * 0.01;
    }

    v21 = 0;
    v37[0] = v34;
    v37[1] = v35;
    v38 = v36;
    do
    {
      v44[0].f32[v21] = sub_245F0F028(v37, v21) + v44[0].f32[v21];
      ++v21;
    }

    while (v21 != 9);
    v50 = v44[0];
    v51 = v44[1];
    v52 = v45;
    v40 = sub_245F0E254(&v50);
    v41 = v22;
    v42 = v23;
    if (sub_245F0E2C0(a1, buf, &v48, &v50, a4))
    {
      sub_245F0E508((a1 + 32), buf, &v40, &v48);
      v27 = ((v12 * v24) + (v10 * v25)) + (v8 * v26);
      v39[0] = v26 - (v8 * v27);
      v39[1] = v25 - (v10 * v27);
      v39[2] = v24 - (v12 * v27);
      *v28.i64 = sub_245F24E08(v44, v39);
      *(a1 + 4) = sub_245F249DC(v44[0].f32, (a1 + 4), v28);
      *(a1 + 8) = v29;
      *(a1 + 12) = v30;
      *(a1 + 16) = v31;
    }
  }

  else
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2B1D4();
    }

    v32 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      v33 = *(a1 + 24);
      *buf = 134218240;
      *&buf[4] = a4;
      *&buf[12] = 2048;
      *&buf[14] = v33;
      _os_log_impl(&dword_245D80000, v32, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRollMEKF]:[ringMeasurementUpdate] Measurement timestamp: %llu us must match the state timestamp: %llu us", buf, 0x16u);
    }
  }
}

float *sub_245F0DEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 3; ++j)
    {
      v8 = sub_245F0F100(a1, i, 0);
      v9 = v8 * sub_245F0F288(a2, 0, j);
      *sub_245F0DA38(a3, i, j) = v9;
      v10 = sub_245F0F100(a1, i, 1uLL);
      v11 = sub_245F0F288(a2, 1uLL, j);
      result = sub_245F0DA38(a3, i, j);
      *result = *result + (v10 * v11);
    }
  }

  return result;
}

float *sub_245F0DFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  for (i = 0; i != 3; ++i)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = v8;
      v10 = sub_245F0F100(a1, i, 0);
      v11 = v10 * sub_245F0F164(a2, 0, v7);
      *sub_245F0F1C4(a3, i, v7) = v11;
      v12 = sub_245F0F100(a1, i, 1uLL);
      v13 = sub_245F0F164(a2, 1uLL, v7);
      result = sub_245F0F1C4(a3, i, v7);
      v8 = 0;
      *result = *result + (v12 * v13);
      v7 = 1;
    }

    while ((v9 & 1) != 0);
  }

  return result;
}

float sub_245F0E0C4(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  v2 = sub_245F0F064(a1, 0);
  *sub_245F0F0A0(v5, 0, 0) = v2;
  v3 = sub_245F0F064(a1, 1uLL);
  *sub_245F0F0A0(v5, 1uLL, 1uLL) = v3;
  return *v5;
}

float *sub_245F0E144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  for (i = 0; i != 3; ++i)
  {
    v5 = sub_245F0F100(a1, i, 0);
    *sub_245F0F228(a2, 0, i) = v5;
    v6 = sub_245F0F100(a1, i, 1uLL);
    result = sub_245F0F228(a2, 1uLL, i);
    *result = v6;
  }

  return result;
}

float *sub_245F0E1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 3; ++j)
    {
      v6 = sub_245F0ECD8(a1, i, j);
      result = sub_245F0DA38(a2, j, i);
      *result = v6;
    }
  }

  return result;
}

float sub_245F0E254(uint64_t a1)
{
  for (i = 0; i != 3; ++i)
  {
    v3 = sub_245F0ECD8(a1, i, i);
    *sub_245F0F2E8(&v5, i) = v3;
  }

  return v5;
}

BOOL sub_245F0E2C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t a5)
{
  v35 = *MEMORY[0x277D85DE8];
  sub_245F0EF8C(a1 + 32, 0, 0, &v24);
  sub_245F0DA9C(a2, &v24, v26);
  sub_245F0E1D8(a2, v23);
  sub_245F0DA9C(v26, v23, buf);
  for (i = 0; i != 9; ++i)
  {
    *&buf[i] = sub_245F0F028(a4, i) + *&buf[i];
  }

  v27[0] = *buf;
  v27[1] = *&buf[4];
  v28 = *v30;
  v22 = 0;
  sub_245F0E838(v27, &v22, v26);
  v10 = 0;
  if (v22 == 1)
  {
    v11 = *(a3 + 2);
    v24 = *a3;
    v25 = v11;
    v23[0] = sub_245F0EB94(&v24);
    v23[1] = v12;
    v23[2] = v13;
    buf[0] = sub_245F0EAC0(v23, v26);
    buf[1] = v14;
    buf[2] = v15;
    v16 = sub_245F0EA44(buf, &v24);
    v10 = v16 < 16.266;
    if (v16 >= 16.266)
    {
      if (qword_27EE374F0 != -1)
      {
        sub_245F2B3A0();
      }

      v17 = qword_27EE374F8;
      if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
      {
        v18 = *a3;
        v19 = *(a3 + 1);
        v20 = *(a3 + 2);
        buf[0] = 134219264;
        *&buf[1] = (a5 * 0.000001);
        LOWORD(buf[3]) = 2048;
        *(&buf[3] + 2) = v16;
        HIWORD(buf[5]) = 2048;
        *&buf[6] = 0x40304425A0000000;
        *v30 = 2048;
        *&v30[2] = v18;
        v31 = 2048;
        v32 = v19;
        v33 = 2048;
        v34 = v20;
        _os_log_impl(&dword_245D80000, v17, OS_LOG_TYPE_DEBUG, "[BarrelRoll]:[CMABarrelRollMEKF]:[checkNIS] Measurement rejected by NIS check.t: %.6f s, NIS score: %.6f,  NIS Threshold: %.6f, r: %.6f %.6f %.6f", buf, 0x3Eu);
      }
    }
  }

  return v10;
}

void sub_245F0E508(float *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v38 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = 0;
  while (2)
  {
    v9 = 0;
    v10 = -1;
    do
    {
      v11 = sub_245F0ECD8(a2, v8, v9);
      v12 = v10;
      if (v9)
      {
        do
        {
          v13 = sub_245F0ECD8(a2, v8, v12);
          v11 = v11 + (v13 * *sub_245F0ED3C((a1 + 3), v12--, v9));
        }

        while (v12 != -1);
      }

      v37[v9] = v11;
      v36[v9] = v11 * *sub_245F0EDA8(a1, v9);
      ++v9;
      ++v10;
    }

    while (v9 != 3);
    v14 = sub_245F0EA08(a3, v8);
    v15 = v14 + (v37[0] * v36[0]);
    if (v15 <= 0.0)
    {
      if (qword_27EE37520 != -1)
      {
        sub_245F2B3C8();
      }

      v31 = qword_27EE37528;
      if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v35 = v8;
LABEL_20:
        _os_log_impl(&dword_245D80000, v31, OS_LOG_TYPE_DEBUG, "%zu: alpha <= 0, matrix ! positive definite", buf, 0xCu);
      }
    }

    else
    {
      v16 = 1.0 / v15;
      *a1 = *a1 * ((1.0 / v15) * sub_245F0EA08(a3, v8));
      for (i = 1; i != 3; ++i)
      {
        v18 = v37[i];
        v19 = v15 + (v18 * v36[i]);
        if (v19 <= 0.0)
        {
          if (qword_27EE37520 != -1)
          {
            sub_245F2B3C8();
          }

          v31 = qword_27EE37528;
          if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v35 = v8;
            goto LABEL_20;
          }

          return;
        }

        v20 = -(v18 * v16);
        v16 = 1.0 / v19;
        v21 = sub_245F0EDA8(a1, i);
        v22 = 0;
        *v21 = (v15 * (1.0 / v19)) * *v21;
        do
        {
          v23 = *sub_245F0ED3C((a1 + 3), v22, i);
          v24 = v36[v22];
          v25 = sub_245F0ED3C((a1 + 3), v22, i);
          v26 = v36[i];
          *v25 = v23 + (v24 * v20);
          v36[v22++] = v24 + (v26 * v23);
        }

        while (i != v22);
        v15 = v19;
      }

      v27 = 0;
      v28 = v16 * sub_245F0EA08(a4, v8);
      do
      {
        v29 = v36[v27];
        v30 = sub_245F0F2E8(&v32, v27);
        *v30 = *v30 + (v28 * v29);
        ++v27;
      }

      while (v27 != 3);
      if (++v8 != 3)
      {
        continue;
      }
    }

    break;
  }
}

float *sub_245F0E838@<X0>(float *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_245F0F324(a1);
  if (fabsf(v6) >= 0.000000001)
  {
    v23 = a3;
    v9 = 0;
    *a2 = 1;
    do
    {
      v10 = 0;
      v11 = v9;
      if (v9)
      {
        v12 = v9 - 1;
      }

      else
      {
        v12 = 2;
      }

      if (++v9 == 3)
      {
        v13 = 0;
      }

      else
      {
        v13 = v9;
      }

      do
      {
        if (v10)
        {
          v14 = v10 - 1;
        }

        else
        {
          v14 = 2;
        }

        v15 = v10 + 1;
        if (v10 == 2)
        {
          v16 = 0;
        }

        else
        {
          v16 = v10 + 1;
        }

        v17 = sub_245F0ECD8(a1, v12, v14);
        v18 = sub_245F0ECD8(a1, v13, v16);
        v19 = sub_245F0ECD8(a1, v13, v14);
        v20 = (v17 * v18) - (v19 * sub_245F0ECD8(a1, v12, v16));
        result = sub_245F0DA38(v27, v10, v11);
        *result = v20;
        ++v10;
      }

      while (v15 != 3);
    }

    while (v9 != 3);
    v21 = 0;
    v24 = v27[0];
    v25 = v27[1];
    v26 = v28;
    do
    {
      *(&v24 + v21) = *(&v24 + v21) / v6;
      v21 += 4;
    }

    while (v21 != 36);
    v22 = v25;
    *v23 = v24;
    *(v23 + 16) = v22;
    *(v23 + 32) = v26;
  }

  else
  {
    v7 = 0;
    *a2 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
    do
    {
      result = sub_245F0DA38(a3, v7, v7);
      *result = 1.0;
      ++v7;
    }

    while (v7 != 3);
  }

  return result;
}

float sub_245F0EA08(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    sub_245F2B3F0();
  }

  return *(a1 + 4 * a2);
}

float sub_245F0EA44(float *a1, float *a2)
{
  v4 = *a1 * *a2;
  for (i = 1; i != 3; ++i)
  {
    v6 = sub_245F0F428(a1, 0, i);
    v4 = v4 + (v6 * sub_245F0F36C(a2, i, 0));
  }

  return v4;
}

float sub_245F0EAC0(float *a1, uint64_t a2)
{
  for (i = 0; i != 3; ++i)
  {
    v5 = *a1;
    v6 = v5 * sub_245F0ECD8(a2, 0, i);
    *sub_245F0F3CC(&v12, 0, i) = v6;
    for (j = 1; j != 3; ++j)
    {
      v8 = sub_245F0F428(a1, 0, j);
      v9 = sub_245F0ECD8(a2, j, i);
      v10 = sub_245F0F3CC(&v12, 0, i);
      *v10 = *v10 + (v8 * v9);
    }
  }

  return v12;
}

float sub_245F0EB94(uint64_t a1)
{
  for (i = 0; i != 3; ++i)
  {
    v3 = sub_245F0F36C(a1, i, 0);
    *sub_245F0F3CC(&v5, 0, i) = v3;
  }

  return v5;
}

os_log_t sub_245F0EC04()
{
  result = os_log_create("com.apple.locationd.Motion", "PencilFusion");
  qword_27EE374F8 = result;
  return result;
}

BOOL sub_245F0EC34(uint64_t a1)
{
  v2 = 0;
  v3 = 1;
LABEL_2:
  v4 = v3;
  v5 = v2 + 1;
  while (1)
  {
    v6 = sub_245F0ECD8(a1, v2, v5);
    v7 = v6 - sub_245F0ECD8(a1, v5, v2);
    if (v7 <= 0.0)
    {
      v7 = -v7;
    }

    if (v7 > 1.0e-16)
    {
      return v7 <= 1.0e-16;
    }

    if (++v5 == 3)
    {
      v3 = 0;
      v2 = 1;
      if (v4)
      {
        goto LABEL_2;
      }

      return v7 <= 1.0e-16;
    }
  }
}

float sub_245F0ECD8(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= 3)
  {
    sub_245F2B49C();
  }

  if (a3 >= 3)
  {
    sub_245F2B548();
  }

  return *(a1 + 4 * (3 * a3 + a2));
}

uint64_t sub_245F0ED3C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3 >= 3)
  {
    sub_245F2B5F4();
  }

  if (a3 <= a2)
  {
    sub_245F2B6A0();
  }

  return a1 + 4 * (a2 + (((a3 - 1) * a3) >> 1));
}

uint64_t sub_245F0EDA8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    sub_245F2B760();
  }

  return a1 + 4 * a2;
}

os_log_t sub_245F0EDE4()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  qword_27EE37528 = result;
  return result;
}

float sub_245F0EE14(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 <= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a2;
  }

  v4 = 0.0;
  if (v3 <= 2)
  {
    do
    {
      v8 = 1.0;
      v9 = 1.0;
      if (a3 != v3)
      {
        v9 = 0.0;
        if (v3 > a3)
        {
          v9 = sub_245F0EEE4(a1 + 12, a3, v3);
        }
      }

      if (a2 != v3)
      {
        v8 = 0.0;
        if (v3 > a2)
        {
          v8 = sub_245F0EEE4(a1 + 12, a2, v3);
        }
      }

      v4 = v4 + ((v8 * sub_245F0EF50(a1, v3++)) * v9);
    }

    while (v3 != 3);
  }

  return v4;
}

float sub_245F0EEE4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3 >= 3)
  {
    sub_245F2B80C();
  }

  if (a3 <= a2)
  {
    sub_245F2B8B8();
  }

  return *(a1 + 4 * (a2 + (((a3 - 1) * a3) >> 1)));
}

float sub_245F0EF50(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    sub_245F2B978();
  }

  return *(a1 + 4 * a2);
}

float *sub_245F0EF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 | a2)
  {
    sub_245F2BA24();
  }

  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 3; ++j)
    {
      v10 = sub_245F0EE14(a1, i + a2, a3 + j);
      result = sub_245F0DA38(a4, i, j);
      *result = v10;
    }
  }

  return result;
}

float sub_245F0F028(uint64_t a1, unint64_t a2)
{
  if (a2 >= 9)
  {
    sub_245F2BAB0();
  }

  return *(a1 + 4 * a2);
}

float sub_245F0F064(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    sub_245F2BB64();
  }

  return *(a1 + 4 * a2);
}

uint64_t sub_245F0F0A0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= 2)
  {
    sub_245F2BC14();
  }

  if (a3 >= 2)
  {
    sub_245F2BCC4();
  }

  return a1 + 4 * (a2 + 2 * a3);
}

float sub_245F0F100(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= 3)
  {
    sub_245F2B49C();
  }

  if (a3 >= 2)
  {
    sub_245F2BD74();
  }

  return *(a1 + 4 * (3 * a3 + a2));
}

float sub_245F0F164(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= 2)
  {
    sub_245F2BE24();
  }

  if (a3 >= 2)
  {
    sub_245F2BD74();
  }

  return *(a1 + 4 * (a2 + 2 * a3));
}

uint64_t sub_245F0F1C4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= 3)
  {
    sub_245F2B1E8();
  }

  if (a3 >= 2)
  {
    sub_245F2BCC4();
  }

  return a1 + 4 * (3 * a3 + a2);
}

uint64_t sub_245F0F228(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= 2)
  {
    sub_245F2BC14();
  }

  if (a3 >= 3)
  {
    sub_245F2B294();
  }

  return a1 + 4 * (a2 + 2 * a3);
}

float sub_245F0F288(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= 2)
  {
    sub_245F2BE24();
  }

  if (a3 >= 3)
  {
    sub_245F2B548();
  }

  return *(a1 + 4 * (a2 + 2 * a3));
}

uint64_t sub_245F0F2E8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    sub_245F2BED4();
  }

  return a1 + 4 * a2;
}

float sub_245F0F36C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    sub_245F2B49C();
    if (!a3)
    {
      return *(a1 + 4 * (3 * a3 + a2));
    }

LABEL_5:
    sub_245F2BF80();
    return *(a1 + 4 * (3 * a3 + a2));
  }

  if (a3)
  {
    goto LABEL_5;
  }

  return *(a1 + 4 * (3 * a3 + a2));
}

uint64_t sub_245F0F3CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2)
  {
    sub_245F2C034();
  }

  if (a3 >= 3)
  {
    sub_245F2B294();
  }

  return a1 + 4 * (a3 + a2);
}

float sub_245F0F428(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2)
  {
    sub_245F2C0E8();
  }

  if (a3 >= 3)
  {
    sub_245F2B548();
  }

  return *(a1 + 4 * (a3 + a2));
}

void sub_245F0F4B4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

BOOL sub_245F0F4E0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_FAULT);
}

void sub_245F0F510(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

float sub_245F0F554(float *a1)
{
  v1 = 1.57079633 - sub_245F0F5DC(a1);
  fmod(v2 + 1.57079633 + 3.14159265, 6.28318531);
  return v1;
}

float sub_245F0F5DC(float *a1)
{
  sub_245F24D1C(a1, v3);
  v1 = asinf(v3[7]);
  atan2f(v3[6], v3[8]);
  atan2f(v3[1], v3[4]);
  return v1;
}

uint64_t sub_245F0F63C(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

float32_t sub_245F0F648(int *a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = v1;
  sub_245F24E08(&v5, &v3);
  return v5.f32[0];
}

void sub_245F0F684(uint64_t result, unint64_t a2)
{
  if (*(result + 16) == 1)
  {
    v13 = v2;
    v14 = v3;
    v6 = *(result + 8);
    if (a2 >= v6)
    {
      v7 = (result + 4);
      if (*(result + 4) < 0.27416)
      {
        v11 = 1065353216;
        v12 = 1065353216;
        if (v6)
        {
          v8 = (a2 - v6) * 0.000001;
          v9 = v8 * 0.0000030462;
        }

        else
        {
          v9 = 0.0;
        }

        v10 = v9;
        sub_245F0F734(v7, &v12, &v11, &v10);
      }

      *(result + 8) = a2;
    }
  }
}

void sub_245F0F734(float *a1, uint64_t a2, uint64_t a3, float *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = *sub_245F101E8(a2, 0, 0);
  v9 = ((v8 * *sub_245F101E8(a2, 0, 0)) * *a1) + 0.0;
  v10 = *sub_245F101E8(a3, 0, 0);
  v11 = v9 + ((v10 * *sub_245F101E8(a3, 0, 0)) * *a4);
  if (v11 <= 0.0)
  {
    if (qword_27EE37520 != -1)
    {
      sub_245F2C19C();
    }

    v12 = qword_27EE37528;
    if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_DEBUG))
    {
      v13 = 134217984;
      v14 = 0;
      _os_log_impl(&dword_245D80000, v12, OS_LOG_TYPE_DEBUG, "D[%zu] <= 0, matrix ! positive definite", &v13, 0xCu);
    }
  }

  else
  {
    *a1 = v11;
  }
}

void sub_245F0F884(uint64_t result, float *a2, float *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = *(result + 8);
  if (a6 >= v8)
  {
    v14 = v6;
    v15 = v7;
    if (v8)
    {
      v10 = (a6 - v8) > 0xF4240;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      sub_245F17158(v13, a2, a3, a4, a5);
      if (*(result + 16))
      {
        sub_245F0F684(result, a6);
        sub_245F0F98C(result, v13, a3);
      }

      else
      {
        sub_245F0F924(result, v13, a6);
      }
    }
  }
}

uint64_t sub_245F0F924(uint64_t result, float *a2, uint64_t a3)
{
  if ((*(result + 16) & 1) == 0)
  {
    v4 = result;
    sub_245F171AC(a2);
    *v4 = v5;
    v6 = 1022986982;
    result = sub_245F0FB34(v4 + 4, &v6);
    *(v4 + 8) = a3;
    *(v4 + 16) = 1;
  }

  return result;
}

void sub_245F0F98C(float *a1, float *a2, _DWORD *a3)
{
  v6 = sub_245F1715C(a2, *a1);
  v8 = v7;
  *v40 = v6;
  *&v40[1] = v7;
  v9 = __sincosf_stret(*a1);
  v39[0] = -v9.__sinval;
  v39[1] = -v9.__cosval;
  v39[2] = v9.__cosval;
  v39[3] = -v9.__sinval;
  v38[0] = sub_245F0FC38(v39, a2);
  v38[1] = v10;
  v11 = a3[1];
  v37[0] = *a3;
  v37[1] = 0;
  v37[2] = 0;
  v37[3] = v11;
  v33.f32[0] = a1[1] + 0.0;
  v34.i32[0] = sub_245F0FE7C(v38, &v33);
  v34.i32[1] = v12;
  v35 = sub_245F0FF08(v38);
  v36 = v13;
  v14 = sub_245F0FD54(&v34, &v35);
  v18 = sub_245F0FCE8(v37, v14, v15, v16, v17);
  *v22.i32 = (v18 * v21.f32[0]) - (v20 * v19);
  if (fabsf(*v22.i32) >= 0.000001)
  {
    v21.f32[1] = -v19;
    v21.f32[2] = -v20;
    v21.f32[3] = v18;
    v34 = vdivq_f32(v21, vdupq_lane_s32(v22, 0));
    v35 = v6;
    v36 = v8;
    v33.i32[0] = sub_245F0FF08(&v35);
    v33.i32[1] = v23;
    v24 = sub_245F0FF88(&v33, &v34);
    if (((v35 * v24) + (v25 * v36)) < 16.266)
    {
      v33 = *a3;
      v26 = sub_245F10040(a1 + 1, v38, &v33, v40);
      if (fabsf(v26) > 0.17453)
      {
        __asm { FMOV            V1.2S, #16.0 }

        v32 = vmul_f32(v33, _D1);
        v26 = sub_245F10040(a1 + 1, v38, &v32, v40);
      }

      *a1 = v26 + *a1;
    }
  }
}

BOOL sub_245F0FB34(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = sub_245F10278(a2, 0, 0);
  *sub_245F10240(a1, 0) = v3;
  v4 = *sub_245F10240(a1, 0);
  if (v4 <= 0.0)
  {
    if (qword_27EE37520 != -1)
    {
      sub_245F2C19C();
    }

    v5 = qword_27EE37528;
    if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134217984;
      v8 = 0;
      _os_log_impl(&dword_245D80000, v5, OS_LOG_TYPE_DEBUG, "D(%zu) <= 0 non-positive definite matrix!", &v7, 0xCu);
    }
  }

  return v4 > 0.0;
}

float sub_245F0FC38(uint64_t a1, float *a2)
{
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = sub_245F0F164(a1, v4, 0) * *a2;
    *sub_245F102D0(&v12, v4) = v7;
    v8 = sub_245F0F164(a1, v4, 1uLL);
    v9 = a2[1];
    v10 = sub_245F102D0(&v12, v4);
    v5 = 0;
    *v10 = *v10 + (v8 * v9);
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  return v12;
}

float sub_245F0FCE8(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v6 = 0;
  *v8 = a2;
  *&v8[1] = a3;
  *&v8[2] = a4;
  *&v8[3] = a5;
  do
  {
    *&v8[v6] = sub_245F1047C(a1, v6) + *&v8[v6];
    ++v6;
  }

  while (v6 != 4);
  return *v8;
}

float sub_245F0FD54(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F1030C(a1, 0, 0);
  v5 = v4 * sub_245F10420(a2, 0, 0);
  *sub_245F0F0A0(&v13, 0, 0) = v5;
  v6 = sub_245F1030C(a1, 0, 0);
  v7 = v6 * sub_245F10420(a2, 0, 1uLL);
  *sub_245F0F0A0(&v13, 0, 1uLL) = v7;
  v8 = sub_245F1030C(a1, 1uLL, 0);
  v9 = v8 * sub_245F10420(a2, 0, 0);
  *sub_245F0F0A0(&v13, 1uLL, 0) = v9;
  v10 = sub_245F1030C(a1, 1uLL, 0);
  v11 = v10 * sub_245F10420(a2, 0, 1uLL);
  *sub_245F0F0A0(&v13, 1uLL, 1uLL) = v11;
  return v13;
}

float sub_245F0FE7C(uint64_t a1, float *a2)
{
  v4 = sub_245F1030C(a1, 0, 0) * *a2;
  *sub_245F10368(&v7, 0, 0) = v4;
  v5 = sub_245F1030C(a1, 1uLL, 0) * *a2;
  *sub_245F10368(&v7, 1uLL, 0) = v5;
  return v7;
}

float sub_245F0FF08(uint64_t a1)
{
  v2 = sub_245F1030C(a1, 0, 0);
  *sub_245F103C4(&v5, 0, 0) = v2;
  v3 = sub_245F1030C(a1, 1uLL, 0);
  *sub_245F103C4(&v5, 0, 1uLL) = v3;
  return v5;
}

float sub_245F0FF88(float *a1, uint64_t a2)
{
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = *a1;
    v8 = v7 * sub_245F0F164(a2, 0, v4);
    *sub_245F103C4(&v13, 0, v4) = v8;
    v9 = a1[1];
    v10 = sub_245F0F164(a2, 1uLL, v4);
    v11 = sub_245F103C4(&v13, 0, v4);
    v5 = 0;
    *v11 = *v11 + (v9 * v10);
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  return v13;
}

float sub_245F10040(float *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v21 = *MEMORY[0x277D85DE8];
  v9 = 0.0;
  v10 = 1;
  while (1)
  {
    v11 = v10;
    v12 = sub_245F1030C(a2, v8, 0);
    v13 = v12 * *a1;
    v14 = sub_245F0F064(a3, v8) + (v12 * v13);
    if (v14 <= 0.0)
    {
      break;
    }

    v15 = 1.0 / v14;
    *a1 = *a1 * ((1.0 / v14) * sub_245F0F064(a3, v8));
    v16 = sub_245F0F064(a4, v8);
    v10 = 0;
    v9 = v9 + ((v15 * v16) * v13);
    v8 = 1;
    if ((v11 & 1) == 0)
    {
      return v9;
    }
  }

  if (qword_27EE37520 != -1)
  {
    sub_245F2C19C();
  }

  v17 = qword_27EE37528;
  v9 = 0.0;
  if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_DEBUG))
  {
    v19 = 134217984;
    v20 = v8;
    _os_log_impl(&dword_245D80000, v17, OS_LOG_TYPE_DEBUG, "%zu: alpha <= 0, matrix ! positive definite", &v19, 0xCu);
  }

  return v9;
}

os_log_t sub_245F101B8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  qword_27EE37528 = result;
  return result;
}

uint64_t sub_245F101E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_245F2C1B0();
    if (!a3)
    {
      return a1 + 4 * (a3 + a2);
    }

LABEL_5:
    sub_245F2C25C();
    return a1 + 4 * (a3 + a2);
  }

  if (a3)
  {
    goto LABEL_5;
  }

  return a1 + 4 * (a3 + a2);
}

uint64_t sub_245F10240(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_245F2C308();
  }

  return a1 + 4 * a2;
}

float sub_245F10278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_245F2C3B4();
    if (!a3)
    {
      return *(a1 + 4 * (a3 + a2));
    }

LABEL_5:
    sub_245F2C460();
    return *(a1 + 4 * (a3 + a2));
  }

  if (a3)
  {
    goto LABEL_5;
  }

  return *(a1 + 4 * (a3 + a2));
}

uint64_t sub_245F102D0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    sub_245F2C50C();
  }

  return a1 + 4 * a2;
}

float sub_245F1030C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    sub_245F2C5B8();
    if (!a3)
    {
      return *(a1 + 4 * (a2 + 2 * a3));
    }

LABEL_5:
    sub_245F2C460();
    return *(a1 + 4 * (a2 + 2 * a3));
  }

  if (a3)
  {
    goto LABEL_5;
  }

  return *(a1 + 4 * (a2 + 2 * a3));
}

uint64_t sub_245F10368(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    sub_245F2C664();
    if (!a3)
    {
      return a1 + 4 * (a2 + 2 * a3);
    }

LABEL_5:
    sub_245F2C25C();
    return a1 + 4 * (a2 + 2 * a3);
  }

  if (a3)
  {
    goto LABEL_5;
  }

  return a1 + 4 * (a2 + 2 * a3);
}

uint64_t sub_245F103C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2)
  {
    sub_245F2C1B0();
  }

  if (a3 >= 2)
  {
    sub_245F2C710();
  }

  return a1 + 4 * (a3 + a2);
}

float sub_245F10420(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2)
  {
    sub_245F2C3B4();
  }

  if (a3 >= 2)
  {
    sub_245F2C7BC();
  }

  return *(a1 + 4 * (a3 + a2));
}

float sub_245F1047C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
    sub_245F2C868(a2);
  }

  return *(a1 + 4 * a2);
}

uint64_t sub_245F104F0(uint64_t a1)
{
  *a1 = 0;
  sub_245F12578(a1 + 8);
  *(a1 + 9920) = 0;
  *(a1 + 9904) = 0u;
  *(a1 + 9888) = 0u;
  *(a1 + 9928) = 0u;
  *(a1 + 9944) = 0u;
  *(a1 + 9960) = 0xFF7FFFFF7F7FFFFFLL;
  *(a1 + 9968) = 0;
  *(a1 + 9976) = 0xFF7FFFFF7F7FFFFFLL;
  *(a1 + 9984) = 0;
  *(a1 + 10000) = 0;
  *(a1 + 9992) = 0xFF7FFFFF7F7FFFFFLL;
  *(a1 + 10008) = 0u;
  *(a1 + 10024) = 0;
  sub_245F12964(a1 + 10032);
  if (qword_27EE374F0 != -1)
  {
    sub_245F2C928();
  }

  v2 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_245D80000, v2, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRollService] Created CMABarrelRollService.", v4, 2u);
  }

  return a1;
}

void sub_245F105F4(uint64_t a1)
{
  sub_245F18A54((a1 + 8));
  *(a1 + 9920) = 0;
  *(a1 + 9888) = 0;
  *(a1 + 9904) = 0;
  *(a1 + 9896) = 0;
  *(a1 + 9928) = 0u;
  *(a1 + 9944) = 0u;
  *(a1 + 9960) = 0xFF7FFFFF7F7FFFFFLL;
  *(a1 + 9968) = 0;
  *(a1 + 9976) = 0xFF7FFFFF7F7FFFFFLL;
  *(a1 + 9984) = 0;
  *(a1 + 9992) = 0xFF7FFFFF7F7FFFFFLL;
  if (qword_27EE374F0 != -1)
  {
    sub_245F2C928();
  }

  v2 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_245D80000, v2, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRollService]:[reset] Reset CMABarrelRollService.", v3, 2u);
  }
}

void sub_245F106BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, float a5, float a6)
{
  v60 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7 = a4;
    v8 = a3;
    if (*(a1 + 9920) != 1)
    {
LABEL_9:
      v15 = sub_245F18F94((a1 + 8), a2, v8, v7, a5, a6);
      if (!*(a1 + 9936))
      {
        if (qword_27EE374F0 != -1)
        {
          sub_245F2C93C();
        }

        v16 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
        {
          sub_245F12BC8(v45, (a1 + 5568));
          v17 = sub_245F10E5C(v45);
          v18 = *&v17;
          sub_245F12BC8(v44, (a1 + 4256));
          v19 = sub_245F10E5C(v44);
          v20 = *(a1 + 4354);
          v21 = *(a1 + 3042);
          *buf = 134351104;
          *v47 = a2;
          *&v47[8] = 1026;
          *&v47[10] = v8;
          *&v47[14] = 2050;
          *&v47[16] = (a5 * 57.296);
          v48 = 2050;
          v49 = (a6 * 57.296);
          v50 = 2050;
          v51 = (v18 * 57.296);
          v52 = 2050;
          v53 = (*&v19 * 57.296);
          v54 = 2050;
          v55 = v20;
          v56 = 2050;
          v57 = v21;
          v58 = 1026;
          v59 = v15;
          _os_log_impl(&dword_245D80000, v16, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRollService]:[updateRingSensor] Received first ring sensor input, timestamp: %{public}llu us, touching: %{public}d, altitude: %{public}.3f deg, azimuth: %{public}.3f deg, wAuxNorm: %{public}.3f dps, wSrcNorm: %{public}.3f dps, numAuxDM6:%{public}zu, numSrcDM6:%{public}zu, feedRing: %{public}d", buf, 0x54u);
          sub_245F12B1C(v44);
          sub_245F12B1C(v45);
        }

        *(a1 + 9936) = a2;
      }

      if (*(a1 + 9944) == 0 && v15)
      {
        if (qword_27EE374F0 != -1)
        {
          sub_245F2C93C();
        }

        v22 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
        {
          sub_245F12BC8(v43, (a1 + 5568));
          v23 = sub_245F10E5C(v43);
          v24 = *&v23;
          sub_245F12BC8(v42, (a1 + 4256));
          v25 = sub_245F10E5C(v42);
          v26 = *(a1 + 4354);
          v27 = *(a1 + 3042);
          *buf = 134351104;
          *v47 = a2;
          *&v47[8] = 1026;
          *&v47[10] = v8;
          *&v47[14] = 2050;
          *&v47[16] = (a5 * 57.296);
          v48 = 2050;
          v49 = (a6 * 57.296);
          v50 = 2050;
          v51 = (v24 * 57.296);
          v52 = 2050;
          v53 = (*&v25 * 57.296);
          v54 = 2050;
          v55 = v26;
          v56 = 2050;
          v57 = v27;
          v58 = 1026;
          v59 = 1;
          _os_log_impl(&dword_245D80000, v22, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRollService]:[updateRingSensor] Consumed first ring sensor input, timestamp: %{public}llu us, touching: %{public}d, altitude: %{public}.3f deg, azimuth: %{public}.3f deg, wAuxNorm: %{public}.3f dps, wSrcNorm: %{public}.3f dps, numAuxDM6:%{public}zu, numSrcDM6:%{public}zu, feedRing: %{public}d", buf, 0x54u);
          sub_245F12B1C(v42);
          sub_245F12B1C(v43);
        }

        *(a1 + 9944) = a2;
      }

      v28 = *(a1 + 9888);
      if (v28)
      {
        v29 = a2 - v28;
        v30 = v29 * 0.000001;
        ++*(a1 + 9952);
        *(a1 + 9956) = *(a1 + 9956) + v30;
        if (*(a1 + 9960) > v30)
        {
          *(a1 + 9960) = v30;
        }

        if (*(a1 + 9964) < v30)
        {
          *(a1 + 9964) = v30;
        }

        v31 = v29;
        ++*(a1 + 10036);
        *(a1 + 10040) = *(a1 + 10040) + v29;
        if (*(a1 + 10044) > v29)
        {
          *(a1 + 10044) = v31;
        }

        if (*(a1 + 10048) < v31)
        {
          *(a1 + 10048) = v31;
        }

        v32 = v8 ^ 1u;
        *(a1 + 10032) = v32;
        v33 = a1 + 16 * v32;
        v34 = a6 * 57.296;
        ++*(v33 + 10100);
        *(v33 + 10104) = (a6 * 57.296) + *(v33 + 10104);
        if (*(v33 + 10108) > (a6 * 57.296))
        {
          *(v33 + 10108) = v34;
        }

        if (*(v33 + 10112) < v34)
        {
          *(v33 + 10112) = v34;
        }

        v35 = a1 + 16 * v32;
        v36 = a5 * 57.296;
        ++*(v35 + 10148);
        *(v35 + 10152) = (a5 * 57.296) + *(v35 + 10152);
        if (*(v35 + 10156) > (a5 * 57.296))
        {
          *(v35 + 10156) = v36;
        }

        if (*(v35 + 10160) < v36)
        {
          *(v35 + 10160) = v36;
        }
      }

      *(a1 + 9888) = a2;
      v37 = a2 - *(a1 + 9896);
      if (v37 <= 0.0)
      {
        v37 = 1.0;
      }

      ++*(a1 + 10084);
      *(a1 + 10088) = *(a1 + 10088) + v37;
      if (*(a1 + 10092) > v37)
      {
        *(a1 + 10092) = v37;
      }

      if (*(a1 + 10096) < v37)
      {
        *(a1 + 10096) = v37;
      }

      sub_245F10EE0(a1, a2);
      return;
    }

    v12 = *(a1 + 9888);
    if (a2 > v12)
    {
      v13 = a2 - v12;
      if ((a2 - v12) >= 0x11E1A301)
      {
        sub_245F105F4(a1);
        sub_245F10D68(a1, 2, a2);
        if (qword_27EE374F0 != -1)
        {
          sub_245F2C928();
        }

        v14 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240448;
          *v47 = v13;
          *&v47[4] = 2050;
          *&v47[6] = a2;
          _os_log_impl(&dword_245D80000, v14, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRollService]:[updateRingSensor] Reset due to large ring sensor timestamp gap. Time gap:%{public}u us, timestamp: %{public}llu us.", buf, 0x12u);
        }
      }

      goto LABEL_9;
    }

    if (qword_27EE374F0 != -1)
    {
      sub_245F2C928();
    }

    v40 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      v41 = *(a1 + 9888);
      *buf = 134349312;
      *v47 = a2;
      *&v47[8] = 2050;
      *&v47[10] = v41;
      _os_log_impl(&dword_245D80000, v40, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRollService]:[updateRingSensor] Ring sensor timestamps must be monotonically increasing. Input: %{public}llu us, previous: %{public}llu us.", buf, 0x16u);
    }
  }

  else
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2C928();
    }

    v38 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      v39 = *(a1 + 9888);
      *buf = 134349312;
      *v47 = 0;
      *&v47[8] = 2050;
      *&v47[10] = v39;
      _os_log_impl(&dword_245D80000, v38, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRollService]:[updateRingSensor] Reset due to unexpected zero ring sensor timestamp. Input: %{public}llu us, previous: %{public}llu us.", buf, 0x16u);
    }

    sub_245F105F4(a1);
    sub_245F10D68(a1, 5, 0);
  }
}

void sub_245F10D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_245F12B1C(va);
  _Unwind_Resume(a1);
}

void sub_245F10D68(int *a1, int a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*a1 != a2)
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2C928();
    }

    v6 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *a1;
      v8[0] = 67240704;
      v8[1] = v7;
      v9 = 1026;
      v10 = a2;
      v11 = 2050;
      v12 = a3;
      _os_log_impl(&dword_245D80000, v6, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRollService]:[setTrackingStatus] Status changed from: %{public}d to %{public}d, timestamp: %{public}llu us .", v8, 0x18u);
    }

    *a1 = a2;
  }
}

double sub_245F10E5C(void *a1)
{
  v1 = a1[5];
  if (!v1)
  {
    return 0.0;
  }

  v2 = a1[1];
  result = 0.0;
  if (a1[2] != v2)
  {
    v4 = a1[4];
    v5 = (v2 + 8 * (v4 >> 10));
    v6 = *v5;
    v7 = &(*v5)[v4 & 0x3FF];
    v8 = *(v2 + (((v4 + v1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v4 + v1) & 0x3FF);
    while (v7 != v8)
    {
      v9 = *v7++;
      v10 = v9;
      if (v7 - v6 == 4096)
      {
        v11 = v5[1];
        ++v5;
        v6 = v11;
        v7 = v11;
      }

      *&result = *&result + v10;
    }
  }

  *&result = *&result / v1;
  return result;
}

void sub_245F10EE0(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 6184);
  if ((*(a1 + 9920) & 1) == 0 && *v2 == 1)
  {
    *(a1 + 9920) = 1;
    *(a1 + 9928) = a2;
    if (qword_27EE374F0 != -1)
    {
      sub_245F2C928();
    }

    v4 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 9928);
      v6 = v2[744];
      v7 = *(a1 + 10);
      v8 = *(a1 + 4354);
      v9 = *(a1 + 3042);
      sub_245F12BC8(v18, (a1 + 5568));
      v10 = sub_245F10E5C(v18);
      v11 = *&v10;
      sub_245F12BC8(v17, (a1 + 4256));
      v12 = sub_245F10E5C(v17);
      *buf = 134350592;
      v20 = v5;
      v21 = 1026;
      v22 = v6;
      v23 = 2050;
      v24 = v7;
      v25 = 2050;
      v26 = v8;
      v27 = 2050;
      v28 = v9;
      v29 = 2050;
      v30 = (v11 * 57.296);
      v31 = 2050;
      v32 = (*&v12 * 57.296);
      _os_log_impl(&dword_245D80000, v4, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRollService]:[checkSessionStarted] BarrelRoll session start timestamp: %{public}llu microseconds, initialized during no-trust: %{public}d, numRingSensor: %{public}zu, numAuxDM6: %{public}zu, numSrcDM6: %{public}zu, wAuxNorm: %{public}f dps, wSrcNorm: %{public}f dps", buf, 0x44u);
      sub_245F12B1C(v17);
      sub_245F12B1C(v18);
      if (qword_27EE374F0 != -1)
      {
        sub_245F2C93C();
      }
    }

    v13 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 9928) - *(a1 + 9944);
      *buf = 134349056;
      v20 = v14;
      _os_log_impl(&dword_245D80000, v13, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRollService]:[checkSessionStarted] Time elapsed between first consumed ring sensor and session start: %{public}llu microseconds.", buf, 0xCu);
      if (qword_27EE374F0 != -1)
      {
        sub_245F2C93C();
      }
    }

    v15 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 9944) - *(a1 + 9936);
      *buf = 134349056;
      v20 = v16;
      _os_log_impl(&dword_245D80000, v15, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRollService]:[checkSessionStarted] Time elapsed between first consumed ring sensor and first ring sensor: %{public}llu microseconds.", buf, 0xCu);
    }
  }
}

void sub_245F11160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_245F12B1C(va);
  _Unwind_Resume(a1);
}

void sub_245F1117C(uint64_t a1, unint64_t a2, float *a3, float32x4_t a4, float a5, float a6)
{
  v48 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v9 = a4.f32[0];
    if (*(a1 + 9920) != 1)
    {
LABEL_9:
      v34 = sub_245F11610(a3, a4);
      v35 = v15;
      v36 = v16;
      v37 = v17;
      *buf = sub_245F24AA4(&v34, v18);
      *v39 = v19;
      *&v39[4] = v20;
      *&v39[8] = v21;
      sub_245F1A54C(a1 + 8, a2, buf, v9, a5);
      v22 = *(a1 + 9896);
      if (v22)
      {
        goto LABEL_15;
      }

      if (qword_27EE374F0 != -1)
      {
        sub_245F2C93C();
      }

      v23 = qword_27EE374F8;
      if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134350336;
        *v39 = a2;
        *&v39[8] = 2050;
        *&v39[10] = (v9 * 57.296);
        v40 = 2050;
        v41 = v34;
        v42 = 2050;
        v43 = v35;
        v44 = 2050;
        v45 = v36;
        v46 = 2050;
        v47 = v37;
        _os_log_impl(&dword_245D80000, v23, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRollService]:[updateAuxDM] Received first aux DM6 input, timestamp: %{public}llu us, wNorm: %{public}.3f dps, q_p_ip: %{public}.3f %{public}.3f %{public}.3f %{public}.3f", buf, 0x3Eu);
      }

      v22 = *(a1 + 9896);
      if (v22)
      {
LABEL_15:
        v24 = a2 - v22;
        v25 = v24 * 0.000001;
        ++*(a1 + 9984);
        *(a1 + 9988) = *(a1 + 9988) + v25;
        if (*(a1 + 9992) > v25)
        {
          *(a1 + 9992) = v25;
        }

        if (*(a1 + 9996) < v25)
        {
          *(a1 + 9996) = v25;
        }

        v26 = v24;
        ++*(a1 + 10068);
        *(a1 + 10072) = *(a1 + 10072) + v24;
        if (*(a1 + 10076) > v24)
        {
          *(a1 + 10076) = v26;
        }

        if (*(a1 + 10080) < v26)
        {
          *(a1 + 10080) = v26;
        }

        v27 = a6 * 57.296;
        if ((a6 * 57.296) > 0.1)
        {
          v28 = a1 + 16 * *(a1 + 10032);
          ++*(v28 + 10244);
          *(v28 + 10248) = v27 + *(v28 + 10248);
          if (*(v28 + 10252) > v27)
          {
            *(v28 + 10252) = v27;
          }

          if (*(v28 + 10256) < v27)
          {
            *(v28 + 10256) = v27;
          }
        }

        if (a5 > 0.001)
        {
          v29 = a1 + 16 * *(a1 + 10032);
          ++*(v29 + 10292);
          *(v29 + 10296) = *(v29 + 10296) + a5;
          if (*(v29 + 10300) > a5)
          {
            *(v29 + 10300) = a5;
          }

          if (*(v29 + 10304) < a5)
          {
            *(v29 + 10304) = a5;
          }
        }
      }

      *(a1 + 9896) = a2;
      return;
    }

    v12 = *(a1 + 9896);
    if (a2 > v12)
    {
      v13 = a2 - v12;
      if ((a2 - v12) >= 0x186A1)
      {
        sub_245F105F4(a1);
        sub_245F10D68(a1, 3, a2);
        if (qword_27EE374F0 != -1)
        {
          sub_245F2C928();
        }

        v14 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240448;
          *v39 = v13;
          *&v39[4] = 2050;
          *&v39[6] = a2;
          _os_log_impl(&dword_245D80000, v14, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRollService]:[updateAuxDM] Reset due to large aux DM6 timestamp gap. Time gap:%{public}u us, timestamp: %{public}llu us.", buf, 0x12u);
        }
      }

      goto LABEL_9;
    }

    if (qword_27EE374F0 != -1)
    {
      sub_245F2C928();
    }

    v32 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      v33 = *(a1 + 9896);
      *buf = 134349312;
      *v39 = a2;
      *&v39[8] = 2050;
      *&v39[10] = v33;
      _os_log_impl(&dword_245D80000, v32, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRollService]:[updateAuxDM] Aux DM6 timestamps must be monotonically increasing. Input: %{public}llu us, previous: %{public}llu us.", buf, 0x16u);
    }
  }

  else
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2C928();
    }

    v30 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 9896);
      *buf = 134349312;
      *v39 = 0;
      *&v39[8] = 2050;
      *&v39[10] = v31;
      _os_log_impl(&dword_245D80000, v30, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRollService]:[updateAuxDM] Reset due to unexpected zero Aux DM6 timestamp. Input: %{public}llu us, previous: %{public}llu us.", buf, 0x16u);
    }

    sub_245F105F4(a1);
    sub_245F10D68(a1, 6, 0);
  }
}

float32_t sub_245F11610(float *a1, float32x4_t a2)
{
  if ((atomic_load_explicit(byte_27EE376D0, memory_order_acquire) & 1) == 0)
  {
    sub_245F2C964();
  }

  if ((atomic_load_explicit(byte_27EE376D8, memory_order_acquire) & 1) == 0)
  {
    sub_245F2C9C4();
  }

  if ((atomic_load_explicit(&qword_27EE376C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE376C8))
  {
    sub_245F24E08(&v9, &dword_27EE376EC);
    *v4.i64 = sub_245F24E08(&v8, &qword_27EE376E0);
    dword_27EE376B8 = sub_245F249DC(v9.f32, v8.f32, v4);
    *algn_27EE376BC = v5;
    dword_27EE376C0 = v6;
    unk_27EE376C4 = v7;
    __cxa_guard_release(&qword_27EE376C8);
  }

  return sub_245F249DC(&dword_27EE376B8, a1, a2);
}

void sub_245F11700(uint64_t a1, unint64_t a2, float *a3, float a4, float a5)
{
  v51 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2C928();
    }

    v29 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      v30 = *(a1 + 9904);
      v42 = 134349312;
      *v43 = 0;
      *&v43[8] = 2050;
      *&v43[10] = v30;
      _os_log_impl(&dword_245D80000, v29, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRollService]:[updateSrcDM] Reset due to unexpected zero Src DM6 timestamp. Input: %{public}llu us, previous: %{public}llu us.", &v42, 0x16u);
    }

    sub_245F105F4(a1);
    v31 = a1;
    v32 = 7;
    v33 = 0;
    goto LABEL_49;
  }

  v7 = *(a1 + 9904);
  if (a2 > v7)
  {
    v11 = (a1 + 6184);
    if (v7)
    {
      v12 = a2 - v7;
    }

    else
    {
      v12 = 0;
    }

    if (v12 >= 0x186A1)
    {
      sub_245F105F4(a1);
      sub_245F10D68(a1, 4, a2);
      if (qword_27EE374F0 != -1)
      {
        sub_245F2C928();
      }

      v13 = qword_27EE374F8;
      if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
      {
        v42 = 67240448;
        *v43 = v12;
        *&v43[4] = 2050;
        *&v43[6] = a2;
        _os_log_impl(&dword_245D80000, v13, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRollSession]:[updateSrcDM] Reset due to large Src DM6 timestamp gap. Time gap:%{public}u us, timestamp: %{public}llu us.", &v42, 0x12u);
      }
    }

    if (*(a1 + 9920) != 1)
    {
      goto LABEL_16;
    }

    v14 = *(a1 + 9896);
    if (a2 > v14 && (v15 = a2 - v14, (a2 - v14) >= 0x30D41))
    {
      if (qword_27EE374F0 != -1)
      {
        sub_245F2C93C();
      }

      v36 = qword_27EE374F8;
      if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
      {
        v37 = *(a1 + 9896);
        v38 = *(a1 + 9888);
        v42 = 134350080;
        *v43 = a2;
        *&v43[8] = 2050;
        *&v43[10] = v37;
        v44 = 2050;
        v45 = v38;
        v46 = 1026;
        *v47 = v15;
        *&v47[4] = 1026;
        *&v47[6] = 200000;
        _os_log_impl(&dword_245D80000, v36, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRollService]:[updateSrcDM] Reset due to large gap between the latest source and aux sample. Aux is too far in the past, likely due to a gap.Latest src timestamp: %{public}llu us, latest aux timestamp: %{public}llu us, latest ring sensor timestamp: %{public}llu us, src-to-aux-delta:%{public}u us, threshold:%{public}u us.", &v42, 0x2Cu);
      }

      sub_245F105F4(a1);
      v31 = a1;
      v32 = 3;
    }

    else
    {
      v16 = *(a1 + 9888);
      if (a2 <= v16 || (v17 = a2 - v16, (a2 - v16) < 0x11E1A301))
      {
LABEL_16:
        sub_245F1B12C((a1 + 8), a2, a3, a4, a5);
        if (!*(a1 + 9904))
        {
          if (qword_27EE374F0 != -1)
          {
            sub_245F2C93C();
          }

          v18 = qword_27EE374F8;
          if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *a3;
            v20 = a3[1];
            v21 = a3[2];
            v22 = a3[3];
            v42 = 134350336;
            *v43 = a2;
            *&v43[8] = 2050;
            *&v43[10] = (a4 * 57.296);
            v44 = 2050;
            v45 = v19;
            v46 = 2050;
            *v47 = v20;
            *&v47[8] = 2050;
            v48 = v21;
            v49 = 2050;
            v50 = v22;
            _os_log_impl(&dword_245D80000, v18, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRollService]:[updateSrcDM] Received first src DM6 input, timestamp: %{public}llu us, wNorm: %{public}.3f dps, q_s_is: %{public}.3f %{public}.3f %{public}.3f %{public}.3f", &v42, 0x3Eu);
          }
        }

        if (*(a1 + 9888) + 16666 < a2)
        {
          *(a1 + 10032) = 2;
        }

        v23 = *(a1 + 9904);
        if (v23)
        {
          v24 = a2 - v23;
          v25 = v24 * 0.000001;
          ++*(a1 + 9968);
          *(a1 + 9972) = *(a1 + 9972) + v25;
          if (*(a1 + 9976) > v25)
          {
            *(a1 + 9976) = v25;
          }

          if (*(a1 + 9980) < v25)
          {
            *(a1 + 9980) = v25;
          }

          v26 = v24;
          ++*(a1 + 10052);
          *(a1 + 10056) = *(a1 + 10056) + v24;
          if (*(a1 + 10060) > v24)
          {
            *(a1 + 10060) = v26;
          }

          if (*(a1 + 10064) < v26)
          {
            *(a1 + 10064) = v26;
          }

          v27 = a4 * 57.296;
          if ((a4 * 57.296) > 0.1)
          {
            v28 = a1 + 16 * *(a1 + 10032);
            ++*(v28 + 10196);
            *(v28 + 10200) = v27 + *(v28 + 10200);
            if (*(v28 + 10204) > v27)
            {
              *(v28 + 10204) = v27;
            }

            if (*(v28 + 10208) < v27)
            {
              *(v28 + 10208) = v27;
            }
          }
        }

        *(a1 + 9904) = a2;
        sub_245F10EE0(a1, a2);
        if (*a1 != 1 && *v11 == 1)
        {
          sub_245F10D68(a1, 1, a2);
        }

        if (*(a1 + 10000) == 1 && !*(a1 + 10008))
        {
          *(a1 + 10008) = a2;
        }

        sub_245F11D30(a1, a2);
        return;
      }

      if (qword_27EE374F0 != -1)
      {
        sub_245F2C93C();
      }

      v39 = qword_27EE374F8;
      if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
      {
        v40 = *(a1 + 9888);
        v41 = *(a1 + 9896);
        v42 = 134350080;
        *v43 = a2;
        *&v43[8] = 2050;
        *&v43[10] = v40;
        v44 = 2050;
        v45 = v41;
        v46 = 1026;
        *v47 = v17;
        *&v47[4] = 1026;
        *&v47[6] = 300000000;
        _os_log_impl(&dword_245D80000, v39, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRollService]:[updateSrcDM] Reset due to large gap between the latest source and ring sample. Ring is too far in the past, likely due to pencil being away from screen.Latest src timestamp: %{public}llu us, latest ring sensor timestamp: %{public}llu us, latest aux timestamp: %{public}llu us, src-to-ring-delta:%{public}u us, threshold:%{public}u us.", &v42, 0x2Cu);
      }

      sub_245F105F4(a1);
      v31 = a1;
      v32 = 2;
    }

    v33 = a2;
LABEL_49:
    sub_245F10D68(v31, v32, v33);
    return;
  }

  if (qword_27EE374F0 != -1)
  {
    sub_245F2C928();
  }

  v34 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
  {
    v35 = *(a1 + 9904);
    v42 = 134349312;
    *v43 = a2;
    *&v43[8] = 2050;
    *&v43[10] = v35;
    _os_log_impl(&dword_245D80000, v34, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRollService]:[updateSrcDM] Src DM6 timestamps must be monotonically increasing. Input: %{public}llu us, previous: %{public}llu us.", &v42, 0x16u);
  }
}
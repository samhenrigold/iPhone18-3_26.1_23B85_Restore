uint64_t sub_19B5A6458(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 188);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 188);
    if ((v4 & 0x800000) == 0)
    {
LABEL_3:
      if ((v4 & 0x1000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_54;
    }
  }

  else if ((v4 & 0x800000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 188);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_4:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 188);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 188);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 188);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 188);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 188);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 132));
  v4 = *(v3 + 188);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 188);
  if ((v4 & 0x200000) == 0)
  {
LABEL_11:
    if ((v4 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 188);
  if ((v4 & 2) == 0)
  {
LABEL_12:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 188);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_13:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = PB::Writer::write(this, *(v3 + 116));
  v4 = *(v3 + 188);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 188);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = PB::Writer::write(this, *(v3 + 124));
  v4 = *(v3 + 188);
  if ((v4 & 0x40) == 0)
  {
LABEL_16:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 188);
  if ((v4 & 0x80) == 0)
  {
LABEL_17:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 188);
  if ((v4 & 0x100) == 0)
  {
LABEL_18:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 188);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_19:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_70;
  }

LABEL_69:
  result = PB::Writer::write(this, *(v3 + 136));
  v4 = *(v3 + 188);
  if ((v4 & 0x400) == 0)
  {
LABEL_20:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_71;
  }

LABEL_70:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 188);
  if ((v4 & 0x400000) == 0)
  {
LABEL_21:
    if ((v4 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_72;
  }

LABEL_71:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 188);
  if ((v4 & 4) == 0)
  {
LABEL_22:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_73;
  }

LABEL_72:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 188);
  if ((v4 & 0x400000000) == 0)
  {
LABEL_23:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_74;
  }

LABEL_73:
  result = PB::Writer::write(this, *(v3 + 148));
  v4 = *(v3 + 188);
  if ((v4 & 0x4000) == 0)
  {
LABEL_24:
    if ((v4 & 0x2000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_75;
  }

LABEL_74:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 188);
  if ((v4 & 0x2000000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_76;
  }

LABEL_75:
  result = PB::Writer::write(this, *(v3 + 160));
  v4 = *(v3 + 188);
  if ((v4 & 0x20000) == 0)
  {
LABEL_26:
    if ((v4 & 0x800000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_77;
  }

LABEL_76:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 188);
  if ((v4 & 0x800000000) == 0)
  {
LABEL_27:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_78;
  }

LABEL_77:
  result = PB::Writer::write(this, *(v3 + 152));
  v4 = *(v3 + 188);
  if ((v4 & 0x8000) == 0)
  {
LABEL_28:
    if ((v4 & 0x4000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_79;
  }

LABEL_78:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 188);
  if ((v4 & 0x4000000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_80;
  }

LABEL_79:
  result = PB::Writer::write(this, *(v3 + 164));
  v4 = *(v3 + 188);
  if ((v4 & 0x40000) == 0)
  {
LABEL_30:
    if ((v4 & 0x1000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_81;
  }

LABEL_80:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 188);
  if ((v4 & 0x1000000000) == 0)
  {
LABEL_31:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_82;
  }

LABEL_81:
  result = PB::Writer::write(this, *(v3 + 156));
  v4 = *(v3 + 188);
  if ((v4 & 0x10000) == 0)
  {
LABEL_32:
    if ((v4 & 0x8000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_83;
  }

LABEL_82:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 188);
  if ((v4 & 0x8000000000) == 0)
  {
LABEL_33:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_84;
  }

LABEL_83:
  result = PB::Writer::write(this, *(v3 + 168));
  v4 = *(v3 + 188);
  if ((v4 & 0x80000) == 0)
  {
LABEL_34:
    if ((v4 & 0x200000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_85;
  }

LABEL_84:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 188);
  if ((v4 & 0x200000000000) == 0)
  {
LABEL_35:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_86;
  }

LABEL_85:
  result = PB::Writer::write(this);
  v4 = *(v3 + 188);
  if ((v4 & 0x800) == 0)
  {
LABEL_36:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_87;
  }

LABEL_86:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 188);
  if ((v4 & 0x1000) == 0)
  {
LABEL_37:
    if ((v4 & 0x100000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_88;
  }

LABEL_87:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 188);
  if ((v4 & 0x100000000000) == 0)
  {
LABEL_38:
    if ((v4 & 0x400000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_89;
  }

LABEL_88:
  result = PB::Writer::write(this);
  v4 = *(v3 + 188);
  if ((v4 & 0x400000000000) == 0)
  {
LABEL_39:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_90;
  }

LABEL_89:
  result = PB::Writer::write(this);
  v4 = *(v3 + 188);
  if ((v4 & 0x2000) == 0)
  {
LABEL_40:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_91;
  }

LABEL_90:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 188);
  if ((v4 & 0x100000000) == 0)
  {
LABEL_41:
    if ((v4 & 0x200000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_92;
  }

LABEL_91:
  result = PB::Writer::write(this, *(v3 + 140));
  v4 = *(v3 + 188);
  if ((v4 & 0x200000000) == 0)
  {
LABEL_42:
    if ((v4 & 0x1000000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_93;
  }

LABEL_92:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 188);
  if ((v4 & 0x1000000000000) == 0)
  {
LABEL_43:
    if ((v4 & 0x80000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_94;
  }

LABEL_93:
  result = PB::Writer::write(this);
  v4 = *(v3 + 188);
  if ((v4 & 0x80000000000) == 0)
  {
LABEL_44:
    if ((v4 & 0x40000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_95;
  }

LABEL_94:
  result = PB::Writer::write(this);
  v4 = *(v3 + 188);
  if ((v4 & 0x40000000000) == 0)
  {
LABEL_45:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_96;
  }

LABEL_95:
  result = PB::Writer::write(this);
  v4 = *(v3 + 188);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_46:
    if ((v4 & 0x20000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_97;
  }

LABEL_96:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 188);
  if ((v4 & 0x20000000000) == 0)
  {
LABEL_47:
    if ((v4 & 0x10000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_98;
  }

LABEL_97:
  result = PB::Writer::write(this, *(v3 + 176));
  v4 = *(v3 + 188);
  if ((v4 & 0x10000000000) == 0)
  {
LABEL_48:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_99;
  }

LABEL_98:
  result = PB::Writer::write(this, *(v3 + 172));
  v4 = *(v3 + 188);
  if ((v4 & 0x100000) == 0)
  {
LABEL_49:
    if ((v4 & 0x800000000000) == 0)
    {
      goto LABEL_50;
    }

LABEL_100:
    result = PB::Writer::write(this);
    if ((*(v3 + 188) & 0x2000000000000) == 0)
    {
      return result;
    }

    goto LABEL_101;
  }

LABEL_99:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 188);
  if ((v4 & 0x800000000000) != 0)
  {
    goto LABEL_100;
  }

LABEL_50:
  if ((v4 & 0x2000000000000) == 0)
  {
    return result;
  }

LABEL_101:

  return PB::Writer::write(this);
}

uint64_t sub_19B5A6A08(uint64_t result)
{
  *result = &unk_1F0E2BC60;
  *(result + 128) = 0;
  return result;
}

void sub_19B5A6A30(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5A6A68(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 128);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(this, "auxAvgOmegaAroundGrav2s", *(a1 + 32));
    v5 = *(a1 + 128);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "auxAvgOmegaAroundGravLong", *(a1 + 36));
  v5 = *(a1 + 128);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "auxAvgOmegaAroundGravShort", *(a1 + 40));
  v5 = *(a1 + 128);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "auxAvgOmegaLong", *(a1 + 44));
  v5 = *(a1 + 128);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "auxAvgOmegaShort", *(a1 + 48));
  v5 = *(a1 + 128);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "auxHistoricalOmegaStdMax", *(a1 + 52));
  v5 = *(a1 + 128);
  if ((v5 & 0x200) == 0)
  {
LABEL_8:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "auxOverSrcYawDiffSum", *(a1 + 56));
  v5 = *(a1 + 128);
  if ((v5 & 0x400) == 0)
  {
LABEL_9:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "dotRotGrav", *(a1 + 60));
  v5 = *(a1 + 128);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "hasUnCorrelatedSrcMotion");
  v5 = *(a1 + 128);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "inHeadTurnState");
  v5 = *(a1 + 128);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "inLikelySlowBodyTurnPed");
  v5 = *(a1 + 128);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "isInCorrelatedActivity");
  v5 = *(a1 + 128);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_14:
    if ((v5 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "isInCorrelatedMotion");
  v5 = *(a1 + 128);
  if ((v5 & 1) == 0)
  {
LABEL_15:
    if ((v5 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "lastHeadTurnStartTime", *(a1 + 8));
  v5 = *(a1 + 128);
  if ((v5 & 2) == 0)
  {
LABEL_16:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(this, "lastHeadTurnStopTime", *(a1 + 16));
  v5 = *(a1 + 128);
  if ((v5 & 0x800) == 0)
  {
LABEL_17:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "lastHeadTurnYawRadians", *(a1 + 64));
  v5 = *(a1 + 128);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_18:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(this, "likelyOnGymMachine");
  v5 = *(a1 + 128);
  if ((v5 & 0x1000) == 0)
  {
LABEL_19:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "relOmegaMeanLong", *(a1 + 68));
  v5 = *(a1 + 128);
  if ((v5 & 0x2000) == 0)
  {
LABEL_20:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(this, "relOmegaVarLong", *(a1 + 72));
  v5 = *(a1 + 128);
  if ((v5 & 0x4000) == 0)
  {
LABEL_21:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(this, "relOmegaVarShort", *(a1 + 76));
  v5 = *(a1 + 128);
  if ((v5 & 0x8000) == 0)
  {
LABEL_22:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(this, "srcAccumulatedYaw4s", *(a1 + 80));
  v5 = *(a1 + 128);
  if ((v5 & 0x10000) == 0)
  {
LABEL_23:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(this, "srcAvgOmegaAroundGrav2s", *(a1 + 84));
  v5 = *(a1 + 128);
  if ((v5 & 0x20000) == 0)
  {
LABEL_24:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(this, "srcAvgOmegaAroundGravLong", *(a1 + 88));
  v5 = *(a1 + 128);
  if ((v5 & 0x40000) == 0)
  {
LABEL_25:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(this, "srcAvgOmegaAroundGravShort", *(a1 + 92));
  v5 = *(a1 + 128);
  if ((v5 & 0x80000) == 0)
  {
LABEL_26:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(this, "srcAvgOmegaLong", *(a1 + 96));
  v5 = *(a1 + 128);
  if ((v5 & 0x100000) == 0)
  {
LABEL_27:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(this, "srcAvgOmegaShort", *(a1 + 100));
  v5 = *(a1 + 128);
  if ((v5 & 0x200000) == 0)
  {
LABEL_28:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(this, "srcAvgYawBufferSum", *(a1 + 104));
  v5 = *(a1 + 128);
  if ((v5 & 0x400000) == 0)
  {
LABEL_29:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(this, "srcHistoricalOmegaStdMax", *(a1 + 108));
  v5 = *(a1 + 128);
  if ((v5 & 0x800000) == 0)
  {
LABEL_30:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(this, "srcRotationAxisAlignment", *(a1 + 112));
  v5 = *(a1 + 128);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(this, "srcYawBufferLongStd", *(a1 + 116));
  v5 = *(a1 + 128);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_32:
    if ((v5 & 4) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_67:
  PB::TextFormatter::format(this, "steadyStatePedestrian");
  if ((*(a1 + 128) & 4) != 0)
  {
LABEL_33:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 24));
  }

LABEL_34:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5A6EAC(uint64_t a1, PB::Reader *this)
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
        goto LABEL_136;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 128) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_108;
        case 2u:
          *(a1 + 128) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 100) = *(*this + v2);
          goto LABEL_130;
        case 3u:
          *(a1 + 128) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_130;
        case 4u:
          *(a1 + 128) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_130;
        case 5u:
          *(a1 + 128) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_130;
        case 6u:
          *(a1 + 128) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_130;
        case 7u:
          *(a1 + 128) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_130;
        case 8u:
          *(a1 + 128) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_130;
        case 9u:
          *(a1 + 128) |= 0x800000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_130;
        case 0xAu:
          *(a1 + 128) |= 0x20000000u;
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

          *(a1 + 124) = v25;
          goto LABEL_132;
        case 0xBu:
          *(a1 + 128) |= 0x2000000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v35 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v34 = *(*this + v2++);
            *(this + 1) = v2;
            v35 = v34 != 0;
          }

          *(a1 + 120) = v35;
          goto LABEL_132;
        case 0xCu:
          *(a1 + 128) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_130;
        case 0xDu:
          *(a1 + 128) |= 0x10000000u;
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

          *(a1 + 123) = v23;
          goto LABEL_132;
        case 0xEu:
          *(a1 + 128) |= 0x40000000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v33 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v32 = *(*this + v2++);
            *(this + 1) = v2;
            v33 = v32 != 0;
          }

          *(a1 + 125) = v33;
          goto LABEL_132;
        case 0xFu:
          *(a1 + 128) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 92) = *(*this + v2);
          goto LABEL_130;
        case 0x10u:
          *(a1 + 128) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_130;
        case 0x11u:
          *(a1 + 128) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_130;
        case 0x12u:
          *(a1 + 128) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_130;
        case 0x13u:
          *(a1 + 128) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_130;
        case 0x14u:
          *(a1 + 128) |= 0x400000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 108) = *(*this + v2);
          goto LABEL_130;
        case 0x15u:
          *(a1 + 128) |= 0x80000000;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v31 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v30 = *(*this + v2++);
            *(this + 1) = v2;
            v31 = v30 != 0;
          }

          *(a1 + 126) = v31;
          goto LABEL_132;
        case 0x16u:
          *(a1 + 128) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 84) = *(*this + v2);
          goto LABEL_130;
        case 0x17u:
          *(a1 + 128) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_130;
        case 0x18u:
          *(a1 + 128) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_130;
        case 0x19u:
          *(a1 + 128) |= 0x200000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_130;
        case 0x1Au:
          *(a1 + 128) |= 0x4000000u;
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

          *(a1 + 121) = v27;
          goto LABEL_132;
        case 0x1Bu:
          *(a1 + 128) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_130;
        case 0x1Cu:
          *(a1 + 128) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_108;
        case 0x1Du:
          *(a1 + 128) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 16) = *(*this + v2);
LABEL_108:
          v2 = *(this + 1) + 8;
          goto LABEL_131;
        case 0x1Eu:
          *(a1 + 128) |= 0x1000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 116) = *(*this + v2);
          goto LABEL_130;
        case 0x1Fu:
          *(a1 + 128) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_114:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 80) = *(*this + v2);
LABEL_130:
            v2 = *(this + 1) + 4;
LABEL_131:
            *(this + 1) = v2;
          }

          goto LABEL_132;
        case 0x20u:
          *(a1 + 128) |= 0x8000000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v29 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v28 = *(*this + v2++);
            *(this + 1) = v2;
            v29 = v28 != 0;
          }

          *(a1 + 122) = v29;
          goto LABEL_132;
        default:
          if (!PB::Reader::skip(this))
          {
            v36 = 0;
            return v36 & 1;
          }

          v2 = *(this + 1);
LABEL_132:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_136;
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

LABEL_136:
  v36 = v4 ^ 1;
  return v36 & 1;
}

uint64_t sub_19B5A77C8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 128);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 24));
    v4 = *(v3 + 128);
    if ((v4 & 0x100000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v4 & 0x100000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 128);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 128);
  if ((v4 & 0x80000) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 128);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 128);
  if ((v4 & 0x4000) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 128);
  if ((v4 & 0x2000) == 0)
  {
LABEL_8:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 128);
  if ((v4 & 0x1000) == 0)
  {
LABEL_9:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 128);
  if ((v4 & 0x800000) == 0)
  {
LABEL_10:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 128);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_11:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_12:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x400) == 0)
  {
LABEL_13:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 128);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x40000) == 0)
  {
LABEL_16:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 92));
  v4 = *(v3 + 128);
  if ((v4 & 0x20) == 0)
  {
LABEL_17:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 128);
  if ((v4 & 0x20000) == 0)
  {
LABEL_18:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 128);
  if ((v4 & 0x10) == 0)
  {
LABEL_19:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 128);
  if ((v4 & 0x100) == 0)
  {
LABEL_20:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 128);
  if ((v4 & 0x400000) == 0)
  {
LABEL_21:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 128);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_22:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x10000) == 0)
  {
LABEL_23:
    if ((v4 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 128);
  if ((v4 & 8) == 0)
  {
LABEL_24:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 128);
  if ((v4 & 0x200) == 0)
  {
LABEL_25:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 128);
  if ((v4 & 0x200000) == 0)
  {
LABEL_26:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 128);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_27:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = PB::Writer::write(this);
  v4 = *(v3 + 128);
  if ((v4 & 0x800) == 0)
  {
LABEL_28:
    if ((v4 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 128);
  if ((v4 & 1) == 0)
  {
LABEL_29:
    if ((v4 & 2) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 128);
  if ((v4 & 2) == 0)
  {
LABEL_30:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 128);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_31:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_32;
    }

LABEL_64:
    result = PB::Writer::write(this, *(v3 + 80));
    if ((*(v3 + 128) & 0x8000000) == 0)
    {
      return result;
    }

    goto LABEL_65;
  }

LABEL_63:
  result = PB::Writer::write(this, *(v3 + 116));
  v4 = *(v3 + 128);
  if ((v4 & 0x8000) != 0)
  {
    goto LABEL_64;
  }

LABEL_32:
  if ((v4 & 0x8000000) == 0)
  {
    return result;
  }

LABEL_65:

  return PB::Writer::write(this);
}

double sub_19B5A7B80(uint64_t a1)
{
  *a1 = &unk_1F0E2C478;
  *(a1 + 164) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_19B5A7BB4(PB::Base *this)
{
  *this = &unk_1F0E2C478;
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

void sub_19B5A7C28(PB::Base *a1)
{
  sub_19B5A7BB4(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5A7C60(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 164);
  if ((v5 & 0x400000) != 0)
  {
    PB::TextFormatter::format(this, "btz");
    v5 = *(a1 + 164);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 0x800000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_45;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "btzDisturbanceDuration", *(a1 + 72));
  v5 = *(a1 + 164);
  if ((v5 & 0x800000) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "btzIsCurrentlyQuiescent");
  v5 = *(a1 + 164);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "btzQuiescentDurationLoose", *(a1 + 76));
  v5 = *(a1 + 164);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "btzQuiescentDurationStrict", *(a1 + 80));
  v5 = *(a1 + 164);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "btzStaticPoseDuration", *(a1 + 84));
  v5 = *(a1 + 164);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "centeredBoresight");
  v5 = *(a1 + 164);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "centeredBoresightInHighDynamics");
  v5 = *(a1 + 164);
  if ((v5 & 0x40) == 0)
  {
LABEL_10:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_51:
  PB::TextFormatter::format(this, "clientMode");
  if ((*(a1 + 164) & 0x4000000) != 0)
  {
LABEL_11:
    PB::TextFormatter::format(this, "inComplexTransitionState");
  }

LABEL_12:
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "noiseVariance", v8);
  }

  v9 = *(a1 + 164);
  if ((v9 & 0x8000000) != 0)
  {
    PB::TextFormatter::format(this, "pinnedBoresight");
    v9 = *(a1 + 164);
    if ((v9 & 0x80) == 0)
    {
LABEL_16:
      if ((v9 & 0x100) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_55;
    }
  }

  else if ((v9 & 0x80) == 0)
  {
    goto LABEL_16;
  }

  PB::TextFormatter::format(this, "qHat_W", *(a1 + 92));
  v9 = *(a1 + 164);
  if ((v9 & 0x100) == 0)
  {
LABEL_17:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(this, "qHat_X", *(a1 + 96));
  v9 = *(a1 + 164);
  if ((v9 & 0x200) == 0)
  {
LABEL_18:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(this, "qHat_Y", *(a1 + 100));
  v9 = *(a1 + 164);
  if ((v9 & 0x400) == 0)
  {
LABEL_19:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(this, "qHat_Z", *(a1 + 104));
  v9 = *(a1 + 164);
  if ((v9 & 0x800) == 0)
  {
LABEL_20:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(this, "rBoresight_X", *(a1 + 108));
  v9 = *(a1 + 164);
  if ((v9 & 0x1000) == 0)
  {
LABEL_21:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(this, "rBoresight_Y", *(a1 + 112));
  v9 = *(a1 + 164);
  if ((v9 & 0x2000) == 0)
  {
LABEL_22:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(this, "rBoresight_Z", *(a1 + 116));
  v9 = *(a1 + 164);
  if ((v9 & 0x4000) == 0)
  {
LABEL_23:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(this, "rHat_X", *(a1 + 120));
  v9 = *(a1 + 164);
  if ((v9 & 0x8000) == 0)
  {
LABEL_24:
    if ((v9 & 0x10000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(this, "rHat_Y", *(a1 + 124));
  v9 = *(a1 + 164);
  if ((v9 & 0x10000) == 0)
  {
LABEL_25:
    if ((v9 & 0x10000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(this, "rHat_Z", *(a1 + 128));
  v9 = *(a1 + 164);
  if ((v9 & 0x10000000) == 0)
  {
LABEL_26:
    if ((v9 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_64:
  PB::TextFormatter::format(this, "requestingCamera");
  if (*(a1 + 164))
  {
LABEL_27:
    PB::TextFormatter::format(this, "srcTimestamp", *(a1 + 56));
  }

LABEL_28:
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(this, "stateVariance", v12);
  }

  v13 = *(a1 + 164);
  if ((v13 & 2) != 0)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 64));
    v13 = *(a1 + 164);
    if ((v13 & 0x20000000) == 0)
    {
LABEL_32:
      if ((v13 & 0x20000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_68;
    }
  }

  else if ((v13 & 0x20000000) == 0)
  {
    goto LABEL_32;
  }

  PB::TextFormatter::format(this, "tracking1IMU");
  v13 = *(a1 + 164);
  if ((v13 & 0x20000) == 0)
  {
LABEL_33:
    if ((v13 & 0x40000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_69;
  }

LABEL_68:
  PB::TextFormatter::format(this, "trackingBehavior");
  v13 = *(a1 + 164);
  if ((v13 & 0x40000000) == 0)
  {
LABEL_34:
    if ((v13 & 0x40000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_70;
  }

LABEL_69:
  PB::TextFormatter::format(this, "trackingDisabled");
  v13 = *(a1 + 164);
  if ((v13 & 0x40000) == 0)
  {
LABEL_35:
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(this, "trackingScheme");
  v13 = *(a1 + 164);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_36:
    if ((v13 & 0x80000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_72;
  }

LABEL_71:
  PB::TextFormatter::format(this, "useRelaxedQuiescenceBounds");
  v13 = *(a1 + 164);
  if ((v13 & 0x80000) == 0)
  {
LABEL_37:
    if ((v13 & 0x100000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(this, "vHat_X", *(a1 + 140));
  v13 = *(a1 + 164);
  if ((v13 & 0x100000) == 0)
  {
LABEL_38:
    if ((v13 & 0x200000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_73:
  PB::TextFormatter::format(this, "vHat_Y", *(a1 + 144));
  if ((*(a1 + 164) & 0x200000) != 0)
  {
LABEL_39:
    PB::TextFormatter::format(this, "vHat_Z", *(a1 + 148));
  }

LABEL_40:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5A810C(uint64_t a1, PB::Reader *this)
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
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_254;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 164) |= 2u;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 64) = *(*this + v23);
          goto LABEL_139;
        case 2u:
          *(a1 + 164) |= 0x800u;
          v85 = *(this + 1);
          if (v85 > 0xFFFFFFFFFFFFFFFBLL || v85 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 108) = *(*this + v85);
          goto LABEL_248;
        case 3u:
          *(a1 + 164) |= 0x1000u;
          v66 = *(this + 1);
          if (v66 > 0xFFFFFFFFFFFFFFFBLL || v66 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 112) = *(*this + v66);
          goto LABEL_248;
        case 4u:
          *(a1 + 164) |= 0x2000u;
          v83 = *(this + 1);
          if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 116) = *(*this + v83);
          goto LABEL_248;
        case 5u:
          *(a1 + 164) |= 0x4000u;
          v58 = *(this + 1);
          if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 120) = *(*this + v58);
          goto LABEL_248;
        case 6u:
          *(a1 + 164) |= 0x8000u;
          v100 = *(this + 1);
          if (v100 > 0xFFFFFFFFFFFFFFFBLL || v100 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 124) = *(*this + v100);
          goto LABEL_248;
        case 7u:
          *(a1 + 164) |= 0x10000u;
          v103 = *(this + 1);
          if (v103 > 0xFFFFFFFFFFFFFFFBLL || v103 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 128) = *(*this + v103);
          goto LABEL_248;
        case 8u:
          *(a1 + 164) |= 0x80000u;
          v84 = *(this + 1);
          if (v84 > 0xFFFFFFFFFFFFFFFBLL || v84 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 140) = *(*this + v84);
          goto LABEL_248;
        case 9u:
          *(a1 + 164) |= 0x100000u;
          v109 = *(this + 1);
          if (v109 > 0xFFFFFFFFFFFFFFFBLL || v109 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 144) = *(*this + v109);
          goto LABEL_248;
        case 0xAu:
          *(a1 + 164) |= 0x200000u;
          v60 = *(this + 1);
          if (v60 > 0xFFFFFFFFFFFFFFFBLL || v60 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 148) = *(*this + v60);
          goto LABEL_248;
        case 0xBu:
          *(a1 + 164) |= 0x100u;
          v108 = *(this + 1);
          if (v108 > 0xFFFFFFFFFFFFFFFBLL || v108 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 96) = *(*this + v108);
          goto LABEL_248;
        case 0xCu:
          *(a1 + 164) |= 0x200u;
          v57 = *(this + 1);
          if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 100) = *(*this + v57);
          goto LABEL_248;
        case 0xDu:
          *(a1 + 164) |= 0x400u;
          v59 = *(this + 1);
          if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 104) = *(*this + v59);
          goto LABEL_248;
        case 0xEu:
          *(a1 + 164) |= 0x80u;
          v102 = *(this + 1);
          if (v102 > 0xFFFFFFFFFFFFFFFBLL || v102 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 92) = *(*this + v102);
          goto LABEL_248;
        case 0xFu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_256;
            }

            v32 = *(this + 1);
            v33 = *(this + 2);
            while (v32 < v33 && (*(this + 24) & 1) == 0)
            {
              v35 = *(a1 + 40);
              v34 = *(a1 + 48);
              if (v35 >= v34)
              {
                v37 = *(a1 + 32);
                v38 = v35 - v37;
                v39 = (v35 - v37) >> 2;
                v40 = v39 + 1;
                if ((v39 + 1) >> 62)
                {
                  goto LABEL_257;
                }

                v41 = v34 - v37;
                if (v41 >> 1 > v40)
                {
                  v40 = v41 >> 1;
                }

                v17 = v41 >= 0x7FFFFFFFFFFFFFFCLL;
                v42 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v17)
                {
                  v42 = v40;
                }

                if (v42)
                {
                  sub_19B4C4FA8(a1 + 32, v42);
                }

                v43 = (v35 - v37) >> 2;
                v44 = (4 * v39);
                v45 = (4 * v39 - 4 * v43);
                *v44 = 0;
                v36 = v44 + 1;
                memcpy(v45, v37, v38);
                v46 = *(a1 + 32);
                *(a1 + 32) = v45;
                *(a1 + 40) = v36;
                *(a1 + 48) = 0;
                if (v46)
                {
                  operator delete(v46);
                }
              }

              else
              {
                *v35 = 0;
                v36 = v35 + 4;
              }

              *(a1 + 40) = v36;
              v47 = *(this + 1);
              if (v47 > 0xFFFFFFFFFFFFFFFBLL || v47 + 4 > *(this + 2))
              {
                goto LABEL_210;
              }

              *(v36 - 1) = *(*this + v47);
              v33 = *(this + 2);
              v32 = *(this + 1) + 4;
              *(this + 1) = v32;
            }

            goto LABEL_211;
          }

          v149 = *(a1 + 40);
          v148 = *(a1 + 48);
          if (v149 >= v148)
          {
            v165 = *(a1 + 32);
            v166 = v149 - v165;
            v167 = (v149 - v165) >> 2;
            v168 = v167 + 1;
            if ((v167 + 1) >> 62)
            {
              goto LABEL_257;
            }

            v169 = v148 - v165;
            if (v169 >> 1 > v168)
            {
              v168 = v169 >> 1;
            }

            v17 = v169 >= 0x7FFFFFFFFFFFFFFCLL;
            v170 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v17)
            {
              v170 = v168;
            }

            if (v170)
            {
              sub_19B4C4FA8(a1 + 32, v170);
            }

            v177 = (v149 - v165) >> 2;
            v178 = (4 * v167);
            v179 = (4 * v167 - 4 * v177);
            *v178 = 0;
            v150 = v178 + 1;
            memcpy(v179, v165, v166);
            v180 = *(a1 + 32);
            *(a1 + 32) = v179;
            *(a1 + 40) = v150;
            *(a1 + 48) = 0;
            if (v180)
            {
              operator delete(v180);
            }
          }

          else
          {
            *v149 = 0;
            v150 = v149 + 4;
          }

          *(a1 + 40) = v150;
          goto LABEL_244;
        case 0x10u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_256:
              v186 = 0;
              return v186 & 1;
            }

            v67 = *(this + 1);
            v68 = *(this + 2);
            while (v67 < v68 && (*(this + 24) & 1) == 0)
            {
              v70 = *(a1 + 16);
              v69 = *(a1 + 24);
              if (v70 >= v69)
              {
                v72 = *(a1 + 8);
                v73 = v70 - v72;
                v74 = (v70 - v72) >> 2;
                v75 = v74 + 1;
                if ((v74 + 1) >> 62)
                {
                  goto LABEL_257;
                }

                v76 = v69 - v72;
                if (v76 >> 1 > v75)
                {
                  v75 = v76 >> 1;
                }

                v17 = v76 >= 0x7FFFFFFFFFFFFFFCLL;
                v77 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v17)
                {
                  v77 = v75;
                }

                if (v77)
                {
                  sub_19B4C4FA8(a1 + 8, v77);
                }

                v78 = (v70 - v72) >> 2;
                v79 = (4 * v74);
                v80 = (4 * v74 - 4 * v78);
                *v79 = 0;
                v71 = v79 + 1;
                memcpy(v80, v72, v73);
                v81 = *(a1 + 8);
                *(a1 + 8) = v80;
                *(a1 + 16) = v71;
                *(a1 + 24) = 0;
                if (v81)
                {
                  operator delete(v81);
                }
              }

              else
              {
                *v70 = 0;
                v71 = v70 + 4;
              }

              *(a1 + 16) = v71;
              v82 = *(this + 1);
              if (v82 > 0xFFFFFFFFFFFFFFFBLL || v82 + 4 > *(this + 2))
              {
LABEL_210:
                *(this + 24) = 1;
                break;
              }

              *(v71 - 1) = *(*this + v82);
              v68 = *(this + 2);
              v67 = *(this + 1) + 4;
              *(this + 1) = v67;
            }

LABEL_211:
            PB::Reader::recallMark();
          }

          else
          {
            v152 = *(a1 + 16);
            v151 = *(a1 + 24);
            if (v152 >= v151)
            {
              v171 = *(a1 + 8);
              v172 = v152 - v171;
              v173 = (v152 - v171) >> 2;
              v174 = v173 + 1;
              if ((v173 + 1) >> 62)
              {
LABEL_257:
                sub_19B5BE690();
              }

              v175 = v151 - v171;
              if (v175 >> 1 > v174)
              {
                v174 = v175 >> 1;
              }

              v17 = v175 >= 0x7FFFFFFFFFFFFFFCLL;
              v176 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v17)
              {
                v176 = v174;
              }

              if (v176)
              {
                sub_19B4C4FA8(a1 + 8, v176);
              }

              v181 = (v152 - v171) >> 2;
              v182 = (4 * v173);
              v183 = (4 * v173 - 4 * v181);
              *v182 = 0;
              v150 = v182 + 1;
              memcpy(v183, v171, v172);
              v184 = *(a1 + 8);
              *(a1 + 8) = v183;
              *(a1 + 16) = v150;
              *(a1 + 24) = 0;
              if (v184)
              {
                operator delete(v184);
              }
            }

            else
            {
              *v152 = 0;
              v150 = v152 + 4;
            }

            *(a1 + 16) = v150;
LABEL_244:
            v185 = *(this + 1);
            if (v185 <= 0xFFFFFFFFFFFFFFFBLL && v185 + 4 <= *(this + 2))
            {
              *(v150 - 1) = *(*this + v185);
LABEL_248:
              v111 = *(this + 1) + 4;
LABEL_249:
              *(this + 1) = v111;
            }

            else
            {
LABEL_246:
              *(this + 24) = 1;
            }
          }

LABEL_250:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_254;
          }

          break;
        case 0x11u:
          *(a1 + 164) |= 0x8000000u;
          v28 = *(this + 1);
          if (v28 >= *(this + 2))
          {
            v31 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v29 = v28 + 1;
            v30 = *(*this + v28);
            *(this + 1) = v29;
            v31 = v30 != 0;
          }

          *(a1 + 157) = v31;
          goto LABEL_250;
        case 0x12u:
          *(a1 + 164) |= 0x400000u;
          v95 = *(this + 1);
          if (v95 >= *(this + 2))
          {
            v98 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v96 = v95 + 1;
            v97 = *(*this + v95);
            *(this + 1) = v96;
            v98 = v97 != 0;
          }

          *(a1 + 152) = v98;
          goto LABEL_250;
        case 0x13u:
          *(a1 + 164) |= 0x1000000u;
          v104 = *(this + 1);
          if (v104 >= *(this + 2))
          {
            v107 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v105 = v104 + 1;
            v106 = *(*this + v104);
            *(this + 1) = v105;
            v107 = v106 != 0;
          }

          *(a1 + 154) = v107;
          goto LABEL_250;
        case 0x14u:
          *(a1 + 164) |= 0x10u;
          v120 = *(this + 1);
          if (v120 > 0xFFFFFFFFFFFFFFFBLL || v120 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 80) = *(*this + v120);
          goto LABEL_248;
        case 0x15u:
          *(a1 + 164) |= 8u;
          v99 = *(this + 1);
          if (v99 > 0xFFFFFFFFFFFFFFFBLL || v99 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 76) = *(*this + v99);
          goto LABEL_248;
        case 0x16u:
          *(a1 + 164) |= 4u;
          v101 = *(this + 1);
          if (v101 > 0xFFFFFFFFFFFFFFFBLL || v101 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 72) = *(*this + v101);
          goto LABEL_248;
        case 0x17u:
          *(a1 + 164) |= 0x20000000u;
          v116 = *(this + 1);
          if (v116 >= *(this + 2))
          {
            v119 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v117 = v116 + 1;
            v118 = *(*this + v116);
            *(this + 1) = v117;
            v119 = v118 != 0;
          }

          *(a1 + 159) = v119;
          goto LABEL_250;
        case 0x18u:
          *(a1 + 164) |= 0x80000000;
          v121 = *(this + 1);
          if (v121 >= *(this + 2))
          {
            v124 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v122 = v121 + 1;
            v123 = *(*this + v121);
            *(this + 1) = v122;
            v124 = v123 != 0;
          }

          *(a1 + 161) = v124;
          goto LABEL_250;
        case 0x19u:
          *(a1 + 164) |= 0x800000u;
          v62 = *(this + 1);
          if (v62 >= *(this + 2))
          {
            v65 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v63 = v62 + 1;
            v64 = *(*this + v62);
            *(this + 1) = v63;
            v65 = v64 != 0;
          }

          *(a1 + 153) = v65;
          goto LABEL_250;
        case 0x1Au:
          *(a1 + 164) |= 0x20u;
          v61 = *(this + 1);
          if (v61 > 0xFFFFFFFFFFFFFFFBLL || v61 + 4 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 84) = *(*this + v61);
          goto LABEL_248;
        case 0x1Bu:
          *(a1 + 164) |= 0x40000u;
          v134 = *(this + 1);
          v133 = *(this + 2);
          v135 = *this;
          if (v134 <= 0xFFFFFFFFFFFFFFF5 && v134 + 10 <= v133)
          {
            v136 = 0;
            v137 = 0;
            v138 = 0;
            v139 = (v135 + v134);
            v140 = v134 + 1;
            do
            {
              *(this + 1) = v140;
              v141 = *v139++;
              v138 |= (v141 & 0x7F) << v136;
              if ((v141 & 0x80) == 0)
              {
                goto LABEL_237;
              }

              v136 += 7;
              ++v140;
              v14 = v137++ > 8;
            }

            while (!v14);
LABEL_209:
            LODWORD(v138) = 0;
            goto LABEL_237;
          }

          v159 = 0;
          v160 = 0;
          v138 = 0;
          v17 = v133 >= v134;
          v161 = v133 - v134;
          if (!v17)
          {
            v161 = 0;
          }

          v162 = (v135 + v134);
          v163 = v134 + 1;
          while (2)
          {
            if (v161)
            {
              v164 = *v162;
              *(this + 1) = v163;
              v138 |= (v164 & 0x7F) << v159;
              if (v164 < 0)
              {
                v159 += 7;
                --v161;
                ++v162;
                ++v163;
                v14 = v160++ > 8;
                if (v14)
                {
                  goto LABEL_209;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v138) = 0;
              }
            }

            else
            {
              LODWORD(v138) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_237:
          *(a1 + 136) = v138;
          goto LABEL_250;
        case 0x1Cu:
          *(a1 + 164) |= 0x10000000u;
          v24 = *(this + 1);
          if (v24 >= *(this + 2))
          {
            v27 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v25 = v24 + 1;
            v26 = *(*this + v24);
            *(this + 1) = v25;
            v27 = v26 != 0;
          }

          *(a1 + 158) = v27;
          goto LABEL_250;
        case 0x1Du:
          *(a1 + 164) |= 0x4000000u;
          v125 = *(this + 1);
          if (v125 >= *(this + 2))
          {
            v128 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v126 = v125 + 1;
            v127 = *(*this + v125);
            *(this + 1) = v126;
            v128 = v127 != 0;
          }

          *(a1 + 156) = v128;
          goto LABEL_250;
        case 0x1Eu:
          *(a1 + 164) |= 0x40000000u;
          v129 = *(this + 1);
          if (v129 >= *(this + 2))
          {
            v132 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v130 = v129 + 1;
            v131 = *(*this + v129);
            *(this + 1) = v130;
            v132 = v131 != 0;
          }

          *(a1 + 160) = v132;
          goto LABEL_250;
        case 0x1Fu:
          *(a1 + 164) |= 1u;
          v110 = *(this + 1);
          if (v110 > 0xFFFFFFFFFFFFFFF7 || v110 + 8 > *(this + 2))
          {
            goto LABEL_246;
          }

          *(a1 + 56) = *(*this + v110);
LABEL_139:
          v111 = *(this + 1) + 8;
          goto LABEL_249;
        case 0x20u:
          *(a1 + 164) |= 0x40u;
          v87 = *(this + 1);
          v86 = *(this + 2);
          v88 = *this;
          if (v87 <= 0xFFFFFFFFFFFFFFF5 && v87 + 10 <= v86)
          {
            v89 = 0;
            v90 = 0;
            v91 = 0;
            v92 = (v88 + v87);
            v93 = v87 + 1;
            do
            {
              *(this + 1) = v93;
              v94 = *v92++;
              v91 |= (v94 & 0x7F) << v89;
              if ((v94 & 0x80) == 0)
              {
                goto LABEL_234;
              }

              v89 += 7;
              ++v93;
              v14 = v90++ > 8;
            }

            while (!v14);
LABEL_187:
            LODWORD(v91) = 0;
            goto LABEL_234;
          }

          v153 = 0;
          v154 = 0;
          v91 = 0;
          v17 = v86 >= v87;
          v155 = v86 - v87;
          if (!v17)
          {
            v155 = 0;
          }

          v156 = (v88 + v87);
          v157 = v87 + 1;
          while (2)
          {
            if (v155)
            {
              v158 = *v156;
              *(this + 1) = v157;
              v91 |= (v158 & 0x7F) << v153;
              if (v158 < 0)
              {
                v153 += 7;
                --v155;
                ++v156;
                ++v157;
                v14 = v154++ > 8;
                if (v14)
                {
                  goto LABEL_187;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v91) = 0;
              }
            }

            else
            {
              LODWORD(v91) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_234:
          *(a1 + 88) = v91;
          goto LABEL_250;
        case 0x21u:
          *(a1 + 164) |= 0x2000000u;
          v112 = *(this + 1);
          if (v112 >= *(this + 2))
          {
            v115 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v113 = v112 + 1;
            v114 = *(*this + v112);
            *(this + 1) = v113;
            v115 = v114 != 0;
          }

          *(a1 + 155) = v115;
          goto LABEL_250;
        case 0x22u:
          *(a1 + 164) |= 0x20000u;
          v49 = *(this + 1);
          v48 = *(this + 2);
          v50 = *this;
          if (v49 <= 0xFFFFFFFFFFFFFFF5 && v49 + 10 <= v48)
          {
            v51 = 0;
            v52 = 0;
            v53 = 0;
            v54 = (v50 + v49);
            v55 = v49 + 1;
            do
            {
              *(this + 1) = v55;
              v56 = *v54++;
              v53 |= (v56 & 0x7F) << v51;
              if ((v56 & 0x80) == 0)
              {
                goto LABEL_231;
              }

              v51 += 7;
              ++v55;
              v14 = v52++ > 8;
            }

            while (!v14);
LABEL_173:
            LODWORD(v53) = 0;
            goto LABEL_231;
          }

          v142 = 0;
          v143 = 0;
          v53 = 0;
          v17 = v48 >= v49;
          v144 = v48 - v49;
          if (!v17)
          {
            v144 = 0;
          }

          v145 = (v50 + v49);
          v146 = v49 + 1;
          while (2)
          {
            if (v144)
            {
              v147 = *v145;
              *(this + 1) = v146;
              v53 |= (v147 & 0x7F) << v142;
              if (v147 < 0)
              {
                v142 += 7;
                --v144;
                ++v145;
                ++v146;
                v14 = v143++ > 8;
                if (v14)
                {
                  goto LABEL_173;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v53) = 0;
              }
            }

            else
            {
              LODWORD(v53) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_231:
          *(a1 + 132) = v53;
          goto LABEL_250;
        default:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_256;
          }

          goto LABEL_250;
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

LABEL_254:
  v186 = v4 ^ 1;
  return v186 & 1;
}

uint64_t sub_19B5A9054(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 164);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 64));
    v4 = *(v3 + 164);
    if ((v4 & 0x800) == 0)
    {
LABEL_3:
      if ((v4 & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_43;
    }
  }

  else if ((v4 & 0x800) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 164);
  if ((v4 & 0x1000) == 0)
  {
LABEL_4:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 164);
  if ((v4 & 0x2000) == 0)
  {
LABEL_5:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 116));
  v4 = *(v3 + 164);
  if ((v4 & 0x4000) == 0)
  {
LABEL_6:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 164);
  if ((v4 & 0x8000) == 0)
  {
LABEL_7:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this, *(v3 + 124));
  v4 = *(v3 + 164);
  if ((v4 & 0x10000) == 0)
  {
LABEL_8:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 164);
  if ((v4 & 0x80000) == 0)
  {
LABEL_9:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 140));
  v4 = *(v3 + 164);
  if ((v4 & 0x100000) == 0)
  {
LABEL_10:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 164);
  if ((v4 & 0x200000) == 0)
  {
LABEL_11:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 148));
  v4 = *(v3 + 164);
  if ((v4 & 0x100) == 0)
  {
LABEL_12:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 164);
  if ((v4 & 0x200) == 0)
  {
LABEL_13:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_14;
    }

LABEL_53:
    result = PB::Writer::write(this, *(v3 + 104));
    if ((*(v3 + 164) & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_52:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 164);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_53;
  }

LABEL_14:
  if ((v4 & 0x80) != 0)
  {
LABEL_15:
    result = PB::Writer::write(this, *(v3 + 92));
  }

LABEL_16:
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  while (v8 != v9)
  {
    v10 = *v8++;
    result = PB::Writer::write(this, v10);
  }

  v11 = *(v3 + 164);
  if ((v11 & 0x8000000) != 0)
  {
    result = PB::Writer::write(this);
    v11 = *(v3 + 164);
    if ((v11 & 0x400000) == 0)
    {
LABEL_24:
      if ((v11 & 0x1000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_57;
    }
  }

  else if ((v11 & 0x400000) == 0)
  {
    goto LABEL_24;
  }

  result = PB::Writer::write(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x1000000) == 0)
  {
LABEL_25:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = PB::Writer::write(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x10) == 0)
  {
LABEL_26:
    if ((v11 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = PB::Writer::write(this, *(v3 + 80));
  v11 = *(v3 + 164);
  if ((v11 & 8) == 0)
  {
LABEL_27:
    if ((v11 & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 76));
  v11 = *(v3 + 164);
  if ((v11 & 4) == 0)
  {
LABEL_28:
    if ((v11 & 0x20000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = PB::Writer::write(this, *(v3 + 72));
  v11 = *(v3 + 164);
  if ((v11 & 0x20000000) == 0)
  {
LABEL_29:
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = PB::Writer::write(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x80000000) == 0)
  {
LABEL_30:
    if ((v11 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = PB::Writer::write(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x800000) == 0)
  {
LABEL_31:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = PB::Writer::write(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x20) == 0)
  {
LABEL_32:
    if ((v11 & 0x40000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = PB::Writer::write(this, *(v3 + 84));
  v11 = *(v3 + 164);
  if ((v11 & 0x40000) == 0)
  {
LABEL_33:
    if ((v11 & 0x10000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = PB::Writer::writeVarInt(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x10000000) == 0)
  {
LABEL_34:
    if ((v11 & 0x4000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = PB::Writer::write(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = PB::Writer::write(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x40000000) == 0)
  {
LABEL_36:
    if ((v11 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = PB::Writer::write(this);
  v11 = *(v3 + 164);
  if ((v11 & 1) == 0)
  {
LABEL_37:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_70;
  }

LABEL_69:
  result = PB::Writer::write(this, *(v3 + 56));
  v11 = *(v3 + 164);
  if ((v11 & 0x40) == 0)
  {
LABEL_38:
    if ((v11 & 0x2000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_71:
    result = PB::Writer::write(this);
    if ((*(v3 + 164) & 0x20000) == 0)
    {
      return result;
    }

    goto LABEL_72;
  }

LABEL_70:
  result = PB::Writer::writeVarInt(this);
  v11 = *(v3 + 164);
  if ((v11 & 0x2000000) != 0)
  {
    goto LABEL_71;
  }

LABEL_39:
  if ((v11 & 0x20000) == 0)
  {
    return result;
  }

LABEL_72:

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B5A9458(uint64_t result)
{
  *result = &unk_1F0E2C9B8;
  *(result + 48) = 0;
  return result;
}

void sub_19B5A9480(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5A94B8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 48);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "avgRotationMax", *(a1 + 16));
    v5 = *(a1 + 48);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "historicalDisturbanceDuration", *(a1 + 20));
  v5 = *(a1 + 48);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "historicalQuiescenceDuration", *(a1 + 24));
  v5 = *(a1 + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(this, "instAccelMagDiff", *(a1 + 28));
  v5 = *(a1 + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "instRotationMax", *(a1 + 32));
  v5 = *(a1 + 48);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "isAvgGrav");
  v5 = *(a1 + 48);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "lpfAccelMagDiff", *(a1 + 36));
  v5 = *(a1 + 48);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(this, "measNoiseVar", *(a1 + 40));
  if (*(a1 + 48))
  {
LABEL_10:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_11:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5A961C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_71;
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
      if ((v10 >> 3) <= 4)
      {
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *(a1 + 48) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
LABEL_59:
              *(this + 24) = 1;
              goto LABEL_67;
            }

            *(a1 + 16) = *(*this + v2);
LABEL_65:
            v2 = *(this + 1) + 4;
LABEL_66:
            *(this + 1) = v2;
            goto LABEL_67;
          }

          if (v22 == 4)
          {
            *(a1 + 48) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_59;
            }

            *(a1 + 28) = *(*this + v2);
            goto LABEL_65;
          }
        }

        else
        {
          if (v22 == 1)
          {
            *(a1 + 48) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_59;
            }

            *(a1 + 8) = *(*this + v2);
            v2 = *(this + 1) + 8;
            goto LABEL_66;
          }

          if (v22 == 2)
          {
            *(a1 + 48) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_59;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_65;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          *(a1 + 48) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_59;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_65;
        }

        if (v22 == 6)
        {
          *(a1 + 48) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_59;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_65;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(a1 + 48) |= 0x100u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v24 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v23 = *(*this + v2++);
              *(this + 1) = v2;
              v24 = v23 != 0;
            }

            *(a1 + 44) = v24;
            goto LABEL_67;
          case 8:
            *(a1 + 48) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_59;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_65;
          case 9:
            *(a1 + 48) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_59;
            }

            *(a1 + 20) = *(*this + v2);
            goto LABEL_65;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v25 = 0;
        return v25 & 1;
      }

      v2 = *(this + 1);
LABEL_67:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_71:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t sub_19B5A9A08(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 48);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 48);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 48);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 48);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 48);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 48);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 48);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    result = PB::Writer::write(this, *(v3 + 24));
    if ((*(v3 + 48) & 4) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = PB::Writer::write(this);
  v4 = *(v3 + 48);
  if ((v4 & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_19:
  v5 = *(v3 + 20);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B5A9B3C(uint64_t result)
{
  *result = &unk_1F0E2CC58;
  *(result + 8) = 0;
  *(result + 20) = 0;
  return result;
}

void sub_19B5A9B60(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2CC58;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B5A9BE0(PB::Base *a1)
{
  sub_19B5A9B60(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5A9C18(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "correction");
  }

  if (*(a1 + 20))
  {
    PB::TextFormatter::format(this, "isAvgGrav");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5A9CB0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_35;
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

      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 1u;
        v22 = *(this + 1);
        if (v22 >= *(this + 2))
        {
          v25 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v23 = v22 + 1;
          v24 = *(*this + v22);
          *(this + 1) = v23;
          v25 = v24 != 0;
        }

        *(a1 + 16) = v25;
      }

      else
      {
        if ((v10 >> 3) == 1)
        {
          operator new();
        }

        if ((PB::Reader::skip(this) & 1) == 0)
        {
          v27 = 0;
          return v27 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_35:
  v27 = v4 ^ 1;
  return v27 & 1;
}

uint64_t sub_19B5A9F24(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  if (*(v3 + 20))
  {

    return PB::Writer::write(this);
  }

  return result;
}

uint64_t sub_19B5A9F8C(uint64_t result)
{
  *result = &unk_1F0E2C980;
  *(result + 24) = 0;
  return result;
}

void sub_19B5A9FB4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5A9FEC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 24);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(this, "activeGnssSession");
    v5 = *(a1 + 24);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "currentModesOfOperation");
  v5 = *(a1 + 24);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(this, "gnssModeOfOperation");
  v5 = *(a1 + 24);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(this, "hasSubscribedRhythmicClient");
  if ((*(a1 + 24) & 4) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(this, "rhythmicMode");
  }

LABEL_7:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5AA0D0(uint64_t a1, PB::Reader *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = *(this + 24);
  if (v3 < v2 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
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
            *(this + 24) = 1;
            goto LABEL_106;
          }

          v22 = *v20;
          *(this + 1) = v21;
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
          *(a1 + 24) |= 2u;
          v44 = *(this + 1);
          v2 = *(this + 2);
          v45 = *this;
          if (v44 > 0xFFFFFFFFFFFFFFF5 || v44 + 10 > v2)
          {
            v66 = 0;
            v67 = 0;
            v48 = 0;
            if (v2 <= v44)
            {
              v3 = *(this + 1);
            }

            else
            {
              v3 = *(this + 2);
            }

            v68 = v3 - v44;
            v69 = (v45 + v44);
            v70 = v44 + 1;
            while (1)
            {
              if (!v68)
              {
                LODWORD(v48) = 0;
                *(this + 24) = 1;
                goto LABEL_101;
              }

              v71 = v70;
              v72 = *v69;
              *(this + 1) = v71;
              v48 |= (v72 & 0x7F) << v66;
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
                LODWORD(v48) = 0;
                goto LABEL_100;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v48) = 0;
            }

LABEL_100:
            v3 = v71;
          }

          else
          {
            v46 = 0;
            v47 = 0;
            v48 = 0;
            v49 = (v45 + v44);
            v50 = v44 + 1;
            while (1)
            {
              v3 = v50;
              *(this + 1) = v50;
              v51 = *v49++;
              v48 |= (v51 & 0x7F) << v46;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              ++v50;
              v14 = v47++ > 8;
              if (v14)
              {
                LODWORD(v48) = 0;
                break;
              }
            }
          }

LABEL_101:
          *(a1 + 12) = v48;
          goto LABEL_102;
        }

        if (v23 == 2)
        {
          *(a1 + 24) |= 8u;
          v3 = *(this + 1);
          v2 = *(this + 2);
          if (v3 >= v2)
          {
            v27 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v26 = *(*this + v3++);
            *(this + 1) = v3;
            v27 = v26 != 0;
          }

          *(a1 + 20) = v27;
          goto LABEL_102;
        }
      }

      else
      {
        switch(v23)
        {
          case 3:
            *(a1 + 24) |= 4u;
            v28 = *(this + 1);
            v2 = *(this + 2);
            v29 = *this;
            if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v2)
            {
              v52 = 0;
              v53 = 0;
              v32 = 0;
              if (v2 <= v28)
              {
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v54 = v3 - v28;
              v55 = (v29 + v28);
              v56 = v28 + 1;
              while (1)
              {
                if (!v54)
                {
                  LODWORD(v32) = 0;
                  *(this + 24) = 1;
                  goto LABEL_93;
                }

                v57 = v56;
                v58 = *v55;
                *(this + 1) = v57;
                v32 |= (v58 & 0x7F) << v52;
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
                  LODWORD(v32) = 0;
                  goto LABEL_92;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v32) = 0;
              }

LABEL_92:
              v3 = v57;
            }

            else
            {
              v30 = 0;
              v31 = 0;
              v32 = 0;
              v33 = (v29 + v28);
              v34 = v28 + 1;
              while (1)
              {
                v3 = v34;
                *(this + 1) = v34;
                v35 = *v33++;
                v32 |= (v35 & 0x7F) << v30;
                if ((v35 & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                ++v34;
                v14 = v31++ > 8;
                if (v14)
                {
                  LODWORD(v32) = 0;
                  break;
                }
              }
            }

LABEL_93:
            *(a1 + 16) = v32;
            goto LABEL_102;
          case 4:
            *(a1 + 24) |= 1u;
            v36 = *(this + 1);
            v2 = *(this + 2);
            v37 = *this;
            if (v36 > 0xFFFFFFFFFFFFFFF5 || v36 + 10 > v2)
            {
              v59 = 0;
              v60 = 0;
              v40 = 0;
              if (v2 <= v36)
              {
                v3 = *(this + 1);
              }

              else
              {
                v3 = *(this + 2);
              }

              v61 = v3 - v36;
              v62 = (v37 + v36);
              v63 = v36 + 1;
              while (1)
              {
                if (!v61)
                {
                  LODWORD(v40) = 0;
                  *(this + 24) = 1;
                  goto LABEL_97;
                }

                v64 = v63;
                v65 = *v62;
                *(this + 1) = v64;
                v40 |= (v65 & 0x7F) << v59;
                if ((v65 & 0x80) == 0)
                {
                  break;
                }

                v59 += 7;
                --v61;
                ++v62;
                v63 = v64 + 1;
                v14 = v60++ > 8;
                if (v14)
                {
                  LODWORD(v40) = 0;
                  goto LABEL_96;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v40) = 0;
              }

LABEL_96:
              v3 = v64;
            }

            else
            {
              v38 = 0;
              v39 = 0;
              v40 = 0;
              v41 = (v37 + v36);
              v42 = v36 + 1;
              while (1)
              {
                v3 = v42;
                *(this + 1) = v42;
                v43 = *v41++;
                v40 |= (v43 & 0x7F) << v38;
                if ((v43 & 0x80) == 0)
                {
                  break;
                }

                v38 += 7;
                ++v42;
                v14 = v39++ > 8;
                if (v14)
                {
                  LODWORD(v40) = 0;
                  break;
                }
              }
            }

LABEL_97:
            *(a1 + 8) = v40;
            goto LABEL_102;
          case 5:
            *(a1 + 24) |= 0x10u;
            v3 = *(this + 1);
            v2 = *(this + 2);
            if (v3 >= v2)
            {
              v25 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v24 = *(*this + v3++);
              *(this + 1) = v3;
              v25 = v24 != 0;
            }

            *(a1 + 21) = v25;
            goto LABEL_102;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v73 = 0;
        return v73 & 1;
      }

      v3 = *(this + 1);
      v2 = *(this + 2);
LABEL_102:
      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_106:
  v73 = v4 ^ 1;
  return v73 & 1;
}

uint64_t sub_19B5AA5FC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 24);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 24);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 24) & 8) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this);
  v4 = *(v3 + 24);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 24) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 24);
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:

  return PB::Writer::write(this);
}

uint64_t sub_19B5AA6C0(uint64_t result)
{
  *result = &unk_1F0E30378;
  *(result + 28) = 0;
  return result;
}

void sub_19B5AA6E8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5AA720(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
    v5 = *(a1 + 28);
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

  else if ((*(a1 + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "x", *(a1 + 16));
  v5 = *(a1 + 28);
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
  PB::TextFormatter::format(this, "y", *(a1 + 20));
  if ((*(a1 + 28) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "z", *(a1 + 24));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5AA7E4(uint64_t a1, PB::Reader *this)
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
            goto LABEL_48;
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
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 28) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_40:
            *(this + 24) = 1;
            goto LABEL_44;
          }

          *(a1 + 20) = *(*this + v2);
LABEL_42:
          v2 = *(this + 1) + 4;
LABEL_43:
          *(this + 1) = v2;
          goto LABEL_44;
        }

        if (v22 == 4)
        {
          *(a1 + 28) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_42;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 28) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_43;
        }

        if (v22 == 2)
        {
          *(a1 + 28) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_42;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_44:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_48:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B5AAA74(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 28);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 20));
      if ((*(v3 + 28) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 28);
  if ((v4 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v5 = *(v3 + 24);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B5AAB1C(uint64_t result)
{
  *result = &unk_1F0E2D438;
  *(result + 64) = 0;
  return result;
}

void sub_19B5AAB44(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5AAB7C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 64);
  if (v5)
  {
    PB::TextFormatter::format(this, "cadence", *(a1 + 8));
    v5 = *(a1 + 64);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 64) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "startTime", *(a1 + 16));
  v5 = *(a1 + 64);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "swingAccelX", *(a1 + 24));
  v5 = *(a1 + 64);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(this, "swingAccelXStandardized", *(a1 + 32));
  v5 = *(a1 + 64);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "swingAccelY", *(a1 + 40));
  v5 = *(a1 + 64);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(this, "swingAccelZ", *(a1 + 48));
  if ((*(a1 + 64) & 0x40) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 56));
  }

LABEL_9:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5AACA0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_60;
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
      if ((v10 >> 3) <= 4)
      {
        switch(v22)
        {
          case 1:
            *(a1 + 64) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_53:
              *(this + 24) = 1;
              goto LABEL_56;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_55;
          case 2:
            *(a1 + 64) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_53;
            }

            *(a1 + 56) = *(*this + v2);
            goto LABEL_55;
          case 3:
            *(a1 + 64) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_53;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_55;
        }
      }

      else if (v22 > 6)
      {
        if (v22 == 7)
        {
          *(a1 + 64) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_55;
        }

        if (v22 == 8)
        {
          *(a1 + 64) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_55;
        }
      }

      else
      {
        if (v22 == 5)
        {
          *(a1 + 64) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_55;
        }

        if (v22 == 6)
        {
          *(a1 + 64) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 40) = *(*this + v2);
LABEL_55:
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
          goto LABEL_56;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_56:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_60:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B5AAFF0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 64);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 64);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(result + 64) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 64);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = PB::Writer::write(this, *(v3 + 48));
    if ((*(v3 + 64) & 8) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 64);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_15:
  v5 = *(v3 + 32);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B5AB0EC(uint64_t result)
{
  *result = &unk_1F0E2C168;
  *(result + 120) = 0;
  return result;
}

void sub_19B5AB114(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5AB14C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 120);
  if (v5)
  {
    PB::TextFormatter::format(this, "centerOfMassPrefiltAccelX", *(a1 + 8));
    v5 = *(a1 + 120);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "centerOfMassPrefiltAccelY", *(a1 + 16));
  v5 = *(a1 + 120);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "centerOfMassPrefiltAccelZ", *(a1 + 24));
  v5 = *(a1 + 120);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "centripetalAccelX", *(a1 + 32));
  v5 = *(a1 + 120);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "centripetalAccelY", *(a1 + 40));
  v5 = *(a1 + 120);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "centripetalAccelZ", *(a1 + 48));
  v5 = *(a1 + 120);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "centripetalRotationRateX", *(a1 + 56));
  v5 = *(a1 + 120);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "centripetalRotationRateY", *(a1 + 64));
  v5 = *(a1 + 120);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "centripetalRotationRateZ", *(a1 + 72));
  v5 = *(a1 + 120);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "startTime", *(a1 + 80));
  v5 = *(a1 + 120);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "swingVelocityX", *(a1 + 88));
  v5 = *(a1 + 120);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "swingVelocityY", *(a1 + 96));
  v5 = *(a1 + 120);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  PB::TextFormatter::format(this, "swingVelocityZ", *(a1 + 104));
  if ((*(a1 + 120) & 0x2000) != 0)
  {
LABEL_15:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 112));
  }

LABEL_16:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5AB350(uint64_t a1, PB::Reader *this)
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
        goto LABEL_73;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 120) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_68;
        case 2u:
          *(a1 + 120) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_68;
        case 3u:
          *(a1 + 120) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_68;
        case 4u:
          *(a1 + 120) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_68;
        case 5u:
          *(a1 + 120) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_68;
        case 6u:
          *(a1 + 120) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_68;
        case 7u:
          *(a1 + 120) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_68;
        case 8u:
          *(a1 + 120) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_68;
        case 9u:
          *(a1 + 120) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_68;
        case 0xAu:
          *(a1 + 120) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_68;
        case 0xBu:
          *(a1 + 120) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_68;
        case 0xCu:
          *(a1 + 120) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_68;
        case 0xDu:
          *(a1 + 120) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_68;
        case 0xEu:
          *(a1 + 120) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_64:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 24) = *(*this + v2);
LABEL_68:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          goto LABEL_69;
        default:
          if (!PB::Reader::skip(this))
          {
            v22 = 0;
            return v22 & 1;
          }

          v2 = *(this + 1);
LABEL_69:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_73;
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

LABEL_73:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_19B5AB80C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 120);
  if ((v4 & 0x200) != 0)
  {
    result = PB::Writer::write(this, *(result + 80));
    v4 = *(v3 + 120);
    if ((v4 & 0x2000) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*(result + 120) & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 120);
  if ((v4 & 0x400) == 0)
  {
LABEL_4:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 120);
  if ((v4 & 0x800) == 0)
  {
LABEL_5:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 120);
  if ((v4 & 0x1000) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 120);
  if ((v4 & 0x40) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 120);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 120);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 120);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 120);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 120);
  if ((v4 & 0x20) == 0)
  {
LABEL_12:
    if ((v4 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 120);
  if ((v4 & 1) == 0)
  {
LABEL_13:
    if ((v4 & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    result = PB::Writer::write(this, *(v3 + 16));
    if ((*(v3 + 120) & 4) == 0)
    {
      return result;
    }

    goto LABEL_29;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 120);
  if ((v4 & 2) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_29:
  v5 = *(v3 + 24);

  return PB::Writer::write(this, v5);
}

void *sub_19B5AB9CC(void *result)
{
  *result = &unk_1F0E2E740;
  result[28] = 0;
  return result;
}

void sub_19B5AB9F4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5ABA2C(uint64_t a1, PB::TextFormatter *this, char *a3)
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

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5ABED0(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B5ACD5C(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B5AD168(uint64_t result)
{
  *result = &unk_1F0E30340;
  *(result + 128) = 0;
  return result;
}

void sub_19B5AD190(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5AD1C8(uint64_t a1, PB::TextFormatter *this, char *a3)
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

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5AD4CC(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B5ADEC0(uint64_t result, PB::Writer *this)
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